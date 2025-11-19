@interface SiriUIReusableSubtitledHeaderView
- (NSString)subtitleText;
- (SiriUIReusableSubtitledHeaderView)initWithFrame:(CGRect)a3;
- (double)desiredHeightForWidth:(double)a3;
- (void)_configureSubTitleLabelForBounds:(CGRect)a3;
- (void)layoutSubviews;
- (void)setAttributedSubtitleText:(id)a3;
- (void)setSubtitleText:(id)a3;
@end

@implementation SiriUIReusableSubtitledHeaderView

- (SiriUIReusableSubtitledHeaderView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = SiriUIReusableSubtitledHeaderView;
  v3 = [(SiriUIReusableHeaderView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D60108] labelWithSubtitleFont];
    subtitleLabel = v3->_subtitleLabel;
    v3->_subtitleLabel = v4;

    [(SiriUIReusableSubtitledHeaderView *)v3 addSubview:v3->_subtitleLabel];
  }

  return v3;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SiriUIReusableSubtitledHeaderView;
  [(SiriUIReusableHeaderView *)&v3 layoutSubviews];
  [(SiriUIReusableSubtitledHeaderView *)self bounds];
  [(SiriUIReusableSubtitledHeaderView *)self _configureSubTitleLabelForBounds:?];
}

- (void)setSubtitleText:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x277CCA898];
    v5 = a3;
    v6 = [[v4 alloc] initWithString:v5];
  }

  else
  {
    v6 = 0;
  }

  [(SiriUIReusableSubtitledHeaderView *)self setAttributedSubtitleText:v6];
}

- (NSString)subtitleText
{
  v2 = [(SiriUIReusableSubtitledHeaderView *)self attributedSubtitleText];
  v3 = [v2 string];

  return v3;
}

- (void)setAttributedSubtitleText:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  attributedSubtitleText = self->_attributedSubtitleText;
  self->_attributedSubtitleText = v5;

  [(UILabel *)self->_subtitleLabel setAttributedText:v4];

  [(SiriUIReusableSubtitledHeaderView *)self setNeedsLayout];
}

- (void)_configureSubTitleLabelForBounds:(CGRect)a3
{
  height = a3.size.height;
  y = a3.origin.y;
  x = a3.origin.x;
  v6 = a3.size.width - (8.0 + 8.0);
  [(UILabel *)self->_subtitleLabel setNumberOfLines:1];
  v7 = [(UILabel *)self->_subtitleLabel attributedText];
  v14 = [v7 mutableCopy];

  if (v14)
  {
    v8 = objc_alloc_init(MEMORY[0x277D74240]);
    [v8 setLineSpacing:0.0];
    [v8 setMinimumLineHeight:20.0];
    [v8 setMaximumLineHeight:20.0];
    [v8 setAlignment:1];
    v9 = *MEMORY[0x277D74118];
    v10 = [v14 string];
    [v14 addAttribute:v9 value:v8 range:{0, objc_msgSend(v10, "length")}];

    [(UILabel *)self->_subtitleLabel setAttributedText:v14];
  }

  [(UILabel *)self->_subtitleLabel sizeThatFits:1.79769313e308, 1.79769313e308];
  if (v11 > v6)
  {
    [(UILabel *)self->_subtitleLabel setNumberOfLines:3];
    [(UILabel *)self->_subtitleLabel sizeThatFits:v6, height - (10.0 + 10.0)];
  }

  v16.origin.y = y + 10.0;
  v16.origin.x = x + 8.0;
  v16.size.width = v6;
  v16.size.height = height - (10.0 + 10.0);
  CGRectGetMaxY(v16);
  v12 = [MEMORY[0x277D759A0] mainScreen];
  [v12 scale];

  UIRectCenteredXInRect();
  [(UILabel *)self->_subtitleLabel setFrame:?];
}

- (double)desiredHeightForWidth:(double)a3
{
  [(SiriUIReusableSubtitledHeaderView *)self _configureSubTitleLabelForBounds:0.0, 0.0, a3, 1.79769313e308];
  [(UILabel *)self->_subtitleLabel frame];
  v6 = v5;
  if ([(UILabel *)self->_subtitleLabel numberOfLines]== 1)
  {
    v21.receiver = self;
    v21.super_class = SiriUIReusableSubtitledHeaderView;
    [(SiriUIReusableHeaderView *)&v21 desiredHeightForWidth:a3];
    v8 = v7;
    [objc_opt_class() defaultHeight];
    v10 = v8 + v9;
    +[SiriUIReusableHeaderView defaultHeight];
    return v10 - v11;
  }

  else
  {
    v20.receiver = self;
    v20.super_class = SiriUIReusableSubtitledHeaderView;
    [(SiriUIReusableHeaderView *)&v20 desiredHeightForWidth:a3];
    v14 = v6 + v13;
    v15 = [MEMORY[0x277D759A0] mainScreen];
    [v15 scale];
    v17 = v16 < 2.0;
    v18 = 1.5;
    if (v17)
    {
      v18 = 2.0;
    }

    v12 = v14 + v18;
  }

  return v12;
}

@end