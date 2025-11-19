@interface SWCrashRetryThrottler
- (BOOL)shouldReloadAfterWebProcessCrash;
@end

@implementation SWCrashRetryThrottler

- (BOOL)shouldReloadAfterWebProcessCrash
{
  v3 = [(SWCrashRetryThrottler *)self crashed];
  if (!v3)
  {
    [(SWCrashRetryThrottler *)self setCrashed:1];
  }

  return !v3;
}

@end