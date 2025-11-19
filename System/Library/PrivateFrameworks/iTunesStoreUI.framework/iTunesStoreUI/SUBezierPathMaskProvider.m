@interface SUBezierPathMaskProvider
- (CGPath)copyPathForMaskWithSize:(CGSize)a3;
- (void)dealloc;
@end

@implementation SUBezierPathMaskProvider

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUBezierPathMaskProvider;
  [(SUBezierPathMaskProvider *)&v3 dealloc];
}

- (CGPath)copyPathForMaskWithSize:(CGSize)a3
{
  result = [(UIBezierPath *)self->_bezierPath CGPath:a3.width];
  if (result)
  {

    return CGPathRetain(result);
  }

  return result;
}

@end