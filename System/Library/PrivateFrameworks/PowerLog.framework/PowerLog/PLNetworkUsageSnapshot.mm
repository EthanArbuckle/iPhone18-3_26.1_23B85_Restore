@interface PLNetworkUsageSnapshot
- (PLNetworkUsageSnapshot)initWithInfo:(id)info;
- (double)computeEnergyDiff:(id)diff;
- (double)computeEnergyDiffUntilNow:(BOOL)now;
- (id)description;
- (void)snapshotNetworkState;
@end

@implementation PLNetworkUsageSnapshot

- (PLNetworkUsageSnapshot)initWithInfo:(id)info
{
  infoCopy = info;
  v11.receiver = self;
  v11.super_class = PLNetworkUsageSnapshot;
  v5 = [(PLNetworkUsageSnapshot *)&v11 init];
  if (v5)
  {
    date = [MEMORY[0x1E695DF00] date];
    [(PLNetworkUsageSnapshot *)v5 setTimestamp:date];

    v7 = [infoCopy objectForKeyedSubscript:@"cell"];
    [(PLNetworkUsageSnapshot *)v5 setCellType:v7];

    v8 = [infoCopy objectForKeyedSubscript:@"quality"];
    [(PLNetworkUsageSnapshot *)v5 setQuality:v8];

    v9 = [infoCopy objectForKeyedSubscript:@"wifi"];
    [(PLNetworkUsageSnapshot *)v5 setWifi:v9];
  }

  return v5;
}

- (void)snapshotNetworkState
{
  date = [MEMORY[0x1E695DF00] date];
  [(PLNetworkUsageSnapshot *)self setTimestamp:date];
}

- (double)computeEnergyDiffUntilNow:(BOOL)now
{
  nowCopy = now;
  v5 = objc_alloc_init(PLNetworkUsageSnapshot);
  date = [MEMORY[0x1E695DF00] date];
  [(PLNetworkUsageSnapshot *)v5 setTimestamp:date];

  cellType = [(PLNetworkUsageSnapshot *)self cellType];
  [(PLNetworkUsageSnapshot *)v5 setCellType:cellType];

  quality = [(PLNetworkUsageSnapshot *)self quality];
  [(PLNetworkUsageSnapshot *)v5 setQuality:quality];

  wifi = [(PLNetworkUsageSnapshot *)self wifi];
  [(PLNetworkUsageSnapshot *)v5 setWifi:wifi];

  [(PLNetworkUsageSnapshot *)v5 computeEnergyDiff:self];
  v11 = v10;
  if (nowCopy)
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

- (double)computeEnergyDiff:(id)diff
{
  diffCopy = diff;
  v5 = PLLogDiscretionaryEnergyMonitor();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [PLNetworkUsageSnapshot computeEnergyDiff:];
  }

  timestamp = [(PLNetworkUsageSnapshot *)self timestamp];
  timestamp2 = [diffCopy timestamp];
  [timestamp timeIntervalSinceDate:timestamp2];
  v9 = v8;

  wifi = [(PLNetworkUsageSnapshot *)self wifi];

  if (wifi)
  {
    v11 = 15.3333333;
  }

  else
  {
    cellType = [(PLNetworkUsageSnapshot *)self cellType];
    v13 = [cellType isEqualToString:@"5G"];

    if (v13)
    {
      v11 = 47.3333333;
    }

    else
    {
      cellType2 = [(PLNetworkUsageSnapshot *)self cellType];
      v15 = [cellType2 isEqualToString:@"LTE"];

      if (v15)
      {
        v11 = 38.0;
      }

      else
      {
        cellType3 = [(PLNetworkUsageSnapshot *)self cellType];
        v17 = [cellType3 isEqualToString:@"PreLTE"];

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
  timestamp = [(PLNetworkUsageSnapshot *)self timestamp];
  cellType = [(PLNetworkUsageSnapshot *)self cellType];
  quality = [(PLNetworkUsageSnapshot *)self quality];
  wifi = [(PLNetworkUsageSnapshot *)self wifi];
  v8 = [v3 stringWithFormat:@"timestamp=%@, cellType=%@, quality=%@, WiFi=%@", timestamp, cellType, quality, wifi];

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