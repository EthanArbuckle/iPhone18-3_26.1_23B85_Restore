@interface PHAPrivateFederatedLearningRecipeDecoder
+ (id)castObject:(id)a3 withName:(id)a4 toClass:(Class)a5 error:(id *)a6;
+ (id)decodeRecipeUserInfo:(id)a3 attachmentURLs:(id)a4 photoLibrary:(id)a5 graphManager:(id)a6 decodingError:(id *)a7;
+ (id)decodingErrorWithMessage:(id)a3;
+ (id)objectOfClass:(Class)a3 forKey:(id)a4 inDictionary:(id)a5 error:(id *)a6;
+ (id)optionalObjectOfClass:(Class)a3 forKey:(id)a4 inDictionary:(id)a5 defaultValue:(id)a6 error:(id *)a7;
+ (id)optionalObjectOfClass:(Class)a3 forKey:(id)a4 inDictionary:(id)a5 error:(id *)a6;
@end

@implementation PHAPrivateFederatedLearningRecipeDecoder

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

  v8 = [v7 initWithDomain:@"com.apple.PhotoAnalysis.PHAPrivateFederatedLearningRecipeDecoder" code:10001 userInfo:v6];

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

+ (id)optionalObjectOfClass:(Class)a3 forKey:(id)a4 inDictionary:(id)a5 defaultValue:(id)a6 error:(id *)a7
{
  v12 = a4;
  v13 = a6;
  v14 = [a5 objectForKeyedSubscript:v12];
  v15 = v14;
  if (v13 && !v14)
  {
    v15 = v13;
LABEL_5:
    v16 = [a1 castObject:v15 withName:v12 toClass:a3 error:a7];

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

+ (id)decodeRecipeUserInfo:(id)a3 attachmentURLs:(id)a4 photoLibrary:(id)a5 graphManager:(id)a6 decodingError:(id *)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a4;
  v16 = objc_alloc_init(PHAPrivateFederatedLearningRecipeOptions);
  [(PHAPrivateFederatedLearningRecipeOptions *)v16 setAttachmentURLs:v15];

  objc_opt_class();
  v17 = [a1 objectOfClass:objc_opt_class() forKey:@"layersToTrain" inDictionary:v12 error:a7];
  [(PHAPrivateFederatedLearningRecipeOptions *)v16 setLayersToTrain:v17];

  v18 = objc_opt_class();
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PHAPrivateFederatedLearningRecipeOptions numberOfEpochs](v16, "numberOfEpochs")}];
  v20 = [a1 optionalObjectOfClass:v18 forKey:@"numberOfEpochs" inDictionary:v12 defaultValue:v19 error:a7];
  -[PHAPrivateFederatedLearningRecipeOptions setNumberOfEpochs:](v16, "setNumberOfEpochs:", [v20 unsignedIntegerValue]);

  v21 = objc_opt_class();
  v22 = MEMORY[0x277CCABB0];
  [(PHAPrivateFederatedLearningRecipeOptions *)v16 learningRate];
  v23 = [v22 numberWithDouble:?];
  v24 = [a1 optionalObjectOfClass:v21 forKey:@"learningRate" inDictionary:v12 defaultValue:v23 error:a7];
  [v24 doubleValue];
  [(PHAPrivateFederatedLearningRecipeOptions *)v16 setLearningRate:?];

  v25 = [a1 objectOfClass:objc_opt_class() forKey:@"modelInputName" inDictionary:v12 error:a7];
  [(PHAPrivateFederatedLearningRecipeOptions *)v16 setModelInputName:v25];

  v26 = [(PHAPrivateFederatedLearningRecipeOptions *)v16 modelInputName];

  if (v26 && ([a1 objectOfClass:objc_opt_class() forKey:@"modelOutputName" inDictionary:v12 error:a7], v27 = objc_claimAutoreleasedReturnValue(), -[PHAPrivateFederatedLearningRecipeOptions setModelOutputName:](v16, "setModelOutputName:", v27), v27, -[PHAPrivateFederatedLearningRecipeOptions modelOutputName](v16, "modelOutputName"), v28 = objc_claimAutoreleasedReturnValue(), v28, v28))
  {
    v29 = objc_opt_class();
    v30 = [(PHAPrivateFederatedLearningRecipeOptions *)v16 lossName];
    v31 = [a1 optionalObjectOfClass:v29 forKey:@"lossName" inDictionary:v12 defaultValue:v30 error:a7];
    [(PHAPrivateFederatedLearningRecipeOptions *)v16 setLossName:v31];

    v32 = objc_opt_class();
    v33 = [(PHAPrivateFederatedLearningRecipeOptions *)v16 optimizerName];
    v34 = [a1 optionalObjectOfClass:v32 forKey:@"optimizerName" inDictionary:v12 defaultValue:v33 error:a7];
    [(PHAPrivateFederatedLearningRecipeOptions *)v16 setOptimizerName:v34];

    v35 = objc_opt_class();
    v36 = [(PHAPrivateFederatedLearningRecipeOptions *)v16 trainingTask];
    v37 = [a1 optionalObjectOfClass:v35 forKey:@"trainingTask" inDictionary:v12 defaultValue:v36 error:a7];
    [(PHAPrivateFederatedLearningRecipeOptions *)v16 setTrainingTask:v37];

    v38 = objc_opt_class();
    v39 = [(PHAPrivateFederatedLearningRecipeOptions *)v16 fingerprintVersionName];
    v40 = [a1 optionalObjectOfClass:v38 forKey:@"fingerprintVersion" inDictionary:v12 defaultValue:v39 error:a7];
    [(PHAPrivateFederatedLearningRecipeOptions *)v16 setFingerprintVersionName:v40];

    v41 = objc_opt_class();
    v42 = [(PHAPrivateFederatedLearningRecipeOptions *)v16 datasetPolicyString];
    v43 = [a1 optionalObjectOfClass:v41 forKey:@"datasetPolicy" inDictionary:v12 defaultValue:v42 error:a7];
    [(PHAPrivateFederatedLearningRecipeOptions *)v16 setDatasetPolicyString:v43];

    v44 = objc_opt_class();
    v45 = [(PHAPrivateFederatedLearningRecipeOptions *)v16 labelPolicyString];
    v46 = [a1 optionalObjectOfClass:v44 forKey:@"labelPolicy" inDictionary:v12 defaultValue:v45 error:a7];
    [(PHAPrivateFederatedLearningRecipeOptions *)v16 setLabelPolicyString:v46];

    v47 = objc_opt_class();
    v48 = [(PHAPrivateFederatedLearningRecipeOptions *)v16 positivesDatasetName];
    v49 = [a1 optionalObjectOfClass:v47 forKey:@"positivesDatasetName" inDictionary:v12 defaultValue:v48 error:a7];
    [(PHAPrivateFederatedLearningRecipeOptions *)v16 setPositivesDatasetName:v49];

    v50 = objc_opt_class();
    v51 = [(PHAPrivateFederatedLearningRecipeOptions *)v16 positivesSubsetName];
    v52 = [a1 optionalObjectOfClass:v50 forKey:@"positivesSubsetName" inDictionary:v12 defaultValue:v51 error:a7];
    [(PHAPrivateFederatedLearningRecipeOptions *)v16 setPositivesSubsetName:v52];

    v53 = objc_opt_class();
    v54 = [(PHAPrivateFederatedLearningRecipeOptions *)v16 negativesDatasetName];
    v55 = [a1 optionalObjectOfClass:v53 forKey:@"negativesDatasetName" inDictionary:v12 defaultValue:v54 error:a7];
    [(PHAPrivateFederatedLearningRecipeOptions *)v16 setNegativesDatasetName:v55];

    v56 = objc_opt_class();
    v57 = [(PHAPrivateFederatedLearningRecipeOptions *)v16 negativesSubsetName];
    v58 = [a1 optionalObjectOfClass:v56 forKey:@"negativesSubsetName" inDictionary:v12 defaultValue:v57 error:a7];
    [(PHAPrivateFederatedLearningRecipeOptions *)v16 setNegativesSubsetName:v58];

    v59 = objc_opt_class();
    v60 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PHAPrivateFederatedLearningRecipeOptions totalNumberOfSamples](v16, "totalNumberOfSamples")}];
    v61 = [a1 optionalObjectOfClass:v59 forKey:@"totalNumberOfSamples" inDictionary:v12 defaultValue:v60 error:a7];
    -[PHAPrivateFederatedLearningRecipeOptions setTotalNumberOfSamples:](v16, "setTotalNumberOfSamples:", [v61 unsignedIntegerValue]);

    v62 = objc_opt_class();
    v63 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PHAPrivateFederatedLearningRecipeOptions oversamplingRate](v16, "oversamplingRate")}];
    v64 = [a1 optionalObjectOfClass:v62 forKey:@"oversamplingRate" inDictionary:v12 defaultValue:v63 error:a7];
    -[PHAPrivateFederatedLearningRecipeOptions setOversamplingRate:](v16, "setOversamplingRate:", [v64 unsignedIntegerValue]);

    [(PHAPrivateFederatedLearningRecipeOptions *)v16 setPhotoLibrary:v13];
    v117 = v14;
    [(PHAPrivateFederatedLearningRecipeOptions *)v16 setGraphManager:v14];
    v65 = [a1 optionalObjectOfClass:objc_opt_class() forKey:@"transformations" inDictionary:v12 error:a7];
    if (v65 && (v66 = objc_alloc_init(PHAPrivateFederatedLearningTransformersDecoder), [(PHAPrivateFederatedLearningTransformersDecoder *)v66 transformersForFeatureExtractorsFromDictionary:v65 error:a7], v67 = objc_claimAutoreleasedReturnValue(), [(PHAPrivateFederatedLearningRecipeOptions *)v16 setTransformersForFeatureExtractors:v67], v67, [(PHAPrivateFederatedLearningRecipeOptions *)v16 transformersForFeatureExtractors], v68 = objc_claimAutoreleasedReturnValue(), v68, v66, !v68))
    {
      v114 = 0;
      v14 = v117;
    }

    else
    {
      v116 = v13;
      v69 = [a1 optionalObjectOfClass:objc_opt_class() forKey:@"augmentations" inDictionary:v12 error:a7];
      if (v69 && (v70 = objc_alloc_init(PHAPrivateFederatedLearningAugmentersDecoder), [(PHAPrivateFederatedLearningAugmentersDecoder *)v70 augmentersFromArray:v69 error:a7], v71 = objc_claimAutoreleasedReturnValue(), [(PHAPrivateFederatedLearningRecipeOptions *)v16 setAugmenters:v71], v71, [(PHAPrivateFederatedLearningRecipeOptions *)v16 augmenters], v72 = objc_claimAutoreleasedReturnValue(), v72, v70, !v72))
      {
        v114 = 0;
        v13 = v116;
        v14 = v117;
      }

      else
      {
        v73 = [a1 optionalObjectOfClass:objc_opt_class() forKey:@"filters" inDictionary:v12 error:a7];
        if (v73 && (v74 = [PHAPrivateFederatedLearningFiltersDecoder alloc], [(PHAPrivateFederatedLearningRecipeOptions *)v16 fingerprintVersionName], v75 = objc_claimAutoreleasedReturnValue(), v76 = [(PHAPrivateFederatedLearningFiltersDecoder *)v74 initWithFingeprintVersionString:v75], v75, [(PHAPrivateFederatedLearningFiltersDecoder *)v76 filtersByDatasetNameFromDictionary:v73 error:a7], v77 = objc_claimAutoreleasedReturnValue(), [(PHAPrivateFederatedLearningRecipeOptions *)v16 setFiltersByDatasetName:v77], v77, [(PHAPrivateFederatedLearningRecipeOptions *)v16 filtersByDatasetName], v78 = objc_claimAutoreleasedReturnValue(), v78, v76, !v78))
        {
          v114 = 0;
          v13 = v116;
          v14 = v117;
        }

        else
        {
          v79 = objc_opt_class();
          v80 = [MEMORY[0x277CCABB0] numberWithBool:{-[PHAPrivateFederatedLearningRecipeOptions shouldValidateModel](v16, "shouldValidateModel")}];
          v81 = [a1 optionalObjectOfClass:v79 forKey:@"validateModel" inDictionary:v12 defaultValue:v80 error:a7];
          -[PHAPrivateFederatedLearningRecipeOptions setShouldValidateModel:](v16, "setShouldValidateModel:", [v81 BOOLValue]);

          v82 = objc_opt_class();
          v83 = MEMORY[0x277CCABB0];
          [(PHAPrivateFederatedLearningRecipeOptions *)v16 minProcessedRate];
          v84 = [v83 numberWithDouble:?];
          v85 = [a1 optionalObjectOfClass:v82 forKey:@"minProcessedRate" inDictionary:v12 defaultValue:v84 error:a7];
          [v85 doubleValue];
          [(PHAPrivateFederatedLearningRecipeOptions *)v16 setMinProcessedRate:?];

          v86 = objc_opt_class();
          v87 = [(PHAPrivateFederatedLearningRecipeOptions *)v16 datasetSource];
          v88 = [a1 optionalObjectOfClass:v86 forKey:@"datasetSource" inDictionary:v12 defaultValue:v87 error:a7];
          [(PHAPrivateFederatedLearningRecipeOptions *)v16 setDatasetSource:v88];

          v89 = objc_opt_class();
          v90 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PHAPrivateFederatedLearningRecipeOptions numberOfClasses](v16, "numberOfClasses")}];
          v91 = [a1 optionalObjectOfClass:v89 forKey:@"numberOfClasses" inDictionary:v12 defaultValue:v90 error:a7];
          -[PHAPrivateFederatedLearningRecipeOptions setNumberOfClasses:](v16, "setNumberOfClasses:", [v91 unsignedIntegerValue]);

          v92 = objc_opt_class();
          v93 = [(PHAPrivateFederatedLearningRecipeOptions *)v16 learningFramework];
          v94 = [a1 optionalObjectOfClass:v92 forKey:@"learningFramework" inDictionary:v12 defaultValue:v93 error:a7];
          [(PHAPrivateFederatedLearningRecipeOptions *)v16 setLearningFramework:v94];

          v95 = objc_opt_class();
          v96 = [(PHAPrivateFederatedLearningRecipeOptions *)v16 evaluationMetricNames];
          v97 = [a1 optionalObjectOfClass:v95 forKey:@"evaluationMetricNames" inDictionary:v12 defaultValue:v96 error:a7];
          [(PHAPrivateFederatedLearningRecipeOptions *)v16 setEvaluationMetricNames:v97];

          v98 = objc_opt_class();
          v99 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PHAPrivateFederatedLearningRecipeOptions batchSize](v16, "batchSize")}];
          v100 = [a1 optionalObjectOfClass:v98 forKey:@"batchSize" inDictionary:v12 defaultValue:v99 error:a7];
          -[PHAPrivateFederatedLearningRecipeOptions setBatchSize:](v16, "setBatchSize:", [v100 unsignedIntegerValue]);

          v101 = objc_opt_class();
          v102 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PHAPrivateFederatedLearningRecipeOptions featureSize](v16, "featureSize")}];
          v103 = [a1 optionalObjectOfClass:v101 forKey:@"featureSize" inDictionary:v12 defaultValue:v102 error:a7];
          -[PHAPrivateFederatedLearningRecipeOptions setFeatureSize:](v16, "setFeatureSize:", [v103 unsignedIntegerValue]);

          v104 = objc_opt_class();
          v105 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PHAPrivateFederatedLearningRecipeOptions labelSize](v16, "labelSize")}];
          v106 = [a1 optionalObjectOfClass:v104 forKey:@"labelSize" inDictionary:v12 defaultValue:v105 error:a7];
          -[PHAPrivateFederatedLearningRecipeOptions setLabelSize:](v16, "setLabelSize:", [v106 unsignedIntegerValue]);

          v107 = objc_opt_class();
          v108 = [(PHAPrivateFederatedLearningRecipeOptions *)v16 biomeInputName];
          v109 = [a1 optionalObjectOfClass:v107 forKey:@"biomeInputName" inDictionary:v12 defaultValue:v108 error:a7];
          [(PHAPrivateFederatedLearningRecipeOptions *)v16 setBiomeInputName:v109];

          v110 = objc_opt_class();
          v111 = [(PHAPrivateFederatedLearningRecipeOptions *)v16 biomeLabelName];
          v112 = [a1 optionalObjectOfClass:v110 forKey:@"biomeLabelName" inDictionary:v12 defaultValue:v111 error:a7];
          [(PHAPrivateFederatedLearningRecipeOptions *)v16 setBiomeLabelName:v112];

          v113 = [PHAPrivateFederatedLearningRecipeOptions validateRecipeOptions:v16 error:a7];
          if (v113)
          {
            v114 = [[PHAPrivateFederatedLearningRunner alloc] initWithRecipeOptions:v16];
          }

          else
          {
            v114 = 0;
          }

          v14 = v117;

          v13 = v116;
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