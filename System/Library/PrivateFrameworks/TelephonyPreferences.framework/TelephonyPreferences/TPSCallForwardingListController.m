@interface TPSCallForwardingListController
- (PSSpecifier)conditionalServiceSwitchSpecifier;
- (PSSpecifier)mainSwitchSpecifier;
- (TPSCallForwardingController)callForwardingController;
- (id)conditionalServiceBusyPhoneNumber:(id)a3;
- (id)conditionalServiceSwitchOn:(id)a3;
- (id)conditionalServiceTypeSpecifiers;
- (id)conditionalServiceUnansweredPhoneNumber:(id)a3;
- (id)conditionalServiceUnreachablePhoneNumber:(id)a3;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)unconditionalServicePhoneNumber:(id)a3;
- (id)unconditionalServiceTypeSpecifiers;
- (void)configureCell:(id)a3;
- (void)configureCell:(id)a3 forSpecifier:(id)a4;
- (void)setConditionalServiceBusyPhoneNumber:(id)a3 specifier:(id)a4;
- (void)setConditionalServiceSwitchOn:(id)a3 specifier:(id)a4;
- (void)setConditionalServiceUnansweredPhoneNumber:(id)a3 specifier:(id)a4;
- (void)setConditionalServiceUnreachablePhoneNumber:(id)a3 specifier:(id)a4;
- (void)setMainSwitchOn:(id)a3;
- (void)setUnconditionalServicePhoneNumber:(id)a3 specifier:(id)a4;
@end

@implementation TPSCallForwardingListController

- (TPSCallForwardingController)callForwardingController
{
  callForwardingController = self->_callForwardingController;
  if (!callForwardingController)
  {
    v4 = [TPSCallForwardingController alloc];
    v5 = [(TPSListController *)self subscriptionContext];
    v6 = [(TPSCallForwardingController *)v4 initWithSubscriptionContext:v5];
    v7 = self->_callForwardingController;
    self->_callForwardingController = v6;

    [(TPSCallForwardingController *)self->_callForwardingController setDelegate:self];
    callForwardingController = self->_callForwardingController;
  }

  return callForwardingController;
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [(TPSListController *)self subscriptionContext];
    v6 = [(TPSCallForwardingListController *)self callForwardingController];
    if (!v5)
    {
LABEL_14:

      v4 = *(&self->super.super.super.super.super.super.isa + v3);
      goto LABEL_15;
    }

    v7 = [MEMORY[0x277CBEB18] array];
    v8 = [(TPSCallForwardingListController *)self mainSwitchSpecifier];
    [v7 addObject:v8];

    v9 = [v6 serviceType];
    if (v9 != 1)
    {
      v10 = v9;
      if (([v6 isLoading] & 1) == 0 && (objc_msgSend(v6, "isUnloading") & 1) == 0)
      {
        if ([v6 isConditionalServiceAvailable])
        {
          v11 = [(TPSCallForwardingListController *)self conditionalServiceSwitchSpecifier];
          [v7 addObject:v11];
        }

        if (v10 == 2)
        {
          v12 = [(TPSCallForwardingListController *)self unconditionalServiceTypeSpecifiers];
          goto LABEL_12;
        }

        if (v10 == 3)
        {
          v12 = [(TPSCallForwardingListController *)self conditionalServiceTypeSpecifiers];
LABEL_12:
          v13 = v12;
          [v7 addObjectsFromArray:v12];
        }
      }
    }

    v14 = [v7 copy];
    v15 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = v14;

    goto LABEL_14;
  }

LABEL_15:

  return v4;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v7.receiver = self;
  v7.super_class = TPSCallForwardingListController;
  v5 = [(TPSCallForwardingListController *)&v7 tableView:a3 cellForRowAtIndexPath:a4];
  [(TPSCallForwardingListController *)self configureCell:v5];

  return v5;
}

- (PSSpecifier)mainSwitchSpecifier
{
  mainSwitchSpecifier = self->_mainSwitchSpecifier;
  if (!mainSwitchSpecifier)
  {
    v4 = MEMORY[0x277D3FAD8];
    v5 = [TPSLocalizedString localizedStringForKey:@"MAIN_SWITCH_SPECIFIER_TITLE"];
    v6 = [v4 preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:-1 edit:0];
    v7 = self->_mainSwitchSpecifier;
    self->_mainSwitchSpecifier = v6;

    mainSwitchSpecifier = self->_mainSwitchSpecifier;
  }

  return mainSwitchSpecifier;
}

- (PSSpecifier)conditionalServiceSwitchSpecifier
{
  conditionalServiceSwitchSpecifier = self->_conditionalServiceSwitchSpecifier;
  if (!conditionalServiceSwitchSpecifier)
  {
    v4 = MEMORY[0x277D3FAD8];
    v5 = [TPSLocalizedString localizedStringForKey:@"CONDITIONAL_SWITCH_SPECIFIER_TITLE"];
    v6 = [v4 preferenceSpecifierNamed:v5 target:self set:sel_setConditionalServiceSwitchOn_specifier_ get:sel_conditionalServiceSwitchOn_ detail:0 cell:6 edit:0];
    v7 = self->_conditionalServiceSwitchSpecifier;
    self->_conditionalServiceSwitchSpecifier = v6;

    conditionalServiceSwitchSpecifier = self->_conditionalServiceSwitchSpecifier;
  }

  return conditionalServiceSwitchSpecifier;
}

- (id)conditionalServiceTypeSpecifiers
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(TPSCallForwardingListController *)self callForwardingController];
  v5 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  [v3 addObject:v5];
  v6 = MEMORY[0x277D3FAD8];
  v7 = [v4 localizedConditionalBusyTitle];
  v8 = objc_opt_class();
  v9 = [v6 preferenceSpecifierNamed:v7 target:self set:sel_setConditionalServiceBusyPhoneNumber_specifier_ get:sel_conditionalServiceBusyPhoneNumber_ detail:v8 cell:2 edit:objc_opt_class()];

  [v3 addObject:v9];
  v10 = MEMORY[0x277D3FAD8];
  v11 = [v4 localizedConditionalUnansweredTitle];
  v12 = objc_opt_class();
  v13 = [v10 preferenceSpecifierNamed:v11 target:self set:sel_setConditionalServiceUnansweredPhoneNumber_specifier_ get:sel_conditionalServiceUnansweredPhoneNumber_ detail:v12 cell:2 edit:objc_opt_class()];

  [v3 addObject:v13];
  v14 = MEMORY[0x277D3FAD8];
  v15 = [v4 localizedConditionalUnreachableTitle];
  v16 = objc_opt_class();
  v17 = [v14 preferenceSpecifierNamed:v15 target:self set:sel_setConditionalServiceUnreachablePhoneNumber_specifier_ get:sel_conditionalServiceUnreachablePhoneNumber_ detail:v16 cell:2 edit:objc_opt_class()];

  [v3 addObject:v17];
  v18 = [v3 copy];

  return v18;
}

- (id)unconditionalServiceTypeSpecifiers
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  [v3 addObject:v4];
  v5 = MEMORY[0x277D3FAD8];
  v6 = [TPSLocalizedString localizedStringForKey:@"UNCONDITIONAL_SERVICE_FORWARD_TO_SPECIFIER_TITLE"];
  v7 = objc_opt_class();
  v8 = [v5 preferenceSpecifierNamed:v6 target:self set:sel_setUnconditionalServicePhoneNumber_specifier_ get:sel_unconditionalServicePhoneNumber_ detail:v7 cell:2 edit:objc_opt_class()];

  [v3 addObject:v8];
  v9 = [v3 copy];

  return v9;
}

- (void)setMainSwitchOn:(id)a3
{
  if ([a3 isOn])
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  v5 = [(TPSCallForwardingListController *)self callForwardingController];
  [v5 updateServiceType:v4];

  [(TPSCallForwardingListController *)self reloadSpecifiers];
}

- (id)conditionalServiceBusyPhoneNumber:(id)a3
{
  v3 = [(TPSCallForwardingListController *)self callForwardingController];
  v4 = [v3 conditionalServiceBusyPhoneNumber];

  return v4;
}

- (void)setConditionalServiceBusyPhoneNumber:(id)a3 specifier:(id)a4
{
  v8 = a4;
  v6 = a3;
  v7 = [(TPSCallForwardingListController *)self callForwardingController];
  [v7 setConditionalServiceBusyPhoneNumber:v6];

  [(TPSCallForwardingListController *)self reloadSpecifier:v8];
}

- (id)conditionalServiceUnansweredPhoneNumber:(id)a3
{
  v3 = [(TPSCallForwardingListController *)self callForwardingController];
  v4 = [v3 conditionalServiceUnansweredPhoneNumber];

  return v4;
}

- (void)setConditionalServiceUnansweredPhoneNumber:(id)a3 specifier:(id)a4
{
  v8 = a4;
  v6 = a3;
  v7 = [(TPSCallForwardingListController *)self callForwardingController];
  [v7 setConditionalServiceUnansweredPhoneNumber:v6];

  [(TPSCallForwardingListController *)self reloadSpecifier:v8];
}

- (id)conditionalServiceUnreachablePhoneNumber:(id)a3
{
  v3 = [(TPSCallForwardingListController *)self callForwardingController];
  v4 = [v3 conditionalServiceUnreachablePhoneNumber];

  return v4;
}

- (void)setConditionalServiceUnreachablePhoneNumber:(id)a3 specifier:(id)a4
{
  v8 = a4;
  v6 = a3;
  v7 = [(TPSCallForwardingListController *)self callForwardingController];
  [v7 setConditionalServiceUnreachablePhoneNumber:v6];

  [(TPSCallForwardingListController *)self reloadSpecifier:v8];
}

- (id)conditionalServiceSwitchOn:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [(TPSCallForwardingListController *)self callForwardingController];
  v5 = [v3 numberWithBool:{objc_msgSend(v4, "serviceType") == 3}];

  return v5;
}

- (void)setConditionalServiceSwitchOn:(id)a3 specifier:(id)a4
{
  v14 = a3;
  v6 = *MEMORY[0x277D3FEB0];
  v7 = a4;
  v8 = [v7 propertyForKey:v6];
  [v8 setOn:objc_msgSend(v14 animated:{"BOOLValue"), 1}];
  v9 = [(TPSCallForwardingListController *)self cachedCellForSpecifier:v7];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v9 setLoading:1];
  }

  v10 = [v14 BOOLValue];
  v11 = [(TPSCallForwardingListController *)self callForwardingController];
  v12 = v11;
  if (v10)
  {
    v13 = 3;
  }

  else
  {
    v13 = 2;
  }

  [v11 updateServiceType:v13];
}

- (id)unconditionalServicePhoneNumber:(id)a3
{
  v3 = [(TPSCallForwardingListController *)self callForwardingController];
  v4 = [v3 unconditionalServicePhoneNumber];

  return v4;
}

- (void)setUnconditionalServicePhoneNumber:(id)a3 specifier:(id)a4
{
  v8 = a4;
  v6 = a3;
  v7 = [(TPSCallForwardingListController *)self callForwardingController];
  [v7 setUnconditionalServicePhoneNumber:v6];

  [(TPSCallForwardingListController *)self reloadSpecifier:v8];
}

- (void)configureCell:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v6;
    v5 = [v4 specifier];
    [(TPSCallForwardingListController *)self configureCell:v4 forSpecifier:v5];
  }
}

- (void)configureCell:(id)a3 forSpecifier:(id)a4
{
  v10 = a3;
  v5 = [(TPSCallForwardingListController *)self callForwardingController];
  v6 = [v10 specifier];
  v7 = [(TPSCallForwardingListController *)self mainSwitchSpecifier];

  if (v6 == v7)
  {
    if (([v5 isLoading] & 1) != 0 || objc_msgSend(v5, "isUnloading"))
    {
      v8 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
      [v8 startAnimating];
    }

    else
    {
      v9 = objc_alloc(MEMORY[0x277D75AE8]);
      v8 = [v9 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
      [v8 addTarget:self action:sel_setMainSwitchOn_ forControlEvents:4096];
      [v8 setOn:{objc_msgSend(v5, "serviceType") != 1}];
    }

    [v10 setAccessoryView:v8];
  }
}

@end