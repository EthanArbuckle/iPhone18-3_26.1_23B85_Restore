@interface BrowsingViewController
- (_TtC9SeymourUI22BrowsingViewController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC9SeymourUI22BrowsingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC9SeymourUI22BrowsingViewController)initWithRootViewController:(id)controller;
- (int64_t)preferredStatusBarStyle;
- (void)scrollToTop;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation BrowsingViewController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for BrowsingViewController();
  v2 = v4.receiver;
  [(BrowsingViewController *)&v4 viewDidLoad];
  v3 = *&v2[OBJC_IVAR____TtC9SeymourUI22BrowsingViewController_pictureInPicturePresenter] + OBJC_IVAR____TtC9SeymourUI25PictureInPicturePresenter_display;
  swift_beginAccess();
  *(v3 + 8) = &protocol witness table for BrowsingViewController;
  swift_unknownObjectWeakAssign();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_20C12986C(appear);
}

- (int64_t)preferredStatusBarStyle
{
  selfCopy = self;
  topViewController = [(BrowsingViewController *)selfCopy topViewController];
  if (topViewController)
  {
    v4 = topViewController;
    preferredStatusBarStyle = [topViewController preferredStatusBarStyle];
  }

  else
  {
    preferredStatusBarStyle = 1;
  }

  return preferredStatusBarStyle;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = type metadata accessor for BrowsingViewController();
  swift_unknownObjectRetain();
  v7 = v9.receiver;
  [(BrowsingViewController *)&v9 viewWillTransitionToSize:coordinator withTransitionCoordinator:width, height];
  v8 = *&v7[OBJC_IVAR____TtC9SeymourUI22BrowsingViewController_paletteViewController];
  [v8 viewWillTransitionToSize:coordinator withTransitionCoordinator:{width, height, v9.receiver, v9.super_class}];

  swift_unknownObjectRelease();
}

- (void)scrollToTop
{
  selfCopy = self;
  sub_20C12AAB8();
}

- (_TtC9SeymourUI22BrowsingViewController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9SeymourUI22BrowsingViewController)initWithRootViewController:(id)controller
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9SeymourUI22BrowsingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end