@interface PLEventBackwardBatteryEntry
+ (void)load;
+ (void)populateCellWOMForEntry:(id)a3 withRawData:(id)a4;
+ (void)populateDODForEntry:(id)a3 withRawData:(id)a4;
+ (void)populateQmaxForEntry:(id)a3 withRawData:(id)a4;
+ (void)populatewRaForEntry:(id)a3 withRawData:(id)a4;
- (id)absoluteLevelWithRawData:(id)a3;
- (id)initEntryWithRawData:(id)a3;
- (id)levelWithRawData:(id)a3;
- (id)rawLevelWithRawData:(id)a3;
- (void)dealloc;
- (void)populateAdapterPowerTierWithRawData:(id)a3;
- (void)populatePresentDODFromRawData:(id)a3;
- (void)populateTLCCounterWithRawData:(id)a3;
@end

@implementation PLEventBackwardBatteryEntry

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLEventBackwardBatteryEntry;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (void)populateDODForEntry:(id)a3 withRawData:(id)a4
{
  v10 = a3;
  v5 = [a4 objectForKeyedSubscript:@"BatteryData"];
  v6 = [v5 objectForKeyedSubscript:@"DOD0"];

  if ([v6 count])
  {
    v7 = 0;
    do
    {
      v8 = [v6 objectAtIndexedSubscript:v7];
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"DOD%d", v7];
      [v10 setObject:v8 forKeyedSubscript:v9];

      ++v7;
    }

    while ([v6 count] > v7);
  }
}

+ (void)populateQmaxForEntry:(id)a3 withRawData:(id)a4
{
  v5 = a3;
  if (v5 && a4)
  {
    v6 = [a4 objectForKeyedSubscript:@"BatteryData"];
    v7 = [v6 objectForKeyedSubscript:@"Qmax"];

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __64__PLEventBackwardBatteryEntry_populateQmaxForEntry_withRawData___block_invoke;
    v8[3] = &unk_279A5E4A8;
    v9 = v5;
    [v7 enumerateObjectsUsingBlock:v8];
  }
}

void __64__PLEventBackwardBatteryEntry_populateQmaxForEntry_withRawData___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a2;
  v7 = [v5 stringWithFormat:@"QmaxCell%d", a3];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
}

+ (void)populateCellWOMForEntry:(id)a3 withRawData:(id)a4
{
  v5 = a3;
  if (v5 && a4)
  {
    v6 = [a4 objectForKeyedSubscript:@"BatteryData"];
    v7 = [v6 objectForKeyedSubscript:@"CellWom"];

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __67__PLEventBackwardBatteryEntry_populateCellWOMForEntry_withRawData___block_invoke;
    v8[3] = &unk_279A5E4A8;
    v9 = v5;
    [v7 enumerateObjectsUsingBlock:v8];
  }
}

void __67__PLEventBackwardBatteryEntry_populateCellWOMForEntry_withRawData___block_invoke(uint64_t a1, void *a2, int a3)
{
  v4 = MEMORY[0x277CCACA8];
  v5 = (a3 + 1);
  v6 = a2;
  v7 = [v4 stringWithFormat:@"Wom_%d", v5];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
}

+ (void)populatewRaForEntry:(id)a3 withRawData:(id)a4
{
  v5 = a3;
  v6 = [a4 objectForKeyedSubscript:@"BatteryData"];
  v7 = [v6 objectForKeyedSubscript:@"WeightedRa"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 firstObject];
    [v5 setObject:v8 forKeyedSubscript:@"WeightedRa"];

    if ([v7 count] >= 2)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __63__PLEventBackwardBatteryEntry_populatewRaForEntry_withRawData___block_invoke;
      v10[3] = &unk_279A5E4A8;
      v11 = v5;
      [v7 enumerateObjectsUsingBlock:v10];
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v5 setObject:v7 forKeyedSubscript:@"WeightedRa"];
    }

    else
    {
      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [PLEventBackwardBatteryEntry populatewRaForEntry:v7 withRawData:v9];
      }
    }
  }
}

void __63__PLEventBackwardBatteryEntry_populatewRaForEntry_withRawData___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = a2;
    v7 = [v5 stringWithFormat:@"WeightedRaCell%d", a3];
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
  }
}

- (id)levelWithRawData:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  v5 = [(PLEntry *)self objectForKeyedSubscript:@"CurrentCapacity"];
  [v5 doubleValue];
  v7 = v6 * 100.0;
  v8 = [(PLEntry *)self objectForKeyedSubscript:@"MaxCapacity"];
  [v8 doubleValue];
  v10 = [v4 numberWithDouble:v7 / v9];

  return v10;
}

- (id)rawLevelWithRawData:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  v5 = [(PLEntry *)self objectForKeyedSubscript:@"AppleRawCurrentCapacity"];
  [v5 doubleValue];
  v7 = v6 * 100.0;
  v8 = [(PLEntry *)self objectForKeyedSubscript:@"AppleRawMaxCapacity"];
  [v8 doubleValue];
  v10 = [v4 numberWithDouble:v7 / v9];

  return v10;
}

- (id)absoluteLevelWithRawData:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  v5 = [(PLEntry *)self objectForKeyedSubscript:@"AbsoluteCapacity"];
  [v5 doubleValue];
  v7 = v6 * 100.0;
  v8 = [(PLEntry *)self objectForKeyedSubscript:@"QmaxCell0"];
  [v8 doubleValue];
  v10 = [v4 numberWithDouble:v7 / v9];

  return v10;
}

- (void)populatePresentDODFromRawData:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"BatteryData"];
  v6 = [v4 objectForKeyedSubscript:@"PresentDOD"];

  v5 = [v6 objectAtIndexedSubscript:0];
  [(PLEntry *)self setObject:v5 forKeyedSubscript:@"PresentDOD"];
}

- (void)populateTLCCounterWithRawData:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"ChargerData"];
  if (v4)
  {
    v6 = v4;
    v5 = [v4 objectForKeyedSubscript:@"TimeChargingThermallyLimited"];
    [(PLEntry *)self setObject:v5 forKeyedSubscript:@"TimeChargingThermallyLimited"];

    v4 = v6;
  }
}

- (void)populateAdapterPowerTierWithRawData:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"AdapterDetails"];
  if (v4)
  {
    v6 = v4;
    v5 = [v4 objectForKeyedSubscript:@"AdapterPowerTier"];
    [(PLEntry *)self setObject:v5 forKeyedSubscript:@"AdapterPowerTier"];

    v4 = v6;
  }
}

- (id)initEntryWithRawData:(id)a3
{
  v4 = a3;
  v5 = +[PLEventBackwardBatteryEntry entryKey];
  v15.receiver = self;
  v15.super_class = PLEventBackwardBatteryEntry;
  v6 = [(PLEntry *)&v15 initWithEntryKey:v5 withRawData:v4];

  if (v6)
  {
    [objc_opt_class() populateQmaxForEntry:v6 withRawData:v4];
    [objc_opt_class() populateDODForEntry:v6 withRawData:v4];
    [objc_opt_class() populateCellVoltageForEntry:v6 withRawData:v4];
    [objc_opt_class() populatewRaForEntry:v6 withRawData:v4];
    [(PLEventBackwardBatteryEntry *)v6 populatePresentDODFromRawData:v4];
    v7 = MEMORY[0x277CCABB0];
    v8 = [v4 objectForKeyedSubscript:@"Temperature"];
    [v8 doubleValue];
    v10 = [v7 numberWithDouble:v9 / 100.0];
    [(PLEntry *)v6 setObject:v10 forKeyedSubscript:@"Temperature"];

    v11 = [(PLEventBackwardBatteryEntry *)v6 levelWithRawData:v4];
    [(PLEntry *)v6 setObject:v11 forKeyedSubscript:@"Level"];

    v12 = [(PLEventBackwardBatteryEntry *)v6 rawLevelWithRawData:v4];
    [(PLEntry *)v6 setObject:v12 forKeyedSubscript:@"RawLevel"];

    v13 = [(PLEventBackwardBatteryEntry *)v6 absoluteLevelWithRawData:v4];
    [(PLEntry *)v6 setObject:v13 forKeyedSubscript:@"AbsoluteLevel"];

    [(PLEventBackwardBatteryEntry *)v6 populateTLCCounterWithRawData:v4];
    [(PLEventBackwardBatteryEntry *)v6 populateAdapterPowerTierWithRawData:v4];
  }

  return v6;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PLEventBackwardBatteryEntry;
  [(PLEventBackwardBatteryEntry *)&v2 dealloc];
}

+ (void)populatewRaForEntry:(uint64_t)a1 withRawData:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [objc_opt_class() className];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_25EE51000, a2, OS_LOG_TYPE_ERROR, "unknown wRa format: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end