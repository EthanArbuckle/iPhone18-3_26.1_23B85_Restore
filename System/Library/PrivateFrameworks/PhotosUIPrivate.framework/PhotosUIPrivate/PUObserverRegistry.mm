@interface PUObserverRegistry
- (PUObserverRegistry)init;
- (void)enumerateObserversWithBlock:(id)block;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation PUObserverRegistry

- (void)enumerateObserversWithBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    weakObjectsPointerArray = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    observerQueue = self->__observerQueue;
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __50__PUObserverRegistry_enumerateObserversWithBlock___block_invoke;
    v13 = &unk_1E7B80C38;
    selfCopy = self;
    v7 = weakObjectsPointerArray;
    v15 = v7;
    dispatch_sync(observerQueue, &v10);
    if ([v7 count])
    {
      v8 = 0;
      do
      {
        v9 = [v7 pointerAtIndex:v8];
        blockCopy[2](blockCopy, v9);

        ++v8;
      }

      while (v8 < [v7 count]);
    }
  }
}

void __50__PUObserverRegistry_enumerateObserversWithBlock___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _observers];
  if ([v4 count])
  {
    v2 = 0;
    do
    {
      v3 = [v4 pointerAtIndex:v2];
      if (v3)
      {
        [*(a1 + 40) addPointer:v3];
      }

      ++v2;
    }

    while (v2 < [v4 count]);
  }
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  v5 = observerCopy;
  if (observerCopy)
  {
    observerQueue = self->__observerQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __41__PUObserverRegistry_unregisterObserver___block_invoke;
    v7[3] = &unk_1E7B80C38;
    v7[4] = self;
    v8 = observerCopy;
    dispatch_sync(observerQueue, v7);
  }
}

void __41__PUObserverRegistry_unregisterObserver___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _observers];
  if ([v3 count])
  {
    v2 = 0;
    while ([v3 pointerAtIndex:v2] != *(a1 + 40))
    {
      if (++v2 >= [v3 count])
      {
        goto LABEL_7;
      }
    }

    [v3 removePointerAtIndex:v2];
  }

LABEL_7:
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  v5 = observerCopy;
  if (observerCopy)
  {
    observerQueue = self->__observerQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __39__PUObserverRegistry_registerObserver___block_invoke;
    v7[3] = &unk_1E7B80C38;
    v7[4] = self;
    v8 = observerCopy;
    dispatch_sync(observerQueue, v7);
  }
}

void __39__PUObserverRegistry_registerObserver___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _observers];
  if ([v3 count])
  {
    v2 = 0;
    while ([v3 pointerAtIndex:v2] != *(a1 + 40))
    {
      if (++v2 >= [v3 count])
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    [v3 addPointer:*(a1 + 40)];
  }
}

- (PUObserverRegistry)init
{
  v8.receiver = self;
  v8.super_class = PUObserverRegistry;
  v2 = [(PUObserverRegistry *)&v8 init];
  if (v2)
  {
    weakObjectsPointerArray = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    observers = v2->__observers;
    v2->__observers = weakObjectsPointerArray;

    v5 = dispatch_queue_create("com.apple.photosui.observerregistry.observer-queue", 0);
    observerQueue = v2->__observerQueue;
    v2->__observerQueue = v5;
  }

  return v2;
}

@end