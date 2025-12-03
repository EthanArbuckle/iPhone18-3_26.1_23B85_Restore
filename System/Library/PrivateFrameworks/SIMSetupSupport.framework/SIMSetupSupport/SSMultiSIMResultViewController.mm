@interface SSMultiSIMResultViewController
- (SSMultiSIMResultViewController)initWithPlanInfos:(id)infos;
- (TSSIMSetupFlowDelegate)delegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_continueButtonTapped;
- (void)prepare:(id)prepare;
- (void)pushTimeoutFailureViewControllerWithStatus:(unint64_t)status forPlan:(id)plan;
- (void)pushToDetailViewControllerWithError:(id)error forPlan:(id)plan;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation SSMultiSIMResultViewController

- (SSMultiSIMResultViewController)initWithPlanInfos:(id)infos
{
  v41 = *MEMORY[0x277D85DE8];
  obj = infos;
  infosCopy = infos;
  v4 = [infosCopy count];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v5 = infosCopy;
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

        status = [*(*(&v36 + 1) + 8 * v12) status];
        if (status == 4 || status == 14 || status == 10004 || status == 10003)
        {
          ++v10;
        }

        else if (status == 5)
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
    selfCopy2 = self;
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"MULTISIM_RESULT_TITLE" value:&stru_28753DF48 table:@"Localizable"];

    v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v22 = v21;
    v23 = @"MULTISIM_RESULT_DETAIL_ALL_SUCCESS";
  }

  else
  {
    selfCopy2 = self;
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

  v35.receiver = selfCopy2;
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
  navigationController = [(SSMultiSIMResultViewController *)self navigationController];
  navigationItem = [navigationController navigationItem];
  [navigationItem setHidesBackButton:1];

  v5 = +[SSOBBoldTrayButton boldButton];
  [v5 addTarget:self action:sel__continueButtonTapped forControlEvents:64];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"CONTINUE" value:&stru_28753DF48 table:@"Localizable"];
  [v5 setTitle:v7 forState:0];

  [v5 setEnabled:1];
  buttonTray = [(SSMultiSIMResultViewController *)self buttonTray];
  [buttonTray addButton:v5];

  v9 = objc_alloc(MEMORY[0x277D75B40]);
  v10 = [v9 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(OBTableWelcomeController *)self setTableView:v10];

  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView setTranslatesAutoresizingMaskIntoConstraints:0];

  tableView2 = [(OBTableWelcomeController *)self tableView];
  [tableView2 setRowHeight:*MEMORY[0x277D76F30]];

  tableView3 = [(OBTableWelcomeController *)self tableView];
  [tableView3 setEstimatedRowHeight:1.0];

  tableView4 = [(OBTableWelcomeController *)self tableView];
  [tableView4 setAllowsMultipleSelection:0];

  tableView5 = [(OBTableWelcomeController *)self tableView];
  [tableView5 setScrollEnabled:1];

  tableView6 = [(OBTableWelcomeController *)self tableView];
  [tableView6 setShowsVerticalScrollIndicator:0];

  tableView7 = [(OBTableWelcomeController *)self tableView];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [tableView7 setBackgroundColor:clearColor];

  tableView8 = [(OBTableWelcomeController *)self tableView];
  lightGrayColor = [MEMORY[0x277D75348] lightGrayColor];
  [tableView8 setSeparatorColor:lightGrayColor];

  tableView9 = [(OBTableWelcomeController *)self tableView];
  [tableView9 setDataSource:self];

  tableView10 = [(OBTableWelcomeController *)self tableView];
  [tableView10 setDelegate:self];

  tableView11 = [(OBTableWelcomeController *)self tableView];
  [tableView11 reloadData];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained setCancelNavigationBarItems:self];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = MEMORY[0x277CCACA8];
  viewCopy = view;
  v9 = [v7 stringWithFormat:@"plan%ld", objc_msgSend(pathCopy, "row")];
  v10 = [viewCopy dequeueReusableCellWithIdentifier:v9];

  if (!v10)
  {
    v10 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:3 reuseIdentifier:v9];
  }

  v11 = [pathCopy row];
  if (v11 < [(NSArray *)self->_infos count])
  {
    v12 = [(NSArray *)self->_infos objectAtIndexedSubscript:v11];
    defaultContentConfiguration = [v10 defaultContentConfiguration];
    displayPlan = [v12 displayPlan];
    if (+[TSUtilities isPhone](TSUtilities, "isPhone") && ([displayPlan phoneNumber], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "length"), v15, v16))
    {
      phoneNumber = [displayPlan phoneNumber];
      formattedPhoneNumber = [phoneNumber formattedPhoneNumber];
    }

    else
    {
      carrierName = [displayPlan carrierName];
      v22 = [carrierName length];

      if (v22)
      {
        phoneNumber = [displayPlan carrierName];
        [defaultContentConfiguration setText:phoneNumber];
        goto LABEL_14;
      }

      phoneNumber = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      formattedPhoneNumber = [phoneNumber localizedStringForKey:@"NEW_CELLULAR_PLAN_NO_CARRIER_TITLE" value:&stru_28753DF48 table:@"Localizable"];
    }

    v23 = formattedPhoneNumber;
    [defaultContentConfiguration setText:formattedPhoneNumber];

LABEL_14:
    status = [v12 status];
    if (isSuccessState(status))
    {
      planItem = [v12 planItem];
      if (planItem && (v26 = planItem, [v12 planItem], v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "isSelected"), v27, v26, (v28 & 1) != 0))
      {
        v29 = @"READY";
      }

      else
      {
        v29 = @"AVAILABLE";
      }

      v36 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v37 = [v36 localizedStringForKey:v29 value:&stru_28753DF48 table:@"Localizable"];
      [defaultContentConfiguration setSecondaryText:v37];

      [v10 setSelectionStyle:0];
      goto LABEL_34;
    }

    if (status != 5)
    {
      v38 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v39 = [v38 localizedStringForKey:@"MULTISIM_RESULT_PENDING" value:&stru_28753DF48 table:@"Localizable"];
      [defaultContentConfiguration setSecondaryText:v39];

      [v10 setAccessoryType:1];
LABEL_34:
      lightGrayColor = [MEMORY[0x277D75348] lightGrayColor];
      secondaryTextProperties = [defaultContentConfiguration secondaryTextProperties];
      [secondaryTextProperties setColor:lightGrayColor];

      v59 = MEMORY[0x277D755B8];
      imageName = [v12 imageName];
      v61 = [v59 systemImageNamed:imageName];
      [defaultContentConfiguration setImage:v61];

      [v10 setContentConfiguration:defaultContentConfiguration];
      contentView = [v10 contentView];
      [contentView setLayoutMargins:{10.0, 0.0, 10.0, 0.0}];

      v20 = v10;
      goto LABEL_35;
    }

    installError = [v12 installError];
    v31 = [TSUtilities getErrorDescription:installError];
    [defaultContentConfiguration setSecondaryText:v31];

    secondaryText = [defaultContentConfiguration secondaryText];
    v33 = [secondaryText length];

    if (v33)
    {
LABEL_30:
      v64 = [MEMORY[0x277D755B8] systemImageNamed:@"chevron.forward"];
      v42 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v64];
      systemLightGrayColor = [MEMORY[0x277D75348] systemLightGrayColor];
      [v42 setTintColor:systemLightGrayColor];

      v44 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.triangle.fill"];
      v45 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v44];
      systemYellowColor = [MEMORY[0x277D75348] systemYellowColor];
      [v45 setTintColor:systemYellowColor];

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

    if (displayPlan)
    {
      plan = [displayPlan plan];
      if (plan)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v35 = @"TRANSFER_FAILED";
LABEL_29:
          v40 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v41 = [v40 localizedStringForKey:v35 value:&stru_28753DF48 table:@"Localizable"];
          [defaultContentConfiguration setSecondaryText:v41];

          goto LABEL_30;
        }
      }
    }

    else
    {
      plan = 0;
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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [pathCopy row];
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
    status = [v9 status];
    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
    if (status != 4 && status != 14)
    {
      if (status == 5)
      {
        installError = [v9 installError];
        [(SSMultiSIMResultViewController *)self pushToDetailViewControllerWithError:installError forPlan:v9];
      }

      else if (status != 10004 && status != 10003)
      {
        [(SSMultiSIMResultViewController *)self pushTimeoutFailureViewControllerWithStatus:status forPlan:v9];
      }
    }
  }
}

- (void)pushToDetailViewControllerWithError:(id)error forPlan:(id)plan
{
  errorCopy = error;
  planCopy = plan;
  if (!errorCopy)
  {
    v8 = _TSLogDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SSMultiSIMResultViewController pushToDetailViewControllerWithError:planCopy forPlan:v8];
    }
  }

  websheetUrl = [planCopy websheetUrl];
  v10 = [websheetUrl length];

  if (v10)
  {
    v11 = [[TSWebsheetViewController alloc] initForRemotePlan:0 carrierName:0 skipUIDismissal:0];
    v12 = MEMORY[0x277CBEBC0];
    websheetUrl2 = [planCopy websheetUrl];
    v14 = [v12 URLWithString:websheetUrl2];
    postdata = [planCopy postdata];
    carrierName = [TSURLRequestFactory requestWithType:3 URL:v14 postdata:postdata];

    [(TSMidOperationFailureViewController *)v11 loadRequest:carrierName completion:0];
  }

  else
  {
    v17 = [TSMidOperationFailureViewController alloc];
    carrierName = [planCopy carrierName];
    carrierErrorCode = [planCopy carrierErrorCode];
    v11 = [(TSMidOperationFailureViewController *)v17 initWithPlanItemError:errorCopy updatePlanItem:0 withBackButton:1 forCarrier:carrierName withCarrierErrorCode:carrierErrorCode isEmbeddedInResultView:1];
  }

  navigationController = [(SSMultiSIMResultViewController *)self navigationController];
  [navigationController pushViewController:v11 animated:1];
}

- (void)pushTimeoutFailureViewControllerWithStatus:(unint64_t)status forPlan:(id)plan
{
  v24[1] = *MEMORY[0x277D85DE8];
  planCopy = plan;
  if (status == 10001)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  v8 = [TSCellularSetupTimeoutFailureViewController alloc];
  v24[0] = planCopy;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  v10 = [(TSCellularSetupTimeoutFailureViewController *)v8 initWithTimeoutReason:v7 isEmbeddedInResultView:1 plans:v9];

  v11 = _TSLogDomain();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    identifier = [planCopy identifier];
    v16 = 138413058;
    v17 = v12;
    v18 = 2112;
    v19 = identifier;
    v20 = 2080;
    v21 = SSPlanTransferStatusAsString(status);
    v22 = 2080;
    v23 = "[SSMultiSIMResultViewController pushTimeoutFailureViewControllerWithStatus:forPlan:]";
    _os_log_impl(&dword_262AA8000, v11, OS_LOG_TYPE_DEFAULT, "push %@ for %@ with status : %s @%s", &v16, 0x2Au);
  }

  navigationController = [(SSMultiSIMResultViewController *)self navigationController];
  [navigationController pushViewController:v10 animated:1];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_continueButtonTapped
{
  buttonTray = [(SSMultiSIMResultViewController *)self buttonTray];
  [buttonTray showButtonsBusy];

  delegate = [(SSMultiSIMResultViewController *)self delegate];
  [delegate viewControllerDidComplete:self];
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)prepare:(id)prepare
{
  infos = self->_infos;
  prepareCopy = prepare;
  prepareCopy[2](prepareCopy, [(NSArray *)infos count]> 1);
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