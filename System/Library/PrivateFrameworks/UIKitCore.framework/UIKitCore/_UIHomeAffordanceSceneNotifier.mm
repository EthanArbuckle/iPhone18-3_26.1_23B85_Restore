@interface _UIHomeAffordanceSceneNotifier
- (CGRect)homeAffordanceSceneReferenceFrameForWindow:(id)window;
- (NSString)debugDescription;
- (UIScene)_scene;
- (_UIHomeAffordanceSceneNotifier)init;
- (_UIHomeAffordanceSceneNotifier)initWithScene:(id)scene;
- (_UISceneUIWindowHosting)windowHostingScene;
- (id)registerHomeAffordanceObserver:(id)observer inWindow:(id)window;
- (id)succinctDescription;
- (void)_evaluateExpectsViewServiceObservers;
- (void)_homeAffordanceLegacyViewServiceUpdateSource:(CGFloat)source frameDidChange:(CGFloat)change;
- (void)_homeAffordanceLegacyViewServiceUpdateSource:(uint64_t)source doubleTapGestureDidSucceed:;
- (void)_homeAffordanceSceneUpdateSource:(CGFloat)source frameDidChange:(CGFloat)change;
- (void)_homeAffordanceSceneUpdateSource:(uint64_t)source doubleTapGestureDidSucceed:;
- (void)_legacyViewServiceSessionDidAssociateWithWindow:(id)window;
- (void)_legacyViewServiceSessionDidDisassociateFromWindow:(id)window;
- (void)_legacyViewServiceSessionDidInvalidate:(id)invalidate;
- (void)_legacyViewServiceSessionWasCreated:(id)created;
- (void)_reset;
- (void)_sceneWillInvalidate:(id)invalidate;
- (void)_unregisterHomeAffordanceObserverForRecord:(id)record;
- (void)_viewServiceWindow:(void *)window didAssociateWithLegacyViewServiceSession:;
- (void)_viewServiceWindow:(void *)window didDisassociateFromLegacyViewServiceSession:;
- (void)appendDescriptionToStream:(id)stream;
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
  if (self)
  {
    if ([*(self + 48) count])
    {
      hasTrackedSessions = 1;
    }

    else
    {
      v3 = +[_UIActiveViewServiceSessionTracker sharedTracker];
      hasTrackedSessions = [(_UIActiveViewServiceSessionTracker *)v3 hasTrackedSessions];
    }

    v4 = *(self + 8);
    if (hasTrackedSessions != ((v4 >> 1) & 1))
    {
      *(self + 8) = v4 & 0xFD | (2 * hasTrackedSessions);
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("HomeAffordanceObservation", _evaluateExpectsViewServiceObservers___s_category);
      if (*CategoryCachedImpl)
      {
        v6 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          if ((*(self + 8) & 2) != 0)
          {
            v7 = @"YES";
          }

          else
          {
            v7 = @"NO";
          }

          v8 = v6;
          succinctDescription = [self succinctDescription];
          v10 = 138412546;
          v11 = v7;
          v12 = 2112;
          v13 = succinctDescription;
          _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "Updated expecting legacy view service observers: %@; notifier: %@", &v10, 0x16u);
        }
      }
    }
  }
}

- (id)succinctDescription
{
  v3 = MEMORY[0x1E698E688];
  succinctStyle = [MEMORY[0x1E698E690] succinctStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:succinctStyle];

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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIHomeAffordanceSceneNotifier.m" lineNumber:498 description:{@"%s: init is not allowed on %@", "-[_UIHomeAffordanceSceneNotifier init]", objc_opt_class()}];

  return 0;
}

- (_UIHomeAffordanceSceneNotifier)initWithScene:(id)scene
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
      if (scene)
      {
        v12 = MEMORY[0x1E696AEC0];
        sceneCopy = scene;
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        sceneCopy = [v12 stringWithFormat:@"<%@: %p>", v15, sceneCopy];
      }

      else
      {
        sceneCopy = @"(nil)";
      }

      *buf = 138543618;
      v31 = v11;
      v32 = 2114;
      v33 = sceneCopy;
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "Initializing: %{public}@; with scene: %{public}@", buf, 0x16u);
    }

    objc_storeWeak(&v4->_scene, scene);
    [(_UIHomeAffordanceSceneNotifier *)v4 _evaluateExpectsViewServiceObservers];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__legacyViewServiceSessionWasCreated_ name:@"_UIViewServiceSessionWasCreatedNotification" object:0];
    [defaultCenter addObserver:v4 selector:sel__legacyViewServiceSessionDidInvalidate_ name:@"_UIViewServiceSessionDidInvalidateNotification" object:0];
    [defaultCenter addObserver:v4 selector:sel__legacyViewServiceSessionDidAssociateWithWindow_ name:@"_UIViewServiceSessionDidAssociateNonPrimaryHostedWindowNotification" object:0];
    [defaultCenter addObserver:v4 selector:sel__legacyViewServiceSessionDidDisassociateFromWindow_ name:@"_UIViewServiceSessionDidDisassociateNonPrimaryHostedWindowNotification" object:0];
    objc_initWeak(buf, v4);
    v18 = objc_opt_class();
    Name = class_getName(v18);
    v20 = MEMORY[0x1E696AEC0];
    WeakRetained = objc_loadWeakRetained(&v4->_scene);
    _sceneIdentifier = [WeakRetained _sceneIdentifier];
    v23 = [v20 stringWithFormat:@"UIKit - %s - %@", Name, _sceneIdentifier];

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

- (void)_sceneWillInvalidate:(id)invalidate
{
  v19 = *MEMORY[0x1E69E9840];
  if ([invalidate _hasInvalidated])
  {
    *&self->_flags |= 1u;
    v5 = *(__UILogGetCategoryCachedImpl("HomeAffordanceObservation", &_sceneWillInvalidate____s_category) + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      succinctDescription = [(_UIHomeAffordanceSceneNotifier *)self succinctDescription];
      if (invalidate)
      {
        v7 = MEMORY[0x1E696AEC0];
        invalidateCopy = invalidate;
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        invalidateCopy = [v7 stringWithFormat:@"<%@: %p>", v10, invalidateCopy];
      }

      else
      {
        invalidateCopy = @"(nil)";
      }

      *buf = 138543618;
      v16 = succinctDescription;
      v17 = 2114;
      v18 = invalidateCopy;
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "Resetting home affordance notifier: %{public}@; for invalidating scene: %{public}@", buf, 0x16u);
    }

    [(_UIHomeAffordanceSceneNotifier *)self _reset];
    [(BSInvalidatable *)self->_stateCaptureToken invalidate];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v14[0] = @"_UIViewServiceSessionWasCreatedNotification";
    v14[1] = @"_UIViewServiceSessionDidInvalidateNotification";
    v14[2] = @"_UIViewServiceSessionDidAssociateNonPrimaryHostedWindowNotification";
    v14[3] = @"_UIViewServiceSessionDidDisassociateNonPrimaryHostedWindowNotification";
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:4];
    [(NSNotificationCenter *)defaultCenter _uiRemoveObserver:v13 names:?];
  }
}

- (void)_unregisterHomeAffordanceObserverForRecord:(id)record
{
  v16 = *MEMORY[0x1E69E9840];
  _scene = [(_UIHomeAffordanceSceneNotifier *)self _scene];
  if (_scene)
  {
    v6 = _scene;
    _hasInvalidated = [_scene _hasInvalidated];

    if ((_hasInvalidated & 1) == 0)
    {
      [(NSMutableSet *)self->_registeredObserverRecords removeObject:record];
      if (os_variant_has_internal_diagnostics())
      {
        v8 = *(__UILogGetCategoryCachedImpl("HomeAffordanceObservation", &_unregisterHomeAffordanceObserverForRecord____s_category) + 8);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = v8;
          observer = [(_UIHomeAffordanceObservationRecord *)record observer];
          succinctDescription = [(_UIHomeAffordanceSceneNotifier *)self succinctDescription];
          v12 = 138543618;
          v13 = observer;
          v14 = 2114;
          v15 = succinctDescription;
          _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "Unregistered home affordance observer: %{public}@; notifier: %{public}@", &v12, 0x16u);
        }
      }
    }
  }
}

- (id)registerHomeAffordanceObserver:(id)observer inWindow:(id)window
{
  v24 = *MEMORY[0x1E69E9840];
  _scene = [(_UIHomeAffordanceSceneNotifier *)self _scene];
  if (_scene && (v8 = _scene, v9 = [_scene _hasInvalidated], v8, (v9 & 1) == 0) && _UIHomeAffordanceValidateObserver(self, observer, window, (*&self->_flags & 2) != 0))
  {
    v10 = [(NSMapTable *)self->_hostedWindowToLegacyViewServiceSessions objectForKey:window];
    v11 = [[_UIHomeAffordanceObservationRecord alloc] initWithObserver:observer window:window viewServiceSessionIdentifier:v10];
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
        succinctDescription = [(_UIHomeAffordanceSceneNotifier *)self succinctDescription];
        v20 = 138543618;
        observerCopy = observer;
        v22 = 2114;
        v23 = succinctDescription;
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

- (CGRect)homeAffordanceSceneReferenceFrameForWindow:(id)window
{
  if (window)
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIHomeAffordanceSceneNotifier.m" lineNumber:612 description:@"Invalid home affordance frame request with nil window"];

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

- (void)_homeAffordanceSceneUpdateSource:(CGFloat)source frameDidChange:(CGFloat)change
{
  v28 = *MEMORY[0x1E69E9840];
  if (self)
  {
    _scene = [self _scene];
    if (_scene)
    {
      v13 = _scene;
      _hasInvalidated = [_scene _hasInvalidated];

      if ((_hasInvalidated & 1) == 0)
      {
        WeakRetained = objc_loadWeakRetained((self + 32));
        _FBSScene = [WeakRetained _FBSScene];
        _homeAffordanceClientSceneComponent = [_FBSScene _homeAffordanceClientSceneComponent];

        if (_homeAffordanceClientSceneComponent == a2)
        {
          v29.origin.x = source;
          v29.origin.y = change;
          v29.size.width = a5;
          v29.size.height = a6;
          if (!CGRectEqualToRect(v29, *(self + 72)))
          {
            CategoryCachedImpl = __UILogGetCategoryCachedImpl("HomeAffordanceObservation", &_homeAffordanceSceneUpdateSource_frameDidChange____s_category);
            if (*CategoryCachedImpl)
            {
              v20 = *(CategoryCachedImpl + 8);
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                v21 = v20;
                v30.origin.x = source;
                v30.origin.y = change;
                v30.size.width = a5;
                v30.size.height = a6;
                v22 = NSStringFromCGRect(v30);
                succinctDescription = [self succinctDescription];
                *buf = 138543618;
                v25 = v22;
                v26 = 2114;
                v27 = succinctDescription;
                _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_ERROR, "Received home affordance frame change for scene: %{public}@; notifier: %{public}@", buf, 0x16u);
              }
            }

            *(self + 72) = source;
            *(self + 80) = change;
            *(self + 88) = a5;
            *(self + 96) = a6;
            _UIHomeAffordanceNotifyObserversFrameDidChange(self, *(self + 40), 0, source, change, a5, a6);
          }
        }

        else
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:sel__homeAffordanceSceneUpdateSource_frameDidChange_ object:self file:@"_UIHomeAffordanceSceneNotifier.m" lineNumber:651 description:{@"Unexpected frame update from other FrontBoard-based scene component: %@; notifier component: %@", a2, _homeAffordanceClientSceneComponent}];
        }
      }
    }
  }
}

- (void)_homeAffordanceSceneUpdateSource:(uint64_t)source doubleTapGestureDidSucceed:
{
  v21 = *MEMORY[0x1E69E9840];
  if (self)
  {
    _scene = [self _scene];
    if (_scene)
    {
      v7 = _scene;
      _hasInvalidated = [_scene _hasInvalidated];

      if ((_hasInvalidated & 1) == 0)
      {
        WeakRetained = objc_loadWeakRetained(self + 4);
        _FBSScene = [WeakRetained _FBSScene];
        _homeAffordanceClientSceneComponent = [_FBSScene _homeAffordanceClientSceneComponent];

        if (_homeAffordanceClientSceneComponent == a2)
        {
          CategoryCachedImpl = __UILogGetCategoryCachedImpl("HomeAffordanceObservation", &_homeAffordanceSceneUpdateSource_doubleTapGestureDidSucceed____s_category);
          if (*CategoryCachedImpl)
          {
            v14 = *(CategoryCachedImpl + 8);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              v15 = v14;
              succinctDescription = [self succinctDescription];
              *buf = 67109378;
              sourceCopy = source;
              v19 = 2114;
              v20 = succinctDescription;
              _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "Received doubleTapGestureDidSucceed for scene: %d; notifier: %{public}@", buf, 0x12u);
            }
          }

          _UIHomeAffordanceNotifyObserversDoubleTapGestureDidSucceed(self, self[5], source, 0);
        }

        else
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:sel__homeAffordanceSceneUpdateSource_doubleTapGestureDidSucceed_ object:self file:@"_UIHomeAffordanceSceneNotifier.m" lineNumber:673 description:{@"Unexpected didSucceed update from other FrontBoard-based scene component: %@; notifier component: %@", a2, _homeAffordanceClientSceneComponent}];
        }
      }
    }
  }
}

- (void)_viewServiceWindow:(void *)window didAssociateWithLegacyViewServiceSession:
{
  v64 = *MEMORY[0x1E69E9840];
  if (self)
  {
    if (a2 && window)
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
          succinctDescription = [self succinctDescription];
          *buf = 138543874;
          v59 = v45;
          v60 = 2114;
          windowCopy = window;
          v62 = 2114;
          v63 = succinctDescription;
          _os_log_impl(&dword_188A29000, v42, OS_LOG_TYPE_ERROR, "Hosted window: %{public}@; did associate with legacy view service session: %{public}@; notifier: %{public}@", buf, 0x20u);
        }
      }

      v7 = self[7];
      if (!v7)
      {
        v8 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:512 valueOptions:512];
        v9 = self[7];
        self[7] = v8;

        v7 = self[7];
      }

      v50 = [v7 objectForKey:a2];
      v10 = [self[8] objectForKey:?];
      v11 = [self[8] objectForKey:window];
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
      [self[7] setObject:window forKey:a2];
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v28 = self[5];
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

                if (v35 == window)
                {
                  goto LABEL_17;
                }

                windowCopy2 = window;
                WeakRetained = *(v33 + 24);
                *(v33 + 24) = windowCopy2;
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
        v38 = self[5];
        v52[0] = MEMORY[0x1E69E9820];
        v52[1] = 3221225472;
        v52[2] = __94___UIHomeAffordanceSceneNotifier__viewServiceWindow_didAssociateWithLegacyViewServiceSession___block_invoke;
        v52[3] = &unk_1E70F6780;
        v52[4] = a2;
        v52[5] = window;
        _UIHomeAffordanceNotifyObserversFrameDidChange(self, v38, v52, v21, v23, v25, v27);
      }
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__viewServiceWindow_didAssociateWithLegacyViewServiceSession_ object:self file:@"_UIHomeAffordanceSceneNotifier.m" lineNumber:721 description:{@"Invalid view service window transition: window: %@; newLegacyViewServiceSession: %@; notifier: %@", a2, window, self}];
    }
  }
}

- (void)_viewServiceWindow:(void *)window didDisassociateFromLegacyViewServiceSession:
{
  v46 = *MEMORY[0x1E69E9840];
  if (self)
  {
    if (a2 && window)
    {
      v6 = [self[7] objectForKey:a2];
      windowCopy = window;
      v8 = windowCopy;
      if (v6 == windowCopy)
      {
      }

      else
      {
        if (!v6)
        {

LABEL_23:
          return;
        }

        v9 = [v6 isEqual:windowCopy];

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
          succinctDescription = [self succinctDescription];
          *buf = 138543874;
          v41 = v30;
          v42 = 2114;
          v43 = v8;
          v44 = 2114;
          v45 = succinctDescription;
          _os_log_impl(&dword_188A29000, v27, OS_LOG_TYPE_ERROR, "Hosted window: %{public}@; did disassociate from legacy view service session: %{public}@; notifier: %{public}@", buf, 0x20u);
        }
      }

      [self[7] removeObjectForKey:a2];
      v11 = [self[8] objectForKey:v8];
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
        _UIHomeAffordanceNotifyObserversFrameDidChange(self, self[5], v17, v12, v13, v14, v15);
      }

      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v18 = self[5];
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

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel__viewServiceWindow_didDisassociateFromLegacyViewServiceSession_ object:self file:@"_UIHomeAffordanceSceneNotifier.m" lineNumber:762 description:{@"Invalid view service window transition: window: %@; oldLegacyViewServiceSession: %@; notifier: %@", a2, window, self}];
  }
}

- (void)_legacyViewServiceSessionWasCreated:(id)created
{
  v36 = *MEMORY[0x1E69E9840];
  object = [created object];
  v5 = objc_opt_class();
  v6 = object;
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

  _windowHostingScene = [WeakRetained _windowHostingScene];

  if (v8)
  {
    if (_windowHostingScene)
    {
      windowHostingScene = [(_UIHomeAffordanceSceneNotifier *)self windowHostingScene];

      if (_windowHostingScene == windowHostingScene)
      {
        CategoryCachedImpl = __UILogGetCategoryCachedImpl("HomeAffordanceObservation", &_legacyViewServiceSessionWasCreated____s_category);
        if (*CategoryCachedImpl)
        {
          v24 = *(CategoryCachedImpl + 8);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            v25 = v24;
            succinctDescription = [(_UIHomeAffordanceSceneNotifier *)self succinctDescription];
            *buf = 138543618;
            v33 = v8;
            v34 = 2114;
            v35 = succinctDescription;
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

- (void)_legacyViewServiceSessionDidInvalidate:(id)invalidate
{
  v34 = *MEMORY[0x1E69E9840];
  object = [invalidate object];
  v5 = objc_opt_class();
  v6 = object;
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
          succinctDescription = [(_UIHomeAffordanceSceneNotifier *)self succinctDescription];
          *buf = 138543618;
          v31 = v8;
          v32 = 2114;
          v33 = succinctDescription;
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

- (void)_legacyViewServiceSessionDidAssociateWithWindow:(id)window
{
  object = [window object];
  v6 = objc_opt_class();
  v7 = object;
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
      userInfo = [window userInfo];
      v13 = [userInfo objectForKey:@"_UIViewServiceSessionAssociatedNonPrimaryWindowKey"];
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

- (void)_legacyViewServiceSessionDidDisassociateFromWindow:(id)window
{
  object = [window object];
  v6 = objc_opt_class();
  v7 = object;
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
      userInfo = [window userInfo];
      v13 = [userInfo objectForKey:@"_UIViewServiceSessionAssociatedNonPrimaryWindowKey"];
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

- (void)_homeAffordanceLegacyViewServiceUpdateSource:(CGFloat)source frameDidChange:(CGFloat)change
{
  v40 = *MEMORY[0x1E69E9840];
  if (self)
  {
    if (!*(self + 64))
    {
      v12 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:512 valueOptions:512];
      v13 = *(self + 64);
      *(self + 64) = v12;
    }

    _sessionIdentifier = [a2 _sessionIdentifier];
    v15 = [*(self + 64) objectForKey:_sessionIdentifier];
    v16 = v15;
    if (v15)
    {
      [v15 CGRectValue];
      v43.origin.x = v17;
      v43.origin.y = v18;
      v43.size.width = v19;
      v43.size.height = v20;
      v41.origin.x = source;
      v41.origin.y = change;
      v41.size.width = a5;
      v41.size.height = a6;
      v21 = CGRectEqualToRect(v41, v43);
      v22 = *(self + 64);
      v23 = [MEMORY[0x1E696B098] valueWithCGRect:{source, change, a5, a6}];
      [v22 setObject:v23 forKey:_sessionIdentifier];

      if (v21)
      {
LABEL_10:

        return;
      }
    }

    else
    {
      v24 = *(self + 64);
      v25 = [MEMORY[0x1E696B098] valueWithCGRect:{source, change, a5, a6}];
      [v24 setObject:v25 forKey:_sessionIdentifier];
    }

    CategoryCachedImpl = __UILogGetCategoryCachedImpl("HomeAffordanceObservation", &_homeAffordanceLegacyViewServiceUpdateSource_frameDidChange____s_category);
    if (*CategoryCachedImpl)
    {
      v28 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = v28;
        v42.origin.x = source;
        v42.origin.y = change;
        v42.size.width = a5;
        v42.size.height = a6;
        v30 = NSStringFromCGRect(v42);
        succinctDescription = [self succinctDescription];
        *buf = 138543874;
        v35 = _sessionIdentifier;
        v36 = 2112;
        v37 = v30;
        v38 = 2114;
        v39 = succinctDescription;
        _os_log_impl(&dword_188A29000, v29, OS_LOG_TYPE_ERROR, "Received home affordance frame change for legacy view service session: %{public}@; frame: %@; notifier: %{public}@", buf, 0x20u);
      }
    }

    v27 = *(self + 40);
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __94___UIHomeAffordanceSceneNotifier__homeAffordanceLegacyViewServiceUpdateSource_frameDidChange___block_invoke;
    v32[3] = &unk_1E70F67A8;
    v33 = _sessionIdentifier;
    _UIHomeAffordanceNotifyObserversFrameDidChange(self, v27, v32, source, change, a5, a6);

    goto LABEL_10;
  }
}

- (void)_homeAffordanceLegacyViewServiceUpdateSource:(uint64_t)source doubleTapGestureDidSucceed:
{
  if (self)
  {
    _sessionIdentifier = [a2 _sessionIdentifier];
    v6 = self[5];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __106___UIHomeAffordanceSceneNotifier__homeAffordanceLegacyViewServiceUpdateSource_doubleTapGestureDidSucceed___block_invoke;
    v8[3] = &unk_1E70F67A8;
    v9 = _sessionIdentifier;
    v7 = _sessionIdentifier;
    _UIHomeAffordanceNotifyObserversDoubleTapGestureDidSucceed(self, v6, source, v8);
  }
}

- (void)appendDescriptionToStream:(id)stream
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60___UIHomeAffordanceSceneNotifier_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_1E70F35B8;
  v6[4] = stream;
  v6[5] = self;
  [stream appendProem:self block:v6];
  if ([stream hasDebugStyle])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __60___UIHomeAffordanceSceneNotifier_appendDescriptionToStream___block_invoke_2;
    v5[3] = &unk_1E70F35B8;
    v5[4] = stream;
    v5[5] = self;
    [stream appendBodySectionWithName:0 block:v5];
  }
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E698E688];
  debugStyle = [MEMORY[0x1E698E690] debugStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:debugStyle];

  return v5;
}

@end