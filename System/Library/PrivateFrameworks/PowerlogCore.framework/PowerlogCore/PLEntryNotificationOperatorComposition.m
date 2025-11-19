@interface PLEntryNotificationOperatorComposition
+ (id)canSleepEntryNotificationWithOperator:(id)a3 withBlock:(id)a4;
+ (id)canSleepEntryNotificationWithWorkQueue:(id)a3 withBlock:(id)a4;
+ (id)displayAODNotificationWithOperator:(id)a3 withBlock:(id)a4;
+ (id)displayOffNotificationWithOperator:(id)a3 withBlock:(id)a4;
+ (id)displayOffOrAODNotificationWithOperator:(id)a3 withBlock:(id)a4;
+ (id)displayOnNotificationWithOperator:(id)a3 withBlock:(id)a4;
+ (id)displayOnOrAODNotificationWithOperator:(id)a3 withBlock:(id)a4;
+ (id)displayStateChangeNotificationWithOperator:(id)a3 withBlock:(id)a4;
+ (id)getSBCMaxTimeInterval;
+ (id)getSBCMinTimeInterval;
+ (id)luxEntryNotificationWithOperator:(id)a3 withBlock:(id)a4;
+ (id)requestEntryForEntryKey:(id)a3 forOperator:(id)a4 withTimeout:(double)a5 error:(id *)a6;
+ (id)significantBatteryChangeNotificationWithOperator:(id)a3 withBlock:(id)a4;
+ (id)significantBatteryChangeNotificationWithOperator:(id)a3 withMaxIntervalInSecs:(double)a4 withBlock:(id)a5;
+ (id)sleepEntryNotificationWithOperator:(id)a3 withBlock:(id)a4;
+ (id)smcPowerAccumulatedNotificationWithOperator:(id)a3 withBlock:(id)a4;
+ (id)smcThermalInstantNotificationWithOperator:(id)a3 withBlock:(id)a4;
+ (id)wakeEntryNotificationWithOperator:(id)a3 withBlock:(id)a4;
+ (id)wakeEntryNotificationWithWorkQueue:(id)a3 withBlock:(id)a4;
- (PLEntryNotificationOperatorComposition)initWithWorkQueue:(id)a3 forEntryKey:(id)a4 forUpdateOrInsert:(signed __int16)a5 withBlock:(id)a6;
- (PLEntryNotificationOperatorComposition)initWithWorkQueue:(id)a3 forEntryKey:(id)a4 forUpdateOrInsert:(signed __int16)a5 withFilter:(id)a6 withBlock:(id)a7;
- (id)initNotificationTimerWithWorkQueue:(id)a3 withBlock:(id)a4;
- (id)initNotificationTimerWithWorkQueue:(id)a3 withMaxInterval:(double)a4 withBlock:(id)a5;
- (void)requestEntry;
@end

@implementation PLEntryNotificationOperatorComposition

+ (id)requestEntryForEntryKey:(id)a3 forOperator:(id)a4 withTimeout:(double)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
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
  v14 = [(PLEntryNotificationOperatorComposition *)v12 initWithOperator:v10 forEntryKey:v9 withBlock:v27];
  [(PLEntryNotificationOperatorComposition *)v14 requestEntry];
  v15 = dispatch_time(0, (a5 * 1000000000.0));
  v16 = dispatch_semaphore_wait(v13, v15);
  if (v16)
  {
    if (+[PLDefaults debugEnabled])
    {
      v25 = a6;
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ERROR: Timeout requesting %@", v9];
      v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Operators/Compositions/PLEntryNotificationOperatorComposition.m"];
      v19 = [v18 lastPathComponent];
      v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLEntryNotificationOperatorComposition requestEntryForEntryKey:forOperator:withTimeout:error:]"];
      [PLCoreStorage logMessage:v17 fromFile:v19 fromFunction:v20 fromLineNumber:55];

      v21 = PLLogCommon();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [(PLSubmissionFileSP *)v17 copyAndPrepareLog];
      }

      a6 = v25;
    }

    v16 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.powerlogd" code:v16 userInfo:&unk_1F540CFE0];
  }

  dispatch_semaphore_signal(v13);
  [(PLNSNotificationOperatorComposition *)v14 listenForNotifications:0];

  objc_autoreleasePoolPop(context);
  if (a6 && v16)
  {
    v22 = v16;
    *a6 = v16;
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

+ (id)smcThermalInstantNotificationWithOperator:(id)a3 withBlock:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[PLEntryNotificationOperatorComposition alloc] initWithOperator:v6 forEntryKey:@"PLSMCAgent_EventPoint_ThermalInstantKeys" withBlock:v5];

  return v7;
}

+ (id)smcPowerAccumulatedNotificationWithOperator:(id)a3 withBlock:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[PLEntryNotificationOperatorComposition alloc] initWithOperator:v6 forEntryKey:@"PLSMCAgent_EventBackward_PowerAccumulatedKeys" withBlock:v5];

  return v7;
}

+ (id)luxEntryNotificationWithOperator:(id)a3 withBlock:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[PLEntryNotificationOperatorComposition alloc] initWithOperator:v6 forEntryKey:@"PLDisplayAgent_EventForward_Display" withBlock:v5];

  return v7;
}

+ (id)wakeEntryNotificationWithOperator:(id)a3 withBlock:(id)a4
{
  v6 = a4;
  v7 = [a3 workQueue];
  v8 = [a1 wakeEntryNotificationWithWorkQueue:v7 withBlock:v6];

  return v8;
}

+ (id)wakeEntryNotificationWithWorkQueue:(id)a3 withBlock:(id)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3;
  v7 = [PLEntryNotificationOperatorComposition alloc];
  v13 = &unk_1F5405F28;
  v14 = &unk_1F5405F40;
  v15 = @"State";
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v16[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v10 = [(PLEntryNotificationOperatorComposition *)v7 initWithWorkQueue:v6 forEntryKey:@"PLSleepWakeAgent_EventForward_PowerState" forUpdateOrInsert:1 withFilter:v9 withBlock:v5];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)displayOnNotificationWithOperator:(id)a3 withBlock:(id)a4
{
  v19[2] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3;
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
  v11 = [(PLEntryNotificationOperatorComposition *)v7 initWithOperator:v6 forEntryKey:@"PLDisplayAgent_EventPoint_Display" withFilter:v10 withBlock:v5];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)displayOffNotificationWithOperator:(id)a3 withBlock:(id)a4
{
  v19[2] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3;
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
  v11 = [(PLEntryNotificationOperatorComposition *)v7 initWithOperator:v6 forEntryKey:@"PLDisplayAgent_EventPoint_Display" withFilter:v10 withBlock:v5];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)displayAODNotificationWithOperator:(id)a3 withBlock:(id)a4
{
  v19[2] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3;
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
  v11 = [(PLEntryNotificationOperatorComposition *)v7 initWithOperator:v6 forEntryKey:@"PLDisplayAgent_EventPoint_Display" withFilter:v10 withBlock:v5];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)displayOnOrAODNotificationWithOperator:(id)a3 withBlock:(id)a4
{
  v19[2] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3;
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
  v11 = [(PLEntryNotificationOperatorComposition *)v7 initWithOperator:v6 forEntryKey:@"PLDisplayAgent_EventPoint_Display" withFilter:v10 withBlock:v5];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)displayOffOrAODNotificationWithOperator:(id)a3 withBlock:(id)a4
{
  v19[2] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3;
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
  v11 = [(PLEntryNotificationOperatorComposition *)v7 initWithOperator:v6 forEntryKey:@"PLDisplayAgent_EventPoint_Display" withFilter:v10 withBlock:v5];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)displayStateChangeNotificationWithOperator:(id)a3 withBlock:(id)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3;
  v7 = [PLEntryNotificationOperatorComposition alloc];
  v13 = &unk_1F5405F28;
  v14 = @"Backlight";
  v15 = @"Block";
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v16[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v10 = [(PLEntryNotificationOperatorComposition *)v7 initWithOperator:v6 forEntryKey:@"PLDisplayAgent_EventPoint_Display" withFilter:v9 withBlock:v5];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)significantBatteryChangeNotificationWithOperator:(id)a3 withBlock:(id)a4
{
  v20[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = +[PLUtilities hasBattery];
  v9 = [PLEntryNotificationOperatorComposition alloc];
  if (v8)
  {
    v19 = @"Level";
    v18[0] = &unk_1F540A3B0;
    v17[0] = &unk_1F5405F40;
    v17[1] = &unk_1F5405FB8;
    v10 = [a1 getSBCMaxTimeInterval];
    v18[1] = v10;
    v17[2] = &unk_1F5405FD0;
    v11 = [a1 getSBCMinTimeInterval];
    v18[2] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:3];
    v20[0] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v14 = [(PLEntryNotificationOperatorComposition *)v9 initWithOperator:v7 forEntryKey:@"PLBatteryAgent_EventBackward_Battery" withFilter:v13 withBlock:v6];
  }

  else
  {
    v10 = [v7 workQueue];

    v14 = [(PLEntryNotificationOperatorComposition *)v9 initNotificationTimerWithWorkQueue:v10 withBlock:v6];
  }

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)significantBatteryChangeNotificationWithOperator:(id)a3 withMaxIntervalInSecs:(double)a4 withBlock:(id)a5
{
  v22[1] = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = a3;
  v10 = +[PLUtilities hasBattery];
  v11 = [PLEntryNotificationOperatorComposition alloc];
  if (v10)
  {
    v21 = @"Level";
    v20[0] = &unk_1F540A3B0;
    v19[0] = &unk_1F5405F40;
    v19[1] = &unk_1F5405FB8;
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
    v20[1] = v12;
    v19[2] = &unk_1F5405FD0;
    v13 = [a1 getSBCMinTimeInterval];
    v20[2] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];
    v22[0] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v16 = [(PLEntryNotificationOperatorComposition *)v11 initWithOperator:v9 forEntryKey:@"PLBatteryAgent_EventBackward_Battery" withFilter:v15 withBlock:v8];
  }

  else
  {
    v12 = [v9 workQueue];

    v16 = [(PLEntryNotificationOperatorComposition *)v11 initNotificationTimerWithWorkQueue:v12 withMaxInterval:v8 withBlock:a4];
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

+ (id)canSleepEntryNotificationWithOperator:(id)a3 withBlock:(id)a4
{
  v6 = a4;
  v7 = [a3 workQueue];
  v8 = [a1 canSleepEntryNotificationWithWorkQueue:v7 withBlock:v6];

  return v8;
}

+ (id)canSleepEntryNotificationWithWorkQueue:(id)a3 withBlock:(id)a4
{
  v19[2] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3;
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
  v11 = [(PLEntryNotificationOperatorComposition *)v7 initWithWorkQueue:v6 forEntryKey:@"PLSleepWakeAgent_EventForward_PowerState" forUpdateOrInsert:1 withFilter:v10 withBlock:v5];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)sleepEntryNotificationWithOperator:(id)a3 withBlock:(id)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3;
  v7 = [PLEntryNotificationOperatorComposition alloc];
  v13 = &unk_1F5405F28;
  v14 = &unk_1F5405FE8;
  v15 = @"State";
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v16[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v10 = [(PLEntryNotificationOperatorComposition *)v7 initWithOperator:v6 forEntryKey:@"PLSleepWakeAgent_EventForward_PowerState" withFilter:v9 withBlock:v5];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (PLEntryNotificationOperatorComposition)initWithWorkQueue:(id)a3 forEntryKey:(id)a4 forUpdateOrInsert:(signed __int16)a5 withBlock:(id)a6
{
  v9 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = objc_opt_new();
  v14 = v13;
  if ((v9 - 1) <= 1)
  {
    [v13 addObject:v11];
  }

  if ((v9 & 0xFFFFFFFD) == 0)
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_update", v11];
    [v14 addObject:v15];
  }

  v18.receiver = self;
  v18.super_class = PLEntryNotificationOperatorComposition;
  v16 = [(PLNSNotificationOperatorComposition *)&v18 initWithWorkQueue:v10 forNotifications:v14 withBlock:v12];

  return v16;
}

- (PLEntryNotificationOperatorComposition)initWithWorkQueue:(id)a3 forEntryKey:(id)a4 forUpdateOrInsert:(signed __int16)a5 withFilter:(id)a6 withBlock:(id)a7
{
  v41 = *MEMORY[0x1E69E9840];
  v11 = a5;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = objc_opt_new();
  v17 = objc_opt_new();
  v18 = [PLEntryDefinition notificationNameForEntryKey:v13 withFilterDefintion:v14];
  if ((v11 - 1) <= 1)
  {
    [v16 addObject:v18];
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"requestingFilter.%@", v13];
    [v17 addObject:v19];
  }

  if ((v11 & 0xFFFFFFFD) == 0)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_update", v18];
    [v16 addObject:v20];
  }

  v39.receiver = self;
  v39.super_class = PLEntryNotificationOperatorComposition;
  v21 = [(PLNSNotificationOperatorComposition *)&v39 initWithWorkQueue:v12 forNotifications:v16 withBlock:v15];
  if (v21)
  {
    v31 = v18;
    v32 = v17;
    v33 = v15;
    v34 = v12;
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
          v28 = [MEMORY[0x1E696AD88] defaultCenter];
          [v28 postNotificationName:v27 object:0 userInfo:v14];
        }

        v24 = [v22 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v24);
    }

    v12 = v34;
    v17 = v32;
    v15 = v33;
    v18 = v31;
  }

  v29 = *MEMORY[0x1E69E9840];
  return v21;
}

- (void)requestEntry
{
  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(PLNSNotificationOperatorComposition *)self notificationName];
  v5 = [v3 stringWithFormat:@"requesting.%@", v4];
  [v6 postNotificationName:v5 object:0];
}

- (id)initNotificationTimerWithWorkQueue:(id)a3 withBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PLEntryNotificationOperatorComposition *)self initNotificationTimerWithWorkQueue:v7 withMaxInterval:v6 withBlock:[PLDefaults longForKey:@"sbcLoggingInterval" ifNotSet:1800]];

  return v8;
}

- (id)initNotificationTimerWithWorkQueue:(id)a3 withMaxInterval:(double)a4 withBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (!notificationTimer)
  {
    v10 = [PLTimer alloc];
    v11 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:a4];
    v12 = dispatch_get_global_queue(-2, 0);
    v13 = [(PLTimer *)v10 initWithFireDate:v11 withInterval:1 withTolerance:0 repeats:v12 withUserInfo:&__block_literal_global_29 withQueue:a4 withBlock:0.0];
    v14 = notificationTimer;
    notificationTimer = v13;
  }

  v17.receiver = self;
  v17.super_class = PLEntryNotificationOperatorComposition;
  v15 = [(PLNSNotificationOperatorComposition *)&v17 initWithWorkQueue:v8 forNotification:@"PLTimerFiredNotification" withBlock:v9];

  return v15;
}

void __103__PLEntryNotificationOperatorComposition_initNotificationTimerWithWorkQueue_withMaxInterval_withBlock___block_invoke()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:@"PLTimerFiredNotification" object:0];
}

@end