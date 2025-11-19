@interface PLAccountingQualificationEventBackwardEntry
+ (id)entryKey;
+ (void)load;
- (PLAccountingQualificationEventBackwardEntry)initWithQualificationID:(id)a3 withChildNodeNames:(id)a4 withEndDate:(id)a5;
@end

@implementation PLAccountingQualificationEventBackwardEntry

+ (id)entryKey
{
  if (entryKey_onceToken_11 != -1)
  {
    +[PLAccountingQualificationEventBackwardEntry entryKey];
  }

  v3 = entryKey_entryKey_11;

  return v3;
}

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLAccountingQualificationEventBackwardEntry;
  objc_msgSendSuper2(&v2, sel_load);
}

uint64_t __55__PLAccountingQualificationEventBackwardEntry_entryKey__block_invoke()
{
  entryKey_entryKey_11 = [MEMORY[0x277D3F128] entryKeyForType:*MEMORY[0x277D3F5C8] andName:*MEMORY[0x277D3F440]];

  return MEMORY[0x2821F96F8]();
}

- (PLAccountingQualificationEventBackwardEntry)initWithQualificationID:(id)a3 withChildNodeNames:(id)a4 withEndDate:(id)a5
{
  v5 = a5;
  if (a5)
  {
    v8 = a4;
    v9 = a3;
    v10 = [PLAccountingRange rangeWithStartDate:0 withEndDate:v5];
    v13.receiver = self;
    v13.super_class = PLAccountingQualificationEventBackwardEntry;
    v11 = [(PLAccountingQualificationEventEntry *)&v13 initWithQualificationID:v9 withChildNodeNames:v8 withRange:v10];

    self = v11;
    v5 = self;
  }

  return v5;
}

@end