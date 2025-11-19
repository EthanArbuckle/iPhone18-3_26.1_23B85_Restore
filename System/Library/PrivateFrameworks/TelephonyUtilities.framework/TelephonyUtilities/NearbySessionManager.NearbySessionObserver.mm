@interface NearbySessionManager.NearbySessionObserver
- (void)didDiscoverNearbySessionInvitationWithId:(id)a3 invitation:(id)a4;
@end

@implementation NearbySessionManager.NearbySessionObserver

- (void)didDiscoverNearbySessionInvitationWithId:(id)a3 invitation:(id)a4
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = a4;

  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  sub_100049B14(v6, v8);
}

@end