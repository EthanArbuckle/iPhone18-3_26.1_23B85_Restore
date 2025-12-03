@interface UIFont(WFLineHeight)
- (double)wf_lineHeight;
@end

@implementation UIFont(WFLineHeight)

- (double)wf_lineHeight
{
  Ascent = CTFontGetAscent(self);
  v3 = Ascent + CTFontGetDescent(self);
  return v3 + CTFontGetLeading(self);
}

@end