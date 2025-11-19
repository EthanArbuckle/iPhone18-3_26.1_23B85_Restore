@interface CanonicalInfoCardView
- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4;
- (FocusableTextView)accessibilityDescriptionLabel;
- (VUIImageView)accessibilityImageView;
- (VUILabel)accessibilitySubtitleLabel;
- (VUILabel)accessibilityTitleLabel;
- (_TtC8VideosUI20TomatometerTableView)accessibilityTableView;
- (void)vui_prepareForReuse;
@end

@implementation CanonicalInfoCardView

- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4
{
  v4 = a4;
  width = a3.width;
  v6 = self;
  v7 = sub_1E3B1C510(v4, width);
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)vui_prepareForReuse
{
  v2 = self;
  sub_1E3B1D73C();
}

- (VUILabel)accessibilityTitleLabel
{
  v2 = sub_1E3B1C38C();

  return v2;
}

- (VUILabel)accessibilitySubtitleLabel
{
  v2 = sub_1E3B1C3D4();

  return v2;
}

- (FocusableTextView)accessibilityDescriptionLabel
{
  v2 = sub_1E3B1C41C();

  return v2;
}

- (VUIImageView)accessibilityImageView
{
  v2 = sub_1E3B1D94C();

  return v2;
}

- (_TtC8VideosUI20TomatometerTableView)accessibilityTableView
{
  v2 = sub_1E3B1D9BC();

  return v2;
}

@end