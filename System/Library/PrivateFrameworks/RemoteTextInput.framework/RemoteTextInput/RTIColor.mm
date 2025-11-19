@interface RTIColor
+ (RTIColor)colorWithCGColor:(CGColor *)a3;
+ (RTIColor)colorWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6;
+ (RTIColor)colorWithWhite:(double)a3 alpha:(double)a4;
- (BOOL)isEqual:(id)a3;
- (CGColor)cgColor;
- (RTIColor)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTIColor

- (void)dealloc
{
  cgColor = self->_cgColor;
  if (cgColor)
  {
    CFRelease(cgColor);
    self->_cgColor = 0;
  }

  v4.receiver = self;
  v4.super_class = RTIColor;
  [(RTIColor *)&v4 dealloc];
}

+ (RTIColor)colorWithWhite:(double)a3 alpha:(double)a4
{
  v6 = objc_alloc_init(a1);
  *(v6 + 8) = 0;
  v6[2] = a3;
  v6[3] = a4;
  v6[4] = 0.0;
  v6[5] = 0.0;

  return v6;
}

+ (RTIColor)colorWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6
{
  v10 = objc_alloc_init(a1);
  *(v10 + 8) = 1;
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v10[5] = a6;

  return v10;
}

+ (RTIColor)colorWithCGColor:(CGColor *)a3
{
  v4 = objc_alloc_init(a1);
  v4[8] = 1;
  *(v4 + 6) = CGColorRetain(a3);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(DeviceRGB, kCGRenderingIntentDefault, a3, 0);
  Components = CGColorGetComponents(CopyByMatchingToColorSpace);
  NumberOfComponents = CGColorGetNumberOfComponents(CopyByMatchingToColorSpace);
  memcpy(v4 + 16, Components, 8 * NumberOfComponents);
  CGColorRelease(CopyByMatchingToColorSpace);

  return v4;
}

- (CGColor)cgColor
{
  result = self->_cgColor;
  if (!result)
  {
    if (*(self + 8) == 1)
    {
      result = CGColorCreateSRGB(self->_values[0], self->_values[1], self->_values[2], self->_values[3]);
      goto LABEL_6;
    }

    if (!*(self + 8))
    {
      result = CGColorCreateGenericGray(self->_values[0], self->_values[1]);
LABEL_6:
      self->_cgColor = result;
      return result;
    }

    return 0;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The coder must allow keyed coding."];
  }

  v5 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:self->_values length:32 freeWhenDone:0];
  [v4 encodeInt32:*(self + 8) forKey:@"colorType"];
  [v4 encodeObject:v5 forKey:@"colorValues"];
}

- (RTIColor)initWithCoder:(id)a3
{
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The decoder must allow keyed coding."];
  }

  v8.receiver = self;
  v8.super_class = RTIColor;
  v5 = [(RTIColor *)&v8 init];
  if (v5)
  {
    *(v5 + 8) = [v4 decodeInt32ForKey:@"colorType"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"colorValues"];
    [v6 getBytes:v5->_values length:32];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [[RTIColor allocWithZone:?]];
  *(result + 8) = *(self + 8);
  v5 = *&self->_values[2];
  *(result + 1) = *self->_values;
  *(result + 2) = v5;
  return result;
}

- (unint64_t)hash
{
  v3 = 0;
  result = *(self + 8);
  values = self->_values;
  do
  {
    result = ((257 * result) + values[v3++] * 256.0);
  }

  while (v3 != 4);
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    v8 = (objc_opt_isKindOfClass() & 1) != 0 && *(self + 8) == *(v4 + 8) && *&v4->_values[0] == *&self->_values[0] && *&v4->_values[1] == *&self->_values[1] && *&v4->_values[2] == *&self->_values[2] && *&v4->_values[3] == *&self->_values[3];
  }

  return v8;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p", objc_opt_class(), self];
  [v3 appendFormat:@"; color = %@", -[RTIColor cgColor](self, "cgColor")];

  return v3;
}

@end