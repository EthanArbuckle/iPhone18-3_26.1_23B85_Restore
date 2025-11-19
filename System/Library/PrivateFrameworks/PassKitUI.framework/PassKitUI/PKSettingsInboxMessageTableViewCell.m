@interface PKSettingsInboxMessageTableViewCell
- (PKSettingsInboxMessageTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
@end

@implementation PKSettingsInboxMessageTableViewCell

- (PKSettingsInboxMessageTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v8 = a5;
  v13.receiver = self;
  v13.super_class = PKSettingsInboxMessageTableViewCell;
  v9 = [(PSTableCell *)&v13 initWithStyle:a3 reuseIdentifier:a4 specifier:v8];
  if (v9)
  {
    v10 = [v8 objectForKeyedSubscript:@"pkInboxMessage"];
    v11 = [PKInboxMessageContentConfiguration configurationWithInboxMessage:v10];
    [(PKSettingsInboxMessageTableViewCell *)v9 setContentConfiguration:v11];
  }

  return v9;
}

@end