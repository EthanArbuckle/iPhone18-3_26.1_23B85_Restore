@interface RMConfigurationSingleApplicator
- (BOOL)_supportedConfigurationType:(id)type;
- (BOOL)_usesKeychain;
- (RMConfigurationSingleApplicator)initWithAdapter:(id)adapter;
- (id)_configurationByDeclarationKeyFromConfigurations:(id)configurations;
- (void)_beginProcessingWithConfigurations:(id)configurations storesByIdentifier:(id)identifier scope:(int64_t)scope completionHandler:(id)handler;
- (void)_cleanupDeclarationKeyIfNeeded:(id)needed scope:(int64_t)scope doIt:(BOOL)it completionHandler:(id)handler;
- (void)_fetchExistingDeclarationKeyWithConfigurations:(id)configurations storesByIdentifier:(id)identifier scope:(int64_t)scope completionHandler:(id)handler;
- (void)_installDeclarationKey:(id)key scope:(int64_t)scope configurations:(id)configurations completionHandler:(id)handler;
- (void)_invalidDeclarationKeys:(id)keys scope:(int64_t)scope configurations:(id)configurations completionHandler:(id)handler;
- (void)_processExistingDeclarationKeyWithConfigurations:(id)configurations oldDeclarationKey:(id)key storesByIdentifier:(id)identifier scope:(int64_t)scope completionHandler:(id)handler;
- (void)_uninstallDeclarationKey:(id)key scope:(int64_t)scope completionHandler:(id)handler;
- (void)configurationUIForConfiguration:(id)configuration scope:(int64_t)scope completionHandler:(id)handler;
@end

@implementation RMConfigurationSingleApplicator

- (RMConfigurationSingleApplicator)initWithAdapter:(id)adapter
{
  adapterCopy = adapter;
  v11.receiver = self;
  v11.super_class = RMConfigurationSingleApplicator;
  v6 = [(RMConfigurationSingleApplicator *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_adapter, adapter);
    v8 = [[WrappedSingleAdapter alloc] initWithAdapter:v7->_adapter];
    wrappingAdapter = v7->_wrappingAdapter;
    v7->_wrappingAdapter = v8;

    v7->_doKeychainUnassign = [(RMConfigurationSingleApplicator *)v7 _usesKeychain];
  }

  return v7;
}

- (void)configurationUIForConfiguration:(id)configuration scope:(int64_t)scope completionHandler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  adapter = [(RMConfigurationSingleApplicator *)self adapter];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    adapter2 = [(RMConfigurationSingleApplicator *)self adapter];
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
  wrappingAdapter = [(RMConfigurationSingleApplicator *)self wrappingAdapter];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __113__RMConfigurationSingleApplicator__beginProcessingWithConfigurations_storesByIdentifier_scope_completionHandler___block_invoke;
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

void __113__RMConfigurationSingleApplicator__beginProcessingWithConfigurations_storesByIdentifier_scope_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [MEMORY[0x277D45F58] configurationSingleApplicator];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __114__RMConfigurationCombineApplicator__beginProcessingWithConfigurations_storesByIdentifier_scope_completionHandler___block_invoke_cold_1();
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    [*(a1 + 32) _fetchExistingDeclarationKeyWithConfigurations:*(a1 + 40) storesByIdentifier:*(a1 + 48) scope:*(a1 + 64) completionHandler:*(a1 + 56)];
  }
}

- (void)_fetchExistingDeclarationKeyWithConfigurations:(id)configurations storesByIdentifier:(id)identifier scope:(int64_t)scope completionHandler:(id)handler
{
  configurationsCopy = configurations;
  identifierCopy = identifier;
  handlerCopy = handler;
  wrappingAdapter = [(RMConfigurationSingleApplicator *)self wrappingAdapter];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __125__RMConfigurationSingleApplicator__fetchExistingDeclarationKeyWithConfigurations_storesByIdentifier_scope_completionHandler___block_invoke;
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

void __125__RMConfigurationSingleApplicator__fetchExistingDeclarationKeyWithConfigurations_storesByIdentifier_scope_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = [MEMORY[0x277D45F58] configurationSingleApplicator];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __125__RMConfigurationSingleApplicator__fetchExistingDeclarationKeyWithConfigurations_storesByIdentifier_scope_completionHandler___block_invoke_cold_1();
    }

    [*(a1 + 32) _endProcessingWithSuccess:0 scope:*(a1 + 64) completionHandler:*(a1 + 56)];
  }

  else
  {
    v7 = [a2 anyObject];
    if (v7 || [*(a1 + 40) count])
    {
      [*(a1 + 32) _processExistingDeclarationKeyWithConfigurations:*(a1 + 40) oldDeclarationKey:v7 storesByIdentifier:*(a1 + 48) scope:*(a1 + 64) completionHandler:*(a1 + 56)];
    }

    else
    {
      [*(a1 + 32) _endProcessingWithSuccess:1 scope:*(a1 + 64) completionHandler:*(a1 + 56)];
    }
  }
}

- (void)_processExistingDeclarationKeyWithConfigurations:(id)configurations oldDeclarationKey:(id)key storesByIdentifier:(id)identifier scope:(int64_t)scope completionHandler:(id)handler
{
  configurationsCopy = configurations;
  keyCopy = key;
  identifierCopy = identifier;
  handlerCopy = handler;
  v40 = configurationsCopy;
  v14 = [(RMConfigurationSingleApplicator *)self _configurationByDeclarationKeyFromConfigurations:configurationsCopy];
  v15 = MEMORY[0x277CBEB98];
  allKeys = [v14 allKeys];
  v17 = [v15 setWithArray:allKeys];

  if (keyCopy)
  {
    v18 = [MEMORY[0x277CBEB98] setWithObject:keyCopy];
  }

  else
  {
    v18 = objc_opt_new();
  }

  v19 = v18;
  v59 = 0;
  v60[0] = 0;
  v58 = 0;
  [RMStoreDeclarationKey synchronizeOldKeys:v18 newKeys:v17 returningUnchangedKeys:v60 returningApplyKeys:&v59 returningRemoveKeys:&v58];
  v20 = v60[0];
  v21 = v59;
  v42 = v58;

  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__0;
  v56 = __Block_byref_object_dispose__0;
  v57 = 0;
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __145__RMConfigurationSingleApplicator__processExistingDeclarationKeyWithConfigurations_oldDeclarationKey_storesByIdentifier_scope_completionHandler___block_invoke;
  v51[3] = &unk_279B05790;
  v51[4] = &v52;
  v43 = v21;
  [v21 enumerateObjectsUsingBlock:v51];
  v22 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v17, "count")}];
  v38 = v17;
  if ([v20 count])
  {
    [v22 unionSet:v17];
    anyObject = [v20 anyObject];
    [v22 removeObject:anyObject];
    anyObject4 = 0;
LABEL_15:
    selfCopy3 = self;
    v30 = v20;
    v31 = keyCopy;

LABEL_16:
    anyObject5 = 0;
    goto LABEL_17;
  }

  v25 = v53[5];
  if (v25)
  {
    anyObject4 = v25;
    [v22 unionSet:v17];
    anyObject = [anyObject4 applyKey];
    [v22 removeObject:anyObject];
    goto LABEL_15;
  }

  if ([v21 count])
  {
    if ([v42 count])
    {
      anyObject2 = [v21 anyObject];
      applyKey = [anyObject2 applyKey];
      anyObject3 = [v42 anyObject];
      anyObject4 = [RMStoreDeclarationKeyPair newDeclarationKeyPairWithUpdateKey:applyKey replaceKey:anyObject3];
    }

    else
    {
      anyObject4 = [v21 anyObject];
    }

    [v22 unionSet:v17];
    anyObject = [anyObject4 applyKey];
    [v22 removeObject:anyObject];
    goto LABEL_15;
  }

  if (![v42 count])
  {
    selfCopy3 = self;
    v30 = v20;
    v31 = keyCopy;
    anyObject4 = 0;
    goto LABEL_16;
  }

  anyObject5 = [v42 anyObject];
  selfCopy3 = self;
  v30 = v20;
  v31 = keyCopy;
  anyObject4 = 0;
LABEL_17:
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __145__RMConfigurationSingleApplicator__processExistingDeclarationKeyWithConfigurations_oldDeclarationKey_storesByIdentifier_scope_completionHandler___block_invoke_2;
  v44[3] = &unk_279B056A0;
  v44[4] = selfCopy3;
  v32 = v22;
  v45 = v32;
  scopeCopy = scope;
  v33 = v14;
  v46 = v33;
  v34 = anyObject4;
  v47 = v34;
  v35 = anyObject5;
  v48 = v35;
  v36 = handlerCopy;
  v49 = v36;
  [(RMConfigurationSingleApplicator *)selfCopy3 _installDeclarationKey:v34 scope:scope configurations:v33 completionHandler:v44];

  _Block_object_dispose(&v52, 8);
}

void __145__RMConfigurationSingleApplicator__processExistingDeclarationKeyWithConfigurations_oldDeclarationKey_storesByIdentifier_scope_completionHandler___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v7 = a2;
  v6 = [v7 replaceKey];

  if (v6)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

void __145__RMConfigurationSingleApplicator__processExistingDeclarationKeyWithConfigurations_oldDeclarationKey_storesByIdentifier_scope_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectEnumerator];
  v4 = *(a1 + 80);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __145__RMConfigurationSingleApplicator__processExistingDeclarationKeyWithConfigurations_oldDeclarationKey_storesByIdentifier_scope_completionHandler___block_invoke_3;
  v8[3] = &unk_279B05650;
  v8[4] = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 80);
  v9 = v6;
  v12 = v7;
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  [v2 _invalidDeclarationKeys:v3 scope:v4 configurations:v5 completionHandler:v8];
}

void __145__RMConfigurationSingleApplicator__processExistingDeclarationKeyWithConfigurations_oldDeclarationKey_storesByIdentifier_scope_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) replaceKey];
  v4 = *(a1 + 64);
  v5 = [*(a1 + 32) doKeychainUnassign];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __145__RMConfigurationSingleApplicator__processExistingDeclarationKeyWithConfigurations_oldDeclarationKey_storesByIdentifier_scope_completionHandler___block_invoke_4;
  v9[3] = &unk_279B05768;
  v9[4] = *(a1 + 32);
  v6 = *(a1 + 48);
  v8 = *(a1 + 56);
  v7 = *(a1 + 64);
  v10 = v6;
  v12 = v7;
  v11 = v8;
  [v2 _cleanupDeclarationKeyIfNeeded:v3 scope:v4 doIt:v5 completionHandler:v9];
}

void __145__RMConfigurationSingleApplicator__processExistingDeclarationKeyWithConfigurations_oldDeclarationKey_storesByIdentifier_scope_completionHandler___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 56);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __145__RMConfigurationSingleApplicator__processExistingDeclarationKeyWithConfigurations_oldDeclarationKey_storesByIdentifier_scope_completionHandler___block_invoke_5;
  v4[3] = &unk_279B057B8;
  v4[4] = v1;
  v6 = v3;
  v5 = *(a1 + 48);
  [v1 _uninstallDeclarationKey:v2 scope:v3 completionHandler:v4];
}

- (void)_installDeclarationKey:(id)key scope:(int64_t)scope configurations:(id)configurations completionHandler:(id)handler
{
  keyCopy = key;
  configurationsCopy = configurations;
  handlerCopy = handler;
  v13 = handlerCopy;
  if (keyCopy)
  {
    applyKey = [keyCopy applyKey];
    v15 = [configurationsCopy objectForKeyedSubscript:applyKey];
    declaration = [v15 declaration];
    if ([(RMConfigurationSingleApplicator *)self _supportedConfigurationType:declaration])
    {
      store = [v15 store];
      v18 = [store isValidDeclaration:declaration];

      if (v18)
      {
        wrappingAdapter = [(RMConfigurationSingleApplicator *)self wrappingAdapter];
        replaceKey = [keyCopy replaceKey];
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __97__RMConfigurationSingleApplicator__installDeclarationKey_scope_configurations_completionHandler___block_invoke_2;
        v26[3] = &unk_279B057E0;
        v27 = applyKey;
        v28 = v15;
        v29 = declaration;
        v30 = v13;
        [wrappingAdapter applyConfiguration:v28 replaceKey:replaceKey scope:scope completionHandler:v26];

        createInternalError = v27;
      }

      else
      {
        configurationSingleApplicator = [MEMORY[0x277D45F58] configurationSingleApplicator];
        if (os_log_type_enabled(configurationSingleApplicator, OS_LOG_TYPE_ERROR))
        {
          [RMConfigurationMultipleApplicator _installDeclarationKeys:scope:configurations:completionHandler:];
        }

        store2 = [v15 store];
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __97__RMConfigurationSingleApplicator__installDeclarationKey_scope_configurations_completionHandler___block_invoke_55;
        v31[3] = &unk_279B05310;
        v32 = v13;
        [store2 configurationNotSupported:declaration error:0 completionHandler:v31];

        createInternalError = v32;
      }
    }

    else
    {
      configurationSingleApplicator2 = [MEMORY[0x277D45F58] configurationSingleApplicator];
      if (os_log_type_enabled(configurationSingleApplicator2, OS_LOG_TYPE_ERROR))
      {
        [RMConfigurationMultipleApplicator _installDeclarationKeys:scope:configurations:completionHandler:];
      }

      createInternalError = [MEMORY[0x277D45F40] createInternalError];
      store3 = [v15 store];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __97__RMConfigurationSingleApplicator__installDeclarationKey_scope_configurations_completionHandler___block_invoke;
      v33[3] = &unk_279B05310;
      v34 = v13;
      [store3 configurationIsInvalid:declaration error:createInternalError completionHandler:v33];
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy);
  }
}

void __97__RMConfigurationSingleApplicator__installDeclarationKey_scope_configurations_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277D45F58] configurationSingleApplicator];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __100__RMConfigurationMultipleApplicator__installDeclarationKeys_scope_configurations_completionHandler___block_invoke_2_cold_1(a1);
    }

    v9 = [*(a1 + 40) store];
    v10 = *(a1 + 48);
    if (v5)
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __97__RMConfigurationSingleApplicator__installDeclarationKey_scope_configurations_completionHandler___block_invoke_56;
      v17[3] = &unk_279B05310;
      v11 = &v18;
      v18 = *(a1 + 56);
      [v9 configurationErrorReasons:v10 reasons:v5 completionHandler:v17];
    }

    else
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __97__RMConfigurationSingleApplicator__installDeclarationKey_scope_configurations_completionHandler___block_invoke_2_57;
      v15[3] = &unk_279B05310;
      v11 = &v16;
      v16 = *(a1 + 56);
      [v9 configurationFailedToApply:v10 error:v6 completionHandler:v15];
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __100__RMConfigurationMultipleApplicator__installDeclarationKeys_scope_configurations_completionHandler___block_invoke_2_cold_2(a1);
    }

    v9 = [*(a1 + 40) store];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __97__RMConfigurationSingleApplicator__installDeclarationKey_scope_configurations_completionHandler___block_invoke_58;
    v13[3] = &unk_279B05310;
    v11 = &v14;
    v12 = *(a1 + 48);
    v14 = *(a1 + 56);
    [v9 configurationSuccessfullyApplied:v12 reasons:v5 completionHandler:v13];
  }
}

- (void)_invalidDeclarationKeys:(id)keys scope:(int64_t)scope configurations:(id)configurations completionHandler:(id)handler
{
  keysCopy = keys;
  configurationsCopy = configurations;
  handlerCopy = handler;
  nextObject = [keysCopy nextObject];
  if (nextObject)
  {
    v14 = [configurationsCopy objectForKeyedSubscript:nextObject];
    declaration = [v14 declaration];
    if ([(RMConfigurationSingleApplicator *)self _supportedConfigurationType:declaration])
    {
      store = [v14 store];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __98__RMConfigurationSingleApplicator__invalidDeclarationKeys_scope_configurations_completionHandler___block_invoke_2;
      v20[3] = &unk_279B056F0;
      v20[4] = self;
      v21 = keysCopy;
      scopeCopy = scope;
      v22 = configurationsCopy;
      v23 = handlerCopy;
      [store configurationFailedAlreadyPresent:declaration completionHandler:v20];
    }

    else
    {
      configurationSingleApplicator = [MEMORY[0x277D45F58] configurationSingleApplicator];
      if (os_log_type_enabled(configurationSingleApplicator, OS_LOG_TYPE_ERROR))
      {
        [RMConfigurationMultipleApplicator _installDeclarationKeys:scope:configurations:completionHandler:];
      }

      createInternalError = [MEMORY[0x277D45F40] createInternalError];
      store2 = [v14 store];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __98__RMConfigurationSingleApplicator__invalidDeclarationKeys_scope_configurations_completionHandler___block_invoke;
      v25[3] = &unk_279B056F0;
      v25[4] = self;
      v26 = keysCopy;
      scopeCopy2 = scope;
      v27 = configurationsCopy;
      v28 = handlerCopy;
      [store2 configurationIsInvalid:declaration error:createInternalError completionHandler:v25];
    }
  }

  else
  {
    handlerCopy[2](handlerCopy);
  }
}

- (void)_cleanupDeclarationKeyIfNeeded:(id)needed scope:(int64_t)scope doIt:(BOOL)it completionHandler:(id)handler
{
  neededCopy = needed;
  handlerCopy = handler;
  v11 = handlerCopy;
  if (neededCopy && it)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __95__RMConfigurationSingleApplicator__cleanupDeclarationKeyIfNeeded_scope_doIt_completionHandler___block_invoke;
    v12[3] = &unk_279B05808;
    v13 = neededCopy;
    v14 = v11;
    [RMSubscriberStore unassignAssets:v13 scope:scope completionHandler:v12];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy);
  }
}

void __95__RMConfigurationSingleApplicator__cleanupDeclarationKeyIfNeeded_scope_doIt_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [MEMORY[0x277D45F58] configurationSingleApplicator];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __98__RMConfigurationMultipleApplicator__cleanupDeclarationKeysIfNeeded_scope_doIt_completionHandler___block_invoke_cold_1(a1);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_uninstallDeclarationKey:(id)key scope:(int64_t)scope completionHandler:(id)handler
{
  keyCopy = key;
  handlerCopy = handler;
  v10 = handlerCopy;
  if (keyCopy)
  {
    wrappingAdapter = [(RMConfigurationSingleApplicator *)self wrappingAdapter];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __84__RMConfigurationSingleApplicator__uninstallDeclarationKey_scope_completionHandler___block_invoke;
    v12[3] = &unk_279B05830;
    v13 = keyCopy;
    selfCopy = self;
    scopeCopy = scope;
    v15 = v10;
    [wrappingAdapter removeDeclarationKey:v13 scope:scope completionHandler:v12];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy);
  }
}

void __84__RMConfigurationSingleApplicator__uninstallDeclarationKey_scope_completionHandler___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D45F58] configurationSingleApplicator];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __87__RMConfigurationMultipleApplicator__uninstallDeclarationKeys_scope_completionHandler___block_invoke_cold_1(a1);
    }

    v6 = 0;
    v8 = a1[4];
    v7 = a1[5];
    v9 = a1[7];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __87__RMConfigurationMultipleApplicator__uninstallDeclarationKeys_scope_completionHandler___block_invoke_cold_2(a1);
    }

    v8 = a1[4];
    v7 = a1[5];
    v9 = a1[7];
    v6 = [v7 doKeychainUnassign];
  }

  [v7 _cleanupDeclarationKeyIfNeeded:v8 scope:v9 doIt:v6 completionHandler:a1[6]];
}

void __85__RMConfigurationSingleApplicator__endProcessingWithSuccess_scope_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [MEMORY[0x277D45F58] configurationSingleApplicator];
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
        adapter = [(RMConfigurationSingleApplicator *)self adapter];
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

- (BOOL)_supportedConfigurationType:(id)type
{
  v18 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  adapter = [(RMConfigurationSingleApplicator *)self adapter];
  configurationClasses = [adapter configurationClasses];

  v7 = [configurationClasses countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(configurationClasses);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [configurationClasses countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)_usesKeychain
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  adapter = [(RMConfigurationSingleApplicator *)self adapter];
  configurationClasses = [adapter configurationClasses];

  v4 = [configurationClasses countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(configurationClasses);
        }

        if ([*(*(&v12 + 1) + 8 * i) usesKeychainAssets])
        {
          configurationSingleApplicator = [MEMORY[0x277D45F58] configurationSingleApplicator];
          if (os_log_type_enabled(configurationSingleApplicator, OS_LOG_TYPE_DEBUG))
          {
            [(RMConfigurationMultipleApplicator *)configurationSingleApplicator _usesKeychain];
          }

          v8 = 1;
          goto LABEL_15;
        }
      }

      v5 = [configurationClasses countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  configurationClasses = [MEMORY[0x277D45F58] configurationSingleApplicator];
  if (os_log_type_enabled(configurationClasses, OS_LOG_TYPE_DEBUG))
  {
    [(RMConfigurationMultipleApplicator *)configurationClasses _usesKeychain];
  }

  v8 = 0;
LABEL_15:

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

void __125__RMConfigurationSingleApplicator__fetchExistingDeclarationKeyWithConfigurations_storesByIdentifier_scope_completionHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, v0, v1, "Failed to fetch declaration key: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end