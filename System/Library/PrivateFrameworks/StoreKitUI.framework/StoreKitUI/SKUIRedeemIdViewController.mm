@interface SKUIRedeemIdViewController
- (BOOL)_validateForm;
- (SKUIRedeemIdDelegate)delegate;
- (SKUIRedeemIdViewController)initWithClientContext:(id)context;
- (id)_fieldForIndexPath:(id)path;
- (id)_finalOutputFields;
- (void)_adjustInsetsForKeyboardFrameValue:(id)value;
- (void)_cancelPressed;
- (void)_initializeManager;
- (void)_initializeNavigationItem;
- (void)_initializeTableView;
- (void)_keyboardDidHide:(id)hide;
- (void)_keyboardWillShow:(id)show;
- (void)_nextPressed;
- (void)_refreshNavigationItem;
- (void)_reloadFooter;
- (void)_subscribeToKeyboardEvents;
- (void)_updateFieldAtIndexPath:(id)path withText:(id)text;
- (void)viewDidLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SKUIRedeemIdViewController

- (SKUIRedeemIdViewController)initWithClientContext:(id)context
{
  contextCopy = context;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIRedeemIdViewController initWithClientContext:];
  }

  v8.receiver = self;
  v8.super_class = SKUIRedeemIdViewController;
  v5 = [(SKUIRedeemIdViewController *)&v8 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEC10] mutableCopy];
    [(SKUIRedeemIdViewController *)v5 setFields:v6];

    [(SKUIRedeemIdViewController *)v5 setClientContext:contextCopy];
    [(SKUIRedeemIdViewController *)v5 _initializeManager];
    [(SKUIRedeemIdViewController *)v5 _initializeTableView];
    [(SKUIRedeemIdViewController *)v5 _initializeNavigationItem];
    [(SKUIRedeemIdViewController *)v5 _subscribeToKeyboardEvents];
  }

  return v5;
}

- (void)viewDidLayoutSubviews
{
  view = [(SKUIRedeemIdViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  tableView = [(SKUIRedeemIdViewController *)self tableView];
  [tableView setFrame:{v5, v7, v9, v11}];

  v13.receiver = self;
  v13.super_class = SKUIRedeemIdViewController;
  [(SKUIRedeemIdViewController *)&v13 viewDidLayoutSubviews];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v10.receiver = self;
  v10.super_class = SKUIRedeemIdViewController;
  coordinatorCopy = coordinator;
  [(SKUIRedeemIdViewController *)&v10 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  manager = [(SKUIRedeemIdViewController *)self manager];
  [manager setFooterHidden:1];

  [(SKUIRedeemIdViewController *)self _reloadFooter];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __81__SKUIRedeemIdViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v9[3] = &unk_2781F8348;
  v9[4] = self;
  [coordinatorCopy animateAlongsideTransition:0 completion:v9];
}

void __81__SKUIRedeemIdViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) manager];
  [v2 setFooterHidden:0];

  [*(a1 + 32) _reloadFooter];
  v3 = [*(a1 + 32) manager];
  [v3 dismissActiveCell];
}

- (void)_updateFieldAtIndexPath:(id)path withText:(id)text
{
  textCopy = text;
  v8 = [(SKUIRedeemIdViewController *)self _fieldForIndexPath:path];
  fields = [(SKUIRedeemIdViewController *)self fields];
  [fields setObject:textCopy forKey:v8];

  [(SKUIRedeemIdViewController *)self _refreshNavigationItem];
}

- (id)_fieldForIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  if (section == 2)
  {
    v7 = @"national_redeem_national_id";
  }

  else if (section == 1)
  {
    v7 = @"national_redeem_phone";
  }

  else if (section)
  {
    v7 = 0;
  }

  else
  {
    v5 = [pathCopy row];
    v6 = @"national_redeem_last_name";
    if (v5 == 1)
    {
      v6 = @"national_redeem_first_name";
    }

    v7 = v6;
  }

  return v7;
}

- (void)_refreshNavigationItem
{
  _validateForm = [(SKUIRedeemIdViewController *)self _validateForm];
  nextButton = [(SKUIRedeemIdViewController *)self nextButton];
  [nextButton setEnabled:_validateForm];
}

- (BOOL)_validateForm
{
  fields = [(SKUIRedeemIdViewController *)self fields];
  v4 = [fields objectForKeyedSubscript:@"national_redeem_first_name"];
  v5 = [v4 length];

  fields2 = [(SKUIRedeemIdViewController *)self fields];
  v7 = [fields2 objectForKeyedSubscript:@"national_redeem_last_name"];
  v8 = [v7 length];

  fields3 = [(SKUIRedeemIdViewController *)self fields];
  v10 = [fields3 objectForKeyedSubscript:@"national_redeem_phone"];
  v11 = [v10 length];

  fields4 = [(SKUIRedeemIdViewController *)self fields];
  v13 = [fields4 objectForKeyedSubscript:@"national_redeem_national_id"];
  v14 = [v13 length];

  result = 0;
  if (v5 && v8)
  {
    if (v11)
    {
      v16 = v14 == 0;
    }

    else
    {
      v16 = 1;
    }

    return !v16;
  }

  return result;
}

- (void)_reloadFooter
{
  tableView = [(SKUIRedeemIdViewController *)self tableView];
  v2 = [MEMORY[0x277CCAA78] indexSetWithIndex:3];
  [tableView reloadSections:v2 withRowAnimation:5];
}

- (id)_finalOutputFields
{
  v16[3] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  fields = [(SKUIRedeemIdViewController *)self fields];
  v5 = [fields objectForKeyedSubscript:@"national_redeem_last_name"];
  fields2 = [(SKUIRedeemIdViewController *)self fields];
  v7 = [fields2 objectForKeyedSubscript:@"national_redeem_first_name"];
  v8 = [v3 stringWithFormat:@"%@%@", v5, v7];

  v16[0] = v8;
  v15[0] = @"name";
  v15[1] = @"phone";
  fields3 = [(SKUIRedeemIdViewController *)self fields];
  v10 = [fields3 objectForKeyedSubscript:@"national_redeem_phone"];
  v16[1] = v10;
  v15[2] = @"nationalId";
  fields4 = [(SKUIRedeemIdViewController *)self fields];
  v12 = [fields4 objectForKeyedSubscript:@"national_redeem_national_id"];
  v16[2] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];

  return v13;
}

- (void)_initializeManager
{
  v3 = [SKUIRedeemIdManager alloc];
  clientContext = [(SKUIRedeemIdViewController *)self clientContext];
  v5 = [(SKUIRedeemIdManager *)v3 initWithClientContext:clientContext];
  [(SKUIRedeemIdViewController *)self setManager:v5];

  manager = [(SKUIRedeemIdViewController *)self manager];
  [manager setDelegate:self];
}

- (void)_initializeTableView
{
  v3 = objc_alloc(MEMORY[0x277D75B40]);
  v4 = [v3 initWithFrame:1 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(SKUIRedeemIdViewController *)self setTableView:v4];

  manager = [(SKUIRedeemIdViewController *)self manager];
  tableView = [(SKUIRedeemIdViewController *)self tableView];
  [tableView setDataSource:manager];

  manager2 = [(SKUIRedeemIdViewController *)self manager];
  tableView2 = [(SKUIRedeemIdViewController *)self tableView];
  [tableView2 setDelegate:manager2];

  view = [(SKUIRedeemIdViewController *)self view];
  tableView3 = [(SKUIRedeemIdViewController *)self tableView];
  [view addSubview:tableView3];

  tableView4 = [(SKUIRedeemIdViewController *)self tableView];
  manager3 = [(SKUIRedeemIdViewController *)self manager];
  [manager3 setTableView:tableView4];
}

- (void)_initializeNavigationItem
{
  v16 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancelPressed];
  v3 = objc_alloc(MEMORY[0x277D751E0]);
  clientContext = [(SKUIRedeemIdViewController *)self clientContext];
  v5 = clientContext;
  if (clientContext)
  {
    [clientContext localizedStringForKey:@"REDEEM_NATIONAL_ID_NEXT_BUTTON" inTable:@"Redeem"];
  }

  else
  {
    [SKUIClientContext localizedStringForKey:@"REDEEM_NATIONAL_ID_NEXT_BUTTON" inBundles:0 inTable:@"Redeem"];
  }
  v6 = ;
  v7 = [v3 initWithTitle:v6 style:2 target:self action:sel__nextPressed];
  [(SKUIRedeemIdViewController *)self setNextButton:v7];

  nextButton = [(SKUIRedeemIdViewController *)self nextButton];
  [nextButton setEnabled:0];

  navigationItem = [(SKUIRedeemIdViewController *)self navigationItem];
  clientContext2 = [(SKUIRedeemIdViewController *)self clientContext];
  v11 = clientContext2;
  if (clientContext2)
  {
    [clientContext2 localizedStringForKey:@"REDEEM_NATIONAL_ID_VIEW_TITLE" inTable:@"Redeem"];
  }

  else
  {
    [SKUIClientContext localizedStringForKey:@"REDEEM_NATIONAL_ID_VIEW_TITLE" inBundles:0 inTable:@"Redeem"];
  }
  v12 = ;
  [navigationItem setTitle:v12];

  navigationItem2 = [(SKUIRedeemIdViewController *)self navigationItem];
  [navigationItem2 setLeftBarButtonItem:v16];

  navigationItem3 = [(SKUIRedeemIdViewController *)self navigationItem];
  nextButton2 = [(SKUIRedeemIdViewController *)self nextButton];
  [navigationItem3 setRightBarButtonItem:nextButton2];
}

- (void)_cancelPressed
{
  delegate = [(SKUIRedeemIdViewController *)self delegate];
  [delegate redeemIdViewControllerDidCancel:self];
}

- (void)_nextPressed
{
  manager = [(SKUIRedeemIdViewController *)self manager];
  [manager handleNextPressed];

  delegate = [(SKUIRedeemIdViewController *)self delegate];
  _finalOutputFields = [(SKUIRedeemIdViewController *)self _finalOutputFields];
  [delegate redeemIdViewController:self submittedWithFields:_finalOutputFields];
}

- (void)_subscribeToKeyboardEvents
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__keyboardWillShow_ name:*MEMORY[0x277D76C60] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__keyboardDidHide_ name:*MEMORY[0x277D76BA0] object:0];
}

- (void)_keyboardWillShow:(id)show
{
  userInfo = [show userInfo];
  v4 = [userInfo valueForKey:*MEMORY[0x277D76BB8]];
  [(SKUIRedeemIdViewController *)self _adjustInsetsForKeyboardFrameValue:v4];
}

- (void)_keyboardDidHide:(id)hide
{
  hideCopy = hide;
  manager = [(SKUIRedeemIdViewController *)self manager];
  [manager dismissActiveCell];

  userInfo = [hideCopy userInfo];
  v7 = [userInfo valueForKey:*MEMORY[0x277D76BB8]];

  userInfo2 = [hideCopy userInfo];

  v9 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x277D76B78]];

  v10 = MEMORY[0x277D75D18];
  [v9 floatValue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __47__SKUIRedeemIdViewController__keyboardDidHide___block_invoke;
  v14[3] = &unk_2781F80C8;
  v12 = v11;
  v14[4] = self;
  v15 = v7;
  v13 = v7;
  [v10 animateWithDuration:v14 animations:v12];
}

- (void)_adjustInsetsForKeyboardFrameValue:(id)value
{
  [value CGRectValue];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  tableView = [(SKUIRedeemIdViewController *)self tableView];
  superview = [tableView superview];
  [superview convertRect:0 fromView:{v5, v7, v9, v11}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  tableView2 = [(SKUIRedeemIdViewController *)self tableView];
  [tableView2 frame];
  v43.origin.x = v15;
  v43.origin.y = v17;
  v43.size.width = v19;
  v43.size.height = v21;
  v42 = CGRectIntersection(v41, v43);
  height = v42.size.height;

  tableView3 = [(SKUIRedeemIdViewController *)self tableView];
  [tableView3 contentInset];
  v26 = v25;
  v28 = v27;
  v30 = v29;

  tableView4 = [(SKUIRedeemIdViewController *)self tableView];
  [tableView4 setContentInset:{v26, v28, height, v30}];

  tableView5 = [(SKUIRedeemIdViewController *)self tableView];
  [tableView5 scrollIndicatorInsets];
  v34 = v33;
  v36 = v35;
  v38 = v37;

  tableView6 = [(SKUIRedeemIdViewController *)self tableView];
  [tableView6 setScrollIndicatorInsets:{v34, v36, height, v38}];
}

- (SKUIRedeemIdDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithClientContext:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIRedeemIdViewController initWithClientContext:]";
}

@end