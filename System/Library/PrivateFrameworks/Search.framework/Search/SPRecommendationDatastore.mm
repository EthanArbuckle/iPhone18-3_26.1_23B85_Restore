@interface SPRecommendationDatastore
- (id)performQuery:(id)a3;
@end

@implementation SPRecommendationDatastore

- (id)performQuery:(id)a3
{
  v4 = a3;
  if ([v4 isPeopleSearch] & 1) != 0 || (objc_msgSend(v4, "isScopedAppSearch"))
  {
    v5 = 0;
  }

  else
  {
    v6 = [v4 disabledBundles];
    v7 = [v6 containsObject:@"com.apple.Music"];

    if (v7)
    {
      v8 = logForCSLogCategoryRecs();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Music recommendation disabled by settings.", buf, 2u);
      }

      v5 = 0;
    }

    else
    {
      if (qword_1000A81E8 != -1)
      {
        sub_100062284();
      }

      v9 = SPLogForSPLogCategoryTelemetry();
      v10 = [v4 externalID];
      if (v10)
      {
        v11 = v10;
        if (os_signpost_enabled(v9))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, v11, "recommendationSpotlightLatency", " enableTelemetry=YES ", buf, 2u);
        }
      }

      v13 = [[SPRecommendationDatastoreToken alloc] initWithStore:self];
      v14 = v4;
      md_tracing_dispatch_async_propagating();
      v8 = v13;

      v5 = v8;
    }
  }

  return v5;
}

@end