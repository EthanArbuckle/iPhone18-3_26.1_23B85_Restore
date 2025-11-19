@interface PLActivityCriterionEntry
+ (id)audioOffCriterion;
+ (id)displayOffCriterion;
+ (id)pluggedInCriterion;
- (PLActivityCriterionEntry)initWithEntryKey:(id)a3 withFilter:(id)a4 withCriterionBlock:(id)a5;
- (void)didDisableActivity:(id)a3;
- (void)didEnableActivity:(id)a3;
- (void)scheduleEntryListener;
@end

@implementation PLActivityCriterionEntry

void __49__PLActivityCriterionEntry_scheduleEntryListener__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"entry"];
  if (v3)
  {
    if (+[PLDefaults debugEnabled])
    {
      v4 = *(a1 + 32);
      v5 = objc_opt_class();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __49__PLActivityCriterionEntry_scheduleEntryListener__block_invoke_2;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v5;
      if (PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_3 != -1)
      {
        dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_3, block);
      }

      if (PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_3 == 1)
      {
        v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PLActivityCriterionEntry::entryListenerBlock: entry=%@ for criterion=%@", v3, *(a1 + 32)];
        v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/Activity/PLActivityCriterionEntry.m"];
        v8 = [v7 lastPathComponent];
        v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLActivityCriterionEntry scheduleEntryListener]_block_invoke"];
        [PLCoreStorage logMessage:v6 fromFile:v8 fromFunction:v9 fromLineNumber:117];

        v10 = PLLogCommon();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    v11 = [*(a1 + 32) criterionBlock];
    [*(a1 + 32) setSatisfied:{(v11)[2](v11, v3)}];
  }
}

uint64_t __45__PLActivityCriterionEntry_audioOffCriterion__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:*(*(*(a1 + 32) + 8) + 40)];
  v3 = [v2 BOOLValue];

  return v3 ^ 1u;
}

- (PLActivityCriterionEntry)initWithEntryKey:(id)a3 withFilter:(id)a4 withCriterionBlock:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  v13 = 0;
  if (v9 && v11)
  {
    v19.receiver = self;
    v19.super_class = PLActivityCriterionEntry;
    v14 = [(PLActivityCriterion *)&v19 init];
    v15 = v14;
    if (v14)
    {
      objc_storeStrong(&v14->_entryKey, a3);
      objc_storeStrong(&v15->_filter, a4);
      v16 = [v12 copy];
      criterionBlock = v15->_criterionBlock;
      v15->_criterionBlock = v16;
    }

    self = v15;
    v13 = self;
  }

  return v13;
}

+ (id)pluggedInCriterion
{
  v14[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(objc_opt_class());
  v13 = @"ExternalConnected";
  v11 = &unk_1F5406078;
  v3 = [MEMORY[0x1E695DFB0] null];
  v12 = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v14[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__PLActivityCriterionEntry_pluggedInCriterion__block_invoke;
  v9[3] = &unk_1E851A758;
  v10 = @"ExternalConnected";
  v6 = [v2 initWithEntryKey:@"PLBatteryAgent_EventBackward_Battery" withFilter:v5 withCriterionBlock:v9];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

uint64_t __46__PLActivityCriterionEntry_pluggedInCriterion__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  v3 = [v2 BOOLValue];

  return v3;
}

+ (id)displayOffCriterion
{
  v14[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(objc_opt_class());
  v13 = @"Active";
  v11 = &unk_1F5406078;
  v3 = [MEMORY[0x1E695DFB0] null];
  v12 = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v14[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__PLActivityCriterionEntry_displayOffCriterion__block_invoke;
  v9[3] = &unk_1E851A758;
  v10 = @"Active";
  v6 = [v2 initWithEntryKey:@"PLDisplayAgent_EventPoint_Display" withFilter:v5 withCriterionBlock:v9];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

BOOL __47__PLActivityCriterionEntry_displayOffCriterion__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  v3 = [v2 integerValue] != 1;

  return v3;
}

+ (id)audioOffCriterion
{
  v19[1] = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__13;
  v14 = __Block_byref_object_dispose__13;
  v15 = @"Active";
  v2 = objc_alloc(objc_opt_class());
  v18 = v11[5];
  v16 = &unk_1F5406078;
  v3 = [MEMORY[0x1E695DFB0] null];
  v17 = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v19[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__PLActivityCriterionEntry_audioOffCriterion__block_invoke;
  v9[3] = &unk_1E851A780;
  v9[4] = &v10;
  v6 = [v2 initWithEntryKey:@"PLAudioAgent_EventForward_Routing" withFilter:v5 withCriterionBlock:v9];

  _Block_object_dispose(&v10, 8);
  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)didEnableActivity:(id)a3
{
  v4 = a3;
  if (+[PLDefaults debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__PLActivityCriterionEntry_didEnableActivity___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (didEnableActivity__defaultOnce_0 != -1)
    {
      dispatch_once(&didEnableActivity__defaultOnce_0, block);
    }

    if (didEnableActivity__classDebugEnabled_0 == 1)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PLActivityCriterionEntry::didEnableActivity:%@ for criterion=%@", v4, self];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/Activity/PLActivityCriterionEntry.m"];
      v8 = [v7 lastPathComponent];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLActivityCriterionEntry didEnableActivity:]"];
      [PLCoreStorage logMessage:v6 fromFile:v8 fromFunction:v9 fromLineNumber:89];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v23.receiver = self;
  v23.super_class = PLActivityCriterionEntry;
  [(PLActivityCriterion *)&v23 didEnableActivity:v4];
  v11 = +[PowerlogCore sharedCore];
  v12 = [v11 storage];
  v13 = [(PLActivityCriterionEntry *)self entryKey];
  v14 = [v12 lastEntryForKey:v13];

  if (+[PLDefaults debugEnabled])
  {
    v15 = objc_opt_class();
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __46__PLActivityCriterionEntry_didEnableActivity___block_invoke_38;
    v22[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v22[4] = v15;
    if (didEnableActivity__defaultOnce_36 != -1)
    {
      dispatch_once(&didEnableActivity__defaultOnce_36, v22);
    }

    if (didEnableActivity__classDebugEnabled_37 == 1)
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PLActivityCriterionEntry::didEnableActivity: entry=%@", v14];
      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/Activity/PLActivityCriterionEntry.m"];
      v18 = [v17 lastPathComponent];
      v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLActivityCriterionEntry didEnableActivity:]"];
      [PLCoreStorage logMessage:v16 fromFile:v18 fromFunction:v19 fromLineNumber:93];

      v20 = PLLogCommon();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  if (v14)
  {
    v21 = [(PLActivityCriterionEntry *)self criterionBlock];
    [(PLActivityCriterion *)self setSatisfied:(v21)[2](v21, v14)];
  }

  [(PLActivityCriterionEntry *)self scheduleEntryListener];
}

BOOL __46__PLActivityCriterionEntry_didEnableActivity___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  didEnableActivity__classDebugEnabled_0 = result;
  return result;
}

BOOL __46__PLActivityCriterionEntry_didEnableActivity___block_invoke_38(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  didEnableActivity__classDebugEnabled_37 = result;
  return result;
}

- (void)didDisableActivity:(id)a3
{
  v4 = a3;
  if (+[PLDefaults debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__PLActivityCriterionEntry_didDisableActivity___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (didDisableActivity__defaultOnce_0 != -1)
    {
      dispatch_once(&didDisableActivity__defaultOnce_0, block);
    }

    if (didDisableActivity__classDebugEnabled_0 == 1)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PLActivityCriterionEntry::didDisableActivity:%@ for criterion=%@", v4, self];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/Activity/PLActivityCriterionEntry.m"];
      v8 = [v7 lastPathComponent];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLActivityCriterionEntry didDisableActivity:]"];
      [PLCoreStorage logMessage:v6 fromFile:v8 fromFunction:v9 fromLineNumber:105];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v11.receiver = self;
  v11.super_class = PLActivityCriterionEntry;
  [(PLActivityCriterion *)&v11 didDisableActivity:v4];
  [(PLActivityCriterionEntry *)self setEntryListener:0];
}

BOOL __47__PLActivityCriterionEntry_didDisableActivity___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  didDisableActivity__classDebugEnabled_0 = result;
  return result;
}

- (void)scheduleEntryListener
{
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __49__PLActivityCriterionEntry_scheduleEntryListener__block_invoke;
  v12[3] = &unk_1E8519090;
  v12[4] = self;
  v3 = MEMORY[0x1DA71B0D0](v12, a2);
  v4 = [(PLActivityCriterionEntry *)self filter];

  v5 = [PLEntryNotificationOperatorComposition alloc];
  v6 = dispatch_get_global_queue(2, 0);
  v7 = [(PLActivityCriterionEntry *)self entryKey];
  if (v4)
  {
    v8 = [(PLActivityCriterionEntry *)self filter];
    v9 = [(PLEntryNotificationOperatorComposition *)v5 initWithWorkQueue:v6 forEntryKey:v7 withFilter:v8 withBlock:v3];
    entryListener = self->_entryListener;
    self->_entryListener = v9;
  }

  else
  {
    v11 = [(PLEntryNotificationOperatorComposition *)v5 initWithWorkQueue:v6 forEntryKey:v7 withBlock:v3];
    v8 = self->_entryListener;
    self->_entryListener = v11;
  }
}

BOOL __49__PLActivityCriterionEntry_scheduleEntryListener__block_invoke_2(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_3 = result;
  return result;
}

@end