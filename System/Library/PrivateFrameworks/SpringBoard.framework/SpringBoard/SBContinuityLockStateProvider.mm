@interface SBContinuityLockStateProvider
- (void)addLockStateObserver:(id)a3;
- (void)removeLockStateObserver:(id)a3;
@end

@implementation SBContinuityLockStateProvider

- (void)addLockStateObserver:(id)a3
{
  if (!a3)
  {
    [(SBContinuityLockStateProvider *)a2 addLockStateObserver:?];
  }
}

- (void)removeLockStateObserver:(id)a3
{
  if (!a3)
  {
    [(SBContinuityLockStateProvider *)a2 removeLockStateObserver:?];
  }
}

- (void)addLockStateObserver:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBContinuityLockStateProvider.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"observer"}];
}

- (void)removeLockStateObserver:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBContinuityLockStateProvider.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"observer"}];
}

@end