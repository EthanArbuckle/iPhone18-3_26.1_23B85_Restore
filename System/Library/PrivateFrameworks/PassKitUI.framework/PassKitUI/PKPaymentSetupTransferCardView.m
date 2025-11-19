@interface PKPaymentSetupTransferCardView
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKPaymentSetupTransferCardDelegate)delegate;
- (PKPaymentSetupTransferCardView)initWithFrame:(CGRect)a3;
- (void)_createSubviews;
- (void)_transferBalanceButtonTapped:(id)a3;
- (void)layoutSubviews;
@end

@implementation PKPaymentSetupTransferCardView

- (PKPaymentSetupTransferCardView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v12.receiver = self;
  v12.super_class = PKPaymentSetupTransferCardView;
  v5 = [(PKPaymentSetupTransferCardView *)&v12 initWithFrame:a3.origin.x, a3.origin.y];
  if (v5)
  {
    v6 = PKProvisioningBackgroundColor();
    [(PKPaymentSetupTransferCardView *)v5 setBackgroundColor:v6];

    v7 = *MEMORY[0x1E695EFF8];
    v8 = *(MEMORY[0x1E695EFF8] + 8);
    [(PKPaymentSetupTransferCardView *)v5 sizeThatFits:width, height];
    [(PKPaymentSetupTransferCardView *)v5 setFrame:v7, v8, v9, v10];
    [(PKPaymentSetupTransferCardView *)v5 _createSubviews];
    [(PKPaymentSetupTransferCardView *)v5 setUserInteractionEnabled:1];
  }

  return v5;
}

- (void)_createSubviews
{
  v3 = MEMORY[0x1E69DC740];
  v4 = PKLocalizedPaymentString(&cfstr_SetupPurchaseT.isa);
  v5 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC70]);
  v6 = [v3 pkui_plainConfigurationWithTitle:v4 font:v5];

  objc_initWeak(&location, self);
  v7 = MEMORY[0x1E69DC628];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __49__PKPaymentSetupTransferCardView__createSubviews__block_invoke;
  v14 = &unk_1E8010A60;
  objc_copyWeak(&v15, &location);
  v8 = [v7 actionWithHandler:&v11];
  v9 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v6 primaryAction:{v8, v11, v12, v13, v14}];
  transferBalanceButton = self->_transferBalanceButton;
  self->_transferBalanceButton = v9;

  [(UIButton *)self->_transferBalanceButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_transferBalanceButton setConfigurationUpdateHandler:&__block_literal_global_144];
  [(PKPaymentSetupTransferCardView *)self addSubview:self->_transferBalanceButton];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __49__PKPaymentSetupTransferCardView__createSubviews__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 sender];

  [WeakRetained _transferBalanceButtonTapped:v4];
}

void __49__PKPaymentSetupTransferCardView__createSubviews__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setExclusiveTouch:1];
  v3 = [v2 titleLabel];
  [v3 setTextAlignment:1];

  v4 = [v2 titleLabel];

  [v4 setNumberOfLines:1];
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = PKPaymentSetupTransferCardView;
  [(PKPaymentSetupTransferCardView *)&v8 layoutSubviews];
  [(PKPaymentSetupTransferCardView *)self bounds];
  v4 = v3;
  [(UIButton *)self->_transferBalanceButton sizeThatFits:v3, v5];
  [(UIButton *)self->_transferBalanceButton setFrame:v4 * 0.5 - v6 * 0.5, 20.0, v6, v7];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(PKPaymentSetupTransferCardView *)self bounds:a3.width];
  [(UIButton *)self->_transferBalanceButton sizeThatFits:width, v5];
  v7 = v6 + 20.0 + 70.0;
  v8 = width;
  result.height = v7;
  result.width = v8;
  return result;
}

- (void)_transferBalanceButtonTapped:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didInitiateTransferExistingCard];
}

- (PKPaymentSetupTransferCardDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end