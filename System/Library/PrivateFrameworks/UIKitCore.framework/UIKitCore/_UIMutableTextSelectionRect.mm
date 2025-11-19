@interface _UIMutableTextSelectionRect
+ (id)selectionRectWithRect:(CGRect)a3 fromView:(id)a4;
- (BOOL)isEqual:(id)a3;
- (CGAffineTransform)transform;
- (CGRect)rect;
- (_UIMutableTextSelectionRect)init;
- (id)description;
- (unint64_t)hash;
- (void)setRect:(CGRect)a3 fromView:(id)a4;
- (void)setTransform:(CGAffineTransform *)a3;
@end

@implementation _UIMutableTextSelectionRect

- (_UIMutableTextSelectionRect)init
{
  v5.receiver = self;
  v5.super_class = _UIMutableTextSelectionRect;
  result = [(_UIMutableTextSelectionRect *)&v5 init];
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

- (CGAffineTransform)transform
{
  v3 = *&self[2].b;
  *&retstr->a = *&self[1].ty;
  *&retstr->c = v3;
  *&retstr->tx = *&self[2].d;
  return self;
}

- (unint64_t)hash
{
  v2 = [MEMORY[0x1E696B098] valueWithCGRect:{self->_rect.origin.x, self->_rect.origin.y, self->_rect.size.width, self->_rect.size.height}];
  v3 = [v2 hash];

  return v3;
}

+ (id)selectionRectWithRect:(CGRect)a3 fromView:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = a4;
  v9 = objc_opt_new();
  [v9 setRect:v8 fromView:{x, y, width, height}];

  [v9 setWritingDirection:0];

  return v9;
}

- (void)setRect:(CGRect)a3 fromView:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v15 = a4;
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  if (CGRectIsNull(v17) || (v18.origin.x = x, v18.origin.y = y, v18.size.width = width, v18.size.height = height, CGRectIsInfinite(v18)))
  {
    p_rect = &self->_rect;
    p_rect->origin.x = x;
  }

  else
  {
    p_rect = &self->_rect;
    [v15 _currentScreenScale];
    v11 = UIRectRoundToScale(x, y, width, height, v10);
    y = v12;
    width = v13;
    height = v14;
    p_rect->origin.x = v11;
  }

  p_rect->origin.y = y;
  p_rect->size.width = width;
  p_rect->size.height = height;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromCGRect(self->_rect);
  v6 = [v3 stringWithFormat:@"<%@: %p rect = %@>", v4, self, v5];;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else if ([(_UIMutableTextSelectionRect *)v4 _ui_isKindOfTextSelectionRect])
  {
    v8.receiver = self;
    v8.super_class = _UIMutableTextSelectionRect;
    v6 = [(UITextSelectionRect *)&v8 isEqual:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setTransform:(CGAffineTransform *)a3
{
  v4 = *&a3->c;
  v3 = *&a3->tx;
  *&self->_transform.a = *&a3->a;
  *&self->_transform.c = v4;
  *&self->_transform.tx = v3;
}

@end