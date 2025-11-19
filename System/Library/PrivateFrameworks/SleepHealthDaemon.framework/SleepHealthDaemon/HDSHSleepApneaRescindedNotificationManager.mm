@interface HDSHSleepApneaRescindedNotificationManager
- (BOOL)_isFeatureRescindedWithRequirementsEvaluation:(id)a3;
- (BOOL)_isFeatureUnavailableForNonRescindedReasonWithRequirementsEvaluation:(id)a3;
- (HDSHSleepApneaRescindedNotificationManager)initWithProfile:(id)a3 featureStatusProvider:(id)a4;
- (HDSHSleepApneaRescindedNotificationManager)initWithProfile:(id)a3 featureStatusProvider:(id)a4 queueOverride:(id)a5;
- (id)_categoryIdentifierFromRescindedReason:(id)a3;
- (id)_rescindedNotificationTitleAndBodyKeysWithHighestPriorityUnsatisfiedRequirementIdentifier:(id)a3;
- (id)_rescindedRequirementIdentifiers;
- (void)_queue_checkFeatureStatus;
- (void)_queue_sendNotificationRequestIfNeededWithFeatureStatus:(id)a3;
- (void)_showRescindedNotificationWithTitleAndBodyKeys:(id)a3 rescindedReason:(id)a4;
- (void)featureStatusProviding:(id)a3 didUpdateFeatureStatus:(id)a4;
- (void)profileDidBecomeReady:(id)a3;
@end

@implementation HDSHSleepApneaRescindedNotificationManager

- (HDSHSleepApneaRescindedNotificationManager)initWithProfile:(id)a3 featureStatusProvider:(id)a4 queueOverride:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = HDSHSleepApneaRescindedNotificationManager;
  v11 = [(HDSHSleepApneaRescindedNotificationManager *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_profile, v8);
    objc_storeStrong(&v12->_featureStatusProvider, a4);
    v13 = [objc_alloc(MEMORY[0x277D10718]) initWithCategory:100 domainName:@"com.apple.health.Sleep.SleepApneaRescindedNotification" profile:v8];
    localKeyValueDomain = v12->_localKeyValueDomain;
    v12->_localKeyValueDomain = v13;

    objc_storeStrong(&v12->_queue, a5);
    WeakRetained = objc_loadWeakRetained(&v12->_profile);
    [WeakRetained registerProfileReadyObserver:v12 queue:v12->_queue];
  }

  return v12;
}

- (HDSHSleepApneaRescindedNotificationManager)initWithProfile:(id)a3 featureStatusProvider:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = HKCreateSerialDispatchQueue();
  v9 = [(HDSHSleepApneaRescindedNotificationManager *)self initWithProfile:v7 featureStatusProvider:v6 queueOverride:v8];

  return v9;
}

- (void)profileDidBecomeReady:(id)a3
{
  dispatch_assert_queue_V2(self->_queue);
  featureStatusProvider = self->_featureStatusProvider;
  queue = self->_queue;

  [(HKFeatureStatusProviding *)featureStatusProvider registerObserver:self queue:queue];
}

- (void)featureStatusProviding:(id)a3 didUpdateFeatureStatus:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a4;
  dispatch_assert_queue_V2(self->_queue);
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    *v10 = 138543618;
    *&v10[4] = objc_opt_class();
    *&v10[12] = 2112;
    *&v10[14] = v5;
    v8 = *&v10[4];
    _os_log_impl(&dword_269C02000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Feature status changed to: %@", v10, 0x16u);
  }

  [(HDSHSleepApneaRescindedNotificationManager *)self _queue_sendNotificationRequestIfNeededWithFeatureStatus:v5, *v10, *&v10[16], v11];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_queue_checkFeatureStatus
{
  v16 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  featureStatusProvider = self->_featureStatusProvider;
  v11 = 0;
  v4 = [(HKFeatureStatusProviding *)featureStatusProvider featureStatusWithError:&v11];
  v5 = v11;
  if (v4)
  {
    [(HDSHSleepApneaRescindedNotificationManager *)self _queue_sendNotificationRequestIfNeededWithFeatureStatus:v4];
  }

  else
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC320];
    if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = objc_opt_class();
      *buf = 138543618;
      v13 = v8;
      v14 = 2112;
      v15 = v5;
      v9 = v8;
      _os_log_impl(&dword_269C02000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Feature status is nil with error: %@", buf, 0x16u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_queue_sendNotificationRequestIfNeededWithFeatureStatus:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  queue = self->_queue;
  v5 = a3;
  dispatch_assert_queue_V2(queue);
  v6 = [v5 requirementsEvaluationByContext];

  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277CCBEA0]];

  if (![(HDSHSleepApneaRescindedNotificationManager *)self _isFeatureUnavailableForNonRescindedReasonWithRequirementsEvaluation:v7])
  {
    localKeyValueDomain = self->_localKeyValueDomain;
    v40 = 0;
    v12 = [(HDKeyValueDomain *)localKeyValueDomain dateForKey:@"HDSHSleepApneaRescindedNotificationDateShownKey" error:&v40];
    v13 = v40;
    if (v13)
    {
      _HKInitializeLogging();
      v14 = *MEMORY[0x277CCC320];
      if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
      {
        v15 = v14;
        v16 = objc_opt_class();
        *buf = 138543618;
        v42 = v16;
        v43 = 2112;
        v44 = v13;
        v17 = v16;
        _os_log_impl(&dword_269C02000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] Could not fetch notification last shown date with error: %@", buf, 0x16u);

LABEL_19:
      }

LABEL_20:

      goto LABEL_21;
    }

    if ([(HDSHSleepApneaRescindedNotificationManager *)self _isFeatureRescindedWithRequirementsEvaluation:v7])
    {
      _HKInitializeLogging();
      v18 = MEMORY[0x277CCC320];
      v19 = *MEMORY[0x277CCC320];
      if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
        v21 = objc_opt_class();
        *buf = 138543618;
        v42 = v21;
        v43 = 2112;
        v44 = v12;
        v22 = v21;
        _os_log_impl(&dword_269C02000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] Sleep apnea notifications are rescinded. Notification was last shown: %@", buf, 0x16u);
      }

      if (v12)
      {
        goto LABEL_20;
      }

      v23 = [v7 highestPriorityUnsatisfiedRequirement];
      v15 = [(HDSHSleepApneaRescindedNotificationManager *)self _rescindedNotificationTitleAndBodyKeysWithHighestPriorityUnsatisfiedRequirementIdentifier:v23];

      v24 = [v7 highestPriorityUnsatisfiedRequirement];
      [(HDSHSleepApneaRescindedNotificationManager *)self _showRescindedNotificationWithTitleAndBodyKeys:v15 rescindedReason:v24];

      v25 = self->_localKeyValueDomain;
      v26 = [MEMORY[0x277CBEAA8] now];
      v39 = 0;
      [(HDKeyValueDomain *)v25 setDate:v26 forKey:@"HDSHSleepApneaRescindedNotificationDateShownKey" error:&v39];
      v27 = v39;

      if (v27)
      {
        _HKInitializeLogging();
        v28 = *v18;
        if (os_log_type_enabled(*v18, OS_LOG_TYPE_DEFAULT))
        {
          v29 = v28;
          v30 = objc_opt_class();
          *buf = 138543618;
          v42 = v30;
          v43 = 2112;
          v44 = 0;
          v31 = v30;
          _os_log_impl(&dword_269C02000, v29, OS_LOG_TYPE_DEFAULT, "[%{public}@] Error writing last shown date for notification: %@", buf, 0x16u);
        }
      }
    }

    else
    {
      if (!v12)
      {
        goto LABEL_20;
      }

      [(HDSHSleepApneaRescindedNotificationManager *)self _showRescindedNotificationWithTitleAndBodyKeys:&unk_287A9AD08 rescindedReason:0];
      v32 = self->_localKeyValueDomain;
      v33 = [MEMORY[0x277CBEB98] setWithObject:@"HDSHSleepApneaRescindedNotificationDateShownKey"];
      v38 = 0;
      [(HDKeyValueDomain *)v32 removeValuesForKeys:v33 error:&v38];
      v15 = v38;

      if (!v15)
      {
        goto LABEL_19;
      }

      _HKInitializeLogging();
      v34 = *MEMORY[0x277CCC320];
      if (!os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      v27 = v34;
      v35 = objc_opt_class();
      *buf = 138543618;
      v42 = v35;
      v43 = 2112;
      v44 = 0;
      v36 = v35;
      _os_log_impl(&dword_269C02000, v27, OS_LOG_TYPE_DEFAULT, "[%{public}@] Error resetting last shown date for notification: %@", buf, 0x16u);
    }

    goto LABEL_19;
  }

  _HKInitializeLogging();
  v8 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    *buf = 138543362;
    v42 = objc_opt_class();
    v10 = v42;
    _os_log_impl(&dword_269C02000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Sleep apnea notifications are unavailable for non-rescinded reasons.", buf, 0xCu);
  }

LABEL_21:

  v37 = *MEMORY[0x277D85DE8];
}

- (id)_rescindedNotificationTitleAndBodyKeysWithHighestPriorityUnsatisfiedRequirementIdentifier:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:&unk_287A9AD20];
  if ([v3 isEqualToString:*MEMORY[0x277CCBF30]])
  {
    v5 = @"SLEEP_APNEA_RESCINDED_NOTIFICATION_BODY_REMOTELY_DISABLED";
    v6 = @"SLEEP_APNEA_RESCINDED_NOTIFICATION_TITLE_REMOTELY_DISABLED";
  }

  else if ([v3 isEqualToString:*MEMORY[0x277CCBFD0]])
  {
    v5 = @"SLEEP_APNEA_RESCINDED_NOTIFICATION_BODY_SEED_EXPIRED";
    v6 = @"SLEEP_APNEA_RESCINDED_NOTIFICATION_TITLE_SEED_EXPIRED";
  }

  else if ([v3 isEqualToString:*MEMORY[0x277CCBF08]])
  {
    v5 = @"SLEEP_APNEA_RESCINDED_NOTIFICATION_BODY_UNSUPPORTED_REGION";
    v6 = @"SLEEP_APNEA_RESCINDED_NOTIFICATION_TITLE_UNSUPPORTED_REGION";
  }

  else
  {
    if (![v3 isEqualToString:*MEMORY[0x277CCBF00]])
    {
      goto LABEL_10;
    }

    v5 = @"SLEEP_APNEA_RESCINDED_NOTIFICATION_BODY_WATCH_UNSUPPORTED_REGION";
    v6 = @"SLEEP_APNEA_RESCINDED_NOTIFICATION_TITLE_WATCH_UNSUPPORTED_REGION";
  }

  [v4 setObject:v6 atIndexedSubscript:0];
  [v4 setObject:v5 atIndexedSubscript:1];
LABEL_10:
  v7 = [MEMORY[0x277CBEA60] arrayWithArray:v4];

  return v7;
}

- (void)_showRescindedNotificationWithTitleAndBodyKeys:(id)a3 rescindedReason:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x277CE1F60];
  v8 = a3;
  v9 = objc_alloc_init(v7);
  v10 = MEMORY[0x277CCACA8];
  v11 = [v8 objectAtIndexedSubscript:0];
  v12 = [v10 localizedUserNotificationStringForKey:v11 arguments:0];
  [v9 setTitle:v12];

  v13 = MEMORY[0x277CCACA8];
  v14 = [v8 objectAtIndexedSubscript:1];

  v15 = [v13 localizedUserNotificationStringForKey:v14 arguments:0];
  [v9 setBody:v15];

  v16 = [MEMORY[0x277CE1F70] soundWithAlertType:25];
  [v9 setSound:v16];

  if (v6)
  {
    v17 = [(HDSHSleepApneaRescindedNotificationManager *)self _categoryIdentifierFromRescindedReason:v6];
    [v9 setCategoryIdentifier:v17];
  }

  else
  {
    [v9 setCategoryIdentifier:*MEMORY[0x277D62668]];
  }

  v18 = [MEMORY[0x277CBEB38] dictionary];
  [v18 setObject:&unk_287A9AD50 forKeyedSubscript:*MEMORY[0x277CCE4D0]];
  [v9 setUserInfo:v18];
  v19 = [MEMORY[0x277CBEAA8] date];
  [v9 setDate:v19];
  v20 = [MEMORY[0x277CBEA80] currentCalendar];
  v21 = [v20 hk_dateByAddingDays:1 toDate:v19];
  [v9 setExpirationDate:v21];

  v22 = [MEMORY[0x277CE1FC0] requestWithIdentifier:*MEMORY[0x277D62690] content:v9 trigger:0];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __109__HDSHSleepApneaRescindedNotificationManager__showRescindedNotificationWithTitleAndBodyKeys_rescindedReason___block_invoke;
  v24[3] = &unk_279C830B8;
  v24[4] = self;
  v25 = v22;
  v23 = v22;
  dispatch_async(MEMORY[0x277D85CD0], v24);
}

void __109__HDSHSleepApneaRescindedNotificationManager__showRescindedNotificationWithTitleAndBodyKeys_rescindedReason___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) unitTesting_postNotificationHandler];

  if (v2)
  {
    v12 = [*(a1 + 32) unitTesting_postNotificationHandler];
    v12[2](v12, *(a1 + 40));
    v3 = *MEMORY[0x277D85DE8];
  }

  else
  {
    _HKInitializeLogging();
    v4 = *MEMORY[0x277CCC320];
    if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = v4;
      *buf = 138543362;
      v15 = objc_opt_class();
      v7 = v15;
      _os_log_impl(&dword_269C02000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] About to show rescinded notification for sleep apnea notifications.", buf, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    v9 = [WeakRetained notificationManager];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __109__HDSHSleepApneaRescindedNotificationManager__showRescindedNotificationWithTitleAndBodyKeys_rescindedReason___block_invoke_351;
    v13[3] = &unk_279C83090;
    v10 = *(a1 + 40);
    v13[4] = *(a1 + 32);
    [v9 postNotificationWithRequest:v10 completion:v13];

    v11 = *MEMORY[0x277D85DE8];
  }
}

void __109__HDSHSleepApneaRescindedNotificationManager__showRescindedNotificationWithTitleAndBodyKeys_rescindedReason___block_invoke_351(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC320];
    if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = v5;
      v10 = 138543618;
      v11 = objc_opt_class();
      v12 = 2112;
      v13 = v4;
      v8 = v11;
      _os_log_impl(&dword_269C02000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Error posting rescinded notification: %@", &v10, 0x16u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isFeatureRescindedWithRequirementsEvaluation:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HDSHSleepApneaRescindedNotificationManager *)self _rescindedRequirementIdentifiers];
  v6 = [v4 unsatisfiedRequirementIdentifiers];
  v7 = [v6 componentsJoinedByString:{@", "}];

  _HKInitializeLogging();
  v8 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    *buf = 138543618;
    v23 = objc_opt_class();
    v24 = 2112;
    v25 = v7;
    v10 = v23;
    _os_log_impl(&dword_269C02000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Checking feature status for rescinded reasons: %@", buf, 0x16u);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = [v4 unsatisfiedRequirementIdentifiers];
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = *v18;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v11);
        }

        if ([v5 containsObject:*(*(&v17 + 1) + 8 * i)])
        {
          LOBYTE(v12) = 1;
          goto LABEL_13;
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v15 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)_isFeatureUnavailableForNonRescindedReasonWithRequirementsEvaluation:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HDSHSleepApneaRescindedNotificationManager *)self _rescindedRequirementIdentifiers];
  v6 = [v4 unsatisfiedRequirementIdentifiers];
  v7 = [v6 componentsJoinedByString:{@", "}];

  _HKInitializeLogging();
  v8 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    *buf = 138543618;
    v23 = objc_opt_class();
    v24 = 2112;
    v25 = v7;
    v10 = v23;
    _os_log_impl(&dword_269C02000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Checking feature status for non-rescinded reasons: %@", buf, 0x16u);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = [v4 unsatisfiedRequirementIdentifiers];
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = *v18;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v11);
        }

        if (![v5 containsObject:*(*(&v17 + 1) + 8 * i)])
        {
          LOBYTE(v12) = 1;
          goto LABEL_13;
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v15 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)_rescindedRequirementIdentifiers
{
  v9[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v3 = *MEMORY[0x277CCBFD0];
  v9[0] = *MEMORY[0x277CCBF30];
  v9[1] = v3;
  v4 = *MEMORY[0x277CCBF00];
  v9[2] = *MEMORY[0x277CCBF08];
  v9[3] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:4];
  v6 = [v2 setWithArray:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_categoryIdentifierFromRescindedReason:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x277CCBF30]])
  {
    v4 = MEMORY[0x277D62680];
LABEL_9:
    v5 = *v4;
    goto LABEL_10;
  }

  if ([v3 isEqualToString:*MEMORY[0x277CCBFD0]])
  {
    v4 = MEMORY[0x277D62688];
    goto LABEL_9;
  }

  if ([v3 isEqualToString:*MEMORY[0x277CCBF08]])
  {
    v4 = MEMORY[0x277D62678];
    goto LABEL_9;
  }

  if ([v3 isEqualToString:*MEMORY[0x277CCBF00]])
  {
    v4 = MEMORY[0x277D62670];
    goto LABEL_9;
  }

  v5 = &stru_287A995D0;
LABEL_10:

  return v5;
}

@end