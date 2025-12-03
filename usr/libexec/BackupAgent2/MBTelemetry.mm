@interface MBTelemetry
+ (BOOL)submitEngineCompletedEventName:(id)name engineStarted:(double)started engineError:(id)error;
+ (BOOL)submitEventName:(id)name event:(id)event;
@end

@implementation MBTelemetry

+ (BOOL)submitEventName:(id)name event:(id)event
{
  nameCopy = name;
  eventCopy = event;
  if (!nameCopy || (v7 = eventCopy) == 0)
  {
    sub_10009B980();
  }

  if ([eventCopy count])
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
      v19 = nameCopy;
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
        v19 = nameCopy;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "=analytics= Successfully submitted %{public}@", buf, 0xCu);
LABEL_17:
        _MBLog();
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v19 = nameCopy;
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

+ (BOOL)submitEngineCompletedEventName:(id)name engineStarted:(double)started engineError:(id)error
{
  errorCopy = error;
  nameCopy = name;
  v10 = +[NSMutableDictionary dictionary];
  [v10 setObject:&off_100109398 forKeyedSubscript:@"total"];
  v11 = [NSNumber numberWithUnsignedLongLong:MBPeakProcessMemoryUsage()];
  [v10 setObject:v11 forKeyedSubscript:@"peakMemoryUsage"];

  if (errorCopy)
  {
    [v10 setObject:&off_100109398 forKeyedSubscript:@"failed"];
    v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [errorCopy code]);
    [v10 setObject:v12 forKeyedSubscript:@"errorCode"];

    domain = [errorCopy domain];
    [v10 setObject:domain forKeyedSubscript:@"errorDomain"];

    underlyingErrors = [errorCopy underlyingErrors];
    firstObject = [underlyingErrors firstObject];

    if (firstObject)
    {
      v16 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [firstObject code]);
      [v10 setObject:v16 forKeyedSubscript:@"underlyingErrorCode"];

      domain2 = [firstObject domain];
      [v10 setObject:domain2 forKeyedSubscript:@"underlyingErrorDomain"];
    }
  }

  else
  {
    [v10 setObject:&off_100109398 forKeyedSubscript:@"successes"];
    +[NSDate timeIntervalSinceReferenceDate];
    firstObject = [NSNumber numberWithDouble:v18 - started];
    [v10 setObject:firstObject forKeyedSubscript:@"duration"];
  }

  v19 = [self submitEventName:nameCopy event:v10];
  return v19;
}

@end