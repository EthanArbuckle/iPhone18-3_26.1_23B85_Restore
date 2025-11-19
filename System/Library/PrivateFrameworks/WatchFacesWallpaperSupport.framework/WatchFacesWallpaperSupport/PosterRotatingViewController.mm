@interface PosterRotatingViewController
- (_TtC26WatchFacesWallpaperSupport28PosterRotatingViewController)initWithCoder:(id)a3;
- (_TtC26WatchFacesWallpaperSupport28PosterRotatingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation PosterRotatingViewController

- (_TtC26WatchFacesWallpaperSupport28PosterRotatingViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC26WatchFacesWallpaperSupport28PosterRotatingViewController_rotatingResponders) = MEMORY[0x1E69E7CC0];
  type metadata accessor for PosterRotatingViewController();
  swift_deallocPartialClassInstance();
  return 0;
}

- (void)willMoveToParentViewController:(id)a3
{
  v14.receiver = self;
  v14.super_class = type metadata accessor for PosterRotatingViewController();
  v4 = v14.receiver;
  v5 = a3;
  [(PosterRotatingViewController *)&v14 willMoveToParentViewController:v5];
  v6 = [v4 view];
  if (v6)
  {
    v7 = v6;
    [v6 bounds];
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

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  sub_1D96C4150(a4, width, height);
  swift_unknownObjectRelease();
}

- (_TtC26WatchFacesWallpaperSupport28PosterRotatingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end