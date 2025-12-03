@interface PHAPrivateFederatedLearningRecipeOptions
+ (id)_generateErrorWithErrorCode:(int64_t)code message:(id)message underlyingError:(id)error;
+ (id)validateRecipeOptions:(id)options error:(id *)error;
+ (int64_t)datasetPolicyForPolicyName:(id)name;
+ (int64_t)labelPolicyForLabelPolicyName:(id)name;
- (PHAPrivateFederatedLearningRecipeOptions)init;
@end

@implementation PHAPrivateFederatedLearningRecipeOptions

- (PHAPrivateFederatedLearningRecipeOptions)init
{
  v8.receiver = self;
  v8.super_class = PHAPrivateFederatedLearningRecipeOptions;
  v2 = [(PHAPrivateFederatedLearningRecipeOptions *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x277CBEBF8];
    [(PHAPrivateFederatedLearningRecipeOptions *)v2 setAttachmentURLs:MEMORY[0x277CBEBF8]];
    [(PHAPrivateFederatedLearningRecipeOptions *)v3 setNumberOfEpochs:PHAPrivateFederatedLearningRecipeOptionsDefaultNumberOfEpochs];
    v5 = objc_alloc_init(MEMORY[0x277CBEA60]);
    [(PHAPrivateFederatedLearningRecipeOptions *)v3 setLayersToTrain:v5];

    [(PHAPrivateFederatedLearningRecipeOptions *)v3 setLearningRate:PHAPrivateFederatedLearningRecipeOptionsDefaultNumberOfEpochs];
    [(PHAPrivateFederatedLearningRecipeOptions *)v3 setModelInputName:PHAPrivateFederatedLearningRecipeOptionsDefaultModelInputName];
    [(PHAPrivateFederatedLearningRecipeOptions *)v3 setModelOutputName:PHAPrivateFederatedLearningRecipeOptionsDefaultModelOutputName];
    [(PHAPrivateFederatedLearningRecipeOptions *)v3 setLabelName:PHAPrivateFederatedLearningDefaultModelLabelName];
    [(PHAPrivateFederatedLearningRecipeOptions *)v3 setLossName:PHAPrivateFederatedLearningRecipeOptionsDefaultLossName];
    [(PHAPrivateFederatedLearningRecipeOptions *)v3 setOptimizerName:PHAPrivateFederatedLearningRecipeOptionsDefaultOptimizerName];
    [(PHAPrivateFederatedLearningRecipeOptions *)v3 setTrainingTask:PHAPrivateFederatedLearningRecipeOptionsDefaultTrainingTask];
    [(PHAPrivateFederatedLearningRecipeOptions *)v3 setFingerprintVersionName:PHAPrivateFederatedLearningRecipeOptionsDefaultFingerprintVersionName];
    [(PHAPrivateFederatedLearningRecipeOptions *)v3 setDatasetPolicyString:@"balanced"];
    [(PHAPrivateFederatedLearningRecipeOptions *)v3 setLabelPolicyString:@"indexed"];
    [(PHAPrivateFederatedLearningRecipeOptions *)v3 setPositivesDatasetName:0];
    [(PHAPrivateFederatedLearningRecipeOptions *)v3 setPositivesSubsetName:0];
    [(PHAPrivateFederatedLearningRecipeOptions *)v3 setPositivesDatasetType:0];
    [(PHAPrivateFederatedLearningRecipeOptions *)v3 setNegativesDatasetName:PHAPrivateFederatedLearningRecipeOptionsLearningDefaultNegativesDatasetName];
    [(PHAPrivateFederatedLearningRecipeOptions *)v3 setNegativesSubsetName:0];
    [(PHAPrivateFederatedLearningRecipeOptions *)v3 setNegativesDatasetType:0];
    [(PHAPrivateFederatedLearningRecipeOptions *)v3 setTotalNumberOfSamples:PHAPrivateFederatedLearningRecipeOptionsDefaultTotalNumberOfSamples];
    [(PHAPrivateFederatedLearningRecipeOptions *)v3 setOversamplingRate:PHAPrivateFederatedLearningRecipeOptionsDefaultOversamplingRate];
    [(PHAPrivateFederatedLearningRecipeOptions *)v3 setPhotoLibrary:0];
    [(PHAPrivateFederatedLearningRecipeOptions *)v3 setGraphManager:0];
    [(PHAPrivateFederatedLearningRecipeOptions *)v3 setShouldValidateModel:1];
    [(PHAPrivateFederatedLearningRecipeOptions *)v3 setMinProcessedRate:*&PHAPrivateFederatedLearningRecipeOptionsDefaultMinProcessRate];
    v6 = objc_alloc_init(MEMORY[0x277D3B8F0]);
    [(PHAPrivateFederatedLearningRecipeOptions *)v3 setTransformersForFeatureExtractors:v6];

    [(PHAPrivateFederatedLearningRecipeOptions *)v3 setAugmenters:v4];
    [(PHAPrivateFederatedLearningRecipeOptions *)v3 setFiltersByDatasetName:MEMORY[0x277CBEC10]];
    [(PHAPrivateFederatedLearningRecipeOptions *)v3 setDatasetSource:PHAPrivateFederatedLearningRecipeOptionsDefaultDatasetSource];
    [(PHAPrivateFederatedLearningRecipeOptions *)v3 setNumberOfClasses:2];
    [(PHAPrivateFederatedLearningRecipeOptions *)v3 setLearningFramework:PHAPrivateFederatedLearningRecipeOptionsLearningDefaultFramework];
    [(PHAPrivateFederatedLearningRecipeOptions *)v3 setEvaluationMetricNames:v4];
    [(PHAPrivateFederatedLearningRecipeOptions *)v3 setBatchSize:PHAPrivateFederatedLearningDefaultBatchSize];
    [(PHAPrivateFederatedLearningRecipeOptions *)v3 setFeatureSize:PHAPrivateFederatedLearningDefaultFeatureSize];
    [(PHAPrivateFederatedLearningRecipeOptions *)v3 setLabelSize:PHAPrivateFederatedLearningDefaultLabelSize];
    [(PHAPrivateFederatedLearningRecipeOptions *)v3 setBiomeInputName:PHAPrivateFederatedLearningDefaultBiomeInputName];
    [(PHAPrivateFederatedLearningRecipeOptions *)v3 setBiomeLabelName:PHAPrivateFederatedLearningDefaultBiomeLabelName];
  }

  return v3;
}

+ (id)_generateErrorWithErrorCode:(int64_t)code message:(id)message underlyingError:(id)error
{
  errorCopy = error;
  v8 = MEMORY[0x277CBEB38];
  messageCopy = message;
  v10 = objc_alloc_init(v8);
  [v10 setObject:messageCopy forKey:*MEMORY[0x277CCA450]];

  if (errorCopy)
  {
    [v10 setObject:errorCopy forKey:*MEMORY[0x277CCA7E8]];
  }

  v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.PhotoAnalysis.PHAPrivateFederatedLearningRecipeOptions" code:code userInfo:v10];

  return v11;
}

+ (id)validateRecipeOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v7 = MEMORY[0x277D3B908];
  fingerprintVersionName = [optionsCopy fingerprintVersionName];
  [optionsCopy setFingerprintVersion:{objc_msgSend(v7, "fingerprintVersionForName:", fingerprintVersionName)}];

  if (![optionsCopy fingerprintVersion])
  {
    if (!error)
    {
      goto LABEL_17;
    }

    v15 = MEMORY[0x277CCACA8];
    fingerprintVersionName2 = [optionsCopy fingerprintVersionName];
    v17 = [v15 stringWithFormat:@"Unknown fingerprint version name(%@)", fingerprintVersionName2];
    selfCopy3 = self;
    v19 = 1;
LABEL_16:
    *error = [selfCopy3 _generateErrorWithErrorCode:v19 message:v17 underlyingError:0];

    goto LABEL_17;
  }

  datasetPolicyString = [optionsCopy datasetPolicyString];
  [optionsCopy setDatasetPolicy:{+[PHAPrivateFederatedLearningRecipeOptions datasetPolicyForPolicyName:](PHAPrivateFederatedLearningRecipeOptions, "datasetPolicyForPolicyName:", datasetPolicyString)}];

  if ([optionsCopy datasetPolicy] == -1)
  {
    if (!error)
    {
      goto LABEL_17;
    }

    v20 = MEMORY[0x277CCACA8];
    fingerprintVersionName2 = [optionsCopy datasetPolicyString];
    v17 = [v20 stringWithFormat:@"Unknown dataset policy(%@)", fingerprintVersionName2];
    selfCopy3 = self;
    v19 = 2;
    goto LABEL_16;
  }

  labelPolicyString = [optionsCopy labelPolicyString];
  [optionsCopy setLabelPolicy:{+[PHAPrivateFederatedLearningRecipeOptions labelPolicyForLabelPolicyName:](PHAPrivateFederatedLearningRecipeOptions, "labelPolicyForLabelPolicyName:", labelPolicyString)}];

  if ([optionsCopy labelPolicy] == -1)
  {
    if (!error)
    {
      goto LABEL_17;
    }

    v21 = MEMORY[0x277CCACA8];
    fingerprintVersionName2 = [optionsCopy labelPolicyString];
    v17 = [v21 stringWithFormat:@"Unknown label policy(%@)", fingerprintVersionName2];
    selfCopy3 = self;
    v19 = 3;
    goto LABEL_16;
  }

  positivesDatasetName = [optionsCopy positivesDatasetName];

  if (positivesDatasetName)
  {
    if (([optionsCopy totalNumberOfSamples] & 1) != 0 && (!objc_msgSend(optionsCopy, "datasetPolicy") || objc_msgSend(optionsCopy, "datasetPolicy") == 1))
    {
      if (error)
      {
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Value for totalNumberOfSamples (%lu) can't be odd when generator policy is 'balanced'", objc_msgSend(optionsCopy, "totalNumberOfSamples")];
        selfCopy5 = self;
        v14 = 5;
LABEL_29:
        *error = [selfCopy5 _generateErrorWithErrorCode:v14 message:v12 underlyingError:0];

        goto LABEL_17;
      }

      goto LABEL_17;
    }

    if (![optionsCopy oversamplingRate])
    {
      if (error)
      {
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Value for oversamplingRate (%lu) can't be <= 0", objc_msgSend(optionsCopy, "oversamplingRate")];
        selfCopy5 = self;
        v14 = 6;
        goto LABEL_29;
      }

LABEL_17:
      v22 = 0;
      goto LABEL_18;
    }

    photoLibrary = [optionsCopy photoLibrary];

    if (photoLibrary)
    {
      graphManager = [optionsCopy graphManager];

      if (graphManager)
      {
        v22 = optionsCopy;
        goto LABEL_18;
      }

      if (!error)
      {
        goto LABEL_17;
      }

      v26 = @"Graph manager is nil";
    }

    else
    {
      if (!error)
      {
        goto LABEL_17;
      }

      v26 = @"Photo library is nil";
    }

    selfCopy7 = self;
    v28 = 7;
  }

  else
  {
    if (!error)
    {
      goto LABEL_17;
    }

    v26 = @"Positives dataset name is nil";
    selfCopy7 = self;
    v28 = 4;
  }

  [selfCopy7 _generateErrorWithErrorCode:v28 message:v26 underlyingError:0];
  *error = v22 = 0;
LABEL_18:

  return v22;
}

+ (int64_t)labelPolicyForLabelPolicyName:(id)name
{
  nameCopy = name;
  v4 = nameCopy;
  if (nameCopy)
  {
    if ([nameCopy isEqualToString:@"indexed"])
    {
      v5 = 0;
    }

    else if ([v4 isEqualToString:@"one-hot"])
    {
      v5 = 1;
    }

    else
    {
      v5 = -1;
    }
  }

  else
  {
    v5 = -1;
  }

  return v5;
}

+ (int64_t)datasetPolicyForPolicyName:(id)name
{
  nameCopy = name;
  v4 = nameCopy;
  if (nameCopy)
  {
    if ([nameCopy isEqualToString:@"balanced"])
    {
      v5 = 0;
    }

    else if ([v4 isEqualToString:@"balanced-strict"])
    {
      v5 = 1;
    }

    else if ([v4 isEqualToString:@"unbalanced"])
    {
      v5 = 2;
    }

    else
    {
      v5 = -1;
    }
  }

  else
  {
    v5 = -1;
  }

  return v5;
}

@end