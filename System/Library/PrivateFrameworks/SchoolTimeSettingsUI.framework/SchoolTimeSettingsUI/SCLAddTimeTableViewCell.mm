@interface SCLAddTimeTableViewCell
- (SCLAddTimeTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
@end

@implementation SCLAddTimeTableViewCell

- (SCLAddTimeTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v12.receiver = self;
  v12.super_class = SCLAddTimeTableViewCell;
  v5 = [(PSTableCell *)&v12 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  v6 = v5;
  if (v5)
  {
    imageView = [(SCLAddTimeTableViewCell *)v5 imageView];
    systemGreenColor = [MEMORY[0x277D75348] systemGreenColor];
    [imageView setTintColor:systemGreenColor];

    textLabel = [(SCLAddTimeTableViewCell *)v6 textLabel];
    systemOrangeColor = [MEMORY[0x277D75348] systemOrangeColor];
    [textLabel setTextColor:systemOrangeColor];
  }

  return v6;
}

@end