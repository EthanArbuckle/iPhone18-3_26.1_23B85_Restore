@interface ICQSpecifierWithSubtitleCell
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation ICQSpecifierWithSubtitleCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v29.receiver = self;
  v29.super_class = ICQSpecifierWithSubtitleCell;
  v4 = a3;
  [(PSTableCell *)&v29 refreshCellContentsWithSpecifier:v4];
  [(ICQSpecifierWithSubtitleCell *)self setUserInteractionEnabled:0, v29.receiver, v29.super_class];
  v5 = [(ICQSpecifierWithSubtitleCell *)self textLabel];
  v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [v5 setFont:v6];

  v7 = [(ICQSpecifierWithSubtitleCell *)self textLabel];
  v8 = MEMORY[0x277D74300];
  v9 = [(ICQSpecifierWithSubtitleCell *)self textLabel];
  v10 = [v9 font];
  v11 = [v10 fontDescriptor];
  v12 = [v11 fontDescriptorWithSymbolicTraits:2];
  v13 = [(ICQSpecifierWithSubtitleCell *)self textLabel];
  v14 = [v13 font];
  [v14 pointSize];
  v15 = [v8 fontWithDescriptor:v12 size:?];
  [v7 setFont:v15];

  v16 = [(ICQSpecifierWithSubtitleCell *)self textLabel];
  v17 = [MEMORY[0x277D75348] labelColor];
  [v16 setTextColor:v17];

  v18 = [(ICQSpecifierWithSubtitleCell *)self textLabel];
  v19 = [v4 propertyForKey:*MEMORY[0x277D40170]];
  [v18 setText:v19];

  v20 = [(ICQSpecifierWithSubtitleCell *)self textLabel];
  [v20 setNumberOfLines:5];

  v21 = [(ICQSpecifierWithSubtitleCell *)self detailTextLabel];
  v22 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
  [v21 setFont:v22];

  v23 = [(ICQSpecifierWithSubtitleCell *)self detailTextLabel];
  v24 = [MEMORY[0x277D75348] labelColor];
  [v23 setTextColor:v24];

  v25 = [(ICQSpecifierWithSubtitleCell *)self detailTextLabel];
  v26 = [v4 propertyForKey:*MEMORY[0x277D40160]];

  [v25 setText:v26];
  v27 = [(ICQSpecifierWithSubtitleCell *)self detailTextLabel];
  [v27 setNumberOfLines:15];

  v28 = [(ICQSpecifierWithSubtitleCell *)self imageView];
  [v28 setContentMode:1];

  [(ICQSpecifierWithSubtitleCell *)self setNeedsLayout];
}

@end