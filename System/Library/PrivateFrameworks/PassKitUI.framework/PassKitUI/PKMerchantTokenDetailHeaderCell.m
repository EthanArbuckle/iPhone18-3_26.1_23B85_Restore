@interface PKMerchantTokenDetailHeaderCell
- (PKMerchantTokenDetailHeaderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_setUpConstraints;
- (void)_setUpIconView;
- (void)_setUpIconViewConstraints;
- (void)_setUpNameLabel;
- (void)_setUpSelf;
- (void)_setUpStackView;
- (void)_setUpStackViewConstraints;
- (void)_setUpViews;
- (void)updateCellWithMerchantToken:(id)a3;
@end

@implementation PKMerchantTokenDetailHeaderCell

- (PKMerchantTokenDetailHeaderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = PKMerchantTokenDetailHeaderCell;
  v4 = [(PKMerchantTokenDetailHeaderCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(PKMerchantTokenDetailHeaderCell *)v4 _setUpViews];
    [(PKMerchantTokenDetailHeaderCell *)v5 _setUpConstraints];
  }

  return v5;
}

- (void)updateCellWithMerchantToken:(id)a3
{
  v16 = a3;
  v4 = [(PKMerchantTokenIconView *)self->_iconView superview];

  if (v4)
  {
    if ([v16 isAMPPaymentToken])
    {
      iconView = self->_iconView;
      v6 = PKUIImageNamed(@"MerchantTokenAppleMerchantIcon80");
      v7 = 14.0;
      v8 = iconView;
    }

    else
    {
      if (![v16 isAppleCashPaymentToken])
      {
        v12 = self->_iconView;
        v6 = [v16 merchantIconURL];
        v13 = [v16 merchantName];
        [(PKMerchantTokenIconView *)v12 updateWithImageURL:v6 monogramText:v13 cornerRadius:14.0];

        goto LABEL_8;
      }

      v9 = PKPassKitUIBundle();
      v10 = [v9 URLForResource:@"AppleCashIcon" withExtension:@"pdf"];
      v11 = PKUIScreenScale();
      v6 = PKUIImageFromPDF(v10, 80.0, 80.0, v11);

      v8 = self->_iconView;
      v7 = 14.0;
    }

    [(PKMerchantTokenIconView *)v8 updateWithImage:v6 cornerRadius:v7];
LABEL_8:
  }

  nameLabel = self->_nameLabel;
  v15 = [v16 merchantName];
  [(UILabel *)nameLabel setText:v15];
}

- (void)_setUpViews
{
  [(PKMerchantTokenDetailHeaderCell *)self _setUpSelf];
  [(PKMerchantTokenDetailHeaderCell *)self _setUpStackView];
  [(PKMerchantTokenDetailHeaderCell *)self _setUpIconView];

  [(PKMerchantTokenDetailHeaderCell *)self _setUpNameLabel];
}

- (void)_setUpSelf
{
  v3 = [MEMORY[0x1E69DC888] clearColor];
  [(PKMerchantTokenDetailHeaderCell *)self setBackgroundColor:v3];
}

- (void)_setUpStackView
{
  v3 = objc_alloc(MEMORY[0x1E69DCF90]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  stackView = self->_stackView;
  self->_stackView = v4;

  [(UIStackView *)self->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_stackView setAxis:1];
  [(UIStackView *)self->_stackView setAlignment:3];
  v6 = [(PKMerchantTokenDetailHeaderCell *)self contentView];
  [v6 addSubview:self->_stackView];
}

- (void)_setUpIconView
{
  v3 = [PKMerchantTokenIconView alloc];
  v4 = [(PKMerchantTokenIconView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  iconView = self->_iconView;
  self->_iconView = v4;

  [(UIStackView *)self->_stackView addArrangedSubview:self->_iconView];
  stackView = self->_stackView;
  v7 = self->_iconView;

  [(UIStackView *)stackView setCustomSpacing:v7 afterView:20.0];
}

- (void)_setUpNameLabel
{
  v3 = objc_alloc(MEMORY[0x1E69DCC10]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  nameLabel = self->_nameLabel;
  self->_nameLabel = v4;

  [(UILabel *)self->_nameLabel setNumberOfLines:2];
  v6 = self->_nameLabel;
  v7 = PKFontForDefaultDesign(*MEMORY[0x1E69DDDB8], *MEMORY[0x1E69DDC30], *MEMORY[0x1E69DB980]);
  [(UILabel *)v6 setFont:v7];

  stackView = self->_stackView;
  v9 = self->_nameLabel;

  [(UIStackView *)stackView addArrangedSubview:v9];
}

- (void)_setUpConstraints
{
  [(PKMerchantTokenDetailHeaderCell *)self _setUpStackViewConstraints];

  [(PKMerchantTokenDetailHeaderCell *)self _setUpIconViewConstraints];
}

- (void)_setUpStackViewConstraints
{
  v18[4] = *MEMORY[0x1E69E9840];
  v3 = [(PKMerchantTokenDetailHeaderCell *)self contentView];
  v13 = MEMORY[0x1E696ACD8];
  v17 = [(UIStackView *)self->_stackView topAnchor];
  v16 = [v3 topAnchor];
  v15 = [v17 constraintEqualToAnchor:v16];
  v18[0] = v15;
  v14 = [(UIStackView *)self->_stackView bottomAnchor];
  v4 = [v3 bottomAnchor];
  v5 = [v14 constraintEqualToAnchor:v4 constant:-8.0];
  v18[1] = v5;
  v6 = [(UIStackView *)self->_stackView leadingAnchor];
  v7 = [v3 leadingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  v18[2] = v8;
  v9 = [(UIStackView *)self->_stackView trailingAnchor];
  v10 = [v3 trailingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v18[3] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:4];
  [v13 activateConstraints:v12];
}

- (void)_setUpIconViewConstraints
{
  v9[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ACD8];
  v4 = [(PKMerchantTokenIconView *)self->_iconView widthAnchor];
  v5 = [v4 constraintEqualToConstant:80.0];
  v9[0] = v5;
  v6 = [(PKMerchantTokenIconView *)self->_iconView heightAnchor];
  v7 = [v6 constraintEqualToConstant:80.0];
  v9[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  [v3 activateConstraints:v8];
}

@end