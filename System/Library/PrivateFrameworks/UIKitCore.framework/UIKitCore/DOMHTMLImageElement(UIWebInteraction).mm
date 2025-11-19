@interface DOMHTMLImageElement(UIWebInteraction)
- (BOOL)showsTapHighlight;
@end

@implementation DOMHTMLImageElement(UIWebInteraction)

- (BOOL)showsTapHighlight
{
  v1 = [a1 hrefURL];
  v2 = v1 != 0;

  return v2;
}

@end