@interface PUAirPlayActivity
- (BOOL)canPerformWithActivityItems:(id)items;
- (BOOL)isRouteAvailable;
- (NSString)localizedRouteUnavailabilityMessage;
- (PUAirPlayActivity)init;
- (void)_registerForAirPlayNotifications;
- (void)_unregisterForAirPlayNotifications;
- (void)dealloc;
- (void)performActivity;
@end

@implementation PUAirPlayActivity

- (void)_unregisterForAirPlayNotifications
{
  v3 = +[PHAirPlayScreenController sharedInstance];
  [v3 unregisterRouteObserver:self];
}

- (void)_registerForAirPlayNotifications
{
  v3 = +[PHAirPlayScreenController sharedInstance];
  [v3 registerRouteObserver:self];
}

- (void)performActivity
{
  isRouteAvailable = [(PUAirPlayActivity *)self isRouteAvailable];
  if (isRouteAvailable)
  {
    [(PUAirPlayActivity *)self _unregisterForAirPlayNotifications];
    v4 = +[PHAirPlayScreenController sharedInstance];
    [v4 notifyDidPresentAirPlayRoutesFromShareSheet];
  }

  [(UIActivity *)self activityDidFinish:isRouteAvailable];
}

- (NSString)localizedRouteUnavailabilityMessage
{
  v2 = +[PHAirPlayScreenController sharedInstance];
  routeUnavailableReason = [v2 routeUnavailableReason];

  if (routeUnavailableReason == 2)
  {
    v4 = @"SHARING_AIRPLAY_ERROR_MESSAGE_EXTERNAL_DISPLAY_CONNECTED";
  }

  else
  {
    v4 = @"SHARING_AIRPLAY_ERROR_MESSAGE";
  }

  v5 = PULocalizedString(v4);

  return v5;
}

- (BOOL)isRouteAvailable
{
  v2 = +[PHAirPlayScreenController sharedInstance];
  pu_hasAvailableRoute = [v2 pu_hasAvailableRoute];

  return pu_hasAvailableRoute;
}

- (BOOL)canPerformWithActivityItems:(id)items
{
  itemSourceController = [(PXActivity *)self itemSourceController];
  isPreparingIndividualItems = [itemSourceController isPreparingIndividualItems];

  return isPreparingIndividualItems;
}

- (void)dealloc
{
  [(PUAirPlayActivity *)self _unregisterForAirPlayNotifications];
  v3.receiver = self;
  v3.super_class = PUAirPlayActivity;
  [(PUAirPlayActivity *)&v3 dealloc];
}

- (PUAirPlayActivity)init
{
  v5.receiver = self;
  v5.super_class = PUAirPlayActivity;
  v2 = [(UIActivity *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PUAirPlayActivity *)v2 _registerForAirPlayNotifications];
  }

  return v3;
}

@end