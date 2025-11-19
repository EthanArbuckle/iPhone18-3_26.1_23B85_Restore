@interface UIPreviewParameters(TextLineRects)
- (id)ttr_textLineRects;
@end

@implementation UIPreviewParameters(TextLineRects)

- (id)ttr_textLineRects
{
  if (objc_opt_respondsToSelector())
  {
    v2 = [a1 _textLineRects];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end