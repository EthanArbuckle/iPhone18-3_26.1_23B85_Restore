@interface PTPixelBufferSize
- (PTPixelBufferSize)initWithWidth:(int)a3 height:(int)a4;
@end

@implementation PTPixelBufferSize

- (PTPixelBufferSize)initWithWidth:(int)a3 height:(int)a4
{
  v4 = *&a4;
  [(PTPixelBufferSize *)self setWidth:*&a3];
  [(PTPixelBufferSize *)self setHeight:v4];
  return self;
}

@end