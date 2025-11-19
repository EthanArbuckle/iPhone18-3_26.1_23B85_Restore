@interface CSDPendingMembershipTracker
- (CSDPendingMembershipTrackerDelegate)delegate;
- (CSDPendingMembershipTrackerMessenger)messenger;
- (id)pendingMembersByGroup;
- (id)retrievePendingMembersFor:(id)a3;
- (void)clearPendingMembershipFor:(id)a3;
- (void)handleDelegatedPendingMember:(id)a3 forConversation:(id)a4 withGroupUUID:(id)a5 from:(id)a6 transactionUUID:(id)a7;
- (void)handleLocalApprovalOfMember:(id)a3 forConversation:(id)a4;
- (void)handleLocalRejectionOfMember:(id)a3 forConversation:(id)a4;
- (void)handleNewPendingMember:(id)a3 responseKey:(id)a4 forConversation:(id)a5 withLink:(id)a6 dateInitiatedLMI:(id)a7;
- (void)setDelegate:(id)a3;
- (void)setMessenger:(id)a3;
- (void)stopTrackingPendingMember:(id)a3 forConversation:(id)a4 triggeredLocally:(BOOL)a5;
@end

@implementation CSDPendingMembershipTracker

- (CSDPendingMembershipTrackerMessenger)messenger
{
  v2 = sub_100317C18();

  return v2;
}

- (void)setMessenger:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_100317C84();
}

- (CSDPendingMembershipTrackerDelegate)delegate
{
  v2 = sub_100317D00();

  return v2;
}

- (void)setDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_100317D6C();
}

- (void)stopTrackingPendingMember:(id)a3 forConversation:(id)a4 triggeredLocally:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_100317E54();
}

- (void)clearPendingMembershipFor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1003180F4(v4);
}

- (id)retrievePendingMembersFor:(id)a3
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = self;
  sub_100318250();

  (*(v5 + 8))(v9, v4);
  sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
  sub_1002F93D0(&qword_1006A2660, &qword_1006A3DE0, TUConversationMember_ptr);
  v11.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v11.super.isa;
}

- (id)pendingMembersByGroup
{
  v2 = self;
  sub_100318524();

  type metadata accessor for UUID();
  sub_10026D814(&qword_1006A5680, &qword_100580360);
  sub_10031E358();
  v3.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)handleNewPendingMember:(id)a3 responseKey:(id)a4 forConversation:(id)a5 withLink:(id)a6 dateInitiatedLMI:(id)a7
{
  v29 = type metadata accessor for Date();
  v13 = *(v29 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v29, v15);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a3;
  v19 = a4;
  v28 = a5;
  v20 = a6;
  v21 = a7;
  v22 = self;
  v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100318950(v18, v23, v25, a5, v20, v17, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39);
  sub_100049B14(v23, v25);

  (*(v13 + 8))(v17, v29);
}

- (void)handleDelegatedPendingMember:(id)a3 forConversation:(id)a4 withGroupUUID:(id)a5 from:(id)a6 transactionUUID:(id)a7
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
  v21 = a3;
  v22 = a4;
  v23 = a6;
  v24 = self;
  sub_100319F0C();

  v25 = *(v12 + 8);
  v25(v17, v11);
  v25(v20, v11);
}

- (void)handleLocalApprovalOfMember:(id)a3 forConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10031A874();
}

- (void)handleLocalRejectionOfMember:(id)a3 forConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10031A900();
}

@end