@interface _UIStatusBarVisualProvider_RoundedPad
+ (NSDirectionalEdgeInsets)edgeInsets;
+ (UIEdgeInsets)regionCursorInsets;
- (CGSize)pillSize;
- (CGSize)smallPillSize;
- (id)pillFont;
- (id)pillSmallFont;
@end

@implementation _UIStatusBarVisualProvider_RoundedPad

- (CGSize)pillSize
{
  v2 = 48.0;
  v3 = 18.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)smallPillSize
{
  v2 = 18.0;
  v3 = 18.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)pillFont
{
  v2 = _AXSEnhanceTextLegibilityEnabled() != 0;
  v3 = unk_1ED499050;
  if (unk_1ED499050)
  {
    v4 = byte_1ED499025 == v2;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    byte_1ED499025 = v2;
    v5 = [off_1E70ECC18 systemFontOfSize:12.0 weight:*off_1E70ECD30];
    v6 = unk_1ED499050;
    unk_1ED499050 = v5;

    v3 = unk_1ED499050;
  }

  return v3;
}

- (id)pillSmallFont
{
  v2 = _AXSEnhanceTextLegibilityEnabled() != 0;
  v3 = unk_1ED499058;
  if (unk_1ED499058)
  {
    v4 = byte_1ED499026 == v2;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    byte_1ED499026 = v2;
    v5 = [off_1E70ECC18 systemFontOfSize:11.0 weight:*off_1E70ECD08];
    v6 = unk_1ED499058;
    unk_1ED499058 = v5;

    v3 = unk_1ED499058;
  }

  return v3;
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