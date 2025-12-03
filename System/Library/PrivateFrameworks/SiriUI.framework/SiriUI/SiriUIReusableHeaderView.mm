@interface SiriUIReusableHeaderView
+ (id)reuseIdentifier;
- (SiriUIReusableHeaderView)initWithFrame:(CGRect)frame;
- (SiriUISnippetViewController)snippetViewController;
- (double)desiredHeightForWidth:(double)width;
- (void)_configureHeaderLabelForBounds:(CGRect)bounds;
- (void)layoutSubviews;
- (void)setSnippetViewController:(id)controller;
- (void)setTitleText:(id)text;
@end

@implementation SiriUIReusableHeaderView

- (SiriUIReusableHeaderView)initWithFrame:(CGRect)frame
{
  v13.receiver = self;
  v13.super_class = SiriUIReusableHeaderView;
  v3 = [(SiriUIReusableHeaderView *)&v13 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[SiriUIContentButton button];
    v5 = *(v3 + 71);
    *(v3 + 71) = v4;

    [v3 addSubview:*(v3 + 71)];
    labelWithHeaderFont = [MEMORY[0x277D60108] labelWithHeaderFont];
    v7 = *(v3 + 62);
    *(v3 + 62) = labelWithHeaderFont;

    [v3 addSubview:*(v3 + 62)];
    v8 = objc_alloc(MEMORY[0x277D755E8]);
    v9 = [MEMORY[0x277D755B8] siriui_semiTransparentChevronImageAndAllowNaturalLayout:1];
    v10 = [v8 initWithImage:v9];
    v11 = *(v3 + 67);
    *(v3 + 67) = v10;

    [v3 addSubview:*(v3 + 67)];
    *(v3 + 504) = SiriUIDefaultSnippetViewInsets;
    *(v3 + 520) = *&qword_2694DDF00;
  }

  return v3;
}

- (void)layoutSubviews
{
  v25.receiver = self;
  v25.super_class = SiriUIReusableHeaderView;
  [(SiriUIReusableHeaderView *)&v25 layoutSubviews];
  [(SiriUIReusableHeaderView *)self bounds];
  [(UIButton *)self->_headerAreaButton setFrame:?];
  [(SiriUIReusableHeaderView *)self bounds];
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  v6 = v5 + left;
  v8 = v7 + top;
  v10 = v9 - (left + self->_contentInsets.right);
  v12 = v11 - (top + self->_contentInsets.bottom);
  [(UIImageView *)self->_chevronView sizeThatFits:v10, v12];
  UIRectCenteredYInRect();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  if (!SiriUISystemLanguageIsRTL())
  {
    v26.origin.x = v6;
    v26.origin.y = v8;
    v26.size.width = v10;
    v26.size.height = v12;
    MaxX = CGRectGetMaxX(v26);
    v27.origin.x = v14;
    v27.origin.y = v16;
    v27.size.width = v18;
    v27.size.height = v20;
    v6 = MaxX - CGRectGetWidth(v27);
  }

  [(UIImageView *)self->_chevronView setFrame:v6, v16, v18, v20];
  [(SiriUIReusableHeaderView *)self bounds];
  [(SiriUIReusableHeaderView *)self _configureHeaderLabelForBounds:?];
  titleTextColor = [(SiriUIReusableHeaderView *)self titleTextColor];

  if (titleTextColor)
  {
    headerLabel = self->_headerLabel;
    titleTextColor2 = [(SiriUIReusableHeaderView *)self titleTextColor];
    [(UILabel *)headerLabel setTextColor:titleTextColor2];
  }
}

- (void)_configureHeaderLabelForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  v31[1] = *MEMORY[0x277D85DE8];
  top = self->_contentInsets.top;
  bottom = self->_contentInsets.bottom;
  v7 = bounds.size.width - (self->_contentInsets.left + self->_contentInsets.right);
  headerLabel = self->_headerLabel;
  siriui_headerFont = [MEMORY[0x277D74300] siriui_headerFont];
  [(UILabel *)headerLabel setFont:siriui_headerFont];

  [(UILabel *)self->_headerLabel setNumberOfLines:1];
  text = [(UILabel *)self->_headerLabel text];
  v11 = text;
  v12 = &stru_2879FFD58;
  if (text)
  {
    v12 = text;
  }

  v13 = v12;

  v14 = objc_alloc_init(MEMORY[0x277D74240]);
  [v14 setLineSpacing:0.0];
  [v14 setAlignment:1];
  v15 = objc_alloc(MEMORY[0x277CCA898]);
  v16 = *MEMORY[0x277D74118];
  v30 = *MEMORY[0x277D74118];
  v31[0] = v14;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
  v18 = [v15 initWithString:v13 attributes:v17];

  [(UILabel *)self->_headerLabel setAttributedText:v18];
  [(UILabel *)self->_headerLabel sizeThatFits:1.79769313e308, 1.79769313e308];
  if (v19 <= v7)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
  }

  else
  {
    v20 = self->_headerLabel;
    siriui_dynamicHeaderFont = [MEMORY[0x277D74300] siriui_dynamicHeaderFont];
    [(UILabel *)v20 setFont:siriui_dynamicHeaderFont];

    [(UILabel *)self->_headerLabel setNumberOfLines:3];
    mainScreen = objc_alloc_init(MEMORY[0x277D74240]);
    [mainScreen setLineSpacing:0.0];
    [mainScreen setMaximumLineHeight:36.0];
    [mainScreen setMinimumLineHeight:36.0];
    [mainScreen setAlignment:1];
    LODWORD(v23) = 1.0;
    [mainScreen setHyphenationFactor:v23];
    v24 = objc_alloc(MEMORY[0x277CCA898]);
    v28 = v16;
    v29 = mainScreen;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v26 = [v24 initWithString:v13 attributes:v25];

    [(UILabel *)self->_headerLabel setAttributedText:v26];
    mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen2 scale];

    [(UILabel *)self->_headerLabel sizeThatFits:v7, height - (top + bottom)];
  }

  UIRectCenteredXInRect();
  [(UILabel *)self->_headerLabel setFrame:?];
}

- (double)desiredHeightForWidth:(double)width
{
  [(SiriUIReusableHeaderView *)self _configureHeaderLabelForBounds:0.0, 0.0, width, 1.79769313e308];
  [(UILabel *)self->_headerLabel frame];
  v5 = v4;
  numberOfLines = [(UILabel *)self->_headerLabel numberOfLines];
  result = v5 + 103.0 + -72.0;
  if (numberOfLines == 1)
  {
    return 72.0;
  }

  return result;
}

- (void)setSnippetViewController:(id)controller
{
  obj = controller;
  WeakRetained = objc_loadWeakRetained(&self->_snippetViewController);

  v6 = obj;
  if (WeakRetained != obj)
  {
    v7 = objc_storeWeak(&self->_snippetViewController, obj);
    headerPunchOut = [obj headerPunchOut];

    [(UIButton *)self->_headerAreaButton setEnabled:headerPunchOut != 0];
    chevronView = self->_chevronView;
    if (headerPunchOut)
    {
      v10 = objc_loadWeakRetained(&self->_snippetViewController);
      -[UIImageView setHidden:](chevronView, "setHidden:", [v10 showHeaderChevron] ^ 1);
    }

    else
    {
      v5 = [(UIImageView *)self->_chevronView setHidden:1];
    }

    v6 = obj;
  }

  MEMORY[0x2821F96F8](v5, v6);
}

- (void)setTitleText:(id)text
{
  textCopy = text;
  objc_storeStrong(&self->_titleText, text);
  [(UILabel *)self->_headerLabel setText:self->_titleText];
  titleTextColor = [(SiriUIReusableHeaderView *)self titleTextColor];

  if (titleTextColor)
  {
    headerLabel = self->_headerLabel;
    titleTextColor2 = [(SiriUIReusableHeaderView *)self titleTextColor];
    [(UILabel *)headerLabel setTextColor:titleTextColor2];
  }

  [(SiriUIReusableHeaderView *)self setNeedsLayout];
}

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [v3 stringByAppendingString:@"ReuseIdentifier"];

  return v4;
}

- (SiriUISnippetViewController)snippetViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_snippetViewController);

  return WeakRetained;
}

@end