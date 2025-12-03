@interface _UIScrollPocketLumaObserverInteraction
- (NSString)description;
- (UIView)_view;
- (UIView)view;
- (_UIScrollPocketLumaObserver)observer;
- (_UIScrollPocketLumaObserverInteraction)init;
- (_UIScrollPocketLumaObserverInteraction)initWithCollectorInteraction:(id)interaction;
- (void)_updateProperties;
- (void)appendDescriptionToStream:(id)stream;
@end

@implementation _UIScrollPocketLumaObserverInteraction

- (void)_updateProperties
{
  selfCopy = self;
  sub_188DCE620();
}

- (_UIScrollPocketLumaObserver)observer
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_UIScrollPocketLumaObserverInteraction)initWithCollectorInteraction:(id)interaction
{
  *(self + OBJC_IVAR____UIScrollPocketLumaObserverInteraction_lumaValues) = MEMORY[0x1E69E7CC8];
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR____UIScrollPocketLumaObserverInteraction_collectorInteraction) = interaction;
  v7.receiver = self;
  v7.super_class = _UIScrollPocketLumaObserverInteraction;
  interactionCopy = interaction;
  return [(_UIScrollPocketLumaObserverInteraction *)&v7 init];
}

- (UIView)view
{
  _view = [(_UIScrollPocketLumaObserverInteraction *)self _view];

  return _view;
}

- (UIView)_view
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (NSString)description
{
  v3 = objc_opt_self();
  selfCopy = self;
  descriptionForRootObject_ = [v3 descriptionForRootObject_];
  if (!descriptionForRootObject_)
  {
    sub_18A4A7288();
    descriptionForRootObject_ = sub_18A4A7258();
  }

  return descriptionForRootObject_;
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  selfCopy = self;
  sub_188F2A64C(streamCopy);
}

- (_UIScrollPocketLumaObserverInteraction)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end