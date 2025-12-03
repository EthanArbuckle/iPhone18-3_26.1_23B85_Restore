@interface ICSManageStorageDrilldownController
- (ICSManageStorageDrilldownController)init;
- (ICSManageStorageDrilldownController)initWithAppBundleID:(id)d account:(id)account navigationController:(id)controller;
- (ICSManageStorageDrilldownController)initWithAppBundleID:(id)d account:(id)account presentingController:(id)controller;
- (void)beginLoadingForSpecifier:(id)specifier;
- (void)cancelLoading;
- (void)loadFailed:(id)failed withError:(id)error;
- (void)loadFinished:(id)finished;
- (void)loadStarted:(id)started;
@end

@implementation ICSManageStorageDrilldownController

- (ICSManageStorageDrilldownController)initWithAppBundleID:(id)d account:(id)account presentingController:(id)controller
{
  if (d)
  {
    v7 = sub_2759BA298();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  accountCopy = account;
  controllerCopy = controller;
  v12 = sub_2758D53E4(v7, v9, account);

  return v12;
}

- (ICSManageStorageDrilldownController)initWithAppBundleID:(id)d account:(id)account navigationController:(id)controller
{
  if (d)
  {
    sub_2759BA298();
    accountCopy = account;
    controllerCopy = controller;
    v10 = sub_2759BA258();
  }

  else
  {
    accountCopy2 = account;
    controllerCopy2 = controller;
    v10 = 0;
  }

  v13 = [(ICSManageStorageDrilldownController *)self initWithAppBundleID:v10 account:account presentingController:0];

  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  return v13;
}

- (void)cancelLoading
{
  selfCopy = self;
  ManageStorageDrilldownController.cancelLoading()();
}

- (void)beginLoadingForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  selfCopy = self;
  ManageStorageDrilldownController.beginLoading(specifier:)(specifierCopy);
}

- (void)loadStarted:(id)started
{
  if (started)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_2759BA818();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  _s14iCloudSettings32ManageStorageDrilldownControllerC11loadStartedyyypSgF_0();

  sub_27586BF04(v6, &qword_280A0ED70, &qword_2759C6C60);
}

- (void)loadFinished:(id)finished
{
  if (finished)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_2759BA818();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  ManageStorageDrilldownController.loadFinished(_:)();

  sub_27586BF04(v6, &qword_280A0ED70, &qword_2759C6C60);
}

- (void)loadFailed:(id)failed withError:(id)error
{
  if (failed)
  {
    errorCopy = error;
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_2759BA818();
    selfCopy2 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    errorCopy2 = error;
    selfCopy2 = self;
  }

  ManageStorageDrilldownController.loadFailed(_:withError:)(selfCopy2, error);

  sub_27586BF04(v10, &qword_280A0ED70, &qword_2759C6C60);
}

- (ICSManageStorageDrilldownController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end