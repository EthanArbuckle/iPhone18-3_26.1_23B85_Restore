@interface PAAccessRecordCoalescingInWindowState
- (PAAccessRecordCoalescingInWindowState)initWithFirstAccessRecord:(id)a3 forEpoch:(int64_t)a4;
- (id)initByContinuingWindow:(id)a3 withAccessRecord:(id)a4;
@end

@implementation PAAccessRecordCoalescingInWindowState

- (PAAccessRecordCoalescingInWindowState)initWithFirstAccessRecord:(id)a3 forEpoch:(int64_t)a4
{
  v6 = a3;
  v16.receiver = self;
  v16.super_class = PAAccessRecordCoalescingInWindowState;
  v7 = [(PAAccessRecordCoalescingInWindowState *)&v16 init];
  v8 = v7;
  if (v7)
  {
    v7->_epoch = a4;
    v9 = [v6 access];
    v10 = [PAAccessMatcher coalescingMatcherForAccess:v9];

    v11 = MEMORY[0x1E695DF90];
    v12 = [MEMORY[0x1E695DF70] arrayWithObject:v6];
    v13 = [v11 dictionaryWithObject:v12 forKey:v10];
    groupedRecordsByMatcher = v8->_groupedRecordsByMatcher;
    v8->_groupedRecordsByMatcher = v13;
  }

  return v8;
}

- (id)initByContinuingWindow:(id)a3 withAccessRecord:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = PAAccessRecordCoalescingInWindowState;
  v8 = [(PAAccessRecordCoalescingInWindowState *)&v18 init];
  if (v8)
  {
    v8->_epoch = [v6 epoch];
    v9 = [v7 access];
    v10 = [PAAccessMatcher coalescingMatcherForAccess:v9];

    v11 = [v6 groupedRecordsByMatcher];
    v12 = [v11 objectForKeyedSubscript:v10];

    if (v12)
    {
      [v12 addObject:v7];
    }

    else
    {
      v13 = [MEMORY[0x1E695DF70] arrayWithObject:v7];
      v14 = [v6 groupedRecordsByMatcher];
      [v14 setObject:v13 forKeyedSubscript:v10];
    }

    v15 = [v6 groupedRecordsByMatcher];
    groupedRecordsByMatcher = v8->_groupedRecordsByMatcher;
    v8->_groupedRecordsByMatcher = v15;
  }

  return v8;
}

@end