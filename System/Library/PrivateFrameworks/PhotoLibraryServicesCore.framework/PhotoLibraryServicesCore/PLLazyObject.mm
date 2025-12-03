@interface PLLazyObject
- (PLLazyObject)initWithObject:(id)object;
- (PLLazyObject)initWithRetry:(BOOL)retry block:(id)block;
- (id)currentObjectValueWithoutForcingEvaluation;
- (id)objectValue;
- (void)invalidate;
- (void)invalidateWithHandler:(id)handler;
- (void)resetObject;
- (void)resetObjectWithHandler:(id)handler;
@end

@implementation PLLazyObject

- (id)objectValue
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __27__PLLazyObject_objectValue__block_invoke;
  v4[3] = &unk_1E79325E0;
  v4[4] = self;
  v2 = PLResultWithUnfairLock(&self->_lock, v4);

  return v2;
}

id __27__PLLazyObject_objectValue__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*(v1 + 24))
  {
    v5 = *(v1 + 16);
    if (v5)
    {
      v6 = (*(v5 + 16))();
      v7 = *(a1 + 32);
      v8 = *(v7 + 24);
      *(v7 + 24) = v6;

      v1 = *(a1 + 32);
      if ((*(v1 + 8) & 1) == 0)
      {
        v9 = *(v1 + 16);
        *(v1 + 16) = 0;

        v1 = *(a1 + 32);
      }
    }
  }

  v2 = *(v1 + 24);

  return v2;
}

- (id)currentObjectValueWithoutForcingEvaluation
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__PLLazyObject_currentObjectValueWithoutForcingEvaluation__block_invoke;
  v4[3] = &unk_1E79325E0;
  v4[4] = self;
  v2 = PLResultWithUnfairLock(&self->_lock, v4);

  return v2;
}

- (void)invalidate
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __26__PLLazyObject_invalidate__block_invoke;
  v2[3] = &unk_1E79329F0;
  v2[4] = self;
  PLRunWithUnfairLock(&self->_lock, v2);
}

void __26__PLLazyObject_invalidate__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  *(v4 + 24) = 0;
}

- (void)invalidateWithHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38__PLLazyObject_invalidateWithHandler___block_invoke;
  v6[3] = &unk_1E79325E0;
  v6[4] = self;
  v5 = PLResultWithUnfairLock(&self->_lock, v6);
  if (v5)
  {
    handlerCopy[2](handlerCopy, v5);
  }
}

void *__38__PLLazyObject_invalidateWithHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = *(*(a1 + 32) + 24);
  v5 = v4;
  v6 = *(a1 + 32);
  v7 = *(v6 + 24);
  *(v6 + 24) = 0;

  return v4;
}

- (void)resetObjectWithHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__PLLazyObject_resetObjectWithHandler___block_invoke;
  v6[3] = &unk_1E79325E0;
  v6[4] = self;
  v5 = PLResultWithUnfairLock(&self->_lock, v6);
  if (v5)
  {
    handlerCopy[2](handlerCopy, v5);
  }
}

void *__39__PLLazyObject_resetObjectWithHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = v2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  *(v4 + 24) = 0;

  return v2;
}

- (void)resetObject
{
  if (!self->_shouldRetryBlockOnNil)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLLazyObject.m" lineNumber:79 description:@"Only retriable lazy objects can be reset"];
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __27__PLLazyObject_resetObject__block_invoke;
  v5[3] = &unk_1E79329F0;
  v5[4] = self;
  PLRunWithUnfairLock(&self->_lock, v5);
}

void __27__PLLazyObject_resetObject__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  *(v1 + 24) = 0;
}

- (PLLazyObject)initWithRetry:(BOOL)retry block:(id)block
{
  blockCopy = block;
  v12.receiver = self;
  v12.super_class = PLLazyObject;
  v7 = [(PLLazyObject *)&v12 init];
  if (v7)
  {
    v8 = [blockCopy copy];
    block = v7->_block;
    v7->_block = v8;

    v7->_lock._os_unfair_lock_opaque = 0;
    v7->_shouldRetryBlockOnNil = retry;
    v10 = v7;
  }

  return v7;
}

- (PLLazyObject)initWithObject:(id)object
{
  objectCopy = object;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __31__PLLazyObject_initWithObject___block_invoke;
  v8[3] = &unk_1E79325E0;
  v9 = objectCopy;
  v5 = objectCopy;
  v6 = [(PLLazyObject *)self initWithBlock:v8];

  return v6;
}

@end