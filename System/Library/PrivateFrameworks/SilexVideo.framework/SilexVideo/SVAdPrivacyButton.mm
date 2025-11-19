@interface SVAdPrivacyButton
+ (CGSize)size;
+ (double)height;
+ (id)font;
+ (id)title;
- (CGSize)intrinsicContentSize;
- (SVAdPrivacyButton)initWithFrame:(CGRect)a3;
- (id)accessibilityLabel;
@end

@implementation SVAdPrivacyButton

+ (id)title
{
  v2 = SVBundle();
  v3 = [v2 localizedStringForKey:@"Ad" value:&stru_2877C2D00 table:0];

  return v3;
}

+ (id)font
{
  v2 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D76968]];
  v3 = [MEMORY[0x277D74300] systemFontOfSize:13.0 weight:*MEMORY[0x277D74420]];
  v4 = [v2 scaledFontForFont:v3];

  return v4;
}

+ (double)height
{
  v2 = [a1 font];
  [v2 capHeight];
  v4 = round(v3) + 12.0;

  return v4;
}

+ (CGSize)size
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = +[SVAdPrivacyButton title];
  v11 = *MEMORY[0x277D740A8];
  v3 = +[SVAdPrivacyButton font];
  v12[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  [v2 sizeWithAttributes:v4];
  v6 = v5;

  +[SVAdPrivacyButton height];
  v7 = *MEMORY[0x277D85DE8];
  v9 = v8;
  v10 = v6 + 12.0;
  result.height = v9;
  result.width = v10;
  return result;
}

- (SVAdPrivacyButton)initWithFrame:(CGRect)a3
{
  v14.receiver = self;
  v14.super_class = SVAdPrivacyButton;
  v3 = [(SVButton *)&v14 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(SVAdPrivacyButton *)v3 titleLabel];
    [v5 setAdjustsFontForContentSizeCategory:1];

    v6 = +[SVAdPrivacyButton title];
    [(SVAdPrivacyButton *)v4 setTitle:v6 forState:0];

    v7 = +[SVAdPrivacyButton font];
    v8 = [(SVAdPrivacyButton *)v4 titleLabel];
    [v8 setFont:v7];

    v9 = [(SVAdPrivacyButton *)v4 titleLabel];
    [v9 setTextAlignment:1];

    v10 = [MEMORY[0x277D75348] whiteColor];
    [(SVAdPrivacyButton *)v4 setTitleColor:v10 forState:0];

    v11 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.2];
    [(SVAdPrivacyButton *)v4 setTitleColor:v11 forState:1];

    v12 = [MEMORY[0x277D75348] systemTealColor];
    [(SVAdPrivacyButton *)v4 setBackgroundColor:v12];

    [(SVAdPrivacyButton *)v4 _setContinuousCornerRadius:6.0];
    [(SVButton *)v4 setTouchInsets:-10.0, -10.0, -10.0, -10.0];
  }

  return v4;
}

- (CGSize)intrinsicContentSize
{
  +[SVAdPrivacyButton height];
  v4 = v3;
  v5 = [(SVAdPrivacyButton *)self titleLabel];
  [v5 intrinsicContentSize];
  v7 = v6 + 14.0;

  v8 = v7;
  v9 = v4;
  result.height = v9;
  result.width = v8;
  return result;
}

- (id)accessibilityLabel
{
  v2 = [(SVAdPrivacyButton *)self titleLabel];
  v3 = [v2 text];

  return v3;
}

@end