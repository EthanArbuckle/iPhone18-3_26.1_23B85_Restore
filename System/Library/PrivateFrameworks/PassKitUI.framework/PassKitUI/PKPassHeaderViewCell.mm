@interface PKPassHeaderViewCell
- (CGSize)_layoutWithBounds:(CGRect)a3 isTemplateLayout:(BOOL)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)_configurePassHeader;
- (void)layoutSubviews;
- (void)setPass:(id)a3;
- (void)setPassLibraryOverride:(id)a3;
@end

@implementation PKPassHeaderViewCell

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PKPassHeaderViewCell;
  [(PKPassHeaderViewCell *)&v4 layoutSubviews];
  v3 = [(PKPassHeaderViewCell *)self contentView];
  [v3 bounds];
  [(PKPassHeaderViewCell *)self _layoutWithBounds:0 isTemplateLayout:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(PKPassHeaderViewCell *)self _layoutWithBounds:1 isTemplateLayout:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)_layoutWithBounds:(CGRect)a3 isTemplateLayout:(BOOL)a4
{
  y = a3.origin.y;
  x = a3.origin.x;
  [(PKPassHeaderView *)self->_passHeaderView sizeThatFits:a3.size.width, a3.size.height];
  v9 = v8;
  v11 = v10;
  if (!a4)
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

- (void)setPass:(id)a3
{
  objc_storeStrong(&self->_pass, a3);

  [(PKPassHeaderViewCell *)self _configurePassHeader];
}

- (void)setPassLibraryOverride:(id)a3
{
  objc_storeStrong(&self->_passLibraryOverride, a3);

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
    v6 = [(PKPassHeaderViewCell *)self contentView];
    [v6 addSubview:self->_passHeaderView];

    passHeaderView = self->_passHeaderView;
  }

  [(PKPassHeaderView *)passHeaderView setPass:self->_pass];
  [(PKPassHeaderView *)self->_passHeaderView setPassLibraryOverride:self->_passLibraryOverride];

  [(PKPassHeaderViewCell *)self setNeedsLayout];
}

@end