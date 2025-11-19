@interface PSUICarrierSpacePlanTableCell
+ (id)checkIcon;
+ (id)spacerIcon;
- (BOOL)canBeChecked;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PSUICarrierSpacePlanTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (id)detailText;
- (id)primaryText;
- (void)refreshCellContentsWithSpecifier:(id)a3;
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
    v4 = [a1 checkIcon];
    v5 = v4;
    if (v4)
    {
      [v4 size];
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  v6.receiver = self;
  v6.super_class = PSUICarrierSpacePlanTableCell;
  [(PSUICarrierSpacePlanTableCell *)&v6 sizeThatFits:a3.width, a3.height];
  v5 = v4 + -12.0;
  result.height = v5;
  result.width = v3;
  return result;
}

- (PSUICarrierSpacePlanTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v6.receiver = self;
  v6.super_class = PSUICarrierSpacePlanTableCell;
  return [(PSTableCell *)&v6 initWithStyle:a3 reuseIdentifier:a4 specifier:a5];
}

- (BOOL)canBeChecked
{
  v2 = [(PSTableCell *)self specifier];
  v3 = [v2 propertyForKey:@"PSUICellularCellCanBeChecked"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (id)primaryText
{
  v2 = [(PSTableCell *)self specifier];
  v3 = [v2 propertyForKey:@"PSUICellularCellPrimaryText"];

  return v3;
}

- (id)detailText
{
  v2 = [(PSTableCell *)self specifier];
  v3 = [v2 propertyForKey:@"PSUICellularCellDetailText"];

  return v3;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v18.receiver = self;
  v18.super_class = PSUICarrierSpacePlanTableCell;
  [(PSTableCell *)&v18 refreshCellContentsWithSpecifier:a3];
  v4 = [(PSTableCell *)self specifier];
  v5 = [v4 propertyForKey:@"PSUICellularCellIsChecked"];

  if (v5 && [v5 BOOLValue])
  {
    v6 = [objc_opt_class() checkIcon];
    v7 = 1;
  }

  else
  {
    v6 = [objc_opt_class() spacerIcon];
    v7 = 0;
  }

  [(PSTableCell *)self setIcon:v6];

  [(PSUICarrierSpacePlanTableCell *)self setChecked:v7];
  v8 = [(PSUICarrierSpacePlanTableCell *)self primaryText];
  v9 = [(PSUICarrierSpacePlanTableCell *)self textLabel];
  [v9 setText:v8];

  v10 = [(PSUICarrierSpacePlanTableCell *)self detailText];
  v11 = [(PSUICarrierSpacePlanTableCell *)self detailTextLabel];
  [v11 setText:v10];

  v12 = [(PSUICarrierSpacePlanTableCell *)self canBeChecked];
  v13 = [(PSTableCell *)self titleLabel];
  [v13 setEnabled:v12];

  v14 = [(PSUICarrierSpacePlanTableCell *)self detailTextLabel];
  [v14 setEnabled:v12];

  v15 = [(PSUICarrierSpacePlanTableCell *)self accessoryText];
  if ([v15 length])
  {
    v16 = objc_alloc(MEMORY[0x277D756B8]);
    v17 = [v16 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v17 setText:v15];
    [v17 sizeToFit];
    [(PSUICarrierSpacePlanTableCell *)self setAccessoryView:v17];
  }
}

@end