@interface _UIScrollPocketAppearanceObserverInteraction
- (NSString)description;
- (UIView)_view;
- (UIView)view;
- (_UIScrollPocketAppearanceObserver)observer;
- (_UIScrollPocketAppearanceObserverInteraction)init;
- (_UIScrollPocketAppearanceObserverInteraction)initWithCollectorInteraction:(id)a3;
- (void)_updateProperties;
- (void)appendDescriptionToStream:(id)a3;
@end

@implementation _UIScrollPocketAppearanceObserverInteraction

- (_UIScrollPocketAppearanceObserver)observer
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UIView)_view
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UIView)view
{
  v2 = [(_UIScrollPocketAppearanceObserverInteraction *)self _view];

  return v2;
}

- (_UIScrollPocketAppearanceObserverInteraction)initWithCollectorInteraction:(id)a3
{
  *(self + OBJC_IVAR____UIScrollPocketAppearanceObserverInteraction_glassFrostValues) = MEMORY[0x1E69E7CC8];
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR____UIScrollPocketAppearanceObserverInteraction_collectorInteraction) = a3;
  v7.receiver = self;
  v7.super_class = _UIScrollPocketAppearanceObserverInteraction;
  v5 = a3;
  return [(_UIScrollPocketAppearanceObserverInteraction *)&v7 init];
}

- (void)_updateProperties
{
  v2 = self;
  sub_1890960C0();
}

- (NSString)description
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 descriptionForRootObject_];
  if (!v5)
  {
    sub_18A4A7288();
    v5 = sub_18A4A7258();
  }

  return v5;
}

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1890963A8(v4);
}

- (_UIScrollPocketAppearanceObserverInteraction)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end