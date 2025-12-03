@interface ICSHMEPresenter
- (ICSCloudHomeViewDelegate)delegate;
- (ICSHMEPresenter)initWithAccountManager:(id)manager;
- (void)remoteUIRequestComplete:(id)complete error:(id)error;
- (void)showHMEWithPresenter:(id)presenter;
@end

@implementation ICSHMEPresenter

- (ICSHMEPresenter)initWithAccountManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = ICSHMEPresenter;
  v6 = [(ICSHMEPresenter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountManager, manager);
  }

  return v7;
}

- (void)showHMEWithPresenter:(id)presenter
{
  v21[3] = *MEMORY[0x277D85DE8];
  presenterCopy = presenter;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  delegate = [(ICSHMEPresenter *)self delegate];
  [delegate didStartLoadingWithView:1];

  v6 = [MEMORY[0x277CF02F0] bagForAltDSID:0];
  privateEmailManageURL = [v6 privateEmailManageURL];

  v8 = objc_alloc_init(MEMORY[0x277CCAB70]);
  [v8 setURL:privateEmailManageURL];
  [v8 setHTTPMethod:@"GET"];
  v9 = LogSubsystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [(ICSPrivateEmailSpecifierProvider *)v8 _privateEmailSpecifierWasTapped:v9];
  }

  v10 = objc_alloc_init(ICSMatterhornUpsellHook);
  v11 = objc_alloc_init(ICSPrivateEmailUpdateCacheHook);
  accounts = [(AIDAAccountManager *)self->_accountManager accounts];
  v13 = [accounts objectForKeyedSubscript:*MEMORY[0x277CED1A0]];

  v14 = objc_alloc(MEMORY[0x277CECA40]);
  aa_altDSID = [v13 aa_altDSID];
  v16 = [v14 initWithAltDSID:aa_altDSID upgradeContext:*MEMORY[0x277CF00A0]];

  v21[0] = v10;
  v21[1] = v11;
  v21[2] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:3];
  v18 = [objc_alloc(MEMORY[0x277CECA58]) initWithAccountManager:self->_accountManager presenter:presenterCopy hooks:v17];

  privateEmailPresenter = self->_privateEmailPresenter;
  self->_privateEmailPresenter = v18;

  [(AAUIGrandSlamRemoteUIPresenter *)self->_privateEmailPresenter setDelegate:self];
  [(AAUIGrandSlamRemoteUIPresenter *)self->_privateEmailPresenter loadRequest:v8];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)remoteUIRequestComplete:(id)complete error:(id)error
{
  errorCopy = error;
  v6 = LogSubsystem();
  v7 = v6;
  if (errorCopy)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ICSPrivateEmailSpecifierProvider remoteUIRequestComplete:errorCopy error:v7];
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275819000, v7, OS_LOG_TYPE_DEFAULT, "private email specifier provider success", buf, 2u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__ICSHMEPresenter_remoteUIRequestComplete_error___block_invoke;
  block[3] = &unk_27A666198;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __49__ICSHMEPresenter_remoteUIRequestComplete_error___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 didStopLoadingWithView:1];
}

- (ICSCloudHomeViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end