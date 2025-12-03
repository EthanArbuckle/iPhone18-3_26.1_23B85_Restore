@interface HVXPCInternalServer
- (void)deleteContentWithRequest:(id)request completion:(id)completion;
- (void)donateSearchableItem:(id)item completion:(id)completion;
- (void)harvestWithCompletion:(id)completion;
- (void)overrideIsConnectedToPower:(id)power completion:(id)completion;
- (void)refillHarvestBudgetWithCompletion:(id)completion;
- (void)statsWithCompletion:(id)completion;
@end

@implementation HVXPCInternalServer

- (void)harvestWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[HVConsumerCoordinator defaultCoordinator];
  v7 = 0;
  v5 = [v4 harvestContentWithMinimumLevelOfService:1 ignoringDiscretionaryPowerBudget:1 error:&v7 shouldContinueBlock:&__block_literal_global_2543];
  v6 = v7;

  completionCopy[2](completionCopy, v5, v6);
}

- (void)statsWithCompletion:(id)completion
{
  completionCopy = completion;
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

  completionCopy[2](completionCopy, v5, 0);
}

- (void)deleteContentWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  v7 = hv_default_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2321EC000, v7, OS_LOG_TYPE_DEFAULT, "HVXPCInternalServer: deleteContentWithRequest called.", buf, 2u);
  }

  v8 = +[HVDonationReceiver defaultReceiver];
  v11 = 0;
  v9 = [v8 deleteContentWithRequest:requestCopy error:&v11];

  v10 = v11;
  completionCopy[2](completionCopy, v9, v10);
}

- (void)donateSearchableItem:(id)item completion:(id)completion
{
  v16[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  itemCopy = item;
  v7 = hv_default_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2321EC000, v7, OS_LOG_TYPE_DEFAULT, "HVXPCInternalServer: donateSearchableItem called.", buf, 2u);
  }

  v8 = +[HVDonationReceiver defaultReceiver];
  v16[0] = itemCopy;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  bundleID = [itemCopy bundleID];
  v14 = 0;
  v11 = [v8 donateSearchableItems:v9 bundleIdentifier:bundleID error:&v14];
  v12 = v14;

  completionCopy[2](completionCopy, v11, v12);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)refillHarvestBudgetWithCompletion:(id)completion
{
  completionCopy = completion;
  v3 = +[HVPowerBudget defaultBudget];
  [v3 refillThrottleBudget];

  completionCopy[2](completionCopy, 1, 0);
}

- (void)overrideIsConnectedToPower:(id)power completion:(id)completion
{
  completionCopy = completion;
  objc_storeStrong(&isConnectedToPowerOverrideForTesting, power);
  completionCopy[2](completionCopy, 1, 0);
}

@end