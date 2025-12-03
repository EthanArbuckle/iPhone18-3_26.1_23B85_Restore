@interface CoreMLTrainer
+ (void)initialize;
- (id)evaluateWithModelURL:(id)l dataSource:(id)source error:(id *)error;
- (id)processModelURL:(id)l;
@end

@implementation CoreMLTrainer

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    sLog = os_log_create("com.apple.iCloudSubscriptionOptimizerCore.PFLPlugin", "CoreMLTrainer");

    MEMORY[0x2821F96F8]();
  }
}

- (id)processModelURL:(id)l
{
  v26 = *MEMORY[0x277D85DE8];
  lCopy = l;
  hasDirectoryPath = [lCopy hasDirectoryPath];
  v5 = sLog;
  v6 = os_log_type_enabled(sLog, OS_LOG_TYPE_INFO);
  if (hasDirectoryPath)
  {
    if (v6)
    {
      *buf = 138412290;
      v25 = lCopy;
      _os_log_impl(&dword_275B9B000, v5, OS_LOG_TYPE_INFO, "modelURL %@ is a directory.", buf, 0xCu);
    }

    v7 = lCopy;
  }

  else
  {
    if (v6)
    {
      *buf = 138412290;
      v25 = lCopy;
      _os_log_impl(&dword_275B9B000, v5, OS_LOG_TYPE_INFO, "modelURL %@ is a file URL.", buf, 0xCu);
    }

    absoluteString = [lCopy absoluteString];
    [CFSTR(""model.mil metadata.json];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v9 = v20 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          if ([absoluteString hasSuffix:{v13, v19}])
          {
            v14 = [absoluteString substringToIndex:{objc_msgSend(absoluteString, "length") - objc_msgSend(v13, "length")}];

            absoluteString = v14;
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    v15 = sLog;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [MEMORY[0x277CBEBC0] URLWithString:absoluteString];
      *buf = 138412290;
      v25 = v16;
      _os_log_impl(&dword_275B9B000, v15, OS_LOG_TYPE_INFO, "modelURL is %@.", buf, 0xCu);
    }

    v7 = [MEMORY[0x277CBEBC0] URLWithString:absoluteString];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)evaluateWithModelURL:(id)l dataSource:(id)source error:(id *)error
{
  v116 = *MEMORY[0x277D85DE8];
  lCopy = l;
  sourceCopy = source;
  v91 = sourceCopy;
  v83 = objc_alloc_init(MEMORY[0x277CBFF38]);
  [v83 setComputeUnits:0];
  v10 = [(CoreMLTrainer *)self processModelURL:lCopy];

  v107 = 0;
  v81 = v10;
  v11 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:v10 configuration:v83 error:&v107];
  v84 = v107;
  v82 = v11;
  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x277CBFF70]);
    program = [v82 program];
    [sourceCopy learningRate];
    v106 = v84;
    v87 = [v12 initWithProgram:program learningRate:&v106 error:v14];
    v15 = v106;

    if (v87)
    {
      v90 = [MEMORY[0x277CBEBF8] mutableCopy];
      v92 = [[EvaluationDataSourceEspressoWrapper alloc] initWithEvaluatorDataSource:sourceCopy];
      for (i = 0; ; ++i)
      {
        recordCount = [sourceCopy recordCount];
        if (recordCount / [sourceCopy batchSize] <= i)
        {
          break;
        }

        v18 = [(EvaluationDataSourceEspressoWrapper *)v92 featureProviderAtIndex:i];
        [v90 addObject:v18];

        sourceCopy = v91;
      }

      v105 = v15;
      v86 = [objc_alloc(MEMORY[0x277CBFEB0]) initWithFeatureProviderArray:v90];
      v80 = [v87 evaluateUsingTestData:? error:?];
      v19 = v15;

      [v80 loss];
      v21 = v20;
      v22 = sLog;
      if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        *v114 = v21;
        _os_log_impl(&dword_275B9B000, v22, OS_LOG_TYPE_INFO, "loss before training is: %f", buf, 0xCu);
      }

      array = [MEMORY[0x277CBEB18] array];
      array2 = [MEMORY[0x277CBEB18] array];
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      layersToTrain = [v91 layersToTrain];
      v24 = [layersToTrain countByEnumeratingWithState:&v101 objects:v115 count:16];
      if (v24)
      {
        v25 = *v102;
        do
        {
          for (j = 0; j != v24; ++j)
          {
            if (*v102 != v25)
            {
              objc_enumerationMutation(layersToTrain);
            }

            [array addObject:*(*(&v101 + 1) + 8 * j)];
          }

          v24 = [layersToTrain countByEnumeratingWithState:&v101 objects:v115 count:16];
        }

        while (v24);
      }

      numLocalIterations = [v91 numLocalIterations];
      if (numLocalIterations < 1)
      {
        v35 = -1.0;
      }

      else
      {
        for (k = 0; k != numLocalIterations; ++k)
        {
          v29 = [MEMORY[0x277CBEB98] setWithArray:array];
          v100 = v19;
          v30 = [v87 trainUsingTrainingData:v86 evaluationMetricNames:v29 error:&v100];
          v31 = v100;

          v32 = sLog;
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            [v30 loss];
            *buf = 67109376;
            *v114 = k;
            *&v114[4] = 2048;
            *&v114[6] = v33;
            _os_log_impl(&dword_275B9B000, v32, OS_LOG_TYPE_INFO, "fit: iter=%d loss=%f", buf, 0x12u);
          }

          [v30 loss];
          v35 = v34;
          v36 = MEMORY[0x277CCABB0];
          [v30 loss];
          v37 = [v36 numberWithDouble:?];
          [array2 addObject:v37];

          v19 = v31;
        }

        v19 = v31;
      }

      v99 = v19;
      v79 = [v87 evaluateUsingTestData:v86 error:&v99];
      v43 = v99;

      [v79 loss];
      v45 = v44;
      v46 = sLog;
      if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        *v114 = v45;
        _os_log_impl(&dword_275B9B000, v46, OS_LOG_TYPE_INFO, "loss after training is: %f", buf, 0xCu);
      }

      copyCurrentTrainingDelta = [v87 copyCurrentTrainingDelta];
      flattenedModelUpdate = [copyCurrentTrainingDelta flattenedModelUpdate];
      v47 = sLog;
      if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_275B9B000, v47, OS_LOG_TYPE_INFO, "Started model evaluation", buf, 2u);
      }

      modelOutputName = [v91 modelOutputName];
      modelInputSchemaLabelName = [v91 modelInputSchemaLabelName];
      v48 = MEMORY[0x277CBEB98];
      v112 = modelOutputName;
      v49 = [MEMORY[0x277CBEA60] arrayWithObjects:&v112 count:1];
      v50 = [v48 setWithArray:v49];
      v98 = v43;
      v93 = [v87 evaluateUsingTestData:v86 evaluationMetricNames:v50 error:&v98];
      v84 = v98;

      array3 = [MEMORY[0x277CBEB18] array];
      for (m = 0; ; ++m)
      {
        evaluationMetrics = [v93 evaluationMetrics];
        v52 = [evaluationMetrics count] > m;

        if (!v52)
        {
          break;
        }

        evaluationMetrics2 = [v93 evaluationMetrics];
        v94 = [evaluationMetrics2 featuresAtIndex:m];

        v54 = [v94 featureValueForName:modelOutputName];
        multiArrayValue = [v54 multiArrayValue];

        v56 = [(EvaluationDataSourceEspressoWrapper *)v92 featureProviderAtIndex:m];
        v57 = [v56 objectForKeyedSubscript:modelInputSchemaLabelName];
        multiArrayValue2 = [v57 multiArrayValue];

        for (n = 0; ; ++n)
        {
          v60 = [multiArrayValue count];
          v61 = [multiArrayValue2 count];
          v62 = v60 >= v61 ? v61 : v60;
          if (v62 <= n)
          {
            break;
          }

          dictionary = [MEMORY[0x277CBEB38] dictionary];
          v64 = MEMORY[0x277CCABB0];
          v65 = [multiArrayValue objectAtIndexedSubscript:n];
          [v65 doubleValue];
          v66 = [v64 numberWithDouble:?];
          [dictionary setValue:v66 forKey:@"probability"];

          v67 = MEMORY[0x277CCABB0];
          v68 = [multiArrayValue2 objectAtIndexedSubscript:n];
          [v68 doubleValue];
          v70 = [v67 numberWithBool:v69 > 0.0];
          [dictionary setValue:v70 forKey:@"label"];

          [array3 addObject:dictionary];
        }
      }

      v110[0] = @"LossBeforeTraining";
      v71 = [MEMORY[0x277CCABB0] numberWithDouble:v21];
      v111[0] = v71;
      v110[1] = @"LossAfterTraining";
      v72 = [MEMORY[0x277CCABB0] numberWithDouble:v45];
      v111[1] = v72;
      v110[2] = @"TrainingLoss";
      v73 = [MEMORY[0x277CCABB0] numberWithDouble:v35];
      v111[2] = v73;
      v111[3] = array;
      v110[3] = @"UpdatedModelIndices";
      v110[4] = @"ModelDeltas";
      v111[4] = flattenedModelUpdate;
      v110[5] = @"TrainingLosses";
      v108 = @"losses";
      v109 = array2;
      v74 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v109 forKeys:&v108 count:1];
      v110[6] = @"OtherEvaluationMetric";
      v111[5] = v74;
      v111[6] = array3;
      v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v111 forKeys:v110 count:7];
    }

    else
    {
      v41 = sLog;
      if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_275B9B000, v41, OS_LOG_TYPE_INFO, "Failed to load MLProgramTrainer.", buf, 2u);
      }

      if (v15)
      {
        v42 = v15;
        v40 = 0;
        *error = v15;
        v84 = v15;
      }

      else
      {
        v84 = 0;
        v40 = 0;
      }
    }
  }

  else
  {
    v38 = sLog;
    if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *v114 = v10;
      _os_log_impl(&dword_275B9B000, v38, OS_LOG_TYPE_INFO, "Failed to load model from %@", buf, 0xCu);
    }

    if (v84)
    {
      v39 = v84;
      v40 = 0;
      *error = v84;
    }

    else
    {
      v84 = 0;
      v40 = 0;
    }
  }

  v75 = *MEMORY[0x277D85DE8];

  return v40;
}

@end