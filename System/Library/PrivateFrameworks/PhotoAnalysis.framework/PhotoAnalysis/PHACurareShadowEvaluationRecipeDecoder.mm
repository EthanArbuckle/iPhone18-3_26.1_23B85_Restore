@interface PHACurareShadowEvaluationRecipeDecoder
+ (BOOL)isValidFiltersByDatasetName:(id)a3;
+ (id)allowedPredicates;
+ (id)castObject:(id)a3 withName:(id)a4 toClass:(Class)a5 error:(id *)a6;
+ (id)decodeModelSpecificInfo:(id)a3 models:(id)a4;
+ (id)decodeRecipeUserInfo:(id)a3 models:(id)a4 photoLibrary:(id)a5 graphManager:(id)a6 trialDeploymentID:(id)a7 trialExperimentID:(id)a8 trialTreatmentID:(id)a9 decodingError:(id *)a10;
+ (id)decodingErrorWithMessage:(id)a3;
+ (id)objectOfClass:(Class)a3 forKey:(id)a4 inDictionary:(id)a5 error:(id *)a6;
+ (id)optionalObjectOfClass:(Class)a3 forKey:(id)a4 inDictionary:(id)a5 error:(id *)a6;
@end

@implementation PHACurareShadowEvaluationRecipeDecoder

+ (id)decodeModelSpecificInfo:(id)a3 models:(id)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v38 = v5;
  v34 = v6;
  if (v5)
  {
    v41 = 0uLL;
    v42 = 0uLL;
    v39 = 0uLL;
    v40 = 0uLL;
    obj = v6;
    v8 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v40;
      do
      {
        v11 = 0;
        v35 = v9;
        do
        {
          if (*v40 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v39 + 1) + 8 * v11);
          v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
          [v13 setObject:v12 forKeyedSubscript:@"modelPath"];
          v14 = [v12 lastPathComponent];
          v15 = [v14 stringByDeletingPathExtension];
          v16 = [v15 componentsSeparatedByString:@"."];
          v17 = [v16 firstObject];

          if (v17)
          {
            v18 = [v38 valueForKeyPath:v17];
            v19 = v18;
            if (v18)
            {
              v20 = [v18 valueForKeyPath:@"labelIndex"];
              v21 = v20;
              if (v20)
              {
                v22 = v20;
              }

              else
              {
                v22 = @"1";
              }

              [v13 setObject:v22 forKeyedSubscript:{@"labelIndex", v34}];
              v23 = [v19 valueForKeyPath:@"labelOperatingPoint"];
              v24 = v23;
              if (v23)
              {
                v25 = v23;
              }

              else
              {
                v25 = @"0.5";
              }

              v9 = v35;
              [v13 setObject:v25 forKeyedSubscript:@"labelOperatingPoint"];
              [v7 addObject:v13];
            }
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v45 = 0uLL;
    v46 = 0uLL;
    v43 = 0uLL;
    v44 = 0uLL;
    obja = v6;
    v26 = [obja countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v44;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v44 != v28)
          {
            objc_enumerationMutation(obja);
          }

          v30 = *(*(&v43 + 1) + 8 * i);
          v31 = objc_alloc_init(MEMORY[0x277CBEB38]);
          [v31 setObject:v30 forKeyedSubscript:@"modelPath"];
          [v31 setObject:@"1" forKeyedSubscript:@"labelIndex"];
          [v31 setObject:@"0.5" forKeyedSubscript:@"labelOperatingPoint"];
          [v7 addObject:v31];
        }

        v27 = [obja countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v27);
    }
  }

  v32 = [v7 copy];

  return v32;
}

+ (id)decodingErrorWithMessage:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = @"No error message";
  }

  v10 = *MEMORY[0x277CCA450];
  v11[0] = v3;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = objc_alloc(MEMORY[0x277CCA9B8]);

  v8 = [v7 initWithDomain:@"com.apple.PhotoAnalysis.PHACurareShadowEvaluationRecipeDecoder" code:1 userInfo:v6];

  return v8;
}

+ (id)castObject:(id)a3 withName:(id)a4 toClass:(Class)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  if (objc_opt_isKindOfClass())
  {
    a6 = v10;
  }

  else if (a6)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Object with name (%@) has class (%@), expected (%@)", v11, objc_opt_class(), a5];
    *a6 = [a1 decodingErrorWithMessage:v12];

    a6 = 0;
  }

  return a6;
}

+ (id)objectOfClass:(Class)a3 forKey:(id)a4 inDictionary:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = [a5 objectForKeyedSubscript:v10];
  if (v11)
  {
    a6 = [a1 castObject:v11 withName:v10 toClass:a3 error:a6];
  }

  else if (a6)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"No value for key: (%@)", v10];
    *a6 = [a1 decodingErrorWithMessage:v12];

    a6 = 0;
  }

  return a6;
}

+ (id)optionalObjectOfClass:(Class)a3 forKey:(id)a4 inDictionary:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = [a5 objectForKeyedSubscript:v10];
  if (v11)
  {
    v12 = [a1 castObject:v11 withName:v10 toClass:a3 error:a6];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (BOOL)isValidFiltersByDatasetName:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 allowedPredicates];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = [v4 allKeys];
  v7 = [v6 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    v22 = *v29;
    v23 = v6;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        v12 = [v4 objectForKeyedSubscript:{v11, v22}];
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v13 = v12;
        v14 = [v13 countByEnumeratingWithState:&v24 objects:v36 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v25;
          while (2)
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v25 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = [*(*(&v24 + 1) + 8 * j) predicate];
              if (([v5 containsObject:v18] & 1) == 0)
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  v21 = [v18 predicateFormat];
                  *buf = 138412546;
                  v33 = v21;
                  v34 = 2112;
                  v35 = v11;
                  _os_log_error_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[PHACurareShadowEvaluationRecipeDecoder] Filter %@ for %@ dataset is not allowed for external devices", buf, 0x16u);
                }

                v19 = 0;
                v6 = v23;
                goto LABEL_21;
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v24 objects:v36 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }
        }

        v9 = v22;
        v6 = v23;
      }

      v8 = [v23 countByEnumeratingWithState:&v28 objects:v37 count:16];
      v19 = 1;
    }

    while (v8);
  }

  else
  {
    v19 = 1;
  }

LABEL_21:

  return v19;
}

+ (id)allowedPredicates
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = [a1 cameraPredicate];
  v5[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

+ (id)decodeRecipeUserInfo:(id)a3 models:(id)a4 photoLibrary:(id)a5 graphManager:(id)a6 trialDeploymentID:(id)a7 trialExperimentID:(id)a8 trialTreatmentID:(id)a9 decodingError:(id *)a10
{
  v16 = a3;
  v60 = a4;
  v17 = a9;
  v18 = a8;
  v19 = a7;
  v20 = a6;
  v21 = a5;
  v22 = objc_alloc_init(PHACurareShadowEvaluationRecipeOptions);
  [(PHAPrivateFederatedLearningRecipeOptions *)v22 setPhotoLibrary:v21];

  [(PHAPrivateFederatedLearningRecipeOptions *)v22 setGraphManager:v20];
  [(PHACurareShadowEvaluationRecipeOptions *)v22 setTrialDeploymentID:v19];

  [(PHACurareShadowEvaluationRecipeOptions *)v22 setTrialExperimentID:v18];
  [(PHACurareShadowEvaluationRecipeOptions *)v22 setTrialTreatmentID:v17];

  v23 = [a1 objectOfClass:objc_opt_class() forKey:@"modelInputName" inDictionary:v16 error:a10];
  [(PHAPrivateFederatedLearningRecipeOptions *)v22 setModelInputName:v23];

  v24 = [(PHAPrivateFederatedLearningRecipeOptions *)v22 modelInputName];

  if (!v24 || ([a1 objectOfClass:objc_opt_class() forKey:@"modelOutputName" inDictionary:v16 error:a10], v25 = objc_claimAutoreleasedReturnValue(), -[PHAPrivateFederatedLearningRecipeOptions setModelOutputName:](v22, "setModelOutputName:", v25), v25, -[PHAPrivateFederatedLearningRecipeOptions modelOutputName](v22, "modelOutputName"), v26 = objc_claimAutoreleasedReturnValue(), v26, !v26) || (objc_msgSend(a1, "objectOfClass:forKey:inDictionary:error:", objc_opt_class(), @"lossName", v16, a10), v27 = objc_claimAutoreleasedReturnValue(), -[PHAPrivateFederatedLearningRecipeOptions setLossName:](v22, "setLossName:", v27), v27, -[PHAPrivateFederatedLearningRecipeOptions lossName](v22, "lossName"), v28 = objc_claimAutoreleasedReturnValue(), v28, !v28))
  {
    v46 = 0;
    v47 = v60;
    goto LABEL_26;
  }

  v29 = [a1 optionalObjectOfClass:objc_opt_class() forKey:@"fingerprintVersion" inDictionary:v16 error:a10];
  [(PHAPrivateFederatedLearningRecipeOptions *)v22 setFingerprintVersionName:v29];

  v30 = [a1 optionalObjectOfClass:objc_opt_class() forKey:@"datasetPolicy" inDictionary:v16 error:a10];
  [(PHAPrivateFederatedLearningRecipeOptions *)v22 setDatasetPolicyString:v30];

  v31 = [a1 optionalObjectOfClass:objc_opt_class() forKey:@"labelPolicy" inDictionary:v16 error:a10];
  [(PHAPrivateFederatedLearningRecipeOptions *)v22 setLabelPolicyString:v31];

  v32 = [a1 optionalObjectOfClass:objc_opt_class() forKey:@"positivesDatasetName" inDictionary:v16 error:a10];
  [(PHAPrivateFederatedLearningRecipeOptions *)v22 setPositivesDatasetName:v32];

  v33 = [a1 optionalObjectOfClass:objc_opt_class() forKey:@"positivesSubsetName" inDictionary:v16 error:a10];
  [(PHAPrivateFederatedLearningRecipeOptions *)v22 setPositivesSubsetName:v33];

  v34 = [a1 optionalObjectOfClass:objc_opt_class() forKey:@"negativesDatasetName" inDictionary:v16 error:a10];
  [(PHAPrivateFederatedLearningRecipeOptions *)v22 setNegativesDatasetName:v34];

  v35 = [a1 optionalObjectOfClass:objc_opt_class() forKey:@"negativesSubsetName" inDictionary:v16 error:a10];
  [(PHAPrivateFederatedLearningRecipeOptions *)v22 setNegativesSubsetName:v35];

  v36 = [a1 optionalObjectOfClass:objc_opt_class() forKey:@"filters" inDictionary:v16 error:a10];
  v37 = [PHAPrivateFederatedLearningFiltersDecoder alloc];
  v38 = [(PHAPrivateFederatedLearningRecipeOptions *)v22 fingerprintVersionName];
  v39 = [(PHAPrivateFederatedLearningFiltersDecoder *)v37 initWithFingeprintVersionString:v38];

  if (v36)
  {
    v40 = [(PHAPrivateFederatedLearningFiltersDecoder *)v39 filtersByDatasetNameFromDictionary:v36 error:a10];
    [(PHAPrivateFederatedLearningRecipeOptions *)v22 setFiltersByDatasetName:v40];

    v41 = [(PHAPrivateFederatedLearningRecipeOptions *)v22 filtersByDatasetName];

    if (!v41)
    {
      goto LABEL_22;
    }
  }

  if (!PFOSVariantHasInternalDiagnostics())
  {
    goto LABEL_12;
  }

  v42 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v43 = [v42 BOOLForKey:@"PHACurareShadowEvaluationSimulateExternalDevice"];

  if (v43)
  {
    if (__PXLog_genericOnceToken != -1)
    {
      dispatch_once(&__PXLog_genericOnceToken, &__block_literal_global_131);
    }

    v44 = __PXLog_genericOSLog;
    if (os_log_type_enabled(__PXLog_genericOSLog, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22FA28000, v44, OS_LOG_TYPE_INFO, "PHACurareShadowEvaluationSimulateExternalDevice is TRUE. Simulating external device", buf, 2u);
    }

LABEL_12:
    v45 = 0;
    goto LABEL_15;
  }

  v45 = 1;
LABEL_15:
  v48 = [(PHAPrivateFederatedLearningRecipeOptions *)v22 filtersByDatasetName];
  v49 = [a1 isValidFiltersByDatasetName:v48];

  if (v45 & 1) != 0 || (v49)
  {
    v51 = [a1 optionalObjectOfClass:objc_opt_class() forKey:@"datasetSource" inDictionary:v16 error:a10];
    [(PHAPrivateFederatedLearningRecipeOptions *)v22 setDatasetSource:v51];

    v52 = [a1 optionalObjectOfClass:objc_opt_class() forKey:@"numberOfClasses" inDictionary:v16 error:a10];
    -[PHAPrivateFederatedLearningRecipeOptions setNumberOfClasses:](v22, "setNumberOfClasses:", [v52 unsignedIntegerValue]);

    v53 = [a1 optionalObjectOfClass:objc_opt_class() forKey:@"learningFramework" inDictionary:v16 error:a10];
    [(PHAPrivateFederatedLearningRecipeOptions *)v22 setLearningFramework:v53];

    v54 = [a1 optionalObjectOfClass:objc_opt_class() forKey:@"evaluationMetricNames" inDictionary:v16 error:a10];
    [(PHAPrivateFederatedLearningRecipeOptions *)v22 setEvaluationMetricNames:v54];

    v50 = [a1 optionalObjectOfClass:objc_opt_class() forKey:@"modelSpecificInfo" inDictionary:v16 error:a10];
    v47 = v60;
    v55 = [a1 decodeModelSpecificInfo:v50 models:v60];
    [(PHACurareShadowEvaluationRecipeOptions *)v22 setModelInfoArray:v55];

    v56 = [(PHACurareShadowEvaluationRecipeOptions *)v22 modelInfoArray];
    if (v56)
    {
      v57 = v56;
      v58 = [(PHACurareShadowEvaluationRecipeOptions *)v22 modelInfoArray];
      v46 = [v58 count];

      if (v46)
      {
        v46 = [[PHACurareShadowEvaluationRunner alloc] initWithRecipeOptions:v22];
      }
    }

    else
    {
      v46 = 0;
    }

    goto LABEL_24;
  }

  if (a10)
  {
    v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"[PHACurareShadowEvaluationRecipeDecoder] Invalid filter"];
    [a1 decodingErrorWithMessage:v50];
    *a10 = v46 = 0;
    v47 = v60;
LABEL_24:

    goto LABEL_25;
  }

LABEL_22:
  v46 = 0;
  v47 = v60;
LABEL_25:

LABEL_26:

  return v46;
}

uint64_t __163__PHACurareShadowEvaluationRecipeDecoder_decodeRecipeUserInfo_models_photoLibrary_graphManager_trialDeploymentID_trialExperimentID_trialTreatmentID_decodingError___block_invoke()
{
  __PXLog_genericOSLog = os_log_create("com.apple.photoanalysisd", "generic");

  return MEMORY[0x2821F96F8]();
}

@end