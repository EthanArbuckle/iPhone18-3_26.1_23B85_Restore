@interface PKPeerPaymentMessagesRoundedRectangleButton
+ (CGSize)referenceSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKPeerPaymentMessagesRoundedRectangleButton)init;
- (PKPeerPaymentMessagesRoundedRectangleButton)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation PKPeerPaymentMessagesRoundedRectangleButton

+ (CGSize)referenceSize
{
  v2 = PKIsPad();
  v3 = 153.0;
  if (v2)
  {
    v3 = 163.0;
  }

  v4 = 50.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (PKPeerPaymentMessagesRoundedRectangleButton)init
{
  v3 = *MEMORY[0x1E695EFF8];
  v4 = *(MEMORY[0x1E695EFF8] + 8);
  [objc_opt_class() referenceSize];

  return [(PKPeerPaymentMessagesRoundedRectangleButton *)self initWithFrame:v3, v4, v5, v6];
}

- (PKPeerPaymentMessagesRoundedRectangleButton)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = PKPeerPaymentMessagesRoundedRectangleButton;
  v3 = [(PKPeerPaymentMessagesButton *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[PKPeerPaymentTheme primaryTextColor];
    [(PKPeerPaymentMessagesRoundedRectangleButton *)v3 setTitleColor:v4 forState:0];

    v5 = +[PKPeerPaymentTheme disabledTextColor];
    [(PKPeerPaymentMessagesRoundedRectangleButton *)v3 setTitleColor:v5 forState:2];

    v6 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8]];
    v7 = [v6 fontDescriptorWithSymbolicTraits:2];

    v8 = [(PKPeerPaymentMessagesRoundedRectangleButton *)v3 titleLabel];
    v9 = [MEMORY[0x1E69DB878] fontWithDescriptor:v7 size:0.0];
    [v8 setFont:v9];

    [(PKPeerPaymentMessagesButton *)v3 setHighlighted:0];
  }

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v8.receiver = self;
  v8.super_class = PKPeerPaymentMessagesRoundedRectangleButton;
  [(PKPeerPaymentMessagesRoundedRectangleButton *)&v8 sizeThatFits:a3.width, 50.0];
  v4 = v3;
  if (PKIsPad())
  {
    v5 = 163.0;
  }

  else
  {
    v5 = 153.0;
  }

  v6 = v4 + 32.0;
  if (v5 > v4 + 32.0)
  {
    if (PKIsPad())
    {
      v6 = 163.0;
    }

    else
    {
      v6 = 153.0;
    }
  }

  v7 = 50.0;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKPeerPaymentMessagesRoundedRectangleButton;
  [(PKPeerPaymentMessagesButton *)&v3 layoutSubviews];
  [(PKPeerPaymentMessagesRoundedRectangleButton *)self _setContinuousCornerRadius:12.0];
}

@end