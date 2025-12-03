@interface AttributionTextViewUIKit
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)handleSelected:(id)selected;
- (void)layoutSubviews;
@end

@implementation AttributionTextViewUIKit

- (void)handleSelected:(id)selected
{
  selectedCopy = selected;
  selfCopy = self;
  sub_1E4000460(selectedCopy);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  selfCopy = self;
  v5 = sub_1E4000730(width);
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1E4000EC8();
}

@end