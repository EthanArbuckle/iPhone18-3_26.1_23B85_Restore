@interface IdentityRequestMessage
- (NSArray)requiredKeys;
- (NSString)bagKey;
- (_TtC24SecureMessagingAgentCore22IdentityRequestMessage)init;
@end

@implementation IdentityRequestMessage

- (NSString)bagKey
{
  v2 = MEMORY[0x266756A10](0x757373692D736B72, 0xED00007472654365);

  return v2;
}

- (NSArray)requiredKeys
{
  specialized IdentityRequestMessage.requiredKeys.getter();
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

- (_TtC24SecureMessagingAgentCore22IdentityRequestMessage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end