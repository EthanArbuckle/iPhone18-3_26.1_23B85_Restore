@interface SessionVideoPlayerViewController
- (NSArray)preferredFocusEnvironments;
- (_TtC9SeymourUI32SessionVideoPlayerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didTapMediaPlayerViewWithTapGestureRecognizer:(id)a3;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation SessionVideoPlayerViewController

- (NSArray)preferredFocusEnvironments
{
  v2 = self;
  sub_20BE8FA88();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7620E0);
  v3 = sub_20C13CC54();

  return v3;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_20BE906FC();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SessionVideoPlayerViewController();
  v4 = v8.receiver;
  [(SessionVideoPlayerViewController *)&v8 viewWillAppear:v3];
  v5 = *&v4[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_presenter];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 24);
    ObjectType = swift_getObjectType();
    (*(v6 + 208))(ObjectType, v6);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SessionVideoPlayerViewController();
  v4 = v8.receiver;
  [(SessionVideoPlayerViewController *)&v8 viewWillDisappear:v3];
  v5 = *&v4[OBJC_IVAR____TtC9SeymourUI32SessionVideoPlayerViewController_presenter];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 24);
    ObjectType = swift_getObjectType();
    (*(v6 + 216))(ObjectType, v6);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

- (void)viewSafeAreaInsetsDidChange
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for SessionVideoPlayerViewController();
  [(SessionVideoPlayerViewController *)&v2 viewSafeAreaInsetsDidChange];
}

- (_TtC9SeymourUI32SessionVideoPlayerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)didTapMediaPlayerViewWithTapGestureRecognizer:(id)a3
{
  v3 = self;
  sub_20B672820();
}

@end