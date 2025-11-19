@interface PHAPrivateFederatedLearningRunner
+ (id)_firstAttachmentURLWithSuffixOfName:(id)a3 attachments:(id)a4 expectedDirectory:(BOOL)a5 error:(id *)a6;
+ (id)_generateErrorWithErrorCode:(int64_t)a3 message:(id)a4 underlyingError:(id)a5;
+ (id)_mediaAnalysisImageProgressForPhotoLibrary:(id)a3 error:(id *)a4;
+ (id)_prepareDatasetWithOptions:(id)a3 error:(id *)a4;
+ (id)datasetBuilderForOptions:(id)a3 error:(id *)a4;
- (BOOL)_isValidInputDimensionForCoreMLModel:(id)a3 error:(id *)a4;
- (PHAPrivateFederatedLearningRunner)initWithRecipeOptions:(id)a3;
- (id)_prepareTrainingDataForBiomeStream:(id)a3 error:(id *)a4;
- (id)runCoreMLModelWithError:(id *)a3;
- (id)runWithError:(id *)a3;
@end

@implementation PHAPrivateFederatedLearningRunner

- (id)runCoreMLModelWithError:(id *)a3
{
  v5 = [(PHAPrivateFederatedLearningRunner *)self options];
  v6 = [v5 attachmentURLs];
  v56 = 0;
  v7 = [PHAPrivateFederatedLearningRunner _firstAttachmentURLWithSuffixOfName:@".mil" attachments:v6 expectedDirectory:0 error:&v56];
  v8 = v56;

  v9 = [v7 URLByDeletingLastPathComponent];
  if (v9)
  {
    v55 = 0;
    v10 = [(PHAPrivateFederatedLearningRunner *)self _isValidInputDimensionForCoreMLModel:v9 error:&v55];
    v11 = v55;
    v12 = v11;
    if (!v10)
    {
      if (a3)
      {
        v34 = v11;
        v33 = 0;
        *a3 = v12;
      }

      else
      {
        v33 = 0;
      }

      goto LABEL_24;
    }

    v13 = objc_alloc_init(MEMORY[0x277CBFF38]);
    [v13 setComputeUnits:0];
    v54 = 0;
    v51 = v13;
    v14 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:v9 configuration:v13 error:&v54];
    v15 = v54;
    v16 = v15;
    if (!v14)
    {
      if (!a3)
      {
        v33 = 0;
        goto LABEL_23;
      }

      v50 = v15;
      v35 = MEMORY[0x277CCACA8];
      v36 = [v9 absoluteString];
      v37 = [v35 stringWithFormat:@"Error while constructing the model at URL %@", v36];
      v16 = v50;
      [PHAPrivateFederatedLearningRunner _generateErrorWithErrorCode:15 message:v37 underlyingError:v50];
      *a3 = v33 = 0;
LABEL_22:

LABEL_23:
      goto LABEL_24;
    }

    v49 = v15;
    v47 = v8;
    v17 = objc_alloc(MEMORY[0x277CBFF70]);
    v46 = v14;
    v18 = [v14 program];
    v19 = [(PHAPrivateFederatedLearningRunner *)self options];
    [v19 learningRate];
    v53 = 0;
    v20 = [v17 initWithProgram:v18 learningRate:&v53 error:?];
    v45 = v53;

    v48 = v20;
    if (v20)
    {
      v42 = v12;
      v21 = [(PHAPrivateFederatedLearningRunner *)self options];
      v22 = [v21 positivesDatasetName];
      v52 = 0;
      v23 = [(PHAPrivateFederatedLearningRunner *)self _prepareTrainingDataForBiomeStream:v22 error:&v52];
      v24 = v52;

      v25 = [v23 array];
      v26 = [v25 count];

      v43 = v23;
      v44 = v24;
      if (v26)
      {
        v27 = MEMORY[0x277CBEB98];
        v28 = [(PHAPrivateFederatedLearningRunner *)self options];
        v29 = [v28 evaluationMetricNames];
        v30 = [v27 setWithArray:v29];

        v31 = [[PHAPrivateFederatedLearningCoreMLModelTrainer alloc] initWithTrainingData:v23 programTrainer:v48 evaluationMetricNames:v30];
        v32 = [(PHAPrivateFederatedLearningRunner *)self options];
        v33 = -[PHAPrivateFederatedLearningCoreMLModelTrainer trainForNumberOfEpochs:error:](v31, "trainForNumberOfEpochs:error:", [v32 numberOfEpochs], a3);
      }

      else
      {
        if (!a3)
        {
          v33 = 0;
          v36 = v45;
          v14 = v46;
          v37 = v48;
          v16 = v49;
          v12 = v42;
          v40 = v43;
          goto LABEL_21;
        }

        v39 = MEMORY[0x277CCACA8];
        v30 = [(PHAPrivateFederatedLearningRunner *)self options];
        v31 = [v30 positivesDatasetName];
        v32 = [v39 stringWithFormat:@"Prepare dataset from Biome stream %@ failed", v31];
        [PHAPrivateFederatedLearningRunner _generateErrorWithErrorCode:17 message:v32 underlyingError:v24];
        *a3 = v33 = 0;
      }

      v12 = v42;

      v36 = v45;
      v14 = v46;
    }

    else
    {
      if (!a3)
      {
        v37 = 0;
        v33 = 0;
        v14 = v46;
        v8 = v47;
        v16 = v49;
        v36 = v45;
        goto LABEL_22;
      }

      v38 = MEMORY[0x277CCACA8];
      v44 = [(PHAPrivateFederatedLearningRunner *)self options];
      v43 = [v44 trainingTask];
      v30 = [v38 stringWithFormat:@"Model trainer returned nil for data provider of training task %@ and model file url %@", v43, v9];
      v36 = v45;
      [PHAPrivateFederatedLearningRunner _generateErrorWithErrorCode:7 message:v30 underlyingError:v45];
      *a3 = v33 = 0;
      v14 = v46;
    }

    v37 = v48;

    v16 = v49;
    v40 = v43;
LABEL_21:

    v8 = v47;
    goto LABEL_22;
  }

  if (!a3)
  {
    v33 = 0;
    goto LABEL_25;
  }

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid modelURL"];
  [PHAPrivateFederatedLearningRunner _generateErrorWithErrorCode:14 message:v12 underlyingError:v8];
  *a3 = v33 = 0;
LABEL_24:

LABEL_25:

  return v33;
}

- (id)runWithError:(id *)a3
{
  v101 = *MEMORY[0x277D85DE8];
  v5 = [(PHAPrivateFederatedLearningRunner *)self options];
  v6 = [v5 photoLibrary];
  v98 = 0;
  v7 = [PHAPrivateFederatedLearningRunner _mediaAnalysisImageProgressForPhotoLibrary:v6 error:&v98];
  v8 = v98;

  if (v7)
  {
    [v7 floatValue];
    v10 = v9;
    v11 = [(PHAPrivateFederatedLearningRunner *)self options];
    [v11 minProcessedRate];
    v13 = v12;

    if (v13 > v10)
    {
      if (!a3)
      {
        v18 = 0;
        goto LABEL_43;
      }

      v14 = MEMORY[0x277CCACA8];
      v15 = [(PHAPrivateFederatedLearningRunner *)self options];
      [v15 minProcessedRate];
      v17 = [v14 stringWithFormat:@"Photo Library does not have enough processed assets (%@ < %f).", v7, v16];
      [PHAPrivateFederatedLearningRunner _generateErrorWithErrorCode:11 message:v17 underlyingError:0];
      *a3 = v18 = 0;
      goto LABEL_41;
    }
  }

  else
  {
    if (__PXLog_genericOnceToken != -1)
    {
      dispatch_once(&__PXLog_genericOnceToken, &__block_literal_global_10096);
    }

    v19 = __PXLog_genericOSLog;
    if (os_log_type_enabled(__PXLog_genericOSLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v100 = v8;
      _os_log_error_impl(&dword_22FA28000, v19, OS_LOG_TYPE_ERROR, "Media analysis progress query returned an error: %@.", buf, 0xCu);
    }
  }

  v20 = [(PHAPrivateFederatedLearningRunner *)self options];
  v21 = [v20 attachmentURLs];
  v15 = [PHAPrivateFederatedLearningRunner _firstAttachmentURLWithSuffixOfName:@".mlmodel" attachments:v21 error:a3];

  if (v15)
  {
    v97 = 0;
    v22 = [MEMORY[0x277CBFF20] compileModelAtURL:v15 error:&v97];
    v17 = v97;
    if (!v22)
    {
      if (!a3)
      {
        v18 = 0;
LABEL_40:

LABEL_41:
        goto LABEL_42;
      }

      v62 = MEMORY[0x277CCACA8];
      v24 = [0 absoluteString];
      v63 = [v62 stringWithFormat:@"Error while compiling the model at URL %@", v24];
      [PHAPrivateFederatedLearningRunner _generateErrorWithErrorCode:8 message:v63 underlyingError:v17];
      *a3 = v18 = 0;
LABEL_39:

      goto LABEL_40;
    }

    v23 = [@"model.espresso" stringByAppendingPathExtension:@"net"];
    v24 = [v22 URLByAppendingPathComponent:v23];

    v94 = [v22 URLByAppendingPathComponent:@"model.espresso.shape"];
    v25 = [(PHAPrivateFederatedLearningRunner *)self options];
    v26 = [v25 shouldValidateModel];

    if (v26)
    {
      v71 = v15;
      v79 = v7;
      v86 = v22;
      v88 = a3;
      v90 = v17;
      v92 = v8;
      v83 = v24;
      v27 = [[PHAPrivateFederatedLearningModelValidator alloc] initWithEspressoModelURL:v24 espressoModelShapeURL:v94];
      v76 = [(PHAPrivateFederatedLearningRunner *)self options];
      v28 = [v76 fingerprintVersionName];
      v73 = [(PHAPrivateFederatedLearningRunner *)self options];
      v29 = [v73 modelInputName];
      v69 = [(PHAPrivateFederatedLearningRunner *)self options];
      v30 = [v69 modelOutputName];
      v67 = [(PHAPrivateFederatedLearningRunner *)self options];
      v31 = [v67 labelPolicyString];
      v32 = [(PHAPrivateFederatedLearningRunner *)self options];
      v33 = [v32 lossName];
      v34 = [(PHAPrivateFederatedLearningRunner *)self options];
      v35 = [v34 layersToTrain];
      v96 = 0;
      v81 = v27;
      v66 = [(PHAPrivateFederatedLearningModelValidator *)v27 isValidWithFingerprintVersionName:v28 modelInputName:v29 modelOutputName:v30 labelName:@"label" labelPolicyName:v31 lossName:v33 layersToTrain:v35 error:&v96];
      v36 = v96;

      if (!v66)
      {
        if (v88)
        {
          *v88 = [PHAPrivateFederatedLearningRunner _generateErrorWithErrorCode:9 message:@"Error validating model" underlyingError:v36];
        }

        v18 = 0;
        v17 = v90;
        v8 = v92;
        v24 = v83;
        v22 = v86;
        v63 = v94;
        v38 = v36;
        v7 = v79;
        v15 = v71;
        goto LABEL_38;
      }

      v17 = v90;
      v8 = v92;
      v22 = v86;
      a3 = v88;
      v24 = v83;
      v7 = v79;
      v15 = v71;
    }

    v37 = [(PHAPrivateFederatedLearningRunner *)self options];
    v38 = [PHAPrivateFederatedLearningRunner _prepareDatasetWithOptions:v37 error:a3];

    if (!v38)
    {
      goto LABEL_30;
    }

    if ([v38 numberOfDataPoints])
    {
      v87 = v22;
      v89 = a3;
      v91 = v17;
      v93 = v8;
      v82 = v38;
      v84 = [PHAPrivateFederatedLearningModelTrainer alloc];
      v39 = MEMORY[0x277CCABB0];
      v77 = [(PHAPrivateFederatedLearningRunner *)self options];
      [v77 learningRate];
      v70 = [v39 numberWithDouble:?];
      v74 = [(PHAPrivateFederatedLearningRunner *)self options];
      v68 = [v74 modelInputName];
      v72 = [(PHAPrivateFederatedLearningRunner *)self options];
      v40 = [v72 modelOutputName];
      v41 = [(PHAPrivateFederatedLearningRunner *)self options];
      v42 = [v41 lossName];
      v43 = [(PHAPrivateFederatedLearningRunner *)self options];
      v44 = [v43 optimizerName];
      v95 = 0;
      v45 = v84;
      v85 = v24;
      v46 = [(PHAPrivateFederatedLearningModelTrainer *)v45 initWithTrainingData:v82 espressoFileURL:v24 learningRate:v70 modelInputName:v68 modelOutputName:v40 lossName:v42 optimizerName:v44 error:&v95];
      v80 = v95;

      if (v46)
      {
        v47 = [(PHAPrivateFederatedLearningRunner *)self options];
        v48 = [v47 numberOfEpochs];
        v49 = [(PHAPrivateFederatedLearningRunner *)self options];
        v50 = [v49 layersToTrain];
        v78 = v46;
        v51 = [(PHAPrivateFederatedLearningModelTrainer *)v46 trainForNumberOfEpochs:v48 layersToTrain:v50 verbose:0 error:v89];

        if (!v51 || ([v51 parameterDeltas], v52 = objc_claimAutoreleasedReturnValue(), v52, !v52))
        {
          v18 = 0;
          v17 = v91;
          v8 = v93;
          v63 = v94;
          v61 = v80;
LABEL_36:

          v38 = v82;
          v46 = v78;
LABEL_37:

          v22 = v87;
          goto LABEL_38;
        }

        v53 = objc_alloc_init(PHAPrivateFederatedLearningPackager);
        v54 = [v51 parameterDeltas];
        v75 = v53;
        v55 = [(PHAPrivateFederatedLearningPackager *)v53 dataPackageFromTrainingResults:v54 error:v89];

        v56 = [PHAPrivateFederatedLearningRunnerResponse alloc];
        v57 = [(PHAPrivateFederatedLearningRunner *)self options];
        v58 = [v57 layersToTrain];
        v59 = [v51 trainingLossesPerEpoch];
        v60 = [v51 trainingAccuraciesPerEpoch];
        v18 = [(PHAPrivateFederatedLearningRunnerResponse *)v56 initWithDataPackage:v55 layersToTrain:v58 trainingLossesPerEpoch:v59 trainingAccuraciesPerEpoch:v60];

        v17 = v91;
        v8 = v93;
        v24 = v85;
        v61 = v80;
      }

      else
      {
        v17 = v91;
        if (!v89)
        {
          v18 = 0;
          v8 = v93;
          v63 = v94;
          v38 = v82;
          v61 = v80;
          goto LABEL_37;
        }

        v78 = 0;
        v64 = MEMORY[0x277CCACA8];
        v51 = [(PHAPrivateFederatedLearningRunner *)self options];
        v75 = [v51 trainingTask];
        v55 = [v64 stringWithFormat:@"Model trainer returned nil for data provider of training task %@ and model file url %@", v75, v24];
        v61 = v80;
        [PHAPrivateFederatedLearningRunner _generateErrorWithErrorCode:7 message:v55 underlyingError:v80];
        *v89 = v18 = 0;
        v8 = v93;
      }

      v63 = v94;
      goto LABEL_36;
    }

    if (a3)
    {
      [PHAPrivateFederatedLearningRunner _generateErrorWithErrorCode:10 message:@"Dataset size is 0." underlyingError:0];
      *a3 = v18 = 0;
    }

    else
    {
LABEL_30:
      v18 = 0;
    }

    v63 = v94;
LABEL_38:

    goto LABEL_39;
  }

  v18 = 0;
LABEL_42:

LABEL_43:

  return v18;
}

uint64_t __50__PHAPrivateFederatedLearningRunner_runWithError___block_invoke()
{
  __PXLog_genericOSLog = os_log_create("com.apple.photoanalysisd", "generic");

  return MEMORY[0x2821F96F8]();
}

- (PHAPrivateFederatedLearningRunner)initWithRecipeOptions:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PHAPrivateFederatedLearningRunner;
  v6 = [(PHAPrivateFederatedLearningRunner *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_options, a3);
  }

  return v7;
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

  v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.PhotoAnalysis.PHAPrivateFederatedLearningRunner" code:a3 userInfo:v10];

  return v11;
}

- (BOOL)_isValidInputDimensionForCoreMLModel:(id)a3 error:(id *)a4
{
  v6 = a3;
  v30 = 0;
  v7 = [MEMORY[0x277CBFF28] modelAssetWithURL:v6 error:&v30];
  v8 = v30;
  v9 = v8;
  if (v7)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 0;
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__10141;
    v24 = __Block_byref_object_dispose__10142;
    v25 = 0;
    v10 = dispatch_group_create();
    dispatch_group_enter(v10);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __89__PHAPrivateFederatedLearningRunner_Testing___isValidInputDimensionForCoreMLModel_error___block_invoke;
    v15[3] = &unk_2788B3270;
    v18 = &v26;
    v19 = &v20;
    v11 = v10;
    v16 = v11;
    v17 = self;
    [v7 modelDescriptionWithCompletionHandler:v15];
    dispatch_group_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
    if (a4)
    {
      *a4 = v21[5];
    }

    v12 = *(v27 + 24) ^ 1;

    _Block_object_dispose(&v20, 8);
    _Block_object_dispose(&v26, 8);
  }

  else if (a4)
  {
    v13 = v8;
    v12 = 0;
    *a4 = v9;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

void __89__PHAPrivateFederatedLearningRunner_Testing___isValidInputDimensionForCoreMLModel_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = a3;
  if (a2)
  {
    v6 = [a2 inputDescriptionsByName];
    v7 = [*(a1 + 40) options];
    v8 = [v7 modelInputName];
    v9 = [v6 objectForKeyedSubscript:v8];

    v10 = [v9 multiArrayConstraint];
    v11 = [v10 shape];
    v12 = [v11 objectAtIndexedSubscript:1];
    v13 = [v12 unsignedLongValue];

    v14 = [*(a1 + 40) options];
    v15 = [v14 featureSize];

    if (v13 != v15)
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
      v16 = MEMORY[0x277CCACA8];
      v17 = [*(a1 + 40) options];
      v18 = [v16 stringWithFormat:@"Wrong Input Dimension for CoreML Model. Expected model input size: %ld, got: %ld", v13, objc_msgSend(v17, "featureSize")];
      v19 = [PHAPrivateFederatedLearningRunner _generateErrorWithErrorCode:16 message:v18 underlyingError:0];
      v20 = *(*(a1 + 56) + 8);
      v21 = *(v20 + 40);
      *(v20 + 40) = v19;
    }

    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
    dispatch_group_leave(*(a1 + 32));
  }
}

- (id)_prepareTrainingDataForBiomeStream:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PHAPrivateFederatedLearningRunner *)self options];
  v8 = [PHAPrivateFederatedLearningRunner datasetBuilderForOptions:v7 error:a4];

  if (v8)
  {
    v9 = [v8 trainingDataBatchWithBiomeStream:v6 error:a4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)_mediaAnalysisImageProgressForPhotoLibrary:(id)a3 error:(id *)a4
{
  [a3 ratioOfAssetsWithMediaAnalysisImageProcessed];
  v4 = MEMORY[0x277CCABB0];

  return [v4 numberWithDouble:?];
}

+ (id)_firstAttachmentURLWithSuffixOfName:(id)a3 attachments:(id)a4 expectedDirectory:(BOOL)a5 error:(id *)a6
{
  v6 = a5;
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x277CCAA00] defaultManager];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v28;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v27 + 1) + 8 * i);
        v17 = [v16 lastPathComponent];
        v18 = [v17 hasSuffix:v8];

        if (v18)
        {
          v26 = 0;
          v19 = [v16 path];
          v20 = [v10 fileExistsAtPath:v19 isDirectory:&v26];

          if (v20 && v26 == v6)
          {
            v23 = v16;
            v22 = v11;
            goto LABEL_16;
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  if (a6)
  {
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"missing %@ resource for PFL", v8];
    [PHAPrivateFederatedLearningRunner _generateErrorWithErrorCode:2 message:v22 underlyingError:0];
    *a6 = v23 = 0;
LABEL_16:
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

+ (id)datasetBuilderForOptions:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 trainingTask];
  v7 = [v6 isEqualToString:@"AssetFingerprintTrainingTask"];

  if (!v7)
  {
    if (!a4)
    {
      goto LABEL_8;
    }

    v9 = MEMORY[0x277CCACA8];
    v8 = [v5 trainingTask];
    v10 = [v9 stringWithFormat:@"Training task %@ is not supported", v8];
    *a4 = [PHAPrivateFederatedLearningRunner _generateErrorWithErrorCode:4 message:v10 underlyingError:0];

    goto LABEL_6;
  }

  v8 = [PHAPrivateFederatedLearningRecipeOptions validateRecipeOptions:v5 error:a4];
  if (!v8)
  {
LABEL_6:
    a4 = 0;
    goto LABEL_7;
  }

  a4 = [[PHADatasetBuilder alloc] initWithDatasetOptions:v5];
LABEL_7:

LABEL_8:

  return a4;
}

+ (id)_prepareDatasetWithOptions:(id)a3 error:(id *)a4
{
  v5 = [PHAPrivateFederatedLearningRunner datasetBuilderForOptions:a3 error:?];
  v6 = [v5 datasetWithError:a4];

  return v6;
}

@end