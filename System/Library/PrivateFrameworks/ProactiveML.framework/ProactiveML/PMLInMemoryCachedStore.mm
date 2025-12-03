@interface PMLInMemoryCachedStore
+ (id)cachedStoreFromRealStore:(id)store sessionDescriptor:(id)descriptor sessionsLimit:(unint64_t)limit;
- (PMLInMemoryCachedStore)initWithSessionBatch:(id)batch;
@end

@implementation PMLInMemoryCachedStore

- (PMLInMemoryCachedStore)initWithSessionBatch:(id)batch
{
  batchCopy = batch;
  v9.receiver = self;
  v9.super_class = PMLInMemoryCachedStore;
  v6 = [(PMLTrainingStore *)&v9 initWithPath:&stru_28734BC68];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cachedSessions, batch);
  }

  return v7;
}

+ (id)cachedStoreFromRealStore:(id)store sessionDescriptor:(id)descriptor sessionsLimit:(unint64_t)limit
{
  storeCopy = store;
  descriptorCopy = descriptor;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __83__PMLInMemoryCachedStore_cachedStoreFromRealStore_sessionDescriptor_sessionsLimit___block_invoke;
  v15[3] = &unk_279ABF9C8;
  v15[4] = &v16;
  [storeCopy loadSessionsForModel:descriptorCopy excludeItemIdsUsedWithin:limit limit:0 onlyAppleInternal:1 positiveLabel:v15 skew:0.0 block:0.0];
  if (![v17[5] count])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PMLPlanSimulator.m" lineNumber:44 description:{@"Couldn't load sessions for %@", descriptorCopy}];
  }

  v11 = [self alloc];
  v12 = [v11 initWithSessionBatch:v17[5]];
  _Block_object_dispose(&v16, 8);

  return v12;
}

@end