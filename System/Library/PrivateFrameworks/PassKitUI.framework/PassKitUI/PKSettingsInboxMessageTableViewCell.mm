@interface PKSettingsInboxMessageTableViewCell
- (PKSettingsInboxMessageTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
@end

@implementation PKSettingsInboxMessageTableViewCell

- (PKSettingsInboxMessageTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  specifierCopy = specifier;
  v13.receiver = self;
  v13.super_class = PKSettingsInboxMessageTableViewCell;
  v9 = [(PSTableCell *)&v13 initWithStyle:style reuseIdentifier:identifier specifier:specifierCopy];
  if (v9)
  {
    v10 = [specifierCopy objectForKeyedSubscript:@"pkInboxMessage"];
    v11 = [PKInboxMessageContentConfiguration configurationWithInboxMessage:v10];
    [(PKSettingsInboxMessageTableViewCell *)v9 setContentConfiguration:v11];
  }

  return v9;
}

@end