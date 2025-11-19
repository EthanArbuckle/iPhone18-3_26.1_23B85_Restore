@interface _UIHomeAffordanceSceneNotifier
- (CGRect)homeAffordanceSceneReferenceFrameForWindow:(id)a3;
- (NSString)debugDescription;
- (UIScene)_scene;
- (_UIHomeAffordanceSceneNotifier)init;
- (_UIHomeAffordanceSceneNotifier)initWithScene:(id)a3;
- (_UISceneUIWindowHosting)windowHostingScene;
- (id)registerHomeAffordanceObserver:(id)a3 inWindow:(id)a4;
- (id)succinctDescription;
- (void)_evaluateExpectsViewServiceObservers;
- (void)_homeAffordanceLegacyViewServiceUpdateSource:(CGFloat)a3 frameDidChange:(CGFloat)a4;
- (void)_homeAffordanceLegacyViewServiceUpdateSource:(uint64_t)a3 doubleTapGestureDidSucceed:;
- (void)_homeAffordanceSceneUpdateSource:(CGFloat)a3 frameDidChange:(CGFloat)a4;
- (void)_homeAffordanceSceneUpdateSource:(uint64_t)a3 doubleTapGestureDidSucceed:;
- (void)_legacyViewServiceSessionDidAssociateWithWindow:(id)a3;
- (void)_legacyViewServiceSessionDidDisassociateFromWindow:(id)a3;
- (void)_legacyViewServiceSessionDidInvalidate:(id)a3;
- (void)_legacyViewServiceSessionWasCreated:(id)a3;
- (void)_reset;
- (void)_sceneWillInvalidate:(id)a3;
- (void)_unregisterHomeAffordanceObserverForRecord:(id)a3;
- (void)_viewServiceWindow:(void *)a3 didAssociateWithLegacyViewServiceSession:;
- (void)_viewServiceWindow:(void *)a3 didDisassociateFromLegacyViewServiceSession:;
- (void)appendDescriptionToStream:(id)a3;
- (void)dealloc;
@end

@implementation _UIHomeAffordanceSceneNotifier

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

- (void)_evaluateExpectsViewServiceObservers
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if ([*(a1 + 48) count])
    {
      v2 = 1;
    }

    else
    {
      v3 = +[_UIActiveViewServiceSessionTracker sharedTracker];
      v2 = [(_UIActiveViewServiceSessionTracker *)v3 hasTrackedSessions];
    }

    v4 = *(a1 + 8);
    if (v2 != ((v4 >> 1) & 1))
    {
      *(a1 + 8) = v4 & 0xFD | (2 * v2);
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("HomeAffordanceObservation", _evaluateExpectsViewServiceObservers___s_category);
      if (*CategoryCachedImpl)
      {
        v6 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          if ((*(a1 + 8) & 2) != 0)
          {
            v7 = @"YES";
          }

          else
          {
            v7 = @"NO";
          }

          v8 = v6;
          v9 = [a1 succinctDescription];
          v10 = 138412546;
          v11 = v7;
          v12 = 2112;
          v13 = v9;
          _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "Updated expecting legacy view service observers: %@; notifier: %@", &v10, 0x16u);
        }
      }
    }
  }
}

- (id)succinctDescription
{
  v3 = MEMORY[0x1E698E688];
  v4 = [MEMORY[0x1E698E690] succinctStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:v4];

  return v5;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_stateCaptureToken invalidate];
  v3.receiver = self;
  v3.super_class = _UIHomeAffordanceSceneNotifier;
  [(_UIHomeAffordanceSceneNotifier *)&v3 dealloc];
}

- (void)_reset
{
  registeredObserverRecords = self->_registeredObserverRecords;
  self->_registeredObserverRecords = 0;

  [(_UIHomeAffordanceSceneNotifier *)self _evaluateExpectsViewServiceObservers];
  v4 = *(MEMORY[0x1E695F058] + 16);
  self->_homeAffordanceSceneReferenceFrameForScene.origin = *MEMORY[0x1E695F058];
  self->_homeAffordanceSceneReferenceFrameForScene.size = v4;
  hostedWindowToLegacyViewServiceSessions = self->_hostedWindowToLegacyViewServiceSessions;
  self->_hostedWindowToLegacyViewServiceSessions = 0;

  legacyViewServiceSessionToHomeAffordanceSceneReferenceFrames = self->_legacyViewServiceSessionToHomeAffordanceSceneReferenceFrames;
  self->_legacyViewServiceSessionToHomeAffordanceSceneReferenceFrames = 0;
}

- (_UIHomeAffordanceSceneNotifier)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"_UIHomeAffordanceSceneNotifier.m" lineNumber:498 description:{@"%s: init is not allowed on %@", "-[_UIHomeAffordanceSceneNotifier init]", objc_opt_class()}];

  return 0;
}

- (_UIHomeAffordanceSceneNotifier)initWithScene:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v29.receiver = self;
  v29.super_class = _UIHomeAffordanceSceneNotifier;
  v4 = [(_UIHomeAffordanceSceneNotifier *)&v29 init];
  if (v4)
  {
    v5 = *(__UILogGetCategoryCachedImpl("HomeAffordanceObservation", &initWithScene____s_category) + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = MEMORY[0x1E696AEC0];
      v7 = v4;
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = [v6 stringWithFormat:@"<%@: %p>", v9, v7];

      v11 = v10;
      if (a3)
      {
        v12 = MEMORY[0x1E696AEC0];
        v13 = a3;
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = [v12 stringWithFormat:@"<%@: %p>", v15, v13];
      }

      else
      {
        v16 = @"(nil)";
      }

      *buf = 138543618;
      v31 = v11;
      v32 = 2114;
      v33 = v16;
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "Initializing: %{public}@; with scene: %{public}@", buf, 0x16u);
    }

    objc_storeWeak(&v4->_scene, a3);
    [(_UIHomeAffordanceSceneNotifier *)v4 _evaluateExpectsViewServiceObservers];
    v17 = [MEMORY[0x1E696AD88] defaultCenter];
    [v17 addObserver:v4 selector:sel__legacyViewServiceSessionWasCreated_ name:@"_UIViewServiceSessionWasCreatedNotification" object:0];
    [v17 addObserver:v4 selector:sel__legacyViewServiceSessionDidInvalidate_ name:@"_UIViewServiceSessionDidInvalidateNotification" object:0];
    [v17 addObserver:v4 selector:sel__legacyViewServiceSessionDidAssociateWithWindow_ name:@"_UIViewServiceSessionDidAssociateNonPrimaryHostedWindowNotification" object:0];
    [v17 addObserver:v4 selector:sel__legacyViewServiceSessionDidDisassociateFromWindow_ name:@"_UIViewServiceSessionDidDisassociateNonPrimaryHostedWindowNotification" object:0];
    objc_initWeak(buf, v4);
    v18 = objc_opt_class();
    Name = class_getName(v18);
    v20 = MEMORY[0x1E696AEC0];
    WeakRetained = objc_loadWeakRetained(&v4->_scene);
    v22 = [WeakRetained _sceneIdentifier];
    v23 = [v20 stringWithFormat:@"UIKit - %s - %@", Name, v22];

    v24 = MEMORY[0x1E69E96A0];
    objc_copyWeak(&v28, buf);
    v25 = BSLogAddStateCaptureBlockWithTitle();
    stateCaptureToken = v4->_stateCaptureToken;
    v4->_stateCaptureToken = v25;

    objc_destroyWeak(&v28);
    objc_destroyWeak(buf);
  }

  return v4;
}

- (void)_sceneWillInvalidate:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if ([a3 _hasInvalidated])
  {
    *&self->_flags |= 1u;
    v5 = *(__UILogGetCategoryCachedImpl("HomeAffordanceObservation", &_sceneWillInvalidate____s_category) + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(_UIHomeAffordanceSceneNotifier *)self succinctDescription];
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
      v16 = v6;
      v17 = 2114;
      v18 = v11;
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "Resetting home affordance notifier: %{public}@; for invalidating scene: %{public}@", buf, 0x16u);
    }

    [(_UIHomeAffordanceSceneNotifier *)self _reset];
    [(BSInvalidatable *)self->_stateCaptureToken invalidate];
    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    v14[0] = @"_UIViewServiceSessionWasCreatedNotification";
    v14[1] = @"_UIViewServiceSessionDidInvalidateNotification";
    v14[2] = @"_UIViewServiceSessionDidAssociateNonPrimaryHostedWindowNotification";
    v14[3] = @"_UIViewServiceSessionDidDisassociateNonPrimaryHostedWindowNotification";
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:4];
    [(NSNotificationCenter *)v12 _uiRemoveObserver:v13 names:?];
  }
}

- (void)_unregisterHomeAffordanceObserverForRecord:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = [(_UIHomeAffordanceSceneNotifier *)self _scene];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 _hasInvalidated];

    if ((v7 & 1) == 0)
    {
      [(NSMutableSet *)self->_registeredObserverRecords removeObject:a3];
      if (os_variant_has_internal_diagnostics())
      {
        v8 = *(__UILogGetCategoryCachedImpl("HomeAffordanceObservation", &_unregisterHomeAffordanceObserverForRecord____s_category) + 8);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = v8;
          v10 = [(_UIHomeAffordanceObservationRecord *)a3 observer];
          v11 = [(_UIHomeAffordanceSceneNotifier *)self succinctDescription];
          v12 = 138543618;
          v13 = v10;
          v14 = 2114;
          v15 = v11;
          _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "Unregistered home affordance observer: %{public}@; notifier: %{public}@", &v12, 0x16u);
        }
      }
    }
  }
}

- (id)registerHomeAffordanceObserver:(id)a3 inWindow:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = [(_UIHomeAffordanceSceneNotifier *)self _scene];
  if (v7 && (v8 = v7, v9 = [v7 _hasInvalidated], v8, (v9 & 1) == 0) && _UIHomeAffordanceValidateObserver(self, a3, a4, (*&self->_flags & 2) != 0))
  {
    v10 = [(NSMapTable *)self->_hostedWindowToLegacyViewServiceSessions objectForKey:a4];
    v11 = [[_UIHomeAffordanceObservationRecord alloc] initWithObserver:a3 window:a4 viewServiceSessionIdentifier:v10];
    registeredObserverRecords = self->_registeredObserverRecords;
    if (!registeredObserverRecords)
    {
      v13 = objc_opt_new();
      v14 = self->_registeredObserverRecords;
      self->_registeredObserverRecords = v13;

      registeredObserverRecords = self->_registeredObserverRecords;
    }

    [(NSMutableSet *)registeredObserverRecords addObject:v11];
    v15 = _UIHomeAffordanceRegistrationTokenForNotifierAndRecord(self, v11);
    if (os_variant_has_internal_diagnostics())
    {
      v17 = *(__UILogGetCategoryCachedImpl("HomeAffordanceObservation", &registerHomeAffordanceObserver_inWindow____s_category) + 8);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v17;
        v19 = [(_UIHomeAffordanceSceneNotifier *)self succinctDescription];
        v20 = 138543618;
        v21 = a3;
        v22 = 2114;
        v23 = v19;
        _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_DEFAULT, "Registered home affordance observer: %{public}@; notifier: %{public}@", &v20, 0x16u);
      }
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (CGRect)homeAffordanceSceneReferenceFrameForWindow:(id)a3
{
  if (a3)
  {
    if ((*&self->_flags & 2) != 0)
    {
      v10 = [(NSMapTable *)self->_hostedWindowToLegacyViewServiceSessions objectForKey:?];
      if (v10)
      {
        v11 = [(NSMapTable *)self->_legacyViewServiceSessionToHomeAffordanceSceneReferenceFrames objectForKey:v10];
        [v11 CGRectValue];
        x = v12;
        y = v13;
        width = v14;
        height = v15;
      }

      else
      {
        x = self->_homeAffordanceSceneReferenceFrameForScene.origin.x;
        y = self->_homeAffordanceSceneReferenceFrameForScene.origin.y;
        width = self->_homeAffordanceSceneReferenceFrameForScene.size.width;
        height = self->_homeAffordanceSceneReferenceFrameForScene.size.height;
      }
    }

    else
    {
      x = self->_homeAffordanceSceneReferenceFrameForScene.origin.x;
      y = self->_homeAffordanceSceneReferenceFrameForScene.origin.y;
      width = self->_homeAffordanceSceneReferenceFrameForScene.size.width;
      height = self->_homeAffordanceSceneReferenceFrameForScene.size.height;
    }
  }

  else
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_UIHomeAffordanceSceneNotifier.m" lineNumber:612 description:@"Invalid home affordance frame request with nil window"];

    x = *MEMORY[0x1E695F058];
    y = *(MEMORY[0x1E695F058] + 8);
    width = *(MEMORY[0x1E695F058] + 16);
    height = *(MEMORY[0x1E695F058] + 24);
  }

  v16 = x;
  v17 = y;
  v18 = width;
  v19 = height;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)_homeAffordanceSceneUpdateSource:(CGFloat)a3 frameDidChange:(CGFloat)a4
{
  v28 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v12 = [a1 _scene];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 _hasInvalidated];

      if ((v14 & 1) == 0)
      {
        WeakRetained = objc_loadWeakRetained((a1 + 32));
        v16 = [WeakRetained _FBSScene];
        v17 = [v16 _homeAffordanceClientSceneComponent];

        if (v17 == a2)
        {
          v29.origin.x = a3;
          v29.origin.y = a4;
          v29.size.width = a5;
          v29.size.height = a6;
          if (!CGRectEqualToRect(v29, *(a1 + 72)))
          {
            CategoryCachedImpl = __UILogGetCategoryCachedImpl("HomeAffordanceObservation", &_homeAffordanceSceneUpdateSource_frameDidChange____s_category);
            if (*CategoryCachedImpl)
            {
              v20 = *(CategoryCachedImpl + 8);
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                v21 = v20;
                v30.origin.x = a3;
                v30.origin.y = a4;
                v30.size.width = a5;
                v30.size.height = a6;
                v22 = NSStringFromCGRect(v30);
                v23 = [a1 succinctDescription];
                *buf = 138543618;
                v25 = v22;
                v26 = 2114;
                v27 = v23;
                _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_ERROR, "Received home affordance frame change for scene: %{public}@; notifier: %{public}@", buf, 0x16u);
              }
            }

            *(a1 + 72) = a3;
            *(a1 + 80) = a4;
            *(a1 + 88) = a5;
            *(a1 + 96) = a6;
            _UIHomeAffordanceNotifyObserversFrameDidChange(a1, *(a1 + 40), 0, a3, a4, a5, a6);
          }
        }

        else
        {
          v18 = [MEMORY[0x1E696AAA8] currentHandler];
          [v18 handleFailureInMethod:sel__homeAffordanceSceneUpdateSource_frameDidChange_ object:a1 file:@"_UIHomeAffordanceSceneNotifier.m" lineNumber:651 description:{@"Unexpected frame update from other FrontBoard-based scene component: %@; notifier component: %@", a2, v17}];
        }
      }
    }
  }
}

- (void)_homeAffordanceSceneUpdateSource:(uint64_t)a3 doubleTapGestureDidSucceed:
{
  v21 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = [a1 _scene];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 _hasInvalidated];

      if ((v8 & 1) == 0)
      {
        WeakRetained = objc_loadWeakRetained(a1 + 4);
        v10 = [WeakRetained _FBSScene];
        v11 = [v10 _homeAffordanceClientSceneComponent];

        if (v11 == a2)
        {
          CategoryCachedImpl = __UILogGetCategoryCachedImpl("HomeAffordanceObservation", &_homeAffordanceSceneUpdateSource_doubleTapGestureDidSucceed____s_category);
          if (*CategoryCachedImpl)
          {
            v14 = *(CategoryCachedImpl + 8);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              v15 = v14;
              v16 = [a1 succinctDescription];
              *buf = 67109378;
              v18 = a3;
              v19 = 2114;
              v20 = v16;
              _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "Received doubleTapGestureDidSucceed for scene: %d; notifier: %{public}@", buf, 0x12u);
            }
          }

          _UIHomeAffordanceNotifyObserversDoubleTapGestureDidSucceed(a1, a1[5], a3, 0);
        }

        else
        {
          v12 = [MEMORY[0x1E696AAA8] currentHandler];
          [v12 handleFailureInMethod:sel__homeAffordanceSceneUpdateSource_doubleTapGestureDidSucceed_ object:a1 file:@"_UIHomeAffordanceSceneNotifier.m" lineNumber:673 description:{@"Unexpected didSucceed update from other FrontBoard-based scene component: %@; notifier component: %@", a2, v11}];
        }
      }
    }
  }
}

- (void)_viewServiceWindow:(void *)a3 didAssociateWithLegacyViewServiceSession:
{
  v64 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2 && a3)
    {
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("HomeAffordanceObservation", &_viewServiceWindow_didAssociateWithLegacyViewServiceSession____s_category);
      if (*CategoryCachedImpl)
      {
        v39 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v40 = MEMORY[0x1E696AEC0];
          v41 = a2;
          v42 = v39;
          v43 = objc_opt_class();
          v44 = NSStringFromClass(v43);
          v45 = [v40 stringWithFormat:@"<%@: %p>", v44, v41];

          v46 = v45;
          v47 = [a1 succinctDescription];
          *buf = 138543874;
          v59 = v45;
          v60 = 2114;
          v61 = a3;
          v62 = 2114;
          v63 = v47;
          _os_log_impl(&dword_188A29000, v42, OS_LOG_TYPE_ERROR, "Hosted window: %{public}@; did associate with legacy view service session: %{public}@; notifier: %{public}@", buf, 0x20u);
        }
      }

      v7 = a1[7];
      if (!v7)
      {
        v8 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:512 valueOptions:512];
        v9 = a1[7];
        a1[7] = v8;

        v7 = a1[7];
      }

      v50 = [v7 objectForKey:a2];
      v10 = [a1[8] objectForKey:?];
      v11 = [a1[8] objectForKey:a3];
      v49 = v10;
      [v10 CGRectValue];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;
      [v11 CGRectValue];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v66.origin.x = v13;
      v66.origin.y = v15;
      v66.size.width = v17;
      v66.size.height = v19;
      v67.origin.x = v21;
      v67.origin.y = v23;
      v67.size.width = v25;
      v67.size.height = v27;
      v48 = CGRectEqualToRect(v66, v67);
      [a1[7] setObject:a3 forKey:a2];
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v28 = a1[5];
      v29 = [v28 countByEnumeratingWithState:&v53 objects:v57 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v54;
        do
        {
          v32 = 0;
          do
          {
            if (*v54 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v53 + 1) + 8 * v32);
            if (v33)
            {
              WeakRetained = objc_loadWeakRetained((v33 + 16));
              if (WeakRetained == a2)
              {
                v35 = *(v33 + 24);

                if (v35 == a3)
                {
                  goto LABEL_17;
                }

                v36 = a3;
                WeakRetained = *(v33 + 24);
                *(v33 + 24) = v36;
              }
            }

            else
            {
              WeakRetained = 0;
            }

LABEL_17:
            ++v32;
          }

          while (v30 != v32);
          v37 = [v28 countByEnumeratingWithState:&v53 objects:v57 count:16];
          v30 = v37;
        }

        while (v37);
      }

      if (!v48)
      {
        v38 = a1[5];
        v52[0] = MEMORY[0x1E69E9820];
        v52[1] = 3221225472;
        v52[2] = __94___UIHomeAffordanceSceneNotifier__viewServiceWindow_didAssociateWithLegacyViewServiceSession___block_invoke;
        v52[3] = &unk_1E70F6780;
        v52[4] = a2;
        v52[5] = a3;
        _UIHomeAffordanceNotifyObserversFrameDidChange(a1, v38, v52, v21, v23, v25, v27);
      }
    }

    else
    {
      v51 = [MEMORY[0x1E696AAA8] currentHandler];
      [v51 handleFailureInMethod:sel__viewServiceWindow_didAssociateWithLegacyViewServiceSession_ object:a1 file:@"_UIHomeAffordanceSceneNotifier.m" lineNumber:721 description:{@"Invalid view service window transition: window: %@; newLegacyViewServiceSession: %@; notifier: %@", a2, a3, a1}];
    }
  }
}

- (void)_viewServiceWindow:(void *)a3 didDisassociateFromLegacyViewServiceSession:
{
  v46 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2 && a3)
    {
      v6 = [a1[7] objectForKey:a2];
      v7 = a3;
      v8 = v7;
      if (v6 == v7)
      {
      }

      else
      {
        if (!v6)
        {

LABEL_23:
          return;
        }

        v9 = [v6 isEqual:v7];

        if (!v9)
        {
          goto LABEL_23;
        }
      }

      CategoryCachedImpl = __UILogGetCategoryCachedImpl("HomeAffordanceObservation", &_viewServiceWindow_didDisassociateFromLegacyViewServiceSession____s_category);
      if (*CategoryCachedImpl)
      {
        v24 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = MEMORY[0x1E696AEC0];
          v26 = a2;
          v27 = v24;
          v28 = objc_opt_class();
          v29 = NSStringFromClass(v28);
          v30 = [v25 stringWithFormat:@"<%@: %p>", v29, v26];

          v31 = v30;
          v32 = [a1 succinctDescription];
          *buf = 138543874;
          v41 = v30;
          v42 = 2114;
          v43 = v8;
          v44 = 2114;
          v45 = v32;
          _os_log_impl(&dword_188A29000, v27, OS_LOG_TYPE_ERROR, "Hosted window: %{public}@; did disassociate from legacy view service session: %{public}@; notifier: %{public}@", buf, 0x20u);
        }
      }

      [a1[7] removeObjectForKey:a2];
      v11 = [a1[8] objectForKey:v8];
      v12 = *MEMORY[0x1E695F058];
      v13 = *(MEMORY[0x1E695F058] + 8);
      v14 = *(MEMORY[0x1E695F058] + 16);
      v15 = *(MEMORY[0x1E695F058] + 24);
      [v11 CGRectValue];
      v49.origin.x = v12;
      v49.origin.y = v13;
      v49.size.width = v14;
      v49.size.height = v15;
      v16 = CGRectEqualToRect(v48, v49);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __97___UIHomeAffordanceSceneNotifier__viewServiceWindow_didDisassociateFromLegacyViewServiceSession___block_invoke;
      aBlock[3] = &unk_1E70F6780;
      aBlock[4] = a2;
      aBlock[5] = v8;
      v17 = _Block_copy(aBlock);
      if (!v16)
      {
        _UIHomeAffordanceNotifyObserversFrameDidChange(a1, a1[5], v17, v12, v13, v14, v15);
      }

      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v18 = a1[5];
      v19 = [v18 countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v35;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v35 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v34 + 1) + 8 * i);
            if (v17[2](v17, v23))
            {
              [(_UIHomeAffordanceObservationRecord *)v23 setLegacyViewServiceSessionIdentifier:?];
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v34 objects:v39 count:16];
        }

        while (v20);
      }

      goto LABEL_23;
    }

    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    [v33 handleFailureInMethod:sel__viewServiceWindow_didDisassociateFromLegacyViewServiceSession_ object:a1 file:@"_UIHomeAffordanceSceneNotifier.m" lineNumber:762 description:{@"Invalid view service window transition: window: %@; oldLegacyViewServiceSession: %@; notifier: %@", a2, a3, a1}];
  }
}

- (void)_legacyViewServiceSessionWasCreated:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
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

  if (v8)
  {
    WeakRetained = objc_loadWeakRetained(v8 + 9);
  }

  else
  {
    WeakRetained = 0;
  }

  v10 = [WeakRetained _windowHostingScene];

  if (v8)
  {
    if (v10)
    {
      v11 = [(_UIHomeAffordanceSceneNotifier *)self windowHostingScene];

      if (v10 == v11)
      {
        CategoryCachedImpl = __UILogGetCategoryCachedImpl("HomeAffordanceObservation", &_legacyViewServiceSessionWasCreated____s_category);
        if (*CategoryCachedImpl)
        {
          v24 = *(CategoryCachedImpl + 8);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            v25 = v24;
            v26 = [(_UIHomeAffordanceSceneNotifier *)self succinctDescription];
            *buf = 138543618;
            v33 = v8;
            v34 = 2114;
            v35 = v26;
            _os_log_impl(&dword_188A29000, v25, OS_LOG_TYPE_ERROR, "Legacy view service session was created in scene: %{public}@; notifier: %{public}@", buf, 0x16u);
          }
        }

        trackedLegacyViewServiceSessions = self->_trackedLegacyViewServiceSessions;
        if (!trackedLegacyViewServiceSessions)
        {
          v14 = objc_opt_new();
          v15 = self->_trackedLegacyViewServiceSessions;
          self->_trackedLegacyViewServiceSessions = v14;

          trackedLegacyViewServiceSessions = self->_trackedLegacyViewServiceSessions;
        }

        v16 = v8[7];
        [(NSMutableArray *)trackedLegacyViewServiceSessions addObject:v16];

        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v17 = [v8[1] copy];
        v18 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v28;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v28 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v27 + 1) + 8 * i);
              v23 = v8[7];
              [(_UIHomeAffordanceSceneNotifier *)&self->super.isa _viewServiceWindow:v22 didAssociateWithLegacyViewServiceSession:v23];
            }

            v19 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
          }

          while (v19);
        }
      }
    }
  }

  [(_UIHomeAffordanceSceneNotifier *)self _evaluateExpectsViewServiceObservers];
}

- (void)_legacyViewServiceSessionDidInvalidate:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
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

  if (v8)
  {
    v9 = v8[7];
    if ([(NSMutableArray *)self->_trackedLegacyViewServiceSessions containsObject:v9])
    {
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("HomeAffordanceObservation", &_legacyViewServiceSessionDidInvalidate____s_category);
      if (*CategoryCachedImpl)
      {
        v21 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = v21;
          v23 = [(_UIHomeAffordanceSceneNotifier *)self succinctDescription];
          *buf = 138543618;
          v31 = v8;
          v32 = 2114;
          v33 = v23;
          _os_log_impl(&dword_188A29000, v22, OS_LOG_TYPE_ERROR, "Legacy view service session did invalidate: %{public}@; notifier: %{public}@", buf, 0x16u);
        }
      }

      v24 = v8;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v11 = [(NSMapTable *)self->_hostedWindowToLegacyViewServiceSessions copy];
      v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v26;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v26 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v25 + 1) + 8 * i);
            v17 = [(NSMapTable *)self->_hostedWindowToLegacyViewServiceSessions objectForKey:v16];
            v18 = v9;
            v19 = v18;
            if (v17 == v18)
            {

LABEL_20:
              [(_UIHomeAffordanceSceneNotifier *)&self->super.isa _viewServiceWindow:v16 didDisassociateFromLegacyViewServiceSession:v19];
              goto LABEL_22;
            }

            if (v9 && v17)
            {
              v20 = [v17 isEqual:v18];

              if (v20)
              {
                goto LABEL_20;
              }
            }

            else
            {
            }

LABEL_22:
          }

          v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v13);
      }

      [(NSMapTable *)self->_legacyViewServiceSessionToHomeAffordanceSceneReferenceFrames removeObjectForKey:v9];
      [(NSMutableArray *)self->_trackedLegacyViewServiceSessions removeObject:v9];
      v8 = v24;
    }
  }

  else
  {
    v9 = 0;
  }

  [(_UIHomeAffordanceSceneNotifier *)self _evaluateExpectsViewServiceObservers];
}

- (void)_legacyViewServiceSessionDidAssociateWithWindow:(id)a3
{
  v5 = [a3 object];
  v6 = objc_opt_class();
  v7 = v5;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v19 = v8;

  v9 = v19;
  if (v19)
  {
    trackedLegacyViewServiceSessions = self->_trackedLegacyViewServiceSessions;
    v11 = v19[7];
    LODWORD(trackedLegacyViewServiceSessions) = [(NSMutableArray *)trackedLegacyViewServiceSessions containsObject:v11];

    v9 = v19;
    if (trackedLegacyViewServiceSessions)
    {
      v12 = [a3 userInfo];
      v13 = [v12 objectForKey:@"_UIViewServiceSessionAssociatedNonPrimaryWindowKey"];
      v14 = objc_opt_class();
      v15 = v13;
      if (v14)
      {
        if (objc_opt_isKindOfClass())
        {
          v16 = v15;
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;

      if (v17)
      {
        v18 = v19[7];
        [(_UIHomeAffordanceSceneNotifier *)&self->super.isa _viewServiceWindow:v17 didAssociateWithLegacyViewServiceSession:v18];
      }

      v9 = v19;
    }
  }
}

- (void)_legacyViewServiceSessionDidDisassociateFromWindow:(id)a3
{
  v5 = [a3 object];
  v6 = objc_opt_class();
  v7 = v5;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v19 = v8;

  v9 = v19;
  if (v19)
  {
    trackedLegacyViewServiceSessions = self->_trackedLegacyViewServiceSessions;
    v11 = v19[7];
    LODWORD(trackedLegacyViewServiceSessions) = [(NSMutableArray *)trackedLegacyViewServiceSessions containsObject:v11];

    v9 = v19;
    if (trackedLegacyViewServiceSessions)
    {
      v12 = [a3 userInfo];
      v13 = [v12 objectForKey:@"_UIViewServiceSessionAssociatedNonPrimaryWindowKey"];
      v14 = objc_opt_class();
      v15 = v13;
      if (v14)
      {
        if (objc_opt_isKindOfClass())
        {
          v16 = v15;
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;

      if (v17)
      {
        v18 = v19[7];
        [(_UIHomeAffordanceSceneNotifier *)&self->super.isa _viewServiceWindow:v17 didDisassociateFromLegacyViewServiceSession:v18];
      }

      v9 = v19;
    }
  }
}

- (void)_homeAffordanceLegacyViewServiceUpdateSource:(CGFloat)a3 frameDidChange:(CGFloat)a4
{
  v40 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (!*(a1 + 64))
    {
      v12 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:512 valueOptions:512];
      v13 = *(a1 + 64);
      *(a1 + 64) = v12;
    }

    v14 = [a2 _sessionIdentifier];
    v15 = [*(a1 + 64) objectForKey:v14];
    v16 = v15;
    if (v15)
    {
      [v15 CGRectValue];
      v43.origin.x = v17;
      v43.origin.y = v18;
      v43.size.width = v19;
      v43.size.height = v20;
      v41.origin.x = a3;
      v41.origin.y = a4;
      v41.size.width = a5;
      v41.size.height = a6;
      v21 = CGRectEqualToRect(v41, v43);
      v22 = *(a1 + 64);
      v23 = [MEMORY[0x1E696B098] valueWithCGRect:{a3, a4, a5, a6}];
      [v22 setObject:v23 forKey:v14];

      if (v21)
      {
LABEL_10:

        return;
      }
    }

    else
    {
      v24 = *(a1 + 64);
      v25 = [MEMORY[0x1E696B098] valueWithCGRect:{a3, a4, a5, a6}];
      [v24 setObject:v25 forKey:v14];
    }

    CategoryCachedImpl = __UILogGetCategoryCachedImpl("HomeAffordanceObservation", &_homeAffordanceLegacyViewServiceUpdateSource_frameDidChange____s_category);
    if (*CategoryCachedImpl)
    {
      v28 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = v28;
        v42.origin.x = a3;
        v42.origin.y = a4;
        v42.size.width = a5;
        v42.size.height = a6;
        v30 = NSStringFromCGRect(v42);
        v31 = [a1 succinctDescription];
        *buf = 138543874;
        v35 = v14;
        v36 = 2112;
        v37 = v30;
        v38 = 2114;
        v39 = v31;
        _os_log_impl(&dword_188A29000, v29, OS_LOG_TYPE_ERROR, "Received home affordance frame change for legacy view service session: %{public}@; frame: %@; notifier: %{public}@", buf, 0x20u);
      }
    }

    v27 = *(a1 + 40);
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __94___UIHomeAffordanceSceneNotifier__homeAffordanceLegacyViewServiceUpdateSource_frameDidChange___block_invoke;
    v32[3] = &unk_1E70F67A8;
    v33 = v14;
    _UIHomeAffordanceNotifyObserversFrameDidChange(a1, v27, v32, a3, a4, a5, a6);

    goto LABEL_10;
  }
}

- (void)_homeAffordanceLegacyViewServiceUpdateSource:(uint64_t)a3 doubleTapGestureDidSucceed:
{
  if (a1)
  {
    v5 = [a2 _sessionIdentifier];
    v6 = a1[5];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __106___UIHomeAffordanceSceneNotifier__homeAffordanceLegacyViewServiceUpdateSource_doubleTapGestureDidSucceed___block_invoke;
    v8[3] = &unk_1E70F67A8;
    v9 = v5;
    v7 = v5;
    _UIHomeAffordanceNotifyObserversDoubleTapGestureDidSucceed(a1, v6, a3, v8);
  }
}

- (void)appendDescriptionToStream:(id)a3
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60___UIHomeAffordanceSceneNotifier_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_1E70F35B8;
  v6[4] = a3;
  v6[5] = self;
  [a3 appendProem:self block:v6];
  if ([a3 hasDebugStyle])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __60___UIHomeAffordanceSceneNotifier_appendDescriptionToStream___block_invoke_2;
    v5[3] = &unk_1E70F35B8;
    v5[4] = a3;
    v5[5] = self;
    [a3 appendBodySectionWithName:0 block:v5];
  }
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E698E688];
  v4 = [MEMORY[0x1E698E690] debugStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:v4];

  return v5;
}

@end