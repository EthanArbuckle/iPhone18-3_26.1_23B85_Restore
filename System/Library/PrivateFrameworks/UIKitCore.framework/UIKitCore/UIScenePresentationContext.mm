@interface UIScenePresentationContext
- (BOOL)_forwardsKeyboardLayersToHost;
- (BOOL)_isVisibilityPropagationEnabled;
- (BOOL)inheritsSecurity;
- (BOOL)isClippingDisabled;
- (BOOL)isEqual:(id)a3;
- (BOOL)resizesHostedContext;
- (BOOL)shouldPassthroughHitTestEventsIfTransparent;
- (BOOL)shouldSupportFlattening;
- (BOOL)stopsHitTestTransformAccumulation;
- (BOOL)stopsSecureSuperlayersValidation;
- (BOOL)zombifiesHostedContext;
- (NSDictionary)layerPresentationOverrides;
- (NSSet)_exclusiveLayerTargetsToInclude;
- (NSSet)_layerTargetsToExclude;
- (NSString)_minificationFilterName;
- (UIColor)backgroundColorWhileHosting;
- (UIColor)backgroundColorWhileNotHosting;
- (UISceneAsynchronousRenderingOptions)asynchronousRenderingOptions;
- (UIScenePresentationContext)init;
- (UISceneWindowLayerPresentationContext)windowLayerPresentationContext;
- (UITransformer)hostTransformer;
- (id)_initWithDefaultValues;
- (id)_initWithPresentationContext:(id)a3;
- (id)_initWithSettings:(id)a3 defaultPresentationContext:(id)a4;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)succinctDescription;
- (unint64_t)appearanceStyle;
- (unint64_t)hash;
- (unint64_t)presentedLayerTypes;
- (unint64_t)renderingMode;
@end

@implementation UIScenePresentationContext

- (BOOL)stopsSecureSuperlayersValidation
{
  v3 = [(BSMutableSettings *)self->_settings objectForSetting:19];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 BOOLValue];
  }

  else
  {
    v5 = [(UIScenePresentationContext *)self->_defaultPresentationContext stopsSecureSuperlayersValidation];
  }

  v6 = v5;

  return v6;
}

- (NSSet)_exclusiveLayerTargetsToInclude
{
  v3 = [(BSMutableSettings *)self->_settings objectForSetting:10];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
    if (v3 == v4)
    {
      v5 = 0;
    }

    else
    {
      v5 = v3;
    }

    v6 = v5;
  }

  else
  {
    v6 = [(UIScenePresentationContext *)self->_defaultPresentationContext _exclusiveLayerTargetsToInclude];
  }

  return v6;
}

- (NSDictionary)layerPresentationOverrides
{
  v3 = [(BSMutableSettings *)self->_settings objectForSetting:9];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
    if (v3 == v4)
    {
      v5 = 0;
    }

    else
    {
      v5 = v3;
    }

    v6 = v5;
  }

  else
  {
    v6 = [(UIScenePresentationContext *)self->_defaultPresentationContext layerPresentationOverrides];
  }

  return v6;
}

- (BOOL)isClippingDisabled
{
  v3 = [(BSMutableSettings *)self->_settings objectForSetting:1];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 BOOLValue];
  }

  else
  {
    v5 = [(UIScenePresentationContext *)self->_defaultPresentationContext isClippingDisabled];
  }

  v6 = v5;

  return v6;
}

- (BOOL)inheritsSecurity
{
  v3 = [(BSMutableSettings *)self->_settings objectForSetting:14];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 BOOLValue];
  }

  else
  {
    v5 = [(UIScenePresentationContext *)self->_defaultPresentationContext inheritsSecurity];
  }

  v6 = v5;

  return v6;
}

- (BOOL)zombifiesHostedContext
{
  v3 = [(BSMutableSettings *)self->_settings objectForSetting:16];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 BOOLValue];
  }

  else
  {
    defaultPresentationContext = self->_defaultPresentationContext;
    if (!defaultPresentationContext)
    {
      v7 = 1;
      goto LABEL_6;
    }

    v5 = [(UIScenePresentationContext *)defaultPresentationContext zombifiesHostedContext];
  }

  v7 = v5;
LABEL_6:

  return v7;
}

- (NSString)_minificationFilterName
{
  v3 = [(BSMutableSettings *)self->_settings objectForSetting:8];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
    if (v3 == v4)
    {
      v5 = 0;
    }

    else
    {
      v5 = v3;
    }

    v6 = v5;
  }

  else
  {
    v6 = [(UIScenePresentationContext *)self->_defaultPresentationContext _minificationFilterName];
  }

  return v6;
}

- (unint64_t)renderingMode
{
  v3 = [(BSMutableSettings *)self->_settings objectForSetting:7];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 unsignedIntegerValue];
  }

  else
  {
    v5 = [(UIScenePresentationContext *)self->_defaultPresentationContext renderingMode];
  }

  v6 = v5;

  return v6;
}

- (unint64_t)presentedLayerTypes
{
  v3 = [(BSMutableSettings *)self->_settings objectForSetting:3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 unsignedIntegerValue];
  }

  else
  {
    v5 = [(UIScenePresentationContext *)self->_defaultPresentationContext presentedLayerTypes];
  }

  v6 = v5;

  return v6;
}

- (NSSet)_layerTargetsToExclude
{
  v3 = [(BSMutableSettings *)self->_settings objectForSetting:11];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
    if (v3 == v4)
    {
      v5 = 0;
    }

    else
    {
      v5 = v3;
    }

    v6 = v5;
  }

  else
  {
    v6 = [(UIScenePresentationContext *)self->_defaultPresentationContext _layerTargetsToExclude];
  }

  return v6;
}

- (BOOL)resizesHostedContext
{
  v3 = [(BSMutableSettings *)self->_settings objectForSetting:15];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 BOOLValue];
  }

  else
  {
    v5 = [(UIScenePresentationContext *)self->_defaultPresentationContext resizesHostedContext];
  }

  v6 = v5;

  return v6;
}

- (BOOL)stopsHitTestTransformAccumulation
{
  v3 = [(BSMutableSettings *)self->_settings objectForSetting:18];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 BOOLValue];
  }

  else
  {
    v5 = [(UIScenePresentationContext *)self->_defaultPresentationContext stopsHitTestTransformAccumulation];
  }

  v6 = v5;

  return v6;
}

- (UISceneAsynchronousRenderingOptions)asynchronousRenderingOptions
{
  v3 = [(BSMutableSettings *)self->_settings objectForSetting:13];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
    if (v3 == v4)
    {
      v5 = 0;
    }

    else
    {
      v5 = v3;
    }

    v6 = v5;
  }

  else
  {
    v6 = [(UIScenePresentationContext *)self->_defaultPresentationContext asynchronousRenderingOptions];
  }

  return v6;
}

- (id)_initWithDefaultValues
{
  if (qword_1ED49E0F8 != -1)
  {
    dispatch_once(&qword_1ED49E0F8, &__block_literal_global_264);
  }

  v3 = _MergedGlobals_1114;

  return [(UIScenePresentationContext *)self _initWithDefaultPresentationContext:v3];
}

- (BOOL)_isVisibilityPropagationEnabled
{
  if ([(BSMutableSettings *)self->_settings flagForSetting:12]== 0x7FFFFFFFFFFFFFFFLL)
  {
    defaultPresentationContext = self->_defaultPresentationContext;

    return [(UIScenePresentationContext *)defaultPresentationContext _isVisibilityPropagationEnabled];
  }

  else
  {

    return BSSettingFlagIsYes();
  }
}

- (unint64_t)appearanceStyle
{
  v3 = [(BSMutableSettings *)self->_settings objectForSetting:2];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 unsignedIntegerValue];
  }

  else
  {
    v5 = [(UIScenePresentationContext *)self->_defaultPresentationContext appearanceStyle];
  }

  v6 = v5;

  return v6;
}

- (BOOL)shouldSupportFlattening
{
  v3 = [(BSMutableSettings *)self->_settings objectForSetting:20];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 BOOLValue];
  }

  else
  {
    v5 = [(UIScenePresentationContext *)self->_defaultPresentationContext shouldSupportFlattening];
  }

  v6 = v5;

  return v6;
}

- (UISceneWindowLayerPresentationContext)windowLayerPresentationContext
{
  v3 = [(BSMutableSettings *)self->_settings objectForSetting:21];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(UIScenePresentationContext *)self->_defaultPresentationContext windowLayerPresentationContext];
  }

  v6 = v5;

  return v6;
}

- (UIColor)backgroundColorWhileHosting
{
  v3 = [(BSMutableSettings *)self->_settings objectForSetting:4];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
    if (v3 == v4)
    {
      v5 = 0;
    }

    else
    {
      v5 = v3;
    }

    v6 = v5;
  }

  else
  {
    v6 = [(UIScenePresentationContext *)self->_defaultPresentationContext backgroundColorWhileHosting];
  }

  return v6;
}

- (UIColor)backgroundColorWhileNotHosting
{
  v3 = [(BSMutableSettings *)self->_settings objectForSetting:5];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
    if (v3 == v4)
    {
      v5 = 0;
    }

    else
    {
      v5 = v3;
    }

    v6 = v5;
  }

  else
  {
    v6 = [(UIScenePresentationContext *)self->_defaultPresentationContext backgroundColorWhileNotHosting];
  }

  return v6;
}

- (UITransformer)hostTransformer
{
  v3 = [(BSMutableSettings *)self->_settings objectForSetting:6];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
    if (v3 == v4)
    {
      v5 = 0;
    }

    else
    {
      v5 = v3;
    }

    v6 = v5;
  }

  else
  {
    v6 = [(UIScenePresentationContext *)self->_defaultPresentationContext hostTransformer];
  }

  return v6;
}

- (BOOL)shouldPassthroughHitTestEventsIfTransparent
{
  v3 = [(BSMutableSettings *)self->_settings objectForSetting:17];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 BOOLValue];
  }

  else
  {
    v5 = [(UIScenePresentationContext *)self->_defaultPresentationContext shouldPassthroughHitTestEventsIfTransparent];
  }

  v6 = v5;

  return v6;
}

uint64_t __52__UIScenePresentationContext__initWithDefaultValues__block_invoke()
{
  v0 = [(UIScenePresentationContext *)[UIMutableScenePresentationContext alloc] _initWithSettings:0 defaultPresentationContext:0];
  v1 = _MergedGlobals_1114;
  _MergedGlobals_1114 = v0;

  [_MergedGlobals_1114 setClippingDisabled:0];
  [_MergedGlobals_1114 setAppearanceStyle:0];
  [_MergedGlobals_1114 setBackgroundColorWhileHosting:0];
  [_MergedGlobals_1114 setBackgroundColorWhileNotHosting:0];
  [_MergedGlobals_1114 setPresentedLayerTypes:26];
  [_MergedGlobals_1114 setRenderingMode:0];
  [_MergedGlobals_1114 setInheritsSecurity:0];
  [_MergedGlobals_1114 setResizesHostedContext:0];
  [_MergedGlobals_1114 setShouldPassthroughHitTestEventsIfTransparent:0];
  [_MergedGlobals_1114 setStopsHitTestTransformAccumulation:UISelfHasEntitlement(@"com.apple.QuartzCore.system-layers")];
  [_MergedGlobals_1114 setStopsSecureSuperlayersValidation:UISelfHasEntitlement(@"com.apple.QuartzCore.secure-mode")];
  [_MergedGlobals_1114 setShouldSupportFlattening:0];
  [_MergedGlobals_1114 _setMinificationFilterName:0];
  [_MergedGlobals_1114 _setVisibilityPropagationEnabled:0];
  v2 = _MergedGlobals_1114;
  v3 = +[_UISceneKeyboardProxyLayerForwardingManager isRootSystemShellProcess]^ 1;

  return [v2 _setForwardsKeyboardLayersToHost:v3];
}

- (UIScenePresentationContext)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"UIScenePresentationContext.m" lineNumber:89 description:@"[UIScenePresentationContext init] is unavailable for use."];

  v6.receiver = self;
  v6.super_class = UIScenePresentationContext;
  return [(UIScenePresentationContext *)&v6 init];
}

- (id)_initWithSettings:(id)a3 defaultPresentationContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = UIScenePresentationContext;
  v8 = [(UIScenePresentationContext *)&v12 init];
  if (v8)
  {
    if (v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = objc_alloc_init(MEMORY[0x1E698E700]);
    }

    settings = v8->_settings;
    v8->_settings = v9;

    objc_storeStrong(&v8->_defaultPresentationContext, a4);
  }

  return v8;
}

- (id)_initWithPresentationContext:(id)a3
{
  v4 = a3;
  v5 = [v4[1] mutableCopy];
  v6 = [(UIScenePresentationContext *)self _initWithSettings:v5 defaultPresentationContext:v4[2]];

  if (v6)
  {
    v7 = [v4[3] mutableCopy];
    v8 = *(v6 + 3);
    *(v6 + 3) = v7;

    v9 = [v4[1] objectForSetting:21];
    v10 = [v9 mutableCopy];

    [*(v6 + 1) setObject:v10 forSetting:21];
    v11 = [v4[1] objectForSetting:9];
    if (v11)
    {
      v12 = v11;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [v12 mutableCopy];

        v12 = v13;
      }

      [*(v6 + 1) setObject:v12 forSetting:9];
    }
  }

  return v6;
}

- (BOOL)_forwardsKeyboardLayersToHost
{
  if ([(BSMutableSettings *)self->_settings flagForSetting:22]== 0x7FFFFFFFFFFFFFFFLL)
  {
    defaultPresentationContext = self->_defaultPresentationContext;

    return [(UIScenePresentationContext *)defaultPresentationContext _forwardsKeyboardLayersToHost];
  }

  else
  {

    return BSSettingFlagIsYes();
  }
}

- (unint64_t)hash
{
  v3 = [(UIScenePresentationContext *)self renderingMode];
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v3 ^ (v3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v3 ^ (v3 >> 30))) >> 27));
  v67 = v4;
  if ([(UIScenePresentationContext *)self isClippingDisabled])
  {
    v5 = 0xBF58476D1CE4E5B9;
  }

  else
  {
    v5 = 0;
  }

  v66 = 0x94D049BB133111EBLL * (v5 ^ (v5 >> 27));
  v6 = [(UIScenePresentationContext *)self appearanceStyle];
  v65 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) >> 27));
  v7 = v4 ^ v66 ^ v65;
  v8 = [(UIScenePresentationContext *)self backgroundColorWhileHosting];
  v9 = [v8 hash];
  v10 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) >> 27));
  v63 = v10;

  v11 = [(UIScenePresentationContext *)self backgroundColorWhileNotHosting];
  v12 = [v11 hash];
  v64 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v12 ^ (v12 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v12 ^ (v12 >> 30))) >> 27));
  v13 = v7 ^ v10 ^ v64;

  v14 = [(UIScenePresentationContext *)self _exclusiveLayerTargetsToInclude];
  v15 = [v14 hash];
  v16 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v15 ^ (v15 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v15 ^ (v15 >> 30))) >> 27));
  v61 = v16;

  v17 = [(UIScenePresentationContext *)self _layerTargetsToExclude];
  v18 = [v17 hash];
  v62 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v18 ^ (v18 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v18 ^ (v18 >> 30))) >> 27));

  v19 = [(UIScenePresentationContext *)self _minificationFilterName];
  v20 = [v19 hash];
  v60 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v20 ^ (v20 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v20 ^ (v20 >> 30))) >> 27));
  v21 = v13 ^ v16 ^ v62 ^ v60;

  v22 = [(UIScenePresentationContext *)self presentedLayerTypes];
  v23 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v22 ^ (v22 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v22 ^ (v22 >> 30))) >> 27));
  v58 = v23;
  v24 = [(UIScenePresentationContext *)self hostTransformer];
  v25 = [v24 transforms];
  v26 = [v25 hash];
  v59 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v26 ^ (v26 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v26 ^ (v26 >> 30))) >> 27));

  v27 = [(UIScenePresentationContext *)self layerPresentationOverrides];
  v28 = [v27 hash];
  v57 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v28 ^ (v28 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v28 ^ (v28 >> 30))) >> 27));
  v29 = v21 ^ v23 ^ v59 ^ v57;

  if ([(UIScenePresentationContext *)self _isVisibilityPropagationEnabled])
  {
    v30 = 0xBF58476D1CE4E5B9;
  }

  else
  {
    v30 = 0;
  }

  v31 = 0x94D049BB133111EBLL * (v30 ^ (v30 >> 27));
  v55 = v31;
  v32 = [(UIScenePresentationContext *)self asynchronousRenderingOptions];
  v33 = [v32 hash];
  v56 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v33 ^ (v33 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v33 ^ (v33 >> 30))) >> 27));
  v34 = v31 ^ v56;

  if ([(UIScenePresentationContext *)self inheritsSecurity])
  {
    v35 = 0xBF58476D1CE4E5B9;
  }

  else
  {
    v35 = 0;
  }

  v54 = 0x94D049BB133111EBLL * (v35 ^ (v35 >> 27));
  if ([(UIScenePresentationContext *)self resizesHostedContext])
  {
    v36 = 0xBF58476D1CE4E5B9;
  }

  else
  {
    v36 = 0;
  }

  v53 = 0x94D049BB133111EBLL * (v36 ^ (v36 >> 27));
  if ([(UIScenePresentationContext *)self zombifiesHostedContext])
  {
    v37 = 0xBF58476D1CE4E5B9;
  }

  else
  {
    v37 = 0;
  }

  v52 = 0x94D049BB133111EBLL * (v37 ^ (v37 >> 27));
  v51 = v29 ^ v34 ^ v54 ^ v53 ^ v52;
  if ([(UIScenePresentationContext *)self shouldPassthroughHitTestEventsIfTransparent])
  {
    v38 = 0xBF58476D1CE4E5B9;
  }

  else
  {
    v38 = 0;
  }

  v39 = 0x94D049BB133111EBLL * (v38 ^ (v38 >> 27));
  if ([(UIScenePresentationContext *)self stopsHitTestTransformAccumulation])
  {
    v40 = 0xBF58476D1CE4E5B9;
  }

  else
  {
    v40 = 0;
  }

  v41 = 0x94D049BB133111EBLL * (v40 ^ (v40 >> 27));
  if ([(UIScenePresentationContext *)self stopsSecureSuperlayersValidation])
  {
    v42 = 0xBF58476D1CE4E5B9;
  }

  else
  {
    v42 = 0;
  }

  v43 = 0x94D049BB133111EBLL * (v42 ^ (v42 >> 27));
  if ([(UIScenePresentationContext *)self shouldSupportFlattening])
  {
    v44 = 0xBF58476D1CE4E5B9;
  }

  else
  {
    v44 = 0;
  }

  v45 = 0x94D049BB133111EBLL * (v44 ^ (v44 >> 27));
  v46 = [(UIScenePresentationContext *)self windowLayerPresentationContext];
  v47 = [v46 hash];
  v48 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v47 ^ (v47 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v47 ^ (v47 >> 30))) >> 27));

  if ([(UIScenePresentationContext *)self _forwardsKeyboardLayersToHost])
  {
    v49 = 0xBF58476D1CE4E5B9;
  }

  else
  {
    v49 = 0;
  }

  return v66 ^ ((v51 ^ v39 ^ v41 ^ v43 ^ v45 ^ v48 ^ (0x94D049BB133111EBLL * (v49 ^ (v49 >> 27)))) >> 31) ^ v67 ^ v65 ^ v63 ^ v64 ^ v61 ^ v62 ^ v60 ^ v58 ^ v59 ^ v55 ^ v57 ^ v54 ^ v56 ^ v53 ^ v52 ^ v39 ^ v41 ^ v43 ^ v45 ^ (0x94D049BB133111EBLL * (v49 ^ (v49 >> 27))) ^ v48;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = [(UIScenePresentationContext *)self renderingMode];
  v119[0] = MEMORY[0x1E69E9820];
  v119[1] = 3221225472;
  v119[2] = __38__UIScenePresentationContext_isEqual___block_invoke;
  v119[3] = &unk_1E7109EE0;
  v7 = v4;
  v120 = v7;
  v8 = [v5 appendUnsignedInteger:v6 counterpart:v119];
  v9 = [(UIScenePresentationContext *)self isClippingDisabled];
  v117[0] = MEMORY[0x1E69E9820];
  v117[1] = 3221225472;
  v117[2] = __38__UIScenePresentationContext_isEqual___block_invoke_2;
  v117[3] = &unk_1E70F3CB0;
  v10 = v7;
  v118 = v10;
  v11 = [v5 appendBool:v9 counterpart:v117];
  v12 = [(UIScenePresentationContext *)self _isVisibilityPropagationEnabled];
  v115[0] = MEMORY[0x1E69E9820];
  v115[1] = 3221225472;
  v115[2] = __38__UIScenePresentationContext_isEqual___block_invoke_3;
  v115[3] = &unk_1E70F3CB0;
  v13 = v10;
  v116 = v13;
  v14 = [v5 appendBool:v12 counterpart:v115];
  v15 = [(UIScenePresentationContext *)self appearanceStyle];
  v113[0] = MEMORY[0x1E69E9820];
  v113[1] = 3221225472;
  v113[2] = __38__UIScenePresentationContext_isEqual___block_invoke_4;
  v113[3] = &unk_1E7109EE0;
  v16 = v13;
  v114 = v16;
  v17 = [v5 appendUnsignedInteger:v15 counterpart:v113];
  v18 = [(UIScenePresentationContext *)self backgroundColorWhileHosting];
  v111[0] = MEMORY[0x1E69E9820];
  v111[1] = 3221225472;
  v111[2] = __38__UIScenePresentationContext_isEqual___block_invoke_5;
  v111[3] = &unk_1E70F66F0;
  v19 = v16;
  v112 = v19;
  v20 = [v5 appendObject:v18 counterpart:v111];

  v21 = [(UIScenePresentationContext *)self backgroundColorWhileNotHosting];
  v109[0] = MEMORY[0x1E69E9820];
  v109[1] = 3221225472;
  v109[2] = __38__UIScenePresentationContext_isEqual___block_invoke_6;
  v109[3] = &unk_1E70F66F0;
  v22 = v19;
  v110 = v22;
  v23 = [v5 appendObject:v21 counterpart:v109];

  v24 = [(UIScenePresentationContext *)self _minificationFilterName];
  v107[0] = MEMORY[0x1E69E9820];
  v107[1] = 3221225472;
  v107[2] = __38__UIScenePresentationContext_isEqual___block_invoke_7;
  v107[3] = &unk_1E70F66F0;
  v25 = v22;
  v108 = v25;
  v26 = [v5 appendObject:v24 counterpart:v107];

  v27 = [(UIScenePresentationContext *)self presentedLayerTypes];
  v105[0] = MEMORY[0x1E69E9820];
  v105[1] = 3221225472;
  v105[2] = __38__UIScenePresentationContext_isEqual___block_invoke_8;
  v105[3] = &unk_1E7109EE0;
  v28 = v25;
  v106 = v28;
  v29 = [v5 appendUnsignedInteger:v27 counterpart:v105];
  v30 = [(UIScenePresentationContext *)self hostTransformer];
  v31 = [v30 transforms];
  v103[0] = MEMORY[0x1E69E9820];
  v103[1] = 3221225472;
  v103[2] = __38__UIScenePresentationContext_isEqual___block_invoke_9;
  v103[3] = &unk_1E70F66F0;
  v32 = v28;
  v104 = v32;
  v33 = [v5 appendObject:v31 counterpart:v103];

  v34 = [(UIScenePresentationContext *)self layerPresentationOverrides];
  v101[0] = MEMORY[0x1E69E9820];
  v101[1] = 3221225472;
  v101[2] = __38__UIScenePresentationContext_isEqual___block_invoke_10;
  v101[3] = &unk_1E70F66F0;
  v35 = v32;
  v102 = v35;
  v36 = [v5 appendObject:v34 counterpart:v101];

  v37 = [(UIScenePresentationContext *)self _exclusiveLayerTargetsToInclude];
  v99[0] = MEMORY[0x1E69E9820];
  v99[1] = 3221225472;
  v99[2] = __38__UIScenePresentationContext_isEqual___block_invoke_11;
  v99[3] = &unk_1E70F66F0;
  v38 = v35;
  v100 = v38;
  v39 = [v5 appendObject:v37 counterpart:v99];

  v40 = [(UIScenePresentationContext *)self _layerTargetsToExclude];
  v97[0] = MEMORY[0x1E69E9820];
  v97[1] = 3221225472;
  v97[2] = __38__UIScenePresentationContext_isEqual___block_invoke_12;
  v97[3] = &unk_1E70F66F0;
  v41 = v38;
  v98 = v41;
  v42 = [v5 appendObject:v40 counterpart:v97];

  v43 = [(UIScenePresentationContext *)self asynchronousRenderingOptions];
  v95[0] = MEMORY[0x1E69E9820];
  v95[1] = 3221225472;
  v95[2] = __38__UIScenePresentationContext_isEqual___block_invoke_13;
  v95[3] = &unk_1E70F66F0;
  v44 = v41;
  v96 = v44;
  v45 = [v5 appendObject:v43 counterpart:v95];

  v46 = [(UIScenePresentationContext *)self inheritsSecurity];
  v93[0] = MEMORY[0x1E69E9820];
  v93[1] = 3221225472;
  v93[2] = __38__UIScenePresentationContext_isEqual___block_invoke_14;
  v93[3] = &unk_1E70F3CB0;
  v47 = v44;
  v94 = v47;
  v48 = [v5 appendBool:v46 counterpart:v93];
  v49 = [(UIScenePresentationContext *)self resizesHostedContext];
  v91[0] = MEMORY[0x1E69E9820];
  v91[1] = 3221225472;
  v91[2] = __38__UIScenePresentationContext_isEqual___block_invoke_15;
  v91[3] = &unk_1E70F3CB0;
  v50 = v47;
  v92 = v50;
  v51 = [v5 appendBool:v49 counterpart:v91];
  v52 = [(UIScenePresentationContext *)self zombifiesHostedContext];
  v89[0] = MEMORY[0x1E69E9820];
  v89[1] = 3221225472;
  v89[2] = __38__UIScenePresentationContext_isEqual___block_invoke_16;
  v89[3] = &unk_1E70F3CB0;
  v53 = v50;
  v90 = v53;
  v54 = [v5 appendBool:v52 counterpart:v89];
  v55 = [(UIScenePresentationContext *)self shouldPassthroughHitTestEventsIfTransparent];
  v87[0] = MEMORY[0x1E69E9820];
  v87[1] = 3221225472;
  v87[2] = __38__UIScenePresentationContext_isEqual___block_invoke_17;
  v87[3] = &unk_1E70F3CB0;
  v56 = v53;
  v88 = v56;
  v57 = [v5 appendBool:v55 counterpart:v87];
  v58 = [(UIScenePresentationContext *)self stopsHitTestTransformAccumulation];
  v85[0] = MEMORY[0x1E69E9820];
  v85[1] = 3221225472;
  v85[2] = __38__UIScenePresentationContext_isEqual___block_invoke_18;
  v85[3] = &unk_1E70F3CB0;
  v59 = v56;
  v86 = v59;
  v60 = [v5 appendBool:v58 counterpart:v85];
  v61 = [(UIScenePresentationContext *)self stopsSecureSuperlayersValidation];
  v83[0] = MEMORY[0x1E69E9820];
  v83[1] = 3221225472;
  v83[2] = __38__UIScenePresentationContext_isEqual___block_invoke_19;
  v83[3] = &unk_1E70F3CB0;
  v62 = v59;
  v84 = v62;
  v63 = [v5 appendBool:v61 counterpart:v83];
  v64 = [(UIScenePresentationContext *)self shouldSupportFlattening];
  v81[0] = MEMORY[0x1E69E9820];
  v81[1] = 3221225472;
  v81[2] = __38__UIScenePresentationContext_isEqual___block_invoke_20;
  v81[3] = &unk_1E70F3CB0;
  v65 = v62;
  v82 = v65;
  v66 = [v5 appendBool:v64 counterpart:v81];
  v67 = [(UIScenePresentationContext *)self windowLayerPresentationContext];
  v79[0] = MEMORY[0x1E69E9820];
  v79[1] = 3221225472;
  v79[2] = __38__UIScenePresentationContext_isEqual___block_invoke_21;
  v79[3] = &unk_1E70F66F0;
  v68 = v65;
  v80 = v68;
  v69 = [v5 appendObject:v67 counterpart:v79];

  v70 = [(UIScenePresentationContext *)self _forwardsKeyboardLayersToHost];
  v74 = MEMORY[0x1E69E9820];
  v75 = 3221225472;
  v76 = __38__UIScenePresentationContext_isEqual___block_invoke_22;
  v77 = &unk_1E70F3CB0;
  v78 = v68;
  v71 = v68;
  v72 = [v5 appendBool:v70 counterpart:&v74];
  LOBYTE(v68) = [v5 isEqual];

  return v68;
}

id __38__UIScenePresentationContext_isEqual___block_invoke_9(uint64_t a1)
{
  v1 = [*(a1 + 32) hostTransformer];
  v2 = [v1 transforms];

  return v2;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [UIMutableScenePresentationContext alloc];

  return [(UIScenePresentationContext *)v4 _initWithPresentationContext:self];
}

- (id)succinctDescription
{
  v2 = [(UIScenePresentationContext *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(UIScenePresentationContext *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(UIScenePresentationContext *)self succinctDescriptionBuilder];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__UIScenePresentationContext_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_1E70F35B8;
  v10[4] = self;
  v6 = v5;
  v11 = v6;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v10];

  v7 = v11;
  v8 = v6;

  return v6;
}

void __68__UIScenePresentationContext_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  [*(a1 + 32) presentedLayerTypes];
  v2 = *(a1 + 40);
  v3 = NSStringFromFBSceneLayerTypeMask();
  v4 = [v2 appendObject:v3 withName:@"hostedLayerTypes"];

  if ([*(a1 + 32) _isVisibilityPropagationEnabled])
  {
    v5 = [*(a1 + 40) appendBool:objc_msgSend(*(a1 + 32) withName:{"_isVisibilityPropagationEnabled"), @"visibilityPropagationEnabled"}];
  }

  v6 = [*(a1 + 40) appendBool:objc_msgSend(*(a1 + 32) withName:{"isClippingDisabled"), @"isClippingDisabled"}];
  v7 = *(a1 + 40);
  v8 = NSStringFromUISceneAppearanceStyle([*(a1 + 32) appearanceStyle]);
  v9 = [v7 appendObject:v8 withName:@"appearanceStyle"];

  v10 = *(a1 + 40);
  v11 = NSStringFromUISceneRenderingMode([*(a1 + 32) renderingMode]);
  v12 = [v10 appendObject:v11 withName:@"renderMode"];

  v13 = *(a1 + 40);
  v14 = [*(a1 + 32) backgroundColorWhileHosting];
  v15 = [v13 appendObject:v14 withName:@"BGColorWhileHosting" skipIfNil:1];

  v16 = *(a1 + 40);
  v17 = [*(a1 + 32) backgroundColorWhileNotHosting];
  v18 = [v16 appendObject:v17 withName:@"BGColorWhileNotHosting" skipIfNil:1];

  v19 = *(a1 + 40);
  v20 = [*(a1 + 32) hostTransformer];
  v21 = [v19 appendObject:v20 withName:@"hostTransformer" skipIfNil:1];

  v22 = *(a1 + 40);
  v23 = [*(a1 + 32) asynchronousRenderingOptions];
  v24 = [v22 appendObject:v23 withName:@"asynchronousRenderingOptions" skipIfNil:1];

  v25 = [*(a1 + 40) appendBool:objc_msgSend(*(a1 + 32) withName:"inheritsSecurity") ifEqualTo:{@"inheritsSecurity", 1}];
  v26 = [*(a1 + 40) appendBool:objc_msgSend(*(a1 + 32) withName:"resizesHostedContext") ifEqualTo:{@"resizesHostedContext", 1}];
  v27 = [*(a1 + 40) appendBool:objc_msgSend(*(a1 + 32) withName:{"zombifiesHostedContext"), @"zombifiesHostedContext"}];
  v28 = [*(a1 + 40) appendBool:objc_msgSend(*(a1 + 32) withName:"shouldPassthroughHitTestEventsIfTransparent") ifEqualTo:{@"shouldPassthroughHitTestEventsIfTransparent", 1}];
  v29 = [*(a1 + 40) appendBool:objc_msgSend(*(a1 + 32) withName:"stopsHitTestTransformAccumulation") ifEqualTo:{@"stopsHitTestTransformAccumulation", 1}];
  v30 = [*(a1 + 40) appendBool:objc_msgSend(*(a1 + 32) withName:"stopsSecureSuperlayersValidation") ifEqualTo:{@"stopsSecureSuperlayersValidation", 1}];
  v31 = [*(a1 + 40) appendBool:objc_msgSend(*(a1 + 32) withName:"_forwardsKeyboardLayersToHost") ifEqualTo:{@"forwardsKeyboardLayersToHost", 1}];
  v32 = [*(a1 + 40) appendBool:objc_msgSend(*(a1 + 32) withName:"shouldSupportFlattening") ifEqualTo:{@"shouldSupportFlattening", 1}];
  v33 = *(a1 + 40);
  v34 = [*(a1 + 32) windowLayerPresentationContext];
  v35 = [v33 appendObject:v34 withName:@"windowLayerPresentationContext" skipIfNil:1];

  v36 = [*(a1 + 32) layerPresentationOverrides];
  v37 = [v36 count];

  if (v37)
  {
    v38 = *(a1 + 40);
    v39 = [v38 activeMultilinePrefix];
    v47 = MEMORY[0x1E69E9820];
    v48 = 3221225472;
    v49 = __68__UIScenePresentationContext_descriptionBuilderWithMultilinePrefix___block_invoke_2;
    v50 = &unk_1E70F35B8;
    v40 = *(a1 + 40);
    v51 = *(a1 + 32);
    v52 = v40;
    [v38 appendBodySectionWithName:@"layerPresentationContexts" multilinePrefix:v39 block:&v47];
  }

  v41 = *(a1 + 40);
  v42 = [*(a1 + 32) _exclusiveLayerTargetsToInclude];
  v43 = [v42 allObjects];
  [v41 appendArraySection:v43 withName:@"exclusiveLayerTargetsToInclude" skipIfEmpty:1];

  v44 = *(a1 + 40);
  v45 = [*(a1 + 32) _layerTargetsToExclude];
  v46 = [v45 allObjects];
  [v44 appendArraySection:v46 withName:@"layerTargetsToExclude" skipIfEmpty:1];
}

void __68__UIScenePresentationContext_descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) layerPresentationOverrides];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __68__UIScenePresentationContext_descriptionBuilderWithMultilinePrefix___block_invoke_3;
  v3[3] = &unk_1E7109D00;
  v4 = *(a1 + 40);
  [v2 enumerateKeysAndObjectsUsingBlock:v3];
}

void __68__UIScenePresentationContext_descriptionBuilderWithMultilinePrefix___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = *(a1 + 32);
  v6 = [a2 description];
  v7 = [v5 appendObject:v8 withName:v6];
}

@end