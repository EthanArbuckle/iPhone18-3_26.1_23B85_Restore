@interface PLActivityScheduler
+ (id)sharedInstance;
- (PLActivityScheduler)init;
- (id)lastCompletedDateWithIdentifier:(id)identifier;
- (void)cancelActivityWithIdentifier:(id)identifier;
- (void)scheduleActivityWithIdentifier:(id)identifier withCriteria:(id)criteria withMustRunCriterion:(id)criterion withQueue:(id)queue withInterruptBlock:(id)block withActivityBlock:(id)activityBlock;
@end

@implementation PLActivityScheduler

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__PLActivityScheduler_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_sharedInstance;

  return v2;
}

uint64_t __37__PLActivityScheduler_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedInstance_sharedInstance = objc_alloc_init(objc_opt_class());

  return MEMORY[0x1EEE66BB8]();
}

- (PLActivityScheduler)init
{
  v8.receiver = self;
  v8.super_class = PLActivityScheduler;
  v2 = [(PLActivityScheduler *)&v8 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    activities = v2->_activities;
    v2->_activities = dictionary;

    v5 = [PLUtilities workQueueForClass:objc_opt_class()];
    workQueue = v2->_workQueue;
    v2->_workQueue = v5;
  }

  return v2;
}

- (void)scheduleActivityWithIdentifier:(id)identifier withCriteria:(id)criteria withMustRunCriterion:(id)criterion withQueue:(id)queue withInterruptBlock:(id)block withActivityBlock:(id)activityBlock
{
  identifierCopy = identifier;
  criteriaCopy = criteria;
  criterionCopy = criterion;
  queueCopy = queue;
  blockCopy = block;
  activityBlockCopy = activityBlock;
  v20 = +[PowerlogCore sharedCore];
  storage = [v20 storage];
  storageLocked = [storage storageLocked];

  if ((storageLocked & 1) == 0)
  {
    v23 = [[PLActivity alloc] initWithIdentifier:identifierCopy withCriteria:criteriaCopy withMustRunCriterion:criterionCopy withQueue:queueCopy withInterruptBlock:blockCopy withActivityBlock:activityBlockCopy];
    if (v23)
    {
      workQueue = [(PLActivityScheduler *)self workQueue];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __135__PLActivityScheduler_scheduleActivityWithIdentifier_withCriteria_withMustRunCriterion_withQueue_withInterruptBlock_withActivityBlock___block_invoke;
      v25[3] = &unk_1E8519100;
      v25[4] = self;
      v26 = v23;
      dispatch_async_and_wait(workQueue, v25);
    }
  }
}

uint64_t __135__PLActivityScheduler_scheduleActivityWithIdentifier_withCriteria_withMustRunCriterion_withQueue_withInterruptBlock_withActivityBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) activities];
  v4 = [*(a1 + 40) identifier];
  [v3 setObject:v2 forKeyedSubscript:v4];

  v5 = *(a1 + 40);

  return [v5 setEnabled:1];
}

- (void)cancelActivityWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v5 = +[PowerlogCore sharedCore];
    storage = [v5 storage];
    storageLocked = [storage storageLocked];

    if ((storageLocked & 1) == 0)
    {
      workQueue = [(PLActivityScheduler *)self workQueue];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __52__PLActivityScheduler_cancelActivityWithIdentifier___block_invoke;
      v9[3] = &unk_1E8519100;
      v9[4] = self;
      v10 = identifierCopy;
      dispatch_async_and_wait(workQueue, v9);
    }
  }
}

void __52__PLActivityScheduler_cancelActivityWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activities];
  v5 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  v3 = v5;
  if (v5)
  {
    [v5 setEnabled:0];
    v4 = [*(a1 + 32) activities];
    [v4 removeObjectForKey:*(a1 + 40)];

    v3 = v5;
  }
}

- (id)lastCompletedDateWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  workQueue = [(PLActivityScheduler *)self workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__PLActivityScheduler_lastCompletedDateWithIdentifier___block_invoke;
  block[3] = &unk_1E8519128;
  block[4] = self;
  v10 = identifierCopy;
  v11 = &v12;
  v6 = identifierCopy;
  dispatch_async_and_wait(workQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __55__PLActivityScheduler_lastCompletedDateWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activities];
  v5 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v5)
  {
    v3 = [v5 lastCompletedDate];
  }

  else
  {
    v3 = 0;
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v3);
  v4 = v5;
  if (v5)
  {

    v4 = v5;
  }
}

@end