@interface TRIActiveLaunchdDeliveredExperimentsReader
- (TRIActiveLaunchdDeliveredExperimentsReader)initWithNamespacesProvider:(id)a3 factorLevelsRetriever:(id)a4;
- (id)_factorLevelStringsForNamespace:(id)a3;
- (id)allActiveExperiments;
@end

@implementation TRIActiveLaunchdDeliveredExperimentsReader

- (TRIActiveLaunchdDeliveredExperimentsReader)initWithNamespacesProvider:(id)a3 factorLevelsRetriever:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TRIActiveLaunchdDeliveredExperimentsReader;
  v9 = [(TRIActiveLaunchdDeliveredExperimentsReader *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_namespacesProvider, a3);
    objc_storeStrong(&v10->_factorLevelsRetriever, a4);
  }

  return v10;
}

- (id)_factorLevelStringsForNamespace:(id)a3
{
  v3 = [(TRINamespaceFactorLevelsRetrieving *)self->_factorLevelsRetriever factorLevelsForNamespaceName:a3];
  v4 = [v3 _pas_mappedArrayWithTransform:&__block_literal_global_22];

  return v4;
}

- (id)allActiveExperiments
{
  v3 = objc_opt_new();
  v4 = [(TRIActiveEnvVarNamespacesProviding *)self->_namespacesProvider activeEnvVarNamespaces];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__TRIActiveLaunchdDeliveredExperimentsReader_allActiveExperiments__block_invoke;
  v9[3] = &unk_279DE2090;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v9];
  v6 = v10;
  v7 = v5;

  return v5;
}

void __66__TRIActiveLaunchdDeliveredExperimentsReader_allActiveExperiments__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v6 containsObject:@"__tri_sysctl_experiment"])
  {
    v7 = TRILogCategory_Server();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v15 = 138412546;
      v16 = v5;
      v17 = 2112;
      v18 = v6;
      _os_log_debug_impl(&dword_26F567000, v7, OS_LOG_TYPE_DEBUG, "Namespace %@ targeting bundle ids: %@ is not considered as a launchd delievered experiment due to presence of kTRISysctlExperimentMagicBundleIdentifier", &v15, 0x16u);
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = [*(a1 + 32) _factorLevelStringsForNamespace:v5];
    v10 = v9;
    v11 = MEMORY[0x277CBEBF8];
    if (v9)
    {
      v11 = v9;
    }

    v12 = v11;

    v13 = [TRIActiveEnvVarExperiment envVarExperimentWithTargetedBundleIds:v6 factorLevelStrings:v12];

    [*(a1 + 40) addObject:v13];
    objc_autoreleasePoolPop(v8);
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end