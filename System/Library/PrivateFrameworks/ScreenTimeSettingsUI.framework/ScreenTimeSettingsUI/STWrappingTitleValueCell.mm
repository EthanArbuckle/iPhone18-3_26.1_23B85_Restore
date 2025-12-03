@interface STWrappingTitleValueCell
- (STWrappingTitleValueCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)layoutSubviews;
@end

@implementation STWrappingTitleValueCell

- (STWrappingTitleValueCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v9.receiver = self;
  v9.super_class = STWrappingTitleValueCell;
  v5 = [(PSTableCell *)&v9 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  v6 = v5;
  if (v5)
  {
    valueLabel = [(PSTableCell *)v5 valueLabel];
    [valueLabel setNumberOfLines:2];
    [valueLabel setLineBreakMode:4];
  }

  return v6;
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = STWrappingTitleValueCell;
  [(PSTableCell *)&v11 layoutSubviews];
  valueLabel = [(PSTableCell *)self valueLabel];
  [valueLabel frame];
  MidY = CGRectGetMidY(v12);

  titleLabel = [(PSTableCell *)self titleLabel];
  [titleLabel frame];
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  v10 = MidY - CGRectGetMidY(v13);
  if (v10 > 0.00000011920929)
  {
    [titleLabel setFrame:{x, y + v10, width, height}];
  }
}

@end