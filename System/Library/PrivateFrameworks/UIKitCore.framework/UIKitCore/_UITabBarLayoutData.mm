@interface _UITabBarLayoutData
+ (id)decodeFromCoder:(id)coder prefix:(id)prefix;
+ (id)standardLayoutData;
- (BOOL)checkEqualTo:(id)to;
- (id)replicate;
- (int64_t)hashInto:(int64_t)into;
- (int64_t)positioningForTraitCollection:(id)collection;
- (void)describeInto:(id)into;
- (void)encodeToCoder:(id)coder prefix:(id)prefix;
- (void)setSelectionIndicatorImage:(id)image;
- (void)setSelectionIndicatorTintColor:(id)color;
@end

@implementation _UITabBarLayoutData

+ (id)standardLayoutData
{
  v2 = _UITabBarLayoutStandard;
  if (!_UITabBarLayoutStandard)
  {
    v3 = objc_opt_new();
    v4 = _UITabBarLayoutStandard;
    _UITabBarLayoutStandard = v3;

    markReadOnly = [_UITabBarLayoutStandard markReadOnly];
    v2 = _UITabBarLayoutStandard;
  }

  return v2;
}

+ (id)decodeFromCoder:(id)coder prefix:(id)prefix
{
  coderCopy = coder;
  prefixCopy = prefix;
  v7 = objc_opt_class();
  if (prefixCopy)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"SelectionIndicatorTintColor"];
    v9 = [coderCopy decodeObjectOfClass:v7 forKey:v8];

    v10 = objc_opt_class();
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"SelectionIndicatorImage"];
    v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];

    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Positioning"];
    if ([coderCopy containsValueForKey:v13])
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Positioning"];
      v15 = [coderCopy decodeIntegerForKey:v14];
    }

    else
    {
      v15 = 0;
    }

    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Width"];
    v17 = 0.0;
    v18 = 0.0;
    if ([coderCopy containsValueForKey:v16])
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Width"];
      [coderCopy decodeDoubleForKey:v19];
      v18 = v20;
    }

    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Spacing"];
    if ([coderCopy containsValueForKey:v21])
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"Spacing"];
      [coderCopy decodeDoubleForKey:v22];
      v17 = v23;
    }
  }

  else
  {
    v9 = [coderCopy decodeObjectOfClass:v7 forKey:@"SelectionIndicatorTintColor"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SelectionIndicatorImage"];
    if ([coderCopy containsValueForKey:@"Positioning"])
    {
      v15 = [coderCopy decodeIntegerForKey:@"Positioning"];
    }

    else
    {
      v15 = 0;
    }

    v17 = 0.0;
    v18 = 0.0;
    if ([coderCopy containsValueForKey:@"Width"])
    {
      [coderCopy decodeDoubleForKey:@"Width"];
      v18 = v24;
    }

    if ([coderCopy containsValueForKey:@"Spacing"])
    {
      [coderCopy decodeDoubleForKey:@"Spacing"];
      v17 = v25;
    }
  }

  if (v9 || v12 || v15 || v18 != 0.0 || v17 != 0.0)
  {
    v26 = objc_opt_new();
    objc_storeStrong((v26 + 16), v9);
    objc_storeStrong((v26 + 24), v12);
    *(v26 + 32) = v15;
    *(v26 + 40) = v18;
    *(v26 + 48) = v17;
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (void)encodeToCoder:(id)coder prefix:(id)prefix
{
  coderCopy = coder;
  prefixCopy = prefix;
  v7 = prefixCopy;
  if (_UITabBarLayoutStandard == self)
  {
    goto LABEL_26;
  }

  selectionIndicatorTintColor = self->_selectionIndicatorTintColor;
  if (!selectionIndicatorTintColor)
  {
    goto LABEL_5;
  }

  if (prefixCopy)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", prefixCopy, @"SelectionIndicatorTintColor"];
    [coderCopy encodeObject:selectionIndicatorTintColor forKey:v9];

LABEL_5:
    selectionIndicatorImage = self->_selectionIndicatorImage;
    if (!selectionIndicatorImage)
    {
      goto LABEL_12;
    }

    if (v7)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"SelectionIndicatorImage"];
      [coderCopy encodeObject:selectionIndicatorImage forKey:v11];

      goto LABEL_12;
    }

    v13 = coderCopy;
    v12 = self->_selectionIndicatorImage;
    goto LABEL_11;
  }

  [coderCopy encodeObject:self->_selectionIndicatorTintColor forKey:@"SelectionIndicatorTintColor"];
  v12 = self->_selectionIndicatorImage;
  if (!v12)
  {
    goto LABEL_12;
  }

  v13 = coderCopy;
LABEL_11:
  [v13 encodeObject:v12 forKey:@"SelectionIndicatorImage"];
LABEL_12:
  itemPositioning = self->_itemPositioning;
  if (!itemPositioning)
  {
LABEL_15:
    itemWidth = self->_itemWidth;
    if (itemWidth == 0.0)
    {
      goto LABEL_22;
    }

    if (v7)
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"Width"];
      [coderCopy encodeDouble:v17 forKey:itemWidth];

      goto LABEL_22;
    }

    v19 = coderCopy;
    v18 = self->_itemWidth;
    goto LABEL_21;
  }

  if (v7)
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"Positioning"];
    [coderCopy encodeInteger:itemPositioning forKey:v15];

    goto LABEL_15;
  }

  [coderCopy encodeInteger:self->_itemPositioning forKey:@"Positioning"];
  v18 = self->_itemWidth;
  if (v18 == 0.0)
  {
    goto LABEL_22;
  }

  v19 = coderCopy;
LABEL_21:
  [v19 encodeDouble:@"Width" forKey:v18];
LABEL_22:
  itemSpacing = self->_itemSpacing;
  if (itemSpacing != 0.0)
  {
    if (v7)
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v7, @"Spacing"];
      [coderCopy encodeDouble:v21 forKey:itemSpacing];
    }

    else
    {
      [coderCopy encodeDouble:@"Spacing" forKey:self->_itemSpacing];
    }
  }

LABEL_26:
}

- (void)describeInto:(id)into
{
  intoCopy = into;
  v7.receiver = self;
  v7.super_class = _UITabBarLayoutData;
  [(_UIBarAppearanceData *)&v7 describeInto:intoCopy];
  [intoCopy appendString:@" positioning="];
  itemPositioning = self->_itemPositioning;
  switch(itemPositioning)
  {
    case 2:
      v6 = @"centered";
      goto LABEL_7;
    case 1:
      v6 = @"fill";
      goto LABEL_7;
    case 0:
      v6 = @"automatic";
LABEL_7:
      [intoCopy appendString:v6];
      goto LABEL_9;
  }

  [intoCopy appendFormat:@"unknown(%li)", self->_itemPositioning];
LABEL_9:
  if (self->_selectionIndicatorImage)
  {
    [intoCopy appendFormat:@" selectionIndicatorImage=%@", self->_selectionIndicatorImage];
  }

  if (self->_selectionIndicatorTintColor)
  {
    [intoCopy appendFormat:@" selectionIndicatorTintColor=%@", self->_selectionIndicatorTintColor];
  }

  if (self->_itemWidth > 0.0)
  {
    [intoCopy appendFormat:@" itemWidth=%f", *&self->_itemWidth];
  }

  if (self->_itemSpacing > 0.0)
  {
    [intoCopy appendFormat:@" itemSpacing=%f", *&self->_itemSpacing];
  }
}

- (int64_t)hashInto:(int64_t)into
{
  v10.receiver = self;
  v10.super_class = _UITabBarLayoutData;
  v4 = [(_UIBarAppearanceData *)&v10 hashInto:into];
  itemWidth = self->_itemWidth;
  itemSpacing = self->_itemSpacing;
  v7 = [(UIImage *)self->_selectionIndicatorImage hash];
  v8 = [(UIColor *)self->_selectionIndicatorTintColor hash];
  return v4 + itemWidth + itemSpacing + v7 + v8 + (v4 + itemWidth + itemSpacing + v7 + v8) * self->_itemPositioning;
}

- (BOOL)checkEqualTo:(id)to
{
  toCopy = to;
  v16.receiver = self;
  v16.super_class = _UITabBarLayoutData;
  if ([(_UIBarAppearanceData *)&v16 checkEqualTo:toCopy]&& self->_itemPositioning == *(toCopy + 4) && self->_itemWidth == toCopy[5] && self->_itemSpacing == toCopy[6])
  {
    v5 = *(toCopy + 3);
    v6 = self->_selectionIndicatorImage;
    v7 = v5;
    v8 = v7;
    if (v6 == v7)
    {

      goto LABEL_14;
    }

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
      v10 = 0;
LABEL_21:

      goto LABEL_19;
    }

    v11 = [(UIImage *)v6 isEqual:v7];

    if (v11)
    {
LABEL_14:
      selectionIndicatorTintColor = self->_selectionIndicatorTintColor;
      v13 = *(toCopy + 2);
      v6 = selectionIndicatorTintColor;
      v14 = v13;
      v8 = v14;
      if (v6 == v14)
      {
        v10 = 1;
      }

      else
      {
        v10 = 0;
        if (v6 && v14)
        {
          v10 = [(UIImage *)v6 isEqual:v14];
        }
      }

      goto LABEL_21;
    }
  }

  v10 = 0;
LABEL_19:

  return v10;
}

- (id)replicate
{
  v5.receiver = self;
  v5.super_class = _UITabBarLayoutData;
  replicate = [(_UIBarAppearanceData *)&v5 replicate];
  objc_storeStrong((replicate + 24), self->_selectionIndicatorImage);
  objc_storeStrong((replicate + 16), self->_selectionIndicatorTintColor);
  *(replicate + 32) = self->_itemPositioning;
  *(replicate + 40) = self->_itemWidth;
  *(replicate + 48) = self->_itemSpacing;

  return replicate;
}

- (void)setSelectionIndicatorTintColor:(id)color
{
  colorCopy = color;
  [(_UIBarAppearanceData *)self assertMutable:a2];
  v10 = colorCopy;
  if (v10 && (+[UIColor clearColor](UIColor, "clearColor"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v10 isEqual:v6], v6, (v7 & 1) == 0))
  {
    v8 = v10;
  }

  else
  {
    v8 = 0;
  }

  selectionIndicatorTintColor = self->_selectionIndicatorTintColor;
  self->_selectionIndicatorTintColor = v8;
}

- (void)setSelectionIndicatorImage:(id)image
{
  imageCopy = image;
  [(_UIBarAppearanceData *)self assertMutable:a2];
  v6 = imageCopy;
  v11 = v6;
  if (v6)
  {
    [v6 size];
    v8 = 0;
    if (v9 != 0.0 && v7 != 0.0)
    {
      v8 = v11;
    }
  }

  else
  {
    v8 = 0;
  }

  selectionIndicatorImage = self->_selectionIndicatorImage;
  self->_selectionIndicatorImage = v8;
}

- (int64_t)positioningForTraitCollection:(id)collection
{
  if (!self->_itemPositioning)
  {
    return 0;
  }

  if ([collection horizontalSizeClass] == 2)
  {
    return 2;
  }

  return 1;
}

@end