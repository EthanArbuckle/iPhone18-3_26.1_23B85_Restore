@interface SCLTitleSubtitleTableViewCell
- (SCLTitleSubtitleTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
@end

@implementation SCLTitleSubtitleTableViewCell

- (SCLTitleSubtitleTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v12.receiver = self;
  v12.super_class = SCLTitleSubtitleTableViewCell;
  v5 = [(PSTableCell *)&v12 initWithStyle:a3 reuseIdentifier:a4 specifier:a5];
  v6 = v5;
  if (v5)
  {
    v7 = [(SCLTitleSubtitleTableViewCell *)v5 textLabel];
    [v7 setNumberOfLines:0];

    v8 = [(SCLTitleSubtitleTableViewCell *)v6 detailTextLabel];
    [v8 setNumberOfLines:0];

    v9 = [(SCLTitleSubtitleTableViewCell *)v6 detailTextLabel];
    v10 = [MEMORY[0x277D75348] secondaryLabelColor];
    [v9 setTextColor:v10];
  }

  return v6;
}

@end