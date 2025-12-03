@interface UIPreviewParameters(TextLineRects)
- (id)ttr_textLineRects;
@end

@implementation UIPreviewParameters(TextLineRects)

- (id)ttr_textLineRects
{
  if (objc_opt_respondsToSelector())
  {
    _textLineRects = [self _textLineRects];
  }

  else
  {
    _textLineRects = 0;
  }

  return _textLineRects;
}

@end