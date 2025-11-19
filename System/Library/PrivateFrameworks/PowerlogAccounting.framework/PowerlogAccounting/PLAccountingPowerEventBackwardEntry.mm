@interface PLAccountingPowerEventBackwardEntry
+ (id)entryKey;
+ (id)mergingDenyList;
+ (void)load;
- (BOOL)canMergeWithEvent:(id)a3;
- (PLAccountingPowerEventBackwardEntry)initWithRootNodeID:(id)a3 withPower:(double)a4 withEndDate:(id)a5;
@end

@implementation PLAccountingPowerEventBackwardEntry

+ (id)entryKey
{
  if (entryKey_onceToken_14 != -1)
  {
    +[PLAccountingPowerEventBackwardEntry entryKey];
  }

  v3 = entryKey_entryKey_14;

  return v3;
}

+ (id)mergingDenyList
{
  if (mergingDenyList_onceToken_0 != -1)
  {
    +[PLAccountingPowerEventBackwardEntry mergingDenyList];
  }

  v3 = mergingDenyList__mergingDenyList_0;

  return v3;
}

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLAccountingPowerEventBackwardEntry;
  objc_msgSendSuper2(&v2, sel_load);
}

uint64_t __47__PLAccountingPowerEventBackwardEntry_entryKey__block_invoke()
{
  entryKey_entryKey_14 = [MEMORY[0x277D3F128] entryKeyForType:*MEMORY[0x277D3F5C8] andName:*MEMORY[0x277D3F428]];

  return MEMORY[0x2821F96F8]();
}

- (PLAccountingPowerEventBackwardEntry)initWithRootNodeID:(id)a3 withPower:(double)a4 withEndDate:(id)a5
{
  v5 = a5;
  if (a5)
  {
    v8 = a3;
    v9 = [PLAccountingRange rangeWithStartDate:0 withEndDate:v5];
    v12.receiver = self;
    v12.super_class = PLAccountingPowerEventBackwardEntry;
    v10 = [(PLAccountingPowerEventEntry *)&v12 initWithRootNodeID:v8 withPower:v9 withRange:a4];

    self = v10;
    v5 = self;
  }

  return v5;
}

void __54__PLAccountingPowerEventBackwardEntry_mergingDenyList__block_invoke()
{
  v0 = mergingDenyList__mergingDenyList_0;
  mergingDenyList__mergingDenyList_0 = &unk_2870F8900;
}

- (BOOL)canMergeWithEvent:(id)a3
{
  v3 = a3;
  v4 = +[PLAccountingPowerEventBackwardEntry mergingDenyList];
  v5 = [v3 rootNodeID];

  LOBYTE(v3) = [v4 containsObject:v5];
  return v3 ^ 1;
}

@end