@interface VisionCoreE5RTExecutionPrewarmedState
- (VisionCoreE5RTExecutionPrewarmedState)initWithExecutionStreamOperation:(e5rt_execution_stream_operation *)operation;
- (e5rt_execution_stream_operation)acquireExecutionStreamOperationHandle;
- (void)dealloc;
@end

@implementation VisionCoreE5RTExecutionPrewarmedState

- (e5rt_execution_stream_operation)acquireExecutionStreamOperationHandle
{
  executionStreamOperationHandle = self->_executionStreamOperationHandle;
  self->_executionStreamOperationHandle = 0;
  return executionStreamOperationHandle;
}

- (void)dealloc
{
  if (self->_executionStreamOperationHandle)
  {
    e5rt_execution_stream_operation_release();
  }

  v3.receiver = self;
  v3.super_class = VisionCoreE5RTExecutionPrewarmedState;
  [(VisionCoreE5RTExecutionPrewarmedState *)&v3 dealloc];
}

- (VisionCoreE5RTExecutionPrewarmedState)initWithExecutionStreamOperation:(e5rt_execution_stream_operation *)operation
{
  v5.receiver = self;
  v5.super_class = VisionCoreE5RTExecutionPrewarmedState;
  result = [(VisionCoreE5RTExecutionPrewarmedState *)&v5 init];
  if (result)
  {
    result->_executionStreamOperationHandle = operation;
  }

  return result;
}

@end