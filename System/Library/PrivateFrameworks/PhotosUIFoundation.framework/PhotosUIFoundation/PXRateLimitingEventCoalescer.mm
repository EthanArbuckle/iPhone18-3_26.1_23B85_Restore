@interface PXRateLimitingEventCoalescer
- (PXRateLimitingEventCoalescer)init;
- (PXRateLimitingEventCoalescer)initWithRate:(double)rate;
- (void)_handleTimer;
- (void)inputEvent;
@end

@implementation PXRateLimitingEventCoalescer

- (void)inputEvent
{
  [(PXEventCoalescer *)self setIsCancelled:0];
  if (![(PXEventCoalescer *)self waitingForCallback])
  {
    Current = CFAbsoluteTimeGetCurrent();
    [(PXEventCoalescer *)self lastSignalTime];
    v5 = Current - v4;
    [(PXEventCoalescer *)self interval];
    if (v5 >= v6)
    {

      [(PXEventCoalescer *)self signalObservers];
    }

    else
    {
      [(PXEventCoalescer *)self interval];
      self->_debugLastDispatchInterval = v7 - v5;
      [(PXEventCoalescer *)self setWaitingForCallback:1];
      objc_initWeak(&location, self);
      v8 = dispatch_time(0, (self->_debugLastDispatchInterval * 1000000000.0));
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __42__PXRateLimitingEventCoalescer_inputEvent__block_invoke;
      v9[3] = &unk_1E7BB8858;
      objc_copyWeak(&v10, &location);
      dispatch_after(v8, MEMORY[0x1E69E96A0], v9);
      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }
  }
}

void __42__PXRateLimitingEventCoalescer_inputEvent__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleTimer];
}

- (void)_handleTimer
{
  [(PXEventCoalescer *)self setWaitingForCallback:0];
  if (![(PXEventCoalescer *)self isCancelled])
  {

    [(PXEventCoalescer *)self signalObservers];
  }
}

- (PXRateLimitingEventCoalescer)initWithRate:(double)rate
{
  v4.receiver = self;
  v4.super_class = PXRateLimitingEventCoalescer;
  return [(PXEventCoalescer *)&v4 initWithInterval:rate];
}

- (PXRateLimitingEventCoalescer)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXEventCoalescer.m" lineNumber:194 description:{@"%s is not available as initializer", "-[PXRateLimitingEventCoalescer init]"}];

  abort();
}

@end