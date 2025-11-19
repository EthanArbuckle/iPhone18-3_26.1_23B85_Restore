@interface OperatorTask
- (OperatorTask)initWithQueue:(id)a3 withBlock:(id)a4;
@end

@implementation OperatorTask

- (OperatorTask)initWithQueue:(id)a3 withBlock:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = OperatorTask;
  v9 = [(OperatorTask *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_operatorQueue, a3);
    v11 = MEMORY[0x1DA71B0D0](v8);
    operatorBlock = v10->_operatorBlock;
    v10->_operatorBlock = v11;
  }

  return v10;
}

@end