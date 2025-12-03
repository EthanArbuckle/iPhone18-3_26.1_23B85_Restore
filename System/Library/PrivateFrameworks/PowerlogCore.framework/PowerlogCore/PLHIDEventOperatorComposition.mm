@interface PLHIDEventOperatorComposition
- (PLHIDEventOperatorComposition)initWithOperator:(id)operator forUsagePage:(unint64_t)page andUsage:(unint64_t)usage withBlock:(id)block;
- (void)handleEvent:(__IOHIDEvent *)event;
@end

@implementation PLHIDEventOperatorComposition

- (PLHIDEventOperatorComposition)initWithOperator:(id)operator forUsagePage:(unint64_t)page andUsage:(unint64_t)usage withBlock:(id)block
{
  v28[2] = *MEMORY[0x1E69E9840];
  operatorCopy = operator;
  blockCopy = block;
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

    v15 = MEMORY[0x1DA71B0D0](blockCopy);
    operatorBlock = v13->_operatorBlock;
    v13->_operatorBlock = v15;

    eventSystemClient = v13->_eventSystemClient;
    workQueue = [operatorCopy workQueue];
    IOHIDEventSystemClientScheduleWithDispatchQueue();

    v27[0] = @"DeviceUsagePage";
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:page];
    v27[1] = @"DeviceUsage";
    v28[0] = v19;
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:usage];
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

- (void)handleEvent:(__IOHIDEvent *)event
{
  operatorBlock = self->_operatorBlock;
  if (operatorBlock)
  {
    operatorBlock[2](operatorBlock, event);
  }
}

@end