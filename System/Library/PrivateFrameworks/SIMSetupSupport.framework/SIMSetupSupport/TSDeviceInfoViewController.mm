@interface TSDeviceInfoViewController
- (TSDeviceInfoViewController)initWithOptions:(id)options;
- (TSSIMSetupFlowDelegate)delegate;
- (id)extractPhoneInfoFromOptions:(id)options;
- (id)getPhoneInfoFromCT;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (void)_cancelButtonTapped;
- (void)_doneButtonTapped;
- (void)_shareIdentityTapped;
- (void)getPhoneInfoFromCT;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation TSDeviceInfoViewController

- (id)extractPhoneInfoFromOptions:(id)options
{
  v22 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
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
        v11 = [optionsCopy valueForKey:v10];
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

    meInfoList = [v5 meInfoList];
    v8 = meInfoList;
    if (!meInfoList)
    {
      v9 = _TSLogDomain();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(TSDeviceInfoViewController *)v9 getPhoneInfoFromCT:v24];
      }

      v21 = 0;
      goto LABEL_31;
    }

    v9 = [meInfoList objectAtIndexedSubscript:0];
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

    iMEI = [v9 IMEI];
    v32 = [iMEI length];

    if (v32)
    {
      iMEI2 = [v9 IMEI];
      goto LABEL_26;
    }

LABEL_25:
    iMEI2 = &stru_28753DF48;
LABEL_26:
    v44 = v10;
    v45 = v6;
    if (v10 && ([v10 IMEI], v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v34, "length"), v34, v35))
    {
      iMEI3 = [v10 IMEI];
    }

    else
    {
      iMEI3 = &stru_28753DF48;
    }

    v49[0] = @"EidKey";
    v49[1] = v13;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:{2, v13}];
    v50[0] = v37;
    v48[0] = @"ImeiKey";
    v48[1] = iMEI2;
    [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:2];
    v39 = v38 = iMEI2;
    v50[1] = v39;
    v47[0] = @"Imei2Key";
    v47[1] = iMEI3;
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

- (TSDeviceInfoViewController)initWithOptions:(id)options
{
  optionsCopy = options;
  v5 = [(TSDeviceInfoViewController *)self extractPhoneInfoFromOptions:optionsCopy];
  if ([v5 count])
  {
    v6 = v5;
  }

  else
  {
    getPhoneInfoFromCT = [(TSDeviceInfoViewController *)self getPhoneInfoFromCT];
    v6 = [getPhoneInfoFromCT mutableCopy];

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
    v10 = [optionsCopy valueForKey:@"EidKey"];
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

    v22 = [optionsCopy valueForKey:@"ImeiKey"];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v22 length])
    {
      v11 = @"IMEI";
    }

    v14 = [optionsCopy valueForKey:@"Imei2Key"];

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
    selfCopy = 0;
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

  selfCopy = self;
LABEL_32:

  return selfCopy;
}

- (void)_doneButtonTapped
{
  presentingViewController = [(TSDeviceInfoViewController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
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

  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView setTranslatesAutoresizingMaskIntoConstraints:0];

  tableView2 = [(OBTableWelcomeController *)self tableView];
  [tableView2 setRowHeight:*MEMORY[0x277D76F30]];

  tableView3 = [(OBTableWelcomeController *)self tableView];
  [tableView3 setEstimatedRowHeight:0.0];

  tableView4 = [(OBTableWelcomeController *)self tableView];
  [tableView4 setAllowsMultipleSelection:0];

  tableView5 = [(OBTableWelcomeController *)self tableView];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [tableView5 setBackgroundColor:clearColor];

  tableView6 = [(OBTableWelcomeController *)self tableView];
  [tableView6 setDataSource:self];

  tableView7 = [(OBTableWelcomeController *)self tableView];
  [tableView7 setDelegate:self];

  tableView8 = [(OBTableWelcomeController *)self tableView];
  [tableView8 setScrollEnabled:0];

  tableView9 = [(OBTableWelcomeController *)self tableView];
  [tableView9 setEditing:0];

  tableView10 = [(OBTableWelcomeController *)self tableView];
  [tableView10 setAllowsSelection:0];

  tableView11 = [(OBTableWelcomeController *)self tableView];
  [tableView11 setSeparatorStyle:0];

  if (self->_singleItemFlow)
  {
    v17 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel__doneButtonTapped];
    doneButton = self->_doneButton;
    self->_doneButton = v17;

    navigationItem = [(OBBaseWelcomeController *)self navigationItem];
    [navigationItem setLeftBarButtonItem:self->_doneButton animated:1];
  }

  tableView12 = [(OBTableWelcomeController *)self tableView];
  [tableView12 reloadData];

  tableView13 = [(OBTableWelcomeController *)self tableView];
  heightAnchor = [tableView13 heightAnchor];
  tableView14 = [(OBTableWelcomeController *)self tableView];
  [tableView14 contentSize];
  v25 = [heightAnchor constraintEqualToConstant:v24];
  [(TSDeviceInfoViewController *)self setHeightAnchor:v25];

  heightAnchor2 = [(TSDeviceInfoViewController *)self heightAnchor];
  [heightAnchor2 setActive:1];

  singleItemFlow = self->_singleItemFlow;
  tableView15 = [(OBTableWelcomeController *)self tableView];
  centerYAnchor = [tableView15 centerYAnchor];
  view = [(TSDeviceInfoViewController *)self view];
  centerYAnchor2 = [view centerYAnchor];
  v32 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v32 setActive:singleItemFlow];

  v33 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancelButtonTapped];
  navigationController = [(TSDeviceInfoViewController *)self navigationController];
  topViewController = [navigationController topViewController];
  navigationItem2 = [topViewController navigationItem];
  [navigationItem2 setLeftBarButtonItem:v33 animated:0];

  navigationController2 = [(TSDeviceInfoViewController *)self navigationController];
  [navigationController2 setModalPresentationStyle:2];

  navigationController3 = [(TSDeviceInfoViewController *)self navigationController];
  [navigationController3 setModalTransitionStyle:0];

  if (self->_isSharingIdentitySupported && !self->_singleItemFlow)
  {
    boldButton = [MEMORY[0x277D37618] boldButton];
    shareIdentityButton = self->_shareIdentityButton;
    self->_shareIdentityButton = boldButton;

    [(OBBoldTrayButton *)self->_shareIdentityButton addTarget:self action:sel__shareIdentityTapped forControlEvents:64];
    v41 = self->_shareIdentityButton;
    v42 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v43 = [v42 localizedStringForKey:@"ESIM_IN_STORE_SIGNUP_BUTTON" value:&stru_28753DF48 table:@"Localizable"];
    [(OBBoldTrayButton *)v41 setTitle:v43 forState:0];

    buttonTray = [(TSDeviceInfoViewController *)self buttonTray];
    [buttonTray addButton:self->_shareIdentityButton];

    [(OBBoldTrayButton *)self->_shareIdentityButton setEnabled:1];
  }
}

- (void)viewDidLayoutSubviews
{
  view = [(TSDeviceInfoViewController *)self view];
  [view layoutIfNeeded];

  heightAnchor = [(TSDeviceInfoViewController *)self heightAnchor];
  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView contentSize];
  [heightAnchor setConstant:v6];

  v7.receiver = self;
  v7.super_class = TSDeviceInfoViewController;
  [(OBTableWelcomeController *)&v7 viewDidLayoutSubviews];
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  v5 = [(NSMutableArray *)self->_sortedInfo objectAtIndex:section];
  v6 = objc_alloc(MEMORY[0x277D75B48]);
  v7 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  textLabel = [v7 textLabel];
  v9 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [textLabel setFont:v9];

  textLabel2 = [v7 textLabel];
  [textLabel2 setLineBreakMode:0];

  textLabel3 = [v7 textLabel];
  [textLabel3 setNumberOfLines:0];

  textLabel4 = [v7 textLabel];
  [textLabel4 setTextAlignment:1];

  if (self->_singleItemFlow)
  {
    textLabel5 = [v7 textLabel];
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

    textLabel5 = [v7 textLabel];
    v21 = MEMORY[0x277CCACA8];
    v15 = [v5 objectAtIndexedSubscript:1];
    [v21 stringWithFormat:@"%@ %@", v20, v15];
  }
  v22 = ;
  [textLabel5 setText:v22];

  return v7;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [[TSDeviceInfoCell alloc] initWithStyle:0 reuseIdentifier:@"deviceInfo"];
  sortedInfo = self->_sortedInfo;
  section = [pathCopy section];

  v9 = [(NSMutableArray *)sortedInfo objectAtIndex:section];
  v10 = [v9 objectAtIndexedSubscript:1];
  v11 = [v10 dataUsingEncoding:4];

  v12 = [MEMORY[0x277CBF750] filterWithName:@"CICode128BarcodeGenerator"];
  [v12 setDefaults];
  [v12 setValue:v11 forKey:@"inputMessage"];
  outputImage = [v12 outputImage];
  if (outputImage)
  {
    v14 = outputImage;
    contentView = [(TSDeviceInfoCell *)v6 contentView];
    [contentView bounds];
    v17 = v16;
    [v14 extent];
    v19 = vcvtmd_s64_f64(v17 / v18);

    if (v19)
    {
      [v14 extent];
      v21 = 70.0 / v20;
      imageBySamplingNearest = [v14 imageBySamplingNearest];

      memset(&v50, 0, sizeof(v50));
      CGAffineTransformMakeScale(&v50, v19, v21);
      v49 = v50;
      v23 = [imageBySamplingNearest imageByApplyingTransform:&v49];
      v24 = *MEMORY[0x277CDA5B8];
      imageView = [(TSDeviceInfoCell *)v6 imageView];
      layer = [imageView layer];
      [layer setMagnificationFilter:v24];

      imageView2 = [(TSDeviceInfoCell *)v6 imageView];
      v28 = [MEMORY[0x277D755B8] imageWithCIImage:v23];
      [imageView2 setImage:v28];

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
  delegate = [(TSDeviceInfoViewController *)self delegate];
  [delegate userDidTapCancel];
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)getPhoneInfoFromCT
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, self, a3, "[E]Could not create CoreTelephonyClient! @%s", a5, a6, a7, a8, 2u);
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