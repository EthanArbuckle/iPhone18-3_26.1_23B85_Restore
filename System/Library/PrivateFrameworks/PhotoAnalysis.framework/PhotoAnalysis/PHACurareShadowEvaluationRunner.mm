@interface PHACurareShadowEvaluationRunner
+ (id)runnerLog;
- (BOOL)runWithError:(id *)a3;
- (PHACurareShadowEvaluationRunner)initWithRecipeOptions:(id)a3;
- (id)evaluateModel:(id)a3 datasetDictionary:(id)a4 error:(id *)a5;
- (id)getDatasetWithError:(id *)a3;
- (void)generateCAEventForResults:(id)a3;
@end

@implementation PHACurareShadowEvaluationRunner

- (id)getDatasetWithError:(id *)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [(PHACurareShadowEvaluationRunner *)self options];
  v5 = [PHACurareShadowEvaluationDataset prepareDatasetForEvaluationTaskWithRecipeOptions:v4 error:a3];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v7 = +[PHACurareShadowEvaluationRunner runnerLog];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = 0;
      _os_log_error_impl(&dword_22FA28000, v7, OS_LOG_TYPE_ERROR, "Failed to create allData with error: %@", &v10, 0xCu);
    }

    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to generate dataset for all data"];
    [PHACurareShadowEvaluationUtilities generateError:a3 errorCode:5 errorDomain:@"com.apple.PhotoAnalysis.PHACurareShadowEvaluationRunner" message:v8 underlyingError:0];
  }

  return v5;
}

- (id)evaluateModel:(id)a3 datasetDictionary:(id)a4 error:(id *)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [PHACurareShadowEvaluationEvaluator alloc];
  v10 = [(PHACurareShadowEvaluationRunner *)self options];
  v11 = [v10 modelInputName];
  v12 = [(PHACurareShadowEvaluationRunner *)self options];
  v13 = [v12 modelOutputName];
  v14 = [(PHACurareShadowEvaluationRunner *)self options];
  v15 = [v14 lossName];
  v16 = [(PHACurareShadowEvaluationEvaluator *)v9 initWithModelInputName:v11 modelOutputName:v13 lossName:v15];

  v17 = [v7 objectForKeyedSubscript:@"modelPath"];
  v18 = v17;
  if (v17 && [v17 length])
  {
    v19 = [v7 objectForKeyedSubscript:@"labelIndex"];
    v20 = [v19 intValue];

    v21 = [v7 objectForKeyedSubscript:@"labelOperatingPoint"];
    [v21 floatValue];
    v23 = v22;

    v24 = [v8 objectForKeyedSubscript:@"kPositive"];
    v25 = [v8 objectForKeyedSubscript:@"kNegative"];
    v35 = 0;
    LODWORD(v26) = v23;
    v27 = [(PHACurareShadowEvaluationEvaluator *)v16 evaluateModelAtPath:v18 labelIndex:v20 labelOperatingPoint:v24 positiveEvaluationData:v25 negativeEvaluationData:&v35 error:v26];
    v28 = v35;

    v29 = +[PHACurareShadowEvaluationRunner runnerLog];
    v30 = v29;
    if (!v27 || v28)
    {
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v37 = v28;
        _os_log_error_impl(&dword_22FA28000, v30, OS_LOG_TYPE_ERROR, "Failed to generate results for dataset with error: %@", buf, 0xCu);
      }

      v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to evaluate model: %@ on dataset", v18];
      [PHACurareShadowEvaluationUtilities generateError:a5 errorCode:6 errorDomain:@"com.apple.PhotoAnalysis.PHACurareShadowEvaluationRunner" message:v32 underlyingError:v28];

      v31 = 0;
    }

    else
    {
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v37 = v18;
        _os_log_impl(&dword_22FA28000, v30, OS_LOG_TYPE_INFO, "Generated result for model: %@", buf, 0xCu);
      }

      v31 = v27;
    }
  }

  else
  {
    v28 = +[PHACurareShadowEvaluationRunner runnerLog];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22FA28000, v28, OS_LOG_TYPE_ERROR, "modelPath is empty", buf, 2u);
    }

    v31 = 0;
  }

  return v31;
}

- (void)generateCAEventForResults:(id)a3
{
  v58[23] = *MEMORY[0x277D85DE8];
  v39 = a3;
  v4 = +[PHACurareShadowEvaluationRunner runnerLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22FA28000, v4, OS_LOG_TYPE_INFO, "Begin generateCAEventForResults", buf, 2u);
  }

  v57[0] = @"model1_name";
  v57[1] = @"model1_positive_numberOfCorrectSamples";
  v58[0] = @"nil";
  v58[1] = @"nil";
  v57[2] = @"model1_positive_lossMetric";
  v57[3] = @"model1_positive_prediction_mean";
  v58[2] = @"nil";
  v58[3] = @"nil";
  v57[4] = @"model1_positive_prediction_stddev";
  v57[5] = @"model1_negative_numberOfCorrectSamples";
  v58[4] = @"nil";
  v58[5] = @"nil";
  v57[6] = @"model1_negative_lossMetric";
  v57[7] = @"model1_negative_prediction_mean";
  v58[6] = @"nil";
  v58[7] = @"nil";
  v57[8] = @"model1_negative_prediction_stddev";
  v57[9] = @"model2_name";
  v58[8] = @"nil";
  v58[9] = @"nil";
  v57[10] = @"model2_positive_numberOfCorrectSamples";
  v57[11] = @"model2_positive_lossMetric";
  v58[10] = @"nil";
  v58[11] = @"nil";
  v57[12] = @"model2_positive_prediction_mean";
  v57[13] = @"model2_positive_prediction_stddev";
  v58[12] = @"nil";
  v58[13] = @"nil";
  v57[14] = @"model2_negative_numberOfCorrectSamples";
  v57[15] = @"model2_negative_lossMetric";
  v58[14] = @"nil";
  v58[15] = @"nil";
  v57[16] = @"model2_negative_prediction_mean";
  v57[17] = @"model2_negative_prediction_stddev";
  v58[16] = @"nil";
  v58[17] = @"nil";
  v57[18] = @"positive_numberOfSamples";
  v57[19] = @"negative_numberOfSamples";
  v58[18] = @"nil";
  v58[19] = @"nil";
  v57[20] = @"trial_deplyomentID";
  v5 = [(PHACurareShadowEvaluationRunner *)self options];
  v6 = [v5 trialDeploymentID];
  v58[20] = v6;
  v57[21] = @"trial_experimentID";
  v7 = [(PHACurareShadowEvaluationRunner *)self options];
  v8 = [v7 trialExperimentID];
  v58[21] = v8;
  v57[22] = @"trial_treatmentID";
  v9 = [(PHACurareShadowEvaluationRunner *)self options];
  v10 = [v9 trialTreatmentID];
  v58[22] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:23];
  v12 = [v11 mutableCopy];

  v13 = [v39 allKeys];
  v14 = [v13 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v14;
  v40 = [obj countByEnumeratingWithState:&v47 objects:v56 count:16];
  if (v40)
  {
    v38 = *v48;
    v15 = 1;
    do
    {
      v16 = 0;
      do
      {
        if (*v48 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v41 = v16;
        v17 = [v39 objectForKeyedSubscript:*(*(&v47 + 1) + 8 * v16)];
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v42 = v17;
        v18 = [v17 countByEnumeratingWithState:&v43 objects:v55 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v44;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v44 != v20)
              {
                objc_enumerationMutation(v42);
              }

              v22 = *(*(&v43 + 1) + 8 * i);
              v23 = [v22 isPositiveData];
              v24 = @"negative";
              if (v23)
              {
                v24 = @"positive";
              }

              v25 = v24;
              v26 = [v22 modelName];
              v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"model%d_name", v15];
              [v12 setObject:v26 forKeyedSubscript:v27];

              v28 = [v22 numberOfCorrectSamples];
              v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"model%d_%@_numberOfCorrectSamples", v15, v25];
              [v12 setObject:v28 forKeyedSubscript:v29];

              v30 = [v22 meanPredictionValue];
              v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"model%d_%@_prediction_mean", v15, v25];
              [v12 setObject:v30 forKeyedSubscript:v31];

              v32 = [v22 stddevPredictionValue];
              v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"model%d_%@_prediction_stddev", v15, v25];
              [v12 setObject:v32 forKeyedSubscript:v33];

              v34 = [v22 numberOfTotalSamples];
              v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_numberOfSamples", v25];

              [v12 setObject:v34 forKeyedSubscript:v35];
            }

            v19 = [v42 countByEnumeratingWithState:&v43 objects:v55 count:16];
          }

          while (v19);
        }

        v15 = (v15 + 1);

        v16 = v41 + 1;
      }

      while (v41 + 1 != v40);
      v40 = [obj countByEnumeratingWithState:&v47 objects:v56 count:16];
    }

    while (v40);
  }

  v36 = +[PHACurareShadowEvaluationRunner runnerLog];
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v52 = @"com.apple.com.apple.PhotoAnalysis.PhotoAnalysisLighthousePlugin.modelMetricsV6";
    v53 = 2114;
    v54 = v12;
    _os_log_impl(&dword_22FA28000, v36, OS_LOG_TYPE_DEFAULT, "Sending event to %{public}@, payload: %{public}@", buf, 0x16u);
  }

  AnalyticsSendEvent();
}

- (BOOL)runWithError:(id *)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = +[PHACurareShadowEvaluationRunner runnerLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22FA28000, v5, OS_LOG_TYPE_INFO, "Begin runWithError", buf, 2u);
  }

  v6 = [(PHACurareShadowEvaluationRunner *)self getDatasetWithError:a3];
  v7 = v6;
  if (*a3 || !v6)
  {
    v8 = +[PHACurareShadowEvaluationRunner runnerLog];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v22 = *a3;
      *buf = 138412290;
      v33 = v22;
      _os_log_error_impl(&dword_22FA28000, v8, OS_LOG_TYPE_ERROR, "getDatasetWithError failed with error: %@", buf, 0xCu);
    }

LABEL_24:
    v21 = 0;
  }

  else
  {
    v8 = objc_opt_new();
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v9 = [(PHACurareShadowEvaluationRunner *)self options];
    v10 = [v9 modelInfoArray];

    obj = v10;
    v11 = [v10 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v11)
    {
      v13 = v11;
      v14 = *v29;
      *&v12 = 138412290;
      v26 = v12;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v29 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v28 + 1) + 8 * i);
          v17 = [v16 valueForKeyPath:{@"modelPath", v26}];
          v18 = +[PHACurareShadowEvaluationRunner runnerLog];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            *buf = v26;
            v33 = v17;
            _os_log_impl(&dword_22FA28000, v18, OS_LOG_TYPE_INFO, "Model path at runWithError: %@", buf, 0xCu);
          }

          v19 = [(PHACurareShadowEvaluationRunner *)self evaluateModel:v16 datasetDictionary:v7 error:a3];
          if (!v19 || *a3)
          {
            v23 = +[PHACurareShadowEvaluationRunner runnerLog];
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              v25 = *a3;
              *buf = 138412546;
              v33 = v17;
              v34 = 2112;
              v35 = v25;
              _os_log_error_impl(&dword_22FA28000, v23, OS_LOG_TYPE_ERROR, "evaluateModel failed on positive dataset for model %@, failed with error: %@", buf, 0x16u);
            }

            goto LABEL_24;
          }

          [v8 setObject:v19 forKeyedSubscript:v17];
        }

        v13 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v20 = +[PHACurareShadowEvaluationRunner runnerLog];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22FA28000, v20, OS_LOG_TYPE_INFO, "Call generateCAEventForResults", buf, 2u);
    }

    [(PHACurareShadowEvaluationRunner *)self generateCAEventForResults:v8];
    v21 = 1;
  }

  return v21;
}

- (PHACurareShadowEvaluationRunner)initWithRecipeOptions:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PHACurareShadowEvaluationRunner;
  v6 = [(PHACurareShadowEvaluationRunner *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_options, a3);
  }

  return v7;
}

+ (id)runnerLog
{
  if (runnerLog_onceToken != -1)
  {
    dispatch_once(&runnerLog_onceToken, &__block_literal_global_893);
  }

  v3 = runnerLog_runnerLog;

  return v3;
}

uint64_t __44__PHACurareShadowEvaluationRunner_runnerLog__block_invoke()
{
  runnerLog_runnerLog = os_log_create("com.apple.PhotoAnalysis.PhotoAnalysisLighthousePlugin", "Runner");

  return MEMORY[0x2821F96F8]();
}

@end