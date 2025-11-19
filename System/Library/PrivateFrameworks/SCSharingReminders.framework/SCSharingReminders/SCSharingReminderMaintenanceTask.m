@interface SCSharingReminderMaintenanceTask
@end

@implementation SCSharingReminderMaintenanceTask

void __56__SCSharingReminderMaintenanceTask_repeatingTaskHandler__block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56__SCSharingReminderMaintenanceTask_repeatingTaskHandler__block_invoke_2;
  v14[3] = &unk_279B398A0;
  v14[4] = &v15;
  [v2 setExpirationHandler:v14];
  if (*(v16 + 24) == 1)
  {
    v13 = 0;
    v3 = [v2 setTaskExpiredWithRetryAfter:&v13 error:300.0];
    v4 = v13;
    if ((v3 & 1) == 0)
    {
      v5 = SCLogger();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        v6 = [v2 identifier];
        __56__SCSharingReminderDeliveryTask_nonRepeatingTaskHandler__block_invoke_cold_1(v6, v4, v21, v5);
      }

      [v2 setTaskCompleted];
    }
  }

  v7 = SCLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v20 = v2;
    _os_log_impl(&dword_262556000, v7, OS_LOG_TYPE_INFO, "SCSharingReminderMaintenanceTask handling underlying task: %@", buf, 0xCu);
  }

  v8 = objc_alloc_init(SCSharingReminderManager);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__SCSharingReminderMaintenanceTask_repeatingTaskHandler__block_invoke_3;
  v11[3] = &unk_279B39588;
  v9 = v2;
  v12 = v9;
  [(SCSharingReminderManager *)v8 validateCacheWithCompletion:v11];

  _Block_object_dispose(&v15, 8);
  v10 = *MEMORY[0x277D85DE8];
}

void __56__SCSharingReminderMaintenanceTask_repeatingTaskHandler__block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5 || (a2 & 1) == 0)
  {
    v6 = SCLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = @"Unknown";
      if (v5)
      {
        v9 = v5;
      }

      v10 = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      _os_log_error_impl(&dword_262556000, v6, OS_LOG_TYPE_ERROR, "Error handling task %@, error: %@", &v10, 0x16u);
    }
  }

  [*(a1 + 32) setTaskCompleted];

  v7 = *MEMORY[0x277D85DE8];
}

@end