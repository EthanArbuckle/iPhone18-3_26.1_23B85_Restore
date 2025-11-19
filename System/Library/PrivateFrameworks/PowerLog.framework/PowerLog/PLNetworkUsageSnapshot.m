@interface PLNetworkUsageSnapshot
- (PLNetworkUsageSnapshot)initWithInfo:(id)a3;
- (double)computeEnergyDiff:(id)a3;
- (double)computeEnergyDiffUntilNow:(BOOL)a3;
- (id)description;
- (void)snapshotNetworkState;
@end

@implementation PLNetworkUsageSnapshot

- (PLNetworkUsageSnapshot)initWithInfo:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PLNetworkUsageSnapshot;
  v5 = [(PLNetworkUsageSnapshot *)&v11 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DF00] date];
    [(PLNetworkUsageSnapshot *)v5 setTimestamp:v6];

    v7 = [v4 objectForKeyedSubscript:@"cell"];
    [(PLNetworkUsageSnapshot *)v5 setCellType:v7];

    v8 = [v4 objectForKeyedSubscript:@"quality"];
    [(PLNetworkUsageSnapshot *)v5 setQuality:v8];

    v9 = [v4 objectForKeyedSubscript:@"wifi"];
    [(PLNetworkUsageSnapshot *)v5 setWifi:v9];
  }

  return v5;
}

- (void)snapshotNetworkState
{
  v3 = [MEMORY[0x1E695DF00] date];
  [(PLNetworkUsageSnapshot *)self setTimestamp:v3];
}

- (double)computeEnergyDiffUntilNow:(BOOL)a3
{
  v3 = a3;
  v5 = objc_alloc_init(PLNetworkUsageSnapshot);
  v6 = [MEMORY[0x1E695DF00] date];
  [(PLNetworkUsageSnapshot *)v5 setTimestamp:v6];

  v7 = [(PLNetworkUsageSnapshot *)self cellType];
  [(PLNetworkUsageSnapshot *)v5 setCellType:v7];

  v8 = [(PLNetworkUsageSnapshot *)self quality];
  [(PLNetworkUsageSnapshot *)v5 setQuality:v8];

  v9 = [(PLNetworkUsageSnapshot *)self wifi];
  [(PLNetworkUsageSnapshot *)v5 setWifi:v9];

  [(PLNetworkUsageSnapshot *)v5 computeEnergyDiff:self];
  v11 = v10;
  if (v3)
  {
    v12 = PLLogDiscretionaryEnergyMonitor();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [PLNetworkUsageSnapshot computeEnergyDiffUntilNow:];
    }

    [(PLNetworkUsageSnapshot *)self snapshotNetworkState];
    v13 = PLLogDiscretionaryEnergyMonitor();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [PLNetworkUsageSnapshot computeEnergyDiffUntilNow:];
    }
  }

  return v11;
}

- (double)computeEnergyDiff:(id)a3
{
  v4 = a3;
  v5 = PLLogDiscretionaryEnergyMonitor();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [PLNetworkUsageSnapshot computeEnergyDiff:];
  }

  v6 = [(PLNetworkUsageSnapshot *)self timestamp];
  v7 = [v4 timestamp];
  [v6 timeIntervalSinceDate:v7];
  v9 = v8;

  v10 = [(PLNetworkUsageSnapshot *)self wifi];

  if (v10)
  {
    v11 = 15.3333333;
  }

  else
  {
    v12 = [(PLNetworkUsageSnapshot *)self cellType];
    v13 = [v12 isEqualToString:@"5G"];

    if (v13)
    {
      v11 = 47.3333333;
    }

    else
    {
      v14 = [(PLNetworkUsageSnapshot *)self cellType];
      v15 = [v14 isEqualToString:@"LTE"];

      if (v15)
      {
        v11 = 38.0;
      }

      else
      {
        v16 = [(PLNetworkUsageSnapshot *)self cellType];
        v17 = [v16 isEqualToString:@"PreLTE"];

        v11 = 0.0;
        if (v17)
        {
          v11 = 30.0;
        }
      }
    }
  }

  v18 = v9 / 3600.0 * v11;

  return v18;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(PLNetworkUsageSnapshot *)self timestamp];
  v5 = [(PLNetworkUsageSnapshot *)self cellType];
  v6 = [(PLNetworkUsageSnapshot *)self quality];
  v7 = [(PLNetworkUsageSnapshot *)self wifi];
  v8 = [v3 stringWithFormat:@"timestamp=%@, cellType=%@, quality=%@, WiFi=%@", v4, v5, v6, v7];

  return v8;
}

- (void)computeEnergyDiffUntilNow:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)computeEnergyDiffUntilNow:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)computeEnergyDiff:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_1BACB7000, v0, v1, "computing network energy diff between self=%@ and otherSnapshot=%@");
  v2 = *MEMORY[0x1E69E9840];
}

@end