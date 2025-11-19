@interface TRIExperimentLayerFactorLevelsRetriever
- (id)factorLevelsForNamespaceName:(id)a3;
@end

@implementation TRIExperimentLayerFactorLevelsRetriever

- (id)factorLevelsForNamespaceName:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = MEMORY[0x277D73760];
  v5 = [MEMORY[0x277D737E0] sharedPaths];
  v6 = [v4 factorProviderWithPaths:v5 namespaceName:v3];

  v7 = [v6 providerForTreatmentLayer:32];
  v8 = [v6 providerForTreatmentLayer:4];
  v9 = v8;
  if (v7 | v8)
  {
    if (v7)
    {
      v10 = [v7 factorLevels];
    }

    else
    {
      v12 = [v8 factorLevels];
      v13 = v12;
      v14 = MEMORY[0x277CBEBF8];
      if (v12)
      {
        v14 = v12;
      }

      v10 = v14;
    }
  }

  else
  {
    v11 = TRILogCategory_Server();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412290;
      v18 = v3;
      _os_log_error_impl(&dword_26F567000, v11, OS_LOG_TYPE_ERROR, "[RADAR SEARCH] Missing FPE layer for an experiment in namespace %@", &v17, 0xCu);
    }

    v10 = MEMORY[0x277CBEBF8];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v10;
}

@end