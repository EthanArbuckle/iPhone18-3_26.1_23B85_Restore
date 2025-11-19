@interface PMLPlanSimulator
+ (id)simulatorWithDbPaths:(id)a3 sessionDescriptor:(id)a4 sessionsInBatch:(unint64_t)a5 maxSessionsLimit:(unint64_t)a6 seed:(unint64_t)a7;
- (PMLPlanSimulator)initWithStores:(id)a3 sessionDescriptor:(id)a4 seed:(unint64_t)a5;
- (id)_randomStore;
- (id)_randomStores:(unint64_t)a3;
- (id)runParallelPlansWithPlanId:(id)a3 tracker:(id)a4 noiseScaleFactors:(id)a5 noiseMinimumMagnitude:(float)a6 weights:(id)a7 serverIteration:(unint64_t)a8 useIntercept:(BOOL)a9 noiseMechanism:(int64_t)a10 usingRandomlySelected:(unint64_t)a11;
@end

@implementation PMLPlanSimulator

- (id)runParallelPlansWithPlanId:(id)a3 tracker:(id)a4 noiseScaleFactors:(id)a5 noiseMinimumMagnitude:(float)a6 weights:(id)a7 serverIteration:(unint64_t)a8 useIntercept:(BOOL)a9 noiseMechanism:(int64_t)a10 usingRandomlySelected:(unint64_t)a11
{
  var1 = a5.var1;
  var0 = a5.var0;
  v19 = a3;
  v20 = a4;
  v21 = a7;
  v22 = [(PMLPlanSimulator *)self _randomStores:a11];
  v23 = objc_opt_new();
  v24 = dispatch_get_global_queue(33, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __169__PMLPlanSimulator_runParallelPlansWithPlanId_tracker_noiseScaleFactors_noiseMinimumMagnitude_weights_serverIteration_useIntercept_noiseMechanism_usingRandomlySelected___block_invoke;
  block[3] = &unk_279ABFA18;
  v43 = var0;
  v44 = var1;
  v45 = a6;
  v41 = a8;
  v42 = a10;
  v35 = v22;
  v36 = v20;
  v37 = v19;
  v38 = self;
  v39 = v21;
  v46 = a9;
  v25 = v23;
  v40 = v25;
  v26 = v21;
  v27 = v19;
  v28 = v20;
  v29 = v22;
  dispatch_apply(a11, v24, block);

  v30 = v40;
  v31 = v25;

  return v25;
}

void __169__PMLPlanSimulator_runParallelPlansWithPlanId_tracker_noiseScaleFactors_noiseMinimumMagnitude_weights_serverIteration_useIntercept_noiseMechanism_usingRandomlySelected___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  LODWORD(a2) = a2 + *(a1 + 80);
  v6 = [PMLDiffPrivacyNoiseStrategy alloc];
  LODWORD(v7) = *(a1 + 100);
  LODWORD(v8) = *(a1 + 104);
  LODWORD(v9) = *(a1 + 96);
  v10 = [(PMLDiffPrivacyNoiseStrategy *)v6 initWithMaxIterationCount:1 noiseScaleFactors:(a2 + 1) minimumMagnitude:*(a1 + 88) seed:0 noiseMechanism:v9 inplaceNorm:v7, v8];
  v11 = [PMLLogRegTrainingPlan alloc];
  LOBYTE(v18) = 1;
  BYTE2(v17) = *(a1 + 108);
  LOWORD(v17) = 0;
  LODWORD(v12) = 1017370378;
  LODWORD(v13) = 953267991;
  v14 = [PMLLogRegTrainingPlan initWithStore:v11 tracker:"initWithStore:tracker:noiseStrategy:planId:sessionDescriptor:maxSessionsLimit:sessionsInBatch:currentServerIteration:currentModelWeights:localLearningRate:stoppingThreshold:localMinimumIterations:localGradientIterations:useOnlyAppleInternalSessions:skew:threshold:isMultiLabel:intercept:positiveLabel:evaluationLevel:reportScale:" noiseStrategy:v5 planId:*(a1 + 40) sessionDescriptor:v10 maxSessionsLimit:*(a1 + 48) sessionsInBatch:*(*(a1 + 56) + 16) currentServerIteration:1 currentModelWeights:v12 localLearningRate:v13 stoppingThreshold:0.0 localMinimumIterations:0.5 localGradientIterations:1 useOnlyAppleInternalSessions:*(a1 + 80) skew:*(a1 + 64) threshold:100 isMultiLabel:1 intercept:v17 positiveLabel:1 evaluationLevel:2 reportScale:v18];
  v15 = [(PMLLogRegTrainingPlan *)v14 runWithError:0];
  if (v15)
  {
    v16 = *(a1 + 72);
    objc_sync_enter(v16);
    [*(a1 + 72) addObject:v15];
    objc_sync_exit(v16);
  }

  objc_autoreleasePoolPop(v4);
}

- (id)_randomStores:(unint64_t)a3
{
  for (i = objc_opt_new(); a3; --a3)
  {
    v6 = [(PMLPlanSimulator *)self _randomStore];
    [i addObject:v6];
  }

  return i;
}

- (id)_randomStore
{
  v3 = [(_PASRng *)self->_rng next];
  v4 = v3 % [(NSArray *)self->_stores count];
  stores = self->_stores;

  return [(NSArray *)stores objectAtIndexedSubscript:v4];
}

- (PMLPlanSimulator)initWithStores:(id)a3 sessionDescriptor:(id)a4 seed:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v16.receiver = self;
  v16.super_class = PMLPlanSimulator;
  v11 = [(PMLPlanSimulator *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_stores, a3);
    objc_storeStrong(&v12->_sessionDescriptor, a4);
    v13 = [objc_alloc(MEMORY[0x277D42618]) initWithSeed:a5];
    rng = v12->_rng;
    v12->_rng = v13;
  }

  return v12;
}

+ (id)simulatorWithDbPaths:(id)a3 sessionDescriptor:(id)a4 sessionsInBatch:(unint64_t)a5 maxSessionsLimit:(unint64_t)a6 seed:(unint64_t)a7
{
  v13 = a3;
  v14 = a4;
  if (![v13 count])
  {
    v27 = [MEMORY[0x277CCA890] currentHandler];
    [v27 handleFailureInMethod:a2 object:a1 file:@"PMLPlanSimulator.m" lineNumber:91 description:{@"Can't instantiate simulator, need at least one db file."}];
  }

  if (a5 != a6)
  {
    v28 = [MEMORY[0x277CCA890] currentHandler];
    [v28 handleFailureInMethod:a2 object:a1 file:@"PMLPlanSimulator.m" lineNumber:92 description:@"Multiple batches not supported in simulation."];
  }

  v15 = objc_opt_new();
  v16 = [v13 count];
  v17 = dispatch_get_global_queue(33, 0);
  v29 = MEMORY[0x277D85DD0];
  v30 = 3221225472;
  v31 = __97__PMLPlanSimulator_simulatorWithDbPaths_sessionDescriptor_sessionsInBatch_maxSessionsLimit_seed___block_invoke;
  v32 = &unk_279ABF9F0;
  v18 = v13;
  v33 = v18;
  v36 = a2;
  v37 = a1;
  v19 = v14;
  v34 = v19;
  v38 = a6;
  v20 = v15;
  v35 = v20;
  dispatch_apply(v16, v17, &v29);

  v21 = objc_opt_new();
  if ([v18 count])
  {
    v22 = 0;
    do
    {
      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v22];
      v24 = [v20 objectForKeyedSubscript:v23];
      [v21 addObject:v24];

      ++v22;
    }

    while (v22 < [v18 count]);
  }

  v25 = [[a1 alloc] initWithStores:v21 sessionDescriptor:v19 seed:a7];

  return v25;
}

void __97__PMLPlanSimulator_simulatorWithDbPaths_sessionDescriptor_sessionsInBatch_maxSessionsLimit_seed___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v6 fileExistsAtPath:v5];

  if ((v7 & 1) == 0)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:*(a1 + 56) object:*(a1 + 64) file:@"PMLPlanSimulator.m" lineNumber:98 description:{@"Can't instantiate simulator, no db at %@", v5}];
  }

  v8 = [[PMLTrainingStore alloc] initWithPath:v5];
  v9 = [PMLInMemoryCachedStore cachedStoreFromRealStore:v8 sessionDescriptor:*(a1 + 40) sessionsLimit:*(a1 + 72)];
  v10 = *(a1 + 48);
  objc_sync_enter(v10);
  v11 = *(a1 + 48);
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a2];
  [v11 setObject:v9 forKeyedSubscript:v12];

  objc_sync_exit(v10);

  objc_autoreleasePoolPop(v4);
}

@end