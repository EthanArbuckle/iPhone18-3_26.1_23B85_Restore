@interface PLAccountingQualificationRuleEntry
+ (id)entryKey;
+ (void)load;
- (BOOL)isEqual:(id)a3;
- (PLAccountingQualificationRuleEntry)initWithRootNodeID:(id)a3 withQualificationID:(id)a4 withEntryDate:(id)a5;
- (id)description;
- (unint64_t)hash;
@end

@implementation PLAccountingQualificationRuleEntry

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLAccountingQualificationRuleEntry;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryKey
{
  if (entryKey_onceToken_4 != -1)
  {
    +[PLAccountingQualificationRuleEntry entryKey];
  }

  v3 = entryKey_entryKey_4;

  return v3;
}

uint64_t __46__PLAccountingQualificationRuleEntry_entryKey__block_invoke()
{
  entryKey_entryKey_4 = [MEMORY[0x277D3F128] entryKeyForType:*MEMORY[0x277D3F5E0] andName:*MEMORY[0x277D3F3E8]];

  return MEMORY[0x2821F96F8]();
}

- (PLAccountingQualificationRuleEntry)initWithRootNodeID:(id)a3 withQualificationID:(id)a4 withEntryDate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 intValue] < 1 || objc_msgSend(v9, "intValue") < 1)
  {
    v13 = 0;
  }

  else
  {
    v11 = [objc_opt_class() entryKey];
    if (v10)
    {
      v17.receiver = self;
      v17.super_class = PLAccountingQualificationRuleEntry;
      v12 = [(PLEntry *)&v17 initWithEntryKey:v11 withDate:v10];
    }

    else
    {
      v16.receiver = self;
      v16.super_class = PLAccountingQualificationRuleEntry;
      v12 = [(PLEntry *)&v16 initWithEntryKey:v11];
    }

    v14 = v12;

    if (v14)
    {
      [(PLEntry *)v14 setObject:v8 forKeyedSubscript:*MEMORY[0x277D3F3F8]];
      [(PLEntry *)v14 setObject:v9 forKeyedSubscript:*MEMORY[0x277D3F3F0]];
    }

    self = v14;
    v13 = self;
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [(PLAccountingQualificationRuleEntry *)self rootNodeID];
  v4 = [v3 intValue];
  v5 = [(PLAccountingQualificationRuleEntry *)self qualificationID];
  v6 = ([v5 intValue] + v4);

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [v4 rootNodeID];
  v6 = [(PLAccountingQualificationRuleEntry *)self rootNodeID];
  if ([v5 isEqual:v6])
  {
    v7 = [v4 qualificationID];
    v8 = [(PLAccountingQualificationRuleEntry *)self qualificationID];
    v9 = [v7 isEqual:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(PLAccountingQualificationRuleEntry *)self rootNodeID];
  v5 = [(PLAccountingQualificationRuleEntry *)self qualificationID];
  v6 = [v3 stringWithFormat:@"(rootNodeID=%@, qualificationID=%@)", v4, v5];

  return v6;
}

@end