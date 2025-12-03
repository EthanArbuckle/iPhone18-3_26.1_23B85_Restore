@interface PBFFocusPosterSelectionMastheadView
- (_TtC11PosterBoard35PBFFocusPosterMastheadConfiguration)configuration;
- (_TtC11PosterBoard35PBFFocusPosterSelectionMastheadView)initWithFrame:(CGRect)frame;
- (void)setConfiguration:(id)configuration;
@end

@implementation PBFFocusPosterSelectionMastheadView

- (_TtC11PosterBoard35PBFFocusPosterMastheadConfiguration)configuration
{
  v3 = OBJC_IVAR____TtC11PosterBoard35PBFFocusPosterSelectionMastheadView_configuration;
  swift_beginAccess();
  return *(&self->super.super.super.super.isa + v3);
}

- (void)setConfiguration:(id)configuration
{
  v5 = OBJC_IVAR____TtC11PosterBoard35PBFFocusPosterSelectionMastheadView_configuration;
  swift_beginAccess();
  v6 = *(&self->super.super.super.super.isa + v5);
  v7 = v6;
  configurationCopy = configuration;
  selfCopy = self;
  sub_21B65BB58(configuration);
  v10 = *(&self->super.super.super.super.isa + v5);
  *(&self->super.super.super.super.isa + v5) = configuration;
  v11 = configurationCopy;

  sub_21B65BC18(v6);
}

- (_TtC11PosterBoard35PBFFocusPosterSelectionMastheadView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11PosterBoard35PBFFocusPosterSelectionMastheadView_mastheadView) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11PosterBoard35PBFFocusPosterSelectionMastheadView_mastheadBottomMargin) = 0x4030000000000000;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11PosterBoard35PBFFocusPosterSelectionMastheadView_configuration) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PBFFocusPosterSelectionMastheadView();
  return [(PBFFocusPosterSelectionMastheadView *)&v8 initWithFrame:x, y, width, height];
}

@end