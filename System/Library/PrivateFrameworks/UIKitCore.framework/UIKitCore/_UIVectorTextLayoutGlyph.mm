@interface _UIVectorTextLayoutGlyph
- (CGAffineTransform)pathTransform;
- (CGRect)rect;
- (void)setPathTransform:(CGAffineTransform *)transform;
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

- (void)setPathTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->a;
  v4 = *&transform->c;
  *&self->_pathTransform.tx = *&transform->tx;
  *&self->_pathTransform.c = v4;
  *&self->_pathTransform.a = v3;
}

@end