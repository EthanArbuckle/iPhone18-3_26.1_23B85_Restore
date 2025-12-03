@interface PKPeerPaymentIdentityManagementSectionController
+ (BOOL)validForPaymentPass:(id)pass;
- (NSArray)allSectionIdentifiers;
- (NSArray)sectionIdentifiers;
- (PKPeerPaymentIdentityManagementSectionController)init;
- (PKPeerPaymentIdentityManagementSectionController)initWithDelegate:(id)delegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path sectionIdentifier:(id)identifier;
- (id)titleForFooterInSectionIdentifier:(id)identifier;
- (id)titleForHeaderInSectionIdentifier:(id)identifier;
- (int64_t)tableView:(id)view numberOfRowsInSectionIdentifier:(id)identifier;
- (void)peerPaymentIdentityManager:(id)manager didUpdateProfileAppearanceData:(id)data;
- (void)preflight:(id)preflight;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path sectionIdentifier:(id)identifier;
@end

@implementation PKPeerPaymentIdentityManagementSectionController

- (PKPeerPaymentIdentityManagementSectionController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  sub_1BD978264();
  v5 = v4;

  return v5;
}

- (NSArray)allSectionIdentifiers
{
  v2 = sub_1BE052724();

  return v2;
}

+ (BOOL)validForPaymentPass:(id)pass
{
  passCopy = pass;
  v4 = _s9PassKitUI46PeerPaymentIdentityManagementSectionControllerC5valid3forSbSo09PKPaymentA0C_tFZ_0(passCopy);

  return v4 & 1;
}

- (void)preflight:(id)preflight
{
  v4 = _Block_copy(preflight);
  swift_getKeyPath();
  sub_1BD38EA34();
  selfCopy = self;
  sub_1BE04B584();

  v4[2](v4);

  _Block_release(v4);
}

- (NSArray)sectionIdentifiers
{
  selfCopy = self;
  PeerPaymentIdentityManagementSectionController.sectionIdentifiers.getter();

  v3 = sub_1BE052724();

  return v3;
}

- (int64_t)tableView:(id)view numberOfRowsInSectionIdentifier:(id)identifier
{
  v4 = *(&self->super.super.isa + OBJC_IVAR___PKPeerPaymentIdentityManagementSectionController_account);
  selfCopy = self;
  if ([v4 supportsDeviceTap] && (PKIsVision() & 1) == 0 && (PKIsPhone() & 1) != 0)
  {
    detailViewStyle = [(PKPaymentPassDetailSectionController *)selfCopy detailViewStyle];

    return detailViewStyle != 2;
  }

  else
  {

    return 0;
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path sectionIdentifier:(id)identifier
{
  v7 = sub_1BE04B414();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04B3D4();
  viewCopy = view;
  selfCopy = self;
  v14 = _s9PassKitUI46PeerPaymentIdentityManagementSectionControllerC9tableView_12cellForRowAt17sectionIdentifierSo07UITableK4CellCSgSo0rK0C_10Foundation9IndexPathVSStF_0(viewCopy);

  (*(v8 + 8))(v11, v7);

  return v14;
}

- (id)titleForHeaderInSectionIdentifier:(id)identifier
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v8, *MEMORY[0x1E69B8050], v3, v6);
  result = PKPassKitBundle();
  if (result)
  {
    v10 = result;
    sub_1BE04B6F4();

    (*(v4 + 8))(v8, v3);
    v11 = sub_1BE052404();

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)titleForFooterInSectionIdentifier:(id)identifier
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v8, *MEMORY[0x1E69B8050], v3, v6);
  result = PKPassKitBundle();
  if (result)
  {
    v10 = result;
    sub_1BE04B6F4();

    (*(v4 + 8))(v8, v3);
    v11 = sub_1BE052404();

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
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
  _s9PassKitUI46PeerPaymentIdentityManagementSectionControllerC9tableView_14didSelectRowAt17sectionIdentifierySo07UITableK0C_10Foundation9IndexPathVSStF_0(viewCopy);

  (*(v8 + 8))(v11, v7);
}

- (void)peerPaymentIdentityManager:(id)manager didUpdateProfileAppearanceData:(id)data
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    managerCopy = manager;
    dataCopy = data;
    selfCopy = self;
    PeerPaymentIdentityManagementSectionController.sectionIdentifiers.getter();
    v11 = sub_1BE052724();

    [v12 reloadSections_];
  }
}

- (PKPeerPaymentIdentityManagementSectionController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end