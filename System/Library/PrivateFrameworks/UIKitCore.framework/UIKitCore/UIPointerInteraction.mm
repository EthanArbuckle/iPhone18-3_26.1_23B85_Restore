@interface UIPointerInteraction
- (BOOL)_regionContainsCurrentHoverLocation:(id)a3;
- (UIPointerInteraction)initWithDelegate:(id)delegate;
- (UIPointerRegion)defaultRegion;
- (UIView)view;
- (id)_notifyDelegate_willEnterRegion:(id)a3;
- (id)_notifyDelegate_willExitRegion:(id)a3;
- (id)_pointerRegionAtPoint:(CGPoint)a3 modifiers:(int64_t)a4;
- (id)_pointerStyleForRegion:(id)a3;
- (id)_targetedPreviewForContinuingEffectWithPreview:(id)a3;
- (id)delegate;
- (void)_applyPointerStyle:(id)a3 forRegion:(id)a4 animator:(id)a5;
- (void)_handlePresentationNotification:(id)a3;
- (void)_modifiersDidChangeInRegion:(id)a3 update:(id *)a4;
- (void)_pointerDidEnterRegion:(id)a3 update:(id *)a4;
- (void)_pointerDidExitRegion:(id)a3 willEnterNewRegion:(BOOL)a4;
- (void)_queryDelegateForRegionWithRequest:(id)a3 completion:(id)a4 forceSynchronous:(BOOL)a5;
- (void)_runAlongsideAnimator:(id)a3;
- (void)_updateCurrentRegionIfNecessary:(id)a3 update:(id *)a4;
- (void)_updateDebugUIForRegionIfEnabled:(id)a3;
- (void)_updateInteractionIsEnabled;
- (void)_updatePointerStyleForRegion:(id)a3 update:(id *)a4 animator:(id)a5;
- (void)_viewTraitCollectionDidChange:(id)a3;
- (void)dealloc;
- (void)didMoveToView:(id)a3;
- (void)driver:(id)a3 didIssueUpdate:(id *)a4;
- (void)driver:(id)a3 willAttachHoverGestureRecognizer:(id)a4 toView:(id)a5;
- (void)invalidate;
- (void)setEnabled:(BOOL)enabled;
- (void)willMoveToView:(id)a3;
@end

@implementation UIPointerInteraction

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (void)_updateInteractionIsEnabled
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [(UIPointerInteraction *)self view];
  v4 = [v3 traitCollection];
  v5 = [v4 userInterfaceIdiom];

  if (v3 && self->_enabled && (v5 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = self->_drivers;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
      do
      {
        v10 = 0;
        do
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v21 + 1) + 8 * v10++) setView:v3];
        }

        while (v8 != v10);
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = self->_drivers;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        v15 = 0;
        do
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v17 + 1) + 8 * v15++) setView:{0, v17}];
        }

        while (v13 != v15);
        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v13);
    }

    if (self->_observingPresentationNotification)
    {
      v16 = [MEMORY[0x1E696AD88] defaultCenter];
      [v16 removeObserver:self name:@"UIPresentationControllerPresentationTransitionWillBeginNotification" object:0];

      self->_observingPresentationNotification = 0;
    }
  }
}

- (void)invalidate
{
  v14 = *MEMORY[0x1E69E9840];
  defaultRegion = self->_defaultRegion;
  if (defaultRegion)
  {
    self->_defaultRegion = 0;

    ++self->_generationID;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = self->_drivers;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * v8++) invalidate];
        }

        while (v6 != v8);
        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)dealloc
{
  if (self->_observingPresentationNotification)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 removeObserver:self name:@"UIPresentationControllerPresentationTransitionWillBeginNotification" object:0];
  }

  v4.receiver = self;
  v4.super_class = UIPointerInteraction;
  [(UIPointerInteraction *)&v4 dealloc];
}

- (UIPointerInteraction)initWithDelegate:(id)delegate
{
  v4 = delegate;
  v20.receiver = self;
  v20.super_class = UIPointerInteraction;
  v5 = [(UIPointerInteraction *)&v20 init];
  v6 = v5;
  if (v5)
  {
    *(v5 + 25) = 257;
    v7 = objc_storeWeak(v5 + 6, v4);
    v6->_observingPresentationNotification = 0;
    v8 = v7;

    if (v4)
    {
      WeakRetained = objc_loadWeakRetained(&v6->_delegate);
      v6->_delegateImplements.regionForRequest = objc_opt_respondsToSelector() & 1;

      v10 = objc_loadWeakRetained(&v6->_delegate);
      v6->_delegateImplements.styleForRegion = objc_opt_respondsToSelector() & 1;

      v11 = objc_loadWeakRetained(&v6->_delegate);
      v6->_delegateImplements.willEnterRegionAnimator = objc_opt_respondsToSelector() & 1;

      v12 = objc_loadWeakRetained(&v6->_delegate);
      v6->_delegateImplements.willExitRegionAnimator = objc_opt_respondsToSelector() & 1;

      v13 = objc_loadWeakRetained(&v6->_delegate);
      v6->_delegateImplements.asyncRegionForRequest = objc_opt_respondsToSelector() & 1;

      v14 = objc_loadWeakRetained(&v6->_delegate);
      v6->_delegateImplements.targetRegionForDeceleratingPointerWithRequests = objc_opt_respondsToSelector() & 1;
    }

    v15 = [MEMORY[0x1E695DF70] array];
    if (_os_feature_enabled_impl())
    {
      v16 = [[_UIPointerInteractionPencilHoverDriver alloc] initWithSink:v6];
      [(NSArray *)v15 addObject:v16];
    }

    v17 = [[_UIPointerInteractionHoverDriver alloc] initWithSink:v6];
    [(NSArray *)v15 addObject:v17];

    drivers = v6->_drivers;
    v6->_drivers = v15;
  }

  return v6;
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    self->_enabled = enabled;
    [(UIPointerInteraction *)self _updateInteractionIsEnabled];
  }
}

- (void)willMoveToView:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_drivers;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) setView:{0, v9}];
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  objc_storeWeak(&self->_view, 0);
}

- (void)didMoveToView:(id)a3
{
  objc_storeWeak(&self->_view, a3);

  [(UIPointerInteraction *)self _updateInteractionIsEnabled];
}

- (void)_viewTraitCollectionDidChange:(id)a3
{
  v4 = a3;
  v5 = [(UIPointerInteraction *)self view];
  v6 = [v5 traitCollection];
  v7 = [v6 userInterfaceIdiom];
  v8 = [v4 userInterfaceIdiom];

  if (v7 != v8)
  {

    [(UIPointerInteraction *)self _updateInteractionIsEnabled];
  }
}

- (id)_targetedPreviewForContinuingEffectWithPreview:(id)a3
{
  v4 = a3;
  v5 = [(UIPointerInteraction *)self currentRegion];

  if (v5)
  {
    v6 = +[_UIContentEffectManager sharedManager];
    v7 = [(UIPointerInteraction *)self currentRegion];
    v8 = [v6 objectForKeyedSubscript:v7];

    v9 = [v8 previewForContinuingToEffectWithPreview:v4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (UIPointerRegion)defaultRegion
{
  defaultRegion = self->_defaultRegion;
  if (!defaultRegion)
  {
    v4 = [(UIPointerInteraction *)self view];
    [v4 bounds];
    v5 = [UIPointerRegion regionWithRect:0 identifier:?];
    v6 = self->_defaultRegion;
    self->_defaultRegion = v5;

    defaultRegion = self->_defaultRegion;
  }

  return defaultRegion;
}

- (void)driver:(id)a3 didIssueUpdate:(id *)a4
{
  v64 = *MEMORY[0x1E69E9840];
  v6 = a3;
  x = a4->var0.x;
  y = a4->var0.y;
  var2 = a4->var2;
  var3 = a4->var3;
  v11 = objc_opt_new();
  [v11 setLocation:{x, y}];
  [v11 setModifiers:var2];
  [v11 set_pointerType:{objc_msgSend(v6, "type")}];
  v50 = MEMORY[0x1E69E9820];
  v51 = 3221225472;
  v52 = __46__UIPointerInteraction_driver_didIssueUpdate___block_invoke;
  v53 = &unk_1E7127DD8;
  v12 = v6;
  v61 = var3 & 1;
  v54 = v12;
  v55 = self;
  v13 = *&a4->var4;
  v58 = *&a4->var2;
  v59 = v13;
  v60 = *&a4->var6;
  v14 = *&a4->var0.x;
  v57 = *&a4->var0.z;
  v56 = v14;
  [(UIPointerInteraction *)self _queryDelegateForRegionWithRequest:v11 completion:&v50 forceSynchronous:0];
  v15 = [(UIPointerInteraction *)self currentRegion];
  v16 = v15;
  if (v15 && ((var3 & 1) == 0 || ([v15 _isLatching] & 1) == 0))
  {
    if ([(UIPointerInteraction *)self _regionContainsCurrentHoverLocation:v16])
    {
      v17 = +[_UIContentEffectManager sharedManager];
      v18 = [(UIPointerInteraction *)self currentRegion];
      v19 = [v17 objectForKeyedSubscript:v18];

      [v19 setPressed:var3 != 0 animated:1];
    }

    else
    {
      v20 = *(__UILogGetCategoryCachedImpl("UIPointerInteraction", &driver_didIssueUpdate____s_category) + 8);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v63 = v16;
        _os_log_impl(&dword_188A29000, v20, OS_LOG_TYPE_DEFAULT, "auto exiting region: %@", buf, 0xCu);
      }

      [(UIPointerInteraction *)self _pointerDidExit];
    }
  }

  v21 = +[_UIContentEffectManager sharedManager];
  v22 = [(UIPointerInteraction *)self currentRegion];
  v23 = [v21 objectForKeyedSubscript:v22];

  if (v23)
  {
    z = a4->var0.z;
    var1 = a4->var1;
    if (var1 > z)
    {
      [v23 setLiftProgress:{1.0 - fmax(fmin((z / var1 + -0.6) / 0.4, 1.0), 0.0)}];
LABEL_20:
      if (a4->var7 || a4->var0.z > 0.0)
      {
        v30 = [v12 view];
        v31 = [v16 referenceView];
        v32 = [v30 _window];
        v33 = [v32 windowScene];
        v34 = [v31 _window];
        v35 = [v34 windowScene];

        v36 = [v30 _window];
        v37 = [v36 screen];
        v38 = v37;
        if (v33 == v35)
        {
          [v37 coordinateSpace];
        }

        else
        {
          [v37 fixedCoordinateSpace];
        }
        v39 = ;

        v12 = v49;
        v40 = [v49 view];
        [v40 convertPoint:v39 toCoordinateSpace:{x, y}];
        v42 = v41;
        v44 = v43;

        [v39 convertPoint:v31 toCoordinateSpace:{v42, v44}];
        [v23 setHoverLocation:?];
      }

      else
      {
        [v16 rect];
        [v23 setHoverLocation:{v46 + v45 * 0.5, v48 + v47 * 0.5}];
      }

      goto LABEL_26;
    }

    v26 = [v23 style];
    v27 = [v26 pointerEffect];

    if (!v27)
    {
LABEL_19:

      goto LABEL_20;
    }

    var6 = a4->var6;
    if (var6 <= 0.0)
    {
      if (var6 >= 0.0)
      {
LABEL_18:
        [v23 setLiftProgress:1.0 - var6];
        goto LABEL_19;
      }

      v29 = -2.5;
    }

    else
    {
      v29 = 2.5;
    }

    var6 = (1.0 - 1.0 / (var6 / v29 * 0.55 + 1.0)) * v29;
    goto LABEL_18;
  }

LABEL_26:
}

void __46__UIPointerInteraction_driver_didIssueUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) allowsUpdatesWhilePrimaryButtonIsPressed] & 1) != 0 || *(a1 + 128) != 1 || (objc_msgSend(*(a1 + 40), "currentRegion"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "_isLatching"), v4, (v5 & 1) == 0) && ((objc_msgSend(v3, "_isLatching") & 1) != 0 || (objc_msgSend(*(a1 + 40), "mostRecentRegion"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v3, "isEqual:", v6), v6, v7)))
  {
    v8 = *(a1 + 40);
    v9 = *(a1 + 96);
    v11[2] = *(a1 + 80);
    v11[3] = v9;
    v11[4] = *(a1 + 112);
    v10 = *(a1 + 64);
    v11[0] = *(a1 + 48);
    v11[1] = v10;
    [v8 _updateCurrentRegionIfNecessary:v3 update:v11];
  }
}

- (void)driver:(id)a3 willAttachHoverGestureRecognizer:(id)a4 toView:(id)a5
{
  v6 = a4;
  [v6 _setPausesWhilePanning:{-[UIPointerInteraction _pausesPointerUpdatesWhilePanning](self, "_pausesPointerUpdatesWhilePanning")}];
}

- (void)_updateCurrentRegionIfNecessary:(id)a3 update:(id *)a4
{
  v6 = a3;
  v7 = [(UIPointerInteraction *)self currentRegion];
  v8 = [(UIPointerInteraction *)self currentModifiers];
  var2 = a4->var2;
  v10 = v6;
  v11 = v7;
  v12 = v11;
  if (v11 == v10)
  {
    v13 = 1;
    goto LABEL_6;
  }

  if (v10 && v11)
  {
    v13 = [v10 isEqual:v11];
LABEL_6:

    v14 = var2 == v8;
    v15 = var2 == v8;
    if (v13 && v14)
    {
      goto LABEL_20;
    }

    goto LABEL_10;
  }

  LOBYTE(v13) = 0;
  v15 = var2 == v8;
LABEL_10:
  if (v12 && (v13 & 1) == 0)
  {
    [(UIPointerInteraction *)self _pointerDidExitRegion:v12 willEnterNewRegion:v10 != 0];
  }

  [(UIPointerInteraction *)self setCurrentRegion:v10];
  [(UIPointerInteraction *)self setCurrentModifiers:var2];
  v16 = [(UIPointerInteraction *)self currentRegion];
  if (v16)
  {
    if (v13)
    {
      if (!v15)
      {
        v17 = *&a4->var4;
        v23 = *&a4->var2;
        v24 = v17;
        v25 = *&a4->var6;
        v18 = *&a4->var0.z;
        v21 = *&a4->var0.x;
        v22 = v18;
        [(UIPointerInteraction *)self _modifiersDidChangeInRegion:v16 update:&v21];
      }
    }

    else
    {
      v19 = *&a4->var4;
      v23 = *&a4->var2;
      v24 = v19;
      v25 = *&a4->var6;
      v20 = *&a4->var0.z;
      v21 = *&a4->var0.x;
      v22 = v20;
      [(UIPointerInteraction *)self _pointerDidEnterRegion:v16 update:&v21];
    }

    [(UIPointerInteraction *)self setMostRecentRegion:v16];
  }

LABEL_20:
}

- (void)_pointerDidEnterRegion:(id)a3 update:(id *)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = *(__UILogGetCategoryCachedImpl("UIPointerInteraction", &_pointerDidEnterRegion_update____s_category) + 8);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v12[0]) = 138412290;
    *(v12 + 4) = v6;
    _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "Entered region: %@", v12, 0xCu);
  }

  [(UIPointerInteraction *)self _updateDebugUIForRegionIfEnabled:v6];
  v8 = [(UIPointerInteraction *)self _notifyDelegate_willEnterRegion:v6];
  v9 = *&a4->var4;
  v12[2] = *&a4->var2;
  v12[3] = v9;
  v12[4] = *&a4->var6;
  v10 = *&a4->var0.z;
  v12[0] = *&a4->var0.x;
  v12[1] = v10;
  [(UIPointerInteraction *)self _updatePointerStyleForRegion:v6 update:v12 animator:v8];
  if (!self->_observingPresentationNotification)
  {
    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    [v11 addObserver:self selector:sel__handlePresentationNotification_ name:@"UIPresentationControllerPresentationTransitionWillBeginNotification" object:0];

    self->_observingPresentationNotification = 1;
  }
}

- (void)_handlePresentationNotification:(id)a3
{
  v4 = [a3 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v6 = *(__UILogGetCategoryCachedImpl("UIPointerInteraction", &_handlePresentationNotification____s_category) + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "Invalidating due to presentation.", v7, 2u);
    }

    [(UIPointerInteraction *)self invalidate];
  }
}

- (void)_pointerDidExitRegion:(id)a3 willEnterNewRegion:(BOOL)a4
{
  v4 = a4;
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = *(__UILogGetCategoryCachedImpl("UIPointerInteraction", &_pointerDidExitRegion_willEnterNewRegion____s_category) + 8);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = NSStringFromBOOL();
    v16 = 138412546;
    v17 = v6;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "Exited region: %@, is entering new region: %@", &v16, 0x16u);
  }

  [(UIPointerInteraction *)self _updateDebugUIForRegionIfEnabled:0];
  if (self->_observingPresentationNotification)
  {
    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    [v10 removeObserver:self name:@"UIPresentationControllerPresentationTransitionWillBeginNotification" object:0];

    self->_observingPresentationNotification = 0;
  }

  v11 = [(UIPointerInteraction *)self _notifyDelegate_willExitRegion:v6];
  v12 = +[_UIContentEffectManager sharedManager];
  v13 = [(UIPointerInteraction *)self currentRegion];
  v14 = [v12 objectForKeyedSubscript:v13];

  if (v14)
  {
    [v14 setExitAnimator:v11];
    [v14 end:v4];
  }

  else
  {
    [(UIPointerInteraction *)self _runAlongsideAnimator:v11];
    v15 = +[_UIPointerArbiter sharedArbiter];
    [v15 exitRegion:v6 removeStyle:v4 ^ 1 completion:0];
  }
}

- (void)_runAlongsideAnimator:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setDampingRatio:1.0 response:0.4];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__UIPointerInteraction__runAlongsideAnimator___block_invoke;
  v8[3] = &unk_1E70F3590;
  v9 = v3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__UIPointerInteraction__runAlongsideAnimator___block_invoke_2;
  v6[3] = &unk_1E70F3FD8;
  v7 = v9;
  v5 = v9;
  [UIView _animateUsingSpringBehavior:v4 tracking:0 animations:v8 completion:v6];
}

- (void)_modifiersDidChangeInRegion:(id)a3 update:(id *)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = *(__UILogGetCategoryCachedImpl("UIPointerInteraction", &_modifiersDidChangeInRegion_update____s_category) + 8);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v10[0]) = 138412290;
    *(v10 + 4) = v6;
    _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "Modifiers changed in region: %@", v10, 0xCu);
  }

  v8 = *&a4->var4;
  v10[2] = *&a4->var2;
  v10[3] = v8;
  v10[4] = *&a4->var6;
  v9 = *&a4->var0.z;
  v10[0] = *&a4->var0.x;
  v10[1] = v9;
  [(UIPointerInteraction *)self _updatePointerStyleForRegion:v6 update:v10 animator:0];
}

- (id)_notifyDelegate_willEnterRegion:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UIPointerInteraction.entranceAnimator.%@", v4];
  [v5 setDebugName:v6];

  if (self->_delegateImplements.willEnterRegionAnimator)
  {
    v7 = [(UIPointerInteraction *)self delegate];
    [v7 pointerInteraction:self willEnterRegion:v4 animator:v5];
  }

  return v5;
}

- (id)_notifyDelegate_willExitRegion:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UIPointerInteraction.exitAnimator.%@", v4];
  [v5 setDebugName:v6];

  if (self->_delegateImplements.willExitRegionAnimator)
  {
    v7 = [(UIPointerInteraction *)self delegate];
    [v7 pointerInteraction:self willExitRegion:v4 animator:v5];
  }

  return v5;
}

- (void)_updatePointerStyleForRegion:(id)a3 update:(id *)a4 animator:(id)a5
{
  v11 = a3;
  v8 = a5;
  v9 = [(UIPointerInteraction *)self _pointerStyleForRegion:v11];
  v10 = v9;
  if (!a4->var5)
  {
    [v9 _adaptForNonSystemEffectSupportingEnvironment];
  }

  [(UIPointerInteraction *)self _applyPointerStyle:v10 forRegion:v11 animator:v8];
}

- (void)_applyPointerStyle:(id)a3 forRegion:(id)a4 animator:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8 && [v8 type] == 1)
  {
    v11 = +[_UIContentEffectManager sharedManager];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __62__UIPointerInteraction__applyPointerStyle_forRegion_animator___block_invoke;
    v15[3] = &unk_1E7127E00;
    v16 = v8;
    v17 = v9;
    v12 = [v11 compatibleEffectForKey:v17 descriptor:v16 constructor:v15];
    [v12 setEntranceAnimator:v10];
    [v12 begin];
  }

  else
  {
    v13 = +[_UIPointerArbiter sharedArbiter];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __62__UIPointerInteraction__applyPointerStyle_forRegion_animator___block_invoke_2;
    v14[3] = &unk_1E7127E28;
    v14[4] = self;
    [v13 applyStyle:v8 forRegion:v9 effectSourceHandler:v14 completion:0];

    if (v8)
    {
      [(UIPointerInteraction *)self _runAlongsideAnimator:v10];
    }
  }
}

_UIPointerContentEffect *__62__UIPointerInteraction__applyPointerStyle_forRegion_animator___block_invoke(uint64_t a1)
{
  v1 = [[_UIPointerContentEffect alloc] initWithStyle:*(a1 + 32) region:*(a1 + 40)];

  return v1;
}

void __62__UIPointerInteraction__applyPointerStyle_forRegion_animator___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) view];
  v7 = [v6 _window];

  v8 = [v11 superview];
  v9 = v8;
  if (v8 == v7)
  {
    v10 = [v5 superview];

    if (v10 == v7)
    {
      goto LABEL_5;
    }
  }

  else
  {
  }

  [v7 addSubview:v11];
  [v7 addSubview:v5];
LABEL_5:
}

- (id)_pointerRegionAtPoint:(CGPoint)a3 modifiers:(int64_t)a4
{
  y = a3.y;
  x = a3.x;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__225;
  v16 = __Block_byref_object_dispose__225;
  v17 = 0;
  v8 = objc_opt_new();
  [v8 setLocation:{x, y}];
  [v8 setModifiers:a4];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __56__UIPointerInteraction__pointerRegionAtPoint_modifiers___block_invoke;
  v11[3] = &unk_1E7127E50;
  v11[4] = &v12;
  [(UIPointerInteraction *)self _queryDelegateForRegionWithRequest:v8 completion:v11 forceSynchronous:1];
  v9 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v9;
}

- (BOOL)_regionContainsCurrentHoverLocation:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = self->_drivers;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v34;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v34 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v33 + 1) + 8 * v9);
      if ([v10 isActive])
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v33 objects:v37 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v12 = v10;

    if (!v12)
    {
      v11 = 0;
      goto LABEL_16;
    }

    v13 = [(UIPointerInteraction *)self view];
    [(NSArray *)v12 locationInView:v13];
    v15 = v14;
    v17 = v16;

    v18 = [(UIPointerInteraction *)self view];
    v19 = [v4 referenceView];

    if (v18 != v19)
    {
      v20 = [v4 referenceView];
      v21 = [v20 _window];
      v22 = [v21 screen];
      v23 = [v22 fixedCoordinateSpace];

      v24 = [(UIPointerInteraction *)self view];
      [v24 convertPoint:v23 toCoordinateSpace:{v15, v17}];
      v26 = v25;
      v28 = v27;

      v29 = [v4 referenceView];
      [v29 convertPoint:v23 fromCoordinateSpace:{v26, v28}];
      v15 = v30;
      v17 = v31;
    }

    [v4 rect];
    v39.x = v15;
    v39.y = v17;
    v11 = CGRectContainsPoint(v40, v39);
  }

  else
  {
LABEL_9:
    v11 = 0;
    v12 = v5;
  }

LABEL_16:
  return v11;
}

- (void)_queryDelegateForRegionWithRequest:(id)a3 completion:(id)a4 forceSynchronous:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __87__UIPointerInteraction__queryDelegateForRegionWithRequest_completion_forceSynchronous___block_invoke;
  aBlock[3] = &unk_1E7127E78;
  aBlock[4] = self;
  v20 = a5;
  v10 = v9;
  v19 = v10;
  v11 = _Block_copy(aBlock);
  v12 = [(UIPointerInteraction *)self delegate];
  v13 = [(UIPointerInteraction *)self defaultRegion];
  v14 = [(UIPointerInteraction *)self view];
  [v14 bounds];
  [v13 setRect:?];

  if (!v12)
  {
    goto LABEL_7;
  }

  if (a5 || !self->_delegateImplements.asyncRegionForRequest)
  {
    if (self->_delegateImplements.regionForRequest)
    {
      v15 = [v12 pointerInteraction:self regionForRequest:v8 defaultRegion:v13];
      v11[2](v11, v15);

      goto LABEL_8;
    }

LABEL_7:
    v11[2](v11, v13);
    goto LABEL_8;
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __87__UIPointerInteraction__queryDelegateForRegionWithRequest_completion_forceSynchronous___block_invoke_2;
  v16[3] = &unk_1E7127EA0;
  v17 = v11;
  [v12 _pointerInteraction:self regionForRequest:v8 defaultRegion:v13 completion:v16];

LABEL_8:
}

void __87__UIPointerInteraction__queryDelegateForRegionWithRequest_completion_forceSynchronous___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v7 = v3;
    [v3 setGenerationID:*(*(a1 + 32) + 16)];
    v4 = [v7 referenceView];

    if (!v4)
    {
      v5 = [*(a1 + 32) view];
      [v7 setReferenceView:v5];
    }

    if (*(a1 + 48) & 1) != 0 || ([*(a1 + 32) _regionContainsCurrentHoverLocation:v7])
    {
      v6 = v7;
      goto LABEL_9;
    }
  }

  v6 = 0;
LABEL_9:
  v8 = v6;
  (*(*(a1 + 40) + 16))();
}

- (id)_pointerStyleForRegion:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UIPointerInteraction *)self delegate];
  v6 = v5;
  if (v5)
  {
    if (self->_delegateImplements.styleForRegion)
    {
      v7 = [v5 pointerInteraction:self styleForRegion:v4];
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v8 = [(UIPointerInteraction *)self view];
  v9 = [v8 _window];

  if (v9)
  {
    v10 = [UITargetedPreview alloc];
    v11 = [(UIPointerInteraction *)self view];
    v12 = [(UITargetedPreview *)v10 initWithView:v11];

    v13 = [UIPointerEffect effectWithPreview:v12];
    v7 = [UIPointerStyle styleWithEffect:v13 shape:0];

    goto LABEL_18;
  }

  if (os_variant_has_internal_diagnostics())
  {
    v14 = __UIFaultDebugAssertLog();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    if (self)
    {
      v29 = MEMORY[0x1E696AEC0];
      v30 = self;
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      v28 = [v29 stringWithFormat:@"<%@: %p>", v32, v30];
    }

    else
    {
      v28 = @"(nil)";
    }

    v20 = v28;
    v21 = [(UIPointerInteraction *)self view];
    if (v21)
    {
      v33 = MEMORY[0x1E696AEC0];
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      v25 = [v33 stringWithFormat:@"<%@: %p>", v35, v21];
    }

    else
    {
      v25 = @"(nil)";
    }

    *buf = 138412802;
    v37 = v4;
    v38 = 2112;
    v39 = v20;
    v40 = 2112;
    v41 = v25;
    _os_log_fault_impl(&dword_188A29000, v14, OS_LOG_TYPE_FAULT, "Unable to create default pointer style for region %@ provided to %@ attached to %@ since its view is not in a window. This most likely means the view (or an ancestor) was removed from the view hierarchy after receiving the pointer region.", buf, 0x20u);
    goto LABEL_15;
  }

  v14 = *(__UILogGetCategoryCachedImpl("Assert", &_pointerStyleForRegion____s_category) + 8);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    if (self)
    {
      v15 = MEMORY[0x1E696AEC0];
      v16 = self;
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = [v15 stringWithFormat:@"<%@: %p>", v18, v16];
    }

    else
    {
      v19 = @"(nil)";
    }

    v20 = v19;
    v21 = [(UIPointerInteraction *)self view];
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

    *buf = 138412802;
    v37 = v4;
    v38 = 2112;
    v39 = v20;
    v40 = 2112;
    v41 = v25;
    _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "Unable to create default pointer style for region %@ provided to %@ attached to %@ since its view is not in a window. This most likely means the view (or an ancestor) was removed from the view hierarchy after receiving the pointer region.", buf, 0x20u);
LABEL_15:
  }

LABEL_16:

LABEL_17:
  v7 = 0;
LABEL_18:
  v26 = [v7 copy];

  return v26;
}

- (void)_updateDebugUIForRegionIfEnabled:(id)a3
{
  v29[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3 && (+[_UIPointerSettingsDomain rootSettings](_UIPointerSettingsDomain, "rootSettings"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 showRegions], v4, v5))
  {
    if (!_updateDebugUIForRegionIfEnabled____regionDebugView)
    {
      v6 = objc_opt_new();
      v7 = _updateDebugUIForRegionIfEnabled____regionDebugView;
      _updateDebugUIForRegionIfEnabled____regionDebugView = v6;

      v8 = [_updateDebugUIForRegionIfEnabled____regionDebugView layer];
      [v8 setBorderWidth:1.0];

      v9 = +[UIColor magentaColor];
      v10 = [v9 colorWithAlphaComponent:0.75];
      v11 = [v10 CGColor];
      v12 = [_updateDebugUIForRegionIfEnabled____regionDebugView layer];
      [v12 setBorderColor:v11];

      [_updateDebugUIForRegionIfEnabled____regionDebugView setUserInteractionEnabled:0];
    }

    v13 = [v3 referenceView];
    v14 = [v13 window];

    v15 = [v3 referenceView];
    [v3 rect];
    [v15 convertRect:v14 toView:?];
    [_updateDebugUIForRegionIfEnabled____regionDebugView setFrame:?];

    v16 = [_updateDebugUIForRegionIfEnabled____regionDebugView layer];
    [v16 setZPosition:100000.0];

    [v14 addSubview:_updateDebugUIForRegionIfEnabled____regionDebugView];
    v17 = objc_opt_new();
    v18 = [v3 referenceView];
    v19 = [v18 layer];
    [v17 setSourceLayer:v19];

    [v17 setDuration:INFINITY];
    v20 = MEMORY[0x1E696B098];
    [v3 rect];
    v25 = [v20 valueWithCGPoint:{v22 + v21 * 0.5, v24 + v23 * 0.5}];
    v29[0] = v25;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
    [v17 setSourcePoints:v26];

    v27 = [_updateDebugUIForRegionIfEnabled____regionDebugView layer];
    [v27 removeAnimationForKey:@"PointerInteractionDebugViewMatchMove"];

    v28 = [_updateDebugUIForRegionIfEnabled____regionDebugView layer];
    [v28 addAnimation:v17 forKey:@"PointerInteractionDebugViewMatchMove"];
  }

  else
  {
    [_updateDebugUIForRegionIfEnabled____regionDebugView removeFromSuperview];
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end