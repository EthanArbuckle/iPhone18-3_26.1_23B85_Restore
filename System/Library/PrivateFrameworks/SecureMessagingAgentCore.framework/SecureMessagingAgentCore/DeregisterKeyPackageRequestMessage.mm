@interface DeregisterKeyPackageRequestMessage
- (NSArray)requiredKeys;
- (NSDictionary)messageBody;
- (NSString)bagKey;
- (_TtC24SecureMessagingAgentCore34DeregisterKeyPackageRequestMessage)init;
@end

@implementation DeregisterKeyPackageRequestMessage

- (NSString)bagKey
{
  v2 = MEMORY[0x266756A10](0x696765722D736B72, 0xEC00000072657473);

  return v2;
}

- (NSArray)requiredKeys
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D837D0];
  *(v2 + 16) = xmmword_2653419E0;
  *(v2 + 56) = v3;
  *(v2 + 32) = 6910581;
  *(v2 + 40) = 0xE300000000000000;
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (NSDictionary)messageBody
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2653419E0;
  v4 = self;
  v5 = MEMORY[0x277D837D0];
  AnyHashable.init<A>(_:)();
  v7 = *(&v4->super.super.super.isa + OBJC_IVAR____TtC24SecureMessagingAgentCore34DeregisterKeyPackageRequestMessage_telURI);
  v6 = *(&v4->super.super._cachedBody + OBJC_IVAR____TtC24SecureMessagingAgentCore34DeregisterKeyPackageRequestMessage_telURI);
  *(inited + 96) = v5;
  *(inited + 72) = v7;
  *(inited + 80) = v6;

  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (AnyHashable, Any)(inited + 32);

  v8.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

- (_TtC24SecureMessagingAgentCore34DeregisterKeyPackageRequestMessage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end