@interface CSDHandoffAudioController
+ (NSString)continueHandoffAudioRouteNotification;
+ (NSString)routeIdentifierChangedNotification;
- (void)conversationManager:(id)manager stateChangedForConversation:(id)conversation;
- (void)handleContinueHandoffAudioRouteNotification:(id)notification;
- (void)routesChangedForRouteController:(id)controller;
@end

@implementation CSDHandoffAudioController

- (void)routesChangedForRouteController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
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

- (void)handleContinueHandoffAudioRouteNotification:(id)notification
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10045BB8C();

  (*(v5 + 8))(v9, v4);
}

- (void)conversationManager:(id)manager stateChangedForConversation:(id)conversation
{
  managerCopy = manager;
  conversationCopy = conversation;
  selfCopy = self;
  HandoffAudioController.conversationManager(_:stateChangedFor:)();
}

@end