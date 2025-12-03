@interface PMLMetaTrainingVariables
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMetaTrainingVariables:(id)variables;
- (PMLMetaTrainingVariables)initWithPlanId:(id)id store:(id)store noiseStrategy:(id)strategy sessionDescriptor:(id)descriptor maxSessionsToTrainOn:(unint64_t)on trainingSetSize:(unint64_t)size labelsToTrainOn:(id)trainOn currentServerIteration:(unint64_t)self0 lossThresholdForStopping:(double)self1 epochsPerBatch:(unint64_t)self2 probThreshold:(double)self3 evaluationLevel:(unint64_t)self4 reportScale:(BOOL)self5 summableMetricsOnly:(BOOL)self6;
- (PMLMetaTrainingVariables)initWithPlist:(id)plist chunks:(id)chunks context:(id)context;
- (id)toPlistWithChunks:(id)chunks;
@end

@implementation PMLMetaTrainingVariables

- (id)toPlistWithChunks:(id)chunks
{
  v25[14] = *MEMORY[0x277D85DE8];
  v25[0] = self->_planId;
  v24[0] = @"PLAN_ID";
  v24[1] = @"NOISE_STRATEGY_TYPE";
  noiseStrategy = self->_noiseStrategy;
  chunksCopy = chunks;
  v6 = objc_opt_class();
  v23 = NSStringFromClass(v6);
  v25[1] = v23;
  v24[2] = @"NOISE_STRATEGY";
  v22 = [(PMLNoiseStrategy *)self->_noiseStrategy toPlistWithChunks:chunksCopy];
  v25[2] = v22;
  v24[3] = @"SESSIONS_MODEL_HANDLE";
  v21 = [(PMLSessionDescriptor *)self->_sessionDescriptor toPlistWithChunks:chunksCopy];

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

- (PMLMetaTrainingVariables)initWithPlist:(id)plist chunks:(id)chunks context:(id)context
{
  plistCopy = plist;
  chunksCopy = chunks;
  contextCopy = context;
  v12 = [contextCopy objectForKeyedSubscript:@"TRAINING_STORE"];

  if (!v12)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v39 = objc_opt_class();
    v40 = NSStringFromClass(v39);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PMLEspressoTrainingPlan.m" lineNumber:135 description:{@"Can't instantiate %@. Missing store dependency.", v40}];
  }

  v60 = [contextCopy objectForKeyedSubscript:@"TRAINING_STORE"];
  v59 = [plistCopy objectForKeyedSubscript:@"PLAN_ID"];
  v13 = [PMLSessionDescriptor alloc];
  v14 = [plistCopy objectForKeyedSubscript:@"SESSIONS_MODEL_HANDLE"];
  v15 = [(PMLSessionDescriptor *)v13 initWithPlist:v14 chunks:chunksCopy context:contextCopy];

  if (!v15)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PMLEspressoTrainingPlan.m" lineNumber:143 description:@"Session descriptor must be nonnull for PMLEspressoTrainingPlan initWithPlist"];
  }

  v16 = [plistCopy objectForKeyedSubscript:@"NOISE_STRATEGY_TYPE"];
  if (([MEMORY[0x277D42590] isInternalBuild] & 1) == 0 && (objc_msgSend(MEMORY[0x277D42590], "isBetaBuild") & 1) == 0 && objc_msgSend(@"PMLNoNoiseStrategy", "isEqualToString:", v16))
  {

    v16 = @"PMLDiffPrivacyNoiseStrategy";
  }

  v58 = v15;
  if ([@"PMLSeparatedDPNoiseStrategy" isEqualToString:v16])
  {
    v17 = [contextCopy mutableCopy];
    name = [(PMLSessionDescriptor *)v15 name];
    v19 = [PMLSeparatedDPNoiseStrategy getPFLIdentifier:name];
    [v17 setObject:v19 forKey:@"PFL_ID"];

    contextCopy = v17;
  }

  v20 = [contextCopy objectForKeyedSubscript:@"PLUGIN_SHOULD_ADD_NOISE_AND_ENCRYPT_RESULT"];
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
  v23 = [plistCopy objectForKeyedSubscript:@"NOISE_STRATEGY"];
  v24 = [v22 initWithPlist:v23 chunks:chunksCopy context:contextCopy];

  v55 = contextCopy;
  v56 = chunksCopy;
  v53 = v24;
  if (!v24)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PMLEspressoTrainingPlan.m" lineNumber:169 description:@"Noise strategy must be nonnull for PMLEspressoTrainingPlan initWithPlist"];
  }

  v50 = [plistCopy objectForKeyedSubscript:@"SESSIONS_LIMIT"];
  unsignedIntegerValue = [v50 unsignedIntegerValue];
  v49 = [plistCopy objectForKeyedSubscript:@"SESSIONS_IN_BATCH"];
  unsignedIntegerValue2 = [v49 unsignedIntegerValue];
  v25 = [plistCopy objectForKeyedSubscript:@"LABELS_TO_TRAIN_ON"];
  v47 = [plistCopy objectForKeyedSubscript:@"SERVER_ITERATION"];
  selfCopy = self;
  unsignedIntegerValue3 = [v47 unsignedIntegerValue];
  v45 = [plistCopy objectForKeyedSubscript:@"STOPPING_THRESHOLD"];
  [v45 doubleValue];
  v28 = v27;
  v29 = [plistCopy objectForKeyedSubscript:@"MIN_ITERATIONS"];
  unsignedIntegerValue4 = [v29 unsignedIntegerValue];
  v31 = [plistCopy objectForKeyedSubscript:@"THRESHOLD"];
  [v31 doubleValue];
  v33 = v32;
  v34 = [plistCopy objectForKeyedSubscript:@"EVALUATION_LEVEL"];
  unsignedIntegerValue5 = [v34 unsignedIntegerValue];
  v36 = [plistCopy objectForKeyedSubscript:@"REPORT_SCALE"];
  BYTE1(v43) = v51;
  LOBYTE(v43) = [v36 BOOLValue];
  v52 = [(PMLMetaTrainingVariables *)selfCopy initWithPlanId:v59 store:v60 noiseStrategy:v53 sessionDescriptor:v58 maxSessionsToTrainOn:unsignedIntegerValue trainingSetSize:unsignedIntegerValue2 labelsToTrainOn:v28 currentServerIteration:v33 lossThresholdForStopping:v25 epochsPerBatch:unsignedIntegerValue3 probThreshold:unsignedIntegerValue4 evaluationLevel:unsignedIntegerValue5 reportScale:v43 summableMetricsOnly:?];

  return v52;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PMLMetaTrainingVariables *)self isEqualToMetaTrainingVariables:v5];
  }

  return v6;
}

- (BOOL)isEqualToMetaTrainingVariables:(id)variables
{
  variablesCopy = variables;
  v5 = self->_planId;
  v6 = v5;
  if (v5 == variablesCopy[1])
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
  if (v8 == variablesCopy[4])
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
  if (maxSessionsToTrainOn != [variablesCopy maxSessionsToTrainOn])
  {
    goto LABEL_23;
  }

  trainingSetSize = self->_trainingSetSize;
  if (trainingSetSize != [variablesCopy trainingSetSize])
  {
    goto LABEL_23;
  }

  v13 = self->_labelsToTrainOn;
  v14 = v13;
  if (v13 == variablesCopy[7])
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
  if (currentServerIteration != [variablesCopy currentServerIteration])
  {
    goto LABEL_23;
  }

  lossThresholdForStopping = self->_lossThresholdForStopping;
  [variablesCopy lossThresholdForStopping];
  if (lossThresholdForStopping != v18)
  {
    goto LABEL_23;
  }

  epochsPerBatch = self->_epochsPerBatch;
  if (epochsPerBatch != [variablesCopy epochsPerBatch])
  {
    goto LABEL_23;
  }

  probThreshold = self->_probThreshold;
  [variablesCopy probThreshold];
  if (probThreshold != v21)
  {
    goto LABEL_23;
  }

  evaluationLevel = self->_evaluationLevel;
  if (evaluationLevel != [variablesCopy evaluationLevel])
  {
    goto LABEL_23;
  }

  reportScale = self->_reportScale;
  if (reportScale != [variablesCopy reportScale])
  {
    goto LABEL_23;
  }

  summableMetricsOnly = self->_summableMetricsOnly;
  if (summableMetricsOnly != [variablesCopy summableMetricsOnly])
  {
    goto LABEL_23;
  }

  noiseStrategy = self->_noiseStrategy;
  noiseStrategy = [variablesCopy noiseStrategy];
  v27 = [(PMLNoiseStrategy *)noiseStrategy isMemberOfClass:objc_opt_class()];

LABEL_24:
  return v27;
}

- (PMLMetaTrainingVariables)initWithPlanId:(id)id store:(id)store noiseStrategy:(id)strategy sessionDescriptor:(id)descriptor maxSessionsToTrainOn:(unint64_t)on trainingSetSize:(unint64_t)size labelsToTrainOn:(id)trainOn currentServerIteration:(unint64_t)self0 lossThresholdForStopping:(double)self1 epochsPerBatch:(unint64_t)self2 probThreshold:(double)self3 evaluationLevel:(unint64_t)self4 reportScale:(BOOL)self5 summableMetricsOnly:(BOOL)self6
{
  idCopy = id;
  storeCopy = store;
  strategyCopy = strategy;
  descriptorCopy = descriptor;
  trainOnCopy = trainOn;
  v34.receiver = self;
  v34.super_class = PMLMetaTrainingVariables;
  v27 = [(PMLMetaTrainingVariables *)&v34 init];
  if (v27)
  {
    if (![PMLPlanDescriptor isValidPlanId:idCopy])
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v27 file:@"PMLEspressoTrainingPlan.m" lineNumber:79 description:{@"Invalid planId. Must be <name>-<version>-<locale> but got %@", idCopy}];
    }

    objc_storeStrong(&v27->_planId, id);
    objc_storeStrong(&v27->_store, store);
    objc_storeStrong(&v27->_noiseStrategy, strategy);
    objc_storeStrong(&v27->_sessionDescriptor, descriptor);
    v27->_maxSessionsToTrainOn = on;
    v27->_trainingSetSize = size;
    objc_storeStrong(&v27->_labelsToTrainOn, trainOn);
    v27->_currentServerIteration = iteration;
    v27->_lossThresholdForStopping = stopping;
    v27->_epochsPerBatch = batch;
    v27->_probThreshold = threshold;
    v27->_evaluationLevel = level;
    v27->_reportScale = scale;
    v27->_summableMetricsOnly = only;
  }

  return v27;
}

@end