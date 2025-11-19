@interface PKPassDetailBankConnectSectionController
- (FKInstitution)connectedInstitution;
- (NSArray)allSectionIdentifiers;
- (NSArray)sectionIdentifiers;
- (_TtC9PassKitUI40PKPassDetailBankConnectSectionController)init;
- (_TtC9PassKitUI40PKPassDetailBankConnectSectionController)initWithPass:(id)a3 delegate:(id)a4 throwsError:(id *)a5;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5;
- (id)titleForFooterInSectionIdentifier:(id)a3;
- (id)titleForHeaderInSectionIdentifier:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSectionIdentifier:(id)a4;
- (void)bankConnectAccountDidChange:(id)a3;
- (void)bankConnectConsentStatusDidChange:(unint64_t)a3;
- (void)preflight:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5;
- (void)updatePass:(id)a3;
@end

@implementation PKPassDetailBankConnectSectionController

- (NSArray)allSectionIdentifiers
{
  v2 = sub_1BE052724();

  return v2;
}

- (NSArray)sectionIdentifiers
{
  v2 = self;
  PKPassDetailBankConnectSectionController.sectionIdentifiers.getter();

  v3 = sub_1BE052724();

  return v3;
}

- (_TtC9PassKitUI40PKPassDetailBankConnectSectionController)initWithPass:(id)a3 delegate:(id)a4 throwsError:(id *)a5
{
  v5 = a3;
  swift_unknownObjectRetain();
  return PKPassDetailBankConnectSectionController.init(pass:delegate:)(v5);
}

- (void)preflight:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_1BE0528D4();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1BE107F98;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1BE107FA0;
  v13[5] = v12;
  v14 = self;
  sub_1BD992D04(0, 0, v8, &unk_1BE0C7F30, v13);
}

- (void)updatePass:(id)a3
{
  v4 = a3;
  v5 = self;
  PKPassDetailBankConnectSectionController.update(pass:)(v4);
}

- (FKInstitution)connectedInstitution
{
  v2 = self;
  v3 = PKPassDetailBankConnectSectionController.connectedInstitution.getter();

  return v3;
}

- (_TtC9PassKitUI40PKPassDetailBankConnectSectionController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)bankConnectAccountDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  PKPassDetailBankConnectSectionController.accountDidChange(to:)(a3);
}

- (void)bankConnectConsentStatusDidChange:(unint64_t)a3
{
  v4 = self;
  PKPassDetailBankConnectSectionController.consentStatusDidChange(to:)(a3);
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5
{
  v7 = sub_1BE04B414();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04B3D4();
  v12 = sub_1BE052434();
  v14 = v13;
  v15 = a3;
  v16 = self;
  PKPassDetailBankConnectSectionController.tableView(_:cellForRowAt:sectionIdentifier:)(v15, v11, v12, v14);
  v18 = v17;

  (*(v8 + 8))(v11, v7);

  return v18;
}

- (id)titleForHeaderInSectionIdentifier:(id)a3
{
  v4 = sub_1BE052434();
  v6 = v5;
  v7 = self;
  _s9PassKitUI40PKPassDetailBankConnectSectionControllerC14titleForHeader02inH10IdentifierSSSgSS_tF_0(v4, v6);
  v9 = v8;

  if (v9)
  {
    v10 = sub_1BE052404();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)titleForFooterInSectionIdentifier:(id)a3
{
  v4 = sub_1BE052434();
  v6 = v5;
  v7 = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  object = PKPassDetailBankConnectSectionController.titleForFooter(inSectionIdentifier:)(v8).value._object;

  if (object)
  {
    v10 = sub_1BE052404();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5
{
  v7 = sub_1BE04B414();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04B3D4();
  v12 = sub_1BE052434();
  v14 = v13;
  v15 = a3;
  v16 = self;
  PKPassDetailBankConnectSectionController.tableView(_:didSelectRowAt:sectionIdentifier:)(v15, v11, v12, v14);

  (*(v8 + 8))(v11, v7);
}

- (int64_t)tableView:(id)a3 numberOfRowsInSectionIdentifier:(id)a4
{
  v6 = sub_1BE052434();
  v8 = v7;
  v9 = a3;
  v10 = self;
  v11 = sub_1BD975D58(v6, v8);

  return v11;
}

@end