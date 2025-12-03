@interface SALLMList
+ (BOOL)isLLM:(id)m;
+ (void)billLLMsToSystemOn:(id)on andTelemetry:(id)telemetry;
@end

@implementation SALLMList

+ (BOOL)isLLM:(id)m
{
  mCopy = m;
  if (qword_100073798 != -1)
  {
    sub_10004114C();
  }

  v4 = [qword_100073790 objectForKeyedSubscript:mCopy];
  if (v4)
  {
    v5 = [qword_100073790 objectForKeyedSubscript:mCopy];
    v6 = [v5 isEqual:&__kCFBooleanTrue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)billLLMsToSystemOn:(id)on andTelemetry:(id)telemetry
{
  onCopy = on;
  telemetryCopy = telemetry;
  v7 = SALog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "+[SALLMList billLLMsToSystemOn:andTelemetry:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s start", buf, 0xCu);
  }

  appsDataInternal = [onCopy appsDataInternal];
  v9 = [appsDataInternal mutableCopy];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10002F334;
  v13[3] = &unk_1000659B8;
  v14 = onCopy;
  v15 = telemetryCopy;
  v10 = telemetryCopy;
  v11 = onCopy;
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