@interface WFUserFocusActivityTriggerConfigurationViewController
- (WFUserFocusActivityTriggerConfigurationViewController)initWithTrigger:(id)trigger mode:(unint64_t)mode;
- (id)customSections;
- (id)infoForSection:(int64_t)section;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableViewCellClasses;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)cell:(id)cell didSelectOptionWithLeftViewSelected:(BOOL)selected rightViewSelected:(BOOL)viewSelected;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation WFUserFocusActivityTriggerConfigurationViewController

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

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v4 = [(WFUserFocusActivityTriggerConfigurationViewController *)self infoForSection:section];
  v5 = [v4 objectForKeyedSubscript:@"sectionTitle"];

  return v5;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = -[WFUserFocusActivityTriggerConfigurationViewController infoForSection:](self, "infoForSection:", [pathCopy section]);
  [(WFTriggerConfigurationViewController *)self didSelectRowAtIndexPath:pathCopy withSectionInfo:v6];

  tableView = [(WFTriggerConfigurationViewController *)self tableView];
  [tableView reloadData];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = -[WFUserFocusActivityTriggerConfigurationViewController infoForSection:](self, "infoForSection:", [pathCopy section]);
  v9 = [v8 objectForKeyedSubscript:@"cellIdentifier"];
  v10 = [viewCopy dequeueReusableCellWithIdentifier:v9 forIndexPath:pathCopy];

  [v10 setSelectionStyle:0];
  [v10 setAccessoryType:0];
  v11 = [v8 objectForKeyedSubscript:@"identifier"];
  v12 = [v11 isEqual:@"triggerDescription"];

  if (v12)
  {
    trigger = [(WFTriggerConfigurationViewController *)self trigger];
    [v10 setTrigger:trigger];
  }

  else
  {
    v14 = v10;
    v33 = v8;
    v34 = pathCopy;
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

    trigger2 = [(WFTriggerConfigurationViewController *)self trigger];
    onIcon = [trigger2 onIcon];

    trigger3 = [(WFTriggerConfigurationViewController *)self trigger];
    offIcon = [trigger3 offIcon];

    trigger4 = [(WFTriggerConfigurationViewController *)self trigger];
    onLabel = [objc_opt_class() onLabel];
    trigger5 = [(WFTriggerConfigurationViewController *)self trigger];
    displayGlyphTintColor = [trigger5 displayGlyphTintColor];
    trigger6 = [(WFTriggerConfigurationViewController *)self trigger];
    offLabel = [objc_opt_class() offLabel];
    trigger7 = [(WFTriggerConfigurationViewController *)self trigger];
    displayGlyphTintColor2 = [trigger7 displayGlyphTintColor];
    [v16 configureWithLeftGlyph:onIcon leftTitle:onLabel leftTintColor:displayGlyphTintColor rightGlyph:offIcon rightTitle:offLabel rightTintColor:displayGlyphTintColor2];

    trigger8 = [(WFTriggerConfigurationViewController *)self trigger];
    [v16 setLeftViewSelected:{objc_msgSend(trigger8, "onEnable")}];

    trigger9 = [(WFTriggerConfigurationViewController *)self trigger];
    [v16 setRightViewSelected:{objc_msgSend(trigger9, "onDisable")}];

    trigger = onIcon;
    [v16 setDelegate:self];

    v8 = v33;
    pathCopy = v34;
    v9 = v32;
  }

  v28 = [(WFTriggerConfigurationViewController *)self configureAdditionalCellsIfNeeded:v10 indexPath:pathCopy sectionInfo:v8];

  return v28;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(WFUserFocusActivityTriggerConfigurationViewController *)self infoForSection:section];
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
  v5.super_class = WFUserFocusActivityTriggerConfigurationViewController;
  [(WFUserFocusActivityTriggerConfigurationViewController *)&v5 viewWillAppear:appear];
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

- (WFUserFocusActivityTriggerConfigurationViewController)initWithTrigger:(id)trigger mode:(unint64_t)mode
{
  triggerCopy = trigger;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFUserFocusActivityTriggerConfigurationViewController.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"[trigger isKindOfClass:[WFUserFocusActivityTrigger class]]"}];
  }

  v13.receiver = self;
  v13.super_class = WFUserFocusActivityTriggerConfigurationViewController;
  v8 = [(WFTriggerConfigurationViewController *)&v13 initWithTrigger:triggerCopy mode:mode];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  return v9;
}

@end