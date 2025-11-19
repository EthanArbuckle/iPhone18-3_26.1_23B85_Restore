@interface MOContextManager
- (BOOL)requestBackgroundProcessAccessForDB;
- (MOContextManager)initWithClientID:(id)a3;
- (id)_activityStringFromEnum:(unint64_t)a3;
- (id)_bundleTypeFromContextType:(id)a3;
- (id)_createContextsWithBundleContents:(id)a3;
- (id)_createContextsWithBundleContents:(id)a3 authorizedTypes:(id)a4;
- (id)_createContextsWithStringDictArray:(id)a3 bundleContents:(id)a4;
- (id)_replacePredicate:(id)a3 forKeyPath:(id)a4 withNewKeyPath:(id)a5 newValue:(id)a6 comparisonType:(unint64_t)a7;
- (id)filterResults:(id)a3 withCriteria:(id)a4;
- (id)updatePredicateType:(id)a3;
- (unint64_t)_getActionTypeForBundleContent:(id)a3;
- (void)_addMetaDataToContext:(id)a3 bundleContent:(id)a4;
- (void)_addMetaDataToContextForRetrieval:(id)a3 bundleContent:(id)a4 authorizedTypes:(id)a5;
- (void)_addMusicMetaDataToContext:(id)a3 bundleContent:(id)a4;
- (void)_fetchContextWithOption:(id)a3 predicates:(id)a4 authorizedTypes:(id)a5 handler:(id)a6;
- (void)_fetchStoredContextsWithOption:(id)a3 request:(id)a4 handler:(id)a5;
- (void)_generateContextWithOption:(id)a3 request:(id)a4 handler:(id)a5;
- (void)_retrieveContextWithOption:(id)a3 predicate:(id)a4 authorizedTypes:(id)a5 handler:(id)a6;
- (void)_retrievePersonalizedContextWithOption:(id)a3 handler:(id)a4;
- (void)_storeNewContexts:(id)a3 withRequest:(id)a4;
- (void)refreshMomentsContextWithReply:(id)a3;
- (void)retrieveContextWithOption:(id)a3 predicates:(id)a4 authorizedTypes:(id)a5 handler:(id)a6;
- (void)retrievePersonalizedContextWithOption:(id)a3 handler:(id)a4;
@end

@implementation MOContextManager

- (MOContextManager)initWithClientID:(id)a3
{
  v5 = a3;
  v33.receiver = self;
  v33.super_class = MOContextManager;
  v6 = [(MOContextManager *)&v33 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("MOContextManager", v7);
    queue = v6->_queue;
    v6->_queue = v8;

    objc_storeStrong(&v6->_clientBundleId, a3);
    v10 = [[MOContextPersistenceManager alloc] initWithClientID:v6->_clientBundleId];
    persistenceManager = v6->_persistenceManager;
    v6->_persistenceManager = v10;

    v12 = [[MOContextStore alloc] initWithPersistenceManager:v6->_persistenceManager];
    contextStore = v6->_contextStore;
    v6->_contextStore = v12;

    v14 = objc_alloc_init(MOContextConfigurationManager);
    configurationManager = v6->_configurationManager;
    v6->_configurationManager = v14;

    v16 = [[MOTemplateStore alloc] initWithPersistenceManager:v6->_persistenceManager configurationManager:v6->_configurationManager];
    templatesStore = v6->_templatesStore;
    v6->_templatesStore = v16;

    v18 = [[MOTemplateBasedContextBuilder alloc] initWithTemplateStore:v6->_templatesStore ConfigurationManager:v6->_configurationManager];
    templateBasedContextBuilder = v6->_templateBasedContextBuilder;
    v6->_templateBasedContextBuilder = v18;

    v20 = objc_alloc_init(MOLabelBasedContextBuilder);
    labelBasedContextBuilder = v6->_labelBasedContextBuilder;
    v6->_labelBasedContextBuilder = v20;

    v22 = v6->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __37__MOContextManager_initWithClientID___block_invoke;
    block[3] = &unk_1000B7718;
    v32 = v5;
    dispatch_async(v22, block);
    v23 = [[MOClientRequestStore alloc] initWithPersistenceManager:v6->_persistenceManager];
    clientRequestStore = v6->_clientRequestStore;
    v6->_clientRequestStore = v23;

    v25 = objc_alloc_init(MOPromptManager);
    promptManager = v6->_promptManager;
    v6->_promptManager = v25;

    if (!v6->_promptManager)
    {
      v27 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        [MOContextManager initWithClientID:];
      }
    }

    v28 = [[MOBundleContentExtractor alloc] initWithConfigurationManager:v6->_configurationManager promptManager:v6->_promptManager];
    extractor = v6->_extractor;
    v6->_extractor = v28;
  }

  return v6;
}

void __37__MOContextManager_initWithClientID___block_invoke(uint64_t a1)
{
  v2 = +[MOApprovedApplicationsManager sharedInstance];
  [v2 registerClientsForDataAccess:*(a1 + 32)];
}

- (void)retrievePersonalizedContextWithOption:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __66__MOContextManager_retrievePersonalizedContextWithOption_handler___block_invoke;
  block[3] = &unk_1000B5470;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __66__MOContextManager_retrievePersonalizedContextWithOption_handler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = __66__MOContextManager_retrievePersonalizedContextWithOption_handler___block_invoke_2;
  v3[3] = &unk_1000B78F0;
  v4 = *(a1 + 48);
  [v1 _retrievePersonalizedContextWithOption:v2 handler:v3];
}

- (void)retrieveContextWithOption:(id)a3 predicates:(id)a4 authorizedTypes:(id)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __81__MOContextManager_retrieveContextWithOption_predicates_authorizedTypes_handler___block_invoke;
  block[3] = &unk_1000B7918;
  block[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_async(queue, block);
}

void __81__MOContextManager_retrieveContextWithOption_predicates_authorizedTypes_handler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __81__MOContextManager_retrieveContextWithOption_predicates_authorizedTypes_handler___block_invoke_2;
  v5[3] = &unk_1000B5358;
  v6 = *(a1 + 64);
  [v1 _retrieveContextWithOption:v2 predicate:v3 authorizedTypes:v4 handler:v5];
}

- (void)_retrievePersonalizedContextWithOption:(id)a3 handler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 contextRetrieval];
  v9 = [MOClientRequest alloc];
  v10 = +[NSUUID UUID];
  v11 = +[NSDate now];
  if (v8 == 2)
  {
    v12 = [(MOClientRequest *)v9 initWithRequestIdentifier:v10 requestType:2 creationDate:v11];

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = __67__MOContextManager__retrievePersonalizedContextWithOption_handler___block_invoke;
    v21[3] = &unk_1000B7940;
    v13 = &v23;
    v14 = &v22;
    v22 = v12;
    v23 = v6;
    v15 = v6;
    v16 = v12;
    [(MOContextManager *)self _generateContextWithOption:v7 request:v16 handler:v21];
  }

  else
  {
    v17 = [(MOClientRequest *)v9 initWithRequestIdentifier:v10 requestType:1 creationDate:v11];

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = __67__MOContextManager__retrievePersonalizedContextWithOption_handler___block_invoke_2;
    v18[3] = &unk_1000B7968;
    v13 = &v20;
    v14 = &v19;
    v19 = v17;
    v20 = v6;
    v15 = v17;
    v16 = v6;
    [(MOContextManager *)self _fetchStoredContextsWithOption:v7 request:v15 handler:v18];
  }
}

- (void)_retrieveContextWithOption:(id)a3 predicate:(id)a4 authorizedTypes:(id)a5 handler:(id)a6
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __81__MOContextManager__retrieveContextWithOption_predicate_authorizedTypes_handler___block_invoke;
  v11[3] = &unk_1000B5358;
  v12 = a6;
  v10 = v12;
  [(MOContextManager *)self _fetchContextWithOption:a3 predicates:a4 authorizedTypes:a5 handler:v11];
}

- (void)_generateContextWithOption:(id)a3 request:(id)a4 handler:(id)a5
{
  v7 = a4;
  v8 = a5;
  extractor = self->_extractor;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __63__MOContextManager__generateContextWithOption_request_handler___block_invoke;
  v12[3] = &unk_1000B4A98;
  v13 = v7;
  v14 = v8;
  v12[4] = self;
  v10 = v7;
  v11 = v8;
  [(MOBundleContentExtractor *)extractor extractContentsFromBundlesWithHandler:v12];
}

void __63__MOContextManager__generateContextWithOption_request_handler___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __63__MOContextManager__generateContextWithOption_request_handler___block_invoke_cold_1();
    }

    v8 = *(a1[6] + 2);
LABEL_5:
    v8();
    goto LABEL_16;
  }

  if (![v5 count])
  {
    v16 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "no content is extracted", buf, 2u);
    }

    v8 = *(a1[6] + 2);
    goto LABEL_5;
  }

  v9 = objc_opt_new();
  v10 = [a1[4] persistenceManager];
  v11 = [v10 available];

  if (v11)
  {
    v12 = [a1[4] templateBasedContextBuilder];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = __63__MOContextManager__generateContextWithOption_request_handler___block_invoke_118;
    v20[3] = &unk_1000B7990;
    v13 = v9;
    v14 = a1[4];
    v21 = v13;
    v22 = v14;
    v23 = v5;
    v24 = a1[5];
    v25 = a1[6];
    [v12 generateContextStringsFromBundleContents:v23 WithHandler:v20];

    v15 = v21;
  }

  else
  {
    v17 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __63__MOContextManager__generateContextWithOption_request_handler___block_invoke_cold_2();
    }

    v18 = a1[6];
    v27 = NSLocalizedDescriptionKey;
    v28 = @"MOContextManager: The context db is not available.";
    v15 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v19 = [NSError errorWithDomain:@"MOContextErrorDomain" code:769 userInfo:v15];
    v18[2](v18, 0, v19, v5);
  }

LABEL_16:
}

void __63__MOContextManager__generateContextWithOption_request_handler___block_invoke_118(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    [*(a1 + 32) addObject:v5];
  }

  v7 = [*(a1 + 40) _createContextsWithStringDictArray:*(a1 + 32) bundleContents:*(a1 + 48)];
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = 134217984;
    v11 = [v7 count];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "context count generated %ld", &v10, 0xCu);
  }

  [*(a1 + 40) _storeNewContexts:v7 withRequest:*(a1 + 56)];
  v9 = *(a1 + 48);
  (*(*(a1 + 64) + 16))();
}

- (void)_fetchContextWithOption:(id)a3 predicates:(id)a4 authorizedTypes:(id)a5 handler:(id)a6
{
  v20 = a3;
  v10 = a4;
  v23 = a5;
  v21 = a6;
  v11 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "_fetchContextWithOption", buf, 2u);
  }

  *buf = 0;
  v41 = buf;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__5;
  v44 = __Block_byref_object_dispose__5;
  v45 = +[NSMutableArray array];
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x3032000000;
  v38[3] = __Block_byref_object_copy__5;
  v38[4] = __Block_byref_object_dispose__5;
  v39 = +[NSMutableArray array];
  v12 = dispatch_group_create();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v10;
  v13 = [obj countByEnumeratingWithState:&v34 objects:v46 count:16];
  if (v13)
  {
    v14 = *v35;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v35 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v34 + 1) + 8 * i);
        v17 = [(MOContextManager *)self updatePredicateType:v16];
        dispatch_group_enter(v12);
        extractor = self->_extractor;
        v28[0] = _NSConcreteStackBlock;
        v28[1] = 3221225472;
        v28[2] = __79__MOContextManager__fetchContextWithOption_predicates_authorizedTypes_handler___block_invoke;
        v28[3] = &unk_1000B79B8;
        v32 = v38;
        v28[4] = self;
        v29 = v23;
        v30 = v16;
        v33 = buf;
        v31 = v12;
        [(MOBundleContentExtractor *)extractor extractContentsFromBundlesWithBundlePredicate:v17 contextPredicate:v16 handler:v28];
      }

      v13 = [obj countByEnumeratingWithState:&v34 objects:v46 count:16];
    }

    while (v13);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __79__MOContextManager__fetchContextWithOption_predicates_authorizedTypes_handler___block_invoke_125;
  block[3] = &unk_1000B79E0;
  v25 = v21;
  v26 = v38;
  v27 = buf;
  v19 = v21;
  dispatch_group_notify(v12, &_dispatch_main_q, block);

  _Block_object_dispose(v38, 8);
  _Block_object_dispose(buf, 8);
}

void __79__MOContextManager__fetchContextWithOption_predicates_authorizedTypes_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __79__MOContextManager__fetchContextWithOption_predicates_authorizedTypes_handler___block_invoke_cold_1(v6, v7);
    }

    v8 = *(*(*(a1 + 64) + 8) + 40);
    objc_sync_enter(v8);
    [*(*(*(a1 + 64) + 8) + 40) addObject:v6];
    objc_sync_exit(v8);
  }

  v9 = [v5 count] == 0;
  v10 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v9)
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "no content is extracted for predicate with contextType", buf, 2u);
    }
  }

  else
  {
    if (v11)
    {
      *buf = 134217984;
      v39 = [v5 count];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "contents count before filtering, %lu", buf, 0xCu);
    }

    v10 = [*(a1 + 32) _createContextsWithBundleContents:v5 authorizedTypes:*(a1 + 40)];
    v12 = [*(a1 + 48) filterCriteriaMap];
    v13 = v12 == 0;

    if (v13)
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v17 = v10;
      v23 = [v17 countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v23)
      {
        v24 = *v29;
        do
        {
          v25 = 0;
          do
          {
            if (*v29 != v24)
            {
              objc_enumerationMutation(v17);
            }

            v26 = *(*(*(a1 + 72) + 8) + 40);
            v27 = [*(*(&v28 + 1) + 8 * v25) copy];
            [v26 addObject:v27];

            v25 = v25 + 1;
          }

          while (v23 != v25);
          v23 = [v17 countByEnumeratingWithState:&v28 objects:v36 count:16];
        }

        while (v23);
      }
    }

    else
    {
      v14 = *(a1 + 32);
      v15 = [*(a1 + 48) filterCriteriaMap];
      v16 = [v14 filterResults:v10 withCriteria:v15];

      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v17 = v16;
      v18 = [v17 countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (v18)
      {
        v19 = *v33;
        do
        {
          v20 = 0;
          do
          {
            if (*v33 != v19)
            {
              objc_enumerationMutation(v17);
            }

            v21 = *(*(*(a1 + 72) + 8) + 40);
            v22 = [*(*(&v32 + 1) + 8 * v20) copy];
            [v21 addObject:v22];

            v20 = v20 + 1;
          }

          while (v18 != v20);
          v18 = [v17 countByEnumeratingWithState:&v32 objects:v37 count:16];
        }

        while (v18);
      }
    }
  }

  dispatch_group_leave(*(a1 + 56));
}

void __79__MOContextManager__fetchContextWithOption_predicates_authorizedTypes_handler___block_invoke_125(void *a1)
{
  v2 = [*(*(a1[5] + 8) + 40) count];
  v3 = a1[4];
  if (v2)
  {
    v7 = [*(*(a1[5] + 8) + 40) objectAtIndexedSubscript:0];
    (*(v3 + 16))(v3, 0, v7);
  }

  else
  {
    v4 = *(*(a1[6] + 8) + 40);
    v5 = *(v3 + 16);
    v6 = a1[4];

    v5(v6, v4, 0);
  }
}

- (id)filterResults:(id)a3 withCriteria:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSMutableArray array];
  v8 = [v6 objectForKeyedSubscript:@"distanceFromLocation"];
  v9 = [v8 objectForKeyedSubscript:@"targetLocation"];
  v10 = [v8 objectForKeyedSubscript:@"maxDistance"];
  if (v9)
  {
    v38 = 0;
    v11 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v9 error:&v38];
    v12 = v38;
    if (v12 || !v11)
    {
      v13 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [MOContextManager filterResults:withCriteria:];
      }

      v14 = &__NSArray0__struct;
      goto LABEL_30;
    }
  }

  else
  {
    v11 = 0;
  }

  [v10 doubleValue];
  v16 = v15;
  v17 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v41 = v16;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "distanceThreshold,%f", buf, 0xCu);
  }

  v33 = v10;
  v31 = v6;

  v18 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = [v5 count];
    *buf = 134217984;
    v41 = *&v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "filterResults, before count %lu", buf, 0xCu);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = v5;
  v20 = v5;
  v21 = [v20 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v35;
    if (v11)
    {
      v24 = v10 == 0;
    }

    else
    {
      v24 = 1;
    }

    v25 = !v24;
    do
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v35 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v27 = *(*(&v34 + 1) + 8 * i);
        if (!v25 || [*(*(&v34 + 1) + 8 * i) isWithinDistanceFromLocation:v11 maxDistance:v16])
        {
          [v7 addObject:v27];
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v22);
  }

  v28 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    v29 = [v7 count];
    *buf = 134217984;
    v41 = *&v29;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "filterResults, after count %lu", buf, 0xCu);
  }

  v14 = [v7 copy];
  v6 = v31;
  v5 = v32;
  v10 = v33;
LABEL_30:

  return v14;
}

- (id)_createContextsWithStringDictArray:(id)a3 bundleContents:(id)a4
{
  v33 = a3;
  v5 = a4;
  v31 = +[NSMutableArray array];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v5;
  v34 = [obj countByEnumeratingWithState:&v40 objects:v47 count:16];
  if (v34)
  {
    v32 = *v41;
    *&v6 = 138412290;
    v29 = v6;
    do
    {
      v7 = 0;
      do
      {
        if (*v41 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v40 + 1) + 8 * v7);
        v9 = [MOContext alloc];
        v10 = +[NSUUID UUID];
        v11 = +[NSDate now];
        v12 = [(MOContext *)v9 initWithContextIdentifier:v10 contextCreationTimestamp:v11];

        v13 = [v8 associatedBundleID];
        v14 = [v13 UUIDString];
        [(MOContext *)v12 setAssociatedBundleID:v14];

        v15 = [v8 associatedSuggestionID];
        v16 = [v15 UUIDString];
        [(MOContext *)v12 setAssociatedSuggestionID:v16];

        [(MOContext *)v12 setActionType:[(MOContextManager *)self _getActionTypeForBundleContent:v8]];
        v17 = [v8 bundleContentIdentifier];
        [(MOContext *)v12 setBundleContentIdentifier:v17];

        v18 = objc_opt_new();
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v19 = v33;
        v20 = [v19 countByEnumeratingWithState:&v36 objects:v46 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v37;
          do
          {
            for (i = 0; i != v21; i = i + 1)
            {
              if (*v37 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v36 + 1) + 8 * i);
              v25 = [v8 bundleContentIdentifier];
              v26 = [v24 objectForKey:v25];

              if ([v26 count])
              {
                [v18 addObjectsFromArray:v26];
              }
            }

            v21 = [v19 countByEnumeratingWithState:&v36 objects:v46 count:16];
          }

          while (v21);
        }

        if ([v18 count])
        {
          [(MOContext *)v12 setContextStrings:v18];
          [(MOContextManager *)self _addMetaDataToContext:v12 bundleContent:v8];
          v27 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            *buf = v29;
            v45 = v12;
            _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "create context %@", buf, 0xCu);
          }

          [v31 addObject:v12];
        }

        v7 = v7 + 1;
      }

      while (v7 != v34);
      v34 = [obj countByEnumeratingWithState:&v40 objects:v47 count:16];
    }

    while (v34);
  }

  return v31;
}

- (id)_createContextsWithBundleContents:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      v9 = 0;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v23 + 1) + 8 * v9);
        v11 = [MOContext alloc];
        v12 = +[NSUUID UUID];
        v13 = +[NSDate now];
        v14 = [(MOContext *)v11 initWithContextIdentifier:v12 contextCreationTimestamp:v13];

        v15 = [v10 associatedBundleID];
        v16 = [v15 UUIDString];
        [(MOContext *)v14 setAssociatedBundleID:v16];

        v17 = [v10 associatedSuggestionID];
        v18 = [v17 UUIDString];
        [(MOContext *)v14 setAssociatedSuggestionID:v18];

        [(MOContext *)v14 setActionType:[(MOContextManager *)self _getActionTypeForBundleContent:v10]];
        v19 = [v10 bundleContentIdentifier];
        [(MOContext *)v14 setBundleContentIdentifier:v19];

        [(MOContextManager *)self _addMetaDataToContext:v14 bundleContent:v10];
        v20 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v28 = v14;
          _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "create context %@", buf, 0xCu);
        }

        [v5 addObject:v14];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v7);
  }

  return v5;
}

- (id)_createContextsWithBundleContents:(id)a3 authorizedTypes:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSMutableArray array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v6;
  v9 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    do
    {
      v12 = 0;
      do
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v26 + 1) + 8 * v12);
        v14 = [MOContext alloc];
        v15 = +[NSUUID UUID];
        v16 = +[NSDate now];
        v17 = [(MOContext *)v14 initWithContextIdentifier:v15 contextCreationTimestamp:v16];

        v18 = [v13 associatedBundleID];
        v19 = [v18 UUIDString];
        [(MOContext *)v17 setAssociatedBundleID:v19];

        v20 = [v13 associatedSuggestionID];
        v21 = [v20 UUIDString];
        [(MOContext *)v17 setAssociatedSuggestionID:v21];

        [(MOContext *)v17 setActionType:[(MOContextManager *)self _getActionTypeForBundleContent:v13]];
        v22 = [v13 bundleContentIdentifier];
        [(MOContext *)v17 setBundleContentIdentifier:v22];

        [(MOContextManager *)self _addMetaDataToContextForRetrieval:v17 bundleContent:v13 authorizedTypes:v7];
        v23 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v31 = v17;
          _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "create context %@", buf, 0xCu);
        }

        [v8 addObject:v17];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v10);
  }

  return v8;
}

- (void)_addMetaDataToContext:(id)a3 bundleContent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 contextStrings];
  v9 = [v8 count];

  if (v9)
  {
    v33 = self;
    v34 = v6;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = [v6 contextStrings];
    v10 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = *v37;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v37 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v36 + 1) + 8 * i);
          if (([v18 contentType] & 4) != 0 && !v15)
          {
            v15 = [v7 placeName];
          }

          if (([v18 contentType] & 8) != 0 && !v14)
          {
            v14 = [v7 cityName];
          }

          if (([v18 contentType] & 1) != 0 && !v13)
          {
            v19 = [v7 personNames];
            v13 = [v19 firstObject];
          }

          if (([v18 contentType] & 0x4000) != 0 && !v12)
          {
            v20 = [v7 timeReference];
            v12 = [v20 capitalizedString];
          }
        }

        v11 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v11);
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
    }

    if (v15 | v14 && (v21 = [[MOContextLocationMetaData alloc] initWithPlace:v15 city:v14]) != 0)
    {
      v22 = v21;
      v23 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
      v6 = v34;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        [MOContextManager _addMetaDataToContext:bundleContent:];
      }

      v24 = [NSArray arrayWithObjects:v22, 0];
      [v34 setAssociatedLocations:v24];

      if (!v13)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v6 = v34;
      [v34 setAssociatedLocations:0];
      v22 = 0;
      if (!v13)
      {
        goto LABEL_35;
      }
    }

    v25 = [[MOContextContactMetaData alloc] initWithContactName:v13];
    if (v25)
    {
      v26 = v25;
      v27 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        [MOContextManager _addMetaDataToContext:bundleContent:];
      }

      v28 = [NSArray arrayWithObjects:v26, 0];
      [v6 setAssociatedContacts:v28];

      if (!v12)
      {
        goto LABEL_40;
      }

LABEL_36:
      v29 = [[MOContextTimeMetaData alloc] initWithTimeReferenceString:v12];
      if (v29)
      {
        v30 = v29;
        v31 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          [MOContextManager _addMetaDataToContext:bundleContent:];
        }

        v32 = [NSArray arrayWithObjects:v30, 0];
        [v6 setAssociatedTime:v32];

        goto LABEL_41;
      }

LABEL_40:
      [v6 setAssociatedTime:0];
LABEL_41:
      [(MOContextManager *)v33 _addMusicMetaDataToContext:v6 bundleContent:v7];

      goto LABEL_42;
    }

LABEL_35:
    [v6 setAssociatedContacts:0];
    v26 = 0;
    if (!v12)
    {
      goto LABEL_40;
    }

    goto LABEL_36;
  }

LABEL_42:
}

- (void)_addMetaDataToContextForRetrieval:(id)a3 bundleContent:(id)a4 authorizedTypes:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 placeName];

  if (v10)
  {
    v11 = [v8 placeName];
  }

  else
  {
    v11 = 0;
  }

  v12 = [v8 cityName];

  if (v12)
  {
    v13 = [v8 cityName];
  }

  else
  {
    v13 = 0;
  }

  v14 = [v8 timeReference];

  if (v14)
  {
    v15 = [v8 timeReference];
    v16 = [v15 capitalizedString];
  }

  else
  {
    v16 = 0;
  }

  v17 = [v8 startDate];

  if (v17)
  {
    v18 = [v8 startDate];
  }

  else
  {
    v18 = 0;
  }

  v19 = [v8 endDate];

  if (v19)
  {
    v20 = [v8 endDate];
  }

  else
  {
    v20 = 0;
  }

  v21 = [v8 location];

  if (v21)
  {
    v58 = [CLLocation alloc];
    v22 = [v8 location];
    [v22 latitude];
    v24 = v23;
    [v8 location];
    v25 = v8;
    v26 = v9;
    v27 = v20;
    v28 = v18;
    v29 = v16;
    v30 = v7;
    v31 = v13;
    v33 = v32 = v11;
    [v33 longitude];
    v59 = [v58 initWithLatitude:v24 longitude:v34];

    v11 = v32;
    v13 = v31;
    v7 = v30;
    v16 = v29;
    v18 = v28;
    v20 = v27;
    v9 = v26;
    v8 = v25;
  }

  else
  {
    v59 = 0;
  }

  if (![v9 containsObject:&off_1000C87D0])
  {
    goto LABEL_32;
  }

  if (v18 && v20)
  {
    v35 = [[MOContextTimeMetaData alloc] initWithStartDate:v18 endDate:v20 timeReferenceString:v16];
  }

  else
  {
    if (!v16 || v18 || v20)
    {
      goto LABEL_31;
    }

    v35 = [[MOContextTimeMetaData alloc] initWithTimeReferenceString:v16];
  }

  v36 = v35;
  if (!v35)
  {
LABEL_31:
    [v7 setAssociatedTime:0];
    goto LABEL_32;
  }

  v37 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    [MOContextManager _addMetaDataToContext:bundleContent:];
  }

  v38 = [NSArray arrayWithObjects:v36, 0];
  [v7 setAssociatedTime:v38];

LABEL_32:
  if ([v9 containsObject:&off_1000C87E8])
  {
    if (![v8 activityType])
    {
      goto LABEL_38;
    }

    v39 = [MOContextActivityMetaData alloc];
    -[MOContextManager _activityStringFromEnum:](self, "_activityStringFromEnum:", [v8 activityType]);
    v40 = v8;
    v41 = v9;
    v42 = v20;
    v43 = v18;
    v44 = v16;
    v45 = v7;
    v46 = v13;
    v48 = v47 = v11;
    v49 = [(MOContextActivityMetaData *)v39 initWithActivityType:v48];

    v11 = v47;
    v13 = v46;
    v7 = v45;
    v16 = v44;
    v18 = v43;
    v20 = v42;
    v9 = v41;
    v8 = v40;
    if (v49)
    {
      v50 = v49;
      v51 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
      {
        [MOContextManager _addMetaDataToContextForRetrieval:bundleContent:authorizedTypes:];
      }

      v52 = [NSArray arrayWithObjects:v50, 0];
      [v7 setAssociatedActivities:v52];
    }

    else
    {
LABEL_38:
      [v7 setAssociatedActivities:0];
    }
  }

  if ([v9 containsObject:&off_1000C8800])
  {
    if ((v11 || v13 || v59) && (v53 = [[MOContextLocationMetaData alloc] initWithPlace:v11 city:v13 location:v59]) != 0)
    {
      v54 = v53;
      v55 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
      {
        [MOContextManager _addMetaDataToContext:bundleContent:];
      }

      v56 = [NSArray arrayWithObjects:v54, 0];
      [v7 setAssociatedLocations:v56];
    }

    else
    {
      [v7 setAssociatedLocations:0];
    }
  }
}

- (id)_activityStringFromEnum:(unint64_t)a3
{
  if (a3 - 1 > 9)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_1000B7B50 + a3 - 1);
  }
}

- (void)_addMusicMetaDataToContext:(id)a3 bundleContent:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [v6 musicSuggestionSongTitle];
  if (v7)
  {

LABEL_4:
    v9 = [(MOTemplateBasedContextBuilder *)self->_templateBasedContextBuilder musicMetaDataWithArtistSongForBundleContent:v6];
    goto LABEL_5;
  }

  v8 = [v6 musicSuggestionArtistName];

  if (v8)
  {
    goto LABEL_4;
  }

  v9 = [(MOTemplateBasedContextBuilder *)self->_templateBasedContextBuilder musicMetaDataWithMoodForBundleContent:v6];
LABEL_5:
  v10 = v9;
  [v11 setAssociatedMusic:v9];
}

- (unint64_t)_getActionTypeForBundleContent:(id)a3
{
  v3 = a3;
  if ([v3 activityType])
  {
    v4 = 7;
  }

  else
  {
    v5 = [v3 bundleType];
    if ((v5 - 1) >= 6)
    {
      v4 = 0;
    }

    else
    {
      v4 = v5;
    }
  }

  return v4;
}

- (void)_fetchStoredContextsWithOption:(id)a3 request:(id)a4 handler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(MOContextManager *)self persistenceManager];
  v10 = [v9 available];

  if (v10)
  {
    v11 = [(MOContextManager *)self clientRequestStore];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = __67__MOContextManager__fetchStoredContextsWithOption_request_handler___block_invoke;
    v16[3] = &unk_1000B7A08;
    v16[4] = self;
    v17 = v8;
    [v11 fetchMostRecentClientRequestWithHandler:v16];

    v12 = [(MOContextManager *)self clientRequestStore];
    [v12 storeClientRequest:v7 handler:&__block_literal_global_7];
  }

  else
  {
    v13 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [MOContextManager _fetchStoredContextsWithOption:request:handler:];
    }

    v18 = NSLocalizedDescriptionKey;
    v19 = @"MOContextManager:_fetchStoredContextsWithOption, fail to fetch context as db is not available";
    v14 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v15 = [NSError errorWithDomain:@"MOContextErrorDomain" code:769 userInfo:v14];
    (*(v8 + 2))(v8, 0, v15);
  }
}

void __67__MOContextManager__fetchStoredContextsWithOption_request_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 contextStore];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __67__MOContextManager__fetchStoredContextsWithOption_request_handler___block_invoke_2;
  v6[3] = &unk_1000B5358;
  v7 = *(a1 + 40);
  [v5 fetchContextsGeneratedFromClientRequest:v4 handler:v6];
}

void __67__MOContextManager__fetchStoredContextsWithOption_request_handler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 134217984;
    v9 = [v5 count];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "context count from cache %ld", &v8, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __67__MOContextManager__fetchStoredContextsWithOption_request_handler___block_invoke_179(id a1, NSError *a2)
{
  v2 = a2;
  v3 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __67__MOContextManager__fetchStoredContextsWithOption_request_handler___block_invoke_179_cold_1();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "store client request succeeded", v5, 2u);
  }
}

- (void)_storeNewContexts:(id)a3 withRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MOContextManager *)self persistenceManager];
  v9 = [v8 available];

  if (v9)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v23 = v6;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v25;
      do
      {
        v14 = 0;
        do
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v24 + 1) + 8 * v14);
          v16 = objc_autoreleasePoolPush();
          v17 = [v7 requestIdentifier];
          v18 = [v17 UUIDString];
          [v15 setAssociatedRequestID:v18];

          objc_autoreleasePoolPop(v16);
          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v12);
    }

    v19 = [(MOContextManager *)self contextStore];
    [v19 removeExpiredContextWithHandler:&__block_literal_global_185];

    v20 = [(MOContextManager *)self contextStore];
    [v20 storeContexts:v10 handler:&__block_literal_global_188];

    v21 = [(MOContextManager *)self clientRequestStore];
    [v21 removeExpiredClientRequestsWithHandler:&__block_literal_global_191];

    v22 = [(MOContextManager *)self clientRequestStore];
    [v22 storeClientRequest:v7 handler:&__block_literal_global_194];
    v6 = v23;
  }

  else
  {
    v22 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [MOContextManager _storeNewContexts:withRequest:];
    }
  }
}

void __50__MOContextManager__storeNewContexts_withRequest___block_invoke(id a1, NSError *a2)
{
  v2 = a2;
  v3 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __50__MOContextManager__storeNewContexts_withRequest___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "remove expired context succeeded", v5, 2u);
  }
}

void __50__MOContextManager__storeNewContexts_withRequest___block_invoke_186(id a1, NSError *a2)
{
  v2 = a2;
  v3 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __50__MOContextManager__storeNewContexts_withRequest___block_invoke_186_cold_1();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "store context succeeded", v5, 2u);
  }
}

void __50__MOContextManager__storeNewContexts_withRequest___block_invoke_189(id a1, NSError *a2)
{
  v2 = a2;
  v3 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __50__MOContextManager__storeNewContexts_withRequest___block_invoke_189_cold_1();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "remove expired client requests succeeded", v5, 2u);
  }
}

void __50__MOContextManager__storeNewContexts_withRequest___block_invoke_192(id a1, NSError *a2)
{
  v2 = a2;
  v3 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __67__MOContextManager__fetchStoredContextsWithOption_request_handler___block_invoke_179_cold_1();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "store client request succeeded", v5, 2u);
  }
}

- (BOOL)requestBackgroundProcessAccessForDB
{
  v3 = [(MOContextManager *)self persistenceManager];
  v4 = [v3 acquireBackgroundProcessingPermissionsWithClientID:self->_clientBundleId];

  v5 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v4 == 1)
  {
    if (v6)
    {
      v16 = 0;
      v7 = "Succeed to update background processing assertion";
      v8 = &v16;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, v7, v8, 2u);
    }
  }

  else if (v6)
  {
    v15 = 0;
    v7 = "Fail to update background processing assertion";
    v8 = &v15;
    goto LABEL_6;
  }

  v9 = v4 == 1;

  v10 = [(MOContextManager *)self promptManager];
  [v10 acquireBackgroundProcessingPermissionsForMomentsWithHander:&__block_literal_global_197];

  v11 = [(MOContextManager *)self persistenceManager];
  v12 = [v11 available];

  v13 = [[MOContextAnalyticsManager alloc] initWithAssertionErrorState:v4 dbAvailability:v12];
  [(MOContextAnalyticsManager *)v13 sendAssertionAnalyticsEvent];

  return v9;
}

void __55__MOContextManager_requestBackgroundProcessAccessForDB__block_invoke(id a1, BOOL a2)
{
  v2 = a2;
  v3 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Succeed to update background processing assertion for bundle DB", v5, 2u);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __55__MOContextManager_requestBackgroundProcessAccessForDB__block_invoke_cold_1();
  }
}

- (id)updatePredicateType:(id)a3
{
  v4 = a3;
  v5 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "updatePredicateType", buf, 2u);
  }

  v6 = [v4 fetchRequestPredicate];
  v7 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:0];
  [v7 allowEvaluation];
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 predicateFormat];
    *buf = 138412290;
    v41 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "deserializedfetchRequestPredicate, %@", buf, 0xCu);
  }

  v10 = [v4 filterCriteriaMap];
  v11 = +[NSNull null];
  v12 = [v10 isEqual:v11];

  if (v12)
  {
    v35 = 0;
  }

  else
  {
    v35 = [v4 filterCriteriaMap];
  }

  objc_opt_class();
  v37 = v6;
  v38 = v4;
  v36 = v7;
  if (objc_opt_isKindOfClass())
  {
    v13 = [v7 subpredicates];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = v7;
      v14 = [NSArray arrayWithObjects:&v39 count:1];
      v15 = [NSCompoundPredicate andPredicateWithSubpredicates:v14];

      v13 = [v15 subpredicates];
    }

    else
    {
      v13 = 0;
    }
  }

  v16 = [NSMutableArray arrayWithArray:v13, v13];
  if ([v16 count])
  {
    v17 = 0;
    do
    {
      v18 = [v16 objectAtIndexedSubscript:v17];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = v18;
        v20 = [v19 leftExpression];
        v21 = [v20 keyPath];
        v22 = [v21 isEqualToString:@"contextType"];

        if (v22)
        {
          v23 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "updating contextType", buf, 2u);
          }

          v24 = [v19 rightExpression];
          v25 = [v24 constantValue];

          v26 = [(MOContextManager *)self _bundleTypeFromContextType:v25];
          v27 = [(MOContextManager *)self _replacePredicate:v19 forKeyPath:@"contextType" withNewKeyPath:@"interfaceType" newValue:v26 comparisonType:4];
          [v16 setObject:v27 atIndexedSubscript:v17];
        }
      }

      ++v17;
    }

    while ([v16 count] > v17);
  }

  v28 = [NSCompoundPredicate andPredicateWithSubpredicates:v16];
  v29 = [NSKeyedArchiver archivedDataWithRootObject:v28 requiringSecureCoding:1 error:0];
  v30 = [MOContextPredicate alloc];
  v31 = [v38 metadataTypes];
  v32 = [(MOContextPredicate *)v30 initWithPredicate:v29 filter:v35 metadataTypes:v31];

  return v32;
}

- (id)_replacePredicate:(id)a3 forKeyPath:(id)a4 withNewKeyPath:(id)a5 newValue:(id)a6 comparisonType:(unint64_t)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v11;
    v16 = [v15 leftExpression];
    v17 = [v16 keyPath];
    v18 = [v17 isEqualToString:v12];

    if (v18)
    {
      v19 = [NSExpression expressionForKeyPath:v13];
      v20 = [NSExpression expressionForConstantValue:v14];
      v21 = +[NSComparisonPredicate predicateWithLeftExpression:rightExpression:modifier:type:options:](NSComparisonPredicate, "predicateWithLeftExpression:rightExpression:modifier:type:options:", v19, v20, [v15 comparisonPredicateModifier], a7, objc_msgSend(v15, "options"));

      goto LABEL_6;
    }
  }

  v21 = v11;
LABEL_6:

  return v21;
}

- (id)_bundleTypeFromContextType:(id)a3
{
  v3 = a3;
  v4 = [v3 integerValue];
  if ((v4 - 1) > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_1000A7978[(v4 - 1)];
  }

  v6 = [NSNumber numberWithUnsignedInteger:v5];
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v3;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "contextType,%@,bundletype,%@", &v9, 0x16u);
  }

  return v6;
}

- (void)refreshMomentsContextWithReply:(id)a3
{
  v4 = a3;
  v5 = [(MOContextManager *)self promptManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __51__MOContextManager_refreshMomentsContextWithReply___block_invoke;
  v7[3] = &unk_1000B7B30;
  v8 = v4;
  v6 = v4;
  [v5 softRefreshEventsWithRefreshVariant:1536 andIgnoreLastTrigger:0 andHandler:v7];
}

void __51__MOContextManager_refreshMomentsContextWithReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __51__MOContextManager_refreshMomentsContextWithReply___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __63__MOContextManager__generateContextWithOption_request_handler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __63__MOContextManager__generateContextWithOption_request_handler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __79__MOContextManager__fetchContextWithOption_predicates_authorizedTypes_handler___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v3 = [a1 localizedDescription];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "extract content hits error, %@", v4, 0xCu);
}

- (void)filterResults:withCriteria:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_fetchStoredContextsWithOption:request:handler:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __67__MOContextManager__fetchStoredContextsWithOption_request_handler___block_invoke_179_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_storeNewContexts:withRequest:.cold.1()
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __50__MOContextManager__storeNewContexts_withRequest___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __50__MOContextManager__storeNewContexts_withRequest___block_invoke_186_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __50__MOContextManager__storeNewContexts_withRequest___block_invoke_189_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __55__MOContextManager_requestBackgroundProcessAccessForDB__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __51__MOContextManager_refreshMomentsContextWithReply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end