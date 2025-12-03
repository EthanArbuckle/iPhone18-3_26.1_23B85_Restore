@interface MobileAssetHealthReport
+ (id)bucketedDays:(id)days;
+ (id)sharedInstance;
- (MobileAssetHealthReport)init;
- (id)appleIntelligenceRelatedSetIdentifiers;
- (id)getGreymatterStatus;
- (id)getLastReportDate;
- (id)getPreviousOTAStatus;
- (id)getSystemInformation;
- (void)_collectAndSubmitReport;
- (void)_submitReportToCoreAnalytics:(id)analytics commonFields:(id)fields sessionId:(id)id;
- (void)_submitReportToSplunk:(id)splunk commonFields:(id)fields sessionId:(id)id;
- (void)scheduleReport;
- (void)setLastReportDate:(id)date;
@end

@implementation MobileAssetHealthReport

- (id)getLastReportDate
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__8;
  v11 = __Block_byref_object_dispose__8;
  v12 = 0;
  persistedStateDispatchQueue = [(MobileAssetHealthReport *)self persistedStateDispatchQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __44__MobileAssetHealthReport_getLastReportDate__block_invoke;
  v6[3] = &unk_4B2AC8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(persistedStateDispatchQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __44__MobileAssetHealthReport_getLastReportDate__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) state];
  v2 = [v5 dateForKey:@"LastReportDate"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setLastReportDate:(id)date
{
  dateCopy = date;
  persistedStateDispatchQueue = [(MobileAssetHealthReport *)self persistedStateDispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __45__MobileAssetHealthReport_setLastReportDate___block_invoke;
  v7[3] = &unk_4B2B18;
  v7[4] = self;
  v8 = dateCopy;
  v6 = dateCopy;
  dispatch_sync(persistedStateDispatchQueue, v7);
}

void __45__MobileAssetHealthReport_setLastReportDate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) state];
  [v2 persistDate:*(a1 + 40) forKey:@"LastReportDate" shouldPersist:1];
}

- (MobileAssetHealthReport)init
{
  v24.receiver = self;
  v24.super_class = MobileAssetHealthReport;
  v2 = [(MobileAssetHealthReport *)&v24 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.MobileAsset.MobileAssetHealthReportQueue", v3);
    reportQueue = v2->_reportQueue;
    v2->_reportQueue = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.MobileAsset.MobileAssetHealthReportPersistedStateQueue", v6);
    persistedStateDispatchQueue = v2->_persistedStateDispatchQueue;
    v2->_persistedStateDispatchQueue = v7;

    dateOfFirstRunInCurrentOS = v2->_dateOfFirstRunInCurrentOS;
    v2->_dateOfFirstRunInCurrentOS = 0;

    v10 = getRepositoryPath(@"/private/var/MobileAsset/AssetsV2/persisted");
    v11 = [NSString stringWithFormat:@"%@/%@", v10, @"HealthReport"];

    v12 = +[NSFileManager defaultManager];
    if (([v12 fileExistsAtPath:v11] & 1) == 0)
    {
      v23 = 0;
      v13 = [v12 createDirectoryAtPath:v11 withIntermediateDirectories:1 attributes:0 error:&v23];
      v14 = v23;
      if ((v13 & 1) == 0)
      {
        v15 = _MADLog(@"Analytics");
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v26 = v14;
          _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "[MobileAssetHealthReport]: failed to create persisted state directory, error: %{public}@", buf, 0xCu);
        }
      }
    }

    v16 = [[NSString alloc] initWithFormat:@"%@/%@.state", v11, objc_opt_class()];
    v17 = [[SUCorePersistedState alloc] initWithDispatchQueue:v2->_persistedStateDispatchQueue withPersistencePath:v16 forPolicyVersion:@"1.0"];
    state = v2->_state;
    v2->_state = v17;

    v19 = v2->_persistedStateDispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __31__MobileAssetHealthReport_init__block_invoke;
    block[3] = &unk_4B2AA0;
    v22 = v2;
    dispatch_sync(v19, block);
  }

  return v2;
}

void __31__MobileAssetHealthReport_init__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 32) loadPersistedState];
  v2 = [*(*(a1 + 32) + 32) stringForKey:@"LastKnownBuildVersion"];
  v3 = MGGetStringAnswer();
  if (v3)
  {
    if (v2 && [v2 isEqualToString:v3])
    {
      v4 = [*(*(a1 + 32) + 32) dateForKey:@"DateOfFirstRunOnCurrentOS"];
      v5 = *(a1 + 32);
      v6 = *(v5 + 24);
      *(v5 + 24) = v4;

      if (!*(*(a1 + 32) + 24))
      {
        v7 = _MADLog(@"Analytics");
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v21) = 0;
          _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "[MobileAssetHealthReport]: Unable to determine time of last update. Assuming current time", &v21, 2u);
        }

        v8 = +[NSDate date];
        v9 = *(a1 + 32);
        v10 = *(v9 + 24);
        *(v9 + 24) = v8;

        [*(*(a1 + 32) + 32) persistDate:*(*(a1 + 32) + 24) forKey:@"DateOfFirstRunOnCurrentOS" shouldPersist:1];
      }
    }

    else
    {
      v11 = +[NSDate date];
      v12 = *(a1 + 32);
      v13 = *(v12 + 24);
      *(v12 + 24) = v11;

      [*(*(a1 + 32) + 32) persistDate:*(*(a1 + 32) + 24) forKey:@"DateOfFirstRunOnCurrentOS" shouldPersist:1];
      [*(*(a1 + 32) + 32) persistString:v3 forKey:@"LastKnownBuildVersion" shouldPersist:1];
      v14 = v3;

      v2 = v14;
    }

    v15 = _MADLog(@"Analytics");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(*(a1 + 32) + 24);
      v21 = 138412546;
      v22 = v2;
      v23 = 2112;
      v24 = v16;
      v17 = "[MobileAssetHealthReport]: Date of first run in %@ : %@";
      v18 = v15;
      v19 = OS_LOG_TYPE_DEFAULT;
      v20 = 22;
LABEL_13:
      _os_log_impl(&dword_0, v18, v19, v17, &v21, v20);
    }
  }

  else
  {
    v15 = _MADLog(@"Analytics");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v21) = 0;
      v17 = "[MobileAssetHealthReport]: Unable to determine currentOSVersion. Cannot determine date of first run";
      v18 = v15;
      v19 = OS_LOG_TYPE_ERROR;
      v20 = 2;
      goto LABEL_13;
    }
  }
}

+ (id)sharedInstance
{
  if (sharedInstance_sharedInstanceDispatchOnce != -1)
  {
    +[MobileAssetHealthReport sharedInstance];
  }

  v3 = sharedInstance_instance;

  return v3;
}

void __41__MobileAssetHealthReport_sharedInstance__block_invoke(id a1)
{
  sharedInstance_instance = objc_alloc_init(MobileAssetHealthReport);

  _objc_release_x1();
}

- (void)scheduleReport
{
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = __41__MobileAssetHealthReport_scheduleReport__block_invoke;
  handler[3] = &unk_4B3A98;
  handler[4] = self;
  xpc_activity_register("com.apple.mobileassetd.health-report", XPC_ACTIVITY_CHECK_IN, handler);
  if (+[MADAutoAssetControlManager preferenceForceStartupHealthReport])
  {
    reportQueue = [(MobileAssetHealthReport *)self reportQueue];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = __41__MobileAssetHealthReport_scheduleReport__block_invoke_1146;
    v4[3] = &unk_4B2AA0;
    v4[4] = self;
    dispatch_async(reportQueue, v4);
  }
}

void __41__MobileAssetHealthReport_scheduleReport__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  state = xpc_activity_get_state(v3);
  v5 = _MADLog(@"Analytics");
  empty = v5;
  if (state == 2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v12 = "com.apple.mobileassetd.health-report";
      _os_log_impl(&dword_0, empty, OS_LOG_TYPE_DEFAULT, "[MobileAssetHealthReport]: XPC activity %s is running", buf, 0xCu);
    }

    empty = [*(a1 + 32) reportQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __41__MobileAssetHealthReport_scheduleReport__block_invoke_1143;
    block[3] = &unk_4B2AA0;
    block[4] = *(a1 + 32);
    dispatch_async_and_wait(empty, block);
  }

  else
  {
    if (!state)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v12 = "com.apple.mobileassetd.health-report";
        _os_log_impl(&dword_0, empty, OS_LOG_TYPE_DEFAULT, "[MobileAssetHealthReport]: XPC activity %s is checking in", buf, 0xCu);
      }

      v7 = xpc_activity_copy_criteria(v3);
      if (v7)
      {
        empty = v7;
        v8 = _MADLog(@"Analytics");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v12 = empty;
          v9 = "[MobileAssetHealthReport]: Use existing criteria: %@";
LABEL_15:
          _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 0xCu);
        }
      }

      else
      {
        empty = xpc_dictionary_create_empty();
        xpc_dictionary_set_int64(empty, XPC_ACTIVITY_INTERVAL, 86400);
        xpc_dictionary_set_string(empty, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
        xpc_dictionary_set_BOOL(empty, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
        xpc_dictionary_set_BOOL(empty, XPC_ACTIVITY_ALLOW_BATTERY, 0);
        xpc_activity_set_criteria(v3, empty);
        v8 = _MADLog(@"Analytics");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v12 = empty;
          v9 = "[MobileAssetHealthReport]: Use new criteria: %@";
          goto LABEL_15;
        }
      }

      goto LABEL_17;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      v12 = state;
      v13 = 2080;
      v14 = "com.apple.mobileassetd.health-report";
      _os_log_impl(&dword_0, empty, OS_LOG_TYPE_ERROR, "[MobileAssetHealthReport]: Unknown XPC activity state (%ld) for activity %s", buf, 0x16u);
    }
  }

LABEL_17:
}

id __41__MobileAssetHealthReport_scheduleReport__block_invoke_1143(uint64_t a1)
{
  [*(a1 + 32) _collectAndSubmitReport];

  return +[MADAutoAssetControlManager considerPerfomingCrosscheckTrim];
}

id __41__MobileAssetHealthReport_scheduleReport__block_invoke_1146(uint64_t a1)
{
  [*(a1 + 32) _collectAndSubmitReport];

  return +[MADAutoAssetControlManager considerPerfomingCrosscheckTrim];
}

- (id)getSystemInformation
{
  if (getSystemInformation_onceToken != -1)
  {
    [MobileAssetHealthReport getSystemInformation];
  }

  v3 = getSystemInformation_systemInfoDict;

  return v3;
}

void __47__MobileAssetHealthReport_getSystemInformation__block_invoke(id a1)
{
  v1 = objc_alloc_init(NSMutableDictionary);
  v2 = getSystemInformation_systemInfoDict;
  getSystemInformation_systemInfoDict = v1;

  v3 = +[SUCoreDevice sharedDevice];
  v21[0] = @"ProductVersion";
  v21[1] = @"HardwarePlatform";
  v21[2] = @"DeviceName";
  v21[3] = @"BuildVersion";
  v21[4] = @"ReleaseType";
  [NSArray arrayWithObjects:v21 count:5];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = v19 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        v10 = getSystemInformation_systemInfoDict;
        v11 = MGGetStringAnswer();
        [v10 setSafeObject:v11 forKey:{v9, v16}];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  if (_MAPreferencesIsInternalAllowed())
  {
    v12 = getSystemInformation_systemInfoDict;
    v13 = MGGetStringAnswer();
    [v12 setSafeObject:v13 forKey:@"SerialNumber"];
  }

  if (objc_opt_respondsToSelector())
  {
    v14 = getSystemInformation_systemInfoDict;
    v15 = [v3 hwModelString];
    [v14 setSafeObject:v15 forKey:@"HWModelStr"];
  }
}

- (id)appleIntelligenceRelatedSetIdentifiers
{
  v2 = [NSMutableArray arrayWithArray:&off_4F6E30];
  v3 = +[MADAutoAssetControlManager preferenceHealthReportAdditionalSetNames];

  if (v3)
  {
    v4 = +[MADAutoAssetControlManager preferenceHealthReportAdditionalSetNames];
    [v2 addObjectsFromArray:v4];
  }

  return v2;
}

- (id)getGreymatterStatus
{
  v2 = +[NSMutableDictionary dictionary];
  if (__isPlatformVersionAtLeast(2, 18, 0, 0))
  {
    domain_answer = os_eligibility_get_domain_answer();
    if (domain_answer)
    {
      v4 = domain_answer;
      v5 = _MADLog(@"Analytics");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v9 = strerror(v4);
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "[MobileAssetHealthReport]: Failed to query greymatter eligibility; error: %s", buf, 0xCu);
      }
    }

    v6 = [NSNumber numberWithBool:0];
    [v2 setSafeObject:v6 forKey:@"AIEligible"];
  }

  return v2;
}

- (id)getPreviousOTAStatus
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = +[MADAutoAssetControlManager previousOTASituation];
  v4 = [MANAutoAssetControlStagerInformation previousOTASituationName:v3];
  if (!v4)
  {
    v5 = _MADLog(@"Analytics");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 134217984;
      v8 = v3;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "[MobileAssetHealthReport]: nil previous-OTA-situation-name | previousOTASituation:%ld", &v7, 0xCu);
    }

    v4 = @"UNKNOWN";
  }

  [v2 setSafeObject:v4 forKey:@"PrevOTA"];

  return v2;
}

- (void)_submitReportToSplunk:(id)splunk commonFields:(id)fields sessionId:(id)id
{
  splunkCopy = splunk;
  fieldsCopy = fields;
  idCopy = id;
  v10 = +[NSMutableArray array];
  appleIntelligenceRelatedSetIdentifiers = [(MobileAssetHealthReport *)self appleIntelligenceRelatedSetIdentifiers];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v12 = splunkCopy;
  v13 = [v12 countByEnumeratingWithState:&v26 objects:v36 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v27;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v26 + 1) + 8 * i);
        setIdentifier = [v17 setIdentifier];
        v19 = [appleIntelligenceRelatedSetIdentifiers containsObject:setIdentifier];

        if (v19)
        {
          eventPayloadForSplunk = [v17 eventPayloadForSplunk];
          [v10 addObject:eventPayloadForSplunk];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v26 objects:v36 count:16];
    }

    while (v14);
  }

  if (_MAPreferencesIsVerboseLoggingEnabled())
  {
    v21 = _MADLog(@"Analytics");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v31 = idCopy;
      v32 = 2114;
      v33 = v10;
      v34 = 2114;
      v35 = fieldsCopy;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "[MobileAssetHealthReport] Submitting to Splunk:\nID: %{public}@\nReports: %{public}@\nCommonFields: %{public}@", buf, 0x20u);
    }
  }

  if (_MAPreferencesIsInternalAllowed())
  {
    v22 = _MAPreferencesCopyValue(@"HealthReportDontSendOut");
    if (v22)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v22 BOOLValue])
        {
          v23 = _MADLog(@"Analytics");
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v31 = @"HealthReportDontSendOut";
            _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "[MobileAssetHealthReport]: %@ is set, not sending out the event", buf, 0xCu);
          }

          goto LABEL_24;
        }
      }
    }
  }

  v24 = getDownloadManager();
  [v24 sendMobileAssetHealthReport:v10 commonFields:fieldsCopy sessionId:idCopy];

  v22 = _MADLog(@"Analytics");
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = idCopy;
    _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "[MobileAssetHealthReport] Report %@ submitted to Splunk", buf, 0xCu);
  }

LABEL_24:
}

+ (id)bucketedDays:(id)days
{
  longLongValue = [days longLongValue];
  v4 = longLongValue / 86400;
  if (longLongValue > 5183999)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [&off_4F6E48 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(&off_4F6E48);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if (v4 >= [v10 longLongValue])
          {
            lastObject = v10;
            goto LABEL_13;
          }
        }

        v7 = [&off_4F6E48 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    lastObject = [&off_4F6E48 lastObject];
  }

  else
  {
    lastObject = [NSNumber numberWithLongLong:v4];
  }

LABEL_13:

  return lastObject;
}

- (void)_submitReportToCoreAnalytics:(id)analytics commonFields:(id)fields sessionId:(id)id
{
  analyticsCopy = analytics;
  fieldsCopy = fields;
  idCopy = id;
  v10 = idCopy;
  if (&_AnalyticsSendEventLazy)
  {
    v51 = idCopy;
    v52 = fieldsCopy;
    v11 = [fieldsCopy mutableCopy];
    v12 = [v11 safeObjectForKey:@"TimeSinceOTA" ofClass:objc_opt_class()];
    if (v12)
    {
      v13 = [objc_opt_class() bucketedDays:v12];
      [v11 setSafeObject:v13 forKey:@"TimeSinceOTA"];
    }

    v50 = v12;
    v54 = +[NSMutableArray array];
    v56 = +[NSMutableArray array];
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v53 = analyticsCopy;
    v14 = analyticsCopy;
    v15 = [v14 countByEnumeratingWithState:&v75 objects:v84 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v76;
      do
      {
        v18 = v14;
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v76 != v17)
          {
            objc_enumerationMutation(v18);
          }

          v20 = *(*(&v75 + 1) + 8 * i);
          v21 = objc_autoreleasePoolPush();
          eventPayloadForCoreAnalytics = [v20 eventPayloadForCoreAnalytics];
          v23 = v11;
          [eventPayloadForCoreAnalytics addEntriesFromDictionary:v11];
          [v56 addObject:eventPayloadForCoreAnalytics];
          appleIntelligenceRelatedSetIdentifiers = [(MobileAssetHealthReport *)self appleIntelligenceRelatedSetIdentifiers];
          setIdentifier = [v20 setIdentifier];
          v26 = [appleIntelligenceRelatedSetIdentifiers containsObject:setIdentifier];

          if (v26)
          {
            [v54 addObject:eventPayloadForCoreAnalytics];
          }

          objc_autoreleasePoolPop(v21);
          v11 = v23;
        }

        v14 = v18;
        v16 = [v18 countByEnumeratingWithState:&v75 objects:v84 count:16];
      }

      while (v16);
    }

    IsVerboseLoggingEnabled = _MAPreferencesIsVerboseLoggingEnabled();
    v28 = IsVerboseLoggingEnabled;
    if (IsVerboseLoggingEnabled)
    {
      v49 = v11;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v29 = v14;
      v30 = [v29 countByEnumeratingWithState:&v71 objects:v83 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v72;
        do
        {
          for (j = 0; j != v31; j = j + 1)
          {
            if (*v72 != v32)
            {
              objc_enumerationMutation(v29);
            }

            v34 = *(*(&v71 + 1) + 8 * j);
            v35 = _MADLog(@"Analytics");
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v82 = v34;
              _os_log_impl(&dword_0, v35, OS_LOG_TYPE_DEFAULT, "[MobileAssetHealthReport] Submitting to CoreAnalytics %@", buf, 0xCu);
            }
          }

          v31 = [v29 countByEnumeratingWithState:&v71 objects:v83 count:16];
        }

        while (v31);
      }

      v11 = v49;
    }

    if (_MAPreferencesIsInternalAllowed())
    {
      v36 = _MAPreferencesCopyValue(@"HealthReportDontSendOut");
      if (v36)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v36 BOOLValue])
          {
            v37 = _MADLog(@"Analytics");
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v82 = @"HealthReportDontSendOut";
              _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEFAULT, "[MobileAssetHealthReport]: %@ is set, not sending out the event", buf, 0xCu);
            }

            goto LABEL_50;
          }
        }
      }
    }

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v38 = v56;
    v39 = [v38 countByEnumeratingWithState:&v67 objects:v80 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v68;
      do
      {
        for (k = 0; k != v40; k = k + 1)
        {
          if (*v68 != v41)
          {
            objc_enumerationMutation(v38);
          }

          v43 = *(*(&v67 + 1) + 8 * k);
          v61 = _NSConcreteStackBlock;
          v62 = 3221225472;
          v63 = __79__MobileAssetHealthReport__submitReportToCoreAnalytics_commonFields_sessionId___block_invoke;
          v64 = &unk_4B2B40;
          v66 = v28;
          v65 = v43;
          AnalyticsSendEventLazy();
        }

        v40 = [v38 countByEnumeratingWithState:&v67 objects:v80 count:16];
      }

      while (v40);
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v44 = v54;
    v45 = [v44 countByEnumeratingWithState:&v57 objects:v79 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v58;
      do
      {
        for (m = 0; m != v46; ++m)
        {
          if (*v58 != v47)
          {
            objc_enumerationMutation(v44);
          }

          AnalyticsSendEventLazy();
        }

        v46 = [v44 countByEnumeratingWithState:&v57 objects:v79 count:16];
      }

      while (v46);
    }

    v36 = _MADLog(@"Analytics");
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = v51;
      v82 = v51;
      _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEFAULT, "[MobileAssetHealthReport] Report %@ submitted to CoreAnalytics", buf, 0xCu);
      fieldsCopy = v52;
      analyticsCopy = v53;
LABEL_51:

      goto LABEL_52;
    }

LABEL_50:
    fieldsCopy = v52;
    analyticsCopy = v53;
    v10 = v51;
    goto LABEL_51;
  }

  v11 = _MADLog(@"Analytics");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "[MobileAssetHealthReport]: CoreAnalytics is not available", buf, 2u);
  }

LABEL_52:
}

id __79__MobileAssetHealthReport__submitReportToCoreAnalytics_commonFields_sessionId___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = _MADLog(@"Analytics");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "[MobileAssetHealthReport]: Submitting CoreAnalytics MAHR_ALL: %{public}@", &v6, 0xCu);
    }
  }

  v4 = *(a1 + 32);

  return v4;
}

id __79__MobileAssetHealthReport__submitReportToCoreAnalytics_commonFields_sessionId___block_invoke_1221(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = _MADLog(@"Analytics");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "[MobileAssetHealthReport]: Submitting CoreAnalytics MAHR_AI_ONLY: %{public}@", &v6, 0xCu);
    }
  }

  v4 = *(a1 + 32);

  return v4;
}

- (void)_collectAndSubmitReport
{
  reportQueue = [(MobileAssetHealthReport *)self reportQueue];
  dispatch_assert_queue_V2(reportQueue);

  v4 = objc_autoreleasePoolPush();
  v5 = _MADLog(@"Analytics");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v23) = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[MobileAssetHealthReport]: Collecting health report", &v23, 2u);
  }

  v6 = +[NSMutableDictionary dictionary];
  v7 = +[NSUUID UUID];
  uUIDString = [v7 UUIDString];

  [v6 setSafeObject:@"MAHR" forKey:@"event"];
  [v6 setSafeObject:uUIDString forKey:@"UUID"];
  getSystemInformation = [(MobileAssetHealthReport *)self getSystemInformation];
  if (getSystemInformation)
  {
    [v6 addEntriesFromDictionary:getSystemInformation];
  }

  else
  {
    v10 = _MADLog(@"Analytics");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "[MobileAssetHealthReport]: Failed to copy system info dict", &v23, 2u);
    }
  }

  dateOfFirstRunInCurrentOS = [(MobileAssetHealthReport *)self dateOfFirstRunInCurrentOS];

  if (dateOfFirstRunInCurrentOS)
  {
    v12 = +[NSDate date];
    dateOfFirstRunInCurrentOS2 = [(MobileAssetHealthReport *)self dateOfFirstRunInCurrentOS];
    [v12 timeIntervalSinceDate:dateOfFirstRunInCurrentOS2];
    v15 = v14;

    v16 = [NSNumber numberWithLongLong:v15];
    [v6 setSafeObject:v16 forKey:@"TimeSinceOTA"];
  }

  else
  {
    v16 = _MADLog(@"Analytics");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "[MobileAssetHealthReport]: Unable to determine time interval since last update", &v23, 2u);
    }
  }

  if (_MAPreferencesIsInternalAllowed())
  {
    v17 = getDownloadManager();
    v18 = [v17 newAssetAudience:1 assetType:@"com.apple.MobileAsset.UAF.Siri.Understanding" logMessage:0];

    [v6 setSafeObject:v18 forKey:@"Audience"];
  }

  getGreymatterStatus = [(MobileAssetHealthReport *)self getGreymatterStatus];
  [v6 addEntriesFromDictionary:getGreymatterStatus];

  getPreviousOTAStatus = [(MobileAssetHealthReport *)self getPreviousOTAStatus];
  [v6 addEntriesFromDictionary:getPreviousOTAStatus];

  getHealthReports = [(MobileAssetHealthReport *)self getHealthReports];
  [(MobileAssetHealthReport *)self _submitReportToSplunk:getHealthReports commonFields:v6 sessionId:uUIDString];
  [(MobileAssetHealthReport *)self _submitReportToCoreAnalytics:getHealthReports commonFields:v6 sessionId:uUIDString];
  v22 = _MADLog(@"Analytics");
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138543874;
    v24 = uUIDString;
    v25 = 2114;
    v26 = getHealthReports;
    v27 = 2114;
    v28 = v6;
    _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "[MobileAssetHealthReport]: Submitted health reports | UUID:%{public}@\nMAHR reports:\n%{public}@\nMAHR commonFields:\n%{public}@", &v23, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
}

@end