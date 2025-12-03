@interface SBIconZoomAnimator
- (BOOL)isPastPointOfNoReturn;
- (SBIconZoomAnimator)initWithAnimationContainer:(id)container;
- (id)iconViewForIcon:(id)icon;
- (unint64_t)_numberOfSignificantAnimations;
- (void)_animateToFraction:(double)fraction afterDelay:(double)delay withSharedCompletion:(id)completion;
- (void)_applyLabelAlphaFraction:(double)fraction;
- (void)_cleanupAnimation;
- (void)_clearObservers;
- (void)_invalidateAnimationForSignificantIconModelChangesForReason:(id)reason;
- (void)_performAnimationToFraction:(double)fraction withCentralAnimationSettings:(id)settings delay:(double)delay alreadyAnimating:(BOOL)animating sharedCompletion:(id)completion;
- (void)_prepareAnimation;
- (void)_setAnimationFraction:(double)fraction;
- (void)_setDockListView:(id)view;
- (void)_setIconListView:(id)view;
- (void)dealloc;
- (void)enumerateIconsAndIconViewsWithHandler:(id)handler;
- (void)node:(id)node didRemoveContainedNodeIdentifiers:(id)identifiers;
@end

@implementation SBIconZoomAnimator

- (void)_prepareAnimation
{
  v8.receiver = self;
  v8.super_class = SBIconZoomAnimator;
  [(SBIconAnimator *)&v8 _prepareAnimation];
  animationContainer = [(SBIconAnimator *)self animationContainer];
  currentIconListView = [animationContainer currentIconListView];
  [(SBIconZoomAnimator *)self _setIconListView:currentIconListView];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__SBIconZoomAnimator__prepareAnimation__block_invoke;
  v7[3] = &unk_1E808AEC0;
  v7[4] = self;
  [currentIconListView enumerateIconViewsUsingBlock:v7];
  dockIconListView = [animationContainer dockIconListView];
  [(SBIconZoomAnimator *)self _setDockListView:dockIconListView];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__SBIconZoomAnimator__prepareAnimation__block_invoke_2;
  v6[3] = &unk_1E808AEC0;
  v6[4] = self;
  [dockIconListView enumerateIconViewsUsingBlock:v6];
}

void __39__SBIconZoomAnimator__prepareAnimation__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 88);
  v3 = a2;
  v4 = [v3 icon];
  [v2 setObject:v3 forKey:v4];
}

void __39__SBIconZoomAnimator__prepareAnimation__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 96);
  v3 = a2;
  v4 = [v3 icon];
  [v2 setObject:v3 forKey:v4];
}

- (void)_cleanupAnimation
{
  settings = [(SBIconAnimator *)self settings];
  labelAlphaWithZoom = [settings labelAlphaWithZoom];

  if (labelAlphaWithZoom)
  {
    [(SBIconZoomAnimator *)self _applyLabelAlphaFraction:0.0];
  }

  self->_startTime = 0.0;
  if ([(SBIconAnimator *)self invalidated])
  {
    [(SBIconZoomAnimator *)self _clearObservers];
  }

  v5.receiver = self;
  v5.super_class = SBIconZoomAnimator;
  [(SBIconAnimator *)&v5 _cleanupAnimation];
}

- (void)_clearObservers
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"SBIconModelDidLayoutIconStateNotification" object:self->_iconModel];
  [(SBIconListModel *)self->_iconListModel removeNodeObserver:self];
}

- (void)dealloc
{
  [(SBIconZoomAnimator *)self _clearObservers];
  v3.receiver = self;
  v3.super_class = SBIconZoomAnimator;
  [(SBIconAnimator *)&v3 dealloc];
}

- (SBIconZoomAnimator)initWithAnimationContainer:(id)container
{
  containerCopy = container;
  v17.receiver = self;
  v17.super_class = SBIconZoomAnimator;
  v5 = [(SBIconAnimator *)&v17 initWithAnimationContainer:containerCopy];
  if (v5)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    listIconToViewMap = v5->_listIconToViewMap;
    v5->_listIconToViewMap = strongToStrongObjectsMapTable;

    strongToStrongObjectsMapTable2 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    dockIconToViewMap = v5->_dockIconToViewMap;
    v5->_dockIconToViewMap = strongToStrongObjectsMapTable2;

    iconModel = [containerCopy iconModel];
    iconModel = v5->_iconModel;
    v5->_iconModel = iconModel;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel__iconModelDidRelayout_ name:@"SBIconModelDidLayoutIconStateNotification" object:v5->_iconModel];
    currentIconListView = [containerCopy currentIconListView];
    model = [currentIconListView model];
    iconListModel = v5->_iconListModel;
    v5->_iconListModel = model;

    [(SBIconListModel *)v5->_iconListModel addNodeObserver:v5];
  }

  return v5;
}

- (id)iconViewForIcon:(id)icon
{
  iconCopy = icon;
  v5 = [(NSMapTable *)self->_listIconToViewMap objectForKey:iconCopy];
  if (v5 || ([(NSMapTable *)self->_dockIconToViewMap objectForKey:iconCopy], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
  }

  else
  {
    v8 = SBLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SBIconZoomAnimator iconViewForIcon:v8];
    }

    animationContainer = [(SBIconAnimator *)self animationContainer];
    currentIconListView = [animationContainer currentIconListView];

    v6 = [currentIconListView iconViewForIcon:iconCopy];
  }

  return v6;
}

- (void)enumerateIconsAndIconViewsWithHandler:(id)handler
{
  v29 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  keyEnumerator = [(NSMapTable *)self->_listIconToViewMap keyEnumerator];
  v6 = [keyEnumerator countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v11 = [(NSMapTable *)self->_listIconToViewMap objectForKey:v10];
        handlerCopy[2](handlerCopy, v10, v11, 0);
      }

      v7 = [keyEnumerator countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  keyEnumerator2 = [(NSMapTable *)self->_dockIconToViewMap keyEnumerator];
  v13 = [keyEnumerator2 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(keyEnumerator2);
        }

        v17 = *(*(&v19 + 1) + 8 * j);
        v18 = [(NSMapTable *)self->_dockIconToViewMap objectForKey:v17];
        handlerCopy[2](handlerCopy, v17, v18, 1);
      }

      v14 = [keyEnumerator2 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }
}

- (BOOL)isPastPointOfNoReturn
{
  if (BSFloatIsZero())
  {
    return 1;
  }

  CACurrentMediaTime();

  return BSFloatGreaterThanFloat();
}

- (void)_setAnimationFraction:(double)fraction
{
  v7.receiver = self;
  v7.super_class = SBIconZoomAnimator;
  [(SBIconAnimator *)&v7 _setAnimationFraction:?];
  settings = [(SBIconAnimator *)self settings];
  labelAlphaWithZoom = [settings labelAlphaWithZoom];

  if (labelAlphaWithZoom)
  {
    [(SBIconZoomAnimator *)self _applyLabelAlphaFraction:fraction];
  }
}

- (unint64_t)_numberOfSignificantAnimations
{
  v7.receiver = self;
  v7.super_class = SBIconZoomAnimator;
  _numberOfSignificantAnimations = [(SBIconAnimator *)&v7 _numberOfSignificantAnimations];
  settings = [(SBIconAnimator *)self settings];
  v5 = _numberOfSignificantAnimations + [settings labelAlphaWithZoom];

  return v5;
}

- (void)_applyLabelAlphaFraction:(double)fraction
{
  v26 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  objectEnumerator = [(NSMapTable *)self->_listIconToViewMap objectEnumerator];
  v6 = [objectEnumerator countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        [*(*(&v20 + 1) + 8 * v9++) setIconLabelAlpha:1.0 - fraction];
      }

      while (v7 != v9);
      v7 = [objectEnumerator countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  objectEnumerator2 = [(NSMapTable *)self->_dockIconToViewMap objectEnumerator];
  v11 = [objectEnumerator2 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    v14 = 1.0 - fraction;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(objectEnumerator2);
        }

        [*(*(&v16 + 1) + 8 * v15++) setIconLabelAlpha:v14];
      }

      while (v12 != v15);
      v12 = [objectEnumerator2 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v12);
  }
}

- (void)_animateToFraction:(double)fraction afterDelay:(double)delay withSharedCompletion:(id)completion
{
  completionCopy = completion;
  isAnimating = [(SBIconAnimator *)self isAnimating];
  v12.receiver = self;
  v12.super_class = SBIconZoomAnimator;
  [(SBIconAnimator *)&v12 _animateToFraction:completionCopy afterDelay:fraction withSharedCompletion:delay];
  if (!isAnimating)
  {
    self->_startTime = CACurrentMediaTime();
  }

  settings = [(SBIconAnimator *)self settings];
  centralAnimationSettings = [settings centralAnimationSettings];
  [(SBIconZoomAnimator *)self _performAnimationToFraction:centralAnimationSettings withCentralAnimationSettings:isAnimating delay:completionCopy alreadyAnimating:fraction sharedCompletion:delay];
}

- (void)_performAnimationToFraction:(double)fraction withCentralAnimationSettings:(id)settings delay:(double)delay alreadyAnimating:(BOOL)animating sharedCompletion:(id)completion
{
  completionCopy = completion;
  if ((BSFloatIsZero() & 1) != 0 || BSFloatIsOne())
  {
    settings = [(SBIconAnimator *)self settings];
    labelAlphaWithZoom = [settings labelAlphaWithZoom];

    if (labelAlphaWithZoom)
    {
      v13 = MEMORY[0x1E698E7D0];
      centralAnimationFactory = [(SBIconAnimator *)self centralAnimationFactory];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __119__SBIconZoomAnimator__performAnimationToFraction_withCentralAnimationSettings_delay_alreadyAnimating_sharedCompletion___block_invoke;
      v15[3] = &unk_1E8088CB8;
      v15[4] = self;
      *&v15[5] = fraction;
      [v13 animateWithFactory:centralAnimationFactory additionalDelay:2 options:v15 actions:completionCopy completion:delay];
    }
  }
}

- (void)node:(id)node didRemoveContainedNodeIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if ([(NSSet *)self->_criticalIconNodeIdentifiers intersectsSet:?])
  {
    v5 = [(NSSet *)self->_criticalIconNodeIdentifiers mutableCopy];
    [v5 intersectSet:identifiersCopy];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Critical node identifier removed: %@", v5];
    [(SBIconZoomAnimator *)self _invalidateAnimationForSignificantIconModelChangesForReason:v6];
  }
}

- (void)_setIconListView:(id)view
{
  viewCopy = view;
  if (self->_iconListView != viewCopy)
  {
    v6 = viewCopy;
    objc_storeStrong(&self->_iconListView, view);
    viewCopy = v6;
  }
}

- (void)_setDockListView:(id)view
{
  viewCopy = view;
  if (self->_dockListView != viewCopy)
  {
    v6 = viewCopy;
    objc_storeStrong(&self->_dockListView, view);
    viewCopy = v6;
  }
}

- (void)_invalidateAnimationForSignificantIconModelChangesForReason:(id)reason
{
  v11 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  if (![(SBIconAnimator *)self invalidated])
  {
    v5 = SBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
      v7 = 138412546;
      v8 = reasonCopy;
      v9 = 2114;
      v10 = callStackSymbols;
      _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_INFO, "Invalidated icon zoom animation for reason: %@, stack=%{public}@", &v7, 0x16u);
    }

    [(SBIconAnimator *)self setInvalidated:1];
  }
}

@end