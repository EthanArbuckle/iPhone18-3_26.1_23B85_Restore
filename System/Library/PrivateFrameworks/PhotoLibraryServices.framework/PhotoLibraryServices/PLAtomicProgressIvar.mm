@interface PLAtomicProgressIvar
- (NSProgress)progress;
- (PLAtomicProgressIvar)init;
- (void)cancel;
- (void)setProgress:(id)progress;
@end

@implementation PLAtomicProgressIvar

- (void)cancel
{
  progress = [(PLAtomicProgressIvar *)self progress];
  [progress cancel];
}

- (NSProgress)progress
{
  v2 = PLSafeResultWithUnfairLock();

  return v2;
}

- (void)setProgress:(id)progress
{
  progressCopy = progress;
  v3 = progressCopy;
  PLSafeRunWithUnfairLock();
}

- (PLAtomicProgressIvar)init
{
  v3.receiver = self;
  v3.super_class = PLAtomicProgressIvar;
  result = [(PLAtomicProgressIvar *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

@end