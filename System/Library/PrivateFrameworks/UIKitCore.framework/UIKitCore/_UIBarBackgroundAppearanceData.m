@interface _UIBarBackgroundAppearanceData
+ (id)decodeFromCoder:(id)a3 prefix:(id)a4;
+ (id)opaqueBackgroundData;
+ (id)standardBackgroundData;
+ (id)transparentBackgroundData;
- (BOOL)checkEqualTo:(id)a3;
- (UIBlurEffect)backgroundEffect;
- (UIColor)shadowViewBackgroundColor;
- (UIColor)shadowViewTintColor;
- (UIVibrancyEffect)shadowViewEffect;
- (UIVibrancyEffect)tabBarVibrancyEffect;
- (id)replicate;
- (int64_t)hashInto:(int64_t)a3;
- (void)_updateBackgroundFlags;
- (void)_updateShadowFlags;
- (void)configureWithDefaultShadow;
- (void)configureWithoutShadow;
- (void)describeInto:(id)a3;
- (void)encodeToCoder:(id)a3 prefix:(id)a4;
- (void)setBackgroundColor:(id)a3;
- (void)setBackgroundEffect:(id)a3;
- (void)setBackgroundEffects:(id)a3;
- (void)setBackgroundImage:(id)a3;
- (void)setOverrideTabBarVibrancyEffect:(id)a3;
- (void)setShadowColor:(id)a3;
- (void)setShadowEffect:(id)a3;
- (void)setShadowImage:(id)a3;
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
    v12 = [_MergedGlobals_1 markReadOnly];
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
    v4 = [(NSArray *)self->_backgroundEffects firstObject];
  }

  else
  {
    v4 = 0;
  }

  return v4;
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
    v10 = [qword_1ED499180 markReadOnly];
    v2 = qword_1ED499180;
  }

  return v2;
}

- (id)replicate
{
  v17.receiver = self;
  v17.super_class = _UIBarBackgroundAppearanceData;
  v3 = [(_UIBarAppearanceData *)&v17 replicate];
  *(v3 + 16) = *&self->_flags;
  v4 = [(NSArray *)self->_backgroundEffects copy];
  v5 = *(v3 + 40);
  *(v3 + 40) = v4;

  v6 = [(UIColor *)self->_backgroundColor copy];
  v7 = *(v3 + 48);
  *(v3 + 48) = v6;

  objc_storeStrong((v3 + 56), self->_backgroundImage);
  *(v3 + 64) = self->_backgroundImageContentMode;
  *(v3 + 104) = self->_visibility;
  *(v3 + 112) = self->_visibilityOnScrollDistance;
  v8 = [(UIVibrancyEffect *)self->_overrideTabBarVibrancyEffect copy];
  v9 = *(v3 + 72);
  *(v3 + 72) = v8;

  v10 = [(UIVibrancyEffect *)self->_shadowEffect copy];
  v11 = *(v3 + 96);
  *(v3 + 96) = v10;

  objc_storeStrong((v3 + 88), self->_shadowImage);
  v12 = [(UIColor *)self->_shadowColor copy];
  v13 = *(v3 + 80);
  *(v3 + 80) = v12;

  v14 = [(UIVibrancyEffect *)self->_tabBarVibrancyEffect copy];
  v15 = *(v3 + 32);
  *(v3 + 32) = v14;

  return v3;
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
    v10 = [qword_1ED499178 markReadOnly];
    v2 = qword_1ED499178;
  }

  return v2;
}

+ (id)decodeFromCoder:(id)a3 prefix:(id)a4
{
  v59[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = @"Style";
  if (v7)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"Style"];
  }

  if (![v6 containsValueForKey:v8])
  {
    v11 = objc_opt_new();
    v12 = objc_opt_class();
    if (v7)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"Effect"];
      v14 = [v6 decodeObjectOfClass:v12 forKey:v13];
    }

    else
    {
      v14 = [v6 decodeObjectOfClass:v12 forKey:@"Effect"];
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
      if (v7)
      {
        v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"Effects", v58[0]];
      }

      v22 = [v6 decodeObjectOfClasses:v20 forKey:v21];
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

      if (v7)
      {
      }

      v17 = *(v11 + 16) & 0xFE;
    }

    *(v11 + 16) = v17;
    v25 = objc_opt_class();
    v26 = @"Color";
    if (v7)
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"Color"];
    }

    v27 = [v6 decodeObjectOfClass:v25 forKey:v26];
    v28 = *(v11 + 48);
    *(v11 + 48) = v27;

    if (v7)
    {

      v29 = objc_opt_class();
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"Image"];
    }

    else
    {
      v29 = objc_opt_class();
      v30 = @"Image";
    }

    v31 = [v6 decodeObjectOfClass:v29 forKey:v30];
    v32 = *(v11 + 56);
    *(v11 + 56) = v31;

    if (v7)
    {

      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"ImageContentMode"];
      *(v11 + 64) = [v6 decodeIntegerForKey:v33];

      [v11 _updateBackgroundFlags];
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"Visibility"];
      v35 = [v6 decodeIntegerForKey:v34];

      if (!v35)
      {
LABEL_34:
        v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"ShadowVersion"];
        v42 = [v6 decodeIntegerForKey:v41];

        goto LABEL_36;
      }

      *(v11 + 104) = v35;
      v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"VisibilityOnScrollDistance"];
      [v6 decodeDoubleForKey:v36];
      v38 = v37;
    }

    else
    {
      *(v11 + 64) = [v6 decodeIntegerForKey:@"ImageContentMode"];
      [v11 _updateBackgroundFlags];
      v39 = [v6 decodeIntegerForKey:@"Visibility"];
      if (!v39)
      {
        goto LABEL_35;
      }

      *(v11 + 104) = v39;
      [v6 decodeDoubleForKey:@"VisibilityOnScrollDistance"];
      v38 = v40;
    }

    if (v38 != 0.0)
    {
      *(v11 + 112) = v38;
    }

    if (v7)
    {
      goto LABEL_34;
    }

LABEL_35:
    v42 = [v6 decodeIntegerForKey:@"ShadowVersion"];
LABEL_36:
    if (v42 == 2)
    {
      v47 = objc_opt_class();
      v48 = @"ShadowEffect";
      if (v7)
      {
        v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"ShadowEffect"];
      }

      v49 = [v6 decodeObjectOfClass:v47 forKey:v48];
      v50 = *(v11 + 96);
      *(v11 + 96) = v49;

      if (!v7)
      {
        v51 = objc_opt_class();
        v44 = @"ShadowColor";
        goto LABEL_53;
      }

      v51 = objc_opt_class();
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"ShadowColor"];
    }

    else
    {
      if (v42 == 1)
      {
        v43 = objc_opt_class();
        v44 = @"ShadowEffect";
        if (v7)
        {
          v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"ShadowEffect"];
        }

        v45 = [v6 decodeObjectOfClass:v43 forKey:v44];
        v46 = 96;
        goto LABEL_54;
      }

      v51 = objc_opt_class();
      v44 = @"ShadowColor";
      if (!v7)
      {
LABEL_53:
        v45 = [v6 decodeObjectOfClass:v51 forKey:v44];
        v46 = 80;
LABEL_54:
        v52 = *(v11 + v46);
        *(v11 + v46) = v45;

        if (v7)
        {

          v53 = objc_opt_class();
          v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"ShadowImage"];
        }

        else
        {
          v53 = objc_opt_class();
          v54 = @"ShadowImage";
        }

        v55 = [v6 decodeObjectOfClass:v53 forKey:v54];
        v56 = *(v11 + 88);
        *(v11 + 88) = v55;

        if (v7)
        {
        }

        [v11 _updateShadowFlags];

        goto LABEL_60;
      }

      [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"ShadowColor"];
    }
    v44 = ;
    goto LABEL_53;
  }

  v9 = [v6 decodeIntegerForKey:v8];
  switch(v9)
  {
    case 3:
      v10 = [a1 transparentBackgroundData];
      goto LABEL_50;
    case 2:
      v10 = [a1 opaqueBackgroundData];
      goto LABEL_50;
    case 1:
      v10 = [a1 standardBackgroundData];
LABEL_50:
      v11 = v10;
      goto LABEL_60;
  }

  v11 = 0;
LABEL_60:

  return v11;
}

- (void)encodeToCoder:(id)a3 prefix:(id)a4
{
  v51 = a3;
  v6 = a4;
  v7 = v6;
  if (_MergedGlobals_1 == self)
  {
    if (!v6)
    {
      v16 = v51;
      v17 = 1;
      goto LABEL_20;
    }

    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v6, @"Style"];
    v14 = v51;
    v15 = 1;
LABEL_14:
    [v14 encodeInteger:v15 forKey:v13];

    goto LABEL_70;
  }

  if (qword_1ED499178 == self)
  {
    if (!v6)
    {
      v16 = v51;
      v17 = 2;
      goto LABEL_20;
    }

    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v6, @"Style"];
    v14 = v51;
    v15 = 2;
    goto LABEL_14;
  }

  if (qword_1ED499180 == self)
  {
    if (v6)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v6, @"Style"];
      v14 = v51;
      v15 = 3;
      goto LABEL_14;
    }

    v16 = v51;
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
      v9 = [(NSArray *)self->_backgroundEffects firstObject];
      if (v7)
      {
        v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"Effect"];
        [v51 encodeObject:v9 forKey:v18];

LABEL_25:
        goto LABEL_26;
      }

      v12 = @"Effect";
      v10 = v51;
      v11 = v9;
    }

    else
    {
      if (!v7)
      {
        [v51 encodeObject:self->_backgroundEffects forKey:@"Effects"];
        backgroundColor = self->_backgroundColor;
        if (!backgroundColor)
        {
          goto LABEL_31;
        }

        v20 = v51;
        goto LABEL_30;
      }

      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"Effects"];
      v10 = v51;
      v11 = backgroundEffects;
      v12 = v9;
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
    [v51 encodeObject:v21 forKey:v22];

    goto LABEL_31;
  }

  v20 = v51;
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
      [v51 encodeInteger:backgroundImageContentMode forKey:v26];

      goto LABEL_41;
    }

    v28 = v51;
    v27 = self->_backgroundImageContentMode;
    goto LABEL_40;
  }

  if (v7)
  {
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"Image"];
    [v51 encodeObject:backgroundImage forKey:v24];

    goto LABEL_34;
  }

  [v51 encodeObject:self->_backgroundImage forKey:@"Image"];
  v27 = self->_backgroundImageContentMode;
  if (!v27)
  {
    goto LABEL_41;
  }

  v28 = v51;
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
      [v51 encodeDouble:v32 forKey:visibilityOnScrollDistance];

      goto LABEL_51;
    }

    v34 = v51;
    v33 = self->_visibilityOnScrollDistance;
    goto LABEL_50;
  }

  if (v7)
  {
    v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"Visibility"];
    [v51 encodeInteger:visibility forKey:v30];

    goto LABEL_44;
  }

  [v51 encodeInteger:self->_visibility forKey:@"Visibility"];
  v33 = self->_visibilityOnScrollDistance;
  if (v33 == 0.0)
  {
    goto LABEL_51;
  }

  v34 = v51;
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
        [v51 encodeObject:shadowColor forKey:v43];
      }

      else
      {
        [v51 encodeObject:self->_shadowColor forKey:@"ShadowColor"];
      }
    }

    goto LABEL_66;
  }

  if (v7)
  {
    v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"ShadowEffect"];
    [v51 encodeObject:shadowEffect forKey:v36];

    v37 = self->_shadowColor;
    if (v37)
    {
      v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"ShadowColor"];
      [v51 encodeObject:v37 forKey:v38];

      v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"ShadowVersion"];
      v40 = v51;
      v41 = 2;
LABEL_62:
      [v40 encodeInteger:v41 forKey:v39];

      goto LABEL_66;
    }
  }

  else
  {
    [v51 encodeObject:self->_shadowEffect forKey:@"ShadowEffect"];
    v44 = self->_shadowColor;
    if (v44)
    {
      [v51 encodeObject:v44 forKey:@"ShadowColor"];
      v45 = v51;
      v46 = 2;
      goto LABEL_65;
    }
  }

  v47 = +[UIColor _systemChromeShadowColor];
  if (v7)
  {
    v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"ShadowColor"];
    [v51 encodeObject:v47 forKey:v48];

    v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"ShadowVersion"];
    v40 = v51;
    v41 = 1;
    goto LABEL_62;
  }

  [v51 encodeObject:v47 forKey:@"ShadowColor"];

  v45 = v51;
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
      [v51 encodeObject:shadowImage forKey:v50];
    }

    else
    {
      [v51 encodeObject:shadowImage forKey:@"ShadowImage"];
    }
  }

LABEL_70:
}

- (void)describeInto:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _UIBarBackgroundAppearanceData;
  [(_UIBarAppearanceData *)&v9 describeInto:v4];
  if ([(NSArray *)self->_backgroundEffects count])
  {
    backgroundEffects = self->_backgroundEffects;
    if (*&self->_flags)
    {
      v6 = [(NSArray *)backgroundEffects firstObject];
      [v4 appendFormat:@" effect=(%@)", v6];
    }

    else
    {
      v6 = [(NSArray *)backgroundEffects componentsJoinedByString:@", "];
      [v4 appendFormat:@" effects=(%@)", v6];
    }
  }

  if (self->_backgroundColor)
  {
    [v4 appendFormat:@" color=%@", self->_backgroundColor];
  }

  if (self->_backgroundImage)
  {
    [v4 appendFormat:@" image=%@ contentMode=%li", self->_backgroundImage, self->_backgroundImageContentMode];
  }

  if (self->_visibility)
  {
    [v4 appendString:@" visibility="];
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
        [v4 appendString:v8];
        goto LABEL_23;
      }

LABEL_19:
      [v4 appendFormat:@"unknown(%ld)", self->_visibility];
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

    [v4 appendString:@"visibleOnScroll"];
    if (self->_visibilityOnScrollDistance > 0.0)
    {
      [v4 appendFormat:@"(distance=%0.2f)", *&self->_visibilityOnScrollDistance];
    }
  }

LABEL_23:
  if (self->_shadowEffect)
  {
    [v4 appendFormat:@" shadowEffect=%@", self->_shadowEffect];
  }

  if (self->_shadowColor)
  {
    [v4 appendFormat:@" shadowColor=%@", self->_shadowColor];
  }

  if (self->_shadowImage)
  {
    [v4 appendFormat:@" shadowImage=%@", self->_shadowImage];
  }
}

- (int64_t)hashInto:(int64_t)a3
{
  v9.receiver = self;
  v9.super_class = _UIBarBackgroundAppearanceData;
  v4 = [(_UIBarAppearanceData *)&v9 hashInto:a3];
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

- (BOOL)checkEqualTo:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = _UIBarBackgroundAppearanceData;
  if (![(_UIBarAppearanceData *)&v23 checkEqualTo:v4]|| self->_backgroundImageContentMode != *(v4 + 8))
  {
    goto LABEL_31;
  }

  v5 = *(v4 + 6);
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

  v11 = *(v4 + 7);
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

  v15 = *(v4 + 5);
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

  v18 = *(v4 + 9);
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
  if (_deferringTokenEqualToToken(self->_shadowEffect, *(v4 + 12)) && _deferringTokenEqualToToken(self->_shadowColor, *(v4 + 10)) && _deferringTokenEqualToToken(self->_shadowImage, *(v4 + 11)) && self->_visibility == *(v4 + 13))
  {
    v21 = self->_visibilityOnScrollDistance == *(v4 + 14);
    goto LABEL_32;
  }

LABEL_31:
  v21 = 0;
LABEL_32:

  return v21;
}

- (void)setBackgroundEffect:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  [(_UIBarAppearanceData *)self assertMutable:a2];
  if (v5)
  {
    v8[0] = v5;
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

- (void)setBackgroundEffects:(id)a3
{
  v7 = a3;
  [(_UIBarAppearanceData *)self assertMutable:a2];
  if (v7)
  {
    v5 = [v7 copy];
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

- (void)setBackgroundColor:(id)a3
{
  v5 = a3;
  [(_UIBarAppearanceData *)self assertMutable:a2];
  v6 = [v5 copy];

  backgroundColor = self->_backgroundColor;
  self->_backgroundColor = v6;

  [(_UIBarBackgroundAppearanceData *)self _updateBackgroundFlags];
}

- (void)setBackgroundImage:(id)a3
{
  v5 = a3;
  [(_UIBarAppearanceData *)self assertMutable:a2];
  backgroundImage = self->_backgroundImage;
  self->_backgroundImage = v5;

  [(_UIBarBackgroundAppearanceData *)self _updateBackgroundFlags];
}

- (void)setOverrideTabBarVibrancyEffect:(id)a3
{
  v5 = a3;
  [(_UIBarAppearanceData *)self assertMutable:a2];
  v6 = [v5 copy];

  overrideTabBarVibrancyEffect = self->_overrideTabBarVibrancyEffect;
  self->_overrideTabBarVibrancyEffect = v6;
}

- (void)setShadowColor:(id)a3
{
  v5 = a3;
  [(_UIBarAppearanceData *)self assertMutable:a2];
  v6 = [v5 copy];

  shadowColor = self->_shadowColor;
  self->_shadowColor = v6;

  shadowViewEffect = self->_shadowViewEffect;
  self->_shadowViewEffect = 0;

  [(_UIBarBackgroundAppearanceData *)self _updateShadowFlags];
}

- (void)setShadowImage:(id)a3
{
  v5 = a3;
  [(_UIBarAppearanceData *)self assertMutable:a2];
  shadowImage = self->_shadowImage;
  self->_shadowImage = v5;

  [(_UIBarBackgroundAppearanceData *)self _updateShadowFlags];
}

- (void)setShadowEffect:(id)a3
{
  v5 = a3;
  [(_UIBarAppearanceData *)self assertMutable:a2];
  v6 = [v5 copy];

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