@interface TRIDefaultFactorProvider
- (BOOL)hasRegisteredNamespaceWithName:(id)a3;
- (BOOL)hasTreatmentInAnyOfLayers:(unint64_t)a3 withNamespaceName:(id)a4;
- (TRIDefaultFactorProvider)initWithPaths:(id)a3 factorsState:(id)a4;
- (id)_experimentDeploymentFromActiveFactorProviderWithNamespaceName:(id)a3;
- (id)_experimentDeploymentWithNamespaceName:(id)a3 treatmentLayer:(unint64_t)a4;
- (id)_providerForNamespace:(id)a3;
- (id)_treatmentIdFromActiveFactorProviderWithNamespaceName:(id)a3;
- (id)_treatmentIdWithNamespaceName:(id)a3 treatmentLayer:(unint64_t)a4;
- (id)counterfactualFactorsStatesForNamespace:(id)a3;
- (id)experimentDeploymentWithNamespaceName:(id)a3;
- (id)factorLevelsWithNamespaceName:(id)a3;
- (id)factorPackIdForRolloutWithNamespaceName:(id)a3;
- (id)levelForFactor:(id)a3 withNamespaceName:(id)a4;
- (id)promotableFactorPackIdForNamespaceName:(id)a3;
- (id)rolloutDeploymentWithNamespaceName:(id)a3;
- (id)treatmentIdWithNamespaceName:(id)a3;
- (unsigned)compatibilityVersionWithNamespaceName:(id)a3;
- (void)cacheFactorLevelsWithNamespaceName:(id)a3;
- (void)invalidateAllFactorProviders;
- (void)setContainer:(id)a3 forNamespaceName:(id)a4;
@end

@implementation TRIDefaultFactorProvider

- (void)invalidateAllFactorProviders
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [[TRINamespaceResolver alloc] initWithPaths:self->_paths factorsState:self->_factorsState];
  v4 = TRILogCategory_ClientFramework();
  p_super = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_22EA6B000, p_super, OS_LOG_TYPE_DEBUG, "Clearing memory cache and file locks.", buf, 2u);
    }

    lock = self->_lock;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __56__TRIDefaultFactorProvider_invalidateAllFactorProviders__block_invoke;
    v9[3] = &unk_27885E200;
    v10 = v3;
    [(_PASLock *)lock runWithLockAcquired:v9];
    p_super = &v10->super;
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    factorsState = self->_factorsState;
    *buf = 138412290;
    v12 = factorsState;
    _os_log_impl(&dword_22EA6B000, p_super, OS_LOG_TYPE_DEFAULT, "Not invalidating namespace because factorsState is stale: %@", buf, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __56__TRIDefaultFactorProvider_invalidateAllFactorProviders__block_invoke(uint64_t a1, id *a2)
{
  v4 = a2[2];
  v5 = a2;
  [v4 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_1];
  [a2[2] removeAllObjects];
  [v5[1] dispose];
  objc_storeStrong(v5 + 1, *(a1 + 32));
}

- (TRIDefaultFactorProvider)initWithPaths:(id)a3 factorsState:(id)a4
{
  v7 = a3;
  v8 = a4;
  v22.receiver = self;
  v22.super_class = TRIDefaultFactorProvider;
  v9 = [(TRIDefaultFactorProvider *)&v22 init];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_4;
  }

  objc_storeStrong(&v9->_paths, a3);
  objc_storeStrong(&v10->_factorsState, a4);
  v11 = [[TRINamespaceResolver alloc] initWithPaths:v7 factorsState:v10->_factorsState];
  if (v11)
  {
    v12 = objc_opt_new();
    v13 = v12[1];
    v12[1] = v11;
    v14 = v11;

    v15 = objc_opt_new();
    v16 = v12[2];
    v12[2] = v15;

    v17 = objc_opt_new();
    v18 = v12[3];
    v12[3] = v17;

    v19 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v12];
    lock = v10->_lock;
    v10->_lock = v19;

LABEL_4:
    v11 = v10;
  }

  return v11;
}

- (void)setContainer:(id)a3 forNamespaceName:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v18 = v6;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_22EA6B000, v8, OS_LOG_TYPE_DEFAULT, "Setting container %@ for namespace %@", buf, 0x16u);
  }

  lock = self->_lock;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __58__TRIDefaultFactorProvider_setContainer_forNamespaceName___block_invoke;
  v13[3] = &unk_27885E228;
  v14 = v6;
  v15 = v7;
  v16 = self;
  v10 = v7;
  v11 = v6;
  [(_PASLock *)lock runWithLockAcquired:v13];

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __58__TRIDefaultFactorProvider_setContainer_forNamespaceName___block_invoke(void *a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (a1[4])
  {

    return [v3 setObject:? forKeyedSubscript:?];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:a1[5]];
    v5 = a1[6];

    return [v5 invalidateAllFactorProviders];
  }
}

- (id)_providerForNamespace:(id)a3
{
  v5 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__0;
  v19 = __Block_byref_object_dispose__0;
  v20 = 0;
  lock = self->_lock;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__TRIDefaultFactorProvider__providerForNamespace___block_invoke;
  v10[3] = &unk_27885E250;
  v13 = &v15;
  v7 = v5;
  v11 = v7;
  v12 = self;
  v14 = a2;
  [(_PASLock *)lock runWithLockAcquired:v10];
  v8 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v8;
}

void __50__TRIDefaultFactorProvider__providerForNamespace___block_invoke(void *a1, void *a2)
{
  v14 = a2;
  v3 = [v14[2] objectForKeyedSubscript:a1[4]];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(a1[6] + 8) + 40))
  {
    v6 = [v14[3] objectForKeyedSubscript:a1[4]];
    if (v6)
    {
      v7 = *(a1[5] + 8);
      if (!v7)
      {
        v13 = [MEMORY[0x277CCA890] currentHandler];
        [v13 handleFailureInMethod:a1[7] object:a1[5] file:@"TRIDefaultFactorProvider.m" lineNumber:124 description:{@"Expression was unexpectedly nil/false: %@", @"_paths"}];
      }

      v8 = [[TRINamespaceResolver alloc] initWithPaths:v7];
      v9 = [(TRINamespaceResolver *)v8 resolveFactorProviderChainForNamespaceName:a1[4] faultOnMissingInstalledFactors:1 installedFactorsAccessible:0];
      [(TRINamespaceResolver *)v8 dispose];
    }

    else
    {
      v9 = [v14[1] resolveFactorProviderChainForNamespaceName:a1[4] faultOnMissingInstalledFactors:0 installedFactorsAccessible:0];
    }

    v10 = [[TRINamespaceFactorProviderChain alloc] initWithNamespaceName:a1[4] typedProviderChain:v9 paths:*(a1[5] + 8)];
    v11 = *(a1[6] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    [v14[2] setObject:*(*(a1[6] + 8) + 40) forKeyedSubscript:a1[4]];
  }
}

- (BOOL)hasRegisteredNamespaceWithName:(id)a3
{
  v3 = [(TRIDefaultFactorProvider *)self _providerForNamespace:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 isRegistered];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unsigned)compatibilityVersionWithNamespaceName:(id)a3
{
  v3 = [(TRIDefaultFactorProvider *)self _providerForNamespace:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 namespaceCompatibilityVersion];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)hasTreatmentInAnyOfLayers:(unint64_t)a3 withNamespaceName:(id)a4
{
  v5 = [(TRIDefaultFactorProvider *)self _providerForNamespace:a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 hasAnyTreatmentInLayers:a3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)levelForFactor:(id)a3 withNamespaceName:(id)a4
{
  v6 = a3;
  v7 = [(TRIDefaultFactorProvider *)self _providerForNamespace:a4];
  v8 = [v7 levelForFactor:v6];

  return v8;
}

- (id)factorLevelsWithNamespaceName:(id)a3
{
  v3 = [(TRIDefaultFactorProvider *)self _providerForNamespace:a3];
  v4 = [v3 factorLevels];

  return v4;
}

- (void)cacheFactorLevelsWithNamespaceName:(id)a3
{
  v3 = [(TRIDefaultFactorProvider *)self _providerForNamespace:a3];
  [v3 cacheFactorLevels];
}

- (id)experimentDeploymentWithNamespaceName:(id)a3
{
  v4 = a3;
  v5 = [(TRIDefaultFactorProvider *)self _experimentDeploymentWithNamespaceName:v4 treatmentLayer:32];
  if (!v5)
  {
    v5 = [(TRIDefaultFactorProvider *)self _experimentDeploymentWithNamespaceName:v4 treatmentLayer:4];
    if (!v5)
    {
      v6 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&dword_22EA6B000, v6, OS_LOG_TYPE_INFO, "Could not resolve to experiment deployment. Attempting to read from active factor provider.", v9, 2u);
      }

      v5 = [(TRIDefaultFactorProvider *)self _experimentDeploymentFromActiveFactorProviderWithNamespaceName:v4];
    }
  }

  v7 = v5;

  return v7;
}

- (id)_experimentDeploymentWithNamespaceName:(id)a3 treatmentLayer:(unint64_t)a4
{
  v5 = [(TRIDefaultFactorProvider *)self _providerForNamespace:a3];
  v6 = [v5 providerForTreatmentLayer:a4];

  if (v6)
  {
    v7 = [v6 experimentId];
    v8 = [v6 deploymentId];
    if (v7)
    {
      v9 = [[TRIExperimentDeployment alloc] initWithExperimentId:v7 deploymentId:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_experimentDeploymentFromActiveFactorProviderWithNamespaceName:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  lock = self->_lock;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __91__TRIDefaultFactorProvider__experimentDeploymentFromActiveFactorProviderWithNamespaceName___block_invoke;
  v9[3] = &unk_27885E278;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [(_PASLock *)lock runWithLockAcquired:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __91__TRIDefaultFactorProvider__experimentDeploymentFromActiveFactorProviderWithNamespaceName___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a2 + 8) experimentIdentifiersForNamespace:*(a1 + 32)];
  if (v3)
  {
    v8 = v3;
    v4 = [v3 experimentId];
    v5 = +[TRIExperimentDeployment deploymentWithExperimentId:deploymentId:](TRIExperimentDeployment, "deploymentWithExperimentId:deploymentId:", v4, [v8 deploymentId]);
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v3 = v8;
  }
}

- (id)treatmentIdWithNamespaceName:(id)a3
{
  v4 = a3;
  v5 = [(TRIDefaultFactorProvider *)self _treatmentIdWithNamespaceName:v4 treatmentLayer:32];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [(TRIDefaultFactorProvider *)self _treatmentIdWithNamespaceName:v4 treatmentLayer:4];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v11 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        _os_log_impl(&dword_22EA6B000, v11, OS_LOG_TYPE_INFO, "Could not resolve to treatment id. Attempting to read from active factor provider.", v13, 2u);
      }

      v10 = [(TRIDefaultFactorProvider *)self _treatmentIdFromActiveFactorProviderWithNamespaceName:v4];
    }

    v7 = v10;
  }

  return v7;
}

- (id)_treatmentIdFromActiveFactorProviderWithNamespaceName:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  lock = self->_lock;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __82__TRIDefaultFactorProvider__treatmentIdFromActiveFactorProviderWithNamespaceName___block_invoke;
  v9[3] = &unk_27885E278;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [(_PASLock *)lock runWithLockAcquired:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __82__TRIDefaultFactorProvider__treatmentIdFromActiveFactorProviderWithNamespaceName___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a2 + 8) experimentIdentifiersForNamespace:*(a1 + 32)];
  if (v3)
  {
    v7 = v3;
    v4 = [v3 treatmentId];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v3 = v7;
  }
}

- (id)counterfactualFactorsStatesForNamespace:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  lock = self->_lock;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__TRIDefaultFactorProvider_counterfactualFactorsStatesForNamespace___block_invoke;
  v9[3] = &unk_27885E278;
  v11 = &v12;
  v6 = v4;
  v10 = v6;
  [(_PASLock *)lock runWithLockAcquired:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __68__TRIDefaultFactorProvider_counterfactualFactorsStatesForNamespace___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a2 + 8) counterfactualFactorsStatesForNamespace:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

- (id)_treatmentIdWithNamespaceName:(id)a3 treatmentLayer:(unint64_t)a4
{
  v5 = [(TRIDefaultFactorProvider *)self _providerForNamespace:a3];
  v6 = [v5 providerForTreatmentLayer:a4];

  v7 = [v6 treatmentId];

  return v7;
}

- (id)factorPackIdForRolloutWithNamespaceName:(id)a3
{
  v3 = [(TRIDefaultFactorProvider *)self _providerForNamespace:a3];
  v4 = [v3 providerForTreatmentLayer:2];

  v5 = [v4 treatmentId];

  return v5;
}

- (id)rolloutDeploymentWithNamespaceName:(id)a3
{
  v4 = a3;
  v5 = [(TRIDefaultFactorProvider *)self _providerForNamespace:v4];
  v6 = [v5 providerForTreatmentLayer:2];

  v7 = [v6 experimentId];
  if (v7)
  {
    v8 = -[TRIRolloutDeployment initWithRolloutId:deploymentId:]([TRIRolloutDeployment alloc], "initWithRolloutId:deploymentId:", v7, [v6 deploymentId]);
  }

  else
  {
    v9 = [v6 treatmentId];
    if (v9)
    {
      v10 = [TRITreatmentInfo loadInfoForTreatment:v9 namespaceName:v4 paths:self->_paths];
      v11 = v10;
      if (v10)
      {
        v8 = [v10 experimentId];

        if (v8)
        {
          v12 = [TRIRolloutDeployment alloc];
          v13 = [v11 experimentId];
          v8 = -[TRIRolloutDeployment initWithRolloutId:deploymentId:](v12, "initWithRolloutId:deploymentId:", v13, [v11 deploymentId]);
        }
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)promotableFactorPackIdForNamespaceName:(id)a3
{
  v3 = [(TRIDefaultFactorProvider *)self _providerForNamespace:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 promotableFactorPackId];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end