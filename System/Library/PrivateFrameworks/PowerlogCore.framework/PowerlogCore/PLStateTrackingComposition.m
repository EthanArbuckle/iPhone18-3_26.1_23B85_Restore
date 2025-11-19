@interface PLStateTrackingComposition
+ (id)sharedInstance;
+ (void)registerState:(Class)a3;
- (PLStateTrackingComposition)init;
- (id)getCurrState:(unint64_t)a3;
- (id)getLastState:(unint64_t)a3;
- (id)getState:(unint64_t)a3 beforeDate:(id)a4;
- (id)getStateBeforeSystemStateChange:(unint64_t)a3;
- (id)getStateChangeTime:(unint64_t)a3;
- (void)handleStateChange:(id)a3;
- (void)initializeState;
- (void)registerForListeners;
- (void)registerForStates:(unint64_t)a3 withOperator:(id)a4 withBlock:(id)a5;
- (void)triggerBlocks;
@end

@implementation PLStateTrackingComposition

- (void)triggerBlocks
{
  v3 = dispatch_group_create();
  v4 = [(NSMutableDictionary *)self->_executeBlockCache allKeys];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __43__PLStateTrackingComposition_triggerBlocks__block_invoke;
  v11 = &unk_1E851B130;
  v12 = self;
  v5 = v3;
  v13 = v5;
  [v4 enumerateObjectsUsingBlock:&v8];

  v6 = PLLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(PLStateTrackingComposition *)v6 triggerBlocks];
  }

  dispatch_group_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(PLStateTrackingComposition *)v7 triggerBlocks];
  }

  [(PLStateTrackingComposition *)self setStateChangeMask:0, v8, v9, v10, v11, v12];
}

void __43__PLStateTrackingComposition_triggerBlocks__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 unsignedIntegerValue];
  if (([*(a1 + 32) stateChangeMask] & v3) != 0)
  {
    v4 = [*(a1 + 32) executeBlockCache];
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v3];
    v6 = [v4 objectForKeyedSubscript:v5];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __43__PLStateTrackingComposition_triggerBlocks__block_invoke_2;
    v7[3] = &unk_1E851B3C8;
    v8 = *(a1 + 40);
    [v6 enumerateObjectsUsingBlock:v7];
  }
}

void __43__PLStateTrackingComposition_triggerBlocks__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 operatorQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__PLStateTrackingComposition_triggerBlocks__block_invoke_3;
  block[3] = &unk_1E85190B8;
  v8 = v3;
  v6 = v3;
  dispatch_group_async(v4, v5, block);
}

void __43__PLStateTrackingComposition_triggerBlocks__block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) operatorBlock];
  v1[2]();
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_6 != -1)
  {
    +[PLStateTrackingComposition sharedInstance];
  }

  v3 = sharedInstance_instance_3;

  return v3;
}

uint64_t __44__PLStateTrackingComposition_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(PLStateTrackingComposition);
  sharedInstance_instance_3 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

- (PLStateTrackingComposition)init
{
  v19.receiver = self;
  v19.super_class = PLStateTrackingComposition;
  v2 = [(PLStateTrackingComposition *)&v19 init];
  if (v2)
  {
    v3 = [PLUtilities workQueueForClass:objc_opt_class()];
    workQueue = v2->_workQueue;
    v2->_workQueue = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    executeBlockCache = v2->_executeBlockCache;
    v2->_executeBlockCache = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    stateChangeNotifications = v2->_stateChangeNotifications;
    v2->_stateChangeNotifications = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    stateIDToStateMap = v2->_stateIDToStateMap;
    v2->_stateIDToStateMap = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    entryKeyToStateMap = v2->_entryKeyToStateMap;
    v2->_entryKeyToStateMap = v11;

    v2->_stateChangeMask = 0;
    v13 = [MEMORY[0x1E695DF00] distantPast];
    systemStateChangeTime = v2->_systemStateChangeTime;
    v2->_systemStateChangeTime = v13;

    v15 = [(PLStateTrackingComposition *)v2 workQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __34__PLStateTrackingComposition_init__block_invoke;
    block[3] = &unk_1E85190B8;
    v18 = v2;
    dispatch_async_and_wait(v15, block);
  }

  return v2;
}

uint64_t __34__PLStateTrackingComposition_init__block_invoke(uint64_t a1)
{
  [*(a1 + 32) initializeState];
  v2 = *(a1 + 32);

  return [v2 registerForListeners];
}

+ (void)registerState:(Class)a3
{
  v4 = _registeredStates;
  if (!_registeredStates)
  {
    v5 = objc_opt_new();
    v6 = _registeredStates;
    _registeredStates = v5;

    v4 = _registeredStates;
  }

  [v4 addObject:a3];
}

- (void)initializeState
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __45__PLStateTrackingComposition_initializeState__block_invoke;
  v2[3] = &unk_1E851B378;
  v2[4] = self;
  [_registeredStates enumerateObjectsUsingBlock:v2];
}

void __45__PLStateTrackingComposition_initializeState__block_invoke(uint64_t a1, objc_class *a2)
{
  v14 = objc_alloc_init(a2);
  if (v14)
  {
    v3 = [*(a1 + 32) stateIDToStateMap];
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v14, "stateId")}];
    [v3 setObject:v14 forKey:v4];

    v5 = [*(a1 + 32) entryKeyToStateMap];
    v6 = [v14 entryKey];
    v7 = [v5 objectForKeyedSubscript:v6];

    if (!v7)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v9 = [*(a1 + 32) entryKeyToStateMap];
      v10 = [v14 entryKey];
      [v9 setObject:v8 forKeyedSubscript:v10];
    }

    v11 = [*(a1 + 32) entryKeyToStateMap];
    v12 = [v14 entryKey];
    v13 = [v11 objectForKeyedSubscript:v12];
    [v13 addObject:v14];
  }
}

- (void)registerForListeners
{
  v3 = [(PLStateTrackingComposition *)self entryKeyToStateMap];
  v4 = [v3 allKeys];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__PLStateTrackingComposition_registerForListeners__block_invoke;
  v5[3] = &unk_1E851B108;
  v5[4] = self;
  [v4 enumerateObjectsUsingBlock:v5];
}

void __50__PLStateTrackingComposition_registerForListeners__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [PLEntryNotificationOperatorComposition alloc];
  v5 = [*(a1 + 32) workQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__PLStateTrackingComposition_registerForListeners__block_invoke_2;
  v8[3] = &unk_1E8519090;
  v8[4] = *(a1 + 32);
  v6 = [(PLEntryNotificationOperatorComposition *)v4 initWithWorkQueue:v5 forEntryKey:v3 withBlock:v8];

  v7 = [*(a1 + 32) stateChangeNotifications];
  [v7 addObject:v6];
}

- (void)registerForStates:(unint64_t)a3 withOperator:(id)a4 withBlock:(id)a5
{
  v8 = a4;
  v9 = a5;
  if ((a3 & 0x80) == 0)
  {
    v10 = [(PLStateTrackingComposition *)self workQueue];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __71__PLStateTrackingComposition_registerForStates_withOperator_withBlock___block_invoke;
    v11[3] = &unk_1E851B3A0;
    v11[4] = self;
    v14 = a3;
    v12 = v8;
    v13 = v9;
    dispatch_async_and_wait(v10, v11);
  }
}

void __71__PLStateTrackingComposition_registerForStates_withOperator_withBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) executeBlockCache];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 56)];
  v4 = [v2 objectForKey:v3];

  if (!v4)
  {
    v5 = [*(a1 + 32) executeBlockCache];
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 56)];
    [v5 setObject:v6 forKey:v7];
  }

  v8 = [OperatorTask alloc];
  v9 = [*(a1 + 40) workQueue];
  v13 = [(OperatorTask *)v8 initWithQueue:v9 withBlock:*(a1 + 48)];

  v10 = [*(a1 + 32) executeBlockCache];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 56)];
  v12 = [v10 objectForKeyedSubscript:v11];
  [v12 addObject:v13];
}

- (void)handleStateChange:(id)a3
{
  v4 = [a3 objectForKey:@"entry"];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 entryKey];
    if (v6)
    {
      v7 = v6;
      v8 = [v5 entryDate];

      if (v8)
      {
        [(PLStateTrackingComposition *)self setStateChangeMask:0];
        v9 = [(PLStateTrackingComposition *)self entryKeyToStateMap];
        v10 = [v5 entryKey];
        v11 = [v9 objectForKeyedSubscript:v10];
        v12 = MEMORY[0x1E69E9820];
        v13 = 3221225472;
        v14 = __48__PLStateTrackingComposition_handleStateChange___block_invoke;
        v15 = &unk_1E851B3F0;
        v16 = v5;
        v17 = self;
        [v11 enumerateObjectsUsingBlock:&v12];

        if ([(PLStateTrackingComposition *)self stateChangeMask:v12])
        {
          [(PLStateTrackingComposition *)self triggerBlocks];
        }
      }
    }
  }
}

void __48__PLStateTrackingComposition_handleStateChange___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([v6 updateWithEntry:*(a1 + 32)])
  {
    [*(a1 + 40) setStateChangeMask:{objc_msgSend(*(a1 + 40), "stateChangeMask") | objc_msgSend(v6, "stateId")}];
    v3 = [*(a1 + 40) systemStateChangeTime];
    v4 = [v6 stateChangeTime];
    v5 = [v3 laterDate:v4];
    [*(a1 + 40) setSystemStateChangeTime:v5];
  }
}

- (id)getStateChangeTime:(unint64_t)a3
{
  v4 = [(PLStateTrackingComposition *)self stateIDToStateMap];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = [v6 stateChangeTime];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)getLastState:(unint64_t)a3
{
  v4 = [(PLStateTrackingComposition *)self stateIDToStateMap];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = [v6 lastValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)getCurrState:(unint64_t)a3
{
  v4 = [(PLStateTrackingComposition *)self stateIDToStateMap];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = [v6 currValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)getStateBeforeSystemStateChange:(unint64_t)a3
{
  v5 = [(PLStateTrackingComposition *)self stateIDToStateMap];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7)
  {
    if ([(PLStateTrackingComposition *)self stateChanged:a3])
    {
      [v7 lastValue];
    }

    else
    {
      [v7 currValue];
    }
    v8 = ;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)getState:(unint64_t)a3 beforeDate:(id)a4
{
  v6 = a4;
  v7 = [(PLStateTrackingComposition *)self stateIDToStateMap];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = [v9 stateChangeTime];

    if (v10)
    {
      v11 = [v9 stateChangeTime];
      [v6 timeIntervalSinceDate:v11];
      v13 = v12;

      v14 = PLLogCommon();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
      if (v13 <= 0.0)
      {
        if (v15)
        {
          [PLStateTrackingComposition getState:v9 beforeDate:?];
        }

        v16 = [v9 lastValue];
      }

      else
      {
        if (v15)
        {
          [PLStateTrackingComposition getState:v9 beforeDate:?];
        }

        v16 = [v9 currValue];
      }

      v10 = v16;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)getState:(void *)a1 beforeDate:.cold.1(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [a1 lastValue];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_7(&dword_1D8611000, v5, v6, "State: %@ Last Value: %@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)getState:(void *)a1 beforeDate:.cold.2(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [a1 currValue];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_7(&dword_1D8611000, v5, v6, "State: %@ Current Value: %@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

@end