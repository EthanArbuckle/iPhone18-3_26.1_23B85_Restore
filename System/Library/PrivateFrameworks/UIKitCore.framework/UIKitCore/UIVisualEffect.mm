@interface UIVisualEffect
+ (id)_effectCopyingFromCaptureGroup:(id)group;
+ (id)effectCombiningEffects:(id)effects;
+ (id)effectCompositingColor:(id)color withMode:(int64_t)mode alpha:(double)alpha;
+ (id)effectCompositingImage:(id)image withMode:(int64_t)mode alpha:(double)alpha;
+ (id)emptyEffect;
- (id)_allEffects;
- (id)effectConfigForQuality:(int64_t)quality;
- (int64_t)_expectedUsage;
- (void)_updateEffectDescriptor:(id)descriptor forEnvironment:(id)environment usage:(int64_t)usage;
@end

@implementation UIVisualEffect

void __29__UIVisualEffect_emptyEffect__block_invoke()
{
  v0 = objc_alloc_init(_UIEmptyEffect);
  v1 = _MergedGlobals_5_2;
  _MergedGlobals_5_2 = v0;
}

+ (id)emptyEffect
{
  if (qword_1ED49A558 != -1)
  {
    dispatch_once(&qword_1ED49A558, &__block_literal_global_44);
  }

  v3 = _MergedGlobals_5_2;

  return v3;
}

- (int64_t)_expectedUsage
{
  if ([(UIVisualEffect *)self _selectorOverridden:sel_effectSettings])
  {
    return 1;
  }

  if ([(UIVisualEffect *)self _selectorOverridden:sel_effectConfigForQuality_])
  {
    return 2;
  }

  if ([(UIVisualEffect *)self _selectorOverridden:sel_effectConfig])
  {
    return 2;
  }

  return 0;
}

+ (id)effectCombiningEffects:(id)effects
{
  effectsCopy = effects;
  v5 = [effectsCopy count];
  if (v5 == 1)
  {
    firstObject = [effectsCopy firstObject];
  }

  else if (v5)
  {
    firstObject = [[_UICompoundEffect alloc] initWithEffects:effectsCopy];
  }

  else
  {
    firstObject = [self emptyEffect];
  }

  v7 = firstObject;

  return v7;
}

+ (id)effectCompositingImage:(id)image withMode:(int64_t)mode alpha:(double)alpha
{
  imageCopy = image;
  v9 = _UIVisualEffectNewOverlay(mode, alpha);
  v10 = v9;
  if (v9)
  {
    [v9 setImage:imageCopy];
    emptyEffect = v10;
  }

  else
  {
    emptyEffect = [self emptyEffect];
  }

  v12 = emptyEffect;

  return v12;
}

+ (id)effectCompositingColor:(id)color withMode:(int64_t)mode alpha:(double)alpha
{
  colorCopy = color;
  v9 = _UIVisualEffectNewOverlay(mode, alpha);
  v10 = v9;
  if (v9)
  {
    [v9 setColor:colorCopy];
    emptyEffect = v10;
  }

  else
  {
    emptyEffect = [self emptyEffect];
  }

  v12 = emptyEffect;

  return v12;
}

+ (id)_effectCopyingFromCaptureGroup:(id)group
{
  v3 = [_UICopyEffect copyEffectWithCaptureGroup:group];

  return v3;
}

- (id)effectConfigForQuality:(int64_t)quality
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIVisualEffect.m" lineNumber:361 description:{@"UIVisualEffect subclass must override %@", v6}];

  return 0;
}

- (id)_allEffects
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = self;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (void)_updateEffectDescriptor:(id)descriptor forEnvironment:(id)environment usage:(int64_t)usage
{
  descriptorCopy = descriptor;
  environmentCopy = environment;
  if ([(UIVisualEffect *)self _selectorOverridden:sel_effectSettings])
  {
    v8 = +[_UILegacyEffectConverter sharedConverter];
    effectSettings = [(UIVisualEffect *)self effectSettings];
    [v8 applyBackdropSettings:effectSettings toEffectDescriptor:descriptorCopy environment:environmentCopy];
  }

  else if ([(UIVisualEffect *)self _selectorOverridden:sel_effectConfigForQuality_])
  {
    v8 = +[_UILegacyEffectConverter sharedConverter];
    effectSettings = +[UIDevice currentDevice];
    v10 = -[UIVisualEffect effectConfigForQuality:](self, "effectConfigForQuality:", [effectSettings _graphicsQuality]);
    [v8 applyVibrancyConfig:v10 toEffectDescriptor:descriptorCopy];
  }

  else
  {
    if (![(UIVisualEffect *)self _selectorOverridden:sel_effectConfig])
    {
      goto LABEL_8;
    }

    v8 = +[_UILegacyEffectConverter sharedConverter];
    effectSettings = [(UIVisualEffect *)self effectConfig];
    [v8 applyVibrancyConfig:effectSettings toEffectDescriptor:descriptorCopy];
  }

LABEL_8:
}

@end