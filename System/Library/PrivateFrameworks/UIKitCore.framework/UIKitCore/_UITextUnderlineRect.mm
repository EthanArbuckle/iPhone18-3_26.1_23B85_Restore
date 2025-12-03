@interface _UITextUnderlineRect
+ (id)underlineRectWithRect:(CGRect)rect offset:(double)offset transform:(CGAffineTransform *)transform;
- (CGAffineTransform)transform;
- (CGRect)fullRect;
- (CGRect)rect;
- (_UITextUnderlineRect)init;
- (id)description;
- (void)setTransform:(CGAffineTransform *)transform;
@end

@implementation _UITextUnderlineRect

+ (id)underlineRectWithRect:(CGRect)rect offset:(double)offset transform:(CGAffineTransform *)transform
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v11 = objc_alloc_init(_UITextUnderlineRect);
  [(_UITextUnderlineRect *)v11 setRect:x, y, width, height];
  [(UITextSelectionRect *)v11 setBaselineOffset:offset];
  v12 = *&transform->c;
  v14[0] = *&transform->a;
  v14[1] = v12;
  v14[2] = *&transform->tx;
  [(_UITextUnderlineRect *)v11 setTransform:v14];
  [(_UITextUnderlineRect *)v11 setUnderlineType:1];

  return v11;
}

- (_UITextUnderlineRect)init
{
  v5.receiver = self;
  v5.super_class = _UITextUnderlineRect;
  result = [(_UITextUnderlineRect *)&v5 init];
  if (result)
  {
    v3 = MEMORY[0x1E695EFD0];
    v4 = *(MEMORY[0x1E695EFD0] + 16);
    *&result->_transform.a = *MEMORY[0x1E695EFD0];
    *&result->_transform.c = v4;
    *&result->_transform.tx = *(v3 + 32);
  }

  return result;
}

- (CGRect)fullRect
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

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  [(_UITextUnderlineRect *)self rect];
  v5 = NSStringFromCGRect(v10);
  [(UITextSelectionRect *)self baselineOffset];
  v7 = [v3 stringWithFormat:@"<%@: %p rect = %@; offset = %0.2f>", v4, self, v5, v6];;

  return v7;
}

- (CGAffineTransform)transform
{
  v3 = *&self[2].a;
  *&retstr->a = *&self[1].tx;
  *&retstr->c = v3;
  *&retstr->tx = *&self[2].c;
  return self;
}

- (void)setTransform:(CGAffineTransform *)transform
{
  v4 = *&transform->c;
  v3 = *&transform->tx;
  *&self->_transform.a = *&transform->a;
  *&self->_transform.c = v4;
  *&self->_transform.tx = v3;
}

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

@end