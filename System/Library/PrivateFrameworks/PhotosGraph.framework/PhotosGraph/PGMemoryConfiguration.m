@interface PGMemoryConfiguration
+ (id)featuredTimePeriodMemoryConfigurationFromDictionary:(id)a3;
+ (id)memoryCategorySubcategoryByOverTimeTypeFromLabels:(id)a3;
+ (id)memoryConfigurationsWithGraph:(id)a3 loggingConnection:(id)a4;
+ (id)memoryFeatureSpecificationsFromDictionaries:(id)a3 memoryConfigurationLabel:(id)a4 graph:(id)a5 loggingConnection:(id)a6;
+ (id)memoryMomentRequirementsFromDictionary:(id)a3;
+ (id)overTheYearsMemoryConfigurationFromDictionary:(id)a3;
+ (id)resolveConfigurationDictionary:(id)a3 configurationLabel:(id)a4 graph:(id)a5 loggingConnection:(id)a6;
+ (unint64_t)memoryCategoryFromMemoryCategoryLabel:(id)a3;
+ (unint64_t)minimumSceneAnalysisVersionForSignalModel:(int64_t)a3;
@end

@implementation PGMemoryConfiguration

+ (unint64_t)minimumSceneAnalysisVersionForSignalModel:(int64_t)a3
{
  if (a3 == 1)
  {
    v3 = 0x277D3CAD8;
    return [*v3 latestVersion];
  }

  if (a3 == 2)
  {
    v3 = 0x277D3CAB0;
    return [*v3 latestVersion];
  }

  return 0;
}

+ (id)featuredTimePeriodMemoryConfigurationFromDictionary:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [[PGDictionaryConfigurationSource alloc] initWithDictionary:v3];

  v5 = [PGFeaturedTimePeriodMemoryConfigurationBuilder alloc];
  v11[0] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v7 = [(PGConfiguration *)v5 initWithSources:v6 version:1.0];

  v8 = [(PGFeaturedTimePeriodMemoryConfigurationBuilder *)v7 featuredTimePeriodMemoryConfiguration];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)overTheYearsMemoryConfigurationFromDictionary:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [[PGDictionaryConfigurationSource alloc] initWithDictionary:v3];

  v5 = [PGOverTheYearsMemoryConfigurationBuilder alloc];
  v11[0] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v7 = [(PGConfiguration *)v5 initWithSources:v6 version:1.0];

  v8 = [(PGOverTheYearsMemoryConfigurationBuilder *)v7 overTheYearsMemoryConfiguration];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)memoryMomentRequirementsFromDictionary:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [[PGDictionaryConfigurationSource alloc] initWithDictionary:v3];

  v5 = [PGMemoryMomentRequirementsBuilder alloc];
  v11[0] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v7 = [(PGConfiguration *)v5 initWithSources:v6 version:1.0];

  v8 = [(PGMemoryMomentRequirementsBuilder *)v7 memoryMomentRequirements];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)memoryFeatureSpecificationsFromDictionaries:(id)a3 memoryConfigurationLabel:(id)a4 graph:(id)a5 loggingConnection:(id)a6
{
  v48 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v40 = a5;
  v11 = a6;
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v13 = v9;
  v14 = [v13 countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v14)
  {
    v16 = v14;
    v38 = *v42;
    v37 = *MEMORY[0x277D3C848];
    v17 = *MEMORY[0x277D3C838];
    v36 = *MEMORY[0x277D3C8A0];
    *&v15 = 138412290;
    v32 = v15;
    v33 = v10;
    obj = v13;
    log = v11;
    v35 = v12;
LABEL_3:
    v18 = 0;
    while (1)
    {
      if (*v42 != v38)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v41 + 1) + 8 * v18);
      v20 = [v19 objectForKeyedSubscript:{v37, v32}];
      v21 = [v19 objectForKeyedSubscript:v17];
      v22 = v21;
      if (!v20)
      {
        break;
      }

      if (!v21)
      {
        if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
        {
          *buf = v32;
          v46 = v33;
          _os_log_error_impl(&dword_22F0FC000, log, OS_LOG_TYPE_ERROR, "[PGMemoryConfiguration] Missing required memoryFeature property combineFeatureNodes for memoryConfiguration %@", buf, 0xCu);
        }

LABEL_24:

LABEL_25:
        v13 = obj;

        v29 = 0;
        v10 = v33;
        v11 = log;
        v12 = v35;
        goto LABEL_26;
      }

      v23 = [v20 integerValue];
      v24 = [v22 BOOLValue];
      v25 = [v19 objectForKeyedSubscript:v36];
      if (v25)
      {
        v26 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v25];
      }

      else
      {
        v26 = 0;
      }

      v27 = [[PGMemoryFeatureSpecification alloc] initWithFeatureType:v23 typeSpecificIdentifiers:v26 combineFeatureNodes:v24 graph:v40 loggingConnection:log];
      v28 = [(PGMemoryFeatureSpecification *)v27 featureNodes];

      if (v28)
      {
        [v35 addObject:v27];
      }

      else if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        *buf = v32;
        v46 = v33;
        _os_log_error_impl(&dword_22F0FC000, log, OS_LOG_TYPE_ERROR, "[PGMemoryConfiguration] nil featureNodes for memoryConfiguration %@", buf, 0xCu);
      }

      if (!v28)
      {
        goto LABEL_25;
      }

      if (v16 == ++v18)
      {
        v13 = obj;
        v16 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
        v10 = v33;
        v11 = log;
        v12 = v35;
        if (v16)
        {
          goto LABEL_3;
        }

        goto LABEL_18;
      }
    }

    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      *buf = v32;
      v46 = v33;
      _os_log_error_impl(&dword_22F0FC000, log, OS_LOG_TYPE_ERROR, "[PGMemoryConfiguration] Missing required memoryFeature property featureType for memoryConfiguration %@", buf, 0xCu);
    }

    v20 = 0;
    goto LABEL_24;
  }

LABEL_18:

  v29 = v12;
LABEL_26:

  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

+ (id)memoryCategorySubcategoryByOverTimeTypeFromLabels:(id)a3
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  if (PGIsAppleInternal_onceToken != -1)
  {
    dispatch_once(&PGIsAppleInternal_onceToken, &__block_literal_global_8316);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __75__PGMemoryConfiguration_memoryCategorySubcategoryByOverTimeTypeFromLabels___block_invoke;
  v8[3] = &unk_2788802C8;
  v10 = PGIsAppleInternal_isAppleInternal;
  v6 = v5;
  v9 = v6;
  [v4 enumerateKeysAndObjectsUsingBlock:v8];

  return v6;
}

void __75__PGMemoryConfiguration_memoryCategorySubcategoryByOverTimeTypeFromLabels___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = PGMemoryCategorySubcategoryForLabel(a3);
  if (!v6)
  {
    if (*(a1 + 40))
    {
      v6 = 17001;
    }

    else
    {
      v6 = 0;
    }
  }

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v5];
}

+ (unint64_t)memoryCategoryFromMemoryCategoryLabel:(id)a3
{
  v3 = a3;
  if (PGIsAppleInternal_onceToken != -1)
  {
    dispatch_once(&PGIsAppleInternal_onceToken, &__block_literal_global_8316);
  }

  v4 = PGIsAppleInternal_isAppleInternal;
  v5 = [PGGraphBuilder memoryCategoryForLabel:v3];

  if (((v5 == 0) & v4) != 0)
  {
    return 100;
  }

  else
  {
    return v5;
  }
}

+ (id)resolveConfigurationDictionary:(id)a3 configurationLabel:(id)a4 graph:(id)a5 loggingConnection:(id)a6
{
  v58 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v10];
  v15 = [v10 objectForKeyedSubscript:*MEMORY[0x277D3C868]];
  if (v15)
  {
    v16 = [a1 memoryCategoryFromMemoryCategoryLabel:v15];
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v16];
    [v14 setObject:v17 forKeyedSubscript:*MEMORY[0x277D3C860]];

    v18 = [v10 objectForKeyedSubscript:*MEMORY[0x277D3C878]];
    if (v18)
    {
      v19 = [a1 memoryCategorySubcategoryByOverTimeTypeFromLabels:v18];
      v20 = *MEMORY[0x277D3C870];
      v54 = v19;
      [v14 setObject:? forKeyedSubscript:?];
      v21 = *MEMORY[0x277D3C880];
      v22 = [v10 objectForKeyedSubscript:*MEMORY[0x277D3C880]];
      v55 = v22;
      if (v22)
      {
        v23 = [a1 memoryFeatureSpecificationsFromDictionaries:v22 memoryConfigurationLabel:v11 graph:v12 loggingConnection:v13];
        v53 = v23;
        if (v23)
        {
          [v14 setObject:v23 forKeyedSubscript:v21];
          v24 = *MEMORY[0x277D3C888];
          v25 = [v10 objectForKeyedSubscript:*MEMORY[0x277D3C888]];
          v52 = v25;
          if (v25)
          {
            v26 = [a1 memoryMomentRequirementsFromDictionary:v25];
            v51 = v26;
            if (v26)
            {
              [v14 setObject:v26 forKeyedSubscript:v24];
              v27 = *MEMORY[0x277D3C898];
              v28 = [v10 objectForKeyedSubscript:*MEMORY[0x277D3C898]];
              v50 = v28;
              if (v28)
              {
                v29 = [a1 overTheYearsMemoryConfigurationFromDictionary:v28];
                v49 = v29;
                if (v29)
                {
                  [v14 setObject:v29 forKeyedSubscript:v27];
                  v30 = *MEMORY[0x277D3C858];
                  v31 = [v10 objectForKeyedSubscript:*MEMORY[0x277D3C858]];
                  v48 = v31;
                  if (v31)
                  {
                    v32 = [a1 featuredTimePeriodMemoryConfigurationFromDictionary:v31];
                    v47 = v32;
                    if (v32)
                    {
                      [v14 setObject:v32 forKeyedSubscript:v30];
                      v33 = *MEMORY[0x277D3C850];
                      v34 = [v10 objectForKeyedSubscript:*MEMORY[0x277D3C850]];
                      v46 = v34;
                      if (v34)
                      {
                        v35 = [a1 featuredTimePeriodMemoryConfigurationFromDictionary:v34];
                        v45 = v35;
                        if (v35)
                        {
                          [v14 setObject:v35 forKeyedSubscript:v33];
                          v36 = [v10 objectForKeyedSubscript:*MEMORY[0x277D3C840]];
                          if (v36)
                          {
                            v44 = v36;
                            v37 = [a1 minimumSceneAnalysisVersionForSignalModel:{objc_msgSend(v36, "integerValue")}];
                            v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v37];
                            [v14 setObject:v38 forKeyedSubscript:*MEMORY[0x277D3C890]];

                            v39 = v14;
                            v40 = v44;
                          }

                          else
                          {
                            v40 = 0;
                            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
                            {
                              *buf = 138412290;
                              v57 = v11;
                              _os_log_error_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_ERROR, "[PGMemoryConfiguration] Nil curationSignalModel for memoryConfiguration %@", buf, 0xCu);
                            }

                            v39 = 0;
                          }

                          v41 = v54;
                        }

                        else
                        {
                          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 138412290;
                            v57 = v11;
                            _os_log_error_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_ERROR, "[PGMemoryConfiguration] Nil seasonMemoryConfiguration for memoryConfiguration %@", buf, 0xCu);
                          }

                          v39 = 0;
                          v41 = v54;
                        }
                      }

                      else
                      {
                        v41 = v54;
                        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 138412290;
                          v57 = v11;
                          _os_log_error_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_ERROR, "[PGMemoryConfiguration] Nil seasonMemoryConfiguration dictionary for memoryConfiguration %@", buf, 0xCu);
                        }

                        v39 = 0;
                      }
                    }

                    else
                    {
                      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412290;
                        v57 = v11;
                        _os_log_error_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_ERROR, "[PGMemoryConfiguration] Nil featuredYearMemoryConfiguration for memoryConfiguration %@", buf, 0xCu);
                      }

                      v39 = 0;
                      v41 = v54;
                    }
                  }

                  else
                  {
                    v41 = v54;
                    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      v57 = v11;
                      _os_log_error_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_ERROR, "[PGMemoryConfiguration] Nil featuredYearMemoryConfiguration dictionary for memoryConfiguration %@", buf, 0xCu);
                    }

                    v39 = 0;
                  }
                }

                else
                {
                  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v57 = v11;
                    _os_log_error_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_ERROR, "[PGMemoryConfiguration] Nil overTheYearsConfiguration for memoryConfiguration %@", buf, 0xCu);
                  }

                  v39 = 0;
                  v41 = v54;
                }
              }

              else
              {
                v41 = v54;
                if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v57 = v11;
                  _os_log_error_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_ERROR, "[PGMemoryConfiguration] Nil overTheYearsConfiguration dictionary for memoryConfiguration %@", buf, 0xCu);
                }

                v39 = 0;
              }
            }

            else
            {
              if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v57 = v11;
                _os_log_error_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_ERROR, "[PGMemoryConfiguration] Nil memoryMomentRequirements for memoryConfiguration %@", buf, 0xCu);
              }

              v39 = 0;
              v41 = v54;
            }
          }

          else
          {
            v41 = v54;
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v57 = v11;
              _os_log_error_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_ERROR, "[PGMemoryConfiguration] Nil memoryMomentRequirements dictionary for memoryConfiguration %@", buf, 0xCu);
            }

            v39 = 0;
          }
        }

        else
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v57 = v11;
            _os_log_error_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_ERROR, "[PGMemoryConfiguration] Nil memoryFeatureSpecifications for memoryConfiguration %@", buf, 0xCu);
          }

          v39 = 0;
          v41 = v54;
        }
      }

      else
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v57 = v11;
          _os_log_error_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_ERROR, "[PGMemoryConfiguration] No memoryFeatureSpecification dictionaries defined for memoryConfiguration %@", buf, 0xCu);
        }

        v39 = 0;
        v41 = v54;
      }
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v57 = v11;
        _os_log_error_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_ERROR, "[PGMemoryConfiguration] No memoryCategorySubcategoryLabelByOverTimeType defined for memoryConfiguration %@", buf, 0xCu);
      }

      v39 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v57 = v11;
      _os_log_error_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_ERROR, "[PGMemoryConfiguration] No memoryCategoryLabel defined for memoryConfiguration %@", buf, 0xCu);
    }

    v39 = 0;
  }

  v42 = *MEMORY[0x277D85DE8];

  return v39;
}

+ (id)memoryConfigurationsWithGraph:(id)a3 loggingConnection:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 URLForResource:@"MemoryConfigurations" withExtension:@"plist"];

  v23 = 0;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v9 error:&v23];
  v11 = v23;
  if (v10)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __73__PGMemoryConfiguration_memoryConfigurationsWithGraph_loggingConnection___block_invoke;
    v18[3] = &unk_2788802A0;
    v22 = a1;
    v19 = v6;
    v20 = v7;
    v13 = v12;
    v21 = v13;
    [v10 enumerateKeysAndObjectsUsingBlock:v18];
    v14 = v21;
    v15 = v13;
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = v11;
      _os_log_error_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_ERROR, "[PGMemoryConfiguration] memoryConfigurations loaded from the plist is nil, failed with error %@", buf, 0xCu);
    }

    v15 = MEMORY[0x277CBEBF8];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

void __73__PGMemoryConfiguration_memoryConfigurationsWithGraph_loggingConnection___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = [*(a1 + 56) resolveConfigurationDictionary:a3 configurationLabel:v7 graph:*(a1 + 32) loggingConnection:*(a1 + 40)];
  if (v8)
  {
    v9 = [[PGDictionaryConfigurationSource alloc] initWithDictionary:v8];
    v10 = [PGMemoryConfiguration alloc];
    v16 = v9;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
    v12 = [(PGConfiguration *)v10 initWithSources:v11 version:1.0];

    if (v12)
    {
      [*(a1 + 48) addObject:v12];
    }

    else
    {
      v14 = *(a1 + 40);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v18 = v7;
        _os_log_error_impl(&dword_22F0FC000, v14, OS_LOG_TYPE_ERROR, "[PGMemoryConfiguration] memoryConfiguration is nil for memoryConfiguration: %@", buf, 0xCu);
      }

      *a4 = 1;
    }
  }

  else
  {
    v13 = *(a1 + 40);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v7;
      _os_log_error_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_ERROR, "[PGMemoryConfiguration] Resolved memoryConfiguration dictionary is nil for memoryConfiguration: %@", buf, 0xCu);
    }

    *a4 = 1;
  }

  v15 = *MEMORY[0x277D85DE8];
}

@end