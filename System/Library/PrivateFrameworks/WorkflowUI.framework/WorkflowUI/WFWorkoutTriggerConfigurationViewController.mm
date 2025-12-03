@interface WFWorkoutTriggerConfigurationViewController
- (WFWorkoutTriggerConfigurationViewController)initWithTrigger:(id)trigger mode:(unint64_t)mode;
- (id)customSections;
- (id)infoForSection:(int64_t)section;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableViewCellClasses;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)cell:(id)cell didSelectOptionWithLeftViewSelected:(BOOL)selected rightViewSelected:(BOOL)viewSelected;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)triggerTableViewController:(id)controller didFinishWithAnySelected:(BOOL)selected orSelectedOptions:(id)options;
- (void)updateUI;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation WFWorkoutTriggerConfigurationViewController

- (void)triggerTableViewController:(id)controller didFinishWithAnySelected:(BOOL)selected orSelectedOptions:(id)options
{
  selectedCopy = selected;
  optionsCopy = options;
  controllerCopy = controller;
  trigger = [(WFTriggerConfigurationViewController *)self trigger];
  v10 = trigger;
  if (selectedCopy)
  {
    [trigger setSelection:0];

    trigger2 = [(WFTriggerConfigurationViewController *)self trigger];
    [trigger2 setSelectedWorkoutTypes:MEMORY[0x277CBEBF8]];
  }

  else
  {
    [trigger setSelection:1];

    trigger2 = [optionsCopy if_map:&__block_literal_global_52];
    trigger3 = [(WFTriggerConfigurationViewController *)self trigger];
    [trigger3 setSelectedWorkoutTypes:trigger2];
  }

  [controllerCopy dismissViewControllerAnimated:1 completion:0];
  tableView = [(WFTriggerConfigurationViewController *)self tableView];
  [tableView reloadData];

  [(WFTriggerConfigurationViewController *)self updateNextButtonEnabledState];
}

- (void)cell:(id)cell didSelectOptionWithLeftViewSelected:(BOOL)selected rightViewSelected:(BOOL)viewSelected
{
  viewSelectedCopy = viewSelected;
  selectedCopy = selected;
  trigger = [(WFTriggerConfigurationViewController *)self trigger];
  [trigger setOnStart:selectedCopy];

  trigger2 = [(WFTriggerConfigurationViewController *)self trigger];
  [trigger2 setOnEnd:viewSelectedCopy];

  [(WFTriggerConfigurationViewController *)self updateNextButtonEnabledState];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  v7 = -[WFWorkoutTriggerConfigurationViewController infoForSection:](self, "infoForSection:", [pathCopy section]);
  v8 = [v7 objectForKeyedSubscript:@"identifier"];
  v9 = [v8 isEqual:@"workoutType"];

  if (v9)
  {
    allTypes = [MEMORY[0x277D7CAC8] allTypes];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __81__WFWorkoutTriggerConfigurationViewController_tableView_didSelectRowAtIndexPath___block_invoke;
    v20[3] = &unk_279EE75E0;
    v20[4] = self;
    v11 = [allTypes if_map:v20];

    trigger = [(WFTriggerConfigurationViewController *)self trigger];
    v13 = [trigger selection] == 0;

    v14 = [WFTriggerTableViewController alloc];
    v15 = WFLocalizedString(@"Any Workout");
    v16 = [(WFTriggerTableViewController *)v14 initWithOptions:v11 anySelected:v13 nameOfAnyOption:v15 mainSectionTitle:0];

    v17 = WFLocalizedString(@"Choose Workouts");
    [(WFTriggerTableViewController *)v16 setTitle:v17];

    [(WFTriggerTableViewController *)v16 setDelegate:self];
    v18 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v16];
    [(WFWorkoutTriggerConfigurationViewController *)self presentViewController:v18 animated:1 completion:0];
  }

  [(WFTriggerConfigurationViewController *)self didSelectRowAtIndexPath:pathCopy withSectionInfo:v7];
  tableView = [(WFTriggerConfigurationViewController *)self tableView];
  [tableView reloadData];

  [(WFTriggerConfigurationViewController *)self updateNextButtonEnabledState];
}

WFSelectableListOption *__81__WFWorkoutTriggerConfigurationViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [WFSelectableListOption alloc];
  v5 = [v3 name];
  v6 = MEMORY[0x277CCABB0];
  v7 = [v3 activityType];

  v8 = [v6 numberWithUnsignedInteger:v7];
  v9 = [(WFSelectableListOption *)v4 initWithDisplayTitle:v5 value:v8];

  v10 = [*(a1 + 32) trigger];
  v11 = [v10 selectedWorkoutTypes];
  v12 = [(WFSelectableListOption *)v9 value];
  -[WFSelectableListOption setSelected:](v9, "setSelected:", [v11 containsObject:v12]);

  return v9;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v4 = [(WFWorkoutTriggerConfigurationViewController *)self infoForSection:section];
  v5 = [v4 objectForKeyedSubscript:@"sectionTitle"];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = -[WFWorkoutTriggerConfigurationViewController infoForSection:](self, "infoForSection:", [pathCopy section]);
  v9 = [v8 objectForKeyedSubscript:@"cellIdentifier"];
  v10 = [viewCopy dequeueReusableCellWithIdentifier:v9 forIndexPath:pathCopy];

  [v10 setAccessoryType:0];
  v11 = [v8 objectForKeyedSubscript:@"identifier"];
  v12 = [v11 isEqual:@"triggerDescription"];

  if (v12)
  {
    [v10 setTriggerTypeClass:objc_opt_class()];
    goto LABEL_20;
  }

  v13 = [v8 objectForKeyedSubscript:@"identifier"];
  v14 = [v13 isEqual:@"workoutType"];

  v15 = v10;
  v16 = v15;
  if (!v14)
  {
    v58 = v9;
    v55 = pathCopy;
    v53 = v10;
    if (v15)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = v16;
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v22 = 0;
    }

    v59 = v22;

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
    [v59 configureWithLeftGlyph:onIcon leftTitle:onLabel leftTintColor:onIconTintColor rightGlyph:offIcon rightTitle:offLabel rightTintColor:offIconTintColor];

    trigger7 = [(WFTriggerConfigurationViewController *)self trigger];
    [v59 setLeftViewSelected:{objc_msgSend(trigger7, "onStart")}];

    trigger8 = [(WFTriggerConfigurationViewController *)self trigger];
    [v59 setRightViewSelected:{objc_msgSend(trigger8, "onEnd")}];

    [v59 setDelegate:self];
    v9 = v58;
    pathCopy = v55;
    v10 = v53;
    goto LABEL_20;
  }

  v17 = WFLocalizedString(@"Workout Type");
  textLabel = [v16 textLabel];
  [textLabel setText:v17];

  trigger9 = [(WFTriggerConfigurationViewController *)self trigger];
  selection = [trigger9 selection];

  if (selection == 1)
  {
    trigger10 = [(WFTriggerConfigurationViewController *)self trigger];
    selectedWorkoutTypes = [trigger10 selectedWorkoutTypes];
    v35 = [selectedWorkoutTypes count];

    if (v35)
    {
      trigger11 = [(WFTriggerConfigurationViewController *)self trigger];
      selectedWorkoutTypes2 = [trigger11 selectedWorkoutTypes];
      v38 = [selectedWorkoutTypes2 count];

      if (v38 == 1)
      {
        v39 = objc_alloc(MEMORY[0x277D7CAC8]);
        trigger12 = [(WFTriggerConfigurationViewController *)self trigger];
        selectedWorkoutTypes3 = [trigger12 selectedWorkoutTypes];
        firstObject = [selectedWorkoutTypes3 firstObject];
        v42 = v9;
        v43 = [v39 initWithActivityType:{objc_msgSend(firstObject, "unsignedIntegerValue")}];
        name = [v43 name];

        v9 = v42;
      }

      else
      {
        v48 = MEMORY[0x277CCACA8];
        v49 = WFLocalizedString(@"Any of %lu types");
        trigger13 = [(WFTriggerConfigurationViewController *)self trigger];
        selectedWorkoutTypes4 = [trigger13 selectedWorkoutTypes];
        name = [v48 localizedStringWithFormat:v49, objc_msgSend(selectedWorkoutTypes4, "count")];
      }

      goto LABEL_19;
    }

    v21 = @"Choose";
    goto LABEL_18;
  }

  if (!selection)
  {
    v21 = @"Any Workout";
LABEL_18:
    name = WFLocalizedString(v21);
    goto LABEL_19;
  }

  name = 0;
LABEL_19:
  detailTextLabel = [v16 detailTextLabel];
  [detailTextLabel setText:name];

LABEL_20:
  v46 = [(WFTriggerConfigurationViewController *)self configureAdditionalCellsIfNeeded:v10 indexPath:pathCopy sectionInfo:v8];

  return v46;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(WFWorkoutTriggerConfigurationViewController *)self infoForSection:section];
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
  v5.super_class = WFWorkoutTriggerConfigurationViewController;
  [(WFWorkoutTriggerConfigurationViewController *)&v5 viewWillAppear:appear];
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
  v13[0] = @"workoutType";
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v13[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v14[0] = v4;
  v10[1] = @"cellIdentifier";
  v11[0] = @"workoutParameter";
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

- (WFWorkoutTriggerConfigurationViewController)initWithTrigger:(id)trigger mode:(unint64_t)mode
{
  triggerCopy = trigger;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFWorkoutTriggerConfigurationViewController.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"[trigger isKindOfClass:[WFWorkoutTrigger class]]"}];
  }

  v13.receiver = self;
  v13.super_class = WFWorkoutTriggerConfigurationViewController;
  v8 = [(WFTriggerConfigurationViewController *)&v13 initWithTrigger:triggerCopy mode:mode];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  return v9;
}

@end