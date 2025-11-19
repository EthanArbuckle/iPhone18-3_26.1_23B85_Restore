@interface STPINListViewController
- (BOOL)shouldDeferPushForSpecifierID:(id)a3;
- (STPINListViewController)initWithRootViewModelCoordinator:(id)a3;
- (void)devicePINControllerDidDismissPINPane:(id)a3;
- (void)setUpPasscodeAndLineWrapBehaviorForSpecifier:(id)a3;
- (void)showPINSheet:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation STPINListViewController

- (STPINListViewController)initWithRootViewModelCoordinator:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = STPINListViewController;
  v6 = [(STListViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_coordinator, a3);
  }

  return v7;
}

- (void)viewDidAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = STPINListViewController;
  [(STPINListViewController *)&v7 viewDidAppear:a3];
  v4 = [(STPINListViewController *)self specifierIDPendingPush];
  v5 = [(STPINListViewController *)self specifierForID:v4];
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

- (BOOL)shouldDeferPushForSpecifierID:(id)a3
{
  v4 = a3;
  v5 = [(STPINListViewController *)self specifierForID:v4];
  if ([(PSListController *)self st_shouldShowPINSheetForSpecifier:v5])
  {
    v6 = 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = STPINListViewController;
    v6 = [(STPINListViewController *)&v8 shouldDeferPushForSpecifierID:v4];
  }

  return v6;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(STPINListViewController *)self indexForIndexPath:v7];
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
    [(STPINListViewController *)&v10 tableView:v6 didSelectRowAtIndexPath:v7];
  }
}

- (void)showPINSheet:(id)a3
{
  v4 = a3;
  v5 = [v4 target];
  [(STPINListViewController *)self setShowingPinTarget:v5];

  [v4 setObject:self forKeyedSubscript:*MEMORY[0x277D401B8]];
  v6.receiver = self;
  v6.super_class = STPINListViewController;
  [(STPINListViewController *)&v6 showPINSheet:v4];
}

- (void)setUpPasscodeAndLineWrapBehaviorForSpecifier:(id)a3
{
  v3 = *MEMORY[0x277D3FD80];
  v7 = a3;
  v4 = MEMORY[0x277CBEC38];
  [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v3];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v7 setObject:v6 forKeyedSubscript:*MEMORY[0x277D400B8]];

  [v7 setObject:&unk_28769D358 forKeyedSubscript:*MEMORY[0x277D401C0]];
  [v7 setObject:v4 forKeyedSubscript:0x287675A28];
}

- (void)devicePINControllerDidDismissPINPane:(id)a3
{
  v4 = a3;
  v6 = [v4 specifier];
  v5 = [(STPINListViewController *)self showingPinTarget];
  [v6 setTarget:v5];

  [(STPINListViewController *)self setShowingPinTarget:0];
  [(PSListController *)self st_devicePINControllerDidDismissPINPane:v4];
}

@end