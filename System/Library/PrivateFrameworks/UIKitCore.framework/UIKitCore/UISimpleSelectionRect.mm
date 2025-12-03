@interface UISimpleSelectionRect
+ (id)rectWithCGRect:(CGRect)rect;
- (CGRect)rect;
@end

@implementation UISimpleSelectionRect

+ (id)rectWithCGRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
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