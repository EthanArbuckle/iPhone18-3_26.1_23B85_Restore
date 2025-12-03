@interface ICQSpecifierWithSubtitleCell
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation ICQSpecifierWithSubtitleCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v29.receiver = self;
  v29.super_class = ICQSpecifierWithSubtitleCell;
  specifierCopy = specifier;
  [(PSTableCell *)&v29 refreshCellContentsWithSpecifier:specifierCopy];
  [(ICQSpecifierWithSubtitleCell *)self setUserInteractionEnabled:0, v29.receiver, v29.super_class];
  textLabel = [(ICQSpecifierWithSubtitleCell *)self textLabel];
  v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [textLabel setFont:v6];

  textLabel2 = [(ICQSpecifierWithSubtitleCell *)self textLabel];
  v8 = MEMORY[0x277D74300];
  textLabel3 = [(ICQSpecifierWithSubtitleCell *)self textLabel];
  font = [textLabel3 font];
  fontDescriptor = [font fontDescriptor];
  v12 = [fontDescriptor fontDescriptorWithSymbolicTraits:2];
  textLabel4 = [(ICQSpecifierWithSubtitleCell *)self textLabel];
  font2 = [textLabel4 font];
  [font2 pointSize];
  v15 = [v8 fontWithDescriptor:v12 size:?];
  [textLabel2 setFont:v15];

  textLabel5 = [(ICQSpecifierWithSubtitleCell *)self textLabel];
  labelColor = [MEMORY[0x277D75348] labelColor];
  [textLabel5 setTextColor:labelColor];

  textLabel6 = [(ICQSpecifierWithSubtitleCell *)self textLabel];
  v19 = [specifierCopy propertyForKey:*MEMORY[0x277D40170]];
  [textLabel6 setText:v19];

  textLabel7 = [(ICQSpecifierWithSubtitleCell *)self textLabel];
  [textLabel7 setNumberOfLines:5];

  detailTextLabel = [(ICQSpecifierWithSubtitleCell *)self detailTextLabel];
  v22 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
  [detailTextLabel setFont:v22];

  detailTextLabel2 = [(ICQSpecifierWithSubtitleCell *)self detailTextLabel];
  labelColor2 = [MEMORY[0x277D75348] labelColor];
  [detailTextLabel2 setTextColor:labelColor2];

  detailTextLabel3 = [(ICQSpecifierWithSubtitleCell *)self detailTextLabel];
  v26 = [specifierCopy propertyForKey:*MEMORY[0x277D40160]];

  [detailTextLabel3 setText:v26];
  detailTextLabel4 = [(ICQSpecifierWithSubtitleCell *)self detailTextLabel];
  [detailTextLabel4 setNumberOfLines:15];

  imageView = [(ICQSpecifierWithSubtitleCell *)self imageView];
  [imageView setContentMode:1];

  [(ICQSpecifierWithSubtitleCell *)self setNeedsLayout];
}

@end