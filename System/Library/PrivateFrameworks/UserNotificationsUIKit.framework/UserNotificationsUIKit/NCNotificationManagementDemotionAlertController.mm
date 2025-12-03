@interface NCNotificationManagementDemotionAlertController
- (NCNotificationManagementDemotionAlertController)initWithRequest:(id)request withPresentingView:(id)view settingsDelegate:(id)delegate includeExplanation:(BOOL)explanation;
- (void)_configureView;
@end

@implementation NCNotificationManagementDemotionAlertController

- (NCNotificationManagementDemotionAlertController)initWithRequest:(id)request withPresentingView:(id)view settingsDelegate:(id)delegate includeExplanation:(BOOL)explanation
{
  explanationCopy = explanation;
  v10.receiver = self;
  v10.super_class = NCNotificationManagementDemotionAlertController;
  v7 = [(NCNotificationManagementAlertController *)&v10 initWithRequest:request withPresentingView:view settingsDelegate:delegate];
  v8 = v7;
  if (v7)
  {
    [(NCNotificationManagementDemotionAlertController *)v7 setIncludeExplanation:explanationCopy];
  }

  return v8;
}

- (void)_configureView
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a2;
  localizedDescription = [a3 localizedDescription];
  v7 = 138543618;
  selfCopy = self;
  v9 = 2114;
  v10 = localizedDescription;
  _os_log_error_impl(&dword_21E77E000, v5, OS_LOG_TYPE_ERROR, "Error localizing title for format %{public}@, %{public}@", &v7, 0x16u);
}

uint64_t __65__NCNotificationManagementDemotionAlertController__configureView__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) settingsDelegate];
  v3 = [*(a1 + 32) request];
  v4 = [v3 isCriticalAlert];

  v5 = *(a1 + 40);
  if (v4)
  {
    v6 = [v5 criticalAlertsEnabled];
    v7 = *(a1 + 32);
    v8 = [v7 request];
    [v2 notificationManagementController:v7 setAllowsCriticalAlerts:v6 ^ 1u forNotificationRequest:v8 withSectionIdentifier:*(a1 + 48)];
  }

  else
  {
    v9 = [v5 notificationsEnabled];
    v10 = *(a1 + 32);
    v8 = [v10 request];
    [v2 notificationManagementController:v10 setAllowsNotifications:v9 ^ 1u forNotificationRequest:v8 withSectionIdentifier:*(a1 + 48)];
  }

  return 1;
}

uint64_t __65__NCNotificationManagementDemotionAlertController__configureView__block_invoke_2(uint64_t a1)
{
  v2 = dispatch_get_global_queue(25, 0);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __65__NCNotificationManagementDemotionAlertController__configureView__block_invoke_3;
  v5[3] = &unk_27836F560;
  v3 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v3;
  dispatch_async(v2, v5);

  return 1;
}

void __65__NCNotificationManagementDemotionAlertController__configureView__block_invoke_3(uint64_t a1)
{
  v16[3] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) request];
  v3 = [v2 userNotification];

  v4 = [objc_alloc(MEMORY[0x277D757C8]) initWithNotification:v3];
  v5 = MEMORY[0x277D0AD60];
  v6 = *MEMORY[0x277D0AC58];
  v15[0] = *MEMORY[0x277D0AC70];
  v15[1] = v6;
  v16[0] = MEMORY[0x277CBEC38];
  v16[1] = MEMORY[0x277CBEC38];
  v15[2] = *MEMORY[0x277D0ABD0];
  v14 = v4;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
  v16[2] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];
  v9 = [v5 optionsWithDictionary:v8];

  v10 = [MEMORY[0x277D0AD78] serviceWithDefaultShellEndpoint];
  v11 = *(a1 + 40);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__NCNotificationManagementDemotionAlertController__configureView__block_invoke_4;
  v12[3] = &unk_278371918;
  v13 = v11;
  [v10 openApplication:v13 withOptions:v9 completion:v12];
}

void __65__NCNotificationManagementDemotionAlertController__configureView__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_ERROR))
    {
      __65__NCNotificationManagementDemotionAlertController__configureView__block_invoke_4_cold_1(a1, v6, v7);
    }
  }
}

void __65__NCNotificationManagementDemotionAlertController__configureView__block_invoke_4_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_21E77E000, log, OS_LOG_TYPE_ERROR, "Error opening Application settings for %{public}@, %{public}@", &v4, 0x16u);
}

@end