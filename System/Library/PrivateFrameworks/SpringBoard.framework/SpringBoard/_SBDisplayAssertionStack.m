@interface _SBDisplayAssertionStack
- (NSString)description;
- (_SBDisplayAssertionStack)initWithRootDisplay:(id)a3 delegate:(id)a4;
- (id)acquireAssertionForDisplay:(id)a3 level:(unint64_t)a4 deactivationReasons:(unint64_t)a5 delegate:(id)a6;
- (void)_assertion:(id)a3 updatedPreferences:(id)a4;
- (void)_assertionDidInvalidate:(id)a3;
- (void)_evalAndApplyOldPreferences:(id)a3 newPreferences:(id)a4;
- (void)activateAssertionsForDisplay:(id)a3;
- (void)dealloc;
- (void)invalidateAssertionForDerivedDisplayDisconnect:(id)a3;
- (void)invalidateForDisplayDisconnect;
@end

@implementation _SBDisplayAssertionStack

- (_SBDisplayAssertionStack)initWithRootDisplay:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([v7 isRootIdentity])
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [_SBDisplayAssertionStack initWithRootDisplay:delegate:];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  [_SBDisplayAssertionStack initWithRootDisplay:delegate:];
LABEL_3:
  v14.receiver = self;
  v14.super_class = _SBDisplayAssertionStack;
  v9 = [(_SBDisplayAssertionStack *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_rootIdentity, a3);
    objc_storeWeak(&v10->_delegate, v8);
    v10->_invalidated = 0;
    v11 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:512 valueOptions:0x10000];
    assertionControlPreferences = v10->_assertionControlPreferences;
    v10->_assertionControlPreferences = v11;
  }

  return v10;
}

- (void)dealloc
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_rootIdentity withName:@"display"];
  v5 = [v3 build];

  return v5;
}

- (void)activateAssertionsForDisplay:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (([(FBSDisplayIdentity *)self->_rootIdentity isEqual:v4]& 1) == 0)
  {
    [_SBDisplayAssertionStack activateAssertionsForDisplay:];
  }

  if (self->_invalidated)
  {
    [_SBDisplayAssertionStack activateAssertionsForDisplay:];
  }

  if (self->_activated)
  {
    [_SBDisplayAssertionStack activateAssertionsForDisplay:];
  }

  v5 = SBLogDisplayAssertions();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "stack[%{public}@] activating assertions for display", &v7, 0xCu);
  }

  self->_activated = 1;
  v6 = objc_alloc_init(MEMORY[0x277CCAB00]);
  [(_SBDisplayAssertionStack *)self _evalAndApplyOldPreferences:v6 newPreferences:self->_assertionControlPreferences];
}

- (id)acquireAssertionForDisplay:(id)a3 level:(unint64_t)a4 deactivationReasons:(unint64_t)a5 delegate:(id)a6
{
  v34 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  if (([(FBSDisplayIdentity *)self->_rootIdentity isEqual:v10]& 1) == 0)
  {
    [_SBDisplayAssertionStack acquireAssertionForDisplay:level:deactivationReasons:delegate:];
  }

  if (SBDisplayAssertionLevelIsValid(a4))
  {
    if (v11)
    {
      goto LABEL_5;
    }
  }

  else
  {
    [_SBDisplayAssertionStack acquireAssertionForDisplay:level:deactivationReasons:delegate:];
    if (v11)
    {
      goto LABEL_5;
    }
  }

  [_SBDisplayAssertionStack acquireAssertionForDisplay:level:deactivationReasons:delegate:];
LABEL_5:
  if (self->_invalidated)
  {
    [_SBDisplayAssertionStack acquireAssertionForDisplay:level:deactivationReasons:delegate:];
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = self->_assertionControlPreferences;
  v13 = [(NSMapTable *)v12 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v26;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v25 + 1) + 8 * i);
        if ([v17 level] == a4)
        {
          [_SBDisplayAssertionStack acquireAssertionForDisplay:a4 level:a2 deactivationReasons:self delegate:v17];
        }
      }

      v14 = [(NSMapTable *)v12 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v14);
  }

  v18 = [[SBDisplayAssertion alloc] _initWithPhysicalDisplay:v10 level:a4 deactivationReasons:a5 assertionStack:self delegate:v11];
  v19 = SBLogDisplayAssertions();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    rootIdentity = self->_rootIdentity;
    *buf = 138543618;
    v30 = rootIdentity;
    v31 = 2114;
    v32 = v18;
    _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEFAULT, "stack[%{public}@] acquiring new assertion: %{public}@", buf, 0x16u);
  }

  v21 = objc_alloc_init(SBDisplayAssertionPreferences);
  [(SBDisplayAssertionPreferences *)v21 setWantsControlOfDisplay:0];
  [(SBDisplayAssertionPreferences *)v21 setDisplayArrangement:0];
  v22 = [(NSMapTable *)self->_assertionControlPreferences copy];
  [(NSMapTable *)self->_assertionControlPreferences setObject:v21 forKey:v18];
  if (self->_activated)
  {
    [(_SBDisplayAssertionStack *)self _evalAndApplyOldPreferences:v22 newPreferences:self->_assertionControlPreferences];
  }

  return v18;
}

- (void)invalidateForDisplayDisconnect
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)invalidateAssertionForDerivedDisplayDisconnect:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _SBActiveAssertion(self->_assertionControlPreferences);
  if ([v5 isEqual:v4] && self->_activated)
  {
    v6 = SBLogDisplayAssertions();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      rootIdentity = self->_rootIdentity;
      v8 = 138543618;
      v9 = rootIdentity;
      v10 = 2114;
      v11 = v4;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "stack[%{public}@] informing assertion it's lost control of the display. assertion: %{public}@", &v8, 0x16u);
    }

    [v4 _didLoseControlOfDisplayForDeactivationReasons:0];
  }

  [v4 _didInvalidateForDisplayDisconnect];
  [(NSMapTable *)self->_assertionControlPreferences removeObjectForKey:v4];
}

- (void)_assertion:(id)a3 updatedPreferences:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (self->_invalidated)
  {
    v8 = SBLogDisplayAssertions();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      rootIdentity = self->_rootIdentity;
      v17 = 138543362;
      v18 = rootIdentity;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "stack[%{public}@] ignoring wantsControlOfDisplay update because we're invalid.", &v17, 0xCu);
    }
  }

  else
  {
    v8 = [(NSMapTable *)self->_assertionControlPreferences objectForKey:v6];
    v10 = [v7 isEqual:v8];
    v11 = SBLogDisplayAssertions();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        v13 = self->_rootIdentity;
        v17 = 138543874;
        v18 = v13;
        v19 = 2114;
        v20 = v6;
        v21 = 2114;
        v22 = v7;
        _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "stack[%{public}@] ignoring assertion wantsControlOfDisplay since no change. assertion: %{public}@; preferences: %{public}@", &v17, 0x20u);
      }
    }

    else
    {
      if (v12)
      {
        v14 = self->_rootIdentity;
        v17 = 138543874;
        v18 = v14;
        v19 = 2114;
        v20 = v6;
        v21 = 2114;
        v22 = v7;
        _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "stack[%{public}@] assertion preferences changed. assertion: %{public}@; preferences: %{public}@", &v17, 0x20u);
      }

      v11 = [(NSMapTable *)self->_assertionControlPreferences copy];
      [(NSMapTable *)self->_assertionControlPreferences setObject:v7 forKey:v6];
      if (self->_activated)
      {
        [(_SBDisplayAssertionStack *)self _evalAndApplyOldPreferences:v11 newPreferences:self->_assertionControlPreferences];
      }

      else
      {
        v15 = SBLogDisplayAssertions();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = self->_rootIdentity;
          v17 = 138543874;
          v18 = v16;
          v19 = 2114;
          v20 = v6;
          v21 = 2114;
          v22 = v7;
          _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "stack[%{public}@] ignoring assertion wantsControlOfDisplay because we're not active. assertion: %{public}@; preferences: %{public}@", &v17, 0x20u);
        }
      }
    }
  }
}

- (void)_assertionDidInvalidate:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  invalidated = self->_invalidated;
  v6 = SBLogDisplayAssertions();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (invalidated)
  {
    if (v7)
    {
      rootIdentity = self->_rootIdentity;
      v12 = 138543362;
      v13 = rootIdentity;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "stack[%{public}@] ignoring assertion invalidation because we're invalid.", &v12, 0xCu);
    }
  }

  else
  {
    if (v7)
    {
      v9 = self->_rootIdentity;
      v12 = 138543362;
      v13 = v9;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "stack[%{public}@] removing invalidated assertion and processing active assertions.", &v12, 0xCu);
    }

    v6 = [(NSMapTable *)self->_assertionControlPreferences copy];
    [(NSMapTable *)self->_assertionControlPreferences removeObjectForKey:v4];
    if (self->_activated)
    {
      [(_SBDisplayAssertionStack *)self _evalAndApplyOldPreferences:v6 newPreferences:self->_assertionControlPreferences];
    }

    else
    {
      v10 = SBLogDisplayAssertions();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = self->_rootIdentity;
        v12 = 138543618;
        v13 = v11;
        v14 = 2114;
        v15 = v4;
        _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "stack[%{public}@] ignoring assertion invalidation because we're not active. assertion: %{public}@", &v12, 0x16u);
      }
    }
  }
}

- (void)_evalAndApplyOldPreferences:(id)a3 newPreferences:(id)a4
{
  v61 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [_SBDisplayAssertionStack _evalAndApplyOldPreferences:newPreferences:];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  [_SBDisplayAssertionStack _evalAndApplyOldPreferences:newPreferences:];
LABEL_3:
  if (self->_invalidated)
  {
    [_SBDisplayAssertionStack _evalAndApplyOldPreferences:newPreferences:];
  }

  if (!self->_activated)
  {
    [_SBDisplayAssertionStack _evalAndApplyOldPreferences:newPreferences:];
  }

  v9 = MEMORY[0x277CBEB58];
  v10 = NSAllMapTableKeys(v6);
  v11 = [v9 setWithArray:v10];

  v12 = [v11 mutableCopy];
  v13 = MEMORY[0x277CBEB58];
  v14 = NSAllMapTableKeys(v8);
  v15 = [v13 setWithArray:v14];

  [v12 minusSet:v15];
  [v15 minusSet:v11];
  v16 = _SBActiveAssertion(v6);
  v17 = _SBActiveAssertion(v8);
  v18 = [(NSMapTable *)v6 objectForKey:v16];
  v48 = v17;
  v19 = [(NSMapTable *)v8 objectForKey:v17];
  if (([v18 isEqual:v19] & 1) == 0 && v18 != v19)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained assertionStack:self updatedAssertionPreferences:v19 oldPreferences:v18];
  }

  v44 = v19;
  v45 = v18;
  v21 = [v16 deactivationReasonsWhenActive];
  v22 = [v48 deactivationReasonsWhenActive];
  if (v16 != v48 || v21 != v22)
  {
    v49 = v22;
    v23 = SBLogDisplayAssertions();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      rootIdentity = self->_rootIdentity;
      *buf = 138543362;
      v56 = rootIdentity;
      _os_log_impl(&dword_21ED4E000, v23, OS_LOG_TYPE_DEFAULT, "stack[%{public}@] assertion data changed. calling back to delegates", buf, 0xCu);
    }

    v47 = v16;
    v25 = v49;
    if (v16 && v16 != v48 && ([v12 containsObject:v16] & 1) == 0)
    {
      v26 = SBLogDisplayAssertions();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = self->_rootIdentity;
        v28 = UIApplicationSceneDeactivationReasonMaskDescriptionComponents();
        *buf = 138543874;
        v56 = v27;
        v16 = v47;
        v57 = 2114;
        v58 = v47;
        v59 = 2114;
        v60 = v28;
        _os_log_impl(&dword_21ED4E000, v26, OS_LOG_TYPE_DEFAULT, "stack[%{public}@] informing assertion it lost control of display. assertion: %{public}@; reasons: %{public}@", buf, 0x20u);

        v25 = v49;
      }

      [v16 _didLoseControlOfDisplayForDeactivationReasons:v25];
    }

    if (v21 != v25)
    {
      v41 = v11;
      v42 = v8;
      v46 = self;
      v43 = v6;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v29 = v8;
      v30 = [(NSMapTable *)v29 countByEnumeratingWithState:&v50 objects:v54 count:16];
      v31 = v48;
      if (v30)
      {
        v32 = v30;
        v33 = *v51;
        do
        {
          for (i = 0; i != v32; ++i)
          {
            if (*v51 != v33)
            {
              objc_enumerationMutation(v29);
            }

            v35 = *(*(&v50 + 1) + 8 * i);
            if (([v12 containsObject:v35] & 1) == 0 && (objc_msgSend(v15, "containsObject:", v35) & 1) == 0 && (objc_msgSend(v35, "isEqual:", v16) & 1) == 0 && (objc_msgSend(v35, "isEqual:", v31) & 1) == 0)
            {
              v36 = SBLogDisplayAssertions();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
              {
                v37 = v46->_rootIdentity;
                v38 = UIApplicationSceneDeactivationReasonMaskDescriptionComponents();
                *buf = 138543874;
                v56 = v37;
                v31 = v48;
                v57 = 2114;
                v58 = v35;
                v59 = 2114;
                v60 = v38;
                _os_log_impl(&dword_21ED4E000, v36, OS_LOG_TYPE_DEFAULT, "stack[%{public}@] informing assertion of new deactivation reasons. assertion: %{public}@; reasons: %{public}@", buf, 0x20u);

                v16 = v47;
              }

              [v35 _didReceiveNewDeactivationReasons:v49];
            }
          }

          v32 = [(NSMapTable *)v29 countByEnumeratingWithState:&v50 objects:v54 count:16];
        }

        while (v32);
      }

      v8 = v42;
      v6 = v43;
      self = v46;
      v11 = v41;
    }

    if (v48)
    {
      v39 = SBLogDisplayAssertions();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = self->_rootIdentity;
        *buf = 138543618;
        v56 = v40;
        v57 = 2114;
        v58 = v48;
        _os_log_impl(&dword_21ED4E000, v39, OS_LOG_TYPE_DEFAULT, "stack[%{public}@] informing assertion it gained control of display. assertion: %{public}@", buf, 0x16u);
      }

      [v48 _didGainControlOfDisplay];
    }
  }
}

- (void)initWithRootDisplay:delegate:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"[rootIdentity isRootIdentity]" object:? file:? lineNumber:? description:?];
}

- (void)initWithRootDisplay:delegate:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"delegate" object:? file:? lineNumber:? description:?];
}

- (void)activateAssertionsForDisplay:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"[_rootIdentity isEqual:rootIdentity]" object:? file:? lineNumber:? description:?];
}

- (void)activateAssertionsForDisplay:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"!_invalidated" object:? file:? lineNumber:? description:?];
}

- (void)activateAssertionsForDisplay:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"!_activated" object:? file:? lineNumber:? description:?];
}

- (void)acquireAssertionForDisplay:level:deactivationReasons:delegate:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"[_rootIdentity isEqual:rootIdentity]" object:? file:? lineNumber:? description:?];
}

- (void)acquireAssertionForDisplay:level:deactivationReasons:delegate:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"SBDisplayAssertionLevelIsValid(assertionLevel)" object:? file:? lineNumber:? description:?];
}

- (void)acquireAssertionForDisplay:level:deactivationReasons:delegate:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"assertionDelegate" object:? file:? lineNumber:? description:?];
}

- (void)acquireAssertionForDisplay:level:deactivationReasons:delegate:.cold.4()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"!_invalidated" object:? file:? lineNumber:? description:?];
}

- (void)acquireAssertionForDisplay:(unint64_t)a1 level:(uint64_t)a2 deactivationReasons:(uint64_t)a3 delegate:(uint64_t)a4 .cold.5(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v9 = SBDisplayAssertionLevelDescription(a1);
  [v8 handleFailureInMethod:a2 object:a3 file:@"_SBDisplayAssertionStack.m" lineNumber:87 description:{@"we are already tracking an assertion for level %@: %@", v9, a4}];
}

- (void)_evalAndApplyOldPreferences:newPreferences:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"oldAssertionPrefs" object:? file:? lineNumber:? description:?];
}

- (void)_evalAndApplyOldPreferences:newPreferences:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"newAssertionPrefs" object:? file:? lineNumber:? description:?];
}

- (void)_evalAndApplyOldPreferences:newPreferences:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"!_invalidated" object:? file:? lineNumber:? description:?];
}

- (void)_evalAndApplyOldPreferences:newPreferences:.cold.4()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"_activated" object:? file:? lineNumber:? description:?];
}

@end