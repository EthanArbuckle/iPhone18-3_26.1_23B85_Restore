@interface SSMultiSIMResultViewController
- (SSMultiSIMResultViewController)initWithPlanInfos:(id)a3;
- (TSSIMSetupFlowDelegate)delegate;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_continueButtonTapped;
- (void)prepare:(id)a3;
- (void)pushTimeoutFailureViewControllerWithStatus:(unint64_t)a3 forPlan:(id)a4;
- (void)pushToDetailViewControllerWithError:(id)a3 forPlan:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation SSMultiSIMResultViewController

- (SSMultiSIMResultViewController)initWithPlanInfos:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  obj = a3;
  v3 = a3;
  v4 = [v3 count];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = *v37;
    do
    {
      v12 = 0;
      do
      {
        if (*v37 != v11)
        {
          objc_enumerationMutation(v5);
        }

        v13 = [*(*(&v36 + 1) + 8 * v12) status];
        if (v13 == 4 || v13 == 14 || v13 == 10004 || v13 == 10003)
        {
          ++v10;
        }

        else if (v13 == 5)
        {
          ++v9;
        }

        else
        {
          ++v8;
        }

        ++v12;
      }

      while (v7 != v12);
      v17 = [v5 countByEnumeratingWithState:&v36 objects:v40 count:16];
      v7 = v17;
    }

    while (v17);
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
  }

  if (v10 == v4)
  {
    v18 = self;
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"MULTISIM_RESULT_TITLE" value:&stru_28753DF48 table:@"Localizable"];

    v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v22 = v21;
    v23 = @"MULTISIM_RESULT_DETAIL_ALL_SUCCESS";
  }

  else
  {
    v18 = self;
    if (v9 == v4)
    {
      v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = [v24 localizedStringForKey:@"MULTISIM_RESULT_ALL_FAILURE_TITLE" value:&stru_28753DF48 table:@"Localizable"];

      v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v22 = v21;
      v23 = @"MULTISIM_RESULT_ALL_FAILURE_DETAIL";
    }

    else
    {
      v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v26 = v25;
      if (v9)
      {
        v20 = [v25 localizedStringForKey:@"MULTISIM_RESULT_TITLE" value:&stru_28753DF48 table:@"Localizable"];

        v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        if (v8)
        {
          v23 = @"MULTISIM_RESULT_SOME_FAILURE_SOME_PENDING_DETAIL";
        }

        else
        {
          v23 = @"MULTISIM_RESULT_SOME_FAILURE_DETAIL";
        }
      }

      else
      {
        v20 = [v25 localizedStringForKey:@"MULTISIM_RESULT_PENDING_TITLE" value:&stru_28753DF48 table:@"Localizable"];

        v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        if (v8 == v4)
        {
          v23 = @"MULTISIM_RESULT_ALL_PENDING_DETAIL";
        }

        else
        {
          v23 = @"MULTISIM_RESULT_SOME_PENDING_DETAIL";
        }
      }

      v21 = v22;
    }
  }

  v27 = [v21 localizedStringForKey:v23 value:&stru_28753DF48 table:{@"Localizable", obj}];

  v35.receiver = v18;
  v35.super_class = SSMultiSIMResultViewController;
  v28 = [(OBTableWelcomeController *)&v35 initWithTitle:v20 detailText:v27 symbolName:@"antenna.radiowaves.left.and.right" adoptTableViewScrollView:1];
  v29 = v28;
  if (v28)
  {
    objc_storeStrong(&v28->_infos, obja);
  }

  v30 = *MEMORY[0x277D85DE8];
  return v29;
}

- (void)viewDidLoad
{
  v25.receiver = self;
  v25.super_class = SSMultiSIMResultViewController;
  [(TSOBTableWelcomeController *)&v25 viewDidLoad];
  v3 = [(SSMultiSIMResultViewController *)self navigationController];
  v4 = [v3 navigationItem];
  [v4 setHidesBackButton:1];

  v5 = +[SSOBBoldTrayButton boldButton];
  [v5 addTarget:self action:sel__continueButtonTapped forControlEvents:64];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"CONTINUE" value:&stru_28753DF48 table:@"Localizable"];
  [v5 setTitle:v7 forState:0];

  [v5 setEnabled:1];
  v8 = [(SSMultiSIMResultViewController *)self buttonTray];
  [v8 addButton:v5];

  v9 = objc_alloc(MEMORY[0x277D75B40]);
  v10 = [v9 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(OBTableWelcomeController *)self setTableView:v10];

  v11 = [(OBTableWelcomeController *)self tableView];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

  v12 = [(OBTableWelcomeController *)self tableView];
  [v12 setRowHeight:*MEMORY[0x277D76F30]];

  v13 = [(OBTableWelcomeController *)self tableView];
  [v13 setEstimatedRowHeight:1.0];

  v14 = [(OBTableWelcomeController *)self tableView];
  [v14 setAllowsMultipleSelection:0];

  v15 = [(OBTableWelcomeController *)self tableView];
  [v15 setScrollEnabled:1];

  v16 = [(OBTableWelcomeController *)self tableView];
  [v16 setShowsVerticalScrollIndicator:0];

  v17 = [(OBTableWelcomeController *)self tableView];
  v18 = [MEMORY[0x277D75348] clearColor];
  [v17 setBackgroundColor:v18];

  v19 = [(OBTableWelcomeController *)self tableView];
  v20 = [MEMORY[0x277D75348] lightGrayColor];
  [v19 setSeparatorColor:v20];

  v21 = [(OBTableWelcomeController *)self tableView];
  [v21 setDataSource:self];

  v22 = [(OBTableWelcomeController *)self tableView];
  [v22 setDelegate:self];

  v23 = [(OBTableWelcomeController *)self tableView];
  [v23 reloadData];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained setCancelNavigationBarItems:self];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x277CCACA8];
  v8 = a3;
  v9 = [v7 stringWithFormat:@"plan%ld", objc_msgSend(v6, "row")];
  v10 = [v8 dequeueReusableCellWithIdentifier:v9];

  if (!v10)
  {
    v10 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:3 reuseIdentifier:v9];
  }

  v11 = [v6 row];
  if (v11 < [(NSArray *)self->_infos count])
  {
    v12 = [(NSArray *)self->_infos objectAtIndexedSubscript:v11];
    v13 = [v10 defaultContentConfiguration];
    v14 = [v12 displayPlan];
    if (+[TSUtilities isPhone](TSUtilities, "isPhone") && ([v14 phoneNumber], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "length"), v15, v16))
    {
      v17 = [v14 phoneNumber];
      v18 = [v17 formattedPhoneNumber];
    }

    else
    {
      v21 = [v14 carrierName];
      v22 = [v21 length];

      if (v22)
      {
        v17 = [v14 carrierName];
        [v13 setText:v17];
        goto LABEL_14;
      }

      v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v18 = [v17 localizedStringForKey:@"NEW_CELLULAR_PLAN_NO_CARRIER_TITLE" value:&stru_28753DF48 table:@"Localizable"];
    }

    v23 = v18;
    [v13 setText:v18];

LABEL_14:
    v24 = [v12 status];
    if (isSuccessState(v24))
    {
      v25 = [v12 planItem];
      if (v25 && (v26 = v25, [v12 planItem], v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "isSelected"), v27, v26, (v28 & 1) != 0))
      {
        v29 = @"READY";
      }

      else
      {
        v29 = @"AVAILABLE";
      }

      v36 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v37 = [v36 localizedStringForKey:v29 value:&stru_28753DF48 table:@"Localizable"];
      [v13 setSecondaryText:v37];

      [v10 setSelectionStyle:0];
      goto LABEL_34;
    }

    if (v24 != 5)
    {
      v38 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v39 = [v38 localizedStringForKey:@"MULTISIM_RESULT_PENDING" value:&stru_28753DF48 table:@"Localizable"];
      [v13 setSecondaryText:v39];

      [v10 setAccessoryType:1];
LABEL_34:
      v57 = [MEMORY[0x277D75348] lightGrayColor];
      v58 = [v13 secondaryTextProperties];
      [v58 setColor:v57];

      v59 = MEMORY[0x277D755B8];
      v60 = [v12 imageName];
      v61 = [v59 systemImageNamed:v60];
      [v13 setImage:v61];

      [v10 setContentConfiguration:v13];
      v62 = [v10 contentView];
      [v62 setLayoutMargins:{10.0, 0.0, 10.0, 0.0}];

      v20 = v10;
      goto LABEL_35;
    }

    v30 = [v12 installError];
    v31 = [TSUtilities getErrorDescription:v30];
    [v13 setSecondaryText:v31];

    v32 = [v13 secondaryText];
    v33 = [v32 length];

    if (v33)
    {
LABEL_30:
      v64 = [MEMORY[0x277D755B8] systemImageNamed:@"chevron.forward"];
      v42 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v64];
      v43 = [MEMORY[0x277D75348] systemLightGrayColor];
      [v42 setTintColor:v43];

      v44 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.triangle.fill"];
      v45 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v44];
      v46 = [MEMORY[0x277D75348] systemYellowColor];
      [v45 setTintColor:v46];

      [v42 bounds];
      v48 = v47;
      [v45 bounds];
      v50 = v48 + v49 + 2.0;
      [v42 bounds];
      v52 = v51;
      [v45 bounds];
      if (v52 <= v53)
      {
        v54 = v45;
      }

      else
      {
        v54 = v42;
      }

      [v54 bounds];
      v56 = [objc_alloc(MEMORY[0x277D75A68]) initWithFrame:{0.0, 0.0, v50, v55}];
      [v56 setSpacing:2.0];
      [v56 addArrangedSubview:v45];
      [v56 addArrangedSubview:v42];
      [v56 setAxis:0];
      [v56 setAlignment:3];
      [v10 setAccessoryView:v56];

      goto LABEL_34;
    }

    if (v14)
    {
      v34 = [v14 plan];
      if (v34)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v35 = @"TRANSFER_FAILED";
LABEL_29:
          v40 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v41 = [v40 localizedStringForKey:v35 value:&stru_28753DF48 table:@"Localizable"];
          [v13 setSecondaryText:v41];

          goto LABEL_30;
        }
      }
    }

    else
    {
      v34 = 0;
    }

    v35 = @"SETUP_FAILED";
    goto LABEL_29;
  }

  v19 = _TSLogDomain();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    [SSMultiSIMResultViewController tableView:cellForRowAtIndexPath:];
  }

  v20 = 0;
LABEL_35:

  return v20;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 row];
  if (v8 >= [(NSArray *)self->_infos count])
  {
    v13 = _TSLogDomain();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SSMultiSIMResultViewController tableView:didSelectRowAtIndexPath:];
    }
  }

  else
  {
    v9 = [(NSArray *)self->_infos objectAtIndexedSubscript:v8];
    v10 = [v9 status];
    [v6 deselectRowAtIndexPath:v7 animated:1];
    if (v10 != 4 && v10 != 14)
    {
      if (v10 == 5)
      {
        v12 = [v9 installError];
        [(SSMultiSIMResultViewController *)self pushToDetailViewControllerWithError:v12 forPlan:v9];
      }

      else if (v10 != 10004 && v10 != 10003)
      {
        [(SSMultiSIMResultViewController *)self pushTimeoutFailureViewControllerWithStatus:v10 forPlan:v9];
      }
    }
  }
}

- (void)pushToDetailViewControllerWithError:(id)a3 forPlan:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v8 = _TSLogDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SSMultiSIMResultViewController pushToDetailViewControllerWithError:v7 forPlan:v8];
    }
  }

  v9 = [v7 websheetUrl];
  v10 = [v9 length];

  if (v10)
  {
    v11 = [[TSWebsheetViewController alloc] initForRemotePlan:0 carrierName:0 skipUIDismissal:0];
    v12 = MEMORY[0x277CBEBC0];
    v13 = [v7 websheetUrl];
    v14 = [v12 URLWithString:v13];
    v15 = [v7 postdata];
    v16 = [TSURLRequestFactory requestWithType:3 URL:v14 postdata:v15];

    [(TSMidOperationFailureViewController *)v11 loadRequest:v16 completion:0];
  }

  else
  {
    v17 = [TSMidOperationFailureViewController alloc];
    v16 = [v7 carrierName];
    v18 = [v7 carrierErrorCode];
    v11 = [(TSMidOperationFailureViewController *)v17 initWithPlanItemError:v6 updatePlanItem:0 withBackButton:1 forCarrier:v16 withCarrierErrorCode:v18 isEmbeddedInResultView:1];
  }

  v19 = [(SSMultiSIMResultViewController *)self navigationController];
  [v19 pushViewController:v11 animated:1];
}

- (void)pushTimeoutFailureViewControllerWithStatus:(unint64_t)a3 forPlan:(id)a4
{
  v24[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (a3 == 10001)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  v8 = [TSCellularSetupTimeoutFailureViewController alloc];
  v24[0] = v6;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  v10 = [(TSCellularSetupTimeoutFailureViewController *)v8 initWithTimeoutReason:v7 isEmbeddedInResultView:1 plans:v9];

  v11 = _TSLogDomain();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = [v6 identifier];
    v16 = 138413058;
    v17 = v12;
    v18 = 2112;
    v19 = v13;
    v20 = 2080;
    v21 = SSPlanTransferStatusAsString(a3);
    v22 = 2080;
    v23 = "[SSMultiSIMResultViewController pushTimeoutFailureViewControllerWithStatus:forPlan:]";
    _os_log_impl(&dword_262AA8000, v11, OS_LOG_TYPE_DEFAULT, "push %@ for %@ with status : %s @%s", &v16, 0x2Au);
  }

  v14 = [(SSMultiSIMResultViewController *)self navigationController];
  [v14 pushViewController:v10 animated:1];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_continueButtonTapped
{
  v3 = [(SSMultiSIMResultViewController *)self buttonTray];
  [v3 showButtonsBusy];

  v4 = [(SSMultiSIMResultViewController *)self delegate];
  [v4 viewControllerDidComplete:self];
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)prepare:(id)a3
{
  infos = self->_infos;
  v4 = a3;
  v4[2](v4, [(NSArray *)infos count]> 1);
}

- (void)tableView:cellForRowAtIndexPath:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = "[SSMultiSIMResultViewController tableView:cellForRowAtIndexPath:]";
  _os_log_error_impl(&dword_262AA8000, v0, OS_LOG_TYPE_ERROR, "[E]Invalid indexPath: %@ @%s", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)tableView:didSelectRowAtIndexPath:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = "[SSMultiSIMResultViewController tableView:didSelectRowAtIndexPath:]";
  _os_log_error_impl(&dword_262AA8000, v0, OS_LOG_TYPE_ERROR, "[E]Invalid indexPath: %@ @%s", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)pushToDetailViewControllerWithError:(void *)a1 forPlan:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 identifier];
  OUTLINED_FUNCTION_0();
  v6 = "[SSMultiSIMResultViewController pushToDetailViewControllerWithError:forPlan:]";
  _os_log_error_impl(&dword_262AA8000, a2, OS_LOG_TYPE_ERROR, "[E]no error for %@, showing generic error message. @%s", v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

@end