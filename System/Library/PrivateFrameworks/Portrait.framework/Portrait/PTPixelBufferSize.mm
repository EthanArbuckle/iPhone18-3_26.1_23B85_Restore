@interface PTPixelBufferSize
- (PTPixelBufferSize)initWithWidth:(int)width height:(int)height;
@end

@implementation PTPixelBufferSize

- (PTPixelBufferSize)initWithWidth:(int)width height:(int)height
{
  v4 = *&height;
  [(PTPixelBufferSize *)self setWidth:*&width];
  [(PTPixelBufferSize *)self setHeight:v4];
  return self;
}

@end