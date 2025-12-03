@interface SiriUIReusableSubtitledHeaderView
- (NSString)subtitleText;
- (SiriUIReusableSubtitledHeaderView)initWithFrame:(CGRect)frame;
- (double)desiredHeightForWidth:(double)width;
- (void)_configureSubTitleLabelForBounds:(CGRect)bounds;
- (void)layoutSubviews;
- (void)setAttributedSubtitleText:(id)text;
- (void)setSubtitleText:(id)text;
@end

@implementation SiriUIReusableSubtitledHeaderView

- (SiriUIReusableSubtitledHeaderView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = SiriUIReusableSubtitledHeaderView;
  v3 = [(SiriUIReusableHeaderView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    labelWithSubtitleFont = [MEMORY[0x277D60108] labelWithSubtitleFont];
    subtitleLabel = v3->_subtitleLabel;
    v3->_subtitleLabel = labelWithSubtitleFont;

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

- (void)setSubtitleText:(id)text
{
  if (text)
  {
    v4 = MEMORY[0x277CCA898];
    textCopy = text;
    v6 = [[v4 alloc] initWithString:textCopy];
  }

  else
  {
    v6 = 0;
  }

  [(SiriUIReusableSubtitledHeaderView *)self setAttributedSubtitleText:v6];
}

- (NSString)subtitleText
{
  attributedSubtitleText = [(SiriUIReusableSubtitledHeaderView *)self attributedSubtitleText];
  string = [attributedSubtitleText string];

  return string;
}

- (void)setAttributedSubtitleText:(id)text
{
  textCopy = text;
  v5 = [textCopy copy];
  attributedSubtitleText = self->_attributedSubtitleText;
  self->_attributedSubtitleText = v5;

  [(UILabel *)self->_subtitleLabel setAttributedText:textCopy];

  [(SiriUIReusableSubtitledHeaderView *)self setNeedsLayout];
}

- (void)_configureSubTitleLabelForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v6 = bounds.size.width - (8.0 + 8.0);
  [(UILabel *)self->_subtitleLabel setNumberOfLines:1];
  attributedText = [(UILabel *)self->_subtitleLabel attributedText];
  v14 = [attributedText mutableCopy];

  if (v14)
  {
    v8 = objc_alloc_init(MEMORY[0x277D74240]);
    [v8 setLineSpacing:0.0];
    [v8 setMinimumLineHeight:20.0];
    [v8 setMaximumLineHeight:20.0];
    [v8 setAlignment:1];
    v9 = *MEMORY[0x277D74118];
    string = [v14 string];
    [v14 addAttribute:v9 value:v8 range:{0, objc_msgSend(string, "length")}];

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
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];

  UIRectCenteredXInRect();
  [(UILabel *)self->_subtitleLabel setFrame:?];
}

- (double)desiredHeightForWidth:(double)width
{
  [(SiriUIReusableSubtitledHeaderView *)self _configureSubTitleLabelForBounds:0.0, 0.0, width, 1.79769313e308];
  [(UILabel *)self->_subtitleLabel frame];
  v6 = v5;
  if ([(UILabel *)self->_subtitleLabel numberOfLines]== 1)
  {
    v21.receiver = self;
    v21.super_class = SiriUIReusableSubtitledHeaderView;
    [(SiriUIReusableHeaderView *)&v21 desiredHeightForWidth:width];
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
    [(SiriUIReusableHeaderView *)&v20 desiredHeightForWidth:width];
    v14 = v6 + v13;
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
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