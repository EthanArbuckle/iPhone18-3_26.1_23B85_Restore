@interface CALayer
- (void)bk_setBackgroundColorRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6;
- (void)bk_setForegroundColorRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6;
@end

@implementation CALayer

- (void)bk_setBackgroundColorRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6
{
  v7 = sub_10002D3BC(a3, a4, a5, a6);
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

- (void)bk_setForegroundColorRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6
{
  v7 = sub_10002D3BC(a3, a4, a5, a6);
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