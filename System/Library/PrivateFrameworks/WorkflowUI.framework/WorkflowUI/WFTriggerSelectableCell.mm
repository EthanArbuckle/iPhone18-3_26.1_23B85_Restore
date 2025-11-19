@interface WFTriggerSelectableCell
- (WFTriggerSelectableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)prepareForReuse;
@end

@implementation WFTriggerSelectableCell

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = WFTriggerSelectableCell;
  [(WFTriggerSelectableCell *)&v5 prepareForReuse];
  [(WFTriggerSelectableCell *)self setAccessoryType:0];
  v3 = [(WFTriggerSelectableCell *)self textLabel];
  [v3 setText:0];

  v4 = [(WFTriggerSelectableCell *)self detailTextLabel];
  [v4 setText:0];
}

- (WFTriggerSelectableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v9.receiver = self;
  v9.super_class = WFTriggerSelectableCell;
  v4 = [(WFTriggerSelectableCell *)&v9 initWithStyle:3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [MEMORY[0x277D75348] secondaryLabelColor];
    v6 = [(WFTriggerSelectableCell *)v4 detailTextLabel];
    [v6 setTextColor:v5];

    v7 = v4;
  }

  return v4;
}

@end