@interface OperatorTask
- (OperatorTask)initWithQueue:(id)queue withBlock:(id)block;
@end

@implementation OperatorTask

- (OperatorTask)initWithQueue:(id)queue withBlock:(id)block
{
  queueCopy = queue;
  blockCopy = block;
  v14.receiver = self;
  v14.super_class = OperatorTask;
  v9 = [(OperatorTask *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_operatorQueue, queue);
    v11 = MEMORY[0x1DA71B0D0](blockCopy);
    operatorBlock = v10->_operatorBlock;
    v10->_operatorBlock = v11;
  }

  return v10;
}

@end