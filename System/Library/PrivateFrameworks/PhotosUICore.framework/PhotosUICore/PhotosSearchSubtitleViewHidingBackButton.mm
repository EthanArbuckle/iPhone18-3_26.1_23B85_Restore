@interface PhotosSearchSubtitleViewHidingBackButton
- (_TtC12PhotosUICore40PhotosSearchSubtitleViewHidingBackButton)initWithCoder:(id)coder;
- (_TtC12PhotosUICore40PhotosSearchSubtitleViewHidingBackButton)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)layoutSubviews;
- (void)removeFromSuperview;
@end

@implementation PhotosSearchSubtitleViewHidingBackButton

- (_TtC12PhotosUICore40PhotosSearchSubtitleViewHidingBackButton)initWithCoder:(id)coder
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
  selfCopy = self;
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

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v4 = *(self + OBJC_IVAR____TtC12PhotosUICore40PhotosSearchSubtitleViewHidingBackButton_subtitleView);
  if (v4)
  {
    y = test.y;
    x = test.x;
    selfCopy = self;
    v9 = v4;
    eventCopy = event;
    [v9 convertPoint:selfCopy fromCoordinateSpace:{x, y}];
    v11 = [v9 hitTest:eventCopy withEvent:?];

    if (!v11)
    {
      v12.receiver = selfCopy;
      v12.super_class = type metadata accessor for PhotosSearchSubtitleViewHidingBackButton();
      v11 = [(_UINavigationBarTitleView *)&v12 hitTest:eventCopy withEvent:x, y];
    }

    return v11;
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (_TtC12PhotosUICore40PhotosSearchSubtitleViewHidingBackButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end