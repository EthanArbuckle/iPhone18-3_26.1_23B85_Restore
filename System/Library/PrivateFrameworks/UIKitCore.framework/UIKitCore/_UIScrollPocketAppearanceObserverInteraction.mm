@interface _UIScrollPocketAppearanceObserverInteraction
- (NSString)description;
- (UIView)_view;
- (UIView)view;
- (_UIScrollPocketAppearanceObserver)observer;
- (_UIScrollPocketAppearanceObserverInteraction)init;
- (_UIScrollPocketAppearanceObserverInteraction)initWithCollectorInteraction:(id)interaction;
- (void)_updateProperties;
- (void)appendDescriptionToStream:(id)stream;
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
  _view = [(_UIScrollPocketAppearanceObserverInteraction *)self _view];

  return _view;
}

- (_UIScrollPocketAppearanceObserverInteraction)initWithCollectorInteraction:(id)interaction
{
  *(self + OBJC_IVAR____UIScrollPocketAppearanceObserverInteraction_glassFrostValues) = MEMORY[0x1E69E7CC8];
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR____UIScrollPocketAppearanceObserverInteraction_collectorInteraction) = interaction;
  v7.receiver = self;
  v7.super_class = _UIScrollPocketAppearanceObserverInteraction;
  interactionCopy = interaction;
  return [(_UIScrollPocketAppearanceObserverInteraction *)&v7 init];
}

- (void)_updateProperties
{
  selfCopy = self;
  sub_1890960C0();
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
  sub_1890963A8(streamCopy);
}

- (_UIScrollPocketAppearanceObserverInteraction)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end