@interface TSKCountedObserver
- (TSKCountedObserver)initWithObserver:(id)observer;
- (unint64_t)decrementCount;
- (unint64_t)incrementCount;
- (void)dealloc;
@end

@implementation TSKCountedObserver

- (TSKCountedObserver)initWithObserver:(id)observer
{
  v6.receiver = self;
  v6.super_class = TSKCountedObserver;
  v4 = [(TSKCountedObserver *)&v6 init];
  if (v4)
  {
    v4->mWeakObserver = [objc_alloc(MEMORY[0x277D6C380]) initWithObject:observer];
    v4->mCount = 1;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSKCountedObserver;
  [(TSKCountedObserver *)&v3 dealloc];
}

- (unint64_t)incrementCount
{
  v2 = self->mCount + 1;
  self->mCount = v2;
  return v2;
}

- (unint64_t)decrementCount
{
  mCount = self->mCount;
  if (!mCount)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKCountedObserver decrementCount]"];
    [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKChangeNotifier.m"), 68, @"TSKCountedObserver - attempted to decrement past 0!"}];
    mCount = self->mCount;
  }

  result = mCount - 1;
  self->mCount = mCount - 1;
  return result;
}

@end