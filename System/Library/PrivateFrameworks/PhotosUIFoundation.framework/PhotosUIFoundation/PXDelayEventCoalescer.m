@interface PXDelayEventCoalescer
- (PXDelayEventCoalescer)init;
- (PXDelayEventCoalescer)initWithDelay:(double)a3;
- (void)_handleTimer;
- (void)inputEvent;
@end

@implementation PXDelayEventCoalescer

- (void)inputEvent
{
  [(PXEventCoalescer *)self setIsCancelled:0];
  [(PXEventCoalescer *)self setLastEventTime:CFAbsoluteTimeGetCurrent()];
  if (![(PXEventCoalescer *)self waitingForCallback])
  {
    [(PXEventCoalescer *)self setWaitingForCallback:1];
    objc_initWeak(&location, self);
    [(PXEventCoalescer *)self interval];
    v4 = dispatch_time(0, (v3 * 1000000000.0));
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __35__PXDelayEventCoalescer_inputEvent__block_invoke;
    v5[3] = &unk_1E7BB8858;
    objc_copyWeak(&v6, &location);
    dispatch_after(v4, MEMORY[0x1E69E96A0], v5);
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __35__PXDelayEventCoalescer_inputEvent__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleTimer];
}

- (void)_handleTimer
{
  if ([(PXEventCoalescer *)self isCancelled])
  {

    [(PXEventCoalescer *)self setWaitingForCallback:0];
  }

  else
  {
    Current = CFAbsoluteTimeGetCurrent();
    [(PXEventCoalescer *)self lastEventTime];
    v5 = Current - v4;
    [(PXEventCoalescer *)self interval];
    v7 = v6 - v5;
    if (v7 <= 0.01)
    {
      [(PXEventCoalescer *)self setWaitingForCallback:0];

      [(PXEventCoalescer *)self signalObservers];
    }

    else
    {
      objc_initWeak(&location, self);
      v8 = dispatch_time(0, (v7 * 1000000000.0));
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __37__PXDelayEventCoalescer__handleTimer__block_invoke;
      v9[3] = &unk_1E7BB8858;
      objc_copyWeak(&v10, &location);
      dispatch_after(v8, MEMORY[0x1E69E96A0], v9);
      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }
  }
}

void __37__PXDelayEventCoalescer__handleTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleTimer];
}

- (PXDelayEventCoalescer)initWithDelay:(double)a3
{
  v4.receiver = self;
  v4.super_class = PXDelayEventCoalescer;
  return [(PXEventCoalescer *)&v4 initWithInterval:a3];
}

- (PXDelayEventCoalescer)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXEventCoalescer.m" lineNumber:141 description:{@"%s is not available as initializer", "-[PXDelayEventCoalescer init]"}];

  abort();
}

@end