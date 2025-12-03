@interface PLEventBackwardBatteryEntry
+ (void)load;
+ (void)populateCellWOMForEntry:(id)entry withRawData:(id)data;
+ (void)populateDODForEntry:(id)entry withRawData:(id)data;
+ (void)populateQmaxForEntry:(id)entry withRawData:(id)data;
+ (void)populatewRaForEntry:(id)entry withRawData:(id)data;
- (id)absoluteLevelWithRawData:(id)data;
- (id)initEntryWithRawData:(id)data;
- (id)levelWithRawData:(id)data;
- (id)rawLevelWithRawData:(id)data;
- (void)dealloc;
- (void)populateAdapterPowerTierWithRawData:(id)data;
- (void)populatePresentDODFromRawData:(id)data;
- (void)populateTLCCounterWithRawData:(id)data;
@end

@implementation PLEventBackwardBatteryEntry

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PLEventBackwardBatteryEntry;
  [(PLEventBackwardBatteryEntry *)&v2 dealloc];
}

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLEventBackwardBatteryEntry;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (void)populateDODForEntry:(id)entry withRawData:(id)data
{
  entryCopy = entry;
  v5 = [data objectForKeyedSubscript:@"BatteryData"];
  v6 = [v5 objectForKeyedSubscript:@"DOD0"];

  if ([v6 count])
  {
    v7 = 0;
    do
    {
      v8 = [v6 objectAtIndexedSubscript:v7];
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"DOD%d", v7];
      [entryCopy setObject:v8 forKeyedSubscript:v9];

      ++v7;
    }

    while ([v6 count] > v7);
  }
}

+ (void)populateQmaxForEntry:(id)entry withRawData:(id)data
{
  entryCopy = entry;
  if (entryCopy && data)
  {
    v6 = [data objectForKeyedSubscript:@"BatteryData"];
    v7 = [v6 objectForKeyedSubscript:@"Qmax"];

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __64__PLEventBackwardBatteryEntry_populateQmaxForEntry_withRawData___block_invoke;
    v8[3] = &unk_278260DE8;
    v9 = entryCopy;
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

+ (void)populateCellWOMForEntry:(id)entry withRawData:(id)data
{
  entryCopy = entry;
  if (entryCopy && data)
  {
    v6 = [data objectForKeyedSubscript:@"BatteryData"];
    v7 = [v6 objectForKeyedSubscript:@"CellWom"];

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __67__PLEventBackwardBatteryEntry_populateCellWOMForEntry_withRawData___block_invoke;
    v8[3] = &unk_278260DE8;
    v9 = entryCopy;
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

+ (void)populatewRaForEntry:(id)entry withRawData:(id)data
{
  v16 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  v6 = [data objectForKeyedSubscript:@"BatteryData"];
  v7 = [v6 objectForKeyedSubscript:@"WeightedRa"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    firstObject = [v7 firstObject];
    [entryCopy setObject:firstObject forKeyedSubscript:@"WeightedRa"];

    if ([v7 count] >= 2)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __63__PLEventBackwardBatteryEntry_populatewRaForEntry_withRawData___block_invoke;
      v12[3] = &unk_278260DE8;
      v13 = entryCopy;
      [v7 enumerateObjectsUsingBlock:v12];
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [entryCopy setObject:v7 forKeyedSubscript:@"WeightedRa"];
    }

    else
    {
      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        className = [objc_opt_class() className];
        *buf = 138412290;
        v15 = className;
        _os_log_error_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_ERROR, "unknown wRa format: %@", buf, 0xCu);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
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

- (id)levelWithRawData:(id)data
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

- (id)rawLevelWithRawData:(id)data
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

- (id)absoluteLevelWithRawData:(id)data
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

- (void)populatePresentDODFromRawData:(id)data
{
  v4 = [data objectForKeyedSubscript:@"BatteryData"];
  v6 = [v4 objectForKeyedSubscript:@"PresentDOD"];

  v5 = [v6 objectAtIndexedSubscript:0];
  [(PLEntry *)self setObject:v5 forKeyedSubscript:@"PresentDOD"];
}

- (void)populateTLCCounterWithRawData:(id)data
{
  v4 = [data objectForKeyedSubscript:@"ChargerData"];
  if (v4)
  {
    v6 = v4;
    v5 = [v4 objectForKeyedSubscript:@"TimeChargingThermallyLimited"];
    [(PLEntry *)self setObject:v5 forKeyedSubscript:@"TimeChargingThermallyLimited"];

    v4 = v6;
  }
}

- (void)populateAdapterPowerTierWithRawData:(id)data
{
  v4 = [data objectForKeyedSubscript:@"AdapterDetails"];
  if (v4)
  {
    v6 = v4;
    v5 = [v4 objectForKeyedSubscript:@"AdapterPowerTier"];
    [(PLEntry *)self setObject:v5 forKeyedSubscript:@"AdapterPowerTier"];

    v4 = v6;
  }
}

- (id)initEntryWithRawData:(id)data
{
  dataCopy = data;
  v5 = +[PLEventBackwardBatteryEntry entryKey];
  v15.receiver = self;
  v15.super_class = PLEventBackwardBatteryEntry;
  v6 = [(PLEntry *)&v15 initWithEntryKey:v5 withRawData:dataCopy];

  if (v6)
  {
    [objc_opt_class() populateQmaxForEntry:v6 withRawData:dataCopy];
    [objc_opt_class() populateDODForEntry:v6 withRawData:dataCopy];
    [objc_opt_class() populateCellVoltageForEntry:v6 withRawData:dataCopy];
    [objc_opt_class() populatewRaForEntry:v6 withRawData:dataCopy];
    [(PLEventBackwardBatteryEntry *)v6 populatePresentDODFromRawData:dataCopy];
    v7 = MEMORY[0x277CCABB0];
    v8 = [dataCopy objectForKeyedSubscript:@"Temperature"];
    [v8 doubleValue];
    v10 = [v7 numberWithDouble:v9 / 100.0];
    [(PLEntry *)v6 setObject:v10 forKeyedSubscript:@"Temperature"];

    v11 = [(PLEventBackwardBatteryEntry *)v6 levelWithRawData:dataCopy];
    [(PLEntry *)v6 setObject:v11 forKeyedSubscript:@"Level"];

    v12 = [(PLEventBackwardBatteryEntry *)v6 rawLevelWithRawData:dataCopy];
    [(PLEntry *)v6 setObject:v12 forKeyedSubscript:@"RawLevel"];

    v13 = [(PLEventBackwardBatteryEntry *)v6 absoluteLevelWithRawData:dataCopy];
    [(PLEntry *)v6 setObject:v13 forKeyedSubscript:@"AbsoluteLevel"];

    [(PLEventBackwardBatteryEntry *)v6 populateTLCCounterWithRawData:dataCopy];
    [(PLEventBackwardBatteryEntry *)v6 populateAdapterPowerTierWithRawData:dataCopy];
  }

  return v6;
}

@end