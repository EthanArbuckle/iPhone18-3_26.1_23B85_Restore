@interface TSDImageProvider
+ (id)allocWithZone:(_NSZone *)zone;
- (BOOL)isValid;
- (CGSize)naturalSize;
- (TSDImageProvider)initWithImageData:(id)data;
- (void)addInterest;
- (void)dealloc;
- (void)drawImageInContext:(CGContext *)context rect:(CGRect)rect;
- (void)flushIfInterestLessThan:(int)than;
- (void)ownerAccess;
- (void)release;
- (void)removeInterest;
- (void)removeOwner;
@end

@implementation TSDImageProvider

+ (id)allocWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___TSDImageProvider;
  result = objc_msgSendSuper2(&v4, sel_allocWithZone_, zone);
  if (result)
  {
    atomic_store(1u, result + 10);
  }

  return result;
}

- (TSDImageProvider)initWithImageData:(id)data
{
  if (!data)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageProvider initWithImageData:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageProvider.mm"), 47, @"invalid nil value for '%s'", "imageData"}];
  }

  v9.receiver = self;
  v9.super_class = TSDImageProvider;
  v7 = [(TSDImageProvider *)&v9 init];
  if (v7)
  {
    v7->mImageData = data;
    [(TSDImageProvider *)v7 i_commonInit];
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDImageProvider;
  [(TSDImageProvider *)&v3 dealloc];
}

- (CGSize)naturalSize
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageProvider naturalSize]"];
  [currentHandler handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageProvider.mm"), 79, @"subclasses of TSDImageProvider must implement -naturalSize"}];
  v4 = 100.0;
  v5 = 100.0;
  result.height = v5;
  result.width = v4;
  return result;
}

- (BOOL)isValid
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageProvider isValid]"];
  [currentHandler handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageProvider.mm"), 96, @"subclasses of TSDImageProvider must implement -isValid"}];
  return 1;
}

- (void)drawImageInContext:(CGContext *)context rect:(CGRect)rect
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageProvider drawImageInContext:rect:]"];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageProvider.mm"];

  [currentHandler handleFailureInFunction:v5 file:v6 lineNumber:108 description:@"subclasses of TSDImageProvider must implement -drawImageInContext:rect:"];
}

- (void)addInterest
{
  os_unfair_lock_lock(&self->mInterestLock);
  ++self->mInterest;

  os_unfair_lock_unlock(&self->mInterestLock);
}

- (void)removeInterest
{
  os_unfair_lock_lock(&self->mInterestLock);
  --self->mInterest;

  os_unfair_lock_unlock(&self->mInterestLock);
}

- (void)flushIfInterestLessThan:(int)than
{
  os_unfair_lock_lock(&self->mInterestLock);
  if (self->mInterest < than)
  {
    [(TSDImageProvider *)self flush];
  }

  os_unfair_lock_unlock(&self->mInterestLock);
}

- (void)removeOwner
{
  p_mOwnerCount = &self->mOwnerCount;
  v4 = atomic_load(&self->mOwnerCount);
  if (v4 <= 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageProvider removeOwner]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageProvider.mm"), 184, @"-removeOwner called too many times"}];
  }

  if (atomic_fetch_add(&p_mOwnerCount->__a_.__a_value, 0xFFFFFFFF) == 1)
  {
    mFlushingManager = self->mFlushingManager;
    if (mFlushingManager)
    {

      [(TSUFlushingManager *)mFlushingManager removeObject:self];
    }
  }
}

- (void)ownerAccess
{
  v3 = atomic_load(&self->mRetainCount);
  v4 = atomic_load(&self->mOwnerCount);
  if (v3 < v4)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageProvider ownerAccess]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageProvider.mm"), 198, @"Bad retain count"}];
  }

  selfCopy = self;
  mFlushingManager = self->mFlushingManager;
  if (mFlushingManager)
  {

    [(TSUFlushingManager *)mFlushingManager removeObject:self];
  }
}

- (void)release
{
  add = atomic_fetch_add(&self->mRetainCount.__a_.__a_value, 0xFFFFFFFF);
  v4 = add - 1;
  if (add == 1)
  {

    [(TSDImageProvider *)self dealloc];
  }

  else
  {
    v5 = atomic_load(&self->mOwnerCount);
    if (v4 == v5 && [(TSDImageProvider *)self hasFlushableContent])
    {
      objc_sync_enter(self);
      v6 = atomic_load(&self->mOwnerCount);
      if (v4 == v6 && [(TSDImageProvider *)self hasFlushableContent])
      {
        [objc_msgSend(MEMORY[0x277D6C2E0] "sharedManager")];
      }

      objc_sync_exit(self);
    }
  }
}

@end