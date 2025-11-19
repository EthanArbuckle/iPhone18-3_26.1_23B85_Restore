@interface UISimpleSelectionRect
+ (id)rectWithCGRect:(CGRect)a3;
- (CGRect)rect;
@end

@implementation UISimpleSelectionRect

+ (id)rectWithCGRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = objc_alloc_init(UISimpleSelectionRect);
  [(UISimpleSelectionRect *)v7 setRect:x, y, width, height];

  return v7;
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