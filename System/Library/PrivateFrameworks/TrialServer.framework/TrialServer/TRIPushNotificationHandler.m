@interface TRIPushNotificationHandler
- (BOOL)_isMissingNotificationFields:(id)a3;
- (TRIPushNotificationHandler)initWithNotificationChecker:(id)a3 hotfixScheduler:(id)a4 rollbackScheduler:(id)a5 experimentUpdateScheduler:(id)a6;
- (void)_handleDeploymentNotification:(id)a3;
- (void)_handleExperimentUpdateNotification:(id)a3;
- (void)_handleRollbackNotification:(id)a3;
- (void)didReceivePushNotification:(id)a3;
@end

@implementation TRIPushNotificationHandler

- (TRIPushNotificationHandler)initWithNotificationChecker:(id)a3 hotfixScheduler:(id)a4 rollbackScheduler:(id)a5 experimentUpdateScheduler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = TRIPushNotificationHandler;
  v15 = [(TRIPushNotificationHandler *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_notificationChecker, a3);
    objc_storeStrong(&v16->_hotfixScheduler, a4);
    objc_storeStrong(&v16->_rollbackScheduler, a5);
    objc_storeStrong(&v16->_experimentUpdateScheduler, a6);
  }

  return v16;
}

- (void)didReceivePushNotification:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"TRIPushNotificationHandler.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"notification"}];
  }

  v6 = [v5 notificationOneOfCase];
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v7 = [v5 experimentNotification];
      [(TRIPushNotificationHandler *)self _handleRollbackNotification:v7];
      goto LABEL_14;
    }

    if (v6 == 3)
    {
      v7 = [v5 experimentUpdateNotification];
      [(TRIPushNotificationHandler *)self _handleExperimentUpdateNotification:v7];
      goto LABEL_14;
    }
  }

  else if (v6)
  {
    if (v6 == 1)
    {
      v7 = [v5 rolloutNotification];
      [(TRIPushNotificationHandler *)self _handleDeploymentNotification:v7];
LABEL_14:
    }
  }

  else
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "Got push notification without content: %@", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_handleDeploymentNotification:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(TRIPushNotificationHandler *)self _isMissingNotificationFields:v4])
  {
    v5 = MEMORY[0x277D737C8];
    v6 = [v4 rolloutId];
    v7 = [v5 deploymentWithRolloutId:v6 deploymentId:{objc_msgSend(v4, "deploymentId")}];

    v8 = [v4 deploymentDate];
    v9 = [v8 date];

    v10 = [(TRIPushNotificationHandler *)self notificationChecker];
    v11 = [v10 reactionForHotfixDeployment:v7 hotfixDeploymentDate:v9];

    if (v11)
    {
      v12 = [v4 notificationProcessingPolicy];
      v13 = [v12 assetDownloadPolicy];
      v14 = TRILogCategory_Server();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138543618;
        v17 = v7;
        v18 = 1026;
        v19 = v13 == 2;
        _os_log_impl(&dword_26F567000, v14, OS_LOG_TYPE_DEFAULT, "Scheduling Hotfix for deployment %{public}@ (any network + battery allowed: %{public}d)", &v16, 0x12u);
      }

      -[TRIHotfixRolloutTargetingSchedulerProtocol scheduleHotfixForDeployment:allowingAnyNetworkingAndBatteryUsage:runDelay:](self->_hotfixScheduler, "scheduleHotfixForDeployment:allowingAnyNetworkingAndBatteryUsage:runDelay:", v7, v13 == 2, arc4random_uniform([v12 delaySeconds]));
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isMissingNotificationFields:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (([v3 hasNotificationProcessingPolicy] & 1) == 0)
  {
    v13 = TRILogCategory_Server();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
LABEL_27:

      v12 = 1;
      goto LABEL_28;
    }

    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v32 = 138412290;
    v33 = v15;
    v16 = "Cannot decode message of type %@ with missing field: notificationProcessingPolicy";
LABEL_14:
    _os_log_error_impl(&dword_26F567000, v13, OS_LOG_TYPE_ERROR, v16, &v32, 0xCu);

    goto LABEL_27;
  }

  v4 = [v3 notificationProcessingPolicy];
  v5 = [v4 hasDelaySeconds];

  if ((v5 & 1) == 0)
  {
    v13 = TRILogCategory_Server();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    v17 = [v3 notificationProcessingPolicy];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v32 = 138412290;
    v33 = v19;
    v20 = "Cannot decode message of type %@ with missing field: delaySeconds";
LABEL_19:
    _os_log_error_impl(&dword_26F567000, v13, OS_LOG_TYPE_ERROR, v20, &v32, 0xCu);

    goto LABEL_27;
  }

  v6 = [v3 notificationProcessingPolicy];
  v7 = [v6 hasAssetDownloadPolicy];

  if ((v7 & 1) == 0)
  {
    v13 = TRILogCategory_Server();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    v17 = [v3 notificationProcessingPolicy];
    v21 = objc_opt_class();
    v19 = NSStringFromClass(v21);
    v32 = 138412290;
    v33 = v19;
    v20 = "Cannot decode message of type %@ with missing field: assetDownloadPolicy";
    goto LABEL_19;
  }

  if (([v3 hasRolloutId] & 1) == 0)
  {
    v22 = TRILogCategory_Server();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      v32 = 138412290;
      v33 = v28;
      _os_log_error_impl(&dword_26F567000, v22, OS_LOG_TYPE_ERROR, "Cannot decode message of type %@ with missing field: rolloutId", &v32, 0xCu);
    }

    v13 = TRILogCategory_Server();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    v23 = objc_opt_class();
    v15 = NSStringFromClass(v23);
    v32 = 138412290;
    v33 = v15;
    v16 = "Cannot decode message of type %@ with missing field: rolloutId";
    goto LABEL_14;
  }

  v8 = [v3 rolloutId];
  v9 = [v8 length];

  if (!v9)
  {
    v13 = TRILogCategory_Server();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    v24 = objc_opt_class();
    v15 = NSStringFromClass(v24);
    v32 = 138412290;
    v33 = v15;
    v16 = "Cannot decode message of type %@ with field of length 0: rolloutId";
    goto LABEL_14;
  }

  if (([v3 hasDeploymentId] & 1) == 0)
  {
    v13 = TRILogCategory_Server();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    v29 = objc_opt_class();
    v15 = NSStringFromClass(v29);
    v32 = 138412290;
    v33 = v15;
    v16 = "Cannot decode message of type %@ with missing field: deploymentId";
    goto LABEL_14;
  }

  v10 = [v3 hasDeploymentDate];
  if ((v10 & 1) == 0)
  {
    v11 = TRILogCategory_Server();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      v32 = 138412290;
      v33 = v31;
      _os_log_error_impl(&dword_26F567000, v11, OS_LOG_TYPE_ERROR, "Cannot decode message of type %@ with missing field: deploymentDate", &v32, 0xCu);
    }
  }

  v12 = v10 ^ 1;
LABEL_28:

  v25 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)_handleRollbackNotification:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 hasExperimentId])
  {
    v5 = [v4 experimentId];
    v6 = [v5 length];

    if (v6)
    {
      v7 = [v4 experimentId];
      v8 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v4, "deploymentIdArray_Count")}];
      if ([(TRINotificationReactionCheckerProtocol *)self->_notificationChecker reactionForRollbackExperimentId:v7])
      {
        v9 = [v4 deploymentIdArray];
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __58__TRIPushNotificationHandler__handleRollbackNotification___block_invoke;
        v20[3] = &unk_279DDF630;
        v10 = v8;
        v21 = v10;
        [v9 enumerateValuesWithBlock:v20];

        v11 = TRILogCategory_Server();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v23 = v7;
          v24 = 2114;
          v25 = v10;
          _os_log_impl(&dword_26F567000, v11, OS_LOG_TYPE_DEFAULT, "Scheduling Urgent Rollback for experiment: %{public}@ deployments: %{public}@", buf, 0x16u);
        }

        [(TRIUrgentRollbackSchedulerProtocol *)self->_rollbackScheduler scheduleUrgentRollbackForExperiment:v7 deploymentIds:v10];
      }

      goto LABEL_13;
    }

    v7 = TRILogCategory_Server();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v19 = objc_opt_class();
    v14 = NSStringFromClass(v19);
    *buf = 138412290;
    v23 = v14;
    v15 = "Cannot decode message of type %@ with field of length 0: experimentId";
LABEL_15:
    _os_log_error_impl(&dword_26F567000, v7, OS_LOG_TYPE_ERROR, v15, buf, 0xCu);

    goto LABEL_13;
  }

  v12 = TRILogCategory_Server();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    *buf = 138412290;
    v23 = v18;
    _os_log_error_impl(&dword_26F567000, v12, OS_LOG_TYPE_ERROR, "Cannot decode message of type %@ with missing field: experimentId", buf, 0xCu);
  }

  v7 = TRILogCategory_Server();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    *buf = 138412290;
    v23 = v14;
    v15 = "Cannot decode message of type %@ with missing field: experimentId";
    goto LABEL_15;
  }

LABEL_13:

  v16 = *MEMORY[0x277D85DE8];
}

void __58__TRIPushNotificationHandler__handleRollbackNotification___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
  [v2 addObject:v3];
}

- (void)_handleExperimentUpdateNotification:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 hasExperimentId])
  {
    v5 = [v4 experimentId];
    v6 = [v5 length];

    if (v6)
    {
      v7 = [v4 deploymentIdArray];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __66__TRIPushNotificationHandler__handleExperimentUpdateNotification___block_invoke;
      v17[3] = &unk_279DE21C8;
      v18 = v4;
      v19 = self;
      [v7 enumerateValuesWithBlock:v17];

      v8 = v18;
      goto LABEL_9;
    }

    v8 = TRILogCategory_Server();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v16 = objc_opt_class();
    v11 = NSStringFromClass(v16);
    *buf = 138412290;
    v21 = v11;
    v12 = "Cannot decode message of type %@ with field of length 0: experimentId";
LABEL_11:
    _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, v12, buf, 0xCu);

    goto LABEL_9;
  }

  v9 = TRILogCategory_Server();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    *buf = 138412290;
    v21 = v15;
    _os_log_error_impl(&dword_26F567000, v9, OS_LOG_TYPE_ERROR, "Cannot decode message of type %@ with missing field: experimentId", buf, 0xCu);
  }

  v8 = TRILogCategory_Server();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    *buf = 138412290;
    v21 = v11;
    v12 = "Cannot decode message of type %@ with missing field: experimentId";
    goto LABEL_11;
  }

LABEL_9:

  v13 = *MEMORY[0x277D85DE8];
}

void __66__TRIPushNotificationHandler__handleExperimentUpdateNotification___block_invoke(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  v5 = objc_alloc(MEMORY[0x277D736C0]);
  v6 = [*(a1 + 32) experimentId];
  v7 = [v5 initWithExperimentId:v6 deploymentId:a2];

  if ([*(*(a1 + 40) + 8) reactionForUpdateExperimentDeployment:v7])
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 32) experimentId];
      v15 = 138543618;
      v16 = v9;
      v17 = 1024;
      v18 = a2;
      _os_log_impl(&dword_26F567000, v8, OS_LOG_TYPE_DEFAULT, "Processing experiment update for experiment: %{public}@ deployment: %u", &v15, 0x12u);
    }

    v10 = *(a1 + 32);
    v11 = *(*(a1 + 40) + 32);
    v12 = [v10 newEndDate];
    v13 = [v12 date];
    [v11 scheduleExperimentUpdateOperationsForExperimentWithNewEndDate:v13 withDeployment:v7];
  }

  objc_autoreleasePoolPop(v4);
  v14 = *MEMORY[0x277D85DE8];
}

@end