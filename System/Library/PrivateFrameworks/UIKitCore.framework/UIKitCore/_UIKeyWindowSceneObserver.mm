@interface _UIKeyWindowSceneObserver
- (NSString)description;
- (UIScene)_scene;
- (_UIKeyWindowSceneObserver)init;
- (_UIKeyWindowSceneObserver)initWithScene:(id)a3;
- (void)_scene:(id)a3 willTransitionToActivationState:(int64_t)a4 withReasonsMask:(unint64_t)a5;
- (void)_sceneWillInvalidate:(id)a3;
- (void)_windowHostingScene:(id)a3 didMoveFromScreen:(id)a4 toScreen:(id)a5;
- (void)_windowHostingScene:(id)a3 willMoveFromScreen:(id)a4 toScreen:(id)a5;
- (void)evaluateTargetOfEventDeferringEnvironments;
- (void)observerDeliveryPolicyDidChange:(id)a3;
@end

@implementation _UIKeyWindowSceneObserver

- (void)evaluateTargetOfEventDeferringEnvironments
{
  v21 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v3 = [WeakRetained _allowsEventUIWindowRouting];

    v4 = objc_loadWeakRetained((a1 + 32));
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (v3 & 1) != 0 || (isKindOfClass)
    {
      v6 = objc_loadWeakRetained((a1 + 32));
      v7 = [*(a1 + 16) policyStatus];
      [(UIScene *)v6 _targetOfKeyboardEventDeferringEnvironmentDidUpdate:?];
      if (v7 >= 1)
      {
        [_UIEventDeferringManager targetOfEventDeferringEnvironmentsDidUpdateForScene:v6];
        if (isKindOfClass)
        {
          v8 = objc_loadWeakRetained((a1 + 32));
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

          [(_UIKeyWindowEvaluator *)*(a1 + 8) windowSceneDidBecomeTargetOfKeyboardEventDeferringEnvironment:v8];
          v13 = [(UIWindowScene *)v8 _keyWindow];

          if (v13)
          {
            v14 = [(UIWindowScene *)v8 _keyWindow];
            [v14 _restoreFirstResponder];
          }
        }
      }
    }
  }
}

- (_UIKeyWindowSceneObserver)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"_UIKeyWindowSceneObserver.m" lineNumber:124 description:{@"%s: init is not allowed on %@", "-[_UIKeyWindowSceneObserver init]", objc_opt_class()}];

  return 0;
}

- (_UIKeyWindowSceneObserver)initWithScene:(id)a3
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
      objc_storeWeak(&v6->_scene, a3);
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

        v9 = [a3 _FBSScene];
        v10 = [v9 identityToken];

        if (v10)
        {
          v11 = objc_opt_new();
          hidPolicyObserver = self->_hidPolicyObserver;
          self->_hidPolicyObserver = v11;

          [(BKSHIDEventDeliveryPolicyObserver *)self->_hidPolicyObserver addObserver:self];
          v13 = self->_hidPolicyObserver;
          v14 = MEMORY[0x1E698E3A0];
          v15 = [v10 stringRepresentation];
          v16 = [v14 tokenForString:v15];
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

- (void)_scene:(id)a3 willTransitionToActivationState:(int64_t)a4 withReasonsMask:(unint64_t)a5
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
      v11 = [v10 UTF8String];

      v12 = _NSStringFromUISceneActivationState(a4);
      v13 = [v12 UTF8String];

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
          v22 = v11;
          v23 = 2082;
          v24 = v13;
          v25 = 2082;
          v26 = v14;
          _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "Scene will transition to activation state: %{public}s: %{public}p; from %{public}s to %{public}s; scene identity: %{public}s", &v17, 0x34u);
        }
      }
    }

    [(_UIKeyWindowEvaluator *)self->_keyWindowEvaluator windowScene:a4 willTransitionToActivationState:?];
  }
}

- (void)_windowHostingScene:(id)a3 willMoveFromScreen:(id)a4 toScreen:(id)a5
{
  v36 = *MEMORY[0x1E69E9840];
  if (*&self->_observerFlags)
  {
    v8 = [a3 _screen];

    if (v8 == a4)
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
            if (a4)
            {
              v15 = MEMORY[0x1E696AEC0];
              v16 = a4;
              v17 = objc_opt_class();
              v18 = NSStringFromClass(v17);
              v19 = [v15 stringWithFormat:@"<%@: %p>", v18, v16];
            }

            else
            {
              v19 = @"(nil)";
            }

            v25 = v19;
            if (a5)
            {
              v20 = MEMORY[0x1E696AEC0];
              v21 = a5;
              v22 = objc_opt_class();
              v23 = NSStringFromClass(v22);
              v24 = [v20 stringWithFormat:@"<%@: %p>", v23, v21];
            }

            else
            {
              v24 = @"(nil)";
            }

            *buf = 136447234;
            v27 = Name;
            v28 = 2050;
            v29 = WeakRetained;
            v30 = 2114;
            v31 = v25;
            v32 = 2114;
            v33 = v24;
            v34 = 2082;
            v35 = v12;
            _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "Scene will move screens: %{public}s: %{public}p; from %{public}@ to %{public}@; scene identity: %{public}s", buf, 0x34u);
          }
        }
      }

      [(_UIKeyWindowEvaluator *)self->_keyWindowEvaluator windowScene:a4 willMoveFromScreen:a5 toScreen:?];
    }
  }
}

- (void)_windowHostingScene:(id)a3 didMoveFromScreen:(id)a4 toScreen:(id)a5
{
  v36 = *MEMORY[0x1E69E9840];
  if (*&self->_observerFlags)
  {
    v8 = [a3 _screen];

    if (v8 == a5)
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
            if (a4)
            {
              v15 = MEMORY[0x1E696AEC0];
              v16 = a4;
              v17 = objc_opt_class();
              v18 = NSStringFromClass(v17);
              v19 = [v15 stringWithFormat:@"<%@: %p>", v18, v16];
            }

            else
            {
              v19 = @"(nil)";
            }

            v25 = v19;
            if (a5)
            {
              v20 = MEMORY[0x1E696AEC0];
              v21 = a5;
              v22 = objc_opt_class();
              v23 = NSStringFromClass(v22);
              v24 = [v20 stringWithFormat:@"<%@: %p>", v23, v21];
            }

            else
            {
              v24 = @"(nil)";
            }

            *buf = 136447234;
            v27 = Name;
            v28 = 2050;
            v29 = WeakRetained;
            v30 = 2114;
            v31 = v25;
            v32 = 2114;
            v33 = v24;
            v34 = 2082;
            v35 = v12;
            _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "Scene did move screens: %{public}s: %{public}p; from %{public}@ to %{public}@; scene identity: %{public}s", buf, 0x34u);
          }
        }
      }

      [(_UIKeyWindowEvaluator *)self->_keyWindowEvaluator windowScene:a4 didMoveFromScreen:a5 toScreen:?];
      [(_UIKeyWindowSceneObserver *)self evaluateTargetOfEventDeferringEnvironments];
    }
  }
}

- (void)_sceneWillInvalidate:(id)a3
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

- (void)observerDeliveryPolicyDidChange:(id)a3
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