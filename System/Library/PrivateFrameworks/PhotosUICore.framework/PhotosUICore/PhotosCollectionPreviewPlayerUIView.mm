@interface PhotosCollectionPreviewPlayerUIView
- (_TtC12PhotosUICore35PhotosCollectionPreviewPlayerUIView)initWithCoder:(id)coder;
- (_TtC12PhotosUICore35PhotosCollectionPreviewPlayerUIView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation PhotosCollectionPreviewPlayerUIView

- (_TtC12PhotosUICore35PhotosCollectionPreviewPlayerUIView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore35PhotosCollectionPreviewPlayerUIView_player) = 0;
  type metadata accessor for PXStoryAsyncPlayerView();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore35PhotosCollectionPreviewPlayerUIView_sharedPlayerView) = _s12PhotosUICore17ParallaxTitleViewC5frameACSo6CGRectV_tcfC_0(0.0, 0.0, width, height);
  v10.receiver = self;
  v10.super_class = type metadata accessor for PhotosCollectionPreviewPlayerUIView();
  height = [(PhotosCollectionPreviewPlayerUIView *)&v10 initWithFrame:x, y, width, height];
  [(PhotosCollectionPreviewPlayerUIView *)height addSubview:*(&height->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore35PhotosCollectionPreviewPlayerUIView_sharedPlayerView)];
  return height;
}

- (_TtC12PhotosUICore35PhotosCollectionPreviewPlayerUIView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore35PhotosCollectionPreviewPlayerUIView_player) = 0;
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for PhotosCollectionPreviewPlayerUIView();
  v2 = v4.receiver;
  [(PhotosCollectionPreviewPlayerUIView *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC12PhotosUICore35PhotosCollectionPreviewPlayerUIView_sharedPlayerView];
  [v2 bounds];
  [v3 setFrame_];
}

@end