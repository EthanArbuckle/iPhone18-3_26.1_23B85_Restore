@interface PSUICellularPlanRemovingTableCell
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation PSUICellularPlanRemovingTableCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v23.receiver = self;
  v23.super_class = PSUICellularPlanRemovingTableCell;
  specifierCopy = specifier;
  [(PSUICellularPlanActivatingTableCell *)&v23 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:{*MEMORY[0x277D3FE70], v23.receiver, v23.super_class}];
  v6 = +[PSUICellularPlanManagerCache sharedInstance];
  v7 = [v6 planFromReference:v5];

  v8 = [specifierCopy propertyForKey:*MEMORY[0x277D40128]];

  v9 = +[PSUICoreTelephonySubscriberCache sharedInstance];
  v10 = [v9 shortLabel:v8];

  userLabel = [v7 userLabel];
  label = [userLabel label];

  v13 = +[PSUICoreTelephonyCallCache sharedInstance];
  phoneNumber = [v7 phoneNumber];
  v15 = [v13 localizedPhoneNumber:phoneNumber context:v8];

  if ([v10 length] && -[__CFString length](label, "length"))
  {
    v16 = [v15 length];
    v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v18 = [v17 localizedStringForKey:@"REMOVING" value:&stru_287733598 table:@"Gemini-Gemini"];
    if (v16)
    {
      [(PSUICellularPlanActivatingTableCell *)self _setBadge:v10 andTitle:label andSubtitle:v15 andStatus:v18];
    }

    else
    {
      [(PSUICellularPlanActivatingTableCell *)self _setCenteredBadge:v10 andCenteredTitle:label andStatus:v18];
    }
  }

  else
  {
    v19 = [(__CFString *)label length];
    v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v18 = [v17 localizedStringForKey:@"REMOVING" value:&stru_287733598 table:@"Gemini-Gemini"];
    if (v19)
    {
      selfCopy2 = self;
      v21 = label;
      v22 = v18;
    }

    else
    {
      v22 = &stru_287733598;
      selfCopy2 = self;
      v21 = v18;
    }

    [(PSUICellularPlanActivatingTableCell *)selfCopy2 _setBadgelessCenteredTitle:v21 andStatus:v22];
  }

  [(PSUICellularPlanRemovingTableCell *)self setNeedsLayout];
}

@end