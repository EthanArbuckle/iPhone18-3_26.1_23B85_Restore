@interface BYBuddyDaemonProximityAutomatedDeviceEnrollmentTargetClient
- (BYBuddyDaemonProximityAutomatedDeviceEnrollmentTargetClient)init;
- (BYBuddyDaemonProximityAutomatedDeviceEnrollmentTargetProtocol)delegate;
- (id)connectionToMachService:(id)a3;
- (void)activateUsingWiFiWithCompletion:(id)a3;
- (void)beginAdvertisingProximityAutomatedDeviceEnrollment;
- (void)configuratorPairingSuccessfulWithViewModel:(id)a3;
- (void)dismissProximityPinCodeWithError:(id)a3;
- (void)displayProximityPinCode:(id)a3;
- (void)displayShutdownUI;
- (void)endAdvertisingProximityAutomatedDeviceEnrollment;
- (void)enrollmentCompleteWithViewModel:(id)a3;
- (void)enrollmentHasStatusUpdateWithViewModel:(id)a3;
- (void)fetchActivationStateWithCompletion:(id)a3;
- (void)shutdown;
@end

@implementation BYBuddyDaemonProximityAutomatedDeviceEnrollmentTargetClient

- (BYBuddyDaemonProximityAutomatedDeviceEnrollmentTargetClient)init
{
  v14.receiver = self;
  v14.super_class = BYBuddyDaemonProximityAutomatedDeviceEnrollmentTargetClient;
  v2 = [(BYBuddyDaemonProximityAutomatedDeviceEnrollmentTargetClient *)&v14 init];
  if (v2)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2050000000;
    v3 = getDMTEnrollmentStatusViewModelClass_softClass;
    v23 = getDMTEnrollmentStatusViewModelClass_softClass;
    if (!getDMTEnrollmentStatusViewModelClass_softClass)
    {
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __getDMTEnrollmentStatusViewModelClass_block_invoke;
      v18 = &unk_1E7D02730;
      v19 = &v20;
      __getDMTEnrollmentStatusViewModelClass_block_invoke(&v15);
      v3 = v21[3];
    }

    v4 = v3;
    _Block_object_dispose(&v20, 8);
    v20 = 0;
    v21 = &v20;
    v22 = 0x2050000000;
    v5 = getDMTEnrollmentCompletionViewModelClass_softClass;
    v23 = getDMTEnrollmentCompletionViewModelClass_softClass;
    if (!getDMTEnrollmentCompletionViewModelClass_softClass)
    {
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __getDMTEnrollmentCompletionViewModelClass_block_invoke;
      v18 = &unk_1E7D02730;
      v19 = &v20;
      __getDMTEnrollmentCompletionViewModelClass_block_invoke(&v15);
      v5 = v21[3];
    }

    v6 = v5;
    _Block_object_dispose(&v20, 8);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = dispatch_queue_create([v8 UTF8String], 0);
    connectionQueue = v2->_connectionQueue;
    v2->_connectionQueue = v9;

    v11 = [(BYBuddyDaemonProximityAutomatedDeviceEnrollmentTargetClient *)v2 connectionToMachService:@"com.apple.purplebuddy.budd.proximityautomateddeviceenrollment.target.xpc"];
    daemonConnection = v2->_daemonConnection;
    v2->_daemonConnection = v11;

    [(NSXPCConnection *)v2->_daemonConnection resume];
  }

  return v2;
}

- (id)connectionToMachService:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:v4 options:0];
  v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F30B4BD8];
  [v5 setRemoteObjectInterface:v6];

  [v5 setExportedObject:self];
  v7 = [objc_opt_class() clientInterface];
  [v5 setExportedInterface:v7];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __87__BYBuddyDaemonProximityAutomatedDeviceEnrollmentTargetClient_connectionToMachService___block_invoke;
  v13[3] = &unk_1E7D027A8;
  v8 = v4;
  v14 = v8;
  [v5 setInvalidationHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __87__BYBuddyDaemonProximityAutomatedDeviceEnrollmentTargetClient_connectionToMachService___block_invoke_77;
  v11[3] = &unk_1E7D027A8;
  v12 = v8;
  v9 = v8;
  [v5 setInterruptionHandler:v11];

  return v5;
}

void __87__BYBuddyDaemonProximityAutomatedDeviceEnrollmentTargetClient_connectionToMachService___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = _BYLoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_1B862F000, v2, OS_LOG_TYPE_DEFAULT, "Connection to %{public}@ invalidated", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __87__BYBuddyDaemonProximityAutomatedDeviceEnrollmentTargetClient_connectionToMachService___block_invoke_77(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = _BYLoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_1B862F000, v2, OS_LOG_TYPE_DEFAULT, "Connection to %{public}@ interrupted", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)beginAdvertisingProximityAutomatedDeviceEnrollment
{
  objc_initWeak(&location, self);
  v3 = [(BYBuddyDaemonProximityAutomatedDeviceEnrollmentTargetClient *)self connectionQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __113__BYBuddyDaemonProximityAutomatedDeviceEnrollmentTargetClient_beginAdvertisingProximityAutomatedDeviceEnrollment__block_invoke;
  v4[3] = &unk_1E7D027D0;
  objc_copyWeak(&v5, &location);
  dispatch_async(v3, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __113__BYBuddyDaemonProximityAutomatedDeviceEnrollmentTargetClient_beginAdvertisingProximityAutomatedDeviceEnrollment__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained daemonConnection];
  v2 = [v1 remoteObjectProxy];
  [v2 beginAdvertisingProximityAutomatedDeviceEnrollment];
}

- (void)endAdvertisingProximityAutomatedDeviceEnrollment
{
  objc_initWeak(&location, self);
  v3 = [(BYBuddyDaemonProximityAutomatedDeviceEnrollmentTargetClient *)self connectionQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __111__BYBuddyDaemonProximityAutomatedDeviceEnrollmentTargetClient_endAdvertisingProximityAutomatedDeviceEnrollment__block_invoke;
  v4[3] = &unk_1E7D027D0;
  objc_copyWeak(&v5, &location);
  dispatch_async(v3, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __111__BYBuddyDaemonProximityAutomatedDeviceEnrollmentTargetClient_endAdvertisingProximityAutomatedDeviceEnrollment__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained daemonConnection];
  v2 = [v1 remoteObjectProxy];
  [v2 endAdvertisingProximityAutomatedDeviceEnrollment];
}

- (void)shutdown
{
  objc_initWeak(&location, self);
  v3 = [(BYBuddyDaemonProximityAutomatedDeviceEnrollmentTargetClient *)self connectionQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __71__BYBuddyDaemonProximityAutomatedDeviceEnrollmentTargetClient_shutdown__block_invoke;
  v4[3] = &unk_1E7D027D0;
  objc_copyWeak(&v5, &location);
  dispatch_async(v3, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __71__BYBuddyDaemonProximityAutomatedDeviceEnrollmentTargetClient_shutdown__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained daemonConnection];
  v2 = [v1 remoteObjectProxy];
  [v2 shutdown];
}

- (void)displayProximityPinCode:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _BYLoggingFacility();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138543362;
    v15 = v7;
    _os_log_impl(&dword_1B862F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v8 = [(BYBuddyDaemonProximityAutomatedDeviceEnrollmentTargetClient *)self connectionQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __87__BYBuddyDaemonProximityAutomatedDeviceEnrollmentTargetClient_displayProximityPinCode___block_invoke;
  v11[3] = &unk_1E7D027F8;
  objc_copyWeak(&v13, buf);
  v12 = v5;
  v9 = v5;
  dispatch_async(v8, v11);

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
  v10 = *MEMORY[0x1E69E9840];
}

void __87__BYBuddyDaemonProximityAutomatedDeviceEnrollmentTargetClient_displayProximityPinCode___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  [v2 displayProximityPinCode:*(a1 + 32)];
}

- (void)dismissProximityPinCodeWithError:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _BYLoggingFacility();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138543362;
    v15 = v7;
    _os_log_impl(&dword_1B862F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v8 = [(BYBuddyDaemonProximityAutomatedDeviceEnrollmentTargetClient *)self connectionQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __96__BYBuddyDaemonProximityAutomatedDeviceEnrollmentTargetClient_dismissProximityPinCodeWithError___block_invoke;
  v11[3] = &unk_1E7D027F8;
  objc_copyWeak(&v13, buf);
  v12 = v5;
  v9 = v5;
  dispatch_async(v8, v11);

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
  v10 = *MEMORY[0x1E69E9840];
}

void __96__BYBuddyDaemonProximityAutomatedDeviceEnrollmentTargetClient_dismissProximityPinCodeWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  [v2 dismissProximityPinCodeWithError:*(a1 + 32)];
}

- (void)configuratorPairingSuccessfulWithViewModel:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _BYLoggingFacility();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138543362;
    v15 = v7;
    _os_log_impl(&dword_1B862F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v8 = [(BYBuddyDaemonProximityAutomatedDeviceEnrollmentTargetClient *)self connectionQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __106__BYBuddyDaemonProximityAutomatedDeviceEnrollmentTargetClient_configuratorPairingSuccessfulWithViewModel___block_invoke;
  v11[3] = &unk_1E7D027F8;
  objc_copyWeak(&v13, buf);
  v12 = v5;
  v9 = v5;
  dispatch_async(v8, v11);

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
  v10 = *MEMORY[0x1E69E9840];
}

void __106__BYBuddyDaemonProximityAutomatedDeviceEnrollmentTargetClient_configuratorPairingSuccessfulWithViewModel___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  [v2 configuratorPairingSuccessfulWithViewModel:*(a1 + 32)];
}

- (void)enrollmentHasStatusUpdateWithViewModel:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _BYLoggingFacility();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138543362;
    v15 = v7;
    _os_log_impl(&dword_1B862F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v8 = [(BYBuddyDaemonProximityAutomatedDeviceEnrollmentTargetClient *)self connectionQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __102__BYBuddyDaemonProximityAutomatedDeviceEnrollmentTargetClient_enrollmentHasStatusUpdateWithViewModel___block_invoke;
  v11[3] = &unk_1E7D027F8;
  objc_copyWeak(&v13, buf);
  v12 = v5;
  v9 = v5;
  dispatch_async(v8, v11);

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
  v10 = *MEMORY[0x1E69E9840];
}

void __102__BYBuddyDaemonProximityAutomatedDeviceEnrollmentTargetClient_enrollmentHasStatusUpdateWithViewModel___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  [v2 enrollmentHasStatusUpdateWithViewModel:*(a1 + 32)];
}

- (void)fetchActivationStateWithCompletion:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _BYLoggingFacility();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138543362;
    v15 = v7;
    _os_log_impl(&dword_1B862F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v8 = [(BYBuddyDaemonProximityAutomatedDeviceEnrollmentTargetClient *)self connectionQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __98__BYBuddyDaemonProximityAutomatedDeviceEnrollmentTargetClient_fetchActivationStateWithCompletion___block_invoke;
  v11[3] = &unk_1E7D02820;
  objc_copyWeak(&v13, buf);
  v12 = v5;
  v9 = v5;
  dispatch_async(v8, v11);

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
  v10 = *MEMORY[0x1E69E9840];
}

void __98__BYBuddyDaemonProximityAutomatedDeviceEnrollmentTargetClient_fetchActivationStateWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  [v2 fetchActivationStateWithCompletion:*(a1 + 32)];
}

- (void)activateUsingWiFiWithCompletion:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _BYLoggingFacility();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138543362;
    v14 = v7;
    _os_log_impl(&dword_1B862F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __95__BYBuddyDaemonProximityAutomatedDeviceEnrollmentTargetClient_activateUsingWiFiWithCompletion___block_invoke;
  v10[3] = &unk_1E7D02820;
  objc_copyWeak(&v12, buf);
  v11 = v5;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v10);

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
  v9 = *MEMORY[0x1E69E9840];
}

void __95__BYBuddyDaemonProximityAutomatedDeviceEnrollmentTargetClient_activateUsingWiFiWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  [v2 activateUsingWiFiWithCompletion:*(a1 + 32)];
}

- (void)enrollmentCompleteWithViewModel:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _BYLoggingFacility();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138543362;
    v14 = v7;
    _os_log_impl(&dword_1B862F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __95__BYBuddyDaemonProximityAutomatedDeviceEnrollmentTargetClient_enrollmentCompleteWithViewModel___block_invoke;
  v10[3] = &unk_1E7D027F8;
  objc_copyWeak(&v12, buf);
  v11 = v5;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v10);

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
  v9 = *MEMORY[0x1E69E9840];
}

void __95__BYBuddyDaemonProximityAutomatedDeviceEnrollmentTargetClient_enrollmentCompleteWithViewModel___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  [v2 enrollmentCompleteWithViewModel:*(a1 + 32)];
}

- (void)displayShutdownUI
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = _BYLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    *buf = 138543362;
    v11 = v5;
    _os_log_impl(&dword_1B862F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v6 = [(BYBuddyDaemonProximityAutomatedDeviceEnrollmentTargetClient *)self connectionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__BYBuddyDaemonProximityAutomatedDeviceEnrollmentTargetClient_displayShutdownUI__block_invoke;
  block[3] = &unk_1E7D027D0;
  objc_copyWeak(&v9, buf);
  dispatch_async(v6, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
  v7 = *MEMORY[0x1E69E9840];
}

void __80__BYBuddyDaemonProximityAutomatedDeviceEnrollmentTargetClient_displayShutdownUI__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 displayShutdownUI];
}

- (BYBuddyDaemonProximityAutomatedDeviceEnrollmentTargetProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end