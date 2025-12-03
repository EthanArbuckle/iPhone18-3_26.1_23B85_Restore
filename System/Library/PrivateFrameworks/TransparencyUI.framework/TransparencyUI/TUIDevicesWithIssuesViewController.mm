@interface TUIDevicesWithIssuesViewController
- (TUIDevicesWithIssuesViewController)initWithAccountManager:(id)manager devicesWithIssuesIdentifiers:(id)identifiers;
- (id)specifiers;
- (void)specifierProvider:(id)provider didFinishLoadingSpecifier:(id)specifier;
- (void)specifierProvider:(id)provider showViewController:(id)controller;
- (void)specifierProvider:(id)provider willBeginLoadingSpecifier:(id)specifier;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)validateDataclassAccessForProvider:(id)provider specifier:(id)specifier completion:(id)completion;
- (void)viewDidLoad;
@end

@implementation TUIDevicesWithIssuesViewController

- (TUIDevicesWithIssuesViewController)initWithAccountManager:(id)manager devicesWithIssuesIdentifiers:(id)identifiers
{
  managerCopy = manager;
  identifiersCopy = identifiers;
  v12.receiver = self;
  v12.super_class = TUIDevicesWithIssuesViewController;
  v9 = [(TUIDevicesWithIssuesViewController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accountManager, manager);
    objc_storeStrong(&v10->_devicesWithIssuesIdentifiers, identifiers);
  }

  return v10;
}

- (void)viewDidLoad
{
  v32[4] = *MEMORY[0x277D85DE8];
  v31.receiver = self;
  v31.super_class = TUIDevicesWithIssuesViewController;
  [(TUIDevicesWithIssuesViewController *)&v31 viewDidLoad];
  clearColor = [MEMORY[0x277D75348] clearColor];
  view = [(TUIDevicesWithIssuesViewController *)self view];
  [view setBackgroundColor:clearColor];

  v5 = *MEMORY[0x277D3FC60];
  [*(&self->super.super.super.super.super.isa + v5) setClipsToBounds:1];
  layer = [*(&self->super.super.super.super.super.isa + v5) layer];
  [layer setCornerRadius:10.0];

  [*(&self->super.super.super.super.super.isa + v5) setScrollEnabled:0];
  [*(&self->super.super.super.super.super.isa + v5) _setTopPadding:0.0];
  [*(&self->super.super.super.super.super.isa + v5) _setBottomPadding:0.0];
  [*(&self->super.super.super.super.super.isa + v5) setSectionHeaderHeight:0.0];
  [*(&self->super.super.super.super.super.isa + v5) setSectionFooterHeight:0.0];
  clearColor2 = [MEMORY[0x277D75348] clearColor];
  [*(&self->super.super.super.super.super.isa + v5) setBackgroundColor:clearColor2];

  [*(&self->super.super.super.super.super.isa + v5) setTranslatesAutoresizingMaskIntoConstraints:0];
  v23 = MEMORY[0x277CCAAD0];
  leadingAnchor = [*(&self->super.super.super.super.super.isa + v5) leadingAnchor];
  view2 = [(TUIDevicesWithIssuesViewController *)self view];
  leadingAnchor2 = [view2 leadingAnchor];
  v27 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v32[0] = v27;
  trailingAnchor = [*(&self->super.super.super.super.super.isa + v5) trailingAnchor];
  view3 = [(TUIDevicesWithIssuesViewController *)self view];
  trailingAnchor2 = [view3 trailingAnchor];
  v22 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v32[1] = v22;
  topAnchor = [*(&self->super.super.super.super.super.isa + v5) topAnchor];
  view4 = [(TUIDevicesWithIssuesViewController *)self view];
  topAnchor2 = [view4 topAnchor];
  v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v32[2] = v10;
  bottomAnchor = [*(&self->super.super.super.super.super.isa + v5) bottomAnchor];
  view5 = [(TUIDevicesWithIssuesViewController *)self view];
  bottomAnchor2 = [view5 bottomAnchor];
  v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v32[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:4];
  [v23 activateConstraints:v15];

  heightAnchor = [*(&self->super.super.super.super.super.isa + v5) heightAnchor];
  [*(&self->super.super.super.super.super.isa + v5) contentSize];
  v18 = [heightAnchor constraintEqualToConstant:v17];
  tableViewHeightConstraint = self->_tableViewHeightConstraint;
  self->_tableViewHeightConstraint = v18;

  [(NSLayoutConstraint *)self->_tableViewHeightConstraint setActive:1];
  v20 = *MEMORY[0x277D85DE8];
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  deviceSpecifierProvider = self->_deviceSpecifierProvider;
  pathCopy = path;
  if ([(TUIDevicesWithIssuesSpecifierProvider *)deviceSpecifierProvider devicesWithIssuesCount])
  {
    [MEMORY[0x277D75348] secondarySystemBackgroundColor];
  }

  else
  {
    [MEMORY[0x277D75348] clearColor];
  }
  v9 = ;
  [cellCopy setBackgroundColor:v9];

  v10 = [pathCopy row];
  v11 = *MEMORY[0x277D3FC60];
  v12 = *(&self->super.super.super.super.super.isa + v11);
  section = [pathCopy section];

  if (v10 == [v12 numberOfRowsInSection:section] - 1)
  {
    [*(&self->super.super.super.super.super.isa + v11) bounds];
    [cellCopy setSeparatorInset:{0.0, 0.0, 0.0, v14}];
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
    array = [MEMORY[0x277CBEB18] array];
    v6 = [[TUIDevicesWithIssuesSpecifierProvider alloc] initWithAccountManager:self->_accountManager devicesWithIssuesIdentifiers:self->_devicesWithIssuesIdentifiers];
    deviceSpecifierProvider = self->_deviceSpecifierProvider;
    self->_deviceSpecifierProvider = v6;

    [(TUIDevicesWithIssuesSpecifierProvider *)self->_deviceSpecifierProvider setDelegate:self];
    specifiers = [(TUIDevicesWithIssuesSpecifierProvider *)self->_deviceSpecifierProvider specifiers];
    [array addObjectsFromArray:specifiers];

    v9 = [array copy];
    v10 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v9;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)specifierProvider:(id)provider showViewController:(id)controller
{
  providerCopy = provider;
  controllerCopy = controller;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [(TUIDevicesWithIssuesViewController *)self presentViewController:controllerCopy animated:1 completion:0];
  }

  else
  {
    [(TUIDevicesWithIssuesViewController *)self showViewController:controllerCopy sender:providerCopy];
  }
}

- (void)specifierProvider:(id)provider willBeginLoadingSpecifier:(id)specifier
{
  providerCopy = provider;
  specifierCopy = specifier;
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

- (void)specifierProvider:(id)provider didFinishLoadingSpecifier:(id)specifier
{
  providerCopy = provider;
  specifierCopy = specifier;
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

- (void)validateDataclassAccessForProvider:(id)provider specifier:(id)specifier completion:(id)completion
{
  providerCopy = provider;
  specifierCopy = specifier;
  completionCopy = completion;
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