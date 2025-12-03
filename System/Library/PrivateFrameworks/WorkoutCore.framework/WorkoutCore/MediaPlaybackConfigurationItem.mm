@interface MediaPlaybackConfigurationItem
- (BOOL)isEqual:(id)equal;
- (NSString)debugDescription;
- (_TtC11WorkoutCore30MediaPlaybackConfigurationItem)init;
@end

@implementation MediaPlaybackConfigurationItem

- (BOOL)isEqual:(id)equal
{
  swift_getObjectType();
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    selfCopy2 = self;
  }

  outlined init with copy of Any?(v12, v10);
  if (!v11)
  {
    _sypSgWOhTm_1(v10, &_sypSgMd, &_sypSgMR);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:

    v7 = 0;
    goto LABEL_9;
  }

  v7 = specialized static MediaPlaybackConfigurationItem.== infix(_:_:)(self, v9);

LABEL_9:
  _sypSgWOhTm_1(v12, &_sypSgMd, &_sypSgMR);
  return v7 & 1;
}

- (NSString)debugDescription
{
  selfCopy = self;
  v3 = MediaPlaybackConfigurationItem.debugDescription.getter();
  v5 = v4;

  v6 = MEMORY[0x20F2E6C00](v3, v5);

  return v6;
}

- (_TtC11WorkoutCore30MediaPlaybackConfigurationItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end