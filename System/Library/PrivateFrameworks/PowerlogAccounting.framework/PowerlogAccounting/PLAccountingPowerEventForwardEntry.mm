@interface PLAccountingPowerEventForwardEntry
+ (id)entryKey;
+ (void)load;
- (PLAccountingPowerEventForwardEntry)initWithRootNodeID:(id)a3 withPower:(double)a4 withStartDate:(id)a5;
@end

@implementation PLAccountingPowerEventForwardEntry

+ (id)entryKey
{
  if (entryKey_onceToken_13 != -1)
  {
    +[PLAccountingPowerEventForwardEntry entryKey];
  }

  v3 = entryKey_entryKey_13;

  return v3;
}

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLAccountingPowerEventForwardEntry;
  objc_msgSendSuper2(&v2, sel_load);
}

uint64_t __46__PLAccountingPowerEventForwardEntry_entryKey__block_invoke()
{
  entryKey_entryKey_13 = [MEMORY[0x277D3F128] entryKeyForType:*MEMORY[0x277D3F5D0] andName:*MEMORY[0x277D3F428]];

  return MEMORY[0x2821F96F8]();
}

- (PLAccountingPowerEventForwardEntry)initWithRootNodeID:(id)a3 withPower:(double)a4 withStartDate:(id)a5
{
  v5 = a5;
  if (a5)
  {
    v8 = a3;
    v9 = [PLAccountingRange rangeWithStartDate:v5 withEndDate:0];
    v12.receiver = self;
    v12.super_class = PLAccountingPowerEventForwardEntry;
    v10 = [(PLAccountingPowerEventEntry *)&v12 initWithRootNodeID:v8 withPower:v9 withRange:a4];

    self = v10;
    v5 = self;
  }

  return v5;
}

@end