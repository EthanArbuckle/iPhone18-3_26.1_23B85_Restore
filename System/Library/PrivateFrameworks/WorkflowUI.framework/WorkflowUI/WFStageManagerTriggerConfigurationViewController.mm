@interface WFStageManagerTriggerConfigurationViewController
- (WFStageManagerTriggerConfigurationViewController)initWithTrigger:(id)trigger mode:(unint64_t)mode;
- (id)customSections;
- (id)infoForSection:(int64_t)section;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableViewCellClasses;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)cell:(id)cell didSelectOptionWithLeftViewSelected:(BOOL)selected rightViewSelected:(BOOL)viewSelected;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateUI;
@end

@implementation WFStageManagerTriggerConfigurationViewController

- (void)cell:(id)cell didSelectOptionWithLeftViewSelected:(BOOL)selected rightViewSelected:(BOOL)viewSelected
{
  viewSelectedCopy = viewSelected;
  selectedCopy = selected;
  trigger = [(WFTriggerConfigurationViewController *)self trigger];
  [trigger setOnEnable:selectedCopy];

  trigger2 = [(WFTriggerConfigurationViewController *)self trigger];
  [trigger2 setOnDisable:viewSelectedCopy];

  [(WFTriggerConfigurationViewController *)self updateNextButtonEnabledState];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = -[WFStageManagerTriggerConfigurationViewController infoForSection:](self, "infoForSection:", [pathCopy section]);
  [(WFTriggerConfigurationViewController *)self didSelectRowAtIndexPath:pathCopy withSectionInfo:v6];

  tableView = [(WFTriggerConfigurationViewController *)self tableView];
  [tableView reloadData];
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  sections = [(WFTriggerConfigurationViewController *)self sections];
  v4 = [sections count];

  return v4;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v4 = [(WFStageManagerTriggerConfigurationViewController *)self infoForSection:section];
  v5 = [v4 objectForKeyedSubscript:@"sectionTitle"];

  return v5;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(WFStageManagerTriggerConfigurationViewController *)self infoForSection:section];
  v6 = [(WFTriggerConfigurationViewController *)self numberOfRowsInSectionWithInfo:v5];

  return v6;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = -[WFStageManagerTriggerConfigurationViewController infoForSection:](self, "infoForSection:", [pathCopy section]);
  v9 = [v8 objectForKeyedSubscript:@"cellIdentifier"];
  v10 = [viewCopy dequeueReusableCellWithIdentifier:v9 forIndexPath:pathCopy];

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
    v33 = pathCopy;
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

    trigger = [(WFTriggerConfigurationViewController *)self trigger];
    onIcon = [objc_opt_class() onIcon];
    trigger2 = [(WFTriggerConfigurationViewController *)self trigger];
    onLabel = [objc_opt_class() onLabel];
    trigger3 = [(WFTriggerConfigurationViewController *)self trigger];
    onIconTintColor = [objc_opt_class() onIconTintColor];
    trigger4 = [(WFTriggerConfigurationViewController *)self trigger];
    offIcon = [objc_opt_class() offIcon];
    trigger5 = [(WFTriggerConfigurationViewController *)self trigger];
    offLabel = [objc_opt_class() offLabel];
    trigger6 = [(WFTriggerConfigurationViewController *)self trigger];
    offIconTintColor = [objc_opt_class() offIconTintColor];
    [v34 configureWithLeftGlyph:onIcon leftTitle:onLabel leftTintColor:onIconTintColor rightGlyph:offIcon rightTitle:offLabel rightTintColor:offIconTintColor];

    trigger7 = [(WFTriggerConfigurationViewController *)self trigger];
    [v34 setLeftViewSelected:{objc_msgSend(trigger7, "onEnable")}];

    trigger8 = [(WFTriggerConfigurationViewController *)self trigger];
    [v34 setRightViewSelected:{objc_msgSend(trigger8, "onDisable")}];

    [v34 setDelegate:self];
    v9 = v32;
    pathCopy = v33;
    v8 = v30;
  }

  v25 = [(WFTriggerConfigurationViewController *)self configureAdditionalCellsIfNeeded:v10 indexPath:pathCopy sectionInfo:v8, trigger4];

  return v25;
}

- (id)infoForSection:(int64_t)section
{
  sections = [(WFTriggerConfigurationViewController *)self sections];
  v5 = [sections objectAtIndexedSubscript:section];

  return v5;
}

- (void)updateUI
{
  tableView = [(WFTriggerConfigurationViewController *)self tableView];
  [tableView reloadData];
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

- (WFStageManagerTriggerConfigurationViewController)initWithTrigger:(id)trigger mode:(unint64_t)mode
{
  triggerCopy = trigger;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFStageManagerTriggerConfigurationViewController.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"[trigger isKindOfClass:[WFStageManagerTrigger class]]"}];
  }

  v13.receiver = self;
  v13.super_class = WFStageManagerTriggerConfigurationViewController;
  v8 = [(WFTriggerConfigurationViewController *)&v13 initWithTrigger:triggerCopy mode:mode];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  return v9;
}

@end