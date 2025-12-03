@interface PLEnhancedTaskingAgent
+ (id)allowlistForSignpostAggregatedData;
+ (id)entryEventIntervalDefinitionInProcessAnimation;
+ (id)entryEventIntervalDefinitionScrollView;
+ (id)entryEventIntervalDefinitionUINavigationController;
+ (id)entryEventIntervalDefinitions;
+ (id)entryEventNoneDefinitionAppSwitchTrigger;
+ (id)entryEventNoneDefinitions;
+ (void)load;
+ (void)logAggregatedDataFromSignpostWithStartDate:(id)date withEndDate:(id)endDate;
- (PLEnhancedTaskingAgent)init;
- (id)aggregatedSignpostDataWithEntryKey:(id)key withStartDate:(id)date withEndDate:(id)endDate withSignpostName:(id)name withProcess:(id)process withDataDict:(id)dict;
- (int)getSignpostNameValueGroupTypeFor:(id)for;
- (void)logAggregatedDataFromSignpostWithPayload:(id)payload withStartDate:(id)date withEndDate:(id)endDate;
@end

@implementation PLEnhancedTaskingAgent

+ (void)load
{
  if (!+[PLUtilities isPowerexceptionsd](PLUtilities, "isPowerexceptionsd") && !+[PLUtilities isPerfPowerMetricd])
  {
    v3.receiver = self;
    v3.super_class = &OBJC_METACLASS___PLEnhancedTaskingAgent;
    objc_msgSendSuper2(&v3, sel_load);
  }
}

+ (id)entryEventNoneDefinitions
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"AppSwitchTrigger";
  entryEventNoneDefinitionAppSwitchTrigger = [self entryEventNoneDefinitionAppSwitchTrigger];
  v7[0] = entryEventNoneDefinitionAppSwitchTrigger;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)entryEventNoneDefinitionAppSwitchTrigger
{
  v14[2] = *MEMORY[0x1E69E9840];
  v13[0] = @"Configs";
  v11[0] = @"SchemaVersion";
  v11[1] = @"TaskModeTable";
  v12[0] = &unk_1F540A380;
  v12[1] = MEMORY[0x1E695E118];
  v11[2] = @"OnDemandQuery";
  v12[2] = MEMORY[0x1E695E110];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];
  v14[0] = v2;
  v13[1] = @"Keys";
  v9 = @"Enabled";
  v3 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_BoolFormat = [v3 commonTypeDict_BoolFormat];
  v10 = commonTypeDict_BoolFormat;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v14[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)entryEventIntervalDefinitions
{
  v10[3] = *MEMORY[0x1E69E9840];
  v9[0] = @"UINavigationController";
  entryEventIntervalDefinitionUINavigationController = [self entryEventIntervalDefinitionUINavigationController];
  v10[0] = entryEventIntervalDefinitionUINavigationController;
  v9[1] = @"ScrollView";
  entryEventIntervalDefinitionScrollView = [self entryEventIntervalDefinitionScrollView];
  v10[1] = entryEventIntervalDefinitionScrollView;
  v9[2] = @"InProcessAnimation";
  entryEventIntervalDefinitionInProcessAnimation = [self entryEventIntervalDefinitionInProcessAnimation];
  v10[2] = entryEventIntervalDefinitionInProcessAnimation;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)entryEventIntervalDefinitionUINavigationController
{
  v22[2] = *MEMORY[0x1E69E9840];
  v21[0] = @"Configs";
  v19[0] = @"SchemaVersion";
  v19[1] = @"TaskModeTable";
  v20[0] = &unk_1F540A380;
  v20[1] = MEMORY[0x1E695E118];
  v19[2] = @"OnDemandQuery";
  v19[3] = @"AppIdentifierKeys";
  v20[2] = MEMORY[0x1E695E110];
  v20[3] = MEMORY[0x1E695E118];
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:4];
  v22[0] = v16;
  v21[1] = @"Keys";
  v17[0] = @"timestampEnd";
  v15 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_DateFormat = [v15 commonTypeDict_DateFormat];
  v18[0] = commonTypeDict_DateFormat;
  v17[1] = @"SignpostName";
  v2 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat = [v2 commonTypeDict_IntegerFormat];
  v18[1] = commonTypeDict_IntegerFormat;
  v17[2] = @"ProcessName";
  v4 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_StringFormat_withProcessName = [v4 commonTypeDict_StringFormat_withProcessName];
  v18[2] = commonTypeDict_StringFormat_withProcessName;
  v17[3] = @"Duration";
  v6 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms = [v6 commonTypeDict_IntegerFormat_withUnit_ms];
  v18[3] = commonTypeDict_IntegerFormat_withUnit_ms;
  v17[4] = @"Count";
  v8 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat2 = [v8 commonTypeDict_IntegerFormat];
  v18[4] = commonTypeDict_IntegerFormat2;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:5];
  v22[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)entryEventIntervalDefinitionInProcessAnimation
{
  v22[2] = *MEMORY[0x1E69E9840];
  v21[0] = @"Configs";
  v19[0] = @"SchemaVersion";
  v19[1] = @"TaskModeTable";
  v20[0] = &unk_1F540A380;
  v20[1] = MEMORY[0x1E695E118];
  v19[2] = @"OnDemandQuery";
  v19[3] = @"AppIdentifierKeys";
  v20[2] = MEMORY[0x1E695E110];
  v20[3] = MEMORY[0x1E695E118];
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:4];
  v22[0] = v16;
  v21[1] = @"Keys";
  v17[0] = @"timestampEnd";
  v15 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_DateFormat = [v15 commonTypeDict_DateFormat];
  v18[0] = commonTypeDict_DateFormat;
  v17[1] = @"SignpostName";
  v2 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat = [v2 commonTypeDict_IntegerFormat];
  v18[1] = commonTypeDict_IntegerFormat;
  v17[2] = @"ProcessName";
  v4 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_StringFormat_withProcessName = [v4 commonTypeDict_StringFormat_withProcessName];
  v18[2] = commonTypeDict_StringFormat_withProcessName;
  v17[3] = @"Duration";
  v6 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms = [v6 commonTypeDict_IntegerFormat_withUnit_ms];
  v18[3] = commonTypeDict_IntegerFormat_withUnit_ms;
  v17[4] = @"Count";
  v8 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat2 = [v8 commonTypeDict_IntegerFormat];
  v18[4] = commonTypeDict_IntegerFormat2;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:5];
  v22[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)entryEventIntervalDefinitionScrollView
{
  v24[2] = *MEMORY[0x1E69E9840];
  v23[0] = @"Configs";
  v21[0] = @"SchemaVersion";
  v21[1] = @"TaskModeTable";
  v22[0] = &unk_1F540A390;
  v22[1] = MEMORY[0x1E695E118];
  v21[2] = @"OnDemandQuery";
  v21[3] = @"AppIdentifierKeys";
  v22[2] = MEMORY[0x1E695E110];
  v22[3] = MEMORY[0x1E695E118];
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:4];
  v24[0] = v18;
  v23[1] = @"Keys";
  v19[0] = @"timestampEnd";
  v17 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_DateFormat = [v17 commonTypeDict_DateFormat];
  v20[0] = commonTypeDict_DateFormat;
  v19[1] = @"SignpostName";
  v15 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat = [v15 commonTypeDict_IntegerFormat];
  v20[1] = commonTypeDict_IntegerFormat;
  v19[2] = @"ValueGroup";
  v2 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat2 = [v2 commonTypeDict_IntegerFormat];
  v20[2] = commonTypeDict_IntegerFormat2;
  v19[3] = @"ProcessName";
  v4 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_StringFormat_withProcessName = [v4 commonTypeDict_StringFormat_withProcessName];
  v20[3] = commonTypeDict_StringFormat_withProcessName;
  v19[4] = @"highRateDuration";
  v6 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat_withUnit_ms = [v6 commonTypeDict_IntegerFormat_withUnit_ms];
  v20[4] = commonTypeDict_IntegerFormat_withUnit_ms;
  v19[5] = @"Count";
  v8 = +[PLEntryDefinition sharedInstance];
  commonTypeDict_IntegerFormat3 = [v8 commonTypeDict_IntegerFormat];
  v20[5] = commonTypeDict_IntegerFormat3;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:6];
  v24[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (PLEnhancedTaskingAgent)init
{
  v11.receiver = self;
  v11.super_class = PLEnhancedTaskingAgent;
  v2 = [(PLAgent *)&v11 init];
  if (v2)
  {
    if (+[PLDefaults debugEnabled])
    {
      v3 = objc_opt_class();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __30__PLEnhancedTaskingAgent_init__block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v3;
      if (init_defaultOnce != -1)
      {
        dispatch_once(&init_defaultOnce, block);
      }

      if (init_classDebugEnabled == 1)
      {
        v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PLEnhancedTaskingAgent enabled"];
        v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Operators/Agents/PLEnhancedTaskingAgent.m"];
        lastPathComponent = [v5 lastPathComponent];
        v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLEnhancedTaskingAgent init]"];
        [PLCoreStorage logMessage:v4 fromFile:lastPathComponent fromFunction:v7 fromLineNumber:163];

        v8 = PLLogCommon();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    objc_storeStrong(&_enhancedTaskingAgent, v2);
  }

  return v2;
}

BOOL __30__PLEnhancedTaskingAgent_init__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  init_classDebugEnabled = result;
  return result;
}

+ (void)logAggregatedDataFromSignpostWithStartDate:(id)date withEndDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  if (dateCopy | endDateCopy)
  {
    monotonicDate = endDateCopy;
    if (!dateCopy)
    {
      goto LABEL_19;
    }
  }

  else
  {
    monotonicDate = [MEMORY[0x1E695DF00] monotonicDate];
    dateCopy = logAggregatedDataFromSignpostWithStartDate_withEndDate__previousEndDate;
    objc_storeStrong(&logAggregatedDataFromSignpostWithStartDate_withEndDate__previousEndDate, monotonicDate);
    if (!dateCopy)
    {
      goto LABEL_19;
    }
  }

  if (monotonicDate)
  {
    v8 = +[PLEnhancedTaskingAgent allowlistForSignpostAggregatedData];
    if ([v8 count])
    {
      v9 = _enhancedTaskingAgent == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      if (+[PLDefaults debugEnabled])
      {
        v10 = objc_opt_class();
        block = MEMORY[0x1E69E9820];
        v21 = 3221225472;
        v22 = __81__PLEnhancedTaskingAgent_logAggregatedDataFromSignpostWithStartDate_withEndDate___block_invoke;
        v23 = &__block_descriptor_40_e5_v8__0lu32l8;
        v24 = v10;
        if (logAggregatedDataFromSignpostWithStartDate_withEndDate__defaultOnce != -1)
        {
          dispatch_once(&logAggregatedDataFromSignpostWithStartDate_withEndDate__defaultOnce, &block);
        }

        if (logAggregatedDataFromSignpostWithStartDate_withEndDate__classDebugEnabled == 1)
        {
          v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"getSignpostSummary with allowlist = %@, startDate = %@, endDate = %@", v8, dateCopy, monotonicDate, block, v21, v22, v23, v24];
          v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Operators/Agents/PLEnhancedTaskingAgent.m"];
          lastPathComponent = [v12 lastPathComponent];
          v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLEnhancedTaskingAgent logAggregatedDataFromSignpostWithStartDate:withEndDate:]"];
          [PLCoreStorage logMessage:v11 fromFile:lastPathComponent fromFunction:v14 fromLineNumber:189];

          v15 = PLLogCommon();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
          }
        }
      }

      v16 = objc_alloc_init(SignpostReaderHelper);
      convertFromMonotonicToSystem = [dateCopy convertFromMonotonicToSystem];
      convertFromMonotonicToSystem2 = [monotonicDate convertFromMonotonicToSystem];
      v19 = [(SignpostReaderHelper *)v16 getSignpostSummaryWithAllowlist:v8 withStartDate:convertFromMonotonicToSystem withEndDate:convertFromMonotonicToSystem2];
      [_enhancedTaskingAgent logAggregatedDataFromSignpostWithPayload:v19 withStartDate:dateCopy withEndDate:monotonicDate];
    }
  }

LABEL_19:
}

BOOL __81__PLEnhancedTaskingAgent_logAggregatedDataFromSignpostWithStartDate_withEndDate___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  logAggregatedDataFromSignpostWithStartDate_withEndDate__classDebugEnabled = result;
  return result;
}

+ (id)allowlistForSignpostAggregatedData
{
  if (+[PLDefaults taskMode](PLDefaults, "taskMode") || +[PLDefaults fullMode])
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3 = +[(PLOperator *)PLEnhancedTaskingAgent];
    v4 = [PLEntryKey isEntryKeySetup:@"PLEnhancedTaskingAgent_EventInterval_UINavigationController" forOperatorName:v3];

    if (v4)
    {
      [v2 addObject:@"UINavigationController"];
    }

    v5 = +[(PLOperator *)PLEnhancedTaskingAgent];
    v6 = [PLEntryKey isEntryKeySetup:@"PLEnhancedTaskingAgent_EventInterval_InProcessAnimation" forOperatorName:v5];

    if (v6)
    {
      [v2 addObject:@"InProcessAnimation"];
    }

    v7 = +[(PLOperator *)PLEnhancedTaskingAgent];
    v8 = [PLEntryKey isEntryKeySetup:@"PLEnhancedTaskingAgent_EventInterval_ScrollView" forOperatorName:v7];

    if (v8)
    {
      [v2 addObject:@"ScrollView"];
    }

    if ([v2 count])
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v9 setObject:v2 forKey:@"com.apple.UIKit"];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  if (+[PLDefaults debugEnabled])
  {
    v10 = objc_opt_class();
    block = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __60__PLEnhancedTaskingAgent_allowlistForSignpostAggregatedData__block_invoke;
    v20 = &__block_descriptor_40_e5_v8__0lu32l8;
    v21 = v10;
    if (allowlistForSignpostAggregatedData_defaultOnce != -1)
    {
      dispatch_once(&allowlistForSignpostAggregatedData_defaultOnce, &block);
    }

    if (allowlistForSignpostAggregatedData_classDebugEnabled == 1)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"allowlistForSignpostAggregatedData=%@\n", v9, block, v18, v19, v20, v21];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Operators/Agents/PLEnhancedTaskingAgent.m"];
      lastPathComponent = [v12 lastPathComponent];
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLEnhancedTaskingAgent allowlistForSignpostAggregatedData]"];
      [PLCoreStorage logMessage:v11 fromFile:lastPathComponent fromFunction:v14 fromLineNumber:223];

      v15 = PLLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  return v9;
}

BOOL __60__PLEnhancedTaskingAgent_allowlistForSignpostAggregatedData__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  allowlistForSignpostAggregatedData_classDebugEnabled = result;
  return result;
}

- (id)aggregatedSignpostDataWithEntryKey:(id)key withStartDate:(id)date withEndDate:(id)endDate withSignpostName:(id)name withProcess:(id)process withDataDict:(id)dict
{
  dictCopy = dict;
  processCopy = process;
  nameCopy = name;
  endDateCopy = endDate;
  dateCopy = date;
  keyCopy = key;
  v20 = [[PLEntry alloc] initWithEntryKey:keyCopy withDate:dateCopy];

  [(PLEntry *)v20 setObject:endDateCopy forKeyedSubscript:@"timestampEnd"];
  v21 = [dictCopy objectForKeyedSubscript:@"Duration"];
  [v21 doubleValue];
  v23 = v22;

  v24 = MEMORY[0x1E696AD98];
  v25 = [(PLEnhancedTaskingAgent *)self getSignpostNameValueGroupTypeFor:nameCopy];

  v26 = [v24 numberWithUnsignedInt:v25];
  [(PLEntry *)v20 setObject:v26 forKeyedSubscript:@"SignpostName"];

  [(PLEntry *)v20 setObject:processCopy forKeyedSubscript:@"ProcessName"];
  v27 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:(v23 * 1000.0)];
  [(PLEntry *)v20 setObject:v27 forKeyedSubscript:@"Duration"];

  v28 = [dictCopy objectForKeyedSubscript:@"Count"];

  [(PLEntry *)v20 setObject:v28 forKeyedSubscript:@"Count"];

  return v20;
}

- (void)logAggregatedDataFromSignpostWithPayload:(id)payload withStartDate:(id)date withEndDate:(id)endDate
{
  payloadCopy = payload;
  dateCopy = date;
  endDateCopy = endDate;
  if (+[PLDefaults debugEnabled])
  {
    v11 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __93__PLEnhancedTaskingAgent_logAggregatedDataFromSignpostWithPayload_withStartDate_withEndDate___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v11;
    if (logAggregatedDataFromSignpostWithPayload_withStartDate_withEndDate__defaultOnce != -1)
    {
      dispatch_once(&logAggregatedDataFromSignpostWithPayload_withStartDate_withEndDate__defaultOnce, block);
    }

    if (logAggregatedDataFromSignpostWithPayload_withStartDate_withEndDate__classDebugEnabled == 1)
    {
      payloadCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"logAggregatedDataFromSignpostWithPayload:%@\n", payloadCopy];
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Operators/Agents/PLEnhancedTaskingAgent.m"];
      lastPathComponent = [v13 lastPathComponent];
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLEnhancedTaskingAgent logAggregatedDataFromSignpostWithPayload:withStartDate:withEndDate:]"];
      [PLCoreStorage logMessage:payloadCopy fromFile:lastPathComponent fromFunction:v15 fromLineNumber:252];

      v16 = PLLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __93__PLEnhancedTaskingAgent_logAggregatedDataFromSignpostWithPayload_withStartDate_withEndDate___block_invoke_120;
  v19[3] = &unk_1E8519318;
  v19[4] = self;
  v20 = dateCopy;
  v21 = endDateCopy;
  v17 = endDateCopy;
  v18 = dateCopy;
  [payloadCopy enumerateKeysAndObjectsUsingBlock:v19];
}

BOOL __93__PLEnhancedTaskingAgent_logAggregatedDataFromSignpostWithPayload_withStartDate_withEndDate___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  logAggregatedDataFromSignpostWithPayload_withStartDate_withEndDate__classDebugEnabled = result;
  return result;
}

void __93__PLEnhancedTaskingAgent_logAggregatedDataFromSignpostWithPayload_withStartDate_withEndDate___block_invoke_120(uint64_t a1, void *a2, void *a3)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = MEMORY[0x1E695DF70];
  v7 = a3;
  v8 = [v6 array];
  v9 = *(a1 + 32);
  v10 = [objc_opt_class() entryKeyForType:@"EventInterval" andName:v5];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __93__PLEnhancedTaskingAgent_logAggregatedDataFromSignpostWithPayload_withStartDate_withEndDate___block_invoke_2;
  v17[3] = &unk_1E85192F0;
  v17[4] = *(a1 + 32);
  v11 = v10;
  v18 = v11;
  v19 = *(a1 + 40);
  v20 = *(a1 + 48);
  v12 = v8;
  v21 = v12;
  v13 = v5;
  v22 = v13;
  [v7 enumerateKeysAndObjectsUsingBlock:v17];

  if ([v12 count])
  {
    v14 = *(a1 + 32);
    v23 = v11;
    v24[0] = v12;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    [v14 logEntries:v15 withGroupID:v11];
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __93__PLEnhancedTaskingAgent_logAggregatedDataFromSignpostWithPayload_withStartDate_withEndDate___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __93__PLEnhancedTaskingAgent_logAggregatedDataFromSignpostWithPayload_withStartDate_withEndDate___block_invoke_3;
  v12[3] = &unk_1E85192C8;
  v11 = *(a1 + 32);
  v6 = *(&v11 + 1);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v13 = v11;
  v14 = v9;
  v15 = v5;
  v16 = *(a1 + 64);
  v17 = *(a1 + 72);
  v10 = v5;
  [a3 enumerateKeysAndObjectsUsingBlock:v12];
}

void __93__PLEnhancedTaskingAgent_logAggregatedDataFromSignpostWithPayload_withStartDate_withEndDate___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v6 objectForKeyedSubscript:@"Duration"], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = [*(a1 + 32) aggregatedSignpostDataWithEntryKey:*(a1 + 40) withStartDate:*(a1 + 48) withEndDate:*(a1 + 56) withSignpostName:*(a1 + 64) withProcess:v5 withDataDict:v6];
    [*(a1 + 72) addObject:v8];
  }

  else
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __93__PLEnhancedTaskingAgent_logAggregatedDataFromSignpostWithPayload_withStartDate_withEndDate___block_invoke_4;
    v14[3] = &unk_1E85192A0;
    v13 = *(a1 + 32);
    v9 = *(&v13 + 1);
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    *&v12 = v10;
    *(&v12 + 1) = v11;
    v15 = v13;
    v16 = v12;
    v17 = *(a1 + 64);
    v18 = v5;
    v19 = *(a1 + 80);
    v20 = *(a1 + 72);
    [v6 enumerateKeysAndObjectsUsingBlock:v14];
  }
}

void __93__PLEnhancedTaskingAgent_logAggregatedDataFromSignpostWithPayload_withStartDate_withEndDate___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [*(a1 + 32) aggregatedSignpostDataWithEntryKey:*(a1 + 40) withStartDate:*(a1 + 48) withEndDate:*(a1 + 56) withSignpostName:*(a1 + 64) withProcess:*(a1 + 72) withDataDict:v5];
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(*(a1 + 32), "getSignpostNameValueGroupTypeFor:", v13)}];
    [v6 setObject:v7 forKeyedSubscript:@"ValueGroup"];

    if ([*(a1 + 80) isEqualToString:@"ScrollView"])
    {
      v8 = [v5 objectForKeyedSubscript:@"highRateDuration"];

      if (v8)
      {
        v9 = [v5 objectForKeyedSubscript:@"highRateDuration"];
        [v9 doubleValue];
        v11 = v10;

        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:(v11 * 1000.0)];
        [v6 setObject:v12 forKeyedSubscript:@"highRateDuration"];
      }
    }

    [*(a1 + 88) addObject:v6];
  }
}

- (int)getSignpostNameValueGroupTypeFor:(id)for
{
  forCopy = for;
  if ([forCopy isEqualToString:@"NavigationTransition"])
  {
    v4 = 1;
  }

  else if ([forCopy isEqualToString:@"CustomNavigationTransition"])
  {
    v4 = 2;
  }

  else if ([forCopy isEqualToString:@"SwitchTabs"])
  {
    v4 = 3;
  }

  else if ([forCopy isEqualToString:@"Scroll_Dragging"])
  {
    v4 = 4;
  }

  else if ([forCopy isEqualToString:@"Scroll_Deceleration"])
  {
    v4 = 5;
  }

  else if ([forCopy isEqualToString:@"Scroll_Animating"])
  {
    v4 = 6;
  }

  else if ([forCopy isEqualToString:@"Vertical"])
  {
    v4 = 7;
  }

  else if ([forCopy isEqualToString:@"Horizontal"])
  {
    v4 = 8;
  }

  else if ([forCopy isEqualToString:@"Diagonal"])
  {
    v4 = 9;
  }

  else if ([forCopy isEqualToString:@"AnimatorRunning"])
  {
    v4 = 10;
  }

  else if ([forCopy isEqualToString:@"Scroll_Zooming"])
  {
    v4 = 11;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end