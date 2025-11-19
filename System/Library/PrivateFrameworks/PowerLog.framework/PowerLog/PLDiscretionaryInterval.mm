@interface PLDiscretionaryInterval
- (BOOL)isClosed;
- (PLDiscretionaryInterval)initWithIdentifier:(id)a3 andInfo:(id)a4 andSnapshottingEnabled:(BOOL)a5 andMockData:(id)a6;
- (double)checkOpenIntervalDuration:(id)a3;
- (id)description;
- (void)closeInterval;
@end

@implementation PLDiscretionaryInterval

- (PLDiscretionaryInterval)initWithIdentifier:(id)a3 andInfo:(id)a4 andSnapshottingEnabled:(BOOL)a5 andMockData:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v18.receiver = self;
  v18.super_class = PLDiscretionaryInterval;
  v13 = [(PLDiscretionaryInterval *)&v18 init];
  if (v13)
  {
    v14 = [MEMORY[0x1E695DF00] date];
    [(PLDiscretionaryInterval *)v13 setOriginalStartDate:v14];

    v15 = [(PLDiscretionaryInterval *)v13 originalStartDate];
    [(PLDiscretionaryInterval *)v13 setCurrentStartDate:v15];

    [(PLDiscretionaryInterval *)v13 setOpenCount:1.0];
    [(PLDiscretionaryInterval *)v13 setStartCount:1.0];
    if (a5)
    {
      if ([v10 isEqualToString:@"discretionaryNetworkTasks"])
      {
        v16 = [[PLNetworkUsageSnapshot alloc] initWithInfo:v11];
        [(PLDiscretionaryInterval *)v13 setNetworkEnergySnapshot:v16];
      }

      else
      {
        v16 = [[PLCPUEnergySnapshot alloc] initWithIdentifier:v10 andMockData:v12];
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
  v2 = [(PLDiscretionaryInterval *)self endDate];
  v3 = v2 != 0;

  return v3;
}

- (void)closeInterval
{
  v7 = *MEMORY[0x1E69E9840];
  [a1 openCount];
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

- (double)checkOpenIntervalDuration:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(PLDiscretionaryInterval *)self isClosed])
  {
    v5 = PLLogDiscretionaryEnergyMonitor();
    v6 = 0.0;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [PLDiscretionaryInterval checkOpenIntervalDuration:];
    }
  }

  else
  {
    v5 = [MEMORY[0x1E695DF00] date];
    v7 = [(PLDiscretionaryInterval *)self originalStartDate];
    [v5 timeIntervalSinceDate:v7];
    v6 = v8;

    v9 = PLLogDiscretionaryEnergyMonitor();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v13 = [(PLDiscretionaryInterval *)self originalStartDate];
      v14 = 134218498;
      v15 = v6;
      v16 = 2112;
      v17 = v5;
      v18 = 2112;
      v19 = v13;
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
        v17 = self;
        v18 = 2112;
        v19 = v4;
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
  v4 = [(PLDiscretionaryInterval *)self originalStartDate];
  v5 = [(PLDiscretionaryInterval *)self currentStartDate];
  v6 = [(PLDiscretionaryInterval *)self endDate];
  v7 = [(PLDiscretionaryInterval *)self cpuEnergySnapshot];
  v8 = [(PLDiscretionaryInterval *)self networkEnergySnapshot];
  [(PLDiscretionaryInterval *)self openCount];
  v10 = v9;
  [(PLDiscretionaryInterval *)self startCount];
  v12 = [v3 stringWithFormat:@"originalStartDate=%@, currentStartDate=%@, endDate=%@, cpuEnergySnapshot=%@, networkEnergySnapshot=%@, openCount=%f, startCount=%f", v4, v5, v6, v7, v8, v10, v11];

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