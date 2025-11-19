@interface WOCoreHeartRateTargetZone
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (WOCoreHeartRateTargetZone)init;
- (int64_t)hash;
@end

@implementation WOCoreHeartRateTargetZone

- (int64_t)hash
{
  v2 = self;
  v3 = HeartRateTargetZone.hash.getter();

  return v3;
}

- (WOCoreHeartRateTargetZone)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
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
    memset(v11, 0, sizeof(v11));
    v5 = self;
  }

  outlined init with copy of Any?(v11, v9);
  if (!v10)
  {
    outlined destroy of Any?(v9);
    goto LABEL_8;
  }

  type metadata accessor for HeartRateTargetZone();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:

    v6 = 0;
    goto LABEL_9;
  }

  v6 = specialized static HeartRateTargetZone.== infix(_:_:)(self, v8);

LABEL_9:
  outlined destroy of Any?(v11);
  return v6 & 1;
}

- (NSString)description
{
  v2 = self;
  v3 = HeartRateTargetZone.description.getter();
  v5 = v4;

  v6 = MEMORY[0x20F2E6C00](v3, v5);

  return v6;
}

@end