@interface PXStoryAsyncPlayerView
- (_TtC12PhotosUICore22PXStoryAsyncPlayerView)initWithCoder:(id)coder;
- (_TtC12PhotosUICore22PXStoryAsyncPlayerView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation PXStoryAsyncPlayerView

- (_TtC12PhotosUICore22PXStoryAsyncPlayerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore22PXStoryAsyncPlayerView_player) = 0;
  initWithFrame_ = [objc_allocWithZone(PXGHostingView) initWithFrame_];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore22PXStoryAsyncPlayerView_hostingView) = initWithFrame_;
  v11.receiver = self;
  v11.super_class = type metadata accessor for PXStoryAsyncPlayerView();
  height = [(PXStoryAsyncPlayerView *)&v11 initWithFrame:x, y, width, height];
  [(PXStoryAsyncPlayerView *)height addSubview:*(&height->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore22PXStoryAsyncPlayerView_hostingView)];
  return height;
}

- (_TtC12PhotosUICore22PXStoryAsyncPlayerView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore22PXStoryAsyncPlayerView_player) = 0;
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore22PXStoryAsyncPlayerView_hostingView);
  selfCopy = self;
  [(PXStoryAsyncPlayerView *)selfCopy bounds];
  [v2 setFrame_];
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for PXStoryAsyncPlayerView();
  [(PXStoryAsyncPlayerView *)&v4 layoutSubviews];
}

@end