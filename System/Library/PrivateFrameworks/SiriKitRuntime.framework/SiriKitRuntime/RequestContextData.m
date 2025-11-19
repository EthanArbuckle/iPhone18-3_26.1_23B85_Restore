@interface RequestContextData
- (NSString)debugDescription;
- (_TtC14SiriKitRuntime18RequestContextData)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RequestContextData

- (NSString)debugDescription
{
  v2 = self;
  v3 = RequestContextData.debugDescription.getter();
  v5 = v4;

  v6 = MEMORY[0x1E12A1410](v3, v5);

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  RequestContextData.encode(with:)(v4);
}

- (_TtC14SiriKitRuntime18RequestContextData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end