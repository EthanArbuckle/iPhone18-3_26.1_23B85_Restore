@interface CustodianDaemonService
- (void)availableRecoveryFactorsWithCompletion:(id)completion;
- (void)displayTrustedContactFlowWithModel:(id)model completion:(id)completion;
- (void)fetchCustodianPasswordResetInformationWithSessionID:(id)d completion:(id)completion;
- (void)fetchCustodianRecoveryKeysWithContext:(AACustodianRecoveryRequestContext *)context completion:(id)completion;
- (void)fetchSuggestedCustodiansForUpsellWithTelemetryFlowID:(id)d completion:(id)completion;
- (void)fetchSuggestedCustodiansWithCompletion:(id)completion;
- (void)fetchTrustedContactsWithRequest:(AATrustedContactFetchRequest *)request completion:(id)completion;
- (void)generateCustodianRecoveryCodeWithContext:(AACustodianRecoveryRequestContext *)context completion:(id)completion;
- (void)reSendCustodianInvitationWithCustodianID:(id)d completion:(id)completion;
- (void)repairCustodians:(id)custodians completion:(id)completion;
- (void)repairCustodians:(id)custodians remove:(id)remove completion:(id)completion;
@end

@implementation CustodianDaemonService

- (void)reSendCustodianInvitationWithCustodianID:(id)d completion:(id)completion
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(completion);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v11);

  sub_100054154(v10, self, v11);
  _Block_release(v11);
  _Block_release(v11);

  (*(v7 + 8))(v10, v6);
}

- (void)fetchTrustedContactsWithRequest:(AATrustedContactFetchRequest *)request completion:(id)completion
{
  v7 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = request;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10033F348;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10033F350;
  v15[5] = v14;
  requestCopy = request;

  sub_10016483C(0, 0, v10, &unk_10033F358, v15);
}

- (void)fetchSuggestedCustodiansWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *&self->familyManager[24];
  v7 = *&self->familyManager[32];
  sub_1000080F8(self->familyManager, v6);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_10005B8E0;
  *(v8 + 24) = v5;
  v9 = *(v7 + 24);

  v9(sub_10005A73C, v8, v6, v7);
}

- (void)fetchSuggestedCustodiansForUpsellWithTelemetryFlowID:(id)d completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = *self->suggestionsManager;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_10005A734;
  *(v11 + 24) = v9;

  sub_1000D119C(v6, v8, sub_10005B8F0, v11);
}

- (void)generateCustodianRecoveryCodeWithContext:(AACustodianRecoveryRequestContext *)context completion:(id)completion
{
  v7 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = context;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10033F308;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10033F310;
  v15[5] = v14;
  contextCopy = context;

  sub_10016483C(0, 0, v10, &unk_10033F318, v15);
}

- (void)fetchCustodianPasswordResetInformationWithSessionID:(id)d completion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v4;

  sub_100049E7C(v5, v7, sub_10005B8DC, v8);
}

- (void)fetchCustodianRecoveryKeysWithContext:(AACustodianRecoveryRequestContext *)context completion:(id)completion
{
  v7 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = context;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10033F2E0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10033E760;
  v15[5] = v14;
  contextCopy = context;

  sub_10016483C(0, 0, v10, &unk_10033F2F0, v15);
}

- (void)displayTrustedContactFlowWithModel:(id)model completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  swift_unknownObjectRetain();

  sub_10004E800(model, sub_10005B8F8, v6);
  swift_unknownObjectRelease();
}

- (void)availableRecoveryFactorsWithCompletion:(id)completion
{
  v5 = sub_100005814(&unk_1003DA1B0, &unk_10033F2C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16[-1] - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  (*(v6 + 16))(v9, &self->_TtCs12_SwiftObject_opaque[OBJC_IVAR____TtC13appleaccountd22CustodianDaemonService__recoveryFactorsController], v5);

  Dependency.wrappedValue.getter();
  (*(v6 + 8))(v9, v5);
  v12 = sub_1000080F8(v16, v16[3]);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1000080F0;
  *(v13 + 24) = v11;
  v14 = *v12;

  sub_1002A3A80(sub_10005A1E4, v13);

  sub_10000839C(v16);
}

- (void)repairCustodians:(id)custodians remove:(id)remove completion:(id)completion
{
  v7 = _Block_copy(completion);
  if (custodians)
  {
    type metadata accessor for UUID();
    custodians = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  _Block_copy(v7);

  sub_1000580A8(custodians, self, v7);
  _Block_release(v7);

  _Block_release(v7);
}

- (void)repairCustodians:(id)custodians completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (custodians)
  {
    type metadata accessor for UUID();
    custodians = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  _Block_copy(v6);

  sub_1000580A8(custodians, self, v6);
  _Block_release(v6);
  _Block_release(v6);
}

@end