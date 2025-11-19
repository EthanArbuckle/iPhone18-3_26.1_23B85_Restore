@interface LTDContinuationOperation
@end

@implementation LTDContinuationOperation

void __72___LTDContinuationOperation_initWithGroupID_delegate_continuationBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __72___LTDContinuationOperation_initWithGroupID_delegate_continuationBlock___block_invoke_2;
    v5[3] = &unk_2789B5B70;
    v6 = WeakRetained;
    (*(v4 + 16))(v4, v5);
  }
}

uint64_t __72___LTDContinuationOperation_initWithGroupID_delegate_continuationBlock___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&dword_232E53000, v2, OS_LOG_TYPE_INFO, "Continuation operation finish: %p", &v6, 0xCu);
  }

  result = [*(a1 + 32) setFinished:1];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void __34___LTDContinuationOperation_start__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v4 = objc_loadWeakRetained((a1 + 32));
    v5 = [v4 isFinished];

    if ((v5 & 1) == 0)
    {
      if (*(a1 + 40) == 1)
      {
        v6 = objc_loadWeakRetained((a1 + 32));
        [v6 cancel];

        v7 = _LTOSLogTranslationEngine();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
        {
          __34___LTDContinuationOperation_start__block_invoke_cold_2(v7);
        }
      }

      else
      {
        v8 = _LTOSLogTranslationEngine();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
        {
          __34___LTDContinuationOperation_start__block_invoke_cold_1(v8);
        }
      }
    }
  }
}

void __34___LTDContinuationOperation_start__block_invoke_14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    v4 = [v3 isFinished];

    if ((v4 & 1) == 0)
    {
      v5 = _LTOSLogTranslationEngine();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __34___LTDContinuationOperation_start__block_invoke_14_cold_1(v5);
      }
    }
  }
}

@end