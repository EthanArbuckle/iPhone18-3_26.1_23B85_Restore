@interface SearchUICustomViewHostingView
- (_TtC8SearchUI29SearchUICustomViewHostingView)initWithHostedView:(id)view;
- (void)_layoutMetricsInvalidatedForHostedView;
@end

@implementation SearchUICustomViewHostingView

- (void)_layoutMetricsInvalidatedForHostedView
{
  selfCopy = self;
  [(SearchUICustomViewHostingView *)selfCopy invalidateIntrinsicContentSize];
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1DA232160(selfCopy);
    swift_unknownObjectRelease();
  }
}

- (_TtC8SearchUI29SearchUICustomViewHostingView)initWithHostedView:(id)view
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC8SearchUI29SearchUICustomViewHostingView_delegate) = 0;
  swift_unknownObjectWeakInit();
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(_UIConstraintBasedLayoutHostingView *)&v7 initWithHostedView:view];
}

@end