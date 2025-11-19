@interface _PXAsyncIterator
- (_PXAsyncIterator)init;
- (_PXAsyncIterator)initWithCount:(unint64_t)a3 handler:(id)a4;
- (void)_executeNextRun;
- (void)next;
- (void)stop;
@end

@implementation _PXAsyncIterator

- (void)stop
{
  [(_PXAsyncIterator *)self setHasStopped:1];
  self->_index = 0;
  v3 = [(_PXAsyncIterator *)self completion];
  if (v3)
  {
    v4 = v3;
    v3[2]();
    [(_PXAsyncIterator *)self setCompletion:0];
    v3 = v4;
  }
}

- (void)next
{
  if (![(_PXAsyncIterator *)self hasStopped])
  {
    ++self->_index;

    [(_PXAsyncIterator *)self _executeNextRun];
  }
}

- (void)_executeNextRun
{
  if (self->_index >= self->_count)
  {

    [(_PXAsyncIterator *)self stop];
  }

  else
  {
    v3 = [(_PXAsyncIterator *)self handler];
    v3[2](v3, self);
  }
}

- (_PXAsyncIterator)initWithCount:(unint64_t)a3 handler:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = _PXAsyncIterator;
  v7 = [(_PXAsyncIterator *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_count = a3;
    v9 = _Block_copy(v6);
    handler = v8->_handler;
    v8->_handler = v9;
  }

  return v8;
}

- (_PXAsyncIterator)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXAsyncIterator.m" lineNumber:33 description:{@"%s is not available as initializer", "-[_PXAsyncIterator init]"}];

  abort();
}

@end