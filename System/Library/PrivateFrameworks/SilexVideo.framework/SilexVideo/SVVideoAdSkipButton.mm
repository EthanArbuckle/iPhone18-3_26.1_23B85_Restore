@interface SVVideoAdSkipButton
- (CGSize)intrinsicContentSize;
- (SVVideoAdSkipButton)initWithFrame:(CGRect)a3;
- (id)titleForDuration:(unint64_t)a3;
- (void)setMode:(int)a3;
- (void)setSkipDuration:(unint64_t)a3;
- (void)updateHeight;
@end

@implementation SVVideoAdSkipButton

- (SVVideoAdSkipButton)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = SVVideoAdSkipButton;
  v3 = [(SVButton *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_mode = 0;
    v5 = [(SVVideoAdSkipButton *)v3 titleForDuration:0];
    [(SVVideoAdSkipButton *)v4 setAttributedTitle:v5 forState:0];
    [(SVVideoAdSkipButton *)v4 setEnabled:0];
    [(SVButton *)v4 setTouchInsets:10.0, 10.0, 10.0, 10.0];
    if (_UISolariumFeatureFlagEnabled())
    {
      [(UIView *)v4 sv_setGlassBackground];
    }

    [(SVVideoAdSkipButton *)v4 updateHeight];
  }

  return v4;
}

- (void)updateHeight
{
  if (_UISolariumFeatureFlagEnabled())
  {
    v3 = [(SVVideoAdSkipButton *)self playerState];
    [v3 customControlHeight];
    [(SVVideoAdSkipButton *)self setHeight:?];

    [(SVVideoAdSkipButton *)self invalidateIntrinsicContentSize];
  }
}

- (CGSize)intrinsicContentSize
{
  v3 = [(SVVideoAdSkipButton *)self titleLabel];
  [v3 intrinsicContentSize];
  v5 = v4;

  if (_UISolariumFeatureFlagEnabled())
  {
    [(SVVideoAdSkipButton *)self height];
    v7 = v6;
    v8 = 32.0;
  }

  else
  {
    v9 = [(SVVideoAdSkipButton *)self titleLabel];
    v10 = [v9 font];
    [v10 capHeight];
    v7 = round(v11) + 12.0;

    v8 = 6.0;
  }

  v12 = v5 + v8;
  v13 = v7;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)setSkipDuration:(unint64_t)a3
{
  self->_skipDuration = a3;
  [(SVVideoAdSkipButton *)self setEnabled:a3 == 0];
  v5 = [(SVVideoAdSkipButton *)self titleForDuration:a3];
  [(SVVideoAdSkipButton *)self setAttributedTitle:v5 forState:0];
}

- (void)setMode:(int)a3
{
  self->_mode = a3;
  v4 = [(SVVideoAdSkipButton *)self titleForDuration:[(SVVideoAdSkipButton *)self skipDuration]];
  [(SVVideoAdSkipButton *)self setAttributedTitle:v4 forState:0];
}

- (id)titleForDuration:(unint64_t)a3
{
  v42[1] = *MEMORY[0x277D85DE8];
  v4 = a3 + 1;
  v5 = [(SVVideoAdSkipButton *)self mode];
  if (v4 > 1)
  {
    if (v5)
    {
      v7 = MEMORY[0x277CCACA8];
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
      [v7 stringWithFormat:@"%@", v8];
    }

    else
    {
      v11 = SVBundle();
      v8 = [v11 localizedStringForKey:@"Skip in %lu" value:&stru_2877C2D00 table:0];

      [MEMORY[0x277CCACA8] stringWithFormat:v8, a3];
    }
    v6 = ;

    v10 = [MEMORY[0x277D75348] colorWithRed:0.921568627 green:0.921568627 blue:0.960784314 alpha:0.6];
  }

  else
  {
    if (v5)
    {
      v6 = &stru_2877C2D00;
    }

    else
    {
      v9 = SVBundle();
      v6 = [v9 localizedStringForKey:@"Skip" value:&stru_2877C2D00 table:0];
    }

    v10 = [MEMORY[0x277D75348] whiteColor];
  }

  v12 = v10;
  v13 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v6];
  v14 = _UISolariumFeatureFlagEnabled();
  v15 = MEMORY[0x277D769D0];
  if (v14)
  {
    v16 = MEMORY[0x277D74410];
  }

  else
  {
    v15 = MEMORY[0x277D76968];
    v16 = MEMORY[0x277D74420];
  }

  v17 = [MEMORY[0x277D75520] metricsForTextStyle:*v15];
  v18 = [MEMORY[0x277D74300] systemFontOfSize:13.0 weight:*v16];
  v39 = v17;
  v19 = [v17 scaledFontForFont:v18];

  [v13 addAttribute:*MEMORY[0x277D740A8] value:v19 range:{0, objc_msgSend(v13, "length")}];
  [v13 addAttribute:*MEMORY[0x277D740C0] value:v12 range:{0, objc_msgSend(v13, "length")}];
  v40 = v6;
  if ([(__CFString *)v6 length])
  {
    v20 = objc_alloc_init(MEMORY[0x277D74270]);
    [v20 setBounds:{0.0, 0.0, 3.0, 0.0}];
    v21 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v20];
    [v13 appendAttributedString:v21];
  }

  if (_UISolariumFeatureFlagEnabled())
  {
    v22 = 5;
  }

  else
  {
    v22 = 6;
  }

  v23 = [MEMORY[0x277D755D0] configurationWithPointSize:v22 weight:13.0];
  v24 = [MEMORY[0x277D755B8] systemImageNamed:@"forward.end.fill" withConfiguration:v23];
  v25 = [v24 imageWithTintColor:v12];

  v26 = objc_alloc_init(MEMORY[0x277D74270]);
  [v26 setImage:v25];
  [v25 size];
  v28 = v27;
  v30 = v29;
  [v19 capHeight];
  v32 = v31 - v30;
  v41 = *MEMORY[0x277D74078];
  v33 = [MEMORY[0x277CCABB0] numberWithDouble:v31 - v30];
  v42[0] = v33;
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:&v41 count:1];

  [v26 setBounds:{0.0, v32 * -0.5, v28, v30}];
  v35 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v26 attributes:v34];
  [v13 appendAttributedString:v35];
  v36 = objc_alloc_init(MEMORY[0x277D74240]);
  [v36 setAlignment:1];
  [v13 addAttribute:*MEMORY[0x277D74118] value:v36 range:{0, objc_msgSend(v13, "length")}];

  v37 = *MEMORY[0x277D85DE8];

  return v13;
}

@end