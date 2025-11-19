@interface UIScrollEdgeElementContainerInteraction
- (UIScrollEdgeElementContainerInteraction)init;
- (UIScrollView)scrollView;
- (UIView)view;
- (void)_updateProperties;
- (void)setEdge:(unint64_t)a3;
@end

@implementation UIScrollEdgeElementContainerInteraction

- (UIScrollView)scrollView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setEdge:(unint64_t)a3
{
  v4 = self;
  sub_1891DC560(a3, &OBJC_IVAR___UIScrollEdgeElementContainerInteraction_implementation);
}

- (UIView)view
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)_updateProperties
{
  v2 = self;
  sub_188AF9204();
}

- (UIScrollEdgeElementContainerInteraction)init
{
  v3 = OBJC_IVAR___UIScrollEdgeElementContainerInteraction_implementation;
  v4 = objc_allocWithZone(type metadata accessor for ContainerImplementation());
  *(&self->super.isa + v3) = sub_188AF7050(0, 0);
  v6.receiver = self;
  v6.super_class = UIScrollEdgeElementContainerInteraction;
  return [(UIScrollEdgeElementContainerInteraction *)&v6 init];
}

@end