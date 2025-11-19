@interface SPParsecDatastore
+ (void)initialize;
- (SPParsecDatastore)init;
- (SSPlistDataReader)cannedCEPValues;
- (SSPlistDataReader)cepDictionary;
- (double)computeTimeout:(double)a3;
- (double)searchTimeOut;
- (double)suggestionTimeOut;
- (double)timeOut:(BOOL)a3;
- (id)createResultObject;
- (id)feedbackListeners;
- (id)performQuery:(id)a3;
- (void)activate;
- (void)checkParsecState;
- (void)deactivate;
- (void)getFTEStringsWithReply:(id)a3;
- (void)preheat;
- (void)sessionReceivedBagWithEnabledDomains:(id)a3;
- (void)setParsecFeedbackAllowed:(BOOL)a3;
- (void)setParsecState:(BOOL)a3;
- (void)setupSearchSession;
- (void)updateCorrectionDict:(id)a3;
- (void)updateParsecBeyondTimeoutCount:(BOOL)a3;
@end

@implementation SPParsecDatastore

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    SPLogInit();
    v3 = [NSBundle bundleForClass:a1];
    v4 = [v3 infoDictionary];
    v8 = [v4 objectForKeyedSubscript:@"CFBundleVersion"];

    v5 = [NSString stringWithFormat:@"Spotlight/%@", v8];
    v6 = qword_1000A8930;
    qword_1000A8930 = v5;

    v7 = PRSRankingSDEnabledFlagState();
    if ((v7 & 4) != 0)
    {
      byte_1000A8928 = 1;
    }

    if ((v7 & 8) != 0)
    {
      byte_1000A8938 = 1;
    }
  }
}

- (void)updateParsecBeyondTimeoutCount:(BOOL)a3
{
  ++self->_parsecBeyondTimeoutRequestCount;
  if (a3)
  {
    self->_withinThreshold = 1;
  }
}

- (SPParsecDatastore)init
{
  v12.receiver = self;
  v12.super_class = SPParsecDatastore;
  v2 = [(SPParsecDatastore *)&v12 init];
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INTERACTIVE, 0);

  v5 = dispatch_queue_create(0, v4);
  queue = v2->_queue;
  v2->_queue = v5;

  v2->_sessionStartTime = CFAbsoluteTimeGetCurrent();
  v7 = +[SDNetworkQualityInquiry sharedInstance];
  networkConditions = v2->_networkConditions;
  v2->_networkConditions = v7;

  v9 = objc_opt_new();
  mapsParsecRanker = v2->_mapsParsecRanker;
  v2->_mapsParsecRanker = v9;

  [(SPParsecDatastore *)v2 checkParsecState];
  return v2;
}

- (id)createResultObject
{
  v2 = objc_alloc_init(SFSearchResult_Compatibility);

  return v2;
}

- (void)setupSearchSession
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_parsecEnabled && !obj->_session && (v2 = [[PRSSearchSession alloc] initWithClient:obj clientQueue:obj->_queue], session = obj->_session, obj->_session = v2, session, (v4 = obj->_session) != 0))
  {
    v5 = [(PRSSearchSession *)v4 listener];
    [(SPParsecFeedbackProxy *)obj->_listener setListener:v5];

    [(PRSSearchSession *)obj->_session setParsecFeedbackAllowed:byte_1000A8939];
    objc_sync_exit(obj);

    +[SPFeedbackSender updateFeedbackListeners];
  }

  else
  {
    objc_sync_exit(obj);
  }
}

- (void)checkParsecState
{
  v5 = SPGetDisabledDomainSet();
  self->_parsecEnabled = [v5 containsObject:@"DOMAIN_PARSEC"] ^ 1;
  v3 = +[MCProfileConnection sharedConnection];
  v4 = [v3 isSpotlightInternetResultsAllowed];

  if ((v4 & 1) == 0)
  {
    self->_parsecEnabled = 0;
  }
}

- (id)performQuery:(id)a3
{
  v4 = a3;
  v5 = si_tracing_current_span();
  v46 = *v5;
  v48 = *(v5 + 16);
  v50 = *(v5 + 32);
  v6 = *v5;
  spanid = si_tracing_calc_next_spanid();
  v8 = *(v5 + 8);
  v9 = *(v5 + 24);
  *v5 = v6;
  *(v5 + 8) = spanid;
  *(v5 + 16) = v8;
  *(v5 + 28) = 102;
  *(v5 + 32) = "[SPParsecDatastore performQuery:]";
  si_tracing_log_span_begin();
  if (([v4 isPeopleSearch] & 1) != 0 || objc_msgSend(v4, "isScopedAppSearch"))
  {
    if ([v4 isPeopleSearch])
    {
      v10 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
      v11 = "people";
    }

    else
    {
      v10 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
      v11 = "appscoped";
    }

    sub_100017E38(v4, v11, "parsec", v10);
    v12 = 0;
    goto LABEL_40;
  }

  [v4 externalID];
  kdebug_trace();
  v13 = SPLogForSPLogCategoryTelemetry();
  v14 = [v4 externalID];
  if (v14 && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, v14, "parsecLatency", " enableTelemetry=YES ", buf, 2u);
  }

  v15 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v16 = SPLogForSPLogCategoryDefault();
  v17 = v16;
  if (gSPLogDebugAsDefault)
  {
    v18 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v18 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v16, v18))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "#query parsec start", buf, 2u);
  }

  if (!atomic_fetch_add(dword_1000A8900, 1u))
  {
    [(SPParsecDatastore *)self preheat];
  }

  v19 = [v4 queryContext];
  v20 = PRSLogCategoryDefault();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = objc_opt_class();
    v22 = [v19 searchString];
    *buf = 138412546;
    v53 = v21;
    v54 = 2112;
    v55 = v22;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%@ Perform query %@", buf, 0x16u);
  }

  v23 = [v19 disabledDomains];
  v24 = [v23 containsObject:&off_100098AF8];

  if (v24)
  {
    v25 = 0;
  }

  else
  {
    v25 = [[SPParsecQueryTask alloc] initWithStore:self resultPipe:v4 queue:self->_queue visibleApps:self->_setOfVisibleApps hiddenApps:self->_setOfHiddenApps];
    [(SPParsecQueryTask *)v25 setStartTime:v15];
    pthread_mutex_lock(&v25->_mutex);
    if (byte_1000A8938 == 1)
    {
      pthread_mutex_unlock(&v25->_mutex);
      v42 = [v19 searchString];
      v43 = [(SPParsecQueryTask *)v25 unarchiveWithQuery:v42];
      v44 = qword_1000A8940;
      qword_1000A8940 = v43;

      v45 = [qword_1000A8940 query];
      [(SPParsecQueryTask *)v25 setParsecQuery:v45];

      [(SPParsecQueryTask *)v25 resumeWithArchive:qword_1000A8940];
      goto LABEL_39;
    }

    if (self->_parsecEnabled)
    {
      if (!self->_session)
      {
        [(SPParsecDatastore *)self setupSearchSession];
        if (!self->_session)
        {
          sub_100017E38(v4, "failed", "parsec", v15);
        }
      }

      v26 = [v19 searchEntities];
      if ([v26 count])
      {
        v27 = [v19 searchEntities];
        v28 = [v27 lastObject];
        v29 = [v28 currentSearchString];
      }

      else
      {
        v29 = [v19 searchString];
      }

      v30 = -[PRSSearchSession queryTaskWithString:externalId:handler:queryContext:queryIdent:](self->_session, "queryTaskWithString:externalId:handler:queryContext:queryIdent:", v29, [v4 externalID], v25, v19, objc_msgSend(v4, "queryIdent"));
      if (v30)
      {
        v31 = SPLogForSPLogCategoryDefault();
        v32 = v31;
        if (gSPLogDebugAsDefault)
        {
          v33 = OS_LOG_TYPE_DEFAULT;
        }

        else
        {
          v33 = OS_LOG_TYPE_DEBUG;
        }

        if (os_log_type_enabled(v31, v33))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v32, v33, "#query parsec start - parsec", buf, 2u);
        }

        [v30 setParsecState:self->_parsecEnabled];
        [(SPParsecQueryTask *)v25 setParsecQuery:v30];
        [v30 setRepresentedObject:v4];
      }
    }

    pthread_mutex_unlock(&v25->_mutex);
  }

  v34 = [(SPParsecDatastore *)self session];
  [v34 searchRenderTimeout];
  [(SPParsecQueryTask *)v25 resumeWithTimeout:?];

LABEL_39:
  v12 = v25;

LABEL_40:
  v35 = *v5;
  v36 = *(v5 + 8);
  v37 = *(v5 + 16);
  v38 = *(v5 + 24);
  v39 = *(v5 + 28);
  v40 = *(v5 + 32);
  si_tracing_log_span_end();
  *v5 = v47;
  *(v5 + 16) = v49;
  *(v5 + 32) = v51;

  return v12;
}

- (void)activate
{
  v3 = PRSLogCategoryDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100063D58(self, v3);
  }

  if (!atomic_fetch_add(dword_1000A8900, 1u))
  {
    [(SPParsecDatastore *)self preheat];
  }

  self->_sessionStartTime = CFAbsoluteTimeGetCurrent();
  v4 = [(SDNetworkQualityInquiry *)self->_networkConditions getNetworkQuality];
  self->_quality = v4;
  if (self->_lastKnownQuality != v4)
  {
    self->_parsecBeyondTimeoutRequestCount = 0;
  }

  self->_lastKnownQuality = v4;
  session = self->_session;
  if (!session)
  {
    if (self->_parsecEnabled)
    {
      [(SPParsecDatastore *)self setupSearchSession];
      session = self->_session;
    }

    else
    {
      session = 0;
    }
  }

  [(PRSSearchSession *)session activate];
  [(SPParsecDatastore *)self checkParsecState];
  v6 = SPCopyVisibleApps();
  setOfVisibleApps = self->_setOfVisibleApps;
  self->_setOfVisibleApps = v6;

  v8 = SPFastHiddenAppsGetNoBuild();
  setOfHiddenApps = self->_setOfHiddenApps;
  self->_setOfHiddenApps = v8;
}

- (void)deactivate
{
  v3 = [(SPParsecDatastore *)self session];
  [v3 deactivate];
  self->_activated = 0;
  atomic_fetch_add(dword_1000A8900, 0xFFFFFFFF);
  self->_sessionStartTime = 0.0;
}

- (void)preheat
{
  if (self->_parsecEnabled)
  {
    if (!self->_session)
    {
      [(SPParsecDatastore *)self setupSearchSession];
    }

    if (!self->_activated)
    {
      [(PRSSearchSession *)self->_session activate];
      self->_activated = 1;
    }
  }
}

- (double)computeTimeout:(double)a3
{
  quality = self->_quality;
  if ((quality & 0xFFFFFFFFFFFFFFFELL) != 2 || self->_parsecBeyondTimeoutRequestCount < 4 || self->_lastKnownQuality != quality)
  {
    goto LABEL_14;
  }

  withinThreshold = self->_withinThreshold;
  v6 = SPLogForSPLogCategoryDefault();
  v7 = v6;
  if (gSPLogDebugAsDefault)
  {
    v8 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v8 = OS_LOG_TYPE_DEBUG;
  }

  v9 = os_log_type_enabled(v6, v8);
  if (withinThreshold)
  {
    a3 = a3 + 0.05;
    if (v9)
    {
      v14 = 0;
      v10 = "[Parsec] Increased timeout";
      v11 = &v14;
LABEL_12:
      _os_log_impl(&_mh_execute_header, v7, v8, v10, v11, 2u);
    }
  }

  else
  {
    a3 = a3 * 0.5;
    if (v9)
    {
      v13 = 0;
      v10 = "[Parsec] Cut down timeout";
      v11 = &v13;
      goto LABEL_12;
    }
  }

LABEL_14:
  result = 0.2;
  if (a3 > 0.0)
  {
    return a3;
  }

  return result;
}

- (double)searchTimeOut
{
  v3 = [(SPParsecDatastore *)self session];
  if (v3)
  {
    v4 = [(SPParsecDatastore *)self session];
    [v4 searchRenderTimeout];
    v6 = v5;
  }

  else
  {
    v6 = 0.2;
  }

  [(SPParsecDatastore *)self computeTimeout:v6];
  return result;
}

- (double)suggestionTimeOut
{
  v3 = [(SPParsecDatastore *)self session];
  [v3 suggestionsRenderTimeout];
  v5 = v4;

  [(SPParsecDatastore *)self computeTimeout:v5];
  return result;
}

- (double)timeOut:(BOOL)a3
{
  if (a3)
  {
    [(SPParsecDatastore *)self suggestionTimeOut];
  }

  else
  {
    [(SPParsecDatastore *)self searchTimeOut];
  }

  return result;
}

- (void)sessionReceivedBagWithEnabledDomains:(id)a3
{
  v4 = a3;
  v5 = SPLogForSPLogCategoryDefault();
  v6 = gSPLogInfoAsDefault;
  if (os_log_type_enabled(v5, ((gSPLogInfoAsDefault & 1) == 0)))
  {
    v12 = 138412290;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, ((v6 & 1) == 0), "Received bag with enabled domains: %@", &v12, 0xCu);
  }

  [v4 count];
  SPSetInternetDomainsAvailable();
  v7 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.searchd"];
  v8 = [v7 BOOLForKey:@"disableAsTypedSuggestion"];
  v9 = [(SPParsecDatastore *)self session];
  v10 = [v9 disableAsTypedSuggestion];

  if (v8 != v10)
  {
    v11 = [(SPParsecDatastore *)self session];
    [v7 setBool:objc_msgSend(v11 forKey:{"disableAsTypedSuggestion"), @"disableAsTypedSuggestion"}];

    [v7 synchronize];
  }
}

- (void)updateCorrectionDict:(id)a3
{
  v3 = a3;
  v4 = +[SPCorrectionHandler sharedHandler];
  [v4 updateWithFileHandle:v3];
}

- (void)getFTEStringsWithReply:(id)a3
{
  v4 = a3;
  session = self->_session;
  if (session)
  {
    goto LABEL_8;
  }

  v6 = SPLogForSPLogCategoryDefault();
  v7 = v6;
  if (gSPLogDebugAsDefault)
  {
    v8 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v8 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v6, v8))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Parsec session is nil in FTE. Trying to create one.", buf, 2u);
  }

  [(SPParsecDatastore *)self setupSearchSession];
  session = self->_session;
  if (session)
  {
LABEL_8:
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10005FC50;
    v10[3] = &unk_100093CA8;
    v10[4] = self;
    v11 = v4;
    [(PRSSearchSession *)session getFTEStringsWithReply:v10];
  }

  else
  {
    v9 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100063DEC(v9);
    }

    (*(v4 + 2))(v4, 0, 0, 0, 0);
  }
}

- (SSPlistDataReader)cannedCEPValues
{
  if (byte_1000A8938)
  {
    p_session = &qword_1000A8940;
  }

  else
  {
    p_session = &self->_session;
  }

  v3 = [(PRSSearchSession *)*p_session cannedCEPValues];

  return v3;
}

- (SSPlistDataReader)cepDictionary
{
  if (byte_1000A8938)
  {
    p_session = &qword_1000A8940;
  }

  else
  {
    p_session = &self->_session;
  }

  v3 = [(PRSSearchSession *)*p_session cepDictionary];

  return v3;
}

- (id)feedbackListeners
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005FFA4;
  block[3] = &unk_1000921C8;
  block[4] = self;
  if (qword_1000A8948 != -1)
  {
    dispatch_once(&qword_1000A8948, block);
  }

  v3 = self->_listener;
  v4 = xpc_BOOL_create(self->_session != 0);
  v5 = sub_100060020("parsecPresent", v4);
  analytics_send_event();

  if (v3)
  {
    v9 = v3;
    v6 = [NSArray arrayWithObjects:&v9 count:1];
  }

  else
  {
    v6 = &__NSArray0__struct;
  }

  return v6;
}

- (void)setParsecState:(BOOL)a3
{
  self->_parsecEnabled = a3;
  v4 = +[MCProfileConnection sharedConnection];
  v5 = [v4 isSpotlightInternetResultsAllowed];

  if ((v5 & 1) == 0)
  {
    self->_parsecEnabled = 0;
  }
}

- (void)setParsecFeedbackAllowed:(BOOL)a3
{
  v3 = a3;
  v5 = SPLogForSPLogCategoryDefault();
  v6 = v5;
  if (gSPLogDebugAsDefault)
  {
    v7 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v7 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v5, v7))
  {
    v18 = 67109120;
    LODWORD(v19) = v3;
    _os_log_impl(&_mh_execute_header, v6, v7, "[FEEDBACK-DEBUG] (SPParsecDatastore setParsecFeedbackAllowed) allowed: %d, ", &v18, 8u);
  }

  v8 = SPLogForSPLogCategoryDefault();
  v9 = v8;
  if (gSPLogDebugAsDefault)
  {
    v10 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v10 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v8, v10))
  {
    v11 = [(SPParsecDatastore *)self session];
    v18 = 138412290;
    v19 = v11;
    _os_log_impl(&_mh_execute_header, v9, v10, "[FEEDBACK-DEBUG] (SPParsecDatastore setParsecFeedbackAllowed) self.session: %@, ", &v18, 0xCu);
  }

  v12 = self;
  objc_sync_enter(v12);
  v13 = SPLogForSPLogCategoryDefault();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = "allowed";
    if (!v3)
    {
      v14 = "forbidden";
    }

    v18 = 136315138;
    v19 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Parsec feedback %s", &v18, 0xCu);
  }

  v15 = xpc_BOOL_create(v3);
  v16 = sub_100060020("allowed", v15);
  analytics_send_event();

  byte_1000A8939 = v3;
  v17 = [(SPParsecDatastore *)v12 session];
  [v17 setParsecFeedbackAllowed:byte_1000A8939];

  objc_sync_exit(v12);
  +[SPFeedbackSender updateFeedbackListeners];
}

@end