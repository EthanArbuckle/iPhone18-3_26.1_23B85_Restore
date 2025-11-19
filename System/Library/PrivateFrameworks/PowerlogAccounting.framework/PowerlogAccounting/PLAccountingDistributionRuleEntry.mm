@interface PLAccountingDistributionRuleEntry
+ (id)entryKey;
+ (void)load;
- (BOOL)isEqual:(id)a3;
- (PLAccountingDistributionRuleEntry)initWithNodeID:(id)a3 withRootNodeID:(id)a4 withDistributionID:(id)a5 withEntryDate:(id)a6;
- (id)description;
- (unint64_t)hash;
@end

@implementation PLAccountingDistributionRuleEntry

+ (void)load
{
  v2.receiver = a1;
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

- (PLAccountingDistributionRuleEntry)initWithNodeID:(id)a3 withRootNodeID:(id)a4 withDistributionID:(id)a5 withEntryDate:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([v10 intValue] < 1 || objc_msgSend(v11, "intValue") < 1 || objc_msgSend(v12, "intValue") < 1)
  {
    v16 = 0;
  }

  else
  {
    v14 = [objc_opt_class() entryKey];
    if (v13)
    {
      v20.receiver = self;
      v20.super_class = PLAccountingDistributionRuleEntry;
      v15 = [(PLEntry *)&v20 initWithEntryKey:v14 withDate:v13];
    }

    else
    {
      v19.receiver = self;
      v19.super_class = PLAccountingDistributionRuleEntry;
      v15 = [(PLEntry *)&v19 initWithEntryKey:v14];
    }

    v17 = v15;

    if (v17)
    {
      [(PLEntry *)v17 setObject:v10 forKeyedSubscript:*MEMORY[0x277D3F3C0]];
      [(PLEntry *)v17 setObject:v11 forKeyedSubscript:*MEMORY[0x277D3F3C8]];
      [(PLEntry *)v17 setObject:v12 forKeyedSubscript:*MEMORY[0x277D3F3B8]];
    }

    self = v17;
    v16 = self;
  }

  return v16;
}

- (unint64_t)hash
{
  v3 = [(PLAccountingDistributionRuleEntry *)self nodeID];
  v4 = [v3 intValue];
  v5 = [(PLAccountingDistributionRuleEntry *)self rootNodeID];
  v6 = [v5 intValue] + v4;
  v7 = [(PLAccountingDistributionRuleEntry *)self distributionID];
  v8 = (v6 + [v7 intValue]);

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [v4 nodeID];
  v6 = [(PLAccountingDistributionRuleEntry *)self nodeID];
  if ([v5 isEqual:v6])
  {
    v7 = [v4 rootNodeID];
    v8 = [(PLAccountingDistributionRuleEntry *)self rootNodeID];
    if ([v7 isEqual:v8])
    {
      v9 = [v4 distributionID];
      v10 = [(PLAccountingDistributionRuleEntry *)self distributionID];
      v11 = [v9 isEqual:v10];
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
  v4 = [(PLAccountingDistributionRuleEntry *)self nodeID];
  v5 = [(PLAccountingDistributionRuleEntry *)self rootNodeID];
  v6 = [(PLAccountingDistributionRuleEntry *)self distributionID];
  v7 = [v3 stringWithFormat:@"(nodeID=%@, rootNodeID=%@, distributionID=%@)", v4, v5, v6];

  return v7;
}

@end