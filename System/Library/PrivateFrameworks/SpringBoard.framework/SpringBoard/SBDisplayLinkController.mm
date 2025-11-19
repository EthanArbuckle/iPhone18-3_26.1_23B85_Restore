@interface SBDisplayLinkController
- (SBDisplayLinkController)initWithCADisplay:(id)a3 backlight:(id)a4;
- (id)maintainDisplayLinkWhenBacklightIsOffForReason:(id)a3;
- (void)_reevaluateForcingFixedRateLinks;
- (void)backlight:(id)a3 didBlankToDisplayMode:(int64_t)a4 fromDisplayMode:(int64_t)a5 activeEvents:(id)a6 abortedEvents:(id)a7;
- (void)backlight:(id)a3 willUnblankToDisplayMode:(int64_t)a4 fromDisplayMode:(int64_t)a5 forEvents:(id)a6 abortedEvents:(id)a7;
- (void)invalidate;
@end

@implementation SBDisplayLinkController

- (SBDisplayLinkController)initWithCADisplay:(id)a3 backlight:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = v8;
  if (!v10)
  {
    [SBDisplayLinkController initWithCADisplay:a2 backlight:?];
  }

  v11 = v10;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(SBDisplayLinkController *)v11 initWithCADisplay:a2 backlight:self];
  }

  if (!v9)
  {
    [SBDisplayLinkController initWithCADisplay:a2 backlight:?];
  }

  v17.receiver = self;
  v17.super_class = SBDisplayLinkController;
  v12 = [(SBDisplayLinkController *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_display, a3);
    objc_storeStrong(&v13->_backlight, a4);
    if ([(CADisplay *)v13->_display isForceFixedRateLinksEnabled])
    {
      v14 = SBLogBacklight();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [(CADisplay *)v13->_display displayId];
        *buf = 67109120;
        v19 = v15;
        _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "displayLinkController-%i: resetting forceFixedRateLinksEnabled at bootstrap", buf, 8u);
      }

      [(CADisplay *)v13->_display setForceFixedRateLinksEnabled:0];
    }
  }

  return v13;
}

- (id)maintainDisplayLinkWhenBacklightIsOffForReason:(id)a3
{
  *&v23[7] = *MEMORY[0x277D85DE8];
  v5 = a3;
  BSDispatchQueueAssertMain();
  if (self->_invalidated)
  {
    [(SBDisplayLinkController *)self maintainDisplayLinkWhenBacklightIsOffForReason:a2];
  }

  if (self->_maintainDisplayLinkWhenBacklightIsOffCount == 255)
  {
    [(SBDisplayLinkController *)self maintainDisplayLinkWhenBacklightIsOffForReason:a2];
  }

  v6 = SBLogBacklight();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(CADisplay *)self->_display displayId];
    *buf = 67109378;
    v21 = v7;
    v22 = 2112;
    *v23 = v5;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "displayLinkController-%i: taking maintainDisplayLinkWhenBacklightIsOff assertion for %@", buf, 0x12u);
  }

  ++self->_maintainDisplayLinkWhenBacklightIsOffCount;
  if (!self->_observerRegistered)
  {
    self->_observerRegistered = 1;
    [(BLSHBacklightHostObservable *)self->_backlight addObserver:self];
    [(BLSHBacklightHostObservable *)self->_backlight backlightDisplayMode];
    self->_displayLinkWouldBeOff = IsBlankedForBLSBacklightDisplayMode();
    v8 = SBLogBacklight();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(CADisplay *)self->_display displayId];
      displayLinkWouldBeOff = self->_displayLinkWouldBeOff;
      v11 = NSStringFromBLSBacklightDisplayMode();
      *buf = 67109634;
      v21 = v9;
      v22 = 1024;
      *v23 = displayLinkWouldBeOff;
      v23[2] = 2112;
      *&v23[3] = v11;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "displayLinkController-%i: _displayLinkWouldBeOff initialized to %{BOOL}i for %@", buf, 0x18u);
    }
  }

  [(SBDisplayLinkController *)self _reevaluateForcingFixedRateLinks];
  v12 = objc_alloc(MEMORY[0x277CF0CE8]);
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"displayLinkController-%i:maintainDisplayLinkWhenBacklightIsOff", -[CADisplay displayId](self->_display, "displayId")];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __74__SBDisplayLinkController_maintainDisplayLinkWhenBacklightIsOffForReason___block_invoke;
  v17[3] = &unk_2783B46E8;
  v18 = v5;
  v19 = a2;
  v17[4] = self;
  v14 = v5;
  v15 = [v12 initWithIdentifier:v13 forReason:v14 invalidationBlock:v17];

  return v15;
}

void __74__SBDisplayLinkController_maintainDisplayLinkWhenBacklightIsOffForReason___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  BSDispatchQueueAssertMain();
  v5 = a1 + 32;
  v4 = *(a1 + 32);
  if (!*(v4 + 24))
  {
    __74__SBDisplayLinkController_maintainDisplayLinkWhenBacklightIsOffForReason___block_invoke_cold_1(v4, a1);
  }

  v6 = SBLogBacklight();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(*(a1 + 32) + 8) displayId];
    v8 = *(a1 + 40);
    v10[0] = 67109378;
    v10[1] = v7;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "displayLinkController-%i: releasing maintainDisplayLinkWhenBacklightIsOff assertion for %@", v10, 0x12u);
  }

  --*(*v5 + 24);
  v9 = *v5;
  if (*(*v5 + 25) == 1 && !v9[24])
  {
    v9[25] = 0;
    [*(*v5 + 16) removeObserver:?];
    v9 = *v5;
  }

  [v9 _reevaluateForcingFixedRateLinks];
}

- (void)invalidate
{
  v6 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    if (self->_observerRegistered)
    {
      self->_observerRegistered = 0;
      [(BLSHBacklightHostObservable *)self->_backlight removeObserver:self];
    }

    if (self->_displayLinkForcedToFixedRate)
    {
      v3 = SBLogBacklight();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = [(CADisplay *)self->_display displayId];
        v5[0] = 67109120;
        v5[1] = v4;
        _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "displayLinkController-%i: resetting forceFixedRateLinksEnabled", v5, 8u);
      }

      [(CADisplay *)self->_display setForceFixedRateLinksEnabled:0];
    }
  }
}

- (void)_reevaluateForcingFixedRateLinks
{
  v9 = *MEMORY[0x277D85DE8];
  if (!self->_invalidated)
  {
    v3 = self->_displayLinkWouldBeOff && (self->_maintainDisplayLinkWhenBacklightIsOffCount != 0);
    if (self->_displayLinkForcedToFixedRate != v3)
    {
      v4 = SBLogBacklight();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = [(CADisplay *)self->_display displayId];
        v6[0] = 67109376;
        v6[1] = v5;
        v7 = 1024;
        v8 = v3;
        _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "displayLinkController-%i: setting forceFixedRateLinksEnabled to %{BOOL}i", v6, 0xEu);
      }

      self->_displayLinkForcedToFixedRate = v3;
      [(CADisplay *)self->_display setForceFixedRateLinksEnabled:v3];
    }
  }
}

- (void)backlight:(id)a3 willUnblankToDisplayMode:(int64_t)a4 fromDisplayMode:(int64_t)a5 forEvents:(id)a6 abortedEvents:(id)a7
{
  v11 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  v8 = SBLogBacklight();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(CADisplay *)self->_display displayId];
    v10[0] = 67109120;
    v10[1] = v9;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "displayLinkController-%i: display is unblanking - updating _displayLinkWouldBeOff to false", v10, 8u);
  }

  self->_displayLinkWouldBeOff = 0;
  [(SBDisplayLinkController *)self _reevaluateForcingFixedRateLinks];
}

- (void)backlight:(id)a3 didBlankToDisplayMode:(int64_t)a4 fromDisplayMode:(int64_t)a5 activeEvents:(id)a6 abortedEvents:(id)a7
{
  v11 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  v8 = SBLogBacklight();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(CADisplay *)self->_display displayId];
    v10[0] = 67109120;
    v10[1] = v9;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "displayLinkController-%i: display is blanking - updating _displayLinkWouldBeOff to true", v10, 8u);
  }

  self->_displayLinkWouldBeOff = 1;
  [(SBDisplayLinkController *)self _reevaluateForcingFixedRateLinks];
}

- (void)initWithCADisplay:(uint64_t)a3 backlight:.cold.1(void *a1, const char *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCACA8];
  v6 = [a1 classForCoder];
  if (!v6)
  {
    v6 = objc_opt_class();
  }

  v7 = NSStringFromClass(v6);
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v5 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"display", v7, v9];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v11 = NSStringFromSelector(a2);
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    *buf = 138544642;
    v15 = v11;
    v16 = 2114;
    v17 = v13;
    v18 = 2048;
    v19 = a3;
    v20 = 2114;
    v21 = @"SBDisplayLinkController.m";
    v22 = 1024;
    v23 = 30;
    v24 = 2114;
    v25 = v10;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v10 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithCADisplay:(const char *)a1 backlight:.cold.2(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v11 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"backlight", v10, 2u);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithCADisplay:(const char *)a1 backlight:.cold.3(const char *a1)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v13 = NSStringFromClass(v3);
  v4 = [v2 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@."];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, @"display", v13, v14);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)maintainDisplayLinkWhenBacklightIsOffForReason:(uint64_t)a1 .cold.1(uint64_t a1, const char *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v13 = [*(a1 + 8) displayId];
  v4 = [v3 stringWithFormat:@"displayLinkController-%i: preventing _maintainDisplayLinkWhenBacklightIsOffCount overflow"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, v13, v14, v15);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)maintainDisplayLinkWhenBacklightIsOffForReason:(uint64_t)a1 .cold.2(uint64_t a1, const char *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v13 = [*(a1 + 8) displayId];
  v4 = [v3 stringWithFormat:@"displayLinkController-%i: cannot adjust _maintainDisplayLinkWhenBacklightIsOffCount after invalidation"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, v13, v14, v15);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __74__SBDisplayLinkController_maintainDisplayLinkWhenBacklightIsOffForReason___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277CCACA8];
  v12 = [*(a1 + 8) displayId];
  v4 = [v3 stringWithFormat:@"displayLinkController-%i: preventing _maintainDisplayLinkWhenBacklightIsOffCount underflow"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(*(a2 + 48));
    v6 = objc_opt_class();
    v14 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13, 2u);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end