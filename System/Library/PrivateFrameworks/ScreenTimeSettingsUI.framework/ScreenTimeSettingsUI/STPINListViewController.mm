@interface STPINListViewController
- (BOOL)shouldDeferPushForSpecifierID:(id)d;
- (STPINListViewController)initWithRootViewModelCoordinator:(id)coordinator;
- (void)devicePINControllerDidDismissPINPane:(id)pane;
- (void)setUpPasscodeAndLineWrapBehaviorForSpecifier:(id)specifier;
- (void)showPINSheet:(id)sheet;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation STPINListViewController

- (STPINListViewController)initWithRootViewModelCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  v9.receiver = self;
  v9.super_class = STPINListViewController;
  v6 = [(STListViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_coordinator, coordinator);
  }

  return v7;
}

- (void)viewDidAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = STPINListViewController;
  [(STPINListViewController *)&v7 viewDidAppear:appear];
  specifierIDPendingPush = [(STPINListViewController *)self specifierIDPendingPush];
  v5 = [(STPINListViewController *)self specifierForID:specifierIDPendingPush];
  if ([(PSListController *)self st_shouldShowPINSheetForSpecifier:v5])
  {
    [(STPINListViewController *)self showPINSheet:v5];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_264BA2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STPINListViewController.viewDidAppear", v6, 2u);
  }
}

- (BOOL)shouldDeferPushForSpecifierID:(id)d
{
  dCopy = d;
  v5 = [(STPINListViewController *)self specifierForID:dCopy];
  if ([(PSListController *)self st_shouldShowPINSheetForSpecifier:v5])
  {
    v6 = 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = STPINListViewController;
    v6 = [(STPINListViewController *)&v8 shouldDeferPushForSpecifierID:dCopy];
  }

  return v6;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(STPINListViewController *)self indexForIndexPath:pathCopy];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = [*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) objectAtIndexedSubscript:v8];
  }

  if ([(PSListController *)self st_shouldShowPINSheetForSpecifier:v9])
  {
    [(STPINListViewController *)self showPINSheet:v9];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = STPINListViewController;
    [(STPINListViewController *)&v10 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  }
}

- (void)showPINSheet:(id)sheet
{
  sheetCopy = sheet;
  target = [sheetCopy target];
  [(STPINListViewController *)self setShowingPinTarget:target];

  [sheetCopy setObject:self forKeyedSubscript:*MEMORY[0x277D401B8]];
  v6.receiver = self;
  v6.super_class = STPINListViewController;
  [(STPINListViewController *)&v6 showPINSheet:sheetCopy];
}

- (void)setUpPasscodeAndLineWrapBehaviorForSpecifier:(id)specifier
{
  v3 = *MEMORY[0x277D3FD80];
  specifierCopy = specifier;
  v4 = MEMORY[0x277CBEC38];
  [specifierCopy setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v3];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [specifierCopy setObject:v6 forKeyedSubscript:*MEMORY[0x277D400B8]];

  [specifierCopy setObject:&unk_28769D358 forKeyedSubscript:*MEMORY[0x277D401C0]];
  [specifierCopy setObject:v4 forKeyedSubscript:0x287675A28];
}

- (void)devicePINControllerDidDismissPINPane:(id)pane
{
  paneCopy = pane;
  specifier = [paneCopy specifier];
  showingPinTarget = [(STPINListViewController *)self showingPinTarget];
  [specifier setTarget:showingPinTarget];

  [(STPINListViewController *)self setShowingPinTarget:0];
  [(PSListController *)self st_devicePINControllerDidDismissPINPane:paneCopy];
}

@end