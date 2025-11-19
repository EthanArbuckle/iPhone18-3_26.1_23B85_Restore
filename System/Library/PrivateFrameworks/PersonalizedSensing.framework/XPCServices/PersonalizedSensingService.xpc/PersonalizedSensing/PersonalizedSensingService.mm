@interface PersonalizedSensingService
- (BOOL)isFetchedContextDonationEnabled;
- (PersonalizedSensingService)initWithClientID:(id)a3;
- (void)clearMemoryAndExitCleanly;
- (void)dealloc;
- (void)fetchContextWithOptions:(id)a3 predicates:(id)a4 authorizedTypes:(id)a5 withReply:(id)a6;
- (void)fetchPersonalizedContextWithOptions:(id)a3 withReply:(id)a4;
- (void)interruptionHandler;
- (void)invalidationHandler;
- (void)notifyContextFeedback:(id)a3 withReply:(id)a4;
- (void)refreshMomentsContextWithReply:(id)a3;
- (void)releaseOSTransaction;
- (void)requestDBAccessForPersonalizedSensingServiceWithReply:(id)a3;
- (void)takeOSTransaction;
@end

@implementation PersonalizedSensingService

- (PersonalizedSensingService)initWithClientID:(id)a3
{
  v5 = a3;
  v6 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "PSService,init", buf, 2u);
  }

  v22.receiver = self;
  v22.super_class = PersonalizedSensingService;
  v7 = [(PersonalizedSensingService *)&v22 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_clientBundleId, a3);
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("PersonalizedSensingService.internal", v9);
    internalQueue = v8->_internalQueue;
    v8->_internalQueue = v10;

    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("PersonalizedSensingService.external", v12);
    externalQueue = v8->_externalQueue;
    v8->_externalQueue = v13;

    v15 = [[MOContextManager alloc] initWithClientID:v5];
    contextManager = v8->_contextManager;
    v8->_contextManager = v15;

    v17 = objc_opt_new();
    contextHistoryWriter = v8->_contextHistoryWriter;
    v8->_contextHistoryWriter = v17;

    *&v8->hasEntitlementForNLData = 0;
    transaction = v8->transaction;
    v8->transaction = 0;
  }

  v20 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "PSService initialized", buf, 2u);
  }

  return v8;
}

- (void)invalidationHandler
{
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PSService,invalidationHandler", v3, 2u);
  }
}

- (void)interruptionHandler
{
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PSService,interruptionHandler", v3, 2u);
  }
}

- (void)clearMemoryAndExitCleanly
{
  v3 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PSService,clearMemoryAndExitCleanly", v4, 2u);
  }

  [(PersonalizedSensingService *)self releaseOSTransaction];
  xpc_transaction_exit_clean();
}

- (void)takeOSTransaction
{
  if (!self->transaction)
  {
    v9 = v2;
    v10 = v3;
    v5 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PSService,Taking OS Transaction", v8, 2u);
    }

    v6 = os_transaction_create();
    transaction = self->transaction;
    self->transaction = v6;
  }
}

- (void)releaseOSTransaction
{
  v3 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PSService,Releasing OS Transaction", v5, 2u);
  }

  transaction = self->transaction;
  if (transaction)
  {
    self->transaction = 0;
  }
}

- (BOOL)isFetchedContextDonationEnabled
{
  v2 = +[ACAccountStore defaultStore];
  v3 = [v2 aa_primaryAppleAccount];

  LOBYTE(v2) = [v3 isEnabledForDataclass:kAccountDataclassCloudPhotos];
  return v2;
}

- (void)fetchPersonalizedContextWithOptions:(id)a3 withReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->hasEntitlementForNLData)
  {
    [(PersonalizedSensingService *)self takeOSTransaction];
    v8 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "XPCFetchContexts", " enableTelemetry=YES ", buf, 2u);
    }

    v9 = [[MOPerformanceMeasurement alloc] initWithName:@"XPCFetchContexts" measureRecentPeak:0];
    [(MOPerformanceMeasurement *)v9 startSession];
    v10 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "PSService,fetchPersonalizedContextWithOptions", buf, 2u);
    }

    v11 = +[NSDate now];
    contextManager = self->_contextManager;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = __76__PersonalizedSensingService_fetchPersonalizedContextWithOptions_withReply___block_invoke;
    v16[3] = &unk_1000B4FB8;
    v16[4] = self;
    v17 = v6;
    v18 = v11;
    v19 = v9;
    v20 = v7;
    v13 = v9;
    v14 = v11;
    [(MOContextManager *)contextManager retrievePersonalizedContextWithOption:v17 handler:v16];
    [(PersonalizedSensingService *)self clearMemoryAndExitCleanly];
  }

  else
  {
    v15 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "PSService, application missing NL data entitlement", buf, 2u);
    }

    v22 = NSLocalizedDescriptionKey;
    v23 = @"PSService, application missing NL data entitlement";
    v14 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v13 = [NSError errorWithDomain:@"MOContextErrorDomain" code:1286 userInfo:v14];
    (*(v7 + 2))(v7, 0, v13);
  }
}

void __76__PersonalizedSensingService_fetchPersonalizedContextWithOptions_withReply___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v8 = a2;
  v35 = a3;
  v33 = a4;
  v32 = a5;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v37;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v37 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v36 + 1) + 8 * i);
        v14 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v15 = [v13 contextIdentifier];
          v16 = [v13 contextStrings];
          *buf = 138412546;
          v41 = v15;
          v42 = 2112;
          v43 = v16;
          _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "PSService, id, %@, contextString, %@", buf, 0x16u);
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v10);
  }

  if (!v35 && [v8 count])
  {
    v17 = [*(a1 + 32) isFetchedContextDonationEnabled];
    v18 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v17)
    {
      if (v19)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "fetchContext donation enabled iCloud sync", buf, 2u);
      }

      v18 = [*(a1 + 32) contextHistoryWriter];
      v20 = *(a1 + 40);
      v21 = [*(a1 + 32) clientBundleId];
      v22 = [*(a1 + 32) clientAlternateIdentifier];
      [v18 saveContextResults:v8 usingOptions:v20 clientBundleId:v21 clientAlternateId:v22];
    }

    else if (v19)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "fetchContext donation skipped by disabled iCloud sync", buf, 2u);
    }
  }

  v23 = +[NSDate now];
  [v23 timeIntervalSinceDate:*(a1 + 48)];
  v25 = v24;

  v26 = [MOContextAnalyticsManager alloc];
  v27 = *(a1 + 40);
  v28 = [NSNumber numberWithDouble:v25];
  v29 = [*(a1 + 32) clientAlternateIdentifier];
  v30 = [(MOContextAnalyticsManager *)v26 initWithContexts:v8 options:v27 error:v35 request:v33 executionTime:v28 clientAlternateId:v29 bundleContent:v32];

  [(MOContextAnalyticsManager *)v30 sendFetchAnalyticsEvent];
  [(MOContextAnalyticsManager *)v30 sendContextAnalyticsEvents];
  v31 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v31))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v31, OS_SIGNPOST_INTERVAL_END, 1uLL, "XPCFetchContexts", " enableTelemetry=YES ", buf, 2u);
  }

  [*(a1 + 56) endSession];
  (*(*(a1 + 64) + 16))();
}

- (void)fetchContextWithOptions:(id)a3 predicates:(id)a4 authorizedTypes:(id)a5 withReply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = v12;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "PSService, authorizedTypes,%@", buf, 0xCu);
  }

  if ([v12 isEqualToSet:self->dataAccessEntitlements])
  {
    [(PersonalizedSensingService *)self takeOSTransaction];
    v15 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
    if (os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "XPCFetchContextForPinning", " enableTelemetry=YES ", buf, 2u);
    }

    v16 = [[MOPerformanceMeasurement alloc] initWithName:@"XPCFetchContextForPinning" measureRecentPeak:0];
    [(MOPerformanceMeasurement *)v16 startSession];
    v17 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "PSService,fetchContextWithOptions", buf, 2u);
    }

    contextManager = self->_contextManager;
    v22 = _NSConcreteStackBlock;
    v23 = 3221225472;
    v24 = __91__PersonalizedSensingService_fetchContextWithOptions_predicates_authorizedTypes_withReply___block_invoke;
    v25 = &unk_1000B4FE0;
    v26 = v16;
    v27 = v13;
    v19 = v16;
    [(MOContextManager *)contextManager retrieveContextWithOption:v10 predicates:v11 authorizedTypes:v12 handler:&v22];
    [(PersonalizedSensingService *)self clearMemoryAndExitCleanly:v22];

    v20 = v26;
  }

  else
  {
    v21 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [PersonalizedSensingService fetchContextWithOptions:v21 predicates:? authorizedTypes:? withReply:?];
    }

    v28 = NSLocalizedDescriptionKey;
    v29 = @"PSService, context retrieval entitlement check failed";
    v19 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v20 = [NSError errorWithDomain:@"MOContextErrorDomain" code:1286 userInfo:v19];
    (*(v13 + 2))(v13, 0, v20);
  }
}

void __91__PersonalizedSensingService_fetchContextWithOptions_predicates_authorizedTypes_withReply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v14 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        v10 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v11 = [v9 contextIdentifier];
          v12 = [v9 contextStrings];
          *buf = 138412546;
          v21 = v11;
          v22 = 2112;
          v23 = v12;
          _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "PSService, id, %@, contextString, %@", buf, 0x16u);
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v6);
  }

  v13 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_END, 1uLL, "XPCFetchContextForPinning", " enableTelemetry=YES ", buf, 2u);
  }

  [*(a1 + 32) endSession];
  (*(*(a1 + 40) + 16))();
}

- (void)notifyContextFeedback:(id)a3 withReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(PersonalizedSensingService *)self takeOSTransaction];
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v8))
  {
    LOWORD(v13) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "XPCNotifyFeedback", "", &v13, 2u);
  }

  v9 = [[MOPerformanceMeasurement alloc] initWithName:@"XPCNotifyFeedback" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v9 startSession];
  v10 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v6 description];
    v13 = 138412290;
    v14 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "PSService, notifyContextFeedback, feedback,%@", &v13, 0xCu);
  }

  v12 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v12))
  {
    LOWORD(v13) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, 1uLL, "XPCNotifyFeedback", "", &v13, 2u);
  }

  [(MOPerformanceMeasurement *)v9 endSession];
  v7[2](v7, 1, 0);

  [(PersonalizedSensingService *)self clearMemoryAndExitCleanly];
}

- (void)requestDBAccessForPersonalizedSensingServiceWithReply:(id)a3
{
  v4 = a3;
  v5 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "XPCRequestDBAccess", " enableTelemetry=YES ", buf, 2u);
  }

  v6 = [[MOPerformanceMeasurement alloc] initWithName:@"XPCRequestDBAccess" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v6 startSession];
  [(PersonalizedSensingService *)self takeOSTransaction];
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PSService,requestDBAccessForPersonalizedSensingService", v12, 2u);
  }

  v8 = [(PersonalizedSensingService *)self contextManager];
  v9 = [v8 requestBackgroundProcessAccessForDB];

  v10 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v10))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, 1uLL, "XPCRequestDBAccess", " enableTelemetry=YES ", v11, 2u);
  }

  [(MOPerformanceMeasurement *)v6 endSession];
  v4[2](v4, v9);

  [(PersonalizedSensingService *)self clearMemoryAndExitCleanly];
}

- (void)refreshMomentsContextWithReply:(id)a3
{
  v4 = a3;
  [(PersonalizedSensingService *)self takeOSTransaction];
  v5 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, 1uLL, "XPCRefreshMomentsContext", "", buf, 2u);
  }

  v6 = [[MOPerformanceMeasurement alloc] initWithName:@"XPCRefreshMomentsContext" measureRecentPeak:0];
  [(MOPerformanceMeasurement *)v6 startSession];
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PSService, refreshMomentsContextWithReply", buf, 2u);
  }

  contextManager = self->_contextManager;
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = __61__PersonalizedSensingService_refreshMomentsContextWithReply___block_invoke;
  v14 = &unk_1000B5008;
  v15 = v6;
  v16 = v4;
  v9 = v4;
  v10 = v6;
  [(MOContextManager *)contextManager refreshMomentsContextWithReply:&v11];
  [(PersonalizedSensingService *)self clearMemoryAndExitCleanly:v11];
}

void __61__PersonalizedSensingService_refreshMomentsContextWithReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
  if (os_signpost_enabled(v4))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, 1uLL, "XPCRefreshMomentsContext", "", v5, 2u);
  }

  [*(a1 + 32) endSession];
  (*(*(a1 + 40) + 16))();
}

- (void)dealloc
{
  v3 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PSService,dealloc", buf, 2u);
  }

  [(PersonalizedSensingService *)self clearMemoryAndExitCleanly];
  v4.receiver = self;
  v4.super_class = PersonalizedSensingService;
  [(PersonalizedSensingService *)&v4 dealloc];
}

@end