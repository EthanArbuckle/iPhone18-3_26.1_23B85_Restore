@interface CrossPlatformShowManualDetailsViewController
- (CrossPlatformShowManualDetailsViewController)init;
- (TSSIMSetupFlowDelegate)delegate;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)dealloc;
- (void)updateText;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CrossPlatformShowManualDetailsViewController

- (CrossPlatformShowManualDetailsViewController)init
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"TARGET_MANUAL_DETAILS_TITLE" value:&stru_28753DF48 table:@"Localizable"];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"TARGET_MANUAL_DETAILS_DETAIL" value:&stru_28753DF48 table:@"Localizable"];
  v9.receiver = self;
  v9.super_class = CrossPlatformShowManualDetailsViewController;
  v7 = [(OBTableWelcomeController *)&v9 initWithTitle:v4 detailText:v6 symbolName:@"antenna.radiowaves.left.and.right" adoptTableViewScrollView:1];

  if (v7)
  {
    [(CrossPlatformShowManualDetailsViewController *)v7 setModalInPresentation:1];
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[DCTCodeManager shared];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CrossPlatformShowManualDetailsViewController;
  [(CrossPlatformShowManualDetailsViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v16.receiver = self;
  v16.super_class = CrossPlatformShowManualDetailsViewController;
  [(TSOBTableWelcomeController *)&v16 viewDidLoad];
  v3 = +[DCTCodeManager shared];
  [v3 addObserver:self selector:sel_codeDidChange];

  v4 = objc_alloc(MEMORY[0x277D75B40]);
  v5 = [v4 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(OBTableWelcomeController *)self setTableView:v5];

  v6 = [(OBTableWelcomeController *)self tableView];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  v7 = [(OBTableWelcomeController *)self tableView];
  [v7 setDirectionalLayoutMargins:{1.0, 1.0, 1.0, 1.0}];

  v8 = [(OBTableWelcomeController *)self tableView];
  v9 = [MEMORY[0x277D75348] clearColor];
  [v8 setBackgroundColor:v9];

  v10 = [(OBTableWelcomeController *)self tableView];
  [v10 setDataSource:self];

  v11 = [(OBTableWelcomeController *)self tableView];
  [v11 setDelegate:self];

  v12 = [(OBTableWelcomeController *)self tableView];
  [v12 setScrollEnabled:1];

  v13 = [(OBTableWelcomeController *)self tableView];
  [v13 setAllowsMultipleSelection:0];

  v14 = [(OBTableWelcomeController *)self tableView];
  [v14 reloadData];

  v15 = [(OBTableWelcomeController *)self tableView];
  [v15 layoutIfNeeded];

  [(CrossPlatformShowManualDetailsViewController *)self updateText];
}

- (void)updateText
{
  v16[2] = *MEMORY[0x277D85DE8];
  v3 = +[DCTCodeManager shared];
  v4 = [v3 code];

  v15[0] = @"s";
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"SESSION_ID_CELL_TITLE" value:&stru_28753DF48 table:@"Localizable"];
  v15[1] = @"p";
  v16[0] = v6;
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"PASSCODE_CELL_TITLE" value:&stru_28753DF48 table:@"Localizable"];
  v16[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  queryParamToTitle = self->_queryParamToTitle;
  self->_queryParamToTitle = v9;

  v11 = [v4 parseQueryParamsWithTitleDictionary:self->_queryParamToTitle];
  dctInfo = self->_dctInfo;
  self->_dctInfo = v11;

  v13 = [(OBTableWelcomeController *)self tableView];
  [v13 reloadData];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)viewDidLayoutSubviews
{
  v3 = [(CrossPlatformShowManualDetailsViewController *)self view];
  [v3 layoutIfNeeded];

  v5.receiver = self;
  v5.super_class = CrossPlatformShowManualDetailsViewController;
  [(CrossPlatformShowManualDetailsViewController *)&v5 updateViewConstraints];
  v4.receiver = self;
  v4.super_class = CrossPlatformShowManualDetailsViewController;
  [(OBTableWelcomeController *)&v4 viewDidLayoutSubviews];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"CellID"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"CellID"];
  }

  v8 = -[NSArray objectAtIndexedSubscript:](self->_dctInfo, "objectAtIndexedSubscript:", [v6 row]);
  v9 = [v8 objectForKeyedSubscript:@"title"];
  v10 = [v7 textLabel];
  [v10 setText:v9];

  dctInfo = self->_dctInfo;
  v12 = [v6 row];

  v13 = [(NSArray *)dctInfo objectAtIndexedSubscript:v12];
  v14 = [v13 objectForKeyedSubscript:@"value"];
  v15 = [v14 uppercaseString];
  v16 = [v7 detailTextLabel];
  [v16 setText:v15];

  [v7 setSelectionStyle:0];

  return v7;
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end