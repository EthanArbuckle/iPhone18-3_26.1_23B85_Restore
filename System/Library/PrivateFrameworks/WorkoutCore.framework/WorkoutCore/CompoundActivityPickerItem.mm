@interface CompoundActivityPickerItem
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (_TtC11WorkoutCore26CompoundActivityPickerItem)init;
- (id)copyWithZone:(void *)zone;
@end

@implementation CompoundActivityPickerItem

- (_TtC11WorkoutCore26CompoundActivityPickerItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  CompoundActivityPickerItem.copy(with:)(zone, v7);

  __swift_project_boxed_opaque_existential_0(v7, v7[3]);
  v5 = _bridgeAnythingToObjectiveC<A>(_:)();
  __swift_destroy_boxed_opaque_existential_0(v7);
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = CompoundActivityPickerItem.isEqual(_:)(v8);

  outlined destroy of Any?(v8);
  return v6 & 1;
}

- (NSString)description
{
  v2 = (*(&self->super.isa + OBJC_IVAR____TtC11WorkoutCore26CompoundActivityPickerItem_value) & 0x7FFFFFFFFFFFFFFFLL);
  selfCopy = self;
  v4 = v2;
  v5 = [v4 description];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = MEMORY[0x20F2E6C00](v6, v8);

  return v9;
}

@end