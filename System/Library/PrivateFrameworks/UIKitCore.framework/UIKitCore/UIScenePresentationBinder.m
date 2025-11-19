@interface UIScenePresentationBinder
- (BOOL)_delegateShouldPresentSceneOnlyWhenLayersExist;
- (UIScenePresentationBinder)initWithIdentifier:(id)a3 priority:(int64_t)a4 rootView:(id)a5 appearanceStyle:(unint64_t)a6;
- (UIScenePresentationBinderDelegate)delegate;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)_activatePresenter:(id)a3 scene:(id)a4 reason:(id)a5;
- (void)_deactivatePresenter:(id)a3 scene:(id)a4 reason:(id)a5;
- (void)_delegateDidStartPresentingScene:(id)a3;
- (void)_delegateDidStopPresentingScene:(id)a3;
- (void)_evaluateSceneForHosting:(id)a3 forReason:(id)a4;
- (void)_noteSceneChangedLevel:(id)a3;
- (void)_noteSceneMovedToBackground:(id)a3;
- (void)_noteSceneMovedToForeground:(id)a3;
- (void)_positionPresentationViewInRootViewOrderedCorrectly:(id)a3;
- (void)_removeScene:(id)a3 forReason:(id)a4;
- (void)addScene:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)removeScene:(id)a3;
- (void)scene:(id)a3 didApplyUpdateWithContext:(id)a4;
- (void)sceneLayerManagerDidStartTrackingLayers:(id)a3;
- (void)sceneLayerManagerDidStopTrackingLayers:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setTransform:(CGAffineTransform *)a3 forScene:(id)a4;
@end

@implementation UIScenePresentationBinder

- (UIScenePresentationBinder)initWithIdentifier:(id)a3 priority:(int64_t)a4 rootView:(id)a5 appearanceStyle:(unint64_t)a6
{
  v11 = a3;
  v12 = a5;
  v20.receiver = self;
  v20.super_class = UIScenePresentationBinder;
  v13 = [(UIScenePresentationBinder *)&v20 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_identifier, a3);
    v14->_priority = a4;
    objc_storeStrong(&v14->_rootView, a5);
    v15 = [MEMORY[0x1E695DFA8] set];
    scenes = v14->_scenes;
    v14->_scenes = v15;

    v14->_appearanceStyle = a6;
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
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"UIScenePresentationBinder.m" lineNumber:62 description:@"UIAutomaticScenePresenter must be invalidated before it can be deallocated."];
  }

  v5.receiver = self;
  v5.super_class = UIScenePresentationBinder;
  [(UIScenePresentationBinder *)&v5 dealloc];
}

- (void)setDelegate:(id)a3
{
  obj = a3;
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

- (void)addScene:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"UIScenePresentationBinder.m" lineNumber:81 description:{@"Invalid parameter not satisfying: %@", @"scene"}];
  }

  if (!self->_invalidated && ([(NSMutableSet *)self->_scenes containsObject:v5]& 1) == 0)
  {
    [(NSMutableSet *)self->_scenes addObject:v5];
    [v5 addObserver:self];
    v6 = [v5 layerManager];
    [v6 addObserver:self];

    v7 = [v5 uiPresentationManager];
    v8 = [v7 createPresenterWithIdentifier:self->_identifier priority:self->_priority];

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __38__UIScenePresentationBinder_addScene___block_invoke;
    v12[3] = &unk_1E70FA288;
    v12[4] = self;
    [v8 modifyPresentationContext:v12];
    v9 = [v5 identifier];
    [(NSMutableDictionary *)self->_mapSceneIDToPresenter setObject:v8 forKey:v9];
    v10 = UIScenePresentationBinderLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v14 = self;
      v15 = 2114;
      v16 = v9;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_DEFAULT, "%p-%{public}@-added scene.", buf, 0x16u);
    }

    [(UIScenePresentationBinder *)self _evaluateSceneForHosting:v5 forReason:@"client added scene"];
  }
}

void __38__UIScenePresentationBinder_addScene___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 40);
  v3 = a2;
  [v3 setAppearanceStyle:v2];
  [v3 setPresentedLayerTypes:26];
}

- (void)removeScene:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"UIScenePresentationBinder.m" lineNumber:102 description:{@"Invalid parameter not satisfying: %@", @"scene"}];

    v5 = 0;
  }

  if (!self->_invalidated)
  {
    v8 = v5;
    v6 = [(NSMutableSet *)self->_scenes containsObject:v5];
    v5 = v8;
    if (v6)
    {
      [(UIScenePresentationBinder *)self _removeScene:v8 forReason:@"client requested"];
      v5 = v8;
    }
  }
}

- (void)setTransform:(CGAffineTransform *)a3 forScene:(id)a4
{
  v7 = a4;
  if (!v7)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"UIScenePresentationBinder.m" lineNumber:109 description:{@"Invalid parameter not satisfying: %@", @"scene"}];
  }

  v8 = [v7 identifier];
  v9 = [(NSMutableDictionary *)self->_mapSceneIDToPresenter objectForKey:v8];
  if (!v9)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"UIScenePresentationBinder.m" lineNumber:112 description:{@"Not tracking scene: %@", v8}];
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__UIScenePresentationBinder_setTransform_forScene___block_invoke;
  v13[3] = &__block_descriptor_80_e43_v16__0__UIMutableScenePresentationContext_8l;
  v10 = *&a3->c;
  v14 = *&a3->a;
  v15 = v10;
  v16 = *&a3->tx;
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

  v3 = self;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(v3) = [WeakRetained scenePresentationBinderShouldPresentSceneOnlyWhenLayersExist:v3];

  return v3;
}

- (void)_delegateDidStartPresentingScene:(id)a3
{
  if ((*&self->_delegateFlags & 2) != 0)
  {
    v5 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained scenePresentationBinder:self didStartPresentingScene:v5];
  }
}

- (void)_delegateDidStopPresentingScene:(id)a3
{
  if ((*&self->_delegateFlags & 4) != 0)
  {
    v5 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained scenePresentationBinder:self didStopPresentingScene:v5];
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
  v2 = [(UIScenePresentationBinder *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
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
  v10 = self;
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

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(UIScenePresentationBinder *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(UIScenePresentationBinder *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__UIScenePresentationBinder_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E70F35B8;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

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

- (void)sceneLayerManagerDidStartTrackingLayers:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = UIScenePresentationBinderLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 identifier];
    v7 = [(UIScenePresentationBinder *)self _delegateShouldPresentSceneOnlyWhenLayersExist];
    v8 = @"NO";
    *buf = 134218498;
    v23 = self;
    v24 = 2114;
    if (v7)
    {
      v8 = @"YES";
    }

    v25 = v6;
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
        v15 = [v14 layerManager];

        if (v15 == v4)
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

- (void)sceneLayerManagerDidStopTrackingLayers:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = UIScenePresentationBinderLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 identifier];
    v7 = [(UIScenePresentationBinder *)self _delegateShouldPresentSceneOnlyWhenLayersExist];
    v8 = @"NO";
    *buf = 134218498;
    v23 = self;
    v24 = 2114;
    if (v7)
    {
      v8 = @"YES";
    }

    v25 = v6;
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
        v15 = [v14 layerManager];

        if (v15 == v4)
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

- (void)scene:(id)a3 didApplyUpdateWithContext:(id)a4
{
  v6 = a3;
  v7 = a4;
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

  v12 = [v7 settingsDiff];
  [v12 evaluateWithInspector:self->_settingsDiffInspector context:v6];
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

- (void)_removeScene:(id)a3 forReason:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"UIScenePresentationBinder.m" lineNumber:276 description:{@"Invalid parameter not satisfying: %@", @"scene"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v16 = [MEMORY[0x1E696AAA8] currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"UIScenePresentationBinder.m" lineNumber:277 description:{@"Invalid parameter not satisfying: %@", @"reason"}];

LABEL_3:
  v10 = [v7 layerManager];
  [v10 removeObserver:self];

  [v7 removeObserver:self];
  [(NSMutableSet *)self->_scenes removeObject:v7];
  v11 = UIScenePresentationBinderLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v7 identifier];
    *buf = 134218498;
    v18 = self;
    v19 = 2114;
    v20 = v12;
    v21 = 2114;
    v22 = v9;
    _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_DEFAULT, "%p-%{public}@-removed scene for reason: %{public}@", buf, 0x20u);
  }

  v13 = [v7 identifier];
  v14 = [(NSMutableDictionary *)self->_mapSceneIDToPresenter objectForKey:v13];
  if ([v14 isActive])
  {
    [(UIScenePresentationBinder *)self _deactivatePresenter:v14 scene:v7 reason:v9];
  }

  [(NSMutableDictionary *)self->_mapSceneIDToPresenter removeObjectForKey:v13];
  [v14 invalidate];
}

- (void)_evaluateSceneForHosting:(id)a3 forReason:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"UIScenePresentationBinder.m" lineNumber:294 description:{@"Invalid parameter not satisfying: %@", @"scene"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v28 = [MEMORY[0x1E696AAA8] currentHandler];
  [v28 handleFailureInMethod:a2 object:self file:@"UIScenePresentationBinder.m" lineNumber:295 description:{@"Invalid parameter not satisfying: %@", @"reason"}];

LABEL_3:
  v10 = UIScenePresentationBinderLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v7 identifier];
    *buf = 134218498;
    v30 = self;
    v31 = 2114;
    v32 = v11;
    v33 = 2114;
    *v34 = v9;
    _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_DEFAULT, "%p-%{public}@-evaluate scene for hosting for reason: %{public}@", buf, 0x20u);
  }

  mapSceneIDToPresenter = self->_mapSceneIDToPresenter;
  v13 = [v7 identifier];
  v14 = [(NSMutableDictionary *)mapSceneIDToPresenter objectForKey:v13];

  v15 = [v14 isActive];
  v16 = [v7 layerManager];
  v17 = [v16 layers];
  v18 = [v17 count];

  v19 = [v7 settings];
  v20 = [v19 isForeground];

  v21 = [(UIScenePresentationBinder *)self _delegateShouldPresentSceneOnlyWhenLayersExist];
  if (v18)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v23 = !v21;
  if (v20 && ((v23 | v22) & 1) != 0)
  {
    if ((v15 & 1) == 0)
    {
      [(UIScenePresentationBinder *)self _activatePresenter:v14 scene:v7 reason:v9];
      goto LABEL_19;
    }

    v24 = UIScenePresentationBinderLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [v7 identifier];
      *buf = 134218242;
      v30 = self;
      v31 = 2114;
      v32 = v25;
      _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_DEFAULT, "%p-%{public}@-not presenting scene is already being presented.", buf, 0x16u);
    }

    goto LABEL_17;
  }

  if (!v15)
  {
    v24 = UIScenePresentationBinderLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [v7 identifier];
      *buf = 134219010;
      v30 = self;
      v31 = 2114;
      v32 = v26;
      v33 = 1024;
      *v34 = v20;
      *&v34[4] = 1024;
      *&v34[6] = v22;
      v35 = 1024;
      v36 = v23;
      _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_DEFAULT, "%p-%{public}@-not hosting because scene is not foreground or other conditions aren't met to allow hosting (foreground: %d, allowsHostingWithLayersAndHasLayers: %d, allowsHostingWithoutLayers: %d).", buf, 0x28u);
    }

LABEL_17:

    goto LABEL_19;
  }

  [(UIScenePresentationBinder *)self _deactivatePresenter:v14 scene:v7 reason:v9];
LABEL_19:
}

- (void)_activatePresenter:(id)a3 scene:(id)a4 reason:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_10:
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"UIScenePresentationBinder.m" lineNumber:329 description:{@"Invalid parameter not satisfying: %@", @"scene"}];

    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v15 = [MEMORY[0x1E696AAA8] currentHandler];
  [v15 handleFailureInMethod:a2 object:self file:@"UIScenePresentationBinder.m" lineNumber:328 description:{@"Invalid parameter not satisfying: %@", @"presenter"}];

  if (!v10)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v11)
  {
    goto LABEL_4;
  }

LABEL_11:
  v17 = [MEMORY[0x1E696AAA8] currentHandler];
  [v17 handleFailureInMethod:a2 object:self file:@"UIScenePresentationBinder.m" lineNumber:330 description:{@"Invalid parameter not satisfying: %@", @"reason"}];

LABEL_4:
  v12 = UIScenePresentationBinderLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v10 identifier];
    *buf = 134218498;
    v20 = self;
    v21 = 2114;
    v22 = v13;
    v23 = 2114;
    v24 = v11;
    _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEFAULT, "%p-%{public}@-started layer hosting for reason: %{public}@", buf, 0x20u);
  }

  if (!v9)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"UIScenePresentationBinder.m" lineNumber:333 description:@"We expect a presenter."];
  }

  [v9 activate];
  [(UIScenePresentationBinder *)self _noteWillStartPresentingScene:v10];
  v14 = [v9 presentationView];
  [(UIScenePresentationBinder *)self _positionPresentationViewInRootViewOrderedCorrectly:v14];

  [(UIScenePresentationBinder *)self _delegateDidStartPresentingScene:v10];
}

- (void)_deactivatePresenter:(id)a3 scene:(id)a4 reason:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_8:
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"UIScenePresentationBinder.m" lineNumber:347 description:{@"Invalid parameter not satisfying: %@", @"scene"}];

    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v15 = [MEMORY[0x1E696AAA8] currentHandler];
  [v15 handleFailureInMethod:a2 object:self file:@"UIScenePresentationBinder.m" lineNumber:346 description:{@"Invalid parameter not satisfying: %@", @"presenter"}];

  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v11)
  {
    goto LABEL_4;
  }

LABEL_9:
  v17 = [MEMORY[0x1E696AAA8] currentHandler];
  [v17 handleFailureInMethod:a2 object:self file:@"UIScenePresentationBinder.m" lineNumber:348 description:{@"Invalid parameter not satisfying: %@", @"reason"}];

LABEL_4:
  v12 = UIScenePresentationBinderLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v10 identifier];
    *buf = 134218498;
    v19 = self;
    v20 = 2114;
    v21 = v13;
    v22 = 2114;
    v23 = v11;
    _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEFAULT, "%p-%{public}@-stopped layer hosting for reason: %{public}@", buf, 0x20u);
  }

  v14 = [v9 presentationView];
  [v14 removeFromSuperview];

  [v9 deactivate];
  [(UIScenePresentationBinder *)self _noteDidStopPresentingScene:v10];
  [(UIScenePresentationBinder *)self _delegateDidStopPresentingScene:v10];
}

- (void)_noteSceneMovedToForeground:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = UIScenePresentationBinderLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 identifier];
    v7 = 134218242;
    v8 = self;
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "%p-%{public}@-scene moved to foreground", &v7, 0x16u);
  }

  [(UIScenePresentationBinder *)self _evaluateSceneForHosting:v4 forReason:@"scene moved foreground"];
}

- (void)_noteSceneMovedToBackground:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = UIScenePresentationBinderLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 identifier];
    v7 = 134218242;
    v8 = self;
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "%p-%{public}@-scene moved to background", &v7, 0x16u);
  }

  [(UIScenePresentationBinder *)self _evaluateSceneForHosting:v4 forReason:@"scene moved background"];
}

- (void)_noteSceneChangedLevel:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = UIScenePresentationBinderLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 identifier];
    v11 = 134218242;
    v12 = self;
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "%p-%{public}@-scene level changed", &v11, 0x16u);
  }

  mapSceneIDToPresenter = self->_mapSceneIDToPresenter;
  v8 = [v4 identifier];
  v9 = [(NSMutableDictionary *)mapSceneIDToPresenter objectForKey:v8];

  if ([v9 isActive])
  {
    v10 = [v9 presentationView];
    [(UIScenePresentationBinder *)self _positionPresentationViewInRootViewOrderedCorrectly:v10];
  }
}

- (void)_positionPresentationViewInRootViewOrderedCorrectly:(id)a3
{
  v25 = a3;
  [v25 removeFromSuperview];
  v4 = [(UIScenePresentationBinder *)self _rootView];
  v5 = [v4 subviews];
  v6 = [v5 count];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    v22 = v6 - 1;
    v24 = v4;
LABEL_3:
    v23 = v8;
    do
    {
      v10 = [v5 objectAtIndex:{v9, v22}];
      v11 = [v25 presenter];
      v12 = [v11 scene];
      v13 = [v12 settings];
      [v13 level];
      v15 = v14;
      v16 = [v10 presenter];
      v17 = [v16 scene];
      v18 = [v17 settings];
      [v18 level];
      v20 = v19;

      if (v15 > v20)
      {
        v4 = v24;
        [v24 insertSubview:v25 aboveSubview:v10];

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
    v4 = v24;
    if ((v23 & 1) == 0)
    {
      [v24 addSubview:v25];
      [v24 sendSubviewToBack:v25];
    }
  }

  else
  {
    [v4 addSubview:v25];
  }

LABEL_13:
}

- (UIScenePresentationBinderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end