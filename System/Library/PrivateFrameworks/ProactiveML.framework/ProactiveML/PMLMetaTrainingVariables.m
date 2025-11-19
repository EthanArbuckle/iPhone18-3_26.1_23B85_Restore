@interface PMLMetaTrainingVariables
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToMetaTrainingVariables:(id)a3;
- (PMLMetaTrainingVariables)initWithPlanId:(id)a3 store:(id)a4 noiseStrategy:(id)a5 sessionDescriptor:(id)a6 maxSessionsToTrainOn:(unint64_t)a7 trainingSetSize:(unint64_t)a8 labelsToTrainOn:(id)a9 currentServerIteration:(unint64_t)a10 lossThresholdForStopping:(double)a11 epochsPerBatch:(unint64_t)a12 probThreshold:(double)a13 evaluationLevel:(unint64_t)a14 reportScale:(BOOL)a15 summableMetricsOnly:(BOOL)a16;
- (PMLMetaTrainingVariables)initWithPlist:(id)a3 chunks:(id)a4 context:(id)a5;
- (id)toPlistWithChunks:(id)a3;
@end

@implementation PMLMetaTrainingVariables

- (id)toPlistWithChunks:(id)a3
{
  v25[14] = *MEMORY[0x277D85DE8];
  v25[0] = self->_planId;
  v24[0] = @"PLAN_ID";
  v24[1] = @"NOISE_STRATEGY_TYPE";
  noiseStrategy = self->_noiseStrategy;
  v5 = a3;
  v6 = objc_opt_class();
  v23 = NSStringFromClass(v6);
  v25[1] = v23;
  v24[2] = @"NOISE_STRATEGY";
  v22 = [(PMLNoiseStrategy *)self->_noiseStrategy toPlistWithChunks:v5];
  v25[2] = v22;
  v24[3] = @"SESSIONS_MODEL_HANDLE";
  v21 = [(PMLSessionDescriptor *)self->_sessionDescriptor toPlistWithChunks:v5];

  v25[3] = v21;
  v24[4] = @"SESSIONS_LIMIT";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_maxSessionsToTrainOn];
  v25[4] = v7;
  v24[5] = @"SESSIONS_IN_BATCH";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_trainingSetSize];
  labelsToTrainOn = self->_labelsToTrainOn;
  currentServerIteration = self->_currentServerIteration;
  v25[5] = v8;
  v25[6] = labelsToTrainOn;
  v24[6] = @"LABELS_TO_TRAIN_ON";
  v24[7] = @"SERVER_ITERATION";
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:currentServerIteration];
  v25[7] = v11;
  v24[8] = @"STOPPING_THRESHOLD";
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:self->_lossThresholdForStopping];
  v25[8] = v12;
  v24[9] = @"MIN_ITERATIONS";
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_epochsPerBatch];
  v25[9] = v13;
  v24[10] = @"THRESHOLD";
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:self->_probThreshold];
  v25[10] = v14;
  v24[11] = @"EVALUATION_LEVEL";
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_evaluationLevel];
  v25[11] = v15;
  v24[12] = @"REPORT_SCALE";
  v16 = [MEMORY[0x277CCABB0] numberWithBool:self->_reportScale];
  v25[12] = v16;
  v24[13] = @"SUMMABLE_METRICS_ONLY";
  v17 = [MEMORY[0x277CCABB0] numberWithBool:self->_summableMetricsOnly];
  v25[13] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:14];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (PMLMetaTrainingVariables)initWithPlist:(id)a3 chunks:(id)a4 context:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v11 objectForKeyedSubscript:@"TRAINING_STORE"];

  if (!v12)
  {
    v38 = [MEMORY[0x277CCA890] currentHandler];
    v39 = objc_opt_class();
    v40 = NSStringFromClass(v39);
    [v38 handleFailureInMethod:a2 object:self file:@"PMLEspressoTrainingPlan.m" lineNumber:135 description:{@"Can't instantiate %@. Missing store dependency.", v40}];
  }

  v60 = [v11 objectForKeyedSubscript:@"TRAINING_STORE"];
  v59 = [v9 objectForKeyedSubscript:@"PLAN_ID"];
  v13 = [PMLSessionDescriptor alloc];
  v14 = [v9 objectForKeyedSubscript:@"SESSIONS_MODEL_HANDLE"];
  v15 = [(PMLSessionDescriptor *)v13 initWithPlist:v14 chunks:v10 context:v11];

  if (!v15)
  {
    v41 = [MEMORY[0x277CCA890] currentHandler];
    [v41 handleFailureInMethod:a2 object:self file:@"PMLEspressoTrainingPlan.m" lineNumber:143 description:@"Session descriptor must be nonnull for PMLEspressoTrainingPlan initWithPlist"];
  }

  v16 = [v9 objectForKeyedSubscript:@"NOISE_STRATEGY_TYPE"];
  if (([MEMORY[0x277D42590] isInternalBuild] & 1) == 0 && (objc_msgSend(MEMORY[0x277D42590], "isBetaBuild") & 1) == 0 && objc_msgSend(@"PMLNoNoiseStrategy", "isEqualToString:", v16))
  {

    v16 = @"PMLDiffPrivacyNoiseStrategy";
  }

  v58 = v15;
  if ([@"PMLSeparatedDPNoiseStrategy" isEqualToString:v16])
  {
    v17 = [v11 mutableCopy];
    v18 = [(PMLSessionDescriptor *)v15 name];
    v19 = [PMLSeparatedDPNoiseStrategy getPFLIdentifier:v18];
    [v17 setObject:v19 forKey:@"PFL_ID"];

    v11 = v17;
  }

  v20 = [v11 objectForKeyedSubscript:@"PLUGIN_SHOULD_ADD_NOISE_AND_ENCRYPT_RESULT"];
  v57 = v20;
  if (v20 && ([v20 BOOLValue] & 1) == 0)
  {
    v21 = PML_LogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_260D68000, v21, OS_LOG_TYPE_DEFAULT, "PMLEspressoTrainingPlan running with no noise strategy since pluginShouldAddNoiseAndEncryptResult set to false", buf, 2u);
    }

    v16 = @"PMLNoNoiseStrategy";
    v51 = 1;
  }

  else
  {
    v51 = 0;
  }

  v54 = v16;
  v22 = objc_alloc(NSClassFromString(&v16->isa));
  v23 = [v9 objectForKeyedSubscript:@"NOISE_STRATEGY"];
  v24 = [v22 initWithPlist:v23 chunks:v10 context:v11];

  v55 = v11;
  v56 = v10;
  v53 = v24;
  if (!v24)
  {
    v42 = [MEMORY[0x277CCA890] currentHandler];
    [v42 handleFailureInMethod:a2 object:self file:@"PMLEspressoTrainingPlan.m" lineNumber:169 description:@"Noise strategy must be nonnull for PMLEspressoTrainingPlan initWithPlist"];
  }

  v50 = [v9 objectForKeyedSubscript:@"SESSIONS_LIMIT"];
  v48 = [v50 unsignedIntegerValue];
  v49 = [v9 objectForKeyedSubscript:@"SESSIONS_IN_BATCH"];
  v46 = [v49 unsignedIntegerValue];
  v25 = [v9 objectForKeyedSubscript:@"LABELS_TO_TRAIN_ON"];
  v47 = [v9 objectForKeyedSubscript:@"SERVER_ITERATION"];
  v44 = self;
  v26 = [v47 unsignedIntegerValue];
  v45 = [v9 objectForKeyedSubscript:@"STOPPING_THRESHOLD"];
  [v45 doubleValue];
  v28 = v27;
  v29 = [v9 objectForKeyedSubscript:@"MIN_ITERATIONS"];
  v30 = [v29 unsignedIntegerValue];
  v31 = [v9 objectForKeyedSubscript:@"THRESHOLD"];
  [v31 doubleValue];
  v33 = v32;
  v34 = [v9 objectForKeyedSubscript:@"EVALUATION_LEVEL"];
  v35 = [v34 unsignedIntegerValue];
  v36 = [v9 objectForKeyedSubscript:@"REPORT_SCALE"];
  BYTE1(v43) = v51;
  LOBYTE(v43) = [v36 BOOLValue];
  v52 = [(PMLMetaTrainingVariables *)v44 initWithPlanId:v59 store:v60 noiseStrategy:v53 sessionDescriptor:v58 maxSessionsToTrainOn:v48 trainingSetSize:v46 labelsToTrainOn:v28 currentServerIteration:v33 lossThresholdForStopping:v25 epochsPerBatch:v26 probThreshold:v30 evaluationLevel:v35 reportScale:v43 summableMetricsOnly:?];

  return v52;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PMLMetaTrainingVariables *)self isEqualToMetaTrainingVariables:v5];
  }

  return v6;
}

- (BOOL)isEqualToMetaTrainingVariables:(id)a3
{
  v4 = a3;
  v5 = self->_planId;
  v6 = v5;
  if (v5 == v4[1])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
LABEL_23:
      v27 = 0;
      goto LABEL_24;
    }
  }

  v8 = self->_sessionDescriptor;
  v9 = v8;
  if (v8 == v4[4])
  {
  }

  else
  {
    v10 = [(PMLSessionDescriptor *)v8 isEqual:?];

    if (!v10)
    {
      goto LABEL_23;
    }
  }

  maxSessionsToTrainOn = self->_maxSessionsToTrainOn;
  if (maxSessionsToTrainOn != [v4 maxSessionsToTrainOn])
  {
    goto LABEL_23;
  }

  trainingSetSize = self->_trainingSetSize;
  if (trainingSetSize != [v4 trainingSetSize])
  {
    goto LABEL_23;
  }

  v13 = self->_labelsToTrainOn;
  v14 = v13;
  if (v13 == v4[7])
  {
  }

  else
  {
    v15 = [(NSArray *)v13 isEqual:?];

    if ((v15 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  currentServerIteration = self->_currentServerIteration;
  if (currentServerIteration != [v4 currentServerIteration])
  {
    goto LABEL_23;
  }

  lossThresholdForStopping = self->_lossThresholdForStopping;
  [v4 lossThresholdForStopping];
  if (lossThresholdForStopping != v18)
  {
    goto LABEL_23;
  }

  epochsPerBatch = self->_epochsPerBatch;
  if (epochsPerBatch != [v4 epochsPerBatch])
  {
    goto LABEL_23;
  }

  probThreshold = self->_probThreshold;
  [v4 probThreshold];
  if (probThreshold != v21)
  {
    goto LABEL_23;
  }

  evaluationLevel = self->_evaluationLevel;
  if (evaluationLevel != [v4 evaluationLevel])
  {
    goto LABEL_23;
  }

  reportScale = self->_reportScale;
  if (reportScale != [v4 reportScale])
  {
    goto LABEL_23;
  }

  summableMetricsOnly = self->_summableMetricsOnly;
  if (summableMetricsOnly != [v4 summableMetricsOnly])
  {
    goto LABEL_23;
  }

  noiseStrategy = self->_noiseStrategy;
  v26 = [v4 noiseStrategy];
  v27 = [(PMLNoiseStrategy *)noiseStrategy isMemberOfClass:objc_opt_class()];

LABEL_24:
  return v27;
}

- (PMLMetaTrainingVariables)initWithPlanId:(id)a3 store:(id)a4 noiseStrategy:(id)a5 sessionDescriptor:(id)a6 maxSessionsToTrainOn:(unint64_t)a7 trainingSetSize:(unint64_t)a8 labelsToTrainOn:(id)a9 currentServerIteration:(unint64_t)a10 lossThresholdForStopping:(double)a11 epochsPerBatch:(unint64_t)a12 probThreshold:(double)a13 evaluationLevel:(unint64_t)a14 reportScale:(BOOL)a15 summableMetricsOnly:(BOOL)a16
{
  v23 = a3;
  v33 = a4;
  v24 = a5;
  v25 = a6;
  v26 = a9;
  v34.receiver = self;
  v34.super_class = PMLMetaTrainingVariables;
  v27 = [(PMLMetaTrainingVariables *)&v34 init];
  if (v27)
  {
    if (![PMLPlanDescriptor isValidPlanId:v23])
    {
      v29 = [MEMORY[0x277CCA890] currentHandler];
      [v29 handleFailureInMethod:a2 object:v27 file:@"PMLEspressoTrainingPlan.m" lineNumber:79 description:{@"Invalid planId. Must be <name>-<version>-<locale> but got %@", v23}];
    }

    objc_storeStrong(&v27->_planId, a3);
    objc_storeStrong(&v27->_store, a4);
    objc_storeStrong(&v27->_noiseStrategy, a5);
    objc_storeStrong(&v27->_sessionDescriptor, a6);
    v27->_maxSessionsToTrainOn = a7;
    v27->_trainingSetSize = a8;
    objc_storeStrong(&v27->_labelsToTrainOn, a9);
    v27->_currentServerIteration = a10;
    v27->_lossThresholdForStopping = a11;
    v27->_epochsPerBatch = a12;
    v27->_probThreshold = a13;
    v27->_evaluationLevel = a14;
    v27->_reportScale = a15;
    v27->_summableMetricsOnly = a16;
  }

  return v27;
}

@end