@interface PKFindBankAccountInformationFooterView
- (CGSize)_sizeForButton:(id)button constrainedToSize:(CGSize)size;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKFindBankAccountInformationFooterView)initWithFrame:(CGRect)frame action:(id)action;
- (void)layoutSubviews;
- (void)setupAccountInformationButtonWithAction:(id)action;
@end

@implementation PKFindBankAccountInformationFooterView

- (PKFindBankAccountInformationFooterView)initWithFrame:(CGRect)frame action:(id)action
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  actionCopy = action;
  v13.receiver = self;
  v13.super_class = PKFindBankAccountInformationFooterView;
  height = [(PKFindBankAccountInformationFooterView *)&v13 initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    [(PKFindBankAccountInformationFooterView *)height setupAccountInformationButtonWithAction:actionCopy];
  }

  return v11;
}

- (void)setupAccountInformationButtonWithAction:(id)action
{
  v4 = *MEMORY[0x1E69DDCF8];
  v5 = *MEMORY[0x1E69DDC38];
  actionCopy = action;
  v16 = PKFontForDefaultDesign(v4, v5);
  v7 = MEMORY[0x1E69DC740];
  v8 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentBan_1.isa);
  v9 = [v7 pkui_plainConfigurationWithTitle:v8 font:v16 lineBreakMode:4 textAlignment:PKOBKTextAlignment()];

  v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"info.circle.fill"];
  [v9 setImage:v10];
  [v9 setImagePadding:6.0];
  linkColor = [MEMORY[0x1E69DC888] linkColor];
  [v9 setBaseForegroundColor:linkColor];

  [v16 pointSize];
  v13 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:v12 * 0.8];
  [v9 setPreferredSymbolConfigurationForImage:v13];
  [v9 setContentInsets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];
  v14 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v9 primaryAction:actionCopy];

  accountInformationButton = self->_accountInformationButton;
  self->_accountInformationButton = v14;

  [(UIButton *)self->_accountInformationButton setConfigurationUpdateHandler:&__block_literal_global_152];
  [(UIButton *)self->_accountInformationButton setAccessibilityIdentifier:*MEMORY[0x1E69B93C8]];
  [(PKFindBankAccountInformationFooterView *)self addSubview:self->_accountInformationButton];
}

void __82__PKFindBankAccountInformationFooterView_setupAccountInformationButtonWithAction___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setExclusiveTouch:1];
  [v2 _setTouchInsets:{-10.0, -10.0, -10.0, -10.0}];
  v3 = [v2 titleLabel];
  [v3 setTextAlignment:PKOBKTextAlignment()];

  v4 = [v2 titleLabel];

  [v4 setNumberOfLines:0];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(PKFindBankAccountInformationFooterView *)self _sizeForButton:self->_accountInformationButton constrainedToSize:fits.width + PKSetupViewConstantsViewMargin() * -2.0, 1.79769313e308];
  v5 = width;
  result.height = v4;
  result.width = v5;
  return result;
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = PKFindBankAccountInformationFooterView;
  [(PKFindBankAccountInformationFooterView *)&v10 layoutSubviews];
  [(PKFindBankAccountInformationFooterView *)self bounds];
  v4 = v3;
  v6 = v5;
  v7 = PKSetupViewConstantsViewMargin();
  [(PKFindBankAccountInformationFooterView *)self _sizeForButton:self->_accountInformationButton constrainedToSize:v4 + v7 * -2.0, v6];
  [(UIButton *)self->_accountInformationButton setFrame:v7, 0.0, v8, v9];
}

- (CGSize)_sizeForButton:(id)button constrainedToSize:(CGSize)size
{
  if (button)
  {
    [button sizeThatFits:{size.width, size.height}];
  }

  else
  {
    v4 = *MEMORY[0x1E695F060];
    v5 = *(MEMORY[0x1E695F060] + 8);
  }

  result.height = v5;
  result.width = v4;
  return result;
}

@end