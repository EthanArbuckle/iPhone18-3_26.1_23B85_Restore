@interface SBDeviceOrientationUpdateDeferralAssertion
- (SBDeviceOrientationUpdateDeferralAssertion)initWithReason:(id)reason;
- (SBDeviceOrientationUpdateManager)hackyBackReference;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SBDeviceOrientationUpdateDeferralAssertion

- (void)invalidate
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SBDeviceOrientationUpdateManager.m" lineNumber:228 description:@"Invalidating an assert without a back-reference"];
}

- (SBDeviceOrientationUpdateDeferralAssertion)initWithReason:(id)reason
{
  reasonCopy = reason;
  if (!reasonCopy)
  {
    [(SBDeviceOrientationUpdateDeferralAssertion *)a2 initWithReason:?];
  }

  v10.receiver = self;
  v10.super_class = SBDeviceOrientationUpdateDeferralAssertion;
  v6 = [(SBDeviceOrientationUpdateDeferralAssertion *)&v10 init];
  if (v6)
  {
    v7 = [reasonCopy copy];
    reason = v6->_reason;
    v6->_reason = v7;
  }

  return v6;
}

- (void)dealloc
{
  if (!self->_invalidated)
  {
    v3 = SBLogCommon();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);

    if (v4)
    {
      NSLog(&cfstr_YouShouldAlway.isa);
    }
  }

  if (!self->_invalidated)
  {
    [(SBDeviceOrientationUpdateDeferralAssertion *)self invalidate];
  }

  v5.receiver = self;
  v5.super_class = SBDeviceOrientationUpdateDeferralAssertion;
  [(SBDeviceOrientationUpdateDeferralAssertion *)&v5 dealloc];
}

- (SBDeviceOrientationUpdateManager)hackyBackReference
{
  WeakRetained = objc_loadWeakRetained(&self->_hackyBackReference);

  return WeakRetained;
}

- (void)initWithReason:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBDeviceOrientationUpdateManager.m" lineNumber:210 description:{@"Invalid parameter not satisfying: %@", @"reason"}];
}

@end