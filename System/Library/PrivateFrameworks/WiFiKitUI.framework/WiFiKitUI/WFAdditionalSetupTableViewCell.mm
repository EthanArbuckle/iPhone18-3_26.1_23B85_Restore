@interface WFAdditionalSetupTableViewCell
- (UILabel)label;
- (void)awakeFromNib;
@end

@implementation WFAdditionalSetupTableViewCell

- (void)awakeFromNib
{
  v8.receiver = self;
  v8.super_class = WFAdditionalSetupTableViewCell;
  [(WFAdditionalSetupTableViewCell *)&v8 awakeFromNib];
  v3 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  v4 = MEMORY[0x277D74300];
  [v3 pointSize];
  v5 = [v4 boldSystemFontOfSize:?];
  v6 = [(WFAdditionalSetupTableViewCell *)self label];
  [v6 setFont:v5];

  v7 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
  [(WFAdditionalSetupTableViewCell *)self setBackgroundColor:v7];
}

- (UILabel)label
{
  WeakRetained = objc_loadWeakRetained(&self->_label);

  return WeakRetained;
}

@end