@interface CSDHandoffAudioController
+ (NSString)continueHandoffAudioRouteNotification;
+ (NSString)routeIdentifierChangedNotification;
- (void)conversationManager:(id)a3 stateChangedForConversation:(id)a4;
- (void)handleContinueHandoffAudioRouteNotification:(id)a3;
- (void)routesChangedForRouteController:(id)a3;
@end

@implementation CSDHandoffAudioController

- (void)routesChangedForRouteController:(id)a3
{
  v4 = a3;
  v5 = self;
  HandoffAudioController.routesChanged(for:)();
}

+ (NSString)routeIdentifierChangedNotification
{
  v2 = static HandoffAudioController.routeIdentifierChangedNotification.getter();

  return v2;
}

+ (NSString)continueHandoffAudioRouteNotification
{
  v2 = static HandoffAudioController.continueHandoffAudioRouteNotification.getter();

  return v2;
}

- (void)handleContinueHandoffAudioRouteNotification:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = self;
  sub_10045BB8C();

  (*(v5 + 8))(v9, v4);
}

- (void)conversationManager:(id)a3 stateChangedForConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  HandoffAudioController.conversationManager(_:stateChangedFor:)();
}

@end