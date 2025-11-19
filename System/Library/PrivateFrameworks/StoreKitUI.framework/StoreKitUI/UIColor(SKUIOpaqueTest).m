@interface UIColor(SKUIOpaqueTest)
- (BOOL)skui_isOpaque;
@end

@implementation UIColor(SKUIOpaqueTest)

- (BOOL)skui_isOpaque
{
  v2 = 0.0;
  [a1 getWhite:0 alpha:&v2];
  return v2 >= 1.0;
}

@end