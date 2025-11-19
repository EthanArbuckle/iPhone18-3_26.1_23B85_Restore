@interface _UITextHighlightSelectionRect
+ (id)endingSelectionRectWithRect:(CGRect)a3;
+ (id)selectionRectWithRect:(CGRect)a3;
+ (id)startingSelectionRectWithRect:(CGRect)a3;
- (CGRect)rect;
@end

@implementation _UITextHighlightSelectionRect

+ (id)selectionRectWithRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = objc_alloc_init(_UITextHighlightSelectionRect);
  v7->_rect.origin.x = x;
  v7->_rect.origin.y = y;
  v7->_rect.size.width = width;
  v7->_rect.size.height = height;

  return v7;
}

+ (id)startingSelectionRectWithRect:(CGRect)a3
{
  result = [_UITextHighlightSelectionRect selectionRectWithRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  *(result + 24) = 1;
  return result;
}

+ (id)endingSelectionRectWithRect:(CGRect)a3
{
  result = [_UITextHighlightSelectionRect selectionRectWithRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  *(result + 25) = 1;
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

@end