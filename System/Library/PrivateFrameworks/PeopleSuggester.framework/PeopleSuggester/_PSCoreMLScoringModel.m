@interface _PSCoreMLScoringModel
- (BOOL)isGBDTModel;
- (BOOL)isSetModel;
- (_PSCoreMLScoringModel)init;
- (_PSCoreMLScoringModel)initWithCoreMLModel:(id)a3;
- (_opaque_pthread_mutex_t)lock;
- (id)batchPredictWithFeatureDictArray:(id)a3;
- (id)featureOrderFromMetadata;
- (id)getModelDescription;
- (id)getModelPath;
- (id)getSuggestionProxiesForCandidateToFeatureVectorDictGetter:(id)a3 predictionContext:(id)a4 messageInteractionCache:(id)a5 shareInteractionCache:(id)a6;
- (id)loadCoreMLModel:(id)a3 config:(id)a4;
- (id)predictWithFeatureProvider:(id)a3;
- (id)reformatCandidateDictionaryIntoFeatureTensor:(id)a3 candidateList:(id)a4 error:(id *)a5;
- (id)scoreCandidates:(id)a3 predictionContext:(id)a4;
- (id)scoreCandidatesWithCoreMLModel:(id)a3;
- (id)scoreCandidatesWithGBDTModel:(id)a3;
- (int64_t)getModelTypeWithModelMetadata:(id)a3;
- (void)featureOrderFromMetadata;
- (void)loadModel;
- (void)loadModelMetadata;
- (void)loadProductionModel:(id)a3;
- (void)setLock:(_opaque_pthread_mutex_t *)a3;
- (void)unloadModel;
@end

@implementation _PSCoreMLScoringModel

- (_PSCoreMLScoringModel)init
{
  v7 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = _PSCoreMLScoringModel;
  v2 = [(_PSCoreMLScoringModel *)&v5 init];
  if (v2)
  {
    v6.__sig = 0;
    *v6.__opaque = 0;
    pthread_mutexattr_init(&v6);
    pthread_mutexattr_settype(&v6, 2);
    pthread_mutex_init(&v2->_lock, &v6);
  }

  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)loadModel
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_1B5ED1000, v3, OS_LOG_TYPE_DEFAULT, "_PSCoreMLScoringModel: loading model", &buf, 2u);
  }

  pthread_mutex_lock(&self->_lock);
  v31 = [MEMORY[0x1E6997910] peopleDirectory];
  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v31];
  v32 = 0;
  v33 = &v32;
  v34 = 0x2050000000;
  v5 = getLCFModelStoreClass_softClass;
  v35 = getLCFModelStoreClass_softClass;
  if (!getLCFModelStoreClass_softClass)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v37 = __getLCFModelStoreClass_block_invoke;
    v38 = &unk_1E7C23BF0;
    v39 = &v32;
    __getLCFModelStoreClass_block_invoke(&buf);
    v5 = v33[3];
  }

  v6 = v5;
  _Block_object_dispose(&v32, 8);
  v7 = [[v5 alloc] init:@"com.apple.proactive.shareheet.peoplesuggester" modelStoreRootURL:v4];
  modelStore = self->_modelStore;
  self->_modelStore = v7;

  [(LCFModelStore *)self->_modelStore clear];
  v32 = 0;
  v33 = &v32;
  v34 = 0x2050000000;
  v9 = getTRIClientClass_softClass_2;
  v35 = getTRIClientClass_softClass_2;
  if (!getTRIClientClass_softClass_2)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v37 = __getTRIClientClass_block_invoke_2;
    v38 = &unk_1E7C23BF0;
    v39 = &v32;
    __getTRIClientClass_block_invoke_2(&buf);
    v9 = v33[3];
  }

  v10 = v9;
  _Block_object_dispose(&v32, 8);
  v11 = [v9 clientWithIdentifier:210];
  v12 = [v11 levelForFactor:@"compiledOnDeviceShareSheetCoreMLModel" withNamespaceName:@"COREML_SYSTEMS_PEOPLE_SUGGESTER"];
  v13 = v12;
  if (!v12 || ([v12 directoryValue], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "path"), v15 = objc_claimAutoreleasedReturnValue(), v16 = v15 == 0, v15, v14, v16))
  {
    v21 = 0;
    goto LABEL_13;
  }

  v17 = MEMORY[0x1E695DFF8];
  v18 = [v13 directoryValue];
  v19 = [v18 path];
  v20 = [v17 fileURLWithPath:v19 isDirectory:1];

  v21 = v20;
  if (!v21 || ([(_PSCoreMLScoringModel *)self loadCoreMLModel:v21 config:0], (v22 = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_13:
    v25 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v26 = [v25 bundlePath];

    v27 = [v26 stringByAppendingPathComponent:@"compiledShareSheetModel.mlmodelc"];
    v24 = [MEMORY[0x1E695DFF8] fileURLWithPath:v27];

    v22 = [(_PSCoreMLScoringModel *)self loadCoreMLModel:v24 config:0];
    if (v22)
    {
      v23 = @"coreML_Build";
    }

    else
    {
      v23 = @"nil_model";
    }

    goto LABEL_17;
  }

  v23 = @"coreML_Trial";
  v24 = v21;
LABEL_17:
  v28 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v23];
  [(_PSCoreMLScoringModel *)self setModelURL:v28];

  [(_PSCoreMLScoringModel *)self setMlModel:v22];
  [(_PSCoreMLScoringModel *)self loadModelMetadata];
  pthread_mutex_unlock(&self->_lock);
  v29 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v24;
    _os_log_impl(&dword_1B5ED1000, v29, OS_LOG_TYPE_INFO, "ML Model successfully loaded by _PSCoreMLScoringModel, model name: %@", &buf, 0xCu);
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (void)unloadModel
{
  pthread_mutex_lock(&self->_lock);
  [(_PSCoreMLScoringModel *)self setMlModel:0];
  [(_PSCoreMLScoringModel *)self setMetadata:0];
  [(_PSCoreMLScoringModel *)self setInputFeatureName:0];
  [(_PSCoreMLScoringModel *)self setNumCandidatesFeatureName:0];
  [(_PSCoreMLScoringModel *)self setOutputFeatureName:0];
  [(_PSCoreMLScoringModel *)self setInputShape:0];
  [(_PSCoreMLScoringModel *)self setMlModelInitialized:0];

  pthread_mutex_unlock(&self->_lock);
}

- (_PSCoreMLScoringModel)initWithCoreMLModel:(id)a3
{
  v4 = a3;
  v5 = [(_PSCoreMLScoringModel *)self init];
  pthread_mutex_lock(&v5->_lock);
  if (v4)
  {
    [(_PSCoreMLScoringModel *)v5 setMlModelInitialized:1];
    [(_PSCoreMLScoringModel *)v5 setMlModel:v4];
    v6 = [v4 configuration];
    v7 = [v6 modelDisplayName];

    if (v7)
    {
      v8 = objc_alloc(MEMORY[0x1E695DFF8]);
      v9 = [v4 configuration];
      v10 = [v9 modelDisplayName];
      v11 = [v8 initWithString:v10];
      [(_PSCoreMLScoringModel *)v5 setModelURL:v11];
    }

    [(_PSCoreMLScoringModel *)v5 loadModelMetadata];
  }

  pthread_mutex_lock(&v5->_lock);

  return v5;
}

- (id)loadCoreMLModel:(id)a3 config:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v6 copy];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2050000000;
    v10 = getMLModelConfigurationClass_softClass_0;
    v25 = getMLModelConfigurationClass_softClass_0;
    if (!getMLModelConfigurationClass_softClass_0)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v27 = __getMLModelConfigurationClass_block_invoke_0;
      v28 = &unk_1E7C23BF0;
      v29 = &v22;
      CoreMLLibraryCore_3();
      Class = objc_getClass("MLModelConfiguration");
      *(v29[1] + 24) = Class;
      getMLModelConfigurationClass_softClass_0 = *(v29[1] + 24);
      v10 = v23[3];
    }

    v12 = v10;
    _Block_object_dispose(&v22, 8);
    v9 = objc_opt_new();
  }

  [v9 setComputeUnits:0];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2050000000;
  v13 = getMLModelClass_softClass_3;
  v25 = getMLModelClass_softClass_3;
  if (!getMLModelClass_softClass_3)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v27 = __getMLModelClass_block_invoke_3;
    v28 = &unk_1E7C23BF0;
    v29 = &v22;
    CoreMLLibraryCore_3();
    v14 = objc_getClass("MLModel");
    *(v29[1] + 24) = v14;
    getMLModelClass_softClass_3 = *(v29[1] + 24);
    v13 = v23[3];
  }

  v15 = v13;
  _Block_object_dispose(&v22, 8);
  v21 = 0;
  v16 = [v13 modelWithContentsOfURL:v5 configuration:v9 error:&v21];
  v17 = v21;
  if (v17)
  {
    v18 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v17;
      _os_log_impl(&dword_1B5ED1000, v18, OS_LOG_TYPE_INFO, "Couldn't load ML model, error: %@", &buf, 0xCu);
    }
  }

  v19 = *MEMORY[0x1E69E9840];

  return v16;
}

- (void)loadProductionModel:(id)a3
{
  v4 = a3;
  v5 = [(_PSCoreMLScoringModel *)self mlModel];

  if (!v5)
  {
    if (v4)
    {
      [(_PSCoreMLScoringModel *)self setMlModel:v4];
    }

    else
    {
      v6 = [(LCFModelStore *)self->_modelStore getModelURL:@"compiledShareSheetModel.mlmodelc"];
      v7 = [(LCFModelStore *)self->_modelStore getModelConfig:@"compiledShareSheetModel.mlmodelc"];
      v8 = [(_PSCoreMLScoringModel *)self loadCoreMLModel:v6 config:v7];
      [(_PSCoreMLScoringModel *)self setMlModel:v8];

      [(_PSCoreMLScoringModel *)self setModelURL:v6];
      v9 = [(_PSCoreMLScoringModel *)self mlModel];

      if (!v9)
      {
        v10 = +[_PSLogging generalChannel];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [_PSCoreMLScoringModel loadProductionModel:];
        }
      }
    }
  }
}

- (void)loadModelMetadata
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (id)featureOrderFromMetadata
{
  v3 = [(_PSCoreMLScoringModel *)self metadata];
  v4 = [v3 objectForKeyedSubscript:@"feature_order"];

  if (v4)
  {
    v5 = MEMORY[0x1E696ACB0];
    v6 = [(_PSCoreMLScoringModel *)self metadata];
    v7 = [v6 objectForKeyedSubscript:@"feature_order"];
    v8 = [v7 dataUsingEncoding:4];
    v21 = 0;
    v9 = [v5 JSONObjectWithData:v8 options:8 error:&v21];
    v10 = v21;

    if (v9)
    {
      v11 = [v9 _pas_mappedArrayWithTransform:&__block_literal_global_47];
    }

    else
    {
      v19 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [_PSCoreMLScoringModel featureOrderFromMetadata];
      }

      v11 = 0;
    }
  }

  else
  {
    v10 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(_PSCoreMLScoringModel *)v10 featureOrderFromMetadata:v12];
    }

    v11 = 0;
  }

  return v11;
}

- (int64_t)getModelTypeWithModelMetadata:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"model_type"];
  if ([v4 isEqualToString:@"item"])
  {
    v5 = 0;
  }

  else if ([v4 isEqualToString:@"set"])
  {
    v5 = 1;
  }

  else if ([v4 isEqualToString:@"gbdt"])
  {
    v5 = 2;
  }

  else
  {
    v6 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [_PSCoreMLScoringModel getModelTypeWithModelMetadata:];
    }

    v5 = 3;
  }

  return v5;
}

- (id)getModelDescription
{
  pthread_mutex_lock(&self->_lock);
  v3 = [(MLModel *)self->_mlModel modelDescription];
  pthread_mutex_unlock(&self->_lock);

  return v3;
}

- (id)getModelPath
{
  pthread_mutex_lock(&self->_lock);
  v3 = [(_PSCoreMLScoringModel *)self modelURL];
  v4 = [v3 absoluteString];

  pthread_mutex_unlock(&self->_lock);

  return v4;
}

- (BOOL)isSetModel
{
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:{-[_PSCoreMLScoringModel modelType](self, "modelType")}];
  v3 = [v2 isEqual:&unk_1F2D8BE08];

  return v3;
}

- (BOOL)isGBDTModel
{
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:{-[_PSCoreMLScoringModel modelType](self, "modelType")}];
  v3 = [v2 isEqual:&unk_1F2D8BE20];

  return v3;
}

- (id)reformatCandidateDictionaryIntoFeatureTensor:(id)a3 candidateList:(id)a4 error:(id *)a5
{
  v59[1] = *MEMORY[0x1E69E9840];
  v47 = a3;
  v8 = a4;
  v9 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [_PSCoreMLScoringModel reformatCandidateDictionaryIntoFeatureTensor:v9 candidateList:? error:?];
  }

  v10 = [(_PSCoreMLScoringModel *)self isSetModel];
  v11 = [(_PSCoreMLScoringModel *)self featureOrderFromMetadata];
  if (v10)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  v13 = [(_PSCoreMLScoringModel *)self inputShape];
  v14 = [v13 objectAtIndexedSubscript:v12];
  v15 = [v14 unsignedLongValue];
  v16 = [v11 count];

  if (v15 == v16)
  {
    v17 = objc_alloc(getMLMultiArrayClass_0());
    v18 = [(_PSCoreMLScoringModel *)self inputShape];
    v19 = [v17 initWithShape:v18 dataType:65568 error:a5];

    v20 = +[_PSLogging generalChannel];
    v21 = v20;
    if (v19)
    {
      v22 = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);

      v23 = v48;
      if (v22)
      {
        v24 = objc_opt_new();
        v25 = objc_opt_new();
      }

      else
      {
        v25 = 0;
        v24 = 0;
      }

      v35 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B5ED1000, v35, OS_LOG_TYPE_DEFAULT, "Copying feature vectors into feature tensor", buf, 2u);
      }

      v36 = v10;
      v37 = +[_PSCandidate selfCandidate];
      v38 = [v48 objectForKeyedSubscript:v37];

      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __90___PSCoreMLScoringModel_reformatCandidateDictionaryIntoFeatureTensor_candidateList_error___block_invoke;
      v49[3] = &unk_1E7C270D0;
      v56 = v36;
      v50 = v8;
      v51 = v48;
      v52 = v11;
      v39 = v38;
      v53 = v39;
      v40 = v25;
      v54 = v40;
      v21 = v24;
      v55 = v21;
      [v19 getMutableBytesWithHandler:v49];
      v41 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        [_PSCoreMLScoringModel reformatCandidateDictionaryIntoFeatureTensor:candidateList:error:];
      }

      v42 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        [_PSCoreMLScoringModel reformatCandidateDictionaryIntoFeatureTensor:candidateList:error:];
      }

      v43 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B5ED1000, v43, OS_LOG_TYPE_INFO, "Finished reformatting candidate dictionary into feature tensor", buf, 2u);
      }

      v44 = v19;
    }

    else
    {
      v23 = v48;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [(_PSCoreMLScoringModel *)a5 reformatCandidateDictionaryIntoFeatureTensor:v21 candidateList:v29 error:v30, v31, v32, v33, v34];
      }
    }

    v28 = v19;
  }

  else
  {
    if (!a5)
    {
      v28 = 0;
      v23 = v48;
      goto LABEL_27;
    }

    v26 = objc_alloc(MEMORY[0x1E696ABC0]);
    v58 = *MEMORY[0x1E696A578];
    v59[0] = @"feature list length doesn't match shape";
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:&v58 count:1];
    v27 = [v26 initWithDomain:@"com.apple.PeopleSuggester" code:1 userInfo:v19];
    v28 = 0;
    *a5 = v27;
    v23 = v48;
  }

LABEL_27:
  v45 = *MEMORY[0x1E69E9840];

  return v28;
}

- (id)predictWithFeatureProvider:(id)a3
{
  v4 = a3;
  v5 = [(_PSCoreMLScoringModel *)self mlModel];
  v16 = 0;
  v6 = [v5 predictionFromFeatures:v4 error:&v16];

  v7 = v16;
  if (v7)
  {
    v8 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [_PSCoreMLScoringModel predictWithFeatureProvider:];
    }

    v9 = 0;
  }

  else
  {
    v8 = [v6 dictionary];
    v10 = [(_PSCoreMLScoringModel *)self outputFeatureName];
    v11 = [v8 objectForKeyedSubscript:v10];

    v12 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v11, "type")}];
    v13 = [v12 isEqual:&unk_1F2D8BE38];

    if (v13)
    {
      v9 = [v11 multiArrayValue];
    }

    else
    {
      v14 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [(_PSCoreMLScoringModel *)v11 predictWithFeatureProvider:v14];
      }

      v9 = 0;
    }
  }

  return v9;
}

- (id)scoreCandidatesWithGBDTModel:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSCandidateScoringGBDTModel-Inference", " enableTelemetry=YES ", buf, 2u);
  }

  v6 = [v4 allValues];
  v7 = [(_PSCoreMLScoringModel *)self batchPredictWithFeatureDictArray:v6];

  v8 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSCandidateScoringGBDTModel-Inference", &unk_1B5FD970D, buf, 2u);
  }

  v9 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B5ED1000, v9, OS_LOG_TYPE_INFO, "_PSCandidateScoringCoreMLModel - People Suggester run inference with the GBDT model", buf, 2u);
  }

  v10 = [v7 count];
  if (v10 == [v4 count])
  {
    v11 = objc_opt_new();
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = v4;
    v13 = [v12 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = 0;
      v16 = *v24;
      do
      {
        v17 = 0;
        v18 = v15;
        do
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v12);
          }

          v19 = *(*(&v23 + 1) + 8 * v17);
          v15 = v18 + 1;
          v20 = [v7 objectAtIndexedSubscript:{v18, v23}];
          [v11 setObject:v20 forKeyedSubscript:v19];

          ++v17;
          v18 = v15;
        }

        while (v14 != v17);
        v14 = [v12 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v14);
    }
  }

  else
  {
    v11 = MEMORY[0x1E695E0F8];
  }

  v21 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)scoreCandidatesWithCoreMLModel:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 allKeys];
  v6 = [v5 _pas_mappedArrayWithTransform:&__block_literal_global_155];

  v7 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v38 = [v6 count];
    _os_log_impl(&dword_1B5ED1000, v7, OS_LOG_TYPE_DEFAULT, "Scoring %tu candidates using CoreML ranker", buf, 0xCu);
  }

  v8 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSCandidateScoringCoreMLModel-Inference", " enableTelemetry=YES ", buf, 2u);
  }

  v9 = [_PSFeaturePreprocessor encodeFeatureVectors:v4];

  v36 = 0;
  v10 = [(_PSCoreMLScoringModel *)self reformatCandidateDictionaryIntoFeatureTensor:v9 candidateList:v6 error:&v36];
  v11 = v36;
  if (v10)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v6, "count")}];
    v13 = objc_opt_new();
    v14 = [(_PSCoreMLScoringModel *)self inputFeatureName];
    [v13 setObject:v10 forKeyedSubscript:v14];

    if ([(_PSCoreMLScoringModel *)self isSetModel])
    {
      v15 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [_PSCoreMLScoringModel scoreCandidatesWithCoreMLModel:];
      }

      v35 = v11;
      v16 = [objc_alloc(getMLMultiArrayClass_0()) initWithShape:&unk_1F2D8C660 dataType:65600 error:&v35];
      v17 = v35;

      if (v17)
      {
        v18 = +[_PSLogging generalChannel];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [_PSCoreMLScoringModel scoreCandidatesWithCoreMLModel:];
        }

LABEL_19:
        v19 = MEMORY[0x1E695E0F8];
LABEL_31:

        v11 = v17;
        goto LABEL_32;
      }

      [v16 setObject:v12 atIndexedSubscript:0];
      v20 = [(_PSCoreMLScoringModel *)self numCandidatesFeatureName];
      [v13 setObject:v16 forKeyedSubscript:v20];

      v11 = 0;
    }

    v34 = v11;
    v16 = [objc_alloc(getMLDictionaryFeatureProviderClass_1()) initWithDictionary:v13 error:&v34];
    v17 = v34;

    if (v17)
    {
      v18 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [_PSCoreMLScoringModel scoreCandidatesWithCoreMLModel:];
      }

      goto LABEL_19;
    }

    v21 = [(_PSCoreMLScoringModel *)self predictWithFeatureProvider:v16];
    v18 = [v21 squeeze];

    v22 = +[_PSLogging suggestionSignpost];
    if (os_signpost_enabled(v22))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v22, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSCandidateScoringCoreMLModel-Inference", " enableTelemetry=YES ", buf, 2u);
    }

    v30 = [v18 shape];
    if ([v30 count] == 1)
    {
      v23 = [v18 count];
      if (v23 >= [v12 intValue])
      {
        v25 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSObject intValue](v12, "intValue")}];
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __56___PSCoreMLScoringModel_scoreCandidatesWithCoreMLModel___block_invoke_160;
        v31[3] = &unk_1E7C27118;
        v26 = v25;
        v32 = v26;
        v33 = v18;
        [v6 enumerateObjectsUsingBlock:v31];
        v27 = v33;
        v24 = v26;

        v19 = v24;
        goto LABEL_30;
      }

      v24 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [(_PSCoreMLScoringModel *)v18 scoreCandidatesWithCoreMLModel:v12, v24];
      }
    }

    else
    {
      v24 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [_PSCoreMLScoringModel scoreCandidatesWithCoreMLModel:];
      }
    }

    v19 = MEMORY[0x1E695E0F8];
LABEL_30:

    goto LABEL_31;
  }

  v12 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [_PSCoreMLScoringModel scoreCandidatesWithCoreMLModel:];
  }

  v19 = MEMORY[0x1E695E0F8];
LABEL_32:

  v28 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)scoreCandidates:(id)a3 predictionContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  pthread_mutex_lock(&self->_lock);
  v8 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_PSShareSheetLoadMLModel", " enableTelemetry=YES ", buf, 2u);
  }

  if (!self->_mlModelInitialized)
  {
    [(_PSCoreMLScoringModel *)self loadModel];
  }

  v9 = +[_PSLogging suggestionSignpost];
  if (os_signpost_enabled(v9))
  {
    *v18 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B5ED1000, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_PSShareSheetLoadMLModel", &unk_1B5FD970D, v18, 2u);
  }

  v10 = [(_PSCoreMLScoringModel *)self mlModel];

  if (v10)
  {
    v11 = v6[2](v6);
    if ([v11 count])
    {
      v12 = [(_PSCoreMLScoringModel *)self metadata];
      if (v12)
      {
        v13 = [(_PSCoreMLScoringModel *)self inputFeatureName];

        if (v13)
        {
          if ([(_PSCoreMLScoringModel *)self isGBDTModel])
          {
            [(_PSCoreMLScoringModel *)self scoreCandidatesWithGBDTModel:v11];
          }

          else
          {
            [(_PSCoreMLScoringModel *)self scoreCandidatesWithCoreMLModel:v11];
          }
          v15 = ;
          goto LABEL_23;
        }
      }

      v16 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        [_PSCoreMLScoringModel scoreCandidates:predictionContext:];
      }
    }

    else
    {
      v16 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        [_PSCoreMLScoringModel scoreCandidates:predictionContext:];
      }
    }

    v15 = MEMORY[0x1E695E0F8];
LABEL_23:

    goto LABEL_24;
  }

  v14 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    [_PSCoreMLScoringModel scoreCandidates:predictionContext:];
  }

  v15 = MEMORY[0x1E695E0F8];
LABEL_24:
  [(_PSCoreMLScoringModel *)self unloadModel];
  pthread_mutex_unlock(&self->_lock);

  return v15;
}

- (id)batchPredictWithFeatureDictArray:(id)a3
{
  v61 = *MEMORY[0x1E69E9840];
  v34 = a3;
  v37 = self;
  v38 = [(_PSCoreMLScoringModel *)self featureOrderFromMetadata];
  if (v38)
  {
    v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v35 = [MEMORY[0x1E695DF70] array];
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = v34;
    v4 = [obj countByEnumeratingWithState:&v46 objects:v60 count:16];
    if (v4)
    {
      v5 = *v47;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v47 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v46 + 1) + 8 * i);
          v8 = [MEMORY[0x1E695E0F8] mutableCopy];
          v9 = objc_alloc(getMLMultiArrayClass_0());
          v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v38, "count")}];
          v59 = v10;
          v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1];
          v45 = 0;
          v12 = [v9 initWithShape:v11 dataType:65600 error:&v45];
          v13 = v45;

          if (v13)
          {
            v25 = +[_PSLogging generalChannel];
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              [_PSCoreMLScoringModel batchPredictWithFeatureDictArray:];
            }

            goto LABEL_28;
          }

          v43[0] = MEMORY[0x1E69E9820];
          v43[1] = 3221225472;
          v43[2] = __58___PSCoreMLScoringModel_batchPredictWithFeatureDictArray___block_invoke;
          v43[3] = &unk_1E7C248D0;
          v43[4] = v7;
          v14 = v12;
          v44 = v14;
          [v38 enumerateObjectsUsingBlock:v43];
          v15 = [(_PSCoreMLScoringModel *)v37 inputFeatureName];
          [v8 setObject:v14 forKeyedSubscript:v15];

          v16 = objc_alloc(getMLDictionaryFeatureProviderClass_1());
          v42 = 0;
          v17 = [v16 initWithDictionary:v8 error:&v42];
          v13 = v42;
          if (v13)
          {
            v18 = +[_PSLogging generalChannel];
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              [(_PSCoreMLScoringModel *)&buf batchPredictWithFeatureDictArray:v41, v18];
            }
          }

          else
          {
            [v35 addObject:v17];
          }

          if (v13)
          {
            v24 = 0;
            goto LABEL_37;
          }
        }

        v4 = [obj countByEnumeratingWithState:&v46 objects:v60 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

    v55 = 0;
    v56 = &v55;
    v57 = 0x2050000000;
    v19 = getMLArrayBatchProviderClass_softClass_0;
    v58 = getMLArrayBatchProviderClass_softClass_0;
    if (!getMLArrayBatchProviderClass_softClass_0)
    {
      v50 = MEMORY[0x1E69E9820];
      v51 = 3221225472;
      v52 = __getMLArrayBatchProviderClass_block_invoke_0;
      v53 = &unk_1E7C23BF0;
      v54 = &v55;
      CoreMLLibraryCore_3();
      Class = objc_getClass("MLArrayBatchProvider");
      *(v54[1] + 24) = Class;
      getMLArrayBatchProviderClass_softClass_0 = *(v54[1] + 24);
      v19 = v56[3];
    }

    v21 = v19;
    _Block_object_dispose(&v55, 8);
    obj = [[v19 alloc] initWithFeatureProviderArray:v35];
    mlModel = v37->_mlModel;
    v39 = 0;
    v8 = [(MLModel *)mlModel predictionsFromBatch:obj error:&v39];
    v13 = v39;
    if (v13)
    {
      v23 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [_PSCoreMLScoringModel batchPredictWithFeatureDictArray:];
      }

LABEL_28:
      v24 = 0;
    }

    else
    {
      if ([v8 count] >= 1)
      {
        v26 = 0;
        do
        {
          v27 = [v8 featuresAtIndex:v26];
          v28 = [v27 featureValueForName:@"classProbability"];
          v29 = [v28 dictionaryValue];

          if ([v29 count] == 2)
          {
            v30 = [v29 objectForKeyedSubscript:&unk_1F2D8BE50];
            [v33 addObject:v30];
          }

          ++v26;
        }

        while (v26 < [v8 count]);
      }

      v24 = [v33 copy];
    }

LABEL_37:
  }

  else
  {
    v13 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [_PSCoreMLScoringModel batchPredictWithFeatureDictArray:];
    }

    v24 = 0;
  }

  v31 = *MEMORY[0x1E69E9840];

  return v24;
}

- (id)getSuggestionProxiesForCandidateToFeatureVectorDictGetter:(id)a3 predictionContext:(id)a4 messageInteractionCache:(id)a5 shareInteractionCache:(id)a6
{
  v44 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v35 = objc_opt_new();
  v10 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B5ED1000, v10, OS_LOG_TYPE_INFO, "_PSCoreMLScoringModel ranking", buf, 2u);
  }

  v32 = v9;
  v33 = v8;
  v36 = [(_PSCoreMLScoringModel *)self scoreCandidates:v8 predictionContext:v9];
  v11 = [v36 keysSortedByValueUsingComparator:&__block_literal_global_169];
  v12 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    v43 = v11;
    _os_log_impl(&dword_1B5ED1000, v12, OS_LOG_TYPE_INFO, "_PSCoreMLScoringModel sorted score array: %{private}@", buf, 0xCu);
  }

  v13 = [(_PSCoreMLScoringModel *)self getModelPath];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v11;
  v14 = [(_PSSuggestionProxy *)obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v38;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v38 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v37 + 1) + 8 * i);
        v19 = [v36 objectForKeyedSubscript:v18];
        v20 = [v18 candidateIdentifier];
        v21 = [v18 bundleId];
        v22 = +[_PSConstants sharePlayBundleId];
        v23 = [v21 isEqual:v22];

        if (v23)
        {
          v24 = [v18 recipientsId];

          v20 = v24;
        }

        v25 = [_PSSuggestionProxy alloc];
        v26 = [v18 bundleId];
        v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@\n Score: %@", v13, v19];
        v28 = [(_PSSuggestionProxy *)v25 initWithBundleID:v26 interactionRecipients:v20 contactID:0 reason:v27 reasonType:v13 modelScore:v19];

        if (v28)
        {
          [v35 addObject:v28];
          v29 = +[_PSLogging generalChannel];
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v43 = v28;
            _os_log_impl(&dword_1B5ED1000, v29, OS_LOG_TYPE_DEFAULT, "suggestionProxy: %@", buf, 0xCu);
          }
        }
      }

      v15 = [(_PSSuggestionProxy *)obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v15);
  }

  v30 = *MEMORY[0x1E69E9840];

  return v35;
}

- (_opaque_pthread_mutex_t)lock
{
  v3 = *&self[1].__opaque[32];
  *&retstr->__sig = *&self[1].__opaque[16];
  *&retstr->__opaque[8] = v3;
  v4 = *self[2].__opaque;
  *&retstr->__opaque[24] = *&self[1].__opaque[48];
  *&retstr->__opaque[40] = v4;
  return self;
}

- (void)setLock:(_opaque_pthread_mutex_t *)a3
{
  v3 = *&a3->__sig;
  v4 = *&a3->__opaque[8];
  v5 = *&a3->__opaque[24];
  *&self->_lock.__opaque[40] = *&a3->__opaque[40];
  *&self->_lock.__opaque[24] = v5;
  *&self->_lock.__opaque[8] = v4;
  *&self->_lock.__sig = v3;
}

- (void)loadProductionModel:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_1B5ED1000, v0, v1, "Failed to load ML Model with URL: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)featureOrderFromMetadata
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2(&dword_1B5ED1000, a1, a3, "%@ not in metadata", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)getModelTypeWithModelMetadata:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(&dword_1B5ED1000, v0, OS_LOG_TYPE_FAULT, "Metadata %@ resulted in unknown model type", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)reformatCandidateDictionaryIntoFeatureTensor:(void *)a1 candidateList:(NSObject *)a2 error:.cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 inputShape];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_1B5ED1000, a2, OS_LOG_TYPE_DEBUG, "Reformatting candidate dictionary into feature tensor, with input shape: %@", v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

- (void)reformatCandidateDictionaryIntoFeatureTensor:candidateList:error:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6(&dword_1B5ED1000, v0, v1, "Missing features per candidate %{private}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)reformatCandidateDictionaryIntoFeatureTensor:candidateList:error:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6(&dword_1B5ED1000, v0, v1, "Missing candidates per feature %{private}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)reformatCandidateDictionaryIntoFeatureTensor:(uint64_t)a3 candidateList:(uint64_t)a4 error:(uint64_t)a5 .cold.4(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0_2(&dword_1B5ED1000, a2, a3, "_PSCandidateScoringCoreMLModel: error creating MLMultiArray: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)predictWithFeatureProvider:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_1B5ED1000, v0, v1, "Predictions returned error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)predictWithFeatureProvider:(void *)a1 .cold.2(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1, "type")}];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1B5ED1000, a2, OS_LOG_TYPE_ERROR, "Model output type was %@ instead of MLFeatureTypeMultiArray", v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

- (void)scoreCandidatesWithCoreMLModel:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6(&dword_1B5ED1000, v0, v1, "Setting number of candidates to %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)scoreCandidatesWithCoreMLModel:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_1B5ED1000, v0, v1, "numCandidatesTensor returned an error during creation: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)scoreCandidatesWithCoreMLModel:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_1B5ED1000, v0, v1, "Model returned error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)scoreCandidatesWithCoreMLModel:.cold.4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_1B5ED1000, v0, v1, "Unexpected output shape %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)scoreCandidatesWithCoreMLModel:(NSObject *)a3 .cold.5(void *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  [a1 count];
  OUTLINED_FUNCTION_1();
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_1B5ED1000, a3, OS_LOG_TYPE_ERROR, "prediction count (%ld) < candidate count (%@)", v6, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)scoreCandidatesWithCoreMLModel:.cold.6()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_1B5ED1000, v0, v1, "Error creating tensor: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)batchPredictWithFeatureDictArray:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)batchPredictWithFeatureDictArray:(os_log_t)log .cold.2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1B5ED1000, log, OS_LOG_TYPE_ERROR, "MLDictionaryFeatureProvider call failure", buf, 2u);
}

- (void)batchPredictWithFeatureDictArray:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)batchPredictWithFeatureDictArray:.cold.4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end