@interface PSIconMarginTableCell
- (void)layoutSubviews;
@end

@implementation PSIconMarginTableCell

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = PSIconMarginTableCell;
  [(PSTableCell *)&v18 layoutSubviews];
  v3 = [(PSTableCell *)self titleLabel];

  if (v3)
  {
    v4 = [(PSTableCell *)self titleLabel];
    [v4 frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;

    if (([(PSIconMarginTableCell *)self _shouldReverseLayoutDirection]& 1) != 0)
    {
      v11 = [(PSIconMarginTableCell *)self contentView];
      [v11 bounds];
      v13 = v12 - v8;
      [(PSIconMarginTableCell *)self iconMargin];
      v15 = v13 - v14;
    }

    else
    {
      [(PSIconMarginTableCell *)self iconMargin];
      v15 = v16;
    }

    v17 = [(PSTableCell *)self titleLabel];
    [v17 setFrame:{v15, v6, v8, v10}];
  }
}

@end