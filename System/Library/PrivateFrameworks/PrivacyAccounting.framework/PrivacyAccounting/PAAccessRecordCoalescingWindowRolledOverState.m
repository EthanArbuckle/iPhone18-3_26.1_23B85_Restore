@interface PAAccessRecordCoalescingWindowRolledOverState
- (id)initByEndingPreviousWindow:(id)a3 reversed:(BOOL)a4 withInitialAccessRecord:(id)a5 forNewEpoch:(int64_t)a6;
@end

@implementation PAAccessRecordCoalescingWindowRolledOverState

- (id)initByEndingPreviousWindow:(id)a3 reversed:(BOOL)a4 withInitialAccessRecord:(id)a5 forNewEpoch:(int64_t)a6
{
  v10 = a3;
  v11 = a5;
  v23.receiver = self;
  v23.super_class = PAAccessRecordCoalescingWindowRolledOverState;
  v12 = [(PAAccessRecordCoalescingWindowRolledOverState *)&v23 init];
  if (v12)
  {
    v13 = [v10 groupedRecordsByMatcher];
    v14 = [v13 allValues];
    groupedRecordsToRepublish = v12->_groupedRecordsToRepublish;
    v12->_groupedRecordsToRepublish = v14;

    v12->_reversed = a4;
    v12->_epoch = a6;
    v16 = [v11 access];
    v17 = [PAAccessMatcher coalescingMatcherForAccess:v16];

    v18 = MEMORY[0x1E695DF90];
    v19 = [MEMORY[0x1E695DF70] arrayWithObject:v11];
    v20 = [v18 dictionaryWithObject:v19 forKey:v17];
    groupedRecordsByMatcher = v12->_groupedRecordsByMatcher;
    v12->_groupedRecordsByMatcher = v20;
  }

  return v12;
}

@end