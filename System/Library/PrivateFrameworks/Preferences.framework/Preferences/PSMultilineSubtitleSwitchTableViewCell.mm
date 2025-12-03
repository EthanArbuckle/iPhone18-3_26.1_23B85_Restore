@interface PSMultilineSubtitleSwitchTableViewCell
+ (Class)alternativeCellClass;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation PSMultilineSubtitleSwitchTableViewCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  detailTextLabel = [(PSMultilineSubtitleSwitchTableViewCell *)self detailTextLabel];
  [detailTextLabel setNumberOfLines:0];

  v6.receiver = self;
  v6.super_class = PSMultilineSubtitleSwitchTableViewCell;
  [(PSSubtitleSwitchTableCell *)&v6 refreshCellContentsWithSpecifier:specifierCopy];

  [(PSMultilineSubtitleSwitchTableViewCell *)self setNeedsLayout];
}

+ (Class)alternativeCellClass
{
  if (objc_opt_class() == self)
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