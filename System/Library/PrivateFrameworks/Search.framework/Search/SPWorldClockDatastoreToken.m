@interface SPWorldClockDatastoreToken
- (SPWorldClockDatastoreToken)initWithStore:(id)a3;
- (void)begin:(id)a3;
@end

@implementation SPWorldClockDatastoreToken

- (SPWorldClockDatastoreToken)initWithStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SPWorldClockDatastoreToken;
  v6 = [(SPWorldClockDatastoreToken *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, a3);
    v7->_type = 7;
  }

  return v7;
}

- (void)begin:(id)a3
{
  v4 = a3;
  v5 = si_tracing_current_span();
  v6 = *(v5 + 16);
  v45 = *v5;
  v46 = v6;
  v47 = *(v5 + 32);
  v7 = *v5;
  spanid = si_tracing_calc_next_spanid();
  v9 = *(v5 + 8);
  v10 = *(v5 + 24);
  *v5 = v7;
  *(v5 + 8) = spanid;
  *(v5 + 16) = v9;
  *(v5 + 28) = 102;
  *(v5 + 32) = "[SPWorldClockDatastoreToken begin:]";
  si_tracing_log_span_begin();
  v11 = [v4 externalID];
  v12 = SPLogForSPLogCategoryTelemetry();
  v13 = v12;
  if (v11 && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "worldClockLatency", " enableTelemetry=YES ", buf, 2u);
  }

  v14 = [v4 queryContext];
  v15 = [v14 searchString];

  v16 = [SFStartLocalSearchFeedback alloc];
  v17 = [v4 queryContext];
  v18 = [v16 initWithInput:v15 triggerEvent:objc_msgSend(v17 indexType:"whyQuery") queryId:{1, objc_msgSend(v4, "queryIdent")}];

  v19 = +[SPFeedbackProxy sharedProxy];
  v20 = [v4 queryIdent];
  v21 = [v4 connection];
  v22 = [v21 bundleID];
  [v19 sendFeedbackType:5 feedback:v18 queryId:v20 clientID:v22];

  v23 = *(v5 + 16);
  *buf = *v5;
  v43 = v23;
  v44 = *(v5 + 32);
  v24 = [v4 queryIdent];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100061A54;
  v34[3] = &unk_100093D20;
  v25 = v4;
  v38 = *buf;
  v39 = v43;
  v40 = v44;
  v41 = v11;
  v35 = v25;
  v36 = self;
  v26 = v18;
  v37 = v26;
  [SSWorldClockUtilities getWorldClockResultsForQuery:v15 queryID:v24 completionHandler:v34];

  v27 = *v5;
  v28 = *(v5 + 8);
  v29 = *(v5 + 16);
  v30 = *(v5 + 24);
  v31 = *(v5 + 28);
  v32 = *(v5 + 32);
  si_tracing_log_span_end();
  v33 = v46;
  *v5 = v45;
  *(v5 + 16) = v33;
  *(v5 + 32) = v47;
}

@end