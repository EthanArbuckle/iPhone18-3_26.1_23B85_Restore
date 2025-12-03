@interface NCNotificationManagementContentProvider
- (NCNotificationManagementContentProvider)initWithNotificationRequest:(id)request managementDelegate:(id)delegate;
- (NCNotificationManagementContentProviderDelegate)managementDelegate;
- (void)handleManageAction:(id)action;
@end

@implementation NCNotificationManagementContentProvider

- (NCNotificationManagementContentProvider)initWithNotificationRequest:(id)request managementDelegate:(id)delegate
{
  requestCopy = request;
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = NCNotificationManagementContentProvider;
  v9 = [(NCNotificationManagementContentProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_notificationRequest, request);
    objc_storeWeak(&v10->_managementDelegate, delegateCopy);
  }

  return v10;
}

- (void)handleManageAction:(id)action
{
  actionCopy = action;
  managementDelegate = [(NCNotificationManagementContentProvider *)self managementDelegate];
  notificationRequest = [(NCNotificationManagementContentProvider *)self notificationRequest];
  [managementDelegate notificationManagementContentProvider:self requestsPresentingNotificationManagementViewType:0 forNotificationRequest:notificationRequest withPresentingView:actionCopy];
}

- (NCNotificationManagementContentProviderDelegate)managementDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_managementDelegate);

  return WeakRetained;
}

@end