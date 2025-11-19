@interface WFEmailTriggerConfigurationViewController
- (UIViewController)recipientFieldViewController;
- (UIViewController)senderFieldViewController;
- (WFEmailTriggerConfigurationViewController)initWithTrigger:(id)a3 mode:(unint64_t)a4;
- (id)accountFromAccountIdentifier:(id)a3;
- (id)customSections;
- (id)infoForSection:(int64_t)a3;
- (id)supportedAccountTypeIdentifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableViewCellClasses;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)presentNavControllerWithRootViewController:(id)a3;
- (void)recipientViewControllerDidFinish:(id)a3 cancelled:(BOOL)a4;
- (void)setUpAccounts;
- (void)showSubjectContainsAlert;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)triggerTableViewController:(id)a3 didFinishWithAnySelected:(BOOL)a4 orSelectedOptions:(id)a5;
- (void)updateUI;
- (void)viewWillAppear:(BOOL)a3;
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

- (id)accountFromAccountIdentifier:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(WFEmailTriggerConfigurationViewController *)self allAccounts];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 identifier];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (void)triggerTableViewController:(id)a3 didFinishWithAnySelected:(BOOL)a4 orSelectedOptions:(id)a5
{
  v5 = a4;
  v15 = a5;
  v8 = a3;
  if (v5)
  {
    v9 = [(WFTriggerConfigurationViewController *)self trigger];
    [v9 setSelectedAccountIdentifiers:0];

    v10 = [(WFTriggerConfigurationViewController *)self trigger];
    [v10 setSelectedAccountDescriptions:0];
  }

  else
  {
    v11 = [v15 if_map:&__block_literal_global_313];
    v12 = [(WFTriggerConfigurationViewController *)self trigger];
    [v12 setSelectedAccountIdentifiers:v11];

    v10 = [v15 if_map:&__block_literal_global_315];
    v13 = [(WFTriggerConfigurationViewController *)self trigger];
    [v13 setSelectedAccountDescriptions:v10];
  }

  [v8 dismissViewControllerAnimated:1 completion:0];
  v14 = [(WFTriggerConfigurationViewController *)self tableView];
  [v14 reloadData];

  [(WFTriggerConfigurationViewController *)self updateNextButtonEnabledState];
}

- (void)recipientViewControllerDidFinish:(id)a3 cancelled:(BOOL)a4
{
  v6 = a3;
  v14 = v6;
  if (a4)
  {
    [v6 dismissViewControllerAnimated:1 completion:0];
    goto LABEL_9;
  }

  [v6 commitRemainingText];
  v7 = [v14 entries];
  v8 = [v7 if_compactMap:&__block_literal_global_1495];
  v9 = [(WFEmailTriggerConfigurationViewController *)self recipientFieldViewController];

  if (v9 == v14)
  {
    v12 = [(WFTriggerConfigurationViewController *)self trigger];
    [v12 setSelectedRecipients:v8];
    goto LABEL_7;
  }

  v10 = [(WFEmailTriggerConfigurationViewController *)self senderFieldViewController];

  v11 = v14;
  if (v10 == v14)
  {
    v12 = [(WFTriggerConfigurationViewController *)self trigger];
    [v12 setSelectedSenders:v8];
LABEL_7:

    v11 = v14;
  }

  [v11 dismissViewControllerAnimated:1 completion:0];
  v13 = [(WFTriggerConfigurationViewController *)self tableView];
  [v13 reloadData];

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
  v18 = self;
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

- (void)presentNavControllerWithRootViewController:(id)a3
{
  v4 = MEMORY[0x277D757A0];
  v5 = a3;
  v6 = [[v4 alloc] initWithRootViewController:v5];

  [(WFEmailTriggerConfigurationViewController *)self presentViewController:v6 animated:1 completion:0];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a4;
  [a3 deselectRowAtIndexPath:v6 animated:1];
  v7 = -[WFEmailTriggerConfigurationViewController infoForSection:](self, "infoForSection:", [v6 section]);
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
      v20 = [(WFTriggerConfigurationViewController *)self trigger];
      v21 = [v20 selectedAccountIdentifiers];
      v22 = [v21 count] == 0;

      v23 = [(WFEmailTriggerConfigurationViewController *)self allAccounts];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __79__WFEmailTriggerConfigurationViewController_tableView_didSelectRowAtIndexPath___block_invoke;
      v33[3] = &unk_279EE7718;
      v33[4] = self;
      v11 = [v23 if_map:v33];

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
  [(WFTriggerConfigurationViewController *)self didSelectRowAtIndexPath:v6 withSectionInfo:v7];
  v17 = [(WFTriggerConfigurationViewController *)self tableView];
  [v17 reloadData];

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

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v4 = [(WFEmailTriggerConfigurationViewController *)self infoForSection:a4];
  v5 = [v4 objectForKeyedSubscript:@"sectionTitle"];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = -[WFEmailTriggerConfigurationViewController infoForSection:](self, "infoForSection:", [v6 section]);
  v9 = [v8 objectForKeyedSubscript:@"cellIdentifier"];
  v10 = [v7 dequeueReusableCellWithIdentifier:v9 forIndexPath:v6];

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
        v36 = [v15 textLabel];
        [v36 setText:v35];

        v37 = [(WFTriggerConfigurationViewController *)self trigger];
        v38 = [v37 selectedAccountIdentifiers];
        v39 = [v38 count];

        if (!v39)
        {
          v45 = @"Any Account";
          goto LABEL_23;
        }

        v40 = [(WFTriggerConfigurationViewController *)self trigger];
        v41 = [v40 selectedAccountIdentifiers];
        v42 = [v41 count];

        if (v42 == 1)
        {
          v43 = [(WFTriggerConfigurationViewController *)self trigger];
          v44 = [v43 selectedAccountIdentifiers];
          v21 = [v44 objectAtIndex:0];

          v22 = [(WFEmailTriggerConfigurationViewController *)self accountFromAccountIdentifier:v21];
          v23 = [v22 accountDescription];
          goto LABEL_9;
        }

        v56 = MEMORY[0x277CCACA8];
        v21 = WFLocalizedPluralString(@"Any of %lu Accounts");
        v22 = [(WFTriggerConfigurationViewController *)self trigger];
        v64 = [v22 selectedAccountIdentifiers];
        v57 = [v56 localizedStringWithFormat:v21, objc_msgSend(v64, "count")];
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
        v49 = [v15 textLabel];
        [v49 setText:v48];

        v50 = [(WFTriggerConfigurationViewController *)self trigger];
        v51 = [v50 selectedRecipients];
        v52 = [v51 count];

        if (!v52)
        {
          v45 = @"Any Recipient";
          goto LABEL_23;
        }

        v53 = [(WFTriggerConfigurationViewController *)self trigger];
        v54 = [v53 selectedRecipients];
        v55 = [v54 count];

        if (v55 == 1)
        {
          v21 = [(WFTriggerConfigurationViewController *)self trigger];
          v22 = [v21 selectedRecipients];
          v23 = [v22 objectAtIndex:0];
          goto LABEL_9;
        }

        v62 = MEMORY[0x277CCACA8];
        v21 = WFLocalizedPluralString(@"Any of %lu Recipients");
        v22 = [(WFTriggerConfigurationViewController *)self trigger];
        v64 = [v22 selectedRecipients];
        v57 = [v62 localizedStringWithFormat:v21, objc_msgSend(v64, "count")];
        v63 = [v15 detailTextLabel];
        [v63 setText:v57];
      }

      goto LABEL_24;
    }

    v15 = v10;
    v26 = WFLocalizedString(@"Subject Contains");
    v27 = [v15 textLabel];
    [v27 setText:v26];

    v28 = [(WFTriggerConfigurationViewController *)self trigger];
    v29 = [v28 selectedSubject];

    if (v29)
    {
      v30 = MEMORY[0x277CCACA8];
      v21 = [(WFTriggerConfigurationViewController *)self trigger];
      v22 = [v21 selectedSubject];
      v23 = [v30 stringWithFormat:@"%@", v22];
      goto LABEL_9;
    }

    v45 = @"Choose";
LABEL_23:
    v21 = WFLocalizedString(v45);
    v22 = [v15 detailTextLabel];
    [v22 setText:v21];
    goto LABEL_24;
  }

  v15 = v10;
  v16 = WFLocalizedString(@"Sender");
  v17 = [v15 textLabel];
  [v17 setText:v16];

  v18 = [(WFTriggerConfigurationViewController *)self trigger];
  v19 = [v18 selectedSenders];
  v20 = [v19 count];

  if (!v20)
  {
    v45 = @"Any Sender";
    goto LABEL_23;
  }

  v21 = [(WFTriggerConfigurationViewController *)self trigger];
  v22 = [v21 selectedSenders];
  v23 = [v22 componentsJoinedByString:{@", "}];
LABEL_9:
  v31 = v23;
  v32 = [v15 detailTextLabel];
  [v32 setText:v31];

LABEL_24:
LABEL_25:
  v60 = [(WFTriggerConfigurationViewController *)self configureAdditionalCellsIfNeeded:v10 indexPath:v6 sectionInfo:v8];

  return v60;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(WFEmailTriggerConfigurationViewController *)self infoForSection:a4];
  v6 = [(WFTriggerConfigurationViewController *)self numberOfRowsInSectionWithInfo:v5];

  return v6;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(WFTriggerConfigurationViewController *)self sections];
  v4 = [v3 count];

  return v4;
}

- (id)infoForSection:(int64_t)a3
{
  v4 = [(WFTriggerConfigurationViewController *)self sections];
  v5 = [v4 objectAtIndexedSubscript:a3];

  return v5;
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = WFEmailTriggerConfigurationViewController;
  [(WFEmailTriggerConfigurationViewController *)&v5 viewWillAppear:a3];
  v4 = [(WFTriggerConfigurationViewController *)self tableView];
  [v4 reloadData];
}

- (void)updateUI
{
  v2 = [(WFTriggerConfigurationViewController *)self tableView];
  [v2 reloadData];
}

- (void)setUpAccounts
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CB8F48]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(WFEmailTriggerConfigurationViewController *)self supportedAccountTypeIdentifiers];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [v3 accountTypeWithAccountTypeIdentifier:*(*(&v13 + 1) + 8 * v8)];
        v10 = [(WFEmailTriggerConfigurationViewController *)self allAccounts];
        v11 = [v3 accountsWithAccountType:v9];
        v12 = [v10 arrayByAddingObjectsFromArray:v11];
        [(WFEmailTriggerConfigurationViewController *)self setAllAccounts:v12];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (WFEmailTriggerConfigurationViewController)initWithTrigger:(id)a3 mode:(unint64_t)a4
{
  v7 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"WFEmailTriggerConfigurationViewController.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"[trigger isKindOfClass:[WFEmailTrigger class]]"}];
  }

  v14.receiver = self;
  v14.super_class = WFEmailTriggerConfigurationViewController;
  v8 = [(WFTriggerConfigurationViewController *)&v14 initWithTrigger:v7 mode:a4];
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