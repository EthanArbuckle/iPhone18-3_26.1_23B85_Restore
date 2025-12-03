@interface WLDataMigrationControllerSurrogate
- (WLDataMigrationControllerSurrogate)initWithDelegate:(id)delegate forceDownloadError:(BOOL)error;
- (void)_startMigrationUsingRetryPolicies:(BOOL)policies;
- (void)startMigrationUsingRetryPolicies:(BOOL)policies;
@end

@implementation WLDataMigrationControllerSurrogate

- (WLDataMigrationControllerSurrogate)initWithDelegate:(id)delegate forceDownloadError:(BOOL)error
{
  v6.receiver = self;
  v6.super_class = WLDataMigrationControllerSurrogate;
  result = [(WLDataMigrationController *)&v6 initWithDelegate:delegate];
  if (result)
  {
    result->_forceDownloadError = error;
  }

  return result;
}

- (void)startMigrationUsingRetryPolicies:(BOOL)policies
{
  objc_initWeak(&location, self);
  v4 = dispatch_get_global_queue(33, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__WLDataMigrationControllerSurrogate_startMigrationUsingRetryPolicies___block_invoke;
  block[3] = &unk_279EB4178;
  objc_copyWeak(&v6, &location);
  policiesCopy = policies;
  dispatch_async(v4, block);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __71__WLDataMigrationControllerSurrogate_startMigrationUsingRetryPolicies___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _startMigrationUsingRetryPolicies:*(a1 + 40)];
}

- (void)_startMigrationUsingRetryPolicies:(BOOL)policies
{
  v25[1] = *MEMORY[0x277D85DE8];
  if (!policies)
  {
    delegate = [(WLDataMigrationController *)self delegate];
    [delegate dataMigrator:0 didUpdateMigrationState:1];

    sleep(1u);
    delegate2 = [(WLDataMigrationController *)self delegate];
    [delegate2 dataMigrator:0 didUpdateMigrationState:2];

    sleep(2u);
  }

  v6 = 0;
  v7 = 0.0;
  v8 = 0.0;
  do
  {
    if (v7 == 0.0)
    {
      delegate3 = [(WLDataMigrationController *)self delegate];
      [delegate3 dataMigrator:0 didUpdateMigrationState:3];
    }

    delegate4 = [(WLDataMigrationController *)self delegate];
    *&v11 = v7;
    [delegate4 dataMigrator:0 didUpdateProgressPercentage:v11];

    if (v8 < 0.8)
    {
      delegate5 = [(WLDataMigrationController *)self delegate];
      [delegate5 dataMigrator:0 didUpdateRemainingDownloadTime:{pow(20.0, (0.8 - v8) * 10.0 * 0.5 / 0.8)}];
    }

    if (!(v6 & 1 | (v8 < 0.8)))
    {
      delegate6 = [(WLDataMigrationController *)self delegate];
      [delegate6 dataMigrator:0 didUpdateMigrationState:4];

      delegate7 = [(WLDataMigrationController *)self delegate];
      [delegate7 dataMigratorDidBecomeRestartable:0];

      v6 = 1;
    }

    sleep(1u);
    if (v7 < 0.25 && v8 > 0.15 && self->_forceDownloadError)
    {
      goto LABEL_15;
    }

    v7 = v8 + 0.1;
    v8 = v7;
  }

  while (v7 < 1.0);
  if (self->_forceDownloadError)
  {
LABEL_15:
    v15 = MEMORY[0x277CCA9B8];
    v24 = @"com.apple.welcomekit.error.offerRetry";
    v25[0] = MEMORY[0x277CBEC38];
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v17 = [v15 errorWithDomain:@"com.apple.welcomekit" code:2 userInfo:v16];

    delegate8 = [(WLDataMigrationController *)self delegate];
    [delegate8 dataMigrator:0 didFailWithError:v17];

    v19 = *MEMORY[0x277D85DE8];
    return;
  }

  delegate9 = [(WLDataMigrationController *)self delegate];
  LODWORD(v21) = 1.0;
  [delegate9 dataMigrator:0 didUpdateProgressPercentage:v21];

  delegate10 = [(WLDataMigrationController *)self delegate];
  [delegate10 dataMigratorDidFinish:0 withImportErrors:0 context:0];
  v22 = *MEMORY[0x277D85DE8];
}

@end