@interface UIKBGradient
+ (id)gradientWith3Colors:(id)a3 middleLocation:(double)a4;
+ (id)gradientWithColors:(id)a3 middleLocations:(id)a4;
+ (id)gradientWithFlatColor:(id)a3;
+ (id)gradientWithName:(id)a3;
+ (id)gradientWithStartColor:(id)a3 endColor:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)usesRGBColors;
- (CGGradient)CGGradient;
- (NSString)flatColorName;
- (UIKBGradient)initWith3Colors:(id)a3 middleLocation:(double)a4;
- (UIKBGradient)initWithColors:(id)a3 middleLocations:(id)a4;
- (UIKBGradient)initWithFlatColor:(id)a3;
- (UIKBGradient)initWithName:(id)a3;
- (UIKBGradient)initWithStartColor:(id)a3 endColor:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation UIKBGradient

- (BOOL)usesRGBColors
{
  if (!self->_didQueryRGBColors)
  {
    CGGradientRelease([(UIKBGradient *)self CGGradient]);
  }

  return self->_usesRGBColors;
}

- (NSString)flatColorName
{
  if (self->_gradientName)
  {
    startColorName = 0;

    return startColorName;
  }

  flatColorName = self->_flatColorName;
  if (flatColorName)
  {
    goto LABEL_6;
  }

  startColorName = self->_startColorName;
  if (startColorName)
  {
    if (self->_endColorName && [(NSString *)startColorName isEqualToString:?])
    {
      flatColorName = self->_startColorName;
LABEL_6:
      startColorName = flatColorName;
      goto LABEL_7;
    }

    startColorName = 0;
  }

LABEL_7:

  return startColorName;
}

- (CGGradient)CGGradient
{
  v32 = *MEMORY[0x1E69E9840];
  self->_didQueryRGBColors = 1;
  gradientName = self->_gradientName;
  if (gradientName)
  {
    self->_usesRGBColors = 1;
    v4 = UIKBGetNamedLinearGradient(gradientName);
    CGGradientRetain(v4);
    return v4;
  }

  flatColorName = self->_flatColorName;
  if (flatColorName)
  {
    CopyWithAlpha = UIKBGetNamedColor(flatColorName);
    self->_usesRGBColors = UIKBColorUsesRGB(CopyWithAlpha);
    opacity = self->_opacity;
    if (opacity == 1.0)
    {
      CGColorRetain(CopyWithAlpha);
    }

    else
    {
      CopyWithAlpha = CGColorCreateCopyWithAlpha(CopyWithAlpha, opacity);
    }

    v4 = UIKBCreateTwoColorLinearGradient(CopyWithAlpha, CopyWithAlpha);
    CGColorRelease(CopyWithAlpha);
    return v4;
  }

  colors = self->_colors;
  if (colors)
  {
    v9 = [(NSArray *)colors count];
    if (v9 == [(NSArray *)self->_middleLocations count]+ 2)
    {
      v10 = malloc_type_calloc(8uLL, [(NSArray *)self->_middleLocations count]+ 2, 0xAB9301E9uLL);
      *v10 = 0.0;
      if ([(NSArray *)self->_middleLocations count])
      {
        v11 = 0;
        do
        {
          v12 = [(NSArray *)self->_middleLocations objectAtIndex:v11];
          [v12 doubleValue];
          v10[v11 + 1] = v13;

          ++v11;
        }

        while (v11 < [(NSArray *)self->_middleLocations count]);
      }

      v10[[(NSArray *)self->_middleLocations count]+ 1] = 1.0;
    }

    else
    {
      v10 = 0;
    }

    v18 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v19 = self->_colors;
    v20 = [(NSArray *)v19 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v28;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v28 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = UIKBGetNamedColor(*(*(&v27 + 1) + 8 * i));
          v25 = v24;
          if (!self->_usesRGBColors)
          {
            self->_usesRGBColors = UIKBColorUsesRGB(v24);
          }

          [v18 addObject:{v25, v27}];
        }

        v21 = [(NSArray *)v19 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v21);
    }

    if (self->_usesRGBColors)
    {
      DeviceRGB = UIKBColorSpaceDeviceRGB_colorspace;
      if (!UIKBColorSpaceDeviceRGB_colorspace)
      {
        DeviceRGB = CGColorSpaceCreateDeviceRGB();
        UIKBColorSpaceDeviceRGB_colorspace = DeviceRGB;
      }
    }

    else
    {
      DeviceRGB = UIKBColorSpaceDeviceGray_colorspace;
      if (!UIKBColorSpaceDeviceGray_colorspace)
      {
        DeviceRGB = CGColorSpaceCreateDeviceGray();
        UIKBColorSpaceDeviceGray_colorspace = DeviceRGB;
      }
    }

    v4 = CGGradientCreateWithColors(DeviceRGB, v18, v10);
    if (v10)
    {
      free(v10);
    }

    return v4;
  }

  v14 = UIKBGetNamedColor(self->_startColorName);
  v15 = UIKBGetNamedColor(self->_endColorName);
  if (!self->_usesRGBColors)
  {
    v16 = UIKBColorUsesRGB(v14);
    self->_usesRGBColors = v16;
    if (!v16)
    {
      self->_usesRGBColors = UIKBColorUsesRGB(v15);
    }
  }

  return UIKBCreateTwoColorLinearGradient(v14, v15);
}

+ (id)gradientWithName:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithName:v4];

  return v5;
}

+ (id)gradientWithFlatColor:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithFlatColor:v4];

  return v5;
}

+ (id)gradientWithStartColor:(id)a3 endColor:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithStartColor:v7 endColor:v6];

  return v8;
}

+ (id)gradientWith3Colors:(id)a3 middleLocation:(double)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWith3Colors:v6 middleLocation:a4];

  return v7;
}

+ (id)gradientWithColors:(id)a3 middleLocations:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithColors:v7 middleLocations:v6];

  return v8;
}

- (UIKBGradient)initWithName:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = UIKBGradient;
  v6 = [(UIKBGradient *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_gradientName, a3);
    v7->_opacity = 1.0;
  }

  return v7;
}

- (UIKBGradient)initWithFlatColor:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = UIKBGradient;
  v6 = [(UIKBGradient *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_flatColorName, a3);
    v7->_opacity = 1.0;
  }

  return v7;
}

- (UIKBGradient)initWithStartColor:(id)a3 endColor:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = UIKBGradient;
  v9 = [(UIKBGradient *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_startColorName, a3);
    objc_storeStrong(&v10->_endColorName, a4);
    v10->_opacity = 1.0;
  }

  return v10;
}

- (UIKBGradient)initWith3Colors:(id)a3 middleLocation:(double)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v14.receiver = self;
  v14.super_class = UIKBGradient;
  v8 = [(UIKBGradient *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_colors, a3);
    v10 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
    v15[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    middleLocations = v9->_middleLocations;
    v9->_middleLocations = v11;

    v9->_opacity = 1.0;
  }

  return v9;
}

- (UIKBGradient)initWithColors:(id)a3 middleLocations:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = UIKBGradient;
  v9 = [(UIKBGradient *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_colors, a3);
    v11 = [v8 copy];
    middleLocations = v10->_middleLocations;
    v10->_middleLocations = v11;

    v10->_opacity = 1.0;
  }

  return v10;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p", objc_opt_class(), self];
  v4 = v3;
  if (self->_horizontal)
  {
    [v3 appendString:@"; horizontal gradient"];
  }

  if (self->_gradientName)
  {
    [v4 appendFormat:@"; Named Gradient = %@", self->_gradientName, v8];
  }

  else if (self->_flatColorName)
  {
    [v4 appendFormat:@"; Flat Color Gradient = %@", self->_flatColorName, v8];
  }

  else if (self->_startColorName && (endColorName = self->_endColorName) != 0)
  {
    [v4 appendFormat:@"; 2-Color Gradient = %@ -> %@", self->_startColorName, endColorName];
  }

  else
  {
    [v4 appendFormat:@"; 3-Color Gradient = %@, middleLocations = %@", self->_colors, self->_middleLocations];
  }

  [(UIKBGradient *)self opacity];
  if (v6 != 1.0)
  {
    [v4 appendFormat:@"; opacity = %f", *&self->_opacity];
  }

  [v4 appendString:@">"];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    v11 = (objc_opt_isKindOfClass() & 1) != 0 && self->_horizontal == v4->_horizontal && (gradientName = self->_gradientName, (gradientName == 0) != (v4->_gradientName != 0)) && (!gradientName || [(NSString *)gradientName isEqualToString:?]) && (flatColorName = self->_flatColorName, (flatColorName == 0) != (v4->_flatColorName != 0)) && (!flatColorName || [(NSString *)flatColorName isEqualToString:?]) && (startColorName = self->_startColorName, (startColorName == 0) != (v4->_startColorName != 0)) && (!startColorName || [(NSString *)startColorName isEqualToString:?]) && (endColorName = self->_endColorName, (endColorName == 0) != (v4->_endColorName != 0)) && (!endColorName || [(NSString *)endColorName isEqualToString:?]) && (colors = self->_colors, (colors == 0) != (v4->_colors != 0)) && (!colors || [(NSArray *)colors isEqualToArray:?]) && ((middleLocations = self->_middleLocations) == 0 || [(NSArray *)middleLocations isEqualToArray:v4->_middleLocations]) && self->_opacity == v4->_opacity;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[UIKBGradient allocWithZone:?]endColor:"initWithStartColor:endColor:", self->_startColorName, self->_endColorName];
  objc_storeStrong(&v4->_gradientName, self->_gradientName);
  objc_storeStrong(&v4->_flatColorName, self->_flatColorName);
  objc_storeStrong(&v4->_colors, self->_colors);
  objc_storeStrong(&v4->_middleLocations, self->_middleLocations);
  v4->_horizontal = self->_horizontal;
  v4->_opacity = self->_opacity;
  return v4;
}

@end