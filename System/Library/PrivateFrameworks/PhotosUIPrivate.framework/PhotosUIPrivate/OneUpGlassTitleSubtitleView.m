@interface OneUpGlassTitleSubtitleView
- (CGSize)intrinsicContentSize;
- (void)layoutSubviews;
- (void)updateLabelFonts;
- (void)updateLabelTexts;
@end

@implementation OneUpGlassTitleSubtitleView

- (void)layoutSubviews
{
  v2 = self;
  sub_1B37301C4();
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
  v3 = sub_1B3730430();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)updateLabelTexts
{
  v2 = self;
  sub_1B37307E4();
}

- (void)updateLabelFonts
{
  v2 = self;
  sub_1B3730A98();
}

@end