@interface UIPointerInteraction
- (BOOL)_regionContainsCurrentHoverLocation:(id)location;
- (UIPointerInteraction)initWithDelegate:(id)delegate;
- (UIPointerRegion)defaultRegion;
- (UIView)view;
- (id)_notifyDelegate_willEnterRegion:(id)region;
- (id)_notifyDelegate_willExitRegion:(id)region;
- (id)_pointerRegionAtPoint:(CGPoint)point modifiers:(int64_t)modifiers;
- (id)_pointerStyleForRegion:(id)region;
- (id)_targetedPreviewForContinuingEffectWithPreview:(id)preview;
- (id)delegate;
- (void)_applyPointerStyle:(id)style forRegion:(id)region animator:(id)animator;
- (void)_handlePresentationNotification:(id)notification;
- (void)_modifiersDidChangeInRegion:(id)region update:(id *)update;
- (void)_pointerDidEnterRegion:(id)region update:(id *)update;
- (void)_pointerDidExitRegion:(id)region willEnterNewRegion:(BOOL)newRegion;
- (void)_queryDelegateForRegionWithRequest:(id)request completion:(id)completion forceSynchronous:(BOOL)synchronous;
- (void)_runAlongsideAnimator:(id)animator;
- (void)_updateCurrentRegionIfNecessary:(id)necessary update:(id *)update;
- (void)_updateDebugUIForRegionIfEnabled:(id)enabled;
- (void)_updateInteractionIsEnabled;
- (void)_updatePointerStyleForRegion:(id)region update:(id *)update animator:(id)animator;
- (void)_viewTraitCollectionDidChange:(id)change;
- (void)dealloc;
- (void)didMoveToView:(id)view;
- (void)driver:(id)driver didIssueUpdate:(id *)update;
- (void)driver:(id)driver willAttachHoverGestureRecognizer:(id)recognizer toView:(id)view;
- (void)invalidate;
- (void)setEnabled:(BOOL)enabled;
- (void)willMoveToView:(id)view;
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
  view = [(UIPointerInteraction *)self view];
  traitCollection = [view traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (view && self->_enabled && (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
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

          [*(*(&v21 + 1) + 8 * v10++) setView:view];
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
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter removeObserver:self name:@"UIPresentationControllerPresentationTransitionWillBeginNotification" object:0];

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
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:@"UIPresentationControllerPresentationTransitionWillBeginNotification" object:0];
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

    array = [MEMORY[0x1E695DF70] array];
    if (_os_feature_enabled_impl())
    {
      v16 = [[_UIPointerInteractionPencilHoverDriver alloc] initWithSink:v6];
      [(NSArray *)array addObject:v16];
    }

    v17 = [[_UIPointerInteractionHoverDriver alloc] initWithSink:v6];
    [(NSArray *)array addObject:v17];

    drivers = v6->_drivers;
    v6->_drivers = array;
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

- (void)willMoveToView:(id)view
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

- (void)didMoveToView:(id)view
{
  objc_storeWeak(&self->_view, view);

  [(UIPointerInteraction *)self _updateInteractionIsEnabled];
}

- (void)_viewTraitCollectionDidChange:(id)change
{
  changeCopy = change;
  view = [(UIPointerInteraction *)self view];
  traitCollection = [view traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];
  userInterfaceIdiom2 = [changeCopy userInterfaceIdiom];

  if (userInterfaceIdiom != userInterfaceIdiom2)
  {

    [(UIPointerInteraction *)self _updateInteractionIsEnabled];
  }
}

- (id)_targetedPreviewForContinuingEffectWithPreview:(id)preview
{
  previewCopy = preview;
  currentRegion = [(UIPointerInteraction *)self currentRegion];

  if (currentRegion)
  {
    v6 = +[_UIContentEffectManager sharedManager];
    currentRegion2 = [(UIPointerInteraction *)self currentRegion];
    v8 = [v6 objectForKeyedSubscript:currentRegion2];

    v9 = [v8 previewForContinuingToEffectWithPreview:previewCopy];
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
    view = [(UIPointerInteraction *)self view];
    [view bounds];
    v5 = [UIPointerRegion regionWithRect:0 identifier:?];
    v6 = self->_defaultRegion;
    self->_defaultRegion = v5;

    defaultRegion = self->_defaultRegion;
  }

  return defaultRegion;
}

- (void)driver:(id)driver didIssueUpdate:(id *)update
{
  v64 = *MEMORY[0x1E69E9840];
  driverCopy = driver;
  x = update->var0.x;
  y = update->var0.y;
  var2 = update->var2;
  var3 = update->var3;
  v11 = objc_opt_new();
  [v11 setLocation:{x, y}];
  [v11 setModifiers:var2];
  [v11 set_pointerType:{objc_msgSend(driverCopy, "type")}];
  v50 = MEMORY[0x1E69E9820];
  v51 = 3221225472;
  v52 = __46__UIPointerInteraction_driver_didIssueUpdate___block_invoke;
  v53 = &unk_1E7127DD8;
  v12 = driverCopy;
  v61 = var3 & 1;
  v54 = v12;
  selfCopy = self;
  v13 = *&update->var4;
  v58 = *&update->var2;
  v59 = v13;
  v60 = *&update->var6;
  v14 = *&update->var0.x;
  v57 = *&update->var0.z;
  v56 = v14;
  [(UIPointerInteraction *)self _queryDelegateForRegionWithRequest:v11 completion:&v50 forceSynchronous:0];
  currentRegion = [(UIPointerInteraction *)self currentRegion];
  v16 = currentRegion;
  if (currentRegion && ((var3 & 1) == 0 || ([currentRegion _isLatching] & 1) == 0))
  {
    if ([(UIPointerInteraction *)self _regionContainsCurrentHoverLocation:v16])
    {
      v17 = +[_UIContentEffectManager sharedManager];
      currentRegion2 = [(UIPointerInteraction *)self currentRegion];
      v19 = [v17 objectForKeyedSubscript:currentRegion2];

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
  currentRegion3 = [(UIPointerInteraction *)self currentRegion];
  v23 = [v21 objectForKeyedSubscript:currentRegion3];

  if (v23)
  {
    z = update->var0.z;
    var1 = update->var1;
    if (var1 > z)
    {
      [v23 setLiftProgress:{1.0 - fmax(fmin((z / var1 + -0.6) / 0.4, 1.0), 0.0)}];
LABEL_20:
      if (update->var7 || update->var0.z > 0.0)
      {
        view = [v12 view];
        referenceView = [v16 referenceView];
        _window = [view _window];
        windowScene = [_window windowScene];
        _window2 = [referenceView _window];
        windowScene2 = [_window2 windowScene];

        _window3 = [view _window];
        screen = [_window3 screen];
        v38 = screen;
        if (windowScene == windowScene2)
        {
          [screen coordinateSpace];
        }

        else
        {
          [screen fixedCoordinateSpace];
        }
        v39 = ;

        v12 = v49;
        view2 = [v49 view];
        [view2 convertPoint:v39 toCoordinateSpace:{x, y}];
        v42 = v41;
        v44 = v43;

        [v39 convertPoint:referenceView toCoordinateSpace:{v42, v44}];
        [v23 setHoverLocation:?];
      }

      else
      {
        [v16 rect];
        [v23 setHoverLocation:{v46 + v45 * 0.5, v48 + v47 * 0.5}];
      }

      goto LABEL_26;
    }

    style = [v23 style];
    pointerEffect = [style pointerEffect];

    if (!pointerEffect)
    {
LABEL_19:

      goto LABEL_20;
    }

    var6 = update->var6;
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

- (void)driver:(id)driver willAttachHoverGestureRecognizer:(id)recognizer toView:(id)view
{
  recognizerCopy = recognizer;
  [recognizerCopy _setPausesWhilePanning:{-[UIPointerInteraction _pausesPointerUpdatesWhilePanning](self, "_pausesPointerUpdatesWhilePanning")}];
}

- (void)_updateCurrentRegionIfNecessary:(id)necessary update:(id *)update
{
  necessaryCopy = necessary;
  currentRegion = [(UIPointerInteraction *)self currentRegion];
  currentModifiers = [(UIPointerInteraction *)self currentModifiers];
  var2 = update->var2;
  v10 = necessaryCopy;
  v11 = currentRegion;
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

    v14 = var2 == currentModifiers;
    v15 = var2 == currentModifiers;
    if (v13 && v14)
    {
      goto LABEL_20;
    }

    goto LABEL_10;
  }

  LOBYTE(v13) = 0;
  v15 = var2 == currentModifiers;
LABEL_10:
  if (v12 && (v13 & 1) == 0)
  {
    [(UIPointerInteraction *)self _pointerDidExitRegion:v12 willEnterNewRegion:v10 != 0];
  }

  [(UIPointerInteraction *)self setCurrentRegion:v10];
  [(UIPointerInteraction *)self setCurrentModifiers:var2];
  currentRegion2 = [(UIPointerInteraction *)self currentRegion];
  if (currentRegion2)
  {
    if (v13)
    {
      if (!v15)
      {
        v17 = *&update->var4;
        v23 = *&update->var2;
        v24 = v17;
        v25 = *&update->var6;
        v18 = *&update->var0.z;
        v21 = *&update->var0.x;
        v22 = v18;
        [(UIPointerInteraction *)self _modifiersDidChangeInRegion:currentRegion2 update:&v21];
      }
    }

    else
    {
      v19 = *&update->var4;
      v23 = *&update->var2;
      v24 = v19;
      v25 = *&update->var6;
      v20 = *&update->var0.z;
      v21 = *&update->var0.x;
      v22 = v20;
      [(UIPointerInteraction *)self _pointerDidEnterRegion:currentRegion2 update:&v21];
    }

    [(UIPointerInteraction *)self setMostRecentRegion:currentRegion2];
  }

LABEL_20:
}

- (void)_pointerDidEnterRegion:(id)region update:(id *)update
{
  v13 = *MEMORY[0x1E69E9840];
  regionCopy = region;
  v7 = *(__UILogGetCategoryCachedImpl("UIPointerInteraction", &_pointerDidEnterRegion_update____s_category) + 8);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v12[0]) = 138412290;
    *(v12 + 4) = regionCopy;
    _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "Entered region: %@", v12, 0xCu);
  }

  [(UIPointerInteraction *)self _updateDebugUIForRegionIfEnabled:regionCopy];
  v8 = [(UIPointerInteraction *)self _notifyDelegate_willEnterRegion:regionCopy];
  v9 = *&update->var4;
  v12[2] = *&update->var2;
  v12[3] = v9;
  v12[4] = *&update->var6;
  v10 = *&update->var0.z;
  v12[0] = *&update->var0.x;
  v12[1] = v10;
  [(UIPointerInteraction *)self _updatePointerStyleForRegion:regionCopy update:v12 animator:v8];
  if (!self->_observingPresentationNotification)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__handlePresentationNotification_ name:@"UIPresentationControllerPresentationTransitionWillBeginNotification" object:0];

    self->_observingPresentationNotification = 1;
  }
}

- (void)_handlePresentationNotification:(id)notification
{
  object = [notification object];
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

- (void)_pointerDidExitRegion:(id)region willEnterNewRegion:(BOOL)newRegion
{
  newRegionCopy = newRegion;
  v20 = *MEMORY[0x1E69E9840];
  regionCopy = region;
  v7 = *(__UILogGetCategoryCachedImpl("UIPointerInteraction", &_pointerDidExitRegion_willEnterNewRegion____s_category) + 8);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = NSStringFromBOOL();
    v16 = 138412546;
    v17 = regionCopy;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "Exited region: %@, is entering new region: %@", &v16, 0x16u);
  }

  [(UIPointerInteraction *)self _updateDebugUIForRegionIfEnabled:0];
  if (self->_observingPresentationNotification)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:@"UIPresentationControllerPresentationTransitionWillBeginNotification" object:0];

    self->_observingPresentationNotification = 0;
  }

  v11 = [(UIPointerInteraction *)self _notifyDelegate_willExitRegion:regionCopy];
  v12 = +[_UIContentEffectManager sharedManager];
  currentRegion = [(UIPointerInteraction *)self currentRegion];
  v14 = [v12 objectForKeyedSubscript:currentRegion];

  if (v14)
  {
    [v14 setExitAnimator:v11];
    [v14 end:newRegionCopy];
  }

  else
  {
    [(UIPointerInteraction *)self _runAlongsideAnimator:v11];
    v15 = +[_UIPointerArbiter sharedArbiter];
    [v15 exitRegion:regionCopy removeStyle:newRegionCopy ^ 1 completion:0];
  }
}

- (void)_runAlongsideAnimator:(id)animator
{
  animatorCopy = animator;
  v4 = objc_opt_new();
  [v4 setDampingRatio:1.0 response:0.4];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__UIPointerInteraction__runAlongsideAnimator___block_invoke;
  v8[3] = &unk_1E70F3590;
  v9 = animatorCopy;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__UIPointerInteraction__runAlongsideAnimator___block_invoke_2;
  v6[3] = &unk_1E70F3FD8;
  v7 = v9;
  v5 = v9;
  [UIView _animateUsingSpringBehavior:v4 tracking:0 animations:v8 completion:v6];
}

- (void)_modifiersDidChangeInRegion:(id)region update:(id *)update
{
  v11 = *MEMORY[0x1E69E9840];
  regionCopy = region;
  v7 = *(__UILogGetCategoryCachedImpl("UIPointerInteraction", &_modifiersDidChangeInRegion_update____s_category) + 8);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v10[0]) = 138412290;
    *(v10 + 4) = regionCopy;
    _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "Modifiers changed in region: %@", v10, 0xCu);
  }

  v8 = *&update->var4;
  v10[2] = *&update->var2;
  v10[3] = v8;
  v10[4] = *&update->var6;
  v9 = *&update->var0.z;
  v10[0] = *&update->var0.x;
  v10[1] = v9;
  [(UIPointerInteraction *)self _updatePointerStyleForRegion:regionCopy update:v10 animator:0];
}

- (id)_notifyDelegate_willEnterRegion:(id)region
{
  regionCopy = region;
  v5 = objc_opt_new();
  regionCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"UIPointerInteraction.entranceAnimator.%@", regionCopy];
  [v5 setDebugName:regionCopy];

  if (self->_delegateImplements.willEnterRegionAnimator)
  {
    delegate = [(UIPointerInteraction *)self delegate];
    [delegate pointerInteraction:self willEnterRegion:regionCopy animator:v5];
  }

  return v5;
}

- (id)_notifyDelegate_willExitRegion:(id)region
{
  regionCopy = region;
  v5 = objc_opt_new();
  regionCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"UIPointerInteraction.exitAnimator.%@", regionCopy];
  [v5 setDebugName:regionCopy];

  if (self->_delegateImplements.willExitRegionAnimator)
  {
    delegate = [(UIPointerInteraction *)self delegate];
    [delegate pointerInteraction:self willExitRegion:regionCopy animator:v5];
  }

  return v5;
}

- (void)_updatePointerStyleForRegion:(id)region update:(id *)update animator:(id)animator
{
  regionCopy = region;
  animatorCopy = animator;
  v9 = [(UIPointerInteraction *)self _pointerStyleForRegion:regionCopy];
  v10 = v9;
  if (!update->var5)
  {
    [v9 _adaptForNonSystemEffectSupportingEnvironment];
  }

  [(UIPointerInteraction *)self _applyPointerStyle:v10 forRegion:regionCopy animator:animatorCopy];
}

- (void)_applyPointerStyle:(id)style forRegion:(id)region animator:(id)animator
{
  styleCopy = style;
  regionCopy = region;
  animatorCopy = animator;
  if (styleCopy && [styleCopy type] == 1)
  {
    v11 = +[_UIContentEffectManager sharedManager];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __62__UIPointerInteraction__applyPointerStyle_forRegion_animator___block_invoke;
    v15[3] = &unk_1E7127E00;
    v16 = styleCopy;
    v17 = regionCopy;
    v12 = [v11 compatibleEffectForKey:v17 descriptor:v16 constructor:v15];
    [v12 setEntranceAnimator:animatorCopy];
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
    [v13 applyStyle:styleCopy forRegion:regionCopy effectSourceHandler:v14 completion:0];

    if (styleCopy)
    {
      [(UIPointerInteraction *)self _runAlongsideAnimator:animatorCopy];
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

- (id)_pointerRegionAtPoint:(CGPoint)point modifiers:(int64_t)modifiers
{
  y = point.y;
  x = point.x;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__225;
  v16 = __Block_byref_object_dispose__225;
  v17 = 0;
  v8 = objc_opt_new();
  [v8 setLocation:{x, y}];
  [v8 setModifiers:modifiers];
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

- (BOOL)_regionContainsCurrentHoverLocation:(id)location
{
  v38 = *MEMORY[0x1E69E9840];
  locationCopy = location;
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

    view = [(UIPointerInteraction *)self view];
    [(NSArray *)v12 locationInView:view];
    v15 = v14;
    v17 = v16;

    view2 = [(UIPointerInteraction *)self view];
    referenceView = [locationCopy referenceView];

    if (view2 != referenceView)
    {
      referenceView2 = [locationCopy referenceView];
      _window = [referenceView2 _window];
      screen = [_window screen];
      fixedCoordinateSpace = [screen fixedCoordinateSpace];

      view3 = [(UIPointerInteraction *)self view];
      [view3 convertPoint:fixedCoordinateSpace toCoordinateSpace:{v15, v17}];
      v26 = v25;
      v28 = v27;

      referenceView3 = [locationCopy referenceView];
      [referenceView3 convertPoint:fixedCoordinateSpace fromCoordinateSpace:{v26, v28}];
      v15 = v30;
      v17 = v31;
    }

    [locationCopy rect];
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

- (void)_queryDelegateForRegionWithRequest:(id)request completion:(id)completion forceSynchronous:(BOOL)synchronous
{
  requestCopy = request;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __87__UIPointerInteraction__queryDelegateForRegionWithRequest_completion_forceSynchronous___block_invoke;
  aBlock[3] = &unk_1E7127E78;
  aBlock[4] = self;
  synchronousCopy = synchronous;
  v10 = completionCopy;
  v19 = v10;
  v11 = _Block_copy(aBlock);
  delegate = [(UIPointerInteraction *)self delegate];
  defaultRegion = [(UIPointerInteraction *)self defaultRegion];
  view = [(UIPointerInteraction *)self view];
  [view bounds];
  [defaultRegion setRect:?];

  if (!delegate)
  {
    goto LABEL_7;
  }

  if (synchronous || !self->_delegateImplements.asyncRegionForRequest)
  {
    if (self->_delegateImplements.regionForRequest)
    {
      v15 = [delegate pointerInteraction:self regionForRequest:requestCopy defaultRegion:defaultRegion];
      v11[2](v11, v15);

      goto LABEL_8;
    }

LABEL_7:
    v11[2](v11, defaultRegion);
    goto LABEL_8;
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __87__UIPointerInteraction__queryDelegateForRegionWithRequest_completion_forceSynchronous___block_invoke_2;
  v16[3] = &unk_1E7127EA0;
  v17 = v11;
  [delegate _pointerInteraction:self regionForRequest:requestCopy defaultRegion:defaultRegion completion:v16];

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

- (id)_pointerStyleForRegion:(id)region
{
  v42 = *MEMORY[0x1E69E9840];
  regionCopy = region;
  delegate = [(UIPointerInteraction *)self delegate];
  v6 = delegate;
  if (delegate)
  {
    if (self->_delegateImplements.styleForRegion)
    {
      v7 = [delegate pointerInteraction:self styleForRegion:regionCopy];
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  view = [(UIPointerInteraction *)self view];
  _window = [view _window];

  if (_window)
  {
    v10 = [UITargetedPreview alloc];
    view2 = [(UIPointerInteraction *)self view];
    v12 = [(UITargetedPreview *)v10 initWithView:view2];

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
      selfCopy = self;
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      selfCopy = [v29 stringWithFormat:@"<%@: %p>", v32, selfCopy];
    }

    else
    {
      selfCopy = @"(nil)";
    }

    v20 = selfCopy;
    view3 = [(UIPointerInteraction *)self view];
    if (view3)
    {
      v33 = MEMORY[0x1E696AEC0];
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      v25 = [v33 stringWithFormat:@"<%@: %p>", v35, view3];
    }

    else
    {
      v25 = @"(nil)";
    }

    *buf = 138412802;
    v37 = regionCopy;
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
      selfCopy2 = self;
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      selfCopy2 = [v15 stringWithFormat:@"<%@: %p>", v18, selfCopy2];
    }

    else
    {
      selfCopy2 = @"(nil)";
    }

    v20 = selfCopy2;
    view3 = [(UIPointerInteraction *)self view];
    if (view3)
    {
      v22 = MEMORY[0x1E696AEC0];
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      v25 = [v22 stringWithFormat:@"<%@: %p>", v24, view3];
    }

    else
    {
      v25 = @"(nil)";
    }

    *buf = 138412802;
    v37 = regionCopy;
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

- (void)_updateDebugUIForRegionIfEnabled:(id)enabled
{
  v29[1] = *MEMORY[0x1E69E9840];
  enabledCopy = enabled;
  if (enabledCopy && (+[_UIPointerSettingsDomain rootSettings](_UIPointerSettingsDomain, "rootSettings"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 showRegions], v4, v5))
  {
    if (!_updateDebugUIForRegionIfEnabled____regionDebugView)
    {
      v6 = objc_opt_new();
      v7 = _updateDebugUIForRegionIfEnabled____regionDebugView;
      _updateDebugUIForRegionIfEnabled____regionDebugView = v6;

      layer = [_updateDebugUIForRegionIfEnabled____regionDebugView layer];
      [layer setBorderWidth:1.0];

      v9 = +[UIColor magentaColor];
      v10 = [v9 colorWithAlphaComponent:0.75];
      cGColor = [v10 CGColor];
      layer2 = [_updateDebugUIForRegionIfEnabled____regionDebugView layer];
      [layer2 setBorderColor:cGColor];

      [_updateDebugUIForRegionIfEnabled____regionDebugView setUserInteractionEnabled:0];
    }

    referenceView = [enabledCopy referenceView];
    window = [referenceView window];

    referenceView2 = [enabledCopy referenceView];
    [enabledCopy rect];
    [referenceView2 convertRect:window toView:?];
    [_updateDebugUIForRegionIfEnabled____regionDebugView setFrame:?];

    layer3 = [_updateDebugUIForRegionIfEnabled____regionDebugView layer];
    [layer3 setZPosition:100000.0];

    [window addSubview:_updateDebugUIForRegionIfEnabled____regionDebugView];
    v17 = objc_opt_new();
    referenceView3 = [enabledCopy referenceView];
    layer4 = [referenceView3 layer];
    [v17 setSourceLayer:layer4];

    [v17 setDuration:INFINITY];
    v20 = MEMORY[0x1E696B098];
    [enabledCopy rect];
    v25 = [v20 valueWithCGPoint:{v22 + v21 * 0.5, v24 + v23 * 0.5}];
    v29[0] = v25;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
    [v17 setSourcePoints:v26];

    layer5 = [_updateDebugUIForRegionIfEnabled____regionDebugView layer];
    [layer5 removeAnimationForKey:@"PointerInteractionDebugViewMatchMove"];

    layer6 = [_updateDebugUIForRegionIfEnabled____regionDebugView layer];
    [layer6 addAnimation:v17 forKey:@"PointerInteractionDebugViewMatchMove"];
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