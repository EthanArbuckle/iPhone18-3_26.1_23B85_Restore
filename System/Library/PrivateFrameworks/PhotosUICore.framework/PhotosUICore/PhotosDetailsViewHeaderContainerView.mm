@interface PhotosDetailsViewHeaderContainerView
- (CGRect)clippingRect;
- (NSCopying)userData;
- (_TtC12PhotosUICore36PhotosDetailsViewHeaderContainerView)initWithFrame:(CGRect)a3;
- (void)becomeReusable;
- (void)layoutSubviews;
- (void)setClippingRect:(CGRect)a3;
- (void)setUserData:(id)a3;
@end

@implementation PhotosDetailsViewHeaderContainerView

- (NSCopying)userData
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setUserData:(id)a3
{
  v5 = OBJC_IVAR____TtC12PhotosUICore36PhotosDetailsViewHeaderContainerView_userData;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = a3;
  swift_unknownObjectRetain_n();
  v6 = self;
  swift_unknownObjectRelease();
  sub_1A48425F0();
  swift_unknownObjectRelease();
}

- (CGRect)clippingRect
{
  v2 = (self + OBJC_IVAR____TtC12PhotosUICore36PhotosDetailsViewHeaderContainerView_clippingRect);
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

- (void)setClippingRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = (self + OBJC_IVAR____TtC12PhotosUICore36PhotosDetailsViewHeaderContainerView_clippingRect);
  swift_beginAccess();
  *v7 = x;
  v7[1] = y;
  v7[2] = width;
  v7[3] = height;
}

- (void)becomeReusable
{
  v2 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.isa) + 0x78);
  v3 = self;
  v2(0);
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for PhotosDetailsViewHeaderContainerView(0);
  v2 = v5.receiver;
  [(PhotosDetailsViewHeaderContainerView *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC12PhotosUICore36PhotosDetailsViewHeaderContainerView_contentView];
  if (v3)
  {
    v4 = v3;
    [v2 bounds];
    [v4 setFrame_];
  }
}

- (_TtC12PhotosUICore36PhotosDetailsViewHeaderContainerView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore36PhotosDetailsViewHeaderContainerView_userData) = 0;
  v8 = (self + OBJC_IVAR____TtC12PhotosUICore36PhotosDetailsViewHeaderContainerView_clippingRect);
  *v8 = 0u;
  v8[1] = 0u;
  v9 = OBJC_IVAR____TtC12PhotosUICore36PhotosDetailsViewHeaderContainerView_configuration;
  v10 = type metadata accessor for PhotosDetailsViewHeaderContainerView.Configuration(0);
  (*(*(v10 - 8) + 56))(self + v9, 1, 1, v10);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore36PhotosDetailsViewHeaderContainerView_contentView) = 0;
  v12.receiver = self;
  v12.super_class = type metadata accessor for PhotosDetailsViewHeaderContainerView(0);
  return [(PhotosDetailsViewHeaderContainerView *)&v12 initWithFrame:x, y, width, height];
}

@end