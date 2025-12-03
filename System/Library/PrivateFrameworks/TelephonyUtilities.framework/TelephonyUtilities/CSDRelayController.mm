@interface CSDRelayController
- (CSDCallController)callController;
- (CSDRelayMessagingController)relayMessagingController;
- (NSArray)allCalls;
@end

@implementation CSDRelayController

- (CSDRelayMessagingController)relayMessagingController
{
  callStateController = [(CSDRelayController *)self callStateController];
  relayMessagingController = [callStateController relayMessagingController];

  return relayMessagingController;
}

- (CSDCallController)callController
{
  callStateController = [(CSDRelayController *)self callStateController];
  callController = [callStateController callController];

  return callController;
}

- (NSArray)allCalls
{
  v2 = +[TUCallCenter sharedInstance];
  _allCalls = [v2 _allCalls];

  return _allCalls;
}

@end