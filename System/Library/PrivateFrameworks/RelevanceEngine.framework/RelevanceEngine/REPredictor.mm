@interface REPredictor
+ (id)availablePredictors;
+ (id)supportedFeatures;
+ (id)systemPredictorsSupportingFeatureSet:(id)set relevanceEngine:(id)engine;
- (NSCountedSet)outstandingActivities;
- (id)_init;
- (void)_performUpdate;
- (void)beginActivity:(id)activity;
- (void)beginUpdates;
- (void)dealloc;
- (void)endUpdates;
- (void)enumerateInflectionFeatureValues:(id)values;
- (void)finishActivity:(id)activity;
- (void)onQueue:(id)queue;
- (void)onQueueSync:(id)sync;
- (void)updateObservers;
@end

@implementation REPredictor

+ (id)availablePredictors
{
  if (availablePredictors_onceToken != -1)
  {
    +[REPredictor availablePredictors];
  }

  v3 = availablePredictors_PredictorClasses;

  return v3;
}

void __34__REPredictor_availablePredictors__block_invoke()
{
  v3[9] = *MEMORY[0x277D85DE8];
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  v3[2] = objc_opt_class();
  v3[3] = objc_opt_class();
  v3[4] = objc_opt_class();
  v3[5] = objc_opt_class();
  v3[6] = objc_opt_class();
  v3[7] = objc_opt_class();
  v3[8] = objc_opt_class();
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:9];
  v1 = availablePredictors_PredictorClasses;
  availablePredictors_PredictorClasses = v0;

  v2 = *MEMORY[0x277D85DE8];
}

+ (id)systemPredictorsSupportingFeatureSet:(id)set relevanceEngine:(id)engine
{
  v27 = *MEMORY[0x277D85DE8];
  setCopy = set;
  engineCopy = engine;
  v7 = objc_alloc_init(REMutableFeatureSet);
  array = [MEMORY[0x277CBEB18] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  availablePredictors = [self availablePredictors];
  v10 = [availablePredictors countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(availablePredictors);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        supportedFeatures = [v14 supportedFeatures];
        v16 = [supportedFeatures mutableCopy];

        [v16 intersetFeatureSet:setCopy];
        if ([v16 count])
        {
          [(REMutableFeatureSet *)v7 unionFeatureSet:v16];
          sharedInstance = [v14 sharedInstance];
          [array addObject:sharedInstance];
        }
      }

      v11 = [availablePredictors countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  v18 = [[REPredictorManager alloc] initWithPredictors:array featureSet:v7 relevanceEngine:engineCopy];
  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)_init
{
  v32.receiver = self;
  v32.super_class = REPredictor;
  _init = [(REObservableSingleton *)&v32 _init];
  if (_init)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    if (_init_onceToken != -1)
    {
      [REPredictor _init];
    }

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_USER_INITIATED, 0);

    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.RelevanceEngine.%@", v4];
    uTF8String = [v7 UTF8String];
    nextAvailableQueue = [_init_QueuePool nextAvailableQueue];
    v10 = dispatch_queue_create_with_target_V2(uTF8String, v6, nextAvailableQueue);
    v11 = _init[2];
    _init[2] = v10;

    v12 = objc_opt_new();
    v13 = _init[3];
    _init[3] = v12;

    *(_init + 12) = 0;
    v14 = [MEMORY[0x277CCA940] set];
    v15 = _init[5];
    _init[5] = v14;

    objc_initWeak(&location, _init);
    v16 = +[(RESingleton *)RERelevanceSignalUpdateScheduler];
    [objc_opt_class() updateInterval];
    v18 = v17;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __20__REPredictor__init__block_invoke_2;
    v29[3] = &unk_2785F9A90;
    objc_copyWeak(&v30, &location);
    [v16 scheduleEventWithIdentifier:v4 updateFrequency:v29 completion:v18];

    v19 = _init[2];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __20__REPredictor__init__block_invoke_3;
    v27[3] = &unk_2785F9A90;
    objc_copyWeak(&v28, &location);
    v20 = [REUpNextScheduler schedulerWithQueue:v19 delay:v27 updateBlock:0.1];
    v21 = _init[4];
    _init[4] = v20;

    [_init beginFetchingData];
    v22 = dispatch_time(0, 500000000);
    v23 = _init[2];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __20__REPredictor__init__block_invoke_4;
    block[3] = &unk_2785F9A90;
    objc_copyWeak(&v26, &location);
    dispatch_after(v22, v23, block);
    objc_destroyWeak(&v26);
    objc_destroyWeak(&v28);
    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  return _init;
}

uint64_t __20__REPredictor__init__block_invoke()
{
  v0 = [[REDispatchQueuePool alloc] initWithQueueCount:2 prefix:@"com.apple.RelevanceEngine.Predictor"];
  v1 = _init_QueuePool;
  _init_QueuePool = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void __20__REPredictor__init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidate];
}

void __20__REPredictor__init__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performUpdate];
}

void __20__REPredictor__init__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performUpdate];
  [WeakRetained finishFetchingData];
}

- (void)dealloc
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = +[(RESingleton *)RERelevanceSignalUpdateScheduler];
  [v5 unscheduleEventWithIdentifier:v4];

  v6.receiver = self;
  v6.super_class = REPredictor;
  [(REPredictor *)&v6 dealloc];
}

- (void)onQueue:(id)queue
{
  if (queue)
  {
    dispatch_async(self->_queue, queue);
  }
}

- (void)onQueueSync:(id)sync
{
  if (sync)
  {
    dispatch_sync(self->_queue, sync);
  }
}

- (void)updateObservers
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __30__REPredictor_updateObservers__block_invoke;
  v2[3] = &unk_2785F9E40;
  v2[4] = self;
  [(REObservableSingleton *)self enumerateObservers:v2];
}

void __30__REPredictor_updateObservers__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 predictorDidUpdate:*(a1 + 32)];
  }
}

- (void)beginUpdates
{
  os_unfair_lock_lock(&self->_predictorLock);
  beginUpdatesCount = [(REPredictor *)self beginUpdatesCount];
  [(REPredictor *)self setBeginUpdatesCount:beginUpdatesCount + 1];
  os_unfair_lock_unlock(&self->_predictorLock);
  if ((beginUpdatesCount & 0x8000000000000000) == 0)
  {

    [(REPredictor *)self _setRunning:1];
  }
}

- (void)endUpdates
{
  os_unfair_lock_lock(&self->_predictorLock);
  beginUpdatesCount = [(REPredictor *)self beginUpdatesCount];
  [(REPredictor *)self setBeginUpdatesCount:beginUpdatesCount - 1];
  os_unfair_lock_unlock(&self->_predictorLock);
  if (beginUpdatesCount <= 1)
  {

    [(REPredictor *)self _setRunning:0];
  }
}

uint64_t __27__REPredictor__setRunning___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (v1 == 1)
  {
    return [v2 resume];
  }

  else
  {
    return [v2 pause];
  }
}

- (void)enumerateInflectionFeatureValues:(id)values
{
  v21 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  if (valuesCopy)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    engines = [(REPredictor *)self engines];
    v6 = [engines countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(engines);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          inflectionFeatureValues = [v10 inflectionFeatureValues];
          v14[0] = MEMORY[0x277D85DD0];
          v14[1] = 3221225472;
          v14[2] = __48__REPredictor_enumerateInflectionFeatureValues___block_invoke;
          v14[3] = &unk_2785FC1F0;
          v12 = valuesCopy;
          v14[4] = v10;
          v15 = v12;
          [inflectionFeatureValues enumerateKeysAndObjectsUsingBlock:v14];
        }

        v7 = [engines countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __48__REPredictor_enumerateInflectionFeatureValues___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        v12 = [MEMORY[0x277CBEB68] null];
        v13 = [v12 isEqual:v11];

        if (v13)
        {

          v11 = 0;
        }

        v14 = *(a1 + 32);
        (*(*(a1 + 40) + 16))();

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v15 = *MEMORY[0x277D85DE8];
}

+ (id)supportedFeatures
{
  v2 = objc_opt_new();

  return v2;
}

- (void)_performUpdate
{
  [(REPredictor *)self beginFetchingData];
  [(REPredictor *)self update];

  [(REPredictor *)self finishFetchingData];
}

- (void)beginActivity:(id)activity
{
  activityCopy = activity;
  os_unfair_lock_lock(&self->_predictorLock);
  [(NSCountedSet *)self->_activities addObject:activityCopy];
  os_unfair_lock_unlock(&self->_predictorLock);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__REPredictor_REActivityTracking__beginActivity___block_invoke;
  v6[3] = &unk_2785FC218;
  v6[4] = self;
  v7 = activityCopy;
  v5 = activityCopy;
  [(REObservableSingleton *)self enumerateObservers:v6];
}

void __49__REPredictor_REActivityTracking__beginActivity___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 predictor:*(a1 + 32) didBeginActivity:*(a1 + 40)];
  }
}

- (void)finishActivity:(id)activity
{
  activityCopy = activity;
  os_unfair_lock_lock(&self->_predictorLock);
  [(NSCountedSet *)self->_activities removeObject:activityCopy];
  os_unfair_lock_unlock(&self->_predictorLock);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__REPredictor_REActivityTracking__finishActivity___block_invoke;
  v6[3] = &unk_2785FC218;
  v6[4] = self;
  v7 = activityCopy;
  v5 = activityCopy;
  [(REObservableSingleton *)self enumerateObservers:v6];
}

void __50__REPredictor_REActivityTracking__finishActivity___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 predictor:*(a1 + 32) didFinishActivity:*(a1 + 40)];
  }
}

- (NSCountedSet)outstandingActivities
{
  os_unfair_lock_lock(&self->_predictorLock);
  v3 = [(NSCountedSet *)self->_activities copy];
  os_unfair_lock_unlock(&self->_predictorLock);

  return v3;
}

@end