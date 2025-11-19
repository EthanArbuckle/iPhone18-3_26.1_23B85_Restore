@interface _UIHomeAffordanceObserverProxyInteraction
- (NSString)debugDescription;
- (UIView)view;
- (_UIHomeAffordanceObserverProxyInteraction)init;
- (id)succinctDescription;
- (uint64_t)_configureCoalescedFrameEvaluationDisplayLinkForScreen:(id *)a1;
- (uint64_t)_disableCoalescedFrameEvaluation;
- (void)_coalescedFrameEvaluationDisplayLinkTicked:(id)a3;
- (void)_didMoveFromWindow:(id)a3 toWindow:(id)a4;
- (void)_geometryChanged:(id *)a3 forAncestor:(id)a4;
- (void)_notifier:(id)a3 homeAffordanceDoubleTapGestureDidSucceed:(BOOL)a4;
- (void)_notifier:(id)a3 homeAffordanceFrameDidChange:(CGRect)a4;
- (void)_updateHomeAffordanceObservationIfNeededForWindow:(id)a3 withTargetNotifier:;
- (void)_windowDidMoveToScene:(id)a3;
- (void)_windowHostingSceneDidMoveToScreen:(id)a3;
- (void)_windowWillMoveToNilScene:(id)a3;
- (void)appendDescriptionToStream:(id)a3;
- (void)dealloc;
- (void)didMoveToView:(id)a3;
- (void)initWithIntersectedFrameHandler:(void *)a3 doubleTapGestureHandler:;
- (void)willMoveToView:(id)a3;
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
          v5 = [v1 succinctDescription];
          v6 = 138543362;
          v7 = v5;
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
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"_UIHomeAffordanceObserverProxyInteraction.m" lineNumber:83 description:{@"%s: init is not allowed on %@", "-[_UIHomeAffordanceObserverProxyInteraction init]", objc_opt_class()}];

  return 0;
}

- (void)initWithIntersectedFrameHandler:(void *)a3 doubleTapGestureHandler:
{
  v3 = a1;
  if (!a1)
  {
    return v3;
  }

  if (a2)
  {
    if (a3)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:sel_initWithIntersectedFrameHandler_doubleTapGestureHandler_ object:v3 file:@"_UIHomeAffordanceObserverProxyInteraction.m" lineNumber:90 description:{@"Invalid initialization of %@: proxyIntersectedFrameHandler is required", objc_opt_class()}];

    if (a3)
    {
      goto LABEL_4;
    }
  }

  v12 = [MEMORY[0x1E696AAA8] currentHandler];
  [v12 handleFailureInMethod:sel_initWithIntersectedFrameHandler_doubleTapGestureHandler_ object:v3 file:@"_UIHomeAffordanceObserverProxyInteraction.m" lineNumber:91 description:{@"Invalid initialization of %@: proxyDoubleTapGestureHandler is required", objc_opt_class()}];

LABEL_4:
  v13.receiver = v3;
  v13.super_class = _UIHomeAffordanceObserverProxyInteraction;
  v3 = objc_msgSendSuper2(&v13, sel_init);
  if (v3)
  {
    v6 = [a2 copy];
    v7 = v3[1];
    v3[1] = v6;

    v8 = [a3 copy];
    v9 = v3[2];
    v3[2] = v8;
  }

  return v3;
}

- (void)dealloc
{
  v6[3] = *MEMORY[0x1E69E9840];
  [(_UIInvalidatable *)self->_homeAffordanceRegistrationToken _invalidate];
  [(CADisplayLink *)self->_coalescedFrameEvaluationDisplayLink invalidate];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v6[0] = @"_UIWindowHostingSceneDidMoveToScreenNotification";
  v6[1] = @"_UIWindowDidMoveToSceneNotification";
  v6[2] = @"_UIWindowWillMoveToNilSceneNotification";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:3];
  [(NSNotificationCenter *)v3 _uiRemoveObserver:v4 names:?];

  v5.receiver = self;
  v5.super_class = _UIHomeAffordanceObserverProxyInteraction;
  [(_UIHomeAffordanceObserverProxyInteraction *)&v5 dealloc];
}

- (void)_notifier:(id)a3 homeAffordanceFrameDidChange:(CGRect)a4
{
  v27 = *MEMORY[0x1E69E9840];
  if (self->_homeAffordanceRegistrationToken)
  {
    height = a4.size.height;
    width = a4.size.width;
    y = a4.origin.y;
    x = a4.origin.x;
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
          v18 = [(_UIHomeAffordanceObserverProxyInteraction *)self succinctDescription];
          v19 = objc_loadWeakRetained(&self->_homeAffordanceNotifier);
          v20 = [v19 succinctDescription];
          v21 = 138543874;
          v22 = v17;
          v23 = 2114;
          v24 = v18;
          v25 = 2114;
          v26 = v20;
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

- (void)_notifier:(id)a3 homeAffordanceDoubleTapGestureDidSucceed:(BOOL)a4
{
  v18 = *MEMORY[0x1E69E9840];
  if (self->_homeAffordanceRegistrationToken)
  {
    v4 = a4;
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("HomeAffordanceObservation", &_notifier_homeAffordanceDoubleTapGestureDidSucceed____s_category_1);
    if (*CategoryCachedImpl)
    {
      v9 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = v9;
        v11 = [(_UIHomeAffordanceObserverProxyInteraction *)self succinctDescription];
        v12 = [a3 succinctDescription];
        v13[0] = 67109634;
        v13[1] = v4;
        v14 = 2114;
        v15 = v11;
        v16 = 2114;
        v17 = v12;
        _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "Sending doubleTapGestureDidSucceed to proxy handler: %d; self: %{public}@; notifier: %{public}@", v13, 0x1Cu);
      }
    }

    proxyDoubleTapGestureHandler = self->_proxyDoubleTapGestureHandler;
    if (proxyDoubleTapGestureHandler)
    {
      proxyDoubleTapGestureHandler[2](proxyDoubleTapGestureHandler, v4);
    }
  }
}

- (void)_coalescedFrameEvaluationDisplayLinkTicked:(id)a3
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
        v20 = [(_UIHomeAffordanceObserverProxyInteraction *)self succinctDescription];
        v21 = 138543362;
        v22 = v20;
        _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_ERROR, "Performing coalesced frame evaluation: %{public}@", &v21, 0xCu);
      }
    }

    if (self->_homeAffordanceRegistrationToken)
    {
      WeakRetained = objc_loadWeakRetained(&self->_homeAffordanceNotifier);
      v7 = objc_loadWeakRetained(&self->_view);
      v8 = [v7 _window];
      [WeakRetained homeAffordanceSceneReferenceFrameForWindow:v8];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;

      v17 = objc_loadWeakRetained(&self->_homeAffordanceNotifier);
      [(_UIHomeAffordanceObserverProxyInteraction *)self _notifier:v17 homeAffordanceFrameDidChange:v10, v12, v14, v16];
    }
  }
}

- (uint64_t)_configureCoalescedFrameEvaluationDisplayLinkForScreen:(id *)a1
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1[8];
  if (!v3)
  {
    v5 = [[_UIWeakDisplayLinkTarget alloc] initWithTarget:a1 action:sel__coalescedFrameEvaluationDisplayLinkTicked_];
    v6 = [a2 displayLinkWithTarget:v5 selector:{+[_UIWeakDisplayLinkTarget displayLinkAction](_UIWeakDisplayLinkTarget, "displayLinkAction")}];
    v7 = a1[8];
    a1[8] = v6;

    v8 = a1[8];
    v9 = [MEMORY[0x1E695DFD0] mainRunLoop];
    [v8 addToRunLoop:v9 forMode:*MEMORY[0x1E695DA28]];

    v3 = a1[8];
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
        v14 = [a1 succinctDescription];
        v15 = 138543362;
        v16 = v14;
        _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "Scheduling coalesced frame evaluation: %{public}@", &v15, 0xCu);
      }
    }

    return [a1[8] setPaused:0];
  }

  return result;
}

- (void)_updateHomeAffordanceObservationIfNeededForWindow:(id)a3 withTargetNotifier:
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
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

    v10 = objc_loadWeakRetained((a1 + 48));
    if (a3)
    {
      v11 = v10 == 0;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    v13 = objc_loadWeakRetained((a1 + 48));
    v14 = v13;
    v15 = 0;
    if (a3 && v13)
    {
      v16 = objc_loadWeakRetained((a1 + 48));
      v15 = v16 != a3;
    }

    v17 = objc_loadWeakRetained((a1 + 48));
    if (a3)
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
      [(_UIHomeAffordanceObserverProxyInteraction *)a1 _disableCoalescedFrameEvaluation];
      v21 = *(a1 + 64);
      *(a1 + 64) = 0;

      if (v15)
      {
        v22 = objc_loadWeakRetained((a1 + 48));
        v23 = [v22 windowHostingScene];
        [v7 removeObserver:a1 name:@"_UIWindowHostingSceneDidMoveToScreenNotification" object:v23];

        [*(a1 + 56) _invalidate];
      }

      if (v20)
      {
        objc_storeWeak((a1 + 48), a3);
        v24 = [a3 registerHomeAffordanceObserver:a1 inWindow:v8];
        v25 = *(a1 + 56);
        *(a1 + 56) = v24;

        [a3 homeAffordanceSceneReferenceFrameForWindow:v8];
        v27 = v26;
        v29 = v28;
        v31 = v30;
        v33 = v32;
        v34 = [a3 windowHostingScene];
        [v7 addObserver:a1 selector:sel__windowHostingSceneDidMoveToScreen_ name:@"_UIWindowHostingSceneDidMoveToScreenNotification" object:v34];
      }

      else
      {
        v27 = *MEMORY[0x1E695F058];
        v29 = *(MEMORY[0x1E695F058] + 8);
        v31 = *(MEMORY[0x1E695F058] + 16);
        v33 = *(MEMORY[0x1E695F058] + 24);
      }

      v35 = objc_loadWeakRetained((a1 + 48));
      [a1 _notifier:v35 homeAffordanceFrameDidChange:{v27, v29, v31, v33}];

      if ((v19 & 1) == 0)
      {
        v36 = objc_loadWeakRetained((a1 + 48));
        v37 = [v36 windowHostingScene];
        [v7 removeObserver:a1 name:@"_UIWindowHostingSceneDidMoveToScreenNotification" object:v37];

        [*(a1 + 56) _invalidate];
        v38 = *(a1 + 56);
        *(a1 + 56) = 0;

        objc_storeWeak((a1 + 48), 0);
      }
    }

    if ((v9 & 1) == 0)
    {
      if (v39)
      {
        [v7 removeObserver:a1 name:@"_UIWindowDidMoveToSceneNotification" object:v39];
        [v7 removeObserver:a1 name:@"_UIWindowWillMoveToNilSceneNotification" object:v39];
      }

      if (v8)
      {
        [v7 addObserver:a1 selector:sel__windowDidMoveToScene_ name:@"_UIWindowDidMoveToSceneNotification" object:v8];
        [v7 addObserver:a1 selector:sel__windowWillMoveToNilScene_ name:@"_UIWindowWillMoveToNilSceneNotification" object:v8];
      }
    }

    objc_storeWeak((a1 + 40), v8);
  }
}

- (void)willMoveToView:(id)a3
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    [(UIView *)WeakRetained _removeGeometryChangeObserver:?];
  }

  objc_storeWeak(&self->_view, 0);
}

- (void)didMoveToView:(id)a3
{
  v5 = objc_storeWeak(&self->_view, a3);

  if (self && a3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    [(UIView *)WeakRetained _addGeometryChangeObserver:?];
  }

  v7 = objc_loadWeakRetained(&self->_view);
  v10 = [v7 _window];

  v8 = [v10 _windowHostingScene];
  v9 = [v8 _homeAffordanceSceneNotifier];

  [(_UIHomeAffordanceObserverProxyInteraction *)self _updateHomeAffordanceObservationIfNeededForWindow:v10 withTargetNotifier:v9];
}

- (void)_didMoveFromWindow:(id)a3 toWindow:(id)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v8 = [WeakRetained _window];

  v6 = [v8 _windowHostingScene];
  v7 = [v6 _homeAffordanceSceneNotifier];

  [(_UIHomeAffordanceObserverProxyInteraction *)self _updateHomeAffordanceObservationIfNeededForWindow:v8 withTargetNotifier:v7];
}

- (void)_windowDidMoveToScene:(id)a3
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

  v15 = v7;

  v8 = v15;
  if (v15)
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    v10 = [WeakRetained _window];

    v8 = v15;
    if (v10 == v15)
    {
      v11 = objc_loadWeakRetained(&self->_view);
      v12 = [v11 _window];

      v13 = [v12 _windowHostingScene];
      v14 = [v13 _homeAffordanceSceneNotifier];

      [(_UIHomeAffordanceObserverProxyInteraction *)self _updateHomeAffordanceObservationIfNeededForWindow:v12 withTargetNotifier:v14];
      v8 = v15;
    }
  }
}

- (void)_windowWillMoveToNilScene:(id)a3
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

  v13 = v7;

  v8 = v13;
  if (v13)
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    v10 = [WeakRetained _window];

    v8 = v13;
    if (v10 == v13)
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

- (void)_windowHostingSceneDidMoveToScreen:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
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

  v25 = v7;

  WeakRetained = objc_loadWeakRetained(&self->_homeAffordanceNotifier);
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v10 = objc_loadWeakRetained(&self->_homeAffordanceNotifier);
    v11 = [v10 windowHostingScene];

    if (v11 == v25)
    {
      v12 = objc_loadWeakRetained(&self->_homeAffordanceNotifier);
      v13 = [v12 windowHostingScene];
      v14 = [v13 _screen];
      if (self)
      {
        CategoryCachedImpl = __UILogGetCategoryCachedImpl("HomeAffordanceObservation", &_handleScreenChangeForCoalescedFrameEvaluationDisplayLink____s_category);
        if (*CategoryCachedImpl)
        {
          v18 = *(CategoryCachedImpl + 8);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v19 = [(_UIHomeAffordanceObserverProxyInteraction *)self succinctDescription];
            if (v14)
            {
              v20 = MEMORY[0x1E696AEC0];
              v21 = v14;
              v22 = objc_opt_class();
              v23 = NSStringFromClass(v22);
              v24 = [v20 stringWithFormat:@"<%@: %p>", v23, v21];
            }

            else
            {
              v24 = @"(nil)";
            }

            *buf = 138543618;
            v27 = v19;
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
          [(_UIHomeAffordanceObserverProxyInteraction *)&self->super.isa _configureCoalescedFrameEvaluationDisplayLinkForScreen:v14];
        }
      }
    }
  }
}

- (void)_geometryChanged:(id *)a3 forAncestor:(id)a4
{
  if (self->_homeAffordanceRegistrationToken)
  {
    if ((a3->var0 & 0x1036) != 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_homeAffordanceNotifier);
      v6 = [WeakRetained windowHostingScene];
      v7 = [v6 _screen];
      [(_UIHomeAffordanceObserverProxyInteraction *)&self->super.isa _configureCoalescedFrameEvaluationDisplayLinkForScreen:v7];

      *&self->_interactionFlags |= 1u;
    }
  }
}

- (void)appendDescriptionToStream:(id)a3
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71___UIHomeAffordanceObserverProxyInteraction_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_1E70F35B8;
  v6[4] = a3;
  v6[5] = self;
  [a3 appendProem:self block:v6];
  if ([a3 hasDebugStyle])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __71___UIHomeAffordanceObserverProxyInteraction_appendDescriptionToStream___block_invoke_2;
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