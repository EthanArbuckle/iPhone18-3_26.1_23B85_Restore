@interface RBTimeProvider
+ (id)sharedInstance;
- (id)executeWithCancellingAfter:(double)after onQueue:(id)queue block:(id)block;
- (void)executeAfter:(double)after onQueue:(id)queue block:(id)block;
@end

@implementation RBTimeProvider

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[RBTimeProvider sharedInstance];
  }

  v3 = sharedInstance_result;

  return v3;
}

uint64_t __32__RBTimeProvider_sharedInstance__block_invoke()
{
  sharedInstance_result = objc_alloc_init(RBTimeProvider);

  return MEMORY[0x2821F96F8]();
}

- (void)executeAfter:(double)after onQueue:(id)queue block:(id)block
{
  v6 = (after * 1000000000.0);
  blockCopy = block;
  queue = queue;
  v8 = dispatch_time(0, v6);
  dispatch_after(v8, queue, blockCopy);
}

- (id)executeWithCancellingAfter:(double)after onQueue:(id)queue block:(id)block
{
  v6 = (after * 1000000000.0);
  blockCopy = block;
  queueCopy = queue;
  v9 = dispatch_time(0, v6);
  v10 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queueCopy);

  dispatch_set_context(v10, v10);
  dispatch_source_set_timer(v10, v9, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  dispatch_source_set_event_handler(v10, blockCopy);

  dispatch_activate(v10);
  v11 = [RBTimeProviderEvent eventWithSource:v10];

  return v11;
}

@end