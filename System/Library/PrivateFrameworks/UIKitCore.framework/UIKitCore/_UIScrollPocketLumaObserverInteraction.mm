@interface _UIScrollPocketLumaObserverInteraction
- (NSString)description;
- (UIView)_view;
- (UIView)view;
- (_UIScrollPocketLumaObserver)observer;
- (_UIScrollPocketLumaObserverInteraction)init;
- (_UIScrollPocketLumaObserverInteraction)initWithCollectorInteraction:(id)a3;
- (void)_updateProperties;
- (void)appendDescriptionToStream:(id)a3;
@end

@implementation _UIScrollPocketLumaObserverInteraction

- (void)_updateProperties
{
  v2 = self;
  sub_188DCE620();
}

- (_UIScrollPocketLumaObserver)observer
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_UIScrollPocketLumaObserverInteraction)initWithCollectorInteraction:(id)a3
{
  *(self + OBJC_IVAR____UIScrollPocketLumaObserverInteraction_lumaValues) = MEMORY[0x1E69E7CC8];
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR____UIScrollPocketLumaObserverInteraction_collectorInteraction) = a3;
  v7.receiver = self;
  v7.super_class = _UIScrollPocketLumaObserverInteraction;
  v5 = a3;
  return [(_UIScrollPocketLumaObserverInteraction *)&v7 init];
}

- (UIView)view
{
  v2 = [(_UIScrollPocketLumaObserverInteraction *)self _view];

  return v2;
}

- (UIView)_view
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
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
  sub_188F2A64C(v4);
}

- (_UIScrollPocketLumaObserverInteraction)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end