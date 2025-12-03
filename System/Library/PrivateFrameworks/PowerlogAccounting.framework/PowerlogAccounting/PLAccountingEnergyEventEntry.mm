@interface PLAccountingEnergyEventEntry
+ (id)entryKey;
+ (void)load;
- (PLAccountingEnergyEventEntry)initWithNodeID:(id)d withEnergy:(double)energy withRange:(id)range withEntryDate:(id)date;
- (PLAccountingRange)range;
- (double)energy;
@end

@implementation PLAccountingEnergyEventEntry

- (PLAccountingRange)range
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  range = selfCopy->_range;
  if (!range)
  {
    v4 = [(PLEntry *)selfCopy objectForKeyedSubscript:*MEMORY[0x277D3F3A0]];
    [v4 doubleValue];
    v6 = v5;

    v7 = [(PLEntry *)selfCopy objectForKeyedSubscript:*MEMORY[0x277D3F360]];
    [v7 doubleValue];
    v9 = v8;

    entryDate = [(PLEntry *)selfCopy entryDate];
    v11 = [entryDate dateByAddingTimeInterval:v6 / 1000.0];
    entryDate2 = [(PLEntry *)selfCopy entryDate];
    v13 = [entryDate2 dateByAddingTimeInterval:v9 / 1000.0];
    v14 = [PLAccountingRange rangeWithStartDate:v11 withEndDate:v13];
    v15 = selfCopy->_range;
    selfCopy->_range = v14;

    range = selfCopy->_range;
  }

  v16 = range;
  objc_sync_exit(selfCopy);

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
  v2.receiver = self;
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

- (PLAccountingEnergyEventEntry)initWithNodeID:(id)d withEnergy:(double)energy withRange:(id)range withEntryDate:(id)date
{
  dCopy = d;
  rangeCopy = range;
  dateCopy = date;
  intValue = [dCopy intValue];
  selfCopy = 0;
  if (rangeCopy && intValue >= 1)
  {
    entryKey = [objc_opt_class() entryKey];
    if (dateCopy)
    {
      v31.receiver = self;
      v31.super_class = PLAccountingEnergyEventEntry;
      v16 = [(PLEntry *)&v31 initWithEntryKey:entryKey withDate:dateCopy];
    }

    else
    {
      v30.receiver = self;
      v30.super_class = PLAccountingEnergyEventEntry;
      v16 = [(PLEntry *)&v30 initWithEntryKey:entryKey];
    }

    p_isa = &v16->super.super.isa;

    if (p_isa)
    {
      objc_storeStrong(p_isa + 8, range);
      [p_isa setObject:dCopy forKeyedSubscript:*MEMORY[0x277D3F370]];
      v18 = [MEMORY[0x277CCABB0] numberWithLong:llround(energy * 1000.0)];
      [p_isa setObject:v18 forKeyedSubscript:*MEMORY[0x277D3F368]];

      v19 = MEMORY[0x277CCABB0];
      startDate = [rangeCopy startDate];
      entryDate = [p_isa entryDate];
      [startDate timeIntervalSinceDate:entryDate];
      v23 = [v19 numberWithDouble:v22 * 1000.0];
      [p_isa setObject:v23 forKeyedSubscript:*MEMORY[0x277D3F3A0]];

      v24 = MEMORY[0x277CCABB0];
      endDate = [rangeCopy endDate];
      entryDate2 = [p_isa entryDate];
      [endDate timeIntervalSinceDate:entryDate2];
      v28 = [v24 numberWithDouble:v27 * 1000.0];
      [p_isa setObject:v28 forKeyedSubscript:*MEMORY[0x277D3F360]];
    }

    self = p_isa;
    selfCopy = self;
  }

  return selfCopy;
}

@end