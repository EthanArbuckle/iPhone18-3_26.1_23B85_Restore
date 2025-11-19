@interface PHAPrivateFederatedLearningRecipeOptions
+ (id)_generateErrorWithErrorCode:(int64_t)a3 message:(id)a4 underlyingError:(id)a5;
+ (id)validateRecipeOptions:(id)a3 error:(id *)a4;
+ (int64_t)datasetPolicyForPolicyName:(id)a3;
+ (int64_t)labelPolicyForLabelPolicyName:(id)a3;
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

+ (id)_generateErrorWithErrorCode:(int64_t)a3 message:(id)a4 underlyingError:(id)a5
{
  v7 = a5;
  v8 = MEMORY[0x277CBEB38];
  v9 = a4;
  v10 = objc_alloc_init(v8);
  [v10 setObject:v9 forKey:*MEMORY[0x277CCA450]];

  if (v7)
  {
    [v10 setObject:v7 forKey:*MEMORY[0x277CCA7E8]];
  }

  v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.PhotoAnalysis.PHAPrivateFederatedLearningRecipeOptions" code:a3 userInfo:v10];

  return v11;
}

+ (id)validateRecipeOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = MEMORY[0x277D3B908];
  v8 = [v6 fingerprintVersionName];
  [v6 setFingerprintVersion:{objc_msgSend(v7, "fingerprintVersionForName:", v8)}];

  if (![v6 fingerprintVersion])
  {
    if (!a4)
    {
      goto LABEL_17;
    }

    v15 = MEMORY[0x277CCACA8];
    v16 = [v6 fingerprintVersionName];
    v17 = [v15 stringWithFormat:@"Unknown fingerprint version name(%@)", v16];
    v18 = a1;
    v19 = 1;
LABEL_16:
    *a4 = [v18 _generateErrorWithErrorCode:v19 message:v17 underlyingError:0];

    goto LABEL_17;
  }

  v9 = [v6 datasetPolicyString];
  [v6 setDatasetPolicy:{+[PHAPrivateFederatedLearningRecipeOptions datasetPolicyForPolicyName:](PHAPrivateFederatedLearningRecipeOptions, "datasetPolicyForPolicyName:", v9)}];

  if ([v6 datasetPolicy] == -1)
  {
    if (!a4)
    {
      goto LABEL_17;
    }

    v20 = MEMORY[0x277CCACA8];
    v16 = [v6 datasetPolicyString];
    v17 = [v20 stringWithFormat:@"Unknown dataset policy(%@)", v16];
    v18 = a1;
    v19 = 2;
    goto LABEL_16;
  }

  v10 = [v6 labelPolicyString];
  [v6 setLabelPolicy:{+[PHAPrivateFederatedLearningRecipeOptions labelPolicyForLabelPolicyName:](PHAPrivateFederatedLearningRecipeOptions, "labelPolicyForLabelPolicyName:", v10)}];

  if ([v6 labelPolicy] == -1)
  {
    if (!a4)
    {
      goto LABEL_17;
    }

    v21 = MEMORY[0x277CCACA8];
    v16 = [v6 labelPolicyString];
    v17 = [v21 stringWithFormat:@"Unknown label policy(%@)", v16];
    v18 = a1;
    v19 = 3;
    goto LABEL_16;
  }

  v11 = [v6 positivesDatasetName];

  if (v11)
  {
    if (([v6 totalNumberOfSamples] & 1) != 0 && (!objc_msgSend(v6, "datasetPolicy") || objc_msgSend(v6, "datasetPolicy") == 1))
    {
      if (a4)
      {
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Value for totalNumberOfSamples (%lu) can't be odd when generator policy is 'balanced'", objc_msgSend(v6, "totalNumberOfSamples")];
        v13 = a1;
        v14 = 5;
LABEL_29:
        *a4 = [v13 _generateErrorWithErrorCode:v14 message:v12 underlyingError:0];

        goto LABEL_17;
      }

      goto LABEL_17;
    }

    if (![v6 oversamplingRate])
    {
      if (a4)
      {
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Value for oversamplingRate (%lu) can't be <= 0", objc_msgSend(v6, "oversamplingRate")];
        v13 = a1;
        v14 = 6;
        goto LABEL_29;
      }

LABEL_17:
      v22 = 0;
      goto LABEL_18;
    }

    v24 = [v6 photoLibrary];

    if (v24)
    {
      v25 = [v6 graphManager];

      if (v25)
      {
        v22 = v6;
        goto LABEL_18;
      }

      if (!a4)
      {
        goto LABEL_17;
      }

      v26 = @"Graph manager is nil";
    }

    else
    {
      if (!a4)
      {
        goto LABEL_17;
      }

      v26 = @"Photo library is nil";
    }

    v27 = a1;
    v28 = 7;
  }

  else
  {
    if (!a4)
    {
      goto LABEL_17;
    }

    v26 = @"Positives dataset name is nil";
    v27 = a1;
    v28 = 4;
  }

  [v27 _generateErrorWithErrorCode:v28 message:v26 underlyingError:0];
  *a4 = v22 = 0;
LABEL_18:

  return v22;
}

+ (int64_t)labelPolicyForLabelPolicyName:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 isEqualToString:@"indexed"])
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

+ (int64_t)datasetPolicyForPolicyName:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 isEqualToString:@"balanced"])
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