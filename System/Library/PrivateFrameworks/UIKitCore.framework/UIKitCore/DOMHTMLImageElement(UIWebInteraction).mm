@interface DOMHTMLImageElement(UIWebInteraction)
- (BOOL)showsTapHighlight;
@end

@implementation DOMHTMLImageElement(UIWebInteraction)

- (BOOL)showsTapHighlight
{
  hrefURL = [self hrefURL];
  v2 = hrefURL != 0;

  return v2;
}

@end