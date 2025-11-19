@interface SVLearnMoreButton
- (CGSize)intrinsicContentSize;
- (SVLearnMoreButton)initWithFrame:(CGRect)a3;
- (id)accessibilityLabel;
- (void)setHighlighted:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateHeight;
@end

@implementation SVLearnMoreButton

- (SVLearnMoreButton)initWithFrame:(CGRect)a3
{
  v26.receiver = self;
  v26.super_class = SVLearnMoreButton;
  v3 = [(SVButton *)&v26 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = _UISolariumFeatureFlagEnabled();
    v5 = MEMORY[0x277D769D0];
    if (v4)
    {
      v6 = MEMORY[0x277D74410];
    }

    else
    {
      v5 = MEMORY[0x277D76968];
      v6 = MEMORY[0x277D74420];
    }

    v7 = [MEMORY[0x277D75520] metricsForTextStyle:*v5];
    v8 = [MEMORY[0x277D74300] systemFontOfSize:13.0 weight:*v6];
    v9 = [v7 scaledFontForFont:v8];

    v10 = SVBundle();
    v11 = [v10 localizedStringForKey:@"Learn More" value:&stru_2877C2D00 table:0];

    v12 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v11];
    [v12 addAttribute:*MEMORY[0x277D740A8] value:v9 range:{0, objc_msgSend(v11, "length")}];
    v13 = *MEMORY[0x277D740C0];
    v14 = [MEMORY[0x277D75348] whiteColor];
    [v12 addAttribute:v13 value:v14 range:{0, objc_msgSend(v11, "length")}];

    if (_UISolariumFeatureFlagEnabled())
    {
      [(UIView *)v3 sv_setGlassBackground];
    }

    else
    {
      v15 = objc_alloc_init(MEMORY[0x277D74270]);
      [v15 setBounds:{0.0, 0.0, 3.0, 0.0}];
      v16 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v15];
      [v12 appendAttributedString:v16];
      [MEMORY[0x277D755D0] configurationWithPointSize:6 weight:13.0];
      v17 = v25 = v7;
      v18 = [MEMORY[0x277D755B8] systemImageNamed:@"chevron.right" withConfiguration:v17];
      v19 = [MEMORY[0x277D75348] colorWithRed:0.921568627 green:0.921568627 blue:0.960784314 alpha:0.6];
      v20 = [v18 imageWithTintColor:v19];

      v21 = objc_alloc_init(MEMORY[0x277D74270]);
      [v21 setImage:v20];
      v22 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v21];
      [v12 appendAttributedString:v22];

      v7 = v25;
    }

    v23 = objc_alloc_init(MEMORY[0x277D74240]);
    [v23 setAlignment:1];
    [v12 addAttribute:*MEMORY[0x277D74118] value:v23 range:{0, objc_msgSend(v12, "length")}];
    [(SVLearnMoreButton *)v3 setAttributedTitle:v12 forState:0];
    [(SVButton *)v3 setTouchInsets:-10.0, -10.0, -10.0, -10.0];
    [(SVLearnMoreButton *)v3 updateHeight];
  }

  return v3;
}

- (void)updateHeight
{
  if (_UISolariumFeatureFlagEnabled())
  {
    v3 = [(SVLearnMoreButton *)self playerState];
    [v3 customControlHeight];
    [(SVLearnMoreButton *)self setHeight:?];

    [(SVLearnMoreButton *)self invalidateIntrinsicContentSize];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = SVLearnMoreButton;
  [(SVLearnMoreButton *)&v7 setHighlighted:?];
  if (v3)
  {
    v5 = 0.2;
  }

  else
  {
    v5 = 1.0;
  }

  v6 = [(SVLearnMoreButton *)self titleLabel];
  [v6 setAlpha:v5];
}

- (CGSize)intrinsicContentSize
{
  v3 = [(SVLearnMoreButton *)self titleLabel];
  [v3 intrinsicContentSize];
  v5 = v4;

  if (_UISolariumFeatureFlagEnabled())
  {
    [(SVLearnMoreButton *)self height];
    v7 = v6;
    v8 = 32.0;
  }

  else
  {
    v9 = [(SVLearnMoreButton *)self titleLabel];
    v10 = [v9 font];
    [v10 capHeight];
    v7 = round(v11) + 12.0;

    v8 = 20.0;
  }

  v12 = v5 + v8;
  v13 = v7;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v5 = [(SVLearnMoreButton *)self traitCollection];
  v11 = [v5 preferredContentSizeCategory];

  v6 = [v4 preferredContentSizeCategory];

  if (!SVContentSizeCategoryIsEqualToContentSizeCategory(v11, v6))
  {
    v7 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D76968]];
    v8 = [MEMORY[0x277D74300] systemFontOfSize:13.0 weight:*MEMORY[0x277D74420]];
    v9 = [v7 scaledFontForFont:v8];

    v10 = [(SVLearnMoreButton *)self titleLabel];
    [v10 setFont:v9];

    [(SVLearnMoreButton *)self invalidateIntrinsicContentSize];
  }
}

- (id)accessibilityLabel
{
  v2 = SVBundle();
  v3 = [v2 localizedStringForKey:@"Learn More" value:&stru_2877C2D00 table:0];

  return v3;
}

@end