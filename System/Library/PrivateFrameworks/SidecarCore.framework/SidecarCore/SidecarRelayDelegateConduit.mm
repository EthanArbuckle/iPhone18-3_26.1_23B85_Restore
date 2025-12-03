@interface SidecarRelayDelegateConduit
- (void)sendDataRequest:(id)request completion:(id)completion;
@end

@implementation SidecarRelayDelegateConduit

- (void)sendDataRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v7 = SidecarCoreLogSubsystem(OS_LOG_TYPE_INFO);
  v8 = v7;
  if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_26604C000, v8, OS_LOG_TYPE_INFO, "Sending a request to the relay delegate.", buf, 2u);
  }

  v9 = SidecarQueue();
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__SidecarRelayDelegateConduit_sendDataRequest_completion___block_invoke;
  v12[3] = &unk_279BC34C8;
  v13 = requestCopy;
  v14 = completionCopy;
  v10 = requestCopy;
  v11 = completionCopy;
  dispatch_async(v9, v12);
}

void __58__SidecarRelayDelegateConduit_sendDataRequest_completion___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __58__SidecarRelayDelegateConduit_sendDataRequest_completion___block_invoke_2;
  v3[3] = &unk_279BC3278;
  v4 = *(a1 + 40);
  v2 = SidecarRelayProxyAsync(0, v3);
  [v2 relayDelegateSendDataRequest:*(a1 + 32) completion:*(a1 + 40)];
}

void __58__SidecarRelayDelegateConduit_sendDataRequest_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SidecarCoreLogSubsystem(OS_LOG_TYPE_ERROR);
  v5 = v4;
  if (v4 && os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_26604C000, v5, OS_LOG_TYPE_ERROR, "Encountered error while trying to send a request to the relay delegate.  The error will be logged separately.", buf, 2u);
  }

  v6 = v3;
  if (v6)
  {
    v10 = SidecarCoreLogSubsystem(OS_LOG_TYPE_ERROR);
    if (v10)
    {
      log = v10;
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
      v10 = log;
      if (v11)
      {
        v12 = [v6 domain];
        v13 = [v6 code];
        v14 = [v6 localizedDescription];
        *buf = 138543875;
        v17 = v12;
        v18 = 2048;
        v19 = v13;
        v20 = 2113;
        v21 = v14;
        _os_log_impl(&dword_26604C000, log, OS_LOG_TYPE_ERROR, "%{public}@ (%ld) %{private}@", buf, 0x20u);

        v10 = log;
      }
    }
  }

  v7 = *(a1 + 32);
  v8 = [MEMORY[0x277CBEA90] data];
  (*(v7 + 16))(v7, v8, v6);

  v9 = *MEMORY[0x277D85DE8];
}

@end