@interface PKPassShareActivationOverviewViewController
- (_TtC9PassKitUI43PKPassShareActivationOverviewViewController)initWithActivationOptions:(id)options recipient:(id)recipient delegate:(id)delegate;
- (_TtC9PassKitUI43PKPassShareActivationOverviewViewController)initWithCoder:(id)coder;
- (_TtC9PassKitUI43PKPassShareActivationOverviewViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)closeButtonPressed;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PKPassShareActivationOverviewViewController

- (_TtC9PassKitUI43PKPassShareActivationOverviewViewController)initWithActivationOptions:(id)options recipient:(id)recipient delegate:(id)delegate
{
  optionsCopy = options;
  recipientCopy = recipient;
  swift_unknownObjectRetain();
  v8 = sub_1BDA6E3D0(optionsCopy, recipientCopy);

  swift_unknownObjectRelease();
  return v8;
}

- (_TtC9PassKitUI43PKPassShareActivationOverviewViewController)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9PassKitUI43PKPassShareActivationOverviewViewController_hostingController) = 0;
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
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
  selfCopy = self;
  sub_1BDA6B50C();
}

- (_TtC9PassKitUI43PKPassShareActivationOverviewViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end