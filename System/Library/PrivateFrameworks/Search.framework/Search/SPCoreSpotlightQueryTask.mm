@interface SPCoreSpotlightQueryTask
- (SDSearchQuery)resultPipe;
- (SPCoreSpotlightQueryTask)initWithStore:(id)store resultPipe:(id)pipe;
- (void)beginQuery:(id)query;
- (void)cancel;
- (void)finishWithSections:(id)sections suggestionResults:(id)results;
- (void)progressWithSections:(id)sections suggestionResults:(id)results;
- (void)reset;
- (void)sendCompletions:(id)completions;
@end

@implementation SPCoreSpotlightQueryTask

- (SPCoreSpotlightQueryTask)initWithStore:(id)store resultPipe:(id)pipe
{
  storeCopy = store;
  pipeCopy = pipe;
  v25.receiver = self;
  v25.super_class = SPCoreSpotlightQueryTask;
  v9 = [(SPCoreSpotlightQueryTask *)&v25 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_store, store);
    objc_storeWeak(&v10->_resultPipe, pipeCopy);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("Query Queue", v11);
    queue = v10->_queue;
    v10->_queue = v12;

    v10->_type = 0;
    v14 = objc_opt_new();
    rankingInfo = v10->_rankingInfo;
    v10->_rankingInfo = v14;

    v16 = [SITracingObjcLifetimeSpan alloc];
    v17 = si_tracing_current_span();
    v18 = *(v17 + 16);
    v23[0] = *v17;
    v23[1] = v18;
    v24 = *(v17 + 32);
    v20 = [v19 init:v23 kind:111 what:"SPCoreSpotlightQueryTask"];
    lifetimeSpan = v10->_lifetimeSpan;
    v10->_lifetimeSpan = v20;
  }

  return v10;
}

- (void)reset
{
  v3 = [SITracingObjcLifetimeSpan alloc];
  v4 = si_tracing_current_span();
  v5 = *(v4 + 16);
  v15[0] = *v4;
  v15[1] = v5;
  v16 = *(v4 + 32);
  v7 = [v6 init:v15 kind:111 what:"reused SPCoreSpotlightQueryTask"];
  lifetimeSpan = self->_lifetimeSpan;
  self->_lifetimeSpan = v7;

  [(SPCoreSpotlightQueryTask *)self setJob:0];
  [(SPCoreSpotlightQueryTask *)self setDone:0];
  [(SPCoreSpotlightQueryTask *)self setCanceled:0];
  if (self->_priorityIndexEnabled)
  {
    timeoutTimer = [(SPCoreSpotlightQueryTask *)self timeoutTimer];
    v10 = timeoutTimer;
    if (timeoutTimer)
    {
      dispatch_source_cancel(timeoutTimer);
      [(SPCoreSpotlightQueryTask *)self setTimeoutTimer:0];
    }
  }

  feedback = self->_feedback;
  self->_feedback = 0;

  atomic_fetch_add(&dword_1000A8420, 0xFFFFFFFF);
  v12 = SPLogForSPLogCategoryTelemetry();
  queryID = [(SPCoreSpotlightTask *)self->_job queryID];
  if ((queryID - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v14 = queryID;
    if (os_signpost_enabled(v12))
    {
      LOWORD(v15[0]) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_EVENT, v14, "coreSpotlightReset", " enableTelemetry=YES ", v15, 2u);
    }
  }
}

- (void)cancel
{
  v3 = si_tracing_current_span();
  v17 = *v3;
  v18 = *(v3 + 16);
  v19 = *(v3 + 32);
  v4 = *v3;
  spanid = si_tracing_calc_next_spanid();
  v6 = *(v3 + 8);
  v7 = *(v3 + 24);
  *v3 = v4;
  *(v3 + 8) = spanid;
  *(v3 + 16) = v6;
  *(v3 + 28) = 102;
  *(v3 + 32) = "[SPCoreSpotlightQueryTask cancel]";
  si_tracing_log_span_begin();
  v8 = [[SFEndLocalSearchFeedback alloc] initWithStartSearch:self->_feedback];
  queue = self->_queue;
  v16 = v8;
  md_tracing_dispatch_async_propagating();

  v10 = *v3;
  v11 = *(v3 + 8);
  v12 = *(v3 + 16);
  v13 = *(v3 + 24);
  v14 = *(v3 + 28);
  v15 = *(v3 + 32);
  si_tracing_log_span_end();
  *v3 = v17;
  *(v3 + 16) = v18;
  *(v3 + 32) = v19;
}

- (void)beginQuery:(id)query
{
  queryCopy = query;
  queryContext = [queryCopy queryContext];
  isSearchToolClient = [queryContext isSearchToolClient];

  if ((isSearchToolClient & 1) == 0)
  {
    v7 = si_tracing_current_span();
    v40 = *v7;
    v41 = *(v7 + 16);
    v42 = *(v7 + 32);
    v8 = *v7;
    spanid = si_tracing_calc_next_spanid();
    v10 = *(v7 + 8);
    v11 = *(v7 + 24);
    *v7 = v8;
    *(v7 + 8) = spanid;
    *(v7 + 16) = v10;
    *(v7 + 28) = 102;
    *(v7 + 32) = "[SPCoreSpotlightQueryTask beginQuery:]";
    si_tracing_log_span_begin();
    queryContext2 = [queryCopy queryContext];
    searchEntities = [queryContext2 searchEntities];
    firstObject = [searchEntities firstObject];

    if (firstObject)
    {
      currentSearchString = [firstObject currentSearchString];
      command = [firstObject command];
      if (command)
      {
        command2 = [firstObject command];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          command3 = [firstObject command];
          v20 = [command3 copy];

          [v20 setSearchString:0];
          [v20 setTokenString:0];
          v37 = [SFStartLocalSearchFeedback alloc];
          whyQuery = [queryContext2 whyQuery];
          queryIdent = [queryCopy queryIdent];
          connection = [queryCopy connection];
          bundleID = [connection bundleID];
          v24 = [v37 initWithEntityQueryCommand:v20 triggerEvent:whyQuery searchType:3 indexType:1 queryId:queryIdent originatingApp:bundleID];

LABEL_13:
          queue = self->_queue;
          v38 = v24;
          v39 = queryCopy;
          md_tracing_dispatch_async_propagating();

          v30 = *v7;
          v31 = *(v7 + 8);
          v32 = *(v7 + 16);
          v33 = *(v7 + 24);
          v34 = *(v7 + 28);
          v35 = *(v7 + 32);
          si_tracing_log_span_end();
          *v7 = v40;
          *(v7 + 16) = v41;
          *(v7 + 32) = v42;
          goto LABEL_14;
        }
      }
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_resultPipe);
      queryContext3 = [WeakRetained queryContext];
      currentSearchString = [queryContext3 searchString];
    }

    v27 = [SFStartLocalSearchFeedback alloc];
    if ([firstObject isContactEntitySearch])
    {
      v28 = 0;
    }

    else if ([firstObject isPhotosEntitySearch])
    {
      v28 = 0;
    }

    else
    {
      v28 = currentSearchString;
    }

    v24 = [v27 initWithInput:v28 triggerEvent:objc_msgSend(queryContext2 indexType:"whyQuery") queryId:{1, objc_msgSend(queryCopy, "queryIdent")}];
    goto LABEL_13;
  }

LABEL_14:
}

- (void)sendCompletions:(id)completions
{
  completionsCopy = completions;
  v5 = si_tracing_current_span();
  v6 = *(v5 + 16);
  v27 = *v5;
  v28 = v6;
  v29 = *(v5 + 32);
  v7 = *v5;
  spanid = si_tracing_calc_next_spanid();
  v9 = *(v5 + 8);
  v10 = *(v5 + 24);
  *v5 = v7;
  *(v5 + 8) = spanid;
  *(v5 + 16) = v9;
  *(v5 + 28) = 102;
  *(v5 + 32) = "[SPCoreSpotlightQueryTask sendCompletions:]";
  si_tracing_log_span_begin();
  if (self->_canceled)
  {
    v11 = SPLogForSPLogCategoryDefault();
    v12 = v11;
    if (gSPLogDebugAsDefault)
    {
      v13 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v13 = OS_LOG_TYPE_DEBUG;
    }

    if (os_log_type_enabled(v11, v13))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Not sending completions --- canceled.", buf, 2u);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_resultPipe);
    v15 = +[SDController workQueue];
    v12 = WeakRetained;
    v25 = completionsCopy;
    tracing_dispatch_async();

    v16 = SPLogForSPLogCategoryTelemetry();
    v17 = [(SPCoreSpotlightTask *)self->_job queryID:_NSConcreteStackBlock];
    if ((v17 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_EVENT, v17, "coreSpotlightComplete", " enableTelemetry=YES ", buf, 2u);
    }
  }

  v18 = *v5;
  v19 = *(v5 + 8);
  v20 = *(v5 + 16);
  v21 = *(v5 + 24);
  v22 = *(v5 + 28);
  v23 = *(v5 + 32);
  si_tracing_log_span_end();
  v24 = v28;
  *v5 = v27;
  *(v5 + 16) = v24;
  *(v5 + 32) = v29;
}

- (void)progressWithSections:(id)sections suggestionResults:(id)results
{
  sectionsCopy = sections;
  resultsCopy = results;
  v8 = si_tracing_current_span();
  v9 = *(v8 + 16);
  v35 = *v8;
  v36 = v9;
  v37 = *(v8 + 32);
  v10 = *v8;
  spanid = si_tracing_calc_next_spanid();
  v12 = *(v8 + 8);
  v13 = *(v8 + 24);
  *v8 = v10;
  *(v8 + 8) = spanid;
  *(v8 + 16) = v12;
  *(v8 + 28) = 102;
  *(v8 + 32) = "[SPCoreSpotlightQueryTask progressWithSections:suggestionResults:]";
  si_tracing_log_span_begin();
  v14 = SPLogForSPLogCategoryDefault();
  v15 = v14;
  if (gSPLogDebugAsDefault)
  {
    v16 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v16 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v14, v16))
  {
    v17 = objc_opt_class();
    *buf = 138412546;
    v39 = v17;
    v40 = 1024;
    v41 = qos_class_self();
    _os_log_impl(&_mh_execute_header, v15, v16, "QOS %@ progressWithSections: %d", buf, 0x12u);
  }

  if (!self->_canceled)
  {
    WeakRetained = objc_loadWeakRetained(&self->_resultPipe);
    v19 = +[SDController workQueue];
    v20 = qos_class_self();
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100030004;
    v30[3] = &unk_100093178;
    v21 = WeakRetained;
    v31 = v21;
    selfCopy = self;
    v33 = sectionsCopy;
    v34 = resultsCopy;
    v22 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v20, 0, v30);
    tracing_dispatch_async();
  }

  v23 = *v8;
  v24 = *(v8 + 8);
  v25 = *(v8 + 16);
  v26 = *(v8 + 24);
  v27 = *(v8 + 28);
  v28 = *(v8 + 32);
  si_tracing_log_span_end();
  v29 = v36;
  *v8 = v35;
  *(v8 + 16) = v29;
  *(v8 + 32) = v37;
}

- (void)finishWithSections:(id)sections suggestionResults:(id)results
{
  sectionsCopy = sections;
  resultsCopy = results;
  v8 = si_tracing_current_span();
  v9 = *(v8 + 16);
  v48 = *v8;
  v49 = v9;
  v50 = *(v8 + 32);
  v10 = *v8;
  spanid = si_tracing_calc_next_spanid();
  v12 = *(v8 + 8);
  v13 = *(v8 + 24);
  *v8 = v10;
  *(v8 + 8) = spanid;
  *(v8 + 16) = v12;
  *(v8 + 28) = 102;
  *(v8 + 32) = "[SPCoreSpotlightQueryTask finishWithSections:suggestionResults:]";
  si_tracing_log_span_begin();
  v14 = SPLogForSPLogCategoryDefault();
  v15 = v14;
  if (gSPLogDebugAsDefault)
  {
    v16 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v16 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v14, v16))
  {
    v17 = objc_opt_class();
    *buf = 138412546;
    v52 = v17;
    v53 = 1024;
    v54 = qos_class_self();
    _os_log_impl(&_mh_execute_header, v15, v16, "QOS %@ finishWithSections: %d", buf, 0x12u);
  }

  if (!self->_done && !self->_canceled)
  {
    WeakRetained = objc_loadWeakRetained(&self->_resultPipe);
    queryContext = [WeakRetained queryContext];
    queryUnderstandingOutput = [queryContext queryUnderstandingOutput];
    v21 = [SSQueryUnderstandingUtilities queryUnderstandingParseWithQueryUnderstanding:queryUnderstandingOutput];

    queryContext2 = [WeakRetained queryContext];
    LOBYTE(queryUnderstandingOutput) = [queryContext2 isSearchToolClient];

    if ((queryUnderstandingOutput & 1) == 0)
    {
      v23 = [[SFEndLocalSearchFeedback alloc] initWithStartSearch:self->_feedback queryUnderstandingParse:v21];
      queue = self->_queue;
      v41 = _NSConcreteStackBlock;
      v42 = 3221225472;
      v43 = sub_1000303EC;
      v44 = &unk_100093150;
      v45 = v23;
      v46 = WeakRetained;
      selfCopy = self;
      md_tracing_dispatch_async_propagating();
    }

    v25 = +[SDController workQueue];
    v26 = qos_class_self();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100030498;
    block[3] = &unk_100093178;
    v27 = WeakRetained;
    v37 = v27;
    selfCopy2 = self;
    v39 = sectionsCopy;
    v40 = resultsCopy;
    v28 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v26, 0, block);
    tracing_dispatch_async();

    objc_storeWeak(&self->_resultPipe, 0);
    self->_done = 1;
    atomic_fetch_add(&dword_1000A8420, 0xFFFFFFFF);
  }

  v29 = *v8;
  v30 = *(v8 + 8);
  v31 = *(v8 + 16);
  v32 = *(v8 + 24);
  v33 = *(v8 + 28);
  v34 = *(v8 + 32);
  si_tracing_log_span_end();
  v35 = v49;
  *v8 = v48;
  *(v8 + 16) = v35;
  *(v8 + 32) = v50;
}

- (SDSearchQuery)resultPipe
{
  WeakRetained = objc_loadWeakRetained(&self->_resultPipe);

  return WeakRetained;
}

@end