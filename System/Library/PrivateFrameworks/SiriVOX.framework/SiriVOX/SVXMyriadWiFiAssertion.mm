@interface SVXMyriadWiFiAssertion
- (SVXMyriadWiFiAssertion)initWithQueue:(id)queue delegate:(id)delegate;
- (SVXMyriadWiFiAssertionProtocol)delegate;
- (void)_releaseAssertion;
- (void)acquireHomeKitAccessoryWiFiAssertionWithTimeout:(double)timeout;
- (void)releaseHomeKitAccessoryWiFiAssertion;
@end

@implementation SVXMyriadWiFiAssertion

- (SVXMyriadWiFiAssertionProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)releaseHomeKitAccessoryWiFiAssertion
{
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__SVXMyriadWiFiAssertion_releaseHomeKitAccessoryWiFiAssertion__block_invoke;
  block[3] = &unk_279C68FC0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)acquireHomeKitAccessoryWiFiAssertionWithTimeout:(double)timeout
{
  workQueue = self->_workQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __74__SVXMyriadWiFiAssertion_acquireHomeKitAccessoryWiFiAssertionWithTimeout___block_invoke;
  v4[3] = &unk_279C68C68;
  v4[4] = self;
  *&v4[5] = timeout;
  dispatch_async(workQueue, v4);
}

void __74__SVXMyriadWiFiAssertion_acquireHomeKitAccessoryWiFiAssertionWithTimeout___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _releaseAssertion];
  v2 = *MEMORY[0x277CEF0C0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0C0], OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    *buf = 136315394;
    v16 = "[SVXMyriadWiFiAssertion acquireHomeKitAccessoryWiFiAssertionWithTimeout:]_block_invoke";
    v17 = 2048;
    v18 = v3;
    _os_log_impl(&dword_2695B9000, v2, OS_LOG_TYPE_INFO, "%s Acquiring assertion with timeout time: %f seconds", buf, 0x16u);
  }

  *(*(a1 + 32) + 8) = 1;
  objc_initWeak(buf, *(a1 + 32));
  v4 = objc_alloc(MEMORY[0x277CEF530]);
  v5 = *(a1 + 40);
  v6 = *(*(a1 + 32) + 24);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __74__SVXMyriadWiFiAssertion_acquireHomeKitAccessoryWiFiAssertionWithTimeout___block_invoke_3;
  v13[3] = &unk_279C69088;
  objc_copyWeak(&v14, buf);
  v7 = [v4 initWithTimeoutInterval:v6 onQueue:v13 timeoutHandler:v5];
  v8 = *(a1 + 32);
  v9 = *(v8 + 32);
  *(v8 + 32) = v7;

  [*(*(a1 + 32) + 32) start];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  LOBYTE(v6) = objc_opt_respondsToSelector();

  if (v6)
  {
    v11 = objc_loadWeakRetained((*(a1 + 32) + 16));
    [v11 myriadWiFiAssertionDidAcquireAssertion:*(a1 + 32)];
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
  v12 = *MEMORY[0x277D85DE8];
}

void __74__SVXMyriadWiFiAssertion_acquireHomeKitAccessoryWiFiAssertionWithTimeout___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _releaseAssertion];
}

- (void)_releaseAssertion
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_wifiAssertionAcquired)
  {
    v3 = *MEMORY[0x277CEF0C0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0C0], OS_LOG_TYPE_INFO))
    {
      v9 = 136315138;
      v10 = "[SVXMyriadWiFiAssertion _releaseAssertion]";
      _os_log_impl(&dword_2695B9000, v3, OS_LOG_TYPE_INFO, "%s ", &v9, 0xCu);
    }

    self->_wifiAssertionAcquired = 0;
    [(AFWatchdogTimer *)self->_assertionWaitTimer cancelIfNotAlreadyCanceled];
    assertionWaitTimer = self->_assertionWaitTimer;
    self->_assertionWaitTimer = 0;

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      [v7 myriadWiFiAssertionDidReleaseAssertion:self];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (SVXMyriadWiFiAssertion)initWithQueue:(id)queue delegate:(id)delegate
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = SVXMyriadWiFiAssertion;
  v7 = [(SVXMyriadWiFiAssertion *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_workQueue = queue;
    objc_storeWeak(&v7->_delegate, delegateCopy);
  }

  return v8;
}

@end