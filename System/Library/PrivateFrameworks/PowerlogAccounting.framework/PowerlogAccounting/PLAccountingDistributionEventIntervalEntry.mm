@interface PLAccountingDistributionEventIntervalEntry
+ (id)entryKey;
+ (void)load;
- (PLAccountingDistributionEventIntervalEntry)initWithDistributionID:(id)d withChildNodeIDToWeight:(id)weight withStartDate:(id)date withEndDate:(id)endDate;
- (PLAccountingDistributionEventIntervalEntry)initWithDistributionID:(id)d withChildNodeNameToWeight:(id)weight withStartDate:(id)date withEndDate:(id)endDate;
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
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLAccountingDistributionEventIntervalEntry;
  objc_msgSendSuper2(&v2, sel_load);
}

uint64_t __54__PLAccountingDistributionEventIntervalEntry_entryKey__block_invoke()
{
  entryKey_entryKey_12 = [MEMORY[0x277D3F128] entryKeyForType:*MEMORY[0x277D3F5D8] andName:*MEMORY[0x277D3F400]];

  return MEMORY[0x2821F96F8]();
}

- (PLAccountingDistributionEventIntervalEntry)initWithDistributionID:(id)d withChildNodeNameToWeight:(id)weight withStartDate:(id)date withEndDate:(id)endDate
{
  selfCopy = 0;
  if (date && endDate)
  {
    weightCopy = weight;
    dCopy = d;
    v13 = [PLAccountingRange rangeWithStartDate:date withEndDate:endDate];
    v16.receiver = self;
    v16.super_class = PLAccountingDistributionEventIntervalEntry;
    v14 = [(PLAccountingDistributionEventEntry *)&v16 initWithDistributionID:dCopy withChildNodeNameToWeight:weightCopy withRange:v13];

    self = v14;
    selfCopy = self;
  }

  return selfCopy;
}

- (PLAccountingDistributionEventIntervalEntry)initWithDistributionID:(id)d withChildNodeIDToWeight:(id)weight withStartDate:(id)date withEndDate:(id)endDate
{
  selfCopy = 0;
  if (date && endDate)
  {
    weightCopy = weight;
    dCopy = d;
    v13 = [PLAccountingRange rangeWithStartDate:date withEndDate:endDate];
    v16.receiver = self;
    v16.super_class = PLAccountingDistributionEventIntervalEntry;
    v14 = [(PLAccountingDistributionEventEntry *)&v16 initWithDistributionID:dCopy withChildNodeIDToWeight:weightCopy withRange:v13];

    self = v14;
    selfCopy = self;
  }

  return selfCopy;
}

@end