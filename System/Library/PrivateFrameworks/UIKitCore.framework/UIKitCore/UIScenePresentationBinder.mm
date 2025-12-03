@interface UIScenePresentationBinder
- (BOOL)_delegateShouldPresentSceneOnlyWhenLayersExist;
- (UIScenePresentationBinder)initWithIdentifier:(id)identifier priority:(int64_t)priority rootView:(id)view appearanceStyle:(unint64_t)style;
- (UIScenePresentationBinderDelegate)delegate;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)_activatePresenter:(id)presenter scene:(id)scene reason:(id)reason;
- (void)_deactivatePresenter:(id)presenter scene:(id)scene reason:(id)reason;
- (void)_delegateDidStartPresentingScene:(id)scene;
- (void)_delegateDidStopPresentingScene:(id)scene;
- (void)_evaluateSceneForHosting:(id)hosting forReason:(id)reason;
- (void)_noteSceneChangedLevel:(id)level;
- (void)_noteSceneMovedToBackground:(id)background;
- (void)_noteSceneMovedToForeground:(id)foreground;
- (void)_positionPresentationViewInRootViewOrderedCorrectly:(id)correctly;
- (void)_removeScene:(id)scene forReason:(id)reason;
- (void)addScene:(id)scene;
- (void)dealloc;
- (void)invalidate;
- (void)removeScene:(id)scene;
- (void)scene:(id)scene didApplyUpdateWithContext:(id)context;
- (void)sceneLayerManagerDidStartTrackingLayers:(id)layers;
- (void)sceneLayerManagerDidStopTrackingLayers:(id)layers;
- (void)setDelegate:(id)delegate;
- (void)setTransform:(CGAffineTransform *)transform forScene:(id)scene;
@end

@implementation UIScenePresentationBinder

- (UIScenePresentationBinder)initWithIdentifier:(id)identifier priority:(int64_t)priority rootView:(id)view appearanceStyle:(unint64_t)style
{
  identifierCopy = identifier;
  viewCopy = view;
  v20.receiver = self;
  v20.super_class = UIScenePresentationBinder;
  v13 = [(UIScenePresentationBinder *)&v20 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_identifier, identifier);
    v14->_priority = priority;
    objc_storeStrong(&v14->_rootView, view);
    v15 = [MEMORY[0x1E695DFA8] set];
    scenes = v14->_scenes;
    v14->_scenes = v15;

    v14->_appearanceStyle = style;
    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    mapSceneIDToPresenter = v14->_mapSceneIDToPresenter;
    v14->_mapSceneIDToPresenter = v17;
  }

  return v14;
}

- (void)dealloc
{
  if (!self->_invalidated)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIScenePresentationBinder.m" lineNumber:62 description:@"UIAutomaticScenePresenter must be invalidated before it can be deallocated."];
  }

  v5.receiver = self;
  v5.super_class = UIScenePresentationBinder;
  [(UIScenePresentationBinder *)&v5 dealloc];
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_delegate, obj);
    *&self->_delegateFlags = *&self->_delegateFlags & 0xFE | objc_opt_respondsToSelector() & 1;

    v6 = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xFD | v7;

    v8 = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v9 = 4;
    }

    else
    {
      v9 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xFB | v9;
  }
}

- (void)addScene:(id)scene
{
  v17 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  if (!sceneCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIScenePresentationBinder.m" lineNumber:81 description:{@"Invalid parameter not satisfying: %@", @"scene"}];
  }

  if (!self->_invalidated && ([(NSMutableSet *)self->_scenes containsObject:sceneCopy]& 1) == 0)
  {
    [(NSMutableSet *)self->_scenes addObject:sceneCopy];
    [sceneCopy addObserver:self];
    layerManager = [sceneCopy layerManager];
    [layerManager addObserver:self];

    uiPresentationManager = [sceneCopy uiPresentationManager];
    v8 = [uiPresentationManager createPresenterWithIdentifier:self->_identifier priority:self->_priority];

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __38__UIScenePresentationBinder_addScene___block_invoke;
    v12[3] = &unk_1E70FA288;
    v12[4] = self;
    [v8 modifyPresentationContext:v12];
    identifier = [sceneCopy identifier];
    [(NSMutableDictionary *)self->_mapSceneIDToPresenter setObject:v8 forKey:identifier];
    v10 = UIScenePresentationBinderLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      selfCopy = self;
      v15 = 2114;
      v16 = identifier;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_DEFAULT, "%p-%{public}@-added scene.", buf, 0x16u);
    }

    [(UIScenePresentationBinder *)self _evaluateSceneForHosting:sceneCopy forReason:@"client added scene"];
  }
}

void __38__UIScenePresentationBinder_addScene___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 40);
  v3 = a2;
  [v3 setAppearanceStyle:v2];
  [v3 setPresentedLayerTypes:26];
}

- (void)removeScene:(id)scene
{
  sceneCopy = scene;
  if (!sceneCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIScenePresentationBinder.m" lineNumber:102 description:{@"Invalid parameter not satisfying: %@", @"scene"}];

    sceneCopy = 0;
  }

  if (!self->_invalidated)
  {
    v8 = sceneCopy;
    v6 = [(NSMutableSet *)self->_scenes containsObject:sceneCopy];
    sceneCopy = v8;
    if (v6)
    {
      [(UIScenePresentationBinder *)self _removeScene:v8 forReason:@"client requested"];
      sceneCopy = v8;
    }
  }
}

- (void)setTransform:(CGAffineTransform *)transform forScene:(id)scene
{
  sceneCopy = scene;
  if (!sceneCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIScenePresentationBinder.m" lineNumber:109 description:{@"Invalid parameter not satisfying: %@", @"scene"}];
  }

  identifier = [sceneCopy identifier];
  v9 = [(NSMutableDictionary *)self->_mapSceneIDToPresenter objectForKey:identifier];
  if (!v9)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIScenePresentationBinder.m" lineNumber:112 description:{@"Not tracking scene: %@", identifier}];
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__UIScenePresentationBinder_setTransform_forScene___block_invoke;
  v13[3] = &__block_descriptor_80_e43_v16__0__UIMutableScenePresentationContext_8l;
  v10 = *&transform->c;
  v14 = *&transform->a;
  v15 = v10;
  v16 = *&transform->tx;
  [v9 modifyPresentationContext:v13];
}

void __51__UIScenePresentationBinder_setTransform_forScene___block_invoke(_OWORD *a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(UIMutableTransformer);
  v5 = a1[3];
  v7[0] = a1[2];
  v7[1] = v5;
  v7[2] = a1[4];
  v6 = [UITransform transformWithCGAffineTransform:v7];
  [(UIMutableTransformer *)v4 addTransform:v6 reason:@"BinderSceneTransform"];

  [v3 setHostTransformer:v4];
}

- (BOOL)_delegateShouldPresentSceneOnlyWhenLayersExist
{
  if ((*&self->_delegateFlags & 1) == 0)
  {
    return 0;
  }

  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(selfCopy) = [WeakRetained scenePresentationBinderShouldPresentSceneOnlyWhenLayersExist:selfCopy];

  return selfCopy;
}

- (void)_delegateDidStartPresentingScene:(id)scene
{
  if ((*&self->_delegateFlags & 2) != 0)
  {
    sceneCopy = scene;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained scenePresentationBinder:self didStartPresentingScene:sceneCopy];
  }
}

- (void)_delegateDidStopPresentingScene:(id)scene
{
  if ((*&self->_delegateFlags & 4) != 0)
  {
    sceneCopy = scene;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained scenePresentationBinder:self didStopPresentingScene:sceneCopy];
  }
}

- (void)invalidate
{
  v14 = *MEMORY[0x1E69E9840];
  if (!self->_invalidated)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = [(NSMutableSet *)self->_scenes copy];
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [(UIScenePresentationBinder *)self removeScene:*(*(&v9 + 1) + 8 * v7++)];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }

    settingsDiffInspector = self->_settingsDiffInspector;
    self->_settingsDiffInspector = 0;

    [(FBSSceneSettingsDiffInspector *)self->_settingsDiffInspector removeAllObservers];
    self->_invalidated = 1;
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(UIScenePresentationBinder *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__UIScenePresentationBinder_succinctDescriptionBuilder__block_invoke;
  v8[3] = &unk_1E70F35B8;
  v4 = v3;
  v9 = v4;
  selfCopy = self;
  v5 = [v4 modifyProem:v8];
  v6 = v4;

  return v4;
}

void __55__UIScenePresentationBinder_succinctDescriptionBuilder__block_invoke(uint64_t a1)
{
  [*(a1 + 32) appendString:*(*(a1 + 40) + 8) withName:@"identifier"];
  v2 = [*(a1 + 32) appendUnsignedInteger:*(*(a1 + 40) + 32) withName:@"priority"];
  v3 = *(a1 + 32);
  v4 = NSStringFromUISceneAppearanceStyle(*(*(a1 + 40) + 40));
  [v3 appendString:v4 withName:@"style"];
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(UIScenePresentationBinder *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(UIScenePresentationBinder *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__UIScenePresentationBinder_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E70F35B8;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

void __67__UIScenePresentationBinder_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  [*(a1 + 32) appendDictionarySection:*(*(a1 + 40) + 64) withName:@"sceneIDsToPresenter" skipIfEmpty:1];
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 24) allObjects];
  [v2 appendArraySection:v3 withName:@"scenes" skipIfEmpty:0];
}

- (void)sceneLayerManagerDidStartTrackingLayers:(id)layers
{
  v28 = *MEMORY[0x1E69E9840];
  layersCopy = layers;
  v5 = UIScenePresentationBinderLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [layersCopy identifier];
    _delegateShouldPresentSceneOnlyWhenLayersExist = [(UIScenePresentationBinder *)self _delegateShouldPresentSceneOnlyWhenLayersExist];
    v8 = @"NO";
    *buf = 134218498;
    selfCopy = self;
    v24 = 2114;
    if (_delegateShouldPresentSceneOnlyWhenLayersExist)
    {
      v8 = @"YES";
    }

    v25 = identifier;
    v26 = 2114;
    v27 = v8;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "%p-%{public}@-started tracking layers: shouldPresentOnlyWhenLayersExist: %{public}@", buf, 0x20u);
  }

  if ([(UIScenePresentationBinder *)self _delegateShouldPresentSceneOnlyWhenLayersExist])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = self->_scenes;
    v10 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
LABEL_8:
      v13 = 0;
      while (1)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * v13);
        layerManager = [v14 layerManager];

        if (layerManager == layersCopy)
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v11)
          {
            goto LABEL_8;
          }

          goto LABEL_17;
        }
      }

      v16 = v14;

      if (!v16)
      {
        goto LABEL_18;
      }

      [(UIScenePresentationBinder *)self _evaluateSceneForHosting:v16 forReason:@"layers exist"];
      v9 = v16;
    }

LABEL_17:
  }

LABEL_18:
}

- (void)sceneLayerManagerDidStopTrackingLayers:(id)layers
{
  v28 = *MEMORY[0x1E69E9840];
  layersCopy = layers;
  v5 = UIScenePresentationBinderLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [layersCopy identifier];
    _delegateShouldPresentSceneOnlyWhenLayersExist = [(UIScenePresentationBinder *)self _delegateShouldPresentSceneOnlyWhenLayersExist];
    v8 = @"NO";
    *buf = 134218498;
    selfCopy = self;
    v24 = 2114;
    if (_delegateShouldPresentSceneOnlyWhenLayersExist)
    {
      v8 = @"YES";
    }

    v25 = identifier;
    v26 = 2114;
    v27 = v8;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "%p-%{public}@-stopped tracking layers: shouldPresentOnlyWhenLayersExist: %{public}@", buf, 0x20u);
  }

  if ([(UIScenePresentationBinder *)self _delegateShouldPresentSceneOnlyWhenLayersExist])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = self->_scenes;
    v10 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
LABEL_8:
      v13 = 0;
      while (1)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * v13);
        layerManager = [v14 layerManager];

        if (layerManager == layersCopy)
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v11)
          {
            goto LABEL_8;
          }

          goto LABEL_17;
        }
      }

      v16 = v14;

      if (!v16)
      {
        goto LABEL_18;
      }

      [(UIScenePresentationBinder *)self _evaluateSceneForHosting:v16 forReason:@"no layers exist"];
      v9 = v16;
    }

LABEL_17:
  }

LABEL_18:
}

- (void)scene:(id)scene didApplyUpdateWithContext:(id)context
{
  sceneCopy = scene;
  contextCopy = context;
  if (!self->_settingsDiffInspector)
  {
    objc_initWeak(&location, self);
    v8 = objc_alloc_init(MEMORY[0x1E699FC38]);
    settingsDiffInspector = self->_settingsDiffInspector;
    self->_settingsDiffInspector = v8;

    v10 = self->_settingsDiffInspector;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __61__UIScenePresentationBinder_scene_didApplyUpdateWithContext___block_invoke;
    v15[3] = &unk_1E70FA2D0;
    objc_copyWeak(&v16, &location);
    [(FBSSceneSettingsDiffInspector *)v10 observeLevelWithBlock:v15];
    v11 = self->_settingsDiffInspector;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __61__UIScenePresentationBinder_scene_didApplyUpdateWithContext___block_invoke_2;
    v13[3] = &unk_1E70FA2D0;
    objc_copyWeak(&v14, &location);
    [(FBSSceneSettingsDiffInspector *)v11 observeIsForegroundWithBlock:v13];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  settingsDiff = [contextCopy settingsDiff];
  [settingsDiff evaluateWithInspector:self->_settingsDiffInspector context:sceneCopy];
}

void __61__UIScenePresentationBinder_scene_didApplyUpdateWithContext___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _noteSceneChangedLevel:a2];
}

void __61__UIScenePresentationBinder_scene_didApplyUpdateWithContext___block_invoke_2(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = a2;
  v4 = [v3 settings];
  v5 = [v4 isForeground];

  if (v5)
  {
    [WeakRetained _noteSceneMovedToForeground:v3];
  }

  else
  {
    [WeakRetained _noteSceneMovedToBackground:v3];
  }
}

- (void)_removeScene:(id)scene forReason:(id)reason
{
  v23 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  reasonCopy = reason;
  v9 = reasonCopy;
  if (sceneCopy)
  {
    if (reasonCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIScenePresentationBinder.m" lineNumber:276 description:{@"Invalid parameter not satisfying: %@", @"scene"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIScenePresentationBinder.m" lineNumber:277 description:{@"Invalid parameter not satisfying: %@", @"reason"}];

LABEL_3:
  layerManager = [sceneCopy layerManager];
  [layerManager removeObserver:self];

  [sceneCopy removeObserver:self];
  [(NSMutableSet *)self->_scenes removeObject:sceneCopy];
  v11 = UIScenePresentationBinderLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [sceneCopy identifier];
    *buf = 134218498;
    selfCopy = self;
    v19 = 2114;
    v20 = identifier;
    v21 = 2114;
    v22 = v9;
    _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_DEFAULT, "%p-%{public}@-removed scene for reason: %{public}@", buf, 0x20u);
  }

  identifier2 = [sceneCopy identifier];
  v14 = [(NSMutableDictionary *)self->_mapSceneIDToPresenter objectForKey:identifier2];
  if ([v14 isActive])
  {
    [(UIScenePresentationBinder *)self _deactivatePresenter:v14 scene:sceneCopy reason:v9];
  }

  [(NSMutableDictionary *)self->_mapSceneIDToPresenter removeObjectForKey:identifier2];
  [v14 invalidate];
}

- (void)_evaluateSceneForHosting:(id)hosting forReason:(id)reason
{
  v37 = *MEMORY[0x1E69E9840];
  hostingCopy = hosting;
  reasonCopy = reason;
  v9 = reasonCopy;
  if (hostingCopy)
  {
    if (reasonCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIScenePresentationBinder.m" lineNumber:294 description:{@"Invalid parameter not satisfying: %@", @"scene"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIScenePresentationBinder.m" lineNumber:295 description:{@"Invalid parameter not satisfying: %@", @"reason"}];

LABEL_3:
  v10 = UIScenePresentationBinderLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [hostingCopy identifier];
    *buf = 134218498;
    selfCopy3 = self;
    v31 = 2114;
    v32 = identifier;
    v33 = 2114;
    *v34 = v9;
    _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_DEFAULT, "%p-%{public}@-evaluate scene for hosting for reason: %{public}@", buf, 0x20u);
  }

  mapSceneIDToPresenter = self->_mapSceneIDToPresenter;
  identifier2 = [hostingCopy identifier];
  v14 = [(NSMutableDictionary *)mapSceneIDToPresenter objectForKey:identifier2];

  isActive = [v14 isActive];
  layerManager = [hostingCopy layerManager];
  layers = [layerManager layers];
  v18 = [layers count];

  settings = [hostingCopy settings];
  isForeground = [settings isForeground];

  _delegateShouldPresentSceneOnlyWhenLayersExist = [(UIScenePresentationBinder *)self _delegateShouldPresentSceneOnlyWhenLayersExist];
  if (v18)
  {
    v22 = _delegateShouldPresentSceneOnlyWhenLayersExist;
  }

  else
  {
    v22 = 0;
  }

  v23 = !_delegateShouldPresentSceneOnlyWhenLayersExist;
  if (isForeground && ((v23 | v22) & 1) != 0)
  {
    if ((isActive & 1) == 0)
    {
      [(UIScenePresentationBinder *)self _activatePresenter:v14 scene:hostingCopy reason:v9];
      goto LABEL_19;
    }

    v24 = UIScenePresentationBinderLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      identifier3 = [hostingCopy identifier];
      *buf = 134218242;
      selfCopy3 = self;
      v31 = 2114;
      v32 = identifier3;
      _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_DEFAULT, "%p-%{public}@-not presenting scene is already being presented.", buf, 0x16u);
    }

    goto LABEL_17;
  }

  if (!isActive)
  {
    v24 = UIScenePresentationBinderLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      identifier4 = [hostingCopy identifier];
      *buf = 134219010;
      selfCopy3 = self;
      v31 = 2114;
      v32 = identifier4;
      v33 = 1024;
      *v34 = isForeground;
      *&v34[4] = 1024;
      *&v34[6] = v22;
      v35 = 1024;
      v36 = v23;
      _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_DEFAULT, "%p-%{public}@-not hosting because scene is not foreground or other conditions aren't met to allow hosting (foreground: %d, allowsHostingWithLayersAndHasLayers: %d, allowsHostingWithoutLayers: %d).", buf, 0x28u);
    }

LABEL_17:

    goto LABEL_19;
  }

  [(UIScenePresentationBinder *)self _deactivatePresenter:v14 scene:hostingCopy reason:v9];
LABEL_19:
}

- (void)_activatePresenter:(id)presenter scene:(id)scene reason:(id)reason
{
  v25 = *MEMORY[0x1E69E9840];
  presenterCopy = presenter;
  sceneCopy = scene;
  reasonCopy = reason;
  if (presenterCopy)
  {
    if (sceneCopy)
    {
      goto LABEL_3;
    }

LABEL_10:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIScenePresentationBinder.m" lineNumber:329 description:{@"Invalid parameter not satisfying: %@", @"scene"}];

    if (reasonCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIScenePresentationBinder.m" lineNumber:328 description:{@"Invalid parameter not satisfying: %@", @"presenter"}];

  if (!sceneCopy)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (reasonCopy)
  {
    goto LABEL_4;
  }

LABEL_11:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"UIScenePresentationBinder.m" lineNumber:330 description:{@"Invalid parameter not satisfying: %@", @"reason"}];

LABEL_4:
  v12 = UIScenePresentationBinderLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [sceneCopy identifier];
    *buf = 134218498;
    selfCopy = self;
    v21 = 2114;
    v22 = identifier;
    v23 = 2114;
    v24 = reasonCopy;
    _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEFAULT, "%p-%{public}@-started layer hosting for reason: %{public}@", buf, 0x20u);
  }

  if (!presenterCopy)
  {
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"UIScenePresentationBinder.m" lineNumber:333 description:@"We expect a presenter."];
  }

  [presenterCopy activate];
  [(UIScenePresentationBinder *)self _noteWillStartPresentingScene:sceneCopy];
  presentationView = [presenterCopy presentationView];
  [(UIScenePresentationBinder *)self _positionPresentationViewInRootViewOrderedCorrectly:presentationView];

  [(UIScenePresentationBinder *)self _delegateDidStartPresentingScene:sceneCopy];
}

- (void)_deactivatePresenter:(id)presenter scene:(id)scene reason:(id)reason
{
  v24 = *MEMORY[0x1E69E9840];
  presenterCopy = presenter;
  sceneCopy = scene;
  reasonCopy = reason;
  if (presenterCopy)
  {
    if (sceneCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIScenePresentationBinder.m" lineNumber:347 description:{@"Invalid parameter not satisfying: %@", @"scene"}];

    if (reasonCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIScenePresentationBinder.m" lineNumber:346 description:{@"Invalid parameter not satisfying: %@", @"presenter"}];

  if (!sceneCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (reasonCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"UIScenePresentationBinder.m" lineNumber:348 description:{@"Invalid parameter not satisfying: %@", @"reason"}];

LABEL_4:
  v12 = UIScenePresentationBinderLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [sceneCopy identifier];
    *buf = 134218498;
    selfCopy = self;
    v20 = 2114;
    v21 = identifier;
    v22 = 2114;
    v23 = reasonCopy;
    _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEFAULT, "%p-%{public}@-stopped layer hosting for reason: %{public}@", buf, 0x20u);
  }

  presentationView = [presenterCopy presentationView];
  [presentationView removeFromSuperview];

  [presenterCopy deactivate];
  [(UIScenePresentationBinder *)self _noteDidStopPresentingScene:sceneCopy];
  [(UIScenePresentationBinder *)self _delegateDidStopPresentingScene:sceneCopy];
}

- (void)_noteSceneMovedToForeground:(id)foreground
{
  v11 = *MEMORY[0x1E69E9840];
  foregroundCopy = foreground;
  v5 = UIScenePresentationBinderLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [foregroundCopy identifier];
    v7 = 134218242;
    selfCopy = self;
    v9 = 2114;
    v10 = identifier;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "%p-%{public}@-scene moved to foreground", &v7, 0x16u);
  }

  [(UIScenePresentationBinder *)self _evaluateSceneForHosting:foregroundCopy forReason:@"scene moved foreground"];
}

- (void)_noteSceneMovedToBackground:(id)background
{
  v11 = *MEMORY[0x1E69E9840];
  backgroundCopy = background;
  v5 = UIScenePresentationBinderLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [backgroundCopy identifier];
    v7 = 134218242;
    selfCopy = self;
    v9 = 2114;
    v10 = identifier;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "%p-%{public}@-scene moved to background", &v7, 0x16u);
  }

  [(UIScenePresentationBinder *)self _evaluateSceneForHosting:backgroundCopy forReason:@"scene moved background"];
}

- (void)_noteSceneChangedLevel:(id)level
{
  v15 = *MEMORY[0x1E69E9840];
  levelCopy = level;
  v5 = UIScenePresentationBinderLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [levelCopy identifier];
    v11 = 134218242;
    selfCopy = self;
    v13 = 2114;
    v14 = identifier;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "%p-%{public}@-scene level changed", &v11, 0x16u);
  }

  mapSceneIDToPresenter = self->_mapSceneIDToPresenter;
  identifier2 = [levelCopy identifier];
  v9 = [(NSMutableDictionary *)mapSceneIDToPresenter objectForKey:identifier2];

  if ([v9 isActive])
  {
    presentationView = [v9 presentationView];
    [(UIScenePresentationBinder *)self _positionPresentationViewInRootViewOrderedCorrectly:presentationView];
  }
}

- (void)_positionPresentationViewInRootViewOrderedCorrectly:(id)correctly
{
  correctlyCopy = correctly;
  [correctlyCopy removeFromSuperview];
  _rootView = [(UIScenePresentationBinder *)self _rootView];
  subviews = [_rootView subviews];
  v6 = [subviews count];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    v22 = v6 - 1;
    v24 = _rootView;
LABEL_3:
    v23 = v8;
    do
    {
      v10 = [subviews objectAtIndex:{v9, v22}];
      presenter = [correctlyCopy presenter];
      scene = [presenter scene];
      settings = [scene settings];
      [settings level];
      v15 = v14;
      presenter2 = [v10 presenter];
      scene2 = [presenter2 scene];
      settings2 = [scene2 settings];
      [settings2 level];
      v20 = v19;

      if (v15 > v20)
      {
        _rootView = v24;
        [v24 insertSubview:correctlyCopy aboveSubview:v10];

        v8 = 1;
        if (v22 == v9++)
        {
          goto LABEL_13;
        }

        goto LABEL_3;
      }

      ++v9;
    }

    while (v7 != v9);
    _rootView = v24;
    if ((v23 & 1) == 0)
    {
      [v24 addSubview:correctlyCopy];
      [v24 sendSubviewToBack:correctlyCopy];
    }
  }

  else
  {
    [_rootView addSubview:correctlyCopy];
  }

LABEL_13:
}

- (UIScenePresentationBinderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end