@interface UIAccessibilityCustomRotorItemResult(AXPrivate)
- (void)initWithTargetElement:()AXPrivate targetRange:targetTextMarkerRange:;
@end

@implementation UIAccessibilityCustomRotorItemResult(AXPrivate)

- (void)initWithTargetElement:()AXPrivate targetRange:targetTextMarkerRange:
{
  v8 = a5;
  v9 = [self initWithTargetElement:a3 targetRange:a4];
  [v9 setTargetTextMarkerRange:v8];

  return v9;
}

@end