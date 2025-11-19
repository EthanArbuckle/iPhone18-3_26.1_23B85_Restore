@interface UIBarAppearance
- (BOOL)isEqual:(id)a3;
- (UIBarAppearance)copy;
- (UIBarAppearance)init;
- (UIBarAppearance)initWithBarAppearance:(UIBarAppearance *)barAppearance;
- (UIBarAppearance)initWithCoder:(NSCoder *)coder;
- (UIBarAppearance)initWithIdiom:(UIUserInterfaceIdiom)idiom;
- (UIColor)shadowColor;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)_copyFromAppearance:(id)a3;
- (void)_decodeFromCoder:(id)a3;
- (void)_describeInto:(id)a3;
- (void)_setOverrideUserInterfaceStyle:(int64_t)a3;
- (void)_setSelectedItemVibrancyEffect:(id)a3;
- (void)_setupDefaults;
- (void)_signalCategoryChanges:(uint64_t)a1;
- (void)configureWithDefaultBackground;
- (void)configureWithDefaultShadow;
- (void)configureWithOpaqueBackground;
- (void)configureWithTransparentBackground;
- (void)configureWithoutShadow;
- (void)encodeWithCoder:(id)a3;
- (void)setBackgroundColor:(UIColor *)backgroundColor;
- (void)setBackgroundEffect:(UIBlurEffect *)backgroundEffect;
- (void)setBackgroundEffects:(id)a3;
- (void)setBackgroundImage:(UIImage *)backgroundImage;
- (void)setBackgroundImageContentMode:(UIViewContentMode)backgroundImageContentMode;
- (void)setShadowColor:(UIColor *)shadowColor;
- (void)setShadowEffect:(id)a3;
- (void)setShadowImage:(UIImage *)shadowImage;
@end

@implementation UIBarAppearance

- (UIBarAppearance)init
{
  v3 = +[UIDevice currentDevice];
  v4 = -[UIBarAppearance initWithIdiom:](self, "initWithIdiom:", [v3 userInterfaceIdiom]);

  return v4;
}

- (void)_setupDefaults
{
  if (!self->_backgroundData)
  {
    v4 = [(UIBarAppearance *)self _defaultBackgroundData];
    backgroundData = self->_backgroundData;
    self->_backgroundData = v4;
  }
}

- (UIColor)shadowColor
{
  v3 = [(_UIBarBackgroundAppearanceData *)self->_backgroundData shadowColor];
  if (!v3)
  {
    v4 = [(_UIBarBackgroundAppearanceData *)self->_backgroundData shadowEffect];

    if (v4)
    {
      v3 = +[UIColor clearColor];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (UIBarAppearance)copy
{
  v3.receiver = self;
  v3.super_class = UIBarAppearance;
  return [(UIBarAppearance *)&v3 copy];
}

- (void)configureWithDefaultBackground
{
  v3 = [(UIBarAppearance *)self _defaultBackgroundData];
  backgroundData = self->_backgroundData;
  self->_backgroundData = v3;

  [(UIBarAppearance *)self _signalCategoryChanges:?];
}

- (void)configureWithOpaqueBackground
{
  v3 = +[_UIBarBackgroundAppearanceData opaqueBackgroundData];
  backgroundData = self->_backgroundData;
  self->_backgroundData = v3;

  [(UIBarAppearance *)self _signalCategoryChanges:?];
}

- (void)configureWithTransparentBackground
{
  v3 = +[_UIBarBackgroundAppearanceData transparentBackgroundData];
  backgroundData = self->_backgroundData;
  self->_backgroundData = v3;

  [(UIBarAppearance *)self _signalCategoryChanges:?];
}

- (UIBarAppearance)initWithIdiom:(UIUserInterfaceIdiom)idiom
{
  v8.receiver = self;
  v8.super_class = UIBarAppearance;
  v4 = [(UIBarAppearance *)&v8 init];
  v5 = v4;
  if (v4)
  {
    if (idiom >= UIUserInterfaceIdiomTV)
    {
      v6 = UIUserInterfaceIdiomPhone;
    }

    else
    {
      v6 = idiom;
    }

    v4->_idiom = v6;
    [(UIBarAppearance *)v4 _setupDefaults];
    [(UIBarAppearance *)v5 _completeInit];
  }

  return v5;
}

- (UIBarAppearance)initWithBarAppearance:(UIBarAppearance *)barAppearance
{
  v5 = barAppearance;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"UIBarAppearance.m" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"barAppearance != nil"}];
  }

  v10.receiver = self;
  v10.super_class = UIBarAppearance;
  v6 = [(UIBarAppearance *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_idiom = v5->_idiom;
    [(UIBarAppearance *)v6 _copyFromAppearance:v5];
    [(UIBarAppearance *)v7 _setupDefaults];
    [(UIBarAppearance *)v7 _completeInit];
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && [(UIBarAppearance *)v4 isMemberOfClass:objc_opt_class()]&& [(UIBarAppearance *)self _checkEqualTo:v5];
  }

  return v6;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = UIBarAppearance;
  v3 = [(UIBarAppearance *)&v6 description];
  v4 = [v3 mutableCopy];

  [(UIBarAppearance *)self _describeInto:v4];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithBarAppearance:self];
}

- (UIBarAppearance)initWithCoder:(NSCoder *)coder
{
  v4 = coder;
  v7.receiver = self;
  v7.super_class = UIBarAppearance;
  v5 = [(UIBarAppearance *)&v7 init];
  if (v5)
  {
    v5->_idiom = [(NSCoder *)v4 decodeIntegerForKey:@"Idiom"];
    [(UIBarAppearance *)v5 _decodeFromCoder:v4];
    [(UIBarAppearance *)v5 _setupDefaults];
    [(UIBarAppearance *)v5 _completeInit];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  idiom = self->_idiom;
  v5 = a3;
  [v5 encodeInteger:idiom forKey:@"Idiom"];
  [v5 encodeInteger:self->_overrideUserInterfaceStyle forKey:@"OverrideUIStyle"];
  [(_UIBarBackgroundAppearanceData *)self->_backgroundData encodeToCoder:v5 prefix:@"Background"];
}

- (void)_copyFromAppearance:(id)a3
{
  self->_overrideUserInterfaceStyle = *(a3 + 6);
  v4 = a3;
  v7 = [v4 _backgroundData];
  v5 = [v7 copy];
  backgroundData = self->_backgroundData;
  self->_backgroundData = v5;
}

- (void)_decodeFromCoder:(id)a3
{
  v4 = a3;
  v5 = [_UIBarBackgroundAppearanceData decodeFromCoder:v4 prefix:@"Background"];
  backgroundData = self->_backgroundData;
  self->_backgroundData = v5;

  v7 = [v4 decodeIntegerForKey:@"OverrideUIStyle"];
  self->_overrideUserInterfaceStyle = v7;
}

- (void)_describeInto:(id)a3
{
  v6 = a3;
  overrideUserInterfaceStyle = self->_overrideUserInterfaceStyle;
  if (overrideUserInterfaceStyle)
  {
    v5 = _NSStringFromUIUserInterfaceStyle(overrideUserInterfaceStyle);
    [v6 appendFormat:@"\n\tOverride User Interface Style: %@", v5];
  }

  [v6 appendFormat:@"\n\tBackground(%p):", self->_backgroundData];
  [(_UIBarBackgroundAppearanceData *)self->_backgroundData describeInto:v6];
}

- (void)_signalCategoryChanges:(uint64_t)a1
{
  if (a1)
  {
    if (*(a1 + 40) == 1)
    {
      *(a1 + 32) |= a2;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained((a1 + 8));
      [WeakRetained appearance:a1 categoriesChanged:a2];
    }
  }
}

- (void)_setSelectedItemVibrancyEffect:(id)a3
{
  v4 = a3;
  v5 = [(_UIBarBackgroundAppearanceData *)self->_backgroundData overrideTabBarVibrancyEffect];
  v10 = v4;
  v6 = v5;
  if (v6 == v10)
  {

    goto LABEL_9;
  }

  if (!v10 || !v6)
  {

    goto LABEL_8;
  }

  v7 = [v10 isEqual:v6];

  if ((v7 & 1) == 0)
  {
LABEL_8:
    v8 = [(_UIBarAppearanceData *)self->_backgroundData writableInstance];
    backgroundData = self->_backgroundData;
    self->_backgroundData = v8;

    [(_UIBarBackgroundAppearanceData *)v8 setOverrideTabBarVibrancyEffect:v10];
    [(UIBarAppearance *)self _signalCategoryChanges:?];
  }

LABEL_9:
}

- (void)setBackgroundEffect:(UIBlurEffect *)backgroundEffect
{
  v4 = backgroundEffect;
  v5 = [(_UIBarBackgroundAppearanceData *)self->_backgroundData backgroundEffect];
  v6 = v4;
  v10 = v6;
  if (v5 == v6)
  {

    goto LABEL_9;
  }

  if (!v6 || !v5)
  {

    goto LABEL_8;
  }

  v7 = [(UIBlurEffect *)v5 isEqual:v6];

  if (!v7)
  {
LABEL_8:
    v8 = [(_UIBarAppearanceData *)self->_backgroundData writableInstance];
    backgroundData = self->_backgroundData;
    self->_backgroundData = v8;

    [(_UIBarBackgroundAppearanceData *)v8 setBackgroundEffect:v10];
    [(UIBarAppearance *)self _signalCategoryChanges:?];
  }

LABEL_9:
}

- (void)setBackgroundEffects:(id)a3
{
  v4 = MEMORY[0x1E695E0F0];
  if (a3)
  {
    v4 = a3;
  }

  v5 = v4;
  v6 = [(_UIBarBackgroundAppearanceData *)self->_backgroundData backgroundEffects];
  v7 = v5;
  v11 = v7;
  if (v6 == v7)
  {

    goto LABEL_10;
  }

  if (!v6)
  {

    goto LABEL_9;
  }

  v8 = [v6 isEqual:v7];

  if ((v8 & 1) == 0)
  {
LABEL_9:
    v9 = [(_UIBarAppearanceData *)self->_backgroundData writableInstance];
    backgroundData = self->_backgroundData;
    self->_backgroundData = v9;

    [(_UIBarBackgroundAppearanceData *)v9 setBackgroundEffects:v11];
    [(UIBarAppearance *)self _signalCategoryChanges:?];
  }

LABEL_10:
}

- (void)setBackgroundColor:(UIColor *)backgroundColor
{
  v4 = backgroundColor;
  if (v4 && (+[UIColor clearColor], v5 = objc_claimAutoreleasedReturnValue(), v6 = [(UIColor *)v4 isEqual:v5], v5, !v6))
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(_UIBarBackgroundAppearanceData *)self->_backgroundData backgroundColor];
  v9 = v7;
  v13 = v9;
  if (v8 == v9)
  {

    goto LABEL_13;
  }

  if (!v9 || !v8)
  {

    goto LABEL_12;
  }

  v10 = [(UIColor *)v8 isEqual:v9];

  if (!v10)
  {
LABEL_12:
    v11 = [(_UIBarAppearanceData *)self->_backgroundData writableInstance];
    backgroundData = self->_backgroundData;
    self->_backgroundData = v11;

    [(_UIBarBackgroundAppearanceData *)v11 setBackgroundColor:v13];
    [(UIBarAppearance *)self _signalCategoryChanges:?];
  }

LABEL_13:
}

- (void)setBackgroundImage:(UIImage *)backgroundImage
{
  v4 = backgroundImage;
  v5 = v4;
  if (v4)
  {
    [(UIImage *)v4 size];
    v7 = 0;
    if (v8 != 0.0 && v6 != 0.0)
    {
      v7 = v5;
    }
  }

  else
  {
    v7 = 0;
  }

  v9 = [(_UIBarBackgroundAppearanceData *)self->_backgroundData backgroundImage];
  v10 = v7;
  v14 = v10;
  if (v9 == v10)
  {

    goto LABEL_14;
  }

  if (!v10 || !v9)
  {

    goto LABEL_13;
  }

  v11 = [(UIImage *)v9 isEqual:v10];

  if (!v11)
  {
LABEL_13:
    v12 = [(_UIBarAppearanceData *)self->_backgroundData writableInstance];
    backgroundData = self->_backgroundData;
    self->_backgroundData = v12;

    [(_UIBarBackgroundAppearanceData *)v12 setBackgroundImage:v14];
    [(UIBarAppearance *)self _signalCategoryChanges:?];
  }

LABEL_14:
}

- (void)setBackgroundImageContentMode:(UIViewContentMode)backgroundImageContentMode
{
  if (backgroundImageContentMode == UIViewContentModeRedraw)
  {
    v4 = UIViewContentModeScaleToFill;
  }

  else
  {
    v4 = backgroundImageContentMode;
  }

  if ([(_UIBarBackgroundAppearanceData *)self->_backgroundData backgroundImageContentMode]!= v4)
  {
    v5 = [(_UIBarAppearanceData *)self->_backgroundData writableInstance];
    backgroundData = self->_backgroundData;
    self->_backgroundData = v5;

    [(_UIBarBackgroundAppearanceData *)v5 setBackgroundImageContentMode:v4];

    [(UIBarAppearance *)self _signalCategoryChanges:?];
  }
}

- (void)configureWithDefaultShadow
{
  v3 = [(_UIBarAppearanceData *)self->_backgroundData writableInstance];
  backgroundData = self->_backgroundData;
  self->_backgroundData = v3;

  [(_UIBarBackgroundAppearanceData *)self->_backgroundData configureWithDefaultShadow];

  [(UIBarAppearance *)self _signalCategoryChanges:?];
}

- (void)configureWithoutShadow
{
  v3 = [(_UIBarAppearanceData *)self->_backgroundData writableInstance];
  backgroundData = self->_backgroundData;
  self->_backgroundData = v3;

  [(_UIBarBackgroundAppearanceData *)self->_backgroundData configureWithoutShadow];

  [(UIBarAppearance *)self _signalCategoryChanges:?];
}

- (void)setShadowImage:(UIImage *)shadowImage
{
  v4 = shadowImage;
  v5 = v4;
  if (v4)
  {
    [(UIImage *)v4 size];
    v7 = 0;
    if (v8 != 0.0 && v6 != 0.0)
    {
      v7 = v5;
    }
  }

  else
  {
    v7 = 0;
  }

  v9 = [(_UIBarBackgroundAppearanceData *)self->_backgroundData shadowImage];
  v10 = v7;
  v14 = v10;
  if (v9 == v10)
  {

    goto LABEL_14;
  }

  if (!v10 || !v9)
  {

    goto LABEL_13;
  }

  v11 = [(UIImage *)v9 isEqual:v10];

  if (!v11)
  {
LABEL_13:
    v12 = [(_UIBarAppearanceData *)self->_backgroundData writableInstance];
    backgroundData = self->_backgroundData;
    self->_backgroundData = v12;

    [(_UIBarBackgroundAppearanceData *)v12 setShadowImage:v14];
    [(UIBarAppearance *)self _signalCategoryChanges:?];
  }

LABEL_14:
}

- (void)setShadowColor:(UIColor *)shadowColor
{
  v4 = shadowColor;
  if (v4)
  {
    v5 = +[UIColor clearColor];
    v6 = [(UIColor *)v4 isEqual:v5];

    if (v6)
    {

      v4 = 0;
    }
  }

  v7 = [(_UIBarBackgroundAppearanceData *)self->_backgroundData shadowColor];
  v8 = v4;
  v17 = v8;
  if (v7 == v8)
  {

    goto LABEL_10;
  }

  if (v8 && v7)
  {
    v9 = [(UIColor *)v7 isEqual:v8];

    if (!v9)
    {
      goto LABEL_12;
    }

LABEL_10:
    v10 = 0;
    goto LABEL_13;
  }

LABEL_12:
  v11 = [(_UIBarAppearanceData *)self->_backgroundData writableInstance];
  backgroundData = self->_backgroundData;
  self->_backgroundData = v11;

  [(_UIBarBackgroundAppearanceData *)v11 setShadowColor:v17];
  v10 = 1;
LABEL_13:
  v13 = [(_UIBarBackgroundAppearanceData *)self->_backgroundData shadowEffect];
  v14 = v13;
  if (v13)
  {

    v15 = [(_UIBarAppearanceData *)self->_backgroundData writableInstance];
    v16 = self->_backgroundData;
    self->_backgroundData = v15;

    [(_UIBarBackgroundAppearanceData *)v15 setShadowEffect:0];
  }

  else if (!v10)
  {
    goto LABEL_17;
  }

  [(UIBarAppearance *)self _signalCategoryChanges:?];
LABEL_17:
}

- (void)setShadowEffect:(id)a3
{
  v4 = a3;
  v5 = [(_UIBarBackgroundAppearanceData *)self->_backgroundData shadowEffect];
  v6 = v4;
  v10 = v6;
  if (v5 == v6)
  {

    goto LABEL_9;
  }

  if (!v6 || !v5)
  {

    goto LABEL_8;
  }

  v7 = [v5 isEqual:v6];

  if ((v7 & 1) == 0)
  {
LABEL_8:
    v8 = [(_UIBarAppearanceData *)self->_backgroundData writableInstance];
    backgroundData = self->_backgroundData;
    self->_backgroundData = v8;

    [(_UIBarBackgroundAppearanceData *)v8 setShadowEffect:v10];
    [(UIBarAppearance *)self _signalCategoryChanges:?];
  }

LABEL_9:
}

- (void)_setOverrideUserInterfaceStyle:(int64_t)a3
{
  if (self->_overrideUserInterfaceStyle != a3)
  {
    self->_overrideUserInterfaceStyle = a3;
    [(UIBarAppearance *)self _signalCategoryChanges:?];
  }
}

@end