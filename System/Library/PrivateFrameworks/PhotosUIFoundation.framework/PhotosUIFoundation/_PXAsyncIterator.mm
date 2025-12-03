@interface _PXAsyncIterator
- (_PXAsyncIterator)init;
- (_PXAsyncIterator)initWithCount:(unint64_t)count handler:(id)handler;
- (void)_executeNextRun;
- (void)next;
- (void)stop;
@end

@implementation _PXAsyncIterator

- (void)stop
{
  [(_PXAsyncIterator *)self setHasStopped:1];
  self->_index = 0;
  completion = [(_PXAsyncIterator *)self completion];
  if (completion)
  {
    v4 = completion;
    completion[2]();
    [(_PXAsyncIterator *)self setCompletion:0];
    completion = v4;
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
    handler = [(_PXAsyncIterator *)self handler];
    handler[2](handler, self);
  }
}

- (_PXAsyncIterator)initWithCount:(unint64_t)count handler:(id)handler
{
  handlerCopy = handler;
  v12.receiver = self;
  v12.super_class = _PXAsyncIterator;
  v7 = [(_PXAsyncIterator *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_count = count;
    v9 = _Block_copy(handlerCopy);
    handler = v8->_handler;
    v8->_handler = v9;
  }

  return v8;
}

- (_PXAsyncIterator)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXAsyncIterator.m" lineNumber:33 description:{@"%s is not available as initializer", "-[_PXAsyncIterator init]"}];

  abort();
}

@end