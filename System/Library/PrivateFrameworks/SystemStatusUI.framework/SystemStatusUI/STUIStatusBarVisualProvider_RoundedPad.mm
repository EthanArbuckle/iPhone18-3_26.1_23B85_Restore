@interface STUIStatusBarVisualProvider_RoundedPad
+ (NSDirectionalEdgeInsets)edgeInsets;
+ (UIEdgeInsets)regionCursorInsets;
+ (double)baselineOffset;
+ (double)expandedBaselineOffset;
+ (double)height;
- (CGSize)pillSize;
- (CGSize)smallPillSize;
@end

@implementation STUIStatusBarVisualProvider_RoundedPad

+ (double)height
{
  v3 = 24.0;
  if (_UIEnhancedMainMenuEnabled())
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___STUIStatusBarVisualProvider_RoundedPad;
    objc_msgSendSuper2(&v6, sel_height);
    return v4;
  }

  return v3;
}

+ (double)baselineOffset
{
  v3 = 16.0;
  if (_UIEnhancedMainMenuEnabled())
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___STUIStatusBarVisualProvider_RoundedPad;
    objc_msgSendSuper2(&v6, sel_baselineOffset);
    return v4;
  }

  return v3;
}

+ (double)expandedBaselineOffset
{
  v3 = 16.0;
  if ((_UIEnhancedMainMenuEnabled() & 1) == 0)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___STUIStatusBarVisualProvider_RoundedPad;
    objc_msgSendSuper2(&v6, sel_expandedBaselineOffset);
    return v4;
  }

  return v3;
}

- (CGSize)pillSize
{
  if (_UIEnhancedMainMenuEnabled())
  {
    v5.receiver = self;
    v5.super_class = STUIStatusBarVisualProvider_RoundedPad;
    [(STUIStatusBarVisualProvider_Pad *)&v5 pillSize];
  }

  else
  {
    v4 = 18.0;
    v3 = 48.0;
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)smallPillSize
{
  v3 = 18.0;
  v4 = _UIEnhancedMainMenuEnabled();
  v5 = 18.0;
  if (v4)
  {
    v8.receiver = self;
    v8.super_class = STUIStatusBarVisualProvider_RoundedPad;
    [(STUIStatusBarVisualProvider_Pad *)&v8 smallPillSize];
    v3 = v6;
  }

  v7 = v3;
  result.height = v5;
  result.width = v7;
  return result;
}

+ (NSDirectionalEdgeInsets)edgeInsets
{
  v2 = 0.0;
  v3 = 16.0;
  v4 = 0.0;
  v5 = 15.0;
  result.trailing = v5;
  result.bottom = v4;
  result.leading = v3;
  result.top = v2;
  return result;
}

+ (UIEdgeInsets)regionCursorInsets
{
  v2 = -2.0;
  v3 = -8.0;
  v4 = -2.0;
  v5 = -8.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

@end