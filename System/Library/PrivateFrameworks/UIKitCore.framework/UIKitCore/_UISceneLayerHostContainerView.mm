@interface _UISceneLayerHostContainerView
- (FBScene)scene;
- (NSSet)hostedLayers;
- (NSSet)nonHostedLayers;
- (_UISceneLayerHostContainerView)init;
- (_UISceneLayerHostContainerView)initWithCoder:(id)a3;
- (_UISceneLayerHostContainerView)initWithFrame:(CGRect)a3;
- (_UISceneLayerHostContainerView)initWithScene:(id)a3 debugDescription:(id)a4;
- (_UISceneLayerHostContainerViewDataSource)dataSource;
- (id)_createHostViewForLayer:(id)a3;
- (id)_filteredLayersToPresent;
- (id)_hitTest:(CGPoint)a3 withEvent:(id)a4 windowServerHitTestWindow:(id)a5;
- (id)_presentationContextForLayer:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (id)window;
- (void)_adjustHostViewFrameAlignment:(id)a3;
- (void)_applyBackgroundViewToHierarchy;
- (void)_invalidateAndRemoveAsyncViewsFromHierarchy;
- (void)_presentationContextChangedFrom:(id)a3 toContext:(id)a4 force:(BOOL)a5;
- (void)_rebuildLayersForAsyncPresentationWithReason:(id)a3 withFence:(id)a4;
- (void)_rebuildLayersForNormalPresentationWithReason:(id)a3 withFence:(id)a4;
- (void)_rebuildLayersForReason:(id)a3 withFence:(id)a4;
- (void)_refreshDataSource;
- (void)_setBackgroundView:(id)a3;
- (void)_setDataSource:(id)a3;
- (void)_setPresentationContext:(id)a3;
- (void)_toggleClippingDisabledWithNewContext:(id)a3;
- (void)_toggleInheritsSecurityWithNewContext:(id)a3;
- (void)_toggleResizesHostedContextWithNewContext:(id)a3;
- (void)_toggleStopsHitTestTransformAccumulationWithNewContext:(id)a3;
- (void)_toggleStopsSecureSuperlayersValidationWithNewContext:(id)a3;
- (void)_toggleZombifiesHostedContextWithNewContext:(id)a3;
- (void)_updateAsyncDrawingOptionsInAsyncPresentation;
- (void)_updateRenderingModeForLayersInNormalPresentation;
- (void)dealloc;
- (void)invalidate;
- (void)popDataSource:(id)a3;
- (void)pushDataSource:(id)a3;
- (void)refreshDataSource:(id)a3;
- (void)updateForGeometrySettingsChanges:(id)a3;
@end

@implementation _UISceneLayerHostContainerView

- (void)_invalidateAndRemoveAsyncViewsFromHierarchy
{
  asyncRenderGroupingContext = self->_asyncRenderGroupingContext;
  if (asyncRenderGroupingContext)
  {
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x3032000000;
    v10[3] = __Block_byref_object_copy__95;
    v10[4] = __Block_byref_object_dispose__95;
    v11 = asyncRenderGroupingContext;
    [MEMORY[0x1E6979518] activate];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __77___UISceneLayerHostContainerView__invalidateAndRemoveAsyncViewsFromHierarchy__block_invoke;
    v9[3] = &unk_1E70F2F20;
    v9[4] = v10;
    if (([MEMORY[0x1E6979518] addCommitHandler:v9 forPhase:5] & 1) == 0)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:a2 object:self file:@"_UISceneLayerHostContainerView.m" lineNumber:820 description:{@"failed to register commit handler for phase = kCATransactionPhasePostSynchronize (current is %i)", objc_msgSend(MEMORY[0x1E6979518], "currentPhase")}];
    }

    [(CAContext *)self->_asyncRenderGroupingContext setLayer:0];
    v5 = self->_asyncRenderGroupingContext;
    self->_asyncRenderGroupingContext = 0;

    [(UIView *)self->_asyncRenderGroupingHostView removeFromSuperview];
    asyncRenderGroupingHostView = self->_asyncRenderGroupingHostView;
    self->_asyncRenderGroupingHostView = 0;

    [(UIView *)self->_asyncRenderGroupingContainerView removeFromSuperview];
    [(_UISceneLayerHostContainerView *)self->_asyncRenderGroupingContainerView invalidate];
    asyncRenderGroupingContainerView = self->_asyncRenderGroupingContainerView;
    self->_asyncRenderGroupingContainerView = 0;

    _Block_object_dispose(v10, 8);
  }
}

- (id)_filteredLayersToPresent
{
  v71 = *MEMORY[0x1E69E9840];
  if (self->_invalidated)
  {
    v2 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E695DFA0] orderedSet];
    WeakRetained = objc_loadWeakRetained(&self->_scene);
    v7 = [WeakRetained layerManager];
    v8 = [v7 layers];

    v9 = [(UIScenePresentationContext *)self->_presentationContext _exclusiveLayerTargetsToInclude];
    v39 = v8;
    obj = v9;
    if (v9)
    {
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v40 = [v9 countByEnumeratingWithState:&v62 objects:v70 count:16];
      if (v40)
      {
        v38 = *v63;
        do
        {
          v10 = 0;
          do
          {
            if (*v63 != v38)
            {
              objc_enumerationMutation(obj);
            }

            v41 = v10;
            v11 = *(*(&v62 + 1) + 8 * v10);
            v58 = 0u;
            v59 = 0u;
            v60 = 0u;
            v61 = 0u;
            v12 = v8;
            v13 = [v12 countByEnumeratingWithState:&v58 objects:v69 count:16];
            if (v13)
            {
              v14 = v13;
              v15 = *v59;
              do
              {
                for (i = 0; i != v14; ++i)
                {
                  if (*v59 != v15)
                  {
                    objc_enumerationMutation(v12);
                  }

                  v17 = *(*(&v58 + 1) + 8 * i);
                  if ([v11 matchesLayer:v17])
                  {
                    if ([v5 containsObject:v17])
                    {
                      v18 = [MEMORY[0x1E696AAA8] currentHandler];
                      [v18 handleFailureInMethod:a2 object:self file:@"_UISceneLayerHostContainerView.m" lineNumber:634 description:{@"Cannot have multiple targets matching the same layer: %@: targets=%@", v17, obj}];
                    }

                    else
                    {
                      [v5 addObject:v17];
                    }
                  }
                }

                v14 = [v12 countByEnumeratingWithState:&v58 objects:v69 count:16];
              }

              while (v14);
            }

            v10 = v41 + 1;
            v8 = v39;
          }

          while (v41 + 1 != v40);
          v40 = [obj countByEnumeratingWithState:&v62 objects:v70 count:16];
        }

        while (v40);
      }

      [v5 sortUsingComparator:&__block_literal_global_257];
    }

    else
    {
      [v5 unionOrderedSet:v8];
    }

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v19 = [v5 copy];
    v20 = [v19 countByEnumeratingWithState:&v54 objects:v68 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v55;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v55 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v54 + 1) + 8 * j);
          [(UIScenePresentationContext *)self->_presentationContext presentedLayerTypes];
          [v24 type];
          if ((FBSceneLayerTypeMaskContainsType() & 1) == 0)
          {
            [v5 removeObject:v24];
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v54 objects:v68 count:16];
      }

      while (v21);
    }

    v25 = [(UIScenePresentationContext *)self->_presentationContext layerPresentationOverrides];
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __58___UISceneLayerHostContainerView__filteredLayersToPresent__block_invoke_2;
    v52[3] = &unk_1E7109D00;
    v2 = v5;
    v53 = v2;
    [v25 enumerateKeysAndObjectsUsingBlock:v52];

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v42 = [(UIScenePresentationContext *)self->_presentationContext _layerTargetsToExclude];
    v26 = [v42 countByEnumeratingWithState:&v48 objects:v67 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v49;
      do
      {
        for (k = 0; k != v27; ++k)
        {
          if (*v49 != v28)
          {
            objc_enumerationMutation(v42);
          }

          v30 = *(*(&v48 + 1) + 8 * k);
          v44 = 0u;
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          v31 = [v2 copy];
          v32 = [v31 countByEnumeratingWithState:&v44 objects:v66 count:16];
          if (v32)
          {
            v33 = v32;
            v34 = *v45;
            while (2)
            {
              for (m = 0; m != v33; ++m)
              {
                if (*v45 != v34)
                {
                  objc_enumerationMutation(v31);
                }

                v36 = *(*(&v44 + 1) + 8 * m);
                if ([v30 matchesLayer:v36])
                {
                  [v2 removeObject:v36];
                  goto LABEL_48;
                }
              }

              v33 = [v31 countByEnumeratingWithState:&v44 objects:v66 count:16];
              if (v33)
              {
                continue;
              }

              break;
            }
          }

LABEL_48:
        }

        v27 = [v42 countByEnumeratingWithState:&v48 objects:v67 count:16];
      }

      while (v27);
    }
  }

  return v2;
}

- (void)_applyBackgroundViewToHierarchy
{
  if (self->_asyncRenderGroupingContainerView)
  {
    v3 = [(UIView *)self->_backgroundView superview];

    if (v3 == self)
    {
      [(UIView *)self->_backgroundView removeFromSuperview];
    }

    asyncRenderGroupingContainerView = self->_asyncRenderGroupingContainerView;
    backgroundView = self->_backgroundView;

    [(_UISceneLayerHostContainerView *)asyncRenderGroupingContainerView _setBackgroundView:backgroundView];
  }

  else
  {
    [0 _setBackgroundView:0];
    v6 = self->_backgroundView;

    [(UIView *)self insertSubview:v6 atIndex:0];
  }
}

- (void)_updateRenderingModeForLayersInNormalPresentation
{
  v29 = *MEMORY[0x1E69E9840];
  if ([(UIScenePresentationContext *)self->_presentationContext renderingMode])
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"_UISceneLayerHostContainerView.m" lineNumber:841 description:@"Rendering mode must be normal"];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = self->_hostViews;
  v4 = [(NSMutableOrderedSet *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v23 = *v25;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v24 + 1) + 8 * i);
        v8 = [v7 sceneLayer];
        v9 = [(_UISceneLayerHostContainerView *)self _presentationContextForLayer:v8];

        v10 = [v9 renderingMode];
        v11 = [v9 _minificationFilterName];
        if (!v10)
        {
          v10 = [(UIScenePresentationContext *)self->_presentationContext renderingMode];
          v12 = [(UIScenePresentationContext *)self->_presentationContext _minificationFilterName];

          v11 = v12;
        }

        v13 = objc_opt_class();
        v14 = v7;
        if (v13)
        {
          if (objc_opt_isKindOfClass())
          {
            v15 = v14;
          }

          else
          {
            v15 = 0;
          }
        }

        else
        {
          v15 = 0;
        }

        v16 = v15;

        [v16 setRenderingMode:v10];
        v17 = [(UIScenePresentationContext *)self->_presentationContext asynchronousRenderingOptions];
        [v16 setAsynchronousRenderingOptions:v17];

        v18 = [v16 layer];
        v19 = [(FBSSceneSettings *)self->_effectiveSceneSettings displayConfiguration];
        [v19 scale];
        [v18 setRasterizationScale:?];

        v20 = [v16 layer];

        [v20 setMinificationFilter:v11];
      }

      v5 = [(NSMutableOrderedSet *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v5);
  }
}

- (id)window
{
  v9.receiver = self;
  v9.super_class = _UISceneLayerHostContainerView;
  v3 = [(UIView *)&v9 window];
  if (!v3)
  {
    v5 = [(UIView *)self layer];
    if (v5)
    {
      v6 = v5;
      while (1)
      {
        v7 = [v6 delegate];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          break;
        }

        v3 = [v6 superlayer];

        v6 = v3;
        if (!v3)
        {
          goto LABEL_2;
        }
      }

      v3 = [v6 delegate];
    }

    else
    {
      v3 = 0;
    }
  }

LABEL_2:

  return v3;
}

- (void)_refreshDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v3 = [WeakRetained presentationContextForSceneLayerHostContainerView];
  [(_UISceneLayerHostContainerView *)self _setPresentationContext:v3];

  v4 = [WeakRetained backgroundView];
  [(_UISceneLayerHostContainerView *)self _setBackgroundView:v4];
}

- (void)invalidate
{
  v19 = *MEMORY[0x1E69E9840];
  if (!self->_invalidated)
  {
    v3 = UIScenePresentationLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      WeakRetained = objc_loadWeakRetained(&self->_scene);
      v9 = [WeakRetained identifier];
      debugDescription = self->_debugDescription;
      v11 = 134218754;
      v12 = self;
      v13 = 2114;
      v14 = v7;
      v15 = 2114;
      v16 = v9;
      v17 = 2114;
      v18 = debugDescription;
      _os_log_debug_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEBUG, "%p-%{public}@-%{public}@:%{public}@ - invalidate", &v11, 0x2Au);
    }

    self->_invalidated = 1;
    [(UIView *)self removeFromSuperview];
    v4 = objc_loadWeakRetained(&self->_scene);
    v5 = [v4 layerManager];
    [v5 removeObserver:self];

    objc_storeWeak(&self->_dataSource, 0);
    [(NSMutableSet *)self->_hiddenLayers removeAllObjects];
    [(NSMutableOrderedSet *)self->_hostedLayers removeAllObjects];
    [(NSMutableOrderedSet *)self->_hostViews removeAllObjects];
    [(_UISceneLayerHostContainerView *)self _invalidateAndRemoveAsyncViewsFromHierarchy];
  }
}

- (void)dealloc
{
  v22 = *MEMORY[0x1E69E9840];
  if (!self->_invalidated)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"_UISceneLayerHostContainerView.m" lineNumber:108 description:@"Must be invalidated before deallocating"];
  }

  v3 = UIScenePresentationLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    WeakRetained = objc_loadWeakRetained(&self->_scene);
    v9 = [WeakRetained identifier];
    debugDescription = self->_debugDescription;
    *buf = 134218754;
    v15 = self;
    v16 = 2114;
    v17 = v7;
    v18 = 2114;
    v19 = v9;
    v20 = 2114;
    v21 = debugDescription;
    _os_log_debug_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEBUG, "%p-%{public}@-%{public}@:%{public}@ - dealloc", buf, 0x2Au);
  }

  v4 = objc_loadWeakRetained(&self->_scene);
  v5 = [v4 layerManager];
  [v5 removeObserver:self];

  v13.receiver = self;
  v13.super_class = _UISceneLayerHostContainerView;
  [(UIView *)&v13 dealloc];
}

- (_UISceneLayerHostContainerView)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"_UISceneLayerHostContainerView.m" lineNumber:72 description:@"-[init] is unavailable for this object."];

  return 0;
}

- (_UISceneLayerHostContainerView)initWithFrame:(CGRect)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"_UISceneLayerHostContainerView.m" lineNumber:77 description:@"-[init] is unavailable for this object."];

  return [(_UISceneLayerHostContainerView *)self initWithScene:&stru_1EFB14550 debugDescription:@"invalid"];
}

- (_UISceneLayerHostContainerView)initWithCoder:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"_UISceneLayerHostContainerView.m" lineNumber:82 description:@"-[init] is unavailable for this object."];

  return [(_UISceneLayerHostContainerView *)self initWithScene:&stru_1EFB14550 debugDescription:@"invalid"];
}

- (_UISceneLayerHostContainerView)initWithScene:(id)a3 debugDescription:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"_UISceneLayerHostContainerView.m" lineNumber:87 description:{@"Invalid parameter not satisfying: %@", @"scene"}];
  }

  v9 = [v7 settings];
  [v9 bounds];
  v27.receiver = self;
  v27.super_class = _UISceneLayerHostContainerView;
  v10 = [(UIView *)&v27 initWithFrame:?];

  if (v10)
  {
    v11 = objc_storeWeak(&v10->_scene, v7);
    v12 = [v7 layerManager];
    [v12 addObserver:v10];

    v13 = [v7 settings];
    effectiveSceneSettings = v10->_effectiveSceneSettings;
    v10->_effectiveSceneSettings = v13;

    v15 = [v8 copy];
    debugDescription = v10->_debugDescription;
    v10->_debugDescription = v15;

    v17 = objc_alloc_init(_UITouchPassthroughView);
    innerLayerContainer = v10->_innerLayerContainer;
    v10->_innerLayerContainer = &v17->super;

    v19 = v10->_innerLayerContainer;
    v20 = [v7 settings];
    [v20 bounds];
    [(UIView *)v19 setFrame:?];

    [(UIView *)v10 addSubview:v10->_innerLayerContainer];
    v21 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    hostedLayers = v10->_hostedLayers;
    v10->_hostedLayers = v21;

    v23 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    hostViews = v10->_hostViews;
    v10->_hostViews = v23;

    [(_UISceneLayerHostContainerView *)v10 _rebuildLayersForReason:@"init" withFence:0];
  }

  return v10;
}

- (NSSet)hostedLayers
{
  if (self->_asyncRenderGroupingContainerView)
  {
    [(_UISceneLayerHostContainerView *)self->_asyncRenderGroupingContainerView hostedLayers];
  }

  else
  {
    [(NSMutableOrderedSet *)self->_hostedLayers set];
  }
  v2 = ;

  return v2;
}

- (NSSet)nonHostedLayers
{
  v19 = *MEMORY[0x1E69E9840];
  asyncRenderGroupingContainerView = self->_asyncRenderGroupingContainerView;
  if (asyncRenderGroupingContainerView)
  {
    v4 = [(_UISceneLayerHostContainerView *)asyncRenderGroupingContainerView nonHostedLayers];
  }

  else
  {
    v4 = [MEMORY[0x1E695DFA8] set];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    WeakRetained = objc_loadWeakRetained(&self->_scene);
    v6 = [WeakRetained layerManager];
    v7 = [v6 layers];

    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v14 + 1) + 8 * i);
          if (([(NSMutableOrderedSet *)self->_hostedLayers containsObject:v12]& 1) == 0)
          {
            [v4 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

  return v4;
}

- (void)pushDataSource:(id)a3
{
  v5 = a3;
  v7 = v5;
  if (self->_invalidated)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"_UISceneLayerHostContainerView.m" lineNumber:159 description:@"Unable to push a data source on an invalidated host container"];

    v5 = v7;
  }

  [(_UISceneLayerHostContainerView *)self _setDataSource:v5];
}

- (void)popDataSource:(id)a3
{
  v8 = a3;
  if (self->_invalidated)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"_UISceneLayerHostContainerView.m" lineNumber:165 description:@"Unable to pop a data source on an invalidated host container"];
  }

  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  v6 = v8;
  if (WeakRetained == v8)
  {
    [(_UISceneLayerHostContainerView *)self _setDataSource:0];
    v6 = v8;
  }
}

- (void)refreshDataSource:(id)a3
{
  v8 = a3;
  if (self->_invalidated)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"_UISceneLayerHostContainerView.m" lineNumber:173 description:@"Unable to refresh a data source on an invalidated host container"];
  }

  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  v6 = v8;
  if (WeakRetained == v8)
  {
    [(_UISceneLayerHostContainerView *)self _refreshDataSource];
    v6 = v8;
  }
}

- (void)updateForGeometrySettingsChanges:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (self->_invalidated)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"_UISceneLayerHostContainerView.m" lineNumber:181 description:@"Unable to refresh a data source on an invalidated host container"];
  }

  objc_storeStrong(&self->_effectiveSceneSettings, a3);
  [(FBSSceneSettings *)self->_effectiveSceneSettings bounds];
  [(UIView *)self setFrame:?];
  innerLayerContainer = self->_innerLayerContainer;
  [(FBSSceneSettings *)self->_effectiveSceneSettings bounds];
  [(UIView *)innerLayerContainer setFrame:?];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = self->_hostViews;
  v9 = [(NSMutableOrderedSet *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(_UISceneLayerHostContainerView *)self _adjustHostViewFrameAlignment:*(*(&v14 + 1) + 8 * v12++), v14];
      }

      while (v10 != v12);
      v10 = [(NSMutableOrderedSet *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  if (!self->_asyncRenderGroupingContext)
  {
    [(_UISceneLayerHostContainerView *)self _updateRenderingModeForLayersInNormalPresentation];
  }

  [(_UISceneLayerHostContainerView *)self->_asyncRenderGroupingContainerView updateForGeometrySettingsChanges:v6, v14];
}

- (id)_hitTest:(CGPoint)a3 withEvent:(id)a4 windowServerHitTestWindow:(id)a5
{
  y = a3.y;
  x = a3.x;
  v9 = a4;
  v10 = a5;
  v11 = [(_UISceneLayerHostContainerView *)self window];

  if (v11 == v10)
  {
    v16.receiver = self;
    v16.super_class = _UISceneLayerHostContainerView;
    v13 = [(UIView *)&v16 _hitTest:v9 withEvent:v10 windowServerHitTestWindow:x, y];
    if ([(UIScenePresentationContext *)self->_presentationContext shouldPassthroughHitTestEventsIfTransparent])
    {
      v14 = v13 == self;
    }

    else
    {
      v14 = 0;
    }

    if (v14)
    {
      v12 = 0;
    }

    else
    {
      v12 = v13;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)succinctDescription
{
  v2 = [(_UISceneLayerHostContainerView *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v5 = [WeakRetained identifier];
  v6 = [v3 appendObject:v5 withName:@"sceneID" skipIfNil:1];

  v7 = [v3 appendObject:self->_debugDescription withName:@"debugDescription" skipIfNil:1];
  [(UIView *)self frame];
  v8 = [v3 appendRect:@"frame" withName:?];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_UISceneLayerHostContainerView *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(_UISceneLayerHostContainerView *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72___UISceneLayerHostContainerView_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E70F35B8;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

  v7 = v6;
  return v6;
}

- (void)_setDataSource:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_dataSource, obj);
    [(_UISceneLayerHostContainerView *)self _refreshDataSource];
    v5 = obj;
  }
}

- (void)_setBackgroundView:(id)a3
{
  v5 = a3;
  backgroundView = self->_backgroundView;
  if (backgroundView != v5)
  {
    v8 = v5;
    v7 = backgroundView;
    objc_storeStrong(&self->_backgroundView, a3);
    [(_UISceneLayerHostContainerView *)self _applyBackgroundViewToHierarchy];
    if (v7)
    {
      [(UIView *)v7 removeFromSuperview];
    }

    v5 = v8;
  }
}

- (void)_setPresentationContext:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  presentationContext = self->_presentationContext;
  if (presentationContext != v5)
  {
    v7 = presentationContext;
    objc_storeStrong(&self->_presentationContext, a3);
    [(_UISceneLayerHostContainerView *)self _presentationContextChangedFrom:v7 toContext:self->_presentationContext force:0];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = self->_hostViews;
    v9 = [(NSMutableOrderedSet *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v14 + 1) + 8 * v12++) setCurrentPresentationContext:{v5, v14}];
        }

        while (v10 != v12);
        v10 = [(NSMutableOrderedSet *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }

    if (self->_asyncRenderGroupingContainerView)
    {
      v13 = [(UIScenePresentationContext *)self->_presentationContext mutableCopy];
      [v13 setRenderingMode:0];
      [(_UISceneLayerHostContainerView *)self->_asyncRenderGroupingContainerView _setPresentationContext:v13];
    }
  }
}

- (void)_presentationContextChangedFrom:(id)a3 toContext:(id)a4 force:(BOOL)a5
{
  v30 = a3;
  v8 = a4;
  v9 = [v30 presentedLayerTypes];
  v10 = [v8 presentedLayerTypes];
  v11 = [v30 _exclusiveLayerTargetsToInclude];
  v12 = [v8 _exclusiveLayerTargetsToInclude];
  v13 = BSEqualSets();

  v14 = [v30 _layerTargetsToExclude];
  v15 = [v8 _layerTargetsToExclude];
  v16 = BSEqualSets();

  v17 = [v30 layerPresentationOverrides];
  v18 = [v8 layerPresentationOverrides];
  v19 = BSEqualDictionaries();

  LOBYTE(v17) = [v30 renderingMode] == 1;
  v20 = v17 ^ ([v8 renderingMode] != 1);
  if (v20)
  {
    v21 = 0;
    if (!a5)
    {
      goto LABEL_3;
    }

LABEL_27:
    [(_UISceneLayerHostContainerView *)self _rebuildLayersForReason:@"forced" withFence:v21];
    [(_UISceneLayerHostContainerView *)self _toggleClippingDisabledWithNewContext:v8];
    [(_UISceneLayerHostContainerView *)self _toggleInheritsSecurityWithNewContext:v8];
    [(_UISceneLayerHostContainerView *)self _toggleResizesHostedContextWithNewContext:v8];
    [(_UISceneLayerHostContainerView *)self _toggleZombifiesHostedContextWithNewContext:v8];
    [(_UISceneLayerHostContainerView *)self _toggleStopsHitTestTransformAccumulationWithNewContext:v8];
    [(_UISceneLayerHostContainerView *)self _toggleStopsSecureSuperlayersValidationWithNewContext:v8];
    goto LABEL_28;
  }

  v21 = +[(UIScene *)UIWindowScene];
  if (a5)
  {
    goto LABEL_27;
  }

LABEL_3:
  if (v9 == v10)
  {
    v22 = @"layer presentation overrides changed";
  }

  else
  {
    v22 = @"presented layer types changed";
  }

  v23 = v30;
  if (((v9 == v10) & v19) != 1 || ((v13 & v16) == 0 ? (v22 = @"included or excluded windows changed") : (v22 = @"async render grouping changed"), ((v13 & v16) & v20 & 1) == 0))
  {
    [(_UISceneLayerHostContainerView *)self _rebuildLayersForReason:v22 withFence:v21];
    v23 = v30;
  }

  [v23 isClippingDisabled];
  [v8 isClippingDisabled];
  if ((BSEqualBools() & 1) == 0)
  {
    [(_UISceneLayerHostContainerView *)self _toggleClippingDisabledWithNewContext:v8];
  }

  [v30 inheritsSecurity];
  [v8 inheritsSecurity];
  if ((BSEqualBools() & 1) == 0)
  {
    [(_UISceneLayerHostContainerView *)self _toggleInheritsSecurityWithNewContext:v8];
  }

  [v30 resizesHostedContext];
  [v8 resizesHostedContext];
  if ((BSEqualBools() & 1) == 0)
  {
    [(_UISceneLayerHostContainerView *)self _toggleResizesHostedContextWithNewContext:v8];
  }

  [v30 zombifiesHostedContext];
  [v8 zombifiesHostedContext];
  if ((BSEqualBools() & 1) == 0)
  {
    [(_UISceneLayerHostContainerView *)self _toggleZombifiesHostedContextWithNewContext:v8];
  }

  [v30 stopsHitTestTransformAccumulation];
  [v8 stopsHitTestTransformAccumulation];
  if ((BSEqualBools() & 1) == 0)
  {
    [(_UISceneLayerHostContainerView *)self _toggleStopsHitTestTransformAccumulationWithNewContext:v8];
  }

  [v30 stopsSecureSuperlayersValidation];
  [v8 stopsSecureSuperlayersValidation];
  if ((BSEqualBools() & 1) == 0)
  {
    [(_UISceneLayerHostContainerView *)self _toggleStopsSecureSuperlayersValidationWithNewContext:v8];
  }

  v24 = [v30 _minificationFilterName];
  v25 = [v8 _minificationFilterName];
  v26 = v25;
  if (v24 == v25)
  {
    v27 = [v30 asynchronousRenderingOptions];
    v28 = [v8 asynchronousRenderingOptions];
    v29 = BSEqualObjects();

    if (v29)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

LABEL_28:
  if (self->_asyncRenderGroupingContext)
  {
    [(_UISceneLayerHostContainerView *)self _updateAsyncDrawingOptionsInAsyncPresentation];
  }

  else
  {
    [(_UISceneLayerHostContainerView *)self _updateRenderingModeForLayersInNormalPresentation];
  }

LABEL_32:
  if (v21)
  {
    [v21 invalidate];
  }
}

- (void)_toggleClippingDisabledWithNewContext:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_hostViews;
  v6 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 sceneLayer];
        v12 = [(_UISceneLayerHostContainerView *)self _presentationContextForLayer:v11];

        if ([v12 isClippingDisabled])
        {
          v13 = 0;
        }

        else
        {
          v13 = [v4 isClippingDisabled] ^ 1;
        }

        [v10 setClipsToBounds:v13];
      }

      v7 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (void)_toggleInheritsSecurityWithNewContext:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_hostViews;
  v6 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) setInheritsSecurity:{objc_msgSend(v4, "inheritsSecurity", v10)}];
      }

      while (v7 != v9);
      v7 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_toggleResizesHostedContextWithNewContext:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_hostViews;
  v6 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) setResizesHostedContext:{objc_msgSend(v4, "resizesHostedContext", v10)}];
      }

      while (v7 != v9);
      v7 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_toggleZombifiesHostedContextWithNewContext:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_hostViews;
  v6 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) setZombifiesHostedContext:{objc_msgSend(v4, "zombifiesHostedContext", v10)}];
      }

      while (v7 != v9);
      v7 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_toggleStopsHitTestTransformAccumulationWithNewContext:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_hostViews;
  v6 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) setStopsHitTestTransformAccumulation:{objc_msgSend(v4, "stopsHitTestTransformAccumulation", v10)}];
      }

      while (v7 != v9);
      v7 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_toggleStopsSecureSuperlayersValidationWithNewContext:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_hostViews;
  v6 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) setStopsSecureSuperlayersValidation:{objc_msgSend(v4, "stopsSecureSuperlayersValidation", v10)}];
      }

      while (v7 != v9);
      v7 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)_createHostViewForLayer:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_invalidated)
  {
    v6 = 0;
    goto LABEL_14;
  }

  if ([v4 contextID])
  {
    v6 = [[_UIContextLayerHostView alloc] initWithSceneLayer:v5];
  }

  else
  {
    if ([v5 type] == 3 && -[_UISceneLayerHostContainerView _canShowKeyboardLayer](self, "_canShowKeyboardLayer"))
    {
      v7 = [_UIKeyboardLayerHostView alloc];
      WeakRetained = objc_loadWeakRetained(&self->_scene);
      v9 = [(_UIKeyboardLayerHostView *)v7 initWithKeyboardLayer:v5 owningScene:WeakRetained];
    }

    else
    {
      if ([v5 type] != 4 || !-[_UISceneLayerHostContainerView _canShowKeyboardLayer](self, "_canShowKeyboardLayer"))
      {
        v6 = 0;
        goto LABEL_13;
      }

      v10 = [_UIKeyboardLayerHostView alloc];
      WeakRetained = objc_loadWeakRetained(&self->_scene);
      v9 = [(_UIKeyboardLayerHostView *)v10 initWithKeyboardProxyLayer:v5 owningScene:WeakRetained];
    }

    v6 = v9;
  }

LABEL_13:
  [(_UISceneLayerHostView *)v6 setCurrentPresentationContext:self->_presentationContext];
LABEL_14:

  return v6;
}

- (void)_adjustHostViewFrameAlignment:(id)a3
{
  v4 = a3;
  v36 = *(MEMORY[0x1E695EFD0] + 16);
  v37 = *MEMORY[0x1E695EFD0];
  *&v41.a = *MEMORY[0x1E695EFD0];
  *&v41.c = v36;
  v35 = *(MEMORY[0x1E695EFD0] + 32);
  *&v41.tx = v35;
  [(UIView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [v4 sceneLayer];
  v14 = [v13 alignment];

  if (v14 == 1)
  {
    v15 = [(FBSSceneSettings *)self->_effectiveSceneSettings interfaceOrientation];
    [(FBSSceneSettings *)self->_effectiveSceneSettings frame];
    v17 = v16;
    v19 = v18;
    v21 = -v20;
    v23 = -v22;
    v24 = [(FBSSceneSettings *)self->_effectiveSceneSettings displayConfiguration];
    [v24 bounds];
    v26 = v25;
    v28 = v27;

    v6 = _UIWindowConvertRectFromOrientationToOrientation(1, v15, v21, v23, v26, v28, v17, v19);
    v8 = v29;
    v10 = v30;
    v12 = v31;
    switch(v15)
    {
      case 1:
        v32 = 0.0;
        break;
      case 3:
        v32 = 1.57079633;
        break;
      case 4:
        v32 = -1.57079633;
        break;
      default:
        v32 = 3.14159265;
        if (v15 != 2)
        {
          v32 = 0.0;
        }

        break;
    }

    CGAffineTransformMakeRotation(&t2, -v32);
    *&t2.a = vrndaq_f64(*&t2.a);
    *&t2.c = vrndaq_f64(*&t2.c);
    *&t2.tx = vrndaq_f64(*&t2.tx);
    v40 = t2;
    [v4 setCounterTransformView:1];
    v41 = v40;
  }

  v40 = v41;
  [v4 setTransform:&v40];
  [v4 setFrame:{v6, v8, v10, v12}];
  v40 = v41;
  v33 = [v4 transformer];
  v34 = v33;
  if (v33)
  {
    [v33 transform];
    *&t1.a = v37;
    *&t1.c = v36;
    *&t1.tx = v35;
    if (!CGAffineTransformEqualToTransform(&t1, &t2))
    {
      [v34 transform];
      t1 = v41;
      CGAffineTransformConcat(&v40, &t1, &t2);
      t2 = v40;
      [v4 setTransform:&t2];
    }
  }
}

- (void)_rebuildLayersForReason:(id)a3 withFence:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = UIScenePresentationLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [(_UISceneLayerHostContainerView *)self scene];
    v12 = [v11 identifier];
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v14 = [WeakRetained identifier];
    v15 = 134219010;
    v16 = self;
    v17 = 2114;
    v18 = v10;
    v19 = 2114;
    v20 = v12;
    v21 = 2114;
    v22 = v14;
    v23 = 2114;
    v24 = v6;
    _os_log_debug_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEBUG, "%p-%{public}@-%{public}@:%{public}@ - rebuilding layers for reason: %{public}@", &v15, 0x34u);
  }

  if ([(UIScenePresentationContext *)self->_presentationContext renderingMode]== 1)
  {
    [(_UISceneLayerHostContainerView *)self _rebuildLayersForAsyncPresentationWithReason:v6 withFence:v7];
  }

  else
  {
    [(_UISceneLayerHostContainerView *)self _rebuildLayersForNormalPresentationWithReason:v6 withFence:v7];
  }
}

- (void)_rebuildLayersForAsyncPresentationWithReason:(id)a3 withFence:(id)a4
{
  v60 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = UIScenePresentationLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v35 = objc_opt_class();
    NSStringFromClass(v35);
    v37 = v36 = v6;
    v38 = [(_UISceneLayerHostContainerView *)self scene];
    v39 = [v38 identifier];
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v41 = [WeakRetained identifier];
    *buf = 134219010;
    v51 = self;
    v52 = 2114;
    v53 = v37;
    v54 = 2114;
    v55 = v39;
    v56 = 2114;
    v57 = v41;
    v58 = 2114;
    v59 = v36;
    _os_log_debug_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEBUG, "%p-%{public}@-%{public}@:%{public}@ - async rendering scene for reason: %{public}@", buf, 0x34u);

    v6 = v36;
  }

  if (!self->_asyncRenderGroupingContext)
  {
    v42 = v6;
    v9 = [(NSMutableOrderedSet *)self->_hostViews mutableCopy];
    [(NSMutableOrderedSet *)self->_hostedLayers removeAllObjects];
    [(NSMutableOrderedSet *)self->_hostViews removeAllObjects];
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v44;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v44 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v43 + 1) + 8 * i) removeFromSuperview];
        }

        v12 = [v10 countByEnumeratingWithState:&v43 objects:v49 count:16];
      }

      while (v12);
    }

    v15 = MEMORY[0x1E6979320];
    v47 = *MEMORY[0x1E69796D0];
    v48 = MEMORY[0x1E695E118];
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    v17 = [v15 remoteContextWithOptions:v16];
    asyncRenderGroupingContext = self->_asyncRenderGroupingContext;
    self->_asyncRenderGroupingContext = v17;

    if (v7)
    {
      [(CAContext *)self->_asyncRenderGroupingContext addFence:v7];
    }

    v19 = [_UISceneLayerHostContainerView alloc];
    v20 = objc_loadWeakRetained(&self->_scene);
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<AsyncContainerForParentContainer-%p>", self];
    v22 = [(_UISceneLayerHostContainerView *)v19 initWithScene:v20 debugDescription:v21];
    asyncRenderGroupingContainerView = self->_asyncRenderGroupingContainerView;
    self->_asyncRenderGroupingContainerView = v22;

    [(_UISceneLayerHostContainerView *)self->_asyncRenderGroupingContainerView _setBackgroundView:self->_backgroundView];
    v24 = self->_asyncRenderGroupingContext;
    v25 = [(UIView *)self->_asyncRenderGroupingContainerView layer];
    [(CAContext *)v24 setLayer:v25];

    v26 = [MEMORY[0x1E699FAA8] layerWithCAContext:self->_asyncRenderGroupingContext];
    v27 = [_UIContextLayerHostView alloc];
    v28 = [NSClassFromString(&cfstr_Fbscenelayer.isa) layerWithFBSSceneLayer:v26];
    v29 = [(_UIContextLayerHostView *)v27 initWithSceneLayer:v28];
    asyncRenderGroupingHostView = self->_asyncRenderGroupingHostView;
    self->_asyncRenderGroupingHostView = v29;

    [(_UIContextLayerHostView *)self->_asyncRenderGroupingHostView setRenderingMode:1];
    v31 = self->_asyncRenderGroupingHostView;
    v32 = [(UIScenePresentationContext *)self->_presentationContext asynchronousRenderingOptions];
    [(_UIContextLayerHostView *)v31 setAsynchronousRenderingOptions:v32];

    hostedLayers = self->_hostedLayers;
    v34 = [(_UISceneLayerHostView *)self->_asyncRenderGroupingHostView sceneLayer];
    [(NSMutableOrderedSet *)hostedLayers addObject:v34];

    [(NSMutableOrderedSet *)self->_hostViews addObject:self->_asyncRenderGroupingHostView];
    [(UIView *)self->_innerLayerContainer insertSubview:self->_asyncRenderGroupingHostView atIndex:0];

    v6 = v42;
  }

  [(_UISceneLayerHostContainerView *)self->_asyncRenderGroupingContainerView _rebuildLayersForReason:@"parent async layer rebuild required" withFence:0];
  [(_UISceneLayerHostContainerView *)self _updateAsyncDrawingOptionsInAsyncPresentation];
  [(_UISceneLayerHostContainerView *)self _adjustHostViewFrameAlignment:self->_asyncRenderGroupingHostView];
}

- (void)_rebuildLayersForNormalPresentationWithReason:(id)a3 withFence:(id)a4
{
  v53 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if ([(UIScenePresentationContext *)self->_presentationContext renderingMode])
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"_UISceneLayerHostContainerView.m" lineNumber:739 description:@"Rendering mode must be normal here"];
  }

  v9 = [(NSMutableOrderedSet *)self->_hostedLayers mutableCopy];
  v10 = [(NSMutableOrderedSet *)self->_hostViews mutableCopy];
  [(NSMutableOrderedSet *)self->_hostedLayers removeAllObjects];
  [(NSMutableOrderedSet *)self->_hostViews removeAllObjects];
  if (v8)
  {
    asyncRenderGroupingContext = self->_asyncRenderGroupingContext;
    if (asyncRenderGroupingContext)
    {
      [(CAContext *)asyncRenderGroupingContext addFence:v8];
    }
  }

  [(_UISceneLayerHostContainerView *)self _invalidateAndRemoveAsyncViewsFromHierarchy];
  v12 = [(_UISceneLayerHostContainerView *)self _filteredLayersToPresent];
  v13 = UIScenePresentationLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v23 = objc_opt_class();
    v29 = NSStringFromClass(v23);
    v28 = [(_UISceneLayerHostContainerView *)self scene];
    v26 = [v28 identifier];
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    [WeakRetained identifier];
    *buf = 134219266;
    v42 = self;
    v43 = 2114;
    v44 = v29;
    v45 = 2114;
    v46 = v26;
    v48 = v47 = 2114;
    v24 = v48;
    v49 = 2114;
    v50 = v7;
    v51 = 2114;
    v52 = v12;
    _os_log_debug_impl(&dword_188A29000, v13, OS_LOG_TYPE_DEBUG, "%p-%{public}@-%{public}@:%{public}@ - reason: %{public}@, new layers: %{public}@", buf, 0x3Eu);
  }

  v14 = [(UIScenePresentationContext *)self->_presentationContext isClippingDisabled];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __90___UISceneLayerHostContainerView__rebuildLayersForNormalPresentationWithReason_withFence___block_invoke;
  v34[3] = &unk_1E7109D28;
  v15 = v9;
  v35 = v15;
  v16 = v10;
  v37 = self;
  v38 = a2;
  v36 = v16;
  v39 = v14;
  [v12 enumerateObjectsUsingBlock:v34];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v17 = v16;
  v18 = [v17 countByEnumeratingWithState:&v30 objects:v40 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v31;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v31 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [*(*(&v30 + 1) + 8 * i) removeFromSuperview];
      }

      v19 = [v17 countByEnumeratingWithState:&v30 objects:v40 count:16];
    }

    while (v19);
  }

  v22 = [(UIView *)self->_backgroundView superview];

  if (v22 != self)
  {
    [(_UISceneLayerHostContainerView *)self _applyBackgroundViewToHierarchy];
  }

  [(_UISceneLayerHostContainerView *)self _updateRenderingModeForLayersInNormalPresentation];
}

- (void)_updateAsyncDrawingOptionsInAsyncPresentation
{
  if ([(UIScenePresentationContext *)self->_presentationContext renderingMode]!= 1)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_UISceneLayerHostContainerView.m" lineNumber:833 description:@"Rendering mode must be async"];
  }

  [(_UIContextLayerHostView *)self->_asyncRenderGroupingHostView setRenderingMode:1];
  asyncRenderGroupingHostView = self->_asyncRenderGroupingHostView;
  v5 = [(UIScenePresentationContext *)self->_presentationContext asynchronousRenderingOptions];
  [(_UIContextLayerHostView *)asyncRenderGroupingHostView setAsynchronousRenderingOptions:v5];

  v6 = [(_UIContextLayerHostView *)self->_asyncRenderGroupingHostView layer];
  v7 = [(FBSSceneSettings *)self->_effectiveSceneSettings displayConfiguration];
  [v7 scale];
  [v6 setRasterizationScale:?];

  v10 = [(_UIContextLayerHostView *)self->_asyncRenderGroupingHostView layer];
  v8 = [(UIScenePresentationContext *)self->_presentationContext _minificationFilterName];
  [v10 setMinificationFilter:v8];
}

- (id)_presentationContextForLayer:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__95;
  v18 = __Block_byref_object_dispose__95;
  v19 = 0;
  v5 = [(UIScenePresentationContext *)self->_presentationContext layerPresentationOverrides];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63___UISceneLayerHostContainerView__presentationContextForLayer___block_invoke;
  v11[3] = &unk_1E7109D50;
  v6 = v4;
  v12 = v6;
  v13 = &v14;
  [v5 enumerateKeysAndObjectsUsingBlock:v11];

  v7 = v15[5];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = objc_alloc_init(UISceneLayerPresentationContext);
  }

  v9 = v8;

  _Block_object_dispose(&v14, 8);

  return v9;
}

- (_UISceneLayerHostContainerViewDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (FBScene)scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

@end