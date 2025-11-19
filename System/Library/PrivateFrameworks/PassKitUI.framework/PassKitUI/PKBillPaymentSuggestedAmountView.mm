@interface PKBillPaymentSuggestedAmountView
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKBillPaymentSuggestedAmountView)initWithSuggestedAmount:(id)a3;
- (void)layoutSubviews;
@end

@implementation PKBillPaymentSuggestedAmountView

- (PKBillPaymentSuggestedAmountView)initWithSuggestedAmount:(id)a3
{
  v20[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v19.receiver = self;
  v19.super_class = PKBillPaymentSuggestedAmountView;
  v6 = [(PKBillPaymentSuggestedAmountView *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_suggestedAmount, a3);
    v8 = [(PKBillPaymentSuggestedAmountView *)v7 layer];
    [v8 setAllowsGroupOpacity:0];
    [v8 setAllowsGroupBlending:0];
    v9 = objc_alloc_init(MEMORY[0x1E6979310]);
    background = v7->_background;
    v7->_background = v9;

    [(CABackdropLayer *)v7->_background setAllowsInPlaceFiltering:1];
    v11 = v7->_background;
    v12 = PKLayerNullActions();
    [(CABackdropLayer *)v11 setActions:v12];

    [(CABackdropLayer *)v7->_background setAllowsGroupOpacity:0];
    [(CABackdropLayer *)v7->_background setMasksToBounds:1];
    [v8 addSublayer:v7->_background];
    v13 = [MEMORY[0x1E69DC888] colorWithWhite:0.6 alpha:1.0];
    v14 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.05];
    v15 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979D90]];
    [v15 setValue:objc_msgSend(v13 forKey:{"CGColor"), @"inputColor0"}];
    [v15 setValue:objc_msgSend(v14 forKey:{"CGColor"), @"inputColor1"}];
    [v15 setValue:MEMORY[0x1E695E118] forKey:@"inputReversed"];
    v16 = v7->_background;
    v20[0] = v15;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    [(CABackdropLayer *)v16 setFilters:v17];
  }

  return v7;
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = PKBillPaymentSuggestedAmountView;
  [(PKBillPaymentSuggestedAmountView *)&v9 layoutSubviews];
  [(PKBillPaymentSuggestedAmountView *)self bounds];
  if (v3 >= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  v6 = v5 * 0.5;
  background = self->_background;
  PKSizeAlignedInRect();
  [(CABackdropLayer *)background setFrame:?];
  [(CABackdropLayer *)self->_background cornerRadius];
  if (v8 != v6)
  {
    [(CABackdropLayer *)self->_background setCornerRadius:v6];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = 16.0;
  v4 = 16.0;
  result.height = v4;
  result.width = v3;
  return result;
}

@end