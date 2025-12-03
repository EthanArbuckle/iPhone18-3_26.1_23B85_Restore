@interface CSDConversationCallCoordinator
- (void)handleSetScreenShareAttributes:(id)attributes tuAttributes:(id)tuAttributes;
- (void)handleSetSharingScreen:(id)screen sharingScreen:(BOOL)sharingScreen;
- (void)handleSetSharingScreen:(id)screen sharingScreen:(BOOL)sharingScreen tuAttributes:(id)attributes;
@end

@implementation CSDConversationCallCoordinator

- (void)handleSetSharingScreen:(id)screen sharingScreen:(BOOL)sharingScreen
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

- (void)handleSetSharingScreen:(id)screen sharingScreen:(BOOL)sharingScreen tuAttributes:(id)attributes
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  attributesCopy = attributes;

  ConversationCallCoordinator.handleSetSharingScreen(_:sharingScreen:tuAttributes:)();

  (*(v7 + 8))(v11, v6);
}

- (void)handleSetScreenShareAttributes:(id)attributes tuAttributes:(id)tuAttributes
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  tuAttributesCopy = tuAttributes;

  ConversationCallCoordinator.handleSetScreenShareAttributes(_:tuAttributes:)();

  (*(v6 + 8))(v10, v5);
}

@end