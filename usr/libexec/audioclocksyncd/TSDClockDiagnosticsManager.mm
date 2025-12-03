@interface TSDClockDiagnosticsManager
- (BOOL)addNetworkPortWithService:(id)service;
- (BOOL)addStatisticsWithIdentifier:(unint64_t)identifier;
- (BOOL)removeNetworkPortWithService:(id)service;
- (BOOL)removeStatisticsWithIdentifier:(unint64_t)identifier;
- (TSDClockDiagnosticsManager)init;
- (void)dealloc;
- (void)didChangeASCapable:(BOOL)capable forPort:(id)port;
- (void)didChangeAdministrativeEnable:(BOOL)enable forPort:(id)port;
- (void)didSyncTimeoutWithMean:(int64_t)mean median:(int64_t)median standardDeviation:(unint64_t)deviation minimum:(int64_t)minimum maximum:(int64_t)maximum numberOfSamples:(unsigned int)samples forPort:(id)port;
- (void)didTerminateServiceForPort:(id)port;
- (void)didTimeoutOnMACLookupForPort:(id)port;
@end

@implementation TSDClockDiagnosticsManager

- (TSDClockDiagnosticsManager)init
{
  v48.receiver = self;
  v48.super_class = TSDClockDiagnosticsManager;
  v2 = [(TSDClockDiagnosticsManager *)&v48 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    v4 = *(v2 + 3);
    *(v2 + 3) = v3;

    if (*(v2 + 3))
    {
      v5 = objc_alloc_init(NSMutableDictionary);
      v6 = *(v2 + 4);
      *(v2 + 4) = v5;

      if (*(v2 + 4))
      {
        v7 = dispatch_queue_create("com.apple.timesyncd.statistics", 0);
        v8 = *(v2 + 1);
        *(v2 + 1) = v7;

        v9 = *(v2 + 1);
        if (v9)
        {
          v10 = dispatch_source_create(&_dispatch_source_type_timer, 0, 1uLL, v9);
          v11 = *(v2 + 2);
          *(v2 + 2) = v10;

          if (*(v2 + 2))
          {
            v12 = [[IOKNotificationPort alloc] initOnDispatchQueue:*(v2 + 1)];
            v13 = *(v2 + 5);
            *(v2 + 5) = v12;

            if (*(v2 + 5))
            {
              objc_initWeak(&location, v2);
              v14 = [IOKService serviceMatching:@"IOTimeSyncService"];
              v15 = IOKMatchedNotification;
              v16 = *(v2 + 5);
              v45[0] = _NSConcreteStackBlock;
              v45[1] = 3221225472;
              v45[2] = sub_100005F2C;
              v45[3] = &unk_10004C658;
              objc_copyWeak(&v46, &location);
              v17 = [IOKService addNotificationOfType:v15 forMatching:v14 usingNotificationPort:v16 error:0 withEnumerationBlock:v45];
              v18 = *(v2 + 6);
              *(v2 + 6) = v17;

              v19 = [IOKService serviceMatching:@"IOTimeSyncService"];
              v20 = IOKTerminatedNotification;
              v21 = *(v2 + 5);
              v43[0] = _NSConcreteStackBlock;
              v43[1] = 3221225472;
              v43[2] = sub_100005FE8;
              v43[3] = &unk_10004C658;
              objc_copyWeak(&v44, &location);
              v22 = [IOKService addNotificationOfType:v20 forMatching:v19 usingNotificationPort:v21 error:0 withEnumerationBlock:v43];
              v23 = *(v2 + 7);
              *(v2 + 7) = v22;

              v24 = [IOKService serviceMatching:@"IOTimeSyncNetworkPort"];
              v25 = *(v2 + 5);
              v41[0] = _NSConcreteStackBlock;
              v41[1] = 3221225472;
              v41[2] = sub_1000060A4;
              v41[3] = &unk_10004C658;
              objc_copyWeak(&v42, &location);
              v26 = [IOKService addNotificationOfType:v15 forMatching:v24 usingNotificationPort:v25 error:0 withEnumerationBlock:v41];
              v27 = *(v2 + 8);
              *(v2 + 8) = v26;

              v28 = [IOKService serviceMatching:@"IOTimeSyncNetworkPort"];
              v29 = *(v2 + 5);
              v39[0] = _NSConcreteStackBlock;
              v39[1] = 3221225472;
              v39[2] = sub_100006134;
              v39[3] = &unk_10004C658;
              objc_copyWeak(&v40, &location);
              v30 = [IOKService addNotificationOfType:v20 forMatching:v28 usingNotificationPort:v29 error:0 withEnumerationBlock:v39];
              v31 = *(v2 + 9);
              *(v2 + 9) = v30;

              v32 = *(v2 + 2);
              handler[0] = _NSConcreteStackBlock;
              handler[1] = 3221225472;
              handler[2] = sub_1000014E8;
              handler[3] = &unk_10004C680;
              objc_copyWeak(&v38, &location);
              dispatch_source_set_event_handler(v32, handler);
              dispatch_source_set_timer(*(v2 + 2), 0, 0xDF8475800uLL, 0);
              dispatch_resume(*(v2 + 2));
              v33 = *(v2 + 1);
              v35[0] = _NSConcreteStackBlock;
              v35[1] = 3221225472;
              v35[2] = sub_1000061C4;
              v35[3] = &unk_10004C6A8;
              v2 = v2;
              v36 = v2;
              dispatch_async(v33, v35);

              objc_destroyWeak(&v38);
              objc_destroyWeak(&v40);
              objc_destroyWeak(&v42);
              objc_destroyWeak(&v44);
              objc_destroyWeak(&v46);
              objc_destroyWeak(&location);
              return v2;
            }

            sub_100028978(v2);
          }

          else
          {
            sub_100028A3C(v2);
          }
        }

        else
        {
          sub_100028B00(v2);
        }
      }

      else
      {
        sub_100028BC4(v2);
      }
    }

    else
    {
      sub_100028C88(v2);
    }

    return 0;
  }

  return v2;
}

- (BOOL)removeStatisticsWithIdentifier:(unint64_t)identifier
{
  v4 = [NSNumber numberWithLongLong:identifier];
  v5 = [(NSMutableDictionary *)self->_statistics objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    [v5 finalizeClock];
    [(NSMutableDictionary *)self->_statistics removeObjectForKey:v4];
  }

  return v6 != 0;
}

- (BOOL)addNetworkPortWithService:(id)service
{
  serviceCopy = service;
  v5 = [TSDgPTPPort gPTPPortWithService:serviceCopy];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"0x%016llx", [serviceCopy entryID]);
    v8 = [(NSMutableDictionary *)self->_networkPorts objectForKeyedSubscript:v7];

    if (!v8)
    {
      [(NSMutableDictionary *)self->_networkPorts setObject:v5 forKeyedSubscript:v7];
      [v5 addClient:self];
      [v5 registerAsyncCallbackError:0];
    }
  }

  else
  {
    sub_1000294DC(&v10);
    v7 = v10;
  }

  return isKindOfClass & 1;
}

- (BOOL)removeNetworkPortWithService:(id)service
{
  v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"0x%016llx", [service entryID]);
  v5 = [(NSMutableDictionary *)self->_networkPorts objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_networkPorts objectForKeyedSubscript:v4];
    [v6 deregisterAsyncCallbackError:0];
    [v6 removeClient:self];
    [(NSMutableDictionary *)self->_networkPorts removeObjectForKey:v4];
  }

  return v5 != 0;
}

- (void)didChangeASCapable:(BOOL)capable forPort:(id)port
{
  capableCopy = capable;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    portCopy = port;
    clockIdentifier = [portCopy clockIdentifier];
    if (capableCopy)
    {
      v8 = "YES";
    }

    else
    {
      v8 = "NO";
    }

    portNumber = [portCopy portNumber];

    v10 = 134218498;
    v11 = clockIdentifier;
    v12 = 2080;
    v13 = v8;
    v14 = 1024;
    v15 = portNumber;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "0x%016llx: AS Capable %s on port %hu\n", &v10, 0x1Cu);
  }
}

- (void)didChangeAdministrativeEnable:(BOOL)enable forPort:(id)port
{
  enableCopy = enable;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    portCopy = port;
    clockIdentifier = [portCopy clockIdentifier];
    if (enableCopy)
    {
      v8 = "YES";
    }

    else
    {
      v8 = "NO";
    }

    portNumber = [portCopy portNumber];

    v10 = 134218498;
    v11 = clockIdentifier;
    v12 = 2080;
    v13 = v8;
    v14 = 1024;
    v15 = portNumber;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "0x%016llx: Administrative Enabled %s on port %hu\n", &v10, 0x1Cu);
  }
}

- (void)didTimeoutOnMACLookupForPort:(id)port
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    portCopy = port;
    clockIdentifier = [portCopy clockIdentifier];
    portNumber = [portCopy portNumber];

    v7 = 134218240;
    v8 = clockIdentifier;
    v9 = 1024;
    v10 = portNumber;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "0x%016llx: MAC lookup timeout on port %hu\n", &v7, 0x12u);
  }
}

- (void)didSyncTimeoutWithMean:(int64_t)mean median:(int64_t)median standardDeviation:(unint64_t)deviation minimum:(int64_t)minimum maximum:(int64_t)maximum numberOfSamples:(unsigned int)samples forPort:(id)port
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    portCopy = port;
    clockIdentifier = [portCopy clockIdentifier];
    portNumber = [portCopy portNumber];

    v18 = 134219776;
    v19 = clockIdentifier;
    v20 = 1024;
    v21 = portNumber;
    v22 = 2048;
    meanCopy = mean;
    v24 = 2048;
    medianCopy = median;
    v26 = 2048;
    deviationCopy = deviation;
    v28 = 2048;
    minimumCopy = minimum;
    v30 = 2048;
    maximumCopy = maximum;
    v32 = 1024;
    samplesCopy = samples;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "0x%016llx: Sync timeout on port %hu with mean %llu median %llu stddev %llu min %llu max %llu num samples %u\n", &v18, 0x4Au);
  }
}

- (void)didTerminateServiceForPort:(id)port
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    portCopy = port;
    clockIdentifier = [portCopy clockIdentifier];
    portNumber = [portCopy portNumber];

    v7 = 134218240;
    v8 = clockIdentifier;
    v9 = 1024;
    v10 = portNumber;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "0x%016llx: Terminate for port %hu\n", &v7, 0x12u);
  }
}

- (void)dealloc
{
  statisticsTimer = self->_statisticsTimer;
  if (statisticsTimer)
  {
    dispatch_source_cancel(statisticsTimer);
  }

  v4.receiver = self;
  v4.super_class = TSDClockDiagnosticsManager;
  [(TSDClockDiagnosticsManager *)&v4 dealloc];
}

- (BOOL)addStatisticsWithIdentifier:(unint64_t)identifier
{
  v5 = [NSNumber numberWithLongLong:?];
  v6 = [(NSMutableDictionary *)self->_statistics objectForKeyedSubscript:v5];
  if (!v6)
  {
    v7 = [[TSDClockStatistics alloc] initWithClockIdentifier:identifier];
    if (v7)
    {
      statistics = self->_statistics;
      if (statistics)
      {
        [(NSMutableDictionary *)statistics setObject:v7 forKeyedSubscript:v5];
        goto LABEL_6;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        sub_100006A30();
        sub_100006A54();
        sub_100006A68(&_mh_execute_header, &_os_log_default, v11, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v12, v13, v14, v15, 2u);
      }
    }

    v9 = 0;
    goto LABEL_7;
  }

  v7 = v6;
LABEL_6:
  v9 = 1;
LABEL_7:

  return v9;
}

@end