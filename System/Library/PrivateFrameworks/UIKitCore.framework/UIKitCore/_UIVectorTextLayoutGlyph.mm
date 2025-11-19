@interface _UIVectorTextLayoutGlyph
- (CGAffineTransform)pathTransform;
- (CGRect)rect;
- (void)setPathTransform:(CGAffineTransform *)a3;
@end

@implementation _UIVectorTextLayoutGlyph

- (CGRect)rect
{
  x = self->_rect.origin.x;
  y = self->_rect.origin.y;
  width = self->_rect.size.width;
  height = self->_rect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGAffineTransform)pathTransform
{
  v3 = *&self[1].d;
  *&retstr->a = *&self[1].b;
  *&retstr->c = v3;
  *&retstr->tx = *&self[1].ty;
  return self;
}

- (void)setPathTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->c;
  *&self->_pathTransform.tx = *&a3->tx;
  *&self->_pathTransform.c = v4;
  *&self->_pathTransform.a = v3;
}

@end