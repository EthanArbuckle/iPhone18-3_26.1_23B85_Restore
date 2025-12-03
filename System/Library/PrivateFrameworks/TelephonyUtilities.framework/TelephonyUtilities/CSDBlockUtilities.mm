@interface CSDBlockUtilities
- (BOOL)blockListContainsMembers:(id)members providerIdentifier:(id)identifier;
- (void)reportFailureForReason:(int64_t)reason provider:(id)provider callUUID:(id)d actionToFail:(id)fail;
@end

@implementation CSDBlockUtilities

- (BOOL)blockListContainsMembers:(id)members providerIdentifier:(id)identifier
{
  sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
  sub_10000CE3C(&qword_1006A2660, &qword_1006A3DE0, TUConversationMember_ptr);
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  v7 = sub_1002BCC98(v5);

  return v7 & 1;
}

- (void)reportFailureForReason:(int64_t)reason provider:(id)provider callUUID:(id)d actionToFail:(id)fail
{
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  providerCopy = provider;
  failCopy = fail;
  selfCopy = self;
  sub_1002BD204(reason, providerCopy, v15, fail);

  (*(v11 + 8))(v15, v10);
}

@end