@interface InheritanceRequestManager
- (BOOL)shouldAcceptNewConnection:(id)connection;
- (NSArray)preConnectEntitlements;
- (void)configureExportedInterface:(id)interface;
- (void)fetchAllHealthInfoWithCompletion:(id)completion;
- (void)fetchBenefactorsWithCompletion:(id)completion;
- (void)fetchBeneficiariesWithCompletion:(id)completion;
- (void)fetchInvitationWithBeneficiaryID:(id)d completion:(id)completion;
- (void)fetchInvitationsWithCompletion:(id)completion;
- (void)fetchManifestOptionsForContact:(id)contact completion:(id)completion;
- (void)fetchSuggestedBeneficiariesWithCompletion:(id)completion;
- (void)isRecipient:(id)recipient capableOf:(id)of completion:(id)completion;
- (void)presentInheritanceInvitationUIWithBeneficiaryID:(id)d completion:(id)completion;
- (void)removeBenefactor:(id)benefactor completion:(id)completion;
- (void)removeBeneficiary:(id)beneficiary manifest:(id)manifest completion:(id)completion;
- (void)removeInvitation:(id)invitation completion:(id)completion;
- (void)respondToInvitation:(id)invitation accepted:(BOOL)accepted completion:(id)completion;
- (void)sendInvitationToContact:(id)contact completion:(id)completion;
- (void)setupBeneficiaryAliasWithAccessKey:(id)key password:(id)password firstName:(id)name lastName:(id)lastName authToken:(id)token completion:(id)completion;
- (void)setupBeneficiaryManifest:(id)manifest contactInfo:(id)info setupAuthToken:(id)token completion:(id)completion;
- (void)updateBeneficiaryManifest:(id)manifest contactInfo:(id)info completion:(id)completion;
@end

@implementation InheritanceRequestManager

- (NSArray)preConnectEntitlements
{
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (BOOL)shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  selfCopy = self;
  LOBYTE(self) = sub_1001FB4D4(connectionCopy);

  return self & 1;
}

- (void)configureExportedInterface:(id)interface
{
  interfaceCopy = interface;
  selfCopy = self;
  sub_10020ACEC();
}

- (void)fetchManifestOptionsForContact:(id)contact completion:(id)completion
{
  v5 = _Block_copy(completion);
  _Block_copy(v5);
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10020C62C(selfCopy, v5);
  _Block_release(v5);
  _Block_release(v5);
  swift_unknownObjectRelease();
}

- (void)isRecipient:(id)recipient capableOf:(id)of completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = *sub_1000080F8(&self->controller[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_idsMessenger], *&self->storageController[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_idsMessenger]);
  _Block_copy(v7);
  ofCopy = of;
  selfCopy = self;
  sub_1002B5E98(v8, v10, ofCopy, v11, v7);
  _Block_release(v7);

  _Block_release(v7);
}

- (void)setupBeneficiaryManifest:(id)manifest contactInfo:(id)info setupAuthToken:(id)token completion:(id)completion
{
  v9 = _Block_copy(completion);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  _Block_copy(v9);
  manifestCopy = manifest;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10020C81C(manifestCopy, info, v10, v12, selfCopy, v9);
  _Block_release(v9);
  _Block_release(v9);

  swift_unknownObjectRelease();
}

- (void)updateBeneficiaryManifest:(id)manifest contactInfo:(id)info completion:(id)completion
{
  v7 = _Block_copy(completion);
  _Block_copy(v7);
  manifestCopy = manifest;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10020CF50(manifestCopy, selfCopy, v7);
  _Block_release(v7);
  _Block_release(v7);

  swift_unknownObjectRelease();
}

- (void)removeBeneficiary:(id)beneficiary manifest:(id)manifest completion:(id)completion
{
  v8 = _Block_copy(completion);
  _Block_copy(v8);
  beneficiaryCopy = beneficiary;
  manifestCopy = manifest;
  selfCopy = self;
  sub_10020D370(beneficiaryCopy, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)removeBenefactor:(id)benefactor completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  benefactorCopy = benefactor;
  selfCopy = self;
  sub_1001FD9E8(benefactorCopy, sub_10005B8F8, v7);
}

- (void)fetchBeneficiariesWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = sub_1000080F8(&self->controller[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController], *&self->storageController[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController]);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_10020A054;
  *(v7 + 24) = v5;
  v8 = *v6;
  selfCopy = self;

  sub_100216650(sub_10020A080, v7);
}

- (void)fetchBenefactorsWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = sub_1000080F8(&self->controller[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController], *&self->storageController[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController]);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  v8[2] = sub_100209EAC;
  v8[3] = v5;
  v8[4] = v7;
  v9 = *v6;
  selfCopy = self;

  sub_10021AD90(sub_100209ED8, v8);
}

- (void)fetchSuggestedBeneficiariesWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *&self->storageController[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_familyManager];
  v7 = *&self->storageController[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_familyManager + 8];
  sub_1000080F8(&self->controller[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_familyManager], v6);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_100209E80;
  *(v8 + 24) = v5;
  v9 = *(v7 + 24);
  selfCopy = self;

  v9(sub_10005A740, v8, v6, v7);
}

- (void)sendInvitationToContact:(id)contact completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1001FF8B4(contact, sub_10005B8F8, v7);
  swift_unknownObjectRelease();
}

- (void)fetchInvitationsWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = sub_1000080F8(&self->controller[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController], *&self->storageController[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController]);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_100209B24;
  *(v7 + 24) = v5;
  v8 = *v6;
  selfCopy = self;

  sub_100214428(sub_100209B88, v7);
}

- (void)fetchInvitationWithBeneficiaryID:(id)d completion:(id)completion
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v13 = _Block_copy(completion);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = sub_1000080F8(&self->controller[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController], *&self->storageController[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController]);
  (*(v7 + 16))(v10, v12, v6);
  v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_10005B8DC;
  *(v17 + 24) = v14;
  (*(v7 + 32))(v17 + v16, v10, v6);
  v18 = *v15;
  selfCopy = self;

  sub_100214780(v12, sub_100209AB0, v17);

  (*(v7 + 8))(v12, v6);
}

- (void)removeInvitation:(id)invitation completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_10005B8F8;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_1000080F8(&self->controller[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController], *&self->storageController[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController]);
  v9 = swift_allocObject();
  v9[2] = invitation;
  v9[3] = v6;
  v9[4] = v7;
  v9[5] = self;
  v10 = *v8;
  invitationCopy = invitation;
  selfCopy = self;
  v14 = invitationCopy;
  v13 = selfCopy;
  sub_100083AA0(v6);
  sub_100214428(sub_100209928, v9);
  sub_100083B0C(v6);
}

- (void)respondToInvitation:(id)invitation accepted:(BOOL)accepted completion:(id)completion
{
  acceptedCopy = accepted;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(completion);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  if (v13)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    v13 = sub_10005B8F8;
  }

  else
  {
    v14 = 0;
  }

  selfCopy = self;
  sub_100201B38(v12, acceptedCopy, v13, v14);
  sub_100083B0C(v13);

  (*(v9 + 8))(v12, v8);
}

- (void)fetchAllHealthInfoWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = sub_1000080F8(&self->controller[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController], *&self->storageController[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController]);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_100209738;
  *(v7 + 24) = v5;
  v8 = *v6;
  selfCopy = self;

  sub_10021C8A4(sub_100209764, v7);
}

- (void)presentInheritanceInvitationUIWithBeneficiaryID:(id)d completion:(id)completion
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(completion);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  selfCopy = self;
  sub_10020255C(v10, sub_100008DD4, v12);

  (*(v7 + 8))(v10, v6);
}

- (void)setupBeneficiaryAliasWithAccessKey:(id)key password:(id)password firstName:(id)name lastName:(id)lastName authToken:(id)token completion:(id)completion
{
  v10 = _Block_copy(completion);
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  if (name)
  {
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    name = v16;
    if (lastName)
    {
LABEL_3:
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      lastName = v18;
      goto LABEL_6;
    }
  }

  else
  {
    v15 = 0;
    if (lastName)
    {
      goto LABEL_3;
    }
  }

  v17 = 0;
LABEL_6:
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = v10;
  selfCopy = self;
  sub_100202F88(v26, v12, v24, v14, v15, name, v17, lastName, v19, v21, sub_1002096C4, v22);
}

@end