@interface TSUSharedLocale
+ (id)_singletonAlloc;
+ (id)allocWithZone:(_NSZone *)a3;
+ (id)sharedLocale;
- (TSUSharedLocale)init;
- (__CFLocale)currentLocale;
- (void)datePreferencesChanged:(id)a3;
- (void)dealloc;
@end

@implementation TSUSharedLocale

+ (id)_singletonAlloc
{
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___TSUSharedLocale;
  return objc_msgSendSuper2(&v3, sel_allocWithZone_, 0);
}

+ (id)sharedLocale
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_27703E4BC;
  block[3] = &unk_27A701A20;
  block[4] = a1;
  if (qword_280A639A8 != -1)
  {
    dispatch_once(&qword_280A639A8, block);
  }

  v2 = qword_280A639A0;

  return v2;
}

+ (id)allocWithZone:(_NSZone *)a3
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUSharedLocale allocWithZone:]"];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSULocale.mm"];
  [TSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:1446 isFatal:0 description:"Don't alloc a singleton"];

  +[TSUAssertionHandler logBacktraceThrottled];
  return 0;
}

- (TSUSharedLocale)init
{
  v9.receiver = self;
  v9.super_class = TSUSharedLocale;
  v2 = [(TSUSharedLocale *)&v9 init];
  if (v2)
  {
    v2->mCurrentLocale = CFLocaleCopyCurrent();
    objc_initWeak(&location, v2);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = sub_27703E790;
    v6[3] = &unk_27A701A48;
    objc_copyWeak(&v7, &location);
    v3 = sub_2770382CC(v6);
    mObserverObjects = v2->mObserverObjects;
    v2->mObserverObjects = v3;

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dealloc
{
  mCurrentLocale = self->mCurrentLocale;
  if (mCurrentLocale)
  {
    CFRelease(mCurrentLocale);
    self->mCurrentLocale = 0;
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
    objc_initWeak(&location, self);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = sub_27703E968;
    v6[3] = &unk_27A701A48;
    objc_copyWeak(&v7, &location);
    v4 = sub_2770382CC(v6);
    mObserverObjects = self->mObserverObjects;
    self->mObserverObjects = v4;

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
    return self->mCurrentLocale;
  }

  return result;
}

- (void)datePreferencesChanged:(id)a3
{
  v7 = a3;
  mCurrentLocale = self->mCurrentLocale;
  self->mCurrentLocale = 0;
  __dmb(0xBu);
  if (mCurrentLocale)
  {
    CFRelease(mCurrentLocale);
  }

  mObserverObjects = self->mObserverObjects;
  if (mObserverObjects)
  {
    sub_27703EA60(mObserverObjects);
    v6 = self->mObserverObjects;
    self->mObserverObjects = 0;
  }
}

@end