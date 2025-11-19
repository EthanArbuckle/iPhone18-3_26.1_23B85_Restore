@interface HKSPLimitingScheduler
- (HKSPLimitingScheduler)initWithScheduler:(id)a3;
- (HKSPLimitingScheduler)initWithScheduler:(id)a3 mutexGenerator:(id)a4 ignoreDelays:(BOOL)a5;
- (void)scheduleTask:(id)a3;
@end

@implementation HKSPLimitingScheduler

- (HKSPLimitingScheduler)initWithScheduler:(id)a3
{
  v4 = a3;
  v5 = &__block_literal_global_21;
  v6 = [(HKSPLimitingScheduler *)self initWithScheduler:v4 mutexGenerator:&__block_literal_global_21];

  return v6;
}

- (HKSPLimitingScheduler)initWithScheduler:(id)a3 mutexGenerator:(id)a4 ignoreDelays:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v20.receiver = self;
  v20.super_class = HKSPLimitingScheduler;
  v10 = [(HKSPLimitingScheduler *)&v20 init];
  if (v10)
  {
    v11 = v9[2](v9);
    v12 = HKSPOrderPreservingScheduler(v8, v11);
    orderPreservingScheduler = v10->_orderPreservingScheduler;
    v10->_orderPreservingScheduler = v12;

    v14 = v9[2](v9);
    mutexProvider = v10->_mutexProvider;
    v10->_mutexProvider = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEB58]);
    identifiers = v10->_identifiers;
    v10->_identifiers = v16;

    v10->_ignoreDelays = a5;
    v18 = v10;
  }

  return v10;
}

- (void)scheduleTask:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 identifier];
  if (!v5)
  {
    v6 = [MEMORY[0x277CCAD78] UUID];
    v5 = [v6 UUIDString];

    v7 = HKSPLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543618;
      v19 = objc_opt_class();
      v20 = 2112;
      v21 = v5;
      v14 = v19;
      _os_log_debug_impl(&dword_269A84000, v7, OS_LOG_TYPE_DEBUG, "[%{public}@] generating identifier %@ for task", buf, 0x16u);
    }
  }

  v8 = HKSPLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v12 = objc_opt_class();
    *buf = 138543618;
    v19 = v12;
    v20 = 2112;
    v21 = v5;
    v13 = v12;
    _os_log_debug_impl(&dword_269A84000, v8, OS_LOG_TYPE_DEBUG, "[%{public}@] request to perform %@ task", buf, 0x16u);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __38__HKSPLimitingScheduler_scheduleTask___block_invoke;
  v15[3] = &unk_279C75CC0;
  v15[4] = self;
  v16 = v5;
  v17 = v4;
  v9 = v4;
  v10 = v5;
  [(HKSPLimitingScheduler *)self _withLock:v15];

  v11 = *MEMORY[0x277D85DE8];
}

void __38__HKSPLimitingScheduler_scheduleTask___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 24) containsObject:*(a1 + 40)];
  v3 = HKSPLogForCategory(0);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
  if (v2)
  {
    if (v4)
    {
      v11 = *(a1 + 32);
      v12 = objc_opt_class();
      v13 = *(a1 + 40);
      *buf = 138543618;
      v25 = v12;
      v26 = 2112;
      v27 = v13;
      v14 = v12;
      _os_log_debug_impl(&dword_269A84000, v3, OS_LOG_TYPE_DEBUG, "[%{public}@] %@ task already in progress", buf, 0x16u);
    }
  }

  else
  {
    if (v4)
    {
      v15 = *(a1 + 32);
      v16 = objc_opt_class();
      v18 = *(a1 + 40);
      v17 = *(a1 + 48);
      v19 = v16;
      [v17 delay];
      *buf = 138543874;
      v25 = v16;
      v26 = 2112;
      v27 = v18;
      v28 = 2048;
      v29 = v20;
      _os_log_debug_impl(&dword_269A84000, v3, OS_LOG_TYPE_DEBUG, "[%{public}@] enqueuing %@ task with %f second delay", buf, 0x20u);
    }

    [*(*(a1 + 32) + 24) addObject:*(a1 + 40)];
    v5 = *(a1 + 32);
    v6 = *(v5 + 8);
    if (*(v5 + 32))
    {
      v7 = 0.0;
    }

    else
    {
      [*(a1 + 48) delay];
      v7 = v8;
      v5 = *(a1 + 32);
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __38__HKSPLimitingScheduler_scheduleTask___block_invoke_293;
    v21[3] = &unk_279C75CC0;
    v21[4] = v5;
    v22 = *(a1 + 40);
    v23 = *(a1 + 48);
    v9 = [v6 afterDelay:v21 performBlock:v7];
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __38__HKSPLimitingScheduler_scheduleTask___block_invoke_293(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = HKSPLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    v8 = *(a1 + 40);
    *buf = 138543618;
    v21 = v7;
    v22 = 2112;
    v23 = v8;
    v9 = v7;
    _os_log_debug_impl(&dword_269A84000, v2, OS_LOG_TYPE_DEBUG, "[%{public}@] performing %@ task", buf, 0x16u);
  }

  v3 = *(a1 + 32);
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __38__HKSPLimitingScheduler_scheduleTask___block_invoke_294;
  v17 = &unk_279C73B58;
  v18 = v3;
  v19 = *(a1 + 40);
  [v3 _withLock:&v14];
  [*(a1 + 48) execute];
  v4 = HKSPLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 32);
    v11 = objc_opt_class();
    v12 = *(a1 + 40);
    *buf = 138543618;
    v21 = v11;
    v22 = 2112;
    v23 = v12;
    v13 = v11;
    _os_log_debug_impl(&dword_269A84000, v4, OS_LOG_TYPE_DEBUG, "[%{public}@] finished %@ task", buf, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

@end