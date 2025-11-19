@interface SearchUICustomViewHostingView
- (_TtC8SearchUI29SearchUICustomViewHostingView)initWithHostedView:(id)a3;
- (void)_layoutMetricsInvalidatedForHostedView;
@end

@implementation SearchUICustomViewHostingView

- (void)_layoutMetricsInvalidatedForHostedView
{
  v2 = self;
  [(SearchUICustomViewHostingView *)v2 invalidateIntrinsicContentSize];
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1DA232160(v2);
    swift_unknownObjectRelease();
  }
}

- (_TtC8SearchUI29SearchUICustomViewHostingView)initWithHostedView:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC8SearchUI29SearchUICustomViewHostingView_delegate) = 0;
  swift_unknownObjectWeakInit();
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(_UIConstraintBasedLayoutHostingView *)&v7 initWithHostedView:a3];
}

@end