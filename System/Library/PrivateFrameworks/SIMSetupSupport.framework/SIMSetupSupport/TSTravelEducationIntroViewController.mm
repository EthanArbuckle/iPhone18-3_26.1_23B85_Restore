@interface TSTravelEducationIntroViewController
- (TSSIMSetupFlowDelegate)delegate;
- (TSTravelEducationIntroViewController)initWithOptions:(id)options;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_decodeBase64EncodedString:(id)string;
- (id)getCellTextAt:(id)at;
- (id)getDisplayOptions;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_cancelButtonTapped;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation TSTravelEducationIntroViewController

- (TSTravelEducationIntroViewController)initWithOptions:(id)options
{
  v34[3] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"STAY_CONNECTED_TRAVEL_TITLE" value:&stru_28753DF48 table:@"Localizable"];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"STAY_CONNECTED_TRAVEL_BODY" value:&stru_28753DF48 table:@"Localizable"];
  v32.receiver = self;
  v32.super_class = TSTravelEducationIntroViewController;
  v9 = [(OBTableWelcomeController *)&v32 initWithTitle:v6 detailText:v8 symbolName:@"antenna.radiowaves.left.and.right" adoptTableViewScrollView:1];

  if (v9)
  {
    v10 = [optionsCopy objectForKey:@"roamingInfo"];

    if (v10)
    {
      v11 = [optionsCopy objectForKey:@"roamingInfo"];
      v12 = MEMORY[0x277CBEBC0];
      v13 = [(TSTravelEducationIntroViewController *)v9 _decodeBase64EncodedString:v11];
      v14 = [v12 URLWithString:v13];
      roamingInfo = v9->_roamingInfo;
      v9->_roamingInfo = v14;

      v16 = [optionsCopy mutableCopy];
      [(NSDictionary *)v16 removeObjectForKey:@"roamingInfo"];
      options = v9->_options;
      v9->_options = v16;
    }

    else
    {
      v18 = optionsCopy;
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
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v3];

  v5 = objc_alloc(MEMORY[0x277D75B40]);
  v6 = [v5 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(OBTableWelcomeController *)self setTableView:v6];

  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView setTranslatesAutoresizingMaskIntoConstraints:0];

  tableView2 = [(OBTableWelcomeController *)self tableView];
  [tableView2 setDirectionalLayoutMargins:{1.0, 1.0, 1.0, 1.0}];

  tableView3 = [(OBTableWelcomeController *)self tableView];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [tableView3 setBackgroundColor:clearColor];

  tableView4 = [(OBTableWelcomeController *)self tableView];
  [tableView4 setDataSource:self];

  tableView5 = [(OBTableWelcomeController *)self tableView];
  [tableView5 setDelegate:self];

  tableView6 = [(OBTableWelcomeController *)self tableView];
  [tableView6 setScrollEnabled:1];

  tableView7 = [(OBTableWelcomeController *)self tableView];
  [tableView7 setAllowsMultipleSelection:0];

  tableView8 = [(OBTableWelcomeController *)self tableView];
  [tableView8 reloadData];

  tableView9 = [(OBTableWelcomeController *)self tableView];
  [tableView9 layoutIfNeeded];
}

- (void)viewDidLayoutSubviews
{
  view = [(TSTravelEducationIntroViewController *)self view];
  [view layoutIfNeeded];

  v5.receiver = self;
  v5.super_class = TSTravelEducationIntroViewController;
  [(TSTravelEducationIntroViewController *)&v5 updateViewConstraints];
  v4.receiver = self;
  v4.super_class = TSTravelEducationIntroViewController;
  [(OBTableWelcomeController *)&v4 viewDidLayoutSubviews];
}

- (id)getCellTextAt:(id)at
{
  atCopy = at;
  getDisplayOptions = [(TSTravelEducationIntroViewController *)self getDisplayOptions];
  v6 = [atCopy row];
  if (v6 <= [getDisplayOptions count])
  {
    text = self->_text;
    v9 = [getDisplayOptions objectAtIndexedSubscript:{objc_msgSend(atCopy, "row")}];
    v7 = [(NSDictionary *)text objectForKeyedSubscript:v9];
  }

  else
  {
    v7 = &stru_28753DF48;
  }

  return v7;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [(TSTravelEducationIntroViewController *)self getCellTextAt:pathCopy];
  v9 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
  v10 = MEMORY[0x277CCACA8];
  section = [pathCopy section];

  v12 = [v10 stringWithFormat:@"options%ld", section];
  v13 = [viewCopy dequeueReusableCellWithIdentifier:v12];

  [v8 sizeWithFont:v9 constrainedToSize:0 lineBreakMode:{235.0, 3.40282347e38}];
  v15 = fmax(v14, 60.0);

  return v15;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = MEMORY[0x277CCACA8];
  pathCopy = path;
  viewCopy = view;
  v9 = [v6 stringWithFormat:@"options%ld", objc_msgSend(pathCopy, "section")];
  v10 = [viewCopy dequeueReusableCellWithIdentifier:v9];

  if (!v10)
  {
    v10 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:v9];
  }

  contentView = [v10 contentView];
  [contentView setLayoutMargins:{10.0, 0.0, 0.0, 0.0}];

  [v10 setAccessoryType:1];
  secondarySystemBackgroundColor = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
  [v10 setBackgroundColor:secondarySystemBackgroundColor];

  textLabel = [v10 textLabel];
  [textLabel setLineBreakMode:0];

  textLabel2 = [v10 textLabel];
  [textLabel2 setNumberOfLines:0];

  textLabel3 = [v10 textLabel];
  [textLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v16 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
  textLabel4 = [v10 textLabel];
  [textLabel4 setFont:v16];

  v18 = [(TSTravelEducationIntroViewController *)self getCellTextAt:pathCopy];

  textLabel5 = [v10 textLabel];
  [textLabel5 setText:v18];

  return v10;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  getDisplayOptions = [(TSTravelEducationIntroViewController *)self getDisplayOptions];
  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView deselectRowAtIndexPath:pathCopy animated:1];

  v7 = [pathCopy row];
  if (v7 <= [getDisplayOptions count])
  {
    v8 = [getDisplayOptions objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
    v9 = [v8 isEqualToString:@"showRoamingOption"];

    if (v9)
    {
      v10 = &OBJC_IVAR___TSTravelEducationIntroViewController__isRoamingTapped;
    }

    else
    {
      v11 = [getDisplayOptions objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
      v12 = [v11 isEqualToString:@"showLocalPlanOption"];

      if (v12)
      {
        v10 = &OBJC_IVAR___TSTravelEducationIntroViewController__isExistingPlanTapped;
      }

      else
      {
        v13 = [getDisplayOptions objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
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
  delegate = [(TSTravelEducationIntroViewController *)self delegate];
  [delegate userDidTapCancel];
}

- (id)_decodeBase64EncodedString:(id)string
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEA90];
  stringCopy = string;
  v5 = [[v3 alloc] initWithBase64EncodedString:stringCopy options:0];

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