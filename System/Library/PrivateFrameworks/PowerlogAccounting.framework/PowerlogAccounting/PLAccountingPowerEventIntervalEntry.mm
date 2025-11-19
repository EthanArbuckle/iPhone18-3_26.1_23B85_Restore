@interface PLAccountingPowerEventIntervalEntry
+ (id)entryKey;
+ (void)load;
- (BOOL)canMergeWithEvent:(id)a3;
- (PLAccountingPowerEventIntervalEntry)initWithRootNodeID:(id)a3 withPower:(double)a4 withStartDate:(id)a5 withEndDate:(id)a6;
@end

@implementation PLAccountingPowerEventIntervalEntry

+ (id)entryKey
{
  if (entryKey_onceToken_3 != -1)
  {
    +[PLAccountingPowerEventIntervalEntry entryKey];
  }

  v3 = entryKey_entryKey_3;

  return v3;
}

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLAccountingPowerEventIntervalEntry;
  objc_msgSendSuper2(&v2, sel_load);
}

uint64_t __47__PLAccountingPowerEventIntervalEntry_entryKey__block_invoke()
{
  entryKey_entryKey_3 = [MEMORY[0x277D3F128] entryKeyForType:*MEMORY[0x277D3F5D8] andName:*MEMORY[0x277D3F428]];

  return MEMORY[0x2821F96F8]();
}

- (PLAccountingPowerEventIntervalEntry)initWithRootNodeID:(id)a3 withPower:(double)a4 withStartDate:(id)a5 withEndDate:(id)a6
{
  v7 = 0;
  if (a5 && a6)
  {
    v11 = a3;
    v12 = [PLAccountingRange rangeWithStartDate:a5 withEndDate:a6];
    v15.receiver = self;
    v15.super_class = PLAccountingPowerEventIntervalEntry;
    v13 = [(PLAccountingPowerEventEntry *)&v15 initWithRootNodeID:v11 withPower:v12 withRange:a4];

    self = v13;
    v7 = self;
  }

  return v7;
}

- (BOOL)canMergeWithEvent:(id)a3
{
  v4 = a3;
  v5 = [(PLAccountingEventEntry *)self range];
  v6 = [v5 endDate];
  v7 = [v4 range];
  v8 = [v7 startDate];
  [v6 timeIntervalSinceDate:v8];
  v34 = v4;
  if (v9 <= -1.0)
  {
    v15 = 0;
  }

  else
  {
    v10 = [v4 range];
    v11 = [v10 endDate];
    v12 = [(PLAccountingEventEntry *)self range];
    v13 = [v12 startDate];
    [v11 timeIntervalSinceDate:v13];
    v15 = v14 > -1.0;
  }

  v16 = [(PLAccountingPowerEventEntry *)self rootNodeID];
  v17 = [v16 intValue];

  if (v17 == 54)
  {
    v18 = [(PLAccountingEventEntry *)self range];
    [v18 length];
    v20 = v19;
    v21 = v34;
    v22 = [v34 range];
    [v22 length];
    v24 = v20 + v23;

    v25 = 1800.0;
    goto LABEL_6;
  }

  v26 = [(PLAccountingPowerEventEntry *)self rootNodeID];
  v21 = v34;
  if ([v26 intValue] != 56 || !objc_msgSend(MEMORY[0x277D3F208], "hasAOD"))
  {

    goto LABEL_14;
  }

  v27 = _os_feature_enabled_impl();

  if (v27)
  {
    v28 = [(PLAccountingEventEntry *)self range];
    [v28 length];
    v30 = v29;
    v31 = [v34 range];
    [v31 length];
    v24 = v30 + v32;

    v25 = 60.0;
LABEL_6:
    if (v24 >= v25)
    {
      v15 = 0;
    }
  }

LABEL_14:

  return v15;
}

@end