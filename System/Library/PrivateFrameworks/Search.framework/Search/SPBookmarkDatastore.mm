@interface SPBookmarkDatastore
- (id)performQuery:(id)query;
@end

@implementation SPBookmarkDatastore

- (id)performQuery:(id)query
{
  queryCopy = query;
  v5 = si_tracing_current_span();
  v6 = *(v5 + 16);
  v25 = *v5;
  v26 = v6;
  v27 = *(v5 + 32);
  v7 = *v5;
  spanid = si_tracing_calc_next_spanid();
  v9 = *(v5 + 8);
  v10 = *(v5 + 24);
  *v5 = v7;
  *(v5 + 8) = spanid;
  *(v5 + 16) = v9;
  *(v5 + 28) = 102;
  *(v5 + 32) = "[SPBookmarkDatastore performQuery:]";
  si_tracing_log_span_begin();
  if ([queryCopy isPeopleSearch] & 1) != 0 || (objc_msgSend(queryCopy, "isScopedAppSearch"))
  {
    v11 = 0;
  }

  else
  {
    v12 = SPLogForSPLogCategoryTelemetry();
    externalID = [queryCopy externalID];
    if (externalID && os_signpost_enabled(v12))
    {
      *v24 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, externalID, "bookmarkSpotlightLatency", " enableTelemetry=YES ", v24, 2u);
    }

    v11 = [[SPBookmarkDatastoreToken alloc] initWithStore:self];
    [(SPBookmarkDatastoreToken *)v11 begin:queryCopy];
    v14 = SPLogForSPLogCategoryTelemetry();
    externalID2 = [queryCopy externalID];
    if (externalID2 && os_signpost_enabled(v14))
    {
      *v24 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_END, externalID2, "bookmarkSpotlightLatency", " enableTelemetry=YES ", v24, 2u);
    }
  }

  v16 = *v5;
  v17 = *(v5 + 8);
  v18 = *(v5 + 16);
  v19 = *(v5 + 24);
  v20 = *(v5 + 28);
  v21 = *(v5 + 32);
  si_tracing_log_span_end();
  v22 = v26;
  *v5 = v25;
  *(v5 + 16) = v22;
  *(v5 + 32) = v27;

  return v11;
}

@end