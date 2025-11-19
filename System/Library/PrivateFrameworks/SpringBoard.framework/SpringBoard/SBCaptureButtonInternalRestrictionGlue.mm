@interface SBCaptureButtonInternalRestrictionGlue
- (SBCaptureButtonInternalRestrictionGlue)initWithCoordinator:(id)a3;
- (void)acquireRestriction:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)relinquishRestriction;
@end

@implementation SBCaptureButtonInternalRestrictionGlue

- (SBCaptureButtonInternalRestrictionGlue)initWithCoordinator:(id)a3
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = SBCaptureButtonInternalRestrictionGlue;
  v7 = [(SBCaptureButtonInternalRestrictionGlue *)&v11 init];
  if (v7)
  {
    v8 = v6;
    if (!v8)
    {
      [(SBCaptureButtonInternalRestrictionGlue *)a2 initWithCoordinator:v7];
    }

    v9 = v8;
    objc_opt_class();
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(SBCaptureButtonInternalRestrictionGlue *)v9 initWithCoordinator:a2, v7];
    }

    objc_storeStrong(&v7->_coordinator, a3);
  }

  return v7;
}

- (void)dealloc
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"must -invalidate before dealloc"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    v14 = a2;
    v15 = 2114;
    v16 = @"SBCaptureButtonInternalRestrictionGlue.m";
    v17 = 1024;
    v18 = 34;
    v19 = 2114;
    v20 = v4;
    OUTLINED_FUNCTION_0(&dword_21ED4E000, MEMORY[0x277D86220], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)invalidate
{
  coordinator = self->_coordinator;
  if (coordinator)
  {
    self->_coordinator = 0;

    [(BSInvalidatable *)self->_captureButtonInhibitionAssertion invalidate];
    captureButtonInhibitionAssertion = self->_captureButtonInhibitionAssertion;
    self->_captureButtonInhibitionAssertion = 0;
  }
}

- (void)acquireRestriction:(id)a3
{
  v5 = a3;
  coordinator = self->_coordinator;
  if (!coordinator)
  {
    [(SBCaptureButtonInternalRestrictionGlue *)v5 acquireRestriction:a2, self];
  }

  if (!self->_captureButtonInhibitionAssertion)
  {
    v9 = v5;
    v7 = [(SBCaptureButtonRestrictionCoordinator *)coordinator inhibitCaptureButtonActionAssertionWithReason:v5];
    captureButtonInhibitionAssertion = self->_captureButtonInhibitionAssertion;
    self->_captureButtonInhibitionAssertion = v7;

    v5 = v9;
  }
}

- (void)relinquishRestriction
{
  captureButtonInhibitionAssertion = self->_captureButtonInhibitionAssertion;
  if (captureButtonInhibitionAssertion)
  {
    [(BSInvalidatable *)captureButtonInhibitionAssertion invalidate];
    v4 = self->_captureButtonInhibitionAssertion;
    self->_captureButtonInhibitionAssertion = 0;
  }
}

- (void)initWithCoordinator:(uint64_t)a3 .cold.1(void *a1, const char *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCACA8];
  v6 = [a1 classForCoder];
  if (!v6)
  {
    v6 = objc_opt_class();
  }

  v7 = NSStringFromClass(v6);
  objc_opt_class();
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v5 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"coordinator", v7, v9];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v11 = NSStringFromSelector(a2);
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v15 = 138544642;
    v16 = v11;
    v17 = 2114;
    v18 = v13;
    v19 = 2048;
    v20 = a3;
    v21 = 2114;
    v22 = @"SBCaptureButtonInternalRestrictionGlue.m";
    v23 = 1024;
    v24 = 27;
    v25 = 2114;
    v26 = v10;
    OUTLINED_FUNCTION_0(&dword_21ED4E000, MEMORY[0x277D86220], v14, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v15);
  }

  [v10 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithCoordinator:(const char *)a1 .cold.2(const char *a1, uint64_t a2)
{
  v4 = MEMORY[0x277CCACA8];
  objc_opt_class();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"coordinator", v6];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v8 = NSStringFromSelector(a1);
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v12 = 138544642;
    v13 = v8;
    v14 = 2114;
    v15 = v10;
    v16 = 2048;
    v17 = a2;
    v18 = 2114;
    v19 = @"SBCaptureButtonInternalRestrictionGlue.m";
    v20 = 1024;
    v21 = 27;
    v22 = 2114;
    v23 = v7;
    OUTLINED_FUNCTION_0(&dword_21ED4E000, MEMORY[0x277D86220], v11, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v12);
  }

  [v7 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)acquireRestriction:(uint64_t)a3 .cold.1(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"tried to acquire invalidated restriction(%@)", a1];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v6 = NSStringFromSelector(a2);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v10 = 138544642;
    v11 = v6;
    v12 = 2114;
    v13 = v8;
    v14 = 2048;
    v15 = a3;
    v16 = 2114;
    v17 = @"SBCaptureButtonInternalRestrictionGlue.m";
    v18 = 1024;
    v19 = 53;
    v20 = 2114;
    v21 = v5;
    OUTLINED_FUNCTION_0(&dword_21ED4E000, MEMORY[0x277D86220], v9, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v10);
  }

  [v5 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end