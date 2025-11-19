@interface PMLLogRegEvaluationPlan
- (NSString)description;
- (PMLLogRegEvaluationPlan)initWithPlist:(id)a3 chunks:(id)a4 context:(id)a5;
- (PMLLogRegEvaluationPlan)initWithStore:(id)a3 tracker:(id)a4 planId:(id)a5 sessionDescriptor:(id)a6 maxSessionsLimit:(unint64_t)a7 sessionsInBatch:(unint64_t)a8 currentModelWeights:(id)a9 intercept:(BOOL)a10 skew:(double)a11 threshold:(double)a12 isMultiLabel:(BOOL)a13 positiveLabel:(unint64_t)a14 evaluationLevel:(unint64_t)a15;
- (id)normalizeRegressor:(id)a3;
- (id)runWithError:(id *)a3;
- (id)toPlistWithChunks:(id)a3;
- (void)loadSessionsWithBlock:(id)a3;
@end

@implementation PMLLogRegEvaluationPlan

- (PMLLogRegEvaluationPlan)initWithPlist:(id)a3 chunks:(id)a4 context:(id)a5
{
  v65[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v11 objectForKeyedSubscript:@"TRAINING_STORE"];

  if (!v12)
  {
    v43 = [MEMORY[0x277CCA890] currentHandler];
    v44 = objc_opt_class();
    v45 = NSStringFromClass(v44);
    [v43 handleFailureInMethod:a2 object:self file:@"PMLLogRegEvaluationPlan.m" lineNumber:182 description:{@"Can't instantiate %@. Missing store dependency.", v45}];
  }

  v13 = [v9 objectForKeyedSubscript:@"PLAN_ID"];
  v14 = [PMLSessionDescriptor alloc];
  v15 = [v9 objectForKeyedSubscript:@"SESSIONS_MODEL_HANDLE"];
  v16 = [(PMLSessionDescriptor *)v14 initWithPlist:v15 chunks:v10 context:v11];

  if (v16)
  {
    v17 = [PMLModelWeights alloc];
    v18 = [v9 objectForKeyedSubscript:@"WEIGHTS"];
    v19 = [(PMLModelWeights *)v17 initWithPlist:v18 chunks:v10 context:v11];

    if (v19)
    {
      v63 = self;
      v62 = [v9 objectForKeyedSubscript:@"TRACKER_TYPE"];
      v20 = NSClassFromString(v62);
      v58 = v19;
      if (!v20)
      {
        v46 = [MEMORY[0x277CCA890] currentHandler];
        v47 = objc_opt_class();
        v48 = NSStringFromClass(v47);
        [v46 handleFailureInMethod:a2 object:v63 file:@"PMLLogRegEvaluationPlan.m" lineNumber:196 description:{@"Can't instantiate %@. Unknown tracker class: %@", v48, v62}];
      }

      v21 = [v20 alloc];
      v22 = [v9 objectForKeyedSubscript:@"TRACKER"];
      v64 = @"planId";
      v65[0] = v13;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:&v64 count:1];
      v24 = [v21 initWithPlist:v22 chunks:v10 context:v23];

      v25 = [v11 objectForKeyedSubscript:@"tracker"];

      v60 = v13;
      v61 = v10;
      v59 = v16;
      if (v25)
      {
        v26 = [v11 objectForKeyedSubscript:@"tracker"];

        v27 = v11;
        v28 = v26;
      }

      else
      {
        v27 = v11;
        v28 = v24;
      }

      v57 = v27;
      v50 = [v27 objectForKeyedSubscript:@"TRAINING_STORE"];
      v56 = [v9 objectForKeyedSubscript:@"SESSIONS_LIMIT"];
      v53 = [v56 unsignedIntegerValue];
      v55 = [v9 objectForKeyedSubscript:@"SESSIONS_IN_BATCH"];
      v51 = [v55 unsignedIntegerValue];
      v54 = [v9 objectForKeyedSubscript:@"INTERCEPT"];
      v30 = [v54 BOOLValue];
      v52 = [v9 objectForKeyedSubscript:@"SKEW"];
      [v52 doubleValue];
      v32 = v31;
      v33 = [v9 objectForKeyedSubscript:@"THRESHOLD"];
      [v33 doubleValue];
      v35 = v34;
      v36 = [v9 objectForKeyedSubscript:@"IS_MULTI_LABEL"];
      v37 = [v36 BOOLValue];
      v38 = [v9 objectForKeyedSubscript:@"POSITIVE_LABEL"];
      v39 = [v38 unsignedIntegerValue];
      v40 = [v9 objectForKeyedSubscript:@"EVALUATION_LEVEL"];
      BYTE1(v49) = v37;
      LOBYTE(v49) = v30;
      v19 = v58;
      self = -[PMLLogRegEvaluationPlan initWithStore:tracker:planId:sessionDescriptor:maxSessionsLimit:sessionsInBatch:currentModelWeights:intercept:skew:threshold:isMultiLabel:positiveLabel:evaluationLevel:](v63, "initWithStore:tracker:planId:sessionDescriptor:maxSessionsLimit:sessionsInBatch:currentModelWeights:intercept:skew:threshold:isMultiLabel:positiveLabel:evaluationLevel:", v50, v28, v60, v59, v53, v51, v32, v35, v58, v49, v39, [v40 unsignedIntegerValue]);

      v13 = v60;
      v16 = v59;

      v29 = self;
      v10 = v61;
      v11 = v57;
    }

    else
    {
      v29 = 0;
    }
  }

  else
  {
    v29 = 0;
  }

  v41 = *MEMORY[0x277D85DE8];
  return v29;
}

- (id)toPlistWithChunks:(id)a3
{
  v24[13] = *MEMORY[0x277D85DE8];
  v24[0] = self->_planId;
  v23[0] = @"PLAN_ID";
  v23[1] = @"SESSIONS_MODEL_HANDLE";
  sessionDescriptor = self->_sessionDescriptor;
  v5 = a3;
  v22 = [(PMLSessionDescriptor *)sessionDescriptor toPlistWithChunks:v5];
  v24[1] = v22;
  v23[2] = @"SESSIONS_LIMIT";
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_maxSessionsLimit];
  v24[2] = v21;
  v23[3] = @"SESSIONS_IN_BATCH";
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_sessionsInBatch];
  v24[3] = v20;
  v23[4] = @"WEIGHTS";
  v6 = [(PMLModelWeights *)self->_currentModelWeights toPlistWithChunks:v5];
  v24[4] = v6;
  v23[5] = @"INTERCEPT";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_intercept];
  v24[5] = v7;
  v23[6] = @"IS_MULTI_LABEL";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_isMultiLabel];
  v24[6] = v8;
  v23[7] = @"POSITIVE_LABEL";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_positiveLabel];
  v24[7] = v9;
  v23[8] = @"SKEW";
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_skew];
  v24[8] = v10;
  v23[9] = @"TRACKER";
  v11 = [(PMLEvaluationTrackerProtocol *)self->_tracker toPlistWithChunks:v5];

  v24[9] = v11;
  v23[10] = @"THRESHOLD";
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:self->_threshold];
  v24[10] = v12;
  v23[11] = @"TRACKER_TYPE";
  tracker = self->_tracker;
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v24[11] = v15;
  v23[12] = @"EVALUATION_LEVEL";
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_evaluationLevel];
  v24[12] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:13];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)runWithError:(id *)a3
{
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v12[3] = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__5896;
  v10 = __Block_byref_object_dispose__5897;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__PMLLogRegEvaluationPlan_runWithError___block_invoke;
  v5[3] = &unk_279AC07E8;
  v5[4] = self;
  v5[5] = &v6;
  v5[6] = v12;
  [(PMLLogRegEvaluationPlan *)self loadSessionsWithBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  _Block_object_dispose(v12, 8);

  return v3;
}

void __40__PMLLogRegEvaluationPlan_runWithError___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v69 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = PML_LogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = a1[4];
    v8 = *(v7 + 104);
    v9 = *(v7 + 24);
    *buf = 138412802;
    v64 = v8;
    v65 = 2112;
    v66 = v9;
    v67 = 2048;
    v68 = [v5 count];
    _os_log_impl(&dword_260D68000, v6, OS_LOG_TYPE_INFO, "Evaluating plan %@ (descriptor: %@, available %lu sessions)", buf, 0x20u);
  }

  if ([v5 count])
  {
    v59 = a3;
    v10 = [PMLLogisticRegressionModel solverWithWeights:*(a1[4] + 48) andIntercept:*(a1[4] + 56)];
    v11 = [v5 covariates];
    [v10 setCovariates:v11];

    v12 = a1[4];
    v13 = [v5 outcomes];
    v14 = [v12 normalizeRegressor:v13];
    [v10 setObjective:v14];

    v15 = [v5 covariates];
    v61 = v10;
    v16 = [v10 batchPredict:v15];

    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __40__PMLLogRegEvaluationPlan_runWithError___block_invoke_19;
    v62[3] = &unk_279AC07C0;
    v62[4] = a1[4];
    v17 = MEMORY[0x2666EE8E0](v62);
    v18 = [v5 outcomes];
    [v18 denseVector];
    v19 = v60 = a1;
    [PMLClassificationEvaluationMetrics f1Score:v19 predictions:v16 predicate:v17];
    v21 = v20;

    LODWORD(v22) = v21;
    [PMLClassificationEvaluationMetrics roundFloatToSigFigs:3 sigFigs:v22];
    v24 = v23;
    v25 = [v5 outcomes];
    v26 = [v25 denseVector];
    v27 = [PMLClassificationEvaluationMetrics truePositives:v26 predictions:v16 predicate:v17];

    *&v28 = v27;
    [PMLClassificationEvaluationMetrics roundFloatToSigFigs:3 sigFigs:v28];
    v30 = vcvtas_u32_f32(v29);
    v31 = [v5 outcomes];
    v32 = [v31 denseVector];
    v33 = [PMLClassificationEvaluationMetrics trueNegatives:v32 predictions:v16 predicate:v17];

    *&v34 = v33;
    [PMLClassificationEvaluationMetrics roundFloatToSigFigs:3 sigFigs:v34];
    v36 = vcvtas_u32_f32(v35);
    v37 = [v5 outcomes];
    v38 = [v37 denseVector];
    v39 = [PMLClassificationEvaluationMetrics falsePositives:v38 predictions:v16 predicate:v17];

    *&v40 = v39;
    [PMLClassificationEvaluationMetrics roundFloatToSigFigs:3 sigFigs:v40];
    v42 = vcvtas_u32_f32(v41);
    v43 = [v5 outcomes];
    v44 = [v43 denseVector];
    v45 = [PMLClassificationEvaluationMetrics falseNegatives:v44 predictions:v16 predicate:v17];

    *&v46 = v45;
    [PMLClassificationEvaluationMetrics roundFloatToSigFigs:3 sigFigs:v46];
    LODWORD(v48) = v24;
    v49 = [AWDProactiveModelFittingEvalMetrics evalMetricsWithRmse:v30 f1:v36 truePositives:v42 trueNegatives:vcvtas_u32_f32(v47) falsePositives:0.0 falseNegatives:v48];
    v50 = v60[4];
    if (v50[12] >= 2uLL)
    {
      v51 = [v5 outcomes];
      v52 = [v51 denseVector];
      [PMLClassificationEvaluationMetrics addScoresForOutcomes:v52 predictions:v16 predicate:v17 metrics:v49];

      v50 = v60[4];
    }

    v53 = v50[2];
    v54 = [v5 minibatchStatsForPositiveLabel:v50[10]];
    v55 = [v53 trackEvaluationMetrics:v49 minibatchStats:v54];
    v56 = *(v60[5] + 8);
    v57 = *(v56 + 40);
    *(v56 + 40) = v55;

    *(*(v60[6] + 8) + 24) += [v5 count];
    if (*(*(v60[6] + 8) + 24) >= *(v60[4] + 32))
    {
      *v59 = 1;
    }
  }

  v58 = *MEMORY[0x277D85DE8];
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
  [PMLTrainingStore loadSessionsForModel:"loadSessionsForModel:excludeItemIdsUsedWithin:limit:onlyAppleInternal:positiveLabel:skew:block:" excludeItemIdsUsedWithin:sessionDescriptor limit:self->_sessionsInBatch onlyAppleInternal:0 positiveLabel:self->_positiveLabel skew:v7 block:?];
}

- (PMLLogRegEvaluationPlan)initWithStore:(id)a3 tracker:(id)a4 planId:(id)a5 sessionDescriptor:(id)a6 maxSessionsLimit:(unint64_t)a7 sessionsInBatch:(unint64_t)a8 currentModelWeights:(id)a9 intercept:(BOOL)a10 skew:(double)a11 threshold:(double)a12 isMultiLabel:(BOOL)a13 positiveLabel:(unint64_t)a14 evaluationLevel:(unint64_t)a15
{
  v23 = a3;
  v33 = a4;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v34 = a9;
  if (![PMLPlanDescriptor isValidPlanId:v25])
  {
    v30 = [MEMORY[0x277CCA890] currentHandler];
    [v30 handleFailureInMethod:a2 object:self file:@"PMLLogRegEvaluationPlan.m" lineNumber:59 description:{@"Invalid planId. Must be <name>-<version>-<locale> but got %@", v25}];
  }

  v35.receiver = self;
  v35.super_class = PMLLogRegEvaluationPlan;
  v27 = [(PMLLogRegEvaluationPlan *)&v35 init];
  v28 = v27;
  if (v27)
  {
    objc_storeStrong(&v27->_store, a3);
    objc_storeStrong(&v28->_tracker, v33);
    objc_storeStrong(&v28->_planId, a5);
    objc_storeStrong(&v28->_sessionDescriptor, a6);
    v28->_maxSessionsLimit = a7;
    v28->_sessionsInBatch = a8;
    objc_storeStrong(&v28->_currentModelWeights, a9);
    v28->_intercept = a10;
    v28->_isMultiLabel = a13;
    v28->_positiveLabel = a14;
    v28->_skew = a11;
    v28->_threshold = a12;
    v28->_evaluationLevel = a15;
  }

  return v28;
}

@end