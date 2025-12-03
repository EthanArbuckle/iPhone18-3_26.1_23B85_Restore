@interface PKPeerPaymentMessagesNumberPadView
+ (CGSize)referenceSizeForSizeCategory:(unint64_t)category;
+ (double)buttonHorizontalPaddingForSizeCategory:(unint64_t)category;
+ (double)buttonVerticalPaddingForSizeCategory:(unint64_t)category;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKPeerPaymentMessagesNumberPadView)initWithSizeCategory:(unint64_t)category;
- (id)_buttonForAction:(unint64_t)action;
- (void)_handleActionButton:(id)button;
- (void)layoutSubviews;
- (void)setSizeCategory:(unint64_t)category;
@end

@implementation PKPeerPaymentMessagesNumberPadView

+ (CGSize)referenceSizeForSizeCategory:(unint64_t)category
{
  [self buttonHorizontalPaddingForSizeCategory:?];
  v6 = v5;
  [self buttonVerticalPaddingForSizeCategory:category];
  v8 = v7;
  [PKPeerPaymentNumberPadActionButton referenceSizeForSizeCategory:category];
  v10 = v6 + v6 + v9 * 3.0;
  v12 = v8 * 3.0 + v11 * 4.0 + 16.0 + 16.0;
  result.height = v12;
  result.width = v10;
  return result;
}

+ (double)buttonVerticalPaddingForSizeCategory:(unint64_t)category
{
  if (PKIsVision())
  {
    if (category - 1 < 3)
    {
      return dbl_1BE1151A8[category - 1];
    }
  }

  else
  {
    v5 = PKIsPad();
    if (category == 3 && (v5 & 1) != 0)
    {
      return 48.0;
    }
  }

  [PKPeerPaymentNumberPadActionButton adjustSize:category forSizeCategory:12.0];
  return result;
}

+ (double)buttonHorizontalPaddingForSizeCategory:(unint64_t)category
{
  v4 = PKIsPad();
  if (category == 3 && (v4 & 1) != 0)
  {
    return 36.0;
  }

  [PKPeerPaymentNumberPadActionButton adjustSize:category forSizeCategory:24.0];
  return result;
}

- (PKPeerPaymentMessagesNumberPadView)initWithSizeCategory:(unint64_t)category
{
  [PKPeerPaymentMessagesNumberPadView referenceSizeForSizeCategory:?];
  v6 = v5;
  v8 = v7;
  v9 = *MEMORY[0x1E695EFF8];
  v10 = *(MEMORY[0x1E695EFF8] + 8);
  v24.receiver = self;
  v24.super_class = PKPeerPaymentMessagesNumberPadView;
  v11 = [(PKPeerPaymentMessagesNumberPadView *)&v24 initWithFrame:v9, v10, v6, v8];
  if (v11)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(PKPeerPaymentMessagesNumberPadView *)v11 setBackgroundColor:clearColor];

    v13 = 1;
    [(PKPeerPaymentMessagesNumberPadView *)v11 setClipsToBounds:1];
    v11->_enabled = 1;
    v11->_sizeCategory = category;
    v14 = objc_alloc_init(MEMORY[0x1E69DD250]);
    buttonContainerView = v11->_buttonContainerView;
    v11->_buttonContainerView = v14;

    [(PKPeerPaymentMessagesNumberPadView *)v11 addSubview:v11->_buttonContainerView];
    v16 = 0;
    v17 = v11;
    do
    {
      v18 = v17;
      v19 = 3;
      do
      {
        v20 = v13++;
        v21 = [(PKPeerPaymentMessagesNumberPadView *)v11 _buttonForAction:v20];
        v22 = v18->_buttons[0][0];
        v18->_buttons[0][0] = v21;

        [(UIView *)v11->_buttonContainerView addSubview:v18->_buttons[0][0]];
        v18 = (v18 + 8);
        --v19;
      }

      while (v19);
      ++v16;
      v17 = (v17 + 24);
    }

    while (v16 != 4);
  }

  return v11;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v4 = objc_opt_class();
  sizeCategory = self->_sizeCategory;

  [v4 referenceSizeForSizeCategory:sizeCategory];
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)layoutSubviews
{
  v21.receiver = self;
  v21.super_class = PKPeerPaymentMessagesNumberPadView;
  [(PKPeerPaymentMessagesNumberPadView *)&v21 layoutSubviews];
  [objc_opt_class() buttonVerticalPaddingForSizeCategory:self->_sizeCategory];
  v4 = v3;
  [objc_opt_class() buttonHorizontalPaddingForSizeCategory:self->_sizeCategory];
  v6 = v5;
  [PKPeerPaymentNumberPadActionButton referenceSizeForSizeCategory:self->_sizeCategory];
  v8 = v7;
  v10 = v9;
  v11 = 0;
  buttons = self->_buttons;
  v13 = v6 + v7;
  v14 = v4 + v9;
  v15 = 0.0;
  do
  {
    v16 = 0;
    v17 = v6;
    do
    {
      [(PKPeerPaymentNumberPadActionButton *)(*buttons)[v16] setFrame:v17, v15, v8, v10];
      v17 = v13 + v17;
      ++v16;
    }

    while (v16 != 3);
    v15 = v14 + v15;
    ++v11;
    ++buttons;
  }

  while (v11 != 4);
  [(PKPeerPaymentMessagesNumberPadView *)self bounds:0];
  remainder = v22;
  CGRectDivide(v22, &v19, &remainder, 16.0, CGRectMinYEdge);
  CGRectDivide(remainder, &v19, &remainder, 16.0, CGRectMaxYEdge);
  buttonContainerView = self->_buttonContainerView;
  UIRectCenteredIntegralRect();
  [(UIView *)buttonContainerView setFrame:?];
}

- (void)setSizeCategory:(unint64_t)category
{
  if (self->_sizeCategory != category)
  {
    v4 = 0;
    self->_sizeCategory = category;
    buttons = self->_buttons;
    do
    {
      for (i = 0; i != 3; ++i)
      {
        [(PKPeerPaymentNumberPadActionButton *)(*buttons)[i] setSizeCategory:self->_sizeCategory];
      }

      ++v4;
      ++buttons;
    }

    while (v4 != 4);

    [(PKPeerPaymentMessagesNumberPadView *)self setNeedsLayout];
  }
}

- (id)_buttonForAction:(unint64_t)action
{
  v5 = [[PKPeerPaymentNumberPadActionButton alloc] initWithSizeCategory:self->_sizeCategory];
  [(PKPeerPaymentNumberPadActionButton *)v5 addTarget:self action:sel__handleActionButton_ forControlEvents:64];
  [(PKPeerPaymentNumberPadActionButton *)v5 setAction:action];
  v6 = +[PKPeerPaymentTheme primaryTextColor];
  [(PKPeerPaymentNumberPadActionButton *)v5 setTitleColor:v6 forState:0];

  v7 = +[PKPeerPaymentTheme disabledTextColor];
  [(PKPeerPaymentNumberPadActionButton *)v5 setTitleColor:v7 forState:2];

  return v5;
}

- (void)_handleActionButton:(id)button
{
  buttonCopy = button;
  actionHandler = self->_actionHandler;
  if (actionHandler && self->_enabled)
  {
    v6 = buttonCopy;
    actionHandler[2](actionHandler, self, [buttonCopy action]);
    buttonCopy = v6;
  }
}

@end