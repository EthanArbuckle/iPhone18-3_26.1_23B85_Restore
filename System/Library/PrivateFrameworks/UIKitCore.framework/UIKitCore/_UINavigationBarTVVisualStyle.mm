@interface _UINavigationBarTVVisualStyle
- (UIEdgeInsets)buttonContentEdgeInsets;
- (double)headingFontSize;
- (double)navigationItemBaselineOffset;
- (id)defaultTitleColorForUserInterfaceStyle:(int64_t)a3 barStyle:(int64_t)a4;
@end

@implementation _UINavigationBarTVVisualStyle

- (double)headingFontSize
{
  v2 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleTitle2"];
  [v2 pointSize];
  v4 = v3;

  return v4;
}

- (double)navigationItemBaselineOffset
{
  [(_UINavigationBarTVVisualStyle *)self buttonContentEdgeInsets];
  v4 = v3;
  [(_UINavigationBarTVVisualStyle *)self topMargin];
  return v4 + v5 + 2.0;
}

- (UIEdgeInsets)buttonContentEdgeInsets
{
  v2 = 40.0;
  v3 = 20.0;
  v4 = 20.0;
  v5 = 40.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v2;
  result.top = v3;
  return result;
}

- (id)defaultTitleColorForUserInterfaceStyle:(int64_t)a3 barStyle:(int64_t)a4
{
  if (a3 == 2)
  {
    v4 = 1.0;
    v5 = 0.25;
  }

  else
  {
    v5 = 0.4;
    v4 = 0.0;
  }

  v6 = [UIColor colorWithWhite:v4 alpha:v5];

  return v6;
}

@end