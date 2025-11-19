@interface RMConfigurationSingleApplicator
- (BOOL)_supportedConfigurationType:(id)a3;
- (BOOL)_usesKeychain;
- (RMConfigurationSingleApplicator)initWithAdapter:(id)a3;
- (id)_configurationByDeclarationKeyFromConfigurations:(id)a3;
- (void)_beginProcessingWithConfigurations:(id)a3 storesByIdentifier:(id)a4 scope:(int64_t)a5 completionHandler:(id)a6;
- (void)_cleanupDeclarationKeyIfNeeded:(id)a3 scope:(int64_t)a4 doIt:(BOOL)a5 completionHandler:(id)a6;
- (void)_fetchExistingDeclarationKeyWithConfigurations:(id)a3 storesByIdentifier:(id)a4 scope:(int64_t)a5 completionHandler:(id)a6;
- (void)_installDeclarationKey:(id)a3 scope:(int64_t)a4 configurations:(id)a5 completionHandler:(id)a6;
- (void)_invalidDeclarationKeys:(id)a3 scope:(int64_t)a4 configurations:(id)a5 completionHandler:(id)a6;
- (void)_processExistingDeclarationKeyWithConfigurations:(id)a3 oldDeclarationKey:(id)a4 storesByIdentifier:(id)a5 scope:(int64_t)a6 completionHandler:(id)a7;
- (void)_uninstallDeclarationKey:(id)a3 scope:(int64_t)a4 completionHandler:(id)a5;
- (void)configurationUIForConfiguration:(id)a3 scope:(int64_t)a4 completionHandler:(id)a5;
@end

@implementation RMConfigurationSingleApplicator

- (RMConfigurationSingleApplicator)initWithAdapter:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = RMConfigurationSingleApplicator;
  v6 = [(RMConfigurationSingleApplicator *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_adapter, a3);
    v8 = [[WrappedSingleAdapter alloc] initWithAdapter:v7->_adapter];
    wrappingAdapter = v7->_wrappingAdapter;
    v7->_wrappingAdapter = v8;

    v7->_doKeychainUnassign = [(RMConfigurationSingleApplicator *)v7 _usesKeychain];
  }

  return v7;
}

- (void)configurationUIForConfiguration:(id)a3 scope:(int64_t)a4 completionHandler:(id)a5
{
  v12 = a3;
  v8 = a5;
  v9 = [(RMConfigurationSingleApplicator *)self adapter];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(RMConfigurationSingleApplicator *)self adapter];
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
  v13 = [(RMConfigurationSingleApplicator *)self wrappingAdapter];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __113__RMConfigurationSingleApplicator__beginProcessingWithConfigurations_storesByIdentifier_scope_completionHandler___block_invoke;
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

- (void)_fetchExistingDeclarationKeyWithConfigurations:(id)a3 storesByIdentifier:(id)a4 scope:(int64_t)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(RMConfigurationSingleApplicator *)self wrappingAdapter];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __125__RMConfigurationSingleApplicator__fetchExistingDeclarationKeyWithConfigurations_storesByIdentifier_scope_completionHandler___block_invoke;
  v17[3] = &unk_279B054C0;
  v20 = v12;
  v21 = a5;
  v17[4] = self;
  v18 = v10;
  v19 = v11;
  v14 = v11;
  v15 = v10;
  v16 = v12;
  [v13 allDeclarationKeysForScope:a5 completionHandler:v17];
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

- (void)_processExistingDeclarationKeyWithConfigurations:(id)a3 oldDeclarationKey:(id)a4 storesByIdentifier:(id)a5 scope:(int64_t)a6 completionHandler:(id)a7
{
  v11 = a3;
  v12 = a4;
  v39 = a5;
  v13 = a7;
  v40 = v11;
  v14 = [(RMConfigurationSingleApplicator *)self _configurationByDeclarationKeyFromConfigurations:v11];
  v15 = MEMORY[0x277CBEB98];
  v16 = [v14 allKeys];
  v17 = [v15 setWithArray:v16];

  if (v12)
  {
    v18 = [MEMORY[0x277CBEB98] setWithObject:v12];
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
    v23 = [v20 anyObject];
    [v22 removeObject:v23];
    v24 = 0;
LABEL_15:
    v29 = self;
    v30 = v20;
    v31 = v12;

LABEL_16:
    v28 = 0;
    goto LABEL_17;
  }

  v25 = v53[5];
  if (v25)
  {
    v24 = v25;
    [v22 unionSet:v17];
    v23 = [v24 applyKey];
    [v22 removeObject:v23];
    goto LABEL_15;
  }

  if ([v21 count])
  {
    if ([v42 count])
    {
      v37 = [v21 anyObject];
      v26 = [v37 applyKey];
      v27 = [v42 anyObject];
      v24 = [RMStoreDeclarationKeyPair newDeclarationKeyPairWithUpdateKey:v26 replaceKey:v27];
    }

    else
    {
      v24 = [v21 anyObject];
    }

    [v22 unionSet:v17];
    v23 = [v24 applyKey];
    [v22 removeObject:v23];
    goto LABEL_15;
  }

  if (![v42 count])
  {
    v29 = self;
    v30 = v20;
    v31 = v12;
    v24 = 0;
    goto LABEL_16;
  }

  v28 = [v42 anyObject];
  v29 = self;
  v30 = v20;
  v31 = v12;
  v24 = 0;
LABEL_17:
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __145__RMConfigurationSingleApplicator__processExistingDeclarationKeyWithConfigurations_oldDeclarationKey_storesByIdentifier_scope_completionHandler___block_invoke_2;
  v44[3] = &unk_279B056A0;
  v44[4] = v29;
  v32 = v22;
  v45 = v32;
  v50 = a6;
  v33 = v14;
  v46 = v33;
  v34 = v24;
  v47 = v34;
  v35 = v28;
  v48 = v35;
  v36 = v13;
  v49 = v36;
  [(RMConfigurationSingleApplicator *)v29 _installDeclarationKey:v34 scope:a6 configurations:v33 completionHandler:v44];

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

- (void)_installDeclarationKey:(id)a3 scope:(int64_t)a4 configurations:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = v12;
  if (v10)
  {
    v14 = [v10 applyKey];
    v15 = [v11 objectForKeyedSubscript:v14];
    v16 = [v15 declaration];
    if ([(RMConfigurationSingleApplicator *)self _supportedConfigurationType:v16])
    {
      v17 = [v15 store];
      v18 = [v17 isValidDeclaration:v16];

      if (v18)
      {
        v19 = [(RMConfigurationSingleApplicator *)self wrappingAdapter];
        v20 = [v10 replaceKey];
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __97__RMConfigurationSingleApplicator__installDeclarationKey_scope_configurations_completionHandler___block_invoke_2;
        v26[3] = &unk_279B057E0;
        v27 = v14;
        v28 = v15;
        v29 = v16;
        v30 = v13;
        [v19 applyConfiguration:v28 replaceKey:v20 scope:a4 completionHandler:v26];

        v21 = v27;
      }

      else
      {
        v24 = [MEMORY[0x277D45F58] configurationSingleApplicator];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          [RMConfigurationMultipleApplicator _installDeclarationKeys:scope:configurations:completionHandler:];
        }

        v25 = [v15 store];
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __97__RMConfigurationSingleApplicator__installDeclarationKey_scope_configurations_completionHandler___block_invoke_55;
        v31[3] = &unk_279B05310;
        v32 = v13;
        [v25 configurationNotSupported:v16 error:0 completionHandler:v31];

        v21 = v32;
      }
    }

    else
    {
      v22 = [MEMORY[0x277D45F58] configurationSingleApplicator];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [RMConfigurationMultipleApplicator _installDeclarationKeys:scope:configurations:completionHandler:];
      }

      v21 = [MEMORY[0x277D45F40] createInternalError];
      v23 = [v15 store];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __97__RMConfigurationSingleApplicator__installDeclarationKey_scope_configurations_completionHandler___block_invoke;
      v33[3] = &unk_279B05310;
      v34 = v13;
      [v23 configurationIsInvalid:v16 error:v21 completionHandler:v33];
    }
  }

  else
  {
    (*(v12 + 2))(v12);
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

- (void)_invalidDeclarationKeys:(id)a3 scope:(int64_t)a4 configurations:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [v10 nextObject];
  if (v13)
  {
    v14 = [v11 objectForKeyedSubscript:v13];
    v15 = [v14 declaration];
    if ([(RMConfigurationSingleApplicator *)self _supportedConfigurationType:v15])
    {
      v16 = [v14 store];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __98__RMConfigurationSingleApplicator__invalidDeclarationKeys_scope_configurations_completionHandler___block_invoke_2;
      v20[3] = &unk_279B056F0;
      v20[4] = self;
      v21 = v10;
      v24 = a4;
      v22 = v11;
      v23 = v12;
      [v16 configurationFailedAlreadyPresent:v15 completionHandler:v20];
    }

    else
    {
      v17 = [MEMORY[0x277D45F58] configurationSingleApplicator];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [RMConfigurationMultipleApplicator _installDeclarationKeys:scope:configurations:completionHandler:];
      }

      v18 = [MEMORY[0x277D45F40] createInternalError];
      v19 = [v14 store];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __98__RMConfigurationSingleApplicator__invalidDeclarationKeys_scope_configurations_completionHandler___block_invoke;
      v25[3] = &unk_279B056F0;
      v25[4] = self;
      v26 = v10;
      v29 = a4;
      v27 = v11;
      v28 = v12;
      [v19 configurationIsInvalid:v15 error:v18 completionHandler:v25];
    }
  }

  else
  {
    v12[2](v12);
  }
}

- (void)_cleanupDeclarationKeyIfNeeded:(id)a3 scope:(int64_t)a4 doIt:(BOOL)a5 completionHandler:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = v10;
  if (v9 && a5)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __95__RMConfigurationSingleApplicator__cleanupDeclarationKeyIfNeeded_scope_doIt_completionHandler___block_invoke;
    v12[3] = &unk_279B05808;
    v13 = v9;
    v14 = v11;
    [RMSubscriberStore unassignAssets:v13 scope:a4 completionHandler:v12];
  }

  else
  {
    (*(v10 + 2))(v10);
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

- (void)_uninstallDeclarationKey:(id)a3 scope:(int64_t)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (v8)
  {
    v11 = [(RMConfigurationSingleApplicator *)self wrappingAdapter];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __84__RMConfigurationSingleApplicator__uninstallDeclarationKey_scope_completionHandler___block_invoke;
    v12[3] = &unk_279B05830;
    v13 = v8;
    v14 = self;
    v16 = a4;
    v15 = v10;
    [v11 removeDeclarationKey:v13 scope:a4 completionHandler:v12];
  }

  else
  {
    (*(v9 + 2))(v9);
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
        v12 = [(RMConfigurationSingleApplicator *)self adapter];
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
  v5 = [(RMConfigurationSingleApplicator *)self adapter];
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
  v2 = [(RMConfigurationSingleApplicator *)self adapter];
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
          v9 = [MEMORY[0x277D45F58] configurationSingleApplicator];
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

  v3 = [MEMORY[0x277D45F58] configurationSingleApplicator];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(RMConfigurationMultipleApplicator *)v3 _usesKeychain];
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