@interface BrowsingViewController
- (_TtC9SeymourUI22BrowsingViewController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (_TtC9SeymourUI22BrowsingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC9SeymourUI22BrowsingViewController)initWithRootViewController:(id)a3;
- (int64_t)preferredStatusBarStyle;
- (void)scrollToTop;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
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

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_20C12986C(a3);
}

- (int64_t)preferredStatusBarStyle
{
  v2 = self;
  v3 = [(BrowsingViewController *)v2 topViewController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 preferredStatusBarStyle];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = type metadata accessor for BrowsingViewController();
  swift_unknownObjectRetain();
  v7 = v9.receiver;
  [(BrowsingViewController *)&v9 viewWillTransitionToSize:a4 withTransitionCoordinator:width, height];
  v8 = *&v7[OBJC_IVAR____TtC9SeymourUI22BrowsingViewController_paletteViewController];
  [v8 viewWillTransitionToSize:a4 withTransitionCoordinator:{width, height, v9.receiver, v9.super_class}];

  swift_unknownObjectRelease();
}

- (void)scrollToTop
{
  v2 = self;
  sub_20C12AAB8();
}

- (_TtC9SeymourUI22BrowsingViewController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9SeymourUI22BrowsingViewController)initWithRootViewController:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9SeymourUI22BrowsingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end