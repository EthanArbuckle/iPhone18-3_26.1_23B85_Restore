@interface STWrappingTitleValueCell
- (STWrappingTitleValueCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)layoutSubviews;
@end

@implementation STWrappingTitleValueCell

- (STWrappingTitleValueCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v9.receiver = self;
  v9.super_class = STWrappingTitleValueCell;
  v5 = [(PSTableCell *)&v9 initWithStyle:a3 reuseIdentifier:a4 specifier:a5];
  v6 = v5;
  if (v5)
  {
    v7 = [(PSTableCell *)v5 valueLabel];
    [v7 setNumberOfLines:2];
    [v7 setLineBreakMode:4];
  }

  return v6;
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = STWrappingTitleValueCell;
  [(PSTableCell *)&v11 layoutSubviews];
  v3 = [(PSTableCell *)self valueLabel];
  [v3 frame];
  MidY = CGRectGetMidY(v12);

  v5 = [(PSTableCell *)self titleLabel];
  [v5 frame];
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  v10 = MidY - CGRectGetMidY(v13);
  if (v10 > 0.00000011920929)
  {
    [v5 setFrame:{x, y + v10, width, height}];
  }
}

@end