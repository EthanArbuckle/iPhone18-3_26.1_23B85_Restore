@interface UIDynamicColor
- (BOOL)_isDeepColor;
- (BOOL)getHue:(double *)a3 saturation:(double *)a4 brightness:(double *)a5 alpha:(double *)a6;
- (BOOL)getRed:(double *)a3 green:(double *)a4 blue:(double *)a5 alpha:(double *)a6;
- (BOOL)getWhite:(double *)a3 alpha:(double *)a4;
- (BOOL)isPatternColor;
- (CGColor)CGColor;
- (UIDynamicColor)colorWithAlphaComponent:(double)a3;
- (UIDynamicColor)colorWithProminence:(int64_t)a3;
- (double)alphaComponent;
- (id)_highContrastDynamicColor;
- (id)_resolvedColorWithTraitCollection:(id)a3;
- (id)colorSpaceName;
- (id)resolvedColorWithTraitCollection:(id)a3;
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
    v7 = [(UIColor *)&v10 CGColor];
  }

  else
  {
    v7 = [(UIDynamicColor *)v4 CGColor];
  }

  v8 = v7;

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

- (id)resolvedColorWithTraitCollection:(id)a3
{
  v4 = a3;
  v5 = [(UIDynamicColor *)self _resolvedColorWithTraitCollection:v4];
  v6 = [v5 resolvedColorWithTraitCollection:v4];

  return v6;
}

- (id)_resolvedColorWithTraitCollection:(id)a3
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D920];
  v5 = NSStringFromSelector(a2);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v3 raise:v4 format:{@"Abstract method %@ called from class %@. Subclasses must override.", v5, v7}];

  return 0;
}

- (UIDynamicColor)colorWithAlphaComponent:(double)a3
{
  v3 = [[UIDynamicModifiedColor alloc] initWithBaseColor:0xFFFFFFFFFFFFFFFFLL alphaComponent:a3 contrast:?];

  return v3;
}

- (id)_highContrastDynamicColor
{
  v2 = [[UIDynamicModifiedColor alloc] initWithBaseColor:1 alphaComponent:1.79769313e308 contrast:?];

  return v2;
}

- (BOOL)getWhite:(double *)a3 alpha:(double *)a4
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
    v11 = [(UIColor *)&v14 getWhite:a3 alpha:a4];
  }

  else
  {
    v11 = [(UIDynamicColor *)v8 getWhite:a3 alpha:a4];
  }

  v12 = v11;

  return v12;
}

- (BOOL)getHue:(double *)a3 saturation:(double *)a4 brightness:(double *)a5 alpha:(double *)a6
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
    v15 = [(UIColor *)&v18 getHue:a3 saturation:a4 brightness:a5 alpha:a6];
  }

  else
  {
    v15 = [(UIDynamicColor *)v12 getHue:a3 saturation:a4 brightness:a5 alpha:a6];
  }

  v16 = v15;

  return v16;
}

- (BOOL)getRed:(double *)a3 green:(double *)a4 blue:(double *)a5 alpha:(double *)a6
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
    v15 = [(UIColor *)&v18 getRed:a3 green:a4 blue:a5 alpha:a6];
  }

  else
  {
    v15 = [(UIDynamicColor *)v12 getRed:a3 green:a4 blue:a5 alpha:a6];
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
    v7 = [(UIColor *)&v10 isPatternColor];
  }

  else
  {
    v7 = [(UIDynamicColor *)v4 isPatternColor];
  }

  v8 = v7;

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
    v7 = [(UIColor *)&v10 _isDeepColor];
  }

  else
  {
    v7 = [(UIDynamicColor *)v4 _isDeepColor];
  }

  v8 = v7;

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
    v7 = [(UIColor *)&v10 colorSpaceName];
  }

  else
  {
    v7 = [(UIDynamicColor *)v4 colorSpaceName];
  }

  v8 = v7;

  return v8;
}

- (UIDynamicColor)colorWithProminence:(int64_t)a3
{
  v5 = [(UIColor *)self _systemColorName];
  if (([v5 isEqualToString:@"labelColor"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"secondaryLabelColor") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"tertiaryLabelColor") & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"quaternaryLabelColor"))
  {
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        v6 = +[UIColor tertiaryLabelColor];
        goto LABEL_22;
      }

      if (a3 == 3)
      {
        v6 = +[UIColor quaternaryLabelColor];
        goto LABEL_22;
      }
    }

    else
    {
      if (!a3)
      {
        v6 = +[UIColor labelColor];
        goto LABEL_22;
      }

      if (a3 == 1)
      {
        v6 = +[UIColor secondaryLabelColor];
        goto LABEL_22;
      }
    }
  }

  if (([v5 isEqualToString:@"systemFillColor"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"secondarySystemFillColor") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"tertiarySystemFillColor") & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"quaternarySystemFillColor"))
  {
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        v6 = +[UIColor tertiarySystemFillColor];
        goto LABEL_22;
      }

      if (a3 == 3)
      {
        v6 = +[UIColor quaternarySystemFillColor];
        goto LABEL_22;
      }
    }

    else
    {
      if (!a3)
      {
        v6 = +[UIColor systemFillColor];
        goto LABEL_22;
      }

      if (a3 == 1)
      {
        v6 = +[UIColor secondarySystemFillColor];
        goto LABEL_22;
      }
    }
  }

  if (([v5 isEqualToString:@"systemBackgroundColor"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"secondarySystemBackgroundColor") & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"tertiarySystemBackgroundColor"))
  {
    if (a3 > 1)
    {
      if (a3 == 2 || a3 == 3)
      {
        v6 = +[UIColor tertiarySystemBackgroundColor];
        goto LABEL_22;
      }
    }

    else
    {
      if (!a3)
      {
        v6 = +[UIColor systemBackgroundColor];
        goto LABEL_22;
      }

      if (a3 == 1)
      {
        v6 = +[UIColor secondarySystemBackgroundColor];
        goto LABEL_22;
      }
    }
  }

  if (([v5 isEqualToString:@"systemGroupedBackgroundColor"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"secondarySystemGroupedBackgroundColor") & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"tertiarySystemGroupedBackgroundColor"))
  {
    if (a3 > 1)
    {
      if (a3 == 2 || a3 == 3)
      {
        v6 = +[UIColor tertiarySystemGroupedBackgroundColor];
        goto LABEL_22;
      }
    }

    else
    {
      if (!a3)
      {
        v6 = +[UIColor systemGroupedBackgroundColor];
        goto LABEL_22;
      }

      if (a3 == 1)
      {
        v6 = +[UIColor secondarySystemGroupedBackgroundColor];
        goto LABEL_22;
      }
    }
  }

  if (([v5 isEqualToString:@"systemGrayColor"] & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"systemGray2Color") & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"systemGray3Color") & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"systemGray4Color") & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"systemGray5Color") & 1) == 0 && !objc_msgSend(v5, "isEqualToString:", @"systemGray6Color"))
  {
    goto LABEL_65;
  }

  if (a3 > 1)
  {
    if (a3 != 2)
    {
      if (a3 == 3)
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
    if (a3)
    {
      if (a3 == 1)
      {
        v6 = +[UIColor systemGray2Color];
        goto LABEL_22;
      }

LABEL_65:
      v6 = [[UIDynamicModifiedColor alloc] initWithBaseColor:0xFFFFFFFFFFFFFFFFLL alphaComponent:a3 contrast:1.79769313e308 prominence:?];
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
  v3 = [(UIColor *)self _systemColorName];
  if (([v3 hasPrefix:@"secondary"] & 1) == 0)
  {
    if ([v3 hasPrefix:@"tertiary"])
    {
      goto LABEL_4;
    }

    if (([v3 hasPrefix:@"quaternary"] & 1) == 0)
    {
      if ([v3 isEqualToString:@"systemGrayColor"])
      {
        v4 = 0;
        goto LABEL_9;
      }

      if ([v3 isEqualToString:@"systemGray2Color"])
      {
        goto LABEL_2;
      }

      if ([v3 isEqualToString:@"systemGray3Color"])
      {
LABEL_4:
        v4 = 2;
        goto LABEL_9;
      }

      if (([v3 isEqualToString:@"systemGray4Color"] & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", @"systemGray5Color") & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", @"systemGray6Color") & 1) == 0)
      {
        v6.receiver = self;
        v6.super_class = UIDynamicColor;
        v4 = [(UIColor *)&v6 prominence];
        goto LABEL_9;
      }
    }

    v4 = 3;
    goto LABEL_9;
  }

LABEL_2:
  v4 = 1;
LABEL_9:

  return v4;
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