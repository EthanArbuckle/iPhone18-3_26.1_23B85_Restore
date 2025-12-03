@interface NSString__UIKitStringObserver__Foundation
- (void)drawAtPoint:(CGPoint)point withAttributes:(id)attributes;
@end

@implementation NSString__UIKitStringObserver__Foundation

- (void)drawAtPoint:(CGPoint)point withAttributes:(id)attributes
{
  y = point.y;
  x = point.x;
  attributesCopy = attributes;
  if (AXCaptureStringDrawingText == 1)
  {
    [AXCapturedString appendString:self];
  }

  v8.receiver = self;
  v8.super_class = NSString__UIKitStringObserver__Foundation;
  [(NSString__UIKitStringObserver__Foundation *)&v8 drawAtPoint:attributesCopy withAttributes:x, y];
}

@end