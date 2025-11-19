@interface _UIHomeAffordanceSceneNotifierProxy
- (CGRect)homeAffordanceSceneReferenceFrameForWindow:(id)a3;
- (NSString)debugDescription;
- (UIScene)_scene;
- (_UIHomeAffordanceSceneNotifierProxy)init;
- (_UIHomeAffordanceSceneNotifierProxy)initWithScene:(id)a3;
- (_UISceneUIWindowHosting)windowHostingScene;
- (id)registerHomeAffordanceObserver:(id)a3 inWindow:(id)a4;
- (id)succinctDescription;
- (void)_notifier:(id)a3 homeAffordanceDoubleTapGestureDidSucceed:(BOOL)a4;
- (void)_notifier:(id)a3 homeAffordanceFrameDidChange:(CGRect)a4;
- (void)_reset;
- (void)_resetTargetNotifierSceneState;
- (void)_sceneWillInvalidate:(id)a3;
- (void)_targetNotifierSceneDidDisconnect:(id)a3;
- (void)_targetNotifierSceneDidMoveToScreen:(id)a3;
- (void)_unregisterHomeAffordanceObserverForRecord:(id)a3;
- (void)_updateTargetNotifierRegistrationWithNotifier:(char)a3 forMovingScreens:;
- (void)_windowDidBecomeAppKeyNotification:(id)a3;
- (void)_windowDidResignAppKeyNotification:(id)a3;
- (void)appendDescriptionToStream:(id)a3;
- (void)dealloc;
- (void)setTargetHomeAffordanceNotifier:(void *)a1;
@end

@implementation _UIHomeAffordanceSceneNotifierProxy

- (_UISceneUIWindowHosting)windowHostingScene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

- (UIScene)_scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

- (void)_resetTargetNotifierSceneState
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = [v2 windowHostingScene];
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 removeObserver:a1 name:@"_UIWindowHostingSceneDidMoveToScreenNotification" object:v3];
    [v4 removeObserver:a1 name:@"UISceneDidDisconnectNotification" object:v3];

    v2 = *(a1 + 48);
  }

  *(a1 + 48) = 0;
}

- (_UIHomeAffordanceSceneNotifierProxy)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"_UIHomeAffordanceSceneNotifier.m" lineNumber:979 description:{@"%s: init is not allowed on %@", "-[_UIHomeAffordanceSceneNotifierProxy init]", objc_opt_class()}];

  return 0;
}

- (_UIHomeAffordanceSceneNotifierProxy)initWithScene:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = [UIApp isFrontBoard];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v34.receiver = self;
    v34.super_class = _UIHomeAffordanceSceneNotifierProxy;
    v7 = [(_UIHomeAffordanceSceneNotifierProxy *)&v34 init];
    if (v7)
    {
      v8 = *(__UILogGetCategoryCachedImpl("HomeAffordanceObservation", &initWithScene____s_category_235) + 8);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = MEMORY[0x1E696AEC0];
        v10 = v7;
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = [v9 stringWithFormat:@"<%@: %p>", v12, v10];

        v14 = v13;
        if (a3)
        {
          v15 = MEMORY[0x1E696AEC0];
          v16 = a3;
          v17 = objc_opt_class();
          v18 = NSStringFromClass(v17);
          v19 = [v15 stringWithFormat:@"<%@: %p>", v18, v16];
        }

        else
        {
          v19 = @"(nil)";
        }

        *buf = 138543618;
        v36 = v14;
        v37 = 2114;
        v38 = v19;
        _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "Initializing: %{public}@; with scene: %{public}@", buf, 0x16u);
      }

      if (v6)
      {
        v20 = [MEMORY[0x1E696AD88] defaultCenter];
        [v20 addObserver:v7 selector:sel__windowDidBecomeAppKeyNotification_ name:@"_UIWindowDidBecomeApplicationKeyNotification" object:0];
        [v20 addObserver:v7 selector:sel__windowDidResignAppKeyNotification_ name:@"_UIWindowDidResignApplicationKeyNotification" object:0];
      }

      objc_storeWeak(&v7->_scene, a3);
      objc_initWeak(buf, v7);
      v21 = objc_opt_class();
      Name = class_getName(v21);
      v23 = MEMORY[0x1E696AEC0];
      WeakRetained = objc_loadWeakRetained(&v7->_scene);
      v25 = [WeakRetained _sceneIdentifier];
      v26 = [v23 stringWithFormat:@"UIKit - %s - %@", Name, v25];

      v27 = MEMORY[0x1E69E96A0];
      objc_copyWeak(&v33, buf);
      v28 = BSLogAddStateCaptureBlockWithTitle();
      stateCaptureToken = v7->_stateCaptureToken;
      v7->_stateCaptureToken = v28;

      objc_destroyWeak(&v33);
      objc_destroyWeak(buf);
    }

    self = v7;
    v30 = self;
  }

  else
  {
    v32 = [MEMORY[0x1E696AAA8] currentHandler];
    [v32 handleFailureInMethod:a2 object:self file:@"_UIHomeAffordanceSceneNotifier.m" lineNumber:989 description:{@"Unexpected scene class for notifier: %@", a3}];

    v30 = 0;
  }

  return v30;
}

- (void)_reset
{
  registeredObserverRecords = self->_registeredObserverRecords;
  self->_registeredObserverRecords = 0;

  [(_UIInvalidatable *)self->_targetNotifierRegistrationToken _invalidate];
  targetNotifierRegistrationToken = self->_targetNotifierRegistrationToken;
  self->_targetNotifierRegistrationToken = 0;

  v5 = *(MEMORY[0x1E695F058] + 16);
  self->_lastReceivedHomeAffordanceSceneReferenceFrame.origin = *MEMORY[0x1E695F058];
  self->_lastReceivedHomeAffordanceSceneReferenceFrame.size = v5;

  [(_UIHomeAffordanceSceneNotifierProxy *)self _resetTargetNotifierSceneState];
}

- (void)_sceneWillInvalidate:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if ([a3 _hasInvalidated])
  {
    *&self->_flags |= 1u;
    v5 = *(__UILogGetCategoryCachedImpl("HomeAffordanceObservation", &_sceneWillInvalidate____s_category_240) + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(_UIHomeAffordanceSceneNotifierProxy *)self succinctDescription];
      if (a3)
      {
        v7 = MEMORY[0x1E696AEC0];
        v8 = a3;
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = [v7 stringWithFormat:@"<%@: %p>", v10, v8];
      }

      else
      {
        v11 = @"(nil)";
      }

      *buf = 138543618;
      v13 = v6;
      v14 = 2114;
      v15 = v11;
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "Resetting home affordance notifier: %{public}@; for invalidating scene: %{public}@", buf, 0x16u);
    }

    [(_UIHomeAffordanceSceneNotifierProxy *)self _reset];
    [(BSInvalidatable *)self->_stateCaptureToken invalidate];
  }
}

- (void)dealloc
{
  v6[2] = *MEMORY[0x1E69E9840];
  [(BSInvalidatable *)self->_stateCaptureToken invalidate];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v6[0] = @"_UIWindowDidBecomeApplicationKeyNotification";
  v6[1] = @"_UIWindowDidResignApplicationKeyNotification";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  [(NSNotificationCenter *)v3 _uiRemoveObserver:v4 names:?];

  v5.receiver = self;
  v5.super_class = _UIHomeAffordanceSceneNotifierProxy;
  [(_UIHomeAffordanceSceneNotifierProxy *)&v5 dealloc];
}

- (void)_unregisterHomeAffordanceObserverForRecord:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = [(_UIHomeAffordanceSceneNotifierProxy *)self _scene];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 _hasInvalidated];

    if ((v7 & 1) == 0)
    {
      [(NSMutableSet *)self->_registeredObserverRecords removeObject:a3];
      if (os_variant_has_internal_diagnostics())
      {
        v8 = *(__UILogGetCategoryCachedImpl("HomeAffordanceObservation", &_unregisterHomeAffordanceObserverForRecord____s_category_241) + 8);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = v8;
          v10 = [(_UIHomeAffordanceObservationRecord *)a3 observer];
          v11 = [(_UIHomeAffordanceSceneNotifierProxy *)self succinctDescription];
          v12 = 138543618;
          v13 = v10;
          v14 = 2114;
          v15 = v11;
          _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "Unregistered home affordance observer: %{public}@; notifier: %{public}@", &v12, 0x16u);
        }
      }

      if (![(NSMutableSet *)self->_registeredObserverRecords count])
      {
        if (self->_targetNotifierRegistrationToken)
        {
          [(_UIHomeAffordanceSceneNotifierProxy *)self _updateTargetNotifierRegistrationWithNotifier:0 forMovingScreens:?];
        }
      }
    }
  }
}

- (void)_updateTargetNotifierRegistrationWithNotifier:(char)a3 forMovingScreens:
{
  v113 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  v87 = (a1 + 48);
  v6 = *(a1 + 48);
  v88 = a2;
  v7 = a2;
  v89 = [v6 _hasInvalidated];
  v8 = [a1 windowHostingScene];
  v9 = [v6 windowHostingScene];
  v10 = [v7 windowHostingScene];
  v92 = v8;
  v94 = [v8 _screen];
  v91 = v9;
  v95 = [v9 _screen];
  v93 = v10;
  v96 = [v10 _screen];
  [a1 _registeredObserverRecords];
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v11 = v100 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v97 objects:buf count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v98;
    do
    {
      v15 = 0;
      do
      {
        if (*v98 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v97 + 1) + 8 * v15);
        if (v16)
        {
          WeakRetained = objc_loadWeakRetained((v16 + 8));
        }

        else
        {
          WeakRetained = 0;
        }

        if (WeakRetained == v7)
        {

          v36 = [MEMORY[0x1E696AAA8] currentHandler];
          v37 = [a1 succinctDescription];
          v38 = [v7 succinctDescription];
          [v36 handleFailureInMethod:sel__updateTargetNotifierRegistrationWithNotifier_forMovingScreens_ object:a1 file:@"_UIHomeAffordanceSceneNotifier.m" lineNumber:1157 description:{@"Invalid target home affordance notifier. The target notifier is an observer of this notifier: self: %@; target: %@", v37, v38}];

          v39 = v92;
          goto LABEL_76;
        }

        ++v15;
      }

      while (v13 != v15);
      v18 = [v11 countByEnumeratingWithState:&v97 objects:buf count:16];
      v13 = v18;
    }

    while (v18);
  }

  v19 = v94;
  if (v6)
  {
    v20 = v95 == v94;
  }

  else
  {
    v20 = 1;
  }

  v21 = !v20;
  if ((a3 & 1) == 0 && v96 && v96 != v94)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v22 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_31;
      }

      loga = v22;
      v86 = v21;
      v70 = [v7 succinctDescription];
      v71 = MEMORY[0x1E696AEC0];
      v72 = v96;
      v73 = objc_opt_class();
      v74 = NSStringFromClass(v73);
      v75 = [v71 stringWithFormat:@"<%@: %p>", v74, v72];

      v76 = v75;
      v77 = [a1 succinctDescription];
      v78 = v94;
      if (v78)
      {
        v80 = MEMORY[0x1E696AEC0];
        v81 = objc_opt_class();
        v82 = NSStringFromClass(v81);
        v79 = [v80 stringWithFormat:@"<%@: %p>", v82, v78];
      }

      else
      {
        v79 = @"(nil)";
      }

      *buf = 138413058;
      v102 = v70;
      v103 = 2112;
      v104 = v76;
      v105 = 2112;
      v106 = v77;
      v107 = 2112;
      *v108 = v79;
      v22 = loga;
      _os_log_fault_impl(&dword_188A29000, loga, OS_LOG_TYPE_FAULT, "Unregistering proxy from target home affordance notifier as they are not on the same screen, which is unsupported: target: %@; target screen: %@; self: %@; self screen: %@", buf, 0x2Au);

      v19 = v94;
    }

    else
    {
      v22 = *(__UILogGetCategoryCachedImpl("Assert", &_MergedGlobals_989) + 8);
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
LABEL_31:

        goto LABEL_32;
      }

      log = v22;
      v86 = v21;
      v83 = [v7 succinctDescription];
      v23 = MEMORY[0x1E696AEC0];
      v24 = v96;
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v27 = [v23 stringWithFormat:@"<%@: %p>", v26, v24];

      v28 = v27;
      v29 = [a1 succinctDescription];
      v30 = v94;
      if (v30)
      {
        v31 = MEMORY[0x1E696AEC0];
        v32 = objc_opt_class();
        NSStringFromClass(v32);
        v34 = v33 = v29;
        v35 = [v31 stringWithFormat:@"<%@: %p>", v34, v30];

        v29 = v33;
      }

      else
      {
        v35 = @"(nil)";
      }

      *buf = 138413058;
      v22 = log;
      v102 = v83;
      v103 = 2112;
      v104 = v28;
      v105 = 2112;
      v106 = v29;
      v107 = 2112;
      *v108 = v35;
      _os_log_impl(&dword_188A29000, log, OS_LOG_TYPE_ERROR, "Unregistering proxy from target home affordance notifier as they are not on the same screen, which is unsupported: target: %@; target screen: %@; self: %@; self screen: %@", buf, 0x2Au);
    }

    v21 = v86;
    goto LABEL_31;
  }

LABEL_32:
  if (v7)
  {
    v40 = v6 == v7;
  }

  else
  {
    v40 = 1;
  }

  v41 = !v40;
  if (((v6 != 0) & v89) != 0)
  {
    v42 = 1;
  }

  else
  {
    if (v6)
    {
      v43 = v7 == 0;
    }

    else
    {
      v43 = 0;
    }

    v42 = v43;
  }

  v39 = v92;
  if ([*(a1 + 32) count])
  {
    if (v6 && v95 == v19 && !((*(a1 + 40) != 0) | v42 & 1))
    {
      v46 = 0;
      v45 = 1;
      goto LABEL_63;
    }

    if (v96)
    {
      v44 = v41;
    }

    else
    {
      v44 = 0;
    }

    if (v96 == v19)
    {
      v45 = v44;
    }

    else
    {
      v45 = 0;
    }
  }

  else
  {
    v45 = 0;
  }

  if ((v45 | v42))
  {
    goto LABEL_61;
  }

  if (!*(a1 + 40))
  {
    v45 = 0;
LABEL_61:
    v46 = 0;
    goto LABEL_63;
  }

  v45 = 0;
  v46 = ([*(a1 + 32) count] == 0) | v41 | v21;
LABEL_63:
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("HomeAffordanceObservation", &qword_1ED49C818);
  if (*CategoryCachedImpl)
  {
    v66 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      v67 = v66;
      v90 = [a1 succinctDescription];
      v68 = [v6 succinctDescription];
      *buf = 138544898;
      v102 = v90;
      v103 = 2114;
      v104 = v68;
      v69 = v68;
      v105 = 2114;
      v106 = v7;
      v107 = 1024;
      *v108 = v41;
      *&v108[4] = 1024;
      *&v108[6] = v45;
      v109 = 1024;
      v110 = v46 & 1;
      v111 = 1024;
      v112 = v42;
      _os_log_impl(&dword_188A29000, v67, OS_LOG_TYPE_ERROR, "Update target notifier registration requested for notifier: %{public}@; _targetHomeAffordanceNotifier: %{public}@; targetHomeAffordanceNotifier: %{public}@; shouldUpdateToNewTarget: %d; shouldRegister: %d; shouldUnregister: %d; shouldCleanUpOldTargetAndRegistration %d", buf, 0x38u);
    }
  }

  if ((v41 | v45 | v46 | v42))
  {
    if (v41)
    {
      [(_UIHomeAffordanceSceneNotifierProxy *)a1 _resetTargetNotifierSceneState];
      objc_storeStrong(v87, v88);
      v48 = [MEMORY[0x1E696AD88] defaultCenter];
      [v48 addObserver:a1 selector:sel__targetNotifierSceneDidMoveToScreen_ name:@"_UIWindowHostingSceneDidMoveToScreenNotification" object:v93];
      [v48 addObserver:a1 selector:sel__targetNotifierSceneDidDisconnect_ name:@"UISceneDidDisconnectNotification" object:v93];
    }

    v49 = MEMORY[0x1E695F058];
    if (v45)
    {
      v50 = [v92 _allWindows];
      v51 = [v50 firstObject];

      v52 = [*(a1 + 48) registerHomeAffordanceObserver:a1 inWindow:v51];
      v53 = *(a1 + 40);
      *(a1 + 40) = v52;

      [*(a1 + 48) homeAffordanceSceneReferenceFrameForWindow:v51];
      v55 = v54;
      v57 = v56;
      v59 = v58;
      v61 = v60;
    }

    else
    {
      v55 = *MEMORY[0x1E695F058];
      v57 = *(MEMORY[0x1E695F058] + 8);
      v59 = *(MEMORY[0x1E695F058] + 16);
      v61 = *(MEMORY[0x1E695F058] + 24);
    }

    if ([*(a1 + 32) count])
    {
      [a1 _notifier:*(a1 + 48) homeAffordanceFrameDidChange:{v55, v57, v59, v61}];
    }

    if (v46)
    {
      [*(a1 + 40) _invalidate];
      v62 = *(a1 + 40);
      *(a1 + 40) = 0;

      v63 = v49[1];
      *(a1 + 56) = *v49;
      *(a1 + 72) = v63;
    }

    if (v42)
    {
      [*(a1 + 40) _invalidate];
      v64 = *(a1 + 40);
      *(a1 + 40) = 0;

      v65 = v49[1];
      *(a1 + 56) = *v49;
      *(a1 + 72) = v65;
      [(_UIHomeAffordanceSceneNotifierProxy *)a1 _resetTargetNotifierSceneState];
    }
  }

LABEL_76:
}

- (id)registerHomeAffordanceObserver:(id)a3 inWindow:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = [(_UIHomeAffordanceSceneNotifierProxy *)self _scene];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 _hasInvalidated];

    if ((v9 & 1) != 0 || !_UIHomeAffordanceValidateObserver(self, a3, a4, 0))
    {
      v8 = 0;
    }

    else
    {
      if ([(NSMutableSet *)self->_registeredObserverRecords count])
      {
        v10 = 0;
      }

      else
      {
        v10 = self->_targetHomeAffordanceNotifier != 0;
      }

      v11 = [[_UIHomeAffordanceObservationRecord alloc] initWithObserver:a3 window:a4 viewServiceSessionIdentifier:0];
      registeredObserverRecords = self->_registeredObserverRecords;
      if (!registeredObserverRecords)
      {
        v13 = objc_opt_new();
        v14 = self->_registeredObserverRecords;
        self->_registeredObserverRecords = v13;

        registeredObserverRecords = self->_registeredObserverRecords;
      }

      [(NSMutableSet *)registeredObserverRecords addObject:v11];
      v8 = _UIHomeAffordanceRegistrationTokenForNotifierAndRecord(self, v11);
      if (v10)
      {
        [(_UIHomeAffordanceSceneNotifierProxy *)self _updateTargetNotifierRegistrationWithNotifier:0 forMovingScreens:?];
      }

      if (os_variant_has_internal_diagnostics())
      {
        v16 = *(__UILogGetCategoryCachedImpl("HomeAffordanceObservation", &registerHomeAffordanceObserver_inWindow____s_category_242) + 8);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = v16;
          v18 = [(_UIHomeAffordanceSceneNotifierProxy *)self succinctDescription];
          v19 = 138543874;
          v20 = a3;
          v21 = 2114;
          v22 = v8;
          v23 = 2114;
          v24 = v18;
          _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_DEFAULT, "Registered home affordance observer: %{public}@; token: %{public}@; notifier: %{public}@", &v19, 0x20u);
        }
      }
    }
  }

  return v8;
}

- (CGRect)homeAffordanceSceneReferenceFrameForWindow:(id)a3
{
  x = self->_lastReceivedHomeAffordanceSceneReferenceFrame.origin.x;
  y = self->_lastReceivedHomeAffordanceSceneReferenceFrame.origin.y;
  width = self->_lastReceivedHomeAffordanceSceneReferenceFrame.size.width;
  height = self->_lastReceivedHomeAffordanceSceneReferenceFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setTargetHomeAffordanceNotifier:(void *)a1
{
  if (a1)
  {
    v4 = [a1 _scene];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 _hasInvalidated];

      if ((v6 & 1) == 0)
      {

        [(_UIHomeAffordanceSceneNotifierProxy *)a1 _updateTargetNotifierRegistrationWithNotifier:a2 forMovingScreens:0];
      }
    }
  }
}

- (void)_windowDidBecomeAppKeyNotification:(id)a3
{
  v4 = [a3 object];
  v5 = objc_opt_class();
  v6 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v10 = v7;

  if (_UIHomeAffordanceNotifierShouldUpdateTargetForKeyWindow(self, v10))
  {
    v8 = [v10 _windowHostingScene];
    v9 = [v8 _homeAffordanceSceneNotifier];
    [(_UIHomeAffordanceSceneNotifierProxy *)self _updateTargetNotifierRegistrationWithNotifier:v9 forMovingScreens:0];
  }
}

- (void)_windowDidResignAppKeyNotification:(id)a3
{
  v4 = [a3 object];
  v5 = objc_opt_class();
  v6 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  ShouldUpdateTargetForKeyWindow = _UIHomeAffordanceNotifierShouldUpdateTargetForKeyWindow(self, v8);
  if (ShouldUpdateTargetForKeyWindow)
  {

    [(_UIHomeAffordanceSceneNotifierProxy *)self _updateTargetNotifierRegistrationWithNotifier:0 forMovingScreens:?];
  }
}

- (void)_targetNotifierSceneDidMoveToScreen:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = [(_UIHomeAffordanceSceneNotifierProxy *)self _scene];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 _hasInvalidated];

    if ((v7 & 1) == 0)
    {
      v8 = self->_targetHomeAffordanceNotifier;
      v9 = [a3 userInfo];
      v10 = [v9 objectForKeyedSubscript:@"_UIWindowHostingSceneOldScreenUserInfoKey"];

      v11 = [a3 userInfo];
      v12 = [v11 objectForKeyedSubscript:@"_UIWindowHostingSceneNewScreenUserInfoKey"];

      v13 = *(__UILogGetCategoryCachedImpl("HomeAffordanceObservation", &_targetNotifierSceneDidMoveToScreen____s_category) + 8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [(_UIHomeAffordanceNotifying *)v8 succinctDescription];
        v14 = [(_UIHomeAffordanceSceneNotifierProxy *)self succinctDescription];
        v15 = v10;
        if (v15)
        {
          v16 = MEMORY[0x1E696AEC0];
          v17 = objc_opt_class();
          v18 = NSStringFromClass(v17);
          v19 = [v16 stringWithFormat:@"<%@: %p>", v18, v15];
        }

        else
        {
          v19 = @"(nil)";
        }

        v20 = v19;
        v21 = v12;
        if (v21)
        {
          v22 = MEMORY[0x1E696AEC0];
          v23 = objc_opt_class();
          v24 = NSStringFromClass(v23);
          v25 = [v22 stringWithFormat:@"<%@: %p>", v24, v21];
        }

        else
        {
          v25 = @"(nil)";
        }

        *buf = 138544130;
        v28 = v26;
        v29 = 2114;
        v30 = v14;
        v31 = 2114;
        v32 = v20;
        v33 = 2114;
        v34 = v25;
        _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_DEFAULT, "Current target home affordance notifier: %{public}@; for notifier: %{public}@; did move from screen: %{public}@; to screen: %{public}@", buf, 0x2Au);
      }

      [(_UIHomeAffordanceSceneNotifierProxy *)self _updateTargetNotifierRegistrationWithNotifier:1 forMovingScreens:?];
    }
  }
}

- (void)_targetNotifierSceneDidDisconnect:(id)a3
{
  v4 = [(_UIHomeAffordanceSceneNotifierProxy *)self _scene];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 _hasInvalidated];

    if ((v6 & 1) == 0)
    {
      targetHomeAffordanceNotifier = self->_targetHomeAffordanceNotifier;

      [(_UIHomeAffordanceSceneNotifierProxy *)self _updateTargetNotifierRegistrationWithNotifier:0 forMovingScreens:?];
    }
  }
}

- (void)_notifier:(id)a3 homeAffordanceFrameDidChange:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v97 = *MEMORY[0x1E69E9840];
  v10 = [(_UIHomeAffordanceSceneNotifierProxy *)self _scene];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 _hasInvalidated];

    if ((v12 & 1) == 0)
    {
      v13 = self->_targetHomeAffordanceNotifier;
      if (v13)
      {
        v14 = *MEMORY[0x1E695F058];
        v15 = *(MEMORY[0x1E695F058] + 8);
        v16 = *(MEMORY[0x1E695F058] + 16);
        v17 = *(MEMORY[0x1E695F058] + 24);
        v98.origin.x = x;
        v98.origin.y = y;
        v98.size.width = width;
        v98.size.height = height;
        v105.origin.x = *MEMORY[0x1E695F058];
        v105.origin.y = v15;
        v105.size.width = v16;
        v105.size.height = v17;
        if (CGRectEqualToRect(v98, v105))
        {
          v17 = height;
          v18 = width;
          v15 = y;
          v19 = x;
        }

        else
        {
          v85 = v17;
          v86 = v16;
          v87 = v15;
          v88 = v14;
          v24 = [(_UIHomeAffordanceNotifying *)v13 windowHostingScene];
          v25 = [(_UIHomeAffordanceSceneNotifierProxy *)self windowHostingScene];
          v26 = [v24 _screen];
          v27 = [v25 _screen];
          if (v26 == v27)
          {
            [v24 _referenceBounds];
            v29 = v28;
            v31 = v30;
            [v25 _referenceBounds];
            v83 = v32;
            v84 = v33;
            v34 = [v24 _coordinateSpace];
            v35 = [v25 _coordinateSpace];
            v36 = [v24 _interfaceOrientation];
            v82 = [v25 _interfaceOrientation];
            v37 = _UIWindowConvertRectFromSceneReferenceSpaceToSceneSpace(v36, x, y, width, height, v29, v31);
            v39 = v38;
            v41 = v40;
            v43 = v42;
            v44 = [v24 _screen];
            v45 = [v44 fixedCoordinateSpace];
            [v34 convertRect:v45 toCoordinateSpace:{v37, v39, v41, v43}];
            v47 = v46;
            v49 = v48;
            v51 = v50;
            v53 = v52;

            v54 = [v26 fixedCoordinateSpace];
            [v35 convertRect:v54 fromCoordinateSpace:{v47, v49, v51, v53}];
            v56 = v55;
            v58 = v57;
            v60 = v59;
            v62 = v61;

            [v35 bounds];
            v106.origin.x = v63;
            v106.origin.y = v64;
            v106.size.width = v65;
            v106.size.height = v66;
            v99.origin.x = v56;
            v99.origin.y = v58;
            v99.size.width = v60;
            v99.size.height = v62;
            v100 = CGRectIntersection(v99, v106);
            v19 = v100.origin.x;
            v15 = v100.origin.y;
            v18 = v100.size.width;
            v17 = v100.size.height;
            IsNull = CGRectIsNull(v100);
            v69 = v85;
            v68 = v86;
            if (IsNull)
            {
              v17 = v85;
              v18 = v86;
            }

            v71 = v87;
            v70 = v88;
            if (IsNull)
            {
              v15 = v87;
              v19 = v88;
            }

            v101.origin.x = v19;
            v101.origin.y = v15;
            v101.size.width = v18;
            v101.size.height = v17;
            if (!CGRectEqualToRect(v101, *(&v68 - 2)))
            {
              v19 = _UIWindowConvertRectFromSceneSpaceToSceneReferenceSpace(v82, v19, v15, v18, v17, v83, v84);
              v15 = v72;
              v18 = v73;
              v17 = v74;
            }
          }

          else
          {
            v34 = [MEMORY[0x1E696AAA8] currentHandler];
            v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGRect _UIHomeAffordanceConvertSceneReferenceFrameFromSceneToScene(CGRect, UIScene<_UISceneUIWindowHosting> * _Nonnull const __strong, UIScene<_UISceneUIWindowHosting> * _Nonnull const __strong)"}];
            [v34 handleFailureInFunction:v35 file:@"_UIHomeAffordanceSceneNotifier.m" lineNumber:314 description:{@"Invalid conversion attempt between scenes on different screens: fromScene: %@; toScene: %@", v24, v25}];
            v18 = v16;
            v19 = v88;
          }
        }

        v102.origin.x = v19;
        v102.origin.y = v15;
        v102.size.width = v18;
        v102.size.height = v17;
        if (!CGRectEqualToRect(v102, self->_lastReceivedHomeAffordanceSceneReferenceFrame))
        {
          CategoryCachedImpl = __UILogGetCategoryCachedImpl("HomeAffordanceObservation", &_notifier_homeAffordanceFrameDidChange____s_category);
          if (*CategoryCachedImpl)
          {
            v76 = *(CategoryCachedImpl + 8);
            if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
            {
              v77 = v76;
              v103.origin.x = x;
              v103.origin.y = y;
              v103.size.width = width;
              v103.size.height = height;
              v78 = NSStringFromCGRect(v103);
              v104.origin.x = v19;
              v104.origin.y = v15;
              v104.size.width = v18;
              v104.size.height = v17;
              v79 = NSStringFromCGRect(v104);
              v80 = [(_UIHomeAffordanceNotifying *)v13 succinctDescription];
              v81 = [(_UIHomeAffordanceSceneNotifierProxy *)self succinctDescription];
              *buf = 138544130;
              v90 = v78;
              v91 = 2114;
              v92 = v79;
              v93 = 2114;
              v94 = v80;
              v95 = 2114;
              v96 = v81;
              _os_log_impl(&dword_188A29000, v77, OS_LOG_TYPE_ERROR, "Received proxy home affordance frame update from target notifier: %{public}@; converted frame: %{public}@; target notifier: %{public}@; proxy: %{public}@", buf, 0x2Au);
            }
          }

          self->_lastReceivedHomeAffordanceSceneReferenceFrame.origin.x = v19;
          self->_lastReceivedHomeAffordanceSceneReferenceFrame.origin.y = v15;
          self->_lastReceivedHomeAffordanceSceneReferenceFrame.size.width = v18;
          self->_lastReceivedHomeAffordanceSceneReferenceFrame.size.height = v17;
          _UIHomeAffordanceNotifyObserversFrameDidChange(self, self->_registeredObserverRecords, 0, v19, v15, v18, v17);
        }
      }

      else
      {
        v20 = [MEMORY[0x1E696AAA8] currentHandler];
        v21 = [(_UIHomeAffordanceSceneNotifierProxy *)self succinctDescription];
        WeakRetained = objc_loadWeakRetained(&self->_scene);
        v23 = [WeakRetained succinctDescription];
        [v20 handleFailureInMethod:a2 object:self file:@"_UIHomeAffordanceSceneNotifier.m" lineNumber:1305 description:{@"Unexpected target notifier update for proxy notifier: %@; scene: %@", v21, v23}];
      }
    }
  }
}

- (void)_notifier:(id)a3 homeAffordanceDoubleTapGestureDidSucceed:(BOOL)a4
{
  v4 = a4;
  v26 = *MEMORY[0x1E69E9840];
  v7 = [(_UIHomeAffordanceSceneNotifierProxy *)self _scene];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 _hasInvalidated];

    if ((v9 & 1) == 0)
    {
      v10 = self->_targetHomeAffordanceNotifier;
      if (v10)
      {
        CategoryCachedImpl = __UILogGetCategoryCachedImpl("HomeAffordanceObservation", &_notifier_homeAffordanceDoubleTapGestureDidSucceed____s_category);
        if (*CategoryCachedImpl)
        {
          v16 = *(CategoryCachedImpl + 8);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = v16;
            v18 = [(_UIHomeAffordanceNotifying *)v10 succinctDescription];
            v19 = [(_UIHomeAffordanceSceneNotifierProxy *)self succinctDescription];
            *buf = 67109634;
            v21 = v4;
            v22 = 2114;
            v23 = v18;
            v24 = 2114;
            v25 = v19;
            _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_ERROR, "Received proxy doubleTapGestureDidSucceed from target notifier: %d; target notifier: %{public}@; proxy: %{public}@", buf, 0x1Cu);
          }
        }

        _UIHomeAffordanceNotifyObserversDoubleTapGestureDidSucceed(self, self->_registeredObserverRecords, v4, 0);
      }

      else
      {
        v12 = [MEMORY[0x1E696AAA8] currentHandler];
        v13 = [(_UIHomeAffordanceSceneNotifierProxy *)self succinctDescription];
        WeakRetained = objc_loadWeakRetained(&self->_scene);
        v15 = [WeakRetained succinctDescription];
        [v12 handleFailureInMethod:a2 object:self file:@"_UIHomeAffordanceSceneNotifier.m" lineNumber:1337 description:{@"Unexpected target notifier update for proxy notifier: %@; scene: %@", v13, v15}];
      }
    }
  }
}

- (void)appendDescriptionToStream:(id)a3
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65___UIHomeAffordanceSceneNotifierProxy_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_1E70F35B8;
  v6[4] = a3;
  v6[5] = self;
  [a3 appendProem:self block:v6];
  if ([a3 hasDebugStyle])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __65___UIHomeAffordanceSceneNotifierProxy_appendDescriptionToStream___block_invoke_2;
    v5[3] = &unk_1E70F35B8;
    v5[4] = a3;
    v5[5] = self;
    [a3 appendBodySectionWithName:0 block:v5];
  }
}

- (id)succinctDescription
{
  v3 = MEMORY[0x1E698E688];
  v4 = [MEMORY[0x1E698E690] succinctStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:v4];

  return v5;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E698E688];
  v4 = [MEMORY[0x1E698E690] debugStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:v4];

  return v5;
}

@end