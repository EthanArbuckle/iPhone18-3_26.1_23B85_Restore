@interface QLMemoryLimitedQueueTask
- (QLMemoryLimitedQueueTask)initWithBlock:(id)a3 expectedMemoryConsumption:(unint64_t)a4;
@end

@implementation QLMemoryLimitedQueueTask

- (QLMemoryLimitedQueueTask)initWithBlock:(id)a3 expectedMemoryConsumption:(unint64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = QLMemoryLimitedQueueTask;
  v7 = [(QLMemoryLimitedQueueTask *)&v11 init];
  if (v7)
  {
    v8 = MEMORY[0x2667062A0](v6);
    block = v7->_block;
    v7->_block = v8;

    v7->_expectedMemoryConsumption = a4;
  }

  return v7;
}

@end