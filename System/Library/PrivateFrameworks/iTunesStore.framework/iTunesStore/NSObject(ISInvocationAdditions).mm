@interface NSObject(ISInvocationAdditions)
- (ISDelayedInvocationRecorder)delayedProxy:()ISInvocationAdditions;
- (ISMainThreadInvocationRecorder)blockingMainThreadProxy;
- (ISMainThreadInvocationRecorder)mainThreadProxy;
@end

@implementation NSObject(ISInvocationAdditions)

- (ISMainThreadInvocationRecorder)blockingMainThreadProxy
{
  v1 = [(ISInvocationRecorder *)[ISMainThreadInvocationRecorder alloc] initWithTarget:a1];
  [(ISMainThreadInvocationRecorder *)v1 setWaitUntilDone:1];

  return v1;
}

- (ISDelayedInvocationRecorder)delayedProxy:()ISInvocationAdditions
{
  v3 = [(ISInvocationRecorder *)[ISDelayedInvocationRecorder alloc] initWithTarget:a1];
  [(ISDelayedInvocationRecorder *)v3 setDelayInterval:a2];

  return v3;
}

- (ISMainThreadInvocationRecorder)mainThreadProxy
{
  v1 = [(ISInvocationRecorder *)[ISMainThreadInvocationRecorder alloc] initWithTarget:a1];

  return v1;
}

@end