@interface SiriPresentationStateProvider
- (SiriPresentationStateProvider)initWithSiriPresentationIdentifier:(int64_t)a3 delegate:(id)a4;
- (SiriPresentationStateProviderDelegate)delegate;
- (void)_dispatchedDiffAndApplyMutatedStatus:(id)a3;
- (void)_invokeOnDispatchQueue:(id)a3;
- (void)_setupProviderForSiriPresentationIdentifier:(int64_t)a3;
- (void)barrierWithCompletion:(id)a3;
- (void)stopProvidingPresentationStateUpdatesAndResendLastUpdateOnResumption:(BOOL)a3;
@end

@implementation SiriPresentationStateProvider

- (SiriPresentationStateProvider)initWithSiriPresentationIdentifier:(int64_t)a3 delegate:(id)a4
{
  v6 = a4;
  v13.receiver = self;
  v13.super_class = SiriPresentationStateProvider;
  v7 = [(SiriPresentationStateProvider *)&v13 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_delegate, v6);
    v9 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v10 = dispatch_queue_create("SiriPresentationStateProvider", v9);
    dispatchQueue = v8->_dispatchQueue;
    v8->_dispatchQueue = v10;

    [(SiriPresentationStateProvider *)v8 _setupProviderForSiriPresentationIdentifier:a3];
  }

  return v8;
}

- (void)_setupProviderForSiriPresentationIdentifier:(int64_t)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __77__SiriPresentationStateProvider__setupProviderForSiriPresentationIdentifier___block_invoke;
  v3[3] = &__block_descriptor_40_e39_v16__0__SiriPresentationStateProvider_8l;
  v3[4] = a3;
  [(SiriPresentationStateProvider *)self _invokeOnDispatchQueue:v3];
}

void __77__SiriPresentationStateProvider__setupProviderForSiriPresentationIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D55190];
  v4 = a2;
  v5 = [v3 alloc];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__SiriPresentationStateProvider__setupProviderForSiriPresentationIdentifier___block_invoke_2;
  v7[3] = &__block_descriptor_40_e40_v16__0___SASPresentationStateMutating__8l;
  v7[4] = *(a1 + 32);
  v6 = [v5 initWithBuilder:v7];
  [v4 _dispatchedDiffAndApplyMutatedStatus:v6];
}

void __77__SiriPresentationStateProvider__setupProviderForSiriPresentationIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v2 stringWithSiriPresentationIdentifier:v3];
  [v4 setPresentationIdentifier:v5];
}

void __71__SiriPresentationStateProvider_beginProvidingPresentationStateUpdates__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SiriPresentationStateProvider beginProvidingPresentationStateUpdates]_block_invoke";
    _os_log_impl(&dword_21FEE5000, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v6, 0xCu);
  }

  [v2 setShouldProvideUpdates:1];
  if ([v2 updatesAvailable])
  {
    v4 = [v2 delegate];
    [v4 presentationStateProvider:v2 presentationStateDidChange:v2[1]];

    [v2 setUpdatesAvailable:0];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)stopProvidingPresentationStateUpdatesAndResendLastUpdateOnResumption:(BOOL)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __102__SiriPresentationStateProvider_stopProvidingPresentationStateUpdatesAndResendLastUpdateOnResumption___block_invoke;
  v3[3] = &__block_descriptor_33_e39_v16__0__SiriPresentationStateProvider_8l;
  v4 = a3;
  [(SiriPresentationStateProvider *)self _invokeOnDispatchQueue:v3];
}

void __102__SiriPresentationStateProvider_stopProvidingPresentationStateUpdatesAndResendLastUpdateOnResumption___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 136315394;
    v8 = "[SiriPresentationStateProvider stopProvidingPresentationStateUpdatesAndResendLastUpdateOnResumption:]_block_invoke";
    v9 = 1024;
    v10 = v5;
    _os_log_impl(&dword_21FEE5000, v4, OS_LOG_TYPE_DEFAULT, "%s resendLastUpdateOnResumption: %{BOOL}d", &v7, 0x12u);
  }

  [v3 setShouldProvideUpdates:0];
  if (*(a1 + 32) == 1 && v3[1])
  {
    [v3 setUpdatesAvailable:1];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)barrierWithCompletion:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__SiriPresentationStateProvider_barrierWithCompletion___block_invoke;
  block[3] = &unk_278430020;
  v8 = v4;
  v6 = v4;
  dispatch_sync(dispatchQueue, block);
}

uint64_t __55__SiriPresentationStateProvider_barrierWithCompletion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[SiriPresentationStateProvider barrierWithCompletion:]_block_invoke";
    _os_log_impl(&dword_21FEE5000, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    result = (*(result + 16))();
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_dispatchedDiffAndApplyMutatedStatus:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (([(SASPresentationState *)self->_presentationState isEqual:v5]& 1) == 0)
  {
    objc_storeStrong(&self->_presentationState, a3);
    v6 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      presentationState = self->_presentationState;
      v10 = 136315394;
      v11 = "[SiriPresentationStateProvider _dispatchedDiffAndApplyMutatedStatus:]";
      v12 = 2112;
      v13 = presentationState;
      _os_log_impl(&dword_21FEE5000, v6, OS_LOG_TYPE_DEFAULT, "%s New Presentation State detected %@", &v10, 0x16u);
    }

    [(SiriPresentationStateProvider *)self setUpdatesAvailable:1];
    if ([(SiriPresentationStateProvider *)self shouldProvideUpdates])
    {
      v8 = [(SiriPresentationStateProvider *)self delegate];
      [v8 presentationStateProvider:self presentationStateDidChange:self->_presentationState];

      [(SiriPresentationStateProvider *)self setUpdatesAvailable:0];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_invokeOnDispatchQueue:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_initWeak(&location, self);
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__SiriPresentationStateProvider__invokeOnDispatchQueue___block_invoke;
    block[3] = &unk_278430048;
    objc_copyWeak(&v8, &location);
    v7 = v4;
    dispatch_async(dispatchQueue, block);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

uint64_t __56__SiriPresentationStateProvider__invokeOnDispatchQueue___block_invoke(uint64_t a1)
{
  if (objc_loadWeakRetained((a1 + 40)))
  {
    (*(*(a1 + 32) + 16))();
  }

  return MEMORY[0x2821F96F8]();
}

- (SiriPresentationStateProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end