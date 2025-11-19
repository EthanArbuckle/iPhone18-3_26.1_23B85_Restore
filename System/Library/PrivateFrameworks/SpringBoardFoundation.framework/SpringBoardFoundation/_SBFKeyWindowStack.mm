@interface _SBFKeyWindowStack
+ (_SBFKeyWindowStack)sharedInstance;
- (BOOL)_isWindowEligibleForKeyness:(id)a3;
- (BOOL)pushKeyWindow:(id)a3;
- (_SBFKeyWindowStack)init;
- (id)_evaluateForNewKeyWindowWithReason:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)expectedKeyWindow;
- (id)succinctDescription;
- (void)_keyWindowDidChangeNotification:(id)a3;
- (void)dealloc;
- (void)noteWindowDeallocated:(id)a3;
- (void)noteWindowHidden:(id)a3;
- (void)noteWindowUnhidden:(id)a3;
- (void)popKeyWindow:(id)a3 reason:(id)a4;
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

    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:v2 selector:sel__keyWindowDidChangeNotification_ name:*MEMORY[0x1E69DE7B0] object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

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

- (BOOL)pushKeyWindow:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    [_SBFKeyWindowStack pushKeyWindow:];
  }

  BSDispatchQueueAssertMain();
  v5 = [_SBWindowReference referenceForObject:v4];
  v6 = SBLogKeyWindow();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x1E698E680] descriptionForObject:v4];
    v11 = 138543362;
    v12 = v7;
    _os_log_impl(&dword_1BEA11000, v6, OS_LOG_TYPE_DEFAULT, "Push: %{public}@", &v11, 0xCu);
  }

  [(NSMutableOrderedSet *)self->_windowStack removeObject:v5];
  [(NSMutableOrderedSet *)self->_windowStack addObject:v5];
  v8 = [(_SBFKeyWindowStack *)self _evaluateForNewKeyWindowWithReason:@"push"];
  v9 = self->_expectedKeyWindow == v4;

  return v9;
}

- (void)popKeyWindow:(id)a3 reason:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
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
    [_SBFKeyWindowStack popKeyWindow:reason:];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  [_SBFKeyWindowStack popKeyWindow:reason:];
LABEL_3:
  BSDispatchQueueAssertMain();
  v9 = [_SBWindowReference referenceForObject:v6];
  if ([(NSMutableOrderedSet *)self->_windowStack containsObject:v9])
  {
    expectedKeyWindow = self->_expectedKeyWindow;
    v11 = SBLogKeyWindow();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      if (expectedKeyWindow == v6)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      v13 = [MEMORY[0x1E698E680] descriptionForObject:v6];
      v15 = 138543874;
      v16 = v12;
      v17 = 2114;
      v18 = v8;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&dword_1BEA11000, v11, OS_LOG_TYPE_DEFAULT, "Pop (wasKey=%{public}@, reason=%{public}@): %@", &v15, 0x20u);
    }

    [(NSMutableOrderedSet *)self->_windowStack removeObject:v9];
    if (expectedKeyWindow == v6)
    {
      [(SBFWindow *)self->_expectedKeyWindow _resignKeyFromKeyWindowStack];
      self->_expectedKeyWindow = 0;
      v14 = [(_SBFKeyWindowStack *)self _evaluateForNewKeyWindowWithReason:@"popped window was key"];
    }
  }
}

- (void)noteWindowDeallocated:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [_SBFKeyWindowStack noteWindowDeallocated:];
  }

  BSDispatchQueueAssertMain();
  [(_SBFKeyWindowStack *)self popKeyWindow:v4 reason:@"window deallocated"];
}

- (void)noteWindowHidden:(id)a3
{
  v8 = a3;
  if (!v8)
  {
    [_SBFKeyWindowStack noteWindowHidden:];
  }

  BSDispatchQueueAssertMain();
  if ([v8 isKeyWindow])
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = [MEMORY[0x1E698E680] descriptionForObject:v8];
    v6 = [v4 stringWithFormat:@"Window hidden: %@", v5];
    v7 = [(_SBFKeyWindowStack *)self _evaluateForNewKeyWindowWithReason:v6];
  }
}

- (void)noteWindowUnhidden:(id)a3
{
  v10 = a3;
  if (!v10)
  {
    [_SBFKeyWindowStack noteWindowUnhidden:];
  }

  BSDispatchQueueAssertMain();
  windowStack = self->_windowStack;
  v5 = [_SBWindowReference referenceForObject:v10];
  LODWORD(windowStack) = [(NSMutableOrderedSet *)windowStack containsObject:v5];

  if (windowStack)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = [MEMORY[0x1E698E680] descriptionForObject:v10];
    v8 = [v6 stringWithFormat:@"Window unhidden: %@", v7];
    v9 = [(_SBFKeyWindowStack *)self _evaluateForNewKeyWindowWithReason:v8];
  }
}

- (id)_evaluateForNewKeyWindowWithReason:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [(NSMutableOrderedSet *)self->_windowStack reverseObjectEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
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
        objc_enumerationMutation(v5);
      }

      v10 = [*(*(&v19 + 1) + 8 * v9) object];
      if ([(_SBFKeyWindowStack *)self _isWindowEligibleForKeyness:v10])
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
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
    v10 = 0;
  }

  if (self->_expectedKeyWindow != v10)
  {
    v11 = SBLogKeyWindow();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [MEMORY[0x1E698E680] descriptionForObject:v10];
      *buf = 138543618;
      v24 = v12;
      v25 = 2114;
      v26 = v4;
      _os_log_impl(&dword_1BEA11000, v11, OS_LOG_TYPE_DEFAULT, "Evaluate: making new window key: %{public}@, for reason: %{public}@ ", buf, 0x16u);
    }

    [(SBFWindow *)self->_expectedKeyWindow _resignKeyFromKeyWindowStack];
    self->_expectedKeyWindow = v10;
LABEL_18:
    [(SBFWindow *)v10 _makeKeyFromKeyWindowStack];
    goto LABEL_19;
  }

  v13 = [MEMORY[0x1E69DC668] sharedApplication];
  v14 = [v13 keyWindow];

  v15 = SBLogKeyWindow();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (v14 != v10)
  {
    if (v16)
    {
      v17 = [MEMORY[0x1E698E680] descriptionForObject:v10];
      *buf = 138543618;
      v24 = v17;
      v25 = 2114;
      v26 = v4;
      _os_log_impl(&dword_1BEA11000, v15, OS_LOG_TYPE_DEFAULT, "Evaluate: making new window key: %{public}@ from nonSBF window, for reason: %{public}@ ", buf, 0x16u);
    }

    goto LABEL_18;
  }

  if (v16)
  {
    *buf = 138543362;
    v24 = v4;
    _os_log_impl(&dword_1BEA11000, v15, OS_LOG_TYPE_DEFAULT, "Evaluate: no change - reason: %{public}@ ", buf, 0xCu);
  }

LABEL_19:

  return v10;
}

- (BOOL)_isWindowEligibleForKeyness:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 canBecomeKeyWindow])
  {
    v5 = [v4 _isEffectivelyHiddenForKeyWindowStack] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)_keyWindowDidChangeNotification:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = [a3 object];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = SBLogKeyWindow();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [MEMORY[0x1E698E680] descriptionForObject:v3];
      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&dword_1BEA11000, v4, OS_LOG_TYPE_DEFAULT, "A window that wasn't a SB owned window became key: %{public}@", &v6, 0xCu);
    }
  }
}

- (id)succinctDescription
{
  v2 = [(_SBFKeyWindowStack *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_SBFKeyWindowStack *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(_SBFKeyWindowStack *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60___SBFKeyWindowStack_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E807F290;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

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