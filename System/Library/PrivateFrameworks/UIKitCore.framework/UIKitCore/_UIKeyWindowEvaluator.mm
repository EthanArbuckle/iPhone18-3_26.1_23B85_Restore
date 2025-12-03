@interface _UIKeyWindowEvaluator
+ (id)sharedEvaluator;
- (char)_stackForWindowScene:(char *)scene;
- (id)applicationKeyWindow;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)keyWindowForUserInterfaceIdiom:(uint64_t)idiom;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (uint64_t)_defaultEvaluationStrategyForIdiom:(uint64_t)idiom;
- (uint64_t)_evaluationStrategyForScene:(uint64_t)scene;
- (uint64_t)windowScene:(uint64_t)scene willTransitionToActivationState:;
- (void)_evaluateApplicationKeyWindowWithComparisonWindowScene:(uint64_t)scene changingKeyWindowSceneActions:(uint64_t)actions sceneKeyWindowActions:(int)windowActions ignoringOldKeyWindow:(uint64_t)window sceneResignKeyWindowActions:(uint64_t)keyWindowActions andSceneBecomeKeyWindowActions:(uint64_t)becomeKeyWindowActions forReason:(void *)reason;
- (void)_setDefaultEvaluationStrategy:(uint64_t)strategy forIdiom:;
- (void)_updateDefaultEvaluationStrategyForIdiomIfNeededWithRequest:(__int16)request;
- (void)dealloc;
- (void)evaluateApplicationKeyWindowForWindowScene:(int)scene withWindowMadeKey:(uint64_t)key sceneKeyWindowActions:(int)actions ignoringOldKeyWindow:(uint64_t)window sceneResignKeyWindowActions:(uint64_t)windowActions andSceneBecomeKeyWindowActions:(uint64_t)keyWindowActions forReason:(void *)reason;
- (void)windowScene:(void *)scene didMoveFromScreen:(void *)screen toScreen:;
- (void)windowScene:(void *)scene willMoveFromScreen:(void *)screen toScreen:;
- (void)windowSceneDidBecomeTargetOfKeyboardEventDeferringEnvironment:(char *)environment;
- (void)windowSceneDidConnect:(uint64_t)connect;
- (void)windowSceneWillInvalidate:(uint64_t)invalidate;
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
  if (self)
  {
    self = self[26];
    v1 = vars8;
  }

  return self;
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
  succinctDescriptionBuilder = [(_UIKeyWindowEvaluator *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
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

  applicationKeyWindow = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%s: %p>", Name, applicationKeyWindow];
  v8 = [v3 appendObject:applicationKeyWindow withName:@"applicationKeyWindow"];
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

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_UIKeyWindowEvaluator *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_UIKeyWindowEvaluator *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v5 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v5 setActiveMultilinePrefix:prefix];
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
  selfCopy = self;
  v13 = [v12 modifyBody:v16];
  v14 = v12;

  return v12;
}

- (uint64_t)_defaultEvaluationStrategyForIdiom:(uint64_t)idiom
{
  if ((a2 - 11) <= 0xFFFFFFFFFFFFFFF3)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel__defaultEvaluationStrategyForIdiom_ object:idiom file:@"_UIKeyWindowEvaluator.m" lineNumber:250 description:{@"Invalid parameter not satisfying: %@", @"(idiom >= UIUserInterfaceIdiomFirst) && (idiom <= UIUserInterfaceIdiomLast)"}];
  }

  return *(idiom + 8 * a2 + 104);
}

- (void)_setDefaultEvaluationStrategy:(uint64_t)strategy forIdiom:
{
  v16 = *MEMORY[0x1E69E9840];
  if ((strategy - 11) <= 0xFFFFFFFFFFFFFFF3)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel__setDefaultEvaluationStrategy_forIdiom_ object:self file:@"_UIKeyWindowEvaluator.m" lineNumber:255 description:{@"Invalid parameter not satisfying: %@", @"(idiom >= UIUserInterfaceIdiomFirst) && (idiom <= UIUserInterfaceIdiomLast)"}];
  }

  *(self + 8 * strategy + 104) = a2;
  v6 = _NSStringFromUIUserInterfaceIdiom(strategy);
  uTF8String = [v6 UTF8String];

  if (a2)
  {
    v8 = @"SystemShellManaged";
  }

  else
  {
    v8 = @"LastOneWins";
  }

  uTF8String2 = [(__CFString *)v8 UTF8String];
  v10 = *(__UILogGetCategoryCachedImpl("KeyWindow", &_setDefaultEvaluationStrategy_forIdiom____s_category) + 8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v13 = uTF8String;
    v14 = 2082;
    v15 = uTF8String2;
    _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_DEFAULT, "Setting default evaluation strategy for %{public}s to %{public}s", buf, 0x16u);
  }
}

- (void)_updateDefaultEvaluationStrategyForIdiomIfNeededWithRequest:(__int16)request
{
  v43 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v6 = a2;
    _screen = [v6 _screen];
    _userInterfaceIdiom = [_screen _userInterfaceIdiom];

    if (request & 0x100) != 0 && (request)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__updateDefaultEvaluationStrategyForIdiomIfNeededWithRequest_ object:self file:@"_UIKeyWindowEvaluator.m" lineNumber:268 description:{@"Invalid request. The scene cannot be added and removed: %@", v6}];
    }

    else
    {
      v9 = [(_UIKeyWindowEvaluator *)self _stackForWindowScene:v6];
      v10 = v9;
      v11 = *(self + 200);
      if (v11 && v9 == v11)
      {
        v12 = _NSStringFromUIUserInterfaceIdiom(_userInterfaceIdiom);
        uTF8String = [v12 UTF8String];

        v14 = objc_opt_class();
        Name = class_getName(v14);
        v16 = _UIKeyWindowUTF8SceneIdentityStringForWindowScene(v6);
        v17 = *(__UILogGetCategoryCachedImpl("KeyWindow", &_updateDefaultEvaluationStrategyForIdiomIfNeededWithRequest____s_category) + 8);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446978;
          v36 = uTF8String;
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
        v18 = self + 8 * _userInterfaceIdiom;
        if (request)
        {
          if ((_userInterfaceIdiom - 11) <= 0xFFFFFFFFFFFFFFF3)
          {
            currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler2 handleFailureInMethod:sel__incrementFBSSceneBackedSceneCountForIdiom_ object:self file:@"_UIKeyWindowEvaluator.m" lineNumber:240 description:{@"Invalid parameter not satisfying: %@", @"(idiom >= UIUserInterfaceIdiomFirst) && (idiom <= UIUserInterfaceIdiomLast)"}];
          }

          ++*(v18 + 16);
        }

        v19 = _userInterfaceIdiom - 11;
        if ((request & 0x100) != 0)
        {
          if (v19 <= 0xFFFFFFFFFFFFFFF3)
          {
            currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler3 handleFailureInMethod:sel__decrementFBSSceneBackedSceneCountForIdiom_ object:self file:@"_UIKeyWindowEvaluator.m" lineNumber:245 description:{@"Invalid parameter not satisfying: %@", @"(idiom >= UIUserInterfaceIdiomFirst) && (idiom <= UIUserInterfaceIdiomLast)"}];
          }

          --*(v18 + 16);
        }

        if (v19 <= 0xFFFFFFFFFFFFFFF3)
        {
          currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler4 handleFailureInMethod:sel__countOfFBSSceneBackedScenesForIdiom_ object:self file:@"_UIKeyWindowEvaluator.m" lineNumber:235 description:{@"Invalid parameter not satisfying: %@", @"(idiom >= UIUserInterfaceIdiomFirst) && (idiom <= UIUserInterfaceIdiomLast)"}];
        }

        v20 = *(v18 + 16);
        _isTargetOfKeyboardEventDeferringEnvironment = [v6 _isTargetOfKeyboardEventDeferringEnvironment];
        if (v20)
        {
          v22 = _isTargetOfKeyboardEventDeferringEnvironment;
        }

        else
        {
          v22 = 0;
        }

        v23 = [(_UIKeyWindowEvaluator *)self _defaultEvaluationStrategyForIdiom:_userInterfaceIdiom];
        if (v23 == -1)
        {
          [(_UIKeyWindowEvaluator *)self _setDefaultEvaluationStrategy:v22 forIdiom:_userInterfaceIdiom];
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
              aBlock[6] = _userInterfaceIdiom;
              v29 = _Block_copy(aBlock);
              v29[2](v29, *(self + 184));
              v29[2](v29, *(self + 192));
              [(_UIKeyWindowEvaluator *)self _setDefaultEvaluationStrategy:v26 forIdiom:_userInterfaceIdiom];
            }
          }
        }
      }
    }
  }
}

- (char)_stackForWindowScene:(char *)scene
{
  if (scene)
  {
    sceneCopy = scene;
    _screen = [a2 _screen];
    _userInterfaceIdiom = [_screen _userInterfaceIdiom];

    session = [a2 session];
    role = [session role];
    if (role)
    {
      v9 = role;
      v10 = [role isEqualToString:@"UIWindowSceneSessionRoleExternalDisplayNonInteractive"];

      if (_userInterfaceIdiom != 3 && (v10 & 1) == 0)
      {
        v13 = *(sceneCopy + 23);
        v12 = (sceneCopy + 184);
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

    v17 = *(sceneCopy + 24);
    v12 = (sceneCopy + 192);
    v11 = v17;
    if (!v17)
    {
      v14 = [_UIKeyWindowSceneStack alloc];
      v15 = @"Excluded";
      v16 = 0;
      goto LABEL_10;
    }

LABEL_11:
    scene = v11;
    v2 = vars8;
  }

  return scene;
}

- (uint64_t)_evaluationStrategyForScene:(uint64_t)scene
{
  sceneCopy = scene;
  if (scene)
  {
    _screen = [a2 _screen];
    _userInterfaceIdiom = [_screen _userInterfaceIdiom];

    sceneCopy = [(_UIKeyWindowEvaluator *)sceneCopy _defaultEvaluationStrategyForIdiom:_userInterfaceIdiom];
    if (_UIApplicationMayVendViews())
    {
      _FBSScene = [a2 _FBSScene];

      if (!_FBSScene)
      {
        return 0;
      }
    }
  }

  return sceneCopy;
}

- (void)_evaluateApplicationKeyWindowWithComparisonWindowScene:(uint64_t)scene changingKeyWindowSceneActions:(uint64_t)actions sceneKeyWindowActions:(int)windowActions ignoringOldKeyWindow:(uint64_t)window sceneResignKeyWindowActions:(uint64_t)keyWindowActions andSceneBecomeKeyWindowActions:(uint64_t)becomeKeyWindowActions forReason:(void *)reason
{
  reasonCopy2 = reason;
  v60 = *MEMORY[0x1E69E9840];
  if (!a2 || ([a2 _hasInvalidated] & 1) == 0)
  {
    uTF8String = [reason UTF8String];
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("KeyWindow", &qword_1ED4A0830);
    if (*CategoryCachedImpl)
    {
      v41 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        *v53 = uTF8String;
        _os_log_impl(&dword_188A29000, v41, OS_LOG_TYPE_ERROR, "Evaluating application key window for reason: %{public}s", buf, 0xCu);
      }
    }

    if ((scene == 0) != (actions != 0))
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__evaluateApplicationKeyWindowWithComparisonWindowScene_changingKeyWindowSceneActions_sceneKeyWindowActions_ignoringOldKeyWindow_sceneResignKeyWindowActions_andSceneBecomeKeyWindowActions_forReason_ object:self file:@"_UIKeyWindowEvaluator.m" lineNumber:515 description:{@"Invalid actions specified", self, "-[_UIKeyWindowEvaluator _evaluateApplicationKeyWindowWithComparisonWindowScene:changingKeyWindowSceneActions:sceneKeyWindowActions:ignoringOldKeyWindow:sceneResignKeyWindowActions:andSceneBecomeKeyWindowActions:forReason:]"}];
    }

    v17 = *(self + 208);
    windowScene = [*(self + 208) windowScene];
    keyWindowSceneInStack = [(_UIKeyWindowSceneStack *)*(self + 184) keyWindowSceneInStack];
    _keyWindow = [(UIWindowScene *)keyWindowSceneInStack _keyWindow];
    v21 = _keyWindow;
    v22 = _keyWindow != 0;
    if (_keyWindow)
    {
      v23 = a2 != 0;
    }

    else
    {
      v23 = 0;
    }

    if (keyWindowSceneInStack != a2)
    {
      v23 = 0;
    }

    v43 = v23;
    if (_keyWindow == v17)
    {
      v22 = 0;
    }

    v46 = v22;
    reasonCopy2 = reason;
    if (scene && keyWindowSceneInStack && keyWindowSceneInStack != windowScene && _keyWindow)
    {
      (*(scene + 16))(scene, keyWindowSceneInStack);
    }

    v24 = *(__UILogGetCategoryCachedImpl("KeyWindow", &qword_1ED4A0838) + 8);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67241474;
      *v53 = v21 != v17;
      *&v53[4] = 2050;
      *&v53[6] = windowScene;
      *&v53[14] = 2050;
      *&v53[16] = keyWindowSceneInStack;
      v54 = 2050;
      v55 = v17;
      v56 = 2050;
      v57 = v21;
      v58 = 2082;
      v59 = uTF8String;
      _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_DEFAULT, "Key window needs update: %{public}d; currentKeyWindowScene: %{public}p; evaluatedKeyWindowScene: %{public}p; currentApplicationKeyWindow: %{public}p; evaluatedApplicationKeyWindow: %{public}p; reason: %{public}s", buf, 0x3Au);
    }

    if (v21 == v17)
    {
      if (actions)
      {
        (*(actions + 16))(actions, 0);
      }

      if (window && (windowActions & 1) == 0)
      {
        (*(window + 16))();
      }

      if (keyWindowActions)
      {
        (*(keyWindowActions + 16))();
      }

      goto LABEL_63;
    }

    if (windowActions)
    {
      v25 = 0;
    }

    else
    {
      v25 = v17;
    }

    v45 = v25;
    v44 = _UIWindowKeyWindowAPIIsSceneLevel();
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v27 = defaultCenter;
    if (v46)
    {
      [defaultCenter postNotificationName:@"_UIWindowWillBecomeApplicationKeyNotification" object:v21];
      if ((v44 & 1) == 0)
      {
        [v27 postNotificationName:@"_UIWindowWillBecomeKeyNotification" object:v21];
      }

      *(self + 208) = v21;
    }

    else
    {
      *(self + 208) = v21;
      if (!v21)
      {
        Name = "(nil)";
        goto LABEL_37;
      }
    }

    v28 = objc_opt_class();
    Name = class_getName(v28);
LABEL_37:
    v30 = _UIKeyWindowUTF8SceneIdentityStringForWindowScene(keyWindowSceneInStack);
    v31 = *(__UILogGetCategoryCachedImpl("KeyWindow", &qword_1ED4A0840) + 8);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      _contextId = [v21 _contextId];
      *buf = 136446978;
      *v53 = Name;
      *&v53[8] = 2050;
      *&v53[10] = v21;
      *&v53[18] = 1026;
      *&v53[20] = _contextId;
      v54 = 2082;
      v55 = v30;
      _os_log_impl(&dword_188A29000, v31, OS_LOG_TYPE_DEFAULT, "Window did become application key: %{public}s: %{public}p; contextId: 0x%{public}X; scene identity: %{public}s", buf, 0x26u);
    }

    if (actions)
    {
      (*(actions + 16))(actions, v43);
    }

    if ((windowActions & 1) == 0)
    {
      if (window)
      {
        (*(window + 16))();
      }

      if (v17)
      {
        v33 = objc_opt_class();
        v34 = class_getName(v33);
        windowScene2 = [v17 windowScene];
        v36 = _UIKeyWindowUTF8SceneIdentityStringForWindowScene(windowScene2);

        v37 = *(__UILogGetCategoryCachedImpl("KeyWindow", &qword_1ED4A0848) + 8);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          _contextId2 = [v17 _contextId];
          *buf = 136446978;
          *v53 = v34;
          *&v53[8] = 2050;
          *&v53[10] = v17;
          *&v53[18] = 1026;
          *&v53[20] = _contextId2;
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

      if (windowScene && keyWindowSceneInStack != windowScene)
      {
        [v27 postNotificationName:@"_UISceneDidResignKeyNotification" object:windowScene];
      }
    }

    if (keyWindowActions)
    {
      (*(keyWindowActions + 16))();
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

    if (keyWindowSceneInStack != windowScene && keyWindowSceneInStack)
    {
      [v27 postNotificationName:@"_UISceneDidBecomeKeyNotification" object:keyWindowSceneInStack];
    }

LABEL_63:
  }
}

- (void)evaluateApplicationKeyWindowForWindowScene:(int)scene withWindowMadeKey:(uint64_t)key sceneKeyWindowActions:(int)actions ignoringOldKeyWindow:(uint64_t)window sceneResignKeyWindowActions:(uint64_t)windowActions andSceneBecomeKeyWindowActions:(uint64_t)keyWindowActions forReason:(void *)reason
{
  if (self)
  {
    if (!a2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_evaluateApplicationKeyWindowForWindowScene_withWindowMadeKey_sceneKeyWindowActions_ignoringOldKeyWindow_sceneResignKeyWindowActions_andSceneBecomeKeyWindowActions_forReason_ object:self file:@"_UIKeyWindowEvaluator.m" lineNumber:662 description:{@"Invalid parameter not satisfying: %@", @"windowScene"}];
    }

    if (([a2 _hasInvalidated] & 1) == 0)
    {
      v17 = _UIKeyWindowSceneObserverForScene(a2);
      v18 = a2;
      [(_UIKeyWindowEvaluator *)self _updateDefaultEvaluationStrategyForIdiomIfNeededWithRequest:v18, 0];
      v19 = [(_UIKeyWindowEvaluator *)self _evaluationStrategyForScene:v18];
      _keyWindow = [(UIWindowScene *)v18 _keyWindow];

      if (!v19 && scene && _keyWindow)
      {
        v21 = [(_UIKeyWindowEvaluator *)self _stackForWindowScene:v18];
        [(_UIKeyWindowSceneStack *)v21 pushWindowScene:v18 withEvaluationStrategy:0 forReason:reason];
      }

      reasonCopy = reason;
      [(_UIKeyWindowEvaluator *)self _evaluateApplicationKeyWindowWithComparisonWindowScene:v18 changingKeyWindowSceneActions:0 sceneKeyWindowActions:key ignoringOldKeyWindow:actions sceneResignKeyWindowActions:window andSceneBecomeKeyWindowActions:windowActions forReason:v23, reason, a10];
    }
  }
}

- (id)keyWindowForUserInterfaceIdiom:(uint64_t)idiom
{
  if (idiom)
  {
    if (a2 == 3)
    {
      v2 = *(idiom + 192);
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __56___UIKeyWindowEvaluator_keyWindowForUserInterfaceIdiom___block_invoke;
      v6[3] = &__block_descriptor_40_e23_B16__0__UIWindowScene_8l;
      v6[4] = 3;
      v3 = [(_UIKeyWindowSceneStack *)v2 keyWindowSceneInStackPassingTest:v6];
      _keyWindow = [(UIWindowScene *)v3 _keyWindow];
    }

    else
    {
      _keyWindow = *(idiom + 208);
    }
  }

  else
  {
    _keyWindow = 0;
  }

  return _keyWindow;
}

- (void)windowSceneDidConnect:(uint64_t)connect
{
  if (connect)
  {
    v3 = a2;
    _FBSScene = [v3 _FBSScene];
    [(_UIKeyWindowEvaluator *)connect _updateDefaultEvaluationStrategyForIdiomIfNeededWithRequest:v3, _FBSScene != 0];
  }
}

- (uint64_t)windowScene:(uint64_t)scene willTransitionToActivationState:
{
  if (result)
  {
    v5 = result;
    result = [a2 _hasInvalidated];
    if ((result & 1) == 0)
    {
      result = [a2 activationState];
      v6 = result;
      v8 = scene == 2 && result != 2;
      if (result)
      {
        v9 = scene == 0;
      }

      else
      {
        v9 = 0;
      }

      if (v9 || v8)
      {
        _isActivated = [UIApp _isActivated];
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __69___UIKeyWindowEvaluator_windowScene_willTransitionToActivationState___block_invoke;
        v11[3] = &unk_1E711F750;
        v11[6] = v6;
        v11[7] = scene;
        v11[4] = v5;
        v11[5] = a2;
        v12 = scene == 0;
        v13 = _isActivated;
        v14 = scene == 2;
        return [a2 _enqueuePostSettingsUpdateResponseBlock:v11 inPhase:0x1EFB17490];
      }
    }
  }

  return result;
}

- (void)windowSceneDidBecomeTargetOfKeyboardEventDeferringEnvironment:(char *)environment
{
  if (environment && ([a2 _hasInvalidated] & 1) == 0 && objc_msgSend(a2, "_isTargetOfKeyboardEventDeferringEnvironment"))
  {
    v4 = a2;
    [(_UIKeyWindowEvaluator *)environment _updateDefaultEvaluationStrategyForIdiomIfNeededWithRequest:v4, 0];
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %p: Window scene became target of keyboard environment", objc_opt_class(), v4];
    v5 = [(_UIKeyWindowEvaluator *)environment _stackForWindowScene:v4];
    keyWindowSceneInStack = [(_UIKeyWindowSceneStack *)v5 keyWindowSceneInStack];
    [(_UIKeyWindowSceneStack *)v5 pushWindowScene:v4 withEvaluationStrategy:1 forReason:v11];
    keyWindowSceneInStack2 = [(_UIKeyWindowSceneStack *)v5 keyWindowSceneInStack];
    v8 = keyWindowSceneInStack2;
    if (v5 && (*(v5 + 32) & 1) != 0 && keyWindowSceneInStack2 != keyWindowSceneInStack)
    {
      v9 = v11;
      [(_UIKeyWindowEvaluator *)environment _evaluateApplicationKeyWindowWithComparisonWindowScene:v4 changingKeyWindowSceneActions:&__block_literal_global_114_2 sceneKeyWindowActions:0 ignoringOldKeyWindow:0 sceneResignKeyWindowActions:0 andSceneBecomeKeyWindowActions:0 forReason:v10, v9, 1];
    }
  }
}

- (void)windowScene:(void *)scene willMoveFromScreen:(void *)screen toScreen:
{
  if (self)
  {
    _userInterfaceIdiom = [scene _userInterfaceIdiom];
    if ([screen _userInterfaceIdiom] != _userInterfaceIdiom)
    {
      [(_UIKeyWindowEvaluator *)self _updateDefaultEvaluationStrategyForIdiomIfNeededWithRequest:a2, 256];
    }

    v8 = [(_UIKeyWindowEvaluator *)self _stackForWindowScene:a2];
    v9 = *(self + 200);
    *(self + 200) = v8;
  }
}

- (void)windowScene:(void *)scene didMoveFromScreen:(void *)screen toScreen:
{
  v52 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v5 = *(self + 200);
    if (v5)
    {
      v9 = v5;
      v10 = *(self + 200);
      *(self + 200) = 0;

      _userInterfaceIdiom = [scene _userInterfaceIdiom];
      if ([screen _userInterfaceIdiom] != _userInterfaceIdiom)
      {
        [(_UIKeyWindowEvaluator *)self _updateDefaultEvaluationStrategyForIdiomIfNeededWithRequest:a2, 1];
      }

      v12 = [(_UIKeyWindowEvaluator *)self _stackForWindowScene:a2];
      v13 = objc_opt_class();
      Name = class_getName(v13);
      v15 = _UIKeyWindowUTF8SceneIdentityStringForWindowScene(a2);
      v16 = *(__UILogGetCategoryCachedImpl("KeyWindow", &windowScene_didMoveFromScreen_toScreen____s_category) + 8);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v38 = Name;
        v39 = v15;
        if (scene)
        {
          v17 = MEMORY[0x1E696AEC0];
          sceneCopy = scene;
          v19 = objc_opt_class();
          v20 = NSStringFromClass(v19);
          sceneCopy = [v17 stringWithFormat:@"<%@: %p>", v20, sceneCopy];
        }

        else
        {
          sceneCopy = @"(nil)";
        }

        v22 = sceneCopy;
        if (screen)
        {
          v23 = MEMORY[0x1E696AEC0];
          screenCopy = screen;
          v25 = objc_opt_class();
          v26 = NSStringFromClass(v25);
          screenCopy = [v23 stringWithFormat:@"<%@: %p>", v26, screenCopy];
        }

        else
        {
          screenCopy = @"(nil)";
        }

        *buf = 136447490;
        v41 = v38;
        v42 = 2050;
        v43 = a2;
        v44 = 2114;
        v45 = v22;
        v46 = 2114;
        v47 = screenCopy;
        v48 = 1026;
        v49 = v12 != v9;
        v50 = 2082;
        v51 = v39;
        _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_DEFAULT, "Scene did move screens: %{public}s: %{public}p; from %{public}@ to %{public}@; needs stack move: %{public}d; scene identity: %{public}s", buf, 0x3Au);
      }

      if (v12 != v9)
      {
        v28 = v9[3];
        keyWindowSceneInStack = [(_UIKeyWindowSceneStack *)v12 keyWindowSceneInStack];
        v30 = [(_UIKeyWindowEvaluator *)self _evaluationStrategyForScene:a2];
        v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %p: Window scene moved screens", objc_opt_class(), a2];
        [_UIKeyWindowSceneStack moveWindowSceneWithoutPushing:a2 fromStack:v9 toStack:v12 withStackEvaluationStrategy:v30 reason:v31];
        v32 = v9[3];
        keyWindowSceneInStack2 = [(_UIKeyWindowSceneStack *)v12 keyWindowSceneInStack];
        v34 = keyWindowSceneInStack2;
        if (v12)
        {
          v35 = *(v12 + 32) & 1;
        }

        else
        {
          v35 = 0;
        }

        if ((v9[4] & (v32 != v28) | v35 & (keyWindowSceneInStack2 != keyWindowSceneInStack)) == 1)
        {
          v36 = v31;
          [(_UIKeyWindowEvaluator *)self _evaluateApplicationKeyWindowWithComparisonWindowScene:a2 changingKeyWindowSceneActions:&__block_literal_global_119_0 sceneKeyWindowActions:0 ignoringOldKeyWindow:0 sceneResignKeyWindowActions:0 andSceneBecomeKeyWindowActions:0 forReason:v37, v36, 3];
        }
      }
    }
  }
}

- (void)windowSceneWillInvalidate:(uint64_t)invalidate
{
  v51 = *MEMORY[0x1E69E9840];
  if (invalidate)
  {
    v4 = *(invalidate + 208);
    v5 = a2;
    _FBSScene = [v5 _FBSScene];
    [(_UIKeyWindowEvaluator *)invalidate _updateDefaultEvaluationStrategyForIdiomIfNeededWithRequest:v5, (_FBSScene != 0) << 8];

    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %p: Window scene was invalidated", objc_opt_class(), v5];
    v8 = [(_UIKeyWindowEvaluator *)invalidate _stackForWindowScene:v5];
    keyWindowSceneInStack = [(_UIKeyWindowSceneStack *)v8 keyWindowSceneInStack];
    [(_UIKeyWindowSceneStack *)v8 removeWindowScene:v5 forReason:v7];
    keyWindowSceneInStack2 = [(_UIKeyWindowSceneStack *)v8 keyWindowSceneInStack];
    v11 = keyWindowSceneInStack2;
    if (!v8)
    {
      goto LABEL_22;
    }

    if ((*(v8 + 32) & 1) == 0)
    {
      goto LABEL_22;
    }

    if (keyWindowSceneInStack2 == keyWindowSceneInStack)
    {
      goto LABEL_22;
    }

    v12 = v7;
    [(_UIKeyWindowEvaluator *)invalidate _evaluateApplicationKeyWindowWithComparisonWindowScene:&__block_literal_global_124_1 changingKeyWindowSceneActions:0 sceneKeyWindowActions:1 ignoringOldKeyWindow:0 sceneResignKeyWindowActions:0 andSceneBecomeKeyWindowActions:v13 forReason:v12, 4];
    if (v4 != *(invalidate + 208))
    {
      goto LABEL_22;
    }

    screen = [v5 screen];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __51___UIKeyWindowEvaluator_windowSceneWillInvalidate___block_invoke_2;
    v41[3] = &unk_1E70FA210;
    v41[4] = v4;
    if (!screen)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"UIWindow * _Nullable _UIKeyWindowEvaluatorFindNewKeyWindowOnScreenPassingTest(UIScreen * _Nonnull const __strong, BOOL (^ _Nullable const __strong)(UIWindow * _Nonnull __strong))"}];
      [currentHandler handleFailureInFunction:v28 file:@"_UIKeyWindowEvaluator.m" lineNumber:481 description:{@"Invalid parameter not satisfying: %@", @"screen"}];
    }

    CategoryCachedImpl = __UILogGetCategoryCachedImpl("KeyWindow", &qword_1ED4A0850);
    if (*CategoryCachedImpl)
    {
      v29 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349056;
        *&buf[4] = screen;
        _os_log_impl(&dword_188A29000, v29, OS_LOG_TYPE_ERROR, "Finding new application key window on screen: %{public}p", buf, 0xCu);
      }
    }

    if (!screen)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"UIWindowScene * _Nullable _UIKeyWindowEvaluatorFindNewKeyWindowSceneOnScreen(UIScreen * _Nonnull const __strong)"];
      [currentHandler2 handleFailureInFunction:v31 file:@"_UIKeyWindowEvaluator.m" lineNumber:448 description:{@"Invalid parameter not satisfying: %@", @"screen"}];
    }

    v16 = __UILogGetCategoryCachedImpl("KeyWindow", &qword_1ED4A0868);
    if (*v16)
    {
      v32 = *(v16 + 8);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349056;
        *&buf[4] = screen;
        _os_log_impl(&dword_188A29000, v32, OS_LOG_TYPE_ERROR, "Finding new key window scene on screen: %{public}p", buf, 0xCu);
      }
    }

    v17 = [_UISceneLifecycleMultiplexer mostActiveWindowSceneOnScreen:screen];
    _effectiveUISettings = [v17 _effectiveUISettings];
    IsForegroundActive = _UISceneLifecycleStateIsForegroundActive(_effectiveUISettings);

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
      v50 = screen;
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
          v43 = screen;
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
            _contextId = [v24 _contextId];
            *buf = 134349826;
            *&buf[4] = screen;
            *&buf[12] = 2082;
            *&buf[14] = v26;
            *&buf[22] = 2050;
            v49 = v24;
            LOWORD(v50) = 1026;
            *(&v50 + 2) = _contextId;
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