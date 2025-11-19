@interface PLAtomicProgressIvar
- (NSProgress)progress;
- (PLAtomicProgressIvar)init;
- (void)cancel;
- (void)setProgress:(id)a3;
@end

@implementation PLAtomicProgressIvar

- (void)cancel
{
  v2 = [(PLAtomicProgressIvar *)self progress];
  [v2 cancel];
}

- (NSProgress)progress
{
  v2 = PLSafeResultWithUnfairLock();

  return v2;
}

- (void)setProgress:(id)a3
{
  v4 = a3;
  v3 = v4;
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