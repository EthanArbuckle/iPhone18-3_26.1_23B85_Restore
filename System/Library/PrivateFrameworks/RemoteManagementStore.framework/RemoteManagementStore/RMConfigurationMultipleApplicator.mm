@interface RMConfigurationMultipleApplicator
- (BOOL)_supportedConfigurationType:(id)a3;
- (BOOL)_usesKeychain;
- (RMConfigurationMultipleApplicator)initWithAdapter:(id)a3 inPlaceUpdates:(BOOL)a4;
- (id)_configurationByDeclarationKeyFromConfigurations:(id)a3;
- (void)_beginProcessingWithConfigurations:(id)a3 storesByIdentifier:(id)a4 scope:(int64_t)a5 completionHandler:(id)a6;
- (void)_cleanupDeclarationKeysIfNeeded:(id)a3 scope:(int64_t)a4 doIt:(BOOL)a5 completionHandler:(id)a6;
- (void)_fetchExistingDeclarationKeysWithConfigurations:(id)a3 storesByIdentifier:(id)a4 scope:(int64_t)a5 completionHandler:(id)a6;
- (void)_installDeclarationKeys:(id)a3 scope:(int64_t)a4 configurations:(id)a5 completionHandler:(id)a6;
- (void)_processExistingDeclarationKeysWithConfigurations:(id)a3 oldDeclarationKeys:(id)a4 storesByIdentifier:(id)a5 scope:(int64_t)a6 completionHandler:(id)a7;
- (void)_uninstallDeclarationKeys:(id)a3 scope:(int64_t)a4 completionHandler:(id)a5;
- (void)applyConfigurations:(id)a3 storesByIdentifier:(id)a4 scope:(int64_t)a5 completionHandler:(id)a6;
- (void)configurationUIForConfiguration:(id)a3 scope:(int64_t)a4 completionHandler:(id)a5;
@end

@implementation RMConfigurationMultipleApplicator

- (RMConfigurationMultipleApplicator)initWithAdapter:(id)a3 inPlaceUpdates:(BOOL)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = RMConfigurationMultipleApplicator;
  v8 = [(RMConfigurationMultipleApplicator *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_adapter, a3);
    v10 = [[WrappedMultipleAdapter alloc] initWithAdapter:v9->_adapter];
    wrappingAdapter = v9->_wrappingAdapter;
    v9->_wrappingAdapter = v10;

    v9->_inPlaceUpdates = a4;
    *&v9->_removeBeforeApply = 0;
    v9->_retrying = 0;
    *&v9->_installSuccess = 0u;
    *&v9->_removeSuccess = 0u;
    v9->_doKeychainUnassign = [(RMConfigurationMultipleApplicator *)v9 _usesKeychain];
  }

  return v9;
}

- (void)applyConfigurations:(id)a3 storesByIdentifier:(id)a4 scope:(int64_t)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  [(RMConfigurationMultipleApplicator *)self setInstallSuccess:0];
  [(RMConfigurationMultipleApplicator *)self setInstallFail:0];
  [(RMConfigurationMultipleApplicator *)self setRemoveSuccess:0];
  [(RMConfigurationMultipleApplicator *)self setRemoveFail:0];
  [(RMConfigurationMultipleApplicator *)self setRetrying:0];
  [(RMConfigurationMultipleApplicator *)self _beginProcessingWithConfigurations:v12 storesByIdentifier:v11 scope:a5 completionHandler:v10];
}

- (void)configurationUIForConfiguration:(id)a3 scope:(int64_t)a4 completionHandler:(id)a5
{
  v12 = a3;
  v8 = a5;
  v9 = [(RMConfigurationMultipleApplicator *)self adapter];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(RMConfigurationMultipleApplicator *)self adapter];
    [v11 configurationUIForConfiguration:v12 scope:a4 completionHandler:v8];
  }

  else
  {
    (*(v8 + 2))(v8, 0, 0, 0);
  }
}

- (void)_beginProcessingWithConfigurations:(id)a3 storesByIdentifier:(id)a4 scope:(int64_t)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(RMConfigurationMultipleApplicator *)self wrappingAdapter];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __115__RMConfigurationMultipleApplicator__beginProcessingWithConfigurations_storesByIdentifier_scope_completionHandler___block_invoke;
  v17[3] = &unk_279B05498;
  v17[4] = self;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = a5;
  v14 = v11;
  v15 = v10;
  v16 = v12;
  [v13 beginProcessingConfigurationsForScope:a5 completionHandler:v17];
}

void __115__RMConfigurationMultipleApplicator__beginProcessingWithConfigurations_storesByIdentifier_scope_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [MEMORY[0x277D45F58] configurationMultipleApplicator];
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

- (void)_fetchExistingDeclarationKeysWithConfigurations:(id)a3 storesByIdentifier:(id)a4 scope:(int64_t)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(RMConfigurationMultipleApplicator *)self wrappingAdapter];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __128__RMConfigurationMultipleApplicator__fetchExistingDeclarationKeysWithConfigurations_storesByIdentifier_scope_completionHandler___block_invoke;
  v17[3] = &unk_279B05600;
  v17[4] = self;
  v18 = v10;
  v20 = v12;
  v21 = a5;
  v19 = v11;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  [v13 allDeclarationKeysForScope:a5 completionHandler:v17];
}

void __128__RMConfigurationMultipleApplicator__fetchExistingDeclarationKeysWithConfigurations_storesByIdentifier_scope_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [MEMORY[0x277D45F58] configurationMultipleApplicator];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __127__RMConfigurationCombineApplicator__fetchExistingDeclarationKeysWithConfigurations_storesByIdentifier_scope_completionHandler___block_invoke_cold_1();
    }

    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = *(a1 + 56);
    v10 = *(a1 + 64);
    v12 = *(a1 + 48);
    v13 = 0;
  }

  else
  {
    if ([v5 count] || objc_msgSend(*(a1 + 40), "count"))
    {
      [*(a1 + 32) _processExistingDeclarationKeysWithConfigurations:*(a1 + 40) oldDeclarationKeys:v5 storesByIdentifier:*(a1 + 48) scope:*(a1 + 64) completionHandler:*(a1 + 56)];
      goto LABEL_9;
    }

    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = *(a1 + 56);
    v10 = *(a1 + 64);
    v12 = *(a1 + 48);
    v13 = 1;
  }

  [v8 _endProcessingWithSuccess:v13 configurations:v9 storesByIdentifier:v12 scope:v10 completionHandler:v11];
LABEL_9:
}

- (void)_processExistingDeclarationKeysWithConfigurations:(id)a3 oldDeclarationKeys:(id)a4 storesByIdentifier:(id)a5 scope:(int64_t)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a7;
  v15 = a4;
  v16 = [(RMConfigurationMultipleApplicator *)self _configurationByDeclarationKeyFromConfigurations:v12];
  v17 = MEMORY[0x277CBEB98];
  v44 = v16;
  v18 = [v16 allKeys];
  v19 = [v17 setWithArray:v18];

  v62 = 0;
  v63[0] = 0;
  v61 = 0;
  v43 = v19;
  [RMStoreDeclarationKey synchronizeOldKeys:v15 newKeys:v19 returningUnchangedKeys:v63 returningApplyKeys:&v62 returningRemoveKeys:&v61];

  v42 = v63[0];
  v20 = v62;
  v21 = v61;
  v22 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v20, "count")}];
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __149__RMConfigurationMultipleApplicator__processExistingDeclarationKeysWithConfigurations_oldDeclarationKeys_storesByIdentifier_scope_completionHandler___block_invoke;
  v59[3] = &unk_279B05628;
  v23 = v22;
  v60 = v23;
  [v20 enumerateObjectsUsingBlock:v59];
  if ([(RMConfigurationMultipleApplicator *)self inPlaceUpdates])
  {
    v24 = v21;
  }

  else
  {
    v24 = [v23 setByAddingObjectsFromSet:v21];
  }

  v25 = v24;
  v40 = v20;
  v41 = v21;
  if ([(RMConfigurationMultipleApplicator *)self removeBeforeApply])
  {
    v36 = [v23 objectEnumerator];
    if ([(RMConfigurationMultipleApplicator *)self inPlaceUpdates])
    {
      v35 = [(RMConfigurationMultipleApplicator *)self doKeychainUnassign];
    }

    else
    {
      v35 = 0;
    }

    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __149__RMConfigurationMultipleApplicator__processExistingDeclarationKeysWithConfigurations_oldDeclarationKeys_storesByIdentifier_scope_completionHandler___block_invoke_5;
    v45[3] = &unk_279B056C8;
    v45[4] = self;
    v46 = v25;
    v52 = a6;
    v38 = &v47;
    v39 = &v46;
    v47 = v20;
    v37 = &v48;
    v33 = a6;
    v32 = v44;
    v48 = v44;
    v28 = &v49;
    v49 = v12;
    v29 = &v50;
    v50 = v13;
    v51 = v14;
    v34 = v25;
    [(RMConfigurationMultipleApplicator *)self _cleanupDeclarationKeysIfNeeded:v36 scope:v33 doIt:v35 completionHandler:v45];

    v26 = v51;
  }

  else
  {
    v26 = [v20 objectEnumerator];
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __149__RMConfigurationMultipleApplicator__processExistingDeclarationKeysWithConfigurations_oldDeclarationKeys_storesByIdentifier_scope_completionHandler___block_invoke_2;
    v53[3] = &unk_279B056A0;
    v53[4] = self;
    v39 = &v54;
    v27 = v23;
    v58[1] = a6;
    v54 = v27;
    v55 = v25;
    v37 = &v56;
    v38 = &v55;
    v56 = v12;
    v28 = &v57;
    v57 = v13;
    v29 = v58;
    v58[0] = v14;
    v30 = v25;
    v31 = a6;
    v32 = v44;
    [(RMConfigurationMultipleApplicator *)self _installDeclarationKeys:v26 scope:v31 configurations:v44 completionHandler:v53];
  }
}

void __149__RMConfigurationMultipleApplicator__processExistingDeclarationKeysWithConfigurations_oldDeclarationKeys_storesByIdentifier_scope_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 replaceKey];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 replaceKey];
    [v4 addObject:v5];
  }
}

void __149__RMConfigurationMultipleApplicator__processExistingDeclarationKeysWithConfigurations_oldDeclarationKeys_storesByIdentifier_scope_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectEnumerator];
  v4 = *(a1 + 80);
  if ([*(a1 + 32) inPlaceUpdates])
  {
    v5 = [*(a1 + 32) doKeychainUnassign];
  }

  else
  {
    v5 = 0;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __149__RMConfigurationMultipleApplicator__processExistingDeclarationKeysWithConfigurations_oldDeclarationKeys_storesByIdentifier_scope_completionHandler___block_invoke_3;
  v8[3] = &unk_279B05678;
  v8[4] = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a1 + 80);
  v9 = v6;
  v13 = v7;
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v12 = *(a1 + 72);
  [v2 _cleanupDeclarationKeysIfNeeded:v3 scope:v4 doIt:v5 completionHandler:v8];
}

void __149__RMConfigurationMultipleApplicator__processExistingDeclarationKeysWithConfigurations_oldDeclarationKeys_storesByIdentifier_scope_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectEnumerator];
  v4 = *(a1 + 72);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __149__RMConfigurationMultipleApplicator__processExistingDeclarationKeysWithConfigurations_oldDeclarationKeys_storesByIdentifier_scope_completionHandler___block_invoke_4;
  v8[3] = &unk_279B05650;
  v8[4] = *(a1 + 32);
  v9 = *(a1 + 48);
  v5 = *(a1 + 56);
  v7 = *(a1 + 64);
  v6 = *(a1 + 72);
  v10 = v5;
  v12 = v6;
  v11 = v7;
  [v2 _uninstallDeclarationKeys:v3 scope:v4 completionHandler:v8];
}

void __149__RMConfigurationMultipleApplicator__processExistingDeclarationKeysWithConfigurations_oldDeclarationKeys_storesByIdentifier_scope_completionHandler___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectEnumerator];
  v4 = *(a1 + 88);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __149__RMConfigurationMultipleApplicator__processExistingDeclarationKeysWithConfigurations_oldDeclarationKeys_storesByIdentifier_scope_completionHandler___block_invoke_6;
  v7[3] = &unk_279B056A0;
  v7[4] = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 88);
  v8 = v5;
  v13 = v6;
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  v12 = *(a1 + 80);
  [v2 _uninstallDeclarationKeys:v3 scope:v4 completionHandler:v7];
}

void __149__RMConfigurationMultipleApplicator__processExistingDeclarationKeysWithConfigurations_oldDeclarationKeys_storesByIdentifier_scope_completionHandler___block_invoke_6(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectEnumerator];
  v4 = *(a1 + 80);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __149__RMConfigurationMultipleApplicator__processExistingDeclarationKeysWithConfigurations_oldDeclarationKeys_storesByIdentifier_scope_completionHandler___block_invoke_7;
  v9[3] = &unk_279B05650;
  v9[4] = *(a1 + 32);
  v5 = *(a1 + 48);
  v10 = *(a1 + 56);
  v6 = *(a1 + 64);
  v8 = *(a1 + 72);
  v7 = *(a1 + 80);
  v11 = v6;
  v13 = v7;
  v12 = v8;
  [v2 _installDeclarationKeys:v3 scope:v4 configurations:v5 completionHandler:v9];
}

- (void)_installDeclarationKeys:(id)a3 scope:(int64_t)a4 configurations:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [v10 nextObject];
  v14 = v13;
  if (v13)
  {
    v27 = [v13 applyKey];
    v15 = [v11 objectForKeyedSubscript:?];
    v16 = [v15 declaration];
    if ([(RMConfigurationMultipleApplicator *)self _supportedConfigurationType:v16])
    {
      v17 = [v15 store];
      v18 = [v17 isValidDeclaration:v16];

      if (v18)
      {
        v26 = [(RMConfigurationMultipleApplicator *)self wrappingAdapter];
        v19 = [v14 replaceKey];
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __100__RMConfigurationMultipleApplicator__installDeclarationKeys_scope_configurations_completionHandler___block_invoke_2;
        v28[3] = &unk_279B05718;
        v29 = v27;
        v30 = self;
        v31 = v15;
        v32 = v16;
        v33 = v10;
        v36 = a4;
        v34 = v11;
        v35 = v12;
        [v26 applyConfiguration:v31 replaceKey:v19 scope:a4 completionHandler:v28];

        v20 = v29;
      }

      else
      {
        v24 = [MEMORY[0x277D45F58] configurationMultipleApplicator];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          [RMConfigurationMultipleApplicator _installDeclarationKeys:scope:configurations:completionHandler:];
        }

        v25 = [v15 store];
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __100__RMConfigurationMultipleApplicator__installDeclarationKeys_scope_configurations_completionHandler___block_invoke_54;
        v37[3] = &unk_279B056F0;
        v37[4] = self;
        v38 = v10;
        v41 = a4;
        v39 = v11;
        v40 = v12;
        [v25 configurationNotSupported:v16 error:0 completionHandler:v37];

        v20 = v38;
      }
    }

    else
    {
      v21 = [MEMORY[0x277D45F58] configurationMultipleApplicator];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [RMConfigurationMultipleApplicator _installDeclarationKeys:scope:configurations:completionHandler:];
      }

      v22 = [MEMORY[0x277D45F40] createInternalError];
      v23 = [v15 store];
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __100__RMConfigurationMultipleApplicator__installDeclarationKeys_scope_configurations_completionHandler___block_invoke;
      v42[3] = &unk_279B056F0;
      v42[4] = self;
      v43 = v10;
      v46 = a4;
      v44 = v11;
      v45 = v12;
      [v23 configurationIsInvalid:v16 error:v22 completionHandler:v42];
    }
  }

  else
  {
    v12[2](v12);
  }
}

void __100__RMConfigurationMultipleApplicator__installDeclarationKeys_scope_configurations_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277D45F58] configurationMultipleApplicator];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __100__RMConfigurationMultipleApplicator__installDeclarationKeys_scope_configurations_completionHandler___block_invoke_2_cold_1(a1);
    }

    [*(a1 + 40) setInstallFail:{objc_msgSend(*(a1 + 40), "installFail") + 1}];
    v9 = [*(a1 + 48) store];
    v10 = *(a1 + 56);
    if (v5)
    {
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __100__RMConfigurationMultipleApplicator__installDeclarationKeys_scope_configurations_completionHandler___block_invoke_55;
      v29[3] = &unk_279B056F0;
      v29[4] = *(a1 + 40);
      v11 = &v30;
      v12 = *(a1 + 64);
      v13 = *(a1 + 88);
      v30 = v12;
      v32[1] = v13;
      v14 = &v31;
      v31 = *(a1 + 72);
      v15 = v32;
      v32[0] = *(a1 + 80);
      [v9 configurationErrorReasons:v10 reasons:v5 completionHandler:v29];
    }

    else
    {
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __100__RMConfigurationMultipleApplicator__installDeclarationKeys_scope_configurations_completionHandler___block_invoke_2_56;
      v25[3] = &unk_279B056F0;
      v25[4] = *(a1 + 40);
      v11 = &v26;
      v19 = *(a1 + 64);
      v20 = *(a1 + 88);
      v26 = v19;
      v28[1] = v20;
      v14 = &v27;
      v27 = *(a1 + 72);
      v15 = v28;
      v28[0] = *(a1 + 80);
      [v9 configurationFailedToApply:v10 error:v6 completionHandler:v25];
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __100__RMConfigurationMultipleApplicator__installDeclarationKeys_scope_configurations_completionHandler___block_invoke_2_cold_2(a1);
    }

    v9 = [*(a1 + 48) store];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __100__RMConfigurationMultipleApplicator__installDeclarationKeys_scope_configurations_completionHandler___block_invoke_57;
    v21[3] = &unk_279B056F0;
    v21[4] = *(a1 + 40);
    v11 = &v22;
    v16 = *(a1 + 56);
    v17 = *(a1 + 64);
    v18 = *(a1 + 88);
    v22 = v17;
    v24[1] = v18;
    v14 = &v23;
    v23 = *(a1 + 72);
    v15 = v24;
    v24[0] = *(a1 + 80);
    [v9 configurationSuccessfullyApplied:v16 reasons:v5 completionHandler:v21];
  }
}

uint64_t __100__RMConfigurationMultipleApplicator__installDeclarationKeys_scope_configurations_completionHandler___block_invoke_57(uint64_t a1)
{
  [*(a1 + 32) setInstallSuccess:{objc_msgSend(*(a1 + 32), "installSuccess") + 1}];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 56);
  v4 = *(a1 + 64);
  v6 = *(a1 + 48);

  return [v2 _installDeclarationKeys:v3 scope:v4 configurations:v6 completionHandler:v5];
}

- (void)_cleanupDeclarationKeysIfNeeded:(id)a3 scope:(int64_t)a4 doIt:(BOOL)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = v11;
  if (a5)
  {
    v13 = [v10 nextObject];
    v14 = v13;
    if (v13)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __98__RMConfigurationMultipleApplicator__cleanupDeclarationKeysIfNeeded_scope_doIt_completionHandler___block_invoke;
      v15[3] = &unk_279B05740;
      v16 = v13;
      v17 = self;
      v18 = v10;
      v20 = a4;
      v21 = a5;
      v19 = v12;
      [RMSubscriberStore unassignAssets:v16 scope:a4 completionHandler:v15];
    }

    else
    {
      v12[2](v12);
    }
  }

  else
  {
    v11[2](v11);
  }
}

void __98__RMConfigurationMultipleApplicator__cleanupDeclarationKeysIfNeeded_scope_doIt_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [MEMORY[0x277D45F58] configurationMultipleApplicator];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __98__RMConfigurationMultipleApplicator__cleanupDeclarationKeysIfNeeded_scope_doIt_completionHandler___block_invoke_cold_1(a1);
    }
  }

  [*(a1 + 40) _cleanupDeclarationKeysIfNeeded:*(a1 + 48) scope:*(a1 + 64) doIt:*(a1 + 72) completionHandler:*(a1 + 56)];
}

- (void)_uninstallDeclarationKeys:(id)a3 scope:(int64_t)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [v8 nextObject];
  if (v10)
  {
    v11 = [(RMConfigurationMultipleApplicator *)self wrappingAdapter];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __87__RMConfigurationMultipleApplicator__uninstallDeclarationKeys_scope_completionHandler___block_invoke;
    v12[3] = &unk_279B056F0;
    v13 = v10;
    v14 = self;
    v17 = a4;
    v15 = v8;
    v16 = v9;
    [v11 removeDeclarationKey:v13 scope:a4 completionHandler:v12];
  }

  else
  {
    v9[2](v9);
  }
}

void __87__RMConfigurationMultipleApplicator__uninstallDeclarationKeys_scope_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277D45F58] configurationMultipleApplicator];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __87__RMConfigurationMultipleApplicator__uninstallDeclarationKeys_scope_completionHandler___block_invoke_cold_1(a1);
    }

    [*(a1 + 40) setRemoveFail:{objc_msgSend(*(a1 + 40), "removeFail") + 1}];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __87__RMConfigurationMultipleApplicator__uninstallDeclarationKeys_scope_completionHandler___block_invoke_cold_2(a1);
    }

    [*(a1 + 40) setRemoveSuccess:{objc_msgSend(*(a1 + 40), "removeSuccess") + 1}];
  }

  v20[0] = *(a1 + 32);
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v7 = *(a1 + 40);
  v8 = [v6 objectEnumerator];
  v9 = *(a1 + 64);
  if (v3)
  {
    v10 = 0;
  }

  else
  {
    v10 = [*(a1 + 40) doKeychainUnassign];
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __87__RMConfigurationMultipleApplicator__uninstallDeclarationKeys_scope_completionHandler___block_invoke_61;
  v16[3] = &unk_279B05768;
  v11 = *(a1 + 48);
  v16[4] = *(a1 + 40);
  v12 = v11;
  v14 = *(a1 + 56);
  v13 = *(a1 + 64);
  v17 = v12;
  v19 = v13;
  v18 = v14;
  [v7 _cleanupDeclarationKeysIfNeeded:v8 scope:v9 doIt:v10 completionHandler:v16];

  v15 = *MEMORY[0x277D85DE8];
}

void __121__RMConfigurationMultipleApplicator__endProcessingWithSuccess_configurations_storesByIdentifier_scope_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [MEMORY[0x277D45F58] configurationMultipleApplicator];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __86__RMConfigurationCombineApplicator__endProcessingWithSuccess_scope_completionHandler___block_invoke_cold_1();
    }
  }

  if ([*(a1 + 32) retryOnce] && (objc_msgSend(*(a1 + 32), "removeBeforeApply") & 1) == 0 && (objc_msgSend(*(a1 + 32), "retrying") & 1) == 0 && objc_msgSend(*(a1 + 32), "installFail") && objc_msgSend(*(a1 + 32), "removeSuccess"))
  {
    v5 = [MEMORY[0x277D45F58] configurationMultipleApplicator];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_261E36000, v5, OS_LOG_TYPE_INFO, "Retrying applicator sync operation.", v6, 2u);
    }

    [*(a1 + 32) setInstallSuccess:0];
    [*(a1 + 32) setInstallFail:0];
    [*(a1 + 32) setRemoveSuccess:0];
    [*(a1 + 32) setRemoveFail:0];
    [*(a1 + 32) setRetrying:1];
    [*(a1 + 32) _beginProcessingWithConfigurations:*(a1 + 40) storesByIdentifier:*(a1 + 48) scope:*(a1 + 64) completionHandler:*(a1 + 56)];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

- (id)_configurationByDeclarationKeyFromConfigurations:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
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
        v12 = [(RMConfigurationMultipleApplicator *)self adapter];
        v13 = [v12 declarationKeyForConfiguration:v11];

        [v5 setObject:v11 forKeyedSubscript:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)_supportedConfigurationType:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(RMConfigurationMultipleApplicator *)self adapter];
  v6 = [v5 configurationClasses];

  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  v2 = [(RMConfigurationMultipleApplicator *)self adapter];
  v3 = [v2 configurationClasses];

  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v12 + 1) + 8 * i) usesKeychainAssets])
        {
          v9 = [MEMORY[0x277D45F58] configurationMultipleApplicator];
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            [(RMConfigurationMultipleApplicator *)v9 _usesKeychain];
          }

          v8 = 1;
          goto LABEL_15;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v3 = [MEMORY[0x277D45F58] configurationMultipleApplicator];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(RMConfigurationMultipleApplicator *)v3 _usesKeychain];
  }

  v8 = 0;
LABEL_15:

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)_installDeclarationKeys:scope:configurations:completionHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, v0, v1, "Incorrect declaration class: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_installDeclarationKeys:scope:configurations:completionHandler:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, v0, v1, "Declaration not supported: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __100__RMConfigurationMultipleApplicator__installDeclarationKeys_scope_configurations_completionHandler___block_invoke_2_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = [OUTLINED_FUNCTION_3_0(a1) key];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_1(&dword_261E36000, v3, v4, "Failed to apply new configuration: %{public}@ error:%{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __100__RMConfigurationMultipleApplicator__installDeclarationKeys_scope_configurations_completionHandler___block_invoke_2_cold_2(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = [OUTLINED_FUNCTION_3_0(a1) key];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_0(&dword_261E36000, v3, v4, "Applied new configuration: %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __98__RMConfigurationMultipleApplicator__cleanupDeclarationKeysIfNeeded_scope_doIt_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = [OUTLINED_FUNCTION_3_0(a1) key];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_1(&dword_261E36000, v3, v4, "Failed to unassign asset reference %{public}@: %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __87__RMConfigurationMultipleApplicator__uninstallDeclarationKeys_scope_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = [OUTLINED_FUNCTION_3_0(a1) key];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_1(&dword_261E36000, v3, v4, "Failed to remove configuration: %{public}@ error:%{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __87__RMConfigurationMultipleApplicator__uninstallDeclarationKeys_scope_completionHandler___block_invoke_cold_2(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = [OUTLINED_FUNCTION_3_0(a1) key];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_0(&dword_261E36000, v3, v4, "Removed configuration: %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

@end