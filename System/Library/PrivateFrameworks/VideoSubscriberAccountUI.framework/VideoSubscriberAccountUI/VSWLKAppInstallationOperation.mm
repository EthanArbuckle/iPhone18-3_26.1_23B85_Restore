@interface VSWLKAppInstallationOperation
- (void)executionDidBegin;
- (void)setInstallable:(id)installable;
@end

@implementation VSWLKAppInstallationOperation

- (void)setInstallable:(id)installable
{
  installableCopy = installable;
  objc_storeStrong(&self->_installable, installable);
  appAdamIDs = [installableCopy appAdamIDs];
  firstObject = [appAdamIDs firstObject];

  if (!firstObject)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [[installable appAdamIDs] firstObject] parameter must not be nil."];
  }

  appAdamIDs2 = [installableCopy appAdamIDs];
  firstObject2 = [appAdamIDs2 firstObject];

  [(VSWLKAppInstallationOperation *)self setAppAdamID:firstObject2];
}

- (void)executionDidBegin
{
  objc_initWeak(&location, self);
  defaultAppInstaller = [MEMORY[0x277D7A930] defaultAppInstaller];
  installable = [(VSWLKAppInstallationOperation *)self installable];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__VSWLKAppInstallationOperation_executionDidBegin__block_invoke;
  v7[3] = &unk_279E1A560;
  objc_copyWeak(&v8, &location);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__VSWLKAppInstallationOperation_executionDidBegin__block_invoke_15;
  v5[3] = &unk_279E194D0;
  objc_copyWeak(&v6, &location);
  [defaultAppInstaller installAppForInstallable:installable progressHandler:v7 completion:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __50__VSWLKAppInstallationOperation_executionDidBegin__block_invoke(uint64_t a1, double a2)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = VSDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v13 = a2;
    _os_log_impl(&dword_270DD4000, v4, OS_LOG_TYPE_DEFAULT, "VSWLKAppInstallationOperation - Install Progress %f", buf, 0xCu);
  }

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  v6 = [WeakRetained appAdamID];
  v10[1] = @"VSWLKAppInstallationOperationNotificationUserInfoInstallProgressKey";
  v11[0] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:a2];
  v11[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  [v5 postNotificationName:@"VSWLKAppInstallationOperationProgressDidChange" object:0 userInfo:v8];

  v9 = *MEMORY[0x277D85DE8];
}

void __50__VSWLKAppInstallationOperation_executionDidBegin__block_invoke_15(uint64_t a1, void *a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = MEMORY[0x277CE2298];
  v5 = MEMORY[0x277CE2250];
  if (v9)
  {
    v6 = [MEMORY[0x277CE2250] failableWithError:v9];
    v7 = [v4 optionalWithObject:v6];
    [WeakRetained setResult:v7];
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x277D82BB8]);
    v7 = [v5 failableWithObject:v6];
    v8 = [v4 optionalWithObject:v7];
    [WeakRetained setResult:v8];
  }

  [WeakRetained finishExecutionIfPossible];
}

@end