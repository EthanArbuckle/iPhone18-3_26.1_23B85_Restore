@interface SDClient
+ (id)clientForConnection:(id)connection;
+ (void)initialize;
+ (void)registerMessageHandlersWithServer:(id)server;
- (void)_beginCrashHandlingForStore:(id)store andQuery:(id)query;
- (void)_endCrashHandling;
- (void)activateForConnection:(id)connection message:(id)message;
- (void)addAndStartQuery:(id)query;
- (void)cancelQueryWithExternalID:(unsigned int)d;
- (void)clearInputForConnection:(id)connection;
- (void)deactivate;
- (void)dealloc;
- (void)death;
- (void)removeActiveQuery:(id)query;
- (void)setActivation:(id)activation;
@end

@implementation SDClient

- (void)setActivation:(id)activation
{
  activationCopy = activation;
  obj = self;
  objc_sync_enter(obj);
  currentActivation = obj->_currentActivation;
  if (currentActivation)
  {
    [(SPXPCMessage *)currentActivation sendReply:&__NSDictionary0__struct];
  }

  v6 = obj->_currentActivation;
  obj->_currentActivation = activationCopy;

  objc_sync_exit(obj);
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.searchd"];
    byte_1000A81F0 = [v2 BOOLForKey:@"enableDebug"];
  }
}

- (void)_beginCrashHandlingForStore:(id)store andQuery:(id)query
{
  queryCopy = query;
  storeCopy = store;
  qword_1000A81F8 = signal(10, sub_1000055BC);
  qword_1000A8200 = signal(6, sub_1000055BC);
  qword_1000A8208 = signal(11, sub_1000055BC);
  v7 = objc_opt_class();

  queryContext = [queryCopy queryContext];

  searchString = [queryContext searchString];
  v11 = [NSString stringWithFormat:@"error: crash using datastore %@ with search string '%@'\n", v7, searchString];

  v10 = v11;
  asprintf(&qword_1000A8210, "%s", [v11 UTF8String]);
}

- (void)_endCrashHandling
{
  signal(10, qword_1000A81F8);
  signal(6, qword_1000A8200);
  signal(11, qword_1000A8208);
  free(qword_1000A8210);
  qword_1000A8210 = 0;
}

- (void)removeActiveQuery:(id)query
{
  queryCopy = query;
  v4 = self->_queriesByExternId;
  objc_sync_enter(v4);
  queriesByExternId = self->_queriesByExternId;
  v6 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [queryCopy externalID]);
  [(NSMutableDictionary *)queriesByExternId removeObjectForKey:v6];

  objc_sync_exit(v4);
}

- (void)addAndStartQuery:(id)query
{
  queryCopy = query;
  v4 = si_tracing_current_span();
  v5 = *(v4 + 16);
  v144 = *v4;
  v145 = v5;
  v146 = *(v4 + 32);
  v113 = v4;
  v6 = *v4;
  spanid = si_tracing_calc_next_spanid();
  v8 = *(v113 + 8);
  v9 = *(v113 + 24);
  *v113 = v6;
  *(v113 + 8) = spanid;
  *(v113 + 16) = v8;
  *(v113 + 28) = 102;
  *(v113 + 32) = "[SDClient addAndStartQuery:]";
  si_tracing_log_span_begin();
  +[SDController readyForQueries];
  if ((byte_1000A8218 & 1) == 0)
  {
    byte_1000A8218 = 1;
    +[SDSearchQuery prepareCacheForSearchContinuation];
  }

  [queryCopy start];
  queryContext = [queryCopy queryContext];
  searchEntities = [queryContext searchEntities];
  if ([searchEntities count])
  {
    searchEntities2 = [queryContext searchEntities];
    lastObject = [searchEntities2 lastObject];
    currentSearchString = [lastObject currentSearchString];
  }

  else
  {
    currentSearchString = [queryContext searchString];
  }

  v13 = SPLogForSPLogCategoryDefault();
  v14 = v13;
  if (gSPLogDebugAsDefault)
  {
    v15 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v15 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v13, v15))
  {
    searchDomains = [queryContext searchDomains];
    *buf = 138412546;
    v152 = currentSearchString;
    v153 = 2112;
    v154 = searchDomains;
    _os_log_impl(&_mh_execute_header, v14, v15, "#query Starting query for %@ on domains %@", buf, 0x16u);
  }

  if (!self->_queriesByExternId)
  {
    v17 = objc_alloc_init(NSMutableDictionary);
    queriesByExternId = self->_queriesByExternId;
    self->_queriesByExternId = v17;
  }

  v19 = SPLogForSPLogCategoryDefault();
  v20 = v19;
  if (gSPLogDebugAsDefault)
  {
    v21 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v21 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v19, v21))
  {
    searchDomains2 = [queryContext searchDomains];
    *buf = 138412546;
    v152 = currentSearchString;
    v153 = 2112;
    v154 = searchDomains2;
    _os_log_impl(&_mh_execute_header, v20, v21, "#query Starting query '%@' on domains:%@", buf, 0x16u);
  }

  v23 = self->_queriesByExternId;
  objc_sync_enter(v23);
  v24 = self->_queriesByExternId;
  v25 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [queryCopy externalID]);
  [(NSMutableDictionary *)v24 setObject:queryCopy forKey:v25];

  objc_sync_exit(v23);
  connection = [queryCopy connection];
  bundleID = [connection bundleID];

  v27 = [bundleID isEqual:SPSpotlightAppBundleId];
  v28 = &OBJC_IVAR___SPParsecDatastore__sessionStartTime;
  if (v27)
  {
    if ([currentSearchString length])
    {
      if (-[NSString length](self->_lastQuery, "length") && (([currentSearchString hasPrefix:self->_lastQuery] & 1) != 0 || -[NSString hasPrefix:](self->_lastQuery, "hasPrefix:", currentSearchString)))
      {
        v29 = [currentSearchString length];
        v30 = [(NSString *)self->_lastQuery length];
        v31 = &v29[-v30];
        if (&v29[-v30] < 0)
        {
          v31 = (v30 - v29);
        }

        v133 = _NSConcreteStackBlock;
        v134 = 3221225472;
        v135 = sub_100006804;
        v136 = &unk_100091F30;
        v137 = v31;
        AnalyticsSendEventLazy();
      }

      else
      {
        lastQuery = self->_lastQuery;
        if (lastQuery)
        {
          v33 = [(NSString *)lastQuery commonPrefixWithString:currentSearchString options:2];
        }

        else
        {
          v33 = &stru_100094040;
        }

        v138 = _NSConcreteStackBlock;
        v139 = 3221225472;
        v140 = sub_100006730;
        v141 = &unk_100091F10;
        v142 = currentSearchString;
        v143 = v33;
        AnalyticsSendEventLazy();
      }
    }

    v34 = [currentSearchString copy];
    v35 = self->_lastQuery;
    self->_lastQuery = v34;

    v28 = &OBJC_IVAR___SPParsecDatastore__sessionStartTime;
  }

  datastores = [v28 + 108 datastores];
  v37 = [datastores count] == 0;

  if (!v37)
  {
    v38 = objc_alloc_init(NSMutableOrderedSet);
    if ([currentSearchString length] || (objc_msgSend(queryContext, "searchEntities"), v39 = objc_claimAutoreleasedReturnValue(), v40 = objc_msgSend(v39, "count") == 0, v39, !v40))
    {
      if ([queryContext isSearchToolClient])
      {
        searchString = [queryContext searchString];
        v42 = [SPSearchQueryContext normalizeSearchString:searchString queryContext:queryContext];
        [queryContext setSearchString:v42];

        v43 = [SDController datastoreForDomain:1];
        if (v43)
        {
          [v38 addObject:v43];
        }
      }

      else
      {
        searchDomains3 = [queryContext searchDomains];
        v47 = [searchDomains3 arrayByAddingObject:&off_100098978];

        v43 = [v47 arrayByAddingObject:&off_100098990];

        v149 = @"ExtendedDeviceLockState";
        v150 = kCFBooleanTrue;
        v110 = [NSDictionary dictionaryWithObjects:&v150 forKeys:&v149 count:1];
        if ([queryContext deviceAuthenticationState])
        {
          v48 = [SDController datastoreForDomain:1];
          v49 = [SDController datastoreForDomain:2];
          v50 = [SDController datastoreForDomain:7];
          v115 = [SDController datastoreForDomain:3];
          v111 = [SDController datastoreForDomain:6];
          v109 = [SDController datastoreForDomain:8];
          v51 = [SDController datastoreForDomain:9];
          v52 = [SDController datastoreForDomain:10];
          v53 = [SDController datastoreForDomain:11];
          v54 = v53;
          v55 = v50;
          if (v49 || v115 || v48 || v111 || v51 || v52 || v53)
          {
            if (v49)
            {
              v56 = SPGetDisabledDomains();
              v57 = [v56 containsObject:&off_1000989A8];

              if ((v57 & 1) == 0)
              {
                [v38 addObject:v49];
              }
            }

            if (v115)
            {
              [v38 addObject:v115];
            }

            if (v48)
            {
              [v38 addObject:v48];
            }

            if (v111)
            {
              [v38 addObject:v111];
            }

            if (v109)
            {
              [v38 addObject:v109];
            }

            if (v55)
            {
              [v38 addObject:v55];
            }

            if (v51)
            {
              [v38 addObject:v51];
            }

            if (v52)
            {
              [v38 addObject:v52];
            }

            if (v54)
            {
              [v38 addObject:v54];
            }
          }
        }

        else
        {
          if ([v43 containsObject:&off_100098978])
          {
            v58 = [SDController datastoreForDomain:10];
            if (v58)
            {
              [v38 addObject:v58];
            }
          }

          if ([v43 containsObject:&off_1000989C0])
          {
            v59 = [SDController datastoreForDomain:1];
            if (v59)
            {
              [v38 addObject:v59];
            }
          }

          if ([v43 containsObject:&off_1000989D8])
          {
            v60 = [SDController datastoreForDomain:2];
            v61 = [SDController datastoreForDomain:7];
            if (v60)
            {
              v62 = SPGetDisabledDomains();
              v63 = [v62 containsObject:&off_1000989A8];

              if ((v63 & 1) == 0)
              {
                [v38 addObject:v60];
              }
            }

            if (v61)
            {
              [v38 addObject:v61];
            }
          }

          if (v43)
          {
            v64 = [v43 arrayByAddingObject:&off_1000989F0];
          }

          else
          {
            v64 = 0;
          }

          v131 = 0u;
          v132 = 0u;
          v129 = 0u;
          v130 = 0u;
          v48 = v64;
          v65 = [v48 countByEnumeratingWithState:&v129 objects:v148 count:16];
          if (v65)
          {
            v66 = *v130;
            do
            {
              for (i = 0; i != v65; i = i + 1)
              {
                if (*v130 != v66)
                {
                  objc_enumerationMutation(v48);
                }

                v68 = *(*(&v129 + 1) + 8 * i);
                intValue = [v68 intValue];
                v70 = [SDController datastoreForDomain:intValue];
                v71 = v70;
                if (intValue == 6)
                {
                  [queryCopy addDelayedStartStore:v70];
                }

                else if (v70)
                {
                  if (([v38 containsObject:v70] & 1) == 0)
                  {
                    [v38 addObject:v71];
                  }
                }

                else
                {
                  v72 = SPLogForSPLogCategoryQuery();
                  v73 = v72;
                  if (gSPLogDebugAsDefault)
                  {
                    v74 = OS_LOG_TYPE_DEFAULT;
                  }

                  else
                  {
                    v74 = OS_LOG_TYPE_DEBUG;
                  }

                  if (os_log_type_enabled(v72, v74))
                  {
                    *buf = 138412290;
                    v152 = v68;
                    _os_log_impl(&_mh_execute_header, v73, v74, "#query Missing datastore for domain %@!", buf, 0xCu);
                  }
                }
              }

              v65 = [v48 countByEnumeratingWithState:&v129 objects:v148 count:16];
            }

            while (v65);
          }

          v43 = v48;
        }
      }
    }

    if (![v38 count])
    {
      v83 = SPLogForSPLogCategoryQuery();
      v84 = gSPLogInfoAsDefault;
      if (os_log_type_enabled(v83, ((gSPLogInfoAsDefault & 1) == 0)))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v83, ((v84 & 1) == 0), "#query No stores for query!", buf, 2u);
      }

      [queryCopy sendQueryCompleted];
      goto LABEL_146;
    }

    v75 = objc_alloc_init(NSMutableSet);
    if ([queryCopy infinitePatience])
    {
      v76 = SPLogForSPLogCategoryDefault();
      v77 = v76;
      if (gSPLogDebugAsDefault)
      {
        v78 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        v78 = OS_LOG_TYPE_DEBUG;
      }

      v79 = 0.0;
      if (!os_log_type_enabled(v76, v78))
      {
        goto LABEL_140;
      }

      *buf = 0;
      v80 = "Query with infinite patience";
      v81 = v77;
      v82 = v78;
    }

    else
    {
      v127 = 0u;
      v128 = 0u;
      v125 = 0u;
      v126 = 0u;
      v85 = v38;
      v86 = [v85 countByEnumeratingWithState:&v125 objects:v147 count:16];
      if (v86)
      {
        v87 = *v126;
        v79 = 0.0;
        do
        {
          for (j = 0; j != v86; j = j + 1)
          {
            if (*v126 != v87)
            {
              objc_enumerationMutation(v85);
            }

            v89 = *(*(&v125 + 1) + 8 * j);
            if (objc_opt_respondsToSelector())
            {
              [v89 timeOut:{objc_msgSend(v89, "domain") == 7}];
              v91 = v90;
              if (v90 > 0.0)
              {
                [v75 addObject:v89];
                if (v91 >= v79)
                {
                  v92 = v79;
                }

                else
                {
                  v92 = v91;
                }

                if (v79 <= 0.0)
                {
                  v79 = v91;
                }

                else
                {
                  v79 = v92;
                }
              }
            }
          }

          v86 = [v85 countByEnumeratingWithState:&v125 objects:v147 count:16];
        }

        while (v86);
      }

      else
      {
        v79 = 0.0;
      }

      v93 = SPLogForSPLogCategoryDefault();
      v77 = v93;
      if (gSPLogDebugAsDefault)
      {
        v94 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        v94 = OS_LOG_TYPE_DEBUG;
      }

      if (!os_log_type_enabled(v93, v94))
      {
        goto LABEL_140;
      }

      *buf = 0;
      v80 = "Query with timeout";
      v81 = v77;
      v82 = v94;
    }

    _os_log_impl(&_mh_execute_header, v81, v82, v80, buf, 2u);
LABEL_140:

    v95 = SPLogForSPLogCategoryDefault();
    v96 = v95;
    if (gSPLogDebugAsDefault)
    {
      v97 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v97 = OS_LOG_TYPE_DEBUG;
    }

    if (os_log_type_enabled(v95, v97))
    {
      v98 = qos_class_self();
      *buf = 67109120;
      LODWORD(v152) = v98;
      _os_log_impl(&_mh_execute_header, v96, v97, "QOS addAndStartQuery: %d", buf, 8u);
    }

    v99 = +[SDController workQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000068B8;
    block[3] = &unk_100091F80;
    v119 = queryCopy;
    v120 = bundleID;
    v124 = v79;
    v121 = v38;
    v100 = v75;
    v122 = v100;
    v123 = currentSearchString;
    v101 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, block);
    tracing_dispatch_async();

LABEL_146:
    goto LABEL_147;
  }

  v44 = SPLogForSPLogCategoryDefault();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
  {
    sub_100062298(v44);
  }

  v45 = [NSError errorWithDomain:@"SearchError" code:1 userInfo:0];
  [queryCopy sendError:v45];

  [queryCopy sendQueryCompleted];
LABEL_147:

  v102 = *v113;
  v103 = *(v113 + 8);
  v104 = *(v113 + 16);
  v105 = *(v113 + 24);
  v106 = *(v113 + 28);
  v107 = *(v113 + 32);
  si_tracing_log_span_end();
  v108 = v145;
  *v113 = v144;
  *(v113 + 16) = v108;
  *(v113 + 32) = v146;
}

- (void)clearInputForConnection:(id)connection
{
  v3 = +[SDController workQueue];
  md_tracing_dispatch_async_propagating();
}

- (void)cancelQueryWithExternalID:(unsigned int)d
{
  v3 = +[SDController workQueue];
  md_tracing_dispatch_async_propagating();
}

- (void)activateForConnection:(id)connection message:(id)message
{
  connectionCopy = connection;
  messageCopy = message;
  v8 = +[SDLockHandler sharedLockHandler];
  [v8 checkMigrationComplete];

  if (messageCopy)
  {
    goto LABEL_2;
  }

  if (!self->_active)
  {
    bundleID = [connectionCopy bundleID];
    v12 = [bundleID isEqualToString:@"com.apple.Spotlight"];

    if (v12)
    {
      v13 = SPLogForSPLogCategoryDefault();
      v14 = gSPLogInfoAsDefault;
      if (os_log_type_enabled(v13, ((gSPLogInfoAsDefault & 1) == 0)))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, ((v14 & 1) == 0), "Activate Spotlight", buf, 2u);
      }

      messageCopy = [[SPXPCMessage alloc] initWithName:@"Activate" connection:connectionCopy];
      if (messageCopy)
      {
LABEL_2:
        [(SDClient *)self setActivation:messageCopy];
        if (self->_active)
        {
          v9 = SPLogForSPLogCategoryDefault();
          v10 = gSPLogInfoAsDefault;
          if (os_log_type_enabled(v9, ((gSPLogInfoAsDefault & 1) == 0)))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v9, ((v10 & 1) == 0), "already active, ignoring", buf, 2u);
          }
        }

        else
        {
          v9 = +[SDController workQueue];
          self->_active = 1;
          kdebug_trace();
          bundleID2 = [connectionCopy bundleID];
          v15 = SPLogForSPLogCategoryDefault();
          v16 = gSPLogInfoAsDefault;
          if (os_log_type_enabled(v15, ((gSPLogInfoAsDefault & 1) == 0)))
          {
            *buf = 138412290;
            v45 = bundleID2;
            _os_log_impl(&_mh_execute_header, v15, ((v16 & 1) == 0), "Activate from %@", buf, 0xCu);
          }

          if ([bundleID2 isEqualToString:@"com.apple.springboard"])
          {
            v17 = SPLogForSPLogCategoryDefault();
            v18 = gSPLogInfoAsDefault;
            if (os_log_type_enabled(v17, ((gSPLogInfoAsDefault & 1) == 0)))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v17, ((v18 & 1) == 0), "Activate from SpringBoard", buf, 2u);
            }

            if (qword_1000A8228 != -1)
            {
              sub_1000622DC();
            }

            v19 = [messageCopy rootObjectOfClasses:qword_1000A8220];
            self->_isSpringBoard = 1;
            v20 = SPLogForSPLogCategoryDefault();
            v21 = v20;
            if (gSPLogDebugAsDefault)
            {
              v22 = OS_LOG_TYPE_DEFAULT;
            }

            else
            {
              v22 = OS_LOG_TYPE_DEBUG;
            }

            if (os_log_type_enabled(v20, v22))
            {
              v38 = [v19 count];
              v23 = [v19 objectForKey:@"apps"];
              v37 = [v23 count];
              v24 = [v19 objectForKey:@"apps"];
              v25 = [v19 objectForKey:@"hiddenApps"];
              *buf = 138413314;
              v45 = messageCopy;
              v46 = 2048;
              v47 = v38;
              v48 = 2048;
              v49 = v37;
              v50 = 2112;
              v51 = v24;
              v52 = 2112;
              v53 = v25;
              _os_log_impl(&_mh_execute_header, v21, v22, "Received apps: %@ %ld %ld %@ %@", buf, 0x34u);
            }

            if (v19)
            {
              v26 = [v19 objectForKey:@"apps"];
              v27 = [v19 objectForKey:@"hiddenApps"];
              SPFastApplicationsSet();
            }

            v28 = +[SDAppUninstallMonitor sharedInstance];
            [v28 ready];

            objc_initWeak(buf, self);
            v29 = dispatch_time(0, 2000000000);
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_1000079DC;
            block[3] = &unk_100092010;
            objc_copyWeak(&v43, buf);
            dispatch_after(v29, v9, block);
            objc_destroyWeak(&v43);
            objc_destroyWeak(buf);
          }

          else
          {
            SSScreenTimeStatusClearCache();
            +[SPCoreSpotlightIndexer preheat];
            byte_1000A8218 = 1;
            v30 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, &stru_100092030);
            tracing_dispatch_async();

            self->_didTimerFire = 0;
            v31 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v9);
            resumeBackgroundActivityTimer = self->_resumeBackgroundActivityTimer;
            self->_resumeBackgroundActivityTimer = v31;

            objc_initWeak(buf, self);
            v33 = self->_resumeBackgroundActivityTimer;
            v34 = dispatch_time(0, 180000000000);
            dispatch_source_set_timer(v33, v34, 0xFFFFFFFFFFFFFFFFLL, 0);
            v35 = self->_resumeBackgroundActivityTimer;
            handler[0] = _NSConcreteStackBlock;
            handler[1] = 3221225472;
            handler[2] = sub_100007BAC;
            handler[3] = &unk_100092010;
            objc_copyWeak(&v41, buf);
            dispatch_source_set_event_handler(v35, handler);
            dispatch_resume(self->_resumeBackgroundActivityTimer);
            v36 = SPGetDisabledDomains();
            [v36 containsObject:&off_1000989A8];

            AnalyticsSendEventLazy();
            objc_destroyWeak(&v41);
            objc_destroyWeak(buf);
          }
        }
      }
    }
  }
}

- (void)deactivate
{
  if (!self->_isSpringBoard)
  {
    resumeBackgroundActivityTimer = self->_resumeBackgroundActivityTimer;
    if (resumeBackgroundActivityTimer)
    {
      dispatch_source_cancel(resumeBackgroundActivityTimer);
    }

    if (self->_active)
    {
      if (!_os_feature_enabled_impl() || (_os_feature_enabled_impl() & 1) == 0)
      {
        v4 = +[SDController workQueue];
        tracing_dispatch_async();
      }

      if (!self->_didTimerFire)
      {
        v5 = +[SDController workQueue];
        v6 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, &stru_100092090);
        tracing_dispatch_async();
      }
    }

    v7 = +[SDController backgroundWorkQueue];
    tracing_dispatch_async();

    +[SPCoreSpotlightIndexer deactivate];
    +[SSRankingManager deactivate];
  }

  lastQuery = self->_lastQuery;
  self->_lastQuery = 0;

  self->_active = 0;

  [(SDClient *)self setActivation:0];
}

- (void)death
{
  v3 = +[SDFeedbackInterceptor sharedInstance];
  [v3 cleanup];

  [(SDClient *)self deactivate];
}

+ (id)clientForConnection:(id)connection
{
  connectionCopy = connection;
  context = [connectionCopy context];

  if (!context)
  {
    v5 = objc_alloc_init(SDClient);
    [connectionCopy setContext:v5];
  }

  context2 = [connectionCopy context];

  return context2;
}

+ (void)registerMessageHandlersWithServer:(id)server
{
  serverCopy = server;
  [serverCopy setHandlerForMessageName:@"OpenQuery" handler:&stru_1000920F0];
  [serverCopy setHandlerForMessageName:@"CloseQuery" handler:&stru_100092110];
  [serverCopy setHandlerForMessageName:@"ClearInput" handler:&stru_100092130];
  [serverCopy setHandlerForMessageName:@"RequestFTE" handler:&stru_100092150];
  [serverCopy setHandlerForMessageName:@"Activate" handler:&stru_1000921E8];
  [serverCopy setHandlerForMessageName:@"Deactivate" handler:&stru_100092208];
  [serverCopy setHandlerForMessageName:@"Preheat" handler:&stru_100092228];
}

- (void)dealloc
{
  [(SDClient *)self deactivate];
  v3 = SPLogForSPLogCategoryDefault();
  v4 = v3;
  if (gSPLogDebugAsDefault)
  {
    v5 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v5 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v3, v5))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "SDClient dealloc", buf, 2u);
  }

  v6.receiver = self;
  v6.super_class = SDClient;
  [(SDClient *)&v6 dealloc];
}

@end