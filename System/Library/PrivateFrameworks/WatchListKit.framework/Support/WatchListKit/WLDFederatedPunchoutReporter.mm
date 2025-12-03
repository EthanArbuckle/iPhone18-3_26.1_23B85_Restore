@interface WLDFederatedPunchoutReporter
+ (id)sharedFederatedPunchoutReporter;
- (WLDFederatedPunchoutReporter)init;
- (id)_metadataForEventWithPunchout:(id)punchout playbackSummary:(id)summary;
- (void)_configureTimerWithDate:(id)date;
- (void)_reportPunchoutEvent:(id)event withPlaybackSummary:(id)summary;
- (void)recordPlaybackSummary:(id)summary;
- (void)recordPunchout:(id)punchout;
@end

@implementation WLDFederatedPunchoutReporter

+ (id)sharedFederatedPunchoutReporter
{
  if (sharedFederatedPunchoutReporter_token != -1)
  {
    +[WLDFederatedPunchoutReporter sharedFederatedPunchoutReporter];
  }

  v3 = sharedFederatedPunchoutReporter_sharedFederatedPunchoutReporter;

  return v3;
}

void __63__WLDFederatedPunchoutReporter_sharedFederatedPunchoutReporter__block_invoke(id a1)
{
  sharedFederatedPunchoutReporter_sharedFederatedPunchoutReporter = objc_alloc_init(WLDFederatedPunchoutReporter);

  _objc_release_x1();
}

- (WLDFederatedPunchoutReporter)init
{
  v10.receiver = self;
  v10.super_class = WLDFederatedPunchoutReporter;
  v2 = [(WLDFederatedPunchoutReporter *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    ledger = v2->_ledger;
    v2->_ledger = v3;

    v5 = objc_alloc_init(NSOperationQueue);
    [(NSOperationQueue *)v5 setMaxConcurrentOperationCount:1];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [(NSOperationQueue *)v5 setName:v7];

    queue = v2->_queue;
    v2->_queue = v5;
  }

  return v2;
}

- (void)recordPunchout:(id)punchout
{
  punchoutCopy = punchout;
  queue = [(WLDFederatedPunchoutReporter *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __47__WLDFederatedPunchoutReporter_recordPunchout___block_invoke;
  v7[3] = &unk_100044E38;
  v8 = punchoutCopy;
  selfCopy = self;
  v6 = punchoutCopy;
  [queue addOperationWithBlock:v7];
}

void __47__WLDFederatedPunchoutReporter_recordPunchout___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) channelID];
  v4 = [*v2 canonicalID];
  if (v3)
  {
    v5 = [*(a1 + 40) ledger];
    v6 = [v5 objectForKey:v3];

    if (v6)
    {
      v7 = [v6 canonicalID];
      v8 = [v7 isEqual:v4];

      if (v8)
      {
        v9 = 3;
      }

      else
      {
        v9 = 2;
      }

      [v6 setFailureReason:v9];
      v10 = WLKPushNotificationsLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 134217984;
        v20 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "WLDFederatedPunchoutReporter - Recorded punchout that matches existing one in ledger. reporting back with failure reason %lu", &v19, 0xCu);
      }

      [*(a1 + 40) _reportPunchoutEvent:v6 withPlaybackSummary:0];
      v11 = [*(a1 + 40) ledger];
      [v11 removeObjectForKey:v3];
    }

    v12 = +[TVAppBag app];
    v13 = [v12 integerForKey:@"tvFederatedPunchoutTTL"];

    if (!v13)
    {
      v13 = [NSNumber numberWithInt:60];
    }

    [*v2 setTtl:{objc_msgSend(v13, "unsignedIntegerValue")}];
    v14 = WLKPushNotificationsLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *v2;
      v19 = 138412290;
      v20 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "WLDFederatedPunchoutReporter - Adding punchout to ledger: %@", &v19, 0xCu);
    }

    v16 = [*(a1 + 40) ledger];
    [v16 setObject:*(a1 + 32) forKey:v3];

    v17 = *(a1 + 40);
    v18 = [*(a1 + 32) expiry];
    [v17 _configureTimerWithDate:v18];
  }

  else
  {
    v6 = WLKPushNotificationsLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __47__WLDFederatedPunchoutReporter_recordPunchout___block_invoke_cold_1(v2, v6);
    }
  }
}

- (void)recordPlaybackSummary:(id)summary
{
  summaryCopy = summary;
  queue = [(WLDFederatedPunchoutReporter *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __54__WLDFederatedPunchoutReporter_recordPlaybackSummary___block_invoke;
  v7[3] = &unk_100044E38;
  v8 = summaryCopy;
  selfCopy = self;
  v6 = summaryCopy;
  [queue addOperationWithBlock:v7];
}

void __54__WLDFederatedPunchoutReporter_recordPlaybackSummary___block_invoke(uint64_t a1)
{
  v2 = +[WLKChannelUtilities sharedInstanceFiltered];
  v3 = [*(a1 + 32) bundleID];
  v4 = [v2 channelForBundleID:v3];

  if (v4 && ([v4 channelID], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [v4 channelID];
    v7 = [*(a1 + 40) ledger];
    v8 = [v7 objectForKey:v6];

    if (v8)
    {
      v9 = WLKPushNotificationsLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v37 = 138412290;
        v38 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "WLDFederatedPunchoutReporter - found matching punchout for reported playback summary: %@", &v37, 0xCu);
      }

      v10 = [v8 externalContentID];
      v11 = [*(a1 + 32) contentID];
      v12 = [v10 isEqual:v11];

      v13 = WLKPushNotificationsLogObject();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      if (v12)
      {
        if (v14)
        {
          LOWORD(v37) = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "WLDFederatedPunchoutReporter - Playback summary matches pending punchout.", &v37, 2u);
        }

        v15 = +[TVAppBag app];
        v16 = [v15 integerForKey:@"tvFederatedPunchoutResumeTimeEpsilon"];

        if (!v16)
        {
          v16 = [NSNumber numberWithInt:10];
        }

        v17 = [*(a1 + 32) elapsedTime];
        v18 = [v17 integerValue];

        v19 = [v8 resumeTimeSeconds];
        v20 = v19;
        if (v18 - v19 >= 0)
        {
          v21 = v18 - v19;
        }

        else
        {
          v21 = v19 - v18;
        }

        v22 = [v16 integerValue];
        v23 = WLKPushNotificationsLogObject();
        v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
        if (v21 <= v22)
        {
          if (v24)
          {
            v35 = [v16 integerValue];
            v37 = 134218496;
            v38 = v18;
            v39 = 2048;
            v40 = v35;
            v41 = 2048;
            v42 = v20;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "WLDFederatedPunchoutReporter - Playback summary elapsed time of %ld is within %ld second epsilon from resume time %ld", &v37, 0x20u);
          }

          v36 = +[NSDate now];
          [v8 setMatchTime:v36];

          [v8 setFailureReason:0];
          [*(a1 + 40) _reportPunchoutEvent:v8 withPlaybackSummary:*(a1 + 32)];
          v28 = [*(a1 + 40) ledger];
          [v28 removeObjectForKey:v6];
        }

        else
        {
          if (v24)
          {
            v25 = [v16 integerValue];
            v37 = 134218496;
            v38 = v18;
            v39 = 2048;
            v40 = v25;
            v41 = 2048;
            v42 = v20;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "WLDFederatedPunchoutReporter - Playback summary elapsed time of %ld is greater than %ld second epsilon from resume time %ld", &v37, 0x20u);
          }

          [v8 setFailureReason:4];
          v26 = [v8 ttl];
          v27 = +[TVAppBag app];
          v28 = [v27 integerForKey:@"tvFederatedPunchoutExtensionTTL"];

          if (!v28)
          {
            v28 = [NSNumber numberWithInt:10];
          }

          [v8 setTtl:{&v26[objc_msgSend(v28, "unsignedIntegerValue")]}];
          v29 = *(a1 + 40);
          v30 = [v8 expiry];
          [v29 _configureTimerWithDate:v30];
        }
      }

      else
      {
        if (v14)
        {
          LOWORD(v37) = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "WLDFederatedPunchoutReporter - playback summary is from expected channel but not the expected playable.", &v37, 2u);
        }

        [v8 setFailureReason:5];
        v32 = [v8 ttl];
        v33 = +[TVAppBag app];
        v16 = [v33 integerForKey:@"tvFederatedPunchoutExtensionTTL"];

        if (!v16)
        {
          v16 = [NSNumber numberWithInt:10];
        }

        [v8 setTtl:{&v32[objc_msgSend(v16, "unsignedIntegerValue")]}];
        v34 = *(a1 + 40);
        v28 = [v8 expiry];
        [v34 _configureTimerWithDate:v28];
      }
    }
  }

  else
  {
    v6 = WLKPushNotificationsLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [*(a1 + 32) bundleID];
      v37 = 138412290;
      v38 = v31;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "WLDFederatedPunchoutReporter - No matching channel for bundle ID %@", &v37, 0xCu);
    }
  }
}

- (void)_reportPunchoutEvent:(id)event withPlaybackSummary:(id)summary
{
  eventCopy = event;
  v7 = [(WLDFederatedPunchoutReporter *)self _metadataForEventWithPunchout:eventCopy playbackSummary:summary];
  if ([eventCopy failureReason])
  {
    v8 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"WLKFederatedPunchoutErrorDomain", [eventCopy failureReason], 0);
  }

  else
  {
    v8 = 0;
  }

  v9 = WLKPushNotificationsLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "WLDFederatedPunchoutReporter - Recording punchout with error %@", &v10, 0xCu);
  }

  [VSMetricsManagerObjC recordFederatedPunchoutEventWithError:v8 metadata:v7];
}

- (id)_metadataForEventWithPunchout:(id)punchout playbackSummary:(id)summary
{
  punchoutCopy = punchout;
  v5 = objc_alloc_init(NSMutableDictionary);
  punchoutTime = [punchoutCopy punchoutTime];
  matchTime = [punchoutCopy matchTime];
  v8 = matchTime;
  v9 = 0.0;
  if (punchoutTime && matchTime)
  {
    [matchTime timeIntervalSinceDate:punchoutTime];
    v9 = round(v10 * 10.0) / 10.0;
  }

  channelID = [punchoutCopy channelID];
  [v5 wlk_setObjectUnlessNil:channelID forKey:@"channelID"];

  bundleID = [punchoutCopy bundleID];
  [v5 wlk_setObjectUnlessNil:bundleID forKey:VSMetricFlexibleFieldBundleID];

  v13 = [NSNumber numberWithDouble:v9];
  [v5 wlk_setObjectUnlessNil:v13 forKey:@"matchTimeSeconds"];

  v14 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [punchoutCopy ttl]);
  [v5 wlk_setObjectUnlessNil:v14 forKey:@"ttl"];

  appAdamID = [punchoutCopy appAdamID];
  [v5 wlk_setObjectUnlessNil:appAdamID forKey:@"adamID"];

  v16 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [punchoutCopy isConsented]);
  [v5 wlk_setObjectUnlessNil:v16 forKey:@"consented"];

  if ([punchoutCopy failureReason])
  {
    canonicalID = [punchoutCopy canonicalID];
    [v5 wlk_setObjectUnlessNil:canonicalID forKey:@"canonicalID"];

    externalContentID = [punchoutCopy externalContentID];
    [v5 wlk_setObjectUnlessNil:externalContentID forKey:@"externalID"];
  }

  return v5;
}

- (void)_configureTimerWithDate:(id)date
{
  dateCopy = date;
  timer = [(WLDFederatedPunchoutReporter *)self timer];
  if (timer)
  {
    v6 = WLKPushNotificationsLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "WLDFederatedPunchoutReporter - New punchout recorded with pre-existing timer.", buf, 2u);
    }

    dispatch_source_cancel(timer);
  }

  queue = [(WLDFederatedPunchoutReporter *)self queue];
  underlyingQueue = [queue underlyingQueue];
  v9 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, underlyingQueue);

  [dateCopy timeIntervalSinceNow];
  v11 = dispatch_time(0, (v10 * 1000000000.0));
  dispatch_source_set_timer(v9, v11, 0xFFFFFFFFFFFFFFFFLL, 0);
  objc_initWeak(buf, self);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = __56__WLDFederatedPunchoutReporter__configureTimerWithDate___block_invoke;
  handler[3] = &unk_100044AE8;
  objc_copyWeak(&v13, buf);
  dispatch_source_set_event_handler(v9, handler);
  [(WLDFederatedPunchoutReporter *)self setTimer:v9];
  dispatch_activate(v9);
  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
}

void __56__WLDFederatedPunchoutReporter__configureTimerWithDate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = +[NSDate now];
    v3 = objc_alloc_init(NSMutableArray);
    v4 = [WeakRetained ledger];
    v5 = WLKPushNotificationsLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v13 = [v4 count];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "WLDFederatedPunchoutReporter - punchout expiry timer fired, processing %lu punchouts.", buf, 0xCu);
    }

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = __56__WLDFederatedPunchoutReporter__configureTimerWithDate___block_invoke_49;
    v8[3] = &unk_100044E60;
    v9 = v2;
    v10 = WeakRetained;
    v11 = v3;
    v6 = v3;
    v7 = v2;
    [v4 enumerateKeysAndObjectsUsingBlock:v8];
    [v4 removeObjectsForKeys:v6];
    [WeakRetained setTimer:0];
  }
}

void __56__WLDFederatedPunchoutReporter__configureTimerWithDate___block_invoke_49(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [v6 expiry];
  v9 = [v7 compare:v8];

  if (v9 == 1)
  {
    v10 = WLKPushNotificationsLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "WLDFederatedPunchoutReporter - Punchout expired: %@", &v11, 0xCu);
    }

    if (![v6 failureReason])
    {
      [v6 setFailureReason:1];
    }

    [*(a1 + 40) _reportPunchoutEvent:v6 withPlaybackSummary:0];
    [*(a1 + 48) addObject:v5];
  }
}

void __47__WLDFederatedPunchoutReporter_recordPunchout___block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "WLDFederatedPunchoutReporter - Attempted to record a punchout with invalid channel ID: %@", &v3, 0xCu);
}

@end