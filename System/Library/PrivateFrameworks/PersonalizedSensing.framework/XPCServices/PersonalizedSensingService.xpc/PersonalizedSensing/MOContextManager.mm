@interface MOContextManager
- (BOOL)requestBackgroundProcessAccessForDB;
- (MOContextManager)initWithClientID:(id)d;
- (id)_activityStringFromEnum:(unint64_t)enum;
- (id)_bundleTypeFromContextType:(id)type;
- (id)_createContextsWithBundleContents:(id)contents;
- (id)_createContextsWithBundleContents:(id)contents authorizedTypes:(id)types;
- (id)_createContextsWithStringDictArray:(id)array bundleContents:(id)contents;
- (id)_replacePredicate:(id)predicate forKeyPath:(id)path withNewKeyPath:(id)keyPath newValue:(id)value comparisonType:(unint64_t)type;
- (id)filterResults:(id)results withCriteria:(id)criteria;
- (id)updatePredicateType:(id)type;
- (unint64_t)_getActionTypeForBundleContent:(id)content;
- (void)_addMetaDataToContext:(id)context bundleContent:(id)content;
- (void)_addMetaDataToContextForRetrieval:(id)retrieval bundleContent:(id)content authorizedTypes:(id)types;
- (void)_addMusicMetaDataToContext:(id)context bundleContent:(id)content;
- (void)_fetchContextWithOption:(id)option predicates:(id)predicates authorizedTypes:(id)types handler:(id)handler;
- (void)_fetchStoredContextsWithOption:(id)option request:(id)request handler:(id)handler;
- (void)_generateContextWithOption:(id)option request:(id)request handler:(id)handler;
- (void)_retrieveContextWithOption:(id)option predicate:(id)predicate authorizedTypes:(id)types handler:(id)handler;
- (void)_retrievePersonalizedContextWithOption:(id)option handler:(id)handler;
- (void)_storeNewContexts:(id)contexts withRequest:(id)request;
- (void)refreshMomentsContextWithReply:(id)reply;
- (void)retrieveContextWithOption:(id)option predicates:(id)predicates authorizedTypes:(id)types handler:(id)handler;
- (void)retrievePersonalizedContextWithOption:(id)option handler:(id)handler;
@end

@implementation MOContextManager

- (MOContextManager)initWithClientID:(id)d
{
  dCopy = d;
  v33.receiver = self;
  v33.super_class = MOContextManager;
  v6 = [(MOContextManager *)&v33 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("MOContextManager", v7);
    queue = v6->_queue;
    v6->_queue = v8;

    objc_storeStrong(&v6->_clientBundleId, d);
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
    v32 = dCopy;
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

- (void)retrievePersonalizedContextWithOption:(id)option handler:(id)handler
{
  optionCopy = option;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __66__MOContextManager_retrievePersonalizedContextWithOption_handler___block_invoke;
  block[3] = &unk_1000B5470;
  block[4] = self;
  v12 = optionCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = optionCopy;
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

- (void)retrieveContextWithOption:(id)option predicates:(id)predicates authorizedTypes:(id)types handler:(id)handler
{
  optionCopy = option;
  predicatesCopy = predicates;
  typesCopy = types;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __81__MOContextManager_retrieveContextWithOption_predicates_authorizedTypes_handler___block_invoke;
  block[3] = &unk_1000B7918;
  block[4] = self;
  v20 = optionCopy;
  v21 = predicatesCopy;
  v22 = typesCopy;
  v23 = handlerCopy;
  v15 = handlerCopy;
  v16 = typesCopy;
  v17 = predicatesCopy;
  v18 = optionCopy;
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

- (void)_retrievePersonalizedContextWithOption:(id)option handler:(id)handler
{
  handlerCopy = handler;
  optionCopy = option;
  contextRetrieval = [optionCopy contextRetrieval];
  v9 = [MOClientRequest alloc];
  v10 = +[NSUUID UUID];
  v11 = +[NSDate now];
  if (contextRetrieval == 2)
  {
    v12 = [(MOClientRequest *)v9 initWithRequestIdentifier:v10 requestType:2 creationDate:v11];

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = __67__MOContextManager__retrievePersonalizedContextWithOption_handler___block_invoke;
    v21[3] = &unk_1000B7940;
    v13 = &v23;
    v14 = &v22;
    v22 = v12;
    v23 = handlerCopy;
    v15 = handlerCopy;
    v16 = v12;
    [(MOContextManager *)self _generateContextWithOption:optionCopy request:v16 handler:v21];
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
    v20 = handlerCopy;
    v15 = v17;
    v16 = handlerCopy;
    [(MOContextManager *)self _fetchStoredContextsWithOption:optionCopy request:v15 handler:v18];
  }
}

- (void)_retrieveContextWithOption:(id)option predicate:(id)predicate authorizedTypes:(id)types handler:(id)handler
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __81__MOContextManager__retrieveContextWithOption_predicate_authorizedTypes_handler___block_invoke;
  v11[3] = &unk_1000B5358;
  handlerCopy = handler;
  v10 = handlerCopy;
  [(MOContextManager *)self _fetchContextWithOption:option predicates:predicate authorizedTypes:types handler:v11];
}

- (void)_generateContextWithOption:(id)option request:(id)request handler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  extractor = self->_extractor;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __63__MOContextManager__generateContextWithOption_request_handler___block_invoke;
  v12[3] = &unk_1000B4A98;
  v13 = requestCopy;
  v14 = handlerCopy;
  v12[4] = self;
  v10 = requestCopy;
  v11 = handlerCopy;
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

- (void)_fetchContextWithOption:(id)option predicates:(id)predicates authorizedTypes:(id)types handler:(id)handler
{
  optionCopy = option;
  predicatesCopy = predicates;
  typesCopy = types;
  handlerCopy = handler;
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
  obj = predicatesCopy;
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
        v29 = typesCopy;
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
  v25 = handlerCopy;
  v26 = v38;
  v27 = buf;
  v19 = handlerCopy;
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

- (id)filterResults:(id)results withCriteria:(id)criteria
{
  resultsCopy = results;
  criteriaCopy = criteria;
  v7 = +[NSMutableArray array];
  v8 = [criteriaCopy objectForKeyedSubscript:@"distanceFromLocation"];
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
  v31 = criteriaCopy;

  v18 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = [resultsCopy count];
    *buf = 134217984;
    v41 = *&v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "filterResults, before count %lu", buf, 0xCu);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = resultsCopy;
  v20 = resultsCopy;
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
  criteriaCopy = v31;
  resultsCopy = v32;
  v10 = v33;
LABEL_30:

  return v14;
}

- (id)_createContextsWithStringDictArray:(id)array bundleContents:(id)contents
{
  arrayCopy = array;
  contentsCopy = contents;
  v31 = +[NSMutableArray array];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = contentsCopy;
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

        associatedBundleID = [v8 associatedBundleID];
        uUIDString = [associatedBundleID UUIDString];
        [(MOContext *)v12 setAssociatedBundleID:uUIDString];

        associatedSuggestionID = [v8 associatedSuggestionID];
        uUIDString2 = [associatedSuggestionID UUIDString];
        [(MOContext *)v12 setAssociatedSuggestionID:uUIDString2];

        [(MOContext *)v12 setActionType:[(MOContextManager *)self _getActionTypeForBundleContent:v8]];
        bundleContentIdentifier = [v8 bundleContentIdentifier];
        [(MOContext *)v12 setBundleContentIdentifier:bundleContentIdentifier];

        v18 = objc_opt_new();
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v19 = arrayCopy;
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
              bundleContentIdentifier2 = [v8 bundleContentIdentifier];
              v26 = [v24 objectForKey:bundleContentIdentifier2];

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

- (id)_createContextsWithBundleContents:(id)contents
{
  contentsCopy = contents;
  v5 = +[NSMutableArray array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = contentsCopy;
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

        associatedBundleID = [v10 associatedBundleID];
        uUIDString = [associatedBundleID UUIDString];
        [(MOContext *)v14 setAssociatedBundleID:uUIDString];

        associatedSuggestionID = [v10 associatedSuggestionID];
        uUIDString2 = [associatedSuggestionID UUIDString];
        [(MOContext *)v14 setAssociatedSuggestionID:uUIDString2];

        [(MOContext *)v14 setActionType:[(MOContextManager *)self _getActionTypeForBundleContent:v10]];
        bundleContentIdentifier = [v10 bundleContentIdentifier];
        [(MOContext *)v14 setBundleContentIdentifier:bundleContentIdentifier];

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

- (id)_createContextsWithBundleContents:(id)contents authorizedTypes:(id)types
{
  contentsCopy = contents;
  typesCopy = types;
  v8 = +[NSMutableArray array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = contentsCopy;
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

        associatedBundleID = [v13 associatedBundleID];
        uUIDString = [associatedBundleID UUIDString];
        [(MOContext *)v17 setAssociatedBundleID:uUIDString];

        associatedSuggestionID = [v13 associatedSuggestionID];
        uUIDString2 = [associatedSuggestionID UUIDString];
        [(MOContext *)v17 setAssociatedSuggestionID:uUIDString2];

        [(MOContext *)v17 setActionType:[(MOContextManager *)self _getActionTypeForBundleContent:v13]];
        bundleContentIdentifier = [v13 bundleContentIdentifier];
        [(MOContext *)v17 setBundleContentIdentifier:bundleContentIdentifier];

        [(MOContextManager *)self _addMetaDataToContextForRetrieval:v17 bundleContent:v13 authorizedTypes:typesCopy];
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

- (void)_addMetaDataToContext:(id)context bundleContent:(id)content
{
  contextCopy = context;
  contentCopy = content;
  contextStrings = [contextCopy contextStrings];
  v9 = [contextStrings count];

  if (v9)
  {
    selfCopy = self;
    v34 = contextCopy;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = [contextCopy contextStrings];
    v10 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v10)
    {
      v11 = v10;
      capitalizedString = 0;
      firstObject = 0;
      cityName = 0;
      placeName = 0;
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
          if (([v18 contentType] & 4) != 0 && !placeName)
          {
            placeName = [contentCopy placeName];
          }

          if (([v18 contentType] & 8) != 0 && !cityName)
          {
            cityName = [contentCopy cityName];
          }

          if (([v18 contentType] & 1) != 0 && !firstObject)
          {
            personNames = [contentCopy personNames];
            firstObject = [personNames firstObject];
          }

          if (([v18 contentType] & 0x4000) != 0 && !capitalizedString)
          {
            timeReference = [contentCopy timeReference];
            capitalizedString = [timeReference capitalizedString];
          }
        }

        v11 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v11);
    }

    else
    {
      capitalizedString = 0;
      firstObject = 0;
      cityName = 0;
      placeName = 0;
    }

    if (placeName | cityName && (v21 = [[MOContextLocationMetaData alloc] initWithPlace:placeName city:cityName]) != 0)
    {
      v22 = v21;
      v23 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
      contextCopy = v34;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        [MOContextManager _addMetaDataToContext:bundleContent:];
      }

      v24 = [NSArray arrayWithObjects:v22, 0];
      [v34 setAssociatedLocations:v24];

      if (!firstObject)
      {
        goto LABEL_35;
      }
    }

    else
    {
      contextCopy = v34;
      [v34 setAssociatedLocations:0];
      v22 = 0;
      if (!firstObject)
      {
        goto LABEL_35;
      }
    }

    v25 = [[MOContextContactMetaData alloc] initWithContactName:firstObject];
    if (v25)
    {
      v26 = v25;
      v27 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        [MOContextManager _addMetaDataToContext:bundleContent:];
      }

      v28 = [NSArray arrayWithObjects:v26, 0];
      [contextCopy setAssociatedContacts:v28];

      if (!capitalizedString)
      {
        goto LABEL_40;
      }

LABEL_36:
      v29 = [[MOContextTimeMetaData alloc] initWithTimeReferenceString:capitalizedString];
      if (v29)
      {
        v30 = v29;
        v31 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          [MOContextManager _addMetaDataToContext:bundleContent:];
        }

        v32 = [NSArray arrayWithObjects:v30, 0];
        [contextCopy setAssociatedTime:v32];

        goto LABEL_41;
      }

LABEL_40:
      [contextCopy setAssociatedTime:0];
LABEL_41:
      [(MOContextManager *)selfCopy _addMusicMetaDataToContext:contextCopy bundleContent:contentCopy];

      goto LABEL_42;
    }

LABEL_35:
    [contextCopy setAssociatedContacts:0];
    v26 = 0;
    if (!capitalizedString)
    {
      goto LABEL_40;
    }

    goto LABEL_36;
  }

LABEL_42:
}

- (void)_addMetaDataToContextForRetrieval:(id)retrieval bundleContent:(id)content authorizedTypes:(id)types
{
  retrievalCopy = retrieval;
  contentCopy = content;
  typesCopy = types;
  placeName = [contentCopy placeName];

  if (placeName)
  {
    placeName2 = [contentCopy placeName];
  }

  else
  {
    placeName2 = 0;
  }

  cityName = [contentCopy cityName];

  if (cityName)
  {
    cityName2 = [contentCopy cityName];
  }

  else
  {
    cityName2 = 0;
  }

  timeReference = [contentCopy timeReference];

  if (timeReference)
  {
    timeReference2 = [contentCopy timeReference];
    capitalizedString = [timeReference2 capitalizedString];
  }

  else
  {
    capitalizedString = 0;
  }

  startDate = [contentCopy startDate];

  if (startDate)
  {
    startDate2 = [contentCopy startDate];
  }

  else
  {
    startDate2 = 0;
  }

  endDate = [contentCopy endDate];

  if (endDate)
  {
    endDate2 = [contentCopy endDate];
  }

  else
  {
    endDate2 = 0;
  }

  location = [contentCopy location];

  if (location)
  {
    v58 = [CLLocation alloc];
    location2 = [contentCopy location];
    [location2 latitude];
    v24 = v23;
    [contentCopy location];
    v25 = contentCopy;
    v26 = typesCopy;
    v27 = endDate2;
    v28 = startDate2;
    v29 = capitalizedString;
    v30 = retrievalCopy;
    v31 = cityName2;
    v33 = v32 = placeName2;
    [v33 longitude];
    v59 = [v58 initWithLatitude:v24 longitude:v34];

    placeName2 = v32;
    cityName2 = v31;
    retrievalCopy = v30;
    capitalizedString = v29;
    startDate2 = v28;
    endDate2 = v27;
    typesCopy = v26;
    contentCopy = v25;
  }

  else
  {
    v59 = 0;
  }

  if (![typesCopy containsObject:&off_1000C87D0])
  {
    goto LABEL_32;
  }

  if (startDate2 && endDate2)
  {
    v35 = [[MOContextTimeMetaData alloc] initWithStartDate:startDate2 endDate:endDate2 timeReferenceString:capitalizedString];
  }

  else
  {
    if (!capitalizedString || startDate2 || endDate2)
    {
      goto LABEL_31;
    }

    v35 = [[MOContextTimeMetaData alloc] initWithTimeReferenceString:capitalizedString];
  }

  v36 = v35;
  if (!v35)
  {
LABEL_31:
    [retrievalCopy setAssociatedTime:0];
    goto LABEL_32;
  }

  v37 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    [MOContextManager _addMetaDataToContext:bundleContent:];
  }

  v38 = [NSArray arrayWithObjects:v36, 0];
  [retrievalCopy setAssociatedTime:v38];

LABEL_32:
  if ([typesCopy containsObject:&off_1000C87E8])
  {
    if (![contentCopy activityType])
    {
      goto LABEL_38;
    }

    v39 = [MOContextActivityMetaData alloc];
    -[MOContextManager _activityStringFromEnum:](self, "_activityStringFromEnum:", [contentCopy activityType]);
    v40 = contentCopy;
    v41 = typesCopy;
    v42 = endDate2;
    v43 = startDate2;
    v44 = capitalizedString;
    v45 = retrievalCopy;
    v46 = cityName2;
    v48 = v47 = placeName2;
    v49 = [(MOContextActivityMetaData *)v39 initWithActivityType:v48];

    placeName2 = v47;
    cityName2 = v46;
    retrievalCopy = v45;
    capitalizedString = v44;
    startDate2 = v43;
    endDate2 = v42;
    typesCopy = v41;
    contentCopy = v40;
    if (v49)
    {
      v50 = v49;
      v51 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
      {
        [MOContextManager _addMetaDataToContextForRetrieval:bundleContent:authorizedTypes:];
      }

      v52 = [NSArray arrayWithObjects:v50, 0];
      [retrievalCopy setAssociatedActivities:v52];
    }

    else
    {
LABEL_38:
      [retrievalCopy setAssociatedActivities:0];
    }
  }

  if ([typesCopy containsObject:&off_1000C8800])
  {
    if ((placeName2 || cityName2 || v59) && (v53 = [[MOContextLocationMetaData alloc] initWithPlace:placeName2 city:cityName2 location:v59]) != 0)
    {
      v54 = v53;
      v55 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
      {
        [MOContextManager _addMetaDataToContext:bundleContent:];
      }

      v56 = [NSArray arrayWithObjects:v54, 0];
      [retrievalCopy setAssociatedLocations:v56];
    }

    else
    {
      [retrievalCopy setAssociatedLocations:0];
    }
  }
}

- (id)_activityStringFromEnum:(unint64_t)enum
{
  if (enum - 1 > 9)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_1000B7B50 + enum - 1);
  }
}

- (void)_addMusicMetaDataToContext:(id)context bundleContent:(id)content
{
  contextCopy = context;
  contentCopy = content;
  musicSuggestionSongTitle = [contentCopy musicSuggestionSongTitle];
  if (musicSuggestionSongTitle)
  {

LABEL_4:
    v9 = [(MOTemplateBasedContextBuilder *)self->_templateBasedContextBuilder musicMetaDataWithArtistSongForBundleContent:contentCopy];
    goto LABEL_5;
  }

  musicSuggestionArtistName = [contentCopy musicSuggestionArtistName];

  if (musicSuggestionArtistName)
  {
    goto LABEL_4;
  }

  v9 = [(MOTemplateBasedContextBuilder *)self->_templateBasedContextBuilder musicMetaDataWithMoodForBundleContent:contentCopy];
LABEL_5:
  v10 = v9;
  [contextCopy setAssociatedMusic:v9];
}

- (unint64_t)_getActionTypeForBundleContent:(id)content
{
  contentCopy = content;
  if ([contentCopy activityType])
  {
    v4 = 7;
  }

  else
  {
    bundleType = [contentCopy bundleType];
    if ((bundleType - 1) >= 6)
    {
      v4 = 0;
    }

    else
    {
      v4 = bundleType;
    }
  }

  return v4;
}

- (void)_fetchStoredContextsWithOption:(id)option request:(id)request handler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  persistenceManager = [(MOContextManager *)self persistenceManager];
  available = [persistenceManager available];

  if (available)
  {
    clientRequestStore = [(MOContextManager *)self clientRequestStore];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = __67__MOContextManager__fetchStoredContextsWithOption_request_handler___block_invoke;
    v16[3] = &unk_1000B7A08;
    v16[4] = self;
    v17 = handlerCopy;
    [clientRequestStore fetchMostRecentClientRequestWithHandler:v16];

    clientRequestStore2 = [(MOContextManager *)self clientRequestStore];
    [clientRequestStore2 storeClientRequest:requestCopy handler:&__block_literal_global_7];
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
    (*(handlerCopy + 2))(handlerCopy, 0, v15);
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

- (void)_storeNewContexts:(id)contexts withRequest:(id)request
{
  contextsCopy = contexts;
  requestCopy = request;
  persistenceManager = [(MOContextManager *)self persistenceManager];
  available = [persistenceManager available];

  if (available)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v23 = contextsCopy;
    v10 = contextsCopy;
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
          requestIdentifier = [requestCopy requestIdentifier];
          uUIDString = [requestIdentifier UUIDString];
          [v15 setAssociatedRequestID:uUIDString];

          objc_autoreleasePoolPop(v16);
          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v12);
    }

    contextStore = [(MOContextManager *)self contextStore];
    [contextStore removeExpiredContextWithHandler:&__block_literal_global_185];

    contextStore2 = [(MOContextManager *)self contextStore];
    [contextStore2 storeContexts:v10 handler:&__block_literal_global_188];

    clientRequestStore = [(MOContextManager *)self clientRequestStore];
    [clientRequestStore removeExpiredClientRequestsWithHandler:&__block_literal_global_191];

    clientRequestStore2 = [(MOContextManager *)self clientRequestStore];
    [clientRequestStore2 storeClientRequest:requestCopy handler:&__block_literal_global_194];
    contextsCopy = v23;
  }

  else
  {
    clientRequestStore2 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(clientRequestStore2, OS_LOG_TYPE_ERROR))
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
  persistenceManager = [(MOContextManager *)self persistenceManager];
  v4 = [persistenceManager acquireBackgroundProcessingPermissionsWithClientID:self->_clientBundleId];

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

  promptManager = [(MOContextManager *)self promptManager];
  [promptManager acquireBackgroundProcessingPermissionsForMomentsWithHander:&__block_literal_global_197];

  persistenceManager2 = [(MOContextManager *)self persistenceManager];
  available = [persistenceManager2 available];

  v13 = [[MOContextAnalyticsManager alloc] initWithAssertionErrorState:v4 dbAvailability:available];
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

- (id)updatePredicateType:(id)type
{
  typeCopy = type;
  v5 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "updatePredicateType", buf, 2u);
  }

  fetchRequestPredicate = [typeCopy fetchRequestPredicate];
  v7 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:fetchRequestPredicate error:0];
  [v7 allowEvaluation];
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    predicateFormat = [v7 predicateFormat];
    *buf = 138412290;
    v41 = predicateFormat;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "deserializedfetchRequestPredicate, %@", buf, 0xCu);
  }

  filterCriteriaMap = [typeCopy filterCriteriaMap];
  v11 = +[NSNull null];
  v12 = [filterCriteriaMap isEqual:v11];

  if (v12)
  {
    filterCriteriaMap2 = 0;
  }

  else
  {
    filterCriteriaMap2 = [typeCopy filterCriteriaMap];
  }

  objc_opt_class();
  v37 = fetchRequestPredicate;
  v38 = typeCopy;
  v36 = v7;
  if (objc_opt_isKindOfClass())
  {
    subpredicates = [v7 subpredicates];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = v7;
      v14 = [NSArray arrayWithObjects:&v39 count:1];
      v15 = [NSCompoundPredicate andPredicateWithSubpredicates:v14];

      subpredicates = [v15 subpredicates];
    }

    else
    {
      subpredicates = 0;
    }
  }

  v16 = [NSMutableArray arrayWithArray:subpredicates, subpredicates];
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
        leftExpression = [v19 leftExpression];
        keyPath = [leftExpression keyPath];
        v22 = [keyPath isEqualToString:@"contextType"];

        if (v22)
        {
          v23 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "updating contextType", buf, 2u);
          }

          rightExpression = [v19 rightExpression];
          constantValue = [rightExpression constantValue];

          v26 = [(MOContextManager *)self _bundleTypeFromContextType:constantValue];
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
  metadataTypes = [v38 metadataTypes];
  v32 = [(MOContextPredicate *)v30 initWithPredicate:v29 filter:filterCriteriaMap2 metadataTypes:metadataTypes];

  return v32;
}

- (id)_replacePredicate:(id)predicate forKeyPath:(id)path withNewKeyPath:(id)keyPath newValue:(id)value comparisonType:(unint64_t)type
{
  predicateCopy = predicate;
  pathCopy = path;
  keyPathCopy = keyPath;
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = predicateCopy;
    leftExpression = [v15 leftExpression];
    keyPath = [leftExpression keyPath];
    v18 = [keyPath isEqualToString:pathCopy];

    if (v18)
    {
      v19 = [NSExpression expressionForKeyPath:keyPathCopy];
      v20 = [NSExpression expressionForConstantValue:valueCopy];
      v21 = +[NSComparisonPredicate predicateWithLeftExpression:rightExpression:modifier:type:options:](NSComparisonPredicate, "predicateWithLeftExpression:rightExpression:modifier:type:options:", v19, v20, [v15 comparisonPredicateModifier], type, objc_msgSend(v15, "options"));

      goto LABEL_6;
    }
  }

  v21 = predicateCopy;
LABEL_6:

  return v21;
}

- (id)_bundleTypeFromContextType:(id)type
{
  typeCopy = type;
  integerValue = [typeCopy integerValue];
  if ((integerValue - 1) > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_1000A7978[(integerValue - 1)];
  }

  v6 = [NSNumber numberWithUnsignedInteger:v5];
  v7 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = typeCopy;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "contextType,%@,bundletype,%@", &v9, 0x16u);
  }

  return v6;
}

- (void)refreshMomentsContextWithReply:(id)reply
{
  replyCopy = reply;
  promptManager = [(MOContextManager *)self promptManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __51__MOContextManager_refreshMomentsContextWithReply___block_invoke;
  v7[3] = &unk_1000B7B30;
  v8 = replyCopy;
  v6 = replyCopy;
  [promptManager softRefreshEventsWithRefreshVariant:1536 andIgnoreLastTrigger:0 andHandler:v7];
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