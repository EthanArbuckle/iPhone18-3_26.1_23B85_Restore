@interface PLAccountingQualificationEventForwardEntry
+ (id)entryKey;
+ (void)load;
- (PLAccountingQualificationEventForwardEntry)initWithQualificationID:(id)a3 withChildNodeNames:(id)a4 withStartDate:(id)a5;
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
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLAccountingQualificationEventForwardEntry;
  objc_msgSendSuper2(&v2, sel_load);
}

uint64_t __54__PLAccountingQualificationEventForwardEntry_entryKey__block_invoke()
{
  entryKey_entryKey_9 = [MEMORY[0x277D3F128] entryKeyForType:*MEMORY[0x277D3F5D0] andName:*MEMORY[0x277D3F440]];

  return MEMORY[0x2821F96F8]();
}

- (PLAccountingQualificationEventForwardEntry)initWithQualificationID:(id)a3 withChildNodeNames:(id)a4 withStartDate:(id)a5
{
  v5 = a5;
  if (a5)
  {
    v8 = a4;
    v9 = a3;
    v10 = [PLAccountingRange rangeWithStartDate:v5 withEndDate:0];
    v13.receiver = self;
    v13.super_class = PLAccountingQualificationEventForwardEntry;
    v11 = [(PLAccountingQualificationEventEntry *)&v13 initWithQualificationID:v9 withChildNodeNames:v8 withRange:v10];

    self = v11;
    v5 = self;
  }

  return v5;
}

@end