@interface KDSRegistrationPushHandler
- (_TtC24SecureMessagingAgentCore26KDSRegistrationPushHandler)init;
- (void)handler:(id)a3 didReceiveMessage:(id)a4 forTopic:(id)a5 fromID:(id)a6 messageContext:(id)a7;
@end

@implementation KDSRegistrationPushHandler

- (_TtC24SecureMessagingAgentCore26KDSRegistrationPushHandler)init
{
  v3 = OBJC_IVAR____TtC24SecureMessagingAgentCore26KDSRegistrationPushHandler_pushTopics;
  v4 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of KDSRegistrationPushHandler.init());
  outlined destroy of String(&unk_2876DC350);
  *(&self->super.isa + v3) = v4;
  v5 = (&self->super.isa + OBJC_IVAR____TtC24SecureMessagingAgentCore26KDSRegistrationPushHandler_machPort);
  *v5 = 0xD000000000000022;
  v5[1] = 0x8000000265349500;
  *(&self->super.isa + OBJC_IVAR____TtC24SecureMessagingAgentCore26KDSRegistrationPushHandler_state) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for KDSRegistrationPushHandler();
  return [(KDSRegistrationPushHandler *)&v7 init];
}

- (void)handler:(id)a3 didReceiveMessage:(id)a4 forTopic:(id)a5 fromID:(id)a6 messageContext:(id)a7
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - v11;
  if (a4)
  {
    a4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  type metadata accessor for RegistrationActor();
  v14 = self;
  v15 = static RegistrationActor.shared.getter();
  v16 = lazy protocol witness table accessor for type RegistrationActor and conformance RegistrationActor();
  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = v16;
  v17[4] = a4;
  v17[5] = v14;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v12, &closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:)partial apply, v17);
}

@end