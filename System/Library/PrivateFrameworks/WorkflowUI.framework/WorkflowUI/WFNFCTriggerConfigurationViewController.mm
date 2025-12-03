@interface WFNFCTriggerConfigurationViewController
- (WFNFCTriggerConfigurationViewController)initWithTrigger:(id)trigger mode:(unint64_t)mode;
- (id)customSections;
- (id)infoForSection:(int64_t)section;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableViewCellClasses;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)alertTextFieldDidChange:(id)change;
- (void)readerSession:(id)session didDetectTags:(id)tags;
- (void)readerSessionDidEndUnexpectedly:(id)unexpectedly;
- (void)showNameStep;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateUI;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation WFNFCTriggerConfigurationViewController

- (void)alertTextFieldDidChange:(id)change
{
  changeCopy = change;
  presentedViewController = [(WFNFCTriggerConfigurationViewController *)self presentedViewController];
  if (presentedViewController)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      text = [changeCopy text];
      v6 = [text length] != 0;
      actions = [presentedViewController actions];
      firstObject = [actions firstObject];
      [firstObject setEnabled:v6];
    }
  }
}

- (void)showNameStep
{
  v3 = MEMORY[0x277D75110];
  v4 = WFLocalizedString(@"Name This Tag");
  v5 = [v3 alertControllerWithTitle:v4 message:0 preferredStyle:1];

  v6 = MEMORY[0x277D750F8];
  v7 = WFLocalizedString(@"OK");
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __55__WFNFCTriggerConfigurationViewController_showNameStep__block_invoke;
  v15[3] = &unk_279EE81B0;
  v16 = v5;
  selfCopy = self;
  v8 = v5;
  v9 = [v6 actionWithTitle:v7 style:0 handler:v15];

  [v9 setEnabled:0];
  [v8 addAction:v9];
  v10 = MEMORY[0x277D750F8];
  v11 = WFLocalizedString(@"Cancel");
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __55__WFNFCTriggerConfigurationViewController_showNameStep__block_invoke_2;
  v14[3] = &unk_279EE8188;
  v14[4] = self;
  v12 = [v10 actionWithTitle:v11 style:1 handler:v14];

  [v8 addAction:v12];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55__WFNFCTriggerConfigurationViewController_showNameStep__block_invoke_3;
  v13[3] = &unk_279EE7BE8;
  v13[4] = self;
  [v8 addTextFieldWithConfigurationHandler:v13];
  [(WFNFCTriggerConfigurationViewController *)self presentViewController:v8 animated:1 completion:0];
}

uint64_t __55__WFNFCTriggerConfigurationViewController_showNameStep__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) textFields];
  v3 = [v2 firstObject];
  v4 = [v3 text];

  if (v4)
  {
    v5 = [*(a1 + 32) textFields];
    v6 = [v5 firstObject];
    v7 = [v6 text];
    v8 = [*(a1 + 40) trigger];
    [v8 setName:v7];
  }

  else
  {
    v9 = [*(a1 + 40) trigger];
    [v9 setTagIdentifier:0];

    v5 = [*(a1 + 40) trigger];
    [v5 setName:0];
  }

  v10 = [*(a1 + 40) tableView];
  [v10 reloadData];

  v11 = *(a1 + 40);

  return [v11 updateNextButtonEnabledState];
}

uint64_t __55__WFNFCTriggerConfigurationViewController_showNameStep__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) trigger];
  [v2 setTagIdentifier:0];

  v3 = [*(a1 + 32) trigger];
  [v3 setName:0];

  v4 = [*(a1 + 32) tableView];
  [v4 reloadData];

  v5 = *(a1 + 32);

  return [v5 updateNextButtonEnabledState];
}

void __55__WFNFCTriggerConfigurationViewController_showNameStep__block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setAutocapitalizationType:1];
  [v4 setClearButtonMode:3];
  [v4 setReturnKeyType:9];
  v3 = WFLocalizedString(@"Name");
  [v4 setPlaceholder:v3];

  [v4 addTarget:*(a1 + 32) action:sel_alertTextFieldDidChange_ forControlEvents:0x20000];
}

- (void)readerSessionDidEndUnexpectedly:(id)unexpectedly
{
  v9 = *MEMORY[0x277D85DE8];
  unexpectedlyCopy = unexpectedly;
  v4 = getWFTriggersLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[WFNFCTriggerConfigurationViewController readerSessionDidEndUnexpectedly:]";
    v7 = 2114;
    v8 = unexpectedlyCopy;
    _os_log_impl(&dword_274719000, v4, OS_LOG_TYPE_ERROR, "%s session (%{public}@) ended unexpectedly", &v5, 0x16u);
  }
}

- (void)readerSession:(id)session didDetectTags:(id)tags
{
  v23 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  tagsCopy = tags;
  v8 = getWFTriggersLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v16 = "[WFNFCTriggerConfigurationViewController readerSession:didDetectTags:]";
    v17 = 2114;
    v18 = sessionCopy;
    v19 = 2050;
    v20 = [tagsCopy count];
    v21 = 2112;
    v22 = tagsCopy;
    _os_log_impl(&dword_274719000, v8, OS_LOG_TYPE_DEBUG, "%s session (%{public}@) detected %{public}lu tags: %@", buf, 0x2Au);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__WFNFCTriggerConfigurationViewController_readerSession_didDetectTags___block_invoke;
  block[3] = &unk_279EE8CA8;
  v12 = tagsCopy;
  v13 = sessionCopy;
  selfCopy = self;
  v9 = sessionCopy;
  v10 = tagsCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __71__WFNFCTriggerConfigurationViewController_readerSession_didDetectTags___block_invoke(id *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] firstObject];
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [v2 tagID];
    v6 = [v4 if_hexStringFromData:v5];
    v7 = [v6 uppercaseString];

    v8 = getWFTriggersLogObject();
    v9 = v8;
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v12 = 136315394;
        v13 = "[WFNFCTriggerConfigurationViewController readerSession:didDetectTags:]_block_invoke";
        v14 = 2112;
        v15 = v7;
        _os_log_impl(&dword_274719000, v9, OS_LOG_TYPE_INFO, "%s Got NFC tagIdentifier: (%@)", &v12, 0x16u);
      }

      v10 = [a1[6] trigger];
      [v10 setTagIdentifier:v7];

      [a1[6] showNameStep];
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v12 = 136315394;
        v13 = "[WFNFCTriggerConfigurationViewController readerSession:didDetectTags:]_block_invoke";
        v14 = 2112;
        v15 = v3;
        _os_log_impl(&dword_274719000, v9, OS_LOG_TYPE_ERROR, "%s No tagID from tag (%@)", &v12, 0x16u);
      }

      [a1[6] updateNextButtonEnabledState];
    }

    [a1[5] endSession];
  }

  else
  {
    v11 = getWFTriggersLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315138;
      v13 = "[WFNFCTriggerConfigurationViewController readerSession:didDetectTags:]_block_invoke";
      _os_log_impl(&dword_274719000, v11, OS_LOG_TYPE_ERROR, "%s No tags detected", &v12, 0xCu);
    }

    [a1[5] endSession];
    [a1[6] updateNextButtonEnabledState];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  v7 = -[WFNFCTriggerConfigurationViewController infoForSection:](self, "infoForSection:", [pathCopy section]);
  v8 = [v7 objectForKeyedSubscript:@"identifier"];
  v9 = [v8 isEqual:@"triggerParameters"];

  if (v9)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __77__WFNFCTriggerConfigurationViewController_tableView_didSelectRowAtIndexPath___block_invoke;
    v10[3] = &unk_279EE7650;
    v10[4] = self;
    [MEMORY[0x277D2C848] sharedHardwareManager:v10];
  }

  [(WFTriggerConfigurationViewController *)self didSelectRowAtIndexPath:pathCopy withSectionInfo:v7];
}

id __77__WFNFCTriggerConfigurationViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __77__WFNFCTriggerConfigurationViewController_tableView_didSelectRowAtIndexPath___block_invoke_2;
  v3[3] = &unk_279EE7628;
  v3[4] = *(a1 + 32);
  return [a2 startReaderSessionWithActionSheetUI:v3];
}

void __77__WFNFCTriggerConfigurationViewController_tableView_didSelectRowAtIndexPath___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = WFLocalizedString(@"Hold your device near the NFC tag.");
    v8 = [v5 updateUIAlertMessage:v7];

    [v5 setDelegate:*(a1 + 32)];
    [v5 startPolling];
  }

  else
  {
    v9 = getWFTriggersLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[WFNFCTriggerConfigurationViewController tableView:didSelectRowAtIndexPath:]_block_invoke_2";
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_274719000, v9, OS_LOG_TYPE_ERROR, "%s Could not start reader session with error: %@", &v10, 0x16u);
    }
  }
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v4 = [(WFNFCTriggerConfigurationViewController *)self infoForSection:section];
  v5 = [v4 objectForKeyedSubscript:@"sectionTitle"];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = -[WFNFCTriggerConfigurationViewController infoForSection:](self, "infoForSection:", [pathCopy section]);
  v9 = [v8 objectForKeyedSubscript:@"cellIdentifier"];
  v10 = [viewCopy dequeueReusableCellWithIdentifier:v9 forIndexPath:pathCopy];

  v11 = [v8 objectForKeyedSubscript:@"identifier"];
  v12 = [v11 isEqual:@"triggerDescription"];

  if (v12)
  {
    [v10 setTriggerTypeClass:objc_opt_class()];
    [v10 setSelectionStyle:0];
    [v10 setAccessoryType:0];
  }

  else
  {
    v13 = [v8 objectForKeyedSubscript:@"identifier"];
    v14 = [v13 isEqual:@"triggerParameters"];

    if (v14)
    {
      v15 = WFLocalizedString(@"NFC Tag");
      textLabel = [v10 textLabel];
      [textLabel setText:v15];

      trigger = [(WFTriggerConfigurationViewController *)self trigger];
      tagIdentifier = [trigger tagIdentifier];

      if (tagIdentifier)
      {
        trigger2 = [(WFTriggerConfigurationViewController *)self trigger];
        name = [trigger2 name];
        detailTextLabel = [v10 detailTextLabel];
        [detailTextLabel setText:name];
      }

      else
      {
        trigger2 = WFLocalizedString(@"Scan");
        name = [v10 detailTextLabel];
        [name setText:trigger2];
      }
    }
  }

  v22 = [(WFTriggerConfigurationViewController *)self configureAdditionalCellsIfNeeded:v10 indexPath:pathCopy sectionInfo:v8];

  return v22;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(WFNFCTriggerConfigurationViewController *)self infoForSection:section];
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
  v5.super_class = WFNFCTriggerConfigurationViewController;
  [(WFNFCTriggerConfigurationViewController *)&v5 viewWillAppear:appear];
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
  v8[2] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v7[0] = @"identifier";
  v7[1] = @"cellIdentifier";
  v8[0] = @"triggerParameters";
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  [v2 addObject:v5];

  return v2;
}

- (id)tableViewCellClasses
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (WFNFCTriggerConfigurationViewController)initWithTrigger:(id)trigger mode:(unint64_t)mode
{
  triggerCopy = trigger;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFNFCTriggerConfigurationViewController.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"[trigger isKindOfClass:[WFNFCTrigger class]]"}];
  }

  v13.receiver = self;
  v13.super_class = WFNFCTriggerConfigurationViewController;
  v8 = [(WFTriggerConfigurationViewController *)&v13 initWithTrigger:triggerCopy mode:mode];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  return v9;
}

@end