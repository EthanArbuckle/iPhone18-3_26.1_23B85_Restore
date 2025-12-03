@interface _UIKeyWindowSceneObserver
- (NSString)description;
- (UIScene)_scene;
- (_UIKeyWindowSceneObserver)init;
- (_UIKeyWindowSceneObserver)initWithScene:(id)scene;
- (void)_scene:(id)_scene willTransitionToActivationState:(int64_t)state withReasonsMask:(unint64_t)mask;
- (void)_sceneWillInvalidate:(id)invalidate;
- (void)_windowHostingScene:(id)scene didMoveFromScreen:(id)screen toScreen:(id)toScreen;
- (void)_windowHostingScene:(id)scene willMoveFromScreen:(id)screen toScreen:(id)toScreen;
- (void)evaluateTargetOfEventDeferringEnvironments;
- (void)observerDeliveryPolicyDidChange:(id)change;
@end

@implementation _UIKeyWindowSceneObserver

- (void)evaluateTargetOfEventDeferringEnvironments
{
  v21 = *MEMORY[0x1E69E9840];
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 32));
    _allowsEventUIWindowRouting = [WeakRetained _allowsEventUIWindowRouting];

    v4 = objc_loadWeakRetained((self + 32));
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (_allowsEventUIWindowRouting & 1) != 0 || (isKindOfClass)
    {
      v6 = objc_loadWeakRetained((self + 32));
      policyStatus = [*(self + 16) policyStatus];
      [(UIScene *)v6 _targetOfKeyboardEventDeferringEnvironmentDidUpdate:?];
      if (policyStatus >= 1)
      {
        [_UIEventDeferringManager targetOfEventDeferringEnvironmentsDidUpdateForScene:v6];
        if (isKindOfClass)
        {
          v8 = objc_loadWeakRetained((self + 32));
          v9 = objc_opt_class();
          Name = class_getName(v9);
          v11 = _UIKeyWindowUTF8SceneIdentityStringForWindowScene(v8);
          v12 = *(__UILogGetCategoryCachedImpl("KeyWindow", &evaluateTargetOfEventDeferringEnvironments___s_category) + 8);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v15 = 136446722;
            v16 = Name;
            v17 = 2050;
            v18 = v8;
            v19 = 2080;
            v20 = v11;
            _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEFAULT, "Scene became target of keyboard event deferring environment: %{public}s: %{public}p; scene identity: %s", &v15, 0x20u);
          }

          [(_UIKeyWindowEvaluator *)*(self + 8) windowSceneDidBecomeTargetOfKeyboardEventDeferringEnvironment:v8];
          _keyWindow = [(UIWindowScene *)v8 _keyWindow];

          if (_keyWindow)
          {
            _keyWindow2 = [(UIWindowScene *)v8 _keyWindow];
            [_keyWindow2 _restoreFirstResponder];
          }
        }
      }
    }
  }
}

- (_UIKeyWindowSceneObserver)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIKeyWindowSceneObserver.m" lineNumber:124 description:{@"%s: init is not allowed on %@", "-[_UIKeyWindowSceneObserver init]", objc_opt_class()}];

  return 0;
}

- (_UIKeyWindowSceneObserver)initWithScene:(id)scene
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = +[_UIKeyWindowEvaluator sharedEvaluator];
  if (self)
  {
    v23.receiver = self;
    v23.super_class = _UIKeyWindowSceneObserver;
    v6 = [(_UIKeyWindowSceneObserver *)&v23 init];
    self = v6;
    if (v6)
    {
      objc_storeWeak(&v6->_scene, scene);
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      *&self->_observerFlags = *&self->_observerFlags & 0xFE | isKindOfClass & 1;
      if (isKindOfClass)
      {
        WeakRetained = objc_loadWeakRetained(&self->_scene);
        if (*__UILogGetCategoryCachedImpl("KeyWindow", &_MergedGlobals_1248))
        {
          v18 = objc_opt_class();
          Name = class_getName(v18);
          v20 = _UIKeyWindowUTF8SceneIdentityStringForWindowScene(WeakRetained);
          CategoryCachedImpl = __UILogGetCategoryCachedImpl("KeyWindow", &qword_1ED49FEF0);
          if (*CategoryCachedImpl)
          {
            v22 = *(CategoryCachedImpl + 8);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446722;
              v25 = Name;
              v26 = 2050;
              v27 = WeakRetained;
              v28 = 2082;
              v29 = v20;
              _os_log_impl(&dword_188A29000, v22, OS_LOG_TYPE_ERROR, "Scene did connect: %{public}s: %{public}p; scene identity: %{public}s", buf, 0x20u);
            }
          }
        }

        _FBSScene = [scene _FBSScene];
        identityToken = [_FBSScene identityToken];

        if (identityToken)
        {
          v11 = objc_opt_new();
          hidPolicyObserver = self->_hidPolicyObserver;
          self->_hidPolicyObserver = v11;

          [(BKSHIDEventDeliveryPolicyObserver *)self->_hidPolicyObserver addObserver:self];
          v13 = self->_hidPolicyObserver;
          v14 = MEMORY[0x1E698E3A0];
          stringRepresentation = [identityToken stringRepresentation];
          v16 = [v14 tokenForString:stringRepresentation];
          [(BKSHIDEventDeliveryPolicyObserver *)v13 setDeferringToken:v16];
        }

        objc_storeStrong(&self->_keyWindowEvaluator, v5);
        [(_UIKeyWindowEvaluator *)self->_keyWindowEvaluator windowSceneDidConnect:?];
        [(_UIKeyWindowSceneObserver *)self evaluateTargetOfEventDeferringEnvironments];
      }
    }
  }

  return self;
}

- (void)_scene:(id)_scene willTransitionToActivationState:(int64_t)state withReasonsMask:(unint64_t)mask
{
  v27 = *MEMORY[0x1E69E9840];
  if (*&self->_observerFlags)
  {
    WeakRetained = objc_loadWeakRetained(&self->_scene);
    if (*__UILogGetCategoryCachedImpl("KeyWindow", &qword_1ED49FEF8))
    {
      v8 = objc_opt_class();
      Name = class_getName(v8);
      v10 = _NSStringFromUISceneActivationState([WeakRetained activationState]);
      uTF8String = [v10 UTF8String];

      v12 = _NSStringFromUISceneActivationState(state);
      uTF8String2 = [v12 UTF8String];

      v14 = _UIKeyWindowUTF8SceneIdentityStringForWindowScene(WeakRetained);
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("KeyWindow", &qword_1ED49FF00);
      if (*CategoryCachedImpl)
      {
        v16 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = 136447234;
          v18 = Name;
          v19 = 2050;
          v20 = WeakRetained;
          v21 = 2082;
          v22 = uTF8String;
          v23 = 2082;
          v24 = uTF8String2;
          v25 = 2082;
          v26 = v14;
          _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "Scene will transition to activation state: %{public}s: %{public}p; from %{public}s to %{public}s; scene identity: %{public}s", &v17, 0x34u);
        }
      }
    }

    [(_UIKeyWindowEvaluator *)self->_keyWindowEvaluator windowScene:state willTransitionToActivationState:?];
  }
}

- (void)_windowHostingScene:(id)scene willMoveFromScreen:(id)screen toScreen:(id)toScreen
{
  v36 = *MEMORY[0x1E69E9840];
  if (*&self->_observerFlags)
  {
    _screen = [scene _screen];

    if (_screen == screen)
    {
      WeakRetained = objc_loadWeakRetained(&self->_scene);
      if (*__UILogGetCategoryCachedImpl("KeyWindow", &qword_1ED49FF08))
      {
        v10 = objc_opt_class();
        Name = class_getName(v10);
        v12 = _UIKeyWindowUTF8SceneIdentityStringForWindowScene(WeakRetained);
        CategoryCachedImpl = __UILogGetCategoryCachedImpl("KeyWindow", &qword_1ED49FF10);
        if (*CategoryCachedImpl)
        {
          v14 = *(CategoryCachedImpl + 8);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            if (screen)
            {
              v15 = MEMORY[0x1E696AEC0];
              screenCopy = screen;
              v17 = objc_opt_class();
              v18 = NSStringFromClass(v17);
              screenCopy = [v15 stringWithFormat:@"<%@: %p>", v18, screenCopy];
            }

            else
            {
              screenCopy = @"(nil)";
            }

            v25 = screenCopy;
            if (toScreen)
            {
              v20 = MEMORY[0x1E696AEC0];
              toScreenCopy = toScreen;
              v22 = objc_opt_class();
              v23 = NSStringFromClass(v22);
              toScreenCopy = [v20 stringWithFormat:@"<%@: %p>", v23, toScreenCopy];
            }

            else
            {
              toScreenCopy = @"(nil)";
            }

            *buf = 136447234;
            v27 = Name;
            v28 = 2050;
            v29 = WeakRetained;
            v30 = 2114;
            v31 = v25;
            v32 = 2114;
            v33 = toScreenCopy;
            v34 = 2082;
            v35 = v12;
            _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "Scene will move screens: %{public}s: %{public}p; from %{public}@ to %{public}@; scene identity: %{public}s", buf, 0x34u);
          }
        }
      }

      [(_UIKeyWindowEvaluator *)self->_keyWindowEvaluator windowScene:screen willMoveFromScreen:toScreen toScreen:?];
    }
  }
}

- (void)_windowHostingScene:(id)scene didMoveFromScreen:(id)screen toScreen:(id)toScreen
{
  v36 = *MEMORY[0x1E69E9840];
  if (*&self->_observerFlags)
  {
    _screen = [scene _screen];

    if (_screen == toScreen)
    {
      WeakRetained = objc_loadWeakRetained(&self->_scene);
      if (*__UILogGetCategoryCachedImpl("KeyWindow", &qword_1ED49FF18))
      {
        v10 = objc_opt_class();
        Name = class_getName(v10);
        v12 = _UIKeyWindowUTF8SceneIdentityStringForWindowScene(WeakRetained);
        CategoryCachedImpl = __UILogGetCategoryCachedImpl("KeyWindow", &qword_1ED49FF20);
        if (*CategoryCachedImpl)
        {
          v14 = *(CategoryCachedImpl + 8);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            if (screen)
            {
              v15 = MEMORY[0x1E696AEC0];
              screenCopy = screen;
              v17 = objc_opt_class();
              v18 = NSStringFromClass(v17);
              screenCopy = [v15 stringWithFormat:@"<%@: %p>", v18, screenCopy];
            }

            else
            {
              screenCopy = @"(nil)";
            }

            v25 = screenCopy;
            if (toScreen)
            {
              v20 = MEMORY[0x1E696AEC0];
              toScreenCopy = toScreen;
              v22 = objc_opt_class();
              v23 = NSStringFromClass(v22);
              toScreenCopy = [v20 stringWithFormat:@"<%@: %p>", v23, toScreenCopy];
            }

            else
            {
              toScreenCopy = @"(nil)";
            }

            *buf = 136447234;
            v27 = Name;
            v28 = 2050;
            v29 = WeakRetained;
            v30 = 2114;
            v31 = v25;
            v32 = 2114;
            v33 = toScreenCopy;
            v34 = 2082;
            v35 = v12;
            _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "Scene did move screens: %{public}s: %{public}p; from %{public}@ to %{public}@; scene identity: %{public}s", buf, 0x34u);
          }
        }
      }

      [(_UIKeyWindowEvaluator *)self->_keyWindowEvaluator windowScene:screen didMoveFromScreen:toScreen toScreen:?];
      [(_UIKeyWindowSceneObserver *)self evaluateTargetOfEventDeferringEnvironments];
    }
  }
}

- (void)_sceneWillInvalidate:(id)invalidate
{
  v15 = *MEMORY[0x1E69E9840];
  if (*&self->_observerFlags)
  {
    WeakRetained = objc_loadWeakRetained(&self->_scene);
    v5 = objc_opt_class();
    Name = class_getName(v5);
    v7 = _UIKeyWindowUTF8SceneIdentityStringForWindowScene(WeakRetained);
    v8 = *(__UILogGetCategoryCachedImpl("KeyWindow", &_sceneWillInvalidate____s_category_0) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136446722;
      v10 = Name;
      v11 = 2050;
      v12 = WeakRetained;
      v13 = 2082;
      v14 = v7;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "Scene will invalidate: %{public}s: %{public}p; scene identity: %{public}s", &v9, 0x20u);
    }

    [(_UIKeyWindowEvaluator *)self->_keyWindowEvaluator windowSceneWillInvalidate:?];
  }
}

- (void)observerDeliveryPolicyDidChange:(id)change
{
  objc_initWeak(&location, self);
  objc_copyWeak(&v3, &location);
  BSDispatchMain();
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v6 = objc_opt_class();
  v7 = objc_loadWeakRetained(&self->_scene);
  v8 = [v3 stringWithFormat:@"<%@: %p windowScene: <%@: %p>>", v4, self, v6, v7];;

  return v8;
}

- (UIScene)_scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

@end