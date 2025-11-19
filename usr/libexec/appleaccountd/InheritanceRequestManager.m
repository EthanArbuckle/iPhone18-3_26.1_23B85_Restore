@interface InheritanceRequestManager
- (BOOL)shouldAcceptNewConnection:(id)a3;
- (NSArray)preConnectEntitlements;
- (void)configureExportedInterface:(id)a3;
- (void)fetchAllHealthInfoWithCompletion:(id)a3;
- (void)fetchBenefactorsWithCompletion:(id)a3;
- (void)fetchBeneficiariesWithCompletion:(id)a3;
- (void)fetchInvitationWithBeneficiaryID:(id)a3 completion:(id)a4;
- (void)fetchInvitationsWithCompletion:(id)a3;
- (void)fetchManifestOptionsForContact:(id)a3 completion:(id)a4;
- (void)fetchSuggestedBeneficiariesWithCompletion:(id)a3;
- (void)isRecipient:(id)a3 capableOf:(id)a4 completion:(id)a5;
- (void)presentInheritanceInvitationUIWithBeneficiaryID:(id)a3 completion:(id)a4;
- (void)removeBenefactor:(id)a3 completion:(id)a4;
- (void)removeBeneficiary:(id)a3 manifest:(id)a4 completion:(id)a5;
- (void)removeInvitation:(id)a3 completion:(id)a4;
- (void)respondToInvitation:(id)a3 accepted:(BOOL)a4 completion:(id)a5;
- (void)sendInvitationToContact:(id)a3 completion:(id)a4;
- (void)setupBeneficiaryAliasWithAccessKey:(id)a3 password:(id)a4 firstName:(id)a5 lastName:(id)a6 authToken:(id)a7 completion:(id)a8;
- (void)setupBeneficiaryManifest:(id)a3 contactInfo:(id)a4 setupAuthToken:(id)a5 completion:(id)a6;
- (void)updateBeneficiaryManifest:(id)a3 contactInfo:(id)a4 completion:(id)a5;
@end

@implementation InheritanceRequestManager

- (NSArray)preConnectEntitlements
{
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (BOOL)shouldAcceptNewConnection:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_1001FB4D4(v4);

  return self & 1;
}

- (void)configureExportedInterface:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10020ACEC();
}

- (void)fetchManifestOptionsForContact:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  _Block_copy(v5);
  swift_unknownObjectRetain();
  v6 = self;
  sub_10020C62C(v6, v5);
  _Block_release(v5);
  _Block_release(v5);
  swift_unknownObjectRelease();
}

- (void)isRecipient:(id)a3 capableOf:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = *sub_1000080F8(&self->controller[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_idsMessenger], *&self->storageController[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_idsMessenger]);
  _Block_copy(v7);
  v13 = a4;
  v12 = self;
  sub_1002B5E98(v8, v10, v13, v11, v7);
  _Block_release(v7);

  _Block_release(v7);
}

- (void)setupBeneficiaryManifest:(id)a3 contactInfo:(id)a4 setupAuthToken:(id)a5 completion:(id)a6
{
  v9 = _Block_copy(a6);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  _Block_copy(v9);
  v13 = a3;
  swift_unknownObjectRetain();
  v14 = self;
  sub_10020C81C(v13, a4, v10, v12, v14, v9);
  _Block_release(v9);
  _Block_release(v9);

  swift_unknownObjectRelease();
}

- (void)updateBeneficiaryManifest:(id)a3 contactInfo:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  _Block_copy(v7);
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = self;
  sub_10020CF50(v8, v9, v7);
  _Block_release(v7);
  _Block_release(v7);

  swift_unknownObjectRelease();
}

- (void)removeBeneficiary:(id)a3 manifest:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_10020D370(v9, v11, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)removeBenefactor:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_1001FD9E8(v8, sub_10005B8F8, v7);
}

- (void)fetchBeneficiariesWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = sub_1000080F8(&self->controller[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController], *&self->storageController[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController]);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_10020A054;
  *(v7 + 24) = v5;
  v8 = *v6;
  v9 = self;

  sub_100216650(sub_10020A080, v7);
}

- (void)fetchBenefactorsWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
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
  v10 = self;

  sub_10021AD90(sub_100209ED8, v8);
}

- (void)fetchSuggestedBeneficiariesWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *&self->storageController[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_familyManager];
  v7 = *&self->storageController[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_familyManager + 8];
  sub_1000080F8(&self->controller[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_familyManager], v6);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_100209E80;
  *(v8 + 24) = v5;
  v9 = *(v7 + 24);
  v10 = self;

  v9(sub_10005A740, v8, v6, v7);
}

- (void)sendInvitationToContact:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  swift_unknownObjectRetain();
  v8 = self;
  sub_1001FF8B4(a3, sub_10005B8F8, v7);
  swift_unknownObjectRelease();
}

- (void)fetchInvitationsWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = sub_1000080F8(&self->controller[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController], *&self->storageController[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController]);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_100209B24;
  *(v7 + 24) = v5;
  v8 = *v6;
  v9 = self;

  sub_100214428(sub_100209B88, v7);
}

- (void)fetchInvitationWithBeneficiaryID:(id)a3 completion:(id)a4
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v13 = _Block_copy(a4);
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
  v19 = self;

  sub_100214780(v12, sub_100209AB0, v17);

  (*(v7 + 8))(v12, v6);
}

- (void)removeInvitation:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
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
  v9[2] = a3;
  v9[3] = v6;
  v9[4] = v7;
  v9[5] = self;
  v10 = *v8;
  v11 = a3;
  v12 = self;
  v14 = v11;
  v13 = v12;
  sub_100083AA0(v6);
  sub_100214428(sub_100209928, v9);
  sub_100083B0C(v6);
}

- (void)respondToInvitation:(id)a3 accepted:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(a5);
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

  v15 = self;
  sub_100201B38(v12, v6, v13, v14);
  sub_100083B0C(v13);

  (*(v9 + 8))(v12, v8);
}

- (void)fetchAllHealthInfoWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = sub_1000080F8(&self->controller[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController], *&self->storageController[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController]);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_100209738;
  *(v7 + 24) = v5;
  v8 = *v6;
  v9 = self;

  sub_10021C8A4(sub_100209764, v7);
}

- (void)presentInheritanceInvitationUIWithBeneficiaryID:(id)a3 completion:(id)a4
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = self;
  sub_10020255C(v10, sub_100008DD4, v12);

  (*(v7 + 8))(v10, v6);
}

- (void)setupBeneficiaryAliasWithAccessKey:(id)a3 password:(id)a4 firstName:(id)a5 lastName:(id)a6 authToken:(id)a7 completion:(id)a8
{
  v10 = _Block_copy(a8);
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  if (a5)
  {
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a5 = v16;
    if (a6)
    {
LABEL_3:
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      a6 = v18;
      goto LABEL_6;
    }
  }

  else
  {
    v15 = 0;
    if (a6)
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
  v23 = self;
  sub_100202F88(v26, v12, v24, v14, v15, a5, v17, a6, v19, v21, sub_1002096C4, v22);
}

@end