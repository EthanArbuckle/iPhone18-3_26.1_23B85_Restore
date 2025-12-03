@interface TVColor
- (IKColor)ikColor;
- (NSArray)gradientColors;
- (NSArray)gradientPoints;
- (TVColor)initWithColor:(id)color;
- (UIColor)color;
- (int64_t)colorType;
@end

@implementation TVColor

- (TVColor)initWithColor:(id)color
{
  colorCopy = color;
  v8.receiver = self;
  v8.super_class = TVColor;
  v5 = [(TVColor *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_ikColor, colorCopy);
  }

  return v6;
}

- (UIColor)color
{
  if ([(TVColor *)self colorType]== 1)
  {
    ikColor = [(TVColor *)self ikColor];
    color = [ikColor color];
  }

  else
  {
    color = 0;
  }

  return color;
}

- (int64_t)colorType
{
  ikColor = [(TVColor *)self ikColor];
  colorType = [ikColor colorType];

  if (!colorType)
  {
    return 1;
  }

  ikColor2 = [(TVColor *)self ikColor];
  if ([ikColor2 colorType] != 3)
  {

    return 0;
  }

  ikColor3 = [(TVColor *)self ikColor];
  gradientType = [ikColor3 gradientType];

  if (gradientType != 1)
  {
    return 0;
  }

  ikColor4 = [(TVColor *)self ikColor];
  gradientDirectionType = [ikColor4 gradientDirectionType];

  if (gradientDirectionType == 1)
  {
    return 2;
  }

  ikColor5 = [(TVColor *)self ikColor];
  gradientDirectionType2 = [ikColor5 gradientDirectionType];

  if (gradientDirectionType2 == 2)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

- (NSArray)gradientColors
{
  if (([(TVColor *)self colorType]& 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    ikColor = [(TVColor *)self ikColor];
    gradientColors = [ikColor gradientColors];
  }

  else
  {
    gradientColors = 0;
  }

  return gradientColors;
}

- (NSArray)gradientPoints
{
  if (([(TVColor *)self colorType]& 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    ikColor = [(TVColor *)self ikColor];
    gradientPoints = [ikColor gradientPoints];
  }

  else
  {
    gradientPoints = 0;
  }

  return gradientPoints;
}

- (IKColor)ikColor
{
  WeakRetained = objc_loadWeakRetained(&self->_ikColor);

  return WeakRetained;
}

@end