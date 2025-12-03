@interface PLCPUEnergySnapshot
+ (NSMutableDictionary)coalitionIDToCoalitionNameMapping;
+ (NSMutableDictionary)identifierToAccountingName;
+ (NSMutableDictionary)identifierToCoalitionID;
+ (void)setCoalitionIDToCoalitionNameMapping:(id)mapping;
+ (void)setIdentifierToAccountingName:(id)name;
+ (void)setIdentifierToCoalitionID:(id)d;
- (BOOL)snapshotCPUEnergy:(id)energy;
- (PLCPUEnergySnapshot)initWithIdentifier:(id)identifier andMockData:(id)data;
- (double)computeEnergyDiff:(id)diff;
- (double)computeEnergyDiffUntilNow:(id)now andAdjustSnapshotToNow:(BOOL)toNow;
- (id)getCoalitionIDForIdentifier:(id)identifier;
- (id)searchCoalitionsCacheForID:(id)d;
- (void)refreshCoalitionIDMapping;
@end

@implementation PLCPUEnergySnapshot

- (PLCPUEnergySnapshot)initWithIdentifier:(id)identifier andMockData:(id)data
{
  identifierCopy = identifier;
  dataCopy = data;
  v11.receiver = self;
  v11.super_class = PLCPUEnergySnapshot;
  v8 = [(PLCPUEnergySnapshot *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(PLCPUEnergySnapshot *)v8 setMockData:dataCopy];
    [(PLCPUEnergySnapshot *)v9 snapshotCPUEnergy:identifierCopy];
  }

  return v9;
}

- (double)computeEnergyDiffUntilNow:(id)now andAdjustSnapshotToNow:(BOOL)toNow
{
  toNowCopy = toNow;
  nowCopy = now;
  v7 = [PLCPUEnergySnapshot alloc];
  mockData = [(PLCPUEnergySnapshot *)self mockData];
  v9 = [(PLCPUEnergySnapshot *)v7 initWithIdentifier:nowCopy andMockData:mockData];

  [(PLCPUEnergySnapshot *)v9 computeEnergyDiff:self];
  v11 = v10;
  if (toNowCopy)
  {
    v12 = PLLogDiscretionaryEnergyMonitor();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [PLCPUEnergySnapshot computeEnergyDiffUntilNow:andAdjustSnapshotToNow:];
    }

    [(PLCPUEnergySnapshot *)self setCpuEnergy:[(PLCPUEnergySnapshot *)v9 cpuEnergy]];
    [(PLCPUEnergySnapshot *)self setCpuEnergyBilledToMe:[(PLCPUEnergySnapshot *)v9 cpuEnergyBilledToMe]];
    [(PLCPUEnergySnapshot *)self setCpuEnergyBilledToOthers:[(PLCPUEnergySnapshot *)v9 cpuEnergyBilledToOthers]];
    v13 = PLLogDiscretionaryEnergyMonitor();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [PLCPUEnergySnapshot computeEnergyDiffUntilNow:andAdjustSnapshotToNow:];
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
    [PLCPUEnergySnapshot computeEnergyDiff:];
  }

  v6 = 0.0;
  if ([(PLCPUEnergySnapshot *)self isValid])
  {
    if ([diffCopy isValid])
    {
      v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[PLCPUEnergySnapshot cpuEnergy](self, "cpuEnergy") - objc_msgSend(diffCopy, "cpuEnergy")}];
      [v7 doubleValue];
      v9 = v8;

      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[PLCPUEnergySnapshot cpuEnergyBilledToMe](self, "cpuEnergyBilledToMe") - objc_msgSend(diffCopy, "cpuEnergyBilledToMe")}];
      [v10 doubleValue];
      v12 = v11;

      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[PLCPUEnergySnapshot cpuEnergyBilledToOthers](self, "cpuEnergyBilledToOthers") - objc_msgSend(diffCopy, "cpuEnergyBilledToOthers")}];
      [v13 doubleValue];
      v15 = v14;

      if (v9 >= 0.0 && v12 >= 0.0 && v15 >= 0.0)
      {
        if ((v9 + v12 - v15) / 3600000000.0 >= 0.0)
        {
          v6 = (v9 + v12 - v15) / 3600000000.0;
        }

        else
        {
          v6 = 0.0;
        }
      }
    }
  }

  return v6;
}

- (BOOL)snapshotCPUEnergy:(id)energy
{
  v24 = *MEMORY[0x1E69E9840];
  energyCopy = energy;
  mockData = [(PLCPUEnergySnapshot *)self mockData];
  v6 = [mockData objectForKeyedSubscript:@"CPUCoalitionsMock"];
  v7 = [v6 objectForKeyedSubscript:energyCopy];

  if (!v7)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0];
    v11 = [(PLCPUEnergySnapshot *)self getCoalitionIDForIdentifier:energyCopy];

    if ([v11 unsignedLongLongValue])
    {
      [v11 longLongValue];
      v14 = PLLogDiscretionaryEnergyMonitor();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [PLCPUEnergySnapshot snapshotCPUEnergy:];
      }

      v15 = malloc_type_malloc(0x168uLL, 0x1000040DAE56E47uLL);
      v16 = coalition_info_resource_usage();
      v12 = v16 == 0;
      if (v16)
      {
        if (!v15)
        {
LABEL_14:
          v12 = 0;
          goto LABEL_17;
        }
      }

      else
      {
        [(PLCPUEnergySnapshot *)self setCpuEnergy:v15[11]];
        [(PLCPUEnergySnapshot *)self setCpuEnergyBilledToMe:v15[20]];
        [(PLCPUEnergySnapshot *)self setCpuEnergyBilledToOthers:v15[21]];
      }

      free(v15);
      goto LABEL_17;
    }

    v17 = PLLogDiscretionaryEnergyMonitor();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [PLCPUEnergySnapshot snapshotCPUEnergy:];
    }

    goto LABEL_14;
  }

  v8 = PLLogDiscretionaryEnergyMonitor();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v20 = 138412546;
    v21 = energyCopy;
    v22 = 2112;
    v23 = v7;
    _os_log_impl(&dword_1BACB7000, v8, OS_LOG_TYPE_INFO, "Reading mock coalitions data for identifier=%@, mockDataForIdentifier=%@", &v20, 0x16u);
  }

  v9 = [v7 objectForKeyedSubscript:@"cpuEnergy"];
  -[PLCPUEnergySnapshot setCpuEnergy:](self, "setCpuEnergy:", [v9 longLongValue]);

  v10 = [v7 objectForKeyedSubscript:@"cpuEnergyBilledToMe"];
  -[PLCPUEnergySnapshot setCpuEnergyBilledToMe:](self, "setCpuEnergyBilledToMe:", [v10 longLongValue]);

  v11 = [v7 objectForKeyedSubscript:@"cpuEnergyBilledToOthers"];
  -[PLCPUEnergySnapshot setCpuEnergyBilledToOthers:](self, "setCpuEnergyBilledToOthers:", [v11 longLongValue]);
  v12 = 1;
LABEL_17:

  v18 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)refreshCoalitionIDMapping
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = +[PLCPUEnergySnapshot coalitionIDToCoalitionNameMapping];
  [v0 count];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

- (id)getCoalitionIDForIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0];
  v6 = +[PLCPUEnergySnapshot identifierToCoalitionID];
  v7 = [v6 objectForKeyedSubscript:identifierCopy];

  if (v7)
  {
    v8 = PLLogDiscretionaryEnergyMonitor();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [PLCPUEnergySnapshot getCoalitionIDForIdentifier:];
    }

    v9 = +[PLCPUEnergySnapshot identifierToCoalitionID];
    v10 = [v9 objectForKeyedSubscript:identifierCopy];
  }

  else
  {
    v11 = [(PLCPUEnergySnapshot *)self searchCoalitionsCacheForID:identifierCopy];

    if (![v11 unsignedLongLongValue])
    {
      v12 = PLLogDiscretionaryEnergyMonitor();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v18 = 138412290;
        v19 = identifierCopy;
        _os_log_impl(&dword_1BACB7000, v12, OS_LOG_TYPE_INFO, "coalitionID not found, refreshing coalition mapping and searching again for identifier=%@", &v18, 0xCu);
      }

      [(PLCPUEnergySnapshot *)self refreshCoalitionIDMapping];
      v13 = [(PLCPUEnergySnapshot *)self searchCoalitionsCacheForID:identifierCopy];

      v11 = v13;
    }

    if (![v11 unsignedLongLongValue])
    {
      v14 = PLLogDiscretionaryEnergyMonitor();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [PLCPUEnergySnapshot getCoalitionIDForIdentifier:];
      }
    }

    if ([v11 unsignedLongLongValue])
    {
      v15 = +[PLCPUEnergySnapshot identifierToCoalitionID];
      [v15 setObject:v11 forKeyedSubscript:identifierCopy];
    }

    v5 = v11;
    v10 = v5;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)searchCoalitionsCacheForID:(id)d
{
  dCopy = d;
  v4 = PLLogDiscretionaryEnergyMonitor();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [PLCPUEnergySnapshot searchCoalitionsCacheForID:];
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0];
  v5 = +[PLCPUEnergySnapshot coalitionIDToCoalitionNameMapping];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__PLCPUEnergySnapshot_searchCoalitionsCacheForID___block_invoke;
  v9[3] = &unk_1E7F18690;
  v6 = dCopy;
  v10 = v6;
  v11 = &v12;
  [v5 enumerateKeysAndObjectsUsingBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __50__PLCPUEnergySnapshot_searchCoalitionsCacheForID___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a3;
  v10 = [v9 objectAtIndexedSubscript:0];
  v11 = [v9 objectAtIndexedSubscript:1];

  if ([v10 isEqualToString:&stru_1F38DE2A8])
  {
    if ([v11 length] > 9)
    {
      v12 = [v11 substringFromIndex:10];
    }

    else
    {
      v12 = v11;
    }
  }

  else
  {
    v12 = v10;
  }

  v13 = v12;
  v14 = (a1 + 32);
  if (([v12 isEqualToString:*(a1 + 32)] & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", *v14) & 1) != 0 || objc_msgSend(v11, "isEqualToString:", *v14))
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    if (([v13 isEqualToString:*(a1 + 32)] & 1) == 0)
    {
      v15 = PLLogDiscretionaryEnergyMonitor();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __50__PLCPUEnergySnapshot_searchCoalitionsCacheForID___block_invoke_cold_1(v14);
      }

      v16 = +[PLCPUEnergySnapshot identifierToAccountingName];
      v17 = [v16 objectForKeyedSubscript:*v14];

      if (!v17)
      {
        v18 = +[PLCPUEnergySnapshot identifierToAccountingName];
        [v18 setObject:v13 forKeyedSubscript:*v14];

        v19 = PLLogDiscretionaryEnergyMonitor();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = +[PLCPUEnergySnapshot identifierToAccountingName];
          v22 = 138412290;
          v23 = v20;
          _os_log_impl(&dword_1BACB7000, v19, OS_LOG_TYPE_INFO, "identifierToAccountingName=%@", &v22, 0xCu);
        }
      }
    }

    *a4 = 1;
  }

  v21 = *MEMORY[0x1E69E9840];
}

+ (NSMutableDictionary)identifierToCoalitionID
{
  v2 = _identifierToCoalitionID;
  if (!_identifierToCoalitionID)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = _identifierToCoalitionID;
    _identifierToCoalitionID = v3;

    v2 = _identifierToCoalitionID;
  }

  return v2;
}

+ (void)setIdentifierToCoalitionID:(id)d
{
  if (_identifierToCoalitionID != d)
  {
    _identifierToCoalitionID = [d mutableCopy];

    MEMORY[0x1EEE66BB8]();
  }
}

+ (NSMutableDictionary)coalitionIDToCoalitionNameMapping
{
  v2 = _coalitionIDToCoalitionNameMapping;
  if (!_coalitionIDToCoalitionNameMapping)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = _coalitionIDToCoalitionNameMapping;
    _coalitionIDToCoalitionNameMapping = v3;

    v2 = _coalitionIDToCoalitionNameMapping;
  }

  return v2;
}

+ (void)setCoalitionIDToCoalitionNameMapping:(id)mapping
{
  if (_coalitionIDToCoalitionNameMapping != mapping)
  {
    _coalitionIDToCoalitionNameMapping = [mapping mutableCopy];

    MEMORY[0x1EEE66BB8]();
  }
}

+ (NSMutableDictionary)identifierToAccountingName
{
  v2 = _identifierToAccountingName;
  if (!_identifierToAccountingName)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = _identifierToAccountingName;
    _identifierToAccountingName = v3;

    v2 = _identifierToAccountingName;
  }

  return v2;
}

+ (void)setIdentifierToAccountingName:(id)name
{
  if (_identifierToAccountingName != name)
  {
    _identifierToAccountingName = [name mutableCopy];

    MEMORY[0x1EEE66BB8]();
  }
}

- (void)computeEnergyDiffUntilNow:andAdjustSnapshotToNow:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)computeEnergyDiffUntilNow:andAdjustSnapshotToNow:.cold.2()
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
  OUTLINED_FUNCTION_2(&dword_1BACB7000, v0, v1, "computing energy diff between self=%@ and otherSnapshot=%@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)snapshotCPUEnergy:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)snapshotCPUEnergy:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)getCoalitionIDForIdentifier:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = +[PLCPUEnergySnapshot identifierToCoalitionID];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)getCoalitionIDForIdentifier:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)searchCoalitionsCacheForID:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __50__PLCPUEnergySnapshot_searchCoalitionsCacheForID___block_invoke_cold_1(uint64_t *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_11(&dword_1BACB7000, v2, v3, "identifier received is not equal to accountingIdentifier: identifier=%@, accountingIdentifier=%@");
  v4 = *MEMORY[0x1E69E9840];
}

@end