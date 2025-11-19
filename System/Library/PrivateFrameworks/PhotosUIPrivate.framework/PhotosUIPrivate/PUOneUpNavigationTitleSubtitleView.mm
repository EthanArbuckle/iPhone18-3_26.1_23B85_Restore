@interface PUOneUpNavigationTitleSubtitleView
- (CGSize)intrinsicContentSize;
- (void)didTapGlassTitleSubtitleView;
- (void)layoutSubviews;
- (void)setVisibility:(BOOL)a3;
- (void)updateLabelFonts;
- (void)updatePreferredHeight;
@end

@implementation PUOneUpNavigationTitleSubtitleView

- (void)setVisibility:(BOOL)a3
{
  v4 = self;
  sub_1B3843D98(a3);
}

- (void)updateLabelFonts
{
  v2 = self;
  sub_1B3843EB4();
}

- (void)updatePreferredHeight
{
  v2 = self;
  sub_1B3843F70();
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
  sub_1B38446B4();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1B3844734();
}

- (void)didTapGlassTitleSubtitleView
{
  v2 = self;
  sub_1B384483C();
}

@end