@interface PLAccountingQualificationEventPointEntry
+ (id)entryKey;
+ (void)load;
- (PLAccountingQualificationEventPointEntry)initWithQualificationID:(id)a3 withChildNodeNames:(id)a4 withStartDate:(id)a5;
@end

@implementation PLAccountingQualificationEventPointEntry

+ (void)load
{
  v2.receiver = a1;
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

- (PLAccountingQualificationEventPointEntry)initWithQualificationID:(id)a3 withChildNodeNames:(id)a4 withStartDate:(id)a5
{
  v5 = a5;
  if (a5)
  {
    v8 = a4;
    v9 = a3;
    v10 = [PLAccountingRange rangeWithStartDate:v5 withEndDate:v5];
    v13.receiver = self;
    v13.super_class = PLAccountingQualificationEventPointEntry;
    v11 = [(PLAccountingQualificationEventEntry *)&v13 initWithQualificationID:v9 withChildNodeNames:v8 withRange:v10];

    self = v11;
    v5 = self;
  }

  return v5;
}

@end