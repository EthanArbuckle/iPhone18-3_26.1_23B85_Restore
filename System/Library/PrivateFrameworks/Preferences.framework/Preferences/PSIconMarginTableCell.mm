@interface PSIconMarginTableCell
- (void)layoutSubviews;
@end

@implementation PSIconMarginTableCell

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = PSIconMarginTableCell;
  [(PSTableCell *)&v18 layoutSubviews];
  titleLabel = [(PSTableCell *)self titleLabel];

  if (titleLabel)
  {
    titleLabel2 = [(PSTableCell *)self titleLabel];
    [titleLabel2 frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;

    if (([(PSIconMarginTableCell *)self _shouldReverseLayoutDirection]& 1) != 0)
    {
      contentView = [(PSIconMarginTableCell *)self contentView];
      [contentView bounds];
      v13 = v12 - v8;
      [(PSIconMarginTableCell *)self iconMargin];
      v15 = v13 - v14;
    }

    else
    {
      [(PSIconMarginTableCell *)self iconMargin];
      v15 = v16;
    }

    titleLabel3 = [(PSTableCell *)self titleLabel];
    [titleLabel3 setFrame:{v15, v6, v8, v10}];
  }
}

@end