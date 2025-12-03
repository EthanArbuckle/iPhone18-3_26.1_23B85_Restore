@interface _UIHomeAffordanceObserverProxyInteraction
- (NSString)debugDescription;
- (UIView)view;
- (_UIHomeAffordanceObserverProxyInteraction)init;
- (id)succinctDescription;
- (uint64_t)_configureCoalescedFrameEvaluationDisplayLinkForScreen:(id *)screen;
- (uint64_t)_disableCoalescedFrameEvaluation;
- (void)_coalescedFrameEvaluationDisplayLinkTicked:(id)ticked;
- (void)_didMoveFromWindow:(id)window toWindow:(id)toWindow;
- (void)_geometryChanged:(id *)changed forAncestor:(id)ancestor;
- (void)_notifier:(id)_notifier homeAffordanceDoubleTapGestureDidSucceed:(BOOL)succeed;
- (void)_notifier:(id)_notifier homeAffordanceFrameDidChange:(CGRect)change;
- (void)_updateHomeAffordanceObservationIfNeededForWindow:(id)window withTargetNotifier:;
- (void)_windowDidMoveToScene:(id)scene;
- (void)_windowHostingSceneDidMoveToScreen:(id)screen;
- (void)_windowWillMoveToNilScene:(id)scene;
- (void)appendDescriptionToStream:(id)stream;
- (void)dealloc;
- (void)didMoveToView:(id)view;
- (void)initWithIntersectedFrameHandler:(void *)handler doubleTapGestureHandler:;
- (void)willMoveToView:(id)view;
@end

@implementation _UIHomeAffordanceObserverProxyInteraction

- (uint64_t)_disableCoalescedFrameEvaluation
{
  v8 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    if (*(result + 24))
    {
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("HomeAffordanceObservation", &_disableCoalescedFrameEvaluation___s_category);
      if (*CategoryCachedImpl)
      {
        v3 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          v4 = v3;
          succinctDescription = [v1 succinctDescription];
          v6 = 138543362;
          v7 = succinctDescription;
          _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "Disabling coalesced frame evaluation: %{public}@", &v6, 0xCu);
        }
      }
    }

    *(v1 + 24) &= ~1u;
    return [*(v1 + 64) setPaused:1];
  }

  return result;
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (_UIHomeAffordanceObserverProxyInteraction)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIHomeAffordanceObserverProxyInteraction.m" lineNumber:83 description:{@"%s: init is not allowed on %@", "-[_UIHomeAffordanceObserverProxyInteraction init]", objc_opt_class()}];

  return 0;
}

- (void)initWithIntersectedFrameHandler:(void *)handler doubleTapGestureHandler:
{
  selfCopy = self;
  if (!self)
  {
    return selfCopy;
  }

  if (a2)
  {
    if (handler)
    {
      goto LABEL_4;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel_initWithIntersectedFrameHandler_doubleTapGestureHandler_ object:selfCopy file:@"_UIHomeAffordanceObserverProxyInteraction.m" lineNumber:90 description:{@"Invalid initialization of %@: proxyIntersectedFrameHandler is required", objc_opt_class()}];

    if (handler)
    {
      goto LABEL_4;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:sel_initWithIntersectedFrameHandler_doubleTapGestureHandler_ object:selfCopy file:@"_UIHomeAffordanceObserverProxyInteraction.m" lineNumber:91 description:{@"Invalid initialization of %@: proxyDoubleTapGestureHandler is required", objc_opt_class()}];

LABEL_4:
  v13.receiver = selfCopy;
  v13.super_class = _UIHomeAffordanceObserverProxyInteraction;
  selfCopy = objc_msgSendSuper2(&v13, sel_init);
  if (selfCopy)
  {
    v6 = [a2 copy];
    v7 = selfCopy[1];
    selfCopy[1] = v6;

    v8 = [handler copy];
    v9 = selfCopy[2];
    selfCopy[2] = v8;
  }

  return selfCopy;
}

- (void)dealloc
{
  v6[3] = *MEMORY[0x1E69E9840];
  [(_UIInvalidatable *)self->_homeAffordanceRegistrationToken _invalidate];
  [(CADisplayLink *)self->_coalescedFrameEvaluationDisplayLink invalidate];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v6[0] = @"_UIWindowHostingSceneDidMoveToScreenNotification";
  v6[1] = @"_UIWindowDidMoveToSceneNotification";
  v6[2] = @"_UIWindowWillMoveToNilSceneNotification";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:3];
  [(NSNotificationCenter *)defaultCenter _uiRemoveObserver:v4 names:?];

  v5.receiver = self;
  v5.super_class = _UIHomeAffordanceObserverProxyInteraction;
  [(_UIHomeAffordanceObserverProxyInteraction *)&v5 dealloc];
}

- (void)_notifier:(id)_notifier homeAffordanceFrameDidChange:(CGRect)change
{
  v27 = *MEMORY[0x1E69E9840];
  if (self->_homeAffordanceRegistrationToken)
  {
    height = change.size.height;
    width = change.size.width;
    y = change.origin.y;
    x = change.origin.x;
    [(_UIHomeAffordanceObserverProxyInteraction *)self _disableCoalescedFrameEvaluation];
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    if (!CGRectEqualToRect(v28, *MEMORY[0x1E695F058]))
    {
      WeakRetained = objc_loadWeakRetained(&self->_view);
      x = _UIHomeAffordanceSceneReferenceFrameIntersectionWithView(WeakRetained, x, y, width, height);
      y = v10;
      width = v11;
      height = v12;
    }

    v29.origin.x = x;
    v29.origin.y = y;
    v29.size.width = width;
    v29.size.height = height;
    if (!CGRectEqualToRect(v29, self->_lastNotifiedHomeAffordanceFrameIntersection))
    {
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("HomeAffordanceObservation", &_notifier_homeAffordanceFrameDidChange____s_category_1);
      if (*CategoryCachedImpl)
      {
        v15 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = v15;
          v30.origin.x = x;
          v30.origin.y = y;
          v30.size.width = width;
          v30.size.height = height;
          v17 = NSStringFromCGRect(v30);
          succinctDescription = [(_UIHomeAffordanceObserverProxyInteraction *)self succinctDescription];
          v19 = objc_loadWeakRetained(&self->_homeAffordanceNotifier);
          succinctDescription2 = [v19 succinctDescription];
          v21 = 138543874;
          v22 = v17;
          v23 = 2114;
          v24 = succinctDescription;
          v25 = 2114;
          v26 = succinctDescription2;
          _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "Sending intersected home affordance frame to proxy handler: %{public}@; self: %{public}@; notifier: %{public}@", &v21, 0x20u);
        }
      }

      proxyIntersectedFrameHandler = self->_proxyIntersectedFrameHandler;
      if (proxyIntersectedFrameHandler)
      {
        proxyIntersectedFrameHandler[2](x, y, width, height);
        self->_lastNotifiedHomeAffordanceFrameIntersection.origin.x = x;
        self->_lastNotifiedHomeAffordanceFrameIntersection.origin.y = y;
        self->_lastNotifiedHomeAffordanceFrameIntersection.size.width = width;
        self->_lastNotifiedHomeAffordanceFrameIntersection.size.height = height;
      }
    }
  }
}

- (void)_notifier:(id)_notifier homeAffordanceDoubleTapGestureDidSucceed:(BOOL)succeed
{
  v18 = *MEMORY[0x1E69E9840];
  if (self->_homeAffordanceRegistrationToken)
  {
    succeedCopy = succeed;
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("HomeAffordanceObservation", &_notifier_homeAffordanceDoubleTapGestureDidSucceed____s_category_1);
    if (*CategoryCachedImpl)
    {
      v9 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = v9;
        succinctDescription = [(_UIHomeAffordanceObserverProxyInteraction *)self succinctDescription];
        succinctDescription2 = [_notifier succinctDescription];
        v13[0] = 67109634;
        v13[1] = succeedCopy;
        v14 = 2114;
        v15 = succinctDescription;
        v16 = 2114;
        v17 = succinctDescription2;
        _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "Sending doubleTapGestureDidSucceed to proxy handler: %d; self: %{public}@; notifier: %{public}@", v13, 0x1Cu);
      }
    }

    proxyDoubleTapGestureHandler = self->_proxyDoubleTapGestureHandler;
    if (proxyDoubleTapGestureHandler)
    {
      proxyDoubleTapGestureHandler[2](proxyDoubleTapGestureHandler, succeedCopy);
    }
  }
}

- (void)_coalescedFrameEvaluationDisplayLinkTicked:(id)ticked
{
  v23 = *MEMORY[0x1E69E9840];
  interactionFlags = self->_interactionFlags;
  [(_UIHomeAffordanceObserverProxyInteraction *)self _disableCoalescedFrameEvaluation];
  if ((interactionFlags & 1) != 0 && self->_homeAffordanceRegistrationToken)
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("HomeAffordanceObservation", &_coalescedFrameEvaluationDisplayLinkTicked____s_category);
    if (*CategoryCachedImpl)
    {
      v18 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = v18;
        succinctDescription = [(_UIHomeAffordanceObserverProxyInteraction *)self succinctDescription];
        v21 = 138543362;
        v22 = succinctDescription;
        _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_ERROR, "Performing coalesced frame evaluation: %{public}@", &v21, 0xCu);
      }
    }

    if (self->_homeAffordanceRegistrationToken)
    {
      WeakRetained = objc_loadWeakRetained(&self->_homeAffordanceNotifier);
      v7 = objc_loadWeakRetained(&self->_view);
      _window = [v7 _window];
      [WeakRetained homeAffordanceSceneReferenceFrameForWindow:_window];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;

      v17 = objc_loadWeakRetained(&self->_homeAffordanceNotifier);
      [(_UIHomeAffordanceObserverProxyInteraction *)self _notifier:v17 homeAffordanceFrameDidChange:v10, v12, v14, v16];
    }
  }
}

- (uint64_t)_configureCoalescedFrameEvaluationDisplayLinkForScreen:(id *)screen
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = screen[8];
  if (!v3)
  {
    v5 = [[_UIWeakDisplayLinkTarget alloc] initWithTarget:screen action:sel__coalescedFrameEvaluationDisplayLinkTicked_];
    v6 = [a2 displayLinkWithTarget:v5 selector:{+[_UIWeakDisplayLinkTarget displayLinkAction](_UIWeakDisplayLinkTarget, "displayLinkAction")}];
    v7 = screen[8];
    screen[8] = v6;

    v8 = screen[8];
    mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
    [v8 addToRunLoop:mainRunLoop forMode:*MEMORY[0x1E695DA28]];

    v3 = screen[8];
  }

  result = [v3 isPaused];
  if (result)
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("HomeAffordanceObservation", &_configureCoalescedFrameEvaluationDisplayLinkForScreen____s_category);
    if (*CategoryCachedImpl)
    {
      v12 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = v12;
        succinctDescription = [screen succinctDescription];
        v15 = 138543362;
        v16 = succinctDescription;
        _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "Scheduling coalesced frame evaluation: %{public}@", &v15, 0xCu);
      }
    }

    return [screen[8] setPaused:0];
  }

  return result;
}

- (void)_updateHomeAffordanceObservationIfNeededForWindow:(id)window withTargetNotifier:
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 40));
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v39 = WeakRetained;
    v8 = a2;
    if (v39 == v8)
    {
      v9 = 1;
    }

    else
    {
      v9 = 0;
      if (v8 && v39)
      {
        v9 = [v39 isEqual:v8];
      }
    }

    v10 = objc_loadWeakRetained((self + 48));
    if (window)
    {
      v11 = v10 == 0;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    v13 = objc_loadWeakRetained((self + 48));
    v14 = v13;
    v15 = 0;
    if (window && v13)
    {
      v16 = objc_loadWeakRetained((self + 48));
      v15 = v16 != window;
    }

    v17 = objc_loadWeakRetained((self + 48));
    if (window)
    {
      v18 = 1;
    }

    else
    {
      v18 = v17 == 0;
    }

    v19 = v18;

    v20 = v12 | v15;
    if (((v12 | v15) & 1) != 0 || !v19)
    {
      [(_UIHomeAffordanceObserverProxyInteraction *)self _disableCoalescedFrameEvaluation];
      v21 = *(self + 64);
      *(self + 64) = 0;

      if (v15)
      {
        v22 = objc_loadWeakRetained((self + 48));
        windowHostingScene = [v22 windowHostingScene];
        [defaultCenter removeObserver:self name:@"_UIWindowHostingSceneDidMoveToScreenNotification" object:windowHostingScene];

        [*(self + 56) _invalidate];
      }

      if (v20)
      {
        objc_storeWeak((self + 48), window);
        v24 = [window registerHomeAffordanceObserver:self inWindow:v8];
        v25 = *(self + 56);
        *(self + 56) = v24;

        [window homeAffordanceSceneReferenceFrameForWindow:v8];
        v27 = v26;
        v29 = v28;
        v31 = v30;
        v33 = v32;
        windowHostingScene2 = [window windowHostingScene];
        [defaultCenter addObserver:self selector:sel__windowHostingSceneDidMoveToScreen_ name:@"_UIWindowHostingSceneDidMoveToScreenNotification" object:windowHostingScene2];
      }

      else
      {
        v27 = *MEMORY[0x1E695F058];
        v29 = *(MEMORY[0x1E695F058] + 8);
        v31 = *(MEMORY[0x1E695F058] + 16);
        v33 = *(MEMORY[0x1E695F058] + 24);
      }

      v35 = objc_loadWeakRetained((self + 48));
      [self _notifier:v35 homeAffordanceFrameDidChange:{v27, v29, v31, v33}];

      if ((v19 & 1) == 0)
      {
        v36 = objc_loadWeakRetained((self + 48));
        windowHostingScene3 = [v36 windowHostingScene];
        [defaultCenter removeObserver:self name:@"_UIWindowHostingSceneDidMoveToScreenNotification" object:windowHostingScene3];

        [*(self + 56) _invalidate];
        v38 = *(self + 56);
        *(self + 56) = 0;

        objc_storeWeak((self + 48), 0);
      }
    }

    if ((v9 & 1) == 0)
    {
      if (v39)
      {
        [defaultCenter removeObserver:self name:@"_UIWindowDidMoveToSceneNotification" object:v39];
        [defaultCenter removeObserver:self name:@"_UIWindowWillMoveToNilSceneNotification" object:v39];
      }

      if (v8)
      {
        [defaultCenter addObserver:self selector:sel__windowDidMoveToScene_ name:@"_UIWindowDidMoveToSceneNotification" object:v8];
        [defaultCenter addObserver:self selector:sel__windowWillMoveToNilScene_ name:@"_UIWindowWillMoveToNilSceneNotification" object:v8];
      }
    }

    objc_storeWeak((self + 40), v8);
  }
}

- (void)willMoveToView:(id)view
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    [(UIView *)WeakRetained _removeGeometryChangeObserver:?];
  }

  objc_storeWeak(&self->_view, 0);
}

- (void)didMoveToView:(id)view
{
  v5 = objc_storeWeak(&self->_view, view);

  if (self && view)
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    [(UIView *)WeakRetained _addGeometryChangeObserver:?];
  }

  v7 = objc_loadWeakRetained(&self->_view);
  _window = [v7 _window];

  _windowHostingScene = [_window _windowHostingScene];
  _homeAffordanceSceneNotifier = [_windowHostingScene _homeAffordanceSceneNotifier];

  [(_UIHomeAffordanceObserverProxyInteraction *)self _updateHomeAffordanceObservationIfNeededForWindow:_window withTargetNotifier:_homeAffordanceSceneNotifier];
}

- (void)_didMoveFromWindow:(id)window toWindow:(id)toWindow
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  _window = [WeakRetained _window];

  _windowHostingScene = [_window _windowHostingScene];
  _homeAffordanceSceneNotifier = [_windowHostingScene _homeAffordanceSceneNotifier];

  [(_UIHomeAffordanceObserverProxyInteraction *)self _updateHomeAffordanceObservationIfNeededForWindow:_window withTargetNotifier:_homeAffordanceSceneNotifier];
}

- (void)_windowDidMoveToScene:(id)scene
{
  object = [scene object];
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

  v15 = v7;

  v8 = v15;
  if (v15)
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    _window = [WeakRetained _window];

    v8 = v15;
    if (_window == v15)
    {
      v11 = objc_loadWeakRetained(&self->_view);
      _window2 = [v11 _window];

      _windowHostingScene = [_window2 _windowHostingScene];
      _homeAffordanceSceneNotifier = [_windowHostingScene _homeAffordanceSceneNotifier];

      [(_UIHomeAffordanceObserverProxyInteraction *)self _updateHomeAffordanceObservationIfNeededForWindow:_window2 withTargetNotifier:_homeAffordanceSceneNotifier];
      v8 = v15;
    }
  }
}

- (void)_windowWillMoveToNilScene:(id)scene
{
  object = [scene object];
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

  v13 = v7;

  v8 = v13;
  if (v13)
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    _window = [WeakRetained _window];

    v8 = v13;
    if (_window == v13)
    {
      if ((v13[11] & 0x800) != 0)
      {
        v11 = 0;
      }

      else
      {
        v11 = v13;
      }

      v12 = v11;

      [(_UIHomeAffordanceObserverProxyInteraction *)self _updateHomeAffordanceObservationIfNeededForWindow:v12 withTargetNotifier:0];
      v8 = v12;
    }
  }
}

- (void)_windowHostingSceneDidMoveToScreen:(id)screen
{
  v30 = *MEMORY[0x1E69E9840];
  object = [screen object];
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

  v25 = v7;

  WeakRetained = objc_loadWeakRetained(&self->_homeAffordanceNotifier);
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v10 = objc_loadWeakRetained(&self->_homeAffordanceNotifier);
    windowHostingScene = [v10 windowHostingScene];

    if (windowHostingScene == v25)
    {
      v12 = objc_loadWeakRetained(&self->_homeAffordanceNotifier);
      windowHostingScene2 = [v12 windowHostingScene];
      _screen = [windowHostingScene2 _screen];
      if (self)
      {
        CategoryCachedImpl = __UILogGetCategoryCachedImpl("HomeAffordanceObservation", &_handleScreenChangeForCoalescedFrameEvaluationDisplayLink____s_category);
        if (*CategoryCachedImpl)
        {
          v18 = *(CategoryCachedImpl + 8);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            succinctDescription = [(_UIHomeAffordanceObserverProxyInteraction *)self succinctDescription];
            if (_screen)
            {
              v20 = MEMORY[0x1E696AEC0];
              v21 = _screen;
              v22 = objc_opt_class();
              v23 = NSStringFromClass(v22);
              v24 = [v20 stringWithFormat:@"<%@: %p>", v23, v21];
            }

            else
            {
              v24 = @"(nil)";
            }

            *buf = 138543618;
            v27 = succinctDescription;
            v28 = 2114;
            v29 = v24;
            _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_ERROR, "Handling screen change for coalesced frame evaluation: %{public}@; screen: %{public}@", buf, 0x16u);
          }
        }

        interactionFlags = self->_interactionFlags;
        [(CADisplayLink *)self->_coalescedFrameEvaluationDisplayLink invalidate];
        coalescedFrameEvaluationDisplayLink = self->_coalescedFrameEvaluationDisplayLink;
        self->_coalescedFrameEvaluationDisplayLink = 0;

        if (interactionFlags)
        {
          [(_UIHomeAffordanceObserverProxyInteraction *)&self->super.isa _configureCoalescedFrameEvaluationDisplayLinkForScreen:_screen];
        }
      }
    }
  }
}

- (void)_geometryChanged:(id *)changed forAncestor:(id)ancestor
{
  if (self->_homeAffordanceRegistrationToken)
  {
    if ((changed->var0 & 0x1036) != 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_homeAffordanceNotifier);
      windowHostingScene = [WeakRetained windowHostingScene];
      _screen = [windowHostingScene _screen];
      [(_UIHomeAffordanceObserverProxyInteraction *)&self->super.isa _configureCoalescedFrameEvaluationDisplayLinkForScreen:_screen];

      *&self->_interactionFlags |= 1u;
    }
  }
}

- (void)appendDescriptionToStream:(id)stream
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71___UIHomeAffordanceObserverProxyInteraction_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_1E70F35B8;
  v6[4] = stream;
  v6[5] = self;
  [stream appendProem:self block:v6];
  if ([stream hasDebugStyle])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __71___UIHomeAffordanceObserverProxyInteraction_appendDescriptionToStream___block_invoke_2;
    v5[3] = &unk_1E70F35B8;
    v5[4] = stream;
    v5[5] = self;
    [stream appendBodySectionWithName:0 block:v5];
  }
}

- (id)succinctDescription
{
  v3 = MEMORY[0x1E698E688];
  succinctStyle = [MEMORY[0x1E698E690] succinctStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:succinctStyle];

  return v5;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E698E688];
  debugStyle = [MEMORY[0x1E698E690] debugStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:debugStyle];

  return v5;
}

@end