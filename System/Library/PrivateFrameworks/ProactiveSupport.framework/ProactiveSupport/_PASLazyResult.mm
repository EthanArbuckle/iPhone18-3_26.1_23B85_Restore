@interface _PASLazyResult
- (_PASLazyResult)initWithBlock:(id)block;
- (_PASLazyResult)initWithResult:(id)result;
- (id)_init;
- (id)_initWithBlock:(id)block;
- (void)dealloc;
@end

@implementation _PASLazyResult

- (void)dealloc
{
  pthread_mutex_destroy(&self->_lock);
  v3.receiver = self;
  v3.super_class = _PASLazyResult;
  [(_PASLazyResult *)&v3 dealloc];
}

- (id)_init
{
  v5.receiver = self;
  v5.super_class = _PASLazyResult;
  v2 = [(_PASLazyResult *)&v5 init];
  v3 = v2;
  if (v2)
  {
    pthread_mutex_init(&v2->_lock, 0);
  }

  return v3;
}

- (_PASLazyResult)initWithResult:(id)result
{
  resultCopy = result;
  v5 = [[_PASLazyImmortalResult alloc] initWithResult:resultCopy];

  return &v5->super;
}

- (_PASLazyResult)initWithBlock:(id)block
{
  blockCopy = block;
  v5 = [[_PASLazyImmortalResult alloc] _initWithBlock:blockCopy];

  return v5;
}

- (id)_initWithBlock:(id)block
{
  blockCopy = block;
  _init = [(_PASLazyResult *)self _init];
  if (_init)
  {
    if (!blockCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:_init file:@"_PASCachedResult.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"block != nil"}];
    }

    v7 = [blockCopy copy];
    v8 = _init[10];
    _init[10] = v7;
  }

  return _init;
}

@end