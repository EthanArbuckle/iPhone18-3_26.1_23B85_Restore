@interface QueryKeyPackageMessage
- (NSArray)requiredKeys;
- (NSDictionary)messageBody;
- (NSString)bagKey;
- (_TtC24SecureMessagingAgentCore22QueryKeyPackageMessage)init;
@end

@implementation QueryKeyPackageMessage

- (NSString)bagKey
{
  v2 = MEMORY[0x266756A10](0x726575712D736B72, 0xE900000000000079);

  return v2;
}

- (NSArray)requiredKeys
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D837D0];
  *(v2 + 16) = xmmword_2653419E0;
  *(v2 + 56) = v3;
  *(v2 + 32) = 0x6E65697069636572;
  *(v2 + 40) = 0xEA00000000007374;
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (NSDictionary)messageBody
{
  v2 = self;
  KeyPackage = QueryKeyPackageMessage.messageBody.getter();

  if (KeyPackage)
  {
    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (_TtC24SecureMessagingAgentCore22QueryKeyPackageMessage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end