@interface SBDisplayAssertion
- (BOOL)isEqual:(id)a3;
- (id)_initWithPhysicalDisplay:(id)a3 level:(unint64_t)a4 deactivationReasons:(unint64_t)a5 assertionStack:(id)a6 delegate:(id)a7;
- (id)description;
- (void)_didGainControlOfDisplay;
- (void)_didInvalidateForDisplayDisconnect;
- (void)_didLoseControlOfDisplayForDeactivationReasons:(unint64_t)a3;
- (void)_didReceiveNewDeactivationReasons:(unint64_t)a3;
- (void)dealloc;
- (void)invalidate;
- (void)updateWithPreferences:(id)a3;
@end

@implementation SBDisplayAssertion

- (id)_initWithPhysicalDisplay:(id)a3 level:(unint64_t)a4 deactivationReasons:(unint64_t)a5 assertionStack:(id)a6 delegate:(id)a7
{
  v13 = a3;
  v14 = a6;
  v15 = a7;
  if (([v13 isRootIdentity] & 1) == 0)
  {
    [SBDisplayAssertion _initWithPhysicalDisplay:level:deactivationReasons:assertionStack:delegate:];
  }

  if (SBDisplayAssertionLevelIsValid(a4))
  {
    if (v14)
    {
      goto LABEL_5;
    }

LABEL_10:
    [SBDisplayAssertion _initWithPhysicalDisplay:level:deactivationReasons:assertionStack:delegate:];
    if (v15)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  [SBDisplayAssertion _initWithPhysicalDisplay:level:deactivationReasons:assertionStack:delegate:];
  if (!v14)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (v15)
  {
    goto LABEL_6;
  }

LABEL_11:
  [SBDisplayAssertion _initWithPhysicalDisplay:level:deactivationReasons:assertionStack:delegate:];
LABEL_6:
  v19.receiver = self;
  v19.super_class = SBDisplayAssertion;
  v16 = [(SBDisplayAssertion *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_rootDisplayIdentity, a3);
    v17->_level = a4;
    v17->_deactivationReasonsWhenActive = a5;
    objc_storeWeak(&v17->_assertionStack, v14);
    objc_storeWeak(&v17->_delegate, v15);
    *&v17->_invalidated = 0;
    v17->_hasControlOfDisplay = 0;
  }

  return v17;
}

- (void)dealloc
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = SBDisplayAssertionLevelDescription(self->_level);
  [v3 appendString:v4 withName:@"level"];

  v5 = UIApplicationSceneDeactivationReasonMaskDescriptionComponents();
  v6 = [v3 appendObject:v5 withName:@"deactivationReasonsWhenActive"];

  WeakRetained = objc_loadWeakRetained(&self->_assertionStack);
  v8 = [v3 appendObject:WeakRetained withName:@"stack"];

  v9 = [v3 build];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if ([(FBSDisplayIdentity *)self->_rootDisplayIdentity isEqual:v5->_rootDisplayIdentity]&& self->_level == v5->_level)
      {
        WeakRetained = objc_loadWeakRetained(&self->_assertionStack);
        v7 = [WeakRetained displayIdentity];
        v8 = objc_loadWeakRetained(&v5->_assertionStack);
        v9 = [v8 displayIdentity];
        v10 = [v7 isEqual:v9];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (void)updateWithPreferences:(id)a3
{
  if (!self->_invalidated)
  {
    v5 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_assertionStack);
    [WeakRetained _assertion:self updatedPreferences:v5];
  }
}

- (void)invalidate
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_didInvalidateForDisplayDisconnect
{
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    self->_hasControlOfDisplay = 0;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained displayAssertionDidInvalidate:self];
    }
  }
}

- (void)_didGainControlOfDisplay
{
  v8 = *MEMORY[0x277D85DE8];
  if (!self->_invalidated)
  {
    self->_hasControlOfDisplay = 1;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained displayAssertionDidGainControlOfDisplay:self];

    v4 = SBLogDisplayControlling();
    if (os_signpost_enabled(v4))
    {
      v5 = SBDisplayAssertionLevelDescription(self->_level);
      v6 = 138543362;
      v7 = v5;
      _os_signpost_emit_with_name_impl(&dword_21ED4E000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SB_DISPLAY_ASSERTION_GAIN_CONTROL", "%{public}@", &v6, 0xCu);
    }
  }
}

- (void)_didLoseControlOfDisplayForDeactivationReasons:(unint64_t)a3
{
  v10 = *MEMORY[0x277D85DE8];
  if (!self->_invalidated && self->_hasControlOfDisplay)
  {
    self->_hasControlOfDisplay = 0;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained displayAssertion:self didLoseControlOfDisplayForDeactivationReasons:a3];

    v6 = SBLogDisplayControlling();
    if (os_signpost_enabled(v6))
    {
      v7 = SBDisplayAssertionLevelDescription(self->_level);
      v8 = 138543362;
      v9 = v7;
      _os_signpost_emit_with_name_impl(&dword_21ED4E000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SB_DISPLAY_ASSERTION_LOST_CONTROL", "%{public}@", &v8, 0xCu);
    }
  }
}

- (void)_didReceiveNewDeactivationReasons:(unint64_t)a3
{
  if (!self->_invalidated)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained displayAssertion:self didReceiveNewDeactivationReasons:a3];
    }
  }
}

- (void)_initWithPhysicalDisplay:level:deactivationReasons:assertionStack:delegate:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"[rootDisplayIdentity isRootIdentity]" object:? file:? lineNumber:? description:?];
}

- (void)_initWithPhysicalDisplay:level:deactivationReasons:assertionStack:delegate:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"SBDisplayAssertionLevelIsValid(level)" object:? file:? lineNumber:? description:?];
}

- (void)_initWithPhysicalDisplay:level:deactivationReasons:assertionStack:delegate:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"assertionStack" object:? file:? lineNumber:? description:?];
}

- (void)_initWithPhysicalDisplay:level:deactivationReasons:assertionStack:delegate:.cold.4()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"delegate" object:? file:? lineNumber:? description:?];
}

@end