@interface STDrillInDetailListController
- (BOOL)canBeShownFromSuspendedState;
- (STDrillInDetailListController)initWithUsageItem:(id)a3 coordinator:(id)a4;
- (void)_didFetchAppInfo:(id)a3;
- (void)tableView:(id)a3 willDisplayFooterView:(id)a4 forSection:(int64_t)a5;
- (void)viewDidLoad;
@end

@implementation STDrillInDetailListController

- (STDrillInDetailListController)initWithUsageItem:(id)a3 coordinator:(id)a4
{
  v7 = a3;
  v8 = a4;
  v34.receiver = self;
  v34.super_class = STDrillInDetailListController;
  v9 = [(STPINListViewController *)&v34 initWithRootViewModelCoordinator:v8];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_24;
  }

  objc_storeStrong(&v9->_usageItem, a3);
  v11 = [[STDrillInUsageGroupSpecifierProvider alloc] initWithUsageItem:v7 coordinator:v8];
  screenTimeGroupSpecifierProvider = v10->_screenTimeGroupSpecifierProvider;
  v10->_screenTimeGroupSpecifierProvider = v11;

  v13 = [v7 budgetItemIdentifier];
  v14 = [v7 itemType];
  if (v14 > 3)
  {
    if (v14 != 4)
    {
      if (v14 == 5)
      {
LABEL_11:
        v19 = [MEMORY[0x277D4B8C0] sharedCache];
        [v19 addObserver:v10 selector:sel__didFetchAppInfo_ bundleIdentifier:v13];
LABEL_14:

        goto LABEL_15;
      }

      if (v14 != 6)
      {
        goto LABEL_15;
      }

LABEL_10:
      v17 = [[STDrillInItemInfoGroupSpecifierProvider alloc] initWithUsageItem:v7];
      drillInItemInfoGroupSpecifierProvider = v10->_drillInItemInfoGroupSpecifierProvider;
      v10->_drillInItemInfoGroupSpecifierProvider = v17;

      goto LABEL_11;
    }

    v15 = [[STDrillInItemInfoGroupSpecifierProvider alloc] initWithUsageItem:v7];
    v16 = 1504;
LABEL_13:
    v19 = *(&v10->super.super.super.super.super.super.super.isa + v16);
    *(&v10->super.super.super.super.super.super.super.isa + v16) = v15;
    goto LABEL_14;
  }

  if (v14 == 2)
  {
    goto LABEL_10;
  }

  if (v14 == 3)
  {
    v15 = [[STCategoryDetailsGroupSpecifierProvider alloc] initWithCategoryUsageItem:v7 coordinator:v8];
    v16 = 1512;
    goto LABEL_13;
  }

LABEL_15:
  v20 = [MEMORY[0x277CF9650] systemUnblockableBundleIdentifiersForDeviceFamily:102];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = objc_opt_new();
  }

  v23 = v22;

  v24 = [v23 containsObject:v13];
  v25 = [v7 categoryIdentifier];
  v26 = [objc_alloc(MEMORY[0x277CBEB58]) initWithObjects:{v13, 0}];
  v27 = v26;
  if (v25)
  {
    [v26 addObject:v25];
  }

  v28 = [STAllowanceProgressGroupSpecifierProvider alloc];
  if (v24)
  {
    v29 = 0;
  }

  else
  {
    v29 = v7;
  }

  v30 = [(STAllowanceProgressGroupSpecifierProvider *)v28 initWithBudgetedIdentifiers:v27 usageItem:v29];
  allowanceProgressGroupSpecifierProvider = v10->_allowanceProgressGroupSpecifierProvider;
  v10->_allowanceProgressGroupSpecifierProvider = v30;

  [(STAllowanceProgressGroupSpecifierProvider *)v10->_allowanceProgressGroupSpecifierProvider setCoordinator:v8];
  v32 = [v7 displayName];
  [(STDrillInDetailListController *)v10 setTitle:v32];

LABEL_24:
  return v10;
}

- (BOOL)canBeShownFromSuspendedState
{
  v2 = [(STPINListViewController *)self coordinator];
  v3 = [v2 isPasscodeEnabled];

  return v3 ^ 1;
}

- (void)viewDidLoad
{
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  v4 = [(STDrillInDetailListController *)self screenTimeGroupSpecifierProvider];
  v5 = [v3 initWithObjects:{v4, 0}];

  v6 = [(STDrillInDetailListController *)self drillInItemInfoGroupSpecifierProvider];
  if (v6)
  {
    [v5 addObject:v6];
  }

  v7 = [(STDrillInDetailListController *)self categoryDetailsGroupSpecifierProvider];
  if (v7)
  {
    [v5 addObject:v7];
  }

  v8 = [(STDrillInDetailListController *)self allowanceProgressGroupSpecifierProvider];
  [v5 addObject:v8];

  [(STListViewController *)self setSpecifierProviders:v5];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STDrillInDetailListController.viewDidLoad", buf, 2u);
  }

  v9.receiver = self;
  v9.super_class = STDrillInDetailListController;
  [(STDrillInDetailListController *)&v9 viewDidLoad];
}

- (void)_didFetchAppInfo:(id)a3
{
  v5 = [(STDrillInDetailListController *)self usageItem];
  v4 = [v5 displayName];
  [(STDrillInDetailListController *)self setTitle:v4];
}

- (void)tableView:(id)a3 willDisplayFooterView:(id)a4 forSection:(int64_t)a5
{
  v17 = a4;
  v7 = [(STListViewController *)self specifierProviders];
  v8 = [(STDrillInDetailListController *)self drillInItemInfoGroupSpecifierProvider];
  v9 = [v7 indexOfObject:v8];

  if (v9 == a5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.triangle"];
      v11 = [MEMORY[0x277D74270] textAttachmentWithImage:v10];
      v12 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v11];
      v13 = [v17 textLabel];
      v14 = objc_alloc(MEMORY[0x277CCAB48]);
      v15 = [v13 text];
      v16 = [v14 initWithString:v15];

      [v16 insertAttributedString:v12 atIndex:0];
      [v13 setAttributedText:v16];
    }
  }
}

@end