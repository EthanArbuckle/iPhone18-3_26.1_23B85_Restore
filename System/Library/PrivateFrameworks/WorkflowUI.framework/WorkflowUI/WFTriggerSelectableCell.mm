@interface WFTriggerSelectableCell
- (WFTriggerSelectableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)prepareForReuse;
@end

@implementation WFTriggerSelectableCell

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = WFTriggerSelectableCell;
  [(WFTriggerSelectableCell *)&v5 prepareForReuse];
  [(WFTriggerSelectableCell *)self setAccessoryType:0];
  textLabel = [(WFTriggerSelectableCell *)self textLabel];
  [textLabel setText:0];

  detailTextLabel = [(WFTriggerSelectableCell *)self detailTextLabel];
  [detailTextLabel setText:0];
}

- (WFTriggerSelectableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = WFTriggerSelectableCell;
  v4 = [(WFTriggerSelectableCell *)&v9 initWithStyle:3 reuseIdentifier:identifier];
  if (v4)
  {
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    detailTextLabel = [(WFTriggerSelectableCell *)v4 detailTextLabel];
    [detailTextLabel setTextColor:secondaryLabelColor];

    v7 = v4;
  }

  return v4;
}

@end