@interface SPDataDetectorsDataStore
- (id)performQuery:(id)a3;
@end

@implementation SPDataDetectorsDataStore

- (id)performQuery:(id)a3
{
  v4 = a3;
  v5 = si_tracing_current_span();
  v6 = *(v5 + 16);
  v41 = *v5;
  v42 = v6;
  v43 = *(v5 + 32);
  v7 = *v5;
  spanid = si_tracing_calc_next_spanid();
  v9 = *(v5 + 8);
  v10 = *(v5 + 24);
  *v5 = v7;
  *(v5 + 8) = spanid;
  *(v5 + 16) = v9;
  *(v5 + 28) = 102;
  *(v5 + 32) = "[SPDataDetectorsDataStore performQuery:]";
  si_tracing_log_span_begin();
  v11 = SPLogForSPLogCategoryTelemetry();
  v12 = [v4 externalID];
  if (v12 && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, v12, "dataDetectorsLatency", " enableTelemetry=YES ", buf, 2u);
  }

  v13 = [v4 queryContext];
  v14 = [v13 searchString];
  v15 = [v14 mutableCopy];

  objc_initWeak(&location, v4);
  v16 = [[DDStoreToken alloc] initWithStore:self];
  v17 = objc_alloc_init(SSDataDetectorResultGenerator);
  generator = self->_generator;
  self->_generator = v17;

  v19 = *(v5 + 16);
  *buf = *v5;
  v38 = v19;
  v39 = *(v5 + 32);
  v20 = self->_generator;
  v21 = [v4 queryIdent];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100055EAC;
  v31[3] = &unk_100093A88;
  v34 = *buf;
  v35 = v38;
  v36 = v39;
  objc_copyWeak(&v33, &location);
  v22 = v16;
  v32 = v22;
  [(SSDataDetectorResultGenerator *)v20 getResultSections:v15 queryId:v21 completion:v31];

  objc_destroyWeak(&v33);
  objc_destroyWeak(&location);

  v23 = *v5;
  v24 = *(v5 + 8);
  v25 = *(v5 + 16);
  v26 = *(v5 + 24);
  v27 = *(v5 + 28);
  v28 = *(v5 + 32);
  si_tracing_log_span_end();
  v29 = v42;
  *v5 = v41;
  *(v5 + 16) = v29;
  *(v5 + 32) = v43;

  return v22;
}

@end