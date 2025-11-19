@interface TPSSubscriberTelephonyController
- (BOOL)isSIMPasscodeLockEnabled;
- (NSString)SIMStatus;
- (TPSSubscriberTelephonyController)init;
- (TPSSubscriberTelephonyController)initWithSubscriptionContext:(id)a3;
- (id)getSIMPasscodeLockEnabledValue;
- (id)getSIMPasscodeLockEnabledValueWithError:(id *)a3;
- (id)getSIMPasscodeRemainingAttemptsValue;
- (id)getSIMPasscodeRemainingAttemptsValueWithError:(id *)a3;
- (id)getSIMStatus;
- (id)getSIMStatusWithError:(id *)a3;
- (int64_t)SIMPasscodeRemainingAttempts;
- (void)changePIN:(id)a3 newPin:(id)a4;
- (void)changePIN:(id)a3 newPin:(id)a4 completion:(id)a5;
- (void)fetchSIMPasscodeLockEnabled;
- (void)fetchSIMPasscodeLockEnabledWithCompletion:(id)a3;
- (void)fetchSIMPasscodeRemainingAttempts;
- (void)fetchSIMPasscodeRemainingAttemptsWithCompletion:(id)a3;
- (void)fetchSIMStatus;
- (void)fetchSIMStatusWithCompletion:(id)a3;
- (void)getSIMPasscodeRemainingAttemptsValue;
- (void)getSIMStatus;
- (void)presentSIMPasscodeAlert;
- (void)setSIMPasscodeLockEnabled:(BOOL)a3;
- (void)setSIMPasscodeRemainingAttempts:(int64_t)a3;
- (void)setSIMStatus:(id)a3;
- (void)simLockSaveRequestDidComplete:(id)a3 success:(BOOL)a4;
- (void)simPinChangeRequestDidComplete:(id)a3 success:(BOOL)a4;
- (void)simPinEntryErrorDidOccur:(id)a3 status:(id)a4;
- (void)simPukEntryErrorDidOccur:(id)a3 status:(id)a4;
- (void)simStatusDidChange:(id)a3 status:(id)a4;
@end

@implementation TPSSubscriberTelephonyController

- (TPSSubscriberTelephonyController)init
{
  [(TPSSubscriberTelephonyController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (TPSSubscriberTelephonyController)initWithSubscriptionContext:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = TPSSubscriberTelephonyController;
  v6 = [(TPSTelephonyController *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_subscriptionContext, a3);
    v7->_SIMPasscodeRemainingAttempts = 0x7FFFFFFFFFFFFFFFLL;
    v8 = [(TPSSubscriberTelephonyController *)v7 getSIMStatus];
    v9 = [v8 copy];
    SIMStatus = v7->_SIMStatus;
    v7->_SIMStatus = v9;

    [(TPSSubscriberTelephonyController *)v7 fetchSIMPasscodeLockEnabled];
    [(TPSSubscriberTelephonyController *)v7 fetchSIMPasscodeRemainingAttempts];
  }

  return v7;
}

- (BOOL)isSIMPasscodeLockEnabled
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__TPSSubscriberTelephonyController_isSIMPasscodeLockEnabled__block_invoke;
  v4[3] = &unk_2782E3988;
  v4[4] = self;
  v4[5] = &v5;
  [(TPSTelephonyController *)self performAtomicAccessorBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)setSIMPasscodeLockEnabled:(BOOL)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __62__TPSSubscriberTelephonyController_setSIMPasscodeLockEnabled___block_invoke;
  v3[3] = &unk_2782E3D58;
  v3[4] = self;
  v4 = a3;
  [(TPSTelephonyController *)self performAtomicAccessorBlock:v3];
}

uint64_t __62__TPSSubscriberTelephonyController_setSIMPasscodeLockEnabled___block_invoke(uint64_t result)
{
  v3 = *(result + 32);
  v4 = *(result + 40);
  if (*(v3 + 72) != v4)
  {
    v8 = v1;
    v9 = v2;
    *(v3 + 72) = v4;
    v5 = *(result + 32);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __62__TPSSubscriberTelephonyController_setSIMPasscodeLockEnabled___block_invoke_2;
    v6[3] = &unk_2782E3D58;
    v6[4] = v5;
    v7 = *(result + 40);
    return [v5 performAtomicDelegateBlock:v6];
  }

  return result;
}

void __62__TPSSubscriberTelephonyController_setSIMPasscodeLockEnabled___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [*(a1 + 32) delegateToQueue];
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v8 = [*(a1 + 32) delegateToQueue];
          v9 = [v8 objectForKey:v7];

          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __62__TPSSubscriberTelephonyController_setSIMPasscodeLockEnabled___block_invoke_3;
          block[3] = &unk_2782E3D30;
          v10 = *(a1 + 32);
          block[4] = v7;
          block[5] = v10;
          v13 = *(a1 + 40);
          dispatch_async(v9, block);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (int64_t)SIMPasscodeRemainingAttempts
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__TPSSubscriberTelephonyController_SIMPasscodeRemainingAttempts__block_invoke;
  v4[3] = &unk_2782E3AA0;
  v4[4] = self;
  v4[5] = &v5;
  [(TPSTelephonyController *)self performAtomicAccessorBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __64__TPSSubscriberTelephonyController_SIMPasscodeRemainingAttempts__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[10];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [v2 getSIMPasscodeRemainingAttemptsValue];
    *(*(a1 + 32) + 80) = [v4 integerValue];

    v3 = *(*(a1 + 32) + 80);
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
}

- (void)setSIMPasscodeRemainingAttempts:(int64_t)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __68__TPSSubscriberTelephonyController_setSIMPasscodeRemainingAttempts___block_invoke;
  v3[3] = &unk_2782E3B10;
  v3[4] = self;
  v3[5] = a3;
  [(TPSTelephonyController *)self performAtomicAccessorBlock:v3];
}

uint64_t __68__TPSSubscriberTelephonyController_setSIMPasscodeRemainingAttempts___block_invoke(uint64_t result)
{
  v3 = *(result + 32);
  v4 = *(result + 40);
  if (*(v3 + 80) != v4)
  {
    v9 = v1;
    v10 = v2;
    *(v3 + 80) = v4;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __68__TPSSubscriberTelephonyController_setSIMPasscodeRemainingAttempts___block_invoke_2;
    v6[3] = &unk_2782E3B10;
    v5 = *(result + 40);
    v7 = *(result + 32);
    v8 = v5;
    return [v7 performAtomicDelegateBlock:v6];
  }

  return result;
}

void __68__TPSSubscriberTelephonyController_setSIMPasscodeRemainingAttempts___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [*(a1 + 32) delegateToQueue];
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v8 = [*(a1 + 32) delegateToQueue];
          v9 = [v8 objectForKey:v7];

          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __68__TPSSubscriberTelephonyController_setSIMPasscodeRemainingAttempts___block_invoke_3;
          block[3] = &unk_2782E3AE8;
          v10 = *(a1 + 32);
          v11 = *(a1 + 40);
          block[4] = v7;
          block[5] = v10;
          block[6] = v11;
          dispatch_async(v9, block);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (NSString)SIMStatus
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__1;
  v9 = __Block_byref_object_dispose__1;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__TPSSubscriberTelephonyController_SIMStatus__block_invoke;
  v4[3] = &unk_2782E3988;
  v4[4] = self;
  v4[5] = &v5;
  [(TPSTelephonyController *)self performAtomicAccessorBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)setSIMStatus:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__TPSSubscriberTelephonyController_setSIMStatus___block_invoke;
  v6[3] = &unk_2782E39D0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(TPSTelephonyController *)self performAtomicAccessorBlock:v6];
}

void __49__TPSSubscriberTelephonyController_setSIMStatus___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 88) != v2)
  {
    v4 = [v2 copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 88);
    *(v5 + 88) = v4;

    v7 = *(a1 + 32);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __49__TPSSubscriberTelephonyController_setSIMStatus___block_invoke_2;
    v8[3] = &unk_2782E39D0;
    v8[4] = v7;
    v9 = *(a1 + 40);
    [v7 performAtomicDelegateBlock:v8];
  }
}

void __49__TPSSubscriberTelephonyController_setSIMStatus___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [*(a1 + 32) delegateToQueue];
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      v6 = 0;
      do
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v8 = [*(a1 + 32) delegateToQueue];
          v9 = [v8 objectForKey:v7];

          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __49__TPSSubscriberTelephonyController_setSIMStatus___block_invoke_3;
          block[3] = &unk_2782E3888;
          v10 = *(a1 + 32);
          v11 = *(a1 + 40);
          block[4] = v7;
          block[5] = v10;
          v14 = v11;
          dispatch_async(v9, block);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)changePIN:(id)a3 newPin:(id)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__TPSSubscriberTelephonyController_changePIN_newPin___block_invoke;
  v4[3] = &unk_2782E3A48;
  v4[4] = self;
  [(TPSSubscriberTelephonyController *)self changePIN:a3 newPin:a4 completion:v4];
}

void __53__TPSSubscriberTelephonyController_changePIN_newPin___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = [v2 domain];

    if (v4)
    {
      v5 = TPSLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __53__TPSSubscriberTelephonyController_changePIN_newPin___block_invoke_cold_1();
      }
    }
  }
}

- (void)changePIN:(id)a3 newPin:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v12 = [(TPSTelephonyController *)self telephonyClient];
  v11 = [(TPSSubscriberTelephonyController *)self subscriptionContext];
  [v12 changePIN:v11 oldPin:v10 newPin:v9 completion:v8];
}

void __58__TPSSubscriberTelephonyController_setSIMLockEnabled_pin___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = [v2 domain];

    if (v4)
    {
      v5 = TPSLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __58__TPSSubscriberTelephonyController_setSIMLockEnabled_pin___block_invoke_cold_1();
      }
    }
  }
}

- (void)presentSIMPasscodeAlert
{
  v4 = [(TPSTelephonyController *)self telephonyClient];
  v5 = [(TPSSubscriberTelephonyController *)self subscriptionContext];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__TPSSubscriberTelephonyController_presentSIMPasscodeAlert__block_invoke;
  v6[3] = &unk_2782E3DA8;
  v6[4] = self;
  v6[5] = a2;
  [v4 promptForSIMUnlock:v5 completion:v6];
}

void __59__TPSSubscriberTelephonyController_presentSIMPasscodeAlert__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = [v2 domain];

    if (v4)
    {
      v5 = TPSLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __59__TPSSubscriberTelephonyController_presentSIMPasscodeAlert__block_invoke_cold_1();
      }
    }
  }
}

- (id)getSIMPasscodeLockEnabledValue
{
  v20 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v3 = [(TPSSubscriberTelephonyController *)self getSIMPasscodeLockEnabledValueWithError:&v13];
  v4 = v13;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 domain];

    if (v6)
    {
      v7 = TPSLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v10 = objc_opt_class();
        v11 = v10;
        v12 = NSStringFromSelector(a2);
        *buf = 138412802;
        v15 = v10;
        v16 = 2112;
        v17 = v12;
        v18 = 2112;
        v19 = v5;
        _os_log_error_impl(&dword_21B8E9000, v7, OS_LOG_TYPE_ERROR, "[%@ %@] failed with error %@.", buf, 0x20u);
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)getSIMPasscodeLockEnabledValueWithError:(id *)a3
{
  v5 = [(TPSTelephonyController *)self telephonyClient];
  v6 = [(TPSSubscriberTelephonyController *)self subscriptionContext];
  v7 = [v5 fetchSIMLockValue:v6 error:a3];

  return v7;
}

- (void)fetchSIMPasscodeLockEnabled
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __63__TPSSubscriberTelephonyController_fetchSIMPasscodeLockEnabled__block_invoke;
  v2[3] = &unk_2782E3DD0;
  v2[4] = self;
  v2[5] = a2;
  [(TPSSubscriberTelephonyController *)self fetchSIMPasscodeLockEnabledWithCompletion:v2];
}

void __63__TPSSubscriberTelephonyController_fetchSIMPasscodeLockEnabled__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [*(a1 + 32) setSIMPasscodeLockEnabled:{objc_msgSend(a2, "BOOLValue")}];
  if (v5)
  {
    v6 = [v5 domain];

    if (v6)
    {
      v7 = TPSLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9 = *(a1 + 32);
        v10 = objc_opt_class();
        v11 = *(a1 + 40);
        v12 = v10;
        v13 = NSStringFromSelector(v11);
        v14 = 138412802;
        v15 = v10;
        v16 = 2112;
        v17 = v13;
        v18 = 2112;
        v19 = v5;
        _os_log_error_impl(&dword_21B8E9000, v7, OS_LOG_TYPE_ERROR, "[%@ %@] failed with error %@.", &v14, 0x20u);
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)fetchSIMPasscodeLockEnabledWithCompletion:(id)a3
{
  v4 = a3;
  v6 = [(TPSTelephonyController *)self telephonyClient];
  v5 = [(TPSSubscriberTelephonyController *)self subscriptionContext];
  [v6 fetchSIMLockValue:v5 completion:v4];
}

- (id)getSIMPasscodeRemainingAttemptsValue
{
  v8 = 0;
  v2 = [(TPSSubscriberTelephonyController *)self getSIMPasscodeRemainingAttemptsValueWithError:&v8];
  v3 = v8;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 domain];

    if (v5)
    {
      v6 = TPSLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [TPSSubscriberTelephonyController getSIMPasscodeRemainingAttemptsValue];
      }
    }
  }

  return v2;
}

- (id)getSIMPasscodeRemainingAttemptsValueWithError:(id *)a3
{
  v5 = [(TPSTelephonyController *)self telephonyClient];
  v6 = [(TPSSubscriberTelephonyController *)self subscriptionContext];
  v7 = [v5 getRemainingPINAttemptCount:v6 error:a3];

  return v7;
}

- (void)fetchSIMPasscodeRemainingAttempts
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __69__TPSSubscriberTelephonyController_fetchSIMPasscodeRemainingAttempts__block_invoke;
  v2[3] = &unk_2782E3DD0;
  v2[4] = self;
  v2[5] = a2;
  [(TPSSubscriberTelephonyController *)self fetchSIMPasscodeRemainingAttemptsWithCompletion:v2];
}

void __69__TPSSubscriberTelephonyController_fetchSIMPasscodeRemainingAttempts__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [*(a1 + 32) setSIMPasscodeRemainingAttempts:{objc_msgSend(a2, "integerValue")}];
  if (v5)
  {
    v6 = [v5 domain];

    if (v6)
    {
      v7 = TPSLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9 = *(a1 + 32);
        v10 = objc_opt_class();
        v11 = *(a1 + 40);
        v12 = v10;
        v13 = NSStringFromSelector(v11);
        v14 = 138412802;
        v15 = v10;
        v16 = 2112;
        v17 = v13;
        v18 = 2112;
        v19 = v5;
        _os_log_error_impl(&dword_21B8E9000, v7, OS_LOG_TYPE_ERROR, "[%@ %@] failed with error %@.", &v14, 0x20u);
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)fetchSIMPasscodeRemainingAttemptsWithCompletion:(id)a3
{
  v4 = a3;
  v6 = [(TPSTelephonyController *)self telephonyClient];
  v5 = [(TPSSubscriberTelephonyController *)self subscriptionContext];
  [v6 getRemainingPINAttemptCount:v5 completion:v4];
}

- (id)getSIMStatus
{
  v8 = 0;
  v2 = [(TPSSubscriberTelephonyController *)self getSIMStatusWithError:&v8];
  v3 = v8;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 domain];

    if (v5)
    {
      v6 = TPSLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [TPSSubscriberTelephonyController getSIMStatus];
      }
    }
  }

  return v2;
}

- (id)getSIMStatusWithError:(id *)a3
{
  v5 = [(TPSTelephonyController *)self telephonyClient];
  v6 = [(TPSSubscriberTelephonyController *)self subscriptionContext];
  v7 = [v5 getSIMStatus:v6 error:a3];

  return v7;
}

- (void)fetchSIMStatus
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __50__TPSSubscriberTelephonyController_fetchSIMStatus__block_invoke;
  v2[3] = &unk_2782E3DF8;
  v2[4] = self;
  v2[5] = a2;
  [(TPSSubscriberTelephonyController *)self fetchSIMStatusWithCompletion:v2];
}

void __50__TPSSubscriberTelephonyController_fetchSIMStatus__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [*(a1 + 32) setSIMStatus:a2];
  if (v5)
  {
    v6 = [v5 domain];

    if (v6)
    {
      v7 = TPSLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9 = *(a1 + 32);
        v10 = objc_opt_class();
        v11 = *(a1 + 40);
        v12 = v10;
        v13 = NSStringFromSelector(v11);
        v14 = 138412802;
        v15 = v10;
        v16 = 2112;
        v17 = v13;
        v18 = 2112;
        v19 = v5;
        _os_log_error_impl(&dword_21B8E9000, v7, OS_LOG_TYPE_ERROR, "[%@ %@] failed with error %@.", &v14, 0x20u);
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)fetchSIMStatusWithCompletion:(id)a3
{
  v4 = a3;
  v6 = [(TPSTelephonyController *)self telephonyClient];
  v5 = [(TPSSubscriberTelephonyController *)self subscriptionContext];
  [v6 getSIMStatus:v5 completion:v4];
}

- (void)simStatusDidChange:(id)a3 status:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 uuid];
  v9 = [(TPSSubscriberTelephonyController *)self subscriptionContext];
  v10 = [v9 uuid];
  v11 = [v8 isEqual:v10];

  if (v11)
  {
    v12 = TPSLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = v7;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_21B8E9000, v12, OS_LOG_TYPE_DEFAULT, "SIM status changed to %@ for subscription context %@.", &v16, 0x16u);
    }

    v13 = [(TPSSubscriberTelephonyController *)self getSIMPasscodeLockEnabledValue];
    -[TPSSubscriberTelephonyController setSIMPasscodeLockEnabled:](self, "setSIMPasscodeLockEnabled:", [v13 BOOLValue]);

    v14 = [(TPSSubscriberTelephonyController *)self getSIMPasscodeRemainingAttemptsValue];
    -[TPSSubscriberTelephonyController setSIMPasscodeRemainingAttempts:](self, "setSIMPasscodeRemainingAttempts:", [v14 integerValue]);

    [(TPSSubscriberTelephonyController *)self setSIMStatus:v7];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)simLockSaveRequestDidComplete:(id)a3 success:(BOOL)a4
{
  v4 = a4;
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 uuid];
  v8 = [(TPSSubscriberTelephonyController *)self subscriptionContext];
  v9 = [v8 uuid];
  v10 = [v7 isEqual:v9];

  if (v10)
  {
    v11 = TPSLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = @"unsuccessful";
      if (v4)
      {
        v12 = @"successful";
      }

      *buf = 138412546;
      v19 = v12;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_21B8E9000, v11, OS_LOG_TYPE_DEFAULT, "SIM lock save request was %@ for subscription context %@.", buf, 0x16u);
    }

    v13 = [(TPSSubscriberTelephonyController *)self getSIMPasscodeLockEnabledValue];
    -[TPSSubscriberTelephonyController setSIMPasscodeLockEnabled:](self, "setSIMPasscodeLockEnabled:", [v13 BOOLValue]);

    v14 = [(TPSSubscriberTelephonyController *)self getSIMPasscodeRemainingAttemptsValue];
    -[TPSSubscriberTelephonyController setSIMPasscodeRemainingAttempts:](self, "setSIMPasscodeRemainingAttempts:", [v14 integerValue]);

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __74__TPSSubscriberTelephonyController_simLockSaveRequestDidComplete_success___block_invoke;
    v16[3] = &unk_2782E3D58;
    v16[4] = self;
    v17 = v4;
    [(TPSController *)self performAtomicDelegateBlock:v16];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __74__TPSSubscriberTelephonyController_simLockSaveRequestDidComplete_success___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [*(a1 + 32) delegateToQueue];
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v8 = [*(a1 + 32) delegateToQueue];
          v9 = [v8 objectForKey:v7];

          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __74__TPSSubscriberTelephonyController_simLockSaveRequestDidComplete_success___block_invoke_2;
          block[3] = &unk_2782E3D30;
          v10 = *(a1 + 32);
          block[4] = v7;
          block[5] = v10;
          v13 = *(a1 + 40);
          dispatch_async(v9, block);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)simPinEntryErrorDidOccur:(id)a3 status:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 uuid];
  v7 = [(TPSSubscriberTelephonyController *)self subscriptionContext];
  v8 = [v7 uuid];
  v9 = [v6 isEqual:v8];

  if (v9)
  {
    v10 = TPSLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v5;
      _os_log_impl(&dword_21B8E9000, v10, OS_LOG_TYPE_DEFAULT, "SIM PIN entry attempt failed for subscription context %@.", buf, 0xCu);
    }

    v11 = [(TPSSubscriberTelephonyController *)self getSIMPasscodeRemainingAttemptsValue];
    -[TPSSubscriberTelephonyController setSIMPasscodeRemainingAttempts:](self, "setSIMPasscodeRemainingAttempts:", [v11 integerValue]);

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __68__TPSSubscriberTelephonyController_simPinEntryErrorDidOccur_status___block_invoke;
    v13[3] = &unk_2782E3960;
    v13[4] = self;
    [(TPSController *)self performAtomicDelegateBlock:v13];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __68__TPSSubscriberTelephonyController_simPinEntryErrorDidOccur_status___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [*(a1 + 32) delegateToQueue];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v8 = [*(a1 + 32) delegateToQueue];
          v9 = [v8 objectForKey:v7];

          v12[0] = MEMORY[0x277D85DD0];
          v12[1] = 3221225472;
          v12[2] = __68__TPSSubscriberTelephonyController_simPinEntryErrorDidOccur_status___block_invoke_2;
          v12[3] = &unk_2782E39D0;
          v10 = *(a1 + 32);
          v12[4] = v7;
          v12[5] = v10;
          dispatch_async(v9, v12);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)simPukEntryErrorDidOccur:(id)a3 status:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 uuid];
  v7 = [(TPSSubscriberTelephonyController *)self subscriptionContext];
  v8 = [v7 uuid];
  v9 = [v6 isEqual:v8];

  if (v9)
  {
    v10 = TPSLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v5;
      _os_log_impl(&dword_21B8E9000, v10, OS_LOG_TYPE_DEFAULT, "SIM PUK entry attempt failed for subscription context %@.", buf, 0xCu);
    }

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __68__TPSSubscriberTelephonyController_simPukEntryErrorDidOccur_status___block_invoke;
    v12[3] = &unk_2782E3960;
    v12[4] = self;
    [(TPSController *)self performAtomicDelegateBlock:v12];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __68__TPSSubscriberTelephonyController_simPukEntryErrorDidOccur_status___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [*(a1 + 32) delegateToQueue];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v8 = [*(a1 + 32) delegateToQueue];
          v9 = [v8 objectForKey:v7];

          v12[0] = MEMORY[0x277D85DD0];
          v12[1] = 3221225472;
          v12[2] = __68__TPSSubscriberTelephonyController_simPukEntryErrorDidOccur_status___block_invoke_2;
          v12[3] = &unk_2782E39D0;
          v10 = *(a1 + 32);
          v12[4] = v7;
          v12[5] = v10;
          dispatch_async(v9, v12);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)simPinChangeRequestDidComplete:(id)a3 success:(BOOL)a4
{
  v4 = a4;
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 uuid];
  v8 = [(TPSSubscriberTelephonyController *)self subscriptionContext];
  v9 = [v8 uuid];
  v10 = [v7 isEqual:v9];

  if (v10)
  {
    v11 = TPSLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = @"unsuccessful";
      if (v4)
      {
        v12 = @"successful";
      }

      *buf = 138412546;
      v18 = v12;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_21B8E9000, v11, OS_LOG_TYPE_DEFAULT, "SIM PIN change was %@ for %@.", buf, 0x16u);
    }

    v13 = [(TPSSubscriberTelephonyController *)self getSIMPasscodeRemainingAttemptsValue];
    -[TPSSubscriberTelephonyController setSIMPasscodeRemainingAttempts:](self, "setSIMPasscodeRemainingAttempts:", [v13 integerValue]);

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __75__TPSSubscriberTelephonyController_simPinChangeRequestDidComplete_success___block_invoke;
    v15[3] = &unk_2782E3D58;
    v15[4] = self;
    v16 = v4;
    [(TPSController *)self performAtomicDelegateBlock:v15];
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __75__TPSSubscriberTelephonyController_simPinChangeRequestDidComplete_success___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [*(a1 + 32) delegateToQueue];
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v8 = [*(a1 + 32) delegateToQueue];
          v9 = [v8 objectForKey:v7];

          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __75__TPSSubscriberTelephonyController_simPinChangeRequestDidComplete_success___block_invoke_2;
          block[3] = &unk_2782E3D30;
          v10 = *(a1 + 32);
          block[4] = v7;
          block[5] = v10;
          v13 = *(a1 + 40);
          dispatch_async(v9, block);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __53__TPSSubscriberTelephonyController_changePIN_newPin___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 32);
  v2 = objc_opt_class();
  v3 = OUTLINED_FUNCTION_1_1(v2);
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void __58__TPSSubscriberTelephonyController_setSIMLockEnabled_pin___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  v1 = v0;
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((v0 + 32));
  *(v1 + 40);
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

void __59__TPSSubscriberTelephonyController_presentSIMPasscodeAlert__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  v1 = v0;
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 32);
  v3 = objc_opt_class();
  v4 = *(v1 + 40);
  v5 = v3;
  v12 = NSStringFromSelector(v4);
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x20u);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)getSIMPasscodeRemainingAttemptsValue
{
  OUTLINED_FUNCTION_2();
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_1(v0);
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)getSIMStatus
{
  OUTLINED_FUNCTION_2();
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_1(v0);
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end