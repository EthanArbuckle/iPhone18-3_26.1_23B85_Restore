@interface UIKBKeyViewAnimatorDeveloper
- (CGRect)primaryGlyphNormalizedExitRect;
- (CGRect)secondaryGlyphNormalizedExitRect;
@end

@implementation UIKBKeyViewAnimatorDeveloper

- (CGRect)primaryGlyphNormalizedExitRect
{
  v2 = 0.115;
  v3 = 0.7;
  v4 = 0.77;
  v5 = 0.44;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)secondaryGlyphNormalizedExitRect
{
  v2 = 0.13;
  v3 = 0.286;
  v4 = 0.25;
  v5 = 0.5;
  result.size.height = v3;
  result.size.width = v5;
  result.origin.y = v2;
  result.origin.x = v4;
  return result;
}

@end