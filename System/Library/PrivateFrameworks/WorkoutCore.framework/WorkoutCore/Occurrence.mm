@interface Occurrence
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (_TtC11WorkoutCore10Occurrence)init;
- (int64_t)hash;
@end

@implementation Occurrence

- (int64_t)hash
{
  selfCopy = self;
  v3 = Occurrence.hash.getter();

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
    memset(v11, 0, sizeof(v11));
    selfCopy2 = self;
  }

  outlined init with copy of Any?(v11, v9);
  if (!v10)
  {
    outlined destroy of Any?(v9);
    goto LABEL_8;
  }

  type metadata accessor for Occurrence();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:

    v6 = 0;
    goto LABEL_9;
  }

  v6 = specialized static Occurrence.== infix(_:_:)(self, v8);

LABEL_9:
  outlined destroy of Any?(v11);
  return v6 & 1;
}

- (NSString)description
{
  selfCopy = self;
  v3 = Occurrence.description.getter();
  v5 = v4;

  v6 = MEMORY[0x20F2E6C00](v3, v5);

  return v6;
}

- (_TtC11WorkoutCore10Occurrence)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end