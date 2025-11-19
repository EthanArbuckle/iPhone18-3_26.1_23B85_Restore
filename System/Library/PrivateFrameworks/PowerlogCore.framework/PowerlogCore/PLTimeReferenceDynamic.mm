@interface PLTimeReferenceDynamic
+ (double)nearestDistanceFromDate:(id)a3 toRegionWithStartDate:(id)a4 andEndDate:(id)a5;
- (BOOL)shouldQueryCurrentTime;
- (PLTimeReferenceDynamic)initWithTimeManager:(id)a3 entryDefinitionKey:(id)a4 timeReferenceType:(int64_t)a5;
- (id)newOffsetEntryWithCurrentTime;
- (id)removeTimeOffsetFromReferenceTime:(id)a3;
- (void)checkForTimeChangeWithCurrentTime:(id)a3;
- (void)initializeOffsetHistoryWithEntries:(id)a3;
- (void)initializeOffsetWithEntries:(id)a3;
- (void)notifyTimeChange:(double)a3;
- (void)registerForClockSetNotification;
- (void)registerForTimeChangedCallbackWithIdentifier:(id)a3 usingBlock:(id)a4;
- (void)registerForTimeChangedNotification;
- (void)setOffset:(double)a3;
- (void)unregisterForTimeChangedCallbackWithIdentifier:(id)a3;
@end

@implementation PLTimeReferenceDynamic

- (BOOL)shouldQueryCurrentTime
{
  v2 = [(PLTimeReferenceDynamic *)self lastQueryTime];
  [v2 timeIntervalSinceMonitonicNow];
  v4 = fabs(v3) > 600.0;

  return v4;
}

- (PLTimeReferenceDynamic)initWithTimeManager:(id)a3 entryDefinitionKey:(id)a4 timeReferenceType:(int64_t)a5
{
  v13.receiver = self;
  v13.super_class = PLTimeReferenceDynamic;
  v5 = [(PLTimeReference *)&v13 initWithTimeManager:a3 entryDefinitionKey:a4 timeReferenceType:a5];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DF90] dictionary];
    timeChangeBlocks = v5->_timeChangeBlocks;
    v5->_timeChangeBlocks = v6;

    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
    offsetHistory = v5->_offsetHistory;
    v5->_offsetHistory = v8;

    v5->_offsetHistoryHead = 0;
    v5->_tooFarInFutureDistance = 2147483650.0;
    v5->_tooFarInPastDistance = 2147483650.0;
    v10 = [MEMORY[0x1E695DF00] distantPast];
    lastQueryTime = v5->_lastQueryTime;
    v5->_lastQueryTime = v10;
  }

  return v5;
}

- (void)initializeOffsetWithEntries:(id)a3
{
  v14.receiver = self;
  v14.super_class = PLTimeReferenceDynamic;
  v4 = a3;
  [(PLTimeReference *)&v14 initializeOffsetWithEntries:v4];
  [(PLTimeReferenceDynamic *)self initializeOffsetHistoryWithEntries:v4];

  if (!+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") && !+[PLUtilities isPerfPowerMetricd])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__PLTimeReferenceDynamic_initializeOffsetWithEntries___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (initializeOffsetWithEntries__defaultOnce != -1)
    {
      dispatch_once(&initializeOffsetWithEntries__defaultOnce, block);
    }

    if (initializeOffsetWithEntries__classDebugEnabled)
    {
      v6 = 10.0;
    }

    else
    {
      v6 = 1800.0;
    }

    if (initializeOffsetWithEntries__classDebugEnabled)
    {
      v7 = 10.0;
    }

    else
    {
      v7 = 60.0;
    }

    v8 = [PLTimer alloc];
    v9 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:v7];
    v10 = [PLUtilities workQueueForClass:objc_opt_class()];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __54__PLTimeReferenceDynamic_initializeOffsetWithEntries___block_invoke_2;
    v12[3] = &unk_1E8519A18;
    v12[4] = self;
    v11 = [(PLTimer *)v8 initWithFireDate:v9 withInterval:1 withTolerance:0 repeats:v10 withUserInfo:v12 withQueue:v6 withBlock:0.0];
    [(PLTimeReferenceDynamic *)self setPeriodicCurrentTime:v11];
  }
}

BOOL __54__PLTimeReferenceDynamic_initializeOffsetWithEntries___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  initializeOffsetWithEntries__classDebugEnabled = result;
  return result;
}

id __54__PLTimeReferenceDynamic_initializeOffsetWithEntries___block_invoke_2(uint64_t a1)
{
  if (+[PLDefaults debugEnabled])
  {
    v2 = *(a1 + 32);
    v3 = objc_opt_class();
    block = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __54__PLTimeReferenceDynamic_initializeOffsetWithEntries___block_invoke_3;
    v15 = &__block_descriptor_40_e5_v8__0lu32l8;
    v16 = v3;
    if (PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_6 != -1)
    {
      dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_6, &block);
    }

    if (PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_6 == 1)
    {
      v4 = MEMORY[0x1E696AEC0];
      v5 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 32), "timeReferenceType")}];
      v6 = [v4 stringWithFormat:@"PLTimeReferenceDynamic::periodicCurrentTime: timeReferenceType=%@", v5, block, v13, v14, v15, v16];

      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLTimeReferenceClasses/PLTimeReferenceDynamic.m"];
      v8 = [v7 lastPathComponent];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLTimeReferenceDynamic initializeOffsetWithEntries:]_block_invoke_2"];
      [PLCoreStorage logMessage:v6 fromFile:v8 fromFunction:v9 fromLineNumber:71];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  return [*(a1 + 32) currentTime];
}

BOOL __54__PLTimeReferenceDynamic_initializeOffsetWithEntries___block_invoke_3(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_6 = result;
  return result;
}

- (void)initializeOffsetHistoryWithEntries:(id)a3
{
  v41[3] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v32 = v3;
  if (v3 && (v4 = v3, [v3 count]))
  {
    v5 = [v4 count];
    if (v5 < 1)
    {
      v6 = 0;
      v33 = 0;
      v23 = 0;
    }

    else
    {
      v36 = 0;
      v33 = 0;
      v6 = 0;
      v7 = v5 & 0x7FFFFFFF;
      v8 = 3.40282347e38;
      do
      {
        v9 = [v4 objectAtIndexedSubscript:v7 - 1];
        v10 = [(PLTimeReference *)self entryDefinitionKey];
        v11 = [v9 objectForKeyedSubscript:v10];
        [v11 doubleValue];
        v13 = v12;

        if (vabdd_f64(v13, v8) > 1.0)
        {
          v14 = [v9 entryDate];

          if (v33)
          {
            [v33 dateByAddingTimeInterval:v13];
          }

          else
          {
            [MEMORY[0x1E695DF00] distantFuture];
          }
          v15 = ;
          obj = [(PLTimeReferenceDynamic *)self offsetHistory];
          objc_sync_enter(obj);
          v16 = [(PLTimeReferenceDynamic *)self offsetHistory];
          v38[0] = @"offset";
          v17 = [MEMORY[0x1E696AD98] numberWithDouble:v13];
          v39[0] = v17;
          v38[1] = @"startReferenceTime";
          v18 = [v14 dateByAddingTimeInterval:v13];
          v38[2] = @"endReferenceTime";
          v39[1] = v18;
          v39[2] = v15;
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:3];
          v20 = [v19 mutableCopy];
          [v16 insertObject:v20 atIndex:0];

          objc_sync_exit(obj);
          v21 = [v9 entryDate];

          ++v36;
          v8 = v13;
          v6 = v14;
          v33 = v21;
        }

        v4 = v32;
        if (v36 > 2)
        {
          break;
        }
      }

      while (v7-- > 1);
      if (v36 >= 3)
      {
        v23 = 0;
      }

      else
      {
        v23 = v36;
      }
    }

    [(PLTimeReferenceDynamic *)self setOffsetHistoryHead:v23];
  }

  else
  {
    v24 = [MEMORY[0x1E695DF00] monotonicDate];
    [(PLTimeReference *)self offset];
    v6 = [v24 dateByAddingTimeInterval:?];

    if (v6)
    {
      obja = [(PLTimeReferenceDynamic *)self offsetHistory];
      objc_sync_enter(obja);
      v25 = [(PLTimeReferenceDynamic *)self offsetHistory];
      v40[0] = @"offset";
      v26 = MEMORY[0x1E696AD98];
      [(PLTimeReference *)self offset];
      v27 = [v26 numberWithDouble:?];
      v41[0] = v27;
      v41[1] = v6;
      v40[1] = @"startReferenceTime";
      v40[2] = @"endReferenceTime";
      v28 = [MEMORY[0x1E695DF00] distantFuture];
      v41[2] = v28;
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:3];
      v30 = [v29 mutableCopy];
      [v25 addObject:v30];

      objc_sync_exit(obja);
      [(PLTimeReferenceDynamic *)self setOffsetHistoryHead:1];
    }
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (void)registerForTimeChangedNotification
{
  if (+[PLDefaults debugEnabled])
  {
    v2 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__PLTimeReferenceDynamic_registerForTimeChangedNotification__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v2;
    if (registerForTimeChangedNotification_defaultOnce != -1)
    {
      dispatch_once(&registerForTimeChangedNotification_defaultOnce, block);
    }

    if (registerForTimeChangedNotification_classDebugEnabled == 1)
    {
      v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PLTimeReferenceDynamic::registerForTimeChangedNotification WARNING: inherited class must implement"];
      v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLTimeReferenceClasses/PLTimeReferenceDynamic.m"];
      v5 = [v4 lastPathComponent];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLTimeReferenceDynamic registerForTimeChangedNotification]"];
      [PLCoreStorage logMessage:v3 fromFile:v5 fromFunction:v6 fromLineNumber:132];

      v7 = PLLogCommon();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }
}

BOOL __60__PLTimeReferenceDynamic_registerForTimeChangedNotification__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  registerForTimeChangedNotification_classDebugEnabled = result;
  return result;
}

- (void)registerForClockSetNotification
{
  if (+[PLDefaults debugEnabled])
  {
    v2 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__PLTimeReferenceDynamic_registerForClockSetNotification__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v2;
    if (registerForClockSetNotification_defaultOnce != -1)
    {
      dispatch_once(&registerForClockSetNotification_defaultOnce, block);
    }

    if (registerForClockSetNotification_classDebugEnabled == 1)
    {
      v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PLTimeReferenceDynamic::registerForClockSetNotification WARNING: inherited class must implement"];
      v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLTimeReferenceClasses/PLTimeReferenceDynamic.m"];
      v5 = [v4 lastPathComponent];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLTimeReferenceDynamic registerForClockSetNotification]"];
      [PLCoreStorage logMessage:v3 fromFile:v5 fromFunction:v6 fromLineNumber:137];

      v7 = PLLogCommon();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }
}

BOOL __57__PLTimeReferenceDynamic_registerForClockSetNotification__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  registerForClockSetNotification_classDebugEnabled = result;
  return result;
}

- (void)checkForTimeChangeWithCurrentTime:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF00] monotonicDate];
  [(PLTimeReference *)self offset];
  v6 = [v5 dateByAddingTimeInterval:?];

  if (v6)
  {
    if (+[PLDefaults debugEnabled])
    {
      v7 = objc_opt_class();
      block = MEMORY[0x1E69E9820];
      v19 = 3221225472;
      v20 = __60__PLTimeReferenceDynamic_checkForTimeChangeWithCurrentTime___block_invoke;
      v21 = &__block_descriptor_40_e5_v8__0lu32l8;
      v22 = v7;
      if (checkForTimeChangeWithCurrentTime__defaultOnce != -1)
      {
        dispatch_once(&checkForTimeChangeWithCurrentTime__defaultOnce, &block);
      }

      if (checkForTimeChangeWithCurrentTime__classDebugEnabled == 1)
      {
        v8 = MEMORY[0x1E696AEC0];
        v9 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PLTimeReference timeReferenceType](self, "timeReferenceType")}];
        v10 = [v8 stringWithFormat:@"PLTimeReferenceDynamic::checkForTimeChangeWithCurrentTime: timeReferenceType=%@, prevTimeInReference=%@, currentTimeInReference=%@", v9, v6, v4, block, v19, v20, v21, v22];

        v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLTimeReferenceClasses/PLTimeReferenceDynamic.m"];
        v12 = [v11 lastPathComponent];
        v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLTimeReferenceDynamic checkForTimeChangeWithCurrentTime:]"];
        [PLCoreStorage logMessage:v10 fromFile:v12 fromFunction:v13 fromLineNumber:147];

        v14 = PLLogCommon();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    [(PLTimeReference *)self offset];
    v16 = v15;
    [v4 timeIntervalSinceDate:v6];
    [(PLTimeReferenceDynamic *)self setOffset:v16 + v17];
  }
}

BOOL __60__PLTimeReferenceDynamic_checkForTimeChangeWithCurrentTime___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  checkForTimeChangeWithCurrentTime__classDebugEnabled = result;
  return result;
}

- (id)newOffsetEntryWithCurrentTime
{
  v13[3] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF00] monotonicDate];
  [(PLTimeReference *)self offset];
  v4 = [v3 dateByAddingTimeInterval:?];

  if (v4)
  {
    v12[0] = @"offset";
    v5 = MEMORY[0x1E696AD98];
    [(PLTimeReference *)self offset];
    v6 = [v5 numberWithDouble:?];
    v13[0] = v6;
    v13[1] = v4;
    v12[1] = @"startReferenceTime";
    v12[2] = @"endReferenceTime";
    v7 = [MEMORY[0x1E695DF00] distantFuture];
    v13[2] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
    v9 = [v8 mutableCopy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)setOffset:(double)a3
{
  v5 = [PLUtilities workQueueForKey:@"PLTimeReferenceDynamic::setOffset"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__PLTimeReferenceDynamic_setOffset___block_invoke;
  v6[3] = &unk_1E85195E0;
  v6[4] = self;
  *&v6[5] = a3;
  dispatch_sync(v5, v6);
}

void __36__PLTimeReferenceDynamic_setOffset___block_invoke(uint64_t a1)
{
  [*(a1 + 32) offset];
  if (v2 != 3.40282347e38)
  {
    v3 = *(a1 + 40);
    [*(a1 + 32) offset];
    v5 = v3 - v4;
    if (+[PLDefaults debugEnabled])
    {
      v6 = *(a1 + 32);
      v7 = objc_opt_class();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __36__PLTimeReferenceDynamic_setOffset___block_invoke_2;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v7;
      if (PLSubmissionAnalyticsStateSuccess_block_invoke_2_defaultOnce_0 != -1)
      {
        dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_2_defaultOnce_0, block);
      }

      if (PLSubmissionAnalyticsStateSuccess_block_invoke_2_classDebugEnabled_0 == 1)
      {
        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PLTimeReferenceDynamic::setOffset: delta=%f", *&v5];
        v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLTimeReferenceClasses/PLTimeReferenceDynamic.m"];
        v10 = [v9 lastPathComponent];
        v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLTimeReferenceDynamic setOffset:]_block_invoke"];
        [PLCoreStorage logMessage:v8 fromFile:v10 fromFunction:v11 fromLineNumber:176];

        v12 = PLLogCommon();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    if (fabs(v5) >= 1.0)
    {
      if (+[PLDefaults debugEnabled])
      {
        v13 = *(a1 + 32);
        v14 = objc_opt_class();
        v43[0] = MEMORY[0x1E69E9820];
        v43[1] = 3221225472;
        v43[2] = __36__PLTimeReferenceDynamic_setOffset___block_invoke_50;
        v43[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v43[4] = v14;
        if (PLSubmissionAnalyticsStateSuccess_block_invoke_2_defaultOnce_48 != -1)
        {
          dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_2_defaultOnce_48, v43);
        }

        if (PLSubmissionAnalyticsStateSuccess_block_invoke_2_classDebugEnabled_49 == 1)
        {
          v15 = MEMORY[0x1E696AEC0];
          v16 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 32), "timeReferenceType")}];
          [*(a1 + 32) offset];
          v18 = [v15 stringWithFormat:@"PLTimeReferenceDynamic::setOffset: timeReferenceType=%@, oldOffset=%f, newOffset=%f", v16, v17, *(a1 + 40)];

          v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLTimeReferenceClasses/PLTimeReferenceDynamic.m"];
          v20 = [v19 lastPathComponent];
          v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLTimeReferenceDynamic setOffset:]_block_invoke_2"];
          [PLCoreStorage logMessage:v18 fromFile:v20 fromFunction:v21 fromLineNumber:180];

          v22 = PLLogCommon();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
          }
        }
      }

      v23 = [*(a1 + 32) offsetHistory];
      objc_sync_enter(v23);
      v24 = [*(a1 + 32) offsetHistory];
      v25 = [v24 count];

      if (v25)
      {
        v26 = [MEMORY[0x1E695DF00] monotonicDate];
        [*(a1 + 32) offset];
        v27 = [v26 dateByAddingTimeInterval:?];

        if (v27)
        {
          v28 = [*(a1 + 32) offsetHistoryHead];
          v29 = [*(a1 + 32) offsetHistory];
          v30 = (v28 - 1) % [v29 count];

          if ((v30 & 0x80000000) != 0)
          {
            v31 = [*(a1 + 32) offsetHistory];
            LODWORD(v30) = [v31 count] + v30;
          }

          v32 = [*(a1 + 32) offsetHistory];
          v33 = [v32 objectAtIndexedSubscript:v30];

          [v33 setObject:v27 forKeyedSubscript:@"endReferenceTime"];
        }
      }

      objc_sync_exit(v23);

      v34 = *(a1 + 40);
      v42.receiver = *(a1 + 32);
      v42.super_class = PLTimeReferenceDynamic;
      objc_msgSendSuper2(&v42, sel_setOffset_, v34);
      v35 = [*(a1 + 32) offsetHistory];
      objc_sync_enter(v35);
      v36 = [*(a1 + 32) newOffsetEntryWithCurrentTime];
      if (v36)
      {
        v37 = [*(a1 + 32) offsetHistory];
        v38 = [v37 count];

        v39 = [*(a1 + 32) offsetHistory];
        if (v38 == 3)
        {
          [v39 setObject:v36 atIndexedSubscript:{objc_msgSend(*(a1 + 32), "offsetHistoryHead")}];
        }

        else
        {
          [v39 addObject:v36];
        }

        v40 = [*(a1 + 32) offsetHistoryHead];
        v41 = [*(a1 + 32) offsetHistory];
        [*(a1 + 32) setOffsetHistoryHead:{((v40 + 1) % objc_msgSend(v41, "count"))}];
      }

      objc_sync_exit(v35);
      [*(a1 + 32) notifyTimeChange:v5];
    }
  }
}

BOOL __36__PLTimeReferenceDynamic_setOffset___block_invoke_2(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_2_classDebugEnabled_0 = result;
  return result;
}

BOOL __36__PLTimeReferenceDynamic_setOffset___block_invoke_50(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_2_classDebugEnabled_49 = result;
  return result;
}

- (id)removeTimeOffsetFromReferenceTime:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__18;
  v16 = __Block_byref_object_dispose__18;
  v17 = [MEMORY[0x1E695DF00] date];
  v5 = [PLUtilities workQueueForKey:@"PLTimeReferenceDynamic::removeTimeOffsetFromReferenceTime"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__PLTimeReferenceDynamic_removeTimeOffsetFromReferenceTime___block_invoke;
  block[3] = &unk_1E8519128;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __60__PLTimeReferenceDynamic_removeTimeOffsetFromReferenceTime___block_invoke(uint64_t a1)
{
  [*(a1 + 32) offset];
  v2 = 3.40282347e38;
  if (v3 != 3.40282347e38)
  {
    obj = [*(a1 + 32) offsetHistory];
    objc_sync_enter(obj);
    v4 = 0;
    v5 = 0.0;
    for (i = -1; ; --i)
    {
      v7 = [*(a1 + 32) offsetHistory];
      v8 = [v7 count];

      if (v8 <= v4)
      {
        break;
      }

      v9 = [*(a1 + 32) offsetHistoryHead];
      v10 = [*(a1 + 32) offsetHistory];
      v11 = (i + v9) % [v10 count];

      if ((v11 & 0x80000000) != 0)
      {
        v12 = [*(a1 + 32) offsetHistory];
        LODWORD(v11) = [v12 count] + v11;
      }

      v13 = [*(a1 + 32) offsetHistory];
      v14 = [v13 objectAtIndexedSubscript:v11];

      v15 = [v14 objectForKeyedSubscript:@"startReferenceTime"];
      v16 = [v14 objectForKeyedSubscript:@"endReferenceTime"];
      v17 = *(a1 + 32);
      [objc_opt_class() nearestDistanceFromDate:*(a1 + 40) toRegionWithStartDate:v15 andEndDate:v16];
      v19 = fabs(v18);
      if (v19 < v2)
      {
        v20 = [v14 objectForKeyedSubscript:@"offset"];
        [v20 doubleValue];
        v5 = v21;

        if (v19 < 1.0)
        {

          break;
        }

        v2 = v19;
      }

      ++v4;
    }

    objc_sync_exit(obj);

    v22 = [*(a1 + 40) dateByAddingTimeInterval:-v5];
    v23 = *(*(a1 + 48) + 8);
    v24 = *(v23 + 40);
    *(v23 + 40) = v22;

    v25 = *(*(*(a1 + 48) + 8) + 40);
    [*(a1 + 32) tooFarInFutureDistance];
    if (([v25 isInMonotonicFutureWithDistance:?] & 1) != 0 || (v26 = *(*(*(a1 + 48) + 8) + 40), objc_msgSend(*(a1 + 32), "tooFarInPastDistance"), objc_msgSend(v26, "isInMonotonicPastWithDistance:")))
    {
      if ([*(a1 + 32) shouldQueryCurrentTime])
      {
        v27 = [*(a1 + 32) currentTime];
      }

      v28 = *(a1 + 40);
      [*(a1 + 32) offset];
      v30 = [v28 dateByAddingTimeInterval:-v29];
      v31 = *(*(a1 + 48) + 8);
      v32 = *(v31 + 40);
      *(v31 + 40) = v30;

      v33 = *(*(*(a1 + 48) + 8) + 40);
      [*(a1 + 32) tooFarInFutureDistance];
      if (([v33 isInMonotonicFutureWithDistance:?] & 1) != 0 || (v34 = *(*(*(a1 + 48) + 8) + 40), objc_msgSend(*(a1 + 32), "tooFarInPastDistance"), objc_msgSend(v34, "isInMonotonicPastWithDistance:")))
      {
        if (+[PLPlatform internalBuild])
        {
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __60__PLTimeReferenceDynamic_removeTimeOffsetFromReferenceTime___block_invoke_2;
          block[3] = &unk_1E85199A8;
          v48 = @"PLTimeReferenceDynamic_TimeCorrection_Debug";
          v49 = 0;
          if (PLSubmissionAnalyticsStateSuccess_block_invoke_3_defaultOnce != -1)
          {
            dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_3_defaultOnce, block);
          }

          v35 = PLSubmissionAnalyticsStateSuccess_block_invoke_3_objectForKey;

          if (v35 == 1)
          {
            v36 = [(PLOperator *)PLStorageOperator entryKeyForType:@"EventPoint" andName:@"TimeCorrection"];
            v37 = [[PLEntry alloc] initWithEntryKey:v36];
            v38 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 32), "timeReferenceType")}];
            [(PLEntry *)v37 setObject:v38 forKeyedSubscript:@"TimeReferenceType"];

            [(PLEntry *)v37 setObject:*(a1 + 40) forKeyedSubscript:@"TimeInReference"];
            [(PLEntry *)v37 setObject:*(*(*(a1 + 48) + 8) + 40) forKeyedSubscript:@"ProjectedTimeInMonotonic"];
            v39 = [MEMORY[0x1E696AF00] callStackSymbols];
            v40 = [v39 componentsJoinedByString:{@", "}];
            [(PLEntry *)v37 setObject:v40 forKeyedSubscript:@"CallStack"];

            v41 = +[PowerlogCore sharedCore];
            v42 = [v41 storage];
            [v42 writeEntry:v37 withCompletionBlock:&__block_literal_global_45];
          }
        }

        v43 = [MEMORY[0x1E695DF00] monotonicDate];
        v44 = *(*(a1 + 48) + 8);
        v45 = *(v44 + 40);
        *(v44 + 40) = v43;
      }
    }
  }
}

BOOL __60__PLTimeReferenceDynamic_removeTimeOffsetFromReferenceTime___block_invoke_2(uint64_t a1)
{
  result = [PLDefaults BOOLForKey:*(a1 + 32) ifNotSet:*(a1 + 40)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_3_objectForKey = result;
  return result;
}

+ (double)nearestDistanceFromDate:(id)a3 toRegionWithStartDate:(id)a4 andEndDate:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  [v9 timeIntervalSinceDate:v8];
  v11 = v10;
  [v7 timeIntervalSinceDate:v9];
  v13 = v12;

  [v7 timeIntervalSinceDate:v8];
  v15 = v14;

  result = -1.0;
  if (v15 >= 0.0)
  {
    if (v11 <= 0.0 || (result = 0.0, v13 <= 0.0))
    {
      result = fabs(v11);
      v17 = fabs(v13);
      if (result >= v17)
      {
        return v17;
      }
    }
  }

  return result;
}

- (void)registerForTimeChangedCallbackWithIdentifier:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [(PLTimeReferenceDynamic *)self timeChangeBlocks];
    objc_sync_enter(v9);
    if (+[PLDefaults debugEnabled])
    {
      v10 = objc_opt_class();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __82__PLTimeReferenceDynamic_registerForTimeChangedCallbackWithIdentifier_usingBlock___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v10;
      if (registerForTimeChangedCallbackWithIdentifier_usingBlock__defaultOnce != -1)
      {
        dispatch_once(&registerForTimeChangedCallbackWithIdentifier_usingBlock__defaultOnce, block);
      }

      if (registerForTimeChangedCallbackWithIdentifier_usingBlock__classDebugEnabled == 1)
      {
        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"identifier=%@", v6];
        v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLTimeReferenceClasses/PLTimeReferenceDynamic.m"];
        v13 = [v12 lastPathComponent];
        v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLTimeReferenceDynamic registerForTimeChangedCallbackWithIdentifier:usingBlock:]"];
        [PLCoreStorage logMessage:v11 fromFile:v13 fromFunction:v14 fromLineNumber:322];

        v15 = PLLogCommon();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    v16 = MEMORY[0x1DA71B0D0](v8);
    v17 = [(PLTimeReferenceDynamic *)self timeChangeBlocks];
    [v17 setObject:v16 forKeyedSubscript:v6];

    if (+[PLDefaults debugEnabled])
    {
      v18 = objc_opt_class();
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __82__PLTimeReferenceDynamic_registerForTimeChangedCallbackWithIdentifier_usingBlock___block_invoke_76;
      v26[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v26[4] = v18;
      if (registerForTimeChangedCallbackWithIdentifier_usingBlock__defaultOnce_74 != -1)
      {
        dispatch_once(&registerForTimeChangedCallbackWithIdentifier_usingBlock__defaultOnce_74, v26);
      }

      if (registerForTimeChangedCallbackWithIdentifier_usingBlock__classDebugEnabled_75 == 1)
      {
        v19 = MEMORY[0x1E696AEC0];
        v20 = [(PLTimeReferenceDynamic *)self timeChangeBlocks];
        v21 = [v19 stringWithFormat:@"self.timeChangeBlocks=%@", v20];

        v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLTimeReferenceClasses/PLTimeReferenceDynamic.m"];
        v23 = [v22 lastPathComponent];
        v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLTimeReferenceDynamic registerForTimeChangedCallbackWithIdentifier:usingBlock:]"];
        [PLCoreStorage logMessage:v21 fromFile:v23 fromFunction:v24 fromLineNumber:324];

        v25 = PLLogCommon();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    objc_sync_exit(v9);
  }
}

BOOL __82__PLTimeReferenceDynamic_registerForTimeChangedCallbackWithIdentifier_usingBlock___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  registerForTimeChangedCallbackWithIdentifier_usingBlock__classDebugEnabled = result;
  return result;
}

BOOL __82__PLTimeReferenceDynamic_registerForTimeChangedCallbackWithIdentifier_usingBlock___block_invoke_76(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  registerForTimeChangedCallbackWithIdentifier_usingBlock__classDebugEnabled_75 = result;
  return result;
}

- (void)unregisterForTimeChangedCallbackWithIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(PLTimeReferenceDynamic *)self timeChangeBlocks];
    objc_sync_enter(v5);
    if (+[PLDefaults debugEnabled])
    {
      v6 = objc_opt_class();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __73__PLTimeReferenceDynamic_unregisterForTimeChangedCallbackWithIdentifier___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v6;
      if (unregisterForTimeChangedCallbackWithIdentifier__defaultOnce != -1)
      {
        dispatch_once(&unregisterForTimeChangedCallbackWithIdentifier__defaultOnce, block);
      }

      if (unregisterForTimeChangedCallbackWithIdentifier__classDebugEnabled == 1)
      {
        v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"identifier=%@", v4];
        v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLTimeReferenceClasses/PLTimeReferenceDynamic.m"];
        v9 = [v8 lastPathComponent];
        v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLTimeReferenceDynamic unregisterForTimeChangedCallbackWithIdentifier:]"];
        [PLCoreStorage logMessage:v7 fromFile:v9 fromFunction:v10 fromLineNumber:331];

        v11 = PLLogCommon();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    v12 = [(PLTimeReferenceDynamic *)self timeChangeBlocks];
    [v12 removeObjectForKey:v4];

    if (+[PLDefaults debugEnabled])
    {
      v13 = objc_opt_class();
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __73__PLTimeReferenceDynamic_unregisterForTimeChangedCallbackWithIdentifier___block_invoke_82;
      v21[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v21[4] = v13;
      if (unregisterForTimeChangedCallbackWithIdentifier__defaultOnce_80 != -1)
      {
        dispatch_once(&unregisterForTimeChangedCallbackWithIdentifier__defaultOnce_80, v21);
      }

      if (unregisterForTimeChangedCallbackWithIdentifier__classDebugEnabled_81 == 1)
      {
        v14 = MEMORY[0x1E696AEC0];
        v15 = [(PLTimeReferenceDynamic *)self timeChangeBlocks];
        v16 = [v14 stringWithFormat:@"self.timeChangeBlocks=%@", v15];

        v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLTimeReferenceClasses/PLTimeReferenceDynamic.m"];
        v18 = [v17 lastPathComponent];
        v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLTimeReferenceDynamic unregisterForTimeChangedCallbackWithIdentifier:]"];
        [PLCoreStorage logMessage:v16 fromFile:v18 fromFunction:v19 fromLineNumber:333];

        v20 = PLLogCommon();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    objc_sync_exit(v5);
  }
}

BOOL __73__PLTimeReferenceDynamic_unregisterForTimeChangedCallbackWithIdentifier___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  unregisterForTimeChangedCallbackWithIdentifier__classDebugEnabled = result;
  return result;
}

BOOL __73__PLTimeReferenceDynamic_unregisterForTimeChangedCallbackWithIdentifier___block_invoke_82(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  unregisterForTimeChangedCallbackWithIdentifier__classDebugEnabled_81 = result;
  return result;
}

- (void)notifyTimeChange:(double)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if (a3 != 0.0)
  {
    v5 = [(PLTimeReferenceDynamic *)self timeChangeBlocks];
    objc_sync_enter(v5);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [(PLTimeReferenceDynamic *)self timeChangeBlocks];
    v7 = [v6 allValues];

    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v14 + 1) + 8 * v10);
          v12 = objc_autoreleasePoolPush();
          (*(v11 + 16))(v11, a3);
          objc_autoreleasePoolPop(v12);
          ++v10;
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    objc_sync_exit(v5);
  }

  v13 = *MEMORY[0x1E69E9840];
}

@end