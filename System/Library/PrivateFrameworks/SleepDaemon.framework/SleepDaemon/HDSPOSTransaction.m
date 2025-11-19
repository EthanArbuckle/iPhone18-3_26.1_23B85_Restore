@interface HDSPOSTransaction
@end

@implementation HDSPOSTransaction

void __49___HDSPOSTransaction_initWithIdentifier_timeout___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __49___HDSPOSTransaction_initWithIdentifier_timeout___block_invoke_2;
  v3[3] = &unk_279C7B108;
  v4 = WeakRetained;
  v2 = WeakRetained;
  [v2 _withLock:v3];
}

uint64_t __49___HDSPOSTransaction_initWithIdentifier_timeout___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2[4])
  {
    v3 = HKSPLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      *v8 = 138543362;
      *&v8[4] = objc_opt_class();
      v7 = *&v8[4];
      _os_log_error_impl(&dword_269B11000, v3, OS_LOG_TYPE_ERROR, "[%{public}@] transaction timed out", v8, 0xCu);
    }

    v2 = *(a1 + 32);
  }

  result = [v2 _locked_release];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

@end