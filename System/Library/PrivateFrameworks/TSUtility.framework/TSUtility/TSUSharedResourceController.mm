@interface TSUSharedResourceController
- (BOOL)performSynchronousAccessIfResourceIsAvailable:(BOOL)available usingBlock:(id)block;
- (TSUSharedResourceController)init;
- (TSUSharedResourceController)initWithName:(id)name delegate:(id)delegate;
- (id)description;
- (void)acquireResourceWithLockAndPerformSynchronousAccessUsingBlock:(id)block;
- (void)dealloc;
- (void)didBeginAccessToResource:(id)resource isFromThreadWaitingToAcquireResource:(BOOL)acquireResource;
- (void)waitForResourceWithLockAndPerformSynchronousAccessUsingBlock:(id)block;
- (void)wakeUpAllThreadsWaitingForResourceWithLock;
- (void)willEndAccessToResourceForcingToWaitForPendingAccesses:(BOOL)accesses;
@end

@implementation TSUSharedResourceController

- (TSUSharedResourceController)init
{
  v2 = +[TSUAssertionHandler currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUSharedResourceController init]"];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUSharedResourceController.m"];
  [v2 handleFailureInFunction:v3 file:v4 lineNumber:54 description:@"Do not call method"];

  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[TSUSharedResourceController init]"];
  v8 = [v5 exceptionWithName:v6 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (TSUSharedResourceController)initWithName:(id)name delegate:(id)delegate
{
  nameCopy = name;
  delegateCopy = delegate;
  if (!delegateCopy)
  {
    v8 = +[TSUAssertionHandler currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUSharedResourceController initWithName:delegate:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUSharedResourceController.m"];
    [v8 handleFailureInFunction:v9 file:v10 lineNumber:59 description:{@"invalid nil value for '%s'", "delegate"}];
  }

  v30.receiver = self;
  v30.super_class = TSUSharedResourceController;
  v11 = [(TSUSharedResourceController *)&v30 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_delegate, delegateCopy);
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    UUID = v12->_UUID;
    v12->_UUID = uUIDString;

    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"TSUSharedResourceController.Resource.%@", v12->_UUID];
    resourceForThreadKey = v12->_resourceForThreadKey;
    v12->_resourceForThreadKey = v16;

    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"TSUSharedResourceController.HasResource.%@", v12->_UUID];
    hasResourceForThreadKey = v12->_hasResourceForThreadKey;
    v12->_hasResourceForThreadKey = v18;

    v20 = objc_alloc_init(MEMORY[0x277CCA928]);
    resourceLock = v12->_resourceLock;
    v12->_resourceLock = v20;

    [(NSCondition *)v12->_resourceLock setName:nameCopy];
    if (objc_opt_respondsToSelector())
    {
      if ([delegateCopy acquiresResourceAsynchronouslyForSharedResourceController:v12])
      {
        v22 = 2;
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v22 = 0;
    }

    *&v12->_flags = *&v12->_flags & 0xFD | v22;
    v23 = objc_alloc_init(MEMORY[0x277CCA928]);
    waitLock = v12->_waitLock;
    v12->_waitLock = v23;

    v25 = dispatch_group_create();
    accessInProgressGroup = v12->_accessInProgressGroup;
    v12->_accessInProgressGroup = v25;

    v27 = dispatch_group_create();
    willEndAccessGroup = v12->_willEndAccessGroup;
    v12->_willEndAccessGroup = v27;
  }

  return v12;
}

- (void)dealloc
{
  if (self->_acquirerCount)
  {
    v3 = +[TSUAssertionHandler currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUSharedResourceController dealloc]"];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUSharedResourceController.m"];
    [v3 handleFailureInFunction:v4 file:v5 lineNumber:84 description:@"Unbalanced calls to |-didBeginAccessToResource:| and |-willEndAccessToResource|"];
  }

  if (self->_threadsAcquiringResourceCount)
  {
    v6 = +[TSUAssertionHandler currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUSharedResourceController dealloc]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUSharedResourceController.m"];
    [v6 handleFailureInFunction:v7 file:v8 lineNumber:85 description:@"Unbalanced increments and decrements of number of threads acquiring the resource."];
  }

  v9.receiver = self;
  v9.super_class = TSUSharedResourceController;
  [(TSUSharedResourceController *)&v9 dealloc];
}

- (void)didBeginAccessToResource:(id)resource isFromThreadWaitingToAcquireResource:(BOOL)acquireResource
{
  acquireResourceCopy = acquireResource;
  resourceCopy = resource;
  [(NSCondition *)self->_resourceLock lock];
  if (atomic_fetch_add(&self->_acquirerCount, 1u))
  {
    resource = self->_resource;
    v8 = resource == resourceCopy || resource == 0;
    if (!v8 && ([resource isEqual:resourceCopy] & 1) == 0)
    {
      v9 = +[TSUAssertionHandler currentHandler];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUSharedResourceController didBeginAccessToResource:isFromThreadWaitingToAcquireResource:]"];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUSharedResourceController.m"];
      name = [(NSCondition *)self->_resourceLock name];
      [v9 handleFailureInFunction:v10 file:v11 lineNumber:108 description:{@"%@ changed during coordinated access: current (%@), new (%@)", name, self->_resource, resourceCopy}];
    }
  }

  objc_storeStrong(&self->_resource, resource);
  *&self->_flags |= 4u;
  if (acquireResourceCopy)
  {
    threadsAcquiringResourceCount = self->_threadsAcquiringResourceCount;
    self->_threadsAcquiringResourceCount = threadsAcquiringResourceCount - 1;
    if (threadsAcquiringResourceCount <= 0)
    {
      v14 = +[TSUAssertionHandler currentHandler];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUSharedResourceController didBeginAccessToResource:isFromThreadWaitingToAcquireResource:]"];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUSharedResourceController.m"];
      [v14 handleFailureInFunction:v15 file:v16 lineNumber:116 description:@"Unbalanced increments and decrements of number of threads acquiring the resource."];
    }
  }

  __dmb(0xBu);
  [(NSCondition *)self->_resourceLock broadcast];
  [(NSCondition *)self->_resourceLock unlock];
}

- (void)wakeUpAllThreadsWaitingForResourceWithLock
{
  [(NSCondition *)self->_waitLock lock];
  if (self->_waitCount < 1)
  {
LABEL_4:
    waitLock = self->_waitLock;

    [(NSCondition *)waitLock unlock];
  }

  else
  {
    while (1)
    {
      [(NSCondition *)self->_resourceLock broadcast];
      [(NSCondition *)self->_resourceLock unlock];
      [(NSCondition *)self->_waitLock wait];
      waitCount = self->_waitCount;
      [(NSCondition *)self->_waitLock unlock];
      [(NSCondition *)self->_resourceLock lock];
      if (waitCount < 1)
      {
        break;
      }

      [(NSCondition *)self->_waitLock lock];
      if (self->_waitCount <= 0)
      {
        goto LABEL_4;
      }
    }
  }
}

- (void)willEndAccessToResourceForcingToWaitForPendingAccesses:(BOOL)accesses
{
  add = atomic_fetch_add(&self->_acquirerCount, 0xFFFFFFFF);
  if (add != 1 && !accesses)
  {
    if (add <= 0)
    {
      v10 = +[TSUAssertionHandler currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUSharedResourceController willEndAccessToResourceForcingToWaitForPendingAccesses:]"];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUSharedResourceController.m"];
      [v10 handleFailureInFunction:v8 file:v9 lineNumber:195 description:@"Unbalanced calls to |-didBeginAccessToResource:| and |-willEndAccessToResource|"];
    }
  }

  else
  {
    dispatch_group_enter(self->_willEndAccessGroup);
    [(NSCondition *)self->_resourceLock lock];
    if ((*&self->_flags & 4) != 0)
    {
      [(TSUSharedResourceController *)self wakeUpAllThreadsWaitingForResourceWithLock];
    }

    resource = self->_resource;
    self->_resource = 0;

    *&self->_flags &= ~4u;
    __dmb(0xBu);
    [(NSCondition *)self->_resourceLock unlock];
    dispatch_group_wait(self->_accessInProgressGroup, 0xFFFFFFFFFFFFFFFFLL);
    willEndAccessGroup = self->_willEndAccessGroup;

    dispatch_group_leave(willEndAccessGroup);
  }
}

- (BOOL)performSynchronousAccessIfResourceIsAvailable:(BOOL)available usingBlock:(id)block
{
  availableCopy = available;
  blockCopy = block;
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v9 = [threadDictionary objectForKeyedSubscript:self->_hasResourceForThreadKey];
  bOOLValue = [v9 BOOLValue];

  if (!bOOLValue)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __88__TSUSharedResourceController_performSynchronousAccessIfResourceIsAvailable_usingBlock___block_invoke;
    aBlock[3] = &unk_279D66878;
    v19 = threadDictionary;
    selfCopy = self;
    v21 = blockCopy;
    v13 = _Block_copy(aBlock);
    dispatch_group_wait(self->_willEndAccessGroup, 0xFFFFFFFFFFFFFFFFLL);
    [(NSCondition *)self->_resourceLock lock];
    dispatch_group_enter(self->_accessInProgressGroup);
    v14 = self->_resource;
    flags = self->_flags;
    if ((*&flags & 4) != 0 || availableCopy)
    {
      v12 = (*&flags >> 2) & 1;
      [(NSCondition *)self->_resourceLock unlock];
      if ((*&flags & 4) != 0)
      {
        v13[2](v13, v14);
      }

      dispatch_group_leave(self->_accessInProgressGroup);
      goto LABEL_16;
    }

    if (self->_threadsAcquiringResourceCount)
    {
      if ((*&flags & 1) != 0 || ![MEMORY[0x277CCACC8] isMainThread])
      {
        [(NSCondition *)self->_waitLock lock];
        ++self->_waitCount;
        __dmb(0xBu);
        [(NSCondition *)self->_waitLock unlock];
        [(TSUSharedResourceController *)self waitForResourceWithLockAndPerformSynchronousAccessUsingBlock:v13];
LABEL_15:
        LOBYTE(v12) = 1;
LABEL_16:

        goto LABEL_17;
      }

      v16 = self->_threadsAcquiringResourceCount + 1;
    }

    else
    {
      v16 = 1;
    }

    self->_threadsAcquiringResourceCount = v16;
    __dmb(0xBu);
    [(TSUSharedResourceController *)self acquireResourceWithLockAndPerformSynchronousAccessUsingBlock:v13];
    goto LABEL_15;
  }

  v11 = [threadDictionary objectForKeyedSubscript:self->_resourceForThreadKey];
  (*(blockCopy + 2))(blockCopy, v11);

  LOBYTE(v12) = 1;
LABEL_17:

  return v12;
}

uint64_t __88__TSUSharedResourceController_performSynchronousAccessIfResourceIsAvailable_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 32);
  v5 = a2;
  [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v4];
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (v5)
  {
    [v6 setObject:v5 forKeyedSubscript:*(v7 + 24)];
  }

  else
  {
    [v6 removeObjectForKey:*(v7 + 24)];
  }

  (*(*(a1 + 48) + 16))();

  [*(a1 + 32) removeObjectForKey:*(*(a1 + 40) + 32)];
  v8 = *(a1 + 32);
  v9 = *(*(a1 + 40) + 24);

  return [v8 removeObjectForKey:v9];
}

- (void)acquireResourceWithLockAndPerformSynchronousAccessUsingBlock:(id)block
{
  blockCopy = block;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (!WeakRetained)
  {
    v6 = +[TSUAssertionHandler currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUSharedResourceController acquireResourceWithLockAndPerformSynchronousAccessUsingBlock:]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUSharedResourceController.m"];
    [v6 handleFailureInFunction:v7 file:v8 lineNumber:293 description:{@"invalid nil value for '%s'", "delegate"}];
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __92__TSUSharedResourceController_acquireResourceWithLockAndPerformSynchronousAccessUsingBlock___block_invoke;
  aBlock[3] = &unk_279D668C8;
  v9 = WeakRetained;
  v17 = v9;
  selfCopy = self;
  v10 = _Block_copy(aBlock);
  if ((*&self->_flags & 2) != 0)
  {
    [(NSCondition *)self->_waitLock lock];
    ++self->_waitCount;
    __dmb(0xBu);
    [(NSCondition *)self->_waitLock unlock];
    v11 = dispatch_semaphore_create(0);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __92__TSUSharedResourceController_acquireResourceWithLockAndPerformSynchronousAccessUsingBlock___block_invoke_3;
    v14[3] = &unk_279D668F0;
    v15 = v11;
    v12 = v10[2];
    v13 = v11;
    v12(v10, v14);
    [(TSUSharedResourceController *)self waitForResourceWithLockAndPerformSynchronousAccessUsingBlock:blockCopy];
    dispatch_semaphore_signal(v13);
  }

  else
  {
    [(NSCondition *)self->_resourceLock unlock];
    dispatch_group_leave(self->_accessInProgressGroup);
    (v10[2])(v10, blockCopy);
  }
}

void __92__TSUSharedResourceController_acquireResourceWithLockAndPerformSynchronousAccessUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __92__TSUSharedResourceController_acquireResourceWithLockAndPerformSynchronousAccessUsingBlock___block_invoke_2;
  v7[3] = &unk_279D668A0;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  [v5 acquireResourceForSharedResourceController:v4 usingSetResourceBlock:v7];
}

uint64_t __92__TSUSharedResourceController_acquireResourceWithLockAndPerformSynchronousAccessUsingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 didBeginAccessToResource:v4 isFromThreadWaitingToAcquireResource:1];
  (*(*(a1 + 40) + 16))();

  v5 = *(a1 + 32);

  return [v5 willEndAccessToResource];
}

- (void)waitForResourceWithLockAndPerformSynchronousAccessUsingBlock:(id)block
{
  blockCopy = block;
  v4 = 0;
  do
  {
    v5 = v4;
    dispatch_group_leave(self->_accessInProgressGroup);
    [(NSCondition *)self->_resourceLock wait];
    dispatch_group_enter(self->_accessInProgressGroup);
    v4 = self->_resource;
  }

  while ((*&self->_flags & 4) == 0);
  [(NSCondition *)self->_waitLock lock];
  v6 = self->_waitCount - 1;
  self->_waitCount = v6;
  __dmb(0xBu);
  if (!v6)
  {
    [(NSCondition *)self->_waitLock broadcast];
  }

  [(NSCondition *)self->_waitLock unlock];
  [(NSCondition *)self->_resourceLock unlock];
  blockCopy[2](blockCopy, v4);
  dispatch_group_leave(self->_accessInProgressGroup);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = TSUSharedResourceController;
  v4 = [(TSUSharedResourceController *)&v8 description];
  name = [(NSCondition *)self->_resourceLock name];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, name];

  return v6;
}

@end