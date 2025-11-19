@interface PLAccountingEnergyEventEntry
+ (id)entryKey;
+ (void)load;
- (PLAccountingEnergyEventEntry)initWithNodeID:(id)a3 withEnergy:(double)a4 withRange:(id)a5 withEntryDate:(id)a6;
- (PLAccountingRange)range;
- (double)energy;
@end

@implementation PLAccountingEnergyEventEntry

- (PLAccountingRange)range
{
  v2 = self;
  objc_sync_enter(v2);
  range = v2->_range;
  if (!range)
  {
    v4 = [(PLEntry *)v2 objectForKeyedSubscript:*MEMORY[0x277D3F3A0]];
    [v4 doubleValue];
    v6 = v5;

    v7 = [(PLEntry *)v2 objectForKeyedSubscript:*MEMORY[0x277D3F360]];
    [v7 doubleValue];
    v9 = v8;

    v10 = [(PLEntry *)v2 entryDate];
    v11 = [v10 dateByAddingTimeInterval:v6 / 1000.0];
    v12 = [(PLEntry *)v2 entryDate];
    v13 = [v12 dateByAddingTimeInterval:v9 / 1000.0];
    v14 = [PLAccountingRange rangeWithStartDate:v11 withEndDate:v13];
    v15 = v2->_range;
    v2->_range = v14;

    range = v2->_range;
  }

  v16 = range;
  objc_sync_exit(v2);

  return v16;
}

- (double)energy
{
  v2 = [(PLEntry *)self objectForKeyedSubscript:*MEMORY[0x277D3F368]];
  [v2 doubleValue];
  v4 = v3 / 1000.0;

  return v4;
}

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLAccountingEnergyEventEntry;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryKey
{
  if (entryKey_onceToken_5 != -1)
  {
    +[PLAccountingEnergyEventEntry entryKey];
  }

  v3 = entryKey_entryKey_5;

  return v3;
}

uint64_t __40__PLAccountingEnergyEventEntry_entryKey__block_invoke()
{
  entryKey_entryKey_5 = [MEMORY[0x277D3F128] entryKeyForType:*MEMORY[0x277D3F5D8] andName:*MEMORY[0x277D3F338]];

  return MEMORY[0x2821F96F8]();
}

- (PLAccountingEnergyEventEntry)initWithNodeID:(id)a3 withEnergy:(double)a4 withRange:(id)a5 withEntryDate:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [v10 intValue];
  v14 = 0;
  if (v11 && v13 >= 1)
  {
    v15 = [objc_opt_class() entryKey];
    if (v12)
    {
      v31.receiver = self;
      v31.super_class = PLAccountingEnergyEventEntry;
      v16 = [(PLEntry *)&v31 initWithEntryKey:v15 withDate:v12];
    }

    else
    {
      v30.receiver = self;
      v30.super_class = PLAccountingEnergyEventEntry;
      v16 = [(PLEntry *)&v30 initWithEntryKey:v15];
    }

    p_isa = &v16->super.super.isa;

    if (p_isa)
    {
      objc_storeStrong(p_isa + 8, a5);
      [p_isa setObject:v10 forKeyedSubscript:*MEMORY[0x277D3F370]];
      v18 = [MEMORY[0x277CCABB0] numberWithLong:llround(a4 * 1000.0)];
      [p_isa setObject:v18 forKeyedSubscript:*MEMORY[0x277D3F368]];

      v19 = MEMORY[0x277CCABB0];
      v20 = [v11 startDate];
      v21 = [p_isa entryDate];
      [v20 timeIntervalSinceDate:v21];
      v23 = [v19 numberWithDouble:v22 * 1000.0];
      [p_isa setObject:v23 forKeyedSubscript:*MEMORY[0x277D3F3A0]];

      v24 = MEMORY[0x277CCABB0];
      v25 = [v11 endDate];
      v26 = [p_isa entryDate];
      [v25 timeIntervalSinceDate:v26];
      v28 = [v24 numberWithDouble:v27 * 1000.0];
      [p_isa setObject:v28 forKeyedSubscript:*MEMORY[0x277D3F360]];
    }

    self = p_isa;
    v14 = self;
  }

  return v14;
}

@end