@interface PXEventCoalescer
+ (id)delayedCoalescerWithDelay:(double)a3;
+ (id)rateLimitingCoalescerWithRate:(double)a3;
- (PXEventCoalescer)init;
- (PXEventCoalescer)initWithInterval:(double)a3;
- (void)_enumerateObserversWithBlock:(id)a3;
- (void)inputEvent;
- (void)reset;
- (void)setWaitingForCallback:(BOOL)a3;
- (void)signalObservers;
- (void)signalObserversBeganPendingEvent;
@end

@implementation PXEventCoalescer

- (void)signalObservers
{
  [(PXEventCoalescer *)self setLastSignalTime:CFAbsoluteTimeGetCurrent()];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __35__PXEventCoalescer_signalObservers__block_invoke;
  v3[3] = &unk_1E7BB7528;
  v3[4] = self;
  [(PXEventCoalescer *)self _enumerateObserversWithBlock:v3];
}

- (void)signalObserversBeganPendingEvent
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __52__PXEventCoalescer_signalObserversBeganPendingEvent__block_invoke;
  v2[3] = &unk_1E7BB7528;
  v2[4] = self;
  [(PXEventCoalescer *)self _enumerateObserversWithBlock:v2];
}

void __52__PXEventCoalescer_signalObserversBeganPendingEvent__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 coalescerBeganPendingEvent:*(a1 + 32)];
  }
}

- (void)_enumerateObserversWithBlock:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NSHashTable *)self->_observers copy];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v4[2](v4, *(*(&v11 + 1) + 8 * v10++));
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)setWaitingForCallback:(BOOL)a3
{
  if (self->_waitingForCallback != a3)
  {
    self->_waitingForCallback = a3;
    if (a3)
    {
      [(PXEventCoalescer *)self signalObserversBeganPendingEvent];
    }
  }
}

- (void)inputEvent
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXEventCoalescer.m" lineNumber:86 description:{@"Method %s is a responsibility of subclass %@", "-[PXEventCoalescer inputEvent]", v6}];

  abort();
}

- (void)reset
{
  [(PXEventCoalescer *)self cancel];
  [(PXEventCoalescer *)self setWaitingForCallback:0];
  [(PXEventCoalescer *)self setLastEventTime:0.0];

  [(PXEventCoalescer *)self setLastSignalTime:0.0];
}

- (PXEventCoalescer)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXEventCoalescer.m" lineNumber:69 description:{@"%s is not available as initializer", "-[PXEventCoalescer init]"}];

  abort();
}

- (PXEventCoalescer)initWithInterval:(double)a3
{
  v9.receiver = self;
  v9.super_class = PXEventCoalescer;
  v4 = [(PXEventCoalescer *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_interval = a3;
    v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v5->_observers;
    v5->_observers = v6;
  }

  return v5;
}

+ (id)rateLimitingCoalescerWithRate:(double)a3
{
  v3 = [[PXRateLimitingEventCoalescer alloc] initWithRate:a3];

  return v3;
}

+ (id)delayedCoalescerWithDelay:(double)a3
{
  v3 = [[PXDelayEventCoalescer alloc] initWithDelay:a3];

  return v3;
}

@end