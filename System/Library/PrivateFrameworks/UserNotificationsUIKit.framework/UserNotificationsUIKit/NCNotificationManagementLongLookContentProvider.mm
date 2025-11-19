@interface NCNotificationManagementLongLookContentProvider
- (id)auxiliaryOptionActions;
@end

@implementation NCNotificationManagementLongLookContentProvider

- (id)auxiliaryOptionActions
{
  v14[1] = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v2 = MEMORY[0x277D750C8];
  v3 = NCUserNotificationsUIKitFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"NOTIFICATION_MANAGEMENT_SUGGESTION_MANAGE" value:&stru_282FE84F8 table:0];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __73__NCNotificationManagementLongLookContentProvider_auxiliaryOptionActions__block_invoke;
  v11 = &unk_27836F428;
  objc_copyWeak(&v12, &location);
  v5 = [v2 actionWithTitle:v4 image:0 identifier:@"notification-management-quieting-suggestion-manage" handler:&v8];

  v14[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:{1, v8, v9, v10, v11}];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v6;
}

void __73__NCNotificationManagementLongLookContentProvider_auxiliaryOptionActions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 sender];

  [WeakRetained handleManageAction:v4];
}

@end