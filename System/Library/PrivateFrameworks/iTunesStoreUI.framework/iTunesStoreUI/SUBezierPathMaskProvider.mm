@interface SUBezierPathMaskProvider
- (CGPath)copyPathForMaskWithSize:(CGSize)size;
- (void)dealloc;
@end

@implementation SUBezierPathMaskProvider

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUBezierPathMaskProvider;
  [(SUBezierPathMaskProvider *)&v3 dealloc];
}

- (CGPath)copyPathForMaskWithSize:(CGSize)size
{
  result = [(UIBezierPath *)self->_bezierPath CGPath:size.width];
  if (result)
  {

    return CGPathRetain(result);
  }

  return result;
}

@end