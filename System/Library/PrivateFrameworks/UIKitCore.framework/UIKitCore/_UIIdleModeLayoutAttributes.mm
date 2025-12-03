@interface _UIIdleModeLayoutAttributes
- (CGAffineTransform)transform;
- (CGPoint)centerOffset;
- (_UIIdleModeLayoutAttributes)init;
- (void)setTransform:(CGAffineTransform *)transform;
@end

@implementation _UIIdleModeLayoutAttributes

- (_UIIdleModeLayoutAttributes)init
{
  v5.receiver = self;
  v5.super_class = _UIIdleModeLayoutAttributes;
  result = [(_UIIdleModeLayoutAttributes *)&v5 init];
  if (result)
  {
    result->_centerOffset = *MEMORY[0x1E695EFF8];
    v3 = MEMORY[0x1E695EFD0];
    v4 = *(MEMORY[0x1E695EFD0] + 16);
    *&result->_transform.a = *MEMORY[0x1E695EFD0];
    *&result->_transform.c = v4;
    *&result->_transform.tx = *(v3 + 32);
    result->_alphaOffset = 0.0;
    result->_wantsDimmingOverlay = 0;
  }

  return result;
}

- (CGPoint)centerOffset
{
  x = self->_centerOffset.x;
  y = self->_centerOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGAffineTransform)transform
{
  v3 = *&self[1].b;
  *&retstr->a = *&self->ty;
  *&retstr->c = v3;
  *&retstr->tx = *&self[1].d;
  return self;
}

- (void)setTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->a;
  v4 = *&transform->c;
  *&self->_transform.tx = *&transform->tx;
  *&self->_transform.c = v4;
  *&self->_transform.a = v3;
}

@end