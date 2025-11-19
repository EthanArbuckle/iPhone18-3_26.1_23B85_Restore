@interface PSMultilineSubtitleSwitchTableViewCell
+ (Class)alternativeCellClass;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation PSMultilineSubtitleSwitchTableViewCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = a3;
  v5 = [(PSMultilineSubtitleSwitchTableViewCell *)self detailTextLabel];
  [v5 setNumberOfLines:0];

  v6.receiver = self;
  v6.super_class = PSMultilineSubtitleSwitchTableViewCell;
  [(PSSubtitleSwitchTableCell *)&v6 refreshCellContentsWithSpecifier:v4];

  [(PSMultilineSubtitleSwitchTableViewCell *)self setNeedsLayout];
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