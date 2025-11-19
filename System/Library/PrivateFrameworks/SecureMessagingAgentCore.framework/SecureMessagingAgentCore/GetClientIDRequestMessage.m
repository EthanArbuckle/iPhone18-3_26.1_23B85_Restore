@interface GetClientIDRequestMessage
- (NSArray)requiredKeys;
- (NSString)bagKey;
- (_TtC24SecureMessagingAgentCore25GetClientIDRequestMessage)init;
@end

@implementation GetClientIDRequestMessage

- (NSString)bagKey
{
  v2 = MEMORY[0x266756A10](0x437465672D736B72, 0xEF6449746E65696CLL);

  return v2;
}

- (NSArray)requiredKeys
{
  specialized GetClientIDRequestMessage.requiredKeys.getter();
  if (v2)
  {
    v3.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  return v3.super.isa;
}

- (_TtC24SecureMessagingAgentCore25GetClientIDRequestMessage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end