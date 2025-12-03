@interface TUIDeviceSpecifierCell
- (id)blankIcon;
- (id)getLazyIcon;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation TUIDeviceSpecifierCell

- (id)blankIcon
{
  if (blankIcon_onceToken[0] != -1)
  {
    [TUIDeviceSpecifierCell blankIcon];
  }

  v3 = blankIcon__blankIcon;

  return v3;
}

void __35__TUIDeviceSpecifierCell_blankIcon__block_invoke()
{
  v3.height = 40.0;
  v3.width = 29.0;
  UIGraphicsBeginImageContextWithOptions(v3, 0, 0.0);
  v0 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v1 = blankIcon__blankIcon;
  blankIcon__blankIcon = v0;
}

- (id)getLazyIcon
{
  v3 = [TUIDeviceImage alloc];
  v7.receiver = self;
  v7.super_class = TUIDeviceSpecifierCell;
  getLazyIcon = [(PSTableCell *)&v7 getLazyIcon];
  v5 = -[TUIDeviceImage initWithCGImage:](v3, "initWithCGImage:", [getLazyIcon CGImage]);

  return v5;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v22.receiver = self;
  v22.super_class = TUIDeviceSpecifierCell;
  specifierCopy = specifier;
  [(PSTableCell *)&v22 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [(TUIDeviceSpecifierCell *)self textLabel:v22.receiver];
  v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [v5 setFont:v6];

  textLabel = [(TUIDeviceSpecifierCell *)self textLabel];
  labelColor = [MEMORY[0x277D75348] labelColor];
  [textLabel setTextColor:labelColor];

  textLabel2 = [(TUIDeviceSpecifierCell *)self textLabel];
  v10 = [specifierCopy propertyForKey:*MEMORY[0x277D40170]];
  [textLabel2 setText:v10];

  textLabel3 = [(TUIDeviceSpecifierCell *)self textLabel];
  [textLabel3 setLineBreakMode:0];

  textLabel4 = [(TUIDeviceSpecifierCell *)self textLabel];
  [textLabel4 setNumberOfLines:0];

  detailTextLabel = [(TUIDeviceSpecifierCell *)self detailTextLabel];
  v14 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
  [detailTextLabel setFont:v14];

  detailTextLabel2 = [(TUIDeviceSpecifierCell *)self detailTextLabel];
  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  [detailTextLabel2 setTextColor:secondaryLabelColor];

  detailTextLabel3 = [(TUIDeviceSpecifierCell *)self detailTextLabel];
  v18 = [specifierCopy propertyForKey:*MEMORY[0x277D40160]];

  [detailTextLabel3 setText:v18];
  detailTextLabel4 = [(TUIDeviceSpecifierCell *)self detailTextLabel];
  [detailTextLabel4 setLineBreakMode:0];

  detailTextLabel5 = [(TUIDeviceSpecifierCell *)self detailTextLabel];
  [detailTextLabel5 setNumberOfLines:0];

  imageView = [(TUIDeviceSpecifierCell *)self imageView];
  [imageView setContentMode:2];

  [(TUIDeviceSpecifierCell *)self setNeedsLayout];
}

@end