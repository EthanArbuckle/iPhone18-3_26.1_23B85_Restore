@interface _UITextHighlightSelectionRect
+ (id)endingSelectionRectWithRect:(CGRect)rect;
+ (id)selectionRectWithRect:(CGRect)rect;
+ (id)startingSelectionRectWithRect:(CGRect)rect;
- (CGRect)rect;
@end

@implementation _UITextHighlightSelectionRect

+ (id)selectionRectWithRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v7 = objc_alloc_init(_UITextHighlightSelectionRect);
  v7->_rect.origin.x = x;
  v7->_rect.origin.y = y;
  v7->_rect.size.width = width;
  v7->_rect.size.height = height;

  return v7;
}

+ (id)startingSelectionRectWithRect:(CGRect)rect
{
  result = [_UITextHighlightSelectionRect selectionRectWithRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  *(result + 24) = 1;
  return result;
}

+ (id)endingSelectionRectWithRect:(CGRect)rect
{
  result = [_UITextHighlightSelectionRect selectionRectWithRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
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