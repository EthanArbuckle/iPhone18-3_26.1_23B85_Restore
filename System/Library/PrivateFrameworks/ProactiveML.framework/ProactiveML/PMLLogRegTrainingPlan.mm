@interface PMLLogRegTrainingPlan
+ (id)planWithStore:(id)store tracker:(id)tracker sessionDescriptor:(id)descriptor arguments:(id)arguments;
- (NSString)description;
- (PMLLogRegTrainingPlan)initWithPlist:(id)plist chunks:(id)chunks context:(id)context;
- (PMLLogRegTrainingPlan)initWithStore:(id)store tracker:(id)tracker noiseStrategy:(id)strategy planId:(id)id sessionDescriptor:(id)descriptor maxSessionsLimit:(unint64_t)limit sessionsInBatch:(unint64_t)batch currentServerIteration:(unint64_t)self0 currentModelWeights:(id)self1 localLearningRate:(float)self2 stoppingThreshold:(float)self3 localMinimumIterations:(unint64_t)self4 localGradientIterations:(unint64_t)self5 useOnlyAppleInternalSessions:(BOOL)self6 skew:(double)self7 threshold:(double)self8 isMultiLabel:(BOOL)self9 intercept:(BOOL)intercept positiveLabel:(unint64_t)positiveLabel evaluationLevel:(unint64_t)level reportScale:(BOOL)scale;
- (id)evaluationMetricsForPredictions:(id)predictions objectives:(id)objectives predicate:(id)predicate start:(id)start;
- (id)normalizeRegressor:(id)regressor;
- (id)runWithError:(id *)error;
- (id)toPlistWithChunks:(id)chunks;
- (void)loadSessionsWithBlock:(id)block;
@end

@implementation PMLLogRegTrainingPlan

- (PMLLogRegTrainingPlan)initWithPlist:(id)plist chunks:(id)chunks context:(id)context
{
  v95[1] = *MEMORY[0x277D85DE8];
  plistCopy = plist;
  chunksCopy = chunks;
  contextCopy = context;
  v12 = [contextCopy objectForKeyedSubscript:@"TRAINING_STORE"];

  if (!v12)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v57 = objc_opt_class();
    v58 = NSStringFromClass(v57);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PMLLogRegTrainingPlan.m" lineNumber:369 description:{@"Can't instantiate %@. Missing store dependency.", v58}];
  }

  v13 = [plistCopy objectForKeyedSubscript:@"PLAN_ID"];
  v14 = [PMLSessionDescriptor alloc];
  v15 = [plistCopy objectForKeyedSubscript:@"SESSIONS_MODEL_HANDLE"];
  v16 = [(PMLSessionDescriptor *)v14 initWithPlist:v15 chunks:chunksCopy context:contextCopy];

  if (v16)
  {
    v89 = a2;
    v17 = [plistCopy objectForKeyedSubscript:@"NOISE_STRATEGY_TYPE"];
    if (([MEMORY[0x277D42590] isInternalBuild] & 1) == 0 && (objc_msgSend(MEMORY[0x277D42590], "isBetaBuild") & 1) == 0 && objc_msgSend(@"PMLNoNoiseStrategy", "isEqualToString:", v17))
    {

      v17 = @"PMLDiffPrivacyNoiseStrategy";
    }

    if ([@"PMLSeparatedDPNoiseStrategy" isEqualToString:v17])
    {
      v18 = [contextCopy mutableCopy];
      [(PMLSessionDescriptor *)v16 name];
      v20 = v19 = v17;
      v21 = [PMLSeparatedDPNoiseStrategy getPFLIdentifier:v20];
      [v18 setObject:v21 forKey:@"PFL_ID"];

      v17 = v19;
      contextCopy = v18;
    }

    v22 = [contextCopy objectForKeyedSubscript:@"PLUGIN_SHOULD_ADD_NOISE_AND_ENCRYPT_RESULT"];
    v23 = v22;
    if (v22 && ([v22 BOOLValue] & 1) == 0)
    {
      v24 = PML_LogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_260D68000, v24, OS_LOG_TYPE_DEFAULT, "PMLLogRegTrainingPlan running with no noise strategy since pluginShouldAddNoiseAndEncryptResult set to false", buf, 2u);
      }

      v17 = @"PMLNoNoiseStrategy";
    }

    v25 = objc_alloc(NSClassFromString(&v17->isa));
    v26 = [plistCopy objectForKeyedSubscript:@"NOISE_STRATEGY"];
    v27 = [v25 initWithPlist:v26 chunks:chunksCopy context:contextCopy];

    v28 = v27;
    if (v27)
    {
      v92 = v27;
      v29 = [PMLModelWeights alloc];
      v30 = [plistCopy objectForKeyedSubscript:@"WEIGHTS"];
      v27 = [(PMLModelWeights *)v29 initWithPlist:v30 chunks:chunksCopy context:contextCopy];

      v31 = v27;
      if (v27)
      {
        v91 = v27;
        v85 = v23;
        v86 = v17;
        v87 = v16;
        v32 = [plistCopy objectForKeyedSubscript:@"TRACKER_TYPE"];
        v33 = NSClassFromString(v32);
        if (!v33)
        {
          currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
          v60 = objc_opt_class();
          v61 = NSStringFromClass(v60);
          [currentHandler2 handleFailureInMethod:v89 object:self file:@"PMLLogRegTrainingPlan.m" lineNumber:407 description:{@"Can't instantiate %@. Unknown tracker class: %@", v61, v32}];
        }

        v34 = [v33 alloc];
        v35 = [plistCopy objectForKeyedSubscript:@"TRACKER"];
        v94 = @"planId";
        v95[0] = v13;
        v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v95 forKeys:&v94 count:1];
        v90 = [v34 initWithPlist:v35 chunks:chunksCopy context:v36];

        v88 = [contextCopy objectForKeyedSubscript:@"TRAINING_STORE"];
        v84 = [plistCopy objectForKeyedSubscript:@"SESSIONS_LIMIT"];
        unsignedIntegerValue = [v84 unsignedIntegerValue];
        v83 = [plistCopy objectForKeyedSubscript:@"SESSIONS_IN_BATCH"];
        unsignedIntegerValue2 = [v83 unsignedIntegerValue];
        v82 = [plistCopy objectForKeyedSubscript:@"SERVER_ITERATION"];
        unsignedIntegerValue3 = [v82 unsignedIntegerValue];
        v81 = [plistCopy objectForKeyedSubscript:@"LEARNING_RATE"];
        [v81 floatValue];
        v38 = v37;
        v80 = [plistCopy objectForKeyedSubscript:@"STOPPING_THRESHOLD"];
        [v80 floatValue];
        v40 = v39;
        v78 = [plistCopy objectForKeyedSubscript:@"MIN_ITERATIONS"];
        unsignedIntegerValue4 = [v78 unsignedIntegerValue];
        v77 = [plistCopy objectForKeyedSubscript:@"GRADIENT_ITERATIONS"];
        unsignedIntegerValue5 = [v77 unsignedIntegerValue];
        v75 = [plistCopy objectForKeyedSubscript:@"ONLY_INTERNAL_SESSIONS"];
        bOOLValue = [v75 BOOLValue];
        v73 = [plistCopy objectForKeyedSubscript:@"SKEW"];
        [v73 doubleValue];
        v42 = v41;
        v71 = [plistCopy objectForKeyedSubscript:@"THRESHOLD"];
        [v71 doubleValue];
        v44 = v43;
        v69 = [plistCopy objectForKeyedSubscript:@"IS_MULTI_LABEL"];
        selfCopy = self;
        HIDWORD(v64) = [v69 BOOLValue];
        v67 = [plistCopy objectForKeyedSubscript:@"INTERCEPT"];
        LOBYTE(v35) = [v67 BOOLValue];
        [plistCopy objectForKeyedSubscript:@"POSITIVE_LABEL"];
        v46 = v45 = v13;
        v47 = chunksCopy;
        unsignedIntegerValue6 = [v46 unsignedIntegerValue];
        [plistCopy objectForKeyedSubscript:@"EVALUATION_LEVEL"];
        v49 = v72 = v32;
        unsignedIntegerValue7 = [v49 unsignedIntegerValue];
        v51 = [plistCopy objectForKeyedSubscript:@"REPORT_SCALE"];
        LOBYTE(v64) = [v51 BOOLValue];
        v63 = unsignedIntegerValue6;
        chunksCopy = v47;
        BYTE2(v62) = v35;
        BYTE1(v62) = BYTE4(v64);
        LOBYTE(v62) = bOOLValue;
        LODWORD(v52) = v38;
        LODWORD(v53) = v40;
        v28 = v92;
        v27 = [PMLLogRegTrainingPlan initWithStore:selfCopy tracker:"initWithStore:tracker:noiseStrategy:planId:sessionDescriptor:maxSessionsLimit:sessionsInBatch:currentServerIteration:currentModelWeights:localLearningRate:stoppingThreshold:localMinimumIterations:localGradientIterations:useOnlyAppleInternalSessions:skew:threshold:isMultiLabel:intercept:positiveLabel:evaluationLevel:reportScale:" noiseStrategy:v88 planId:v90 sessionDescriptor:v92 maxSessionsLimit:v45 sessionsInBatch:v87 currentServerIteration:unsignedIntegerValue currentModelWeights:v52 localLearningRate:v53 stoppingThreshold:v42 localMinimumIterations:v44 localGradientIterations:unsignedIntegerValue2 useOnlyAppleInternalSessions:unsignedIntegerValue3 skew:v91 threshold:unsignedIntegerValue4 isMultiLabel:unsignedIntegerValue5 intercept:v62 positiveLabel:v63 evaluationLevel:unsignedIntegerValue7 reportScale:v64];

        v16 = v87;
        v13 = v45;

        v31 = v91;
        self = v27;
        v23 = v85;
        v17 = v86;
      }

      else
      {
        v28 = v92;
      }
    }
  }

  else
  {
    v27 = 0;
  }

  v54 = *MEMORY[0x277D85DE8];
  return v27;
}

- (id)toPlistWithChunks:(id)chunks
{
  v38[24] = *MEMORY[0x277D85DE8];
  planId = self->_planId;
  v37[0] = @"PLAN_ID";
  v37[1] = @"IS_SYNCHRONOUS";
  v38[0] = planId;
  v38[1] = MEMORY[0x277CBEC38];
  v37[2] = @"SESSIONS_MODEL_HANDLE";
  sessionDescriptor = self->_sessionDescriptor;
  chunksCopy = chunks;
  v36 = [(PMLSessionDescriptor *)sessionDescriptor toPlistWithChunks:chunksCopy];
  v38[2] = v36;
  v37[3] = @"SESSIONS_LIMIT";
  v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_maxSessionsLimit];
  v38[3] = v35;
  v37[4] = @"SESSIONS_IN_BATCH";
  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_sessionsInBatch];
  v38[4] = v34;
  v37[5] = @"WEIGHTS";
  v33 = [(PMLModelWeights *)self->_currentModelWeights toPlistWithChunks:chunksCopy];
  v38[5] = v33;
  v37[6] = @"LEARNING_RATE";
  *&v7 = self->_localLearningRate;
  v32 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
  v38[6] = v32;
  v37[7] = @"STOPPING_THRESHOLD";
  *&v8 = self->_stoppingThreshold;
  v31 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
  v38[7] = v31;
  v37[8] = @"MIN_ITERATIONS";
  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_localMinimumIterations];
  v38[8] = v30;
  v37[9] = @"GRADIENT_ITERATIONS";
  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_localGradientIterations];
  v38[9] = v29;
  v37[10] = @"SERVER_ITERATION";
  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_currentServerIteration];
  v38[10] = v28;
  v37[11] = @"IS_MULTI_LABEL";
  v27 = [MEMORY[0x277CCABB0] numberWithBool:self->_isMultiLabel];
  v38[11] = v27;
  v37[12] = @"POSITIVE_LABEL";
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_positiveLabel];
  v38[12] = v26;
  v37[13] = @"NOISE_STRATEGY_TYPE";
  noiseStrategy = self->_noiseStrategy;
  v10 = objc_opt_class();
  v25 = NSStringFromClass(v10);
  v38[13] = v25;
  v37[14] = @"NOISE_STRATEGY";
  v24 = [(PMLNoiseStrategy *)self->_noiseStrategy toPlistWithChunks:chunksCopy];
  v38[14] = v24;
  v37[15] = @"ONLY_INTERNAL_SESSIONS";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_useOnlyAppleInternalSessions];
  v38[15] = v11;
  v37[16] = @"INTERCEPT";
  v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_intercept];
  v38[16] = v12;
  v37[17] = @"TRACKER";
  v13 = [(PMLLogRegTrackerProtocol *)self->_tracker toPlistWithChunks:chunksCopy];

  v38[17] = v13;
  v37[18] = @"TRACKER_TYPE";
  tracker = self->_tracker;
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v38[18] = v16;
  v37[19] = @"SKEW";
  v17 = [MEMORY[0x277CCABB0] numberWithDouble:self->_skew];
  v38[19] = v17;
  v37[20] = @"THRESHOLD";
  v18 = [MEMORY[0x277CCABB0] numberWithDouble:self->_threshold];
  v38[20] = v18;
  v37[21] = @"EVALUATION_LEVEL";
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_evaluationLevel];
  v38[21] = v19;
  v37[22] = @"REPORT_SCALE";
  v20 = [MEMORY[0x277CCABB0] numberWithBool:self->_reportScale];
  v37[23] = @"BEFORE_NOISE_SCALING";
  v38[22] = v20;
  v38[23] = &unk_287357EC0;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:24];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)runWithError:(id *)error
{
  v48[2] = *MEMORY[0x277D85DE8];
  noiseStrategy = self->_noiseStrategy;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) == 0 || (tracker = self->_tracker, objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    date = [MEMORY[0x277CBEAA8] date];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v43 = 0x3032000000;
    v44 = __Block_byref_object_copy__697;
    v45 = __Block_byref_object_dispose__698;
    v46 = objc_opt_new();
    v39[0] = 0;
    v39[1] = v39;
    v39[2] = 0x2020000000;
    v39[3] = 0;
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = __Block_byref_object_copy__697;
    v37 = __Block_byref_object_dispose__698;
    v38 = 0;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __38__PMLLogRegTrainingPlan_runWithError___block_invoke;
    v28[3] = &unk_279ABFAE0;
    v28[4] = self;
    v30 = &v33;
    v31 = v39;
    v8 = date;
    v29 = v8;
    p_buf = &buf;
    [(PMLLogRegTrainingPlan *)self loadSessionsWithBlock:v28];
    if (error && (v9 = v34[5]) != 0)
    {
      v10 = 0;
      *error = v9;
    }

    else
    {
      v11 = [PMLPlanDescriptor descriptorFromPlanId:self->_planId];
      v40[0] = @"name";
      name = [v11 name];
      v41[0] = name;
      v40[1] = @"version";
      version = [v11 version];
      v41[1] = version;
      v40[2] = @"locale";
      locale = [v11 locale];
      v41[2] = locale;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:3];
      [*(*(&buf + 1) + 40) setObject:v15 forKeyedSubscript:@"plan"];

      v10 = *(*(&buf + 1) + 40);
    }

    _Block_object_dispose(&v33, 8);
    _Block_object_dispose(v39, 8);
    _Block_object_dispose(&buf, 8);

    goto LABEL_8;
  }

  v18 = PML_LogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v25 = self->_tracker;
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v27;
    _os_log_error_impl(&dword_260D68000, v18, OS_LOG_TYPE_ERROR, "Attempted to use PMLSeparatedDPNoiseStrategy with non-Fides tracker: %@.", &buf, 0xCu);
  }

  if (error)
  {
    v19 = MEMORY[0x277CCA9B8];
    v47[0] = @"PlanClass";
    v20 = objc_opt_class();
    v8 = NSStringFromClass(v20);
    v47[1] = @"NoiseStrategy";
    v48[0] = v8;
    v21 = self->_noiseStrategy;
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    v48[1] = v23;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:2];
    *error = [v19 errorWithDomain:@"ProactiveMLErrorDomain" code:6 userInfo:v24];

    v10 = MEMORY[0x277CBEC10];
LABEL_8:

    goto LABEL_9;
  }

  v10 = MEMORY[0x277CBEC10];
LABEL_9:
  v16 = *MEMORY[0x277D85DE8];

  return v10;
}

void __38__PMLLogRegTrainingPlan_runWithError___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v73 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = PML_LogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1[4] + 32);
    *buf = 5.778e-34;
    v70 = v7;
    v71 = 2048;
    v72 = [v5 count];
    _os_log_impl(&dword_260D68000, v6, OS_LOG_TYPE_INFO, "Training model: %@ (available %lu sessions)", buf, 0x16u);
  }

  if ([v5 count])
  {
    v8 = [*(a1[4] + 64) length];
    v9 = [v5 covariates];
    v10 = [v9 numberOfColumns] + *(a1[4] + 145);

    if (v10 != v8)
    {
      v38 = objc_alloc(MEMORY[0x277CCACA8]);
      v39 = [v5 covariates];
      v15 = [v38 initWithFormat:@"Cannot train model with covariates of length %tu but model weights of length %d (planid = %@)", objc_msgSend(v39, "numberOfColumns"), objc_msgSend(*(a1[4] + 64), "length"), *(a1[4] + 152)];

      v40 = PML_LogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
      {
        *buf = 5.7779e-34;
        v70 = v15;
        _os_log_fault_impl(&dword_260D68000, v40, OS_LOG_TYPE_FAULT, "%@", buf, 0xCu);
      }

      v41 = MEMORY[0x277CCA9B8];
      v67 = *MEMORY[0x277CCA450];
      v68 = v15;
      v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
      v43 = [v41 errorWithDomain:@"ProactiveMLErrorDomain" code:100 userInfo:v42];
      v44 = *(a1[6] + 8);
      v45 = *(v44 + 40);
      *(v44 + 40) = v43;

      *a3 = 1;
      goto LABEL_33;
    }

    *(*(a1[7] + 8) + 24) += [v5 count];
    v11 = [*(a1[4] + 64) copy];
    v12 = a1[4];
    LODWORD(v13) = *(v12 + 80);
    LODWORD(v14) = *(v12 + 84);
    v15 = [PMLLogisticRegressionModel solverWithWeights:v11 andIntercept:*(v12 + 145) learningRate:*(v12 + 88) minIterations:v13 stoppingThreshold:v14];

    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __38__PMLLogRegTrainingPlan_runWithError___block_invoke_31;
    v66[3] = &unk_279AC07C0;
    v66[4] = a1[4];
    v16 = MEMORY[0x2666EE8E0](v66);
    v17 = [v5 covariates];
    [v15 setCovariates:v17];

    v18 = a1[4];
    v19 = [v5 outcomes];
    v20 = [v18 normalizeRegressor:v19];
    [v15 setObjective:v20];

    v21 = *(a1[4] + 56);
    v22 = [v5 covariates];
    v23 = [v15 batchPredict:v22];

    v24 = a1[4];
    v25 = [v5 outcomes];
    v26 = [v25 denseVector];
    v63 = v23;
    v64 = v16;
    v27 = [v24 evaluationMetricsForPredictions:v23 objectives:v26 predicate:v16 start:a1[5]];

    if (v21)
    {
      v62 = a3;
      v28 = [v15 computeAvgGradientWithIterations:*(a1[4] + 72)];
      v29 = [v28 gradient];
      v30 = [v28 loss];
      *buf = 1.0;
      v31 = [*(a1[4] + 24) scaleAndAddNoiseToDenseVector:v29 usingNorm:*(a1[4] + 144) scaleFactor:buf];
      if (v31)
      {
        v32 = a1[4];
        if (*(v32 + 144))
        {
          v33 = *buf;
        }

        else
        {
          v33 = 1.0;
        }

        v34 = *(v32 + 16);
        v35 = [v5 minibatchStatsForPositiveLabel:*(v32 + 128)];
        *&v36 = v33;
        v37 = [v34 trackGradient:v29 scaleFactor:v35 minibatchStats:v27 evaluationMetrics:*(a1[4] + 56) serverIteration:v36];

        if (v37)
        {
          [*(*(a1[8] + 8) + 40) setDictionary:v37];
          if (v30)
          {
            [*(*(a1[8] + 8) + 40) setObject:v30 forKeyedSubscript:@"loss"];
          }
        }
      }

      else
      {
        v54 = PML_LogHandle();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          *v65 = 0;
          _os_log_error_impl(&dword_260D68000, v54, OS_LOG_TYPE_ERROR, "scaleAndAddNoiseToDenseVector failed", v65, 2u);
        }

        v55 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ProactiveMLErrorDomain" code:7 userInfo:0];
        v56 = *(a1[6] + 8);
        v37 = *(v56 + 40);
        *(v56 + 40) = v55;
      }

      if (!v31)
      {
        goto LABEL_32;
      }
    }

    else
    {
      [v15 solve];
      v46 = [v15 weights];
      v47 = [v46 asMutableDenseVector];

      *buf = 1.0;
      if (([*(a1[4] + 24) scaleAndAddNoiseToDenseVector:v47 usingNorm:*(a1[4] + 144) scaleFactor:buf] & 1) == 0)
      {
        v57 = PML_LogHandle();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          *v65 = 0;
          _os_log_error_impl(&dword_260D68000, v57, OS_LOG_TYPE_ERROR, "scaleAndAddNoiseToDenseVector failed", v65, 2u);
        }

        v58 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ProactiveMLErrorDomain" code:7 userInfo:0];
        v59 = *(a1[6] + 8);
        v60 = *(v59 + 40);
        *(v59 + 40) = v58;

        goto LABEL_32;
      }

      v62 = a3;
      v48 = a1[4];
      if (*(v48 + 144))
      {
        v49 = *buf;
      }

      else
      {
        v49 = 1.0;
      }

      v50 = *(v48 + 16);
      v51 = [v5 minibatchStatsForPositiveLabel:*(v48 + 128)];
      *&v52 = v49;
      v53 = [v50 trackWeights:v47 scaleFactor:v51 minibatchStats:v27 evaluationMetrics:v52];

      if (v53)
      {
        [*(*(a1[8] + 8) + 40) setDictionary:v53];
      }
    }

    if (*(*(a1[7] + 8) + 24) >= *(a1[4] + 40))
    {
      *v62 = 1;
    }

LABEL_32:

LABEL_33:
  }

  v61 = *MEMORY[0x277D85DE8];
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@ %@>", v5, self->_planId];

  return v6;
}

- (id)normalizeRegressor:(id)regressor
{
  regressorCopy = regressor;
  v5 = regressorCopy;
  if (self->_isMultiLabel)
  {
    v6 = -[PMLDenseVector initWithCount:]([PMLMutableDenseVector alloc], "initWithCount:", [regressorCopy count]);
    values = [v5 values];
    mutablePtr = [(PMLMutableDenseVector *)v6 mutablePtr];
    if ([v5 count])
    {
      v9 = 0;
      do
      {
        if (*(values + 4 * v9) == self->_positiveLabel)
        {
          v10 = 1.0;
        }

        else
        {
          v10 = 0.0;
        }

        *(mutablePtr + 4 * v9++) = v10;
      }

      while (v9 < [v5 count]);
    }

    v11 = [PMLModelRegressor modelRegressorFromFloats:v6];
  }

  else
  {
    v11 = regressorCopy;
  }

  return v11;
}

- (void)loadSessionsWithBlock:(id)block
{
  store = self->_store;
  sessionDescriptor = self->_sessionDescriptor;
  blockCopy = block;
  +[PMLTrainingStore lastUsedTimestampLimit];
  skew = self->_skew;
  [PMLTrainingStore loadSessionsForModel:"loadSessionsForModel:excludeItemIdsUsedWithin:limit:onlyAppleInternal:positiveLabel:skew:block:" excludeItemIdsUsedWithin:sessionDescriptor limit:self->_sessionsInBatch onlyAppleInternal:self->_useOnlyAppleInternalSessions positiveLabel:self->_positiveLabel skew:blockCopy block:?];
}

- (id)evaluationMetricsForPredictions:(id)predictions objectives:(id)objectives predicate:(id)predicate start:(id)start
{
  predictionsCopy = predictions;
  objectivesCopy = objectives;
  predicateCopy = predicate;
  startCopy = start;
  if (self->_evaluationLevel)
  {
    [PMLClassificationEvaluationMetrics f1Score:objectivesCopy predictions:predictionsCopy predicate:predicateCopy];
    [PMLClassificationEvaluationMetrics roundFloatToSigFigs:3 sigFigs:?];
    v16 = v15;
    *&v17 = [PMLClassificationEvaluationMetrics truePositives:objectivesCopy predictions:predictionsCopy predicate:predicateCopy];
    [PMLClassificationEvaluationMetrics roundFloatToSigFigs:3 sigFigs:v17];
    v19 = vcvtas_u32_f32(v18);
    *&v20 = [PMLClassificationEvaluationMetrics trueNegatives:objectivesCopy predictions:predictionsCopy predicate:predicateCopy];
    [PMLClassificationEvaluationMetrics roundFloatToSigFigs:3 sigFigs:v20];
    v22 = vcvtas_u32_f32(v21);
    *&v23 = [PMLClassificationEvaluationMetrics falsePositives:objectivesCopy predictions:predictionsCopy predicate:predicateCopy];
    [PMLClassificationEvaluationMetrics roundFloatToSigFigs:3 sigFigs:v23];
    v25 = vcvtas_u32_f32(v24);
    *&v26 = [PMLClassificationEvaluationMetrics falseNegatives:objectivesCopy predictions:predictionsCopy predicate:predicateCopy];
    [PMLClassificationEvaluationMetrics roundFloatToSigFigs:3 sigFigs:v26];
    v28 = vcvtas_u32_f32(v27);
  }

  else
  {
    v19 = 0;
    v22 = 0;
    v25 = 0;
    v28 = 0;
    v16 = 0;
  }

  LODWORD(v14) = v16;
  v29 = [AWDProactiveModelFittingEvalMetrics evalMetricsWithRmse:v19 f1:v22 truePositives:v25 trueNegatives:v28 falsePositives:0.0 falseNegatives:v14];
  if (self->_evaluationLevel >= 2)
  {
    [PMLClassificationEvaluationMetrics addScoresForOutcomes:objectivesCopy predictions:predictionsCopy predicate:predicateCopy metrics:v29];
  }

  [startCopy timeIntervalSinceNow];
  *&v30 = v30;
  *&v30 = fabsf(*&v30);
  [PMLClassificationEvaluationMetrics roundFloatToSigFigs:3 sigFigs:v30];
  [v29 setSecsToExecute:?];

  return v29;
}

- (PMLLogRegTrainingPlan)initWithStore:(id)store tracker:(id)tracker noiseStrategy:(id)strategy planId:(id)id sessionDescriptor:(id)descriptor maxSessionsLimit:(unint64_t)limit sessionsInBatch:(unint64_t)batch currentServerIteration:(unint64_t)self0 currentModelWeights:(id)self1 localLearningRate:(float)self2 stoppingThreshold:(float)self3 localMinimumIterations:(unint64_t)self4 localGradientIterations:(unint64_t)self5 useOnlyAppleInternalSessions:(BOOL)self6 skew:(double)self7 threshold:(double)self8 isMultiLabel:(BOOL)self9 intercept:(BOOL)intercept positiveLabel:(unint64_t)positiveLabel evaluationLevel:(unint64_t)level reportScale:(BOOL)scale
{
  storeCopy = store;
  trackerCopy = tracker;
  strategyCopy = strategy;
  idCopy = id;
  descriptorCopy = descriptor;
  weightsCopy = weights;
  if (![PMLPlanDescriptor isValidPlanId:idCopy])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PMLLogRegTrainingPlan.m" lineNumber:94 description:{@"Invalid planId. Must be <name>-<version>-<locale> but got %@", idCopy}];
  }

  v49.receiver = self;
  v49.super_class = PMLLogRegTrainingPlan;
  v36 = [(PMLLogRegTrainingPlan *)&v49 init];
  v37 = v36;
  if (v36)
  {
    v42 = storeCopy;
    batchCopy = batch;
    objc_storeStrong(&v36->_store, store);
    objc_storeStrong(&v37->_tracker, tracker);
    objc_storeStrong(&v37->_noiseStrategy, strategy);
    objc_storeStrong(&v37->_planId, id);
    objc_storeStrong(&v37->_sessionDescriptor, descriptor);
    if (([MEMORY[0x277D42590] isInternalBuild] & 1) == 0)
    {
      isBetaBuild = [MEMORY[0x277D42590] isBetaBuild];
      if (batch <= 1)
      {
        batchCopy2 = 1;
      }

      else
      {
        batchCopy2 = batch;
      }

      if (!isBetaBuild)
      {
        batchCopy = batchCopy2;
      }
    }

    v37->_maxSessionsLimit = limit;
    v37->_sessionsInBatch = batchCopy;
    v37->_currentServerIteration = iteration;
    objc_storeStrong(&v37->_currentModelWeights, weights);
    v37->_localLearningRate = rate;
    v37->_stoppingThreshold = threshold;
    v37->_localMinimumIterations = iterations;
    v37->_localGradientIterations = gradientIterations;
    v37->_useOnlyAppleInternalSessions = sessions;
    v37->_isMultiLabel = label;
    v37->_skew = skew;
    v37->_threshold = a18;
    v37->_intercept = intercept;
    v37->_positiveLabel = positiveLabel;
    v37->_evaluationLevel = level;
    v37->_reportScale = scale;
    storeCopy = v42;
  }

  return v37;
}

+ (id)planWithStore:(id)store tracker:(id)tracker sessionDescriptor:(id)descriptor arguments:(id)arguments
{
  argumentsCopy = arguments;
  descriptorCopy = descriptor;
  trackerCopy = tracker;
  storeCopy = store;
  v11 = [argumentsCopy objectForKeyedSubscript:@"noiseStrategy"];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = objc_opt_new();
  }

  v64 = v13;

  v14 = [argumentsCopy objectForKeyedSubscript:@"planId"];
  v15 = v14;
  v16 = @"FiM_logreg-1.0-en";
  if (v14)
  {
    v16 = v14;
  }

  v63 = v16;

  v17 = [argumentsCopy objectForKeyedSubscript:@"serverIteration"];
  if (v17)
  {
    v18 = [argumentsCopy objectForKeyedSubscript:@"serverIteration"];
    unsignedIntegerValue = [v18 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  v19 = [argumentsCopy objectForKeyedSubscript:@"intercept"];
  bOOLValue = [v19 BOOLValue];

  v20 = [argumentsCopy objectForKeyedSubscript:@"generateWeightsOfLength"];
  intValue = [v20 intValue];

  v61 = [PMLModelWeights modelWeightsOfLength:intValue rngSeed:1234567];
  v22 = [argumentsCopy objectForKeyedSubscript:@"localLearningRate"];
  if (v22)
  {
    v23 = [argumentsCopy objectForKeyedSubscript:@"localLearningRate"];
    [v23 floatValue];
    v25 = v24;
  }

  else
  {
    v25 = 1017370378;
  }

  v26 = [argumentsCopy objectForKeyedSubscript:@"stoppingThreshold"];
  if (v26)
  {
    v27 = [argumentsCopy objectForKeyedSubscript:@"stoppingThreshold"];
    [v27 floatValue];
    v29 = v28;
  }

  else
  {
    v29 = 953267991;
  }

  v30 = [argumentsCopy objectForKeyedSubscript:@"localMinimumIterations"];
  if (v30)
  {
    v31 = [argumentsCopy objectForKeyedSubscript:@"localMinimumIterations"];
    unsignedIntegerValue2 = [v31 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue2 = 100;
  }

  v32 = [argumentsCopy objectForKeyedSubscript:@"localGradientIterations"];
  unsignedIntegerValue3 = [v32 unsignedIntegerValue];

  v34 = [argumentsCopy objectForKeyedSubscript:@"reportScale"];
  bOOLValue2 = [v34 BOOLValue];

  v35 = [argumentsCopy objectForKeyedSubscript:@"useOnlyAppleInternalSessions"];
  bOOLValue3 = [v35 BOOLValue];

  v37 = [argumentsCopy objectForKeyedSubscript:@"sessionsInBatch"];
  integerValue = [v37 integerValue];

  v39 = [argumentsCopy objectForKeyedSubscript:@"maxSessionsLimit"];
  unsignedIntegerValue4 = [v39 unsignedIntegerValue];

  v41 = [argumentsCopy objectForKeyedSubscript:@"positiveLabel"];

  if (v41)
  {
    [argumentsCopy objectForKeyedSubscript:@"positiveLabel"];
    v43 = v42 = unsignedIntegerValue3;
    unsignedIntegerValue5 = [v43 unsignedIntegerValue];

    unsignedIntegerValue3 = v42;
    v45 = unsignedIntegerValue5;
  }

  else
  {
    v45 = 1;
  }

  v46 = v41 != 0;
  if (!unsignedIntegerValue4)
  {
    unsignedIntegerValue4 = 100;
  }

  if (integerValue <= 1)
  {
    v47 = 1;
  }

  else
  {
    v47 = integerValue;
  }

  if (unsignedIntegerValue3 <= 1)
  {
    v48 = 1;
  }

  else
  {
    v48 = unsignedIntegerValue3;
  }

  v49 = [PMLLogRegTrainingPlan alloc];
  LOBYTE(v55) = bOOLValue2;
  BYTE2(v54) = bOOLValue;
  BYTE1(v54) = v46;
  LOBYTE(v54) = bOOLValue3;
  LODWORD(v50) = v25;
  LODWORD(v51) = v29;
  v52 = [PMLLogRegTrainingPlan initWithStore:v49 tracker:"initWithStore:tracker:noiseStrategy:planId:sessionDescriptor:maxSessionsLimit:sessionsInBatch:currentServerIteration:currentModelWeights:localLearningRate:stoppingThreshold:localMinimumIterations:localGradientIterations:useOnlyAppleInternalSessions:skew:threshold:isMultiLabel:intercept:positiveLabel:evaluationLevel:reportScale:" noiseStrategy:storeCopy planId:trackerCopy sessionDescriptor:v64 maxSessionsLimit:v63 sessionsInBatch:descriptorCopy currentServerIteration:unsignedIntegerValue4 currentModelWeights:v50 localLearningRate:v51 stoppingThreshold:0.5 localMinimumIterations:0.5 localGradientIterations:v47 useOnlyAppleInternalSessions:unsignedIntegerValue skew:v61 threshold:unsignedIntegerValue2 isMultiLabel:v48 intercept:v54 positiveLabel:v45 evaluationLevel:2 reportScale:v55];

  return v52;
}

@end