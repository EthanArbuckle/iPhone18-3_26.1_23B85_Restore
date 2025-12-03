@interface _UISceneLayerHostContainerView
- (FBScene)scene;
- (NSSet)hostedLayers;
- (NSSet)nonHostedLayers;
- (_UISceneLayerHostContainerView)init;
- (_UISceneLayerHostContainerView)initWithCoder:(id)coder;
- (_UISceneLayerHostContainerView)initWithFrame:(CGRect)frame;
- (_UISceneLayerHostContainerView)initWithScene:(id)scene debugDescription:(id)description;
- (_UISceneLayerHostContainerViewDataSource)dataSource;
- (id)_createHostViewForLayer:(id)layer;
- (id)_filteredLayersToPresent;
- (id)_hitTest:(CGPoint)test withEvent:(id)event windowServerHitTestWindow:(id)window;
- (id)_presentationContextForLayer:(id)layer;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (id)window;
- (void)_adjustHostViewFrameAlignment:(id)alignment;
- (void)_applyBackgroundViewToHierarchy;
- (void)_invalidateAndRemoveAsyncViewsFromHierarchy;
- (void)_presentationContextChangedFrom:(id)from toContext:(id)context force:(BOOL)force;
- (void)_rebuildLayersForAsyncPresentationWithReason:(id)reason withFence:(id)fence;
- (void)_rebuildLayersForNormalPresentationWithReason:(id)reason withFence:(id)fence;
- (void)_rebuildLayersForReason:(id)reason withFence:(id)fence;
- (void)_refreshDataSource;
- (void)_setBackgroundView:(id)view;
- (void)_setDataSource:(id)source;
- (void)_setPresentationContext:(id)context;
- (void)_toggleClippingDisabledWithNewContext:(id)context;
- (void)_toggleInheritsSecurityWithNewContext:(id)context;
- (void)_toggleResizesHostedContextWithNewContext:(id)context;
- (void)_toggleStopsHitTestTransformAccumulationWithNewContext:(id)context;
- (void)_toggleStopsSecureSuperlayersValidationWithNewContext:(id)context;
- (void)_toggleZombifiesHostedContextWithNewContext:(id)context;
- (void)_updateAsyncDrawingOptionsInAsyncPresentation;
- (void)_updateRenderingModeForLayersInNormalPresentation;
- (void)dealloc;
- (void)invalidate;
- (void)popDataSource:(id)source;
- (void)pushDataSource:(id)source;
- (void)refreshDataSource:(id)source;
- (void)updateForGeometrySettingsChanges:(id)changes;
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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UISceneLayerHostContainerView.m" lineNumber:820 description:{@"failed to register commit handler for phase = kCATransactionPhasePostSynchronize (current is %i)", objc_msgSend(MEMORY[0x1E6979518], "currentPhase")}];
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
    orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
    WeakRetained = objc_loadWeakRetained(&self->_scene);
    layerManager = [WeakRetained layerManager];
    layers = [layerManager layers];

    _exclusiveLayerTargetsToInclude = [(UIScenePresentationContext *)self->_presentationContext _exclusiveLayerTargetsToInclude];
    v39 = layers;
    obj = _exclusiveLayerTargetsToInclude;
    if (_exclusiveLayerTargetsToInclude)
    {
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v40 = [_exclusiveLayerTargetsToInclude countByEnumeratingWithState:&v62 objects:v70 count:16];
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
            v12 = layers;
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
                    if ([orderedSet containsObject:v17])
                    {
                      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
                      [currentHandler handleFailureInMethod:a2 object:self file:@"_UISceneLayerHostContainerView.m" lineNumber:634 description:{@"Cannot have multiple targets matching the same layer: %@: targets=%@", v17, obj}];
                    }

                    else
                    {
                      [orderedSet addObject:v17];
                    }
                  }
                }

                v14 = [v12 countByEnumeratingWithState:&v58 objects:v69 count:16];
              }

              while (v14);
            }

            v10 = v41 + 1;
            layers = v39;
          }

          while (v41 + 1 != v40);
          v40 = [obj countByEnumeratingWithState:&v62 objects:v70 count:16];
        }

        while (v40);
      }

      [orderedSet sortUsingComparator:&__block_literal_global_257];
    }

    else
    {
      [orderedSet unionOrderedSet:layers];
    }

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v19 = [orderedSet copy];
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
            [orderedSet removeObject:v24];
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v54 objects:v68 count:16];
      }

      while (v21);
    }

    layerPresentationOverrides = [(UIScenePresentationContext *)self->_presentationContext layerPresentationOverrides];
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __58___UISceneLayerHostContainerView__filteredLayersToPresent__block_invoke_2;
    v52[3] = &unk_1E7109D00;
    v2 = orderedSet;
    v53 = v2;
    [layerPresentationOverrides enumerateKeysAndObjectsUsingBlock:v52];

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    _layerTargetsToExclude = [(UIScenePresentationContext *)self->_presentationContext _layerTargetsToExclude];
    v26 = [_layerTargetsToExclude countByEnumeratingWithState:&v48 objects:v67 count:16];
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
            objc_enumerationMutation(_layerTargetsToExclude);
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

        v27 = [_layerTargetsToExclude countByEnumeratingWithState:&v48 objects:v67 count:16];
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
    superview = [(UIView *)self->_backgroundView superview];

    if (superview == self)
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UISceneLayerHostContainerView.m" lineNumber:841 description:@"Rendering mode must be normal"];
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
        sceneLayer = [v7 sceneLayer];
        v9 = [(_UISceneLayerHostContainerView *)self _presentationContextForLayer:sceneLayer];

        renderingMode = [v9 renderingMode];
        _minificationFilterName = [v9 _minificationFilterName];
        if (!renderingMode)
        {
          renderingMode = [(UIScenePresentationContext *)self->_presentationContext renderingMode];
          _minificationFilterName2 = [(UIScenePresentationContext *)self->_presentationContext _minificationFilterName];

          _minificationFilterName = _minificationFilterName2;
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

        [v16 setRenderingMode:renderingMode];
        asynchronousRenderingOptions = [(UIScenePresentationContext *)self->_presentationContext asynchronousRenderingOptions];
        [v16 setAsynchronousRenderingOptions:asynchronousRenderingOptions];

        layer = [v16 layer];
        displayConfiguration = [(FBSSceneSettings *)self->_effectiveSceneSettings displayConfiguration];
        [displayConfiguration scale];
        [layer setRasterizationScale:?];

        layer2 = [v16 layer];

        [layer2 setMinificationFilter:_minificationFilterName];
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
  window = [(UIView *)&v9 window];
  if (!window)
  {
    layer = [(UIView *)self layer];
    if (layer)
    {
      v6 = layer;
      while (1)
      {
        delegate = [v6 delegate];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          break;
        }

        window = [v6 superlayer];

        v6 = window;
        if (!window)
        {
          goto LABEL_2;
        }
      }

      window = [v6 delegate];
    }

    else
    {
      window = 0;
    }
  }

LABEL_2:

  return window;
}

- (void)_refreshDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  presentationContextForSceneLayerHostContainerView = [WeakRetained presentationContextForSceneLayerHostContainerView];
  [(_UISceneLayerHostContainerView *)self _setPresentationContext:presentationContextForSceneLayerHostContainerView];

  backgroundView = [WeakRetained backgroundView];
  [(_UISceneLayerHostContainerView *)self _setBackgroundView:backgroundView];
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
      identifier = [WeakRetained identifier];
      debugDescription = self->_debugDescription;
      v11 = 134218754;
      selfCopy = self;
      v13 = 2114;
      v14 = v7;
      v15 = 2114;
      v16 = identifier;
      v17 = 2114;
      v18 = debugDescription;
      _os_log_debug_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEBUG, "%p-%{public}@-%{public}@:%{public}@ - invalidate", &v11, 0x2Au);
    }

    self->_invalidated = 1;
    [(UIView *)self removeFromSuperview];
    v4 = objc_loadWeakRetained(&self->_scene);
    layerManager = [v4 layerManager];
    [layerManager removeObserver:self];

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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UISceneLayerHostContainerView.m" lineNumber:108 description:@"Must be invalidated before deallocating"];
  }

  v3 = UIScenePresentationLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    WeakRetained = objc_loadWeakRetained(&self->_scene);
    identifier = [WeakRetained identifier];
    debugDescription = self->_debugDescription;
    *buf = 134218754;
    selfCopy = self;
    v16 = 2114;
    v17 = v7;
    v18 = 2114;
    v19 = identifier;
    v20 = 2114;
    v21 = debugDescription;
    _os_log_debug_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEBUG, "%p-%{public}@-%{public}@:%{public}@ - dealloc", buf, 0x2Au);
  }

  v4 = objc_loadWeakRetained(&self->_scene);
  layerManager = [v4 layerManager];
  [layerManager removeObserver:self];

  v13.receiver = self;
  v13.super_class = _UISceneLayerHostContainerView;
  [(UIView *)&v13 dealloc];
}

- (_UISceneLayerHostContainerView)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UISceneLayerHostContainerView.m" lineNumber:72 description:@"-[init] is unavailable for this object."];

  return 0;
}

- (_UISceneLayerHostContainerView)initWithFrame:(CGRect)frame
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UISceneLayerHostContainerView.m" lineNumber:77 description:@"-[init] is unavailable for this object."];

  return [(_UISceneLayerHostContainerView *)self initWithScene:&stru_1EFB14550 debugDescription:@"invalid"];
}

- (_UISceneLayerHostContainerView)initWithCoder:(id)coder
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UISceneLayerHostContainerView.m" lineNumber:82 description:@"-[init] is unavailable for this object."];

  return [(_UISceneLayerHostContainerView *)self initWithScene:&stru_1EFB14550 debugDescription:@"invalid"];
}

- (_UISceneLayerHostContainerView)initWithScene:(id)scene debugDescription:(id)description
{
  sceneCopy = scene;
  descriptionCopy = description;
  if (!sceneCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UISceneLayerHostContainerView.m" lineNumber:87 description:{@"Invalid parameter not satisfying: %@", @"scene"}];
  }

  settings = [sceneCopy settings];
  [settings bounds];
  v27.receiver = self;
  v27.super_class = _UISceneLayerHostContainerView;
  v10 = [(UIView *)&v27 initWithFrame:?];

  if (v10)
  {
    v11 = objc_storeWeak(&v10->_scene, sceneCopy);
    layerManager = [sceneCopy layerManager];
    [layerManager addObserver:v10];

    settings2 = [sceneCopy settings];
    effectiveSceneSettings = v10->_effectiveSceneSettings;
    v10->_effectiveSceneSettings = settings2;

    v15 = [descriptionCopy copy];
    debugDescription = v10->_debugDescription;
    v10->_debugDescription = v15;

    v17 = objc_alloc_init(_UITouchPassthroughView);
    innerLayerContainer = v10->_innerLayerContainer;
    v10->_innerLayerContainer = &v17->super;

    v19 = v10->_innerLayerContainer;
    settings3 = [sceneCopy settings];
    [settings3 bounds];
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
    nonHostedLayers = [(_UISceneLayerHostContainerView *)asyncRenderGroupingContainerView nonHostedLayers];
  }

  else
  {
    nonHostedLayers = [MEMORY[0x1E695DFA8] set];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    WeakRetained = objc_loadWeakRetained(&self->_scene);
    layerManager = [WeakRetained layerManager];
    layers = [layerManager layers];

    v8 = [layers countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(layers);
          }

          v12 = *(*(&v14 + 1) + 8 * i);
          if (([(NSMutableOrderedSet *)self->_hostedLayers containsObject:v12]& 1) == 0)
          {
            [nonHostedLayers addObject:v12];
          }
        }

        v9 = [layers countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

  return nonHostedLayers;
}

- (void)pushDataSource:(id)source
{
  sourceCopy = source;
  v7 = sourceCopy;
  if (self->_invalidated)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UISceneLayerHostContainerView.m" lineNumber:159 description:@"Unable to push a data source on an invalidated host container"];

    sourceCopy = v7;
  }

  [(_UISceneLayerHostContainerView *)self _setDataSource:sourceCopy];
}

- (void)popDataSource:(id)source
{
  sourceCopy = source;
  if (self->_invalidated)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UISceneLayerHostContainerView.m" lineNumber:165 description:@"Unable to pop a data source on an invalidated host container"];
  }

  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  v6 = sourceCopy;
  if (WeakRetained == sourceCopy)
  {
    [(_UISceneLayerHostContainerView *)self _setDataSource:0];
    v6 = sourceCopy;
  }
}

- (void)refreshDataSource:(id)source
{
  sourceCopy = source;
  if (self->_invalidated)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UISceneLayerHostContainerView.m" lineNumber:173 description:@"Unable to refresh a data source on an invalidated host container"];
  }

  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  v6 = sourceCopy;
  if (WeakRetained == sourceCopy)
  {
    [(_UISceneLayerHostContainerView *)self _refreshDataSource];
    v6 = sourceCopy;
  }
}

- (void)updateForGeometrySettingsChanges:(id)changes
{
  v19 = *MEMORY[0x1E69E9840];
  changesCopy = changes;
  if (self->_invalidated)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UISceneLayerHostContainerView.m" lineNumber:181 description:@"Unable to refresh a data source on an invalidated host container"];
  }

  objc_storeStrong(&self->_effectiveSceneSettings, changes);
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

  [(_UISceneLayerHostContainerView *)self->_asyncRenderGroupingContainerView updateForGeometrySettingsChanges:changesCopy, v14];
}

- (id)_hitTest:(CGPoint)test withEvent:(id)event windowServerHitTestWindow:(id)window
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  windowCopy = window;
  window = [(_UISceneLayerHostContainerView *)self window];

  if (window == windowCopy)
  {
    v16.receiver = self;
    v16.super_class = _UISceneLayerHostContainerView;
    v13 = [(UIView *)&v16 _hitTest:eventCopy withEvent:windowCopy windowServerHitTestWindow:x, y];
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
  succinctDescriptionBuilder = [(_UISceneLayerHostContainerView *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  identifier = [WeakRetained identifier];
  v6 = [v3 appendObject:identifier withName:@"sceneID" skipIfNil:1];

  v7 = [v3 appendObject:self->_debugDescription withName:@"debugDescription" skipIfNil:1];
  [(UIView *)self frame];
  v8 = [v3 appendRect:@"frame" withName:?];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_UISceneLayerHostContainerView *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(_UISceneLayerHostContainerView *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72___UISceneLayerHostContainerView_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E70F35B8;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

- (void)_setDataSource:(id)source
{
  obj = source;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_dataSource, obj);
    [(_UISceneLayerHostContainerView *)self _refreshDataSource];
    v5 = obj;
  }
}

- (void)_setBackgroundView:(id)view
{
  viewCopy = view;
  backgroundView = self->_backgroundView;
  if (backgroundView != viewCopy)
  {
    v8 = viewCopy;
    v7 = backgroundView;
    objc_storeStrong(&self->_backgroundView, view);
    [(_UISceneLayerHostContainerView *)self _applyBackgroundViewToHierarchy];
    if (v7)
    {
      [(UIView *)v7 removeFromSuperview];
    }

    viewCopy = v8;
  }
}

- (void)_setPresentationContext:(id)context
{
  v19 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  presentationContext = self->_presentationContext;
  if (presentationContext != contextCopy)
  {
    v7 = presentationContext;
    objc_storeStrong(&self->_presentationContext, context);
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

          [*(*(&v14 + 1) + 8 * v12++) setCurrentPresentationContext:{contextCopy, v14}];
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

- (void)_presentationContextChangedFrom:(id)from toContext:(id)context force:(BOOL)force
{
  fromCopy = from;
  contextCopy = context;
  presentedLayerTypes = [fromCopy presentedLayerTypes];
  presentedLayerTypes2 = [contextCopy presentedLayerTypes];
  _exclusiveLayerTargetsToInclude = [fromCopy _exclusiveLayerTargetsToInclude];
  _exclusiveLayerTargetsToInclude2 = [contextCopy _exclusiveLayerTargetsToInclude];
  v13 = BSEqualSets();

  _layerTargetsToExclude = [fromCopy _layerTargetsToExclude];
  _layerTargetsToExclude2 = [contextCopy _layerTargetsToExclude];
  v16 = BSEqualSets();

  layerPresentationOverrides = [fromCopy layerPresentationOverrides];
  layerPresentationOverrides2 = [contextCopy layerPresentationOverrides];
  v19 = BSEqualDictionaries();

  LOBYTE(layerPresentationOverrides) = [fromCopy renderingMode] == 1;
  v20 = layerPresentationOverrides ^ ([contextCopy renderingMode] != 1);
  if (v20)
  {
    v21 = 0;
    if (!force)
    {
      goto LABEL_3;
    }

LABEL_27:
    [(_UISceneLayerHostContainerView *)self _rebuildLayersForReason:@"forced" withFence:v21];
    [(_UISceneLayerHostContainerView *)self _toggleClippingDisabledWithNewContext:contextCopy];
    [(_UISceneLayerHostContainerView *)self _toggleInheritsSecurityWithNewContext:contextCopy];
    [(_UISceneLayerHostContainerView *)self _toggleResizesHostedContextWithNewContext:contextCopy];
    [(_UISceneLayerHostContainerView *)self _toggleZombifiesHostedContextWithNewContext:contextCopy];
    [(_UISceneLayerHostContainerView *)self _toggleStopsHitTestTransformAccumulationWithNewContext:contextCopy];
    [(_UISceneLayerHostContainerView *)self _toggleStopsSecureSuperlayersValidationWithNewContext:contextCopy];
    goto LABEL_28;
  }

  v21 = +[(UIScene *)UIWindowScene];
  if (force)
  {
    goto LABEL_27;
  }

LABEL_3:
  if (presentedLayerTypes == presentedLayerTypes2)
  {
    v22 = @"layer presentation overrides changed";
  }

  else
  {
    v22 = @"presented layer types changed";
  }

  v23 = fromCopy;
  if (((presentedLayerTypes == presentedLayerTypes2) & v19) != 1 || ((v13 & v16) == 0 ? (v22 = @"included or excluded windows changed") : (v22 = @"async render grouping changed"), ((v13 & v16) & v20 & 1) == 0))
  {
    [(_UISceneLayerHostContainerView *)self _rebuildLayersForReason:v22 withFence:v21];
    v23 = fromCopy;
  }

  [v23 isClippingDisabled];
  [contextCopy isClippingDisabled];
  if ((BSEqualBools() & 1) == 0)
  {
    [(_UISceneLayerHostContainerView *)self _toggleClippingDisabledWithNewContext:contextCopy];
  }

  [fromCopy inheritsSecurity];
  [contextCopy inheritsSecurity];
  if ((BSEqualBools() & 1) == 0)
  {
    [(_UISceneLayerHostContainerView *)self _toggleInheritsSecurityWithNewContext:contextCopy];
  }

  [fromCopy resizesHostedContext];
  [contextCopy resizesHostedContext];
  if ((BSEqualBools() & 1) == 0)
  {
    [(_UISceneLayerHostContainerView *)self _toggleResizesHostedContextWithNewContext:contextCopy];
  }

  [fromCopy zombifiesHostedContext];
  [contextCopy zombifiesHostedContext];
  if ((BSEqualBools() & 1) == 0)
  {
    [(_UISceneLayerHostContainerView *)self _toggleZombifiesHostedContextWithNewContext:contextCopy];
  }

  [fromCopy stopsHitTestTransformAccumulation];
  [contextCopy stopsHitTestTransformAccumulation];
  if ((BSEqualBools() & 1) == 0)
  {
    [(_UISceneLayerHostContainerView *)self _toggleStopsHitTestTransformAccumulationWithNewContext:contextCopy];
  }

  [fromCopy stopsSecureSuperlayersValidation];
  [contextCopy stopsSecureSuperlayersValidation];
  if ((BSEqualBools() & 1) == 0)
  {
    [(_UISceneLayerHostContainerView *)self _toggleStopsSecureSuperlayersValidationWithNewContext:contextCopy];
  }

  _minificationFilterName = [fromCopy _minificationFilterName];
  _minificationFilterName2 = [contextCopy _minificationFilterName];
  v26 = _minificationFilterName2;
  if (_minificationFilterName == _minificationFilterName2)
  {
    asynchronousRenderingOptions = [fromCopy asynchronousRenderingOptions];
    asynchronousRenderingOptions2 = [contextCopy asynchronousRenderingOptions];
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

- (void)_toggleClippingDisabledWithNewContext:(id)context
{
  v19 = *MEMORY[0x1E69E9840];
  contextCopy = context;
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
        sceneLayer = [v10 sceneLayer];
        v12 = [(_UISceneLayerHostContainerView *)self _presentationContextForLayer:sceneLayer];

        if ([v12 isClippingDisabled])
        {
          v13 = 0;
        }

        else
        {
          v13 = [contextCopy isClippingDisabled] ^ 1;
        }

        [v10 setClipsToBounds:v13];
      }

      v7 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (void)_toggleInheritsSecurityWithNewContext:(id)context
{
  v15 = *MEMORY[0x1E69E9840];
  contextCopy = context;
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

        [*(*(&v10 + 1) + 8 * v9++) setInheritsSecurity:{objc_msgSend(contextCopy, "inheritsSecurity", v10)}];
      }

      while (v7 != v9);
      v7 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_toggleResizesHostedContextWithNewContext:(id)context
{
  v15 = *MEMORY[0x1E69E9840];
  contextCopy = context;
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

        [*(*(&v10 + 1) + 8 * v9++) setResizesHostedContext:{objc_msgSend(contextCopy, "resizesHostedContext", v10)}];
      }

      while (v7 != v9);
      v7 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_toggleZombifiesHostedContextWithNewContext:(id)context
{
  v15 = *MEMORY[0x1E69E9840];
  contextCopy = context;
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

        [*(*(&v10 + 1) + 8 * v9++) setZombifiesHostedContext:{objc_msgSend(contextCopy, "zombifiesHostedContext", v10)}];
      }

      while (v7 != v9);
      v7 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_toggleStopsHitTestTransformAccumulationWithNewContext:(id)context
{
  v15 = *MEMORY[0x1E69E9840];
  contextCopy = context;
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

        [*(*(&v10 + 1) + 8 * v9++) setStopsHitTestTransformAccumulation:{objc_msgSend(contextCopy, "stopsHitTestTransformAccumulation", v10)}];
      }

      while (v7 != v9);
      v7 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_toggleStopsSecureSuperlayersValidationWithNewContext:(id)context
{
  v15 = *MEMORY[0x1E69E9840];
  contextCopy = context;
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

        [*(*(&v10 + 1) + 8 * v9++) setStopsSecureSuperlayersValidation:{objc_msgSend(contextCopy, "stopsSecureSuperlayersValidation", v10)}];
      }

      while (v7 != v9);
      v7 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)_createHostViewForLayer:(id)layer
{
  layerCopy = layer;
  v5 = layerCopy;
  if (self->_invalidated)
  {
    v6 = 0;
    goto LABEL_14;
  }

  if ([layerCopy contextID])
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

- (void)_adjustHostViewFrameAlignment:(id)alignment
{
  alignmentCopy = alignment;
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
  sceneLayer = [alignmentCopy sceneLayer];
  alignment = [sceneLayer alignment];

  if (alignment == 1)
  {
    interfaceOrientation = [(FBSSceneSettings *)self->_effectiveSceneSettings interfaceOrientation];
    [(FBSSceneSettings *)self->_effectiveSceneSettings frame];
    v17 = v16;
    v19 = v18;
    v21 = -v20;
    v23 = -v22;
    displayConfiguration = [(FBSSceneSettings *)self->_effectiveSceneSettings displayConfiguration];
    [displayConfiguration bounds];
    v26 = v25;
    v28 = v27;

    v6 = _UIWindowConvertRectFromOrientationToOrientation(1, interfaceOrientation, v21, v23, v26, v28, v17, v19);
    v8 = v29;
    v10 = v30;
    v12 = v31;
    switch(interfaceOrientation)
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
        if (interfaceOrientation != 2)
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
    [alignmentCopy setCounterTransformView:1];
    v41 = v40;
  }

  v40 = v41;
  [alignmentCopy setTransform:&v40];
  [alignmentCopy setFrame:{v6, v8, v10, v12}];
  v40 = v41;
  transformer = [alignmentCopy transformer];
  v34 = transformer;
  if (transformer)
  {
    [transformer transform];
    *&t1.a = v37;
    *&t1.c = v36;
    *&t1.tx = v35;
    if (!CGAffineTransformEqualToTransform(&t1, &t2))
    {
      [v34 transform];
      t1 = v41;
      CGAffineTransformConcat(&v40, &t1, &t2);
      t2 = v40;
      [alignmentCopy setTransform:&t2];
    }
  }
}

- (void)_rebuildLayersForReason:(id)reason withFence:(id)fence
{
  v25 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  fenceCopy = fence;
  v8 = UIScenePresentationLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    scene = [(_UISceneLayerHostContainerView *)self scene];
    identifier = [scene identifier];
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    identifier2 = [WeakRetained identifier];
    v15 = 134219010;
    selfCopy = self;
    v17 = 2114;
    v18 = v10;
    v19 = 2114;
    v20 = identifier;
    v21 = 2114;
    v22 = identifier2;
    v23 = 2114;
    v24 = reasonCopy;
    _os_log_debug_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEBUG, "%p-%{public}@-%{public}@:%{public}@ - rebuilding layers for reason: %{public}@", &v15, 0x34u);
  }

  if ([(UIScenePresentationContext *)self->_presentationContext renderingMode]== 1)
  {
    [(_UISceneLayerHostContainerView *)self _rebuildLayersForAsyncPresentationWithReason:reasonCopy withFence:fenceCopy];
  }

  else
  {
    [(_UISceneLayerHostContainerView *)self _rebuildLayersForNormalPresentationWithReason:reasonCopy withFence:fenceCopy];
  }
}

- (void)_rebuildLayersForAsyncPresentationWithReason:(id)reason withFence:(id)fence
{
  v60 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  fenceCopy = fence;
  v8 = UIScenePresentationLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v35 = objc_opt_class();
    NSStringFromClass(v35);
    v37 = v36 = reasonCopy;
    scene = [(_UISceneLayerHostContainerView *)self scene];
    identifier = [scene identifier];
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    identifier2 = [WeakRetained identifier];
    *buf = 134219010;
    selfCopy = self;
    v52 = 2114;
    v53 = v37;
    v54 = 2114;
    v55 = identifier;
    v56 = 2114;
    v57 = identifier2;
    v58 = 2114;
    v59 = v36;
    _os_log_debug_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEBUG, "%p-%{public}@-%{public}@:%{public}@ - async rendering scene for reason: %{public}@", buf, 0x34u);

    reasonCopy = v36;
  }

  if (!self->_asyncRenderGroupingContext)
  {
    v42 = reasonCopy;
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

    if (fenceCopy)
    {
      [(CAContext *)self->_asyncRenderGroupingContext addFence:fenceCopy];
    }

    v19 = [_UISceneLayerHostContainerView alloc];
    v20 = objc_loadWeakRetained(&self->_scene);
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<AsyncContainerForParentContainer-%p>", self];
    v22 = [(_UISceneLayerHostContainerView *)v19 initWithScene:v20 debugDescription:v21];
    asyncRenderGroupingContainerView = self->_asyncRenderGroupingContainerView;
    self->_asyncRenderGroupingContainerView = v22;

    [(_UISceneLayerHostContainerView *)self->_asyncRenderGroupingContainerView _setBackgroundView:self->_backgroundView];
    v24 = self->_asyncRenderGroupingContext;
    layer = [(UIView *)self->_asyncRenderGroupingContainerView layer];
    [(CAContext *)v24 setLayer:layer];

    v26 = [MEMORY[0x1E699FAA8] layerWithCAContext:self->_asyncRenderGroupingContext];
    v27 = [_UIContextLayerHostView alloc];
    v28 = [NSClassFromString(&cfstr_Fbscenelayer.isa) layerWithFBSSceneLayer:v26];
    v29 = [(_UIContextLayerHostView *)v27 initWithSceneLayer:v28];
    asyncRenderGroupingHostView = self->_asyncRenderGroupingHostView;
    self->_asyncRenderGroupingHostView = v29;

    [(_UIContextLayerHostView *)self->_asyncRenderGroupingHostView setRenderingMode:1];
    v31 = self->_asyncRenderGroupingHostView;
    asynchronousRenderingOptions = [(UIScenePresentationContext *)self->_presentationContext asynchronousRenderingOptions];
    [(_UIContextLayerHostView *)v31 setAsynchronousRenderingOptions:asynchronousRenderingOptions];

    hostedLayers = self->_hostedLayers;
    sceneLayer = [(_UISceneLayerHostView *)self->_asyncRenderGroupingHostView sceneLayer];
    [(NSMutableOrderedSet *)hostedLayers addObject:sceneLayer];

    [(NSMutableOrderedSet *)self->_hostViews addObject:self->_asyncRenderGroupingHostView];
    [(UIView *)self->_innerLayerContainer insertSubview:self->_asyncRenderGroupingHostView atIndex:0];

    reasonCopy = v42;
  }

  [(_UISceneLayerHostContainerView *)self->_asyncRenderGroupingContainerView _rebuildLayersForReason:@"parent async layer rebuild required" withFence:0];
  [(_UISceneLayerHostContainerView *)self _updateAsyncDrawingOptionsInAsyncPresentation];
  [(_UISceneLayerHostContainerView *)self _adjustHostViewFrameAlignment:self->_asyncRenderGroupingHostView];
}

- (void)_rebuildLayersForNormalPresentationWithReason:(id)reason withFence:(id)fence
{
  v53 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  fenceCopy = fence;
  if ([(UIScenePresentationContext *)self->_presentationContext renderingMode])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UISceneLayerHostContainerView.m" lineNumber:739 description:@"Rendering mode must be normal here"];
  }

  v9 = [(NSMutableOrderedSet *)self->_hostedLayers mutableCopy];
  v10 = [(NSMutableOrderedSet *)self->_hostViews mutableCopy];
  [(NSMutableOrderedSet *)self->_hostedLayers removeAllObjects];
  [(NSMutableOrderedSet *)self->_hostViews removeAllObjects];
  if (fenceCopy)
  {
    asyncRenderGroupingContext = self->_asyncRenderGroupingContext;
    if (asyncRenderGroupingContext)
    {
      [(CAContext *)asyncRenderGroupingContext addFence:fenceCopy];
    }
  }

  [(_UISceneLayerHostContainerView *)self _invalidateAndRemoveAsyncViewsFromHierarchy];
  _filteredLayersToPresent = [(_UISceneLayerHostContainerView *)self _filteredLayersToPresent];
  v13 = UIScenePresentationLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v23 = objc_opt_class();
    v29 = NSStringFromClass(v23);
    scene = [(_UISceneLayerHostContainerView *)self scene];
    identifier = [scene identifier];
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    [WeakRetained identifier];
    *buf = 134219266;
    selfCopy = self;
    v43 = 2114;
    v44 = v29;
    v45 = 2114;
    v46 = identifier;
    v48 = v47 = 2114;
    v24 = v48;
    v49 = 2114;
    v50 = reasonCopy;
    v51 = 2114;
    v52 = _filteredLayersToPresent;
    _os_log_debug_impl(&dword_188A29000, v13, OS_LOG_TYPE_DEBUG, "%p-%{public}@-%{public}@:%{public}@ - reason: %{public}@, new layers: %{public}@", buf, 0x3Eu);
  }

  isClippingDisabled = [(UIScenePresentationContext *)self->_presentationContext isClippingDisabled];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __90___UISceneLayerHostContainerView__rebuildLayersForNormalPresentationWithReason_withFence___block_invoke;
  v34[3] = &unk_1E7109D28;
  v15 = v9;
  v35 = v15;
  v16 = v10;
  selfCopy2 = self;
  v38 = a2;
  v36 = v16;
  v39 = isClippingDisabled;
  [_filteredLayersToPresent enumerateObjectsUsingBlock:v34];
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

  superview = [(UIView *)self->_backgroundView superview];

  if (superview != self)
  {
    [(_UISceneLayerHostContainerView *)self _applyBackgroundViewToHierarchy];
  }

  [(_UISceneLayerHostContainerView *)self _updateRenderingModeForLayersInNormalPresentation];
}

- (void)_updateAsyncDrawingOptionsInAsyncPresentation
{
  if ([(UIScenePresentationContext *)self->_presentationContext renderingMode]!= 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UISceneLayerHostContainerView.m" lineNumber:833 description:@"Rendering mode must be async"];
  }

  [(_UIContextLayerHostView *)self->_asyncRenderGroupingHostView setRenderingMode:1];
  asyncRenderGroupingHostView = self->_asyncRenderGroupingHostView;
  asynchronousRenderingOptions = [(UIScenePresentationContext *)self->_presentationContext asynchronousRenderingOptions];
  [(_UIContextLayerHostView *)asyncRenderGroupingHostView setAsynchronousRenderingOptions:asynchronousRenderingOptions];

  layer = [(_UIContextLayerHostView *)self->_asyncRenderGroupingHostView layer];
  displayConfiguration = [(FBSSceneSettings *)self->_effectiveSceneSettings displayConfiguration];
  [displayConfiguration scale];
  [layer setRasterizationScale:?];

  layer2 = [(_UIContextLayerHostView *)self->_asyncRenderGroupingHostView layer];
  _minificationFilterName = [(UIScenePresentationContext *)self->_presentationContext _minificationFilterName];
  [layer2 setMinificationFilter:_minificationFilterName];
}

- (id)_presentationContextForLayer:(id)layer
{
  layerCopy = layer;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__95;
  v18 = __Block_byref_object_dispose__95;
  v19 = 0;
  layerPresentationOverrides = [(UIScenePresentationContext *)self->_presentationContext layerPresentationOverrides];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63___UISceneLayerHostContainerView__presentationContextForLayer___block_invoke;
  v11[3] = &unk_1E7109D50;
  v6 = layerCopy;
  v12 = v6;
  v13 = &v14;
  [layerPresentationOverrides enumerateKeysAndObjectsUsingBlock:v11];

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