@interface SCLMultilineTableViewCell
- (SCLMultilineTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
@end

@implementation SCLMultilineTableViewCell

- (SCLMultilineTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v9.receiver = self;
  v9.super_class = SCLMultilineTableViewCell;
  v5 = [(PSTableCell *)&v9 initWithStyle:a3 reuseIdentifier:a4 specifier:a5];
  v6 = v5;
  if (v5)
  {
    v7 = [(PSTableCell *)v5 titleLabel];
    [v7 setNumberOfLines:0];
    [v7 setLineBreakMode:0];
  }

  return v6;
}

@end