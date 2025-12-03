@interface PFCoalescerActivityToken
- (PFCoalescerActivityToken)initWithDispatchGroup:(id)group reason:(id)reason;
- (id)description;
- (void)dealloc;
- (void)endActivity;
@end

@implementation PFCoalescerActivityToken

void __39__PFCoalescerActivityToken_endActivity__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 32);
    v4 = *(v3 + 8);
    *(v3 + 8) = 0;
  }
}

- (void)endActivity
{
  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__PFCoalescerActivityToken_endActivity__block_invoke;
  block[3] = &unk_1E8563900;
  block[4] = self;
  dispatch_sync(isolationQueue, block);
}

- (void)dealloc
{
  [(PFCoalescerActivityToken *)self endActivity];
  v3.receiver = self;
  v3.super_class = PFCoalescerActivityToken;
  [(PFCoalescerActivityToken *)&v3 dealloc];
}

- (id)description
{
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSinceDate:self->_creationDate];
  v5 = v4;

  v6 = MEMORY[0x1E696AEC0];
  reason = self->_reason;
  v8 = [(NSArray *)self->_callStackReturnAddresses componentsJoinedByString:@" "];
  v9 = [v6 stringWithFormat:@"<PFCoalescerActivityToken %p '%@' age: %.1fs (\n%@\n)>", self, reason, v5, v8];

  return v9;
}

- (PFCoalescerActivityToken)initWithDispatchGroup:(id)group reason:(id)reason
{
  groupCopy = group;
  reasonCopy = reason;
  v19.receiver = self;
  v19.super_class = PFCoalescerActivityToken;
  v9 = [(PFCoalescerActivityToken *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_reason, reason);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("activity token isolation", v11);
    isolationQueue = v10->_isolationQueue;
    v10->_isolationQueue = v12;

    objc_storeStrong(&v10->_group, group);
    callStackReturnAddresses = [MEMORY[0x1E696AF00] callStackReturnAddresses];
    callStackReturnAddresses = v10->_callStackReturnAddresses;
    v10->_callStackReturnAddresses = callStackReturnAddresses;

    date = [MEMORY[0x1E695DF00] date];
    creationDate = v10->_creationDate;
    v10->_creationDate = date;

    dispatch_group_enter(groupCopy);
  }

  return v10;
}

@end