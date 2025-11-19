@interface PLAccountingQualificationEventIntervalEntry
+ (id)entryKey;
+ (void)load;
- (PLAccountingQualificationEventIntervalEntry)initWithQualificationID:(id)a3 withChildNodeIDs:(id)a4 withStartDate:(id)a5 withEndDate:(id)a6;
- (PLAccountingQualificationEventIntervalEntry)initWithQualificationID:(id)a3 withChildNodeNames:(id)a4 withStartDate:(id)a5 withEndDate:(id)a6;
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
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLAccountingQualificationEventIntervalEntry;
  objc_msgSendSuper2(&v2, sel_load);
}

uint64_t __55__PLAccountingQualificationEventIntervalEntry_entryKey__block_invoke()
{
  entryKey_entryKey_6 = [MEMORY[0x277D3F128] entryKeyForType:*MEMORY[0x277D3F5D8] andName:*MEMORY[0x277D3F440]];

  return MEMORY[0x2821F96F8]();
}

- (PLAccountingQualificationEventIntervalEntry)initWithQualificationID:(id)a3 withChildNodeNames:(id)a4 withStartDate:(id)a5 withEndDate:(id)a6
{
  v7 = 0;
  if (a5 && a6)
  {
    v11 = a4;
    v12 = a3;
    v13 = [PLAccountingRange rangeWithStartDate:a5 withEndDate:a6];
    v16.receiver = self;
    v16.super_class = PLAccountingQualificationEventIntervalEntry;
    v14 = [(PLAccountingQualificationEventEntry *)&v16 initWithQualificationID:v12 withChildNodeNames:v11 withRange:v13];

    self = v14;
    v7 = self;
  }

  return v7;
}

- (PLAccountingQualificationEventIntervalEntry)initWithQualificationID:(id)a3 withChildNodeIDs:(id)a4 withStartDate:(id)a5 withEndDate:(id)a6
{
  v7 = 0;
  if (a5 && a6)
  {
    v11 = a4;
    v12 = a3;
    v13 = [PLAccountingRange rangeWithStartDate:a5 withEndDate:a6];
    v16.receiver = self;
    v16.super_class = PLAccountingQualificationEventIntervalEntry;
    v14 = [(PLAccountingQualificationEventEntry *)&v16 initWithQualificationID:v12 withChildNodeIDs:v11 withRange:v13];

    self = v14;
    v7 = self;
  }

  return v7;
}

@end