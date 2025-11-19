@interface CSDConversationCallCoordinator
- (void)handleSetScreenShareAttributes:(id)a3 tuAttributes:(id)a4;
- (void)handleSetSharingScreen:(id)a3 sharingScreen:(BOOL)a4;
- (void)handleSetSharingScreen:(id)a3 sharingScreen:(BOOL)a4 tuAttributes:(id)a5;
@end

@implementation CSDConversationCallCoordinator

- (void)handleSetSharingScreen:(id)a3 sharingScreen:(BOOL)a4
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  ConversationCallCoordinator.handleSetSharingScreen(_:sharingScreen:)();

  (*(v5 + 8))(v9, v4);
}

- (void)handleSetSharingScreen:(id)a3 sharingScreen:(BOOL)a4 tuAttributes:(id)a5
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a5;

  ConversationCallCoordinator.handleSetSharingScreen(_:sharingScreen:tuAttributes:)();

  (*(v7 + 8))(v11, v6);
}

- (void)handleSetScreenShareAttributes:(id)a3 tuAttributes:(id)a4
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a4;

  ConversationCallCoordinator.handleSetScreenShareAttributes(_:tuAttributes:)();

  (*(v6 + 8))(v10, v5);
}

@end