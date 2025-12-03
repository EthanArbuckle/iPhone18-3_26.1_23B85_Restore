@interface WFCoreDuetListener
- (BOOL)isCallbackRegisteredWithIdentifier:(id)identifier;
- (BOOL)registerTrigger:(id)trigger error:(id *)error;
- (WFCoreDuetListener)initWithDatabaseProvider:(id)provider eventQueue:(id)queue;
- (id)databaseWithError:(id *)error;
- (void)checkTriggerStateWithIdentifier:(id)identifier completion:(id)completion;
- (void)checkTriggerStateWithKeyPath:(id)path completion:(id)completion;
- (void)fireTriggerWithIdentifier:(id)identifier force:(BOOL)force eventInfo:(id)info completion:(id)completion;
- (void)handleCallbackForTriggerWithIdentifier:(id)identifier info:(id)info;
- (void)handleSunriseSunsetChanged;
- (void)queue_unregisterCallbackForIdentifier:(id)identifier;
- (void)registerCallback:(id)callback withIdentifier:(id)identifier;
- (void)registerConfiguredTrigger:(id)trigger completion:(id)completion;
- (void)registerSunriseSunsetCallbackIfNeeded;
- (void)unregisterConfiguredTriggerWithIdentifier:(id)identifier;
@end

@implementation WFCoreDuetListener

- (void)checkTriggerStateWithKeyPath:(id)path completion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  completionCopy = completion;
  v9 = completionCopy;
  if (pathCopy)
  {
    if (completionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFCoreDuetListener.m" lineNumber:325 description:{@"Invalid parameter not satisfying: %@", @"keyPathName"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFCoreDuetListener.m" lineNumber:326 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  v10 = [MEMORY[0x277CFE358] keyPathWithKey:pathCopy];
  if (!v10)
  {
    pathCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"[Triggers] Couldn't find keyPath for: %@", pathCopy];
    v17 = getWFGeneralLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v25 = "[WFCoreDuetListener checkTriggerStateWithKeyPath:completion:]";
      v26 = 2112;
      v27 = pathCopy;
      _os_log_impl(&dword_23103C000, v17, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
    }

    v16 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1001 reason:{@"%@", pathCopy}];
    (v9)[2](v9, 0, v16);
    goto LABEL_9;
  }

  userContext = [(WFCoreDuetListener *)self userContext];
  pathCopy = [userContext objectForKeyedSubscript:v10];

  v13 = MEMORY[0x277CCACA8];
  if (pathCopy)
  {
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = [v13 stringWithFormat:@"(%@) %@", v15, pathCopy];

    (v9)[2](v9, v16, 0);
LABEL_9:

    goto LABEL_13;
  }

  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"[Triggers] No value for keyPath: %@", v10];
  v19 = getWFGeneralLogObject();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v25 = "[WFCoreDuetListener checkTriggerStateWithKeyPath:completion:]";
    v26 = 2112;
    v27 = v18;
    _os_log_impl(&dword_23103C000, v19, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
  }

  v20 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:6001 reason:{@"%@", v18}];
  (v9)[2](v9, 0, v20);

  pathCopy = 0;
LABEL_13:

  v21 = *MEMORY[0x277D85DE8];
}

- (void)checkTriggerStateWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v9 = completionCopy;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFCoreDuetListener.m" lineNumber:290 description:{@"Invalid parameter not satisfying: %@", @"triggerIdentifier"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFCoreDuetListener.m" lineNumber:291 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

    goto LABEL_3;
  }

  if (!completionCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  queue = [(WFCoreDuetListener *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__WFCoreDuetListener_checkTriggerStateWithIdentifier_completion___block_invoke;
  block[3] = &unk_2788FFF98;
  v16 = identifierCopy;
  v17 = v9;
  block[4] = self;
  v11 = identifierCopy;
  v12 = v9;
  dispatch_async(queue, block);
}

void __65__WFCoreDuetListener_checkTriggerStateWithIdentifier_completion___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v22 = 0;
  v3 = [v2 databaseWithError:&v22];
  v4 = v22;
  if (v3)
  {
    v5 = [v3 configuredTriggerForTriggerID:*(a1 + 40)];
    v6 = [v5 trigger];

    if (v6)
    {
      v7 = [v6 contextStoreKeyPathForCurrentState];
      v8 = v7;
      if (v7)
      {
        v9 = [v7 description];
        v10 = [*(a1 + 32) userContext];
        v11 = [v10 objectForKeyedSubscript:v8];

        v12 = MEMORY[0x277CCACA8];
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v15 = [v12 stringWithFormat:@"(%@) %@", v14, v11];

        (*(*(a1 + 48) + 16))();
      }

      else
      {
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"[Triggers] Couldn't find keyPath for trigger: %@", v6];
        v19 = getWFGeneralLogObject();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v24 = "[WFCoreDuetListener checkTriggerStateWithIdentifier:completion:]_block_invoke";
          v25 = 2112;
          v26 = v9;
          _os_log_impl(&dword_23103C000, v19, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
        }

        v20 = *(a1 + 48);
        v11 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1001 reason:{@"%@", v9}];
        (*(v20 + 16))(v20, 0, 0, v11);
      }
    }

    else
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"[Triggers] Couldn't find trigger with id: %@", *(a1 + 40)];
      v17 = getWFGeneralLogObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v24 = "[WFCoreDuetListener checkTriggerStateWithIdentifier:completion:]_block_invoke";
        v25 = 2112;
        v26 = v8;
        _os_log_impl(&dword_23103C000, v17, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
      }

      v18 = *(a1 + 48);
      v9 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:6003 reason:{@"%@", v8}];
      (*(v18 + 16))(v18, 0, 0, v9);
    }
  }

  else
  {
    v16 = getWFGeneralLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "[WFCoreDuetListener checkTriggerStateWithIdentifier:completion:]_block_invoke";
      v25 = 2114;
      v26 = v4;
      _os_log_impl(&dword_23103C000, v16, OS_LOG_TYPE_ERROR, "%s Failed to load database: %{public}@", buf, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)fireTriggerWithIdentifier:(id)identifier force:(BOOL)force eventInfo:(id)info completion:(id)completion
{
  identifierCopy = identifier;
  infoCopy = info;
  completionCopy = completion;
  v14 = completionCopy;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFCoreDuetListener.m" lineNumber:282 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

    if (v14)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFCoreDuetListener.m" lineNumber:283 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

    goto LABEL_3;
  }

  if (!completionCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  queue = [(WFCoreDuetListener *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__WFCoreDuetListener_fireTriggerWithIdentifier_force_eventInfo_completion___block_invoke;
  block[3] = &unk_2788FFFE8;
  block[4] = self;
  v22 = identifierCopy;
  forceCopy = force;
  v23 = infoCopy;
  v24 = v14;
  v16 = v14;
  v17 = infoCopy;
  v18 = identifierCopy;
  dispatch_async(queue, block);
}

- (void)handleSunriseSunsetChanged
{
  v32 = *MEMORY[0x277D85DE8];
  queue = [(WFCoreDuetListener *)self queue];
  dispatch_assert_queue_V2(queue);

  v26 = 0;
  v4 = [(WFCoreDuetListener *)self databaseWithError:&v26];
  v5 = v26;
  v6 = v5;
  if (v4)
  {
    v19 = v5;
    v20 = v4;
    allConfiguredTriggers = [v4 allConfiguredTriggers];
    descriptors = [allConfiguredTriggers descriptors];
    v9 = [descriptors if_compactMap:&__block_literal_global_1016];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          v21 = 0;
          [(WFCoreDuetListener *)self registerTrigger:v15 error:&v21];
          v16 = v21;
          if (v16)
          {
            v17 = getWFTriggersLogObject();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
            {
              *buf = 136315394;
              v29 = "[WFCoreDuetListener handleSunriseSunsetChanged]";
              v30 = 2114;
              v31 = v16;
              _os_log_impl(&dword_23103C000, v17, OS_LOG_TYPE_FAULT, "%s Failed to update trigger after sunrise/sunset change: %{public}@", buf, 0x16u);
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v12);
    }

    v6 = v19;
    v4 = v20;
  }

  else
  {
    v10 = getWFTriggersLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v29 = "[WFCoreDuetListener handleSunriseSunsetChanged]";
      v30 = 2114;
      v31 = v6;
      _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_ERROR, "%s Failed tp load database: %{public}@", buf, 0x16u);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void *__48__WFCoreDuetListener_handleSunriseSunsetChanged__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 trigger];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v2;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  return v4;
}

- (void)registerSunriseSunsetCallbackIfNeeded
{
  v16 = *MEMORY[0x277D85DE8];
  queue = [(WFCoreDuetListener *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = [(WFCoreDuetListener *)self isCallbackRegisteredWithIdentifier:@"com.apple.siriactionsd.registrationForSunsetSunrise"];
  v5 = getWFTriggersLogObject();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v6)
    {
      *buf = 136315138;
      v15 = "[WFCoreDuetListener registerSunriseSunsetCallbackIfNeeded]";
      _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_INFO, "%s Already registered for sunrise / sunset changes", buf, 0xCu);
    }
  }

  else
  {
    if (v6)
    {
      *buf = 136315138;
      v15 = "[WFCoreDuetListener registerSunriseSunsetCallbackIfNeeded]";
      _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_INFO, "%s Registering for sunrise / sunset changes", buf, 0xCu);
    }

    v7 = MEMORY[0x277CFE360];
    keyPathForSunriseSunsetDataDictionary = [MEMORY[0x277CFE338] keyPathForSunriseSunsetDataDictionary];
    v5 = [v7 predicateForChangeAtKeyPath:keyPathForSunriseSunsetDataDictionary];

    objc_initWeak(buf, self);
    v9 = MEMORY[0x277CFE350];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __59__WFCoreDuetListener_registerSunriseSunsetCallbackIfNeeded__block_invoke;
    v12[3] = &unk_278900258;
    objc_copyWeak(&v13, buf);
    v10 = [v9 localWakingRegistrationWithIdentifier:@"com.apple.siriactionsd.registrationForSunsetSunrise" contextualPredicate:v5 clientIdentifier:@"com.apple.siriactionsd.contextstore-registration" callback:v12];
    [(WFCoreDuetListener *)self registerCallback:v10 withIdentifier:@"com.apple.siriactionsd.registrationForSunsetSunrise"];

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __59__WFCoreDuetListener_registerSunriseSunsetCallbackIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__WFCoreDuetListener_registerSunriseSunsetCallbackIfNeeded__block_invoke_2;
  block[3] = &unk_278900148;
  block[4] = WeakRetained;
  dispatch_async(v2, block);
}

- (void)queue_unregisterCallbackForIdentifier:(id)identifier
{
  v16 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  queue = [(WFCoreDuetListener *)self queue];
  dispatch_assert_queue_V2(queue);

  registrations = [(WFCoreDuetListener *)self registrations];
  v7 = [registrations objectForKeyedSubscript:identifierCopy];

  if (v7)
  {
    v8 = getWFTriggersLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v12 = 136315394;
      v13 = "[WFCoreDuetListener queue_unregisterCallbackForIdentifier:]";
      v14 = 2114;
      v15 = identifierCopy;
      _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_DEBUG, "%s Deleting context store registration for identifier: %{public}@", &v12, 0x16u);
    }

    userContext = [(WFCoreDuetListener *)self userContext];
    [userContext deregisterCallback:v7];

    registrations2 = [(WFCoreDuetListener *)self registrations];
    [registrations2 setObject:0 forKeyedSubscript:identifierCopy];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)registerCallback:(id)callback withIdentifier:(id)identifier
{
  v20 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  callbackCopy = callback;
  queue = [(WFCoreDuetListener *)self queue];
  dispatch_assert_queue_V2(queue);

  if (callbackCopy)
  {
    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFCoreDuetListener.m" lineNumber:192 description:{@"Invalid parameter not satisfying: %@", @"registration"}];

    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFCoreDuetListener.m" lineNumber:193 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

LABEL_3:
  [(WFCoreDuetListener *)self queue_unregisterCallbackForIdentifier:identifierCopy];
  v10 = getWFTriggersLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v17 = "[WFCoreDuetListener registerCallback:withIdentifier:]";
    v18 = 2114;
    v19 = identifierCopy;
    _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_DEBUG, "%s Creating context store registration for identifier: %{public}@", buf, 0x16u);
  }

  userContext = [(WFCoreDuetListener *)self userContext];
  [userContext registerCallback:callbackCopy];

  registrations = [(WFCoreDuetListener *)self registrations];
  [registrations setObject:callbackCopy forKeyedSubscript:identifierCopy];

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)isCallbackRegisteredWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(WFCoreDuetListener *)self queue];
  dispatch_assert_queue_V2(queue);

  registrations = [(WFCoreDuetListener *)self registrations];
  v7 = [registrations objectForKeyedSubscript:identifierCopy];

  return v7 != 0;
}

- (void)handleCallbackForTriggerWithIdentifier:(id)identifier info:(id)info
{
  v35[2] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  infoCopy = info;
  queue = [(WFCoreDuetListener *)self queue];
  dispatch_assert_queue_V2(queue);

  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFCoreDuetListener.m" lineNumber:152 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v10 = getWFTriggersLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "[WFCoreDuetListener handleCallbackForTriggerWithIdentifier:info:]";
    *&buf[12] = 2114;
    *&buf[14] = identifierCopy;
    v33 = 2112;
    v34 = infoCopy;
    _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_DEFAULT, "%s 🤖 Handling callback for registration with identifier (%{public}@) and info: %@", buf, 0x20u);
  }

  v11 = infoCopy;
  v12 = getWFTriggersLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "VCEventInfoForUserFromContextStoreInfo";
    *&buf[12] = 2112;
    *&buf[14] = v11;
    _os_log_impl(&dword_23103C000, v12, OS_LOG_TYPE_DEBUG, "%s rawInfo: %@", buf, 0x16u);
  }

  v13 = [v11 objectForKeyedSubscript:@"NewValue"];
  v14 = [v11 objectForKeyedSubscript:@"OldValue"];
  if (v13)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v16 = MEMORY[0x277CBEC10];
    if (isKindOfClass)
    {
      value = [v13 value];
      value2 = [v14 value];
      v29 = value;
      v19 = VCSerializedEventInfo(value);
      v28 = value2;
      v20 = VCSerializedEventInfo(value2);
      v21 = v20;
      if (v19 | v20)
      {
        if (v19)
        {
          v22 = v19;
        }

        else
        {
          v22 = v16;
        }

        v35[0] = @"NewValue";
        v35[1] = @"OldValue";
        if (v20)
        {
          v23 = v20;
        }

        else
        {
          v23 = v16;
        }

        *buf = v22;
        *&buf[8] = v23;
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v35 count:2];
      }

      else
      {
        v24 = getWFTriggersLogObject();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          *&buf[4] = "VCEventInfoForUserFromContextStoreInfo";
          *&buf[12] = 2112;
          *&buf[14] = v11;
          _os_log_impl(&dword_23103C000, v24, OS_LOG_TYPE_FAULT, "%s Couldn't build safe object from Context Store info: %@", buf, 0x16u);
        }

        v16 = MEMORY[0x277CBEC10];
      }
    }
  }

  else
  {
    v16 = MEMORY[0x277CBEC10];
  }

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __66__WFCoreDuetListener_handleCallbackForTriggerWithIdentifier_info___block_invoke;
  v30[3] = &unk_2788FE608;
  v30[4] = self;
  v31 = identifierCopy;
  v25 = identifierCopy;
  [(WFCoreDuetListener *)self fireTriggerWithIdentifier:v25 force:0 eventInfo:v16 completion:v30];

  v26 = *MEMORY[0x277D85DE8];
}

void __66__WFCoreDuetListener_handleCallbackForTriggerWithIdentifier_info___block_invoke(uint64_t a1, char a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = getWFTriggersLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "[WFCoreDuetListener handleCallbackForTriggerWithIdentifier:info:]_block_invoke";
      v14 = 2114;
      v15 = v5;
      _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_ERROR, "%s Failed to fire trigger: %{public}@", buf, 0x16u);
    }
  }

  v7 = [*(a1 + 32) queue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__WFCoreDuetListener_handleCallbackForTriggerWithIdentifier_info___block_invoke_211;
  v10[3] = &unk_2788FFFC0;
  v8 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v8;
  dispatch_async(v7, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __66__WFCoreDuetListener_handleCallbackForTriggerWithIdentifier_info___block_invoke_211(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v17 = 0;
  v3 = [v2 databaseWithError:&v17];
  v4 = v17;
  if (v3)
  {
    v5 = [v3 configuredTriggerForTriggerID:*(a1 + 40)];
    v6 = [v5 trigger];
    v7 = [v6 needsRegistrationAfterFiring];

    if (v7)
    {
      v8 = getWFTriggersLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v19 = "[WFCoreDuetListener handleCallbackForTriggerWithIdentifier:info:]_block_invoke";
        _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_INFO, "%s Re-registering trigger", buf, 0xCu);
      }

      v9 = *(a1 + 32);
      v16 = 0;
      v10 = [v9 registerTrigger:v5 error:&v16];
      v11 = v16;
      if ((v10 & 1) == 0)
      {
        v12 = getWFTriggersLogObject();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = *(a1 + 40);
          *buf = 136315394;
          v19 = "[WFCoreDuetListener handleCallbackForTriggerWithIdentifier:info:]_block_invoke";
          v20 = 2114;
          v21 = v13;
          _os_log_impl(&dword_23103C000, v12, OS_LOG_TYPE_ERROR, "%s 🤖 Failed to reregister trigger after firing with identifier: %{public}@", buf, 0x16u);
        }
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = getWFTriggersLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 40);
      *buf = 136315394;
      v19 = "[WFCoreDuetListener handleCallbackForTriggerWithIdentifier:info:]_block_invoke";
      v20 = 2114;
      v21 = v14;
      _os_log_impl(&dword_23103C000, v11, OS_LOG_TYPE_ERROR, "%s 🤖 Failed to reregister trigger after firing with identifier because the database could not be loaded: %{public}@", buf, 0x16u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)unregisterConfiguredTriggerWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(WFCoreDuetListener *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__WFCoreDuetListener_unregisterConfiguredTriggerWithIdentifier___block_invoke;
  v7[3] = &unk_2788FFFC0;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(queue, v7);
}

- (BOOL)registerTrigger:(id)trigger error:(id *)error
{
  v52 = *MEMORY[0x277D85DE8];
  triggerCopy = trigger;
  queue = [(WFCoreDuetListener *)self queue];
  dispatch_assert_queue_V2(queue);

  if (!triggerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFCoreDuetListener.m" lineNumber:89 description:{@"Invalid parameter not satisfying: %@", @"configuredTrigger"}];
  }

  identifier = [triggerCopy identifier];
  if ([triggerCopy isEnabled])
  {
    trigger = [triggerCopy trigger];
    if (trigger && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      if (![trigger event] || (v10 = objc_msgSend(trigger, "event"), v11 = trigger, v10 == 1))
      {
        [(WFCoreDuetListener *)self registerSunriseSunsetCallbackIfNeeded];
        v11 = trigger;
      }
    }

    else
    {

      v11 = 0;
    }

    v37 = v11;
    contextStorePredicate = [trigger contextStorePredicate];
    v38 = contextStorePredicate != 0;
    if (contextStorePredicate)
    {
      contextStoreQualityOfService = [trigger contextStoreQualityOfService];
      contextStoreRegistrationIsForWatch = [trigger contextStoreRegistrationIsForWatch];
      v15 = getWFTriggersLogObject();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        if (contextStoreRegistrationIsForWatch)
        {
          v16 = @"watch";
        }

        else
        {
          v16 = @"phone";
        }

        identifier2 = [triggerCopy identifier];
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        *buf = 136316418;
        v43 = "[WFCoreDuetListener registerTrigger:error:]";
        v44 = 2112;
        v45 = contextStorePredicate;
        v46 = 1024;
        *v47 = contextStoreQualityOfService;
        *&v47[4] = 2112;
        *&v47[6] = v16;
        v48 = 2112;
        v49 = identifier2;
        v50 = 2114;
        v51 = v19;
        _os_log_impl(&dword_23103C000, v15, OS_LOG_TYPE_DEFAULT, "%s Registering predicate (%@) with QoS (%u) device (%@) for trigger: (%@) of trigger type: (%{public}@)", buf, 0x3Au);
      }

      objc_initWeak(&location, self);
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __44__WFCoreDuetListener_registerTrigger_error___block_invoke;
      aBlock[3] = &unk_278900258;
      objc_copyWeak(&v40, &location);
      v20 = _Block_copy(aBlock);
      if (contextStoreRegistrationIsForWatch)
      {
        v21 = contextStorePredicate;
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v23 = v21;
        }

        else
        {
          v23 = 0;
        }

        v24 = v23;

        if (isKindOfClass)
        {
          v25 = [MEMORY[0x277CFE350] registrationWithIdentifier:identifier contextualPredicate:v21 deviceTypes:64 clientIdentifier:@"com.apple.siriactionsd.contextstore-registration" mustWake:1 qualityOfService:contextStoreQualityOfService callback:v20];
        }

        else
        {
          v29 = getWFTriggersLogObject();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
          {
            v30 = objc_opt_class();
            v31 = NSStringFromClass(v30);
            *buf = 136315394;
            v43 = "[WFCoreDuetListener registerTrigger:error:]";
            v44 = 2114;
            v45 = v31;
            _os_log_impl(&dword_23103C000, v29, OS_LOG_TYPE_FAULT, "%s For watch, predicate must be _CDMDCSContextualPredicate, not %{public}@", buf, 0x16u);
          }

          v25 = 0;
        }
      }

      else
      {
        LODWORD(v35) = contextStoreQualityOfService;
        v25 = [MEMORY[0x277CFE350] registrationWithIdentifier:identifier contextualPredicate:contextStorePredicate dismissalPolicy:0 deviceSet:0 clientIdentifier:@"com.apple.siriactionsd.contextstore-registration" mustWake:1 qualityOfService:v35 callback:v20];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v25 setLocationManagerEffectiveBundleID:*MEMORY[0x277D7A338]];
      }

      [(WFCoreDuetListener *)self registerCallback:v25 withIdentifier:identifier];

      objc_destroyWeak(&v40);
      objc_destroyWeak(&location);
    }

    else
    {
      v26 = getWFTriggersLogObject();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        v27 = objc_opt_class();
        v28 = NSStringFromClass(v27);
        *buf = 136315650;
        v43 = "[WFCoreDuetListener registerTrigger:error:]";
        v44 = 2112;
        v45 = trigger;
        v46 = 2114;
        *v47 = v28;
        _os_log_impl(&dword_23103C000, v26, OS_LOG_TYPE_FAULT, "%s Unable to generate predicate for trigger: %@ of type: %{public}@, unregistering.", buf, 0x20u);
      }

      [(WFCoreDuetListener *)self queue_unregisterCallbackForIdentifier:identifier];
    }
  }

  else
  {
    identifier3 = [triggerCopy identifier];
    [(WFCoreDuetListener *)self queue_unregisterCallbackForIdentifier:identifier3];

    v38 = 0;
  }

  v32 = *MEMORY[0x277D85DE8];
  return v38;
}

void __44__WFCoreDuetListener_registerTrigger_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__WFCoreDuetListener_registerTrigger_error___block_invoke_2;
  block[3] = &unk_2789000F8;
  block[4] = WeakRetained;
  v12 = v5;
  v13 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_async(v8, block);
}

- (void)registerConfiguredTrigger:(id)trigger completion:(id)completion
{
  triggerCopy = trigger;
  completionCopy = completion;
  queue = [(WFCoreDuetListener *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__WFCoreDuetListener_registerConfiguredTrigger_completion___block_invoke;
  block[3] = &unk_2788FFF98;
  block[4] = self;
  v12 = triggerCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = triggerCopy;
  dispatch_async(queue, block);
}

void __59__WFCoreDuetListener_registerConfiguredTrigger_completion___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v5 = 0;
  [v2 registerTrigger:v3 error:&v5];
  v4 = v5;
  (*(a1[6] + 16))();
}

- (id)databaseWithError:(id *)error
{
  queue = [(WFCoreDuetListener *)self queue];
  dispatch_assert_queue_V2(queue);

  databaseProvider = [(WFCoreDuetListener *)self databaseProvider];
  v7 = [databaseProvider databaseWithError:error];

  return v7;
}

- (WFCoreDuetListener)initWithDatabaseProvider:(id)provider eventQueue:(id)queue
{
  providerCopy = provider;
  queueCopy = queue;
  if (!providerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFCoreDuetListener.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"databaseProvider"}];
  }

  v22.receiver = self;
  v22.super_class = WFCoreDuetListener;
  v10 = [(WFCoreDuetListener *)&v22 init];
  if (v10)
  {
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_attr_make_with_qos_class(v11, QOS_CLASS_USER_INITIATED, 0);

    v13 = dispatch_queue_create("com.apple.siriactionsd.WFCoreDuetListener", v12);
    queue = v10->_queue;
    v10->_queue = v13;

    userContext = [MEMORY[0x277CFE318] userContext];
    userContext = v10->_userContext;
    v10->_userContext = userContext;

    objc_storeStrong(&v10->_databaseProvider, provider);
    objc_storeStrong(&v10->_eventQueue, queue);
    v17 = objc_opt_new();
    registrations = v10->_registrations;
    v10->_registrations = v17;

    v19 = v10;
  }

  return v10;
}

@end