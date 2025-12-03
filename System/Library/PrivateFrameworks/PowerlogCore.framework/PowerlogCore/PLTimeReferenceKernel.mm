@interface PLTimeReferenceKernel
- (double)resolution;
- (id)currentTime;
- (mach_timebase_info)getTimebaseInfo;
- (void)currentTime;
- (void)initializeOffsetWithEntries:(id)entries;
@end

@implementation PLTimeReferenceKernel

- (id)currentTime
{
  v27 = *MEMORY[0x1E69E9840];
  if (currentTime_onceToken != -1)
  {
    [PLTimeReferenceKernel currentTime];
  }

  date = [MEMORY[0x1E695DF00] date];
  lastSystemTimeRecalibrated = [(PLTimeReferenceKernel *)self lastSystemTimeRecalibrated];
  if (!lastSystemTimeRecalibrated)
  {
    goto LABEL_8;
  }

  v5 = lastSystemTimeRecalibrated;
  lastSystemTimeRecalibrated2 = [(PLTimeReferenceKernel *)self lastSystemTimeRecalibrated];
  [date timeIntervalSinceDate:lastSystemTimeRecalibrated2];
  v8 = v7;

  if (v8 >= 0.0 && v8 < 30.0)
  {
    lastKernelTimeRecalibrated = [(PLTimeReferenceKernel *)self lastKernelTimeRecalibrated];
    v13 = [lastKernelTimeRecalibrated dateByAddingTimeInterval:v8];

    v14 = PLLogTimeManager();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      lastSystemTimeRecalibrated3 = [(PLTimeReferenceKernel *)self lastSystemTimeRecalibrated];
      *buf = 138412802;
      *&buf[4] = date;
      v23 = 2112;
      v24 = lastSystemTimeRecalibrated3;
      v25 = 2112;
      v26 = v13;
      _os_log_debug_impl(&dword_1D8611000, v14, OS_LOG_TYPE_DEBUG, "Linear approximation: systemNow=%@, lastSystemTimeRecalibrated=%@, currentTime=%@", buf, 0x20u);
    }
  }

  else
  {
LABEL_8:
    v21 = 8;
    *buf = 0;
    if (sysctl(currentTime_mib, currentTime_miblen, buf, &v21, 0, 0))
    {
      v10 = PLLogTimeManager();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [PLTimeReferenceKernel currentTime];
      }

      date2 = [MEMORY[0x1E695DF00] date];
    }

    else
    {
      v15 = *buf / 1000000.0;
      [(PLTimeReferenceKernel *)self resolution];
      date2 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v15 + v16 * 0.5];
    }

    v13 = date2;
    [(PLTimeReferenceKernel *)self setLastSystemTimeRecalibrated:date];
    [(PLTimeReferenceKernel *)self setLastKernelTimeRecalibrated:v13];
    v17 = PLLogTimeManager();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [(PLTimeReferenceKernel *)date currentTime];
    }
  }

  v18 = *MEMORY[0x1E69E9840];

  return v13;
}

- (double)resolution
{
  if (resolution_onceToken != -1)
  {
    [PLTimeReferenceKernel resolution];
  }

  return *&resolution_sInterval;
}

- (void)initializeOffsetWithEntries:(id)entries
{
  entriesCopy = entries;
  currentTime = [(PLTimeReferenceKernel *)self currentTime];
  if (entriesCopy && [entriesCopy count])
  {
    lastObject = [entriesCopy lastObject];
    v7 = [lastObject objectForKeyedSubscript:@"system"];
    [v7 doubleValue];
    v9 = v8;

    v10 = [lastObject objectForKeyedSubscript:@"kernel"];
    [v10 doubleValue];
    v12 = v11;

    entryDate = [lastObject entryDate];
  }

  else
  {
    v36.receiver = self;
    v36.super_class = PLTimeReferenceKernel;
    v14 = [-[PLTimeReferenceKernel class](&v36 class)];
    v15 = [PLDefaults objectForKey:v14];
    [v15 doubleValue];
    v9 = v16;

    v35.receiver = self;
    v35.super_class = PLTimeReferenceKernel;
    v17 = [-[PLTimeReferenceKernel class](&v35 class)];
    v18 = [PLDefaults objectForKey:v17];
    [v18 doubleValue];
    v12 = v19;

    v20 = MEMORY[0x1E695DF00];
    v34.receiver = self;
    v34.super_class = PLTimeReferenceKernel;
    v21 = [-[PLTimeReferenceKernel class](&v34 class)];
    v22 = [PLDefaults objectForKey:v21];
    [v22 doubleValue];
    entryDate = [v20 dateWithTimeIntervalSince1970:?];
  }

  if (v9 == 0.0 || (v12 != 0.0 ? (v23 = entryDate == 0) : (v23 = 1), v23))
  {
    timeManager = [(PLTimeReference *)self timeManager];
    initialMonotonicTime = [timeManager initialMonotonicTime];
    [currentTime timeIntervalSinceDate:initialMonotonicTime];
    [(PLTimeReference *)&v31 setOffset:self, PLTimeReferenceKernel];
  }

  else
  {
    timeManager = [entryDate dateByAddingTimeInterval:v12];
    [currentTime timeIntervalSinceDate:timeManager];
    if (v25 >= 0.0)
    {
      v32.receiver = self;
      v32.super_class = PLTimeReferenceKernel;
      [(PLTimeReference *)&v32 setOffset:v12];
      goto LABEL_19;
    }

    date = [MEMORY[0x1E695DF00] date];
    initialMonotonicTime = [date dateByAddingTimeInterval:-v9];

    [initialMonotonicTime timeIntervalSinceDate:entryDate];
    v29 = v28;
    v30 = PLLogTimeManager();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      [(PLTimeReferenceKernel *)v29 < 0.0 initializeOffsetWithEntries:v30];
    }

    if (v29 < 0.0)
    {
      [(PLTimeReferenceKernel *)self quarantineWithExitReason:1006];
    }

    [currentTime timeIntervalSinceDate:initialMonotonicTime];
    v33.receiver = self;
    v33.super_class = PLTimeReferenceKernel;
    [(PLTimeReference *)&v33 setOffset:v31.receiver, v31.super_class];
  }

LABEL_19:
}

void __36__PLTimeReferenceKernel_currentTime__block_invoke()
{
  if (sysctlnametomib("kern.monotonicclock_usecs", currentTime_mib, &currentTime_miblen))
  {
    v0 = PLLogTimeManager();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      __36__PLTimeReferenceKernel_currentTime__block_invoke_cold_1(v0);
    }
  }
}

double __35__PLTimeReferenceKernel_resolution__block_invoke()
{
  v7 = *MEMORY[0x1E69E9840];
  resolution_sInterval = 0x3FF0000000000000;
  v4 = 8;
  v5 = 0;
  *v3 = 8;
  if (sysctlnametomib("kern.monotonicclock_rate_usecs", v6, v3))
  {
    v0 = PLLogTimeManager();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      __35__PLTimeReferenceKernel_resolution__block_invoke_cold_1(v0);
    }

LABEL_7:

    goto LABEL_8;
  }

  if (sysctl(v6, v3[0], &v5, &v4, 0, 0))
  {
    v0 = PLLogTimeManager();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      __35__PLTimeReferenceKernel_resolution__block_invoke_cold_2();
    }

    goto LABEL_7;
  }

LABEL_8:
  result = v5 / 1000000.0;
  *&resolution_sInterval = result;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

- (mach_timebase_info)getTimebaseInfo
{
  if (getTimebaseInfo_onceToken != -1)
  {
    [PLTimeReferenceKernel getTimebaseInfo];
  }

  return &getTimebaseInfo_machTimeInfo;
}

double __40__PLTimeReferenceKernel_getTimebaseInfo__block_invoke()
{
  if (mach_timebase_info(&getTimebaseInfo_machTimeInfo))
  {
    _os_assumes_log();
  }

  else if (dword_1ECA616AC)
  {
    return result;
  }

  *&result = 0x100000001;
  getTimebaseInfo_machTimeInfo = 0x100000001;
  return result;
}

- (void)initializeOffsetWithEntries:(char)a1 .cold.1(char a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1 & 1;
  _os_log_debug_impl(&dword_1D8611000, a2, OS_LOG_TYPE_DEBUG, "monotonicTimeWentBackwards=%d", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)currentTime
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  selfCopy = self;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_1D8611000, log, OS_LOG_TYPE_DEBUG, "Recalibration: systemNow=%@, currentTime=%@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

void __35__PLTimeReferenceKernel_resolution__block_invoke_cold_2()
{
  v10 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_6(&dword_1D8611000, v2, v3, "PLTimeReferenceKernel::resolution: error occurred %d %s", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

@end