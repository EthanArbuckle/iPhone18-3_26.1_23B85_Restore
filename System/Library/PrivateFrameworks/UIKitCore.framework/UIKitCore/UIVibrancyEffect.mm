@interface UIVibrancyEffect
+ (UIVibrancyEffect)effectForBlurEffect:(UIBlurEffect *)blurEffect;
+ (UIVibrancyEffect)effectForBlurEffect:(UIBlurEffect *)blurEffect style:(UIVibrancyEffectStyle)style;
+ (id)_darkVibrantEffectWithLightenColor:(id)color dodgeColor:(id)dodgeColor compositingColor:(id)compositingColor;
+ (id)_effectForBlurEffect:(id)effect vibrancyStyle:(int64_t)style;
+ (id)_effectWithStyle:(int64_t)style ignoreSimpleVibrancy:(BOOL)vibrancy;
+ (id)_lightVibrantEffectWithDarkenColor:(id)color burnColor:(id)burnColor compositingColor:(id)compositingColor;
+ (id)_vibrancyEntryWithType:(id)type inputColor1:(id)color1 inputColor2:(id)color2 inputReversed:(BOOL)reversed;
+ (id)_vibrantEffectForLightMaterial:(id)material darkMaterial:(id)darkMaterial vibrancyStyle:(int64_t)style;
+ (id)_vibrantEffectWithCAColorMatrix:(CAColorMatrix *)matrix alpha:(double)alpha;
+ (id)_vibrantEffectWithLightCAColorMatrix:(CAColorMatrix *)matrix darkCAColorMatrix:(CAColorMatrix *)colorMatrix alpha:(double)alpha;
+ (id)_vibrantEffectWithLightCAColorMatrix:(CAColorMatrix *)matrix darkCAColorMatrix:(CAColorMatrix *)colorMatrix tintColor:(id)color;
+ (id)_vibrantEffectWithLightVibrantColorMatrix:(id)matrix darkVibrantColorMatrix:(id)colorMatrix alpha:(double)alpha;
+ (id)_vibrantShadowEffect;
+ (id)darkVibrantEffectWithDodgeColor:(id)color lightenColor:(id)lightenColor compositingColor:(id)compositingColor;
+ (id)lightVibrantEffectWithBurnColor:(id)color darkenColor:(id)darkenColor compositingColor:(id)compositingColor;
+ (id)vibrantChromeShadowEffect;
+ (id)vibrantEffectWithCompositingMode:(int64_t)mode compositingColor:(id)color;
+ (id)vibrantHeavyShadowEffect;
+ (id)vibrantMediumShadowEffect;
- (BOOL)_isAutomaticStyle;
- (BOOL)isEqual:(id)equal;
- (UIVibrancyEffect)init;
- (UIVibrancyEffect)initWithCoder:(id)coder;
- (id)_effectReplacingTintColor:(id)color;
- (id)_initWithImplementation:(id)implementation;
- (id)_reduceTransparencyEffectConfig;
- (id)description;
- (id)effectConfigForQuality:(int64_t)quality;
- (id)effectConfigForReducedTransperancy:(BOOL)transperancy;
- (id)effectForUserInterfaceStyle:(int64_t)style;
- (void)encodeWithCoder:(id)coder;
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
  v7 = [[self alloc] _initWithImplementation:v5];

  return v7;
}

+ (UIVibrancyEffect)effectForBlurEffect:(UIBlurEffect *)blurEffect style:(UIVibrancyEffectStyle)style
{
  v6 = blurEffect;
  if ([(UIBlurEffect *)v6 _canProvideVibrancyEffect]&& [(UIBlurEffect *)v6 _canProvideCoreMaterialVibrancyEffect])
  {
    v7 = [[_UIVibrancyEffectCoreMaterialImpl alloc] initWithStyle:[(UIBlurEffect *)v6 _style] vibrancyStyle:style];
    v8 = [[self alloc] _initWithImplementation:v7];
  }

  else
  {
    v8 = [self effectForBlurEffect:v6];
  }

  return v8;
}

+ (id)darkVibrantEffectWithDodgeColor:(id)color lightenColor:(id)lightenColor compositingColor:(id)compositingColor
{
  compositingColorCopy = compositingColor;
  lightenColorCopy = lightenColor;
  colorCopy = color;
  v11 = [_UIVibrancyEffectModernVibrancyImpl alloc];
  v12 = [(_UIVibrancyEffectModernVibrancyImpl *)v11 initWithFilter:*MEMORY[0x1E6979D90] inputColor1:colorCopy inputColor2:lightenColorCopy compositingColor:compositingColorCopy inputReversed:0];

  v13 = [[self alloc] _initWithImplementation:v12];

  return v13;
}

+ (id)lightVibrantEffectWithBurnColor:(id)color darkenColor:(id)darkenColor compositingColor:(id)compositingColor
{
  compositingColorCopy = compositingColor;
  darkenColorCopy = darkenColor;
  colorCopy = color;
  v11 = [_UIVibrancyEffectModernVibrancyImpl alloc];
  v12 = [(_UIVibrancyEffectModernVibrancyImpl *)v11 initWithFilter:*MEMORY[0x1E6979D88] inputColor1:colorCopy inputColor2:darkenColorCopy compositingColor:compositingColorCopy inputReversed:0];

  v13 = [[self alloc] _initWithImplementation:v12];

  return v13;
}

+ (id)vibrantEffectWithCompositingMode:(int64_t)mode compositingColor:(id)color
{
  colorCopy = color;
  v7 = [[_UIVibrancyEffectModernCompositedImpl alloc] initWithCompositingMode:mode compositingColor:colorCopy];

  v8 = [[self alloc] _initWithImplementation:v7];

  return v8;
}

+ (id)_darkVibrantEffectWithLightenColor:(id)color dodgeColor:(id)dodgeColor compositingColor:(id)compositingColor
{
  compositingColorCopy = compositingColor;
  dodgeColorCopy = dodgeColor;
  colorCopy = color;
  v11 = [_UIVibrancyEffectModernVibrancyImpl alloc];
  v12 = [(_UIVibrancyEffectModernVibrancyImpl *)v11 initWithFilter:*MEMORY[0x1E6979D90] inputColor1:dodgeColorCopy inputColor2:colorCopy compositingColor:compositingColorCopy inputReversed:1];

  v13 = [[self alloc] _initWithImplementation:v12];

  return v13;
}

+ (id)_lightVibrantEffectWithDarkenColor:(id)color burnColor:(id)burnColor compositingColor:(id)compositingColor
{
  compositingColorCopy = compositingColor;
  burnColorCopy = burnColor;
  colorCopy = color;
  v11 = [_UIVibrancyEffectModernVibrancyImpl alloc];
  v12 = [(_UIVibrancyEffectModernVibrancyImpl *)v11 initWithFilter:*MEMORY[0x1E6979D88] inputColor1:burnColorCopy inputColor2:colorCopy compositingColor:compositingColorCopy inputReversed:1];

  v13 = [[self alloc] _initWithImplementation:v12];

  return v13;
}

+ (id)_vibrantEffectWithCAColorMatrix:(CAColorMatrix *)matrix alpha:(double)alpha
{
  v7 = [_UIVibrancyEffectVibrantColorMatrixImpl alloc];
  v8 = *&matrix->m33;
  v13[2] = *&matrix->m24;
  v13[3] = v8;
  v13[4] = *&matrix->m42;
  v9 = *&matrix->m15;
  v13[0] = *&matrix->m11;
  v13[1] = v9;
  v10 = [(_UIVibrancyEffectVibrantColorMatrixImpl *)v7 initWithCAColorMatrix:v13 alpha:alpha];
  v11 = [[self alloc] _initWithImplementation:v10];

  return v11;
}

+ (id)_vibrantEffectWithLightCAColorMatrix:(CAColorMatrix *)matrix darkCAColorMatrix:(CAColorMatrix *)colorMatrix alpha:(double)alpha
{
  v9 = [_UIVibrancyEffectVibrantColorMatrixImpl alloc];
  v10 = *&matrix->m33;
  v18[2] = *&matrix->m24;
  v18[3] = v10;
  v18[4] = *&matrix->m42;
  v11 = *&matrix->m15;
  v18[0] = *&matrix->m11;
  v18[1] = v11;
  v12 = *&colorMatrix->m33;
  v17[2] = *&colorMatrix->m24;
  v17[3] = v12;
  v17[4] = *&colorMatrix->m42;
  v13 = *&colorMatrix->m15;
  v17[0] = *&colorMatrix->m11;
  v17[1] = v13;
  v14 = [(_UIVibrancyEffectVibrantColorMatrixImpl *)v9 initWithLightCAColorMatrix:v18 darkCAColorMatrix:v17 alpha:alpha];
  v15 = [[self alloc] _initWithImplementation:v14];

  return v15;
}

+ (id)_vibrantEffectWithLightCAColorMatrix:(CAColorMatrix *)matrix darkCAColorMatrix:(CAColorMatrix *)colorMatrix tintColor:(id)color
{
  colorCopy = color;
  v9 = [_UIVibrancyEffectVibrantColorMatrixImpl alloc];
  v10 = *&matrix->m33;
  v18[2] = *&matrix->m24;
  v18[3] = v10;
  v18[4] = *&matrix->m42;
  v11 = *&matrix->m15;
  v18[0] = *&matrix->m11;
  v18[1] = v11;
  v12 = *&colorMatrix->m33;
  v17[2] = *&colorMatrix->m24;
  v17[3] = v12;
  v17[4] = *&colorMatrix->m42;
  v13 = *&colorMatrix->m15;
  v17[0] = *&colorMatrix->m11;
  v17[1] = v13;
  v14 = [(_UIVibrancyEffectVibrantColorMatrixImpl *)v9 initWithLightCAColorMatrix:v18 darkCAColorMatrix:v17 tintColor:colorCopy];

  v15 = [[self alloc] _initWithImplementation:v14];

  return v15;
}

+ (id)_vibrantEffectWithLightVibrantColorMatrix:(id)matrix darkVibrantColorMatrix:(id)colorMatrix alpha:(double)alpha
{
  colorMatrixCopy = colorMatrix;
  matrixCopy = matrix;
  v10 = [[_UIVibrancyEffectVibrantColorMatrixImpl alloc] initWithLightConfiguration:matrixCopy darkConfiguration:colorMatrixCopy alpha:alpha];

  v11 = [[self alloc] _initWithImplementation:v10];

  return v11;
}

+ (id)_vibrantShadowEffect
{
  v4[0] = xmmword_18A678220;
  v4[1] = xmmword_18A678230;
  v4[2] = xmmword_18A678240;
  v4[3] = xmmword_18A678250;
  v4[4] = xmmword_18A678260;
  v2 = [self _vibrantEffectWithCAColorMatrix:v4 alpha:1.0];

  return v2;
}

+ (id)vibrantMediumShadowEffect
{
  v3 = [[_UIVibrancyEffectVibrantColorMatrixImpl alloc] initWithSystemName:1];
  v4 = [[self alloc] _initWithImplementation:v3];

  return v4;
}

+ (id)vibrantHeavyShadowEffect
{
  v3 = [[_UIVibrancyEffectVibrantColorMatrixImpl alloc] initWithSystemName:2];
  v4 = [[self alloc] _initWithImplementation:v3];

  return v4;
}

+ (id)vibrantChromeShadowEffect
{
  v3 = [[_UIVibrancyEffectVibrantColorMatrixImpl alloc] initWithSystemName:3];
  v4 = [[self alloc] _initWithImplementation:v3];

  return v4;
}

+ (id)_vibrantEffectForLightMaterial:(id)material darkMaterial:(id)darkMaterial vibrancyStyle:(int64_t)style
{
  darkMaterialCopy = darkMaterial;
  v9 = _UICoreMaterialSanitizeMaterial(material);
  v10 = _UICoreMaterialSanitizeMaterial(darkMaterialCopy);

  if (v9 | v10)
  {
    v12 = [[_UIVibrancyEffectCoreMaterialImpl alloc] initWithLightMaterial:v9 darkMaterial:v10 vibrancyStyle:_UIVibrancyStyleConvertToPublic(style)];
    v11 = [[self alloc] _initWithImplementation:v12];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)_effectWithStyle:(int64_t)style ignoreSimpleVibrancy:(BOOL)vibrancy
{
  v5 = [[_UIVibrancyEffectLegacyImpl alloc] initWithStyle:style invertAutomaticStyle:0 ignoreSimpleVibrancy:vibrancy];
  v6 = [[self alloc] _initWithImplementation:v5];

  return v6;
}

- (id)_effectReplacingTintColor:(id)color
{
  if (color)
  {
    v4 = [(_UIVibrancyEffectImpl *)self->_impl implementationReplacingTintColor:?];
    if (self->_impl == v4)
    {
      selfCopy = self;
    }

    else
    {
      selfCopy = [objc_alloc(objc_opt_class()) _initWithImplementation:v4];
    }

    selfCopy2 = selfCopy;
  }

  else
  {
    selfCopy2 = self;
  }

  return selfCopy2;
}

+ (id)_effectForBlurEffect:(id)effect vibrancyStyle:(int64_t)style
{
  v6 = _UIVibrancyStyleConvertToPublic(style);

  return [self effectForBlurEffect:effect style:v6];
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

- (id)_initWithImplementation:(id)implementation
{
  implementationCopy = implementation;
  v9.receiver = self;
  v9.super_class = UIVibrancyEffect;
  v6 = [(UIVibrancyEffect *)&v9 init];
  p_isa = &v6->super.super.isa;
  if (v6)
  {
    objc_storeStrong(&v6->_impl, implementation);
    [p_isa[1] setEffect:p_isa];
  }

  return p_isa;
}

- (UIVibrancyEffect)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = UIVibrancyEffect;
  v5 = [(UIVisualEffect *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [_UIVibrancyEffectImpl implementationFromCoder:coderCopy];
    impl = v5->_impl;
    v5->_impl = v6;

    [(_UIVibrancyEffectImpl *)v5->_impl setEffect:v5];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = UIVibrancyEffect;
  coderCopy = coder;
  [(UIVisualEffect *)&v5 encodeWithCoder:coderCopy];
  [(_UIVibrancyEffectImpl *)self->_impl encodeWithCoder:coderCopy, v5.receiver, v5.super_class];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  p_isa = &equalCopy->super.super.isa;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else if (equalCopy && [(UIVibrancyEffect *)equalCopy isMemberOfClass:objc_opt_class()])
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

- (id)effectConfigForQuality:(int64_t)quality
{
  v5 = +[_UILegacyEffectConverter sharedConverter];
  style = [(_UIVibrancyEffectImpl *)self->_impl style];
  if (quality == 10)
  {
    [v5 vibrancyConfigForLowQualityVibrancyStyle:style];
  }

  else
  {
    [v5 vibrancyConfigForHighQualityVibrancyStyle:style];
  }
  v7 = ;

  return v7;
}

- (id)effectConfigForReducedTransperancy:(BOOL)transperancy
{
  transperancyCopy = transperancy;
  _AXSEnhanceBackgroundContrastEnabled();
  if (transperancyCopy)
  {
    _reduceTransparencyEffectConfig = [(UIVibrancyEffect *)self _reduceTransparencyEffectConfig];
  }

  else
  {
    v6 = +[UIDevice currentDevice];
    _reduceTransparencyEffectConfig = -[UIVibrancyEffect effectConfigForQuality:](self, "effectConfigForQuality:", [v6 _graphicsQuality]);
  }

  return _reduceTransparencyEffectConfig;
}

+ (id)_vibrancyEntryWithType:(id)type inputColor1:(id)color1 inputColor2:(id)color2 inputReversed:(BOOL)reversed
{
  reversedCopy = reversed;
  v20[3] = *MEMORY[0x1E69E9840];
  v19[0] = @"inputColor0";
  color1Copy = color1;
  color2Copy = color2;
  typeCopy = type;
  v20[0] = [color1 CGColor];
  v19[1] = @"inputColor1";
  cGColor = [color2Copy CGColor];

  v20[1] = cGColor;
  v19[2] = @"inputReversed";
  v14 = [MEMORY[0x1E696AD98] numberWithBool:reversedCopy];
  v20[2] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];

  v16 = [_UIVisualEffectFilterEntry alloc];
  v17 = [(_UIVisualEffectFilterEntry *)v16 initWithFilterType:typeCopy configurationValues:v15 requestedValues:MEMORY[0x1E695E0F8] identityValues:MEMORY[0x1E695E0F8]];

  return v17;
}

- (BOOL)_isAutomaticStyle
{
  style = [(_UIVibrancyEffectImpl *)self->_impl style];
  result = 1;
  if ((style - 4) >= 2 && style != 1000)
  {
    return style > 4999;
  }

  return result;
}

- (id)effectForUserInterfaceStyle:(int64_t)style
{
  v5 = [(_UIVibrancyEffectImpl *)self->_impl implementationForUserInterfaceStyle:?];
  if (v5 == self->_impl)
  {
    v9.receiver = self;
    v9.super_class = UIVibrancyEffect;
    v6 = [(UIVisualEffect *)&v9 effectForUserInterfaceStyle:style];
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