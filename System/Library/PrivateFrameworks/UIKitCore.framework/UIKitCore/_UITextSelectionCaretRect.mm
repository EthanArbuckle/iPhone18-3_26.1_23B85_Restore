@interface _UITextSelectionCaretRect
+ (id)selectionRectWithRect:(CGRect)rect;
- (CGRect)rect;
@end

@implementation _UITextSelectionCaretRect

+ (id)selectionRectWithRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v7 = objc_alloc_init(objc_opt_class());
  v7[3] = x;
  v7[4] = y;
  v7[5] = width;
  v7[6] = height;

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