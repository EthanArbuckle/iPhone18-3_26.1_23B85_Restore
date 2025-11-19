BOOL closure #2 in FlowFactory.modifyContactAttributeFlowProducers()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVy0A15ContactsIntents022ModifyContactAttributeD0CAD0ijkD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVy0A15ContactsIntents022ModifyContactAttributeD0CAD0ijkD8ResponseCGMR);
  v0 = IntentResolutionRecord.intentResponse.getter();
  v1 = OBJC_IVAR___ModifyContactAttributeIntentResponse_code;
  swift_beginAccess();
  v2 = *&v0[v1];

  return v2 == 1;
}

uint64_t *FlowFactory.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 9);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 14);
  return v0;
}

uint64_t FlowFactory.__deallocating_deinit()
{
  FlowFactory.deinit();

  return MEMORY[0x2821FE8D8](v0, 152, 7);
}

uint64_t protocol witness for FlowProviding.makeUnsupportedLearnPronunciationFlow() in conformance FlowFactory()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for FlowProviding.makeUnsupportedLearnPronunciationFlow() in conformance FlowFactory;

  return FlowFactory.makeUnsupportedLearnPronunciationFlow()();
}

uint64_t protocol witness for FlowProviding.makeUnsupportedActionFlow() in conformance FlowFactory()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for FlowProviding.makeUnsupportedLearnPronunciationFlow() in conformance FlowFactory;

  return FlowFactory.makeUnsupportedActionFlow()();
}

uint64_t protocol witness for FlowProviding.makeUnsupportedOnDeviceFlow(intent:) in conformance FlowFactory()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for FlowProviding.makeUnsupportedLearnPronunciationFlow() in conformance FlowFactory;

  return FlowFactory.makeUnsupportedOnDeviceFlow(intent:)();
}

uint64_t protocol witness for FlowProviding.makeAppPunchoutFlow() in conformance FlowFactory()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for UnsupportedValueFlowStrategyAsync.makeUpdatedIntentForUnsupportedValue(resolveRecord:) in conformance ContactsUnsupportedValueStrategy<A, B, C>;

  return FlowFactory.makeAppPunchoutFlow()();
}

uint64_t partial apply for closure #1 in FlowFactory.makeAppPunchoutFlow()()
{
  OUTLINED_FUNCTION_4();
  v2 = v1;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20_10(v3);
  *v4 = v5;
  v4[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance GetContactAttributeHandleIntentStrategy;

  return closure #1 in FlowFactory.makeAppPunchoutFlow()(v2, v0);
}

uint64_t dispatch thunk of FlowProviding.makeUnsupportedLearnPronunciationFlow()()
{
  OUTLINED_FUNCTION_19_1();
  v2 = *(OUTLINED_FUNCTION_41_8(v0, v1) + 56);
  OUTLINED_FUNCTION_21_0();
  v12 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_20_10(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_16_12(v7);

  return v10(v9);
}

uint64_t dispatch thunk of FlowProviding.makeUnsupportedActionFlow()()
{
  OUTLINED_FUNCTION_19_1();
  v2 = *(OUTLINED_FUNCTION_41_8(v0, v1) + 64);
  OUTLINED_FUNCTION_21_0();
  v12 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_20_10(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_16_12(v7);

  return v10(v9);
}

uint64_t dispatch thunk of FlowProviding.makeUnsupportedOnDeviceFlow(intent:)()
{
  OUTLINED_FUNCTION_19_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = *(v0 + 72);
  OUTLINED_FUNCTION_21_0();
  v14 = (v7 + *v7);
  v9 = *(v8 + 4);
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_20_10(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_26_13(v11);

  return v14(v5, v3, v1);
}

uint64_t dispatch thunk of FlowProviding.makeAppPunchoutFlow()()
{
  OUTLINED_FUNCTION_19_1();
  v2 = *(OUTLINED_FUNCTION_41_8(v0, v1) + 80);
  OUTLINED_FUNCTION_21_0();
  v12 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_20_10(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_16_12(v7);

  return v10(v9);
}

uint64_t dispatch thunk of FlowFactory.makeUnsupportedLearnPronunciationFlow()()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 152);
  v7 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20_10(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_26_13(v4);

  return v7();
}

uint64_t dispatch thunk of FlowFactory.makeUnsupportedActionFlow()()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 160);
  v7 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20_10(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_26_13(v4);

  return v7();
}

uint64_t dispatch thunk of FlowFactory.makeUnsupportedOnDeviceFlow(intent:)()
{
  OUTLINED_FUNCTION_41();
  v1 = v0;
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 168);
  v9 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_20_10(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_26_13(v6);

  return v9(v1);
}

uint64_t dispatch thunk of FlowFactory.makeAppPunchoutFlow()()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 176);
  v7 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20_10(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_26_13(v4);

  return v7();
}

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

uint64_t partial apply for closure #1 in FlowFactory.getUnsupportedFlow(for:)()
{
  OUTLINED_FUNCTION_41();
  v2 = v1;
  v3 = type metadata accessor for TemplatingResult();
  OUTLINED_FUNCTION_1_1(v3);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = *(v0 + ((*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_20_10(v8);
  *v9 = v10;
  v9[1] = protocol witness for Flow.execute() in conformance ContactsUnsupportedFlow;

  return closure #1 in FlowFactory.getUnsupportedFlow(for:)(v2, v0 + v5, v7);
}

uint64_t lazy protocol witness table accessor for type GetContactFlowStrategy and conformance ContactsFlowStrategy<A, B>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_1_42(uint64_t *a1)
{
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  __swift_destroy_boxed_opaque_existential_0Tm((v3 - 128));
  __swift_destroy_boxed_opaque_existential_0Tm((v3 - 168));
  result = __swift_destroy_boxed_opaque_existential_0Tm((v3 - 248));
  *(v2 + 112) = v1 & 1;
  *(v2 + 120) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_44(unint64_t *a1)
{

  return lazy protocol witness table accessor for type BasicDisambiguationItemContainer<String> and conformance BasicDisambiguationItemContainer<A>(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_12_17()
{

  return App.__allocating_init(appIdentifier:)();
}

uint64_t OUTLINED_FUNCTION_13_18(uint64_t *a1)
{
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  __swift_destroy_boxed_opaque_existential_0Tm((v1 - 128));

  return __swift_destroy_boxed_opaque_existential_0Tm((v1 - 168));
}

uint64_t OUTLINED_FUNCTION_17_13()
{
}

uint64_t OUTLINED_FUNCTION_19_12()
{
  v0[13] = v1;
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);

  return dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
}

uint64_t OUTLINED_FUNCTION_20_12(uint64_t *a1)
{
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  result = __swift_destroy_boxed_opaque_existential_0Tm((v2 - 208));
  *(v2 - 128) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_22_13(uint64_t a1)
{

  return MEMORY[0x2821BAFA8](v3 - 104, v1, v2, a1);
}

uint64_t OUTLINED_FUNCTION_23_14()
{

  return outlined init with copy of DeviceState(v0 + 72, v1 - 104);
}

uint64_t OUTLINED_FUNCTION_27_10()
{

  return __swift_mutable_project_boxed_opaque_existential_1(v1 - 208, v0);
}

uint64_t OUTLINED_FUNCTION_31_7(uint64_t *a1)
{
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  __swift_destroy_boxed_opaque_existential_0Tm((v1 - 168));
  __swift_destroy_boxed_opaque_existential_0Tm((v1 - 128));

  return __swift_destroy_boxed_opaque_existential_0Tm((v1 - 208));
}

uint64_t OUTLINED_FUNCTION_33_8(uint64_t a1)
{
  result = outlined init with take of DeviceState((v1 - 104), a1 + 16);
  *(v1 - 104) = a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_34_7(uint64_t a1)
{

  return MEMORY[0x2821BAFA0](a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_38_5()
{
  v3 = *(v0 + 80) + 16;

  return outlined init with copy of DeviceState(v3, v1 - 128);
}

uint64_t OUTLINED_FUNCTION_44_5()
{
  v5 = v4 + *(v0 + 20);
  *v5 = v1;
  *(v5 + 8) = v2;
  *(v5 + 16) = v3;
  return 0;
}

uint64_t OUTLINED_FUNCTION_47_5()
{

  return type metadata accessor for Signpost.OpenSignpost();
}

uint64_t OUTLINED_FUNCTION_48_6()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_49_6()
{
}

uint64_t OUTLINED_FUNCTION_51_3(uint64_t a1)
{

  return MEMORY[0x2821BA408](a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_52_6()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_53_4()
{

  return Flow.eraseToAnyFlow()();
}

uint64_t OUTLINED_FUNCTION_54_4()
{

  return static CATOption.defaultMode.getter();
}

uint64_t OUTLINED_FUNCTION_60_5()
{
  v1 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  return v1;
}

void OUTLINED_FUNCTION_65_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_66_1()
{
  v4 = *(v1 + 56);
  *(v2 - 144) = *(v1 + 64);
  *(v2 - 136) = v0;
  *(v2 - 168) = v4;

  return static CATOption.defaultMode.getter();
}

uint64_t OUTLINED_FUNCTION_68_5(uint64_t a1)
{
  *(v1 + 8) = a1;

  return static CATOption.defaultMode.getter();
}

uint64_t OUTLINED_FUNCTION_69_4()
{

  return outlined init with copy of DeviceState(v1 - 168, v0 + 264);
}

uint64_t OUTLINED_FUNCTION_70_3()
{

  return outlined init with copy of DeviceState(v1 - 128, v0 + 304);
}

uint64_t OUTLINED_FUNCTION_72_2()
{
}

uint64_t OUTLINED_FUNCTION_73_1()
{

  return outlined init with take of DeviceState((v0 + 184), v1 + 144);
}

uint64_t GetContactDirectInvocationsModel.init(contact:)(void *a1)
{
  v93 = &type metadata for InstalledAppsProvider;
  v94 = &protocol witness table for InstalledAppsProvider;
  v1 = [a1 emailAddresses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = specialized Array._getCount()(v2);
  if (v3)
  {
    v4 = v3;
    if (v3 < 1)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v5 = 0;
    v6 = MEMORY[0x277D84F98];
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x26D5E29D0](v5, v2);
      }

      else
      {
        v7 = *(v2 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = [v7 value];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      AppUtil.buildPunchoutFor(emailAddress:)();
      v11 = v10;

      if (v11)
      {
        v12 = [v8 identifier];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v13 = v11;
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_0_46();
      }

      ++v5;
      v14 = [v8 identifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v15 = [v8 value];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      static AppUtil.buildMessagesPunchoutFor(handleString:)();

      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_0_46();
    }

    while (v4 != v5);
  }

  else
  {
    v6 = MEMORY[0x277D84F98];
  }

  v16 = [a1 phoneNumbers];
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v87 = v17;
  v18 = specialized Array._getCount()(v17);
  if (!v18)
  {
LABEL_27:

    v48 = [a1 postalAddresses];
    v49 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v88 = v49;
    v50 = specialized Array._getCount()(v49);
    if (v50)
    {
      v51 = v50;
      if (v50 < 1)
      {
        goto LABEL_54;
      }

      v52 = 0;
      v53 = MEMORY[0x277D84F98];
      v84 = v50;
      v86 = v49 & 0xC000000000000001;
      do
      {
        if (v86)
        {
          v54 = MEMORY[0x26D5E29D0](v52, v88);
        }

        else
        {
          v54 = *(v88 + 8 * v52 + 32);
        }

        v55 = v54;
        AppUtil.buildPunchoutFor(labeledAddress:contact:)();
        if (v56)
        {
          v57 = v56;
          v58 = [v55 identifier];
          v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v61 = v60;

          v62 = v57;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v91 = v53;
          v64 = specialized __RawDictionaryStorage.find<A>(_:)();
          v66 = v53[2];
          v67 = (v65 & 1) == 0;
          v68 = v66 + v67;
          if (__OFADD__(v66, v67))
          {
            goto LABEL_49;
          }

          v69 = v64;
          v70 = v65;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSo15SAUIAppPunchOutCGMd, &_ss17_NativeDictionaryVySSSo15SAUIAppPunchOutCGMR);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v68))
          {
            v71 = specialized __RawDictionaryStorage.find<A>(_:)();
            if ((v70 & 1) != (v72 & 1))
            {
              goto LABEL_55;
            }

            v69 = v71;
          }

          v53 = v91;
          if (v70)
          {
            v73 = v91[7];
            v74 = *(v73 + 8 * v69);
            *(v73 + 8 * v69) = v62;

            v55 = v74;
          }

          else
          {
            v91[(v69 >> 6) + 8] |= 1 << v69;
            v75 = (v91[6] + 16 * v69);
            *v75 = v59;
            v75[1] = v61;
            *(v91[7] + 8 * v69) = v62;
            v76 = v91[2];
            v46 = __OFADD__(v76, 1);
            v77 = v76 + 1;
            if (v46)
            {
              goto LABEL_51;
            }

            v91[2] = v77;
          }

          v51 = v84;
        }

        else
        {
        }

        ++v52;
      }

      while (v51 != v52);
    }

    v78 = [a1 identifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    AppUtil.buildPunchoutFor(contactIdentifier:)();
    v80 = v79;

    if (v80)
    {
      type metadata accessor for SAUIAppPunchOut();
      v81 = v80;
      SAClientBoundCommand.data.getter();
    }

    GetContactDirectInvocationsModel.init(contactCardPunchout:sendEmailPunchouts:sendMessagePunchouts:navigationPunchouts:)();

    return outlined destroy of AppUtil(v92);
  }

  if (v18 >= 1)
  {
    v19 = v6;
    v20 = 0;
    v83 = v18;
    v85 = v17 & 0xC000000000000001;
    while (1)
    {
      v21 = v85 ? MEMORY[0x26D5E29D0](v20, v87) : *(v87 + 8 * v20 + 32);
      v22 = v21;
      v23 = [v21 value];
      v24 = [v23 stringValue];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      static AppUtil.buildMessagesPunchoutFor(handleString:)();
      v26 = v25;

      v27 = [v22 identifier];
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      v31 = v26;
      v32 = swift_isUniquelyReferenced_nonNull_native();
      v90 = v19;
      v33 = specialized __RawDictionaryStorage.find<A>(_:)();
      v35 = v19[2];
      v36 = (v34 & 1) == 0;
      v37 = v35 + v36;
      if (__OFADD__(v35, v36))
      {
        break;
      }

      v38 = v33;
      v39 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSo15SAUIAppPunchOutCGMd, &_ss17_NativeDictionaryVySSSo15SAUIAppPunchOutCGMR);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v32, v37))
      {
        v40 = specialized __RawDictionaryStorage.find<A>(_:)();
        if ((v39 & 1) != (v41 & 1))
        {
          goto LABEL_55;
        }

        v38 = v40;
      }

      v19 = v90;
      if (v39)
      {
        v42 = v90[7];
        v43 = *(v42 + 8 * v38);
        *(v42 + 8 * v38) = v31;

        v22 = v43;
      }

      else
      {
        v90[(v38 >> 6) + 8] |= 1 << v38;
        v44 = (v90[6] + 16 * v38);
        *v44 = v28;
        v44[1] = v30;
        *(v90[7] + 8 * v38) = v31;
        v45 = v90[2];
        v46 = __OFADD__(v45, 1);
        v47 = v45 + 1;
        if (v46)
        {
          goto LABEL_50;
        }

        v90[2] = v47;
      }

      ++v20;

      if (v83 == v20)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t type metadata accessor for SAUIAppPunchOut()
{
  result = lazy cache variable for type metadata for SAUIAppPunchOut;
  if (!lazy cache variable for type metadata for SAUIAppPunchOut)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SAUIAppPunchOut);
  }

  return result;
}

void OUTLINED_FUNCTION_0_46()
{

  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v0, v1, v2);
}

uint64_t getEnumTagSinglePayload for CompactViews(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CompactViews(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void CompactViews.buildGetAttributeSnippet(handles:contact:contactAttribute:localeString:)()
{
  OUTLINED_FUNCTION_15();
  v2 = type metadata accessor for Signpost.OpenSignpost();
  v3 = OUTLINED_FUNCTION_10_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_43();
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2();
  }

  static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_18_2();
  v6 = v0 + *(v2 + 20);
  *v6 = "BuildGetAttributeSnippetIOS";
  *(v6 + 8) = 27;
  *(v6 + 16) = 2;
  CompactViews.buildCardSections(handles:contact:contactAttribute:localeString:)();
  OUTLINED_FUNCTION_5_37();
  if (specialized Array._getCount()(v7))
  {
    v8 = v1[4];
    v9 = v1[5];
    __swift_project_boxed_opaque_existential_1(v1 + 1, v8);
    (*(v9 + 8))(v8, v9);
    type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SACardSnippet, 0x277D47200);
    static SACardSnippet.makeFromCardSections(cardSections:shouldGenerateAceId:sashBundleId:referencedCommands:)();
  }

  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_18_2();
  outlined destroy of Signpost.OpenSignpost(v0);
  OUTLINED_FUNCTION_14();
}

Swift::tuple_OpaquePointer_OpaquePointer __swiftcall CompactViews.buildCompactForgetRelationshipView(relatedContactName:meCardName:meCardContactID:)(Swift::String_optional relatedContactName, Swift::String meCardName, Swift::String meCardContactID)
{
  OUTLINED_FUNCTION_15();
  v6 = v4;
  v34 = v7;
  v35 = v8;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  OUTLINED_FUNCTION_10_1(v36);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_16_13();
  v13 = OUTLINED_FUNCTION_10_1(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_43();
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2();
  }

  static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_18_2();
  v16 = v3 + *(v12 + 20);
  *v16 = "BuildForgetRelationshipViewIOS";
  *(v16 + 8) = 30;
  *(v16 + 16) = 2;
  AppUtil.buildPunchoutFor(contactIdentifier:)();
  v37 = v6;
  if (v17)
  {
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v19 = OUTLINED_FUNCTION_7_21();
    *(v19 + 16) = xmmword_266966A40;
    *(v19 + 32) = v18;
    v20 = OUTLINED_FUNCTION_8_24();
    *(v20 + 16) = xmmword_266966A40;
    v21 = v18;
    *(v20 + 32) = static CasinoFactory.makeReferentialAbstractCommand(originalCommand:)();
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v22 = OUTLINED_FUNCTION_7_21();
  *(v22 + 16) = xmmword_266966A40;
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFRichText, 0x277D4C598);

  v23 = @nonobjc SFFormattedText.__allocating_init(string:)(v34, v35);
  v24 = OUTLINED_FUNCTION_8_24();
  *(v24 + 16) = xmmword_266966A40;

  OUTLINED_FUNCTION_13_19();
  *(v24 + 32) = SFRichText.init(string:bold:color:)(v25, v26, v27, v28);
  v29 = *v37;
  ContactsLabelCATs.relationshipRemoved()();
  Result<>.firstPrint.getter();
  OUTLINED_FUNCTION_30_3();
  outlined destroy of Result<TemplatingResult, Error>(v5, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  if (!"BuildForgetRelationshipViewIOS")
  {
    static String.EMPTY.getter();
    OUTLINED_FUNCTION_30_3();
  }

  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFDetailedRowCardSection, 0x277D4C328);
  v30 = @nonobjc SFFormattedText.__allocating_init(string:)(v5, "BuildForgetRelationshipViewIOS");
  *(v22 + 32) = SFDetailedRowCardSection.init(title:descriptions:commands:thumbnail:footnote:action:trailingMiddleText:)(v23, v24, v20, 0, v30, 0, 0);
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_18_2();
  outlined destroy of Signpost.OpenSignpost(v3);
  OUTLINED_FUNCTION_14();
  result._1._rawValue = v32;
  result._0._rawValue = v31;
  return result;
}

Swift::tuple_OpaquePointer_OpaquePointer __swiftcall CompactViews.buildCompactSetRelationshipView(relatedContactName:meCardName:relationship:meCardContactID:)(Swift::String_optional relatedContactName, Swift::String meCardName, Swift::String_optional relationship, Swift::String meCardContactID)
{
  OUTLINED_FUNCTION_15();
  v6 = v4;
  v52[1] = v7;
  *&v53 = v8;
  v10 = v9;
  *&v54 = v11;
  v59 = v12;
  v60 = v13;
  v57 = v14;
  v58 = v15;
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v17);
  v19 = v52 - v18;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  OUTLINED_FUNCTION_10_1(v56);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v22);
  v23 = OUTLINED_FUNCTION_17_14();
  v24 = OUTLINED_FUNCTION_10_1(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2();
  }

  v29 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  v55 = v29;
  os_signpost(_:dso:log:name:signpostID:)();
  v30 = &v28[*(v23 + 20)];
  *v30 = "BuildSetRelationshipViewIOS";
  *(v30 + 1) = 27;
  v30[16] = 2;
  AppUtil.buildPunchoutFor(contactIdentifier:)();
  if (v31)
  {
    v32 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v33 = OUTLINED_FUNCTION_4_21();
    v53 = xmmword_266966A40;
    *(v33 + 16) = xmmword_266966A40;
    *(v33 + 32) = v32;
    v34 = OUTLINED_FUNCTION_4_21();
    *(v34 + 16) = v53;
    v35 = v32;
    *(v34 + 32) = static CasinoFactory.makeReferentialAbstractCommand(originalCommand:)();
  }

  else
  {
    v34 = MEMORY[0x277D84F90];
  }

  v36 = *v6;
  if (!v10)
  {
    static String.EMPTY.getter();
  }

  SpeakableString.init(print:speak:)();
  v37 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v37);
  ContactsLabelCATs.relationship(relationship:)(v19);
  outlined destroy of Result<TemplatingResult, Error>(v19, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v38 = OUTLINED_FUNCTION_4_21();
  v54 = xmmword_266966A40;
  *(v38 + 16) = xmmword_266966A40;
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFDetailedRowCardSection, 0x277D4C328);
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFRichText, 0x277D4C598);
  v39 = v58;

  v40 = @nonobjc SFFormattedText.__allocating_init(string:)(v57, v39);
  v41 = OUTLINED_FUNCTION_4_21();
  *(v41 + 16) = v54;

  OUTLINED_FUNCTION_13_19();
  *(v41 + 32) = SFRichText.init(string:bold:color:)(v42, v43, v44, v45);
  v46 = Result<>.firstPrint.getter();
  v48 = @nonobjc SFFormattedText.__allocating_init(string:)(v46, v47);
  *(v38 + 32) = SFDetailedRowCardSection.init(title:descriptions:commands:thumbnail:footnote:action:trailingMiddleText:)(v40, v41, v34, 0, v48, 0, 0);
  outlined destroy of Result<TemplatingResult, Error>(v5, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  outlined destroy of Signpost.OpenSignpost(v28);
  OUTLINED_FUNCTION_14();
  result._1._rawValue = v50;
  result._0._rawValue = v49;
  return result;
}

Swift::tuple_OpaquePointer_OpaquePointer __swiftcall CompactViews.buildCompactSetNickNameView(newNickName:meCardName:meCardContactID:)(Swift::String newNickName, Swift::String meCardName, Swift::String meCardContactID)
{
  OUTLINED_FUNCTION_15();
  v7 = v6;
  v9 = v8;
  v38 = v10;
  v39 = v11;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  OUTLINED_FUNCTION_10_1(v41);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v14);
  v15 = OUTLINED_FUNCTION_16_13();
  v16 = OUTLINED_FUNCTION_10_1(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_43();
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2();
  }

  static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_18_2();
  v19 = v3 + *(v15 + 20);
  *v19 = "BuildSetNickNameViewIOS";
  *(v19 + 8) = 23;
  *(v19 + 16) = 2;
  v42 = v4;
  AppUtil.buildPunchoutFor(contactIdentifier:)();
  v40 = v9;
  if (v20)
  {
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v22 = OUTLINED_FUNCTION_7_21();
    *(v22 + 16) = xmmword_266966A40;
    *(v22 + 32) = v21;
    v23 = OUTLINED_FUNCTION_8_24();
    *(v23 + 16) = xmmword_266966A40;
    v24 = v21;
    *(v23 + 32) = static CasinoFactory.makeReferentialAbstractCommand(originalCommand:)();
  }

  else
  {
    v23 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v25 = OUTLINED_FUNCTION_7_21();
  *(v25 + 16) = xmmword_266966A40;
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFRichText, 0x277D4C598);

  v26 = @nonobjc SFFormattedText.__allocating_init(string:)(v38, v39);
  v27 = OUTLINED_FUNCTION_8_24();
  *(v27 + 16) = xmmword_266966A40;

  OUTLINED_FUNCTION_13_19();
  *(v27 + 32) = SFRichText.init(string:bold:color:)(v28, v29, v30, v31);
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFContactImage, 0x277D4C2D0);

  v32 = SFContactImage.init(contactId:size:)(v40, v7, 0, 0, 1);
  v33 = *v42;
  ContactsLabelCATs.nickName()();
  Result<>.firstPrint.getter();
  OUTLINED_FUNCTION_30_3();
  outlined destroy of Result<TemplatingResult, Error>(v5, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  if (!"BuildSetNickNameViewIOS")
  {
    static String.EMPTY.getter();
    OUTLINED_FUNCTION_30_3();
  }

  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFDetailedRowCardSection, 0x277D4C328);
  v34 = @nonobjc SFFormattedText.__allocating_init(string:)(v5, "BuildSetNickNameViewIOS");
  *(v25 + 32) = SFDetailedRowCardSection.init(title:descriptions:commands:thumbnail:footnote:action:trailingMiddleText:)(v26, v27, v23, v32, v34, 0, 0);
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_18_2();
  outlined destroy of Signpost.OpenSignpost(v3);
  OUTLINED_FUNCTION_14();
  result._1._rawValue = v36;
  result._0._rawValue = v35;
  return result;
}

void CompactViews.buildCompactConfirmationView(attributeType:)()
{
  OUTLINED_FUNCTION_15();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  OUTLINED_FUNCTION_10_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_17_14();
  v10 = OUTLINED_FUNCTION_10_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_43();
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2();
  }

  static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_18_2();
  v13 = v0 + *(v9 + 20);
  *v13 = "BuildConfirmationViewIOS";
  *(v13 + 8) = 24;
  *(v13 + 16) = 2;
  v14 = *v1;
  type metadata accessor for SiriKitAceViewBuilder();

  SiriKitAceViewBuilder.__allocating_init()();
  GenericViews.getConfirmText(forAttribute:)(v4);
  v15 = static ContactsDirectInvocations.confirm()();
  dispatch thunk of SiriKitAceViewBuilder.addButton(label:command:)();

  ContactsLabelCATs.cancel()();
  Result<>.firstPrint.getter();
  v17 = v16;
  outlined destroy of Result<TemplatingResult, Error>(v2, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  if (!v17)
  {
    static String.EMPTY.getter();
  }

  v18 = static ContactsDirectInvocations.deny()();
  dispatch thunk of SiriKitAceViewBuilder.addButton(label:command:)();

  dispatch thunk of SiriKitAceViewBuilder.build()();

  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_18_2();
  outlined destroy of Signpost.OpenSignpost(v0);
  OUTLINED_FUNCTION_14();
}

uint64_t static CompactViews.formatPhoneNumberForDisplay(_:)(uint64_t a1, void *a2)
{
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for CNPhoneNumber, 0x277CBDB70);

  v4._countAndFlagsBits = a1;
  v4._object = a2;
  v5.super.isa = CNPhoneNumber.__allocating_init(stringValue:)(v4).super.isa;
  v6 = [(objc_class *)v5.super.isa formattedStringValue];
  if (v6)
  {
    v7 = v6;
    a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
  }

  return a1;
}

void CompactViews.buildCardSections(handles:contact:contactAttribute:localeString:)()
{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  v59 = v3;
  v60 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = type metadata accessor for Signpost.OpenSignpost();
  v12 = OUTLINED_FUNCTION_10_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_43();
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2();
  }

  static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_18_2();
  v15 = v0 + *(v11 + 20);
  *v15 = "BuildCardSectionsIOS";
  *(v15 + 8) = 20;
  *(v15 + 16) = 2;
  switch([v6 contactAttributeType])
  {
    case 1uLL:
      if (!v10 || !specialized Array._getCount()(v10))
      {
        goto LABEL_25;
      }

      if (specialized Array._getCount()(v10) == 1)
      {
        OUTLINED_FUNCTION_6_32();
        MEMORY[0x26D5E29D0](0, v10);
        v44 = OUTLINED_FUNCTION_3_30();
        CompactViews.buildEmailSingleAttributeSnippet(contact:emailAddress:localeString:)(v44, v45, v46, v47);
        goto LABEL_24;
      }

      CompactViews.buildEmailMultipleAttributesSnippet(contact:emailAddresses:localeString:)(v8, v10, v59, v60);
      goto LABEL_27;
    case 2uLL:
      if (!v10 || !specialized Array._getCount()(v10))
      {
        goto LABEL_25;
      }

      if (specialized Array._getCount()(v10) != 1)
      {
        static CompactViews.buildPhoneMultipleAttributesSnippet(contact:phoneNumbers:localeString:)(v8, v10, v59, v60);
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_6_32();
      MEMORY[0x26D5E29D0](0, v10);
      v36 = OUTLINED_FUNCTION_3_30();
      CompactViews.buildPhoneSingleAttributeSnippet(contact:phoneNumber:localeString:)(v36, v37, v38, v39);
LABEL_24:
      OUTLINED_FUNCTION_5_37();

      goto LABEL_34;
    case 3uLL:
      if (!v10 || !specialized Array._getCount()(v10))
      {
LABEL_25:
        v16 = v8;
        v17 = 1;
LABEL_26:
        CompactViews.buildNameAttributeSnippet(contact:withActionsItems:)(v16, v17);
LABEL_27:
        OUTLINED_FUNCTION_5_37();
        if (v48 >> 62)
        {
          goto LABEL_35;
        }

LABEL_28:

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFCardSection, 0x277D4C238);
        goto LABEL_29;
      }

      if (specialized Array._getCount()(v10) == 1)
      {
        OUTLINED_FUNCTION_6_32();
        v40 = MEMORY[0x26D5E29D0](0, v10);
        v41 = [v40 postalAddress];

        if (v41)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
          v42 = v41;
          v43 = CNLabeledValue<>.init(address:)(v42);
          CompactViews.buildAddressSingleAttributeSnippet(contact:postalAddress:localeString:)(v8, v43, v59, v60);
          OUTLINED_FUNCTION_5_37();

          if (!(v8 >> 62))
          {

            dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
            type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFCardSection, 0x277D4C238);

            goto LABEL_29;
          }

          type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFCardSection, 0x277D4C238);

          _bridgeCocoaArray<A>(_:)();

          goto LABEL_36;
        }
      }

      Array<A>.toCNPostalAddresses.getter(v10);
      v55 = OUTLINED_FUNCTION_3_30();
      CompactViews.buildAddressMultipleAttributesSnippet(contact:postalAddresses:localeString:)(v55, v56, v57, v58);
      OUTLINED_FUNCTION_5_37();
LABEL_33:

LABEL_34:
      if (!(v8 >> 62))
      {
        goto LABEL_28;
      }

LABEL_35:
      type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFCardSection, 0x277D4C238);

      _bridgeCocoaArray<A>(_:)();
LABEL_36:

LABEL_29:

      static os_signpost_type_t.end.getter();
      OUTLINED_FUNCTION_18_2();
      outlined destroy of Signpost.OpenSignpost(v0);
      OUTLINED_FUNCTION_14();
      return;
    case 4uLL:
      type metadata accessor for ContactsAgeInfo();
      v49 = *(v2 + 48);
      v50 = v49;
      v8 = v8;
      ContactsAgeInfo.__allocating_init(contact:contactAttribute:mockGlobals:)(v8, v6, v49);
      static CompactViews.formattedAgeDigit(_:)();
      v52 = v51;
      v54 = v53;

      CompactViews.buildAgeAttributeSnippet(contact:requestedAge:)(v8, v52, v54);
      OUTLINED_FUNCTION_5_37();
      goto LABEL_33;
    case 5uLL:
      CompactViews.buildBirthdayAttributeSnippet(contact:)(v8);
      goto LABEL_27;
    case 6uLL:
      v18 = [v8 nickname];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v22 = HIBYTE(v21) & 0xF;
      if ((v21 & 0x2000000000000000) == 0)
      {
        v22 = v19 & 0xFFFFFFFFFFFFLL;
      }

      if (!v22)
      {
        goto LABEL_9;
      }

      v23 = [v8 nickname];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v27 = CNContact.formattedFullName.getter();
      v29 = v28;
      v8 = [v8 identifier];
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      v33._countAndFlagsBits = v24;
      v33._object = v26;
      v34._countAndFlagsBits = v27;
      v34._object = v29;
      v35._countAndFlagsBits = v30;
      v35._object = v32;
      CompactViews.buildCompactSetNickNameView(newNickName:meCardName:meCardContactID:)(v33, v34, v35);
      OUTLINED_FUNCTION_5_37();

      goto LABEL_33;
    case 9uLL:
    case 0xBuLL:
      v16 = v8;
      v17 = 0;
      goto LABEL_26;
    default:
LABEL_9:
      v17 = [v6 contactAttributeType] == 0;
      v16 = v8;
      goto LABEL_26;
  }
}

uint64_t CompactViews.buildPhoneSingleAttributeSnippet(contact:phoneNumber:localeString:)(void *a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v60 = a1;
  v7 = type metadata accessor for CATOption();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v59 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Signpost.OpenSignpost();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for contactsLog != -1)
  {
    swift_once();
  }

  v14 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v15 = &v13[*(v10 + 20)];
  *v15 = "BuildPhoneSingleAttributeSnippetIOS";
  *(v15 + 1) = 35;
  v15[16] = 2;
  v58 = a2;
  v16 = outlined bridged method (pb) of @objc ContactAttribute.handleValue.getter(a2);
  if (v17)
  {
    v18 = v17;
    v19 = v16;
    v20 = [v60 identifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    AppUtil.buildPunchoutFor(contactIdentifier:)();
    v22 = v21;

    v56 = a4;
    v57 = v14;
    v55 = a3;
    if (v22)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v23 = swift_allocObject();
      v53 = xmmword_266966A40;
      *(v23 + 16) = xmmword_266966A40;
      v54 = v23;
      *(v23 + 32) = v22;
      v24 = swift_allocObject();
      *(v24 + 16) = v53;
      v25 = v22;
      v26 = static CasinoFactory.makeReferentialAbstractCommand(originalCommand:)();
      *&v53 = v24;
      *(v24 + 32) = v26;
    }

    else
    {
      *&v53 = MEMORY[0x277D84F90];
      v54 = MEMORY[0x277D84F90];
    }

    v52 = v19;
    v28 = static CompactViews.formatPhoneNumberForDisplay(_:)(v19, v18);
    v30 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v27 = swift_allocObject();
    v49 = xmmword_266966A40;
    *(v27 + 16) = xmmword_266966A40;
    v51 = type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFDetailedRowCardSection, 0x277D4C328);
    type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFRichText, 0x277D4C598);
    v50 = SFRichText.init(string:bold:color:)(v28, v30, 1, 4);
    v31 = swift_allocObject();
    *(v31 + 16) = v49;
    v32 = v60;
    v33 = CNContact.formattedFullName.getter();
    *(v31 + 32) = SFRichText.init(string:bold:color:)(v33, v34, 0, 0);
    type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFContactImage, 0x277D4C2D0);
    v35 = [v32 identifier];
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v39 = SFContactImage.init(contactId:size:)(v36, v38, 0, 0, 1);
    type metadata accessor for ContactsLabelCATs();
    static CATOption.defaultMode.getter();
    v40 = CATWrapper.__allocating_init(options:globals:)();
    v41 = outlined bridged method (pb) of @objc ContactAttribute.handleLabel.getter(v58);
    v43 = LabelMapper.localizedLabel(handleLabel:localeString:type:)(v41, v42, v55, v56, 2, v40);
    v45 = v44;

    v46 = @nonobjc SFFormattedText.__allocating_init(string:)(v43, v45);
    type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFActionItem, 0x277D4C1A8);
    v47 = SFActionItem.init(phoneNumber:)(v52, v18);
    *(v27 + 32) = SFDetailedRowCardSection.init(title:descriptions:commands:thumbnail:footnote:action:trailingMiddleText:)(v50, v31, v53, v39, v46, v47, 0);
  }

  else
  {
    v27 = MEMORY[0x277D84F90];
  }

  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  outlined destroy of Signpost.OpenSignpost(v13);
  return v27;
}

uint64_t static CompactViews.buildPhoneMultipleAttributesSnippet(contact:phoneNumbers:localeString:)(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v50 = a3;
  v51 = a4;
  v6 = type metadata accessor for CATOption();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v49 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Signpost.OpenSignpost();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for contactsLog != -1)
  {
    swift_once();
  }

  v13 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v14 = &v12[*(v9 + 20)];
  *v14 = "BuildPhoneMultipleAttributesSnippetIOS";
  *(v14 + 1) = 38;
  v14[16] = 2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v15 = swift_allocObject();
  v47 = xmmword_266966A40;
  *(v15 + 16) = xmmword_266966A40;
  *(v15 + 32) = static CompactViews.buildHeaderItem(contact:)(a1);
  v55 = v15;
  v54 = MEMORY[0x277D84F90];
  result = specialized Array._getCount()(a2);
  v43 = v13;
  v44 = v12;
  if (!result)
  {
    goto LABEL_16;
  }

  v17 = result;
  if (result >= 1)
  {
    v18 = 0;
    v52 = a2 & 0xC000000000000001;
    v45 = result;
    v46 = a2;
    do
    {
      if (v52)
      {
        v19 = MEMORY[0x26D5E29D0](v18, a2);
      }

      else
      {
        v19 = *(a2 + 8 * v18 + 32);
      }

      v20 = v19;
      v21 = outlined bridged method (pb) of @objc ContactAttribute.handleValue.getter(v19);
      if (v22)
      {
        v23 = v21;
        v24 = v22;
        static AppUtil.buildPunchoutFor(phoneNumber:)();
        v26 = v25;
        v53 = type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFRowCardSection, 0x277D4C5A8);
        v27 = static CompactViews.formatPhoneNumberForDisplay(_:)(v23, v24);
        v29 = v28;

        type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFRichText, 0x277D4C598);
        type metadata accessor for ContactsLabelCATs();
        static CATOption.defaultMode.getter();
        v30 = CATWrapper.__allocating_init(options:globals:)();
        v31 = outlined bridged method (pb) of @objc ContactAttribute.handleLabel.getter(v20);
        v33 = LabelMapper.localizedLabel(handleLabel:localeString:type:)(v31, v32, v50, v51, 2, v30);
        v35 = v34;

        v36 = @nonobjc SFFormattedText.__allocating_init(string:)(v33, v35);
        v37 = swift_allocObject();
        *(v37 + 16) = v47;
        v38 = v26;
        v39 = static CasinoFactory.makeReferentialAbstractCommand(originalCommand:)();

        *(v37 + 32) = v39;
        v40 = SFRowCardSection.init(blueTitle:subtitle:commands:)(v27, v29, v36, v37);
        MEMORY[0x26D5E25E0](v40);
        if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v41 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v15 = v55;
        MEMORY[0x26D5E25E0](v41);
        if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v17 = v45;
        a2 = v46;
      }

      ++v18;
    }

    while (v17 != v18);
LABEL_16:
    static os_signpost_type_t.end.getter();
    v42 = v44;
    os_signpost(_:dso:log:name:signpostID:)();
    outlined destroy of Signpost.OpenSignpost(v42);
    return v15;
  }

  __break(1u);
  return result;
}

uint64_t CompactViews.buildNameAttributeSnippet(contact:withActionsItems:)(void *a1, int a2)
{
  v37 = a2;
  v3 = type metadata accessor for Signpost.OpenSignpost();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for contactsLog != -1)
  {
    swift_once();
  }

  v7 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  v38 = v7;
  os_signpost(_:dso:log:name:signpostID:)();
  v8 = &v6[*(v3 + 20)];
  *v8 = "BuildNameAttributeSnippetIOS";
  *(v8 + 1) = 28;
  v8[16] = 2;
  v9 = [a1 identifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  AppUtil.buildPunchoutFor(contactIdentifier:)();
  v11 = v10;

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v12 = swift_allocObject();
    v35 = xmmword_266966A40;
    *(v12 + 16) = xmmword_266966A40;
    v36 = v12;
    *(v12 + 32) = v11;
    v13 = swift_allocObject();
    *(v13 + 16) = v35;
    v14 = v11;
    *(v13 + 32) = static CasinoFactory.makeReferentialAbstractCommand(originalCommand:)();
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
    v36 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v15 = swift_allocObject();
  v34 = xmmword_266966A40;
  *(v15 + 16) = xmmword_266966A40;
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFRichText, 0x277D4C598);
  v16 = CNContact.formattedFullName.getter();
  *&v35 = @nonobjc SFFormattedText.__allocating_init(string:)(v16, v17);
  v18 = swift_allocObject();
  *(v18 + 16) = v34;
  v19 = [a1 organizationName];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  *(v18 + 32) = SFRichText.init(string:bold:color:)(v20, v22, 0, 0);
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFContactImage, 0x277D4C2D0);
  v23 = [a1 identifier];
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  v27 = SFContactImage.init(contactId:size:)(v24, v26, 0, 0, 1);
  v28 = 0;
  if (v37)
  {
    v29 = [a1 identifier];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v28 = [objc_allocWithZone(MEMORY[0x277D4C1A8]) init];
    outlined bridged method (mbnn) of @objc SFActionItem.contactIdentifier.setter(v30, v32, v28);
  }

  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFDetailedRowCardSection, 0x277D4C328);
  *(v15 + 32) = SFDetailedRowCardSection.init(title:descriptions:commands:thumbnail:footnote:action:trailingMiddleText:)(v35, v18, v13, v27, 0, v28, 0);
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  outlined destroy of Signpost.OpenSignpost(v6);
  return v15;
}

uint64_t CompactViews.buildEmailSingleAttributeSnippet(contact:emailAddress:localeString:)(void *a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v57 = a1;
  v7 = type metadata accessor for CATOption();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v56 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Signpost.OpenSignpost();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for contactsLog != -1)
  {
    swift_once();
  }

  v14 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v15 = &v13[*(v10 + 20)];
  *v15 = "BuildEmailSingleAttributeSnippetIOS";
  *(v15 + 1) = 35;
  v15[16] = 2;
  v55 = a2;
  v16 = outlined bridged method (pb) of @objc ContactAttribute.handleValue.getter(a2);
  if (v17)
  {
    v18 = v17;
    v19 = v16;
    v20 = [v57 identifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    AppUtil.buildPunchoutFor(contactIdentifier:)();
    v22 = v21;

    v53 = a4;
    v54 = v14;
    v52 = a3;
    if (v22)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v23 = swift_allocObject();
      v50 = xmmword_266966A40;
      *(v23 + 16) = xmmword_266966A40;
      v51 = v23;
      *(v23 + 32) = v22;
      v24 = swift_allocObject();
      *(v24 + 16) = v50;
      v25 = v22;
      v26 = static CasinoFactory.makeReferentialAbstractCommand(originalCommand:)();
      *&v50 = v24;
      *(v24 + 32) = v26;
    }

    else
    {
      *&v50 = MEMORY[0x277D84F90];
      v51 = MEMORY[0x277D84F90];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v27 = swift_allocObject();
    v46 = xmmword_266966A40;
    *(v27 + 16) = xmmword_266966A40;
    v49 = type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFDetailedRowCardSection, 0x277D4C328);
    type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFRichText, 0x277D4C598);

    v47 = v19;
    v48 = SFRichText.init(string:bold:color:)(v19, v18, 1, 4);
    v28 = swift_allocObject();
    *(v28 + 16) = v46;
    v29 = v57;
    v30 = CNContact.formattedFullName.getter();
    *(v28 + 32) = SFRichText.init(string:bold:color:)(v30, v31, 0, 0);
    type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFContactImage, 0x277D4C2D0);
    v32 = [v29 identifier];
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    v36 = SFContactImage.init(contactId:size:)(v33, v35, 0, 0, 1);
    type metadata accessor for ContactsLabelCATs();
    static CATOption.defaultMode.getter();
    v37 = CATWrapper.__allocating_init(options:globals:)();
    v38 = outlined bridged method (pb) of @objc ContactAttribute.handleLabel.getter(v55);
    v40 = LabelMapper.localizedLabel(handleLabel:localeString:type:)(v38, v39, v52, v53, 1, v37);
    v42 = v41;

    v43 = @nonobjc SFFormattedText.__allocating_init(string:)(v40, v42);
    type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFActionItem, 0x277D4C1A8);
    v44 = SFActionItem.init(email:)(v47, v18);
    *(v27 + 32) = SFDetailedRowCardSection.init(title:descriptions:commands:thumbnail:footnote:action:trailingMiddleText:)(v48, v28, v50, v36, v43, v44, 0);
  }

  else
  {
    v27 = MEMORY[0x277D84F90];
  }

  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  outlined destroy of Signpost.OpenSignpost(v13);
  return v27;
}

uint64_t CompactViews.buildEmailMultipleAttributesSnippet(contact:emailAddresses:localeString:)(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v52 = a4;
  v51 = a3;
  v6 = type metadata accessor for CATOption();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v50 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Signpost.OpenSignpost();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for contactsLog != -1)
  {
    swift_once();
  }

  v13 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v14 = &v12[*(v9 + 20)];
  *v14 = "BuildEmailMultipleAttributesSnippetIOS";
  *(v14 + 1) = 38;
  v14[16] = 2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v15 = swift_allocObject();
  v45 = xmmword_266966A40;
  *(v15 + 16) = xmmword_266966A40;
  *(v15 + 32) = static CompactViews.buildHeaderItem(contact:)(a1);
  v58 = v15;
  v16 = MEMORY[0x277D84F90];
  v57 = MEMORY[0x277D84F90];
  result = specialized Array._getCount()(a2);
  v43 = v13;
  v44 = v12;
  if (!result)
  {
    v47 = v16;
LABEL_21:
    static os_signpost_type_t.end.getter();
    v42 = v44;
    os_signpost(_:dso:log:name:signpostID:)();
    outlined destroy of Signpost.OpenSignpost(v42);
    return v15;
  }

  v18 = result;
  if (result >= 1)
  {
    v19 = 0;
    v53 = a2 & 0xC000000000000001;
    v47 = MEMORY[0x277D84F90];
    v48 = result;
    v49 = a2;
    do
    {
      if (v53)
      {
        v20 = MEMORY[0x26D5E29D0](v19, a2);
      }

      else
      {
        v20 = *(a2 + 8 * v19 + 32);
      }

      v21 = v20;
      v22 = outlined bridged method (pb) of @objc ContactAttribute.handleValue.getter(v20);
      if (v23)
      {
        v24 = v22;
        v25 = v23;
        AppUtil.buildPunchoutFor(emailAddress:)();
        if (v26)
        {
          v27 = v26;
          MEMORY[0x26D5E25E0](v27);
          if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v47 = v57;
          v28 = swift_allocObject();
          *(v28 + 16) = v45;
          v29 = v27;
          v30 = static CasinoFactory.makeReferentialAbstractCommand(originalCommand:)();

          *(v28 + 32) = v30;
        }

        else
        {
          v28 = MEMORY[0x277D84F90];
        }

        v54 = type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFRowCardSection, 0x277D4C5A8);
        v55 = v24;
        v56 = v25;
        v31 = String.init<A>(_:)();
        v33 = v32;
        type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFRichText, 0x277D4C598);
        type metadata accessor for ContactsLabelCATs();
        static CATOption.defaultMode.getter();
        v34 = CATWrapper.__allocating_init(options:globals:)();
        v35 = outlined bridged method (pb) of @objc ContactAttribute.handleLabel.getter(v21);
        v37 = LabelMapper.localizedLabel(handleLabel:localeString:type:)(v35, v36, v51, v52, 1, v34);
        v39 = v38;

        v40 = @nonobjc SFFormattedText.__allocating_init(string:)(v37, v39);
        v41 = SFRowCardSection.init(blueTitle:subtitle:commands:)(v31, v33, v40, v28);
        MEMORY[0x26D5E25E0](v41);
        if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v15 = v58;
        v18 = v48;
        a2 = v49;
      }

      ++v19;
    }

    while (v18 != v19);
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t CompactViews.buildAddressSingleAttributeSnippet(contact:postalAddress:localeString:)(void *a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v46 = a4;
  v48 = a3;
  v6 = type metadata accessor for CATOption();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = type metadata accessor for Signpost.OpenSignpost();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for contactsLog != -1)
  {
    swift_once();
  }

  v12 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  v47 = v12;
  os_signpost(_:dso:log:name:signpostID:)();
  v13 = &v11[*(v8 + 20)];
  *v13 = "BuildAddressSingleAttributeSnippetIOS";
  *(v13 + 1) = 37;
  v13[16] = 2;
  AppUtil.buildPunchoutFor(labeledAddress:contact:)();
  if (v14)
  {
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v16 = swift_allocObject();
    v44 = xmmword_266966A40;
    *(v16 + 16) = xmmword_266966A40;
    v45 = v16;
    *(v16 + 32) = v15;
    v17 = swift_allocObject();
    *(v17 + 16) = v44;
    v18 = v15;
    v19 = static CasinoFactory.makeReferentialAbstractCommand(originalCommand:)();
    *&v44 = v17;
    *(v17 + 32) = v19;
  }

  else
  {
    *&v44 = MEMORY[0x277D84F90];
    v45 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v20 = swift_allocObject();
  v42 = xmmword_266966A40;
  *(v20 + 16) = xmmword_266966A40;
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFRichText, 0x277D4C598);
  v21 = CNLabeledValue<>.formattedString.getter();
  v43 = SFRichText.init(string:bold:color:)(v21, v22, 1, 0);
  v23 = swift_allocObject();
  *(v23 + 16) = v42;
  v24 = CNContact.formattedFullName.getter();
  *(v23 + 32) = SFRichText.init(string:bold:color:)(v24, v25, 0, 0);
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFContactImage, 0x277D4C2D0);
  v26 = [a1 identifier];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v30 = SFContactImage.init(contactId:size:)(v27, v29, 0, 0, 1);
  type metadata accessor for ContactsLabelCATs();
  static CATOption.defaultMode.getter();
  v31 = CATWrapper.__allocating_init(options:globals:)();
  v32 = [a2 label];
  if (v32)
  {
    v33 = v32;
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;
  }

  else
  {
    v34 = 0;
    v36 = 0;
  }

  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFDetailedRowCardSection, 0x277D4C328);
  v37 = LabelMapper.localizedLabel(handleLabel:localeString:type:)(v34, v36, v48, v46, 3, v31);
  v39 = v38;

  v40 = @nonobjc SFFormattedText.__allocating_init(string:)(v37, v39);
  *(v20 + 32) = SFDetailedRowCardSection.init(title:descriptions:commands:thumbnail:footnote:action:trailingMiddleText:)(v43, v23, v44, v30, v40, 0, 0);
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  outlined destroy of Signpost.OpenSignpost(v11);
  return v20;
}

uint64_t CompactViews.buildAddressMultipleAttributesSnippet(contact:postalAddresses:localeString:)(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v56 = a4;
  v55 = a3;
  v6 = type metadata accessor for CATOption();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v54 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Signpost.OpenSignpost();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for contactsLog != -1)
  {
    swift_once();
  }

  v13 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  v44[1] = v13;
  os_signpost(_:dso:log:name:signpostID:)();
  v14 = &v12[*(v9 + 20)];
  *v14 = "BuildAddressMultipleAttributesSnippetIOS";
  *(v14 + 1) = 40;
  v14[16] = 2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v15 = swift_allocObject();
  v45 = xmmword_266966A40;
  *(v15 + 16) = xmmword_266966A40;
  *(v15 + 32) = static CompactViews.buildHeaderItem(contact:)(a1);
  v58 = v15;
  v57 = MEMORY[0x277D84F90];
  v16 = specialized Array._getCount()(a2);
  if (!v16)
  {
    goto LABEL_21;
  }

  v17 = v16;
  v53 = type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFRowCardSection, 0x277D4C5A8);
  v52 = type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFRichText, 0x277D4C598);
  result = type metadata accessor for ContactsLabelCATs();
  v51 = result;
  if (v17 >= 1)
  {
    v44[0] = v12;
    v19 = 0;
    v48 = a2 & 0xC000000000000001;
    v47 = MEMORY[0x277D84F90];
    v49 = v17;
    v50 = a1;
    do
    {
      if (v48)
      {
        v20 = MEMORY[0x26D5E29D0](v19, a2);
      }

      else
      {
        v20 = *(a2 + 8 * v19 + 32);
      }

      v21 = v20;
      v22 = a2;
      AppUtil.buildPunchoutFor(labeledAddress:contact:)();
      if (v23)
      {
        v24 = v23;
        MEMORY[0x26D5E25E0]();
        if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v47 = v57;
        v25 = swift_allocObject();
        *(v25 + 16) = v45;
        v26 = v24;
        v27 = static CasinoFactory.makeReferentialAbstractCommand(originalCommand:)();

        *(v25 + 32) = v27;
      }

      else
      {
        v25 = MEMORY[0x277D84F90];
      }

      v28 = [objc_allocWithZone(MEMORY[0x277CBDB80]) init];
      v29 = [v21 value];
      v30 = [v28 stringFromPostalAddress_];

      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      static CATOption.defaultMode.getter();
      v34 = CATWrapper.__allocating_init(options:globals:)();
      v35 = [v21 label];
      if (v35)
      {
        v36 = v35;
        v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v39 = v38;
      }

      else
      {
        v37 = 0;
        v39 = 0;
      }

      v40 = LabelMapper.localizedLabel(handleLabel:localeString:type:)(v37, v39, v55, v56, 3, v34);
      v42 = v41;

      v43 = @nonobjc SFFormattedText.__allocating_init(string:)(v40, v42);
      SFRowCardSection.init(title:subtitle:commands:)(v31, v33, v43, v25);
      MEMORY[0x26D5E25E0]();
      if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v19;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v15 = v58;

      a2 = v22;
    }

    while (v49 != v19);
    v12 = v44[0];
LABEL_21:
    static os_signpost_type_t.end.getter();
    os_signpost(_:dso:log:name:signpostID:)();
    outlined destroy of Signpost.OpenSignpost(v12);
    return v15;
  }

  __break(1u);
  return result;
}

uint64_t CompactViews.buildBirthdayAttributeSnippet(contact:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v50 = &v44 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v44 - v9;
  v11 = type metadata accessor for Signpost.OpenSignpost();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for contactsLog != -1)
  {
    swift_once();
  }

  v15 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v16 = &v14[*(v11 + 20)];
  *v16 = "BuildBirthdayAttributeSnippetIOS";
  *(v16 + 1) = 32;
  v16[16] = 2;
  CNContact.timezonedBirthdate.getter(v10);
  v17 = type metadata accessor for Date();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v17);
  outlined destroy of Result<TemplatingResult, Error>(v10, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (EnumTagSinglePayload == 1)
  {
    v19 = CompactViews.buildNameAttributeSnippet(contact:withActionsItems:)(a1, 1);
  }

  else
  {
    v20 = [a1 identifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    AppUtil.buildPunchoutFor(contactIdentifier:)();
    v22 = v21;

    v48 = v4;
    v49 = v2;
    if (v22)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v23 = swift_allocObject();
      v47 = xmmword_266966A40;
      *(v23 + 16) = xmmword_266966A40;
      *(v23 + 32) = v22;
      v24 = swift_allocObject();
      *(v24 + 16) = v47;
      v25 = v22;
      v26 = static CasinoFactory.makeReferentialAbstractCommand(originalCommand:)();
      *&v47 = v24;
      *(v24 + 32) = v26;
    }

    else
    {
      *&v47 = MEMORY[0x277D84F90];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v19 = swift_allocObject();
    v44 = xmmword_266966A40;
    *(v19 + 16) = xmmword_266966A40;
    v46 = type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFDetailedRowCardSection, 0x277D4C328);
    type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFRichText, 0x277D4C598);
    v27 = CNContact.formattedBirthdateString.getter();
    v45 = @nonobjc SFFormattedText.__allocating_init(string:)(v27, v28);
    v29 = swift_allocObject();
    *(v29 + 16) = v44;
    v30 = CNContact.formattedFullName.getter();
    *(v29 + 32) = SFRichText.init(string:bold:color:)(v30, v31, 0, 0);
    type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFContactImage, 0x277D4C2D0);
    v32 = [a1 identifier];
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    v36 = SFContactImage.init(contactId:size:)(v33, v35, 0, 0, 1);
    v37 = v50;
    v38 = *v49;
    ContactsLabelCATs.birthday()();
    v39 = Result<>.firstPrint.getter();
    v41 = v40;
    outlined destroy of Result<TemplatingResult, Error>(v37, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
    v42 = @nonobjc SFFormattedText.__allocating_init(string:)(v39, v41);
    *(v19 + 32) = SFDetailedRowCardSection.init(title:descriptions:commands:thumbnail:footnote:action:trailingMiddleText:)(v45, v29, v47, v36, v42, 0, 0);
  }

  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  outlined destroy of Signpost.OpenSignpost(v14);
  return v19;
}

void static CompactViews.formattedAgeDigit(_:)()
{
  OUTLINED_FUNCTION_15();
  v1 = v0;
  v2 = type metadata accessor for CharacterSet();
  v3 = OUTLINED_FUNCTION_1_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v3);
  v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v38 - v11;
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v14);
  v16 = v38 - v15;
  v17 = type metadata accessor for Locale();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR);
  OUTLINED_FUNCTION_1_0(v19);
  v21 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v24);
  v26 = v38 - v25;
  if (v1)
  {
    if ((*(v1 + 40) & 1) == 0 && *(v1 + 32) >= 1.0)
    {
      v38[1] = *(v1 + 32);

      static Locale.autoupdatingCurrent.getter();
      lazy protocol witness table accessor for type Double and conformance Double();
      FloatingPointFormatStyle.init(locale:)();
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>();
      BinaryFloatingPoint.formatted<A>(_:)();

      (*(v21 + 8))(v26, v19);
      goto LABEL_13;
    }

    if (*(v1 + 56))
    {
      v27 = *(v1 + 56);
    }

    else
    {
      if (!*(v1 + 48) && !*(v1 + 24))
      {
        goto LABEL_13;
      }
    }

    v28 = COERCE_DOUBLE(dispatch thunk of DialogDuration.valueInYears.getter());
    if ((v29 & 1) != 0 || v28 < 1.0)
    {
    }

    else
    {
      dispatch thunk of DialogDuration.years.getter();
      v30 = type metadata accessor for SpeakableString();
      if (__swift_getEnumTagSinglePayload(v16, 1, v30) == 1)
      {

        outlined destroy of Result<TemplatingResult, Error>(v16, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
        goto LABEL_13;
      }

      v31 = SpeakableString.print.getter();
      v33 = v32;
      (*(*(v30 - 8) + 8))(v16, v30);
      v38[2] = v31;
      v38[3] = v33;
      static CharacterSet.decimalDigits.getter();
      CharacterSet.inverted.getter();
      v34 = *(v5 + 8);
      v34(v12, v2);
      lazy protocol witness table accessor for type String and conformance String();
      v35 = StringProtocol.components(separatedBy:)();
      v34(v10, v2);

      if (v35[2])
      {
        v36 = v35[4];
        v37 = v35[5];

        goto LABEL_13;
      }
    }
  }

LABEL_13:
  OUTLINED_FUNCTION_14();
}

id CompactViews.buildAgeAttributeSnippet(contact:requestedAge:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v57 = a3;
  v54 = a2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v6 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  v55 = &v51 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v51 - v13;
  v15 = type metadata accessor for Signpost.OpenSignpost();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for contactsLog != -1)
  {
    swift_once();
  }

  v19 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v20 = &v18[*(v15 + 20)];
  *v20 = "BuildAgeAttributeSnippetIOS";
  *(v20 + 1) = 27;
  v20[16] = 2;
  v21 = [a1 birthday];
  if (v21)
  {
    v22 = v21;
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  v24 = type metadata accessor for DateComponents();
  __swift_storeEnumTagSinglePayload(v12, v23, 1, v24);
  outlined init with take of DateComponents?(v12, v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v24) == 1)
  {
    outlined destroy of Result<TemplatingResult, Error>(v14, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
LABEL_8:
    v25 = CompactViews.buildNameAttributeSnippet(contact:withActionsItems:)(a1, 1);
LABEL_16:
    static os_signpost_type_t.end.getter();
    os_signpost(_:dso:log:name:signpostID:)();
    outlined destroy of Signpost.OpenSignpost(v18);
    return v25;
  }

  DateComponents.year.getter();
  v27 = v26;
  (*(*(v24 - 8) + 8))(v14, v24);
  if ((v27 & 1) != 0 || !v57)
  {
    goto LABEL_8;
  }

  v28 = [a1 identifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  AppUtil.buildPunchoutFor(contactIdentifier:)();
  v30 = v29;

  if (v30)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v31 = swift_allocObject();
    v53 = xmmword_266966A40;
    *(v31 + 16) = xmmword_266966A40;
    *(v31 + 32) = v30;
    v32 = swift_allocObject();
    *(v32 + 16) = v53;
    v33 = v30;
    v34 = static CasinoFactory.makeReferentialAbstractCommand(originalCommand:)();
    v52 = v32;
    *(v32 + 32) = v34;
  }

  else
  {
    v52 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v25 = swift_allocObject();
  v53 = xmmword_266966A40;
  *(v25 + 16) = xmmword_266966A40;
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFRichText, 0x277D4C598);
  v35 = CNContact.formattedFullName.getter();
  v51 = @nonobjc SFFormattedText.__allocating_init(string:)(v35, v36);
  v37 = swift_allocObject();
  *(v37 + 16) = v53;
  v38 = *v4;
  v39 = v55;
  ContactsLabelCATs.age()();
  v40 = Result<>.firstPrint.getter();
  v42 = v41;
  outlined destroy of Result<TemplatingResult, Error>(v39, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  result = @nonobjc SFFormattedText.__allocating_init(string:)(v40, v42);
  if (result)
  {
    v44 = result;
    type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFDetailedRowCardSection, 0x277D4C328);
    *(v37 + 32) = v44;
    type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFContactImage, 0x277D4C2D0);
    v45 = [a1 identifier];
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v47;

    v49 = SFContactImage.init(contactId:size:)(v46, v48, 0, 0, 1);
    type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFFormattedText, 0x277D4C3A0);
    v50 = @nonobjc SFFormattedText.__allocating_init(string:)(v54, v57);
    *(v25 + 32) = SFDetailedRowCardSection.init(title:descriptions:commands:thumbnail:footnote:action:trailingMiddleText:)(v51, v37, v52, v49, 0, 0, v50);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

id static CompactViews.buildHeaderItem(contact:)(void *a1)
{
  v2 = type metadata accessor for Signpost.OpenSignpost();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for contactsLog != -1)
  {
    swift_once();
  }

  v6 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v7 = &v5[*(v2 + 20)];
  *v7 = "BuildHeaderItemIOS";
  *(v7 + 1) = 18;
  v7[16] = 2;
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFRowCardSection, 0x277D4C5A8);
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFRichText, 0x277D4C598);
  v8 = CNContact.formattedFullName.getter();
  v10 = SFRichText.init(string:bold:color:)(v8, v9, 1, 0);
  type metadata accessor for CNContact(0, &lazy cache variable for type metadata for SFContactImage, 0x277D4C2D0);
  v11 = [a1 identifier];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = SFContactImage.init(contactId:size:)(v12, v14, 0x4041000000000000, 0x4041000000000000, 0);
  v16 = SFRowCardSection.init(leadingText:image:)(v10, v15);
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  outlined destroy of Signpost.OpenSignpost(v5);
  return v16;
}

unint64_t lazy protocol witness table accessor for type Double and conformance Double()
{
  result = lazy protocol witness table cache variable for type Double and conformance Double;
  if (!lazy protocol witness table cache variable for type Double and conformance Double)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Double and conformance Double);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>()
{
  result = lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>;
  if (!lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>);
  }

  return result;
}

void outlined bridged method (mbnn) of @objc SFActionItem.contactIdentifier.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x26D5E2470]();

  [a3 setContactIdentifier_];
}

uint64_t OUTLINED_FUNCTION_3_30()
{
  result = v0;
  v3 = *(v1 - 104);
  v4 = *(v1 - 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_32()
{

  return specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v0 & 0xC000000000000001) == 0, v0);
}

uint64_t OUTLINED_FUNCTION_7_21()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_8_24()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_16_13()
{

  return type metadata accessor for Signpost.OpenSignpost();
}

uint64_t OUTLINED_FUNCTION_17_14()
{

  return type metadata accessor for Signpost.OpenSignpost();
}

uint64_t ContactsError.errorDescription.getter()
{
  v1 = type metadata accessor for Parse();
  v104 = OUTLINED_FUNCTION_1_0(v1);
  v105 = v2;
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v104);
  v7 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v102 - v8;
  v10 = type metadata accessor for NLIntent();
  v11 = OUTLINED_FUNCTION_1_0(v10);
  v103 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_8();
  v17 = v16 - v15;
  v18 = type metadata accessor for Parse.DirectInvocation();
  v19 = OUTLINED_FUNCTION_1_0(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_8();
  v26 = v25 - v24;
  v27 = type metadata accessor for ContactsError();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_8();
  v31 = (v30 - v29);
  outlined init with copy of ContactsError(v0, v30 - v29);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_1_44();
      _StringGuts.grow(_:)(35);

      OUTLINED_FUNCTION_3_31();
      v62 = v68 - 12;
      goto LABEL_23;
    case 2u:
      OUTLINED_FUNCTION_1_44();
      _StringGuts.grow(_:)(28);

      OUTLINED_FUNCTION_3_31();
      v62 = v61 - 19;
LABEL_23:
      *&v110[0] = v62;
      *(&v110[0] + 1) = v60;
      goto LABEL_24;
    case 3u:
      OUTLINED_FUNCTION_1_44();
      _StringGuts.grow(_:)(62);
      OUTLINED_FUNCTION_7_22();
      OUTLINED_FUNCTION_4_32();
      v41 = v64 + 15;
      goto LABEL_20;
    case 4u:
      (*(v21 + 32))(v26, v31, v18);
      OUTLINED_FUNCTION_2_45();
      _StringGuts.grow(_:)(47);
      OUTLINED_FUNCTION_7_22();
      MEMORY[0x26D5E2570](0xD00000000000002DLL, 0x8000000266971930);
      _print_unlocked<A, B>(_:_:)();
      v0 = *&v110[0];
      (*(v21 + 8))(v26, v18);
      return v0;
    case 5u:
      OUTLINED_FUNCTION_1_44();
      _StringGuts.grow(_:)(57);
      OUTLINED_FUNCTION_7_22();
      OUTLINED_FUNCTION_4_32();
      MEMORY[0x26D5E2570](v72 | 2, v73 | 0x8000000000000000);
      v74 = OUTLINED_FUNCTION_22_0();
      MEMORY[0x26D5E2570](v74);

      v44 = 0x2E64656C69616620;
      v75 = 0xE800000000000000;
      goto LABEL_37;
    case 6u:
      OUTLINED_FUNCTION_1_44();
      _StringGuts.grow(_:)(49);

      *&v110[0] = 0xD000000000000018;
      *(&v110[0] + 1) = 0x8000000266971680;
      v82 = OUTLINED_FUNCTION_22_0();
      MEMORY[0x26D5E2570](v82);

      v44 = 0xD000000000000017;
      goto LABEL_36;
    case 7u:
      OUTLINED_FUNCTION_1_44();
      _StringGuts.grow(_:)(38);

      OUTLINED_FUNCTION_3_31();
      *&v110[0] = v66 - 10;
      *(&v110[0] + 1) = v65;
      v67 = OUTLINED_FUNCTION_22_0();
      MEMORY[0x26D5E2570](v67);
      goto LABEL_34;
    case 8u:
      v90 = *v31;
      v91 = v31[1];
      v93 = v31[2];
      v92 = v31[3];
      OUTLINED_FUNCTION_2_45();
      _StringGuts.grow(_:)(82);
      OUTLINED_FUNCTION_7_22();
      MEMORY[0x26D5E2570](0xD000000000000014, 0x80000002669715D0);
      MEMORY[0x26D5E2570](v90, v91);

      MEMORY[0x26D5E2570](0xD00000000000001FLL, 0x80000002669715F0);
      MEMORY[0x26D5E2570](v93, v92);

      v43 = " even though user is modifying ";
      v44 = 0xD00000000000001BLL;
      goto LABEL_36;
    case 9u:
      v51 = *v31;
      v52 = v31[1];
      v53 = v31[2];
      OUTLINED_FUNCTION_2_45();
      _StringGuts.grow(_:)(26);

      *&v110[0] = 0x20746F6C53;
      *(&v110[0] + 1) = 0xE500000000000000;
      v54 = OUTLINED_FUNCTION_22_0();
      MEMORY[0x26D5E2570](v54);

      OUTLINED_FUNCTION_4_32();
      MEMORY[0x26D5E2570](v55 - 28, v56 | 0x8000000000000000);
      v57 = _typeName(_:qualified:)();
      MEMORY[0x26D5E2570](v57);
      goto LABEL_25;
    case 0xAu:
      v84 = *v31;
      v85 = v31[1];
      v87 = v31[2];
      v86 = v31[3];
      OUTLINED_FUNCTION_2_45();
      _StringGuts.grow(_:)(50);

      OUTLINED_FUNCTION_3_31();
      *&v110[0] = v89 - 4;
      *(&v110[0] + 1) = v88;
      MEMORY[0x26D5E2570](v84, v85);

      MEMORY[0x26D5E2570](544175136, 0xE400000000000000);
      MEMORY[0x26D5E2570](v87, v86);
LABEL_34:

      v44 = 46;
      v75 = 0xE100000000000000;
      goto LABEL_37;
    case 0xBu:
      outlined init with take of Any(v31, v110);
      v106 = 0;
      v107 = 0xE000000000000000;
      _StringGuts.grow(_:)(53);
      v108 = v106;
      v109 = v107;
      MEMORY[0x26D5E2570](0xD00000000000001CLL, 0x80000002669714B0);
      outlined init with copy of Any(v110, &v106);
      v46 = String.init<A>(describing:)();
      MEMORY[0x26D5E2570](v46);

      MEMORY[0x26D5E2570](0xD000000000000017, 0x80000002669714D0);
      v0 = v108;
      __swift_destroy_boxed_opaque_existential_0Tm(v110);
      return v0;
    case 0xCu:
      v47 = v103;
      (*(v103 + 32))(v17, v31, v10);
      OUTLINED_FUNCTION_2_45();
      _StringGuts.grow(_:)(81);
      OUTLINED_FUNCTION_7_22();
      OUTLINED_FUNCTION_4_32();
      MEMORY[0x26D5E2570](v48 + 33, v49 | 0x8000000000000000);
      lazy protocol witness table accessor for type NLIntent and conformance NLIntent(&lazy protocol witness table cache variable for type NLIntent and conformance NLIntent, MEMORY[0x277D5F458]);
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x26D5E2570](v50);

      MEMORY[0x26D5E2570](46, 0xE100000000000000);
      v0 = *&v110[0];
      (*(v47 + 8))(v17, v10);
      return v0;
    case 0xDu:
      v77 = v104;
      v78 = v105;
      (*(v105 + 32))(v9, v31, v104);
      OUTLINED_FUNCTION_2_45();
      _StringGuts.grow(_:)(34);

      OUTLINED_FUNCTION_3_31();
      *&v110[0] = v80 - 13;
      *(&v110[0] + 1) = v79;
      (*(v78 + 16))(v7, v9, v77);
      OUTLINED_FUNCTION_22_0();
      v81 = String.init<A>(describing:)();
      MEMORY[0x26D5E2570](v81);

      v0 = *&v110[0];
      (*(v78 + 8))(v9, v77);
      return v0;
    case 0xEu:
      OUTLINED_FUNCTION_1_44();
      _StringGuts.grow(_:)(79);
      OUTLINED_FUNCTION_7_22();
      MEMORY[0x26D5E2570](0xD00000000000002ALL, 0x80000002669712C0);
      v42 = OUTLINED_FUNCTION_22_0();
      MEMORY[0x26D5E2570](v42);

      v43 = "ted unsupported reason of ";
      v44 = 0xD000000000000023;
      goto LABEL_36;
    case 0xFu:
      OUTLINED_FUNCTION_1_44();
      _StringGuts.grow(_:)(83);
      OUTLINED_FUNCTION_7_22();
      MEMORY[0x26D5E2570](0xD000000000000023, 0x8000000266971260);
      v63 = OUTLINED_FUNCTION_22_0();
      MEMORY[0x26D5E2570](v63);

      v43 = "ted intent type of ";
      v44 = 0xD00000000000002ELL;
LABEL_36:
      v75 = v43 | 0x8000000000000000;
LABEL_37:
      MEMORY[0x26D5E2570](v44, v75);
      return *&v110[0];
    case 0x10u:
      OUTLINED_FUNCTION_1_44();
      _StringGuts.grow(_:)(65);
      OUTLINED_FUNCTION_7_22();
      v40 = "BuildNameAttributeSnippetIOS";
      v41 = 0xD00000000000003FLL;
LABEL_20:
      MEMORY[0x26D5E2570](v41, v40 | 0x8000000000000000);
LABEL_24:
      v69 = OUTLINED_FUNCTION_22_0();
      MEMORY[0x26D5E2570](v69);
LABEL_25:

      return *&v110[0];
    case 0x11u:
      OUTLINED_FUNCTION_0_47();
      return v71 + 15;
    case 0x12u:
      OUTLINED_FUNCTION_0_47();
      return v83 + 40;
    case 0x13u:
      OUTLINED_FUNCTION_0_47();
      return v97 + 43;
    case 0x14u:
    case 0x15u:
      OUTLINED_FUNCTION_0_47();
      return v76 + 9;
    case 0x16u:
      OUTLINED_FUNCTION_0_47();
      return v95 + 13;
    case 0x17u:
      OUTLINED_FUNCTION_0_47();
      return v98 - 6;
    case 0x18u:
      OUTLINED_FUNCTION_0_47();
      return v59 | 0x10;
    case 0x19u:
      OUTLINED_FUNCTION_0_47();
      return v58 - 7;
    case 0x1Au:
    case 0x26u:
      OUTLINED_FUNCTION_0_47();
      return v100 - 4;
    case 0x1Bu:
      OUTLINED_FUNCTION_0_47();
      return v38 - 3;
    case 0x1Cu:
    case 0x1Eu:
    case 0x24u:
    case 0x25u:
      OUTLINED_FUNCTION_9_24();
      return v0;
    case 0x1Du:
      OUTLINED_FUNCTION_0_47();
      return v99 - 14;
    case 0x1Fu:
      OUTLINED_FUNCTION_0_47();
      return v70 - 2;
    case 0x20u:
      OUTLINED_FUNCTION_0_47();
      return v94 - 19;
    case 0x21u:
      OUTLINED_FUNCTION_0_47();
      return v45 - 26;
    case 0x22u:
      OUTLINED_FUNCTION_0_47();
      return v39 + 3;
    case 0x23u:
      OUTLINED_FUNCTION_0_47();
      return v37 - 10;
    case 0x27u:
      OUTLINED_FUNCTION_0_47();
      return v96 + 24;
    default:
      v32 = *v31;
      OUTLINED_FUNCTION_2_45();
      _StringGuts.grow(_:)(34);

      OUTLINED_FUNCTION_3_31();
      *&v110[0] = v34 - 13;
      *(&v110[0] + 1) = v33;
      v106 = v32;
      v35 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v36 = String.init<A>(describing:)();
      MEMORY[0x26D5E2570](v36);

      return *&v110[0];
  }
}

void fatalError(_:file:line:)(uint64_t (*a1)(void))
{
  v2 = a1();
  v4 = v3;
  if (one-time initialization token for siriContacts != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.siriContacts);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136315138;
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v4, &v13);

    *(v8 + 4) = v10;
    _os_log_impl(&dword_26686A000, v6, v7, "%s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x26D5E3300](v9, -1, -1);
    MEMORY[0x26D5E3300](v8, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  v11 = static FatalError.fatalErrorClosure;

  (a1)(v12);
  v11();
}

void (*static FatalError.fatalErrorClosure.getter())()
{
  swift_beginAccess();
  v0 = static FatalError.fatalErrorClosure;

  return v0;
}

uint64_t static FatalError.fatalErrorClosure.setter(void (*a1)(), uint64_t a2)
{
  OUTLINED_FUNCTION_10_29();
  static FatalError.fatalErrorClosure = a1;
  qword_281F246F0 = a2;
}

uint64_t key path getter for static FatalError.fatalErrorClosure : FatalError.Type@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = static FatalError.fatalErrorClosure;
  v2 = qword_281F246F0;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *a1 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed String, @unowned StaticString, @unowned UInt) -> (@unowned Never);
  a1[1] = v4;
}

uint64_t key path setter for static FatalError.fatalErrorClosure : FatalError.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  swift_beginAccess();
  static FatalError.fatalErrorClosure = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed String, @in_guaranteed StaticString, @in_guaranteed UInt) -> (@out Never);
  qword_281F246F0 = v3;
}

void thunk for @escaping @callee_guaranteed (@in_guaranteed String, @in_guaranteed StaticString, @in_guaranteed UInt) -> (@out Never)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, void (*a7)(void *, void *, uint64_t *))
{
  v10[0] = a1;
  v10[1] = a2;
  v8[0] = a3;
  v8[1] = a4;
  v9 = a5;
  v7 = a6;
  a7(v10, v8, &v7);
  __break(1u);
}

uint64_t type metadata accessor for ContactsError()
{
  result = type metadata singleton initialization cache for ContactsError;
  if (!type metadata singleton initialization cache for ContactsError)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of ContactsError(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactsError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static FatalError.replaceFatalError(closure:)(void (*a1)(), uint64_t a2)
{
  OUTLINED_FUNCTION_10_29();
  static FatalError.fatalErrorClosure = a1;
  qword_281F246F0 = a2;
}

uint64_t static FatalError.restoreFatalError()()
{
  swift_beginAccess();
  static FatalError.fatalErrorClosure = closure #1 in variable initialization expression of static FatalError.defaultFatalErrorClosure;
  qword_281F246F0 = 0;
}

uint64_t lazy protocol witness table accessor for type NLIntent and conformance NLIntent(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for FatalError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

void type metadata completion function for ContactsError()
{
  type metadata accessor for Error();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Parse.DirectInvocation();
    if (v1 <= 0x3F)
    {
      type metadata accessor for (String, String)();
      if (v2 <= 0x3F)
      {
        type metadata accessor for (String, @thick INIntent.Type)();
        if (v3 <= 0x3F)
        {
          type metadata accessor for (inputType: String, outputType: String)();
          if (v4 <= 0x3F)
          {
            type metadata accessor for NLIntent();
            if (v5 <= 0x3F)
            {
              type metadata accessor for Parse();
              if (v6 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

unint64_t type metadata accessor for Error()
{
  result = lazy cache variable for type metadata for Error;
  if (!lazy cache variable for type metadata for Error)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Error);
  }

  return result;
}

void type metadata accessor for (String, String)()
{
  if (!lazy cache variable for type metadata for (String, String))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (String, String));
    }
  }
}

void type metadata accessor for (String, @thick INIntent.Type)()
{
  if (!lazy cache variable for type metadata for (String, @thick INIntent.Type))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo8INIntentCXMTMd, &_sSo8INIntentCXMTMR);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (String, @thick INIntent.Type));
    }
  }
}

void type metadata accessor for (inputType: String, outputType: String)()
{
  if (!lazy cache variable for type metadata for (inputType: String, outputType: String))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (inputType: String, outputType: String));
    }
  }
}

void OUTLINED_FUNCTION_1_44()
{
  v2 = *v0;
  v3 = v0[1];
  *(v1 - 112) = 0;
  *(v1 - 104) = 0xE000000000000000;
}

void OUTLINED_FUNCTION_7_22()
{
  v1 = *(v0 - 104);
  *(v0 - 112) = *(v0 - 112);
  *(v0 - 104) = v1;
}

uint64_t OUTLINED_FUNCTION_10_29()
{

  return swift_beginAccess();
}

void AppUtil.buildPunchoutFor(contactIdentifier:)()
{
  OUTLINED_FUNCTION_15();
  v47 = v2;
  v48 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v5 = OUTLINED_FUNCTION_18_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_16();
  v45 = v8;
  MEMORY[0x28223BE20](v9);
  v46 = &v44 - v10;
  v11 = type metadata accessor for UUID();
  v12 = OUTLINED_FUNCTION_1_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_8();
  v17 = OUTLINED_FUNCTION_7_23();
  v18 = OUTLINED_FUNCTION_10_1(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_6_33();
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2();
  }

  v21 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  v49 = v21;
  OUTLINED_FUNCTION_18_2();
  v22 = v0 + *(v17 + 20);
  *v22 = "BuildPunchoutForContact";
  *(v22 + 8) = 23;
  *(v22 + 16) = 2;
  v23 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  outlined bridged method (ob) of @objc SABaseAceObject.aceId.getter(v23);
  if (v24)
  {
  }

  else
  {
    UUID.init()();
    v25 = UUID.uuidString.getter();
    v27 = v26;
    (*(v14 + 8))(v1, v11);
    outlined bridged method (mbnn) of @objc PostalAddress.street.setter(v25, v27, v23, &selRef_setAceId_);
  }

  v28 = v1[3];
  v29 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v28);
  if ((*(v29 + 8))(v28, v29))
  {
    if (v48)
    {
      v50 = 0xD000000000000012;
      v51 = 0x8000000266971BD0;
      MEMORY[0x26D5E2570](v47);
      v30 = v51;
      v31 = v46;
      URL.init(string:)();

      v32 = type metadata accessor for URL();
      __swift_getEnumTagSinglePayload(v31, 1, v32);
      OUTLINED_FUNCTION_12_18();
      if (!v34)
      {
        URL._bridgeToObjectiveC()(v33);
        v30 = v35;
        OUTLINED_FUNCTION_52(v32);
        (*(v36 + 8))(v31, v32);
      }

LABEL_18:
      [v23 setPunchOutUri_];

      goto LABEL_19;
    }

    outlined bridged method (mbnn) of @objc PostalAddress.street.setter(0xD00000000000001BLL, 0x800000026696E4A0, v23, &selRef_setBundleId_);
  }

  else
  {
    v37 = v1[3];
    v38 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v37);
    if ((*(v38 + 32))(v37, v38))
    {
      if (v48)
      {
        v50 = 0xD00000000000001FLL;
        v51 = 0x8000000266971BB0;
        MEMORY[0x26D5E2570](v47);
        v30 = v51;
      }

      else
      {
        v30 = 0x8000000266971B90;
      }

      v39 = v45;
      URL.init(string:)();

      v40 = type metadata accessor for URL();
      __swift_getEnumTagSinglePayload(v39, 1, v40);
      OUTLINED_FUNCTION_12_18();
      if (!v34)
      {
        URL._bridgeToObjectiveC()(v41);
        v30 = v42;
        OUTLINED_FUNCTION_52(v40);
        (*(v43 + 8))(v39, v40);
      }

      goto LABEL_18;
    }
  }

LABEL_19:
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_18_2();
  outlined destroy of Signpost.OpenSignpost(v0);
  OUTLINED_FUNCTION_14();
}

void static AppUtil.buildPunchoutFor(string:)()
{
  OUTLINED_FUNCTION_15();
  v32 = v2;
  v33 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_18_0(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_33();
  v8 = type metadata accessor for UUID();
  v9 = OUTLINED_FUNCTION_1_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_8();
  v14 = OUTLINED_FUNCTION_7_23();
  v15 = OUTLINED_FUNCTION_10_1(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_8();
  v20 = v19 - v18;
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2();
  }

  static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_21_15();
  v21 = v20 + *(v14 + 20);
  *v21 = "BuildPunchoutForString";
  *(v21 + 8) = 22;
  *(v21 + 16) = 2;
  v22 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  outlined bridged method (ob) of @objc SABaseAceObject.aceId.getter(v22);
  if (v23)
  {
  }

  else
  {
    UUID.init()();
    v24 = UUID.uuidString.getter();
    v26 = v25;
    (*(v11 + 8))(v1, v8);
    outlined bridged method (mbnn) of @objc PostalAddress.street.setter(v24, v26, v22, &selRef_setAceId_);
  }

  URL.init(string:)();
  v27 = type metadata accessor for URL();
  __swift_getEnumTagSinglePayload(v0, 1, v27);
  OUTLINED_FUNCTION_12_18();
  if (!v29)
  {
    URL._bridgeToObjectiveC()(v28);
    v1 = v30;
    OUTLINED_FUNCTION_52(v27);
    (*(v31 + 8))(v0, v27);
  }

  [v22 setPunchOutUri_];

  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_21_15();
  outlined destroy of Signpost.OpenSignpost(v20);
  OUTLINED_FUNCTION_14();
}

id AppUtil.buildSash()()
{
  v2 = type metadata accessor for Signpost.OpenSignpost();
  v3 = OUTLINED_FUNCTION_10_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_6_33();
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2();
  }

  v6 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_9_25();
  v7 = v0 + *(v2 + 20);
  *v7 = "BuildSash";
  *(v7 + 8) = 9;
  *(v7 + 16) = 2;
  v8 = [objc_allocWithZone(MEMORY[0x277D47B08]) init];
  v9 = v1[3];
  v10 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v9);
  (*(v10 + 8))(v9, v10);
  OUTLINED_FUNCTION_20_13();
  v14 = v13 | 0x6C7070612E6D0000;
  if (v11)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0xD00000000000001BLL;
  }

  if (v11)
  {
    v16 = 0xEE00697269732E65;
  }

  else
  {
    v16 = v12;
  }

  outlined bridged method (mbnn) of @objc PostalAddress.street.setter(v15, v16, v8, &selRef_setApplicationBundleIdentifier_);
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_9_25();
  outlined destroy of Signpost.OpenSignpost(v0);
  return v8;
}

unint64_t AppUtil.sashBundleId.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 8))(v1, v2);
  OUTLINED_FUNCTION_20_13();
  v4 = v3 | 0x6C7070612E6D0000;
  if (v5)
  {
    return v4;
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

void AppUtil.buildPunchoutFor(emailAddress:)()
{
  OUTLINED_FUNCTION_15();
  v35 = v2;
  v36 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_18_0(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v7);
  v37 = &v34 - v8;
  v9 = type metadata accessor for UUID();
  v10 = OUTLINED_FUNCTION_1_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_8();
  v15 = OUTLINED_FUNCTION_7_23();
  v16 = OUTLINED_FUNCTION_10_1(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_6_33();
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2();
  }

  static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_18_2();
  v19 = v0 + *(v15 + 20);
  *v19 = "BuildPunchoutForEmailAddress";
  *(v19 + 8) = 28;
  *(v19 + 16) = 2;
  v20 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  outlined bridged method (ob) of @objc SABaseAceObject.aceId.getter(v20);
  if (v21)
  {
  }

  else
  {
    UUID.init()();
    v22 = UUID.uuidString.getter();
    v24 = v23;
    (*(v12 + 8))(v1, v9);
    outlined bridged method (mbnn) of @objc PostalAddress.street.setter(v22, v24, v20, &selRef_setAceId_);
  }

  v25 = v1[3];
  v26 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v25);
  if ((*(v26 + 24))(v25, v26))
  {
    v38 = 0x3A6F746C69616DLL;
    v39 = 0xE700000000000000;
    MEMORY[0x26D5E2570](v35, v36);
    v27 = v39;
    v28 = v37;
    URL.init(string:)();

    v29 = type metadata accessor for URL();
    __swift_getEnumTagSinglePayload(v28, 1, v29);
    OUTLINED_FUNCTION_12_18();
    if (!v31)
    {
      URL._bridgeToObjectiveC()(v30);
      v27 = v32;
      OUTLINED_FUNCTION_52(v29);
      (*(v33 + 8))(v28, v29);
    }

    [v20 setPunchOutUri_];
  }

  else
  {
  }

  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_18_2();
  outlined destroy of Signpost.OpenSignpost(v0);
  OUTLINED_FUNCTION_14();
}

void AppUtil.buildPunchoutFor(labeledAddress:contact:)()
{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  v76 = v4;
  v77 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_18_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v8);
  v10 = &v71 - v9;
  v78 = type metadata accessor for URL();
  v11 = OUTLINED_FUNCTION_1_0(v78);
  v75 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_16();
  v71 = v15;
  v17 = MEMORY[0x28223BE20](v16);
  v72 = &v71 - v18;
  MEMORY[0x28223BE20](v17);
  v74 = &v71 - v19;
  v20 = type metadata accessor for UUID();
  v21 = OUTLINED_FUNCTION_1_0(v20);
  v73 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_8();
  v27 = v26 - v25;
  v28 = type metadata accessor for Signpost.OpenSignpost();
  v29 = OUTLINED_FUNCTION_10_1(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_6_33();
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2();
  }

  v32 = static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  v79 = v32;
  OUTLINED_FUNCTION_18_2();
  v33 = v0 + *(v28 + 20);
  *v33 = "BuildPunchoutForPostalAddress";
  *(v33 + 8) = 29;
  *(v33 + 16) = 2;
  v34 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  outlined bridged method (ob) of @objc SABaseAceObject.aceId.getter(v34);
  if (v35)
  {
  }

  else
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Logger.siriContacts);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_26686A000, v37, v38, "#buildPunchoutFor address: Ace ID is nil, setting random UUID to punchout", v39, 2u);
      OUTLINED_FUNCTION_11_1();
    }

    UUID.init()();
    v40 = UUID.uuidString.getter();
    v42 = v41;
    (*(v73 + 8))(v27, v20);
    outlined bridged method (mbnn) of @objc PostalAddress.street.setter(v40, v42, v34, &selRef_setAceId_);
  }

  v43 = v2[3];
  v44 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v43);
  if (((*(v44 + 16))(v43, v44) & 1) == 0)
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v51 = type metadata accessor for Logger();
    __swift_project_value_buffer(v51, static Logger.siriContacts);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v47, v48))
    {
      goto LABEL_21;
    }

    v49 = swift_slowAlloc();
    *v49 = 0;
    v50 = "#buildPunchoutFor address: Maps is not installed, returning nil for punchout";
    goto LABEL_20;
  }

  CNLabeledValue<>.buildMapsURL(contact:)(v76, v10);
  v45 = v78;
  if (__swift_getEnumTagSinglePayload(v10, 1, v78) == 1)
  {
    outlined destroy of URL?(v10);
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v46 = type metadata accessor for Logger();
    __swift_project_value_buffer(v46, static Logger.siriContacts);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v47, v48))
    {
      goto LABEL_21;
    }

    v49 = swift_slowAlloc();
    *v49 = 0;
    v50 = "#buildPunchoutFor address: failed to build Maps punchout URL, returning nil";
LABEL_20:
    _os_log_impl(&dword_26686A000, v47, v48, v50, v49, 2u);
    OUTLINED_FUNCTION_11_1();
LABEL_21:

LABEL_22:
    static os_signpost_type_t.end.getter();
    OUTLINED_FUNCTION_18_2();
    outlined destroy of Signpost.OpenSignpost(v0);
    OUTLINED_FUNCTION_14();
    return;
  }

  v52 = *(v75 + 32);
  v52(v74, v10, v45);
  URL._bridgeToObjectiveC()(v53);
  v55 = v54;
  [v34 setPunchOutUri_];

  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v56 = type metadata accessor for Logger();
  __swift_project_value_buffer(v56, static Logger.siriContacts);
  v57 = v34;
  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v58, v59))
  {

    (*(v75 + 8))(v74, v45);
    goto LABEL_22;
  }

  v60 = swift_slowAlloc();
  v76 = swift_slowAlloc();
  v80 = v76;
  v77 = v60;
  *v60 = 136315138;
  v61 = [v57 punchOutUri];

  if (v61)
  {
    v62 = v71;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v63 = v72;
    v52(v72, v62, v45);
    lazy protocol witness table accessor for type URL and conformance URL();
    v64 = dispatch thunk of CustomStringConvertible.description.getter();
    v66 = v65;
    v67 = *(v75 + 8);
    v67(v63, v45);
    v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v66, &v80);

    v69 = v77;
    *(v77 + 1) = v68;
    _os_log_impl(&dword_26686A000, v58, v59, "#buildPunchoutFor address: punchout URI: %s", v69, 0xCu);
    v70 = v76;
    __swift_destroy_boxed_opaque_existential_0Tm(v76);
    MEMORY[0x26D5E3300](v70, -1, -1);
    OUTLINED_FUNCTION_11_1();

    v67(v74, v45);
    goto LABEL_22;
  }

  __break(1u);
}

void static AppUtil.buildMessagesPunchoutFor(handleString:)()
{
  static AppUtil.buildMessagesPunchoutFor(handleString:)();
}

{
  OUTLINED_FUNCTION_15();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_18_0(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_33();
  v43 = type metadata accessor for CharacterSet();
  v6 = OUTLINED_FUNCTION_1_0(v43);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_8();
  v13 = v12 - v11;
  v14 = type metadata accessor for UUID();
  v15 = OUTLINED_FUNCTION_1_0(v14);
  v41 = v16;
  v42 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_8();
  v19 = OUTLINED_FUNCTION_7_23();
  v20 = OUTLINED_FUNCTION_10_1(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_8();
  v25 = v24 - v23;
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2();
  }

  static Signpost.contactsLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_21_15();
  v26 = v25 + *(v19 + 20);
  *v26 = "BuildPunchoutForPhoneNumber";
  *(v26 + 8) = 27;
  *(v26 + 16) = 2;
  v27 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  outlined bridged method (ob) of @objc SABaseAceObject.aceId.getter(v27);
  if (v28)
  {
  }

  else
  {
    UUID.init()();
    v29 = UUID.uuidString.getter();
    v31 = v30;
    (*(v41 + 8))(v1, v42);
    outlined bridged method (mbnn) of @objc PostalAddress.street.setter(v29, v31, v27, &selRef_setAceId_);
  }

  static CharacterSet.urlPathAllowed.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v32 = StringProtocol.addingPercentEncoding(withAllowedCharacters:)();
  v34 = v33;
  (*(v8 + 8))(v13, v43);
  if (v34)
  {
    MEMORY[0x26D5E2570](v32, v34);

    v35 = 0xE400000000000000;
    URL.init(string:)();

    v36 = type metadata accessor for URL();
    __swift_getEnumTagSinglePayload(v0, 1, v36);
    OUTLINED_FUNCTION_12_18();
    if (!v38)
    {
      URL._bridgeToObjectiveC()(v37);
      v35 = v39;
      OUTLINED_FUNCTION_52(v36);
      (*(v40 + 8))(v0, v36);
    }

    [v27 setPunchOutUri_];

    static os_signpost_type_t.end.getter();
    OUTLINED_FUNCTION_21_15();
    outlined destroy of Signpost.OpenSignpost(v25);
    OUTLINED_FUNCTION_14();
  }

  else
  {
    __break(1u);
  }
}

Swift::Bool __swiftcall InstalledAppsProvider.isContactsAppInstalled()()
{
  v1 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v2 = OUTLINED_FUNCTION_14_18(27, 0x800000026696E4A0);
  if (v0)
  {

    LOBYTE(v2) = 0;
  }

  else if (v2)
  {

    LOBYTE(v2) = 1;
  }

  return v2;
}

Swift::Bool __swiftcall InstalledAppsProvider.isMapsAppInstalled()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v1 = OUTLINED_FUNCTION_13_20();
  v3 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(v1, v2, 0);
  if (v3)
  {

    LOBYTE(v3) = 1;
  }

  return v3;
}

Swift::Bool __swiftcall InstalledAppsProvider.isMailAppInstalled()()
{
  v1 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v2 = OUTLINED_FUNCTION_14_18(20, 0x8000000266971B50);
  if (v0)
  {

    LOBYTE(v2) = 0;
  }

  else if (v2)
  {

    LOBYTE(v2) = 1;
  }

  return v2;
}

Swift::Bool __swiftcall InstalledAppsProvider.isPhoneAppInstalled()()
{
  v1 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v2 = OUTLINED_FUNCTION_14_18(21, 0x8000000266970810);
  if (v0)
  {

    LOBYTE(v2) = 0;
  }

  else if (v2)
  {

    LOBYTE(v2) = 1;
  }

  return v2;
}

uint64_t static AppUtil.contactsAppCandidate.getter()
{
  v0 = type metadata accessor for ContactResolver.AppCandidateType();
  v1 = OUTLINED_FUNCTION_1_0(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_8();
  (*(v6 + 104))(v5 - v4, *MEMORY[0x277D56098]);
  return ContactResolver.AppCandidate.init(bundleId:type:)();
}

id @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(uint64_t a1, uint64_t a2, char a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x26D5E2470]();

  v11[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

_BYTE *storeEnumTagSinglePayload for InstalledAppsProvider(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AppUtil(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AppUtil(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type URL and conformance URL()
{
  result = lazy protocol witness table cache variable for type URL and conformance URL;
  if (!lazy protocol witness table cache variable for type URL and conformance URL)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL and conformance URL);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_23()
{

  return type metadata accessor for Signpost.OpenSignpost();
}

uint64_t OUTLINED_FUNCTION_9_25()
{

  return os_signpost(_:dso:log:name:signpostID:)();
}

id OUTLINED_FUNCTION_14_18(uint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;

  return @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(v3, a2, 0);
}

uint64_t OUTLINED_FUNCTION_21_15()
{

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t RREntity.isFromContactSource.getter()
{
  if (RREntity.appBundleId.getter() == 0x73746361746E6F43 && v0 == 0xE800000000000000)
  {
    goto LABEL_16;
  }

  v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v2)
  {
    return 1;
  }

  if (RREntity.appBundleId.getter() == 0xD00000000000001BLL && 0x800000026696E4A0 == v3)
  {
LABEL_16:

    return 1;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v5 & 1) == 0)
  {
    if (RREntity.appBundleId.getter() != 0xD000000000000015 || 0x8000000266970810 != v6)
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      return v8 & 1;
    }

    goto LABEL_16;
  }

  return 1;
}

uint64_t static RREntity.makeEntityList(for:)(void *a1)
{
  v138 = a1;
  v2 = type metadata accessor for GroupIdentifier();
  v3 = OUTLINED_FUNCTION_18_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_16();
  OUTLINED_FUNCTION_0_15();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_6();
  v140 = v7;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_19_4();
  v142 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
  v11 = OUTLINED_FUNCTION_18_0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_16();
  v136 = v14;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7_6();
  v143 = v16;
  OUTLINED_FUNCTION_16();
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v116 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v116 - v21;
  v144 = type metadata accessor for RREntity();
  v23 = OUTLINED_FUNCTION_1_0(v144);
  v133 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_2_16();
  OUTLINED_FUNCTION_0_15();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_0_15();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_0_15();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_0_15();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_7_6();
  v127 = v31;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_7_6();
  v126 = v33;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_19_4();
  v128 = v35;
  OUTLINED_FUNCTION_13_8();
  v36 = type metadata accessor for UUID();
  v37 = OUTLINED_FUNCTION_1_0(v36);
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_15_17();
  v141 = UUID.uuidString.getter();
  v42 = *(v39 + 8);
  v42(v1, v36);
  UUID.init()();
  v139 = UUID.uuidString.getter();
  v44 = v43;
  v42(v1, v36);
  UUID.init()();
  v45 = UUID.uuidString.getter();
  v47 = v46;
  v42(v1, v36);
  v48 = v138;
  RREntity.init(from:)(v48);
  v138 = v44;
  v134 = v45;
  v135 = v47;
  OUTLINED_FUNCTION_7_24(v22);
  v49 = v133;
  v50 = v128;
  v130 = *(v133 + 32);
  v131 = v133 + 32;
  v130(v128, v22, v36);
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  v52 = v51;
  v54 = *(v51 + 16);
  v53 = *(v51 + 24);
  if (v54 >= v53 >> 1)
  {
    OUTLINED_FUNCTION_1_27(v53);
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v52 = v115;
  }

  *(v52 + 16) = v54 + 1;
  v56 = *(v49 + 16);
  v55 = v49 + 16;
  v57 = (*(v55 + 64) + 32) & ~*(v55 + 64);
  v132 = v52;
  v120 = v57;
  v119 = *(v55 + 56);
  v121 = v56;
  v56(v52 + v57 + v119 * v54, v50, v36);
  v117 = v48;
  v58 = v55;
  v59 = [v48 postalAddresses];
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
  v60 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v61 = specialized Array._getCount()(v60);
  v62 = 0;
  v137 = v60 & 0xC000000000000001;
  v133 = v55;
  v129 = (v55 - 8);
  while (1)
  {
    v63 = v143;
    if (v61 == v62)
    {
      break;
    }

    if (v137)
    {
      v64 = MEMORY[0x26D5E29D0](v62, v60);
    }

    else
    {
      if (v62 >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

      v64 = *(v60 + 8 * v62 + 32);
    }

    v58 = v62 + 1;
    if (__OFADD__(v62, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      OUTLINED_FUNCTION_2();
      goto LABEL_34;
    }

    v65 = v64;

    v66 = v142;
    GroupIdentifier.init(id:seq:)();
    RREntity.init(from:groupId:)(v65, v66, v20);
    OUTLINED_FUNCTION_7_24(v20);
    v130(v126, v20, v62);
    OUTLINED_FUNCTION_8_26();
    v67();
    v68 = *(v132 + 16);
    if (v68 >= *(v132 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v132 = v72;
    }

    v69 = v144;
    (*v129)(v126, v144);
    v70 = v132;
    *(v132 + 16) = v68 + 1;
    v71 = OUTLINED_FUNCTION_3_32(v70);
    v130(v71, v127, v69);
    v62 = v58;
  }

  v73 = [v117 phoneNumbers];
  v74 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v75 = specialized Array._getCount()(v74);
  v76 = 0;
  v143 = v74 & 0xC000000000000001;
  v61 = v144;
  while (v75 != v76)
  {
    if (v143)
    {
      v77 = MEMORY[0x26D5E29D0](v76, v74);
    }

    else
    {
      if (v76 >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_40;
      }

      v77 = *(v74 + 8 * v76 + 32);
    }

    v58 = v76 + 1;
    if (__OFADD__(v76, 1))
    {
      goto LABEL_39;
    }

    v78 = v77;

    v79 = v63;
    v80 = v140;
    GroupIdentifier.init(id:seq:)();
    RREntity.init(from:groupId:)(v78, v80, v79);
    OUTLINED_FUNCTION_7_24(v79);
    v130(v123, v79, v76);
    OUTLINED_FUNCTION_8_26();
    v81();
    v83 = *(v132 + 16);
    v82 = *(v132 + 24);
    v63 = v79;
    v142 = v83 + 1;
    if (v83 >= v82 >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v132 = v86;
    }

    v61 = v144;
    (*v129)(v123, v144);
    v84 = v132;
    *(v132 + 16) = v142;
    v85 = OUTLINED_FUNCTION_3_32(v84);
    v130(v85, v124, v61);
    v76 = v58;
  }

  v87 = [v117 emailAddresses];
  v88 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v89 = specialized Array._getCount()(v88);
  v90 = 0;
  v58 = v88 & 0xFFFFFFFFFFFFFF8;
  v91 = v125;
  while (v89 != v90)
  {
    if ((v88 & 0xC000000000000001) != 0)
    {
      v92 = MEMORY[0x26D5E29D0](v90, v88);
    }

    else
    {
      if (v90 >= *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_42;
      }

      v92 = *(v88 + 8 * v90 + 32);
    }

    v93 = v90 + 1;
    if (__OFADD__(v90, 1))
    {
      goto LABEL_41;
    }

    v94 = v92;

    GroupIdentifier.init(id:seq:)();
    v95 = v136;
    RREntity.init(from:groupId:)(v94, v91, v136);
    OUTLINED_FUNCTION_7_24(v95);
    v130(v122, v95, v90);
    v96 = v118;
    OUTLINED_FUNCTION_8_26();
    v97();
    v98 = *(v132 + 16);
    if (v98 >= *(v132 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v132 = v101;
    }

    v61 = v144;
    (*v129)(v122, v144);
    v99 = v132;
    *(v132 + 16) = v98 + 1;
    v100 = OUTLINED_FUNCTION_3_32(v99);
    v130(v100, v96, v61);
    v90 = v93;
    v91 = v125;
  }

  (*v129)(v128, v61);
  v58 = v132;
  if (one-time initialization token for siriContacts != -1)
  {
    goto LABEL_43;
  }

LABEL_34:
  v102 = type metadata accessor for Logger();
  __swift_project_value_buffer(v102, static Logger.siriContacts);
  v103 = Logger.logObject.getter();
  v104 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v103, v104))
  {
    v105 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    v145 = v106;
    *v105 = 136315138;

    v108 = MEMORY[0x26D5E2610](v107, v61);
    v110 = v109;

    v111 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v108, v110, &v145);

    *(v105 + 4) = v111;
    OUTLINED_FUNCTION_18_14(&dword_26686A000, v112, v113, "#RREntity.makeEntityList returning entities: %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v106);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  return v58;
}

uint64_t static RREntity.makeDisambiguationGroup(for:with:)(void *a1, uint64_t a2)
{
  v102 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMd, &_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMR);
  v5 = OUTLINED_FUNCTION_18_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v98 = v83 - v8;
  OUTLINED_FUNCTION_13_8();
  v9 = type metadata accessor for GroupIdentifier();
  v10 = OUTLINED_FUNCTION_1_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_8();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
  v19 = OUTLINED_FUNCTION_18_0(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = v83 - v22;
  v106 = type metadata accessor for RREntity();
  v24 = OUTLINED_FUNCTION_1_0(v106);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_2_16();
  v88 = v29;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_19_4();
  v87 = v31;
  OUTLINED_FUNCTION_13_8();
  v32 = type metadata accessor for UUID();
  v33 = OUTLINED_FUNCTION_1_0(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_15_17();
  v100 = UUID.uuidString.getter();
  v104 = v38;
  v39 = *(v35 + 8);
  v91 = v2;
  v92 = v35 + 8;
  v93 = v32;
  v90 = v39;
  v39(v2, v32);
  v105 = specialized Array._getCount()(a2);
  v40 = 0;
  v103 = a2 & 0xC000000000000001;
  v99 = (v12 + 8);
  v94 = (v12 + 16);
  v86 = (v26 + 32);
  v84 = (v26 + 16);
  v85 = v26;
  v83[1] = v26 + 8;
  v89 = MEMORY[0x277D84F90];
  v96 = v17;
  v97 = v9;
  v95 = v23;
  v101 = a2;
  while (v105 != v40)
  {
    v41 = v103;
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v40, v103 == 0, a2);
    if (v41)
    {
      v42 = MEMORY[0x26D5E29D0](v40, a2);
    }

    else
    {
      v42 = *(a2 + 8 * v40 + 32);
    }

    v43 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      __break(1u);
      goto LABEL_21;
    }

    v44 = v42;

    GroupIdentifier.init(id:seq:)();
    type metadata accessor for UsoEntity();
    v45 = v44;
    static UsoEntity.from(_:_:)(v102, v44);

    outlined bridged method (ob) of @objc INObject.identifier.getter(v45);
    if (!v46)
    {
      v47 = v91;
      UUID.init()();
      UUID.uuidString.getter();
      v90(v47, v93);
    }

    v48 = v97;
    v49 = v98;
    v50 = v96;
    (*v94)(v98, v96, v97);
    __swift_storeEnumTagSinglePayload(v49, 0, 1, v48);
    v51 = v50;
    v52 = v95;
    OUTLINED_FUNCTION_13_21();
    RREntity.init(id:appBundleId:usoEntity:dataType:data:group:)();

    (*v99)(v51, v48);
    v53 = v106;
    __swift_storeEnumTagSinglePayload(v52, 0, 1, v106);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v52, 1, v53);
    a2 = v101;
    if (EnumTagSinglePayload == 1)
    {

      outlined destroy of RREntity?(v52);
      ++v40;
    }

    else
    {
      v55 = *v86;
      v56 = v87;
      v57 = v106;
      (*v86)(v87, v52, v106);
      (*v84)(v88, v56, v57);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v83[0] = v55;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v65 = *(v89 + 16);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v89 = v66;
      }

      v60 = *(v89 + 16);
      v59 = *(v89 + 24);
      if (v60 >= v59 >> 1)
      {
        OUTLINED_FUNCTION_1_27(v59);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v89 = v67;
      }

      v61 = v85;
      v62 = v106;
      (*(v85 + 8))(v87, v106);
      v63 = v88;
      v64 = v89;
      *(v89 + 16) = v60 + 1;
      (v83[0])(v64 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v60, v63, v62);
      v40 = v43;
    }
  }

  if (one-time initialization token for siriContacts == -1)
  {
    goto LABEL_17;
  }

LABEL_21:
  OUTLINED_FUNCTION_2();
LABEL_17:
  v68 = type metadata accessor for Logger();
  __swift_project_value_buffer(v68, static Logger.siriContacts);
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.debug.getter();
  v71 = os_log_type_enabled(v69, v70);
  v72 = v89;
  if (v71)
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v107 = v74;
    *v73 = 136315138;

    v76 = MEMORY[0x26D5E2610](v75, v106);
    v78 = v77;

    v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v78, &v107);

    *(v73 + 4) = v79;
    OUTLINED_FUNCTION_18_14(&dword_26686A000, v80, v81, "#RREntity.makeDisambiguationGroup returning entities: %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v74);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  return v72;
}

uint64_t static RREntity.makeDisambiguationGroup(with:)(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMd, &_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMR);
  v5 = OUTLINED_FUNCTION_18_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v71 = &v66 - v8;
  OUTLINED_FUNCTION_13_8();
  v79 = type metadata accessor for GroupIdentifier();
  v9 = OUTLINED_FUNCTION_1_0(v79);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_8();
  v16 = v15 - v14;
  v75 = type metadata accessor for RREntity();
  v17 = OUTLINED_FUNCTION_1_0(v75);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_16();
  v74 = v22;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_7_6();
  v69 = v24;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_19_4();
  v73 = v26;
  OUTLINED_FUNCTION_13_8();
  v27 = type metadata accessor for UUID();
  v28 = OUTLINED_FUNCTION_1_0(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_15_17();
  v78 = UUID.uuidString.getter();
  v83 = v33;
  (*(v30 + 8))(v1, v27);
  v84 = specialized Array._getCount()(a1);
  v34 = 0;
  v81 = a1;
  v82 = a1 & 0xC000000000000001;
  v80 = a1 & 0xFFFFFFFFFFFFFF8;
  v77 = 0x8000000266971D30;
  v35 = (v11 + 8);
  v72 = (v19 + 32);
  v67 = (v19 + 16);
  v68 = (v11 + 16);
  v70 = v19;
  v66 = v19 + 8;
  v76 = MEMORY[0x277D84F90];
  while (v84 != v34)
  {
    if (v82)
    {
      v36 = MEMORY[0x26D5E29D0](v34, v81);
    }

    else
    {
      if (v34 >= *(v80 + 16))
      {
        goto LABEL_18;
      }

      v36 = *(v81 + 8 * v34 + 32);
    }

    v37 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v38 = v36;

    GroupIdentifier.init(id:seq:)();
    v39 = [v38 identifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for UsoEntity();
    static UsoEntity.from(_:_:)(v38, 0);
    v40 = v71;
    v41 = v79;
    (*v68)(v71, v16, v79);
    __swift_storeEnumTagSinglePayload(v40, 0, 1, v41);
    v42 = v69;
    OUTLINED_FUNCTION_13_21();
    RREntity.init(id:appBundleId:usoEntity:dataType:data:group:)();

    (*v35)(v16, v41);
    v43 = v73;
    v44 = v42;
    v45 = *v72;
    v46 = v75;
    (*v72)(v73, v44, v75);
    (*v67)(v74, v43, v46);
    v2 = v76;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v52 = *(v2 + 16);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v2 = v53;
    }

    v48 = *(v2 + 16);
    v47 = *(v2 + 24);
    if (v48 >= v47 >> 1)
    {
      OUTLINED_FUNCTION_1_27(v47);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v2 = v54;
    }

    v49 = v70;
    v50 = v75;
    (*(v70 + 8))(v73, v75);
    *(v2 + 16) = v48 + 1;
    v51 = (*(v49 + 80) + 32) & ~*(v49 + 80);
    v76 = v2;
    v45(v2 + v51 + *(v49 + 72) * v48, v74, v50);
    v34 = v37;
  }

  v2 = v76;
  if (one-time initialization token for siriContacts == -1)
  {
    goto LABEL_14;
  }

LABEL_19:
  OUTLINED_FUNCTION_2();
LABEL_14:
  v55 = type metadata accessor for Logger();
  __swift_project_value_buffer(v55, static Logger.siriContacts);
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v85 = v59;
    *v58 = 136315138;

    v61 = MEMORY[0x26D5E2610](v60, v75);
    v63 = v62;

    v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v63, &v85);

    *(v58 + 4) = v64;
    _os_log_impl(&dword_26686A000, v56, v57, "#RREntity.makeDisambiguationGroup returning entities: %s", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v59);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  return v2;
}

void RREntity.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMd, &_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = [a1 identifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for UsoEntity();
  static UsoEntity.from(_:_:)(a1, 0);
  if (v1)
  {

    type metadata accessor for ContactsError();
    lazy protocol witness table accessor for type ContactsError and conformance ContactsError();
    swift_allocError();
    v9 = v8;
    type metadata accessor for CNContact();
    *v9 = _typeName(_:qualified:)();
    v9[1] = v10;
    v9[2] = 0xD000000000000017;
    v9[3] = 0x8000000266971D30;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v11 = type metadata accessor for GroupIdentifier();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v11);
    RREntity.init(id:appBundleId:usoEntity:dataType:data:group:)();
  }
}

uint64_t RREntity.init(from:groupId:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMd, &_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v24 - v9;
  v11 = type metadata accessor for UsoIdentifier();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UsoEntity();
  static UsoEntity.from(_:)(a1);
  if (v3)
  {
    type metadata accessor for ContactsError();
    lazy protocol witness table accessor for type ContactsError and conformance ContactsError();
    swift_allocError();
    v17 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
    *v17 = _typeName(_:qualified:)();
    v17[1] = v18;
    v17[2] = 0xD00000000000001ELL;
    v17[3] = 0x8000000266971CF0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v19 = type metadata accessor for GroupIdentifier();
    return (*(*(v19 - 8) + 8))(a2, v19);
  }

  else
  {
    v24[3] = a3;
    result = UsoEntity.usoIdentifiers.getter();
    if (*(result + 16))
    {
      (*(v12 + 16))(v15, result + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v11);

      UsoIdentifier.value.getter();
      v24[1] = v21;
      (*(v12 + 8))(v15, v11);
      v22 = type metadata accessor for GroupIdentifier();
      v23 = *(v22 - 8);
      (*(v23 + 16))(v10, a2, v22);
      __swift_storeEnumTagSinglePayload(v10, 0, 1, v22);
      RREntity.init(id:appBundleId:usoEntity:dataType:data:group:)();

      return (*(v23 + 8))(a2, v22);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMd, &_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v24 - v9;
  v11 = type metadata accessor for UsoIdentifier();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UsoEntity();
  static UsoEntity.from(_:)(a1);
  if (v3)
  {
    type metadata accessor for ContactsError();
    lazy protocol witness table accessor for type ContactsError and conformance ContactsError();
    swift_allocError();
    v17 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
    *v17 = _typeName(_:qualified:)();
    v17[1] = v18;
    v17[2] = 0xD00000000000001CLL;
    v17[3] = 0x8000000266971CB0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v19 = type metadata accessor for GroupIdentifier();
    return (*(*(v19 - 8) + 8))(a2, v19);
  }

  else
  {
    v24[3] = a3;
    result = UsoEntity.usoIdentifiers.getter();
    if (*(result + 16))
    {
      (*(v12 + 16))(v15, result + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v11);

      UsoIdentifier.value.getter();
      v24[1] = v21;
      (*(v12 + 8))(v15, v11);
      v22 = type metadata accessor for GroupIdentifier();
      v23 = *(v22 - 8);
      (*(v23 + 16))(v10, a2, v22);
      __swift_storeEnumTagSinglePayload(v10, 0, 1, v22);
      RREntity.init(id:appBundleId:usoEntity:dataType:data:group:)();

      return (*(v23 + 8))(a2, v22);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMd, &_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v24 - v9;
  v11 = type metadata accessor for UsoIdentifier();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UsoEntity();
  static UsoEntity.from(_:)(a1);
  if (v3)
  {
    type metadata accessor for ContactsError();
    lazy protocol witness table accessor for type ContactsError and conformance ContactsError();
    swift_allocError();
    v17 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
    *v17 = _typeName(_:qualified:)();
    v17[1] = v18;
    v17[2] = 0xD00000000000001DLL;
    v17[3] = 0x8000000266971C70;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v19 = type metadata accessor for GroupIdentifier();
    return (*(*(v19 - 8) + 8))(a2, v19);
  }

  else
  {
    v24[3] = a3;
    result = UsoEntity.usoIdentifiers.getter();
    if (*(result + 16))
    {
      (*(v12 + 16))(v15, result + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v11);

      UsoIdentifier.value.getter();
      v24[1] = v21;
      (*(v12 + 8))(v15, v11);
      v22 = type metadata accessor for GroupIdentifier();
      v23 = *(v22 - 8);
      (*(v23 + 16))(v10, a2, v22);
      __swift_storeEnumTagSinglePayload(v10, 0, 1, v22);
      RREntity.init(id:appBundleId:usoEntity:dataType:data:group:)();

      return (*(v23 + 8))(a2, v22);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t outlined destroy of RREntity?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_7_24(uint64_t a1)
{
  v3 = *(v1 - 112);

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v3);
}

uint64_t OUTLINED_FUNCTION_11_20(uint64_t a1)
{
  v3 = *(v1 - 112);

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v3);
}

uint64_t OUTLINED_FUNCTION_15_17()
{

  return UUID.init()();
}

void OUTLINED_FUNCTION_18_14(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t ContactsEmailHandle.Builder.withEmailLabel(print:speak:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;

  SpeakableString.init(print:speak:)();
  v7 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  v8 = OBJC_IVAR____TtCC19SiriContactsIntents19ContactsEmailHandle7Builder_emailLabel;
  swift_beginAccess();
  outlined assign with take of SpeakableString?(v6, v0 + v8);
  swift_endAccess();
}

uint64_t ContactsEmailHandle.Builder.__deallocating_deinit()
{
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC19SiriContactsIntents19ContactsEmailHandle7Builder_emailLabel);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC19SiriContactsIntents19ContactsEmailHandle7Builder_emailHandle);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t ContactsEmailHandle.init(builder:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v6);
  v8 = &v12[-v7];
  *(v1 + 16) = 0;
  v9 = OBJC_IVAR____TtCC19SiriContactsIntents19ContactsEmailHandle7Builder_emailLabel;
  swift_beginAccess();
  outlined init with copy of SpeakableString?(a1 + v9, v1 + OBJC_IVAR____TtC19SiriContactsIntents19ContactsEmailHandle_emailLabel);
  v10 = OBJC_IVAR____TtCC19SiriContactsIntents19ContactsEmailHandle7Builder_emailHandle;
  swift_beginAccess();
  outlined init with copy of SpeakableString?(a1 + v10, v8);

  outlined init with take of SpeakableString?(v8, v1 + OBJC_IVAR____TtC19SiriContactsIntents19ContactsEmailHandle_emailHandle);
  return v1;
}

uint64_t ContactsEmailHandle.getProperty(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = OUTLINED_FUNCTION_18_0(v7);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - v14;
  v16 = a1 == 0x62614C6C69616D65 && a2 == 0xEA00000000006C65;
  if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    outlined init with copy of SpeakableString?(v3 + OBJC_IVAR____TtC19SiriContactsIntents19ContactsEmailHandle_emailLabel, v15);
    v17 = type metadata accessor for SpeakableString();
    if (__swift_getEnumTagSinglePayload(v15, 1, v17) == 1)
    {
      v18 = v15;
LABEL_8:
      result = outlined destroy of SpeakableString?(v18);
LABEL_9:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    *(a3 + 24) = v17;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    return (*(*(v17 - 8) + 32))(boxed_opaque_existential_1, v15, v17);
  }

  else
  {
    if (a1 != 0x6E61486C69616D65 || a2 != 0xEB00000000656C64)
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    outlined init with copy of SpeakableString?(v3 + OBJC_IVAR____TtC19SiriContactsIntents19ContactsEmailHandle_emailHandle, v13);
    v22 = type metadata accessor for SpeakableString();
    if (__swift_getEnumTagSinglePayload(v13, 1, v22) == 1)
    {
      v18 = v13;
      goto LABEL_8;
    }

    *(a3 + 24) = v22;
    v23 = __swift_allocate_boxed_opaque_existential_1(a3);
    return (*(*(v22 - 8) + 32))(v23, v13, v22);
  }
}

uint64_t ContactsEmailHandle.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ContactsEmailHandle.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t ContactsEmailHandle.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x6E61486C69616D65;
  }

  else
  {
    return 0x62614C6C69616D65;
  }
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ContactsEmailHandle.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = ContactsEmailHandle.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ContactsEmailHandle.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = ContactsEmailHandle.CodingKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ContactsEmailHandle.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = ContactsEmailHandle.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ContactsEmailHandle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContactsEmailHandle.CodingKeys and conformance ContactsEmailHandle.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ContactsEmailHandle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContactsEmailHandle.CodingKeys and conformance ContactsEmailHandle.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContactsEmailHandle.deinit()
{
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtC19SiriContactsIntents19ContactsEmailHandle_emailLabel);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtC19SiriContactsIntents19ContactsEmailHandle_emailHandle);
  return v0;
}

uint64_t ContactsEmailHandle.__deallocating_deinit()
{
  ContactsEmailHandle.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void type metadata completion function for ContactsEmailHandle()
{
  type metadata accessor for SpeakableString?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t ContactsEmailHandle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19SiriContactsIntents0E11EmailHandleC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy19SiriContactsIntents0E11EmailHandleC10CodingKeysOGMR);
  OUTLINED_FUNCTION_1_0(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v8);
  v10 = &v15[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ContactsEmailHandle.CodingKeys and conformance ContactsEmailHandle.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15[15] = 0;
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_0_48();
  lazy protocol witness table accessor for type ContactsEmailHandle and conformance ContactsEmailHandle(v12, v13);
  OUTLINED_FUNCTION_2_29();
  if (!v1)
  {
    v15[14] = 1;
    OUTLINED_FUNCTION_2_29();
  }

  return (*(v5 + 8))(v10, v3);
}

uint64_t ContactsEmailHandle.__allocating_init(from:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  ContactsEmailHandle.init(from:)(a1);
  return v5;
}

id *ContactsEmailHandle.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = OUTLINED_FUNCTION_18_0(v4);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v27 = v26 - v11;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19SiriContactsIntents0E11EmailHandleC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy19SiriContactsIntents0E11EmailHandleC10CodingKeysOGMR);
  OUTLINED_FUNCTION_1_0(v28);
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v16);
  v1[2] = 0;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ContactsEmailHandle.CodingKeys and conformance ContactsEmailHandle.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {

    type metadata accessor for ContactsEmailHandle(0);
    v21 = *(*v1 + 12);
    v22 = *(*v1 + 26);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v26[1] = v13;
    type metadata accessor for SpeakableString();
    v30 = 0;
    OUTLINED_FUNCTION_0_48();
    lazy protocol witness table accessor for type ContactsEmailHandle and conformance ContactsEmailHandle(v18, v19);
    v20 = v27;
    OUTLINED_FUNCTION_6_19();
    outlined init with take of SpeakableString?(v20, v1 + OBJC_IVAR____TtC19SiriContactsIntents19ContactsEmailHandle_emailLabel);
    v29 = 1;
    OUTLINED_FUNCTION_6_19();
    v24 = OUTLINED_FUNCTION_1_25();
    v25(v24);
    outlined init with take of SpeakableString?(v10, v1 + OBJC_IVAR____TtC19SiriContactsIntents19ContactsEmailHandle_emailHandle);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v1;
}

uint64_t protocol witness for Decodable.init(from:) in conformance ContactsEmailHandle@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = ContactsEmailHandle.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ContactsEmailHandle and conformance ContactsEmailHandle(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type ContactsEmailHandle.CodingKeys and conformance ContactsEmailHandle.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ContactsEmailHandle.CodingKeys and conformance ContactsEmailHandle.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsEmailHandle.CodingKeys and conformance ContactsEmailHandle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsEmailHandle.CodingKeys and conformance ContactsEmailHandle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsEmailHandle.CodingKeys and conformance ContactsEmailHandle.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsEmailHandle.CodingKeys and conformance ContactsEmailHandle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsEmailHandle.CodingKeys and conformance ContactsEmailHandle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsEmailHandle.CodingKeys and conformance ContactsEmailHandle.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsEmailHandle.CodingKeys and conformance ContactsEmailHandle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsEmailHandle.CodingKeys and conformance ContactsEmailHandle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsEmailHandle.CodingKeys and conformance ContactsEmailHandle.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsEmailHandle.CodingKeys and conformance ContactsEmailHandle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsEmailHandle.CodingKeys and conformance ContactsEmailHandle.CodingKeys);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContactsEmailHandle.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t type metadata accessor for ContactsCommonCATsModern()
{
  result = type metadata singleton initialization cache for ContactsCommonCATsModern;
  if (!type metadata singleton initialization cache for ContactsCommonCATsModern)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ContactsCommonCATsModern.cancellationAcknowledgement()()
{
  v1 = *(MEMORY[0x277D55C70] + 4);
  v5 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = ContactsCommonCATsModern.cancellationAcknowledgement();
  v3 = MEMORY[0x277D84F90];

  return v5(0xD00000000000002ALL, 0x8000000266971E40, v3);
}

uint64_t ContactsCommonCATsModern.cancellationAcknowledgement()(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t ContactsCommonCATsModern.__allocating_init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return ContactsCommonCATsModern.init(templateDir:options:globals:)(a1, a2);
}

uint64_t ContactsCommonCATsModern.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
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

uint64_t ContactsCommonCATsModern.__allocating_init(useResponseMode:options:)(uint64_t a1, uint64_t a2)
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

uint64_t type metadata accessor for GetContactAttributeCATsModern()
{
  result = type metadata singleton initialization cache for GetContactAttributeCATsModern;
  if (!type metadata singleton initialization cache for GetContactAttributeCATsModern)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GetContactAttributeCATsModern.disambiguateAddress(matchingHandles:alternativeHandles:requestedLabel:contact:isMe:isVoiceMode:)()
{
  OUTLINED_FUNCTION_4();
  v1[5] = v2;
  v1[6] = v0;
  OUTLINED_FUNCTION_10_30(v3, v4, v5, v2, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v8);
  v10 = *(v9 + 64);
  v1[7] = OUTLINED_FUNCTION_10_0();
  v11 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_9_2();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_0();
  *v8 = v7;
  v3[10] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[7];
    v12 = v3[8];

    v14 = OUTLINED_FUNCTION_2_41();

    return v15(v14);
  }
}

uint64_t GetContactAttributeCATsModern.disambiguateAddress(matchingHandles:alternativeHandles:requestedLabel:contact:isMe:isVoiceMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_10_7();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_6_34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_27_1();
  v14 = OUTLINED_FUNCTION_29_12(v13);
  OUTLINED_FUNCTION_0_13(v14, xmmword_266967D10);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriContactsIntents0B13AddressHandleCGMd, &_sSay19SiriContactsIntents0B13AddressHandleCGMR);
  v16 = OUTLINED_FUNCTION_0_49(v15, "alternativeHandles");
  OUTLINED_FUNCTION_41_9(v16, v17, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v18 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_38(v18);
  if (v19)
  {

    outlined destroy of ResponseMode?(v11, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_31_8();
  }

  else
  {
    OUTLINED_FUNCTION_40_5();
    OUTLINED_FUNCTION_12_11();
    v21 = *(v20 + 32);
    OUTLINED_FUNCTION_30_10();
    v22();
  }

  OUTLINED_FUNCTION_2_46();
  if (v10)
  {
    type metadata accessor for DialogPerson();
  }

  else
  {
    *(v12 + 200) = 0;
    *(v12 + 208) = 0;
  }

  OUTLINED_FUNCTION_36_9();
  OUTLINED_FUNCTION_17_15(v23);
  OUTLINED_FUNCTION_8_27(v24);
  OUTLINED_FUNCTION_11_3(MEMORY[0x277D55C70]);
  v25 = swift_task_alloc();
  v26 = OUTLINED_FUNCTION_18_15(v25);
  *v26 = v27;
  OUTLINED_FUNCTION_33_9(v26);
  OUTLINED_FUNCTION_9_26();
  OUTLINED_FUNCTION_8_6();

  return v31(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10);
}

uint64_t GetContactAttributeCATsModern.disambiguateEmail(matchingHandles:alternativeHandles:requestedLabel:contact:isMe:isVoiceMode:)()
{
  OUTLINED_FUNCTION_4();
  v1[5] = v2;
  v1[6] = v0;
  OUTLINED_FUNCTION_10_30(v3, v4, v5, v2, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v8);
  v10 = *(v9 + 64);
  v1[7] = OUTLINED_FUNCTION_10_0();
  v11 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_9_2();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_0();
  *v8 = v7;
  v3[10] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[7];
    v12 = v3[8];

    v14 = OUTLINED_FUNCTION_2_41();

    return v15(v14);
  }
}

{
  OUTLINED_FUNCTION_4();
  v2 = v0[7];
  v1 = v0[8];

  OUTLINED_FUNCTION_3();
  v4 = v0[10];

  return v3();
}

uint64_t GetContactAttributeCATsModern.disambiguateEmail(matchingHandles:alternativeHandles:requestedLabel:contact:isMe:isVoiceMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_10_7();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_6_34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_27_1();
  v14 = OUTLINED_FUNCTION_29_12(v13);
  OUTLINED_FUNCTION_0_13(v14, xmmword_266967D10);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriContactsIntents0B11EmailHandleCGMd, &_sSay19SiriContactsIntents0B11EmailHandleCGMR);
  v16 = OUTLINED_FUNCTION_0_49(v15, "alternativeHandles");
  OUTLINED_FUNCTION_41_9(v16, v17, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v18 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_38(v18);
  if (v19)
  {

    outlined destroy of ResponseMode?(v11, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_31_8();
  }

  else
  {
    OUTLINED_FUNCTION_40_5();
    OUTLINED_FUNCTION_12_11();
    v21 = *(v20 + 32);
    OUTLINED_FUNCTION_30_10();
    v22();
  }

  OUTLINED_FUNCTION_2_46();
  if (v10)
  {
    type metadata accessor for DialogPerson();
  }

  else
  {
    *(v12 + 200) = 0;
    *(v12 + 208) = 0;
  }

  OUTLINED_FUNCTION_36_9();
  OUTLINED_FUNCTION_17_15(v23);
  OUTLINED_FUNCTION_8_27(v24);
  OUTLINED_FUNCTION_11_3(MEMORY[0x277D55C70]);
  v25 = swift_task_alloc();
  v26 = OUTLINED_FUNCTION_18_15(v25);
  *v26 = v27;
  OUTLINED_FUNCTION_33_9(v26);
  OUTLINED_FUNCTION_9_26();
  OUTLINED_FUNCTION_8_6();

  return v31(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10);
}

uint64_t GetContactAttributeCATsModern.disambiguatePhone(matchingHandles:alternativeHandles:requestedLabel:contact:isMe:isVoiceMode:)()
{
  OUTLINED_FUNCTION_4();
  v1[5] = v2;
  v1[6] = v0;
  OUTLINED_FUNCTION_10_30(v3, v4, v5, v2, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v8);
  v10 = *(v9 + 64);
  v1[7] = OUTLINED_FUNCTION_10_0();
  v11 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t GetContactAttributeCATsModern.disambiguatePhone(matchingHandles:alternativeHandles:requestedLabel:contact:isMe:isVoiceMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_10_7();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_6_34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_27_1();
  v14 = OUTLINED_FUNCTION_29_12(v13);
  OUTLINED_FUNCTION_0_13(v14, xmmword_266967D10);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriContactsIntents0B11PhoneHandleCGMd, &_sSay19SiriContactsIntents0B11PhoneHandleCGMR);
  v16 = OUTLINED_FUNCTION_0_49(v15, "alternativeHandles");
  OUTLINED_FUNCTION_41_9(v16, v17, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v18 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_38(v18);
  if (v19)
  {

    outlined destroy of ResponseMode?(v11, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_31_8();
  }

  else
  {
    OUTLINED_FUNCTION_40_5();
    OUTLINED_FUNCTION_12_11();
    v21 = *(v20 + 32);
    OUTLINED_FUNCTION_30_10();
    v22();
  }

  OUTLINED_FUNCTION_2_46();
  if (v10)
  {
    type metadata accessor for DialogPerson();
  }

  else
  {
    *(v12 + 200) = 0;
    *(v12 + 208) = 0;
  }

  OUTLINED_FUNCTION_36_9();
  OUTLINED_FUNCTION_17_15(v23);
  OUTLINED_FUNCTION_8_27(v24);
  OUTLINED_FUNCTION_11_3(MEMORY[0x277D55C70]);
  v25 = swift_task_alloc();
  v26 = OUTLINED_FUNCTION_18_15(v25);
  *v26 = v27;
  OUTLINED_FUNCTION_33_9(v26);
  OUTLINED_FUNCTION_9_26();
  OUTLINED_FUNCTION_8_6();

  return v31(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10);
}

uint64_t GetContactAttributeCATsModern.intentHandledShowAddress(matchingHandles:alternativeHandles:requestedLabel:contact:isMe:hasSameLabels:isVoiceMode:)()
{
  OUTLINED_FUNCTION_4();
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  *(v1 + 90) = v3;
  OUTLINED_FUNCTION_10_30(v4, v5, v6, v2, v7, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v9);
  v11 = *(v10 + 64);
  *(v1 + 56) = OUTLINED_FUNCTION_10_0();
  v12 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t GetContactAttributeCATsModern.intentHandledShowAddress(matchingHandles:alternativeHandles:requestedLabel:contact:isMe:hasSameLabels:isVoiceMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_10_7();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_6_34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = swift_allocObject();
  v14 = OUTLINED_FUNCTION_29_12(v13);
  OUTLINED_FUNCTION_0_13(v14, xmmword_266967D20);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriContactsIntents0B13AddressHandleCGMd, &_sSay19SiriContactsIntents0B13AddressHandleCGMR);
  v16 = OUTLINED_FUNCTION_0_49(v15, "alternativeHandles");
  OUTLINED_FUNCTION_41_9(v16, v17, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v18 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_38(v18);
  if (v19)
  {

    outlined destroy of ResponseMode?(v11, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_31_8();
  }

  else
  {
    OUTLINED_FUNCTION_40_5();
    OUTLINED_FUNCTION_12_11();
    v21 = *(v20 + 32);
    OUTLINED_FUNCTION_30_10();
    v22();
  }

  OUTLINED_FUNCTION_2_46();
  if (v10)
  {
    type metadata accessor for DialogPerson();
  }

  else
  {
    *(v12 + 200) = 0;
    *(v12 + 208) = 0;
  }

  OUTLINED_FUNCTION_43_7();
  OUTLINED_FUNCTION_34_8(v23);
  v24 = MEMORY[0x277D839B0];
  *(v12 + 240) = v25;
  *(v12 + 264) = v24;
  strcpy((v12 + 272), "hasSameLabels");
  *(v12 + 286) = -4864;
  *(v12 + 288) = v26;
  OUTLINED_FUNCTION_11_21();
  *(v12 + 312) = v28;
  *(v12 + 320) = v27;
  OUTLINED_FUNCTION_16_14();
  *(v12 + 328) = v29;
  *(v12 + 360) = v30;
  OUTLINED_FUNCTION_24_12();
  *(v12 + 336) = v31;

  v32 = swift_task_alloc();
  v33 = OUTLINED_FUNCTION_18_15(v32);
  *v33 = v34;
  OUTLINED_FUNCTION_33_9(v33);
  OUTLINED_FUNCTION_9_26();
  OUTLINED_FUNCTION_8_6();

  return v38(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10);
}

uint64_t GetContactAttributeCATsModern.intentHandledShowAge(birthdayInfo:ageInfo:contact:isMe:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 72) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = OUTLINED_FUNCTION_3_1();
  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t GetContactAttributeCATsModern.intentHandledShowAge(birthdayInfo:ageInfo:contact:isMe:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_10_7();
  OUTLINED_FUNCTION_28();
  v11 = *(v10 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v12 = swift_allocObject();
  *(v10 + 48) = v12;
  OUTLINED_FUNCTION_16_3(v12, xmmword_266967350);
  if (v11)
  {
    v13 = type metadata accessor for DialogCalendar();
    v14 = v11;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_13_3();
    v12[3].n128_u64[1] = 0;
    v12[4].n128_u64[0] = 0;
  }

  v15 = *(v10 + 24);
  v12[3].n128_u64[0] = v14;
  v12[4].n128_u64[1] = v13;
  v12[5].n128_u64[0] = 0x6F666E49656761;
  v12[5].n128_u64[1] = 0xE700000000000000;
  if (v15)
  {
    type metadata accessor for ContactsAgeInfo();
    v16 = v15;
  }

  else
  {
    OUTLINED_FUNCTION_13_3();
    v12[6].n128_u64[1] = 0;
    v12[7].n128_u64[0] = 0;
  }

  v17 = *(v10 + 32);
  v12[6].n128_u64[0] = v16;
  OUTLINED_FUNCTION_2_14();
  v12[7].n128_u64[1] = v18;
  v12[8].n128_u64[0] = v19;
  v12[8].n128_u64[1] = 0xE700000000000000;
  v20 = 0;
  if (v17)
  {
    v20 = type metadata accessor for DialogPerson();
  }

  else
  {
    v12[9].n128_u64[1] = 0;
    v12[10].n128_u64[0] = 0;
  }

  v21 = *(v10 + 72);
  v12[9].n128_u64[0] = v17;
  v12[10].n128_u64[1] = v20;
  v12[11].n128_u64[0] = 1699574633;
  v12[11].n128_u64[1] = 0xE400000000000000;
  v12[13].n128_u64[1] = MEMORY[0x277D839B0];
  v12[12].n128_u8[0] = v21;
  v22 = *(MEMORY[0x277D55C70] + 4);
  v34 = *MEMORY[0x277D55C70] + MEMORY[0x277D55C70];

  v23 = swift_task_alloc();
  *(v10 + 56) = v23;
  *v23 = v10;
  v23[1] = GetContactAttributeCATsModern.intentHandledShowAge(birthdayInfo:ageInfo:contact:isMe:);
  v24 = *(v10 + 40);
  OUTLINED_FUNCTION_8_6();

  return v28(v25, v26, v27, v28, v29, v30, v31, v32, v34, a10);
}

uint64_t GetContactAttributeCATsModern.intentHandledShowAge(birthdayInfo:ageInfo:contact:isMe:)()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_9_2();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_0();
  *v8 = v7;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 48);

    v13 = OUTLINED_FUNCTION_2_3();

    return v14(v13);
  }
}

{
  OUTLINED_FUNCTION_4();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_3();
  v3 = *(v0 + 64);

  return v2();
}

uint64_t GetContactAttributeCATsModern.intentHandledShowBirthday(birthdayInfo:contact:isMe:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 64) = a3;
  *(v4 + 16) = a1;
  v5 = OUTLINED_FUNCTION_3_1();
  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t GetContactAttributeCATsModern.intentHandledShowBirthday(birthdayInfo:contact:isMe:)()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = swift_allocObject();
  *(v0 + 40) = v2;
  OUTLINED_FUNCTION_16_3(v2, xmmword_266966D80);
  if (v1)
  {
    type metadata accessor for DialogCalendar();
    v3 = v1;
  }

  else
  {
    OUTLINED_FUNCTION_13_3();
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  v4 = *(v0 + 24);
  v2[3].n128_u64[0] = v3;
  OUTLINED_FUNCTION_2_14();
  v2[4].n128_u64[1] = v5;
  v2[5].n128_u64[0] = v6;
  v2[5].n128_u64[1] = 0xE700000000000000;
  v7 = 0;
  if (v4)
  {
    v7 = type metadata accessor for DialogPerson();
  }

  else
  {
    v2[6].n128_u64[1] = 0;
    v2[7].n128_u64[0] = 0;
  }

  v8 = *(v0 + 64);
  v2[6].n128_u64[0] = v4;
  v2[7].n128_u64[1] = v7;
  v2[8].n128_u64[0] = 1699574633;
  v2[8].n128_u64[1] = 0xE400000000000000;
  v2[10].n128_u64[1] = MEMORY[0x277D839B0];
  v2[9].n128_u8[0] = v8;
  v9 = *(MEMORY[0x277D55C70] + 4);
  v13 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v10 = swift_task_alloc();
  *(v0 + 48) = v10;
  *v10 = v0;
  v10[1] = GetContactAttributeCATsModern.intentHandledShowBirthday(birthdayInfo:contact:isMe:);
  v11 = *(v0 + 32);

  return v13(0xD00000000000002DLL, 0x800000026696F770, v2);
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
    OUTLINED_FUNCTION_16_1();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 40);

    v13 = OUTLINED_FUNCTION_2_3();

    return v14(v13);
  }
}

uint64_t GetContactAttributeCATsModern.intentHandledShowCompany(isMe:companyName:contact:)()
{
  OUTLINED_FUNCTION_4();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 16) = v3;
  *(v1 + 72) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v5);
  v7 = *(v6 + 64);
  *(v1 + 40) = OUTLINED_FUNCTION_10_0();
  v8 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = *(v0 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = swift_allocObject();
  *(v0 + 48) = v4;
  *(v4 + 16) = xmmword_266966D80;
  *(v4 + 32) = 1699574633;
  *(v4 + 40) = 0xE400000000000000;
  v5 = MEMORY[0x277D839B0];
  *(v4 + 48) = v3;
  *(v4 + 72) = v5;
  *(v4 + 80) = 0x4E796E61706D6F63;
  *(v4 + 88) = 0xEB00000000656D61;
  _s10Foundation3URLVSgWOcTm_1(v2, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v6);
  v8 = *(v0 + 40);
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of ResponseMode?(*(v0 + 40), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
  }

  else
  {
    *(v4 + 120) = v6;
    __swift_allocate_boxed_opaque_existential_1((v4 + 96));
    OUTLINED_FUNCTION_52(v6);
    (*(v9 + 32))();
  }

  v10 = *(v0 + 24);
  OUTLINED_FUNCTION_1_13();
  *(v4 + 128) = v11;
  *(v4 + 136) = v12;
  v13 = 0;
  if (v10)
  {
    v13 = type metadata accessor for DialogPerson();
  }

  else
  {
    *(v4 + 152) = 0;
    *(v4 + 160) = 0;
  }

  *(v4 + 144) = v10;
  *(v4 + 168) = v13;
  OUTLINED_FUNCTION_11_3(MEMORY[0x277D55C70]);
  v14 = swift_task_alloc();
  *(v0 + 56) = v14;
  *v14 = v0;
  v14[1] = GetContactAttributeCATsModern.intentHandledShowCompany(isMe:companyName:contact:);
  v15 = *(v0 + 32);

  return v17(0xD00000000000002CLL, 0x800000026696F6E0, v4);
}

{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_9_2();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_0();
  *v8 = v7;
  v3[8] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[5];
    v12 = v3[6];

    v14 = OUTLINED_FUNCTION_2_41();

    return v15(v14);
  }
}

uint64_t GetContactAttributeCATsModern.intentHandledShowEmail(matchingHandles:alternativeHandles:requestedLabel:contact:isMe:hasSameLabels:isVoiceMode:)()
{
  OUTLINED_FUNCTION_4();
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  *(v1 + 90) = v3;
  OUTLINED_FUNCTION_10_30(v4, v5, v6, v2, v7, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v9);
  v11 = *(v10 + 64);
  *(v1 + 56) = OUTLINED_FUNCTION_10_0();
  v12 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t GetContactAttributeCATsModern.intentHandledShowEmail(matchingHandles:alternativeHandles:requestedLabel:contact:isMe:hasSameLabels:isVoiceMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_10_7();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_6_34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = swift_allocObject();
  v14 = OUTLINED_FUNCTION_29_12(v13);
  OUTLINED_FUNCTION_0_13(v14, xmmword_266967D20);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriContactsIntents0B11EmailHandleCGMd, &_sSay19SiriContactsIntents0B11EmailHandleCGMR);
  v16 = OUTLINED_FUNCTION_0_49(v15, "alternativeHandles");
  OUTLINED_FUNCTION_41_9(v16, v17, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v18 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_38(v18);
  if (v19)
  {

    outlined destroy of ResponseMode?(v11, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_31_8();
  }

  else
  {
    OUTLINED_FUNCTION_40_5();
    OUTLINED_FUNCTION_12_11();
    v21 = *(v20 + 32);
    OUTLINED_FUNCTION_30_10();
    v22();
  }

  OUTLINED_FUNCTION_2_46();
  if (v10)
  {
    type metadata accessor for DialogPerson();
  }

  else
  {
    *(v12 + 200) = 0;
    *(v12 + 208) = 0;
  }

  OUTLINED_FUNCTION_43_7();
  OUTLINED_FUNCTION_34_8(v23);
  v24 = MEMORY[0x277D839B0];
  *(v12 + 240) = v25;
  *(v12 + 264) = v24;
  strcpy((v12 + 272), "hasSameLabels");
  *(v12 + 286) = -4864;
  *(v12 + 288) = v26;
  OUTLINED_FUNCTION_11_21();
  *(v12 + 312) = v28;
  *(v12 + 320) = v27;
  OUTLINED_FUNCTION_16_14();
  *(v12 + 328) = v29;
  *(v12 + 360) = v30;
  OUTLINED_FUNCTION_24_12();
  *(v12 + 336) = v31;

  v32 = swift_task_alloc();
  v33 = OUTLINED_FUNCTION_18_15(v32);
  *v33 = v34;
  OUTLINED_FUNCTION_33_9(v33);
  OUTLINED_FUNCTION_9_26();
  OUTLINED_FUNCTION_8_6();

  return v38(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10);
}

uint64_t GetContactAttributeCATsModern.intentHandledShowName(nicknameRequest:lastNameRequest:nameValue:contact:isMe:)()
{
  OUTLINED_FUNCTION_4();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 82) = v3;
  *(v1 + 16) = v4;
  *(v1 + 81) = v5;
  *(v1 + 80) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v7);
  v9 = *(v8 + 64) + 15;
  *(v1 + 40) = swift_task_alloc();
  *(v1 + 48) = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_9_2();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_0();
  *v8 = v7;
  v3[9] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[6];
    v12 = v3[7];
    v14 = v3[5];

    v15 = OUTLINED_FUNCTION_2_41();

    return v16(v15);
  }
}

{
  OUTLINED_FUNCTION_4();
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  OUTLINED_FUNCTION_3();
  v5 = v0[9];

  return v4();
}

uint64_t GetContactAttributeCATsModern.intentHandledShowName(nicknameRequest:lastNameRequest:nameValue:contact:isMe:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_10_7();
  OUTLINED_FUNCTION_28();
  v11 = *(v10 + 48);
  v12 = *(v10 + 16);
  v13 = *(v10 + 81);
  v14 = *(v10 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v15 = OUTLINED_FUNCTION_27_1();
  *(v10 + 56) = v15;
  *(v15 + 16) = xmmword_266967D10;
  v16 = MEMORY[0x277D839B0];
  *(v15 + 32) = 0x656D616E6B63696ELL;
  *(v15 + 40) = 0xEF74736575716552;
  *(v15 + 48) = v14;
  *(v15 + 72) = v16;
  *(v15 + 80) = 0x656D614E7473616CLL;
  *(v15 + 88) = 0xEF74736575716552;
  *(v15 + 96) = v13;
  *(v15 + 120) = v16;
  *(v15 + 128) = 0x756C6156656D616ELL;
  *(v15 + 136) = 0xE900000000000065;
  _s10Foundation3URLVSgWOcTm_1(v12, v11, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v17 = type metadata accessor for SpeakableString();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v17);
  v19 = *(v10 + 48);
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of ResponseMode?(*(v10 + 48), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v15 + 144) = 0u;
    *(v15 + 160) = 0u;
  }

  else
  {
    *(v15 + 168) = v17;
    __swift_allocate_boxed_opaque_existential_1((v15 + 144));
    OUTLINED_FUNCTION_52(v17);
    (*(v20 + 32))();
  }

  v21 = *(v10 + 24);
  OUTLINED_FUNCTION_1_13();
  *(v15 + 176) = v22;
  *(v15 + 184) = v23;
  if (v21)
  {
    v24 = type metadata accessor for DialogPerson();
    v25 = v21;
  }

  else
  {
    v24 = OUTLINED_FUNCTION_13_3();
    *(v15 + 200) = 0;
    *(v15 + 208) = 0;
  }

  v26 = *(v10 + 82);
  *(v15 + 192) = v25;
  *(v15 + 216) = v24;
  *(v15 + 224) = 1699574633;
  *(v15 + 232) = 0xE400000000000000;
  *(v15 + 240) = v26;
  *(v15 + 264) = v16;
  strcpy((v15 + 272), "nicknameValue");
  *(v15 + 286) = -4864;
  if (!v21)
  {
    goto LABEL_10;
  }

  v27 = *(v10 + 40);

  DialogPerson.nickname.getter();
  v28 = __swift_getEnumTagSinglePayload(v27, 1, v17);
  v29 = *(v10 + 40);
  if (v28 == 1)
  {
    outlined destroy of ResponseMode?(*(v10 + 40), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
LABEL_10:
    *(v15 + 288) = 0u;
    *(v15 + 304) = 0u;
    goto LABEL_12;
  }

  *(v15 + 312) = v17;
  __swift_allocate_boxed_opaque_existential_1((v15 + 288));
  OUTLINED_FUNCTION_52(v17);
  (*(v30 + 32))();
LABEL_12:
  v31 = *(MEMORY[0x277D55C70] + 4);
  v43 = *MEMORY[0x277D55C70] + MEMORY[0x277D55C70];
  v32 = swift_task_alloc();
  *(v10 + 64) = v32;
  *v32 = v10;
  v32[1] = GetContactAttributeCATsModern.intentHandledShowName(nicknameRequest:lastNameRequest:nameValue:contact:isMe:);
  v33 = *(v10 + 32);
  OUTLINED_FUNCTION_8_6();

  return v37(v34, v35, v36, v37, v38, v39, v40, v41, v43, a10);
}

uint64_t GetContactAttributeCATsModern.intentHandledShowPhone(matchingHandles:alternativeHandles:requestedLabel:contact:isMe:hasSameLabels:hasAnyMatchingLabels:isVoiceMode:)()
{
  OUTLINED_FUNCTION_4();
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  *(v1 + 91) = v3;
  *(v1 + 90) = v4;
  OUTLINED_FUNCTION_10_30(v5, v6, v7, v2, v8, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0(v10);
  v12 = *(v11 + 64);
  *(v1 + 56) = OUTLINED_FUNCTION_10_0();
  v13 = OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t GetContactAttributeCATsModern.intentHandledShowPhone(matchingHandles:alternativeHandles:requestedLabel:contact:isMe:hasSameLabels:hasAnyMatchingLabels:isVoiceMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_10_7();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_6_34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v15 = swift_allocObject();
  v16 = OUTLINED_FUNCTION_29_12(v15);
  OUTLINED_FUNCTION_0_13(v16, xmmword_26696C180);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriContactsIntents0B11PhoneHandleCGMd, &_sSay19SiriContactsIntents0B11PhoneHandleCGMR);
  v18 = OUTLINED_FUNCTION_0_49(v17, "alternativeHandles");
  OUTLINED_FUNCTION_41_9(v18, v19, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v20 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_38(v20);
  if (v21)
  {

    outlined destroy of ResponseMode?(v11, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_31_8();
  }

  else
  {
    OUTLINED_FUNCTION_40_5();
    OUTLINED_FUNCTION_12_11();
    v23 = *(v22 + 32);
    OUTLINED_FUNCTION_30_10();
    v24();
  }

  v25 = OUTLINED_FUNCTION_2_46();
  if (v10)
  {
    v25 = type metadata accessor for DialogPerson();
  }

  else
  {
    *(v13 + 200) = 0;
    *(v13 + 208) = 0;
  }

  v26 = v12[91];
  v27 = v12[90];
  v28 = v12[89];
  v29 = v12[88];
  *(v13 + 192) = v10;
  *(v13 + 216) = v25;
  *(v13 + 224) = 1699574633;
  *(v13 + 232) = 0xE400000000000000;
  v30 = MEMORY[0x277D839B0];
  *(v13 + 240) = v29;
  *(v13 + 264) = v30;
  strcpy((v13 + 272), "hasSameLabels");
  *(v13 + 286) = -4864;
  *(v13 + 288) = v28;
  *(v13 + 312) = v30;
  *(v13 + 320) = v14 + 2;
  *(v13 + 328) = 0x8000000266971EB0;
  *(v13 + 336) = v27;
  OUTLINED_FUNCTION_11_21();
  *(v13 + 360) = v32;
  *(v13 + 368) = v31;
  OUTLINED_FUNCTION_16_14();
  *(v13 + 376) = v33;
  *(v13 + 408) = v34;
  OUTLINED_FUNCTION_24_12();
  *(v13 + 384) = v35;

  v36 = swift_task_alloc();
  v37 = OUTLINED_FUNCTION_18_15(v36);
  *v37 = v38;
  OUTLINED_FUNCTION_33_9(v37);
  OUTLINED_FUNCTION_9_26();
  OUTLINED_FUNCTION_8_6();

  return v42(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10);
}

uint64_t GetContactAttributeCATsModern.__allocating_init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return GetContactAttributeCATsModern.init(templateDir:options:globals:)(a1, a2);
}

uint64_t GetContactAttributeCATsModern.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for CATOption();
  v6 = OUTLINED_FUNCTION_10_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v14 = OUTLINED_FUNCTION_18_0(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  _s10Foundation3URLVSgWOcTm_1(a1, &v20 - v17, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v8 + 16))(v12, a2, v2);
  v18 = CATWrapperSimple.init(templateDir:options:globals:)();
  (*(v8 + 8))(a2, v2);
  outlined destroy of ResponseMode?(a1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v18;
}

uint64_t GetContactAttributeCATsModern.__allocating_init(useResponseMode:options:)(uint64_t a1, uint64_t a2)
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

uint64_t OUTLINED_FUNCTION_0_49@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v4 + 48) = v3;
  *(v4 + 72) = result;
  *(v4 + 80) = v5;
  *(v4 + 88) = (a2 - 32) | 0x8000000000000000;
  *(v4 + 96) = v2;
  *(v4 + 120) = result;
  strcpy((v4 + 128), "requestedLabel");
  *(v4 + 143) = -18;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_46()
{
  v2 = *(v0 + 40);
  *(v1 + 176) = 0x746361746E6F63;
  *(v1 + 184) = 0xE700000000000000;
  return 0;
}

uint64_t OUTLINED_FUNCTION_5_38(uint64_t a1)
{
  result = __swift_getEnumTagSinglePayload(v1, 1, a1);
  v4 = v2[7];
  v6 = v2[2];
  v5 = v2[3];
  return result;
}

void OUTLINED_FUNCTION_6_34()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
}

void OUTLINED_FUNCTION_8_27(char a1@<W8>)
{
  *(v3 + 240) = v1;
  *(v3 + 264) = v2;
  *(v3 + 272) = 0x4D6563696F567369;
  *(v3 + 280) = 0xEB0000000065646FLL;
  *(v3 + 312) = v2;
  *(v3 + 288) = a1;
}

uint64_t OUTLINED_FUNCTION_10_30(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  *(v6 + 89) = a6;
  *(v6 + 88) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_17_15(uint64_t result)
{
  v1[27] = result;
  v1[28] = 1699574633;
  v1[29] = 0xE400000000000000;
  return result;
}

double OUTLINED_FUNCTION_31_8()
{
  result = 0.0;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_33_9(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_34_8(uint64_t result)
{
  v1[27] = result;
  v1[28] = 1699574633;
  v1[29] = 0xE400000000000000;
  return result;
}

void OUTLINED_FUNCTION_36_9()
{
  v3 = *(v1 + 89);
  v4 = *(v1 + 88);
  *(v2 + 192) = v0;
}

uint64_t *OUTLINED_FUNCTION_40_5()
{
  *(v1 + 168) = v0;

  return __swift_allocate_boxed_opaque_existential_1((v1 + 144));
}

uint64_t OUTLINED_FUNCTION_41_9(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return _s10Foundation3URLVSgWOcTm_1(v5, v4, a3, a4);
}

void OUTLINED_FUNCTION_43_7()
{
  v3 = v1[90];
  v4 = v1[89];
  v5 = v1[88];
  *(v2 + 192) = v0;
}

uint64_t one-time initialization function for siriContacts()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.siriContacts);
  __swift_project_value_buffer(v0, static Logger.siriContacts);
  return Logger.init(subsystem:category:)();
}

uint64_t static Logger.siriContacts.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for siriContacts != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.siriContacts);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

_BYTE *storeEnumTagSinglePayload for Logger(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t GetContactAttributeViewBuilder.makeViewsForWatch()()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  v3 = OUTLINED_FUNCTION_1_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.siriContacts);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_31(v12))
  {
    *OUTLINED_FUNCTION_30() = 0;
    OUTLINED_FUNCTION_27(&dword_26686A000, v13, v14, "#GetContactAttributeViewBuilder Constructing view for watchOS.");
    OUTLINED_FUNCTION_6();
  }

  v15 = v1[9];
  outlined init with copy of DeviceState((v1 + 4), v28);
  v28[8] = &type metadata for InstalledAppsProvider;
  v28[9] = &protocol witness table for InstalledAppsProvider;
  v27 = v15;
  v16 = *v1;
  v17 = v1[1];
  v18 = v1[3];
  v19 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v1[7]);

  dispatch thunk of DeviceState.siriLocale.getter();
  v26[5] = Locale.identifier.getter();
  v26[6] = v20;
  v26[3] = 45;
  v26[4] = 0xE100000000000000;
  v26[1] = 95;
  v26[2] = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  v21 = OUTLINED_FUNCTION_1_45();
  v23 = v22;

  (*(v5 + 8))(v9, v2);
  v24 = WatchViews.buildGetAttributeSnippet(handles:contact:contactAttribute:localeString:)(v16, v17, v18, v21, v23);

  outlined destroy of WatchViews(&v27);
  if (!v24)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  result = OUTLINED_FUNCTION_4_21();
  *(result + 16) = xmmword_266966A40;
  *(result + 32) = v24;
  return result;
}

uint64_t GetContactAttributeViewBuilder.makeViewsForMac()()
{
  v1 = v0;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriContacts);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_31(v4))
  {
    v5 = OUTLINED_FUNCTION_30();
    *v5 = 0;
    _os_log_impl(&dword_26686A000, v3, v4, "#GetContactAttributeViewBuilder Constructing PersonSnippet with display properties for macOS.", v5, 2u);
    OUTLINED_FUNCTION_6();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v6 = OUTLINED_FUNCTION_4_21();
  *(v6 + 16) = xmmword_266966A40;
  type metadata accessor for SAABPersonSnippet();
  v7 = *(v1 + 24);
  v8 = *(v1 + 8);
  v9 = [v7 contactAttributeType];
  v10 = *(v1 + 16);
  v13 = &type metadata for InstalledAppsProvider;
  v14 = &protocol witness table for InstalledAppsProvider;
  *(v6 + 32) = SAABPersonSnippet.init(contact:attributeType:isMe:appUtil:)(v8, v9, v10, v12);
  return v6;
}

uint64_t GetContactAttributeViewBuilder.makeViewsForCarPlay()(const char *a1)
{
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriContacts);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_31(v4))
  {
    v5 = OUTLINED_FUNCTION_30();
    *v5 = 0;
    _os_log_impl(&dword_26686A000, v3, v4, a1, v5, 2u);
    OUTLINED_FUNCTION_6();
  }

  return MEMORY[0x277D84F90];
}

uint64_t GetContactAttributeViewBuilder.makeViewsForIOS()()
{
  v1 = v0;
  v24[0] = type metadata accessor for Locale();
  v2 = OUTLINED_FUNCTION_1_0(v24[0]);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.siriContacts);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_31(v11))
  {
    *OUTLINED_FUNCTION_30() = 0;
    OUTLINED_FUNCTION_27(&dword_26686A000, v12, v13, "#GetContactAttributeViewBuilder Constructing compact view for iOS.");
    OUTLINED_FUNCTION_6();
  }

  v15 = v1[8];
  v14 = v1[9];
  v25[4] = &type metadata for InstalledAppsProvider;
  v25[5] = &protocol witness table for InstalledAppsProvider;
  v25[0] = v14;
  v25[6] = 0;
  v17 = *v1;
  v16 = v1[1];
  v18 = v1[3];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v1[7]);

  dispatch thunk of DeviceState.siriLocale.getter();
  v24[5] = Locale.identifier.getter();
  v24[6] = v19;
  v24[3] = 45;
  v24[4] = 0xE100000000000000;
  v24[1] = 95;
  v24[2] = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  OUTLINED_FUNCTION_1_45();

  (*(v4 + 8))(v8, v24[0]);
  CompactViews.buildGetAttributeSnippet(handles:contact:contactAttribute:localeString:)();
  v21 = v20;

  outlined destroy of CompactViews(v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v22 = OUTLINED_FUNCTION_4_21();
  *(v22 + 16) = xmmword_266966A40;
  if (v21)
  {
    *(v22 + 32) = v21;
  }

  else
  {
    type metadata accessor for SAABPersonSnippet();
    *(v22 + 32) = SAABPersonSnippet.init(_:isMe:)(v16, v1[2]);
  }

  return v22;
}

unint64_t type metadata accessor for SAABPersonSnippet()
{
  result = lazy cache variable for type metadata for SAABPersonSnippet;
  if (!lazy cache variable for type metadata for SAABPersonSnippet)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SAABPersonSnippet);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GetContactAttributeViewBuilder(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GetContactAttributeViewBuilder(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_45()
{

  return StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
}

double specialized SiriKitContactIntent.value(forSlot:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
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

uint64_t specialized ContactsNeedsValueStrategy.needsValueOutput(templateResult:nlContextUpdate:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = *(v2 + 112);
  v9 = type metadata accessor for NLContextUpdate();
  (*(*(v9 - 8) + 16))(v7, a2, v9);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v9);
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  static AceOutputHelper.makeClarificationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v11, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  return outlined destroy of UsoEntity_common_Person.DefinedValues?(v7, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
}

id _s19SiriContactsIntents39ModifyContactAttributeStrategyProvidingPAAE010getRelatedE06intent14contactServiceSo9CNContactCAA0deF6IntentC_AA0eM8Protocol_ptFAA0def16UnsupportedValueG0C_Tt1g5Tm(void *a1, void *a2)
{
  v4 = [a1 relatedSiriMatches];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for SiriMatch();
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v6 & 0xC000000000000001) == 0, v6);
    v7 = (v6 & 0xC000000000000001) != 0 ? MEMORY[0x26D5E29D0](0, v6) : *(v6 + 32);
    v8 = v7;

    v9 = [v8 identifier];

    if (v9)
    {
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v13 = a2[3];
      v14 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v13);
      v19 = (*(v14 + 8))(v10, v12, v13, v14);

      if (v19)
      {
        return v19;
      }
    }
  }

  v15 = [a1 relatedContact];
  if (v15)
  {
    v16 = v15;
    type metadata accessor for CNContact();
    return CNContact.init(from:)(v16);
  }

  else
  {
    v18 = objc_allocWithZone(MEMORY[0x277CBDA58]);

    return [v18 init];
  }
}

uint64_t ModifyContactAttributeNeedsValueStrategy.parseValueResponse(input:resolveRecord:)()
{
  OUTLINED_FUNCTION_4();
  v1[11] = v2;
  v1[12] = v0;
  v1[9] = v3;
  v1[10] = v4;
  v5 = type metadata accessor for Parse();
  v1[13] = v5;
  OUTLINED_FUNCTION_1_1(v5);
  v1[14] = v6;
  v8 = *(v7 + 64);
  v1[15] = OUTLINED_FUNCTION_10_0();
  v9 = type metadata accessor for ParameterIdentifier();
  v1[16] = v9;
  OUTLINED_FUNCTION_1_1(v9);
  v1[17] = v10;
  v12 = *(v11 + 64);
  v1[18] = OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

{
  OUTLINED_FUNCTION_39();
  v32 = v0;
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  v4 = *(v0 + 88);
  *(v0 + 152) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVy0A15ContactsIntents28ModifyContactAttributeIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVy0A15ContactsIntents28ModifyContactAttributeIntentCGMR);
  ParameterResolutionRecord.parameter.getter();
  v5 = ParameterIdentifier.name.getter();
  v7 = v6;
  (*(v2 + 8))(v1, v3);

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  v9.value = ModifyContactAttributeSlots.init(rawValue:)(v8).value;
  *(v0 + 66) = v9;
  if (v9.value == SiriContactsIntents_ModifyContactAttributeSlots_unknownDefault)
  {
    type metadata accessor for ContactsError();
    lazy protocol witness table accessor for type ContactsError and conformance ContactsError();
    OUTLINED_FUNCTION_15_1();
    *v10 = v5;
    v10[1] = v7;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v11 = *(v0 + 144);
    v12 = *(v0 + 120);

    OUTLINED_FUNCTION_3();

    return v13();
  }

  else
  {
    value = v9.value;

    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    *(v0 + 160) = __swift_project_value_buffer(v16, static Logger.siriContacts);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = OUTLINED_FUNCTION_33_2();
      v31[0] = swift_slowAlloc();
      *v19 = 136315394;
      *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000266970710, v31);
      *(v19 + 12) = 2080;
      *(v0 + 65) = value;
      v20 = String.init<A>(describing:)();
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v31);

      *(v19 + 14) = v22;
      _os_log_impl(&dword_26686A000, v17, v18, "[%s] Slot: %s", v19, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    v23 = *(v0 + 120);
    v24 = *(v0 + 88);
    v25 = *(v0 + 96);
    v26 = *(v0 + 80);
    Input.parse.getter();
    v27 = ParameterResolutionRecord.intent.getter();
    *(v0 + 168) = v27;
    swift_task_alloc();
    OUTLINED_FUNCTION_36_0();
    *(v0 + 176) = v28;
    *v28 = v29;
    v28[1] = ModifyContactAttributeNeedsValueStrategy.parseValueResponse(input:resolveRecord:);
    v30 = *(v0 + 120);

    return Parse.toSiriKitIntent(referenceResolver:previousIntent:)(v25 + 192, v27, &protocol witness table for ModifyContactAttributeIntent);
  }
}

{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_12_0();
  *v2 = v1;
  v4 = v3[22];
  v5 = v3[21];
  v6 = v3[15];
  v7 = v3[14];
  v8 = v3[13];
  v9 = *v0;
  OUTLINED_FUNCTION_0();
  *v10 = v9;
  *(v12 + 184) = v11;

  (*(v7 + 8))(v6, v8);
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

{
  v105 = v0;
  v1 = *(v0 + 184);
  if (!v1)
  {
    goto LABEL_11;
  }

  type metadata accessor for ModifyContactAttributeIntent();
  v2 = swift_dynamicCastClass();
  if (!v2)
  {

LABEL_11:
    v31 = *(v0 + 160);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = OUTLINED_FUNCTION_33_2();
      v35 = swift_slowAlloc();
      *&v104[0] = v35;
      *v34 = 136315394;
      v42 = OUTLINED_FUNCTION_8_28(v35, 0x8000000266970710, v36, v37, v38, v39, v40, v41, *&v104[0]);
      *(v34 + 4) = v42;
      *(v34 + 12) = 2080;
      *(v34 + 14) = OUTLINED_FUNCTION_8_28(v42, 0x8000000266970710, v43, v44, v45, v46, v47, v48, *&v104[0]);
      _os_log_impl(&dword_26686A000, v32, v33, "[%s] failed to convert parse to expected intent type %s, returning empty answeredValue and same intent", v34, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_7_25();
    v49 = *(v0 + 72);
    memset(v104, 0, sizeof(v104));
    ParameterResolutionRecord.intent.getter();
    type metadata accessor for ModifyContactAttributeIntent();
    goto LABEL_14;
  }

  v3 = v2;
  v4 = *(v0 + 160);
  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  v8 = &off_266966000;
  if (os_log_type_enabled(v6, v7))
  {
    v9 = OUTLINED_FUNCTION_33_2();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&v104[0] = v11;
    *v9 = 136315394;
    v8 = &off_266966000;
    *(v9 + 4) = OUTLINED_FUNCTION_8_28(v11, 0x8000000266970710, v12, v13, v14, v15, v16, v17, *&v104[0]);
    *(v9 + 12) = 2112;
    *(v9 + 14) = v3;
    *v10 = v3;
    v18 = v5;
    _os_log_impl(&dword_26686A000, v6, v7, "[%s] SiriKit Intent:     %@", v9, 0x16u);
    outlined destroy of UsoEntity_common_Person.DefinedValues?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_6();
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  v19 = *(v0 + 66);
  OUTLINED_FUNCTION_7_25();
  v20 = ParameterResolutionRecord.intent.getter();
  v21 = [v20 contactAttributeToModify];

  *(v0 + 56) = ContactAttributeType.init(rawValue:)(v21);
  *(v0 + 64) = v22 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriContactsIntents20ContactAttributeTypeOSgMd, &_s19SiriContactsIntents20ContactAttributeTypeOSgMR);
  v23 = Optional.debugDescription.getter();
  v25 = v24;
  switch(v19)
  {
    case 2:
      OUTLINED_FUNCTION_7_25();
      v59 = ParameterResolutionRecord.intent.getter();
      v60 = [v59 contactAttributeToModify];

      if (v60 != 10)
      {
        type metadata accessor for ContactsError();
        lazy protocol witness table accessor for type ContactsError and conformance ContactsError();
        OUTLINED_FUNCTION_15_1();
        v29 = v74;
        v30 = 2;
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_14_19();
      v61 = ParameterResolutionRecord.intent.getter();
      [v61 modifyOperation];

      OUTLINED_FUNCTION_21_16(v62, sel_setModifyOperation_);
      v63 = ParameterResolutionRecord.intent.getter();
      v64 = [v63 relatedContact];

      OUTLINED_FUNCTION_21_16(v65, sel_setRelatedContact_);
      v66 = ParameterResolutionRecord.intent.getter();
      if (outlined bridged method (ob) of @objc ModifyContactAttributeIntent.relatedSiriMatches.getter(v66))
      {
        type metadata accessor for SiriMatch();
        v67.super.isa = Array._bridgeToObjectiveC()().super.isa;
      }

      else
      {
        v67.super.isa = 0;
      }

      [v3 setRelatedSiriMatches_];
LABEL_34:

LABEL_35:
      v87 = *(v0 + 160);
      v88 = v5;
      v89 = Logger.logObject.getter();
      v90 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v89, v90))
      {
        v91 = OUTLINED_FUNCTION_33_2();
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        *&v104[0] = v93;
        *v91 = *(v8 + 279);
        *(v91 + 4) = OUTLINED_FUNCTION_8_28(v93, 0x8000000266970710, v94, v95, v96, v97, v98, v99, *&v104[0]);
        *(v91 + 12) = 2112;
        *(v91 + 14) = v3;
        *v92 = v3;
        v100 = v88;
        _os_log_impl(&dword_26686A000, v89, v90, "[%s] Converted ContactIntent to SK intent. %@", v91, 0x16u);
        outlined destroy of UsoEntity_common_Person.DefinedValues?(v92, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        OUTLINED_FUNCTION_6();
        __swift_destroy_boxed_opaque_existential_0Tm(v93);
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_6();
      }

      v101 = *(v0 + 66);
      OUTLINED_FUNCTION_7_25();
      v102 = *(v0 + 72);
      v103 = ParameterResolutionRecord.intent.getter();
      *(v0 + 40) = &type metadata for ModifyContactAttributeSlots;
      *(v0 + 48) = &protocol witness table for ModifyContactAttributeSlots;
      *(v0 + 16) = v101;
      specialized SiriKitContactIntent.value(forSlot:)((v0 + 16), v104);

      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
LABEL_14:
      IntentPromptAnswer.init(answeredValue:updatedIntent:)();
      v50 = *(v0 + 144);
      v51 = *(v0 + 120);
      v52 = *(v0 + 72);
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow18IntentPromptAnswerVy0A15ContactsIntents022ModifyContactAttributeD0CGMd, &_s11SiriKitFlow18IntentPromptAnswerVy0A15ContactsIntents022ModifyContactAttributeD0CGMR);
      __swift_storeEnumTagSinglePayload(v52, 0, 1, v53);

      OUTLINED_FUNCTION_3();
      goto LABEL_25;
    case 3:
      OUTLINED_FUNCTION_7_25();
      v55 = ParameterResolutionRecord.intent.getter();
      v56 = [v55 contactAttributeToModify];

      if (v56 != 6)
      {
        type metadata accessor for ContactsError();
        lazy protocol witness table accessor for type ContactsError and conformance ContactsError();
        OUTLINED_FUNCTION_15_1();
        v29 = v73;
        v30 = 3;
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_14_19();
      v57 = ParameterResolutionRecord.intent.getter();
      v58 = [v57 modifyOperation];

      [v3 setModifyOperation_];
      goto LABEL_35;
    case 4:
      OUTLINED_FUNCTION_7_25();
      v26 = ParameterResolutionRecord.intent.getter();
      v27 = [v26 contactAttributeToModify];

      if (v27 == 6)
      {
        type metadata accessor for ContactsError();
        lazy protocol witness table accessor for type ContactsError and conformance ContactsError();
        OUTLINED_FUNCTION_15_1();
        v29 = v28;
        v30 = 4;
LABEL_23:
        ModifyContactAttributeSlots.rawValue.getter(v30);
        *v29 = v75;
        v29[1] = v76;
        v29[2] = v23;
        v29[3] = v25;
        goto LABEL_24;
      }

      OUTLINED_FUNCTION_14_19();
      v80 = ParameterResolutionRecord.intent.getter();
      [v80 contactAttributeToModify];

      OUTLINED_FUNCTION_21_16(v81, sel_setContactAttributeToModify_);
      v82 = ParameterResolutionRecord.intent.getter();
      [v82 modifyOperation];

      OUTLINED_FUNCTION_21_16(v83, sel_setModifyOperation_);
      v84 = ParameterResolutionRecord.intent.getter();
      v85 = outlined bridged method (ob) of @objc ModifyContactAttributeIntent.modifyRelationship.getter(v84);
      if (v86)
      {
        v67.super.isa = MEMORY[0x26D5E2470](v85);
      }

      else
      {
        v67.super.isa = 0;
      }

      [v3 setModifyRelationship_];
      goto LABEL_34;
  }

  v68 = *(v0 + 66);
  type metadata accessor for ContactsError();
  lazy protocol witness table accessor for type ContactsError and conformance ContactsError();
  swift_allocError();
  v70 = v69;
  ModifyContactAttributeSlots.rawValue.getter(v68);
  *v70 = v71;
  v70[1] = v72;
  v70[2] = v23;
  v70[3] = v25;
LABEL_24:
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  v77 = *(v0 + 144);
  v78 = *(v0 + 120);

  OUTLINED_FUNCTION_3();
LABEL_25:

  return v54();
}

uint64_t ModifyContactAttributeNeedsValueStrategy.makePromptForValue(resolveRecord:)()
{
  OUTLINED_FUNCTION_4();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = *(*(type metadata accessor for Locale() - 8) + 64);
  v1[5] = OUTLINED_FUNCTION_10_0();
  v5 = type metadata accessor for NLContextUpdate();
  v1[6] = v5;
  OUTLINED_FUNCTION_1_1(v5);
  v1[7] = v6;
  v8 = *(v7 + 64);
  v1[8] = OUTLINED_FUNCTION_10_0();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64);
  v1[9] = OUTLINED_FUNCTION_10_0();
  v10 = type metadata accessor for TemplatingResult();
  v1[10] = v10;
  OUTLINED_FUNCTION_1_1(v10);
  v1[11] = v11;
  v13 = *(v12 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v14 = type metadata accessor for SpeakableString();
  v1[15] = v14;
  OUTLINED_FUNCTION_1_1(v14);
  v1[16] = v15;
  v17 = *(v16 + 64);
  v1[17] = OUTLINED_FUNCTION_10_0();
  v18 = type metadata accessor for ParameterIdentifier();
  v1[18] = v18;
  OUTLINED_FUNCTION_1_1(v18);
  v1[19] = v19;
  v21 = *(v20 + 64);
  v1[20] = OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

{
  OUTLINED_FUNCTION_39();
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVy0A15ContactsIntents28ModifyContactAttributeIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVy0A15ContactsIntents28ModifyContactAttributeIntentCGMR);
  ParameterResolutionRecord.parameter.getter();
  v5 = ParameterIdentifier.name.getter();
  v7 = v6;
  (*(v2 + 8))(v1, v3);

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  value = ModifyContactAttributeSlots.init(rawValue:)(v8).value;
  if (value == 2)
  {
    v32 = v0[4];
    v31 = v0[5];
    v33 = v0[3];

    v34 = ParameterResolutionRecord.intent.getter();
    v35 = _s19SiriContactsIntents39ModifyContactAttributeStrategyProvidingPAAE010getRelatedE06intent14contactServiceSo9CNContactCAA0deF6IntentC_AA0eM8Protocol_ptFAA0def16UnsupportedValueG0C_Tt1g5Tm(v34, v32 + 7);
    v0[23] = v35;

    v36 = v32[12];
    type metadata accessor for DialogPerson();
    v37 = v32[6];
    __swift_project_boxed_opaque_existential_1(v32 + 2, v32[5]);
    v38 = v35;
    dispatch thunk of DeviceState.siriLocale.getter();
    v0[24] = DialogPerson.init(from:useConversationalName:locale:mockGlobals:)(v38, 1, v31, 0);
    swift_task_alloc();
    OUTLINED_FUNCTION_36_0();
    v0[25] = v39;
    *v39 = v40;
    v39[1] = ModifyContactAttributeNeedsValueStrategy.makePromptForValue(resolveRecord:);
    v41 = v0[13];
    OUTLINED_FUNCTION_28_4();

    return ModifyContactAttributeCATs.promptForRelationship(contact:)(v42, v43);
  }

  else if (value == 3)
  {
    v25 = v0[4];

    v26 = *(v25 + 96);
    swift_task_alloc();
    OUTLINED_FUNCTION_36_0();
    v0[27] = v27;
    *v27 = v28;
    v27[1] = ModifyContactAttributeNeedsValueStrategy.makePromptForValue(resolveRecord:);
    v29 = v0[12];
    OUTLINED_FUNCTION_28_4();

    return ModifyContactAttributeCATs.promptForNickname()();
  }

  else
  {
    if (value != 4)
    {
      type metadata accessor for ContactsError();
      lazy protocol witness table accessor for type ContactsError and conformance ContactsError();
      swift_allocError();
      *v45 = v5;
      v45[1] = v7;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v46 = v0[20];
      v47 = v0[17];
      v49 = v0[13];
      v48 = v0[14];
      v50 = v0[12];
      v52 = v0[8];
      v51 = v0[9];
      v53 = v0[5];

      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_28_4();

      __asm { BRAA            X1, X16 }
    }

    v10 = v0[3];

    v11 = ParameterResolutionRecord.intent.getter();
    outlined bridged method (ob) of @objc ModifyContactAttributeIntent.modifyRelationship.getter(v11);
    if (!v12)
    {
      static String.EMPTY.getter();
    }

    v14 = v0[16];
    v13 = v0[17];
    v15 = v0[15];
    v16 = v0[9];
    v17 = v0[4];
    SpeakableString.init(print:speak:)();
    v18 = *(v17 + 96);
    (*(v14 + 16))(v16, v13, v15);
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v15);
    swift_task_alloc();
    OUTLINED_FUNCTION_36_0();
    v0[21] = v19;
    *v19 = v20;
    v19[1] = ModifyContactAttributeNeedsValueStrategy.makePromptForValue(resolveRecord:);
    v21 = v0[14];
    v22 = v0[9];
    OUTLINED_FUNCTION_28_4();

    return ModifyContactAttributeCATs.promptForRelationshipContact(requestedRelationship:)();
  }
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v5 = *(v4 + 168);
  v6 = *(v4 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_0();
  *v8 = v7;
  *(v9 + 176) = v0;

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 200);
  v7 = *v1;
  OUTLINED_FUNCTION_0();
  *v8 = v7;
  *(v3 + 208) = v0;

  if (!v0)
  {
    v9 = *(v3 + 192);
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v5 = *(v4 + 216);
  v6 = *v1;
  OUTLINED_FUNCTION_0();
  *v7 = v6;
  *(v8 + 224) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  (*(v0[16] + 8))(v0[17], v0[15]);
  v1 = v0[22];
  OUTLINED_FUNCTION_1_46();

  OUTLINED_FUNCTION_3();

  return v2();
}

{
  v1 = *(v0 + 192);

  v2 = *(v0 + 208);
  OUTLINED_FUNCTION_1_46();

  OUTLINED_FUNCTION_3();

  return v3();
}

{
  v1 = *(v0 + 224);
  OUTLINED_FUNCTION_1_46();

  OUTLINED_FUNCTION_3();

  return v2();
}

uint64_t ModifyContactAttributeNeedsValueStrategy.makePromptForValue(resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_39();
  v13 = v12[14];
  v15 = v12[7];
  v14 = v12[8];
  v16 = v12[6];
  v17 = v12[4];
  v18 = v12[2];
  static ContactsContextProvider.needsValueRelatedSiriMatches()();
  v19 = type metadata accessor for AceOutput();
  v20 = MEMORY[0x277D5C1D8];
  v18[3] = v19;
  v18[4] = v20;
  __swift_allocate_boxed_opaque_existential_1(v18);
  specialized ContactsNeedsValueStrategy.needsValueOutput(templateResult:nlContextUpdate:)(v13, v14);
  (*(v15 + 8))(v14, v16);
  v22 = v12[16];
  v21 = v12[17];
  v23 = v12[15];
  v24 = v12[20];
  v26 = v12[12];
  v25 = v12[13];
  v28 = v12[8];
  v27 = v12[9];
  v38 = v12[5];
  (*(v12[11] + 8))(v12[14], v12[10]);
  (*(v22 + 8))(v21, v23);

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_22_3();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, v38, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_39();
  v13 = v12[23];
  v14 = v12[13];
  v15 = v12[8];
  v16 = v12[4];
  v17 = v12[2];
  NLContextUpdate.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
  v18 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  OUTLINED_FUNCTION_1_1(v18);
  v20 = *(v19 + 72);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_266966D90;
  static ContactsContextProvider.makeSDAForNeedsValueModifyRelationship()(v23 + v22);
  NLContextUpdate.nluSystemDialogActs.setter();
  v24 = type metadata accessor for AceOutput();
  v25 = MEMORY[0x277D5C1D8];
  v17[3] = v24;
  v17[4] = v25;
  __swift_allocate_boxed_opaque_existential_1(v17);
  specialized ContactsNeedsValueStrategy.needsValueOutput(templateResult:nlContextUpdate:)(v14, v15);

  v26 = v12[8];
  v27 = v12[20];
  v28 = v12[17];
  v29 = v12[13];
  v30 = v12[14];
  v32 = v12[11];
  v31 = v12[12];
  OUTLINED_FUNCTION_15_18(v12[7]);
  v33(v26);
  (*(v32 + 8))(v29, v22);

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_22_3();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_39();
  v14 = v12[12];
  v15 = v12[8];
  v16 = v12[4];
  v17 = v12[2];
  static ContactsContextProvider.needsValueModifyNickname()();
  v18 = type metadata accessor for AceOutput();
  v19 = MEMORY[0x277D5C1D8];
  v17[3] = v18;
  v17[4] = v19;
  __swift_allocate_boxed_opaque_existential_1(v17);
  specialized ContactsNeedsValueStrategy.needsValueOutput(templateResult:nlContextUpdate:)(v14, v15);
  v21 = v12[11];
  v20 = v12[12];
  v22 = v12[8];
  v23 = v12[20];
  v24 = v12[17];
  v26 = v12[13];
  v25 = v12[14];
  OUTLINED_FUNCTION_15_18(v12[7]);
  v27(v22);
  (*(v21 + 8))(v20, v13);

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_22_3();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
}

uint64_t type metadata accessor for ModifyContactAttributeNeedsValueStrategy()
{
  result = type metadata singleton initialization cache for ModifyContactAttributeNeedsValueStrategy;
  if (!type metadata singleton initialization cache for ModifyContactAttributeNeedsValueStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined bridged method (ob) of @objc ModifyContactAttributeIntent.relatedSiriMatches.getter(void *a1)
{
  v2 = [a1 relatedSiriMatches];

  if (!v2)
  {
    return 0;
  }

  type metadata accessor for SiriMatch();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (ob) of @objc ModifyContactAttributeIntent.modifyRelationship.getter(void *a1)
{
  v2 = [a1 modifyRelationship];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t OUTLINED_FUNCTION_1_46()
{
  v2 = v0[20];
  v3 = v0[17];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  v8 = v0[8];
  v7 = v0[9];
  v9 = v0[5];
}

uint64_t OUTLINED_FUNCTION_7_25()
{
  result = *(v0 + 152);
  v2 = *(v0 + 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_28(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, a2, &a9);
}

uint64_t OUTLINED_FUNCTION_14_19()
{
  v2 = *(v0 + 152);
  v3 = *(v0 + 88);
}

void OUTLINED_FUNCTION_15_18(uint64_t a1@<X8>)
{
  v3 = v1[9];
  v2 = v1[10];
  v4 = v1[6];
  v6 = v1[5];
  v5 = *(a1 + 8);
}

id OUTLINED_FUNCTION_21_16(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

void specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:)()
{
  OUTLINED_FUNCTION_18_16();
  v2 = OUTLINED_FUNCTION_16_15();
  v3 = OUTLINED_FUNCTION_7_26(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_43();
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2();
  }

  v6 = static Signpost.contactsLog;
  OUTLINED_FUNCTION_15_19();
  static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_4_33();
  OUTLINED_FUNCTION_6_35();
  v7 = v1[3];
  v8 = v1[4];
  OUTLINED_FUNCTION_1_47(v1);
  if (dispatch thunk of DeviceState.isWatch.getter())
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v9 = type metadata accessor for Logger();
    v10 = OUTLINED_FUNCTION_52_0(v9, static Logger.siriContacts);
    v11 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_8_29(v11))
    {
      v12 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_10_31(v12);
      OUTLINED_FUNCTION_27(&dword_26686A000, v13, v14, "#IdiomSensitiveViewBuilder Building views for Watch");
      OUTLINED_FUNCTION_5_32();
    }

    ErrorViewBuilder.makeViewsForWatch()();
  }

  else
  {
    v15 = v1[3];
    v16 = v1[4];
    OUTLINED_FUNCTION_1_47(v1);
    if (dispatch thunk of DeviceState.isMac.getter())
    {
      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2();
      }

      v17 = type metadata accessor for Logger();
      v18 = OUTLINED_FUNCTION_52_0(v17, static Logger.siriContacts);
      v19 = static os_log_type_t.info.getter();
      if (OUTLINED_FUNCTION_8_29(v19))
      {
        v20 = OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_10_31(v20);
        OUTLINED_FUNCTION_27(&dword_26686A000, v21, v22, "#IdiomSensitiveViewBuilder Building views for Mac");
        OUTLINED_FUNCTION_5_32();
      }

      ErrorViewBuilder.makeViewsForMac()();
    }

    else
    {
      v23 = v1[3];
      v24 = v1[4];
      OUTLINED_FUNCTION_1_47(v1);
      if (dispatch thunk of DeviceState.isCarDNDMode.getter())
      {
        if (one-time initialization token for siriContacts != -1)
        {
          OUTLINED_FUNCTION_2();
        }

        v25 = type metadata accessor for Logger();
        v26 = OUTLINED_FUNCTION_52_0(v25, static Logger.siriContacts);
        v27 = static os_log_type_t.info.getter();
        if (OUTLINED_FUNCTION_8_29(v27))
        {
          v28 = OUTLINED_FUNCTION_30();
          OUTLINED_FUNCTION_10_31(v28);
          OUTLINED_FUNCTION_27(&dword_26686A000, v29, v30, "#IdiomSensitiveViewBuilder Building views for CarDND");
          OUTLINED_FUNCTION_5_32();
        }

        ErrorViewBuilder.makeViewsForCarDND()();
      }

      else
      {
        v31 = v1[3];
        v32 = v1[4];
        OUTLINED_FUNCTION_1_47(v1);
        if (dispatch thunk of DeviceState.isCarPlay.getter())
        {
          if (one-time initialization token for siriContacts != -1)
          {
            OUTLINED_FUNCTION_2();
          }

          v33 = type metadata accessor for Logger();
          v34 = OUTLINED_FUNCTION_52_0(v33, static Logger.siriContacts);
          v35 = static os_log_type_t.info.getter();
          if (OUTLINED_FUNCTION_8_29(v35))
          {
            v36 = OUTLINED_FUNCTION_30();
            OUTLINED_FUNCTION_10_31(v36);
            OUTLINED_FUNCTION_27(&dword_26686A000, v37, v38, "#IdiomSensitiveViewBuilder Building views for CarPlay");
            OUTLINED_FUNCTION_5_32();
          }

          ErrorViewBuilder.makeViewsForCarPlay()();
        }

        else
        {
          v39 = v1[3];
          v40 = v1[4];
          OUTLINED_FUNCTION_1_47(v1);
          if (dispatch thunk of DeviceState.isXRDevice.getter())
          {
            if (one-time initialization token for siriContacts != -1)
            {
              OUTLINED_FUNCTION_2();
            }

            v41 = type metadata accessor for Logger();
            v42 = OUTLINED_FUNCTION_52_0(v41, static Logger.siriContacts);
            v43 = static os_log_type_t.info.getter();
            if (OUTLINED_FUNCTION_8_29(v43))
            {
              v44 = OUTLINED_FUNCTION_30();
              OUTLINED_FUNCTION_10_31(v44);
              OUTLINED_FUNCTION_27(&dword_26686A000, v45, v46, "#IdiomSensitiveViewBuilder Building views for XROS");
              OUTLINED_FUNCTION_5_32();
            }

            ErrorViewBuilder.makeViewsForXROS()();
          }

          else
          {
            if (one-time initialization token for siriContacts != -1)
            {
              OUTLINED_FUNCTION_2();
            }

            v47 = type metadata accessor for Logger();
            v48 = OUTLINED_FUNCTION_52_0(v47, static Logger.siriContacts);
            v49 = static os_log_type_t.info.getter();
            if (OUTLINED_FUNCTION_8_29(v49))
            {
              v50 = OUTLINED_FUNCTION_30();
              OUTLINED_FUNCTION_10_31(v50);
              OUTLINED_FUNCTION_27(&dword_26686A000, v51, v52, "#IdiomSensitiveViewBuilder Building views for IOS");
              OUTLINED_FUNCTION_5_32();
            }

            ErrorViewBuilder.makeViewsForIOS()();
          }
        }
      }
    }
  }

  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_11_22();
  outlined destroy of Signpost.OpenSignpost(v0);
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_19_13();
}

{
  OUTLINED_FUNCTION_18_16();
  v2 = OUTLINED_FUNCTION_16_15();
  v3 = OUTLINED_FUNCTION_7_26(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_43();
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2();
  }

  v6 = static Signpost.contactsLog;
  OUTLINED_FUNCTION_15_19();
  static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_4_33();
  OUTLINED_FUNCTION_6_35();
  v7 = v1[4];
  v8 = v1[5];
  OUTLINED_FUNCTION_1_47(v1 + 1);
  if (dispatch thunk of DeviceState.isWatch.getter())
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v9 = type metadata accessor for Logger();
    v10 = OUTLINED_FUNCTION_52_0(v9, static Logger.siriContacts);
    v11 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_8_29(v11))
    {
      v12 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_10_31(v12);
      OUTLINED_FUNCTION_27(&dword_26686A000, v13, v14, "#IdiomSensitiveViewBuilder Building views for Watch");
      OUTLINED_FUNCTION_5_32();
    }

    ConfirmationViewBuilder.makeViewsForWatch()();
  }

  else
  {
    v15 = v1[4];
    v16 = v1[5];
    OUTLINED_FUNCTION_1_47(v1 + 1);
    if (dispatch thunk of DeviceState.isMac.getter())
    {
      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2();
      }

      v17 = type metadata accessor for Logger();
      v18 = OUTLINED_FUNCTION_52_0(v17, static Logger.siriContacts);
      v19 = static os_log_type_t.info.getter();
      if (OUTLINED_FUNCTION_8_29(v19))
      {
        v20 = OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_10_31(v20);
        OUTLINED_FUNCTION_27(&dword_26686A000, v21, v22, "#IdiomSensitiveViewBuilder Building views for Mac");
        OUTLINED_FUNCTION_5_32();
      }

      ConfirmationViewBuilder.makeViewsForMac()();
    }

    else
    {
      v23 = v1[4];
      v24 = v1[5];
      OUTLINED_FUNCTION_1_47(v1 + 1);
      if (dispatch thunk of DeviceState.isCarDNDMode.getter())
      {
        if (one-time initialization token for siriContacts != -1)
        {
          OUTLINED_FUNCTION_2();
        }

        v25 = type metadata accessor for Logger();
        v26 = OUTLINED_FUNCTION_52_0(v25, static Logger.siriContacts);
        v27 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = OUTLINED_FUNCTION_30();
          *v28 = 0;
          _os_log_impl(&dword_26686A000, v26, v27, "#IdiomSensitiveViewBuilder Building views for CarDND", v28, 2u);
          MEMORY[0x26D5E3300](v28, -1, -1);
        }
      }

      else
      {
        v29 = v1[4];
        v30 = v1[5];
        OUTLINED_FUNCTION_1_47(v1 + 1);
        if (dispatch thunk of DeviceState.isCarPlay.getter())
        {
          if (one-time initialization token for siriContacts != -1)
          {
            OUTLINED_FUNCTION_2();
          }

          v31 = type metadata accessor for Logger();
          v32 = OUTLINED_FUNCTION_52_0(v31, static Logger.siriContacts);
          v33 = static os_log_type_t.info.getter();
          if (OUTLINED_FUNCTION_8_29(v33))
          {
            v34 = OUTLINED_FUNCTION_30();
            OUTLINED_FUNCTION_10_31(v34);
            OUTLINED_FUNCTION_27(&dword_26686A000, v35, v36, "#IdiomSensitiveViewBuilder Building views for CarPlay");
            OUTLINED_FUNCTION_5_32();
          }

          ConfirmationViewBuilder.makeViewsForCarPlay()();
        }

        else
        {
          v37 = v1[4];
          v38 = v1[5];
          OUTLINED_FUNCTION_1_47(v1 + 1);
          if (dispatch thunk of DeviceState.isXRDevice.getter())
          {
            if (one-time initialization token for siriContacts != -1)
            {
              OUTLINED_FUNCTION_2();
            }

            v39 = type metadata accessor for Logger();
            v40 = OUTLINED_FUNCTION_52_0(v39, static Logger.siriContacts);
            v41 = static os_log_type_t.info.getter();
            if (OUTLINED_FUNCTION_8_29(v41))
            {
              v42 = OUTLINED_FUNCTION_30();
              OUTLINED_FUNCTION_10_31(v42);
              OUTLINED_FUNCTION_27(&dword_26686A000, v43, v44, "#IdiomSensitiveViewBuilder Building views for XROS");
              OUTLINED_FUNCTION_5_32();
            }

            ConfirmationViewBuilder.makeViewsForXROS()();
          }

          else
          {
            if (one-time initialization token for siriContacts != -1)
            {
              OUTLINED_FUNCTION_2();
            }

            v45 = type metadata accessor for Logger();
            v46 = OUTLINED_FUNCTION_52_0(v45, static Logger.siriContacts);
            v47 = static os_log_type_t.info.getter();
            if (OUTLINED_FUNCTION_8_29(v47))
            {
              v48 = OUTLINED_FUNCTION_30();
              OUTLINED_FUNCTION_10_31(v48);
              OUTLINED_FUNCTION_27(&dword_26686A000, v49, v50, "#IdiomSensitiveViewBuilder Building views for IOS");
              OUTLINED_FUNCTION_5_32();
            }

            ConfirmationViewBuilder.makeViewsForIOS()();
          }
        }
      }
    }
  }

  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_11_22();
  outlined destroy of Signpost.OpenSignpost(v0);
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_19_13();
}

{
  OUTLINED_FUNCTION_18_16();
  v2 = OUTLINED_FUNCTION_16_15();
  v3 = OUTLINED_FUNCTION_7_26(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_43();
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2();
  }

  v6 = static Signpost.contactsLog;
  OUTLINED_FUNCTION_15_19();
  static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_4_33();
  OUTLINED_FUNCTION_6_35();
  v7 = v1[3];
  v8 = v1[4];
  OUTLINED_FUNCTION_1_47(v1);
  if (dispatch thunk of DeviceState.isWatch.getter())
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v9 = type metadata accessor for Logger();
    v10 = OUTLINED_FUNCTION_52_0(v9, static Logger.siriContacts);
    v11 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_8_29(v11))
    {
      v12 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_10_31(v12);
      OUTLINED_FUNCTION_27(&dword_26686A000, v13, v14, "#IdiomSensitiveViewBuilder Building views for Watch");
      OUTLINED_FUNCTION_5_32();
    }

    MissingMeCardViewBuilder.makeViewsForWatch()();
  }

  else
  {
    v15 = v1[3];
    v16 = v1[4];
    OUTLINED_FUNCTION_1_47(v1);
    if (dispatch thunk of DeviceState.isMac.getter())
    {
      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2();
      }

      v17 = type metadata accessor for Logger();
      v18 = OUTLINED_FUNCTION_52_0(v17, static Logger.siriContacts);
      v19 = static os_log_type_t.info.getter();
      if (OUTLINED_FUNCTION_8_29(v19))
      {
        v20 = OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_10_31(v20);
        OUTLINED_FUNCTION_27(&dword_26686A000, v21, v22, "#IdiomSensitiveViewBuilder Building views for Mac");
        OUTLINED_FUNCTION_5_32();
      }

      MissingMeCardViewBuilder.makeViewsForMac()();
    }

    else
    {
      v23 = v1[3];
      v24 = v1[4];
      OUTLINED_FUNCTION_1_47(v1);
      if (dispatch thunk of DeviceState.isCarDNDMode.getter())
      {
        if (one-time initialization token for siriContacts != -1)
        {
          OUTLINED_FUNCTION_2();
        }

        v25 = type metadata accessor for Logger();
        v26 = OUTLINED_FUNCTION_52_0(v25, static Logger.siriContacts);
        v27 = static os_log_type_t.info.getter();
        if (OUTLINED_FUNCTION_8_29(v27))
        {
          v28 = OUTLINED_FUNCTION_30();
          OUTLINED_FUNCTION_10_31(v28);
          OUTLINED_FUNCTION_27(&dword_26686A000, v29, v30, "#IdiomSensitiveViewBuilder Building views for CarDND");
          OUTLINED_FUNCTION_5_32();
        }

        MissingMeCardViewBuilder.makeViewsForCarDND()();
      }

      else
      {
        v31 = v1[3];
        v32 = v1[4];
        OUTLINED_FUNCTION_1_47(v1);
        if (dispatch thunk of DeviceState.isCarPlay.getter())
        {
          if (one-time initialization token for siriContacts != -1)
          {
            OUTLINED_FUNCTION_2();
          }

          v33 = type metadata accessor for Logger();
          v34 = OUTLINED_FUNCTION_52_0(v33, static Logger.siriContacts);
          v35 = static os_log_type_t.info.getter();
          if (OUTLINED_FUNCTION_8_29(v35))
          {
            v36 = OUTLINED_FUNCTION_30();
            OUTLINED_FUNCTION_10_31(v36);
            OUTLINED_FUNCTION_27(&dword_26686A000, v37, v38, "#IdiomSensitiveViewBuilder Building views for CarPlay");
            OUTLINED_FUNCTION_5_32();
          }

          MissingMeCardViewBuilder.makeViewsForCarPlay()();
        }

        else
        {
          v39 = v1[3];
          v40 = v1[4];
          OUTLINED_FUNCTION_1_47(v1);
          if (dispatch thunk of DeviceState.isXRDevice.getter())
          {
            if (one-time initialization token for siriContacts != -1)
            {
              OUTLINED_FUNCTION_2();
            }

            v41 = type metadata accessor for Logger();
            v42 = OUTLINED_FUNCTION_52_0(v41, static Logger.siriContacts);
            v43 = static os_log_type_t.info.getter();
            if (OUTLINED_FUNCTION_8_29(v43))
            {
              v44 = OUTLINED_FUNCTION_30();
              OUTLINED_FUNCTION_10_31(v44);
              OUTLINED_FUNCTION_27(&dword_26686A000, v45, v46, "#IdiomSensitiveViewBuilder Building views for XROS");
              OUTLINED_FUNCTION_5_32();
            }

            MissingMeCardViewBuilder.makeViewsForXROS()();
          }

          else
          {
            if (one-time initialization token for siriContacts != -1)
            {
              OUTLINED_FUNCTION_2();
            }

            v47 = type metadata accessor for Logger();
            v48 = OUTLINED_FUNCTION_52_0(v47, static Logger.siriContacts);
            v49 = static os_log_type_t.info.getter();
            if (OUTLINED_FUNCTION_8_29(v49))
            {
              v50 = OUTLINED_FUNCTION_30();
              OUTLINED_FUNCTION_10_31(v50);
              OUTLINED_FUNCTION_27(&dword_26686A000, v51, v52, "#IdiomSensitiveViewBuilder Building views for IOS");
              OUTLINED_FUNCTION_5_32();
            }

            MissingMeCardViewBuilder.makeViewsForIOS()();
          }
        }
      }
    }
  }

  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_11_22();
  outlined destroy of Signpost.OpenSignpost(v0);
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_19_13();
}

{
  OUTLINED_FUNCTION_18_16();
  v2 = OUTLINED_FUNCTION_16_15();
  v3 = OUTLINED_FUNCTION_7_26(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_43();
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2();
  }

  v6 = static Signpost.contactsLog;
  OUTLINED_FUNCTION_15_19();
  static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_4_33();
  OUTLINED_FUNCTION_6_35();
  v7 = v1[7];
  v8 = v1[8];
  OUTLINED_FUNCTION_1_47(v1 + 4);
  if (dispatch thunk of DeviceState.isWatch.getter())
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v9 = type metadata accessor for Logger();
    v10 = OUTLINED_FUNCTION_52_0(v9, static Logger.siriContacts);
    v11 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_8_29(v11))
    {
      v12 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_10_31(v12);
      OUTLINED_FUNCTION_27(&dword_26686A000, v13, v14, "#IdiomSensitiveViewBuilder Building views for Watch");
      OUTLINED_FUNCTION_5_32();
    }

    GetContactAttributeViewBuilder.makeViewsForWatch()();
    goto LABEL_38;
  }

  v15 = v1[7];
  v16 = v1[8];
  OUTLINED_FUNCTION_1_47(v1 + 4);
  if (dispatch thunk of DeviceState.isMac.getter())
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v17 = type metadata accessor for Logger();
    v18 = OUTLINED_FUNCTION_52_0(v17, static Logger.siriContacts);
    v19 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_8_29(v19))
    {
      v20 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_10_31(v20);
      OUTLINED_FUNCTION_27(&dword_26686A000, v21, v22, "#IdiomSensitiveViewBuilder Building views for Mac");
      OUTLINED_FUNCTION_5_32();
    }

    GetContactAttributeViewBuilder.makeViewsForMac()();
    goto LABEL_38;
  }

  v23 = v1[7];
  v24 = v1[8];
  OUTLINED_FUNCTION_1_47(v1 + 4);
  if (dispatch thunk of DeviceState.isCarDNDMode.getter())
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v25 = type metadata accessor for Logger();
    v26 = OUTLINED_FUNCTION_52_0(v25, static Logger.siriContacts);
    v27 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_8_29(v27))
    {
      v28 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_10_31(v28);
      OUTLINED_FUNCTION_27(&dword_26686A000, v29, v30, "#IdiomSensitiveViewBuilder Building views for CarDND");
      OUTLINED_FUNCTION_5_32();
    }

    GetContactAttributeViewBuilder.makeViewsForCarDND()();
    goto LABEL_38;
  }

  v31 = v1[7];
  v32 = v1[8];
  OUTLINED_FUNCTION_1_47(v1 + 4);
  if ((dispatch thunk of DeviceState.isCarPlay.getter() & 1) == 0)
  {
    v39 = v1[7];
    v40 = v1[8];
    OUTLINED_FUNCTION_1_47(v1 + 4);
    if (dispatch thunk of DeviceState.isXRDevice.getter())
    {
      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2();
      }

      v41 = type metadata accessor for Logger();
      v42 = OUTLINED_FUNCTION_52_0(v41, static Logger.siriContacts);
      v43 = static os_log_type_t.info.getter();
      if (!OUTLINED_FUNCTION_8_29(v43))
      {
        goto LABEL_37;
      }

      v44 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_10_31(v44);
      v47 = "#IdiomSensitiveViewBuilder Building views for XROS";
    }

    else
    {
      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2();
      }

      v48 = type metadata accessor for Logger();
      v42 = OUTLINED_FUNCTION_52_0(v48, static Logger.siriContacts);
      v49 = static os_log_type_t.info.getter();
      if (!OUTLINED_FUNCTION_8_29(v49))
      {
        goto LABEL_37;
      }

      v50 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_10_31(v50);
      v47 = "#IdiomSensitiveViewBuilder Building views for IOS";
    }

    OUTLINED_FUNCTION_27(&dword_26686A000, v45, v46, v47);
    OUTLINED_FUNCTION_5_32();
LABEL_37:

    GetContactAttributeViewBuilder.makeViewsForIOS()();
    goto LABEL_38;
  }

  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v33 = type metadata accessor for Logger();
  v34 = OUTLINED_FUNCTION_52_0(v33, static Logger.siriContacts);
  v35 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_8_29(v35))
  {
    v36 = OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_10_31(v36);
    OUTLINED_FUNCTION_27(&dword_26686A000, v37, v38, "#IdiomSensitiveViewBuilder Building views for CarPlay");
    OUTLINED_FUNCTION_5_32();
  }

  GetContactAttributeViewBuilder.makeViewsForCarPlay()();
LABEL_38:
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_11_22();
  outlined destroy of Signpost.OpenSignpost(v0);
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_19_13();
}

{
  OUTLINED_FUNCTION_18_16();
  v2 = OUTLINED_FUNCTION_16_15();
  v3 = OUTLINED_FUNCTION_7_26(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_43();
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2();
  }

  v6 = static Signpost.contactsLog;
  OUTLINED_FUNCTION_15_19();
  static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_4_33();
  OUTLINED_FUNCTION_6_35();
  v7 = v1[10];
  v8 = v1[11];
  OUTLINED_FUNCTION_1_47(v1 + 7);
  if (dispatch thunk of DeviceState.isWatch.getter())
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v9 = type metadata accessor for Logger();
    v10 = OUTLINED_FUNCTION_52_0(v9, static Logger.siriContacts);
    v11 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_8_29(v11))
    {
      v12 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_10_31(v12);
      OUTLINED_FUNCTION_27(&dword_26686A000, v13, v14, "#IdiomSensitiveViewBuilder Building views for Watch");
      OUTLINED_FUNCTION_5_32();
    }

    ModifyContactAttributeViewBuilder.makeViewsForWatch()();
    goto LABEL_38;
  }

  v15 = v1[10];
  v16 = v1[11];
  OUTLINED_FUNCTION_1_47(v1 + 7);
  if (dispatch thunk of DeviceState.isMac.getter())
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v17 = type metadata accessor for Logger();
    v18 = OUTLINED_FUNCTION_52_0(v17, static Logger.siriContacts);
    v19 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_8_29(v19))
    {
      v20 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_10_31(v20);
      OUTLINED_FUNCTION_27(&dword_26686A000, v21, v22, "#IdiomSensitiveViewBuilder Building views for Mac");
      OUTLINED_FUNCTION_5_32();
    }

    ModifyContactAttributeViewBuilder.makeViewsForMac()();
    goto LABEL_38;
  }

  v23 = v1[10];
  v24 = v1[11];
  OUTLINED_FUNCTION_1_47(v1 + 7);
  if (dispatch thunk of DeviceState.isCarDNDMode.getter())
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v25 = type metadata accessor for Logger();
    v26 = OUTLINED_FUNCTION_52_0(v25, static Logger.siriContacts);
    v27 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_8_29(v27))
    {
      v28 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_10_31(v28);
      OUTLINED_FUNCTION_27(&dword_26686A000, v29, v30, "#IdiomSensitiveViewBuilder Building views for CarDND");
      OUTLINED_FUNCTION_5_32();
    }

    ModifyContactAttributeViewBuilder.makeViewsForCarDND()();
    goto LABEL_38;
  }

  v31 = v1[10];
  v32 = v1[11];
  OUTLINED_FUNCTION_1_47(v1 + 7);
  if ((dispatch thunk of DeviceState.isCarPlay.getter() & 1) == 0)
  {
    v39 = v1[10];
    v40 = v1[11];
    OUTLINED_FUNCTION_1_47(v1 + 7);
    if (dispatch thunk of DeviceState.isXRDevice.getter())
    {
      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2();
      }

      v41 = type metadata accessor for Logger();
      v42 = OUTLINED_FUNCTION_52_0(v41, static Logger.siriContacts);
      v43 = static os_log_type_t.info.getter();
      if (!OUTLINED_FUNCTION_8_29(v43))
      {
        goto LABEL_37;
      }

      v44 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_10_31(v44);
      v47 = "#IdiomSensitiveViewBuilder Building views for XROS";
    }

    else
    {
      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2();
      }

      v48 = type metadata accessor for Logger();
      v42 = OUTLINED_FUNCTION_52_0(v48, static Logger.siriContacts);
      v49 = static os_log_type_t.info.getter();
      if (!OUTLINED_FUNCTION_8_29(v49))
      {
        goto LABEL_37;
      }

      v50 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_10_31(v50);
      v47 = "#IdiomSensitiveViewBuilder Building views for IOS";
    }

    OUTLINED_FUNCTION_27(&dword_26686A000, v45, v46, v47);
    OUTLINED_FUNCTION_5_32();
LABEL_37:

    ModifyContactAttributeViewBuilder.makeViewsForIOS()();
    goto LABEL_38;
  }

  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v33 = type metadata accessor for Logger();
  v34 = OUTLINED_FUNCTION_52_0(v33, static Logger.siriContacts);
  v35 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_8_29(v35))
  {
    v36 = OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_10_31(v36);
    OUTLINED_FUNCTION_27(&dword_26686A000, v37, v38, "#IdiomSensitiveViewBuilder Building views for CarPlay");
    OUTLINED_FUNCTION_5_32();
  }

  ModifyContactAttributeViewBuilder.makeViewsForCarPlay()();
LABEL_38:
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_11_22();
  outlined destroy of Signpost.OpenSignpost(v0);
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_19_13();
}

{
  OUTLINED_FUNCTION_18_16();
  v2 = OUTLINED_FUNCTION_16_15();
  v3 = OUTLINED_FUNCTION_7_26(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_43();
  if (one-time initialization token for contactsLog != -1)
  {
    OUTLINED_FUNCTION_30_2();
  }

  v6 = static Signpost.contactsLog;
  OUTLINED_FUNCTION_15_19();
  static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_4_33();
  OUTLINED_FUNCTION_6_35();
  v7 = v1[8];
  v8 = v1[9];
  OUTLINED_FUNCTION_1_47(v1 + 5);
  if (dispatch thunk of DeviceState.isWatch.getter())
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v9 = type metadata accessor for Logger();
    v10 = OUTLINED_FUNCTION_52_0(v9, static Logger.siriContacts);
    v11 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_8_29(v11))
    {
      v12 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_10_31(v12);
      OUTLINED_FUNCTION_27(&dword_26686A000, v13, v14, "#IdiomSensitiveViewBuilder Building views for Watch");
      OUTLINED_FUNCTION_5_32();
    }

    ModifyNicknameUnsupportedViewBuilder.makeViewsForWatch()();
    goto LABEL_38;
  }

  v15 = v1[8];
  v16 = v1[9];
  OUTLINED_FUNCTION_1_47(v1 + 5);
  if (dispatch thunk of DeviceState.isMac.getter())
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v17 = type metadata accessor for Logger();
    v18 = OUTLINED_FUNCTION_52_0(v17, static Logger.siriContacts);
    v19 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_8_29(v19))
    {
      v20 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_10_31(v20);
      OUTLINED_FUNCTION_27(&dword_26686A000, v21, v22, "#IdiomSensitiveViewBuilder Building views for Mac");
      OUTLINED_FUNCTION_5_32();
    }

    ModifyNicknameUnsupportedViewBuilder.makeViewsForMac()();
    goto LABEL_38;
  }

  v23 = v1[8];
  v24 = v1[9];
  OUTLINED_FUNCTION_1_47(v1 + 5);
  if (dispatch thunk of DeviceState.isCarDNDMode.getter())
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v25 = type metadata accessor for Logger();
    v26 = OUTLINED_FUNCTION_52_0(v25, static Logger.siriContacts);
    v27 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_8_29(v27))
    {
      v28 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_10_31(v28);
      OUTLINED_FUNCTION_27(&dword_26686A000, v29, v30, "#IdiomSensitiveViewBuilder Building views for CarDND");
      OUTLINED_FUNCTION_5_32();
    }

    ModifyNicknameUnsupportedViewBuilder.makeViewsForCarDND()();
    goto LABEL_38;
  }

  v31 = v1[8];
  v32 = v1[9];
  OUTLINED_FUNCTION_1_47(v1 + 5);
  if ((dispatch thunk of DeviceState.isCarPlay.getter() & 1) == 0)
  {
    v39 = v1[8];
    v40 = v1[9];
    OUTLINED_FUNCTION_1_47(v1 + 5);
    if (dispatch thunk of DeviceState.isXRDevice.getter())
    {
      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2();
      }

      v41 = type metadata accessor for Logger();
      v42 = OUTLINED_FUNCTION_52_0(v41, static Logger.siriContacts);
      v43 = static os_log_type_t.info.getter();
      if (!OUTLINED_FUNCTION_8_29(v43))
      {
        goto LABEL_37;
      }

      v44 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_10_31(v44);
      v47 = "#IdiomSensitiveViewBuilder Building views for XROS";
    }

    else
    {
      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_2();
      }

      v48 = type metadata accessor for Logger();
      v42 = OUTLINED_FUNCTION_52_0(v48, static Logger.siriContacts);
      v49 = static os_log_type_t.info.getter();
      if (!OUTLINED_FUNCTION_8_29(v49))
      {
        goto LABEL_37;
      }

      v50 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_10_31(v50);
      v47 = "#IdiomSensitiveViewBuilder Building views for IOS";
    }

    OUTLINED_FUNCTION_27(&dword_26686A000, v45, v46, v47);
    OUTLINED_FUNCTION_5_32();
LABEL_37:

    ModifyNicknameUnsupportedViewBuilder.makeViewsForIOS()();
    goto LABEL_38;
  }

  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v33 = type metadata accessor for Logger();
  v34 = OUTLINED_FUNCTION_52_0(v33, static Logger.siriContacts);
  v35 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_8_29(v35))
  {
    v36 = OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_10_31(v36);
    OUTLINED_FUNCTION_27(&dword_26686A000, v37, v38, "#IdiomSensitiveViewBuilder Building views for CarPlay");
    OUTLINED_FUNCTION_5_32();
  }

  ModifyNicknameUnsupportedViewBuilder.makeViewsForCarPlay()();
LABEL_38:
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_11_22();
  outlined destroy of Signpost.OpenSignpost(v0);
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_19_13();
}

uint64_t ModifyContactAttributeContinueInAppFlowStrategy.makeContinueInAppResponse(intentResolutionRecord:)()
{
  OUTLINED_FUNCTION_4();
  v1[18] = v2;
  v1[19] = v0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  v1[20] = swift_task_alloc();
  v4 = type metadata accessor for TemplatingResult();
  v1[21] = v4;
  v5 = *(v4 - 8);
  v1[22] = v5;
  v6 = *(v5 + 64) + 15;
  v1[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](ModifyContactAttributeContinueInAppFlowStrategy.makeContinueInAppResponse(intentResolutionRecord:), 0, 0);
}

{
  v1 = v0[19];
  if (ContactsStrategy.isSmartEnabled.getter())
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_2();
    }

    v2 = type metadata accessor for Logger();
    v3 = OUTLINED_FUNCTION_52_0(v2, static Logger.siriContacts);
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = OUTLINED_FUNCTION_30();
      *v5 = 0;
      _os_log_impl(&dword_26686A000, v3, v4, "#ModifyContactAttributeContinueInAppFlowStrategy makeIntentHandledResponse SMART enabled but not yet implemented for the intent", v5, 2u);
      MEMORY[0x26D5E3300](v5, -1, -1);
    }
  }

  v6 = v0[19];
  v7 = v6[12];
  v8 = v6[6];
  __swift_project_boxed_opaque_existential_1(v6 + 2, v6[5]);
  v9 = DeviceState.toSiriKitDeviceState.getter();
  v0[24] = v9;
  v10 = v6[5];
  v11 = v6[6];
  OUTLINED_FUNCTION_1_47(v6 + 2);
  v12 = dispatch thunk of DeviceState.isXRDevice.getter();
  v13 = swift_task_alloc();
  v0[25] = v13;
  *v13 = v0;
  v13[1] = ModifyContactAttributeContinueInAppFlowStrategy.makeContinueInAppResponse(intentResolutionRecord:);
  v14 = v0[23];

  return ModifyContactAttributeCATs.unsupportedAttributeToModify(device:contactsAppUnavailable:)(v14, v9, v12 & 1);
}

{
  OUTLINED_FUNCTION_4();
  v2 = *(*v1 + 200);
  v3 = *(*v1 + 192);
  v6 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = ModifyContactAttributeContinueInAppFlowStrategy.makeContinueInAppResponse(intentResolutionRecord:);
  }

  else
  {
    v4 = ModifyContactAttributeContinueInAppFlowStrategy.makeContinueInAppResponse(intentResolutionRecord:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = *(v0 + 160);
  v13 = *(v0 + 168);
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  outlined init with copy of DeviceState(v4 + 16, v0 + 16);
  v6 = *(v4 + 104);
  *(v0 + 88) = &type metadata for InstalledAppsProvider;
  *(v0 + 96) = &protocol witness table for InstalledAppsProvider;
  *(v0 + 56) = v6;

  specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:)();
  outlined destroy of ErrorViewBuilder(v0 + 16);
  v7 = *(v4 + 112);
  v8 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v8);
  v9 = type metadata accessor for AceOutput();
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0;
  *(v0 + 104) = 0u;
  v10 = MEMORY[0x277D5C1D8];
  v5[3] = v9;
  v5[4] = v10;
  __swift_allocate_boxed_opaque_existential_1(v5);
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of UsoEntity_common_Person.DefinedValues?(v0 + 104, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of UsoEntity_common_Person.DefinedValues?(v3, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(v2 + 8))(v1, v13);

  v11 = *(v0 + 8);

  return v11();
}

{
  OUTLINED_FUNCTION_4();
  v1 = v0[23];
  v2 = v0[20];

  v3 = v0[1];
  v4 = v0[26];

  return v3();
}

uint64_t ModifyContactAttributeContinueInAppFlowStrategy.__deallocating_deinit()
{
  v0 = specialized ContactsStrategy.deinit();
  outlined destroy of AppUtil(v0 + 184);

  return MEMORY[0x2821FE8D8](v0, 224, 7);
}

uint64_t type metadata accessor for ModifyContactAttributeContinueInAppFlowStrategy()
{
  result = type metadata singleton initialization cache for ModifyContactAttributeContinueInAppFlowStrategy;
  if (!type metadata singleton initialization cache for ModifyContactAttributeContinueInAppFlowStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifyContactAttributeContinueInAppFlowStrategy and conformance ModifyContactAttributeContinueInAppFlowStrategy()
{
  result = lazy protocol witness table cache variable for type ModifyContactAttributeContinueInAppFlowStrategy and conformance ModifyContactAttributeContinueInAppFlowStrategy;
  if (!lazy protocol witness table cache variable for type ModifyContactAttributeContinueInAppFlowStrategy and conformance ModifyContactAttributeContinueInAppFlowStrategy)
  {
    type metadata accessor for ModifyContactAttributeContinueInAppFlowStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifyContactAttributeContinueInAppFlowStrategy and conformance ModifyContactAttributeContinueInAppFlowStrategy);
  }

  return result;
}

uint64_t protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance ModifyContactAttributeContinueInAppFlowStrategy()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = GetContactAttributeCATs.unsupportedContactAttribute();

  return ModifyContactAttributeContinueInAppFlowStrategy.makeContinueInAppResponse(intentResolutionRecord:)();
}

uint64_t OUTLINED_FUNCTION_4_33()
{

  return os_signpost(_:dso:log:name:signpostID:)();
}

void OUTLINED_FUNCTION_6_35()
{
  v5 = v0 + *(v1 + 20);
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
}

BOOL OUTLINED_FUNCTION_8_29(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_11_22()
{

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t OUTLINED_FUNCTION_15_19()
{

  return OSSignpostID.init(log:)();
}

uint64_t OUTLINED_FUNCTION_16_15()
{

  return type metadata accessor for Signpost.OpenSignpost();
}

uint64_t ContactsLabeledAddress.Builder.__deallocating_deinit()
{
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC19SiriContactsIntents22ContactsLabeledAddress7Builder_label);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC19SiriContactsIntents22ContactsLabeledAddress7Builder_addressString);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t ContactsLabeledAddress.getProperty(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v22 - v12;
  v14 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    outlined init with copy of SpeakableString?(v3 + OBJC_IVAR____TtC19SiriContactsIntents22ContactsLabeledAddress_label, v13);
    v15 = type metadata accessor for SpeakableString();
    if (__swift_getEnumTagSinglePayload(v13, 1, v15) == 1)
    {
      v16 = v13;
LABEL_8:
      result = outlined destroy of SpeakableString?(v16);
LABEL_9:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    *(a3 + 24) = v15;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    return (*(*(v15 - 8) + 32))(boxed_opaque_existential_1, v13, v15);
  }

  else
  {
    if (a1 != 0x5373736572646461 || a2 != 0xED0000676E697274)
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    outlined init with copy of SpeakableString?(v3 + OBJC_IVAR____TtC19SiriContactsIntents22ContactsLabeledAddress_addressString, v11);
    v20 = type metadata accessor for SpeakableString();
    if (__swift_getEnumTagSinglePayload(v11, 1, v20) == 1)
    {
      v16 = v11;
      goto LABEL_8;
    }

    *(a3 + 24) = v20;
    v21 = __swift_allocate_boxed_opaque_existential_1(a3);
    return (*(*(v20 - 8) + 32))(v21, v11, v20);
  }
}

uint64_t ContactsLabeledAddress.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ContactsLabeledAddress.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t ContactsLabeledAddress.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x5373736572646461;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ContactsLabeledAddress.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = ContactsLabeledAddress.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ContactsLabeledAddress.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = ContactsLabeledAddress.CodingKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ContactsLabeledAddress.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = ContactsLabeledAddress.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ContactsLabeledAddress.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContactsLabeledAddress.CodingKeys and conformance ContactsLabeledAddress.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ContactsLabeledAddress.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContactsLabeledAddress.CodingKeys and conformance ContactsLabeledAddress.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContactsLabeledAddress.deinit()
{
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtC19SiriContactsIntents22ContactsLabeledAddress_label);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtC19SiriContactsIntents22ContactsLabeledAddress_addressString);
  return v0;
}

uint64_t ContactsLabeledAddress.__deallocating_deinit()
{
  ContactsLabeledAddress.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void type metadata completion function for ContactsLabeledAddress()
{
  type metadata accessor for SpeakableString?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t ContactsLabeledAddress.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19SiriContactsIntents0E14LabeledAddressC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy19SiriContactsIntents0E14LabeledAddressC10CodingKeysOGMR);
  v4 = OUTLINED_FUNCTION_1_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v15[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ContactsLabeledAddress.CodingKeys and conformance ContactsLabeledAddress.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15[15] = 0;
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_0_50();
  lazy protocol witness table accessor for type ContactsLabeledAddress and conformance ContactsLabeledAddress(v12, v13);
  OUTLINED_FUNCTION_2_29();
  if (!v1)
  {
    v15[14] = 1;
    OUTLINED_FUNCTION_2_29();
  }

  return (*(v6 + 8))(v10, v3);
}

uint64_t ContactsLabeledAddress.__allocating_init(from:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  ContactsLabeledAddress.init(from:)(a1);
  return v5;
}

id *ContactsLabeledAddress.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v25 = v24 - v9;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19SiriContactsIntents0E14LabeledAddressC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy19SiriContactsIntents0E14LabeledAddressC10CodingKeysOGMR);
  v10 = OUTLINED_FUNCTION_1_0(v26);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v1[2] = 0;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ContactsLabeledAddress.CodingKeys and conformance ContactsLabeledAddress.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {

    type metadata accessor for ContactsLabeledAddress(0);
    v19 = *(*v1 + 12);
    v20 = *(*v1 + 26);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v24[1] = v12;
    type metadata accessor for SpeakableString();
    v28 = 0;
    OUTLINED_FUNCTION_0_50();
    lazy protocol witness table accessor for type ContactsLabeledAddress and conformance ContactsLabeledAddress(v16, v17);
    v18 = v25;
    OUTLINED_FUNCTION_6_19();
    outlined init with take of SpeakableString?(v18, v1 + OBJC_IVAR____TtC19SiriContactsIntents22ContactsLabeledAddress_label);
    v27 = 1;
    OUTLINED_FUNCTION_6_19();
    v22 = OUTLINED_FUNCTION_1_25();
    v23(v22);
    outlined init with take of SpeakableString?(v8, v1 + OBJC_IVAR____TtC19SiriContactsIntents22ContactsLabeledAddress_addressString);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v1;
}

uint64_t protocol witness for Decodable.init(from:) in conformance ContactsLabeledAddress@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = ContactsLabeledAddress.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ContactsLabeledAddress and conformance ContactsLabeledAddress(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type ContactsLabeledAddress.CodingKeys and conformance ContactsLabeledAddress.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ContactsLabeledAddress.CodingKeys and conformance ContactsLabeledAddress.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsLabeledAddress.CodingKeys and conformance ContactsLabeledAddress.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsLabeledAddress.CodingKeys and conformance ContactsLabeledAddress.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsLabeledAddress.CodingKeys and conformance ContactsLabeledAddress.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsLabeledAddress.CodingKeys and conformance ContactsLabeledAddress.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsLabeledAddress.CodingKeys and conformance ContactsLabeledAddress.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsLabeledAddress.CodingKeys and conformance ContactsLabeledAddress.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsLabeledAddress.CodingKeys and conformance ContactsLabeledAddress.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsLabeledAddress.CodingKeys and conformance ContactsLabeledAddress.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContactsLabeledAddress.CodingKeys and conformance ContactsLabeledAddress.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContactsLabeledAddress.CodingKeys and conformance ContactsLabeledAddress.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContactsLabeledAddress.CodingKeys and conformance ContactsLabeledAddress.CodingKeys);
  }

  return result;
}