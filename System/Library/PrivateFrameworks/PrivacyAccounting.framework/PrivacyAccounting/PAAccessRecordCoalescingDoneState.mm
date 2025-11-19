@interface PAAccessRecordCoalescingDoneState
- (id)initByEndingLastWindow:(id)a3 reversed:(BOOL)a4;
@end

@implementation PAAccessRecordCoalescingDoneState

- (id)initByEndingLastWindow:(id)a3 reversed:(BOOL)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = PAAccessRecordCoalescingDoneState;
  v7 = [(PAAccessRecordCoalescingDoneState *)&v12 init];
  if (v7)
  {
    if ([v6 conformsToProtocol:&unk_1F5A5C188])
    {
      v8 = [v6 groupedRecordsByMatcher];
      v9 = [v8 allValues];
      groupedRecordsToRepublish = v7->_groupedRecordsToRepublish;
      v7->_groupedRecordsToRepublish = v9;
    }

    else
    {
      v8 = v7->_groupedRecordsToRepublish;
      v7->_groupedRecordsToRepublish = MEMORY[0x1E695E0F0];
    }

    v7->_reversed = a4;
  }

  return v7;
}

@end