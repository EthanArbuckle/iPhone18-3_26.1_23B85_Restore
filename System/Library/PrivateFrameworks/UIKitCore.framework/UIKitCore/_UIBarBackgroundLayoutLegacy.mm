@interface _UIBarBackgroundLayoutLegacy
- (UIImage)shadowImage;
- (_UIBarBackgroundLayoutLegacy)initWithLayout:(id)layout;
- (double)bg1ImageAlpha;
- (id)_blurWithStyle:(int64_t)style tint:(id)tint;
- (id)_colorForStyle:(int64_t)style;
- (id)bg1ShadowColor;
- (void)configureAsTransparent;
- (void)configureBackgroundColor:(id)color barStyle:(int64_t)style translucent:(BOOL)translucent;
- (void)configureEffectForStyle:(int64_t)style backgroundTintColor:(id)color forceOpaque:(BOOL)opaque;
- (void)configureImage:(id)image forceOpaque:(BOOL)opaque backgroundTintColor:(id)color;
- (void)configureImage:(id)image forceOpaque:(BOOL)opaque barStyle:(int64_t)style;
- (void)configureImage:(id)image forceTranslucent:(BOOL)translucent;
- (void)configureShadowForBarStyle:(int64_t)style;
- (void)configureShadowImage:(id)image;
- (void)configureWithEffects:(id)effects;
- (void)configureWithoutShadow;
- (void)describeInto:(id)into;
- (void)setTopInset:(double)inset;
@end

@implementation _UIBarBackgroundLayoutLegacy

- (void)configureWithoutShadow
{
  shadowImage = self->_shadowImage;
  self->_shadowImage = 0;

  shadowColor = self->_shadowColor;
  self->_shadowColor = 0;

  shadowEffect = self->_shadowEffect;
  self->_shadowEffect = 0;

  self->_hasShadow = 0;
}

- (double)bg1ImageAlpha
{
  result = 0.909803922;
  if (self->_translucence != 1)
  {
    return 1.0;
  }

  return result;
}

- (id)bg1ShadowColor
{
  if (self->_shadowEffect)
  {
    return 0;
  }

  else
  {
    return self->_shadowColor;
  }
}

- (_UIBarBackgroundLayoutLegacy)initWithLayout:(id)layout
{
  layoutCopy = layout;
  v10.receiver = self;
  v10.super_class = _UIBarBackgroundLayoutLegacy;
  v5 = [(_UIBarBackgroundLayout *)&v10 initWithLayout:layoutCopy];
  v6 = v5;
  if (v5)
  {
    v5->super._useExplicitGeometry = 0;
    if ([layoutCopy isMemberOfClass:objc_opt_class()])
    {
      v6->_translucence = *(layoutCopy + 11);
      objc_storeStrong(&v6->_backgroundImage, *(layoutCopy + 12));
      v7 = layoutCopy;
      objc_storeStrong(&v6->_backgroundTintColor, v7[13]);
      objc_storeStrong(&v6->_backgroundEffects, v7[14]);
      objc_storeStrong(&v6->_shadowImage, v7[15]);
      objc_storeStrong(&v6->_shadowColor, v7[16]);
      objc_storeStrong(&v6->_shadowEffect, v7[17]);
      v6->_hasShadow = *(v7 + 144);
      v8 = v7[19];

      *&v6->_topInset = v8;
    }
  }

  return v6;
}

- (UIImage)shadowImage
{
  if (self->_hasShadow)
  {
    return self->_shadowImage;
  }

  else
  {
    return 0;
  }
}

- (void)setTopInset:(double)inset
{
  v3 = fmax(inset, 0.0);
  if (self->_topInset != v3)
  {
    self->_topInset = v3;
  }
}

- (id)_colorForStyle:(int64_t)style
{
  if (self->super._interfaceIdiom == 3)
  {
LABEL_16:
    v7 = 0;
    goto LABEL_17;
  }

  interfaceStyle = self->super._interfaceStyle;
  if (style == 4)
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  if (interfaceStyle == 1000 || interfaceStyle == 2)
  {
    styleCopy = v4;
  }

  else
  {
    styleCopy = style;
  }

  if (styleCopy == 2)
  {
    styleCopy = 1;
  }

  if (styleCopy != 1)
  {
    if (!styleCopy)
    {
      v7 = +[UIColor systemBackgroundColor];
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v7 = +[UIColor blackColor];
LABEL_17:

  return v7;
}

- (id)_blurWithStyle:(int64_t)style tint:(id)tint
{
  v24[2] = *MEMORY[0x1E69E9840];
  tintCopy = tint;
  v7 = tintCopy;
  if (self->super._disableTinting)
  {
    if (!tintCopy)
    {
      v12 = [UIBlurEffect _effectWithBlurRadius:20.0 scale:0.25];
      v24[0] = v12;
      v13 = [UIColorEffect colorEffectSaturate:1.8];
      v24[1] = v13;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
      goto LABEL_7;
    }

    v19 = 0u;
    v20 = 0u;
    [tintCopy getRed:&v19 green:&v19 + 8 blue:&v20 alpha:&v20 + 8];
    v8 = *(&v20 + 1);
    if (*(&v20 + 1) < 1.0)
    {
      v9 = *(&v20 + 1) * *&v20;
      v10 = *(&v20 + 1) * *(&v19 + 1);
      v11 = *(&v20 + 1) * *&v19;
      v12 = [UIBlurEffect _effectWithBlurRadius:20.0 scale:0.25];
      v23[0] = v12;
      v13 = [UIColorEffect colorEffectSaturate:1.8];
      v23[1] = v13;
      v14 = [UIColorEffect _colorEffectSourceOver:v11, v10, v9, v8];
      v23[2] = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:3];

LABEL_7:
      goto LABEL_10;
    }

    v12 = [UIVisualEffect effectCompositingColor:v7];
    v22 = v12;
    v16 = MEMORY[0x1E695DEC8];
    v17 = &v22;
  }

  else
  {
    v12 = [UIBlurEffect _effectWithStyle:style tintColor:tintCopy invertAutomaticStyle:0];
    v21 = v12;
    v16 = MEMORY[0x1E695DEC8];
    v17 = &v21;
  }

  v15 = [v16 arrayWithObjects:v17 count:1];
LABEL_10:

  return v15;
}

- (void)configureEffectForStyle:(int64_t)style backgroundTintColor:(id)color forceOpaque:(BOOL)opaque
{
  opaqueCopy = opaque;
  colorCopy = color;
  v26 = colorCopy;
  if (opaqueCopy)
  {
    backgroundImage = self->_backgroundImage;
    self->_backgroundImage = 0;

    if (v26)
    {
      [v26 colorWithAlphaComponent:1.0];
    }

    else
    {
      [(_UIBarBackgroundLayoutLegacy *)self _colorForStyle:style];
    }
    v15 = ;
    v16 = &OBJC_IVAR____UIBarBackgroundLayoutLegacy__backgroundEffects;
    objc_storeStrong(&self->_backgroundTintColor, v15);
    v17 = 2;
  }

  else
  {
    if (style == 4)
    {
      backgroundEffects = self->_backgroundEffects;
      self->_backgroundEffects = 0;
    }

    else
    {
      interfaceIdiom = self->super._interfaceIdiom;
      if (interfaceIdiom == 2 || interfaceIdiom == 8)
      {
        if (style)
        {
          v13 = 4018;
        }

        else
        {
          v13 = 5007;
        }

        v14 = [(_UIBarBackgroundLayoutLegacy *)self _blurWithStyle:v13 tint:colorCopy];
        backgroundEffects = self->_backgroundEffects;
        self->_backgroundEffects = v14;
      }

      else
      {
        if (colorCopy && !self->super._disableTinting)
        {
          backgroundEffects = colorCopy;
          v21 = 100;
        }

        else
        {
          v18 = dyld_program_sdk_at_least();
          backgroundEffects = 0;
          v19 = 20;
          if (!style)
          {
            v19 = 10;
          }

          v20 = 2;
          if (!style)
          {
            v20 = 5;
          }

          if (v18)
          {
            v21 = v19;
          }

          else
          {
            v21 = v20;
          }
        }

        v22 = [(_UIBarBackgroundLayoutLegacy *)self _blurWithStyle:v21 tint:backgroundEffects];
        v23 = self->_backgroundEffects;
        self->_backgroundEffects = v22;
      }
    }

    v17 = 0;
    v16 = &OBJC_IVAR____UIBarBackgroundLayoutLegacy__backgroundTintColor;
    v15 = self->_backgroundImage;
    self->_backgroundImage = 0;
  }

  v24 = *v16;
  v25 = *(&self->super.super.isa + v24);
  *(&self->super.super.isa + v24) = 0;

  self->_translucence = v17;
}

- (void)configureBackgroundColor:(id)color barStyle:(int64_t)style translucent:(BOOL)translucent
{
  translucentCopy = translucent;
  colorCopy = color;
  backgroundImage = self->_backgroundImage;
  self->_backgroundImage = 0;

  self->_translucence = translucentCopy;
  backgroundEffects = self->_backgroundEffects;
  self->_backgroundEffects = 0;

  if (colorCopy || translucentCopy)
  {
    v12 = colorCopy;
    backgroundTintColor = self->_backgroundTintColor;
    self->_backgroundTintColor = v12;
  }

  else
  {
    v10 = [(_UIBarBackgroundLayoutLegacy *)self _colorForStyle:style];
    backgroundTintColor = self->_backgroundTintColor;
    self->_backgroundTintColor = v10;
  }
}

- (void)configureImage:(id)image forceTranslucent:(BOOL)translucent
{
  translucentCopy = translucent;
  objc_storeStrong(&self->_backgroundImage, image);
  imageCopy = image;
  self->_translucence = translucentCopy;
  backgroundEffects = self->_backgroundEffects;
  self->_backgroundEffects = 0;

  backgroundTintColor = self->_backgroundTintColor;
  self->_backgroundTintColor = 0;
}

- (void)configureImage:(id)image forceOpaque:(BOOL)opaque backgroundTintColor:(id)color
{
  opaqueCopy = opaque;
  imageCopy = image;
  objc_storeStrong(&self->_backgroundImage, image);
  colorCopy = color;
  v10 = 2;
  if (!opaqueCopy)
  {
    v10 = 0;
  }

  self->_translucence = v10;
  backgroundEffects = self->_backgroundEffects;
  self->_backgroundEffects = 0;

  if (opaqueCopy)
  {
    v12 = [colorCopy colorWithAlphaComponent:1.0];
  }

  else
  {
    v12 = [colorCopy copy];
  }

  v13 = v12;

  objc_storeStrong(&self->_backgroundTintColor, v13);
}

- (void)configureImage:(id)image forceOpaque:(BOOL)opaque barStyle:(int64_t)style
{
  opaqueCopy = opaque;
  imageCopy = image;
  objc_storeStrong(&self->_backgroundImage, image);
  v9 = 2;
  if (!opaqueCopy)
  {
    v9 = 0;
  }

  self->_translucence = v9;
  backgroundEffects = self->_backgroundEffects;
  self->_backgroundEffects = 0;

  if (!imageCopy)
  {
    opaqueCopy = 1;
  }

  if (opaqueCopy)
  {
    v11 = [(_UIBarBackgroundLayoutLegacy *)self _colorForStyle:style];
  }

  else
  {
    v11 = 0;
  }

  objc_storeStrong(&self->_backgroundTintColor, v11);
  if (opaqueCopy)
  {
  }
}

- (void)configureAsTransparent
{
  backgroundImage = self->_backgroundImage;
  self->_backgroundImage = 0;

  self->_translucence = 0;
  backgroundEffects = self->_backgroundEffects;
  self->_backgroundEffects = 0;

  backgroundTintColor = self->_backgroundTintColor;
  self->_backgroundTintColor = 0;
}

- (void)configureWithEffects:(id)effects
{
  effectsCopy = effects;
  backgroundImage = self->_backgroundImage;
  self->_backgroundImage = 0;

  self->_translucence = 0;
  v5 = [effectsCopy count];
  if (v5)
  {
    v6 = [effectsCopy copy];
  }

  else
  {
    v6 = 0;
  }

  objc_storeStrong(&self->_backgroundEffects, v6);
  if (v5)
  {
  }

  backgroundTintColor = self->_backgroundTintColor;
  self->_backgroundTintColor = 0;
}

- (void)configureShadowImage:(id)image
{
  objc_storeStrong(&self->_shadowImage, image);
  imageCopy = image;
  shadowColor = self->_shadowColor;
  self->_shadowColor = 0;

  shadowEffect = self->_shadowEffect;
  self->_shadowEffect = 0;

  self->_hasShadow = 1;
}

- (void)configureShadowForBarStyle:(int64_t)style
{
  shadowImage = self->_shadowImage;
  self->_shadowImage = 0;

  objc_storeStrong(&self->_shadowEffect, 0);
  if (!self->_shadowEffect)
  {
    v6 = _UIBarHairlineShadowColorForBarStyle(style);
    v7 = [v6 copy];
    shadowColor = self->_shadowColor;
    self->_shadowColor = v7;
  }

  self->_hasShadow = 1;
}

- (void)describeInto:(id)into
{
  v5.receiver = self;
  v5.super_class = _UIBarBackgroundLayoutLegacy;
  intoCopy = into;
  [(_UIBarBackgroundLayout *)&v5 describeInto:intoCopy];
  [intoCopy appendFormat:@" _translucence=%li backgroundImage=%@ backgroundTintColor=%@ backgroundEffects=%@ shadowImage=%@ shadowColor=%@", self->_translucence, self->_backgroundImage, self->_backgroundTintColor, self->_backgroundEffects, self->_shadowImage, self->_shadowColor, v5.receiver, v5.super_class];
}

@end