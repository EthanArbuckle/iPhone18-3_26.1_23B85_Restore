@interface WFBatteryLevelTriggerConfigurationViewController
- (NSNumber)parameterSectionIndex;
- (WFBatteryLevelTriggerConfigurationViewController)initWithTrigger:(id)trigger mode:(unint64_t)mode;
- (id)customSections;
- (id)infoForSection:(int64_t)section;
- (id)localizedTextForCellAtIndexPath:(id)path value:(double)value;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableViewCellClasses;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)disableRowVisibilityFor:(id)for;
- (void)enableRowVisibilityFor:(id)for;
- (void)sliderValueChangedToValue:(double)value;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateCellLabelsWithValue:(double)value;
@end

@implementation WFBatteryLevelTriggerConfigurationViewController

- (id)localizedTextForCellAtIndexPath:(id)path value:(double)value
{
  pathCopy = path;
  v6 = MEMORY[0x277CCABB8];
  v7 = value / 100.0;
  *&v7 = value / 100.0;
  v8 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
  v9 = [v6 localizedStringFromNumber:v8 numberStyle:3];

  if (![pathCopy row])
  {
    v10 = @"Equals %@";
    goto LABEL_7;
  }

  if ([pathCopy row] == 1)
  {
    v10 = @"Rises Above %@";
LABEL_7:
    v11 = MEMORY[0x277CCACA8];
    v12 = WFLocalizedString(v10);
    v13 = [v11 stringWithFormat:v12, v9];

    goto LABEL_8;
  }

  if ([pathCopy row] == 2)
  {
    v10 = @"Falls Below %@";
    goto LABEL_7;
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)enableRowVisibilityFor:(id)for
{
  forCopy = for;
  [forCopy setUserInteractionEnabled:1];
  textLabel = [forCopy textLabel];
  [textLabel setEnabled:1];

  detailTextLabel = [forCopy detailTextLabel];

  [detailTextLabel setEnabled:1];
}

- (void)disableRowVisibilityFor:(id)for
{
  forCopy = for;
  [forCopy setUserInteractionEnabled:0];
  textLabel = [forCopy textLabel];
  [textLabel setEnabled:0];

  detailTextLabel = [forCopy detailTextLabel];
  [detailTextLabel setEnabled:0];

  if ([forCopy accessoryType] == 3)
  {
    v6 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:2];
    tableView = [(WFTriggerConfigurationViewController *)self tableView];
    v8 = [tableView cellForRowAtIndexPath:v6];

    [v8 setAccessoryType:3];
    [forCopy setAccessoryType:0];
  }
}

- (void)updateCellLabelsWithValue:(double)value
{
  v5 = MEMORY[0x277CCAA70];
  parameterSectionIndex = [(WFBatteryLevelTriggerConfigurationViewController *)self parameterSectionIndex];
  v25 = [v5 indexPathForRow:0 inSection:{objc_msgSend(parameterSectionIndex, "integerValue")}];

  v7 = MEMORY[0x277CCAA70];
  parameterSectionIndex2 = [(WFBatteryLevelTriggerConfigurationViewController *)self parameterSectionIndex];
  v9 = [v7 indexPathForRow:1 inSection:{objc_msgSend(parameterSectionIndex2, "integerValue")}];

  v10 = MEMORY[0x277CCAA70];
  parameterSectionIndex3 = [(WFBatteryLevelTriggerConfigurationViewController *)self parameterSectionIndex];
  v12 = [v10 indexPathForRow:2 inSection:{objc_msgSend(parameterSectionIndex3, "integerValue")}];

  tableView = [(WFTriggerConfigurationViewController *)self tableView];
  v14 = [tableView cellForRowAtIndexPath:v25];

  tableView2 = [(WFTriggerConfigurationViewController *)self tableView];
  v16 = [tableView2 cellForRowAtIndexPath:v9];

  tableView3 = [(WFTriggerConfigurationViewController *)self tableView];
  v18 = [tableView3 cellForRowAtIndexPath:v12];

  v19 = [(WFBatteryLevelTriggerConfigurationViewController *)self localizedTextForCellAtIndexPath:v25 value:value];
  textLabel = [v14 textLabel];
  [textLabel setText:v19];

  v21 = [(WFBatteryLevelTriggerConfigurationViewController *)self localizedTextForCellAtIndexPath:v9 value:value];
  textLabel2 = [v16 textLabel];
  [textLabel2 setText:v21];

  v23 = [(WFBatteryLevelTriggerConfigurationViewController *)self localizedTextForCellAtIndexPath:v12 value:value];
  textLabel3 = [v18 textLabel];
  [textLabel3 setText:v23];

  [(WFBatteryLevelTriggerConfigurationViewController *)self enableRowVisibilityFor:v16];
  [(WFBatteryLevelTriggerConfigurationViewController *)self enableRowVisibilityFor:v18];
  if (value >= 100.0)
  {
    [(WFBatteryLevelTriggerConfigurationViewController *)self disableRowVisibilityFor:v16];
  }

  if (value <= 0.0)
  {
    [(WFBatteryLevelTriggerConfigurationViewController *)self disableRowVisibilityFor:v18];
  }
}

- (NSNumber)parameterSectionIndex
{
  parameterSectionIndex = self->_parameterSectionIndex;
  if (!parameterSectionIndex)
  {
    v4 = MEMORY[0x277CCABB0];
    sections = [(WFTriggerConfigurationViewController *)self sections];
    v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(sections, "indexOfObjectPassingTest:", &__block_literal_global_6102)}];
    v7 = self->_parameterSectionIndex;
    self->_parameterSectionIndex = v6;

    parameterSectionIndex = self->_parameterSectionIndex;
  }

  return parameterSectionIndex;
}

uint64_t __73__WFBatteryLevelTriggerConfigurationViewController_parameterSectionIndex__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:@"identifier"];
  v3 = v2;
  if (v2 == @"triggerParameters")
  {
    v4 = 1;
  }

  else if (v2)
  {
    v4 = [(__CFString *)v2 isEqualToString:@"triggerParameters"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)sliderValueChangedToValue:(double)value
{
  valueCopy = value;
  trigger = [(WFTriggerConfigurationViewController *)self trigger];
  [trigger setLevel:valueCopy];

  [(WFBatteryLevelTriggerConfigurationViewController *)self updateCellLabelsWithValue:value];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  v6 = -[WFBatteryLevelTriggerConfigurationViewController infoForSection:](self, "infoForSection:", [pathCopy section]);
  v7 = [v6 objectForKeyedSubscript:@"identifier"];
  v8 = [v7 isEqualToString:@"triggerParameters"];

  if (v8)
  {
    v9 = [pathCopy row];
    trigger = [(WFTriggerConfigurationViewController *)self trigger];
    [trigger setSelection:v9];

    tableView = [(WFTriggerConfigurationViewController *)self tableView];
    v12 = [MEMORY[0x277CCAA78] indexSetWithIndex:{objc_msgSend(pathCopy, "section")}];
    [tableView reloadSections:v12 withRowAnimation:100];
  }

  [(WFTriggerConfigurationViewController *)self didSelectRowAtIndexPath:pathCopy withSectionInfo:v6];
  [(WFTriggerConfigurationViewController *)self updateNextButtonEnabledState];
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v4 = [(WFBatteryLevelTriggerConfigurationViewController *)self infoForSection:section];
  v5 = [v4 objectForKeyedSubscript:@"sectionTitle"];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = -[WFBatteryLevelTriggerConfigurationViewController infoForSection:](self, "infoForSection:", [pathCopy section]);
  v9 = [v8 objectForKeyedSubscript:@"cellIdentifier"];
  v10 = [viewCopy dequeueReusableCellWithIdentifier:v9 forIndexPath:pathCopy];

  [v10 setAccessoryType:0];
  v11 = [v8 objectForKeyedSubscript:@"identifier"];
  v12 = [v11 isEqualToString:@"triggerDescription"];

  if (v12)
  {
    [v10 setTriggerTypeClass:objc_opt_class()];
    [v10 setSelectionStyle:0];
    goto LABEL_19;
  }

  v13 = [v8 objectForKeyedSubscript:@"identifier"];
  v14 = [v13 isEqualToString:@"triggerLevel"];

  if (v14)
  {
    v15 = v10;
    [v15 setDelegate:self];
    trigger = [(WFTriggerConfigurationViewController *)self trigger];
    [v15 configureWithInitialValue:objc_msgSend(trigger maximumValue:"level") minimumValue:100.0 stepValue:{0.0, 5.0}];

    goto LABEL_19;
  }

  v17 = [v8 objectForKeyedSubscript:@"identifier"];
  v18 = [v17 isEqualToString:@"triggerParameters"];

  if (v18)
  {
    [v10 setAccessoryType:0];
    trigger2 = [(WFTriggerConfigurationViewController *)self trigger];
    v20 = -[WFBatteryLevelTriggerConfigurationViewController localizedTextForCellAtIndexPath:value:](self, "localizedTextForCellAtIndexPath:value:", pathCopy, [trigger2 level]);
    textLabel = [v10 textLabel];
    [textLabel setText:v20];

    v22 = [pathCopy row];
    if (v22 == 2)
    {
      trigger3 = [(WFTriggerConfigurationViewController *)self trigger];
      selection = [trigger3 selection];

      if (selection == 2)
      {
        [v10 setAccessoryType:3];
      }

      trigger4 = [(WFTriggerConfigurationViewController *)self trigger];
      level = [trigger4 level];

      if (level)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v22 != 1)
      {
        if (!v22)
        {
          trigger5 = [(WFTriggerConfigurationViewController *)self trigger];
          selection2 = [trigger5 selection];

          if (!selection2)
          {
            [v10 setAccessoryType:3];
          }
        }

LABEL_18:
        [(WFBatteryLevelTriggerConfigurationViewController *)self enableRowVisibilityFor:v10];
        goto LABEL_19;
      }

      trigger6 = [(WFTriggerConfigurationViewController *)self trigger];
      selection3 = [trigger6 selection];

      if (selection3 == 1)
      {
        [v10 setAccessoryType:3];
      }

      trigger7 = [(WFTriggerConfigurationViewController *)self trigger];
      level2 = [trigger7 level];

      if (level2 <= 0x63)
      {
        goto LABEL_18;
      }
    }

    [(WFBatteryLevelTriggerConfigurationViewController *)self disableRowVisibilityFor:v10];
  }

LABEL_19:
  v33 = [(WFTriggerConfigurationViewController *)self configureAdditionalCellsIfNeeded:v10 indexPath:pathCopy sectionInfo:v8];

  return v33;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(WFBatteryLevelTriggerConfigurationViewController *)self infoForSection:section];
  v6 = [v5 objectForKeyedSubscript:@"identifier"];
  v7 = [v6 isEqualToString:@"triggerParameters"];

  if (v7)
  {
    v8 = [v5 objectForKeyedSubscript:@"numberRows"];
    integerValue = [v8 integerValue];
  }

  else
  {
    integerValue = [(WFTriggerConfigurationViewController *)self numberOfRowsInSectionWithInfo:v5];
  }

  return integerValue;
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

- (id)customSections
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = @"triggerLevel";
  v12[0] = @"identifier";
  v12[1] = @"cellIdentifier";
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v12[2] = @"numberRows";
  v13[1] = v3;
  v13[2] = &unk_2883C1D60;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
  v14[0] = v4;
  v11[0] = @"triggerParameters";
  v10[0] = @"identifier";
  v10[1] = @"cellIdentifier";
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v10[2] = @"numberRows";
  v11[1] = v6;
  v11[2] = &unk_2883C1D78;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];
  v14[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];

  return v8;
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

- (WFBatteryLevelTriggerConfigurationViewController)initWithTrigger:(id)trigger mode:(unint64_t)mode
{
  triggerCopy = trigger;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFBatteryLevelTriggerConfigurationViewController.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"[trigger isKindOfClass:[WFBatteryLevelTrigger class]]"}];
  }

  v13.receiver = self;
  v13.super_class = WFBatteryLevelTriggerConfigurationViewController;
  v8 = [(WFTriggerConfigurationViewController *)&v13 initWithTrigger:triggerCopy mode:mode];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  return v9;
}

@end