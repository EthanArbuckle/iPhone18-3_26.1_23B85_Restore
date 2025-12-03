@interface PLAccountingPowerEventBackwardEntry
+ (id)entryKey;
+ (id)mergingDenyList;
+ (void)load;
- (BOOL)canMergeWithEvent:(id)event;
- (PLAccountingPowerEventBackwardEntry)initWithRootNodeID:(id)d withPower:(double)power withEndDate:(id)date;
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
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLAccountingPowerEventBackwardEntry;
  objc_msgSendSuper2(&v2, sel_load);
}

uint64_t __47__PLAccountingPowerEventBackwardEntry_entryKey__block_invoke()
{
  entryKey_entryKey_14 = [MEMORY[0x277D3F128] entryKeyForType:*MEMORY[0x277D3F5C8] andName:*MEMORY[0x277D3F428]];

  return MEMORY[0x2821F96F8]();
}

- (PLAccountingPowerEventBackwardEntry)initWithRootNodeID:(id)d withPower:(double)power withEndDate:(id)date
{
  selfCopy = date;
  if (date)
  {
    dCopy = d;
    v9 = [PLAccountingRange rangeWithStartDate:0 withEndDate:selfCopy];
    v12.receiver = self;
    v12.super_class = PLAccountingPowerEventBackwardEntry;
    v10 = [(PLAccountingPowerEventEntry *)&v12 initWithRootNodeID:dCopy withPower:v9 withRange:power];

    self = v10;
    selfCopy = self;
  }

  return selfCopy;
}

void __54__PLAccountingPowerEventBackwardEntry_mergingDenyList__block_invoke()
{
  v0 = mergingDenyList__mergingDenyList_0;
  mergingDenyList__mergingDenyList_0 = &unk_2870F8900;
}

- (BOOL)canMergeWithEvent:(id)event
{
  eventCopy = event;
  v4 = +[PLAccountingPowerEventBackwardEntry mergingDenyList];
  rootNodeID = [eventCopy rootNodeID];

  LOBYTE(eventCopy) = [v4 containsObject:rootNodeID];
  return eventCopy ^ 1;
}

@end