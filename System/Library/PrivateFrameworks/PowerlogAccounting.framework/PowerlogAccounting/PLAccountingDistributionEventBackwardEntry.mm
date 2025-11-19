@interface PLAccountingDistributionEventBackwardEntry
+ (id)entryKey;
+ (void)load;
- (PLAccountingDistributionEventBackwardEntry)initWithDistributionID:(id)a3 withChildNodeNameToWeight:(id)a4 withEndDate:(id)a5;
@end

@implementation PLAccountingDistributionEventBackwardEntry

+ (id)entryKey
{
  if (entryKey_onceToken_0 != -1)
  {
    +[PLAccountingDistributionEventBackwardEntry entryKey];
  }

  v3 = entryKey_entryKey_0;

  return v3;
}

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLAccountingDistributionEventBackwardEntry;
  objc_msgSendSuper2(&v2, sel_load);
}

uint64_t __54__PLAccountingDistributionEventBackwardEntry_entryKey__block_invoke()
{
  entryKey_entryKey_0 = [MEMORY[0x277D3F128] entryKeyForType:*MEMORY[0x277D3F5C8] andName:*MEMORY[0x277D3F400]];

  return MEMORY[0x2821F96F8]();
}

- (PLAccountingDistributionEventBackwardEntry)initWithDistributionID:(id)a3 withChildNodeNameToWeight:(id)a4 withEndDate:(id)a5
{
  v5 = a5;
  if (a5)
  {
    v8 = a4;
    v9 = a3;
    v10 = [PLAccountingRange rangeWithStartDate:0 withEndDate:v5];
    v13.receiver = self;
    v13.super_class = PLAccountingDistributionEventBackwardEntry;
    v11 = [(PLAccountingDistributionEventEntry *)&v13 initWithDistributionID:v9 withChildNodeNameToWeight:v8 withRange:v10];

    self = v11;
    v5 = self;
  }

  return v5;
}

@end