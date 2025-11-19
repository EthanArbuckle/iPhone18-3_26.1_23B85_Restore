@interface HVXPCInternalServer
- (void)deleteContentWithRequest:(id)a3 completion:(id)a4;
- (void)donateSearchableItem:(id)a3 completion:(id)a4;
- (void)harvestWithCompletion:(id)a3;
- (void)overrideIsConnectedToPower:(id)a3 completion:(id)a4;
- (void)refillHarvestBudgetWithCompletion:(id)a3;
- (void)statsWithCompletion:(id)a3;
@end

@implementation HVXPCInternalServer

- (void)harvestWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[HVConsumerCoordinator defaultCoordinator];
  v7 = 0;
  v5 = [v4 harvestContentWithMinimumLevelOfService:1 ignoringDiscretionaryPowerBudget:1 error:&v7 shouldContinueBlock:&__block_literal_global_2543];
  v6 = v7;

  v3[2](v3, v5, v6);
}

- (void)statsWithCompletion:(id)a3
{
  v3 = a3;
  v4 = hv_default_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2321EC000, v4, OS_LOG_TYPE_DEFAULT, "HVXPCInternalServer: statsWithCompletion called.", buf, 2u);
  }

  v5 = objc_opt_new();
  v6 = +[HVConsumerCoordinator defaultCoordinator];
  v15 = 0;
  v7 = [v6 statsWithError:&v15];
  v8 = v15;

  if (v7)
  {
    [v5 setObject:v7 forKeyedSubscript:@"Consumer Coordinator"];
  }

  else if (v8)
  {
    v9 = [v8 description];
    [v5 setObject:v9 forKeyedSubscript:@"Consumer Coordinator Error"];
  }

  v10 = +[HVQueues defaultQueues];
  v14 = 0;
  v11 = [v10 statsWithError:&v14];
  v12 = v14;

  if (v11)
  {
    [v5 setObject:v11 forKeyedSubscript:@"Queues"];
  }

  else if (v12)
  {
    v13 = [v12 description];
    [v5 setObject:v13 forKeyedSubscript:@"Queues Error"];
  }

  v3[2](v3, v5, 0);
}

- (void)deleteContentWithRequest:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = hv_default_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2321EC000, v7, OS_LOG_TYPE_DEFAULT, "HVXPCInternalServer: deleteContentWithRequest called.", buf, 2u);
  }

  v8 = +[HVDonationReceiver defaultReceiver];
  v11 = 0;
  v9 = [v8 deleteContentWithRequest:v6 error:&v11];

  v10 = v11;
  v5[2](v5, v9, v10);
}

- (void)donateSearchableItem:(id)a3 completion:(id)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = a3;
  v7 = hv_default_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2321EC000, v7, OS_LOG_TYPE_DEFAULT, "HVXPCInternalServer: donateSearchableItem called.", buf, 2u);
  }

  v8 = +[HVDonationReceiver defaultReceiver];
  v16[0] = v6;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v10 = [v6 bundleID];
  v14 = 0;
  v11 = [v8 donateSearchableItems:v9 bundleIdentifier:v10 error:&v14];
  v12 = v14;

  v5[2](v5, v11, v12);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)refillHarvestBudgetWithCompletion:(id)a3
{
  v4 = a3;
  v3 = +[HVPowerBudget defaultBudget];
  [v3 refillThrottleBudget];

  v4[2](v4, 1, 0);
}

- (void)overrideIsConnectedToPower:(id)a3 completion:(id)a4
{
  v5 = a4;
  objc_storeStrong(&isConnectedToPowerOverrideForTesting, a3);
  v5[2](v5, 1, 0);
}

@end