@interface PLAccountingDistributionEventPointEntry
+ (id)entryKey;
+ (void)load;
- (PLAccountingDistributionEventPointEntry)initWithDistributionID:(id)d withChildNodeNameToWeight:(id)weight withStartDate:(id)date;
@end

@implementation PLAccountingDistributionEventPointEntry

+ (id)entryKey
{
  if (entryKey_onceToken_8 != -1)
  {
    +[PLAccountingDistributionEventPointEntry entryKey];
  }

  v3 = entryKey_entryKey_8;

  return v3;
}

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLAccountingDistributionEventPointEntry;
  objc_msgSendSuper2(&v2, sel_load);
}

uint64_t __51__PLAccountingDistributionEventPointEntry_entryKey__block_invoke()
{
  entryKey_entryKey_8 = [MEMORY[0x277D3F128] entryKeyForType:*MEMORY[0x277D3F5E8] andName:*MEMORY[0x277D3F400]];

  return MEMORY[0x2821F96F8]();
}

- (PLAccountingDistributionEventPointEntry)initWithDistributionID:(id)d withChildNodeNameToWeight:(id)weight withStartDate:(id)date
{
  selfCopy = date;
  if (date)
  {
    weightCopy = weight;
    dCopy = d;
    v10 = [PLAccountingRange rangeWithStartDate:selfCopy withEndDate:selfCopy];
    v13.receiver = self;
    v13.super_class = PLAccountingDistributionEventPointEntry;
    v11 = [(PLAccountingDistributionEventEntry *)&v13 initWithDistributionID:dCopy withChildNodeNameToWeight:weightCopy withRange:v10];

    self = v11;
    selfCopy = self;
  }

  return selfCopy;
}

@end