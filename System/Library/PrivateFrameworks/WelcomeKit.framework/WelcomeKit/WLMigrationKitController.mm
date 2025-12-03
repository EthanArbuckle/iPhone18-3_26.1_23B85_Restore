@interface WLMigrationKitController
- (WLDataMigrationDelegate)delegate;
- (void)cancel;
- (void)daemonDidGetInterrupted;
- (void)run:(id)run;
@end

@implementation WLMigrationKitController

- (void)run:(id)run
{
  runCopy = run;
  [(WLMigrationKitController *)self setDelegate:runCopy];
  objc_initWeak(&location, self);
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __32__WLMigrationKitController_run___block_invoke;
  v9 = &unk_279EB40B0;
  objc_copyWeak(&v10, &location);
  [(WLDaemonConnection *)self setInterruptionHandler:&v6];
  v5 = [(WLDaemonConnection *)self daemonWithErrorHandler:&__block_literal_global_2, v6, v7, v8, v9];
  [v5 startMigrationUsingRetryPolicies:0 delegate:runCopy useMigrationKit:1 replyBlock:&__block_literal_global_5];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __32__WLMigrationKitController_run___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained daemonDidGetInterrupted];
}

- (void)cancel
{
  v2 = [(WLDaemonConnection *)self daemonWithErrorHandler:&__block_literal_global_10];
  [v2 cancel];
}

- (void)daemonDidGetInterrupted
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained dataMigratorDidGetInterrupted];
}

- (WLDataMigrationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end