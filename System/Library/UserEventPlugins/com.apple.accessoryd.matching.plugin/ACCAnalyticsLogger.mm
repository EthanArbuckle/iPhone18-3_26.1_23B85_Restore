@interface ACCAnalyticsLogger
+ (id)databasePathForUser:(int)user;
+ (int64_t)fuzzyDaysSinceDate:(id)date;
+ (void)addBuiltInFieldsToEvent:(id)event;
- (BOOL)_onQueuePostJSON:(id)n error:(id *)error httpStatusCode:(int64_t *)code;
- (BOOL)forceUploadWithError:(id *)error httpStatusCode:(int64_t *)code;
- (NSURL)figaroUploadURL;
- (id)datePropertyForKey:(id)key;
- (id)eventDictForEventName:(id)name withAttributes:(id)attributes;
- (id)eventDictWithBlacklistedFieldsStrippedFrom:(id)from;
- (id)getLoggingJSON:(BOOL)n error:(id *)error;
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)_logEventNamed:(id)named withAttributes:(id)attributes;
- (void)logEventNamed:(id)named withAttributes:(id)attributes;
- (void)resetUploadDateAndClearDBEntries:(BOOL)entries dueToError:(BOOL)error;
- (void)setDateProperty:(id)property forKey:(id)key;
- (void)setIgnoreServerDisablingMessages:(BOOL)messages;
@end

@implementation ACCAnalyticsLogger

+ (id)databasePathForUser:(int)user
{
  if (user)
  {
    return @"/var/mobile/Library/CoreAccessories/Analytics/acc_analytics_accessoryd_v3.db";
  }

  else
  {
    return @"/var/mobile/Library/CoreAccessories/Analytics/acc_analytics_UserEventAgent_v3.db";
  }
}

+ (int64_t)fuzzyDaysSinceDate:(id)date
{
  dateCopy = date;
  v4 = +[NSDate date];
  [v4 timeIntervalSinceDate:dateCopy];
  v6 = v5;

  if (v6 < 86400.0)
  {
    return 0;
  }

  if (v6 < 604800.0)
  {
    return 1;
  }

  if (v6 < 2592000.0)
  {
    return 7;
  }

  if (v6 >= 31536000.0)
  {
    return 365;
  }

  return 30;
}

- (void)logEventNamed:(id)named withAttributes:(id)attributes
{
  namedCopy = named;
  attributesCopy = attributes;
  v8 = attributesCopy;
  if (!namedCopy)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_67;
    }

    *buf = 0;
    v25 = "[#ACCEventLogger] attempt to log an event with no name";
LABEL_33:
    _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, v25, buf, 2u);
    goto LABEL_67;
  }

  if (!attributesCopy)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_67;
    }

    *buf = 0;
    v25 = "[#ACCEventLogger] attempt to log an event with no attributes";
    goto LABEL_33;
  }

  if (_isDeviceAnalyticsEnabled_onceToken != -1)
  {
    [ACCAnalyticsLogger logEventNamed:withAttributes:];
  }

  if (_isDeviceAnalyticsEnabled_dataCollectionEnabled == 1)
  {
    v9 = [NSMutableDictionary dictionaryWithDictionary:v8];
    [ACCAnalyticsLogger addBuiltInFieldsToEvent:v9];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v80 = namedCopy;
      v81 = 2112;
      v82 = v9;
      _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] Figaro event: %@\neventDict: %@", buf, 0x16u);
    }

    v10 = MKBDeviceUnlockedSinceBoot();
    eventCacheLock = [(ACCAnalyticsLogger *)self eventCacheLock];
    [eventCacheLock lock];

    user = [(ACCAnalyticsLogger *)self user];
    if (v10)
    {
      if (user)
      {
        if ([(ACCAnalyticsLogger *)self user]!= 1)
        {
          goto LABEL_59;
        }

        accessorydEventsBeforeFirstUnlock = [(ACCAnalyticsLogger *)self accessorydEventsBeforeFirstUnlock];
        v14 = [accessorydEventsBeforeFirstUnlock count];

        if (!v14)
        {
          goto LABEL_59;
        }

        v48 = v9;
        v49 = v8;
        v50 = namedCopy;
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        obj = [(ACCAnalyticsLogger *)self accessorydEventsBeforeFirstUnlock];
        v55 = [obj countByEnumeratingWithState:&v63 objects:v76 count:16];
        if (v55)
        {
          v53 = *v64;
          do
          {
            v15 = 0;
            do
            {
              if (*v64 != v53)
              {
                objc_enumerationMutation(obj);
              }

              v57 = v15;
              v16 = *(*(&v63 + 1) + 8 * v15);
              v59 = 0u;
              v60 = 0u;
              v61 = 0u;
              v62 = 0u;
              v17 = v16;
              v18 = [v17 countByEnumeratingWithState:&v59 objects:v75 count:16];
              if (v18)
              {
                v19 = v18;
                v20 = *v60;
                do
                {
                  for (i = 0; i != v19; i = i + 1)
                  {
                    if (*v60 != v20)
                    {
                      objc_enumerationMutation(v17);
                    }

                    v22 = *(*(&v59 + 1) + 8 * i);
                    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v80 = v22;
                      _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] send event: %@ to sql db", buf, 0xCu);
                    }

                    v23 = [v17 objectForKey:v22];
                    [(ACCAnalyticsLogger *)self _logEventNamed:v22 withAttributes:v23];
                  }

                  v19 = [v17 countByEnumeratingWithState:&v59 objects:v75 count:16];
                }

                while (v19);
              }

              v15 = v57 + 1;
            }

            while ((v57 + 1) != v55);
            v55 = [obj countByEnumeratingWithState:&v63 objects:v76 count:16];
          }

          while (v55);
        }

        accessorydEventsBeforeFirstUnlock2 = [(ACCAnalyticsLogger *)self accessorydEventsBeforeFirstUnlock];
      }

      else
      {
        pluginEventsBeforeFirstUnlock = [(ACCAnalyticsLogger *)self pluginEventsBeforeFirstUnlock];
        v32 = [pluginEventsBeforeFirstUnlock count];

        if (!v32)
        {
LABEL_59:
          eventCacheLock2 = [(ACCAnalyticsLogger *)self eventCacheLock];
          [eventCacheLock2 unlock];

          [(ACCAnalyticsLogger *)self _logEventNamed:namedCopy withAttributes:v9];
LABEL_66:

          goto LABEL_67;
        }

        v48 = v9;
        v49 = v8;
        v50 = namedCopy;
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        obja = [(ACCAnalyticsLogger *)self pluginEventsBeforeFirstUnlock];
        v56 = [obja countByEnumeratingWithState:&v71 objects:v78 count:16];
        if (v56)
        {
          v54 = *v72;
          do
          {
            v33 = 0;
            do
            {
              if (*v72 != v54)
              {
                objc_enumerationMutation(obja);
              }

              v58 = v33;
              v34 = *(*(&v71 + 1) + 8 * v33);
              v67 = 0u;
              v68 = 0u;
              v69 = 0u;
              v70 = 0u;
              v35 = v34;
              v36 = [v35 countByEnumeratingWithState:&v67 objects:v77 count:16];
              if (v36)
              {
                v37 = v36;
                v38 = *v68;
                do
                {
                  for (j = 0; j != v37; j = j + 1)
                  {
                    if (*v68 != v38)
                    {
                      objc_enumerationMutation(v35);
                    }

                    v40 = *(*(&v67 + 1) + 8 * j);
                    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v80 = v40;
                      _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] send event: %@ to sql db", buf, 0xCu);
                    }

                    v41 = [v35 objectForKey:v40];
                    [(ACCAnalyticsLogger *)self _logEventNamed:v40 withAttributes:v41];
                  }

                  v37 = [v35 countByEnumeratingWithState:&v67 objects:v77 count:16];
                }

                while (v37);
              }

              v33 = v58 + 1;
            }

            while ((v58 + 1) != v56);
            v56 = [obja countByEnumeratingWithState:&v71 objects:v78 count:16];
          }

          while (v56);
        }

        accessorydEventsBeforeFirstUnlock2 = [(ACCAnalyticsLogger *)self pluginEventsBeforeFirstUnlock];
      }

      v42 = accessorydEventsBeforeFirstUnlock2;
      [accessorydEventsBeforeFirstUnlock2 removeAllObjects];

      v8 = v49;
      namedCopy = v50;
      v9 = v48;
      goto LABEL_59;
    }

    if (user)
    {
      if ([(ACCAnalyticsLogger *)self user]!= 1)
      {
        goto LABEL_65;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v80 = namedCopy;
        _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] Adding event: %@ to accessoryd array", buf, 0xCu);
      }

      accessorydEventsBeforeFirstUnlock3 = [(ACCAnalyticsLogger *)self accessorydEventsBeforeFirstUnlock];
      v27 = [NSDictionary dictionaryWithObject:v9 forKey:namedCopy];
      [accessorydEventsBeforeFirstUnlock3 addObject:v27];

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_65;
      }

      accessorydEventsBeforeFirstUnlock4 = [(ACCAnalyticsLogger *)self accessorydEventsBeforeFirstUnlock];
      v29 = [accessorydEventsBeforeFirstUnlock4 count];
      *buf = 134217984;
      v80 = v29;
      v30 = "[#ACCEventLogger] accessorydEventsBeforeFirstUnlock count: %lu";
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v80 = namedCopy;
        _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] Adding event: %@ to plugin array", buf, 0xCu);
      }

      pluginEventsBeforeFirstUnlock2 = [(ACCAnalyticsLogger *)self pluginEventsBeforeFirstUnlock];
      v45 = [NSDictionary dictionaryWithObject:v9 forKey:namedCopy];
      [pluginEventsBeforeFirstUnlock2 addObject:v45];

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_65;
      }

      accessorydEventsBeforeFirstUnlock4 = [(ACCAnalyticsLogger *)self pluginEventsBeforeFirstUnlock];
      v46 = [accessorydEventsBeforeFirstUnlock4 count];
      *buf = 134217984;
      v80 = v46;
      v30 = "[#ACCEventLogger] pluginEventsBeforeFirstUnlock count: %lu";
    }

    _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, v30, buf, 0xCu);

LABEL_65:
    eventCacheLock3 = [(ACCAnalyticsLogger *)self eventCacheLock];
    [eventCacheLock3 unlock];

    goto LABEL_66;
  }

LABEL_67:
}

- (void)_logEventNamed:(id)named withAttributes:(id)attributes
{
  namedCopy = named;
  attributesCopy = attributes;
  objc_initWeak(&location, self);
  loggingQueue = [(ACCAnalyticsLogger *)self loggingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __52__ACCAnalyticsLogger__logEventNamed_withAttributes___block_invoke;
  block[3] = &unk_59438;
  objc_copyWeak(&v15, &location);
  v12 = attributesCopy;
  selfCopy = self;
  v14 = namedCopy;
  v9 = namedCopy;
  v10 = attributesCopy;
  dispatch_async(loggingQueue, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __52__ACCAnalyticsLogger__logEventNamed_withAttributes___block_invoke(uint64_t a1)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [NSDictionary dictionaryWithDictionary:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __52__ACCAnalyticsLogger__logEventNamed_withAttributes___block_invoke_107;
  block[3] = &unk_59410;
  block[4] = WeakRetained;
  v14 = *(a1 + 48);
  v5 = v3;
  v15 = v5;
  v16 = &v17;
  dispatch_sync(v4, block);
  v6 = +[NSDate date];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v7 = v18[5];
    *buf = 138412290;
    v24 = v7;
    _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_INFO, "[#ACCEventLogger] ACCEventLogging: figaroDate %@", buf, 0xCu);
  }

  if (!v18[5])
  {
    [WeakRetained resetUploadDateAndClearDBEntries:0 dueToError:1];
    goto LABEL_16;
  }

  if ([v6 compare:?] == &def_3A0E8 + 1)
  {
    v11 = 0;
    v12 = 0;
    v8 = [WeakRetained forceUploadWithError:&v11 httpStatusCode:&v12];
    v9 = v11;
    if ((v8 & 1) == 0)
    {
      if ((v12 - 400) > 0x63)
      {
        v10 = 0;
LABEL_12:
        [WeakRetained resetUploadDateAndClearDBEntries:v10 dueToError:v8 ^ 1];
        if (v9 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v24 = v9;
          _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] ACCEventLogging: failed with error: %@", buf, 0xCu);
        }

        goto LABEL_16;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __52__ACCAnalyticsLogger__logEventNamed_withAttributes___block_invoke_cold_1(&v12);
      }
    }

    v10 = 1;
    goto LABEL_12;
  }

LABEL_16:

  _Block_object_dispose(&v17, 8);
}

void __52__ACCAnalyticsLogger__logEventNamed_withAttributes___block_invoke_107(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && (*(v1 + 88) & 2) == 0 && ([*(v1 + 80) containsObject:*(a1 + 40)] & 1) == 0)
  {
    v3 = [*(a1 + 32) eventDictForEventName:*(a1 + 40) withAttributes:*(a1 + 48)];
    v4 = [*(a1 + 32) eventDictWithBlacklistedFieldsStrippedFrom:v3];
    v5 = [*(*(a1 + 32) + 8) allEvents];
    v6 = [v5 count];

    [*(*(a1 + 32) + 8) addEventDict:v4 toTable:@"all_events"];
    v7 = [*(*(a1 + 32) + 8) allEvents];
    v8 = [v7 count];

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134217984;
      v13 = v8;
      _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] database entry count: %lu", &v12, 0xCu);
    }

    if (v8 > 0x3E7 || v6 == &stru_3D8.sectname[15])
    {
      if ((v6 != &stru_3D8.sectname[15] || v8 != &stru_3D8.sectname[15]) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __52__ACCAnalyticsLogger__logEventNamed_withAttributes___block_invoke_107_cold_1(v8);
      }

      [*(*(a1 + 32) + 8) incrementWrapFailureCount];
    }

    else
    {
      [*(*(a1 + 32) + 8) incrementSuccessCount];
    }

    v9 = [*(*(a1 + 32) + 8) uploadDate];
    v10 = *(*(a1 + 56) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

- (void)resetUploadDateAndClearDBEntries:(BOOL)entries dueToError:(BOOL)error
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __66__ACCAnalyticsLogger_resetUploadDateAndClearDBEntries_dueToError___block_invoke;
  block[3] = &unk_59460;
  objc_copyWeak(&v9, &location);
  entriesCopy = entries;
  errorCopy = error;
  dispatch_sync(queue, block);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __66__ACCAnalyticsLogger_resetUploadDateAndClearDBEntries_dueToError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 40) == 1)
    {
      [WeakRetained[1] clearAllData];
    }

    if (*(a1 + 41) != 1)
    {
      v5 = [NSDate dateWithTimeIntervalSinceNow:v3[6]];
      [v3[1] setUploadDate:v5];
      goto LABEL_8;
    }

    v4 = [NSDate dateWithTimeIntervalSinceNow:v3[7]];
    [v3[1] setUploadDate:v4];

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v3[1] uploadDate];
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] ACCEventLogging: next analytic sync event: %@", &v6, 0xCu);
LABEL_8:
    }
  }
}

- (id)eventDictForEventName:(id)name withAttributes:(id)attributes
{
  if (attributes)
  {
    nameCopy = name;
    v8 = [attributes mutableCopy];
  }

  else
  {
    nameCopy2 = name;
    v8 = +[NSMutableDictionary dictionary];
  }

  v10 = v8;
  [v8 setObject:self->_figaroTopicName forKeyedSubscript:@"topic"];
  [v10 setObject:name forKeyedSubscript:@"eventType"];

  v11 = +[NSDate date];
  [v11 timeIntervalSince1970];
  v13 = [NSNumber numberWithDouble:v12 * 1000.0];
  [v10 setObject:v13 forKeyedSubscript:@"eventTime"];

  metricsBase = self->_metricsBase;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = __59__ACCAnalyticsLogger_eventDictForEventName_withAttributes___block_invoke;
  v17[3] = &unk_59488;
  v15 = v10;
  v18 = v15;
  [(NSDictionary *)metricsBase enumerateKeysAndObjectsUsingBlock:v17];

  return v15;
}

void __59__ACCAnalyticsLogger_eventDictForEventName_withAttributes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v7];

  if (!v6)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v7];
  }
}

- (id)eventDictWithBlacklistedFieldsStrippedFrom:(id)from
{
  v4 = [from mutableCopy];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_blacklistedFields;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 removeObjectForKey:{*(*(&v11 + 1) + 8 * i), v11}];
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)setDateProperty:(id)property forKey:(id)key
{
  propertyCopy = property;
  keyCopy = key;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __45__ACCAnalyticsLogger_setDateProperty_forKey___block_invoke;
  block[3] = &unk_594B0;
  block[4] = self;
  v12 = propertyCopy;
  v13 = keyCopy;
  v9 = keyCopy;
  v10 = propertyCopy;
  dispatch_sync(queue, block);
}

- (id)datePropertyForKey:(id)key
{
  keyCopy = key;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __41__ACCAnalyticsLogger_datePropertyForKey___block_invoke;
  block[3] = &unk_594D8;
  v10 = keyCopy;
  v11 = &v12;
  block[4] = self;
  v6 = keyCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __41__ACCAnalyticsLogger_datePropertyForKey___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) datePropertyForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

- (NSURL)figaroUploadURL
{
  dispatch_assert_queue_V2(self->_queue);
  figaroUploadURL = self->_figaroUploadURL;
  if (figaroUploadURL)
  {
    v4 = figaroUploadURL;
  }

  else
  {
    objc_initWeak(&location, self);
    v5 = dispatch_semaphore_create(0);
    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x3032000000;
    v27[3] = __Block_byref_object_copy_;
    v27[4] = __Block_byref_object_dispose_;
    v28 = 0;
    v6 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
    v30 = @"User-Agent";
    v7 = [NSString stringWithFormat:@"accessoryd/%s", "1.1"];
    v31 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    [v6 setHTTPAdditionalHeaders:v8];

    v9 = [NSURLSession sessionWithConfiguration:v6 delegate:self delegateQueue:0];
    v10 = self->_figaroBagURL;
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy_;
    v25 = __Block_byref_object_dispose_;
    v26 = 0;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = __37__ACCAnalyticsLogger_figaroUploadURL__block_invoke;
    v15[3] = &unk_59500;
    objc_copyWeak(&v20, &location);
    v18 = v27;
    v11 = v5;
    v16 = v11;
    v19 = &v21;
    v12 = v9;
    v17 = v12;
    v13 = [v12 dataTaskWithURL:v10 completionHandler:v15];
    [v13 resume];
    dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
    v4 = v22[5];

    objc_destroyWeak(&v20);
    _Block_object_dispose(&v21, 8);

    _Block_object_dispose(v27, 8);
    objc_destroyWeak(&location);
  }

  return v4;
}

void __37__ACCAnalyticsLogger_figaroUploadURL__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (!WeakRetained)
  {
    goto LABEL_35;
  }

  if (!v6 || v7)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a4);
    goto LABEL_27;
  }

  v9 = *(*(a1 + 48) + 8);
  obj = *(v9 + 40);
  v10 = [NSJSONSerialization JSONObjectWithData:v6 options:0 error:&obj];
  objc_storeStrong((v9 + 40), obj);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || *(*(*(a1 + 48) + 8) + 40))
  {
LABEL_26:

LABEL_27:
    if (*(*(*(a1 + 48) + 8) + 40))
    {
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
LABEL_34:
        dispatch_semaphore_signal(*(a1 + 32));
        [*(a1 + 40) invalidateAndCancel];
        goto LABEL_35;
      }

      *buf = 0;
      v28 = "[#ACCEventLogger] Unable to fetch figaro endpoint";
    }

    else
    {
      if (*(*(*(a1 + 56) + 8) + 40) || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_34;
      }

      *buf = 0;
      v28 = "[#ACCEventLogger] Malformed config payload!";
    }

    _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, v28, buf, 2u);
    goto LABEL_34;
  }

  if ((WeakRetained[11] & 8) != 0)
  {
LABEL_19:
    v21 = [v10 objectForKeyedSubscript:@"metricsBase"];
    v22 = WeakRetained[8];
    WeakRetained[8] = v21;

    v23 = [v10 objectForKeyedSubscript:@"metricsUrl"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [v23 stringByAppendingFormat:@"/2/%@", WeakRetained[3]];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v31 = v24;
        _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] got metrics endpoint: %@", buf, 0xCu);
      }

      v25 = [NSURL URLWithString:v24];
      v26 = [v25 scheme];
      v27 = [v26 isEqualToString:@"https"];

      if (v27)
      {
        objc_storeStrong((*(*(a1 + 56) + 8) + 40), v25);
      }
    }

    goto LABEL_26;
  }

  v11 = [v10 valueForKey:@"disabled"];
  if ([v11 BOOLValue])
  {
    v12 = 2;
  }

  else
  {
    v12 = 0;
  }

  *(WeakRetained + 88) = WeakRetained[11] & 0xFD | v12;

  if ((WeakRetained[11] & 2) == 0)
  {
    v13 = [v10 valueForKey:@"sendDisabled"];
    v14 = [v13 BOOLValue];

    if (!v14)
    {
      v15 = [v10 valueForKey:@"postFrequency"];
      v16 = [v15 unsignedIntegerValue];

      if (v16 >= 0x3E8)
      {
        WeakRetained[6] = v16 / 0x3E8;
      }

      v17 = [v10 objectForKeyedSubscript:@"blacklistedEvents"];
      v18 = WeakRetained[10];
      WeakRetained[10] = v17;

      v19 = [v10 objectForKeyedSubscript:@"blacklistedFields"];
      v20 = WeakRetained[9];
      WeakRetained[9] = v19;

      goto LABEL_19;
    }
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] figaro is disabled", buf, 2u);
  }

  dispatch_semaphore_signal(*(a1 + 32));

LABEL_35:
}

- (BOOL)forceUploadWithError:(id *)error httpStatusCode:(int64_t *)code
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v7 = [(ACCAnalyticsLogger *)self getLoggingJSON:0 error:error];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __58__ACCAnalyticsLogger_forceUploadWithError_httpStatusCode___block_invoke;
  block[3] = &unk_59528;
  v12 = v7;
  selfCopy = self;
  v15 = &v21;
  errorCopy = error;
  v14 = &v17;
  v9 = v7;
  dispatch_sync(queue, block);
  *code = v18[3];
  LOBYTE(code) = *(v22 + 24);

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  return code;
}

id *__58__ACCAnalyticsLogger_forceUploadWithError_httpStatusCode___block_invoke(id *result)
{
  v1 = result;
  v2 = result[4];
  v3 = 0;
  if (v2)
  {
    result = [result[5] _onQueuePostJSON:v2 error:result[8] httpStatusCode:*(result[6] + 1) + 24];
    if (result)
    {
      v3 = 1;
    }
  }

  *(*(v1[7] + 1) + 24) = v3;
  return result;
}

- (BOOL)_onQueuePostJSON:(id)n error:(id *)error httpStatusCode:(int64_t *)code
{
  nCopy = n;
  dispatch_assert_queue_V2(self->_queue);
  v8 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
  v33 = @"User-Agent";
  v9 = [NSString stringWithFormat:@"accessoryd/%s", "1.1"];
  v34 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
  [v8 setHTTPAdditionalHeaders:v10];

  v11 = [NSURLSession sessionWithConfiguration:v8 delegate:self delegateQueue:0];
  figaroUploadURL = [(ACCAnalyticsLogger *)self figaroUploadURL];
  if (figaroUploadURL)
  {
    goto LABEL_5;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] failed to get a figaro endpoint - using bag instead", buf, 2u);
  }

  figaroUploadURL = [(ACCAnalyticsLogger *)self figaroBagURL];
  if (figaroUploadURL)
  {
LABEL_5:
    v13 = objc_alloc_init(NSMutableURLRequest);
    [v13 setURL:figaroUploadURL];
    [v13 setHTTPMethod:@"POST"];
    [v13 setHTTPBody:nCopy];
    v14 = dispatch_semaphore_create(0);
    *buf = 0;
    v30 = buf;
    v31 = 0x2020000000;
    v32 = 0;
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = __60__ACCAnalyticsLogger__onQueuePostJSON_error_httpStatusCode___block_invoke;
    v20[3] = &unk_59550;
    v23 = &v25;
    v24 = buf;
    v15 = v14;
    v21 = v15;
    v22 = v11;
    v16 = [v22 dataTaskWithRequest:v13 completionHandler:v20];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] Figaro start", v19, 2u);
    }

    [v16 resume];
    dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
    *code = v26[3];
    v17 = v30[24];

    _Block_object_dispose(&v25, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v17 = 0;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] failed to get a figaro endpoint", buf, 2u);
      v17 = 0;
    }
  }

  return v17 & 1;
}

void __60__ACCAnalyticsLogger__onQueuePostJSON_error_httpStatusCode___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v9;
      v10 = "[#ACCEventLogger] Figaro event error: %@";
      v11 = 12;
LABEL_11:
      _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, v10, &v15, v11);
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v8;
    *(*(*(a1 + 48) + 8) + 24) = [v12 statusCode];
    if ([v12 statusCode] < 200 || objc_msgSend(v12, "statusCode") > 299)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 67109120;
        LODWORD(v16) = [v12 statusCode];
        v13 = "[#ACCEventLogger] Figaro error: %d";
        v14 = 8;
        goto LABEL_14;
      }
    }

    else
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15) = 0;
        v13 = "[#ACCEventLogger] Figaro success";
        v14 = 2;
LABEL_14:
        _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, v13, &v15, v14);
      }
    }

    goto LABEL_16;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15) = 0;
    v10 = "[#ACCEventLogger] Received the wrong kind of class";
    v11 = 2;
    goto LABEL_11;
  }

LABEL_16:
  dispatch_semaphore_signal(*(a1 + 32));
  [*(a1 + 40) invalidateAndCancel];
}

+ (void)addBuiltInFieldsToEvent:(id)event
{
  eventCopy = event;
  v4 = eventCopy;
  if (addBuiltInFieldsToEvent__onceToken != -1)
  {
    +[ACCAnalyticsLogger addBuiltInFieldsToEvent:];
    eventCopy = v4;
  }

  if (addBuiltInFieldsToEvent__build)
  {
    [v4 setObject:addBuiltInFieldsToEvent__build forKeyedSubscript:@"build"];
    eventCopy = v4;
  }

  if (addBuiltInFieldsToEvent__productVersion)
  {
    [v4 setObject:addBuiltInFieldsToEvent__productVersion forKeyedSubscript:@"productVersion"];
    eventCopy = v4;
  }

  if (addBuiltInFieldsToEvent__modelNumberStr)
  {
    [v4 setObject:addBuiltInFieldsToEvent__modelNumberStr forKeyedSubscript:@"modelString"];
    eventCopy = v4;
  }

  if (addBuiltInFieldsToEvent__platform)
  {
    [v4 setObject:addBuiltInFieldsToEvent__platform forKeyedSubscript:@"platform"];
    eventCopy = v4;
  }

  if (addBuiltInFieldsToEvent__productType)
  {
    [v4 setObject:addBuiltInFieldsToEvent__productType forKeyedSubscript:@"productType"];
    eventCopy = v4;
  }
}

void __46__ACCAnalyticsLogger_addBuiltInFieldsToEvent___block_invoke(id a1)
{
  v1 = _CFCopySystemVersionDictionary();
  if (v1)
  {
    v14 = v1;
    v2 = [v1 objectForKeyedSubscript:_kCFSystemVersionBuildVersionKey];
    v3 = addBuiltInFieldsToEvent__build;
    addBuiltInFieldsToEvent__build = v2;

    v4 = [v14 objectForKeyedSubscript:_kCFSystemVersionProductVersionKey];
    v5 = addBuiltInFieldsToEvent__productVersion;
    addBuiltInFieldsToEvent__productVersion = v4;

    v6 = MGCopyAnswer();
    v7 = addBuiltInFieldsToEvent__modelNumberStr;
    addBuiltInFieldsToEvent__modelNumberStr = v6;

    v8 = MGCopyAnswer();
    v9 = addBuiltInFieldsToEvent__platform;
    addBuiltInFieldsToEvent__platform = v8;

    v10 = MGCopyAnswer();
    v11 = addBuiltInFieldsToEvent__productVersion;
    addBuiltInFieldsToEvent__productVersion = v10;

    v12 = MGCopyAnswer();
    v13 = addBuiltInFieldsToEvent__productType;
    addBuiltInFieldsToEvent__productType = v12;

    v1 = v14;
  }
}

- (id)getLoggingJSON:(BOOL)n error:(id *)error
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = 0;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __43__ACCAnalyticsLogger_getLoggingJSON_error___block_invoke;
  v7[3] = &unk_59598;
  v7[5] = &v9;
  v7[6] = error;
  v7[4] = self;
  nCopy = n;
  dispatch_sync(queue, v7);
  v5 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __43__ACCAnalyticsLogger_getLoggingJSON_error___block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) tryToOpenDatabase])
  {
    v30 = [*(*(a1 + 32) + 8) allEvents];
    v28 = +[NSDate date];
    v29 = a1;
    [*(*(a1 + 32) + 8) summaryCounts];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v27 = v34 = 0u;
    v2 = [v27 objectEnumerator];
    v3 = [v2 countByEnumeratingWithState:&v31 objects:v38 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = 0;
      v6 = 0;
      v7 = *v32;
      do
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v32 != v7)
          {
            objc_enumerationMutation(v2);
          }

          v9 = *(*(&v31 + 1) + 8 * i);
          v10 = [v9 objectForKeyedSubscript:@"success_count"];
          v6 += [v10 integerValue];

          v11 = [v9 objectForKeyedSubscript:@"wrap_failure_count"];
          v5 += [v11 integerValue];
        }

        v4 = [v2 countByEnumeratingWithState:&v31 objects:v38 count:16];
      }

      while (v4);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }

    v12 = objc_alloc_init(NSMutableDictionary);
    v13 = v12;
    v14 = *(*(v29 + 32) + 24);
    if (v14)
    {
      [v12 setObject:v14 forKeyedSubscript:@"topic"];
    }

    else
    {
      v15 = +[NSNull null];
      [v13 setObject:v15 forKeyedSubscript:@"topic"];
    }

    [v28 timeIntervalSince1970];
    v17 = [NSNumber numberWithDouble:v16 * 1000.0];
    [v13 setObject:v17 forKeyedSubscript:@"eventTime"];

    [v13 setObject:@"accessoryHealthSummary" forKeyedSubscript:@"eventType"];
    v18 = [NSNumber numberWithInteger:v6];
    [v13 setObject:v18 forKeyedSubscript:@"success_count"];

    v19 = [NSNumber numberWithInteger:v5];
    [v13 setObject:v19 forKeyedSubscript:@"wrap_failure_count"];

    [ACCAnalyticsLogger addBuiltInFieldsToEvent:v13];
    v20 = [v30 mutableCopy];
    [v20 addObject:v13];
    v36[0] = @"postTime";
    [v28 timeIntervalSince1970];
    v22 = [NSNumber numberWithDouble:v21 * 1000.0];
    v36[1] = @"events";
    v37[0] = v22;
    v37[1] = v20;
    v23 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:2];

    v24 = [NSJSONSerialization dataWithJSONObject:v23 options:*(v29 + 56) error:*(v29 + 48)];
    v25 = *(*(v29 + 40) + 8);
    v26 = *(v25 + 40);
    *(v25 + 40) = v24;
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] can't get logging JSON because database is not openable", buf, 2u);
  }
}

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  sessionCopy = session;
  challengeCopy = challenge;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    [ACCAnalyticsLogger URLSession:didReceiveChallenge:completionHandler:];
  }

  v11 = handlerCopy;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] Figaro challenge", buf, 2u);
  }

  result = kSecTrustResultInvalid;
  if ([challengeCopy previousFailureCount] >= 1)
  {
    goto LABEL_5;
  }

  protectionSpace = [challengeCopy protectionSpace];
  authenticationMethod = [protectionSpace authenticationMethod];
  v14 = [authenticationMethod isEqualToString:NSURLAuthenticationMethodServerTrust];

  if (!v14)
  {
    v11[2](v11, 1, 0);
    goto LABEL_12;
  }

  protectionSpace2 = [challengeCopy protectionSpace];
  serverTrust = [protectionSpace2 serverTrust];

  SecTrustEvaluate(serverTrust, &result);
  if (*(self + 88))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] Force Accepting Figaro Credential", v18, 2u);
    }

    goto LABEL_15;
  }

  if (result == kSecTrustResultProceed || result == kSecTrustResultUnspecified)
  {
LABEL_15:
    v17 = [NSURLCredential credentialForTrust:serverTrust];
    (v11)[2](v11, 0, v17);

    goto LABEL_12;
  }

LABEL_5:
  v11[2](v11, 2, 0);
LABEL_12:
}

- (void)setIgnoreServerDisablingMessages:(BOOL)messages
{
  if (messages)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 88) = *(self + 88) & 0xF7 | v3;
}

void __52__ACCAnalyticsLogger__logEventNamed_withAttributes___block_invoke_cold_1(uint64_t *a1)
{
  v1 = *a1;
  v2 = 134217984;
  v3 = v1;
  _os_log_error_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_ERROR, "[#ACCEventLogger] ACCEventLogging: error %lu forced events to be dropped", &v2, 0xCu);
}

void __52__ACCAnalyticsLogger__logEventNamed_withAttributes___block_invoke_107_cold_1(uint64_t a1)
{
  v1 = 134218240;
  v2 = a1;
  v3 = 1024;
  v4 = 999;
  _os_log_error_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_ERROR, "[#ACCEventLogger] database count: %lu greater than max count allowed (%d)", &v1, 0x12u);
}

@end