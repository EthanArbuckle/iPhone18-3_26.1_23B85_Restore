@interface PhotosDynamicHeaderView
- (BOOL)canUnloadWhenInvisible;
- (CGRect)clippingRect;
- (NSCopying)userData;
- (_TtC12PhotosUICore23PhotosDynamicHeaderView)initWithFrame:(CGRect)a3;
- (void)becomeReusable;
- (void)layoutSubviews;
- (void)setClippingRect:(CGRect)a3;
- (void)setUserData:(id)a3;
@end

@implementation PhotosDynamicHeaderView

- (void)layoutSubviews
{
  v2 = self;
  sub_1A419C4B8();
}

- (NSCopying)userData
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setUserData:(id)a3
{
  v5 = OBJC_IVAR____TtC12PhotosUICore23PhotosDynamicHeaderView_userData;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = a3;
  swift_unknownObjectRetain_n();
  v6 = self;
  swift_unknownObjectRelease();
  sub_1A419C968();
  swift_unknownObjectRelease();
}

- (CGRect)clippingRect
{
  v2 = (self + OBJC_IVAR____TtC12PhotosUICore23PhotosDynamicHeaderView_clippingRect);
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
  v7 = (self + OBJC_IVAR____TtC12PhotosUICore23PhotosDynamicHeaderView_clippingRect);
  swift_beginAccess();
  *v7 = x;
  v7[1] = y;
  v7[2] = width;
  v7[3] = height;
}

- (void)becomeReusable
{
  v3 = OBJC_IVAR____TtC12PhotosUICore23PhotosDynamicHeaderView_userData;
  swift_beginAccess();
  *(&self->super.super.super.isa + v3) = 0;
  v4 = self;
  swift_unknownObjectRelease();
  sub_1A419C968();
}

- (BOOL)canUnloadWhenInvisible
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore23PhotosDynamicHeaderView_contentView);
  if (v2)
  {
    v3 = *(**&v2[OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_model] + 416);
    v4 = self;
    v5 = v2;
    v6 = v3();

    v7 = v6 ^ 1;
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

- (_TtC12PhotosUICore23PhotosDynamicHeaderView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v9 = (self + OBJC_IVAR____TtC12PhotosUICore23PhotosDynamicHeaderView_configuration);
  *v9 = 0u;
  v9[1] = 0u;
  v9[2] = 0u;
  v9[3] = 0u;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore23PhotosDynamicHeaderView_contentView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore23PhotosDynamicHeaderView_userData) = 0;
  v10 = (self + OBJC_IVAR____TtC12PhotosUICore23PhotosDynamicHeaderView_clippingRect);
  *v10 = 0u;
  v10[1] = 0u;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore23PhotosDynamicHeaderView_isFloating) = 1;
  v12.receiver = self;
  v12.super_class = ObjectType;
  return [(PhotosDynamicHeaderView *)&v12 initWithFrame:x, y, width, height];
}

@end