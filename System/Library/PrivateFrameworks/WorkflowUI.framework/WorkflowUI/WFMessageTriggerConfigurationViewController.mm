@interface WFMessageTriggerConfigurationViewController
- (WFMessageTriggerConfigurationViewController)initWithTrigger:(id)trigger mode:(unint64_t)mode;
- (id)customSections;
- (id)displayForSelectedContacts:(id)contacts;
- (id)infoForSection:(int64_t)section;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableViewCellClasses;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)presentNavControllerWithRootViewController:(id)controller;
- (void)recipientViewControllerDidFinish:(id)finish cancelled:(BOOL)cancelled;
- (void)showMessageContainsAlert;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateUI;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation WFMessageTriggerConfigurationViewController

- (void)showMessageContainsAlert
{
  v3 = MEMORY[0x277D75110];
  v4 = WFLocalizedString(@"Message Contains");
  v5 = WFLocalizedString(@"Only run this automation when a message contains the following:");
  v6 = [v3 alertControllerWithTitle:v4 message:v5 preferredStyle:1];

  v7 = MEMORY[0x277D750F8];
  v8 = WFLocalizedString(@"Done");
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __71__WFMessageTriggerConfigurationViewController_showMessageContainsAlert__block_invoke;
  v16[3] = &unk_279EE81B0;
  v17 = v6;
  selfCopy = self;
  v9 = v6;
  v10 = [v7 actionWithTitle:v8 style:0 handler:v16];

  v11 = MEMORY[0x277D750F8];
  v12 = WFLocalizedString(@"Cancel");
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__WFMessageTriggerConfigurationViewController_showMessageContainsAlert__block_invoke_2;
  v15[3] = &unk_279EE8188;
  v15[4] = self;
  v13 = [v11 actionWithTitle:v12 style:1 handler:v15];

  [v9 addAction:v10];
  [v9 addAction:v13];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __71__WFMessageTriggerConfigurationViewController_showMessageContainsAlert__block_invoke_3;
  v14[3] = &unk_279EE7BE8;
  v14[4] = self;
  [v9 addTextFieldWithConfigurationHandler:v14];
  [(WFMessageTriggerConfigurationViewController *)self presentViewController:v9 animated:1 completion:0];
}

void __71__WFMessageTriggerConfigurationViewController_showMessageContainsAlert__block_invoke(uint64_t a1)
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
  [v5 setSelectedContents:v4];

  v6 = [*(a1 + 40) tableView];
  [v6 reloadData];

  [*(a1 + 40) updateNextButtonEnabledState];
}

uint64_t __71__WFMessageTriggerConfigurationViewController_showMessageContainsAlert__block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) trigger];
  v4 = [v3 selectedContents];
  v5 = [v4 length];
  if (v5)
  {
    v1 = [*(a1 + 32) trigger];
    v6 = [v1 selectedContents];
  }

  else
  {
    v6 = 0;
  }

  v7 = [*(a1 + 32) trigger];
  [v7 setSelectedContents:v6];

  if (v5)
  {
  }

  v8 = [*(a1 + 32) tableView];
  [v8 reloadData];

  v9 = *(a1 + 32);

  return [v9 updateNextButtonEnabledState];
}

void __71__WFMessageTriggerConfigurationViewController_showMessageContainsAlert__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setAutocapitalizationType:0];
  [v3 setClearButtonMode:3];
  [v3 setReturnKeyType:9];
  v4 = [*(a1 + 32) trigger];
  v5 = [v4 selectedContents];
  [v3 setText:v5];

  v6 = WFLocalizedStringWithKey(@"Anything prompt", @"Anything");
  [v3 setPlaceholder:v6];
}

- (void)presentNavControllerWithRootViewController:(id)controller
{
  v4 = MEMORY[0x277D757A0];
  controllerCopy = controller;
  v6 = [[v4 alloc] initWithRootViewController:controllerCopy];

  [(WFMessageTriggerConfigurationViewController *)self presentViewController:v6 animated:1 completion:0];
}

- (id)displayForSelectedContacts:(id)contacts
{
  v21 = *MEMORY[0x277D85DE8];
  contactsCopy = contacts;
  v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = contactsCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = MEMORY[0x277CCACA8];
        givenName = [v10 givenName];
        familyName = [v10 familyName];
        v14 = [v11 stringWithFormat:@"%@ %@, ", givenName, familyName, v16];
        [v4 appendString:v14];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)recipientViewControllerDidFinish:(id)finish cancelled:(BOOL)cancelled
{
  v50 = *MEMORY[0x277D85DE8];
  finishCopy = finish;
  v7 = finishCopy;
  if (!cancelled)
  {
    selfCopy = self;
    [finishCopy commitRemainingText];
    v41 = v7;
    entries = [v7 entries];
    v9 = [MEMORY[0x277CBEB58] set];
    v10 = [MEMORY[0x277CBEB58] set];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v11 = entries;
    v44 = [v11 countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (!v44)
    {
      goto LABEL_20;
    }

    v12 = *v46;
    v43 = *v46;
    while (1)
    {
      for (i = 0; i != v44; ++i)
      {
        if (*v46 != v12)
        {
          objc_enumerationMutation(v11);
        }

        v14 = *(*(&v45 + 1) + 8 * i);
        contact = [v14 contact];
        v16 = contact;
        if (contact)
        {
          v15Contact = [contact contact];
          [v9 addObject:v15Contact];

          phoneNumber2 = WFMessageTriggerConfigurationSenderStringsFromContact(v16);
          [v10 addObjectsFromArray:phoneNumber2];
        }

        else
        {
          phoneNumber = [v14 phoneNumber];

          if (phoneNumber)
          {
            v20 = v11;
            v21 = v10;
            v22 = v9;
            phoneNumber2 = [v14 phoneNumber];
            formattedPhoneNumber = [phoneNumber2 formattedPhoneNumber];
            if (!formattedPhoneNumber)
            {
              v10 = v21;
              v11 = v20;
              v12 = v43;
              goto LABEL_17;
            }

            v24 = formattedPhoneNumber;
            phoneNumber3 = [v14 phoneNumber];
            normalizedPhoneNumber = [phoneNumber3 normalizedPhoneNumber];

            v9 = v22;
            v10 = v21;
            v11 = v20;
            v12 = v43;
            if (!normalizedPhoneNumber)
            {
              goto LABEL_18;
            }

            phoneNumber2 = objc_alloc_init(MEMORY[0x277CBDB38]);
            phoneNumber4 = [v14 phoneNumber];
            formattedPhoneNumber2 = [phoneNumber4 formattedPhoneNumber];
            [phoneNumber2 setGivenName:formattedPhoneNumber2];

            [v9 addObject:phoneNumber2];
            phoneNumber5 = [v14 phoneNumber];
            normalizedPhoneNumber2 = [phoneNumber5 normalizedPhoneNumber];
          }

          else
          {
            emailAddress = [v14 emailAddress];

            if (!emailAddress)
            {
              goto LABEL_18;
            }

            phoneNumber2 = objc_alloc_init(MEMORY[0x277CBDB38]);
            emailAddress2 = [v14 emailAddress];
            address = [emailAddress2 address];
            [phoneNumber2 setGivenName:address];

            [v9 addObject:phoneNumber2];
            phoneNumber5 = [v14 emailAddress];
            normalizedPhoneNumber2 = [phoneNumber5 address];
          }

          v34 = normalizedPhoneNumber2;
          [v10 addObject:normalizedPhoneNumber2];
        }

LABEL_17:

LABEL_18:
      }

      v44 = [v11 countByEnumeratingWithState:&v45 objects:v49 count:16];
      if (!v44)
      {
LABEL_20:

        allObjects = [v9 allObjects];
        v36 = v11;
        self = selfCopy;
        trigger = [(WFTriggerConfigurationViewController *)selfCopy trigger];
        [trigger setSelectedSenders:allObjects];

        allObjects2 = [v10 allObjects];
        trigger2 = [(WFTriggerConfigurationViewController *)selfCopy trigger];
        [trigger2 setSelectedSendersStrings:allObjects2];

        v7 = v41;
        break;
      }
    }
  }

  [v7 dismissViewControllerAnimated:1 completion:0];
  tableView = [(WFTriggerConfigurationViewController *)self tableView];
  [tableView reloadData];

  [(WFTriggerConfigurationViewController *)self updateNextButtonEnabledState];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v25 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  v7 = -[WFMessageTriggerConfigurationViewController infoForSection:](self, "infoForSection:", [pathCopy section]);
  v8 = getWFTriggersLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v21 = 136315394;
    v22 = "[WFMessageTriggerConfigurationViewController tableView:didSelectRowAtIndexPath:]";
    v23 = 2114;
    v24 = v7;
    _os_log_impl(&dword_274719000, v8, OS_LOG_TYPE_DEBUG, "%s didselect section: %{public}@", &v21, 0x16u);
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

    v14 = [MEMORY[0x277CBEB98] setWithObject:&unk_2883C1D90];
    [v11 setSupportedPersonProperties:v14];

    [v11 setDelegate:self];
    trigger = [(WFTriggerConfigurationViewController *)self trigger];
    selectedSenders = [trigger selectedSenders];

    v17 = [selectedSenders if_map:&__block_literal_global_239];
    [v11 setEntries:v17];

    [(WFMessageTriggerConfigurationViewController *)self presentNavControllerWithRootViewController:v11];
  }

  else
  {
    v18 = [v7 objectForKeyedSubscript:@"identifier"];
    v19 = [v18 isEqual:@"messageContains"];

    if (v19)
    {
      [(WFMessageTriggerConfigurationViewController *)self showMessageContainsAlert];
    }
  }

  [(WFTriggerConfigurationViewController *)self didSelectRowAtIndexPath:pathCopy withSectionInfo:v7];
  tableView = [(WFTriggerConfigurationViewController *)self tableView];
  [tableView reloadData];

  [(WFTriggerConfigurationViewController *)self updateNextButtonEnabledState];
}

id __81__WFMessageTriggerConfigurationViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CFC2C0];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [MEMORY[0x277CFC278] contactWithCNContact:v3];

  v6 = [v4 initWithContact:v5];

  return v6;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v4 = [(WFMessageTriggerConfigurationViewController *)self infoForSection:section];
  v5 = [v4 objectForKeyedSubscript:@"sectionTitle"];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = -[WFMessageTriggerConfigurationViewController infoForSection:](self, "infoForSection:", [pathCopy section]);
  v9 = [v8 objectForKeyedSubscript:@"cellIdentifier"];
  v10 = [viewCopy dequeueReusableCellWithIdentifier:v9 forIndexPath:pathCopy];

  [v10 setAccessoryType:0];
  v11 = [v8 objectForKeyedSubscript:@"identifier"];
  v12 = [v11 isEqualToString:@"triggerDescription"];

  if (v12)
  {
    [v10 setSelectionStyle:0];
    [v10 setTriggerTypeClass:objc_opt_class()];
    goto LABEL_16;
  }

  v13 = [v8 objectForKeyedSubscript:@"identifier"];
  v14 = [v13 isEqualToString:@"senderSection"];

  if (!v14)
  {
    v27 = [v8 objectForKeyedSubscript:@"identifier"];
    v28 = [v27 isEqualToString:@"messageContains"];

    if (!v28)
    {
      goto LABEL_16;
    }

    v15 = v10;
    v29 = WFLocalizedString(@"Message Contains");
    textLabel = [v15 textLabel];
    [textLabel setText:v29];

    trigger = [(WFTriggerConfigurationViewController *)self trigger];
    selectedContents = [trigger selectedContents];

    if (selectedContents)
    {
      v33 = MEMORY[0x277CCACA8];
      trigger2 = [(WFTriggerConfigurationViewController *)self trigger];
      selectedContents2 = [trigger2 selectedContents];
      triggerDisplayName = [v33 stringWithFormat:@"%@", selectedContents2];
      goto LABEL_9;
    }

    v40 = @"Choose";
LABEL_14:
    trigger2 = WFLocalizedString(v40);
    selectedContents2 = [v15 detailTextLabel];
    [selectedContents2 setText:trigger2];
    goto LABEL_15;
  }

  v15 = v10;
  v16 = WFLocalizedString(@"Sender");
  textLabel2 = [v15 textLabel];
  [textLabel2 setText:v16];

  trigger3 = [(WFTriggerConfigurationViewController *)self trigger];
  selectedSenders = [trigger3 selectedSenders];
  v20 = [selectedSenders count];

  trigger4 = [(WFTriggerConfigurationViewController *)self trigger];
  selectedSenders2 = [trigger4 selectedSenders];
  v23 = selectedSenders2;
  if (v20 != 1)
  {
    v36 = [selectedSenders2 count];

    if (v36 >= 2)
    {
      v37 = MEMORY[0x277CCACA8];
      trigger2 = WFLocalizedString(@"Any of %lu Senders");
      selectedContents2 = [(WFTriggerConfigurationViewController *)self trigger];
      selectedSenders3 = [selectedContents2 selectedSenders];
      v38 = [v37 localizedStringWithFormat:trigger2, objc_msgSend(selectedSenders3, "count")];
      detailTextLabel = [v15 detailTextLabel];
      [detailTextLabel setText:v38];

      goto LABEL_15;
    }

    v40 = @"Any Sender";
    goto LABEL_14;
  }

  trigger2 = [selectedSenders2 objectAtIndex:0];

  selectedContents2 = [MEMORY[0x277CFC278] contactWithCNContact:trigger2];
  triggerDisplayName = [selectedContents2 triggerDisplayName];
LABEL_9:
  v34 = triggerDisplayName;
  detailTextLabel2 = [v15 detailTextLabel];
  [detailTextLabel2 setText:v34];

LABEL_15:
LABEL_16:
  v41 = [(WFTriggerConfigurationViewController *)self configureAdditionalCellsIfNeeded:v10 indexPath:pathCopy sectionInfo:v8];

  return v41;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(WFMessageTriggerConfigurationViewController *)self infoForSection:section];
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
  v5.super_class = WFMessageTriggerConfigurationViewController;
  [(WFMessageTriggerConfigurationViewController *)&v5 viewWillAppear:appear];
  tableView = [(WFTriggerConfigurationViewController *)self tableView];
  [tableView reloadData];
}

- (void)updateUI
{
  tableView = [(WFTriggerConfigurationViewController *)self tableView];
  [tableView reloadData];
}

- (id)customSections
{
  v14[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"identifier";
  v12[1] = @"cellIdentifier";
  v13[0] = @"senderSection";
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v13[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v14[0] = v4;
  v10[1] = @"cellIdentifier";
  v11[0] = @"messageContains";
  v10[0] = @"identifier";
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v11[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v14[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];

  return v8;
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

- (WFMessageTriggerConfigurationViewController)initWithTrigger:(id)trigger mode:(unint64_t)mode
{
  triggerCopy = trigger;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFMessageTriggerConfigurationViewController.m" lineNumber:69 description:{@"Invalid parameter not satisfying: %@", @"[trigger isKindOfClass:[WFMessageTrigger class]]"}];
  }

  v13.receiver = self;
  v13.super_class = WFMessageTriggerConfigurationViewController;
  v8 = [(WFTriggerConfigurationViewController *)&v13 initWithTrigger:triggerCopy mode:mode];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  return v9;
}

@end