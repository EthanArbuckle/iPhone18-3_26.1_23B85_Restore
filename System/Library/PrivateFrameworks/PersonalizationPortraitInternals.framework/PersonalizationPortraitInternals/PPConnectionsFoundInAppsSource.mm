@interface PPConnectionsFoundInAppsSource
+ (id)sharedInstance;
- (PPConnectionsFoundInAppsSource)init;
- (PPConnectionsFoundInAppsSource)initWithFoundInAppsService:(id)service;
- (id)locationItemsWithCriteria:(id)criteria earliest:(id)earliest latest:(id)latest limit:(unint64_t)limit consumer:(unint64_t)consumer explanationSet:(id)set;
@end

@implementation PPConnectionsFoundInAppsSource

- (id)locationItemsWithCriteria:(id)criteria earliest:(id)earliest latest:(id)latest limit:(unint64_t)limit consumer:(unint64_t)consumer explanationSet:(id)set
{
  v33 = *MEMORY[0x277D85DE8];
  criteriaCopy = criteria;
  earliestCopy = earliest;
  latestCopy = latest;
  v15 = objc_opt_new();
  if (consumer == 4 || consumer == 2)
  {
    v16 = dispatch_semaphore_create(0);
    fiaURLService = self->_fiaURLService;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __106__PPConnectionsFoundInAppsSource_locationItemsWithCriteria_earliest_latest_limit_consumer_explanationSet___block_invoke;
    v25[3] = &unk_278973288;
    v18 = v16;
    v26 = v18;
    v27 = earliestCopy;
    v28 = latestCopy;
    v29 = criteriaCopy;
    v19 = v15;
    v30 = v19;
    [(SGSuggestionsServiceURLsProtocol *)fiaURLService recentURLsWithLimit:32 withCompletion:v25];
    [MEMORY[0x277D425A0] waitForSemaphore:v18];
    v20 = pp_connections_log_handle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v19 count];
      *buf = 134217984;
      v32 = v21;
      _os_log_impl(&dword_23224A000, v20, OS_LOG_TYPE_DEFAULT, "PPConnectionsFoundInAppsSource found %tu urls", buf, 0xCu);
    }

    v22 = v19;
  }

  else
  {
    v22 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

void __106__PPConnectionsFoundInAppsSource_locationItemsWithCriteria_earliest_latest_limit_consumer_explanationSet___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v62 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v54 objects:v59 count:16];
    if (v8)
    {
      v9 = v8;
      v50 = v6;
      v51 = v5;
      v10 = *v55;
      v53 = *v55;
      while (1)
      {
        v11 = 0;
        do
        {
          if (*v55 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v54 + 1) + 8 * v11);
          v13 = objc_autoreleasePoolPush();
          if ([v12 flags])
          {
            v18 = pp_connections_log_handle();
            if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_30;
            }

            *buf = 0;
            v22 = v18;
            v23 = "PPConnectionsFoundInAppsSource: ignoring SGURL that is from outgoing document";
            goto LABEL_16;
          }

          if (*(a1 + 40))
          {
            v14 = [v12 receivedAt];
            v15 = [v14 compare:*(a1 + 40)];

            if (v15 == -1)
            {
              v18 = pp_connections_log_handle();
              if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_30;
              }

              v19 = [v12 receivedAt];
              *buf = 138412290;
              v61 = v19;
              v20 = v18;
              v21 = "PPConnectionsFoundInAppsSource: ignoring SGURL that is too old. Received at %@";
              goto LABEL_24;
            }
          }

          if (*(a1 + 48))
          {
            v16 = [v12 receivedAt];
            v17 = [v16 compare:*(a1 + 48)];

            if (v17 == 1)
            {
              v18 = pp_connections_log_handle();
              if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_30;
              }

              v19 = [v12 receivedAt];
              *buf = 138412290;
              v61 = v19;
              v20 = v18;
              v21 = "PPConnectionsFoundInAppsSource: ignoring SGURL that is too new. Received at %@";
LABEL_24:
              _os_log_debug_impl(&dword_23224A000, v20, OS_LOG_TYPE_DEBUG, v21, buf, 0xCu);

              goto LABEL_30;
            }
          }

          v24 = [*(a1 + 56) bundleIdentifier];
          v25 = [v12 bundleIdentifier];
          v26 = [v24 isEqualToString:v25];

          if (v26)
          {
            v18 = pp_connections_log_handle();
            if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_30;
            }

            v19 = [v12 bundleIdentifier];
            *buf = 138412290;
            v61 = v19;
            v20 = v18;
            v21 = "PPConnectionsFoundInAppsSource: ignoring SGURL that is from the consumer (%@)";
            goto LABEL_24;
          }

          v27 = [v12 url];
          v28 = [v27 scheme];
          if ([v28 isEqualToString:@"maps"])
          {

LABEL_26:
            v34 = objc_alloc(MEMORY[0x277D3A348]);
            v35 = [v12 bundleIdentifier];
            v18 = [v34 initWithOriginatingBundleID:v35];

            v36 = [v12 url];
            [v18 setMapItemURL:v36];

            v37 = [v12 documentIdentifier];
            [v18 setDocumentID:v37];

            [v18 setSource:@"foundinapps"];
            v38 = [v12 receivedAt];
            [v18 setCreatedAt:v38];

            v39 = MEMORY[0x277CCABB0];
            v40 = +[PPConnectionsParameters sharedInstance];
            [v40 foundInAppsSourceExpirySeconds];
            v41 = [v39 numberWithDouble:?];
            [v18 setLifetime:v41];

            v42 = [v12 receivedFromHandle];
            v43 = [v42 length];

            if (v43)
            {
              v44 = [v12 receivedFromHandle];
              [v18 setAuthorHandle:v44];

              v45 = objc_autoreleasePoolPush();
              v46 = [v12 receivedFromHandle];
              v58 = v46;
              v47 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];

              objc_autoreleasePoolPop(v45);
              [v18 setContactHandles:v47];
            }

            [*(a1 + 64) addObject:v18];
            v10 = v53;
            goto LABEL_30;
          }

          v29 = [v12 url];
          [v29 host];
          v30 = a1;
          v31 = v9;
          v33 = v32 = v7;
          v52 = [v33 isEqualToString:@"maps.apple.com"];

          v7 = v32;
          v9 = v31;
          a1 = v30;

          if (v52)
          {
            goto LABEL_26;
          }

          v18 = pp_connections_log_handle();
          v10 = v53;
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            v22 = v18;
            v23 = "PPConnectionsFoundInAppsSource: ignoring SGURL that is not a Maps URL.";
LABEL_16:
            _os_log_debug_impl(&dword_23224A000, v22, OS_LOG_TYPE_DEBUG, v23, buf, 2u);
          }

LABEL_30:

          objc_autoreleasePoolPop(v13);
          ++v11;
        }

        while (v9 != v11);
        v48 = [v7 countByEnumeratingWithState:&v54 objects:v59 count:16];
        v9 = v48;
        if (!v48)
        {
          v6 = v50;
          v5 = v51;
          break;
        }
      }
    }
  }

  else
  {
    v7 = pp_connections_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v61 = v6;
      _os_log_error_impl(&dword_23224A000, v7, OS_LOG_TYPE_ERROR, "PPConnectionsFoundInAppsSource: recentURLsWithLimit error: %@", buf, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
  v49 = *MEMORY[0x277D85DE8];
}

- (PPConnectionsFoundInAppsSource)init
{
  v3 = PPSharedSuggestionsURLService();
  v4 = [(PPConnectionsFoundInAppsSource *)self initWithFoundInAppsService:v3];

  return v4;
}

- (PPConnectionsFoundInAppsSource)initWithFoundInAppsService:(id)service
{
  serviceCopy = service;
  v9.receiver = self;
  v9.super_class = PPConnectionsFoundInAppsSource;
  v6 = [(PPConnectionsFoundInAppsSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fiaURLService, service);
  }

  return v7;
}

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken2_5606 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken2_5606, &__block_literal_global_5607);
  }

  v3 = sharedInstance__pasExprOnceResult_5608;

  return v3;
}

void __48__PPConnectionsFoundInAppsSource_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_5608;
  sharedInstance__pasExprOnceResult_5608 = v1;

  objc_autoreleasePoolPop(v0);
}

@end