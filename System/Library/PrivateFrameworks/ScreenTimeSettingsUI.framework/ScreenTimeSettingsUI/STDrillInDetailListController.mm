@interface STDrillInDetailListController
- (BOOL)canBeShownFromSuspendedState;
- (STDrillInDetailListController)initWithUsageItem:(id)item coordinator:(id)coordinator;
- (void)_didFetchAppInfo:(id)info;
- (void)tableView:(id)view willDisplayFooterView:(id)footerView forSection:(int64_t)section;
- (void)viewDidLoad;
@end

@implementation STDrillInDetailListController

- (STDrillInDetailListController)initWithUsageItem:(id)item coordinator:(id)coordinator
{
  itemCopy = item;
  coordinatorCopy = coordinator;
  v34.receiver = self;
  v34.super_class = STDrillInDetailListController;
  v9 = [(STPINListViewController *)&v34 initWithRootViewModelCoordinator:coordinatorCopy];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_24;
  }

  objc_storeStrong(&v9->_usageItem, item);
  v11 = [[STDrillInUsageGroupSpecifierProvider alloc] initWithUsageItem:itemCopy coordinator:coordinatorCopy];
  screenTimeGroupSpecifierProvider = v10->_screenTimeGroupSpecifierProvider;
  v10->_screenTimeGroupSpecifierProvider = v11;

  budgetItemIdentifier = [itemCopy budgetItemIdentifier];
  itemType = [itemCopy itemType];
  if (itemType > 3)
  {
    if (itemType != 4)
    {
      if (itemType == 5)
      {
LABEL_11:
        mEMORY[0x277D4B8C0] = [MEMORY[0x277D4B8C0] sharedCache];
        [mEMORY[0x277D4B8C0] addObserver:v10 selector:sel__didFetchAppInfo_ bundleIdentifier:budgetItemIdentifier];
LABEL_14:

        goto LABEL_15;
      }

      if (itemType != 6)
      {
        goto LABEL_15;
      }

LABEL_10:
      v17 = [[STDrillInItemInfoGroupSpecifierProvider alloc] initWithUsageItem:itemCopy];
      drillInItemInfoGroupSpecifierProvider = v10->_drillInItemInfoGroupSpecifierProvider;
      v10->_drillInItemInfoGroupSpecifierProvider = v17;

      goto LABEL_11;
    }

    v15 = [[STDrillInItemInfoGroupSpecifierProvider alloc] initWithUsageItem:itemCopy];
    v16 = 1504;
LABEL_13:
    mEMORY[0x277D4B8C0] = *(&v10->super.super.super.super.super.super.super.isa + v16);
    *(&v10->super.super.super.super.super.super.super.isa + v16) = v15;
    goto LABEL_14;
  }

  if (itemType == 2)
  {
    goto LABEL_10;
  }

  if (itemType == 3)
  {
    v15 = [[STCategoryDetailsGroupSpecifierProvider alloc] initWithCategoryUsageItem:itemCopy coordinator:coordinatorCopy];
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

  v24 = [v23 containsObject:budgetItemIdentifier];
  categoryIdentifier = [itemCopy categoryIdentifier];
  v26 = [objc_alloc(MEMORY[0x277CBEB58]) initWithObjects:{budgetItemIdentifier, 0}];
  v27 = v26;
  if (categoryIdentifier)
  {
    [v26 addObject:categoryIdentifier];
  }

  v28 = [STAllowanceProgressGroupSpecifierProvider alloc];
  if (v24)
  {
    v29 = 0;
  }

  else
  {
    v29 = itemCopy;
  }

  v30 = [(STAllowanceProgressGroupSpecifierProvider *)v28 initWithBudgetedIdentifiers:v27 usageItem:v29];
  allowanceProgressGroupSpecifierProvider = v10->_allowanceProgressGroupSpecifierProvider;
  v10->_allowanceProgressGroupSpecifierProvider = v30;

  [(STAllowanceProgressGroupSpecifierProvider *)v10->_allowanceProgressGroupSpecifierProvider setCoordinator:coordinatorCopy];
  displayName = [itemCopy displayName];
  [(STDrillInDetailListController *)v10 setTitle:displayName];

LABEL_24:
  return v10;
}

- (BOOL)canBeShownFromSuspendedState
{
  coordinator = [(STPINListViewController *)self coordinator];
  isPasscodeEnabled = [coordinator isPasscodeEnabled];

  return isPasscodeEnabled ^ 1;
}

- (void)viewDidLoad
{
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  screenTimeGroupSpecifierProvider = [(STDrillInDetailListController *)self screenTimeGroupSpecifierProvider];
  v5 = [v3 initWithObjects:{screenTimeGroupSpecifierProvider, 0}];

  drillInItemInfoGroupSpecifierProvider = [(STDrillInDetailListController *)self drillInItemInfoGroupSpecifierProvider];
  if (drillInItemInfoGroupSpecifierProvider)
  {
    [v5 addObject:drillInItemInfoGroupSpecifierProvider];
  }

  categoryDetailsGroupSpecifierProvider = [(STDrillInDetailListController *)self categoryDetailsGroupSpecifierProvider];
  if (categoryDetailsGroupSpecifierProvider)
  {
    [v5 addObject:categoryDetailsGroupSpecifierProvider];
  }

  allowanceProgressGroupSpecifierProvider = [(STDrillInDetailListController *)self allowanceProgressGroupSpecifierProvider];
  [v5 addObject:allowanceProgressGroupSpecifierProvider];

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

- (void)_didFetchAppInfo:(id)info
{
  usageItem = [(STDrillInDetailListController *)self usageItem];
  displayName = [usageItem displayName];
  [(STDrillInDetailListController *)self setTitle:displayName];
}

- (void)tableView:(id)view willDisplayFooterView:(id)footerView forSection:(int64_t)section
{
  footerViewCopy = footerView;
  specifierProviders = [(STListViewController *)self specifierProviders];
  drillInItemInfoGroupSpecifierProvider = [(STDrillInDetailListController *)self drillInItemInfoGroupSpecifierProvider];
  v9 = [specifierProviders indexOfObject:drillInItemInfoGroupSpecifierProvider];

  if (v9 == section)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.triangle"];
      v11 = [MEMORY[0x277D74270] textAttachmentWithImage:v10];
      v12 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v11];
      textLabel = [footerViewCopy textLabel];
      v14 = objc_alloc(MEMORY[0x277CCAB48]);
      text = [textLabel text];
      v16 = [v14 initWithString:text];

      [v16 insertAttributedString:v12 atIndex:0];
      [textLabel setAttributedText:v16];
    }
  }
}

@end