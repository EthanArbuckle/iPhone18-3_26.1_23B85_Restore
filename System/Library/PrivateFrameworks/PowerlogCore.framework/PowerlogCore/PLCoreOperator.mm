@interface PLCoreOperator
+ (id)registeredOperators;
+ (void)registerOperator:(Class)operator;
- (PLCoreOperator)init;
- (id)allOperators;
- (void)dealloc;
- (void)initOperatorDependanciesWithBlock:(id)block;
- (void)initTaskOperatorDependancies;
- (void)log;
- (void)setupEntryObjectsAndStorage:(id)storage;
- (void)startOperatorsOfSuperClassType:(Class)type;
- (void)startServicesForPreUnlockTelemetry;
@end

@implementation PLCoreOperator

- (id)allOperators
{
  operators = [(PLCoreOperator *)self operators];
  objc_sync_enter(operators);
  operators2 = [(PLCoreOperator *)self operators];
  allValues = [operators2 allValues];

  objc_sync_exit(operators);

  return allValues;
}

void __21__PLCoreOperator_log__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = [*(a1 + 32) allOperators];
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    do
    {
      v5 = 0;
      do
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v10 + 1) + 8 * v5);
        v7 = [PLUtilities workQueueForClass:objc_opt_class()];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __21__PLCoreOperator_log__block_invoke_2;
        block[3] = &unk_1E85190B8;
        block[4] = v6;
        dispatch_sync(v7, block);

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __21__PLCoreOperator_log__block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) log];

  objc_autoreleasePoolPop(v2);
}

+ (void)registerOperator:(Class)operator
{
  if (registerOperator__onceToken != -1)
  {
    +[PLCoreOperator registerOperator:];
  }

  for (i = -[objc_class superclass](operator, "superclass"); i != objc_opt_class(); i = [i superclass])
  {
    if (i == objc_opt_class())
    {
      break;
    }

    if (i == objc_opt_class())
    {
      break;
    }
  }

  v5 = [_registeredOperators objectForKeyedSubscript:i];

  if (!v5)
  {
    v6 = _registeredOperators;
    objc_sync_enter(v6);
    v7 = [_registeredOperators objectForKeyedSubscript:i];

    if (!v7)
    {
      v8 = objc_opt_new();
      [_registeredOperators setObject:v8 forKeyedSubscript:i];
    }

    objc_sync_exit(v6);
  }

  if (+[PLDefaults debugEnabled])
  {
    operator = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@ registered", i, operator];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLCoreOperator.m"];
    lastPathComponent = [v10 lastPathComponent];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLCoreOperator registerOperator:]"];
    [PLCoreStorage logMessage:operator fromFile:lastPathComponent fromFunction:v12 fromLineNumber:38];

    v13 = PLLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
    }
  }

  v14 = [_registeredOperators objectForKeyedSubscript:i];
  objc_sync_enter(v14);
  v15 = [_registeredOperators objectForKeyedSubscript:i];
  [v15 addObject:operator];

  objc_sync_exit(v14);
}

uint64_t __35__PLCoreOperator_registerOperator___block_invoke()
{
  _registeredOperators = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

+ (id)registeredOperators
{
  v3 = objc_opt_class();
  if (v3 == objc_opt_class())
  {
    v6 = off_1E8518960;
  }

  else
  {
    v4 = objc_opt_class();
    if (v4 != objc_opt_class())
    {
      v5 = 0;
      goto LABEL_7;
    }

    v6 = off_1E8518858;
  }

  v7 = *v6;
  v5 = [self registeredOperatorsOfSuperClassType:objc_opt_class()];
LABEL_7:

  return v5;
}

- (PLCoreOperator)init
{
  v6.receiver = self;
  v6.super_class = PLCoreOperator;
  v2 = [(PLCoreOperator *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    operators = v2->_operators;
    v2->_operators = v3;
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v5.receiver = self;
  v5.super_class = PLCoreOperator;
  [(PLCoreOperator *)&v5 dealloc];
}

void __42__PLCoreOperator_initOperatorDependancies__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__PLCoreOperator_initOperatorDependancies__block_invoke_2;
  block[3] = &unk_1E85190B8;
  v6 = v2;
  v4 = v2;
  dispatch_async(v3, block);
}

uint64_t __42__PLCoreOperator_initOperatorDependancies__block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = PLLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) className];
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1D8611000, v2, OS_LOG_TYPE_DEFAULT, "Calling %@ initOperatorDependancies", &v6, 0xCu);
  }

  result = [*(a1 + 32) initOperatorDependancies];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)initOperatorDependanciesWithBlock:(id)block
{
  v18 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  operators = [(PLCoreOperator *)self operators];
  objc_sync_enter(operators);
  v6 = objc_autoreleasePoolPush();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  operators2 = [(PLCoreOperator *)self operators];
  allValues = [operators2 allValues];

  v9 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(allValues);
        }

        if (blockCopy)
        {
          blockCopy[2](blockCopy, *(*(&v13 + 1) + 8 * v11));
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  objc_autoreleasePoolPop(v6);
  objc_sync_exit(operators);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)initTaskOperatorDependancies
{
  if (!+[PLDefaults liteMode])
  {
    if (!+[PLDefaults taskMode](PLDefaults, "taskMode") || (+[PLCoreStorage additionalTables], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
    {

      [(PLCoreOperator *)self initOperatorDependanciesWithBlock:&__block_literal_global_28];
    }
  }
}

void __46__PLCoreOperator_initTaskOperatorDependancies__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[PLCoreStorage additionalTables];
  v4 = [v2 className];
  v5 = [v3 objectForKey:v4];
  if (v5)
  {

LABEL_4:
    v7 = [v2 workQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__PLCoreOperator_initTaskOperatorDependancies__block_invoke_2;
    block[3] = &unk_1E85190B8;
    v9 = v2;
    dispatch_async(v7, block);

    goto LABEL_5;
  }

  v6 = +[PLDefaults fullMode];

  if (v6)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (void)startServicesForPreUnlockTelemetry
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = NSClassFromString(&cfstr_Plxpcservice.isa);
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  [(PLCoreOperator *)self setupEntryObjectsAndStorage:v3];

  v4 = *MEMORY[0x1E69E9840];
}

- (void)startOperatorsOfSuperClassType:(Class)type
{
  v5 = [objc_opt_class() registeredOperatorsOfSuperClassType:type];
  v6 = [v5 count];

  if (v6)
  {
    [objc_opt_class() registeredOperatorsOfSuperClassType:type];
  }

  else
  {
    [PLUtilities allSubClassesForClass:type];
  }
  v7 = ;
  if (+[PLDefaults debugEnabled])
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ availableOperators=%@", type, v7];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLCoreOperator.m"];
    lastPathComponent = [v9 lastPathComponent];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreOperator startOperatorsOfSuperClassType:]"];
    [PLCoreStorage logMessage:v8 fromFile:lastPathComponent fromFunction:v11 fromLineNumber:123];

    v12 = PLLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
    }
  }

  [(PLCoreOperator *)self setupEntryObjectsAndStorage:v7];
}

- (void)setupEntryObjectsAndStorage:(id)storage
{
  v46 = *MEMORY[0x1E69E9840];
  storageCopy = storage;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v4 = [storageCopy countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v39;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v39 != v6)
        {
          objc_enumerationMutation(storageCopy);
        }

        v8 = *(*(&v38 + 1) + 8 * i);
        if ([v8 isEnabled])
        {
          [PLEntryKey setupEntryObjectsForOperatorClass:v8];
        }
      }

      v5 = [storageCopy countByEnumeratingWithState:&v38 objects:v45 count:16];
    }

    while (v5);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = storageCopy;
  v9 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0x1E8518000uLL;
    v12 = *v35;
    do
    {
      for (j = 0; j != v10; ++j)
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v34 + 1) + 8 * j);
        v15 = NSStringFromClass(v14);
        isEnabled = [(objc_class *)v14 isEnabled];
        debugEnabled = [*(v11 + 2224) debugEnabled];
        if (isEnabled)
        {
          if (debugEnabled)
          {
            v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Setting-up %@", v15];
            v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLCoreOperator.m"];
            lastPathComponent = [v19 lastPathComponent];
            v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreOperator setupEntryObjectsAndStorage:]"];
            [PLCoreStorage logMessage:v18 fromFile:lastPathComponent fromFunction:v21 fromLineNumber:139];

            v22 = PLLogCommon();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v43 = v18;
              _os_log_debug_impl(&dword_1D8611000, v22, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            v11 = 0x1E8518000;
          }

          v23 = [PLUtilities workQueueForKey:v15];
          v31[0] = MEMORY[0x1E69E9820];
          v31[1] = 3221225472;
          v31[2] = __46__PLCoreOperator_setupEntryObjectsAndStorage___block_invoke;
          v31[3] = &unk_1E8519170;
          v33 = v14;
          v31[4] = self;
          v32 = v15;
          [PLUtilities dispatchSyncIfNotCallerQueue:v23 withBlock:v31];
        }

        else
        {
          if (!debugEnabled)
          {
            goto LABEL_26;
          }

          v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Skipping %@", v15];
          v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLCoreOperator.m"];
          lastPathComponent2 = [v24 lastPathComponent];
          v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreOperator setupEntryObjectsAndStorage:]"];
          [PLCoreStorage logMessage:v23 fromFile:lastPathComponent2 fromFunction:v26 fromLineNumber:156];

          v27 = PLLogCommon();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v43 = v23;
            _os_log_debug_impl(&dword_1D8611000, v27, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v11 = 0x1E8518000;
        }

LABEL_26:
      }

      v10 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v10);
  }

  v28 = *MEMORY[0x1E69E9840];
}

void __46__PLCoreOperator_setupEntryObjectsAndStorage___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 48) operator];
  if (v3)
  {
    v4 = +[PowerlogCore sharedCore];
    v5 = [v4 storage];
    [v5 setupStorageForOperator:v3];

    v6 = [*(a1 + 32) operators];
    objc_sync_enter(v6);
    v7 = [*(a1 + 32) operators];
    [v7 setObject:v3 forKey:*(a1 + 40)];

    objc_sync_exit(v6);
    if (+[PLDefaults debugEnabled])
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is running", *(a1 + 40)];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLCoreOperator.m"];
      v10 = [v9 lastPathComponent];
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreOperator setupEntryObjectsAndStorage:]_block_invoke"];
      [PLCoreStorage logMessage:v8 fromFile:v10 fromFunction:v11 fromLineNumber:149];

      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    }
  }

  else if (+[PLDefaults debugEnabled])
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ failed setup", *(a1 + 40)];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLCoreOperator.m"];
    v14 = [v13 lastPathComponent];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreOperator setupEntryObjectsAndStorage:]_block_invoke"];
    [PLCoreStorage logMessage:v8 fromFile:v14 fromFunction:v15 fromLineNumber:151];

    v12 = PLLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
LABEL_7:
      [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
    }

LABEL_8:
  }

  objc_autoreleasePoolPop(v2);
}

- (void)log
{
  v3 = [PLUtilities workQueueForClass:objc_opt_class()];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __21__PLCoreOperator_log__block_invoke;
  block[3] = &unk_1E85190B8;
  block[4] = self;
  dispatch_async(v3, block);
}

@end