@interface WFBatteryLevelTriggerConfigurationViewController
- (NSNumber)parameterSectionIndex;
- (WFBatteryLevelTriggerConfigurationViewController)initWithTrigger:(id)a3 mode:(unint64_t)a4;
- (id)customSections;
- (id)infoForSection:(int64_t)a3;
- (id)localizedTextForCellAtIndexPath:(id)a3 value:(double)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableViewCellClasses;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)disableRowVisibilityFor:(id)a3;
- (void)enableRowVisibilityFor:(id)a3;
- (void)sliderValueChangedToValue:(double)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateCellLabelsWithValue:(double)a3;
@end

@implementation WFBatteryLevelTriggerConfigurationViewController

- (id)localizedTextForCellAtIndexPath:(id)a3 value:(double)a4
{
  v5 = a3;
  v6 = MEMORY[0x277CCABB8];
  v7 = a4 / 100.0;
  *&v7 = a4 / 100.0;
  v8 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
  v9 = [v6 localizedStringFromNumber:v8 numberStyle:3];

  if (![v5 row])
  {
    v10 = @"Equals %@";
    goto LABEL_7;
  }

  if ([v5 row] == 1)
  {
    v10 = @"Rises Above %@";
LABEL_7:
    v11 = MEMORY[0x277CCACA8];
    v12 = WFLocalizedString(v10);
    v13 = [v11 stringWithFormat:v12, v9];

    goto LABEL_8;
  }

  if ([v5 row] == 2)
  {
    v10 = @"Falls Below %@";
    goto LABEL_7;
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)enableRowVisibilityFor:(id)a3
{
  v3 = a3;
  [v3 setUserInteractionEnabled:1];
  v4 = [v3 textLabel];
  [v4 setEnabled:1];

  v5 = [v3 detailTextLabel];

  [v5 setEnabled:1];
}

- (void)disableRowVisibilityFor:(id)a3
{
  v9 = a3;
  [v9 setUserInteractionEnabled:0];
  v4 = [v9 textLabel];
  [v4 setEnabled:0];

  v5 = [v9 detailTextLabel];
  [v5 setEnabled:0];

  if ([v9 accessoryType] == 3)
  {
    v6 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:2];
    v7 = [(WFTriggerConfigurationViewController *)self tableView];
    v8 = [v7 cellForRowAtIndexPath:v6];

    [v8 setAccessoryType:3];
    [v9 setAccessoryType:0];
  }
}

- (void)updateCellLabelsWithValue:(double)a3
{
  v5 = MEMORY[0x277CCAA70];
  v6 = [(WFBatteryLevelTriggerConfigurationViewController *)self parameterSectionIndex];
  v25 = [v5 indexPathForRow:0 inSection:{objc_msgSend(v6, "integerValue")}];

  v7 = MEMORY[0x277CCAA70];
  v8 = [(WFBatteryLevelTriggerConfigurationViewController *)self parameterSectionIndex];
  v9 = [v7 indexPathForRow:1 inSection:{objc_msgSend(v8, "integerValue")}];

  v10 = MEMORY[0x277CCAA70];
  v11 = [(WFBatteryLevelTriggerConfigurationViewController *)self parameterSectionIndex];
  v12 = [v10 indexPathForRow:2 inSection:{objc_msgSend(v11, "integerValue")}];

  v13 = [(WFTriggerConfigurationViewController *)self tableView];
  v14 = [v13 cellForRowAtIndexPath:v25];

  v15 = [(WFTriggerConfigurationViewController *)self tableView];
  v16 = [v15 cellForRowAtIndexPath:v9];

  v17 = [(WFTriggerConfigurationViewController *)self tableView];
  v18 = [v17 cellForRowAtIndexPath:v12];

  v19 = [(WFBatteryLevelTriggerConfigurationViewController *)self localizedTextForCellAtIndexPath:v25 value:a3];
  v20 = [v14 textLabel];
  [v20 setText:v19];

  v21 = [(WFBatteryLevelTriggerConfigurationViewController *)self localizedTextForCellAtIndexPath:v9 value:a3];
  v22 = [v16 textLabel];
  [v22 setText:v21];

  v23 = [(WFBatteryLevelTriggerConfigurationViewController *)self localizedTextForCellAtIndexPath:v12 value:a3];
  v24 = [v18 textLabel];
  [v24 setText:v23];

  [(WFBatteryLevelTriggerConfigurationViewController *)self enableRowVisibilityFor:v16];
  [(WFBatteryLevelTriggerConfigurationViewController *)self enableRowVisibilityFor:v18];
  if (a3 >= 100.0)
  {
    [(WFBatteryLevelTriggerConfigurationViewController *)self disableRowVisibilityFor:v16];
  }

  if (a3 <= 0.0)
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
    v5 = [(WFTriggerConfigurationViewController *)self sections];
    v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(v5, "indexOfObjectPassingTest:", &__block_literal_global_6102)}];
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

- (void)sliderValueChangedToValue:(double)a3
{
  v5 = a3;
  v6 = [(WFTriggerConfigurationViewController *)self trigger];
  [v6 setLevel:v5];

  [(WFBatteryLevelTriggerConfigurationViewController *)self updateCellLabelsWithValue:a3];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v13 = a4;
  [a3 deselectRowAtIndexPath:v13 animated:1];
  v6 = -[WFBatteryLevelTriggerConfigurationViewController infoForSection:](self, "infoForSection:", [v13 section]);
  v7 = [v6 objectForKeyedSubscript:@"identifier"];
  v8 = [v7 isEqualToString:@"triggerParameters"];

  if (v8)
  {
    v9 = [v13 row];
    v10 = [(WFTriggerConfigurationViewController *)self trigger];
    [v10 setSelection:v9];

    v11 = [(WFTriggerConfigurationViewController *)self tableView];
    v12 = [MEMORY[0x277CCAA78] indexSetWithIndex:{objc_msgSend(v13, "section")}];
    [v11 reloadSections:v12 withRowAnimation:100];
  }

  [(WFTriggerConfigurationViewController *)self didSelectRowAtIndexPath:v13 withSectionInfo:v6];
  [(WFTriggerConfigurationViewController *)self updateNextButtonEnabledState];
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v4 = [(WFBatteryLevelTriggerConfigurationViewController *)self infoForSection:a4];
  v5 = [v4 objectForKeyedSubscript:@"sectionTitle"];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = -[WFBatteryLevelTriggerConfigurationViewController infoForSection:](self, "infoForSection:", [v6 section]);
  v9 = [v8 objectForKeyedSubscript:@"cellIdentifier"];
  v10 = [v7 dequeueReusableCellWithIdentifier:v9 forIndexPath:v6];

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
    v16 = [(WFTriggerConfigurationViewController *)self trigger];
    [v15 configureWithInitialValue:objc_msgSend(v16 maximumValue:"level") minimumValue:100.0 stepValue:{0.0, 5.0}];

    goto LABEL_19;
  }

  v17 = [v8 objectForKeyedSubscript:@"identifier"];
  v18 = [v17 isEqualToString:@"triggerParameters"];

  if (v18)
  {
    [v10 setAccessoryType:0];
    v19 = [(WFTriggerConfigurationViewController *)self trigger];
    v20 = -[WFBatteryLevelTriggerConfigurationViewController localizedTextForCellAtIndexPath:value:](self, "localizedTextForCellAtIndexPath:value:", v6, [v19 level]);
    v21 = [v10 textLabel];
    [v21 setText:v20];

    v22 = [v6 row];
    if (v22 == 2)
    {
      v29 = [(WFTriggerConfigurationViewController *)self trigger];
      v30 = [v29 selection];

      if (v30 == 2)
      {
        [v10 setAccessoryType:3];
      }

      v31 = [(WFTriggerConfigurationViewController *)self trigger];
      v32 = [v31 level];

      if (v32)
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
          v23 = [(WFTriggerConfigurationViewController *)self trigger];
          v24 = [v23 selection];

          if (!v24)
          {
            [v10 setAccessoryType:3];
          }
        }

LABEL_18:
        [(WFBatteryLevelTriggerConfigurationViewController *)self enableRowVisibilityFor:v10];
        goto LABEL_19;
      }

      v25 = [(WFTriggerConfigurationViewController *)self trigger];
      v26 = [v25 selection];

      if (v26 == 1)
      {
        [v10 setAccessoryType:3];
      }

      v27 = [(WFTriggerConfigurationViewController *)self trigger];
      v28 = [v27 level];

      if (v28 <= 0x63)
      {
        goto LABEL_18;
      }
    }

    [(WFBatteryLevelTriggerConfigurationViewController *)self disableRowVisibilityFor:v10];
  }

LABEL_19:
  v33 = [(WFTriggerConfigurationViewController *)self configureAdditionalCellsIfNeeded:v10 indexPath:v6 sectionInfo:v8];

  return v33;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(WFBatteryLevelTriggerConfigurationViewController *)self infoForSection:a4];
  v6 = [v5 objectForKeyedSubscript:@"identifier"];
  v7 = [v6 isEqualToString:@"triggerParameters"];

  if (v7)
  {
    v8 = [v5 objectForKeyedSubscript:@"numberRows"];
    v9 = [v8 integerValue];
  }

  else
  {
    v9 = [(WFTriggerConfigurationViewController *)self numberOfRowsInSectionWithInfo:v5];
  }

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

- (WFBatteryLevelTriggerConfigurationViewController)initWithTrigger:(id)a3 mode:(unint64_t)a4
{
  v7 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"WFBatteryLevelTriggerConfigurationViewController.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"[trigger isKindOfClass:[WFBatteryLevelTrigger class]]"}];
  }

  v13.receiver = self;
  v13.super_class = WFBatteryLevelTriggerConfigurationViewController;
  v8 = [(WFTriggerConfigurationViewController *)&v13 initWithTrigger:v7 mode:a4];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  return v9;
}

@end