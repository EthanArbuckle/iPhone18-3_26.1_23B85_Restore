@interface TSDeviceInfoViewController
- (TSDeviceInfoViewController)initWithOptions:(id)a3;
- (TSSIMSetupFlowDelegate)delegate;
- (id)extractPhoneInfoFromOptions:(id)a3;
- (id)getPhoneInfoFromCT;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (void)_cancelButtonTapped;
- (void)_doneButtonTapped;
- (void)_shareIdentityTapped;
- (void)getPhoneInfoFromCT;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation TSDeviceInfoViewController

- (id)extractPhoneInfoFromOptions:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v20[0] = @"EidKey";
  v20[1] = @"ImeiKey";
  v20[2] = @"Imei2Key";
  v20[3] = @"MeidKey";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:{4, 0}];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v3 valueForKey:v10];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v11 length])
        {
          v19[0] = v10;
          v19[1] = v11;
          v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)getPhoneInfoFromCT
{
  v50[3] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CC37B0]);
  v3 = [v2 initWithQueue:MEMORY[0x277D85CD0]];
  v4 = v3;
  if (v3)
  {
    v46 = 0;
    v5 = [v3 getMobileEquipmentInfo:&v46];
    v6 = v46;
    if (!v5)
    {
      v8 = _TSLogDomain();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(TSDeviceInfoViewController *)v6 getPhoneInfoFromCT];
      }

      v21 = 0;
      goto LABEL_32;
    }

    v7 = [v5 meInfoList];
    v8 = v7;
    if (!v7)
    {
      v9 = _TSLogDomain();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(TSDeviceInfoViewController *)v9 getPhoneInfoFromCT:v24];
      }

      v21 = 0;
      goto LABEL_31;
    }

    v9 = [v7 objectAtIndexedSubscript:0];
    v10 = 0;
    if ([v8 count]>= 2)
    {
      v10 = [v8 objectAtIndexedSubscript:1];
    }

    if (v9 && (-[NSObject CSN](v9, "CSN"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 length], v11, v12))
    {
      v13 = [v9 CSN];
    }

    else if (v10 && ([v10 CSN], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "length"), v22, v23))
    {
      v13 = [v10 CSN];
      if (!v9)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v13 = &stru_28753DF48;
      if (!v9)
      {
        goto LABEL_25;
      }
    }

    v31 = [v9 IMEI];
    v32 = [v31 length];

    if (v32)
    {
      v33 = [v9 IMEI];
      goto LABEL_26;
    }

LABEL_25:
    v33 = &stru_28753DF48;
LABEL_26:
    v44 = v10;
    v45 = v6;
    if (v10 && ([v10 IMEI], v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v34, "length"), v34, v35))
    {
      v36 = [v10 IMEI];
    }

    else
    {
      v36 = &stru_28753DF48;
    }

    v49[0] = @"EidKey";
    v49[1] = v13;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:{2, v13}];
    v50[0] = v37;
    v48[0] = @"ImeiKey";
    v48[1] = v33;
    [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:2];
    v39 = v38 = v33;
    v50[1] = v39;
    v47[0] = @"Imei2Key";
    v47[1] = v36;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:2];
    v50[2] = v40;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:3];

    v6 = v45;
LABEL_31:

LABEL_32:
    goto LABEL_33;
  }

  v6 = _TSLogDomain();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [(TSDeviceInfoViewController *)v6 getPhoneInfoFromCT:v14];
  }

  v21 = 0;
LABEL_33:

  v41 = *MEMORY[0x277D85DE8];

  return v21;
}

- (TSDeviceInfoViewController)initWithOptions:(id)a3
{
  v4 = a3;
  v5 = [(TSDeviceInfoViewController *)self extractPhoneInfoFromOptions:v4];
  if ([v5 count])
  {
    v6 = v5;
  }

  else
  {
    v7 = [(TSDeviceInfoViewController *)self getPhoneInfoFromCT];
    v6 = [v7 mutableCopy];

    if (![v6 count])
    {
      v11 = _TSLogDomain();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(TSDeviceInfoViewController *)v11 initWithOptions:v35, v36, v37, v38, v39, v40, v41];
      }

      goto LABEL_31;
    }
  }

  v8 = [v6 count];
  v9 = v8 == 1;
  if (v8 == 1)
  {
    v10 = [v4 valueForKey:@"EidKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v10 length])
      {
        v11 = @"EID";
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v22 = [v4 valueForKey:@"ImeiKey"];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v22 length])
    {
      v11 = @"IMEI";
    }

    v14 = [v4 valueForKey:@"Imei2Key"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = 0;
      if ([v14 length])
      {
        v11 = @"IMEI2";
      }
    }

    else
    {
      v21 = 0;
    }

    goto LABEL_24;
  }

  v12 = objc_alloc(MEMORY[0x277CC37B0]);
  v13 = [v12 initWithQueue:MEMORY[0x277D85CD0]];
  if (!v13)
  {
    v11 = _TSLogDomain();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(TSDeviceInfoViewController *)v11 initWithOptions:v28, v29, v30, v31, v32, v33, v34];
    }

LABEL_31:
    v27 = 0;
    goto LABEL_32;
  }

  v14 = v13;
  v15 = [v13 isSharingIdentitySupportedWithError:0];
  self->_isSharingIdentitySupported = [v15 BOOLValue];

  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v16 localizedStringForKey:@"ESIM_IN_STORE_SIGNUP_TITLE" value:&stru_28753DF48 table:@"Localizable"];

  isSharingIdentitySupported = self->_isSharingIdentitySupported;
  v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v19 = v18;
  if (isSharingIdentitySupported)
  {
    v20 = @"ESIM_IN_STORE_SIGNUP_DETAIL";
  }

  else
  {
    v20 = @"PSIM_IN_STORE_SIGNUP_DETAIL";
  }

  v21 = [v18 localizedStringForKey:v20 value:&stru_28753DF48 table:@"Localizable"];

LABEL_24:
  v43.receiver = self;
  v43.super_class = TSDeviceInfoViewController;
  v23 = [(OBTableWelcomeController *)&v43 initWithTitle:v11 detailText:v21 icon:0 adoptTableViewScrollView:0];
  v24 = v23;
  if (v23)
  {
    v23->_singleItemFlow = v9;
    v25 = [MEMORY[0x277CBEB18] arrayWithArray:v6];
    sortedInfo = v24->_sortedInfo;
    v24->_sortedInfo = v25;
  }

  self = v24;

  v27 = self;
LABEL_32:

  return v27;
}

- (void)_doneButtonTapped
{
  v2 = [(TSDeviceInfoViewController *)self presentingViewController];
  [v2 dismissViewControllerAnimated:1 completion:0];
}

- (void)viewDidLoad
{
  v45.receiver = self;
  v45.super_class = TSDeviceInfoViewController;
  [(OBTableWelcomeController *)&v45 viewDidLoad];
  [(UIViewController *)self setNavigationBarColor];
  v3 = objc_alloc(MEMORY[0x277D75B40]);
  v4 = [v3 initWithFrame:1 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(OBTableWelcomeController *)self setTableView:v4];

  v5 = [(OBTableWelcomeController *)self tableView];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(OBTableWelcomeController *)self tableView];
  [v6 setRowHeight:*MEMORY[0x277D76F30]];

  v7 = [(OBTableWelcomeController *)self tableView];
  [v7 setEstimatedRowHeight:0.0];

  v8 = [(OBTableWelcomeController *)self tableView];
  [v8 setAllowsMultipleSelection:0];

  v9 = [(OBTableWelcomeController *)self tableView];
  v10 = [MEMORY[0x277D75348] clearColor];
  [v9 setBackgroundColor:v10];

  v11 = [(OBTableWelcomeController *)self tableView];
  [v11 setDataSource:self];

  v12 = [(OBTableWelcomeController *)self tableView];
  [v12 setDelegate:self];

  v13 = [(OBTableWelcomeController *)self tableView];
  [v13 setScrollEnabled:0];

  v14 = [(OBTableWelcomeController *)self tableView];
  [v14 setEditing:0];

  v15 = [(OBTableWelcomeController *)self tableView];
  [v15 setAllowsSelection:0];

  v16 = [(OBTableWelcomeController *)self tableView];
  [v16 setSeparatorStyle:0];

  if (self->_singleItemFlow)
  {
    v17 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel__doneButtonTapped];
    doneButton = self->_doneButton;
    self->_doneButton = v17;

    v19 = [(OBBaseWelcomeController *)self navigationItem];
    [v19 setLeftBarButtonItem:self->_doneButton animated:1];
  }

  v20 = [(OBTableWelcomeController *)self tableView];
  [v20 reloadData];

  v21 = [(OBTableWelcomeController *)self tableView];
  v22 = [v21 heightAnchor];
  v23 = [(OBTableWelcomeController *)self tableView];
  [v23 contentSize];
  v25 = [v22 constraintEqualToConstant:v24];
  [(TSDeviceInfoViewController *)self setHeightAnchor:v25];

  v26 = [(TSDeviceInfoViewController *)self heightAnchor];
  [v26 setActive:1];

  singleItemFlow = self->_singleItemFlow;
  v28 = [(OBTableWelcomeController *)self tableView];
  v29 = [v28 centerYAnchor];
  v30 = [(TSDeviceInfoViewController *)self view];
  v31 = [v30 centerYAnchor];
  v32 = [v29 constraintEqualToAnchor:v31];
  [v32 setActive:singleItemFlow];

  v33 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancelButtonTapped];
  v34 = [(TSDeviceInfoViewController *)self navigationController];
  v35 = [v34 topViewController];
  v36 = [v35 navigationItem];
  [v36 setLeftBarButtonItem:v33 animated:0];

  v37 = [(TSDeviceInfoViewController *)self navigationController];
  [v37 setModalPresentationStyle:2];

  v38 = [(TSDeviceInfoViewController *)self navigationController];
  [v38 setModalTransitionStyle:0];

  if (self->_isSharingIdentitySupported && !self->_singleItemFlow)
  {
    v39 = [MEMORY[0x277D37618] boldButton];
    shareIdentityButton = self->_shareIdentityButton;
    self->_shareIdentityButton = v39;

    [(OBBoldTrayButton *)self->_shareIdentityButton addTarget:self action:sel__shareIdentityTapped forControlEvents:64];
    v41 = self->_shareIdentityButton;
    v42 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v43 = [v42 localizedStringForKey:@"ESIM_IN_STORE_SIGNUP_BUTTON" value:&stru_28753DF48 table:@"Localizable"];
    [(OBBoldTrayButton *)v41 setTitle:v43 forState:0];

    v44 = [(TSDeviceInfoViewController *)self buttonTray];
    [v44 addButton:self->_shareIdentityButton];

    [(OBBoldTrayButton *)self->_shareIdentityButton setEnabled:1];
  }
}

- (void)viewDidLayoutSubviews
{
  v3 = [(TSDeviceInfoViewController *)self view];
  [v3 layoutIfNeeded];

  v4 = [(TSDeviceInfoViewController *)self heightAnchor];
  v5 = [(OBTableWelcomeController *)self tableView];
  [v5 contentSize];
  [v4 setConstant:v6];

  v7.receiver = self;
  v7.super_class = TSDeviceInfoViewController;
  [(OBTableWelcomeController *)&v7 viewDidLayoutSubviews];
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v5 = [(NSMutableArray *)self->_sortedInfo objectAtIndex:a4];
  v6 = objc_alloc(MEMORY[0x277D75B48]);
  v7 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  v8 = [v7 textLabel];
  v9 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [v8 setFont:v9];

  v10 = [v7 textLabel];
  [v10 setLineBreakMode:0];

  v11 = [v7 textLabel];
  [v11 setNumberOfLines:0];

  v12 = [v7 textLabel];
  [v12 setTextAlignment:1];

  if (self->_singleItemFlow)
  {
    v13 = [v7 textLabel];
    v14 = MEMORY[0x277CCACA8];
    v15 = [v5 objectAtIndexedSubscript:1];
    [v14 stringWithFormat:@"%@", v15, v24];
  }

  else
  {
    v16 = [v5 objectAtIndexedSubscript:0];

    if (v16 == @"EidKey")
    {
      v20 = @"EID";
    }

    else
    {
      v17 = [v5 objectAtIndexedSubscript:0];

      if (v17 == @"ImeiKey")
      {
        v20 = @"IMEI";
      }

      else
      {
        v18 = [v5 objectAtIndexedSubscript:0];

        if (v18 == @"Imei2Key")
        {
          v20 = @"IMEI2";
        }

        else
        {
          v19 = [v5 objectAtIndexedSubscript:0];

          if (v19 == @"MeidKey")
          {
            v20 = @"MEID";
          }

          else
          {
            v20 = 0;
          }
        }
      }
    }

    v13 = [v7 textLabel];
    v21 = MEMORY[0x277CCACA8];
    v15 = [v5 objectAtIndexedSubscript:1];
    [v21 stringWithFormat:@"%@ %@", v20, v15];
  }
  v22 = ;
  [v13 setText:v22];

  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [[TSDeviceInfoCell alloc] initWithStyle:0 reuseIdentifier:@"deviceInfo"];
  sortedInfo = self->_sortedInfo;
  v8 = [v5 section];

  v9 = [(NSMutableArray *)sortedInfo objectAtIndex:v8];
  v10 = [v9 objectAtIndexedSubscript:1];
  v11 = [v10 dataUsingEncoding:4];

  v12 = [MEMORY[0x277CBF750] filterWithName:@"CICode128BarcodeGenerator"];
  [v12 setDefaults];
  [v12 setValue:v11 forKey:@"inputMessage"];
  v13 = [v12 outputImage];
  if (v13)
  {
    v14 = v13;
    v15 = [(TSDeviceInfoCell *)v6 contentView];
    [v15 bounds];
    v17 = v16;
    [v14 extent];
    v19 = vcvtmd_s64_f64(v17 / v18);

    if (v19)
    {
      [v14 extent];
      v21 = 70.0 / v20;
      v22 = [v14 imageBySamplingNearest];

      memset(&v50, 0, sizeof(v50));
      CGAffineTransformMakeScale(&v50, v19, v21);
      v49 = v50;
      v23 = [v22 imageByApplyingTransform:&v49];
      v24 = *MEMORY[0x277CDA5B8];
      v25 = [(TSDeviceInfoCell *)v6 imageView];
      v26 = [v25 layer];
      [v26 setMagnificationFilter:v24];

      v27 = [(TSDeviceInfoCell *)v6 imageView];
      v28 = [MEMORY[0x277D755B8] imageWithCIImage:v23];
      [v27 setImage:v28];

      v29 = v6;
    }

    else
    {
      v39 = _TSLogDomain();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        [(TSDeviceInfoViewController *)v39 tableView:v40 cellForRowAtIndexPath:v41, v42, v43, v44, v45, v46];
      }

      v47 = v6;
    }
  }

  else
  {
    v30 = _TSLogDomain();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [(TSDeviceInfoViewController *)v30 tableView:v31 cellForRowAtIndexPath:v32, v33, v34, v35, v36, v37];
    }

    v38 = v6;
  }

  return v6;
}

- (void)_shareIdentityTapped
{
  if (+[TSUtilities isNFCEnable])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained viewControllerDidComplete:self];
  }

  else
  {
    +[TSIdentityShareFlow showAlert];

    [(TSDeviceInfoViewController *)self dismissViewControllerWithTransition:7 completion:0];
  }
}

- (void)_cancelButtonTapped
{
  v2 = [(TSDeviceInfoViewController *)self delegate];
  [v2 userDidTapCancel];
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)getPhoneInfoFromCT
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]Could not create CoreTelephonyClient! @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithOptions:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]Could not create CoreTelephonyClient! @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithOptions:(uint64_t)a3 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]Could not get any phoneInfo from input options or CoreTelephonyClient! @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)tableView:(uint64_t)a3 cellForRowAtIndexPath:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]Barcode length > view width! @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)tableView:(uint64_t)a3 cellForRowAtIndexPath:(uint64_t)a4 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]Barcode generation failed. @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end