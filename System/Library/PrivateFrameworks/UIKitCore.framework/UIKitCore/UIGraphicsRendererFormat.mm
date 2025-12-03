@interface UIGraphicsRendererFormat
+ (UIGraphicsRendererFormat)defaultFormat;
+ (UIGraphicsRendererFormat)preferredFormat;
- (CGRect)bounds;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation UIGraphicsRendererFormat

- (CGRect)bounds
{
  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

+ (UIGraphicsRendererFormat)defaultFormat
{
  v2 = objc_alloc_init(self);
  v3 = *(MEMORY[0x1E695F058] + 16);
  *(v2 + 8) = *MEMORY[0x1E695F058];
  *(v2 + 24) = v3;

  return v2;
}

+ (UIGraphicsRendererFormat)preferredFormat
{
  v2 = objc_alloc_init(self);
  v3 = *(MEMORY[0x1E695F058] + 16);
  *(v2 + 8) = *MEMORY[0x1E695F058];
  *(v2 + 24) = v3;

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [(UIGraphicsRendererFormat *)self bounds];
  v4[1] = v5;
  v4[2] = v6;
  v4[3] = v7;
  v4[4] = v8;
  return v4;
}

@end