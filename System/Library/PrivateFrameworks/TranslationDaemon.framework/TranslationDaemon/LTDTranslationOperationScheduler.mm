@interface LTDTranslationOperationScheduler
@end

@implementation LTDTranslationOperationScheduler

void __51___LTDTranslationOperationScheduler_initWithQueue___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained[1] operationCount];
    if (v3)
    {
      v4 = v3;
      v5 = _LTOSLogTranslationEngine();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v7 = 134217984;
        v8 = v4;
        _os_log_impl(&dword_232E53000, v5, OS_LOG_TYPE_INFO, "Offline engine queue has pending operations: %zu", &v7, 0xCu);
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

@end