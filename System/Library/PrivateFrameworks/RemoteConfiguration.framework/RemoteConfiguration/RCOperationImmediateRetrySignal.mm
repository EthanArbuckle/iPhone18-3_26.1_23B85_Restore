@interface RCOperationImmediateRetrySignal
- (void)onQueue:(id)a3 signal:(id)a4;
@end

@implementation RCOperationImmediateRetrySignal

- (void)onQueue:(id)a3 signal:(id)a4
{
  v5 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__RCOperationImmediateRetrySignal_onQueue_signal___block_invoke;
  block[3] = &unk_27822F2D8;
  v8 = v5;
  v6 = v5;
  dispatch_async(a3, block);
}

@end