@interface WFMultilineBackgroundFadingButton
- (CGSize)intrinsicContentSize;
- (WFMultilineBackgroundFadingButton)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation WFMultilineBackgroundFadingButton

- (void)layoutSubviews
{
  [(WFMultilineBackgroundFadingButton *)self frame];
  v4 = v3;
  [(WFMultilineBackgroundFadingButton *)self contentEdgeInsets];
  v6 = v4 - v5;
  [(WFMultilineBackgroundFadingButton *)self contentEdgeInsets];
  v8 = v6 - v7;
  titleLabel = [(WFMultilineBackgroundFadingButton *)self titleLabel];
  [titleLabel setPreferredMaxLayoutWidth:v8];

  v10.receiver = self;
  v10.super_class = WFMultilineBackgroundFadingButton;
  [(WFMultilineBackgroundFadingButton *)&v10 layoutSubviews];
}

- (CGSize)intrinsicContentSize
{
  titleLabel = [(WFMultilineBackgroundFadingButton *)self titleLabel];
  [titleLabel intrinsicContentSize];
  v5 = v4;
  v7 = v6;

  [(WFMultilineBackgroundFadingButton *)self contentEdgeInsets];
  v10 = v7 + v8 + v9;
  v13 = v5 + v11 + v12;
  v14 = v10;
  result.height = v14;
  result.width = v13;
  return result;
}

- (WFMultilineBackgroundFadingButton)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = WFMultilineBackgroundFadingButton;
  v3 = [(WFMultilineBackgroundFadingButton *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    titleLabel = [(WFMultilineBackgroundFadingButton *)v3 titleLabel];
    [titleLabel setLineBreakMode:0];

    titleLabel2 = [(WFMultilineBackgroundFadingButton *)v4 titleLabel];
    [titleLabel2 setTextAlignment:1];

    titleLabel3 = [(WFMultilineBackgroundFadingButton *)v4 titleLabel];
    [titleLabel3 setNumberOfLines:0];

    v8 = v4;
  }

  return v4;
}

@end