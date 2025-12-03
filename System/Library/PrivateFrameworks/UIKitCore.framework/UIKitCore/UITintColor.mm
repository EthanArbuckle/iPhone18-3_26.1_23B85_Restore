@interface UITintColor
- (BOOL)_isDeepColor;
- (BOOL)getHue:(double *)hue saturation:(double *)saturation brightness:(double *)brightness alpha:(double *)alpha;
- (BOOL)getRed:(double *)red green:(double *)green blue:(double *)blue alpha:(double *)alpha;
- (BOOL)getWhite:(double *)white alpha:(double *)alpha;
- (BOOL)isEqual:(id)equal;
- (BOOL)isPatternColor;
- (CGColor)CGColor;
- (UITintColor)init;
- (double)alphaComponent;
- (id)_resolvedColorWithTraitCollection:(id)collection;
- (id)_resolvedMaterialWithTraitCollection:(id)collection;
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
    cGColor = [(UIDynamicColor *)&v10 CGColor];
  }

  else
  {
    cGColor = [(UITintColor *)v4 CGColor];
  }

  v8 = cGColor;

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

- (id)_resolvedColorWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  if (pthread_main_np() == 1)
  {
    v6 = _UIGetCurrentFallbackView();
    if (v6)
    {
      v6[14] |= 4uLL;
    }
  }

  _tintColor = [collectionCopy _tintColor];
  v8 = _tintColor;
  if (!_tintColor || _tintColor == self)
  {
    if (collectionCopy)
    {
      userInterfaceIdiom = [collectionCopy userInterfaceIdiom];
    }

    else
    {
      v3 = +[UIDevice currentDevice];
      userInterfaceIdiom = [v3 userInterfaceIdiom];
    }

    v9 = [UIView _defaultInteractionTintColorForIdiom:userInterfaceIdiom];

    if (!collectionCopy)
    {
    }
  }

  else
  {
    v9 = _tintColor;
  }

  return v9;
}

- (id)_resolvedMaterialWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  v5 = [(UITintColor *)self _resolvedColorWithTraitCollection:collectionCopy];
  v6 = [v5 _resolvedMaterialWithTraitCollection:collectionCopy];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    isKindOfClass = 1;
  }

  else
  {
    equalCopy = equal;
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

- (BOOL)getWhite:(double *)white alpha:(double *)alpha
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
    v11 = [(UIDynamicColor *)&v14 getWhite:white alpha:alpha];
  }

  else
  {
    v11 = [(UITintColor *)v8 getWhite:white alpha:alpha];
  }

  v12 = v11;

  return v12;
}

- (BOOL)getHue:(double *)hue saturation:(double *)saturation brightness:(double *)brightness alpha:(double *)alpha
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
    v15 = [(UIDynamicColor *)&v18 getHue:hue saturation:saturation brightness:brightness alpha:alpha];
  }

  else
  {
    v15 = [(UITintColor *)v12 getHue:hue saturation:saturation brightness:brightness alpha:alpha];
  }

  v16 = v15;

  return v16;
}

- (BOOL)getRed:(double *)red green:(double *)green blue:(double *)blue alpha:(double *)alpha
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
    v15 = [(UIDynamicColor *)&v18 getRed:red green:green blue:blue alpha:alpha];
  }

  else
  {
    v15 = [(UITintColor *)v12 getRed:red green:green blue:blue alpha:alpha];
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
    isPatternColor = [(UIDynamicColor *)&v10 isPatternColor];
  }

  else
  {
    isPatternColor = [(UITintColor *)v4 isPatternColor];
  }

  v8 = isPatternColor;

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
    _isDeepColor = [(UIDynamicColor *)&v10 _isDeepColor];
  }

  else
  {
    _isDeepColor = [(UITintColor *)v4 _isDeepColor];
  }

  v8 = _isDeepColor;

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
    colorSpaceName = [(UIDynamicColor *)&v10 colorSpaceName];
  }

  else
  {
    colorSpaceName = [(UITintColor *)v4 colorSpaceName];
  }

  v8 = colorSpaceName;

  return v8;
}

@end