@interface PKPassShareActivationOverviewViewController
- (_TtC9PassKitUI43PKPassShareActivationOverviewViewController)initWithActivationOptions:(id)a3 recipient:(id)a4 delegate:(id)a5;
- (_TtC9PassKitUI43PKPassShareActivationOverviewViewController)initWithCoder:(id)a3;
- (_TtC9PassKitUI43PKPassShareActivationOverviewViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)closeButtonPressed;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PKPassShareActivationOverviewViewController

- (_TtC9PassKitUI43PKPassShareActivationOverviewViewController)initWithActivationOptions:(id)a3 recipient:(id)a4 delegate:(id)a5
{
  v6 = a3;
  v7 = a4;
  swift_unknownObjectRetain();
  v8 = sub_1BDA6E3D0(v6, v7);

  swift_unknownObjectRelease();
  return v8;
}

- (_TtC9PassKitUI43PKPassShareActivationOverviewViewController)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9PassKitUI43PKPassShareActivationOverviewViewController_hostingController) = 0;
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1BDA6B0C8();
}

- (void)closeButtonPressed
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong shareActivationOverviewViewControllerDidFinish_];

    swift_unknownObjectRelease();
  }
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_1BDA6B50C();
}

- (_TtC9PassKitUI43PKPassShareActivationOverviewViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end