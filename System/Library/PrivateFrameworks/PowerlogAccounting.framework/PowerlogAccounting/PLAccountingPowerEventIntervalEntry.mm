@interface PLAccountingPowerEventIntervalEntry
+ (id)entryKey;
+ (void)load;
- (BOOL)canMergeWithEvent:(id)event;
- (PLAccountingPowerEventIntervalEntry)initWithRootNodeID:(id)d withPower:(double)power withStartDate:(id)date withEndDate:(id)endDate;
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
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLAccountingPowerEventIntervalEntry;
  objc_msgSendSuper2(&v2, sel_load);
}

uint64_t __47__PLAccountingPowerEventIntervalEntry_entryKey__block_invoke()
{
  entryKey_entryKey_3 = [MEMORY[0x277D3F128] entryKeyForType:*MEMORY[0x277D3F5D8] andName:*MEMORY[0x277D3F428]];

  return MEMORY[0x2821F96F8]();
}

- (PLAccountingPowerEventIntervalEntry)initWithRootNodeID:(id)d withPower:(double)power withStartDate:(id)date withEndDate:(id)endDate
{
  selfCopy = 0;
  if (date && endDate)
  {
    dCopy = d;
    v12 = [PLAccountingRange rangeWithStartDate:date withEndDate:endDate];
    v15.receiver = self;
    v15.super_class = PLAccountingPowerEventIntervalEntry;
    v13 = [(PLAccountingPowerEventEntry *)&v15 initWithRootNodeID:dCopy withPower:v12 withRange:power];

    self = v13;
    selfCopy = self;
  }

  return selfCopy;
}

- (BOOL)canMergeWithEvent:(id)event
{
  eventCopy = event;
  range = [(PLAccountingEventEntry *)self range];
  endDate = [range endDate];
  range2 = [eventCopy range];
  startDate = [range2 startDate];
  [endDate timeIntervalSinceDate:startDate];
  v34 = eventCopy;
  if (v9 <= -1.0)
  {
    v15 = 0;
  }

  else
  {
    range3 = [eventCopy range];
    endDate2 = [range3 endDate];
    range4 = [(PLAccountingEventEntry *)self range];
    startDate2 = [range4 startDate];
    [endDate2 timeIntervalSinceDate:startDate2];
    v15 = v14 > -1.0;
  }

  rootNodeID = [(PLAccountingPowerEventEntry *)self rootNodeID];
  intValue = [rootNodeID intValue];

  if (intValue == 54)
  {
    range5 = [(PLAccountingEventEntry *)self range];
    [range5 length];
    v20 = v19;
    v21 = v34;
    range6 = [v34 range];
    [range6 length];
    v24 = v20 + v23;

    v25 = 1800.0;
    goto LABEL_6;
  }

  rootNodeID2 = [(PLAccountingPowerEventEntry *)self rootNodeID];
  v21 = v34;
  if ([rootNodeID2 intValue] != 56 || !objc_msgSend(MEMORY[0x277D3F208], "hasAOD"))
  {

    goto LABEL_14;
  }

  v27 = _os_feature_enabled_impl();

  if (v27)
  {
    range7 = [(PLAccountingEventEntry *)self range];
    [range7 length];
    v30 = v29;
    range8 = [v34 range];
    [range8 length];
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