@interface PPSSignpostTestingTask
- (BOOL)perform:(BOOL *)a3 withStopDate:(id *)a4;
- (PPSSignpostTestingTask)initWithRequest:(id)a3;
@end

@implementation PPSSignpostTestingTask

- (PPSSignpostTestingTask)initWithRequest:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = PPSSignpostTestingTask;
    v6 = [(PPSSignpostTestingTask *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_request, a3);
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)perform:(BOOL *)a3 withStopDate:(id *)a4
{
  if (a3)
  {
    v6 = +[NSDate now];
    do
    {
      if (*a3)
      {

        goto LABEL_9;
      }

      v7 = +[NSDate now];
      [v7 timeIntervalSince1970];
      v9 = v8;
      [v6 timeIntervalSince1970];
      v11 = v9 - v10;

      v12 = PPSLogSignpostTestingTask();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v18 = v11;
        _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Waiting for expiration, %f second(s) elasped...", buf, 0xCu);
      }
    }

    while (v11 <= 15.0);
    v14 = PPSLogSignpostTestingTask();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000076D4(v14, v11);
    }

    v13 = 0;
  }

  else
  {
LABEL_9:
    if (!a4)
    {
      return 1;
    }

    v6 = +[NSDate now];
    *a4 = v6;
    v14 = PPSLogSignpostTestingTask();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_100007750(v6, v14);
    }

    v13 = 1;
  }

  return v13;
}

@end