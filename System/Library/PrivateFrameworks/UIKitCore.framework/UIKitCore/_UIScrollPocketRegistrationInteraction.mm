@interface _UIScrollPocketRegistrationInteraction
- (NSString)description;
- (UIView)_view;
- (UIView)view;
- (_UIScrollPocketRegistrationInteraction)init;
- (_UIScrollPocketRegistrationInteractionDelegate)delegate;
- (void)_geometryChanged:(id *)a3 forAncestor:(id)a4;
- (void)appendDescriptionToStream:(id)a3;
- (void)didMoveToView:(id)a3;
- (void)updatePocketCollectorModel;
@end

@implementation _UIScrollPocketRegistrationInteraction

- (UIView)view
{
  v2 = [(_UIScrollPocketRegistrationInteraction *)self _view];

  return v2;
}

- (UIView)_view
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)didMoveToView:(id)a3
{
  v7 = self;
  v4 = a3;
  v5 = [(_UIScrollPocketRegistrationInteraction *)v7 _view];
  if (v5)
  {
    v6 = v5;
    [(UIView *)v5 _removeGeometryChangeObserver:v7];
  }

  [(_UIScrollPocketRegistrationInteraction *)v7 set_view:v4];
  if (v4)
  {
    [(UIView *)v4 _addGeometryChangeObserver:v7];
  }

  else
  {
    [(_UIScrollPocketRegistrationInteraction *)v7 _updateProperties];
  }
}

- (void)updatePocketCollectorModel
{
  v2 = self;
  sub_188B70AB0();
}

- (_UIScrollPocketRegistrationInteractionDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)_geometryChanged:(id *)a3 forAncestor:(id)a4
{
  if (a3)
  {
    if ((a3->var0 & 2) != 0)
    {
      v6 = self;
      v5 = [(_UIScrollPocketRegistrationInteraction *)v6 delegate];
      if (v5)
      {
        [(_UIScrollPocketRegistrationInteractionDelegate *)v5 _scrollPocketRegistrationInteractionDidInvalidatePosition:v6];
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
  sub_188E95738(v4);
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