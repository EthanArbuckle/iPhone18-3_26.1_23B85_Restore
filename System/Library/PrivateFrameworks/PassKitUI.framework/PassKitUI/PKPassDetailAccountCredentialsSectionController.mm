@interface PKPassDetailAccountCredentialsSectionController
- (NSArray)allSectionIdentifiers;
- (NSArray)sectionIdentifiers;
- (_TtC9PassKitUI47PKPassDetailAccountCredentialsSectionController)init;
- (_TtC9PassKitUI47PKPassDetailAccountCredentialsSectionController)initWithPass:(id)pass delegate:(id)delegate throwsError:(id *)error;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path sectionIdentifier:(id)identifier;
- (int64_t)tableView:(id)view numberOfRowsInSectionIdentifier:(id)identifier;
- (void)bankConnectAccountDidChange:(id)change;
- (void)bankConnectConsentStatusDidChange:(unint64_t)change;
- (void)fetchPaymentInformationWithCompletion:(id)completion;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path sectionIdentifier:(id)identifier;
- (void)updatePass:(id)pass;
@end

@implementation PKPassDetailAccountCredentialsSectionController

- (NSArray)allSectionIdentifiers
{
  v2 = sub_1BE052724();

  return v2;
}

- (NSArray)sectionIdentifiers
{
  selfCopy = self;
  PKPassDetailAccountCredentialsSectionController.sectionIdentifiers.getter();

  v3 = sub_1BE052724();

  return v3;
}

- (_TtC9PassKitUI47PKPassDetailAccountCredentialsSectionController)initWithPass:(id)pass delegate:(id)delegate throwsError:(id *)error
{
  passCopy = pass;
  swift_unknownObjectRetain();
  return PKPassDetailAccountCredentialsSectionController.init(pass:delegate:)(passCopy);
}

- (void)fetchPaymentInformationWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v15 - v7;
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_1BE0528D4();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1BE0C7F20;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1BE107FA0;
  v13[5] = v12;
  selfCopy = self;
  sub_1BD992D04(0, 0, v8, &unk_1BE0C7F30, v13);
}

- (void)updatePass:(id)pass
{
  passCopy = pass;
  selfCopy = self;
  PKPassDetailAccountCredentialsSectionController.update(pass:)(passCopy);
}

- (_TtC9PassKitUI47PKPassDetailAccountCredentialsSectionController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path sectionIdentifier:(id)identifier
{
  v7 = sub_1BE04B414();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04B3D4();
  v12 = sub_1BE052434();
  v14 = v13;
  viewCopy = view;
  selfCopy = self;
  v18 = PKPassDetailAccountCredentialsSectionController.tableView(_:cellForRowAt:sectionIdentifier:)(viewCopy, v17, v12, v14);

  (*(v8 + 8))(v11, v7);

  return v18;
}

- (int64_t)tableView:(id)view numberOfRowsInSectionIdentifier:(id)identifier
{
  if (sub_1BE052434() == 0xD000000000000019 && 0x80000001BE117570 == v4)
  {

    return 1;
  }

  else
  {
    v6 = sub_1BE053B84();

    return v6 & 1;
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path sectionIdentifier:(id)identifier
{
  v7 = sub_1BE04B414();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04B3D4();
  viewCopy = view;
  selfCopy = self;
  _s9PassKitUI47PKPassDetailAccountCredentialsSectionControllerC9tableView_14didSelectRowAt17sectionIdentifierySo07UITableK0C_10Foundation9IndexPathVSStF_0(viewCopy, v11);

  (*(v8 + 8))(v11, v7);
}

- (void)bankConnectAccountDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  PKPassDetailAccountCredentialsSectionController.accountDidChange(to:)(change);
}

- (void)bankConnectConsentStatusDidChange:(unint64_t)change
{
  selfCopy = self;
  PKPassDetailAccountCredentialsSectionController.consentStatusDidChange(to:)(change);
}

@end