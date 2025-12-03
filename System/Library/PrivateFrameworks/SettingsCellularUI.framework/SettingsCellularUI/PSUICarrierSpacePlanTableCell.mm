@interface PSUICarrierSpacePlanTableCell
+ (id)checkIcon;
+ (id)spacerIcon;
- (BOOL)canBeChecked;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PSUICarrierSpacePlanTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (id)detailText;
- (id)primaryText;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation PSUICarrierSpacePlanTableCell

+ (id)checkIcon
{
  v2 = checkIcon_check;
  if (!checkIcon_check)
  {
    v3 = [MEMORY[0x277D74310] defaultFontDescriptorWithTextStyle:*MEMORY[0x277D76918]];
    v4 = [v3 fontDescriptorWithSymbolicTraits:2];

    v5 = [MEMORY[0x277D74300] fontWithDescriptor:v4 size:0.0];
    v6 = [MEMORY[0x277D755D0] configurationWithFont:v5 scale:2];
    v7 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark" withConfiguration:v6];
    v8 = checkIcon_check;
    checkIcon_check = v7;

    v2 = checkIcon_check;
  }

  return v2;
}

+ (id)spacerIcon
{
  v3 = spacerIcon_spacer;
  if (!spacerIcon_spacer)
  {
    checkIcon = [self checkIcon];
    v5 = checkIcon;
    if (checkIcon)
    {
      [checkIcon size];
      UIGraphicsBeginImageContextWithOptions(v10, 0, 0.0);
      v6 = UIGraphicsGetImageFromCurrentImageContext();
      v7 = spacerIcon_spacer;
      spacerIcon_spacer = v6;

      UIGraphicsEndImageContext();
    }

    v3 = spacerIcon_spacer;
  }

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v6.receiver = self;
  v6.super_class = PSUICarrierSpacePlanTableCell;
  [(PSUICarrierSpacePlanTableCell *)&v6 sizeThatFits:fits.width, fits.height];
  v5 = v4 + -12.0;
  result.height = v5;
  result.width = v3;
  return result;
}

- (PSUICarrierSpacePlanTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v6.receiver = self;
  v6.super_class = PSUICarrierSpacePlanTableCell;
  return [(PSTableCell *)&v6 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
}

- (BOOL)canBeChecked
{
  specifier = [(PSTableCell *)self specifier];
  v3 = [specifier propertyForKey:@"PSUICellularCellCanBeChecked"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (id)primaryText
{
  specifier = [(PSTableCell *)self specifier];
  v3 = [specifier propertyForKey:@"PSUICellularCellPrimaryText"];

  return v3;
}

- (id)detailText
{
  specifier = [(PSTableCell *)self specifier];
  v3 = [specifier propertyForKey:@"PSUICellularCellDetailText"];

  return v3;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v18.receiver = self;
  v18.super_class = PSUICarrierSpacePlanTableCell;
  [(PSTableCell *)&v18 refreshCellContentsWithSpecifier:specifier];
  specifier = [(PSTableCell *)self specifier];
  v5 = [specifier propertyForKey:@"PSUICellularCellIsChecked"];

  if (v5 && [v5 BOOLValue])
  {
    checkIcon = [objc_opt_class() checkIcon];
    v7 = 1;
  }

  else
  {
    checkIcon = [objc_opt_class() spacerIcon];
    v7 = 0;
  }

  [(PSTableCell *)self setIcon:checkIcon];

  [(PSUICarrierSpacePlanTableCell *)self setChecked:v7];
  primaryText = [(PSUICarrierSpacePlanTableCell *)self primaryText];
  textLabel = [(PSUICarrierSpacePlanTableCell *)self textLabel];
  [textLabel setText:primaryText];

  detailText = [(PSUICarrierSpacePlanTableCell *)self detailText];
  detailTextLabel = [(PSUICarrierSpacePlanTableCell *)self detailTextLabel];
  [detailTextLabel setText:detailText];

  canBeChecked = [(PSUICarrierSpacePlanTableCell *)self canBeChecked];
  titleLabel = [(PSTableCell *)self titleLabel];
  [titleLabel setEnabled:canBeChecked];

  detailTextLabel2 = [(PSUICarrierSpacePlanTableCell *)self detailTextLabel];
  [detailTextLabel2 setEnabled:canBeChecked];

  accessoryText = [(PSUICarrierSpacePlanTableCell *)self accessoryText];
  if ([accessoryText length])
  {
    v16 = objc_alloc(MEMORY[0x277D756B8]);
    v17 = [v16 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v17 setText:accessoryText];
    [v17 sizeToFit];
    [(PSUICarrierSpacePlanTableCell *)self setAccessoryView:v17];
  }
}

@end