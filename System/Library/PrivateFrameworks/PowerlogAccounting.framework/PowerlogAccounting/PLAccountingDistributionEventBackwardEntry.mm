@interface PLAccountingDistributionEventBackwardEntry
+ (id)entryKey;
+ (void)load;
- (PLAccountingDistributionEventBackwardEntry)initWithDistributionID:(id)d withChildNodeNameToWeight:(id)weight withEndDate:(id)date;
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
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLAccountingDistributionEventBackwardEntry;
  objc_msgSendSuper2(&v2, sel_load);
}

uint64_t __54__PLAccountingDistributionEventBackwardEntry_entryKey__block_invoke()
{
  entryKey_entryKey_0 = [MEMORY[0x277D3F128] entryKeyForType:*MEMORY[0x277D3F5C8] andName:*MEMORY[0x277D3F400]];

  return MEMORY[0x2821F96F8]();
}

- (PLAccountingDistributionEventBackwardEntry)initWithDistributionID:(id)d withChildNodeNameToWeight:(id)weight withEndDate:(id)date
{
  selfCopy = date;
  if (date)
  {
    weightCopy = weight;
    dCopy = d;
    v10 = [PLAccountingRange rangeWithStartDate:0 withEndDate:selfCopy];
    v13.receiver = self;
    v13.super_class = PLAccountingDistributionEventBackwardEntry;
    v11 = [(PLAccountingDistributionEventEntry *)&v13 initWithDistributionID:dCopy withChildNodeNameToWeight:weightCopy withRange:v10];

    self = v11;
    selfCopy = self;
  }

  return selfCopy;
}

@end