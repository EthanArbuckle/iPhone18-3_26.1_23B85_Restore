@interface WebPlainWhiteView
- (void)drawRect:(CGRect)rect;
@end

@implementation WebPlainWhiteView

- (void)drawRect:(CGRect)rect
{
  v4 = WKGetCurrentGraphicsContext();
  WebCore::cachedCGColor();
  CGContextSetFillColorWithColor(v4, color);
  if (color)
  {
    CFRelease(color);
  }

  [(WebPlainWhiteView *)self bounds:0x11040000FFFFFFFFLL];
  WKRectFill();
}

@end