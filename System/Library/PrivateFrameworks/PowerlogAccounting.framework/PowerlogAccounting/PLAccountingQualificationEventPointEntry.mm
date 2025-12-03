@interface PLAccountingQualificationEventPointEntry
+ (id)entryKey;
+ (void)load;
- (PLAccountingQualificationEventPointEntry)initWithQualificationID:(id)d withChildNodeNames:(id)names withStartDate:(id)date;
@end

@implementation PLAccountingQualificationEventPointEntry

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLAccountingQualificationEventPointEntry;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryKey
{
  if (entryKey_onceToken_2 != -1)
  {
    +[PLAccountingQualificationEventPointEntry entryKey];
  }

  v3 = entryKey_entryKey_2;

  return v3;
}

uint64_t __52__PLAccountingQualificationEventPointEntry_entryKey__block_invoke()
{
  entryKey_entryKey_2 = [MEMORY[0x277D3F128] entryKeyForType:*MEMORY[0x277D3F5E8] andName:*MEMORY[0x277D3F440]];

  return MEMORY[0x2821F96F8]();
}

- (PLAccountingQualificationEventPointEntry)initWithQualificationID:(id)d withChildNodeNames:(id)names withStartDate:(id)date
{
  selfCopy = date;
  if (date)
  {
    namesCopy = names;
    dCopy = d;
    v10 = [PLAccountingRange rangeWithStartDate:selfCopy withEndDate:selfCopy];
    v13.receiver = self;
    v13.super_class = PLAccountingQualificationEventPointEntry;
    v11 = [(PLAccountingQualificationEventEntry *)&v13 initWithQualificationID:dCopy withChildNodeNames:namesCopy withRange:v10];

    self = v11;
    selfCopy = self;
  }

  return selfCopy;
}

@end