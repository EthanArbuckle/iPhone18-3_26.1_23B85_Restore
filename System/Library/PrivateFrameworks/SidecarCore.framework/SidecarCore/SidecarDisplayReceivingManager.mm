@interface SidecarDisplayReceivingManager
- (void)disconnectFromDeviceWithIdentifier:(id)identifier completion:(id)completion;
- (void)fetchDeviceReadinessStatusWithIDSIdentifier:(id)identifier completion:(id)completion;
- (void)fetchSendingDeviceSessionStatesWithCompletion:(id)completion;
- (void)ignoreDetectionForAnchorIdentifier:(id)identifier completion:(id)completion;
- (void)requestConnectionFromDeviceWithIdentifier:(id)identifier completion:(id)completion;
@end

@implementation SidecarDisplayReceivingManager

- (void)fetchDeviceReadinessStatusWithIDSIdentifier:(id)identifier completion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  v7 = SidecarCoreLogSubsystem(OS_LOG_TYPE_DEFAULT);
  v8 = v7;
  if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = identifierCopy;
    _os_log_impl(&dword_26604C000, v8, OS_LOG_TYPE_DEFAULT, "Fetching readiness for identifier: [%{public}@]", buf, 0xCu);
  }

  v9 = SidecarQueue();
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __89__SidecarDisplayReceivingManager_fetchDeviceReadinessStatusWithIDSIdentifier_completion___block_invoke;
  v13[3] = &unk_279BC34C8;
  v14 = identifierCopy;
  v15 = completionCopy;
  v10 = completionCopy;
  v11 = identifierCopy;
  dispatch_async(v9, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void __89__SidecarDisplayReceivingManager_fetchDeviceReadinessStatusWithIDSIdentifier_completion___block_invoke(uint64_t a1)
{
  v3 = MEMORY[0x277D85DD0];
  v4 = 3221225472;
  v5 = __89__SidecarDisplayReceivingManager_fetchDeviceReadinessStatusWithIDSIdentifier_completion___block_invoke_2;
  v6 = &unk_279BC32C8;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v2 = SidecarRelayProxyAsync(0, &v3);
  [v2 relayFetchDeviceReadinessStatusWithIDSIdentifier:*(a1 + 32) completion:{*(a1 + 40), v3, v4, v5, v6}];
}

void __89__SidecarDisplayReceivingManager_fetchDeviceReadinessStatusWithIDSIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SidecarCoreLogSubsystem(OS_LOG_TYPE_ERROR);
  v5 = v4;
  if (v4 && os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    *buf = 138543362;
    v16 = v8;
    _os_log_impl(&dword_26604C000, v5, OS_LOG_TYPE_ERROR, "Encountered error while trying to fetch readiness for device with IDS identifier [%{public}@].  The error will be logged separately.", buf, 0xCu);
  }

  v6 = v3;
  if (v6)
  {
    v9 = SidecarCoreLogSubsystem(OS_LOG_TYPE_ERROR);
    if (v9)
    {
      log = v9;
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
      v9 = log;
      if (v10)
      {
        v11 = [v6 domain];
        v12 = [v6 code];
        v13 = [v6 localizedDescription];
        *buf = 138543875;
        v16 = v11;
        v17 = 2048;
        v18 = v12;
        v19 = 2113;
        v20 = v13;
        _os_log_impl(&dword_26604C000, log, OS_LOG_TYPE_ERROR, "%{public}@ (%ld) %{private}@", buf, 0x20u);

        v9 = log;
      }
    }
  }

  (*(*(a1 + 40) + 16))();
  v7 = *MEMORY[0x277D85DE8];
}

- (void)ignoreDetectionForAnchorIdentifier:(id)identifier completion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  v7 = SidecarCoreLogSubsystem(OS_LOG_TYPE_DEFAULT);
  v8 = v7;
  if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = identifierCopy;
    _os_log_impl(&dword_26604C000, v8, OS_LOG_TYPE_DEFAULT, "Requesting to ignore detection for identifier: [%{public}@]", buf, 0xCu);
  }

  v9 = SidecarQueue();
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __80__SidecarDisplayReceivingManager_ignoreDetectionForAnchorIdentifier_completion___block_invoke;
  v13[3] = &unk_279BC34C8;
  v14 = identifierCopy;
  v15 = completionCopy;
  v10 = completionCopy;
  v11 = identifierCopy;
  dispatch_async(v9, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void __80__SidecarDisplayReceivingManager_ignoreDetectionForAnchorIdentifier_completion___block_invoke(uint64_t a1)
{
  v3 = MEMORY[0x277D85DD0];
  v4 = 3221225472;
  v5 = __80__SidecarDisplayReceivingManager_ignoreDetectionForAnchorIdentifier_completion___block_invoke_2;
  v6 = &unk_279BC32C8;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v2 = SidecarRelayProxyAsync(0, &v3);
  [v2 relayIgnoreDetectionForAnchorIdentifier:*(a1 + 32) completion:{*(a1 + 40), v3, v4, v5, v6}];
}

void __80__SidecarDisplayReceivingManager_ignoreDetectionForAnchorIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SidecarCoreLogSubsystem(OS_LOG_TYPE_ERROR);
  v5 = v4;
  if (v4 && os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    *buf = 138543362;
    v16 = v8;
    _os_log_impl(&dword_26604C000, v5, OS_LOG_TYPE_ERROR, "Encountered error while trying to ignore detection for identifier [%{public}@].  The error will be logged separately.", buf, 0xCu);
  }

  v6 = v3;
  if (v6)
  {
    v9 = SidecarCoreLogSubsystem(OS_LOG_TYPE_ERROR);
    if (v9)
    {
      log = v9;
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
      v9 = log;
      if (v10)
      {
        v11 = [v6 domain];
        v12 = [v6 code];
        v13 = [v6 localizedDescription];
        *buf = 138543875;
        v16 = v11;
        v17 = 2048;
        v18 = v12;
        v19 = 2113;
        v20 = v13;
        _os_log_impl(&dword_26604C000, log, OS_LOG_TYPE_ERROR, "%{public}@ (%ld) %{private}@", buf, 0x20u);

        v9 = log;
      }
    }
  }

  (*(*(a1 + 40) + 16))();
  v7 = *MEMORY[0x277D85DE8];
}

- (void)disconnectFromDeviceWithIdentifier:(id)identifier completion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  v7 = SidecarCoreLogSubsystem(OS_LOG_TYPE_DEFAULT);
  v8 = v7;
  if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = identifierCopy;
    _os_log_impl(&dword_26604C000, v8, OS_LOG_TYPE_DEFAULT, "Disconnecting the virtual display session from device with identifier: [%{public}@].", buf, 0xCu);
  }

  v9 = SidecarQueue();
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __80__SidecarDisplayReceivingManager_disconnectFromDeviceWithIdentifier_completion___block_invoke;
  v13[3] = &unk_279BC34C8;
  v14 = identifierCopy;
  v15 = completionCopy;
  v10 = completionCopy;
  v11 = identifierCopy;
  dispatch_async(v9, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void __80__SidecarDisplayReceivingManager_disconnectFromDeviceWithIdentifier_completion___block_invoke(uint64_t a1)
{
  v3 = MEMORY[0x277D85DD0];
  v4 = 3221225472;
  v5 = __80__SidecarDisplayReceivingManager_disconnectFromDeviceWithIdentifier_completion___block_invoke_2;
  v6 = &unk_279BC32C8;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v2 = SidecarRelayProxyAsync(0, &v3);
  [v2 relayIssueRemoteDisplayDisconnectionRequestToSendingDeviceWithIdentifier:*(a1 + 32) completion:{*(a1 + 40), v3, v4, v5, v6}];
}

void __80__SidecarDisplayReceivingManager_disconnectFromDeviceWithIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SidecarCoreLogSubsystem(OS_LOG_TYPE_ERROR);
  v5 = v4;
  if (v4 && os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    *buf = 138543362;
    v16 = v8;
    _os_log_impl(&dword_26604C000, v5, OS_LOG_TYPE_ERROR, "Encountered error while trying to disconnect the virtual display session from device with identifier: [%{public}@]. The error will be logged separately.", buf, 0xCu);
  }

  v6 = v3;
  if (v6)
  {
    v9 = SidecarCoreLogSubsystem(OS_LOG_TYPE_ERROR);
    if (v9)
    {
      log = v9;
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
      v9 = log;
      if (v10)
      {
        v11 = [v6 domain];
        v12 = [v6 code];
        v13 = [v6 localizedDescription];
        *buf = 138543875;
        v16 = v11;
        v17 = 2048;
        v18 = v12;
        v19 = 2113;
        v20 = v13;
        _os_log_impl(&dword_26604C000, log, OS_LOG_TYPE_ERROR, "%{public}@ (%ld) %{private}@", buf, 0x20u);

        v9 = log;
      }
    }
  }

  (*(*(a1 + 40) + 16))();
  v7 = *MEMORY[0x277D85DE8];
}

- (void)requestConnectionFromDeviceWithIdentifier:(id)identifier completion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  v7 = SidecarCoreLogSubsystem(OS_LOG_TYPE_DEFAULT);
  v8 = v7;
  if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = identifierCopy;
    _os_log_impl(&dword_26604C000, v8, OS_LOG_TYPE_DEFAULT, "Requesting that device with identifier [%{public}@] open a virtual display session with this device.", buf, 0xCu);
  }

  v9 = SidecarQueue();
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __87__SidecarDisplayReceivingManager_requestConnectionFromDeviceWithIdentifier_completion___block_invoke;
  v13[3] = &unk_279BC34C8;
  v14 = identifierCopy;
  v15 = completionCopy;
  v10 = completionCopy;
  v11 = identifierCopy;
  dispatch_async(v9, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void __87__SidecarDisplayReceivingManager_requestConnectionFromDeviceWithIdentifier_completion___block_invoke(uint64_t a1)
{
  v3 = MEMORY[0x277D85DD0];
  v4 = 3221225472;
  v5 = __87__SidecarDisplayReceivingManager_requestConnectionFromDeviceWithIdentifier_completion___block_invoke_2;
  v6 = &unk_279BC32C8;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v2 = SidecarRelayProxyAsync(0, &v3);
  [v2 relayIssueRemoteDisplayConnectionRequestToSendingDeviceWithIdentifier:*(a1 + 32) completion:{*(a1 + 40), v3, v4, v5, v6}];
}

void __87__SidecarDisplayReceivingManager_requestConnectionFromDeviceWithIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SidecarCoreLogSubsystem(OS_LOG_TYPE_ERROR);
  v5 = v4;
  if (v4 && os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    *buf = 138543362;
    v16 = v8;
    _os_log_impl(&dword_26604C000, v5, OS_LOG_TYPE_ERROR, "Encountered error while trying to request that device with identifier [%{public}@] open a virtual display session with this device.  The error will be logged separately.", buf, 0xCu);
  }

  v6 = v3;
  if (v6)
  {
    v9 = SidecarCoreLogSubsystem(OS_LOG_TYPE_ERROR);
    if (v9)
    {
      log = v9;
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
      v9 = log;
      if (v10)
      {
        v11 = [v6 domain];
        v12 = [v6 code];
        v13 = [v6 localizedDescription];
        *buf = 138543875;
        v16 = v11;
        v17 = 2048;
        v18 = v12;
        v19 = 2113;
        v20 = v13;
        _os_log_impl(&dword_26604C000, log, OS_LOG_TYPE_ERROR, "%{public}@ (%ld) %{private}@", buf, 0x20u);

        v9 = log;
      }
    }
  }

  (*(*(a1 + 40) + 16))();
  v7 = *MEMORY[0x277D85DE8];
}

- (void)fetchSendingDeviceSessionStatesWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = SidecarCoreLogSubsystem(OS_LOG_TYPE_INFO);
  v5 = v4;
  if (v4 && os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_26604C000, v5, OS_LOG_TYPE_INFO, "Fetching the sending remote display device session states.", buf, 2u);
  }

  v6 = SidecarQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__SidecarDisplayReceivingManager_fetchSendingDeviceSessionStatesWithCompletion___block_invoke;
  block[3] = &unk_279BC32A0;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(v6, block);
}

void __80__SidecarDisplayReceivingManager_fetchSendingDeviceSessionStatesWithCompletion___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __80__SidecarDisplayReceivingManager_fetchSendingDeviceSessionStatesWithCompletion___block_invoke_2;
  v3[3] = &unk_279BC3278;
  v4 = *(a1 + 32);
  v2 = SidecarRelayProxyAsync(0, v3);
  [v2 relayFetchRemoteDisplaySendingDeviceStatesWithCompletion:*(a1 + 32)];
}

void __80__SidecarDisplayReceivingManager_fetchSendingDeviceSessionStatesWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SidecarCoreLogSubsystem(OS_LOG_TYPE_ERROR);
  v5 = v4;
  if (v4 && os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_26604C000, v5, OS_LOG_TYPE_ERROR, "Encountered error while trying to fetch sending remote display device session states.  The error will be logged separately.", buf, 2u);
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
  v8 = [MEMORY[0x277CBEA60] array];
  (*(v7 + 16))(v7, v8, v6);

  v9 = *MEMORY[0x277D85DE8];
}

@end