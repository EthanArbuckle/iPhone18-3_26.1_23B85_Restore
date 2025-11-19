@interface ICQPreferencesFreshmintManager
- (ICQUpgradeFlowManagerDelegate)delegate;
- (void)beginFlowWithDelegate:(id)a3 offer:(id)a4 url:(id)a5 completion:(id)a6;
- (void)beginFlowWithICQLink:(id)a3 presenter:(id)a4 completion:(id)a5;
- (void)runFreshmintCompletionDidComplete:(BOOL)a3;
- (void)upgradeFlowManagerDidCancel:(id)a3;
- (void)upgradeFlowManagerDidComplete:(id)a3;
@end

@implementation ICQPreferencesFreshmintManager

- (void)beginFlowWithDelegate:(id)a3 offer:(id)a4 url:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = _ICQGetLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 0;
    _os_log_impl(&dword_275623000, v14, OS_LOG_TYPE_DEFAULT, "Presenting Freshmint offer.", v19, 2u);
  }

  objc_storeWeak(&self->_delegate, v13);
  v15 = [[ICQUpgradeFlowManager alloc] initWithOffer:v12];

  [(ICQPreferencesFreshmintManager *)self setFreshmintFlowManager:v15];
  v16 = [(ICQPreferencesFreshmintManager *)self freshmintFlowManager];
  [v16 setDelegate:self];

  v17 = [v10 copy];
  [(ICQPreferencesFreshmintManager *)self setFreshmintFlowCompletion:v17];

  v18 = [(ICQPreferencesFreshmintManager *)self freshmintFlowManager];
  [v18 _beginRemoteFlowWithURL:v11];
}

- (void)beginFlowWithICQLink:(id)a3 presenter:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v14 = a3;
  v10 = [[ICQUpgradeFlowManager alloc] initWithOffer:self->_offer];
  freshmintFlowManager = self->_freshmintFlowManager;
  self->_freshmintFlowManager = v10;

  [(ICQUpgradeFlowManager *)self->_freshmintFlowManager setDelegate:self];
  v12 = [v8 copy];

  freshmintFlowCompletion = self->_freshmintFlowCompletion;
  self->_freshmintFlowCompletion = v12;

  [(ICQUpgradeFlowManager *)self->_freshmintFlowManager beginRemoteUpgradeFlowWithICQLink:v14 presenter:v9];
}

- (void)upgradeFlowManagerDidCancel:(id)a3
{
  v4 = a3;
  [(ICQPreferencesFreshmintManager *)self runFreshmintCompletionDidComplete:0];
  v5 = [(ICQPreferencesFreshmintManager *)self delegate];
  [v5 upgradeFlowManagerDidCancel:v4];
}

- (void)upgradeFlowManagerDidComplete:(id)a3
{
  v4 = a3;
  [(ICQPreferencesFreshmintManager *)self runFreshmintCompletionDidComplete:1];
  v5 = [(ICQPreferencesFreshmintManager *)self delegate];
  [v5 upgradeFlowManagerDidComplete:v4];
}

- (void)runFreshmintCompletionDidComplete:(BOOL)a3
{
  [(ICQPreferencesFreshmintManager *)self setShouldShowFreshmint:0];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __68__ICQPreferencesFreshmintManager_runFreshmintCompletionDidComplete___block_invoke;
  v5[3] = &unk_27A65A930;
  v5[4] = self;
  v6 = a3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void __68__ICQPreferencesFreshmintManager_runFreshmintCompletionDidComplete___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) freshmintFlowCompletion];

  if (v2)
  {
    v3 = [*(a1 + 32) freshmintFlowCompletion];
    v3[2](v3, *(a1 + 40), 0);

    v4 = *(a1 + 32);

    [v4 setFreshmintFlowCompletion:0];
  }
}

- (ICQUpgradeFlowManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end