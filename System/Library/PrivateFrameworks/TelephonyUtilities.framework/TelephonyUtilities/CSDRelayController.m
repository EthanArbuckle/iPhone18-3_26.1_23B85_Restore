@interface CSDRelayController
- (CSDCallController)callController;
- (CSDRelayMessagingController)relayMessagingController;
- (NSArray)allCalls;
@end

@implementation CSDRelayController

- (CSDRelayMessagingController)relayMessagingController
{
  v2 = [(CSDRelayController *)self callStateController];
  v3 = [v2 relayMessagingController];

  return v3;
}

- (CSDCallController)callController
{
  v2 = [(CSDRelayController *)self callStateController];
  v3 = [v2 callController];

  return v3;
}

- (NSArray)allCalls
{
  v2 = +[TUCallCenter sharedInstance];
  v3 = [v2 _allCalls];

  return v3;
}

@end