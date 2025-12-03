@interface PAAccessRecordCoalescingWindowRolledOverState
- (id)initByEndingPreviousWindow:(id)window reversed:(BOOL)reversed withInitialAccessRecord:(id)record forNewEpoch:(int64_t)epoch;
@end

@implementation PAAccessRecordCoalescingWindowRolledOverState

- (id)initByEndingPreviousWindow:(id)window reversed:(BOOL)reversed withInitialAccessRecord:(id)record forNewEpoch:(int64_t)epoch
{
  windowCopy = window;
  recordCopy = record;
  v23.receiver = self;
  v23.super_class = PAAccessRecordCoalescingWindowRolledOverState;
  v12 = [(PAAccessRecordCoalescingWindowRolledOverState *)&v23 init];
  if (v12)
  {
    groupedRecordsByMatcher = [windowCopy groupedRecordsByMatcher];
    allValues = [groupedRecordsByMatcher allValues];
    groupedRecordsToRepublish = v12->_groupedRecordsToRepublish;
    v12->_groupedRecordsToRepublish = allValues;

    v12->_reversed = reversed;
    v12->_epoch = epoch;
    access = [recordCopy access];
    v17 = [PAAccessMatcher coalescingMatcherForAccess:access];

    v18 = MEMORY[0x1E695DF90];
    v19 = [MEMORY[0x1E695DF70] arrayWithObject:recordCopy];
    v20 = [v18 dictionaryWithObject:v19 forKey:v17];
    groupedRecordsByMatcher = v12->_groupedRecordsByMatcher;
    v12->_groupedRecordsByMatcher = v20;
  }

  return v12;
}

@end