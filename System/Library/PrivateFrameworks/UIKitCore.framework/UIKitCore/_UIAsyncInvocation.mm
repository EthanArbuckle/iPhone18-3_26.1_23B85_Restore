@interface _UIAsyncInvocation
+ (_UIAsyncInvocation)invocationWithBlock:(id)block;
+ (id)emptyInvocation;
- (id)invoke;
- (void)dealloc;
@end

@implementation _UIAsyncInvocation

+ (_UIAsyncInvocation)invocationWithBlock:(id)block
{
  blockCopy = block;
  v4 = objc_alloc_init(_UIAsyncInvocation);
  v5 = v4;
  if (v4)
  {
    atomic_store(0, &v4->_invokeCallCount);
    atomic_store(0, &v4->_invocationBlockHasBeenCalled);
    atomic_store(0, &v4->_observer);
    v6 = [blockCopy copy];
    invocationBlock = v5->_invocationBlock;
    v5->_invocationBlock = v6;

    v8 = v5;
  }

  return v5;
}

- (id)invoke
{
  atomic_fetch_add(&self->_invokeCallCount, 1uLL);
  p_observer = &self->_observer;
  if (!atomic_load(&self->_observer))
  {
    v5 = objc_alloc_init(_UIAsyncInvocationObserver);
    v6 = 0;
    atomic_compare_exchange_strong(p_observer, &v6, v5);
    if (v6)
    {
      CFRelease(v5);
    }
  }

  if ((atomic_exchange(&self->_invocationBlockHasBeenCalled, 1u) & 1) == 0)
  {
    v7 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __28___UIAsyncInvocation_invoke__block_invoke;
    block[3] = &unk_1E70F3590;
    block[4] = self;
    dispatch_async(v7, block);
  }

  v8 = atomic_load(&self->_observer);
  v9 = v8;
  atomic_fetch_add(&self->_invokeCallCount, 0xFFFFFFFFFFFFFFFFLL);

  return v9;
}

- (void)dealloc
{
  v3 = atomic_load(&self->_observer);
  if (v3)
  {
    v5 = atomic_load(&self->_invokeCallCount);
    CFRelease(v3);
    if (v5)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UIAsyncInvocation.m" lineNumber:77 description:{@"Attempting to deallocate _UIAsyncInvocation<%p> while still invoking!  invoke count: %li", self, v5}];
    }
  }

  v7.receiver = self;
  v7.super_class = _UIAsyncInvocation;
  [(_UIAsyncInvocation *)&v7 dealloc];
}

+ (id)emptyInvocation
{
  v2 = objc_opt_class();

  return [v2 invocationWithBlock:&__block_literal_global_671];
}

@end