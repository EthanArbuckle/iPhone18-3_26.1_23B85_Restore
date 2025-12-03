@interface ICQPreferencesFreshmintManager
- (ICQUpgradeFlowManagerDelegate)delegate;
- (void)beginFlowWithDelegate:(id)delegate offer:(id)offer url:(id)url completion:(id)completion;
- (void)beginFlowWithICQLink:(id)link presenter:(id)presenter completion:(id)completion;
- (void)runFreshmintCompletionDidComplete:(BOOL)complete;
- (void)upgradeFlowManagerDidCancel:(id)cancel;
- (void)upgradeFlowManagerDidComplete:(id)complete;
@end

@implementation ICQPreferencesFreshmintManager

- (void)beginFlowWithDelegate:(id)delegate offer:(id)offer url:(id)url completion:(id)completion
{
  completionCopy = completion;
  urlCopy = url;
  offerCopy = offer;
  delegateCopy = delegate;
  v14 = _ICQGetLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 0;
    _os_log_impl(&dword_275623000, v14, OS_LOG_TYPE_DEFAULT, "Presenting Freshmint offer.", v19, 2u);
  }

  objc_storeWeak(&self->_delegate, delegateCopy);
  v15 = [[ICQUpgradeFlowManager alloc] initWithOffer:offerCopy];

  [(ICQPreferencesFreshmintManager *)self setFreshmintFlowManager:v15];
  freshmintFlowManager = [(ICQPreferencesFreshmintManager *)self freshmintFlowManager];
  [freshmintFlowManager setDelegate:self];

  v17 = [completionCopy copy];
  [(ICQPreferencesFreshmintManager *)self setFreshmintFlowCompletion:v17];

  freshmintFlowManager2 = [(ICQPreferencesFreshmintManager *)self freshmintFlowManager];
  [freshmintFlowManager2 _beginRemoteFlowWithURL:urlCopy];
}

- (void)beginFlowWithICQLink:(id)link presenter:(id)presenter completion:(id)completion
{
  completionCopy = completion;
  presenterCopy = presenter;
  linkCopy = link;
  v10 = [[ICQUpgradeFlowManager alloc] initWithOffer:self->_offer];
  freshmintFlowManager = self->_freshmintFlowManager;
  self->_freshmintFlowManager = v10;

  [(ICQUpgradeFlowManager *)self->_freshmintFlowManager setDelegate:self];
  v12 = [completionCopy copy];

  freshmintFlowCompletion = self->_freshmintFlowCompletion;
  self->_freshmintFlowCompletion = v12;

  [(ICQUpgradeFlowManager *)self->_freshmintFlowManager beginRemoteUpgradeFlowWithICQLink:linkCopy presenter:presenterCopy];
}

- (void)upgradeFlowManagerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  [(ICQPreferencesFreshmintManager *)self runFreshmintCompletionDidComplete:0];
  delegate = [(ICQPreferencesFreshmintManager *)self delegate];
  [delegate upgradeFlowManagerDidCancel:cancelCopy];
}

- (void)upgradeFlowManagerDidComplete:(id)complete
{
  completeCopy = complete;
  [(ICQPreferencesFreshmintManager *)self runFreshmintCompletionDidComplete:1];
  delegate = [(ICQPreferencesFreshmintManager *)self delegate];
  [delegate upgradeFlowManagerDidComplete:completeCopy];
}

- (void)runFreshmintCompletionDidComplete:(BOOL)complete
{
  [(ICQPreferencesFreshmintManager *)self setShouldShowFreshmint:0];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __68__ICQPreferencesFreshmintManager_runFreshmintCompletionDidComplete___block_invoke;
  v5[3] = &unk_27A65A930;
  v5[4] = self;
  completeCopy = complete;
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