@interface FxColor
+ (id)colorWithCGColor:(CGColor *)a3;
+ (id)colorWithCIColor:(id)a3;
+ (id)colorWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6;
+ (id)colorWithString:(id)a3;
- (FxColor)initWithCGColor:(CGColor *)a3;
- (FxColor)initWithCoder:(id)a3;
- (FxColor)initWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6;
- (FxColor)initWithString:(id)a3;
- (double)blue;
- (double)green;
- (double)red;
- (id)description;
- (id)stringRepresentation;
- (void)convertToRGBA:(double *)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FxColor

+ (id)colorWithCGColor:(CGColor *)a3
{
  v3 = [[a1 alloc] initWithCGColor:a3];

  return v3;
}

+ (id)colorWithCIColor:(id)a3
{
  [a3 red];
  v5 = v4;
  [a3 green];
  v7 = v6;
  [a3 blue];
  v9 = v8;
  [a3 alpha];

  return [FxColor colorWithRed:v5 green:v7 blue:v9 alpha:v10];
}

+ (id)colorWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6
{
  v6 = [[a1 alloc] initWithRed:a3 green:a4 blue:a5 alpha:a6];

  return v6;
}

+ (id)colorWithString:(id)a3
{
  v3 = [[a1 alloc] initWithString:a3];

  return v3;
}

- (FxColor)initWithString:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [a3 UTF8String];
  if (v4)
  {
    v5 = v4;
    v10 = 0;
    v6 = *v4;
    if (v6 == 91 || v6 == 40)
    {
      v5 = v4 + 1;
    }

    v7 = 0;
    while (1)
    {
      *(&v11 + v7) = strtod(v5, &v10);
      if (v10 == v5)
      {
        break;
      }

      ++v7;
      v5 = v10;
      if (v7 == 4)
      {
        v8 = v14;
        return [(FxColor *)self initWithRed:v11 green:v12 blue:v13 alpha:v8, v10];
      }
    }

    v8 = 1.0;
    if (v7 > 1)
    {
      if (v7 != 2)
      {
        return [(FxColor *)self initWithRed:v11 green:v12 blue:v13 alpha:v8, v10];
      }

      v8 = v12;
    }

    else if (!v7)
    {
      v11 = 0.0;
      v12 = 0.0;
      v13 = 0.0;
      return [(FxColor *)self initWithRed:v11 green:v12 blue:v13 alpha:v8, v10];
    }

    v12 = v11;
    v13 = v11;
    return [(FxColor *)self initWithRed:v11 green:v12 blue:v13 alpha:v8, v10];
  }

  return [(FxColor *)self initWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
}

- (FxColor)initWithCGColor:(CGColor *)a3
{
  if (a3)
  {
    v6.receiver = self;
    v6.super_class = FxColor;
    v4 = [(FxColor *)&v6 init];
    if (v4)
    {
      v4->_priv = CGColorRetain(a3);
    }
  }

  else
  {

    return 0;
  }

  return v4;
}

- (FxColor)initWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6
{
  components[4] = *MEMORY[0x277D85DE8];
  DeviceRGB = initWithRed_green_blue_alpha__cs;
  if (!initWithRed_green_blue_alpha__cs)
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    initWithRed_green_blue_alpha__cs = DeviceRGB;
  }

  components[0] = a3;
  components[1] = a4;
  components[2] = a5;
  components[3] = a6;
  v12 = CGColorCreate(DeviceRGB, components);
  v13 = [(FxColor *)self initWithCGColor:v12];
  CGColorRelease(v12);
  return v13;
}

- (void)dealloc
{
  CGColorRelease(self->_priv);
  v3.receiver = self;
  v3.super_class = FxColor;
  [(FxColor *)&v3 dealloc];
}

- (double)red
{
  v3 = [(FxColor *)self numberOfComponents];
  v4 = [(FxColor *)self components];
  result = 0.0;
  if (v3 >= 2)
  {
    return *v4;
  }

  return result;
}

- (double)green
{
  v3 = [(FxColor *)self numberOfComponents];
  v4 = [(FxColor *)self components];
  result = 0.0;
  if (v3 >= 3)
  {
    return v4[1];
  }

  return result;
}

- (double)blue
{
  v3 = [(FxColor *)self numberOfComponents];
  v4 = [(FxColor *)self components];
  result = 0.0;
  if (v3 >= 4)
  {
    return v4[2];
  }

  return result;
}

- (id)stringRepresentation
{
  v3 = MEMORY[0x277CCACA8];
  [(FxColor *)self red];
  v5 = v4;
  [(FxColor *)self green];
  v7 = v6;
  [(FxColor *)self blue];
  v9 = v8;
  [(FxColor *)self alpha];
  return [v3 stringWithFormat:@"%g %g %g %g", v5, v7, v9, v10];
}

- (void)convertToRGBA:(double *)a3
{
  v5 = [(FxColor *)self numberOfComponents];
  v6 = [(FxColor *)self components];
  if (v5)
  {
    v7 = 1.0;
    if (v5 != 1)
    {
      v7 = *v6;
    }

    *a3 = v7;
    v8 = v6[v5 > 2];
    a3[1] = v8;
    v9 = v6[2 * (v5 > 3)];
    a3[2] = v9;
    v10 = v6[v5 - 1];
    *a3 = v7 * v10;
    a3[1] = v8 * v10;
    a3[2] = v9 * v10;
    a3[3] = v10;
  }
}

- (void)encodeWithCoder:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  [(FxColor *)self convertToRGBA:&v8];
  v4 = *&v8 / *(&v9 + 1);
  *&v4 = *&v8 / *(&v9 + 1);
  [a3 encodeFloat:@"red" forKey:v4];
  v5 = *(&v8 + 1) / *(&v9 + 1);
  *&v5 = *(&v8 + 1) / *(&v9 + 1);
  [a3 encodeFloat:@"green" forKey:v5];
  v6 = *&v9 / *(&v9 + 1);
  *&v6 = *&v9 / *(&v9 + 1);
  [a3 encodeFloat:@"blue" forKey:v6];
  HIDWORD(v7) = HIDWORD(v9);
  *&v7 = *(&v9 + 1);
  [a3 encodeFloat:@"alpha" forKey:v7];
}

- (FxColor)initWithCoder:(id)a3
{
  [a3 decodeFloatForKey:@"red"];
  v6 = v5;
  [a3 decodeFloatForKey:@"green"];
  v8 = v7;
  [a3 decodeFloatForKey:@"blue"];
  v10 = v9;
  [a3 decodeFloatForKey:@"alpha"];

  return [(FxColor *)self initWithRed:v6 green:v8 blue:v10 alpha:v11];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  [(FxColor *)self red];
  v5 = v4;
  [(FxColor *)self green];
  v7 = v6;
  [(FxColor *)self blue];
  v9 = v8;
  [(FxColor *)self alpha];
  return [v3 stringWithFormat:@"(%g %g %g %g)", v5, v7, v9, v10];
}

@end