@interface SBNotificationLongLookBannerPresentationObservationToken
- (SBNotificationLongLookBannerPresentationObservationToken)initWithNotificationBannerDestination:(id)destination scene:(id)scene;
- (int64_t)state;
- (void)dealloc;
@end

@implementation SBNotificationLongLookBannerPresentationObservationToken

- (SBNotificationLongLookBannerPresentationObservationToken)initWithNotificationBannerDestination:(id)destination scene:(id)scene
{
  destinationCopy = destination;
  v11.receiver = self;
  v11.super_class = SBNotificationLongLookBannerPresentationObservationToken;
  v8 = [(SBPresentationObservationToken *)&v11 initWithScene:scene];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_notificationBannerDestination, destination);
    [(SBNotificationBannerDestination *)v9->_notificationBannerDestination registerNotificationBannerDestinationObserver:v9];
  }

  return v9;
}

- (void)dealloc
{
  [(SBNotificationBannerDestination *)self->_notificationBannerDestination unregisterNotificationBannerDestinationObserver:self];
  v3.receiver = self;
  v3.super_class = SBNotificationLongLookBannerPresentationObservationToken;
  [(SBNotificationLongLookBannerPresentationObservationToken *)&v3 dealloc];
}

- (int64_t)state
{
  if ([(SBNotificationBannerDestination *)self->_notificationBannerDestination isPresentingBannerInLongLook])
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

@end