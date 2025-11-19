@interface TSTPerformanceLogging
+ (OS_os_log)log;
+ (id)logForCategory:(const char *)a3;
@end

@implementation TSTPerformanceLogging

+ (OS_os_log)log
{
  if (qword_27CFB5690 != -1)
  {
    sub_2216F7F88();
  }

  v3 = qword_27CFB4CF8;

  return v3;
}

+ (id)logForCategory:(const char *)a3
{
  v3 = os_log_create(qword_27CFB4CF0, a3);

  return v3;
}

@end