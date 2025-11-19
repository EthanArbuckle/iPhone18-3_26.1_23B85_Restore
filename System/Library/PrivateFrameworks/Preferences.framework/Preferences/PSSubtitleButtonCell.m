@interface PSSubtitleButtonCell
+ (Class)alternativeCellClass;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation PSSubtitleButtonCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v11.receiver = self;
  v11.super_class = PSSubtitleButtonCell;
  v4 = a3;
  [(PSTableCell *)&v11 refreshCellContentsWithSpecifier:v4];
  v5 = [(PSSubtitleButtonCell *)self textLabel:v11.receiver];
  v6 = [v4 name];
  [v5 setText:v6];

  v7 = [(PSSubtitleButtonCell *)self detailTextLabel];
  v8 = [v4 propertyForKey:@"cellSubtitleText"];
  [v7 setText:v8];

  v9 = [v4 propertyForKey:@"cellSubtitleColor"];

  if (v9)
  {
    v10 = [(PSSubtitleButtonCell *)self detailTextLabel];
    [v10 setTextColor:v9];
  }

  [(PSSubtitleButtonCell *)self setNeedsLayout];
}

+ (Class)alternativeCellClass
{
  if (objc_opt_class() == a1)
  {
    v2 = objc_opt_class();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end