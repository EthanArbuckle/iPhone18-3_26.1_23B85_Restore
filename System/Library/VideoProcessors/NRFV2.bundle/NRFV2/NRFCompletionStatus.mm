@interface NRFCompletionStatus
- (NRFCompletionStatus)init;
- (void)waitForCompletion;
@end

@implementation NRFCompletionStatus

- (NRFCompletionStatus)init
{
  v8.receiver = self;
  v8.super_class = NRFCompletionStatus;
  v2 = [(NRFCompletionStatus *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    metalExecutionStatus = v2->_metalExecutionStatus;
    v2->_metalExecutionStatus = v3;

    if (!v2->_metalExecutionStatus)
    {
      sub_2958B3324();
      v6 = 0;
      goto LABEL_5;
    }

    commandBuffer = v2->_commandBuffer;
    v2->_commandBuffer = 0;
  }

  v6 = v2;
LABEL_5:

  return v6;
}

- (void)waitForCompletion
{
  objc_msgSend_waitUntilCompleted(self->_commandBuffer, a2, v2, v3);
  commandBuffer = self->_commandBuffer;
  self->_commandBuffer = 0;
}

@end