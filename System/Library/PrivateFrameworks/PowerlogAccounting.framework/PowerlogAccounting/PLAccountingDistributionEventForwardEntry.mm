@interface PLAccountingDistributionEventForwardEntry
+ (id)entryKey;
+ (void)load;
- (PLAccountingDistributionEventForwardEntry)initWithDistributionID:(id)d withChildNodeNameToWeight:(id)weight withStartDate:(id)date;
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
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLAccountingDistributionEventForwardEntry;
  objc_msgSendSuper2(&v2, sel_load);
}

uint64_t __53__PLAccountingDistributionEventForwardEntry_entryKey__block_invoke()
{
  entryKey_entryKey_7 = [MEMORY[0x277D3F128] entryKeyForType:*MEMORY[0x277D3F5D0] andName:*MEMORY[0x277D3F400]];

  return MEMORY[0x2821F96F8]();
}

- (PLAccountingDistributionEventForwardEntry)initWithDistributionID:(id)d withChildNodeNameToWeight:(id)weight withStartDate:(id)date
{
  selfCopy = date;
  if (date)
  {
    weightCopy = weight;
    dCopy = d;
    v10 = [PLAccountingRange rangeWithStartDate:selfCopy withEndDate:0];
    v13.receiver = self;
    v13.super_class = PLAccountingDistributionEventForwardEntry;
    v11 = [(PLAccountingDistributionEventEntry *)&v13 initWithDistributionID:dCopy withChildNodeNameToWeight:weightCopy withRange:v10];

    self = v11;
    selfCopy = self;
  }

  return selfCopy;
}

@end