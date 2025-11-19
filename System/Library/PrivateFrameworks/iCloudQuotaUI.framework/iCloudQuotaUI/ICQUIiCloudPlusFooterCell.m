@interface ICQUIiCloudPlusFooterCell
- (void)_addTopBorder;
- (void)layoutSubviews;
@end

@implementation ICQUIiCloudPlusFooterCell

- (void)_addTopBorder
{
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  v4 = [(ICQUIiCloudPlusFooterCell *)self contentView];
  [v4 bounds];
  v8 = [v3 initWithFrame:{20.0, 0.0, v5 + -20.0, 0.5}];

  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [MEMORY[0x277D75348] separatorColor];
  [v8 setBackgroundColor:v6];

  v7 = [(ICQUIiCloudPlusFooterCell *)self contentView];
  [v7 addSubview:v8];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = ICQUIiCloudPlusFooterCell;
  [(PSTableCell *)&v3 layoutSubviews];
  [(ICQUIiCloudPlusFooterCell *)self _addTopBorder];
  [(ICQUIiCloudPlusFooterCell *)self setNeedsDisplay];
}

@end