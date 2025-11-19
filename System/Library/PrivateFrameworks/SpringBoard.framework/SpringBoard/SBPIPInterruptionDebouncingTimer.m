@interface SBPIPInterruptionDebouncingTimer
- (SBPIPInterruptionAssertion)debouncedAssertion;
@end

@implementation SBPIPInterruptionDebouncingTimer

- (SBPIPInterruptionAssertion)debouncedAssertion
{
  WeakRetained = objc_loadWeakRetained(&self->_debouncedAssertion);

  return WeakRetained;
}

@end