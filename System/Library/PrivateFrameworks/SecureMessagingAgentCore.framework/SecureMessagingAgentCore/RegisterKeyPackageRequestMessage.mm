@interface RegisterKeyPackageRequestMessage
- (NSArray)requiredKeys;
- (NSDictionary)messageBody;
- (NSString)bagKey;
- (_TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage)init;
@end

@implementation RegisterKeyPackageRequestMessage

- (NSString)bagKey
{
  v2 = MEMORY[0x266756A10](0x696765722D736B72, 0xEC00000072657473);

  return v2;
}

- (NSArray)requiredKeys
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_265343880;
  v3 = MEMORY[0x277D837D0];
  *(v2 + 32) = 6910581;
  *(v2 + 40) = 0xE300000000000000;
  *(v2 + 88) = v3;
  *(v2 + 56) = v3;
  *(v2 + 64) = 0x616B63615079656BLL;
  *(v2 + 72) = 0xEA00000000006567;
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (NSDictionary)messageBody
{
  selfCopy = self;
  v3 = RegisterKeyPackageRequestMessage.messageBody.getter();

  if (v3)
  {
    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (_TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end