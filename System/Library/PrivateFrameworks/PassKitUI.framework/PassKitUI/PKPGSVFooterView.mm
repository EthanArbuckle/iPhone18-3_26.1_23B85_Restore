@interface PKPGSVFooterView
- (CGSize)sizeThatFits:(CGSize)result;
- (PKPGSVFooterView)initWithFrame:(CGRect)a3;
- (PKPGSVFooterViewDelegate)delegate;
- (void)_editTapped:(id)a3;
- (void)layoutSubviews;
- (void)setExpiredSectionCount:(int64_t)a3;
@end

@implementation PKPGSVFooterView

- (PKPGSVFooterView)initWithFrame:(CGRect)a3
{
  v14.receiver = self;
  v14.super_class = PKPGSVFooterView;
  v3 = [(PKPGSVFooterView *)&v14 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v11 = 0x401C000000000000;
    v12 = vdupq_n_s64(1uLL);
    v13 = vdupq_n_s64(2uLL);
    v4 = [[PKContinuousButton alloc] initWithConfiguration:&v11];
    editButton = v3->_editButton;
    v3->_editButton = v4;

    [(PKContinuousButton *)v3->_editButton setContentEdgeInsets:7.0, 14.0, 7.0, 14.0];
    [(PKContinuousButton *)v3->_editButton _setTouchInsets:-10.0, -10.0, -10.0, -10.0];
    v6 = v3->_editButton;
    v7 = PKLocalizedString(&cfstr_TableFooterEdi.isa);
    [(PKContinuousButton *)v6 setTitle:v7 forState:0];

    v8 = [(PKContinuousButton *)v3->_editButton titleLabel];
    v9 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], *MEMORY[0x1E69DDC38], 2, 0);
    [v8 setFont:v9];

    [(PKPGSVFooterView *)v3 addSubview:v3->_editButton];
    [(PKContinuousButton *)v3->_editButton addTarget:v3 action:sel__editTapped_ forControlEvents:64];
  }

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)result
{
  v3 = 64.0;
  result.height = v3;
  return result;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = PKPGSVFooterView;
  [(PKPGSVFooterView *)&v6 layoutSubviews];
  [(PKPGSVFooterView *)self bounds];
  memset(&slice, 0, sizeof(slice));
  memset(&v4, 0, sizeof(v4));
  CGRectDivide(v7, &slice, &v4, 64.0, CGRectMinYEdge);
  [(PKContinuousButton *)self->_editButton sizeToFit];
  editButton = self->_editButton;
  [(PKContinuousButton *)editButton frame];
  PKSizeAlignedInRect();
  [(PKContinuousButton *)editButton setFrame:?];
}

- (void)_editTapped:(id)a3
{
  if (PKUIStoreDemoGatewayWithView(self))
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained)
    {
      v5 = WeakRetained;
      [WeakRetained viewTapped:self];
      WeakRetained = v5;
    }
  }
}

- (void)setExpiredSectionCount:(int64_t)a3
{
  if (self->_expiredSectionCount != a3)
  {
    self->_expiredSectionCount = a3;
    refreshed = PKExpiredPassesRefreshEnabled();
    if (a3)
    {
      if (refreshed)
      {
        editButton = self->_editButton;
        v7 = PKLocalizedString(&cfstr_TableFooterExp.isa, &cfstr_Lu.isa, a3);
        [(PKContinuousButton *)editButton setTitle:v7 forState:0];

        [(PKPGSVFooterView *)self setNeedsLayout];
      }
    }
  }
}

- (PKPGSVFooterViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end