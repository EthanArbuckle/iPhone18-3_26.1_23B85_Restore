@interface SPDictionaryDatastoreToken
- (SPDictionaryDatastoreToken)initWithStore:(id)a3;
- (void)begin:(id)a3;
- (void)finishWithClientID:(id)a3;
@end

@implementation SPDictionaryDatastoreToken

- (SPDictionaryDatastoreToken)initWithStore:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = SPDictionaryDatastoreToken;
  v6 = [(SPDictionaryDatastoreToken *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, a3);
    v7->_type = 4;
    v8 = [SITracingObjcLifetimeSpan alloc];
    v9 = si_tracing_current_span();
    v10 = *(v9 + 16);
    v15[0] = *v9;
    v15[1] = v10;
    v16 = *(v9 + 32);
    v12 = [v11 init:v15 kind:111 what:"SPDictionaryDatastoreToken"];
    lifetimeSpan = v7->_lifetimeSpan;
    v7->_lifetimeSpan = v12;
  }

  return v7;
}

- (void)begin:(id)a3
{
  v4 = a3;
  v5 = si_tracing_current_span();
  v6 = *(v5 + 16);
  v56 = *v5;
  v57 = v6;
  v58 = *(v5 + 32);
  v7 = *v5;
  spanid = si_tracing_calc_next_spanid();
  v9 = *(v5 + 8);
  v10 = *(v5 + 24);
  *v5 = v7;
  *(v5 + 8) = spanid;
  *(v5 + 16) = v9;
  *(v5 + 28) = 102;
  *(v5 + 32) = "[SPDictionaryDatastoreToken begin:]";
  si_tracing_log_span_begin();
  v11 = [v4 queryContext];
  v12 = [v4 connection];
  v13 = [v12 bundleID];

  v14 = [SFStartLocalSearchFeedback alloc];
  v15 = [v11 searchString];
  v16 = [v14 initWithInput:v15 triggerEvent:objc_msgSend(v11 indexType:"whyQuery") queryId:{6, objc_msgSend(v4, "queryIdent")}];
  feedback = self->_feedback;
  self->_feedback = v16;

  v18 = +[SPFeedbackProxy sharedProxy];
  [v18 sendFeedbackType:5 feedback:self->_feedback queryId:objc_msgSend(v4 clientID:{"queryIdent"), v13}];

  [v4 externalID];
  kdebug_trace();
  v19 = SPLogForSPLogCategoryTelemetry();
  v20 = [v4 externalID];
  if (v20 && os_signpost_enabled(v19))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_BEGIN, v20, "dictionaryLatency", " enableTelemetry=YES ", buf, 2u);
  }

  v45 = +[NSCharacterSet whitespaceCharacterSet];
  v21 = [v11 getTrimmedSearchString];
  v22 = [v21 mutableCopy];

  if (qword_1000A85E8 != -1)
  {
    sub_1000635D0();
  }

  v23 = [v22 length];
  v44 = v11;
  if (v23 > [qword_1000A85F0 length] && objc_msgSend(v22, "hasPrefix:", qword_1000A85F0) && (objc_msgSend(v45, "characterIsMember:", objc_msgSend(v22, "characterAtIndex:", objc_msgSend(qword_1000A85F0, "length"))) & 1) != 0)
  {
    v24 = &qword_1000A85F0;
  }

  else
  {
    if (v23 <= [qword_1000A85F8 length] || !objc_msgSend(v22, "hasPrefix:", qword_1000A85F8) || !objc_msgSend(v45, "characterIsMember:", objc_msgSend(v22, "characterAtIndex:", objc_msgSend(qword_1000A85F8, "length"))))
    {
      v26 = 0;
      goto LABEL_17;
    }

    v24 = &qword_1000A85F8;
  }

  v25 = *v24;
  v26 = v25;
  if (v25)
  {
    [v22 deleteCharactersInRange:{0, objc_msgSend(v25, "length")}];
    v27 = [v22 stringByTrimmingCharactersInSet:v45];
    v28 = [v27 mutableCopy];

    v29 = 1;
    v22 = v28;
    goto LABEL_18;
  }

LABEL_17:
  v29 = 0;
LABEL_18:
  if (qword_1000A8608 != -1)
  {
    sub_1000635F8();
  }

  v30 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  *buf = 0;
  v53 = buf;
  v54 = 0x2020000000;
  v55 = 0;
  v31 = [(SPDictionaryDatastoreToken *)self store];
  v32 = [v31 dictionaries];

  if ([v32 count])
  {
    objc_initWeak(location, v4);
    objc_copyWeak(v49, location);
    v33 = v22;
    v50 = v29;
    v49[1] = v30;
    v47 = v33;
    v48 = v13;
    md_tracing_dispatch_async_propagating();

    objc_destroyWeak(v49);
    objc_destroyWeak(location);
  }

  else
  {
    v34 = +[SDController workQueue];
    v46 = v4;
    md_tracing_dispatch_async_propagating();

    [v46 externalID];
    kdebug_trace();
    v35 = SPLogForSPLogCategoryTelemetry();
    v36 = [v46 externalID];
    if (v36 && os_signpost_enabled(v35))
    {
      LOWORD(location[0]) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v35, OS_SIGNPOST_INTERVAL_END, v36, "dictionaryLatency", " enableTelemetry=YES ", location, 2u);
    }

    [(SPDictionaryDatastoreToken *)self finishWithClientID:v13];
  }

  _Block_object_dispose(buf, 8);
  v37 = *v5;
  v38 = *(v5 + 8);
  v39 = *(v5 + 16);
  v40 = *(v5 + 24);
  v41 = *(v5 + 28);
  v42 = *(v5 + 32);
  si_tracing_log_span_end();
  v43 = v57;
  *v5 = v56;
  *(v5 + 16) = v43;
  *(v5 + 32) = v58;
}

- (void)finishWithClientID:(id)a3
{
  v4 = a3;
  v5 = +[SPFeedbackProxy sharedProxy];
  v6 = [[SFEndLocalSearchFeedback alloc] initWithStartSearch:self->_feedback];
  [v5 sendFeedbackType:6 feedback:v6 queryId:-[SFStartSearchFeedback queryId](self->_feedback clientID:{"queryId"), v4}];

  feedback = self->_feedback;
  self->_feedback = 0;
}

@end