@interface TVColor
- (IKColor)ikColor;
- (NSArray)gradientColors;
- (NSArray)gradientPoints;
- (TVColor)initWithColor:(id)a3;
- (UIColor)color;
- (int64_t)colorType;
@end

@implementation TVColor

- (TVColor)initWithColor:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TVColor;
  v5 = [(TVColor *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_ikColor, v4);
  }

  return v6;
}

- (UIColor)color
{
  if ([(TVColor *)self colorType]== 1)
  {
    v3 = [(TVColor *)self ikColor];
    v4 = [v3 color];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)colorType
{
  v3 = [(TVColor *)self ikColor];
  v4 = [v3 colorType];

  if (!v4)
  {
    return 1;
  }

  v5 = [(TVColor *)self ikColor];
  if ([v5 colorType] != 3)
  {

    return 0;
  }

  v6 = [(TVColor *)self ikColor];
  v7 = [v6 gradientType];

  if (v7 != 1)
  {
    return 0;
  }

  v8 = [(TVColor *)self ikColor];
  v9 = [v8 gradientDirectionType];

  if (v9 == 1)
  {
    return 2;
  }

  v11 = [(TVColor *)self ikColor];
  v12 = [v11 gradientDirectionType];

  if (v12 == 2)
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
    v3 = [(TVColor *)self ikColor];
    v4 = [v3 gradientColors];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSArray)gradientPoints
{
  if (([(TVColor *)self colorType]& 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v3 = [(TVColor *)self ikColor];
    v4 = [v3 gradientPoints];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (IKColor)ikColor
{
  WeakRetained = objc_loadWeakRetained(&self->_ikColor);

  return WeakRetained;
}

@end