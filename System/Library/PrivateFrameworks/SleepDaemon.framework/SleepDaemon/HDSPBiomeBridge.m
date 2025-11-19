@interface HDSPBiomeBridge
@end

@implementation HDSPBiomeBridge

void __39___HDSPBiomeBridge_subscribe_callback___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = [v2 error];
    v7 = 138543618;
    v8 = v4;
    v9 = 2114;
    v10 = v5;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] finished subscribing with error %{public}@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __39___HDSPBiomeBridge_subscribe_callback___block_invoke_406(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = objc_opt_class();
    v10 = 2114;
    v11 = v3;
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] received callback with event %{public}@", &v8, 0x16u);
  }

  v5 = *(a1 + 32);
  v6 = [v3 eventBody];
  (*(v5 + 16))(v5, v6);

  v7 = *MEMORY[0x277D85DE8];
}

@end