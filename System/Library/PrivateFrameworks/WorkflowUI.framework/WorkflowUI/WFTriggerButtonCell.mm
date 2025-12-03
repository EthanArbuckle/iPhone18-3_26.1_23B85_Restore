@interface WFTriggerButtonCell
- (WFTriggerButtonCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)prepareForReuse;
@end

@implementation WFTriggerButtonCell

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = WFTriggerButtonCell;
  [(WFTriggerButtonCell *)&v5 prepareForReuse];
  textLabel = [(WFTriggerButtonCell *)self textLabel];
  [textLabel setText:0];

  detailTextLabel = [(WFTriggerButtonCell *)self detailTextLabel];
  [detailTextLabel setText:0];
}

- (WFTriggerButtonCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = WFTriggerButtonCell;
  v4 = [(WFTriggerButtonCell *)&v9 initWithStyle:1 reuseIdentifier:identifier];
  if (v4)
  {
    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
    detailTextLabel = [(WFTriggerButtonCell *)v4 detailTextLabel];
    [detailTextLabel setTextColor:systemBlueColor];

    v7 = v4;
  }

  return v4;
}

@end