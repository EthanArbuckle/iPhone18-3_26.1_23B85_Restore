@interface CSDScreenSharingActivityManager
+ (id)screenShareAttributesFromApplicationContext:(id)context;
- (CSDScreenSharingActivityManager)initWithFeatureFlags:(id)flags;
- (CSDScreenSharingActivityManagerDelegate)delegate;
- (NSNumber)systemRootLayerScale;
- (TUScreenShareAttributes)latestRemoteAttributes;
- (TUScreenShareAttributes)localScreenShareAttributes;
- (void)broadcastAttributes:(id)attributes;
- (void)setDelegate:(id)delegate;
- (void)setLocalScreenShareAttributes:(id)attributes;
- (void)setPresenterOverlayEnabled:(BOOL)enabled;
- (void)setSystemRootLayerScale:(id)scale;
- (void)startActivitySessionOnConversationWithUUID:(id)d for:(id)for with:(id)with;
- (void)startObservingSessions;
- (void)stopActivitySession;
@end

@implementation CSDScreenSharingActivityManager

- (TUScreenShareAttributes)latestRemoteAttributes
{
  selfCopy = self;
  v3 = sub_10001EC50();

  return v3;
}

- (CSDScreenSharingActivityManagerDelegate)delegate
{
  v2 = sub_10037235C();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1003723CC();
}

- (TUScreenShareAttributes)localScreenShareAttributes
{
  v2 = sub_100372490();

  return v2;
}

- (void)setLocalScreenShareAttributes:(id)attributes
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100372500(attributes);
}

- (NSNumber)systemRootLayerScale
{
  v2 = sub_10037254C();

  return v2;
}

- (void)setSystemRootLayerScale:(id)scale
{
  scaleCopy = scale;
  selfCopy = self;
  sub_1003725D8(scale);
}

- (void)setPresenterOverlayEnabled:(BOOL)enabled
{
  selfCopy = self;
  sub_100372B38(enabled);
}

- (CSDScreenSharingActivityManager)initWithFeatureFlags:(id)flags
{
  flagsCopy = flags;
  sub_100372CF8();
  return result;
}

- (void)startObservingSessions
{
  selfCopy = self;
  ScreenSharingActivityManager.startObservingSessions()();
}

- (void)startActivitySessionOnConversationWithUUID:(id)d for:(id)for with:(id)with
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  forCopy = for;
  withCopy = with;
  selfCopy = self;
  ScreenSharingActivityManager.startActivitySession(onConversationWithUUID:for:with:)();

  (*(v9 + 8))(v13, v8);
}

- (void)stopActivitySession
{
  selfCopy = self;
  ScreenSharingActivityManager.stopActivitySession()();
}

- (void)broadcastAttributes:(id)attributes
{
  attributesCopy = attributes;
  selfCopy = self;
  ScreenSharingActivityManager.broadcastAttributes(_:)();
}

+ (id)screenShareAttributesFromApplicationContext:(id)context
{
  contextCopy = context;
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = sub_1003773A0();
  sub_100049B14(v4, v6);

  return v7;
}

@end