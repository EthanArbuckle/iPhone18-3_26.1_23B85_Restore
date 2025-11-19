@interface PKPaymentSetupBankAppProductCell
- (PKPaymentSetupBankAppProductCell)init;
- (void)layoutSubviews;
@end

@implementation PKPaymentSetupBankAppProductCell

- (PKPaymentSetupBankAppProductCell)init
{
  v3 = [objc_opt_class() reuseIdentifier];
  v8.receiver = self;
  v8.super_class = PKPaymentSetupBankAppProductCell;
  v4 = [(PKPaymentSetupBankAppProductCell *)&v8 initWithStyle:3 reuseIdentifier:v3];

  if (v4)
  {
    v5 = [(PKPaymentSetupBankAppProductCell *)v4 detailTextLabel];
    v6 = [MEMORY[0x1E69DC888] separatorColor];
    [v5 setTextColor:v6];
  }

  return v4;
}

- (void)layoutSubviews
{
  v23.receiver = self;
  v23.super_class = PKPaymentSetupBankAppProductCell;
  [(PKPaymentSetupProductCell *)&v23 layoutSubviews];
  [(PKPaymentSetupProductCell *)self textLabelOffset];
  v4 = v3;
  v5 = [(PKPaymentSetupBankAppProductCell *)self detailTextLabel];
  v6 = [(PKPaymentSetupBankAppProductCell *)self textLabel];
  v7 = [v5 text];
  v8 = [v7 length];

  if (!v8)
  {
    [v6 frame];
    v9 = [(PKPaymentSetupBankAppProductCell *)self contentView];
    [v9 bounds];
    UIRectCenteredYInRect();
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    [v6 setFrame:{v11, v13, v15, v17}];
  }

  if (v4 > 0.0)
  {
    [v5 frame];
    y = v24.origin.y;
    width = v24.size.width;
    height = v24.size.height;
    v24.origin.x = v4;
    v21 = CGRectGetWidth(v24);
    [(PKPaymentSetupBankAppProductCell *)self bounds];
    if (v21 >= CGRectGetWidth(v25) - v4)
    {
      [(PKPaymentSetupBankAppProductCell *)self bounds];
      v22 = CGRectGetWidth(v27) - v4;
    }

    else
    {
      v26.origin.x = v4;
      v26.origin.y = y;
      v26.size.width = width;
      v26.size.height = height;
      v22 = CGRectGetWidth(v26);
    }

    [v5 setFrame:{v4, y, v22, height}];
  }
}

@end