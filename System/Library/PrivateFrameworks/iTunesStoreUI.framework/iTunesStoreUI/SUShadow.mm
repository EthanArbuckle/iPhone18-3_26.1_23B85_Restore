@interface SUShadow
- (CGSize)offset;
- (SUShadow)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)applyToLayer:(id)layer;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SUShadow

- (SUShadow)initWithCoder:(id)coder
{
  v4 = [(SUShadow *)self init];
  if (v4)
  {
    v4->_color = [coder decodeObjectOfClass:objc_opt_class() forKey:@"color"];
    [coder decodeCGSizeForKey:@"offset"];
    v4->_offset.width = v5;
    v4->_offset.height = v6;
    [coder decodeFloatForKey:@"opacity"];
    v4->_opacity = v7;
    [coder decodeFloatForKey:@"radius"];
    v4->_radius = v8;
  }

  return v4;
}

- (void)dealloc
{
  self->_color = 0;
  v3.receiver = self;
  v3.super_class = SUShadow;
  [(SUShadow *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v4 + 8) = self->_color;
  *(v4 + 16) = self->_offset;
  *(v4 + 32) = self->_opacity;
  *(v4 + 40) = self->_radius;
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [(SUShadow *)a2 encodeWithCoder:?];
  }

  [coder encodeObject:self->_color forKey:@"color"];
  [coder encodeCGSize:@"offset" forKey:{self->_offset.width, self->_offset.height}];
  opacity = self->_opacity;
  *&opacity = opacity;
  [coder encodeFloat:@"opacity" forKey:opacity];
  radius = self->_radius;
  *&radius = radius;

  [coder encodeFloat:@"radius" forKey:radius];
}

- (void)applyToLayer:(id)layer
{
  color = self->_color;
  if (color)
  {
    [layer setShadowColor:{-[UIColor CGColor](color, "CGColor")}];
  }

  [layer setShadowOffset:{self->_offset.width, self->_offset.height}];
  v6 = fmax(self->_opacity, 0.0);
  if (v6 > 1.0)
  {
    v6 = 1.0;
  }

  *&v6 = v6;
  [layer setShadowOpacity:v6];
  v7 = fabs(self->_radius);

  [layer setShadowRadius:v7];
}

- (CGSize)offset
{
  width = self->_offset.width;
  height = self->_offset.height;
  result.height = height;
  result.width = width;
  return result;
}

- (uint64_t)encodeWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"SUShadow.m" lineNumber:53 description:@"Only supports keyed archiving"];
}

@end