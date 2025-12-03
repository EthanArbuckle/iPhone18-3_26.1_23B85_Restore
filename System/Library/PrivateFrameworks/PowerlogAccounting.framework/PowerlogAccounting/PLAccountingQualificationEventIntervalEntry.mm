@interface PLAccountingQualificationEventIntervalEntry
+ (id)entryKey;
+ (void)load;
- (PLAccountingQualificationEventIntervalEntry)initWithQualificationID:(id)d withChildNodeIDs:(id)ds withStartDate:(id)date withEndDate:(id)endDate;
- (PLAccountingQualificationEventIntervalEntry)initWithQualificationID:(id)d withChildNodeNames:(id)names withStartDate:(id)date withEndDate:(id)endDate;
@end

@implementation PLAccountingQualificationEventIntervalEntry

+ (id)entryKey
{
  if (entryKey_onceToken_6 != -1)
  {
    +[PLAccountingQualificationEventIntervalEntry entryKey];
  }

  v3 = entryKey_entryKey_6;

  return v3;
}

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLAccountingQualificationEventIntervalEntry;
  objc_msgSendSuper2(&v2, sel_load);
}

uint64_t __55__PLAccountingQualificationEventIntervalEntry_entryKey__block_invoke()
{
  entryKey_entryKey_6 = [MEMORY[0x277D3F128] entryKeyForType:*MEMORY[0x277D3F5D8] andName:*MEMORY[0x277D3F440]];

  return MEMORY[0x2821F96F8]();
}

- (PLAccountingQualificationEventIntervalEntry)initWithQualificationID:(id)d withChildNodeNames:(id)names withStartDate:(id)date withEndDate:(id)endDate
{
  selfCopy = 0;
  if (date && endDate)
  {
    namesCopy = names;
    dCopy = d;
    v13 = [PLAccountingRange rangeWithStartDate:date withEndDate:endDate];
    v16.receiver = self;
    v16.super_class = PLAccountingQualificationEventIntervalEntry;
    v14 = [(PLAccountingQualificationEventEntry *)&v16 initWithQualificationID:dCopy withChildNodeNames:namesCopy withRange:v13];

    self = v14;
    selfCopy = self;
  }

  return selfCopy;
}

- (PLAccountingQualificationEventIntervalEntry)initWithQualificationID:(id)d withChildNodeIDs:(id)ds withStartDate:(id)date withEndDate:(id)endDate
{
  selfCopy = 0;
  if (date && endDate)
  {
    dsCopy = ds;
    dCopy = d;
    v13 = [PLAccountingRange rangeWithStartDate:date withEndDate:endDate];
    v16.receiver = self;
    v16.super_class = PLAccountingQualificationEventIntervalEntry;
    v14 = [(PLAccountingQualificationEventEntry *)&v16 initWithQualificationID:dCopy withChildNodeIDs:dsCopy withRange:v13];

    self = v14;
    selfCopy = self;
  }

  return selfCopy;
}

@end