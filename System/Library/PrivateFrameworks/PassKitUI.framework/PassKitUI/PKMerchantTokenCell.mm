@interface PKMerchantTokenCell
- (PKMerchantTokenCell)initWithFrame:(CGRect)frame;
- (void)_setUpConstraints;
- (void)_setUpIconView;
- (void)_setUpIconViewConstraints;
- (void)_setUpNameLabel;
- (void)_setUpSelf;
- (void)_setUpSeparatorConstraints;
- (void)_setUpStackView;
- (void)_setUpStackViewConstraints;
- (void)_setUpViews;
- (void)updateCellWithMerchantToken:(id)token showMerchantIcon:(BOOL)icon;
@end

@implementation PKMerchantTokenCell

- (PKMerchantTokenCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PKMerchantTokenCell;
  v3 = [(PKMerchantTokenCell *)&v6 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v4 = v3;
  if (v3)
  {
    [(PKMerchantTokenCell *)v3 _setUpViews];
    [(PKMerchantTokenCell *)v4 _setUpConstraints];
  }

  return v4;
}

- (void)updateCellWithMerchantToken:(id)token showMerchantIcon:(BOOL)icon
{
  iconCopy = icon;
  tokenCopy = token;
  v19 = tokenCopy;
  if (!iconCopy)
  {
    [(UIStackView *)self->_stackView removeFromSuperview];
    defaultContentConfiguration = [(PKMerchantTokenCell *)self defaultContentConfiguration];
    merchantName = [v19 merchantName];
    [defaultContentConfiguration setText:merchantName];

    [(PKMerchantTokenCell *)self setContentConfiguration:defaultContentConfiguration];
    goto LABEL_10;
  }

  if ([tokenCopy isAMPPaymentToken])
  {
    iconView = self->_iconView;
    merchantIconURL = PKUIImageNamed(@"MerchantTokenAppleMerchantIcon45");
    v9 = 4.0;
    v10 = iconView;
  }

  else
  {
    if (![v19 isAppleCashPaymentToken])
    {
      v16 = self->_iconView;
      merchantIconURL = [v19 merchantIconURL];
      merchantName2 = [v19 merchantName];
      [(PKMerchantTokenIconView *)v16 updateWithImageURL:merchantIconURL monogramText:merchantName2 cornerRadius:4.0];

      goto LABEL_9;
    }

    v13 = PKPassKitUIBundle();
    v14 = [v13 URLForResource:@"AppleCashIcon" withExtension:@"pdf"];
    v15 = PKUIScreenScale();
    merchantIconURL = PKUIImageFromPDF(v14, 45.0, 45.0, v15);

    v10 = self->_iconView;
    v9 = 4.0;
  }

  [(PKMerchantTokenIconView *)v10 updateWithImage:merchantIconURL cornerRadius:v9];
LABEL_9:

  nameLabel = self->_nameLabel;
  defaultContentConfiguration = [v19 merchantName];
  [(UILabel *)nameLabel setText:defaultContentConfiguration];
LABEL_10:
}

- (void)_setUpViews
{
  [(PKMerchantTokenCell *)self _setUpSelf];
  [(PKMerchantTokenCell *)self _setUpStackView];
  [(PKMerchantTokenCell *)self _setUpIconView];

  [(PKMerchantTokenCell *)self _setUpNameLabel];
}

- (void)_setUpSelf
{
  v5[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DC7A8]);
  v5[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  [(PKMerchantTokenCell *)self setAccessories:v4];
}

- (void)_setUpStackView
{
  v3 = objc_alloc(MEMORY[0x1E69DCF90]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  stackView = self->_stackView;
  self->_stackView = v4;

  [(UIStackView *)self->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_stackView setAlignment:3];
  [(UIStackView *)self->_stackView setSpacing:12.0];
  contentView = [(PKMerchantTokenCell *)self contentView];
  [contentView addSubview:self->_stackView];
}

- (void)_setUpIconView
{
  v3 = [PKMerchantTokenIconView alloc];
  v4 = [(PKMerchantTokenIconView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  iconView = self->_iconView;
  self->_iconView = v4;

  stackView = self->_stackView;
  v7 = self->_iconView;

  [(UIStackView *)stackView addArrangedSubview:v7];
}

- (void)_setUpNameLabel
{
  v3 = objc_alloc(MEMORY[0x1E69DCC10]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  nameLabel = self->_nameLabel;
  self->_nameLabel = v4;

  [(UILabel *)self->_nameLabel setNumberOfLines:2];
  v6 = self->_nameLabel;
  v7 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC30]);
  [(UILabel *)v6 setFont:v7];

  stackView = self->_stackView;
  v9 = self->_nameLabel;

  [(UIStackView *)stackView addArrangedSubview:v9];
}

- (void)_setUpConstraints
{
  [(PKMerchantTokenCell *)self _setUpStackViewConstraints];
  [(PKMerchantTokenCell *)self _setUpIconViewConstraints];

  [(PKMerchantTokenCell *)self _setUpSeparatorConstraints];
}

- (void)_setUpStackViewConstraints
{
  v19[4] = *MEMORY[0x1E69E9840];
  contentView = [(PKMerchantTokenCell *)self contentView];
  layoutMarginsGuide = [contentView layoutMarginsGuide];
  v14 = MEMORY[0x1E696ACD8];
  topAnchor = [(UIStackView *)self->_stackView topAnchor];
  topAnchor2 = [contentView topAnchor];
  v16 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:15.0];
  v19[0] = v16;
  bottomAnchor = [(UIStackView *)self->_stackView bottomAnchor];
  bottomAnchor2 = [contentView bottomAnchor];
  v5 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-16.0];
  v19[1] = v5;
  leadingAnchor = [(UIStackView *)self->_stackView leadingAnchor];
  leadingAnchor2 = [contentView leadingAnchor];
  v8 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:13.0];
  v19[2] = v8;
  trailingAnchor = [(UIStackView *)self->_stackView trailingAnchor];
  trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
  v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v19[3] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:4];
  [v14 activateConstraints:v12];
}

- (void)_setUpIconViewConstraints
{
  v9[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ACD8];
  widthAnchor = [(PKMerchantTokenIconView *)self->_iconView widthAnchor];
  v5 = [widthAnchor constraintEqualToConstant:45.0];
  v9[0] = v5;
  heightAnchor = [(PKMerchantTokenIconView *)self->_iconView heightAnchor];
  v7 = [heightAnchor constraintEqualToConstant:45.0];
  v9[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  [v3 activateConstraints:v8];
}

- (void)_setUpSeparatorConstraints
{
  separatorLayoutGuide = [(PKMerchantTokenCell *)self separatorLayoutGuide];
  leadingAnchor = [separatorLayoutGuide leadingAnchor];
  leadingAnchor2 = [(UIStackView *)self->_stackView leadingAnchor];
  v5 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v5 setActive:1];
}

@end