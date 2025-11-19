@interface TSUFlushableObject
+ (id)allocWithZone:(_NSZone *)a3;
- (TSUFlushableObject)init;
- (id)ownerAutoreleasedAccess;
- (void)dealloc;
- (void)flush;
- (void)ownerRelease;
- (void)ownerWillAccess;
- (void)release;
@end

@implementation TSUFlushableObject

+ (id)allocWithZone:(_NSZone *)a3
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___TSUFlushableObject;
  result = objc_msgSendSuper2(&v4, sel_allocWithZone_, a3);
  if (result)
  {
    *(result + 2) = 1;
  }

  return result;
}

- (TSUFlushableObject)init
{
  v4.receiver = self;
  v4.super_class = TSUFlushableObject;
  v2 = [(TSUFlushableObject *)&v4 init];
  if (v2)
  {
    v2->_flushingManagerIvarLock = objc_alloc_init(MEMORY[0x277CCAC60]);
  }

  return v2;
}

- (void)dealloc
{
  self->_flushingManagerIvarLock = 0;
  v3.receiver = self;
  v3.super_class = TSUFlushableObject;
  [(TSUFlushableObject *)&v3 dealloc];
}

- (void)ownerRelease
{
  add = atomic_fetch_add(&self->_ownerCount, 0xFFFFFFFF);
  if (add <= 0)
  {
    v5 = +[TSUAssertionHandler currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUFlushableObject ownerRelease]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUFlushableObject.m"), 68, @"-ownerRelease called too many times"}];
  }

  else if (add == 1)
  {
    [(NSLocking *)self->_flushingManagerIvarLock lock];
    flushingManager = self->_flushingManager;
    if (flushingManager)
    {
      [(TSUFlushingManager *)flushingManager removeObject:self];
      self->_flushingManager = 0;
    }

    [(NSLocking *)self->_flushingManagerIvarLock unlock];
  }

  if (atomic_fetch_add(&self->_retainCount, 0xFFFFFFFF) == 1)
  {

    [(TSUFlushableObject *)self dealloc];
  }
}

- (id)ownerAutoreleasedAccess
{
  if (self->_retainCount < self->_ownerCount)
  {
    v3 = +[TSUAssertionHandler currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUFlushableObject ownerAutoreleasedAccess]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUFlushableObject.m"), 92, @"Bad retain count"}];
  }

  v5 = self;
  [(NSLocking *)self->_flushingManagerIvarLock lock];
  flushingManager = self->_flushingManager;
  if (flushingManager)
  {
    [(TSUFlushingManager *)flushingManager unsafeToFlush:self];
  }

  [(NSLocking *)self->_flushingManagerIvarLock unlock];
  return self;
}

- (void)ownerWillAccess
{
  if (self->_retainCount < self->_ownerCount)
  {
    v3 = +[TSUAssertionHandler currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUFlushableObject ownerWillAccess]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUFlushableObject.m"), 112, @"Bad retain count"}];
  }

  v5 = self;
  [(NSLocking *)self->_flushingManagerIvarLock lock];
  flushingManager = self->_flushingManager;
  if (flushingManager)
  {
    [(TSUFlushingManager *)flushingManager unsafeToFlush:self];
  }

  flushingManagerIvarLock = self->_flushingManagerIvarLock;

  [(NSLocking *)flushingManagerIvarLock unlock];
}

- (void)release
{
  add = atomic_fetch_add(&self->_retainCount, 0xFFFFFFFF);
  v4 = add - 1;
  if (add == 1)
  {

    [(TSUFlushableObject *)self dealloc];
  }

  else if (v4 == self->_ownerCount && [(TSUFlushableObject *)self hasFlushableContent])
  {
    objc_sync_enter(self);
    if (v4 == self->_ownerCount)
    {
      v5 = [(TSUFlushableObject *)self hasFlushableContent];
      objc_sync_exit(self);
      if (v5)
      {
        [(NSLocking *)self->_flushingManagerIvarLock lock];
        flushingManager = self->_flushingManager;
        if (flushingManager)
        {
          [(TSUFlushingManager *)flushingManager safeToFlush:self wasAccessed:1];
        }

        else
        {
          [+[TSUFlushingManager sharedManager](TSUFlushingManager "sharedManager")];
          self->_flushingManager = +[TSUFlushingManager sharedManager];
        }

        flushingManagerIvarLock = self->_flushingManagerIvarLock;

        [(NSLocking *)flushingManagerIvarLock unlock];
      }
    }

    else
    {

      objc_sync_exit(self);
    }
  }
}

- (void)flush
{
  objc_sync_enter(self);
  [(TSUFlushableObject *)self unload];
  self->_flushingManager = 0;

  objc_sync_exit(self);
}

@end