@interface CSDScreenSharingActivityManager
+ (id)screenShareAttributesFromApplicationContext:(id)a3;
- (CSDScreenSharingActivityManager)initWithFeatureFlags:(id)a3;
- (CSDScreenSharingActivityManagerDelegate)delegate;
- (NSNumber)systemRootLayerScale;
- (TUScreenShareAttributes)latestRemoteAttributes;
- (TUScreenShareAttributes)localScreenShareAttributes;
- (void)broadcastAttributes:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setLocalScreenShareAttributes:(id)a3;
- (void)setPresenterOverlayEnabled:(BOOL)a3;
- (void)setSystemRootLayerScale:(id)a3;
- (void)startActivitySessionOnConversationWithUUID:(id)a3 for:(id)a4 with:(id)a5;
- (void)startObservingSessions;
- (void)stopActivitySession;
@end

@implementation CSDScreenSharingActivityManager

- (TUScreenShareAttributes)latestRemoteAttributes
{
  v2 = self;
  v3 = sub_10001EC50();

  return v3;
}

- (CSDScreenSharingActivityManagerDelegate)delegate
{
  v2 = sub_10037235C();

  return v2;
}

- (void)setDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1003723CC();
}

- (TUScreenShareAttributes)localScreenShareAttributes
{
  v2 = sub_100372490();

  return v2;
}

- (void)setLocalScreenShareAttributes:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_100372500(a3);
}

- (NSNumber)systemRootLayerScale
{
  v2 = sub_10037254C();

  return v2;
}

- (void)setSystemRootLayerScale:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1003725D8(a3);
}

- (void)setPresenterOverlayEnabled:(BOOL)a3
{
  v4 = self;
  sub_100372B38(a3);
}

- (CSDScreenSharingActivityManager)initWithFeatureFlags:(id)a3
{
  v3 = a3;
  sub_100372CF8();
  return result;
}

- (void)startObservingSessions
{
  v2 = self;
  ScreenSharingActivityManager.startObservingSessions()();
}

- (void)startActivitySessionOnConversationWithUUID:(id)a3 for:(id)a4 with:(id)a5
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a4;
  v15 = a5;
  v16 = self;
  ScreenSharingActivityManager.startActivitySession(onConversationWithUUID:for:with:)();

  (*(v9 + 8))(v13, v8);
}

- (void)stopActivitySession
{
  v2 = self;
  ScreenSharingActivityManager.stopActivitySession()();
}

- (void)broadcastAttributes:(id)a3
{
  v4 = a3;
  v5 = self;
  ScreenSharingActivityManager.broadcastAttributes(_:)();
}

+ (id)screenShareAttributesFromApplicationContext:(id)a3
{
  v3 = a3;
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = sub_1003773A0();
  sub_100049B14(v4, v6);

  return v7;
}

@end