@interface PHAPrivateFederatedLearningRecipeDecoder
+ (id)castObject:(id)object withName:(id)name toClass:(Class)class error:(id *)error;
+ (id)decodeRecipeUserInfo:(id)info attachmentURLs:(id)ls photoLibrary:(id)library graphManager:(id)manager decodingError:(id *)error;
+ (id)decodingErrorWithMessage:(id)message;
+ (id)objectOfClass:(Class)class forKey:(id)key inDictionary:(id)dictionary error:(id *)error;
+ (id)optionalObjectOfClass:(Class)class forKey:(id)key inDictionary:(id)dictionary defaultValue:(id)value error:(id *)error;
+ (id)optionalObjectOfClass:(Class)class forKey:(id)key inDictionary:(id)dictionary error:(id *)error;
@end

@implementation PHAPrivateFederatedLearningRecipeDecoder

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

  v8 = [v7 initWithDomain:@"com.apple.PhotoAnalysis.PHAPrivateFederatedLearningRecipeDecoder" code:10001 userInfo:v6];

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

+ (id)optionalObjectOfClass:(Class)class forKey:(id)key inDictionary:(id)dictionary defaultValue:(id)value error:(id *)error
{
  keyCopy = key;
  valueCopy = value;
  v14 = [dictionary objectForKeyedSubscript:keyCopy];
  v15 = v14;
  if (valueCopy && !v14)
  {
    v15 = valueCopy;
LABEL_5:
    v16 = [self castObject:v15 withName:keyCopy toClass:class error:error];

    goto LABEL_6;
  }

  if (v14)
  {
    goto LABEL_5;
  }

  v16 = 0;
LABEL_6:

  return v16;
}

+ (id)decodeRecipeUserInfo:(id)info attachmentURLs:(id)ls photoLibrary:(id)library graphManager:(id)manager decodingError:(id *)error
{
  infoCopy = info;
  libraryCopy = library;
  managerCopy = manager;
  lsCopy = ls;
  v16 = objc_alloc_init(PHAPrivateFederatedLearningRecipeOptions);
  [(PHAPrivateFederatedLearningRecipeOptions *)v16 setAttachmentURLs:lsCopy];

  objc_opt_class();
  v17 = [self objectOfClass:objc_opt_class() forKey:@"layersToTrain" inDictionary:infoCopy error:error];
  [(PHAPrivateFederatedLearningRecipeOptions *)v16 setLayersToTrain:v17];

  v18 = objc_opt_class();
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PHAPrivateFederatedLearningRecipeOptions numberOfEpochs](v16, "numberOfEpochs")}];
  v20 = [self optionalObjectOfClass:v18 forKey:@"numberOfEpochs" inDictionary:infoCopy defaultValue:v19 error:error];
  -[PHAPrivateFederatedLearningRecipeOptions setNumberOfEpochs:](v16, "setNumberOfEpochs:", [v20 unsignedIntegerValue]);

  v21 = objc_opt_class();
  v22 = MEMORY[0x277CCABB0];
  [(PHAPrivateFederatedLearningRecipeOptions *)v16 learningRate];
  v23 = [v22 numberWithDouble:?];
  v24 = [self optionalObjectOfClass:v21 forKey:@"learningRate" inDictionary:infoCopy defaultValue:v23 error:error];
  [v24 doubleValue];
  [(PHAPrivateFederatedLearningRecipeOptions *)v16 setLearningRate:?];

  v25 = [self objectOfClass:objc_opt_class() forKey:@"modelInputName" inDictionary:infoCopy error:error];
  [(PHAPrivateFederatedLearningRecipeOptions *)v16 setModelInputName:v25];

  modelInputName = [(PHAPrivateFederatedLearningRecipeOptions *)v16 modelInputName];

  if (modelInputName && ([self objectOfClass:objc_opt_class() forKey:@"modelOutputName" inDictionary:infoCopy error:error], v27 = objc_claimAutoreleasedReturnValue(), -[PHAPrivateFederatedLearningRecipeOptions setModelOutputName:](v16, "setModelOutputName:", v27), v27, -[PHAPrivateFederatedLearningRecipeOptions modelOutputName](v16, "modelOutputName"), v28 = objc_claimAutoreleasedReturnValue(), v28, v28))
  {
    v29 = objc_opt_class();
    lossName = [(PHAPrivateFederatedLearningRecipeOptions *)v16 lossName];
    v31 = [self optionalObjectOfClass:v29 forKey:@"lossName" inDictionary:infoCopy defaultValue:lossName error:error];
    [(PHAPrivateFederatedLearningRecipeOptions *)v16 setLossName:v31];

    v32 = objc_opt_class();
    optimizerName = [(PHAPrivateFederatedLearningRecipeOptions *)v16 optimizerName];
    v34 = [self optionalObjectOfClass:v32 forKey:@"optimizerName" inDictionary:infoCopy defaultValue:optimizerName error:error];
    [(PHAPrivateFederatedLearningRecipeOptions *)v16 setOptimizerName:v34];

    v35 = objc_opt_class();
    trainingTask = [(PHAPrivateFederatedLearningRecipeOptions *)v16 trainingTask];
    v37 = [self optionalObjectOfClass:v35 forKey:@"trainingTask" inDictionary:infoCopy defaultValue:trainingTask error:error];
    [(PHAPrivateFederatedLearningRecipeOptions *)v16 setTrainingTask:v37];

    v38 = objc_opt_class();
    fingerprintVersionName = [(PHAPrivateFederatedLearningRecipeOptions *)v16 fingerprintVersionName];
    v40 = [self optionalObjectOfClass:v38 forKey:@"fingerprintVersion" inDictionary:infoCopy defaultValue:fingerprintVersionName error:error];
    [(PHAPrivateFederatedLearningRecipeOptions *)v16 setFingerprintVersionName:v40];

    v41 = objc_opt_class();
    datasetPolicyString = [(PHAPrivateFederatedLearningRecipeOptions *)v16 datasetPolicyString];
    v43 = [self optionalObjectOfClass:v41 forKey:@"datasetPolicy" inDictionary:infoCopy defaultValue:datasetPolicyString error:error];
    [(PHAPrivateFederatedLearningRecipeOptions *)v16 setDatasetPolicyString:v43];

    v44 = objc_opt_class();
    labelPolicyString = [(PHAPrivateFederatedLearningRecipeOptions *)v16 labelPolicyString];
    v46 = [self optionalObjectOfClass:v44 forKey:@"labelPolicy" inDictionary:infoCopy defaultValue:labelPolicyString error:error];
    [(PHAPrivateFederatedLearningRecipeOptions *)v16 setLabelPolicyString:v46];

    v47 = objc_opt_class();
    positivesDatasetName = [(PHAPrivateFederatedLearningRecipeOptions *)v16 positivesDatasetName];
    v49 = [self optionalObjectOfClass:v47 forKey:@"positivesDatasetName" inDictionary:infoCopy defaultValue:positivesDatasetName error:error];
    [(PHAPrivateFederatedLearningRecipeOptions *)v16 setPositivesDatasetName:v49];

    v50 = objc_opt_class();
    positivesSubsetName = [(PHAPrivateFederatedLearningRecipeOptions *)v16 positivesSubsetName];
    v52 = [self optionalObjectOfClass:v50 forKey:@"positivesSubsetName" inDictionary:infoCopy defaultValue:positivesSubsetName error:error];
    [(PHAPrivateFederatedLearningRecipeOptions *)v16 setPositivesSubsetName:v52];

    v53 = objc_opt_class();
    negativesDatasetName = [(PHAPrivateFederatedLearningRecipeOptions *)v16 negativesDatasetName];
    v55 = [self optionalObjectOfClass:v53 forKey:@"negativesDatasetName" inDictionary:infoCopy defaultValue:negativesDatasetName error:error];
    [(PHAPrivateFederatedLearningRecipeOptions *)v16 setNegativesDatasetName:v55];

    v56 = objc_opt_class();
    negativesSubsetName = [(PHAPrivateFederatedLearningRecipeOptions *)v16 negativesSubsetName];
    v58 = [self optionalObjectOfClass:v56 forKey:@"negativesSubsetName" inDictionary:infoCopy defaultValue:negativesSubsetName error:error];
    [(PHAPrivateFederatedLearningRecipeOptions *)v16 setNegativesSubsetName:v58];

    v59 = objc_opt_class();
    v60 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PHAPrivateFederatedLearningRecipeOptions totalNumberOfSamples](v16, "totalNumberOfSamples")}];
    v61 = [self optionalObjectOfClass:v59 forKey:@"totalNumberOfSamples" inDictionary:infoCopy defaultValue:v60 error:error];
    -[PHAPrivateFederatedLearningRecipeOptions setTotalNumberOfSamples:](v16, "setTotalNumberOfSamples:", [v61 unsignedIntegerValue]);

    v62 = objc_opt_class();
    v63 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PHAPrivateFederatedLearningRecipeOptions oversamplingRate](v16, "oversamplingRate")}];
    v64 = [self optionalObjectOfClass:v62 forKey:@"oversamplingRate" inDictionary:infoCopy defaultValue:v63 error:error];
    -[PHAPrivateFederatedLearningRecipeOptions setOversamplingRate:](v16, "setOversamplingRate:", [v64 unsignedIntegerValue]);

    [(PHAPrivateFederatedLearningRecipeOptions *)v16 setPhotoLibrary:libraryCopy];
    v117 = managerCopy;
    [(PHAPrivateFederatedLearningRecipeOptions *)v16 setGraphManager:managerCopy];
    v65 = [self optionalObjectOfClass:objc_opt_class() forKey:@"transformations" inDictionary:infoCopy error:error];
    if (v65 && (v66 = objc_alloc_init(PHAPrivateFederatedLearningTransformersDecoder), [(PHAPrivateFederatedLearningTransformersDecoder *)v66 transformersForFeatureExtractorsFromDictionary:v65 error:error], v67 = objc_claimAutoreleasedReturnValue(), [(PHAPrivateFederatedLearningRecipeOptions *)v16 setTransformersForFeatureExtractors:v67], v67, [(PHAPrivateFederatedLearningRecipeOptions *)v16 transformersForFeatureExtractors], v68 = objc_claimAutoreleasedReturnValue(), v68, v66, !v68))
    {
      v114 = 0;
      managerCopy = v117;
    }

    else
    {
      v116 = libraryCopy;
      v69 = [self optionalObjectOfClass:objc_opt_class() forKey:@"augmentations" inDictionary:infoCopy error:error];
      if (v69 && (v70 = objc_alloc_init(PHAPrivateFederatedLearningAugmentersDecoder), [(PHAPrivateFederatedLearningAugmentersDecoder *)v70 augmentersFromArray:v69 error:error], v71 = objc_claimAutoreleasedReturnValue(), [(PHAPrivateFederatedLearningRecipeOptions *)v16 setAugmenters:v71], v71, [(PHAPrivateFederatedLearningRecipeOptions *)v16 augmenters], v72 = objc_claimAutoreleasedReturnValue(), v72, v70, !v72))
      {
        v114 = 0;
        libraryCopy = v116;
        managerCopy = v117;
      }

      else
      {
        v73 = [self optionalObjectOfClass:objc_opt_class() forKey:@"filters" inDictionary:infoCopy error:error];
        if (v73 && (v74 = [PHAPrivateFederatedLearningFiltersDecoder alloc], [(PHAPrivateFederatedLearningRecipeOptions *)v16 fingerprintVersionName], v75 = objc_claimAutoreleasedReturnValue(), v76 = [(PHAPrivateFederatedLearningFiltersDecoder *)v74 initWithFingeprintVersionString:v75], v75, [(PHAPrivateFederatedLearningFiltersDecoder *)v76 filtersByDatasetNameFromDictionary:v73 error:error], v77 = objc_claimAutoreleasedReturnValue(), [(PHAPrivateFederatedLearningRecipeOptions *)v16 setFiltersByDatasetName:v77], v77, [(PHAPrivateFederatedLearningRecipeOptions *)v16 filtersByDatasetName], v78 = objc_claimAutoreleasedReturnValue(), v78, v76, !v78))
        {
          v114 = 0;
          libraryCopy = v116;
          managerCopy = v117;
        }

        else
        {
          v79 = objc_opt_class();
          v80 = [MEMORY[0x277CCABB0] numberWithBool:{-[PHAPrivateFederatedLearningRecipeOptions shouldValidateModel](v16, "shouldValidateModel")}];
          v81 = [self optionalObjectOfClass:v79 forKey:@"validateModel" inDictionary:infoCopy defaultValue:v80 error:error];
          -[PHAPrivateFederatedLearningRecipeOptions setShouldValidateModel:](v16, "setShouldValidateModel:", [v81 BOOLValue]);

          v82 = objc_opt_class();
          v83 = MEMORY[0x277CCABB0];
          [(PHAPrivateFederatedLearningRecipeOptions *)v16 minProcessedRate];
          v84 = [v83 numberWithDouble:?];
          v85 = [self optionalObjectOfClass:v82 forKey:@"minProcessedRate" inDictionary:infoCopy defaultValue:v84 error:error];
          [v85 doubleValue];
          [(PHAPrivateFederatedLearningRecipeOptions *)v16 setMinProcessedRate:?];

          v86 = objc_opt_class();
          datasetSource = [(PHAPrivateFederatedLearningRecipeOptions *)v16 datasetSource];
          v88 = [self optionalObjectOfClass:v86 forKey:@"datasetSource" inDictionary:infoCopy defaultValue:datasetSource error:error];
          [(PHAPrivateFederatedLearningRecipeOptions *)v16 setDatasetSource:v88];

          v89 = objc_opt_class();
          v90 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PHAPrivateFederatedLearningRecipeOptions numberOfClasses](v16, "numberOfClasses")}];
          v91 = [self optionalObjectOfClass:v89 forKey:@"numberOfClasses" inDictionary:infoCopy defaultValue:v90 error:error];
          -[PHAPrivateFederatedLearningRecipeOptions setNumberOfClasses:](v16, "setNumberOfClasses:", [v91 unsignedIntegerValue]);

          v92 = objc_opt_class();
          learningFramework = [(PHAPrivateFederatedLearningRecipeOptions *)v16 learningFramework];
          v94 = [self optionalObjectOfClass:v92 forKey:@"learningFramework" inDictionary:infoCopy defaultValue:learningFramework error:error];
          [(PHAPrivateFederatedLearningRecipeOptions *)v16 setLearningFramework:v94];

          v95 = objc_opt_class();
          evaluationMetricNames = [(PHAPrivateFederatedLearningRecipeOptions *)v16 evaluationMetricNames];
          v97 = [self optionalObjectOfClass:v95 forKey:@"evaluationMetricNames" inDictionary:infoCopy defaultValue:evaluationMetricNames error:error];
          [(PHAPrivateFederatedLearningRecipeOptions *)v16 setEvaluationMetricNames:v97];

          v98 = objc_opt_class();
          v99 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PHAPrivateFederatedLearningRecipeOptions batchSize](v16, "batchSize")}];
          v100 = [self optionalObjectOfClass:v98 forKey:@"batchSize" inDictionary:infoCopy defaultValue:v99 error:error];
          -[PHAPrivateFederatedLearningRecipeOptions setBatchSize:](v16, "setBatchSize:", [v100 unsignedIntegerValue]);

          v101 = objc_opt_class();
          v102 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PHAPrivateFederatedLearningRecipeOptions featureSize](v16, "featureSize")}];
          v103 = [self optionalObjectOfClass:v101 forKey:@"featureSize" inDictionary:infoCopy defaultValue:v102 error:error];
          -[PHAPrivateFederatedLearningRecipeOptions setFeatureSize:](v16, "setFeatureSize:", [v103 unsignedIntegerValue]);

          v104 = objc_opt_class();
          v105 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PHAPrivateFederatedLearningRecipeOptions labelSize](v16, "labelSize")}];
          v106 = [self optionalObjectOfClass:v104 forKey:@"labelSize" inDictionary:infoCopy defaultValue:v105 error:error];
          -[PHAPrivateFederatedLearningRecipeOptions setLabelSize:](v16, "setLabelSize:", [v106 unsignedIntegerValue]);

          v107 = objc_opt_class();
          biomeInputName = [(PHAPrivateFederatedLearningRecipeOptions *)v16 biomeInputName];
          v109 = [self optionalObjectOfClass:v107 forKey:@"biomeInputName" inDictionary:infoCopy defaultValue:biomeInputName error:error];
          [(PHAPrivateFederatedLearningRecipeOptions *)v16 setBiomeInputName:v109];

          v110 = objc_opt_class();
          biomeLabelName = [(PHAPrivateFederatedLearningRecipeOptions *)v16 biomeLabelName];
          v112 = [self optionalObjectOfClass:v110 forKey:@"biomeLabelName" inDictionary:infoCopy defaultValue:biomeLabelName error:error];
          [(PHAPrivateFederatedLearningRecipeOptions *)v16 setBiomeLabelName:v112];

          v113 = [PHAPrivateFederatedLearningRecipeOptions validateRecipeOptions:v16 error:error];
          if (v113)
          {
            v114 = [[PHAPrivateFederatedLearningRunner alloc] initWithRecipeOptions:v16];
          }

          else
          {
            v114 = 0;
          }

          managerCopy = v117;

          libraryCopy = v116;
        }
      }
    }
  }

  else
  {
    v114 = 0;
  }

  return v114;
}

@end