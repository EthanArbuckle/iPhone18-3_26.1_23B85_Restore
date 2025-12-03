@interface NSAttributedString__UIKitStringObserver__Foundation
- (void)drawAtPoint:(CGPoint)point;
@end

@implementation NSAttributedString__UIKitStringObserver__Foundation

- (void)drawAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if (AXCaptureStringDrawingText == 1)
  {
    v6 = AXCapturedString;
    string = [(NSAttributedString__UIKitStringObserver__Foundation *)self string];
    [v6 appendString:string];
  }

  v8.receiver = self;
  v8.super_class = NSAttributedString__UIKitStringObserver__Foundation;
  [(NSAttributedString__UIKitStringObserver__Foundation *)&v8 drawAtPoint:x, y];
}

@end