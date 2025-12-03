@interface SHSHeadphoneLevelLimitDescriptionCell
- (SHSHeadphoneLevelLimitDescriptionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)setSeparatorStyle:(int64_t)style;
@end

@implementation SHSHeadphoneLevelLimitDescriptionCell

- (SHSHeadphoneLevelLimitDescriptionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v10.receiver = self;
  v10.super_class = SHSHeadphoneLevelLimitDescriptionCell;
  v4 = [(PSTableCell *)&v10 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    detailTextLabel = [(SHSHeadphoneLevelLimitDescriptionCell *)v4 detailTextLabel];
    [detailTextLabel setFont:v5];

    detailTextLabel2 = [(SHSHeadphoneLevelLimitDescriptionCell *)v4 detailTextLabel];
    [detailTextLabel2 setNumberOfLines:0];

    detailTextLabel3 = [(SHSHeadphoneLevelLimitDescriptionCell *)v4 detailTextLabel];
    [detailTextLabel3 setLineBreakMode:0];
  }

  return v4;
}

- (void)setSeparatorStyle:(int64_t)style
{
  v3.receiver = self;
  v3.super_class = SHSHeadphoneLevelLimitDescriptionCell;
  [(SHSHeadphoneLevelLimitDescriptionCell *)&v3 setSeparatorStyle:0];
}

@end