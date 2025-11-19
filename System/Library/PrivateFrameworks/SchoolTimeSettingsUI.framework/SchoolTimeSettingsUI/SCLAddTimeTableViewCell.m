@interface SCLAddTimeTableViewCell
- (SCLAddTimeTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
@end

@implementation SCLAddTimeTableViewCell

- (SCLAddTimeTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v12.receiver = self;
  v12.super_class = SCLAddTimeTableViewCell;
  v5 = [(PSTableCell *)&v12 initWithStyle:a3 reuseIdentifier:a4 specifier:a5];
  v6 = v5;
  if (v5)
  {
    v7 = [(SCLAddTimeTableViewCell *)v5 imageView];
    v8 = [MEMORY[0x277D75348] systemGreenColor];
    [v7 setTintColor:v8];

    v9 = [(SCLAddTimeTableViewCell *)v6 textLabel];
    v10 = [MEMORY[0x277D75348] systemOrangeColor];
    [v9 setTextColor:v10];
  }

  return v6;
}

@end