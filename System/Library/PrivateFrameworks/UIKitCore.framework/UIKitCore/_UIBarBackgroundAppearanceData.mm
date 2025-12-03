@interface _UIBarBackgroundAppearanceData
+ (id)decodeFromCoder:(id)coder prefix:(id)prefix;
+ (id)opaqueBackgroundData;
+ (id)standardBackgroundData;
+ (id)transparentBackgroundData;
- (BOOL)checkEqualTo:(id)to;
- (UIBlurEffect)backgroundEffect;
- (UIColor)shadowViewBackgroundColor;
- (UIColor)shadowViewTintColor;
- (UIVibrancyEffect)shadowViewEffect;
- (UIVibrancyEffect)tabBarVibrancyEffect;
- (id)replicate;
- (int64_t)hashInto:(int64_t)into;
- (void)_updateBackgroundFlags;
- (void)_updateShadowFlags;
- (void)configureWithDefaultShadow;
- (void)configureWithoutShadow;
- (void)describeInto:(id)into;
- (void)encodeToCoder:(id)coder prefix:(id)prefix;
- (void)setBackgroundColor:(id)color;
- (void)setBackgroundEffect:(id)effect;
- (void)setBackgroundEffects:(id)effects;
- (void)setBackgroundImage:(id)image;
- (void)setOverrideTabBarVibrancyEffect:(id)effect;
- (void)setShadowColor:(id)color;
- (void)setShadowEffect:(id)effect;
- (void)setShadowImage:(id)image;
@end

@implementation _UIBarBackgroundAppearanceData

- (void)_updateShadowFlags
{
  if (self->_shadowEffect || self->_shadowColor)
  {
    v3 = 4;
  }

  else
  {
    shadowImage = self->_shadowImage;
    if (shadowImage)
    {
      v3 = 4 * ([(UIImage *)shadowImage renderingMode]!= UIImageRenderingModeAlwaysTemplate);
    }

    else
    {
      v3 = 0;
    }
  }

  *&self->_flags = *&self->_flags & 0xFB | v3;
}

+ (id)standardBackgroundData
{
  v14[1] = *MEMORY[0x1E69E9840];
  v2 = _MergedGlobals_1;
  if (!_MergedGlobals_1)
  {
    v3 = objc_opt_new();
    v4 = _MergedGlobals_1;
    _MergedGlobals_1 = v3;

    v5 = [UIBlurEffect effectWithStyle:10];
    v14[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    v7 = *(_MergedGlobals_1 + 40);
    *(_MergedGlobals_1 + 40) = v6;

    v8 = _MergedGlobals_1;
    *(_MergedGlobals_1 + 16) |= 1u;
    v9 = *(v8 + 48);
    *(v8 + 48) = 0;

    v10 = *(_MergedGlobals_1 + 56);
    *(_MergedGlobals_1 + 56) = 0;

    v11 = _MergedGlobals_1;
    *(_MergedGlobals_1 + 64) = 0;
    v11[13] = 0;
    [v11 _updateBackgroundFlags];
    [_MergedGlobals_1 configureWithDefaultShadow];
    markReadOnly = [_MergedGlobals_1 markReadOnly];
    v2 = _MergedGlobals_1;
  }

  return v2;
}

- (void)_updateBackgroundFlags
{
  if ([(NSArray *)self->_backgroundEffects count]|| self->_backgroundColor)
  {
    v3 = 2;
  }

  else
  {
    v3 = 2 * (self->_backgroundImage != 0);
  }

  *&self->_flags = *&self->_flags & 0xFD | v3;
  tabBarVibrancyEffect = self->_tabBarVibrancyEffect;
  self->_tabBarVibrancyEffect = 0;

  if ([(NSArray *)self->_backgroundEffects count]&& !self->_backgroundColor)
  {
    v5 = 8 * (self->_backgroundImage == 0);
  }

  else
  {
    v5 = 0;
  }

  *&self->_flags = *&self->_flags & 0xF7 | v5;
}

- (void)configureWithDefaultShadow
{
  [(_UIBarAppearanceData *)self assertMutable:a2];
  v3 = +[UIColor _systemChromeShadowColor];
  shadowColor = self->_shadowColor;
  self->_shadowColor = v3;

  shadowEffect = self->_shadowEffect;
  self->_shadowEffect = 0;

  shadowImage = self->_shadowImage;
  self->_shadowImage = 0;

  shadowViewEffect = self->_shadowViewEffect;
  self->_shadowViewEffect = 0;

  [(_UIBarBackgroundAppearanceData *)self _updateShadowFlags];
}

- (UIBlurEffect)backgroundEffect
{
  if (*&self->_flags)
  {
    firstObject = [(NSArray *)self->_backgroundEffects firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (void)configureWithoutShadow
{
  [(_UIBarAppearanceData *)self assertMutable:a2];
  shadowColor = self->_shadowColor;
  self->_shadowColor = 0;

  shadowImage = self->_shadowImage;
  self->_shadowImage = 0;

  shadowEffect = self->_shadowEffect;
  self->_shadowEffect = 0;

  shadowViewEffect = self->_shadowViewEffect;
  self->_shadowViewEffect = 0;

  [(_UIBarBackgroundAppearanceData *)self _updateShadowFlags];
}

+ (id)transparentBackgroundData
{
  v2 = qword_1ED499180;
  if (!qword_1ED499180)
  {
    v3 = objc_opt_new();
    v4 = qword_1ED499180;
    qword_1ED499180 = v3;

    v5 = *(qword_1ED499180 + 40);
    *(qword_1ED499180 + 40) = MEMORY[0x1E695E0F0];

    v6 = qword_1ED499180;
    *(qword_1ED499180 + 16) |= 1u;
    v7 = *(v6 + 48);
    *(v6 + 48) = 0;

    v8 = *(qword_1ED499180 + 56);
    *(qword_1ED499180 + 56) = 0;

    v9 = qword_1ED499180;
    *(qword_1ED499180 + 64) = 0;
    v9[13] = 1;
    [v9 _updateBackgroundFlags];
    [qword_1ED499180 configureWithoutShadow];
    markReadOnly = [qword_1ED499180 markReadOnly];
    v2 = qword_1ED499180;
  }

  return v2;
}

- (id)replicate
{
  v17.receiver = self;
  v17.super_class = _UIBarBackgroundAppearanceData;
  replicate = [(_UIBarAppearanceData *)&v17 replicate];
  *(replicate + 16) = *&self->_flags;
  v4 = [(NSArray *)self->_backgroundEffects copy];
  v5 = *(replicate + 40);
  *(replicate + 40) = v4;

  v6 = [(UIColor *)self->_backgroundColor copy];
  v7 = *(replicate + 48);
  *(replicate + 48) = v6;

  objc_storeStrong((replicate + 56), self->_backgroundImage);
  *(replicate + 64) = self->_backgroundImageContentMode;
  *(replicate + 104) = self->_visibility;
  *(replicate + 112) = self->_visibilityOnScrollDistance;
  v8 = [(UIVibrancyEffect *)self->_overrideTabBarVibrancyEffect copy];
  v9 = *(replicate + 72);
  *(replicate + 72) = v8;

  v10 = [(UIVibrancyEffect *)self->_shadowEffect copy];
  v11 = *(replicate + 96);
  *(replicate + 96) = v10;

  objc_storeStrong((replicate + 88), self->_shadowImage);
  v12 = [(UIColor *)self->_shadowColor copy];
  v13 = *(replicate + 80);
  *(replicate + 80) = v12;

  v14 = [(UIVibrancyEffect *)self->_tabBarVibrancyEffect copy];
  v15 = *(replicate + 32);
  *(replicate + 32) = v14;

  return replicate;
}

- (UIVibrancyEffect)shadowViewEffect
{
  shadowEffect = self->_shadowEffect;
  if (shadowEffect)
  {
    shadowViewEffect = self->_shadowViewEffect;
    if (!shadowViewEffect)
    {
      v5 = [(UIVibrancyEffect *)shadowEffect _effectReplacingTintColor:self->_shadowColor];
      v6 = self->_shadowViewEffect;
      self->_shadowViewEffect = v5;

      shadowViewEffect = self->_shadowViewEffect;
    }

    shadowEffect = shadowViewEffect;
  }

  return shadowEffect;
}

- (UIColor)shadowViewBackgroundColor
{
  if (self->_shadowEffect)
  {
    v3 = 0;
  }

  else
  {
    if ((*&self->_flags & 4) != 0 && !self->_shadowImage)
    {
      shadowColor = self->_shadowColor;
    }

    else
    {
      shadowColor = 0;
    }

    v3 = shadowColor;
  }

  return v3;
}

- (UIColor)shadowViewTintColor
{
  if (self->_shadowEffect)
  {
    v3 = 0;
  }

  else
  {
    if ((*&self->_flags & 4) != 0)
    {
      shadowImage = self->_shadowImage;
      if (shadowImage)
      {
        shadowImage = self->_shadowColor;
      }
    }

    else
    {
      shadowImage = 0;
    }

    v3 = shadowImage;
  }

  return v3;
}

+ (id)opaqueBackgroundData
{
  v2 = qword_1ED499178;
  if (!qword_1ED499178)
  {
    v3 = objc_opt_new();
    v4 = qword_1ED499178;
    qword_1ED499178 = v3;

    v5 = *(qword_1ED499178 + 40);
    *(qword_1ED499178 + 40) = MEMORY[0x1E695E0F0];

    *(qword_1ED499178 + 16) |= 1u;
    v6 = +[UIColor systemBackgroundColor];
    v7 = *(qword_1ED499178 + 48);
    *(qword_1ED499178 + 48) = v6;

    v8 = *(qword_1ED499178 + 56);
    *(qword_1ED499178 + 56) = 0;

    v9 = qword_1ED499178;
    *(qword_1ED499178 + 64) = 0;
    v9[13] = 2;
    [v9 _updateBackgroundFlags];
    [qword_1ED499178 configureWithDefaultShadow];
    markReadOnly = [qword_1ED499178 markReadOnly];
    v2 = qword_1ED499178;
  }

  return v2;
}

+ (id)decodeFromCoder:(id)coder prefix:(id)prefix
{
  v59[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  prefixCopy = prefix;
  v8 = @"Style";
  if (prefixCopy)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Style"];
  }

  if (![coderCopy containsValueForKey:v8])
  {
    v11 = objc_opt_new();
    v12 = objc_opt_class();
    if (prefixCopy)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Effect"];
      v14 = [coderCopy decodeObjectOfClass:v12 forKey:v13];
    }

    else
    {
      v14 = [coderCopy decodeObjectOfClass:v12 forKey:@"Effect"];
    }

    if (v14)
    {
      v59[0] = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:1];
      v16 = *(v11 + 40);
      *(v11 + 40) = v15;

      v17 = *(v11 + 16) | 1;
    }

    else
    {
      v18 = MEMORY[0x1E695DFD8];
      v58[0] = objc_opt_class();
      v58[1] = objc_opt_class();
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:2];
      v20 = [v18 setWithArray:v19];
      v21 = @"Effects";
      if (prefixCopy)
      {
        v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Effects", v58[0]];
      }

      v22 = [coderCopy decodeObjectOfClasses:v20 forKey:v21];
      v23 = v22;
      if (v22)
      {
        v24 = v22;
      }

      else
      {
        v24 = MEMORY[0x1E695E0F0];
      }

      objc_storeStrong((v11 + 40), v24);

      if (prefixCopy)
      {
      }

      v17 = *(v11 + 16) & 0xFE;
    }

    *(v11 + 16) = v17;
    v25 = objc_opt_class();
    v26 = @"Color";
    if (prefixCopy)
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Color"];
    }

    v27 = [coderCopy decodeObjectOfClass:v25 forKey:v26];
    v28 = *(v11 + 48);
    *(v11 + 48) = v27;

    if (prefixCopy)
    {

      v29 = objc_opt_class();
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Image"];
    }

    else
    {
      v29 = objc_opt_class();
      v30 = @"Image";
    }

    v31 = [coderCopy decodeObjectOfClass:v29 forKey:v30];
    v32 = *(v11 + 56);
    *(v11 + 56) = v31;

    if (prefixCopy)
    {

      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"ImageContentMode"];
      *(v11 + 64) = [coderCopy decodeIntegerForKey:v33];

      [v11 _updateBackgroundFlags];
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Visibility"];
      v35 = [coderCopy decodeIntegerForKey:v34];

      if (!v35)
      {
LABEL_34:
        v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"ShadowVersion"];
        v42 = [coderCopy decodeIntegerForKey:v41];

        goto LABEL_36;
      }

      *(v11 + 104) = v35;
      v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"VisibilityOnScrollDistance"];
      [coderCopy decodeDoubleForKey:v36];
      v38 = v37;
    }

    else
    {
      *(v11 + 64) = [coderCopy decodeIntegerForKey:@"ImageContentMode"];
      [v11 _updateBackgroundFlags];
      v39 = [coderCopy decodeIntegerForKey:@"Visibility"];
      if (!v39)
      {
        goto LABEL_35;
      }

      *(v11 + 104) = v39;
      [coderCopy decodeDoubleForKey:@"VisibilityOnScrollDistance"];
      v38 = v40;
    }

    if (v38 != 0.0)
    {
      *(v11 + 112) = v38;
    }

    if (prefixCopy)
    {
      goto LABEL_34;
    }

LABEL_35:
    v42 = [coderCopy decodeIntegerForKey:@"ShadowVersion"];
LABEL_36:
    if (v42 == 2)
    {
      v47 = objc_opt_class();
      v48 = @"ShadowEffect";
      if (prefixCopy)
      {
        v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"ShadowEffect"];
      }

      v49 = [coderCopy decodeObjectOfClass:v47 forKey:v48];
      v50 = *(v11 + 96);
      *(v11 + 96) = v49;

      if (!prefixCopy)
      {
        v51 = objc_opt_class();
        v44 = @"ShadowColor";
        goto LABEL_53;
      }

      v51 = objc_opt_class();
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"ShadowColor"];
    }

    else
    {
      if (v42 == 1)
      {
        v43 = objc_opt_class();
        v44 = @"ShadowEffect";
        if (prefixCopy)
        {
          v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"ShadowEffect"];
        }

        v45 = [coderCopy decodeObjectOfClass:v43 forKey:v44];
        v46 = 96;
        goto LABEL_54;
      }

      v51 = objc_opt_class();
      v44 = @"ShadowColor";
      if (!prefixCopy)
      {
LABEL_53:
        v45 = [coderCopy decodeObjectOfClass:v51 forKey:v44];
        v46 = 80;
LABEL_54:
        v52 = *(v11 + v46);
        *(v11 + v46) = v45;

        if (prefixCopy)
        {

          v53 = objc_opt_class();
          v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"ShadowImage"];
        }

        else
        {
          v53 = objc_opt_class();
          v54 = @"ShadowImage";
        }

        v55 = [coderCopy decodeObjectOfClass:v53 forKey:v54];
        v56 = *(v11 + 88);
        *(v11 + 88) = v55;

        if (prefixCopy)
        {
        }

        [v11 _updateShadowFlags];

        goto LABEL_60;
      }

      [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"ShadowColor"];
    }
    v44 = ;
    goto LABEL_53;
  }

  v9 = [coderCopy decodeIntegerForKey:v8];
  switch(v9)
  {
    case 3:
      transparentBackgroundData = [self transparentBackgroundData];
      goto LABEL_50;
    case 2:
      transparentBackgroundData = [self opaqueBackgroundData];
      goto LABEL_50;
    case 1:
      transparentBackgroundData = [self standardBackgroundData];
LABEL_50:
      v11 = transparentBackgroundData;
      goto LABEL_60;
  }

  v11 = 0;
LABEL_60:

  return v11;
}

- (void)encodeToCoder:(id)coder prefix:(id)prefix
{
  coderCopy = coder;
  prefixCopy = prefix;
  v7 = prefixCopy;
  if (_MergedGlobals_1 == self)
  {
    if (!prefixCopy)
    {
      v16 = coderCopy;
      v17 = 1;
      goto LABEL_20;
    }

    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Style"];
    v14 = coderCopy;
    v15 = 1;
LABEL_14:
    [v14 encodeInteger:v15 forKey:v13];

    goto LABEL_70;
  }

  if (qword_1ED499178 == self)
  {
    if (!prefixCopy)
    {
      v16 = coderCopy;
      v17 = 2;
      goto LABEL_20;
    }

    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Style"];
    v14 = coderCopy;
    v15 = 2;
    goto LABEL_14;
  }

  if (qword_1ED499180 == self)
  {
    if (prefixCopy)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Style"];
      v14 = coderCopy;
      v15 = 3;
      goto LABEL_14;
    }

    v16 = coderCopy;
    v17 = 3;
LABEL_20:
    [v16 encodeInteger:v17 forKey:@"Style"];
    goto LABEL_70;
  }

  if ([(NSArray *)self->_backgroundEffects count])
  {
    backgroundEffects = self->_backgroundEffects;
    if (*&self->_flags)
    {
      firstObject = [(NSArray *)self->_backgroundEffects firstObject];
      if (v7)
      {
        v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"Effect"];
        [coderCopy encodeObject:firstObject forKey:v18];

LABEL_25:
        goto LABEL_26;
      }

      v12 = @"Effect";
      v10 = coderCopy;
      v11 = firstObject;
    }

    else
    {
      if (!v7)
      {
        [coderCopy encodeObject:self->_backgroundEffects forKey:@"Effects"];
        backgroundColor = self->_backgroundColor;
        if (!backgroundColor)
        {
          goto LABEL_31;
        }

        v20 = coderCopy;
        goto LABEL_30;
      }

      firstObject = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"Effects"];
      v10 = coderCopy;
      v11 = backgroundEffects;
      v12 = firstObject;
    }

    [v10 encodeObject:v11 forKey:v12];
    goto LABEL_25;
  }

LABEL_26:
  v21 = self->_backgroundColor;
  if (!v21)
  {
    goto LABEL_31;
  }

  if (v7)
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"Color"];
    [coderCopy encodeObject:v21 forKey:v22];

    goto LABEL_31;
  }

  v20 = coderCopy;
  backgroundColor = self->_backgroundColor;
LABEL_30:
  [v20 encodeObject:backgroundColor forKey:@"Color"];
LABEL_31:
  backgroundImage = self->_backgroundImage;
  if (!backgroundImage)
  {
LABEL_34:
    backgroundImageContentMode = self->_backgroundImageContentMode;
    if (!backgroundImageContentMode)
    {
      goto LABEL_41;
    }

    if (v7)
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"ImageContentMode"];
      [coderCopy encodeInteger:backgroundImageContentMode forKey:v26];

      goto LABEL_41;
    }

    v28 = coderCopy;
    v27 = self->_backgroundImageContentMode;
    goto LABEL_40;
  }

  if (v7)
  {
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"Image"];
    [coderCopy encodeObject:backgroundImage forKey:v24];

    goto LABEL_34;
  }

  [coderCopy encodeObject:self->_backgroundImage forKey:@"Image"];
  v27 = self->_backgroundImageContentMode;
  if (!v27)
  {
    goto LABEL_41;
  }

  v28 = coderCopy;
LABEL_40:
  [v28 encodeInteger:v27 forKey:@"ImageContentMode"];
LABEL_41:
  visibility = self->_visibility;
  if (!visibility)
  {
LABEL_44:
    visibilityOnScrollDistance = self->_visibilityOnScrollDistance;
    if (visibilityOnScrollDistance == 0.0)
    {
      goto LABEL_51;
    }

    if (v7)
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"VisibilityOnScrollDistance"];
      [coderCopy encodeDouble:v32 forKey:visibilityOnScrollDistance];

      goto LABEL_51;
    }

    v34 = coderCopy;
    v33 = self->_visibilityOnScrollDistance;
    goto LABEL_50;
  }

  if (v7)
  {
    v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"Visibility"];
    [coderCopy encodeInteger:visibility forKey:v30];

    goto LABEL_44;
  }

  [coderCopy encodeInteger:self->_visibility forKey:@"Visibility"];
  v33 = self->_visibilityOnScrollDistance;
  if (v33 == 0.0)
  {
    goto LABEL_51;
  }

  v34 = coderCopy;
LABEL_50:
  [v34 encodeDouble:@"VisibilityOnScrollDistance" forKey:v33];
LABEL_51:
  shadowEffect = self->_shadowEffect;
  if (!shadowEffect)
  {
    shadowColor = self->_shadowColor;
    if (shadowColor)
    {
      if (v7)
      {
        v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"ShadowColor"];
        [coderCopy encodeObject:shadowColor forKey:v43];
      }

      else
      {
        [coderCopy encodeObject:self->_shadowColor forKey:@"ShadowColor"];
      }
    }

    goto LABEL_66;
  }

  if (v7)
  {
    v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"ShadowEffect"];
    [coderCopy encodeObject:shadowEffect forKey:v36];

    v37 = self->_shadowColor;
    if (v37)
    {
      v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"ShadowColor"];
      [coderCopy encodeObject:v37 forKey:v38];

      v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"ShadowVersion"];
      v40 = coderCopy;
      v41 = 2;
LABEL_62:
      [v40 encodeInteger:v41 forKey:v39];

      goto LABEL_66;
    }
  }

  else
  {
    [coderCopy encodeObject:self->_shadowEffect forKey:@"ShadowEffect"];
    v44 = self->_shadowColor;
    if (v44)
    {
      [coderCopy encodeObject:v44 forKey:@"ShadowColor"];
      v45 = coderCopy;
      v46 = 2;
      goto LABEL_65;
    }
  }

  v47 = +[UIColor _systemChromeShadowColor];
  if (v7)
  {
    v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"ShadowColor"];
    [coderCopy encodeObject:v47 forKey:v48];

    v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"ShadowVersion"];
    v40 = coderCopy;
    v41 = 1;
    goto LABEL_62;
  }

  [coderCopy encodeObject:v47 forKey:@"ShadowColor"];

  v45 = coderCopy;
  v46 = 1;
LABEL_65:
  [v45 encodeInteger:v46 forKey:@"ShadowVersion"];
LABEL_66:
  shadowImage = self->_shadowImage;
  if (shadowImage)
  {
    if (v7)
    {
      v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"ShadowImage"];
      [coderCopy encodeObject:shadowImage forKey:v50];
    }

    else
    {
      [coderCopy encodeObject:shadowImage forKey:@"ShadowImage"];
    }
  }

LABEL_70:
}

- (void)describeInto:(id)into
{
  intoCopy = into;
  v9.receiver = self;
  v9.super_class = _UIBarBackgroundAppearanceData;
  [(_UIBarAppearanceData *)&v9 describeInto:intoCopy];
  if ([(NSArray *)self->_backgroundEffects count])
  {
    backgroundEffects = self->_backgroundEffects;
    if (*&self->_flags)
    {
      firstObject = [(NSArray *)backgroundEffects firstObject];
      [intoCopy appendFormat:@" effect=(%@)", firstObject];
    }

    else
    {
      firstObject = [(NSArray *)backgroundEffects componentsJoinedByString:@", "];
      [intoCopy appendFormat:@" effects=(%@)", firstObject];
    }
  }

  if (self->_backgroundColor)
  {
    [intoCopy appendFormat:@" color=%@", self->_backgroundColor];
  }

  if (self->_backgroundImage)
  {
    [intoCopy appendFormat:@" image=%@ contentMode=%li", self->_backgroundImage, self->_backgroundImageContentMode];
  }

  if (self->_visibility)
  {
    [intoCopy appendString:@" visibility="];
    visibility = self->_visibility;
    if (visibility <= 1)
    {
      if (!visibility)
      {
        goto LABEL_23;
      }

      if (visibility == 1)
      {
        v8 = @"hidden";
LABEL_22:
        [intoCopy appendString:v8];
        goto LABEL_23;
      }

LABEL_19:
      [intoCopy appendFormat:@"unknown(%ld)", self->_visibility];
      goto LABEL_23;
    }

    if (visibility == 2)
    {
      v8 = @"visible";
      goto LABEL_22;
    }

    if (visibility != 3)
    {
      goto LABEL_19;
    }

    [intoCopy appendString:@"visibleOnScroll"];
    if (self->_visibilityOnScrollDistance > 0.0)
    {
      [intoCopy appendFormat:@"(distance=%0.2f)", *&self->_visibilityOnScrollDistance];
    }
  }

LABEL_23:
  if (self->_shadowEffect)
  {
    [intoCopy appendFormat:@" shadowEffect=%@", self->_shadowEffect];
  }

  if (self->_shadowColor)
  {
    [intoCopy appendFormat:@" shadowColor=%@", self->_shadowColor];
  }

  if (self->_shadowImage)
  {
    [intoCopy appendFormat:@" shadowImage=%@", self->_shadowImage];
  }
}

- (int64_t)hashInto:(int64_t)into
{
  v9.receiver = self;
  v9.super_class = _UIBarBackgroundAppearanceData;
  v4 = [(_UIBarAppearanceData *)&v9 hashInto:into];
  v5 = [(NSArray *)self->_backgroundEffects count];
  v6 = 1;
  if (self->_backgroundColor)
  {
    v6 = 2;
  }

  v7 = v6 + v5;
  if (self->_backgroundImage)
  {
    ++v7;
  }

  if (self->_shadowEffect)
  {
    ++v7;
  }

  if (self->_shadowImage)
  {
    ++v7;
  }

  if (self->_shadowColor)
  {
    ++v7;
  }

  return (self->_visibility + v7 * v4 + self->_visibilityOnScrollDistance) << 8;
}

- (BOOL)checkEqualTo:(id)to
{
  toCopy = to;
  v23.receiver = self;
  v23.super_class = _UIBarBackgroundAppearanceData;
  if (![(_UIBarAppearanceData *)&v23 checkEqualTo:toCopy]|| self->_backgroundImageContentMode != *(toCopy + 8))
  {
    goto LABEL_31;
  }

  v5 = *(toCopy + 6);
  v6 = self->_backgroundColor;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {
  }

  else
  {
    if (v6)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      goto LABEL_30;
    }

    v10 = [(UIColor *)v6 isEqual:v7];

    if (!v10)
    {
      goto LABEL_31;
    }
  }

  v11 = *(toCopy + 7);
  v6 = self->_backgroundImage;
  v12 = v11;
  v8 = v12;
  if (v6 == v12)
  {
  }

  else
  {
    if (v6)
    {
      v13 = v12 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      goto LABEL_30;
    }

    v14 = [(UIColor *)v6 isEqual:v12];

    if (!v14)
    {
      goto LABEL_31;
    }
  }

  v15 = *(toCopy + 5);
  v6 = self->_backgroundEffects;
  v16 = v15;
  v8 = v16;
  if (v6 == v16)
  {
  }

  else
  {
    if (!v6 || !v16)
    {
      goto LABEL_30;
    }

    v17 = [(UIColor *)v6 isEqual:v16];

    if (!v17)
    {
      goto LABEL_31;
    }
  }

  v18 = *(toCopy + 9);
  v6 = self->_overrideTabBarVibrancyEffect;
  v19 = v18;
  v8 = v19;
  if (v6 != v19)
  {
    if (v6 && v19)
    {
      v20 = [(UIColor *)v6 isEqual:v19];

      if (!v20)
      {
        goto LABEL_31;
      }

      goto LABEL_34;
    }

LABEL_30:

    goto LABEL_31;
  }

LABEL_34:
  if (_deferringTokenEqualToToken(self->_shadowEffect, *(toCopy + 12)) && _deferringTokenEqualToToken(self->_shadowColor, *(toCopy + 10)) && _deferringTokenEqualToToken(self->_shadowImage, *(toCopy + 11)) && self->_visibility == *(toCopy + 13))
  {
    v21 = self->_visibilityOnScrollDistance == *(toCopy + 14);
    goto LABEL_32;
  }

LABEL_31:
  v21 = 0;
LABEL_32:

  return v21;
}

- (void)setBackgroundEffect:(id)effect
{
  v8[1] = *MEMORY[0x1E69E9840];
  effectCopy = effect;
  [(_UIBarAppearanceData *)self assertMutable:a2];
  if (effectCopy)
  {
    v8[0] = effectCopy;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    backgroundEffects = self->_backgroundEffects;
    self->_backgroundEffects = v6;
  }

  else
  {
    backgroundEffects = self->_backgroundEffects;
    self->_backgroundEffects = MEMORY[0x1E695E0F0];
  }

  *&self->_flags |= 1u;
  [(_UIBarBackgroundAppearanceData *)self _updateBackgroundFlags];
}

- (void)setBackgroundEffects:(id)effects
{
  effectsCopy = effects;
  [(_UIBarAppearanceData *)self assertMutable:a2];
  if (effectsCopy)
  {
    v5 = [effectsCopy copy];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  backgroundEffects = self->_backgroundEffects;
  self->_backgroundEffects = v5;

  *&self->_flags &= ~1u;
  [(_UIBarBackgroundAppearanceData *)self _updateBackgroundFlags];
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  [(_UIBarAppearanceData *)self assertMutable:a2];
  v6 = [colorCopy copy];

  backgroundColor = self->_backgroundColor;
  self->_backgroundColor = v6;

  [(_UIBarBackgroundAppearanceData *)self _updateBackgroundFlags];
}

- (void)setBackgroundImage:(id)image
{
  imageCopy = image;
  [(_UIBarAppearanceData *)self assertMutable:a2];
  backgroundImage = self->_backgroundImage;
  self->_backgroundImage = imageCopy;

  [(_UIBarBackgroundAppearanceData *)self _updateBackgroundFlags];
}

- (void)setOverrideTabBarVibrancyEffect:(id)effect
{
  effectCopy = effect;
  [(_UIBarAppearanceData *)self assertMutable:a2];
  v6 = [effectCopy copy];

  overrideTabBarVibrancyEffect = self->_overrideTabBarVibrancyEffect;
  self->_overrideTabBarVibrancyEffect = v6;
}

- (void)setShadowColor:(id)color
{
  colorCopy = color;
  [(_UIBarAppearanceData *)self assertMutable:a2];
  v6 = [colorCopy copy];

  shadowColor = self->_shadowColor;
  self->_shadowColor = v6;

  shadowViewEffect = self->_shadowViewEffect;
  self->_shadowViewEffect = 0;

  [(_UIBarBackgroundAppearanceData *)self _updateShadowFlags];
}

- (void)setShadowImage:(id)image
{
  imageCopy = image;
  [(_UIBarAppearanceData *)self assertMutable:a2];
  shadowImage = self->_shadowImage;
  self->_shadowImage = imageCopy;

  [(_UIBarBackgroundAppearanceData *)self _updateShadowFlags];
}

- (void)setShadowEffect:(id)effect
{
  effectCopy = effect;
  [(_UIBarAppearanceData *)self assertMutable:a2];
  v6 = [effectCopy copy];

  shadowEffect = self->_shadowEffect;
  self->_shadowEffect = v6;

  shadowViewEffect = self->_shadowViewEffect;
  self->_shadowViewEffect = 0;

  [(_UIBarBackgroundAppearanceData *)self _updateShadowFlags];
}

- (UIVibrancyEffect)tabBarVibrancyEffect
{
  v20 = *MEMORY[0x1E69E9840];
  overrideTabBarVibrancyEffect = self->_overrideTabBarVibrancyEffect;
  if (!overrideTabBarVibrancyEffect)
  {
    if ((*&self->_flags & 8) != 0)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v4 = self->_backgroundEffects;
      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v16;
        while (2)
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v16 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = *(*(&v15 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v10 = v9;
              if ([v10 _canProvideVibrancyEffect])
              {
                v11 = [UIVibrancyEffect effectForBlurEffect:v10 style:4];
                tabBarVibrancyEffect = self->_tabBarVibrancyEffect;
                self->_tabBarVibrancyEffect = v11;
              }

              goto LABEL_15;
            }
          }

          v6 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:

      *&self->_flags &= ~8u;
    }

    overrideTabBarVibrancyEffect = self->_tabBarVibrancyEffect;
  }

  v13 = overrideTabBarVibrancyEffect;

  return v13;
}

@end