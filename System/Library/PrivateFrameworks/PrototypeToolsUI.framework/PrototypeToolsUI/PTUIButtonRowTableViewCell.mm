@interface PTUIButtonRowTableViewCell
- (PTUIButtonRowTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation PTUIButtonRowTableViewCell

- (PTUIButtonRowTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v13.receiver = self;
  v13.super_class = PTUIButtonRowTableViewCell;
  v4 = [(PTUIButtonRowTableViewCell *)&v13 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    textLabel = [(PTUIButtonRowTableViewCell *)v4 textLabel];
    _tableView = [(PTUIButtonRowTableViewCell *)v5 _tableView];
    tintColor = [_tableView tintColor];
    [textLabel setTextColor:tintColor];

    textLabel2 = [(PTUIButtonRowTableViewCell *)v5 textLabel];
    v10 = [MEMORY[0x277D74300] boldSystemFontOfSize:18.0];
    [textLabel2 setFont:v10];

    textLabel3 = [(PTUIButtonRowTableViewCell *)v5 textLabel];
    [textLabel3 setTextAlignment:1];
  }

  return v5;
}

@end