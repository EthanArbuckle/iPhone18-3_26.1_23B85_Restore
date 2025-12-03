@interface PMLPlanSimulator
+ (id)simulatorWithDbPaths:(id)paths sessionDescriptor:(id)descriptor sessionsInBatch:(unint64_t)batch maxSessionsLimit:(unint64_t)limit seed:(unint64_t)seed;
- (PMLPlanSimulator)initWithStores:(id)stores sessionDescriptor:(id)descriptor seed:(unint64_t)seed;
- (id)_randomStore;
- (id)_randomStores:(unint64_t)stores;
- (id)runParallelPlansWithPlanId:(id)id tracker:(id)tracker noiseScaleFactors:(id)factors noiseMinimumMagnitude:(float)magnitude weights:(id)weights serverIteration:(unint64_t)iteration useIntercept:(BOOL)intercept noiseMechanism:(int64_t)self0 usingRandomlySelected:(unint64_t)self1;
@end

@implementation PMLPlanSimulator

- (id)runParallelPlansWithPlanId:(id)id tracker:(id)tracker noiseScaleFactors:(id)factors noiseMinimumMagnitude:(float)magnitude weights:(id)weights serverIteration:(unint64_t)iteration useIntercept:(BOOL)intercept noiseMechanism:(int64_t)self0 usingRandomlySelected:(unint64_t)self1
{
  var1 = factors.var1;
  var0 = factors.var0;
  idCopy = id;
  trackerCopy = tracker;
  weightsCopy = weights;
  v22 = [(PMLPlanSimulator *)self _randomStores:selected];
  v23 = objc_opt_new();
  v24 = dispatch_get_global_queue(33, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __169__PMLPlanSimulator_runParallelPlansWithPlanId_tracker_noiseScaleFactors_noiseMinimumMagnitude_weights_serverIteration_useIntercept_noiseMechanism_usingRandomlySelected___block_invoke;
  block[3] = &unk_279ABFA18;
  v43 = var0;
  v44 = var1;
  magnitudeCopy = magnitude;
  iterationCopy = iteration;
  mechanismCopy = mechanism;
  v35 = v22;
  v36 = trackerCopy;
  v37 = idCopy;
  selfCopy = self;
  v39 = weightsCopy;
  interceptCopy = intercept;
  v25 = v23;
  v40 = v25;
  v26 = weightsCopy;
  v27 = idCopy;
  v28 = trackerCopy;
  v29 = v22;
  dispatch_apply(selected, v24, block);

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

- (id)_randomStores:(unint64_t)stores
{
  for (i = objc_opt_new(); stores; --stores)
  {
    _randomStore = [(PMLPlanSimulator *)self _randomStore];
    [i addObject:_randomStore];
  }

  return i;
}

- (id)_randomStore
{
  next = [(_PASRng *)self->_rng next];
  v4 = next % [(NSArray *)self->_stores count];
  stores = self->_stores;

  return [(NSArray *)stores objectAtIndexedSubscript:v4];
}

- (PMLPlanSimulator)initWithStores:(id)stores sessionDescriptor:(id)descriptor seed:(unint64_t)seed
{
  storesCopy = stores;
  descriptorCopy = descriptor;
  v16.receiver = self;
  v16.super_class = PMLPlanSimulator;
  v11 = [(PMLPlanSimulator *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_stores, stores);
    objc_storeStrong(&v12->_sessionDescriptor, descriptor);
    v13 = [objc_alloc(MEMORY[0x277D42618]) initWithSeed:seed];
    rng = v12->_rng;
    v12->_rng = v13;
  }

  return v12;
}

+ (id)simulatorWithDbPaths:(id)paths sessionDescriptor:(id)descriptor sessionsInBatch:(unint64_t)batch maxSessionsLimit:(unint64_t)limit seed:(unint64_t)seed
{
  pathsCopy = paths;
  descriptorCopy = descriptor;
  if (![pathsCopy count])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PMLPlanSimulator.m" lineNumber:91 description:{@"Can't instantiate simulator, need at least one db file."}];
  }

  if (batch != limit)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PMLPlanSimulator.m" lineNumber:92 description:@"Multiple batches not supported in simulation."];
  }

  v15 = objc_opt_new();
  v16 = [pathsCopy count];
  v17 = dispatch_get_global_queue(33, 0);
  v29 = MEMORY[0x277D85DD0];
  v30 = 3221225472;
  v31 = __97__PMLPlanSimulator_simulatorWithDbPaths_sessionDescriptor_sessionsInBatch_maxSessionsLimit_seed___block_invoke;
  v32 = &unk_279ABF9F0;
  v18 = pathsCopy;
  v33 = v18;
  v36 = a2;
  selfCopy = self;
  v19 = descriptorCopy;
  v34 = v19;
  limitCopy = limit;
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

  v25 = [[self alloc] initWithStores:v21 sessionDescriptor:v19 seed:seed];

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