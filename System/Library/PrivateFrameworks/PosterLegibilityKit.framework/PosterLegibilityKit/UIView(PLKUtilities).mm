@interface UIView(PLKUtilities)
- (uint64_t)plk_setBoundsAndPositionFromFrame:()PLKUtilities;
@end

@implementation UIView(PLKUtilities)

- (uint64_t)plk_setBoundsAndPositionFromFrame:()PLKUtilities
{
  [self bounds];
  [self setBounds:?];
  layer = [self layer];
  [layer anchorPoint];
  v12 = v11;
  v14 = v13;

  return [self setCenter:{a2 + v12 * a4, a3 + v14 * a5}];
}

@end