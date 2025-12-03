@interface RCOperationDelayedRetrySignal
- (RCOperationDelayedRetrySignal)initWithDelay:(double)delay;
- (void)onQueue:(id)queue signal:(id)signal;
@end

@implementation RCOperationDelayedRetrySignal

- (RCOperationDelayedRetrySignal)initWithDelay:(double)delay
{
  v7.receiver = self;
  v7.super_class = RCOperationDelayedRetrySignal;
  v4 = [(RCOperationDelayedRetrySignal *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_delay = delay;
    v4->_signalTime = dispatch_time(0, (delay * 1000000000.0));
  }

  return v5;
}

- (void)onQueue:(id)queue signal:(id)signal
{
  signalCopy = signal;
  signalTime = self->_signalTime;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__RCOperationDelayedRetrySignal_onQueue_signal___block_invoke;
  block[3] = &unk_27822F2D8;
  v10 = signalCopy;
  v8 = signalCopy;
  dispatch_after(signalTime, queue, block);
}

@end