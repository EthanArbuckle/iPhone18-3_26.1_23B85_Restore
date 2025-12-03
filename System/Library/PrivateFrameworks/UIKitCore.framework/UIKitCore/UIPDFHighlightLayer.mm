@interface UIPDFHighlightLayer
- (CGPoint)offset;
- (void)dealloc;
- (void)setBorderPath:(CGPath *)path;
- (void)setClipPath:(CGPath *)path;
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

- (void)setClipPath:(CGPath *)path
{
  CGPathRetain(path);
  CGPathRelease(self->_clipPath);
  self->_clipPath = path;
}

- (void)setBorderPath:(CGPath *)path
{
  CGPathRetain(path);
  CGPathRelease(self->_borderPath);
  self->_borderPath = path;
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