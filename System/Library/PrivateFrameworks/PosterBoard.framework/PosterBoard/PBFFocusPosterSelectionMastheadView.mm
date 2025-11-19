@interface PBFFocusPosterSelectionMastheadView
- (_TtC11PosterBoard35PBFFocusPosterMastheadConfiguration)configuration;
- (_TtC11PosterBoard35PBFFocusPosterSelectionMastheadView)initWithFrame:(CGRect)a3;
- (void)setConfiguration:(id)a3;
@end

@implementation PBFFocusPosterSelectionMastheadView

- (_TtC11PosterBoard35PBFFocusPosterMastheadConfiguration)configuration
{
  v3 = OBJC_IVAR____TtC11PosterBoard35PBFFocusPosterSelectionMastheadView_configuration;
  swift_beginAccess();
  return *(&self->super.super.super.super.isa + v3);
}

- (void)setConfiguration:(id)a3
{
  v5 = OBJC_IVAR____TtC11PosterBoard35PBFFocusPosterSelectionMastheadView_configuration;
  swift_beginAccess();
  v6 = *(&self->super.super.super.super.isa + v5);
  v7 = v6;
  v8 = a3;
  v9 = self;
  sub_21B65BB58(a3);
  v10 = *(&self->super.super.super.super.isa + v5);
  *(&self->super.super.super.super.isa + v5) = a3;
  v11 = v8;

  sub_21B65BC18(v6);
}

- (_TtC11PosterBoard35PBFFocusPosterSelectionMastheadView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11PosterBoard35PBFFocusPosterSelectionMastheadView_mastheadView) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11PosterBoard35PBFFocusPosterSelectionMastheadView_mastheadBottomMargin) = 0x4030000000000000;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11PosterBoard35PBFFocusPosterSelectionMastheadView_configuration) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PBFFocusPosterSelectionMastheadView();
  return [(PBFFocusPosterSelectionMastheadView *)&v8 initWithFrame:x, y, width, height];
}

@end