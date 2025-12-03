@interface PredictedActivityPickerItem
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (_TtC11WorkoutCore27PredictedActivityPickerItem)init;
- (id)copyWithZone:(void *)zone;
- (int64_t)hash;
@end

@implementation PredictedActivityPickerItem

- (_TtC11WorkoutCore27PredictedActivityPickerItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  PredictedActivityPickerItem.copy(with:)(v6);

  __swift_project_boxed_opaque_existential_0(v6, v6[3]);
  v4 = _bridgeAnythingToObjectiveC<A>(_:)();
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v4;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = PredictedActivityPickerItem.hash.getter();

  return v3;
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

  v6 = PredictedActivityPickerItem.isEqual(_:)(v8);

  outlined destroy of Any?(v8);
  return v6 & 1;
}

- (NSString)description
{
  selfCopy = self;
  v3 = PredictedActivityPickerItem.description.getter();
  v5 = v4;

  v6 = MEMORY[0x20F2E6C00](v3, v5);

  return v6;
}

@end