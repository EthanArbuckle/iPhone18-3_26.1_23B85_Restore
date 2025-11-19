@interface PLHIDEventOperatorComposition
- (PLHIDEventOperatorComposition)initWithOperator:(id)a3 forUsagePage:(unint64_t)a4 andUsage:(unint64_t)a5 withBlock:(id)a6;
- (void)handleEvent:(__IOHIDEvent *)a3;
@end

@implementation PLHIDEventOperatorComposition

- (PLHIDEventOperatorComposition)initWithOperator:(id)a3 forUsagePage:(unint64_t)a4 andUsage:(unint64_t)a5 withBlock:(id)a6
{
  v28[2] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  v26.receiver = self;
  v26.super_class = PLHIDEventOperatorComposition;
  v12 = [(PLHIDEventOperatorComposition *)&v26 init];
  v13 = v12;
  if (v12)
  {
    if (!v12->_eventSystemClient)
    {
      v14 = *MEMORY[0x1E695E480];
      v13->_eventSystemClient = IOHIDEventSystemClientCreate();
    }

    v15 = MEMORY[0x1DA71B0D0](v11);
    operatorBlock = v13->_operatorBlock;
    v13->_operatorBlock = v15;

    eventSystemClient = v13->_eventSystemClient;
    v18 = [v10 workQueue];
    IOHIDEventSystemClientScheduleWithDispatchQueue();

    v27[0] = @"DeviceUsagePage";
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    v27[1] = @"DeviceUsage";
    v28[0] = v19;
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a5];
    v28[1] = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];

    v22 = v13->_eventSystemClient;
    IOHIDEventSystemClientSetMatching();
    v23 = v13->_eventSystemClient;
    IOHIDEventSystemClientRegisterEventBlock();
  }

  v24 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)handleEvent:(__IOHIDEvent *)a3
{
  operatorBlock = self->_operatorBlock;
  if (operatorBlock)
  {
    operatorBlock[2](operatorBlock, a3);
  }
}

@end