@interface RTIColor
+ (RTIColor)colorWithCGColor:(CGColor *)color;
+ (RTIColor)colorWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha;
+ (RTIColor)colorWithWhite:(double)white alpha:(double)alpha;
- (BOOL)isEqual:(id)equal;
- (CGColor)cgColor;
- (RTIColor)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
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

+ (RTIColor)colorWithWhite:(double)white alpha:(double)alpha
{
  v6 = objc_alloc_init(self);
  *(v6 + 8) = 0;
  v6[2] = white;
  v6[3] = alpha;
  v6[4] = 0.0;
  v6[5] = 0.0;

  return v6;
}

+ (RTIColor)colorWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha
{
  v10 = objc_alloc_init(self);
  *(v10 + 8) = 1;
  v10[2] = red;
  v10[3] = green;
  v10[4] = blue;
  v10[5] = alpha;

  return v10;
}

+ (RTIColor)colorWithCGColor:(CGColor *)color
{
  v4 = objc_alloc_init(self);
  v4[8] = 1;
  *(v4 + 6) = CGColorRetain(color);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(DeviceRGB, kCGRenderingIntentDefault, color, 0);
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The coder must allow keyed coding."];
  }

  v5 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:self->_values length:32 freeWhenDone:0];
  [coderCopy encodeInt32:*(self + 8) forKey:@"colorType"];
  [coderCopy encodeObject:v5 forKey:@"colorValues"];
}

- (RTIColor)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The decoder must allow keyed coding."];
  }

  v8.receiver = self;
  v8.super_class = RTIColor;
  v5 = [(RTIColor *)&v8 init];
  if (v5)
  {
    *(v5 + 8) = [coderCopy decodeInt32ForKey:@"colorType"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"colorValues"];
    [v6 getBytes:v5->_values length:32];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    v8 = (objc_opt_isKindOfClass() & 1) != 0 && *(self + 8) == *(equalCopy + 8) && *&equalCopy->_values[0] == *&self->_values[0] && *&equalCopy->_values[1] == *&self->_values[1] && *&equalCopy->_values[2] == *&self->_values[2] && *&equalCopy->_values[3] == *&self->_values[3];
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