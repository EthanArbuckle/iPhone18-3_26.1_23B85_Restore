@interface PLAtomicObject
- (PLAtomicObject)initWithObject:(id)a3;
- (void)atomicallyPerformBlockAndWait:(id)a3;
- (void)invalidateWithHandler:(id)a3;
@end

@implementation PLAtomicObject

- (void)invalidateWithHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__PLAtomicObject_invalidateWithHandler___block_invoke;
  v6[3] = &unk_1E7932AB8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  PLRunWithUnfairLock(&self->_lock, v6);
}

void __40__PLAtomicObject_invalidateWithHandler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;
}

- (void)atomicallyPerformBlockAndWait:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__PLAtomicObject_atomicallyPerformBlockAndWait___block_invoke;
  v6[3] = &unk_1E7932AB8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  PLRunWithUnfairLock(&self->_lock, v6);
}

- (PLAtomicObject)initWithObject:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PLAtomicObject;
  v6 = [(PLAtomicObject *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_object, a3);
  }

  return v7;
}

@end