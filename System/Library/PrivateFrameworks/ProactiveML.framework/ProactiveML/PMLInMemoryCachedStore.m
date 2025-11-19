@interface PMLInMemoryCachedStore
+ (id)cachedStoreFromRealStore:(id)a3 sessionDescriptor:(id)a4 sessionsLimit:(unint64_t)a5;
- (PMLInMemoryCachedStore)initWithSessionBatch:(id)a3;
@end

@implementation PMLInMemoryCachedStore

- (PMLInMemoryCachedStore)initWithSessionBatch:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PMLInMemoryCachedStore;
  v6 = [(PMLTrainingStore *)&v9 initWithPath:&stru_28734BC68];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cachedSessions, a3);
  }

  return v7;
}

+ (id)cachedStoreFromRealStore:(id)a3 sessionDescriptor:(id)a4 sessionsLimit:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
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
  [v9 loadSessionsForModel:v10 excludeItemIdsUsedWithin:a5 limit:0 onlyAppleInternal:1 positiveLabel:v15 skew:0.0 block:0.0];
  if (![v17[5] count])
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"PMLPlanSimulator.m" lineNumber:44 description:{@"Couldn't load sessions for %@", v10}];
  }

  v11 = [a1 alloc];
  v12 = [v11 initWithSessionBatch:v17[5]];
  _Block_object_dispose(&v16, 8);

  return v12;
}

@end