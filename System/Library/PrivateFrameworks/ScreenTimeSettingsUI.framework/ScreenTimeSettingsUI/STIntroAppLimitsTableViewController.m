@interface STIntroAppLimitsTableViewController
- (STIntroAppLimitsTableViewController)initWithCoder:(id)a3;
- (STIntroAppLimitsTableViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (STIntroAppLimitsTableViewController)initWithStyle:(int64_t)a3;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_selectedCategories;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_datePickerChanged:(id)a3;
- (void)_stIntroAppLimitsTableViewControllerCommonInit;
- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation STIntroAppLimitsTableViewController

- (STIntroAppLimitsTableViewController)initWithStyle:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = STIntroAppLimitsTableViewController;
  v3 = [(STIntroAppLimitsTableViewController *)&v5 initWithStyle:a3];
  [(STIntroAppLimitsTableViewController *)v3 _stIntroAppLimitsTableViewControllerCommonInit];
  return v3;
}

- (STIntroAppLimitsTableViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6.receiver = self;
  v6.super_class = STIntroAppLimitsTableViewController;
  v4 = [(STIntroAppLimitsTableViewController *)&v6 initWithNibName:a3 bundle:a4];
  [(STIntroAppLimitsTableViewController *)v4 _stIntroAppLimitsTableViewControllerCommonInit];
  return v4;
}

- (STIntroAppLimitsTableViewController)initWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STIntroAppLimitsTableViewController;
  v3 = [(STIntroAppLimitsTableViewController *)&v5 initWithCoder:a3];
  [(STIntroAppLimitsTableViewController *)v3 _stIntroAppLimitsTableViewControllerCommonInit];
  return v3;
}

- (void)_stIntroAppLimitsTableViewControllerCommonInit
{
  v3 = objc_opt_new();
  allowance = self->_allowance;
  self->_allowance = v3;

  [(STAllowance *)self->_allowance setBehaviorType:1];
  v5 = objc_opt_new();
  timeAmountFormatter = self->_timeAmountFormatter;
  self->_timeAmountFormatter = v5;

  [(NSDateComponentsFormatter *)self->_timeAmountFormatter setUnitsStyle:2];
  [(NSDateComponentsFormatter *)self->_timeAmountFormatter setAllowedUnits:96];
  [(NSDateComponentsFormatter *)self->_timeAmountFormatter setFormattingContext:3];
  self->_showingDatePicker = 1;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = STIntroAppLimitsTableViewController;
  [(STIntroAppLimitsTableViewController *)&v5 viewDidLoad];
  v3 = [(STIntroAppLimitsTableViewController *)self tableView];
  [v3 setEditing:1];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STIntroAppLimitsTableViewController.viewDidLoad", v4, 2u);
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = STIntroAppLimitsTableViewController;
  [(STIntroAppLimitsTableViewController *)&v9 viewWillAppear:a3];
  v4 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:0];
  v5 = [(STIntroAppLimitsTableViewController *)self tableView];
  [v5 selectRowAtIndexPath:v4 animated:0 scrollPosition:0];

  v6 = [(STIntroAppLimitsTableViewController *)self _selectedCategories];
  v7 = [(STIntroAppLimitsTableViewController *)self allowance];
  [v7 setCategoryIdentifiers:v6];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STIntroAppLimitsTableViewController.viewWillAppear", v8, 2u);
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v7 = a3;
  if (a4 == 1)
  {
    if ([(STIntroAppLimitsTableViewController *)self showingDatePicker])
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }
  }

  else if (a4)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"STIntroAppLimitsTableViewController.m" lineNumber:116 description:{@"Unhandled App Limits table section %ld", a4}];

    v10 = 0;
  }

  else if ([(STIntroAppLimitsTableViewController *)self showingAllCategories])
  {
    v8 = STSortedCategoriesForUsageLimits();
    v9 = [v8 count];

    v10 = v9 + 1;
    if (v9 + 1 < 0)
    {
      [(STIntroAppLimitsTableViewController *)a2 tableView:v9 numberOfRowsInSection:?];
    }
  }

  else
  {
    v10 = 4;
  }

  return v10;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v8 section];
  if (v9 == 1)
  {
    v18 = [v8 row];
    if (v18 == 1)
    {
      v14 = [v7 dequeueReusableCellWithIdentifier:@"Date Picker" forIndexPath:v8];
      v31 = [v14 contentView];
      v32 = [v31 subviews];
      v33 = [v32 objectAtIndexedSubscript:0];

      [v33 _setAllowsZeroCountDownDuration:1];
      v34 = [(STIntroAppLimitsTableViewController *)self allowance];
      v35 = [v34 time];
      [STAllowance timeIntervalForAllowanceDateComponents:v35];
      [v33 setCountDownDuration:?];

      [v33 sendActionsForControlEvents:4096];
      goto LABEL_19;
    }

    v19 = v18;
    if (!v18)
    {
      v20 = [(STIntroAppLimitsTableViewController *)self allowance];
      v21 = [v20 time];
      [STAllowance timeIntervalForAllowanceDateComponents:v21];
      v23 = v22;

      v14 = [v7 dequeueReusableCellWithIdentifier:@"Has Set Time Amount" forIndexPath:v8];
      v15 = [(STIntroAppLimitsTableViewController *)self timeAmountFormatter];
      v16 = [v15 stringFromTimeInterval:v23];
      v17 = [v14 detailTextLabel];
      [v17 setText:v16];
      goto LABEL_10;
    }

    v24 = [MEMORY[0x277CCA890] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"STIntroAppLimitsTableViewController.m" lineNumber:168 description:{@"Unhandled App Limits Time Amount section row %ld", v19}];
LABEL_15:

    v14 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:0];
    goto LABEL_19;
  }

  v10 = v9;
  if (v9)
  {
    v24 = [MEMORY[0x277CCA890] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"STIntroAppLimitsTableViewController.m" lineNumber:174 description:{@"Unhandled App Limits table section %ld", v10}];
    goto LABEL_15;
  }

  v11 = [v8 row];
  if (!v11)
  {
    v14 = [v7 dequeueReusableCellWithIdentifier:@"Category" forIndexPath:v8];
    v25 = +[STScreenTimeSettingsUIBundle bundle];
    v26 = [v25 localizedStringForKey:@"AllAppsAndCategoriesSpecifierName" value:&stru_28766E5A8 table:0];
    v27 = [v14 textLabel];
    [v27 setText:v26];

    v28 = [MEMORY[0x277D4BD98] sharedCache];
    v29 = [v28 roundedImageForImageWithName:@"AllApps"];
    v30 = [v14 imageView];
    [v30 setImage:v29];
LABEL_17:

    v15 = objc_opt_new();
    v40 = [MEMORY[0x277D75348] clearColor];
    [v15 setBackgroundColor:v40];

    [v14 setMultipleSelectionBackgroundView:v15];
    goto LABEL_18;
  }

  v12 = v11;
  v13 = [(STIntroAppLimitsTableViewController *)self showingAllCategories];
  if (v12 < 3 || v13)
  {
    v14 = [v7 dequeueReusableCellWithIdentifier:@"Category" forIndexPath:v8];
    v36 = STSortedCategoriesForUsageLimits();
    v28 = [v36 objectAtIndexedSubscript:v12 - 1];

    v29 = STCategoryNameWithIdentifier();
    v37 = [v14 textLabel];
    [v37 setText:v29];

    v30 = [MEMORY[0x277D4BD98] sharedCache];
    v38 = [v30 imageForCategoryIdentifier:v28];
    v39 = [v14 imageView];
    [v39 setImage:v38];

    goto LABEL_17;
  }

  v14 = [v7 dequeueReusableCellWithIdentifier:@"Show All Categories" forIndexPath:v8];
  v15 = [MEMORY[0x277D4BD98] sharedCache];
  v16 = [v15 blankSpaceImageWithSize:{29.0, 29.0}];
  v17 = [v14 imageView];
  [v17 setImage:v16];
LABEL_10:

LABEL_18:
LABEL_19:

  return v14;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 section];
  if (v8 == 1)
  {
    if (![v7 row])
    {
      [(STIntroAppLimitsTableViewController *)self setShowingDatePicker:[(STIntroAppLimitsTableViewController *)self showingDatePicker]^ 1];
      v10 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndex:1];
      [v6 reloadSections:v10 withRowAnimation:100];
    }
  }

  else if (!v8)
  {
    if (-[STIntroAppLimitsTableViewController showingAllCategories](self, "showingAllCategories") || [v7 row] != 3)
    {
      if ([v7 row])
      {
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v9 = [v6 indexPathsForSelectedRows];
        v11 = [v9 countByEnumeratingWithState:&v18 objects:v27 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v19;
          while (2)
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v19 != v13)
              {
                objc_enumerationMutation(v9);
              }

              v15 = *(*(&v18 + 1) + 8 * i);
              if (![v15 section] && !objc_msgSend(v15, "row"))
              {
                [v6 deselectRowAtIndexPath:v15 animated:1];
                goto LABEL_21;
              }
            }

            v12 = [v9 countByEnumeratingWithState:&v18 objects:v27 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }
      }

      else
      {
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __73__STIntroAppLimitsTableViewController_tableView_didSelectRowAtIndexPath___block_invoke_2;
        v22[3] = &unk_279B7CAE0;
        v23 = v6;
        v24 = v7;
        [v23 performBatchUpdates:v22 completion:0];

        v9 = v23;
      }
    }

    else
    {
      [(STIntroAppLimitsTableViewController *)self setShowingAllCategories:1];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __73__STIntroAppLimitsTableViewController_tableView_didSelectRowAtIndexPath___block_invoke;
      v25[3] = &unk_279B7C998;
      v26 = v6;
      [v26 performBatchUpdates:v25 completion:0];
      v9 = v26;
    }

LABEL_21:

    v16 = [(STIntroAppLimitsTableViewController *)self _selectedCategories];
    v17 = [(STIntroAppLimitsTableViewController *)self allowance];
    [v17 setCategoryIdentifiers:v16];
  }
}

void __73__STIntroAppLimitsTableViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAA70] indexPathForRow:3 inSection:0];
  v3 = *(a1 + 32);
  v11[0] = v2;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  [v3 deleteRowsAtIndexPaths:v4 withRowAnimation:5];

  v5 = objc_opt_new();
  v6 = STSortedCategoriesForUsageLimits();
  v7 = [v6 count];

  if ((v7 - 0x7FFFFFFFFFFFFFFFLL) <= 2)
  {
    __73__STIntroAppLimitsTableViewController_tableView_didSelectRowAtIndexPath___block_invoke_cold_1(v7);
  }

  else if (v7 >= 3)
  {
    v8 = v7 - 2;
    v9 = 3;
    do
    {
      v10 = [MEMORY[0x277CCAA70] indexPathForRow:v9 inSection:0];
      [v5 addObject:v10];

      ++v9;
      --v8;
    }

    while (v8);
  }

  [*(a1 + 32) insertRowsAtIndexPaths:v5 withRowAnimation:5];
}

void __73__STIntroAppLimitsTableViewController_tableView_didSelectRowAtIndexPath___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) indexPathsForSelectedRows];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        if (([v7 isEqual:*(a1 + 40)] & 1) == 0)
        {
          [*(a1 + 32) deselectRowAtIndexPath:v7 animated:1];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4
{
  v13 = a3;
  v6 = [a4 section];
  v7 = v13;
  if (!v6)
  {
    v8 = [v13 indexPathsForSelectedRows];
    v9 = [v8 count];

    if (!v9)
    {
      v10 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:0];
      [v13 selectRowAtIndexPath:v10 animated:1 scrollPosition:0];
    }

    v11 = [(STIntroAppLimitsTableViewController *)self _selectedCategories];
    v12 = [(STIntroAppLimitsTableViewController *)self allowance];
    [v12 setCategoryIdentifiers:v11];

    v7 = v13;
  }

  MEMORY[0x2821F96F8](v6, v7);
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v5 = a4;
  if ([v5 section] || !-[STIntroAppLimitsTableViewController showingAllCategories](self, "showingAllCategories") && objc_msgSend(v5, "row") == 3)
  {
    v6 = 0;
  }

  else
  {
    v6 = 3;
  }

  return v6;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v4 = a4;
  if ([v4 section] == 1)
  {
    if ([v4 row] == 1)
    {
      v5 = *MEMORY[0x277D76F30];
    }

    else
    {
      v5 = 61.0;
    }
  }

  else
  {
    v5 = 61.0;
  }

  return v5;
}

- (id)_selectedCategories
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = STSortedCategoriesForUsageLimits();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [(STIntroAppLimitsTableViewController *)self tableView];
  v5 = [v4 indexPathsForSelectedRows];

  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        if (![v11 section])
        {
          v12 = [v11 row];
          if (!v12)
          {

            goto LABEL_16;
          }

          v13 = [v3 objectAtIndexedSubscript:v12 - 1];
          if (v8)
          {
            [v8 addObject:v13];
          }

          else
          {
            v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v13, 0}];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
LABEL_16:
    v8 = 0;
  }

  if (v8)
  {
    v14 = v8;
  }

  else
  {
    v14 = v3;
  }

  v15 = v14;

  return v14;
}

- (void)_datePickerChanged:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  [a3 countDownDuration];
  v4 = [STAllowance dateComponentsForDuration:?];
  v5 = [(STIntroAppLimitsTableViewController *)self allowance];
  [v5 setTime:v4];

  v6 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:1];
  v7 = [(STIntroAppLimitsTableViewController *)self tableView];
  v9[0] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [v7 reloadRowsAtIndexPaths:v8 withRowAnimation:100];
}

- (void)tableView:(uint64_t)a3 numberOfRowsInSection:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"STIntroAppLimitsTableViewController.m" lineNumber:106 description:{@"number of rows overflowed %lu", a3}];
}

void __73__STIntroAppLimitsTableViewController_tableView_didSelectRowAtIndexPath___block_invoke_cold_1(uint64_t a1)
{
  v1 = a1 - 2;
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[STIntroAppLimitsTableViewController tableView:didSelectRowAtIndexPath:]_block_invoke"];
  [v2 handleFailureInFunction:v3 file:@"STIntroAppLimitsTableViewController.m" lineNumber:197 description:{@"indexOffset (%lu) + numberOfRowsToAdd (%lu) will overflow", 3, v1}];
}

@end