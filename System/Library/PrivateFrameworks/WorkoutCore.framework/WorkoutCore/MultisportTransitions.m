@interface MultisportTransitions
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (_TtC11WorkoutCore21MultisportTransitions)init;
- (int64_t)hash;
@end

@implementation MultisportTransitions

- (int64_t)hash
{
  v2 = self;
  v3 = MultisportTransitions.hash.getter();

  return v3;
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

  v6 = MultisportTransitions.isEqual(_:)(v8);

  outlined destroy of Any?(v8);
  return v6 & 1;
}

- (NSString)description
{
  v2 = self;
  v3 = MultisportTransitions.description.getter();
  v5 = v4;

  v6 = MEMORY[0x20F2E6C00](v3, v5);

  return v6;
}

- (_TtC11WorkoutCore21MultisportTransitions)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end