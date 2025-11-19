@interface IntelligenceUI.RotaryPlaceholderLabel
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
@end

@implementation IntelligenceUI.RotaryPlaceholderLabel

- (CGSize)intrinsicContentSize
{
  v2 = self;

  v3 = sub_189144794();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(IntelligenceUI.RotaryPlaceholderLabel *)self intrinsicContentSize:a3.width];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  IntelligenceUI.RotaryPlaceholderLabel.layoutSubviews()();
}

@end