@interface PLAccountingQualificationRuleEntry
+ (id)entryKey;
+ (void)load;
- (BOOL)isEqual:(id)equal;
- (PLAccountingQualificationRuleEntry)initWithRootNodeID:(id)d withQualificationID:(id)iD withEntryDate:(id)date;
- (id)description;
- (unint64_t)hash;
@end

@implementation PLAccountingQualificationRuleEntry

+ (void)load
{
  v2.receiver = self;
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

- (PLAccountingQualificationRuleEntry)initWithRootNodeID:(id)d withQualificationID:(id)iD withEntryDate:(id)date
{
  dCopy = d;
  iDCopy = iD;
  dateCopy = date;
  if ([dCopy intValue] < 1 || objc_msgSend(iDCopy, "intValue") < 1)
  {
    selfCopy = 0;
  }

  else
  {
    entryKey = [objc_opt_class() entryKey];
    if (dateCopy)
    {
      v17.receiver = self;
      v17.super_class = PLAccountingQualificationRuleEntry;
      v12 = [(PLEntry *)&v17 initWithEntryKey:entryKey withDate:dateCopy];
    }

    else
    {
      v16.receiver = self;
      v16.super_class = PLAccountingQualificationRuleEntry;
      v12 = [(PLEntry *)&v16 initWithEntryKey:entryKey];
    }

    v14 = v12;

    if (v14)
    {
      [(PLEntry *)v14 setObject:dCopy forKeyedSubscript:*MEMORY[0x277D3F3F8]];
      [(PLEntry *)v14 setObject:iDCopy forKeyedSubscript:*MEMORY[0x277D3F3F0]];
    }

    self = v14;
    selfCopy = self;
  }

  return selfCopy;
}

- (unint64_t)hash
{
  rootNodeID = [(PLAccountingQualificationRuleEntry *)self rootNodeID];
  intValue = [rootNodeID intValue];
  qualificationID = [(PLAccountingQualificationRuleEntry *)self qualificationID];
  v6 = ([qualificationID intValue] + intValue);

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  rootNodeID = [equalCopy rootNodeID];
  rootNodeID2 = [(PLAccountingQualificationRuleEntry *)self rootNodeID];
  if ([rootNodeID isEqual:rootNodeID2])
  {
    qualificationID = [equalCopy qualificationID];
    qualificationID2 = [(PLAccountingQualificationRuleEntry *)self qualificationID];
    v9 = [qualificationID isEqual:qualificationID2];
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
  rootNodeID = [(PLAccountingQualificationRuleEntry *)self rootNodeID];
  qualificationID = [(PLAccountingQualificationRuleEntry *)self qualificationID];
  v6 = [v3 stringWithFormat:@"(rootNodeID=%@, qualificationID=%@)", rootNodeID, qualificationID];

  return v6;
}

@end