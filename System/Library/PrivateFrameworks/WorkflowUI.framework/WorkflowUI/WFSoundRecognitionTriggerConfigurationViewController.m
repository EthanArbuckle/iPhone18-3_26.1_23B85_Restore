@interface WFSoundRecognitionTriggerConfigurationViewController
- (BOOL)shouldEnableNextButton;
- (WFSoundRecognitionTriggerConfigurationViewController)initWithTrigger:(id)a3 mode:(unint64_t)a4;
- (id)customSections;
- (id)footerLinkViewForTableView:(id)a3;
- (id)infoForSection:(int64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableViewCellClasses;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)footerLinkView:(id)a3 didTapURL:(id)a4;
- (void)handleDidBecomeActive;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)triggerTableViewController:(id)a3 didFinishWithAnySelected:(BOOL)a4 orSelectedOptions:(id)a5;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation WFSoundRecognitionTriggerConfigurationViewController

- (void)footerLinkView:(id)a3 didTapURL:(id)a4
{
  v4 = MEMORY[0x277CFC248];
  v5 = a4;
  v6 = [v4 sharedContext];
  [v6 openURL:v5];
}

- (void)triggerTableViewController:(id)a3 didFinishWithAnySelected:(BOOL)a4 orSelectedOptions:(id)a5
{
  v7 = MEMORY[0x277CBEB98];
  v8 = a3;
  v9 = [a5 if_map:&__block_literal_global_2680];
  v10 = [v7 setWithArray:v9];
  v11 = [(WFTriggerConfigurationViewController *)self trigger];
  [v11 setSoundDetectionTypes:v10];

  [v8 dismissViewControllerAnimated:1 completion:0];
  v12 = [(WFTriggerConfigurationViewController *)self tableView];
  [v12 reloadData];

  [(WFTriggerConfigurationViewController *)self updateNextButtonEnabledState];
}

- (BOOL)shouldEnableNextButton
{
  v2 = [(WFTriggerConfigurationViewController *)self trigger];
  if ([v2 hasValidConfiguration])
  {
    v3 = [MEMORY[0x277D7C088] soundDetectionEnabled];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a4;
  [a3 deselectRowAtIndexPath:v6 animated:1];
  v7 = -[WFSoundRecognitionTriggerConfigurationViewController infoForSection:](self, "infoForSection:", [v6 section]);
  v8 = [v7 objectForKeyedSubscript:@"identifier"];
  v9 = [v8 isEqual:@"chooseSound"];

  if (v9)
  {
    v10 = getWFTriggersLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v18 = "[WFSoundRecognitionTriggerConfigurationViewController tableView:didSelectRowAtIndexPath:]";
      v19 = 2114;
      v20 = v7;
      _os_log_impl(&dword_274719000, v10, OS_LOG_TYPE_DEBUG, "%s didselect section: %{public}@", buf, 0x16u);
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __90__WFSoundRecognitionTriggerConfigurationViewController_tableView_didSelectRowAtIndexPath___block_invoke;
    v16[3] = &unk_279EE7810;
    v16[4] = self;
    v11 = [MEMORY[0x277D7C088] mapLocalizedSupportedSoundDetectionTypesUsingBlock:v16];
    v12 = [[WFTriggerTableViewController alloc] initWithOptions:v11 anySelected:0 nameOfAnyOption:0 mainSectionTitle:0];
    [(WFTriggerTableViewController *)v12 setDelegate:self];
    v13 = WFLocalizedString(@"Choose Sound");
    [(WFTriggerTableViewController *)v12 setTitle:v13];

    v14 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v12];
    [(WFSoundRecognitionTriggerConfigurationViewController *)self presentViewController:v14 animated:1 completion:0];
  }

  [(WFTriggerConfigurationViewController *)self didSelectRowAtIndexPath:v6 withSectionInfo:v7];
  v15 = [(WFTriggerConfigurationViewController *)self tableView];
  [v15 reloadData];
}

WFSelectableListOption *__90__WFSoundRecognitionTriggerConfigurationViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[WFSelectableListOption alloc] initWithDisplayTitle:v6 value:v5];

  v8 = [*(a1 + 32) trigger];
  v9 = [v8 soundDetectionTypes];
  v10 = [v9 containsObject:v5];

  [(WFSelectableListOption *)v7 setSelected:v10];

  return v7;
}

- (id)footerLinkViewForTableView:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([MEMORY[0x277D7C088] soundDetectionEnabled])
  {
    v5 = 0;
  }

  else
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v4 dequeueReusableHeaderFooterViewWithIdentifier:v7];

    v9 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=ACCESSIBILITY&path=SOUND_RECOGNITION_TITLE"];
    if (v9)
    {
      v10 = WFLocalizedString(@"You can enable Sound Recognition in the Settings app.");
      v11 = WFLocalizedString(@"Open Settings…");
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v10, v11];
      v13 = [v12 rangeOfString:v11];
      [v8 setText:v12 URL:v9 linkRange:{v13, v14}];
      [v8 setDelegate:self];
      v5 = v8;
    }

    else
    {
      v15 = getWFTriggersLogObject();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v18 = "[WFSoundRecognitionTriggerConfigurationViewController footerLinkViewForTableView:]";
        _os_log_impl(&dword_274719000, v15, OS_LOG_TYPE_ERROR, "%s Failed to get Sound Recognition setting url", buf, 0xCu);
      }

      v5 = 0;
    }
  }

  return v5;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(WFSoundRecognitionTriggerConfigurationViewController *)self infoForSection:a4];
  v8 = [v7 objectForKeyedSubscript:@"identifier"];
  v9 = [v8 isEqual:@"chooseSound"];

  if (v9)
  {
    v10 = [(WFSoundRecognitionTriggerConfigurationViewController *)self footerLinkViewForTableView:v6];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v4 = [(WFSoundRecognitionTriggerConfigurationViewController *)self infoForSection:a4];
  v5 = [v4 objectForKeyedSubscript:@"sectionTitle"];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = -[WFSoundRecognitionTriggerConfigurationViewController infoForSection:](self, "infoForSection:", [v7 section]);
  v9 = [v8 objectForKeyedSubscript:@"cellIdentifier"];
  v10 = [v6 dequeueReusableCellWithIdentifier:v9 forIndexPath:v7];
  [v10 setAccessoryType:0];
  v11 = [v8 objectForKeyedSubscript:@"identifier"];
  v12 = [v11 isEqual:@"triggerDescription"];

  v13 = 0x277D7C000;
  if (v12)
  {
    [v10 setTriggerTypeClass:objc_opt_class()];
    [v10 setSelectionStyle:0];
  }

  else
  {
    v14 = [v8 objectForKeyedSubscript:@"identifier"];
    v15 = [v14 isEqual:@"chooseSound"];

    if (v15)
    {
      v16 = v10;
      v17 = WFLocalizedString(@"Sound");
      v18 = [v16 textLabel];
      [v18 setText:v17];

      v19 = [(WFTriggerConfigurationViewController *)self trigger];
      v20 = [v19 soundDetectionTypes];
      v21 = [v20 count];

      if (v21)
      {
        v22 = [(WFTriggerConfigurationViewController *)self trigger];
        v23 = [v22 soundDetectionTypes];
        v24 = [v23 count];

        if (v24 == 1)
        {
          v25 = MEMORY[0x277D7C088];
          v41 = [(WFTriggerConfigurationViewController *)self trigger];
          v26 = [v41 soundDetectionTypes];
          v27 = [v26 anyObject];
          v28 = [v25 localizedNameForSoundDetectionType:v27];

          v29 = v41;
        }

        else
        {
          v42 = MEMORY[0x277CCACA8];
          v40 = WFLocalizedPluralString(@"Any of %d Sounds");
          v30 = [(WFTriggerConfigurationViewController *)self trigger];
          v31 = [v30 soundDetectionTypes];
          v28 = [v42 localizedStringWithFormat:v40, objc_msgSend(v31, "count")];

          v29 = v40;
        }
      }

      else
      {
        v28 = WFLocalizedString(@"Choose");
      }

      v32 = [v16 detailTextLabel];
      [v32 setText:v28];

      v13 = 0x277D7C000uLL;
    }
  }

  v33 = [*(v13 + 136) soundDetectionEnabled];
  [v10 setUserInteractionEnabled:v33];
  v34 = [v10 textLabel];
  [v34 setEnabled:v33];

  v35 = [v10 detailTextLabel];
  [v35 setEnabled:v33];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __88__WFSoundRecognitionTriggerConfigurationViewController_tableView_cellForRowAtIndexPath___block_invoke;
  aBlock[3] = &unk_279EE8A78;
  v36 = v10;
  v44 = v36;
  v37 = _Block_copy(aBlock);
  v38 = [(WFTriggerConfigurationViewController *)self configureAdditionalCellsIfNeeded:v36 indexPath:v7 sectionInfo:v8];
  v37[2](v37);

  return v38;
}

uint64_t __88__WFSoundRecognitionTriggerConfigurationViewController_tableView_cellForRowAtIndexPath___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D7C088] soundDetectionEnabled];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 setAccessoryType:0];
  }

  return result;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(WFSoundRecognitionTriggerConfigurationViewController *)self infoForSection:a4];
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

- (void)handleDidBecomeActive
{
  v2 = [(WFTriggerConfigurationViewController *)self tableView];
  [v2 reloadData];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = [(WFTriggerConfigurationViewController *)self tableView];
  [v3 reloadData];
}

- (void)viewDidLoad
{
  v3 = [(WFTriggerConfigurationViewController *)self tableView];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v3 registerClass:v4 forHeaderFooterViewReuseIdentifier:v6];

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 addObserver:self selector:sel_handleDidBecomeActive name:*MEMORY[0x277D76648] object:0];
}

- (id)customSections
{
  v10[1] = *MEMORY[0x277D85DE8];
  v7 = @"identifier";
  v8 = @"cellIdentifier";
  v9[0] = @"chooseSound";
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v9[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v7 count:2];
  v10[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:{1, v7, v8, v9[0]}];

  return v5;
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

- (WFSoundRecognitionTriggerConfigurationViewController)initWithTrigger:(id)a3 mode:(unint64_t)a4
{
  v7 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"WFSoundRecognitionTriggerConfigurationViewController.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"[trigger isKindOfClass:[WFSoundRecognitionTrigger class]]"}];
  }

  v13.receiver = self;
  v13.super_class = WFSoundRecognitionTriggerConfigurationViewController;
  v8 = [(WFTriggerConfigurationViewController *)&v13 initWithTrigger:v7 mode:a4];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  return v9;
}

@end