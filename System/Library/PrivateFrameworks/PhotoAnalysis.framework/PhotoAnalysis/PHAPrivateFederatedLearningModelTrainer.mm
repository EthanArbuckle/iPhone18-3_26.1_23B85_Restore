@interface PHAPrivateFederatedLearningModelTrainer
- (BOOL)_trueLabelTensor:(id)tensor isEqualToPredictionTensor:(id)predictionTensor;
- (PHAPrivateFederatedLearningModelTrainer)initWithTrainingData:(id)data espressoFileURL:(id)l learningRate:(id)rate modelInputName:(id)name modelOutputName:(id)outputName lossName:(id)lossName optimizerName:(id)optimizerName error:(id *)self0;
- (id)_averageLossAndAccuracyForBatchResults:(id)results error:(id *)error;
- (id)_generateErrorWithErrorCode:(int64_t)code message:(id)message underlyingError:(id)error;
- (id)_getParamsFromTask:(id)task forLayers:(id)layers error:(id *)error;
- (id)trainForNumberOfEpochs:(unint64_t)epochs layersToTrain:(id)train verbose:(BOOL)verbose error:(id *)error;
- (int)_argmax:(float *)_argmax size:(int)size;
@end

@implementation PHAPrivateFederatedLearningModelTrainer

- (BOOL)_trueLabelTensor:(id)tensor isEqualToPredictionTensor:(id)predictionTensor
{
  predictionTensorCopy = predictionTensor;
  tensorCopy = tensor;
  dataPointer = [tensorCopy dataPointer];
  dataPointer2 = [predictionTensorCopy dataPointer];
  shape = [tensorCopy shape];

  v11 = [shape objectAtIndexedSubscript:2];
  intValue = [v11 intValue];

  shape2 = [predictionTensorCopy shape];

  v14 = [shape2 objectAtIndexedSubscript:2];
  intValue2 = [v14 intValue];

  v16 = [(PHAPrivateFederatedLearningModelTrainer *)self _argmax:dataPointer size:intValue];
  v17 = [(PHAPrivateFederatedLearningModelTrainer *)self _argmax:dataPointer2 size:intValue2];
  return intValue == 1 && intValue2 != 1 && roundf(*dataPointer) == v17 || v16 == v17 && vabds_f32(dataPointer[v16], *(dataPointer2 + 4 * v16)) <= 0.1;
}

- (id)_averageLossAndAccuracyForBatchResults:(id)results error:(id *)error
{
  v42[2] = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  numberOfDataPoints = [resultsCopy numberOfDataPoints];
  v8 = numberOfDataPoints;
  if (numberOfDataPoints)
  {
    errorCopy = error;
    v36 = numberOfDataPoints;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0.0;
    while (1)
    {
      v40 = v10;
      v13 = [resultsCopy dataPointAtIndex:v11 error:&v40];
      v14 = v40;

      if (!v13)
      {
        if (errorCopy)
        {
          [(PHAPrivateFederatedLearningModelTrainer *)self _generateErrorWithErrorCode:7 message:@"Training output is nil." underlyingError:v14];
          *errorCopy = v33 = 0;
        }

        else
        {
          v33 = 0;
        }

        v10 = v14;
        goto LABEL_28;
      }

      trainingData = [(PHAPrivateFederatedLearningModelTrainer *)self trainingData];
      v39 = v14;
      v16 = [trainingData dataPointAtIndex:v11 error:&v39];
      v10 = v39;

      if (!v16)
      {
        break;
      }

      modelInferenceOutputName = [(PHAPrivateFederatedLearningModelTrainer *)self modelInferenceOutputName];
      v18 = [v13 objectForKeyedSubscript:modelInferenceOutputName];

      if (!v18)
      {
        if (errorCopy)
        {
          *errorCopy = [(PHAPrivateFederatedLearningModelTrainer *)self _generateErrorWithErrorCode:9 message:@"Prediction output tensor is nil" underlyingError:0];
        }

LABEL_24:
        v33 = 0;
        goto LABEL_28;
      }

      v38 = v10;
      labelName = [(PHAPrivateFederatedLearningModelTrainer *)self labelName];
      v20 = [v16 objectForKeyedSubscript:labelName];

      v21 = [(PHAPrivateFederatedLearningModelTrainer *)self _trueLabelTensor:v20 isEqualToPredictionTensor:v18];
      lossName = [(PHAPrivateFederatedLearningModelTrainer *)self lossName];
      v23 = [v13 objectForKeyedSubscript:lossName];

      if (v23)
      {
        v12 = v12 + *[v23 dataPointer];
      }

      else if (errorCopy)
      {
        *errorCopy = [(PHAPrivateFederatedLearningModelTrainer *)self _generateErrorWithErrorCode:10 message:@"Loss output tensor is nil" underlyingError:0];
      }

      v8 = v36;
      if (!v23)
      {
        v33 = 0;
        v10 = v38;
        goto LABEL_28;
      }

      v9 += v21;
      ++v11;
      v10 = v38;
      if (v36 == v11)
      {
        v24 = v9;
        goto LABEL_14;
      }
    }

    if (errorCopy)
    {
      *errorCopy = [(PHAPrivateFederatedLearningModelTrainer *)self _generateErrorWithErrorCode:8 message:@"Training data point is nil." underlyingError:v10];
    }

    goto LABEL_24;
  }

  v10 = 0;
  v12 = 0.0;
  v24 = 0.0;
LABEL_14:
  *&v7 = v12;
  v25 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
  *&v26 = v24;
  v27 = [MEMORY[0x277CCABB0] numberWithFloat:v26];
  if (v8)
  {
    v29 = v8;
    *&v28 = v12 / v8;
    v30 = [MEMORY[0x277CCABB0] numberWithFloat:v28];

    *&v31 = v24 / v29;
    v32 = [MEMORY[0x277CCABB0] numberWithFloat:v31];

    v25 = v30;
    v27 = v32;
  }

  v41[0] = @"loss";
  v41[1] = @"accuracy";
  v42[0] = v25;
  v42[1] = v27;
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:2];

LABEL_28:

  return v33;
}

- (int)_argmax:(float *)_argmax size:(int)size
{
  __C = -3.4028e38;
  v5 = -1;
  vDSP_maxvi(_argmax, 1, &__C, &v5, size);
  return v5;
}

- (id)_getParamsFromTask:(id)task forLayers:(id)layers error:(id *)error
{
  selfCopy = self;
  taskCopy = task;
  layersCopy = layers;
  v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v24 = taskCopy;
  if ([layersCopy count])
  {
    v9 = 0;
    while (1)
    {
      v10 = [layersCopy objectAtIndexedSubscript:{v9, selfCopy}];
      v27 = 0;
      v11 = [taskCopy getParameterOfType:1 forLayerNamed:v10 error:&v27];
      v12 = v27;
      if (!v11)
      {
        break;
      }

      v26 = 0;
      v13 = [taskCopy getParameterOfType:2 forLayerNamed:v10 error:&v26];
      v14 = v26;
      if (v13)
      {
        v25 = v14;
        v15 = [objc_alloc(MEMORY[0x277D22C40]) initWithDataTensor:v11];
        errorCopy = error;
        v17 = [objc_alloc(MEMORY[0x277D22C40]) initWithDataTensor:v13];
        v18 = [[PHAPrivateFederatedLearningLayerParameters alloc] initWithWeights:v15 bias:v17];
        [v23 setObject:v18 atIndexedSubscript:v9];

        error = errorCopy;
        taskCopy = v24;
        v14 = v25;
      }

      else if (error)
      {
        *error = [(PHAPrivateFederatedLearningModelTrainer *)selfCopy _generateErrorWithErrorCode:3 message:@"Error during espresso training variables (bias) definition" underlyingError:v14];
      }

      if (!v13)
      {
        goto LABEL_14;
      }

      if (++v9 >= [layersCopy count])
      {
        goto LABEL_10;
      }
    }

    if (error)
    {
      *error = [(PHAPrivateFederatedLearningModelTrainer *)selfCopy _generateErrorWithErrorCode:3 message:@"Error during espresso training variables (weights) definition" underlyingError:v12];
    }

LABEL_14:
    v20 = 0;
    v19 = v23;
  }

  else
  {
LABEL_10:
    v19 = v23;
    v20 = v23;
  }

  return v20;
}

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

  v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.PhotoAnalysis.PHAPrivateFederatedLearningModelTrainer" code:code userInfo:v10];

  return v11;
}

- (id)trainForNumberOfEpochs:(unint64_t)epochs layersToTrain:(id)train verbose:(BOOL)verbose error:(id *)error
{
  v63[1] = *MEMORY[0x277D85DE8];
  trainCopy = train;
  v9 = objc_alloc(MEMORY[0x277D07770]);
  espressoFileURL = [(PHAPrivateFederatedLearningModelTrainer *)self espressoFileURL];
  v61 = 0;
  v11 = [v9 initWithInferenceNetworkPath:espressoFileURL error:&v61];
  v43 = v61;

  if (v11)
  {
    v60 = 0;
    v44 = [objc_alloc(MEMORY[0x277D07798]) initForLayers:trainCopy error:&v60];
    v42 = v60;
    if (!v44)
    {
      if (error)
      {
        [(PHAPrivateFederatedLearningModelTrainer *)self _generateErrorWithErrorCode:3 message:@"Error during espresso training variables definition" underlyingError:v42];
        *error = v28 = 0;
      }

      else
      {
        v28 = 0;
      }

      goto LABEL_41;
    }

    v12 = objc_alloc(MEMORY[0x277D07790]);
    lossDefinition = [(PHAPrivateFederatedLearningModelTrainer *)self lossDefinition];
    optimizerDefinition = [(PHAPrivateFederatedLearningModelTrainer *)self optimizerDefinition];
    v59 = 0;
    v41 = [v12 initWithModelDefinition:v11 lossDefinition:lossDefinition variablesDefinition:v44 optimizerDefinition:optimizerDefinition forPlatform:1 error:&v59];
    v39 = v59;

    v15 = v41;
    if (v41)
    {
      v16 = [(PHAPrivateFederatedLearningModelTrainer *)self _getParamsFromTask:v41 forLayers:trainCopy error:error];
      if (v16)
      {
        v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
        *buf = 0;
        v54 = buf;
        v55 = 0x3032000000;
        v56 = __Block_byref_object_copy__4899;
        v57 = __Block_byref_object_dispose__4900;
        v58 = 0;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __94__PHAPrivateFederatedLearningModelTrainer_trainForNumberOfEpochs_layersToTrain_verbose_error___block_invoke_183;
        aBlock[3] = &unk_2788B21D8;
        aBlock[4] = self;
        v51 = buf;
        verboseCopy = verbose;
        v35 = v17;
        v49 = v35;
        v36 = v18;
        v50 = v36;
        v38 = _Block_copy(aBlock);
        trainingData = self->_trainingData;
        v62 = *MEMORY[0x277D07748];
        v20 = _Block_copy(v38);
        v63[0] = v20;
        v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:&v62 count:1];
        v47 = 0;
        LOBYTE(trainingData) = [v41 doTrainingOnData:trainingData forNumberOfEpochs:epochs withCallback:v21 error:&v47];
        v37 = v47;

        if (trainingData)
        {
          v22 = [(PHAPrivateFederatedLearningModelTrainer *)self _getParamsFromTask:v41 forLayers:trainCopy error:error];
          if (v22)
          {
            v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
            for (i = 0; i < [v16 count]; ++i)
            {
              v25 = [v16 objectAtIndexedSubscript:i];
              v26 = [v22 objectAtIndexedSubscript:i];
              v27 = [PHAPrivateFederatedLearningLayerParameterDeltas deltasFromLayerParameters:v26 toLayerParameters:v25];
              [v23 setObject:v27 atIndexedSubscript:i];
            }

            v31 = [PHAPrivateFederatedLearningModelTrainerResponse alloc];
            trainingData = [(PHAPrivateFederatedLearningModelTrainer *)self trainingData];
            v28 = -[PHAPrivateFederatedLearningModelTrainerResponse initWithParameterDeltas:trainingLossesPerEpoch:trainingAccuraciesPerEpoch:trainingEpochs:numberOfTrainingSamples:](v31, "initWithParameterDeltas:trainingLossesPerEpoch:trainingAccuraciesPerEpoch:trainingEpochs:numberOfTrainingSamples:", v23, v35, v36, epochs, [trainingData numberOfDataPoints]);
          }

          else
          {
            if (__PXLog_genericOnceToken != -1)
            {
              dispatch_once(&__PXLog_genericOnceToken, &__block_literal_global_195_4902);
            }

            v33 = __PXLog_genericOSLog;
            if (os_log_type_enabled(__PXLog_genericOSLog, OS_LOG_TYPE_ERROR))
            {
              *v46 = 0;
              _os_log_error_impl(&dword_22FA28000, v33, OS_LOG_TYPE_ERROR, "Error retrieving trained weights and biases", v46, 2u);
            }

            v28 = 0;
          }
        }

        else if (error)
        {
          if (*(v54 + 5))
          {
            v30 = *(v54 + 5);
          }

          else
          {
            v30 = v37;
          }

          [(PHAPrivateFederatedLearningModelTrainer *)self _generateErrorWithErrorCode:6 message:@"Error training espresso model" underlyingError:v30];
          *error = v28 = 0;
        }

        else
        {
          v28 = 0;
        }

        _Block_object_dispose(buf, 8);
      }

      else
      {
        if (__PXLog_genericOnceToken != -1)
        {
          dispatch_once(&__PXLog_genericOnceToken, &__block_literal_global_4898);
        }

        v29 = __PXLog_genericOSLog;
        if (os_log_type_enabled(__PXLog_genericOSLog, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_22FA28000, v29, OS_LOG_TYPE_ERROR, "Error retrieving original weights and biases", buf, 2u);
        }

        v28 = 0;
      }
    }

    else
    {
      if (!error)
      {
        v28 = 0;
LABEL_40:

LABEL_41:
        goto LABEL_42;
      }

      [(PHAPrivateFederatedLearningModelTrainer *)self _generateErrorWithErrorCode:5 message:@"Error creating espresso task definition" underlyingError:v39];
      *error = v28 = 0;
    }

    v15 = v41;
    goto LABEL_40;
  }

  if (error)
  {
    [(PHAPrivateFederatedLearningModelTrainer *)self _generateErrorWithErrorCode:2 message:@"Error during espresso model definition" underlyingError:v43];
    *error = v28 = 0;
  }

  else
  {
    v28 = 0;
  }

LABEL_42:

  return v28;
}

BOOL __94__PHAPrivateFederatedLearningModelTrainer_trainForNumberOfEpochs_layersToTrain_verbose_error___block_invoke_183(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v20 = 0;
  v6 = [v5 _averageLossAndAccuracyForBatchResults:a3 error:&v20];
  v7 = v20;
  v8 = v7;
  if (v6)
  {
    if (*(a1 + 64) == 1)
    {
      if (__PXLog_genericOnceToken != -1)
      {
        dispatch_once(&__PXLog_genericOnceToken, &__block_literal_global_185);
      }

      v9 = __PXLog_genericOSLog;
      if (os_log_type_enabled(__PXLog_genericOSLog, OS_LOG_TYPE_ERROR))
      {
        v17 = v9;
        v18 = [v6 objectForKeyedSubscript:@"loss"];
        v19 = [v6 objectForKeyedSubscript:@"accuracy"];
        *buf = 134218498;
        v22 = a2;
        v23 = 2112;
        v24 = v18;
        v25 = 2112;
        v26 = v19;
        _os_log_error_impl(&dword_22FA28000, v17, OS_LOG_TYPE_ERROR, "Epoch %lu: Loss: %@, Accuracy: %@", buf, 0x20u);
      }
    }

    v10 = *(a1 + 40);
    v11 = [v6 objectForKeyedSubscript:@"loss"];
    [v10 addObject:v11];

    v12 = *(a1 + 48);
    v13 = [v6 objectForKeyedSubscript:@"accuracy"];
    [v12 addObject:v13];
  }

  else
  {
    v14 = *(*(a1 + 56) + 8);
    v15 = v7;
    v13 = *(v14 + 40);
    *(v14 + 40) = v15;
  }

  return v6 != 0;
}

uint64_t __94__PHAPrivateFederatedLearningModelTrainer_trainForNumberOfEpochs_layersToTrain_verbose_error___block_invoke_193()
{
  __PXLog_genericOSLog = os_log_create("com.apple.photoanalysisd", "generic");

  return MEMORY[0x2821F96F8]();
}

uint64_t __94__PHAPrivateFederatedLearningModelTrainer_trainForNumberOfEpochs_layersToTrain_verbose_error___block_invoke_2()
{
  __PXLog_genericOSLog = os_log_create("com.apple.photoanalysisd", "generic");

  return MEMORY[0x2821F96F8]();
}

uint64_t __94__PHAPrivateFederatedLearningModelTrainer_trainForNumberOfEpochs_layersToTrain_verbose_error___block_invoke()
{
  __PXLog_genericOSLog = os_log_create("com.apple.photoanalysisd", "generic");

  return MEMORY[0x2821F96F8]();
}

- (PHAPrivateFederatedLearningModelTrainer)initWithTrainingData:(id)data espressoFileURL:(id)l learningRate:(id)rate modelInputName:(id)name modelOutputName:(id)outputName lossName:(id)lossName optimizerName:(id)optimizerName error:(id *)self0
{
  v39[2] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  lCopy = l;
  rateCopy = rate;
  nameCopy = name;
  outputNameCopy = outputName;
  lossNameCopy = lossName;
  optimizerNameCopy = optimizerName;
  v37.receiver = self;
  v37.super_class = PHAPrivateFederatedLearningModelTrainer;
  v20 = [(PHAPrivateFederatedLearningModelTrainer *)&v37 init];
  v21 = v20;
  if (!v20)
  {
    goto LABEL_10;
  }

  objc_storeStrong(&v20->_trainingData, data);
  objc_storeStrong(&v21->_espressoFileURL, l);
  labelName = v21->_labelName;
  v21->_labelName = @"label";

  objc_storeStrong(&v21->_inputName, name);
  objc_storeStrong(&v21->_modelOutputName, outputName);
  objc_storeStrong(&v21->_lossName, lossName);
  objc_storeStrong(&v21->_optimizerName, optimizerName);
  objc_storeStrong(&v21->_modelInferenceOutputName, outputName);
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(dataCopy, "numberOfDataPoints")}];
  if ([(NSString *)v21->_lossName isEqualToString:@"mse"])
  {
    v24 = [MEMORY[0x277D07760] L2LossWithInputName:v21->_modelOutputName targetInputName:v21->_labelName lossOutputName:v21->_lossName];
  }

  else
  {
    if ([(NSString *)v21->_lossName isEqualToString:@"cross_entropy"])
    {
      [MEMORY[0x277D07760] crossEntropyLossWithInputName:v21->_modelOutputName targetInputName:v21->_labelName lossOutputName:v21->_lossName];
    }

    else
    {
      [MEMORY[0x277D07760] BuiltInLoss:lossNameCopy];
    }
    v24 = ;
  }

  lossDefinition = v21->_lossDefinition;
  v21->_lossDefinition = v24;

  v26 = *MEMORY[0x277D079D8];
  v38[0] = *MEMORY[0x277D079D0];
  v38[1] = v26;
  v39[0] = v23;
  v39[1] = rateCopy;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];
  if ([(NSString *)v21->_optimizerName isEqualToString:@"sgd"])
  {
    v28 = [objc_alloc(MEMORY[0x277D07780]) initWithOptimizationAlgorithm:0 parameters:v27 error:error];
    optimizerDefinition = v21->_optimizerDefinition;
    v21->_optimizerDefinition = v28;

LABEL_10:
    v30 = v21;
    goto LABEL_14;
  }

  if (error)
  {
    optimizerNameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Optimizer '%@' is not supported.", optimizerNameCopy];
    *error = [(PHAPrivateFederatedLearningModelTrainer *)v21 _generateErrorWithErrorCode:4 message:optimizerNameCopy underlyingError:0];
  }

  v30 = 0;
LABEL_14:

  return v30;
}

@end