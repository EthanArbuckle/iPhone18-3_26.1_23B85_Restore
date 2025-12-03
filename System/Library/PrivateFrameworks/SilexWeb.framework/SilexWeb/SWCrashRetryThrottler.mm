@interface SWCrashRetryThrottler
- (BOOL)shouldReloadAfterWebProcessCrash;
@end

@implementation SWCrashRetryThrottler

- (BOOL)shouldReloadAfterWebProcessCrash
{
  crashed = [(SWCrashRetryThrottler *)self crashed];
  if (!crashed)
  {
    [(SWCrashRetryThrottler *)self setCrashed:1];
  }

  return !crashed;
}

@end