@interface SCSharingReminderServiceProvider
+ (id)tasks;
- (SCSharingReminderServiceProvider)init;
- (void)fetchStatusWithCompletion:(id)completion;
- (void)handleSignals:(id)signals completion:(id)completion;
- (void)handleXPCEventWithName:(id)name;
- (void)postWifiSyncNotificationWithCompletion:(id)completion;
- (void)resetFeatureWithCompletion:(id)completion;
- (void)setReminderDelays:(id)delays completion:(id)completion;
- (void)userOpenedSafetyCheckWithCompletion:(id)completion;
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

- (void)userOpenedSafetyCheckWithCompletion:(id)completion
{
  completionCopy = completion;
  sharingReminderManager = [(SCSharingReminderServiceProvider *)self sharingReminderManager];
  [sharingReminderManager userOpenedSafetyCheckWithCompletion:completionCopy];
}

- (void)handleSignals:(id)signals completion:(id)completion
{
  completionCopy = completion;
  signalsCopy = signals;
  sharingReminderManager = [(SCSharingReminderServiceProvider *)self sharingReminderManager];
  [sharingReminderManager handleSignals:signalsCopy completion:completionCopy];
}

- (void)fetchStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  sharingReminderManager = [(SCSharingReminderServiceProvider *)self sharingReminderManager];
  [sharingReminderManager fetchStatusWithCompletion:completionCopy];
}

- (void)postWifiSyncNotificationWithCompletion:(id)completion
{
  completionCopy = completion;
  sharingReminderManager = [(SCSharingReminderServiceProvider *)self sharingReminderManager];
  [sharingReminderManager postWifiSyncNotificationWithCompletion:completionCopy];
}

- (void)resetFeatureWithCompletion:(id)completion
{
  completionCopy = completion;
  sharingReminderManager = [(SCSharingReminderServiceProvider *)self sharingReminderManager];
  [sharingReminderManager resetFeatureWithCompletion:completionCopy];
}

- (void)setReminderDelays:(id)delays completion:(id)completion
{
  completionCopy = completion;
  delaysCopy = delays;
  sharingReminderManager = [(SCSharingReminderServiceProvider *)self sharingReminderManager];
  [sharingReminderManager setReminderDelays:delaysCopy completion:completionCopy];
}

- (void)handleXPCEventWithName:(id)name
{
  v12 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  interestedEvents = [(SCSharingReminderServiceProvider *)self interestedEvents];
  v6 = [interestedEvents containsObject:nameCopy];

  v7 = SCLogger();
  sharingReminderManager = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = nameCopy;
      _os_log_impl(&dword_262556000, sharingReminderManager, OS_LOG_TYPE_INFO, "Handling event with name: %@", &v10, 0xCu);
    }

    sharingReminderManager = [(SCSharingReminderServiceProvider *)self sharingReminderManager];
    [sharingReminderManager handleNotificationEventWithName:nameCopy];
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [(SCSharingReminderServiceProvider *)nameCopy handleXPCEventWithName:sharingReminderManager];
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