@interface TRCompletionOperation
- (void)execute;
@end

@implementation TRCompletionOperation

- (void)execute
{
  v13 = *MEMORY[0x277D85DE8];
  if ([(TRCompletionOperation *)self isCancelled])
  {
    userCancelledError = [objc_opt_class() userCancelledError];
    [(TROperation *)self finishWithError:userCancelledError];
    v3 = *MEMORY[0x277D85DE8];
  }

  else
  {
    if (_TRLogEnabled == 1)
    {
      v4 = TRLogHandle();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v12 = "[TRCompletionOperation execute]";
        _os_log_impl(&dword_26F2A2000, v4, OS_LOG_TYPE_DEFAULT, "%s Send Completion Request", buf, 0xCu);
      }
    }

    v5 = objc_alloc_init(TRSetupCompletionRequest);
    [(TRSetupCompletionRequest *)v5 setCompletedSuccessfully:1];
    objc_initWeak(buf, self);
    session = [(TROperation *)self session];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __32__TRCompletionOperation_execute__block_invoke;
    v9[3] = &unk_279DCECD0;
    objc_copyWeak(&v10, buf);
    [session sendRequest:v5 withResponseHandler:v9];

    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);

    v7 = *MEMORY[0x277D85DE8];
  }
}

void __32__TRCompletionOperation_execute__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (a3)
  {
    [WeakRetained finishWithResult:MEMORY[0x277CBEC10]];
  }

  else
  {
    [WeakRetained finishWithError:v7];
  }
}

@end