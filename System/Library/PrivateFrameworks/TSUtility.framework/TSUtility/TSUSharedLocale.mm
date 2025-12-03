@interface TSUSharedLocale
+ (id)_singletonAlloc;
+ (id)allocWithZone:(_NSZone *)zone;
+ (id)sharedLocale;
- (TSUSharedLocale)init;
- (__CFLocale)currentLocale;
- (void)datePreferencesChanged:(id)changed;
- (void)dealloc;
@end

@implementation TSUSharedLocale

+ (id)_singletonAlloc
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___TSUSharedLocale;
  return objc_msgSendSuper2(&v3, sel_allocWithZone_, 0);
}

+ (id)sharedLocale
{
  result = sharedLocale_sSingletonInstance;
  if (!sharedLocale_sSingletonInstance)
  {
    objc_sync_enter(self);
    if (!sharedLocale_sSingletonInstance)
    {
      v4 = [objc_msgSend(self "_singletonAlloc")];
      __dmb(0xBu);
      sharedLocale_sSingletonInstance = v4;
      if (!v4)
      {
        v5 = +[TSUAssertionHandler currentHandler];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUSharedLocale sharedLocale]"];
        [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSULocale.m"), 38, @"Couldn't create singleton instance of %@", self}];
      }
    }

    objc_sync_exit(self);
    return sharedLocale_sSingletonInstance;
  }

  return result;
}

+ (id)allocWithZone:(_NSZone *)zone
{
  v3 = +[TSUAssertionHandler currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUSharedLocale allocWithZone:]"];
  [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSULocale.m"), 38, @"Don't alloc a singleton"}];
  return 0;
}

- (TSUSharedLocale)init
{
  v7.receiver = self;
  v7.super_class = TSUSharedLocale;
  v2 = [(TSUSharedLocale *)&v7 init];
  if (v2)
  {
    v2->mCurrentLocale = CFLocaleCopyCurrent();
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __23__TSUSharedLocale_init__block_invoke;
    v6[3] = &unk_279D65E18;
    v6[4] = v2;
    v3 = TSURegisterLocaleChangeObserver(v6);
    v2->mObserverObjects = v3;
    v4 = v3;
  }

  return v2;
}

- (void)dealloc
{
  mCurrentLocale = self->mCurrentLocale;
  if (mCurrentLocale)
  {
    CFRelease(mCurrentLocale);
  }

  v4.receiver = self;
  v4.super_class = TSUSharedLocale;
  [(TSUSharedLocale *)&v4 dealloc];
}

- (__CFLocale)currentLocale
{
  result = self->mCurrentLocale;
  if (!result)
  {
    result = CFLocaleCopyCurrent();
    self->mCurrentLocale = result;
  }

  if (!self->mObserverObjects)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __32__TSUSharedLocale_currentLocale__block_invoke;
    v6[3] = &unk_279D65E18;
    v6[4] = self;
    v4 = TSURegisterLocaleChangeObserver(v6);
    self->mObserverObjects = v4;
    v5 = v4;
    return self->mCurrentLocale;
  }

  return result;
}

- (void)datePreferencesChanged:(id)changed
{
  selfCopy = self;
  mCurrentLocale = self->mCurrentLocale;
  selfCopy->mCurrentLocale = 0;
  __dmb(0xBu);
  v6 = selfCopy;
  if (mCurrentLocale)
  {
    CFRelease(mCurrentLocale);
    selfCopy = v6;
  }

  mObserverObjects = selfCopy->mObserverObjects;
  if (mObserverObjects)
  {
    TSURemoveLocaleChangeObserver(mObserverObjects);

    v6->mObserverObjects = 0;
  }

  MEMORY[0x2821F96F8]();
}

@end