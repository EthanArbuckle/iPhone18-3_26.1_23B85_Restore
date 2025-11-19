@interface ICQUIiCloudPlusHeaderCell
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation ICQUIiCloudPlusHeaderCell

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = ICQUIiCloudPlusHeaderCell;
  [(PSTableCell *)&v8 layoutSubviews];
  v3 = [MEMORY[0x277D75348] clearColor];
  [(ICQUIiCloudPlusHeaderCell *)self setSeparatorColor:v3];

  v4 = [(ICQUIiCloudPlusHeaderCell *)self textLabel];
  v5 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76918] weight:*MEMORY[0x277D743F8]];
  [v4 setFont:v5];

  v6 = [(ICQUIiCloudPlusHeaderCell *)self textLabel];
  v7 = [MEMORY[0x277D75348] labelColor];
  [v6 setColor:v7];

  [(ICQUIiCloudPlusHeaderCell *)self setNeedsDisplay];
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v7.receiver = self;
  v7.super_class = ICQUIiCloudPlusHeaderCell;
  v4 = a3;
  [(PSTableCell *)&v7 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 objectForKeyedSubscript:{*MEMORY[0x277D40170], v7.receiver, v7.super_class}];

  v6 = [(ICQUIiCloudPlusHeaderCell *)self textLabel];
  [v6 setText:v5];
}

@end