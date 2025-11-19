@interface PKEnterCurrencyAmountPassTableHeaderFooterView
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKEnterCurrencyAmountPassTableHeaderFooterView)initWithCurrenyAmount:(id)a3 pass:(id)a4;
- (PKEnterCurrencyAmountPassViewDelegate)delegate;
- (double)_bottomPadding;
- (void)layoutSubviews;
@end

@implementation PKEnterCurrencyAmountPassTableHeaderFooterView

- (PKEnterCurrencyAmountPassTableHeaderFooterView)initWithCurrenyAmount:(id)a3 pass:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = PKEnterCurrencyAmountPassTableHeaderFooterView;
  v8 = [(PKEnterCurrencyAmountPassTableHeaderFooterView *)&v13 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v8)
  {
    v9 = [[PKEnterCurrencyAmountPassView alloc] initWithCurrenyAmount:v6 pass:v7 withdrawal:1];
    amountPassView = v8->_amountPassView;
    v8->_amountPassView = v9;

    v11 = [(PKEnterCurrencyAmountPassTableHeaderFooterView *)v8 contentView];
    [v11 addSubview:v8->_amountPassView];
  }

  return v8;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(PKEnterCurrencyAmountPassView *)self->_amountPassView sizeThatFits:a3.width, a3.height];
  v5 = v4;
  v7 = v6;
  [(PKEnterCurrencyAmountPassTableHeaderFooterView *)self _bottomPadding];
  v9 = v7 + v8;
  v10 = v5;
  result.height = v9;
  result.width = v10;
  return result;
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = PKEnterCurrencyAmountPassTableHeaderFooterView;
  [(PKEnterCurrencyAmountPassTableHeaderFooterView *)&v14 layoutSubviews];
  v3 = [(PKEnterCurrencyAmountPassTableHeaderFooterView *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v3 layoutMargins];
  [(PKEnterCurrencyAmountPassView *)self->_amountPassView setFrame:v5 + v12, v7 + 0.0, v9 - (v12 + v13), v11];
}

- (double)_bottomPadding
{
  v2 = [(PKEnterCurrencyAmountPassView *)self->_amountPassView pass];
  if (v2)
  {
    v3 = 72.0;
  }

  else
  {
    v3 = 42.0;
  }

  return v3;
}

- (PKEnterCurrencyAmountPassViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end