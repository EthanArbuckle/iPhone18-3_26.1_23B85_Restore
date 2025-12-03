@interface CSDCollaborationStateManager
- (OS_dispatch_queue)queue;
- (_TtP13callservicesd36CSDCollaborationStateManagerDelegate_)delegate;
- (int64_t)documentStateForCollaborationIdentifier:(id)identifier;
- (void)addDisclosedCollaborationInitiator:(id)initiator toConversationUUID:(id)d;
- (void)collaborationAdded:(id)added collaborationURL:(id)l cloudKitAppBundleIDs:(id)ds isLocallyAdded:(BOOL)locallyAdded toConversationUUID:(id)d;
- (void)getNeedsDisclosureOfCollaborationInitiator:(id)initiator forConversationUUID:(id)d completionHandler:(id)handler;
- (void)setDelegate:(id)delegate;
- (void)setQueue:(id)queue;
- (void)startTrackingCollaborationIdentifier:(id)identifier collaborationURL:(id)l cloudKitAppBundleIDs:(id)ds isLocallyAdded:(BOOL)added toConversationUUID:(id)d completionHandler:(id)handler;
- (void)stopTrackingCollaborationForConversationIfNecessary:(id)necessary;
- (void)stopTrackingDisclosedCollaborationInitiatorsForConversationUUID:(id)d;
@end

@implementation CSDCollaborationStateManager

- (_TtP13callservicesd36CSDCollaborationStateManagerDelegate_)delegate
{
  v2 = sub_100422D40();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100422DB0(delegate);
}

- (OS_dispatch_queue)queue
{
  v2 = sub_100422DFC();

  return v2;
}

- (void)setQueue:(id)queue
{
  queueCopy = queue;
  selfCopy = self;
  sub_100422E68(queueCopy);
}

- (void)startTrackingCollaborationIdentifier:(id)identifier collaborationURL:(id)l cloudKitAppBundleIDs:(id)ds isLocallyAdded:(BOOL)added toConversationUUID:(id)d completionHandler:(id)handler
{
  addedCopy = added;
  selfCopy = self;
  v21 = type metadata accessor for UUID();
  v10 = *(v21 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v21, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _Block_copy(handler);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (ds)
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

  v17 = selfCopy;
  sub_1004237E4();
  sub_1000051F8(v16);

  (*(v10 + 8))(v14, v21);
}

- (void)collaborationAdded:(id)added collaborationURL:(id)l cloudKitAppBundleIDs:(id)ds isLocallyAdded:(BOOL)locallyAdded toConversationUUID:(id)d
{
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9, v12);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (ds)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100423ED0();

  (*(v10 + 8))(v14, v9);
}

- (void)stopTrackingCollaborationForConversationIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  selfCopy = self;
  sub_1004245A0(necessaryCopy);
}

- (int64_t)documentStateForCollaborationIdentifier:(id)identifier
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100424ED0();
  v6 = v5;

  return v6;
}

- (void)getNeedsDisclosureOfCollaborationInitiator:(id)initiator forConversationUUID:(id)d completionHandler:(id)handler
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _Block_copy(handler);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v14);
  initiatorCopy = initiator;
  selfCopy = self;
  sub_1004253BC(initiatorCopy, v13, selfCopy, v14);
  _Block_release(v14);

  (*(v9 + 8))(v13, v8);
}

- (void)addDisclosedCollaborationInitiator:(id)initiator toConversationUUID:(id)d
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  initiatorCopy = initiator;
  selfCopy = self;
  sub_100425AC8();

  (*(v7 + 8))(v11, v6);
}

- (void)stopTrackingDisclosedCollaborationInitiatorsForConversationUUID:(id)d
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100425F40();

  (*(v5 + 8))(v9, v4);
}

@end