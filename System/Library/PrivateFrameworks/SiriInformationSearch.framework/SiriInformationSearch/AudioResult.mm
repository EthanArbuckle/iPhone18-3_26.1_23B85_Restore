@interface AudioResult
- (NSString)description;
- (_TtC21SiriInformationSearch11AudioResult)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AudioResult

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  AudioResult.encode(with:)(v4);
}

- (NSString)description
{
  v2 = self;
  v3 = AudioResult.description.getter();
  v5 = v4;

  v6 = MEMORY[0x223DDF550](v3, v5);

  return v6;
}

- (_TtC21SiriInformationSearch11AudioResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end