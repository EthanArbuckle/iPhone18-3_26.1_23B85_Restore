@interface PKPassHeaderViewCell
- (CGSize)_layoutWithBounds:(CGRect)bounds isTemplateLayout:(BOOL)layout;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)_configurePassHeader;
- (void)layoutSubviews;
- (void)setPass:(id)pass;
- (void)setPassLibraryOverride:(id)override;
@end

@implementation PKPassHeaderViewCell

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PKPassHeaderViewCell;
  [(PKPassHeaderViewCell *)&v4 layoutSubviews];
  contentView = [(PKPassHeaderViewCell *)self contentView];
  [contentView bounds];
  [(PKPassHeaderViewCell *)self _layoutWithBounds:0 isTemplateLayout:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(PKPassHeaderViewCell *)self _layoutWithBounds:1 isTemplateLayout:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)_layoutWithBounds:(CGRect)bounds isTemplateLayout:(BOOL)layout
{
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(PKPassHeaderView *)self->_passHeaderView sizeThatFits:bounds.size.width, bounds.size.height];
  v9 = v8;
  v11 = v10;
  if (!layout)
  {
    [(PKPassHeaderView *)self->_passHeaderView frame];
    [(PKPassHeaderView *)self->_passHeaderView setFrame:x, y, v9, v11];
  }

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)setPass:(id)pass
{
  objc_storeStrong(&self->_pass, pass);

  [(PKPassHeaderViewCell *)self _configurePassHeader];
}

- (void)setPassLibraryOverride:(id)override
{
  objc_storeStrong(&self->_passLibraryOverride, override);

  [(PKPassHeaderViewCell *)self _configurePassHeader];
}

- (void)_configurePassHeader
{
  passHeaderView = self->_passHeaderView;
  if (!passHeaderView)
  {
    v4 = [[PKPassHeaderView alloc] initWithPass:self->_pass rendererState:0];
    v5 = self->_passHeaderView;
    self->_passHeaderView = v4;

    [(PKPassHeaderView *)self->_passHeaderView setSmall:1];
    contentView = [(PKPassHeaderViewCell *)self contentView];
    [contentView addSubview:self->_passHeaderView];

    passHeaderView = self->_passHeaderView;
  }

  [(PKPassHeaderView *)passHeaderView setPass:self->_pass];
  [(PKPassHeaderView *)self->_passHeaderView setPassLibraryOverride:self->_passLibraryOverride];

  [(PKPassHeaderViewCell *)self setNeedsLayout];
}

@end