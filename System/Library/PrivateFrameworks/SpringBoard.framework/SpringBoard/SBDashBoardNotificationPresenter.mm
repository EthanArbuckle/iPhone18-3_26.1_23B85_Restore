@interface SBDashBoardNotificationPresenter
- (void)presentModalBannerAndExpandForNotificationRequest:(id)request;
@end

@implementation SBDashBoardNotificationPresenter

- (void)presentModalBannerAndExpandForNotificationRequest:(id)request
{
  v3 = SBApp;
  requestCopy = request;
  notificationDispatcher = [v3 notificationDispatcher];
  bannerDestination = [notificationDispatcher bannerDestination];
  [bannerDestination presentModalBannerAndExpandForNotificationRequest:requestCopy];
}

@end