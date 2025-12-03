@interface PKFooterHyperlinkCell
- (CGSize)_layoutWithBounds:(CGRect)bounds isTemplateLayout:(BOOL)layout;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSDirectionalEdgeInsets)edgeInsets;
- (PKFooterHyperlinkCell)initWithCoder:(id)coder;
- (PKFooterHyperlinkCell)initWithFrame:(CGRect)frame;
- (void)_commonInit;
- (void)_configureHyperlinkViewIfNecessary;
- (void)layoutSubviews;
- (void)setLinkTextColor:(id)color;
- (void)setSources:(id)sources;
- (void)setText:(id)text;
- (void)setTextAlignment:(int64_t)alignment;
- (void)setTextColor:(id)color;
@end

@implementation PKFooterHyperlinkCell

- (PKFooterHyperlinkCell)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = PKFooterHyperlinkCell;
  v3 = [(PKFooterHyperlinkCell *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(PKFooterHyperlinkCell *)v3 _commonInit];
  }

  return v4;
}

- (PKFooterHyperlinkCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PKFooterHyperlinkCell;
  v3 = [(PKFooterHyperlinkCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  linkColor = [MEMORY[0x1E69DC888] linkColor];
  linkTextColor = self->_linkTextColor;
  self->_linkTextColor = linkColor;

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
  contentView = [(PKFooterHyperlinkCell *)self contentView];
  [contentView bounds];
  [(PKFooterHyperlinkCell *)self _layoutWithBounds:0 isTemplateLayout:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(PKFooterHyperlinkCell *)self _layoutWithBounds:1 isTemplateLayout:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)_layoutWithBounds:(CGRect)bounds isTemplateLayout:(BOOL)layout
{
  height = bounds.size.height;
  width = bounds.size.width;
  _shouldReverseLayoutDirection = [(PKFooterHyperlinkCell *)self _shouldReverseLayoutDirection];
  p_edgeInsets = &self->_edgeInsets;
  v10 = 8;
  if (_shouldReverseLayoutDirection)
  {
    v11 = 24;
  }

  else
  {
    v11 = 8;
  }

  if (!_shouldReverseLayoutDirection)
  {
    v10 = 24;
  }

  v12 = width - (*(&p_edgeInsets->top + v11) + *(&p_edgeInsets->top + v10));
  v13 = p_edgeInsets->top + self->_edgeInsets.bottom;
  [(PKMultiHyperlinkView *)self->_hyperLinkView frame];
  [(PKMultiHyperlinkView *)self->_hyperLinkView sizeThatFits:v12, height - v13];
  PKRectCenteredIntegralRect();
  v15 = v14;
  if (!layout)
  {
    [(PKMultiHyperlinkView *)self->_hyperLinkView setFrame:?];
  }

  v16 = v13 + v15 + 0.0;
  v17 = width;
  result.height = v16;
  result.width = v17;
  return result;
}

- (void)setText:(id)text
{
  textCopy = text;
  text = self->_text;
  v9 = textCopy;
  textCopy2 = text;
  if (textCopy2 == v9)
  {

    goto LABEL_9;
  }

  if (!v9 || !textCopy2)
  {

    goto LABEL_8;
  }

  v8 = [(NSString *)v9 isEqualToString:textCopy2];

  if (!v8)
  {
LABEL_8:
    objc_storeStrong(&self->_text, text);
    [(PKFooterHyperlinkCell *)self _configureHyperlinkViewIfNecessary];
  }

LABEL_9:
}

- (void)setTextAlignment:(int64_t)alignment
{
  if (self->_textAlignment != alignment)
  {
    self->_textAlignment = alignment;
    [(PKFooterHyperlinkCell *)self _configureHyperlinkViewIfNecessary];
  }
}

- (void)setTextColor:(id)color
{
  colorCopy = color;
  if (self->_textColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_textColor, color);
    [(PKFooterHyperlinkCell *)self _configureHyperlinkViewIfNecessary];
    colorCopy = v6;
  }
}

- (void)setLinkTextColor:(id)color
{
  colorCopy = color;
  if (self->_linkTextColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_linkTextColor, color);
    [(PKFooterHyperlinkCell *)self _configureHyperlinkViewIfNecessary];
    colorCopy = v6;
  }
}

- (void)setSources:(id)sources
{
  sourcesCopy = sources;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_sources, sources);
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

    contentView = [(PKFooterHyperlinkCell *)self contentView];
    [contentView addSubview:self->_hyperLinkView];

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