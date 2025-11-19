@interface UIVibrancyEffect
+ (UIVibrancyEffect)effectForBlurEffect:(UIBlurEffect *)blurEffect;
+ (UIVibrancyEffect)effectForBlurEffect:(UIBlurEffect *)blurEffect style:(UIVibrancyEffectStyle)style;
+ (id)_darkVibrantEffectWithLightenColor:(id)a3 dodgeColor:(id)a4 compositingColor:(id)a5;
+ (id)_effectForBlurEffect:(id)a3 vibrancyStyle:(int64_t)a4;
+ (id)_effectWithStyle:(int64_t)a3 ignoreSimpleVibrancy:(BOOL)a4;
+ (id)_lightVibrantEffectWithDarkenColor:(id)a3 burnColor:(id)a4 compositingColor:(id)a5;
+ (id)_vibrancyEntryWithType:(id)a3 inputColor1:(id)a4 inputColor2:(id)a5 inputReversed:(BOOL)a6;
+ (id)_vibrantEffectForLightMaterial:(id)a3 darkMaterial:(id)a4 vibrancyStyle:(int64_t)a5;
+ (id)_vibrantEffectWithCAColorMatrix:(CAColorMatrix *)a3 alpha:(double)a4;
+ (id)_vibrantEffectWithLightCAColorMatrix:(CAColorMatrix *)a3 darkCAColorMatrix:(CAColorMatrix *)a4 alpha:(double)a5;
+ (id)_vibrantEffectWithLightCAColorMatrix:(CAColorMatrix *)a3 darkCAColorMatrix:(CAColorMatrix *)a4 tintColor:(id)a5;
+ (id)_vibrantEffectWithLightVibrantColorMatrix:(id)a3 darkVibrantColorMatrix:(id)a4 alpha:(double)a5;
+ (id)_vibrantShadowEffect;
+ (id)darkVibrantEffectWithDodgeColor:(id)a3 lightenColor:(id)a4 compositingColor:(id)a5;
+ (id)lightVibrantEffectWithBurnColor:(id)a3 darkenColor:(id)a4 compositingColor:(id)a5;
+ (id)vibrantChromeShadowEffect;
+ (id)vibrantEffectWithCompositingMode:(int64_t)a3 compositingColor:(id)a4;
+ (id)vibrantHeavyShadowEffect;
+ (id)vibrantMediumShadowEffect;
- (BOOL)_isAutomaticStyle;
- (BOOL)isEqual:(id)a3;
- (UIVibrancyEffect)init;
- (UIVibrancyEffect)initWithCoder:(id)a3;
- (id)_effectReplacingTintColor:(id)a3;
- (id)_initWithImplementation:(id)a3;
- (id)_reduceTransparencyEffectConfig;
- (id)description;
- (id)effectConfigForQuality:(int64_t)a3;
- (id)effectConfigForReducedTransperancy:(BOOL)a3;
- (id)effectForUserInterfaceStyle:(int64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UIVibrancyEffect

+ (UIVibrancyEffect)effectForBlurEffect:(UIBlurEffect *)blurEffect
{
  v4 = blurEffect;
  if ([(UIBlurEffect *)v4 _canProvideVibrancyEffect])
  {
    if ([(UIBlurEffect *)v4 _canProvideCoreMaterialVibrancyEffect])
    {
      v5 = [[_UIVibrancyEffectCoreMaterialImpl alloc] initWithStyle:[(UIBlurEffect *)v4 _style] vibrancyStyle:1];
    }

    else
    {
      v5 = [[_UIVibrancyEffectLegacyImpl alloc] initWithStyle:[(UIBlurEffect *)v4 _style] invertAutomaticStyle:[(UIBlurEffect *)v4 _invertAutomaticStyle]];
    }
  }

  else
  {
    v5 = [[_UIVibrancyEffectModernCompositedImpl alloc] initWithCompositingMode:24 compositingColor:0];
  }

  v6 = v5;
  v7 = [[a1 alloc] _initWithImplementation:v5];

  return v7;
}

+ (UIVibrancyEffect)effectForBlurEffect:(UIBlurEffect *)blurEffect style:(UIVibrancyEffectStyle)style
{
  v6 = blurEffect;
  if ([(UIBlurEffect *)v6 _canProvideVibrancyEffect]&& [(UIBlurEffect *)v6 _canProvideCoreMaterialVibrancyEffect])
  {
    v7 = [[_UIVibrancyEffectCoreMaterialImpl alloc] initWithStyle:[(UIBlurEffect *)v6 _style] vibrancyStyle:style];
    v8 = [[a1 alloc] _initWithImplementation:v7];
  }

  else
  {
    v8 = [a1 effectForBlurEffect:v6];
  }

  return v8;
}

+ (id)darkVibrantEffectWithDodgeColor:(id)a3 lightenColor:(id)a4 compositingColor:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [_UIVibrancyEffectModernVibrancyImpl alloc];
  v12 = [(_UIVibrancyEffectModernVibrancyImpl *)v11 initWithFilter:*MEMORY[0x1E6979D90] inputColor1:v10 inputColor2:v9 compositingColor:v8 inputReversed:0];

  v13 = [[a1 alloc] _initWithImplementation:v12];

  return v13;
}

+ (id)lightVibrantEffectWithBurnColor:(id)a3 darkenColor:(id)a4 compositingColor:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [_UIVibrancyEffectModernVibrancyImpl alloc];
  v12 = [(_UIVibrancyEffectModernVibrancyImpl *)v11 initWithFilter:*MEMORY[0x1E6979D88] inputColor1:v10 inputColor2:v9 compositingColor:v8 inputReversed:0];

  v13 = [[a1 alloc] _initWithImplementation:v12];

  return v13;
}

+ (id)vibrantEffectWithCompositingMode:(int64_t)a3 compositingColor:(id)a4
{
  v6 = a4;
  v7 = [[_UIVibrancyEffectModernCompositedImpl alloc] initWithCompositingMode:a3 compositingColor:v6];

  v8 = [[a1 alloc] _initWithImplementation:v7];

  return v8;
}

+ (id)_darkVibrantEffectWithLightenColor:(id)a3 dodgeColor:(id)a4 compositingColor:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [_UIVibrancyEffectModernVibrancyImpl alloc];
  v12 = [(_UIVibrancyEffectModernVibrancyImpl *)v11 initWithFilter:*MEMORY[0x1E6979D90] inputColor1:v9 inputColor2:v10 compositingColor:v8 inputReversed:1];

  v13 = [[a1 alloc] _initWithImplementation:v12];

  return v13;
}

+ (id)_lightVibrantEffectWithDarkenColor:(id)a3 burnColor:(id)a4 compositingColor:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [_UIVibrancyEffectModernVibrancyImpl alloc];
  v12 = [(_UIVibrancyEffectModernVibrancyImpl *)v11 initWithFilter:*MEMORY[0x1E6979D88] inputColor1:v9 inputColor2:v10 compositingColor:v8 inputReversed:1];

  v13 = [[a1 alloc] _initWithImplementation:v12];

  return v13;
}

+ (id)_vibrantEffectWithCAColorMatrix:(CAColorMatrix *)a3 alpha:(double)a4
{
  v7 = [_UIVibrancyEffectVibrantColorMatrixImpl alloc];
  v8 = *&a3->m33;
  v13[2] = *&a3->m24;
  v13[3] = v8;
  v13[4] = *&a3->m42;
  v9 = *&a3->m15;
  v13[0] = *&a3->m11;
  v13[1] = v9;
  v10 = [(_UIVibrancyEffectVibrantColorMatrixImpl *)v7 initWithCAColorMatrix:v13 alpha:a4];
  v11 = [[a1 alloc] _initWithImplementation:v10];

  return v11;
}

+ (id)_vibrantEffectWithLightCAColorMatrix:(CAColorMatrix *)a3 darkCAColorMatrix:(CAColorMatrix *)a4 alpha:(double)a5
{
  v9 = [_UIVibrancyEffectVibrantColorMatrixImpl alloc];
  v10 = *&a3->m33;
  v18[2] = *&a3->m24;
  v18[3] = v10;
  v18[4] = *&a3->m42;
  v11 = *&a3->m15;
  v18[0] = *&a3->m11;
  v18[1] = v11;
  v12 = *&a4->m33;
  v17[2] = *&a4->m24;
  v17[3] = v12;
  v17[4] = *&a4->m42;
  v13 = *&a4->m15;
  v17[0] = *&a4->m11;
  v17[1] = v13;
  v14 = [(_UIVibrancyEffectVibrantColorMatrixImpl *)v9 initWithLightCAColorMatrix:v18 darkCAColorMatrix:v17 alpha:a5];
  v15 = [[a1 alloc] _initWithImplementation:v14];

  return v15;
}

+ (id)_vibrantEffectWithLightCAColorMatrix:(CAColorMatrix *)a3 darkCAColorMatrix:(CAColorMatrix *)a4 tintColor:(id)a5
{
  v8 = a5;
  v9 = [_UIVibrancyEffectVibrantColorMatrixImpl alloc];
  v10 = *&a3->m33;
  v18[2] = *&a3->m24;
  v18[3] = v10;
  v18[4] = *&a3->m42;
  v11 = *&a3->m15;
  v18[0] = *&a3->m11;
  v18[1] = v11;
  v12 = *&a4->m33;
  v17[2] = *&a4->m24;
  v17[3] = v12;
  v17[4] = *&a4->m42;
  v13 = *&a4->m15;
  v17[0] = *&a4->m11;
  v17[1] = v13;
  v14 = [(_UIVibrancyEffectVibrantColorMatrixImpl *)v9 initWithLightCAColorMatrix:v18 darkCAColorMatrix:v17 tintColor:v8];

  v15 = [[a1 alloc] _initWithImplementation:v14];

  return v15;
}

+ (id)_vibrantEffectWithLightVibrantColorMatrix:(id)a3 darkVibrantColorMatrix:(id)a4 alpha:(double)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [[_UIVibrancyEffectVibrantColorMatrixImpl alloc] initWithLightConfiguration:v9 darkConfiguration:v8 alpha:a5];

  v11 = [[a1 alloc] _initWithImplementation:v10];

  return v11;
}

+ (id)_vibrantShadowEffect
{
  v4[0] = xmmword_18A678220;
  v4[1] = xmmword_18A678230;
  v4[2] = xmmword_18A678240;
  v4[3] = xmmword_18A678250;
  v4[4] = xmmword_18A678260;
  v2 = [a1 _vibrantEffectWithCAColorMatrix:v4 alpha:1.0];

  return v2;
}

+ (id)vibrantMediumShadowEffect
{
  v3 = [[_UIVibrancyEffectVibrantColorMatrixImpl alloc] initWithSystemName:1];
  v4 = [[a1 alloc] _initWithImplementation:v3];

  return v4;
}

+ (id)vibrantHeavyShadowEffect
{
  v3 = [[_UIVibrancyEffectVibrantColorMatrixImpl alloc] initWithSystemName:2];
  v4 = [[a1 alloc] _initWithImplementation:v3];

  return v4;
}

+ (id)vibrantChromeShadowEffect
{
  v3 = [[_UIVibrancyEffectVibrantColorMatrixImpl alloc] initWithSystemName:3];
  v4 = [[a1 alloc] _initWithImplementation:v3];

  return v4;
}

+ (id)_vibrantEffectForLightMaterial:(id)a3 darkMaterial:(id)a4 vibrancyStyle:(int64_t)a5
{
  v8 = a4;
  v9 = _UICoreMaterialSanitizeMaterial(a3);
  v10 = _UICoreMaterialSanitizeMaterial(v8);

  if (v9 | v10)
  {
    v12 = [[_UIVibrancyEffectCoreMaterialImpl alloc] initWithLightMaterial:v9 darkMaterial:v10 vibrancyStyle:_UIVibrancyStyleConvertToPublic(a5)];
    v11 = [[a1 alloc] _initWithImplementation:v12];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)_effectWithStyle:(int64_t)a3 ignoreSimpleVibrancy:(BOOL)a4
{
  v5 = [[_UIVibrancyEffectLegacyImpl alloc] initWithStyle:a3 invertAutomaticStyle:0 ignoreSimpleVibrancy:a4];
  v6 = [[a1 alloc] _initWithImplementation:v5];

  return v6;
}

- (id)_effectReplacingTintColor:(id)a3
{
  if (a3)
  {
    v4 = [(_UIVibrancyEffectImpl *)self->_impl implementationReplacingTintColor:?];
    if (self->_impl == v4)
    {
      v5 = self;
    }

    else
    {
      v5 = [objc_alloc(objc_opt_class()) _initWithImplementation:v4];
    }

    v6 = v5;
  }

  else
  {
    v6 = self;
  }

  return v6;
}

+ (id)_effectForBlurEffect:(id)a3 vibrancyStyle:(int64_t)a4
{
  v6 = _UIVibrancyStyleConvertToPublic(a4);

  return [a1 effectForBlurEffect:a3 style:v6];
}

- (UIVibrancyEffect)init
{
  v3 = [(UIVibrancyEffect *)self methodForSelector:sel_effectConfig];
  if (v3 == [UIVibrancyEffect instanceMethodForSelector:sel_effectConfig]&& (v4 = [(UIVibrancyEffect *)self methodForSelector:sel_effectConfigForQuality_], v4 == [UIVibrancyEffect instanceMethodForSelector:sel_effectConfigForQuality_]))
  {
    v8 = [_UIVibrancyEffectModernVibrancyImpl alloc];
    v9 = *MEMORY[0x1E6979D90];
    v10 = +[UIColor clearColor];
    v11 = +[UIColor clearColor];
    v12 = +[UIColor clearColor];
    v5 = [(_UIVibrancyEffectModernVibrancyImpl *)v8 initWithFilter:v9 inputColor1:v10 inputColor2:v11 compositingColor:v12 inputReversed:0];
  }

  else
  {
    v5 = [[_UIVibrancyEffectLegacyImpl alloc] initWithStyle:0x8000000000000000 invertAutomaticStyle:0];
  }

  v6 = [(UIVibrancyEffect *)self _initWithImplementation:v5];

  return v6;
}

- (id)_initWithImplementation:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = UIVibrancyEffect;
  v6 = [(UIVibrancyEffect *)&v9 init];
  p_isa = &v6->super.super.isa;
  if (v6)
  {
    objc_storeStrong(&v6->_impl, a3);
    [p_isa[1] setEffect:p_isa];
  }

  return p_isa;
}

- (UIVibrancyEffect)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UIVibrancyEffect;
  v5 = [(UIVisualEffect *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [_UIVibrancyEffectImpl implementationFromCoder:v4];
    impl = v5->_impl;
    v5->_impl = v6;

    [(_UIVibrancyEffectImpl *)v5->_impl setEffect:v5];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = UIVibrancyEffect;
  v4 = a3;
  [(UIVisualEffect *)&v5 encodeWithCoder:v4];
  [(_UIVibrancyEffectImpl *)self->_impl encodeWithCoder:v4, v5.receiver, v5.super_class];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  p_isa = &v4->super.super.isa;
  if (v4 == self)
  {
    v6 = 1;
  }

  else if (v4 && [(UIVibrancyEffect *)v4 isMemberOfClass:objc_opt_class()])
  {
    v6 = [p_isa[1] isEqual:self->_impl];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_reduceTransparencyEffectConfig
{
  v3 = +[_UILegacyEffectConverter sharedConverter];
  v4 = [v3 vibrancyConfigForReducedTransperancyVibrancyStyle:{-[_UIVibrancyEffectImpl style](self->_impl, "style")}];

  return v4;
}

- (id)effectConfigForQuality:(int64_t)a3
{
  v5 = +[_UILegacyEffectConverter sharedConverter];
  v6 = [(_UIVibrancyEffectImpl *)self->_impl style];
  if (a3 == 10)
  {
    [v5 vibrancyConfigForLowQualityVibrancyStyle:v6];
  }

  else
  {
    [v5 vibrancyConfigForHighQualityVibrancyStyle:v6];
  }
  v7 = ;

  return v7;
}

- (id)effectConfigForReducedTransperancy:(BOOL)a3
{
  v3 = a3;
  _AXSEnhanceBackgroundContrastEnabled();
  if (v3)
  {
    v5 = [(UIVibrancyEffect *)self _reduceTransparencyEffectConfig];
  }

  else
  {
    v6 = +[UIDevice currentDevice];
    v5 = -[UIVibrancyEffect effectConfigForQuality:](self, "effectConfigForQuality:", [v6 _graphicsQuality]);
  }

  return v5;
}

+ (id)_vibrancyEntryWithType:(id)a3 inputColor1:(id)a4 inputColor2:(id)a5 inputReversed:(BOOL)a6
{
  v6 = a6;
  v20[3] = *MEMORY[0x1E69E9840];
  v19[0] = @"inputColor0";
  v10 = a4;
  v11 = a5;
  v12 = a3;
  v20[0] = [a4 CGColor];
  v19[1] = @"inputColor1";
  v13 = [v11 CGColor];

  v20[1] = v13;
  v19[2] = @"inputReversed";
  v14 = [MEMORY[0x1E696AD98] numberWithBool:v6];
  v20[2] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];

  v16 = [_UIVisualEffectFilterEntry alloc];
  v17 = [(_UIVisualEffectFilterEntry *)v16 initWithFilterType:v12 configurationValues:v15 requestedValues:MEMORY[0x1E695E0F8] identityValues:MEMORY[0x1E695E0F8]];

  return v17;
}

- (BOOL)_isAutomaticStyle
{
  v2 = [(_UIVibrancyEffectImpl *)self->_impl style];
  result = 1;
  if ((v2 - 4) >= 2 && v2 != 1000)
  {
    return v2 > 4999;
  }

  return result;
}

- (id)effectForUserInterfaceStyle:(int64_t)a3
{
  v5 = [(_UIVibrancyEffectImpl *)self->_impl implementationForUserInterfaceStyle:?];
  if (v5 == self->_impl)
  {
    v9.receiver = self;
    v9.super_class = UIVibrancyEffect;
    v6 = [(UIVisualEffect *)&v9 effectForUserInterfaceStyle:a3];
  }

  else
  {
    v6 = [objc_alloc(objc_opt_class()) _initWithImplementation:v5];
  }

  v7 = v6;

  return v7;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = UIVibrancyEffect;
  v3 = [(UIVibrancyEffect *)&v6 description];
  v4 = [v3 mutableCopy];

  [(_UIVibrancyEffectImpl *)self->_impl appendDescriptionTo:v4];

  return v4;
}

@end