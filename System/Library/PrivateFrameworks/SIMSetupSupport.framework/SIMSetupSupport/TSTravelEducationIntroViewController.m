@interface TSTravelEducationIntroViewController
- (TSSIMSetupFlowDelegate)delegate;
- (TSTravelEducationIntroViewController)initWithOptions:(id)a3;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_decodeBase64EncodedString:(id)a3;
- (id)getCellTextAt:(id)a3;
- (id)getDisplayOptions;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_cancelButtonTapped;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation TSTravelEducationIntroViewController

- (TSTravelEducationIntroViewController)initWithOptions:(id)a3
{
  v34[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"STAY_CONNECTED_TRAVEL_TITLE" value:&stru_28753DF48 table:@"Localizable"];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"STAY_CONNECTED_TRAVEL_BODY" value:&stru_28753DF48 table:@"Localizable"];
  v32.receiver = self;
  v32.super_class = TSTravelEducationIntroViewController;
  v9 = [(OBTableWelcomeController *)&v32 initWithTitle:v6 detailText:v8 symbolName:@"antenna.radiowaves.left.and.right" adoptTableViewScrollView:1];

  if (v9)
  {
    v10 = [v4 objectForKey:@"roamingInfo"];

    if (v10)
    {
      v11 = [v4 objectForKey:@"roamingInfo"];
      v12 = MEMORY[0x277CBEBC0];
      v13 = [(TSTravelEducationIntroViewController *)v9 _decodeBase64EncodedString:v11];
      v14 = [v12 URLWithString:v13];
      roamingInfo = v9->_roamingInfo;
      v9->_roamingInfo = v14;

      v16 = [v4 mutableCopy];
      [(NSDictionary *)v16 removeObjectForKey:@"roamingInfo"];
      options = v9->_options;
      v9->_options = v16;
    }

    else
    {
      v18 = v4;
      v11 = v9->_options;
      v9->_options = v18;
    }

    v9->_isRoamingTapped = 0;
    v9->_isExistingPlanTapped = 0;
    v9->_isPurchaseLocalPlanTapped = 0;
    v33[0] = @"showRoamingOption";
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"TRAVEL_DATA_ROAMING_LIST_ITEM" value:&stru_28753DF48 table:@"Localizable"];
    v34[0] = v20;
    v33[1] = @"showLocalPlanOption";
    v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"TRAVEL_EXISTING_PLAN_LIST_ITEM" value:&stru_28753DF48 table:@"Localizable"];
    v34[1] = v22;
    v33[2] = @"showPurchaseOption";
    v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v24 = [v23 localizedStringForKey:@"TRAVEL_PURCHASE_PLAN_LIST_ITEM" value:&stru_28753DF48 table:@"Localizable"];
    v34[2] = v24;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:3];
    text = v9->_text;
    v9->_text = v25;

    v27 = dispatch_queue_create("transfer education", 0);
    v28 = [objc_alloc(MEMORY[0x277CC37B0]) initWithQueue:v27];
    client = v9->_client;
    v9->_client = v28;
  }

  v30 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = TSTravelEducationIntroViewController;
  [(TSOBTableWelcomeController *)&v17 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancelButtonTapped];
  v4 = [(OBBaseWelcomeController *)self navigationItem];
  [v4 setRightBarButtonItem:v3];

  v5 = objc_alloc(MEMORY[0x277D75B40]);
  v6 = [v5 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(OBTableWelcomeController *)self setTableView:v6];

  v7 = [(OBTableWelcomeController *)self tableView];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = [(OBTableWelcomeController *)self tableView];
  [v8 setDirectionalLayoutMargins:{1.0, 1.0, 1.0, 1.0}];

  v9 = [(OBTableWelcomeController *)self tableView];
  v10 = [MEMORY[0x277D75348] clearColor];
  [v9 setBackgroundColor:v10];

  v11 = [(OBTableWelcomeController *)self tableView];
  [v11 setDataSource:self];

  v12 = [(OBTableWelcomeController *)self tableView];
  [v12 setDelegate:self];

  v13 = [(OBTableWelcomeController *)self tableView];
  [v13 setScrollEnabled:1];

  v14 = [(OBTableWelcomeController *)self tableView];
  [v14 setAllowsMultipleSelection:0];

  v15 = [(OBTableWelcomeController *)self tableView];
  [v15 reloadData];

  v16 = [(OBTableWelcomeController *)self tableView];
  [v16 layoutIfNeeded];
}

- (void)viewDidLayoutSubviews
{
  v3 = [(TSTravelEducationIntroViewController *)self view];
  [v3 layoutIfNeeded];

  v5.receiver = self;
  v5.super_class = TSTravelEducationIntroViewController;
  [(TSTravelEducationIntroViewController *)&v5 updateViewConstraints];
  v4.receiver = self;
  v4.super_class = TSTravelEducationIntroViewController;
  [(OBTableWelcomeController *)&v4 viewDidLayoutSubviews];
}

- (id)getCellTextAt:(id)a3
{
  v4 = a3;
  v5 = [(TSTravelEducationIntroViewController *)self getDisplayOptions];
  v6 = [v4 row];
  if (v6 <= [v5 count])
  {
    text = self->_text;
    v9 = [v5 objectAtIndexedSubscript:{objc_msgSend(v4, "row")}];
    v7 = [(NSDictionary *)text objectForKeyedSubscript:v9];
  }

  else
  {
    v7 = &stru_28753DF48;
  }

  return v7;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TSTravelEducationIntroViewController *)self getCellTextAt:v6];
  v9 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
  v10 = MEMORY[0x277CCACA8];
  v11 = [v6 section];

  v12 = [v10 stringWithFormat:@"options%ld", v11];
  v13 = [v7 dequeueReusableCellWithIdentifier:v12];

  [v8 sizeWithFont:v9 constrainedToSize:0 lineBreakMode:{235.0, 3.40282347e38}];
  v15 = fmax(v14, 60.0);

  return v15;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = MEMORY[0x277CCACA8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 stringWithFormat:@"options%ld", objc_msgSend(v7, "section")];
  v10 = [v8 dequeueReusableCellWithIdentifier:v9];

  if (!v10)
  {
    v10 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:v9];
  }

  v11 = [v10 contentView];
  [v11 setLayoutMargins:{10.0, 0.0, 0.0, 0.0}];

  [v10 setAccessoryType:1];
  v12 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
  [v10 setBackgroundColor:v12];

  v13 = [v10 textLabel];
  [v13 setLineBreakMode:0];

  v14 = [v10 textLabel];
  [v14 setNumberOfLines:0];

  v15 = [v10 textLabel];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

  v16 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
  v17 = [v10 textLabel];
  [v17 setFont:v16];

  v18 = [(TSTravelEducationIntroViewController *)self getCellTextAt:v7];

  v19 = [v10 textLabel];
  [v19 setText:v18];

  return v10;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v16 = a4;
  v5 = [(TSTravelEducationIntroViewController *)self getDisplayOptions];
  v6 = [(OBTableWelcomeController *)self tableView];
  [v6 deselectRowAtIndexPath:v16 animated:1];

  v7 = [v16 row];
  if (v7 <= [v5 count])
  {
    v8 = [v5 objectAtIndexedSubscript:{objc_msgSend(v16, "row")}];
    v9 = [v8 isEqualToString:@"showRoamingOption"];

    if (v9)
    {
      v10 = &OBJC_IVAR___TSTravelEducationIntroViewController__isRoamingTapped;
    }

    else
    {
      v11 = [v5 objectAtIndexedSubscript:{objc_msgSend(v16, "row")}];
      v12 = [v11 isEqualToString:@"showLocalPlanOption"];

      if (v12)
      {
        v10 = &OBJC_IVAR___TSTravelEducationIntroViewController__isExistingPlanTapped;
      }

      else
      {
        v13 = [v5 objectAtIndexedSubscript:{objc_msgSend(v16, "row")}];
        v14 = [v13 isEqualToString:@"showPurchaseOption"];

        if (!v14)
        {
LABEL_9:
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          [WeakRetained viewControllerDidComplete:self];

          goto LABEL_10;
        }

        v10 = &OBJC_IVAR___TSTravelEducationIntroViewController__isPurchaseLocalPlanTapped;
      }
    }

    *(&self->super.super.super.super.super.super.super.isa + *v10) = 1;
    goto LABEL_9;
  }

LABEL_10:
}

- (id)getDisplayOptions
{
  v13[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  v13[0] = @"showRoamingOption";
  v13[1] = @"showLocalPlanOption";
  v13[2] = @"showPurchaseOption";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:3];
  v5 = [v3 initWithArray:v4];

  if ([v5 count])
  {
    v6 = 0;
    v7 = 0;
    do
    {
      options = self->_options;
      v9 = [v5 objectAtIndexedSubscript:v6];
      v10 = [(NSDictionary *)options objectForKey:v9];

      if (!v10)
      {
        [v5 removeObjectAtIndex:v6];
        --v7;
      }

      v6 = ++v7;
    }

    while ([v5 count] > v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)_cancelButtonTapped
{
  client = self->_client;
  v5 = 0;
  [(CoreTelephonyClient *)client sendTravelBuddyCAEvent:@"Intro View Controller_Cancel" carrierName:&stru_28753DF48 error:&v5];
  v4 = [(TSTravelEducationIntroViewController *)self delegate];
  [v4 userDidTapCancel];
}

- (id)_decodeBase64EncodedString:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEA90];
  v4 = a3;
  v5 = [[v3 alloc] initWithBase64EncodedString:v4 options:0];

  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v5 encoding:4];
  v7 = _TSLogDomain();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = v6;
    v12 = 2080;
    v13 = "[TSTravelEducationIntroViewController _decodeBase64EncodedString:]";
    _os_log_impl(&dword_262AA8000, v7, OS_LOG_TYPE_DEFAULT, "_decodeBase64EncodedString: ret %@ @%s", &v10, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end