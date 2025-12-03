@interface PAAccessRecordCoalescingIncompleteRecordState
- (PAAccessRecordCoalescingIncompleteRecordState)initWithPreviousState:(id)state recordToRepublish:(id)republish;
- (id)recordsToRepublish;
@end

@implementation PAAccessRecordCoalescingIncompleteRecordState

- (PAAccessRecordCoalescingIncompleteRecordState)initWithPreviousState:(id)state recordToRepublish:(id)republish
{
  stateCopy = state;
  republishCopy = republish;
  v12.receiver = self;
  v12.super_class = PAAccessRecordCoalescingIncompleteRecordState;
  v9 = [(PAAccessRecordCoalescingIncompleteRecordState *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_previousState, state);
    objc_storeStrong(&v10->_recordToRepublish, republish);
  }

  return v10;
}

- (id)recordsToRepublish
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = self->_recordToRepublish;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

@end