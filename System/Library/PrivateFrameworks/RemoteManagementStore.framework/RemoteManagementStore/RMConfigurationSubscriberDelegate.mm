@interface RMConfigurationSubscriberDelegate
+ (id)sharedDelegateWithApplicators:(id)applicators;
- (RMConfigurationSubscriberDelegate)initWithApplicators:(id)applicators;
- (id)_configurationsByApplicatorClassNameForConfigurationsByType:(id)type;
- (void)_sendConfigurationUIForConfigurationReference:(id)reference visible:(BOOL)visible configurationUI:(id)i configurationUIGroup:(id)group;
- (void)didFailToFetchConfigurationsWithTypes:(id)types scope:(int64_t)scope error:(id)error;
- (void)didFetchConfigurationsByType:(id)type storesByIdentifier:(id)identifier scope:(int64_t)scope completionHandler:(id)handler;
- (void)didFetchConfigurationsWithVisibleUIByType:(id)type storesByIdentifier:(id)identifier scope:(int64_t)scope completionHandler:(id)handler;
@end

@implementation RMConfigurationSubscriberDelegate

+ (id)sharedDelegateWithApplicators:(id)applicators
{
  applicatorsCopy = applicators;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__RMConfigurationSubscriberDelegate_sharedDelegateWithApplicators___block_invoke;
  block[3] = &unk_279B058D0;
  v10 = applicatorsCopy;
  v4 = sharedDelegateWithApplicators__onceToken;
  v5 = applicatorsCopy;
  if (v4 != -1)
  {
    dispatch_once(&sharedDelegateWithApplicators__onceToken, block);
  }

  v6 = sharedDelegateWithApplicators__delegate;
  v7 = sharedDelegateWithApplicators__delegate;

  return v6;
}

uint64_t __67__RMConfigurationSubscriberDelegate_sharedDelegateWithApplicators___block_invoke(uint64_t a1)
{
  sharedDelegateWithApplicators__delegate = [[RMConfigurationSubscriberDelegate alloc] initWithApplicators:*(a1 + 32)];

  return MEMORY[0x2821F96F8]();
}

- (RMConfigurationSubscriberDelegate)initWithApplicators:(id)applicators
{
  v41 = *MEMORY[0x277D85DE8];
  applicatorsCopy = applicators;
  v30.receiver = self;
  v30.super_class = RMConfigurationSubscriberDelegate;
  v5 = [(RMConfigurationSubscriberDelegate *)&v30 init];
  v6 = v5;
  if (v5)
  {
    v28 = v5;
    v29 = applicatorsCopy;
    v7 = applicatorsCopy;
    v8 = objc_opt_new();
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v36;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v36 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v35 + 1) + 8 * i);
          v15 = NSStringFromClass(v14);
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          supportedConfigurationTypes = [(objc_class *)v14 supportedConfigurationTypes];
          v17 = [supportedConfigurationTypes countByEnumeratingWithState:&v31 objects:v39 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v32;
            do
            {
              for (j = 0; j != v18; ++j)
              {
                if (*v32 != v19)
                {
                  objc_enumerationMutation(supportedConfigurationTypes);
                }

                [(NSDictionary *)v8 setObject:v15 forKeyedSubscript:*(*(&v31 + 1) + 8 * j), v28];
              }

              v18 = [supportedConfigurationTypes countByEnumeratingWithState:&v31 objects:v39 count:16];
            }

            while (v18);
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v11);
    }

    v6 = v28;
    applicatorClassNameByConfigurationType = v28->_applicatorClassNameByConfigurationType;
    v28->_applicatorClassNameByConfigurationType = v8;

    v22 = dispatch_queue_create("com.apple.rmstore.applicator", 0);
    applicatorQueue = v28->_applicatorQueue;
    v28->_applicatorQueue = v22;

    v24 = [objc_alloc(MEMORY[0x277CCA930]) initWithCondition:0];
    applyLock = v28->_applyLock;
    v28->_applyLock = v24;

    applicatorsCopy = v29;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)didFetchConfigurationsByType:(id)type storesByIdentifier:(id)identifier scope:(int64_t)scope completionHandler:(id)handler
{
  v30 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  identifierCopy = identifier;
  handlerCopy = handler;
  configurationSubscriberDelegate = [MEMORY[0x277D45F58] configurationSubscriberDelegate];
  if (os_log_type_enabled(configurationSubscriberDelegate, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v29 = typeCopy;
    _os_log_impl(&dword_261E36000, configurationSubscriberDelegate, OS_LOG_TYPE_DEFAULT, "Did fetch configurations by type: %{public}@", buf, 0xCu);
  }

  v14 = self->_applyLock;
  if (![(NSConditionLock *)v14 tryLockWhenCondition:0])
  {
    configurationSubscriberDelegate2 = [MEMORY[0x277D45F58] configurationSubscriberDelegate];
    if (os_log_type_enabled(configurationSubscriberDelegate2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_261E36000, configurationSubscriberDelegate2, OS_LOG_TYPE_DEFAULT, "Waiting for previous fetch to finish...", buf, 2u);
    }

    [(NSConditionLock *)v14 lockWhenCondition:0];
  }

  [(NSConditionLock *)v14 unlockWithCondition:1];
  v16 = [(RMConfigurationSubscriberDelegate *)self _configurationsByApplicatorClassNameForConfigurationsByType:typeCopy];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __109__RMConfigurationSubscriberDelegate_didFetchConfigurationsByType_storesByIdentifier_scope_completionHandler___block_invoke;
  v25[3] = &unk_279B05948;
  v26 = identifierCopy;
  scopeCopy = scope;
  v25[4] = self;
  v17 = identifierCopy;
  [v16 enumerateKeysAndObjectsUsingBlock:v25];
  applicatorQueue = [(RMConfigurationSubscriberDelegate *)self applicatorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __109__RMConfigurationSubscriberDelegate_didFetchConfigurationsByType_storesByIdentifier_scope_completionHandler___block_invoke_12;
  block[3] = &unk_279B05970;
  v23 = v14;
  v24 = handlerCopy;
  v19 = handlerCopy;
  v20 = v14;
  dispatch_async(applicatorQueue, block);

  v21 = *MEMORY[0x277D85DE8];
}

void __109__RMConfigurationSubscriberDelegate_didFetchConfigurationsByType_storesByIdentifier_scope_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) applicatorQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __109__RMConfigurationSubscriberDelegate_didFetchConfigurationsByType_storesByIdentifier_scope_completionHandler___block_invoke_2;
  v11[3] = &unk_279B05920;
  v8 = *(a1 + 40);
  v15 = *(a1 + 48);
  v12 = v5;
  v13 = v6;
  v14 = v8;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, v11);
}

void __109__RMConfigurationSubscriberDelegate_didFetchConfigurationsByType_storesByIdentifier_scope_completionHandler___block_invoke_2(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = NSClassFromString(*(a1 + 32));
  v3 = objc_opt_new();
  v4 = [MEMORY[0x277D45F58] configurationSubscriberDelegate];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [MEMORY[0x277CCACA8] rms_stringWithScope:*(a1 + 56)];
    v7 = [(objc_class *)v2 supportedConfigurationTypes];
    *buf = 138543874;
    v19 = v5;
    v20 = 2114;
    v21 = v6;
    v22 = 2114;
    v23 = v7;
    _os_log_impl(&dword_261E36000, v4, OS_LOG_TYPE_DEFAULT, "Applicator %{public}@ in %{public}@ scope starting processing configurations of types: %{public}@", buf, 0x20u);
  }

  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __109__RMConfigurationSubscriberDelegate_didFetchConfigurationsByType_storesByIdentifier_scope_completionHandler___block_invoke_9;
  v14[3] = &unk_279B058F8;
  v11 = *(a1 + 32);
  v12 = *(a1 + 56);
  v15 = v11;
  v16 = v12;
  v17 = v2;
  [v3 applyConfigurations:v8 storesByIdentifier:v9 scope:v10 completionHandler:v14];

  v13 = *MEMORY[0x277D85DE8];
}

void __109__RMConfigurationSubscriberDelegate_didFetchConfigurationsByType_storesByIdentifier_scope_completionHandler___block_invoke_9(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D45F58] configurationSubscriberDelegate];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [MEMORY[0x277CCACA8] rms_stringWithScope:*(a1 + 40)];
    v5 = [*(a1 + 48) supportedConfigurationTypes];
    v7 = 138543874;
    v8 = v3;
    v9 = 2114;
    v10 = v4;
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&dword_261E36000, v2, OS_LOG_TYPE_DEFAULT, "Applicator %{public}@ in %{public}@ scope finished processing configurations of types: %{public}@", &v7, 0x20u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __109__RMConfigurationSubscriberDelegate_didFetchConfigurationsByType_storesByIdentifier_scope_completionHandler___block_invoke_12(uint64_t a1)
{
  [*(a1 + 32) lockWhenCondition:1];
  v2 = [MEMORY[0x277D45F58] configurationSubscriberDelegate];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_261E36000, v2, OS_LOG_TYPE_DEFAULT, "Fetching complete.", v4, 2u);
  }

  [*(a1 + 32) unlockWithCondition:0];
  return (*(*(a1 + 40) + 16))();
}

- (void)didFailToFetchConfigurationsWithTypes:(id)types scope:(int64_t)scope error:(id)error
{
  v18 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  errorCopy = error;
  configurationSubscriberDelegate = [MEMORY[0x277D45F58] configurationSubscriberDelegate];
  if (os_log_type_enabled(configurationSubscriberDelegate, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [MEMORY[0x277CCACA8] rms_stringWithScope:scope];
    v12 = 138543874;
    v13 = v10;
    v14 = 2114;
    v15 = typesCopy;
    v16 = 2114;
    v17 = errorCopy;
    _os_log_impl(&dword_261E36000, configurationSubscriberDelegate, OS_LOG_TYPE_DEFAULT, "Did fail in %{public}@ scope to fetch configurations %{public}@: %{public}@", &v12, 0x20u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)didFetchConfigurationsWithVisibleUIByType:(id)type storesByIdentifier:(id)identifier scope:(int64_t)scope completionHandler:(id)handler
{
  v37 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  identifierCopy = identifier;
  handlerCopy = handler;
  configurationSubscriberDelegate = [MEMORY[0x277D45F58] configurationSubscriberDelegate];
  if (os_log_type_enabled(configurationSubscriberDelegate, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = typeCopy;
    _os_log_impl(&dword_261E36000, configurationSubscriberDelegate, OS_LOG_TYPE_DEFAULT, "Fetch configurationUIs by type: %{public}@", &buf, 0xCu);
  }

  v14 = self->_applyLock;
  if (![(NSConditionLock *)v14 tryLockWhenCondition:0])
  {
    configurationSubscriberDelegate2 = [MEMORY[0x277D45F58] configurationSubscriberDelegate];
    if (os_log_type_enabled(configurationSubscriberDelegate2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_261E36000, configurationSubscriberDelegate2, OS_LOG_TYPE_DEFAULT, "Waiting for previous fetch UIs to finish...", &buf, 2u);
    }

    [(NSConditionLock *)v14 lockWhenCondition:0];
  }

  [(NSConditionLock *)v14 unlockWithCondition:1];
  v16 = [(RMConfigurationSubscriberDelegate *)self _configurationsByApplicatorClassNameForConfigurationsByType:typeCopy];
  v17 = dispatch_group_create();
  *&buf = 0;
  *(&buf + 1) = &buf;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__1;
  v35 = __Block_byref_object_dispose__1;
  v36 = 0;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __122__RMConfigurationSubscriberDelegate_didFetchConfigurationsWithVisibleUIByType_storesByIdentifier_scope_completionHandler___block_invoke;
  v27[3] = &unk_279B059E8;
  v18 = v17;
  v28 = v18;
  selfCopy = self;
  p_buf = &buf;
  scopeCopy = scope;
  [v16 enumerateKeysAndObjectsUsingBlock:v27];
  v19 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __122__RMConfigurationSubscriberDelegate_didFetchConfigurationsWithVisibleUIByType_storesByIdentifier_scope_completionHandler___block_invoke_2_17;
  block[3] = &unk_279B05A10;
  v24 = v14;
  v25 = handlerCopy;
  v26 = &buf;
  v20 = handlerCopy;
  v21 = v14;
  dispatch_group_notify(v18, v19, block);

  _Block_object_dispose(&buf, 8);
  v22 = *MEMORY[0x277D85DE8];
}

void __122__RMConfigurationSubscriberDelegate_didFetchConfigurationsWithVisibleUIByType_storesByIdentifier_scope_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  dispatch_group_enter(*(a1 + 32));
  v7 = [*(a1 + 40) applicatorQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __122__RMConfigurationSubscriberDelegate_didFetchConfigurationsWithVisibleUIByType_storesByIdentifier_scope_completionHandler___block_invoke_2;
  v11[3] = &unk_279B059C0;
  v16 = *(a1 + 48);
  v12 = *(a1 + 32);
  v13 = v5;
  v17 = *(a1 + 56);
  v8 = *(a1 + 40);
  v14 = v6;
  v15 = v8;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, v11);
}

void __122__RMConfigurationSubscriberDelegate_didFetchConfigurationsWithVisibleUIByType_storesByIdentifier_scope_completionHandler___block_invoke_2(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  if (*(*(*(a1 + 64) + 8) + 40))
  {
    v2 = *(a1 + 32);
    v3 = *MEMORY[0x277D85DE8];

    dispatch_group_leave(v2);
    return;
  }

  v4 = NSClassFromString(*(a1 + 40));
  v22 = objc_opt_new();
  v5 = objc_opt_respondsToSelector();
  v6 = [MEMORY[0x277D45F58] configurationSubscriberDelegate];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v7)
    {
      v8 = *(a1 + 40);
      v9 = [MEMORY[0x277CCACA8] rms_stringWithScope:*(a1 + 72)];
      v10 = [(objc_class *)v4 supportedConfigurationTypes];
      *buf = 138543874;
      v32 = v8;
      v33 = 2114;
      v34 = v9;
      v35 = 2114;
      v36 = v10;
      v11 = "Applicator %{public}@ in %{public}@ scope processes configurationUIs of types: %{public}@";
LABEL_21:
      _os_log_debug_impl(&dword_261E36000, v6, OS_LOG_TYPE_DEBUG, v11, buf, 0x20u);
    }
  }

  else if (v7)
  {
    v21 = *(a1 + 40);
    v9 = [MEMORY[0x277CCACA8] rms_stringWithScope:*(a1 + 72)];
    v10 = [(objc_class *)v4 supportedConfigurationTypes];
    *buf = 138543874;
    v32 = v21;
    v33 = 2114;
    v34 = v9;
    v35 = 2114;
    v36 = v10;
    v11 = "Applicator %{public}@ in %{public}@ scope does not process configurationUIs of types: %{public}@";
    goto LABEL_21;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = *(a1 + 48);
  v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v27;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v26 + 1) + 8 * i);
        if (v5)
        {
          dispatch_group_enter(*(a1 + 32));
          v23[0] = MEMORY[0x277D85DD0];
          v23[1] = 3221225472;
          v23[2] = __122__RMConfigurationSubscriberDelegate_didFetchConfigurationsWithVisibleUIByType_storesByIdentifier_scope_completionHandler___block_invoke_15;
          v23[3] = &unk_279B05998;
          v18 = *(a1 + 72);
          v19 = *(a1 + 56);
          v25 = *(a1 + 64);
          v23[4] = v19;
          v23[5] = v17;
          v24 = *(a1 + 32);
          [v22 configurationUIForConfiguration:v17 scope:v18 completionHandler:v23];
        }

        else
        {
          [*(a1 + 56) _sendConfigurationUIForConfigurationReference:*(*(&v26 + 1) + 8 * i) visible:0 configurationUI:0 configurationUIGroup:*(a1 + 32)];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v14);
  }

  dispatch_group_leave(*(a1 + 32));
  v20 = *MEMORY[0x277D85DE8];
}

void __122__RMConfigurationSubscriberDelegate_didFetchConfigurationsWithVisibleUIByType_storesByIdentifier_scope_completionHandler___block_invoke_15(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a4;
  if (v8)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a4);
  }

  else
  {
    [*(a1 + 32) _sendConfigurationUIForConfigurationReference:*(a1 + 40) visible:a2 configurationUI:a3 configurationUIGroup:*(a1 + 48)];
  }

  dispatch_group_leave(*(a1 + 48));
}

uint64_t __122__RMConfigurationSubscriberDelegate_didFetchConfigurationsWithVisibleUIByType_storesByIdentifier_scope_completionHandler___block_invoke_2_17(uint64_t a1)
{
  [*(a1 + 32) lockWhenCondition:1];
  v2 = [MEMORY[0x277D45F58] configurationSubscriberDelegate];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_261E36000, v2, OS_LOG_TYPE_DEFAULT, "Fetching configuration UIs complete.", v5, 2u);
  }

  [*(a1 + 32) unlockWithCondition:0];
  v3 = *(*(*(a1 + 48) + 8) + 40);
  return (*(*(a1 + 40) + 16))();
}

- (id)_configurationsByApplicatorClassNameForConfigurationsByType:(id)type
{
  v4 = MEMORY[0x277CBEB38];
  typeCopy = type;
  applicatorClassNameByConfigurationType = [(RMConfigurationSubscriberDelegate *)self applicatorClassNameByConfigurationType];
  v7 = [v4 dictionaryWithCapacity:{objc_msgSend(applicatorClassNameByConfigurationType, "count")}];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __97__RMConfigurationSubscriberDelegate__configurationsByApplicatorClassNameForConfigurationsByType___block_invoke;
  v12[3] = &unk_279B05A38;
  v12[4] = self;
  v8 = v7;
  v13 = v8;
  [typeCopy enumerateKeysAndObjectsUsingBlock:v12];

  v9 = v13;
  v10 = v8;

  return v8;
}

void __97__RMConfigurationSubscriberDelegate__configurationsByApplicatorClassNameForConfigurationsByType___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 applicatorClassNameByConfigurationType];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (v8)
  {
    v9 = [*(a1 + 40) objectForKeyedSubscript:v8];
    if (!v9)
    {
      v9 = objc_opt_new();
      [*(a1 + 40) setObject:v9 forKeyedSubscript:v8];
    }

    [v9 addObjectsFromArray:v10];
  }
}

- (void)_sendConfigurationUIForConfigurationReference:(id)reference visible:(BOOL)visible configurationUI:(id)i configurationUIGroup:(id)group
{
  referenceCopy = reference;
  iCopy = i;
  groupCopy = group;
  store = [referenceCopy store];
  dispatch_group_enter(groupCopy);
  applicatorQueue = [(RMConfigurationSubscriberDelegate *)self applicatorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __128__RMConfigurationSubscriberDelegate__sendConfigurationUIForConfigurationReference_visible_configurationUI_configurationUIGroup___block_invoke;
  block[3] = &unk_279B05A60;
  v20 = store;
  v21 = referenceCopy;
  visibleCopy = visible;
  v22 = iCopy;
  v23 = groupCopy;
  v15 = groupCopy;
  v16 = iCopy;
  v17 = referenceCopy;
  v18 = store;
  dispatch_async(applicatorQueue, block);
}

void __128__RMConfigurationSubscriberDelegate__sendConfigurationUIForConfigurationReference_visible_configurationUI_configurationUIGroup___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) declaration];
  v4 = *(a1 + 64);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __128__RMConfigurationSubscriberDelegate__sendConfigurationUIForConfigurationReference_visible_configurationUI_configurationUIGroup___block_invoke_2;
  v6[3] = &unk_279B05448;
  v5 = *(a1 + 48);
  v7 = *(a1 + 56);
  [v2 setConfigurationUI:v3 visible:v4 ui:v5 completionHandler:v6];
}

void __128__RMConfigurationSubscriberDelegate__sendConfigurationUIForConfigurationReference_visible_configurationUI_configurationUIGroup___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [MEMORY[0x277D45F58] configurationSubscriberDelegate];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __128__RMConfigurationSubscriberDelegate__sendConfigurationUIForConfigurationReference_visible_configurationUI_configurationUIGroup___block_invoke_2_cold_1(v3, v4);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void __128__RMConfigurationSubscriberDelegate__sendConfigurationUIForConfigurationReference_visible_configurationUI_configurationUIGroup___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_261E36000, a2, OS_LOG_TYPE_ERROR, "Failed to update configuration UI: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end