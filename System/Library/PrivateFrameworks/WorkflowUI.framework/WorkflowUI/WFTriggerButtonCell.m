@interface WFTriggerButtonCell
- (WFTriggerButtonCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)prepareForReuse;
@end

@implementation WFTriggerButtonCell

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = WFTriggerButtonCell;
  [(WFTriggerButtonCell *)&v5 prepareForReuse];
  v3 = [(WFTriggerButtonCell *)self textLabel];
  [v3 setText:0];

  v4 = [(WFTriggerButtonCell *)self detailTextLabel];
  [v4 setText:0];
}

- (WFTriggerButtonCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v9.receiver = self;
  v9.super_class = WFTriggerButtonCell;
  v4 = [(WFTriggerButtonCell *)&v9 initWithStyle:1 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [MEMORY[0x277D75348] systemBlueColor];
    v6 = [(WFTriggerButtonCell *)v4 detailTextLabel];
    [v6 setTextColor:v5];

    v7 = v4;
  }

  return v4;
}

@end