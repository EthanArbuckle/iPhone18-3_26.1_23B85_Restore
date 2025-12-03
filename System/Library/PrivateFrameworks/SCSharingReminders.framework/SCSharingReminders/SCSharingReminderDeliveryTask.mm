@interface SCSharingReminderDeliveryTask
+ (id)taskRequestScheduledAfter:(double)after;
@end

@implementation SCSharingReminderDeliveryTask

+ (id)taskRequestScheduledAfter:(double)after
{
  v4 = [objc_alloc(MEMORY[0x277CF07C8]) initWithIdentifier:@"com.apple.safetycheckd.reminder_delivery"];
  [v4 setRequiresNetworkConnectivity:1];
  [v4 setPriority:2];
  [v4 setScheduleAfter:after];

  return v4;
}

void __56__SCSharingReminderDeliveryTask_nonRepeatingTaskHandler__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__SCSharingReminderDeliveryTask_nonRepeatingTaskHandler__block_invoke_2;
  v10[3] = &unk_279B398A0;
  v10[4] = &v11;
  [v2 setExpirationHandler:v10];
  v3 = SCLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v16 = v2;
    _os_log_impl(&dword_262556000, v3, OS_LOG_TYPE_INFO, "SCSharingReminderDeliveryTask handling underlying task: %@", buf, 0xCu);
  }

  [SCUtils registerDarwinNotification:@"com.apple.springboard.lockNotificationListEmptyAtScreenOn"];
  if (*(v12 + 24) == 1)
  {
    v9 = 0;
    v4 = [v2 setTaskExpiredWithRetryAfter:&v9 error:300.0];
    v5 = v9;
    if ((v4 & 1) == 0)
    {
      v6 = SCLogger();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        v7 = [v2 identifier];
        __56__SCSharingReminderDeliveryTask_nonRepeatingTaskHandler__block_invoke_cold_1(v7, v5, buf, v6);
      }

      [v2 setTaskCompleted];
    }
  }

  else
  {
    [v2 setTaskCompleted];
  }

  _Block_object_dispose(&v11, 8);

  v8 = *MEMORY[0x277D85DE8];
}

void __56__SCSharingReminderDeliveryTask_nonRepeatingTaskHandler__block_invoke_cold_1(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_fault_impl(&dword_262556000, log, OS_LOG_TYPE_FAULT, "Failed to expire task: %@ with error: %@", buf, 0x16u);
}

@end