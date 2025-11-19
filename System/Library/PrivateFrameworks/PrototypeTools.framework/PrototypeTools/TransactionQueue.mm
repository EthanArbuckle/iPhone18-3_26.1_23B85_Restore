@interface TransactionQueue
@end

@implementation TransactionQueue

uint64_t ___TransactionQueue_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.PrototypeTools.transaction-queue", 0);
  v1 = _TransactionQueue___queue;
  _TransactionQueue___queue = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end