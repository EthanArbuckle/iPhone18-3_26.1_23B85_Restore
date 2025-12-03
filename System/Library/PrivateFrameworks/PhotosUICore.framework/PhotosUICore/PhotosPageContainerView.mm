@interface PhotosPageContainerView
- (CGRect)clippingRect;
- (NSCopying)userData;
- (_TtC12PhotosUICore23PhotosPageContainerView)initWithFrame:(CGRect)frame;
- (void)prepareForReuse;
- (void)setClippingRect:(CGRect)rect;
- (void)setUserData:(id)data;
@end

@implementation PhotosPageContainerView

- (NSCopying)userData
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setUserData:(id)data
{
  v5 = OBJC_IVAR____TtC12PhotosUICore23PhotosPageContainerView_userData;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = data;
  swift_unknownObjectRetain_n();
  selfCopy = self;
  swift_unknownObjectRelease();
  sub_1A42B29A0();
  swift_unknownObjectRelease();
}

- (CGRect)clippingRect
{
  v2 = (self + OBJC_IVAR____TtC12PhotosUICore23PhotosPageContainerView_clippingRect);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)setClippingRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v7 = (self + OBJC_IVAR____TtC12PhotosUICore23PhotosPageContainerView_clippingRect);
  swift_beginAccess();
  *v7 = x;
  v7[1] = y;
  v7[2] = width;
  v7[3] = height;
}

- (void)prepareForReuse
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore23PhotosPageContainerView_configuration);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore23PhotosPageContainerView_configuration) = 0;
  selfCopy = self;
  sub_1A42B23CC(v3);
}

- (_TtC12PhotosUICore23PhotosPageContainerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore23PhotosPageContainerView_configuration) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore23PhotosPageContainerView_contentView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore23PhotosPageContainerView_userData) = 0;
  v7 = (self + OBJC_IVAR____TtC12PhotosUICore23PhotosPageContainerView_clippingRect);
  v8 = *(MEMORY[0x1E695F050] + 16);
  *v7 = *MEMORY[0x1E695F050];
  v7[1] = v8;
  v10.receiver = self;
  v10.super_class = type metadata accessor for PhotosPageContainerView();
  return [(PhotosPageContainerView *)&v10 initWithFrame:x, y, width, height];
}

@end