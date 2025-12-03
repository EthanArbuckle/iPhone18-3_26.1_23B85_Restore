@interface ICQStoragePlanRecommendation
+ (id)_requestQueue;
- (ICQStoragePlanRecommendation)initWithAccount:(id)account;
- (void)calculateExtraQuotaNeededToSyncIsAccountFull:(BOOL)full completion:(id)completion;
@end

@implementation ICQStoragePlanRecommendation

- (ICQStoragePlanRecommendation)initWithAccount:(id)account
{
  accountCopy = account;
  v9.receiver = self;
  v9.super_class = ICQStoragePlanRecommendation;
  v6 = [(ICQStoragePlanRecommendation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, account);
  }

  return v7;
}

+ (id)_requestQueue
{
  if (_requestQueue_onceToken != -1)
  {
    +[ICQStoragePlanRecommendation _requestQueue];
  }

  v3 = _requestQueue_requestQueue;

  return v3;
}

void __45__ICQStoragePlanRecommendation__requestQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("quota.plan.recommendation.request", v2);
  v1 = _requestQueue_requestQueue;
  _requestQueue_requestQueue = v0;
}

- (void)calculateExtraQuotaNeededToSyncIsAccountFull:(BOOL)full completion:(id)completion
{
  completionCopy = completion;
  _requestQueue = [objc_opt_class() _requestQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__ICQStoragePlanRecommendation_calculateExtraQuotaNeededToSyncIsAccountFull_completion___block_invoke;
  block[3] = &unk_27A6519E8;
  block[4] = self;
  v10 = completionCopy;
  fullCopy = full;
  v8 = completionCopy;
  dispatch_async(_requestQueue, block);
}

void __88__ICQStoragePlanRecommendation_calculateExtraQuotaNeededToSyncIsAccountFull_completion___block_invoke(uint64_t a1)
{
  v2 = +[ICQStoragePlanRecommendationCache sharedInstance];
  v3 = [v2 extraQuotaNeeded];

  v4 = _ICQGetLogSystem();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_275572000, v4, OS_LOG_TYPE_DEFAULT, "Returning cached storage recommendation data.", buf, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_275572000, v4, OS_LOG_TYPE_DEFAULT, "Cache does not exist or expired. Reaching out to daemon to calculate and return estimated total quota usage after turning on all apps.", buf, 2u);
    }

    v6 = _ICQSignpostLogSystem();
    v7 = objc_opt_new();
    v8 = _ICQSignpostCreateWithObject(v6, v7);
    v10 = v9;

    v11 = _ICQSignpostLogSystem();
    v12 = v11;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_275572000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v8, "TotalQuotaUsageAfterTurnOnSync", " enableTelemetry=YES ", buf, 2u);
    }

    v13 = _ICQSignpostLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      __88__ICQStoragePlanRecommendation_calculateExtraQuotaNeededToSyncIsAccountFull_completion___block_invoke_cold_1(v8, v13);
    }

    v34 = 0;
    v35 = &v34;
    v36 = 0x2050000000;
    v14 = getINDaemonConnectionClass_softClass;
    v37 = getINDaemonConnectionClass_softClass;
    if (!getINDaemonConnectionClass_softClass)
    {
      *buf = MEMORY[0x277D85DD0];
      v30 = 3221225472;
      v31 = __getINDaemonConnectionClass_block_invoke;
      v32 = &unk_27A6517A8;
      v33 = &v34;
      __getINDaemonConnectionClass_block_invoke(buf);
      v14 = v35[3];
    }

    v15 = v14;
    _Block_object_dispose(&v34, 8);
    v16 = objc_alloc_init(v14);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __88__ICQStoragePlanRecommendation_calculateExtraQuotaNeededToSyncIsAccountFull_completion___block_invoke_3;
    v25[3] = &unk_27A651998;
    v27 = v8;
    v28 = v10;
    v26 = *(a1 + 40);
    v17 = [v16 synchronousDaemonWithErrorHandler:v25];
    v18 = [*(a1 + 32) account];
    v19 = [v18 aa_altDSID];
    v20 = *(a1 + 48);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __88__ICQStoragePlanRecommendation_calculateExtraQuotaNeededToSyncIsAccountFull_completion___block_invoke_5;
    v21[3] = &unk_27A6519C0;
    v23 = v8;
    v24 = v10;
    v22 = *(a1 + 40);
    [v17 calculateExtraQuotaNeededToSyncForAccountWithID:v19 isAccountFull:v20 completion:v21];
  }
}

void __88__ICQStoragePlanRecommendation_calculateExtraQuotaNeededToSyncIsAccountFull_completion___block_invoke_3(unsigned __int16 *a1, void *a2)
{
  v3 = a2;
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __88__ICQStoragePlanRecommendation_calculateExtraQuotaNeededToSyncIsAccountFull_completion___block_invoke_3_cold_1(v4);
  }

  _ICQSignpostGetNanoseconds(*(a1 + 5), *(a1 + 6));
  v5 = _ICQSignpostLogSystem();
  v6 = v5;
  v7 = *(a1 + 5);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&dword_275572000, v6, OS_SIGNPOST_INTERVAL_END, v7, "TotalQuotaUsageAfterTurnOnSync", "", v9, 2u);
  }

  v8 = _ICQSignpostLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __88__ICQStoragePlanRecommendation_calculateExtraQuotaNeededToSyncIsAccountFull_completion___block_invoke_3_cold_2(a1 + 20);
  }

  (*(*(a1 + 4) + 16))();
}

void __88__ICQStoragePlanRecommendation_calculateExtraQuotaNeededToSyncIsAccountFull_completion___block_invoke_5(unsigned __int16 *a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _ICQGetLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315138;
    v17 = "[ICQStoragePlanRecommendation calculateExtraQuotaNeededToSyncIsAccountFull:completion:]_block_invoke";
    _os_log_impl(&dword_275572000, v7, OS_LOG_TYPE_DEFAULT, "%s request completed.", &v16, 0xCu);
  }

  if (v6)
  {
    v8 = _ICQGetLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __88__ICQStoragePlanRecommendation_calculateExtraQuotaNeededToSyncIsAccountFull_completion___block_invoke_5_cold_1(v6, v8);
    }

LABEL_10:

    goto LABEL_11;
  }

  if (v5)
  {
    v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:300.0];
    v9 = _ICQGetLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v8;
      _os_log_impl(&dword_275572000, v9, OS_LOG_TYPE_DEFAULT, "Caching storage recommendation result with expiry: %@", &v16, 0xCu);
    }

    v10 = +[ICQStoragePlanRecommendationCache sharedInstance];
    [v10 setExtraQuotaNeeded:v5 expiry:v8];

    goto LABEL_10;
  }

LABEL_11:
  _ICQSignpostGetNanoseconds(*(a1 + 5), *(a1 + 6));
  v11 = _ICQSignpostLogSystem();
  v12 = v11;
  v13 = *(a1 + 5);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    LOWORD(v16) = 0;
    _os_signpost_emit_with_name_impl(&dword_275572000, v12, OS_SIGNPOST_INTERVAL_END, v13, "TotalQuotaUsageAfterTurnOnSync", "", &v16, 2u);
  }

  v14 = _ICQSignpostLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    __88__ICQStoragePlanRecommendation_calculateExtraQuotaNeededToSyncIsAccountFull_completion___block_invoke_3_cold_2(a1 + 20);
  }

  (*(*(a1 + 4) + 16))();
  v15 = *MEMORY[0x277D85DE8];
}

void __88__ICQStoragePlanRecommendation_calculateExtraQuotaNeededToSyncIsAccountFull_completion___block_invoke_cold_1(unsigned __int16 a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_debug_impl(&dword_275572000, a2, OS_LOG_TYPE_DEBUG, "SIGNPOST BEGIN [id: %hu]: TotalQuotaUsageAfterTurnOnSync  enableTelemetry=YES ", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

void __88__ICQStoragePlanRecommendation_calculateExtraQuotaNeededToSyncIsAccountFull_completion___block_invoke_3_cold_2(unsigned __int16 *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(&dword_275572000, v2, OS_LOG_TYPE_DEBUG, "SIGNPOST END   [id: %hu]: (%.4fs) TotalQuotaUsageAfterTurnOnSync ", v4, 0x12u);
  v3 = *MEMORY[0x277D85DE8];
}

void __88__ICQStoragePlanRecommendation_calculateExtraQuotaNeededToSyncIsAccountFull_completion___block_invoke_5_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_275572000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch total quota usage with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end