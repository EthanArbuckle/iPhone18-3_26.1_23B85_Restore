@interface ActionButtonContainerView
- (_TtC9SeymourUI25ActionButtonContainerView)initWithCoder:(id)coder;
- (_TtC9SeymourUI25ActionButtonContainerView)initWithFrame:(CGRect)frame;
- (void)actionButtonTapped:(id)tapped;
@end

@implementation ActionButtonContainerView

- (_TtC9SeymourUI25ActionButtonContainerView)initWithCoder:(id)coder
{
  *(&self->super.super._responderFlags + OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_delegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_buttonActions) = MEMORY[0x277D84F90];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_rootStackView) = 0;
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (void)actionButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  sub_20BC97530(tappedCopy);
}

- (_TtC9SeymourUI25ActionButtonContainerView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end