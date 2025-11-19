@interface UIMutableScenePresentationContext
- (id)_existingLayerPresentationContextCreatingIfNecessary:(BOOL)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_setDefaultPresentationContext:(id)a3;
- (void)_setExclusiveLayerTargetsToInclude:(id)a3;
- (void)_setForwardsKeyboardLayersToHost:(BOOL)a3;
- (void)_setLayerTargetsToExclude:(id)a3;
- (void)_setMinificationFilterName:(id)a3;
- (void)_setVisibilityPropagationEnabled:(BOOL)a3;
- (void)modifyLayerPresentationOverrideContextForLayerTarget:(id)a3 block:(id)a4;
- (void)modifyWindowLayerPresentationContextWithBlock:(id)a3;
- (void)removeAllLayerPresentationOverrides;
- (void)removeLayerPresentationOverrideForLayerTarget:(id)a3;
- (void)setAppearanceStyle:(unint64_t)a3;
- (void)setAsynchronousRenderingOptions:(id)a3;
- (void)setBackgroundColorWhileHosting:(id)a3;
- (void)setBackgroundColorWhileNotHosting:(id)a3;
- (void)setClippingDisabled:(BOOL)a3;
- (void)setHostTransformer:(id)a3;
- (void)setInheritsSecurity:(BOOL)a3;
- (void)setPresentedLayerTypes:(unint64_t)a3;
- (void)setRenderingMode:(unint64_t)a3;
- (void)setResizesHostedContext:(BOOL)a3;
- (void)setShouldPassthroughHitTestEventsIfTransparent:(BOOL)a3;
- (void)setShouldSupportFlattening:(BOOL)a3;
- (void)setStopsHitTestTransformAccumulation:(BOOL)a3;
- (void)setStopsSecureSuperlayersValidation:(BOOL)a3;
- (void)setZombifiesHostedContext:(BOOL)a3;
@end

@implementation UIMutableScenePresentationContext

- (void)setClippingDisabled:(BOOL)a3
{
  settings = self->super._settings;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(BSMutableSettings *)settings setObject:v4 forSetting:1];
}

- (void)setAppearanceStyle:(unint64_t)a3
{
  settings = self->super._settings;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(BSMutableSettings *)settings setObject:v4 forSetting:2];
}

- (void)setPresentedLayerTypes:(unint64_t)a3
{
  settings = self->super._settings;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(BSMutableSettings *)settings setObject:v4 forSetting:3];
}

- (void)setBackgroundColorWhileHosting:(id)a3
{
  settings = self->super._settings;
  if (a3)
  {
    v4 = self->super._settings;

    [BSMutableSettings setObject:v4 forSetting:"setObject:forSetting:"];
  }

  else
  {
    v5 = [MEMORY[0x1E695DFB0] null];
    [(BSMutableSettings *)settings setObject:v5 forSetting:4];
  }
}

- (void)setBackgroundColorWhileNotHosting:(id)a3
{
  settings = self->super._settings;
  if (a3)
  {
    v4 = self->super._settings;

    [BSMutableSettings setObject:v4 forSetting:"setObject:forSetting:"];
  }

  else
  {
    v5 = [MEMORY[0x1E695DFB0] null];
    [(BSMutableSettings *)settings setObject:v5 forSetting:5];
  }
}

- (void)setHostTransformer:(id)a3
{
  settings = self->super._settings;
  if (a3)
  {
    v4 = self->super._settings;

    [BSMutableSettings setObject:v4 forSetting:"setObject:forSetting:"];
  }

  else
  {
    v5 = [MEMORY[0x1E695DFB0] null];
    [(BSMutableSettings *)settings setObject:v5 forSetting:6];
  }
}

- (void)setRenderingMode:(unint64_t)a3
{
  settings = self->super._settings;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(BSMutableSettings *)settings setObject:v4 forSetting:7];
}

- (void)setAsynchronousRenderingOptions:(id)a3
{
  settings = self->super._settings;
  v4 = [a3 copy];
  v6 = v4;
  if (v4)
  {
    [(BSMutableSettings *)settings setObject:v4 forSetting:13];
  }

  else
  {
    v5 = [MEMORY[0x1E695DFB0] null];
    [(BSMutableSettings *)settings setObject:v5 forSetting:13];
  }
}

- (void)setInheritsSecurity:(BOOL)a3
{
  settings = self->super._settings;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(BSMutableSettings *)settings setObject:v4 forSetting:14];
}

- (void)setResizesHostedContext:(BOOL)a3
{
  settings = self->super._settings;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(BSMutableSettings *)settings setObject:v4 forSetting:15];
}

- (void)setZombifiesHostedContext:(BOOL)a3
{
  settings = self->super._settings;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(BSMutableSettings *)settings setObject:v4 forSetting:16];
}

- (void)setShouldPassthroughHitTestEventsIfTransparent:(BOOL)a3
{
  settings = self->super._settings;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(BSMutableSettings *)settings setObject:v4 forSetting:17];
}

- (void)setStopsHitTestTransformAccumulation:(BOOL)a3
{
  settings = self->super._settings;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(BSMutableSettings *)settings setObject:v4 forSetting:18];
}

- (void)setStopsSecureSuperlayersValidation:(BOOL)a3
{
  settings = self->super._settings;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(BSMutableSettings *)settings setObject:v4 forSetting:19];
}

- (void)setShouldSupportFlattening:(BOOL)a3
{
  settings = self->super._settings;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(BSMutableSettings *)settings setObject:v4 forSetting:20];
}

- (void)modifyWindowLayerPresentationContextWithBlock:(id)a3
{
  v8 = a3;
  if (!v8)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"UIScenePresentationContext.m" lineNumber:616 description:{@"Invalid parameter not satisfying: %@", @"modifyBlock"}];
  }

  v5 = [(UIScenePresentationContext *)self windowLayerPresentationContext];
  v6 = [v5 mutableCopy];

  if (!v6)
  {
    v6 = objc_alloc_init(UIMutableSceneWindowLayerPresentationContext);
  }

  v8[2](v8, v6);
  [(BSMutableSettings *)self->super._settings setObject:v6 forSetting:21];
}

- (void)modifyLayerPresentationOverrideContextForLayerTarget:(id)a3 block:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
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
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"UIScenePresentationContext.m" lineNumber:630 description:{@"Invalid parameter not satisfying: %@", @"layerTarget"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v22 = [MEMORY[0x1E696AAA8] currentHandler];
  [v22 handleFailureInMethod:a2 object:self file:@"UIScenePresentationContext.m" lineNumber:631 description:{@"Invalid parameter not satisfying: %@", @"modifyBlock"}];

LABEL_3:
  v10 = [(UIMutableScenePresentationContext *)self _existingLayerPresentationContextCreatingIfNecessary:1];
  v11 = [v10 objectForKey:v7];
  v12 = [v11 mutableCopy];

  if (!v12)
  {
    v12 = objc_alloc_init(UIMutableSceneLayerPresentationContext);
  }

  (v9)[2](v9, v12);
  v13 = UIScenePresentationLog();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);

  if (v14)
  {
    v15 = UIScenePresentationLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v17 = MEMORY[0x1E696AD98];
      v18 = [v10 objectForKey:v7];
      v19 = [v17 numberWithBool:BSEqualObjects()];
      v20 = [v10 objectForKey:v7];
      *buf = 138412802;
      v24 = v19;
      v25 = 2112;
      v26 = v20;
      v27 = 2112;
      v28 = v12;
      _os_log_debug_impl(&dword_188A29000, v15, OS_LOG_TYPE_DEBUG, "modify default LAYER presentation context (equal? %@), prevContext: %@, newContext: %@", buf, 0x20u);
    }
  }

  v16 = [(UIMutableSceneLayerPresentationContext *)v12 copy];
  if ([v16 _isEqualToDefaultContext])
  {
    [v10 removeObjectForKey:v7];
  }

  else
  {
    [v10 setObject:v16 forKey:v7];
  }
}

- (void)removeLayerPresentationOverrideForLayerTarget:(id)a3
{
  v4 = a3;
  v5 = [(UIMutableScenePresentationContext *)self _existingLayerPresentationContextCreatingIfNecessary:0];
  [v5 removeObjectForKey:v4];
}

- (void)removeAllLayerPresentationOverrides
{
  v2 = [(UIMutableScenePresentationContext *)self _existingLayerPresentationContextCreatingIfNecessary:0];
  [v2 removeAllObjects];
}

- (void)_setMinificationFilterName:(id)a3
{
  settings = self->super._settings;
  if (a3)
  {
    v4 = self->super._settings;

    [BSMutableSettings setObject:v4 forSetting:"setObject:forSetting:"];
  }

  else
  {
    v5 = [MEMORY[0x1E695DFB0] null];
    [(BSMutableSettings *)settings setObject:v5 forSetting:8];
  }
}

- (void)_setDefaultPresentationContext:(id)a3
{
  v5 = a3;
  defaultPresentationContext = self->super._defaultPresentationContext;
  p_defaultPresentationContext = &self->super._defaultPresentationContext;
  if (defaultPresentationContext != v5)
  {
    v8 = v5;
    objc_storeStrong(p_defaultPresentationContext, a3);
    v5 = v8;
  }
}

- (void)_setExclusiveLayerTargetsToInclude:(id)a3
{
  settings = self->super._settings;
  if (a3)
  {
    v4 = self->super._settings;

    [BSMutableSettings setObject:v4 forSetting:"setObject:forSetting:"];
  }

  else
  {
    v5 = [MEMORY[0x1E695DFB0] null];
    [(BSMutableSettings *)settings setObject:v5 forSetting:10];
  }
}

- (void)_setLayerTargetsToExclude:(id)a3
{
  settings = self->super._settings;
  if (a3)
  {
    v4 = self->super._settings;

    [BSMutableSettings setObject:v4 forSetting:"setObject:forSetting:"];
  }

  else
  {
    v5 = [MEMORY[0x1E695DFB0] null];
    [(BSMutableSettings *)settings setObject:v5 forSetting:11];
  }
}

- (void)_setVisibilityPropagationEnabled:(BOOL)a3
{
  settings = self->super._settings;
  v4 = BSSettingFlagForBool();

  [(BSMutableSettings *)settings setFlag:v4 forSetting:12];
}

- (void)_setForwardsKeyboardLayersToHost:(BOOL)a3
{
  settings = self->super._settings;
  v4 = BSSettingFlagForBool();

  [(BSMutableSettings *)settings setFlag:v4 forSetting:22];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [UIScenePresentationContext alloc];

  return [(UIScenePresentationContext *)v4 _initWithPresentationContext:self];
}

- (id)_existingLayerPresentationContextCreatingIfNecessary:(BOOL)a3
{
  v3 = a3;
  v5 = [(BSMutableSettings *)self->super._settings objectForSetting:9];
  v6 = v5;
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = !v3;
  }

  v8 = v5;
  if (!v7)
  {
    v9 = [MEMORY[0x1E695DF90] dictionary];
    settings = self->super._settings;
    if (v9)
    {
      v8 = v9;
      [(BSMutableSettings *)settings setObject:v9 forSetting:9];
    }

    else
    {
      v11 = [MEMORY[0x1E695DFB0] null];
      [(BSMutableSettings *)settings setObject:v11 forSetting:9];

      v8 = 0;
    }
  }

  return v8;
}

@end