@interface SPCalculationDatastore
+ (void)refreshCurrencyCache;
- (id)performQuery:(id)query;
@end

@implementation SPCalculationDatastore

+ (void)refreshCurrencyCache
{
  v4 = +[Converter currencyCacheLastRefreshDate];
  [v4 timeIntervalSinceReferenceDate];
  if (CFAbsoluteTimeGetCurrent() - v2 > 86400.0)
  {
    v3 = dispatch_get_global_queue(-32768, 0);
    tracing_dispatch_async();
  }
}

- (id)performQuery:(id)query
{
  queryCopy = query;
  v5 = si_tracing_current_span();
  v6 = *(v5 + 16);
  v83 = *v5;
  v84 = v6;
  v85 = *(v5 + 32);
  v7 = *v5;
  spanid = si_tracing_calc_next_spanid();
  v9 = *(v5 + 8);
  v10 = *(v5 + 24);
  *v5 = v7;
  *(v5 + 8) = spanid;
  *(v5 + 16) = v9;
  *(v5 + 28) = 102;
  *(v5 + 32) = "[SPCalculationDatastore performQuery:]";
  si_tracing_log_span_begin();
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
    v14 = objc_opt_class();
    *buf = 138412546;
    *&buf[4] = v14;
    *&buf[12] = 1024;
    *&buf[14] = qos_class_self();
    _os_log_impl(&_mh_execute_header, v12, v13, "QOS %@ performQuery: %d", buf, 0x12u);
  }

  v15 = SPLogForSPLogCategoryTelemetry();
  externalID = [queryCopy externalID];
  if (externalID && os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_BEGIN, externalID, "calculationSpotlightLatency", " enableTelemetry=YES ", buf, 2u);
  }

  disabledBundles = [queryCopy disabledBundles];
  v18 = [disabledBundles containsObject:@"com.apple.calculator"];

  if (v18 & 1) != 0 || ([queryCopy isPeopleSearch] & 1) != 0 || (objc_msgSend(queryCopy, "isScopedAppSearch"))
  {
    v19 = 0;
  }

  else
  {
    queryIdent = [queryCopy queryIdent];
    queryContext = [queryCopy queryContext];
    searchString = [queryContext searchString];

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v89 = sub_10002E1F0;
    v90 = sub_10002E200;
    v91 = 0;
    v53 = [[SPCalculationDatastoreToken alloc] initWithStore:self];
    [queryCopy externalID];
    kdebug_trace();
    v31 = [SFStartLocalSearchFeedback alloc];
    queryContext2 = [queryCopy queryContext];
    v57 = [v31 initWithInput:searchString triggerEvent:objc_msgSend(queryContext2 indexType:"whyQuery") queryId:{2, queryIdent}];

    v33 = +[SPFeedbackProxy sharedProxy];
    queryIdent2 = [queryCopy queryIdent];
    connection = [queryCopy connection];
    bundleID = [connection bundleID];
    [v33 sendFeedbackType:5 feedback:v57 queryId:queryIdent2 clientID:bundleID];

    v37 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
    v38 = dispatch_group_create();
    v39 = *(v5 + 16);
    v80 = *v5;
    v81 = v39;
    v82 = *(v5 + 32);
    v71[0] = _NSConcreteStackBlock;
    v71[1] = 3221225472;
    v71[2] = sub_10002E208;
    v71[3] = &unk_1000930D0;
    v76 = v80;
    v77 = v39;
    v78 = v82;
    v55 = searchString;
    v72 = v55;
    group = v38;
    v73 = group;
    v40 = queryCopy;
    v79 = queryIdent;
    v74 = v40;
    v75 = buf;
    v56 = objc_retainBlock(v71);
    v41 = objc_opt_new();
    v42 = +[NSLocale autoupdatingCurrentLocale];
    [v41 setLocale:v42];

    [v41 setUsesGroupingSeparator:1];
    [v41 setMaximumIntegerDigits:20];
    [v41 setMaximumFractionDigits:10];
    [v41 setNumberStyle:1];
    v86[0] = CalculateKeyAllowPartialExpressions;
    v86[1] = CalculateKeyNumberFormatter;
    v87[0] = &__kCFBooleanTrue;
    v87[1] = v41;
    v86[2] = CalculateKeyAllowConversions;
    disabledBundles2 = [v40 disabledBundles];
    v44 = [disabledBundles2 containsObject:@"com.apple.conversion"];
    v45 = &__kCFBooleanFalse;
    if (!v44)
    {
      v45 = &__kCFBooleanTrue;
    }

    v87[2] = v45;
    v87[3] = &__kCFBooleanTrue;
    v86[3] = CalculateKeyAutoScientificNotation;
    v86[4] = CalculateKeyConvertTrivial;
    v87[4] = &__kCFBooleanTrue;
    v87[5] = &__kCFBooleanTrue;
    v86[5] = CalculateKeyIgnoreProbableSearches;
    v86[6] = CalculateKeyAllowEqualSign;
    v87[6] = &__kCFBooleanTrue;
    v54 = [NSDictionary dictionaryWithObjects:v87 forKeys:v86 count:7];

    dispatch_group_enter(group);
    v46 = [Calculate evaluate:v55 options:v54 resultHandler:v56];
    objc_initWeak(&location, v40);
    v47 = +[SDController workQueue];
    v48 = qos_class_self();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002EA38;
    block[3] = &unk_1000930F8;
    v66 = v80;
    v67 = v81;
    v68 = v82;
    objc_copyWeak(&v65, &location);
    v69 = v37;
    v49 = v53;
    v60 = v49;
    selfCopy = self;
    v64 = buf;
    v62 = v57;
    v63 = v40;
    v50 = v57;
    v51 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v48, 0, block);
    dispatch_group_notify(group, v47, v51);

    v52 = v63;
    v19 = v49;

    objc_destroyWeak(&v65);
    objc_destroyWeak(&location);

    _Block_object_dispose(buf, 8);
  }

  v20 = *v5;
  v21 = *(v5 + 8);
  v22 = *(v5 + 16);
  v23 = *(v5 + 24);
  v24 = *(v5 + 28);
  v25 = *(v5 + 32);
  si_tracing_log_span_end();
  v26 = v84;
  *v5 = v83;
  *(v5 + 16) = v26;
  *(v5 + 32) = v85;

  return v19;
}

@end