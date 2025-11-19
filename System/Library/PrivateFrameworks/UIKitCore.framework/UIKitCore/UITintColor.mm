@interface UITintColor
- (BOOL)_isDeepColor;
- (BOOL)getHue:(double *)a3 saturation:(double *)a4 brightness:(double *)a5 alpha:(double *)a6;
- (BOOL)getRed:(double *)a3 green:(double *)a4 blue:(double *)a5 alpha:(double *)a6;
- (BOOL)getWhite:(double *)a3 alpha:(double *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isPatternColor;
- (CGColor)CGColor;
- (UITintColor)init;
- (double)alphaComponent;
- (id)_resolvedColorWithTraitCollection:(id)a3;
- (id)_resolvedMaterialWithTraitCollection:(id)a3;
- (id)colorSpaceName;
- (unint64_t)hash;
- (void)set;
- (void)setFill;
- (void)setStroke;
@end

@implementation UITintColor

- (UITintColor)init
{
  v5.receiver = self;
  v5.super_class = UITintColor;
  v2 = [(UITintColor *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(UIColor *)v2 _setSystemColorName:@"tintColor"];
  }

  return v3;
}

- (unint64_t)hash
{
  v2 = objc_opt_class();

  return [v2 hash];
}

- (double)alphaComponent
{
  v3 = +[UITraitCollection _currentTraitCollectionWithUnmarkedFallback];
  v4 = [(UITintColor *)self _resolvedColorWithTraitCollection:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4 == self;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v10.receiver = self;
    v10.super_class = UITintColor;
    [(UIDynamicColor *)&v10 alphaComponent];
  }

  else
  {
    [(UITintColor *)v4 alphaComponent];
  }

  v8 = v7;

  return v8;
}

- (void)set
{
  v3 = +[UITraitCollection _currentTraitCollectionWithUnmarkedFallback];
  v4 = [(UITintColor *)self _resolvedColorWithTraitCollection:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4 == self;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7.receiver = self;
    v7.super_class = UITintColor;
    [(UIDynamicColor *)&v7 set];
  }

  else
  {
    [(UITintColor *)v4 set];
  }
}

- (CGColor)CGColor
{
  v3 = +[UITraitCollection _currentTraitCollectionWithUnmarkedFallback];
  v4 = [(UITintColor *)self _resolvedColorWithTraitCollection:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4 == self;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v10.receiver = self;
    v10.super_class = UITintColor;
    v7 = [(UIDynamicColor *)&v10 CGColor];
  }

  else
  {
    v7 = [(UITintColor *)v4 CGColor];
  }

  v8 = v7;

  return v8;
}

- (void)setStroke
{
  v3 = +[UITraitCollection _currentTraitCollectionWithUnmarkedFallback];
  v4 = [(UITintColor *)self _resolvedColorWithTraitCollection:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4 == self;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7.receiver = self;
    v7.super_class = UITintColor;
    [(UIDynamicColor *)&v7 setStroke];
  }

  else
  {
    [(UITintColor *)v4 setStroke];
  }
}

- (id)_resolvedColorWithTraitCollection:(id)a3
{
  v5 = a3;
  if (pthread_main_np() == 1)
  {
    v6 = _UIGetCurrentFallbackView();
    if (v6)
    {
      v6[14] |= 4uLL;
    }
  }

  v7 = [v5 _tintColor];
  v8 = v7;
  if (!v7 || v7 == self)
  {
    if (v5)
    {
      v10 = [v5 userInterfaceIdiom];
    }

    else
    {
      v3 = +[UIDevice currentDevice];
      v10 = [v3 userInterfaceIdiom];
    }

    v9 = [UIView _defaultInteractionTintColorForIdiom:v10];

    if (!v5)
    {
    }
  }

  else
  {
    v9 = v7;
  }

  return v9;
}

- (id)_resolvedMaterialWithTraitCollection:(id)a3
{
  v4 = a3;
  v5 = [(UITintColor *)self _resolvedColorWithTraitCollection:v4];
  v6 = [v5 _resolvedMaterialWithTraitCollection:v4];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    isKindOfClass = 1;
  }

  else
  {
    v3 = a3;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (void)setFill
{
  v3 = +[UITraitCollection _currentTraitCollectionWithUnmarkedFallback];
  v4 = [(UITintColor *)self _resolvedColorWithTraitCollection:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4 == self;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7.receiver = self;
    v7.super_class = UITintColor;
    [(UIDynamicColor *)&v7 setFill];
  }

  else
  {
    [(UITintColor *)v4 setFill];
  }
}

- (BOOL)getWhite:(double *)a3 alpha:(double *)a4
{
  v7 = +[UITraitCollection _currentTraitCollectionWithUnmarkedFallback];
  v8 = [(UITintColor *)self _resolvedColorWithTraitCollection:v7];
  v9 = v8;
  if (v8)
  {
    v10 = v8 == self;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v14.receiver = self;
    v14.super_class = UITintColor;
    v11 = [(UIDynamicColor *)&v14 getWhite:a3 alpha:a4];
  }

  else
  {
    v11 = [(UITintColor *)v8 getWhite:a3 alpha:a4];
  }

  v12 = v11;

  return v12;
}

- (BOOL)getHue:(double *)a3 saturation:(double *)a4 brightness:(double *)a5 alpha:(double *)a6
{
  v11 = +[UITraitCollection _currentTraitCollectionWithUnmarkedFallback];
  v12 = [(UITintColor *)self _resolvedColorWithTraitCollection:v11];
  v13 = v12;
  if (v12)
  {
    v14 = v12 == self;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v18.receiver = self;
    v18.super_class = UITintColor;
    v15 = [(UIDynamicColor *)&v18 getHue:a3 saturation:a4 brightness:a5 alpha:a6];
  }

  else
  {
    v15 = [(UITintColor *)v12 getHue:a3 saturation:a4 brightness:a5 alpha:a6];
  }

  v16 = v15;

  return v16;
}

- (BOOL)getRed:(double *)a3 green:(double *)a4 blue:(double *)a5 alpha:(double *)a6
{
  v11 = +[UITraitCollection _currentTraitCollectionWithUnmarkedFallback];
  v12 = [(UITintColor *)self _resolvedColorWithTraitCollection:v11];
  v13 = v12;
  if (v12)
  {
    v14 = v12 == self;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v18.receiver = self;
    v18.super_class = UITintColor;
    v15 = [(UIDynamicColor *)&v18 getRed:a3 green:a4 blue:a5 alpha:a6];
  }

  else
  {
    v15 = [(UITintColor *)v12 getRed:a3 green:a4 blue:a5 alpha:a6];
  }

  v16 = v15;

  return v16;
}

- (BOOL)isPatternColor
{
  v3 = +[UITraitCollection _currentTraitCollectionWithUnmarkedFallback];
  v4 = [(UITintColor *)self _resolvedColorWithTraitCollection:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4 == self;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v10.receiver = self;
    v10.super_class = UITintColor;
    v7 = [(UIDynamicColor *)&v10 isPatternColor];
  }

  else
  {
    v7 = [(UITintColor *)v4 isPatternColor];
  }

  v8 = v7;

  return v8;
}

- (BOOL)_isDeepColor
{
  v3 = +[UITraitCollection _currentTraitCollectionWithUnmarkedFallback];
  v4 = [(UITintColor *)self _resolvedColorWithTraitCollection:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4 == self;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v10.receiver = self;
    v10.super_class = UITintColor;
    v7 = [(UIDynamicColor *)&v10 _isDeepColor];
  }

  else
  {
    v7 = [(UITintColor *)v4 _isDeepColor];
  }

  v8 = v7;

  return v8;
}

- (id)colorSpaceName
{
  v3 = +[UITraitCollection _currentTraitCollectionWithUnmarkedFallback];
  v4 = [(UITintColor *)self _resolvedColorWithTraitCollection:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4 == self;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v10.receiver = self;
    v10.super_class = UITintColor;
    v7 = [(UIDynamicColor *)&v10 colorSpaceName];
  }

  else
  {
    v7 = [(UITintColor *)v4 colorSpaceName];
  }

  v8 = v7;

  return v8;
}

@end