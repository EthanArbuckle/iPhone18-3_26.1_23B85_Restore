@interface TRIExperimentLayerFactorLevelsRetriever
- (id)factorLevelsForNamespaceName:(id)name;
@end

@implementation TRIExperimentLayerFactorLevelsRetriever

- (id)factorLevelsForNamespaceName:(id)name
{
  v19 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v4 = MEMORY[0x277D73760];
  mEMORY[0x277D737E0] = [MEMORY[0x277D737E0] sharedPaths];
  v6 = [v4 factorProviderWithPaths:mEMORY[0x277D737E0] namespaceName:nameCopy];

  v7 = [v6 providerForTreatmentLayer:32];
  v8 = [v6 providerForTreatmentLayer:4];
  v9 = v8;
  if (v7 | v8)
  {
    if (v7)
    {
      factorLevels = [v7 factorLevels];
    }

    else
    {
      factorLevels2 = [v8 factorLevels];
      v13 = factorLevels2;
      v14 = MEMORY[0x277CBEBF8];
      if (factorLevels2)
      {
        v14 = factorLevels2;
      }

      factorLevels = v14;
    }
  }

  else
  {
    v11 = TRILogCategory_Server();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412290;
      v18 = nameCopy;
      _os_log_error_impl(&dword_26F567000, v11, OS_LOG_TYPE_ERROR, "[RADAR SEARCH] Missing FPE layer for an experiment in namespace %@", &v17, 0xCu);
    }

    factorLevels = MEMORY[0x277CBEBF8];
  }

  v15 = *MEMORY[0x277D85DE8];

  return factorLevels;
}

@end