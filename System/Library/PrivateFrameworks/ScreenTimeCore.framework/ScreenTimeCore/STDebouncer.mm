@interface STDebouncer
- (STDebouncer)initWithMinCoalescenceInterval:(double)interval maxCoalescenceInterval:(double)coalescenceInterval;
- (STDebouncerDelegate)delegate;
- (void)_delegate;
- (void)_idle;
- (void)_timeout;
- (void)bounce:(id)bounce;
@end

@implementation STDebouncer

- (STDebouncer)initWithMinCoalescenceInterval:(double)interval maxCoalescenceInterval:(double)coalescenceInterval
{
  v7.receiver = self;
  v7.super_class = STDebouncer;
  result = [(STDebouncer *)&v7 init];
  if (result)
  {
    result->_minCoalescenceInterval = interval;
    result->_maxCoalescenceInterval = coalescenceInterval;
  }

  return result;
}

- (void)bounce:(id)bounce
{
  v5 = MEMORY[0x1E696AF00];
  bounceCopy = bounce;
  if ([v5 isMainThread])
  {
    [(STDebouncer *)self setValue:bounceCopy];

    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__idle object:0];
    [(STDebouncer *)self minCoalescenceInterval];
    [(STDebouncer *)self performSelector:sel__idle withObject:0 afterDelay:?];
    [(STDebouncer *)self maxCoalescenceInterval];

    [(STDebouncer *)self performSelector:sel__timeout withObject:0 afterDelay:?];
  }

  else
  {
    [(STDebouncer *)self performSelectorOnMainThread:a2 withObject:bounceCopy waitUntilDone:0];
  }
}

- (void)_idle
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__timeout object:0];

  [(STDebouncer *)self _delegate];
}

- (void)_timeout
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__idle object:0];
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__timeout object:0];

  [(STDebouncer *)self _delegate];
}

- (void)_delegate
{
  delegate = [(STDebouncer *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    value = [(STDebouncer *)self value];
    [delegate debouncer:self didDebounce:value];
  }
}

- (STDebouncerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end