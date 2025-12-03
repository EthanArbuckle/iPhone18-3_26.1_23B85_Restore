@interface RMConfigurationCombineApplicator
- (RMConfigurationCombineApplicator)initWithAdapter:(id)adapter;
- (id)_configurationByDeclarationKeyFromConfigurations:(id)configurations;
- (void)_beginProcessingWithConfigurations:(id)configurations storesByIdentifier:(id)identifier scope:(int64_t)scope completionHandler:(id)handler;
- (void)_fetchExistingDeclarationKeysWithConfigurations:(id)configurations storesByIdentifier:(id)identifier scope:(int64_t)scope completionHandler:(id)handler;
- (void)_installDeclarationKeysWithScope:(int64_t)scope configurations:(id)configurations completionHandler:(id)handler;
- (void)_processExistingDeclarationKeysWithConfigurations:(id)configurations oldDeclarationKeys:(id)keys storesByIdentifier:(id)identifier scope:(int64_t)scope completionHandler:(id)handler;
- (void)_sendStatusForFailedKeys:(id)keys enumerator:(id)enumerator applyError:(id)error scope:(int64_t)scope configurations:(id)configurations completionHandler:(id)handler;
- (void)_sendStatusForSuccessKeys:(id)keys failedKeys:(id)failedKeys reasons:(id)reasons applyError:(id)error scope:(int64_t)scope configurations:(id)configurations success:(BOOL)success completionHandler:(id)self0;
- (void)_sendStatusForSuccessKeys:(id)keys reasons:(id)reasons scope:(int64_t)scope configurations:(id)configurations completionHandler:(id)handler;
- (void)_uninstallDeclarationKeys:(id)keys scope:(int64_t)scope completionHandler:(id)handler;
- (void)configurationUIForConfiguration:(id)configuration scope:(int64_t)scope completionHandler:(id)handler;
@end

@implementation RMConfigurationCombineApplicator

- (RMConfigurationCombineApplicator)initWithAdapter:(id)adapter
{
  adapterCopy = adapter;
  v11.receiver = self;
  v11.super_class = RMConfigurationCombineApplicator;
  v6 = [(RMConfigurationCombineApplicator *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_adapter, adapter);
    v8 = [[WrappedCombineAdapter alloc] initWithAdapter:v7->_adapter];
    wrappingAdapter = v7->_wrappingAdapter;
    v7->_wrappingAdapter = v8;
  }

  return v7;
}

- (void)configurationUIForConfiguration:(id)configuration scope:(int64_t)scope completionHandler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  adapter = [(RMConfigurationCombineApplicator *)self adapter];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    adapter2 = [(RMConfigurationCombineApplicator *)self adapter];
    [adapter2 configurationUIForConfiguration:configurationCopy scope:scope completionHandler:handlerCopy];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0);
  }
}

- (void)_beginProcessingWithConfigurations:(id)configurations storesByIdentifier:(id)identifier scope:(int64_t)scope completionHandler:(id)handler
{
  configurationsCopy = configurations;
  identifierCopy = identifier;
  handlerCopy = handler;
  wrappingAdapter = [(RMConfigurationCombineApplicator *)self wrappingAdapter];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __114__RMConfigurationCombineApplicator__beginProcessingWithConfigurations_storesByIdentifier_scope_completionHandler___block_invoke;
  v17[3] = &unk_279B05498;
  v17[4] = self;
  v18 = configurationsCopy;
  v19 = identifierCopy;
  v20 = handlerCopy;
  scopeCopy = scope;
  v14 = identifierCopy;
  v15 = configurationsCopy;
  v16 = handlerCopy;
  [wrappingAdapter beginProcessingConfigurationsForScope:scope completionHandler:v17];
}

void __114__RMConfigurationCombineApplicator__beginProcessingWithConfigurations_storesByIdentifier_scope_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [MEMORY[0x277D45F58] configurationCombineApplicator];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __114__RMConfigurationCombineApplicator__beginProcessingWithConfigurations_storesByIdentifier_scope_completionHandler___block_invoke_cold_1();
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    [*(a1 + 32) _fetchExistingDeclarationKeysWithConfigurations:*(a1 + 40) storesByIdentifier:*(a1 + 48) scope:*(a1 + 64) completionHandler:*(a1 + 56)];
  }
}

- (void)_fetchExistingDeclarationKeysWithConfigurations:(id)configurations storesByIdentifier:(id)identifier scope:(int64_t)scope completionHandler:(id)handler
{
  configurationsCopy = configurations;
  identifierCopy = identifier;
  handlerCopy = handler;
  wrappingAdapter = [(RMConfigurationCombineApplicator *)self wrappingAdapter];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __127__RMConfigurationCombineApplicator__fetchExistingDeclarationKeysWithConfigurations_storesByIdentifier_scope_completionHandler___block_invoke;
  v17[3] = &unk_279B054C0;
  v20 = handlerCopy;
  scopeCopy = scope;
  v17[4] = self;
  v18 = configurationsCopy;
  v19 = identifierCopy;
  v14 = identifierCopy;
  v15 = configurationsCopy;
  v16 = handlerCopy;
  [wrappingAdapter allDeclarationKeysForScope:scope completionHandler:v17];
}

void __127__RMConfigurationCombineApplicator__fetchExistingDeclarationKeysWithConfigurations_storesByIdentifier_scope_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [MEMORY[0x277D45F58] configurationCombineApplicator];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __127__RMConfigurationCombineApplicator__fetchExistingDeclarationKeysWithConfigurations_storesByIdentifier_scope_completionHandler___block_invoke_cold_1();
    }

    v8 = *(a1 + 32);
    v10 = *(a1 + 56);
    v9 = *(a1 + 64);
    v11 = 0;
  }

  else
  {
    if ([v5 count] || objc_msgSend(*(a1 + 40), "count"))
    {
      [*(a1 + 32) _processExistingDeclarationKeysWithConfigurations:*(a1 + 40) oldDeclarationKeys:v5 storesByIdentifier:*(a1 + 48) scope:*(a1 + 64) completionHandler:*(a1 + 56)];
      goto LABEL_9;
    }

    v8 = *(a1 + 32);
    v10 = *(a1 + 56);
    v9 = *(a1 + 64);
    v11 = 1;
  }

  [v8 _endProcessingWithSuccess:v11 scope:v9 completionHandler:v10];
LABEL_9:
}

- (void)_processExistingDeclarationKeysWithConfigurations:(id)configurations oldDeclarationKeys:(id)keys storesByIdentifier:(id)identifier scope:(int64_t)scope completionHandler:(id)handler
{
  configurationsCopy = configurations;
  keysCopy = keys;
  handlerCopy = handler;
  v14 = [(RMConfigurationCombineApplicator *)self _configurationByDeclarationKeyFromConfigurations:configurationsCopy];
  v15 = MEMORY[0x277CBEB98];
  allKeys = [v14 allKeys];
  v17 = [v15 setWithArray:allKeys];

  if ([keysCopy isEqualToSet:v17])
  {
    configurationCombineApplicator = [MEMORY[0x277D45F58] configurationCombineApplicator];
    if (os_log_type_enabled(configurationCombineApplicator, OS_LOG_TYPE_DEBUG))
    {
      [RMConfigurationCombineApplicator _processExistingDeclarationKeysWithConfigurations:configurationCombineApplicator oldDeclarationKeys:? storesByIdentifier:? scope:? completionHandler:?];
    }

    [(RMConfigurationCombineApplicator *)self _endProcessingWithSuccess:1 scope:scope completionHandler:handlerCopy];
  }

  else if ([configurationsCopy count])
  {
    [(RMConfigurationCombineApplicator *)self _installDeclarationKeysWithScope:scope configurations:v14 completionHandler:handlerCopy];
  }

  else
  {
    objectEnumerator = [keysCopy objectEnumerator];
    [(RMConfigurationCombineApplicator *)self _uninstallDeclarationKeys:objectEnumerator scope:scope completionHandler:handlerCopy];
  }
}

- (void)_installDeclarationKeysWithScope:(int64_t)scope configurations:(id)configurations completionHandler:(id)handler
{
  v59 = *MEMORY[0x277D85DE8];
  configurationsCopy = configurations;
  handlerCopy = handler;
  v35 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(configurationsCopy, "count")}];
  v34 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(configurationsCopy, "count")}];
  v36 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(configurationsCopy, "count")}];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v8 = configurationsCopy;
  v9 = [v8 countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (!v9)
  {
    goto LABEL_18;
  }

  v10 = v9;
  v11 = *v51;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v51 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v50 + 1) + 8 * i);
      v14 = [v8 objectForKeyedSubscript:v13];
      declaration = [v14 declaration];
      adapter = [(RMConfigurationCombineApplicator *)self adapter];
      [adapter configurationClass];
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        store = [v14 store];
        v19 = [store isValidDeclaration:declaration];

        if (v19)
        {
          [v35 addObject:declaration];
          [v34 addObject:v13];
          goto LABEL_16;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [RMConfigurationCombineApplicator _installDeclarationKeysWithScope:v54 configurations:declaration completionHandler:&v55];
        }

        v21 = v36;
        v22 = &unk_287474CD8;
      }

      else
      {
        configurationCombineApplicator = [MEMORY[0x277D45F58] configurationCombineApplicator];
        if (os_log_type_enabled(configurationCombineApplicator, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v57 = declaration;
          _os_log_error_impl(&dword_261E36000, configurationCombineApplicator, OS_LOG_TYPE_ERROR, "Incorrect declaration class: %{public}@", buf, 0xCu);
        }

        v21 = v36;
        v22 = &unk_287474CC0;
      }

      [v21 setObject:v22 forKeyedSubscript:v13];
LABEL_16:
    }

    v10 = [v8 countByEnumeratingWithState:&v50 objects:v58 count:16];
  }

  while (v10);
LABEL_18:

  if ([v35 count])
  {
    adapter2 = [(RMConfigurationCombineApplicator *)self adapter];
    v24 = [adapter2 combineConfigurations:v35];

    wrappingAdapter = [(RMConfigurationCombineApplicator *)self wrappingAdapter];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __102__RMConfigurationCombineApplicator__installDeclarationKeysWithScope_configurations_completionHandler___block_invoke_55;
    v37[3] = &unk_279B05510;
    v38 = v34;
    v39 = v36;
    selfCopy = self;
    v41 = v8;
    v42 = handlerCopy;
    scopeCopy = scope;
    v26 = handlerCopy;
    v27 = v8;
    v28 = v36;
    v29 = v34;
    [wrappingAdapter applyCombinedConfiguration:v24 declarationKeys:v29 scope:scope completionHandler:v37];
  }

  else
  {
    wrappingAdapter2 = [(RMConfigurationCombineApplicator *)self wrappingAdapter];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __102__RMConfigurationCombineApplicator__installDeclarationKeysWithScope_configurations_completionHandler___block_invoke;
    v44[3] = &unk_279B054E8;
    v44[4] = self;
    v45 = v34;
    v46 = v36;
    v47 = v8;
    v48 = handlerCopy;
    scopeCopy2 = scope;
    v27 = handlerCopy;
    v28 = v8;
    v29 = v36;
    v24 = v34;
    [wrappingAdapter2 removeCombinedConfigurationForScope:scope completionHandler:v44];
  }

  v31 = *MEMORY[0x277D85DE8];
}

void __102__RMConfigurationCombineApplicator__installDeclarationKeysWithScope_configurations_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [MEMORY[0x277D45F58] configurationCombineApplicator];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __102__RMConfigurationCombineApplicator__installDeclarationKeysWithScope_configurations_completionHandler___block_invoke_cold_1();
    }
  }

  LOBYTE(v5) = v3 == 0;
  [*(a1 + 32) _sendStatusForSuccessKeys:*(a1 + 40) failedKeys:*(a1 + 48) reasons:0 applyError:0 scope:*(a1 + 72) configurations:*(a1 + 56) success:v5 completionHandler:*(a1 + 64)];
}

void __102__RMConfigurationCombineApplicator__installDeclarationKeysWithScope_configurations_completionHandler___block_invoke_55(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [MEMORY[0x277D45F58] configurationCombineApplicator];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __102__RMConfigurationCombineApplicator__installDeclarationKeysWithScope_configurations_completionHandler___block_invoke_55_cold_1();
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = *(a1 + 32);
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(a1 + 40) setObject:&unk_287474CF0 forKeyedSubscript:*(*(&v15 + 1) + 8 * v12++)];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    [*(a1 + 32) removeAllObjects];
  }

  LOBYTE(v14) = v6 == 0;
  [*(a1 + 48) _sendStatusForSuccessKeys:*(a1 + 32) failedKeys:*(a1 + 40) reasons:v5 applyError:v6 scope:*(a1 + 72) configurations:*(a1 + 56) success:v14 completionHandler:{*(a1 + 64), v15}];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_sendStatusForSuccessKeys:(id)keys failedKeys:(id)failedKeys reasons:(id)reasons applyError:(id)error scope:(int64_t)scope configurations:(id)configurations success:(BOOL)success completionHandler:(id)self0
{
  failedKeysCopy = failedKeys;
  errorCopy = error;
  configurationsCopy = configurations;
  handlerCopy = handler;
  reasonsCopy = reasons;
  objectEnumerator = [keys objectEnumerator];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __139__RMConfigurationCombineApplicator__sendStatusForSuccessKeys_failedKeys_reasons_applyError_scope_configurations_success_completionHandler___block_invoke;
  v26[3] = &unk_279B05560;
  v26[4] = self;
  v27 = failedKeysCopy;
  v28 = errorCopy;
  v29 = configurationsCopy;
  successCopy = success;
  v30 = handlerCopy;
  scopeCopy = scope;
  v22 = handlerCopy;
  v23 = configurationsCopy;
  v24 = errorCopy;
  v25 = failedKeysCopy;
  [(RMConfigurationCombineApplicator *)self _sendStatusForSuccessKeys:objectEnumerator reasons:reasonsCopy scope:scope configurations:v23 completionHandler:v26];
}

void __139__RMConfigurationCombineApplicator__sendStatusForSuccessKeys_failedKeys_reasons_applyError_scope_configurations_success_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [v3 keyEnumerator];
  v5 = *(a1 + 72);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __139__RMConfigurationCombineApplicator__sendStatusForSuccessKeys_failedKeys_reasons_applyError_scope_configurations_success_completionHandler___block_invoke_2;
  v9[3] = &unk_279B05538;
  v8 = *(a1 + 32);
  v12 = *(a1 + 80);
  v9[4] = v8;
  v11 = v5;
  v10 = *(a1 + 64);
  [v2 _sendStatusForFailedKeys:v3 enumerator:v4 applyError:v6 scope:v5 configurations:v7 completionHandler:v9];
}

- (void)_sendStatusForSuccessKeys:(id)keys reasons:(id)reasons scope:(int64_t)scope configurations:(id)configurations completionHandler:(id)handler
{
  keysCopy = keys;
  reasonsCopy = reasons;
  configurationsCopy = configurations;
  handlerCopy = handler;
  nextObject = [keysCopy nextObject];
  if (nextObject)
  {
    v17 = [configurationsCopy objectForKeyedSubscript:nextObject];
    store = [v17 store];
    declaration = [v17 declaration];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __109__RMConfigurationCombineApplicator__sendStatusForSuccessKeys_reasons_scope_configurations_completionHandler___block_invoke;
    v20[3] = &unk_279B05588;
    v21 = nextObject;
    selfCopy = self;
    v23 = keysCopy;
    v24 = reasonsCopy;
    scopeCopy = scope;
    v25 = configurationsCopy;
    v26 = handlerCopy;
    [store configurationSuccessfullyApplied:declaration reasons:v24 completionHandler:v20];
  }

  else
  {
    handlerCopy[2](handlerCopy);
  }
}

uint64_t __109__RMConfigurationCombineApplicator__sendStatusForSuccessKeys_reasons_scope_configurations_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [MEMORY[0x277D45F58] configurationCombineApplicator];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __109__RMConfigurationCombineApplicator__sendStatusForSuccessKeys_reasons_scope_configurations_completionHandler___block_invoke_cold_1(a1);
    }
  }

  return [*(a1 + 40) _sendStatusForSuccessKeys:*(a1 + 48) reasons:*(a1 + 56) scope:*(a1 + 80) configurations:*(a1 + 64) completionHandler:*(a1 + 72)];
}

- (void)_sendStatusForFailedKeys:(id)keys enumerator:(id)enumerator applyError:(id)error scope:(int64_t)scope configurations:(id)configurations completionHandler:(id)handler
{
  keysCopy = keys;
  enumeratorCopy = enumerator;
  errorCopy = error;
  configurationsCopy = configurations;
  handlerCopy = handler;
  nextObject = [enumeratorCopy nextObject];
  v19 = [keysCopy objectForKeyedSubscript:nextObject];
  integerValue = [v19 integerValue];

  if (nextObject)
  {
    v21 = [configurationsCopy objectForKeyedSubscript:nextObject];
    [v21 store];
    v33 = v32 = v21;
    declaration = [v21 declaration];
    v34 = errorCopy;
    if (integerValue == 2)
    {
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __122__RMConfigurationCombineApplicator__sendStatusForFailedKeys_enumerator_applyError_scope_configurations_completionHandler___block_invoke_59;
      v43[3] = &unk_279B055B0;
      v31 = v44;
      v44[0] = nextObject;
      v44[1] = self;
      v30 = &v45;
      v45 = keysCopy;
      v29 = &v46;
      v46 = enumeratorCopy;
      v23 = &v47;
      v47 = errorCopy;
      v49[1] = scope;
      v24 = &v48;
      v48 = configurationsCopy;
      v25 = v49;
      v49[0] = handlerCopy;
      v26 = v33;
      [v33 configurationNotSupported:declaration error:0 completionHandler:v43];
    }

    else if (integerValue)
    {
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __122__RMConfigurationCombineApplicator__sendStatusForFailedKeys_enumerator_applyError_scope_configurations_completionHandler___block_invoke_60;
      v36[3] = &unk_279B055B0;
      v31 = v37;
      v37[0] = nextObject;
      v37[1] = self;
      v30 = &v38;
      v38 = keysCopy;
      v29 = &v39;
      v39 = enumeratorCopy;
      v23 = &v40;
      v27 = errorCopy;
      v40 = v27;
      v42[1] = scope;
      v24 = &v41;
      v41 = configurationsCopy;
      v25 = v42;
      v42[0] = handlerCopy;
      v28 = v27;
      v26 = v33;
      [v33 configurationFailedToApply:declaration error:v28 completionHandler:v36];
    }

    else
    {
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __122__RMConfigurationCombineApplicator__sendStatusForFailedKeys_enumerator_applyError_scope_configurations_completionHandler___block_invoke;
      v50[3] = &unk_279B055B0;
      v31 = v51;
      v51[0] = nextObject;
      v51[1] = self;
      v30 = &v52;
      v52 = keysCopy;
      v29 = &v53;
      v53 = enumeratorCopy;
      v23 = &v54;
      v54 = errorCopy;
      v56[1] = scope;
      v24 = &v55;
      v55 = configurationsCopy;
      v25 = v56;
      v56[0] = handlerCopy;
      v26 = v33;
      [v33 configurationIsInvalid:declaration error:0 completionHandler:v50];
    }

    errorCopy = v34;
  }

  else
  {
    handlerCopy[2](handlerCopy);
  }
}

uint64_t __122__RMConfigurationCombineApplicator__sendStatusForFailedKeys_enumerator_applyError_scope_configurations_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [MEMORY[0x277D45F58] configurationCombineApplicator];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __122__RMConfigurationCombineApplicator__sendStatusForFailedKeys_enumerator_applyError_scope_configurations_completionHandler___block_invoke_cold_1(a1);
    }
  }

  return [*(a1 + 40) _sendStatusForFailedKeys:*(a1 + 48) enumerator:*(a1 + 56) applyError:*(a1 + 64) scope:*(a1 + 88) configurations:*(a1 + 72) completionHandler:*(a1 + 80)];
}

uint64_t __122__RMConfigurationCombineApplicator__sendStatusForFailedKeys_enumerator_applyError_scope_configurations_completionHandler___block_invoke_59(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [MEMORY[0x277D45F58] configurationCombineApplicator];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __122__RMConfigurationCombineApplicator__sendStatusForFailedKeys_enumerator_applyError_scope_configurations_completionHandler___block_invoke_cold_1(a1);
    }
  }

  return [*(a1 + 40) _sendStatusForFailedKeys:*(a1 + 48) enumerator:*(a1 + 56) applyError:*(a1 + 64) scope:*(a1 + 88) configurations:*(a1 + 72) completionHandler:*(a1 + 80)];
}

uint64_t __122__RMConfigurationCombineApplicator__sendStatusForFailedKeys_enumerator_applyError_scope_configurations_completionHandler___block_invoke_60(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [MEMORY[0x277D45F58] configurationCombineApplicator];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __122__RMConfigurationCombineApplicator__sendStatusForFailedKeys_enumerator_applyError_scope_configurations_completionHandler___block_invoke_cold_1(a1);
    }
  }

  return [*(a1 + 40) _sendStatusForFailedKeys:*(a1 + 48) enumerator:*(a1 + 56) applyError:*(a1 + 64) scope:*(a1 + 88) configurations:*(a1 + 72) completionHandler:*(a1 + 80)];
}

- (void)_uninstallDeclarationKeys:(id)keys scope:(int64_t)scope completionHandler:(id)handler
{
  keysCopy = keys;
  handlerCopy = handler;
  configurationCombineApplicator = [MEMORY[0x277D45F58] configurationCombineApplicator];
  if (os_log_type_enabled(configurationCombineApplicator, OS_LOG_TYPE_DEBUG))
  {
    [RMConfigurationCombineApplicator _uninstallDeclarationKeys:scope:completionHandler:];
  }

  wrappingAdapter = [(RMConfigurationCombineApplicator *)self wrappingAdapter];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __86__RMConfigurationCombineApplicator__uninstallDeclarationKeys_scope_completionHandler___block_invoke;
  v14[3] = &unk_279B055D8;
  v16 = handlerCopy;
  scopeCopy = scope;
  v14[4] = self;
  v15 = keysCopy;
  v12 = keysCopy;
  v13 = handlerCopy;
  [wrappingAdapter removeCombinedConfigurationForScope:scope completionHandler:v14];
}

void __86__RMConfigurationCombineApplicator__uninstallDeclarationKeys_scope_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D45F58] configurationCombineApplicator];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __102__RMConfigurationCombineApplicator__installDeclarationKeysWithScope_configurations_completionHandler___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __86__RMConfigurationCombineApplicator__uninstallDeclarationKeys_scope_completionHandler___block_invoke_cold_2(a1, v5);
  }

  [*(a1 + 32) _endProcessingWithSuccess:v3 == 0 scope:*(a1 + 56) completionHandler:*(a1 + 48)];
}

void __86__RMConfigurationCombineApplicator__endProcessingWithSuccess_scope_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [MEMORY[0x277D45F58] configurationCombineApplicator];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __86__RMConfigurationCombineApplicator__endProcessingWithSuccess_scope_completionHandler___block_invoke_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (id)_configurationByDeclarationKeyFromConfigurations:(id)configurations
{
  v21 = *MEMORY[0x277D85DE8];
  configurationsCopy = configurations;
  v5 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = configurationsCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        adapter = [(RMConfigurationCombineApplicator *)self adapter];
        v13 = [adapter declarationKeyForConfiguration:v11];

        [v5 setObject:v11 forKeyedSubscript:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

void __114__RMConfigurationCombineApplicator__beginProcessingWithConfigurations_storesByIdentifier_scope_completionHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, v0, v1, "Failed to begin processing configurations: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __127__RMConfigurationCombineApplicator__fetchExistingDeclarationKeysWithConfigurations_storesByIdentifier_scope_completionHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, v0, v1, "Failed to fetch declaration keys: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_installDeclarationKeysWithScope:(uint8_t *)buf configurations:(uint64_t)a2 completionHandler:(void *)a3 .cold.1(uint8_t *buf, uint64_t a2, void *a3)
{
  *buf = 138543362;
  *a3 = a2;
  _os_log_error_impl(&dword_261E36000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Declaration not supported: %{public}@", buf, 0xCu);
}

void __102__RMConfigurationCombineApplicator__installDeclarationKeysWithScope_configurations_completionHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, v0, v1, "Failed to remove effective state: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __102__RMConfigurationCombineApplicator__installDeclarationKeysWithScope_configurations_completionHandler___block_invoke_55_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, v0, v1, "Failed to apply effective state: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __109__RMConfigurationCombineApplicator__sendStatusForSuccessKeys_reasons_scope_configurations_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = [OUTLINED_FUNCTION_3_0(a1) key];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0(&dword_261E36000, v3, v4, "Failed to notify store of applied declaration key: %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __122__RMConfigurationCombineApplicator__sendStatusForFailedKeys_enumerator_applyError_scope_configurations_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = [OUTLINED_FUNCTION_3_0(a1) key];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0(&dword_261E36000, v3, v4, "Failed to notify store of failure of declaration key: %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_uninstallDeclarationKeys:scope:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(&dword_261E36000, v0, OS_LOG_TYPE_DEBUG, "Removing all declaration keys: %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __86__RMConfigurationCombineApplicator__uninstallDeclarationKeys_scope_completionHandler___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v4 = 138543362;
  v5 = v2;
  _os_log_debug_impl(&dword_261E36000, a2, OS_LOG_TYPE_DEBUG, "Removed all declaration keys: %{public}@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __86__RMConfigurationCombineApplicator__endProcessingWithSuccess_scope_completionHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, v0, v1, "Failed to end processing configurations: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end