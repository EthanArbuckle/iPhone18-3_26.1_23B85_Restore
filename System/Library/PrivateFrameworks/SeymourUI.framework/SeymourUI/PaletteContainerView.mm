@interface PaletteContainerView
- (NSArray)interactions;
- (_TtC9SeymourUI20PaletteContainerView)initWithCoder:(id)coder;
- (_TtC9SeymourUI20PaletteContainerView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation PaletteContainerView

- (NSArray)interactions
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI20PaletteContainerView_containerView);
  selfCopy = self;
  interactions = [v2 interactions];
  if (!interactions)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F6F8);
    sub_20C13CC74();
    interactions = sub_20C13CC54();
  }

  return interactions;
}

- (_TtC9SeymourUI20PaletteContainerView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC9SeymourUI20PaletteContainerView_containerView;
  type metadata accessor for PaletteContainerView.ContainerView();
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = (self + OBJC_IVAR____TtC9SeymourUI20PaletteContainerView_contentInsets);
  v6 = *(MEMORY[0x277D768C8] + 16);
  *v5 = *MEMORY[0x277D768C8];
  v5[1] = v6;
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_20BE4BAE4();
}

- (_TtC9SeymourUI20PaletteContainerView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end