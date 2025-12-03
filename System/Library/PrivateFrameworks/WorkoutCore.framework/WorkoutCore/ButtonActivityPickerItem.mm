@interface ButtonActivityPickerItem
- (BOOL)isEqual:(id)equal;
- (_TtC11WorkoutCore24ButtonActivityPickerItem)init;
- (id)copyWithZone:(void *)zone;
- (int64_t)hash;
@end

@implementation ButtonActivityPickerItem

- (_TtC11WorkoutCore24ButtonActivityPickerItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)copyWithZone:(void *)zone
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC11WorkoutCore24ButtonActivityPickerItem_title);
  v3 = *&self->type[OBJC_IVAR____TtC11WorkoutCore24ButtonActivityPickerItem_title];
  v5 = type metadata accessor for ButtonActivityPickerItem();
  v6 = objc_allocWithZone(v5);
  v6[OBJC_IVAR____TtC11WorkoutCore24ButtonActivityPickerItem_type] = 3;
  v7 = &v6[OBJC_IVAR____TtC11WorkoutCore24ButtonActivityPickerItem_title];
  *v7 = v4;
  v7[1] = v3;
  v9.receiver = v6;
  v9.super_class = v5;

  return [(ButtonActivityPickerItem *)&v9 init];
}

- (int64_t)hash
{
  Hasher.init()();
  MEMORY[0x20F2E7FF0](*(&self->super.isa + OBJC_IVAR____TtC11WorkoutCore24ButtonActivityPickerItem_type));
  MEMORY[0x20F2E7FF0](0);
  v3 = *(&self->super.isa + OBJC_IVAR____TtC11WorkoutCore24ButtonActivityPickerItem_title);
  v4 = *&self->type[OBJC_IVAR____TtC11WorkoutCore24ButtonActivityPickerItem_title];
  selfCopy = self;
  String.hash(into:)();
  v6 = Hasher.finalize()();

  return v6;
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

  v6 = ButtonActivityPickerItem.isEqual(_:)(v8);

  outlined destroy of Any?(v8);
  return v6 & 1;
}

@end