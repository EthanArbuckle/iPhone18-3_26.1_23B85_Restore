@interface PXStoryAsyncPlayerView
- (_TtC12PhotosUICore22PXStoryAsyncPlayerView)initWithCoder:(id)a3;
- (_TtC12PhotosUICore22PXStoryAsyncPlayerView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation PXStoryAsyncPlayerView

- (_TtC12PhotosUICore22PXStoryAsyncPlayerView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore22PXStoryAsyncPlayerView_player) = 0;
  v8 = [objc_allocWithZone(PXGHostingView) initWithFrame_];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore22PXStoryAsyncPlayerView_hostingView) = v8;
  v11.receiver = self;
  v11.super_class = type metadata accessor for PXStoryAsyncPlayerView();
  v9 = [(PXStoryAsyncPlayerView *)&v11 initWithFrame:x, y, width, height];
  [(PXStoryAsyncPlayerView *)v9 addSubview:*(&v9->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore22PXStoryAsyncPlayerView_hostingView)];
  return v9;
}

- (_TtC12PhotosUICore22PXStoryAsyncPlayerView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore22PXStoryAsyncPlayerView_player) = 0;
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore22PXStoryAsyncPlayerView_hostingView);
  v3 = self;
  [(PXStoryAsyncPlayerView *)v3 bounds];
  [v2 setFrame_];
  v4.receiver = v3;
  v4.super_class = type metadata accessor for PXStoryAsyncPlayerView();
  [(PXStoryAsyncPlayerView *)&v4 layoutSubviews];
}

@end