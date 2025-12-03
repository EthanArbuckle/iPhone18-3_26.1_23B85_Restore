@interface PosterRotatingViewController
- (_TtC26WatchFacesWallpaperSupport28PosterRotatingViewController)initWithCoder:(id)coder;
- (_TtC26WatchFacesWallpaperSupport28PosterRotatingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation PosterRotatingViewController

- (_TtC26WatchFacesWallpaperSupport28PosterRotatingViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC26WatchFacesWallpaperSupport28PosterRotatingViewController_rotatingResponders) = MEMORY[0x1E69E7CC0];
  type metadata accessor for PosterRotatingViewController();
  swift_deallocPartialClassInstance();
  return 0;
}

- (void)willMoveToParentViewController:(id)controller
{
  v14.receiver = self;
  v14.super_class = type metadata accessor for PosterRotatingViewController();
  v4 = v14.receiver;
  controllerCopy = controller;
  [(PosterRotatingViewController *)&v14 willMoveToParentViewController:controllerCopy];
  view = [v4 view];
  if (view)
  {
    v7 = view;
    [view bounds];
    v9 = v8;
    v11 = v10;

    v12 = sub_1D96C3CB8() - 2;
    v13 = 0.0;
    if (v12 <= 2)
    {
      v13 = dbl_1D96DCF18[v12];
    }

    sub_1D96C49F0(v9, v11, v13);
  }

  else
  {
    __break(1u);
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1D96C4150(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (_TtC26WatchFacesWallpaperSupport28PosterRotatingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end