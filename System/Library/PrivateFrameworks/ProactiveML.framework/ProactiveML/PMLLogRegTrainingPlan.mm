@interface PMLLogRegTrainingPlan
+ (id)planWithStore:(id)a3 tracker:(id)a4 sessionDescriptor:(id)a5 arguments:(id)a6;
- (NSString)description;
- (PMLLogRegTrainingPlan)initWithPlist:(id)a3 chunks:(id)a4 context:(id)a5;
- (PMLLogRegTrainingPlan)initWithStore:(id)a3 tracker:(id)a4 noiseStrategy:(id)a5 planId:(id)a6 sessionDescriptor:(id)a7 maxSessionsLimit:(unint64_t)a8 sessionsInBatch:(unint64_t)a9 currentServerIteration:(unint64_t)a10 currentModelWeights:(id)a11 localLearningRate:(float)a12 stoppingThreshold:(float)a13 localMinimumIterations:(unint64_t)a14 localGradientIterations:(unint64_t)a15 useOnlyAppleInternalSessions:(BOOL)a16 skew:(double)a17 threshold:(double)a18 isMultiLabel:(BOOL)a19 intercept:(BOOL)a20 positiveLabel:(unint64_t)a21 evaluationLevel:(unint64_t)a22 reportScale:(BOOL)a23;
- (id)evaluationMetricsForPredictions:(id)a3 objectives:(id)a4 predicate:(id)a5 start:(id)a6;
- (id)normalizeRegressor:(id)a3;
- (id)runWithError:(id *)a3;
- (id)toPlistWithChunks:(id)a3;
- (void)loadSessionsWithBlock:(id)a3;
@end

@implementation PMLLogRegTrainingPlan

- (PMLLogRegTrainingPlan)initWithPlist:(id)a3 chunks:(id)a4 context:(id)a5
{
  v95[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v11 objectForKeyedSubscript:@"TRAINING_STORE"];

  if (!v12)
  {
    v56 = [MEMORY[0x277CCA890] currentHandler];
    v57 = objc_opt_class();
    v58 = NSStringFromClass(v57);
    [v56 handleFailureInMethod:a2 object:self file:@"PMLLogRegTrainingPlan.m" lineNumber:369 description:{@"Can't instantiate %@. Missing store dependency.", v58}];
  }

  v13 = [v9 objectForKeyedSubscript:@"PLAN_ID"];
  v14 = [PMLSessionDescriptor alloc];
  v15 = [v9 objectForKeyedSubscript:@"SESSIONS_MODEL_HANDLE"];
  v16 = [(PMLSessionDescriptor *)v14 initWithPlist:v15 chunks:v10 context:v11];

  if (v16)
  {
    v89 = a2;
    v17 = [v9 objectForKeyedSubscript:@"NOISE_STRATEGY_TYPE"];
    if (([MEMORY[0x277D42590] isInternalBuild] & 1) == 0 && (objc_msgSend(MEMORY[0x277D42590], "isBetaBuild") & 1) == 0 && objc_msgSend(@"PMLNoNoiseStrategy", "isEqualToString:", v17))
    {

      v17 = @"PMLDiffPrivacyNoiseStrategy";
    }

    if ([@"PMLSeparatedDPNoiseStrategy" isEqualToString:v17])
    {
      v18 = [v11 mutableCopy];
      [(PMLSessionDescriptor *)v16 name];
      v20 = v19 = v17;
      v21 = [PMLSeparatedDPNoiseStrategy getPFLIdentifier:v20];
      [v18 setObject:v21 forKey:@"PFL_ID"];

      v17 = v19;
      v11 = v18;
    }

    v22 = [v11 objectForKeyedSubscript:@"PLUGIN_SHOULD_ADD_NOISE_AND_ENCRYPT_RESULT"];
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
    v26 = [v9 objectForKeyedSubscript:@"NOISE_STRATEGY"];
    v27 = [v25 initWithPlist:v26 chunks:v10 context:v11];

    v28 = v27;
    if (v27)
    {
      v92 = v27;
      v29 = [PMLModelWeights alloc];
      v30 = [v9 objectForKeyedSubscript:@"WEIGHTS"];
      v27 = [(PMLModelWeights *)v29 initWithPlist:v30 chunks:v10 context:v11];

      v31 = v27;
      if (v27)
      {
        v91 = v27;
        v85 = v23;
        v86 = v17;
        v87 = v16;
        v32 = [v9 objectForKeyedSubscript:@"TRACKER_TYPE"];
        v33 = NSClassFromString(v32);
        if (!v33)
        {
          v59 = [MEMORY[0x277CCA890] currentHandler];
          v60 = objc_opt_class();
          v61 = NSStringFromClass(v60);
          [v59 handleFailureInMethod:v89 object:self file:@"PMLLogRegTrainingPlan.m" lineNumber:407 description:{@"Can't instantiate %@. Unknown tracker class: %@", v61, v32}];
        }

        v34 = [v33 alloc];
        v35 = [v9 objectForKeyedSubscript:@"TRACKER"];
        v94 = @"planId";
        v95[0] = v13;
        v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v95 forKeys:&v94 count:1];
        v90 = [v34 initWithPlist:v35 chunks:v10 context:v36];

        v88 = [v11 objectForKeyedSubscript:@"TRAINING_STORE"];
        v84 = [v9 objectForKeyedSubscript:@"SESSIONS_LIMIT"];
        v79 = [v84 unsignedIntegerValue];
        v83 = [v9 objectForKeyedSubscript:@"SESSIONS_IN_BATCH"];
        v76 = [v83 unsignedIntegerValue];
        v82 = [v9 objectForKeyedSubscript:@"SERVER_ITERATION"];
        v74 = [v82 unsignedIntegerValue];
        v81 = [v9 objectForKeyedSubscript:@"LEARNING_RATE"];
        [v81 floatValue];
        v38 = v37;
        v80 = [v9 objectForKeyedSubscript:@"STOPPING_THRESHOLD"];
        [v80 floatValue];
        v40 = v39;
        v78 = [v9 objectForKeyedSubscript:@"MIN_ITERATIONS"];
        v70 = [v78 unsignedIntegerValue];
        v77 = [v9 objectForKeyedSubscript:@"GRADIENT_ITERATIONS"];
        v68 = [v77 unsignedIntegerValue];
        v75 = [v9 objectForKeyedSubscript:@"ONLY_INTERNAL_SESSIONS"];
        v66 = [v75 BOOLValue];
        v73 = [v9 objectForKeyedSubscript:@"SKEW"];
        [v73 doubleValue];
        v42 = v41;
        v71 = [v9 objectForKeyedSubscript:@"THRESHOLD"];
        [v71 doubleValue];
        v44 = v43;
        v69 = [v9 objectForKeyedSubscript:@"IS_MULTI_LABEL"];
        v65 = self;
        HIDWORD(v64) = [v69 BOOLValue];
        v67 = [v9 objectForKeyedSubscript:@"INTERCEPT"];
        LOBYTE(v35) = [v67 BOOLValue];
        [v9 objectForKeyedSubscript:@"POSITIVE_LABEL"];
        v46 = v45 = v13;
        v47 = v10;
        v48 = [v46 unsignedIntegerValue];
        [v9 objectForKeyedSubscript:@"EVALUATION_LEVEL"];
        v49 = v72 = v32;
        v50 = [v49 unsignedIntegerValue];
        v51 = [v9 objectForKeyedSubscript:@"REPORT_SCALE"];
        LOBYTE(v64) = [v51 BOOLValue];
        v63 = v48;
        v10 = v47;
        BYTE2(v62) = v35;
        BYTE1(v62) = BYTE4(v64);
        LOBYTE(v62) = v66;
        LODWORD(v52) = v38;
        LODWORD(v53) = v40;
        v28 = v92;
        v27 = [PMLLogRegTrainingPlan initWithStore:v65 tracker:"initWithStore:tracker:noiseStrategy:planId:sessionDescriptor:maxSessionsLimit:sessionsInBatch:currentServerIteration:currentModelWeights:localLearningRate:stoppingThreshold:localMinimumIterations:localGradientIterations:useOnlyAppleInternalSessions:skew:threshold:isMultiLabel:intercept:positiveLabel:evaluationLevel:reportScale:" noiseStrategy:v88 planId:v90 sessionDescriptor:v92 maxSessionsLimit:v45 sessionsInBatch:v87 currentServerIteration:v79 currentModelWeights:v52 localLearningRate:v53 stoppingThreshold:v42 localMinimumIterations:v44 localGradientIterations:v76 useOnlyAppleInternalSessions:v74 skew:v91 threshold:v70 isMultiLabel:v68 intercept:v62 positiveLabel:v63 evaluationLevel:v50 reportScale:v64];

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

- (id)toPlistWithChunks:(id)a3
{
  v38[24] = *MEMORY[0x277D85DE8];
  planId = self->_planId;
  v37[0] = @"PLAN_ID";
  v37[1] = @"IS_SYNCHRONOUS";
  v38[0] = planId;
  v38[1] = MEMORY[0x277CBEC38];
  v37[2] = @"SESSIONS_MODEL_HANDLE";
  sessionDescriptor = self->_sessionDescriptor;
  v6 = a3;
  v36 = [(PMLSessionDescriptor *)sessionDescriptor toPlistWithChunks:v6];
  v38[2] = v36;
  v37[3] = @"SESSIONS_LIMIT";
  v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_maxSessionsLimit];
  v38[3] = v35;
  v37[4] = @"SESSIONS_IN_BATCH";
  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_sessionsInBatch];
  v38[4] = v34;
  v37[5] = @"WEIGHTS";
  v33 = [(PMLModelWeights *)self->_currentModelWeights toPlistWithChunks:v6];
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
  v24 = [(PMLNoiseStrategy *)self->_noiseStrategy toPlistWithChunks:v6];
  v38[14] = v24;
  v37[15] = @"ONLY_INTERNAL_SESSIONS";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_useOnlyAppleInternalSessions];
  v38[15] = v11;
  v37[16] = @"INTERCEPT";
  v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_intercept];
  v38[16] = v12;
  v37[17] = @"TRACKER";
  v13 = [(PMLLogRegTrackerProtocol *)self->_tracker toPlistWithChunks:v6];

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

- (id)runWithError:(id *)a3
{
  v48[2] = *MEMORY[0x277D85DE8];
  noiseStrategy = self->_noiseStrategy;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) == 0 || (tracker = self->_tracker, objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v7 = [MEMORY[0x277CBEAA8] date];
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
    v8 = v7;
    v29 = v8;
    p_buf = &buf;
    [(PMLLogRegTrainingPlan *)self loadSessionsWithBlock:v28];
    if (a3 && (v9 = v34[5]) != 0)
    {
      v10 = 0;
      *a3 = v9;
    }

    else
    {
      v11 = [PMLPlanDescriptor descriptorFromPlanId:self->_planId];
      v40[0] = @"name";
      v12 = [v11 name];
      v41[0] = v12;
      v40[1] = @"version";
      v13 = [v11 version];
      v41[1] = v13;
      v40[2] = @"locale";
      v14 = [v11 locale];
      v41[2] = v14;
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

  if (a3)
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
    *a3 = [v19 errorWithDomain:@"ProactiveMLErrorDomain" code:6 userInfo:v24];

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

- (id)normalizeRegressor:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_isMultiLabel)
  {
    v6 = -[PMLDenseVector initWithCount:]([PMLMutableDenseVector alloc], "initWithCount:", [v4 count]);
    v7 = [v5 values];
    v8 = [(PMLMutableDenseVector *)v6 mutablePtr];
    if ([v5 count])
    {
      v9 = 0;
      do
      {
        if (*(v7 + 4 * v9) == self->_positiveLabel)
        {
          v10 = 1.0;
        }

        else
        {
          v10 = 0.0;
        }

        *(v8 + 4 * v9++) = v10;
      }

      while (v9 < [v5 count]);
    }

    v11 = [PMLModelRegressor modelRegressorFromFloats:v6];
  }

  else
  {
    v11 = v4;
  }

  return v11;
}

- (void)loadSessionsWithBlock:(id)a3
{
  store = self->_store;
  sessionDescriptor = self->_sessionDescriptor;
  v7 = a3;
  +[PMLTrainingStore lastUsedTimestampLimit];
  skew = self->_skew;
  [PMLTrainingStore loadSessionsForModel:"loadSessionsForModel:excludeItemIdsUsedWithin:limit:onlyAppleInternal:positiveLabel:skew:block:" excludeItemIdsUsedWithin:sessionDescriptor limit:self->_sessionsInBatch onlyAppleInternal:self->_useOnlyAppleInternalSessions positiveLabel:self->_positiveLabel skew:v7 block:?];
}

- (id)evaluationMetricsForPredictions:(id)a3 objectives:(id)a4 predicate:(id)a5 start:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (self->_evaluationLevel)
  {
    [PMLClassificationEvaluationMetrics f1Score:v11 predictions:v10 predicate:v12];
    [PMLClassificationEvaluationMetrics roundFloatToSigFigs:3 sigFigs:?];
    v16 = v15;
    *&v17 = [PMLClassificationEvaluationMetrics truePositives:v11 predictions:v10 predicate:v12];
    [PMLClassificationEvaluationMetrics roundFloatToSigFigs:3 sigFigs:v17];
    v19 = vcvtas_u32_f32(v18);
    *&v20 = [PMLClassificationEvaluationMetrics trueNegatives:v11 predictions:v10 predicate:v12];
    [PMLClassificationEvaluationMetrics roundFloatToSigFigs:3 sigFigs:v20];
    v22 = vcvtas_u32_f32(v21);
    *&v23 = [PMLClassificationEvaluationMetrics falsePositives:v11 predictions:v10 predicate:v12];
    [PMLClassificationEvaluationMetrics roundFloatToSigFigs:3 sigFigs:v23];
    v25 = vcvtas_u32_f32(v24);
    *&v26 = [PMLClassificationEvaluationMetrics falseNegatives:v11 predictions:v10 predicate:v12];
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
    [PMLClassificationEvaluationMetrics addScoresForOutcomes:v11 predictions:v10 predicate:v12 metrics:v29];
  }

  [v13 timeIntervalSinceNow];
  *&v30 = v30;
  *&v30 = fabsf(*&v30);
  [PMLClassificationEvaluationMetrics roundFloatToSigFigs:3 sigFigs:v30];
  [v29 setSecsToExecute:?];

  return v29;
}

- (PMLLogRegTrainingPlan)initWithStore:(id)a3 tracker:(id)a4 noiseStrategy:(id)a5 planId:(id)a6 sessionDescriptor:(id)a7 maxSessionsLimit:(unint64_t)a8 sessionsInBatch:(unint64_t)a9 currentServerIteration:(unint64_t)a10 currentModelWeights:(id)a11 localLearningRate:(float)a12 stoppingThreshold:(float)a13 localMinimumIterations:(unint64_t)a14 localGradientIterations:(unint64_t)a15 useOnlyAppleInternalSessions:(BOOL)a16 skew:(double)a17 threshold:(double)a18 isMultiLabel:(BOOL)a19 intercept:(BOOL)a20 positiveLabel:(unint64_t)a21 evaluationLevel:(unint64_t)a22 reportScale:(BOOL)a23
{
  v34 = a3;
  v48 = a4;
  v47 = a5;
  v35 = a6;
  v46 = a7;
  v45 = a11;
  if (![PMLPlanDescriptor isValidPlanId:v35])
  {
    v43 = [MEMORY[0x277CCA890] currentHandler];
    [v43 handleFailureInMethod:a2 object:self file:@"PMLLogRegTrainingPlan.m" lineNumber:94 description:{@"Invalid planId. Must be <name>-<version>-<locale> but got %@", v35}];
  }

  v49.receiver = self;
  v49.super_class = PMLLogRegTrainingPlan;
  v36 = [(PMLLogRegTrainingPlan *)&v49 init];
  v37 = v36;
  if (v36)
  {
    v42 = v34;
    v38 = a9;
    objc_storeStrong(&v36->_store, a3);
    objc_storeStrong(&v37->_tracker, a4);
    objc_storeStrong(&v37->_noiseStrategy, a5);
    objc_storeStrong(&v37->_planId, a6);
    objc_storeStrong(&v37->_sessionDescriptor, a7);
    if (([MEMORY[0x277D42590] isInternalBuild] & 1) == 0)
    {
      v39 = [MEMORY[0x277D42590] isBetaBuild];
      if (a9 <= 1)
      {
        v40 = 1;
      }

      else
      {
        v40 = a9;
      }

      if (!v39)
      {
        v38 = v40;
      }
    }

    v37->_maxSessionsLimit = a8;
    v37->_sessionsInBatch = v38;
    v37->_currentServerIteration = a10;
    objc_storeStrong(&v37->_currentModelWeights, a11);
    v37->_localLearningRate = a12;
    v37->_stoppingThreshold = a13;
    v37->_localMinimumIterations = a14;
    v37->_localGradientIterations = a15;
    v37->_useOnlyAppleInternalSessions = a16;
    v37->_isMultiLabel = a19;
    v37->_skew = a17;
    v37->_threshold = a18;
    v37->_intercept = a20;
    v37->_positiveLabel = a21;
    v37->_evaluationLevel = a22;
    v37->_reportScale = a23;
    v34 = v42;
  }

  return v37;
}

+ (id)planWithStore:(id)a3 tracker:(id)a4 sessionDescriptor:(id)a5 arguments:(id)a6
{
  v9 = a6;
  v57 = a5;
  v56 = a4;
  v10 = a3;
  v11 = [v9 objectForKeyedSubscript:@"noiseStrategy"];
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

  v14 = [v9 objectForKeyedSubscript:@"planId"];
  v15 = v14;
  v16 = @"FiM_logreg-1.0-en";
  if (v14)
  {
    v16 = v14;
  }

  v63 = v16;

  v17 = [v9 objectForKeyedSubscript:@"serverIteration"];
  if (v17)
  {
    v18 = [v9 objectForKeyedSubscript:@"serverIteration"];
    v62 = [v18 unsignedIntegerValue];
  }

  else
  {
    v62 = 0;
  }

  v19 = [v9 objectForKeyedSubscript:@"intercept"];
  v60 = [v19 BOOLValue];

  v20 = [v9 objectForKeyedSubscript:@"generateWeightsOfLength"];
  v21 = [v20 intValue];

  v61 = [PMLModelWeights modelWeightsOfLength:v21 rngSeed:1234567];
  v22 = [v9 objectForKeyedSubscript:@"localLearningRate"];
  if (v22)
  {
    v23 = [v9 objectForKeyedSubscript:@"localLearningRate"];
    [v23 floatValue];
    v25 = v24;
  }

  else
  {
    v25 = 1017370378;
  }

  v26 = [v9 objectForKeyedSubscript:@"stoppingThreshold"];
  if (v26)
  {
    v27 = [v9 objectForKeyedSubscript:@"stoppingThreshold"];
    [v27 floatValue];
    v29 = v28;
  }

  else
  {
    v29 = 953267991;
  }

  v30 = [v9 objectForKeyedSubscript:@"localMinimumIterations"];
  if (v30)
  {
    v31 = [v9 objectForKeyedSubscript:@"localMinimumIterations"];
    v59 = [v31 unsignedIntegerValue];
  }

  else
  {
    v59 = 100;
  }

  v32 = [v9 objectForKeyedSubscript:@"localGradientIterations"];
  v33 = [v32 unsignedIntegerValue];

  v34 = [v9 objectForKeyedSubscript:@"reportScale"];
  v58 = [v34 BOOLValue];

  v35 = [v9 objectForKeyedSubscript:@"useOnlyAppleInternalSessions"];
  v36 = [v35 BOOLValue];

  v37 = [v9 objectForKeyedSubscript:@"sessionsInBatch"];
  v38 = [v37 integerValue];

  v39 = [v9 objectForKeyedSubscript:@"maxSessionsLimit"];
  v40 = [v39 unsignedIntegerValue];

  v41 = [v9 objectForKeyedSubscript:@"positiveLabel"];

  if (v41)
  {
    [v9 objectForKeyedSubscript:@"positiveLabel"];
    v43 = v42 = v33;
    v44 = [v43 unsignedIntegerValue];

    v33 = v42;
    v45 = v44;
  }

  else
  {
    v45 = 1;
  }

  v46 = v41 != 0;
  if (!v40)
  {
    v40 = 100;
  }

  if (v38 <= 1)
  {
    v47 = 1;
  }

  else
  {
    v47 = v38;
  }

  if (v33 <= 1)
  {
    v48 = 1;
  }

  else
  {
    v48 = v33;
  }

  v49 = [PMLLogRegTrainingPlan alloc];
  LOBYTE(v55) = v58;
  BYTE2(v54) = v60;
  BYTE1(v54) = v46;
  LOBYTE(v54) = v36;
  LODWORD(v50) = v25;
  LODWORD(v51) = v29;
  v52 = [PMLLogRegTrainingPlan initWithStore:v49 tracker:"initWithStore:tracker:noiseStrategy:planId:sessionDescriptor:maxSessionsLimit:sessionsInBatch:currentServerIteration:currentModelWeights:localLearningRate:stoppingThreshold:localMinimumIterations:localGradientIterations:useOnlyAppleInternalSessions:skew:threshold:isMultiLabel:intercept:positiveLabel:evaluationLevel:reportScale:" noiseStrategy:v10 planId:v56 sessionDescriptor:v64 maxSessionsLimit:v63 sessionsInBatch:v57 currentServerIteration:v40 currentModelWeights:v50 localLearningRate:v51 stoppingThreshold:0.5 localMinimumIterations:0.5 localGradientIterations:v47 useOnlyAppleInternalSessions:v62 skew:v61 threshold:v59 isMultiLabel:v48 intercept:v54 positiveLabel:v45 evaluationLevel:2 reportScale:v55];

  return v52;
}

@end