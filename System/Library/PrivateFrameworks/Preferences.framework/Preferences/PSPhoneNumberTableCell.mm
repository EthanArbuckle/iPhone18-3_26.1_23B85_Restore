@interface PSPhoneNumberTableCell
- (void)layoutSubviews;
@end

@implementation PSPhoneNumberTableCell

- (void)layoutSubviews
{
  v24.receiver = self;
  v24.super_class = PSPhoneNumberTableCell;
  [(PSEditableTableCell *)&v24 layoutSubviews];
  contentView = [(PSPhoneNumberTableCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  textField = [(PSEditableTableCell *)self textField];
  [textField frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

  textField2 = [(PSEditableTableCell *)self textField];
  if (userInterfaceLayoutDirection)
  {
    [textField2 setTextAlignment:0];

    v22 = 35.0;
  }

  else
  {
    [textField2 setTextAlignment:2];

    v25.origin.x = v5;
    v25.origin.y = v7;
    v25.size.width = v9;
    v25.size.height = v11;
    v22 = CGRectGetMaxX(v25) + -35.0 - v16;
  }

  textField3 = [(PSEditableTableCell *)self textField];
  [textField3 setFrame:{v22, v14, v16, v18}];
}

@end