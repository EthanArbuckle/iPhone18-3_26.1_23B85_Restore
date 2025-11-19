@interface ICQDelayedOfferFailsafeActivityController
+ (void)_runWithDaemon:(id)a3 errorCallback:(id)a4;
+ (void)startActivityWithDelaySecs:(int64_t)a3 completion:(id)a4;
+ (void)stopActivityWithCompletion:(id)a3;
@end

@implementation ICQDelayedOfferFailsafeActivityController

+ (void)_runWithDaemon:(id)a3 errorCallback:(id)a4
{
  v5 = a3;
  v6 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2050000000;
  v7 = getINDaemonConnectionClass_softClass_2;
  v23 = getINDaemonConnectionClass_softClass_2;
  if (!getINDaemonConnectionClass_softClass_2)
  {
    *buf = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __getINDaemonConnectionClass_block_invoke_2;
    v18 = &unk_27A6517A8;
    v19 = &v20;
    __getINDaemonConnectionClass_block_invoke_2(buf);
    v7 = v21[3];
  }

  v8 = v7;
  _Block_object_dispose(&v20, 8);
  v9 = objc_alloc_init(v7);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __74__ICQDelayedOfferFailsafeActivityController__runWithDaemon_errorCallback___block_invoke;
  v13[3] = &unk_27A652590;
  v14 = v6;
  v10 = v6;
  v11 = [v9 daemonWithErrorHandler:v13];
  v12 = _ICQGetLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275572000, v12, OS_LOG_TYPE_DEFAULT, "[SUBD] Successfully fetched the IND XPC Daemon.", buf, 2u);
  }

  v5[2](v5, v11);
}

void __74__ICQDelayedOfferFailsafeActivityController__runWithDaemon_errorCallback___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __74__ICQDelayedOfferFailsafeActivityController__runWithDaemon_errorCallback___block_invoke_cold_1(v3, v4);
  }

  (*(*(a1 + 32) + 16))();
}

+ (void)startActivityWithDelaySecs:(int64_t)a3 completion:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = _ICQGetLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v14 = a3;
    _os_log_impl(&dword_275572000, v7, OS_LOG_TYPE_DEFAULT, "[SUBD] Delayed offer failsafe will trigger in [%lld secs].", buf, 0xCu);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __83__ICQDelayedOfferFailsafeActivityController_startActivityWithDelaySecs_completion___block_invoke;
  v10[3] = &unk_27A652EB8;
  v11 = v6;
  v12 = a3;
  v8 = v6;
  [a1 _runWithDaemon:v10 errorCallback:v8];

  v9 = *MEMORY[0x277D85DE8];
}

void __83__ICQDelayedOfferFailsafeActivityController_startActivityWithDelaySecs_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __83__ICQDelayedOfferFailsafeActivityController_startActivityWithDelaySecs_completion___block_invoke_2;
  v4[3] = &unk_27A652E90;
  v6 = v3;
  v5 = *(a1 + 32);
  [a2 startDelayedOfferFailsafeActivityWithDelaySecs:v3 completion:v4];
}

void __83__ICQDelayedOfferFailsafeActivityController_startActivityWithDelaySecs_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _ICQGetLogSystem();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __83__ICQDelayedOfferFailsafeActivityController_startActivityWithDelaySecs_completion___block_invoke_2_cold_1(a1, v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v8 = 134217984;
    v9 = v6;
    _os_log_impl(&dword_275572000, v5, OS_LOG_TYPE_DEFAULT, "[SUBD] Successfully installed failsafe activity with delaySecs=[%lld].", &v8, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v7 = *MEMORY[0x277D85DE8];
}

+ (void)stopActivityWithCompletion:(id)a3
{
  v4 = a3;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275572000, v5, OS_LOG_TYPE_DEFAULT, "[SUBD] Clearing up the failsafe activity because subd just called us.", buf, 2u);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__ICQDelayedOfferFailsafeActivityController_stopActivityWithCompletion___block_invoke;
  v7[3] = &unk_27A652EE0;
  v8 = v4;
  v6 = v4;
  [a1 _runWithDaemon:v7 errorCallback:v6];
}

void __72__ICQDelayedOfferFailsafeActivityController_stopActivityWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __72__ICQDelayedOfferFailsafeActivityController_stopActivityWithCompletion___block_invoke_2;
  v3[3] = &unk_27A652590;
  v4 = *(a1 + 32);
  [a2 stopDelayedOfferFailsafeActivityWithCompletion:v3];
}

void __72__ICQDelayedOfferFailsafeActivityController_stopActivityWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _ICQGetLogSystem();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __72__ICQDelayedOfferFailsafeActivityController_stopActivityWithCompletion___block_invoke_2_cold_1(v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_275572000, v5, OS_LOG_TYPE_DEFAULT, "[SUBD] Successfully stopped the failsafe activity.", v6, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void __74__ICQDelayedOfferFailsafeActivityController__runWithDaemon_errorCallback___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_275572000, a2, OS_LOG_TYPE_ERROR, "[SUBD] XPC Error while fetching daemon for failsafe activity. error=[%@]", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __83__ICQDelayedOfferFailsafeActivityController_startActivityWithDelaySecs_completion___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  v5 = 134218242;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_275572000, log, OS_LOG_TYPE_ERROR, "[SUBD] Failed to install failsafe activity with delaySecs=[%lld] with error=[%@]", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void __72__ICQDelayedOfferFailsafeActivityController_stopActivityWithCompletion___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_275572000, a2, OS_LOG_TYPE_ERROR, "[SUBD] Failed to stop the failsafe activity with error=[%@].", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end