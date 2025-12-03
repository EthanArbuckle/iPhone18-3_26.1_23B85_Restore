@interface QLMemoryLimitedQueueTask
- (QLMemoryLimitedQueueTask)initWithBlock:(id)block expectedMemoryConsumption:(unint64_t)consumption;
@end

@implementation QLMemoryLimitedQueueTask

- (QLMemoryLimitedQueueTask)initWithBlock:(id)block expectedMemoryConsumption:(unint64_t)consumption
{
  blockCopy = block;
  v11.receiver = self;
  v11.super_class = QLMemoryLimitedQueueTask;
  v7 = [(QLMemoryLimitedQueueTask *)&v11 init];
  if (v7)
  {
    v8 = MEMORY[0x2667062A0](blockCopy);
    block = v7->_block;
    v7->_block = v8;

    v7->_expectedMemoryConsumption = consumption;
  }

  return v7;
}

@end