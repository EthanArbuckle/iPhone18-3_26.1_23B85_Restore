uint64_t implicit closure #1 in SendPaymentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)()
{
  v7 = type metadata accessor for ParameterIdentifier();
  v4 = *(v7 - 8);
  v5 = v7 - 8;
  v3 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v6 = &v2 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMR);
  ParameterResolutionRecord.parameter.getter();
  v8 = ParameterIdentifier.name.getter();
  v9 = v0;
  (*(v4 + 8))(v6, v7);
  return v8;
}

uint64_t SendPaymentUnsupportedValueStrategy.makeUpdatedIntentForUnsupportedValue(resolveRecord:)(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 112) = v2;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  *(v2 + 232) = 0;
  v3 = type metadata accessor for ParameterIdentifier();
  *(v2 + 152) = v3;
  v10 = *(v3 - 8);
  *(v2 + 160) = v10;
  v4 = *(v10 + 64) + 15;
  *(v2 + 168) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMR);
  *(v2 + 176) = v5;
  v11 = *(v5 - 8);
  *(v2 + 184) = v11;
  *(v2 + 192) = *(v11 + 64);
  *(v2 + 200) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v2 + 208) = v6;
  v12 = *(v6 - 8);
  *(v2 + 216) = v12;
  v7 = *(v12 + 64) + 15;
  *(v2 + 224) = swift_task_alloc();
  *(v2 + 120) = a1;
  *(v2 + 128) = v1;
  v8 = *(v2 + 112);

  return MEMORY[0x2822009F8](SendPaymentUnsupportedValueStrategy.makeUpdatedIntentForUnsupportedValue(resolveRecord:), 0);
}

uint64_t SendPaymentUnsupportedValueStrategy.makeUpdatedIntentForUnsupportedValue(resolveRecord:)()
{
  v102 = v0;
  v71 = v0[28];
  v74 = v0[27];
  v75 = v0[26];
  v81 = v0[25];
  v80 = v0[24];
  v76 = v0[23];
  v82 = v0[22];
  v77 = v0[18];
  v0[14] = v0;
  v72 = ParameterResolutionRecord.intent.getter();
  type metadata accessor for INSendPaymentIntent();
  v73 = SiriKitPaymentsIntent.clone()();
  MEMORY[0x277D82BD8](v72);
  v0[17] = v73;
  v1 = Logger.payments.unsafeMutableAddressor();
  (*(v74 + 16))(v71, v1, v75);
  v78 = *(v76 + 16);
  v78(v81, v77, v82);
  v79 = *(v76 + 80);
  v84 = swift_allocObject();
  v83 = *(v76 + 32);
  v83(v84 + ((v79 + 16) & ~v79), v81, v82);
  v78(v81, v77, v82);
  v86 = swift_allocObject();
  v83(v86 + ((v79 + 16) & ~v79), v81, v82);
  v95 = Logger.logObject.getter();
  v96 = static os_log_type_t.debug.getter();
  v88 = swift_allocObject();
  *(v88 + 16) = 32;
  v89 = swift_allocObject();
  *(v89 + 16) = 8;
  v85 = swift_allocObject();
  *(v85 + 16) = partial apply for implicit closure #1 in SendPaymentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
  *(v85 + 24) = v84;
  v90 = swift_allocObject();
  *(v90 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v90 + 24) = v85;
  v91 = swift_allocObject();
  *(v91 + 16) = 32;
  v92 = swift_allocObject();
  *(v92 + 16) = 8;
  v87 = swift_allocObject();
  *(v87 + 16) = partial apply for implicit closure #2 in SendPaymentUnsupportedValueStrategy.makeUpdatedIntentForUnsupportedValue(resolveRecord:);
  *(v87 + 24) = v86;
  v93 = swift_allocObject();
  *(v93 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v93 + 24) = v87;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v94 = v2;

  *v94 = partial apply for closure #1 in OSLogArguments.append(_:);
  v94[1] = v88;

  v94[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v94[3] = v89;

  v94[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v94[5] = v90;

  v94[6] = partial apply for closure #1 in OSLogArguments.append(_:);
  v94[7] = v91;

  v94[8] = partial apply for closure #1 in OSLogArguments.append(_:);
  v94[9] = v92;

  v94[10] = partial apply for closure #1 in OSLogArguments.append(_:);
  v94[11] = v93;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v95, v96))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v68 = createStorage<A>(capacity:type:)(0);
    v69 = createStorage<A>(capacity:type:)(2);
    v97 = buf;
    v98 = v68;
    v99 = v69;
    serialize(_:at:)(2, &v97);
    serialize(_:at:)(2, &v97);
    v100 = partial apply for closure #1 in OSLogArguments.append(_:);
    v101 = v88;
    closure #1 in osLogInternal(_:log:type:)(&v100, &v97, &v98, &v99);
    v100 = partial apply for closure #1 in OSLogArguments.append(_:);
    v101 = v89;
    closure #1 in osLogInternal(_:log:type:)(&v100, &v97, &v98, &v99);
    v100 = partial apply for closure #1 in OSLogArguments.append(_:);
    v101 = v90;
    closure #1 in osLogInternal(_:log:type:)(&v100, &v97, &v98, &v99);
    v100 = partial apply for closure #1 in OSLogArguments.append(_:);
    v101 = v91;
    closure #1 in osLogInternal(_:log:type:)(&v100, &v97, &v98, &v99);
    v100 = partial apply for closure #1 in OSLogArguments.append(_:);
    v101 = v92;
    closure #1 in osLogInternal(_:log:type:)(&v100, &v97, &v98, &v99);
    v100 = partial apply for closure #1 in OSLogArguments.append(_:);
    v101 = v93;
    closure #1 in osLogInternal(_:log:type:)(&v100, &v97, &v98, &v99);
    _os_log_impl(&dword_2686B1000, v95, v96, "#SendPaymentUnsupportedValueStrategy updating intent for slot '%s' with index '%s'", buf, 0x16u);
    destroyStorage<A>(_:count:)(v68, 0, v66);
    destroyStorage<A>(_:count:)(v69, 2, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v56 = *(v70 + 224);
  v57 = *(v70 + 208);
  v58 = *(v70 + 176);
  v60 = *(v70 + 168);
  v61 = *(v70 + 152);
  v3 = *(v70 + 144);
  v55 = *(v70 + 216);
  v59 = *(v70 + 160);
  MEMORY[0x277D82BD8](v95);
  (*(v55 + 8))(v56, v57);
  ParameterResolutionRecord.parameter.getter();
  rawValue._countAndFlagsBits = ParameterIdentifier.name.getter();
  rawValue._object = v4;
  v62 = *(v59 + 8);
  v62(v60, v61);
  v5.value = SendPaymentSlots.init(rawValue:)(rawValue).value;
  value = v5.value;
  if (v5.value == SiriPaymentsIntents_SendPaymentSlots_unknownDefault)
  {
    v29 = *(v70 + 224);
    v30 = *(v70 + 200);
    v16 = *(v70 + 176);
    v31 = *(v70 + 168);
    v23 = *(v70 + 152);
    v17 = *(v70 + 144);
    ParameterResolutionRecord.parameter.getter();
    v24 = ParameterIdentifier.name.getter();
    v25 = v18;
    v62(v31, v23);
    v28 = [swift_getObjCClassFromMetadata() description];
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v19;
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    swift_allocError();
    *v20 = v24;
    *(v20 + 8) = v25;
    *(v20 + 16) = v27;
    *(v20 + 24) = v26;
    *(v20 + 32) = 0;
    *(v20 + 40) = 0;
    *(v20 + 48) = 2;
    swift_willThrow();
    MEMORY[0x277D82BD8](v28);
    MEMORY[0x277D82BD8](v73);

    v13 = v65;
    v14 = *(*(v70 + 112) + 8);
    v21 = *(v70 + 112);
  }

  else
  {
    *(v70 + 232) = v5;
    if (v5.value)
    {
      if (v5.value == SiriPaymentsIntents_SendPaymentSlots_currencyAmount)
      {
        *(v70 + 48) = 0;
        *(v70 + 56) = 0;
        *(v70 + 64) = 0;
        *(v70 + 72) = 0;
        if (*(v70 + 72))
        {
          v44 = *(v70 + 72);
          v42 = __swift_project_boxed_opaque_existential_1((v70 + 48), v44);
          v43 = *(v44 - 8);
          v8 = *(v43 + 64) + 15;
          v45 = swift_task_alloc();
          (*(v43 + 16))(v45, v42, v44);
          v46 = _bridgeAnythingToObjectiveC<A>(_:)();
          (*(v43 + 8))(v45, v44);

          __swift_destroy_boxed_opaque_existential_0((v70 + 48));
          v47 = v46;
        }

        else
        {
          v47 = 0;
        }

        *(v70 + 234) = value;
        lazy protocol witness table accessor for type SendPaymentSlots and conformance SendPaymentSlots();
        lazy protocol witness table accessor for type SendPaymentSlots and conformance SendPaymentSlots();
        v9 = Slot<>.propertyName.getter(&type metadata for SendPaymentSlots, &protocol witness table for SendPaymentSlots);
        v41 = MEMORY[0x26D620690](v9);

        [v73 setValue:v47 forKey:v41];
        MEMORY[0x277D82BD8](v41);
        swift_unknownObjectRelease();
      }

      else
      {
        *(v70 + 16) = 0;
        *(v70 + 24) = 0;
        *(v70 + 32) = 0;
        *(v70 + 40) = 0;
        if (*(v70 + 40))
        {
          v37 = *(v70 + 40);
          v35 = __swift_project_boxed_opaque_existential_1((v70 + 16), v37);
          v36 = *(v37 - 8);
          v10 = *(v36 + 64) + 15;
          v38 = swift_task_alloc();
          (*(v36 + 16))(v38, v35, v37);
          v39 = _bridgeAnythingToObjectiveC<A>(_:)();
          (*(v36 + 8))(v38, v37);

          __swift_destroy_boxed_opaque_existential_0((v70 + 16));
          v40 = v39;
        }

        else
        {
          v40 = 0;
        }

        *(v70 + 233) = value;
        lazy protocol witness table accessor for type SendPaymentSlots and conformance SendPaymentSlots();
        lazy protocol witness table accessor for type SendPaymentSlots and conformance SendPaymentSlots();
        v11 = Slot<>.propertyName.getter(&type metadata for SendPaymentSlots, &protocol witness table for SendPaymentSlots);
        v34 = MEMORY[0x26D620690](v11);

        [v73 setValue:v40 forKey:v34];
        MEMORY[0x277D82BD8](v34);
        swift_unknownObjectRelease();
      }
    }

    else
    {
      *(v70 + 80) = 0;
      *(v70 + 88) = 0;
      *(v70 + 96) = 0;
      *(v70 + 104) = 0;
      if (*(v70 + 104))
      {
        v51 = *(v70 + 104);
        v49 = __swift_project_boxed_opaque_existential_1((v70 + 80), v51);
        v50 = *(v51 - 8);
        v6 = *(v50 + 64) + 15;
        v52 = swift_task_alloc();
        (*(v50 + 16))(v52, v49, v51);
        v53 = _bridgeAnythingToObjectiveC<A>(_:)();
        (*(v50 + 8))(v52, v51);

        __swift_destroy_boxed_opaque_existential_0((v70 + 80));
        v54 = v53;
      }

      else
      {
        v54 = 0;
      }

      *(v70 + 235) = 0;
      lazy protocol witness table accessor for type SendPaymentSlots and conformance SendPaymentSlots();
      lazy protocol witness table accessor for type SendPaymentSlots and conformance SendPaymentSlots();
      v7 = Slot<>.propertyName.getter(&type metadata for SendPaymentSlots, &protocol witness table for SendPaymentSlots);
      v48 = MEMORY[0x26D620690](v7);

      [v73 setValue:v54 forKey:v48];
      MEMORY[0x277D82BD8](v48);
      swift_unknownObjectRelease();
    }

    v12 = *(v70 + 224);
    v32 = *(v70 + 200);
    v33 = *(v70 + 168);

    v13 = v73;
    v14 = *(*(v70 + 112) + 8);
    v15 = *(v70 + 112);
  }

  return v14(v13);
}

uint64_t implicit closure #2 in SendPaymentUnsupportedValueStrategy.makeUpdatedIntentForUnsupportedValue(resolveRecord:)()
{
  v7 = type metadata accessor for ParameterIdentifier();
  v4 = *(v7 - 8);
  v5 = v7 - 8;
  v3 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v6 = &v2 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMR);
  ParameterResolutionRecord.parameter.getter();
  v8 = ParameterIdentifier.multicardinalIndex.getter();
  v9 = v0;
  (*(v4 + 8))(v6, v7);
  v10 = v8;
  v11 = v9 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
  return Optional.debugDescription.getter();
}

uint64_t sub_2687D8E34()
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMR) - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #1 in SendPaymentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMR) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #1 in SendPaymentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)();
}

uint64_t SendPaymentUnsupportedValueStrategy.init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a1;
  v26 = a2;
  v25 = a3;
  v24 = a4;
  v20 = a5;
  v23 = a6;
  v18 = a7;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v38 = a6;
  v21 = *(a6 - 8);
  v22 = a6 - 8;
  v14 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v13 - v14;
  v36 = MEMORY[0x28223BE20](a1);
  v35 = v8;
  v34 = v9;
  v33 = v10;
  v32 = v11;
  v37 = v7;
  v19 = v31;
  outlined init with copy of GlobalsProviding(v36, v31);

  v15 = v30;
  outlined init with copy of GlobalsProviding(v25, v30);
  v16 = v29;
  outlined init with copy of GlobalsProviding(v24, v29);
  (*(v21 + 16))(v17, v20, v23);
  v28 = BaseStrategy.init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(v19, v26, v15, v16, v17, v23, v18);

  v37 = v28;
  (*(v21 + 8))(v20, v23);
  __swift_destroy_boxed_opaque_existential_0(v24);
  __swift_destroy_boxed_opaque_existential_0(v25);

  __swift_destroy_boxed_opaque_existential_0(v27);

  return v28;
}

uint64_t protocol witness for UnsupportedValueFlowStrategyAsync.makeUnsupportedValueOutput(resolveRecord:) in conformance SendPaymentUnsupportedValueStrategy(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return SendPaymentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)(a1, a2);
}

uint64_t protocol witness for UnsupportedValueFlowStrategyAsync.makeUpdatedIntentForUnsupportedValue(resolveRecord:) in conformance SendPaymentUnsupportedValueStrategy(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = protocol witness for TCCResponseProviding.promptToEnableApp(appDisplayInfo:deviceState:catOverrides:) in conformance TCCResponses;

  return SendPaymentUnsupportedValueStrategy.makeUpdatedIntentForUnsupportedValue(resolveRecord:)(a1);
}

uint64_t protocol witness for UnsupportedValueFlowStrategyAsync.makeLaunchAppWithIntentOutput(resolveRecord:) in conformance SendPaymentUnsupportedValueStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4;
  *(v4 + 16) = v4;
  v5 = *(MEMORY[0x277D5B4C8] + 4);
  v6 = swift_task_alloc();
  *(v9 + 24) = v6;
  v7 = type metadata accessor for SendPaymentUnsupportedValueStrategy();
  *v6 = *(v9 + 16);
  v6[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821B9E00](a1, a2, v7, a4);
}

uint64_t sub_2687D9428()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687D9468()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687D94A8()
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMR) - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_2687D9580()
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMR) - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #2 in SendPaymentUnsupportedValueStrategy.makeUpdatedIntentForUnsupportedValue(resolveRecord:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMR) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #2 in SendPaymentUnsupportedValueStrategy.makeUpdatedIntentForUnsupportedValue(resolveRecord:)();
}

uint64_t sub_2687D9720()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687D9760()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687D97F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687D9838()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t type metadata accessor for SendPaymentUnsupportedValueStrategy()
{
  v1 = type metadata singleton initialization cache for SendPaymentUnsupportedValueStrategy;
  if (!type metadata singleton initialization cache for SendPaymentUnsupportedValueStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

Swift::String __swiftcall String.firstLetterCapitalized()()
{
  v6 = v0;
  v7 = v1;
  v14 = v0;
  v15 = v1;

  v10 = v6;
  v11 = v7;
  lazy protocol witness table accessor for type String and conformance String();
  Collection.prefix(_:)();
  v2 = Substring.uppercased()();

  v9 = v2;

  v8[4] = v6;
  v8[5] = v7;
  default argument 0 of Collection.dropFirst(_:)();
  Collection.dropFirst(_:)();
  v8[0] = v8[6];
  v8[1] = v8[7];
  v8[2] = v8[8];
  v8[3] = v8[9];
  lazy protocol witness table accessor for type String and conformance String();
  lazy protocol witness table accessor for type Substring and conformance Substring();
  static RangeReplaceableCollection.+ infix<A>(_:_:)();
  outlined destroy of Substring(v8);
  outlined destroy of String.UTF8View(&v9);
  v3 = v12;
  v4 = v13;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type Substring and conformance Substring()
{
  v2 = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Substring and conformance Substring);
    return WitnessTable;
  }

  return v2;
}

uint64_t outlined destroy of Substring(uint64_t a1)
{
  v1 = *(a1 + 24);

  return a1;
}

uint64_t PaymentsAppResolver.__allocating_init(appLister:)(uint64_t *a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  return PaymentsAppResolver.init(appLister:)(a1);
}

uint64_t PaymentsAppResolver.init(appLister:)(uint64_t *a1)
{
  v7 = 0;
  v6 = 0;
  v8 = *(*v1 + class metadata base offset for PaymentsAppResolver);
  v6 = a1;
  v7 = v1;
  outlined init with copy of GlobalsProviding(a1, v5);
  outlined init with take of CommonLabelsProviding(v5, v1 + *(*v1 + class metadata base offset for PaymentsAppResolver + 16));
  v4 = AppResolutionService.init()();

  v7 = v4;
  __swift_destroy_boxed_opaque_existential_0(a1);

  return v4;
}

Swift::Bool __swiftcall PaymentsAppResolver.isAppOnDevice(_:)(Swift::String a1)
{
  v82 = a1;
  v65 = partial apply for implicit closure #1 in static Logger.logForCrash(_:);
  v66 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v67 = partial apply for implicit closure #2 in PaymentsAppResolver.isAppOnDevice(_:);
  v68 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v69 = partial apply for closure #1 in OSLogArguments.append(_:);
  v70 = partial apply for closure #1 in OSLogArguments.append(_:);
  v71 = partial apply for closure #1 in OSLogArguments.append(_:);
  v72 = partial apply for closure #1 in OSLogArguments.append(_:);
  v73 = partial apply for closure #1 in OSLogArguments.append(_:);
  v74 = partial apply for closure #1 in OSLogArguments.append(_:);
  v94 = 0;
  v95 = 0;
  v93 = 0;
  v91 = 0;
  v80 = *v1;
  v75 = 0;
  v76 = type metadata accessor for Logger();
  v77 = *(v76 - 8);
  v78 = v76 - 8;
  v79 = (*(v77 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v81 = v32 - v79;
  v94 = v2;
  v95 = v3;
  v93 = v1;
  v92[1] = *(v80 + class metadata base offset for PaymentsAppResolver);
  type metadata accessor for LSApplicationRecord();

  v4 = LSApplicationRecord.__allocating_init(bundleIdentifier:allowPlaceholder:)(v82._countAndFlagsBits, v82._object, 0);
  v83 = 0;
  v84 = v4;
  v85 = 0;
  *&v64[3] = v4;
  *&v64[5] = 0;
  v64[2] = 0;
  v92[0] = v4;
  *v64 = v4 != 0;
  v5 = v81;
  v43 = v4 != 0;
  outlined destroy of SFRichText?(v92);
  v42 = 1;
  v91 = v43;
  v6 = Logger.payments.unsafeMutableAddressor();
  (*(v77 + 16))(v5, v6, v76);

  v49 = 32;
  v50 = 7;
  v7 = swift_allocObject();
  object = v82._object;
  v44 = v7;
  *(v7 + 16) = v82._countAndFlagsBits;
  *(v7 + 24) = object;
  v47 = 17;
  v51 = swift_allocObject();
  *(v51 + 16) = v43 & v42;
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.debug.getter();
  v53 = swift_allocObject();
  v46 = 32;
  *(v53 + 16) = 32;
  v54 = swift_allocObject();
  v48 = 8;
  *(v54 + 16) = 8;
  v9 = swift_allocObject();
  v10 = v44;
  v45 = v9;
  *(v9 + 16) = v65;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v45;
  v55 = v11;
  *(v11 + 16) = v66;
  *(v11 + 24) = v12;
  v56 = swift_allocObject();
  *(v56 + 16) = v46;
  v57 = swift_allocObject();
  *(v57 + 16) = v48;
  v13 = swift_allocObject();
  v14 = v51;
  v52 = v13;
  *(v13 + 16) = v67;
  *(v13 + 24) = v14;
  v15 = swift_allocObject();
  v16 = v52;
  v59 = v15;
  *(v15 + 16) = v68;
  *(v15 + 24) = v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v58 = _allocateUninitializedArray<A>(_:)();
  v60 = v17;

  v18 = v53;
  v19 = v60;
  *v60 = v69;
  v19[1] = v18;

  v20 = v54;
  v21 = v60;
  v60[2] = v70;
  v21[3] = v20;

  v22 = v55;
  v23 = v60;
  v60[4] = v71;
  v23[5] = v22;

  v24 = v56;
  v25 = v60;
  v60[6] = v72;
  v25[7] = v24;

  v26 = v57;
  v27 = v60;
  v60[8] = v73;
  v27[9] = v26;

  v28 = v59;
  v29 = v60;
  v60[10] = v74;
  v29[11] = v28;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v62, v63))
  {
    v30 = *&v64[1];
    v34 = static UnsafeMutablePointer.allocate(capacity:)();
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v35 = createStorage<A>(capacity:type:)(0);
    v36 = createStorage<A>(capacity:type:)(2);
    v38 = &v90;
    v90 = v34;
    v39 = &v89;
    v89 = v35;
    v40 = &v88;
    v88 = v36;
    v37 = 2;
    serialize(_:at:)(2, &v90);
    serialize(_:at:)(v37, v38);
    v86 = v69;
    v87 = v53;
    closure #1 in osLogInternal(_:log:type:)(&v86, v38, v39, v40);
    v41 = v30;
    if (v30)
    {

      __break(1u);
    }

    else
    {
      v86 = v70;
      v87 = v54;
      closure #1 in osLogInternal(_:log:type:)(&v86, &v90, &v89, &v88);
      v32[4] = 0;
      v86 = v71;
      v87 = v55;
      closure #1 in osLogInternal(_:log:type:)(&v86, &v90, &v89, &v88);
      v32[3] = 0;
      v86 = v72;
      v87 = v56;
      closure #1 in osLogInternal(_:log:type:)(&v86, &v90, &v89, &v88);
      v32[2] = 0;
      v86 = v73;
      v87 = v57;
      closure #1 in osLogInternal(_:log:type:)(&v86, &v90, &v89, &v88);
      v32[1] = 0;
      v86 = v74;
      v87 = v59;
      closure #1 in osLogInternal(_:log:type:)(&v86, &v90, &v89, &v88);
      _os_log_impl(&dword_2686B1000, v62, v63, "#PaymentsAppResolver isAppOnDevice for %s, %s", v34, 0x16u);
      destroyStorage<A>(_:count:)(v35, 0, v33);
      destroyStorage<A>(_:count:)(v36, 2, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v34, MEMORY[0x277D84B78]);
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v62);
  (*(v77 + 8))(v81, v76);
  return v43;
}

uint64_t sub_2687DA938()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t implicit closure #2 in PaymentsAppResolver.isAppOnDevice(_:)(char a1)
{
  if (a1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("found LSApplicationRecord", 0x19uLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("could not find LSApplicationRecord", 0x22uLL, 1)._countAndFlagsBits;
  }
}

uint64_t PaymentsAppResolver.listApps(siriAuthorizationRestriction:)(uint64_t a1)
{
  v2[13] = v1;
  v2[12] = a1;
  v2[9] = v2;
  v2[10] = 0;
  v2[11] = 0;
  v8 = *v1;
  v2[14] = *v1;
  v3 = type metadata accessor for Logger();
  v2[15] = v3;
  v7 = *(v3 - 8);
  v2[16] = v7;
  v4 = *(v7 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[10] = a1;
  v2[11] = v1;
  v2[18] = *(v8 + class metadata base offset for PaymentsAppResolver);
  v5 = v2[9];

  return MEMORY[0x2822009F8](PaymentsAppResolver.listApps(siriAuthorizationRestriction:), 0);
}

{
  v7 = *v1;
  v3 = *(*v1 + 160);
  v6 = *(*v1 + 152);
  *(v7 + 72) = *v1;
  *(v7 + 168) = a1;

  v4 = *(v7 + 72);

  return MEMORY[0x2822009F8](PaymentsAppResolver.listApps(siriAuthorizationRestriction:), 0);
}

uint64_t PaymentsAppResolver.listApps(siriAuthorizationRestriction:)()
{
  v47 = v0;
  v31 = v0[18];
  v1 = v0[17];
  v29 = v0[16];
  v30 = v0[15];
  v32 = v0[14];
  v0[9] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v29 + 16))(v1, v2, v30);
  v33 = swift_allocObject();
  *(v33 + 16) = v31;
  *(v33 + 24) = *(v32 + class metadata base offset for PaymentsAppResolver + 8);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.debug.getter();
  v36 = swift_allocObject();
  *(v36 + 16) = 32;
  v37 = swift_allocObject();
  *(v37 + 16) = 8;
  v34 = swift_allocObject();
  *(v34 + 16) = partial apply for implicit closure #7 in PaymentsAppResolutionFlowStrategy.resolveApp(input:);
  *(v34 + 24) = v33;
  v35 = swift_allocObject();
  *(v35 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v35 + 24) = v34;
  v38 = swift_allocObject();
  *(v38 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v38 + 24) = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v39 = v3;

  *v39 = partial apply for closure #1 in OSLogArguments.append(_:);
  v39[1] = v36;

  v39[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v39[3] = v37;

  v39[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v39[5] = v38;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v40, v41))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v26 = createStorage<A>(capacity:type:)(0);
    v27 = createStorage<A>(capacity:type:)(1);
    v42 = buf;
    v43 = v26;
    v44 = v27;
    serialize(_:at:)(2, &v42);
    serialize(_:at:)(1, &v42);
    v45 = partial apply for closure #1 in OSLogArguments.append(_:);
    v46 = v36;
    closure #1 in osLogInternal(_:log:type:)(&v45, &v42, &v43, &v44);
    v45 = partial apply for closure #1 in OSLogArguments.append(_:);
    v46 = v37;
    closure #1 in osLogInternal(_:log:type:)(&v45, &v42, &v43, &v44);
    v45 = partial apply for closure #1 in OSLogArguments.append(_:);
    v46 = v38;
    closure #1 in osLogInternal(_:log:type:)(&v45, &v42, &v43, &v44);
    _os_log_impl(&dword_2686B1000, v40, v41, "#PaymentsAppResolver listApps for intent %s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v26, 0, v24);
    destroyStorage<A>(_:count:)(v27, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v16 = v28[18];
  v13 = v28[17];
  v14 = v28[15];
  v15 = v28[13];
  v12 = v28[16];
  MEMORY[0x277D82BD8](v40);
  (*(v12 + 8))(v13, v14);
  outlined init with copy of GlobalsProviding(v15 + *(*v15 + class metadata base offset for PaymentsAppResolver + 16), (v28 + 2));
  v20 = v28[5];
  v21 = v28[6];
  __swift_project_boxed_opaque_existential_1(v28 + 2, v20);
  v28[7] = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v28[8] = v4;
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x26D620F90](countAndFlagsBits);

  DefaultStringInterpolation.appendInterpolation(_:)();
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x26D620F90](v6);

  v18 = v28[7];
  v17 = v28[8];

  outlined destroy of String.UTF8View((v28 + 7));
  v23 = MEMORY[0x26D620710](v18, v17);
  v19 = v7;
  v28[19] = v7;
  v22 = (*(v21 + 8) + **(v21 + 8));
  v8 = *(*(v21 + 8) + 4);
  v9 = swift_task_alloc();
  v28[20] = v9;
  *v9 = v28[9];
  v9[1] = PaymentsAppResolver.listApps(siriAuthorizationRestriction:);
  v10 = v28[12];

  return v22(v23, v19, v10, v20, v21);
}

{
  v5 = v0[17];
  v0[9] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v1 = *(*(v6 + 72) + 8);
  v2 = *(v6 + 72);
  v3 = *(v6 + 168);

  return v1(v3);
}

void PaymentsAppResolver.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  PaymentsAppResolver.init()(v3);
}

void PaymentsAppResolver.init()(uint64_t a1@<X8>)
{
  v2 = *(*v1 + class metadata base offset for PaymentsAppResolver);
  closure #1 in closure #1 in _unimplementedInitializer(className:initName:file:line:column:)("init()", 6, "SiriPaymentsIntents/PaymentsAppResolver.swift", 45, 2, "SiriPaymentsIntents.PaymentsAppResolver", 39, 0xDuLL, a1, 7uLL);
  __break(1u);
}

void *PaymentsAppResolver.deinit()
{
  v3 = *(*v0 + class metadata base offset for PaymentsAppResolver);
  v2 = AppResolutionService.deinit();
  __swift_destroy_boxed_opaque_existential_0((v2 + *(*v2 + class metadata base offset for PaymentsAppResolver + 16)));
  return v2;
}

uint64_t PaymentsAppResolver.__deallocating_deinit()
{
  v2 = *(*v0 + class metadata base offset for PaymentsAppResolver);
  PaymentsAppResolver.deinit();
  return swift_deallocClassInstance();
}

uint64_t sub_2687DB884()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687DB8C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687DB95C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687DB99C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687DBA70()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687DBAB0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687DBAF0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t type metadata completion function for PaymentsAppResolver()
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t SearchForAccountsNeedsValueStrategy.__allocating_init()()
{
  v31 = 0;
  v17 = 0;
  v7 = (*(*(type metadata accessor for CATOption() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v16 = &v6 - v7;
  v12 = type metadata accessor for Globals();
  v8 = v36;
  default argument 0 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v36);
  v9 = &v35;
  default argument 1 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v10 = &v34;
  default argument 2 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v11 = &v33;
  default argument 3 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v0 = Globals.__allocating_init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v8, v9, v10, v11);
  v25 = v37;
  v37[3] = v12;
  v37[4] = &protocol witness table for Globals;
  v37[0] = v0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo25INSearchForAccountsIntentCSo0ghiJ8ResponseCGMd, &_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo25INSearchForAccountsIntentCSo0ghiJ8ResponseCGMR);
  v15 = v32;
  outlined init with copy of GlobalsProviding(v25, v32);
  type metadata accessor for PaymentsBaseCATs();
  default argument 0 of CATWrapper.init(options:globals:)();
  v14 = CATWrapper.__allocating_init(options:globals:)();
  v13 = type metadata accessor for INSearchForAccountsIntent();
  v1 = type metadata accessor for INSearchForAccountsIntentResponse();
  v2 = default argument 2 of PaymentsErrorTemplateProvider.init(globals:catFamily:searchForAccountsCATs:)(v13, v1);
  v24 = PaymentsErrorTemplateProvider.__allocating_init(globals:catFamily:searchForAccountsCATs:)(v15, v14, v2);
  v31 = v24;
  v23 = v30;
  outlined init with copy of GlobalsProviding(v25, v30);
  type metadata accessor for SearchForAccountsCATs();
  default argument 0 of CATWrapper.init(options:globals:)();
  v18 = CATWrapper.__allocating_init(options:globals:)();
  NSJSONWritingOptions.init(rawValue:)(v18);
  v19 = v29;
  v29[3] = &type metadata for CommonLabelsProvider;
  v29[4] = &protocol witness table for CommonLabelsProvider;
  v3 = type metadata accessor for SiriKitContactResolver();
  v20 = v28;
  v28[3] = v3;
  v28[4] = &protocol witness table for SiriKitContactResolver;
  __swift_allocate_boxed_opaque_existential_1(v28);
  SiriKitContactResolver.init()();

  v21 = &v27;
  v27 = v24;
  v4 = lazy protocol witness table accessor for type PaymentsErrorTemplateProvider<INSearchForAccountsIntent, INSearchForAccountsIntentResponse> and conformance PaymentsErrorTemplateProvider<A, B>();
  v26 = SearchForAccountsNeedsValueStrategy.__allocating_init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(v23, v18, v19, v20, v21, v22, v4);

  v37[5] = v26;

  __swift_destroy_boxed_opaque_existential_0(v25);

  return v26;
}

uint64_t SearchForAccountsNeedsValueStrategy.actionForInput(_:resolveRecord:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a2;
  v36 = a1;
  v30 = a3;
  v47 = 0;
  v57 = 0;
  v56 = 0;
  v55 = 0;
  v31 = 0;
  v32 = type metadata accessor for Parse();
  v33 = *(v32 - 8);
  v34 = v33;
  v3 = *(v33 + 64);
  MEMORY[0x28223BE20](0);
  v35 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v44 = type metadata accessor for Logger();
  v38 = v44;
  v39 = *(v44 - 8);
  v43 = v39;
  v40 = v39;
  v41 = *(v39 + 64);
  v5 = MEMORY[0x28223BE20](v36);
  v6 = &v13[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v42 = v6;
  v57 = v5;
  v56 = v7;
  v55 = v8;
  v9 = Logger.payments.unsafeMutableAddressor();
  (*(v43 + 16))(v6, v9, v44);
  v49 = Logger.logObject.getter();
  v45 = v49;
  v48 = static os_log_type_t.debug.getter();
  v46 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v50 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v49, v48))
  {
    v10 = v31;
    v21 = static UnsafeMutablePointer.allocate(capacity:)();
    v17 = v21;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v19 = 0;
    v22 = createStorage<A>(capacity:type:)(0);
    v20 = v22;
    v23 = createStorage<A>(capacity:type:)(v19);
    v54 = v21;
    v53 = v22;
    v52 = v23;
    v24 = 0;
    v25 = &v54;
    serialize(_:at:)(0, &v54);
    serialize(_:at:)(v24, v25);
    v51 = v50;
    v26 = v13;
    MEMORY[0x28223BE20](v13);
    v27 = &v13[-48];
    *&v13[-32] = v11;
    *&v13[-24] = &v53;
    *&v13[-16] = &v52;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v29 = v10;
    if (v10)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_2686B1000, v45, v46, "#SearchForAccountsNeedsValueStrategy actionForInput.", v17, 2u);
      v15 = 0;
      destroyStorage<A>(_:count:)(v20, 0, v18);
      destroyStorage<A>(_:count:)(v23, v15, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v17, MEMORY[0x277D84B78]);

      v16 = v29;
    }
  }

  else
  {

    v16 = v31;
  }

  (*(v40 + 8))(v42, v38);
  Input.parse.getter();
  v14 = Parse.isCancel.getter();
  (*(v34 + 8))(v35, v32);
  if (v14)
  {
    return static ActionForInput.cancel()();
  }

  else
  {
    return static ActionForInput.handle()();
  }
}

uint64_t SearchForAccountsNeedsValueStrategy.makePromptForValue(resolveRecord:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 240) = v2;
  *(v3 + 232) = a2;
  *(v3 + 224) = a1;
  *(v3 + 168) = v3;
  *(v3 + 176) = 0;
  *(v3 + 184) = 0;
  *(v3 + 136) = 0;
  *(v3 + 144) = 0;
  *(v3 + 368) = 0;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  *(v3 + 248) = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15;
  *(v3 + 256) = swift_task_alloc();
  v6 = type metadata accessor for TemplatingResult();
  *(v3 + 264) = v6;
  v14 = *(v6 - 8);
  *(v3 + 272) = v14;
  v7 = *(v14 + 64) + 15;
  *(v3 + 280) = swift_task_alloc();
  v8 = type metadata accessor for ParameterIdentifier();
  *(v3 + 288) = v8;
  v15 = *(v8 - 8);
  *(v3 + 296) = v15;
  v9 = *(v15 + 64) + 15;
  *(v3 + 304) = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  *(v3 + 312) = v10;
  v16 = *(v10 - 8);
  *(v3 + 320) = v16;
  v11 = *(v16 + 64) + 15;
  *(v3 + 328) = swift_task_alloc();
  *(v3 + 176) = a2;
  *(v3 + 184) = v2;
  v12 = *(v3 + 168);

  return MEMORY[0x2822009F8](SearchForAccountsNeedsValueStrategy.makePromptForValue(resolveRecord:), 0);
}

uint64_t SearchForAccountsNeedsValueStrategy.makePromptForValue(resolveRecord:)()
{
  v1 = v0[41];
  v43 = v0[40];
  v44 = v0[39];
  v0[21] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v43 + 16))(v1, v2, v44);
  v46 = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v47 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v46, v45))
  {
    v38 = static UnsafeMutablePointer.allocate(capacity:)();
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v39 = createStorage<A>(capacity:type:)(0);
    v40 = createStorage<A>(capacity:type:)(0);
    *(v42 + 192) = v38;
    *(v42 + 200) = v39;
    *(v42 + 208) = v40;
    serialize(_:at:)(0, (v42 + 192));
    serialize(_:at:)(0, (v42 + 192));
    *(v42 + 216) = v47;
    v41 = swift_task_alloc();
    v41[2] = v42 + 192;
    v41[3] = v42 + 200;
    v41[4] = v42 + 208;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v46, v45, "#SearchForAccountsNeedsValueStrategy makePromptForValue.", v38, 2u);
    destroyStorage<A>(_:count:)(v39, 0, v37);
    destroyStorage<A>(_:count:)(v40, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](v38, MEMORY[0x277D84B78]);
  }

  v30 = *(v42 + 328);
  v31 = *(v42 + 312);
  v33 = *(v42 + 304);
  v34 = *(v42 + 288);
  v3 = *(v42 + 232);
  v29 = *(v42 + 320);
  v32 = *(v42 + 296);
  MEMORY[0x277D82BD8](v46);
  (*(v29 + 8))(v30, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo25INSearchForAccountsIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo25INSearchForAccountsIntentCGMR);
  ParameterResolutionRecord.parameter.getter();
  v35._countAndFlagsBits = ParameterIdentifier.name.getter();
  v35._object = v4;
  *(v42 + 336) = v4;
  *(v42 + 136) = v35._countAndFlagsBits;
  *(v42 + 144) = v4;
  (*(v32 + 8))(v33, v34);

  v5.value = SearchForAccountsSlots.init(rawValue:)(v35).value;
  value = v5.value;
  *(v42 + 369) = v5;
  if (v5.value == SiriPaymentsIntents_SearchForAccountsSlots_unknownDefault)
  {

    *(v42 + 152) = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    *(v42 + 160) = v11;
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](countAndFlagsBits);

    type metadata accessor for INSearchForAccountsIntent();
    DefaultStringInterpolation.appendInterpolation(_:)();
    v13 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](v13);

    v20 = *(v42 + 152);
    v19 = *(v42 + 160);

    outlined destroy of String.UTF8View(v42 + 152);
    v22 = MEMORY[0x26D620710](v20, v19);
    v21 = v14;
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    swift_allocError();
    *v15 = v35;
    *(v15 + 16) = v22;
    *(v15 + 24) = v21;
    *(v15 + 32) = 0;
    *(v15 + 40) = 0;
    *(v15 + 48) = 2;
    swift_willThrow();

    v16 = *(v42 + 328);
    v23 = *(v42 + 304);
    v24 = *(v42 + 280);
    v25 = *(v42 + 256);
    v26 = *(v42 + 248);

    v17 = *(*(v42 + 168) + 8);
    v18 = *(v42 + 168);

    return v17();
  }

  else
  {
    v28 = *(v42 + 256);
    v27 = *(v42 + 240);
    *(v42 + 368) = v5;

    *(v42 + 344) = *(v27 + 16);

    SearchForAccountsSlots.rawValue.getter(value);
    SpeakableString.init(print:speak:)();
    v6 = type metadata accessor for SpeakableString();
    (*(*(v6 - 8) + 56))(v28, 0, 1);
    v7 = swift_task_alloc();
    *(v42 + 352) = v7;
    *v7 = *(v42 + 168);
    v7[1] = SearchForAccountsNeedsValueStrategy.makePromptForValue(resolveRecord:);
    v8 = *(v42 + 280);
    v9 = *(v42 + 256);

    return SearchForAccountsCATs.promptForSlotValue(slot:)(v8, v9);
  }
}

{
  v8 = *v1;
  v2 = *(*v1 + 352);
  v8[21] = *v1;
  v9 = v8 + 21;
  v8[45] = v0;

  if (v0)
  {
    v5 = *v9;
    v4 = SearchForAccountsNeedsValueStrategy.makePromptForValue(resolveRecord:);
  }

  else
  {
    v7 = v8[43];
    outlined destroy of SpeakableString?(v8[32]);

    v3 = *v9;
    v4 = SearchForAccountsNeedsValueStrategy.makePromptForValue(resolveRecord:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v8 = *(v0 + 369);
  v12 = *(v0 + 336);
  v13 = *(v0 + 328);
  v14 = *(v0 + 304);
  v15 = *(v0 + 280);
  v10 = *(v0 + 272);
  v11 = *(v0 + 264);
  v16 = *(v0 + 256);
  v17 = *(v0 + 248);
  v7 = *(v0 + 240);
  v9 = *(v0 + 224);
  *(v0 + 168) = v0;

  outlined init with copy of GlobalsProviding(v7 + 104, v0 + 16);

  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v6);
  (*(v5 + 16))(v6);

  BaseStrategy.ttsEnabled.getter();

  static PaymentsContextProvider.needsValueContextUpdate(value:)(v8, v17);
  v1 = type metadata accessor for NLContextUpdate();
  (*(*(v1 - 8) + 56))(v17, 0, 1);
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  default argument 3 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  _swift_stdlib_has_malloc_size();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v9[3] = type metadata accessor for AceOutput();
  v9[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v9);
  static AceOutputHelper.makeClarificationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?((v0 + 96));
  outlined destroy of NLContextUpdate?(v17);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  (*(v10 + 8))(v15, v11);

  v2 = *(*(v0 + 168) + 8);
  v3 = *(v0 + 168);

  return v2();
}

{
  v7 = v0[43];
  v8 = v0[42];
  v1 = v0[32];
  v0[21] = v0;
  outlined destroy of SpeakableString?(v1);

  v2 = v0[45];
  v3 = v0[41];
  v9 = v0[38];
  v10 = v0[35];
  v11 = v0[32];
  v12 = v0[31];

  v4 = *(v0[21] + 8);
  v5 = v0[21];

  return v4();
}

uint64_t SearchForAccountsNeedsValueStrategy.parseValueResponse(input:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 320) = v3;
  *(v4 + 312) = a3;
  *(v4 + 304) = a2;
  *(v4 + 296) = a1;
  *(v4 + 192) = v4;
  *(v4 + 200) = 0;
  *(v4 + 208) = 0;
  *(v4 + 216) = 0;
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + 480) = 0;
  *(v4 + 256) = 0;
  v5 = type metadata accessor for Parse();
  *(v4 + 328) = v5;
  v14 = *(v5 - 8);
  *(v4 + 336) = v14;
  v6 = *(v14 + 64) + 15;
  *(v4 + 344) = swift_task_alloc();
  v7 = type metadata accessor for Input();
  *(v4 + 352) = v7;
  v15 = *(v7 - 8);
  *(v4 + 360) = v15;
  *(v4 + 368) = *(v15 + 64);
  *(v4 + 376) = swift_task_alloc();
  v8 = type metadata accessor for ParameterIdentifier();
  *(v4 + 384) = v8;
  v16 = *(v8 - 8);
  *(v4 + 392) = v16;
  v9 = *(v16 + 64) + 15;
  *(v4 + 400) = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  *(v4 + 408) = v10;
  v17 = *(v10 - 8);
  *(v4 + 416) = v17;
  v18 = *(v17 + 64);
  *(v4 + 424) = swift_task_alloc();
  *(v4 + 432) = swift_task_alloc();
  *(v4 + 440) = swift_task_alloc();
  *(v4 + 448) = swift_task_alloc();
  *(v4 + 456) = swift_task_alloc();
  *(v4 + 464) = swift_task_alloc();
  v11 = *(*(type metadata accessor for Signpost.OpenSignpost() - 8) + 64) + 15;
  *(v4 + 472) = swift_task_alloc();
  *(v4 + 200) = a2;
  *(v4 + 208) = a3;
  *(v4 + 216) = v3;
  v12 = *(v4 + 192);

  return MEMORY[0x2822009F8](SearchForAccountsNeedsValueStrategy.parseValueResponse(input:resolveRecord:), 0);
}

uint64_t SearchForAccountsNeedsValueStrategy.parseValueResponse(input:resolveRecord:)()
{
  v184 = v0;
  v152 = v0[59];
  v1 = v0[58];
  v153 = v0[52];
  v154 = v0[51];
  v0[24] = v0;
  v2 = SignpostName.parseResponseValueNeedsValue.unsafeMutableAddressor();
  static Signpost.begin(_:)(*v2, v2[1], *(v2 + 16), v152);
  v3 = Logger.payments.unsafeMutableAddressor();
  v155 = *(v153 + 16);
  v155(v1, v3, v154);
  oslog = Logger.logObject.getter();
  v156 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v158 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(oslog, v156))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v148 = createStorage<A>(capacity:type:)(0);
    v149 = createStorage<A>(capacity:type:)(0);
    *(v151 + 264) = buf;
    *(v151 + 272) = v148;
    *(v151 + 280) = v149;
    serialize(_:at:)(0, (v151 + 264));
    serialize(_:at:)(0, (v151 + 264));
    *(v151 + 288) = v158;
    v150 = swift_task_alloc();
    v150[2] = v151 + 264;
    v150[3] = v151 + 272;
    v150[4] = v151 + 280;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, oslog, v156, "#SearchForAccountsNeedsValueStrategy parseValueResponse.", buf, 2u);
    destroyStorage<A>(_:count:)(v148, 0, v146);
    destroyStorage<A>(_:count:)(v149, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v138 = *(v151 + 464);
  v139 = *(v151 + 408);
  v142 = *(v151 + 400);
  v143 = *(v151 + 384);
  v4 = *(v151 + 312);
  v137 = *(v151 + 416);
  v141 = *(v151 + 392);
  MEMORY[0x277D82BD8](oslog);
  v140 = *(v137 + 8);
  v140(v138, v139);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo25INSearchForAccountsIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo25INSearchForAccountsIntentCGMR);
  ParameterResolutionRecord.parameter.getter();
  rawValue._countAndFlagsBits = ParameterIdentifier.name.getter();
  rawValue._object = v5;
  *(v151 + 176) = rawValue._countAndFlagsBits;
  *(v151 + 184) = v5;
  (*(v141 + 8))(v142, v143);

  v6.value = SearchForAccountsSlots.init(rawValue:)(rawValue).value;
  value = v6.value;
  if (v6.value == SiriPaymentsIntents_SearchForAccountsSlots_unknownDefault)
  {
    v23 = *(v151 + 424);
    v49 = *(v151 + 408);
    v24 = Logger.payments.unsafeMutableAddressor();
    v155(v23, v24, v49);

    v50 = swift_allocObject();
    *(v50 + 16) = rawValue;
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    v52 = swift_allocObject();
    *(v52 + 16) = 32;
    v53 = swift_allocObject();
    *(v53 + 16) = 8;
    v51 = swift_allocObject();
    *(v51 + 16) = partial apply for implicit closure #8 in ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
    *(v51 + 24) = v50;
    v54 = swift_allocObject();
    *(v54 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v54 + 24) = v51;
    _allocateUninitializedArray<A>(_:)();
    v55 = v25;

    *v55 = partial apply for closure #1 in OSLogArguments.append(_:);
    v55[1] = v52;

    v55[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v55[3] = v53;

    v55[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v55[5] = v54;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v56, v57))
    {
      v46 = static UnsafeMutablePointer.allocate(capacity:)();
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v47 = createStorage<A>(capacity:type:)(0);
      v48 = createStorage<A>(capacity:type:)(1);
      v159 = v46;
      v160 = v47;
      v161 = v48;
      serialize(_:at:)(2, &v159);
      serialize(_:at:)(1, &v159);
      v162 = partial apply for closure #1 in OSLogArguments.append(_:);
      v163 = v52;
      closure #1 in osLogInternal(_:log:type:)(&v162, &v159, &v160, &v161);
      v162 = partial apply for closure #1 in OSLogArguments.append(_:);
      v163 = v53;
      closure #1 in osLogInternal(_:log:type:)(&v162, &v159, &v160, &v161);
      v162 = partial apply for closure #1 in OSLogArguments.append(_:);
      v163 = v54;
      closure #1 in osLogInternal(_:log:type:)(&v162, &v159, &v160, &v161);
      _os_log_impl(&dword_2686B1000, v56, v57, "#SearchForAccountsNeedsValueStrategy failed to map to known SearchForAccountsSlot, for record parameter: %s. Returning original intent and nil answeredValue", v46, 0xCu);
      destroyStorage<A>(_:count:)(v47, 0, v45);
      destroyStorage<A>(_:count:)(v48, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v46, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v44 = *(v151 + 472);
    v41 = *(v151 + 424);
    v42 = *(v151 + 408);
    v26 = *(v151 + 312);
    v43 = *(v151 + 296);
    MEMORY[0x277D82BD8](v56);
    v140(v41, v42);
    ParameterResolutionRecord.intent.getter();
    type metadata accessor for INSearchForAccountsIntent();
    IntentPromptAnswer.init(answeredValue:updatedIntent:)();
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow18IntentPromptAnswerVySo019INSearchForAccountsD0CGMd, &_s11SiriKitFlow18IntentPromptAnswerVySo019INSearchForAccountsD0CGMR);
    (*(*(v27 - 8) + 56))(v43, 0, 1);

    $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
    outlined destroy of Signpost.OpenSignpost(v44);
  }

  else
  {
    v7 = *(v151 + 456);
    v128 = *(v151 + 408);
    *(v151 + 480) = v6;
    v8 = Logger.payments.unsafeMutableAddressor();
    v155(v7, v8, v128);
    v129 = swift_allocObject();
    *(v129 + 16) = value;
    log = Logger.logObject.getter();
    v136 = static os_log_type_t.debug.getter();
    v131 = swift_allocObject();
    *(v131 + 16) = 32;
    v132 = swift_allocObject();
    *(v132 + 16) = 8;
    v130 = swift_allocObject();
    *(v130 + 16) = partial apply for implicit closure #2 in SearchForAccountsNeedsValueStrategy.parseValueResponse(input:resolveRecord:);
    *(v130 + 24) = v129;
    v133 = swift_allocObject();
    *(v133 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v133 + 24) = v130;
    _allocateUninitializedArray<A>(_:)();
    v134 = v9;

    *v134 = partial apply for closure #1 in OSLogArguments.append(_:);
    v134[1] = v131;

    v134[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v134[3] = v132;

    v134[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v134[5] = v133;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(log, v136))
    {
      v125 = static UnsafeMutablePointer.allocate(capacity:)();
      v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v126 = createStorage<A>(capacity:type:)(0);
      v127 = createStorage<A>(capacity:type:)(1);
      v179 = v125;
      v180 = v126;
      v181 = v127;
      serialize(_:at:)(2, &v179);
      serialize(_:at:)(1, &v179);
      v182 = partial apply for closure #1 in OSLogArguments.append(_:);
      v183 = v131;
      closure #1 in osLogInternal(_:log:type:)(&v182, &v179, &v180, &v181);
      v182 = partial apply for closure #1 in OSLogArguments.append(_:);
      v183 = v132;
      closure #1 in osLogInternal(_:log:type:)(&v182, &v179, &v180, &v181);
      v182 = partial apply for closure #1 in OSLogArguments.append(_:);
      v183 = v133;
      closure #1 in osLogInternal(_:log:type:)(&v182, &v179, &v180, &v181);
      _os_log_impl(&dword_2686B1000, log, v136, "#SearchForAccountsNeedsValueStrategy extracted slot from resolveRecord: %s", v125, 0xCu);
      destroyStorage<A>(_:count:)(v126, 0, v124);
      destroyStorage<A>(_:count:)(v127, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v125, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v108 = *(v151 + 456);
    v10 = *(v151 + 448);
    v109 = *(v151 + 408);
    v114 = *(v151 + 376);
    v112 = *(v151 + 368);
    v115 = *(v151 + 352);
    v111 = *(v151 + 304);
    v110 = *(v151 + 360);
    MEMORY[0x277D82BD8](log);
    v140(v108, v109);
    v11 = Logger.payments.unsafeMutableAddressor();
    v155(v10, v11, v109);
    (*(v110 + 16))(v114, v111, v115);
    v113 = (*(v110 + 80) + 16) & ~*(v110 + 80);
    v116 = swift_allocObject();
    (*(v110 + 32))(v116 + v113, v114, v115);
    v122 = Logger.logObject.getter();
    v123 = static os_log_type_t.debug.getter();
    v118 = swift_allocObject();
    *(v118 + 16) = 32;
    v119 = swift_allocObject();
    *(v119 + 16) = 8;
    v117 = swift_allocObject();
    *(v117 + 16) = partial apply for implicit closure #3 in SearchForAccountsNeedsValueStrategy.parseValueResponse(input:resolveRecord:);
    *(v117 + 24) = v116;
    v120 = swift_allocObject();
    *(v120 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v120 + 24) = v117;
    _allocateUninitializedArray<A>(_:)();
    v121 = v12;

    *v121 = partial apply for closure #1 in OSLogArguments.append(_:);
    v121[1] = v118;

    v121[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v121[3] = v119;

    v121[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v121[5] = v120;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v122, v123))
    {
      v105 = static UnsafeMutablePointer.allocate(capacity:)();
      v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v106 = createStorage<A>(capacity:type:)(0);
      v107 = createStorage<A>(capacity:type:)(1);
      v174 = v105;
      v175 = v106;
      v176 = v107;
      serialize(_:at:)(2, &v174);
      serialize(_:at:)(1, &v174);
      v177 = partial apply for closure #1 in OSLogArguments.append(_:);
      v178 = v118;
      closure #1 in osLogInternal(_:log:type:)(&v177, &v174, &v175, &v176);
      v177 = partial apply for closure #1 in OSLogArguments.append(_:);
      v178 = v119;
      closure #1 in osLogInternal(_:log:type:)(&v177, &v174, &v175, &v176);
      v177 = partial apply for closure #1 in OSLogArguments.append(_:);
      v178 = v120;
      closure #1 in osLogInternal(_:log:type:)(&v177, &v174, &v175, &v176);
      _os_log_impl(&dword_2686B1000, v122, v123, "#SearchForAccountsNeedsValueStrategy new input: %s", v105, 0xCu);
      destroyStorage<A>(_:count:)(v106, 0, v104);
      destroyStorage<A>(_:count:)(v107, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v105, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v93 = *(v151 + 448);
    v94 = *(v151 + 408);
    v101 = *(v151 + 344);
    v102 = *(v151 + 328);
    v98 = *(v151 + 320);
    v95 = *(v151 + 312);
    v13 = *(v151 + 304);
    v100 = *(v151 + 336);
    MEMORY[0x277D82BD8](v122);
    v140(v93, v94);
    Input.parse.getter();
    v99 = ParameterResolutionRecord.intent.getter();

    outlined init with copy of GlobalsProviding(v98 + 104, v151 + 16);

    v97 = *(v151 + 40);
    v96 = *(v151 + 48);
    __swift_project_boxed_opaque_existential_1((v151 + 16), v97);
    (*(v96 + 24))(v97);

    outlined init with copy of GlobalsProviding(v98 + 64, v151 + 96);

    v103 = Parse.toSiriKitIntent(previousIntent:aceService:contactResolver:)(v99, &protocol witness table for INSearchForAccountsIntent, v151 + 56, v151 + 96);
    __swift_destroy_boxed_opaque_existential_0((v151 + 96));
    __swift_destroy_boxed_opaque_existential_0((v151 + 56));
    __swift_destroy_boxed_opaque_existential_0((v151 + 16));
    MEMORY[0x277D82BD8](v99);
    (*(v100 + 8))(v101, v102);
    if (v103)
    {
      objc_opt_self();
      v92 = swift_dynamicCastObjCClass();
      if (v92)
      {
        v91 = v92;
      }

      else
      {
        MEMORY[0x277D82BD8](v103);
        v91 = 0;
      }

      v90 = v91;
    }

    else
    {
      v90 = 0;
    }

    if (v90)
    {
      v14 = *(v151 + 440);
      v81 = *(v151 + 408);
      *(v151 + 256) = v90;
      v15 = Logger.payments.unsafeMutableAddressor();
      v155(v14, v15, v81);
      MEMORY[0x277D82BE0](v90);
      v82 = swift_allocObject();
      *(v82 + 16) = v90;
      v88 = Logger.logObject.getter();
      v89 = static os_log_type_t.debug.getter();
      v84 = swift_allocObject();
      *(v84 + 16) = 64;
      v85 = swift_allocObject();
      *(v85 + 16) = 8;
      v83 = swift_allocObject();
      *(v83 + 16) = partial apply for implicit closure #4 in SearchForAccountsNeedsValueStrategy.parseValueResponse(input:resolveRecord:);
      *(v83 + 24) = v82;
      v86 = swift_allocObject();
      *(v86 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
      *(v86 + 24) = v83;
      _allocateUninitializedArray<A>(_:)();
      v87 = v16;

      *v87 = partial apply for closure #1 in OSLogArguments.append(_:);
      v87[1] = v84;

      v87[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v87[3] = v85;

      v87[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v87[5] = v86;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v88, v89))
      {
        v78 = static UnsafeMutablePointer.allocate(capacity:)();
        v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v79 = createStorage<A>(capacity:type:)(1);
        v80 = createStorage<A>(capacity:type:)(0);
        v169 = v78;
        v170 = v79;
        v171 = v80;
        serialize(_:at:)(2, &v169);
        serialize(_:at:)(1, &v169);
        v172 = partial apply for closure #1 in OSLogArguments.append(_:);
        v173 = v84;
        closure #1 in osLogInternal(_:log:type:)(&v172, &v169, &v170, &v171);
        v172 = partial apply for closure #1 in OSLogArguments.append(_:);
        v173 = v85;
        closure #1 in osLogInternal(_:log:type:)(&v172, &v169, &v170, &v171);
        v172 = partial apply for closure #1 in OSLogArguments.append(_:);
        v173 = v86;
        closure #1 in osLogInternal(_:log:type:)(&v172, &v169, &v170, &v171);
        _os_log_impl(&dword_2686B1000, v88, v89, "#SearchForAccountsNeedsValueStrategy converted to SiriKit intent: %@", v78, 0xCu);
        destroyStorage<A>(_:count:)(v79, 1, v77);
        destroyStorage<A>(_:count:)(v80, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v78, MEMORY[0x277D84B78]);
      }

      else
      {
      }

      v76 = *(v151 + 472);
      v71 = *(v151 + 440);
      v72 = *(v151 + 408);
      v17 = *(v151 + 312);
      v75 = *(v151 + 296);
      MEMORY[0x277D82BD8](v88);
      v140(v71, v72);
      v73 = ParameterResolutionRecord.intent.getter();
      *(v151 + 160) = &type metadata for SearchForAccountsSlots;
      *(v151 + 168) = &protocol witness table for SearchForAccountsSlots;
      *(v151 + 136) = value;
      v74 = type metadata accessor for INSearchForAccountsIntent();
      SiriKitPaymentsIntent.value(forSlot:)((v151 + 136), v74, &v168);
      __swift_destroy_boxed_opaque_existential_0((v151 + 136));
      MEMORY[0x277D82BD8](v73);
      IntentPromptAnswer.init(answeredValue:updatedIntent:)();
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow18IntentPromptAnswerVySo019INSearchForAccountsD0CGMd, &_s11SiriKitFlow18IntentPromptAnswerVySo019INSearchForAccountsD0CGMR);
      (*(*(v18 - 8) + 56))(v75, 0, 1);

      $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
      outlined destroy of Signpost.OpenSignpost(v76);
    }

    else
    {
      v19 = *(v151 + 432);
      v67 = *(v151 + 408);
      v20 = Logger.payments.unsafeMutableAddressor();
      v155(v19, v20, v67);
      v69 = Logger.logObject.getter();
      v68 = static os_log_type_t.error.getter();
      v70 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v69, v68))
      {
        v63 = static UnsafeMutablePointer.allocate(capacity:)();
        v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v64 = createStorage<A>(capacity:type:)(0);
        v65 = createStorage<A>(capacity:type:)(0);
        *(v151 + 224) = v63;
        *(v151 + 232) = v64;
        *(v151 + 240) = v65;
        serialize(_:at:)(0, (v151 + 224));
        serialize(_:at:)(0, (v151 + 224));
        *(v151 + 248) = v70;
        v66 = swift_task_alloc();
        v66[2] = v151 + 224;
        v66[3] = v151 + 232;
        v66[4] = v151 + 240;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();

        _os_log_impl(&dword_2686B1000, v69, v68, "#SearchForAccountsNeedsValueStrategy failed to convert new input to INSearchForAccountsIntent, returning original intent and nil answeredValue.", v63, 2u);
        destroyStorage<A>(_:count:)(v64, 0, v62);
        destroyStorage<A>(_:count:)(v65, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v63, MEMORY[0x277D84B78]);
      }

      v61 = *(v151 + 472);
      v58 = *(v151 + 432);
      v59 = *(v151 + 408);
      v21 = *(v151 + 312);
      v60 = *(v151 + 296);
      MEMORY[0x277D82BD8](v69);
      v140(v58, v59);
      v164 = 0;
      v165 = 0;
      v166 = 0;
      v167 = 0;
      ParameterResolutionRecord.intent.getter();
      type metadata accessor for INSearchForAccountsIntent();
      IntentPromptAnswer.init(answeredValue:updatedIntent:)();
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow18IntentPromptAnswerVySo019INSearchForAccountsD0CGMd, &_s11SiriKitFlow18IntentPromptAnswerVySo019INSearchForAccountsD0CGMR);
      (*(*(v22 - 8) + 56))(v60, 0, 1);

      $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
      outlined destroy of Signpost.OpenSignpost(v61);
    }
  }

  v28 = *(v151 + 472);
  v32 = *(v151 + 464);
  v33 = *(v151 + 456);
  v34 = *(v151 + 448);
  v35 = *(v151 + 440);
  v36 = *(v151 + 432);
  v37 = *(v151 + 424);
  v38 = *(v151 + 400);
  v39 = *(v151 + 376);
  v40 = *(v151 + 344);

  v29 = *(*(v151 + 192) + 8);
  v30 = *(v151 + 192);

  return v29();
}

uint64_t implicit closure #3 in SearchForAccountsNeedsValueStrategy.parseValueResponse(input:resolveRecord:)(uint64_t a1)
{
  v2[1] = a1;
  v5 = type metadata accessor for Input();
  v4 = *(v5 - 8);
  v3 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v6 = v2 - v3;
  (*(v4 + 16))();
  lazy protocol witness table accessor for type Input and conformance Input();
  return String.init<A>(describing:)();
}

uint64_t SearchForAccountsNeedsValueStrategy.init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a1;
  v26 = a2;
  v25 = a3;
  v24 = a4;
  v20 = a5;
  v23 = a6;
  v18 = a7;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v38 = a6;
  v21 = *(a6 - 8);
  v22 = a6 - 8;
  v14 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v13 - v14;
  v36 = MEMORY[0x28223BE20](a1);
  v35 = v8;
  v34 = v9;
  v33 = v10;
  v32 = v11;
  v37 = v7;
  v19 = v31;
  outlined init with copy of GlobalsProviding(v36, v31);

  v15 = v30;
  outlined init with copy of GlobalsProviding(v25, v30);
  v16 = v29;
  outlined init with copy of GlobalsProviding(v24, v29);
  (*(v21 + 16))(v17, v20, v23);
  v28 = BaseStrategy.init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(v19, v26, v15, v16, v17, v23, v18);

  v37 = v28;
  (*(v21 + 8))(v20, v23);
  __swift_destroy_boxed_opaque_existential_0(v24);
  __swift_destroy_boxed_opaque_existential_0(v25);

  __swift_destroy_boxed_opaque_existential_0(v27);

  return v28;
}

uint64_t protocol witness for NeedsValueFlowStrategyAsync.parseValueResponse(input:resolveRecord:) in conformance SearchForAccountsNeedsValueStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = *v3;
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return SearchForAccountsNeedsValueStrategy.parseValueResponse(input:resolveRecord:)(a1, a2, a3);
}

uint64_t protocol witness for NeedsValueFlowStrategyAsync.makePromptForValue(resolveRecord:) in conformance SearchForAccountsNeedsValueStrategy(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return SearchForAccountsNeedsValueStrategy.makePromptForValue(resolveRecord:)(a1, a2);
}

uint64_t protocol witness for NeedsValueFlowStrategyAsync.makeRepromptOnEmptyParse(resolveRecord:) in conformance SearchForAccountsNeedsValueStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4;
  *(v4 + 16) = v4;
  v5 = *(MEMORY[0x277D5B370] + 4);
  v6 = swift_task_alloc();
  *(v9 + 24) = v6;
  v7 = type metadata accessor for SearchForAccountsNeedsValueStrategy();
  *v6 = *(v9 + 16);
  v6[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821B9BF8](a1, a2, v7, a4);
}

uint64_t protocol witness for NeedsValueFlowStrategyAsync.makeRepromptOnLowConfidence(resolveRecord:) in conformance SearchForAccountsNeedsValueStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4;
  *(v4 + 16) = v4;
  v5 = *(MEMORY[0x277D5B378] + 4);
  v6 = swift_task_alloc();
  *(v9 + 24) = v6;
  v7 = type metadata accessor for SearchForAccountsNeedsValueStrategy();
  *v6 = *(v9 + 16);
  v6[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821B9C00](a1, a2, v7, a4);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:) in conformance SearchForAccountsNeedsValueStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = v6;
  *(v6 + 16) = v6;
  v7 = *(MEMORY[0x277D5C0B0] + 4);
  v8 = swift_task_alloc();
  *(v11 + 24) = v8;
  v9 = type metadata accessor for SearchForAccountsNeedsValueStrategy();
  *v8 = *(v11 + 16);
  v8[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, v9, a6);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:) in conformance SearchForAccountsNeedsValueStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = v7;
  *(v7 + 16) = v7;
  v8 = *(MEMORY[0x277D5C0B8] + 4);
  v9 = swift_task_alloc();
  *(v12 + 24) = v9;
  v10 = type metadata accessor for SearchForAccountsNeedsValueStrategy();
  *v9 = *(v12 + 16);
  v9[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, v10, a7);
}

uint64_t sub_2687E0304()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSo9SAAceViewC_Tt0gq5(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return MEMORY[0x277D84F90];
    }

    type metadata accessor for SAAceView();
    v1 = static Array._allocateBufferUninitialized(minimumCapacity:)();

    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v3;

    return v1;
  }

  return result;
}

uint64_t sub_2687E044C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687E048C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687E0558()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687E0598()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687E05D8()
{
  v3 = *(type metadata accessor for Input() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #3 in SearchForAccountsNeedsValueStrategy.parseValueResponse(input:resolveRecord:)()
{
  v1 = *(type metadata accessor for Input() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #3 in SearchForAccountsNeedsValueStrategy.parseValueResponse(input:resolveRecord:)(v2);
}

uint64_t sub_2687E0760()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687E07A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687E0888()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687E08C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t type metadata accessor for SearchForAccountsNeedsValueStrategy()
{
  v1 = type metadata singleton initialization cache for SearchForAccountsNeedsValueStrategy;
  if (!type metadata singleton initialization cache for SearchForAccountsNeedsValueStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t static PaymentsDirectInvocations.from(_:)(uint64_t a1)
{
  v104 = a1;
  v105 = partial apply for implicit closure #1 in static PaymentsDirectInvocations.from(_:);
  v106 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v107 = partial apply for closure #1 in OSLogArguments.append(_:);
  v108 = partial apply for closure #1 in OSLogArguments.append(_:);
  v109 = partial apply for closure #1 in OSLogArguments.append(_:);
  v140 = 0;
  v110 = 0;
  v111 = 0;
  v112 = type metadata accessor for Parse.DirectInvocation();
  v114 = *(v112 - 8);
  v113 = v112 - 8;
  v115 = v114;
  v116 = *(v114 + 64);
  v117 = (v116 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v118 = v37 - v117;
  v119 = type metadata accessor for Logger();
  v120 = *(v119 - 8);
  v121 = v119 - 8;
  v122 = (*(v120 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v119);
  v123 = v37 - v122;
  v140 = a1;
  v124 = Parse.DirectInvocation.identifier.getter();
  v125 = v2;

  v3 = PaymentsDirectInvocations.Identifiers.rawValue.getter(0);
  v126 = v139;
  v139[0] = v3;
  v139[1] = v4;
  v138[2] = v124;
  v138[3] = v125;
  v127 = MEMORY[0x26D620740](v3, v4, v124, v125);
  outlined destroy of String.UTF8View(v126);
  if (v127)
  {

    v97 = Parse.DirectInvocation.userData.getter();
    v98 = static PaymentsDirectInvocations.parsePersonDisambiguationSelection(userData:)(v97);
    v99 = v5;
    v100 = v6;

    v101 = v98;
    v102 = v99;
    v103 = v100;
  }

  else
  {

    v7 = PaymentsDirectInvocations.Identifiers.rawValue.getter(1);
    v95 = v138;
    v138[0] = v7;
    v138[1] = v8;
    v137[2] = v124;
    v137[3] = v125;
    v96 = MEMORY[0x26D620740](v7, v8, v124, v125);
    outlined destroy of String.UTF8View(v95);
    if (v96)
    {

      v91 = Parse.DirectInvocation.userData.getter();
      v92 = static PaymentsDirectInvocations.parseAppPickerSelection(userData:)(v91);
      v93 = v9;
      v94 = v10;

      v101 = v92;
      v102 = v93;
      v103 = v94;
    }

    else
    {

      v11 = PaymentsDirectInvocations.Identifiers.rawValue.getter(3);
      v89 = v137;
      v137[0] = v11;
      v137[1] = v12;
      v136[2] = v124;
      v136[3] = v125;
      v90 = MEMORY[0x26D620740](v11, v12, v124, v125);
      outlined destroy of String.UTF8View(v89);
      if (v90)
      {

        v85 = Parse.DirectInvocation.userData.getter();
        v86 = static PaymentsDirectInvocations.parseContactPickerSelection(userData:)(v85);
        v87 = v13;
        v88 = v14;

        v101 = v86;
        v102 = v87;
        v103 = v88;
      }

      else
      {

        v15 = PaymentsDirectInvocations.Identifiers.rawValue.getter(2);
        v83 = v136;
        v136[0] = v15;
        v136[1] = v16;
        v135[2] = v124;
        v135[3] = v125;
        v84 = MEMORY[0x26D620740](v15, v16, v124, v125);
        outlined destroy of String.UTF8View(v83);
        if (v84)
        {

          v79 = Parse.DirectInvocation.userData.getter();
          v80 = static PaymentsDirectInvocations.parseContactPickerSelection(userData:)(v79);
          v81 = v17;
          v82 = v18;

          v101 = v80;
          v102 = v81;
          v103 = v82;
        }

        else
        {

          v73 = static SiriKitDirectInvocationPayloads.confirm.getter();
          v77 = [v73 identifier];
          v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v75 = v19;
          MEMORY[0x277D82BD8](v73);
          v76 = v135;
          v135[0] = v74;
          v135[1] = v75;
          v134[2] = v124;
          v134[3] = v125;
          v78 = MEMORY[0x26D620740](v74, v75, v124, v125);
          outlined destroy of String.UTF8View(v76);
          MEMORY[0x277D82BD8](v77);
          if (v78)
          {

            v101 = 0;
            v102 = v111;
            v103 = 3;
          }

          else
          {

            v67 = static SiriKitDirectInvocationPayloads.reject.getter();
            v71 = [v67 identifier];
            v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v69 = v20;
            MEMORY[0x277D82BD8](v67);
            v70 = v134;
            v134[0] = v68;
            v134[1] = v69;
            v133[2] = v124;
            v133[3] = v125;
            v72 = MEMORY[0x26D620740](v68, v69, v124, v125);
            outlined destroy of String.UTF8View(v70);
            MEMORY[0x277D82BD8](v71);
            if (v72)
            {

              v101 = 1;
              v102 = v111;
              v103 = 3;
            }

            else
            {

              v61 = static SiriKitDirectInvocationPayloads.cancel.getter();
              v65 = [v61 identifier];
              v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v63 = v21;
              MEMORY[0x277D82BD8](v61);
              v64 = v133;
              v133[0] = v62;
              v133[1] = v63;
              v132[1] = v124;
              v132[2] = v125;
              v66 = MEMORY[0x26D620740](v62, v63, v124, v125);
              outlined destroy of String.UTF8View(v64);
              MEMORY[0x277D82BD8](v65);
              if (v66)
              {

                v101 = 2;
                v102 = v111;
                v103 = 3;
              }

              else
              {
                v22 = v123;

                v23 = Logger.payments.unsafeMutableAddressor();
                (*(v120 + 16))(v22, v23, v119);
                v46 = v115;
                (*(v114 + 16))(v118, v104, v112);
                v47 = (*(v46 + 80) + 16) & ~*(v46 + 80);
                v50 = 7;
                v51 = swift_allocObject();
                (*(v114 + 32))(v51 + v47, v118, v112);
                v59 = Logger.logObject.getter();
                v60 = static os_log_type_t.error.getter();
                v48 = 17;
                v53 = swift_allocObject();
                *(v53 + 16) = 32;
                v54 = swift_allocObject();
                *(v54 + 16) = 8;
                v49 = 32;
                v24 = swift_allocObject();
                v25 = v51;
                v52 = v24;
                *(v24 + 16) = v105;
                *(v24 + 24) = v25;
                v26 = swift_allocObject();
                v27 = v52;
                v56 = v26;
                *(v26 + 16) = v106;
                *(v26 + 24) = v27;
                v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
                v55 = _allocateUninitializedArray<A>(_:)();
                v57 = v28;

                v29 = v53;
                v30 = v57;
                *v57 = v107;
                v30[1] = v29;

                v31 = v54;
                v32 = v57;
                v57[2] = v108;
                v32[3] = v31;

                v33 = v56;
                v34 = v57;
                v57[4] = v109;
                v34[5] = v33;
                _finalizeUninitializedArray<A>(_:)();

                if (os_log_type_enabled(v59, v60))
                {
                  v35 = v110;
                  v39 = static UnsafeMutablePointer.allocate(capacity:)();
                  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                  v40 = createStorage<A>(capacity:type:)(0);
                  v41 = createStorage<A>(capacity:type:)(1);
                  v42 = v132;
                  v132[0] = v39;
                  v43 = &v131;
                  v131 = v40;
                  v44 = &v130;
                  v130 = v41;
                  serialize(_:at:)(2, v132);
                  serialize(_:at:)(1, v42);
                  v128 = v107;
                  v129 = v53;
                  closure #1 in osLogInternal(_:log:type:)(&v128, v42, v43, v44);
                  v45 = v35;
                  if (v35)
                  {

                    __break(1u);
                  }

                  else
                  {
                    v128 = v108;
                    v129 = v54;
                    closure #1 in osLogInternal(_:log:type:)(&v128, v132, &v131, &v130);
                    v37[0] = 0;
                    v128 = v109;
                    v129 = v56;
                    closure #1 in osLogInternal(_:log:type:)(&v128, v132, &v131, &v130);
                    _os_log_impl(&dword_2686B1000, v59, v60, "%s", v39, 0xCu);
                    destroyStorage<A>(_:count:)(v40, 0, v38);
                    destroyStorage<A>(_:count:)(v41, 1, MEMORY[0x277D84F70] + 8);
                    MEMORY[0x26D620BD0](v39, MEMORY[0x277D84B78]);
                  }
                }

                else
                {
                }

                MEMORY[0x277D82BD8](v59);
                (*(v120 + 8))(v123, v119);

                v101 = 0;
                v102 = v111;
                v103 = 0xFFFF;
              }
            }
          }
        }
      }
    }
  }

  return v101;
}

id static PaymentsDirectInvocations.selectionInvocation(appIdentifier:)(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  v13 = 0;
  v15 = a1;
  v16 = a2;
  type metadata accessor for SKIDirectInvocationPayload();
  PaymentsDirectInvocations.Identifiers.rawValue.getter(1);
  v9 = SKIDirectInvocationPayload.__allocating_init(identifier:)();
  v14 = v9;

  if (a2)
  {
    v12 = a1;
    v13 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
    _allocateUninitializedArray<A>(_:)();
    v6 = v2;
    v11[0] = PaymentsDirectInvocations.Keys.rawValue.getter(3);
    v11[1] = v3;
    v5 = MEMORY[0x277D837D0];
    _convertToAnyHashable<A>(_:)();

    v6[8] = v5;
    v6[5] = a1;
    v6[6] = a2;
    _finalizeUninitializedArray<A>(_:)();
    outlined destroy of String.UTF8View(v11);
    Dictionary.init(dictionaryLiteral:)();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v9 setUserData_];
    MEMORY[0x277D82BD8](isa);
  }

  return v9;
}

id SKIDirectInvocationPayload.toRSKE(deviceState:)(void *a1)
{
  v4 = objc_opt_self();
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = DeviceState.asInvocationContext.getter();
  v6 = [v4 runSiriKitExecutorCommandWithContext_payload_];
  MEMORY[0x277D82BD8](v5);
  return v6;
}

uint64_t PaymentsDirectInvocations.Identifiers.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 0:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.siri.payments.DisambiguatePerson", 0x2AuLL, 1)._countAndFlagsBits;
    case 1:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.siri.payments.AppPicker", 0x21uLL, 1)._countAndFlagsBits;
    case 2:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.siri.payments.ContactPicker", 0x25uLL, 1)._countAndFlagsBits;
    case 3:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.siri.payments.ContactIdentifier", 0x29uLL, 1)._countAndFlagsBits;
    case 4:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.siri.payments.PromptForPayee", 0x26uLL, 1)._countAndFlagsBits;
    case 5:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.siri.payments.PromptForPayer", 0x26uLL, 1)._countAndFlagsBits;
    case 6:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.siri.payments.PromptForCurrencyAmount", 0x2FuLL, 1)._countAndFlagsBits;
    case 7:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.siri.payments.PromptForNote", 0x25uLL, 1)._countAndFlagsBits;
    case 8:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.siri.payments.SendPayment", 0x23uLL, 1)._countAndFlagsBits;
    case 9:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.siri.payments.RequestPayment", 0x26uLL, 1)._countAndFlagsBits;
    default:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.siri.payments.SearchForAccounts", 0x29uLL, 1)._countAndFlagsBits;
  }
}

id static PaymentsDirectInvocations.selectionInvocation(contactIdentifier:)(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  v13 = 0;
  v15 = a1;
  v16 = a2;
  type metadata accessor for SKIDirectInvocationPayload();
  PaymentsDirectInvocations.Identifiers.rawValue.getter(3);
  v9 = SKIDirectInvocationPayload.__allocating_init(identifier:)();
  v14 = v9;

  if (a2)
  {
    v12 = a1;
    v13 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
    _allocateUninitializedArray<A>(_:)();
    v6 = v2;
    v11[0] = PaymentsDirectInvocations.Keys.rawValue.getter(2);
    v11[1] = v3;
    v5 = MEMORY[0x277D837D0];
    _convertToAnyHashable<A>(_:)();

    v6[8] = v5;
    v6[5] = a1;
    v6[6] = a2;
    _finalizeUninitializedArray<A>(_:)();
    outlined destroy of String.UTF8View(v11);
    Dictionary.init(dictionaryLiteral:)();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v9 setUserData_];
    MEMORY[0x277D82BD8](isa);
  }

  return v9;
}

uint64_t static PaymentsDirectInvocations.Identifiers.allCases.getter()
{
  result = _allocateUninitializedArray<A>(_:)();
  *v1 = 0;
  v1[1] = 1;
  v1[2] = 2;
  v1[3] = 3;
  v1[4] = 4;
  v1[5] = 5;
  v1[6] = 6;
  v1[7] = 7;
  v1[8] = 8;
  v1[9] = 9;
  v1[10] = 10;
  _finalizeUninitializedArray<A>(_:)();
  return result;
}

uint64_t PaymentsDirectInvocations.Keys.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 0:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("appData", 7uLL, 1)._countAndFlagsBits;
    case 1:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("personData", 0xAuLL, 1)._countAndFlagsBits;
    case 2:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("contactId", 9uLL, 1)._countAndFlagsBits;
    default:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("appId", 5uLL, 1)._countAndFlagsBits;
  }
}

SiriPaymentsIntents::PaymentsDirectInvocations::Identifiers_optional __swiftcall PaymentsDirectInvocations.Identifiers.init(rawValue:)(Swift::String rawValue)
{
  v1 = _allocateUninitializedArray<A>(_:)();
  *v2 = "com.apple.siri.payments.DisambiguatePerson";
  *(v2 + 8) = 42;
  *(v2 + 16) = 2;
  *(v2 + 24) = "com.apple.siri.payments.AppPicker";
  *(v2 + 32) = 33;
  *(v2 + 40) = 2;
  *(v2 + 48) = "com.apple.siri.payments.ContactPicker";
  *(v2 + 56) = 37;
  *(v2 + 64) = 2;
  *(v2 + 72) = "com.apple.siri.payments.ContactIdentifier";
  *(v2 + 80) = 41;
  *(v2 + 88) = 2;
  *(v2 + 96) = "com.apple.siri.payments.PromptForPayee";
  *(v2 + 104) = 38;
  *(v2 + 112) = 2;
  *(v2 + 120) = "com.apple.siri.payments.PromptForPayer";
  *(v2 + 128) = 38;
  *(v2 + 136) = 2;
  *(v2 + 144) = "com.apple.siri.payments.PromptForCurrencyAmount";
  *(v2 + 152) = 47;
  *(v2 + 160) = 2;
  *(v2 + 168) = "com.apple.siri.payments.PromptForNote";
  *(v2 + 176) = 37;
  *(v2 + 184) = 2;
  *(v2 + 192) = "com.apple.siri.payments.SendPayment";
  *(v2 + 200) = 35;
  *(v2 + 208) = 2;
  *(v2 + 216) = "com.apple.siri.payments.RequestPayment";
  *(v2 + 224) = 38;
  *(v2 + 232) = 2;
  *(v2 + 240) = "com.apple.siri.payments.SearchForAccounts";
  *(v2 + 248) = 41;
  *(v2 + 256) = 2;
  _finalizeUninitializedArray<A>(_:)();
  v7 = _findStringSwitchCase(cases:string:)(v1, rawValue);

  switch(v7)
  {
    case 0:
      v5.value = SiriPaymentsIntents_PaymentsDirectInvocations_Identifiers_disambiguatePerson;
LABEL_24:

      return v5;
    case 1:
      v5.value = SiriPaymentsIntents_PaymentsDirectInvocations_Identifiers_appPicker;
      goto LABEL_24;
    case 2:
      v5.value = SiriPaymentsIntents_PaymentsDirectInvocations_Identifiers_contactPicker;
      goto LABEL_24;
    case 3:
      v5.value = SiriPaymentsIntents_PaymentsDirectInvocations_Identifiers_selectContact;
      goto LABEL_24;
    case 4:
      v5.value = SiriPaymentsIntents_PaymentsDirectInvocations_Identifiers_promptForPayee;
      goto LABEL_24;
    case 5:
      v5.value = SiriPaymentsIntents_PaymentsDirectInvocations_Identifiers_promptForPayer;
      goto LABEL_24;
    case 6:
      v5.value = SiriPaymentsIntents_PaymentsDirectInvocations_Identifiers_promptForCurrencyAmount;
      goto LABEL_24;
    case 7:
      v5.value = SiriPaymentsIntents_PaymentsDirectInvocations_Identifiers_promptForNote;
      goto LABEL_24;
    case 8:
      v5.value = SiriPaymentsIntents_PaymentsDirectInvocations_Identifiers_sendPayment;
      goto LABEL_24;
    case 9:
      v5.value = SiriPaymentsIntents_PaymentsDirectInvocations_Identifiers_requestPayment;
      goto LABEL_24;
    case 10:
      v5.value = SiriPaymentsIntents_PaymentsDirectInvocations_Identifiers_searchForAccounts;
      goto LABEL_24;
  }

  return 11;
}

SiriPaymentsIntents::PaymentsDirectInvocations::Keys_optional __swiftcall PaymentsDirectInvocations.Keys.init(rawValue:)(Swift::String rawValue)
{
  v1 = _allocateUninitializedArray<A>(_:)();
  *v2 = "appData";
  *(v2 + 8) = 7;
  *(v2 + 16) = 2;
  *(v2 + 24) = "personData";
  *(v2 + 32) = 10;
  *(v2 + 40) = 2;
  *(v2 + 48) = "contactId";
  *(v2 + 56) = 9;
  *(v2 + 64) = 2;
  *(v2 + 72) = "appId";
  *(v2 + 80) = 5;
  *(v2 + 88) = 2;
  _finalizeUninitializedArray<A>(_:)();
  v7 = _findStringSwitchCase(cases:string:)(v1, rawValue);

  switch(v7)
  {
    case 0:
      v5.value = SiriPaymentsIntents_PaymentsDirectInvocations_Keys_appData;
LABEL_10:

      return v5;
    case 1:
      v5.value = SiriPaymentsIntents_PaymentsDirectInvocations_Keys_personData;
      goto LABEL_10;
    case 2:
      v5.value = SiriPaymentsIntents_PaymentsDirectInvocations_Keys_contactId;
      goto LABEL_10;
    case 3:
      v5.value = SiriPaymentsIntents_PaymentsDirectInvocations_Keys_appId;
      goto LABEL_10;
  }

  return 4;
}

SiriPaymentsIntents::PaymentsDirectInvocations::Identifiers_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PaymentsDirectInvocations.Identifiers@<W0>(Swift::String *a1@<X0>, SiriPaymentsIntents::PaymentsDirectInvocations::Identifiers_optional *a2@<X8>)
{
  result.value = PaymentsDirectInvocations.Identifiers.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PaymentsDirectInvocations.Identifiers@<X0>(uint64_t *a1@<X8>)
{
  result = PaymentsDirectInvocations.Identifiers.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance PaymentsDirectInvocations.Identifiers@<X0>(uint64_t *a1@<X8>)
{
  result = static PaymentsDirectInvocations.Identifiers.allCases.getter();
  *a1 = result;
  return result;
}

SiriPaymentsIntents::PaymentsDirectInvocations::Keys_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PaymentsDirectInvocations.Keys@<W0>(Swift::String *a1@<X0>, SiriPaymentsIntents::PaymentsDirectInvocations::Keys_optional *a2@<X8>)
{
  result.value = PaymentsDirectInvocations.Keys.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PaymentsDirectInvocations.Keys@<X0>(uint64_t *a1@<X8>)
{
  result = PaymentsDirectInvocations.Keys.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static PaymentsDirectInvocations.parsePersonDisambiguationSelection(userData:)(uint64_t a1)
{
  v62 = a1;
  v44 = partial apply for implicit closure #1 in static PaymentsDirectInvocations.parsePersonDisambiguationSelection(userData:);
  v45 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v46 = partial apply for closure #1 in OSLogArguments.append(_:);
  v47 = partial apply for closure #1 in OSLogArguments.append(_:);
  v48 = partial apply for closure #1 in OSLogArguments.append(_:);
  v73 = 0;
  v49 = 0;
  v67 = 0;
  v55 = 0;
  v50 = type metadata accessor for Logger();
  v51 = *(v50 - 8);
  v52 = v50 - 8;
  v53 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v54 = v18 - v53;
  v66 = type metadata accessor for ContactResolutionResponseHandler.DirectInvocationValue();
  v63 = *(v66 - 8);
  v64 = v66 - 8;
  v56 = (*(v63 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v55);
  v65 = (v18 - v56);
  v57 = type metadata accessor for ContactResolutionResponseHandler();
  v58 = *(v57 - 8);
  v59 = v57 - 8;
  v60 = (*(v58 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v62);
  v61 = v18 - v60;
  v73 = v1;

  ContactResolutionResponseHandler.init(userData:)();
  ContactResolutionResponseHandler.directInvocationValue.getter();
  if ((*(v63 + 88))(v65, v66) == *MEMORY[0x277D56520])
  {
    (*(v63 + 96))(v65, v66);
    v40 = *v65;
    v2 = v65[1];
    v67 = v40;

    (*(v58 + 8))(v61, v57);
    v41 = v40;
    v42 = 0;
    v43 = 0;
  }

  else
  {
    v3 = v54;
    (*(v63 + 8))(v65, v66);
    (*(v58 + 8))(v61, v57);
    v4 = Logger.payments.unsafeMutableAddressor();
    (*(v51 + 16))(v3, v4, v50);

    v29 = 7;
    v30 = swift_allocObject();
    *(v30 + 16) = v62;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    v27 = 17;
    v32 = swift_allocObject();
    *(v32 + 16) = 32;
    v33 = swift_allocObject();
    *(v33 + 16) = 8;
    v28 = 32;
    v5 = swift_allocObject();
    v6 = v30;
    v31 = v5;
    *(v5 + 16) = v44;
    *(v5 + 24) = v6;
    v7 = swift_allocObject();
    v8 = v31;
    v35 = v7;
    *(v7 + 16) = v45;
    *(v7 + 24) = v8;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v34 = _allocateUninitializedArray<A>(_:)();
    v36 = v9;

    v10 = v32;
    v11 = v36;
    *v36 = v46;
    v11[1] = v10;

    v12 = v33;
    v13 = v36;
    v36[2] = v47;
    v13[3] = v12;

    v14 = v35;
    v15 = v36;
    v36[4] = v48;
    v15[5] = v14;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v38, v39))
    {
      v16 = v49;
      v20 = static UnsafeMutablePointer.allocate(capacity:)();
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v21 = createStorage<A>(capacity:type:)(0);
      v22 = createStorage<A>(capacity:type:)(1);
      v23 = &v72;
      v72 = v20;
      v24 = &v71;
      v71 = v21;
      v25 = &v70;
      v70 = v22;
      serialize(_:at:)(2, &v72);
      serialize(_:at:)(1, v23);
      v68 = v46;
      v69 = v32;
      closure #1 in osLogInternal(_:log:type:)(&v68, v23, v24, v25);
      v26 = v16;
      if (v16)
      {

        __break(1u);
      }

      else
      {
        v68 = v47;
        v69 = v33;
        closure #1 in osLogInternal(_:log:type:)(&v68, &v72, &v71, &v70);
        v18[1] = 0;
        v68 = v48;
        v69 = v35;
        closure #1 in osLogInternal(_:log:type:)(&v68, &v72, &v71, &v70);
        _os_log_impl(&dword_2686B1000, v38, v39, "#PaymentsDirectInvocation Invalid user data for personDisambiguation: %s", v20, 0xCu);
        destroyStorage<A>(_:count:)(v21, 0, v19);
        destroyStorage<A>(_:count:)(v22, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v20, MEMORY[0x277D84B78]);
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v38);
    (*(v51 + 8))(v54, v50);
    v41 = 0;
    v42 = 0;
    v43 = 0xFFFF;
  }

  return v41;
}

uint64_t static PaymentsDirectInvocations.parseAppPickerSelection(userData:)(uint64_t a1)
{
  v8 = 0;
  v13 = a1;

  if (a1)
  {
    v6[0] = PaymentsDirectInvocations.Keys.rawValue.getter(3);
    v6[1] = v1;
    MEMORY[0x26D620650](v10);
    outlined destroy of String.UTF8View(v6);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v11 = 0;
  }

  if (v11)
  {
    if (swift_dynamicCast())
    {
      v4 = v7;
    }

    else
    {
      v4 = 0;
    }

    v3 = v4;
  }

  else
  {
    outlined destroy of FlowActivity?(v10);
    v3 = 0;
  }

  v9 = v3;
  if (v3._object)
  {
    v12 = v9;
  }

  else
  {
    v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
    if (v9._object)
    {
      outlined destroy of String.UTF8View(&v9);
    }
  }

  result = v12._countAndFlagsBits;
  v8 = v12;
  return result;
}

uint64_t static PaymentsDirectInvocations.parseContactPickerSelection(userData:)(uint64_t a1)
{
  v63 = a1;
  v45 = partial apply for implicit closure #1 in static PaymentsDirectInvocations.parsePersonDisambiguationSelection(userData:);
  v46 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v47 = partial apply for closure #1 in OSLogArguments.append(_:);
  v48 = partial apply for closure #1 in OSLogArguments.append(_:);
  v49 = partial apply for closure #1 in OSLogArguments.append(_:);
  v75 = 0;
  v50 = 0;
  v68 = 0;
  v69 = 0;
  v56 = 0;
  v51 = type metadata accessor for Logger();
  v52 = *(v51 - 8);
  v53 = v51 - 8;
  v54 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v55 = v18 - v54;
  v67 = type metadata accessor for ContactResolutionResponseHandler.DirectInvocationValue();
  v64 = *(v67 - 8);
  v65 = v67 - 8;
  v57 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v56);
  v66 = (v18 - v57);
  v58 = type metadata accessor for ContactResolutionResponseHandler();
  v59 = *(v58 - 8);
  v60 = v58 - 8;
  v61 = (*(v59 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v63);
  v62 = v18 - v61;
  v75 = v1;

  ContactResolutionResponseHandler.init(userData:)();
  ContactResolutionResponseHandler.directInvocationValue.getter();
  if ((*(v64 + 88))(v66, v67) == *MEMORY[0x277D56528])
  {
    (*(v64 + 96))(v66, v67);
    v40 = *v66;
    v41 = v66[1];
    v2 = v66[2];
    v68 = v40;
    v69 = v41;

    (*(v59 + 8))(v62, v58);
    v42 = v40;
    v43 = v41;
    v44 = 2;
  }

  else
  {
    v3 = v55;
    (*(v64 + 8))(v66, v67);
    (*(v59 + 8))(v62, v58);
    v4 = Logger.payments.unsafeMutableAddressor();
    (*(v52 + 16))(v3, v4, v51);

    v29 = 7;
    v30 = swift_allocObject();
    *(v30 + 16) = v63;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    v27 = 17;
    v32 = swift_allocObject();
    *(v32 + 16) = 32;
    v33 = swift_allocObject();
    *(v33 + 16) = 8;
    v28 = 32;
    v5 = swift_allocObject();
    v6 = v30;
    v31 = v5;
    *(v5 + 16) = v45;
    *(v5 + 24) = v6;
    v7 = swift_allocObject();
    v8 = v31;
    v35 = v7;
    *(v7 + 16) = v46;
    *(v7 + 24) = v8;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v34 = _allocateUninitializedArray<A>(_:)();
    v36 = v9;

    v10 = v32;
    v11 = v36;
    *v36 = v47;
    v11[1] = v10;

    v12 = v33;
    v13 = v36;
    v36[2] = v48;
    v13[3] = v12;

    v14 = v35;
    v15 = v36;
    v36[4] = v49;
    v15[5] = v14;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v38, v39))
    {
      v16 = v50;
      v20 = static UnsafeMutablePointer.allocate(capacity:)();
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v21 = createStorage<A>(capacity:type:)(0);
      v22 = createStorage<A>(capacity:type:)(1);
      v23 = &v74;
      v74 = v20;
      v24 = &v73;
      v73 = v21;
      v25 = &v72;
      v72 = v22;
      serialize(_:at:)(2, &v74);
      serialize(_:at:)(1, v23);
      v70 = v47;
      v71 = v32;
      closure #1 in osLogInternal(_:log:type:)(&v70, v23, v24, v25);
      v26 = v16;
      if (v16)
      {

        __break(1u);
      }

      else
      {
        v70 = v48;
        v71 = v33;
        closure #1 in osLogInternal(_:log:type:)(&v70, &v74, &v73, &v72);
        v18[1] = 0;
        v70 = v49;
        v71 = v35;
        closure #1 in osLogInternal(_:log:type:)(&v70, &v74, &v73, &v72);
        _os_log_impl(&dword_2686B1000, v38, v39, "#PaymentsDirectInvocation Invalid user data for contactPicker: %s", v20, 0xCu);
        destroyStorage<A>(_:count:)(v21, 0, v19);
        destroyStorage<A>(_:count:)(v22, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v20, MEMORY[0x277D84B78]);
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v38);
    (*(v52 + 8))(v55, v51);
    v42 = 0;
    v43 = 0;
    v44 = 0xFFFF;
  }

  return v42;
}

uint64_t implicit closure #1 in static PaymentsDirectInvocations.from(_:)()
{
  v2 = Parse.DirectInvocation.identifier.getter();
  v3 = v0;
  v4 = PaymentsError.errorDescription.getter();
  outlined consume of PaymentsError(v2, v3, 0, 0, 0, 0, 0);
  return v4;
}

uint64_t sub_2687E3C50()
{
  v3 = *(type metadata accessor for Parse.DirectInvocation() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #1 in static PaymentsDirectInvocations.from(_:)()
{
  v1 = *(type metadata accessor for Parse.DirectInvocation() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #1 in static PaymentsDirectInvocations.from(_:)();
}

uint64_t PaymentsDirectInvocations.identifier.getter(uint64_t a1, uint64_t a2, char a3)
{
  *&v14 = a1;
  *(&v14 + 1) = a2;
  switch(a3)
  {
    case 0:
      return PaymentsDirectInvocations.Identifiers.rawValue.getter(0);
    case 1:
      return PaymentsDirectInvocations.Identifiers.rawValue.getter(1);
    case 2:
      return PaymentsDirectInvocations.Identifiers.rawValue.getter(2);
  }

  if (v14 == 0)
  {
    v10 = static SiriKitDirectInvocationPayloads.confirm.getter();
    v11 = [v10 identifier];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    return v12;
  }

  else if (a1 ^ 1 | a2)
  {
    v4 = static SiriKitDirectInvocationPayloads.cancel.getter();
    v5 = [v4 identifier];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
    return v6;
  }

  else
  {
    v7 = static SiriKitDirectInvocationPayloads.reject.getter();
    v8 = [v7 identifier];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    return v9;
  }
}

uint64_t PaymentsDirectInvocations.userData.getter(uint64_t a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 0:
      return static PaymentsDirectInvocations.personDisambiguationUserData(_:)(a1);
    case 1:

      v5 = static PaymentsDirectInvocations.appPickerUserData(_:)(a1, a2);

      return v5;
    case 2:

      v4 = static PaymentsDirectInvocations.contactPickerUserData(_:)(a1, a2);

      return v4;
    default:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
      _allocateUninitializedArray<A>(_:)();
      return Dictionary.init(dictionaryLiteral:)();
  }
}

uint64_t static PaymentsDirectInvocations.personDisambiguationUserData(_:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  _allocateUninitializedArray<A>(_:)();
  v4 = v1;
  *v1 = PaymentsDirectInvocations.Keys.rawValue.getter(1);
  v4[1] = v2;
  v4[5] = MEMORY[0x277D83B88];
  v4[2] = a1;
  _finalizeUninitializedArray<A>(_:)();
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t static PaymentsDirectInvocations.appPickerUserData(_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  _allocateUninitializedArray<A>(_:)();
  v7 = v2;
  *v2 = PaymentsDirectInvocations.Keys.rawValue.getter(3);
  v7[1] = v3;

  v7[5] = MEMORY[0x277D837D0];
  v7[2] = a1;
  v7[3] = a2;
  _finalizeUninitializedArray<A>(_:)();
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t static PaymentsDirectInvocations.contactPickerUserData(_:)(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v25 = a2;
  v29 = 0;
  v30 = 0;
  v22 = type metadata accessor for ContactResolutionCommonKeys();
  v19 = *(v22 - 8);
  v20 = v22 - 8;
  v18 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = &v17 - v18;
  v21 = &v17 - v18;
  v29 = MEMORY[0x28223BE20](v24);
  v30 = v3;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  v23 = _allocateUninitializedArray<A>(_:)();
  v26 = v4;
  (*(v19 + 104))(v2, *MEMORY[0x277D56508], v22);
  v5 = ContactResolutionCommonKeys.rawValue.getter();
  v6 = v19;
  v7 = v26;
  v8 = v5;
  v9 = v21;
  v11 = v10;
  v12 = v22;
  *v26 = v8;
  v7[1] = v11;
  (*(v6 + 8))(v9, v12);

  v13 = v24;
  v14 = v25;
  v15 = v26;
  v28 = MEMORY[0x277D837D0];
  v26[5] = MEMORY[0x277D837D0];
  v15[2] = v13;
  v15[3] = v14;
  _finalizeUninitializedArray<A>(_:)();
  return Dictionary.init(dictionaryLiteral:)();
}

id PaymentsDirectInvocations.toDirectInvocationPayload()(uint64_t a1, uint64_t a2, int a3)
{
  v37 = a1;
  v35 = a2;
  v36 = a3;
  v49 = partial apply for implicit closure #4 in SearchForAccountsNeedsValueStrategy.parseValueResponse(input:resolveRecord:);
  v53 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
  v55 = partial apply for closure #1 in OSLogArguments.append(_:);
  v57 = partial apply for closure #1 in OSLogArguments.append(_:);
  v60 = partial apply for closure #1 in OSLogArguments.append(_:);
  v72 = 0;
  v73 = 0;
  v74 = 0;
  v71 = 0;
  v31 = 0;
  v32 = 0;
  v46 = type metadata accessor for Logger();
  v44 = *(v46 - 8);
  v45 = v46 - 8;
  v33 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v34 = &v22 - v33;
  v72 = v3;
  v73 = v4;
  v74 = v5;
  type metadata accessor for SKIDirectInvocationPayload();
  PaymentsDirectInvocations.identifier.getter(v37, v35, v36);
  v6 = SKIDirectInvocationPayload.__allocating_init(identifier:)();
  v7 = v34;
  v47 = v6;
  v71 = v6;
  v42 = PaymentsDirectInvocations.userData.getter(v37, v35, v36);
  v39 = MEMORY[0x277D84F70] + 8;
  v38 = MEMORY[0x277D84030];
  v40 = MEMORY[0x277D84038];
  v41 = _dictionaryUpCast<A, B, C, D>(_:)();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v47 setUserData_];
  MEMORY[0x277D82BD8](isa);
  v8 = Logger.payments.unsafeMutableAddressor();
  (*(v44 + 16))(v7, v8, v46);
  MEMORY[0x277D82BE0](v47);
  v51 = 7;
  v52 = swift_allocObject();
  *(v52 + 16) = v47;
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.debug.getter();
  v48 = 17;
  v56 = swift_allocObject();
  *(v56 + 16) = 64;
  v58 = swift_allocObject();
  *(v58 + 16) = 8;
  v50 = 32;
  v9 = swift_allocObject();
  v10 = v52;
  v54 = v9;
  *(v9 + 16) = v49;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v54;
  v61 = v11;
  *(v11 + 16) = v53;
  *(v11 + 24) = v12;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v59 = _allocateUninitializedArray<A>(_:)();
  v62 = v13;

  v14 = v56;
  v15 = v62;
  *v62 = v55;
  v15[1] = v14;

  v16 = v58;
  v17 = v62;
  v62[2] = v57;
  v17[3] = v16;

  v18 = v61;
  v19 = v62;
  v62[4] = v60;
  v19[5] = v18;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v64, v65))
  {
    v20 = v31;
    v24 = static UnsafeMutablePointer.allocate(capacity:)();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v25 = createStorage<A>(capacity:type:)(1);
    v26 = createStorage<A>(capacity:type:)(0);
    v27 = &v70;
    v70 = v24;
    v28 = &v69;
    v69 = v25;
    v29 = &v68;
    v68 = v26;
    serialize(_:at:)(2, &v70);
    serialize(_:at:)(1, v27);
    v66 = v55;
    v67 = v56;
    closure #1 in osLogInternal(_:log:type:)(&v66, v27, v28, v29);
    v30 = v20;
    if (v20)
    {

      __break(1u);
    }

    else
    {
      v66 = v57;
      v67 = v58;
      closure #1 in osLogInternal(_:log:type:)(&v66, &v70, &v69, &v68);
      v22 = 0;
      v66 = v60;
      v67 = v61;
      closure #1 in osLogInternal(_:log:type:)(&v66, &v70, &v69, &v68);
      _os_log_impl(&dword_2686B1000, v64, v65, "#PaymentsDirectInvocation DirectInvocationPayload: %@", v24, 0xCu);
      destroyStorage<A>(_:count:)(v25, 1, v23);
      destroyStorage<A>(_:count:)(v26, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v24, MEMORY[0x277D84B78]);
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v64);
  (*(v44 + 8))(v34, v46);
  return v47;
}

uint64_t implicit closure #1 in static PaymentsDirectInvocations.parsePersonDisambiguationSelection(userData:)()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGSgMd, "ff");
  return String.init<A>(describing:)();
}

BOOL static PaymentsDirectInvocations.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  *&v8 = a1;
  *(&v8 + 1) = a2;
  outlined copy of PaymentsDirectInvocations(a1, a2, a3);
  outlined copy of PaymentsDirectInvocations(a4, a5, a6);
  switch(a3)
  {
    case 0:
      if (!a6)
      {
        outlined consume of PaymentsDirectInvocations(v8, *(&v8 + 1), 0);
        outlined consume of PaymentsDirectInvocations(a4, a5, 0);
        return v8 == a4;
      }

      goto LABEL_34;
    case 1:
      if (a6 == 1)
      {

        if ((MEMORY[0x26D620740](v8, *(&v8 + 1), a4, a5) & 1) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_15;
      }

LABEL_34:
      outlined consume of PaymentsDirectInvocations(v8, *(&v8 + 1), a3);
      outlined consume of PaymentsDirectInvocations(a4, a5, a6);
      return 0;
    case 2:
      if (a6 == 2)
      {

        if ((MEMORY[0x26D620740](v8, *(&v8 + 1), a4, a5) & 1) == 0)
        {
LABEL_20:

          outlined consume of PaymentsDirectInvocations(v8, *(&v8 + 1), a3);
          outlined consume of PaymentsDirectInvocations(a4, a5, a6);
          return 0;
        }

LABEL_15:

        outlined consume of PaymentsDirectInvocations(v8, *(&v8 + 1), a3);
        outlined consume of PaymentsDirectInvocations(a4, a5, a6);
        return 1;
      }

      goto LABEL_34;
  }

  if (v8 == 0)
  {
    if (a6 != 3 || a4 != 0 || a5 != 0)
    {
      goto LABEL_34;
    }

    outlined consume of PaymentsDirectInvocations(v8, *(&v8 + 1), a3);
    outlined consume of PaymentsDirectInvocations(a4, a5, a6);
    return 1;
  }

  else
  {
    if (v8 ^ 1 | *(&v8 + 1))
    {
      if (a6 != 3 || a4 != 2 || a5)
      {
        goto LABEL_34;
      }
    }

    else if (a6 != 3 || a4 != 1 || a5)
    {
      goto LABEL_34;
    }

    outlined consume of PaymentsDirectInvocations(v8, *(&v8 + 1), a3);
    outlined consume of PaymentsDirectInvocations(a4, 0, a6);
    return 1;
  }
}

uint64_t sub_2687E5218()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687E5258()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type PaymentsDirectInvocations.Identifiers and conformance PaymentsDirectInvocations.Identifiers()
{
  v2 = lazy protocol witness table cache variable for type PaymentsDirectInvocations.Identifiers and conformance PaymentsDirectInvocations.Identifiers;
  if (!lazy protocol witness table cache variable for type PaymentsDirectInvocations.Identifiers and conformance PaymentsDirectInvocations.Identifiers)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type PaymentsDirectInvocations.Identifiers and conformance PaymentsDirectInvocations.Identifiers);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type PaymentsDirectInvocations.Identifiers and conformance PaymentsDirectInvocations.Identifiers;
  if (!lazy protocol witness table cache variable for type PaymentsDirectInvocations.Identifiers and conformance PaymentsDirectInvocations.Identifiers)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type PaymentsDirectInvocations.Identifiers and conformance PaymentsDirectInvocations.Identifiers);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type PaymentsDirectInvocations.Keys and conformance PaymentsDirectInvocations.Keys()
{
  v2 = lazy protocol witness table cache variable for type PaymentsDirectInvocations.Keys and conformance PaymentsDirectInvocations.Keys;
  if (!lazy protocol witness table cache variable for type PaymentsDirectInvocations.Keys and conformance PaymentsDirectInvocations.Keys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type PaymentsDirectInvocations.Keys and conformance PaymentsDirectInvocations.Keys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type PaymentsDirectInvocations.Keys and conformance PaymentsDirectInvocations.Keys;
  if (!lazy protocol witness table cache variable for type PaymentsDirectInvocations.Keys and conformance PaymentsDirectInvocations.Keys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type PaymentsDirectInvocations.Keys and conformance PaymentsDirectInvocations.Keys);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_2687E5390()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2687E5430()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687E5470()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687E54B0()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2687E5548()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687E5588()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687E5668()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687E56A8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t get_enum_tag_for_layout_string_19SiriPaymentsIntents0B17DirectInvocationsO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return *a1 + 3;
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  return result;
}

uint64_t getEnumTagSinglePayload for PaymentsDirectInvocations(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v4 = *a1 + 252;
    }

    else
    {
      v2 = *(a1 + 16) ^ 0xFF;
      if (v2 >= 0xFC)
      {
        v2 = -1;
      }

      v4 = v2;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PaymentsDirectInvocations(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = (result + 17);
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    *(result + 16) = 0;
    if (a3 >= 0xFD)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for PaymentsDirectInvocations(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 16) = a2;
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    *(result + 16) = 3;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PaymentsDirectInvocations.Identifiers(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xF5)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 10) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 245;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 11;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PaymentsDirectInvocations.Identifiers(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xF5)
  {
    v5 = ((a3 + 10) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xF5)
  {
    v4 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 10;
    }
  }

  return result;
}

uint64_t outlined copy of PaymentsDirectInvocations(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1 || a3 == 2)
  {
  }

  return result;
}

uint64_t static PaymentsContextProvider.confirmationContextUpdate(isSend:)@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v21 = a1;
  v30 = 0;
  v29 = 0;
  v20 = 0;
  v28 = type metadata accessor for NLContextUpdate();
  v24 = *(v28 - 8);
  v25 = v28 - 8;
  v15 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v27 = &v15 - v15;
  v30 = &v15 - v15;
  v19 = 1;
  v29 = MEMORY[0x28223BE20](v21) & 1;
  NLContextUpdate.init()();
  static PaymentsContextProvider.domainName.getter();
  NLContextUpdate.currentDomainName.setter();
  v18 = MEMORY[0x277D837D0];
  v17 = _allocateUninitializedArray<A>(_:)();
  v16 = v2;
  v3 = Constants.NLPaymentConfirmationValue.canonicalName.getter(0);
  v4 = v16;
  v5 = v3;
  LOBYTE(v3) = v19;
  *v16 = v5;
  v4[1] = v6;
  v7 = Constants.NLPaymentConfirmationValue.canonicalName.getter(v3);
  v8 = v16;
  v16[2] = v7;
  v8[3] = v9;
  v10 = Constants.NLPaymentConfirmationValue.canonicalName.getter(2);
  v11 = v16;
  v16[4] = v10;
  v11[5] = v12;
  _finalizeUninitializedArray<A>(_:)();
  NLContextUpdate.weightedPromptResponseOptions.setter();
  NLContextUpdate.weightedPromptStrict.setter();
  static PaymentsContextProvider.targetDomain.getter();
  NLContextUpdate.weightedPromptTargetDomain.setter();
  v23 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v22 = _allocateUninitializedArray<A>(_:)();
  static PaymentsContextProvider.makeSDAForConfirm(isSend:)(v21 & 1, v13);
  _finalizeUninitializedArray<A>(_:)();
  NLContextUpdate.nluSystemDialogActs.setter();
  return (*(v24 + 32))(v26, v27, v28);
}

uint64_t static PaymentsContextProvider.appConfirmationContextUpdate(app:locale:intentType:isRequestAccount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v44 = a6;
  v38 = a1;
  v39 = a2;
  v35 = a3;
  v36 = a4;
  v37 = a5;
  v52 = 0;
  v51 = 0;
  v50 = 0;
  v48 = 0;
  v49 = 0;
  v47 = 0;
  v33 = 0;
  v46 = type metadata accessor for NLContextUpdate();
  v42 = *(v46 - 8);
  v43 = v46 - 8;
  v26 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v45 = &v25 - v26;
  v52 = &v25 - v26;
  v51 = MEMORY[0x28223BE20](v38);
  v50 = v6;
  v48 = v7;
  v49 = v8;
  v29 = 1;
  v47 = v9 & 1;
  NLContextUpdate.init()();
  static PaymentsContextProvider.domainName.getter();
  NLContextUpdate.currentDomainName.setter();
  NLContextUpdate.weightedPromptStrict.setter();
  static PaymentsContextProvider.targetDomain.getter();
  NLContextUpdate.weightedPromptTargetDomain.setter();
  v32 = MEMORY[0x277D837D0];
  v28 = _allocateUninitializedArray<A>(_:)();
  v27 = v10;
  v11 = Constants.NLPaymentConfirmationValue.canonicalName.getter(0);
  v12 = v27;
  v13 = v11;
  LOBYTE(v11) = v29;
  *v27 = v13;
  v12[1] = v14;
  v15 = Constants.NLPaymentConfirmationValue.canonicalName.getter(v11);
  v16 = v27;
  v27[2] = v15;
  v16[3] = v17;
  v18 = Constants.NLPaymentConfirmationValue.canonicalName.getter(2);
  v19 = v27;
  v27[4] = v18;
  v19[5] = v20;
  _finalizeUninitializedArray<A>(_:)();
  NLContextUpdate.weightedPromptResponseOptions.setter();
  v34 = 1;
  v31 = _allocateUninitializedArray<A>(_:)();
  v30 = v21;
  v22 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("appName", 7uLL, v29 & 1);
  *v30 = v22;
  _finalizeUninitializedArray<A>(_:)();
  NLContextUpdate.weightedPromptResponseTargets.setter();
  v41 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v40 = _allocateUninitializedArray<A>(_:)();
  static PaymentsContextProvider.makeSDAForAppConfirmation(_:locale:intentType:isRequestAccount:)(v38, v39, v35, v36, v37 & 1, v23);
  _finalizeUninitializedArray<A>(_:)();
  NLContextUpdate.nluSystemDialogActs.setter();
  return (*(v42 + 32))(v44, v45, v46);
}

uint64_t static PaymentsContextProvider.appDisambiguationContextUpdate(apps:locale:intentType:isRequestAccount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v20 = a6;
  v33 = a1;
  v34 = a2;
  v35 = a3;
  v36 = a4;
  v37 = a5;
  v42 = partial apply for closure #1 in static PaymentsContextProvider.appDisambiguationContextUpdate(apps:locale:intentType:isRequestAccount:);
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v52 = 0;
  v53 = 0;
  v51 = 0;
  v49 = 0;
  v38 = 0;
  v21 = type metadata accessor for NLContextUpdate();
  v22 = *(v21 - 8);
  v23 = v21 - 8;
  v24 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v27 = v18 - v24;
  v56 = v18 - v24;
  v55 = MEMORY[0x28223BE20](v33);
  v54 = v6;
  v52 = v7;
  v53 = v8;
  v29 = 1;
  v51 = v9 & 1;
  NLContextUpdate.init()();
  static PaymentsContextProvider.domainName.getter();
  NLContextUpdate.currentDomainName.setter();
  NLContextUpdate.weightedPromptStrict.setter();
  static PaymentsContextProvider.targetDomain.getter();
  NLContextUpdate.weightedPromptTargetDomain.setter();
  v28 = 1;
  v32 = MEMORY[0x277D837D0];
  v26 = _allocateUninitializedArray<A>(_:)();
  v25 = v10;
  v11 = Constants.NLPaymentConfirmationValue.canonicalName.getter(2);
  v12 = v25;
  *v25 = v11;
  v12[1] = v13;
  _finalizeUninitializedArray<A>(_:)();
  NLContextUpdate.weightedPromptResponseOptions.setter();
  v31 = _allocateUninitializedArray<A>(_:)();
  v30 = v14;
  v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("appName", 7uLL, v29 & 1);
  *v30 = v15;
  _finalizeUninitializedArray<A>(_:)();
  NLContextUpdate.weightedPromptResponseTargets.setter();
  v50 = v33;
  v39 = &v44;
  v45 = v34;
  v46 = v35;
  v47 = v36;
  v48 = v37;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17SiriAppResolution0B0CGMd, &_sSay17SiriAppResolution0B0CGMR);
  v41 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  lazy protocol witness table accessor for type [App] and conformance [A]();
  v43 = Sequence.compactMap<A>(_:)();
  v19 = v43;
  v49 = v43;
  v18[2] = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v18[1] = _allocateUninitializedArray<A>(_:)();
  static PaymentsContextProvider.makeSDAForAppDisambiguation(choices:)(v19, v16);
  _finalizeUninitializedArray<A>(_:)();
  NLContextUpdate.nluSystemDialogActs.setter();
  static RREntity.makeDisambiguationGroup(with:locale:)(v33, v34);
  NLContextUpdate.rrEntities.setter();
  (*(v22 + 16))(v20, v27, v21);

  return (*(v22 + 8))(v27, v21);
}

uint64_t static PaymentsContextProvider.handleRequestPayment(paymentRecord:needsSDA:)@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v7 = a3;
  v14 = a1;
  v15 = a2;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v8 = type metadata accessor for NLContextUpdate();
  v9 = *(v8 - 8);
  v10 = v8 - 8;
  v11 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = v6 - v11;
  v18 = v6 - v11;
  v17 = MEMORY[0x28223BE20](v14);
  v12 = 1;
  v16 = v3 & 1;
  NLContextUpdate.init()();
  static PaymentsContextProvider.domainName.getter();
  NLContextUpdate.currentDomainName.setter();
  NLContextUpdate.weightedPromptStrict.setter();
  static PaymentsContextProvider.targetDomain.getter();
  NLContextUpdate.weightedPromptTargetDomain.setter();
  static RREntity.makeEntities(for:)(v14);
  NLContextUpdate.rrEntities.setter();
  if (v15)
  {
    v6[1] = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
    v6[0] = _allocateUninitializedArray<A>(_:)();
    static PaymentsContextProvider.makeSDAForRequestPayment()(v4);
    _finalizeUninitializedArray<A>(_:)();
    NLContextUpdate.nluSystemDialogActs.setter();
  }

  return (*(v9 + 32))(v7, v13, v8);
}

uint64_t static PaymentsContextProvider.personDisambiguationContextUpdate(persons:isSend:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v38 = a3;
  v32 = a1;
  v33 = a2;
  v43 = 0;
  v42 = 0;
  v41 = 0;
  v31 = 0;
  v40 = type metadata accessor for NLContextUpdate();
  v36 = *(v40 - 8);
  v37 = v40 - 8;
  v22 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v39 = &v22 - v22;
  v43 = &v22 - v22;
  v42 = MEMORY[0x28223BE20](v32);
  v25 = 1;
  v41 = v3 & 1;
  NLContextUpdate.init()();
  static PaymentsContextProvider.domainName.getter();
  NLContextUpdate.currentDomainName.setter();
  v26 = 2;
  v30 = MEMORY[0x277D837D0];
  v24 = _allocateUninitializedArray<A>(_:)();
  v23 = v4;
  v27 = 0;
  v5 = Constants.NLPaymentConfirmationValue.canonicalName.getter(0);
  v6 = v23;
  v7 = v5;
  LOBYTE(v5) = v25;
  *v23 = v7;
  v6[1] = v8;
  v9 = Constants.NLPaymentConfirmationValue.canonicalName.getter(v5);
  v10 = v23;
  v23[2] = v9;
  v10[3] = v11;
  _finalizeUninitializedArray<A>(_:)();
  NLContextUpdate.weightedPromptResponseOptions.setter();
  NLContextUpdate.weightedPromptStrict.setter();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.siri.nl.Payments", 0x1AuLL, v25 & 1);
  NLContextUpdate.weightedPromptTargetDomain.setter();
  v29 = _allocateUninitializedArray<A>(_:)();
  v28 = v12;
  v13 = SendPaymentSlots.canonicalName.getter(v27);
  v14 = v28;
  v15 = v13;
  LOBYTE(v13) = v27;
  *v28 = v15;
  v14[1] = v16;
  v17 = RequestPaymentSlots.canonicalName.getter(v13);
  v18 = v28;
  v28[2] = v17;
  v18[3] = v19;
  _finalizeUninitializedArray<A>(_:)();
  NLContextUpdate.weightedPromptResponseTargets.setter();
  static RREntity.makeDisambiguationGroup(with:)(v32);
  NLContextUpdate.rrEntities.setter();
  v35 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v34 = _allocateUninitializedArray<A>(_:)();
  static PaymentsContextProvider.makeSDAForDisambiguatePerson(persons:isSend:)(v32, v33 & 1, v20);
  _finalizeUninitializedArray<A>(_:)();
  NLContextUpdate.nluSystemDialogActs.setter();
  return (*(v36 + 32))(v38, v39, v40);
}

uint64_t static PaymentsContextProvider.tccAcceptanceContextUpdate(app:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v16 = a1;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v24 = 0;
  v33 = type metadata accessor for NLContextUpdate();
  v30 = *(v33 - 8);
  v31 = v33 - 8;
  v10[0] = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v32 = v10 - v10[0];
  v36 = v10 - v10[0];
  v35 = MEMORY[0x28223BE20](v16);
  NLContextUpdate.init()();
  static PaymentsContextProvider.domainName.getter();
  NLContextUpdate.currentDomainName.setter();
  static PaymentsContextProvider.targetDomain.getter();
  NLContextUpdate.weightedPromptTargetDomain.setter();
  type metadata accessor for SAAceConfirmationContext();
  v29 = SAUIAppPunchOut.__allocating_init()();
  v34 = v29;
  v11 = *MEMORY[0x277D47C00];
  MEMORY[0x277D82BE0](v11);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10[1] = v3;
  v12 = MEMORY[0x26D620690](v2);

  MEMORY[0x277D82BD8](v11);
  [v29 setReason_];
  MEMORY[0x277D82BD8](v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17SAAceSerializable_pMd, &_sSo17SAAceSerializable_pMR);
  v25 = 1;
  v15 = _allocateUninitializedArray<A>(_:)();
  v13 = v4;
  MEMORY[0x277D82BE0](v29);
  *v13 = v29;
  _finalizeUninitializedArray<A>(_:)();
  NLContextUpdate.conversationStateAttachments.setter();
  type metadata accessor for MachineUtteranceBuilder();
  v20 = MachineUtteranceBuilder.__allocating_init()();
  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("appName", 7uLL, 1);
  countAndFlagsBits = v5._countAndFlagsBits;
  object = v5._object;
  App.appIdentifier.getter();
  v18 = v6;
  v21 = dispatch thunk of MachineUtteranceBuilder.addMappingIfPresent(node:value:)();

  v22 = dispatch thunk of MachineUtteranceBuilder.build()();
  v23 = v7;

  NLContextUpdate.nlInput.setter();
  v27 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v26 = _allocateUninitializedArray<A>(_:)();
  static PaymentsContextProvider.makeSDAForTCCAcceptance()(v8);
  _finalizeUninitializedArray<A>(_:)();
  NLContextUpdate.nluSystemDialogActs.setter();
  (*(v30 + 16))(v28, v32, v33);
  MEMORY[0x277D82BD8](v29);
  return (*(v30 + 8))(v32, v33);
}

uint64_t static PaymentsContextProvider.needsValueContextUpdate(value:)@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  v12 = a2;
  v13 = a1;
  v22 = 0;
  v25 = closure #1 in static PaymentsContextProvider.needsValueContextUpdate(value:);
  v29 = 0;
  v28 = 0;
  v14 = type metadata accessor for NLContextUpdate();
  v15 = *(v14 - 8);
  v16 = v14 - 8;
  v17 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = v11 - v17;
  v29 = v11 - v17;
  v28 = MEMORY[0x28223BE20](v13);
  NLContextUpdate.init()();
  static PaymentsContextProvider.domainName.getter();
  NLContextUpdate.currentDomainName.setter();
  v24 = MEMORY[0x277D837D0];
  v19 = _allocateUninitializedArray<A>(_:)();
  v18 = v2;
  v21 = 1;
  v3 = Constants.NLPaymentConfirmationValue.canonicalName.getter(1);
  v4 = v18;
  *v18 = v3;
  v4[1] = v5;
  v6 = Constants.NLPaymentConfirmationValue.canonicalName.getter(2);
  v7 = v18;
  v18[2] = v6;
  v7[3] = v8;
  _finalizeUninitializedArray<A>(_:)();
  NLContextUpdate.weightedPromptResponseOptions.setter();
  NLContextUpdate.weightedPromptStrict.setter();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.siri.nl.Payments", 0x1AuLL, v21 & 1);
  NLContextUpdate.weightedPromptTargetDomain.setter();
  v27 = static SearchForAccountsSlots.allCases.getter();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriPaymentsIntents22SearchForAccountsSlotsOGMd, &_sSay19SiriPaymentsIntents22SearchForAccountsSlotsOGMR);
  lazy protocol witness table accessor for type [SearchForAccountsSlots] and conformance [A]();
  v26 = Sequence.compactMap<A>(_:)();
  v11[1] = v26;
  outlined destroy of [SFCardSection](&v27);
  NLContextUpdate.weightedPromptResponseTargets.setter();
  v11[3] = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v11[2] = _allocateUninitializedArray<A>(_:)();
  static PaymentsContextProvider.makeSDAForSearchForAccountNeedsValue(_:)(v13, v9);
  _finalizeUninitializedArray<A>(_:)();
  NLContextUpdate.nluSystemDialogActs.setter();
  return (*(v15 + 32))(v12, v20, v14);
}

{
  v12 = a2;
  v13 = a1;
  v22 = 0;
  v25 = closure #1 in static PaymentsContextProvider.needsValueContextUpdate(value:);
  v29 = 0;
  v28 = 0;
  v14 = type metadata accessor for NLContextUpdate();
  v15 = *(v14 - 8);
  v16 = v14 - 8;
  v17 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = v11 - v17;
  v29 = v11 - v17;
  v28 = MEMORY[0x28223BE20](v13);
  NLContextUpdate.init()();
  static PaymentsContextProvider.domainName.getter();
  NLContextUpdate.currentDomainName.setter();
  v24 = MEMORY[0x277D837D0];
  v19 = _allocateUninitializedArray<A>(_:)();
  v18 = v2;
  v21 = 1;
  v3 = Constants.NLPaymentConfirmationValue.canonicalName.getter(1);
  v4 = v18;
  *v18 = v3;
  v4[1] = v5;
  v6 = Constants.NLPaymentConfirmationValue.canonicalName.getter(2);
  v7 = v18;
  v18[2] = v6;
  v7[3] = v8;
  _finalizeUninitializedArray<A>(_:)();
  NLContextUpdate.weightedPromptResponseOptions.setter();
  NLContextUpdate.weightedPromptStrict.setter();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.siri.nl.Payments", 0x1AuLL, v21 & 1);
  NLContextUpdate.weightedPromptTargetDomain.setter();
  v27 = static RequestPaymentSlots.allCases.getter();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriPaymentsIntents19RequestPaymentSlotsOGMd, &_sSay19SiriPaymentsIntents19RequestPaymentSlotsOGMR);
  lazy protocol witness table accessor for type [RequestPaymentSlots] and conformance [A]();
  v26 = Sequence.compactMap<A>(_:)();
  v11[1] = v26;
  outlined destroy of [SFCardSection](&v27);
  NLContextUpdate.weightedPromptResponseTargets.setter();
  v11[3] = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v11[2] = _allocateUninitializedArray<A>(_:)();
  static PaymentsContextProvider.makeSDAForRequestPaymentNeedsValue(_:)(v13, v9);
  _finalizeUninitializedArray<A>(_:)();
  NLContextUpdate.nluSystemDialogActs.setter();
  return (*(v15 + 32))(v12, v20, v14);
}

uint64_t static PaymentsContextProvider.makeSDAForConfirm(isSend:)@<X0>(unsigned int a1@<W0>, char *a2@<X8>)
{
  v50 = a2;
  v79 = a1;
  v51 = partial apply for implicit closure #1 in static PaymentsContextProvider.makeSDAForConfirm(isSend:);
  v52 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v53 = partial apply for closure #1 in OSLogArguments.append(_:);
  v54 = partial apply for closure #1 in OSLogArguments.append(_:);
  v55 = partial apply for closure #1 in OSLogArguments.append(_:);
  v93 = 0;
  v92 = 0;
  v91 = 0;
  v90 = 0;
  v56 = 0;
  v71 = 0;
  v57 = type metadata accessor for Logger();
  v58 = *(v57 - 8);
  v59 = v57 - 8;
  v60 = (*(v58 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v61 = v22 - v60;
  v62 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v64 = *(v62 - 8);
  v63 = v62 - 8;
  v65 = v64;
  v66 = *(v64 + 64);
  v67 = (v66 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v71);
  v68 = v22 - v67;
  v69 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v70 = v22 - v69;
  v93 = v22 - v69;
  v72 = type metadata accessor for Siri_Nlu_External_SystemOffered();
  v73 = *(v72 - 8);
  v74 = v72 - 8;
  v75 = (*(v73 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v71);
  v76 = v22 - v75;
  v77 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v78 = v22 - v77;
  v92 = v22 - v77;
  v80 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed();
  v81 = *(v80 - 8);
  v82 = v80 - 8;
  v83 = (*(v81 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v79);
  v84 = v22 - v83;
  v91 = v22 - v83;
  v90 = v6 & 1;
  if (v6)
  {
    type metadata accessor for UsoTaskBuilder_pay_common_Payment();
    v49 = UsoTaskBuilder_pay_common_Payment.__allocating_init()();
  }

  else
  {
    type metadata accessor for UsoTaskBuilder_requestMoney_common_Payment();
    v49 = UsoTaskBuilder_requestMoney_common_Payment.__allocating_init()();
  }

  v7 = v61;
  v31 = v49;
  static Siri_Nlu_External_UserWantedToProceed.from(_:)(v49, v84);

  static Siri_Nlu_External_SystemOffered.from(_:)(v84, v78);
  (*(v73 + 16))(v76, v78, v72);
  Siri_Nlu_External_SystemDialogAct.init(systemOffered:)(v76, v70);
  v8 = Logger.payments.unsafeMutableAddressor();
  (*(v58 + 16))(v7, v8, v57);
  v34 = v65;
  v32 = *(v64 + 16);
  v33 = v64 + 16;
  v32(v68, v70, v62);
  v35 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v38 = 7;
  v39 = swift_allocObject();
  (*(v64 + 32))(v39 + v35, v68, v62);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.debug.getter();
  v36 = 17;
  v41 = swift_allocObject();
  *(v41 + 16) = 32;
  v42 = swift_allocObject();
  *(v42 + 16) = 8;
  v37 = 32;
  v9 = swift_allocObject();
  v10 = v39;
  v40 = v9;
  *(v9 + 16) = v51;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v40;
  v44 = v11;
  *(v11 + 16) = v52;
  *(v11 + 24) = v12;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v43 = _allocateUninitializedArray<A>(_:)();
  v45 = v13;

  v14 = v41;
  v15 = v45;
  *v45 = v53;
  v15[1] = v14;

  v16 = v42;
  v17 = v45;
  v45[2] = v54;
  v17[3] = v16;

  v18 = v44;
  v19 = v45;
  v45[4] = v55;
  v19[5] = v18;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v47, v48))
  {
    v20 = v56;
    v24 = static UnsafeMutablePointer.allocate(capacity:)();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v25 = createStorage<A>(capacity:type:)(0);
    v26 = createStorage<A>(capacity:type:)(1);
    v27 = &v89;
    v89 = v24;
    v28 = &v88;
    v88 = v25;
    v29 = &v87;
    v87 = v26;
    serialize(_:at:)(2, &v89);
    serialize(_:at:)(1, v27);
    v85 = v53;
    v86 = v41;
    closure #1 in osLogInternal(_:log:type:)(&v85, v27, v28, v29);
    v30 = v20;
    if (v20)
    {

      __break(1u);
    }

    else
    {
      v85 = v54;
      v86 = v42;
      closure #1 in osLogInternal(_:log:type:)(&v85, &v89, &v88, &v87);
      v22[1] = 0;
      v85 = v55;
      v86 = v44;
      closure #1 in osLogInternal(_:log:type:)(&v85, &v89, &v88, &v87);
      _os_log_impl(&dword_2686B1000, v47, v48, "#PaymentsContextProvider returning SystemOffered for confirm intent %s", v24, 0xCu);
      destroyStorage<A>(_:count:)(v25, 0, v23);
      destroyStorage<A>(_:count:)(v26, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v24, MEMORY[0x277D84B78]);
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v47);
  (*(v58 + 8))(v61, v57);
  v32(v50, v70, v62);
  (*(v64 + 8))(v70, v62);
  (*(v73 + 8))(v78, v72);
  return (*(v81 + 8))(v84, v80);
}

uint64_t static PaymentsContextProvider.handleSendPayment(paymentRecord:needsSDA:)@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v7 = a3;
  v14 = a1;
  v15 = a2;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v8 = type metadata accessor for NLContextUpdate();
  v9 = *(v8 - 8);
  v10 = v8 - 8;
  v11 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = v6 - v11;
  v18 = v6 - v11;
  v17 = MEMORY[0x28223BE20](v14);
  v12 = 1;
  v16 = v3 & 1;
  NLContextUpdate.init()();
  static PaymentsContextProvider.domainName.getter();
  NLContextUpdate.currentDomainName.setter();
  NLContextUpdate.weightedPromptStrict.setter();
  static PaymentsContextProvider.targetDomain.getter();
  NLContextUpdate.weightedPromptTargetDomain.setter();
  static RREntity.makeEntities(for:)(v14);
  NLContextUpdate.rrEntities.setter();
  if (v15)
  {
    v6[1] = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
    v6[0] = _allocateUninitializedArray<A>(_:)();
    static PaymentsContextProvider.makeSDAForSendPayment()(v4);
    _finalizeUninitializedArray<A>(_:)();
    NLContextUpdate.nluSystemDialogActs.setter();
  }

  return (*(v9 + 32))(v7, v13, v8);
}

uint64_t static PaymentsContextProvider.makeSDAForSendPayment()@<X0>(char *a1@<X8>)
{
  v27 = a1;
  v52 = partial apply for implicit closure #1 in static PaymentsContextProvider.makeSDAForConfirm(isSend:);
  v56 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v58 = partial apply for closure #1 in OSLogArguments.append(_:);
  v60 = partial apply for closure #1 in OSLogArguments.append(_:);
  v63 = partial apply for closure #1 in OSLogArguments.append(_:);
  v76 = 0;
  v75 = 0;
  v74 = 0;
  v28 = 0;
  v33 = 0;
  v40 = type metadata accessor for Logger();
  v38 = *(v40 - 8);
  v39 = v40 - 8;
  v29 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v35 = v18 - v29;
  v30 = (*(*(type metadata accessor for Siri_Nlu_External_SystemPrompted() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v33);
  v37 = v18 - v30;
  v50 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v46 = *(v50 - 8);
  v47 = v50 - 8;
  v44 = v46;
  v45 = *(v46 + 64);
  v31 = (v45 + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v33);
  v49 = v18 - v31;
  v32 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v41 = v18 - v32;
  v76 = v18 - v32;
  type metadata accessor for UsoTaskBuilder_pay_common_Payment();
  v36 = UsoTaskBuilder_pay_common_Payment.__allocating_init()();
  v75 = v36;
  type metadata accessor for UsoEntityBuilder_common_Payment();
  v34 = UsoEntityBuilder_common_Payment.__allocating_init()();
  v74 = v34;
  dispatch thunk of Uso_VerbTemplateBuilder_Target.setTarget(value:)();
  v3 = v35;
  static Siri_Nlu_External_SystemPrompted.from(_:)(v36, v37);
  Siri_Nlu_External_SystemDialogAct.init(systemPrompted:)(v37, v41);
  v4 = Logger.payments.unsafeMutableAddressor();
  (*(v38 + 16))(v3, v4, v40);
  v42 = *(v46 + 16);
  v43 = v46 + 16;
  v42(v49, v41, v50);
  v48 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v54 = 7;
  v55 = swift_allocObject();
  (*(v46 + 32))(v55 + v48, v49, v50);
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.debug.getter();
  v51 = 17;
  v59 = swift_allocObject();
  *(v59 + 16) = 32;
  v61 = swift_allocObject();
  *(v61 + 16) = 8;
  v53 = 32;
  v5 = swift_allocObject();
  v6 = v55;
  v57 = v5;
  *(v5 + 16) = v52;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  v8 = v57;
  v64 = v7;
  *(v7 + 16) = v56;
  *(v7 + 24) = v8;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v62 = _allocateUninitializedArray<A>(_:)();
  v65 = v9;

  v10 = v59;
  v11 = v65;
  *v65 = v58;
  v11[1] = v10;

  v12 = v61;
  v13 = v65;
  v65[2] = v60;
  v13[3] = v12;

  v14 = v64;
  v15 = v65;
  v65[4] = v63;
  v15[5] = v14;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v67, v68))
  {
    v16 = v28;
    v20 = static UnsafeMutablePointer.allocate(capacity:)();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v21 = createStorage<A>(capacity:type:)(0);
    v22 = createStorage<A>(capacity:type:)(1);
    v23 = &v73;
    v73 = v20;
    v24 = &v72;
    v72 = v21;
    v25 = &v71;
    v71 = v22;
    serialize(_:at:)(2, &v73);
    serialize(_:at:)(1, v23);
    v69 = v58;
    v70 = v59;
    closure #1 in osLogInternal(_:log:type:)(&v69, v23, v24, v25);
    v26 = v16;
    if (v16)
    {

      __break(1u);
    }

    else
    {
      v69 = v60;
      v70 = v61;
      closure #1 in osLogInternal(_:log:type:)(&v69, &v73, &v72, &v71);
      v18[0] = 0;
      v69 = v63;
      v70 = v64;
      closure #1 in osLogInternal(_:log:type:)(&v69, &v73, &v72, &v71);
      _os_log_impl(&dword_2686B1000, v67, v68, "#PaymentsContextProvider returning SystemPrompted for handle SendPayment intent %s", v20, 0xCu);
      destroyStorage<A>(_:count:)(v21, 0, v19);
      destroyStorage<A>(_:count:)(v22, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v20, MEMORY[0x277D84B78]);
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v67);
  (*(v38 + 8))(v35, v40);
  v42(v27, v41, v50);
  (*(v46 + 8))(v41, v50);
}

uint64_t static PaymentsContextProvider.makeSDAForRequestPayment()@<X0>(char *a1@<X8>)
{
  v27 = a1;
  v52 = partial apply for implicit closure #1 in static PaymentsContextProvider.makeSDAForConfirm(isSend:);
  v56 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v58 = partial apply for closure #1 in OSLogArguments.append(_:);
  v60 = partial apply for closure #1 in OSLogArguments.append(_:);
  v63 = partial apply for closure #1 in OSLogArguments.append(_:);
  v76 = 0;
  v75 = 0;
  v74 = 0;
  v28 = 0;
  v33 = 0;
  v40 = type metadata accessor for Logger();
  v38 = *(v40 - 8);
  v39 = v40 - 8;
  v29 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v35 = v18 - v29;
  v30 = (*(*(type metadata accessor for Siri_Nlu_External_SystemPrompted() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v33);
  v37 = v18 - v30;
  v50 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v46 = *(v50 - 8);
  v47 = v50 - 8;
  v44 = v46;
  v45 = *(v46 + 64);
  v31 = (v45 + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v33);
  v49 = v18 - v31;
  v32 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v41 = v18 - v32;
  v76 = v18 - v32;
  type metadata accessor for UsoTaskBuilder_requestMoney_common_Payment();
  v36 = UsoTaskBuilder_requestMoney_common_Payment.__allocating_init()();
  v75 = v36;
  type metadata accessor for UsoEntityBuilder_common_Payment();
  v34 = UsoEntityBuilder_common_Payment.__allocating_init()();
  v74 = v34;
  dispatch thunk of Uso_VerbTemplateBuilder_Target.setTarget(value:)();
  v3 = v35;
  static Siri_Nlu_External_SystemPrompted.from(_:)(v36, v37);
  Siri_Nlu_External_SystemDialogAct.init(systemPrompted:)(v37, v41);
  v4 = Logger.payments.unsafeMutableAddressor();
  (*(v38 + 16))(v3, v4, v40);
  v42 = *(v46 + 16);
  v43 = v46 + 16;
  v42(v49, v41, v50);
  v48 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v54 = 7;
  v55 = swift_allocObject();
  (*(v46 + 32))(v55 + v48, v49, v50);
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.debug.getter();
  v51 = 17;
  v59 = swift_allocObject();
  *(v59 + 16) = 32;
  v61 = swift_allocObject();
  *(v61 + 16) = 8;
  v53 = 32;
  v5 = swift_allocObject();
  v6 = v55;
  v57 = v5;
  *(v5 + 16) = v52;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  v8 = v57;
  v64 = v7;
  *(v7 + 16) = v56;
  *(v7 + 24) = v8;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v62 = _allocateUninitializedArray<A>(_:)();
  v65 = v9;

  v10 = v59;
  v11 = v65;
  *v65 = v58;
  v11[1] = v10;

  v12 = v61;
  v13 = v65;
  v65[2] = v60;
  v13[3] = v12;

  v14 = v64;
  v15 = v65;
  v65[4] = v63;
  v15[5] = v14;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v67, v68))
  {
    v16 = v28;
    v20 = static UnsafeMutablePointer.allocate(capacity:)();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v21 = createStorage<A>(capacity:type:)(0);
    v22 = createStorage<A>(capacity:type:)(1);
    v23 = &v73;
    v73 = v20;
    v24 = &v72;
    v72 = v21;
    v25 = &v71;
    v71 = v22;
    serialize(_:at:)(2, &v73);
    serialize(_:at:)(1, v23);
    v69 = v58;
    v70 = v59;
    closure #1 in osLogInternal(_:log:type:)(&v69, v23, v24, v25);
    v26 = v16;
    if (v16)
    {

      __break(1u);
    }

    else
    {
      v69 = v60;
      v70 = v61;
      closure #1 in osLogInternal(_:log:type:)(&v69, &v73, &v72, &v71);
      v18[0] = 0;
      v69 = v63;
      v70 = v64;
      closure #1 in osLogInternal(_:log:type:)(&v69, &v73, &v72, &v71);
      _os_log_impl(&dword_2686B1000, v67, v68, "#PaymentsContextProvider returning SystemPrompted for handle RequestPayment intent %s", v20, 0xCu);
      destroyStorage<A>(_:count:)(v21, 0, v19);
      destroyStorage<A>(_:count:)(v22, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v20, MEMORY[0x277D84B78]);
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v67);
  (*(v38 + 8))(v35, v40);
  v42(v27, v41, v50);
  (*(v46 + 8))(v41, v50);
}

uint64_t static PaymentsContextProvider.handleSearchForAccounts(account:needsSDA:)@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v7 = a3;
  v14 = a1;
  v15 = a2;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v8 = type metadata accessor for NLContextUpdate();
  v9 = *(v8 - 8);
  v10 = v8 - 8;
  v11 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = v6 - v11;
  v18 = v6 - v11;
  v17 = MEMORY[0x28223BE20](v14);
  v12 = 1;
  v16 = v3 & 1;
  NLContextUpdate.init()();
  static PaymentsContextProvider.domainName.getter();
  NLContextUpdate.currentDomainName.setter();
  NLContextUpdate.weightedPromptStrict.setter();
  static PaymentsContextProvider.targetDomain.getter();
  NLContextUpdate.weightedPromptTargetDomain.setter();
  static RREntity.makeEntities(for:)(v14);
  NLContextUpdate.rrEntities.setter();
  if (v15)
  {
    v6[1] = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
    v6[0] = _allocateUninitializedArray<A>(_:)();
    static PaymentsContextProvider.makeSDAForSearchForAccount()(v4);
    _finalizeUninitializedArray<A>(_:)();
    NLContextUpdate.nluSystemDialogActs.setter();
  }

  return (*(v9 + 32))(v7, v13, v8);
}

uint64_t static PaymentsContextProvider.makeSDAForSearchForAccount()@<X0>(char *a1@<X8>)
{
  v28 = a1;
  v52 = partial apply for implicit closure #1 in static PaymentsContextProvider.makeSDAForConfirm(isSend:);
  v56 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v58 = partial apply for closure #1 in OSLogArguments.append(_:);
  v60 = partial apply for closure #1 in OSLogArguments.append(_:);
  v63 = partial apply for closure #1 in OSLogArguments.append(_:);
  v75 = 0;
  v74 = 0;
  v29 = 0;
  v32 = 0;
  v40 = type metadata accessor for Logger();
  v38 = *(v40 - 8);
  v39 = v40 - 8;
  v30 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v35 = v19 - v30;
  v31 = (*(*(type metadata accessor for Siri_Nlu_External_SystemPrompted() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v32);
  v37 = v19 - v31;
  v50 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v46 = *(v50 - 8);
  v47 = v50 - 8;
  v44 = v46;
  v45 = *(v46 + 64);
  v33 = (v45 + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v32);
  v49 = v19 - v33;
  v34 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v41 = v19 - v34;
  v75 = v19 - v34;
  type metadata accessor for UsoTaskBuilder_summarise_common_PaymentAccount();
  v3 = UsoTaskBuilder_summarise_common_PaymentAccount.__allocating_init()();
  v4 = v35;
  v36 = v3;
  v74 = v3;
  static Siri_Nlu_External_SystemPrompted.from(_:)(v3, v37);
  Siri_Nlu_External_SystemDialogAct.init(systemPrompted:)(v37, v41);
  v5 = Logger.payments.unsafeMutableAddressor();
  (*(v38 + 16))(v4, v5, v40);
  v42 = *(v46 + 16);
  v43 = v46 + 16;
  v42(v49, v41, v50);
  v48 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v54 = 7;
  v55 = swift_allocObject();
  (*(v46 + 32))(v55 + v48, v49, v50);
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.debug.getter();
  v51 = 17;
  v59 = swift_allocObject();
  *(v59 + 16) = 32;
  v61 = swift_allocObject();
  *(v61 + 16) = 8;
  v53 = 32;
  v6 = swift_allocObject();
  v7 = v55;
  v57 = v6;
  *(v6 + 16) = v52;
  *(v6 + 24) = v7;
  v8 = swift_allocObject();
  v9 = v57;
  v64 = v8;
  *(v8 + 16) = v56;
  *(v8 + 24) = v9;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v62 = _allocateUninitializedArray<A>(_:)();
  v65 = v10;

  v11 = v59;
  v12 = v65;
  *v65 = v58;
  v12[1] = v11;

  v13 = v61;
  v14 = v65;
  v65[2] = v60;
  v14[3] = v13;

  v15 = v64;
  v16 = v65;
  v65[4] = v63;
  v16[5] = v15;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v67, v68))
  {
    v17 = v29;
    v21 = static UnsafeMutablePointer.allocate(capacity:)();
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v22 = createStorage<A>(capacity:type:)(0);
    v23 = createStorage<A>(capacity:type:)(1);
    v24 = &v73;
    v73 = v21;
    v25 = &v72;
    v72 = v22;
    v26 = &v71;
    v71 = v23;
    serialize(_:at:)(2, &v73);
    serialize(_:at:)(1, v24);
    v69 = v58;
    v70 = v59;
    closure #1 in osLogInternal(_:log:type:)(&v69, v24, v25, v26);
    v27 = v17;
    if (v17)
    {

      __break(1u);
    }

    else
    {
      v69 = v60;
      v70 = v61;
      closure #1 in osLogInternal(_:log:type:)(&v69, &v73, &v72, &v71);
      v19[0] = 0;
      v69 = v63;
      v70 = v64;
      closure #1 in osLogInternal(_:log:type:)(&v69, &v73, &v72, &v71);
      _os_log_impl(&dword_2686B1000, v67, v68, "#PaymentsContextProvider returning SystemPrompted for handle Search for Accounts intent %s", v21, 0xCu);
      destroyStorage<A>(_:count:)(v22, 0, v20);
      destroyStorage<A>(_:count:)(v23, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v21, MEMORY[0x277D84B78]);
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v67);
  (*(v38 + 8))(v35, v40);
  v42(v28, v41, v50);
  (*(v46 + 8))(v41, v50);
}

uint64_t closure #1 in static PaymentsContextProvider.needsValueContextUpdate(value:)@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  result = SearchForAccountsSlots.canonicalName.getter(*a1);
  *a2 = result;
  a2[1] = v3;
  return result;
}

{
  result = RequestPaymentSlots.canonicalName.getter(*a1);
  *a2 = result;
  a2[1] = v3;
  return result;
}

uint64_t static PaymentsContextProvider.makeSDAForSearchForAccountNeedsValue(_:)@<X0>(int a1@<W0>, char *a2@<X8>)
{
  v50 = a2;
  v75 = a1;
  v51 = partial apply for implicit closure #1 in static PaymentsContextProvider.makeSDAForConfirm(isSend:);
  v52 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v53 = partial apply for closure #1 in OSLogArguments.append(_:);
  v54 = partial apply for closure #1 in OSLogArguments.append(_:);
  v55 = partial apply for closure #1 in OSLogArguments.append(_:);
  v86 = 0;
  v85 = 0;
  v84 = 0;
  v83 = 0;
  v56 = 0;
  v77 = 0;
  v73 = 0;
  v57 = type metadata accessor for Logger();
  v58 = *(v57 - 8);
  v59 = v57 - 8;
  v60 = (*(v58 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v61 = v19 - v60;
  v62 = (*(*(type metadata accessor for Siri_Nlu_External_SystemPrompted() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v73);
  v63 = v19 - v62;
  v64 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v66 = *(v64 - 8);
  v65 = v64 - 8;
  v67 = v66;
  v69 = *(v66 + 64);
  v68 = (v69 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v73);
  v70 = v19 - v68;
  v71 = (v69 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v72 = v19 - v71;
  v86 = v19 - v71;
  v85 = v3;
  type metadata accessor for UsoTaskBuilder_summarise_common_PaymentAccount();
  v74 = UsoTaskBuilder_summarise_common_PaymentAccount.__allocating_init()();
  v84 = v74;
  type metadata accessor for UsoEntityBuilder_common_PaymentAccount();
  v76 = UsoEntityBuilder_common_PaymentAccount.__allocating_init()();
  v83 = v76;
  if (v75)
  {
    if (v75 == 1)
    {
      v46 = 0;
      type metadata accessor for UsoEntityBuilder_common_PaymentAccountType();
      v48 = UsoEntityBuilder_common_PaymentAccountType.__allocating_init()();
      v77 = v48;
      object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v46, 1)._object;
      dispatch thunk of UsoEntityBuilder_common_PaymentAccountType.setName(value:)();

      dispatch thunk of UsoEntityBuilder_common_PaymentAccount.setAccountType(value:)();
    }

    else if (v75 == 2)
    {
      v45 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._object;
      dispatch thunk of UsoEntityBuilder_common_PaymentAccount.setOrganization(value:)();
    }
  }

  else
  {
    v49 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._object;
    dispatch thunk of UsoEntityBuilder_common_PaymentAccount.setNickname(value:)();
  }

  dispatch thunk of Uso_VerbTemplateBuilder_Reference.setReference(value:)();
  v4 = v61;
  static Siri_Nlu_External_SystemPrompted.from(_:)(v74, v63);
  Siri_Nlu_External_SystemDialogAct.init(systemPrompted:)(v63, v72);
  v5 = Logger.payments.unsafeMutableAddressor();
  (*(v58 + 16))(v4, v5, v57);
  v30 = v67;
  v28 = *(v66 + 16);
  v29 = v66 + 16;
  v28(v70, v72, v64);
  v31 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v34 = 7;
  v35 = swift_allocObject();
  (*(v66 + 32))(v35 + v31, v70, v64);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.debug.getter();
  v32 = 17;
  v37 = swift_allocObject();
  *(v37 + 16) = 32;
  v38 = swift_allocObject();
  *(v38 + 16) = 8;
  v33 = 32;
  v6 = swift_allocObject();
  v7 = v35;
  v36 = v6;
  *(v6 + 16) = v51;
  *(v6 + 24) = v7;
  v8 = swift_allocObject();
  v9 = v36;
  v40 = v8;
  *(v8 + 16) = v52;
  *(v8 + 24) = v9;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v39 = _allocateUninitializedArray<A>(_:)();
  v41 = v10;

  v11 = v37;
  v12 = v41;
  *v41 = v53;
  v12[1] = v11;

  v13 = v38;
  v14 = v41;
  v41[2] = v54;
  v14[3] = v13;

  v15 = v40;
  v16 = v41;
  v41[4] = v55;
  v16[5] = v15;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v43, v44))
  {
    v17 = v56;
    v21 = static UnsafeMutablePointer.allocate(capacity:)();
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v22 = createStorage<A>(capacity:type:)(0);
    v23 = createStorage<A>(capacity:type:)(1);
    v24 = &v82;
    v82 = v21;
    v25 = &v81;
    v81 = v22;
    v26 = &v80;
    v80 = v23;
    serialize(_:at:)(2, &v82);
    serialize(_:at:)(1, v24);
    v78 = v53;
    v79 = v37;
    closure #1 in osLogInternal(_:log:type:)(&v78, v24, v25, v26);
    v27 = v17;
    if (v17)
    {

      __break(1u);
    }

    else
    {
      v78 = v54;
      v79 = v38;
      closure #1 in osLogInternal(_:log:type:)(&v78, &v82, &v81, &v80);
      v19[1] = 0;
      v78 = v55;
      v79 = v40;
      closure #1 in osLogInternal(_:log:type:)(&v78, &v82, &v81, &v80);
      _os_log_impl(&dword_2686B1000, v43, v44, "#PaymentsContextProvider returning SystemPrompted for handle Search for Accounts intent %s", v21, 0xCu);
      destroyStorage<A>(_:count:)(v22, 0, v20);
      destroyStorage<A>(_:count:)(v23, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v21, MEMORY[0x277D84B78]);
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v43);
  (*(v58 + 8))(v61, v57);
  v28(v50, v72, v64);
  (*(v66 + 8))(v72, v64);
}

uint64_t static PaymentsContextProvider.needsValueContextUpdate(value:isVerbless:)@<X0>(unsigned int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v22 = a3;
  v24 = a1;
  v23 = a2;
  v33 = 0;
  v36 = closure #1 in static PaymentsContextProvider.needsValueContextUpdate(value:isVerbless:);
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v25 = type metadata accessor for NLContextUpdate();
  v26 = *(v25 - 8);
  v27 = v25 - 8;
  v28 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v31 = &v15 - v28;
  v41 = &v15 - v28;
  v40 = MEMORY[0x28223BE20](v24);
  v32 = 1;
  v39 = v3 & 1;
  NLContextUpdate.init()();
  static PaymentsContextProvider.domainName.getter();
  NLContextUpdate.currentDomainName.setter();
  v35 = MEMORY[0x277D837D0];
  v30 = _allocateUninitializedArray<A>(_:)();
  v29 = v4;
  v5 = Constants.NLPaymentConfirmationValue.canonicalName.getter(v32);
  v6 = v29;
  *v29 = v5;
  v6[1] = v7;
  v8 = Constants.NLPaymentConfirmationValue.canonicalName.getter(2);
  v9 = v29;
  v29[2] = v8;
  v9[3] = v10;
  _finalizeUninitializedArray<A>(_:)();
  NLContextUpdate.weightedPromptResponseOptions.setter();
  NLContextUpdate.weightedPromptStrict.setter();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.siri.nl.Payments", 0x1AuLL, v32 & 1);
  NLContextUpdate.weightedPromptTargetDomain.setter();
  v38 = static SendPaymentSlots.allCases.getter();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriPaymentsIntents16SendPaymentSlotsOGMd, &_sSay19SiriPaymentsIntents16SendPaymentSlotsOGMR);
  lazy protocol witness table accessor for type [SendPaymentSlots] and conformance [A]();
  v37 = Sequence.compactMap<A>(_:)();
  v21 = v37;
  outlined destroy of [SFCardSection](&v38);
  NLContextUpdate.weightedPromptResponseTargets.setter();
  if (v23)
  {
    v19 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
    v18 = _allocateUninitializedArray<A>(_:)();
    static PaymentsContextProvider.makeSDAForVerblessSendPaymentNeedsValue(_:)(v24, v11);
    v12 = v18;
  }

  else
  {
    v17 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
    v16 = _allocateUninitializedArray<A>(_:)();
    static PaymentsContextProvider.makeSDAForSendPaymentNeedsValue(_:)(v24, v13);
    v12 = v16;
  }

  _finalizeUninitializedArray<A>(_:)();
  v20 = v12;
  NLContextUpdate.nluSystemDialogActs.setter();
  return (*(v26 + 32))(v22, v31, v25);
}

uint64_t closure #1 in static PaymentsContextProvider.needsValueContextUpdate(value:isVerbless:)@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  result = SendPaymentSlots.canonicalName.getter(*a1);
  *a2 = result;
  a2[1] = v3;
  return result;
}

uint64_t static PaymentsContextProvider.makeSDAForVerblessSendPaymentNeedsValue(_:)@<X0>(int a1@<W0>, char *a2@<X8>)
{
  v48 = a2;
  v73 = a1;
  v49 = partial apply for implicit closure #1 in static PaymentsContextProvider.makeSDAForConfirm(isSend:);
  v50 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v51 = partial apply for closure #1 in OSLogArguments.append(_:);
  v52 = partial apply for closure #1 in OSLogArguments.append(_:);
  v53 = partial apply for closure #1 in OSLogArguments.append(_:);
  v85 = 0;
  v84 = 0;
  v83 = 0;
  v82 = 0;
  v54 = 0;
  v76 = 0;
  v75 = 0;
  v71 = 0;
  v55 = type metadata accessor for Logger();
  v56 = *(v55 - 8);
  v57 = v55 - 8;
  v58 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v59 = v19 - v58;
  v60 = (*(*(type metadata accessor for Siri_Nlu_External_SystemPrompted() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v71);
  v61 = v19 - v60;
  v62 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v64 = *(v62 - 8);
  v63 = v62 - 8;
  v65 = v64;
  v67 = *(v64 + 64);
  v66 = (v67 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v71);
  v68 = v19 - v66;
  v69 = (v67 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v70 = v19 - v69;
  v85 = v19 - v69;
  v84 = v3;
  type metadata accessor for UsoTaskBuilder_noVerb_common_Payment();
  v72 = UsoTaskBuilder_noVerb_common_Payment.__allocating_init()();
  v83 = v72;
  type metadata accessor for UsoEntityBuilder_common_Payment();
  v74 = UsoEntityBuilder_common_Payment.__allocating_init()();
  v82 = v74;
  if (v73)
  {
    if (v73 == 1)
    {
      type metadata accessor for UsoEntityBuilder_common_CurrencyAmount();
      v46 = UsoEntityBuilder_common_CurrencyAmount.__allocating_init()();
      v76 = v46;

      dispatch thunk of UsoEntityBuilder_common_Payment.setAmount(value:)();
    }

    else
    {
      object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._object;
      dispatch thunk of UsoEntityBuilder_common_Payment.setMemo(value:)();
    }
  }

  else
  {
    type metadata accessor for UsoEntityBuilder_common_PaymentAccount();
    v47 = UsoEntityBuilder_common_PaymentAccount.__allocating_init()();
    v75 = v47;

    dispatch thunk of UsoEntityBuilder_common_Payment.setPayee(value:)();
  }

  dispatch thunk of Uso_VerbTemplateBuilder_NoVerb.setEntity(value:)();
  v4 = v59;
  static Siri_Nlu_External_SystemPrompted.from(_:)(v72, v61);
  Siri_Nlu_External_SystemDialogAct.init(systemPrompted:)(v61, v70);
  v5 = Logger.payments.unsafeMutableAddressor();
  (*(v56 + 16))(v4, v5, v55);
  v30 = v65;
  v28 = *(v64 + 16);
  v29 = v64 + 16;
  v28(v68, v70, v62);
  v31 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v34 = 7;
  v35 = swift_allocObject();
  (*(v64 + 32))(v35 + v31, v68, v62);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.debug.getter();
  v32 = 17;
  v37 = swift_allocObject();
  *(v37 + 16) = 32;
  v38 = swift_allocObject();
  *(v38 + 16) = 8;
  v33 = 32;
  v6 = swift_allocObject();
  v7 = v35;
  v36 = v6;
  *(v6 + 16) = v49;
  *(v6 + 24) = v7;
  v8 = swift_allocObject();
  v9 = v36;
  v40 = v8;
  *(v8 + 16) = v50;
  *(v8 + 24) = v9;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v39 = _allocateUninitializedArray<A>(_:)();
  v41 = v10;

  v11 = v37;
  v12 = v41;
  *v41 = v51;
  v12[1] = v11;

  v13 = v38;
  v14 = v41;
  v41[2] = v52;
  v14[3] = v13;

  v15 = v40;
  v16 = v41;
  v41[4] = v53;
  v16[5] = v15;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v43, v44))
  {
    v17 = v54;
    v21 = static UnsafeMutablePointer.allocate(capacity:)();
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v22 = createStorage<A>(capacity:type:)(0);
    v23 = createStorage<A>(capacity:type:)(1);
    v24 = &v81;
    v81 = v21;
    v25 = &v80;
    v80 = v22;
    v26 = &v79;
    v79 = v23;
    serialize(_:at:)(2, &v81);
    serialize(_:at:)(1, v24);
    v77 = v51;
    v78 = v37;
    closure #1 in osLogInternal(_:log:type:)(&v77, v24, v25, v26);
    v27 = v17;
    if (v17)
    {

      __break(1u);
    }

    else
    {
      v77 = v52;
      v78 = v38;
      closure #1 in osLogInternal(_:log:type:)(&v77, &v81, &v80, &v79);
      v19[0] = 0;
      v77 = v53;
      v78 = v40;
      closure #1 in osLogInternal(_:log:type:)(&v77, &v81, &v80, &v79);
      _os_log_impl(&dword_2686B1000, v43, v44, "#PaymentsContextProvider returning SystemPrompted for handle verbless Send Payment intent %s", v21, 0xCu);
      destroyStorage<A>(_:count:)(v22, 0, v20);
      destroyStorage<A>(_:count:)(v23, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v21, MEMORY[0x277D84B78]);
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v43);
  (*(v56 + 8))(v59, v55);
  v28(v48, v70, v62);
  (*(v64 + 8))(v70, v62);
}

uint64_t static PaymentsContextProvider.makeSDAForSendPaymentNeedsValue(_:)@<X0>(int a1@<W0>, char *a2@<X8>)
{
  v48 = a2;
  v73 = a1;
  v49 = partial apply for implicit closure #1 in static PaymentsContextProvider.makeSDAForConfirm(isSend:);
  v50 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v51 = partial apply for closure #1 in OSLogArguments.append(_:);
  v52 = partial apply for closure #1 in OSLogArguments.append(_:);
  v53 = partial apply for closure #1 in OSLogArguments.append(_:);
  v85 = 0;
  v84 = 0;
  v83 = 0;
  v82 = 0;
  v54 = 0;
  v76 = 0;
  v75 = 0;
  v71 = 0;
  v55 = type metadata accessor for Logger();
  v56 = *(v55 - 8);
  v57 = v55 - 8;
  v58 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v59 = v19 - v58;
  v60 = (*(*(type metadata accessor for Siri_Nlu_External_SystemPrompted() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v71);
  v61 = v19 - v60;
  v62 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v64 = *(v62 - 8);
  v63 = v62 - 8;
  v65 = v64;
  v67 = *(v64 + 64);
  v66 = (v67 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v71);
  v68 = v19 - v66;
  v69 = (v67 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v70 = v19 - v69;
  v85 = v19 - v69;
  v84 = v3;
  type metadata accessor for UsoTaskBuilder_pay_common_Payment();
  v72 = UsoTaskBuilder_pay_common_Payment.__allocating_init()();
  v83 = v72;
  type metadata accessor for UsoEntityBuilder_common_Payment();
  v74 = UsoEntityBuilder_common_Payment.__allocating_init()();
  v82 = v74;
  if (v73)
  {
    if (v73 == 1)
    {
      type metadata accessor for UsoEntityBuilder_common_CurrencyAmount();
      v46 = UsoEntityBuilder_common_CurrencyAmount.__allocating_init()();
      v76 = v46;

      dispatch thunk of UsoEntityBuilder_common_Payment.setAmount(value:)();
    }

    else
    {
      object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._object;
      dispatch thunk of UsoEntityBuilder_common_Payment.setMemo(value:)();
    }
  }

  else
  {
    type metadata accessor for UsoEntityBuilder_common_PaymentAccount();
    v47 = UsoEntityBuilder_common_PaymentAccount.__allocating_init()();
    v75 = v47;

    dispatch thunk of UsoEntityBuilder_common_Payment.setPayee(value:)();
  }

  dispatch thunk of Uso_VerbTemplateBuilder_Target.setTarget(value:)();
  v4 = v59;
  static Siri_Nlu_External_SystemPrompted.from(_:)(v72, v61);
  Siri_Nlu_External_SystemDialogAct.init(systemPrompted:)(v61, v70);
  v5 = Logger.payments.unsafeMutableAddressor();
  (*(v56 + 16))(v4, v5, v55);
  v30 = v65;
  v28 = *(v64 + 16);
  v29 = v64 + 16;
  v28(v68, v70, v62);
  v31 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v34 = 7;
  v35 = swift_allocObject();
  (*(v64 + 32))(v35 + v31, v68, v62);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.debug.getter();
  v32 = 17;
  v37 = swift_allocObject();
  *(v37 + 16) = 32;
  v38 = swift_allocObject();
  *(v38 + 16) = 8;
  v33 = 32;
  v6 = swift_allocObject();
  v7 = v35;
  v36 = v6;
  *(v6 + 16) = v49;
  *(v6 + 24) = v7;
  v8 = swift_allocObject();
  v9 = v36;
  v40 = v8;
  *(v8 + 16) = v50;
  *(v8 + 24) = v9;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v39 = _allocateUninitializedArray<A>(_:)();
  v41 = v10;

  v11 = v37;
  v12 = v41;
  *v41 = v51;
  v12[1] = v11;

  v13 = v38;
  v14 = v41;
  v41[2] = v52;
  v14[3] = v13;

  v15 = v40;
  v16 = v41;
  v41[4] = v53;
  v16[5] = v15;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v43, v44))
  {
    v17 = v54;
    v21 = static UnsafeMutablePointer.allocate(capacity:)();
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v22 = createStorage<A>(capacity:type:)(0);
    v23 = createStorage<A>(capacity:type:)(1);
    v24 = &v81;
    v81 = v21;
    v25 = &v80;
    v80 = v22;
    v26 = &v79;
    v79 = v23;
    serialize(_:at:)(2, &v81);
    serialize(_:at:)(1, v24);
    v77 = v51;
    v78 = v37;
    closure #1 in osLogInternal(_:log:type:)(&v77, v24, v25, v26);
    v27 = v17;
    if (v17)
    {

      __break(1u);
    }

    else
    {
      v77 = v52;
      v78 = v38;
      closure #1 in osLogInternal(_:log:type:)(&v77, &v81, &v80, &v79);
      v19[0] = 0;
      v77 = v53;
      v78 = v40;
      closure #1 in osLogInternal(_:log:type:)(&v77, &v81, &v80, &v79);
      _os_log_impl(&dword_2686B1000, v43, v44, "#PaymentsContextProvider returning SystemPrompted for handle Send Payment intent %s", v21, 0xCu);
      destroyStorage<A>(_:count:)(v22, 0, v20);
      destroyStorage<A>(_:count:)(v23, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v21, MEMORY[0x277D84B78]);
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v43);
  (*(v56 + 8))(v59, v55);
  v28(v48, v70, v62);
  (*(v64 + 8))(v70, v62);
}

uint64_t static PaymentsContextProvider.makeSDAForRequestPaymentNeedsValue(_:)@<X0>(int a1@<W0>, char *a2@<X8>)
{
  v48 = a2;
  v73 = a1;
  v49 = partial apply for implicit closure #1 in static PaymentsContextProvider.makeSDAForConfirm(isSend:);
  v50 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v51 = partial apply for closure #1 in OSLogArguments.append(_:);
  v52 = partial apply for closure #1 in OSLogArguments.append(_:);
  v53 = partial apply for closure #1 in OSLogArguments.append(_:);
  v85 = 0;
  v84 = 0;
  v83 = 0;
  v82 = 0;
  v54 = 0;
  v76 = 0;
  v75 = 0;
  v71 = 0;
  v55 = type metadata accessor for Logger();
  v56 = *(v55 - 8);
  v57 = v55 - 8;
  v58 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v59 = v19 - v58;
  v60 = (*(*(type metadata accessor for Siri_Nlu_External_SystemPrompted() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v71);
  v61 = v19 - v60;
  v62 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v64 = *(v62 - 8);
  v63 = v62 - 8;
  v65 = v64;
  v67 = *(v64 + 64);
  v66 = (v67 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v71);
  v68 = v19 - v66;
  v69 = (v67 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v70 = v19 - v69;
  v85 = v19 - v69;
  v84 = v3;
  type metadata accessor for UsoTaskBuilder_requestMoney_common_Payment();
  v72 = UsoTaskBuilder_requestMoney_common_Payment.__allocating_init()();
  v83 = v72;
  type metadata accessor for UsoEntityBuilder_common_Payment();
  v74 = UsoEntityBuilder_common_Payment.__allocating_init()();
  v82 = v74;
  if (v73)
  {
    if (v73 == 1)
    {
      type metadata accessor for UsoEntityBuilder_common_CurrencyAmount();
      v46 = UsoEntityBuilder_common_CurrencyAmount.__allocating_init()();
      v76 = v46;

      dispatch thunk of UsoEntityBuilder_common_Payment.setAmount(value:)();
    }

    else
    {
      object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._object;
      dispatch thunk of UsoEntityBuilder_common_Payment.setMemo(value:)();
    }
  }

  else
  {
    type metadata accessor for UsoEntityBuilder_common_PaymentAccount();
    v47 = UsoEntityBuilder_common_PaymentAccount.__allocating_init()();
    v75 = v47;

    dispatch thunk of UsoEntityBuilder_common_Payment.setPayer(value:)();
  }

  dispatch thunk of Uso_VerbTemplateBuilder_Target.setTarget(value:)();
  v4 = v59;
  static Siri_Nlu_External_SystemPrompted.from(_:)(v72, v61);
  Siri_Nlu_External_SystemDialogAct.init(systemPrompted:)(v61, v70);
  v5 = Logger.payments.unsafeMutableAddressor();
  (*(v56 + 16))(v4, v5, v55);
  v30 = v65;
  v28 = *(v64 + 16);
  v29 = v64 + 16;
  v28(v68, v70, v62);
  v31 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v34 = 7;
  v35 = swift_allocObject();
  (*(v64 + 32))(v35 + v31, v68, v62);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.debug.getter();
  v32 = 17;
  v37 = swift_allocObject();
  *(v37 + 16) = 32;
  v38 = swift_allocObject();
  *(v38 + 16) = 8;
  v33 = 32;
  v6 = swift_allocObject();
  v7 = v35;
  v36 = v6;
  *(v6 + 16) = v49;
  *(v6 + 24) = v7;
  v8 = swift_allocObject();
  v9 = v36;
  v40 = v8;
  *(v8 + 16) = v50;
  *(v8 + 24) = v9;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v39 = _allocateUninitializedArray<A>(_:)();
  v41 = v10;

  v11 = v37;
  v12 = v41;
  *v41 = v51;
  v12[1] = v11;

  v13 = v38;
  v14 = v41;
  v41[2] = v52;
  v14[3] = v13;

  v15 = v40;
  v16 = v41;
  v41[4] = v53;
  v16[5] = v15;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v43, v44))
  {
    v17 = v54;
    v21 = static UnsafeMutablePointer.allocate(capacity:)();
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v22 = createStorage<A>(capacity:type:)(0);
    v23 = createStorage<A>(capacity:type:)(1);
    v24 = &v81;
    v81 = v21;
    v25 = &v80;
    v80 = v22;
    v26 = &v79;
    v79 = v23;
    serialize(_:at:)(2, &v81);
    serialize(_:at:)(1, v24);
    v77 = v51;
    v78 = v37;
    closure #1 in osLogInternal(_:log:type:)(&v77, v24, v25, v26);
    v27 = v17;
    if (v17)
    {

      __break(1u);
    }

    else
    {
      v77 = v52;
      v78 = v38;
      closure #1 in osLogInternal(_:log:type:)(&v77, &v81, &v80, &v79);
      v19[0] = 0;
      v77 = v53;
      v78 = v40;
      closure #1 in osLogInternal(_:log:type:)(&v77, &v81, &v80, &v79);
      _os_log_impl(&dword_2686B1000, v43, v44, "#PaymentsContextProvider returning SystemPrompted for handle Request Payment intent %s", v21, 0xCu);
      destroyStorage<A>(_:count:)(v22, 0, v20);
      destroyStorage<A>(_:count:)(v23, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v21, MEMORY[0x277D84B78]);
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v43);
  (*(v56 + 8))(v59, v55);
  v28(v48, v70, v62);
  (*(v64 + 8))(v70, v62);
}

uint64_t static PaymentsContextProvider.makeSDAForDisambiguatePerson(persons:isSend:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v52 = a2;
  v59 = a1;
  v49 = a3;
  v50 = a2;
  v87 = 0;
  v86 = 0;
  v51 = 0;
  v84 = 0;
  v58 = type metadata accessor for Logger();
  v53 = v58;
  v54 = *(v58 - 8);
  v57 = v54;
  v55 = v54;
  v3 = *(v54 + 64);
  v4 = MEMORY[0x28223BE20](v59);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v6;
  v87 = v4;
  v86 = v7;
  v8 = Logger.payments.unsafeMutableAddressor();
  (*(v57 + 16))(v6, v8, v58);

  v67 = 7;
  v68 = swift_allocObject();
  *(v68 + 16) = v59;
  v78 = Logger.logObject.getter();
  v60 = v78;
  v77 = static os_log_type_t.debug.getter();
  v61 = v77;
  v62 = 17;
  v71 = swift_allocObject();
  v63 = v71;
  v64 = 32;
  *(v71 + 16) = 32;
  v9 = swift_allocObject();
  v10 = v64;
  v72 = v9;
  v65 = v9;
  *(v9 + 16) = 8;
  v66 = v10;
  v11 = swift_allocObject();
  v12 = v68;
  v69 = v11;
  *(v11 + 16) = partial apply for implicit closure #1 in static PaymentsContextProvider.makeSDAForDisambiguatePerson(persons:isSend:);
  *(v11 + 24) = v12;
  v13 = swift_allocObject();
  v14 = v69;
  v75 = v13;
  v70 = v13;
  *(v13 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v13 + 24) = v14;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v73 = _allocateUninitializedArray<A>(_:)();
  v74 = v15;

  v16 = v71;
  v17 = v74;
  *v74 = partial apply for closure #1 in OSLogArguments.append(_:);
  v17[1] = v16;

  v18 = v72;
  v19 = v74;
  v74[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v19[3] = v18;

  v20 = v74;
  v21 = v75;
  v74[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v20[5] = v21;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v78, v77))
  {
    v22 = v51;
    v42 = static UnsafeMutablePointer.allocate(capacity:)();
    v39 = v42;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v43 = createStorage<A>(capacity:type:)(0);
    v41 = v43;
    v45 = 1;
    v44 = createStorage<A>(capacity:type:)(1);
    v83 = v42;
    v82 = v43;
    v81 = v44;
    v46 = &v83;
    serialize(_:at:)(2, &v83);
    serialize(_:at:)(v45, v46);
    v79 = partial apply for closure #1 in OSLogArguments.append(_:);
    v80 = v63;
    closure #1 in osLogInternal(_:log:type:)(&v79, v46, &v82, &v81);
    v47 = v22;
    v48 = v22;
    if (v22)
    {
      v37 = 0;

      __break(1u);
    }

    else
    {
      v79 = partial apply for closure #1 in OSLogArguments.append(_:);
      v80 = v65;
      closure #1 in osLogInternal(_:log:type:)(&v79, &v83, &v82, &v81);
      v35 = 0;
      v36 = 0;
      v79 = partial apply for closure #1 in OSLogArguments.append(_:);
      v80 = v70;
      closure #1 in osLogInternal(_:log:type:)(&v79, &v83, &v82, &v81);
      v33 = 0;
      v34 = 0;
      _os_log_impl(&dword_2686B1000, v60, v61, "#PaymentsContextProvider creating SDAs for contact disambiguation %s", v39, 0xCu);
      destroyStorage<A>(_:count:)(v41, 0, v40);
      destroyStorage<A>(_:count:)(v44, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v39, MEMORY[0x277D84B78]);

      v38 = v33;
    }
  }

  else
  {
    v23 = v51;

    v38 = v23;
  }

  v24 = v38;

  (*(v55 + 8))(v56, v53);
  v85 = v59;
  v28 = &v27;
  MEMORY[0x28223BE20](&v27);
  v29 = &v27 - 4;
  *(&v27 - 16) = v25 & 1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
  v31 = type metadata accessor for UsoTaskBuilder();
  lazy protocol witness table accessor for type [INPerson] and conformance [A]();
  v32 = Sequence.compactMap<A>(_:)();
  if (v24)
  {
    result = v28;
    __break(1u);
  }

  else
  {
    v27 = v32;
    v84 = v32;
    static PaymentsContextProvider.makeDisambiguationAct(for:)(v32, v49);
  }

  return result;
}

uint64_t static PaymentsContextProvider.makeSDAForAppConfirmation(_:locale:intentType:isRequestAccount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, char *a6@<X8>)
{
  v72 = a6;
  v100 = a1;
  v103 = a2;
  v110 = a3;
  v101 = a4;
  v102 = a5;
  v73 = partial apply for implicit closure #1 in static PaymentsContextProvider.makeSDAForConfirm(isSend:);
  v74 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v75 = partial apply for closure #1 in OSLogArguments.append(_:);
  v76 = partial apply for closure #1 in OSLogArguments.append(_:);
  v77 = partial apply for closure #1 in OSLogArguments.append(_:);
  v131 = 0;
  v130 = 0;
  v129 = 0;
  v128 = 0;
  v127 = 0;
  v125 = 0;
  v126 = 0;
  v124 = 0;
  v123 = 0;
  v122 = 0;
  v121 = 0;
  v78 = 0;
  v115 = 0;
  v114 = 0;
  v113 = 0;
  v112 = 0;
  v111 = 0;
  v104 = 0;
  v79 = type metadata accessor for Logger();
  v80 = *(v79 - 8);
  v81 = v79 - 8;
  v82 = (*(v80 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v83 = v30 - v82;
  v84 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v86 = *(v84 - 8);
  v85 = v84 - 8;
  v87 = v86;
  v88 = *(v86 + 64);
  v89 = (v88 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v104);
  v90 = v30 - v89;
  v91 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v92 = v30 - v91;
  v131 = v30 - v91;
  v93 = type metadata accessor for Siri_Nlu_External_SystemOffered();
  v94 = *(v93 - 8);
  v95 = v93 - 8;
  v96 = (*(v94 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v104);
  v97 = v30 - v96;
  v98 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v99 = v30 - v98;
  v130 = v30 - v98;
  v105 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed();
  v106 = *(v105 - 8);
  v107 = v105 - 8;
  v108 = (*(v106 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v104);
  v109 = v30 - v108;
  v129 = v30 - v108;
  v128 = v10;
  v127 = v11;
  v125 = v12;
  v126 = v13;
  v124 = v14 & 1;
  type metadata accessor for INRequestPaymentIntent();
  if (swift_dynamicCastMetatype())
  {
    v67 = 0;
    type metadata accessor for UsoTaskBuilder_requestMoney_common_Payment();
    v70 = UsoTaskBuilder_requestMoney_common_Payment.__allocating_init()();
    v112 = v70;
    type metadata accessor for UsoEntityBuilder_common_Payment();
    v69 = UsoEntityBuilder_common_Payment.__allocating_init()();
    v111 = v69;
    v68 = App.toUsoEntityBuilder(locale:)(v103);
    dispatch thunk of UsoEntityBuilderGlobalArgs.setUsoAssociatedApp(value:)();

    dispatch thunk of Uso_VerbTemplateBuilder_Target.setTarget(value:)();

    v123 = v70;

    v71 = v70;
  }

  else
  {
    type metadata accessor for INSendPaymentIntent();
    if (swift_dynamicCastMetatype())
    {
      v63 = 0;
      type metadata accessor for UsoTaskBuilder_pay_common_Payment();
      v66 = UsoTaskBuilder_pay_common_Payment.__allocating_init()();
      v114 = v66;
      type metadata accessor for UsoEntityBuilder_common_Payment();
      v65 = UsoEntityBuilder_common_Payment.__allocating_init()();
      v113 = v65;
      v64 = App.toUsoEntityBuilder(locale:)(v103);
      dispatch thunk of UsoEntityBuilderGlobalArgs.setUsoAssociatedApp(value:)();

      dispatch thunk of Uso_VerbTemplateBuilder_Target.setTarget(value:)();

      v123 = v66;

      v71 = v66;
    }

    else
    {
      type metadata accessor for UsoEntityBuilder_common_PaymentAccount();
      v61 = UsoEntityBuilder_common_PaymentAccount.__allocating_init()();
      v122 = v61;
      v62 = App.toUsoEntityBuilder(locale:)(v103);
      dispatch thunk of UsoEntityBuilderGlobalArgs.setUsoAssociatedApp(value:)();

      if (v102)
      {
        type metadata accessor for UsoTaskBuilder_request_common_PaymentAccount();
        v59 = UsoTaskBuilder_request_common_PaymentAccount.__allocating_init()();
        v115 = v59;
        dispatch thunk of Uso_VerbTemplateBuilder_ReferenceSelect.setReference(value:)();

        v123 = v59;

        v60 = v59;
      }

      else
      {
        type metadata accessor for UsoTaskBuilder_summarise_common_PaymentAccount();
        v58 = UsoTaskBuilder_summarise_common_PaymentAccount.__allocating_init()();
        v121 = v58;
        dispatch thunk of Uso_VerbTemplateBuilder_Reference.setReference(value:)();

        v123 = v58;

        v60 = v58;
      }

      v57 = v60;

      v71 = v57;
    }
  }

  v15 = v83;
  v39 = v71;
  static Siri_Nlu_External_UserWantedToProceed.from(_:)(v71, v109);

  static Siri_Nlu_External_SystemOffered.from(_:)(v109, v99);
  (*(v94 + 16))(v97, v99, v93);
  Siri_Nlu_External_SystemDialogAct.init(systemOffered:)(v97, v92);
  v16 = Logger.payments.unsafeMutableAddressor();
  (*(v80 + 16))(v15, v16, v79);
  v42 = v87;
  v40 = *(v86 + 16);
  v41 = v86 + 16;
  v40(v90, v92, v84);
  v43 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v46 = 7;
  v47 = swift_allocObject();
  (*(v86 + 32))(v47 + v43, v90, v84);
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.debug.getter();
  v44 = 17;
  v49 = swift_allocObject();
  *(v49 + 16) = 32;
  v50 = swift_allocObject();
  *(v50 + 16) = 8;
  v45 = 32;
  v17 = swift_allocObject();
  v18 = v47;
  v48 = v17;
  *(v17 + 16) = v73;
  *(v17 + 24) = v18;
  v19 = swift_allocObject();
  v20 = v48;
  v52 = v19;
  *(v19 + 16) = v74;
  *(v19 + 24) = v20;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v51 = _allocateUninitializedArray<A>(_:)();
  v53 = v21;

  v22 = v49;
  v23 = v53;
  *v53 = v75;
  v23[1] = v22;

  v24 = v50;
  v25 = v53;
  v53[2] = v76;
  v25[3] = v24;

  v26 = v52;
  v27 = v53;
  v53[4] = v77;
  v27[5] = v26;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v55, v56))
  {
    v28 = v78;
    v32 = static UnsafeMutablePointer.allocate(capacity:)();
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v33 = createStorage<A>(capacity:type:)(0);
    v34 = createStorage<A>(capacity:type:)(1);
    v35 = &v120;
    v120 = v32;
    v36 = &v119;
    v119 = v33;
    v37 = &v118;
    v118 = v34;
    serialize(_:at:)(2, &v120);
    serialize(_:at:)(1, v35);
    v116 = v75;
    v117 = v49;
    closure #1 in osLogInternal(_:log:type:)(&v116, v35, v36, v37);
    v38 = v28;
    if (v28)
    {

      __break(1u);
    }

    else
    {
      v116 = v76;
      v117 = v50;
      closure #1 in osLogInternal(_:log:type:)(&v116, &v120, &v119, &v118);
      v30[1] = 0;
      v116 = v77;
      v117 = v52;
      closure #1 in osLogInternal(_:log:type:)(&v116, &v120, &v119, &v118);
      _os_log_impl(&dword_2686B1000, v55, v56, "#PaymentsContextProvider returning SystemOffered for confirm intent %s", v32, 0xCu);
      destroyStorage<A>(_:count:)(v33, 0, v31);
      destroyStorage<A>(_:count:)(v34, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v32, MEMORY[0x277D84B78]);
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v55);
  (*(v80 + 8))(v83, v79);
  v40(v72, v92, v84);
  (*(v86 + 8))(v92, v84);
  (*(v94 + 8))(v99, v93);
  (*(v106 + 8))(v109, v105);
}

uint64_t closure #1 in static PaymentsContextProvider.appDisambiguationContextUpdate(apps:locale:intentType:isRequestAccount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v29 = a6;
  v18 = a1;
  v22 = a2;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v44 = 0;
  v43 = 0;
  v42 = 0;
  v41 = 0;
  v39 = 0;
  v40 = 0;
  v38 = 0;
  v16 = 0;
  v33 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v30 = *(v33 - 8);
  v31 = v33 - 8;
  v15 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v32 = &v14 - v15;
  v44 = &v14 - v15;
  v17 = (*(*(type metadata accessor for Siri_Nlu_External_UsoGraph() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16);
  v26 = &v14 - v17;
  v37 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v34 = *(v37 - 8);
  v35 = v37 - 8;
  v19 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v18);
  v27 = &v14 - v19;
  v20 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v6);
  v36 = &v14 - v20;
  v43 = &v14 - v20;
  v21 = *v8;
  v42 = v21;
  v41 = v9;
  v39 = v10;
  v40 = v11;
  v28 = 1;
  v38 = v12 & 1;
  Siri_Nlu_External_UserStatedTask.init()();
  static PaymentsContextProvider.createUsoGraph(for:locale:intentType:isRequestAccount:)(v22, v25 & 1, v26);
  Siri_Nlu_External_UserStatedTask.task.setter();
  Siri_Nlu_External_UserDialogAct.init()();
  (*(v34 + 16))(v27, v36, v37);
  Siri_Nlu_External_UserDialogAct.userStatedTask.setter();
  (*(v30 + 16))(v29, v32, v33);
  (*(v30 + 56))(v29, 0, v28, v33);
  (*(v30 + 8))(v32, v33);
  return (*(v34 + 8))(v36, v37);
}

uint64_t static PaymentsContextProvider.createUsoGraph(for:locale:intentType:isRequestAccount:)@<X0>(uint64_t a1@<X1>, char a2@<W4>, uint64_t a3@<X8>)
{
  type metadata accessor for INRequestPaymentIntent();
  if (swift_dynamicCastMetatype())
  {
    type metadata accessor for UsoTaskBuilder_requestMoney_common_Payment();
    UsoTaskBuilder_requestMoney_common_Payment.__allocating_init()();
    type metadata accessor for UsoEntityBuilder_common_Payment();
    UsoEntityBuilder_common_Payment.__allocating_init()();
    App.toUsoEntityBuilder(locale:)(a1);
    dispatch thunk of UsoEntityBuilderGlobalArgs.setUsoAssociatedApp(value:)();

    dispatch thunk of Uso_VerbTemplateBuilder_Target.setTarget(value:)();
    UsoTaskBuilder.asUsoGraph()(a3);
  }

  else
  {
    type metadata accessor for INSendPaymentIntent();
    if (swift_dynamicCastMetatype())
    {
      type metadata accessor for UsoTaskBuilder_pay_common_Payment();
      UsoTaskBuilder_pay_common_Payment.__allocating_init()();
      type metadata accessor for UsoEntityBuilder_common_Payment();
      UsoEntityBuilder_common_Payment.__allocating_init()();
      App.toUsoEntityBuilder(locale:)(a1);
      dispatch thunk of UsoEntityBuilderGlobalArgs.setUsoAssociatedApp(value:)();

      dispatch thunk of Uso_VerbTemplateBuilder_Target.setTarget(value:)();
      UsoTaskBuilder.asUsoGraph()(a3);
    }

    else
    {
      type metadata accessor for UsoEntityBuilder_common_PaymentAccount();
      UsoEntityBuilder_common_PaymentAccount.__allocating_init()();
      App.toUsoEntityBuilder(locale:)(a1);
      dispatch thunk of UsoEntityBuilderGlobalArgs.setUsoAssociatedApp(value:)();

      if (a2)
      {
        type metadata accessor for UsoTaskBuilder_request_common_PaymentAccount();
        UsoTaskBuilder_request_common_PaymentAccount.__allocating_init()();
        dispatch thunk of Uso_VerbTemplateBuilder_ReferenceSelect.setReference(value:)();
      }

      else
      {
        type metadata accessor for UsoTaskBuilder_summarise_common_PaymentAccount();
        UsoTaskBuilder_summarise_common_PaymentAccount.__allocating_init()();
        dispatch thunk of Uso_VerbTemplateBuilder_Reference.setReference(value:)();
      }

      UsoTaskBuilder.asUsoGraph()(a3);
    }
  }
}

uint64_t static PaymentsContextProvider.makeSDAForAppDisambiguation(choices:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v31 = a2;
  v39 = a1;
  v60 = partial apply for implicit closure #1 in static PaymentsContextProvider.makeSDAForConfirm(isSend:);
  v64 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v66 = partial apply for closure #1 in OSLogArguments.append(_:);
  v68 = partial apply for closure #1 in OSLogArguments.append(_:);
  v71 = partial apply for closure #1 in OSLogArguments.append(_:);
  v84 = 0;
  v83 = 0;
  v82 = 0;
  v32 = 0;
  v34 = 0;
  v48 = type metadata accessor for Logger();
  v46 = *(v48 - 8);
  v47 = v48 - 8;
  v33 = (*(v46 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v40 = v22 - v33;
  v58 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v54 = *(v58 - 8);
  v55 = v58 - 8;
  v52 = v54;
  v53 = *(v54 + 64);
  v35 = (v53 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v34);
  v57 = v22 - v35;
  v36 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v49 = v22 - v36;
  v84 = v22 - v36;
  v44 = type metadata accessor for Siri_Nlu_External_SystemGaveOptions();
  v41 = *(v44 - 8);
  v42 = v44 - 8;
  v37 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v39);
  v45 = v22 - v37;
  v38 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v4);
  v43 = v22 - v38;
  v83 = v22 - v38;
  v82 = v6;
  Siri_Nlu_External_SystemGaveOptions.init()();

  MEMORY[0x26D61F470](v39);
  v7 = v40;
  (*(v41 + 16))(v45, v43, v44);
  Siri_Nlu_External_SystemDialogAct.init(gaveOptions:)(v45, v49);
  v8 = Logger.payments.unsafeMutableAddressor();
  (*(v46 + 16))(v7, v8, v48);
  v50 = *(v54 + 16);
  v51 = v54 + 16;
  v50(v57, v49, v58);
  v56 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v62 = 7;
  v63 = swift_allocObject();
  (*(v54 + 32))(v63 + v56, v57, v58);
  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.debug.getter();
  v59 = 17;
  v67 = swift_allocObject();
  *(v67 + 16) = 32;
  v69 = swift_allocObject();
  *(v69 + 16) = 8;
  v61 = 32;
  v9 = swift_allocObject();
  v10 = v63;
  v65 = v9;
  *(v9 + 16) = v60;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v65;
  v72 = v11;
  *(v11 + 16) = v64;
  *(v11 + 24) = v12;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v70 = _allocateUninitializedArray<A>(_:)();
  v73 = v13;

  v14 = v67;
  v15 = v73;
  *v73 = v66;
  v15[1] = v14;

  v16 = v69;
  v17 = v73;
  v73[2] = v68;
  v17[3] = v16;

  v18 = v72;
  v19 = v73;
  v73[4] = v71;
  v19[5] = v18;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v75, v76))
  {
    v20 = v32;
    v24 = static UnsafeMutablePointer.allocate(capacity:)();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v25 = createStorage<A>(capacity:type:)(0);
    v26 = createStorage<A>(capacity:type:)(1);
    v27 = &v81;
    v81 = v24;
    v28 = &v80;
    v80 = v25;
    v29 = &v79;
    v79 = v26;
    serialize(_:at:)(2, &v81);
    serialize(_:at:)(1, v27);
    v77 = v66;
    v78 = v67;
    closure #1 in osLogInternal(_:log:type:)(&v77, v27, v28, v29);
    v30 = v20;
    if (v20)
    {

      __break(1u);
    }

    else
    {
      v77 = v68;
      v78 = v69;
      closure #1 in osLogInternal(_:log:type:)(&v77, &v81, &v80, &v79);
      v22[0] = 0;
      v77 = v71;
      v78 = v72;
      closure #1 in osLogInternal(_:log:type:)(&v77, &v81, &v80, &v79);
      _os_log_impl(&dword_2686B1000, v75, v76, "#PaymentsContextProvider returning SystemGaveOptions for confirm intent %s", v24, 0xCu);
      destroyStorage<A>(_:count:)(v25, 0, v23);
      destroyStorage<A>(_:count:)(v26, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v24, MEMORY[0x277D84B78]);
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v75);
  (*(v46 + 8))(v40, v48);
  v50(v31, v49, v58);
  (*(v54 + 8))(v49, v58);
  return (*(v41 + 8))(v43, v44);
}

unint64_t type metadata accessor for SAAceConfirmationContext()
{
  v2 = lazy cache variable for type metadata for SAAceConfirmationContext;
  if (!lazy cache variable for type metadata for SAAceConfirmationContext)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SAAceConfirmationContext);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t implicit closure #1 in static PaymentsContextProvider.makeSDAForAppConfirmation(_:locale:intentType:isRequestAccount:)(uint64_t a1)
{
  v2[1] = a1;
  v5 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v4 = *(v5 - 8);
  v3 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v6 = v2 - v3;
  (*(v4 + 16))();
  return String.init<A>(describing:)();
}

uint64_t sub_2687EF39C()
{
  v3 = *(type metadata accessor for Siri_Nlu_External_SystemDialogAct() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #1 in static PaymentsContextProvider.makeSDAForConfirm(isSend:)()
{
  v1 = *(type metadata accessor for Siri_Nlu_External_SystemDialogAct() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #1 in static PaymentsContextProvider.makeSDAForAppConfirmation(_:locale:intentType:isRequestAccount:)(v2);
}

uint64_t static PaymentsContextProvider.makeSDAForConfirmSearchForAccount(isRequest:)@<X0>(unsigned int a1@<W0>, char *a2@<X8>)
{
  v50 = a2;
  v79 = a1;
  v51 = partial apply for implicit closure #1 in static PaymentsContextProvider.makeSDAForConfirm(isSend:);
  v52 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v53 = partial apply for closure #1 in OSLogArguments.append(_:);
  v54 = partial apply for closure #1 in OSLogArguments.append(_:);
  v55 = partial apply for closure #1 in OSLogArguments.append(_:);
  v93 = 0;
  v92 = 0;
  v91 = 0;
  v90 = 0;
  v56 = 0;
  v71 = 0;
  v57 = type metadata accessor for Logger();
  v58 = *(v57 - 8);
  v59 = v57 - 8;
  v60 = (*(v58 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v61 = v22 - v60;
  v62 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v64 = *(v62 - 8);
  v63 = v62 - 8;
  v65 = v64;
  v66 = *(v64 + 64);
  v67 = (v66 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v71);
  v68 = v22 - v67;
  v69 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v70 = v22 - v69;
  v93 = v22 - v69;
  v72 = type metadata accessor for Siri_Nlu_External_SystemOffered();
  v73 = *(v72 - 8);
  v74 = v72 - 8;
  v75 = (*(v73 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v71);
  v76 = v22 - v75;
  v77 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v78 = v22 - v77;
  v92 = v22 - v77;
  v80 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed();
  v81 = *(v80 - 8);
  v82 = v80 - 8;
  v83 = (*(v81 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v79);
  v84 = v22 - v83;
  v91 = v22 - v83;
  v90 = v6 & 1;
  if (v6)
  {
    type metadata accessor for UsoTaskBuilder_request_common_PaymentAccount();
    v49 = UsoTaskBuilder_request_common_PaymentAccount.__allocating_init()();
  }

  else
  {
    type metadata accessor for UsoTaskBuilder_summarise_common_PaymentAccount();
    v49 = UsoTaskBuilder_summarise_common_PaymentAccount.__allocating_init()();
  }

  v7 = v61;
  v31 = v49;
  static Siri_Nlu_External_UserWantedToProceed.from(_:)(v49, v84);

  static Siri_Nlu_External_SystemOffered.from(_:)(v84, v78);
  (*(v73 + 16))(v76, v78, v72);
  Siri_Nlu_External_SystemDialogAct.init(systemOffered:)(v76, v70);
  v8 = Logger.payments.unsafeMutableAddressor();
  (*(v58 + 16))(v7, v8, v57);
  v34 = v65;
  v32 = *(v64 + 16);
  v33 = v64 + 16;
  v32(v68, v70, v62);
  v35 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v38 = 7;
  v39 = swift_allocObject();
  (*(v64 + 32))(v39 + v35, v68, v62);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.debug.getter();
  v36 = 17;
  v41 = swift_allocObject();
  *(v41 + 16) = 32;
  v42 = swift_allocObject();
  *(v42 + 16) = 8;
  v37 = 32;
  v9 = swift_allocObject();
  v10 = v39;
  v40 = v9;
  *(v9 + 16) = v51;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v40;
  v44 = v11;
  *(v11 + 16) = v52;
  *(v11 + 24) = v12;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v43 = _allocateUninitializedArray<A>(_:)();
  v45 = v13;

  v14 = v41;
  v15 = v45;
  *v45 = v53;
  v15[1] = v14;

  v16 = v42;
  v17 = v45;
  v45[2] = v54;
  v17[3] = v16;

  v18 = v44;
  v19 = v45;
  v45[4] = v55;
  v19[5] = v18;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v47, v48))
  {
    v20 = v56;
    v24 = static UnsafeMutablePointer.allocate(capacity:)();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v25 = createStorage<A>(capacity:type:)(0);
    v26 = createStorage<A>(capacity:type:)(1);
    v27 = &v89;
    v89 = v24;
    v28 = &v88;
    v88 = v25;
    v29 = &v87;
    v87 = v26;
    serialize(_:at:)(2, &v89);
    serialize(_:at:)(1, v27);
    v85 = v53;
    v86 = v41;
    closure #1 in osLogInternal(_:log:type:)(&v85, v27, v28, v29);
    v30 = v20;
    if (v20)
    {

      __break(1u);
    }

    else
    {
      v85 = v54;
      v86 = v42;
      closure #1 in osLogInternal(_:log:type:)(&v85, &v89, &v88, &v87);
      v22[1] = 0;
      v85 = v55;
      v86 = v44;
      closure #1 in osLogInternal(_:log:type:)(&v85, &v89, &v88, &v87);
      _os_log_impl(&dword_2686B1000, v47, v48, "#PaymentsContextProvider returning SystemOffered for confirm Search for Accounts intent %s", v24, 0xCu);
      destroyStorage<A>(_:count:)(v25, 0, v23);
      destroyStorage<A>(_:count:)(v26, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v24, MEMORY[0x277D84B78]);
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v47);
  (*(v58 + 8))(v61, v57);
  v32(v50, v70, v62);
  (*(v64 + 8))(v70, v62);
  (*(v73 + 8))(v78, v72);
  return (*(v81 + 8))(v84, v80);
}

uint64_t closure #1 in static PaymentsContextProvider.makeSDAForDisambiguatePerson(persons:isSend:)@<X0>(id *a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  v19 = *a1;
  v18 = a2 & 1;
  type metadata accessor for UsoEntityBuilder_common_Payment();
  v17 = UsoEntityBuilder_common_Payment.__allocating_init()();
  type metadata accessor for UsoEntityBuilder_common_PaymentAccount();
  v16 = UsoEntityBuilder_common_PaymentAccount.__allocating_init()();
  type metadata accessor for UsoEntityBuilder_common_Person();
  v15 = UsoEntityBuilder_common_Person.__allocating_init()();
  INPerson.uniqueContactIdentifier.getter();
  dispatch thunk of UsoEntityBuilder_common_Person.setName(value:)();

  v14 = [v19 personHandle];
  if (v14)
  {
    v7 = v14;
    MEMORY[0x277D82BE0](v14);
    outlined destroy of SFRichText?(&v14);
    v8 = [v7 value];
    if (v8)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v3;
      MEMORY[0x277D82BD8](v8);
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    MEMORY[0x277D82BD8](v7);
    v9 = v6;
  }

  else
  {
    outlined destroy of SFRichText?(&v14);
    v9 = 0;
  }

  if (v9)
  {
    type metadata accessor for UsoEntityBuilder_common_ContactAddress();
    UsoEntityBuilder_common_ContactAddress.__allocating_init()();
    dispatch thunk of UsoEntityBuilder_common_ContactAddress.setValue(value:)();

    dispatch thunk of UsoEntityBuilder_common_Person.setSpecifyingContactAddress(value:)();
  }

  dispatch thunk of UsoEntityBuilder_common_PaymentAccount.setHolder(value:)();

  if (a2)
  {
    dispatch thunk of UsoEntityBuilder_common_Payment.setPayee(value:)();

    type metadata accessor for UsoTaskBuilder_pay_common_Payment();
    v12 = UsoTaskBuilder_pay_common_Payment.__allocating_init()();
    dispatch thunk of Uso_VerbTemplateBuilder_Target.setTarget(value:)();

    *a3 = v12;
  }

  else
  {
    dispatch thunk of UsoEntityBuilder_common_Payment.setPayer(value:)();

    type metadata accessor for UsoTaskBuilder_requestMoney_common_Payment();
    v13 = UsoTaskBuilder_requestMoney_common_Payment.__allocating_init()();
    dispatch thunk of Uso_VerbTemplateBuilder_Target.setTarget(value:)();

    *a3 = v13;
  }
}

uint64_t *static PaymentsContextProvider.makeDisambiguationAct(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v45 = a1;
  v57 = 0;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v52 = 0;
  v46 = v51;
  v51[0] = 0;
  v51[1] = 0;
  v48 = 0;
  v36 = 0;
  v15 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v16 = *(v15 - 8);
  v17 = v15 - 8;
  v18 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v19 = &v9 - v18;
  v57 = &v9 - v18;
  v20 = type metadata accessor for Siri_Nlu_External_SystemGaveOptions();
  v21 = *(v20 - 8);
  v22 = v20 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v36);
  v24 = &v9 - v23;
  v25 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v26 = &v9 - v25;
  v56 = &v9 - v25;
  v35 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v27 = *(v35 - 8);
  v28 = v35 - 8;
  v29 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v36);
  v30 = &v9 - v29;
  v31 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v32 = &v9 - v31;
  v55 = &v9 - v31;
  v33 = (*(*(type metadata accessor for Siri_Nlu_External_UsoGraph() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v36);
  v34 = &v9 - v33;
  v37 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v38 = *(v37 - 8);
  v39 = v37 - 8;
  v41 = *(v38 + 64);
  v40 = (v41 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v36);
  v42 = &v9 - v40;
  v43 = (v41 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v44 = &v9 - v43;
  v54 = &v9 - v43;
  v53 = v7;
  v52 = _allocateUninitializedArray<A>(_:)();

  v50 = v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology14UsoTaskBuilderCGMd, &_sSay12SiriOntology14UsoTaskBuilderCGMR);
  lazy protocol witness table accessor for type [UsoTaskBuilder] and conformance [A]();
  Collection<>.makeIterator()();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySay12SiriOntology14UsoTaskBuilderCGGMd, _ss16IndexingIteratorVySay12SiriOntology14UsoTaskBuilderCGGMR);
    IndexingIterator.next()();
    v13 = v49;
    if (!v49)
    {
      break;
    }

    v12 = v13;
    v11 = v13;
    v48 = v13;
    Siri_Nlu_External_UserStatedTask.init()();
    UsoTaskBuilder.asUsoGraph()(v34);
    Siri_Nlu_External_UserStatedTask.task.setter();
    Siri_Nlu_External_UserDialogAct.init()();
    (*(v38 + 16))(v42, v44, v37);
    Siri_Nlu_External_UserDialogAct.userStatedTask.setter();
    (*(v27 + 16))(v30, v32, v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriNLUTypes0A27_Nlu_External_UserDialogActVGMd, &_sSay12SiriNLUTypes0A27_Nlu_External_UserDialogActVGMR);
    Array.append(_:)();
    (*(v27 + 8))(v32, v35);
    (*(v38 + 8))(v44, v37);
  }

  outlined destroy of [SFCardSection](v51);
  Siri_Nlu_External_SystemGaveOptions.init()();
  v10 = &v52;
  v9 = v52;

  MEMORY[0x26D61F470](v9);
  Siri_Nlu_External_SystemDialogAct.init()();
  (*(v21 + 16))(v24, v26, v20);
  Siri_Nlu_External_SystemDialogAct.gaveOptions.setter();
  (*(v16 + 32))(v14, v19, v15);
  (*(v21 + 8))(v26, v20);
  return outlined destroy of [SFCardSection](v10);
}

uint64_t sub_2687F0AB4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687F0AF4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687F0B34()
{
  v3 = *(type metadata accessor for Siri_Nlu_External_SystemDialogAct() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_2687F0C58()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687F0C98()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687F0CD8()
{
  v3 = *(type metadata accessor for Siri_Nlu_External_SystemDialogAct() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_2687F0DFC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687F0E3C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687F0E7C()
{
  v3 = *(type metadata accessor for Siri_Nlu_External_SystemDialogAct() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_2687F0FA0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687F0FE0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687F1020()
{
  v3 = *(type metadata accessor for Siri_Nlu_External_SystemDialogAct() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_2687F1144()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687F1184()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687F124C()
{
  v3 = *(type metadata accessor for Siri_Nlu_External_SystemDialogAct() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_2687F1370()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687F13B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687F13F0()
{
  v3 = *(type metadata accessor for Siri_Nlu_External_SystemDialogAct() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_2687F1514()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687F1554()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687F161C()
{
  v3 = *(type metadata accessor for Siri_Nlu_External_SystemDialogAct() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_2687F1740()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687F1780()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687F17C0()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2687F1860()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687F18A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687F190C()
{
  v3 = *(type metadata accessor for Siri_Nlu_External_SystemDialogAct() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_2687F1A30()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687F1A70()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687F1AB0()
{
  v3 = *(type metadata accessor for Siri_Nlu_External_SystemDialogAct() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_2687F1BD4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687F1C14()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687F1C54()
{
  v3 = *(type metadata accessor for Siri_Nlu_External_SystemDialogAct() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_2687F1D78()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2687F1DB8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type [UsoTaskBuilder] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [UsoTaskBuilder] and conformance [A];
  if (!lazy protocol witness table cache variable for type [UsoTaskBuilder] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay12SiriOntology14UsoTaskBuilderCGMd, &_sSay12SiriOntology14UsoTaskBuilderCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [UsoTaskBuilder] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t PaymentsLabelCATs.accountType(accountTypeLabel:completion:)(const void *a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v15[4] = a2;
  v15[5] = a3;
  v30 = 0;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v16 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v23 = v15 - v16;
  v30 = MEMORY[0x28223BE20](v21);
  v28 = v4;
  v29 = v5;
  v27 = v3;
  v22 = 1;
  v17 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsLabel#AccountType", 0x19uLL, 1);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v19 = _allocateUninitializedArray<A>(_:)();
  v20 = v6;
  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("accountTypeLabel", 0x10uLL, v22 & 1);
  v8 = v21;
  v9 = v23;
  *v20 = v7;
  outlined init with copy of SpeakableString?(v8, v9);
  v24 = type metadata accessor for SpeakableString();
  v25 = *(v24 - 8);
  v26 = v24 - 8;
  if ((*(v25 + 48))(v23, v22) == 1)
  {
    outlined destroy of SpeakableString?(v23);
    v14 = v20;
    v20[1]._countAndFlagsBits = 0;
    v14[1]._object = 0;
    v14[2]._countAndFlagsBits = 0;
    v14[2]._object = 0;
  }

  else
  {
    v10 = v20;
    v20[2]._object = v24;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v10[1]._countAndFlagsBits);
    (*(v25 + 32))(boxed_opaque_existential_1, v23, v24);
  }

  v12 = v19;
  _finalizeUninitializedArray<A>(_:)();
  v15[1] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v15[2] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t PaymentsLabelCATs.accountType(accountTypeLabel:)(uint64_t a1, uint64_t a2)
{
  v3[7] = v2;
  v3[6] = a2;
  v3[5] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[3] = a2;
  v3[4] = v2;
  v5 = v3[2];

  return MEMORY[0x2822009F8](PaymentsLabelCATs.accountType(accountTypeLabel:), 0);
}

uint64_t PaymentsLabelCATs.accountType(accountTypeLabel:)()
{
  v15 = v0[8];
  v14 = v0[6];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsLabel#AccountType", 0x19uLL, 1);
  v0[9] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  p_countAndFlagsBits = &v2->_countAndFlagsBits;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("accountTypeLabel", 0x10uLL, 1);
  outlined init with copy of SpeakableString?(v14, v15);
  v16 = type metadata accessor for SpeakableString();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v15, 1) == 1)
  {
    outlined destroy of SpeakableString?(v12[8]);
    p_countAndFlagsBits[2] = 0;
    p_countAndFlagsBits[3] = 0;
    p_countAndFlagsBits[4] = 0;
    p_countAndFlagsBits[5] = 0;
  }

  else
  {
    v11 = v12[8];
    p_countAndFlagsBits[5] = v16;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(p_countAndFlagsBits + 2);
    (*(v17 + 32))(boxed_opaque_existential_1, v11, v16);
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v9 = KeyValuePairs.init(dictionaryLiteral:)();
  v12[10] = v9;
  v10 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v4 = *(MEMORY[0x277D55BF0] + 4);
  v5 = swift_task_alloc();
  v12[11] = v5;
  *v5 = v12[2];
  v5[1] = RequestPaymentCATs.disambiguateSlotValue(slot:);
  v6 = v12[7];
  v7 = v12[5];

  return v10(v7, v1._countAndFlagsBits, v1._object, v9);
}

uint64_t PaymentsLabelCATs.accountType(accountTypeLabel:)@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v12[2] = a2;
  v18 = a1;
  v25 = 0;
  v24 = 0;
  v13 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = v12 - v13;
  v25 = MEMORY[0x28223BE20](v18);
  v24 = v2;
  v19 = 1;
  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsLabel#AccountType", 0x19uLL, 1);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v16 = _allocateUninitializedArray<A>(_:)();
  v17 = v3;
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("accountTypeLabel", 0x10uLL, v19 & 1);
  v5 = v18;
  v6 = v20;
  *v17 = v4;
  outlined init with copy of SpeakableString?(v5, v6);
  v21 = type metadata accessor for SpeakableString();
  v22 = *(v21 - 8);
  v23 = v21 - 8;
  if ((*(v22 + 48))(v20, v19) == 1)
  {
    outlined destroy of SpeakableString?(v20);
    v11 = v17;
    v17[1]._countAndFlagsBits = 0;
    v11[1]._object = 0;
    v11[2]._countAndFlagsBits = 0;
    v11[2]._object = 0;
  }

  else
  {
    v7 = v17;
    v17[2]._object = v21;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v7[1]._countAndFlagsBits);
    (*(v22 + 32))(boxed_opaque_existential_1, v20, v21);
  }

  v9 = v16;
  _finalizeUninitializedArray<A>(_:)();
  v12[0] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v12[1] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t PaymentsLabelCATs.amountDisambiguation(amountType:paymentAmount:completion:)(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v40 = a1;
  v30 = a2;
  v31 = a3;
  v32 = a4;
  v45 = 0;
  v44 = 0;
  v42 = 0;
  v43 = 0;
  v41 = 0;
  v33 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v34 = v22 - v33;
  v45 = MEMORY[0x28223BE20](v40);
  v44 = v5;
  v42 = v6;
  v43 = v7;
  v41 = v4;
  v37 = 1;
  v35 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsLabel#AmountDisambiguation", 0x22uLL, 1);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v38 = _allocateUninitializedArray<A>(_:)();
  v39 = v8;
  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("amountType", 0xAuLL, v37 & 1);
  *v39 = v9;

  if (v40)
  {
    v29 = v40;
    v28 = v40;
    v10 = type metadata accessor for DialogCurrency();
    v11 = v39;
    v12 = v28;
    v39[2]._object = v10;
    v11[1]._countAndFlagsBits = v12;
  }

  else
  {
    v21 = v39;
    v39[1]._countAndFlagsBits = 0;
    v21[1]._object = 0;
    v21[2]._countAndFlagsBits = 0;
    v21[2]._object = 0;
  }

  v23 = v39 + 4;
  v24 = 1;
  v13 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("paymentAmount", 0xDuLL, 1);
  v14 = v30;
  v15 = v34;
  v39[3] = v13;
  outlined init with copy of SpeakableString?(v14, v15);
  v25 = type metadata accessor for SpeakableString();
  v26 = *(v25 - 8);
  v27 = v25 - 8;
  if ((*(v26 + 48))(v34, v24) == 1)
  {
    outlined destroy of SpeakableString?(v34);
    v20 = v39;
    v39[4]._countAndFlagsBits = 0;
    v20[4]._object = 0;
    v20[5]._countAndFlagsBits = 0;
    v20[5]._object = 0;
  }

  else
  {
    p_countAndFlagsBits = &v23->_countAndFlagsBits;
    v39[5]._object = v25;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(p_countAndFlagsBits);
    (*(v26 + 32))(boxed_opaque_existential_1, v34, v25);
  }

  v18 = v38;
  _finalizeUninitializedArray<A>(_:)();
  v22[1] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v22[2] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t PaymentsLabelCATs.amountDisambiguation(amountType:paymentAmount:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = v3;
  v4[8] = a3;
  v4[7] = a2;
  v4[6] = a1;
  v4[2] = v4;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = v3;
  v6 = v4[2];

  return MEMORY[0x2822009F8](PaymentsLabelCATs.amountDisambiguation(amountType:paymentAmount:), 0);
}

uint64_t PaymentsLabelCATs.amountDisambiguation(amountType:paymentAmount:)()
{
  v19 = v0[7];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsLabel#AmountDisambiguation", 0x22uLL, 1);
  v0[11] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v18 = v2;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("amountType", 0xAuLL, 1);

  if (v19)
  {
    v16 = v17[7];
    v18[2]._object = type metadata accessor for DialogCurrency();
    v18[1]._countAndFlagsBits = v16;
  }

  else
  {
    v18[1]._countAndFlagsBits = 0;
    v18[1]._object = 0;
    v18[2]._countAndFlagsBits = 0;
    v18[2]._object = 0;
  }

  v13 = v17[10];
  v12 = v17[8];
  v18[3] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("paymentAmount", 0xDuLL, 1);
  outlined init with copy of SpeakableString?(v12, v13);
  v14 = type metadata accessor for SpeakableString();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1) == 1)
  {
    outlined destroy of SpeakableString?(v17[10]);
    v18[4]._countAndFlagsBits = 0;
    v18[4]._object = 0;
    v18[5]._countAndFlagsBits = 0;
    v18[5]._object = 0;
  }

  else
  {
    v11 = v17[10];
    v18[5]._object = v14;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18[4]._countAndFlagsBits);
    (*(v15 + 32))(boxed_opaque_existential_1, v11, v14);
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v9 = KeyValuePairs.init(dictionaryLiteral:)();
  v17[12] = v9;
  v10 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v4 = *(MEMORY[0x277D55BF0] + 4);
  v5 = swift_task_alloc();
  v17[13] = v5;
  *v5 = v17[2];
  v5[1] = RequestPaymentCATs.confirmSlotValue(slot:paymentsConcept:);
  v6 = v17[9];
  v7 = v17[6];

  return v10(v7, v1._countAndFlagsBits, v1._object, v9);
}

uint64_t PaymentsLabelCATs.amountDisambiguation(amountType:paymentAmount:)@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v36 = a1;
  v28 = a2;
  v39 = 0;
  v38 = 0;
  v37 = 0;
  v29 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v30 = v19 - v29;
  v39 = MEMORY[0x28223BE20](v36);
  v38 = v4;
  v37 = v3;
  v33 = 1;
  v31 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsLabel#AmountDisambiguation", 0x22uLL, 1);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v34 = _allocateUninitializedArray<A>(_:)();
  v35 = v5;
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("amountType", 0xAuLL, v33 & 1);
  *v35 = v6;

  if (v36)
  {
    v26 = v36;
    v25 = v36;
    v7 = type metadata accessor for DialogCurrency();
    v8 = v35;
    v9 = v25;
    v35[2]._object = v7;
    v8[1]._countAndFlagsBits = v9;
  }

  else
  {
    v18 = v35;
    v35[1]._countAndFlagsBits = 0;
    v18[1]._object = 0;
    v18[2]._countAndFlagsBits = 0;
    v18[2]._object = 0;
  }

  v20 = v35 + 4;
  v21 = 1;
  v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("paymentAmount", 0xDuLL, 1);
  v11 = v28;
  v12 = v30;
  v35[3] = v10;
  outlined init with copy of SpeakableString?(v11, v12);
  v22 = type metadata accessor for SpeakableString();
  v23 = *(v22 - 8);
  v24 = v22 - 8;
  if ((*(v23 + 48))(v30, v21) == 1)
  {
    outlined destroy of SpeakableString?(v30);
    v17 = v35;
    v35[4]._countAndFlagsBits = 0;
    v17[4]._object = 0;
    v17[5]._countAndFlagsBits = 0;
    v17[5]._object = 0;
  }

  else
  {
    p_countAndFlagsBits = &v20->_countAndFlagsBits;
    v35[5]._object = v22;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(p_countAndFlagsBits);
    (*(v23 + 32))(boxed_opaque_existential_1, v30, v22);
  }

  v15 = v34;
  _finalizeUninitializedArray<A>(_:)();
  v19[0] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v19[1] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t PaymentsLabelCATs.amountType(amountType:completion:)(const void *a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v15[4] = a2;
  v15[5] = a3;
  v30 = 0;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v16 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v23 = v15 - v16;
  v30 = MEMORY[0x28223BE20](v21);
  v28 = v4;
  v29 = v5;
  v27 = v3;
  v22 = 1;
  v17 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsLabel#AmountType", 0x18uLL, 1);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v19 = _allocateUninitializedArray<A>(_:)();
  v20 = v6;
  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("amountType", 0xAuLL, v22 & 1);
  v8 = v21;
  v9 = v23;
  *v20 = v7;
  outlined init with copy of SpeakableString?(v8, v9);
  v24 = type metadata accessor for SpeakableString();
  v25 = *(v24 - 8);
  v26 = v24 - 8;
  if ((*(v25 + 48))(v23, v22) == 1)
  {
    outlined destroy of SpeakableString?(v23);
    v14 = v20;
    v20[1]._countAndFlagsBits = 0;
    v14[1]._object = 0;
    v14[2]._countAndFlagsBits = 0;
    v14[2]._object = 0;
  }

  else
  {
    v10 = v20;
    v20[2]._object = v24;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v10[1]._countAndFlagsBits);
    (*(v25 + 32))(boxed_opaque_existential_1, v23, v24);
  }

  v12 = v19;
  _finalizeUninitializedArray<A>(_:)();
  v15[1] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v15[2] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t PaymentsLabelCATs.amountType(amountType:)(uint64_t a1, uint64_t a2)
{
  v3[7] = v2;
  v3[6] = a2;
  v3[5] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[3] = a2;
  v3[4] = v2;
  v5 = v3[2];

  return MEMORY[0x2822009F8](PaymentsLabelCATs.amountType(amountType:), 0);
}

uint64_t PaymentsLabelCATs.amountType(amountType:)()
{
  v15 = v0[8];
  v14 = v0[6];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsLabel#AmountType", 0x18uLL, 1);
  v0[9] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  p_countAndFlagsBits = &v2->_countAndFlagsBits;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("amountType", 0xAuLL, 1);
  outlined init with copy of SpeakableString?(v14, v15);
  v16 = type metadata accessor for SpeakableString();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v15, 1) == 1)
  {
    outlined destroy of SpeakableString?(v12[8]);
    p_countAndFlagsBits[2] = 0;
    p_countAndFlagsBits[3] = 0;
    p_countAndFlagsBits[4] = 0;
    p_countAndFlagsBits[5] = 0;
  }

  else
  {
    v11 = v12[8];
    p_countAndFlagsBits[5] = v16;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(p_countAndFlagsBits + 2);
    (*(v17 + 32))(boxed_opaque_existential_1, v11, v16);
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v9 = KeyValuePairs.init(dictionaryLiteral:)();
  v12[10] = v9;
  v10 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v4 = *(MEMORY[0x277D55BF0] + 4);
  v5 = swift_task_alloc();
  v12[11] = v5;
  *v5 = v12[2];
  v5[1] = RequestPaymentCATs.disambiguateSlotValue(slot:);
  v6 = v12[7];
  v7 = v12[5];

  return v10(v7, v1._countAndFlagsBits, v1._object, v9);
}

uint64_t PaymentsLabelCATs.amountType(amountType:)@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v12[2] = a2;
  v18 = a1;
  v25 = 0;
  v24 = 0;
  v13 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = v12 - v13;
  v25 = MEMORY[0x28223BE20](v18);
  v24 = v2;
  v19 = 1;
  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsLabel#AmountType", 0x18uLL, 1);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v16 = _allocateUninitializedArray<A>(_:)();
  v17 = v3;
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("amountType", 0xAuLL, v19 & 1);
  v5 = v18;
  v6 = v20;
  *v17 = v4;
  outlined init with copy of SpeakableString?(v5, v6);
  v21 = type metadata accessor for SpeakableString();
  v22 = *(v21 - 8);
  v23 = v21 - 8;
  if ((*(v22 + 48))(v20, v19) == 1)
  {
    outlined destroy of SpeakableString?(v20);
    v11 = v17;
    v17[1]._countAndFlagsBits = 0;
    v11[1]._object = 0;
    v11[2]._countAndFlagsBits = 0;
    v11[2]._object = 0;
  }

  else
  {
    v7 = v17;
    v17[2]._object = v21;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v7[1]._countAndFlagsBits);
    (*(v22 + 32))(boxed_opaque_existential_1, v20, v21);
  }

  v9 = v16;
  _finalizeUninitializedArray<A>(_:)();
  v12[0] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v12[1] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t PaymentsLabelCATs.financialAccountDisambiguation(accountType:accountNumber:completion:)(const void *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v39 = a1;
  v29 = a2;
  v30 = a3;
  v31 = a4;
  v51 = 0;
  v50 = 0;
  v48 = 0;
  v49 = 0;
  v47 = 0;
  v32 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v39);
  v33 = v26 - v32;
  v34 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v5);
  v41 = v26 - v34;
  v51 = v7;
  v50 = v8;
  v48 = v9;
  v49 = v10;
  v47 = v4;
  v40 = 1;
  v35 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsLabel#FinancialAccountDisambiguation", 0x2CuLL, 1);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v37 = _allocateUninitializedArray<A>(_:)();
  v38 = v11;
  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("accountType", 0xBuLL, v40 & 1);
  v13 = v39;
  v14 = v41;
  *v38 = v12;
  outlined init with copy of SpeakableString?(v13, v14);
  v42 = type metadata accessor for SpeakableString();
  v43 = *(v42 - 8);
  v44 = v42 - 8;
  v45 = *(v43 + 48);
  v46 = v43 + 48;
  if (v45(v41, v40) == 1)
  {
    outlined destroy of SpeakableString?(v41);
    v25 = v38;
    v38[1]._countAndFlagsBits = 0;
    v25[1]._object = 0;
    v25[2]._countAndFlagsBits = 0;
    v25[2]._object = 0;
  }

  else
  {
    v15 = v38;
    v38[2]._object = v42;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15[1]._countAndFlagsBits);
    (*(v43 + 32))(boxed_opaque_existential_1, v41, v42);
  }

  v27 = v38 + 4;
  v28 = 1;
  v17 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("accountNumber", 0xDuLL, 1);
  v18 = v29;
  v19 = v33;
  v38[3] = v17;
  outlined init with copy of SpeakableString?(v18, v19);
  if ((v45)(v33, v28, v42) == 1)
  {
    outlined destroy of SpeakableString?(v33);
    v24 = v38;
    v38[4]._countAndFlagsBits = 0;
    v24[4]._object = 0;
    v24[5]._countAndFlagsBits = 0;
    v24[5]._object = 0;
  }

  else
  {
    p_countAndFlagsBits = &v27->_countAndFlagsBits;
    v38[5]._object = v42;
    v21 = __swift_allocate_boxed_opaque_existential_1(p_countAndFlagsBits);
    (*(v43 + 32))(v21, v33, v42);
  }

  v22 = v37;
  _finalizeUninitializedArray<A>(_:)();
  v26[1] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v26[2] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t PaymentsLabelCATs.financialAccountDisambiguation(accountType:accountNumber:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = v3;
  v4[8] = a3;
  v4[7] = a2;
  v4[6] = a1;
  v4[2] = v4;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = v3;
  v5 = v4[2];

  return MEMORY[0x2822009F8](PaymentsLabelCATs.financialAccountDisambiguation(accountType:accountNumber:), 0);
}

uint64_t PaymentsLabelCATs.financialAccountDisambiguation(accountType:accountNumber:)()
{
  v19 = v0[11];
  v18 = v0[7];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsLabel#FinancialAccountDisambiguation", 0x2CuLL, 1);
  v0[12] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v17 = v2;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("accountType", 0xBuLL, 1);
  outlined init with copy of SpeakableString?(v18, v19);
  v20 = type metadata accessor for SpeakableString();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  if (v22(v19, 1) == 1)
  {
    outlined destroy of SpeakableString?(v16[11]);
    v17[1]._countAndFlagsBits = 0;
    v17[1]._object = 0;
    v17[2]._countAndFlagsBits = 0;
    v17[2]._object = 0;
  }

  else
  {
    v15 = v16[11];
    v17[2]._object = v20;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v17[1]._countAndFlagsBits);
    (*(v21 + 32))(boxed_opaque_existential_1, v15, v20);
  }

  v14 = v16[10];
  v13 = v16[8];
  v17[3] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("accountNumber", 0xDuLL, 1);
  outlined init with copy of SpeakableString?(v13, v14);
  if ((v22)(v14, 1, v20) == 1)
  {
    outlined destroy of SpeakableString?(v16[10]);
    v17[4]._countAndFlagsBits = 0;
    v17[4]._object = 0;
    v17[5]._countAndFlagsBits = 0;
    v17[5]._object = 0;
  }

  else
  {
    v12 = v16[10];
    v17[5]._object = v20;
    v4 = __swift_allocate_boxed_opaque_existential_1(&v17[4]._countAndFlagsBits);
    (*(v21 + 32))(v4, v12, v20);
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v10 = KeyValuePairs.init(dictionaryLiteral:)();
  v16[13] = v10;
  v11 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v5 = *(MEMORY[0x277D55BF0] + 4);
  v6 = swift_task_alloc();
  v16[14] = v6;
  *v6 = v16[2];
  v6[1] = PaymentsLabelCATs.financialAccountDisambiguation(accountType:accountNumber:);
  v7 = v16[9];
  v8 = v16[6];

  return v11(v8, v1._countAndFlagsBits, v1._object, v10);
}

{
  v10 = *v1;
  v2 = *(*v1 + 112);
  v10[2] = *v1;
  v11 = v10 + 2;
  v10[15] = v0;

  if (v0)
  {
    v6 = *v11;

    return MEMORY[0x2822009F8](PaymentsLabelCATs.financialAccountDisambiguation(accountType:accountNumber:), 0);
  }

  else
  {
    v3 = v10[13];
    v7 = v10[12];
    v8 = v10[11];
    v9 = v10[10];

    v4 = *(*v11 + 8);

    return v4();
  }
}

{
  v1 = v0[13];
  v7 = v0[12];
  v8 = v0[11];
  v9 = v0[10];
  v0[2] = v0;

  v2 = v0;
  v3 = *(v0[2] + 8);
  v4 = v0[2];
  v5 = v2[15];

  return v3();
}

uint64_t PaymentsLabelCATs.financialAccountDisambiguation(accountType:accountNumber:)@<X0>(const void *a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  v35 = a1;
  v27 = a2;
  v45 = 0;
  v44 = 0;
  v43 = 0;
  v28 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v35);
  v29 = v23 - v28;
  v30 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v4);
  v37 = v23 - v30;
  v45 = v6;
  v44 = v7;
  v43 = v3;
  v36 = 1;
  v31 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsLabel#FinancialAccountDisambiguation", 0x2CuLL, 1);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v33 = _allocateUninitializedArray<A>(_:)();
  v34 = v8;
  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("accountType", 0xBuLL, v36 & 1);
  v10 = v35;
  v11 = v37;
  *v34 = v9;
  outlined init with copy of SpeakableString?(v10, v11);
  v38 = type metadata accessor for SpeakableString();
  v39 = *(v38 - 8);
  v40 = v38 - 8;
  v41 = *(v39 + 48);
  v42 = v39 + 48;
  if (v41(v37, v36) == 1)
  {
    outlined destroy of SpeakableString?(v37);
    v22 = v34;
    v34[1]._countAndFlagsBits = 0;
    v22[1]._object = 0;
    v22[2]._countAndFlagsBits = 0;
    v22[2]._object = 0;
  }

  else
  {
    v12 = v34;
    v34[2]._object = v38;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12[1]._countAndFlagsBits);
    (*(v39 + 32))(boxed_opaque_existential_1, v37, v38);
  }

  v24 = v34 + 4;
  v25 = 1;
  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("accountNumber", 0xDuLL, 1);
  v15 = v27;
  v16 = v29;
  v34[3] = v14;
  outlined init with copy of SpeakableString?(v15, v16);
  if ((v41)(v29, v25, v38) == 1)
  {
    outlined destroy of SpeakableString?(v29);
    v21 = v34;
    v34[4]._countAndFlagsBits = 0;
    v21[4]._object = 0;
    v21[5]._countAndFlagsBits = 0;
    v21[5]._object = 0;
  }

  else
  {
    p_countAndFlagsBits = &v24->_countAndFlagsBits;
    v34[5]._object = v38;
    v18 = __swift_allocate_boxed_opaque_existential_1(p_countAndFlagsBits);
    (*(v39 + 32))(v18, v29, v38);
  }

  v19 = v33;
  _finalizeUninitializedArray<A>(_:)();
  v23[0] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v23[1] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t PaymentsLabelCATs.payToday(completion:)()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsLabel#PayToday", 0x16uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t PaymentsLabelCATs.payToday()(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](PaymentsLabelCATs.payToday(), 0);
}

uint64_t PaymentsLabelCATs.payToday()()
{
  v7 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsLabel#PayToday", 0x16uLL, 1);
  v0[6] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v9 = KeyValuePairs.init(dictionaryLiteral:)();
  v0[7] = v9;
  v10 = (v7 + *v7);
  v2 = v7[1];
  v3 = swift_task_alloc();
  v8[8] = v3;
  *v3 = v8[2];
  v3[1] = PaymentsUnsupportedIntentCATs.disabledSurfIntent();
  v4 = v8[5];
  v5 = v8[4];

  return v10(v5, v1._countAndFlagsBits, v1._object, v9);
}

{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PaymentsLabel#PayToday", 0x16uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t type metadata accessor for PaymentsLabelCATs()
{
  v1 = type metadata singleton initialization cache for PaymentsLabelCATs;
  if (!type metadata singleton initialization cache for PaymentsLabelCATs)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t type metadata completion function for PaymentsLabelCATs()
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t PaymentsLabelCATs.__allocating_init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  return PaymentsLabelCATs.init(templateDir:options:globals:)(a1, a2, a3);
}

uint64_t PaymentsLabelCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a1;
  v16 = a2;
  v13 = a3;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v17 = type metadata accessor for CATOption();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v9 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17);
  v11 = &v8 - v9;
  v10 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v18);
  v12 = &v8 - v10;
  v22 = v4;
  v21 = v5;
  v20 = v6;
  v23 = v3;
  outlined init with copy of URL?(v4, &v8 - v10);
  (*(v14 + 16))(v11, v16, v17);
  MEMORY[0x277D82BE0](v13);
  v19 = CATWrapper.init(templateDir:options:globals:)();

  v23 = v19;
  MEMORY[0x277D82BD8](v13);
  (*(v14 + 8))(v16, v17);
  outlined destroy of URL?(v18);

  return v19;
}

uint64_t *SignpostName.makeIntentFromParse.unsafeMutableAddressor()
{
  if (one-time initialization token for makeIntentFromParse != -1)
  {
    swift_once();
  }

  return &static SignpostName.makeIntentFromParse;
}

uint64_t static Signpost.begin(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v15 = a4;
  v16 = a1;
  v17 = a2;
  v18 = a3;
  v27 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v23 = type metadata accessor for OSSignpostID();
  v20 = *(v23 - 8);
  v21 = v23 - 8;
  v11 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v16);
  v19 = &v10 - v11;
  v12 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v4);
  v22 = &v10 - v12;
  v27 = &v10 - v12;
  v24 = v6;
  v25 = v7;
  v26 = v8;
  static Signpost.generateSignpostID()();
  v13 = static os_signpost_type_t.begin.getter();
  v14 = *Signpost.paymentsLog.unsafeMutableAddressor();
  MEMORY[0x277D82BE0](v14);
  os_signpost(_:dso:log:name:signpostID:)();
  MEMORY[0x277D82BD8](v14);
  (*(v20 + 16))(v19, v22, v23);
  Signpost.OpenSignpost.init(signpostID:name:)(v19, v16, v17, v18, v15);
  return (*(v20 + 8))(v22, v23);
}

uint64_t *SignpostName.resolveApp.unsafeMutableAddressor()
{
  if (one-time initialization token for resolveApp != -1)
  {
    swift_once();
  }

  return &static SignpostName.resolveApp;
}

uint64_t *SignpostName.makeSendPaymentFlowProducers.unsafeMutableAddressor()
{
  if (one-time initialization token for makeSendPaymentFlowProducers != -1)
  {
    swift_once();
  }

  return &static SignpostName.makeSendPaymentFlowProducers;
}

uint64_t *SignpostName.makeRequestPaymentFlowProducers.unsafeMutableAddressor()
{
  if (one-time initialization token for makeRequestPaymentFlowProducers != -1)
  {
    swift_once();
  }

  return &static SignpostName.makeRequestPaymentFlowProducers;
}

uint64_t *SignpostName.makeRequestPaymentIntentHandledResponse.unsafeMutableAddressor()
{
  if (one-time initialization token for makeRequestPaymentIntentHandledResponse != -1)
  {
    swift_once();
  }

  return &static SignpostName.makeRequestPaymentIntentHandledResponse;
}

uint64_t *SignpostName.makeRequestPaymentContinueInAppResponse.unsafeMutableAddressor()
{
  if (one-time initialization token for makeRequestPaymentContinueInAppResponse != -1)
  {
    swift_once();
  }

  return &static SignpostName.makeRequestPaymentContinueInAppResponse;
}

uint64_t *SignpostName.makeRequestPaymentFailureHandlingIntentResponse.unsafeMutableAddressor()
{
  if (one-time initialization token for makeRequestPaymentFailureHandlingIntentResponse != -1)
  {
    swift_once();
  }

  return &static SignpostName.makeRequestPaymentFailureHandlingIntentResponse;
}

uint64_t *SignpostName.makeDisambiguationItemContainer.unsafeMutableAddressor()
{
  if (one-time initialization token for makeDisambiguationItemContainer != -1)
  {
    swift_once();
  }

  return &static SignpostName.makeDisambiguationItemContainer;
}

uint64_t *SignpostName.parseDisambiguationResult.unsafeMutableAddressor()
{
  if (one-time initialization token for parseDisambiguationResult != -1)
  {
    swift_once();
  }

  return &static SignpostName.parseDisambiguationResult;
}

uint64_t *SignpostName.makePromptForDisambiguation.unsafeMutableAddressor()
{
  if (one-time initialization token for makePromptForDisambiguation != -1)
  {
    swift_once();
  }

  return &static SignpostName.makePromptForDisambiguation;
}

uint64_t *SignpostName.transformContactQueryToINPersons.unsafeMutableAddressor()
{
  if (one-time initialization token for transformContactQueryToINPersons != -1)
  {
    swift_once();
  }

  return &static SignpostName.transformContactQueryToINPersons;
}

uint64_t *SignpostName.parseResponseValueNeedsValue.unsafeMutableAddressor()
{
  if (one-time initialization token for parseResponseValueNeedsValue != -1)
  {
    swift_once();
  }

  return &static SignpostName.parseResponseValueNeedsValue;
}

uint64_t one-time initialization function for paymentsLog()
{
  type metadata accessor for OS_os_log();
  v0 = LogConst.subsystem.unsafeMutableAddressor();
  v3 = *v0;
  v4 = *(v0 + 1);

  v1 = LogConst.Category.siriPayments.unsafeMutableAddressor();
  v5 = *v1;
  v6 = *(v1 + 1);

  result = OS_os_log.init(subsystem:category:)();
  static Signpost.paymentsLog = result;
  return result;
}

uint64_t *Signpost.paymentsLog.unsafeMutableAddressor()
{
  if (one-time initialization token for paymentsLog != -1)
  {
    swift_once();
  }

  return &static Signpost.paymentsLog;
}

uint64_t static Signpost.paymentsLog.getter()
{
  v0 = Signpost.paymentsLog.unsafeMutableAddressor();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

uint64_t static Signpost.generateSignpostID()()
{
  v0 = Signpost.paymentsLog.unsafeMutableAddressor();
  MEMORY[0x277D82BE0](*v0);
  return OSSignpostID.init(log:)();
}

uint64_t Signpost.OpenSignpost.init(signpostID:name:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v5 = type metadata accessor for OSSignpostID();
  (*(*(v5 - 8) + 32))(a5, a1);
  result = type metadata accessor for Signpost.OpenSignpost();
  v7 = a5 + *(result + 20);
  *v7 = a2;
  *(v7 + 8) = a3;
  *(v7 + 16) = a4;
  return result;
}

uint64_t static Signpost.begin(_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v31 = a8;
  v32 = a1;
  v33 = a2;
  v34 = a3;
  v27 = a4;
  v25 = a5;
  v26 = a6;
  v22 = a7;
  v47 = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v40 = 0;
  v39 = type metadata accessor for OSSignpostID();
  v36 = *(v39 - 8);
  v37 = v39 - 8;
  v20 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v32);
  v35 = &v20 - v20;
  v21 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x28223BE20](v8);
  v38 = &v20 - v21;
  v47 = &v20 - v21;
  v44 = v10;
  v45 = v11;
  v46 = v12;
  v41 = v13;
  v42 = v14;
  v43 = v15;
  v40 = v16;
  static Signpost.generateSignpostID()();
  v28 = static os_signpost_type_t.begin.getter();
  v30 = *Signpost.paymentsLog.unsafeMutableAddressor();
  MEMORY[0x277D82BE0](v30);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pMd, &_ss7CVarArg_pMR);
  v24 = _allocateUninitializedArray<A>(_:)();
  outlined init with copy of GlobalsProviding(v22, v17);
  v18 = v24;
  _finalizeUninitializedArray<A>(_:)();
  v29 = v18;
  os_signpost(_:dso:log:name:signpostID:_:_:)();

  MEMORY[0x277D82BD8](v30);
  (*(v36 + 16))(v35, v38, v39);
  Signpost.OpenSignpost.init(signpostID:name:)(v35, v32, v33, v34, v31);
  return (*(v36 + 8))(v38, v39);
}

uint64_t static Signpost.event(_:)(uint64_t a1, uint64_t a2, int a3)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v15 = type metadata accessor for OSSignpostID();
  v12 = *(v15 - 8);
  v13 = v15 - 8;
  v7 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = &v6 - v7;
  v17 = MEMORY[0x28223BE20](v9);
  v18 = v3;
  v19 = v4;
  v8 = static os_signpost_type_t.event.getter();
  v16 = *Signpost.paymentsLog.unsafeMutableAddressor();
  MEMORY[0x277D82BE0](v16);
  default argument 4 of os_signpost(_:dso:log:name:signpostID:)();
  os_signpost(_:dso:log:name:signpostID:)();
  (*(v12 + 8))(v14, v15);
  return MEMORY[0x277D82BD8](v16);
}

uint64_t Signpost.OpenSignpost.name.getter()
{
  v1 = (v0 + *(type metadata accessor for Signpost.OpenSignpost() + 20));
  result = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  return result;
}

Swift::Void __swiftcall Signpost.OpenSignpost.end()()
{
  v10 = 0;
  v2[1] = 0;
  v8 = type metadata accessor for OSSignpostID();
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v2[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v7 = v2 - v2[0];
  v10 = v0;
  v4 = static os_signpost_type_t.end.getter();
  v9 = *Signpost.paymentsLog.unsafeMutableAddressor();
  MEMORY[0x277D82BE0](v9);
  v1 = v2[2] + *(type metadata accessor for Signpost.OpenSignpost() + 20);
  v2[3] = *v1;
  v2[4] = *(v1 + 8);
  v3 = *(v1 + 16);
  (*(v5 + 16))(v7);
  os_signpost(_:dso:log:name:signpostID:)();
  (*(v5 + 8))(v7, v8);
  MEMORY[0x277D82BD8](v9);
}

void one-time initialization function for checkAuthorizationStatus()
{
  SignpostName.init(name:)();
  static SignpostName.checkAuthorizationStatus = v0;
  qword_28029D698 = v1;
  byte_28029D6A0 = v2;
}

uint64_t *SignpostName.checkAuthorizationStatus.unsafeMutableAddressor()
{
  if (one-time initialization token for checkAuthorizationStatus != -1)
  {
    swift_once();
  }

  return &static SignpostName.checkAuthorizationStatus;
}

uint64_t static SignpostName.checkAuthorizationStatus.getter()
{
  v0 = SignpostName.checkAuthorizationStatus.unsafeMutableAddressor();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void one-time initialization function for findFlowForX()
{
  SignpostName.init(name:)();
  static SignpostName.findFlowForX = v0;
  qword_28029D6B0 = v1;
  byte_28029D6B8 = v2;
}

uint64_t *SignpostName.findFlowForX.unsafeMutableAddressor()
{
  if (one-time initialization token for findFlowForX != -1)
  {
    swift_once();
  }

  return &static SignpostName.findFlowForX;
}

uint64_t static SignpostName.findFlowForX.getter()
{
  v0 = SignpostName.findFlowForX.unsafeMutableAddressor();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void one-time initialization function for emitIntentSignal()
{
  SignpostName.init(name:)();
  static SignpostName.emitIntentSignal = v0;
  qword_28029D6C8 = v1;
  byte_28029D6D0 = v2;
}

uint64_t *SignpostName.emitIntentSignal.unsafeMutableAddressor()
{
  if (one-time initialization token for emitIntentSignal != -1)
  {
    swift_once();
  }

  return &static SignpostName.emitIntentSignal;
}

uint64_t static SignpostName.emitIntentSignal.getter()
{
  v0 = SignpostName.emitIntentSignal.unsafeMutableAddressor();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void one-time initialization function for makeIntentFromParse()
{
  SignpostName.init(name:)();
  static SignpostName.makeIntentFromParse = v0;
  qword_28029D6E0 = v1;
  byte_28029D6E8 = v2;
}

uint64_t static SignpostName.makeIntentFromParse.getter()
{
  v0 = SignpostName.makeIntentFromParse.unsafeMutableAddressor();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void one-time initialization function for makeSendPaymentFlowProducers()
{
  SignpostName.init(name:)();
  static SignpostName.makeSendPaymentFlowProducers = v0;
  qword_28029D6F8 = v1;
  byte_28029D700 = v2;
}

uint64_t static SignpostName.makeSendPaymentFlowProducers.getter()
{
  v0 = SignpostName.makeSendPaymentFlowProducers.unsafeMutableAddressor();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void one-time initialization function for makeRequestPaymentFlowProducers()
{
  SignpostName.init(name:)();
  static SignpostName.makeRequestPaymentFlowProducers = v0;
  qword_28029D710 = v1;
  byte_28029D718 = v2;
}

uint64_t static SignpostName.makeRequestPaymentFlowProducers.getter()
{
  v0 = SignpostName.makeRequestPaymentFlowProducers.unsafeMutableAddressor();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void one-time initialization function for makeSearchForAccountsFlowProducers()
{
  SignpostName.init(name:)();
  static SignpostName.makeSearchForAccountsFlowProducers = v0;
  qword_28029D728 = v1;
  byte_28029D730 = v2;
}

uint64_t *SignpostName.makeSearchForAccountsFlowProducers.unsafeMutableAddressor()
{
  if (one-time initialization token for makeSearchForAccountsFlowProducers != -1)
  {
    swift_once();
  }

  return &static SignpostName.makeSearchForAccountsFlowProducers;
}

uint64_t static SignpostName.makeSearchForAccountsFlowProducers.getter()
{
  v0 = SignpostName.makeSearchForAccountsFlowProducers.unsafeMutableAddressor();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void one-time initialization function for makeSendPaymentIntentHandledResponse()
{
  SignpostName.init(name:)();
  static SignpostName.makeSendPaymentIntentHandledResponse = v0;
  qword_28029D740 = v1;
  byte_28029D748 = v2;
}

uint64_t *SignpostName.makeSendPaymentIntentHandledResponse.unsafeMutableAddressor()
{
  if (one-time initialization token for makeSendPaymentIntentHandledResponse != -1)
  {
    swift_once();
  }

  return &static SignpostName.makeSendPaymentIntentHandledResponse;
}

uint64_t static SignpostName.makeSendPaymentIntentHandledResponse.getter()
{
  v0 = SignpostName.makeSendPaymentIntentHandledResponse.unsafeMutableAddressor();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void one-time initialization function for makeSendPaymentIntentPromptForValue()
{
  SignpostName.init(name:)();
  static SignpostName.makeSendPaymentIntentPromptForValue = v0;
  qword_28029D758 = v1;
  byte_28029D760 = v2;
}

uint64_t *SignpostName.makeSendPaymentIntentPromptForValue.unsafeMutableAddressor()
{
  if (one-time initialization token for makeSendPaymentIntentPromptForValue != -1)
  {
    swift_once();
  }

  return &static SignpostName.makeSendPaymentIntentPromptForValue;
}

uint64_t static SignpostName.makeSendPaymentIntentPromptForValue.getter()
{
  v0 = SignpostName.makeSendPaymentIntentPromptForValue.unsafeMutableAddressor();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void one-time initialization function for makeSendPaymentPromptForConfirm()
{
  SignpostName.init(name:)();
  static SignpostName.makeSendPaymentPromptForConfirm = v0;
  qword_28029D770 = v1;
  byte_28029D778 = v2;
}

uint64_t *SignpostName.makeSendPaymentPromptForConfirm.unsafeMutableAddressor()
{
  if (one-time initialization token for makeSendPaymentPromptForConfirm != -1)
  {
    swift_once();
  }

  return &static SignpostName.makeSendPaymentPromptForConfirm;
}

uint64_t static SignpostName.makeSendPaymentPromptForConfirm.getter()
{
  v0 = SignpostName.makeSendPaymentPromptForConfirm.unsafeMutableAddressor();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void one-time initialization function for makeSendPaymentErrorResponse()
{
  SignpostName.init(name:)();
  static SignpostName.makeSendPaymentErrorResponse = v0;
  qword_28029D788 = v1;
  byte_28029D790 = v2;
}

uint64_t *SignpostName.makeSendPaymentErrorResponse.unsafeMutableAddressor()
{
  if (one-time initialization token for makeSendPaymentErrorResponse != -1)
  {
    swift_once();
  }

  return &static SignpostName.makeSendPaymentErrorResponse;
}

uint64_t static SignpostName.makeSendPaymentErrorResponse.getter()
{
  v0 = SignpostName.makeSendPaymentErrorResponse.unsafeMutableAddressor();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void one-time initialization function for makeSendPaymentContinueInAppResponse()
{
  SignpostName.init(name:)();
  static SignpostName.makeSendPaymentContinueInAppResponse = v0;
  qword_28029D7A0 = v1;
  byte_28029D7A8 = v2;
}

uint64_t *SignpostName.makeSendPaymentContinueInAppResponse.unsafeMutableAddressor()
{
  if (one-time initialization token for makeSendPaymentContinueInAppResponse != -1)
  {
    swift_once();
  }

  return &static SignpostName.makeSendPaymentContinueInAppResponse;
}

uint64_t static SignpostName.makeSendPaymentContinueInAppResponse.getter()
{
  v0 = SignpostName.makeSendPaymentContinueInAppResponse.unsafeMutableAddressor();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void one-time initialization function for makeSendPaymentFailureHandlingIntentResponse()
{
  SignpostName.init(name:)();
  static SignpostName.makeSendPaymentFailureHandlingIntentResponse = v0;
  qword_28029D7B8 = v1;
  byte_28029D7C0 = v2;
}

uint64_t *SignpostName.makeSendPaymentFailureHandlingIntentResponse.unsafeMutableAddressor()
{
  if (one-time initialization token for makeSendPaymentFailureHandlingIntentResponse != -1)
  {
    swift_once();
  }

  return &static SignpostName.makeSendPaymentFailureHandlingIntentResponse;
}

uint64_t static SignpostName.makeSendPaymentFailureHandlingIntentResponse.getter()
{
  v0 = SignpostName.makeSendPaymentFailureHandlingIntentResponse.unsafeMutableAddressor();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void one-time initialization function for makeRequestPaymentIntentHandledResponse()
{
  SignpostName.init(name:)();
  static SignpostName.makeRequestPaymentIntentHandledResponse = v0;
  qword_28029D7D0 = v1;
  byte_28029D7D8 = v2;
}

uint64_t static SignpostName.makeRequestPaymentIntentHandledResponse.getter()
{
  v0 = SignpostName.makeRequestPaymentIntentHandledResponse.unsafeMutableAddressor();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void one-time initialization function for makeRequestPaymentIntentPromptForValue()
{
  SignpostName.init(name:)();
  static SignpostName.makeRequestPaymentIntentPromptForValue = v0;
  qword_28029D7E8 = v1;
  byte_28029D7F0 = v2;
}

uint64_t *SignpostName.makeRequestPaymentIntentPromptForValue.unsafeMutableAddressor()
{
  if (one-time initialization token for makeRequestPaymentIntentPromptForValue != -1)
  {
    swift_once();
  }

  return &static SignpostName.makeRequestPaymentIntentPromptForValue;
}

uint64_t static SignpostName.makeRequestPaymentIntentPromptForValue.getter()
{
  v0 = SignpostName.makeRequestPaymentIntentPromptForValue.unsafeMutableAddressor();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void one-time initialization function for makeRequestPaymentPromptForConfirm()
{
  SignpostName.init(name:)();
  static SignpostName.makeRequestPaymentPromptForConfirm = v0;
  qword_28029D800 = v1;
  byte_28029D808 = v2;
}

uint64_t *SignpostName.makeRequestPaymentPromptForConfirm.unsafeMutableAddressor()
{
  if (one-time initialization token for makeRequestPaymentPromptForConfirm != -1)
  {
    swift_once();
  }

  return &static SignpostName.makeRequestPaymentPromptForConfirm;
}

uint64_t static SignpostName.makeRequestPaymentPromptForConfirm.getter()
{
  v0 = SignpostName.makeRequestPaymentPromptForConfirm.unsafeMutableAddressor();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void one-time initialization function for makeRequestPaymentErrorResponse()
{
  SignpostName.init(name:)();
  static SignpostName.makeRequestPaymentErrorResponse = v0;
  qword_28029D818 = v1;
  byte_28029D820 = v2;
}

uint64_t *SignpostName.makeRequestPaymentErrorResponse.unsafeMutableAddressor()
{
  if (one-time initialization token for makeRequestPaymentErrorResponse != -1)
  {
    swift_once();
  }

  return &static SignpostName.makeRequestPaymentErrorResponse;
}

uint64_t static SignpostName.makeRequestPaymentErrorResponse.getter()
{
  v0 = SignpostName.makeRequestPaymentErrorResponse.unsafeMutableAddressor();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void one-time initialization function for makeRequestPaymentContinueInAppResponse()
{
  SignpostName.init(name:)();
  static SignpostName.makeRequestPaymentContinueInAppResponse = v0;
  qword_28029D830 = v1;
  byte_28029D838 = v2;
}

uint64_t static SignpostName.makeRequestPaymentContinueInAppResponse.getter()
{
  v0 = SignpostName.makeRequestPaymentContinueInAppResponse.unsafeMutableAddressor();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void one-time initialization function for makeRequestPaymentFailureHandlingIntentResponse()
{
  SignpostName.init(name:)();
  static SignpostName.makeRequestPaymentFailureHandlingIntentResponse = v0;
  qword_28029D848 = v1;
  byte_28029D850 = v2;
}

uint64_t static SignpostName.makeRequestPaymentFailureHandlingIntentResponse.getter()
{
  v0 = SignpostName.makeRequestPaymentFailureHandlingIntentResponse.unsafeMutableAddressor();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void one-time initialization function for makeConfirmationRejectedResponse()
{
  SignpostName.init(name:)();
  static SignpostName.makeConfirmationRejectedResponse = v0;
  qword_28029D860 = v1;
  byte_28029D868 = v2;
}

uint64_t *SignpostName.makeConfirmationRejectedResponse.unsafeMutableAddressor()
{
  if (one-time initialization token for makeConfirmationRejectedResponse != -1)
  {
    swift_once();
  }

  return &static SignpostName.makeConfirmationRejectedResponse;
}

uint64_t static SignpostName.makeConfirmationRejectedResponse.getter()
{
  v0 = SignpostName.makeConfirmationRejectedResponse.unsafeMutableAddressor();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void one-time initialization function for makeSearchForAccountsPromptForConfirm()
{
  SignpostName.init(name:)();
  static SignpostName.makeSearchForAccountsPromptForConfirm = v0;
  qword_28029D878 = v1;
  byte_28029D880 = v2;
}

uint64_t *SignpostName.makeSearchForAccountsPromptForConfirm.unsafeMutableAddressor()
{
  if (one-time initialization token for makeSearchForAccountsPromptForConfirm != -1)
  {
    swift_once();
  }

  return &static SignpostName.makeSearchForAccountsPromptForConfirm;
}

uint64_t static SignpostName.makeSearchForAccountsPromptForConfirm.getter()
{
  v0 = SignpostName.makeSearchForAccountsPromptForConfirm.unsafeMutableAddressor();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void one-time initialization function for makeSearchForAccountsErrorResponse()
{
  SignpostName.init(name:)();
  static SignpostName.makeSearchForAccountsErrorResponse = v0;
  qword_28029D890 = v1;
  byte_28029D898 = v2;
}

uint64_t *SignpostName.makeSearchForAccountsErrorResponse.unsafeMutableAddressor()
{
  if (one-time initialization token for makeSearchForAccountsErrorResponse != -1)
  {
    swift_once();
  }

  return &static SignpostName.makeSearchForAccountsErrorResponse;
}

uint64_t static SignpostName.makeSearchForAccountsErrorResponse.getter()
{
  v0 = SignpostName.makeSearchForAccountsErrorResponse.unsafeMutableAddressor();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void one-time initialization function for parseResponseValueNeedsValue()
{
  SignpostName.init(name:)();
  static SignpostName.parseResponseValueNeedsValue = v0;
  qword_28029D8A8 = v1;
  byte_28029D8B0 = v2;
}

uint64_t static SignpostName.parseResponseValueNeedsValue.getter()
{
  v0 = SignpostName.parseResponseValueNeedsValue.unsafeMutableAddressor();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void one-time initialization function for sendPaymentConfirmIntent()
{
  SignpostName.init(name:)();
  static SignpostName.sendPaymentConfirmIntent = v0;
  qword_28029D8C0 = v1;
  byte_28029D8C8 = v2;
}

uint64_t *SignpostName.sendPaymentConfirmIntent.unsafeMutableAddressor()
{
  if (one-time initialization token for sendPaymentConfirmIntent != -1)
  {
    swift_once();
  }

  return &static SignpostName.sendPaymentConfirmIntent;
}

uint64_t static SignpostName.sendPaymentConfirmIntent.getter()
{
  v0 = SignpostName.sendPaymentConfirmIntent.unsafeMutableAddressor();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void one-time initialization function for sendPaymentHandleIntent()
{
  SignpostName.init(name:)();
  static SignpostName.sendPaymentHandleIntent = v0;
  qword_28029D8D8 = v1;
  byte_28029D8E0 = v2;
}

uint64_t *SignpostName.sendPaymentHandleIntent.unsafeMutableAddressor()
{
  if (one-time initialization token for sendPaymentHandleIntent != -1)
  {
    swift_once();
  }

  return &static SignpostName.sendPaymentHandleIntent;
}

uint64_t static SignpostName.sendPaymentHandleIntent.getter()
{
  v0 = SignpostName.sendPaymentHandleIntent.unsafeMutableAddressor();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void one-time initialization function for resolvePayee()
{
  SignpostName.init(name:)();
  static SignpostName.resolvePayee = v0;
  qword_28029D8F0 = v1;
  byte_28029D8F8 = v2;
}

uint64_t *SignpostName.resolvePayee.unsafeMutableAddressor()
{
  if (one-time initialization token for resolvePayee != -1)
  {
    swift_once();
  }

  return &static SignpostName.resolvePayee;
}

uint64_t static SignpostName.resolvePayee.getter()
{
  v0 = SignpostName.resolvePayee.unsafeMutableAddressor();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void one-time initialization function for resolveCurrencyAmount()
{
  SignpostName.init(name:)();
  static SignpostName.resolveCurrencyAmount = v0;
  qword_28029D908 = v1;
  byte_28029D910 = v2;
}

uint64_t *SignpostName.resolveCurrencyAmount.unsafeMutableAddressor()
{
  if (one-time initialization token for resolveCurrencyAmount != -1)
  {
    swift_once();
  }

  return &static SignpostName.resolveCurrencyAmount;
}

uint64_t static SignpostName.resolveCurrencyAmount.getter()
{
  v0 = SignpostName.resolveCurrencyAmount.unsafeMutableAddressor();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void one-time initialization function for resolveNote()
{
  SignpostName.init(name:)();
  static SignpostName.resolveNote = v0;
  qword_28029D920 = v1;
  byte_28029D928 = v2;
}

uint64_t *SignpostName.resolveNote.unsafeMutableAddressor()
{
  if (one-time initialization token for resolveNote != -1)
  {
    swift_once();
  }

  return &static SignpostName.resolveNote;
}

uint64_t static SignpostName.resolveNote.getter()
{
  v0 = SignpostName.resolveNote.unsafeMutableAddressor();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void one-time initialization function for searchForAccountHandleIntent()
{
  SignpostName.init(name:)();
  static SignpostName.searchForAccountHandleIntent = v0;
  qword_28029D938 = v1;
  byte_28029D940 = v2;
}

uint64_t *SignpostName.searchForAccountHandleIntent.unsafeMutableAddressor()
{
  if (one-time initialization token for searchForAccountHandleIntent != -1)
  {
    swift_once();
  }

  return &static SignpostName.searchForAccountHandleIntent;
}

uint64_t static SignpostName.searchForAccountHandleIntent.getter()
{
  v0 = SignpostName.searchForAccountHandleIntent.unsafeMutableAddressor();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void one-time initialization function for confirmationViewBuilder()
{
  SignpostName.init(name:)();
  static SignpostName.confirmationViewBuilder = v0;
  qword_28029D950 = v1;
  byte_28029D958 = v2;
}

uint64_t *SignpostName.confirmationViewBuilder.unsafeMutableAddressor()
{
  if (one-time initialization token for confirmationViewBuilder != -1)
  {
    swift_once();
  }

  return &static SignpostName.confirmationViewBuilder;
}

uint64_t static SignpostName.confirmationViewBuilder.getter()
{
  v0 = SignpostName.confirmationViewBuilder.unsafeMutableAddressor();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void one-time initialization function for idiomSensitiveViewBuilder()
{
  SignpostName.init(name:)();
  static SignpostName.idiomSensitiveViewBuilder = v0;
  qword_28029D968 = v1;
  byte_28029D970 = v2;
}

uint64_t *SignpostName.idiomSensitiveViewBuilder.unsafeMutableAddressor()
{
  if (one-time initialization token for idiomSensitiveViewBuilder != -1)
  {
    swift_once();
  }

  return &static SignpostName.idiomSensitiveViewBuilder;
}

uint64_t static SignpostName.idiomSensitiveViewBuilder.getter()
{
  v0 = SignpostName.idiomSensitiveViewBuilder.unsafeMutableAddressor();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void one-time initialization function for buildPunchoutForApp()
{
  SignpostName.init(name:)();
  static SignpostName.buildPunchoutForApp = v0;
  qword_28029D980 = v1;
  byte_28029D988 = v2;
}

uint64_t *SignpostName.buildPunchoutForApp.unsafeMutableAddressor()
{
  if (one-time initialization token for buildPunchoutForApp != -1)
  {
    swift_once();
  }

  return &static SignpostName.buildPunchoutForApp;
}

uint64_t static SignpostName.buildPunchoutForApp.getter()
{
  v0 = SignpostName.buildPunchoutForApp.unsafeMutableAddressor();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void one-time initialization function for makeDisambiguationItemContainer()
{
  SignpostName.init(name:)();
  static SignpostName.makeDisambiguationItemContainer = v0;
  qword_28029D998 = v1;
  byte_28029D9A0 = v2;
}

uint64_t static SignpostName.makeDisambiguationItemContainer.getter()
{
  v0 = SignpostName.makeDisambiguationItemContainer.unsafeMutableAddressor();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void one-time initialization function for parseDisambiguationResult()
{
  SignpostName.init(name:)();
  static SignpostName.parseDisambiguationResult = v0;
  qword_28029D9B0 = v1;
  byte_28029D9B8 = v2;
}

uint64_t static SignpostName.parseDisambiguationResult.getter()
{
  v0 = SignpostName.parseDisambiguationResult.unsafeMutableAddressor();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void one-time initialization function for makePromptForDisambiguation()
{
  SignpostName.init(name:)();
  static SignpostName.makePromptForDisambiguation = v0;
  qword_28029D9C8 = v1;
  byte_28029D9D0 = v2;
}

uint64_t static SignpostName.makePromptForDisambiguation.getter()
{
  v0 = SignpostName.makePromptForDisambiguation.unsafeMutableAddressor();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void one-time initialization function for toSiriKitIntent()
{
  SignpostName.init(name:)();
  static SignpostName.toSiriKitIntent = v0;
  qword_28029D9E0 = v1;
  byte_28029D9E8 = v2;
}

uint64_t *SignpostName.toSiriKitIntent.unsafeMutableAddressor()
{
  if (one-time initialization token for toSiriKitIntent != -1)
  {
    swift_once();
  }

  return &static SignpostName.toSiriKitIntent;
}

uint64_t static SignpostName.toSiriKitIntent.getter()
{
  v0 = SignpostName.toSiriKitIntent.unsafeMutableAddressor();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void one-time initialization function for transformContactQueryToINPersons()
{
  SignpostName.init(name:)();
  static SignpostName.transformContactQueryToINPersons = v0;
  qword_28029D9F8 = v1;
  byte_28029DA00 = v2;
}

uint64_t static SignpostName.transformContactQueryToINPersons.getter()
{
  v0 = SignpostName.transformContactQueryToINPersons.unsafeMutableAddressor();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void one-time initialization function for resolveApp()
{
  SignpostName.init(name:)();
  static SignpostName.resolveApp = v0;
  qword_28029DA10 = v1;
  byte_28029DA18 = v2;
}

unint64_t type metadata accessor for OS_os_log()
{
  v2 = lazy cache variable for type metadata for OS_os_log;
  if (!lazy cache variable for type metadata for OS_os_log)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for OS_os_log);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t type metadata accessor for Signpost.OpenSignpost()
{
  v1 = type metadata singleton initialization cache for Signpost.OpenSignpost;
  if (!type metadata singleton initialization cache for Signpost.OpenSignpost)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t static SignpostName.resolveApp.getter()
{
  v0 = SignpostName.resolveApp.unsafeMutableAddressor();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void one-time initialization function for searchForAccountsAppResolution()
{
  SignpostName.init(name:)();
  static SignpostName.searchForAccountsAppResolution = v0;
  qword_28029DA28 = v1;
  byte_28029DA30 = v2;
}

uint64_t *SignpostName.searchForAccountsAppResolution.unsafeMutableAddressor()
{
  if (one-time initialization token for searchForAccountsAppResolution != -1)
  {
    swift_once();
  }

  return &static SignpostName.searchForAccountsAppResolution;
}

uint64_t static SignpostName.searchForAccountsAppResolution.getter()
{
  v0 = SignpostName.searchForAccountsAppResolution.unsafeMutableAddressor();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

uint64_t type metadata completion function for Signpost.OpenSignpost()
{
  v2 = type metadata accessor for OSSignpostID();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for SignpostName(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 17))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for SignpostName(uint64_t result, int a2, int a3)
{
  v3 = (result + 17);
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    *(result + 16) = 0;
    if (a3)
    {
      *v3 = 1;
    }
  }

  else if (a3)
  {
    *v3 = 0;
  }

  return result;
}

uint64_t SendPaymentNeedsValueStrategy.__allocating_init()()
{
  v31 = 0;
  v17 = 0;
  v7 = (*(*(type metadata accessor for CATOption() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v16 = &v6 - v7;
  v12 = type metadata accessor for Globals();
  v8 = v36;
  default argument 0 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v36);
  v9 = &v35;
  default argument 1 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v10 = &v34;
  default argument 2 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v11 = &v33;
  default argument 3 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v0 = Globals.__allocating_init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v8, v9, v10, v11);
  v25 = v37;
  v37[3] = v12;
  v37[4] = &protocol witness table for Globals;
  v37[0] = v0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo19INSendPaymentIntentCSo0ghI8ResponseCGMd, &_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo19INSendPaymentIntentCSo0ghI8ResponseCGMR);
  v15 = v32;
  outlined init with copy of GlobalsProviding(v25, v32);
  type metadata accessor for PaymentsBaseCATs();
  default argument 0 of CATWrapper.init(options:globals:)();
  v14 = CATWrapper.__allocating_init(options:globals:)();
  v13 = type metadata accessor for INSendPaymentIntent();
  v1 = type metadata accessor for INSendPaymentIntentResponse();
  v2 = default argument 2 of PaymentsErrorTemplateProvider.init(globals:catFamily:searchForAccountsCATs:)(v13, v1);
  v24 = PaymentsErrorTemplateProvider.__allocating_init(globals:catFamily:searchForAccountsCATs:)(v15, v14, v2);
  v31 = v24;
  v23 = v30;
  outlined init with copy of GlobalsProviding(v25, v30);
  type metadata accessor for SendPaymentCATs();
  default argument 0 of CATWrapper.init(options:globals:)();
  v18 = CATWrapper.__allocating_init(options:globals:)();
  NSJSONWritingOptions.init(rawValue:)(v18);
  v19 = v29;
  v29[3] = &type metadata for CommonLabelsProvider;
  v29[4] = &protocol witness table for CommonLabelsProvider;
  v3 = type metadata accessor for SiriKitContactResolver();
  v20 = v28;
  v28[3] = v3;
  v28[4] = &protocol witness table for SiriKitContactResolver;
  __swift_allocate_boxed_opaque_existential_1(v28);
  SiriKitContactResolver.init()();

  v21 = &v27;
  v27 = v24;
  v4 = lazy protocol witness table accessor for type PaymentsErrorTemplateProvider<INSendPaymentIntent, INSendPaymentIntentResponse> and conformance PaymentsErrorTemplateProvider<A, B>();
  v26 = SendPaymentNeedsValueStrategy.__allocating_init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(v23, v18, v19, v20, v21, v22, v4);

  v37[5] = v26;

  __swift_destroy_boxed_opaque_existential_0(v25);

  return v26;
}

uint64_t SendPaymentNeedsValueStrategy.actionForInput(_:resolveRecord:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a2;
  v28 = a1;
  v26 = a3;
  v39 = 0;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v27 = 0;
  v36 = type metadata accessor for Logger();
  v30 = v36;
  v31 = *(v36 - 8);
  v35 = v31;
  v32 = v31;
  v33 = *(v31 + 64);
  v3 = &v10 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v3;
  v49 = MEMORY[0x28223BE20](v28);
  v48 = v4;
  v47 = v5;
  v6 = Logger.payments.unsafeMutableAddressor();
  (*(v35 + 16))(v3, v6, v36);
  v41 = Logger.logObject.getter();
  v37 = v41;
  v40 = static os_log_type_t.debug.getter();
  v38 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v42 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v41, v40))
  {
    v7 = v27;
    v17 = static UnsafeMutablePointer.allocate(capacity:)();
    v13 = v17;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v15 = 0;
    v18 = createStorage<A>(capacity:type:)(0);
    v16 = v18;
    v19 = createStorage<A>(capacity:type:)(v15);
    v46 = v17;
    v45 = v18;
    v44 = v19;
    v20 = 0;
    v21 = &v46;
    serialize(_:at:)(0, &v46);
    serialize(_:at:)(v20, v21);
    v43 = v42;
    v22 = &v10;
    MEMORY[0x28223BE20](&v10);
    v23 = &v10 - 6;
    *(&v10 - 4) = v8;
    *(&v10 - 3) = &v45;
    *(&v10 - 2) = &v44;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v25 = v7;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_2686B1000, v37, v38, "#SendPaymentNeedsValueStrategy actionForInput.", v13, 2u);
      v11 = 0;
      destroyStorage<A>(_:count:)(v16, 0, v14);
      destroyStorage<A>(_:count:)(v19, v11, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v13, MEMORY[0x277D84B78]);

      v12 = v25;
    }
  }

  else
  {

    v12 = v27;
  }

  (*(v32 + 8))(v34, v30);

  BaseStrategy.actionForInput(_:)(v28, v26);
}

uint64_t SendPaymentNeedsValueStrategy.makePromptForValue(resolveRecord:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 208) = v2;
  *(v3 + 200) = a2;
  *(v3 + 192) = a1;
  *(v3 + 136) = v3;
  *(v3 + 144) = 0;
  *(v3 + 152) = 0;
  *(v3 + 368) = 0;
  *(v3 + 376) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo19INSendPaymentIntentCGMR);
  *(v3 + 216) = v4;
  v14 = *(v4 - 8);
  *(v3 + 224) = v14;
  *(v3 + 232) = *(v14 + 64);
  *(v3 + 240) = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  *(v3 + 248) = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15;
  *(v3 + 256) = swift_task_alloc();
  v7 = type metadata accessor for TemplatingResult();
  *(v3 + 264) = v7;
  v15 = *(v7 - 8);
  *(v3 + 272) = v15;
  v8 = *(v15 + 64) + 15;
  *(v3 + 280) = swift_task_alloc();
  v9 = type metadata accessor for ParameterIdentifier();
  *(v3 + 288) = v9;
  v16 = *(v9 - 8);
  *(v3 + 296) = v16;
  v10 = *(v16 + 64) + 15;
  *(v3 + 304) = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  *(v3 + 312) = v11;
  v17 = *(v11 - 8);
  *(v3 + 320) = v17;
  v18 = *(v17 + 64);
  *(v3 + 328) = swift_task_alloc();
  *(v3 + 336) = swift_task_alloc();
  *(v3 + 144) = a2;
  *(v3 + 152) = v2;
  v12 = *(v3 + 136);

  return MEMORY[0x2822009F8](SendPaymentNeedsValueStrategy.makePromptForValue(resolveRecord:), 0);
}

uint64_t SendPaymentNeedsValueStrategy.makePromptForValue(resolveRecord:)()
{
  v86 = v0;
  v1 = v0[42];
  v75 = v0[40];
  v76 = v0[39];
  v0[17] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  v77 = *(v75 + 16);
  v77(v1, v2, v76);
  v79 = Logger.logObject.getter();
  v78 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v80 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v79, v78))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v71 = createStorage<A>(capacity:type:)(0);
    v72 = createStorage<A>(capacity:type:)(0);
    *(v74 + 160) = buf;
    *(v74 + 168) = v71;
    *(v74 + 176) = v72;
    serialize(_:at:)(0, (v74 + 160));
    serialize(_:at:)(0, (v74 + 160));
    *(v74 + 184) = v80;
    v73 = swift_task_alloc();
    v73[2] = v74 + 160;
    v73[3] = v74 + 168;
    v73[4] = v74 + 176;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v79, v78, "#SendPaymentNeedsValueStrategy makePromptForValue", buf, 2u);
    destroyStorage<A>(_:count:)(v71, 0, v69);
    destroyStorage<A>(_:count:)(v72, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v59 = *(v74 + 336);
  v60 = *(v74 + 312);
  v64 = *(v74 + 304);
  v65 = *(v74 + 288);
  v62 = *(v74 + 216);
  v3 = *(v74 + 200);
  v58 = *(v74 + 320);
  v63 = *(v74 + 296);
  MEMORY[0x277D82BD8](v79);
  v61 = *(v58 + 8);
  v61(v59, v60);
  ParameterResolutionRecord.parameter.getter();
  rawValue._countAndFlagsBits = ParameterIdentifier.name.getter();
  rawValue._object = v4;
  v66 = *(v63 + 8);
  v66(v64, v65);
  v68.value = SendPaymentSlots.init(rawValue:)(rawValue).value;
  *(v74 + 370) = v68;
  if (v68.value == SiriPaymentsIntents_SendPaymentSlots_unknownDefault)
  {
    v13 = *(v74 + 328);
    v39 = *(v74 + 312);
    v44 = *(v74 + 240);
    v42 = *(v74 + 232);
    v45 = *(v74 + 216);
    v41 = *(v74 + 200);
    v40 = *(v74 + 224);
    v14 = Logger.payments.unsafeMutableAddressor();
    v77(v13, v14, v39);
    (*(v40 + 16))(v44, v41, v45);
    v43 = (*(v40 + 80) + 16) & ~*(v40 + 80);
    v46 = swift_allocObject();
    (*(v40 + 32))(v46 + v43, v44, v45);
    oslog = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    v48 = swift_allocObject();
    *(v48 + 16) = 32;
    v49 = swift_allocObject();
    *(v49 + 16) = 8;
    v47 = swift_allocObject();
    *(v47 + 16) = partial apply for implicit closure #1 in SendPaymentNeedsValueStrategy.makePromptForValue(resolveRecord:);
    *(v47 + 24) = v46;
    v50 = swift_allocObject();
    *(v50 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v50 + 24) = v47;
    _allocateUninitializedArray<A>(_:)();
    v51 = v15;

    *v51 = partial apply for closure #1 in OSLogArguments.append(_:);
    v51[1] = v48;

    v51[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v51[3] = v49;

    v51[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v51[5] = v50;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v53))
    {
      v36 = static UnsafeMutablePointer.allocate(capacity:)();
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v37 = createStorage<A>(capacity:type:)(0);
      v38 = createStorage<A>(capacity:type:)(1);
      v81 = v36;
      v82 = v37;
      v83 = v38;
      serialize(_:at:)(2, &v81);
      serialize(_:at:)(1, &v81);
      v84 = partial apply for closure #1 in OSLogArguments.append(_:);
      v85 = v48;
      closure #1 in osLogInternal(_:log:type:)(&v84, &v81, &v82, &v83);
      v84 = partial apply for closure #1 in OSLogArguments.append(_:);
      v85 = v49;
      closure #1 in osLogInternal(_:log:type:)(&v84, &v81, &v82, &v83);
      v84 = partial apply for closure #1 in OSLogArguments.append(_:);
      v85 = v50;
      closure #1 in osLogInternal(_:log:type:)(&v84, &v81, &v82, &v83);
      _os_log_impl(&dword_2686B1000, oslog, v53, "#SendPaymentNeedsValueStrategy unknown parameter: %s", v36, 0xCu);
      destroyStorage<A>(_:count:)(v37, 0, v35);
      destroyStorage<A>(_:count:)(v38, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v36, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v22 = *(v74 + 328);
    v23 = *(v74 + 312);
    v25 = *(v74 + 304);
    v26 = *(v74 + 288);
    v24 = *(v74 + 216);
    v16 = *(v74 + 200);
    MEMORY[0x277D82BD8](oslog);
    v61(v22, v23);
    ParameterResolutionRecord.parameter.getter();
    v28 = ParameterIdentifier.name.getter();
    v27 = v17;
    v66(v25, v26);
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    swift_allocError();
    *v18 = v28;
    *(v18 + 8) = v27;
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0;
    *(v18 + 40) = 0;
    *(v18 + 48) = 14;
    swift_willThrow();
    v19 = *(v74 + 336);
    v29 = *(v74 + 328);
    v30 = *(v74 + 304);
    v31 = *(v74 + 280);
    v32 = *(v74 + 256);
    v33 = *(v74 + 248);
    v34 = *(v74 + 240);

    v20 = *(*(v74 + 136) + 8);
    v21 = *(v74 + 136);

    return v20();
  }

  else
  {
    v57 = *(v74 + 256);
    v5 = *(v74 + 216);
    v56 = *(v74 + 208);
    v6 = *(v74 + 200);
    *(v74 + 368) = v68;
    v54 = ParameterResolutionRecord.intent.getter();
    v55 = [v54 verb];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v54);
    v7 = String.isEmpty.getter();
    *(v74 + 371) = v7 & 1;
    *(v74 + 376) = v7 & 1;

    MEMORY[0x277D82BD8](v55);

    *(v74 + 344) = *(v56 + 16);

    *(v74 + 369) = v68;
    lazy protocol witness table accessor for type SendPaymentSlots and conformance SendPaymentSlots();
    lazy protocol witness table accessor for type SendPaymentSlots and conformance SendPaymentSlots();
    Slot<>.propertyName.getter(&type metadata for SendPaymentSlots, &protocol witness table for SendPaymentSlots);
    String.toSpeakableString.getter();

    v8 = type metadata accessor for SpeakableString();
    (*(*(v8 - 8) + 56))(v57, 0, 1);
    v9 = swift_task_alloc();
    *(v74 + 352) = v9;
    *v9 = *(v74 + 136);
    v9[1] = SendPaymentNeedsValueStrategy.makePromptForValue(resolveRecord:);
    v10 = *(v74 + 280);
    v11 = *(v74 + 256);

    return SendPaymentCATs.promptForSlotValue(slot:)(v10, v11);
  }
}

{
  v8 = *v1;
  v2 = *(*v1 + 352);
  v8[17] = *v1;
  v9 = v8 + 17;
  v8[45] = v0;

  if (v0)
  {
    v5 = *v9;
    v4 = SendPaymentNeedsValueStrategy.makePromptForValue(resolveRecord:);
  }

  else
  {
    v7 = v8[43];
    outlined destroy of SpeakableString?(v8[32]);

    v3 = *v9;
    v4 = SendPaymentNeedsValueStrategy.makePromptForValue(resolveRecord:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v9 = *(v0 + 371);
  v8 = *(v0 + 370);
  v13 = *(v0 + 336);
  v14 = *(v0 + 328);
  v15 = *(v0 + 304);
  v16 = *(v0 + 280);
  v11 = *(v0 + 272);
  v12 = *(v0 + 264);
  v17 = *(v0 + 256);
  v18 = *(v0 + 248);
  v19 = *(v0 + 240);
  v7 = *(v0 + 208);
  v10 = *(v0 + 192);
  *(v0 + 136) = v0;

  outlined init with copy of GlobalsProviding(v7 + 104, v0 + 16);

  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v6);
  (*(v5 + 16))(v6);

  BaseStrategy.ttsEnabled.getter();

  static PaymentsContextProvider.needsValueContextUpdate(value:isVerbless:)(v8, v9 & 1, v18);
  v1 = type metadata accessor for NLContextUpdate();
  (*(*(v1 - 8) + 56))(v18, 0, 1);
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  default argument 3 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  _swift_stdlib_has_malloc_size();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v10[3] = type metadata accessor for AceOutput();
  v10[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v10);
  static AceOutputHelper.makeClarificationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?((v0 + 96));
  outlined destroy of NLContextUpdate?(v18);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  (*(v11 + 8))(v16, v12);

  v2 = *(*(v0 + 136) + 8);
  v3 = *(v0 + 136);

  return v2();
}

{
  v7 = v0[43];
  v1 = v0[32];
  v0[17] = v0;
  outlined destroy of SpeakableString?(v1);

  v2 = v0[45];
  v3 = v0[42];
  v8 = v0[41];
  v9 = v0[38];
  v10 = v0[35];
  v11 = v0[32];
  v12 = v0[31];
  v13 = v0[30];

  v4 = *(v0[17] + 8);
  v5 = v0[17];

  return v4();
}