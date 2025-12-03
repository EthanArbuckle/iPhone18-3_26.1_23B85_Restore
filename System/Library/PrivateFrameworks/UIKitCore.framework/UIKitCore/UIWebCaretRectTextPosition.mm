@interface UIWebCaretRectTextPosition
+ (id)textPositionWithCaretRect:(CGRect)rect;
- (CGRect)caretRect;
- (UIWebCaretRectTextPosition)initWithCaretRect:(CGRect)rect;
@end

@implementation UIWebCaretRectTextPosition

+ (id)textPositionWithCaretRect:(CGRect)rect
{
  v3 = [[self alloc] initWithCaretRect:{rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}];

  return v3;
}

- (UIWebCaretRectTextPosition)initWithCaretRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8.receiver = self;
  v8.super_class = UIWebCaretRectTextPosition;
  result = [(UIWebCaretRectTextPosition *)&v8 init];
  if (result)
  {
    result->_caretRect.origin.x = x;
    result->_caretRect.origin.y = y;
    result->_caretRect.size.width = width;
    result->_caretRect.size.height = height;
  }

  return result;
}

- (CGRect)caretRect
{
  x = self->_caretRect.origin.x;
  y = self->_caretRect.origin.y;
  width = self->_caretRect.size.width;
  height = self->_caretRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end