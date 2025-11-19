@interface CSDCollaborationStateManager
- (OS_dispatch_queue)queue;
- (_TtP13callservicesd36CSDCollaborationStateManagerDelegate_)delegate;
- (int64_t)documentStateForCollaborationIdentifier:(id)a3;
- (void)addDisclosedCollaborationInitiator:(id)a3 toConversationUUID:(id)a4;
- (void)collaborationAdded:(id)a3 collaborationURL:(id)a4 cloudKitAppBundleIDs:(id)a5 isLocallyAdded:(BOOL)a6 toConversationUUID:(id)a7;
- (void)getNeedsDisclosureOfCollaborationInitiator:(id)a3 forConversationUUID:(id)a4 completionHandler:(id)a5;
- (void)setDelegate:(id)a3;
- (void)setQueue:(id)a3;
- (void)startTrackingCollaborationIdentifier:(id)a3 collaborationURL:(id)a4 cloudKitAppBundleIDs:(id)a5 isLocallyAdded:(BOOL)a6 toConversationUUID:(id)a7 completionHandler:(id)a8;
- (void)stopTrackingCollaborationForConversationIfNecessary:(id)a3;
- (void)stopTrackingDisclosedCollaborationInitiatorsForConversationUUID:(id)a3;
@end

@implementation CSDCollaborationStateManager

- (_TtP13callservicesd36CSDCollaborationStateManagerDelegate_)delegate
{
  v2 = sub_100422D40();

  return v2;
}

- (void)setDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_100422DB0(a3);
}

- (OS_dispatch_queue)queue
{
  v2 = sub_100422DFC();

  return v2;
}

- (void)setQueue:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100422E68(v4);
}

- (void)startTrackingCollaborationIdentifier:(id)a3 collaborationURL:(id)a4 cloudKitAppBundleIDs:(id)a5 isLocallyAdded:(BOOL)a6 toConversationUUID:(id)a7 completionHandler:(id)a8
{
  v20 = a6;
  v19 = self;
  v21 = type metadata accessor for UUID();
  v10 = *(v21 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v21, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _Block_copy(a8);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a5)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  if (v15)
  {
    *(swift_allocObject() + 16) = v15;
    v16 = sub_1003701E0;
  }

  else
  {
    v16 = 0;
  }

  v17 = v19;
  sub_1004237E4();
  sub_1000051F8(v16);

  (*(v10 + 8))(v14, v21);
}

- (void)collaborationAdded:(id)a3 collaborationURL:(id)a4 cloudKitAppBundleIDs:(id)a5 isLocallyAdded:(BOOL)a6 toConversationUUID:(id)a7
{
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9, v12);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a5)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = self;
  sub_100423ED0();

  (*(v10 + 8))(v14, v9);
}

- (void)stopTrackingCollaborationForConversationIfNecessary:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1004245A0(v4);
}

- (int64_t)documentStateForCollaborationIdentifier:(id)a3
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = self;
  sub_100424ED0();
  v6 = v5;

  return v6;
}

- (void)getNeedsDisclosureOfCollaborationInitiator:(id)a3 forConversationUUID:(id)a4 completionHandler:(id)a5
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _Block_copy(a5);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v14);
  v15 = a3;
  v16 = self;
  sub_1004253BC(v15, v13, v16, v14);
  _Block_release(v14);

  (*(v9 + 8))(v13, v8);
}

- (void)addDisclosedCollaborationInitiator:(id)a3 toConversationUUID:(id)a4
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = self;
  sub_100425AC8();

  (*(v7 + 8))(v11, v6);
}

- (void)stopTrackingDisclosedCollaborationInitiatorsForConversationUUID:(id)a3
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = self;
  sub_100425F40();

  (*(v5 + 8))(v9, v4);
}

@end