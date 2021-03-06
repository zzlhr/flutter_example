const String baseUrl = "http://api.codekk.com/";
const String opListUrl = "op/page/"; //获取开源项目
const String opDetailUrl = "op/detail/"; //获取单个开源项目
const String opSearchUrl = "op/search?text="; //搜索开源项目
const String opaListUrl = "opa/page/"; //获取源码解析文章列表
const String opaDetailUrl = "opa/detail/"; //获取单个源码解析文章详情
const String opaSearchUrl = "opa/user/";
const String jobListUrl = "job/page/"; //获取职位内推文章列表
const String jobDetailUrl = "job/detail/"; //获取单个职位内推文章详情
const String blogListUrl = "blog/page/"; //获取博客文章列表
const String blogDetailUrl = "blog/detail/"; //获取单个博客文章详情
const String recommendListUrl = "recommend/page/"; //获取今日推荐列表
const String recommendSearchUrl = "recommend/user/"; //根据推荐者查询推荐列表

enum ApiType {
  OP,
  OPA,
  BLOG,
  JOB,
  RECOMMEND,
}

String readmeUrl(ApiType apiType, String id) {
  switch (apiType) {
    case ApiType.OP:
      return '${opDetailUrl + id.toString()}/readme';
    case ApiType.OPA:
      return opaDetailUrl + id.toString();
    case ApiType.BLOG:
      return blogDetailUrl + id.toString();
    case ApiType.JOB:
      return jobDetailUrl + id.toString();
    case ApiType.RECOMMEND:
      return id.toString();
  }
  return 'null';
}
