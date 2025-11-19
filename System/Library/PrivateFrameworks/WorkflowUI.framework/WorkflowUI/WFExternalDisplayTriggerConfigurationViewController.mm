@interface WFExternalDisplayTriggerConfigurationViewController
- (WFExternalDisplayTriggerConfigurationViewController)initWithTrigger:(id)a3 mode:(unint64_t)a4;
- (id)customSections;
- (id)infoForSection:(int64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableViewCellClasses;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)cell:(id)a3 didSelectOptionWithLeftViewSelected:(BOOL)a4 rightViewSelected:(BOOL)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateUI;
@end

@implementation WFExternalDisplayTriggerConfigurationViewController

- (void)cell:(id)a3 didSelectOptionWithLeftViewSelected:(BOOL)a4 rightViewSelected:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = [(WFTriggerConfigurationViewController *)self trigger];
  [v8 setOnConnect:v6];

  v9 = [(WFTriggerConfigurationViewController *)self trigger];
  [v9 setOnDisconnect:v5];

  [(WFTriggerConfigurationViewController *)self updateNextButtonEnabledState];
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(WFTriggerConfigurationViewController *)self sections];
  v4 = [v3 count];

  return v4;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v4 = [(WFExternalDisplayTriggerConfigurationViewController *)self infoForSection:a4];
  v5 = [v4 objectForKeyedSubscript:@"sectionTitle"];

  return v5;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = -[WFExternalDisplayTriggerConfigurationViewController infoForSection:](self, "infoForSection:", [v5 section]);
  [(WFTriggerConfigurationViewController *)self didSelectRowAtIndexPath:v5 withSectionInfo:v6];

  v7 = [(WFTriggerConfigurationViewController *)self tableView];
  [v7 reloadData];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(WFExternalDisplayTriggerConfigurationViewController *)self infoForSection:a4];
  v6 = [(WFTriggerConfigurationViewController *)self numberOfRowsInSectionWithInfo:v5];

  return v6;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = -[WFExternalDisplayTriggerConfigurationViewController infoForSection:](self, "infoForSection:", [v6 section]);
  v9 = [v8 objectForKeyedSubscript:@"cellIdentifier"];
  v10 = [v7 dequeueReusableCellWithIdentifier:v9 forIndexPath:v6];

  [v10 setSelectionStyle:0];
  v11 = [v8 objectForKeyedSubscript:@"identifier"];
  v12 = [v11 isEqual:@"triggerDescription"];

  if (v12)
  {
    [v10 setTriggerTypeClass:objc_opt_class()];
    [v10 setAccessoryType:0];
  }

  else
  {
    [v10 setAccessoryType:0];
    v13 = v10;
    v32 = v9;
    v33 = v6;
    v30 = v8;
    if (v13)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }

    v34 = v14;

    v31 = [(WFTriggerConfigurationViewController *)self trigger];
    v15 = [objc_opt_class() onIcon];
    v29 = [(WFTriggerConfigurationViewController *)self trigger];
    v16 = [objc_opt_class() onLabel];
    v28 = [(WFTriggerConfigurationViewController *)self trigger];
    v17 = [objc_opt_class() onIconTintColor];
    v27 = [(WFTriggerConfigurationViewController *)self trigger];
    v18 = [objc_opt_class() offIcon];
    v19 = [(WFTriggerConfigurationViewController *)self trigger];
    v20 = [objc_opt_class() offLabel];
    v21 = [(WFTriggerConfigurationViewController *)self trigger];
    v22 = [objc_opt_class() offIconTintColor];
    [v34 configureWithLeftGlyph:v15 leftTitle:v16 leftTintColor:v17 rightGlyph:v18 rightTitle:v20 rightTintColor:v22];

    v23 = [(WFTriggerConfigurationViewController *)self trigger];
    [v34 setLeftViewSelected:{objc_msgSend(v23, "onConnect")}];

    v24 = [(WFTriggerConfigurationViewController *)self trigger];
    [v34 setRightViewSelected:{objc_msgSend(v24, "onDisconnect")}];

    [v34 setDelegate:self];
    v9 = v32;
    v6 = v33;
    v8 = v30;
  }

  v25 = [(WFTriggerConfigurationViewController *)self configureAdditionalCellsIfNeeded:v10 indexPath:v6 sectionInfo:v8, v27];

  return v25;
}

- (id)infoForSection:(int64_t)a3
{
  v4 = [(WFTriggerConfigurationViewController *)self sections];
  v5 = [v4 objectAtIndexedSubscript:a3];

  return v5;
}

- (void)updateUI
{
  v2 = [(WFTriggerConfigurationViewController *)self tableView];
  [v2 reloadData];
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
  v9 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v6 count:3];
  v4 = [v2 setWithArray:{v3, v6, v7}];

  return v4;
}

- (WFExternalDisplayTriggerConfigurationViewController)initWithTrigger:(id)a3 mode:(unint64_t)a4
{
  v7 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"WFExternalDisplayTriggerConfigurationViewController.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"[trigger isKindOfClass:[WFExternalDisplayTrigger class]]"}];
  }

  v13.receiver = self;
  v13.super_class = WFExternalDisplayTriggerConfigurationViewController;
  v8 = [(WFTriggerConfigurationViewController *)&v13 initWithTrigger:v7 mode:a4];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  return v9;
}

@end