@interface CSDPendingMembershipTracker
- (CSDPendingMembershipTrackerDelegate)delegate;
- (CSDPendingMembershipTrackerMessenger)messenger;
- (id)pendingMembersByGroup;
- (id)retrievePendingMembersFor:(id)for;
- (void)clearPendingMembershipFor:(id)for;
- (void)handleDelegatedPendingMember:(id)member forConversation:(id)conversation withGroupUUID:(id)d from:(id)from transactionUUID:(id)iD;
- (void)handleLocalApprovalOfMember:(id)member forConversation:(id)conversation;
- (void)handleLocalRejectionOfMember:(id)member forConversation:(id)conversation;
- (void)handleNewPendingMember:(id)member responseKey:(id)key forConversation:(id)conversation withLink:(id)link dateInitiatedLMI:(id)i;
- (void)setDelegate:(id)delegate;
- (void)setMessenger:(id)messenger;
- (void)stopTrackingPendingMember:(id)member forConversation:(id)conversation triggeredLocally:(BOOL)locally;
@end

@implementation CSDPendingMembershipTracker

- (CSDPendingMembershipTrackerMessenger)messenger
{
  v2 = sub_100317C18();

  return v2;
}

- (void)setMessenger:(id)messenger
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100317C84();
}

- (CSDPendingMembershipTrackerDelegate)delegate
{
  v2 = sub_100317D00();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100317D6C();
}

- (void)stopTrackingPendingMember:(id)member forConversation:(id)conversation triggeredLocally:(BOOL)locally
{
  memberCopy = member;
  conversationCopy = conversation;
  selfCopy = self;
  sub_100317E54();
}

- (void)clearPendingMembershipFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  sub_1003180F4(forCopy);
}

- (id)retrievePendingMembersFor:(id)for
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100318250();

  (*(v5 + 8))(v9, v4);
  sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
  sub_1002F93D0(&qword_1006A2660, &qword_1006A3DE0, TUConversationMember_ptr);
  v11.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v11.super.isa;
}

- (id)pendingMembersByGroup
{
  selfCopy = self;
  sub_100318524();

  type metadata accessor for UUID();
  sub_10026D814(&qword_1006A5680, &qword_100580360);
  sub_10031E358();
  v3.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)handleNewPendingMember:(id)member responseKey:(id)key forConversation:(id)conversation withLink:(id)link dateInitiatedLMI:(id)i
{
  v29 = type metadata accessor for Date();
  v13 = *(v29 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v29, v15);
  v17 = &conversationCopy - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  memberCopy = member;
  keyCopy = key;
  conversationCopy = conversation;
  linkCopy = link;
  iCopy = i;
  selfCopy = self;
  v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100318950(memberCopy, v23, v25, conversation, linkCopy, v17, v26, v27, conversationCopy, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39);
  sub_100049B14(v23, v25);

  (*(v13 + 8))(v17, v29);
}

- (void)handleDelegatedPendingMember:(id)member forConversation:(id)conversation withGroupUUID:(id)d from:(id)from transactionUUID:(id)iD
{
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = __chkstk_darwin(v11, v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v18);
  v20 = &v26 - v19;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  memberCopy = member;
  conversationCopy = conversation;
  fromCopy = from;
  selfCopy = self;
  sub_100319F0C();

  v25 = *(v12 + 8);
  v25(v17, v11);
  v25(v20, v11);
}

- (void)handleLocalApprovalOfMember:(id)member forConversation:(id)conversation
{
  memberCopy = member;
  conversationCopy = conversation;
  selfCopy = self;
  sub_10031A874();
}

- (void)handleLocalRejectionOfMember:(id)member forConversation:(id)conversation
{
  memberCopy = member;
  conversationCopy = conversation;
  selfCopy = self;
  sub_10031A900();
}

@end