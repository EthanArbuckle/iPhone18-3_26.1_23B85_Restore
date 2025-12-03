@interface SCLMultilineTableViewCell
- (SCLMultilineTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
@end

@implementation SCLMultilineTableViewCell

- (SCLMultilineTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v9.receiver = self;
  v9.super_class = SCLMultilineTableViewCell;
  v5 = [(PSTableCell *)&v9 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  v6 = v5;
  if (v5)
  {
    titleLabel = [(PSTableCell *)v5 titleLabel];
    [titleLabel setNumberOfLines:0];
    [titleLabel setLineBreakMode:0];
  }

  return v6;
}

@end