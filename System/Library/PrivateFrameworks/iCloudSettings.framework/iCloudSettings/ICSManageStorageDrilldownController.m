@interface ICSManageStorageDrilldownController
- (ICSManageStorageDrilldownController)init;
- (ICSManageStorageDrilldownController)initWithAppBundleID:(id)a3 account:(id)a4 navigationController:(id)a5;
- (ICSManageStorageDrilldownController)initWithAppBundleID:(id)a3 account:(id)a4 presentingController:(id)a5;
- (void)beginLoadingForSpecifier:(id)a3;
- (void)cancelLoading;
- (void)loadFailed:(id)a3 withError:(id)a4;
- (void)loadFinished:(id)a3;
- (void)loadStarted:(id)a3;
@end

@implementation ICSManageStorageDrilldownController

- (ICSManageStorageDrilldownController)initWithAppBundleID:(id)a3 account:(id)a4 presentingController:(id)a5
{
  if (a3)
  {
    v7 = sub_2759BA298();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = a4;
  v11 = a5;
  v12 = sub_2758D53E4(v7, v9, a4);

  return v12;
}

- (ICSManageStorageDrilldownController)initWithAppBundleID:(id)a3 account:(id)a4 navigationController:(id)a5
{
  if (a3)
  {
    sub_2759BA298();
    v8 = a4;
    v9 = a5;
    v10 = sub_2759BA258();
  }

  else
  {
    v11 = a4;
    v12 = a5;
    v10 = 0;
  }

  v13 = [(ICSManageStorageDrilldownController *)self initWithAppBundleID:v10 account:a4 presentingController:0];

  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  return v13;
}

- (void)cancelLoading
{
  v2 = self;
  ManageStorageDrilldownController.cancelLoading()();
}

- (void)beginLoadingForSpecifier:(id)a3
{
  v4 = a3;
  v5 = self;
  ManageStorageDrilldownController.beginLoading(specifier:)(v4);
}

- (void)loadStarted:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_2759BA818();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  _s14iCloudSettings32ManageStorageDrilldownControllerC11loadStartedyyypSgF_0();

  sub_27586BF04(v6, &qword_280A0ED70, &qword_2759C6C60);
}

- (void)loadFinished:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_2759BA818();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  ManageStorageDrilldownController.loadFinished(_:)();

  sub_27586BF04(v6, &qword_280A0ED70, &qword_2759C6C60);
}

- (void)loadFailed:(id)a3 withError:(id)a4
{
  if (a3)
  {
    v6 = a4;
    v7 = self;
    swift_unknownObjectRetain();
    sub_2759BA818();
    v8 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v9 = a4;
    v8 = self;
  }

  ManageStorageDrilldownController.loadFailed(_:withError:)(v8, a4);

  sub_27586BF04(v10, &qword_280A0ED70, &qword_2759C6C60);
}

- (ICSManageStorageDrilldownController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end