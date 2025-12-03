@interface PKPaymentSetupBankAppProductCell
- (PKPaymentSetupBankAppProductCell)init;
- (void)layoutSubviews;
@end

@implementation PKPaymentSetupBankAppProductCell

- (PKPaymentSetupBankAppProductCell)init
{
  reuseIdentifier = [objc_opt_class() reuseIdentifier];
  v8.receiver = self;
  v8.super_class = PKPaymentSetupBankAppProductCell;
  v4 = [(PKPaymentSetupBankAppProductCell *)&v8 initWithStyle:3 reuseIdentifier:reuseIdentifier];

  if (v4)
  {
    detailTextLabel = [(PKPaymentSetupBankAppProductCell *)v4 detailTextLabel];
    separatorColor = [MEMORY[0x1E69DC888] separatorColor];
    [detailTextLabel setTextColor:separatorColor];
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
  detailTextLabel = [(PKPaymentSetupBankAppProductCell *)self detailTextLabel];
  textLabel = [(PKPaymentSetupBankAppProductCell *)self textLabel];
  text = [detailTextLabel text];
  v8 = [text length];

  if (!v8)
  {
    [textLabel frame];
    contentView = [(PKPaymentSetupBankAppProductCell *)self contentView];
    [contentView bounds];
    UIRectCenteredYInRect();
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    [textLabel setFrame:{v11, v13, v15, v17}];
  }

  if (v4 > 0.0)
  {
    [detailTextLabel frame];
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

    [detailTextLabel setFrame:{v4, y, v22, height}];
  }
}

@end