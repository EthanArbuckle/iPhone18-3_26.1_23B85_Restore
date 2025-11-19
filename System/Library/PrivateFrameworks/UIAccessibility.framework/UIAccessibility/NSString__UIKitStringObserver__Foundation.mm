@interface NSString__UIKitStringObserver__Foundation
- (void)drawAtPoint:(CGPoint)a3 withAttributes:(id)a4;
@end

@implementation NSString__UIKitStringObserver__Foundation

- (void)drawAtPoint:(CGPoint)a3 withAttributes:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if (AXCaptureStringDrawingText == 1)
  {
    [AXCapturedString appendString:self];
  }

  v8.receiver = self;
  v8.super_class = NSString__UIKitStringObserver__Foundation;
  [(NSString__UIKitStringObserver__Foundation *)&v8 drawAtPoint:v7 withAttributes:x, y];
}

@end