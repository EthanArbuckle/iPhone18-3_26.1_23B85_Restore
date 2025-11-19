@interface SSCrossPlatformTransferSourceSelectionViewController
- (SSCrossPlatformTransferSourceSelectionViewController)initWithPlans:(id)a3 planItems:(id)a4 fromDataTransferSession:(BOOL)a5;
- (TSSIMSetupFlowDelegate)delegate;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_cancelButtonTapped;
- (void)_continueButtonTapped:(id)a3;
- (void)_laterButtonTapped;
- (void)_preselectPlanIfNeeded;
- (void)_skipButtonTapped;
- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation SSCrossPlatformTransferSourceSelectionViewController

- (SSCrossPlatformTransferSourceSelectionViewController)initWithPlans:(id)a3 planItems:(id)a4 fromDataTransferSession:(BOOL)a5
{
  v23 = a3;
  v8 = a4;
  v9 = MEMORY[0x277CCACA8];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"CROSSPLATFORM_TRANSFER_SELECTION_DETAIL_SOURCE" value:&stru_28753DF48 table:@"Localizable"];
  v12 = [v9 stringWithFormat:v11];

  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"CROSSPLATFORM_TRANSFER_TITLE" value:&stru_28753DF48 table:@"Localizable"];
  v24.receiver = self;
  v24.super_class = SSCrossPlatformTransferSourceSelectionViewController;
  v15 = [(OBTableWelcomeController *)&v24 initWithTitle:v14 detailText:v12 symbolName:@"antenna.radiowaves.left.and.right" adoptTableViewScrollView:1];

  if (v15)
  {
    objc_storeStrong(&v15->_plans, a3);
    objc_storeStrong(&v15->_planItems, a4);
    v16 = objc_alloc(MEMORY[0x277CC37B0]);
    v17 = [v16 initWithQueue:MEMORY[0x277D85CD0]];
    client = v15->_client;
    v15->_client = v17;

    [(CoreTelephonyClient *)v15->_client setDelegate:v15];
    v19 = objc_opt_new();
    selectedPlans = v15->_selectedPlans;
    v15->_selectedPlans = v19;

    v15->_fromDataTransferSession = a5;
  }

  return v15;
}

- (void)viewDidLoad
{
  v35.receiver = self;
  v35.super_class = SSCrossPlatformTransferSourceSelectionViewController;
  [(TSOBTableWelcomeController *)&v35 viewDidLoad];
  v3 = +[SSOBBoldTrayButton boldButton];
  continueButton = self->_continueButton;
  self->_continueButton = v3;

  [(SSOBBoldTrayButton *)self->_continueButton addTarget:self action:sel__continueButtonTapped_ forControlEvents:64];
  [(OBBoldTrayButton *)self->_continueButton setEnabled:0];
  v5 = self->_continueButton;
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"CONTINUE" value:&stru_28753DF48 table:@"Localizable"];
  [(SSOBBoldTrayButton *)v5 setTitle:v7 forState:0];

  v8 = [(SSCrossPlatformTransferSourceSelectionViewController *)self buttonTray];
  [v8 addButton:self->_continueButton];

  if (self->_fromDataTransferSession)
  {
    v9 = [MEMORY[0x277D37650] linkButton];
    laterButton = self->_laterButton;
    self->_laterButton = v9;

    v11 = self->_laterButton;
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"SKIP" value:&stru_28753DF48 table:@"Localizable"];
    [(OBLinkTrayButton *)v11 setTitle:v13 forState:0];

    [(OBLinkTrayButton *)self->_laterButton addTarget:self action:sel__laterButtonTapped forControlEvents:64];
    v14 = [(SSCrossPlatformTransferSourceSelectionViewController *)self buttonTray];
    [v14 addButton:self->_laterButton];

    [(OBLinkTrayButton *)self->_laterButton setEnabled:1];
    v15 = [(SSCrossPlatformTransferSourceSelectionViewController *)self buttonTray];
    [v15 addButton:self->_laterButton];
  }

  v16 = objc_alloc(MEMORY[0x277D75B40]);
  v17 = [v16 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(OBTableWelcomeController *)self setTableView:v17];

  v18 = [(OBTableWelcomeController *)self tableView];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];

  v19 = [(OBTableWelcomeController *)self tableView];
  [v19 setRowHeight:*MEMORY[0x277D76F30]];

  v20 = [(OBTableWelcomeController *)self tableView];
  [v20 setEstimatedRowHeight:1.0];

  v21 = [(OBTableWelcomeController *)self tableView];
  [v21 setAllowsMultipleSelection:0];

  v22 = [(OBTableWelcomeController *)self tableView];
  [v22 setScrollEnabled:1];

  v23 = [(OBTableWelcomeController *)self tableView];
  [v23 setShowsVerticalScrollIndicator:0];

  v24 = [(OBTableWelcomeController *)self tableView];
  v25 = [MEMORY[0x277D75348] clearColor];
  [v24 setBackgroundColor:v25];

  v26 = [(OBTableWelcomeController *)self tableView];
  [v26 setDataSource:self];

  v27 = [(OBTableWelcomeController *)self tableView];
  [v27 setDelegate:self];

  v28 = [(OBTableWelcomeController *)self tableView];
  [v28 reloadData];

  v29 = [(SSCrossPlatformTransferSourceSelectionViewController *)self navigationController];
  v30 = [v29 navigationItem];
  [v30 setHidesBackButton:1];

  v31 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancelButtonTapped];
  if (+[TSUtilities isPad])
  {
    v32 = [(OBBaseWelcomeController *)self navigationItem];
    [v32 setRightBarButtonItem:v31];
  }

  else
  {
    fromDataTransferSession = self->_fromDataTransferSession;
    v34 = [(OBBaseWelcomeController *)self navigationItem];
    v32 = v34;
    if (fromDataTransferSession)
    {
      [v34 setHidesBackButton:1 animated:0];
    }

    else
    {
      [v34 setLeftBarButtonItem:v31];
    }
  }
}

- (void)viewDidLayoutSubviews
{
  v3 = [(SSCrossPlatformTransferSourceSelectionViewController *)self view];
  [v3 layoutIfNeeded];

  v4.receiver = self;
  v4.super_class = SSCrossPlatformTransferSourceSelectionViewController;
  [(OBTableWelcomeController *)&v4 viewDidLayoutSubviews];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v57 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [[TSCellularPlanItemCell alloc] initWithStyle:0 reuseIdentifier:@"device"];
  [(TSCellularPlanItemCell *)v6 setSelectedBackgroundView:0];
  [(TSCellularPlanItemCell *)v6 setSelectionStyle:0];
  v7 = [(OBTableWelcomeController *)self tableView];
  v8 = [v7 indexPathsForSelectedRows];
  v9 = [v8 containsObject:v5];

  if (v9)
  {
    [(TSCellularPlanItemCell *)v6 setAccessoryType:3];
  }

  v10 = v5;
  v11 = -[NSArray objectAtIndex:](self->_plans, "objectAtIndex:", [v5 row]);
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v12 = self->_planItems;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v53;
LABEL_5:
    v16 = 0;
    while (1)
    {
      if (*v53 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v17 = *(*(&v52 + 1) + 8 * v16);
      v18 = [v17 iccid];
      v19 = [v11 isPlanWithIccid:v18];

      if (v19)
      {
        break;
      }

      if (v14 == ++v16)
      {
        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v52 objects:v56 count:16];
        if (v14)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }

    v20 = [v17 isSelected];
    v22 = [v17 supportedTransferOption];

    if (v20)
    {
      v23 = (v22 & 4) == 0;
    }

    else
    {
      v23 = 1;
    }

    if (!v23)
    {
      v24 = 0;
      v25 = 0;
      goto LABEL_19;
    }

    v21 = (v22 >> 2) & 1;
  }

  else
  {
LABEL_11:

    v20 = 0;
    LODWORD(v21) = 0;
  }

  [(TSCellularPlanItemCell *)v6 setDisable];
  v24 = v20 ^ 1;
  v25 = v21 ^ 1;
LABEL_19:
  v26 = [v11 phoneNumber];
  v27 = [v26 formattedPhoneNumber];

  -[TSCellularPlanItemCell setIcon:](v6, "setIcon:", [v11 isPhysical]);
  v28 = v10;
  if ([v27 length] && !+[TSUtilities isPad](TSUtilities, "isPad"))
  {
    v29 = [(TSCellularPlanItemCell *)v6 title];
    [v29 setText:v27];
  }

  else
  {
    v29 = [v11 carrierName];
    if ([v29 length])
    {
      v30 = [(TSCellularPlanItemCell *)v6 title];
      [v30 setText:v29];
    }

    else
    {
      v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      [v30 localizedStringForKey:@"TRANSFER_PLAN_ITEM_TITLE_NO_PHONENUMBER" value:&stru_28753DF48 table:@"Localizable"];
      v32 = v31 = v25;
      v33 = [(TSCellularPlanItemCell *)v6 title];
      [v33 setText:v32];

      v25 = v31;
    }
  }

  v34 = [v11 label];
  v35 = [v11 transferCapability];
  if (v35 <= 7)
  {
    if (v35 > 2)
    {
      if ((v35 - 5) < 3 || v35 == 3)
      {
        v42 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        [v42 localizedStringForKey:@"TRANSFER_PLAN_ITEM_DETAIL_ALREADY_TRANSFERRED" value:&stru_28753DF48 table:@"Localizable"];
        v44 = v43 = v25;
        v45 = [(TSCellularPlanItemCell *)v6 planInfo];
        [v45 setText:v44];

        v25 = v43;
        [(TSCellularPlanItemCell *)v6 setAccessoryType:3];
        v37 = [MEMORY[0x277D75348] grayColor];
        [(TSCellularPlanItemCell *)v6 setTintColor:v37];
        goto LABEL_44;
      }

      if (v35 == 4)
      {
        goto LABEL_41;
      }
    }

    else
    {
      switch(v35)
      {
        case 0:
          goto LABEL_41;
        case 1:
LABEL_29:
          v36 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v37 = v36;
          v38 = @"TRANSFER_PLAN_ITEM_DETAIL_NOT_SUPPORTED";
LABEL_30:
          [v36 localizedStringForKey:v38 value:&stru_28753DF48 table:@"Localizable"];
          v40 = v39 = v25;
          v41 = [(TSCellularPlanItemCell *)v6 planInfo];
          [v41 setText:v40];

          v25 = v39;
LABEL_44:

          break;
        case 2:
LABEL_41:
          if (![v34 length])
          {
            break;
          }

          v37 = [(TSCellularPlanItemCell *)v6 planInfo];
          [v37 setText:v34];
          goto LABEL_44;
      }
    }
  }

  else
  {
    if (v35 > 0x14)
    {
      goto LABEL_45;
    }

    if (((1 << v35) & 0x1FF200) != 0)
    {
      goto LABEL_29;
    }

    if (((1 << v35) & 0x900) != 0)
    {
      goto LABEL_41;
    }

    if (v35 == 10)
    {
      v36 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v37 = v36;
      v38 = @"TRANSFER_PLAN_ITEM_DETAIL_UNAVAILABLE";
      goto LABEL_30;
    }
  }

LABEL_45:
  if ((v24 | v25))
  {
    if (v24)
    {
      v46 = @"CROSSPLATFORM_TRANSFER_ENABLE_IT";
    }

    else
    {
      v46 = @"CROSSPLATFORM_TRANSFER_NOT_SUPPORTED";
    }

    v47 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v48 = [v47 localizedStringForKey:v46 value:&stru_28753DF48 table:@"Localizable"];
    v49 = [(TSCellularPlanItemCell *)v6 planInfo];
    [v49 setText:v48];
  }

  v50 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  continueButton = self->_continueButton;
  v7 = a4;
  v8 = a3;
  [(OBBoldTrayButton *)continueButton setEnabled:1];
  [(SSOBBoldTrayButton *)self->_continueButton setUserInteractionEnabled:1];
  v9 = [v8 cellForRowAtIndexPath:v7];

  [v9 setAccessoryType:3];
}

- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [v10 indexPathsForSelectedRows];
  v8 = [v7 count];

  if (!v8)
  {
    [(OBBoldTrayButton *)self->_continueButton setEnabled:0];
    [(SSOBBoldTrayButton *)self->_continueButton setUserInteractionEnabled:0];
  }

  v9 = [v10 cellForRowAtIndexPath:v6];
  [v9 setAccessoryType:0];
}

- (void)_continueButtonTapped:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(OBTableWelcomeController *)self tableView];
  v6 = [v5 indexPathsForSelectedRows];

  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = -[NSArray objectAtIndexedSubscript:](self->_plans, "objectAtIndexedSubscript:", [*(*(&v16 + 1) + 8 * v10) row]);
        v12 = [v11 plan];
        [v4 addObject:v12];

        [(NSArray *)self->_selectedPlans addObject:v11];
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  [(CoreTelephonyClient *)self->_client selectTransferPlans:v4 completion:&__block_literal_global_19];
  v13 = [(OBTableWelcomeController *)self tableView];
  [v13 setUserInteractionEnabled:0];

  [(OBBoldTrayButton *)self->_continueButton setEnabled:0];
  [(SSOBBoldTrayButton *)self->_continueButton setUserInteractionEnabled:0];
  [(OBWelcomeController *)self _showButtonTraySpinnerWithBusyText:&stru_28753DF48];
  if ([v4 count] <= 1)
  {
    v14 = [(SSCrossPlatformTransferSourceSelectionViewController *)self delegate];
    [v14 viewControllerDidComplete:self];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __78__SSCrossPlatformTransferSourceSelectionViewController__continueButtonTapped___block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v2 = _TSLogDomain();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __78__SSCrossPlatformTransferSourceSelectionViewController__continueButtonTapped___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (void)_skipButtonTapped
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = _TSLogDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SSCrossPlatformTransferSourceSelectionViewController _skipButtonTapped]";
    _os_log_impl(&dword_262AA8000, v3, OS_LOG_TYPE_DEFAULT, "skip button tapped, cancel the flow, send empty selection @%s", &v6, 0xCu);
  }

  v4 = objc_opt_new();
  [(CoreTelephonyClient *)self->_client selectTransferPlans:v4 completion:&__block_literal_global_85_0];

  v5 = *MEMORY[0x277D85DE8];
}

void __73__SSCrossPlatformTransferSourceSelectionViewController__skipButtonTapped__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = _TSLogDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __73__SSCrossPlatformTransferSourceSelectionViewController__skipButtonTapped__block_invoke_cold_1();
    }
  }
}

- (void)_cancelButtonTapped
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = _TSLogDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[SSCrossPlatformTransferSourceSelectionViewController _cancelButtonTapped]";
    _os_log_impl(&dword_262AA8000, v3, OS_LOG_TYPE_DEFAULT, "cancel button tapped, cancel the flow, send empty selection @%s", &v7, 0xCu);
  }

  v4 = objc_opt_new();
  [(CoreTelephonyClient *)self->_client selectTransferPlans:v4 completion:&__block_literal_global_87];
  v5 = [(SSCrossPlatformTransferSourceSelectionViewController *)self delegate];
  [v5 viewControllerDidComplete:self];

  v6 = *MEMORY[0x277D85DE8];
}

void __75__SSCrossPlatformTransferSourceSelectionViewController__cancelButtonTapped__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = _TSLogDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __75__SSCrossPlatformTransferSourceSelectionViewController__cancelButtonTapped__block_invoke_cold_1();
    }
  }
}

- (void)_laterButtonTapped
{
  if (self->_fromDataTransferSession)
  {
    [(SSCrossPlatformTransferSourceSelectionViewController *)self _skipButtonTapped];
  }
}

- (void)_preselectPlanIfNeeded
{
  v6 = [(NSArray *)self->_planItems indexesOfObjectsPassingTest:&__block_literal_global_90];
  if ([v6 count])
  {
    v3 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:0];
    v4 = [(OBTableWelcomeController *)self tableView];
    [v4 selectRowAtIndexPath:v3 animated:0 scrollPosition:0];

    v5 = [(OBTableWelcomeController *)self tableView];
    [(SSCrossPlatformTransferSourceSelectionViewController *)self tableView:v5 didSelectRowAtIndexPath:v3];
  }
}

unint64_t __78__SSCrossPlatformTransferSourceSelectionViewController__preselectPlanIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isSelected])
  {
    v3 = ([v2 supportedTransferOption] >> 2) & 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __78__SSCrossPlatformTransferSourceSelectionViewController__continueButtonTapped___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_2(&dword_262AA8000, a1, a3, "[E]select tranasfer plans failed : %@ @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __73__SSCrossPlatformTransferSourceSelectionViewController__skipButtonTapped__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_2(&dword_262AA8000, v0, v1, "[E]select tranasfer plans failed : %@ @%s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __75__SSCrossPlatformTransferSourceSelectionViewController__cancelButtonTapped__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_2(&dword_262AA8000, v0, v1, "[E]select tranasfer plans failed : %@ @%s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end