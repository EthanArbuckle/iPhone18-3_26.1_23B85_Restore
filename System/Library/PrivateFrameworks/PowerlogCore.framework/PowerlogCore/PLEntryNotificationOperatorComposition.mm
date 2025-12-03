@interface PLEntryNotificationOperatorComposition
+ (id)canSleepEntryNotificationWithOperator:(id)operator withBlock:(id)block;
+ (id)canSleepEntryNotificationWithWorkQueue:(id)queue withBlock:(id)block;
+ (id)displayAODNotificationWithOperator:(id)operator withBlock:(id)block;
+ (id)displayOffNotificationWithOperator:(id)operator withBlock:(id)block;
+ (id)displayOffOrAODNotificationWithOperator:(id)operator withBlock:(id)block;
+ (id)displayOnNotificationWithOperator:(id)operator withBlock:(id)block;
+ (id)displayOnOrAODNotificationWithOperator:(id)operator withBlock:(id)block;
+ (id)displayStateChangeNotificationWithOperator:(id)operator withBlock:(id)block;
+ (id)getSBCMaxTimeInterval;
+ (id)getSBCMinTimeInterval;
+ (id)luxEntryNotificationWithOperator:(id)operator withBlock:(id)block;
+ (id)requestEntryForEntryKey:(id)key forOperator:(id)operator withTimeout:(double)timeout error:(id *)error;
+ (id)significantBatteryChangeNotificationWithOperator:(id)operator withBlock:(id)block;
+ (id)significantBatteryChangeNotificationWithOperator:(id)operator withMaxIntervalInSecs:(double)secs withBlock:(id)block;
+ (id)sleepEntryNotificationWithOperator:(id)operator withBlock:(id)block;
+ (id)smcPowerAccumulatedNotificationWithOperator:(id)operator withBlock:(id)block;
+ (id)smcThermalInstantNotificationWithOperator:(id)operator withBlock:(id)block;
+ (id)wakeEntryNotificationWithOperator:(id)operator withBlock:(id)block;
+ (id)wakeEntryNotificationWithWorkQueue:(id)queue withBlock:(id)block;
- (PLEntryNotificationOperatorComposition)initWithWorkQueue:(id)queue forEntryKey:(id)key forUpdateOrInsert:(signed __int16)insert withBlock:(id)block;
- (PLEntryNotificationOperatorComposition)initWithWorkQueue:(id)queue forEntryKey:(id)key forUpdateOrInsert:(signed __int16)insert withFilter:(id)filter withBlock:(id)block;
- (id)initNotificationTimerWithWorkQueue:(id)queue withBlock:(id)block;
- (id)initNotificationTimerWithWorkQueue:(id)queue withMaxInterval:(double)interval withBlock:(id)block;
- (void)requestEntry;
@end

@implementation PLEntryNotificationOperatorComposition

+ (id)requestEntryForEntryKey:(id)key forOperator:(id)operator withTimeout:(double)timeout error:(id *)error
{
  keyCopy = key;
  operatorCopy = operator;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__12;
  v34 = __Block_byref_object_dispose__12;
  v35 = 0;
  context = objc_autoreleasePoolPush();
  v11 = dispatch_semaphore_create(1);
  dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  v12 = [PLEntryNotificationOperatorComposition alloc];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __96__PLEntryNotificationOperatorComposition_requestEntryForEntryKey_forOperator_withTimeout_error___block_invoke;
  v27[3] = &unk_1E851A4F0;
  v29 = &v30;
  v13 = v11;
  v28 = v13;
  v14 = [(PLEntryNotificationOperatorComposition *)v12 initWithOperator:operatorCopy forEntryKey:keyCopy withBlock:v27];
  [(PLEntryNotificationOperatorComposition *)v14 requestEntry];
  v15 = dispatch_time(0, (timeout * 1000000000.0));
  v16 = dispatch_semaphore_wait(v13, v15);
  if (v16)
  {
    if (+[PLDefaults debugEnabled])
    {
      errorCopy = error;
      keyCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"ERROR: Timeout requesting %@", keyCopy];
      v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Operators/Compositions/PLEntryNotificationOperatorComposition.m"];
      lastPathComponent = [v18 lastPathComponent];
      v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLEntryNotificationOperatorComposition requestEntryForEntryKey:forOperator:withTimeout:error:]"];
      [PLCoreStorage logMessage:keyCopy fromFile:lastPathComponent fromFunction:v20 fromLineNumber:55];

      v21 = PLLogCommon();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [(PLSubmissionFileSP *)keyCopy copyAndPrepareLog];
      }

      error = errorCopy;
    }

    v16 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.powerlogd" code:v16 userInfo:&unk_1F540CFE0];
  }

  dispatch_semaphore_signal(v13);
  [(PLNSNotificationOperatorComposition *)v14 listenForNotifications:0];

  objc_autoreleasePoolPop(context);
  if (error && v16)
  {
    v22 = v16;
    *error = v16;
  }

  v23 = v31[5];

  _Block_object_dispose(&v30, 8);

  return v23;
}

intptr_t __96__PLEntryNotificationOperatorComposition_requestEntryForEntryKey_forOperator_withTimeout_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"entry"];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  return dispatch_semaphore_signal(v6);
}

+ (id)smcThermalInstantNotificationWithOperator:(id)operator withBlock:(id)block
{
  blockCopy = block;
  operatorCopy = operator;
  v7 = [[PLEntryNotificationOperatorComposition alloc] initWithOperator:operatorCopy forEntryKey:@"PLSMCAgent_EventPoint_ThermalInstantKeys" withBlock:blockCopy];

  return v7;
}

+ (id)smcPowerAccumulatedNotificationWithOperator:(id)operator withBlock:(id)block
{
  blockCopy = block;
  operatorCopy = operator;
  v7 = [[PLEntryNotificationOperatorComposition alloc] initWithOperator:operatorCopy forEntryKey:@"PLSMCAgent_EventBackward_PowerAccumulatedKeys" withBlock:blockCopy];

  return v7;
}

+ (id)luxEntryNotificationWithOperator:(id)operator withBlock:(id)block
{
  blockCopy = block;
  operatorCopy = operator;
  v7 = [[PLEntryNotificationOperatorComposition alloc] initWithOperator:operatorCopy forEntryKey:@"PLDisplayAgent_EventForward_Display" withBlock:blockCopy];

  return v7;
}

+ (id)wakeEntryNotificationWithOperator:(id)operator withBlock:(id)block
{
  blockCopy = block;
  workQueue = [operator workQueue];
  v8 = [self wakeEntryNotificationWithWorkQueue:workQueue withBlock:blockCopy];

  return v8;
}

+ (id)wakeEntryNotificationWithWorkQueue:(id)queue withBlock:(id)block
{
  v16[1] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  queueCopy = queue;
  v7 = [PLEntryNotificationOperatorComposition alloc];
  v13 = &unk_1F5405F28;
  v14 = &unk_1F5405F40;
  v15 = @"State";
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v16[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v10 = [(PLEntryNotificationOperatorComposition *)v7 initWithWorkQueue:queueCopy forEntryKey:@"PLSleepWakeAgent_EventForward_PowerState" forUpdateOrInsert:1 withFilter:v9 withBlock:blockCopy];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)displayOnNotificationWithOperator:(id)operator withBlock:(id)block
{
  v19[2] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  operatorCopy = operator;
  v7 = [PLEntryNotificationOperatorComposition alloc];
  v16 = &unk_1F5405F28;
  v17 = @"Backlight";
  v18[0] = @"Block";
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v18[1] = @"Active";
  v19[0] = v8;
  v14 = &unk_1F5405F28;
  v15 = &unk_1F5405F58;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v19[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v11 = [(PLEntryNotificationOperatorComposition *)v7 initWithOperator:operatorCopy forEntryKey:@"PLDisplayAgent_EventPoint_Display" withFilter:v10 withBlock:blockCopy];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)displayOffNotificationWithOperator:(id)operator withBlock:(id)block
{
  v19[2] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  operatorCopy = operator;
  v7 = [PLEntryNotificationOperatorComposition alloc];
  v16 = &unk_1F5405F28;
  v17 = @"Backlight";
  v18[0] = @"Block";
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v18[1] = @"Active";
  v19[0] = v8;
  v14 = &unk_1F5405F28;
  v15 = &unk_1F5405F70;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v19[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v11 = [(PLEntryNotificationOperatorComposition *)v7 initWithOperator:operatorCopy forEntryKey:@"PLDisplayAgent_EventPoint_Display" withFilter:v10 withBlock:blockCopy];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)displayAODNotificationWithOperator:(id)operator withBlock:(id)block
{
  v19[2] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  operatorCopy = operator;
  v7 = [PLEntryNotificationOperatorComposition alloc];
  v16 = &unk_1F5405F28;
  v17 = @"Backlight";
  v18[0] = @"Block";
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v18[1] = @"Active";
  v19[0] = v8;
  v14 = &unk_1F5405F28;
  v15 = &unk_1F5405F88;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v19[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v11 = [(PLEntryNotificationOperatorComposition *)v7 initWithOperator:operatorCopy forEntryKey:@"PLDisplayAgent_EventPoint_Display" withFilter:v10 withBlock:blockCopy];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)displayOnOrAODNotificationWithOperator:(id)operator withBlock:(id)block
{
  v19[2] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  operatorCopy = operator;
  v7 = [PLEntryNotificationOperatorComposition alloc];
  v16 = &unk_1F5405F28;
  v17 = @"Backlight";
  v18[0] = @"Block";
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v18[1] = @"Active";
  v19[0] = v8;
  v14 = &unk_1F5405FA0;
  v15 = &unk_1F5405F70;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v19[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v11 = [(PLEntryNotificationOperatorComposition *)v7 initWithOperator:operatorCopy forEntryKey:@"PLDisplayAgent_EventPoint_Display" withFilter:v10 withBlock:blockCopy];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)displayOffOrAODNotificationWithOperator:(id)operator withBlock:(id)block
{
  v19[2] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  operatorCopy = operator;
  v7 = [PLEntryNotificationOperatorComposition alloc];
  v16 = &unk_1F5405F28;
  v17 = @"Backlight";
  v18[0] = @"Block";
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v18[1] = @"Active";
  v19[0] = v8;
  v14 = &unk_1F5405FA0;
  v15 = &unk_1F5405F58;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v19[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v11 = [(PLEntryNotificationOperatorComposition *)v7 initWithOperator:operatorCopy forEntryKey:@"PLDisplayAgent_EventPoint_Display" withFilter:v10 withBlock:blockCopy];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)displayStateChangeNotificationWithOperator:(id)operator withBlock:(id)block
{
  v16[1] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  operatorCopy = operator;
  v7 = [PLEntryNotificationOperatorComposition alloc];
  v13 = &unk_1F5405F28;
  v14 = @"Backlight";
  v15 = @"Block";
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v16[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v10 = [(PLEntryNotificationOperatorComposition *)v7 initWithOperator:operatorCopy forEntryKey:@"PLDisplayAgent_EventPoint_Display" withFilter:v9 withBlock:blockCopy];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)significantBatteryChangeNotificationWithOperator:(id)operator withBlock:(id)block
{
  v20[1] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  operatorCopy = operator;
  v8 = +[PLUtilities hasBattery];
  v9 = [PLEntryNotificationOperatorComposition alloc];
  if (v8)
  {
    v19 = @"Level";
    v18[0] = &unk_1F540A3B0;
    v17[0] = &unk_1F5405F40;
    v17[1] = &unk_1F5405FB8;
    getSBCMaxTimeInterval = [self getSBCMaxTimeInterval];
    v18[1] = getSBCMaxTimeInterval;
    v17[2] = &unk_1F5405FD0;
    getSBCMinTimeInterval = [self getSBCMinTimeInterval];
    v18[2] = getSBCMinTimeInterval;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:3];
    v20[0] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v14 = [(PLEntryNotificationOperatorComposition *)v9 initWithOperator:operatorCopy forEntryKey:@"PLBatteryAgent_EventBackward_Battery" withFilter:v13 withBlock:blockCopy];
  }

  else
  {
    getSBCMaxTimeInterval = [operatorCopy workQueue];

    v14 = [(PLEntryNotificationOperatorComposition *)v9 initNotificationTimerWithWorkQueue:getSBCMaxTimeInterval withBlock:blockCopy];
  }

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)significantBatteryChangeNotificationWithOperator:(id)operator withMaxIntervalInSecs:(double)secs withBlock:(id)block
{
  v22[1] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  operatorCopy = operator;
  v10 = +[PLUtilities hasBattery];
  v11 = [PLEntryNotificationOperatorComposition alloc];
  if (v10)
  {
    v21 = @"Level";
    v20[0] = &unk_1F540A3B0;
    v19[0] = &unk_1F5405F40;
    v19[1] = &unk_1F5405FB8;
    workQueue = [MEMORY[0x1E696AD98] numberWithDouble:secs];
    v20[1] = workQueue;
    v19[2] = &unk_1F5405FD0;
    getSBCMinTimeInterval = [self getSBCMinTimeInterval];
    v20[2] = getSBCMinTimeInterval;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];
    v22[0] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v16 = [(PLEntryNotificationOperatorComposition *)v11 initWithOperator:operatorCopy forEntryKey:@"PLBatteryAgent_EventBackward_Battery" withFilter:v15 withBlock:blockCopy];
  }

  else
  {
    workQueue = [operatorCopy workQueue];

    v16 = [(PLEntryNotificationOperatorComposition *)v11 initNotificationTimerWithWorkQueue:workQueue withMaxInterval:blockCopy withBlock:secs];
  }

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)getSBCMinTimeInterval
{
  v2 = MEMORY[0x1E696AD98];
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __63__PLEntryNotificationOperatorComposition_getSBCMinTimeInterval__block_invoke;
  v9 = &unk_1E85195E0;
  v10 = @"SBCMinTimeInterval";
  v11 = 0x4072C00000000000;
  if (getSBCMinTimeInterval_defaultOnce != -1)
  {
    dispatch_once(&getSBCMinTimeInterval_defaultOnce, &v6);
  }

  v3 = *&getSBCMinTimeInterval_objectForKey;

  v4 = [v2 numberWithDouble:{v3, v6, v7, v8, v9}];

  return v4;
}

uint64_t __63__PLEntryNotificationOperatorComposition_getSBCMinTimeInterval__block_invoke(uint64_t a1)
{
  result = [PLDefaults doubleForKey:*(a1 + 32) ifNotSet:*(a1 + 40)];
  getSBCMinTimeInterval_objectForKey = v2;
  return result;
}

+ (id)getSBCMaxTimeInterval
{
  v2 = MEMORY[0x1E696AD98];
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __63__PLEntryNotificationOperatorComposition_getSBCMaxTimeInterval__block_invoke;
  v9 = &unk_1E85195E0;
  v10 = @"SBCMaxTimeInterval";
  v11 = 0x409C200000000000;
  if (getSBCMaxTimeInterval_defaultOnce != -1)
  {
    dispatch_once(&getSBCMaxTimeInterval_defaultOnce, &v6);
  }

  v3 = *&getSBCMaxTimeInterval_objectForKey;

  v4 = [v2 numberWithDouble:{v3, v6, v7, v8, v9}];

  return v4;
}

uint64_t __63__PLEntryNotificationOperatorComposition_getSBCMaxTimeInterval__block_invoke(uint64_t a1)
{
  result = [PLDefaults doubleForKey:*(a1 + 32) ifNotSet:*(a1 + 40)];
  getSBCMaxTimeInterval_objectForKey = v2;
  return result;
}

+ (id)canSleepEntryNotificationWithOperator:(id)operator withBlock:(id)block
{
  blockCopy = block;
  workQueue = [operator workQueue];
  v8 = [self canSleepEntryNotificationWithWorkQueue:workQueue withBlock:blockCopy];

  return v8;
}

+ (id)canSleepEntryNotificationWithWorkQueue:(id)queue withBlock:(id)block
{
  v19[2] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  queueCopy = queue;
  v7 = [PLEntryNotificationOperatorComposition alloc];
  v16 = &unk_1F5405F28;
  v17 = &unk_1F5405FE8;
  v18[0] = @"State";
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v18[1] = @"Event";
  v19[0] = v8;
  v14 = &unk_1F5405F28;
  v15 = &unk_1F5405F28;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v19[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v11 = [(PLEntryNotificationOperatorComposition *)v7 initWithWorkQueue:queueCopy forEntryKey:@"PLSleepWakeAgent_EventForward_PowerState" forUpdateOrInsert:1 withFilter:v10 withBlock:blockCopy];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)sleepEntryNotificationWithOperator:(id)operator withBlock:(id)block
{
  v16[1] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  operatorCopy = operator;
  v7 = [PLEntryNotificationOperatorComposition alloc];
  v13 = &unk_1F5405F28;
  v14 = &unk_1F5405FE8;
  v15 = @"State";
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v16[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v10 = [(PLEntryNotificationOperatorComposition *)v7 initWithOperator:operatorCopy forEntryKey:@"PLSleepWakeAgent_EventForward_PowerState" withFilter:v9 withBlock:blockCopy];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (PLEntryNotificationOperatorComposition)initWithWorkQueue:(id)queue forEntryKey:(id)key forUpdateOrInsert:(signed __int16)insert withBlock:(id)block
{
  insertCopy = insert;
  queueCopy = queue;
  keyCopy = key;
  blockCopy = block;
  v13 = objc_opt_new();
  v14 = v13;
  if ((insertCopy - 1) <= 1)
  {
    [v13 addObject:keyCopy];
  }

  if ((insertCopy & 0xFFFFFFFD) == 0)
  {
    keyCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_update", keyCopy];
    [v14 addObject:keyCopy];
  }

  v18.receiver = self;
  v18.super_class = PLEntryNotificationOperatorComposition;
  v16 = [(PLNSNotificationOperatorComposition *)&v18 initWithWorkQueue:queueCopy forNotifications:v14 withBlock:blockCopy];

  return v16;
}

- (PLEntryNotificationOperatorComposition)initWithWorkQueue:(id)queue forEntryKey:(id)key forUpdateOrInsert:(signed __int16)insert withFilter:(id)filter withBlock:(id)block
{
  v41 = *MEMORY[0x1E69E9840];
  insertCopy = insert;
  queueCopy = queue;
  keyCopy = key;
  filterCopy = filter;
  blockCopy = block;
  v16 = objc_opt_new();
  v17 = objc_opt_new();
  v18 = [PLEntryDefinition notificationNameForEntryKey:keyCopy withFilterDefintion:filterCopy];
  if ((insertCopy - 1) <= 1)
  {
    [v16 addObject:v18];
    keyCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"requestingFilter.%@", keyCopy];
    [v17 addObject:keyCopy];
  }

  if ((insertCopy & 0xFFFFFFFD) == 0)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_update", v18];
    [v16 addObject:v20];
  }

  v39.receiver = self;
  v39.super_class = PLEntryNotificationOperatorComposition;
  v21 = [(PLNSNotificationOperatorComposition *)&v39 initWithWorkQueue:queueCopy forNotifications:v16 withBlock:blockCopy];
  if (v21)
  {
    v31 = v18;
    v32 = v17;
    v33 = blockCopy;
    v34 = queueCopy;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v22 = v17;
    v23 = [v22 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v36;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v36 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v35 + 1) + 8 * i);
          defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
          [defaultCenter postNotificationName:v27 object:0 userInfo:filterCopy];
        }

        v24 = [v22 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v24);
    }

    queueCopy = v34;
    v17 = v32;
    blockCopy = v33;
    v18 = v31;
  }

  v29 = *MEMORY[0x1E69E9840];
  return v21;
}

- (void)requestEntry
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = MEMORY[0x1E696AEC0];
  notificationName = [(PLNSNotificationOperatorComposition *)self notificationName];
  v5 = [v3 stringWithFormat:@"requesting.%@", notificationName];
  [defaultCenter postNotificationName:v5 object:0];
}

- (id)initNotificationTimerWithWorkQueue:(id)queue withBlock:(id)block
{
  blockCopy = block;
  queueCopy = queue;
  v8 = [(PLEntryNotificationOperatorComposition *)self initNotificationTimerWithWorkQueue:queueCopy withMaxInterval:blockCopy withBlock:[PLDefaults longForKey:@"sbcLoggingInterval" ifNotSet:1800]];

  return v8;
}

- (id)initNotificationTimerWithWorkQueue:(id)queue withMaxInterval:(double)interval withBlock:(id)block
{
  queueCopy = queue;
  blockCopy = block;
  if (!notificationTimer)
  {
    v10 = [PLTimer alloc];
    v11 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:interval];
    v12 = dispatch_get_global_queue(-2, 0);
    v13 = [(PLTimer *)v10 initWithFireDate:v11 withInterval:1 withTolerance:0 repeats:v12 withUserInfo:&__block_literal_global_29 withQueue:interval withBlock:0.0];
    v14 = notificationTimer;
    notificationTimer = v13;
  }

  v17.receiver = self;
  v17.super_class = PLEntryNotificationOperatorComposition;
  v15 = [(PLNSNotificationOperatorComposition *)&v17 initWithWorkQueue:queueCopy forNotification:@"PLTimerFiredNotification" withBlock:blockCopy];

  return v15;
}

void __103__PLEntryNotificationOperatorComposition_initNotificationTimerWithWorkQueue_withMaxInterval_withBlock___block_invoke()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:@"PLTimerFiredNotification" object:0];
}

@end