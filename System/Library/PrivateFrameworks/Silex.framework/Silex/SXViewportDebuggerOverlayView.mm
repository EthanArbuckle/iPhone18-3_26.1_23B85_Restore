@interface SXViewportDebuggerOverlayView
- (void)setBorderColor:(id *)color;
@end

@implementation SXViewportDebuggerOverlayView

- (void)setBorderColor:(id *)color
{
  v5 = a2;
  if (color)
  {
    layer = [color layer];
    if (v5)
    {
      [layer setBorderWidth:1.0];

      layer = [color layer];
      [layer setBorderColor:{objc_msgSend(v5, "CGColor")}];
    }

    else
    {
      [layer setBorderWidth:0.0];
    }

    objc_storeStrong(color + 51, a2);
  }
}

@end