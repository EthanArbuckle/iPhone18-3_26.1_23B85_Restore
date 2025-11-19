@interface STDebouncer
- (STDebouncer)initWithMinCoalescenceInterval:(double)a3 maxCoalescenceInterval:(double)a4;
- (STDebouncerDelegate)delegate;
- (void)_delegate;
- (void)_idle;
- (void)_timeout;
- (void)bounce:(id)a3;
@end

@implementation STDebouncer

- (STDebouncer)initWithMinCoalescenceInterval:(double)a3 maxCoalescenceInterval:(double)a4
{
  v7.receiver = self;
  v7.super_class = STDebouncer;
  result = [(STDebouncer *)&v7 init];
  if (result)
  {
    result->_minCoalescenceInterval = a3;
    result->_maxCoalescenceInterval = a4;
  }

  return result;
}

- (void)bounce:(id)a3
{
  v5 = MEMORY[0x1E696AF00];
  v6 = a3;
  if ([v5 isMainThread])
  {
    [(STDebouncer *)self setValue:v6];

    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__idle object:0];
    [(STDebouncer *)self minCoalescenceInterval];
    [(STDebouncer *)self performSelector:sel__idle withObject:0 afterDelay:?];
    [(STDebouncer *)self maxCoalescenceInterval];

    [(STDebouncer *)self performSelector:sel__timeout withObject:0 afterDelay:?];
  }

  else
  {
    [(STDebouncer *)self performSelectorOnMainThread:a2 withObject:v6 waitUntilDone:0];
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
  v4 = [(STDebouncer *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [(STDebouncer *)self value];
    [v4 debouncer:self didDebounce:v3];
  }
}

- (STDebouncerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end