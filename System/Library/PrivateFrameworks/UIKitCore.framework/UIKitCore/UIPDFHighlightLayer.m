@interface UIPDFHighlightLayer
- (CGPoint)offset;
- (void)dealloc;
- (void)setBorderPath:(CGPath *)a3;
- (void)setClipPath:(CGPath *)a3;
@end

@implementation UIPDFHighlightLayer

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = UIPDFHighlightLayer;
  [(UIPDFHighlightLayer *)&v3 dealloc];
  CGPathRelease(self->_clipPath);
  CGPathRelease(self->_borderPath);
}

- (void)setClipPath:(CGPath *)a3
{
  CGPathRetain(a3);
  CGPathRelease(self->_clipPath);
  self->_clipPath = a3;
}

- (void)setBorderPath:(CGPath *)a3
{
  CGPathRetain(a3);
  CGPathRelease(self->_borderPath);
  self->_borderPath = a3;
}

- (CGPoint)offset
{
  x = self->offset.x;
  y = self->offset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end