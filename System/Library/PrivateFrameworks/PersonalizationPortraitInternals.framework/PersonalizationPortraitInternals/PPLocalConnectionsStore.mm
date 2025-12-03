@interface PPLocalConnectionsStore
+ (id)defaultStore;
- (PPLocalConnectionsStore)init;
- (PPLocalConnectionsStore)initWithPredictionStore:(id)store donationStore:(id)donationStore;
- (id)recentLocationsForConsumer:(unint64_t)consumer criteria:(id)criteria limit:(unint64_t)limit explanationSet:(id)set timeout:(unint64_t)timeout error:(id *)error;
- (void)processFeedback:(id)feedback;
- (void)registerFeedback:(id)feedback completion:(id)completion;
@end

@implementation PPLocalConnectionsStore

+ (id)defaultStore
{
  pthread_mutex_lock(&defaultStore_lock_14799);
  if (!defaultStore_instance_14800)
  {
    v2 = objc_opt_new();
    v3 = defaultStore_instance_14800;
    defaultStore_instance_14800 = v2;

    if (!defaultStore_instance_14800)
    {
      v4 = pp_connections_log_handle();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_INFO, "PPLocalConnectionsStore defaultStore did not initialize, will try again later. Device may be Class C locked.", v7, 2u);
      }
    }
  }

  v5 = defaultStore_instance_14800;
  pthread_mutex_unlock(&defaultStore_lock_14799);

  return v5;
}

- (void)processFeedback:(id)feedback
{
  feedbackCopy = feedback;
  feedbackItems = [feedbackCopy feedbackItems];
  v4 = [feedbackItems count];

  if (v4)
  {
    [PPFeedbackStorage logFeedback:feedbackCopy domain:5 domainStatus:2 inBackground:1];
    feedbackItems2 = [feedbackCopy feedbackItems];
    clientBundleId = [feedbackCopy clientBundleId];
    clientIdentifier = [feedbackCopy clientIdentifier];
    [PPFeedbackUtils recordUserEventsFromFeedback:feedbackCopy matchingFeedbackItems:feedbackItems2 clientBundleId:clientBundleId clientIdentifier:clientIdentifier domain:5];
  }
}

- (void)registerFeedback:(id)feedback completion:(id)completion
{
  v54 = *MEMORY[0x277D85DE8];
  feedbackCopy = feedback;
  completionCopy = completion;
  v7 = pp_connections_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *v48 = 138739971;
    v49 = feedbackCopy;
    _os_log_debug_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEBUG, "PPConnections: registerFeedback: %{sensitive}@", v48, 0xCu);
  }

  v8 = feedbackCopy;
  if (self)
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v35 = v8;
    obj = [v8 feedbackItems];
    v9 = [obj countByEnumeratingWithState:&v38 objects:v48 count:16];
    if (!v9)
    {
      goto LABEL_39;
    }

    v10 = *v39;
    v11 = *MEMORY[0x277D3A6A0];
    while (1)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v39 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v38 + 1) + 8 * i);
        nameToIdentifierMap = self->_nameToIdentifierMap;
        itemString = [v13 itemString];
        v16 = [(NSCache *)nameToIdentifierMap objectForKey:itemString];

        if (v16 || ([v13 itemString], v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v26, "length") == 36, v26, v27) && (objc_msgSend(v13, "itemString"), (v16 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v17 = [(NSCache *)self->_identifierToSourceBundleMap objectForKey:v16];
          v18 = [v17 hasPrefix:v11];

          if (!v18)
          {
            goto LABEL_37;
          }

          v42 = 0;
          v43 = &v42;
          v44 = 0x2050000000;
          v19 = getAFAnalyticsClass_softClass;
          v45 = getAFAnalyticsClass_softClass;
          if (!getAFAnalyticsClass_softClass)
          {
            *&buf = MEMORY[0x277D85DD0];
            *(&buf + 1) = 3221225472;
            v51 = __getAFAnalyticsClass_block_invoke;
            v52 = &unk_2789792D0;
            v53 = &v42;
            __getAFAnalyticsClass_block_invoke(&buf);
            v19 = v43[3];
          }

          v20 = v19;
          _Block_object_dispose(&v42, 8);
          sharedAnalytics = [v19 sharedAnalytics];
          if (sharedAnalytics)
          {
            v46 = @"identifier";
            v47 = v16;
            v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
            v23 = pp_connections_log_handle();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v16;
              _os_log_impl(&dword_23224A000, v23, OS_LOG_TYPE_DEFAULT, "PPConnections: registerFeedback: reporting %@ DisplayedInMaps to Siri", &buf, 0xCu);
            }

            [sharedAnalytics logEventWithType:6201 context:v22];
            itemFeedbackType = [v13 itemFeedbackType];
            if ((itemFeedbackType - 3) < 3)
            {
              v28 = pp_connections_log_handle();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(buf) = 138412290;
                *(&buf + 4) = v16;
                _os_log_impl(&dword_23224A000, v28, OS_LOG_TYPE_DEFAULT, "PPConnections: registerFeedback: %@ was rejected or offered", &buf, 0xCu);
              }
            }

            else if ((itemFeedbackType - 1) >= 2)
            {
              if (!itemFeedbackType)
              {
                v29 = pp_default_log_handle();
                if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
                {
                  clientIdentifier = [v35 clientIdentifier];
                  LODWORD(buf) = 138412290;
                  *(&buf + 4) = clientIdentifier;
                  _os_log_fault_impl(&dword_23224A000, v29, OS_LOG_TYPE_FAULT, "PPConnections: registerFeedback: received feedback of unknown type from %@", &buf, 0xCu);
                }
              }
            }

            else
            {
              v25 = pp_connections_log_handle();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(buf) = 138412290;
                *(&buf + 4) = v16;
                _os_log_impl(&dword_23224A000, v25, OS_LOG_TYPE_DEFAULT, "PPConnections: registerFeedback: reporting %@ SelectedInMaps to Siri", &buf, 0xCu);
              }

              [sharedAnalytics logEventWithType:6202 context:v22];
            }
          }

          else
          {
            v22 = pp_default_log_handle();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              LOWORD(buf) = 0;
              _os_log_error_impl(&dword_23224A000, v22, OS_LOG_TYPE_ERROR, "PPConnections: registerFeedback: failed to soft link AFAnalytics", &buf, 2u);
            }
          }
        }

        else
        {
          sharedAnalytics = pp_default_log_handle();
          if (os_log_type_enabled(sharedAnalytics, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_23224A000, sharedAnalytics, OS_LOG_TYPE_DEFAULT, "PPConnections: registerFeedback: skipping immediate processing of feedback due to lack of identifier.", &buf, 2u);
          }

          v16 = 0;
        }

LABEL_37:
      }

      v9 = [obj countByEnumeratingWithState:&v38 objects:v48 count:16];
      if (!v9)
      {
LABEL_39:

        v8 = v35;
        break;
      }
    }
  }

  v31 = v8;

  v32 = objc_opt_new();
  v33 = [PPInternalFeedback fromBaseFeedback:v31 storeType:2];
  [v32 storePendingFeedback:v33 storeType:6 error:0];

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 1, 0);
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (id)recentLocationsForConsumer:(unint64_t)consumer criteria:(id)criteria limit:(unint64_t)limit explanationSet:(id)set timeout:(unint64_t)timeout error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  v9 = [(PPConnectionsPredictionStore *)self->_predictionStore recentLocationsForConsumer:consumer criteria:criteria limit:limit explanationSet:set timeout:timeout error:error];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    v13 = *MEMORY[0x277D3A6A0];
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v26 + 1) + 8 * i);
        originatingBundleID = [v15 originatingBundleID];
        v17 = [originatingBundleID isEqualToString:v13];

        if (v17)
        {
          identifierToSourceBundleMap = self->_identifierToSourceBundleMap;
          originatingBundleID2 = [v15 originatingBundleID];
          identifier = [v15 identifier];
          [(NSCache *)identifierToSourceBundleMap setObject:originatingBundleID2 forKey:identifier];

          nameToIdentifierMap = self->_nameToIdentifierMap;
          identifier2 = [v15 identifier];
          name = [v15 name];
          [(NSCache *)nameToIdentifierMap setObject:identifier2 forKey:name];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v11);
  }

  v24 = *MEMORY[0x277D85DE8];

  return v9;
}

- (PPLocalConnectionsStore)init
{
  v3 = +[PPConnectionsPredictionStore defaultStore];
  v4 = +[PPConnectionsDonationStore defaultStore];
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = pp_connections_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEFAULT, "PPLocalConnectionsStore -init failed to get prediction or donation store.", v10, 2u);
    }

    selfCopy = 0;
  }

  else
  {
    self = [(PPLocalConnectionsStore *)self initWithPredictionStore:v3 donationStore:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (PPLocalConnectionsStore)initWithPredictionStore:(id)store donationStore:(id)donationStore
{
  storeCopy = store;
  donationStoreCopy = donationStore;
  v16.receiver = self;
  v16.super_class = PPLocalConnectionsStore;
  v9 = [(PPLocalConnectionsStore *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_predictionStore, store);
    objc_storeStrong(&v10->_donationStore, donationStore);
    v11 = objc_opt_new();
    identifierToSourceBundleMap = v10->_identifierToSourceBundleMap;
    v10->_identifierToSourceBundleMap = v11;

    [(NSCache *)v10->_identifierToSourceBundleMap setCountLimit:3];
    v13 = objc_opt_new();
    nameToIdentifierMap = v10->_nameToIdentifierMap;
    v10->_nameToIdentifierMap = v13;

    [(NSCache *)v10->_nameToIdentifierMap setCountLimit:3];
  }

  return v10;
}

@end