@interface _UIKeyWindowEvaluator
+ (id)sharedEvaluator;
- (char)_stackForWindowScene:(char *)a1;
- (id)applicationKeyWindow;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)keyWindowForUserInterfaceIdiom:(uint64_t)a1;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (uint64_t)_defaultEvaluationStrategyForIdiom:(uint64_t)a1;
- (uint64_t)_evaluationStrategyForScene:(uint64_t)a1;
- (uint64_t)windowScene:(uint64_t)a3 willTransitionToActivationState:;
- (void)_evaluateApplicationKeyWindowWithComparisonWindowScene:(uint64_t)a3 changingKeyWindowSceneActions:(uint64_t)a4 sceneKeyWindowActions:(int)a5 ignoringOldKeyWindow:(uint64_t)a6 sceneResignKeyWindowActions:(uint64_t)a7 andSceneBecomeKeyWindowActions:(uint64_t)a8 forReason:(void *)a9;
- (void)_setDefaultEvaluationStrategy:(uint64_t)a3 forIdiom:;
- (void)_updateDefaultEvaluationStrategyForIdiomIfNeededWithRequest:(__int16)a3;
- (void)dealloc;
- (void)evaluateApplicationKeyWindowForWindowScene:(int)a3 withWindowMadeKey:(uint64_t)a4 sceneKeyWindowActions:(int)a5 ignoringOldKeyWindow:(uint64_t)a6 sceneResignKeyWindowActions:(uint64_t)a7 andSceneBecomeKeyWindowActions:(uint64_t)a8 forReason:(void *)a9;
- (void)windowScene:(void *)a3 didMoveFromScreen:(void *)a4 toScreen:;
- (void)windowScene:(void *)a3 willMoveFromScreen:(void *)a4 toScreen:;
- (void)windowSceneDidBecomeTargetOfKeyboardEventDeferringEnvironment:(char *)a1;
- (void)windowSceneDidConnect:(uint64_t)a1;
- (void)windowSceneWillInvalidate:(uint64_t)a1;
@end

@implementation _UIKeyWindowEvaluator

+ (id)sharedEvaluator
{
  if (_MergedGlobals_1273 != -1)
  {
    dispatch_once(&_MergedGlobals_1273, &__block_literal_global_508);
  }

  v3 = qword_1ED4A0828;

  return v3;
}

- (id)applicationKeyWindow
{
  if (a1)
  {
    a1 = a1[26];
    v1 = vars8;
  }

  return a1;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_stateCaptureToken invalidate];
  v3.receiver = self;
  v3.super_class = _UIKeyWindowEvaluator;
  [(_UIKeyWindowEvaluator *)&v3 dealloc];
}

- (id)succinctDescription
{
  v2 = [(_UIKeyWindowEvaluator *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  if (self->_applicationKeyWindow)
  {
    v4 = objc_opt_class();
    Name = class_getName(v4);
    applicationKeyWindow = self->_applicationKeyWindow;
  }

  else
  {
    applicationKeyWindow = 0;
    Name = "(nil)";
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%s: %p>", Name, applicationKeyWindow];
  v8 = [v3 appendObject:v7 withName:@"applicationKeyWindow"];
  keyWindowSceneStack = self->_keyWindowSceneStack;
  if (keyWindowSceneStack)
  {
    v10 = [(NSMapTable *)keyWindowSceneStack->_recordsByWindowScene count];
  }

  else
  {
    v10 = 0;
  }

  v11 = [v3 appendUnsignedInteger:v10 withName:@"keyWindowSceneStack.count"];
  excludedSceneStack = self->_excludedSceneStack;
  if (excludedSceneStack)
  {
    v13 = [(NSMapTable *)excludedSceneStack->_recordsByWindowScene count];
  }

  else
  {
    v13 = 0;
  }

  v14 = [v3 appendUnsignedInteger:v13 withName:@"excludedSceneStack.count"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_UIKeyWindowEvaluator *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_UIKeyWindowEvaluator *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v5 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v5 setActiveMultilinePrefix:a3];
  keyWindowSceneStack = self->_keyWindowSceneStack;
  if (keyWindowSceneStack)
  {
    v7 = [(NSMapTable *)keyWindowSceneStack->_recordsByWindowScene count];
  }

  else
  {
    v7 = 0;
  }

  v8 = [v5 appendUnsignedInteger:v7 withName:@"keyWindowSceneStack.count"];
  excludedSceneStack = self->_excludedSceneStack;
  if (excludedSceneStack)
  {
    v10 = [(NSMapTable *)excludedSceneStack->_recordsByWindowScene count];
  }

  else
  {
    v10 = 0;
  }

  v11 = [v5 appendUnsignedInteger:v10 withName:@"excludedSceneStack.count"];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __63___UIKeyWindowEvaluator_descriptionBuilderWithMultilinePrefix___block_invoke;
  v16[3] = &unk_1E70F35B8;
  v12 = v5;
  v17 = v12;
  v18 = self;
  v13 = [v12 modifyBody:v16];
  v14 = v12;

  return v12;
}

- (uint64_t)_defaultEvaluationStrategyForIdiom:(uint64_t)a1
{
  if ((a2 - 11) <= 0xFFFFFFFFFFFFFFF3)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:sel__defaultEvaluationStrategyForIdiom_ object:a1 file:@"_UIKeyWindowEvaluator.m" lineNumber:250 description:{@"Invalid parameter not satisfying: %@", @"(idiom >= UIUserInterfaceIdiomFirst) && (idiom <= UIUserInterfaceIdiomLast)"}];
  }

  return *(a1 + 8 * a2 + 104);
}

- (void)_setDefaultEvaluationStrategy:(uint64_t)a3 forIdiom:
{
  v16 = *MEMORY[0x1E69E9840];
  if ((a3 - 11) <= 0xFFFFFFFFFFFFFFF3)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:sel__setDefaultEvaluationStrategy_forIdiom_ object:a1 file:@"_UIKeyWindowEvaluator.m" lineNumber:255 description:{@"Invalid parameter not satisfying: %@", @"(idiom >= UIUserInterfaceIdiomFirst) && (idiom <= UIUserInterfaceIdiomLast)"}];
  }

  *(a1 + 8 * a3 + 104) = a2;
  v6 = _NSStringFromUIUserInterfaceIdiom(a3);
  v7 = [v6 UTF8String];

  if (a2)
  {
    v8 = @"SystemShellManaged";
  }

  else
  {
    v8 = @"LastOneWins";
  }

  v9 = [(__CFString *)v8 UTF8String];
  v10 = *(__UILogGetCategoryCachedImpl("KeyWindow", &_setDefaultEvaluationStrategy_forIdiom____s_category) + 8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v13 = v7;
    v14 = 2082;
    v15 = v9;
    _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_DEFAULT, "Setting default evaluation strategy for %{public}s to %{public}s", buf, 0x16u);
  }
}

- (void)_updateDefaultEvaluationStrategyForIdiomIfNeededWithRequest:(__int16)a3
{
  v43 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = a2;
    v7 = [v6 _screen];
    v8 = [v7 _userInterfaceIdiom];

    if (a3 & 0x100) != 0 && (a3)
    {
      v30 = [MEMORY[0x1E696AAA8] currentHandler];
      [v30 handleFailureInMethod:sel__updateDefaultEvaluationStrategyForIdiomIfNeededWithRequest_ object:a1 file:@"_UIKeyWindowEvaluator.m" lineNumber:268 description:{@"Invalid request. The scene cannot be added and removed: %@", v6}];
    }

    else
    {
      v9 = [(_UIKeyWindowEvaluator *)a1 _stackForWindowScene:v6];
      v10 = v9;
      v11 = *(a1 + 200);
      if (v11 && v9 == v11)
      {
        v12 = _NSStringFromUIUserInterfaceIdiom(v8);
        v13 = [v12 UTF8String];

        v14 = objc_opt_class();
        Name = class_getName(v14);
        v16 = _UIKeyWindowUTF8SceneIdentityStringForWindowScene(v6);
        v17 = *(__UILogGetCategoryCachedImpl("KeyWindow", &_updateDefaultEvaluationStrategyForIdiomIfNeededWithRequest____s_category) + 8);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446978;
          v36 = v13;
          v37 = 2082;
          v38 = Name;
          v39 = 2050;
          v40 = a2;
          v41 = 2082;
          v42 = v16;
          _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_ERROR, "Dropping request to update default evalution strategy of %{public}s because scene is moving screens: %{public}s: %{public}p; identity: %{public}s", buf, 0x2Au);
        }
      }

      else
      {
        v18 = a1 + 8 * v8;
        if (a3)
        {
          if ((v8 - 11) <= 0xFFFFFFFFFFFFFFF3)
          {
            v32 = [MEMORY[0x1E696AAA8] currentHandler];
            [v32 handleFailureInMethod:sel__incrementFBSSceneBackedSceneCountForIdiom_ object:a1 file:@"_UIKeyWindowEvaluator.m" lineNumber:240 description:{@"Invalid parameter not satisfying: %@", @"(idiom >= UIUserInterfaceIdiomFirst) && (idiom <= UIUserInterfaceIdiomLast)"}];
          }

          ++*(v18 + 16);
        }

        v19 = v8 - 11;
        if ((a3 & 0x100) != 0)
        {
          if (v19 <= 0xFFFFFFFFFFFFFFF3)
          {
            v33 = [MEMORY[0x1E696AAA8] currentHandler];
            [v33 handleFailureInMethod:sel__decrementFBSSceneBackedSceneCountForIdiom_ object:a1 file:@"_UIKeyWindowEvaluator.m" lineNumber:245 description:{@"Invalid parameter not satisfying: %@", @"(idiom >= UIUserInterfaceIdiomFirst) && (idiom <= UIUserInterfaceIdiomLast)"}];
          }

          --*(v18 + 16);
        }

        if (v19 <= 0xFFFFFFFFFFFFFFF3)
        {
          v31 = [MEMORY[0x1E696AAA8] currentHandler];
          [v31 handleFailureInMethod:sel__countOfFBSSceneBackedScenesForIdiom_ object:a1 file:@"_UIKeyWindowEvaluator.m" lineNumber:235 description:{@"Invalid parameter not satisfying: %@", @"(idiom >= UIUserInterfaceIdiomFirst) && (idiom <= UIUserInterfaceIdiomLast)"}];
        }

        v20 = *(v18 + 16);
        v21 = [v6 _isTargetOfKeyboardEventDeferringEnvironment];
        if (v20)
        {
          v22 = v21;
        }

        else
        {
          v22 = 0;
        }

        v23 = [(_UIKeyWindowEvaluator *)a1 _defaultEvaluationStrategyForIdiom:v8];
        if (v23 == -1)
        {
          [(_UIKeyWindowEvaluator *)a1 _setDefaultEvaluationStrategy:v22 forIdiom:v8];
        }

        if (!_UIApplicationMayVendViews() || ([v6 _FBSScene], v24 = objc_claimAutoreleasedReturnValue(), v25 = v24 == 0, v24, !v25))
        {
          if (v23 != v22)
          {
            v26 = (v23 == 0) & v22;
            v27 = v23 == 1 && v20 == 0;
            v28 = v27;
            if ((v26 & 1) != 0 || v28)
            {
              aBlock[0] = MEMORY[0x1E69E9820];
              aBlock[1] = 3221225472;
              aBlock[2] = __85___UIKeyWindowEvaluator__updateDefaultEvaluationStrategyForIdiomIfNeededWithRequest___block_invoke;
              aBlock[3] = &__block_descriptor_56_e32_v16__0___UIKeyWindowSceneStack_8l;
              aBlock[4] = v26 ^ 1;
              aBlock[5] = v26;
              aBlock[6] = v8;
              v29 = _Block_copy(aBlock);
              v29[2](v29, *(a1 + 184));
              v29[2](v29, *(a1 + 192));
              [(_UIKeyWindowEvaluator *)a1 _setDefaultEvaluationStrategy:v26 forIdiom:v8];
            }
          }
        }
      }
    }
  }
}

- (char)_stackForWindowScene:(char *)a1
{
  if (a1)
  {
    v4 = a1;
    v5 = [a2 _screen];
    v6 = [v5 _userInterfaceIdiom];

    v7 = [a2 session];
    v8 = [v7 role];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 isEqualToString:@"UIWindowSceneSessionRoleExternalDisplayNonInteractive"];

      if (v6 != 3 && (v10 & 1) == 0)
      {
        v13 = *(v4 + 23);
        v12 = (v4 + 184);
        v11 = v13;
        if (!v13)
        {
          v14 = [_UIKeyWindowSceneStack alloc];
          v15 = @"KeyWindow";
          v16 = 1;
LABEL_10:
          v18 = [(_UIKeyWindowSceneStack *)v14 _initWithName:v15 affectsApplicationKeyWindow:v16];
          v19 = *v12;
          *v12 = v18;

          v11 = *v12;
          goto LABEL_11;
        }

        goto LABEL_11;
      }
    }

    else
    {
    }

    v17 = *(v4 + 24);
    v12 = (v4 + 192);
    v11 = v17;
    if (!v17)
    {
      v14 = [_UIKeyWindowSceneStack alloc];
      v15 = @"Excluded";
      v16 = 0;
      goto LABEL_10;
    }

LABEL_11:
    a1 = v11;
    v2 = vars8;
  }

  return a1;
}

- (uint64_t)_evaluationStrategyForScene:(uint64_t)a1
{
  v2 = a1;
  if (a1)
  {
    v4 = [a2 _screen];
    v5 = [v4 _userInterfaceIdiom];

    v2 = [(_UIKeyWindowEvaluator *)v2 _defaultEvaluationStrategyForIdiom:v5];
    if (_UIApplicationMayVendViews())
    {
      v6 = [a2 _FBSScene];

      if (!v6)
      {
        return 0;
      }
    }
  }

  return v2;
}

- (void)_evaluateApplicationKeyWindowWithComparisonWindowScene:(uint64_t)a3 changingKeyWindowSceneActions:(uint64_t)a4 sceneKeyWindowActions:(int)a5 ignoringOldKeyWindow:(uint64_t)a6 sceneResignKeyWindowActions:(uint64_t)a7 andSceneBecomeKeyWindowActions:(uint64_t)a8 forReason:(void *)a9
{
  v14 = a9;
  v60 = *MEMORY[0x1E69E9840];
  if (!a2 || ([a2 _hasInvalidated] & 1) == 0)
  {
    v15 = [a9 UTF8String];
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("KeyWindow", &qword_1ED4A0830);
    if (*CategoryCachedImpl)
    {
      v41 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        *v53 = v15;
        _os_log_impl(&dword_188A29000, v41, OS_LOG_TYPE_ERROR, "Evaluating application key window for reason: %{public}s", buf, 0xCu);
      }
    }

    if ((a3 == 0) != (a4 != 0))
    {
      v42 = [MEMORY[0x1E696AAA8] currentHandler];
      [v42 handleFailureInMethod:sel__evaluateApplicationKeyWindowWithComparisonWindowScene_changingKeyWindowSceneActions_sceneKeyWindowActions_ignoringOldKeyWindow_sceneResignKeyWindowActions_andSceneBecomeKeyWindowActions_forReason_ object:a1 file:@"_UIKeyWindowEvaluator.m" lineNumber:515 description:{@"Invalid actions specified", a1, "-[_UIKeyWindowEvaluator _evaluateApplicationKeyWindowWithComparisonWindowScene:changingKeyWindowSceneActions:sceneKeyWindowActions:ignoringOldKeyWindow:sceneResignKeyWindowActions:andSceneBecomeKeyWindowActions:forReason:]"}];
    }

    v17 = *(a1 + 208);
    v18 = [*(a1 + 208) windowScene];
    v19 = [(_UIKeyWindowSceneStack *)*(a1 + 184) keyWindowSceneInStack];
    v20 = [(UIWindowScene *)v19 _keyWindow];
    v21 = v20;
    v22 = v20 != 0;
    if (v20)
    {
      v23 = a2 != 0;
    }

    else
    {
      v23 = 0;
    }

    if (v19 != a2)
    {
      v23 = 0;
    }

    v43 = v23;
    if (v20 == v17)
    {
      v22 = 0;
    }

    v46 = v22;
    v14 = a9;
    if (a3 && v19 && v19 != v18 && v20)
    {
      (*(a3 + 16))(a3, v19);
    }

    v24 = *(__UILogGetCategoryCachedImpl("KeyWindow", &qword_1ED4A0838) + 8);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67241474;
      *v53 = v21 != v17;
      *&v53[4] = 2050;
      *&v53[6] = v18;
      *&v53[14] = 2050;
      *&v53[16] = v19;
      v54 = 2050;
      v55 = v17;
      v56 = 2050;
      v57 = v21;
      v58 = 2082;
      v59 = v15;
      _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_DEFAULT, "Key window needs update: %{public}d; currentKeyWindowScene: %{public}p; evaluatedKeyWindowScene: %{public}p; currentApplicationKeyWindow: %{public}p; evaluatedApplicationKeyWindow: %{public}p; reason: %{public}s", buf, 0x3Au);
    }

    if (v21 == v17)
    {
      if (a4)
      {
        (*(a4 + 16))(a4, 0);
      }

      if (a6 && (a5 & 1) == 0)
      {
        (*(a6 + 16))();
      }

      if (a7)
      {
        (*(a7 + 16))();
      }

      goto LABEL_63;
    }

    if (a5)
    {
      v25 = 0;
    }

    else
    {
      v25 = v17;
    }

    v45 = v25;
    v44 = _UIWindowKeyWindowAPIIsSceneLevel();
    v26 = [MEMORY[0x1E696AD88] defaultCenter];
    v27 = v26;
    if (v46)
    {
      [v26 postNotificationName:@"_UIWindowWillBecomeApplicationKeyNotification" object:v21];
      if ((v44 & 1) == 0)
      {
        [v27 postNotificationName:@"_UIWindowWillBecomeKeyNotification" object:v21];
      }

      *(a1 + 208) = v21;
    }

    else
    {
      *(a1 + 208) = v21;
      if (!v21)
      {
        Name = "(nil)";
        goto LABEL_37;
      }
    }

    v28 = objc_opt_class();
    Name = class_getName(v28);
LABEL_37:
    v30 = _UIKeyWindowUTF8SceneIdentityStringForWindowScene(v19);
    v31 = *(__UILogGetCategoryCachedImpl("KeyWindow", &qword_1ED4A0840) + 8);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [v21 _contextId];
      *buf = 136446978;
      *v53 = Name;
      *&v53[8] = 2050;
      *&v53[10] = v21;
      *&v53[18] = 1026;
      *&v53[20] = v32;
      v54 = 2082;
      v55 = v30;
      _os_log_impl(&dword_188A29000, v31, OS_LOG_TYPE_DEFAULT, "Window did become application key: %{public}s: %{public}p; contextId: 0x%{public}X; scene identity: %{public}s", buf, 0x26u);
    }

    if (a4)
    {
      (*(a4 + 16))(a4, v43);
    }

    if ((a5 & 1) == 0)
    {
      if (a6)
      {
        (*(a6 + 16))();
      }

      if (v17)
      {
        v33 = objc_opt_class();
        v34 = class_getName(v33);
        v35 = [v17 windowScene];
        v36 = _UIKeyWindowUTF8SceneIdentityStringForWindowScene(v35);

        v37 = *(__UILogGetCategoryCachedImpl("KeyWindow", &qword_1ED4A0848) + 8);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v38 = [v17 _contextId];
          *buf = 136446978;
          *v53 = v34;
          *&v53[8] = 2050;
          *&v53[10] = v17;
          *&v53[18] = 1026;
          *&v53[20] = v38;
          v54 = 2082;
          v55 = v36;
          _os_log_impl(&dword_188A29000, v37, OS_LOG_TYPE_DEFAULT, "Window resigning application key: %{public}s: %{public}p; contextId: 0x%{public}X; scene identity: %{public}s", buf, 0x26u);
        }

        [v27 postNotificationName:@"_UIWindowDidResignApplicationKeyNotification" object:v17];
        if ((v44 & 1) == 0)
        {
          [v17 resignKeyWindow];
          [v27 postNotificationName:@"UIWindowDidResignKeyNotification" object:v17];
        }

        [(UIWindow *)v17 _resignApplicationKeyWindowStatus];
      }

      if (v18 && v19 != v18)
      {
        [v27 postNotificationName:@"_UISceneDidResignKeyNotification" object:v18];
      }
    }

    if (a7)
    {
      (*(a7 + 16))();
    }

    if (v46)
    {
      v50 = @"Reason";
      v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a10];
      v51 = v39;
      v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];

      [v27 postNotificationName:@"_UIWindowDidBecomeApplicationKeyNotification" object:v21 userInfo:v40];
      if ((v44 & 1) == 0)
      {
        [v21 becomeKeyWindow];
        [v27 postNotificationName:@"UIWindowDidBecomeKeyNotification" object:v21];
      }

      [(UIWindow *)v21 _didBecomeApplicationKeyWindowWithOldApplicationKeyWindow:v45];
    }

    if (v19 != v18 && v19)
    {
      [v27 postNotificationName:@"_UISceneDidBecomeKeyNotification" object:v19];
    }

LABEL_63:
  }
}

- (void)evaluateApplicationKeyWindowForWindowScene:(int)a3 withWindowMadeKey:(uint64_t)a4 sceneKeyWindowActions:(int)a5 ignoringOldKeyWindow:(uint64_t)a6 sceneResignKeyWindowActions:(uint64_t)a7 andSceneBecomeKeyWindowActions:(uint64_t)a8 forReason:(void *)a9
{
  if (a1)
  {
    if (!a2)
    {
      v24 = [MEMORY[0x1E696AAA8] currentHandler];
      [v24 handleFailureInMethod:sel_evaluateApplicationKeyWindowForWindowScene_withWindowMadeKey_sceneKeyWindowActions_ignoringOldKeyWindow_sceneResignKeyWindowActions_andSceneBecomeKeyWindowActions_forReason_ object:a1 file:@"_UIKeyWindowEvaluator.m" lineNumber:662 description:{@"Invalid parameter not satisfying: %@", @"windowScene"}];
    }

    if (([a2 _hasInvalidated] & 1) == 0)
    {
      v17 = _UIKeyWindowSceneObserverForScene(a2);
      v18 = a2;
      [(_UIKeyWindowEvaluator *)a1 _updateDefaultEvaluationStrategyForIdiomIfNeededWithRequest:v18, 0];
      v19 = [(_UIKeyWindowEvaluator *)a1 _evaluationStrategyForScene:v18];
      v20 = [(UIWindowScene *)v18 _keyWindow];

      if (!v19 && a3 && v20)
      {
        v21 = [(_UIKeyWindowEvaluator *)a1 _stackForWindowScene:v18];
        [(_UIKeyWindowSceneStack *)v21 pushWindowScene:v18 withEvaluationStrategy:0 forReason:a9];
      }

      v22 = a9;
      [(_UIKeyWindowEvaluator *)a1 _evaluateApplicationKeyWindowWithComparisonWindowScene:v18 changingKeyWindowSceneActions:0 sceneKeyWindowActions:a4 ignoringOldKeyWindow:a5 sceneResignKeyWindowActions:a6 andSceneBecomeKeyWindowActions:a7 forReason:v23, a9, a10];
    }
  }
}

- (id)keyWindowForUserInterfaceIdiom:(uint64_t)a1
{
  if (a1)
  {
    if (a2 == 3)
    {
      v2 = *(a1 + 192);
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __56___UIKeyWindowEvaluator_keyWindowForUserInterfaceIdiom___block_invoke;
      v6[3] = &__block_descriptor_40_e23_B16__0__UIWindowScene_8l;
      v6[4] = 3;
      v3 = [(_UIKeyWindowSceneStack *)v2 keyWindowSceneInStackPassingTest:v6];
      v4 = [(UIWindowScene *)v3 _keyWindow];
    }

    else
    {
      v4 = *(a1 + 208);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)windowSceneDidConnect:(uint64_t)a1
{
  if (a1)
  {
    v3 = a2;
    v4 = [v3 _FBSScene];
    [(_UIKeyWindowEvaluator *)a1 _updateDefaultEvaluationStrategyForIdiomIfNeededWithRequest:v3, v4 != 0];
  }
}

- (uint64_t)windowScene:(uint64_t)a3 willTransitionToActivationState:
{
  if (result)
  {
    v5 = result;
    result = [a2 _hasInvalidated];
    if ((result & 1) == 0)
    {
      result = [a2 activationState];
      v6 = result;
      v8 = a3 == 2 && result != 2;
      if (result)
      {
        v9 = a3 == 0;
      }

      else
      {
        v9 = 0;
      }

      if (v9 || v8)
      {
        v10 = [UIApp _isActivated];
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __69___UIKeyWindowEvaluator_windowScene_willTransitionToActivationState___block_invoke;
        v11[3] = &unk_1E711F750;
        v11[6] = v6;
        v11[7] = a3;
        v11[4] = v5;
        v11[5] = a2;
        v12 = a3 == 0;
        v13 = v10;
        v14 = a3 == 2;
        return [a2 _enqueuePostSettingsUpdateResponseBlock:v11 inPhase:0x1EFB17490];
      }
    }
  }

  return result;
}

- (void)windowSceneDidBecomeTargetOfKeyboardEventDeferringEnvironment:(char *)a1
{
  if (a1 && ([a2 _hasInvalidated] & 1) == 0 && objc_msgSend(a2, "_isTargetOfKeyboardEventDeferringEnvironment"))
  {
    v4 = a2;
    [(_UIKeyWindowEvaluator *)a1 _updateDefaultEvaluationStrategyForIdiomIfNeededWithRequest:v4, 0];
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %p: Window scene became target of keyboard environment", objc_opt_class(), v4];
    v5 = [(_UIKeyWindowEvaluator *)a1 _stackForWindowScene:v4];
    v6 = [(_UIKeyWindowSceneStack *)v5 keyWindowSceneInStack];
    [(_UIKeyWindowSceneStack *)v5 pushWindowScene:v4 withEvaluationStrategy:1 forReason:v11];
    v7 = [(_UIKeyWindowSceneStack *)v5 keyWindowSceneInStack];
    v8 = v7;
    if (v5 && (*(v5 + 32) & 1) != 0 && v7 != v6)
    {
      v9 = v11;
      [(_UIKeyWindowEvaluator *)a1 _evaluateApplicationKeyWindowWithComparisonWindowScene:v4 changingKeyWindowSceneActions:&__block_literal_global_114_2 sceneKeyWindowActions:0 ignoringOldKeyWindow:0 sceneResignKeyWindowActions:0 andSceneBecomeKeyWindowActions:0 forReason:v10, v9, 1];
    }
  }
}

- (void)windowScene:(void *)a3 willMoveFromScreen:(void *)a4 toScreen:
{
  if (a1)
  {
    v7 = [a3 _userInterfaceIdiom];
    if ([a4 _userInterfaceIdiom] != v7)
    {
      [(_UIKeyWindowEvaluator *)a1 _updateDefaultEvaluationStrategyForIdiomIfNeededWithRequest:a2, 256];
    }

    v8 = [(_UIKeyWindowEvaluator *)a1 _stackForWindowScene:a2];
    v9 = *(a1 + 200);
    *(a1 + 200) = v8;
  }
}

- (void)windowScene:(void *)a3 didMoveFromScreen:(void *)a4 toScreen:
{
  v52 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v5 = *(a1 + 200);
    if (v5)
    {
      v9 = v5;
      v10 = *(a1 + 200);
      *(a1 + 200) = 0;

      v11 = [a3 _userInterfaceIdiom];
      if ([a4 _userInterfaceIdiom] != v11)
      {
        [(_UIKeyWindowEvaluator *)a1 _updateDefaultEvaluationStrategyForIdiomIfNeededWithRequest:a2, 1];
      }

      v12 = [(_UIKeyWindowEvaluator *)a1 _stackForWindowScene:a2];
      v13 = objc_opt_class();
      Name = class_getName(v13);
      v15 = _UIKeyWindowUTF8SceneIdentityStringForWindowScene(a2);
      v16 = *(__UILogGetCategoryCachedImpl("KeyWindow", &windowScene_didMoveFromScreen_toScreen____s_category) + 8);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v38 = Name;
        v39 = v15;
        if (a3)
        {
          v17 = MEMORY[0x1E696AEC0];
          v18 = a3;
          v19 = objc_opt_class();
          v20 = NSStringFromClass(v19);
          v21 = [v17 stringWithFormat:@"<%@: %p>", v20, v18];
        }

        else
        {
          v21 = @"(nil)";
        }

        v22 = v21;
        if (a4)
        {
          v23 = MEMORY[0x1E696AEC0];
          v24 = a4;
          v25 = objc_opt_class();
          v26 = NSStringFromClass(v25);
          v27 = [v23 stringWithFormat:@"<%@: %p>", v26, v24];
        }

        else
        {
          v27 = @"(nil)";
        }

        *buf = 136447490;
        v41 = v38;
        v42 = 2050;
        v43 = a2;
        v44 = 2114;
        v45 = v22;
        v46 = 2114;
        v47 = v27;
        v48 = 1026;
        v49 = v12 != v9;
        v50 = 2082;
        v51 = v39;
        _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_DEFAULT, "Scene did move screens: %{public}s: %{public}p; from %{public}@ to %{public}@; needs stack move: %{public}d; scene identity: %{public}s", buf, 0x3Au);
      }

      if (v12 != v9)
      {
        v28 = v9[3];
        v29 = [(_UIKeyWindowSceneStack *)v12 keyWindowSceneInStack];
        v30 = [(_UIKeyWindowEvaluator *)a1 _evaluationStrategyForScene:a2];
        v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %p: Window scene moved screens", objc_opt_class(), a2];
        [_UIKeyWindowSceneStack moveWindowSceneWithoutPushing:a2 fromStack:v9 toStack:v12 withStackEvaluationStrategy:v30 reason:v31];
        v32 = v9[3];
        v33 = [(_UIKeyWindowSceneStack *)v12 keyWindowSceneInStack];
        v34 = v33;
        if (v12)
        {
          v35 = *(v12 + 32) & 1;
        }

        else
        {
          v35 = 0;
        }

        if ((v9[4] & (v32 != v28) | v35 & (v33 != v29)) == 1)
        {
          v36 = v31;
          [(_UIKeyWindowEvaluator *)a1 _evaluateApplicationKeyWindowWithComparisonWindowScene:a2 changingKeyWindowSceneActions:&__block_literal_global_119_0 sceneKeyWindowActions:0 ignoringOldKeyWindow:0 sceneResignKeyWindowActions:0 andSceneBecomeKeyWindowActions:0 forReason:v37, v36, 3];
        }
      }
    }
  }
}

- (void)windowSceneWillInvalidate:(uint64_t)a1
{
  v51 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = *(a1 + 208);
    v5 = a2;
    v6 = [v5 _FBSScene];
    [(_UIKeyWindowEvaluator *)a1 _updateDefaultEvaluationStrategyForIdiomIfNeededWithRequest:v5, (v6 != 0) << 8];

    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %p: Window scene was invalidated", objc_opt_class(), v5];
    v8 = [(_UIKeyWindowEvaluator *)a1 _stackForWindowScene:v5];
    v9 = [(_UIKeyWindowSceneStack *)v8 keyWindowSceneInStack];
    [(_UIKeyWindowSceneStack *)v8 removeWindowScene:v5 forReason:v7];
    v10 = [(_UIKeyWindowSceneStack *)v8 keyWindowSceneInStack];
    v11 = v10;
    if (!v8)
    {
      goto LABEL_22;
    }

    if ((*(v8 + 32) & 1) == 0)
    {
      goto LABEL_22;
    }

    if (v10 == v9)
    {
      goto LABEL_22;
    }

    v12 = v7;
    [(_UIKeyWindowEvaluator *)a1 _evaluateApplicationKeyWindowWithComparisonWindowScene:&__block_literal_global_124_1 changingKeyWindowSceneActions:0 sceneKeyWindowActions:1 ignoringOldKeyWindow:0 sceneResignKeyWindowActions:0 andSceneBecomeKeyWindowActions:v13 forReason:v12, 4];
    if (v4 != *(a1 + 208))
    {
      goto LABEL_22;
    }

    v14 = [v5 screen];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __51___UIKeyWindowEvaluator_windowSceneWillInvalidate___block_invoke_2;
    v41[3] = &unk_1E70FA210;
    v41[4] = v4;
    if (!v14)
    {
      v27 = [MEMORY[0x1E696AAA8] currentHandler];
      v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"UIWindow * _Nullable _UIKeyWindowEvaluatorFindNewKeyWindowOnScreenPassingTest(UIScreen * _Nonnull const __strong, BOOL (^ _Nullable const __strong)(UIWindow * _Nonnull __strong))"}];
      [v27 handleFailureInFunction:v28 file:@"_UIKeyWindowEvaluator.m" lineNumber:481 description:{@"Invalid parameter not satisfying: %@", @"screen"}];
    }

    CategoryCachedImpl = __UILogGetCategoryCachedImpl("KeyWindow", &qword_1ED4A0850);
    if (*CategoryCachedImpl)
    {
      v29 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349056;
        *&buf[4] = v14;
        _os_log_impl(&dword_188A29000, v29, OS_LOG_TYPE_ERROR, "Finding new application key window on screen: %{public}p", buf, 0xCu);
      }
    }

    if (!v14)
    {
      v30 = [MEMORY[0x1E696AAA8] currentHandler];
      v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"UIWindowScene * _Nullable _UIKeyWindowEvaluatorFindNewKeyWindowSceneOnScreen(UIScreen * _Nonnull const __strong)"];
      [v30 handleFailureInFunction:v31 file:@"_UIKeyWindowEvaluator.m" lineNumber:448 description:{@"Invalid parameter not satisfying: %@", @"screen"}];
    }

    v16 = __UILogGetCategoryCachedImpl("KeyWindow", &qword_1ED4A0868);
    if (*v16)
    {
      v32 = *(v16 + 8);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349056;
        *&buf[4] = v14;
        _os_log_impl(&dword_188A29000, v32, OS_LOG_TYPE_ERROR, "Finding new key window scene on screen: %{public}p", buf, 0xCu);
      }
    }

    v17 = [_UISceneLifecycleMultiplexer mostActiveWindowSceneOnScreen:v14];
    v18 = [v17 _effectiveUISettings];
    IsForegroundActive = _UISceneLifecycleStateIsForegroundActive(v18);

    if (((v17 != 0) & IsForegroundActive) == 1 && (v20 = v17[47], v21 = v20 == 0, v20, v21))
    {
      v22 = v17;
    }

    else
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = ___UIKeyWindowEvaluatorFindNewKeyWindowSceneOnScreen_block_invoke;
      v49 = &unk_1E70F44A8;
      v50 = v14;
      v22 = [_UISceneLifecycleMultiplexer mostActiveSceneWithTest:buf];
    }

    v23 = v22;
    if (*__UILogGetCategoryCachedImpl("KeyWindow", &qword_1ED4A0870))
    {
      if (v23)
      {
        v33 = objc_opt_class();
        Name = class_getName(v33);
      }

      else
      {
        Name = "(nil)";
      }

      v39 = __UILogGetCategoryCachedImpl("KeyWindow", &qword_1ED4A0878);
      if (*v39)
      {
        v40 = *(v39 + 8);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          *v42 = 134349570;
          v43 = v14;
          v44 = 2082;
          v45 = Name;
          v46 = 2050;
          v47 = v23;
          _os_log_impl(&dword_188A29000, v40, OS_LOG_TYPE_ERROR, "Found new key window on screen: %{public}p; scene: %{public}s: %{public}p", v42, 0x20u);
        }
      }
    }

    if (v23)
    {
      v24 = [(UIWindowScene *)v23 _findNewKeyWindowPassingTest:v41];
      if (*__UILogGetCategoryCachedImpl("KeyWindow", &qword_1ED4A0858))
      {
        if (v24)
        {
          v25 = objc_opt_class();
          v26 = class_getName(v25);
          goto LABEL_32;
        }

LABEL_31:
        v26 = "(nil)";
LABEL_32:
        v35 = __UILogGetCategoryCachedImpl("KeyWindow", &qword_1ED4A0860);
        if (*v35)
        {
          v36 = *(v35 + 8);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            v37 = v36;
            v38 = [v24 _contextId];
            *buf = 134349826;
            *&buf[4] = v14;
            *&buf[12] = 2082;
            *&buf[14] = v26;
            *&buf[22] = 2050;
            v49 = v24;
            LOWORD(v50) = 1026;
            *(&v50 + 2) = v38;
            _os_log_impl(&dword_188A29000, v37, OS_LOG_TYPE_ERROR, "Found new application key window on screen: %{public}p; %{public}s: %{public}p; contextId: 0x%{public}X", buf, 0x26u);
          }
        }
      }
    }

    else
    {
      v24 = 0;
      if (*__UILogGetCategoryCachedImpl("KeyWindow", &qword_1ED4A0858))
      {
        goto LABEL_31;
      }
    }

    [(UIWindow *)v24 _makeKeyWindowIgnoringOldKeyWindow:0 transferringScenes:?];
LABEL_22:
  }
}

@end