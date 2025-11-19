@interface WFUserFocusActivityTriggerConfigurationViewController
- (WFUserFocusActivityTriggerConfigurationViewController)initWithTrigger:(id)a3 mode:(unint64_t)a4;
- (id)customSections;
- (id)infoForSection:(int64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableViewCellClasses;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)cell:(id)a3 didSelectOptionWithLeftViewSelected:(BOOL)a4 rightViewSelected:(BOOL)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation WFUserFocusActivityTriggerConfigurationViewController

- (void)cell:(id)a3 didSelectOptionWithLeftViewSelected:(BOOL)a4 rightViewSelected:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = [(WFTriggerConfigurationViewController *)self trigger];
  [v8 setOnEnable:v6];

  v9 = [(WFTriggerConfigurationViewController *)self trigger];
  [v9 setOnDisable:v5];

  [(WFTriggerConfigurationViewController *)self updateNextButtonEnabledState];
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v4 = [(WFUserFocusActivityTriggerConfigurationViewController *)self infoForSection:a4];
  v5 = [v4 objectForKeyedSubscript:@"sectionTitle"];

  return v5;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = -[WFUserFocusActivityTriggerConfigurationViewController infoForSection:](self, "infoForSection:", [v5 section]);
  [(WFTriggerConfigurationViewController *)self didSelectRowAtIndexPath:v5 withSectionInfo:v6];

  v7 = [(WFTriggerConfigurationViewController *)self tableView];
  [v7 reloadData];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = -[WFUserFocusActivityTriggerConfigurationViewController infoForSection:](self, "infoForSection:", [v6 section]);
  v9 = [v8 objectForKeyedSubscript:@"cellIdentifier"];
  v10 = [v7 dequeueReusableCellWithIdentifier:v9 forIndexPath:v6];

  [v10 setSelectionStyle:0];
  [v10 setAccessoryType:0];
  v11 = [v8 objectForKeyedSubscript:@"identifier"];
  v12 = [v11 isEqual:@"triggerDescription"];

  if (v12)
  {
    v13 = [(WFTriggerConfigurationViewController *)self trigger];
    [v10 setTrigger:v13];
  }

  else
  {
    v14 = v10;
    v33 = v8;
    v34 = v6;
    v32 = v9;
    if (v14)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    v17 = [(WFTriggerConfigurationViewController *)self trigger];
    v35 = [v17 onIcon];

    v18 = [(WFTriggerConfigurationViewController *)self trigger];
    v19 = [v18 offIcon];

    v31 = [(WFTriggerConfigurationViewController *)self trigger];
    v20 = [objc_opt_class() onLabel];
    v30 = [(WFTriggerConfigurationViewController *)self trigger];
    v21 = [v30 displayGlyphTintColor];
    v22 = [(WFTriggerConfigurationViewController *)self trigger];
    v23 = [objc_opt_class() offLabel];
    v24 = [(WFTriggerConfigurationViewController *)self trigger];
    v25 = [v24 displayGlyphTintColor];
    [v16 configureWithLeftGlyph:v35 leftTitle:v20 leftTintColor:v21 rightGlyph:v19 rightTitle:v23 rightTintColor:v25];

    v26 = [(WFTriggerConfigurationViewController *)self trigger];
    [v16 setLeftViewSelected:{objc_msgSend(v26, "onEnable")}];

    v27 = [(WFTriggerConfigurationViewController *)self trigger];
    [v16 setRightViewSelected:{objc_msgSend(v27, "onDisable")}];

    v13 = v35;
    [v16 setDelegate:self];

    v8 = v33;
    v6 = v34;
    v9 = v32;
  }

  v28 = [(WFTriggerConfigurationViewController *)self configureAdditionalCellsIfNeeded:v10 indexPath:v6 sectionInfo:v8];

  return v28;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(WFUserFocusActivityTriggerConfigurationViewController *)self infoForSection:a4];
  v6 = [v5 objectForKeyedSubscript:@"identifier"];
  if ([v6 isEqual:@"triggerDescription"])
  {
  }

  else
  {
    v7 = [v5 objectForKeyedSubscript:@"identifier"];
    v8 = [v7 isEqual:@"triggerParameters"];

    if ((v8 & 1) == 0)
    {
      v9 = [(WFTriggerConfigurationViewController *)self numberOfRowsInSectionWithInfo:v5];
      goto LABEL_6;
    }
  }

  v9 = 1;
LABEL_6:

  return v9;
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
  v5.super_class = WFUserFocusActivityTriggerConfigurationViewController;
  [(WFUserFocusActivityTriggerConfigurationViewController *)&v5 viewWillAppear:a3];
  v4 = [(WFTriggerConfigurationViewController *)self tableView];
  [v4 reloadData];
}

- (id)customSections
{
  v10[1] = *MEMORY[0x277D85DE8];
  v7 = @"identifier";
  v8 = @"cellIdentifier";
  v9[0] = @"triggerParameters";
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
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v6[2] = objc_opt_class();
  v6[3] = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:4];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (WFUserFocusActivityTriggerConfigurationViewController)initWithTrigger:(id)a3 mode:(unint64_t)a4
{
  v7 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"WFUserFocusActivityTriggerConfigurationViewController.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"[trigger isKindOfClass:[WFUserFocusActivityTrigger class]]"}];
  }

  v13.receiver = self;
  v13.super_class = WFUserFocusActivityTriggerConfigurationViewController;
  v8 = [(WFTriggerConfigurationViewController *)&v13 initWithTrigger:v7 mode:a4];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  return v9;
}

@end