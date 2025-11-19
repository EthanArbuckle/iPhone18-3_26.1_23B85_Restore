@interface SALLMList
+ (BOOL)isLLM:(id)a3;
+ (void)billLLMsToSystemOn:(id)a3 andTelemetry:(id)a4;
@end

@implementation SALLMList

+ (BOOL)isLLM:(id)a3
{
  v3 = a3;
  if (qword_100073798 != -1)
  {
    sub_10004114C();
  }

  v4 = [qword_100073790 objectForKeyedSubscript:v3];
  if (v4)
  {
    v5 = [qword_100073790 objectForKeyedSubscript:v3];
    v6 = [v5 isEqual:&__kCFBooleanTrue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)billLLMsToSystemOn:(id)a3 andTelemetry:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = SALog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "+[SALLMList billLLMsToSystemOn:andTelemetry:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s start", buf, 0xCu);
  }

  v8 = [v5 appsDataInternal];
  v9 = [v8 mutableCopy];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10002F334;
  v13[3] = &unk_1000659B8;
  v14 = v5;
  v15 = v6;
  v10 = v6;
  v11 = v5;
  [v9 enumerateKeysAndObjectsUsingBlock:v13];
  v12 = SALog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "+[SALLMList billLLMsToSystemOn:andTelemetry:]";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s end", buf, 0xCu);
  }
}

@end