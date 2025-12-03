@interface PAAccessRecordCoalescingDoneState
- (id)initByEndingLastWindow:(id)window reversed:(BOOL)reversed;
@end

@implementation PAAccessRecordCoalescingDoneState

- (id)initByEndingLastWindow:(id)window reversed:(BOOL)reversed
{
  windowCopy = window;
  v12.receiver = self;
  v12.super_class = PAAccessRecordCoalescingDoneState;
  v7 = [(PAAccessRecordCoalescingDoneState *)&v12 init];
  if (v7)
  {
    if ([windowCopy conformsToProtocol:&unk_1F5A5C188])
    {
      groupedRecordsByMatcher = [windowCopy groupedRecordsByMatcher];
      allValues = [groupedRecordsByMatcher allValues];
      groupedRecordsToRepublish = v7->_groupedRecordsToRepublish;
      v7->_groupedRecordsToRepublish = allValues;
    }

    else
    {
      groupedRecordsByMatcher = v7->_groupedRecordsToRepublish;
      v7->_groupedRecordsToRepublish = MEMORY[0x1E695E0F0];
    }

    v7->_reversed = reversed;
  }

  return v7;
}

@end