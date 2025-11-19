@interface ActivityTypeListItem
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (_TtC11WorkoutCore20ActivityTypeListItem)init;
- (int64_t)hash;
@end

@implementation ActivityTypeListItem

- (int64_t)hash
{
  Hasher.init()();
  v3 = *(&self->super.isa + OBJC_IVAR____TtC11WorkoutCore20ActivityTypeListItem_activityType);
  v4 = self;
  v5 = [v3 uniqueIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  String.hash(into:)();

  v6 = Hasher.finalize()();

  return v6;
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

  v6 = ActivityTypeListItem.isEqual(_:)(v8);

  _s10Foundation4DateVSgWOhTm_4(v8, &_sypSgMd, &_sypSgMR);
  return v6 & 1;
}

- (NSString)description
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC11WorkoutCore20ActivityTypeListItem_activityType);
  v3 = self;
  v4 = [v2 description];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  MEMORY[0x20F2E6D80](2108704, 0xE300000000000000);
  type metadata accessor for Date();
  _s10Foundation4DateVACSeAAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date);
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v8);

  v9 = MEMORY[0x20F2E6C00](v5, v7);

  return v9;
}

- (_TtC11WorkoutCore20ActivityTypeListItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end