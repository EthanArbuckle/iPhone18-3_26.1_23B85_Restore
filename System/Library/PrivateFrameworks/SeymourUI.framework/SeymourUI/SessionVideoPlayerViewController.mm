@interface SessionVideoPlayerViewController
- (NSArray)preferredFocusEnvironments;
- (_TtC9SeymourUI32SessionVideoPlayerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didTapMediaPlayerViewWithTapGestureRecognizer:(id)recognizer;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SessionVideoPlayerViewController

- (NSArray)preferredFocusEnvironments
{
  selfCopy = self;
  sub_20BE8FA88();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7620E0);
  v3 = sub_20C13CC54();

  return v3;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_20BE906FC();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SessionVideoPlayerViewController();
  v4 = v8.receiver;
  [(SessionVideoPlayerViewController *)&v8 viewWillAppear:appearCopy];
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

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SessionVideoPlayerViewController();
  v4 = v8.receiver;
  [(SessionVideoPlayerViewController *)&v8 viewWillDisappear:disappearCopy];
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

- (_TtC9SeymourUI32SessionVideoPlayerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)didTapMediaPlayerViewWithTapGestureRecognizer:(id)recognizer
{
  selfCopy = self;
  sub_20B672820();
}

@end