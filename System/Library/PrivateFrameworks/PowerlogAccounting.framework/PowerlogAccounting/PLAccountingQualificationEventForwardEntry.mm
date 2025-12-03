@interface PLAccountingQualificationEventForwardEntry
+ (id)entryKey;
+ (void)load;
- (PLAccountingQualificationEventForwardEntry)initWithQualificationID:(id)d withChildNodeNames:(id)names withStartDate:(id)date;
@end

@implementation PLAccountingQualificationEventForwardEntry

+ (id)entryKey
{
  if (entryKey_onceToken_9 != -1)
  {
    +[PLAccountingQualificationEventForwardEntry entryKey];
  }

  v3 = entryKey_entryKey_9;

  return v3;
}

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLAccountingQualificationEventForwardEntry;
  objc_msgSendSuper2(&v2, sel_load);
}

uint64_t __54__PLAccountingQualificationEventForwardEntry_entryKey__block_invoke()
{
  entryKey_entryKey_9 = [MEMORY[0x277D3F128] entryKeyForType:*MEMORY[0x277D3F5D0] andName:*MEMORY[0x277D3F440]];

  return MEMORY[0x2821F96F8]();
}

- (PLAccountingQualificationEventForwardEntry)initWithQualificationID:(id)d withChildNodeNames:(id)names withStartDate:(id)date
{
  selfCopy = date;
  if (date)
  {
    namesCopy = names;
    dCopy = d;
    v10 = [PLAccountingRange rangeWithStartDate:selfCopy withEndDate:0];
    v13.receiver = self;
    v13.super_class = PLAccountingQualificationEventForwardEntry;
    v11 = [(PLAccountingQualificationEventEntry *)&v13 initWithQualificationID:dCopy withChildNodeNames:namesCopy withRange:v10];

    self = v11;
    selfCopy = self;
  }

  return selfCopy;
}

@end