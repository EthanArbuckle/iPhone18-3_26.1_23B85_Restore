@interface NearbySessionManager.NearbySessionObserver
- (void)didDiscoverNearbySessionInvitationWithId:(id)id invitation:(id)invitation;
@end

@implementation NearbySessionManager.NearbySessionObserver

- (void)didDiscoverNearbySessionInvitationWithId:(id)id invitation:(id)invitation
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  invitationCopy = invitation;

  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  sub_100049B14(v6, v8);
}

@end