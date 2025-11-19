@interface ActionButtonContainerView
- (_TtC9SeymourUI25ActionButtonContainerView)initWithCoder:(id)a3;
- (_TtC9SeymourUI25ActionButtonContainerView)initWithFrame:(CGRect)a3;
- (void)actionButtonTapped:(id)a3;
@end

@implementation ActionButtonContainerView

- (_TtC9SeymourUI25ActionButtonContainerView)initWithCoder:(id)a3
{
  *(&self->super.super._responderFlags + OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_delegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_buttonActions) = MEMORY[0x277D84F90];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_rootStackView) = 0;
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (void)actionButtonTapped:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_20BC97530(v4);
}

- (_TtC9SeymourUI25ActionButtonContainerView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end