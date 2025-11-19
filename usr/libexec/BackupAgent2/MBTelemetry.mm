@interface MBTelemetry
+ (BOOL)submitEngineCompletedEventName:(id)a3 engineStarted:(double)a4 engineError:(id)a5;
+ (BOOL)submitEventName:(id)a3 event:(id)a4;
@end

@implementation MBTelemetry

+ (BOOL)submitEventName:(id)a3 event:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v5 || (v7 = v6) == 0)
  {
    sub_10009B980();
  }

  if ([v6 count])
  {
    v8 = [v7 objectForKeyedSubscript:@"successes"];
    if (v8)
    {
      v9 = v8;
      v10 = [v7 objectForKeyedSubscript:@"failed"];

      if (v10)
      {
        v11 = MBGetDefaultLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "=analytics= CA metrics have both success and failure recordings", buf, 2u);
          _MBLog();
        }

        LOBYTE(v12) = 0;
        goto LABEL_19;
      }
    }

    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v19 = v5;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "=analytics= Submitting %{public}@: %@", buf, 0x16u);
      _MBLog();
    }

    v17 = v7;
    v12 = AnalyticsSendEventLazy();
    v14 = MBGetDefaultLog();
    v15 = v14;
    if (v12)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v19 = v5;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "=analytics= Successfully submitted %{public}@", buf, 0xCu);
LABEL_17:
        _MBLog();
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v19 = v5;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "=analytics= Failed to submit %{public}@", buf, 0xCu);
      goto LABEL_17;
    }

    v11 = v17;
LABEL_19:

    goto LABEL_20;
  }

  LOBYTE(v12) = 1;
LABEL_20:

  return v12;
}

+ (BOOL)submitEngineCompletedEventName:(id)a3 engineStarted:(double)a4 engineError:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = +[NSMutableDictionary dictionary];
  [v10 setObject:&off_100109398 forKeyedSubscript:@"total"];
  v11 = [NSNumber numberWithUnsignedLongLong:MBPeakProcessMemoryUsage()];
  [v10 setObject:v11 forKeyedSubscript:@"peakMemoryUsage"];

  if (v8)
  {
    [v10 setObject:&off_100109398 forKeyedSubscript:@"failed"];
    v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v8 code]);
    [v10 setObject:v12 forKeyedSubscript:@"errorCode"];

    v13 = [v8 domain];
    [v10 setObject:v13 forKeyedSubscript:@"errorDomain"];

    v14 = [v8 underlyingErrors];
    v15 = [v14 firstObject];

    if (v15)
    {
      v16 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v15 code]);
      [v10 setObject:v16 forKeyedSubscript:@"underlyingErrorCode"];

      v17 = [v15 domain];
      [v10 setObject:v17 forKeyedSubscript:@"underlyingErrorDomain"];
    }
  }

  else
  {
    [v10 setObject:&off_100109398 forKeyedSubscript:@"successes"];
    +[NSDate timeIntervalSinceReferenceDate];
    v15 = [NSNumber numberWithDouble:v18 - a4];
    [v10 setObject:v15 forKeyedSubscript:@"duration"];
  }

  v19 = [a1 submitEventName:v9 event:v10];
  return v19;
}

@end