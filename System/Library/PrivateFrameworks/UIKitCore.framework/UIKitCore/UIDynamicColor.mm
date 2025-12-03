@interface UIDynamicColor
- (BOOL)_isDeepColor;
- (BOOL)getHue:(double *)hue saturation:(double *)saturation brightness:(double *)brightness alpha:(double *)alpha;
- (BOOL)getRed:(double *)red green:(double *)green blue:(double *)blue alpha:(double *)alpha;
- (BOOL)getWhite:(double *)white alpha:(double *)alpha;
- (BOOL)isPatternColor;
- (CGColor)CGColor;
- (UIDynamicColor)colorWithAlphaComponent:(double)component;
- (UIDynamicColor)colorWithProminence:(int64_t)prominence;
- (double)alphaComponent;
- (id)_highContrastDynamicColor;
- (id)_resolvedColorWithTraitCollection:(id)collection;
- (id)colorSpaceName;
- (id)resolvedColorWithTraitCollection:(id)collection;
- (int64_t)prominence;
- (void)set;
- (void)setFill;
- (void)setStroke;
@end

@implementation UIDynamicColor

- (CGColor)CGColor
{
  v3 = +[UITraitCollection _currentTraitCollectionWithUnmarkedFallback];
  v4 = [(UIDynamicColor *)self _resolvedColorWithTraitCollection:v3];
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
    v10.super_class = UIDynamicColor;
    cGColor = [(UIColor *)&v10 CGColor];
  }

  else
  {
    cGColor = [(UIDynamicColor *)v4 CGColor];
  }

  v8 = cGColor;

  return v8;
}

- (double)alphaComponent
{
  v3 = +[UITraitCollection _currentTraitCollectionWithUnmarkedFallback];
  v4 = [(UIDynamicColor *)self _resolvedColorWithTraitCollection:v3];
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
    v10.super_class = UIDynamicColor;
    [(UIColor *)&v10 alphaComponent];
  }

  else
  {
    [(UIDynamicColor *)v4 alphaComponent];
  }

  v8 = v7;

  return v8;
}

- (void)set
{
  v3 = +[UITraitCollection _currentTraitCollectionWithUnmarkedFallback];
  v4 = [(UIDynamicColor *)self _resolvedColorWithTraitCollection:v3];
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
    v7.super_class = UIDynamicColor;
    [(UIColor *)&v7 set];
  }

  else
  {
    [(UIDynamicColor *)v4 set];
  }
}

- (void)setFill
{
  v3 = +[UITraitCollection _currentTraitCollectionWithUnmarkedFallback];
  v4 = [(UIDynamicColor *)self _resolvedColorWithTraitCollection:v3];
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
    v7.super_class = UIDynamicColor;
    [(UIColor *)&v7 setFill];
  }

  else
  {
    [(UIDynamicColor *)v4 setFill];
  }
}

- (void)setStroke
{
  v3 = +[UITraitCollection _currentTraitCollectionWithUnmarkedFallback];
  v4 = [(UIDynamicColor *)self _resolvedColorWithTraitCollection:v3];
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
    v7.super_class = UIDynamicColor;
    [(UIColor *)&v7 setStroke];
  }

  else
  {
    [(UIDynamicColor *)v4 setStroke];
  }
}

- (id)resolvedColorWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  v5 = [(UIDynamicColor *)self _resolvedColorWithTraitCollection:collectionCopy];
  v6 = [v5 resolvedColorWithTraitCollection:collectionCopy];

  return v6;
}

- (id)_resolvedColorWithTraitCollection:(id)collection
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D920];
  v5 = NSStringFromSelector(a2);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v3 raise:v4 format:{@"Abstract method %@ called from class %@. Subclasses must override.", v5, v7}];

  return 0;
}

- (UIDynamicColor)colorWithAlphaComponent:(double)component
{
  v3 = [[UIDynamicModifiedColor alloc] initWithBaseColor:0xFFFFFFFFFFFFFFFFLL alphaComponent:component contrast:?];

  return v3;
}

- (id)_highContrastDynamicColor
{
  v2 = [[UIDynamicModifiedColor alloc] initWithBaseColor:1 alphaComponent:1.79769313e308 contrast:?];

  return v2;
}

- (BOOL)getWhite:(double *)white alpha:(double *)alpha
{
  v7 = +[UITraitCollection _currentTraitCollectionWithUnmarkedFallback];
  v8 = [(UIDynamicColor *)self _resolvedColorWithTraitCollection:v7];
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
    v14.super_class = UIDynamicColor;
    v11 = [(UIColor *)&v14 getWhite:white alpha:alpha];
  }

  else
  {
    v11 = [(UIDynamicColor *)v8 getWhite:white alpha:alpha];
  }

  v12 = v11;

  return v12;
}

- (BOOL)getHue:(double *)hue saturation:(double *)saturation brightness:(double *)brightness alpha:(double *)alpha
{
  v11 = +[UITraitCollection _currentTraitCollectionWithUnmarkedFallback];
  v12 = [(UIDynamicColor *)self _resolvedColorWithTraitCollection:v11];
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
    v18.super_class = UIDynamicColor;
    v15 = [(UIColor *)&v18 getHue:hue saturation:saturation brightness:brightness alpha:alpha];
  }

  else
  {
    v15 = [(UIDynamicColor *)v12 getHue:hue saturation:saturation brightness:brightness alpha:alpha];
  }

  v16 = v15;

  return v16;
}

- (BOOL)getRed:(double *)red green:(double *)green blue:(double *)blue alpha:(double *)alpha
{
  v11 = +[UITraitCollection _currentTraitCollectionWithUnmarkedFallback];
  v12 = [(UIDynamicColor *)self _resolvedColorWithTraitCollection:v11];
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
    v18.super_class = UIDynamicColor;
    v15 = [(UIColor *)&v18 getRed:red green:green blue:blue alpha:alpha];
  }

  else
  {
    v15 = [(UIDynamicColor *)v12 getRed:red green:green blue:blue alpha:alpha];
  }

  v16 = v15;

  return v16;
}

- (BOOL)isPatternColor
{
  v3 = +[UITraitCollection _currentTraitCollectionWithUnmarkedFallback];
  v4 = [(UIDynamicColor *)self _resolvedColorWithTraitCollection:v3];
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
    v10.super_class = UIDynamicColor;
    isPatternColor = [(UIColor *)&v10 isPatternColor];
  }

  else
  {
    isPatternColor = [(UIDynamicColor *)v4 isPatternColor];
  }

  v8 = isPatternColor;

  return v8;
}

- (BOOL)_isDeepColor
{
  v3 = +[UITraitCollection _currentTraitCollectionWithUnmarkedFallback];
  v4 = [(UIDynamicColor *)self _resolvedColorWithTraitCollection:v3];
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
    v10.super_class = UIDynamicColor;
    _isDeepColor = [(UIColor *)&v10 _isDeepColor];
  }

  else
  {
    _isDeepColor = [(UIDynamicColor *)v4 _isDeepColor];
  }

  v8 = _isDeepColor;

  return v8;
}

- (id)colorSpaceName
{
  v3 = +[UITraitCollection _currentTraitCollectionWithUnmarkedFallback];
  v4 = [(UIDynamicColor *)self _resolvedColorWithTraitCollection:v3];
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
    v10.super_class = UIDynamicColor;
    colorSpaceName = [(UIColor *)&v10 colorSpaceName];
  }

  else
  {
    colorSpaceName = [(UIDynamicColor *)v4 colorSpaceName];
  }

  v8 = colorSpaceName;

  return v8;
}

- (UIDynamicColor)colorWithProminence:(int64_t)prominence
{
  _systemColorName = [(UIColor *)self _systemColorName];
  if (([_systemColorName isEqualToString:@"labelColor"] & 1) != 0 || (objc_msgSend(_systemColorName, "isEqualToString:", @"secondaryLabelColor") & 1) != 0 || (objc_msgSend(_systemColorName, "isEqualToString:", @"tertiaryLabelColor") & 1) != 0 || objc_msgSend(_systemColorName, "isEqualToString:", @"quaternaryLabelColor"))
  {
    if (prominence > 1)
    {
      if (prominence == 2)
      {
        v6 = +[UIColor tertiaryLabelColor];
        goto LABEL_22;
      }

      if (prominence == 3)
      {
        v6 = +[UIColor quaternaryLabelColor];
        goto LABEL_22;
      }
    }

    else
    {
      if (!prominence)
      {
        v6 = +[UIColor labelColor];
        goto LABEL_22;
      }

      if (prominence == 1)
      {
        v6 = +[UIColor secondaryLabelColor];
        goto LABEL_22;
      }
    }
  }

  if (([_systemColorName isEqualToString:@"systemFillColor"] & 1) != 0 || (objc_msgSend(_systemColorName, "isEqualToString:", @"secondarySystemFillColor") & 1) != 0 || (objc_msgSend(_systemColorName, "isEqualToString:", @"tertiarySystemFillColor") & 1) != 0 || objc_msgSend(_systemColorName, "isEqualToString:", @"quaternarySystemFillColor"))
  {
    if (prominence > 1)
    {
      if (prominence == 2)
      {
        v6 = +[UIColor tertiarySystemFillColor];
        goto LABEL_22;
      }

      if (prominence == 3)
      {
        v6 = +[UIColor quaternarySystemFillColor];
        goto LABEL_22;
      }
    }

    else
    {
      if (!prominence)
      {
        v6 = +[UIColor systemFillColor];
        goto LABEL_22;
      }

      if (prominence == 1)
      {
        v6 = +[UIColor secondarySystemFillColor];
        goto LABEL_22;
      }
    }
  }

  if (([_systemColorName isEqualToString:@"systemBackgroundColor"] & 1) != 0 || (objc_msgSend(_systemColorName, "isEqualToString:", @"secondarySystemBackgroundColor") & 1) != 0 || objc_msgSend(_systemColorName, "isEqualToString:", @"tertiarySystemBackgroundColor"))
  {
    if (prominence > 1)
    {
      if (prominence == 2 || prominence == 3)
      {
        v6 = +[UIColor tertiarySystemBackgroundColor];
        goto LABEL_22;
      }
    }

    else
    {
      if (!prominence)
      {
        v6 = +[UIColor systemBackgroundColor];
        goto LABEL_22;
      }

      if (prominence == 1)
      {
        v6 = +[UIColor secondarySystemBackgroundColor];
        goto LABEL_22;
      }
    }
  }

  if (([_systemColorName isEqualToString:@"systemGroupedBackgroundColor"] & 1) != 0 || (objc_msgSend(_systemColorName, "isEqualToString:", @"secondarySystemGroupedBackgroundColor") & 1) != 0 || objc_msgSend(_systemColorName, "isEqualToString:", @"tertiarySystemGroupedBackgroundColor"))
  {
    if (prominence > 1)
    {
      if (prominence == 2 || prominence == 3)
      {
        v6 = +[UIColor tertiarySystemGroupedBackgroundColor];
        goto LABEL_22;
      }
    }

    else
    {
      if (!prominence)
      {
        v6 = +[UIColor systemGroupedBackgroundColor];
        goto LABEL_22;
      }

      if (prominence == 1)
      {
        v6 = +[UIColor secondarySystemGroupedBackgroundColor];
        goto LABEL_22;
      }
    }
  }

  if (([_systemColorName isEqualToString:@"systemGrayColor"] & 1) == 0 && (objc_msgSend(_systemColorName, "isEqualToString:", @"systemGray2Color") & 1) == 0 && (objc_msgSend(_systemColorName, "isEqualToString:", @"systemGray3Color") & 1) == 0 && (objc_msgSend(_systemColorName, "isEqualToString:", @"systemGray4Color") & 1) == 0 && (objc_msgSend(_systemColorName, "isEqualToString:", @"systemGray5Color") & 1) == 0 && !objc_msgSend(_systemColorName, "isEqualToString:", @"systemGray6Color"))
  {
    goto LABEL_65;
  }

  if (prominence > 1)
  {
    if (prominence != 2)
    {
      if (prominence == 3)
      {
        v6 = +[UIColor systemGray4Color];
        goto LABEL_22;
      }

      goto LABEL_65;
    }

    v6 = +[UIColor systemGray3Color];
  }

  else
  {
    if (prominence)
    {
      if (prominence == 1)
      {
        v6 = +[UIColor systemGray2Color];
        goto LABEL_22;
      }

LABEL_65:
      v6 = [[UIDynamicModifiedColor alloc] initWithBaseColor:0xFFFFFFFFFFFFFFFFLL alphaComponent:prominence contrast:1.79769313e308 prominence:?];
      goto LABEL_22;
    }

    v6 = +[UIColor systemGrayColor];
  }

LABEL_22:
  v7 = v6;

  return v7;
}

- (int64_t)prominence
{
  _systemColorName = [(UIColor *)self _systemColorName];
  if (([_systemColorName hasPrefix:@"secondary"] & 1) == 0)
  {
    if ([_systemColorName hasPrefix:@"tertiary"])
    {
      goto LABEL_4;
    }

    if (([_systemColorName hasPrefix:@"quaternary"] & 1) == 0)
    {
      if ([_systemColorName isEqualToString:@"systemGrayColor"])
      {
        prominence = 0;
        goto LABEL_9;
      }

      if ([_systemColorName isEqualToString:@"systemGray2Color"])
      {
        goto LABEL_2;
      }

      if ([_systemColorName isEqualToString:@"systemGray3Color"])
      {
LABEL_4:
        prominence = 2;
        goto LABEL_9;
      }

      if (([_systemColorName isEqualToString:@"systemGray4Color"] & 1) == 0 && (objc_msgSend(_systemColorName, "isEqualToString:", @"systemGray5Color") & 1) == 0 && (objc_msgSend(_systemColorName, "isEqualToString:", @"systemGray6Color") & 1) == 0)
      {
        v6.receiver = self;
        v6.super_class = UIDynamicColor;
        prominence = [(UIColor *)&v6 prominence];
        goto LABEL_9;
      }
    }

    prominence = 3;
    goto LABEL_9;
  }

LABEL_2:
  prominence = 1;
LABEL_9:

  return prominence;
}

id ___UIDynamicColor_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 userInterfaceStyle];
  v4 = 40;
  if (v3 == 2)
  {
    v4 = 32;
  }

  v5 = *(a1 + v4);

  return v5;
}

@end