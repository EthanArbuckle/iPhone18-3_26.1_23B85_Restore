@interface _UIScrollPocketCollectorInteraction
- (NSString)_ancestralModelDescription;
- (NSString)_name;
- (NSString)_recursiveModelDescription;
- (UIView)_view;
- (UIView)view;
- (_UIScrollPocketCollectorInteraction)init;
- (void)_setName:(id)a3;
- (void)_updateProperties;
- (void)didMoveToView:(id)a3;
- (void)set_view:(id)a3;
@end

@implementation _UIScrollPocketCollectorInteraction

- (UIView)_view
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_UIScrollPocketCollectorInteraction)init
{
  v3 = OBJC_IVAR____UIScrollPocketCollectorInteraction_model;
  type metadata accessor for ScrollPocketCollectorModel();
  v4 = swift_allocObject();
  v5 = MEMORY[0x1E69E7CC0];
  v6 = sub_188E8E96C(MEMORY[0x1E69E7CC0]);
  v4[3] = 0;
  v4[4] = 0;
  v4[2] = v6;
  swift_weakInit();
  v4[6] = sub_188AD0BD8(v5);
  v4[7] = 0;
  sub_18A4A2C38();
  *(self + v3) = v4;
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = _UIScrollPocketCollectorInteraction;
  return [(_UIScrollPocketCollectorInteraction *)&v8 init];
}

- (UIView)view
{
  v2 = [(_UIScrollPocketCollectorInteraction *)self _view];

  return v2;
}

- (void)didMoveToView:(id)a3
{
  v5 = self;
  v4 = a3;
  [(_UIScrollPocketCollectorInteraction *)v5 set_view:v4];
  if (v4)
  {
  }

  else
  {
    [(_UIScrollPocketCollectorInteraction *)v5 _updateProperties];
  }
}

- (void)set_view:(id)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  v6 = a3;
  v7 = self;
  sub_188AD0F04(Strong);
}

- (void)_updateProperties
{
  v2 = self;
  sub_189125928();
}

- (NSString)_name
{
  v3 = *(self + OBJC_IVAR____UIScrollPocketCollectorInteraction_model);
  swift_getKeyPath();
  sub_188FAB9F8(&qword_1ED490BC0);
  v4 = self;
  sub_18A4A2C08();

  v5 = *(v3 + 32);

  if (v5)
  {
    v6 = sub_18A4A7258();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_setName:(id)a3
{
  if (a3)
  {
    v4 = sub_18A4A7288();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  sub_1891257C0(v4, v6);
}

- (NSString)_recursiveModelDescription
{
  v3 = *(self + OBJC_IVAR____UIScrollPocketCollectorInteraction_model);
  v9[4] = sub_1891253D8;
  v9[5] = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1891253DC;
  v9[3] = &block_descriptor_5;
  v4 = _Block_copy(v9);
  v5 = self;

  v6 = _UIRecursiveDescription(v3, v4);

  _Block_release(v4);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  else
  {
    sub_18A4A7288();

    v8 = sub_18A4A7258();

    return v8;
  }

  return result;
}

- (NSString)_ancestralModelDescription
{
  v3 = *(self + OBJC_IVAR____UIScrollPocketCollectorInteraction_model);
  v9[4] = sub_1891254EC;
  v9[5] = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1891254F0;
  v9[3] = &block_descriptor_119;
  v4 = _Block_copy(v9);
  v5 = self;

  v6 = _UIAncestralDescription(v3, v4);

  _Block_release(v4);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  else
  {
    sub_18A4A7288();

    v8 = sub_18A4A7258();

    return v8;
  }

  return result;
}

@end