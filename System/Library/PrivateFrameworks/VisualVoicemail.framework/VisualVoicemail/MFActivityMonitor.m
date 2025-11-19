@interface MFActivityMonitor
+ (id)currentTracebleMonitor;
+ (id)imapTaskMap;
+ (int64_t)voicemailTaskTypeForTaskName:(id)a3;
@end

@implementation MFActivityMonitor

+ (id)currentTracebleMonitor
{
  v2 = +[MFActivityMonitor currentMonitor];
  v3 = sub_100030068();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I [IVM] %@ current monitor", &v5, 0xCu);
  }

  return v2;
}

+ (id)imapTaskMap
{
  if (qword_10010D838 != -1)
  {
    sub_10009C6C8();
  }

  v3 = qword_10010D830;

  return v3;
}

+ (int64_t)voicemailTaskTypeForTaskName:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = +[MFActivityMonitor imapTaskMap];
    v5 = [v4 objectForKey:v3];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 integerValue];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end