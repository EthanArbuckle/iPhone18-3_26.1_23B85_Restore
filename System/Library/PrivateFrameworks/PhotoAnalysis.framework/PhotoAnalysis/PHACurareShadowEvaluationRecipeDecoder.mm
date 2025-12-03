@interface PHACurareShadowEvaluationRecipeDecoder
+ (BOOL)isValidFiltersByDatasetName:(id)name;
+ (id)allowedPredicates;
+ (id)castObject:(id)object withName:(id)name toClass:(Class)class error:(id *)error;
+ (id)decodeModelSpecificInfo:(id)info models:(id)models;
+ (id)decodeRecipeUserInfo:(id)info models:(id)models photoLibrary:(id)library graphManager:(id)manager trialDeploymentID:(id)d trialExperimentID:(id)iD trialTreatmentID:(id)treatmentID decodingError:(id *)self0;
+ (id)decodingErrorWithMessage:(id)message;
+ (id)objectOfClass:(Class)class forKey:(id)key inDictionary:(id)dictionary error:(id *)error;
+ (id)optionalObjectOfClass:(Class)class forKey:(id)key inDictionary:(id)dictionary error:(id *)error;
@end

@implementation PHACurareShadowEvaluationRecipeDecoder

+ (id)decodeModelSpecificInfo:(id)info models:(id)models
{
  v49 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  modelsCopy = models;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v38 = infoCopy;
  v34 = modelsCopy;
  if (infoCopy)
  {
    v41 = 0uLL;
    v42 = 0uLL;
    v39 = 0uLL;
    v40 = 0uLL;
    obj = modelsCopy;
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
          lastPathComponent = [v12 lastPathComponent];
          stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
          v16 = [stringByDeletingPathExtension componentsSeparatedByString:@"."];
          firstObject = [v16 firstObject];

          if (firstObject)
          {
            v18 = [v38 valueForKeyPath:firstObject];
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
    obja = modelsCopy;
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

+ (id)decodingErrorWithMessage:(id)message
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (message)
  {
    messageCopy = message;
  }

  else
  {
    messageCopy = @"No error message";
  }

  v10 = *MEMORY[0x277CCA450];
  v11[0] = messageCopy;
  v4 = MEMORY[0x277CBEAC0];
  messageCopy2 = message;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = objc_alloc(MEMORY[0x277CCA9B8]);

  v8 = [v7 initWithDomain:@"com.apple.PhotoAnalysis.PHACurareShadowEvaluationRecipeDecoder" code:1 userInfo:v6];

  return v8;
}

+ (id)castObject:(id)object withName:(id)name toClass:(Class)class error:(id *)error
{
  objectCopy = object;
  nameCopy = name;
  if (objc_opt_isKindOfClass())
  {
    error = objectCopy;
  }

  else if (error)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Object with name (%@) has class (%@), expected (%@)", nameCopy, objc_opt_class(), class];
    *error = [self decodingErrorWithMessage:v12];

    error = 0;
  }

  return error;
}

+ (id)objectOfClass:(Class)class forKey:(id)key inDictionary:(id)dictionary error:(id *)error
{
  keyCopy = key;
  v11 = [dictionary objectForKeyedSubscript:keyCopy];
  if (v11)
  {
    error = [self castObject:v11 withName:keyCopy toClass:class error:error];
  }

  else if (error)
  {
    keyCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"No value for key: (%@)", keyCopy];
    *error = [self decodingErrorWithMessage:keyCopy];

    error = 0;
  }

  return error;
}

+ (id)optionalObjectOfClass:(Class)class forKey:(id)key inDictionary:(id)dictionary error:(id *)error
{
  keyCopy = key;
  v11 = [dictionary objectForKeyedSubscript:keyCopy];
  if (v11)
  {
    v12 = [self castObject:v11 withName:keyCopy toClass:class error:error];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (BOOL)isValidFiltersByDatasetName:(id)name
{
  v38 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  allowedPredicates = [self allowedPredicates];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  allKeys = [nameCopy allKeys];
  v7 = [allKeys countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    v22 = *v29;
    v23 = allKeys;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        v12 = [nameCopy objectForKeyedSubscript:{v11, v22}];
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

              predicate = [*(*(&v24 + 1) + 8 * j) predicate];
              if (([allowedPredicates containsObject:predicate] & 1) == 0)
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  predicateFormat = [predicate predicateFormat];
                  *buf = 138412546;
                  v33 = predicateFormat;
                  v34 = 2112;
                  v35 = v11;
                  _os_log_error_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[PHACurareShadowEvaluationRecipeDecoder] Filter %@ for %@ dataset is not allowed for external devices", buf, 0x16u);
                }

                v19 = 0;
                allKeys = v23;
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
        allKeys = v23;
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
  cameraPredicate = [self cameraPredicate];
  v5[0] = cameraPredicate;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

+ (id)decodeRecipeUserInfo:(id)info models:(id)models photoLibrary:(id)library graphManager:(id)manager trialDeploymentID:(id)d trialExperimentID:(id)iD trialTreatmentID:(id)treatmentID decodingError:(id *)self0
{
  infoCopy = info;
  modelsCopy = models;
  treatmentIDCopy = treatmentID;
  iDCopy = iD;
  dCopy = d;
  managerCopy = manager;
  libraryCopy = library;
  v22 = objc_alloc_init(PHACurareShadowEvaluationRecipeOptions);
  [(PHAPrivateFederatedLearningRecipeOptions *)v22 setPhotoLibrary:libraryCopy];

  [(PHAPrivateFederatedLearningRecipeOptions *)v22 setGraphManager:managerCopy];
  [(PHACurareShadowEvaluationRecipeOptions *)v22 setTrialDeploymentID:dCopy];

  [(PHACurareShadowEvaluationRecipeOptions *)v22 setTrialExperimentID:iDCopy];
  [(PHACurareShadowEvaluationRecipeOptions *)v22 setTrialTreatmentID:treatmentIDCopy];

  v23 = [self objectOfClass:objc_opt_class() forKey:@"modelInputName" inDictionary:infoCopy error:error];
  [(PHAPrivateFederatedLearningRecipeOptions *)v22 setModelInputName:v23];

  modelInputName = [(PHAPrivateFederatedLearningRecipeOptions *)v22 modelInputName];

  if (!modelInputName || ([self objectOfClass:objc_opt_class() forKey:@"modelOutputName" inDictionary:infoCopy error:error], v25 = objc_claimAutoreleasedReturnValue(), -[PHAPrivateFederatedLearningRecipeOptions setModelOutputName:](v22, "setModelOutputName:", v25), v25, -[PHAPrivateFederatedLearningRecipeOptions modelOutputName](v22, "modelOutputName"), v26 = objc_claimAutoreleasedReturnValue(), v26, !v26) || (objc_msgSend(self, "objectOfClass:forKey:inDictionary:error:", objc_opt_class(), @"lossName", infoCopy, error), v27 = objc_claimAutoreleasedReturnValue(), -[PHAPrivateFederatedLearningRecipeOptions setLossName:](v22, "setLossName:", v27), v27, -[PHAPrivateFederatedLearningRecipeOptions lossName](v22, "lossName"), v28 = objc_claimAutoreleasedReturnValue(), v28, !v28))
  {
    v46 = 0;
    v47 = modelsCopy;
    goto LABEL_26;
  }

  v29 = [self optionalObjectOfClass:objc_opt_class() forKey:@"fingerprintVersion" inDictionary:infoCopy error:error];
  [(PHAPrivateFederatedLearningRecipeOptions *)v22 setFingerprintVersionName:v29];

  v30 = [self optionalObjectOfClass:objc_opt_class() forKey:@"datasetPolicy" inDictionary:infoCopy error:error];
  [(PHAPrivateFederatedLearningRecipeOptions *)v22 setDatasetPolicyString:v30];

  v31 = [self optionalObjectOfClass:objc_opt_class() forKey:@"labelPolicy" inDictionary:infoCopy error:error];
  [(PHAPrivateFederatedLearningRecipeOptions *)v22 setLabelPolicyString:v31];

  v32 = [self optionalObjectOfClass:objc_opt_class() forKey:@"positivesDatasetName" inDictionary:infoCopy error:error];
  [(PHAPrivateFederatedLearningRecipeOptions *)v22 setPositivesDatasetName:v32];

  v33 = [self optionalObjectOfClass:objc_opt_class() forKey:@"positivesSubsetName" inDictionary:infoCopy error:error];
  [(PHAPrivateFederatedLearningRecipeOptions *)v22 setPositivesSubsetName:v33];

  v34 = [self optionalObjectOfClass:objc_opt_class() forKey:@"negativesDatasetName" inDictionary:infoCopy error:error];
  [(PHAPrivateFederatedLearningRecipeOptions *)v22 setNegativesDatasetName:v34];

  v35 = [self optionalObjectOfClass:objc_opt_class() forKey:@"negativesSubsetName" inDictionary:infoCopy error:error];
  [(PHAPrivateFederatedLearningRecipeOptions *)v22 setNegativesSubsetName:v35];

  v36 = [self optionalObjectOfClass:objc_opt_class() forKey:@"filters" inDictionary:infoCopy error:error];
  v37 = [PHAPrivateFederatedLearningFiltersDecoder alloc];
  fingerprintVersionName = [(PHAPrivateFederatedLearningRecipeOptions *)v22 fingerprintVersionName];
  v39 = [(PHAPrivateFederatedLearningFiltersDecoder *)v37 initWithFingeprintVersionString:fingerprintVersionName];

  if (v36)
  {
    v40 = [(PHAPrivateFederatedLearningFiltersDecoder *)v39 filtersByDatasetNameFromDictionary:v36 error:error];
    [(PHAPrivateFederatedLearningRecipeOptions *)v22 setFiltersByDatasetName:v40];

    filtersByDatasetName = [(PHAPrivateFederatedLearningRecipeOptions *)v22 filtersByDatasetName];

    if (!filtersByDatasetName)
    {
      goto LABEL_22;
    }
  }

  if (!PFOSVariantHasInternalDiagnostics())
  {
    goto LABEL_12;
  }

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v43 = [standardUserDefaults BOOLForKey:@"PHACurareShadowEvaluationSimulateExternalDevice"];

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
  filtersByDatasetName2 = [(PHAPrivateFederatedLearningRecipeOptions *)v22 filtersByDatasetName];
  v49 = [self isValidFiltersByDatasetName:filtersByDatasetName2];

  if (v45 & 1) != 0 || (v49)
  {
    v51 = [self optionalObjectOfClass:objc_opt_class() forKey:@"datasetSource" inDictionary:infoCopy error:error];
    [(PHAPrivateFederatedLearningRecipeOptions *)v22 setDatasetSource:v51];

    v52 = [self optionalObjectOfClass:objc_opt_class() forKey:@"numberOfClasses" inDictionary:infoCopy error:error];
    -[PHAPrivateFederatedLearningRecipeOptions setNumberOfClasses:](v22, "setNumberOfClasses:", [v52 unsignedIntegerValue]);

    v53 = [self optionalObjectOfClass:objc_opt_class() forKey:@"learningFramework" inDictionary:infoCopy error:error];
    [(PHAPrivateFederatedLearningRecipeOptions *)v22 setLearningFramework:v53];

    v54 = [self optionalObjectOfClass:objc_opt_class() forKey:@"evaluationMetricNames" inDictionary:infoCopy error:error];
    [(PHAPrivateFederatedLearningRecipeOptions *)v22 setEvaluationMetricNames:v54];

    v50 = [self optionalObjectOfClass:objc_opt_class() forKey:@"modelSpecificInfo" inDictionary:infoCopy error:error];
    v47 = modelsCopy;
    v55 = [self decodeModelSpecificInfo:v50 models:modelsCopy];
    [(PHACurareShadowEvaluationRecipeOptions *)v22 setModelInfoArray:v55];

    modelInfoArray = [(PHACurareShadowEvaluationRecipeOptions *)v22 modelInfoArray];
    if (modelInfoArray)
    {
      v57 = modelInfoArray;
      modelInfoArray2 = [(PHACurareShadowEvaluationRecipeOptions *)v22 modelInfoArray];
      v46 = [modelInfoArray2 count];

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

  if (error)
  {
    v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"[PHACurareShadowEvaluationRecipeDecoder] Invalid filter"];
    [self decodingErrorWithMessage:v50];
    *error = v46 = 0;
    v47 = modelsCopy;
LABEL_24:

    goto LABEL_25;
  }

LABEL_22:
  v46 = 0;
  v47 = modelsCopy;
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