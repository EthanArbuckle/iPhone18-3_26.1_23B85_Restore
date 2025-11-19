@interface SXViewportDebuggerOverlayView
- (void)setBorderColor:(id *)a1;
@end

@implementation SXViewportDebuggerOverlayView

- (void)setBorderColor:(id *)a1
{
  v5 = a2;
  if (a1)
  {
    v4 = [a1 layer];
    if (v5)
    {
      [v4 setBorderWidth:1.0];

      v4 = [a1 layer];
      [v4 setBorderColor:{objc_msgSend(v5, "CGColor")}];
    }

    else
    {
      [v4 setBorderWidth:0.0];
    }

    objc_storeStrong(a1 + 51, a2);
  }
}

@end