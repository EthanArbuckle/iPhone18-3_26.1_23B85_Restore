@interface UIVisualEffect
+ (id)_effectCopyingFromCaptureGroup:(id)a3;
+ (id)effectCombiningEffects:(id)a3;
+ (id)effectCompositingColor:(id)a3 withMode:(int64_t)a4 alpha:(double)a5;
+ (id)effectCompositingImage:(id)a3 withMode:(int64_t)a4 alpha:(double)a5;
+ (id)emptyEffect;
- (id)_allEffects;
- (id)effectConfigForQuality:(int64_t)a3;
- (int64_t)_expectedUsage;
- (void)_updateEffectDescriptor:(id)a3 forEnvironment:(id)a4 usage:(int64_t)a5;
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

+ (id)effectCombiningEffects:(id)a3
{
  v4 = a3;
  v5 = [v4 count];
  if (v5 == 1)
  {
    v6 = [v4 firstObject];
  }

  else if (v5)
  {
    v6 = [[_UICompoundEffect alloc] initWithEffects:v4];
  }

  else
  {
    v6 = [a1 emptyEffect];
  }

  v7 = v6;

  return v7;
}

+ (id)effectCompositingImage:(id)a3 withMode:(int64_t)a4 alpha:(double)a5
{
  v8 = a3;
  v9 = _UIVisualEffectNewOverlay(a4, a5);
  v10 = v9;
  if (v9)
  {
    [v9 setImage:v8];
    v11 = v10;
  }

  else
  {
    v11 = [a1 emptyEffect];
  }

  v12 = v11;

  return v12;
}

+ (id)effectCompositingColor:(id)a3 withMode:(int64_t)a4 alpha:(double)a5
{
  v8 = a3;
  v9 = _UIVisualEffectNewOverlay(a4, a5);
  v10 = v9;
  if (v9)
  {
    [v9 setColor:v8];
    v11 = v10;
  }

  else
  {
    v11 = [a1 emptyEffect];
  }

  v12 = v11;

  return v12;
}

+ (id)_effectCopyingFromCaptureGroup:(id)a3
{
  v3 = [_UICopyEffect copyEffectWithCaptureGroup:a3];

  return v3;
}

- (id)effectConfigForQuality:(int64_t)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = NSStringFromSelector(a2);
  [v5 handleFailureInMethod:a2 object:self file:@"UIVisualEffect.m" lineNumber:361 description:{@"UIVisualEffect subclass must override %@", v6}];

  return 0;
}

- (id)_allEffects
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = self;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (void)_updateEffectDescriptor:(id)a3 forEnvironment:(id)a4 usage:(int64_t)a5
{
  v11 = a3;
  v7 = a4;
  if ([(UIVisualEffect *)self _selectorOverridden:sel_effectSettings])
  {
    v8 = +[_UILegacyEffectConverter sharedConverter];
    v9 = [(UIVisualEffect *)self effectSettings];
    [v8 applyBackdropSettings:v9 toEffectDescriptor:v11 environment:v7];
  }

  else if ([(UIVisualEffect *)self _selectorOverridden:sel_effectConfigForQuality_])
  {
    v8 = +[_UILegacyEffectConverter sharedConverter];
    v9 = +[UIDevice currentDevice];
    v10 = -[UIVisualEffect effectConfigForQuality:](self, "effectConfigForQuality:", [v9 _graphicsQuality]);
    [v8 applyVibrancyConfig:v10 toEffectDescriptor:v11];
  }

  else
  {
    if (![(UIVisualEffect *)self _selectorOverridden:sel_effectConfig])
    {
      goto LABEL_8;
    }

    v8 = +[_UILegacyEffectConverter sharedConverter];
    v9 = [(UIVisualEffect *)self effectConfig];
    [v8 applyVibrancyConfig:v9 toEffectDescriptor:v11];
  }

LABEL_8:
}

@end