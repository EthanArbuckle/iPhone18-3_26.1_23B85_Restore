@interface SRStreamBlock
- (NSDictionary)dictionary;
- (_TtC16SensorKitSupport13SRStreamBlock)init;
- (_TtC16SensorKitSupport13SRStreamBlock)initWithBinaryRep:(id)a3;
@end

@implementation SRStreamBlock

- (_TtC16SensorKitSupport13SRStreamBlock)initWithBinaryRep:(id)a3
{
  v3 = a3;
  v4 = sub_2655FE2DC();
  v6 = v5;

  return SRStreamBlock.init(binaryRep:)(v4, v6);
}

- (NSDictionary)dictionary
{
  v2 = self;
  sub_2655F1478();
  v3 = sub_2655FE52C();

  return v3;
}

- (_TtC16SensorKitSupport13SRStreamBlock)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end