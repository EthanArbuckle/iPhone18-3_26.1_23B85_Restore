@interface CSDBlocklistUtilities
- (BOOL)blockListContainsHandles:(id)a3 providerIdentifier:(id)a4;
- (BOOL)blockListContainsMembers:(id)a3 providerIdentifier:(id)a4;
@end

@implementation CSDBlocklistUtilities

- (BOOL)blockListContainsMembers:(id)a3 providerIdentifier:(id)a4
{
  sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
  sub_10000CE3C(&qword_1006A2660, &qword_1006A3DE0, TUConversationMember_ptr);
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = self;
  v7 = sub_1003CEA1C(v5);

  return v7 & 1;
}

- (BOOL)blockListContainsHandles:(id)a3 providerIdentifier:(id)a4
{
  sub_100006AF0(0, &unk_1006A47D0, CXHandle_ptr);
  sub_10000CE3C(&qword_1006A3890, &unk_1006A47D0, CXHandle_ptr);
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = self;
  sub_1003CEA7C(v5);
  v8 = v7;

  return v8 & 1;
}

@end