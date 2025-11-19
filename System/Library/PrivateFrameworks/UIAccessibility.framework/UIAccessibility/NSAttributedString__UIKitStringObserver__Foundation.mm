@interface NSAttributedString__UIKitStringObserver__Foundation
- (void)drawAtPoint:(CGPoint)a3;
@end

@implementation NSAttributedString__UIKitStringObserver__Foundation

- (void)drawAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (AXCaptureStringDrawingText == 1)
  {
    v6 = AXCapturedString;
    v7 = [(NSAttributedString__UIKitStringObserver__Foundation *)self string];
    [v6 appendString:v7];
  }

  v8.receiver = self;
  v8.super_class = NSAttributedString__UIKitStringObserver__Foundation;
  [(NSAttributedString__UIKitStringObserver__Foundation *)&v8 drawAtPoint:x, y];
}

@end