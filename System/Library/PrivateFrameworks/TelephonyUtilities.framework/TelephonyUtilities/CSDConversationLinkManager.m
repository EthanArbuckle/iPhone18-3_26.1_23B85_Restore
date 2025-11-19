@interface CSDConversationLinkManager
- (CSDConversationLinkManagerDelegate)delegate;
- (id)activateLinkForPseudonym:(id)a3 updateGroupUUID:(id)a4 updateInvitedHandles:(id)a5;
- (id)conversationLinkDescriptorsWithGroupUUIDs:(id)a3 error:(id *)a4;
- (id)decryptLetMeInResponse:(id)a3 pseudonym:(id)a4 requestorKeyAgreement:(id)a5;
- (id)encryptLetMeInResponse:(id)a3 pseudonym:(id)a4 responseKeyData:(id)a5;
- (id)getInactiveLinkForHandle:(id)a3;
- (void)activeAccountsChangedForService:(id)a3;
- (void)addInvitedHandles:(id)a3 pseudonym:(id)a4 completionHandler:(id)a5;
- (void)checkLinkValidityWithPseudonym:(id)a3 completionHandler:(id)a4;
- (void)decryptLetMeInRequest:(id)a3 pseudonym:(id)a4 fromHandle:(id)a5 completionHandler:(id)a6;
- (void)encryptLetMeInRequest:(id)a3 link:(id)a4 completionHandler:(id)a5;
- (void)generateLinkWithGroupUUID:(id)a3 invitedHandles:(id)a4 originatorHandle:(id)a5 linkLifetimeScope:(int64_t)a6 completionHandler:(id)a7;
- (void)generateLinkWithInvitedHandles:(id)a3 originatorHandle:(id)a4 linkLifetimeScope:(int64_t)a5 completionHandler:(id)a6;
- (void)getActiveLinksWithCreatedOnly:(BOOL)a3 completionHandler:(id)a4;
- (void)invalidateLinkWithPseudonym:(id)a3 deleteReason:(int64_t)a4 completionHandler:(id)a5;
- (void)linkSyncStateWithIncludeLinks:(BOOL)a3 completion:(id)a4;
- (void)recoverLinksForPseudonyms:(id)a3;
- (void)removeLink:(id)a3 deleteReason:(int64_t)a4 completionHandler:(id)a5;
- (void)renewLinkWithPseudonym:(id)a3 expirationDate:(id)a4 completionHandler:(id)a5;
- (void)renewPseudonymIfNeeded:(NSString *)a3 completionHandler:(id)a4;
- (void)scheduleConversationLinkCheckInInitial:(BOOL)a3;
- (void)service:(id)a3 pseudonymRemoved:(id)a4;
- (void)service:(id)a3 pseudonymUpdated:(id)a4;
- (void)setDelegate:(id)a3;
- (void)setLinkName:(id)a3 forLink:(id)a4 completionHandler:(id)a5;
- (void)storeReceivedLink:(id)a3 fromHandle:(id)a4 isUpdate:(BOOL)a5 completionHandler:(id)a6;
- (void)validateAllLinks;
@end

@implementation CSDConversationLinkManager

- (void)getActiveLinksWithCreatedOnly:(BOOL)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  *(swift_allocObject() + 16) = v5;
  v6 = self;
  sub_10000BE80();
}

- (CSDConversationLinkManagerDelegate)delegate
{
  v2 = sub_1003515FC();

  return v2;
}

- (void)setDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_10035166C(a3);
}

- (void)generateLinkWithGroupUUID:(id)a3 invitedHandles:(id)a4 originatorHandle:(id)a5 linkLifetimeScope:(int64_t)a6 completionHandler:(id)a7
{
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _Block_copy(a7);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  if (a4)
  {
    sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
    sub_10000CE3C(&qword_1006A3C50, &qword_1006A2640, TUHandle_ptr);
    static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  *(swift_allocObject() + 16) = v17;
  v18 = a5;
  v19 = self;
  sub_100352264();

  (*(v12 + 8))(v16, v11);
}

- (void)generateLinkWithInvitedHandles:(id)a3 originatorHandle:(id)a4 linkLifetimeScope:(int64_t)a5 completionHandler:(id)a6
{
  v9 = _Block_copy(a6);
  sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
  sub_10000CE3C(&qword_1006A3C50, &qword_1006A2640, TUHandle_ptr);
  v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v9);
  v11 = a4;
  v12 = self;
  sub_100352BE0(v10, v11, a5, v12, v9);
  _Block_release(v9);
}

- (void)storeReceivedLink:(id)a3 fromHandle:(id)a4 isUpdate:(BOOL)a5 completionHandler:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = a3;
  v13 = a4;
  v14 = self;
  sub_100352FFC(v12, v15, a5, sub_10036BE20, v11);
}

- (id)activateLinkForPseudonym:(id)a3 updateGroupUUID:(id)a4 updateInvitedHandles:(id)a5
{
  v8 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v12 = &v19 - v11;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a4)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = type metadata accessor for UUID();
    v14 = 0;
  }

  else
  {
    v13 = type metadata accessor for UUID();
    v14 = 1;
  }

  sub_10000AF74(v12, v14, 1, v13);
  if (a5)
  {
    sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
    sub_10000CE3C(&qword_1006A3C50, &qword_1006A2640, TUHandle_ptr);
    static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v15 = self;
  sub_100354A48();
  v17 = v16;

  sub_100009A04(v12, &unk_1006A3DD0, &unk_10057C9D0);

  return v17;
}

- (id)getInactiveLinkForHandle:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1003567F8();

  return v6;
}

- (id)conversationLinkDescriptorsWithGroupUUIDs:(id)a3 error:(id *)a4
{
  type metadata accessor for UUID();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = self;
  sub_100356D94(v5);

  sub_100006AF0(0, &qword_1006A2E90, TUConversationLinkDescriptor_ptr);
  v7.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v7.super.isa;
}

- (void)validateAllLinks
{
  v2 = self;
  sub_100357130();
}

- (void)invalidateLinkWithPseudonym:(id)a3 deleteReason:(int64_t)a4 completionHandler:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (v7)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v7;
    v7 = sub_10036BE1C;
  }

  else
  {
    v11 = 0;
  }

  v12 = self;
  sub_100358820(v8, v10, a4, v7, v11);
  sub_1000051F8(v7);
}

- (void)removeLink:(id)a3 deleteReason:(int64_t)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_10036BE1C;
  }

  else
  {
    v9 = 0;
  }

  v10 = a3;
  v11 = self;
  sub_10035921C(v10, a4, v8, v9);
  sub_1000051F8(v8);
}

- (void)renewLinkWithPseudonym:(id)a3 expirationDate:(id)a4 completionHandler:(id)a5
{
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(a5);
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  if (v13)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = v13;
    v13 = sub_10036AC04;
  }

  else
  {
    v17 = 0;
  }

  v18 = self;
  sub_100359550(v14, v16, v12, v13, v17);
  sub_1000051F8(v13);

  (*(v8 + 8))(v12, v7);
}

- (void)checkLinkValidityWithPseudonym:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  if (v5)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v5;
    v5 = sub_10036ABFC;
  }

  else
  {
    v9 = 0;
  }

  v10 = self;
  sub_100359A7C(v6, v8, v5, v9);
  sub_1000051F8(v5);
}

- (void)setLinkName:(id)a3 forLink:(id)a4 completionHandler:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (v7)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v7;
    v7 = sub_10036ABE0;
  }

  else
  {
    v11 = 0;
  }

  v12 = a4;
  v13 = self;
  sub_10035ACE8(v8, v10, v12, v7, v11);
  sub_1000051F8(v7);
}

- (void)encryptLetMeInRequest:(id)a3 link:(id)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_10035B71C(v9, v10, v11, v8);
  _Block_release(v8);
}

- (id)encryptLetMeInResponse:(id)a3 pseudonym:(id)a4 responseKeyData:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  sub_10035C00C();
  v16 = v15;
  sub_100049B14(v12, v14);

  return v16;
}

- (void)decryptLetMeInRequest:(id)a3 pseudonym:(id)a4 fromHandle:(id)a5 completionHandler:(id)a6
{
  v10 = _Block_copy(a6);
  _Block_copy(v10);
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = self;
  sub_10035CA48(v11, v12, v13, v14, v10);
  _Block_release(v10);
}

- (id)decryptLetMeInResponse:(id)a3 pseudonym:(id)a4 requestorKeyAgreement:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = sub_10035D8A0(v8);

  return v12;
}

- (void)addInvitedHandles:(id)a3 pseudonym:(id)a4 completionHandler:(id)a5
{
  v6 = _Block_copy(a5);
  sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
  sub_10000CE3C(&qword_1006A3C50, &qword_1006A2640, TUHandle_ptr);
  v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  _Block_copy(v6);
  v11 = self;
  sub_10035DB98(v7, v8, v10, v11, v6);
  _Block_release(v6);
}

- (void)scheduleConversationLinkCheckInInitial:(BOOL)a3
{
  v4 = self;
  sub_10035E1D0(a3);
}

- (void)recoverLinksForPseudonyms:(id)a3
{
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = self;
  sub_10035E268();
}

- (void)linkSyncStateWithIncludeLinks:(BOOL)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = self;
  sub_10035E2F8(a3, v7, v6);
  _Block_release(v6);
}

- (void)renewPseudonymIfNeeded:(NSString *)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;
  v9 = self;

  sub_10044D610(&unk_100581B78, v7);
}

- (void)service:(id)a3 pseudonymRemoved:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100367508();
}

- (void)service:(id)a3 pseudonymUpdated:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100367C60();
}

- (void)activeAccountsChangedForService:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10036858C();
}

@end