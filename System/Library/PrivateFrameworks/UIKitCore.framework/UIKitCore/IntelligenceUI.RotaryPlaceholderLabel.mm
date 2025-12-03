@interface IntelligenceUI.RotaryPlaceholderLabel
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
@end

@implementation IntelligenceUI.RotaryPlaceholderLabel

- (CGSize)intrinsicContentSize
{
  selfCopy = self;

  v3 = sub_189144794();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(IntelligenceUI.RotaryPlaceholderLabel *)self intrinsicContentSize:fits.width];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  IntelligenceUI.RotaryPlaceholderLabel.layoutSubviews()();
}

@end