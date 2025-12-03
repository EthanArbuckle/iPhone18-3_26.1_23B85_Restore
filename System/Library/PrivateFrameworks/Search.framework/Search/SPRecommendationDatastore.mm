@interface SPRecommendationDatastore
- (id)performQuery:(id)query;
@end

@implementation SPRecommendationDatastore

- (id)performQuery:(id)query
{
  queryCopy = query;
  if ([queryCopy isPeopleSearch] & 1) != 0 || (objc_msgSend(queryCopy, "isScopedAppSearch"))
  {
    v5 = 0;
  }

  else
  {
    disabledBundles = [queryCopy disabledBundles];
    v7 = [disabledBundles containsObject:@"com.apple.Music"];

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
      externalID = [queryCopy externalID];
      if (externalID)
      {
        v11 = externalID;
        if (os_signpost_enabled(v9))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, v11, "recommendationSpotlightLatency", " enableTelemetry=YES ", buf, 2u);
        }
      }

      v13 = [[SPRecommendationDatastoreToken alloc] initWithStore:self];
      v14 = queryCopy;
      md_tracing_dispatch_async_propagating();
      v8 = v13;

      v5 = v8;
    }
  }

  return v5;
}

@end