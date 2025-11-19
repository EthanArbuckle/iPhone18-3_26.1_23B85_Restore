@interface TNUIAccountRemoteUI
- (_TtC20ThreatNotificationUI19TNUIAccountRemoteUI)init;
- (id)accountsForAccountManager:(id)a3;
- (void)remoteUIRequestComplete:(id)a3 error:(id)a4;
@end

@implementation TNUIAccountRemoteUI

- (_TtC20ThreatNotificationUI19TNUIAccountRemoteUI)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)accountsForAccountManager:(id)a3
{
  v3 = a3;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo15AIDAServiceTypea_So9ACAccountCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v4 = [v3 accountStore];
  v5 = [v4 aa_primaryAppleAccount];

  if (v5)
  {
    v6 = *MEMORY[0x277CED1A0];
    v7 = v5;
    specialized Dictionary.subscript.setter(v5, v6);
  }

  type metadata accessor for AIDAServiceType(0);
  type metadata accessor for ACAccount();
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type AIDAServiceType and conformance AIDAServiceType, type metadata accessor for AIDAServiceType);
  v8.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

- (void)remoteUIRequestComplete:(id)a3 error:(id)a4
{
  v6 = type metadata accessor for URLRequest();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = self;
  v12 = a4;
  TNUIAccountRemoteUI.remoteUIRequestComplete(_:error:)(v10, a4);

  (*(v7 + 8))(v10, v6);
}

@end