@interface FxColor
+ (id)colorWithCGColor:(CGColor *)color;
+ (id)colorWithCIColor:(id)color;
+ (id)colorWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha;
+ (id)colorWithString:(id)string;
- (FxColor)initWithCGColor:(CGColor *)color;
- (FxColor)initWithCoder:(id)coder;
- (FxColor)initWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha;
- (FxColor)initWithString:(id)string;
- (double)blue;
- (double)green;
- (double)red;
- (id)description;
- (id)stringRepresentation;
- (void)convertToRGBA:(double *)a;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FxColor

+ (id)colorWithCGColor:(CGColor *)color
{
  v3 = [[self alloc] initWithCGColor:color];

  return v3;
}

+ (id)colorWithCIColor:(id)color
{
  [color red];
  v5 = v4;
  [color green];
  v7 = v6;
  [color blue];
  v9 = v8;
  [color alpha];

  return [FxColor colorWithRed:v5 green:v7 blue:v9 alpha:v10];
}

+ (id)colorWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha
{
  v6 = [[self alloc] initWithRed:red green:green blue:blue alpha:alpha];

  return v6;
}

+ (id)colorWithString:(id)string
{
  v3 = [[self alloc] initWithString:string];

  return v3;
}

- (FxColor)initWithString:(id)string
{
  v15 = *MEMORY[0x277D85DE8];
  uTF8String = [string UTF8String];
  if (uTF8String)
  {
    v5 = uTF8String;
    v10 = 0;
    v6 = *uTF8String;
    if (v6 == 91 || v6 == 40)
    {
      v5 = uTF8String + 1;
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

- (FxColor)initWithCGColor:(CGColor *)color
{
  if (color)
  {
    v6.receiver = self;
    v6.super_class = FxColor;
    v4 = [(FxColor *)&v6 init];
    if (v4)
    {
      v4->_priv = CGColorRetain(color);
    }
  }

  else
  {

    return 0;
  }

  return v4;
}

- (FxColor)initWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha
{
  components[4] = *MEMORY[0x277D85DE8];
  DeviceRGB = initWithRed_green_blue_alpha__cs;
  if (!initWithRed_green_blue_alpha__cs)
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    initWithRed_green_blue_alpha__cs = DeviceRGB;
  }

  components[0] = red;
  components[1] = green;
  components[2] = blue;
  components[3] = alpha;
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
  numberOfComponents = [(FxColor *)self numberOfComponents];
  components = [(FxColor *)self components];
  result = 0.0;
  if (numberOfComponents >= 2)
  {
    return *components;
  }

  return result;
}

- (double)green
{
  numberOfComponents = [(FxColor *)self numberOfComponents];
  components = [(FxColor *)self components];
  result = 0.0;
  if (numberOfComponents >= 3)
  {
    return components[1];
  }

  return result;
}

- (double)blue
{
  numberOfComponents = [(FxColor *)self numberOfComponents];
  components = [(FxColor *)self components];
  result = 0.0;
  if (numberOfComponents >= 4)
  {
    return components[2];
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

- (void)convertToRGBA:(double *)a
{
  numberOfComponents = [(FxColor *)self numberOfComponents];
  components = [(FxColor *)self components];
  if (numberOfComponents)
  {
    v7 = 1.0;
    if (numberOfComponents != 1)
    {
      v7 = *components;
    }

    *a = v7;
    v8 = components[numberOfComponents > 2];
    a[1] = v8;
    v9 = components[2 * (numberOfComponents > 3)];
    a[2] = v9;
    v10 = components[numberOfComponents - 1];
    *a = v7 * v10;
    a[1] = v8 * v10;
    a[2] = v9 * v10;
    a[3] = v10;
  }
}

- (void)encodeWithCoder:(id)coder
{
  v10 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  [(FxColor *)self convertToRGBA:&v8];
  v4 = *&v8 / *(&v9 + 1);
  *&v4 = *&v8 / *(&v9 + 1);
  [coder encodeFloat:@"red" forKey:v4];
  v5 = *(&v8 + 1) / *(&v9 + 1);
  *&v5 = *(&v8 + 1) / *(&v9 + 1);
  [coder encodeFloat:@"green" forKey:v5];
  v6 = *&v9 / *(&v9 + 1);
  *&v6 = *&v9 / *(&v9 + 1);
  [coder encodeFloat:@"blue" forKey:v6];
  HIDWORD(v7) = HIDWORD(v9);
  *&v7 = *(&v9 + 1);
  [coder encodeFloat:@"alpha" forKey:v7];
}

- (FxColor)initWithCoder:(id)coder
{
  [coder decodeFloatForKey:@"red"];
  v6 = v5;
  [coder decodeFloatForKey:@"green"];
  v8 = v7;
  [coder decodeFloatForKey:@"blue"];
  v10 = v9;
  [coder decodeFloatForKey:@"alpha"];

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