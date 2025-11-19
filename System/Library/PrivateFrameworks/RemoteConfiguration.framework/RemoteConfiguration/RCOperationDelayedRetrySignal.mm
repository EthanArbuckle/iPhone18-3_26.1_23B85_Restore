@interface RCOperationDelayedRetrySignal
- (RCOperationDelayedRetrySignal)initWithDelay:(double)a3;
- (void)onQueue:(id)a3 signal:(id)a4;
@end

@implementation RCOperationDelayedRetrySignal

- (RCOperationDelayedRetrySignal)initWithDelay:(double)a3
{
  v7.receiver = self;
  v7.super_class = RCOperationDelayedRetrySignal;
  v4 = [(RCOperationDelayedRetrySignal *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_delay = a3;
    v4->_signalTime = dispatch_time(0, (a3 * 1000000000.0));
  }

  return v5;
}

- (void)onQueue:(id)a3 signal:(id)a4
{
  v6 = a4;
  signalTime = self->_signalTime;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__RCOperationDelayedRetrySignal_onQueue_signal___block_invoke;
  block[3] = &unk_27822F2D8;
  v10 = v6;
  v8 = v6;
  dispatch_after(signalTime, a3, block);
}

@end