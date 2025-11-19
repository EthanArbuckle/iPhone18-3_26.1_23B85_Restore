@interface SUGradientColorStop
- (CGColor)copyCGColor;
- (SUGradientColorStop)initWithCoder:(id)a3;
- (SUGradientColorStop)initWithColor:(CGColor *)a3 offset:(double)a4;
- (id)description;
- (int64_t)compare:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SUGradientColorStop

- (SUGradientColorStop)initWithColor:(CGColor *)a3 offset:(double)a4
{
  v9.receiver = self;
  v9.super_class = SUGradientColorStop;
  v6 = [(SUGradientColorStop *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_offset = a4;
    v6->_rawColor = CGColorRetain(a3);
    SUColorGetRGBA(a3, &v7->_r, &v7->_g, &v7->_b, &v7->_a);
  }

  return v7;
}

- (SUGradientColorStop)initWithCoder:(id)a3
{
  v12.receiver = self;
  v12.super_class = SUGradientColorStop;
  v4 = [(SUGradientColorStop *)&v12 init];
  if (v4)
  {
    [a3 decodeFloatForKey:@"r"];
    v4->_r = v5;
    [a3 decodeFloatForKey:@"g"];
    v4->_g = v6;
    [a3 decodeFloatForKey:@"b"];
    v4->_b = v7;
    [a3 decodeFloatForKey:@"A"];
    v4->_a = v8;
    [a3 decodeFloatForKey:@"offset"];
    v4->_offset = v9;
    v10 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"rawcolor"];
    if (v10)
    {
      v4->_rawColor = CGColorRetain([v10 CGColor]);
    }
  }

  return v4;
}

- (void)dealloc
{
  rawColor = self->_rawColor;
  if (rawColor)
  {
    CGColorRelease(rawColor);
  }

  v4.receiver = self;
  v4.super_class = SUGradientColorStop;
  [(SUGradientColorStop *)&v4 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  r = self->_r;
  *&r = r;
  [a3 encodeFloat:@"r" forKey:r];
  g = self->_g;
  *&g = g;
  [a3 encodeFloat:@"g" forKey:g];
  b = self->_b;
  *&b = b;
  [a3 encodeFloat:@"b" forKey:b];
  a = self->_a;
  *&a = a;
  [a3 encodeFloat:@"A" forKey:a];
  offset = self->_offset;
  *&offset = offset;
  [a3 encodeFloat:@"offset" forKey:offset];
  if (self->_rawColor)
  {
    v10 = [MEMORY[0x1E69DC888] colorWithCGColor:?];

    [a3 safeEncodeUIColor:v10 forKey:@"rawcolor"];
  }
}

- (int64_t)compare:(id)a3
{
  offset = self->_offset;
  v4 = *(a3 + 5);
  if (offset < v4)
  {
    return -1;
  }

  else
  {
    return offset > v4;
  }
}

- (CGColor)copyCGColor
{
  v9 = *MEMORY[0x1E69E9840];
  rawColor = self->_rawColor;
  if (rawColor)
  {

    return CGColorCreateCopy(rawColor);
  }

  else
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v6 = *&self->_b;
    v8[0] = *&self->_r;
    v8[1] = v6;
    v7 = CGColorCreate(DeviceRGB, v8);
    CGColorSpaceRelease(DeviceRGB);
    return v7;
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = SUGradientColorStop;
  v4 = [(SUGradientColorStop *)&v7 description];
  if (self->_rawColor)
  {
    v5 = [MEMORY[0x1E69DC888] colorWithCGColor:?];
  }

  else
  {
    v5 = @"nil";
  }

  return [v3 stringWithFormat:@"%@: Color: %@", v4, v5];
}

@end