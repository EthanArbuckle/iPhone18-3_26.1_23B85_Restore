@interface _SBFKeyWindowStack
+ (_SBFKeyWindowStack)sharedInstance;
- (BOOL)_isWindowEligibleForKeyness:(id)keyness;
- (BOOL)pushKeyWindow:(id)window;
- (_SBFKeyWindowStack)init;
- (id)_evaluateForNewKeyWindowWithReason:(id)reason;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)expectedKeyWindow;
- (id)succinctDescription;
- (void)_keyWindowDidChangeNotification:(id)notification;
- (void)dealloc;
- (void)noteWindowDeallocated:(id)deallocated;
- (void)noteWindowHidden:(id)hidden;
- (void)noteWindowUnhidden:(id)unhidden;
- (void)popKeyWindow:(id)window reason:(id)reason;
@end

@implementation _SBFKeyWindowStack

+ (_SBFKeyWindowStack)sharedInstance
{
  if (sharedInstance_onceToken_8 != -1)
  {
    +[_SBFKeyWindowStack sharedInstance];
  }

  v3 = sharedInstance___instance_0;

  return v3;
}

- (_SBFKeyWindowStack)init
{
  v7.receiver = self;
  v7.super_class = _SBFKeyWindowStack;
  v2 = [(_SBFKeyWindowStack *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    windowStack = v2->_windowStack;
    v2->_windowStack = v3;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__keyWindowDidChangeNotification_ name:*MEMORY[0x1E69DE7B0] object:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = _SBFKeyWindowStack;
  [(_SBFKeyWindowStack *)&v4 dealloc];
}

- (id)expectedKeyWindow
{
  BSDispatchQueueAssertMain();
  expectedKeyWindow = self->_expectedKeyWindow;

  return expectedKeyWindow;
}

- (BOOL)pushKeyWindow:(id)window
{
  v13 = *MEMORY[0x1E69E9840];
  windowCopy = window;
  if (!windowCopy)
  {
    [_SBFKeyWindowStack pushKeyWindow:];
  }

  BSDispatchQueueAssertMain();
  v5 = [_SBWindowReference referenceForObject:windowCopy];
  v6 = SBLogKeyWindow();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x1E698E680] descriptionForObject:windowCopy];
    v11 = 138543362;
    v12 = v7;
    _os_log_impl(&dword_1BEA11000, v6, OS_LOG_TYPE_DEFAULT, "Push: %{public}@", &v11, 0xCu);
  }

  [(NSMutableOrderedSet *)self->_windowStack removeObject:v5];
  [(NSMutableOrderedSet *)self->_windowStack addObject:v5];
  v8 = [(_SBFKeyWindowStack *)self _evaluateForNewKeyWindowWithReason:@"push"];
  v9 = self->_expectedKeyWindow == windowCopy;

  return v9;
}

- (void)popKeyWindow:(id)window reason:(id)reason
{
  v21 = *MEMORY[0x1E69E9840];
  windowCopy = window;
  reasonCopy = reason;
  v8 = reasonCopy;
  if (windowCopy)
  {
    if (reasonCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [_SBFKeyWindowStack popKeyWindow:reason:];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  [_SBFKeyWindowStack popKeyWindow:reason:];
LABEL_3:
  BSDispatchQueueAssertMain();
  v9 = [_SBWindowReference referenceForObject:windowCopy];
  if ([(NSMutableOrderedSet *)self->_windowStack containsObject:v9])
  {
    expectedKeyWindow = self->_expectedKeyWindow;
    v11 = SBLogKeyWindow();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      if (expectedKeyWindow == windowCopy)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      v13 = [MEMORY[0x1E698E680] descriptionForObject:windowCopy];
      v15 = 138543874;
      v16 = v12;
      v17 = 2114;
      v18 = v8;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&dword_1BEA11000, v11, OS_LOG_TYPE_DEFAULT, "Pop (wasKey=%{public}@, reason=%{public}@): %@", &v15, 0x20u);
    }

    [(NSMutableOrderedSet *)self->_windowStack removeObject:v9];
    if (expectedKeyWindow == windowCopy)
    {
      [(SBFWindow *)self->_expectedKeyWindow _resignKeyFromKeyWindowStack];
      self->_expectedKeyWindow = 0;
      v14 = [(_SBFKeyWindowStack *)self _evaluateForNewKeyWindowWithReason:@"popped window was key"];
    }
  }
}

- (void)noteWindowDeallocated:(id)deallocated
{
  deallocatedCopy = deallocated;
  if (!deallocatedCopy)
  {
    [_SBFKeyWindowStack noteWindowDeallocated:];
  }

  BSDispatchQueueAssertMain();
  [(_SBFKeyWindowStack *)self popKeyWindow:deallocatedCopy reason:@"window deallocated"];
}

- (void)noteWindowHidden:(id)hidden
{
  hiddenCopy = hidden;
  if (!hiddenCopy)
  {
    [_SBFKeyWindowStack noteWindowHidden:];
  }

  BSDispatchQueueAssertMain();
  if ([hiddenCopy isKeyWindow])
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = [MEMORY[0x1E698E680] descriptionForObject:hiddenCopy];
    v6 = [v4 stringWithFormat:@"Window hidden: %@", v5];
    v7 = [(_SBFKeyWindowStack *)self _evaluateForNewKeyWindowWithReason:v6];
  }
}

- (void)noteWindowUnhidden:(id)unhidden
{
  unhiddenCopy = unhidden;
  if (!unhiddenCopy)
  {
    [_SBFKeyWindowStack noteWindowUnhidden:];
  }

  BSDispatchQueueAssertMain();
  windowStack = self->_windowStack;
  v5 = [_SBWindowReference referenceForObject:unhiddenCopy];
  LODWORD(windowStack) = [(NSMutableOrderedSet *)windowStack containsObject:v5];

  if (windowStack)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = [MEMORY[0x1E698E680] descriptionForObject:unhiddenCopy];
    v8 = [v6 stringWithFormat:@"Window unhidden: %@", v7];
    v9 = [(_SBFKeyWindowStack *)self _evaluateForNewKeyWindowWithReason:v8];
  }
}

- (id)_evaluateForNewKeyWindowWithReason:(id)reason
{
  v28 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  reverseObjectEnumerator = [(NSMutableOrderedSet *)self->_windowStack reverseObjectEnumerator];
  v6 = [reverseObjectEnumerator countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v20 != v8)
      {
        objc_enumerationMutation(reverseObjectEnumerator);
      }

      object = [*(*(&v19 + 1) + 8 * v9) object];
      if ([(_SBFKeyWindowStack *)self _isWindowEligibleForKeyness:object])
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    object = 0;
  }

  if (self->_expectedKeyWindow != object)
  {
    v11 = SBLogKeyWindow();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [MEMORY[0x1E698E680] descriptionForObject:object];
      *buf = 138543618;
      v24 = v12;
      v25 = 2114;
      v26 = reasonCopy;
      _os_log_impl(&dword_1BEA11000, v11, OS_LOG_TYPE_DEFAULT, "Evaluate: making new window key: %{public}@, for reason: %{public}@ ", buf, 0x16u);
    }

    [(SBFWindow *)self->_expectedKeyWindow _resignKeyFromKeyWindowStack];
    self->_expectedKeyWindow = object;
LABEL_18:
    [(SBFWindow *)object _makeKeyFromKeyWindowStack];
    goto LABEL_19;
  }

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  keyWindow = [mEMORY[0x1E69DC668] keyWindow];

  v15 = SBLogKeyWindow();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (keyWindow != object)
  {
    if (v16)
    {
      v17 = [MEMORY[0x1E698E680] descriptionForObject:object];
      *buf = 138543618;
      v24 = v17;
      v25 = 2114;
      v26 = reasonCopy;
      _os_log_impl(&dword_1BEA11000, v15, OS_LOG_TYPE_DEFAULT, "Evaluate: making new window key: %{public}@ from nonSBF window, for reason: %{public}@ ", buf, 0x16u);
    }

    goto LABEL_18;
  }

  if (v16)
  {
    *buf = 138543362;
    v24 = reasonCopy;
    _os_log_impl(&dword_1BEA11000, v15, OS_LOG_TYPE_DEFAULT, "Evaluate: no change - reason: %{public}@ ", buf, 0xCu);
  }

LABEL_19:

  return object;
}

- (BOOL)_isWindowEligibleForKeyness:(id)keyness
{
  keynessCopy = keyness;
  v4 = keynessCopy;
  if (keynessCopy && [keynessCopy canBecomeKeyWindow])
  {
    v5 = [v4 _isEffectivelyHiddenForKeyWindowStack] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)_keyWindowDidChangeNotification:(id)notification
{
  v8 = *MEMORY[0x1E69E9840];
  object = [notification object];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = SBLogKeyWindow();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [MEMORY[0x1E698E680] descriptionForObject:object];
      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&dword_1BEA11000, v4, OS_LOG_TYPE_DEFAULT, "A window that wasn't a SB owned window became key: %{public}@", &v6, 0xCu);
    }
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(_SBFKeyWindowStack *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_SBFKeyWindowStack *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(_SBFKeyWindowStack *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60___SBFKeyWindowStack_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E807F290;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

- (void)pushKeyWindow:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"window" object:? file:? lineNumber:? description:?];
}

- (void)popKeyWindow:reason:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"window" object:? file:? lineNumber:? description:?];
}

- (void)popKeyWindow:reason:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"reason" object:? file:? lineNumber:? description:?];
}

- (void)noteWindowDeallocated:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"window" object:? file:? lineNumber:? description:?];
}

- (void)noteWindowHidden:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"window" object:? file:? lineNumber:? description:?];
}

- (void)noteWindowUnhidden:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"window" object:? file:? lineNumber:? description:?];
}

@end