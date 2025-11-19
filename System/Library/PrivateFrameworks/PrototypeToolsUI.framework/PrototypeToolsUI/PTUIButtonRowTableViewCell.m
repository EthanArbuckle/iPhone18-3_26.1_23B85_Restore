@interface PTUIButtonRowTableViewCell
- (PTUIButtonRowTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation PTUIButtonRowTableViewCell

- (PTUIButtonRowTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v13.receiver = self;
  v13.super_class = PTUIButtonRowTableViewCell;
  v4 = [(PTUIButtonRowTableViewCell *)&v13 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(PTUIButtonRowTableViewCell *)v4 textLabel];
    v7 = [(PTUIButtonRowTableViewCell *)v5 _tableView];
    v8 = [v7 tintColor];
    [v6 setTextColor:v8];

    v9 = [(PTUIButtonRowTableViewCell *)v5 textLabel];
    v10 = [MEMORY[0x277D74300] boldSystemFontOfSize:18.0];
    [v9 setFont:v10];

    v11 = [(PTUIButtonRowTableViewCell *)v5 textLabel];
    [v11 setTextAlignment:1];
  }

  return v5;
}

@end