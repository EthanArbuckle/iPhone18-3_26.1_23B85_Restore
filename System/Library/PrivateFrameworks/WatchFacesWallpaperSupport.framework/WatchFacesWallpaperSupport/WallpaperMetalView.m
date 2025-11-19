@interface WallpaperMetalView
+ (Class)layerClass;
- (_TtC26WatchFacesWallpaperSupport18WallpaperMetalView)initWithFrame:(CGRect)a3;
- (void)dealloc;
- (void)displayLayer:(id)a3;
@end

@implementation WallpaperMetalView

- (void)dealloc
{
  v2 = (*(&self->super.super.super.isa + OBJC_IVAR____TtC26WatchFacesWallpaperSupport18WallpaperMetalView_displayLink))[4];
  if (v2)
  {
    v3 = self;
    [v2 invalidate];
    v4.receiver = v3;
    v4.super_class = type metadata accessor for WallpaperMetalView(0);
    [(WallpaperMetalView *)&v4 dealloc];
  }

  else
  {
    __break(1u);
  }
}

+ (Class)layerClass
{
  v2 = sub_1D96BE7C4(0, &qword_1EDB95C20, 0x1E69793F0);

  return MEMORY[0x1EEE6BF48](v2);
}

- (void)displayLayer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D96C0764();
}

- (_TtC26WatchFacesWallpaperSupport18WallpaperMetalView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end