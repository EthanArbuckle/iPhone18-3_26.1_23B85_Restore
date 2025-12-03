@interface NCNotificationRequestCustomContentProvider
- (id)customContentViewControllerForNotificationRequest:(id)request;
@end

@implementation NCNotificationRequestCustomContentProvider

- (id)customContentViewControllerForNotificationRequest:(id)request
{
  requestCopy = request;
  customContentViewController = self->_customContentViewController;
  if (!customContentViewController || (-[NCNotificationContentContainerViewController notificationRequest](customContentViewController, "notificationRequest"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isEqual:requestCopy], v6, (v7 & 1) == 0))
  {
    v8 = [[NCNotificationContentContainerViewController alloc] initWithNotificationRequest:requestCopy];
    v9 = self->_customContentViewController;
    self->_customContentViewController = v8;
  }

  v10 = self->_customContentViewController;
  v11 = v10;

  return v10;
}

@end