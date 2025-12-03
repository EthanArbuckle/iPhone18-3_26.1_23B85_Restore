@interface CALayer
- (void)bk_setBackgroundColorRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha;
- (void)bk_setForegroundColorRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha;
@end

@implementation CALayer

- (void)bk_setBackgroundColorRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha
{
  v7 = sub_10002D3BC(red, green, blue, alpha);
  if (v7)
  {
    v8 = v7;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(CALayer *)self setFillColor:v8];
    }

    else
    {
      [(CALayer *)self setBackgroundColor:v8];
    }

    CFRelease(v8);
  }
}

- (void)bk_setForegroundColorRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha
{
  v7 = sub_10002D3BC(red, green, blue, alpha);
  if (v7)
  {
    v8 = v7;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(CALayer *)self setForegroundColor:v8];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(CALayer *)self setStrokeColor:v8];
      }
    }

    CFRelease(v8);
  }
}

@end