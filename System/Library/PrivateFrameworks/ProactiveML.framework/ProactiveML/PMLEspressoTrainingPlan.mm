@interface PMLEspressoTrainingPlan
+ (BOOL)isValidGradient:(id)gradient error:(id *)error;
+ (id)_calculateGradientInPlaceForTask:(id)task startingParameters:(id)parameters globalNames:(id)names weightNames:(id)weightNames biasNames:(id)biasNames;
+ (id)_calculateTrainingMetricsWithSamplingProb:(double)prob groundTruthProvider:(id)provider predictionsProvider:(id)predictionsProvider trueLabelName:(id)name trainingOutputName:(id)outputName lossValueName:(id)valueName probThreshold:(double)threshold includeSummableOnly:(BOOL)self0;
+ (id)_getModelParametersForTask:(id)task globalNames:(id)names weightNames:(id)weightNames biasNames:(id)biasNames error:(id *)error;
+ (id)_iterateModelParametersForTask:(id)task globalNames:(id)names weightNames:(id)weightNames biasNames:(id)biasNames block:(id)block;
+ (int)argmax:(id)argmax;
+ (unint64_t)numberOfParametersInTensor:(id)tensor;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToEspressoTrainingPlan:(id)plan;
- (NSString)description;
- (PMLEspressoTrainingPlan)initWithMetaTrainingVariables:(id)variables espressoTrainingVariables:(id)trainingVariables;
- (PMLEspressoTrainingPlan)initWithPlist:(id)plist chunks:(id)chunks context:(id)context;
- (id)_newTaskForTraining;
- (id)_updateResultsReferenceCallback:(id)callback;
- (id)runWithError:(id *)error;
- (id)toPlistWithChunks:(id)chunks;
@end

@implementation PMLEspressoTrainingPlan

- (id)toPlistWithChunks:(id)chunks
{
  v12[2] = *MEMORY[0x277D85DE8];
  v11[0] = @"META_TRAINING_VARIABLES";
  mtv = self->_mtv;
  chunksCopy = chunks;
  v6 = [(PMLMetaTrainingVariables *)mtv toPlistWithChunks:chunksCopy];
  v11[1] = @"ESPRESSO_TRAINING_VARIABLES";
  v12[0] = v6;
  v7 = [(PMLEspressoTrainingVariables *)self->_etv toPlistWithChunks:chunksCopy];

  v12[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (PMLEspressoTrainingPlan)initWithPlist:(id)plist chunks:(id)chunks context:(id)context
{
  plistCopy = plist;
  chunksCopy = chunks;
  contextCopy = context;
  v11 = [PMLMetaTrainingVariables alloc];
  v12 = [plistCopy objectForKeyedSubscript:@"META_TRAINING_VARIABLES"];
  v13 = [(PMLMetaTrainingVariables *)v11 initWithPlist:v12 chunks:chunksCopy context:contextCopy];

  if (!v13)
  {
    v16 = PML_LogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_260D68000, v16, OS_LOG_TYPE_ERROR, "Unable to init PMLEspressoTrainingPlan because unable to init PMLMetaTrainingVariables", buf, 2u);
    }

    goto LABEL_9;
  }

  v14 = [PMLEspressoTrainingVariables alloc];
  v15 = [plistCopy objectForKeyedSubscript:@"ESPRESSO_TRAINING_VARIABLES"];
  v16 = [(PMLEspressoTrainingVariables *)v14 initWithPlist:v15 chunks:chunksCopy context:contextCopy];

  if (!v16)
  {
    v18 = PML_LogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *v20 = 0;
      _os_log_error_impl(&dword_260D68000, v18, OS_LOG_TYPE_ERROR, "Unable to init PMLEspressoTrainingPlan because unable to init PMLEspressoTrainingVariables", v20, 2u);
    }

    v16 = 0;
LABEL_9:
    selfCopy = 0;
    goto LABEL_10;
  }

  self = [(PMLEspressoTrainingPlan *)self initWithMetaTrainingVariables:v13 espressoTrainingVariables:v16];
  selfCopy = self;
LABEL_10:

  return selfCopy;
}

- (NSString)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<PMLEspressoTrainingPlan '%@'>", self->_planId];

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PMLEspressoTrainingPlan *)self isEqualToEspressoTrainingPlan:v5];
  }

  return v6;
}

- (BOOL)isEqualToEspressoTrainingPlan:(id)plan
{
  planCopy = plan;
  planId = self->_planId;
  planId = [planCopy planId];
  v7 = [(NSString *)planId isEqual:planId]&& [(PMLMetaTrainingVariables *)self->_mtv isEqualToMetaTrainingVariables:planCopy[3]]&& [(PMLEspressoTrainingVariables *)self->_etv isEqualToEspressoTrainingVariables:planCopy[4]];

  return v7;
}

- (id)_updateResultsReferenceCallback:(id)callback
{
  objc_storeStrong(&self->_groundTruth, callback);
  callbackCopy = callback;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__PMLEspressoTrainingPlan__updateResultsReferenceCallback___block_invoke;
  v8[3] = &unk_279AC0478;
  v8[4] = self;
  v6 = MEMORY[0x2666EE8E0](v8);

  return v6;
}

- (id)runWithError:(id *)error
{
  v75 = *MEMORY[0x277D85DE8];
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = __Block_byref_object_copy__2913;
  v64 = __Block_byref_object_dispose__2914;
  v65 = 0;
  v5 = objc_opt_class();
  taskDefinition = self->_taskDefinition;
  globalsToGetGradientsFor = [(PMLEspressoTrainingVariables *)self->_etv globalsToGetGradientsFor];
  layerWeightsToGetGradientsFor = [(PMLEspressoTrainingVariables *)self->_etv layerWeightsToGetGradientsFor];
  layerBiasesToGetGradientsFor = [(PMLEspressoTrainingVariables *)self->_etv layerBiasesToGetGradientsFor];
  v10 = (v61 + 5);
  obj = v61[5];
  v11 = [v5 _getModelParametersForTask:taskDefinition globalNames:globalsToGetGradientsFor weightNames:layerWeightsToGetGradientsFor biasNames:layerBiasesToGetGradientsFor error:&obj];
  objc_storeStrong(v10, obj);

  if (v11)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v73 = 0x2020000000;
    v74 = 0;
    v58[0] = 0;
    v58[1] = v58;
    v58[2] = 0x2020000000;
    v58[3] = 0;
    store = [(PMLMetaTrainingVariables *)self->_mtv store];
    sessionDescriptor = [(PMLMetaTrainingVariables *)self->_mtv sessionDescriptor];
    +[PMLTrainingStore lastUsedTimestampLimit];
    v15 = v14;
    labelsToTrainOn = [(PMLMetaTrainingVariables *)self->_mtv labelsToTrainOn];
    trainingSetSize = [(PMLMetaTrainingVariables *)self->_mtv trainingSetSize];
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __40__PMLEspressoTrainingPlan_runWithError___block_invoke;
    v57[3] = &unk_279AC03D8;
    v57[4] = self;
    v57[5] = &buf;
    v57[6] = &v60;
    v57[7] = v58;
    [store loadDataForModel:sessionDescriptor privacyBudgetRefreshPeriod:labelsToTrainOn labels:trainingSetSize batchSize:v57 block:v15];

    if (!*(*(&buf + 1) + 24))
    {
      v21 = PML_LogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *v70 = 0;
        _os_log_error_impl(&dword_260D68000, v21, OS_LOG_TYPE_ERROR, "Returning nil since no training was done", v70, 2u);
      }

      goto LABEL_15;
    }

    if (v61[5])
    {
      v18 = PML_LogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *v70 = 0;
        _os_log_error_impl(&dword_260D68000, v18, OS_LOG_TYPE_ERROR, "Returning nil and early from training since an error occurred during training", v70, 2u);
      }

      if (error)
      {
LABEL_20:
        v20 = 0;
        *error = v61[5];
        goto LABEL_36;
      }

LABEL_15:
      v20 = 0;
LABEL_36:
      _Block_object_dispose(v58, 8);
      _Block_object_dispose(&buf, 8);
      goto LABEL_37;
    }

    v22 = objc_opt_class();
    v23 = self->_taskDefinition;
    globalsToGetGradientsFor2 = [(PMLEspressoTrainingVariables *)self->_etv globalsToGetGradientsFor];
    layerWeightsToGetGradientsFor2 = [(PMLEspressoTrainingVariables *)self->_etv layerWeightsToGetGradientsFor];
    layerBiasesToGetGradientsFor2 = [(PMLEspressoTrainingVariables *)self->_etv layerBiasesToGetGradientsFor];
    v27 = [v22 _calculateGradientInPlaceForTask:v23 startingParameters:v11 globalNames:globalsToGetGradientsFor2 weightNames:layerWeightsToGetGradientsFor2 biasNames:layerBiasesToGetGradientsFor2];
    v28 = v61[5];
    v61[5] = v27;

    if (v61[5])
    {
      v29 = PML_LogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v52 = v61[5];
        *v70 = 138412290;
        v71 = v52;
        _os_log_error_impl(&dword_260D68000, v29, OS_LOG_TYPE_ERROR, "Returning nil since an error occurred when calculating the gradient: %@", v70, 0xCu);
      }

      if (error)
      {
        goto LABEL_20;
      }

      goto LABEL_15;
    }

    v30 = [[PMLMutableDenseVector alloc] initWithMutableData:v11];
    if (![PMLEspressoTrainingPlan isValidGradient:v30 error:error])
    {
      goto LABEL_34;
    }

    *v70 = 1065353216;
    noiseStrategy = [(PMLMetaTrainingVariables *)self->_mtv noiseStrategy];
    v32 = [noiseStrategy scaleAndAddNoiseToDenseVector:v30 usingNorm:-[PMLMetaTrainingVariables reportScale](self->_mtv scaleFactor:{"reportScale"), v70}];

    if (v32)
    {
      planId = [(PMLMetaTrainingVariables *)self->_mtv planId];
      v55 = [PMLPlanDescriptor descriptorFromPlanId:planId];

      v20 = objc_opt_new();
      v68[0] = @"plan";
      v66[0] = @"name";
      name = [v55 name];
      v67[0] = name;
      v66[1] = @"version";
      version = [v55 version];
      v67[1] = version;
      v66[2] = @"locale";
      locale = [v55 locale];
      v67[2] = locale;
      v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:v66 count:3];
      v69[0] = v36;
      v68[1] = @"gradient";
      data = [(PMLDenseVector *)v30 data];
      v69[1] = data;
      v68[2] = @"serverIteration";
      v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PMLMetaTrainingVariables currentServerIteration](self->_mtv, "currentServerIteration")}];
      v69[2] = v38;
      v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:v68 count:3];
      [v20 addEntriesFromDictionary:v39];

      summableMetricsOnly = [(PMLMetaTrainingVariables *)self->_mtv summableMetricsOnly];
      if ([MEMORY[0x277D42590] isInternalBuild])
      {
        v40 = 1.0;
      }

      else
      {
        v40 = 0.01;
      }

      trainingPredictions = self->_trainingPredictions;
      groundTruth = self->_groundTruth;
      trueLabelName = [(PMLEspressoTrainingVariables *)self->_etv trueLabelName];
      trainingOutputName = [(PMLEspressoTrainingVariables *)self->_etv trainingOutputName];
      lossValueName = [(PMLEspressoTrainingVariables *)self->_etv lossValueName];
      [(PMLMetaTrainingVariables *)self->_mtv probThreshold];
      v47 = [PMLEspressoTrainingPlan _calculateTrainingMetricsWithSamplingProb:groundTruth groundTruthProvider:trainingPredictions predictionsProvider:trueLabelName trueLabelName:trainingOutputName trainingOutputName:lossValueName lossValueName:summableMetricsOnly probThreshold:v40 includeSummableOnly:v46];

      if (v47)
      {
        [v20 addEntriesFromDictionary:v47];
      }

      goto LABEL_35;
    }

    v49 = PML_LogHandle();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      *v56 = 0;
      _os_log_error_impl(&dword_260D68000, v49, OS_LOG_TYPE_ERROR, "scaleAndAddNoiseToDenseVector failed", v56, 2u);
    }

    if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"ProactiveMLErrorDomain" code:7 userInfo:0];
      *error = v20 = 0;
    }

    else
    {
LABEL_34:
      v20 = 0;
    }

LABEL_35:

    goto LABEL_36;
  }

  v19 = PML_LogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v48 = v61[5];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v48;
    _os_log_error_impl(&dword_260D68000, v19, OS_LOG_TYPE_ERROR, "Returning nil since unable to snapshot starting model parameters: %@", &buf, 0xCu);
  }

  v20 = 0;
  if (error)
  {
    *error = v61[5];
  }

LABEL_37:

  _Block_object_dispose(&v60, 8);
  v50 = *MEMORY[0x277D85DE8];

  return v20;
}

void __40__PMLEspressoTrainingPlan_runWithError___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, _BYTE *a5)
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if ([v8 count])
  {
    ++*(*(*(a1 + 40) + 8) + 24);
    v10 = [PMLEspressoDataProvider alloc];
    v11 = [*(*(a1 + 32) + 32) inputName];
    v12 = [*(*(a1 + 32) + 32) inputDim];
    v13 = [*(*(a1 + 32) + 32) trueLabelName];
    v14 = [(PMLEspressoDataProvider *)v10 initWithRowsData:v8 labelsData:v9 inputName:v11 inputDim:v12 trueLabelName:v13];

    if (v14)
    {
      v15 = *(a1 + 32);
      v16 = *(v15 + 16);
      v17 = [*(v15 + 24) epochsPerBatch];
      v31 = *MEMORY[0x277D07748];
      v18 = [*(a1 + 32) _updateResultsReferenceCallback:v14];
      v32 = v18;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      v20 = *(*(a1 + 48) + 8);
      obj = *(v20 + 40);
      LODWORD(v16) = [v16 doTrainingOnData:v14 forNumberOfEpochs:v17 withCallback:v19 error:&obj];
      objc_storeStrong((v20 + 40), obj);

      if (v16 && !*(*(*(a1 + 48) + 8) + 40))
      {
        *(*(*(a1 + 56) + 8) + 24) += [v8 count];
        v29 = *(*(*(a1 + 56) + 8) + 24);
        if (v29 < [*(*(a1 + 32) + 24) maxSessionsToTrainOn])
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      v21 = PML_LogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = *(*(*(a1 + 48) + 8) + 40);
        *buf = 138412290;
        v36 = v22;
        _os_log_error_impl(&dword_260D68000, v21, OS_LOG_TYPE_ERROR, "Training was unsuccessful: %@", buf, 0xCu);
      }
    }

    else
    {
      v23 = PML_LogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v36 = @"Unable to convert session batch data into espresso data provider";
        _os_log_error_impl(&dword_260D68000, v23, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      v24 = MEMORY[0x277CCA9B8];
      v33 = *MEMORY[0x277CCA450];
      v34 = @"Unable to convert session batch data into espresso data provider";
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      v25 = [v24 errorWithDomain:@"ProactiveMLErrorDomain" code:200 userInfo:v21];
      v26 = *(*(a1 + 48) + 8);
      v27 = *(v26 + 40);
      *(v26 + 40) = v25;
    }

LABEL_11:
    *a5 = 1;
LABEL_12:
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (id)_newTaskForTraining
{
  v32[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D07770]);
  trainingNetworkPath = [(PMLEspressoTrainingVariables *)self->_etv trainingNetworkPath];
  inputName = [(PMLEspressoTrainingVariables *)self->_etv inputName];
  v32[0] = inputName;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
  outputName = [(PMLEspressoTrainingVariables *)self->_etv outputName];
  v31 = outputName;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
  inputName2 = [(PMLEspressoTrainingVariables *)self->_etv inputName];
  v30[0] = inputName2;
  trueLabelName = [(PMLEspressoTrainingVariables *)self->_etv trueLabelName];
  v30[1] = trueLabelName;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
  lossValueName = [(PMLEspressoTrainingVariables *)self->_etv lossValueName];
  v29[0] = lossValueName;
  trainingOutputName = [(PMLEspressoTrainingVariables *)self->_etv trainingOutputName];
  v29[1] = trainingOutputName;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
  trainingControlVariableName = [(PMLEspressoTrainingVariables *)self->_etv trainingControlVariableName];
  initializerName = [(PMLEspressoTrainingVariables *)self->_etv initializerName];
  v26 = 0;
  v10 = [v3 initWithTrainingNetworkPath:trainingNetworkPath inferenceInputs:v18 inferenceOutputs:v19 trainingInputs:v4 trainingOutputs:v7 trainingControlVariableName:trainingControlVariableName withInitializer:initializerName error:&v26];
  v11 = v26;

  if (!v10 || v11)
  {
    v12 = PML_LogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v28 = v11;
      _os_log_error_impl(&dword_260D68000, v12, OS_LOG_TYPE_ERROR, "Unable to successfully initialize model: %@", buf, 0xCu);
    }

    goto LABEL_11;
  }

  v25 = 0;
  v12 = [objc_alloc(MEMORY[0x277D07790]) initWithTrainingModelDefinition:v10 forPlatform:1 error:&v25];
  v13 = v25;
  v11 = v13;
  if (!v12 || v13)
  {
    v15 = PML_LogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v28 = v11;
      _os_log_error_impl(&dword_260D68000, v15, OS_LOG_TYPE_ERROR, "Unable to create task definition: %@", buf, 0xCu);
    }

LABEL_11:
    v14 = 0;
    goto LABEL_12;
  }

  v12 = v12;
  v14 = v12;
LABEL_12:

  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

- (PMLEspressoTrainingPlan)initWithMetaTrainingVariables:(id)variables espressoTrainingVariables:(id)trainingVariables
{
  v30 = *MEMORY[0x277D85DE8];
  variablesCopy = variables;
  trainingVariablesCopy = trainingVariables;
  v27.receiver = self;
  v27.super_class = PMLEspressoTrainingPlan;
  v9 = [(PMLEspressoTrainingPlan *)&v27 init];
  if (!v9)
  {
    goto LABEL_12;
  }

  planId = [variablesCopy planId];
  planId = v9->_planId;
  v9->_planId = planId;

  objc_storeStrong(&v9->_mtv, variables);
  objc_storeStrong(&v9->_etv, trainingVariables);
  _newTaskForTraining = [(PMLEspressoTrainingPlan *)v9 _newTaskForTraining];
  taskDefinition = v9->_taskDefinition;
  v9->_taskDefinition = _newTaskForTraining;

  if (!v9->_taskDefinition)
  {
    v22 = PML_LogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_260D68000, v22, OS_LOG_TYPE_ERROR, "Unable to create task definition, returning nil for PMLEspressoTrainingPlan", buf, 2u);
    }

    goto LABEL_10;
  }

  v14 = objc_autoreleasePoolPush();
  v15 = v9->_taskDefinition;
  globalsToGetGradientsFor = [(PMLEspressoTrainingVariables *)v9->_etv globalsToGetGradientsFor];
  layerWeightsToGetGradientsFor = [(PMLEspressoTrainingVariables *)v9->_etv layerWeightsToGetGradientsFor];
  layerBiasesToGetGradientsFor = [(PMLEspressoTrainingVariables *)v9->_etv layerBiasesToGetGradientsFor];
  v26 = 0;
  v19 = [PMLEspressoTrainingPlan _getModelParametersForTask:v15 globalNames:globalsToGetGradientsFor weightNames:layerWeightsToGetGradientsFor biasNames:layerBiasesToGetGradientsFor error:&v26];
  v20 = v26;

  if (!v20)
  {
    objc_autoreleasePoolPop(v14);
LABEL_12:
    v23 = v9;
    goto LABEL_13;
  }

  v21 = PML_LogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v29 = v20;
    _os_log_error_impl(&dword_260D68000, v21, OS_LOG_TYPE_ERROR, "Unable to fetch parameters requested in weights and biases during validation, returning nil for PMLEspressoTrainingPlan: %@", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v14);
LABEL_10:
  v23 = 0;
LABEL_13:

  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

+ (id)_calculateTrainingMetricsWithSamplingProb:(double)prob groundTruthProvider:(id)provider predictionsProvider:(id)predictionsProvider trueLabelName:(id)name trainingOutputName:(id)outputName lossValueName:(id)valueName probThreshold:(double)threshold includeSummableOnly:(BOOL)self0
{
  v125[1] = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  predictionsProviderCopy = predictionsProvider;
  nameCopy = name;
  outputNameCopy = outputName;
  valueNameCopy = valueName;
  if (prob <= 0.0 || prob > 1.0)
  {
    PML_LogHandle();
    *&v82 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      probCopy = prob;
      _os_log_error_impl(&dword_260D68000, v82, OS_LOG_TYPE_ERROR, "Sampling probability is invalid value %f", buf, 0xCu);
    }

    goto LABEL_56;
  }

  *&v22 = COERCE_DOUBLE([providerCopy numberOfDataPoints]);
  *&v23 = COERCE_DOUBLE([predictionsProviderCopy numberOfDataPoints]);
  v24 = *&v23;
  if (*&v22 == 0.0 || *&v23 == 0.0)
  {
    PML_LogHandle();
    *&v82 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      probCopy = *&v22;
      v118 = 2048;
      v119 = v24;
      _os_log_impl(&dword_260D68000, v82, OS_LOG_TYPE_DEFAULT, "Returning nil for training metrics since 0 points for ground truth %tu and / or training results %tu", buf, 0x16u);
    }

LABEL_56:
    v72 = 0;
    goto LABEL_85;
  }

  onlyCopy = only;
  v101 = valueNameCopy;
  v102 = outputNameCopy;
  v100 = nameCopy;
  v125[0] = nameCopy;
  [MEMORY[0x277CBEA60] arrayWithObjects:v125 count:1];
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  obj = v115 = 0u;
  v25 = [obj countByEnumeratingWithState:&v112 objects:v124 count:16];
  v26 = predictionsProviderCopy;
  if (v25)
  {
    v27 = v25;
    v28 = *v113;
    v96 = v24;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v113 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v30 = *(*(&v112 + 1) + 8 * i);
        v31 = objc_autoreleasePoolPush();
        v111 = 0;
        v32 = [providerCopy dataPointAtIndex:0 error:&v111];
        v33 = v111;
        if (*&v33 != 0.0)
        {
          v82 = v33;
          v83 = PML_LogHandle();
          if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            probCopy = *&v82;
            _os_log_error_impl(&dword_260D68000, v83, OS_LOG_TYPE_ERROR, "Unable to get ground truth value for key validation: %@", buf, 0xCu);
          }

          goto LABEL_62;
        }

        v34 = [v32 objectForKeyedSubscript:*&v30];

        if (!v34)
        {
          v83 = PML_LogHandle();
          if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            probCopy = v30;
            v118 = 2112;
            v119 = 0.0;
            _os_log_error_impl(&dword_260D68000, v83, OS_LOG_TYPE_ERROR, "Unable to get %@ key for ground truth: %@", buf, 0x16u);
          }

          *&v82 = 0.0;
LABEL_62:
          predictionsProviderCopy = v26;
          nameCopy = v100;
          v80 = obj;

          objc_autoreleasePoolPop(v31);
          v72 = 0;
          v81 = obj;
          valueNameCopy = v101;
          outputNameCopy = v102;
          goto LABEL_84;
        }

        objc_autoreleasePoolPop(v31);
      }

      v27 = [obj countByEnumeratingWithState:&v112 objects:v124 count:16];
      predictionsProviderCopy = v26;
      v24 = v96;
    }

    while (v27);
  }

  v123[0] = v102;
  v123[1] = v101;
  [MEMORY[0x277CBEA60] arrayWithObjects:v123 count:2];
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v99 = v110 = 0u;
  v35 = [v99 countByEnumeratingWithState:&v107 objects:v122 count:16];
  if (!v35)
  {
    goto LABEL_23;
  }

  v36 = v35;
  v37 = *v108;
  v97 = v24;
  do
  {
    for (j = 0; j != v36; ++j)
    {
      if (*v108 != v37)
      {
        objc_enumerationMutation(v99);
      }

      v39 = *(*(&v107 + 1) + 8 * j);
      v40 = objc_autoreleasePoolPush();
      v106 = 0;
      v41 = [v26 dataPointAtIndex:0 error:&v106];
      v42 = v106;
      if (*&v42 != 0.0)
      {
        v82 = v42;
        v84 = PML_LogHandle();
        if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          probCopy = *&v82;
          _os_log_error_impl(&dword_260D68000, v84, OS_LOG_TYPE_ERROR, "Unable to get training result for key validation: %@", buf, 0xCu);
        }

        goto LABEL_68;
      }

      v43 = [v41 objectForKeyedSubscript:*&v39];

      if (!v43)
      {
        v84 = PML_LogHandle();
        if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          probCopy = v39;
          v118 = 2112;
          v119 = 0.0;
          _os_log_error_impl(&dword_260D68000, v84, OS_LOG_TYPE_ERROR, "Unable to get %@ key for training result: %@", buf, 0x16u);
        }

        *&v82 = 0.0;
LABEL_68:
        predictionsProviderCopy = v26;
        v81 = v99;
        nameCopy = v100;
        v80 = obj;

        objc_autoreleasePoolPop(v40);
        v72 = 0;
        v85 = v99;
        valueNameCopy = v101;
        outputNameCopy = v102;
        goto LABEL_83;
      }

      objc_autoreleasePoolPop(v40);
    }

    v36 = [v99 countByEnumeratingWithState:&v107 objects:v122 count:16];
    predictionsProviderCopy = v26;
    v24 = v97;
  }

  while (v36);
LABEL_23:

  if (v22 != *&v24)
  {
    v44 = PML_LogHandle();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = v24;
      *&v46 = COERCE_DOUBLE([providerCopy numberOfDataPoints]);
      v47 = COERCE_DOUBLE([predictionsProviderCopy numberOfDataPoints]);
      *buf = 134218240;
      probCopy = *&v46;
      v24 = v45;
      v118 = 2048;
      v119 = v47;
      _os_log_impl(&dword_260D68000, v44, OS_LOG_TYPE_DEFAULT, "The number of ground truth values %tu does not match number of inference results %tu", buf, 0x16u);
    }
  }

  if (v22 < *&v24)
  {
    v24 = *&v22;
  }

  v95 = objc_opt_new();
  predictionsProviderCopy = v26;
  v98 = objc_opt_new();
  v48 = objc_opt_new();
  v49 = 0;
  v93 = 0;
  v94 = v48;
  v50 = 0.0;
  v90 = v24;
  if (*&v24 <= 1uLL)
  {
    v51 = 1;
  }

  else
  {
    v51 = *&v24;
  }

  v52 = 0.0;
  while (2)
  {
    v53 = objc_autoreleasePoolPush();
    [v48 nextDouble];
    if (v54 > prob)
    {
      v55 = PML_LogHandle();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_260D68000, v55, OS_LOG_TYPE_DEBUG, "Skipping row for metrics calculation", buf, 2u);
      }

      goto LABEL_44;
    }

    v105 = 0;
    v55 = [providerCopy dataPointAtIndex:*&v50 error:&v105];
    v56 = v105;
    if (*&v56 != 0.0)
    {
      v82 = v56;
      v86 = PML_LogHandle();
      if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        probCopy = v50;
        v118 = 2112;
        v119 = *&v82;
        _os_log_error_impl(&dword_260D68000, v86, OS_LOG_TYPE_ERROR, "Unable to get ground truth at index %tu: %@", buf, 0x16u);
      }

      goto LABEL_75;
    }

    v104 = 0;
    v57 = [predictionsProviderCopy dataPointAtIndex:*&v50 error:&v104];
    v58 = v104;
    if (*&v58 != 0.0)
    {
      v82 = v58;
      v87 = PML_LogHandle();
      if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        probCopy = v50;
        v118 = 2112;
        v119 = *&v82;
        _os_log_error_impl(&dword_260D68000, v87, OS_LOG_TYPE_ERROR, "Unable to get inference results at index %tu: %@", buf, 0x16u);
      }

LABEL_75:
      objc_autoreleasePoolPop(v53);
      v72 = 0;
      nameCopy = v100;
      valueNameCopy = v101;
      outputNameCopy = v102;
      v80 = obj;
      v81 = v99;
LABEL_80:
      v85 = v95;
      goto LABEL_82;
    }

    v59 = [v55 objectForKeyedSubscript:v100];
    dataPointer = [v59 dataPointer];

    v61 = *dataPointer;
    v62 = [v57 objectForKeyedSubscript:v102];
    dataArray = [v62 dataArray];

    v64 = [PMLEspressoTrainingPlan argmax:dataArray];
    if ((v64 & 0x80000000) == 0 && v64 == v61)
    {
      v65 = [dataArray objectAtIndexedSubscript:v64];
      [v65 floatValue];
      v67 = v66;

      v68 = v93;
      if (v67 > threshold)
      {
        v68 = v93 + 1;
      }

      v93 = v68;
    }

    ++v49;
    v69 = [v57 objectForKeyedSubscript:{v101, *&v90}];
    v52 = v52 + *[v69 dataPointer];

    [v95 addObject:dataArray];
    *&v70 = v61;
    v71 = [MEMORY[0x277CCABB0] numberWithFloat:v70];
    [v98 addObject:v71];

    v48 = v94;
LABEL_44:

    objc_autoreleasePoolPop(v53);
    if (v51 != ++*&v50)
    {
      continue;
    }

    break;
  }

  v72 = objc_opt_new();
  v73 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v49];
  [v72 setObject:v73 forKeyedSubscript:@"numberOfSamples"];

  if (v49)
  {
    v74 = &unk_287358190;
  }

  else
  {
    v74 = &unk_2873581A8;
  }

  [v72 setObject:v74 forKeyedSubscript:{@"isSampled", *&v90}];
  if (v49)
  {
    *&v75 = v52 / v49;
    v76 = [MEMORY[0x277CCABB0] numberWithFloat:v75];
    [v72 setObject:v76 forKeyedSubscript:@"loss"];

    *&v77 = v93 / v49;
    v78 = [MEMORY[0x277CCABB0] numberWithFloat:v77];
    [v72 setObject:v78 forKeyedSubscript:@"accuracy"];

    v79 = PML_LogHandle();
    nameCopy = v100;
    valueNameCopy = v101;
    outputNameCopy = v102;
    if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
    {
      *buf = 134218496;
      probCopy = v91;
      v118 = 2048;
      v119 = (v52 / v49);
      v120 = 2048;
      v121 = (v93 / v49);
      _os_log_impl(&dword_260D68000, v79, OS_LOG_TYPE_INFO, "Number of data points: %tu, Loss: %f, Accuracy: %f", buf, 0x20u);
    }

    v80 = obj;
    v81 = v99;
  }

  else
  {
    [v72 setObject:&unk_2873581A8 forKeyedSubscript:@"loss"];
    [v72 setObject:&unk_2873581A8 forKeyedSubscript:@"accuracy"];
    v79 = PML_LogHandle();
    nameCopy = v100;
    valueNameCopy = v101;
    outputNameCopy = v102;
    v80 = obj;
    v81 = v99;
    if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_260D68000, v79, OS_LOG_TYPE_INFO, "Not adding loss or accuracy metrics as no rows were sampled", buf, 2u);
    }
  }

  if (onlyCopy)
  {
    *&v82 = 0.0;
    goto LABEL_80;
  }

  v85 = v95;
  [v72 setObject:v95 forKeyedSubscript:@"predictions"];
  [v72 setObject:v98 forKeyedSubscript:@"groundTruth"];
  *&v82 = 0.0;
LABEL_82:

LABEL_83:
LABEL_84:

LABEL_85:
  v88 = *MEMORY[0x277D85DE8];

  return v72;
}

+ (id)_calculateGradientInPlaceForTask:(id)task startingParameters:(id)parameters globalNames:(id)names weightNames:(id)weightNames biasNames:(id)biasNames
{
  taskCopy = task;
  parametersCopy = parameters;
  namesCopy = names;
  weightNamesCopy = weightNames;
  biasNamesCopy = biasNames;
  v16 = [parametersCopy length];
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v29[3] = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__2913;
  v27 = __Block_byref_object_dispose__2914;
  v28 = 0;
  mutableBytes = [parametersCopy mutableBytes];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __113__PMLEspressoTrainingPlan__calculateGradientInPlaceForTask_startingParameters_globalNames_weightNames_biasNames___block_invoke;
  v22[3] = &unk_279AC0450;
  v22[4] = v29;
  v22[5] = &v23;
  v22[6] = v16 >> 2;
  v22[7] = mutableBytes;
  v18 = [PMLEspressoTrainingPlan _iterateModelParametersForTask:taskCopy globalNames:namesCopy weightNames:weightNamesCopy biasNames:biasNamesCopy block:v22];
  v19 = v18;
  if (v18 || (v19 = v24[5]) != 0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(v29, 8);

  return v20;
}

BOOL __113__PMLEspressoTrainingPlan__calculateGradientInPlaceForTask_startingParameters_globalNames_weightNames_biasNames___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [PMLEspressoTrainingPlan numberOfParametersInTensor:v7];
  v11 = *(*(a1[4] + 8) + 24) + v10;
  v12 = a1[6];
  if (v11 > v12)
  {
    v16 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA450];
    v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unable to in place update gradient since number of starting and ending parameters don't match for tensor type %@ name %@", v8, v9];
    v25[0] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v19 = [v16 errorWithDomain:@"ProactiveMLErrorDomain" code:201 userInfo:v18];
    v20 = *(a1[5] + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;
  }

  else
  {
    v13 = v10;
    [v7 dataPointer];
    v14 = a1[7];
    v15 = *(*(a1[4] + 8) + 24);
    catlas_saxpby_NEWLAPACK();
    *(*(a1[4] + 8) + 24) += v13;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v11 <= v12;
}

+ (id)_getModelParametersForTask:(id)task globalNames:(id)names weightNames:(id)weightNames biasNames:(id)biasNames error:(id *)error
{
  taskCopy = task;
  namesCopy = names;
  weightNamesCopy = weightNames;
  biasNamesCopy = biasNames;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __94__PMLEspressoTrainingPlan__getModelParametersForTask_globalNames_weightNames_biasNames_error___block_invoke;
  v29[3] = &unk_279AC0400;
  v29[4] = &v30;
  v29[5] = &v34;
  v15 = [PMLEspressoTrainingPlan _iterateModelParametersForTask:taskCopy globalNames:namesCopy weightNames:weightNamesCopy biasNames:biasNamesCopy block:v29];
  v16 = v15;
  if (v15)
  {
    if (error)
    {
      v17 = v15;
      v18 = 0;
      *error = v16;
    }

    else
    {
      v18 = 0;
    }
  }

  else if (v35[3] && v31[3])
  {
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x2020000000;
    v28[3] = 0;
    v19 = objc_alloc(MEMORY[0x277CBEB28]);
    v20 = [v19 initWithLength:v31[3]];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __94__PMLEspressoTrainingPlan__getModelParametersForTask_globalNames_weightNames_biasNames_error___block_invoke_2;
    v25[3] = &unk_279AC0428;
    v21 = v20;
    v26 = v21;
    v27 = v28;
    v22 = [PMLEspressoTrainingPlan _iterateModelParametersForTask:taskCopy globalNames:namesCopy weightNames:weightNamesCopy biasNames:biasNamesCopy block:v25];
    v16 = v22;
    if (v22)
    {
      if (error)
      {
        v23 = v22;
        v18 = 0;
        *error = v16;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = v21;
    }

    _Block_object_dispose(v28, 8);
  }

  else
  {
    v18 = objc_opt_new();
    v16 = 0;
  }

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);

  return v18;
}

uint64_t __94__PMLEspressoTrainingPlan__getModelParametersForTask_globalNames_weightNames_biasNames_error___block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 24) += 4 * [PMLEspressoTrainingPlan numberOfParametersInTensor:a2];
  ++*(*(*(a1 + 40) + 8) + 24);
  return 1;
}

uint64_t __94__PMLEspressoTrainingPlan__getModelParametersForTask_globalNames_weightNames_biasNames_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 4 * [PMLEspressoTrainingPlan numberOfParametersInTensor:v3];
  v5 = *(a1 + 32);
  v6 = *(*(*(a1 + 40) + 8) + 24);
  v7 = [v3 dataPointer];

  [v5 replaceBytesInRange:v6 withBytes:{v4, v7}];
  *(*(*(a1 + 40) + 8) + 24) += v4;
  return 1;
}

+ (id)_iterateModelParametersForTask:(id)task globalNames:(id)names weightNames:(id)weightNames biasNames:(id)biasNames block:(id)block
{
  v85 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  namesCopy = names;
  weightNamesCopy = weightNames;
  biasNamesCopy = biasNames;
  blockCopy = block;
  v15 = [namesCopy count];
  v16 = [weightNamesCopy count] + v15;
  if (!(v16 + [biasNamesCopy count]))
  {
    goto LABEL_2;
  }

  v58 = namesCopy;
  v59 = weightNamesCopy;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = namesCopy;
  v18 = [obj countByEnumeratingWithState:&v74 objects:v84 count:16];
  v57 = biasNamesCopy;
  if (v18)
  {
    v19 = v18;
    v20 = *v75;
LABEL_5:
    v21 = 0;
    while (1)
    {
      if (*v75 != v20)
      {
        objc_enumerationMutation(obj);
      }

      v22 = *(*(&v74 + 1) + 8 * v21);
      v23 = objc_autoreleasePoolPush();
      v24 = [taskCopy getTensorNamed:v22];
      if (!v24)
      {
        break;
      }

      v25 = v24;
      v26 = blockCopy[2](blockCopy, v24, @"global", v22);

      objc_autoreleasePoolPop(v23);
      if ((v26 & 1) == 0)
      {

        v17 = 0;
LABEL_43:
        namesCopy = v58;
        weightNamesCopy = v59;
        goto LABEL_51;
      }

      if (v19 == ++v21)
      {
        v19 = [obj countByEnumeratingWithState:&v74 objects:v84 count:16];
        biasNamesCopy = v57;
        if (v19)
        {
          goto LABEL_5;
        }

        goto LABEL_12;
      }
    }

    v27 = PML_LogHandle();
    namesCopy = v58;
    weightNamesCopy = v59;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v83 = v22;
      _os_log_error_impl(&dword_260D68000, v27, OS_LOG_TYPE_ERROR, "An error occured when attempting to get parameters for global variable: %@", buf, 0xCu);
    }

    v28 = MEMORY[0x277CCA9B8];
    v80 = *MEMORY[0x277CCA450];
    v29 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unable to find global variable named: %@", v22];
    v81 = v29;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
    v17 = [v28 errorWithDomain:@"ProactiveMLErrorDomain" code:202 userInfo:v30];

    objc_autoreleasePoolPop(v23);
    biasNamesCopy = v57;
    if (v17)
    {
      goto LABEL_52;
    }
  }

  else
  {
LABEL_12:

    namesCopy = v58;
    weightNamesCopy = v59;
  }

  v73 = 0u;
  v71 = 0u;
  v72 = 0u;
  v70 = 0u;
  v31 = weightNamesCopy;
  v32 = [v31 countByEnumeratingWithState:&v70 objects:v79 count:16];
  if (v32)
  {
    v33 = v32;
    v17 = 0;
    v34 = *v71;
    obja = v31;
    while (2)
    {
      v35 = 0;
      v36 = v17;
      do
      {
        if (*v71 != v34)
        {
          objc_enumerationMutation(obja);
        }

        v37 = *(*(&v70 + 1) + 8 * v35);
        v38 = objc_autoreleasePoolPush();
        v69 = v36;
        v39 = [taskCopy getParameterOfType:1 forLayerNamed:v37 error:&v69];
        v17 = v69;

        if (!v39)
        {
          v42 = PML_LogHandle();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v83 = v37;
            _os_log_error_impl(&dword_260D68000, v42, OS_LOG_TYPE_ERROR, "An error occured when attempting to get weight for layer: %@", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v38);
          v41 = obja;
          goto LABEL_31;
        }

        v40 = blockCopy[2](blockCopy, v39, @"weight", v37);

        objc_autoreleasePoolPop(v38);
        if ((v40 & 1) == 0)
        {

          goto LABEL_43;
        }

        ++v35;
        v36 = v17;
      }

      while (v33 != v35);
      v41 = obja;
      v33 = [obja countByEnumeratingWithState:&v70 objects:v79 count:16];
      if (v33)
      {
        continue;
      }

      break;
    }

LABEL_31:

    namesCopy = v58;
    weightNamesCopy = v59;
    biasNamesCopy = v57;
    if (v17)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v43 = biasNamesCopy;
  v44 = [v43 countByEnumeratingWithState:&v65 objects:v78 count:16];
  if (!v44)
  {

LABEL_2:
    v17 = 0;
    goto LABEL_52;
  }

  v45 = v44;
  v17 = 0;
  v46 = *v66;
  objb = v43;
LABEL_34:
  v47 = 0;
  v48 = v17;
  while (1)
  {
    if (*v66 != v46)
    {
      objc_enumerationMutation(objb);
    }

    v49 = *(*(&v65 + 1) + 8 * v47);
    v50 = objc_autoreleasePoolPush();
    v64 = v48;
    v51 = [taskCopy getParameterOfType:2 forLayerNamed:v49 error:&v64];
    v17 = v64;

    if (!v51)
    {
      v54 = PML_LogHandle();
      weightNamesCopy = v59;
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v83 = v49;
        _os_log_error_impl(&dword_260D68000, v54, OS_LOG_TYPE_ERROR, "An error occured when attempting to get bias for layer: %@", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v50);
      v53 = objb;
LABEL_48:

      goto LABEL_50;
    }

    v52 = blockCopy[2](blockCopy, v51, @"bias", v49);

    objc_autoreleasePoolPop(v50);
    if ((v52 & 1) == 0)
    {
      break;
    }

    ++v47;
    v48 = v17;
    if (v45 == v47)
    {
      v53 = objb;
      v45 = [objb countByEnumeratingWithState:&v65 objects:v78 count:16];
      weightNamesCopy = v59;
      if (v45)
      {
        goto LABEL_34;
      }

      goto LABEL_48;
    }
  }

  weightNamesCopy = v59;
LABEL_50:
  namesCopy = v58;
LABEL_51:
  biasNamesCopy = v57;
LABEL_52:

  v55 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (BOOL)isValidGradient:(id)gradient error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  gradientCopy = gradient;
  if ([gradientCopy count])
  {
    v6 = [gradientCopy count];
    v7 = [gradientCopy ptr];
    if (v6)
    {
      v8 = v7;
      v9 = objc_autoreleasePoolPush();
      v10 = *v8;
      if ((*v8 & 0x7FFFFFFFu) > 0x7F7FFFFF)
      {
        v11 = 0;
        v12 = 0;
LABEL_10:
        v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Gradient contains %f at index %lu", v10, v12];
        v15 = PML_LogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v26 = v14;
          _os_log_error_impl(&dword_260D68000, v15, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }

        v16 = MEMORY[0x277CCA9B8];
        v23 = *MEMORY[0x277CCA450];
        v24 = v14;
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
        v18 = [v16 errorWithDomain:@"ProactiveMLErrorDomain" code:203 userInfo:v17];

        objc_autoreleasePoolPop(v9);
        if (error)
        {
          v19 = v11;
        }

        else
        {
          v19 = 1;
        }

        if ((v19 & 1) == 0)
        {
          v20 = v18;
          v11 = 0;
          *error = v18;
        }

        goto LABEL_18;
      }

      v12 = 0;
      v13 = v8 + 1;
      while (1)
      {
        objc_autoreleasePoolPop(v9);
        if (v6 - 1 == v12)
        {
          break;
        }

        v9 = objc_autoreleasePoolPush();
        v10 = v13[v12++];
        if ((LODWORD(v10) & 0x7FFFFFFFu) >= 0x7F800000)
        {
          v11 = v12 >= v6;
          goto LABEL_10;
        }
      }
    }

    v18 = 0;
    v11 = 1;
LABEL_18:

    goto LABEL_19;
  }

  v11 = 1;
LABEL_19:

  v21 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (unint64_t)numberOfParametersInTensor:(id)tensor
{
  v16 = *MEMORY[0x277D85DE8];
  shape = [tensor shape];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [shape countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    v7 = 1;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(shape);
        }

        v7 *= [*(*(&v11 + 1) + 8 * i) unsignedIntegerValue];
      }

      v5 = [shape countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 1;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (int)argmax:(id)argmax
{
  argmaxCopy = argmax;
  if ([argmaxCopy count])
  {
    v4 = 0;
    v5 = -1;
    v6 = -3.4028e38;
    do
    {
      v7 = [argmaxCopy objectAtIndexedSubscript:v4];
      [v7 floatValue];
      v9 = v8;

      if (v6 < v9)
      {
        v5 = v4;
        v6 = v9;
      }

      ++v4;
    }

    while ([argmaxCopy count] > v4);
  }

  else
  {
    v5 = -1;
  }

  return v5;
}

@end