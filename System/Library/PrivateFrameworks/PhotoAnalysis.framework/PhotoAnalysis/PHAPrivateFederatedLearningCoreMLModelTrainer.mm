@interface PHAPrivateFederatedLearningCoreMLModelTrainer
+ (unint64_t)countForTrainingData:(id)a3;
- (PHAPrivateFederatedLearningCoreMLModelTrainer)initWithTrainingData:(id)a3 programTrainer:(id)a4 evaluationMetricNames:(id)a5;
- (id)_generateErrorWithErrorCode:(int64_t)a3 message:(id)a4 underlyingError:(id)a5;
- (id)_unpackEvaluationMetrics:(id)a3 resultDictionary:(id)a4 error:(id *)a5;
- (id)trainForNumberOfEpochs:(unint64_t)a3 error:(id *)a4;
- (id)unpackResults:(id)a3 error:(id *)a4;
@end

@implementation PHAPrivateFederatedLearningCoreMLModelTrainer

- (id)_generateErrorWithErrorCode:(int64_t)a3 message:(id)a4 underlyingError:(id)a5
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

  v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.PhotoAnalysis.PHAPrivateFederatedLearningCoreMLModelTrainer" code:a3 userInfo:v10];

  return v11;
}

- (id)_unpackEvaluationMetrics:(id)a3 resultDictionary:(id)a4 error:(id *)a5
{
  v48 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v40 = self;
  obj = [(PHAPrivateFederatedLearningCoreMLModelTrainer *)self evaluationMetricNames];
  v10 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v44;
    v37 = v9;
    v38 = a5;
    v35 = *v44;
    v36 = v8;
    do
    {
      v13 = 0;
      v39 = v11;
      do
      {
        if (*v44 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v43 + 1) + 8 * v13);
        v15 = [v8 featureValueForName:v14];
        if ([v15 isUndefined])
        {
          if (!a5)
          {
            goto LABEL_22;
          }

          v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ is undefined", v14];
          *a5 = [(PHAPrivateFederatedLearningCoreMLModelTrainer *)v40 _generateErrorWithErrorCode:2 message:v16 underlyingError:0];
        }

        else
        {
          v17 = [v15 multiArrayValue];
          v16 = v17;
          if (v17)
          {
            v18 = [v17 shape];
            v19 = [v18 objectAtIndexedSubscript:0];
            v20 = [v19 unsignedIntValue];

            v21 = [MEMORY[0x277CBEB18] arrayWithCapacity:v20];
            v22 = [v9 objectForKeyedSubscript:v14];
            v42 = v22;
            if (v22)
            {
              v23 = v22;

              v21 = v23;
            }

            else if (v20)
            {
              do
              {
                [v21 addObject:&unk_2844CC978];
                --v20;
              }

              while (v20);
            }

            if ([v21 count])
            {
              v24 = 0;
              do
              {
                v25 = [v21 objectAtIndexedSubscript:v24];
                v26 = MEMORY[0x277CCABB0];
                [v25 floatValue];
                v28 = v27;
                v29 = [v16 objectAtIndexedSubscript:v24];
                [v29 floatValue];
                *&v31 = v28 + v30;
                v32 = [v26 numberWithFloat:v31];
                [v21 setObject:v32 atIndexedSubscript:v24];

                ++v24;
              }

              while (v24 < [v21 count]);
            }

            v9 = v37;
            [v37 setObject:v21 forKeyedSubscript:v14];

            a5 = v38;
            v11 = v39;
            v12 = v35;
            v8 = v36;
          }

          else
          {
            if (!a5)
            {
              v16 = 0;
              goto LABEL_21;
            }

            v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"metricMLMultiArray is undefined for %@", v14];
            *a5 = [(PHAPrivateFederatedLearningCoreMLModelTrainer *)v40 _generateErrorWithErrorCode:3 message:v21 underlyingError:0];
          }
        }

LABEL_21:

LABEL_22:
        ++v13;
      }

      while (v13 != v11);
      v33 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
      v11 = v33;
    }

    while (v33);
  }

  return v9;
}

- (id)unpackResults:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = [v6 evaluationMetrics];
  v9 = [v8 count];

  if (v9 < 1)
  {
    v13 = v7;
  }

  else
  {
    v10 = 0;
    do
    {
      v11 = [v6 evaluationMetrics];
      v12 = [v11 featuresAtIndex:v10];

      v13 = [(PHAPrivateFederatedLearningCoreMLModelTrainer *)self _unpackEvaluationMetrics:v12 resultDictionary:v7 error:a4];

      ++v10;
      v14 = [v6 evaluationMetrics];
      v15 = [v14 count];

      v7 = v13;
    }

    while (v15 > v10);
  }

  v16 = objc_alloc(MEMORY[0x277CBEB18]);
  v17 = MEMORY[0x277CCABB0];
  [v6 loss];
  v18 = [v17 numberWithDouble:?];
  v19 = [v16 initWithObjects:{v18, 0}];
  [v13 setObject:v19 forKeyedSubscript:@"loss"];

  return v13;
}

- (id)trainForNumberOfEpochs:(unint64_t)a3 error:(id *)a4
{
  v36[1] = *MEMORY[0x277D85DE8];
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = [(PHAPrivateFederatedLearningCoreMLModelTrainer *)self trainingData];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 count];
    if (a4 && !v9)
    {
      goto LABEL_4;
    }
  }

  else if (a4)
  {
LABEL_4:
    *a4 = [(PHAPrivateFederatedLearningCoreMLModelTrainer *)self _generateErrorWithErrorCode:4 message:@"Empty training data" underlyingError:0];
  }

  v10 = [(PHAPrivateFederatedLearningCoreMLModelTrainer *)self trainingData];
  v11 = [PHAPrivateFederatedLearningCoreMLModelTrainer countForTrainingData:v10];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
  v36[0] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
  [v6 setObject:v13 forKeyedSubscript:@"count"];

  v14 = [(PHAPrivateFederatedLearningCoreMLModelTrainer *)self programTrainer];
  v15 = [(PHAPrivateFederatedLearningCoreMLModelTrainer *)self evaluationMetricNames];
  v16 = [v14 evaluateUsingTestData:v8 evaluationMetricNames:v15 error:a4];

  v33 = v16;
  v17 = [(PHAPrivateFederatedLearningCoreMLModelTrainer *)self unpackResults:v16 error:a4];
  if (v17)
  {
    [v6 setObject:v17 forKey:@"Pretraining"];
  }

  v32 = v17;
  if (!a3)
  {
    v18 = 0;
LABEL_17:
    v27 = [(PHAPrivateFederatedLearningCoreMLModelTrainer *)self programTrainer];
    v28 = [v27 copyCurrentTrainingDelta];

    v29 = [v28 flattenedModelUpdate];
    v30 = [[PHAPrivateFederatedLearningCoreModelTrainerResponse alloc] initWithDataPackage:v29 trainingMetrics:v6];

    goto LABEL_18;
  }

  v18 = 0;
  v19 = 0;
  while (1)
  {
    v20 = v18;
    v21 = [(PHAPrivateFederatedLearningCoreMLModelTrainer *)self programTrainer];
    v22 = [(PHAPrivateFederatedLearningCoreMLModelTrainer *)self evaluationMetricNames];
    v35 = v18;
    v23 = v8;
    v24 = [v21 trainUsingTrainingData:v8 evaluationMetricNames:v22 error:&v35];
    v18 = v35;

    if (!v24)
    {
      break;
    }

    v25 = [(PHAPrivateFederatedLearningCoreMLModelTrainer *)self unpackResults:v24 error:a4];
    if (v25)
    {
      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"Epoch %lu", v19];
      [v6 setObject:v25 forKey:v26];
    }

    ++v19;
    v8 = v23;
    if (a3 == v19)
    {
      goto LABEL_17;
    }
  }

  v30 = 0;
  v8 = v23;
  if (a4 && v18)
  {
    v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"Empty training result"];
    [(PHAPrivateFederatedLearningCoreMLModelTrainer *)self _generateErrorWithErrorCode:1 message:v28 underlyingError:v18];
    *a4 = v30 = 0;
LABEL_18:
  }

  return v30;
}

- (PHAPrivateFederatedLearningCoreMLModelTrainer)initWithTrainingData:(id)a3 programTrainer:(id)a4 evaluationMetricNames:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PHAPrivateFederatedLearningCoreMLModelTrainer;
  v12 = [(PHAPrivateFederatedLearningCoreMLModelTrainer *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_trainingData, a3);
    objc_storeStrong(&v13->_programTrainer, a4);
    objc_storeStrong(&v13->_evaluationMetricNames, a5);
  }

  return v13;
}

+ (unint64_t)countForTrainingData:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [a3 array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [v9 featureNames];
        v11 = [v10 anyObject];

        v12 = [v9 featureValueForName:v11];
        v13 = [v12 multiArrayValue];
        v14 = [v13 shape];
        v15 = [v14 objectAtIndexedSubscript:0];
        v6 += [v15 unsignedIntValue];
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end