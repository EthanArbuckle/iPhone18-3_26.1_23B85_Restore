@interface SCLTitleSubtitleTableViewCell
- (SCLTitleSubtitleTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
@end

@implementation SCLTitleSubtitleTableViewCell

- (SCLTitleSubtitleTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v12.receiver = self;
  v12.super_class = SCLTitleSubtitleTableViewCell;
  v5 = [(PSTableCell *)&v12 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  v6 = v5;
  if (v5)
  {
    textLabel = [(SCLTitleSubtitleTableViewCell *)v5 textLabel];
    [textLabel setNumberOfLines:0];

    detailTextLabel = [(SCLTitleSubtitleTableViewCell *)v6 detailTextLabel];
    [detailTextLabel setNumberOfLines:0];

    detailTextLabel2 = [(SCLTitleSubtitleTableViewCell *)v6 detailTextLabel];
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [detailTextLabel2 setTextColor:secondaryLabelColor];
  }

  return v6;
}

@end