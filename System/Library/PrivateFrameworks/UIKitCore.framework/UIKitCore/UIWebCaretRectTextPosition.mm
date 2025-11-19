@interface UIWebCaretRectTextPosition
+ (id)textPositionWithCaretRect:(CGRect)a3;
- (CGRect)caretRect;
- (UIWebCaretRectTextPosition)initWithCaretRect:(CGRect)a3;
@end

@implementation UIWebCaretRectTextPosition

+ (id)textPositionWithCaretRect:(CGRect)a3
{
  v3 = [[a1 alloc] initWithCaretRect:{a3.origin.x, a3.origin.y, a3.size.width, a3.size.height}];

  return v3;
}

- (UIWebCaretRectTextPosition)initWithCaretRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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