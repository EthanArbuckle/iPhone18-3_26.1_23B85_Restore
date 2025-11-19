@interface SBIconZoomAnimator
- (BOOL)isPastPointOfNoReturn;
- (SBIconZoomAnimator)initWithAnimationContainer:(id)a3;
- (id)iconViewForIcon:(id)a3;
- (unint64_t)_numberOfSignificantAnimations;
- (void)_animateToFraction:(double)a3 afterDelay:(double)a4 withSharedCompletion:(id)a5;
- (void)_applyLabelAlphaFraction:(double)a3;
- (void)_cleanupAnimation;
- (void)_clearObservers;
- (void)_invalidateAnimationForSignificantIconModelChangesForReason:(id)a3;
- (void)_performAnimationToFraction:(double)a3 withCentralAnimationSettings:(id)a4 delay:(double)a5 alreadyAnimating:(BOOL)a6 sharedCompletion:(id)a7;
- (void)_prepareAnimation;
- (void)_setAnimationFraction:(double)a3;
- (void)_setDockListView:(id)a3;
- (void)_setIconListView:(id)a3;
- (void)dealloc;
- (void)enumerateIconsAndIconViewsWithHandler:(id)a3;
- (void)node:(id)a3 didRemoveContainedNodeIdentifiers:(id)a4;
@end

@implementation SBIconZoomAnimator

- (void)_prepareAnimation
{
  v8.receiver = self;
  v8.super_class = SBIconZoomAnimator;
  [(SBIconAnimator *)&v8 _prepareAnimation];
  v3 = [(SBIconAnimator *)self animationContainer];
  v4 = [v3 currentIconListView];
  [(SBIconZoomAnimator *)self _setIconListView:v4];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__SBIconZoomAnimator__prepareAnimation__block_invoke;
  v7[3] = &unk_1E808AEC0;
  v7[4] = self;
  [v4 enumerateIconViewsUsingBlock:v7];
  v5 = [v3 dockIconListView];
  [(SBIconZoomAnimator *)self _setDockListView:v5];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__SBIconZoomAnimator__prepareAnimation__block_invoke_2;
  v6[3] = &unk_1E808AEC0;
  v6[4] = self;
  [v5 enumerateIconViewsUsingBlock:v6];
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
  v3 = [(SBIconAnimator *)self settings];
  v4 = [v3 labelAlphaWithZoom];

  if (v4)
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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"SBIconModelDidLayoutIconStateNotification" object:self->_iconModel];
  [(SBIconListModel *)self->_iconListModel removeNodeObserver:self];
}

- (void)dealloc
{
  [(SBIconZoomAnimator *)self _clearObservers];
  v3.receiver = self;
  v3.super_class = SBIconZoomAnimator;
  [(SBIconAnimator *)&v3 dealloc];
}

- (SBIconZoomAnimator)initWithAnimationContainer:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = SBIconZoomAnimator;
  v5 = [(SBIconAnimator *)&v17 initWithAnimationContainer:v4];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    listIconToViewMap = v5->_listIconToViewMap;
    v5->_listIconToViewMap = v6;

    v8 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    dockIconToViewMap = v5->_dockIconToViewMap;
    v5->_dockIconToViewMap = v8;

    v10 = [v4 iconModel];
    iconModel = v5->_iconModel;
    v5->_iconModel = v10;

    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    [v12 addObserver:v5 selector:sel__iconModelDidRelayout_ name:@"SBIconModelDidLayoutIconStateNotification" object:v5->_iconModel];
    v13 = [v4 currentIconListView];
    v14 = [v13 model];
    iconListModel = v5->_iconListModel;
    v5->_iconListModel = v14;

    [(SBIconListModel *)v5->_iconListModel addNodeObserver:v5];
  }

  return v5;
}

- (id)iconViewForIcon:(id)a3
{
  v4 = a3;
  v5 = [(NSMapTable *)self->_listIconToViewMap objectForKey:v4];
  if (v5 || ([(NSMapTable *)self->_dockIconToViewMap objectForKey:v4], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
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

    v9 = [(SBIconAnimator *)self animationContainer];
    v10 = [v9 currentIconListView];

    v6 = [v10 iconViewForIcon:v4];
  }

  return v6;
}

- (void)enumerateIconsAndIconViewsWithHandler:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = [(NSMapTable *)self->_listIconToViewMap keyEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v11 = [(NSMapTable *)self->_listIconToViewMap objectForKey:v10];
        v4[2](v4, v10, v11, 0);
      }

      v7 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = [(NSMapTable *)self->_dockIconToViewMap keyEnumerator];
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
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
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v19 + 1) + 8 * j);
        v18 = [(NSMapTable *)self->_dockIconToViewMap objectForKey:v17];
        v4[2](v4, v17, v18, 1);
      }

      v14 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
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

- (void)_setAnimationFraction:(double)a3
{
  v7.receiver = self;
  v7.super_class = SBIconZoomAnimator;
  [(SBIconAnimator *)&v7 _setAnimationFraction:?];
  v5 = [(SBIconAnimator *)self settings];
  v6 = [v5 labelAlphaWithZoom];

  if (v6)
  {
    [(SBIconZoomAnimator *)self _applyLabelAlphaFraction:a3];
  }
}

- (unint64_t)_numberOfSignificantAnimations
{
  v7.receiver = self;
  v7.super_class = SBIconZoomAnimator;
  v3 = [(SBIconAnimator *)&v7 _numberOfSignificantAnimations];
  v4 = [(SBIconAnimator *)self settings];
  v5 = v3 + [v4 labelAlphaWithZoom];

  return v5;
}

- (void)_applyLabelAlphaFraction:(double)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [(NSMapTable *)self->_listIconToViewMap objectEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v20 + 1) + 8 * v9++) setIconLabelAlpha:1.0 - a3];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = [(NSMapTable *)self->_dockIconToViewMap objectEnumerator];
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    v14 = 1.0 - a3;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v16 + 1) + 8 * v15++) setIconLabelAlpha:v14];
      }

      while (v12 != v15);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v12);
  }
}

- (void)_animateToFraction:(double)a3 afterDelay:(double)a4 withSharedCompletion:(id)a5
{
  v8 = a5;
  v9 = [(SBIconAnimator *)self isAnimating];
  v12.receiver = self;
  v12.super_class = SBIconZoomAnimator;
  [(SBIconAnimator *)&v12 _animateToFraction:v8 afterDelay:a3 withSharedCompletion:a4];
  if (!v9)
  {
    self->_startTime = CACurrentMediaTime();
  }

  v10 = [(SBIconAnimator *)self settings];
  v11 = [v10 centralAnimationSettings];
  [(SBIconZoomAnimator *)self _performAnimationToFraction:v11 withCentralAnimationSettings:v9 delay:v8 alreadyAnimating:a3 sharedCompletion:a4];
}

- (void)_performAnimationToFraction:(double)a3 withCentralAnimationSettings:(id)a4 delay:(double)a5 alreadyAnimating:(BOOL)a6 sharedCompletion:(id)a7
{
  v10 = a7;
  if ((BSFloatIsZero() & 1) != 0 || BSFloatIsOne())
  {
    v11 = [(SBIconAnimator *)self settings];
    v12 = [v11 labelAlphaWithZoom];

    if (v12)
    {
      v13 = MEMORY[0x1E698E7D0];
      v14 = [(SBIconAnimator *)self centralAnimationFactory];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __119__SBIconZoomAnimator__performAnimationToFraction_withCentralAnimationSettings_delay_alreadyAnimating_sharedCompletion___block_invoke;
      v15[3] = &unk_1E8088CB8;
      v15[4] = self;
      *&v15[5] = a3;
      [v13 animateWithFactory:v14 additionalDelay:2 options:v15 actions:v10 completion:a5];
    }
  }
}

- (void)node:(id)a3 didRemoveContainedNodeIdentifiers:(id)a4
{
  v7 = a4;
  if ([(NSSet *)self->_criticalIconNodeIdentifiers intersectsSet:?])
  {
    v5 = [(NSSet *)self->_criticalIconNodeIdentifiers mutableCopy];
    [v5 intersectSet:v7];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Critical node identifier removed: %@", v5];
    [(SBIconZoomAnimator *)self _invalidateAnimationForSignificantIconModelChangesForReason:v6];
  }
}

- (void)_setIconListView:(id)a3
{
  v5 = a3;
  if (self->_iconListView != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_iconListView, a3);
    v5 = v6;
  }
}

- (void)_setDockListView:(id)a3
{
  v5 = a3;
  if (self->_dockListView != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_dockListView, a3);
    v5 = v6;
  }
}

- (void)_invalidateAnimationForSignificantIconModelChangesForReason:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![(SBIconAnimator *)self invalidated])
  {
    v5 = SBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v7 = 138412546;
      v8 = v4;
      v9 = 2114;
      v10 = v6;
      _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_INFO, "Invalidated icon zoom animation for reason: %@, stack=%{public}@", &v7, 0x16u);
    }

    [(SBIconAnimator *)self setInvalidated:1];
  }
}

@end