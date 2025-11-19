@interface SiriUIReusableHeaderView
+ (id)reuseIdentifier;
- (SiriUIReusableHeaderView)initWithFrame:(CGRect)a3;
- (SiriUISnippetViewController)snippetViewController;
- (double)desiredHeightForWidth:(double)a3;
- (void)_configureHeaderLabelForBounds:(CGRect)a3;
- (void)layoutSubviews;
- (void)setSnippetViewController:(id)a3;
- (void)setTitleText:(id)a3;
@end

@implementation SiriUIReusableHeaderView

- (SiriUIReusableHeaderView)initWithFrame:(CGRect)a3
{
  v13.receiver = self;
  v13.super_class = SiriUIReusableHeaderView;
  v3 = [(SiriUIReusableHeaderView *)&v13 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[SiriUIContentButton button];
    v5 = *(v3 + 71);
    *(v3 + 71) = v4;

    [v3 addSubview:*(v3 + 71)];
    v6 = [MEMORY[0x277D60108] labelWithHeaderFont];
    v7 = *(v3 + 62);
    *(v3 + 62) = v6;

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
  v22 = [(SiriUIReusableHeaderView *)self titleTextColor];

  if (v22)
  {
    headerLabel = self->_headerLabel;
    v24 = [(SiriUIReusableHeaderView *)self titleTextColor];
    [(UILabel *)headerLabel setTextColor:v24];
  }
}

- (void)_configureHeaderLabelForBounds:(CGRect)a3
{
  height = a3.size.height;
  v31[1] = *MEMORY[0x277D85DE8];
  top = self->_contentInsets.top;
  bottom = self->_contentInsets.bottom;
  v7 = a3.size.width - (self->_contentInsets.left + self->_contentInsets.right);
  headerLabel = self->_headerLabel;
  v9 = [MEMORY[0x277D74300] siriui_headerFont];
  [(UILabel *)headerLabel setFont:v9];

  [(UILabel *)self->_headerLabel setNumberOfLines:1];
  v10 = [(UILabel *)self->_headerLabel text];
  v11 = v10;
  v12 = &stru_2879FFD58;
  if (v10)
  {
    v12 = v10;
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
    v22 = [MEMORY[0x277D759A0] mainScreen];
    [v22 scale];
  }

  else
  {
    v20 = self->_headerLabel;
    v21 = [MEMORY[0x277D74300] siriui_dynamicHeaderFont];
    [(UILabel *)v20 setFont:v21];

    [(UILabel *)self->_headerLabel setNumberOfLines:3];
    v22 = objc_alloc_init(MEMORY[0x277D74240]);
    [v22 setLineSpacing:0.0];
    [v22 setMaximumLineHeight:36.0];
    [v22 setMinimumLineHeight:36.0];
    [v22 setAlignment:1];
    LODWORD(v23) = 1.0;
    [v22 setHyphenationFactor:v23];
    v24 = objc_alloc(MEMORY[0x277CCA898]);
    v28 = v16;
    v29 = v22;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v26 = [v24 initWithString:v13 attributes:v25];

    [(UILabel *)self->_headerLabel setAttributedText:v26];
    v27 = [MEMORY[0x277D759A0] mainScreen];
    [v27 scale];

    [(UILabel *)self->_headerLabel sizeThatFits:v7, height - (top + bottom)];
  }

  UIRectCenteredXInRect();
  [(UILabel *)self->_headerLabel setFrame:?];
}

- (double)desiredHeightForWidth:(double)a3
{
  [(SiriUIReusableHeaderView *)self _configureHeaderLabelForBounds:0.0, 0.0, a3, 1.79769313e308];
  [(UILabel *)self->_headerLabel frame];
  v5 = v4;
  v6 = [(UILabel *)self->_headerLabel numberOfLines];
  result = v5 + 103.0 + -72.0;
  if (v6 == 1)
  {
    return 72.0;
  }

  return result;
}

- (void)setSnippetViewController:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_snippetViewController);

  v6 = obj;
  if (WeakRetained != obj)
  {
    v7 = objc_storeWeak(&self->_snippetViewController, obj);
    v8 = [obj headerPunchOut];

    [(UIButton *)self->_headerAreaButton setEnabled:v8 != 0];
    chevronView = self->_chevronView;
    if (v8)
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

- (void)setTitleText:(id)a3
{
  v8 = a3;
  objc_storeStrong(&self->_titleText, a3);
  [(UILabel *)self->_headerLabel setText:self->_titleText];
  v5 = [(SiriUIReusableHeaderView *)self titleTextColor];

  if (v5)
  {
    headerLabel = self->_headerLabel;
    v7 = [(SiriUIReusableHeaderView *)self titleTextColor];
    [(UILabel *)headerLabel setTextColor:v7];
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