@interface CSDBlockUtilities
- (BOOL)blockListContainsMembers:(id)a3 providerIdentifier:(id)a4;
- (void)reportFailureForReason:(int64_t)a3 provider:(id)a4 callUUID:(id)a5 actionToFail:(id)a6;
@end

@implementation CSDBlockUtilities

- (BOOL)blockListContainsMembers:(id)a3 providerIdentifier:(id)a4
{
  sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
  sub_10000CE3C(&qword_1006A2660, &qword_1006A3DE0, TUConversationMember_ptr);
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = self;
  v7 = sub_1002BCC98(v5);

  return v7 & 1;
}

- (void)reportFailureForReason:(int64_t)a3 provider:(id)a4 callUUID:(id)a5 actionToFail:(id)a6
{
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = a4;
  v17 = a6;
  v18 = self;
  sub_1002BD204(a3, v16, v15, a6);

  (*(v11 + 8))(v15, v10);
}

@end