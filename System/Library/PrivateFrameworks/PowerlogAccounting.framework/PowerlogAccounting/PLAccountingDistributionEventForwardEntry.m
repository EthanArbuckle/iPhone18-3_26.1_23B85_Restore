@interface PLAccountingDistributionEventForwardEntry
+ (id)entryKey;
+ (void)load;
- (PLAccountingDistributionEventForwardEntry)initWithDistributionID:(id)a3 withChildNodeNameToWeight:(id)a4 withStartDate:(id)a5;
@end

@implementation PLAccountingDistributionEventForwardEntry

+ (id)entryKey
{
  if (entryKey_onceToken_7 != -1)
  {
    +[PLAccountingDistributionEventForwardEntry entryKey];
  }

  v3 = entryKey_entryKey_7;

  return v3;
}

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLAccountingDistributionEventForwardEntry;
  objc_msgSendSuper2(&v2, sel_load);
}

uint64_t __53__PLAccountingDistributionEventForwardEntry_entryKey__block_invoke()
{
  entryKey_entryKey_7 = [MEMORY[0x277D3F128] entryKeyForType:*MEMORY[0x277D3F5D0] andName:*MEMORY[0x277D3F400]];

  return MEMORY[0x2821F96F8]();
}

- (PLAccountingDistributionEventForwardEntry)initWithDistributionID:(id)a3 withChildNodeNameToWeight:(id)a4 withStartDate:(id)a5
{
  v5 = a5;
  if (a5)
  {
    v8 = a4;
    v9 = a3;
    v10 = [PLAccountingRange rangeWithStartDate:v5 withEndDate:0];
    v13.receiver = self;
    v13.super_class = PLAccountingDistributionEventForwardEntry;
    v11 = [(PLAccountingDistributionEventEntry *)&v13 initWithDistributionID:v9 withChildNodeNameToWeight:v8 withRange:v10];

    self = v11;
    v5 = self;
  }

  return v5;
}

@end