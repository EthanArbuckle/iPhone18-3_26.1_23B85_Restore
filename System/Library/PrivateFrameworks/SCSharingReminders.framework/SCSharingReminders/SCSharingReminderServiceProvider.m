@interface SCSharingReminderServiceProvider
+ (id)tasks;
- (SCSharingReminderServiceProvider)init;
- (void)fetchStatusWithCompletion:(id)a3;
- (void)handleSignals:(id)a3 completion:(id)a4;
- (void)handleXPCEventWithName:(id)a3;
- (void)postWifiSyncNotificationWithCompletion:(id)a3;
- (void)resetFeatureWithCompletion:(id)a3;
- (void)setReminderDelays:(id)a3 completion:(id)a4;
- (void)userOpenedSafetyCheckWithCompletion:(id)a3;
@end

@implementation SCSharingReminderServiceProvider

- (SCSharingReminderServiceProvider)init
{
  v5.receiver = self;
  v5.super_class = SCSharingReminderServiceProvider;
  v2 = [(SCSharingReminderServiceProvider *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(SCSharingReminderManager);
    [(SCSharingReminderServiceProvider *)v2 setSharingReminderManager:v3];
  }

  return v2;
}

+ (id)tasks
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(SCSharingReminderMaintenanceTask);
  v7[0] = v2;
  v3 = objc_alloc_init(SCSharingReminderDeliveryTask);
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)userOpenedSafetyCheckWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SCSharingReminderServiceProvider *)self sharingReminderManager];
  [v5 userOpenedSafetyCheckWithCompletion:v4];
}

- (void)handleSignals:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SCSharingReminderServiceProvider *)self sharingReminderManager];
  [v8 handleSignals:v7 completion:v6];
}

- (void)fetchStatusWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SCSharingReminderServiceProvider *)self sharingReminderManager];
  [v5 fetchStatusWithCompletion:v4];
}

- (void)postWifiSyncNotificationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SCSharingReminderServiceProvider *)self sharingReminderManager];
  [v5 postWifiSyncNotificationWithCompletion:v4];
}

- (void)resetFeatureWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SCSharingReminderServiceProvider *)self sharingReminderManager];
  [v5 resetFeatureWithCompletion:v4];
}

- (void)setReminderDelays:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SCSharingReminderServiceProvider *)self sharingReminderManager];
  [v8 setReminderDelays:v7 completion:v6];
}

- (void)handleXPCEventWithName:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SCSharingReminderServiceProvider *)self interestedEvents];
  v6 = [v5 containsObject:v4];

  v7 = SCLogger();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&dword_262556000, v8, OS_LOG_TYPE_INFO, "Handling event with name: %@", &v10, 0xCu);
    }

    v8 = [(SCSharingReminderServiceProvider *)self sharingReminderManager];
    [v8 handleNotificationEventWithName:v4];
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [(SCSharingReminderServiceProvider *)v4 handleXPCEventWithName:v8];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleXPCEventWithName:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_262556000, a2, OS_LOG_TYPE_ERROR, "Unrecognized Darwin notification: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end