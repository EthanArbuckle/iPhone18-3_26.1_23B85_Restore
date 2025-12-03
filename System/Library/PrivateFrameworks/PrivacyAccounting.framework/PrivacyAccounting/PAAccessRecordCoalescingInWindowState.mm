@interface PAAccessRecordCoalescingInWindowState
- (PAAccessRecordCoalescingInWindowState)initWithFirstAccessRecord:(id)record forEpoch:(int64_t)epoch;
- (id)initByContinuingWindow:(id)window withAccessRecord:(id)record;
@end

@implementation PAAccessRecordCoalescingInWindowState

- (PAAccessRecordCoalescingInWindowState)initWithFirstAccessRecord:(id)record forEpoch:(int64_t)epoch
{
  recordCopy = record;
  v16.receiver = self;
  v16.super_class = PAAccessRecordCoalescingInWindowState;
  v7 = [(PAAccessRecordCoalescingInWindowState *)&v16 init];
  v8 = v7;
  if (v7)
  {
    v7->_epoch = epoch;
    access = [recordCopy access];
    v10 = [PAAccessMatcher coalescingMatcherForAccess:access];

    v11 = MEMORY[0x1E695DF90];
    v12 = [MEMORY[0x1E695DF70] arrayWithObject:recordCopy];
    v13 = [v11 dictionaryWithObject:v12 forKey:v10];
    groupedRecordsByMatcher = v8->_groupedRecordsByMatcher;
    v8->_groupedRecordsByMatcher = v13;
  }

  return v8;
}

- (id)initByContinuingWindow:(id)window withAccessRecord:(id)record
{
  windowCopy = window;
  recordCopy = record;
  v18.receiver = self;
  v18.super_class = PAAccessRecordCoalescingInWindowState;
  v8 = [(PAAccessRecordCoalescingInWindowState *)&v18 init];
  if (v8)
  {
    v8->_epoch = [windowCopy epoch];
    access = [recordCopy access];
    v10 = [PAAccessMatcher coalescingMatcherForAccess:access];

    groupedRecordsByMatcher = [windowCopy groupedRecordsByMatcher];
    v12 = [groupedRecordsByMatcher objectForKeyedSubscript:v10];

    if (v12)
    {
      [v12 addObject:recordCopy];
    }

    else
    {
      v13 = [MEMORY[0x1E695DF70] arrayWithObject:recordCopy];
      groupedRecordsByMatcher2 = [windowCopy groupedRecordsByMatcher];
      [groupedRecordsByMatcher2 setObject:v13 forKeyedSubscript:v10];
    }

    groupedRecordsByMatcher3 = [windowCopy groupedRecordsByMatcher];
    groupedRecordsByMatcher = v8->_groupedRecordsByMatcher;
    v8->_groupedRecordsByMatcher = groupedRecordsByMatcher3;
  }

  return v8;
}

@end