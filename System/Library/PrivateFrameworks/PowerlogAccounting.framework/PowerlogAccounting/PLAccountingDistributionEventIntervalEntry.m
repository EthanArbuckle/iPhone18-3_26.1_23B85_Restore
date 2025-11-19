@interface PLAccountingDistributionEventIntervalEntry
+ (id)entryKey;
+ (void)load;
- (PLAccountingDistributionEventIntervalEntry)initWithDistributionID:(id)a3 withChildNodeIDToWeight:(id)a4 withStartDate:(id)a5 withEndDate:(id)a6;
- (PLAccountingDistributionEventIntervalEntry)initWithDistributionID:(id)a3 withChildNodeNameToWeight:(id)a4 withStartDate:(id)a5 withEndDate:(id)a6;
@end

@implementation PLAccountingDistributionEventIntervalEntry

+ (id)entryKey
{
  if (entryKey_onceToken_12 != -1)
  {
    +[PLAccountingDistributionEventIntervalEntry entryKey];
  }

  v3 = entryKey_entryKey_12;

  return v3;
}

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLAccountingDistributionEventIntervalEntry;
  objc_msgSendSuper2(&v2, sel_load);
}

uint64_t __54__PLAccountingDistributionEventIntervalEntry_entryKey__block_invoke()
{
  entryKey_entryKey_12 = [MEMORY[0x277D3F128] entryKeyForType:*MEMORY[0x277D3F5D8] andName:*MEMORY[0x277D3F400]];

  return MEMORY[0x2821F96F8]();
}

- (PLAccountingDistributionEventIntervalEntry)initWithDistributionID:(id)a3 withChildNodeNameToWeight:(id)a4 withStartDate:(id)a5 withEndDate:(id)a6
{
  v7 = 0;
  if (a5 && a6)
  {
    v11 = a4;
    v12 = a3;
    v13 = [PLAccountingRange rangeWithStartDate:a5 withEndDate:a6];
    v16.receiver = self;
    v16.super_class = PLAccountingDistributionEventIntervalEntry;
    v14 = [(PLAccountingDistributionEventEntry *)&v16 initWithDistributionID:v12 withChildNodeNameToWeight:v11 withRange:v13];

    self = v14;
    v7 = self;
  }

  return v7;
}

- (PLAccountingDistributionEventIntervalEntry)initWithDistributionID:(id)a3 withChildNodeIDToWeight:(id)a4 withStartDate:(id)a5 withEndDate:(id)a6
{
  v7 = 0;
  if (a5 && a6)
  {
    v11 = a4;
    v12 = a3;
    v13 = [PLAccountingRange rangeWithStartDate:a5 withEndDate:a6];
    v16.receiver = self;
    v16.super_class = PLAccountingDistributionEventIntervalEntry;
    v14 = [(PLAccountingDistributionEventEntry *)&v16 initWithDistributionID:v12 withChildNodeIDToWeight:v11 withRange:v13];

    self = v14;
    v7 = self;
  }

  return v7;
}

@end