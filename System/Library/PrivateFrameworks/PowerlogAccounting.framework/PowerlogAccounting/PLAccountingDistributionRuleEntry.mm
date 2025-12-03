@interface PLAccountingDistributionRuleEntry
+ (id)entryKey;
+ (void)load;
- (BOOL)isEqual:(id)equal;
- (PLAccountingDistributionRuleEntry)initWithNodeID:(id)d withRootNodeID:(id)iD withDistributionID:(id)distributionID withEntryDate:(id)date;
- (id)description;
- (unint64_t)hash;
@end

@implementation PLAccountingDistributionRuleEntry

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLAccountingDistributionRuleEntry;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryKey
{
  if (entryKey_onceToken_10 != -1)
  {
    +[PLAccountingDistributionRuleEntry entryKey];
  }

  v3 = entryKey_entryKey_10;

  return v3;
}

uint64_t __45__PLAccountingDistributionRuleEntry_entryKey__block_invoke()
{
  entryKey_entryKey_10 = [MEMORY[0x277D3F128] entryKeyForType:*MEMORY[0x277D3F5E0] andName:*MEMORY[0x277D3F3B0]];

  return MEMORY[0x2821F96F8]();
}

- (PLAccountingDistributionRuleEntry)initWithNodeID:(id)d withRootNodeID:(id)iD withDistributionID:(id)distributionID withEntryDate:(id)date
{
  dCopy = d;
  iDCopy = iD;
  distributionIDCopy = distributionID;
  dateCopy = date;
  if ([dCopy intValue] < 1 || objc_msgSend(iDCopy, "intValue") < 1 || objc_msgSend(distributionIDCopy, "intValue") < 1)
  {
    selfCopy = 0;
  }

  else
  {
    entryKey = [objc_opt_class() entryKey];
    if (dateCopy)
    {
      v20.receiver = self;
      v20.super_class = PLAccountingDistributionRuleEntry;
      v15 = [(PLEntry *)&v20 initWithEntryKey:entryKey withDate:dateCopy];
    }

    else
    {
      v19.receiver = self;
      v19.super_class = PLAccountingDistributionRuleEntry;
      v15 = [(PLEntry *)&v19 initWithEntryKey:entryKey];
    }

    v17 = v15;

    if (v17)
    {
      [(PLEntry *)v17 setObject:dCopy forKeyedSubscript:*MEMORY[0x277D3F3C0]];
      [(PLEntry *)v17 setObject:iDCopy forKeyedSubscript:*MEMORY[0x277D3F3C8]];
      [(PLEntry *)v17 setObject:distributionIDCopy forKeyedSubscript:*MEMORY[0x277D3F3B8]];
    }

    self = v17;
    selfCopy = self;
  }

  return selfCopy;
}

- (unint64_t)hash
{
  nodeID = [(PLAccountingDistributionRuleEntry *)self nodeID];
  intValue = [nodeID intValue];
  rootNodeID = [(PLAccountingDistributionRuleEntry *)self rootNodeID];
  v6 = [rootNodeID intValue] + intValue;
  distributionID = [(PLAccountingDistributionRuleEntry *)self distributionID];
  v8 = (v6 + [distributionID intValue]);

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  nodeID = [equalCopy nodeID];
  nodeID2 = [(PLAccountingDistributionRuleEntry *)self nodeID];
  if ([nodeID isEqual:nodeID2])
  {
    rootNodeID = [equalCopy rootNodeID];
    rootNodeID2 = [(PLAccountingDistributionRuleEntry *)self rootNodeID];
    if ([rootNodeID isEqual:rootNodeID2])
    {
      distributionID = [equalCopy distributionID];
      distributionID2 = [(PLAccountingDistributionRuleEntry *)self distributionID];
      v11 = [distributionID isEqual:distributionID2];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  nodeID = [(PLAccountingDistributionRuleEntry *)self nodeID];
  rootNodeID = [(PLAccountingDistributionRuleEntry *)self rootNodeID];
  distributionID = [(PLAccountingDistributionRuleEntry *)self distributionID];
  v7 = [v3 stringWithFormat:@"(nodeID=%@, rootNodeID=%@, distributionID=%@)", nodeID, rootNodeID, distributionID];

  return v7;
}

@end