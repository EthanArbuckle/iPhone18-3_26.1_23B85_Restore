@interface CSDConversationLinkManager
- (CSDConversationLinkManagerDelegate)delegate;
- (id)activateLinkForPseudonym:(id)pseudonym updateGroupUUID:(id)d updateInvitedHandles:(id)handles;
- (id)conversationLinkDescriptorsWithGroupUUIDs:(id)ds error:(id *)error;
- (id)decryptLetMeInResponse:(id)response pseudonym:(id)pseudonym requestorKeyAgreement:(id)agreement;
- (id)encryptLetMeInResponse:(id)response pseudonym:(id)pseudonym responseKeyData:(id)data;
- (id)getInactiveLinkForHandle:(id)handle;
- (void)activeAccountsChangedForService:(id)service;
- (void)addInvitedHandles:(id)handles pseudonym:(id)pseudonym completionHandler:(id)handler;
- (void)checkLinkValidityWithPseudonym:(id)pseudonym completionHandler:(id)handler;
- (void)decryptLetMeInRequest:(id)request pseudonym:(id)pseudonym fromHandle:(id)handle completionHandler:(id)handler;
- (void)encryptLetMeInRequest:(id)request link:(id)link completionHandler:(id)handler;
- (void)generateLinkWithGroupUUID:(id)d invitedHandles:(id)handles originatorHandle:(id)handle linkLifetimeScope:(int64_t)scope completionHandler:(id)handler;
- (void)generateLinkWithInvitedHandles:(id)handles originatorHandle:(id)handle linkLifetimeScope:(int64_t)scope completionHandler:(id)handler;
- (void)getActiveLinksWithCreatedOnly:(BOOL)only completionHandler:(id)handler;
- (void)invalidateLinkWithPseudonym:(id)pseudonym deleteReason:(int64_t)reason completionHandler:(id)handler;
- (void)linkSyncStateWithIncludeLinks:(BOOL)links completion:(id)completion;
- (void)recoverLinksForPseudonyms:(id)pseudonyms;
- (void)removeLink:(id)link deleteReason:(int64_t)reason completionHandler:(id)handler;
- (void)renewLinkWithPseudonym:(id)pseudonym expirationDate:(id)date completionHandler:(id)handler;
- (void)renewPseudonymIfNeeded:(NSString *)needed completionHandler:(id)handler;
- (void)scheduleConversationLinkCheckInInitial:(BOOL)initial;
- (void)service:(id)service pseudonymRemoved:(id)removed;
- (void)service:(id)service pseudonymUpdated:(id)updated;
- (void)setDelegate:(id)delegate;
- (void)setLinkName:(id)name forLink:(id)link completionHandler:(id)handler;
- (void)storeReceivedLink:(id)link fromHandle:(id)handle isUpdate:(BOOL)update completionHandler:(id)handler;
- (void)validateAllLinks;
@end

@implementation CSDConversationLinkManager

- (void)getActiveLinksWithCreatedOnly:(BOOL)only completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  *(swift_allocObject() + 16) = v5;
  selfCopy = self;
  sub_10000BE80();
}

- (CSDConversationLinkManagerDelegate)delegate
{
  v2 = sub_1003515FC();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10035166C(delegate);
}

- (void)generateLinkWithGroupUUID:(id)d invitedHandles:(id)handles originatorHandle:(id)handle linkLifetimeScope:(int64_t)scope completionHandler:(id)handler
{
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _Block_copy(handler);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  if (handles)
  {
    sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
    sub_10000CE3C(&qword_1006A3C50, &qword_1006A2640, TUHandle_ptr);
    static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  *(swift_allocObject() + 16) = v17;
  handleCopy = handle;
  selfCopy = self;
  sub_100352264();

  (*(v12 + 8))(v16, v11);
}

- (void)generateLinkWithInvitedHandles:(id)handles originatorHandle:(id)handle linkLifetimeScope:(int64_t)scope completionHandler:(id)handler
{
  v9 = _Block_copy(handler);
  sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
  sub_10000CE3C(&qword_1006A3C50, &qword_1006A2640, TUHandle_ptr);
  v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v9);
  handleCopy = handle;
  selfCopy = self;
  sub_100352BE0(v10, handleCopy, scope, selfCopy, v9);
  _Block_release(v9);
}

- (void)storeReceivedLink:(id)link fromHandle:(id)handle isUpdate:(BOOL)update completionHandler:(id)handler
{
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  linkCopy = link;
  handleCopy = handle;
  selfCopy = self;
  sub_100352FFC(linkCopy, v15, update, sub_10036BE20, v11);
}

- (id)activateLinkForPseudonym:(id)pseudonym updateGroupUUID:(id)d updateInvitedHandles:(id)handles
{
  v8 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v12 = &v19 - v11;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (d)
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
  if (handles)
  {
    sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
    sub_10000CE3C(&qword_1006A3C50, &qword_1006A2640, TUHandle_ptr);
    static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  selfCopy = self;
  sub_100354A48();
  v17 = v16;

  sub_100009A04(v12, &unk_1006A3DD0, &unk_10057C9D0);

  return v17;
}

- (id)getInactiveLinkForHandle:(id)handle
{
  handleCopy = handle;
  selfCopy = self;
  v6 = sub_1003567F8();

  return v6;
}

- (id)conversationLinkDescriptorsWithGroupUUIDs:(id)ds error:(id *)error
{
  type metadata accessor for UUID();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100356D94(v5);

  sub_100006AF0(0, &qword_1006A2E90, TUConversationLinkDescriptor_ptr);
  v7.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v7.super.isa;
}

- (void)validateAllLinks
{
  selfCopy = self;
  sub_100357130();
}

- (void)invalidateLinkWithPseudonym:(id)pseudonym deleteReason:(int64_t)reason completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
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

  selfCopy = self;
  sub_100358820(v8, v10, reason, v7, v11);
  sub_1000051F8(v7);
}

- (void)removeLink:(id)link deleteReason:(int64_t)reason completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
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

  linkCopy = link;
  selfCopy = self;
  sub_10035921C(linkCopy, reason, v8, v9);
  sub_1000051F8(v8);
}

- (void)renewLinkWithPseudonym:(id)pseudonym expirationDate:(id)date completionHandler:(id)handler
{
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(handler);
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

  selfCopy = self;
  sub_100359550(v14, v16, v12, v13, v17);
  sub_1000051F8(v13);

  (*(v8 + 8))(v12, v7);
}

- (void)checkLinkValidityWithPseudonym:(id)pseudonym completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
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

  selfCopy = self;
  sub_100359A7C(v6, v8, v5, v9);
  sub_1000051F8(v5);
}

- (void)setLinkName:(id)name forLink:(id)link completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
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

  linkCopy = link;
  selfCopy = self;
  sub_10035ACE8(v8, v10, linkCopy, v7, v11);
  sub_1000051F8(v7);
}

- (void)encryptLetMeInRequest:(id)request link:(id)link completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  _Block_copy(v8);
  requestCopy = request;
  linkCopy = link;
  selfCopy = self;
  sub_10035B71C(requestCopy, linkCopy, selfCopy, v8);
  _Block_release(v8);
}

- (id)encryptLetMeInResponse:(id)response pseudonym:(id)pseudonym responseKeyData:(id)data
{
  responseCopy = response;
  pseudonymCopy = pseudonym;
  dataCopy = data;
  selfCopy = self;
  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  sub_10035C00C();
  v16 = v15;
  sub_100049B14(v12, v14);

  return v16;
}

- (void)decryptLetMeInRequest:(id)request pseudonym:(id)pseudonym fromHandle:(id)handle completionHandler:(id)handler
{
  v10 = _Block_copy(handler);
  _Block_copy(v10);
  requestCopy = request;
  pseudonymCopy = pseudonym;
  handleCopy = handle;
  selfCopy = self;
  sub_10035CA48(requestCopy, pseudonymCopy, handleCopy, selfCopy, v10);
  _Block_release(v10);
}

- (id)decryptLetMeInResponse:(id)response pseudonym:(id)pseudonym requestorKeyAgreement:(id)agreement
{
  responseCopy = response;
  pseudonymCopy = pseudonym;
  agreementCopy = agreement;
  selfCopy = self;
  v12 = sub_10035D8A0(responseCopy);

  return v12;
}

- (void)addInvitedHandles:(id)handles pseudonym:(id)pseudonym completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
  sub_10000CE3C(&qword_1006A3C50, &qword_1006A2640, TUHandle_ptr);
  v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  _Block_copy(v6);
  selfCopy = self;
  sub_10035DB98(v7, v8, v10, selfCopy, v6);
  _Block_release(v6);
}

- (void)scheduleConversationLinkCheckInInitial:(BOOL)initial
{
  selfCopy = self;
  sub_10035E1D0(initial);
}

- (void)recoverLinksForPseudonyms:(id)pseudonyms
{
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10035E268();
}

- (void)linkSyncStateWithIncludeLinks:(BOOL)links completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  selfCopy = self;
  sub_10035E2F8(links, selfCopy, v6);
  _Block_release(v6);
}

- (void)renewPseudonymIfNeeded:(NSString *)needed completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  v7[2] = needed;
  v7[3] = v6;
  v7[4] = self;
  neededCopy = needed;
  selfCopy = self;

  sub_10044D610(&unk_100581B78, v7);
}

- (void)service:(id)service pseudonymRemoved:(id)removed
{
  serviceCopy = service;
  removedCopy = removed;
  selfCopy = self;
  sub_100367508();
}

- (void)service:(id)service pseudonymUpdated:(id)updated
{
  serviceCopy = service;
  updatedCopy = updated;
  selfCopy = self;
  sub_100367C60();
}

- (void)activeAccountsChangedForService:(id)service
{
  serviceCopy = service;
  selfCopy = self;
  sub_10036858C();
}

@end