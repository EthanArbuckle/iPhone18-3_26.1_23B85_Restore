@interface PLDiscretionaryInterval
- (BOOL)isClosed;
- (PLDiscretionaryInterval)initWithIdentifier:(id)identifier andInfo:(id)info andSnapshottingEnabled:(BOOL)enabled andMockData:(id)data;
- (double)checkOpenIntervalDuration:(id)duration;
- (id)description;
- (void)closeInterval;
@end

@implementation PLDiscretionaryInterval

- (PLDiscretionaryInterval)initWithIdentifier:(id)identifier andInfo:(id)info andSnapshottingEnabled:(BOOL)enabled andMockData:(id)data
{
  identifierCopy = identifier;
  infoCopy = info;
  dataCopy = data;
  v18.receiver = self;
  v18.super_class = PLDiscretionaryInterval;
  v13 = [(PLDiscretionaryInterval *)&v18 init];
  if (v13)
  {
    date = [MEMORY[0x1E695DF00] date];
    [(PLDiscretionaryInterval *)v13 setOriginalStartDate:date];

    originalStartDate = [(PLDiscretionaryInterval *)v13 originalStartDate];
    [(PLDiscretionaryInterval *)v13 setCurrentStartDate:originalStartDate];

    [(PLDiscretionaryInterval *)v13 setOpenCount:1.0];
    [(PLDiscretionaryInterval *)v13 setStartCount:1.0];
    if (enabled)
    {
      if ([identifierCopy isEqualToString:@"discretionaryNetworkTasks"])
      {
        v16 = [[PLNetworkUsageSnapshot alloc] initWithInfo:infoCopy];
        [(PLDiscretionaryInterval *)v13 setNetworkEnergySnapshot:v16];
      }

      else
      {
        v16 = [[PLCPUEnergySnapshot alloc] initWithIdentifier:identifierCopy andMockData:dataCopy];
        [(PLDiscretionaryInterval *)v13 setCpuEnergySnapshot:v16];
      }
    }

    else
    {
      v16 = PLLogDiscretionaryEnergyMonitor();
      if (os_log_type_enabled(&v16->super, OS_LOG_TYPE_DEBUG))
      {
        [PLDiscretionaryInterval initWithIdentifier:andInfo:andSnapshottingEnabled:andMockData:];
      }
    }
  }

  return v13;
}

- (BOOL)isClosed
{
  endDate = [(PLDiscretionaryInterval *)self endDate];
  v3 = endDate != 0;

  return v3;
}

- (void)closeInterval
{
  v7 = *MEMORY[0x1E69E9840];
  [self openCount];
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

- (double)checkOpenIntervalDuration:(id)duration
{
  v20 = *MEMORY[0x1E69E9840];
  durationCopy = duration;
  if ([(PLDiscretionaryInterval *)self isClosed])
  {
    date = PLLogDiscretionaryEnergyMonitor();
    v6 = 0.0;
    if (os_log_type_enabled(date, OS_LOG_TYPE_ERROR))
    {
      [PLDiscretionaryInterval checkOpenIntervalDuration:];
    }
  }

  else
  {
    date = [MEMORY[0x1E695DF00] date];
    originalStartDate = [(PLDiscretionaryInterval *)self originalStartDate];
    [date timeIntervalSinceDate:originalStartDate];
    v6 = v8;

    v9 = PLLogDiscretionaryEnergyMonitor();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      originalStartDate2 = [(PLDiscretionaryInterval *)self originalStartDate];
      v14 = 134218498;
      v15 = v6;
      v16 = 2112;
      selfCopy = date;
      v18 = 2112;
      v19 = originalStartDate2;
      _os_log_debug_impl(&dword_1BACB7000, v9, OS_LOG_TYPE_DEBUG, "timeSinceIntervalStart=%f, now=%@, intervalStartDate=%@", &v14, 0x20u);
    }

    if (v6 > 600.0)
    {
      v10 = PLLogDiscretionaryEnergyMonitor();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v14 = 134218498;
        v15 = v6;
        v16 = 2112;
        selfCopy = self;
        v18 = 2112;
        v19 = durationCopy;
        _os_log_error_impl(&dword_1BACB7000, v10, OS_LOG_TYPE_ERROR, "Interval open for %f seconds, potential unclosed interval=%@ for identifier=%@", &v14, 0x20u);
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  originalStartDate = [(PLDiscretionaryInterval *)self originalStartDate];
  currentStartDate = [(PLDiscretionaryInterval *)self currentStartDate];
  endDate = [(PLDiscretionaryInterval *)self endDate];
  cpuEnergySnapshot = [(PLDiscretionaryInterval *)self cpuEnergySnapshot];
  networkEnergySnapshot = [(PLDiscretionaryInterval *)self networkEnergySnapshot];
  [(PLDiscretionaryInterval *)self openCount];
  v10 = v9;
  [(PLDiscretionaryInterval *)self startCount];
  v12 = [v3 stringWithFormat:@"originalStartDate=%@, currentStartDate=%@, endDate=%@, cpuEnergySnapshot=%@, networkEnergySnapshot=%@, openCount=%f, startCount=%f", originalStartDate, currentStartDate, endDate, cpuEnergySnapshot, networkEnergySnapshot, v10, v11];

  return v12;
}

- (void)initWithIdentifier:andInfo:andSnapshottingEnabled:andMockData:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)checkOpenIntervalDuration:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end