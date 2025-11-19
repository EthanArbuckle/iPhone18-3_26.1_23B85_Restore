@interface SKEUserSpecificInfo
- (BOOL)isEqual:(id)a3;
- (NSString)debugDescription;
- (SKEUserSpecificInfo)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SKEUserSpecificInfo

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  UserSpecificInfo.encode(with:)(v4);
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

  v6 = UserSpecificInfo.isEqual(_:)(v8);

  outlined destroy of ReferenceResolutionClientProtocol?(v8, &_sypSgMd, &_sypSgMR);
  return v6 & 1;
}

- (NSString)debugDescription
{
  v2 = self;
  v3 = UserSpecificInfo.debugDescription.getter();
  v5 = v4;

  v6 = MEMORY[0x1E12A1410](v3, v5);

  return v6;
}

- (SKEUserSpecificInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end