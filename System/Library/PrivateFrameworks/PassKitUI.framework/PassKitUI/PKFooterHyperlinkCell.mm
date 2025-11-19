@interface PKFooterHyperlinkCell
- (CGSize)_layoutWithBounds:(CGRect)a3 isTemplateLayout:(BOOL)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSDirectionalEdgeInsets)edgeInsets;
- (PKFooterHyperlinkCell)initWithCoder:(id)a3;
- (PKFooterHyperlinkCell)initWithFrame:(CGRect)a3;
- (void)_commonInit;
- (void)_configureHyperlinkViewIfNecessary;
- (void)layoutSubviews;
- (void)setLinkTextColor:(id)a3;
- (void)setSources:(id)a3;
- (void)setText:(id)a3;
- (void)setTextAlignment:(int64_t)a3;
- (void)setTextColor:(id)a3;
@end

@implementation PKFooterHyperlinkCell

- (PKFooterHyperlinkCell)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = PKFooterHyperlinkCell;
  v3 = [(PKFooterHyperlinkCell *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(PKFooterHyperlinkCell *)v3 _commonInit];
  }

  return v4;
}

- (PKFooterHyperlinkCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PKFooterHyperlinkCell;
  v3 = [(PKFooterHyperlinkCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PKFooterHyperlinkCell *)v3 _commonInit];
  }

  return v4;
}

- (void)_commonInit
{
  self->_textAlignment = 1;
  v3 = [MEMORY[0x1E69DC888] linkColor];
  linkTextColor = self->_linkTextColor;
  self->_linkTextColor = v3;

  v5 = PKTableViewCellTextInset();
  v6 = PKTableViewCellTextInset();
  self->_edgeInsets.top = 15.0;
  self->_edgeInsets.leading = v5;
  self->_edgeInsets.bottom = 15.0;
  self->_edgeInsets.trailing = v6;
  v7 = *MEMORY[0x1E69B9820];

  [(PKFooterHyperlinkCell *)self setAccessibilityIdentifier:v7];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PKFooterHyperlinkCell;
  [(PKFooterHyperlinkCell *)&v4 layoutSubviews];
  v3 = [(PKFooterHyperlinkCell *)self contentView];
  [v3 bounds];
  [(PKFooterHyperlinkCell *)self _layoutWithBounds:0 isTemplateLayout:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(PKFooterHyperlinkCell *)self _layoutWithBounds:1 isTemplateLayout:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)_layoutWithBounds:(CGRect)a3 isTemplateLayout:(BOOL)a4
{
  height = a3.size.height;
  width = a3.size.width;
  v8 = [(PKFooterHyperlinkCell *)self _shouldReverseLayoutDirection];
  p_edgeInsets = &self->_edgeInsets;
  v10 = 8;
  if (v8)
  {
    v11 = 24;
  }

  else
  {
    v11 = 8;
  }

  if (!v8)
  {
    v10 = 24;
  }

  v12 = width - (*(&p_edgeInsets->top + v11) + *(&p_edgeInsets->top + v10));
  v13 = p_edgeInsets->top + self->_edgeInsets.bottom;
  [(PKMultiHyperlinkView *)self->_hyperLinkView frame];
  [(PKMultiHyperlinkView *)self->_hyperLinkView sizeThatFits:v12, height - v13];
  PKRectCenteredIntegralRect();
  v15 = v14;
  if (!a4)
  {
    [(PKMultiHyperlinkView *)self->_hyperLinkView setFrame:?];
  }

  v16 = v13 + v15 + 0.0;
  v17 = width;
  result.height = v16;
  result.width = v17;
  return result;
}

- (void)setText:(id)a3
{
  v5 = a3;
  text = self->_text;
  v9 = v5;
  v7 = text;
  if (v7 == v9)
  {

    goto LABEL_9;
  }

  if (!v9 || !v7)
  {

    goto LABEL_8;
  }

  v8 = [(NSString *)v9 isEqualToString:v7];

  if (!v8)
  {
LABEL_8:
    objc_storeStrong(&self->_text, a3);
    [(PKFooterHyperlinkCell *)self _configureHyperlinkViewIfNecessary];
  }

LABEL_9:
}

- (void)setTextAlignment:(int64_t)a3
{
  if (self->_textAlignment != a3)
  {
    self->_textAlignment = a3;
    [(PKFooterHyperlinkCell *)self _configureHyperlinkViewIfNecessary];
  }
}

- (void)setTextColor:(id)a3
{
  v5 = a3;
  if (self->_textColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_textColor, a3);
    [(PKFooterHyperlinkCell *)self _configureHyperlinkViewIfNecessary];
    v5 = v6;
  }
}

- (void)setLinkTextColor:(id)a3
{
  v5 = a3;
  if (self->_linkTextColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_linkTextColor, a3);
    [(PKFooterHyperlinkCell *)self _configureHyperlinkViewIfNecessary];
    v5 = v6;
  }
}

- (void)setSources:(id)a3
{
  v5 = a3;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_sources, a3);
    [(PKFooterHyperlinkCell *)self _configureHyperlinkViewIfNecessary];
  }
}

- (void)_configureHyperlinkViewIfNecessary
{
  hyperLinkView = self->_hyperLinkView;
  if (!hyperLinkView)
  {
    v4 = objc_alloc_init(PKMultiHyperlinkView);
    v5 = self->_hyperLinkView;
    self->_hyperLinkView = v4;

    v6 = [(PKFooterHyperlinkCell *)self contentView];
    [v6 addSubview:self->_hyperLinkView];

    hyperLinkView = self->_hyperLinkView;
  }

  [(PKMultiHyperlinkView *)hyperLinkView setText:self->_text];
  [(PKMultiHyperlinkView *)self->_hyperLinkView setSources:self->_sources];
  [(PKMultiHyperlinkView *)self->_hyperLinkView setTextAlignment:self->_textAlignment];
  [(PKMultiHyperlinkView *)self->_hyperLinkView setLinkTextColor:self->_linkTextColor];
  [(PKMultiHyperlinkView *)self->_hyperLinkView setTextColor:self->_textColor];

  [(PKFooterHyperlinkCell *)self setNeedsLayout];
}

- (NSDirectionalEdgeInsets)edgeInsets
{
  top = self->_edgeInsets.top;
  leading = self->_edgeInsets.leading;
  bottom = self->_edgeInsets.bottom;
  trailing = self->_edgeInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

@end