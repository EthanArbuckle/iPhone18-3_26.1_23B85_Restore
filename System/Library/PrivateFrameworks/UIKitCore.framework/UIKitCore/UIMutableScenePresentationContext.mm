@interface UIMutableScenePresentationContext
- (id)_existingLayerPresentationContextCreatingIfNecessary:(BOOL)necessary;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_setDefaultPresentationContext:(id)context;
- (void)_setExclusiveLayerTargetsToInclude:(id)include;
- (void)_setForwardsKeyboardLayersToHost:(BOOL)host;
- (void)_setLayerTargetsToExclude:(id)exclude;
- (void)_setMinificationFilterName:(id)name;
- (void)_setVisibilityPropagationEnabled:(BOOL)enabled;
- (void)modifyLayerPresentationOverrideContextForLayerTarget:(id)target block:(id)block;
- (void)modifyWindowLayerPresentationContextWithBlock:(id)block;
- (void)removeAllLayerPresentationOverrides;
- (void)removeLayerPresentationOverrideForLayerTarget:(id)target;
- (void)setAppearanceStyle:(unint64_t)style;
- (void)setAsynchronousRenderingOptions:(id)options;
- (void)setBackgroundColorWhileHosting:(id)hosting;
- (void)setBackgroundColorWhileNotHosting:(id)hosting;
- (void)setClippingDisabled:(BOOL)disabled;
- (void)setHostTransformer:(id)transformer;
- (void)setInheritsSecurity:(BOOL)security;
- (void)setPresentedLayerTypes:(unint64_t)types;
- (void)setRenderingMode:(unint64_t)mode;
- (void)setResizesHostedContext:(BOOL)context;
- (void)setShouldPassthroughHitTestEventsIfTransparent:(BOOL)transparent;
- (void)setShouldSupportFlattening:(BOOL)flattening;
- (void)setStopsHitTestTransformAccumulation:(BOOL)accumulation;
- (void)setStopsSecureSuperlayersValidation:(BOOL)validation;
- (void)setZombifiesHostedContext:(BOOL)context;
@end

@implementation UIMutableScenePresentationContext

- (void)setClippingDisabled:(BOOL)disabled
{
  settings = self->super._settings;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:disabled];
  [(BSMutableSettings *)settings setObject:v4 forSetting:1];
}

- (void)setAppearanceStyle:(unint64_t)style
{
  settings = self->super._settings;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:style];
  [(BSMutableSettings *)settings setObject:v4 forSetting:2];
}

- (void)setPresentedLayerTypes:(unint64_t)types
{
  settings = self->super._settings;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:types];
  [(BSMutableSettings *)settings setObject:v4 forSetting:3];
}

- (void)setBackgroundColorWhileHosting:(id)hosting
{
  settings = self->super._settings;
  if (hosting)
  {
    v4 = self->super._settings;

    [BSMutableSettings setObject:v4 forSetting:"setObject:forSetting:"];
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    [(BSMutableSettings *)settings setObject:null forSetting:4];
  }
}

- (void)setBackgroundColorWhileNotHosting:(id)hosting
{
  settings = self->super._settings;
  if (hosting)
  {
    v4 = self->super._settings;

    [BSMutableSettings setObject:v4 forSetting:"setObject:forSetting:"];
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    [(BSMutableSettings *)settings setObject:null forSetting:5];
  }
}

- (void)setHostTransformer:(id)transformer
{
  settings = self->super._settings;
  if (transformer)
  {
    v4 = self->super._settings;

    [BSMutableSettings setObject:v4 forSetting:"setObject:forSetting:"];
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    [(BSMutableSettings *)settings setObject:null forSetting:6];
  }
}

- (void)setRenderingMode:(unint64_t)mode
{
  settings = self->super._settings;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:mode];
  [(BSMutableSettings *)settings setObject:v4 forSetting:7];
}

- (void)setAsynchronousRenderingOptions:(id)options
{
  settings = self->super._settings;
  v4 = [options copy];
  v6 = v4;
  if (v4)
  {
    [(BSMutableSettings *)settings setObject:v4 forSetting:13];
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    [(BSMutableSettings *)settings setObject:null forSetting:13];
  }
}

- (void)setInheritsSecurity:(BOOL)security
{
  settings = self->super._settings;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:security];
  [(BSMutableSettings *)settings setObject:v4 forSetting:14];
}

- (void)setResizesHostedContext:(BOOL)context
{
  settings = self->super._settings;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:context];
  [(BSMutableSettings *)settings setObject:v4 forSetting:15];
}

- (void)setZombifiesHostedContext:(BOOL)context
{
  settings = self->super._settings;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:context];
  [(BSMutableSettings *)settings setObject:v4 forSetting:16];
}

- (void)setShouldPassthroughHitTestEventsIfTransparent:(BOOL)transparent
{
  settings = self->super._settings;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:transparent];
  [(BSMutableSettings *)settings setObject:v4 forSetting:17];
}

- (void)setStopsHitTestTransformAccumulation:(BOOL)accumulation
{
  settings = self->super._settings;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:accumulation];
  [(BSMutableSettings *)settings setObject:v4 forSetting:18];
}

- (void)setStopsSecureSuperlayersValidation:(BOOL)validation
{
  settings = self->super._settings;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:validation];
  [(BSMutableSettings *)settings setObject:v4 forSetting:19];
}

- (void)setShouldSupportFlattening:(BOOL)flattening
{
  settings = self->super._settings;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:flattening];
  [(BSMutableSettings *)settings setObject:v4 forSetting:20];
}

- (void)modifyWindowLayerPresentationContextWithBlock:(id)block
{
  blockCopy = block;
  if (!blockCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIScenePresentationContext.m" lineNumber:616 description:{@"Invalid parameter not satisfying: %@", @"modifyBlock"}];
  }

  windowLayerPresentationContext = [(UIScenePresentationContext *)self windowLayerPresentationContext];
  v6 = [windowLayerPresentationContext mutableCopy];

  if (!v6)
  {
    v6 = objc_alloc_init(UIMutableSceneWindowLayerPresentationContext);
  }

  blockCopy[2](blockCopy, v6);
  [(BSMutableSettings *)self->super._settings setObject:v6 forSetting:21];
}

- (void)modifyLayerPresentationOverrideContextForLayerTarget:(id)target block:(id)block
{
  v29 = *MEMORY[0x1E69E9840];
  targetCopy = target;
  blockCopy = block;
  v9 = blockCopy;
  if (targetCopy)
  {
    if (blockCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIScenePresentationContext.m" lineNumber:630 description:{@"Invalid parameter not satisfying: %@", @"layerTarget"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIScenePresentationContext.m" lineNumber:631 description:{@"Invalid parameter not satisfying: %@", @"modifyBlock"}];

LABEL_3:
  v10 = [(UIMutableScenePresentationContext *)self _existingLayerPresentationContextCreatingIfNecessary:1];
  v11 = [v10 objectForKey:targetCopy];
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
      v18 = [v10 objectForKey:targetCopy];
      v19 = [v17 numberWithBool:BSEqualObjects()];
      v20 = [v10 objectForKey:targetCopy];
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
    [v10 removeObjectForKey:targetCopy];
  }

  else
  {
    [v10 setObject:v16 forKey:targetCopy];
  }
}

- (void)removeLayerPresentationOverrideForLayerTarget:(id)target
{
  targetCopy = target;
  v5 = [(UIMutableScenePresentationContext *)self _existingLayerPresentationContextCreatingIfNecessary:0];
  [v5 removeObjectForKey:targetCopy];
}

- (void)removeAllLayerPresentationOverrides
{
  v2 = [(UIMutableScenePresentationContext *)self _existingLayerPresentationContextCreatingIfNecessary:0];
  [v2 removeAllObjects];
}

- (void)_setMinificationFilterName:(id)name
{
  settings = self->super._settings;
  if (name)
  {
    v4 = self->super._settings;

    [BSMutableSettings setObject:v4 forSetting:"setObject:forSetting:"];
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    [(BSMutableSettings *)settings setObject:null forSetting:8];
  }
}

- (void)_setDefaultPresentationContext:(id)context
{
  contextCopy = context;
  defaultPresentationContext = self->super._defaultPresentationContext;
  p_defaultPresentationContext = &self->super._defaultPresentationContext;
  if (defaultPresentationContext != contextCopy)
  {
    v8 = contextCopy;
    objc_storeStrong(p_defaultPresentationContext, context);
    contextCopy = v8;
  }
}

- (void)_setExclusiveLayerTargetsToInclude:(id)include
{
  settings = self->super._settings;
  if (include)
  {
    v4 = self->super._settings;

    [BSMutableSettings setObject:v4 forSetting:"setObject:forSetting:"];
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    [(BSMutableSettings *)settings setObject:null forSetting:10];
  }
}

- (void)_setLayerTargetsToExclude:(id)exclude
{
  settings = self->super._settings;
  if (exclude)
  {
    v4 = self->super._settings;

    [BSMutableSettings setObject:v4 forSetting:"setObject:forSetting:"];
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    [(BSMutableSettings *)settings setObject:null forSetting:11];
  }
}

- (void)_setVisibilityPropagationEnabled:(BOOL)enabled
{
  settings = self->super._settings;
  v4 = BSSettingFlagForBool();

  [(BSMutableSettings *)settings setFlag:v4 forSetting:12];
}

- (void)_setForwardsKeyboardLayersToHost:(BOOL)host
{
  settings = self->super._settings;
  v4 = BSSettingFlagForBool();

  [(BSMutableSettings *)settings setFlag:v4 forSetting:22];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [UIScenePresentationContext alloc];

  return [(UIScenePresentationContext *)v4 _initWithPresentationContext:self];
}

- (id)_existingLayerPresentationContextCreatingIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v5 = [(BSMutableSettings *)self->super._settings objectForSetting:9];
  v6 = v5;
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = !necessaryCopy;
  }

  v8 = v5;
  if (!v7)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    settings = self->super._settings;
    if (dictionary)
    {
      v8 = dictionary;
      [(BSMutableSettings *)settings setObject:dictionary forSetting:9];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [(BSMutableSettings *)settings setObject:null forSetting:9];

      v8 = 0;
    }
  }

  return v8;
}

@end