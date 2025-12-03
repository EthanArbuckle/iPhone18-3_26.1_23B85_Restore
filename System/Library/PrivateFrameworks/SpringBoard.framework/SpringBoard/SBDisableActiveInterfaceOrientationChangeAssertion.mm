@interface SBDisableActiveInterfaceOrientationChangeAssertion
- (SBDisableActiveInterfaceOrientationChangeAssertion)initWithReason:(id)reason nudgeOrientationOnInvalidate:(BOOL)invalidate;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SBDisableActiveInterfaceOrientationChangeAssertion

- (void)invalidate
{
  v7 = *MEMORY[0x277D85DE8];
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    v3 = BKLogOrientationGlobal();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      reason = self->_reason;
      v5 = 138543362;
      v6 = reason;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "Invalidated disableActiveInterfaceOrientationChangeAssertion with reason: %{public}@", &v5, 0xCu);
    }

    [SBApp removeDisableActiveInterfaceOrientationChangeAssertion:self nudgeOrientationIfRemovingLast:self->_nudge];
  }
}

- (SBDisableActiveInterfaceOrientationChangeAssertion)initWithReason:(id)reason nudgeOrientationOnInvalidate:(BOOL)invalidate
{
  v16 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v13.receiver = self;
  v13.super_class = SBDisableActiveInterfaceOrientationChangeAssertion;
  v9 = [(SBDisableActiveInterfaceOrientationChangeAssertion *)&v13 init];
  if (v9)
  {
    if (!reasonCopy)
    {
      [SBDisableActiveInterfaceOrientationChangeAssertion initWithReason:a2 nudgeOrientationOnInvalidate:v9];
    }

    objc_storeStrong(&v9->_reason, reason);
    v9->_nudge = invalidate;
    v10 = BKLogOrientationGlobal();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      reason = v9->_reason;
      *buf = 138543362;
      reasonCopy2 = reason;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_INFO, "Created disableActiveInterfaceOrientationChangeAssertion with reason: %{public}@", buf, 0xCu);
    }

    [SBApp addDisableActiveInterfaceOrientationChangeAssertion:v9];
  }

  return v9;
}

- (void)dealloc
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(self + 8);
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Dealloc'd a disableActiveInterfaceOrientationChangeAssertion that wasn't invalidated, reason was: %{public}@", &v3, 0xCu);
}

- (void)initWithReason:(uint64_t)a1 nudgeOrientationOnInvalidate:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBDisableActiveInterfaceOrientationChangeAssertion.m" lineNumber:25 description:@"Reason is required."];
}

@end