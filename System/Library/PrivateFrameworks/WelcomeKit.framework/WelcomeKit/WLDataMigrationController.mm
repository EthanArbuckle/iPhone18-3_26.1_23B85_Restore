@interface WLDataMigrationController
- (WLDataMigrationController)initWithDelegate:(id)a3;
- (WLDataMigrationDelegate)delegate;
- (void)deleteMessages;
- (void)lookupAppDataContainer:(id)a3;
- (void)testAMSPurchase;
@end

@implementation WLDataMigrationController

- (WLDataMigrationController)initWithDelegate:(id)a3
{
  v4 = a3;
  v5 = [(WLDaemonConnection *)self init];
  if (v5)
  {
    objc_initWeak(&location, v5);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __46__WLDataMigrationController_initWithDelegate___block_invoke;
    v7[3] = &unk_279EB40B0;
    objc_copyWeak(&v8, &location);
    [(WLDaemonConnection *)v5 setInterruptionHandler:v7];
    objc_storeWeak(&v5->_delegate, v4);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __46__WLDataMigrationController_initWithDelegate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 5);

    WeakRetained = v4;
    if (v2)
    {
      v3 = objc_loadWeakRetained(v4 + 5);
      [v3 dataMigratorDidGetInterrupted];

      WeakRetained = v4;
    }
  }
}

void __62__WLDataMigrationController_startMigrationUsingRetryPolicies___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v10 = a2;
  _WLLog(v2, 0, @"%@: XPC Error when starting migration - %@", v5, v6, v7, v8, v9, v4);
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  [WeakRetained dataMigrator:0 didFailWithError:v10];
}

void __62__WLDataMigrationController_startMigrationUsingRetryPolicies___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v20 = a2;
  v6 = a3;
  _WLLog(v3, 1, @"%@: startMigration did call daemon with migrator %@ error %@", v7, v8, v9, v10, v11, *(a1 + 32));
  v17 = *(a1 + 32);
  if (v20)
  {
    v18 = v20;
    WeakRetained = *(v17 + 32);
    *(v17 + 32) = v18;
  }

  else
  {
    _WLLog(v3, 0, @"%@: Failed to start migration (nil migrator in reply) - %@", v12, v13, v14, v15, v16, v17);
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
    [WeakRetained dataMigrator:0 didFailWithError:v6];
  }
}

- (void)deleteMessages
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __43__WLDataMigrationController_deleteMessages__block_invoke;
  v3[3] = &unk_279EB4128;
  v3[4] = self;
  v2 = [(WLDaemonConnection *)self daemonWithErrorHandler:v3];
  [v2 deleteMessages];
}

void __43__WLDataMigrationController_deleteMessages__block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v10 = a2;
  _WLLog(v2, 0, @"%@: XPC Error when starting migration - %@", v5, v6, v7, v8, v9, v4);
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  [WeakRetained dataMigrator:0 didFailWithError:v10];
}

- (void)lookupAppDataContainer:(id)a3
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__WLDataMigrationController_lookupAppDataContainer___block_invoke;
  v6[3] = &unk_279EB4128;
  v6[4] = self;
  v4 = a3;
  v5 = [(WLDaemonConnection *)self daemonWithErrorHandler:v6];
  [v5 lookupAppDataContainer:v4];
}

void __52__WLDataMigrationController_lookupAppDataContainer___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v10 = a2;
  _WLLog(v2, 0, @"%@: XPC Error when starting migration - %@", v5, v6, v7, v8, v9, v4);
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  [WeakRetained dataMigrator:0 didFailWithError:v10];
}

- (void)testAMSPurchase
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __44__WLDataMigrationController_testAMSPurchase__block_invoke;
  v3[3] = &unk_279EB4128;
  v3[4] = self;
  v2 = [(WLDaemonConnection *)self daemonWithErrorHandler:v3];
  [v2 testAMSPurchase];
}

void __44__WLDataMigrationController_testAMSPurchase__block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v10 = a2;
  _WLLog(v2, 0, @"%@: XPC Error when starting migration - %@", v5, v6, v7, v8, v9, v4);
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  [WeakRetained dataMigrator:0 didFailWithError:v10];
}

- (WLDataMigrationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end