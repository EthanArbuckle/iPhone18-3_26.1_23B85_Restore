@interface TSIdentityShareFlow
+ (void)showAlert;
- (TSIdentityShareFlow)initWithOptions:(id)a3;
- (id)firstViewController;
- (id)nextViewControllerFrom:(id)a3;
- (void)appBackgrounded;
- (void)firstViewController:(id)a3;
@end

@implementation TSIdentityShareFlow

- (TSIdentityShareFlow)initWithOptions:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = TSIdentityShareFlow;
  v6 = [(TSSIMSetupFlow *)&v10 init];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v6 action:sel_userDidTapCancel];
    cancelButton = v6->_cancelButton;
    v6->_cancelButton = v7;

    objc_storeStrong(&v6->_options, a3);
  }

  return v6;
}

- (id)firstViewController
{
  v11 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = [[TSDeviceInfoViewController alloc] initWithOptions:self->_options];
  v4 = _TSLogDomain();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = objc_opt_class();
    v9 = 2080;
    v10 = "[TSIdentityShareFlow firstViewController]";
    _os_log_impl(&dword_262AA8000, v4, OS_LOG_TYPE_DEFAULT, "first view controller : %@ @%s", &v7, 0x16u);
  }

  [(TSDeviceInfoViewController *)v3 setDelegate:self];
  [(TSSIMSetupFlow *)self setTopViewController:v3];
  v5 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)firstViewController:(id)a3
{
  if (a3)
  {
    v5 = a3;
    v6 = [(TSIdentityShareFlow *)self firstViewController];
    (*(a3 + 2))(v5, v6);
  }
}

- (id)nextViewControllerFrom:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_alloc_init(TSPRXIdentityShareViewController);
    v6 = [v4 navigationController];
    v7 = [v6 topViewController];
    v8 = [v7 presentProxCardFlowWithDelegate:self initialViewController:v5];
  }

  else
  {
    objc_opt_class();
    objc_opt_isKindOfClass();
    v5 = 0;
  }

  return v5;
}

+ (void)showAlert
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"NFC_RADIO_DISABLED_TITLE" value:&stru_28753DF48 table:@"Localizable"];

  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"NFC_RADIO_DISABLED_GOTO_SETTINGS" value:&stru_28753DF48 table:@"Localizable"];

  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"CANCEL" value:&stru_28753DF48 table:@"Localizable"];

  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"NFC_RADIO_DISABLED_OK" value:&stru_28753DF48 table:@"Localizable"];

  v10 = dispatch_get_global_queue(2, 0);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __32__TSIdentityShareFlow_showAlert__block_invoke;
  v15[3] = &unk_279B44A48;
  v16 = v3;
  v17 = v5;
  v18 = v9;
  v19 = v7;
  v11 = v7;
  v12 = v9;
  v13 = v5;
  v14 = v3;
  dispatch_async(v10, v15);
}

void __32__TSIdentityShareFlow_showAlert__block_invoke(CFStringRef *a1)
{
  v4 = 0;
  v1 = CFUserNotificationDisplayAlert(0.0, 1uLL, 0, 0, 0, a1[4], a1[5], a1[6], a1[7], 0, &v4);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__TSIdentityShareFlow_showAlert__block_invoke_2;
  block[3] = &__block_descriptor_44_e5_v8__0l;
  v3 = v1;
  block[4] = v4;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __32__TSIdentityShareFlow_showAlert__block_invoke_2(uint64_t a1)
{
  v1 = (a1 + 40);
  if (*(a1 + 40))
  {
    v2 = _TSLogDomain();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __32__TSIdentityShareFlow_showAlert__block_invoke_2_cold_1(v1, v2);
    }
  }

  else if (!*(a1 + 32))
  {
    v4 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.General/NFC_LINK"];
    v3 = [MEMORY[0x277CC1E80] defaultWorkspace];
    [v3 openSensitiveURL:v4 withOptions:0];
  }
}

- (void)appBackgrounded
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[TSIdentityShareFlow appBackgrounded]";
  _os_log_debug_impl(&dword_262AA8000, log, OS_LOG_TYPE_DEBUG, "[Db] TSIdentityShareFlow appBackgrounded @%s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __32__TSIdentityShareFlow_showAlert__block_invoke_2_cold_1(int *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4[0] = 67109378;
  v4[1] = v2;
  v5 = 2080;
  v6 = "+[TSIdentityShareFlow showAlert]_block_invoke_2";
  _os_log_error_impl(&dword_262AA8000, a2, OS_LOG_TYPE_ERROR, "[E]present notification failed:%d @%s", v4, 0x12u);
  v3 = *MEMORY[0x277D85DE8];
}

@end