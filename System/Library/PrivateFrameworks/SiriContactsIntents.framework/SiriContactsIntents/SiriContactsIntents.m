uint64_t sub_26686C520()
{
  v1 = type metadata accessor for TemplatingResult();
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_26686C620()
{
  v1 = type metadata accessor for Input();
  OUTLINED_FUNCTION_1_0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_26686C77C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Input();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 4)
  {
    return EnumTagSinglePayload - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26686C7C4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for Input();

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_26686CAE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OSSignpostID();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_26686CB30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OSSignpostID();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_26686D34C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for NLIntent();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_26686D3D4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for NLIntent();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26686D890()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26686D8E0()
{
  v1 = type metadata accessor for TemplatingResult();
  OUTLINED_FUNCTION_10_1(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_26686D974()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26686D9B4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26686DAE8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26686DBF8()
{
  OUTLINED_FUNCTION_36_11();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_26686DF14@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = GetContactIntentResponse.code.getter();
  *a2 = result;
  return result;
}

uint64_t sub_26686E378@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = GetContactAttributeIntentResponse.code.getter();
  *a2 = result;
  return result;
}

uint64_t _s19SiriContactsIntents022ModifyContactAttributeD29RelationshipUnsupportedReasonOSYAASY8rawValuexSg03RawK0Qz_tcfCTW_0(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_1_52(a1);
  result = ModifyContactAttributeModifyNickNameUnsupportedReason.init(rawValue:)(v2);
  *v1 = result;
  *(v1 + 8) = v4 & 1;
  return result;
}

id sub_26686E3FC(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_1_52(a1) contactAttributeToModify];
  *v1 = result;
  return result;
}

id sub_26686E440(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_1_52(a1) modifyOperation];
  *v1 = result;
  return result;
}

uint64_t sub_26686E53C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = ModifyContactAttributeIntentResponse.code.getter();
  *a2 = result;
  return result;
}

uint64_t sub_26686E590@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = LearnPronunciationIntentResponse.code.getter();
  *a2 = result;
  return result;
}

id sub_26686E69C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contactAttributeType];
  *a2 = result;
  return result;
}

id sub_26686ECA4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 qualifier];
  *a2 = result;
  return result;
}

uint64_t outlined init with take of DeviceState(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

id ContactRelation.__allocating_init(relationship:relatedFullName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = static String.EMPTY.getter();
  v11 = MEMORY[0x26D5E2470](v10);

  v12 = [v9 initWithIdentifier:0 displayString:v11];

  v13 = v12;
  if (a4)
  {
    v14 = MEMORY[0x26D5E2470](a3, a4);
  }

  else
  {
    v14 = 0;
  }

  [v12 setRelatedFullName_];

  if (a2)
  {
    v15 = MEMORY[0x26D5E2470](a1, a2);
  }

  else
  {
    v15 = 0;
  }

  [v12 setRelationship_];

  return v12;
}

uint64_t protocol witness for SetAlgebra.init() in conformance NSPersonNameComponentsFormatterOptions@<X0>(uint64_t *a1@<X8>)
{
  result = specialized OptionSet<>.init()();
  *a1 = result;
  return result;
}

uint64_t outlined init with copy of DeviceState(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t ContactsUnsupportedFlow.__allocating_init(deviceState:commonCATs:)(__int128 *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  outlined init with take of DeviceState(a1, v4 + 24);
  *(v4 + 16) = a2;
  return v4;
}

uint64_t ContactsUnsupportedFlow.init(deviceState:commonCATs:)(__int128 *a1, uint64_t a2)
{
  outlined init with take of DeviceState(a1, v2 + 24);
  *(v2 + 16) = a2;
  return v2;
}

uint64_t ContactsUnsupportedFlow.on(input:)()
{
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.siriContacts);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v3 = 136315394;
    *(v3 + 4) = OUTLINED_FUNCTION_1("/Library/Caches/com.apple.xbs/Sources/SiriContacts/SiriContactsIntents/Flow/Shared/ContactsUnsupportedFlow.swift", v5);
    *(v3 + 12) = 2080;
    *(v3 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x7475706E69286E6FLL, 0xEA0000000000293ALL, &v6);
    _os_log_impl(&dword_26686A000, v1, v2, "%s:%s", v3, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  return 1;
}

uint64_t ContactsUnsupportedFlow.execute()()
{
  OUTLINED_FUNCTION_4();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for TemplatingResult();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](ContactsUnsupportedFlow.execute(), 0, 0);
}

{
  v11 = v0;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v1 = type metadata accessor for Logger();
  v0[7] = __swift_project_value_buffer(v1, static Logger.siriContacts);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v4 = 136315394;
    *(v4 + 4) = OUTLINED_FUNCTION_1("/Library/Caches/com.apple.xbs/Sources/SiriContacts/SiriContactsIntents/Flow/Shared/ContactsUnsupportedFlow.swift", v9);
    *(v4 + 12) = 2080;
    *(v4 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x2865747563657865, 0xE900000000000029, &v10);
    _os_log_impl(&dword_26686A000, v2, v3, "%s:%s", v4, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  v5 = *(v0[3] + 16);
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = ContactsUnsupportedFlow.execute();
  v7 = v0[6];

  return ContactsCommonCATs.unsupportedAction()();
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v3 = *(v2 + 64);
  v4 = *v1;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  *(v6 + 72) = v0;

  if (v0)
  {
    v7 = ContactsUnsupportedFlow.execute();
  }

  else
  {
    v7 = ContactsUnsupportedFlow.execute();
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];
  ContactsUnsupportedFlow.getUnsupportedFlow(for:)(v1);
  static ExecuteResponse.complete(next:)();

  (*(v2 + 8))(v1, v4);
  v6 = v0[6];

  OUTLINED_FUNCTION_3();

  return v7();
}

{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v8 = 136315394;
    *(v8 + 4) = OUTLINED_FUNCTION_1("/Library/Caches/com.apple.xbs/Sources/SiriContacts/SiriContactsIntents/Flow/Shared/ContactsUnsupportedFlow.swift", v16);
    *(v8 + 12) = 2112;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v11;
    *v9 = v11;
    _os_log_impl(&dword_26686A000, v4, v5, "%s: %@", v8, 0x16u);
    outlined destroy of NSObject?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_6();
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {
  }

  v12 = v0[2];
  static ExecuteResponse.complete()();
  v13 = v0[6];

  OUTLINED_FUNCTION_3();

  return v14();
}

uint64_t ContactsUnsupportedFlow.execute(completion:)()
{
  type metadata accessor for ContactsUnsupportedFlow();
  lazy protocol witness table accessor for type ContactsUnsupportedFlow and conformance ContactsUnsupportedFlow(&lazy protocol witness table cache variable for type ContactsUnsupportedFlow and conformance ContactsUnsupportedFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t ContactsUnsupportedFlow.getUnsupportedFlow(for:)(uint64_t a1)
{
  v3 = type metadata accessor for TemplatingResult();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  (*(v4 + 16))(v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  (*(v4 + 32))(v7 + v6, v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  *(v7 + ((v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8)) = v1;

  static OutputPublisherFactory.makeOutputPublisherAsync()();
  v8 = type metadata accessor for SimpleOutputFlowAsync();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v13[1] = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  v11 = Flow.eraseToAnyFlow()();

  return v11;
}

uint64_t closure #1 in ContactsUnsupportedFlow.getUnsupportedFlow(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in ContactsUnsupportedFlow.getUnsupportedFlow(for:), 0, 0);
}

uint64_t closure #1 in ContactsUnsupportedFlow.getUnsupportedFlow(for:)()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = v2[7];
  __swift_project_boxed_opaque_existential_1(v2 + 3, v2[6]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v6 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v6);
  v7 = type metadata accessor for AceOutput();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v8 = MEMORY[0x277D5C1D8];
  v4[3] = v7;
  v4[4] = v8;
  __swift_allocate_boxed_opaque_existential_1(v4);
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of NSObject?(v0 + 16, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of NSObject?(v1, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);

  OUTLINED_FUNCTION_3();

  return v9();
}

uint64_t ContactsUnsupportedFlow.deinit()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));
  return v0;
}

uint64_t ContactsUnsupportedFlow.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

void (*protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance ContactsUnsupportedFlow(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = *v1;
  v3[4] = SiriEnvironmentLocating<>.siriEnvironment.modify();
  return protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance ContactsUnsupportedFlow;
}

void protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance ContactsUnsupportedFlow(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t protocol witness for Flow.onAsync(input:) in conformance ContactsUnsupportedFlow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B890] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for Flow.onAsync(input:) in conformance ContactsUnsupportedFlow;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t protocol witness for Flow.onAsync(input:) in conformance ContactsUnsupportedFlow()
{
  OUTLINED_FUNCTION_4();
  v2 = v1;
  OUTLINED_FUNCTION_5();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_0();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t protocol witness for Flow.execute() in conformance ContactsUnsupportedFlow()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for Flow.execute() in conformance ContactsUnsupportedFlow;

  return ContactsUnsupportedFlow.execute()();
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_0();
  *v4 = v3;

  OUTLINED_FUNCTION_3();

  return v5();
}

uint64_t protocol witness for Flow.exitValue.getter in conformance ContactsUnsupportedFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ContactsUnsupportedFlow();

  return MEMORY[0x2821BA658](v3, a2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t closure #1 in OSLogArguments.append(_:)(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    outlined init with copy of Any(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void closure #1 in OSLogArguments.append(_:)(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t lazy protocol witness table accessor for type ContactsUnsupportedFlow and conformance ContactsUnsupportedFlow(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ContactsUnsupportedFlow();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dispatch thunk of ContactsUnsupportedFlow.execute()(uint64_t a1)
{
  v4 = *(*v1 + 112);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for Flow.execute() in conformance ContactsUnsupportedFlow;

  return v8(a1);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t partial apply for closure #1 in ContactsUnsupportedFlow.getUnsupportedFlow(for:)(uint64_t a1)
{
  v4 = *(type metadata accessor for TemplatingResult() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for Flow.execute() in conformance ContactsUnsupportedFlow;

  return closure #1 in ContactsUnsupportedFlow.getUnsupportedFlow(for:)(a1, v1 + v5, v6);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t outlined destroy of NSObject?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_7(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_1@<X0>(uint64_t a1@<X8>, uint64_t a2, ...)
{
  va_start(va, a2);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000070, (a1 - 32) | 0x8000000000000000, va);
}

uint64_t OUTLINED_FUNCTION_2()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_6()
{

  JUMPOUT(0x26D5E3300);
}

uint64_t SiriKitContactIntent.me.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 24))();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  type metadata accessor for NSNumber();
  v4 = 1;
  isa = NSNumber.init(integerLiteral:)(1).super.super.isa;
  v6 = static NSObject.== infix(_:_:)();

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  return v4;
}

unint64_t type metadata accessor for NSNumber()
{
  result = lazy cache variable for type metadata for NSNumber;
  if (!lazy cache variable for type metadata for NSNumber)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSNumber);
  }

  return result;
}

uint64_t SiriKitContactIntent.handleTypePreference.getter@<X0>(uint64_t a1@<X8>)
{
  static ContactHandleTypePreference.preferPhone.getter();
  v2 = type metadata accessor for ContactHandleTypePreference();

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v2);
}

double SiriKitContactIntent.value(forSlot:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 24))(v4, v5);
  v7 = MEMORY[0x26D5E2470](v6);

  v8 = [v2 valueForKey_];

  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void SiriKitContactIntent.shouldRunReferenceResolution(given:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_15();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = type metadata accessor for UsoEntity_common_Person.DefinedValues();
  v25 = OUTLINED_FUNCTION_1_0(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_8();
  v32 = v31 - v30;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMR);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v36 = &a9 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v37 - 8);
  v41 = &a9 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v39);
  v44 = &a9 - v43;
  MEMORY[0x28223BE20](v42);
  v46 = &a9 - v45;
  if (v23)
  {

    UsoEntity_common_Person.contactId.getter();
    if (v47 || (dispatch thunk of UsoEntity_common_Person.name.getter(), v48))
    {

      goto LABEL_18;
    }

    if (!dispatch thunk of UsoEntity_common_Person.identifyingRelationship.getter() && !dispatch thunk of UsoEntity_common_Person.associatedOrganization.getter())
    {
      dispatch thunk of UsoEntity_common_Person.definedValue.getter();
      (*(v27 + 104))(v44, *MEMORY[0x277D5E828], v24);
      __swift_storeEnumTagSinglePayload(v44, 0, 1, v24);
      v49 = *(v33 + 48);
      outlined init with copy of UsoEntity_common_Person.DefinedValues?(v46, v36);
      outlined init with copy of UsoEntity_common_Person.DefinedValues?(v44, &v36[v49]);
      OUTLINED_FUNCTION_2_0(v36);
      if (v50)
      {

        OUTLINED_FUNCTION_25(v44);
        OUTLINED_FUNCTION_25(v46);
        OUTLINED_FUNCTION_2_0(&v36[v49]);
        if (v50)
        {
          outlined destroy of UsoEntity_common_Person.DefinedValues?(v36, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
          goto LABEL_18;
        }
      }

      else
      {
        outlined init with copy of UsoEntity_common_Person.DefinedValues?(v36, v41);
        OUTLINED_FUNCTION_2_0(&v36[v49]);
        if (!v50)
        {
          (*(v27 + 32))(v32, &v36[v49], v24);
          lazy protocol witness table accessor for type UsoEntity_common_Person.DefinedValues and conformance UsoEntity_common_Person.DefinedValues();
          dispatch thunk of static Equatable.== infix(_:_:)();

          v51 = *(v27 + 8);
          v51(v32, v24);
          outlined destroy of UsoEntity_common_Person.DefinedValues?(v44, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
          outlined destroy of UsoEntity_common_Person.DefinedValues?(v46, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
          v51(v41, v24);
          outlined destroy of UsoEntity_common_Person.DefinedValues?(v36, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
          goto LABEL_18;
        }

        OUTLINED_FUNCTION_25(v44);
        OUTLINED_FUNCTION_25(v46);
        (*(v27 + 8))(v41, v24);
      }

      outlined destroy of UsoEntity_common_Person.DefinedValues?(v36, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMR);
      goto LABEL_18;
    }
  }

LABEL_18:
  OUTLINED_FUNCTION_14();
}

uint64_t outlined init with copy of UsoEntity_common_Person.DefinedValues?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type UsoEntity_common_Person.DefinedValues and conformance UsoEntity_common_Person.DefinedValues()
{
  result = lazy protocol witness table cache variable for type UsoEntity_common_Person.DefinedValues and conformance UsoEntity_common_Person.DefinedValues;
  if (!lazy protocol witness table cache variable for type UsoEntity_common_Person.DefinedValues and conformance UsoEntity_common_Person.DefinedValues)
  {
    type metadata accessor for UsoEntity_common_Person.DefinedValues();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UsoEntity_common_Person.DefinedValues and conformance UsoEntity_common_Person.DefinedValues);
  }

  return result;
}

void _s19SiriContactsIntents0A16KitContactIntentPAAE22runReferenceResolution_10completiony0ahI027RRReferenceResolverProtocol_p_yAA0adeF13ResolvedValueOctFZAA03Gete9AttributeF0C_Tt1g504_s19ab11Intents0A18dp6Entityf9PAAE22runh19Resolutionyy0aiJ027klm10_pFyAA0ad7e3G13no18OcfU_Tf0ns_nAA0en9Q7G0C_Tg5AKSgXwTf1nc_nTm()
{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = OUTLINED_FUNCTION_19();
  v6 = OUTLINED_FUNCTION_1_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_8();
  v13 = v12 - v11;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.siriContacts);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_22(&dword_26686A000, v17, v18, "#SiriKitContactIntent: running reference resolution");
    OUTLINED_FUNCTION_6();
  }

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_2_0(v0);
  if (!v19)
  {
    v21 = OUTLINED_FUNCTION_12();
    v22(v21);
    RREntity.usoEntity.getter();
    type metadata accessor for UsoEntity_common_Person();
    OUTLINED_FUNCTION_17();
    static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

    if (v26)
    {
      if (dispatch thunk of UsoEntity_common_Person.specifyingContactAddress.getter())
      {
        CodeGenBase.entity.getter();

        type metadata accessor for UsoEntity_common_PhoneNumber();

        static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

        v23 = dispatch thunk of UsoEntity_common_PhoneNumber.value.getter();
        v2(v23);

LABEL_15:
        (*(v8 + 8))(v13, v5);
        goto LABEL_16;
      }

      if (RREntity.isFromContactSource.getter())
      {
        v24 = RREntity.id.getter();
        v2(v24);

        goto LABEL_15;
      }
    }

    v25 = OUTLINED_FUNCTION_5_0();
    v2(v25);
    goto LABEL_15;
  }

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v0, &_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
  v20 = OUTLINED_FUNCTION_5_0();
  v2(v20);
LABEL_16:
  OUTLINED_FUNCTION_14();
}

void static SiriKitContactIntent.runReferenceResolution(_:completion:)()
{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = OUTLINED_FUNCTION_19();
  v6 = OUTLINED_FUNCTION_1_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_8();
  v13 = v12 - v11;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.siriContacts);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_22(&dword_26686A000, v17, v18, "#SiriKitContactIntent: running reference resolution");
    OUTLINED_FUNCTION_6();
  }

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_2_0(v0);
  if (!v19)
  {
    v21 = OUTLINED_FUNCTION_12();
    v22(v21);
    RREntity.usoEntity.getter();
    type metadata accessor for UsoEntity_common_Person();
    OUTLINED_FUNCTION_17();
    static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

    if (v26)
    {
      if (dispatch thunk of UsoEntity_common_Person.specifyingContactAddress.getter())
      {
        CodeGenBase.entity.getter();

        type metadata accessor for UsoEntity_common_PhoneNumber();

        static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

        v23 = dispatch thunk of UsoEntity_common_PhoneNumber.value.getter();
        v2(v23);

LABEL_15:
        (*(v8 + 8))(v13, v5);
        goto LABEL_16;
      }

      if (RREntity.isFromContactSource.getter())
      {
        v24 = RREntity.id.getter();
        v2(v24);

        goto LABEL_15;
      }
    }

    v25 = OUTLINED_FUNCTION_5_0();
    v2(v25);
    goto LABEL_15;
  }

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v0, &_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
  v20 = OUTLINED_FUNCTION_5_0();
  v2(v20);
LABEL_16:
  OUTLINED_FUNCTION_14();
}

uint64_t SiriKitGetEntityIntent.runReferenceResolution(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  v5[2] = a2;
  v5[3] = a3;
  v5[4] = v7;
  static SiriKitContactIntent.runReferenceResolution(_:completion:)();

  return MEMORY[0x26D5E33A0](v7);
}

void specialized closure #1 in SiriKitGetEntityIntent.runReferenceResolution(_:)(uint64_t a1, unint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    switch(a3)
    {
      case 1:
        if (one-time initialization token for siriContacts != -1)
        {
          swift_once();
        }

        v32 = type metadata accessor for Logger();
        __swift_project_value_buffer(v32, static Logger.siriContacts);

        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.debug.getter();
        outlined consume of SiriKitContactIntentResolvedValue(a1, a2, 1u);
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v41 = a2;
          v42 = v36;
          *v35 = 136315138;
          v40 = a1;

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
          v37 = String.init<A>(describing:)();
          v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v42);

          *(v35 + 4) = v39;
          _os_log_impl(&dword_26686A000, v33, v34, "#SiriKitGetEntityIntent: Resolved an email from reference resolution: %s", v35, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v36);
          MEMORY[0x26D5E3300](v36, -1, -1);
          MEMORY[0x26D5E3300](v35, -1, -1);
        }

        if (a2)
        {
          v27 = MEMORY[0x26D5E2470](a1, a2);
        }

        else
        {
          v27 = 0;
        }

        [v7 setEmailAddress_];
        goto LABEL_29;
      case 2:
        if (one-time initialization token for siriContacts != -1)
        {
          swift_once();
        }

        v19 = type metadata accessor for Logger();
        __swift_project_value_buffer(v19, static Logger.siriContacts);

        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.debug.getter();
        outlined consume of SiriKitContactIntentResolvedValue(a1, a2, 2u);
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          v41 = a2;
          v42 = v23;
          *v22 = 136315138;
          v40 = a1;

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
          v24 = String.init<A>(describing:)();
          v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v42);

          *(v22 + 4) = v26;
          _os_log_impl(&dword_26686A000, v20, v21, "#SiriKitGetEntityIntent: Resolved a phone number from reference resolution: %s", v22, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v23);
          MEMORY[0x26D5E3300](v23, -1, -1);
          MEMORY[0x26D5E3300](v22, -1, -1);
        }

        if (a2)
        {
          v27 = MEMORY[0x26D5E2470](a1, a2);
        }

        else
        {
          v27 = 0;
        }

        [v7 setPhoneNumber_];
LABEL_29:

        v7 = v27;
        break;
      case 3:
        if (one-time initialization token for siriContacts != -1)
        {
          swift_once();
        }

        v28 = type metadata accessor for Logger();
        __swift_project_value_buffer(v28, static Logger.siriContacts);
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&dword_26686A000, v29, v30, "#SiriKitGetEntityIntent: no value found from reference resolution", v31, 2u);
          MEMORY[0x26D5E3300](v31, -1, -1);
        }

        break;
      default:
        v8 = one-time initialization token for siriContacts;

        if (v8 != -1)
        {
          swift_once();
        }

        v9 = type metadata accessor for Logger();
        __swift_project_value_buffer(v9, static Logger.siriContacts);

        v10 = Logger.logObject.getter();
        v11 = static os_log_type_t.debug.getter();
        outlined consume of SiriKitContactIntentResolvedValue(a1, a2, 0);
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          v13 = swift_slowAlloc();
          v40 = v13;
          *v12 = 136315138;
          *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v40);
          _os_log_impl(&dword_26686A000, v10, v11, "#SiriKitGetEntityIntent: Resolved a contact from reference resolution with identifier: %s", v12, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v13);
          MEMORY[0x26D5E3300](v13, -1, -1);
          MEMORY[0x26D5E3300](v12, -1, -1);
        }

        v7 = v7;
        v14 = MEMORY[0x26D5E2470](a1, a2);
        [v7 setIdentifier_];

        v15 = MEMORY[0x26D5E2470](a1, a2);
        [v7 setContactIdentifier_];

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_266966A40;
        type metadata accessor for SiriMatch();
        v17 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        *(v16 + 32) = @nonobjc INObject.init(identifier:display:)(a1, a2, a1, a2);
        v18 = off_287822350[0];
        type metadata accessor for GetContactAttributeIntent();
        v18(v16);
        break;
    }
  }
}

{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    switch(a3)
    {
      case 1:
        if (one-time initialization token for siriContacts != -1)
        {
          swift_once();
        }

        v32 = type metadata accessor for Logger();
        __swift_project_value_buffer(v32, static Logger.siriContacts);

        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.debug.getter();
        outlined consume of SiriKitContactIntentResolvedValue(a1, a2, 1u);
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v41 = a2;
          v42 = v36;
          *v35 = 136315138;
          v40 = a1;

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
          v37 = String.init<A>(describing:)();
          v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v42);

          *(v35 + 4) = v39;
          _os_log_impl(&dword_26686A000, v33, v34, "#SiriKitGetEntityIntent: Resolved an email from reference resolution: %s", v35, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v36);
          MEMORY[0x26D5E3300](v36, -1, -1);
          MEMORY[0x26D5E3300](v35, -1, -1);
        }

        if (a2)
        {
          v27 = MEMORY[0x26D5E2470](a1, a2);
        }

        else
        {
          v27 = 0;
        }

        [v7 setEmailAddress_];
        goto LABEL_29;
      case 2:
        if (one-time initialization token for siriContacts != -1)
        {
          swift_once();
        }

        v19 = type metadata accessor for Logger();
        __swift_project_value_buffer(v19, static Logger.siriContacts);

        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.debug.getter();
        outlined consume of SiriKitContactIntentResolvedValue(a1, a2, 2u);
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          v41 = a2;
          v42 = v23;
          *v22 = 136315138;
          v40 = a1;

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
          v24 = String.init<A>(describing:)();
          v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v42);

          *(v22 + 4) = v26;
          _os_log_impl(&dword_26686A000, v20, v21, "#SiriKitGetEntityIntent: Resolved a phone number from reference resolution: %s", v22, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v23);
          MEMORY[0x26D5E3300](v23, -1, -1);
          MEMORY[0x26D5E3300](v22, -1, -1);
        }

        if (a2)
        {
          v27 = MEMORY[0x26D5E2470](a1, a2);
        }

        else
        {
          v27 = 0;
        }

        [v7 setPhoneNumber_];
LABEL_29:

        v7 = v27;
        break;
      case 3:
        if (one-time initialization token for siriContacts != -1)
        {
          swift_once();
        }

        v28 = type metadata accessor for Logger();
        __swift_project_value_buffer(v28, static Logger.siriContacts);
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&dword_26686A000, v29, v30, "#SiriKitGetEntityIntent: no value found from reference resolution", v31, 2u);
          MEMORY[0x26D5E3300](v31, -1, -1);
        }

        break;
      default:
        v8 = one-time initialization token for siriContacts;

        if (v8 != -1)
        {
          swift_once();
        }

        v9 = type metadata accessor for Logger();
        __swift_project_value_buffer(v9, static Logger.siriContacts);

        v10 = Logger.logObject.getter();
        v11 = static os_log_type_t.debug.getter();
        outlined consume of SiriKitContactIntentResolvedValue(a1, a2, 0);
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          v13 = swift_slowAlloc();
          v40 = v13;
          *v12 = 136315138;
          *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v40);
          _os_log_impl(&dword_26686A000, v10, v11, "#SiriKitGetEntityIntent: Resolved a contact from reference resolution with identifier: %s", v12, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v13);
          MEMORY[0x26D5E3300](v13, -1, -1);
          MEMORY[0x26D5E3300](v12, -1, -1);
        }

        v7 = v7;
        v14 = MEMORY[0x26D5E2470](a1, a2);
        [v7 setIdentifier_];

        v15 = MEMORY[0x26D5E2470](a1, a2);
        [v7 setContactIdentifier_];

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_266966A40;
        type metadata accessor for SiriMatch();
        v17 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        *(v16 + 32) = @nonobjc INObject.init(identifier:display:)(a1, a2, a1, a2);
        v18 = off_287822260[0];
        type metadata accessor for GetContactIntent();
        v18(v16);
        break;
    }
  }
}

void specialized closure #1 in SiriKitGetEntityIntent.runReferenceResolution(_:)(uint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    switch(a3)
    {
      case 1:
        v38 = one-time initialization token for siriContacts;

        if (v38 != -1)
        {
          swift_once();
        }

        v39 = type metadata accessor for Logger();
        __swift_project_value_buffer(v39, static Logger.siriContacts);

        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.debug.getter();
        outlined consume of SiriKitContactIntentResolvedValue(a1, a2, 1u);
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v48 = a1;
          v49 = a2;
          v50 = v47;
          *v42 = 136315138;

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
          v43 = String.init<A>(describing:)();
          v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, &v50);

          *(v42 + 4) = v45;
          _os_log_impl(&dword_26686A000, v40, v41, "#SiriKitGetEntityIntent: Resolved an email from reference resolution: %s", v42, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v47);
          MEMORY[0x26D5E3300](v47, -1, -1);
          MEMORY[0x26D5E3300](v42, -1, -1);
        }

        (*(a6 + 88))(a1, a2, a5, a6);
        break;
      case 2:
        v24 = one-time initialization token for siriContacts;

        if (v24 != -1)
        {
          swift_once();
        }

        v25 = type metadata accessor for Logger();
        __swift_project_value_buffer(v25, static Logger.siriContacts);

        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.debug.getter();
        outlined consume of SiriKitContactIntentResolvedValue(a1, a2, 2u);
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v48 = a1;
          v49 = a2;
          v50 = v46;
          *v28 = 136315138;

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
          v29 = String.init<A>(describing:)();
          v31 = a6;
          v32 = a5;
          v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v50);

          *(v28 + 4) = v33;
          a5 = v32;
          a6 = v31;
          _os_log_impl(&dword_26686A000, v26, v27, "#SiriKitGetEntityIntent: Resolved a phone number from reference resolution: %s", v28, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v46);
          MEMORY[0x26D5E3300](v46, -1, -1);
          MEMORY[0x26D5E3300](v28, -1, -1);
        }

        (*(a6 + 64))(a1, a2, a5, a6);
        break;
      case 3:
        if (one-time initialization token for siriContacts != -1)
        {
          swift_once();
        }

        v34 = type metadata accessor for Logger();
        __swift_project_value_buffer(v34, static Logger.siriContacts);
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&dword_26686A000, v35, v36, "#SiriKitGetEntityIntent: no value found from reference resolution", v37, 2u);
          MEMORY[0x26D5E3300](v37, -1, -1);
        }

        break;
      default:
        v13 = one-time initialization token for siriContacts;

        if (v13 != -1)
        {
          swift_once();
        }

        v14 = type metadata accessor for Logger();
        __swift_project_value_buffer(v14, static Logger.siriContacts);

        v15 = Logger.logObject.getter();
        v16 = static os_log_type_t.debug.getter();
        outlined consume of SiriKitContactIntentResolvedValue(a1, a2, 0);
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v48 = v18;
          *v17 = 136315138;
          *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v48);
          _os_log_impl(&dword_26686A000, v15, v16, "#SiriKitGetEntityIntent: Resolved a contact from reference resolution with identifier: %s", v17, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v18);
          MEMORY[0x26D5E3300](v18, -1, -1);
          MEMORY[0x26D5E3300](v17, -1, -1);
        }

        v19 = v12;
        v20 = MEMORY[0x26D5E2470](a1, a2);
        [v19 setIdentifier_];

        v21 = *(a6 + 128);
        swift_bridgeObjectRetain_n();
        v21(a1, a2, a5, a6);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_266966A40;
        type metadata accessor for SiriMatch();
        v23 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        *(v22 + 32) = @nonobjc INObject.init(identifier:display:)(a1, a2, a1, a2);
        (*(a6 + 112))(v22, a5, a6);
        break;
    }
  }
}

void static SiriKitGetEntityIntent.resolveAddressType(from:)()
{
  OUTLINED_FUNCTION_15();
  v1 = v0;
  v3 = v2;
  v143 = type metadata accessor for UsoIdentifier();
  v4 = OUTLINED_FUNCTION_1_0(v143);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v136 = &v133 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v10);
  v142 = &v133 - v11;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v12);
  v138 = &v133 - v13;
  OUTLINED_FUNCTION_16();
  v15 = MEMORY[0x28223BE20](v14);
  v17 = (&v133 - v16);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v133 - v19;
  MEMORY[0x28223BE20](v18);
  v139 = &v133 - v21;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v22);
  v24 = &v133 - v23;
  if (one-time initialization token for siriContacts != -1)
  {
    goto LABEL_98;
  }

  while (1)
  {
    v25 = type metadata accessor for Logger();
    v26 = __swift_project_value_buffer(v25, static Logger.siriContacts);

    v140 = v26;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();

    v29 = os_log_type_enabled(v27, v28);
    v141 = v3;
    v137 = v20;
    if (v29)
    {
      v30 = OUTLINED_FUNCTION_24();
      v31 = OUTLINED_FUNCTION_23();
      v144 = v1;
      v145 = v31;
      *v30 = 136315138;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology31UsoEntity_common_ContactAddressCSgMd, &_s12SiriOntology31UsoEntity_common_ContactAddressCSgMR);
      v32 = String.init<A>(describing:)();
      v34 = v1;
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v145);

      *(v30 + 4) = v35;
      v1 = v34;
      _os_log_impl(&dword_26686A000, v27, v28, "#SiriKitGetEntityIntent resolveAddressType from address %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v31);
      OUTLINED_FUNCTION_6();
      v3 = v141;
      OUTLINED_FUNCTION_6();
    }

    if (!v1)
    {
      goto LABEL_70;
    }

    swift_retain_n();
    CodeGenBase.entity.getter();
    static UsoEntity_CodeGenConverter.convert(entity:)();

    v20 = MEMORY[0x277D84F70];
    if (v147)
    {
      type metadata accessor for UsoEntity_common_PhoneNumber();
      if (OUTLINED_FUNCTION_3_0())
      {
        v134 = v144;
        v36 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
        v37 = v1;
        v1 = v36;
        v135 = v37;

        v38 = 0;
        v39 = *(v1 + 16);
        OUTLINED_FUNCTION_18();
        v17 = (v6 + 8);
        v138 = MEMORY[0x277D84F90];
        while (1)
        {
          while (1)
          {
            if (v39 == v38)
            {

              v60 = v138;
              if (*(v138 + 2))
              {
                OUTLINED_FUNCTION_4_0();
                v62 = v143;
                v63(v137, &v60[v61], v143);

                v64 = UsoIdentifier.value.getter();
                v65 = OUTLINED_FUNCTION_9();
                v66(v65, v62);
                v67 = v141;
              }

              else
              {

                v97 = dispatch thunk of UsoEntity_common_PhoneNumber.label.getter();
                v64 = v97;
                v67 = v141;
                if (v98)
                {
                  v64 = String.convertToContactAttributeLabel.getter(v97, v98);
                  v24 = v99;
                }

                else
                {
                  v24 = 0;
                }
              }

              v106 = Logger.logObject.getter();
              v107 = static os_log_type_t.debug.getter();

              if (os_log_type_enabled(v106, v107))
              {
                v108 = OUTLINED_FUNCTION_24();
                v109 = OUTLINED_FUNCTION_23();
                v144 = v109;
                v145 = v64;
                *v108 = 136315138;
                v146 = v24;

                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
                v110 = String.init<A>(describing:)();
                v112 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v110, v111, &v144);

                *(v108 + 4) = v112;
                OUTLINED_FUNCTION_20(&dword_26686A000, v113, v114, "#SiriKitGetEntityIntent address was converted to a phone number with value %s");
                __swift_destroy_boxed_opaque_existential_0Tm(v109);
                OUTLINED_FUNCTION_6();
                OUTLINED_FUNCTION_6();
              }

              *v67 = v64;
              *(v67 + 8) = v24;
              *(v67 + 16) = 1;
              goto LABEL_94;
            }

            if (v38 >= *(v1 + 16))
            {
              __break(1u);
              goto LABEL_96;
            }

            OUTLINED_FUNCTION_7_0();
            v20 = *(v6 + 72);
            (*(v6 + 16))(v24, v1 + v3 + v20 * v38, v143);
            v40 = UsoIdentifier.namespace.getter();
            if (v41)
            {
              break;
            }

LABEL_16:
            (*v17)(v24, v143);
            ++v38;
          }

          if (v40 == 0x707954656E6F6870 && v41 == 0xE900000000000065)
          {
          }

          else
          {
            v43 = OUTLINED_FUNCTION_21();

            if ((v43 & 1) == 0)
            {
              goto LABEL_16;
            }
          }

          v44 = *v136;
          (*v136)(v139, v24, v143);
          v45 = v138;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v47 = v45;
          v145 = v45;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v48 = *(v45 + 16);
            OUTLINED_FUNCTION_13();
            v47 = v145;
          }

          v49 = *(v47 + 16);
          v50 = (v49 + 1);
          if (v49 >= *(v47 + 24) >> 1)
          {
            v133 = v44;
            v138 = (v49 + 1);
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v50 = v138;
            v44 = v133;
            v47 = v145;
          }

          ++v38;
          *(v47 + 16) = v50;
          v138 = v47;
          v44((v47 + v3 + v49 * v20), v139, v143);
        }
      }
    }

    else
    {
      outlined destroy of UsoEntity_common_Person.DefinedValues?(&v145, &_sypSgMd, &_sypSgMR);
    }

    CodeGenBase.entity.getter();
    static UsoEntity_CodeGenConverter.convert(entity:)();

    if (!v147)
    {
      break;
    }

    type metadata accessor for UsoEntity_common_EmailAddress();
    if ((OUTLINED_FUNCTION_3_0() & 1) == 0)
    {
      goto LABEL_45;
    }

    v133 = v144;
    v51 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
    v135 = v1;

    v1 = 0;
    v24 = *(v51 + 16);
    OUTLINED_FUNCTION_18();
    v139 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v24 == v1)
      {

        v78 = v139;
        if (*(v139 + 2))
        {
          OUTLINED_FUNCTION_4_0();
          v80 = v143;
          v81(v137, &v78[v79], v143);

          v82 = UsoIdentifier.value.getter();
          v83 = OUTLINED_FUNCTION_9();
          v84(v83, v80);
          v85 = v141;
        }

        else
        {

          v100 = dispatch thunk of UsoEntity_common_EmailAddress.label.getter();
          v82 = v100;
          if (v101)
          {
            v82 = String.convertToContactAttributeLabel.getter(v100, v101);
            v24 = v102;
          }

          else
          {
            v24 = 0;
          }

          v85 = v141;
        }

        v115 = Logger.logObject.getter();
        v116 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v115, v116))
        {
          v117 = OUTLINED_FUNCTION_24();
          v118 = OUTLINED_FUNCTION_23();
          v144 = v118;
          v145 = v82;
          *v117 = 136315138;
          v146 = v24;

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
          v119 = String.init<A>(describing:)();
          v121 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v119, v120, &v144);

          *(v117 + 4) = v121;
          OUTLINED_FUNCTION_20(&dword_26686A000, v122, v123, "#SiriKitGetEntityIntent address was converted to an email with value %s");
          __swift_destroy_boxed_opaque_existential_0Tm(v118);
          OUTLINED_FUNCTION_6();
          OUTLINED_FUNCTION_6();
        }

        *v85 = v82;
        *(v85 + 8) = v24;
        *(v85 + 16) = 0;
        goto LABEL_94;
      }

      if (v1 >= *(v51 + 16))
      {
        break;
      }

      OUTLINED_FUNCTION_7_0();
      v52 = *(v6 + 72);
      (*(v6 + 16))(v17, v51 + v3 + v52 * v1, v143);
      v53 = UsoIdentifier.namespace.getter();
      if (!v54)
      {
        goto LABEL_35;
      }

      if (v53 == 0x7079546C69616D65 && v54 == 0xE900000000000065)
      {

LABEL_37:
        v134 = *v136;
        v134(v138, v17, v143);
        v56 = v139;
        v57 = swift_isUniquelyReferenced_nonNull_native();
        v145 = v56;
        if ((v57 & 1) == 0)
        {
          v58 = *(v56 + 16);
          OUTLINED_FUNCTION_13();
          v56 = v145;
        }

        v20 = *(v56 + 16);
        v59 = (v20 + 1);
        if (v20 >= *(v56 + 24) >> 1)
        {
          OUTLINED_FUNCTION_10();
          v59 = v139;
          v56 = v145;
        }

        ++v1;
        *(v56 + 16) = v59;
        v139 = v56;
        v134((v56 + v3 + v20 * v52), v138, v143);
      }

      else
      {
        v20 = OUTLINED_FUNCTION_21();

        if (v20)
        {
          goto LABEL_37;
        }

LABEL_35:
        (*(v6 + 8))(v17, v143);
        ++v1;
      }
    }

LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    OUTLINED_FUNCTION_2();
  }

  outlined destroy of UsoEntity_common_Person.DefinedValues?(&v145, &_sypSgMd, &_sypSgMR);
LABEL_45:
  CodeGenBase.entity.getter();
  static UsoEntity_CodeGenConverter.convert(entity:)();

  if (!v147)
  {

    outlined destroy of UsoEntity_common_Person.DefinedValues?(&v145, &_sypSgMd, &_sypSgMR);
LABEL_67:
    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&dword_26686A000, v86, v87, "#SiriKitGetEntityIntent address did not convert to a known contact address type", v88, 2u);
      OUTLINED_FUNCTION_6();
    }

LABEL_70:
    *v3 = 0;
    *(v3 + 8) = 0;
    *(v3 + 16) = -1;
    goto LABEL_94;
  }

  type metadata accessor for UsoEntity_common_PostalAddress();
  if ((OUTLINED_FUNCTION_3_0() & 1) == 0)
  {

    goto LABEL_67;
  }

  v133 = v144;
  v68 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
  v135 = v1;

  v17 = 0;
  v69 = *(v68 + 16);
  v1 = v6 + 16;
  v138 = (v6 + 32);
  v139 = MEMORY[0x277D84F90];
  while (v69 != v17)
  {
    if (v17 >= *(v68 + 16))
    {
      goto LABEL_97;
    }

    OUTLINED_FUNCTION_7_0();
    v24 = *(v6 + 72);
    (*(v6 + 16))(v142, v68 + v3 + v24 * v17, v143);
    v70 = UsoIdentifier.namespace.getter();
    if (v71)
    {
      if (v70 == 0x5473736572646461 && v71 == 0xEB00000000657079)
      {
      }

      else
      {
        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v20 & 1) == 0)
        {
          goto LABEL_56;
        }
      }

      v73 = *v138;
      (*v138)(v136, v142, v143);
      v74 = v139;
      v75 = swift_isUniquelyReferenced_nonNull_native();
      v145 = v74;
      v134 = v73;
      if ((v75 & 1) == 0)
      {
        v76 = *(v74 + 16);
        OUTLINED_FUNCTION_13();
        v74 = v145;
      }

      v20 = *(v74 + 16);
      v77 = (v20 + 1);
      if (v20 >= *(v74 + 24) >> 1)
      {
        OUTLINED_FUNCTION_10();
        v77 = v139;
        v74 = v145;
      }

      v17 = (v17 + 1);
      *(v74 + 16) = v77;
      v139 = v74;
      v134((v74 + v3 + v20 * v24), v136, v143);
    }

    else
    {
LABEL_56:
      (*(v6 + 8))(v142, v143);
      v17 = (v17 + 1);
    }
  }

  v89 = v139;
  if (*(v139 + 2))
  {
    OUTLINED_FUNCTION_4_0();
    v91 = v143;
    v92(v137, &v89[v90], v143);

    v93 = UsoIdentifier.value.getter();
    v94 = OUTLINED_FUNCTION_9();
    v95(v94, v91);
    v96 = v141;
  }

  else
  {

    v103 = dispatch thunk of UsoEntity_common_PostalAddress.label.getter();
    v96 = v141;
    if (v104)
    {
      v93 = String.convertToContactAttributeLabel.getter(v103, v104);
      v24 = v105;
    }

    else
    {
      v124 = UsoEntity_common_PostalAddress.requestedAddressField.getter();
      if (v124 == 5)
      {
        v93 = 0;
        v24 = 0;
      }

      else
      {
        v93 = ContactNLIntent.ContactPostalAddressField.rawValue.getter(v124);
        v24 = v125;
      }
    }
  }

  v126 = Logger.logObject.getter();
  v127 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v126, v127))
  {
    v128 = OUTLINED_FUNCTION_24();
    v129 = OUTLINED_FUNCTION_23();
    v144 = v129;
    v145 = v93;
    *v128 = 136315138;
    v146 = v24;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v130 = String.init<A>(describing:)();
    v132 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v130, v131, &v144);

    *(v128 + 4) = v132;
    _os_log_impl(&dword_26686A000, v126, v127, "#SiriKitGetEntityIntent address was converted to a postal address with value %s", v128, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v129);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  *v96 = v93;
  *(v96 + 8) = v24;
  *(v96 + 16) = 2;
LABEL_94:
  OUTLINED_FUNCTION_14();
}

void specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)()
{
  v1 = *v0;
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v0 = v2;
}

{
  v1 = *v0;
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v0 = v2;
}

{
  v1 = *v0;
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v0 = v2;
}

{
  v1 = *v0;
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v0 = v2;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SpecifyingContactAddressType(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SpecifyingContactAddressType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

size_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(uint64_t a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay11SiriKitFlow11DisplayHintVG12displayHints_AC13SemanticValueV02idL0tGMd, _ss23_ContiguousArrayStorageCySay11SiriKitFlow11DisplayHintVG12displayHints_AC13SemanticValueV02idL0tGMR);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMd, &_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMR) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMd, &_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMR) - 8) + 80);
  if (v5)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)();
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)()
{
  OUTLINED_FUNCTION_15();
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v10 = v9;
  if (v11)
  {
    v12 = *(v1 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < v0)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= v0)
      {
        v13 = v0;
      }
    }
  }

  else
  {
    v13 = v0;
  }

  v14 = *(v1 + 16);
  if (v13 <= v14)
  {
    v15 = *(v1 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  v16 = *(v7(0) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  v20 = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v20 - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_24;
  }

  v19[2] = v14;
  v19[3] = 2 * ((v20 - v18) / v17);
LABEL_19:
  v22 = *(v7(0) - 8);
  if (v10)
  {
    v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v5(v8 + v23, v14, v19 + v23);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_14();
}

uint64_t outlined destroy of UsoEntity_common_Person.DefinedValues?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined consume of SiriKitContactIntentResolvedValue(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_0()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_10()
{
  *(v1 - 160) = v0;

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t OUTLINED_FUNCTION_11()
{
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);

  return RRReferenceResolverProtocol.resolveCommonPerson()(v2, v3, v0);
}

void OUTLINED_FUNCTION_13()
{

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t OUTLINED_FUNCTION_19()
{

  return type metadata accessor for RREntity();
}

void OUTLINED_FUNCTION_20(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_21()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void OUTLINED_FUNCTION_22(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_23()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_24()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_25(uint64_t a1)
{

  return outlined destroy of UsoEntity_common_Person.DefinedValues?(a1, v1, v2);
}

uint64_t GetContactAttributeHandleIntentStrategy.makeIntentExecutionBehavior(app:intent:)()
{
  OUTLINED_FUNCTION_4();
  v0[2] = v1;
  v0[3] = v2;
  v3 = type metadata accessor for SiriKitIntentHandler();
  v0[4] = v3;
  OUTLINED_FUNCTION_1_1(v3);
  v0[5] = v4;
  v6 = *(v5 + 64);
  v0[6] = OUTLINED_FUNCTION_10_0();
  v7 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.siriContacts);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_11_0();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_6();
  }

  v9 = v0[2];

  type metadata accessor for SiriKitIntentExecutionBehavior();
  v10 = one-time initialization token for current;

  if (v10 != -1)
  {
    swift_once();
  }

  v12 = v0[5];
  v11 = v0[6];
  v14 = v0[3];
  v13 = v0[4];
  v15 = v0[2];
  v16 = type metadata accessor for ContactResolver();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = ContactResolver.init()();
  v20 = objc_allocWithZone(type metadata accessor for GetContactAttributeIntentHandler());

  specialized BaseIntentHandler.init(contactService:contactResolver:)(v21, v19, v20);
  type metadata accessor for GetContactAttributeIntent();
  v22 = v14;
  SiriKitIntentHandler.init<A>(app:intentHandler:intent:)();
  v23 = static SiriKitIntentExecutionBehavior.embeddedIntentHandler(intentHandler:)();
  v24 = *(v12 + 8);
  v25 = OUTLINED_FUNCTION_17_0();
  v26(v25);

  v27 = v0[1];

  return v27(v23);
}

uint64_t GetContactAttributeHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)()
{
  OUTLINED_FUNCTION_4();
  v1[37] = v2;
  v1[38] = v0;
  v1[36] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_18_0(v4);
  v6 = *(v5 + 64);
  v1[39] = OUTLINED_FUNCTION_10_0();
  v7 = type metadata accessor for TemplatingResult();
  v1[40] = v7;
  OUTLINED_FUNCTION_1_1(v7);
  v1[41] = v8;
  v10 = *(v9 + 64);
  v1[42] = OUTLINED_FUNCTION_10_0();
  v11 = type metadata accessor for ContactsSnippetPluginModel();
  v1[43] = v11;
  OUTLINED_FUNCTION_1_1(v11);
  v1[44] = v12;
  v14 = *(v13 + 64);
  v1[45] = OUTLINED_FUNCTION_10_0();
  ContactAttributeSnippetModel = type metadata accessor for GetContactAttributeSnippetModel();
  v1[46] = ContactAttributeSnippetModel;
  OUTLINED_FUNCTION_1_1(ContactAttributeSnippetModel);
  v1[47] = v16;
  v18 = *(v17 + 64);
  v1[48] = OUTLINED_FUNCTION_10_0();
  v19 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_18_0(v19);
  v21 = *(v20 + 64);
  v1[49] = OUTLINED_FUNCTION_10_0();
  v22 = type metadata accessor for OutputGenerationManifest();
  v1[50] = v22;
  OUTLINED_FUNCTION_1_1(v22);
  v1[51] = v23;
  v25 = *(v24 + 64);
  v1[52] = OUTLINED_FUNCTION_10_0();
  v26 = type metadata accessor for Locale();
  v1[53] = v26;
  OUTLINED_FUNCTION_1_1(v26);
  v1[54] = v27;
  v29 = *(v28 + 64) + 15;
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v30 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_18_0(v30);
  v32 = *(v31 + 64);
  v1[57] = OUTLINED_FUNCTION_10_0();
  v33 = type metadata accessor for NLContextUpdate();
  v1[58] = v33;
  OUTLINED_FUNCTION_1_1(v33);
  v1[59] = v34;
  v36 = *(v35 + 64);
  v1[60] = OUTLINED_FUNCTION_10_0();
  v37 = type metadata accessor for Signpost.OpenSignpost();
  v1[61] = v37;
  OUTLINED_FUNCTION_18_0(v37);
  v39 = *(v38 + 64);
  v1[62] = OUTLINED_FUNCTION_10_0();
  v40 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v40, v41, v42);
}

{
  v155 = v0;
  if (one-time initialization token for contactsLog != -1)
  {
    swift_once();
  }

  v2 = v0[61];
  v3 = v0[62];
  v4 = v0[37];
  v5 = static Signpost.contactsLog;
  v0[63] = static Signpost.contactsLog;
  v5;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  v6 = 44;
  OUTLINED_FUNCTION_8_0();
  os_signpost(_:dso:log:name:signpostID:)();
  v7 = v3 + *(v2 + 20);
  *v7 = "MakeGetContactAttributeIntentHandledResponse";
  *(v7 + 8) = 44;
  *(v7 + 16) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVy0A15ContactsIntents019GetContactAttributeD0CAD0ijkD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVy0A15ContactsIntents019GetContactAttributeD0CAD0ijkD8ResponseCGMR);
  v8 = IntentResolutionRecord.intentResponse.getter();
  ContactAttributeIntent = outlined bridged method (ob) of @objc GetContactAttributeIntentResponse.contactIdentifiers.getter(v8);
  if (!ContactAttributeIntent)
  {
    goto LABEL_11;
  }

  v10 = ContactAttributeIntent;
  if (!*(ContactAttributeIntent + 16))
  {

LABEL_11:
    v24 = v0[62];
    type metadata accessor for ContactsError();
    OUTLINED_FUNCTION_0_0();
    lazy protocol witness table accessor for type GetContactAttributeHandleIntentStrategy and conformance GetContactAttributeHandleIntentStrategy(v25, v26);
    OUTLINED_FUNCTION_7_1();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_21:
    static os_signpost_type_t.end.getter();
    OUTLINED_FUNCTION_8_0();
    os_signpost(_:dso:log:name:signpostID:)();
    OUTLINED_FUNCTION_6_0();
    v146 = v0[42];
    v148 = v0[39];
    outlined destroy of Signpost.OpenSignpost(v2);

    OUTLINED_FUNCTION_3();
    goto LABEL_22;
  }

  v11 = v0[37];
  v12 = IntentResolutionRecord.intent.getter();
  v13 = [v12 isMe];

  if (v13 && (LOBYTE(v154[0]) = 2, MEMORY[0x26D5E2680](v13, v154), v13, (v154[0] & 1) != 0))
  {
    v14 = v0[38];
    v15 = v14[10];
    v16 = v14[11];
    v13 = __swift_project_boxed_opaque_existential_1(v14 + 7, v15);
    v1 = (*(v16 + 24))(v15, v16);
    v6 = 1;
  }

  else
  {
    v2 = v0;
    v17 = v0[38];
    v18 = v17[10];
    v19 = v17[11];
    v20 = __swift_project_boxed_opaque_existential_1(v17 + 7, v18);
    if (!v10[2])
    {
      __break(1u);
      goto LABEL_42;
    }

    v13 = v20;
    v21 = v10[4];
    v22 = v10[5];
    v23 = *(v19 + 8);

    v1 = v23(v21, v22, v18, v19);

    v6 = 0;
  }

  v0[64] = v1;
  if (!v1)
  {
    type metadata accessor for ContactsError();
    OUTLINED_FUNCTION_0_0();
    lazy protocol witness table accessor for type GetContactAttributeHandleIntentStrategy and conformance GetContactAttributeHandleIntentStrategy(v54, v55);
    v56 = OUTLINED_FUNCTION_7_1();
    if (v10[2])
    {
      v2 = v56;
      v58 = v57;
      v59 = v0[62];
      v60 = v10[4];
      v61 = v10[5];

      *v58 = v60;
      v58[1] = v61;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_21;
    }

LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v27 = v0[37];

  v28 = IntentResolutionRecord.intent.getter();
  v13 = [v28 contactAttributeToGet];
  v0[65] = v13;

  if (!v13)
  {
    v64 = v0[62];
    type metadata accessor for ContactsError();
    OUTLINED_FUNCTION_0_0();
    lazy protocol witness table accessor for type GetContactAttributeHandleIntentStrategy and conformance GetContactAttributeHandleIntentStrategy(v65, v66);
    OUTLINED_FUNCTION_7_1();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    goto LABEL_21;
  }

  if (one-time initialization token for siriContacts != -1)
  {
LABEL_43:
    OUTLINED_FUNCTION_2();
  }

  v29 = type metadata accessor for Logger();
  v0[66] = __swift_project_value_buffer(v29, static Logger.siriContacts);
  v30 = v13;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();

  v151 = v30;
  v147 = v6;
  if (os_log_type_enabled(v31, v32))
  {
    v144 = v32;
    v33 = swift_slowAlloc();
    v142 = swift_slowAlloc();
    v154[0] = v142;
    *v33 = 136315138;
    v34 = v30;
    v35 = [v34 description];
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v30 = v151;
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, v154);

    *(v33 + 4) = v39;
    _os_log_impl(&dword_26686A000, v31, v144, "#GetContactAttributeHandleIntentStrategy Attempting to create views for %s lookup.", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v142);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  v40 = v0[58];
  v41 = v0[37];
  v42 = v0[38];
  v43 = IntentResolutionRecord.intent.getter();
  ContactAttribute = outlined bridged method (ob) of @objc GetContactAttributeIntent.contactHandleMatches.getter(v43, &selRef_contactHandleMatches);
  v0[67] = ContactAttribute;
  v45 = IntentResolutionRecord.intent.getter();
  v46 = outlined bridged method (ob) of @objc GetContactAttributeIntent.contactHandleMatches.getter(v45, &selRef_contactHandleAlternatives);
  v0[68] = v46;
  v145 = ContactAttribute;
  v47 = specialized ContactsStrategy.handles(matches:alternatives:)(ContactAttribute, v46);
  v0[69] = v47;
  v48 = [v30 contactAttributeType];
  v49 = swift_allocBox();
  v51 = v50;
  NLContextUpdate.init()();
  NLContextUpdate.currentDomainName.setter();
  v0[70] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266966A40;
  *(inited + 32) = v1;

  v53 = v1;
  specialized DisplayHintFactory.build(for:handles:contactAttributeType:_:)(inited, v47, v48, 0, v49);
  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  v143 = v46;
  if (specialized Array._getCount()(v47) < 2)
  {
    static RREntity.makeEntityList(for:)(v53);
  }

  else
  {
    static RREntity.makeDisambiguationGroup(for:with:)(v53, v47);
  }

  swift_beginAccess();
  NLContextUpdate.rrEntities.setter();
  swift_endAccess();
  v67 = v0[59];
  v68 = v0[60];
  v69 = v0[58];
  swift_beginAccess();
  v70 = v0;
  v138 = *(v67 + 16);
  v138(v68, v51, v69);

  if ([v151 contactAttributeType] == 9)
  {
    v71 = 1;
  }

  else
  {
    v71 = *(v0[38] + 112);
  }

  if (specialized ContactsStrategy.isSmartEnabled.getter())
  {
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v72, v73))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_11_0();
      _os_log_impl(v74, v75, v76, v77, v78, 2u);
      OUTLINED_FUNCTION_6();
    }

    v80 = v0[56];
    v79 = v0[57];
    v82 = v0[53];
    v81 = v0[54];
    v83 = v70[38];

    type metadata accessor for GetContactAttributeCATsModern();
    static CATOption.defaultMode.getter();
    v70[71] = CATWrapperSimple.__allocating_init(options:globals:)();
    v84 = v83[6];
    __swift_project_boxed_opaque_existential_1(v83 + 2, v83[5]);
    OUTLINED_FUNCTION_17_0();
    dispatch thunk of DeviceState.siriLocale.getter();
    v85 = Locale.identifier.getter();
    v87 = v86;
    v70[72] = v86;
    (*(v81 + 8))(v80, v82);
    v88 = v83[6];
    __swift_project_boxed_opaque_existential_1(v83 + 2, v83[5]);
    v89 = OUTLINED_FUNCTION_20_0();
    v90 = swift_task_alloc();
    v70[73] = v90;
    *v90 = v70;
    v90[1] = GetContactAttributeHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
    v158 = 0;
    v157 = 0;

    return GetContactAttributeCATsModern.intentHandledResponse(matches:alternatives:attribute:contact:isMe:localeString:isVoiceMode:mockGlobals:isModern:)(v145, v143, v151, v53, v147, v85, v87, v89 & 1);
  }

  v159 = v71;
  v91 = v0[37];
  v92 = IntentResolutionRecord.intent.getter();
  isa = [v92 isMe];

  if (!isa)
  {
    type metadata accessor for NSNumber();
    isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
  }

  v94 = v0[38];
  outlined init with copy of DeviceState(v94 + 16, (v0 + 6));
  v137 = v94;
  v95 = *(v94 + 104);
  v0[2] = v47;
  v0[3] = v53;
  v0[4] = isa;
  v0[5] = v151;
  v0[11] = v95;
  v96 = v151;
  v152 = v53;

  specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:)();
  outlined destroy of GetContactAttributeViewBuilder((v0 + 2));
  v97 = v96;
  v98 = Logger.logObject.getter();
  v99 = static os_log_type_t.debug.getter();

  v139 = v97;
  if (os_log_type_enabled(v98, v99))
  {
    v100 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v154[0] = v101;
    *v100 = 136315138;
    v102 = v97;
    v103 = [v102 description];
    v104 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v106 = v105;

    v70 = v0;
    v107 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, v106, v154);

    *(v100 + 4) = v107;
    _os_log_impl(&dword_26686A000, v98, v99, "#GetContactAttributeHandleIntentStrategy Attempting to create intentHandledResponse for %s lookup.", v100, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v101);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  v109 = v70[54];
  v108 = v70[55];
  v110 = v70[53];
  v111 = v70[42];
  v112 = v70[38];
  v140 = v112[12];
  v113 = v70;
  v114 = v112[6];
  __swift_project_boxed_opaque_existential_1((v137 + 16), v112[5]);
  dispatch thunk of DeviceState.siriLocale.getter();
  v115 = Locale.identifier.getter();
  v117 = v116;
  (*(v109 + 8))(v108, v110);
  v118 = v112[6];
  __swift_project_boxed_opaque_existential_1((v137 + 16), v112[5]);
  v119 = OUTLINED_FUNCTION_20_0();
  GetContactAttributeCATs.intentHandledResponse(matches:alternatives:attribute:contact:isMe:localeString:isVoiceMode:mockGlobals:)(v145, v143, v139, v152, v147, v115, v117, v119 & 1, v111, 0);
  v149 = v113[62];
  v121 = v113[59];
  v120 = v113[60];
  v122 = v113[58];
  v123 = v113[41];
  v136 = v113[42];
  v124 = v113[39];
  v141 = v113[40];
  v125 = v113[36];

  v138(v124, v120, v122);
  __swift_storeEnumTagSinglePayload(v124, 0, 1, v122);
  v126 = type metadata accessor for AceOutput();
  *(v113 + 19) = 0u;
  v113[21] = 0;
  *(v113 + 17) = 0u;
  v127 = MEMORY[0x277D5C1D8];
  v125[3] = v126;
  v125[4] = v127;
  __swift_allocate_boxed_opaque_existential_1(v125);
  static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of UsoEntity_common_Person.DefinedValues?((v113 + 17), &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v124, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(v123 + 8))(v136, v141);
  (*(v121 + 8))(v120, v122);
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_8_0();
  os_signpost(_:dso:log:name:signpostID:)();
  v128 = v113[60];
  v130 = v113[56];
  v129 = v113[57];
  v131 = v113[55];
  v132 = v113[52];
  v134 = v113[48];
  v133 = v113[49];
  v135 = v113[45];
  v150 = v113[42];
  v153 = v113[39];
  outlined destroy of Signpost.OpenSignpost(v113[62]);

  v62 = v113[1];
LABEL_22:

  return v62();
}

{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = v2[73];
  v6 = *v1;
  v3[74] = v7;
  v3[75] = v0;

  v8 = v2[72];
  v9 = v2[71];
  if (v0)
  {
    v10 = v3[69];
    v11 = v3[68];
    v12 = v3[67];

    v13 = GetContactAttributeHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  }

  else
  {
    v14 = v3[68];
    v15 = v3[67];

    v13 = GetContactAttributeHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  }

  return MEMORY[0x2822009F8](v13, 0, 0);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v2 = v1[78];
  v3 = v1[77];
  v4 = v1[76];
  v5 = *v0;
  OUTLINED_FUNCTION_0();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v2 = *(v1 + 632);
  v3 = *(v1 + 552);
  v4 = *v0;
  OUTLINED_FUNCTION_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  v1 = v0[74];
  v2 = v0[70];
  v3 = v0[45];
  v4 = v0[43];
  v5 = v0[44];
  (*(v0[47] + 16))(v3, v0[48], v0[46]);
  (*(v5 + 104))(v3, *MEMORY[0x277D559F0], v4);
  v6 = type metadata accessor for ResponseFactory();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v0[80] = ResponseFactory.init()();
  v0[25] = v4;
  v0[26] = lazy protocol witness table accessor for type GetContactAttributeHandleIntentStrategy and conformance GetContactAttributeHandleIntentStrategy(&lazy protocol witness table cache variable for type ContactsSnippetPluginModel and conformance ContactsSnippetPluginModel, MEMORY[0x277D55A00]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 22);
  (*(v5 + 16))(boxed_opaque_existential_1, v3, v4);
  v10 = swift_allocObject();
  v0[81] = v10;
  *(v10 + 16) = xmmword_266966A40;
  *(v10 + 32) = v1;
  OUTLINED_FUNCTION_16_0(MEMORY[0x277D5BD38]);
  v11 = v1;
  v12 = swift_task_alloc();
  v0[82] = v12;
  *v12 = v0;
  v12[1] = GetContactAttributeHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  v13 = v0[52];
  v14 = v0[36];

  return v16(v14, v0 + 22, v10, v13);
}

{
  OUTLINED_FUNCTION_5();
  v2 = v1;
  v3 = v1[82];
  v4 = v1[81];
  v5 = v1[80];
  v6 = *v0;
  OUTLINED_FUNCTION_0();
  *v7 = v6;

  __swift_destroy_boxed_opaque_existential_0Tm(v2 + 22);
  v8 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

{
  v1 = *(v0 + 520);
  v2 = *(v0 + 512);
  v17 = *(v0 + 504);
  v18 = *(v0 + 496);
  v3 = *(v0 + 472);
  v15 = *(v0 + 464);
  v16 = *(v0 + 480);
  v4 = *(v0 + 408);
  v13 = *(v0 + 400);
  v14 = *(v0 + 416);
  v5 = *(v0 + 376);
  v12 = *(v0 + 384);
  v7 = *(v0 + 360);
  v6 = *(v0 + 368);
  v8 = *(v0 + 344);
  v9 = *(v0 + 352);

  (*(v9 + 8))(v7, v8);
  (*(v5 + 8))(v12, v6);
  (*(v4 + 8))(v14, v13);
  (*(v3 + 8))(v16, v15);
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_8_0();
  os_signpost(_:dso:log:name:signpostID:)();
  OUTLINED_FUNCTION_5_1();
  outlined destroy of Signpost.OpenSignpost(v8);

  OUTLINED_FUNCTION_3();

  return v10();
}

void GetContactAttributeHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_19_0();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  v25 = *(v22 + 592);
  v26 = *(v22 + 552);
  v27 = *(v22 + 520);
  v28 = *(v22 + 480);
  v29 = *(v22 + 416);
  v30 = *(v22 + 392);
  v31 = *(v22 + 304);
  v32 = DialogExecutionResult.responseViewIDForManifest.getter();
  v34 = v33;
  static DialogPhase.completion.getter();
  v35 = swift_task_alloc();
  v35[2] = v31;
  v35[3] = v28;
  v35[4] = v32;
  v35[5] = v34;
  v35[6] = v27;
  OutputGenerationManifest.init(dialogPhase:_:)();

  v36 = specialized Array._getCount()(v26);
  v37 = 0;
  v38 = v26 & 0xC000000000000001;
  v39 = v26 & 0xFFFFFFFFFFFFFF8;
  v40 = v26 + 32;
  while (v36 != v37)
  {
    if (v38)
    {
      v41 = MEMORY[0x26D5E29D0](v37, *(v22 + 552));
    }

    else
    {
      if (v37 >= *(v39 + 16))
      {
        goto LABEL_20;
      }

      v41 = *(v40 + 8 * v37);
    }

    v42 = v41;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }

    v43 = ContactAttribute.isEmpty.getter();

    ++v37;
    if ((v43 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v44 = *(v22 + 512);
  if (CNContact.containsData(for:)(*(v22 + 520)))
  {
LABEL_11:
    v45 = *(v22 + 512);
    v46 = *(*(v22 + 304) + 120);
    v47 = swift_task_alloc();
    *(v22 + 632) = v47;
    *v47 = v22;
    v47[1] = GetContactAttributeHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
    v48 = *(v22 + 552);
    v49 = *(v22 + 520);
    v50 = *(v22 + 384);
    OUTLINED_FUNCTION_13_0();

    static GetContactAttributeSnippetModel.from(_:requestedAttribute:handlesToReturn:deviceState:mockGlobals:)(v51, v52, v53, v54, v55, v56);
    return;
  }

  v58 = *(v22 + 552);
  v59 = *(v22 + 528);
  v60 = *(v22 + 520);

  v61 = v60;
  v62 = Logger.logObject.getter();
  LOBYTE(v60) = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v62, v60))
  {
    v63 = *(v22 + 520);
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    a11 = v65;
    *v64 = 136315138;
    v66 = v63;
    v67 = [v66 description];
    v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v70 = v69;

    v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v70, &a11);

    *(v64 + 4) = v71;
    OUTLINED_FUNCTION_11_0();
    _os_log_impl(v72, v73, v74, v75, v76, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v65);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  v77 = *(v22 + 592);
  v78 = *(v22 + 560);
  v79 = type metadata accessor for ResponseFactory();
  v80 = *(v79 + 48);
  v81 = *(v79 + 52);
  swift_allocObject();
  *(v22 + 608) = ResponseFactory.init()();
  v82 = swift_allocObject();
  *(v22 + 616) = v82;
  *(v82 + 16) = xmmword_266966A40;
  *(v82 + 32) = v77;
  OUTLINED_FUNCTION_16_0(MEMORY[0x277D5BD50]);
  v83 = v77;
  v84 = swift_task_alloc();
  *(v22 + 624) = v84;
  *v84 = v22;
  v84[1] = GetContactAttributeHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  v85 = *(v22 + 416);
  v86 = *(v22 + 288);
  OUTLINED_FUNCTION_13_0();

  v90(v87, v88, v89, v90, v91, v92, v93, v94, a9, a10, a11, a12, a13, a14);
}

uint64_t GetContactAttributeHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_0();
  v15 = *(v14 + 520);
  v16 = *(v14 + 504);
  v17 = *(v14 + 512);
  v39 = *(v14 + 496);
  v19 = *(v14 + 472);
  v18 = *(v14 + 480);
  v20 = *(v14 + 464);
  v21 = *(v14 + 408);
  v22 = *(v14 + 416);
  v23 = *(v14 + 400);

  (*(v21 + 8))(v22, v23);
  v24 = *(v19 + 8);
  v25 = OUTLINED_FUNCTION_17_0();
  v26(v25);
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_8_0();
  os_signpost(_:dso:log:name:signpostID:)();
  OUTLINED_FUNCTION_5_1();
  v38 = v28;
  v40 = v27;
  outlined destroy of Signpost.OpenSignpost(v16);

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_13_0();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, v38, v40, a12, a13, a14);
}

{
  OUTLINED_FUNCTION_19_0();
  v15 = *(v14 + 504);
  v16 = *(v14 + 512);
  v17 = *(v14 + 496);
  v19 = *(v14 + 472);
  v18 = *(v14 + 480);
  v20 = *(v14 + 464);

  v21 = *(v19 + 8);
  v22 = OUTLINED_FUNCTION_17_0();
  v23(v22);
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_8_0();
  os_signpost(_:dso:log:name:signpostID:)();
  v24 = *(v14 + 600);
  OUTLINED_FUNCTION_6_0();
  v35 = *(v14 + 336);
  v36 = *(v14 + 312);
  v37 = v25;
  outlined destroy of Signpost.OpenSignpost(v17);

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_13_0();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, v35, v36, v37, a12, a13, a14);
}

char *closure #1 in GetContactAttributeHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = type metadata accessor for ResponseMode();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v16 - v12;
  OutputGenerationManifest.canUseServerTTS.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  v14 = type metadata accessor for NLContextUpdate();
  (*(*(v14 - 8) + 16))(v13, a3, v14);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
  OutputGenerationManifest.nlContextUpdate.setter();

  OutputGenerationManifest.responseViewId.setter();
  result = [a6 contactAttributeType];
  if ((result - 6) <= 3)
  {
    static ResponseMode.voiceForward.getter();
    return OutputGenerationManifest.responseMode.setter();
  }

  return result;
}

uint64_t GetContactAttributeHandleIntentStrategy.__deallocating_deinit()
{
  v0 = specialized ContactsStrategy.deinit();

  return MEMORY[0x2821FE8D8](v0, 184, 7);
}

uint64_t type metadata accessor for GetContactAttributeHandleIntentStrategy()
{
  result = type metadata singleton initialization cache for GetContactAttributeHandleIntentStrategy;
  if (!type metadata singleton initialization cache for GetContactAttributeHandleIntentStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t specialized ContactsStrategy.handles(matches:alternatives:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
    if (a2)
    {
    }

    else
    {
      v2 = MEMORY[0x277D84F90];
    }
  }

  return v2;
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3C8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  ContactAttributeHandleIntentStrategy = type metadata accessor for GetContactAttributeHandleIntentStrategy();
  *v9 = v4;
  v9[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return MEMORY[0x2821B9C68](a1, a2, ContactAttributeHandleIntentStrategy, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3D0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  ContactAttributeHandleIntentStrategy = type metadata accessor for GetContactAttributeHandleIntentStrategy();
  *v9 = v4;
  v9[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return MEMORY[0x2821B9C70](a1, a2, ContactAttributeHandleIntentStrategy, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3B0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  ContactAttributeHandleIntentStrategy = type metadata accessor for GetContactAttributeHandleIntentStrategy();
  *v9 = v4;
  v9[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return MEMORY[0x2821B9C48](a1, a2, ContactAttributeHandleIntentStrategy, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeIntentHandledResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return GetContactAttributeHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)();
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3C0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  ContactAttributeHandleIntentStrategy = type metadata accessor for GetContactAttributeHandleIntentStrategy();
  *v9 = v4;
  v9[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return MEMORY[0x2821B9C60](a1, a2, ContactAttributeHandleIntentStrategy, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3B8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  ContactAttributeHandleIntentStrategy = type metadata accessor for GetContactAttributeHandleIntentStrategy();
  *v9 = v4;
  v9[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return MEMORY[0x2821B9C58](a1, a2, ContactAttributeHandleIntentStrategy, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3A0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  ContactAttributeHandleIntentStrategy = type metadata accessor for GetContactAttributeHandleIntentStrategy();
  *v9 = v4;
  v9[1] = protocol witness for Flow.execute() in conformance ContactsUnsupportedFlow;

  return MEMORY[0x2821B9C38](a1, a2, ContactAttributeHandleIntentStrategy, a4);
}

uint64_t protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance GetContactAttributeHandleIntentStrategy()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for Flow.onAsync(input:) in conformance ContactsUnsupportedFlow;

  return GetContactAttributeHandleIntentStrategy.makeIntentExecutionBehavior(app:intent:)();
}

uint64_t outlined bridged method (ob) of @objc GetContactAttributeIntentResponse.contactIdentifiers.getter(void *a1)
{
  v2 = [a1 contactIdentifiers];

  if (!v2)
  {
    return 0;
  }

  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined destroy of Signpost.OpenSignpost(uint64_t a1)
{
  v2 = type metadata accessor for Signpost.OpenSignpost();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined bridged method (ob) of @objc GetContactAttributeIntent.contactHandleMatches.getter(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  type metadata accessor for ContactAttribute();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t lazy protocol witness table accessor for type GetContactAttributeHandleIntentStrategy and conformance GetContactAttributeHandleIntentStrategy(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void OUTLINED_FUNCTION_5_1()
{
  v1 = v0[62];
  v2 = v0[60];
  v4 = v0[56];
  v3 = v0[57];
  v5 = v0[55];
  v6 = v0[52];
  v8 = v0[48];
  v7 = v0[49];
  v9 = v0[45];
  v10 = v0[42];
  v11 = v0[39];
}

void OUTLINED_FUNCTION_6_0()
{
  v1 = v0[62];
  v2 = v0[60];
  v4 = v0[56];
  v3 = v0[57];
  v5 = v0[55];
  v6 = v0[52];
  v8 = v0[48];
  v7 = v0[49];
  v9 = v0[45];
}

uint64_t OUTLINED_FUNCTION_7_1()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_10_0()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_20_0()
{

  return DeviceState.isVox.getter();
}

uint64_t ContactsDelegateFlow.__allocating_init(flowFactory:)(__int128 *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  ContactsDelegateFlow.init(flowFactory:)(a1);
  return v5;
}

uint64_t ContactsDelegateFlow.init(flowFactory:)(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC19SiriContactsIntents20ContactsDelegateFlow_restrictionGuards;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriKitFlow06CommonF5GuardVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow06CommonF5GuardVGMR);
  v4 = type metadata accessor for CommonFlowGuard();
  OUTLINED_FUNCTION_1_1(v4);
  v6 = *(v5 + 72);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_266966D80;
  static CommonFlowGuard.ensuringPersonalRequestsAreEnabledWhenApplicable.getter();
  static CommonFlowGuard.ensuringDeviceIsAuthenticated.getter();
  static CommonFlowGuard.disallowInSharingMode.getter();
  *(v1 + v3) = v9;
  type metadata accessor for ContactsFlowState(0);
  swift_storeEnumTagMultiPayload();
  outlined init with take of DeviceState(a1, v1 + OBJC_IVAR____TtC19SiriContactsIntents20ContactsDelegateFlow_flowFactory);
  return v1;
}

BOOL ContactsDelegateFlow.on(input:)(uint64_t a1)
{
  v2 = v1;
  v50 = type metadata accessor for ContactsFlowState(0);
  v4 = OUTLINED_FUNCTION_10_1(v50);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v48 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v49 = &v43 - v9;
  v45 = type metadata accessor for Parse();
  v10 = OUTLINED_FUNCTION_10_1(v45);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_8();
  v13 = type metadata accessor for Input();
  v14 = OUTLINED_FUNCTION_1_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_8();
  v21 = v20 - v19;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v22 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_29(v22, static Logger.siriContacts);
  v46 = *(v16 + 16);
  v46(v21, a1, v13);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  v25 = os_log_type_enabled(v23, v24);
  v47 = a1;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v44 = v1;
    v27 = v26;
    v28 = OUTLINED_FUNCTION_23();
    v51 = v28;
    *v27 = 136315138;
    Input.parse.getter();
    v29 = String.init<A>(describing:)();
    v31 = v30;
    v32 = OUTLINED_FUNCTION_42();
    v33(v32);
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v51);

    *(v27 + 4) = v34;
    _os_log_impl(&dword_26686A000, v23, v24, "#ContactsDelegateFlow on(input:) %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    OUTLINED_FUNCTION_6();
    v2 = v44;
    OUTLINED_FUNCTION_6();
  }

  else
  {

    v35 = OUTLINED_FUNCTION_42();
    v36(v35);
  }

  v37 = OBJC_IVAR____TtC19SiriContactsIntents20ContactsDelegateFlow_flowState;
  swift_beginAccess();
  v38 = v49;
  outlined init with copy of ContactsFlowState(v2 + v37, v49);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  OUTLINED_FUNCTION_2_1();
  outlined destroy of ContactsFlowState(v38, v40);
  if (EnumCaseMultiPayload == 2)
  {
    v41 = v48;
    v46(v48, v47, v21);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    outlined assign with take of ContactsFlowState(v41, v2 + v37);
    swift_endAccess();
  }

  return EnumCaseMultiPayload == 2;
}

uint64_t ContactsDelegateFlow.execute(completion:)()
{
  type metadata accessor for ContactsDelegateFlow(0);
  lazy protocol witness table accessor for type ContactsDelegateFlow and conformance ContactsDelegateFlow();
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t ContactsDelegateFlow.execute()()
{
  OUTLINED_FUNCTION_4();
  v1[9] = v2;
  v1[10] = v0;
  v3 = type metadata accessor for Input();
  v1[11] = v3;
  OUTLINED_FUNCTION_1_1(v3);
  v1[12] = v4;
  v1[13] = *(v5 + 64);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v6 = type metadata accessor for ContactsFlowState(0);
  v1[17] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[10];
  v4 = OBJC_IVAR____TtC19SiriContactsIntents20ContactsDelegateFlow_flowState;
  v0[20] = OBJC_IVAR____TtC19SiriContactsIntents20ContactsDelegateFlow_flowState;
  swift_beginAccess();
  outlined init with copy of ContactsFlowState(v3 + v4, v1);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v0[12] + 32))(v0[14], v0[19], v0[11]);
      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2();
      }

      v38 = type metadata accessor for Logger();
      v0[21] = __swift_project_value_buffer(v38, static Logger.siriContacts);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_15_0(v40))
      {
        v41 = OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_24_0(v41);
        OUTLINED_FUNCTION_11_0();
        _os_log_impl(v42, v43, v44, v45, v46, 2u);
        OUTLINED_FUNCTION_11_1();
      }

      v47 = swift_task_alloc();
      v0[22] = v47;
      *v47 = v0;
      v47[1] = ContactsDelegateFlow.execute();
      v48 = v0[14];
      v49 = v0[10];
      OUTLINED_FUNCTION_13_0();

      return ContactsDelegateFlow.getFlow(for:)();
    case 2u:
      OUTLINED_FUNCTION_14_0((v0[10] + OBJC_IVAR____TtC19SiriContactsIntents20ContactsDelegateFlow_flowFactory));
      v19 = *(v3 + 64);
      OUTLINED_FUNCTION_21_0();
      v54 = v20 + *v20;
      v22 = *(v21 + 4);
      v23 = swift_task_alloc();
      v0[24] = v23;
      *v23 = v0;
      OUTLINED_FUNCTION_9_0(v23);
      OUTLINED_FUNCTION_13_0();

      __asm { BRAA            X2, X16 }

      return result;
    case 3u:
      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2();
      }

      v26 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_29(v26, static Logger.siriContacts);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_15_0(v28))
      {
        v29 = OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_24_0(v29);
        OUTLINED_FUNCTION_11_0();
        _os_log_impl(v30, v31, v32, v33, v34, 2u);
        OUTLINED_FUNCTION_11_1();
      }

      v35 = v0[9];

      static ExecuteResponse.complete()();
      break;
    default:
      v5 = v0[10];
      v53 = *(v0[12] + 32);
      v53(v0[16], v0[19], v0[11]);
      OUTLINED_FUNCTION_14_0((v5 + OBJC_IVAR____TtC19SiriContactsIntents20ContactsDelegateFlow_flowFactory));
      v6 = (*(v3 + 88))(*(v5 + OBJC_IVAR____TtC19SiriContactsIntents20ContactsDelegateFlow_restrictionGuards), v2, v3);
      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2();
      }

      v7 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_29(v7, static Logger.siriContacts);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_24_0(v10);
        _os_log_impl(&dword_26686A000, v8, v9, "#ContactsDelegateFlow runningGuardFlow ...", v3, 2u);
        OUTLINED_FUNCTION_11_1();
      }

      v12 = v0[15];
      v11 = v0[16];
      v13 = v0[12];
      v14 = v0[13];
      v16 = v0[10];
      v15 = v0[11];
      v52 = v0[9];

      v0[8] = v6;
      (*(v13 + 16))(v12, v11, v15);
      v17 = (*(v13 + 80) + 24) & ~*(v13 + 80);
      v18 = swift_allocObject();
      *(v18 + 16) = v16;
      v53(v18 + v17, v12, v15);
      type metadata accessor for GuardFlow();

      static ExecuteResponse.ongoing<A>(next:childCompletion:)();

      (*(v13 + 8))(v11, v15);

      break;
  }

  OUTLINED_FUNCTION_23_0();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_13_0();

  __asm { BRAA            X1, X16 }

  return result;
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v5 = *(v4 + 176);
  *v3 = *v1;
  *(v2 + 184) = v6;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_39();
  if (v1[23])
  {
    v5 = v1[14];
    v6 = v1[11];
    v7 = v1[12];
    v8 = v1[9];
    v9 = v1[23];
    static ExecuteResponse.complete(next:)();

    v10 = *(v7 + 8);
    v11 = OUTLINED_FUNCTION_22_0();
    v12(v11);
  }

  else
  {
    v13 = v1[21];
    Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_15_0(v14))
    {
      v15 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_24_0(v15);
      OUTLINED_FUNCTION_11_0();
      _os_log_impl(v16, v17, v18, v19, v20, 2u);
      OUTLINED_FUNCTION_11_1();
    }

    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_22_0();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_44();
    outlined assign with take of ContactsFlowState(v0, v4 + v2);
    swift_endAccess();
    static ExecuteResponse.complete()();
    v21 = *(v3 + 8);
    v22 = OUTLINED_FUNCTION_43();
    v23(v22);
  }

  OUTLINED_FUNCTION_23_0();

  OUTLINED_FUNCTION_3();

  return v24();
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v5 = *(v4 + 192);
  *v3 = *v1;
  *(v2 + 200) = v6;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_39();
  v25 = v0;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v4 = v0[10];
  v5 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_29(v5, static Logger.siriContacts);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_37();
    v9 = OUTLINED_FUNCTION_23();
    v24 = v9;
    *v8 = 136315138;
    outlined init with copy of ContactsFlowState(v3 + v2, v1);
    OUTLINED_FUNCTION_43();
    v10 = String.init<A>(describing:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v24);

    *(v8 + 4) = v12;
    OUTLINED_FUNCTION_11_0();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_11_1();
  }

  v18 = v0[25];
  v19 = v0[19];
  v20 = v0[9];
  static ExecuteResponse.complete(next:)();

  OUTLINED_FUNCTION_2_1();
  outlined destroy of ContactsFlowState(v19, v21);
  OUTLINED_FUNCTION_23_0();

  OUTLINED_FUNCTION_3();

  return v22();
}

{
  OUTLINED_FUNCTION_39();
  v24 = v0;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v4 = v0[10];
  v5 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_29(v5, static Logger.siriContacts);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_37();
    v9 = OUTLINED_FUNCTION_23();
    v23 = v9;
    *v8 = 136315138;
    outlined init with copy of ContactsFlowState(v3 + v2, v1);
    OUTLINED_FUNCTION_43();
    v10 = String.init<A>(describing:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v23);

    *(v8 + 4) = v12;
    OUTLINED_FUNCTION_11_0();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_11_1();
  }

  v18 = v0[19];
  v19 = v0[9];
  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_2_1();
  outlined destroy of ContactsFlowState(v18, v20);
  OUTLINED_FUNCTION_23_0();

  OUTLINED_FUNCTION_3();

  return v21();
}

{
  OUTLINED_FUNCTION_39();
  v5 = *(v1 + 168);
  Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_15_0(v6))
  {
    v7 = OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_24_0(v7);
    OUTLINED_FUNCTION_11_0();
    _os_log_impl(v8, v9, v10, v11, v12, 2u);
    OUTLINED_FUNCTION_11_1();
  }

  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_22_0();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_44();
  outlined assign with take of ContactsFlowState(v0, v4 + v2);
  swift_endAccess();
  static ExecuteResponse.complete()();
  v13 = *(v3 + 8);
  v14 = OUTLINED_FUNCTION_43();
  v15(v14);
  OUTLINED_FUNCTION_23_0();

  OUTLINED_FUNCTION_3();

  return v16();
}

uint64_t ContactsDelegateFlow.handleGuardFlowResult(_:input:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for ContactsFlowState(0);
  v6 = OUTLINED_FUNCTION_10_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_8();
  v11 = v10 - v9;
  if (static GuardFlowResult.== infix(_:_:)())
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v12 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_29(v12, static Logger.siriContacts);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_31(v14))
    {
      v15 = OUTLINED_FUNCTION_30();
      *v15 = 0;
      _os_log_impl(&dword_26686A000, v13, v14, "#ContactsDelegateFlow Moved state to runningContactsFlow", v15, 2u);
      OUTLINED_FUNCTION_6();
    }

    v16 = type metadata accessor for Input();
    OUTLINED_FUNCTION_10_1(v16);
    (*(v17 + 16))(v11, a2);
  }

  else
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v18 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_29(v18, static Logger.siriContacts);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_31(v20))
    {
      v21 = swift_slowAlloc();
      v22 = OUTLINED_FUNCTION_23();
      v28 = v22;
      *v21 = 136315138;
      v23 = GuardFlowResult.description.getter();
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v28);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_26686A000, v19, v20, "#ContactsDelegateFlow GuardFlow yielded an ExitValue that is either invalid or not passing: %s. Ending the flow.", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }
  }

  swift_storeEnumTagMultiPayload();
  v26 = OBJC_IVAR____TtC19SiriContactsIntents20ContactsDelegateFlow_flowState;
  swift_beginAccess();
  outlined assign with take of ContactsFlowState(v11, v3 + v26);
  return swift_endAccess();
}

uint64_t ContactsDelegateFlow.getFlow(for:)()
{
  OUTLINED_FUNCTION_4();
  v1[14] = v2;
  v1[15] = v0;
  v3 = type metadata accessor for Input();
  v1[16] = v3;
  OUTLINED_FUNCTION_1_1(v3);
  v1[17] = v4;
  v6 = *(v5 + 64) + 15;
  v1[18] = swift_task_alloc();
  v7 = type metadata accessor for Signpost.OpenSignpost();
  v1[19] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v1[20] = swift_task_alloc();
  v9 = type metadata accessor for Parse();
  v1[21] = v9;
  OUTLINED_FUNCTION_1_1(v9);
  v1[22] = v10;
  v12 = *(v11 + 64) + 15;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[14];
  Input.parse.getter();
  v0[12] = 0;
  v0[13] = 0xE000000000000000;
  _print_unlocked<A, B>(_:_:)();
  v4 = v0[12];
  v5 = v0[13];
  v0[5] = MEMORY[0x277D837D0];
  v6 = lazy protocol witness table accessor for type String and conformance String();
  v0[2] = v4;
  v0[6] = v6;
  v0[3] = v5;
  if (one-time initialization token for contactsLog != -1)
  {
    swift_once();
  }

  v8 = v0[19];
  v7 = v0[20];
  v24 = v0[15];
  v9 = static Signpost.contactsLog;
  v0[25] = static Signpost.contactsLog;
  v10 = v9;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_266966D90;
  outlined init with copy of DeviceState((v0 + 2), v11 + 32);
  os_signpost(_:dso:log:name:signpostID:_:_:)();

  v12 = v7 + *(v8 + 20);
  *v12 = "GetFlowForInput";
  *(v12 + 8) = 15;
  *(v12 + 16) = 2;
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v13 = OBJC_IVAR____TtC19SiriContactsIntents20ContactsDelegateFlow_flowFactory;
  v0[26] = OBJC_IVAR____TtC19SiriContactsIntents20ContactsDelegateFlow_flowFactory;
  v14 = *(v24 + v13 + 32);
  __swift_project_boxed_opaque_existential_1((v24 + v13), *(v24 + v13 + 24));
  v15 = *(v14 + 24);
  v16 = OUTLINED_FUNCTION_22_0();
  v17(v16);
  v18 = swift_task_alloc();
  v0[27] = v18;
  *v18 = v0;
  v18[1] = ContactsDelegateFlow.getFlow(for:);
  v19 = v0[24];
  OUTLINED_FUNCTION_16_1();

  return Parse.toSiriKitIntent(referenceResolver:previousIntent:)(v20, v21, v22);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v5 = *(v4 + 216);
  *v3 = *v0;
  *(v2 + 224) = v6;

  __swift_destroy_boxed_opaque_existential_0Tm((v2 + 56));
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_41();
  v3 = v2;
  OUTLINED_FUNCTION_5();
  v5 = v4;
  OUTLINED_FUNCTION_12_0();
  *v6 = v5;
  v8 = *(v7 + 232);
  v9 = *v1;
  OUTLINED_FUNCTION_0();
  *v10 = v9;
  *(v5 + 240) = v0;

  if (!v0)
  {
    *(v5 + 248) = v3;
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

{
  OUTLINED_FUNCTION_41();
  v3 = v2;
  OUTLINED_FUNCTION_5();
  v5 = v4;
  OUTLINED_FUNCTION_12_0();
  *v6 = v5;
  v8 = *(v7 + 256);
  v9 = *v1;
  OUTLINED_FUNCTION_0();
  *v10 = v9;
  *(v5 + 264) = v0;

  if (!v0)
  {
    *(v5 + 272) = v3;
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

{
  OUTLINED_FUNCTION_41();
  v3 = v2;
  OUTLINED_FUNCTION_5();
  v5 = v4;
  OUTLINED_FUNCTION_12_0();
  *v6 = v5;
  v8 = *(v7 + 280);
  v9 = *v1;
  OUTLINED_FUNCTION_0();
  *v10 = v9;
  *(v5 + 288) = v0;

  if (!v0)
  {
    *(v5 + 296) = v3;
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

void ContactsDelegateFlow.getFlow(for:)()
{
  v1 = v0[28];
  if (v1)
  {
    type metadata accessor for GetContactIntent();
    if (swift_dynamicCastClass())
    {
      v2 = one-time initialization token for siriContacts;
      v3 = v1;
      if (v2 != -1)
      {
        OUTLINED_FUNCTION_2();
      }

      v4 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_29(v4, static Logger.siriContacts);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_31(v6))
      {
        *OUTLINED_FUNCTION_30() = 0;
        OUTLINED_FUNCTION_27(&dword_26686A000, v7, v8, "#ContactsDelegateFlow Returning GetContactFlow");
        OUTLINED_FUNCTION_6();
      }

      v9 = v0[26];
      v10 = v0[15];

      OUTLINED_FUNCTION_26();
      v12 = *(v11 + 32);
      v13 = OUTLINED_FUNCTION_32();
      v14(v13);
      goto LABEL_20;
    }

    type metadata accessor for GetContactAttributeIntent();
    if (swift_dynamicCastClass())
    {
      v15 = one-time initialization token for siriContacts;
      v16 = v1;
      if (v15 != -1)
      {
        OUTLINED_FUNCTION_2();
      }

      v17 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_29(v17, static Logger.siriContacts);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_31(v19))
      {
        *OUTLINED_FUNCTION_30() = 0;
        OUTLINED_FUNCTION_27(&dword_26686A000, v20, v21, "#ContactsDelegateFlow Returning GetContactAttributeFlow");
        OUTLINED_FUNCTION_6();
      }

      v22 = v0[26];
      v23 = v0[15];

      OUTLINED_FUNCTION_26();
      v25 = *(v24 + 40);
      v26 = OUTLINED_FUNCTION_32();
      v27(v26);
      goto LABEL_20;
    }

    type metadata accessor for ModifyContactAttributeIntent();
    if (swift_dynamicCastClass())
    {
      v28 = one-time initialization token for siriContacts;
      v29 = v1;
      if (v28 != -1)
      {
        OUTLINED_FUNCTION_2();
      }

      v30 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_29(v30, static Logger.siriContacts);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_31(v32))
      {
        *OUTLINED_FUNCTION_30() = 0;
        OUTLINED_FUNCTION_27(&dword_26686A000, v33, v34, "#ContactsDelegateFlow Returning ModifyContactAttributeFlow)");
        OUTLINED_FUNCTION_6();
      }

      v35 = v0[26];
      v36 = v0[15];

      OUTLINED_FUNCTION_26();
      v38 = *(v37 + 48);
      v39 = OUTLINED_FUNCTION_32();
      v40(v39);
LABEL_20:

      OUTLINED_FUNCTION_3_2();
      static os_signpost_type_t.end.getter();
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_1_2();
      v41 = OUTLINED_FUNCTION_5_2();
      v42(v41);

      OUTLINED_FUNCTION_8_1();
      OUTLINED_FUNCTION_13_0();

      __asm { BRAA            X2, X16 }
    }
  }

  v45 = v0[24];
  Parse.isLearnPronunciation.getter();
  if (v46)
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v47 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_29(v47, static Logger.siriContacts);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_15_0(v49))
    {
      v50 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_24_0(v50);
      OUTLINED_FUNCTION_11_0();
      _os_log_impl(v51, v52, v53, v54, v55, 2u);
      OUTLINED_FUNCTION_11_1();
    }

    v56 = v0[26];
    v57 = v0[15];

    OUTLINED_FUNCTION_14_0((v57 + v56));
    v58 = *(v57 + 56);
    OUTLINED_FUNCTION_21_0();
    v112 = v59 + *v59;
    v61 = *(v60 + 4);
    v62 = swift_task_alloc();
    v0[29] = v62;
    *v62 = v0;
    OUTLINED_FUNCTION_9_0(v62);
    OUTLINED_FUNCTION_13_0();

    __asm { BRAA            X2, X16 }
  }

  v65 = v0[24];
  Parse.isRequestForMultipleContacts.getter();
  if (v66)
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v67 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_29(v67, static Logger.siriContacts);
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_15_0(v69))
    {
      v70 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_24_0(v70);
      OUTLINED_FUNCTION_11_0();
      _os_log_impl(v71, v72, v73, v74, v75, 2u);
      OUTLINED_FUNCTION_11_1();
    }

    v76 = v0[26];
    v77 = v0[15];

    OUTLINED_FUNCTION_14_0((v77 + v76));
    v78 = *(v77 + 80);
    OUTLINED_FUNCTION_21_0();
    v113 = v79 + *v79;
    v81 = *(v80 + 4);
    v82 = swift_task_alloc();
    v0[32] = v82;
    *v82 = v0;
    OUTLINED_FUNCTION_9_0(v82);
    OUTLINED_FUNCTION_13_0();

    __asm { BRAA            X2, X16 }
  }

  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v86 = v0[17];
  v85 = v0[18];
  v87 = v0[16];
  v88 = v0[14];
  v89 = type metadata accessor for Logger();
  __swift_project_value_buffer(v89, static Logger.siriContacts);
  (*(v86 + 16))(v85, v88, v87);
  v90 = Logger.logObject.getter();
  v91 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v90, v91))
  {
    v92 = v0[23];
    v93 = v0[21];
    v95 = v0[17];
    v94 = v0[18];
    v96 = v0[16];
    v97 = swift_slowAlloc();
    v98 = OUTLINED_FUNCTION_23();
    v115 = v98;
    *v97 = 136315138;
    Input.parse.getter();
    v99 = String.init<A>(describing:)();
    v101 = v100;
    (*(v95 + 8))(v94, v96);
    v102 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v101, &v115);

    *(v97 + 4) = v102;
    _os_log_impl(&dword_26686A000, v90, v91, "#ContactsDelegateFlow Falling back to UnsupportedActionFlow for parse: %s", v97, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v98);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {
    v104 = v0[17];
    v103 = v0[18];
    v91 = v0[16];

    (*(v104 + 8))(v103, v91);
  }

  OUTLINED_FUNCTION_14_0((v0[15] + v0[26]));
  v105 = *(v91 + 64);
  OUTLINED_FUNCTION_21_0();
  v114 = v106 + *v106;
  v108 = *(v107 + 4);
  v109 = swift_task_alloc();
  v0[35] = v109;
  *v109 = v0;
  OUTLINED_FUNCTION_9_0(v109);
  OUTLINED_FUNCTION_13_0();

  __asm { BRAA            X2, X16 }
}

uint64_t ContactsDelegateFlow.getFlow(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_28();

  v11 = *(v10 + 248);
  OUTLINED_FUNCTION_3_2();
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_2();
  v12 = OUTLINED_FUNCTION_5_2();
  v13(v12);

  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_34();

  return v16(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_28();

  v11 = *(v10 + 272);
  OUTLINED_FUNCTION_3_2();
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_2();
  v12 = OUTLINED_FUNCTION_5_2();
  v13(v12);

  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_34();

  return v16(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_28();

  v11 = *(v10 + 296);
  OUTLINED_FUNCTION_3_2();
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_2();
  v12 = OUTLINED_FUNCTION_5_2();
  v13(v12);

  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_34();

  return v16(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_28();
  v11 = *(v10 + 240);
  v12 = *(v10 + 224);
  OUTLINED_FUNCTION_3_2();

  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_2();
  v14 = OUTLINED_FUNCTION_5_2();
  v15(v14);

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_34();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_28();
  v11 = *(v10 + 264);
  v12 = *(v10 + 224);
  OUTLINED_FUNCTION_3_2();

  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_2();
  v14 = OUTLINED_FUNCTION_5_2();
  v15(v14);

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_34();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_28();
  v11 = *(v10 + 288);
  v12 = *(v10 + 224);
  OUTLINED_FUNCTION_3_2();

  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_2();
  v14 = OUTLINED_FUNCTION_5_2();
  v15(v14);

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_34();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t ContactsDelegateFlow.deinit()
{
  OUTLINED_FUNCTION_2_1();
  outlined destroy of ContactsFlowState(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC19SiriContactsIntents20ContactsDelegateFlow_flowFactory));
  v3 = *(v0 + OBJC_IVAR____TtC19SiriContactsIntents20ContactsDelegateFlow_restrictionGuards);

  return v0;
}

uint64_t ContactsDelegateFlow.__deallocating_deinit()
{
  ContactsDelegateFlow.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t protocol witness for Flow.execute() in conformance ContactsDelegateFlow()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for Flow.execute() in conformance ContactsUnsupportedFlow;

  return ContactsDelegateFlow.execute()();
}

uint64_t protocol witness for Flow.exitValue.getter in conformance ContactsDelegateFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ContactsDelegateFlow(0);

  return MEMORY[0x2821BA658](v3, a2);
}

uint64_t outlined init with copy of ContactsFlowState(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactsFlowState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of ContactsFlowState(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactsFlowState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ContactsFlowState(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContactsDelegateFlow and conformance ContactsDelegateFlow()
{
  result = lazy protocol witness table cache variable for type ContactsDelegateFlow and conformance ContactsDelegateFlow;
  if (!lazy protocol witness table cache variable for type ContactsDelegateFlow and conformance ContactsDelegateFlow)
  {
    type metadata accessor for ContactsDelegateFlow(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsDelegateFlow and conformance ContactsDelegateFlow);
  }

  return result;
}

uint64_t partial apply for closure #1 in ContactsDelegateFlow.execute()(unsigned __int8 *a1)
{
  v3 = *(type metadata accessor for Input() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return closure #1 in ContactsDelegateFlow.execute()(a1, v4, v5);
}

uint64_t type metadata completion function for ContactsDelegateFlow()
{
  result = type metadata accessor for ContactsFlowState(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of ContactsDelegateFlow.execute()()
{
  OUTLINED_FUNCTION_41();
  v3 = v2;
  v4 = *(*v0 + 152);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = protocol witness for Flow.execute() in conformance ContactsUnsupportedFlow;

  return v8(v3);
}

uint64_t type metadata completion function for ContactsFlowState()
{
  result = type metadata accessor for Input();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t outlined destroy of ContactsFlowState(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_10_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_1_2()
{

  return outlined destroy of ContactsFlowState(v0, type metadata accessor for Signpost.OpenSignpost);
}

void OUTLINED_FUNCTION_3_2()
{
  v2 = v0[24];
  v1 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v6 = v0[20];
  v5 = v0[21];
  v7 = v0[18];
}

uint64_t OUTLINED_FUNCTION_6_1()
{

  return os_signpost(_:dso:log:name:signpostID:)();
}

void OUTLINED_FUNCTION_11_1()
{

  JUMPOUT(0x26D5E3300);
}

BOOL OUTLINED_FUNCTION_15_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_23_0()
{
  v3 = v0[18];
  v2 = v0[19];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[14];
}

void *OUTLINED_FUNCTION_26()
{
  v2 = (v1 + v0);
  v3 = *(v1 + v0 + 24);
  v4 = v2[4];
  return __swift_project_boxed_opaque_existential_1(v2, v3);
}

void OUTLINED_FUNCTION_27(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_30()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_31(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_36()
{
  v3 = v1[20];
  v5 = v1[17];
  v4 = v1[18];
  v6 = v1[14];
  v7 = v1[11];
  v8 = v1[12];
  v9 = v1[9];
  v10 = v1[10];
}

uint64_t OUTLINED_FUNCTION_37()
{
  v2 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[10];

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_44()
{

  return swift_beginAccess();
}

uint64_t GetContactHandleIntentStrategy.makeIntentExecutionBehavior(app:intent:)()
{
  OUTLINED_FUNCTION_4();
  v0[2] = v1;
  v0[3] = v2;
  v3 = type metadata accessor for SiriKitIntentHandler();
  v0[4] = v3;
  OUTLINED_FUNCTION_1_1(v3);
  v0[5] = v4;
  v6 = *(v5 + 64);
  v0[6] = OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.siriContacts);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_31(v3))
  {
    *OUTLINED_FUNCTION_30() = 0;
    OUTLINED_FUNCTION_23_1(&dword_26686A000, v4, v5, "#GetContactHandleIntentStrategy makeIntentExecutionBehavior");
    OUTLINED_FUNCTION_6();
  }

  v6 = v0[2];

  type metadata accessor for SiriKitIntentExecutionBehavior();
  v7 = one-time initialization token for current;

  if (v7 != -1)
  {
    swift_once();
  }

  v9 = v0[5];
  v8 = v0[6];
  v11 = v0[3];
  v10 = v0[4];
  v12 = v0[2];
  v13 = type metadata accessor for ContactResolver();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = ContactResolver.init()();
  v17 = objc_allocWithZone(type metadata accessor for GetContactIntentHandler());

  specialized BaseIntentHandler.init(contactService:contactResolver:)(v18, v16, v17);
  type metadata accessor for GetContactIntent();
  v19 = v11;
  OUTLINED_FUNCTION_46();
  SiriKitIntentHandler.init<A>(app:intentHandler:intent:)();
  v20 = static SiriKitIntentExecutionBehavior.embeddedIntentHandler(intentHandler:)();
  v21 = *(v9 + 8);
  v22 = OUTLINED_FUNCTION_17_0();
  v23(v22);

  v24 = v0[1];

  return v24(v20);
}

uint64_t GetContactHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)()
{
  OUTLINED_FUNCTION_4();
  v1[24] = v2;
  v1[25] = v0;
  v1[23] = v3;
  v4 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_18_0(v4);
  v6 = *(v5 + 64);
  v1[26] = OUTLINED_FUNCTION_10_0();
  v7 = type metadata accessor for OutputGenerationManifest();
  v1[27] = v7;
  OUTLINED_FUNCTION_1_1(v7);
  v1[28] = v8;
  v10 = *(v9 + 64);
  v1[29] = OUTLINED_FUNCTION_10_0();
  v11 = type metadata accessor for ContactsSnippetPluginModel();
  v1[30] = v11;
  OUTLINED_FUNCTION_1_1(v11);
  v1[31] = v12;
  v14 = *(v13 + 64);
  v1[32] = OUTLINED_FUNCTION_10_0();
  v15 = type metadata accessor for ContactsSnippetFlowState();
  v1[33] = v15;
  OUTLINED_FUNCTION_1_1(v15);
  v1[34] = v16;
  v18 = *(v17 + 64);
  v1[35] = OUTLINED_FUNCTION_10_0();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriContactsCommon14CodableContactVySo9CNContactCGMd, &_s18SiriContactsCommon14CodableContactVySo9CNContactCGMR);
  OUTLINED_FUNCTION_18_0(v19);
  v21 = *(v20 + 64);
  v1[36] = OUTLINED_FUNCTION_10_0();
  ContactSnippetModel = type metadata accessor for GetContactSnippetModel();
  v1[37] = ContactSnippetModel;
  OUTLINED_FUNCTION_1_1(ContactSnippetModel);
  v1[38] = v23;
  v25 = *(v24 + 64);
  v1[39] = OUTLINED_FUNCTION_10_0();
  ContactDirectInvocationsModel = type metadata accessor for GetContactDirectInvocationsModel();
  v1[40] = ContactDirectInvocationsModel;
  OUTLINED_FUNCTION_1_1(ContactDirectInvocationsModel);
  v1[41] = v27;
  v29 = *(v28 + 64);
  v1[42] = OUTLINED_FUNCTION_45();
  v1[43] = swift_task_alloc();
  v30 = type metadata accessor for Locale();
  v1[44] = v30;
  OUTLINED_FUNCTION_1_1(v30);
  v1[45] = v31;
  v33 = *(v32 + 64);
  v1[46] = OUTLINED_FUNCTION_10_0();
  v34 = type metadata accessor for ContactsLabelCATContainer();
  v1[47] = v34;
  OUTLINED_FUNCTION_1_1(v34);
  v1[48] = v35;
  v37 = *(v36 + 64);
  v1[49] = OUTLINED_FUNCTION_45();
  v1[50] = swift_task_alloc();
  v38 = type metadata accessor for ContactsLabelCATContainer.LabelType();
  v1[51] = v38;
  OUTLINED_FUNCTION_1_1(v38);
  v1[52] = v39;
  v41 = *(v40 + 64);
  v1[53] = OUTLINED_FUNCTION_10_0();
  v42 = type metadata accessor for TemplatingText();
  v1[54] = v42;
  OUTLINED_FUNCTION_1_1(v42);
  v1[55] = v43;
  v45 = *(v44 + 64);
  v1[56] = OUTLINED_FUNCTION_10_0();
  v46 = type metadata accessor for TemplatingResult();
  v1[57] = v46;
  OUTLINED_FUNCTION_1_1(v46);
  v1[58] = v47;
  v49 = *(v48 + 64);
  v1[59] = OUTLINED_FUNCTION_45();
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow17TemplatingSectionVSgMd, &_s11SiriKitFlow17TemplatingSectionVSgMR);
  OUTLINED_FUNCTION_18_0(v50);
  v52 = *(v51 + 64);
  v1[63] = OUTLINED_FUNCTION_45();
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v53 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_18_0(v53);
  v55 = *(v54 + 64);
  v1[66] = OUTLINED_FUNCTION_10_0();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_18_0(v56);
  v58 = *(v57 + 64);
  v1[67] = OUTLINED_FUNCTION_10_0();
  v59 = type metadata accessor for NLContextUpdate();
  v1[68] = v59;
  OUTLINED_FUNCTION_1_1(v59);
  v1[69] = v60;
  v62 = *(v61 + 64);
  v1[70] = OUTLINED_FUNCTION_10_0();
  v63 = type metadata accessor for ResponseMode();
  v1[71] = v63;
  OUTLINED_FUNCTION_1_1(v63);
  v1[72] = v64;
  v66 = *(v65 + 64);
  v1[73] = OUTLINED_FUNCTION_10_0();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12ResponseModeVSg_ADtMd, &_s13SiriUtilities12ResponseModeVSg_ADtMR);
  v1[74] = v67;
  OUTLINED_FUNCTION_18_0(v67);
  v69 = *(v68 + 64);
  v1[75] = OUTLINED_FUNCTION_45();
  v1[76] = swift_task_alloc();
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  OUTLINED_FUNCTION_18_0(v70);
  v72 = *(v71 + 64);
  v1[77] = OUTLINED_FUNCTION_45();
  v1[78] = swift_task_alloc();
  v1[79] = swift_task_alloc();
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  v73 = type metadata accessor for Signpost.OpenSignpost();
  v1[82] = v73;
  OUTLINED_FUNCTION_18_0(v73);
  v75 = *(v74 + 64);
  v1[83] = OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v76, v77, v78);
}

{
  OUTLINED_FUNCTION_41();
  v2 = *v1;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v5 = v2[90];
  v6 = *v1;
  *(v3 + 728) = v7;
  *(v3 + 736) = v0;

  v8 = v2[89];
  v9 = v2[88];

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  v1 = *(v0 + 728);
  v2 = *(v0 + 408);
  v3 = *(v0 + 416);
  v71 = *(v0 + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriContactsCommon0E17LabelCATContainerV0G4TypeO_SStGMd, &_ss23_ContiguousArrayStorageCy18SiriContactsCommon0E17LabelCATContainerV0G4TypeO_SStGMR);
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriContactsCommon0B17LabelCATContainerV0D4TypeO_SStMd, &_s18SiriContactsCommon0B17LabelCATContainerV0D4TypeO_SStMR) - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_266966EE0;
  v8 = v7 + v6;
  v9 = (v8 + v4[14]);
  *(v0 + 952) = *MEMORY[0x277D55988];
  v10 = *(v3 + 104);
  *(v0 + 744) = v10;
  *(v0 + 752) = (v3 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  (v10)(v8);
  *(v0 + 964) = 1;
  *v9 = dispatch thunk of LabelExecutionResult.subscript.getter();
  v9[1] = v11;
  v12 = (v8 + v5 + v4[14]);
  *(v0 + 956) = *MEMORY[0x277D55980];
  v10();
  *(v0 + 965) = 7;
  *v12 = dispatch thunk of LabelExecutionResult.subscript.getter();
  v12[1] = v13;
  v14 = (v8 + 2 * v5 + v4[14]);
  *(v0 + 960) = *MEMORY[0x277D55990];
  v10();
  *(v0 + 966) = 8;
  *v14 = dispatch thunk of LabelExecutionResult.subscript.getter();
  v14[1] = v15;
  v16 = (v8 + 3 * v5 + v4[14]);
  v17 = *MEMORY[0x277D559B8];
  v10();
  *(v0 + 967) = 9;
  *v16 = dispatch thunk of LabelExecutionResult.subscript.getter();
  v16[1] = v18;
  v19 = (v8 + 4 * v5 + v4[14]);
  v20 = *MEMORY[0x277D559A8];
  v10();
  *(v0 + 968) = 14;
  *v19 = dispatch thunk of LabelExecutionResult.subscript.getter();
  v19[1] = v21;
  lazy protocol witness table accessor for type GetContactHandleIntentStrategy and conformance GetContactHandleIntentStrategy(&lazy protocol witness table cache variable for type ContactsLabelCATContainer.LabelType and conformance ContactsLabelCATContainer.LabelType, MEMORY[0x277D559C8]);
  v22 = Dictionary.init(dictionaryLiteral:)();
  *(v0 + 760) = v22;
  v23 = v71[6];
  __swift_project_boxed_opaque_existential_1(v71 + 2, v71[5]);
  if (dispatch thunk of DeviceState.isWatch.getter())
  {
    *(v0 + 768) = *(*(v0 + 200) + 104);
    swift_task_alloc();
    OUTLINED_FUNCTION_36_0();
    *(v0 + 776) = v24;
    *v24 = v25;
    v24[1] = GetContactHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
    v26 = *(v0 + 496);
    OUTLINED_FUNCTION_54();

    return ContactsLabelCATs.phone()();
  }

  else
  {
    v29 = *(v0 + 696);
    v72 = *(v0 + 528);
    v65 = *(v0 + 392);
    v66 = *(v0 + 376);
    v30 = *(v0 + 360);
    v31 = *(v0 + 368);
    v52 = *(v0 + 352);
    v53 = *(v0 + 400);
    v54 = *(v0 + 344);
    v56 = *(v0 + 328);
    v58 = *(v0 + 336);
    v59 = *(v0 + 320);
    v62 = *(v0 + 312);
    v63 = *(v0 + 384);
    v67 = *(v0 + 304);
    v69 = *(v0 + 296);
    v55 = *(v0 + 288);
    v57 = *(v0 + 272);
    v60 = *(v0 + 280);
    v61 = *(v0 + 264);
    v64 = *(v0 + 256);
    v68 = *(v0 + 248);
    v70 = *(v0 + 240);
    v32 = *(v0 + 200);
    v33 = *(v32 + 104);
    OUTLINED_FUNCTION_38();
    v34 = v29;

    OUTLINED_FUNCTION_47();
    dispatch thunk of DeviceState.siriLocale.getter();
    v35 = Locale.identifier.getter();
    v37 = v36;
    (*(v30 + 8))(v31, v52);
    ContactsLabelCATContainer.init(labels:contact:labelMapper:siriLocale:)(v22, v34, v33, v35, v37, v53);
    v38 = v34;
    GetContactDirectInvocationsModel.init(contact:)(v38);
    type metadata accessor for CNContact();
    v39 = v38;
    CodableContact.init(wrappedValue:)();
    v40 = *(v56 + 16);
    v41 = OUTLINED_FUNCTION_47();
    v42(v41);
    (*(v57 + 104))(v60, *MEMORY[0x277D55970], v61);
    (*(v63 + 16))(v65, v53, v66);
    GetContactSnippetModel.init(contact:directInvocationsModel:flowState:labelCATs:)();
    v43 = *(v67 + 16);
    v44 = OUTLINED_FUNCTION_37_0();
    v45(v44);
    (*(v68 + 104))(v64, *MEMORY[0x277D559E8], v70);
    type metadata accessor for GetContactCATsModern();
    type metadata accessor for CATGlobals();
    outlined init with copy of DeviceState(v32 + 16, v0 + 104);
    CATGlobals.__allocating_init(device:)();
    static CATOption.defaultMode.getter();
    *(v0 + 864) = CATWrapperSimple.__allocating_init(options:globals:)();
    type metadata accessor for DialogPerson();
    OUTLINED_FUNCTION_38();
    v46 = v39;
    OUTLINED_FUNCTION_47();
    dispatch thunk of DeviceState.siriLocale.getter();
    *(v0 + 872) = DialogPerson.init(from:useConversationalName:locale:mockGlobals:)(v46, 0, v31, 0);
    v47 = swift_task_alloc();
    *(v0 + 880) = v47;
    *v47 = v0;
    OUTLINED_FUNCTION_8_2(v47);
    OUTLINED_FUNCTION_54();

    return GetContactCATsModern.intentHandledResponse(isMe:requestedContact:shouldPrompt:)(v48, v49, v50);
  }
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v6 = *(v5 + 776);
  v7 = *v1;
  OUTLINED_FUNCTION_0();
  *v8 = v7;
  *(v3 + 784) = v0;

  if (v0)
  {
    v9 = *(v3 + 760);
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  v2 = *(v0 + 520);
  v3 = *(v0 + 496);
  v4 = *(v0 + 456);
  v5 = *(v0 + 464);
  v6 = TemplatingResult.sections.getter();
  *(v0 + 792) = *(v5 + 8);
  *(v0 + 800) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7 = OUTLINED_FUNCTION_37_0();
  v8(v7);
  specialized Collection.first.getter(v6, v2);

  v9 = type metadata accessor for TemplatingSection();
  *(v0 + 808) = v9;
  OUTLINED_FUNCTION_57(v2, 1, v9);
  if (v10)
  {
    outlined destroy of ResponseMode?(*(v0 + 520), &_s11SiriKitFlow17TemplatingSectionVSgMd, &_s11SiriKitFlow17TemplatingSectionVSgMR);
    v24 = *(v0 + 760);
  }

  else
  {
    v11 = *(v0 + 760);
    v32 = *(v0 + 744);
    v33 = *(v0 + 752);
    v31 = *(v0 + 952);
    v12 = *(v0 + 520);
    OUTLINED_FUNCTION_34_0();
    v30 = v13;
    TemplatingSection.content.getter();
    OUTLINED_FUNCTION_52(v9);
    v15 = *(v14 + 8);
    v16 = OUTLINED_FUNCTION_49();
    v17(v16);
    v18 = TemplatingText.text.getter();
    v19 = OUTLINED_FUNCTION_16_2();
    v20(v19);
    v32(v2, v31, v30);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, v1, v2, isUniquelyReferenced_nonNull_native);
    v22 = OUTLINED_FUNCTION_33();
    v23(v22);
    v24 = v11;
  }

  *(v0 + 816) = v24;
  swift_task_alloc();
  OUTLINED_FUNCTION_36_0();
  *(v0 + 824) = v25;
  *v25 = v26;
  v25[1] = GetContactHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  v27 = *(v0 + 768);
  v28 = *(v0 + 488);

  return ContactsLabelCATs.email()();
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v6 = *(v5 + 824);
  v7 = *v1;
  OUTLINED_FUNCTION_0();
  *v8 = v7;
  *(v3 + 832) = v0;

  if (v0)
  {
    v9 = *(v3 + 816);
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  v2 = *(v0 + 808);
  v3 = *(v0 + 800);
  v4 = *(v0 + 792);
  v5 = *(v0 + 512);
  v6 = *(v0 + 488);
  v7 = *(v0 + 456);
  TemplatingResult.sections.getter();
  v8 = OUTLINED_FUNCTION_49();
  v4(v8);
  v9 = OUTLINED_FUNCTION_46();
  specialized Collection.first.getter(v9, v10);

  OUTLINED_FUNCTION_57(v5, 1, v2);
  if (v11)
  {
    outlined destroy of ResponseMode?(*(v0 + 512), &_s11SiriKitFlow17TemplatingSectionVSgMd, &_s11SiriKitFlow17TemplatingSectionVSgMR);
    v25 = *(v0 + 816);
  }

  else
  {
    v12 = *(v0 + 816);
    v13 = *(v0 + 808);
    v33 = *(v0 + 960);
    v34 = *(v0 + 752);
    v14 = *(v0 + 744);
    v15 = *(v0 + 512);
    OUTLINED_FUNCTION_34_0();
    v31 = v16;
    v32 = v17;
    TemplatingSection.content.getter();
    OUTLINED_FUNCTION_52(v13);
    (*(v18 + 8))(v15, v13);
    v19 = TemplatingText.text.getter();
    v20 = OUTLINED_FUNCTION_16_2();
    v21(v20);
    v32(v2, v33, v31);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v19, v1, v2, isUniquelyReferenced_nonNull_native);
    v23 = OUTLINED_FUNCTION_33();
    v24(v23);
    v25 = v12;
  }

  *(v0 + 840) = v25;
  swift_task_alloc();
  OUTLINED_FUNCTION_36_0();
  *(v0 + 848) = v26;
  *v26 = v27;
  v26[1] = GetContactHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  v28 = *(v0 + 768);
  v29 = *(v0 + 480);

  return ContactsLabelCATs.address()(v29);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v6 = *(v5 + 848);
  v7 = *v1;
  OUTLINED_FUNCTION_0();
  *v8 = v7;
  *(v3 + 856) = v0;

  if (v0)
  {
    v9 = *(v3 + 840);
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  v2 = *(v0 + 808);
  v3 = *(v0 + 800);
  v4 = *(v0 + 792);
  v5 = *(v0 + 504);
  v6 = *(v0 + 480);
  v7 = *(v0 + 456);
  TemplatingResult.sections.getter();
  v8 = OUTLINED_FUNCTION_49();
  v4(v8);
  v9 = OUTLINED_FUNCTION_46();
  specialized Collection.first.getter(v9, v10);

  OUTLINED_FUNCTION_57(v5, 1, v2);
  if (v11)
  {
    outlined destroy of ResponseMode?(*(v0 + 504), &_s11SiriKitFlow17TemplatingSectionVSgMd, &_s11SiriKitFlow17TemplatingSectionVSgMR);
    v25 = *(v0 + 840);
  }

  else
  {
    v12 = *(v0 + 840);
    v13 = *(v0 + 808);
    v72 = *(v0 + 956);
    v74 = *(v0 + 752);
    v14 = *(v0 + 744);
    v15 = *(v0 + 504);
    OUTLINED_FUNCTION_34_0();
    v68 = v16;
    v70 = v17;
    TemplatingSection.content.getter();
    OUTLINED_FUNCTION_52(v13);
    (*(v18 + 8))(v15, v13);
    v19 = TemplatingText.text.getter();
    v20 = OUTLINED_FUNCTION_16_2();
    v21(v20);
    v70(v2, v72, v68);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v19, v1, v2, isUniquelyReferenced_nonNull_native);
    v23 = OUTLINED_FUNCTION_33();
    v24(v23);
    v25 = v12;
  }

  v55 = v25;
  v26 = *(v0 + 696);
  v75 = *(v0 + 528);
  v65 = *(v0 + 392);
  v66 = *(v0 + 376);
  v27 = *(v0 + 360);
  v28 = *(v0 + 368);
  v52 = *(v0 + 352);
  v53 = *(v0 + 400);
  v54 = *(v0 + 344);
  v29 = *(v0 + 328);
  v58 = *(v0 + 336);
  v59 = *(v0 + 320);
  v62 = *(v0 + 312);
  v63 = *(v0 + 384);
  v67 = *(v0 + 304);
  v71 = *(v0 + 296);
  v56 = *(v0 + 288);
  v57 = *(v0 + 272);
  v60 = *(v0 + 280);
  v61 = *(v0 + 264);
  v64 = *(v0 + 256);
  v69 = *(v0 + 248);
  v73 = *(v0 + 240);
  v30 = *(v0 + 200);
  v31 = v30[13];
  v32 = v30[6];
  __swift_project_boxed_opaque_existential_1(v30 + 2, v30[5]);
  v33 = v26;

  OUTLINED_FUNCTION_39_0();
  dispatch thunk of DeviceState.siriLocale.getter();
  v34 = Locale.identifier.getter();
  v36 = v35;
  (*(v27 + 8))(v28, v52);
  ContactsLabelCATContainer.init(labels:contact:labelMapper:siriLocale:)(v55, v33, v31, v34, v36, v53);
  v37 = v33;
  GetContactDirectInvocationsModel.init(contact:)(v37);
  type metadata accessor for CNContact();
  v38 = v37;
  CodableContact.init(wrappedValue:)();
  (*(v29 + 16))(v58, v54, v59);
  (*(v57 + 104))(v60, *MEMORY[0x277D55970], v61);
  v39 = *(v63 + 16);
  v40 = OUTLINED_FUNCTION_37_0();
  v41(v40);
  OUTLINED_FUNCTION_39_0();
  GetContactSnippetModel.init(contact:directInvocationsModel:flowState:labelCATs:)();
  v42 = *(v67 + 16);
  v43 = OUTLINED_FUNCTION_37_0();
  v44(v43);
  (*(v69 + 104))(v64, *MEMORY[0x277D559E8], v73);
  type metadata accessor for GetContactCATsModern();
  type metadata accessor for CATGlobals();
  outlined init with copy of DeviceState((v30 + 2), v0 + 104);
  CATGlobals.__allocating_init(device:)();
  static CATOption.defaultMode.getter();
  *(v0 + 864) = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for DialogPerson();
  OUTLINED_FUNCTION_38();
  v45 = v38;
  OUTLINED_FUNCTION_47();
  dispatch thunk of DeviceState.siriLocale.getter();
  *(v0 + 872) = DialogPerson.init(from:useConversationalName:locale:mockGlobals:)(v45, 0, v28, 0);
  v46 = swift_task_alloc();
  *(v0 + 880) = v46;
  *v46 = v0;
  OUTLINED_FUNCTION_8_2(v46);
  OUTLINED_FUNCTION_54();

  return GetContactCATsModern.intentHandledResponse(isMe:requestedContact:shouldPrompt:)(v47, v48, v49);
}

{
  OUTLINED_FUNCTION_41();
  v2 = *v1;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v5 = v2[110];
  v6 = *v1;
  *(v3 + 888) = v7;
  *(v3 + 896) = v0;

  v8 = v2[109];
  v9 = v2[108];

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  v1 = *(v0 + 970);
  v2 = *(v0 + 680);
  v3 = *(v0 + 560);
  v4 = *(v0 + 256);
  v5 = *(v0 + 232);
  v7 = *(v0 + 200);
  v6 = *(v0 + 208);
  static DialogPhase.completion.getter();
  v8 = swift_task_alloc();
  *(v8 + 16) = v7;
  *(v8 + 24) = v1;
  *(v8 + 32) = v3;
  *(v8 + 40) = v4;
  OutputGenerationManifest.init(dialogPhase:_:)();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_31(v10))
  {
    *OUTLINED_FUNCTION_30() = 0;
    OUTLINED_FUNCTION_23_1(&dword_26686A000, v11, v12, "#GetContactHandleIntentStrategy makeIntentHandledResponse generating SMART Dialog");
    OUTLINED_FUNCTION_6();
  }

  v13 = *(v0 + 888);
  v15 = *(v0 + 248);
  v14 = *(v0 + 256);
  v16 = *(v0 + 240);

  v17 = type metadata accessor for ResponseFactory();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  *(v0 + 904) = ResponseFactory.init()();
  *(v0 + 168) = v16;
  *(v0 + 176) = lazy protocol witness table accessor for type GetContactHandleIntentStrategy and conformance GetContactHandleIntentStrategy(&lazy protocol witness table cache variable for type ContactsSnippetPluginModel and conformance ContactsSnippetPluginModel, MEMORY[0x277D55A00]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 144));
  (*(v15 + 16))(boxed_opaque_existential_1, v14, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v21 = swift_allocObject();
  *(v0 + 912) = v21;
  *(v21 + 16) = xmmword_266966A40;
  *(v21 + 32) = v13;
  v22 = *(MEMORY[0x277D5BD38] + 4);
  v29 = (*MEMORY[0x277D5BD38] + MEMORY[0x277D5BD38]);
  v23 = v13;
  swift_task_alloc();
  OUTLINED_FUNCTION_36_0();
  *(v0 + 920) = v24;
  *v24 = v25;
  v24[1] = GetContactHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  v26 = *(v0 + 232);
  v27 = *(v0 + 184);

  return v29(v27, v0 + 144, v21, v26);
}

{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5();
  v2 = v1;
  OUTLINED_FUNCTION_5_3();
  *v3 = v2;
  v5 = v4[115];
  v6 = v4[114];
  v7 = v4[113];
  v8 = *v0;
  OUTLINED_FUNCTION_0();
  *v9 = v8;

  __swift_destroy_boxed_opaque_existential_0Tm((v2 + 144));
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  v14 = v0[111];
  v1 = v0[91];
  v16 = v0[87];
  OUTLINED_FUNCTION_26_0();
  v2 = v0[69];
  v23 = v3;
  v24 = v0[68];
  v4 = v0[48];
  v19 = v0[47];
  v20 = v0[50];
  v5 = v0[41];
  v17 = v0[40];
  v18 = v0[43];
  v6 = v0[38];
  v15 = v0[39];
  v7 = v0[37];
  v8 = v0[31];
  v22 = v0[32];
  v9 = v0[29];
  v21 = v0[30];
  v10 = v0[27];
  v11 = v0[28];

  (*(v11 + 8))(v9, v10);
  (*(v6 + 8))(v15, v7);
  (*(v5 + 8))(v18, v17);
  (*(v4 + 8))(v20, v19);
  outlined destroy of ResponseMode?(v23, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  (*(v8 + 8))(v22, v21);
  (*(v2 + 8))(v25, v24);
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_10_2();
  os_signpost(_:dso:log:name:signpostID:)();
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_14_1();

  OUTLINED_FUNCTION_3();

  return v12();
}

{
  OUTLINED_FUNCTION_41();
  v2 = *v1;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v5 = *(v2 + 936);
  *v4 = *v1;
  *(v3 + 944) = v0;

  v6 = *(v2 + 928);

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  v1 = *(v0 + 688);
  v3 = *(v0 + 192);
  v2 = *(v0 + 200);
  v4 = *(v2 + 104);
  outlined init with copy of DeviceState(v2 + 16, v0 + 24);
  *(v0 + 16) = v4;

  v5 = IntentResolutionRecord.intent.getter();
  v6 = [v5 isMe];

  if (v6)
  {
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = 0;
  }

  v25 = *(v0 + 970);
  v24 = *(v0 + 696);
  v28 = *(v0 + 672);
  v29 = *(v0 + 664);
  v27 = *(v0 + 648);
  v8 = *(v0 + 560);
  v9 = *(v0 + 552);
  v10 = *(v0 + 544);
  v11 = *(v0 + 536);
  v12 = *(v0 + 464);
  v23 = *(v0 + 472);
  v26 = *(v0 + 456);
  v13 = *(v0 + 200);
  v14 = *(v0 + 184);
  Views.buildViews(for:isMe:mockGlobals:)(v24, v7);
  outlined destroy of Views(v0 + 16);
  v15 = *(v13 + 112);
  (*(v9 + 16))(v11, v8, v10);
  OUTLINED_FUNCTION_50();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v10);
  v19 = type metadata accessor for AceOutput();
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0;
  *(v0 + 64) = 0u;
  v20 = MEMORY[0x277D5C1D8];
  v14[3] = v19;
  v14[4] = v20;
  __swift_allocate_boxed_opaque_existential_1(v14);
  static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of ResponseMode?(v0 + 64, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of ResponseMode?(v11, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(v12 + 8))(v23, v26);
  outlined destroy of ResponseMode?(v27, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  (*(v9 + 8))(v8, v10);
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_10_2();
  os_signpost(_:dso:log:name:signpostID:)();
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_14_1();

  OUTLINED_FUNCTION_3();

  return v21();
}

void GetContactHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)()
{
  v245 = v0;
  if (one-time initialization token for contactsLog != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 664);
  v2 = *(v0 + 656);
  v3 = static Signpost.contactsLog;
  *(v0 + 672) = static Signpost.contactsLog;
  v4 = v3;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_10_2();
  os_signpost(_:dso:log:name:signpostID:)();
  v5 = v1 + *(v2 + 20);
  *v5 = "MakeGetContactIntentHandledResponse";
  *(v5 + 8) = 35;
  *(v5 + 16) = 2;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v6 = type metadata accessor for Logger();
  *(v0 + 680) = __swift_project_value_buffer(v6, static Logger.siriContacts);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = OUTLINED_FUNCTION_30();
    *v9 = 0;
    _os_log_impl(&dword_26686A000, v7, v8, "#GetContactHandleIntentStrategy makeIntentHandledResponse", v9, 2u);
    OUTLINED_FUNCTION_6();
  }

  v10 = *(v0 + 192);

  *(v0 + 688) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVy0A15ContactsIntents010GetContactD0CAD0ijD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVy0A15ContactsIntents010GetContactD0CAD0ijD8ResponseCGMR);
  v11 = IntentResolutionRecord.intentResponse.getter();
  ContactAttributeIntent = outlined bridged method (ob) of @objc GetContactAttributeIntentResponse.contactIdentifiers.getter(v11);
  if (!ContactAttributeIntent)
  {
    goto LABEL_14;
  }

  if (!ContactAttributeIntent[2])
  {

LABEL_14:
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_31(v32))
    {
      *OUTLINED_FUNCTION_30() = 0;
      OUTLINED_FUNCTION_30_0();
      _os_log_impl(v33, v34, v35, v36, v37, 2u);
      OUTLINED_FUNCTION_6();
    }

    v38 = *(v0 + 664);

    type metadata accessor for ContactsError();
    OUTLINED_FUNCTION_12_1();
    lazy protocol witness table accessor for type GetContactHandleIntentStrategy and conformance GetContactHandleIntentStrategy(v39, v40);
    OUTLINED_FUNCTION_56();
    goto LABEL_23;
  }

  v13 = *(v0 + 192);
  v15 = ContactAttributeIntent[4];
  v14 = ContactAttributeIntent[5];

  v16 = IntentResolutionRecord.intent.getter();
  v17 = [v16 isMe];

  if (v17 && (v18 = [v17 BOOLValue], v17, v18))
  {
    v19 = *(v0 + 200);
    v20 = v19[11];
    __swift_project_boxed_opaque_existential_1(v19 + 7, v19[10]);
    v21 = *(v20 + 24);
    v22 = OUTLINED_FUNCTION_17_0();
    v24 = v23(v22);
    v25 = 1;
  }

  else
  {
    v26 = *(v0 + 200);
    v27 = v26[11];
    __swift_project_boxed_opaque_existential_1(v26 + 7, v26[10]);
    v28 = *(v27 + 8);
    v29 = OUTLINED_FUNCTION_39_0();
    v24 = v30(v29);
    v25 = 0;
  }

  *(v0 + 696) = v24;
  *(v0 + 969) = v25;
  if (!v24)
  {

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v244[0] = v46;
      *v45 = 136315138;
      v47 = OUTLINED_FUNCTION_39_0();
      *(v45 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, v49);
      OUTLINED_FUNCTION_30_0();
      _os_log_impl(v50, v51, v52, v53, v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v46);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    v55 = *(v0 + 664);
    type metadata accessor for ContactsError();
    OUTLINED_FUNCTION_12_1();
    lazy protocol witness table accessor for type GetContactHandleIntentStrategy and conformance GetContactHandleIntentStrategy(v56, v57);
    OUTLINED_FUNCTION_56();
    *v58 = v15;
    v58[1] = v14;
LABEL_23:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    static os_signpost_type_t.end.getter();
    OUTLINED_FUNCTION_10_2();
    os_signpost(_:dso:log:name:signpostID:)();
    v59 = *(v0 + 648);
    v60 = *(v0 + 640);
    v61 = *(v0 + 632);
    v62 = *(v0 + 624);
    v63 = *(v0 + 616);
    v64 = *(v0 + 608);
    v65 = *(v0 + 600);
    v66 = *(v0 + 584);
    v201 = *(v0 + 560);
    v202 = *(v0 + 536);
    v203 = *(v0 + 528);
    v204 = *(v0 + 520);
    v205 = *(v0 + 512);
    v206 = *(v0 + 504);
    v207 = *(v0 + 496);
    v208 = *(v0 + 488);
    v209 = *(v0 + 480);
    v210 = *(v0 + 472);
    v211 = *(v0 + 448);
    v212 = *(v0 + 424);
    v213 = *(v0 + 400);
    v214 = *(v0 + 392);
    v215 = *(v0 + 368);
    v216 = *(v0 + 344);
    v217 = *(v0 + 336);
    v220 = *(v0 + 312);
    v224 = *(v0 + 288);
    v226 = *(v0 + 280);
    v230 = *(v0 + 256);
    v234 = *(v0 + 232);
    v238 = *(v0 + 208);
    outlined destroy of Signpost.OpenSignpost(*(v0 + 664));

    OUTLINED_FUNCTION_3();
    goto LABEL_24;
  }

  type metadata accessor for SiriEnvironment();
  if (static SiriEnvironment.forCurrentTask.getter())
  {
    v41 = *(v0 + 648);
    SiriEnvironment.currentRequest.getter();

    CurrentRequest.responseMode.getter();

    v42 = 0;
  }

  else
  {
    v42 = 1;
  }

  v69 = *(v0 + 648);
  v70 = *(v0 + 640);
  v71 = *(v0 + 608);
  v72 = *(v0 + 592);
  v73 = *(v0 + 568);
  __swift_storeEnumTagSinglePayload(v69, v42, 1, v73);
  static ResponseMode.displayOnly.getter();
  OUTLINED_FUNCTION_50();
  __swift_storeEnumTagSinglePayload(v74, v75, v76, v73);
  v231 = v72;
  v77 = *(v72 + 48);
  outlined init with copy of ResponseMode?(v69, v71);
  outlined init with copy of ResponseMode?(v70, v71 + v77);
  OUTLINED_FUNCTION_57(v71, 1, v73);
  v242 = v24;
  if (v78)
  {
    v79 = *(v0 + 568);
    outlined destroy of ResponseMode?(*(v0 + 640), &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
    OUTLINED_FUNCTION_57(v71 + v77, 1, v79);
    if (!v78)
    {
      goto LABEL_35;
    }

    outlined destroy of ResponseMode?(*(v0 + 608), &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  }

  else
  {
    v80 = *(v0 + 568);
    outlined init with copy of ResponseMode?(*(v0 + 608), *(v0 + 632));
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v71 + v77, 1, v80);
    v82 = *(v0 + 632);
    if (EnumTagSinglePayload == 1)
    {
      v83 = *(v0 + 576);
      v84 = *(v0 + 568);
      outlined destroy of ResponseMode?(*(v0 + 640), &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
      (*(v83 + 8))(v82, v84);
LABEL_35:
      outlined destroy of ResponseMode?(*(v0 + 608), &_s13SiriUtilities12ResponseModeVSg_ADtMd, &_s13SiriUtilities12ResponseModeVSg_ADtMR);
LABEL_36:
      v85 = 1;
      goto LABEL_39;
    }

    v235 = *(v0 + 608);
    v86 = *(v0 + 584);
    v87 = *(v0 + 576);
    v88 = *(v0 + 568);
    v227 = *(v0 + 640);
    (*(v87 + 32))(v86, v71 + v77, v88);
    OUTLINED_FUNCTION_11_2();
    lazy protocol witness table accessor for type GetContactHandleIntentStrategy and conformance GetContactHandleIntentStrategy(v89, v90);
    v221 = dispatch thunk of static Equatable.== infix(_:_:)();
    v91 = *(v87 + 8);
    v91(v86, v88);
    outlined destroy of ResponseMode?(v227, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
    v92 = OUTLINED_FUNCTION_17_0();
    (v91)(v92);
    v24 = v242;
    outlined destroy of ResponseMode?(v235, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
    if ((v221 & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  v93 = *(v0 + 200);
  v94 = v93[6];
  __swift_project_boxed_opaque_existential_1(v93 + 2, v93[5]);
  OUTLINED_FUNCTION_17_0();
  v85 = dispatch thunk of DeviceState.isCarPlay.getter();
LABEL_39:
  v228 = v85;
  *(v0 + 970) = v85 & 1;
  v95 = *(v0 + 648);
  v96 = *(v0 + 624);
  v97 = *(v0 + 600);
  v98 = *(v0 + 568);
  v99 = *(v0 + 200);
  static ContactsContextProvider.handleGetContact(contact:needsSDA:)(v24, v85 & 1, *(v0 + 560));
  ContactHandleIntent = GetContactHandleIntentStrategy.shouldAuthStateAllowPunchout()();
  static ResponseMode.voiceOnly.getter();
  OUTLINED_FUNCTION_50();
  __swift_storeEnumTagSinglePayload(v100, v101, v102, v98);
  v103 = *(v231 + 48);
  outlined init with copy of ResponseMode?(v95, v97);
  outlined init with copy of ResponseMode?(v96, v97 + v103);
  OUTLINED_FUNCTION_57(v97, 1, v98);
  if (v78)
  {
    v104 = *(v0 + 568);
    outlined destroy of ResponseMode?(*(v0 + 624), &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
    OUTLINED_FUNCTION_57(v97 + v103, 1, v104);
    if (v78)
    {
      outlined destroy of ResponseMode?(*(v0 + 600), &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
      v105 = 0;
      v106 = v242;
      v107 = ContactHandleIntent;
      goto LABEL_48;
    }

    goto LABEL_46;
  }

  v108 = *(v0 + 568);
  outlined init with copy of ResponseMode?(*(v0 + 600), *(v0 + 616));
  v109 = __swift_getEnumTagSinglePayload(v97 + v103, 1, v108);
  v110 = *(v0 + 616);
  if (v109 == 1)
  {
    v111 = *(v0 + 576);
    v112 = *(v0 + 568);
    outlined destroy of ResponseMode?(*(v0 + 624), &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
    (*(v111 + 8))(v110, v112);
LABEL_46:
    outlined destroy of ResponseMode?(*(v0 + 600), &_s13SiriUtilities12ResponseModeVSg_ADtMd, &_s13SiriUtilities12ResponseModeVSg_ADtMR);
    v106 = v242;
    v107 = ContactHandleIntent;
LABEL_47:
    v113 = *(v0 + 200);
    v114 = v113[6];
    __swift_project_boxed_opaque_existential_1(v113 + 2, v113[5]);
    OUTLINED_FUNCTION_37_0();
    v105 = DeviceState.supportsCompactView.getter();
    goto LABEL_48;
  }

  v232 = *(v0 + 600);
  v183 = *(v0 + 584);
  v184 = *(v0 + 576);
  v185 = *(v0 + 568);
  v222 = *(v0 + 624);
  (*(v184 + 32))(v183, v97 + v103, v185);
  OUTLINED_FUNCTION_11_2();
  lazy protocol witness table accessor for type GetContactHandleIntentStrategy and conformance GetContactHandleIntentStrategy(v186, v187);
  v218 = dispatch thunk of static Equatable.== infix(_:_:)();
  v188 = *(v184 + 8);
  v188(v183, v185);
  outlined destroy of ResponseMode?(v222, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  v188(v110, v185);
  outlined destroy of ResponseMode?(v232, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  v106 = v242;
  v107 = ContactHandleIntent;
  if ((v218 & 1) == 0)
  {
    goto LABEL_47;
  }

  v105 = 0;
LABEL_48:
  v115 = Logger.logObject.getter();
  v116 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_31(v116))
  {
    v117 = swift_slowAlloc();
    *v117 = 67109632;
    *(v117 + 4) = v228 & 1;
    *(v117 + 8) = 1024;
    *(v117 + 10) = v105 & 1;
    *(v117 + 14) = 1024;
    *(v117 + 16) = v107;
    _os_log_impl(&dword_26686A000, v115, v116, "#GetContactHandleIntentStrategy shouldPrompt: %{BOOL}d, shouldDeviceStateAllowPunchout: %{BOOL}d, shouldAuthStateAllowPunchout: %{BOOL}d", v117, 0x14u);
    OUTLINED_FUNCTION_6();
  }

  if ((v105 & v107 & 1) == 0)
  {

LABEL_60:
    v161 = *(v0 + 200);
    if (specialized ContactsStrategy.isSmartEnabled.getter(v121))
    {
      v162 = Logger.logObject.getter();
      v163 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_31(v163))
      {
        *OUTLINED_FUNCTION_30() = 0;
        OUTLINED_FUNCTION_23_1(&dword_26686A000, v164, v165, "#GetContactHandleIntentStrategy makeIntentHandledResponse constructing SMART snippet");
        OUTLINED_FUNCTION_6();
      }

      v166 = *(v0 + 528);

      type metadata accessor for ContactsLabelCATsModern();
      static CATOption.defaultMode.getter();
      *(v0 + 704) = CATWrapperSimple.__allocating_init(options:globals:)();
      *(v0 + 712) = CNContact.toDialogPerson(useConversationalName:)();
      v167 = swift_task_alloc();
      *(v0 + 720) = v167;
      *v167 = v0;
      v167[1] = GetContactHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
      OUTLINED_FUNCTION_53();

      ContactsLabelCATsModern.quickActionButtonLabels(contact:)(v168);
    }

    else
    {
      v170 = *(v0 + 368);
      v171 = *(v0 + 200);
      v172 = v171[12];
      type metadata accessor for DialogPerson();
      v173 = v171[6];
      __swift_project_boxed_opaque_existential_1(v171 + 2, v171[5]);
      v174 = v106;
      OUTLINED_FUNCTION_46();
      dispatch thunk of DeviceState.siriLocale.getter();
      *(v0 + 928) = DialogPerson.init(from:useConversationalName:locale:mockGlobals:)(v174, 0, v170, 0);
      swift_task_alloc();
      OUTLINED_FUNCTION_36_0();
      *(v0 + 936) = v175;
      *v175 = v176;
      v175[1] = GetContactHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
      v177 = *(v0 + 472);
      OUTLINED_FUNCTION_53();

      GetContactCATs.intentHandledResponse(isMe:requestedContact:shouldPrompt:)(v178, v179, v180, v181);
    }

    return;
  }

  v118 = *(v0 + 200) + 184;
  OUTLINED_FUNCTION_39_0();
  AppUtil.buildPunchoutFor(contactIdentifier:)();
  v120 = v119;

  if (!v120)
  {
    goto LABEL_60;
  }

  v122 = Logger.logObject.getter();
  v123 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_31(v123))
  {
    *OUTLINED_FUNCTION_30() = 0;
    OUTLINED_FUNCTION_30_0();
    _os_log_impl(v124, v125, v126, v127, v128, 2u);
    OUTLINED_FUNCTION_6();
  }

  v129 = *(v0 + 200);

  v130 = v129[32];
  __swift_project_boxed_opaque_existential_1(v129 + 28, v129[31]);
  type metadata accessor for SiriKitEvent();
  static SiriKitEvent.uufrReady()();
  dispatch thunk of SiriKitEventSending.send(_:)();

  v131 = v120;
  v132 = Logger.logObject.getter();
  v133 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v132, v133))
  {
    v134 = swift_slowAlloc();
    v135 = swift_slowAlloc();
    v244[0] = v135;
    *v134 = 136315138;
    v239 = v131;
    v136 = [v131 description];
    v137 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v139 = v138;

    v140 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v137, v139, v244);

    *(v134 + 4) = v140;
    v131 = v239;
    _os_log_impl(&dword_26686A000, v132, v133, "#GetContactHandleIntentStrategy Constructed intent handled response for iOS, returning punchout for contact: %s.", v134, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v135);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v141 = swift_allocObject();
  *(v141 + 16) = xmmword_266966ED0;
  v142 = *MEMORY[0x277D48B28];
  v143 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v144 = MEMORY[0x277D837D0];
  *(v141 + 56) = MEMORY[0x277D837D0];
  *(v141 + 32) = v143;
  *(v141 + 40) = v145;
  v146 = *MEMORY[0x277D48B20];
  v147 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v141 + 88) = v144;
  *(v141 + 64) = v147;
  *(v141 + 72) = v148;
  v149 = OUTLINED_FUNCTION_49();
  outlined bridged method (mbnn) of @objc SAUIAppPunchOut.launchOptions.setter(v149, v150);
  v151 = v131;
  v152 = Logger.logObject.getter();
  v153 = static os_log_type_t.debug.getter();
  if (!OUTLINED_FUNCTION_31(v153))
  {

    goto LABEL_72;
  }

  v154 = swift_slowAlloc();
  v155 = swift_slowAlloc();
  v244[0] = v155;
  *v154 = 136315138;
  v156 = outlined bridged method (pb) of @objc SAUIAppPunchOut.launchOptions.getter(v151);

  if (v156)
  {
    v157 = MEMORY[0x26D5E2610](v156, MEMORY[0x277D84F70] + 8);
    v159 = v158;

    v160 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v157, v159, v244);

    *(v154 + 4) = v160;
    _os_log_impl(&dword_26686A000, v152, v153, "#GetContactHandleIntentStrategy added RetainSiri and RemoveResponseUI launchOptions to appPunchOut: %s", v154, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v155);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();

LABEL_72:
    v240 = *(v0 + 664);
    v189 = *(v0 + 648);
    v190 = *(v0 + 560);
    v191 = *(v0 + 552);
    v192 = *(v0 + 544);
    v193 = *(v0 + 536);
    v194 = *(v0 + 184);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v195 = swift_allocObject();
    *(v195 + 16) = xmmword_266966A40;
    *(v195 + 32) = v151;
    memset(v244, 0, 40);
    (*(v191 + 16))(v193, v190, v192);
    OUTLINED_FUNCTION_50();
    __swift_storeEnumTagSinglePayload(v196, v197, v198, v192);
    v199 = type metadata accessor for AceOutput();
    v200 = MEMORY[0x277D5C1D8];
    v194[3] = v199;
    v194[4] = v200;
    __swift_allocate_boxed_opaque_existential_1(v194);
    AceOutput.init(commands:flowActivity:nlContextUpdate:)();

    outlined destroy of ResponseMode?(v189, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
    (*(v191 + 8))(v190, v192);
    static os_signpost_type_t.end.getter();
    OUTLINED_FUNCTION_10_2();
    os_signpost(_:dso:log:name:signpostID:)();
    OUTLINED_FUNCTION_1_3();
    v219 = *(v0 + 344);
    v223 = *(v0 + 336);
    v225 = *(v0 + 312);
    v229 = *(v0 + 288);
    v233 = *(v0 + 280);
    v237 = *(v0 + 256);
    v241 = *(v0 + 232);
    v243 = *(v0 + 208);
    outlined destroy of Signpost.OpenSignpost(v189);

    OUTLINED_FUNCTION_3();
LABEL_24:
    OUTLINED_FUNCTION_53();

    __asm { BRAA            X1, X16 }
  }

  __break(1u);
}

uint64_t GetContactHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_28_0();
  v41 = v39[87];
  OUTLINED_FUNCTION_4_1();
  v42 = v39[69];
  v43 = v39[68];

  outlined destroy of ResponseMode?(v38, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  (*(v42 + 8))(v40, v43);
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_0_1(v39[92]);

  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_20_1();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_28_0();
  v40 = v39[91];
  v41 = v39[87];
  OUTLINED_FUNCTION_4_1();
  v42 = v39[69];
  v43 = v39[68];

  outlined destroy of ResponseMode?(v38, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  v44 = OUTLINED_FUNCTION_31_0();
  v45(v44);
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_0_1(v39[98]);

  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_20_1();

  return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_28_0();
  v40 = v39[91];
  v41 = v39[87];
  OUTLINED_FUNCTION_4_1();
  v42 = v39[69];
  v43 = v39[68];

  outlined destroy of ResponseMode?(v38, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  v44 = OUTLINED_FUNCTION_31_0();
  v45(v44);
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_0_1(v39[104]);

  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_20_1();

  return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_28_0();
  v40 = v39[91];
  v41 = v39[87];
  OUTLINED_FUNCTION_4_1();
  v42 = v39[69];
  v43 = v39[68];

  outlined destroy of ResponseMode?(v38, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  v44 = OUTLINED_FUNCTION_31_0();
  v45(v44);
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_0_1(v39[107]);

  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_20_1();

  return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_28_0();
  v39 = v38[91];
  v40 = v38[87];
  OUTLINED_FUNCTION_26_0();
  v41 = v38[69];
  v64 = v42;
  v65 = v38[68];
  v43 = v38[48];
  v60 = v38[47];
  v61 = v38[50];
  v59 = v38[43];
  v45 = v38[40];
  v44 = v38[41];
  v47 = v38[38];
  v46 = v38[39];
  v48 = v38[37];
  v49 = v38[31];
  v62 = v38[30];
  v63 = v38[32];

  (*(v47 + 8))(v46, v48);
  (*(v44 + 8))(v59, v45);
  (*(v43 + 8))(v61, v60);
  outlined destroy of ResponseMode?(v64, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  (*(v49 + 8))(v63, v62);
  (*(v41 + 8))(a32, v65);
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_10_2();
  os_signpost(_:dso:log:name:signpostID:)();
  OUTLINED_FUNCTION_0_1(v38[112]);

  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_20_1();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, v59, v60, v61, v62, v63, v64, v65, a32, a33, a34, a35, a36, a37, a38);
}

{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_28_0();
  v41 = v39[87];
  OUTLINED_FUNCTION_4_1();
  v42 = v39[69];
  v43 = v39[68];

  outlined destroy of ResponseMode?(v38, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  (*(v42 + 8))(v40, v43);
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_0_1(v39[118]);

  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_20_1();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t ContactsLabelCATContainer.init(labels:contact:labelMapper:siriLocale:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v128 = a4;
  v129 = a5;
  v130 = a3;
  v117 = a2;
  v8 = [a2 emailAddresses];
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v120 = v9;
  v10 = specialized Array._getCount()(v9);
  v110 = a6;
  v113 = a1;
  if (v10)
  {
    if (v10 < 1)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v11 = 0;
    LOBYTE(v12) = MEMORY[0x277D84F98];
    OUTLINED_FUNCTION_29_0();
    while (1)
    {
      if (v119)
      {
        v21 = MEMORY[0x26D5E29D0](v11, v120);
      }

      else
      {
        v21 = OUTLINED_FUNCTION_41_0(v13, v14, v15, v16, v17, v18, v19, v20, v110, v113, v116, v117, v118, 0, v120);
      }

      v22 = v21;
      v23 = [v21 label];
      if (v23)
      {
        v24 = v23;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v25 = OUTLINED_FUNCTION_32_0();
      LabelMapper.localizedLabel(handleLabel:localeString:type:)(v25, v26, v27, v28, 1, v130);
      OUTLINED_FUNCTION_43_0();
      v123 = v22;
      v29 = [v22 identifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_35_0();
      if (__OFADD__(v31, v32))
      {
        break;
      }

      v33 = v30;
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVyS2SGMd, &_ss17_NativeDictionaryVyS2SGMR);
      if (OUTLINED_FUNCTION_55(v34, v35, v36, v37, v38, v39, v40, v41, v111, v114, v116, v117, v118, v119, v120, v123, v128, v129, v130, v12))
      {
        OUTLINED_FUNCTION_42_0();
        if ((v33 & 1) != (v42 & 1))
        {
          goto LABEL_63;
        }
      }

      v12 = *v131;
      if (v33)
      {
        OUTLINED_FUNCTION_18_1();
      }

      else
      {
        OUTLINED_FUNCTION_2_2();
        if (v44)
        {
          goto LABEL_57;
        }

        *(*v131 + 16) = v43;
      }

      ++v11;
      v13 = v118;
      if (v118 == v11)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_55;
  }

  v12 = MEMORY[0x277D84F98];
LABEL_19:

  v45 = [v117 phoneNumbers];
  v46 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v121 = v46;
  v47 = specialized Array._getCount()(v46);
  if (v47)
  {
    if (v47 < 1)
    {
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v48 = 0;
    OUTLINED_FUNCTION_29_0();
    while (1)
    {
      if (v119)
      {
        v57 = MEMORY[0x26D5E29D0](v48, v121);
      }

      else
      {
        v57 = OUTLINED_FUNCTION_41_0(v49, v50, v51, v52, v53, v54, v55, v56, v110, v113, v116, v117, v118, 0, v121);
      }

      v58 = v57;
      v59 = [v57 label];
      if (v59)
      {
        v60 = v59;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v61 = OUTLINED_FUNCTION_32_0();
      LabelMapper.localizedLabel(handleLabel:localeString:type:)(v61, v62, v63, v64, 2, v130);
      OUTLINED_FUNCTION_43_0();
      v125 = v58;
      v65 = [v58 identifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_35_0();
      if (__OFADD__(v67, v68))
      {
        break;
      }

      v69 = v66;
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVyS2SGMd, &_ss17_NativeDictionaryVyS2SGMR);
      if (OUTLINED_FUNCTION_55(v70, v71, v72, v73, v74, v75, v76, v77, v112, v115, v116, v117, v118, v119, v121, v125, v128, v129, v130, v12))
      {
        OUTLINED_FUNCTION_42_0();
        if ((v69 & 1) != (v78 & 1))
        {
          goto LABEL_63;
        }
      }

      v12 = *v132;
      if (v69)
      {
        OUTLINED_FUNCTION_18_1();
      }

      else
      {
        OUTLINED_FUNCTION_2_2();
        if (v44)
        {
          goto LABEL_58;
        }

        *(*v132 + 16) = v79;
      }

      if (v118 == ++v48)
      {
        goto LABEL_35;
      }
    }

LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

LABEL_35:

  v80 = [v117 postalAddresses];
  v81 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v122 = v81;
  v82 = specialized Array._getCount()(v81);
  if (!v82)
  {
LABEL_51:

    ContactsLabelCATContainer.init(labels:localizedAttributeLabels:)();
  }

  if (v82 >= 1)
  {
    v83 = 0;
    OUTLINED_FUNCTION_29_0();
    while (1)
    {
      if (v119)
      {
        v92 = MEMORY[0x26D5E29D0](v83, v122);
      }

      else
      {
        v92 = OUTLINED_FUNCTION_41_0(v84, v85, v86, v87, v88, v89, v90, v91, v110, v113, v116, v117, v118, 0, v122);
      }

      v93 = v92;
      v94 = [v92 label];
      if (v94)
      {
        v95 = v94;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v96 = OUTLINED_FUNCTION_32_0();
      LabelMapper.localizedLabel(handleLabel:localeString:type:)(v96, v97, v98, v99, 3, v130);
      OUTLINED_FUNCTION_43_0();
      v127 = v93;
      v100 = [v93 identifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_35_0();
      v105 = v103 + v104;
      if (__OFADD__(v103, v104))
      {
        break;
      }

      v106 = v102;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVyS2SGMd, &_ss17_NativeDictionaryVyS2SGMR);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v105))
      {
        OUTLINED_FUNCTION_42_0();
        if ((v106 & 1) != (v107 & 1))
        {
          goto LABEL_63;
        }
      }

      if (v106)
      {
        OUTLINED_FUNCTION_18_1();
      }

      else
      {
        OUTLINED_FUNCTION_2_2();
        if (v44)
        {
          goto LABEL_59;
        }

        *(v12 + 16) = v108;
      }

      ++v83;
      v84 = v118;
      if (v118 == v83)
      {
        goto LABEL_51;
      }
    }

LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

LABEL_62:
  __break(1u);
LABEL_63:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t closure #1 in GetContactHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v11 - v7;
  OutputGenerationManifest.canUseServerTTS.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  v9 = type metadata accessor for NLContextUpdate();
  (*(*(v9 - 8) + 16))(v8, a4, v9);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
  OutputGenerationManifest.nlContextUpdate.setter();
  ContactsSnippetPluginModel.responseViewID.getter();
  return OutputGenerationManifest.responseViewId.setter();
}

Swift::Bool __swiftcall GetContactHandleIntentStrategy.shouldAuthStateAllowPunchout()()
{
  v1 = type metadata accessor for UnlockDevicePolicy();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  static UnlockDevicePolicy.requiringDeviceUnlock.getter();
  v7 = dispatch thunk of DeviceState.isAuthenticated(for:)();
  (*(v2 + 8))(v5, v1);
  return v7 & 1;
}

uint64_t GetContactHandleIntentStrategy.__deallocating_deinit()
{
  v0 = specialized ContactsStrategy.deinit();

  outlined destroy of AppUtil(v1 + 184);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 224));

  return MEMORY[0x2821FE8D8](v0, 264, 7);
}

uint64_t type metadata accessor for GetContactHandleIntentStrategy()
{
  result = type metadata singleton initialization cache for GetContactHandleIntentStrategy;
  if (!type metadata singleton initialization cache for GetContactHandleIntentStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:) in conformance GetContactHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3C8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  ContactHandleIntentStrategy = type metadata accessor for GetContactHandleIntentStrategy();
  *v9 = v4;
  v9[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return MEMORY[0x2821B9C68](a1, a2, ContactHandleIntentStrategy, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3D0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  ContactHandleIntentStrategy = type metadata accessor for GetContactHandleIntentStrategy();
  *v9 = v4;
  v9[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return MEMORY[0x2821B9C70](a1, a2, ContactHandleIntentStrategy, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:) in conformance GetContactHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3B0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  ContactHandleIntentStrategy = type metadata accessor for GetContactHandleIntentStrategy();
  *v9 = v4;
  v9[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return MEMORY[0x2821B9C48](a1, a2, ContactHandleIntentStrategy, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeIntentHandledResponse(rchRecord:) in conformance GetContactHandleIntentStrategy()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return GetContactHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)();
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:) in conformance GetContactHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3C0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  ContactHandleIntentStrategy = type metadata accessor for GetContactHandleIntentStrategy();
  *v9 = v4;
  v9[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return MEMORY[0x2821B9C60](a1, a2, ContactHandleIntentStrategy, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:) in conformance GetContactHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3B8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  ContactHandleIntentStrategy = type metadata accessor for GetContactHandleIntentStrategy();
  *v9 = v4;
  v9[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return MEMORY[0x2821B9C58](a1, a2, ContactHandleIntentStrategy, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:) in conformance GetContactHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3A0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  ContactHandleIntentStrategy = type metadata accessor for GetContactHandleIntentStrategy();
  *v9 = v4;
  v9[1] = protocol witness for Flow.execute() in conformance ContactsUnsupportedFlow;

  return MEMORY[0x2821B9C38](a1, a2, ContactHandleIntentStrategy, a4);
}

uint64_t protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance GetContactHandleIntentStrategy()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for Flow.onAsync(input:) in conformance ContactsUnsupportedFlow;

  return GetContactHandleIntentStrategy.makeIntentExecutionBehavior(app:intent:)();
}

uint64_t outlined init with copy of ResponseMode?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t type metadata accessor for CNContact()
{
  result = lazy cache variable for type metadata for CNContact;
  if (!lazy cache variable for type metadata for CNContact)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CNContact);
  }

  return result;
}

uint64_t outlined destroy of ResponseMode?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_52(v4);
  (*(v5 + 8))(a1);
  return a1;
}

void outlined bridged method (mbnn) of @objc SAUIAppPunchOut.launchOptions.setter(uint64_t a1, void *a2)
{
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setLaunchOptions_];
}

uint64_t outlined bridged method (pb) of @objc SAUIAppPunchOut.launchOptions.getter(void *a1)
{
  v1 = [a1 launchOptions];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t lazy protocol witness table accessor for type GetContactHandleIntentStrategy and conformance GetContactHandleIntentStrategy(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_1@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 88) = a1;
  v4 = v1[83];
  v5 = v1[81];
  v6 = v1[80];
  v7 = v1[79];
  v8 = v1[78];
  v9 = v1[77];
  v10 = v1[76];
  v11 = v1[75];
  v12 = v1[73];
  v18 = v1[70];
  v19 = v1[67];
  v20 = v1[66];
  v21 = v1[65];
  v22 = v1[64];
  v23 = v1[63];
  v24 = v1[62];
  v25 = v1[61];
  v26 = v1[60];
  v27 = v1[59];
  v28 = v1[56];
  v29 = v1[53];
  v30 = v1[50];
  v31 = v1[49];
  v32 = v1[46];
  v33 = v1[43];
  v34 = v1[42];
  v14 = v1[35];
  v13 = v1[36];
  *(v2 - 136) = v1[39];
  *(v2 - 128) = v13;
  v15 = v1[32];
  *(v2 - 120) = v14;
  *(v2 - 112) = v15;
  v16 = v1[26];
  *(v2 - 104) = v1[29];
  *(v2 - 96) = v16;

  return outlined destroy of Signpost.OpenSignpost(v4);
}

void OUTLINED_FUNCTION_1_3()
{
  v1 = v0[83];
  v2 = v0[81];
  v3 = v0[80];
  v4 = v0[79];
  v5 = v0[78];
  v6 = v0[77];
  v7 = v0[76];
  v8 = v0[75];
  v9 = v0[73];
  v11 = v0[70];
  v12 = v0[67];
  v13 = v0[66];
  v14 = v0[65];
  v15 = v0[64];
  v16 = v0[63];
  v17 = v0[62];
  v18 = v0[61];
  v19 = v0[60];
  v20 = v0[59];
  v21 = v0[56];
  v22 = v0[53];
  v23 = v0[50];
  v24 = v0[49];
  v10 = v0[46];
}

void OUTLINED_FUNCTION_2_2()
{
  v1[(v4 >> 6) + 8] |= 1 << v4;
  v6 = (v1[6] + 16 * v4);
  *v6 = v5;
  v6[1] = v0;
  v7 = (v1[7] + 16 * v4);
  *v7 = v2;
  v7[1] = v3;
  v8 = v1[2];
}

void OUTLINED_FUNCTION_4_1()
{
  v1 = v0[84];
  v2 = v0[83];
  v3 = v0[81];
  v4 = v0[70];
}

uint64_t OUTLINED_FUNCTION_7_2()
{
  result = v0 + 8;
  v3 = *(v0 + 8);
  v4 = *(v1 - 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_2(uint64_t a1)
{
  *(a1 + 8) = GetContactHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  v2 = *(v1 + 970);
  return *(v1 + 969);
}

uint64_t OUTLINED_FUNCTION_9_1()
{

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t OUTLINED_FUNCTION_14_1()
{
  v9 = v0[43];
  v10 = v0[42];
  v5 = v0[35];
  v4 = v0[36];
  *(v2 - 128) = v0[39];
  *(v2 - 120) = v4;
  v6 = v0[32];
  *(v2 - 112) = v5;
  *(v2 - 104) = v6;
  v7 = v0[26];
  *(v2 - 96) = v0[29];
  *(v2 - 88) = v7;

  return outlined destroy of Signpost.OpenSignpost(v1);
}

uint64_t OUTLINED_FUNCTION_18_1()
{
  v5 = (*(v0 + 56) + 16 * v3);
  v6 = v5[1];
  *v5 = v1;
  v5[1] = v2;
}

void OUTLINED_FUNCTION_23_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

void OUTLINED_FUNCTION_26_0()
{
  v2 = v0[83];
  *(v1 - 96) = v0[84];
  *(v1 - 88) = v2;
  v3 = v0[81];
  *(v1 - 104) = v0[70];
}

void OUTLINED_FUNCTION_34_0()
{
  v1 = v0[55];
  v2 = v0[56];
  v3 = v0[53];
  v4 = v0[54];
  v5 = v0[51];
  v6 = v0[52];
}

id OUTLINED_FUNCTION_41_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v17 = *(a15 + 8 * v15 + 32);

  return v17;
}

unint64_t OUTLINED_FUNCTION_42_0()
{

  return specialized __RawDictionaryStorage.find<A>(_:)();
}

uint64_t OUTLINED_FUNCTION_43_0()
{
}

uint64_t OUTLINED_FUNCTION_45()
{

  return swift_task_alloc();
}

BOOL OUTLINED_FUNCTION_55(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v21, v20);
}

uint64_t OUTLINED_FUNCTION_56()
{

  return swift_allocError();
}

uint64_t DateComponents.setImplicitYear(from:now:qualifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v100 = a3;
  v105 = a2;
  v5 = type metadata accessor for TerminalElement.Qualifier();
  v6 = OUTLINED_FUNCTION_1_0(v5);
  v101 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v96 = &v90[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementV9QualifierOSg_AFtMd, &_s12SiriOntology15TerminalElementV9QualifierOSg_AFtMR);
  v11 = *(*(v98 - 8) + 64);
  MEMORY[0x28223BE20](v98);
  OUTLINED_FUNCTION_1_4();
  v97 = v12 - v13;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v14);
  v16 = &v90[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementV9QualifierOSgMd, &_s12SiriOntology15TerminalElementV9QualifierOSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  OUTLINED_FUNCTION_1_4();
  v95 = v19 - v20;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v21);
  v99 = &v90[-v22];
  OUTLINED_FUNCTION_16();
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v90[-v25];
  MEMORY[0x28223BE20](v24);
  v28 = &v90[-v27];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  OUTLINED_FUNCTION_1_4();
  v33 = v31 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = &v90[-v35];
  v37 = type metadata accessor for Date();
  v38 = OUTLINED_FUNCTION_1_0(v37);
  v103 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_1_4();
  v102 = (v42 - v43);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v44);
  v104 = &v90[-v45];
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementV9DayOfWeekOSgMd, _s12SiriOntology15TerminalElementV9DayOfWeekOSgMR);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46 - 8);
  v49 = &v90[-v48];
  result = TerminalElement.Date.year.getter();
  if (v51)
  {
    TerminalElement.Date.dayOfWeek.getter();
    v52 = type metadata accessor for TerminalElement.DayOfWeek();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v49, 1, v52);
    result = outlined destroy of UsoEntity_common_Person.DefinedValues?(v49, &_s12SiriOntology15TerminalElementV9DayOfWeekOSgMd, _s12SiriOntology15TerminalElementV9DayOfWeekOSgMR);
    if (EnumTagSinglePayload == 1)
    {
      DateComponents.day.getter();
      if (v54)
      {
        DateComponents.day.getter();
        DateComponents.day.setter();
      }

      DateComponents.date.getter();
      if (__swift_getEnumTagSinglePayload(v36, 1, v37) == 1)
      {
        v55 = v36;
        return outlined destroy of UsoEntity_common_Person.DefinedValues?(v55, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }

      v94 = v5;
      v56 = v103;
      v57 = v4;
      v58 = v37;
      v59 = v104;
      v60 = v36;
      v61 = *(v103 + 32);
      v61(v104, v60, v58);
      v93 = v57;
      DateComponents.date.getter();
      if (__swift_getEnumTagSinglePayload(v33, 1, v58) == 1)
      {
        (*(v56 + 8))(v59, v58);
        v55 = v33;
        return outlined destroy of UsoEntity_common_Person.DefinedValues?(v55, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }

      v61(v102, v33, v58);
      v62 = *(v101 + 104);
      v63 = v94;
      v62(v28, *MEMORY[0x277D5E648], v94);
      __swift_storeEnumTagSinglePayload(v28, 0, 1, v63);
      v64 = v98;
      v65 = *(v98 + 48);
      v66 = v100;
      outlined init with copy of TerminalElement.Qualifier?(v100, v16);
      outlined init with copy of TerminalElement.Qualifier?(v28, &v16[v65]);
      OUTLINED_FUNCTION_0_2(v16);
      v92 = v58;
      if (v69)
      {
        outlined destroy of UsoEntity_common_Person.DefinedValues?(v28, &_s12SiriOntology15TerminalElementV9QualifierOSgMd, &_s12SiriOntology15TerminalElementV9QualifierOSgMR);
        OUTLINED_FUNCTION_0_2(&v16[v65]);
        if (v69)
        {
          outlined destroy of UsoEntity_common_Person.DefinedValues?(v16, &_s12SiriOntology15TerminalElementV9QualifierOSgMd, &_s12SiriOntology15TerminalElementV9QualifierOSgMR);
          v67 = v104;
          v68 = v99;
LABEL_20:
          if (static Date.> infix(_:_:)())
          {
            result = DateComponents.year.getter();
            if (v73)
            {
LABEL_48:
              __break(1u);
              goto LABEL_49;
            }

            v74 = __OFSUB__(result--, 1);
            if (v74)
            {
              __break(1u);
LABEL_45:
              __break(1u);
LABEL_46:
              __break(1u);
LABEL_47:
              __break(1u);
              goto LABEL_48;
            }

            OUTLINED_FUNCTION_4_2();
            DateComponents.year.setter();
            result = DateComponents.year.getter();
            if (v75)
            {
LABEL_50:
              __break(1u);
              goto LABEL_51;
            }

            v74 = __OFSUB__(result--, 1);
            if (v74)
            {
              goto LABEL_46;
            }

            OUTLINED_FUNCTION_4_2();
            DateComponents.yearForWeekOfYear.setter();
          }

LABEL_26:
          v62(v68, *MEMORY[0x277D5E640], v63);
          __swift_storeEnumTagSinglePayload(v68, 0, 1, v63);
          v76 = *(v64 + 48);
          v77 = v97;
          outlined init with copy of TerminalElement.Qualifier?(v66, v97);
          outlined init with copy of TerminalElement.Qualifier?(v68, v77 + v76);
          OUTLINED_FUNCTION_0_2(v77);
          if (v69)
          {
            outlined destroy of UsoEntity_common_Person.DefinedValues?(v68, &_s12SiriOntology15TerminalElementV9QualifierOSgMd, &_s12SiriOntology15TerminalElementV9QualifierOSgMR);
            OUTLINED_FUNCTION_0_2(v77 + v76);
            if (v69)
            {
              outlined destroy of UsoEntity_common_Person.DefinedValues?(v77, &_s12SiriOntology15TerminalElementV9QualifierOSgMd, &_s12SiriOntology15TerminalElementV9QualifierOSgMR);
              v78 = v103;
              goto LABEL_36;
            }
          }

          else
          {
            v79 = v95;
            outlined init with copy of TerminalElement.Qualifier?(v77, v95);
            OUTLINED_FUNCTION_0_2(v77 + v76);
            if (!v80)
            {
              v81 = v68;
              v82 = v101;
              v83 = v96;
              (*(v101 + 32))(v96, v77 + v76, v63);
              lazy protocol witness table accessor for type TerminalElement.Qualifier and conformance TerminalElement.Qualifier();
              v84 = dispatch thunk of static Equatable.== infix(_:_:)();
              v85 = *(v82 + 8);
              v85(v83, v63);
              outlined destroy of UsoEntity_common_Person.DefinedValues?(v81, &_s12SiriOntology15TerminalElementV9QualifierOSgMd, &_s12SiriOntology15TerminalElementV9QualifierOSgMR);
              v85(v79, v63);
              outlined destroy of UsoEntity_common_Person.DefinedValues?(v77, &_s12SiriOntology15TerminalElementV9QualifierOSgMd, &_s12SiriOntology15TerminalElementV9QualifierOSgMR);
              v78 = v103;
              if ((v84 & 1) == 0)
              {
                goto LABEL_42;
              }

LABEL_36:
              if (static Date.< infix(_:_:)())
              {
                result = DateComponents.year.getter();
                if (v86)
                {
LABEL_49:
                  __break(1u);
                  goto LABEL_50;
                }

                v74 = __OFADD__(result++, 1);
                if (!v74)
                {
                  OUTLINED_FUNCTION_4_2();
                  DateComponents.year.setter();
                  result = DateComponents.year.getter();
                  if (v87)
                  {
LABEL_51:
                    __break(1u);
                    return result;
                  }

                  v74 = __OFADD__(result++, 1);
                  if (!v74)
                  {
                    OUTLINED_FUNCTION_4_2();
                    DateComponents.yearForWeekOfYear.setter();
                    goto LABEL_42;
                  }

                  goto LABEL_47;
                }

                goto LABEL_45;
              }

LABEL_42:
              v88 = *(v78 + 8);
              v89 = v92;
              v88(v102, v92);
              return (v88)(v67, v89);
            }

            outlined destroy of UsoEntity_common_Person.DefinedValues?(v68, &_s12SiriOntology15TerminalElementV9QualifierOSgMd, &_s12SiriOntology15TerminalElementV9QualifierOSgMR);
            (*(v101 + 8))(v79, v63);
          }

          outlined destroy of UsoEntity_common_Person.DefinedValues?(v77, &_s12SiriOntology15TerminalElementV9QualifierOSg_AFtMd, &_s12SiriOntology15TerminalElementV9QualifierOSg_AFtMR);
          v78 = v103;
          goto LABEL_42;
        }
      }

      else
      {
        outlined init with copy of TerminalElement.Qualifier?(v16, v26);
        OUTLINED_FUNCTION_0_2(&v16[v65]);
        if (!v69)
        {
          v70 = v101;
          v71 = v96;
          (*(v101 + 32))(v96, &v16[v65], v63);
          lazy protocol witness table accessor for type TerminalElement.Qualifier and conformance TerminalElement.Qualifier();
          v91 = dispatch thunk of static Equatable.== infix(_:_:)();
          v72 = *(v70 + 8);
          v72(v71, v63);
          outlined destroy of UsoEntity_common_Person.DefinedValues?(v28, &_s12SiriOntology15TerminalElementV9QualifierOSgMd, &_s12SiriOntology15TerminalElementV9QualifierOSgMR);
          v72(v26, v63);
          v66 = v100;
          outlined destroy of UsoEntity_common_Person.DefinedValues?(v16, &_s12SiriOntology15TerminalElementV9QualifierOSgMd, &_s12SiriOntology15TerminalElementV9QualifierOSgMR);
          v67 = v104;
          v68 = v99;
          if ((v91 & 1) == 0)
          {
            goto LABEL_26;
          }

          goto LABEL_20;
        }

        outlined destroy of UsoEntity_common_Person.DefinedValues?(v28, &_s12SiriOntology15TerminalElementV9QualifierOSgMd, &_s12SiriOntology15TerminalElementV9QualifierOSgMR);
        (*(v101 + 8))(v26, v63);
      }

      outlined destroy of UsoEntity_common_Person.DefinedValues?(v16, &_s12SiriOntology15TerminalElementV9QualifierOSg_AFtMd, &_s12SiriOntology15TerminalElementV9QualifierOSg_AFtMR);
      v67 = v104;
      v68 = v99;
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t outlined init with copy of TerminalElement.Qualifier?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementV9QualifierOSgMd, &_s12SiriOntology15TerminalElementV9QualifierOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type TerminalElement.Qualifier and conformance TerminalElement.Qualifier()
{
  result = lazy protocol witness table cache variable for type TerminalElement.Qualifier and conformance TerminalElement.Qualifier;
  if (!lazy protocol witness table cache variable for type TerminalElement.Qualifier and conformance TerminalElement.Qualifier)
  {
    type metadata accessor for TerminalElement.Qualifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TerminalElement.Qualifier and conformance TerminalElement.Qualifier);
  }

  return result;
}

uint64_t type metadata accessor for ContactsLabelCATsModern()
{
  result = type metadata singleton initialization cache for ContactsLabelCATsModern;
  if (!type metadata singleton initialization cache for ContactsLabelCATsModern)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

SiriContactsIntents::ContactsLabelCATsModern::ContactsLabelDialogIDs_optional __swiftcall ContactsLabelCATsModern.ContactsLabelDialogIDs.init(rawValue:)(Swift::String rawValue)
{
  v1 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v1 >= 0x13)
  {
    return 19;
  }

  else
  {
    return v1;
  }
}

uint64_t ContactsLabelCATsModern.ContactsLabelDialogIDs.rawValue.getter(char a1)
{
  result = 1819042147;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6C65636E6163;
      break;
    case 3:
      result = 7954788;
      break;
    case 4:
      result = 1937334628;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 28519;
      break;
    case 8:
      result = 1818845549;
      break;
    case 9:
      result = 0x6567617373656DLL;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    case 11:
      result = 0xD000000000000017;
      break;
    case 12:
      result = 1702257011;
      break;
    case 13:
      result = 0x6465766173;
      break;
    case 14:
      result = 0x6F65646976;
      break;
    case 15:
      v3 = 1801807223;
      goto LABEL_13;
    case 16:
      result = 0xD000000000000010;
      break;
    case 17:
      v3 = 1918985593;
LABEL_13:
      result = v3 | 0x7262624100000000;
      break;
    case 18:
      result = 0xD000000000000010;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

SiriContactsIntents::ContactsLabelCATsModern::ContactsLabelDialogIDs_optional protocol witness for RawRepresentable.init(rawValue:) in conformance ContactsLabelCATsModern.ContactsLabelDialogIDs@<W0>(Swift::String *a1@<X0>, SiriContactsIntents::ContactsLabelCATsModern::ContactsLabelDialogIDs_optional *a2@<X8>)
{
  result.value = ContactsLabelCATsModern.ContactsLabelDialogIDs.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ContactsLabelCATsModern.ContactsLabelDialogIDs@<X0>(uint64_t *a1@<X8>)
{
  result = ContactsLabelCATsModern.ContactsLabelDialogIDs.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t ContactsLabelCATsModern.cancelAsLabel()()
{
  OUTLINED_FUNCTION_41();
  v1 = OUTLINED_FUNCTION_5_4(MEMORY[0x277D55C68]);
  *(v0 + 16) = v1;
  lazy protocol witness table accessor for type ContactsLabelCATsModern.ContactsLabelDialogIDs and conformance ContactsLabelCATsModern.ContactsLabelDialogIDs();
  OUTLINED_FUNCTION_1_5();
  *v1 = v2;
  v1[1] = ContactsLabelCATsModern.cancelAsLabel();
  v3 = MEMORY[0x277D84F90];

  return v5(0xD000000000000014, 0x800000026696EC70, v3, &type metadata for ContactsLabelCATsModern.ContactsLabelDialogIDs);
}

uint64_t ContactsLabelCATsModern.saveAsLabel()()
{
  OUTLINED_FUNCTION_41();
  v1 = OUTLINED_FUNCTION_5_4(MEMORY[0x277D55C68]);
  *(v0 + 16) = v1;
  lazy protocol witness table accessor for type ContactsLabelCATsModern.ContactsLabelDialogIDs and conformance ContactsLabelCATsModern.ContactsLabelDialogIDs();
  OUTLINED_FUNCTION_1_5();
  *v1 = v2;
  v1[1] = ContactsLabelCATsModern.saveAsLabel();
  v3 = MEMORY[0x277D84F90];

  return v5(0xD000000000000012, 0x800000026696EC50, v3, &type metadata for ContactsLabelCATsModern.ContactsLabelDialogIDs);
}

uint64_t ContactsLabelCATsModern.saveAsLabel()(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v5 = *v2;
  OUTLINED_FUNCTION_0();
  *v6 = v5;

  v8 = *(v5 + 8);
  if (!v1)
  {
    v7 = a1;
  }

  return v8(v7);
}

uint64_t ContactsLabelCATsModern.savedAsLabel()()
{
  OUTLINED_FUNCTION_41();
  v1 = OUTLINED_FUNCTION_5_4(MEMORY[0x277D55C68]);
  *(v0 + 16) = v1;
  lazy protocol witness table accessor for type ContactsLabelCATsModern.ContactsLabelDialogIDs and conformance ContactsLabelCATsModern.ContactsLabelDialogIDs();
  OUTLINED_FUNCTION_1_5();
  *v1 = v2;
  v1[1] = ContactsLabelCATsModern.cancelAsLabel();
  v3 = MEMORY[0x277D84F90];

  return v5(0xD000000000000013, 0x800000026696EC30, v3, &type metadata for ContactsLabelCATsModern.ContactsLabelDialogIDs);
}

uint64_t ContactsLabelCATsModern.ageUnitsAsLabels(age:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_3();
}

uint64_t ContactsLabelCATsModern.ageUnitsAsLabels(age:)()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = xmmword_266966D90;
  *(v2 + 32) = 6645601;
  *(v2 + 40) = 0xE300000000000000;
  v3 = 0;
  if (v1)
  {
    v3 = type metadata accessor for DialogDuration();
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  *(v2 + 48) = v1;
  *(v2 + 72) = v3;
  OUTLINED_FUNCTION_11_3(MEMORY[0x277D55C68]);
  v4 = swift_task_alloc();
  v0[5] = v4;
  lazy protocol witness table accessor for type ContactsLabelCATsModern.ContactsLabelDialogIDs and conformance ContactsLabelCATsModern.ContactsLabelDialogIDs();
  OUTLINED_FUNCTION_1_5();
  *v4 = v5;
  v4[1] = ContactsLabelCATsModern.ageUnitsAsLabels(age:);
  v6 = v0[3];

  return v8(0xD000000000000016, 0x800000026696EC10, v2, &type metadata for ContactsLabelCATsModern.ContactsLabelDialogIDs);
}

{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_9_2();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_0();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_7_3();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 32);

    v13 = OUTLINED_FUNCTION_2_3();

    return v14(v13);
  }
}

{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t ContactsLabelCATsModern.modernBirthdayAsLabels(contact:birthdayInfo:isToday:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 64) = a3;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_0_3();
}

uint64_t ContactsLabelCATsModern.modernBirthdayAsLabels(contact:birthdayInfo:isToday:)()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = swift_allocObject();
  *(v0 + 40) = v3;
  v4 = OUTLINED_FUNCTION_4_3(v3, xmmword_266966D80);
  v3[3].n128_u64[0] = v2;
  v3[4].n128_u64[1] = v4;
  strcpy(&v3[5], "birthdayInfo");
  v3[5].n128_u8[13] = 0;
  v3[5].n128_u16[7] = -5120;
  v5 = 0;
  if (v1)
  {
    v5 = type metadata accessor for DialogCalendar();
  }

  else
  {
    v3[6].n128_u64[1] = 0;
    v3[7].n128_u64[0] = 0;
  }

  v6 = *(v0 + 64);
  v3[6].n128_u64[0] = v1;
  v3[7].n128_u64[1] = v5;
  v3[8].n128_u64[0] = 0x7961646F547369;
  v3[8].n128_u64[1] = 0xE700000000000000;
  v3[10].n128_u64[1] = MEMORY[0x277D839B0];
  v3[9].n128_u8[0] = v6;
  v7 = *(MEMORY[0x277D55C68] + 4);
  v12 = (*MEMORY[0x277D55C68] + MEMORY[0x277D55C68]);

  v8 = swift_task_alloc();
  *(v0 + 48) = v8;
  lazy protocol witness table accessor for type ContactsLabelCATsModern.ContactsLabelDialogIDs and conformance ContactsLabelCATsModern.ContactsLabelDialogIDs();
  OUTLINED_FUNCTION_1_5();
  *v8 = v9;
  v8[1] = ContactsLabelCATsModern.modernBirthdayAsLabels(contact:birthdayInfo:isToday:);
  v10 = *(v0 + 32);

  return v12(0xD00000000000001CLL, 0x800000026696EBF0, v3, &type metadata for ContactsLabelCATsModern.ContactsLabelDialogIDs);
}

{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_9_2();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_0();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_7_3();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 40);

    v13 = OUTLINED_FUNCTION_2_3();

    return v14(v13);
  }
}

{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t ContactsLabelCATsModern.quickActionButtonLabels(contact:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_3();
}

uint64_t ContactsLabelCATsModern.quickActionButtonLabels(contact:)()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = swift_allocObject();
  v0[4] = v2;
  v2[4].n128_u64[1] = OUTLINED_FUNCTION_4_3(v2, xmmword_266966D90);
  v2[3].n128_u64[0] = v1;
  OUTLINED_FUNCTION_11_3(MEMORY[0x277D55C68]);
  v3 = swift_task_alloc();
  v0[5] = v3;
  lazy protocol witness table accessor for type ContactsLabelCATsModern.ContactsLabelDialogIDs and conformance ContactsLabelCATsModern.ContactsLabelDialogIDs();
  OUTLINED_FUNCTION_1_5();
  *v3 = v4;
  v3[1] = ContactsLabelCATsModern.quickActionButtonLabels(contact:);
  v5 = v0[3];

  return v7(0xD000000000000025, 0x800000026696EBC0, v2, &type metadata for ContactsLabelCATsModern.ContactsLabelDialogIDs);
}

{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_9_2();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_0();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_7_3();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 32);

    v13 = OUTLINED_FUNCTION_2_3();

    return v14(v13);
  }
}

uint64_t ContactsLabelCATsModern.__allocating_init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return ContactsLabelCATsModern.init(templateDir:options:globals:)(a1, a2);
}

uint64_t ContactsLabelCATsModern.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for CATOption();
  v6 = OUTLINED_FUNCTION_10_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  outlined init with copy of URL?(a1, &v18 - v15);
  (*(v8 + 16))(v12, a2, v2);
  v16 = CATWrapperSimple.init(templateDir:options:globals:)();
  (*(v8 + 8))(a2, v2);
  outlined destroy of URL?(a1);
  return v16;
}

uint64_t ContactsLabelCATsModern.__allocating_init(useResponseMode:options:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for CATOption();
  v6 = OUTLINED_FUNCTION_10_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = CATWrapperSimple.init(useResponseMode:options:)();
  (*(v8 + 8))(a2, v3);
  return v15;
}

uint64_t ContactsLabelCATsModern.__deallocating_deinit()
{
  v0 = CATWrapperSimple.deinit();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of URL?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ContactsLabelCATsModern.ContactsLabelDialogIDs and conformance ContactsLabelCATsModern.ContactsLabelDialogIDs()
{
  result = lazy protocol witness table cache variable for type ContactsLabelCATsModern.ContactsLabelDialogIDs and conformance ContactsLabelCATsModern.ContactsLabelDialogIDs;
  if (!lazy protocol witness table cache variable for type ContactsLabelCATsModern.ContactsLabelDialogIDs and conformance ContactsLabelCATsModern.ContactsLabelDialogIDs)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsLabelCATsModern.ContactsLabelDialogIDs and conformance ContactsLabelCATsModern.ContactsLabelDialogIDs);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsLabelCATsModern.ContactsLabelDialogIDs and conformance ContactsLabelCATsModern.ContactsLabelDialogIDs;
  if (!lazy protocol witness table cache variable for type ContactsLabelCATsModern.ContactsLabelDialogIDs and conformance ContactsLabelCATsModern.ContactsLabelDialogIDs)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsLabelCATsModern.ContactsLabelDialogIDs and conformance ContactsLabelCATsModern.ContactsLabelDialogIDs);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContactsLabelCATsModern.ContactsLabelDialogIDs(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEE)
  {
    if (a2 + 18 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 18) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 19;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v5 = v6 - 19;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContactsLabelCATsModern.ContactsLabelDialogIDs(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xED)
  {
    v6 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 18;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_3(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = 0x746361746E6F63;
  a1[2].n128_u64[1] = 0xE700000000000000;

  return type metadata accessor for DialogPerson();
}

uint64_t OUTLINED_FUNCTION_5_4@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_11_3@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;
}

id ContactService.contactStore.getter()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t one-time initialization function for current()
{
  type metadata accessor for ContactService();
  swift_allocObject();
  result = ContactService.().init()();
  static ContactService.current = result;
  return result;
}

uint64_t static ContactService.current.getter()
{
  if (one-time initialization token for current != -1)
  {
    swift_once();
  }
}

uint64_t ContactService.().init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v1 = [objc_opt_self() defaultCenter];
  [v1 addObserver:v0 selector:sel_clearCachedMeCard name:*MEMORY[0x277CBD148] object:0];

  return v0;
}

void ContactService.clearCachedMeCard()()
{
  v1 = *(v0 + 24);
  *(v0 + 24) = 0;
}

uint64_t static ContactService.defaultProperties.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_266967220;
  v1 = *MEMORY[0x277CBD018];
  v2 = *MEMORY[0x277CBD068];
  *(v0 + 32) = *MEMORY[0x277CBD018];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x277CBD000];
  v4 = *MEMORY[0x277CBD058];
  *(v0 + 48) = *MEMORY[0x277CBD000];
  *(v0 + 56) = v4;
  v5 = *MEMORY[0x277CBCFF8];
  v6 = *MEMORY[0x277CBD070];
  *(v0 + 64) = *MEMORY[0x277CBCFF8];
  *(v0 + 72) = v6;
  v7 = *MEMORY[0x277CBD078];
  v8 = *MEMORY[0x277CBD0B0];
  *(v0 + 80) = *MEMORY[0x277CBD078];
  *(v0 + 88) = v8;
  v9 = *MEMORY[0x277CBD0B8];
  v62 = *MEMORY[0x277CBD0A8];
  v10 = *MEMORY[0x277CBD0A8];
  *(v0 + 96) = *MEMORY[0x277CBD0B8];
  *(v0 + 104) = v10;
  v11 = *MEMORY[0x277CBD0C0];
  v65 = *MEMORY[0x277CBD0A0];
  v12 = *MEMORY[0x277CBD0A0];
  *(v0 + 112) = *MEMORY[0x277CBD0C0];
  *(v0 + 120) = v12;
  v61 = *MEMORY[0x277CBD158];
  v68 = *MEMORY[0x277CBD090];
  v13 = *MEMORY[0x277CBD090];
  *(v0 + 128) = *MEMORY[0x277CBD158];
  *(v0 + 136) = v13;
  v14 = *MEMORY[0x277CBCFB8];
  v67 = *MEMORY[0x277CBD040];
  v15 = *MEMORY[0x277CBD040];
  *(v0 + 144) = *MEMORY[0x277CBCFB8];
  *(v0 + 152) = v15;
  v63 = *MEMORY[0x277CBD098];
  v71 = *MEMORY[0x277CBCFC0];
  v16 = *MEMORY[0x277CBCFC0];
  *(v0 + 160) = *MEMORY[0x277CBD098];
  *(v0 + 168) = v16;
  v66 = *MEMORY[0x277CBD0C8];
  v74 = *MEMORY[0x277CBD168];
  v17 = *MEMORY[0x277CBD168];
  *(v0 + 176) = *MEMORY[0x277CBD0C8];
  *(v0 + 184) = v17;
  v64 = *MEMORY[0x277CBD120];
  v73 = *MEMORY[0x277CBD038];
  v18 = *MEMORY[0x277CBD038];
  *(v0 + 192) = *MEMORY[0x277CBD120];
  *(v0 + 200) = v18;
  v69 = *MEMORY[0x277CBCF90];
  v76 = *MEMORY[0x277CBD080];
  v19 = *MEMORY[0x277CBD080];
  *(v0 + 208) = *MEMORY[0x277CBCF90];
  *(v0 + 216) = v19;
  v72 = *MEMORY[0x277CBD160];
  v20 = *MEMORY[0x277CBCFB0];
  v79 = *MEMORY[0x277CBCFB0];
  *(v0 + 224) = *MEMORY[0x277CBD160];
  *(v0 + 232) = v20;
  v70 = *MEMORY[0x277CBD028];
  v78 = *MEMORY[0x277CBD020];
  v21 = *MEMORY[0x277CBD020];
  *(v0 + 240) = *MEMORY[0x277CBD028];
  *(v0 + 248) = v21;
  v75 = *MEMORY[0x277CBD088];
  v22 = *MEMORY[0x277CBD0E0];
  v80 = *MEMORY[0x277CBD0E0];
  *(v0 + 256) = *MEMORY[0x277CBD088];
  *(v0 + 264) = v22;
  v77 = *MEMORY[0x277CBD138];
  v23 = *MEMORY[0x277CBCF88];
  v81 = *MEMORY[0x277CBCF88];
  *(v0 + 272) = *MEMORY[0x277CBD138];
  *(v0 + 280) = v23;
  v83 = v0;
  v82 = *MEMORY[0x277CBD0F0];
  v24 = v1;
  v25 = v2;
  v26 = v3;
  v27 = v4;
  v28 = v5;
  v29 = v6;
  v30 = v7;
  v31 = v8;
  v32 = v9;
  v33 = v62;
  v34 = v11;
  v35 = v65;
  v36 = v61;
  v37 = v68;
  v38 = v14;
  v39 = v67;
  v40 = v63;
  v41 = v71;
  v42 = v66;
  v43 = v74;
  v44 = v64;
  v45 = v73;
  v46 = v69;
  v47 = v76;
  v48 = v72;
  v49 = v79;
  v50 = v70;
  v51 = v78;
  v52 = v75;
  v53 = v80;
  v54 = v77;
  v55 = v81;
  v56 = v82;
  MEMORY[0x26D5E25E0]();
  OUTLINED_FUNCTION_6_2();
  if (v57)
  {
    OUTLINED_FUNCTION_9_3();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v58 = *MEMORY[0x277CBD0E8];
  MEMORY[0x26D5E25E0]();
  OUTLINED_FUNCTION_6_2();
  if (v57)
  {
    OUTLINED_FUNCTION_9_3();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v59 = *MEMORY[0x277CBCFC8];
  MEMORY[0x26D5E25E0]();
  OUTLINED_FUNCTION_6_2();
  if (v57)
  {
    OUTLINED_FUNCTION_9_3();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return v83;
}

char *static ContactService.defaultPropertiesString.getter()
{
  v83 = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266967230;
  v1 = *MEMORY[0x277CBD018];
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v2;
  v3 = *MEMORY[0x277CBD068];
  *(inited + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 56) = v4;
  v5 = *MEMORY[0x277CBD000];
  *(inited + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = v6;
  v7 = *MEMORY[0x277CBD058];
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v8;
  v9 = *MEMORY[0x277CBCFF8];
  *(inited + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 104) = v10;
  v11 = *MEMORY[0x277CBD070];
  *(inited + 112) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 120) = v12;
  v13 = *MEMORY[0x277CBD078];
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v14;
  v15 = *MEMORY[0x277CBD0B0];
  *(inited + 144) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 152) = v16;
  v17 = *MEMORY[0x277CBD0B8];
  *(inited + 160) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 168) = v18;
  v19 = *MEMORY[0x277CBD0A8];
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v20;
  v21 = *MEMORY[0x277CBD0C0];
  *(inited + 192) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 200) = v22;
  v23 = *MEMORY[0x277CBD0A0];
  *(inited + 208) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 216) = v24;
  v25 = *MEMORY[0x277CBD158];
  *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 232) = v26;
  v27 = *MEMORY[0x277CBD090];
  *(inited + 240) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 248) = v28;
  v29 = *MEMORY[0x277CBCFB8];
  *(inited + 256) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 264) = v30;
  v31 = *MEMORY[0x277CBD040];
  *(inited + 272) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 280) = v32;
  v33 = *MEMORY[0x277CBD098];
  *(inited + 288) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 296) = v34;
  v35 = *MEMORY[0x277CBCFC0];
  *(inited + 304) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 312) = v36;
  v37 = *MEMORY[0x277CBD0C8];
  *(inited + 320) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 328) = v38;
  v39 = *MEMORY[0x277CBD168];
  *(inited + 336) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 344) = v40;
  v41 = *MEMORY[0x277CBD120];
  *(inited + 352) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 360) = v42;
  v43 = *MEMORY[0x277CBD038];
  *(inited + 368) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 376) = v44;
  v45 = *MEMORY[0x277CBCF90];
  *(inited + 384) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 392) = v46;
  v47 = *MEMORY[0x277CBD080];
  *(inited + 400) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 408) = v48;
  v49 = *MEMORY[0x277CBD160];
  *(inited + 416) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 424) = v50;
  v51 = *MEMORY[0x277CBCFB0];
  *(inited + 432) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 440) = v52;
  v53 = *MEMORY[0x277CBD028];
  *(inited + 448) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 456) = v54;
  v55 = *MEMORY[0x277CBD020];
  *(inited + 464) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 472) = v56;
  v57 = *MEMORY[0x277CBD088];
  *(inited + 480) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 488) = v58;
  v59 = *MEMORY[0x277CBD0E0];
  *(inited + 496) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 504) = v60;
  v61 = *MEMORY[0x277CBD138];
  *(inited + 512) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 520) = v62;
  v63 = *MEMORY[0x277CBD0F0];
  v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v66 = v65;
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, 32, 1, inited);
  v68 = v67;
  *(v67 + 2) = 32;
  *(v67 + 66) = v64;
  *(v67 + 67) = v66;
  v69 = *MEMORY[0x277CBD0E8];
  v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v72 = v71;
  v73 = *(v68 + 3);
  if (v73 <= 0x41)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v73 > 1, 33, 1, v68);
    v68 = v81;
  }

  *(v68 + 2) = 33;
  *(v68 + 68) = v70;
  *(v68 + 69) = v72;
  v74 = *MEMORY[0x277CBCFC8];
  v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v77 = v76;
  v78 = *(v68 + 3);
  if (v78 <= 0x43)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v78 > 1, 34, 1, v68);
    v68 = v82;
  }

  *(v68 + 2) = 34;
  *(v68 + 70) = v75;
  *(v68 + 71) = v77;
  v79 = *MEMORY[0x277D85DE8];
  return v68;
}

Swift::Bool __swiftcall ContactService.isAuthorized()()
{
  v0 = type metadata accessor for Signpost.OpenSignpost();
  v1 = OUTLINED_FUNCTION_10_1(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_8();
  v6 = v5 - v4;
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_1_6();
    swift_once();
  }

  static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_18_2();
  v7 = v6 + *(v0 + 20);
  *v7 = "CheckAuthorizationStatus";
  *(v7 + 8) = 24;
  *(v7 + 16) = 2;
  v8 = [objc_opt_self() authorizationStatusForEntityType_];
  v9 = swift_allocObject();
  *(v9 + 16) = v8 == 3;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_0_4();
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.siriContacts);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    OUTLINED_FUNCTION_5_5();
    v24 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_3();
    v25 = swift_slowAlloc();
    aBlock[0] = v25;
    *v24 = 136315138;
    lazy protocol witness table accessor for type Int and conformance Int();
    v13 = BinaryInteger.description.getter();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, aBlock);

    *(v24 + 4) = v15;
    _os_log_impl(&dword_26686A000, v11, v12, "[ContactsService] Contacts App authorization status: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
    OUTLINED_FUNCTION_3_3();
    MEMORY[0x26D5E3300]();
    OUTLINED_FUNCTION_3_3();
    MEMORY[0x26D5E3300]();
  }

  if (v8 != 3)
  {
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      OUTLINED_FUNCTION_11_4();
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_26686A000, v16, v17, "[ContactsService] Requesting authorization to access Contacts App...", v18, 2u);
      OUTLINED_FUNCTION_3_3();
      MEMORY[0x26D5E3300]();
    }

    v19 = ContactService.contactStore.getter();
    aBlock[4] = partial apply for closure #1 in ContactService.isAuthorized();
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor;
    v20 = _Block_copy(aBlock);

    [v19 requestAccessForEntityType:0 completionHandler:v20];
    _Block_release(v20);
  }

  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_2_4();
  outlined destroy of Signpost.OpenSignpost(v6, v21);
  swift_beginAccess();
  v22 = *(v9 + 16);

  return v22;
}

void closure #1 in ContactService.isAuthorized()(char a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.siriContacts);
    v7 = a2;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v21 = v11;
      *v10 = 136315138;
      swift_getErrorValue();
      v12 = Error.localizedDescription.getter();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v21);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_26686A000, v8, v9, "[ContactsService] Error occurred when trying to gain access to Contacts App: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x26D5E3300](v11, -1, -1);
      MEMORY[0x26D5E3300](v10, -1, -1);
    }
  }

  if (a1)
  {
    swift_beginAccess();
    *(a3 + 16) = 1;
    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.siriContacts);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "[ContactsService] User has authorized access to Contacts App.";
LABEL_16:
      _os_log_impl(&dword_26686A000, v16, v17, v19, v18, 2u);
      MEMORY[0x26D5E3300](v18, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    *(a3 + 16) = 0;
    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.siriContacts);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "[ContactsService] User has NOT authorized access to Contacts App.";
      goto LABEL_16;
    }
  }
}

void thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

CNContact_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ContactService.fetchContact(matchingIdentifier:)(Swift::String matchingIdentifier)
{
  object = matchingIdentifier._object;
  countAndFlagsBits = matchingIdentifier._countAndFlagsBits;
  v23[1] = *MEMORY[0x277D85DE8];
  v3 = type metadata accessor for Signpost.OpenSignpost();
  v4 = OUTLINED_FUNCTION_10_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_8();
  v9 = v8 - v7;
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_1_6();
    swift_once();
  }

  v10 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v11 = v9 + *(v3 + 20);
  *v11 = "FetchContactByID";
  *(v11 + 8) = 16;
  *(v11 + 16) = 2;
  v12 = ContactService.contactStore.getter();
  v13 = MEMORY[0x26D5E2470](countAndFlagsBits, object);
  type metadata accessor for ContactService();
  static ContactService.defaultProperties.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd, &_sSo15CNKeyDescriptor_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v23[0] = 0;
  v15 = [v12 unifiedContactWithIdentifier:v13 keysToFetch:isa error:v23];

  v16 = v23[0];
  if (!v15)
  {
    v17 = v16;
    v18 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  OUTLINED_FUNCTION_2_4();
  outlined destroy of Signpost.OpenSignpost(v9, v19);
  v21 = *MEMORY[0x277D85DE8];
  v22 = v15;
  result.value.super.isa = v22;
  result.is_nil = v20;
  return result;
}

CNContact_optional __swiftcall ContactService.getMeCard()()
{
  v1 = type metadata accessor for ContactsError();
  v2 = OUTLINED_FUNCTION_10_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  v8 = type metadata accessor for Signpost.OpenSignpost();
  v9 = OUTLINED_FUNCTION_10_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_8();
  v14 = v13 - v12;
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_1_6();
    swift_once();
  }

  v15 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_18_2();
  v16 = v14 + *(v8 + 20);
  *v16 = "FetchMeCard";
  *(v16 + 8) = 11;
  *(v16 + 16) = 2;
  v17 = *(v0 + 24);
  if (v17)
  {
    v18 = v17;
  }

  else
  {
    v19 = ContactService.fetchMeCard()();
    v17 = v19;
    if (v20)
    {
      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_0_4();
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      __swift_project_value_buffer(v21, static Logger.siriContacts);
      v22 = v17;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *v25 = 136315394;
        swift_storeEnumTagMultiPayload();
        lazy protocol witness table accessor for type ContactsError and conformance ContactsError();
        v26 = Error.localizedDescription.getter();
        v28 = v27;
        outlined destroy of Signpost.OpenSignpost(v7, type metadata accessor for ContactsError);
        v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v39);

        *(v25 + 4) = v29;
        *(v25 + 12) = 2080;
        swift_getErrorValue();
        v30 = Error.localizedDescription.getter();
        v32 = v31;
        outlined consume of Result<CNContact, Error>(v17);
        v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v39);

        *(v25 + 14) = v33;
        _os_log_impl(&dword_26686A000, v23, v24, "%s: %s", v25, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_3_3();
        MEMORY[0x26D5E3300]();
        OUTLINED_FUNCTION_3_3();
        MEMORY[0x26D5E3300]();
      }

      else
      {

        outlined consume of Result<CNContact, Error>(v17);
      }

      outlined consume of Result<CNContact, Error>(v17);
      v17 = 0;
    }

    else
    {
      v34 = *(v0 + 24);
      *(v0 + 24) = v19;
      v35 = v19;
    }
  }

  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_2_4();
  outlined destroy of Signpost.OpenSignpost(v14, v36);
  v38 = v17;
  result.value.super.isa = v38;
  result.is_nil = v37;
  return result;
}

uint64_t ContactService.fetchMeCard()()
{
  OUTLINED_FUNCTION_10_4();
  closure #1 in ContactService.fetchMeCard()(&v1, &v2);
  return v2;
}

id closure #1 in ContactService.fetchMeCard()@<X0>(uint64_t *a1@<X2>, void *a2@<X8>)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = ContactService.contactStore.getter();
  static ContactService.defaultProperties.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd, &_sSo15CNKeyDescriptor_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v12[0] = 0;
  v6 = [v4 _crossPlatformUnifiedMeContactWithKeysToFetch_error_];

  v7 = v12[0];
  if (v6)
  {
    *a2 = v6;
    result = v7;
  }

  else
  {
    v10 = v12[0];
    v11 = _convertNSErrorToError(_:)();

    result = swift_willThrow();
    *a1 = v11;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ContactService.setMeCardNickName(toNickname:forMeCard:)(Swift::String toNickname, CNContact forMeCard)
{
  object = toNickname._object;
  countAndFlagsBits = toNickname._countAndFlagsBits;
  v29[4] = *MEMORY[0x277D85DE8];
  [(objc_class *)forMeCard.super.isa mutableCopy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for CNMutableContact();
  OUTLINED_FUNCTION_17_1();
  v4 = MEMORY[0x26D5E2470](countAndFlagsBits, object);
  [v28 setNickname_];

  v5 = [objc_allocWithZone(MEMORY[0x277CBDBA0]) init];
  [v5 updateContact_];
  v6 = ContactService.contactStore.getter();
  v29[0] = 0;
  LODWORD(countAndFlagsBits) = [v6 executeSaveRequest:v5 error:v29];

  if (countAndFlagsBits)
  {
    v7 = one-time initialization token for siriContacts;
    v8 = v29[0];
    if (v7 != -1)
    {
      OUTLINED_FUNCTION_0_4();
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.siriContacts);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      OUTLINED_FUNCTION_11_4();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_14_2(&dword_26686A000, v12, v13, "[ContactsService] Nickname was updated successfully!");
      OUTLINED_FUNCTION_3_3();
      MEMORY[0x26D5E3300]();
    }
  }

  else
  {
    v14 = v29[0];
    v15 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_0_4();
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.siriContacts);
    v17 = v15;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      OUTLINED_FUNCTION_5_5();
      v20 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_3();
      v21 = swift_slowAlloc();
      v29[0] = v21;
      OUTLINED_FUNCTION_12_2(4.8149e-34);
      v22 = Error.localizedDescription.getter();
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v29);

      *(v20 + 4) = v24;
      OUTLINED_FUNCTION_13_1(&dword_26686A000, v25, v26, "[ContactsService] Call to setMeCardNickName() threw an exception: %s");
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      OUTLINED_FUNCTION_3_3();
      MEMORY[0x26D5E3300]();
      OUTLINED_FUNCTION_3_3();
      MEMORY[0x26D5E3300]();
    }

    type metadata accessor for ContactsError();
    lazy protocol witness table accessor for type ContactsError and conformance ContactsError();
    OUTLINED_FUNCTION_56();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  v27 = *MEMORY[0x277D85DE8];
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ContactService.deleteMeCardNickName(forMeCard:)(CNContact forMeCard)
{
  v26[4] = *MEMORY[0x277D85DE8];
  [(objc_class *)forMeCard.super.isa mutableCopy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for CNMutableContact();
  OUTLINED_FUNCTION_17_1();
  [v25 setValue:0 forKeyPath:*MEMORY[0x277CBD078]];
  v1 = [objc_allocWithZone(MEMORY[0x277CBDBA0]) init];
  [v1 updateContact_];
  v2 = ContactService.contactStore.getter();
  v26[0] = 0;
  v3 = [v2 executeSaveRequest:v1 error:v26];

  if (v3)
  {
    v4 = one-time initialization token for siriContacts;
    v5 = v26[0];
    if (v4 != -1)
    {
      OUTLINED_FUNCTION_0_4();
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.siriContacts);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      OUTLINED_FUNCTION_11_4();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_14_2(&dword_26686A000, v9, v10, "[ContactsService] Nickname was deleted successfully!");
      OUTLINED_FUNCTION_3_3();
      MEMORY[0x26D5E3300]();
    }
  }

  else
  {
    v11 = v26[0];
    v12 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_0_4();
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.siriContacts);
    v14 = v12;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      OUTLINED_FUNCTION_5_5();
      v17 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_3();
      v18 = swift_slowAlloc();
      v26[0] = v18;
      OUTLINED_FUNCTION_12_2(4.8149e-34);
      v19 = Error.localizedDescription.getter();
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v26);

      *(v17 + 4) = v21;
      OUTLINED_FUNCTION_13_1(&dword_26686A000, v22, v23, "[ContactsService] Call to deleteMeCardNickName() threw an exception: %s");
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      OUTLINED_FUNCTION_3_3();
      MEMORY[0x26D5E3300]();
      OUTLINED_FUNCTION_3_3();
      MEMORY[0x26D5E3300]();
    }

    type metadata accessor for ContactsError();
    lazy protocol witness table accessor for type ContactsError and conformance ContactsError();
    OUTLINED_FUNCTION_56();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  v24 = *MEMORY[0x277D85DE8];
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ContactService.setMeCardRelationship(relationLabel:contactName:forMeCard:)(Swift::String relationLabel, Swift::String contactName, CNContact forMeCard)
{
  object = contactName._object;
  countAndFlagsBits = contactName._countAndFlagsBits;
  v48[4] = *MEMORY[0x277D85DE8];
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_0_4();
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.siriContacts);
  v6 = forMeCard.super.isa;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    OUTLINED_FUNCTION_5_5();
    v9 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_3();
    v10 = swift_slowAlloc();
    v48[0] = v10;
    *v9 = 136315138;
    v42 = object;
    v11 = [(objc_class *)v6 contactRelations];
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = MEMORY[0x26D5E2610](v13, v12);
    v16 = v15;

    v17 = v14;
    object = v42;
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v16, v48);

    *(v9 + 4) = v18;
    _os_log_impl(&dword_26686A000, v7, v8, "#ContactService contactRelations: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    OUTLINED_FUNCTION_3_3();
    MEMORY[0x26D5E3300]();
    OUTLINED_FUNCTION_3_3();
    MEMORY[0x26D5E3300]();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);

  v19 = CNLabeledValue<>.init(relationLabel:contactName:)(relationLabel._countAndFlagsBits, relationLabel._object, countAndFlagsBits, object);
  v20 = [(objc_class *)v6 contactRelations];
  v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v47 = v21;
  v22 = v19;
  MEMORY[0x26D5E25E0]();
  if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  [(objc_class *)v6 mutableCopy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for CNMutableContact();
  swift_dynamicCast();
  v23 = v46;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v46 setContactRelations_];

  v25 = [objc_allocWithZone(MEMORY[0x277CBDBA0]) init];
  [v25 updateContact_];
  v26 = ContactService.contactStore.getter();
  v48[0] = 0;
  LODWORD(isa) = [v26 executeSaveRequest:v25 error:v48];

  if (isa)
  {
    v27 = v48[0];
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v28, v29))
    {
      OUTLINED_FUNCTION_11_4();
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_26686A000, v28, v29, "[ContactsService] Relationship was updated successfully!", v30, 2u);
      OUTLINED_FUNCTION_3_3();
      MEMORY[0x26D5E3300]();
    }
  }

  else
  {
    v31 = v48[0];
    v32 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v33 = v32;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      OUTLINED_FUNCTION_5_5();
      v36 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_3();
      v45 = swift_slowAlloc();
      v48[0] = v45;
      *v36 = 136315138;
      swift_getErrorValue();
      v37 = Error.localizedDescription.getter();
      v39 = v22;
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, v48);

      *(v36 + 4) = v40;
      v22 = v39;
      v23 = v46;
      _os_log_impl(&dword_26686A000, v34, v35, "[ContactsService] Call to setMeCardRelationship() threw an exception: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v45);
      OUTLINED_FUNCTION_3_3();
      MEMORY[0x26D5E3300]();
      OUTLINED_FUNCTION_3_3();
      MEMORY[0x26D5E3300]();
    }

    type metadata accessor for ContactsError();
    lazy protocol witness table accessor for type ContactsError and conformance ContactsError();
    OUTLINED_FUNCTION_15_1();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  v41 = *MEMORY[0x277D85DE8];
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ContactService.deleteMeCardRelationship(relationLabel:contactName:forMeCard:)(Swift::String relationLabel, Swift::String contactName, CNContact forMeCard)
{
  countAndFlagsBits = contactName._countAndFlagsBits;
  v56 = relationLabel._countAndFlagsBits;
  object = contactName._object;
  v5 = relationLabel._object;
  v58[4] = *MEMORY[0x277D85DE8];
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_0_4();
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.siriContacts);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    OUTLINED_FUNCTION_5_5();
    v9 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_3();
    v10 = swift_slowAlloc();
    v58[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v5, v58);
    _os_log_impl(&dword_26686A000, v7, v8, "[ContactsService] Relation label: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    OUTLINED_FUNCTION_3_3();
    MEMORY[0x26D5E3300]();
    OUTLINED_FUNCTION_3_3();
    MEMORY[0x26D5E3300]();
  }

  v11 = forMeCard.super.isa;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  v14 = &off_279BD3000;
  if (os_log_type_enabled(v12, v13))
  {
    OUTLINED_FUNCTION_5_5();
    v15 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_3();
    v16 = swift_slowAlloc();
    v58[0] = v16;
    *v15 = 136315138;
    v54 = object;
    v17 = [(objc_class *)v11 contactRelations];
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
    v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v20 = MEMORY[0x26D5E2610](v19, v18);
    v22 = v21;

    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v58);
    object = v54;

    *(v15 + 4) = v23;
    _os_log_impl(&dword_26686A000, v12, v13, "[ContactsService] Relations before: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    OUTLINED_FUNCTION_3_3();
    MEMORY[0x26D5E3300]();
    v14 = &off_279BD3000;
    OUTLINED_FUNCTION_3_3();
    MEMORY[0x26D5E3300]();
  }

  v24 = [v11 v14[485]];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
  v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v27 = Array<A>.removeAllWhere(contactName:relationLabel:)(countAndFlagsBits, object, v56, v5, v26);

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v28, v29))
  {
    OUTLINED_FUNCTION_5_5();
    v30 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_3();
    v31 = swift_slowAlloc();
    v58[0] = v31;
    *v30 = 136315138;
    v32 = MEMORY[0x26D5E2610](v27, v25);
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, v58);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_26686A000, v28, v29, "[ContactsService] Relations after: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    OUTLINED_FUNCTION_3_3();
    MEMORY[0x26D5E3300]();
    OUTLINED_FUNCTION_3_3();
    MEMORY[0x26D5E3300]();
  }

  [(objc_class *)v11 mutableCopy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for CNMutableContact();
  swift_dynamicCast();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v57 setContactRelations_];

  v36 = [objc_allocWithZone(MEMORY[0x277CBDBA0]) init];
  [v36 updateContact_];
  v37 = ContactService.contactStore.getter();
  v58[0] = 0;
  v38 = [v37 executeSaveRequest:v36 error:v58];

  if (v38)
  {
    v39 = v58[0];
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v40, v41))
    {
      OUTLINED_FUNCTION_11_4();
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_26686A000, v40, v41, "[ContactsService] Relationship was deleted successfully!", v42, 2u);
      OUTLINED_FUNCTION_3_3();
      MEMORY[0x26D5E3300]();
    }
  }

  else
  {
    v43 = v58[0];
    v44 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v45 = v44;
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v46, v47))
    {
      OUTLINED_FUNCTION_5_5();
      v48 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_3();
      v49 = swift_slowAlloc();
      v58[0] = v49;
      *v48 = 136315138;
      swift_getErrorValue();
      v50 = Error.localizedDescription.getter();
      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, v58);

      *(v48 + 4) = v52;
      _os_log_impl(&dword_26686A000, v46, v47, "[ContactsService] Call to deleteMeCardRelationship() threw an exception: %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v49);
      OUTLINED_FUNCTION_3_3();
      MEMORY[0x26D5E3300]();
      OUTLINED_FUNCTION_3_3();
      MEMORY[0x26D5E3300]();
    }

    type metadata accessor for ContactsError();
    lazy protocol witness table accessor for type ContactsError and conformance ContactsError();
    OUTLINED_FUNCTION_15_1();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  v53 = *MEMORY[0x277D85DE8];
}