@interface WFEmailTriggerConfigurationViewController
- (UIViewController)recipientFieldViewController;
- (UIViewController)senderFieldViewController;
- (WFEmailTriggerConfigurationViewController)initWithTrigger:(id)trigger mode:(unint64_t)mode;
- (id)accountFromAccountIdentifier:(id)identifier;
- (id)customSections;
- (id)infoForSection:(int64_t)section;
- (id)supportedAccountTypeIdentifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableViewCellClasses;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)presentNavControllerWithRootViewController:(id)controller;
- (void)recipientViewControllerDidFinish:(id)finish cancelled:(BOOL)cancelled;
- (void)setUpAccounts;
- (void)showSubjectContainsAlert;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)triggerTableViewController:(id)controller didFinishWithAnySelected:(BOOL)selected orSelectedOptions:(id)options;
- (void)updateUI;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation WFEmailTriggerConfigurationViewController

- (UIViewController)recipientFieldViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_recipientFieldViewController);

  return WeakRetained;
}

- (UIViewController)senderFieldViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_senderFieldViewController);

  return WeakRetained;
}

- (id)accountFromAccountIdentifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allAccounts = [(WFEmailTriggerConfigurationViewController *)self allAccounts];
  v6 = [allAccounts countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(allAccounts);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        identifier = [v9 identifier];
        v11 = [identifier isEqualToString:identifierCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [allAccounts countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)triggerTableViewController:(id)controller didFinishWithAnySelected:(BOOL)selected orSelectedOptions:(id)options
{
  selectedCopy = selected;
  optionsCopy = options;
  controllerCopy = controller;
  if (selectedCopy)
  {
    trigger = [(WFTriggerConfigurationViewController *)self trigger];
    [trigger setSelectedAccountIdentifiers:0];

    trigger2 = [(WFTriggerConfigurationViewController *)self trigger];
    [trigger2 setSelectedAccountDescriptions:0];
  }

  else
  {
    v11 = [optionsCopy if_map:&__block_literal_global_313];
    trigger3 = [(WFTriggerConfigurationViewController *)self trigger];
    [trigger3 setSelectedAccountIdentifiers:v11];

    trigger2 = [optionsCopy if_map:&__block_literal_global_315];
    trigger4 = [(WFTriggerConfigurationViewController *)self trigger];
    [trigger4 setSelectedAccountDescriptions:trigger2];
  }

  [controllerCopy dismissViewControllerAnimated:1 completion:0];
  tableView = [(WFTriggerConfigurationViewController *)self tableView];
  [tableView reloadData];

  [(WFTriggerConfigurationViewController *)self updateNextButtonEnabledState];
}

- (void)recipientViewControllerDidFinish:(id)finish cancelled:(BOOL)cancelled
{
  finishCopy = finish;
  v14 = finishCopy;
  if (cancelled)
  {
    [finishCopy dismissViewControllerAnimated:1 completion:0];
    goto LABEL_9;
  }

  [finishCopy commitRemainingText];
  entries = [v14 entries];
  v8 = [entries if_compactMap:&__block_literal_global_1495];
  recipientFieldViewController = [(WFEmailTriggerConfigurationViewController *)self recipientFieldViewController];

  if (recipientFieldViewController == v14)
  {
    trigger = [(WFTriggerConfigurationViewController *)self trigger];
    [trigger setSelectedRecipients:v8];
    goto LABEL_7;
  }

  senderFieldViewController = [(WFEmailTriggerConfigurationViewController *)self senderFieldViewController];

  v11 = v14;
  if (senderFieldViewController == v14)
  {
    trigger = [(WFTriggerConfigurationViewController *)self trigger];
    [trigger setSelectedSenders:v8];
LABEL_7:

    v11 = v14;
  }

  [v11 dismissViewControllerAnimated:1 completion:0];
  tableView = [(WFTriggerConfigurationViewController *)self tableView];
  [tableView reloadData];

  [(WFTriggerConfigurationViewController *)self updateNextButtonEnabledState];
LABEL_9:
}

id __88__WFEmailTriggerConfigurationViewController_recipientViewControllerDidFinish_cancelled___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 contact];

  if (v3)
  {
    v4 = [v2 contact];

    v5 = [v4 emailAddresses];
    v6 = [v5 firstObject];
    v7 = [v6 value];
    v8 = [v7 address];
  }

  else
  {
    v4 = [v2 emailAddress];

    v8 = [v4 address];
  }

  return v8;
}

- (void)showSubjectContainsAlert
{
  v3 = MEMORY[0x277D75110];
  v4 = WFLocalizedString(@"Subject Contains");
  v5 = WFLocalizedString(@"Only run this automation when the email subject line contains the following:");
  v6 = [v3 alertControllerWithTitle:v4 message:v5 preferredStyle:1];

  v7 = MEMORY[0x277D750F8];
  v8 = WFLocalizedString(@"Done");
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __69__WFEmailTriggerConfigurationViewController_showSubjectContainsAlert__block_invoke;
  v16[3] = &unk_279EE81B0;
  v17 = v6;
  selfCopy = self;
  v9 = v6;
  v10 = [v7 actionWithTitle:v8 style:0 handler:v16];

  v11 = MEMORY[0x277D750F8];
  v12 = WFLocalizedString(@"Cancel");
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __69__WFEmailTriggerConfigurationViewController_showSubjectContainsAlert__block_invoke_2;
  v15[3] = &unk_279EE8188;
  v15[4] = self;
  v13 = [v11 actionWithTitle:v12 style:1 handler:v15];

  [v9 addAction:v10];
  [v9 addAction:v13];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __69__WFEmailTriggerConfigurationViewController_showSubjectContainsAlert__block_invoke_3;
  v14[3] = &unk_279EE7BE8;
  v14[4] = self;
  [v9 addTextFieldWithConfigurationHandler:v14];
  [(WFEmailTriggerConfigurationViewController *)self presentViewController:v9 animated:1 completion:0];
}

void __69__WFEmailTriggerConfigurationViewController_showSubjectContainsAlert__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) textFields];
  v3 = [v2 firstObject];
  v7 = [v3 text];

  if ([v7 length])
  {
    v4 = v7;
  }

  else
  {
    v4 = 0;
  }

  v5 = [*(a1 + 40) trigger];
  [v5 setSelectedSubject:v4];

  v6 = [*(a1 + 40) tableView];
  [v6 reloadData];

  [*(a1 + 40) updateNextButtonEnabledState];
}

uint64_t __69__WFEmailTriggerConfigurationViewController_showSubjectContainsAlert__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  [v2 reloadData];

  v3 = *(a1 + 32);

  return [v3 updateNextButtonEnabledState];
}

void __69__WFEmailTriggerConfigurationViewController_showSubjectContainsAlert__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setAutocapitalizationType:0];
  [v3 setClearButtonMode:3];
  [v3 setReturnKeyType:9];
  v4 = [*(a1 + 32) trigger];
  v5 = [v4 selectedSubject];
  [v3 setText:v5];

  v6 = WFLocalizedStringWithKey(@"Anything prompt", @"Anything");
  [v3 setPlaceholder:v6];
}

- (void)presentNavControllerWithRootViewController:(id)controller
{
  v4 = MEMORY[0x277D757A0];
  controllerCopy = controller;
  v6 = [[v4 alloc] initWithRootViewController:controllerCopy];

  [(WFEmailTriggerConfigurationViewController *)self presentViewController:v6 animated:1 completion:0];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v38 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  v7 = -[WFEmailTriggerConfigurationViewController infoForSection:](self, "infoForSection:", [pathCopy section]);
  v8 = getWFTriggersLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v35 = "[WFEmailTriggerConfigurationViewController tableView:didSelectRowAtIndexPath:]";
    v36 = 2114;
    v37 = v7;
    _os_log_impl(&dword_274719000, v8, OS_LOG_TYPE_DEBUG, "%s didselect section: %{public}@", buf, 0x16u);
  }

  v9 = [v7 objectForKeyedSubscript:@"identifier"];
  v10 = [v9 isEqual:@"senderSection"];

  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x277D7BDE8]);
    v12 = WFLocalizedString(@"Choose Contacts");
    [v11 setTitle:v12];

    v13 = WFLocalizedString(@"From:");
    [v11 setFieldLabel:v13];

    v14 = [MEMORY[0x277CBEB98] setWithObject:&unk_2883C1C10];
    [v11 setSupportedPersonProperties:v14];

    [v11 setDelegate:self];
    [(WFEmailTriggerConfigurationViewController *)self setSenderFieldViewController:v11];
  }

  else
  {
    v15 = [v7 objectForKeyedSubscript:@"identifier"];
    v16 = [v15 isEqual:@"subjectContainsSection"];

    if (v16)
    {
      [(WFEmailTriggerConfigurationViewController *)self showSubjectContainsAlert];
      goto LABEL_9;
    }

    v18 = [v7 objectForKeyedSubscript:@"identifier"];
    v19 = [v18 isEqual:@"accountSection"];

    if (v19)
    {
      trigger = [(WFTriggerConfigurationViewController *)self trigger];
      selectedAccountIdentifiers = [trigger selectedAccountIdentifiers];
      v22 = [selectedAccountIdentifiers count] == 0;

      allAccounts = [(WFEmailTriggerConfigurationViewController *)self allAccounts];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __79__WFEmailTriggerConfigurationViewController_tableView_didSelectRowAtIndexPath___block_invoke;
      v33[3] = &unk_279EE7718;
      v33[4] = self;
      v11 = [allAccounts if_map:v33];

      v24 = [WFTriggerTableViewController alloc];
      v25 = WFLocalizedString(@"Any Account");
      v26 = [(WFTriggerTableViewController *)v24 initWithOptions:v11 anySelected:v22 nameOfAnyOption:v25 mainSectionTitle:0];

      [(WFTriggerTableViewController *)v26 setDelegate:self];
      v27 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v26];
      [(WFEmailTriggerConfigurationViewController *)self presentViewController:v27 animated:1 completion:0];

      goto LABEL_6;
    }

    v28 = [v7 objectForKeyedSubscript:@"identifier"];
    v29 = [v28 isEqual:@"recipientSection"];

    if (!v29)
    {
      goto LABEL_9;
    }

    v11 = objc_alloc_init(MEMORY[0x277D7BDE8]);
    v30 = WFLocalizedString(@"Choose Contacts");
    [v11 setTitle:v30];

    v31 = WFLocalizedString(@"To:");
    [v11 setFieldLabel:v31];

    v32 = [MEMORY[0x277CBEB98] setWithObject:&unk_2883C1C10];
    [v11 setSupportedPersonProperties:v32];

    [v11 setDelegate:self];
    [(WFEmailTriggerConfigurationViewController *)self setRecipientFieldViewController:v11];
  }

  [(WFEmailTriggerConfigurationViewController *)self presentNavControllerWithRootViewController:v11];
LABEL_6:

LABEL_9:
  [(WFTriggerConfigurationViewController *)self didSelectRowAtIndexPath:pathCopy withSectionInfo:v7];
  tableView = [(WFTriggerConfigurationViewController *)self tableView];
  [tableView reloadData];

  [(WFTriggerConfigurationViewController *)self updateNextButtonEnabledState];
}

WFSelectableListOption *__79__WFEmailTriggerConfigurationViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [WFSelectableListOption alloc];
  v5 = [v3 accountDescription];
  v6 = [v3 identifier];
  v7 = [(WFSelectableListOption *)v4 initWithDisplayTitle:v5 value:v6];

  v8 = [*(a1 + 32) trigger];
  v9 = [v8 selectedAccountIdentifiers];
  v10 = [v3 identifier];

  -[WFSelectableListOption setSelected:](v7, "setSelected:", [v9 containsObject:v10]);

  return v7;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v4 = [(WFEmailTriggerConfigurationViewController *)self infoForSection:section];
  v5 = [v4 objectForKeyedSubscript:@"sectionTitle"];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = -[WFEmailTriggerConfigurationViewController infoForSection:](self, "infoForSection:", [pathCopy section]);
  v9 = [v8 objectForKeyedSubscript:@"cellIdentifier"];
  v10 = [viewCopy dequeueReusableCellWithIdentifier:v9 forIndexPath:pathCopy];

  [v10 setAccessoryType:0];
  v11 = [v8 objectForKeyedSubscript:@"identifier"];
  v12 = [v11 isEqual:@"triggerDescriptionSection"];

  if (v12)
  {
    [v10 setSelectionStyle:0];
    [v10 setTriggerTypeClass:objc_opt_class()];
    goto LABEL_25;
  }

  v13 = [v8 objectForKeyedSubscript:@"identifier"];
  v14 = [v13 isEqual:@"senderSection"];

  if (!v14)
  {
    v24 = [v8 objectForKeyedSubscript:@"identifier"];
    v25 = [v24 isEqual:@"subjectContainsSection"];

    if (!v25)
    {
      v33 = [v8 objectForKeyedSubscript:@"identifier"];
      v34 = [v33 isEqual:@"accountSection"];

      if (v34)
      {
        v15 = v10;
        v35 = WFLocalizedString(@"Account");
        textLabel = [v15 textLabel];
        [textLabel setText:v35];

        trigger = [(WFTriggerConfigurationViewController *)self trigger];
        selectedAccountIdentifiers = [trigger selectedAccountIdentifiers];
        v39 = [selectedAccountIdentifiers count];

        if (!v39)
        {
          v45 = @"Any Account";
          goto LABEL_23;
        }

        trigger2 = [(WFTriggerConfigurationViewController *)self trigger];
        selectedAccountIdentifiers2 = [trigger2 selectedAccountIdentifiers];
        v42 = [selectedAccountIdentifiers2 count];

        if (v42 == 1)
        {
          trigger3 = [(WFTriggerConfigurationViewController *)self trigger];
          selectedAccountIdentifiers3 = [trigger3 selectedAccountIdentifiers];
          trigger7 = [selectedAccountIdentifiers3 objectAtIndex:0];

          trigger4 = [(WFEmailTriggerConfigurationViewController *)self accountFromAccountIdentifier:trigger7];
          accountDescription = [trigger4 accountDescription];
          goto LABEL_9;
        }

        v56 = MEMORY[0x277CCACA8];
        trigger7 = WFLocalizedPluralString(@"Any of %lu Accounts");
        trigger4 = [(WFTriggerConfigurationViewController *)self trigger];
        selectedAccountIdentifiers4 = [trigger4 selectedAccountIdentifiers];
        v57 = [v56 localizedStringWithFormat:trigger7, objc_msgSend(selectedAccountIdentifiers4, "count")];
        [v15 detailTextLabel];
        v59 = v58 = v15;
        [v59 setText:v57];

        v15 = v58;
      }

      else
      {
        v46 = [v8 objectForKeyedSubscript:@"identifier"];
        v47 = [v46 isEqual:@"recipientSection"];

        if (!v47)
        {
          goto LABEL_25;
        }

        v15 = v10;
        v48 = WFLocalizedString(@"Recipient");
        textLabel2 = [v15 textLabel];
        [textLabel2 setText:v48];

        trigger5 = [(WFTriggerConfigurationViewController *)self trigger];
        selectedRecipients = [trigger5 selectedRecipients];
        v52 = [selectedRecipients count];

        if (!v52)
        {
          v45 = @"Any Recipient";
          goto LABEL_23;
        }

        trigger6 = [(WFTriggerConfigurationViewController *)self trigger];
        selectedRecipients2 = [trigger6 selectedRecipients];
        v55 = [selectedRecipients2 count];

        if (v55 == 1)
        {
          trigger7 = [(WFTriggerConfigurationViewController *)self trigger];
          trigger4 = [trigger7 selectedRecipients];
          accountDescription = [trigger4 objectAtIndex:0];
          goto LABEL_9;
        }

        v62 = MEMORY[0x277CCACA8];
        trigger7 = WFLocalizedPluralString(@"Any of %lu Recipients");
        trigger4 = [(WFTriggerConfigurationViewController *)self trigger];
        selectedAccountIdentifiers4 = [trigger4 selectedRecipients];
        v57 = [v62 localizedStringWithFormat:trigger7, objc_msgSend(selectedAccountIdentifiers4, "count")];
        detailTextLabel = [v15 detailTextLabel];
        [detailTextLabel setText:v57];
      }

      goto LABEL_24;
    }

    v15 = v10;
    v26 = WFLocalizedString(@"Subject Contains");
    textLabel3 = [v15 textLabel];
    [textLabel3 setText:v26];

    trigger8 = [(WFTriggerConfigurationViewController *)self trigger];
    selectedSubject = [trigger8 selectedSubject];

    if (selectedSubject)
    {
      v30 = MEMORY[0x277CCACA8];
      trigger7 = [(WFTriggerConfigurationViewController *)self trigger];
      trigger4 = [trigger7 selectedSubject];
      accountDescription = [v30 stringWithFormat:@"%@", trigger4];
      goto LABEL_9;
    }

    v45 = @"Choose";
LABEL_23:
    trigger7 = WFLocalizedString(v45);
    trigger4 = [v15 detailTextLabel];
    [trigger4 setText:trigger7];
    goto LABEL_24;
  }

  v15 = v10;
  v16 = WFLocalizedString(@"Sender");
  textLabel4 = [v15 textLabel];
  [textLabel4 setText:v16];

  trigger9 = [(WFTriggerConfigurationViewController *)self trigger];
  selectedSenders = [trigger9 selectedSenders];
  v20 = [selectedSenders count];

  if (!v20)
  {
    v45 = @"Any Sender";
    goto LABEL_23;
  }

  trigger7 = [(WFTriggerConfigurationViewController *)self trigger];
  trigger4 = [trigger7 selectedSenders];
  accountDescription = [trigger4 componentsJoinedByString:{@", "}];
LABEL_9:
  v31 = accountDescription;
  detailTextLabel2 = [v15 detailTextLabel];
  [detailTextLabel2 setText:v31];

LABEL_24:
LABEL_25:
  v60 = [(WFTriggerConfigurationViewController *)self configureAdditionalCellsIfNeeded:v10 indexPath:pathCopy sectionInfo:v8];

  return v60;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(WFEmailTriggerConfigurationViewController *)self infoForSection:section];
  v6 = [(WFTriggerConfigurationViewController *)self numberOfRowsInSectionWithInfo:v5];

  return v6;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  sections = [(WFTriggerConfigurationViewController *)self sections];
  v4 = [sections count];

  return v4;
}

- (id)infoForSection:(int64_t)section
{
  sections = [(WFTriggerConfigurationViewController *)self sections];
  v5 = [sections objectAtIndexedSubscript:section];

  return v5;
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = WFEmailTriggerConfigurationViewController;
  [(WFEmailTriggerConfigurationViewController *)&v5 viewWillAppear:appear];
  tableView = [(WFTriggerConfigurationViewController *)self tableView];
  [tableView reloadData];
}

- (void)updateUI
{
  tableView = [(WFTriggerConfigurationViewController *)self tableView];
  [tableView reloadData];
}

- (void)setUpAccounts
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CB8F48]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  supportedAccountTypeIdentifiers = [(WFEmailTriggerConfigurationViewController *)self supportedAccountTypeIdentifiers];
  v5 = [supportedAccountTypeIdentifiers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(supportedAccountTypeIdentifiers);
        }

        v9 = [v3 accountTypeWithAccountTypeIdentifier:*(*(&v13 + 1) + 8 * v8)];
        allAccounts = [(WFEmailTriggerConfigurationViewController *)self allAccounts];
        v11 = [v3 accountsWithAccountType:v9];
        v12 = [allAccounts arrayByAddingObjectsFromArray:v11];
        [(WFEmailTriggerConfigurationViewController *)self setAllAccounts:v12];

        ++v8;
      }

      while (v6 != v8);
      v6 = [supportedAccountTypeIdentifiers countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (id)supportedAccountTypeIdentifiers
{
  v8[8] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CB8C00];
  v8[0] = *MEMORY[0x277CB8BA0];
  v8[1] = v2;
  v3 = *MEMORY[0x277CB8D38];
  v8[2] = *MEMORY[0x277CB8C40];
  v8[3] = v3;
  v4 = *MEMORY[0x277CB8C50];
  v8[4] = *MEMORY[0x277CB8B98];
  v8[5] = v4;
  v5 = *MEMORY[0x277CB8CD8];
  v8[6] = *MEMORY[0x277CB8C60];
  v8[7] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:8];

  return v6;
}

- (id)customSections
{
  v25[4] = *MEMORY[0x277D85DE8];
  v23[0] = @"identifier";
  v23[1] = @"cellIdentifier";
  v24[0] = @"senderSection";
  v2 = objc_opt_class();
  v16 = NSStringFromClass(v2);
  v24[1] = v16;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
  v25[0] = v3;
  v21[1] = @"cellIdentifier";
  v22[0] = @"subjectContainsSection";
  v21[0] = @"identifier";
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v22[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
  v25[1] = v6;
  v20[0] = @"accountSection";
  v19[0] = @"identifier";
  v19[1] = @"sectionTitle";
  v7 = WFLocalizedString(@"Additional filters");
  v20[1] = v7;
  v19[2] = @"cellIdentifier";
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v20[2] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];
  v25[2] = v10;
  v17[1] = @"cellIdentifier";
  v18[0] = @"recipientSection";
  v17[0] = @"identifier";
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v18[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v25[3] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:4];

  return v14;
}

- (id)tableViewCellClasses
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v6 count:3];
  v4 = [v2 setWithArray:{v3, v6, v7}];

  return v4;
}

- (WFEmailTriggerConfigurationViewController)initWithTrigger:(id)trigger mode:(unint64_t)mode
{
  triggerCopy = trigger;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFEmailTriggerConfigurationViewController.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"[trigger isKindOfClass:[WFEmailTrigger class]]"}];
  }

  v14.receiver = self;
  v14.super_class = WFEmailTriggerConfigurationViewController;
  v8 = [(WFTriggerConfigurationViewController *)&v14 initWithTrigger:triggerCopy mode:mode];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEA60]);
    allAccounts = v8->_allAccounts;
    v8->_allAccounts = v9;

    [(WFEmailTriggerConfigurationViewController *)v8 setUpAccounts];
    v11 = v8;
  }

  return v8;
}

@end