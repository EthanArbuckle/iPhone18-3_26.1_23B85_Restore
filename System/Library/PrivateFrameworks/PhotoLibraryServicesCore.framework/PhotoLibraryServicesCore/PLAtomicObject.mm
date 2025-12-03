@interface PLAtomicObject
- (PLAtomicObject)initWithObject:(id)object;
- (void)atomicallyPerformBlockAndWait:(id)wait;
- (void)invalidateWithHandler:(id)handler;
@end

@implementation PLAtomicObject

- (void)invalidateWithHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__PLAtomicObject_invalidateWithHandler___block_invoke;
  v6[3] = &unk_1E7932AB8;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
  PLRunWithUnfairLock(&self->_lock, v6);
}

void __40__PLAtomicObject_invalidateWithHandler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;
}

- (void)atomicallyPerformBlockAndWait:(id)wait
{
  waitCopy = wait;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__PLAtomicObject_atomicallyPerformBlockAndWait___block_invoke;
  v6[3] = &unk_1E7932AB8;
  v6[4] = self;
  v7 = waitCopy;
  v5 = waitCopy;
  PLRunWithUnfairLock(&self->_lock, v6);
}

- (PLAtomicObject)initWithObject:(id)object
{
  objectCopy = object;
  v9.receiver = self;
  v9.super_class = PLAtomicObject;
  v6 = [(PLAtomicObject *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_object, object);
  }

  return v7;
}

@end