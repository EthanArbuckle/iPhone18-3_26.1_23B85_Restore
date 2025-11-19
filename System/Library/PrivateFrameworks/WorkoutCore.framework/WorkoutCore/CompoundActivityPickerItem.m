@interface CompoundActivityPickerItem
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (_TtC11WorkoutCore26CompoundActivityPickerItem)init;
- (id)copyWithZone:(void *)a3;
@end

@implementation CompoundActivityPickerItem

- (_TtC11WorkoutCore26CompoundActivityPickerItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)copyWithZone:(void *)a3
{
  v4 = self;
  CompoundActivityPickerItem.copy(with:)(a3, v7);

  __swift_project_boxed_opaque_existential_0(v7, v7[3]);
  v5 = _bridgeAnythingToObjectiveC<A>(_:)();
  __swift_destroy_boxed_opaque_existential_0(v7);
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = CompoundActivityPickerItem.isEqual(_:)(v8);

  outlined destroy of Any?(v8);
  return v6 & 1;
}

- (NSString)description
{
  v2 = (*(&self->super.isa + OBJC_IVAR____TtC11WorkoutCore26CompoundActivityPickerItem_value) & 0x7FFFFFFFFFFFFFFFLL);
  v3 = self;
  v4 = v2;
  v5 = [v4 description];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = MEMORY[0x20F2E6C00](v6, v8);

  return v9;
}

@end