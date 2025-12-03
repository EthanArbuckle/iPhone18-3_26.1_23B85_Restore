@interface PSSubtitleSwitchTableCell
+ (Class)alternativeCellClass;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation PSSubtitleSwitchTableCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v11.receiver = self;
  v11.super_class = PSSubtitleSwitchTableCell;
  specifierCopy = specifier;
  [(PSSwitchTableCell *)&v11 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [(PSSubtitleSwitchTableCell *)self textLabel:v11.receiver];
  name = [specifierCopy name];
  [v5 setText:name];

  detailTextLabel = [(PSSubtitleSwitchTableCell *)self detailTextLabel];
  v8 = [specifierCopy propertyForKey:@"cellSubtitleText"];
  [detailTextLabel setText:v8];

  v9 = [specifierCopy propertyForKey:@"cellSubtitleColor"];

  if (v9)
  {
    detailTextLabel2 = [(PSSubtitleSwitchTableCell *)self detailTextLabel];
    [detailTextLabel2 setTextColor:v9];
  }

  [(PSSubtitleSwitchTableCell *)self setNeedsLayout];
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