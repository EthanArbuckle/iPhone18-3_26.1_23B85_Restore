@interface NCNotificationManagementContentProvider
- (NCNotificationManagementContentProvider)initWithNotificationRequest:(id)a3 managementDelegate:(id)a4;
- (NCNotificationManagementContentProviderDelegate)managementDelegate;
- (void)handleManageAction:(id)a3;
@end

@implementation NCNotificationManagementContentProvider

- (NCNotificationManagementContentProvider)initWithNotificationRequest:(id)a3 managementDelegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = NCNotificationManagementContentProvider;
  v9 = [(NCNotificationManagementContentProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_notificationRequest, a3);
    objc_storeWeak(&v10->_managementDelegate, v8);
  }

  return v10;
}

- (void)handleManageAction:(id)a3
{
  v4 = a3;
  v6 = [(NCNotificationManagementContentProvider *)self managementDelegate];
  v5 = [(NCNotificationManagementContentProvider *)self notificationRequest];
  [v6 notificationManagementContentProvider:self requestsPresentingNotificationManagementViewType:0 forNotificationRequest:v5 withPresentingView:v4];
}

- (NCNotificationManagementContentProviderDelegate)managementDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_managementDelegate);

  return WeakRetained;
}

@end