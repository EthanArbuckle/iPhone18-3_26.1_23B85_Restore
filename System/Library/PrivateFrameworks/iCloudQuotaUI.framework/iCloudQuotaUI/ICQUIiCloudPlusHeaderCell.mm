@interface ICQUIiCloudPlusHeaderCell
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation ICQUIiCloudPlusHeaderCell

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = ICQUIiCloudPlusHeaderCell;
  [(PSTableCell *)&v8 layoutSubviews];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [(ICQUIiCloudPlusHeaderCell *)self setSeparatorColor:clearColor];

  textLabel = [(ICQUIiCloudPlusHeaderCell *)self textLabel];
  v5 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76918] weight:*MEMORY[0x277D743F8]];
  [textLabel setFont:v5];

  textLabel2 = [(ICQUIiCloudPlusHeaderCell *)self textLabel];
  labelColor = [MEMORY[0x277D75348] labelColor];
  [textLabel2 setColor:labelColor];

  [(ICQUIiCloudPlusHeaderCell *)self setNeedsDisplay];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v7.receiver = self;
  v7.super_class = ICQUIiCloudPlusHeaderCell;
  specifierCopy = specifier;
  [(PSTableCell *)&v7 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy objectForKeyedSubscript:{*MEMORY[0x277D40170], v7.receiver, v7.super_class}];

  textLabel = [(ICQUIiCloudPlusHeaderCell *)self textLabel];
  [textLabel setText:v5];
}

@end