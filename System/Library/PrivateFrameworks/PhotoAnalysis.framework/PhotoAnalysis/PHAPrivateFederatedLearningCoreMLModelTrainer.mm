@interface PHAPrivateFederatedLearningCoreMLModelTrainer
+ (unint64_t)countForTrainingData:(id)data;
- (PHAPrivateFederatedLearningCoreMLModelTrainer)initWithTrainingData:(id)data programTrainer:(id)trainer evaluationMetricNames:(id)names;
- (id)_generateErrorWithErrorCode:(int64_t)code message:(id)message underlyingError:(id)error;
- (id)_unpackEvaluationMetrics:(id)metrics resultDictionary:(id)dictionary error:(id *)error;
- (id)trainForNumberOfEpochs:(unint64_t)epochs error:(id *)error;
- (id)unpackResults:(id)results error:(id *)error;
@end

@implementation PHAPrivateFederatedLearningCoreMLModelTrainer

- (id)_generateErrorWithErrorCode:(int64_t)code message:(id)message underlyingError:(id)error
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

  v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.PhotoAnalysis.PHAPrivateFederatedLearningCoreMLModelTrainer" code:code userInfo:v10];

  return v11;
}

- (id)_unpackEvaluationMetrics:(id)metrics resultDictionary:(id)dictionary error:(id *)error
{
  v48 = *MEMORY[0x277D85DE8];
  metricsCopy = metrics;
  dictionaryCopy = dictionary;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  selfCopy = self;
  obj = [(PHAPrivateFederatedLearningCoreMLModelTrainer *)self evaluationMetricNames];
  v10 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v44;
    v37 = dictionaryCopy;
    errorCopy = error;
    v35 = *v44;
    v36 = metricsCopy;
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
        v15 = [metricsCopy featureValueForName:v14];
        if ([v15 isUndefined])
        {
          if (!error)
          {
            goto LABEL_22;
          }

          v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ is undefined", v14];
          *error = [(PHAPrivateFederatedLearningCoreMLModelTrainer *)selfCopy _generateErrorWithErrorCode:2 message:v16 underlyingError:0];
        }

        else
        {
          multiArrayValue = [v15 multiArrayValue];
          v16 = multiArrayValue;
          if (multiArrayValue)
          {
            shape = [multiArrayValue shape];
            v19 = [shape objectAtIndexedSubscript:0];
            unsignedIntValue = [v19 unsignedIntValue];

            v21 = [MEMORY[0x277CBEB18] arrayWithCapacity:unsignedIntValue];
            v22 = [dictionaryCopy objectForKeyedSubscript:v14];
            v42 = v22;
            if (v22)
            {
              v23 = v22;

              v21 = v23;
            }

            else if (unsignedIntValue)
            {
              do
              {
                [v21 addObject:&unk_2844CC978];
                --unsignedIntValue;
              }

              while (unsignedIntValue);
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

            dictionaryCopy = v37;
            [v37 setObject:v21 forKeyedSubscript:v14];

            error = errorCopy;
            v11 = v39;
            v12 = v35;
            metricsCopy = v36;
          }

          else
          {
            if (!error)
            {
              v16 = 0;
              goto LABEL_21;
            }

            v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"metricMLMultiArray is undefined for %@", v14];
            *error = [(PHAPrivateFederatedLearningCoreMLModelTrainer *)selfCopy _generateErrorWithErrorCode:3 message:v21 underlyingError:0];
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

  return dictionaryCopy;
}

- (id)unpackResults:(id)results error:(id *)error
{
  resultsCopy = results;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  evaluationMetrics = [resultsCopy evaluationMetrics];
  v9 = [evaluationMetrics count];

  if (v9 < 1)
  {
    v13 = v7;
  }

  else
  {
    v10 = 0;
    do
    {
      evaluationMetrics2 = [resultsCopy evaluationMetrics];
      v12 = [evaluationMetrics2 featuresAtIndex:v10];

      v13 = [(PHAPrivateFederatedLearningCoreMLModelTrainer *)self _unpackEvaluationMetrics:v12 resultDictionary:v7 error:error];

      ++v10;
      evaluationMetrics3 = [resultsCopy evaluationMetrics];
      v15 = [evaluationMetrics3 count];

      v7 = v13;
    }

    while (v15 > v10);
  }

  v16 = objc_alloc(MEMORY[0x277CBEB18]);
  v17 = MEMORY[0x277CCABB0];
  [resultsCopy loss];
  v18 = [v17 numberWithDouble:?];
  v19 = [v16 initWithObjects:{v18, 0}];
  [v13 setObject:v19 forKeyedSubscript:@"loss"];

  return v13;
}

- (id)trainForNumberOfEpochs:(unint64_t)epochs error:(id *)error
{
  v36[1] = *MEMORY[0x277D85DE8];
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  trainingData = [(PHAPrivateFederatedLearningCoreMLModelTrainer *)self trainingData];
  v8 = trainingData;
  if (trainingData)
  {
    v9 = [trainingData count];
    if (error && !v9)
    {
      goto LABEL_4;
    }
  }

  else if (error)
  {
LABEL_4:
    *error = [(PHAPrivateFederatedLearningCoreMLModelTrainer *)self _generateErrorWithErrorCode:4 message:@"Empty training data" underlyingError:0];
  }

  trainingData2 = [(PHAPrivateFederatedLearningCoreMLModelTrainer *)self trainingData];
  v11 = [PHAPrivateFederatedLearningCoreMLModelTrainer countForTrainingData:trainingData2];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
  v36[0] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
  [v6 setObject:v13 forKeyedSubscript:@"count"];

  programTrainer = [(PHAPrivateFederatedLearningCoreMLModelTrainer *)self programTrainer];
  evaluationMetricNames = [(PHAPrivateFederatedLearningCoreMLModelTrainer *)self evaluationMetricNames];
  v16 = [programTrainer evaluateUsingTestData:v8 evaluationMetricNames:evaluationMetricNames error:error];

  v33 = v16;
  v17 = [(PHAPrivateFederatedLearningCoreMLModelTrainer *)self unpackResults:v16 error:error];
  if (v17)
  {
    [v6 setObject:v17 forKey:@"Pretraining"];
  }

  v32 = v17;
  if (!epochs)
  {
    v18 = 0;
LABEL_17:
    programTrainer2 = [(PHAPrivateFederatedLearningCoreMLModelTrainer *)self programTrainer];
    copyCurrentTrainingDelta = [programTrainer2 copyCurrentTrainingDelta];

    flattenedModelUpdate = [copyCurrentTrainingDelta flattenedModelUpdate];
    v30 = [[PHAPrivateFederatedLearningCoreModelTrainerResponse alloc] initWithDataPackage:flattenedModelUpdate trainingMetrics:v6];

    goto LABEL_18;
  }

  v18 = 0;
  v19 = 0;
  while (1)
  {
    v20 = v18;
    programTrainer3 = [(PHAPrivateFederatedLearningCoreMLModelTrainer *)self programTrainer];
    evaluationMetricNames2 = [(PHAPrivateFederatedLearningCoreMLModelTrainer *)self evaluationMetricNames];
    v35 = v18;
    v23 = v8;
    v24 = [programTrainer3 trainUsingTrainingData:v8 evaluationMetricNames:evaluationMetricNames2 error:&v35];
    v18 = v35;

    if (!v24)
    {
      break;
    }

    v25 = [(PHAPrivateFederatedLearningCoreMLModelTrainer *)self unpackResults:v24 error:error];
    if (v25)
    {
      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"Epoch %lu", v19];
      [v6 setObject:v25 forKey:v26];
    }

    ++v19;
    v8 = v23;
    if (epochs == v19)
    {
      goto LABEL_17;
    }
  }

  v30 = 0;
  v8 = v23;
  if (error && v18)
  {
    copyCurrentTrainingDelta = [MEMORY[0x277CCACA8] stringWithFormat:@"Empty training result"];
    [(PHAPrivateFederatedLearningCoreMLModelTrainer *)self _generateErrorWithErrorCode:1 message:copyCurrentTrainingDelta underlyingError:v18];
    *error = v30 = 0;
LABEL_18:
  }

  return v30;
}

- (PHAPrivateFederatedLearningCoreMLModelTrainer)initWithTrainingData:(id)data programTrainer:(id)trainer evaluationMetricNames:(id)names
{
  dataCopy = data;
  trainerCopy = trainer;
  namesCopy = names;
  v15.receiver = self;
  v15.super_class = PHAPrivateFederatedLearningCoreMLModelTrainer;
  v12 = [(PHAPrivateFederatedLearningCoreMLModelTrainer *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_trainingData, data);
    objc_storeStrong(&v13->_programTrainer, trainer);
    objc_storeStrong(&v13->_evaluationMetricNames, names);
  }

  return v13;
}

+ (unint64_t)countForTrainingData:(id)data
{
  v22 = *MEMORY[0x277D85DE8];
  array = [data array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [array countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(array);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        featureNames = [v9 featureNames];
        anyObject = [featureNames anyObject];

        v12 = [v9 featureValueForName:anyObject];
        multiArrayValue = [v12 multiArrayValue];
        shape = [multiArrayValue shape];
        v15 = [shape objectAtIndexedSubscript:0];
        v6 += [v15 unsignedIntValue];
      }

      v5 = [array countByEnumeratingWithState:&v17 objects:v21 count:16];
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