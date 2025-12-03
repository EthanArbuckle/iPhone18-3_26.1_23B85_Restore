@interface UIBarAppearance
- (BOOL)isEqual:(id)equal;
- (UIBarAppearance)copy;
- (UIBarAppearance)init;
- (UIBarAppearance)initWithBarAppearance:(UIBarAppearance *)barAppearance;
- (UIBarAppearance)initWithCoder:(NSCoder *)coder;
- (UIBarAppearance)initWithIdiom:(UIUserInterfaceIdiom)idiom;
- (UIColor)shadowColor;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_copyFromAppearance:(id)appearance;
- (void)_decodeFromCoder:(id)coder;
- (void)_describeInto:(id)into;
- (void)_setOverrideUserInterfaceStyle:(int64_t)style;
- (void)_setSelectedItemVibrancyEffect:(id)effect;
- (void)_setupDefaults;
- (void)_signalCategoryChanges:(uint64_t)changes;
- (void)configureWithDefaultBackground;
- (void)configureWithDefaultShadow;
- (void)configureWithOpaqueBackground;
- (void)configureWithTransparentBackground;
- (void)configureWithoutShadow;
- (void)encodeWithCoder:(id)coder;
- (void)setBackgroundColor:(UIColor *)backgroundColor;
- (void)setBackgroundEffect:(UIBlurEffect *)backgroundEffect;
- (void)setBackgroundEffects:(id)effects;
- (void)setBackgroundImage:(UIImage *)backgroundImage;
- (void)setBackgroundImageContentMode:(UIViewContentMode)backgroundImageContentMode;
- (void)setShadowColor:(UIColor *)shadowColor;
- (void)setShadowEffect:(id)effect;
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
    _defaultBackgroundData = [(UIBarAppearance *)self _defaultBackgroundData];
    backgroundData = self->_backgroundData;
    self->_backgroundData = _defaultBackgroundData;
  }
}

- (UIColor)shadowColor
{
  shadowColor = [(_UIBarBackgroundAppearanceData *)self->_backgroundData shadowColor];
  if (!shadowColor)
  {
    shadowEffect = [(_UIBarBackgroundAppearanceData *)self->_backgroundData shadowEffect];

    if (shadowEffect)
    {
      shadowColor = +[UIColor clearColor];
    }

    else
    {
      shadowColor = 0;
    }
  }

  return shadowColor;
}

- (UIBarAppearance)copy
{
  v3.receiver = self;
  v3.super_class = UIBarAppearance;
  return [(UIBarAppearance *)&v3 copy];
}

- (void)configureWithDefaultBackground
{
  _defaultBackgroundData = [(UIBarAppearance *)self _defaultBackgroundData];
  backgroundData = self->_backgroundData;
  self->_backgroundData = _defaultBackgroundData;

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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIBarAppearance.m" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"barAppearance != nil"}];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && [(UIBarAppearance *)equalCopy isMemberOfClass:objc_opt_class()]&& [(UIBarAppearance *)self _checkEqualTo:v5];
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

- (id)copyWithZone:(_NSZone *)zone
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

- (void)encodeWithCoder:(id)coder
{
  idiom = self->_idiom;
  coderCopy = coder;
  [coderCopy encodeInteger:idiom forKey:@"Idiom"];
  [coderCopy encodeInteger:self->_overrideUserInterfaceStyle forKey:@"OverrideUIStyle"];
  [(_UIBarBackgroundAppearanceData *)self->_backgroundData encodeToCoder:coderCopy prefix:@"Background"];
}

- (void)_copyFromAppearance:(id)appearance
{
  self->_overrideUserInterfaceStyle = *(appearance + 6);
  appearanceCopy = appearance;
  _backgroundData = [appearanceCopy _backgroundData];
  v5 = [_backgroundData copy];
  backgroundData = self->_backgroundData;
  self->_backgroundData = v5;
}

- (void)_decodeFromCoder:(id)coder
{
  coderCopy = coder;
  v5 = [_UIBarBackgroundAppearanceData decodeFromCoder:coderCopy prefix:@"Background"];
  backgroundData = self->_backgroundData;
  self->_backgroundData = v5;

  v7 = [coderCopy decodeIntegerForKey:@"OverrideUIStyle"];
  self->_overrideUserInterfaceStyle = v7;
}

- (void)_describeInto:(id)into
{
  intoCopy = into;
  overrideUserInterfaceStyle = self->_overrideUserInterfaceStyle;
  if (overrideUserInterfaceStyle)
  {
    v5 = _NSStringFromUIUserInterfaceStyle(overrideUserInterfaceStyle);
    [intoCopy appendFormat:@"\n\tOverride User Interface Style: %@", v5];
  }

  [intoCopy appendFormat:@"\n\tBackground(%p):", self->_backgroundData];
  [(_UIBarBackgroundAppearanceData *)self->_backgroundData describeInto:intoCopy];
}

- (void)_signalCategoryChanges:(uint64_t)changes
{
  if (changes)
  {
    if (*(changes + 40) == 1)
    {
      *(changes + 32) |= a2;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained((changes + 8));
      [WeakRetained appearance:changes categoriesChanged:a2];
    }
  }
}

- (void)_setSelectedItemVibrancyEffect:(id)effect
{
  effectCopy = effect;
  overrideTabBarVibrancyEffect = [(_UIBarBackgroundAppearanceData *)self->_backgroundData overrideTabBarVibrancyEffect];
  v10 = effectCopy;
  v6 = overrideTabBarVibrancyEffect;
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
    writableInstance = [(_UIBarAppearanceData *)self->_backgroundData writableInstance];
    backgroundData = self->_backgroundData;
    self->_backgroundData = writableInstance;

    [(_UIBarBackgroundAppearanceData *)writableInstance setOverrideTabBarVibrancyEffect:v10];
    [(UIBarAppearance *)self _signalCategoryChanges:?];
  }

LABEL_9:
}

- (void)setBackgroundEffect:(UIBlurEffect *)backgroundEffect
{
  v4 = backgroundEffect;
  backgroundEffect = [(_UIBarBackgroundAppearanceData *)self->_backgroundData backgroundEffect];
  v6 = v4;
  v10 = v6;
  if (backgroundEffect == v6)
  {

    goto LABEL_9;
  }

  if (!v6 || !backgroundEffect)
  {

    goto LABEL_8;
  }

  v7 = [(UIBlurEffect *)backgroundEffect isEqual:v6];

  if (!v7)
  {
LABEL_8:
    writableInstance = [(_UIBarAppearanceData *)self->_backgroundData writableInstance];
    backgroundData = self->_backgroundData;
    self->_backgroundData = writableInstance;

    [(_UIBarBackgroundAppearanceData *)writableInstance setBackgroundEffect:v10];
    [(UIBarAppearance *)self _signalCategoryChanges:?];
  }

LABEL_9:
}

- (void)setBackgroundEffects:(id)effects
{
  effectsCopy = MEMORY[0x1E695E0F0];
  if (effects)
  {
    effectsCopy = effects;
  }

  v5 = effectsCopy;
  backgroundEffects = [(_UIBarBackgroundAppearanceData *)self->_backgroundData backgroundEffects];
  v7 = v5;
  v11 = v7;
  if (backgroundEffects == v7)
  {

    goto LABEL_10;
  }

  if (!backgroundEffects)
  {

    goto LABEL_9;
  }

  v8 = [backgroundEffects isEqual:v7];

  if ((v8 & 1) == 0)
  {
LABEL_9:
    writableInstance = [(_UIBarAppearanceData *)self->_backgroundData writableInstance];
    backgroundData = self->_backgroundData;
    self->_backgroundData = writableInstance;

    [(_UIBarBackgroundAppearanceData *)writableInstance setBackgroundEffects:v11];
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

  backgroundColor = [(_UIBarBackgroundAppearanceData *)self->_backgroundData backgroundColor];
  v9 = v7;
  v13 = v9;
  if (backgroundColor == v9)
  {

    goto LABEL_13;
  }

  if (!v9 || !backgroundColor)
  {

    goto LABEL_12;
  }

  v10 = [(UIColor *)backgroundColor isEqual:v9];

  if (!v10)
  {
LABEL_12:
    writableInstance = [(_UIBarAppearanceData *)self->_backgroundData writableInstance];
    backgroundData = self->_backgroundData;
    self->_backgroundData = writableInstance;

    [(_UIBarBackgroundAppearanceData *)writableInstance setBackgroundColor:v13];
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

  backgroundImage = [(_UIBarBackgroundAppearanceData *)self->_backgroundData backgroundImage];
  v10 = v7;
  v14 = v10;
  if (backgroundImage == v10)
  {

    goto LABEL_14;
  }

  if (!v10 || !backgroundImage)
  {

    goto LABEL_13;
  }

  v11 = [(UIImage *)backgroundImage isEqual:v10];

  if (!v11)
  {
LABEL_13:
    writableInstance = [(_UIBarAppearanceData *)self->_backgroundData writableInstance];
    backgroundData = self->_backgroundData;
    self->_backgroundData = writableInstance;

    [(_UIBarBackgroundAppearanceData *)writableInstance setBackgroundImage:v14];
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
    writableInstance = [(_UIBarAppearanceData *)self->_backgroundData writableInstance];
    backgroundData = self->_backgroundData;
    self->_backgroundData = writableInstance;

    [(_UIBarBackgroundAppearanceData *)writableInstance setBackgroundImageContentMode:v4];

    [(UIBarAppearance *)self _signalCategoryChanges:?];
  }
}

- (void)configureWithDefaultShadow
{
  writableInstance = [(_UIBarAppearanceData *)self->_backgroundData writableInstance];
  backgroundData = self->_backgroundData;
  self->_backgroundData = writableInstance;

  [(_UIBarBackgroundAppearanceData *)self->_backgroundData configureWithDefaultShadow];

  [(UIBarAppearance *)self _signalCategoryChanges:?];
}

- (void)configureWithoutShadow
{
  writableInstance = [(_UIBarAppearanceData *)self->_backgroundData writableInstance];
  backgroundData = self->_backgroundData;
  self->_backgroundData = writableInstance;

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

  shadowImage = [(_UIBarBackgroundAppearanceData *)self->_backgroundData shadowImage];
  v10 = v7;
  v14 = v10;
  if (shadowImage == v10)
  {

    goto LABEL_14;
  }

  if (!v10 || !shadowImage)
  {

    goto LABEL_13;
  }

  v11 = [(UIImage *)shadowImage isEqual:v10];

  if (!v11)
  {
LABEL_13:
    writableInstance = [(_UIBarAppearanceData *)self->_backgroundData writableInstance];
    backgroundData = self->_backgroundData;
    self->_backgroundData = writableInstance;

    [(_UIBarBackgroundAppearanceData *)writableInstance setShadowImage:v14];
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

  shadowColor = [(_UIBarBackgroundAppearanceData *)self->_backgroundData shadowColor];
  v8 = v4;
  v17 = v8;
  if (shadowColor == v8)
  {

    goto LABEL_10;
  }

  if (v8 && shadowColor)
  {
    v9 = [(UIColor *)shadowColor isEqual:v8];

    if (!v9)
    {
      goto LABEL_12;
    }

LABEL_10:
    v10 = 0;
    goto LABEL_13;
  }

LABEL_12:
  writableInstance = [(_UIBarAppearanceData *)self->_backgroundData writableInstance];
  backgroundData = self->_backgroundData;
  self->_backgroundData = writableInstance;

  [(_UIBarBackgroundAppearanceData *)writableInstance setShadowColor:v17];
  v10 = 1;
LABEL_13:
  shadowEffect = [(_UIBarBackgroundAppearanceData *)self->_backgroundData shadowEffect];
  v14 = shadowEffect;
  if (shadowEffect)
  {

    writableInstance2 = [(_UIBarAppearanceData *)self->_backgroundData writableInstance];
    v16 = self->_backgroundData;
    self->_backgroundData = writableInstance2;

    [(_UIBarBackgroundAppearanceData *)writableInstance2 setShadowEffect:0];
  }

  else if (!v10)
  {
    goto LABEL_17;
  }

  [(UIBarAppearance *)self _signalCategoryChanges:?];
LABEL_17:
}

- (void)setShadowEffect:(id)effect
{
  effectCopy = effect;
  shadowEffect = [(_UIBarBackgroundAppearanceData *)self->_backgroundData shadowEffect];
  v6 = effectCopy;
  v10 = v6;
  if (shadowEffect == v6)
  {

    goto LABEL_9;
  }

  if (!v6 || !shadowEffect)
  {

    goto LABEL_8;
  }

  v7 = [shadowEffect isEqual:v6];

  if ((v7 & 1) == 0)
  {
LABEL_8:
    writableInstance = [(_UIBarAppearanceData *)self->_backgroundData writableInstance];
    backgroundData = self->_backgroundData;
    self->_backgroundData = writableInstance;

    [(_UIBarBackgroundAppearanceData *)writableInstance setShadowEffect:v10];
    [(UIBarAppearance *)self _signalCategoryChanges:?];
  }

LABEL_9:
}

- (void)_setOverrideUserInterfaceStyle:(int64_t)style
{
  if (self->_overrideUserInterfaceStyle != style)
  {
    self->_overrideUserInterfaceStyle = style;
    [(UIBarAppearance *)self _signalCategoryChanges:?];
  }
}

@end