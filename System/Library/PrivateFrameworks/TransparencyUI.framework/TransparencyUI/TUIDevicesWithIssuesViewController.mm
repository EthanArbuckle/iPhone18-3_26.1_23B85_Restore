@interface TUIDevicesWithIssuesViewController
- (TUIDevicesWithIssuesViewController)initWithAccountManager:(id)a3 devicesWithIssuesIdentifiers:(id)a4;
- (id)specifiers;
- (void)specifierProvider:(id)a3 didFinishLoadingSpecifier:(id)a4;
- (void)specifierProvider:(id)a3 showViewController:(id)a4;
- (void)specifierProvider:(id)a3 willBeginLoadingSpecifier:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)validateDataclassAccessForProvider:(id)a3 specifier:(id)a4 completion:(id)a5;
- (void)viewDidLoad;
@end

@implementation TUIDevicesWithIssuesViewController

- (TUIDevicesWithIssuesViewController)initWithAccountManager:(id)a3 devicesWithIssuesIdentifiers:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TUIDevicesWithIssuesViewController;
  v9 = [(TUIDevicesWithIssuesViewController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accountManager, a3);
    objc_storeStrong(&v10->_devicesWithIssuesIdentifiers, a4);
  }

  return v10;
}

- (void)viewDidLoad
{
  v32[4] = *MEMORY[0x277D85DE8];
  v31.receiver = self;
  v31.super_class = TUIDevicesWithIssuesViewController;
  [(TUIDevicesWithIssuesViewController *)&v31 viewDidLoad];
  v3 = [MEMORY[0x277D75348] clearColor];
  v4 = [(TUIDevicesWithIssuesViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = *MEMORY[0x277D3FC60];
  [*(&self->super.super.super.super.super.isa + v5) setClipsToBounds:1];
  v6 = [*(&self->super.super.super.super.super.isa + v5) layer];
  [v6 setCornerRadius:10.0];

  [*(&self->super.super.super.super.super.isa + v5) setScrollEnabled:0];
  [*(&self->super.super.super.super.super.isa + v5) _setTopPadding:0.0];
  [*(&self->super.super.super.super.super.isa + v5) _setBottomPadding:0.0];
  [*(&self->super.super.super.super.super.isa + v5) setSectionHeaderHeight:0.0];
  [*(&self->super.super.super.super.super.isa + v5) setSectionFooterHeight:0.0];
  v7 = [MEMORY[0x277D75348] clearColor];
  [*(&self->super.super.super.super.super.isa + v5) setBackgroundColor:v7];

  [*(&self->super.super.super.super.super.isa + v5) setTranslatesAutoresizingMaskIntoConstraints:0];
  v23 = MEMORY[0x277CCAAD0];
  v29 = [*(&self->super.super.super.super.super.isa + v5) leadingAnchor];
  v30 = [(TUIDevicesWithIssuesViewController *)self view];
  v28 = [v30 leadingAnchor];
  v27 = [v29 constraintEqualToAnchor:v28];
  v32[0] = v27;
  v25 = [*(&self->super.super.super.super.super.isa + v5) trailingAnchor];
  v26 = [(TUIDevicesWithIssuesViewController *)self view];
  v24 = [v26 trailingAnchor];
  v22 = [v25 constraintEqualToAnchor:v24];
  v32[1] = v22;
  v21 = [*(&self->super.super.super.super.super.isa + v5) topAnchor];
  v8 = [(TUIDevicesWithIssuesViewController *)self view];
  v9 = [v8 topAnchor];
  v10 = [v21 constraintEqualToAnchor:v9];
  v32[2] = v10;
  v11 = [*(&self->super.super.super.super.super.isa + v5) bottomAnchor];
  v12 = [(TUIDevicesWithIssuesViewController *)self view];
  v13 = [v12 bottomAnchor];
  v14 = [v11 constraintEqualToAnchor:v13];
  v32[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:4];
  [v23 activateConstraints:v15];

  v16 = [*(&self->super.super.super.super.super.isa + v5) heightAnchor];
  [*(&self->super.super.super.super.super.isa + v5) contentSize];
  v18 = [v16 constraintEqualToConstant:v17];
  tableViewHeightConstraint = self->_tableViewHeightConstraint;
  self->_tableViewHeightConstraint = v18;

  [(NSLayoutConstraint *)self->_tableViewHeightConstraint setActive:1];
  v20 = *MEMORY[0x277D85DE8];
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v16 = a4;
  deviceSpecifierProvider = self->_deviceSpecifierProvider;
  v8 = a5;
  if ([(TUIDevicesWithIssuesSpecifierProvider *)deviceSpecifierProvider devicesWithIssuesCount])
  {
    [MEMORY[0x277D75348] secondarySystemBackgroundColor];
  }

  else
  {
    [MEMORY[0x277D75348] clearColor];
  }
  v9 = ;
  [v16 setBackgroundColor:v9];

  v10 = [v8 row];
  v11 = *MEMORY[0x277D3FC60];
  v12 = *(&self->super.super.super.super.super.isa + v11);
  v13 = [v8 section];

  if (v10 == [v12 numberOfRowsInSection:v13] - 1)
  {
    [*(&self->super.super.super.super.super.isa + v11) bounds];
    [v16 setSeparatorInset:{0.0, 0.0, 0.0, v14}];
  }

  [*(&self->super.super.super.super.super.isa + v11) layoutIfNeeded];
  [*(&self->super.super.super.super.super.isa + v11) contentSize];
  [(NSLayoutConstraint *)self->_tableViewHeightConstraint setConstant:v15];
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [MEMORY[0x277CBEB18] array];
    v6 = [[TUIDevicesWithIssuesSpecifierProvider alloc] initWithAccountManager:self->_accountManager devicesWithIssuesIdentifiers:self->_devicesWithIssuesIdentifiers];
    deviceSpecifierProvider = self->_deviceSpecifierProvider;
    self->_deviceSpecifierProvider = v6;

    [(TUIDevicesWithIssuesSpecifierProvider *)self->_deviceSpecifierProvider setDelegate:self];
    v8 = [(TUIDevicesWithIssuesSpecifierProvider *)self->_deviceSpecifierProvider specifiers];
    [v5 addObjectsFromArray:v8];

    v9 = [v5 copy];
    v10 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v9;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)specifierProvider:(id)a3 showViewController:(id)a4
{
  v7 = a3;
  v6 = a4;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [(TUIDevicesWithIssuesViewController *)self presentViewController:v6 animated:1 completion:0];
  }

  else
  {
    [(TUIDevicesWithIssuesViewController *)self showViewController:v6 sender:v7];
  }
}

- (void)specifierProvider:(id)a3 willBeginLoadingSpecifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_16 != -1)
  {
    [TUIDevicesWithIssuesViewController specifierProvider:willBeginLoadingSpecifier:];
  }

  v7 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_16;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_16, OS_LOG_TYPE_DEBUG))
  {
    *v8 = 0;
    _os_log_impl(&dword_26F50B000, v7, OS_LOG_TYPE_DEBUG, "specifierProvider:willBeginLoadingSpecifier not implemented", v8, 2u);
  }
}

uint64_t __82__TUIDevicesWithIssuesViewController_specifierProvider_willBeginLoadingSpecifier___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_16 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)specifierProvider:(id)a3 didFinishLoadingSpecifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_16 != -1)
  {
    [TUIDevicesWithIssuesViewController specifierProvider:didFinishLoadingSpecifier:];
  }

  v7 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_16;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_16, OS_LOG_TYPE_DEBUG))
  {
    *v8 = 0;
    _os_log_impl(&dword_26F50B000, v7, OS_LOG_TYPE_DEBUG, "specifierProvider:didFinishLoadingSpecifier not implemented", v8, 2u);
  }
}

uint64_t __82__TUIDevicesWithIssuesViewController_specifierProvider_didFinishLoadingSpecifier___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_16 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __89__TUIDevicesWithIssuesViewController_reloadSpecifiersForProvider_oldSpecifiers_animated___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_16 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)validateDataclassAccessForProvider:(id)a3 specifier:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_16 != -1)
  {
    [TUIDevicesWithIssuesViewController validateDataclassAccessForProvider:specifier:completion:];
  }

  v10 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_16;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_16, OS_LOG_TYPE_DEBUG))
  {
    *v11 = 0;
    _os_log_impl(&dword_26F50B000, v10, OS_LOG_TYPE_DEBUG, "validateDataclassAccessForProvider:specifier:completion not implemented", v11, 2u);
  }
}

uint64_t __94__TUIDevicesWithIssuesViewController_validateDataclassAccessForProvider_specifier_completion___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_16 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

@end