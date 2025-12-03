@interface RCOperationImmediateRetrySignal
- (void)onQueue:(id)queue signal:(id)signal;
@end

@implementation RCOperationImmediateRetrySignal

- (void)onQueue:(id)queue signal:(id)signal
{
  signalCopy = signal;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__RCOperationImmediateRetrySignal_onQueue_signal___block_invoke;
  block[3] = &unk_27822F2D8;
  v8 = signalCopy;
  v6 = signalCopy;
  dispatch_async(queue, block);
}

@end