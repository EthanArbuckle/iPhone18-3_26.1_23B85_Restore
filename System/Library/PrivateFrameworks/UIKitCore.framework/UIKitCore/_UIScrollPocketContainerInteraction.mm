@interface _UIScrollPocketContainerInteraction
+ (double)_lumaUserInterfaceStyleSpringDuration;
- (CGRect)_elementInteractionRect;
- (UIScrollView)_scrollView;
- (UIView)view;
- (_UIScrollPocketCollectorInteraction)_collectorInteraction;
- (_UIScrollPocketContainerInteraction)init;
- (_UIScrollPocketContainerInteraction)initWithEdge:(unint64_t)a3;
- (_UIScrollPocketContainerInteraction)initWithScrollView:(id)a3 edge:(unint64_t)a4;
- (void)_setActive:(BOOL)a3;
- (void)_setEdge:(unint64_t)a3;
- (void)_setFindsParentScrollView:(BOOL)a3;
- (void)_updateProperties;
@end

@implementation _UIScrollPocketContainerInteraction

- (_UIScrollPocketContainerInteraction)initWithScrollView:(id)a3 edge:(unint64_t)a4
{
  objc_allocWithZone(type metadata accessor for ContainerImplementation());
  v7 = a3;
  *(&self->super.isa + OBJC_IVAR____UIScrollPocketContainerInteraction_implementation) = sub_188AF7050(a3, a4);
  v10.receiver = self;
  v10.super_class = _UIScrollPocketContainerInteraction;
  v8 = [(_UIScrollPocketContainerInteraction *)&v10 init];

  return v8;
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

- (void)_setEdge:(unint64_t)a3
{
  v4 = self;
  sub_1891DC560(a3, &OBJC_IVAR____UIScrollPocketContainerInteraction_implementation);
}

- (void)_setActive:(BOOL)a3
{
  v4 = self;
  sub_188CCEED0(a3);
}

- (_UIScrollPocketContainerInteraction)initWithEdge:(unint64_t)a3
{
  v5 = objc_allocWithZone(type metadata accessor for ContainerImplementation());
  v6 = sub_188AF7050(0, a3);
  *(&self->super.isa + OBJC_IVAR____UIScrollPocketContainerInteraction_implementation) = v6;
  v7 = v6;
  sub_188CD3560(1);

  v9.receiver = self;
  v9.super_class = _UIScrollPocketContainerInteraction;
  return [(_UIScrollPocketContainerInteraction *)&v9 init];
}

- (UIScrollView)_scrollView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_UIScrollPocketContainerInteraction)init
{
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

- (_UIScrollPocketCollectorInteraction)_collectorInteraction
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (CGRect)_elementInteractionRect
{
  [*(*(&self->super.isa + OBJC_IVAR____UIScrollPocketContainerInteraction_implementation) + OBJC_IVAR____TtC5UIKitP33_BA7E8DCF32E747052AD4072137B98A3B23ContainerImplementation_containerElementInteraction) _rect];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)_setFindsParentScrollView:(BOOL)a3
{
  v4 = self;
  sub_1891DC378(a3);
}

+ (double)_lumaUserInterfaceStyleSpringDuration
{
  v2 = _UIKitUserDefaults();
  if (v2)
  {
    v4 = v2;
    v5 = sub_188C574E8(0.6);

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

@end