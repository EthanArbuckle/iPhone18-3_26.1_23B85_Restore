@interface TPSCallForwardingListController
- (PSSpecifier)conditionalServiceSwitchSpecifier;
- (PSSpecifier)mainSwitchSpecifier;
- (TPSCallForwardingController)callForwardingController;
- (id)conditionalServiceBusyPhoneNumber:(id)number;
- (id)conditionalServiceSwitchOn:(id)on;
- (id)conditionalServiceTypeSpecifiers;
- (id)conditionalServiceUnansweredPhoneNumber:(id)number;
- (id)conditionalServiceUnreachablePhoneNumber:(id)number;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)unconditionalServicePhoneNumber:(id)number;
- (id)unconditionalServiceTypeSpecifiers;
- (void)configureCell:(id)cell;
- (void)configureCell:(id)cell forSpecifier:(id)specifier;
- (void)setConditionalServiceBusyPhoneNumber:(id)number specifier:(id)specifier;
- (void)setConditionalServiceSwitchOn:(id)on specifier:(id)specifier;
- (void)setConditionalServiceUnansweredPhoneNumber:(id)number specifier:(id)specifier;
- (void)setConditionalServiceUnreachablePhoneNumber:(id)number specifier:(id)specifier;
- (void)setMainSwitchOn:(id)on;
- (void)setUnconditionalServicePhoneNumber:(id)number specifier:(id)specifier;
@end

@implementation TPSCallForwardingListController

- (TPSCallForwardingController)callForwardingController
{
  callForwardingController = self->_callForwardingController;
  if (!callForwardingController)
  {
    v4 = [TPSCallForwardingController alloc];
    subscriptionContext = [(TPSListController *)self subscriptionContext];
    v6 = [(TPSCallForwardingController *)v4 initWithSubscriptionContext:subscriptionContext];
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
    subscriptionContext = [(TPSListController *)self subscriptionContext];
    callForwardingController = [(TPSCallForwardingListController *)self callForwardingController];
    if (!subscriptionContext)
    {
LABEL_14:

      v4 = *(&self->super.super.super.super.super.super.isa + v3);
      goto LABEL_15;
    }

    array = [MEMORY[0x277CBEB18] array];
    mainSwitchSpecifier = [(TPSCallForwardingListController *)self mainSwitchSpecifier];
    [array addObject:mainSwitchSpecifier];

    serviceType = [callForwardingController serviceType];
    if (serviceType != 1)
    {
      v10 = serviceType;
      if (([callForwardingController isLoading] & 1) == 0 && (objc_msgSend(callForwardingController, "isUnloading") & 1) == 0)
      {
        if ([callForwardingController isConditionalServiceAvailable])
        {
          conditionalServiceSwitchSpecifier = [(TPSCallForwardingListController *)self conditionalServiceSwitchSpecifier];
          [array addObject:conditionalServiceSwitchSpecifier];
        }

        if (v10 == 2)
        {
          unconditionalServiceTypeSpecifiers = [(TPSCallForwardingListController *)self unconditionalServiceTypeSpecifiers];
          goto LABEL_12;
        }

        if (v10 == 3)
        {
          unconditionalServiceTypeSpecifiers = [(TPSCallForwardingListController *)self conditionalServiceTypeSpecifiers];
LABEL_12:
          v13 = unconditionalServiceTypeSpecifiers;
          [array addObjectsFromArray:unconditionalServiceTypeSpecifiers];
        }
      }
    }

    v14 = [array copy];
    v15 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = v14;

    goto LABEL_14;
  }

LABEL_15:

  return v4;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v7.receiver = self;
  v7.super_class = TPSCallForwardingListController;
  v5 = [(TPSCallForwardingListController *)&v7 tableView:view cellForRowAtIndexPath:path];
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
  array = [MEMORY[0x277CBEB18] array];
  callForwardingController = [(TPSCallForwardingListController *)self callForwardingController];
  emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  [array addObject:emptyGroupSpecifier];
  v6 = MEMORY[0x277D3FAD8];
  localizedConditionalBusyTitle = [callForwardingController localizedConditionalBusyTitle];
  v8 = objc_opt_class();
  v9 = [v6 preferenceSpecifierNamed:localizedConditionalBusyTitle target:self set:sel_setConditionalServiceBusyPhoneNumber_specifier_ get:sel_conditionalServiceBusyPhoneNumber_ detail:v8 cell:2 edit:objc_opt_class()];

  [array addObject:v9];
  v10 = MEMORY[0x277D3FAD8];
  localizedConditionalUnansweredTitle = [callForwardingController localizedConditionalUnansweredTitle];
  v12 = objc_opt_class();
  v13 = [v10 preferenceSpecifierNamed:localizedConditionalUnansweredTitle target:self set:sel_setConditionalServiceUnansweredPhoneNumber_specifier_ get:sel_conditionalServiceUnansweredPhoneNumber_ detail:v12 cell:2 edit:objc_opt_class()];

  [array addObject:v13];
  v14 = MEMORY[0x277D3FAD8];
  localizedConditionalUnreachableTitle = [callForwardingController localizedConditionalUnreachableTitle];
  v16 = objc_opt_class();
  v17 = [v14 preferenceSpecifierNamed:localizedConditionalUnreachableTitle target:self set:sel_setConditionalServiceUnreachablePhoneNumber_specifier_ get:sel_conditionalServiceUnreachablePhoneNumber_ detail:v16 cell:2 edit:objc_opt_class()];

  [array addObject:v17];
  v18 = [array copy];

  return v18;
}

- (id)unconditionalServiceTypeSpecifiers
{
  array = [MEMORY[0x277CBEB18] array];
  emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  [array addObject:emptyGroupSpecifier];
  v5 = MEMORY[0x277D3FAD8];
  v6 = [TPSLocalizedString localizedStringForKey:@"UNCONDITIONAL_SERVICE_FORWARD_TO_SPECIFIER_TITLE"];
  v7 = objc_opt_class();
  v8 = [v5 preferenceSpecifierNamed:v6 target:self set:sel_setUnconditionalServicePhoneNumber_specifier_ get:sel_unconditionalServicePhoneNumber_ detail:v7 cell:2 edit:objc_opt_class()];

  [array addObject:v8];
  v9 = [array copy];

  return v9;
}

- (void)setMainSwitchOn:(id)on
{
  if ([on isOn])
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  callForwardingController = [(TPSCallForwardingListController *)self callForwardingController];
  [callForwardingController updateServiceType:v4];

  [(TPSCallForwardingListController *)self reloadSpecifiers];
}

- (id)conditionalServiceBusyPhoneNumber:(id)number
{
  callForwardingController = [(TPSCallForwardingListController *)self callForwardingController];
  conditionalServiceBusyPhoneNumber = [callForwardingController conditionalServiceBusyPhoneNumber];

  return conditionalServiceBusyPhoneNumber;
}

- (void)setConditionalServiceBusyPhoneNumber:(id)number specifier:(id)specifier
{
  specifierCopy = specifier;
  numberCopy = number;
  callForwardingController = [(TPSCallForwardingListController *)self callForwardingController];
  [callForwardingController setConditionalServiceBusyPhoneNumber:numberCopy];

  [(TPSCallForwardingListController *)self reloadSpecifier:specifierCopy];
}

- (id)conditionalServiceUnansweredPhoneNumber:(id)number
{
  callForwardingController = [(TPSCallForwardingListController *)self callForwardingController];
  conditionalServiceUnansweredPhoneNumber = [callForwardingController conditionalServiceUnansweredPhoneNumber];

  return conditionalServiceUnansweredPhoneNumber;
}

- (void)setConditionalServiceUnansweredPhoneNumber:(id)number specifier:(id)specifier
{
  specifierCopy = specifier;
  numberCopy = number;
  callForwardingController = [(TPSCallForwardingListController *)self callForwardingController];
  [callForwardingController setConditionalServiceUnansweredPhoneNumber:numberCopy];

  [(TPSCallForwardingListController *)self reloadSpecifier:specifierCopy];
}

- (id)conditionalServiceUnreachablePhoneNumber:(id)number
{
  callForwardingController = [(TPSCallForwardingListController *)self callForwardingController];
  conditionalServiceUnreachablePhoneNumber = [callForwardingController conditionalServiceUnreachablePhoneNumber];

  return conditionalServiceUnreachablePhoneNumber;
}

- (void)setConditionalServiceUnreachablePhoneNumber:(id)number specifier:(id)specifier
{
  specifierCopy = specifier;
  numberCopy = number;
  callForwardingController = [(TPSCallForwardingListController *)self callForwardingController];
  [callForwardingController setConditionalServiceUnreachablePhoneNumber:numberCopy];

  [(TPSCallForwardingListController *)self reloadSpecifier:specifierCopy];
}

- (id)conditionalServiceSwitchOn:(id)on
{
  v3 = MEMORY[0x277CCABB0];
  callForwardingController = [(TPSCallForwardingListController *)self callForwardingController];
  v5 = [v3 numberWithBool:{objc_msgSend(callForwardingController, "serviceType") == 3}];

  return v5;
}

- (void)setConditionalServiceSwitchOn:(id)on specifier:(id)specifier
{
  onCopy = on;
  v6 = *MEMORY[0x277D3FEB0];
  specifierCopy = specifier;
  v8 = [specifierCopy propertyForKey:v6];
  [v8 setOn:objc_msgSend(onCopy animated:{"BOOLValue"), 1}];
  v9 = [(TPSCallForwardingListController *)self cachedCellForSpecifier:specifierCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v9 setLoading:1];
  }

  bOOLValue = [onCopy BOOLValue];
  callForwardingController = [(TPSCallForwardingListController *)self callForwardingController];
  v12 = callForwardingController;
  if (bOOLValue)
  {
    v13 = 3;
  }

  else
  {
    v13 = 2;
  }

  [callForwardingController updateServiceType:v13];
}

- (id)unconditionalServicePhoneNumber:(id)number
{
  callForwardingController = [(TPSCallForwardingListController *)self callForwardingController];
  unconditionalServicePhoneNumber = [callForwardingController unconditionalServicePhoneNumber];

  return unconditionalServicePhoneNumber;
}

- (void)setUnconditionalServicePhoneNumber:(id)number specifier:(id)specifier
{
  specifierCopy = specifier;
  numberCopy = number;
  callForwardingController = [(TPSCallForwardingListController *)self callForwardingController];
  [callForwardingController setUnconditionalServicePhoneNumber:numberCopy];

  [(TPSCallForwardingListController *)self reloadSpecifier:specifierCopy];
}

- (void)configureCell:(id)cell
{
  cellCopy = cell;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = cellCopy;
    specifier = [v4 specifier];
    [(TPSCallForwardingListController *)self configureCell:v4 forSpecifier:specifier];
  }
}

- (void)configureCell:(id)cell forSpecifier:(id)specifier
{
  cellCopy = cell;
  callForwardingController = [(TPSCallForwardingListController *)self callForwardingController];
  specifier = [cellCopy specifier];
  mainSwitchSpecifier = [(TPSCallForwardingListController *)self mainSwitchSpecifier];

  if (specifier == mainSwitchSpecifier)
  {
    if (([callForwardingController isLoading] & 1) != 0 || objc_msgSend(callForwardingController, "isUnloading"))
    {
      v8 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
      [v8 startAnimating];
    }

    else
    {
      v9 = objc_alloc(MEMORY[0x277D75AE8]);
      v8 = [v9 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
      [v8 addTarget:self action:sel_setMainSwitchOn_ forControlEvents:4096];
      [v8 setOn:{objc_msgSend(callForwardingController, "serviceType") != 1}];
    }

    [cellCopy setAccessoryView:v8];
  }
}

@end