@interface TSULogHelper
+ (id)sharedInstance;
- (BOOL)incrementThrottleCountAndCheckThottleMax:(unint64_t)a3;
@end

@implementation TSULogHelper

+ (id)sharedInstance
{
  if (qword_1001EB030 != -1)
  {
    sub_10015DEDC();
  }

  v3 = qword_1001EB028;

  return v3;
}

- (BOOL)incrementThrottleCountAndCheckThottleMax:(unint64_t)a3
{
  v5 = [(TSULogHelper *)self throttleCount];
  [(TSULogHelper *)self setThrottleCount:[(TSULogHelper *)self throttleCount]+ 1];
  v6 = [(TSULogHelper *)self lastThrottleCheck];
  if (v5 == a3)
  {
    if (TSUPerformanceCat_init_token != -1)
    {
      sub_10015DEF0();
    }

    v7 = TSUPerformanceCat_log_t;
    if (os_log_type_enabled(TSUPerformanceCat_log_t, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Start throttling logging", buf, 2u);
    }
  }

  if (v5 < a3 || !v6)
  {
    goto LABEL_16;
  }

  [v6 timeIntervalSinceNow];
  v9 = v8;
  [v6 timeIntervalSinceNow];
  if (v10 < -300.0)
  {
    if (TSUPerformanceCat_init_token != -1)
    {
      sub_10015DF04();
    }

    v11 = TSUPerformanceCat_log_t;
    if (os_log_type_enabled(TSUPerformanceCat_log_t, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "End throttling logging", v15, 2u);
    }

    [(TSULogHelper *)self setThrottleCount:0];
  }

  if (v9 >= -60.0)
  {
    v12 = 1;
  }

  else
  {
LABEL_16:
    v13 = +[NSDate date];
    [(TSULogHelper *)self setLastThrottleCheck:v13];

    v12 = 0;
  }

  return v12;
}

@end