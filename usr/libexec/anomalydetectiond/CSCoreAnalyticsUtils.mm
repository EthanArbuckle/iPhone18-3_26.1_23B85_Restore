@interface CSCoreAnalyticsUtils
+ (BOOL)shouldAttemptCoreAnalyticsUploadWithInterval:(double)a3 persistentKey:(id)a4;
+ (double)getSecondsSinceReboot;
@end

@implementation CSCoreAnalyticsUtils

+ (double)getSecondsSinceReboot
{
  if (qword_1004568A8 != -1)
  {
    sub_100057A84();
  }

  v2 = qword_1004568B0;
  if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "getSecondsSinceReboot", buf, 2u);
  }

  v3 = mach_continuous_time();
  mach_timebase_info(&info);
  v4 = info.numer / info.denom;
  if (qword_1004568A8 != -1)
  {
    sub_100057A98();
  }

  v5 = v3 * v4 / 0x3B9ACA00;
  v6 = qword_1004568B0;
  if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218496;
    v10 = v3;
    v11 = 2048;
    v12 = v4;
    v13 = 2048;
    v14 = v5 / 60.0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "UserInfo machTime - currentTicks:%llu, ticksToNanoseconds:%llu, minutesSinceReboot:%f", buf, 0x20u);
  }

  return v5;
}

+ (BOOL)shouldAttemptCoreAnalyticsUploadWithInterval:(double)a3 persistentKey:(id)a4
{
  v5 = a4;
  v6 = +[CSPersistentConfiguration sharedConfiguration];
  v7 = [v6 objectForKey:v5];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    v10 = +[NSDate date];
    [v10 timeIntervalSinceDate:v9];
    v12 = a3 <= 0.0;
    if (v11 <= 0.0)
    {
      v12 = 1;
    }

    v13 = v11 >= a3 * 0.9 || v12;
    if (!v13)
    {
      if (qword_1004568A8 != -1)
      {
        sub_100057A84();
      }

      v14 = qword_1004568B0;
      if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_INFO))
      {
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "CoreAnalytics upload ran recently, skipping now.", v16, 2u);
      }
    }
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

@end