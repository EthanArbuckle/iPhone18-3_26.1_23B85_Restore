@interface TICoreAnalyticsEventController
+ (void)registerScheduledEventsActivity;
- (TICoreAnalyticsEventController)init;
- (id)adjustValue:(id)value forFieldSpec:(id)spec;
- (id)adjustValues:(id)values forFieldSpec:(id)spec;
- (void)dispatchEventWithDescriptor:(id)descriptor andSpec:(id)spec withProvider:(id)provider andContext:(id)context andMetrics:(id)metrics completionHandler:(id)handler;
- (void)dispatchEventWithName:(id)name payload:(id)payload testingParameters:(id)parameters eventSpec:(id)spec completionHandler:(id)handler;
- (void)dispatchEventsFromRegistry:(id)registry withProvider:(id)provider andContext:(id)context andMetrics:(id)metrics completionHandler:(id)handler;
- (void)dispatchScheduledEventsWithCompletionHandler:(id)handler;
- (void)queueScheduledEventsWithCompletionHandler:(id)handler;
@end

@implementation TICoreAnalyticsEventController

- (void)dispatchEventWithName:(id)name payload:(id)payload testingParameters:(id)parameters eventSpec:(id)spec completionHandler:(id)handler
{
  v28 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  handlerCopy = handler;
  specCopy = spec;
  parametersCopy = parameters;
  payloadCopy = payload;
  v16 = IXADefaultLogFacility();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Dispatching event: %@", "-[TICoreAnalyticsEventController dispatchEventWithName:payload:testingParameters:eventSpec:completionHandler:]", nameCopy];
    *buf = 138412290;
    v27 = nameCopy;
    _os_log_impl(&dword_22CA55000, v16, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  mEMORY[0x277D6F318] = [MEMORY[0x277D6F318] sharedInstance];
  [mEMORY[0x277D6F318] registerEventSpec:specCopy];

  mEMORY[0x277D6F318]2 = [MEMORY[0x277D6F318] sharedInstance];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __110__TICoreAnalyticsEventController_dispatchEventWithName_payload_testingParameters_eventSpec_completionHandler___block_invoke;
  v23[3] = &unk_278730308;
  v24 = nameCopy;
  v25 = handlerCopy;
  v20 = handlerCopy;
  v21 = nameCopy;
  [mEMORY[0x277D6F318]2 dispatchEventWithName:v21 payload:payloadCopy testingParameters:parametersCopy allowSparsePayload:0 withCompletionHandler:v23];

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t __110__TICoreAnalyticsEventController_dispatchEventWithName_payload_testingParameters_eventSpec_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [a2 count];
  v4 = IXADefaultLogFacility();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (!v5)
    {
      goto LABEL_7;
    }

    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Event dispatch failed: %@", "-[TICoreAnalyticsEventController dispatchEventWithName:payload:testingParameters:eventSpec:completionHandler:]_block_invoke", *(a1 + 32)];
    *buf = 138412290;
    v10 = v6;
  }

  else
  {
    if (!v5)
    {
      goto LABEL_7;
    }

    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Event dispatched: %@", "-[TICoreAnalyticsEventController dispatchEventWithName:payload:testingParameters:eventSpec:completionHandler:]_block_invoke", *(a1 + 32)];
    *buf = 138412290;
    v10 = v6;
  }

  _os_log_impl(&dword_22CA55000, v4, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);

LABEL_7:
  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))();
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)adjustValue:(id)value forFieldSpec:(id)spec
{
  valueCopy = value;
  specCopy = spec;
  if ([MEMORY[0x277D6F320] isNumber:valueCopy] && objc_msgSend(specCopy, "isMemberOfClass:", objc_opt_class()))
  {
    v7 = specCopy;
    v8 = MEMORY[0x277D6F320];
    significantDigits = [v7 significantDigits];
    v10 = [v8 roundNumber:valueCopy toSignificantDigits:significantDigits];

    if ([v7 isInteger] && objc_msgSend(MEMORY[0x277D6F320], "isFloat:", v10))
    {
      v11 = [MEMORY[0x277D6F320] toInteger:v10];
      [v11 doubleValue];
      v13 = v12;
      [v10 doubleValue];
      if (v13 == v14)
      {
        v11 = v11;

        v10 = v11;
      }
    }

    else
    {
      if (([v7 isInteger] & 1) != 0 || !objc_msgSend(MEMORY[0x277D6F320], "isInteger:", v10))
      {
        goto LABEL_11;
      }

      [MEMORY[0x277D6F320] toFloat:v10];
      v10 = v11 = v10;
    }

LABEL_11:
    valueCopy = v10;
  }

  return valueCopy;
}

- (id)adjustValues:(id)values forFieldSpec:(id)spec
{
  specCopy = spec;
  v7 = MEMORY[0x277CBEB18];
  valuesCopy = values;
  v9 = [v7 arrayWithCapacity:{objc_msgSend(valuesCopy, "count")}];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60__TICoreAnalyticsEventController_adjustValues_forFieldSpec___block_invoke;
  v15[3] = &unk_2787302E0;
  v10 = v9;
  v16 = v10;
  selfCopy = self;
  v18 = specCopy;
  v11 = specCopy;
  [valuesCopy enumerateObjectsUsingBlock:v15];

  v12 = v18;
  v13 = v10;

  return v10;
}

void __60__TICoreAnalyticsEventController_adjustValues_forFieldSpec___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 40) adjustValue:a2 forFieldSpec:*(a1 + 48)];
  [*(a1 + 32) setObject:v5 atIndexedSubscript:a3];
}

- (void)dispatchEventWithDescriptor:(id)descriptor andSpec:(id)spec withProvider:(id)provider andContext:(id)context andMetrics:(id)metrics completionHandler:(id)handler
{
  v92 = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  specCopy = spec;
  providerCopy = provider;
  contextCopy = context;
  handlerCopy = handler;
  v64 = objc_opt_new();
  v76 = objc_opt_new();
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  fieldDescriptors = [descriptorCopy fieldDescriptors];
  v62 = contextCopy;
  v63 = specCopy;
  v71 = [fieldDescriptors countByEnumeratingWithState:&v85 objects:v91 count:16];
  v60 = handlerCopy;
  v61 = descriptorCopy;
  v69 = providerCopy;
  if (v71)
  {
    obj = fieldDescriptors;
    v18 = 0;
    v19 = 0;
    v68 = *v86;
    do
    {
      for (i = 0; i != v71; ++i)
      {
        if (*v86 != v68)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v85 + 1) + 8 * i);
        inactiveValue = [v21 inactiveValue];
        v74 = inactiveValue != 0;

        fieldName = [v21 fieldName];
        v24 = specCopy;
        v72 = [specCopy fieldSpecWithName:fieldName];
        metricType = [v21 metricType];
        v26 = [metricType isEqualToString:@"bucketedWordLength"];

        metricName = [v21 metricName];
        if (v26)
        {
          v28 = [v69 valuesByBucketedWordLengthForMetricWithName:metricName withContext:contextCopy];

          inactiveValue2 = [v21 inactiveValue];

          if (inactiveValue2)
          {
            v66 = v28;
            v67 = fieldName;
            v83 = 0u;
            v84 = 0u;
            v81 = 0u;
            v82 = 0u;
            v30 = v28;
            v31 = [v30 countByEnumeratingWithState:&v81 objects:v90 count:16];
            if (v31)
            {
              v32 = v31;
              v33 = *v82;
              do
              {
                for (j = 0; j != v32; ++j)
                {
                  if (*v82 != v33)
                  {
                    objc_enumerationMutation(v30);
                  }

                  v35 = *(*(&v81 + 1) + 8 * j);
                  inactiveValue3 = [v21 inactiveValue];
                  LODWORD(v35) = [v35 isEqual:inactiveValue3];

                  v18 |= v35 ^ 1;
                }

                v32 = [v30 countByEnumeratingWithState:&v81 objects:v90 count:16];
              }

              while (v32);
            }

            contextCopy = v62;
            v24 = v63;
            v28 = v66;
            fieldName = v67;
          }

          v37 = v72;
          v38 = [(TICoreAnalyticsEventController *)self adjustValues:v28 forFieldSpec:v72];
          [v76 setObject:v38 forKey:fieldName];
          v39 = v74;
        }

        else
        {
          v28 = [v69 valueForMetricWithName:metricName withContext:contextCopy];

          inactiveValue4 = [v21 inactiveValue];
          if (inactiveValue4)
          {
            inactiveValue5 = [v21 inactiveValue];
            v42 = fieldName;
            v43 = [v28 isEqual:inactiveValue5] ^ 1;

            v18 |= v43;
            fieldName = v42;
          }

          v39 = v74;

          v37 = v72;
          v38 = [(TICoreAnalyticsEventController *)self adjustValue:v28 forFieldSpec:v72];
          [v64 setObject:v38 forKey:fieldName];
        }

        v19 |= v39;

        specCopy = v24;
      }

      v71 = [obj countByEnumeratingWithState:&v85 objects:v91 count:16];
    }

    while (v71);

    v44 = v60;
    descriptorCopy = v61;
    v45 = v69;
    if (!(v18 & 1 | ((v19 & 1) == 0)))
    {
      if (v60)
      {
        v60[2](v60);
      }

      goto LABEL_45;
    }
  }

  else
  {
  }

  if ([descriptorCopy includeTestingParameters])
  {
    testingParameters = [contextCopy testingParameters];
  }

  else
  {
    testingParameters = 0;
  }

  eventName = [descriptorCopy eventName];
  if ([v76 count])
  {
    v73 = *MEMORY[0x277D6FDA8];
    if (*MEMORY[0x277D6FDA8])
    {
      v47 = 0;
      do
      {
        v48 = eventName;
        v49 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v64];
        v77 = 0u;
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        allKeys = [v76 allKeys];
        v51 = [allKeys countByEnumeratingWithState:&v77 objects:v89 count:16];
        if (v51)
        {
          v52 = v51;
          v53 = *v78;
          do
          {
            for (k = 0; k != v52; ++k)
            {
              if (*v78 != v53)
              {
                objc_enumerationMutation(allKeys);
              }

              v55 = *(*(&v77 + 1) + 8 * k);
              v56 = [v76 objectForKey:v55];
              v57 = [v56 objectAtIndexedSubscript:v47];
              [v49 setObject:v57 forKey:v55];
            }

            v52 = [allKeys countByEnumeratingWithState:&v77 objects:v89 count:16];
          }

          while (v52);
        }

        eventName = v48;
        specCopy = v63;
        [(TICoreAnalyticsEventController *)self dispatchEventWithName:v48 payload:v49 testingParameters:testingParameters eventSpec:v63 completionHandler:0];

        ++v47;
      }

      while (v47 != v73);
    }
  }

  else
  {
    [(TICoreAnalyticsEventController *)self dispatchEventWithName:eventName payload:v64 testingParameters:testingParameters eventSpec:specCopy completionHandler:0];
  }

  v44 = v60;
  if (v60)
  {
    mEMORY[0x277D6F318] = [MEMORY[0x277D6F318] sharedInstance];
    [mEMORY[0x277D6F318] queueCompletionHandler:v60];
  }

  descriptorCopy = v61;
  contextCopy = v62;
  v45 = v69;
LABEL_45:

  v59 = *MEMORY[0x277D85DE8];
}

- (void)dispatchEventsFromRegistry:(id)registry withProvider:(id)provider andContext:(id)context andMetrics:(id)metrics completionHandler:(id)handler
{
  v35 = *MEMORY[0x277D85DE8];
  registryCopy = registry;
  providerCopy = provider;
  contextCopy = context;
  metricsCopy = metrics;
  handlerCopy = handler;
  v16 = handlerCopy;
  v17 = registryCopy;
  if (registryCopy && metricsCopy)
  {
    v27 = handlerCopy;
    [registryCopy allEventDescriptors];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = v33 = 0u;
    v18 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v31;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v31 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v30 + 1) + 8 * i);
          eventName = [v22 eventName];
          v24 = [v17 eventSpecWithName:eventName];

          [(TICoreAnalyticsEventController *)self dispatchEventWithDescriptor:v22 andSpec:v24 withProvider:providerCopy andContext:contextCopy andMetrics:metricsCopy completionHandler:0];
        }

        v19 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v19);
    }

    v16 = v27;
    if (v27)
    {
      mEMORY[0x277D6F318] = [MEMORY[0x277D6F318] sharedInstance];
      [mEMORY[0x277D6F318] queueCompletionHandler:v27];
    }
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)dispatchScheduledEventsWithCompletionHandler:(id)handler
{
  v59 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = IXADefaultLogFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Dispatching scheduled events.", "-[TICoreAnalyticsEventController dispatchScheduledEventsWithCompletionHandler:]"];
    *buf = 138412290;
    v58 = v6;
    _os_log_impl(&dword_22CA55000, v5, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v7 = objc_alloc_init(TIPreferencesAnalyzer);
  [(TIPreferencesAnalyzer *)v7 analyzeRegisteredPreferences];
  v8 = +[TIEventDescriptorRegistry registry];
  v9 = +[TIMetricDescriptorRegistry registry];
  mEMORY[0x277D6F548] = [MEMORY[0x277D6F548] sharedUserModelDataStore];
  v11 = [MEMORY[0x277CBEAA8] now];
  v12 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.keyboard"];
  v13 = [v12 BOOLForKey:@"ignoreLastMigrationDate"];
  v39 = v12;
  v14 = [v12 BOOLForKey:@"typingSessionNotificationsEnabled"];
  if ([mEMORY[0x277D6F548] isValid])
  {
    transientLastMigrationDate = [mEMORY[0x277D6F548] transientLastMigrationDate];
    v15 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v11 sinceDate:-(*MEMORY[0x277D6FD98] * *MEMORY[0x277D6FD28])];
    v16 = v15;
    v37 = v15;
    if ((v13 & 1) == 0 && [v15 compare:transientLastMigrationDate] == -1)
    {
      v31 = IXADefaultLogFacility();
      v27 = v39;
      obj = v31;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Scheduled events cannot be dispatched because insufficient data has been collected since last database migration.", "-[TICoreAnalyticsEventController dispatchScheduledEventsWithCompletionHandler:]"];
        *buf = 138412290;
        v58 = v32;
        _os_log_impl(&dword_22CA55000, v31, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
      }

      v26 = 0;
    }

    else
    {
      v34 = v14;
      v35 = v7;
      v36 = handlerCopy;
      [mEMORY[0x277D6F548] getAllKnownInputModesSinceDate:v16];
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      obj = v54 = 0u;
      v43 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
      if (v43)
      {
        v41 = *v52;
        v42 = mEMORY[0x277D6F548];
        do
        {
          for (i = 0; i != v43; ++i)
          {
            if (*v52 != v41)
            {
              objc_enumerationMutation(obj);
            }

            v18 = v11;
            v19 = [TIKBUserModel userModelWithInputMode:*(*(&v51 + 1) + 8 * i) userModelDataStore:mEMORY[0x277D6F548] metricDescriptorRegistry:v9 fromDate:v11];
            kbContexts = [v19 kbContexts];
            v47 = 0u;
            v48 = 0u;
            v49 = 0u;
            v50 = 0u;
            v21 = [kbContexts countByEnumeratingWithState:&v47 objects:v55 count:16];
            if (v21)
            {
              v22 = v21;
              v23 = *v48;
              do
              {
                for (j = 0; j != v22; ++j)
                {
                  if (*v48 != v23)
                  {
                    objc_enumerationMutation(kbContexts);
                  }

                  [(TICoreAnalyticsEventController *)self dispatchEventsFromRegistry:v8 withProvider:v19 andContext:*(*(&v47 + 1) + 8 * j) andMetrics:v9 completionHandler:0];
                }

                v22 = [kbContexts countByEnumeratingWithState:&v47 objects:v55 count:16];
              }

              while (v22);
            }

            mEMORY[0x277D6F548] = v42;
            v11 = v18;
          }

          v43 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
        }

        while (v43);
      }

      mEMORY[0x277D6F318] = [MEMORY[0x277D6F318] sharedInstance];
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __79__TICoreAnalyticsEventController_dispatchScheduledEventsWithCompletionHandler___block_invoke;
      v44[3] = &unk_2787302B8;
      handlerCopy = v36;
      v45 = v36;
      v14 = v34;
      v46 = v34;
      [mEMORY[0x277D6F318] queueCompletionHandler:v44];

      v26 = 1;
      v7 = v35;
      v27 = v39;
    }

    v28 = transientLastMigrationDate;
  }

  else
  {
    v28 = IXADefaultLogFacility();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Scheduled events cannot be dispatched because an error occurred while opening the database.", "-[TICoreAnalyticsEventController dispatchScheduledEventsWithCompletionHandler:]"];
      *buf = 138412290;
      v58 = v33;
      _os_log_error_impl(&dword_22CA55000, v28, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    v26 = 0;
    v27 = v39;
  }

  if (handlerCopy && (v26 & 1) == 0)
  {
    if (TI_IS_INTERNAL_INSTALL::once_token != -1)
    {
      dispatch_once(&TI_IS_INTERNAL_INSTALL::once_token, &__block_literal_global_3815);
    }

    if (TI_IS_INTERNAL_INSTALL::is_internal_install == 1 && v14)
    {
      defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
      [defaultCenter postNotificationName:@"com.apple.keyboard.inputAnalytics.scheduledEventsDidComplete" object:0 userInfo:0 deliverImmediately:1];
    }

    handlerCopy[2](handlerCopy);
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __79__TICoreAnalyticsEventController_dispatchScheduledEventsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = IXADefaultLogFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Scheduled events dispatched.", "-[TICoreAnalyticsEventController dispatchScheduledEventsWithCompletionHandler:]_block_invoke"];
    *buf = 138412290;
    v7 = v3;
    _os_log_impl(&dword_22CA55000, v2, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  if (*(a1 + 32))
  {
    if (TI_IS_INTERNAL_INSTALL::once_token != -1)
    {
      dispatch_once(&TI_IS_INTERNAL_INSTALL::once_token, &__block_literal_global_3815);
    }

    if (TI_IS_INTERNAL_INSTALL::is_internal_install == 1 && *(a1 + 40) == 1)
    {
      v4 = [MEMORY[0x277CCA9A0] defaultCenter];
      [v4 postNotificationName:@"com.apple.keyboard.inputAnalytics.scheduledEventsDidComplete" object:0 userInfo:0 deliverImmediately:1];
    }

    (*(*(a1 + 32) + 16))();
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)queueScheduledEventsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  workQueue = self->_workQueue;
  v7 = handlerCopy;
  v6 = handlerCopy;
  TIDispatchAsync();
}

- (TICoreAnalyticsEventController)init
{
  v7.receiver = self;
  v7.super_class = TICoreAnalyticsEventController;
  v2 = [(TICoreAnalyticsEventController *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v4 = dispatch_queue_create("com.apple.keyboard.analytics.scheduledEventsWorkerQueue", v3);
    workQueue = v2->_workQueue;
    v2->_workQueue = v4;
  }

  return v2;
}

+ (void)registerScheduledEventsActivity
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = IXADefaultLogFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Preparing for %@ activity", "+[TICoreAnalyticsEventController registerScheduledEventsActivity]", @"com.apple.keyboard.analytics.scheduledEventsActivity"];
    *buf = 138412290;
    v7 = v3;
    _os_log_impl(&dword_22CA55000, v2, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  uTF8String = [@"com.apple.keyboard.analytics.scheduledEventsActivity" UTF8String];
  xpc_activity_register(uTF8String, *MEMORY[0x277D86238], &__block_literal_global_6188);
  v5 = *MEMORY[0x277D85DE8];
}

void __65__TICoreAnalyticsEventController_registerScheduledEventsActivity__block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = a2;
  state = xpc_activity_get_state(v2);
  if (state == 2)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v16 = 0x2020000000;
    v17 = xpc_activity_set_state(v2, 4);
    v7 = IXADefaultLogFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Running activity %@, extended=%d", "+[TICoreAnalyticsEventController registerScheduledEventsActivity]_block_invoke", @"com.apple.keyboard.analytics.scheduledEventsActivity", *(*(&buf + 1) + 24)];
      *v13 = 138412290;
      v14 = v8;
      _os_log_impl(&dword_22CA55000, v7, OS_LOG_TYPE_INFO, "%@", v13, 0xCu);
    }

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.keyboard.analytics.scheduledEventsQueue", v9);

    v12 = v2;
    TIDispatchAsync();

    _Block_object_dispose(&buf, 8);
  }

  else if (!state)
  {
    v4 = IXADefaultLogFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Checking in activity %@", "+[TICoreAnalyticsEventController registerScheduledEventsActivity]_block_invoke", @"com.apple.keyboard.analytics.scheduledEventsActivity"];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v5;
      _os_log_impl(&dword_22CA55000, v4, OS_LOG_TYPE_INFO, "%@", &buf, 0xCu);
    }

    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v6, *MEMORY[0x277D86360], 1);
    xpc_dictionary_set_int64(v6, *MEMORY[0x277D86288], *MEMORY[0x277D86298]);
    xpc_dictionary_set_int64(v6, *MEMORY[0x277D86250], *MEMORY[0x277D86290]);
    xpc_dictionary_set_int64(v6, *MEMORY[0x277D86270], *MEMORY[0x277D862A0]);
    xpc_dictionary_set_string(v6, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
    xpc_dictionary_set_BOOL(v6, *MEMORY[0x277D863A0], 1);
    xpc_dictionary_set_BOOL(v6, *MEMORY[0x277D86380], 1);
    xpc_activity_set_criteria(v2, v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __65__TICoreAnalyticsEventController_registerScheduledEventsActivity__block_invoke_54(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (xpc_activity_should_defer(*(a1 + 32)))
  {
    xpc_activity_set_state(*(a1 + 32), 3);
    v2 = IXADefaultLogFacility();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s xpc activity should be defered, defering %@", "+[TICoreAnalyticsEventController registerScheduledEventsActivity]_block_invoke", @"com.apple.keyboard.analytics.scheduledEventsActivity"];
      *buf = 138412290;
      v19 = v3;
      _os_log_impl(&dword_22CA55000, v2, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }
  }

  else
  {
    v4 = dispatch_semaphore_create(0);
    v5 = objc_autoreleasePoolPush();
    v6 = objc_opt_new();
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __65__TICoreAnalyticsEventController_registerScheduledEventsActivity__block_invoke_59;
    v16 = &unk_278733308;
    v2 = v4;
    v17 = v2;
    [v6 queueScheduledEventsWithCompletionHandler:&v13];

    v7 = dispatch_time(0, 60000000000);
    if (dispatch_semaphore_wait(v2, v7))
    {
      v8 = IXADefaultLogFacility();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Scheduled sync task timed out", "+[TICoreAnalyticsEventController registerScheduledEventsActivity]_block_invoke_2"];
        *buf = 138412290;
        v19 = v9;
        _os_log_impl(&dword_22CA55000, v8, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
      }
    }

    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      xpc_activity_set_state(*(a1 + 32), 5);
      v10 = IXADefaultLogFacility();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Done running activity %@, extended=%d", "+[TICoreAnalyticsEventController registerScheduledEventsActivity]_block_invoke", @"com.apple.keyboard.analytics.scheduledEventsActivity", *(*(*(a1 + 40) + 8) + 24), v13, v14, v15, v16];
        *buf = 138412290;
        v19 = v11;
        _os_log_impl(&dword_22CA55000, v10, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v5);
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end