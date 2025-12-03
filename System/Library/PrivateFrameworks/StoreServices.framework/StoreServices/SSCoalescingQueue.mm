@interface SSCoalescingQueue
- (SSCoalescingQueue)initWithBlock:(id)block;
- (void)executeBlock;
@end

@implementation SSCoalescingQueue

- (SSCoalescingQueue)initWithBlock:(id)block
{
  blockCopy = block;
  v11.receiver = self;
  v11.super_class = SSCoalescingQueue;
  v5 = [(SSCoalescingQueue *)&v11 init];
  if (v5)
  {
    v6 = dispatch_queue_create("com.apple.StoreServices.SSCoalescingQueue", 0);
    v7 = *(v5 + 1);
    *(v5 + 1) = v6;

    v8 = dispatch_source_create(MEMORY[0x1E69E96B8], 0, 0, *(v5 + 1));
    v9 = *(v5 + 2);
    *(v5 + 2) = v8;

    dispatch_source_set_event_handler(*(v5 + 2), blockCopy);
    dispatch_resume(*(v5 + 2));
  }

  return v5;
}

- (void)executeBlock
{
  source = [(SSCoalescingQueue *)self source];
  dispatch_source_merge_data(source, 1uLL);
}

@end