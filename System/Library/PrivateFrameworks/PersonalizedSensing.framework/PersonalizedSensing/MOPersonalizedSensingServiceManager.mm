@interface MOPersonalizedSensingServiceManager
+ (id)generatePromptSuggestionWithTemplate:(id)template context:(id)context options:(id)options;
+ (void)handleDbAccessRenewalTask:(id)task;
+ (void)primeService;
- (MOPersonalizedSensingServiceManager)init;
- (id)makeNewConnectionWithInterfaceFor:(id)for;
- (void)_fetchPersonalizedSyncContextWithOptions:(id)options withReply:(id)reply;
- (void)dealloc;
- (void)fetchContextWithOptions:(id)options predicates:(id)predicates authorizedTypes:(id)types withReply:(id)reply;
- (void)fetchPersonalizedContextWithOptions:(id)options withReply:(id)reply;
- (void)notifyContextFeedback:(id)feedback withReply:(id)reply;
- (void)refreshMomentsContextWithReply:(id)reply;
- (void)requestDBAccessForPersonalizedSensingServiceWithReply:(id)reply;
@end

@implementation MOPersonalizedSensingServiceManager

- (id)makeNewConnectionWithInterfaceFor:(id)for
{
  if (+[MOPersonalizedSensingServiceManager isServiceDeployed])
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.PersonalizedSensingService"];
    if (v3)
    {
      v4 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287037258];
      v5 = MEMORY[0x277CBEB98];
      v6 = objc_opt_class();
      v7 = objc_opt_class();
      v8 = objc_opt_class();
      v9 = objc_opt_class();
      v10 = objc_opt_class();
      v11 = objc_opt_class();
      v12 = objc_opt_class();
      v13 = [v5 setWithObjects:{v6, v7, v8, v9, v10, v11, v12, objc_opt_class(), 0}];
      [v4 setClasses:v13 forSelector:sel_fetchPersonalizedContextWithOptions_withReply_ argumentIndex:0 ofReply:1];

      v14 = MEMORY[0x277CBEB98];
      v15 = objc_opt_class();
      v16 = objc_opt_class();
      v17 = objc_opt_class();
      v18 = objc_opt_class();
      v19 = objc_opt_class();
      v20 = objc_opt_class();
      v21 = objc_opt_class();
      v22 = [v14 setWithObjects:{v15, v16, v17, v18, v19, v20, v21, objc_opt_class(), 0}];
      [v4 setClasses:v22 forSelector:sel_notifyContextFeedback_withReply_ argumentIndex:0 ofReply:1];

      v23 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
      [v4 setClasses:v23 forSelector:sel_fetchContextWithOptions_predicates_authorizedTypes_withReply_ argumentIndex:0 ofReply:0];

      v24 = MEMORY[0x277CBEB98];
      v25 = objc_opt_class();
      v26 = [v24 setWithObjects:{v25, objc_opt_class(), 0}];
      [v4 setClasses:v26 forSelector:sel_fetchContextWithOptions_predicates_authorizedTypes_withReply_ argumentIndex:1 ofReply:0];

      v27 = MEMORY[0x277CBEB98];
      v28 = objc_opt_class();
      v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
      [v4 setClasses:v29 forSelector:sel_fetchContextWithOptions_predicates_authorizedTypes_withReply_ argumentIndex:2 ofReply:0];

      v30 = MEMORY[0x277CBEB98];
      v31 = objc_opt_class();
      v32 = objc_opt_class();
      v33 = objc_opt_class();
      v34 = [v30 setWithObjects:{v31, v32, v33, objc_opt_class(), 0}];
      [v4 setClasses:v34 forSelector:sel_fetchContextWithOptions_predicates_authorizedTypes_withReply_ argumentIndex:0 ofReply:1];

      [v3 setRemoteObjectInterface:v4];
      v35 = _mo_log_facility_get_os_log(MOLogFacilityPersonalizedSensing);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25E48F000, v35, OS_LOG_TYPE_DEFAULT, "PSServiceMgr,createConnection successful", buf, 2u);
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MOPersonalizedSensingServiceManager)init
{
  v9.receiver = self;
  v9.super_class = MOPersonalizedSensingServiceManager;
  v2 = [(MOPersonalizedSensingServiceManager *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"MOPersonalizedSensingServiceManager, %p", v2];
    v4 = dispatch_queue_create([v3 UTF8String], 0);
    queue = v2->_queue;
    v2->_queue = v4;

    v2->_isGMSAvailable = +[MOPlatformInfo generativeModelsAvailabilityStatus]== 1;
    if (+[MOPersonalizedSensingServiceManager isServiceDeployed])
    {
      v6 = [[MOConnectionManager alloc] initWithName:@"MOPersonalizedSensingServiceManager" usingDelegate:v2];
      connectionManager = v2->connectionManager;
      v2->connectionManager = v6;
    }
  }

  return v2;
}

- (void)dealloc
{
  v3 = _mo_log_facility_get_os_log(MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25E48F000, v3, OS_LOG_TYPE_DEFAULT, "PSServiceMgr,dealloc", buf, 2u);
  }

  [(MOConnectionManager *)self->connectionManager invalidate];
  queue = self->_queue;
  self->_queue = 0;

  v5.receiver = self;
  v5.super_class = MOPersonalizedSensingServiceManager;
  [(MOPersonalizedSensingServiceManager *)&v5 dealloc];
}

- (void)_fetchPersonalizedSyncContextWithOptions:(id)options withReply:(id)reply
{
  v5 = _fetchPersonalizedSyncContextWithOptions_withReply__onceToken;
  replyCopy = reply;
  optionsCopy = options;
  v9 = optionsCopy;
  if (v5 == -1)
  {
    v8 = optionsCopy;
  }

  else
  {
    [MOPersonalizedSensingServiceManager _fetchPersonalizedSyncContextWithOptions:withReply:];
    v8 = v9;
  }

  [_fetchPersonalizedSyncContextWithOptions_withReply__fetchSyncReader loadPersonalizedContextWithOptions:v8 withReply:replyCopy];
}

uint64_t __90__MOPersonalizedSensingServiceManager__fetchPersonalizedSyncContextWithOptions_withReply___block_invoke()
{
  _fetchPersonalizedSyncContextWithOptions_withReply__fetchSyncReader = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (void)fetchPersonalizedContextWithOptions:(id)options withReply:(id)reply
{
  v36[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  replyCopy = reply;
  v8 = _mo_log_facility_get_os_log(MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25E48F000, v8, OS_LOG_TYPE_DEFAULT, "PSServiceMgr,fetchPersonalizedContextWithOptions", buf, 2u);
  }

  if (self->_isGMSAvailable)
  {
    if (+[MOPersonalizedSensingServiceManager isServiceDeployed])
    {
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __85__MOPersonalizedSensingServiceManager_fetchPersonalizedContextWithOptions_withReply___block_invoke;
      v29[3] = &unk_279A1EFB8;
      v9 = optionsCopy;
      v30 = v9;
      v10 = replyCopy;
      v31 = v10;
      v11 = MEMORY[0x25F8B4BE0](v29);
      v24 = MEMORY[0x277D85DD0];
      v25 = 3221225472;
      v26 = __85__MOPersonalizedSensingServiceManager_fetchPersonalizedContextWithOptions_withReply___block_invoke_65;
      v27 = &unk_279A1EFE0;
      v28 = v10;
      v12 = MEMORY[0x25F8B4BE0](&v24);
      v13 = _mo_log_facility_get_os_log(MOLogFacilityPersonalizedSensing);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25E48F000, v13, OS_LOG_TYPE_DEFAULT, "PSServiceMgr,calling fetchPersonalizedContextWithOptions", buf, 2u);
      }

      if ([v9 contextRetrieval] == 1)
      {
        [(MOConnectionManager *)self->connectionManager callSyncProxyUsingBlock:v11 onError:v12];
      }

      else if ([v9 contextRetrieval] == 2)
      {
        [(MOConnectionManager *)self->connectionManager callAsyncProxyUsingBlock:v11 onError:v12];
      }

      else
      {
        v33 = *MEMORY[0x277CCA450];
        v18 = MEMORY[0x277CCACA8];
        contextRetrieval = [v9 contextRetrieval];
        v20 = [v18 stringWithFormat:@"fetch Context: invalid contextRetrieval: %u", contextRetrieval, v24, v25, v26, v27];
        v34 = v20;
        v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];

        v22 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:v21];
        (v12)[2](v12, v22);
      }
    }

    else
    {
      [(MOPersonalizedSensingServiceManager *)self _fetchPersonalizedSyncContextWithOptions:optionsCopy withReply:replyCopy];
    }
  }

  else
  {
    v14 = _mo_log_facility_get_os_log(MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25E48F000, v14, OS_LOG_TYPE_DEFAULT, "PSServiceMgr,fetchPersonalizedContextWithOptions, generative models unavailable, do nothing", buf, 2u);
    }

    v15 = MEMORY[0x277CCA9B8];
    v35 = *MEMORY[0x277CCA450];
    v36[0] = @"Personalized Sensing unavailable";
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    v17 = [v15 errorWithDomain:@"MOContextErrorDomain" code:1287 userInfo:v16];
    (*(replyCopy + 2))(replyCopy, 0, v17);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __85__MOPersonalizedSensingServiceManager_fetchPersonalizedContextWithOptions_withReply___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __85__MOPersonalizedSensingServiceManager_fetchPersonalizedContextWithOptions_withReply___block_invoke_2;
  v4[3] = &unk_279A1EF90;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [a2 fetchPersonalizedContextWithOptions:v3 withReply:v4];
}

void __85__MOPersonalizedSensingServiceManager_fetchPersonalizedContextWithOptions_withReply___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v17 = a3;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v4;
  v21 = [v4 countByEnumeratingWithState:&v27 objects:v34 count:16];
  if (v21)
  {
    v20 = *v28;
    do
    {
      v5 = 0;
      do
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = v5;
        v6 = *(*(&v27 + 1) + 8 * v5);
        v7 = _mo_log_facility_get_os_log(MOLogFacilityPersonalizedSensing);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v8 = [v6 contextIdentifier];
          *buf = 138412290;
          v33 = v8;
          _os_log_impl(&dword_25E48F000, v7, OS_LOG_TYPE_INFO, "PSServiceMgr, id, %@", buf, 0xCu);
        }

        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v9 = [v6 contextStrings];
        v10 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v24;
          do
          {
            v13 = 0;
            do
            {
              if (*v24 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v23 + 1) + 8 * v13);
              v15 = _mo_log_facility_get_os_log(MOLogFacilityPersonalizedSensing);
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v33 = v14;
                _os_log_debug_impl(&dword_25E48F000, v15, OS_LOG_TYPE_DEBUG, "contextString, %@", buf, 0xCu);
              }

              ++v13;
            }

            while (v11 != v13);
            v11 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
          }

          while (v11);
        }

        v5 = v22 + 1;
      }

      while (v22 + 1 != v21);
      v21 = [obj countByEnumeratingWithState:&v27 objects:v34 count:16];
    }

    while (v21);
  }

  (*(*(a1 + 32) + 16))();

  v16 = *MEMORY[0x277D85DE8];
}

void __85__MOPersonalizedSensingServiceManager_fetchPersonalizedContextWithOptions_withReply___block_invoke_65(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __85__MOPersonalizedSensingServiceManager_fetchPersonalizedContextWithOptions_withReply___block_invoke_65_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchContextWithOptions:(id)options predicates:(id)predicates authorizedTypes:(id)types withReply:(id)reply
{
  optionsCopy = options;
  predicatesCopy = predicates;
  typesCopy = types;
  replyCopy = reply;
  v14 = _mo_log_facility_get_os_log(MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25E48F000, v14, OS_LOG_TYPE_DEFAULT, "PSServiceMgr,fetchContextWithOptions", buf, 2u);
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __100__MOPersonalizedSensingServiceManager_fetchContextWithOptions_predicates_authorizedTypes_withReply___block_invoke;
  v24[3] = &unk_279A1F008;
  v25 = optionsCopy;
  v26 = predicatesCopy;
  v27 = typesCopy;
  v15 = replyCopy;
  v28 = v15;
  v16 = typesCopy;
  v17 = predicatesCopy;
  v18 = optionsCopy;
  v19 = MEMORY[0x25F8B4BE0](v24);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __100__MOPersonalizedSensingServiceManager_fetchContextWithOptions_predicates_authorizedTypes_withReply___block_invoke_70;
  v22[3] = &unk_279A1EFE0;
  v23 = v15;
  v20 = v15;
  v21 = MEMORY[0x25F8B4BE0](v22);
  [(MOConnectionManager *)self->connectionManager callAsyncProxyUsingBlock:v19 onError:v21];
}

void __100__MOPersonalizedSensingServiceManager_fetchContextWithOptions_predicates_authorizedTypes_withReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __100__MOPersonalizedSensingServiceManager_fetchContextWithOptions_predicates_authorizedTypes_withReply___block_invoke_2;
  v6[3] = &unk_279A1EF90;
  v5 = *(a1 + 48);
  v7 = *(a1 + 56);
  [a2 fetchContextWithOptions:v3 predicates:v4 authorizedTypes:v5 withReply:v6];
}

void __100__MOPersonalizedSensingServiceManager_fetchContextWithOptions_predicates_authorizedTypes_withReply___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v4 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = _mo_log_facility_get_os_log(MOLogFacilityPersonalizedSensing);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v19 = v10;
          _os_log_impl(&dword_25E48F000, v11, OS_LOG_TYPE_INFO, "PSServiceMgr, id, %@", buf, 0xCu);
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v7);
  }

  (*(*(a1 + 32) + 16))();

  v12 = *MEMORY[0x277D85DE8];
}

void __100__MOPersonalizedSensingServiceManager_fetchContextWithOptions_predicates_authorizedTypes_withReply___block_invoke_70(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __85__MOPersonalizedSensingServiceManager_fetchPersonalizedContextWithOptions_withReply___block_invoke_65_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)notifyContextFeedback:(id)feedback withReply:(id)reply
{
  v24[1] = *MEMORY[0x277D85DE8];
  feedbackCopy = feedback;
  replyCopy = reply;
  v8 = _mo_log_facility_get_os_log(MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25E48F000, v8, OS_LOG_TYPE_DEFAULT, "PSServiceMgr,notifyContextFeedback", buf, 2u);
  }

  isGMSAvailable = self->_isGMSAvailable;
  v10 = _mo_log_facility_get_os_log(MOLogFacilityPersonalizedSensing);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (isGMSAvailable)
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&dword_25E48F000, v10, OS_LOG_TYPE_DEFAULT, "PSServiceMgr,calling notifyContextFeedback", buf, 2u);
    }

    connectionManager = self->connectionManager;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __71__MOPersonalizedSensingServiceManager_notifyContextFeedback_withReply___block_invoke;
    v19[3] = &unk_279A1F058;
    v20 = feedbackCopy;
    v21 = replyCopy;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __71__MOPersonalizedSensingServiceManager_notifyContextFeedback_withReply___block_invoke_73;
    v17[3] = &unk_279A1EFE0;
    v18 = v21;
    [(MOConnectionManager *)connectionManager callAsyncProxyUsingBlock:v19 onError:v17];

    v13 = v20;
  }

  else
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&dword_25E48F000, v10, OS_LOG_TYPE_DEFAULT, "PSServiceMgr,notifyContextFeedback, generative models unavailable, do nothing", buf, 2u);
    }

    v14 = MEMORY[0x277CCA9B8];
    v23 = *MEMORY[0x277CCA450];
    v24[0] = @"Personalized Sensing unavailable";
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v15 = [v14 errorWithDomain:@"MOContextErrorDomain" code:1287 userInfo:v13];
    (*(replyCopy + 2))(replyCopy, 0, v15);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __71__MOPersonalizedSensingServiceManager_notifyContextFeedback_withReply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__MOPersonalizedSensingServiceManager_notifyContextFeedback_withReply___block_invoke_2;
  v8[3] = &unk_279A1F030;
  v9 = v5;
  v6 = *(a1 + 32);
  v10 = *(a1 + 40);
  v7 = v5;
  [a2 notifyContextFeedback:v6 withReply:v8];
}

void __71__MOPersonalizedSensingServiceManager_notifyContextFeedback_withReply___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((*(*(a1 + 32) + 16))())
  {
    v6 = _mo_log_facility_get_os_log(MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134218242;
      v10 = a2;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_25E48F000, v6, OS_LOG_TYPE_DEFAULT, "PSServiceMgr, notifyContextFeedback, result, %lu, error, %@", &v9, 0x16u);
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      (*(v7 + 16))(v7, a2, v5);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __71__MOPersonalizedSensingServiceManager_notifyContextFeedback_withReply___block_invoke_73(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __71__MOPersonalizedSensingServiceManager_notifyContextFeedback_withReply___block_invoke_73_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 2, v3);
  }
}

- (void)requestDBAccessForPersonalizedSensingServiceWithReply:(id)reply
{
  replyCopy = reply;
  v5 = +[MOPlatformInfo isIpad];
  v6 = _mo_log_facility_get_os_log(MOLogFacilityPersonalizedSensing);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_25E48F000, v6, OS_LOG_TYPE_DEFAULT, "PSServiceMgr,requestDBAccessForPersonalizedSensingService is only supported on iPhone, called on iPad so do nothing", buf, 2u);
    }

    replyCopy[2](replyCopy, 0);
  }

  else
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_25E48F000, v6, OS_LOG_TYPE_DEFAULT, "PSServiceMgr,requestDBAccessForPersonalizedSensingService", buf, 2u);
    }

    v8 = _mo_log_facility_get_os_log(MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25E48F000, v8, OS_LOG_TYPE_DEFAULT, "PSServiceMgr,calling requestDBAccessForPersonalizedSensingService", buf, 2u);
    }

    connectionManager = self->connectionManager;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __93__MOPersonalizedSensingServiceManager_requestDBAccessForPersonalizedSensingServiceWithReply___block_invoke;
    v12[3] = &unk_279A1F0A8;
    v13 = replyCopy;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __93__MOPersonalizedSensingServiceManager_requestDBAccessForPersonalizedSensingServiceWithReply___block_invoke_75;
    v10[3] = &unk_279A1EFE0;
    v11 = v13;
    [(MOConnectionManager *)connectionManager callAsyncProxyUsingBlock:v12 onError:v10];
  }
}

void __93__MOPersonalizedSensingServiceManager_requestDBAccessForPersonalizedSensingServiceWithReply___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __93__MOPersonalizedSensingServiceManager_requestDBAccessForPersonalizedSensingServiceWithReply___block_invoke_2;
  v3[3] = &unk_279A1F080;
  v4 = *(a1 + 32);
  [a2 requestDBAccessForPersonalizedSensingServiceWithReply:v3];
}

uint64_t __93__MOPersonalizedSensingServiceManager_requestDBAccessForPersonalizedSensingServiceWithReply___block_invoke_2(uint64_t a1)
{
  v2 = _mo_log_facility_get_os_log(MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25E48F000, v2, OS_LOG_TYPE_DEFAULT, "PSServiceMgr,requestDBAccessForPersonalizedSensingService, remoteproxy being called", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

void __93__MOPersonalizedSensingServiceManager_requestDBAccessForPersonalizedSensingServiceWithReply___block_invoke_75(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __93__MOPersonalizedSensingServiceManager_requestDBAccessForPersonalizedSensingServiceWithReply___block_invoke_75_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }
}

+ (void)primeService
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_25E48F000, v0, v1, "[primeService] Failed to record MOCheckpointAssertionTaskSubmitted Checkpoint, error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)handleDbAccessRenewalTask:(id)task
{
  taskCopy = task;
  v4 = MEMORY[0x277CF07F0];
  identifier = [taskCopy identifier];
  v37 = 0;
  [v4 reportCustomCheckpoint:502 forTask:identifier error:&v37];
  v6 = v37;

  v7 = _mo_log_facility_get_os_log(MOLogFacilityPersonalizedSensing);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[MOPersonalizedSensingServiceManager handleDbAccessRenewalTask:];
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25E48F000, v8, OS_LOG_TYPE_INFO, "Recording MOCheckpointAssertionTaskStarted Checkpoint successful", buf, 2u);
  }

  *buf = 0;
  v34 = buf;
  v35 = 0x2020000000;
  v36 = 0;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __65__MOPersonalizedSensingServiceManager_handleDbAccessRenewalTask___block_invoke;
  v32[3] = &unk_279A1F0F0;
  v32[4] = buf;
  [taskCopy setExpirationHandler:v32];
  v9 = dispatch_semaphore_create(0);
  v10 = objc_alloc_init(MOPersonalizedSensingServiceManager);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __65__MOPersonalizedSensingServiceManager_handleDbAccessRenewalTask___block_invoke_2;
  v30[3] = &unk_279A1F118;
  v11 = v9;
  v31 = v11;
  [(MOPersonalizedSensingServiceManager *)v10 requestDBAccessForPersonalizedSensingServiceWithReply:v30];
  v12 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v11, v12))
  {
    v13 = _mo_log_facility_get_os_log(MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [MOPersonalizedSensingServiceManager handleDbAccessRenewalTask:v13];
    }
  }

  if (v34[24] == 1)
  {
    v29 = 0;
    v14 = [taskCopy setTaskExpiredWithRetryAfter:&v29 error:0.0];
    v15 = v29;
    if (v14)
    {
      goto LABEL_22;
    }

    v16 = _mo_log_facility_get_os_log(MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(MOPersonalizedSensingServiceManager *)v15 handleDbAccessRenewalTask:v16, v17, v18, v19, v20, v21, v22];
    }
  }

  else
  {
    v15 = 0;
  }

  v23 = MEMORY[0x277CF07F0];
  identifier2 = [taskCopy identifier];
  v28 = 0;
  [v23 reportCustomCheckpoint:503 forTask:identifier2 error:&v28];
  v25 = v28;

  if (v25)
  {
    v26 = _mo_log_facility_get_os_log(MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      +[MOPersonalizedSensingServiceManager handleDbAccessRenewalTask:];
    }
  }

  else
  {
    v26 = _mo_log_facility_get_os_log(MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *v27 = 0;
      _os_log_impl(&dword_25E48F000, v26, OS_LOG_TYPE_INFO, "Recording MOCheckpointAssertionTaskCompleted Checkpoint successful", v27, 2u);
    }
  }

  [taskCopy setTaskCompleted];
LABEL_22:

  _Block_object_dispose(buf, 8);
}

intptr_t __65__MOPersonalizedSensingServiceManager_handleDbAccessRenewalTask___block_invoke_2(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = _mo_log_facility_get_os_log(MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = a2;
    _os_log_impl(&dword_25E48F000, v4, OS_LOG_TYPE_DEFAULT, "DB access token renewal succeeded: %d", v7, 8u);
  }

  result = dispatch_semaphore_signal(*(a1 + 32));
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)generatePromptSuggestionWithTemplate:(id)template context:(id)context options:(id)options
{
  v88 = *MEMORY[0x277D85DE8];
  templateCopy = template;
  contextCopy = context;
  optionsCopy = options;
  v10 = [templateCopy copy];
  v11 = _mo_log_facility_get_os_log(MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    associatedContacts = [contextCopy associatedContacts];
    firstObject = [associatedContacts firstObject];
    associatedLocations = [contextCopy associatedLocations];
    [associatedLocations firstObject];
    v79 = v10;
    v16 = v15 = optionsCopy;
    associatedTime = [contextCopy associatedTime];
    firstObject2 = [associatedTime firstObject];
    *buf = 138413058;
    v81 = templateCopy;
    v82 = 2112;
    v83 = firstObject;
    v84 = 2112;
    v85 = v16;
    v86 = 2112;
    v87 = firstObject2;
    _os_log_impl(&dword_25E48F000, v11, OS_LOG_TYPE_INFO, "generatePromptSuggestionWithTemplate, input context string: %@, contact meta data, %@, location meta data, %@, time meta data, %@", buf, 0x2Au);

    optionsCopy = v15;
    v10 = v79;
  }

  if ([templateCopy contentType])
  {
    associatedContacts2 = [contextCopy associatedContacts];
    v20 = [associatedContacts2 count];

    if (v20)
    {
      associatedContacts3 = [contextCopy associatedContacts];
      firstObject3 = [associatedContacts3 firstObject];
      contactName = [firstObject3 contactName];

      if ((([contactName hasSuffix:@"s"] & 1) != 0 || objc_msgSend(contactName, "hasSuffix:", @"S")) && (objc_msgSend(v10, "textString"), v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "containsString:", @"Taylor's"), v24, v25))
      {
        textString = [v10 textString];
        v27 = [contactName stringByAppendingString:@"'"];
        v28 = [textString stringByReplacingOccurrencesOfString:@"Taylor's" withString:v27];

        [v10 setTextString:v28];
        v29 = _mo_log_facility_get_os_log(MOLogFacilityPersonalizedSensing);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
LABEL_12:
          +[MOPersonalizedSensingServiceManager generatePromptSuggestionWithTemplate:context:options:];
        }
      }

      else
      {
        textString2 = [v10 textString];
        v31 = [textString2 containsString:@"Taylor"];

        if (!v31)
        {
LABEL_14:

          goto LABEL_15;
        }

        textString3 = [v10 textString];
        v28 = [textString3 stringByReplacingOccurrencesOfString:@"Taylor" withString:contactName];

        [v10 setTextString:v28];
        v29 = _mo_log_facility_get_os_log(MOLogFacilityPersonalizedSensing);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_12;
        }
      }

      goto LABEL_14;
    }
  }

LABEL_15:
  if (([templateCopy contentType] & 4) == 0)
  {
    goto LABEL_22;
  }

  associatedLocations2 = [contextCopy associatedLocations];
  if ([associatedLocations2 count])
  {
    textString4 = [v10 textString];
    v35 = [textString4 containsString:@"placeName"];

    if (!v35)
    {
      goto LABEL_22;
    }

    associatedLocations3 = [contextCopy associatedLocations];
    firstObject4 = [associatedLocations3 firstObject];
    associatedLocations2 = [firstObject4 place];

    textString5 = [v10 textString];
    v39 = [textString5 stringByReplacingOccurrencesOfString:@"placeName" withString:associatedLocations2];

    [v10 setTextString:v39];
    v40 = _mo_log_facility_get_os_log(MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      +[MOPersonalizedSensingServiceManager generatePromptSuggestionWithTemplate:context:options:];
    }
  }

LABEL_22:
  if (([templateCopy contentType] & 8) == 0)
  {
    goto LABEL_29;
  }

  associatedLocations4 = [contextCopy associatedLocations];
  if ([associatedLocations4 count])
  {
    textString6 = [v10 textString];
    v43 = [textString6 containsString:@"cityName"];

    if (!v43)
    {
      goto LABEL_29;
    }

    associatedLocations5 = [contextCopy associatedLocations];
    firstObject5 = [associatedLocations5 firstObject];
    associatedLocations4 = [firstObject5 city];

    textString7 = [v10 textString];
    v47 = [textString7 stringByReplacingOccurrencesOfString:@"cityName" withString:associatedLocations4];

    [v10 setTextString:v47];
    v48 = _mo_log_facility_get_os_log(MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
    {
      +[MOPersonalizedSensingServiceManager generatePromptSuggestionWithTemplate:context:options:];
    }
  }

LABEL_29:
  if (([templateCopy contentType] & 0x4000) != 0)
  {
    associatedTime2 = [contextCopy associatedTime];
    if (![associatedTime2 count])
    {
LABEL_35:

      goto LABEL_36;
    }

    textString8 = [v10 textString];
    v51 = [textString8 containsString:@"timeReference"];

    if (v51)
    {
      associatedTime3 = [contextCopy associatedTime];
      firstObject6 = [associatedTime3 firstObject];
      associatedTime2 = [firstObject6 timeReferenceString];

      textString9 = [v10 textString];
      v55 = [textString9 stringByReplacingOccurrencesOfString:@"timeReference" withString:associatedTime2];

      [v10 setTextString:v55];
      v56 = _mo_log_facility_get_os_log(MOLogFacilityPersonalizedSensing);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
      {
        +[MOPersonalizedSensingServiceManager generatePromptSuggestionWithTemplate:context:options:];
      }

      goto LABEL_35;
    }
  }

LABEL_36:
  if ([optionsCopy appendMusicString])
  {
    associatedMusic = [contextCopy associatedMusic];
    v58 = [associatedMusic count];

    if (v58)
    {
      associatedMusic2 = [contextCopy associatedMusic];
      v60 = [associatedMusic2 count];

      if (v60 == 1)
      {
        textString10 = [v10 textString];
        associatedMusic3 = [contextCopy associatedMusic];
        [associatedMusic3 firstObject];
      }

      else
      {
        associatedMusic4 = [contextCopy associatedMusic];
        v64 = arc4random_uniform([associatedMusic4 count]);

        textString10 = [v10 textString];
        associatedMusic3 = [contextCopy associatedMusic];
        [associatedMusic3 objectAtIndexedSubscript:v64];
      }
      v65 = ;
      musicString = [v65 musicString];
      v67 = [textString10 stringByAppendingString:musicString];
      [v10 setTextString:v67];
    }
  }

  v68 = _mo_log_facility_get_os_log(MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
  {
    +[MOPersonalizedSensingServiceManager generatePromptSuggestionWithTemplate:context:options:];
  }

  textString11 = [v10 textString];
  v70 = [textString11 containsString:@"placeName"];

  if (v70)
  {
    v71 = _mo_log_facility_get_os_log(MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v71, OS_LOG_TYPE_FAULT))
    {
      +[MOPersonalizedSensingServiceManager generatePromptSuggestionWithTemplate:context:options:];
    }

LABEL_53:

    v76 = 0;
    goto LABEL_54;
  }

  textString12 = [v10 textString];
  v73 = [textString12 containsString:@"cityName"];

  if (v73)
  {
    v71 = _mo_log_facility_get_os_log(MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v71, OS_LOG_TYPE_FAULT))
    {
      +[MOPersonalizedSensingServiceManager generatePromptSuggestionWithTemplate:context:options:];
    }

    goto LABEL_53;
  }

  textString13 = [v10 textString];
  v75 = [textString13 containsString:@"timeReference"];

  if (v75)
  {
    v71 = _mo_log_facility_get_os_log(MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v71, OS_LOG_TYPE_FAULT))
    {
      +[MOPersonalizedSensingServiceManager generatePromptSuggestionWithTemplate:context:options:];
    }

    goto LABEL_53;
  }

  v76 = v10;
LABEL_54:

  v77 = *MEMORY[0x277D85DE8];

  return v76;
}

- (void)refreshMomentsContextWithReply:(id)reply
{
  v23[1] = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  if (+[MOPlatformInfo isIpad])
  {
    v5 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277CCA450];
    v21 = @"Refresh is not supported on iPad";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v7 = v5;
    v8 = 263;
LABEL_12:
    v13 = [v7 errorWithDomain:@"MOContextErrorDomain" code:v8 userInfo:v6];
    replyCopy[2](replyCopy, v13);

    goto LABEL_13;
  }

  if (!replyCopy)
  {
    replyCopy = &__block_literal_global_99;
  }

  v9 = _mo_log_facility_get_os_log(MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25E48F000, v9, OS_LOG_TYPE_DEFAULT, "PSServiceMgr,refreshMomentsContext", buf, 2u);
  }

  if (!self->_isGMSAvailable)
  {
    v11 = _mo_log_facility_get_os_log(MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25E48F000, v11, OS_LOG_TYPE_DEFAULT, "PSServiceMgr,refreshMomentsContext, generative models unavailable, do nothing", buf, 2u);
    }

    v12 = MEMORY[0x277CCA9B8];
    v22 = *MEMORY[0x277CCA450];
    v23[0] = @"Personalized Sensing unavailable";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v7 = v12;
    v8 = 1287;
    goto LABEL_12;
  }

  connectionManager = self->connectionManager;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __70__MOPersonalizedSensingServiceManager_refreshMomentsContextWithReply___block_invoke_100;
  v17[3] = &unk_279A1F0A8;
  v18 = replyCopy;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __70__MOPersonalizedSensingServiceManager_refreshMomentsContextWithReply___block_invoke_2;
  v15[3] = &unk_279A1EFE0;
  replyCopy = v18;
  v16 = replyCopy;
  [(MOConnectionManager *)connectionManager callAsyncProxyUsingBlock:v17 onError:v15];

  v6 = v18;
LABEL_13:

  v14 = *MEMORY[0x277D85DE8];
}

void __70__MOPersonalizedSensingServiceManager_refreshMomentsContextWithReply___block_invoke_100(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = _mo_log_facility_get_os_log(MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25E48F000, v7, OS_LOG_TYPE_DEFAULT, "PSServiceMgr,calling refreshMomentsContext", buf, 2u);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__MOPersonalizedSensingServiceManager_refreshMomentsContextWithReply___block_invoke_101;
  v9[3] = &unk_279A1F160;
  v10 = v5;
  v11 = *(a1 + 32);
  v8 = v5;
  [v6 refreshMomentsContextWithReply:v9];
}

void __70__MOPersonalizedSensingServiceManager_refreshMomentsContextWithReply___block_invoke_101(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 32) + 16))())
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __70__MOPersonalizedSensingServiceManager_refreshMomentsContextWithReply___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __70__MOPersonalizedSensingServiceManager_refreshMomentsContextWithReply___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __85__MOPersonalizedSensingServiceManager_fetchPersonalizedContextWithOptions_withReply___block_invoke_65_cold_1()
{
  OUTLINED_FUNCTION_5();
  v11 = *MEMORY[0x277D85DE8];
  [v1 code];
  [OUTLINED_FUNCTION_7() domain];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_6() localizedDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25E48F000, v3, v4, "PSServiceMgr,fetchPersonalizedContextWithOptions,XPCService synchronous error,%{public}lld,domain,%{public}@,description,%{private}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __71__MOPersonalizedSensingServiceManager_notifyContextFeedback_withReply___block_invoke_73_cold_1()
{
  OUTLINED_FUNCTION_5();
  v11 = *MEMORY[0x277D85DE8];
  [v1 code];
  [OUTLINED_FUNCTION_7() domain];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_6() localizedDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25E48F000, v3, v4, "PSServiceMgr,notifyContextFeedback,XPCService synchronous error,%{public}lld,domain,%{public}@,description,%{private}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __93__MOPersonalizedSensingServiceManager_requestDBAccessForPersonalizedSensingServiceWithReply___block_invoke_75_cold_1()
{
  OUTLINED_FUNCTION_5();
  v11 = *MEMORY[0x277D85DE8];
  [v1 code];
  [OUTLINED_FUNCTION_7() domain];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_6() localizedDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25E48F000, v3, v4, "PSServiceMgr,requestDBAccessForPersonalizedSensingServiceWithReply,XPCService  error,%{public}lld,domain,%{public}@,description,%{private}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)handleDbAccessRenewalTask:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_25E48F000, v0, v1, "Failed to record MOCheckpointAssertionTaskStarted Checkpoint, error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)handleDbAccessRenewalTask:(uint64_t)a3 .cold.3(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4(&dword_25E48F000, a2, a3, "Failed to expire task with error: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)handleDbAccessRenewalTask:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_25E48F000, v0, v1, "Failed to record MOCheckpointAssertionTaskCompleted Checkpoint, error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)generatePromptSuggestionWithTemplate:context:options:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_25E48F000, v0, v1, "generatePromptSuggestionWithTemplate, replace person name,  %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)generatePromptSuggestionWithTemplate:context:options:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_25E48F000, v0, v1, "generatePromptSuggestionWithTemplate, replace place name,  %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)generatePromptSuggestionWithTemplate:context:options:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_25E48F000, v0, v1, "generatePromptSuggestionWithTemplate, replace city name,  %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)generatePromptSuggestionWithTemplate:context:options:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_25E48F000, v0, v1, "generatePromptSuggestionWithTemplate, replace time reference,  %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)generatePromptSuggestionWithTemplate:context:options:.cold.6()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_25E48F000, v0, v1, "generatePromptSuggestionWithTemplate, output prompt string  %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)generatePromptSuggestionWithTemplate:context:options:.cold.7()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8(&dword_25E48F000, v0, v1, "fail to replace time reference placeholder for context string  %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)generatePromptSuggestionWithTemplate:context:options:.cold.8()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8(&dword_25E48F000, v0, v1, "fail to replace city name placeholder for context string  %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)generatePromptSuggestionWithTemplate:context:options:.cold.9()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8(&dword_25E48F000, v0, v1, "fail to replace place name placeholder for context string  %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __70__MOPersonalizedSensingServiceManager_refreshMomentsContextWithReply___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_5();
  v11 = *MEMORY[0x277D85DE8];
  [v1 code];
  [OUTLINED_FUNCTION_7() domain];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_6() localizedDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25E48F000, v3, v4, "PersonalizedSensingServiceManager,refreshMomentsContext,XPCService asynchronous error,%{public}lld,domain,%{public}@,description,%{private}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

@end