@interface HDSPAppPredictionClient
- (HDSPAppPredictionClient)initWithSleepFocusModeBridge:(id)a3;
- (void)createSuggestedHomeScreenPageWithCompletion:(id)a3;
@end

@implementation HDSPAppPredictionClient

- (HDSPAppPredictionClient)initWithSleepFocusModeBridge:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = HDSPAppPredictionClient;
  v6 = [(HDSPAppPredictionClient *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sleepFocusModeBridge, a3);
    v8 = v7;
  }

  return v7;
}

- (void)createSuggestedHomeScreenPageWithCompletion:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = objc_opt_class();
    v6 = v15;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] creating suggested home screen page", buf, 0xCu);
  }

  v7 = objc_alloc_init(MEMORY[0x277CEB8B8]);
  [v7 setPageType:4];
  v8 = objc_alloc_init(MEMORY[0x277CEB8C8]);
  v9 = objc_alloc_init(MEMORY[0x277CEB8B0]);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __71__HDSPAppPredictionClient_createSuggestedHomeScreenPageWithCompletion___block_invoke;
  v12[3] = &unk_279C7CEA0;
  v12[4] = self;
  v13 = v4;
  v10 = v4;
  [v9 suggestedPagesWithFilter:v7 layoutOptions:v8 completionHandler:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __71__HDSPAppPredictionClient_createSuggestedHomeScreenPageWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    if (![v5 count])
    {
      v7 = HKSPLogForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 32);
        *buf = 138543362;
        v41 = objc_opt_class();
        v13 = v41;
        _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] no suggested pages found", buf, 0xCu);
      }

      goto LABEL_4;
    }

    v8 = *(*(a1 + 32) + 8);
    v38 = 0;
    v9 = [v8 sleepFocusConfiguration:&v38];
    v10 = v38;
    if (v10)
    {
      v11 = HKSPLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v35 = *(a1 + 32);
        v36 = objc_opt_class();
        *buf = 138543618;
        v41 = v36;
        v42 = 2114;
        v43 = v10;
        v37 = v36;
        _os_log_error_impl(&dword_269B11000, v11, OS_LOG_TYPE_ERROR, "[%{public}@] failed to get sleep focus mode: %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v11 = HKSPLogForCategory();
      v14 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      if (v9)
      {
        if (v14)
        {
          v15 = *(a1 + 32);
          v16 = objc_opt_class();
          v17 = v16;
          v18 = [v5 count];
          *buf = 138543618;
          v41 = v16;
          v42 = 2048;
          v43 = v18;
          _os_log_impl(&dword_269B11000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] found %ld pages, creating home screen request", buf, 0x16u);
        }

        v19 = objc_alloc(MEMORY[0x277D66A70]);
        v20 = [v9 uuid];
        v21 = [v20 UUIDString];
        v22 = [v19 initWithFocusModeIdentifier:v21];

        v23 = [v5 firstObject];
        v39 = v23;
        v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
        [v22 setProactivePages:v24];

        [v22 setAppendExistingPages:1];
        [MEMORY[0x277D66A80] addSuggestedHomeScreenPageWithRequest:v22];
        v25 = HKSPLogForCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = *(a1 + 32);
          v27 = objc_opt_class();
          *buf = 138543362;
          v41 = v27;
          v28 = v27;
          _os_log_impl(&dword_269B11000, v25, OS_LOG_TYPE_DEFAULT, "[%{public}@] submitted home screen request", buf, 0xCu);
        }

        (*(*(a1 + 40) + 16))();
        goto LABEL_19;
      }

      if (v14)
      {
        v32 = *(a1 + 32);
        v33 = objc_opt_class();
        *buf = 138543362;
        v41 = v33;
        v34 = v33;
        _os_log_impl(&dword_269B11000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] no sleep focus mode found", buf, 0xCu);
      }
    }

    (*(*(a1 + 40) + 16))();
LABEL_19:

    goto LABEL_20;
  }

  v7 = HKSPLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v30 = *(a1 + 32);
    *buf = 138543618;
    v41 = objc_opt_class();
    v42 = 2114;
    v43 = v6;
    v31 = v41;
    _os_log_error_impl(&dword_269B11000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] failed to get suggested pages: %{public}@", buf, 0x16u);
  }

LABEL_4:

  (*(*(a1 + 40) + 16))();
LABEL_20:

  v29 = *MEMORY[0x277D85DE8];
}

@end