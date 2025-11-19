@interface PhotosSearchSubtitleViewHidingBackButton
- (_TtC12PhotosUICore40PhotosSearchSubtitleViewHidingBackButton)initWithCoder:(id)a3;
- (_TtC12PhotosUICore40PhotosSearchSubtitleViewHidingBackButton)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)layoutSubviews;
- (void)removeFromSuperview;
@end

@implementation PhotosSearchSubtitleViewHidingBackButton

- (_TtC12PhotosUICore40PhotosSearchSubtitleViewHidingBackButton)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  v4 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore40PhotosSearchSubtitleViewHidingBackButton_indexingStatusView);
  v4[1] = 0;
  v4[2] = 0;
  *v4 = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore40PhotosSearchSubtitleViewHidingBackButton_subtitleView) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore40PhotosSearchSubtitleViewHidingBackButton_cachedTitleFrameMaxY) = 0;
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1A47F0A04();
}

- (void)removeFromSuperview
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PhotosSearchSubtitleViewHidingBackButton();
  v2 = v3.receiver;
  [(PhotosSearchSubtitleViewHidingBackButton *)&v3 removeFromSuperview];
  *&v2[OBJC_IVAR____TtC12PhotosUICore40PhotosSearchSubtitleViewHidingBackButton_cachedTitleFrameMaxY] = 0;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v4 = *(self + OBJC_IVAR____TtC12PhotosUICore40PhotosSearchSubtitleViewHidingBackButton_subtitleView);
  if (v4)
  {
    y = a3.y;
    x = a3.x;
    v8 = self;
    v9 = v4;
    v10 = a4;
    [v9 convertPoint:v8 fromCoordinateSpace:{x, y}];
    v11 = [v9 hitTest:v10 withEvent:?];

    if (!v11)
    {
      v12.receiver = v8;
      v12.super_class = type metadata accessor for PhotosSearchSubtitleViewHidingBackButton();
      v11 = [(_UINavigationBarTitleView *)&v12 hitTest:v10 withEvent:x, y];
    }

    return v11;
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (_TtC12PhotosUICore40PhotosSearchSubtitleViewHidingBackButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end