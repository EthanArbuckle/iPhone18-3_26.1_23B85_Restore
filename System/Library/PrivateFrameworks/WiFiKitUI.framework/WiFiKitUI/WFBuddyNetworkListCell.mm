@interface WFBuddyNetworkListCell
- (NSLayoutConstraint)bottomLabelConstraint;
- (NSLayoutConstraint)topLabelConstraint;
- (NSLayoutConstraint)trailingImageViewConstraint;
- (void)awakeFromNib;
- (void)layoutSubviews;
@end

@implementation WFBuddyNetworkListCell

- (void)awakeFromNib
{
  v17[2] = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = WFBuddyNetworkListCell;
  [(WFNetworkListCell *)&v15 awakeFromNib];
  v16[0] = *MEMORY[0x277D740C0];
  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  v17[0] = systemBlueColor;
  v16[1] = *MEMORY[0x277D740A8];
  mEMORY[0x277D4DAA8] = [MEMORY[0x277D4DAA8] sharedStyle];
  tableCellFont = [mEMORY[0x277D4DAA8] tableCellFont];
  v17[1] = tableCellFont;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

  [@"A" sizeWithAttributes:v6];
  v8 = v7;
  WeakRetained = objc_loadWeakRetained(&self->_topLabelConstraint);
  [WeakRetained setConstant:v8];

  v10 = objc_loadWeakRetained(&self->_bottomLabelConstraint);
  [v10 setConstant:v8];

  secondarySystemBackgroundColor = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
  [(WFBuddyNetworkListCell *)self setBackgroundColor:secondarySystemBackgroundColor];

  defaultTextColor = [MEMORY[0x277D75348] defaultTextColor];
  textLabel = [(WFBuddyNetworkListCell *)self textLabel];
  [textLabel setTextColor:defaultTextColor];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = WFBuddyNetworkListCell;
  [(WFBuddyNetworkListCell *)&v5 layoutSubviews];
  if ([(WFBuddyNetworkListCell *)self accessoryType]== 4)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 8.0;
  }

  trailingImageViewConstraint = [(WFBuddyNetworkListCell *)self trailingImageViewConstraint];
  [trailingImageViewConstraint setConstant:v3];
}

- (NSLayoutConstraint)trailingImageViewConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_trailingImageViewConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)topLabelConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_topLabelConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)bottomLabelConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_bottomLabelConstraint);

  return WeakRetained;
}

@end