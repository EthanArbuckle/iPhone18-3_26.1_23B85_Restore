@interface _UIScrollPocketRegistrationInteraction
- (NSString)description;
- (UIView)_view;
- (UIView)view;
- (_UIScrollPocketRegistrationInteraction)init;
- (_UIScrollPocketRegistrationInteractionDelegate)delegate;
- (void)_geometryChanged:(id *)changed forAncestor:(id)ancestor;
- (void)appendDescriptionToStream:(id)stream;
- (void)didMoveToView:(id)view;
- (void)updatePocketCollectorModel;
@end

@implementation _UIScrollPocketRegistrationInteraction

- (UIView)view
{
  _view = [(_UIScrollPocketRegistrationInteraction *)self _view];

  return _view;
}

- (UIView)_view
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)didMoveToView:(id)view
{
  selfCopy = self;
  viewCopy = view;
  _view = [(_UIScrollPocketRegistrationInteraction *)selfCopy _view];
  if (_view)
  {
    v6 = _view;
    [(UIView *)_view _removeGeometryChangeObserver:selfCopy];
  }

  [(_UIScrollPocketRegistrationInteraction *)selfCopy set_view:viewCopy];
  if (viewCopy)
  {
    [(UIView *)viewCopy _addGeometryChangeObserver:selfCopy];
  }

  else
  {
    [(_UIScrollPocketRegistrationInteraction *)selfCopy _updateProperties];
  }
}

- (void)updatePocketCollectorModel
{
  selfCopy = self;
  sub_188B70AB0();
}

- (_UIScrollPocketRegistrationInteractionDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)_geometryChanged:(id *)changed forAncestor:(id)ancestor
{
  if (changed)
  {
    if ((changed->var0 & 2) != 0)
    {
      selfCopy = self;
      delegate = [(_UIScrollPocketRegistrationInteraction *)selfCopy delegate];
      if (delegate)
      {
        [(_UIScrollPocketRegistrationInteractionDelegate *)delegate _scrollPocketRegistrationInteractionDidInvalidatePosition:selfCopy];
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    __break(1u);
  }
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
  sub_188E95738(streamCopy);
}

- (_UIScrollPocketRegistrationInteraction)init
{
  *(self + OBJC_IVAR____UIScrollPocketRegistrationInteraction_receiver + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_weakInit();
  v4.receiver = self;
  v4.super_class = _UIScrollPocketRegistrationInteraction;
  return [(_UIScrollPocketRegistrationInteraction *)&v4 init];
}

@end