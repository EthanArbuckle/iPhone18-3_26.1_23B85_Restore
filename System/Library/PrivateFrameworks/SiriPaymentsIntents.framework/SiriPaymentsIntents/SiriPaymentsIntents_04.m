uint64_t RequestPaymentHandleIntentStrategy.makeFailureHandlingIntentResponse(rchRecord:)(uint64_t a1, uint64_t a2)
{
  v3[33] = v2;
  v3[32] = a2;
  v3[31] = a1;
  v3[24] = v3;
  v3[25] = 0;
  v3[26] = 0;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  v3[34] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR) - 8) + 64) + 15;
  v3[35] = swift_task_alloc();
  v6 = type metadata accessor for TemplatingResult();
  v3[36] = v6;
  v13 = *(v6 - 8);
  v3[37] = v13;
  v7 = *(v13 + 64) + 15;
  v3[38] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v3[39] = v8;
  v14 = *(v8 - 8);
  v3[40] = v14;
  v9 = *(v14 + 64) + 15;
  v3[41] = swift_task_alloc();
  v10 = *(*(type metadata accessor for Signpost.OpenSignpost() - 8) + 64) + 15;
  v3[42] = swift_task_alloc();
  v3[25] = a2;
  v3[26] = v2;
  v11 = v3[24];

  return MEMORY[0x2822009F8](RequestPaymentHandleIntentStrategy.makeFailureHandlingIntentResponse(rchRecord:), 0);
}

uint64_t RequestPaymentHandleIntentStrategy.makeFailureHandlingIntentResponse(rchRecord:)()
{
  v22 = v0[42];
  v1 = v0[41];
  v23 = v0[40];
  v24 = v0[39];
  v0[24] = v0;
  v2 = SignpostName.makeRequestPaymentFailureHandlingIntentResponse.unsafeMutableAddressor();
  static Signpost.begin(_:)(*v2, v2[1], *(v2 + 16), v22);
  v3 = Logger.payments.unsafeMutableAddressor();
  (*(v23 + 16))(v1, v3, v24);
  v26 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v27 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v26, v25))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v18 = createStorage<A>(capacity:type:)(0);
    v19 = createStorage<A>(capacity:type:)(0);
    *(v21 + 216) = buf;
    *(v21 + 224) = v18;
    *(v21 + 232) = v19;
    serialize(_:at:)(0, (v21 + 216));
    serialize(_:at:)(0, (v21 + 216));
    *(v21 + 240) = v27;
    v20 = swift_task_alloc();
    v20[2] = v21 + 216;
    v20[3] = v21 + 224;
    v20[4] = v21 + 232;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v26, v25, "#RequestPaymentHandleIntentStrategy makeFailureHandlingIntentResponse", buf, 2u);
    destroyStorage<A>(_:count:)(v18, 0, v16);
    destroyStorage<A>(_:count:)(v19, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v10 = *(v21 + 328);
  v11 = *(v21 + 312);
  v12 = *(v21 + 264);
  v9 = *(v21 + 320);
  MEMORY[0x277D82BD8](v26);
  (*(v9 + 8))(v10, v11);

  outlined init with copy of GlobalsProviding(v12 + 144, v21 + 16);

  v13 = *(v21 + 40);
  v14 = *(v21 + 48);
  __swift_project_boxed_opaque_existential_1((v21 + 16), v13);
  v15 = (*(v14 + 48) + **(v14 + 48));
  v4 = *(*(v14 + 48) + 4);
  v5 = swift_task_alloc();
  *(v21 + 344) = v5;
  *v5 = *(v21 + 192);
  v5[1] = RequestPaymentHandleIntentStrategy.makeFailureHandlingIntentResponse(rchRecord:);
  v6 = *(v21 + 280);
  v7 = *(v21 + 256);

  return v15(v6, v7, v13, v14);
}

{
  v7 = *v1;
  v2 = *(*v1 + 344);
  *(v7 + 192) = *v1;
  v8 = (v7 + 192);
  *(v7 + 352) = v0;

  if (v0)
  {
    v5 = *v8;
    v4 = RequestPaymentHandleIntentStrategy.makeFailureHandlingIntentResponse(rchRecord:);
  }

  else
  {
    v3 = *v8;
    v4 = RequestPaymentHandleIntentStrategy.makeFailureHandlingIntentResponse(rchRecord:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v1 = v0[37];
  v2 = v0[36];
  v3 = v0[35];
  v0[24] = v0;
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v19 = v35[42];
    outlined destroy of TemplatingResult?(v35[35]);
    __swift_destroy_boxed_opaque_existential_0(v35 + 2);
    v35[22] = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v35[23] = v7;
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](countAndFlagsBits);

    type metadata accessor for INRequestPaymentIntent();
    DefaultStringInterpolation.appendInterpolation(_:)();
    v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](v9);

    v16 = v35[22];
    v15 = v35[23];

    outlined destroy of String.UTF8View((v35 + 22));
    v18 = MEMORY[0x26D620710](v16, v15);
    v17 = v10;
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    swift_allocError();
    *v11 = v18;
    *(v11 + 8) = v17;
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0;
    *(v11 + 40) = 0;
    *(v11 + 48) = 16;
    swift_willThrow();
    $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
    outlined destroy of Signpost.OpenSignpost(v19);
    v12 = v35[42];
    v20 = v35[41];
    v21 = v35[38];
    v22 = v35[35];
    v23 = v35[34];

    v5 = *(v35[24] + 8);
    v13 = v35[24];
  }

  else
  {
    v30 = v35[42];
    v31 = v35[41];
    v32 = v35[38];
    v29 = v35[36];
    v33 = v35[35];
    v34 = v35[34];
    v26 = v35[33];
    v27 = v35[31];
    v28 = v35[37];
    (*(v28 + 32))();
    __swift_destroy_boxed_opaque_existential_0(v35 + 2);

    outlined init with copy of GlobalsProviding(v26 + 104, (v35 + 7));

    v25 = v35[10];
    v24 = v35[11];
    __swift_project_boxed_opaque_existential_1(v35 + 7, v25);
    (*(v24 + 16))(v25);

    BaseStrategy.ttsEnabled.getter();

    v4 = type metadata accessor for NLContextUpdate();
    (*(*(v4 - 8) + 56))(v34, 1);
    v35[17] = 0;
    v35[18] = 0;
    v35[19] = 0;
    v35[20] = 0;
    v35[21] = 0;
    default argument 3 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    _swift_stdlib_has_malloc_size();
    default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    v27[3] = type metadata accessor for AceOutput();
    v27[4] = MEMORY[0x277D5C1D8];
    __swift_allocate_boxed_opaque_existential_1(v27);
    static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

    outlined destroy of FlowActivity?(v35 + 17);
    outlined destroy of NLContextUpdate?(v34);
    __swift_destroy_boxed_opaque_existential_0(v35 + 12);
    __swift_destroy_boxed_opaque_existential_0(v35 + 7);
    (*(v28 + 8))(v32, v29);
    $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
    outlined destroy of Signpost.OpenSignpost(v30);

    v5 = *(v35[24] + 8);
    v6 = v35[24];
  }

  return v5();
}

{
  v6 = v0[42];
  v0[24] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  outlined destroy of Signpost.OpenSignpost(v6);
  v1 = v0[44];
  v2 = v0[42];
  v7 = v0[41];
  v8 = v0[38];
  v9 = v0[35];
  v10 = v0[34];

  v3 = *(v0[24] + 8);
  v4 = v0[24];

  return v3();
}

uint64_t RequestPaymentHandleIntentStrategy.init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

uint64_t INRequestPaymentIntentResponseCode.speakable.getter(uint64_t a1)
{
  v9 = a1;
  v7 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v8 = v1;
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x26D620F90](countAndFlagsBits);

  INBalanceType.rawValue.getter();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x26D620F90](v3);

  v6 = v7;
  v5 = v8;

  outlined destroy of String.UTF8View(&v7);
  MEMORY[0x26D620710](v6, v5);
  return SpeakableString.init(print:speak:)();
}

uint64_t sub_268745EA8()
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo016INRequestPaymentD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo016INRequestPaymentD0CSo0ghD8ResponseCGMR) - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #1 in RequestPaymentHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo016INRequestPaymentD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo016INRequestPaymentD0CSo0ghD8ResponseCGMR) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #1 in RequestPaymentHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)();
}

uint64_t _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSo13SABaseCommandC_Tt0gq5(uint64_t result)
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

    type metadata accessor for SABaseCommand();
    v1 = static Array._allocateBufferUninitialized(minimumCapacity:)();

    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v3;

    return v1;
  }

  return result;
}

uint64_t sub_2687460F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268746138()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268746178()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268746210()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268746250()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t type metadata accessor for RequestPaymentHandleIntentStrategy()
{
  v1 = type metadata singleton initialization cache for RequestPaymentHandleIntentStrategy;
  if (!type metadata singleton initialization cache for RequestPaymentHandleIntentStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

unint64_t type metadata accessor for SABaseCommand()
{
  v2 = lazy cache variable for type metadata for SABaseCommand;
  if (!lazy cache variable for type metadata for SABaseCommand)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SABaseCommand);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type INRequestPaymentIntentResponse and conformance NSObject()
{
  v2 = lazy protocol witness table cache variable for type INRequestPaymentIntentResponse and conformance NSObject;
  if (!lazy protocol witness table cache variable for type INRequestPaymentIntentResponse and conformance NSObject)
  {
    type metadata accessor for INRequestPaymentIntentResponse();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type INRequestPaymentIntentResponse and conformance NSObject);
    return WitnessTable;
  }

  return v2;
}

uint64_t PaymentAccountInformation.description.getter(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v41 = a1;
  v42 = a2;
  v43 = a3;
  v44 = a4;
  v39 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v40 = v4;
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("balanceType: ", 0xDuLL, 1)._countAndFlagsBits;
  MEMORY[0x26D620F90](countAndFlagsBits);

  v38 = static Constants.PaymentAccountBalanceType.fromINBalanceType(_:)(a1, 0);
  if (v38 == 4)
  {
    v6 = Constants.PaymentAccountBalanceType.rawValue.getter(3);
  }

  else
  {
    v6 = Constants.PaymentAccountBalanceType.rawValue.getter(v38);
  }

  v37[0] = v6;
  v37[1] = v7;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  outlined destroy of String.UTF8View(v37);
  v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("\n\nnickname: ", 0xCuLL, 1)._countAndFlagsBits;
  MEMORY[0x26D620F90](v8);

  MEMORY[0x277D82BE0](a2);
  if (a2)
  {
    v22 = [a2 spokenPhrase];
    v23._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23._object = v9;
    MEMORY[0x277D82BD8](a2);
    MEMORY[0x277D82BD8](v22);
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v35 = v24;
  if (v24._object)
  {
    v36 = v35;
  }

  else
  {
    v36 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("nil", 3uLL, 1);
  }

  v34 = v36;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  outlined destroy of String.UTF8View(&v34);
  v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("\n\norganizationName: ", 0x14uLL, 1)._countAndFlagsBits;
  MEMORY[0x26D620F90](v10);

  MEMORY[0x277D82BE0](a3);
  if (a3)
  {
    v19 = [a3 spokenPhrase];
    v20._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20._object = v11;
    MEMORY[0x277D82BD8](a3);
    MEMORY[0x277D82BD8](v19);
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v32 = v21;
  if (v21._object)
  {
    v33 = v32;
  }

  else
  {
    v33 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("nil", 3uLL, 1);
  }

  v31 = v33;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  outlined destroy of String.UTF8View(&v31);
  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("\n\ntype: ", 8uLL, 1)._countAndFlagsBits;
  MEMORY[0x26D620F90](v12);

  v30 = static Constants.PaymentAccountType.fromINAccountType(_:)(a4);
  if (v30 == 9)
  {
    v13 = Constants.PaymentAccountType.rawValue.getter(0);
  }

  else
  {
    v13 = Constants.PaymentAccountType.rawValue.getter(v30);
  }

  v29[0] = v13;
  v29[1] = v14;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  outlined destroy of String.UTF8View(v29);
  v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x26D620F90](v15);

  v18 = v39;
  v17 = v40;

  outlined destroy of String.UTF8View(&v39);
  return MEMORY[0x26D620710](v18, v17);
}

NSJSONWritingOptions static PaymentAccountInformation.from(_:)(uint64_t a1)
{
  v156 = a1;
  v171 = 0;
  v197 = 0;
  v155 = 0;
  v192 = 0;
  v189 = 0u;
  v188 = 0u;
  v182 = 0;
  v181 = 0;
  v180 = 0;
  v166 = type metadata accessor for Logger();
  v157 = v166;
  v158 = *(v166 - 8);
  v165 = v158;
  v159 = v158;
  v161 = *(v158 + 64);
  v1 = MEMORY[0x28223BE20](v156);
  v163 = (v161 + 15) & 0xFFFFFFFFFFFFFFF0;
  v160 = &v47 - v163;
  v2 = MEMORY[0x28223BE20](v1);
  v162 = &v47 - v163;
  v3 = MEMORY[0x28223BE20](v2);
  v4 = &v47 - v163;
  v164 = &v47 - v163;
  v197 = v3;
  v5 = Logger.payments.unsafeMutableAddressor();
  v167 = *(v165 + 16);
  v168 = (v165 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v167(v4, v5, v166);
  v174 = Logger.logObject.getter();
  v169 = v174;
  v173 = static os_log_type_t.debug.getter();
  v170 = v173;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v175 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v174, v173))
  {
    v6 = v155;
    v146 = static UnsafeMutablePointer.allocate(capacity:)();
    v142 = v146;
    v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v144 = 0;
    v147 = createStorage<A>(capacity:type:)(0);
    v145 = v147;
    v148 = createStorage<A>(capacity:type:)(v144);
    v179 = v146;
    v178 = v147;
    v177 = v148;
    v149 = 0;
    v150 = &v179;
    serialize(_:at:)(0, &v179);
    serialize(_:at:)(v149, v150);
    v176 = v175;
    v151 = &v47;
    MEMORY[0x28223BE20](&v47);
    v152 = &v47 - 6;
    *(&v47 - 4) = v7;
    *(&v47 - 3) = &v178;
    *(&v47 - 2) = &v177;
    v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v154 = v6;
    if (v6)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_2686B1000, v169, v170, "#PaymentAccountInformation attempting to extract account search parameters", v142, 2u);
      v140 = 0;
      destroyStorage<A>(_:count:)(v145, 0, v143);
      destroyStorage<A>(_:count:)(v148, v140, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v142, MEMORY[0x277D84B78]);

      v141 = v154;
    }
  }

  else
  {

    v141 = v155;
  }

  v137 = v141;

  v138 = *(v159 + 8);
  v139 = (v159 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v138(v164, v157);

  if (v156)
  {
    v136 = v156;
    v134 = v156;
    v192 = v156;
    isa = 0;
    v135._countAndFlagsBits = dispatch thunk of UsoEntity_common_PaymentAccount.name.getter();
    v135._object = v8;
    if (v8)
    {
      v133 = v135;
      v132 = v135;
      v180 = v135;
      type metadata accessor for INSpeakableString();

      v9.super.isa = INSpeakableString.__allocating_init(spokenPhrase:)(v132).super.isa;
      v10 = isa;
      isa = v9.super.isa;
    }

    v190 = 0;
    v131 = dispatch thunk of UsoEntity_common_PaymentAccount.bank.getter();
    if (v131)
    {
      v130 = v131;
      v125 = v131;
      v126 = dispatch thunk of UsoEntity_common_Organization.name.getter();
      v127 = v11;

      v128 = v126;
      v129 = v127;
    }

    else
    {
      v128 = 0;
      v129 = 0;
    }

    v123 = v129;
    v124 = v128;
    if (v129)
    {
      v121 = v124;
      v122 = v123;
      v120._object = v123;
      v120._countAndFlagsBits = v124;
      v181 = v124;
      v182 = v123;
      type metadata accessor for INSpeakableString();

      v12.super.isa = INSpeakableString.__allocating_init(spokenPhrase:)(v120).super.isa;
      v13 = v190;
      v190 = v12.super.isa;
    }

    v92 = UsoEntity_common_PaymentAccount.balanceTypeAsINType.getter();
    v90 = isa;
    v14 = isa;
    v91 = v190;
    v15 = v190;
    UsoEntity_common_PaymentAccount.accountAsINType.getter();
    v16 = v162;
    v97 = NSJSONWritingOptions.init(rawValue:)(v92);
    v98 = v17;
    v99 = v18;
    v100 = v19;
    v93 = v97;
    v94 = v17;
    v95 = v18;
    v96 = v19;
    *&v188 = v97;
    *(&v188 + 1) = v17;
    *&v189 = v18;
    *(&v189 + 1) = v19;
    v20 = Logger.payments.unsafeMutableAddressor();
    v167(v16, v20, v157);
    v21 = v98;
    v22 = v99;
    v109 = 7;
    v23 = swift_allocObject();
    v24 = v98;
    v25 = v99;
    v26 = v100;
    v101 = v23;
    v23[2] = v97;
    v23[3] = v24;
    v23[4] = v25;
    v23[5] = v26;

    v104 = 32;
    v108 = 32;
    v27 = swift_allocObject();
    v28 = v101;
    v110 = v27;
    *(v27 + 16) = partial apply for implicit closure #1 in static PaymentAccountInformation.from(_:);
    *(v27 + 24) = v28;

    v119 = Logger.logObject.getter();
    v102 = v119;
    v118 = static os_log_type_t.debug.getter();
    v103 = v118;
    v105 = 17;
    v113 = swift_allocObject();
    v106 = v113;
    *(v113 + 16) = v104;
    v114 = swift_allocObject();
    v107 = v114;
    *(v114 + 16) = 8;
    v29 = swift_allocObject();
    v30 = v110;
    v111 = v29;
    *(v29 + 16) = _s2os18OSLogInterpolationV06appendC0_5align7privacyyxyXA_AA0B15StringAlignmentVAA0B7PrivacyVts06CustomG11ConvertibleRzlFSSycfu_TA_0;
    *(v29 + 24) = v30;
    v31 = swift_allocObject();
    v32 = v111;
    v117 = v31;
    v112 = v31;
    *(v31 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v31 + 24) = v32;
    v115 = _allocateUninitializedArray<A>(_:)();
    v116 = v33;

    v34 = v113;
    v35 = v116;
    *v116 = partial apply for closure #1 in OSLogArguments.append(_:);
    v35[1] = v34;

    v36 = v114;
    v37 = v116;
    v116[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v37[3] = v36;

    v38 = v116;
    v39 = v117;
    v116[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v38[5] = v39;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v119, v118))
    {
      v40 = v137;
      v83 = static UnsafeMutablePointer.allocate(capacity:)();
      v80 = v83;
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v84 = createStorage<A>(capacity:type:)(0);
      v82 = v84;
      v86 = 1;
      v85 = createStorage<A>(capacity:type:)(1);
      v187 = v83;
      v186 = v84;
      v185 = v85;
      v87 = &v187;
      serialize(_:at:)(2, &v187);
      serialize(_:at:)(v86, v87);
      v183 = partial apply for closure #1 in OSLogArguments.append(_:);
      v184 = v106;
      closure #1 in osLogInternal(_:log:type:)(&v183, v87, &v186, &v185);
      v88 = v40;
      v89 = v40;
      if (v40)
      {
        v78 = 0;

        __break(1u);
      }

      else
      {
        v183 = partial apply for closure #1 in OSLogArguments.append(_:);
        v184 = v107;
        closure #1 in osLogInternal(_:log:type:)(&v183, &v187, &v186, &v185);
        v76 = 0;
        v77 = 0;
        v183 = partial apply for closure #1 in OSLogArguments.append(_:);
        v184 = v112;
        closure #1 in osLogInternal(_:log:type:)(&v183, &v187, &v186, &v185);
        v74 = 0;
        v75 = 0;
        _os_log_impl(&dword_2686B1000, v102, v103, "#PaymentAccountInformation obtained the following parameters from the provided entity:\n%s", v80, 0xCu);
        destroyStorage<A>(_:count:)(v82, 0, v81);
        destroyStorage<A>(_:count:)(v85, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v80, MEMORY[0x277D84B78]);

        v79 = v74;
      }
    }

    else
    {
      v41 = v137;

      v79 = v41;
    }

    v68 = v79;

    v138(v162, v157);
    outlined destroy of SFRichText?(&v190);
    outlined destroy of SFRichText?(&isa);

    v69 = v93;
    v70 = v94;
    v71 = v95;
    v72 = v96;
    v73 = v68;
  }

  else
  {
    v42 = v160;
    v43 = Logger.payments.unsafeMutableAddressor();
    v167(v42, v43, v157);
    v66 = Logger.logObject.getter();
    v63 = v66;
    v65 = static os_log_type_t.debug.getter();
    v64 = v65;
    v67 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v66, v65))
    {
      v44 = v137;
      v54 = static UnsafeMutablePointer.allocate(capacity:)();
      v50 = v54;
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v52 = 0;
      v55 = createStorage<A>(capacity:type:)(0);
      v53 = v55;
      v56 = createStorage<A>(capacity:type:)(v52);
      v196 = v54;
      v195 = v55;
      v194 = v56;
      v57 = 0;
      v58 = &v196;
      serialize(_:at:)(0, &v196);
      serialize(_:at:)(v57, v58);
      v193 = v67;
      v59 = &v47;
      MEMORY[0x28223BE20](&v47);
      v60 = &v47 - 6;
      *(&v47 - 4) = v45;
      *(&v47 - 3) = &v195;
      *(&v47 - 2) = &v194;
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      v62 = v44;
      if (v44)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_2686B1000, v63, v64, "#PaymentAccountInformation entity provided was nil, early returning", v50, 2u);
        v48 = 0;
        destroyStorage<A>(_:count:)(v53, 0, v51);
        destroyStorage<A>(_:count:)(v56, v48, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v50, MEMORY[0x277D84B78]);

        v49 = v62;
      }
    }

    else
    {

      v49 = v137;
    }

    v47 = v49;

    v138(v160, v157);
    v69 = 0;
    v70 = 1;
    v71 = 0;
    v72 = 0;
    v73 = v47;
  }

  return v69;
}

uint64_t implicit closure #1 in static PaymentAccountInformation.from(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  (MEMORY[0x277D82BE0])();
  MEMORY[0x277D82BE0](a3);
  result = a1;
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

id @nonobjc INSpeakableString.init(spokenPhrase:)()
{
  v2 = MEMORY[0x26D620690]();
  v3 = [v1 initWithSpokenPhrase_];
  MEMORY[0x277D82BD8](v2);

  return v3;
}

uint64_t sub_268747E84()
{
  MEMORY[0x277D82BD8](*(v0 + 24));
  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t sub_268747EF0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t _s2os18OSLogInterpolationV06appendC0_5align7privacyyxyXA_AA0B15StringAlignmentVAA0B7PrivacyVts06CustomG11ConvertibleRzlFSSycfu_TA_0()
{
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v1 = lazy protocol witness table accessor for type PaymentAccountInformation and conformance PaymentAccountInformation();

  return implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(v4, v3, &type metadata for PaymentAccountInformation, v1);
}

unint64_t lazy protocol witness table accessor for type PaymentAccountInformation and conformance PaymentAccountInformation()
{
  v2 = lazy protocol witness table cache variable for type PaymentAccountInformation and conformance PaymentAccountInformation;
  if (!lazy protocol witness table cache variable for type PaymentAccountInformation and conformance PaymentAccountInformation)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type PaymentAccountInformation and conformance PaymentAccountInformation);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26874805C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26874809C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t type metadata accessor for INSpeakableString()
{
  v2 = lazy cache variable for type metadata for INSpeakableString;
  if (!lazy cache variable for type metadata for INSpeakableString)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for INSpeakableString);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for PaymentAccountInformation(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFE && *(a1 + 32))
    {
      v5 = *a1 + 2147483646;
    }

    else
    {
      v4 = -1;
      if (*(a1 + 8) < 0x100000000uLL)
      {
        v4 = *(a1 + 8);
      }

      v2 = v4 - 1;
      if (v4 - 1 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PaymentAccountInformation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t TemplatingResult.resultSectionsAsString.getter()
{
  v6 = v0;
  v5 = TemplatingResult.sections.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11SiriKitFlow17TemplatingSectionVGMd, &_sSay11SiriKitFlow17TemplatingSectionVGMR);
  lazy protocol witness table accessor for type [TemplatingSection] and conformance [A]();
  v2 = Sequence.compactMap<A>(_:)();
  outlined destroy of [SFCardSection](&v5);
  v4 = v2;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v3 = BidirectionalCollection<>.joined(separator:)();

  outlined destroy of [SFCardSection](&v4);
  return v3;
}

uint64_t closure #1 in TemplatingResult.resultSectionsAsString.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v13 = a2;
  v15 = 0;
  v11 = type metadata accessor for TemplatingText();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v7 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11);
  v10 = &v7 - v7;
  v15 = a1;
  TemplatingSection.content.getter();
  v12 = TemplatingText.text.getter();
  v14 = v3;
  (*(v8 + 8))(v10, v11);
  result = v12;
  v5 = v13;
  v6 = v14;
  *v13 = v12;
  v5[1] = v6;
  return result;
}

unint64_t lazy protocol witness table accessor for type [TemplatingSection] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [TemplatingSection] and conformance [A];
  if (!lazy protocol witness table cache variable for type [TemplatingSection] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11SiriKitFlow17TemplatingSectionVGMd, &_sSay11SiriKitFlow17TemplatingSectionVGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [TemplatingSection] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [String] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

id static SKIDirectInvocation.makeButtonPressDirectInvocation(buttonPress:deviceState:)(char a1, void *a2)
{
  v19[3] = 0;
  v20 = a1 & 1;
  v19[4] = a2;
  type metadata accessor for SKIDirectInvocationPayload();
  v17 = static SKIDirectInvocationPayload.from(_:)(0);
  v19[2] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
  _allocateUninitializedArray<A>(_:)();
  v9 = v2;
  v19[0] = Constants.DirectInvocationPayloadKeys.rawValue.getter(0);
  v19[1] = v3;
  v8 = MEMORY[0x277D837D0];
  _convertToAnyHashable<A>(_:)();
  v4 = Constants.DirectInvocationButtonType.rawValue.getter(a1 & 1);
  v9[8] = v8;
  v9[5] = v4;
  v9[6] = v5;
  _finalizeUninitializedArray<A>(_:)();
  outlined destroy of String.UTF8View(v19);
  Dictionary.init(dictionaryLiteral:)();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v17 setUserData_];
  MEMORY[0x277D82BD8](isa);
  v15 = objc_opt_self();
  v13 = objc_opt_self();
  v12 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v14 = DeviceState.asInvocationContext.getter();
  v16 = [v13 runSiriKitExecutorCommandWithContext_payload_];
  MEMORY[0x277D82BD8](v14);
  v18 = [v15 wrapCommandInStartLocalRequest_];
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v17);
  return v18;
}

uint64_t SearchForAccountsNeedsConfirmationStrategy.catFamily.getter()
{
  v2 = *(v0 + 96);

  return v2;
}

uint64_t SearchForAccountsNeedsConfirmationStrategy.ttsEnabled.getter()
{
  v3[5] = 0;
  outlined init with copy of GlobalsProviding(v0 + 104, v3);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v2 = dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  __swift_destroy_boxed_opaque_existential_0(v3);
  return v2 & 1;
}

void *SearchForAccountsNeedsConfirmationStrategy.init(globals:catFamily:commonLabelsProvider:)(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v15 = 0;
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v5 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  (*(v4 + 24))(v5);
  outlined init with take of CommonLabelsProviding(v14, v11 + 7);
  v7 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  (*(v6 + 16))(v7);
  outlined init with take of CommonLabelsProviding(v13, v11 + 13);

  v11[12] = a2;
  outlined init with copy of GlobalsProviding(a3, v12);
  outlined init with take of CommonLabelsProviding(v12, v11 + 2);
  __swift_destroy_boxed_opaque_existential_0(a3);

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v11;
}

uint64_t SearchForAccountsNeedsConfirmationStrategy.actionForInput(_:resolveRecord:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13 = a3;
  v8 = a1;
  v9 = a2;
  v11 = v3;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v12 = 0;
  v17 = type metadata accessor for Parse();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v10 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17);
  v16 = &v7 - v10;
  v20 = v8;
  v19 = v4;
  v18 = v3;
  Input.parse.getter();
  v5 = type metadata accessor for INSearchForAccountsIntent();
  static FlowUtil.actionForInput(parse:intentType:)(v16, v5, &protocol witness table for INSearchForAccountsIntent, v13);
  return (*(v14 + 8))(v16, v17);
}

uint64_t SearchForAccountsNeedsConfirmationStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 776) = v3;
  *(v4 + 768) = a3;
  *(v4 + 760) = a2;
  *(v4 + 752) = a1;
  *(v4 + 632) = v4;
  *(v4 + 640) = 0;
  *(v4 + 648) = 0;
  *(v4 + 656) = 0;
  *(v4 + 520) = 0;
  *(v4 + 528) = 0;
  *(v4 + 968) = 0;
  *(v4 + 584) = 0;
  *(v4 + 592) = 0;
  *(v4 + 672) = 0;
  *(v4 + 680) = 0;
  *(v4 + 688) = 0;
  *(v4 + 600) = 0;
  *(v4 + 608) = 0;
  *(v4 + 704) = 0;
  *(v4 + 720) = 0;
  *(v4 + 728) = 0;
  *(v4 + 616) = 0;
  *(v4 + 624) = 0;
  *(v4 + 744) = 0;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  *(v4 + 784) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64);
  *(v4 + 792) = swift_task_alloc();
  *(v4 + 800) = swift_task_alloc();
  v6 = type metadata accessor for TemplatingResult();
  *(v4 + 808) = v6;
  v14 = *(v6 - 8);
  *(v4 + 816) = v14;
  v7 = *(v14 + 64) + 15;
  *(v4 + 824) = swift_task_alloc();
  v8 = type metadata accessor for ParameterIdentifier();
  *(v4 + 832) = v8;
  v15 = *(v8 - 8);
  *(v4 + 840) = v15;
  v9 = *(v15 + 64) + 15;
  *(v4 + 848) = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  *(v4 + 856) = v10;
  v16 = *(v10 - 8);
  *(v4 + 864) = v16;
  v17 = *(v16 + 64);
  *(v4 + 872) = swift_task_alloc();
  *(v4 + 880) = swift_task_alloc();
  *(v4 + 640) = a2;
  *(v4 + 648) = a3;
  *(v4 + 656) = v3;
  v11 = *(v4 + 632);

  return MEMORY[0x2822009F8](SearchForAccountsNeedsConfirmationStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:), 0);
}

uint64_t SearchForAccountsNeedsConfirmationStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:)()
{
  v134 = v0;
  v1 = v0[110];
  v112 = v0[108];
  v113 = v0[107];
  v115 = v0[95];
  v0[79] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  v114 = *(v112 + 16);
  v114(v1, v2, v113);
  outlined init with copy of Any(v115, (v0 + 37));
  v116 = swift_allocObject();
  outlined init with take of Any((v0 + 37), v116 + 16);
  v122 = Logger.logObject.getter();
  v123 = static os_log_type_t.debug.getter();
  v118 = swift_allocObject();
  *(v118 + 16) = 32;
  v119 = swift_allocObject();
  *(v119 + 16) = 8;
  v117 = swift_allocObject();
  *(v117 + 16) = partial apply for implicit closure #2 in FlowFactory.findFlow(for:);
  *(v117 + 24) = v116;
  v120 = swift_allocObject();
  *(v120 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v120 + 24) = v117;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v121 = v3;

  *v121 = partial apply for closure #1 in OSLogArguments.append(_:);
  v121[1] = v118;

  v121[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v121[3] = v119;

  v121[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v121[5] = v120;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v122, v123))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v109 = createStorage<A>(capacity:type:)(0);
    v110 = createStorage<A>(capacity:type:)(1);
    v129 = buf;
    v130 = v109;
    v131 = v110;
    serialize(_:at:)(2, &v129);
    serialize(_:at:)(1, &v129);
    v132 = partial apply for closure #1 in OSLogArguments.append(_:);
    v133 = v118;
    closure #1 in osLogInternal(_:log:type:)(&v132, &v129, &v130, &v131);
    v132 = partial apply for closure #1 in OSLogArguments.append(_:);
    v133 = v119;
    closure #1 in osLogInternal(_:log:type:)(&v132, &v129, &v130, &v131);
    v132 = partial apply for closure #1 in OSLogArguments.append(_:);
    v133 = v120;
    closure #1 in osLogInternal(_:log:type:)(&v132, &v129, &v130, &v131);
    _os_log_impl(&dword_2686B1000, v122, v123, "#SearchForAccountsNeedsConfirmationStrategy makePromptForConfirmation, itemToConfirm %s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v109, 0, v107);
    destroyStorage<A>(_:count:)(v110, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v99 = *(v111 + 880);
  v100 = *(v111 + 856);
  v103 = *(v111 + 848);
  v104 = *(v111 + 832);
  v4 = *(v111 + 768);
  v98 = *(v111 + 864);
  v102 = *(v111 + 840);
  MEMORY[0x277D82BD8](v122);
  v101 = *(v98 + 8);
  v101(v99, v100);
  *(v111 + 888) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo25INSearchForAccountsIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo25INSearchForAccountsIntentCGMR);
  ParameterResolutionRecord.parameter.getter();
  rawValue._countAndFlagsBits = ParameterIdentifier.name.getter();
  rawValue._object = v5;
  *(v111 + 896) = v5;
  *(v111 + 520) = rawValue._countAndFlagsBits;
  *(v111 + 528) = v5;
  (*(v102 + 8))(v103, v104);

  v6.value = SearchForAccountsSlots.init(rawValue:)(rawValue).value;
  value = v6.value;
  if (v6.value == SiriPaymentsIntents_SearchForAccountsSlots_unknownDefault)
  {

    *(v111 + 536) = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    *(v111 + 544) = v37;
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](countAndFlagsBits);

    type metadata accessor for INSearchForAccountsIntent();
    DefaultStringInterpolation.appendInterpolation(_:)();
    v39 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](v39);

    v52 = *(v111 + 536);
    v51 = *(v111 + 544);

    outlined destroy of String.UTF8View(v111 + 536);
    v54 = MEMORY[0x26D620710](v52, v51);
    v53 = v40;
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    swift_allocError();
    *v41 = rawValue;
    *(v41 + 16) = v54;
    *(v41 + 24) = v53;
    *(v41 + 32) = 0;
    *(v41 + 40) = 0;
    *(v41 + 48) = 2;
    swift_willThrow();
  }

  else
  {
    *(v111 + 968) = v6;
    *(v111 + 552) = 0;
    *(v111 + 560) = 0;
    if (v6.value)
    {
      if (v6.value == SiriPaymentsIntents_SearchForAccountsSlots_accountType)
      {
        outlined init with copy of Any(*(v111 + 760), v111 + 456);
        if (swift_dynamicCast())
        {
          v94 = *(v111 + 712);
          v95 = 0;
        }

        else
        {
          v94 = 0;
          v95 = 1;
        }

        if ((v95 & 1) == 0)
        {
          *(v111 + 720) = v94;
          INSiriAuthorizationStatus.init(rawValue:)();
          if ((v11 & 1) == 0)
          {
            *(v111 + 728) = v10;
            v93 = static Constants.PaymentAccountType.fromINAccountType(_:)(v10);
            if (v93 == 9)
            {
              v91 = 0;
              v92 = 0;
            }

            else
            {
              v91 = Constants.PaymentAccountType.rawValue.getter(v93);
              v92 = v12;
            }

            if (v92)
            {
              *(v111 + 616) = v91;
              *(v111 + 624) = v92;

              v13 = *(v111 + 560);
              *(v111 + 552) = v91;
              *(v111 + 560) = v92;
            }
          }
        }
      }

      else if (v6.value == SiriPaymentsIntents_SearchForAccountsSlots_organizationName)
      {
        outlined init with copy of Any(*(v111 + 760), v111 + 424);
        type metadata accessor for INSpeakableString();
        if (swift_dynamicCast())
        {
          v90 = *(v111 + 696);
        }

        else
        {
          v90 = 0;
        }

        if (v90)
        {
          *(v111 + 704) = v90;
          v89 = [v90 spokenPhrase];
          v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v15 = *(v111 + 560);
          *(v111 + 552) = v14;
          *(v111 + 560) = v16;

          MEMORY[0x277D82BD8](v89);
          MEMORY[0x277D82BD8](v90);
        }
      }

      else
      {
        outlined init with copy of Any(*(v111 + 760), v111 + 328);
        v17 = swift_dynamicCast();
        if (v17)
        {
          v87 = *(v111 + 664);
          v88 = 0;
        }

        else
        {
          v87 = 0;
          v88 = 1;
        }

        if ((v88 & 1) == 0)
        {
          *(v111 + 680) = v87;
          INSiriAuthorizationStatus.init(rawValue:)();
          if ((v19 & 1) == 0)
          {
            *(v111 + 688) = v18;
            v86 = static Constants.PaymentAccountBalanceType.fromINBalanceType(_:)(v18, 0);
            if (v86 == 4)
            {
              v84 = 0;
              v85 = 0;
            }

            else
            {
              v84 = Constants.PaymentAccountBalanceType.rawValue.getter(v86);
              v85 = v20;
            }

            if (v85)
            {
              *(v111 + 600) = v84;
              *(v111 + 608) = v85;

              v21 = *(v111 + 560);
              *(v111 + 552) = v84;
              *(v111 + 560) = v85;
            }
          }
        }
      }
    }

    else
    {
      outlined init with copy of Any(*(v111 + 760), v111 + 488);
      type metadata accessor for INSpeakableString();
      if (swift_dynamicCast())
      {
        v97 = *(v111 + 736);
      }

      else
      {
        v97 = 0;
      }

      if (v97)
      {
        *(v111 + 744) = v97;
        v96 = [v97 spokenPhrase];
        v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v8 = *(v111 + 560);
        *(v111 + 552) = v7;
        *(v111 + 560) = v9;

        MEMORY[0x277D82BD8](v96);
        MEMORY[0x277D82BD8](v97);
      }
    }

    v82 = *(v111 + 552);
    v83 = *(v111 + 560);
    *(v111 + 904) = v83;

    if (v83)
    {
      v78 = *(v111 + 800);
      v79 = *(v111 + 792);
      v22 = *(v111 + 776);
      *(v111 + 584) = v82;
      *(v111 + 592) = v83;
      *(v111 + 912) = *(v22 + 96);

      SearchForAccountsSlots.rawValue.getter(value);
      SpeakableString.init(print:speak:)();
      v80 = type metadata accessor for SpeakableString();
      v81 = *(*(v80 - 8) + 56);
      v81(v78);

      SpeakableString.init(print:speak:)();
      (v81)(v79, 0, 1, v80);
      v23 = swift_task_alloc();
      *(v111 + 920) = v23;
      *v23 = *(v111 + 632);
      v23[1] = SearchForAccountsNeedsConfirmationStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:);
      v24 = *(v111 + 824);
      v25 = *(v111 + 800);
      v26 = *(v111 + 792);

      return SearchForAccountsCATs.confirmSlotValue(slot:slotValue:)(v24, v25, v26);
    }

    v28 = *(v111 + 872);
    v68 = *(v111 + 856);
    v69 = *(v111 + 760);
    v29 = Logger.payments.unsafeMutableAddressor();
    v114(v28, v29, v68);
    outlined init with copy of Any(v69, v111 + 360);
    v70 = swift_allocObject();
    outlined init with take of Any(v111 + 360, v70 + 16);
    oslog = Logger.logObject.getter();
    v77 = static os_log_type_t.debug.getter();
    v72 = swift_allocObject();
    *(v72 + 16) = 32;
    v73 = swift_allocObject();
    *(v73 + 16) = 8;
    v71 = swift_allocObject();
    *(v71 + 16) = partial apply for implicit closure #2 in FlowFactory.findFlow(for:);
    *(v71 + 24) = v70;
    v74 = swift_allocObject();
    *(v74 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v74 + 24) = v71;
    _allocateUninitializedArray<A>(_:)();
    v75 = v30;

    *v75 = partial apply for closure #1 in OSLogArguments.append(_:);
    v75[1] = v72;

    v75[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v75[3] = v73;

    v75[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v75[5] = v74;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v77))
    {
      v65 = static UnsafeMutablePointer.allocate(capacity:)();
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v66 = createStorage<A>(capacity:type:)(0);
      v67 = createStorage<A>(capacity:type:)(1);
      v124 = v65;
      v125 = v66;
      v126 = v67;
      serialize(_:at:)(2, &v124);
      serialize(_:at:)(1, &v124);
      v127 = partial apply for closure #1 in OSLogArguments.append(_:);
      v128 = v72;
      closure #1 in osLogInternal(_:log:type:)(&v127, &v124, &v125, &v126);
      v127 = partial apply for closure #1 in OSLogArguments.append(_:);
      v128 = v73;
      closure #1 in osLogInternal(_:log:type:)(&v127, &v124, &v125, &v126);
      v127 = partial apply for closure #1 in OSLogArguments.append(_:);
      v128 = v74;
      closure #1 in osLogInternal(_:log:type:)(&v127, &v124, &v125, &v126);
      _os_log_impl(&dword_2686B1000, oslog, v77, "#SearchForAccountsNeedsConfirmationStrategy failed to convert itemToConfirm %s into a valid slot value", v65, 0xCu);
      destroyStorage<A>(_:count:)(v66, 0, v64);
      destroyStorage<A>(_:count:)(v67, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v65, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v55 = *(v111 + 872);
    v56 = *(v111 + 856);
    v57 = *(v111 + 760);
    MEMORY[0x277D82BD8](oslog);
    v101(v55, v56);

    outlined init with copy of Any(v57, v111 + 392);
    v60 = String.init<A>(describing:)();
    v61 = v31;
    *(v111 + 568) = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    *(v111 + 576) = v32;
    v33 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](v33);

    type metadata accessor for INSearchForAccountsIntent();
    DefaultStringInterpolation.appendInterpolation(_:)();
    v34 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](v34);

    v59 = *(v111 + 568);
    v58 = *(v111 + 576);

    outlined destroy of String.UTF8View(v111 + 568);
    v63 = MEMORY[0x26D620710](v59, v58);
    v62 = v35;
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    swift_allocError();
    *v36 = rawValue;
    *(v36 + 16) = v60;
    *(v36 + 24) = v61;
    *(v36 + 32) = v63;
    *(v36 + 40) = v62;
    *(v36 + 48) = 9;
    swift_willThrow();
    outlined destroy of String.UTF8View(v111 + 552);
  }

  v42 = *(v111 + 880);
  v45 = *(v111 + 872);
  v46 = *(v111 + 848);
  v47 = *(v111 + 824);
  v48 = *(v111 + 800);
  v49 = *(v111 + 792);
  v50 = *(v111 + 784);

  v43 = *(*(v111 + 632) + 8);
  v44 = *(v111 + 632);

  return v43();
}

{
  v11 = *v1;
  v9 = (*v1 + 16);
  v10 = (v11 + 632);
  v2 = *(*v1 + 920);
  *(v11 + 632) = *v1;
  *(v11 + 928) = v0;

  if (v0)
  {
    v5 = *v10;
    v4 = SearchForAccountsNeedsConfirmationStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:);
  }

  else
  {
    v8 = v9[112];
    v7 = v9[98];
    outlined destroy of SpeakableString?(v9[97]);
    outlined destroy of SpeakableString?(v7);

    v3 = *v10;
    v4 = SearchForAccountsNeedsConfirmationStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v10 = v0;
  v6 = v0[111];
  v4 = v0[97];
  v1 = v0[96];
  v0[79] = v0;
  outlined init with copy of GlobalsProviding(v4 + 16, (v0 + 17));
  outlined init with copy of GlobalsProviding(v4 + 104, (v0 + 22));
  v5 = *(v4 + 96);

  v9[3] = type metadata accessor for SearchForAccountsCATs();
  v9[4] = &protocol witness table for SearchForAccountsCATs;
  v9[0] = v5;
  ConfirmationViewBuilder.init(commonLabelsProvider:deviceState:slotDisplayValueProvider:)(v0 + 17, v0 + 22, v9, v0 + 2);
  v8 = ParameterResolutionRecord.app.getter();
  v0[117] = v8;
  v2 = swift_task_alloc();
  *(v7 + 944) = v2;
  *v2 = *(v7 + 632);
  v2[1] = SearchForAccountsNeedsConfirmationStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:);

  return ConfirmationViewBuilder.makeTCCAcceptanceView(app:)(v8);
}

{
  v10 = v0[119];
  v13 = v0[113];
  v14 = v0[112];
  v15 = v0[110];
  v16 = v0[109];
  v17 = v0[106];
  v18 = v0[103];
  v11 = v0[102];
  v12 = v0[101];
  v19 = v0[100];
  v20 = v0[99];
  v21 = v0[98];
  v1 = v0[97];
  v9 = v0[94];
  v0[79] = v0;
  v0[84] = v10;
  outlined init with copy of GlobalsProviding(v1 + 104, (v0 + 27));
  SearchForAccountsNeedsConfirmationStrategy.ttsEnabled.getter();
  type metadata accessor for SAAceView();
  _allocateUninitializedArray<A>(_:)();
  v8 = v2;
  MEMORY[0x277D82BE0](v10);
  *v8 = v10;
  _finalizeUninitializedArray<A>(_:)();
  has_malloc_size = _swift_stdlib_has_malloc_size();
  static PaymentsContextProvider.confirmationContextUpdate(isSend:)(has_malloc_size & 1, v21);
  v4 = type metadata accessor for NLContextUpdate();
  (*(*(v4 - 8) + 56))(v21, 0, 1);
  v0[32] = 0;
  v0[33] = 0;
  v0[34] = 0;
  v0[35] = 0;
  v0[36] = 0;
  _swift_stdlib_has_malloc_size();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v9[3] = type metadata accessor for AceOutput();
  v9[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v9);
  static AceOutputHelper.makeConfirmationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?(v0 + 32);
  outlined destroy of NLContextUpdate?(v21);

  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  MEMORY[0x277D82BD8](v10);
  (*(v11 + 8))(v18, v12);

  outlined destroy of String.UTF8View((v0 + 69));

  v5 = *(v0[79] + 8);
  v6 = v0[79];

  return v5();
}

{
  v8 = v0[114];
  v9 = v0[113];
  v10 = v0[112];
  v7 = v0[100];
  v1 = v0[99];
  v0[79] = v0;
  outlined destroy of SpeakableString?(v1);
  outlined destroy of SpeakableString?(v7);

  outlined destroy of String.UTF8View((v0 + 69));

  v2 = v0[116];
  v3 = v0[110];
  v11 = v0[109];
  v12 = v0[106];
  v13 = v0[103];
  v14 = v0[100];
  v15 = v0[99];
  v16 = v0[98];

  v4 = *(v0[79] + 8);
  v5 = v0[79];

  return v4();
}

{
  v1 = v0[117];
  v10 = v0[113];
  v11 = v0[112];
  v9 = v0[103];
  v7 = v0[102];
  v8 = v0[101];
  v0[79] = v0;

  outlined destroy of ConfirmationViewBuilder(v0 + 2);
  (*(v7 + 8))(v9, v8);

  outlined destroy of String.UTF8View((v0 + 69));

  v2 = v0[120];
  v3 = v0[110];
  v12 = v0[109];
  v13 = v0[106];
  v14 = v0[103];
  v15 = v0[100];
  v16 = v0[99];
  v17 = v0[98];

  v4 = *(v0[79] + 8);
  v5 = v0[79];

  return v4();
}

uint64_t SearchForAccountsNeedsConfirmationStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:)(uint64_t a1)
{
  v12 = *v2;
  v10 = (*v2 + 16);
  v11 = (*v2 + 632);
  v4 = *(*v2 + 944);
  v12[79] = *v2;
  v12[119] = a1;
  v12[120] = v1;

  if (v1)
  {
    v8 = *v11;
    v7 = SearchForAccountsNeedsConfirmationStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:);
  }

  else
  {
    v5 = v10[115];

    outlined destroy of ConfirmationViewBuilder(v10);
    v6 = *v11;
    v7 = SearchForAccountsNeedsConfirmationStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:);
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t SearchForAccountsNeedsConfirmationStrategy.parseConfirmationResponse(input:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[7] = a2;
  v4[6] = a1;
  v4[2] = v4;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v6 = type metadata accessor for Parse();
  v4[10] = v6;
  v13 = *(v6 - 8);
  v4[11] = v13;
  v7 = *(v13 + 64) + 15;
  v4[12] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo25INSearchForAccountsIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo25INSearchForAccountsIntentCGMR);
  v4[13] = v8;
  v14 = *(v8 - 8);
  v4[14] = v14;
  v4[15] = *(v14 + 64);
  v4[16] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v4[17] = v9;
  v15 = *(v9 - 8);
  v4[18] = v15;
  v10 = *(v15 + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = v3;
  v11 = v4[2];

  return MEMORY[0x2822009F8](SearchForAccountsNeedsConfirmationStrategy.parseConfirmationResponse(input:resolveRecord:), 0);
}

uint64_t SearchForAccountsNeedsConfirmationStrategy.parseConfirmationResponse(input:resolveRecord:)()
{
  v45 = v0;
  v1 = v0[19];
  v24 = v0[18];
  v25 = v0[17];
  v30 = v0[16];
  v27 = v0[15];
  v28 = v0[14];
  v31 = v0[13];
  v26 = v0[8];
  v0[2] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v24 + 16))(v1, v2, v25);
  (*(v28 + 16))(v30, v26, v31);
  v29 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v32 = swift_allocObject();
  (*(v28 + 32))(v32 + v29, v30, v31);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();
  v34 = swift_allocObject();
  *(v34 + 16) = 32;
  v35 = swift_allocObject();
  *(v35 + 16) = 8;
  v33 = swift_allocObject();
  *(v33 + 16) = partial apply for implicit closure #1 in SearchForAccountsNeedsConfirmationStrategy.parseConfirmationResponse(input:resolveRecord:);
  *(v33 + 24) = v32;
  v36 = swift_allocObject();
  *(v36 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v36 + 24) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v37 = v3;

  *v37 = partial apply for closure #1 in OSLogArguments.append(_:);
  v37[1] = v34;

  v37[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v37[3] = v35;

  v37[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v37[5] = v36;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v38, v39))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v21 = createStorage<A>(capacity:type:)(0);
    v22 = createStorage<A>(capacity:type:)(1);
    v40 = buf;
    v41 = v21;
    v42 = v22;
    serialize(_:at:)(2, &v40);
    serialize(_:at:)(1, &v40);
    v43 = partial apply for closure #1 in OSLogArguments.append(_:);
    v44 = v34;
    closure #1 in osLogInternal(_:log:type:)(&v43, &v40, &v41, &v42);
    v43 = partial apply for closure #1 in OSLogArguments.append(_:);
    v44 = v35;
    closure #1 in osLogInternal(_:log:type:)(&v43, &v40, &v41, &v42);
    v43 = partial apply for closure #1 in OSLogArguments.append(_:);
    v44 = v36;
    closure #1 in osLogInternal(_:log:type:)(&v43, &v40, &v41, &v42);
    _os_log_impl(&dword_2686B1000, v38, v39, "#SearchForAccountsNeedsConfirmationStrategy parseConfirmationResponse for intent %s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v21, 0, v19);
    destroyStorage<A>(_:count:)(v22, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v15 = v23[19];
  v9 = v23[17];
  v16 = v23[16];
  v13 = v23[13];
  v17 = v23[12];
  v12 = v23[10];
  v18 = v23[9];
  v10 = v23[8];
  v4 = v23[7];
  v14 = v23[6];
  v8 = v23[18];
  v11 = v23[11];
  MEMORY[0x277D82BD8](v38);
  (*(v8 + 8))(v15, v9);
  Input.parse.getter();
  Parse.confirmationResponse.getter(v18);
  (*(v11 + 8))(v17, v12);
  ParameterResolutionRecord.intent.getter();
  type metadata accessor for INSearchForAccountsIntent();
  NeedsConfirmationAnswer.init(answeredValue:updatedIntent:)();

  v5 = *(v23[2] + 8);
  v6 = v23[2];

  return v5();
}

uint64_t implicit closure #1 in SearchForAccountsNeedsConfirmationStrategy.parseConfirmationResponse(input:resolveRecord:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo25INSearchForAccountsIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo25INSearchForAccountsIntentCGMR);
  ParameterResolutionRecord.intent.getter();
  type metadata accessor for INSearchForAccountsIntent();
  lazy protocol witness table accessor for type INSearchForAccountsIntent and conformance NSObject();
  return String.init<A>(describing:)();
}

uint64_t SearchForAccountsNeedsConfirmationStrategy.deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[12];

  __swift_destroy_boxed_opaque_existential_0(v0 + 13);
  return v3;
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.parseConfirmationResponse(input:resolveRecord:) in conformance SearchForAccountsNeedsConfirmationStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = *v3;
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return SearchForAccountsNeedsConfirmationStrategy.parseConfirmationResponse(input:resolveRecord:)(a1, a2, a3);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.shouldRequestUnlockForConfirmation(itemToConfirm:resolveRecord:) in conformance SearchForAccountsNeedsConfirmationStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4;
  *(v4 + 16) = v4;
  v5 = *(MEMORY[0x277D5B4E0] + 4);
  v6 = swift_task_alloc();
  *(v9 + 24) = v6;
  v7 = type metadata accessor for SearchForAccountsNeedsConfirmationStrategy();
  *v6 = *(v9 + 16);
  v6[1] = protocol witness for NeedsConfirmationFlowStrategyAsync.shouldRequestUnlockForConfirmation(itemToConfirm:resolveRecord:) in conformance SearchForAccountsNeedsConfirmationStrategy;

  return MEMORY[0x2821B9E10](a1, a2, v7, a4);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.shouldRequestUnlockForConfirmation(itemToConfirm:resolveRecord:) in conformance SearchForAccountsNeedsConfirmationStrategy(unsigned int a1)
{
  v5 = *v1;
  v2 = *(*v1 + 24);
  *(v5 + 16) = *v1;

  v3 = *(*(v5 + 16) + 8);

  return v3(a1);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.makePromptForConfirmation(itemToConfirm:resolveRecord:) in conformance SearchForAccountsNeedsConfirmationStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = *v3;
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return SearchForAccountsNeedsConfirmationStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:)(a1, a2, a3);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:resolveRecord:) in conformance SearchForAccountsNeedsConfirmationStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = v5;
  *(v5 + 16) = v5;
  v6 = *(MEMORY[0x277D5B4F0] + 4);
  v7 = swift_task_alloc();
  *(v10 + 24) = v7;
  v8 = type metadata accessor for SearchForAccountsNeedsConfirmationStrategy();
  *v7 = *(v10 + 16);
  v7[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821B9E28](a1, a2, a3, v8, a5);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:resolveRecord:) in conformance SearchForAccountsNeedsConfirmationStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = v5;
  *(v5 + 16) = v5;
  v6 = *(MEMORY[0x277D5B500] + 4);
  v7 = swift_task_alloc();
  *(v10 + 24) = v7;
  v8 = type metadata accessor for SearchForAccountsNeedsConfirmationStrategy();
  *v7 = *(v10 + 16);
  v7[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821B9E38](a1, a2, a3, v8, a5);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:) in conformance SearchForAccountsNeedsConfirmationStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4;
  *(v4 + 16) = v4;
  v5 = *(MEMORY[0x277D5B4F8] + 4);
  v6 = swift_task_alloc();
  *(v9 + 24) = v6;
  v7 = type metadata accessor for SearchForAccountsNeedsConfirmationStrategy();
  *v6 = *(v9 + 16);
  v6[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821B9E30](a1, a2, v7, a4);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:) in conformance SearchForAccountsNeedsConfirmationStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4;
  *(v4 + 16) = v4;
  v5 = *(MEMORY[0x277D5B508] + 4);
  v6 = swift_task_alloc();
  *(v9 + 24) = v6;
  v7 = type metadata accessor for SearchForAccountsNeedsConfirmationStrategy();
  *v6 = *(v9 + 16);
  v6[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821B9E40](a1, a2, v7, a4);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse(app:intent:parameter:) in conformance SearchForAccountsNeedsConfirmationStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = v6;
  *(v6 + 16) = v6;
  v7 = *(MEMORY[0x277D5B4E8] + 4);
  v8 = swift_task_alloc();
  *(v11 + 24) = v8;
  v9 = type metadata accessor for SearchForAccountsNeedsConfirmationStrategy();
  *v8 = *(v11 + 16);
  v8[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821B9E18](a1, a2, a3, a4, v9, a6);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:) in conformance SearchForAccountsNeedsConfirmationStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = v6;
  *(v6 + 16) = v6;
  v7 = *(MEMORY[0x277D5C0B0] + 4);
  v8 = swift_task_alloc();
  *(v11 + 24) = v8;
  v9 = type metadata accessor for SearchForAccountsNeedsConfirmationStrategy();
  *v8 = *(v11 + 16);
  v8[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, v9, a6);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:) in conformance SearchForAccountsNeedsConfirmationStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = v7;
  *(v7 + 16) = v7;
  v8 = *(MEMORY[0x277D5C0B8] + 4);
  v9 = swift_task_alloc();
  *(v12 + 24) = v9;
  v10 = type metadata accessor for SearchForAccountsNeedsConfirmationStrategy();
  *v9 = *(v12 + 16);
  v9[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, v10, a7);
}

uint64_t sub_26874CC18()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26874CC58()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26874CD30()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26874CD70()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26874CDB0()
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo25INSearchForAccountsIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo25INSearchForAccountsIntentCGMR) - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #1 in SearchForAccountsNeedsConfirmationStrategy.parseConfirmationResponse(input:resolveRecord:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo25INSearchForAccountsIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo25INSearchForAccountsIntentCGMR) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #1 in SearchForAccountsNeedsConfirmationStrategy.parseConfirmationResponse(input:resolveRecord:)();
}

uint64_t sub_26874CF50()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26874CF90()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type INSearchForAccountsIntent and conformance NSObject()
{
  v2 = lazy protocol witness table cache variable for type INSearchForAccountsIntent and conformance NSObject;
  if (!lazy protocol witness table cache variable for type INSearchForAccountsIntent and conformance NSObject)
  {
    type metadata accessor for INSearchForAccountsIntent();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type INSearchForAccountsIntent and conformance NSObject);
    return WitnessTable;
  }

  return v2;
}

uint64_t SearchForAccountsViewBuilder.catFamily.getter()
{
  v2 = *v0;

  return v2;
}

uint64_t *SearchForAccountsViewBuilder.init(catFamily:deviceState:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  memset(__b, 0, sizeof(__b));
  v9 = a1;
  v8 = a2;

  __b[0] = a1;
  outlined init with copy of GlobalsProviding(a2, v7);
  outlined init with take of CommonLabelsProviding(v7, &__b[1]);
  outlined init with copy of SearchForAccountsViewBuilder(__b, a3);
  __swift_destroy_boxed_opaque_existential_0(a2);

  return outlined destroy of SearchForAccountsViewBuilder(__b);
}

void *outlined init with copy of SearchForAccountsViewBuilder(uint64_t *a1, void *a2)
{
  v4 = *a1;

  *a2 = v4;
  v2 = a1[4];
  a2[4] = v2;
  a2[5] = a1[5];
  (**(v2 - 8))((a2 + 1), (a1 + 1));
  return a2;
}

uint64_t *outlined destroy of SearchForAccountsViewBuilder(uint64_t *a1)
{
  v1 = *a1;

  __swift_destroy_boxed_opaque_existential_0(a1 + 1);
  return a1;
}

uint64_t SearchForAccountsViewBuilder.buildSnippets(for:app:intent:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = v3;
  v4[14] = a3;
  v4[13] = a2;
  v4[12] = a1;
  v4[7] = v4;
  v4[8] = 0;
  v4[9] = 0;
  v4[10] = 0;
  v4[11] = 0;
  v4[8] = a1;
  v4[9] = a2;
  v4[10] = a3;
  v4[11] = v3;
  v5 = v4[7];
  return MEMORY[0x2822009F8](SearchForAccountsViewBuilder.buildSnippets(for:app:intent:), 0);
}

uint64_t SearchForAccountsViewBuilder.buildSnippets(for:app:intent:)()
{
  v1 = v0[15];
  v0[7] = v0;
  outlined init with copy of GlobalsProviding(v1 + 8, (v0 + 2));
  v13 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v14 = dispatch thunk of DeviceState.isWatch.getter();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v14)
  {
    v2 = swift_task_alloc();
    v12[16] = v2;
    *v2 = v12[7];
    v2[1] = SearchForAccountsViewBuilder.buildSnippets(for:app:intent:);
    v3 = v12[15];
    v4 = v12[14];
    v5 = v12[13];
    v6 = v12[12];

    return SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:)(v6, v5, v4);
  }

  else
  {
    v8 = swift_task_alloc();
    v12[17] = v8;
    *v8 = v12[7];
    v8[1] = SearchForAccountsViewBuilder.buildSnippets(for:app:intent:);
    v9 = v12[15];
    v10 = v12[13];
    v11 = v12[12];

    return SearchForAccountsViewBuilder.buildPhoneSnippets(for:app:)(v11, v10);
  }
}

{
  v4 = *(v0 + 144);
  *(v0 + 56) = v0;
  type metadata accessor for SACardSnippet();
  type metadata accessor for SAAceView();
  v5 = _arrayForceCast<A, B>(_:)();

  v1 = *(*(v0 + 56) + 8);
  v2 = *(v0 + 56);

  return v1(v5);
}

uint64_t SearchForAccountsViewBuilder.buildSnippets(for:app:intent:)(uint64_t a1)
{
  v8 = *v2;
  v3 = *(*v2 + 128);
  *(v8 + 56) = *v2;
  v9 = v8 + 56;

  if (v1)
  {
    v5 = *(*v9 + 8);
  }

  else
  {
    v4 = a1;
    v5 = *(*v9 + 8);
  }

  return v5(v4);
}

{
  v9 = *v2;
  v4 = *(*v2 + 136);
  *(v9 + 56) = *v2;
  v10 = (v9 + 56);
  *(v9 + 144) = a1;

  if (v1)
  {
    v7 = *(*v10 + 8);

    return v7(v5);
  }

  else
  {
    v6 = *v10;

    return MEMORY[0x2822009F8](SearchForAccountsViewBuilder.buildSnippets(for:app:intent:), 0);
  }
}

uint64_t SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[43] = v3;
  v4[42] = a3;
  v4[41] = a2;
  v4[40] = a1;
  v4[14] = v4;
  v4[15] = 0;
  v4[16] = 0;
  v4[17] = 0;
  v4[18] = 0;
  v4[20] = 0;
  v4[2] = 0;
  v4[3] = 0;
  v4[23] = 0;
  v4[24] = 0;
  v4[25] = 0;
  v4[26] = 0;
  v4[4] = 0;
  v4[5] = 0;
  v4[6] = 0;
  v4[7] = 0;
  v4[8] = 0;
  v4[9] = 0;
  v4[10] = 0;
  v4[11] = 0;
  v4[29] = 0;
  v4[30] = 0;
  v4[32] = 0;
  v4[12] = 0;
  v4[13] = 0;
  v5 = type metadata accessor for Logger();
  v4[44] = v5;
  v8 = *(v5 - 8);
  v4[45] = v8;
  v9 = *(v8 + 64);
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();
  v4[15] = a1;
  v4[16] = a2;
  v4[17] = a3;
  v4[18] = v3;
  v6 = v4[14];

  return MEMORY[0x2822009F8](SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:), 0);
}

uint64_t SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:)()
{
  v177 = v0;
  v1 = v0[40];
  v0[14] = v0;
  v0[19] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo16INPaymentAccountCGMd, &_sSaySo16INPaymentAccountCGMR);
  lazy protocol witness table accessor for type [INPaymentAccount] and conformance [A]();
  if (Collection.isEmpty.getter())
  {
    type metadata accessor for SAAceView();
    v97 = _allocateUninitializedArray<A>(_:)();
  }

  else
  {
    v2 = *(v160 + 392);
    v148 = *(v160 + 352);
    v150 = *(v160 + 320);
    v147 = *(v160 + 360);
    v3 = Logger.payments.unsafeMutableAddressor();
    v149 = *(v147 + 16);
    *(v160 + 400) = v149;
    *(v160 + 408) = (v147 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v149(v2, v3, v148);

    v151 = swift_allocObject();
    *(v151 + 16) = v150;

    v152 = swift_allocObject();
    *(v152 + 16) = partial apply for implicit closure #1 in SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:);
    *(v152 + 24) = v151;

    oslog = Logger.logObject.getter();
    v159 = static os_log_type_t.debug.getter();
    v154 = swift_allocObject();
    *(v154 + 16) = 32;
    v155 = swift_allocObject();
    *(v155 + 16) = 8;
    v153 = swift_allocObject();
    *(v153 + 16) = _s2os18OSLogInterpolationV06appendC0_5align7privacyyxyXA_AA0B15StringAlignmentVAA0B7PrivacyVts06CustomG11ConvertibleRzlFSSycfu_TA_1;
    *(v153 + 24) = v152;
    v156 = swift_allocObject();
    *(v156 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v156 + 24) = v153;
    *(v160 + 416) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    _allocateUninitializedArray<A>(_:)();
    v157 = v4;

    *v157 = partial apply for closure #1 in OSLogArguments.append(_:);
    v157[1] = v154;

    v157[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v157[3] = v155;

    v157[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v157[5] = v156;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v159))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v145 = createStorage<A>(capacity:type:)(0);
      v146 = createStorage<A>(capacity:type:)(1);
      v172 = buf;
      v173 = v145;
      v174 = v146;
      serialize(_:at:)(2, &v172);
      serialize(_:at:)(1, &v172);
      v175 = partial apply for closure #1 in OSLogArguments.append(_:);
      v176 = v154;
      closure #1 in osLogInternal(_:log:type:)(&v175, &v172, &v173, &v174);
      v175 = partial apply for closure #1 in OSLogArguments.append(_:);
      v176 = v155;
      closure #1 in osLogInternal(_:log:type:)(&v175, &v172, &v173, &v174);
      v175 = partial apply for closure #1 in OSLogArguments.append(_:);
      v176 = v156;
      closure #1 in osLogInternal(_:log:type:)(&v175, &v172, &v173, &v174);
      _os_log_impl(&dword_2686B1000, oslog, v159, "#SearchForAccountsHandleIntentStrategy buildWatchSnippets for accounts %s", buf, 0xCu);
      destroyStorage<A>(_:count:)(v145, 0, v143);
      destroyStorage<A>(_:count:)(v146, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v137 = *(v160 + 392);
    v138 = *(v160 + 352);
    v140 = *(v160 + 328);
    v136 = *(v160 + 360);
    MEMORY[0x277D82BD8](oslog);
    v139 = *(v136 + 8);
    *(v160 + 424) = v139;
    *(v160 + 432) = (v136 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v139(v137, v138);
    type metadata accessor for SASTItemGroup();
    v141 = SAUIAppPunchOut.__allocating_init()();
    *(v160 + 440) = v141;
    *(v160 + 160) = v141;
    *(v160 + 448) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16SASTTemplateItem_pMd, &_sSo16SASTTemplateItem_pMR);
    _allocateUninitializedArray<A>(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v141 setTemplateItems_];
    MEMORY[0x277D82BD8](isa);
    if (App.isFirstParty.getter())
    {
      v5 = *(v160 + 384);
      v132 = *(v160 + 352);
      v6 = Logger.payments.unsafeMutableAddressor();
      v149(v5, v6, v132);
      log = Logger.logObject.getter();
      v133 = static os_log_type_t.debug.getter();
      v135 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(log, v133))
      {
        v128 = static UnsafeMutablePointer.allocate(capacity:)();
        v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v129 = createStorage<A>(capacity:type:)(0);
        v130 = createStorage<A>(capacity:type:)(0);
        *(v160 + 288) = v128;
        *(v160 + 296) = v129;
        *(v160 + 304) = v130;
        serialize(_:at:)(0, (v160 + 288));
        serialize(_:at:)(0, (v160 + 288));
        *(v160 + 312) = v135;
        v131 = swift_task_alloc();
        v131[2] = v160 + 288;
        v131[3] = v160 + 296;
        v131[4] = v160 + 304;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();

        _os_log_impl(&dword_2686B1000, log, v133, "#SearchForAccountsHandleIntentStrategy buildWatchSnippets for Wallet", v128, 2u);
        destroyStorage<A>(_:count:)(v129, 0, v127);
        destroyStorage<A>(_:count:)(v130, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v128, MEMORY[0x277D84B78]);
      }

      v123 = *(v160 + 384);
      v124 = *(v160 + 352);
      v7 = *(v160 + 328);
      MEMORY[0x277D82BD8](log);
      v139(v123, v124);
      v125 = App.appIdentifier.getter();
      v126 = v8;
      if (v8)
      {
        v121 = *(v160 + 336);
        *(v160 + 96) = v125;
        *(v160 + 104) = v8;
        type metadata accessor for SASTApplicationBannerItem();
        MEMORY[0x277D82BE0](v121);

        *(v160 + 280) = SASTApplicationBannerItem.init(intent:appId:)(v121, v125, v126);
        v122 = [v141 templateItems];
        if (v122)
        {
          v119 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
          MEMORY[0x277D82BD8](v122);
          v120 = v119;
        }

        else
        {
          v120 = 0;
        }

        v171 = v120;
        if (!v120)
        {
          return _assertionFailure(_:_:file:line:flags:)();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo16SASTTemplateItem_pGMd, &_sSaySo16SASTTemplateItem_pGMR);
        Array.append(_:)();
        v118 = Array._bridgeToObjectiveC()().super.isa;

        [v141 setTemplateItems_];
        MEMORY[0x277D82BD8](v118);
      }

      v116 = *(v160 + 320);

      *(v160 + 216) = v116;
      Collection<>.makeIterator()();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo16INPaymentAccountCGGMd, &_ss16IndexingIteratorVySaySo16INPaymentAccountCGGMR);
      IndexingIterator.next()();
      v117 = *(v160 + 224);
      *(v160 + 456) = v117;
      if (v117)
      {
        *(v160 + 232) = v117;
        v10 = swift_task_alloc();
        v11 = v117;
        *(v160 + 464) = v10;
        *v10 = *(v160 + 112);
        v10[1] = SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:);
        v12 = *(v160 + 344);
        v13 = *(v160 + 328);

        return SearchForAccountsViewBuilder.makeTemplateAction(for:app:)(v11, v13);
      }

      v105 = *(v160 + 440);
      v113 = *(v160 + 416);
      v103 = *(v160 + 408);
      v104 = *(v160 + 400);
      v14 = *(v160 + 376);
      v102 = *(v160 + 352);
      outlined destroy of [SFCardSection]((v160 + 80));
      v15 = Logger.payments.unsafeMutableAddressor();
      v104(v14, v15, v102);
      MEMORY[0x277D82BE0](v105);
      v106 = swift_allocObject();
      *(v106 + 16) = v105;

      v107 = swift_allocObject();
      *(v107 + 16) = partial apply for implicit closure #2 in SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:);
      *(v107 + 24) = v106;

      v114 = Logger.logObject.getter();
      v115 = static os_log_type_t.debug.getter();
      v109 = swift_allocObject();
      *(v109 + 16) = 32;
      v110 = swift_allocObject();
      *(v110 + 16) = 8;
      v108 = swift_allocObject();
      *(v108 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)partial apply;
      *(v108 + 24) = v107;
      v111 = swift_allocObject();
      *(v111 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v111 + 24) = v108;
      _allocateUninitializedArray<A>(_:)();
      v112 = v16;

      *v112 = partial apply for closure #1 in OSLogArguments.append(_:);
      v112[1] = v109;

      v112[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v112[3] = v110;

      v112[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v112[5] = v111;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v114, v115))
      {
        v99 = static UnsafeMutablePointer.allocate(capacity:)();
        v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v100 = createStorage<A>(capacity:type:)(0);
        v101 = createStorage<A>(capacity:type:)(1);
        v166 = v99;
        v167 = v100;
        v168 = v101;
        serialize(_:at:)(2, &v166);
        serialize(_:at:)(1, &v166);
        v169 = partial apply for closure #1 in OSLogArguments.append(_:);
        v170 = v109;
        closure #1 in osLogInternal(_:log:type:)(&v169, &v166, &v167, &v168);
        v169 = partial apply for closure #1 in OSLogArguments.append(_:);
        v170 = v110;
        closure #1 in osLogInternal(_:log:type:)(&v169, &v166, &v167, &v168);
        v169 = partial apply for closure #1 in OSLogArguments.append(_:);
        v170 = v111;
        closure #1 in osLogInternal(_:log:type:)(&v169, &v166, &v167, &v168);
        _os_log_impl(&dword_2686B1000, v114, v115, "#SearchForAccountsHandleIntentStrategy buildWatchSnippets for Wallet items %s", v99, 0xCu);
        destroyStorage<A>(_:count:)(v100, 0, v98);
        destroyStorage<A>(_:count:)(v101, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v99, MEMORY[0x277D84B78]);
      }

      else
      {
      }

      v96 = *(v160 + 440);
      v92 = *(v160 + 432);
      v93 = *(v160 + 424);
      v90 = *(v160 + 376);
      v91 = *(v160 + 352);
      MEMORY[0x277D82BD8](v114);
      v93(v90, v91);
      type metadata accessor for SAAceView();
      v95 = _allocateUninitializedArray<A>(_:)();
      v94 = v17;
      MEMORY[0x277D82BE0](v96);
      *v94 = v96;
      _finalizeUninitializedArray<A>(_:)();
      MEMORY[0x277D82BD8](v96);
      v97 = v95;
      goto LABEL_60;
    }

    v88 = *(v160 + 320);

    *(v160 + 168) = v88;
    Collection<>.makeIterator()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo16INPaymentAccountCGGMd, &_ss16IndexingIteratorVySaySo16INPaymentAccountCGGMR);
    IndexingIterator.next()();
    v89 = *(v160 + 176);
    *(v160 + 488) = v89;
    if (v89)
    {
      *(v160 + 184) = v89;
      type metadata accessor for SASTColumnDataListItem();
      v18 = SAUIAppPunchOut.__allocating_init()();
      *(v160 + 496) = v18;
      *(v160 + 192) = v18;
      *(v160 + 504) = type metadata accessor for SAUIDecoratedText();
      v86 = SAUIAppPunchOut.__allocating_init()();
      *(v160 + 512) = v86;
      *(v160 + 200) = v86;
      *(v160 + 208) = SAUIAppPunchOut.__allocating_init()();
      v19 = [v89 organizationName];
      v87 = v19;
      if (v19)
      {
        v81 = [v19 spokenPhrase];
        v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v83 = v20;
        MEMORY[0x277D82BD8](v87);
        MEMORY[0x277D82BD8](v81);
        v84 = v82;
        v85 = v83;
      }

      else
      {
        v84 = 0;
        v85 = 0;
      }

      *(v160 + 520) = v85;
      if (v85)
      {
        *(v160 + 64) = v84;
        *(v160 + 72) = v85;
        if ((String.isEmpty.getter() & 1) == 0)
        {

          v80 = MEMORY[0x26D620690](v84, v85);

          [v86 setText_];
          MEMORY[0x277D82BD8](v80);
          v21 = swift_task_alloc();
          v22 = v89;
          *(v160 + 528) = v21;
          *v21 = *(v160 + 112);
          v21[1] = SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:);
          v23 = *(v160 + 344);
          v24 = v160 + 208;

          return SearchForAccountsViewBuilder.fillWatchLabelForAccountIfNeeded(account:label:)(v22, v24);
        }
      }

      v79 = [v89 nickname];
      if (v79)
      {
        v74 = [v79 spokenPhrase];
        v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v76 = v25;
        MEMORY[0x277D82BD8](v79);
        MEMORY[0x277D82BD8](v74);
        v77 = v75;
        v78 = v76;
      }

      else
      {
        v77 = 0;
        v78 = 0;
      }

      *(v160 + 544) = v78;
      if (!v78)
      {
        goto LABEL_45;
      }

      *(v160 + 48) = v77;
      *(v160 + 56) = v78;
      if (String.isEmpty.getter())
      {

LABEL_45:
        v72 = [v89 accountNumber];
        if (v72)
        {
          v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v69 = v28;
          MEMORY[0x277D82BD8](v72);
          v70 = v68;
          v71 = v69;
        }

        else
        {
          v70 = 0;
          v71 = 0;
        }

        if (v71)
        {
          *(v160 + 32) = v70;
          *(v160 + 40) = v71;
          if ((String.isEmpty.getter() & 1) == 0)
          {

            v67 = MEMORY[0x26D620690](v70, v71);

            [v86 setText_];
            MEMORY[0x277D82BD8](v67);
          }
        }

        v66 = *(v160 + 488);
        v29 = swift_task_alloc();
        v11 = v66;
        *(v160 + 568) = v29;
        *v29 = *(v160 + 112);
        v29[1] = SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:);
        v30 = *(v160 + 344);
        v13 = *(v160 + 328);

        return SearchForAccountsViewBuilder.makeTemplateAction(for:app:)(v11, v13);
      }

      v73 = MEMORY[0x26D620690](v77, v78);

      [v86 setText_];
      MEMORY[0x277D82BD8](v73);
      v26 = swift_task_alloc();
      v22 = v89;
      *(v160 + 552) = v26;
      *v26 = *(v160 + 112);
      v26[1] = SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:);
      v27 = *(v160 + 344);
      v24 = v160 + 208;

      return SearchForAccountsViewBuilder.fillWatchLabelForAccountIfNeeded(account:label:)(v22, v24);
    }

    v55 = *(v160 + 440);
    v63 = *(v160 + 416);
    v53 = *(v160 + 408);
    v54 = *(v160 + 400);
    v31 = *(v160 + 368);
    v52 = *(v160 + 352);
    outlined destroy of [SFCardSection]((v160 + 16));
    v32 = Logger.payments.unsafeMutableAddressor();
    v54(v31, v32, v52);
    MEMORY[0x277D82BE0](v55);
    v56 = swift_allocObject();
    *(v56 + 16) = v55;

    v57 = swift_allocObject();
    *(v57 + 16) = partial apply for implicit closure #3 in SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:);
    *(v57 + 24) = v56;

    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.debug.getter();
    v59 = swift_allocObject();
    *(v59 + 16) = 32;
    v60 = swift_allocObject();
    *(v60 + 16) = 8;
    v58 = swift_allocObject();
    *(v58 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)partial apply;
    *(v58 + 24) = v57;
    v61 = swift_allocObject();
    *(v61 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v61 + 24) = v58;
    _allocateUninitializedArray<A>(_:)();
    v62 = v33;

    *v62 = partial apply for closure #1 in OSLogArguments.append(_:);
    v62[1] = v59;

    v62[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v62[3] = v60;

    v62[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v62[5] = v61;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v64, v65))
    {
      v49 = static UnsafeMutablePointer.allocate(capacity:)();
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v50 = createStorage<A>(capacity:type:)(0);
      v51 = createStorage<A>(capacity:type:)(1);
      v161 = v49;
      v162 = v50;
      v163 = v51;
      serialize(_:at:)(2, &v161);
      serialize(_:at:)(1, &v161);
      v164 = partial apply for closure #1 in OSLogArguments.append(_:);
      v165 = v59;
      closure #1 in osLogInternal(_:log:type:)(&v164, &v161, &v162, &v163);
      v164 = partial apply for closure #1 in OSLogArguments.append(_:);
      v165 = v60;
      closure #1 in osLogInternal(_:log:type:)(&v164, &v161, &v162, &v163);
      v164 = partial apply for closure #1 in OSLogArguments.append(_:);
      v165 = v61;
      closure #1 in osLogInternal(_:log:type:)(&v164, &v161, &v162, &v163);
      _os_log_impl(&dword_2686B1000, v64, v65, "#SearchForAccountsHandleIntentStrategy buildWatchSnippets itemGroup items %s", v49, 0xCu);
      destroyStorage<A>(_:count:)(v50, 0, v48);
      destroyStorage<A>(_:count:)(v51, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v49, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v47 = *(v160 + 440);
    v43 = *(v160 + 432);
    v44 = *(v160 + 424);
    v41 = *(v160 + 368);
    v42 = *(v160 + 352);
    MEMORY[0x277D82BD8](v64);
    v44(v41, v42);
    type metadata accessor for SAAceView();
    v46 = _allocateUninitializedArray<A>(_:)();
    v45 = v34;
    MEMORY[0x277D82BE0](v47);
    *v45 = v47;
    _finalizeUninitializedArray<A>(_:)();
    MEMORY[0x277D82BD8](v47);
    v97 = v46;
  }

LABEL_60:
  v35 = *(v160 + 392);
  v38 = *(v160 + 384);
  v39 = *(v160 + 376);
  v40 = *(v160 + 368);

  v36 = *(*(v160 + 112) + 8);
  v37 = *(v160 + 112);

  return v36(v97);
}

{
  v66 = v0;
  v1 = v0[59];
  v0[14] = v0;
  v0[30] = v1;
  v0[31] = [v1 itemGroupView];
  if (v0[31])
  {
    v57 = *(v60 + 248);
    MEMORY[0x277D82BE0](v57);
    outlined destroy of SFRichText?((v60 + 248));
    v58 = [v57 templateItems];
    if (v58)
    {
      v6 = *(v60 + 448);
      v55 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      MEMORY[0x277D82BD8](v58);
      v56 = v55;
    }

    else
    {
      v56 = 0;
    }

    MEMORY[0x277D82BD8](v57);
    v54 = v56;
  }

  else
  {
    outlined destroy of SFRichText?((v60 + 248));
    v54 = 0;
  }

  if (v54)
  {
    v52 = *(v60 + 440);
    *(v60 + 256) = v54;

    *(v60 + 264) = v54;
    v53 = [v52 templateItems];
    if (v53)
    {
      v7 = *(v60 + 448);
      v50 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      MEMORY[0x277D82BD8](v53);
      v51 = v50;
    }

    else
    {
      v51 = 0;
    }

    *(v60 + 272) = v51;
    if (!*(v60 + 272))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo16SASTTemplateItem_pGMd, &_sSaySo16SASTTemplateItem_pGMR);
    lazy protocol witness table accessor for type [SASTTemplateItem] and conformance [A]();
    Array.append<A>(contentsOf:)();
    if (*(v60 + 272))
    {
      v8 = *(v60 + 448);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v49 = isa;
    }

    else
    {
      v49 = 0;
    }

    v46 = *(v60 + 472);
    v47 = *(v60 + 456);
    [*(v60 + 440) setTemplateItems_];
    MEMORY[0x277D82BD8](v49);

    MEMORY[0x277D82BD8](v46);
    MEMORY[0x277D82BD8](v47);
  }

  else
  {
    v45 = *(v60 + 456);
    MEMORY[0x277D82BD8](*(v60 + 472));
    MEMORY[0x277D82BD8](v45);
  }

  v44 = *(v60 + 480);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo16INPaymentAccountCGGMd, &_ss16IndexingIteratorVySaySo16INPaymentAccountCGGMR);
  IndexingIterator.next()();
  v59 = *(v60 + 224);
  *(v60 + 456) = v59;
  if (v59)
  {
    *(v60 + 232) = v59;
    v2 = swift_task_alloc();
    *(v60 + 464) = v2;
    *v2 = *(v60 + 112);
    v2[1] = SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:);
    v3 = *(v60 + 344);
    v4 = *(v60 + 328);

    return SearchForAccountsViewBuilder.makeTemplateAction(for:app:)(v59, v4);
  }

  else
  {
    v33 = *(v60 + 440);
    v41 = *(v60 + 416);
    v31 = *(v60 + 408);
    v32 = *(v60 + 400);
    v9 = *(v60 + 376);
    v30 = *(v60 + 352);
    outlined destroy of [SFCardSection]((v60 + 80));
    v10 = Logger.payments.unsafeMutableAddressor();
    v32(v9, v10, v30);
    MEMORY[0x277D82BE0](v33);
    v34 = swift_allocObject();
    *(v34 + 16) = v33;

    v35 = swift_allocObject();
    *(v35 + 16) = partial apply for implicit closure #2 in SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:);
    *(v35 + 24) = v34;

    oslog = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();
    v37 = swift_allocObject();
    *(v37 + 16) = 32;
    v38 = swift_allocObject();
    *(v38 + 16) = 8;
    v36 = swift_allocObject();
    *(v36 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)partial apply;
    *(v36 + 24) = v35;
    v39 = swift_allocObject();
    *(v39 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v39 + 24) = v36;
    _allocateUninitializedArray<A>(_:)();
    v40 = v11;

    *v40 = partial apply for closure #1 in OSLogArguments.append(_:);
    v40[1] = v37;

    v40[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v40[3] = v38;

    v40[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v40[5] = v39;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v43))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v28 = createStorage<A>(capacity:type:)(0);
      v29 = createStorage<A>(capacity:type:)(1);
      v61 = buf;
      v62 = v28;
      v63 = v29;
      serialize(_:at:)(2, &v61);
      serialize(_:at:)(1, &v61);
      v64 = partial apply for closure #1 in OSLogArguments.append(_:);
      v65 = v37;
      closure #1 in osLogInternal(_:log:type:)(&v64, &v61, &v62, &v63);
      if (v44)
      {
      }

      v64 = partial apply for closure #1 in OSLogArguments.append(_:);
      v65 = v38;
      closure #1 in osLogInternal(_:log:type:)(&v64, &v61, &v62, &v63);
      v64 = partial apply for closure #1 in OSLogArguments.append(_:);
      v65 = v39;
      closure #1 in osLogInternal(_:log:type:)(&v64, &v61, &v62, &v63);
      _os_log_impl(&dword_2686B1000, oslog, v43, "#SearchForAccountsHandleIntentStrategy buildWatchSnippets for Wallet items %s", buf, 0xCu);
      destroyStorage<A>(_:count:)(v28, 0, v26);
      destroyStorage<A>(_:count:)(v29, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v22 = *(v60 + 440);
    v18 = *(v60 + 432);
    v19 = *(v60 + 424);
    v16 = *(v60 + 376);
    v17 = *(v60 + 352);
    MEMORY[0x277D82BD8](oslog);
    v19(v16, v17);
    type metadata accessor for SAAceView();
    v21 = _allocateUninitializedArray<A>(_:)();
    v20 = v12;
    MEMORY[0x277D82BE0](v22);
    *v20 = v22;
    _finalizeUninitializedArray<A>(_:)();
    MEMORY[0x277D82BD8](v22);
    v13 = *(v60 + 392);
    v23 = *(v60 + 384);
    v24 = *(v60 + 376);
    v25 = *(v60 + 368);

    v14 = *(*(v60 + 112) + 8);
    v15 = *(v60 + 112);

    return v14(v21);
  }
}

{
  v7 = *v1;
  v2 = *(*v1 + 528);
  *(v7 + 112) = *v1;
  v8 = (v7 + 112);
  *(v7 + 536) = v0;

  if (v0)
  {
    v5 = *v8;
    v4 = SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:);
  }

  else
  {
    v3 = *v8;
    v4 = SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v1 = v0[65];
  v0[14] = v0;

  v7 = v0[61];
  v2 = swift_task_alloc();
  v6[71] = v2;
  *v2 = v6[14];
  v2[1] = SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:);
  v3 = v6[43];
  v4 = v6[41];

  return SearchForAccountsViewBuilder.makeTemplateAction(for:app:)(v7, v4);
}

{
  v7 = *v1;
  v2 = *(*v1 + 552);
  *(v7 + 112) = *v1;
  v8 = (v7 + 112);
  *(v7 + 560) = v0;

  if (v0)
  {
    v5 = *v8;
    v4 = SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:);
  }

  else
  {
    v3 = *v8;
    v4 = SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v1 = v0[68];
  v0[14] = v0;

  v7 = v0[61];
  v2 = swift_task_alloc();
  v6[71] = v2;
  *v2 = v6[14];
  v2[1] = SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:);
  v3 = v6[43];
  v4 = v6[41];

  return SearchForAccountsViewBuilder.makeTemplateAction(for:app:)(v7, v4);
}

{
  v105 = v0;
  v97 = v0[72];
  v1 = v0[62];
  v0[14] = v0;
  [v1 setAction_];
  swift_unknownObjectRelease();
  v98 = v0[26];
  MEMORY[0x277D82BE0](v98);
  v99 = [v98 text];
  if (v99)
  {
    v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v70 = v17;
    MEMORY[0x277D82BD8](v99);
    v71 = v69;
    v72 = v70;
  }

  else
  {
    v71 = 0;
    v72 = 0;
  }

  MEMORY[0x277D82BD8](v98);
  v68 = Optional<A>.isNilOrEmpty.getter(v71, v72);

  if (v68)
  {
    v18 = v96[63];
    v67 = _allocateUninitializedArray<A>(_:)();
  }

  else
  {
    v65 = v96[63];
    v66 = _allocateUninitializedArray<A>(_:)();
    v63 = v19;
    v64 = v96[26];
    MEMORY[0x277D82BE0](v64);
    *v63 = v64;
    _finalizeUninitializedArray<A>(_:)();
    v67 = v66;
  }

  if (v67)
  {
    v20 = v96[63];
    isa = Array._bridgeToObjectiveC()().super.isa;

    v62 = isa;
  }

  else
  {
    v62 = 0;
  }

  v57 = v96[64];
  v58 = v96[62];
  v21 = v96[55];
  v59 = v96[61];
  [v58 setDecoratedRows_];
  MEMORY[0x277D82BD8](v62);
  MEMORY[0x277D82BE0](v57);
  [v58 setTitle_];
  MEMORY[0x277D82BD8](v57);
  MEMORY[0x277D82BE0](v58);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v58, &protocol witness table for SASTColumnDataListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v96[26]);
  MEMORY[0x277D82BD8](v57);
  MEMORY[0x277D82BD8](v58);
  MEMORY[0x277D82BD8](v59);
  v60 = v96[73];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo16INPaymentAccountCGGMd, &_ss16IndexingIteratorVySaySo16INPaymentAccountCGGMR);
  IndexingIterator.next()();
  v93 = v96[22];
  v96[61] = v93;
  if (v93)
  {
    v96[23] = v93;
    type metadata accessor for SASTColumnDataListItem();
    v2 = SAUIAppPunchOut.__allocating_init()();
    v96[62] = v2;
    v96[24] = v2;
    v96[63] = type metadata accessor for SAUIDecoratedText();
    v94 = SAUIAppPunchOut.__allocating_init()();
    v96[64] = v94;
    v96[25] = v94;
    v96[26] = SAUIAppPunchOut.__allocating_init()();
    v3 = [v93 organizationName];
    v95 = v3;
    if (v3)
    {
      v88 = [v3 spokenPhrase];
      v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v90 = v4;
      MEMORY[0x277D82BD8](v95);
      MEMORY[0x277D82BD8](v88);
      v91 = v89;
      v92 = v90;
    }

    else
    {
      v91 = 0;
      v92 = 0;
    }

    v96[65] = v92;
    if (v92)
    {
      v96[8] = v91;
      v96[9] = v92;
      if ((String.isEmpty.getter() & 1) == 0)
      {

        v87 = MEMORY[0x26D620690](v91, v92);

        [v94 setText_];
        MEMORY[0x277D82BD8](v87);
        v5 = swift_task_alloc();
        v6 = v93;
        v96[66] = v5;
        *v5 = v96[14];
        v5[1] = SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:);
        v7 = v96[43];
        v8 = (v96 + 26);

        return SearchForAccountsViewBuilder.fillWatchLabelForAccountIfNeeded(account:label:)(v6, v8);
      }
    }

    v86 = [v93 nickname];
    if (v86)
    {
      v81 = [v86 spokenPhrase];
      v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v83 = v10;
      MEMORY[0x277D82BD8](v86);
      MEMORY[0x277D82BD8](v81);
      v84 = v82;
      v85 = v83;
    }

    else
    {
      v84 = 0;
      v85 = 0;
    }

    v96[68] = v85;
    if (!v85)
    {
      goto LABEL_23;
    }

    v96[6] = v84;
    v96[7] = v85;
    if (String.isEmpty.getter())
    {

LABEL_23:
      v79 = [v93 accountNumber];
      if (v79)
      {
        v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v76 = v13;
        MEMORY[0x277D82BD8](v79);
        v77 = v75;
        v78 = v76;
      }

      else
      {
        v77 = 0;
        v78 = 0;
      }

      if (v78)
      {
        v96[4] = v77;
        v96[5] = v78;
        if ((String.isEmpty.getter() & 1) == 0)
        {

          v74 = MEMORY[0x26D620690](v77, v78);

          [v94 setText_];
          MEMORY[0x277D82BD8](v74);
        }
      }

      v73 = v96[61];
      v14 = swift_task_alloc();
      v96[71] = v14;
      *v14 = v96[14];
      v14[1] = SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:);
      v15 = v96[43];
      v16 = v96[41];

      return SearchForAccountsViewBuilder.makeTemplateAction(for:app:)(v73, v16);
    }

    v80 = MEMORY[0x26D620690](v84, v85);

    [v94 setText_];
    MEMORY[0x277D82BD8](v80);
    v11 = swift_task_alloc();
    v6 = v93;
    v96[69] = v11;
    *v11 = v96[14];
    v11[1] = SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:);
    v12 = v96[43];
    v8 = (v96 + 26);

    return SearchForAccountsViewBuilder.fillWatchLabelForAccountIfNeeded(account:label:)(v6, v8);
  }

  v46 = v96[55];
  v54 = v96[52];
  v44 = v96[51];
  v45 = v96[50];
  v22 = v96[46];
  v43 = v96[44];
  outlined destroy of [SFCardSection](v96 + 2);
  v23 = Logger.payments.unsafeMutableAddressor();
  v45(v22, v23, v43);
  MEMORY[0x277D82BE0](v46);
  v47 = swift_allocObject();
  *(v47 + 16) = v46;

  v48 = swift_allocObject();
  *(v48 + 16) = partial apply for implicit closure #3 in SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:);
  *(v48 + 24) = v47;

  oslog = Logger.logObject.getter();
  v56 = static os_log_type_t.debug.getter();
  v50 = swift_allocObject();
  *(v50 + 16) = 32;
  v51 = swift_allocObject();
  *(v51 + 16) = 8;
  v49 = swift_allocObject();
  *(v49 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)partial apply;
  *(v49 + 24) = v48;
  v52 = swift_allocObject();
  *(v52 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v52 + 24) = v49;
  _allocateUninitializedArray<A>(_:)();
  v53 = v24;

  *v53 = partial apply for closure #1 in OSLogArguments.append(_:);
  v53[1] = v50;

  v53[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v53[3] = v51;

  v53[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v53[5] = v52;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v56))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v41 = createStorage<A>(capacity:type:)(0);
    v42 = createStorage<A>(capacity:type:)(1);
    v100 = buf;
    v101 = v41;
    v102 = v42;
    serialize(_:at:)(2, &v100);
    serialize(_:at:)(1, &v100);
    v103 = partial apply for closure #1 in OSLogArguments.append(_:);
    v104 = v50;
    closure #1 in osLogInternal(_:log:type:)(&v103, &v100, &v101, &v102);
    if (v60)
    {
    }

    v103 = partial apply for closure #1 in OSLogArguments.append(_:);
    v104 = v51;
    closure #1 in osLogInternal(_:log:type:)(&v103, &v100, &v101, &v102);
    v103 = partial apply for closure #1 in OSLogArguments.append(_:);
    v104 = v52;
    closure #1 in osLogInternal(_:log:type:)(&v103, &v100, &v101, &v102);
    _os_log_impl(&dword_2686B1000, oslog, v56, "#SearchForAccountsHandleIntentStrategy buildWatchSnippets itemGroup items %s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v41, 0, v39);
    destroyStorage<A>(_:count:)(v42, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v35 = v96[55];
  v31 = v96[54];
  v32 = v96[53];
  v29 = v96[46];
  v30 = v96[44];
  MEMORY[0x277D82BD8](oslog);
  v32(v29, v30);
  type metadata accessor for SAAceView();
  v34 = _allocateUninitializedArray<A>(_:)();
  v33 = v25;
  MEMORY[0x277D82BE0](v35);
  *v33 = v35;
  _finalizeUninitializedArray<A>(_:)();
  MEMORY[0x277D82BD8](v35);
  v26 = v96[49];
  v36 = v96[48];
  v37 = v96[47];
  v38 = v96[46];

  v27 = *(v96[14] + 8);
  v28 = v96[14];

  return v27(v34);
}

{
  v1 = v0[57];
  v7 = v0[55];
  v0[14] = v0;
  MEMORY[0x277D82BD8](v1);
  outlined destroy of [SFCardSection](v0 + 10);
  MEMORY[0x277D82BD8](v7);
  v2 = v0[60];
  v3 = v0[49];
  v8 = v0[48];
  v9 = v0[47];
  v10 = v0[46];

  v4 = *(v0[14] + 8);
  v5 = v0[14];

  return v4();
}

{
  v1 = v0[65];
  v7 = v0[64];
  v8 = v0[62];
  v9 = v0[61];
  v10 = v0[55];
  v0[14] = v0;

  MEMORY[0x277D82BD8](v0[26]);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  outlined destroy of [SFCardSection](v0 + 2);
  MEMORY[0x277D82BD8](v10);
  v2 = v0[67];
  v3 = v0[49];
  v11 = v0[48];
  v12 = v0[47];
  v13 = v0[46];

  v4 = *(v0[14] + 8);
  v5 = v0[14];

  return v4();
}

{
  v1 = v0[68];
  v7 = v0[64];
  v8 = v0[62];
  v9 = v0[61];
  v10 = v0[55];
  v0[14] = v0;

  MEMORY[0x277D82BD8](v0[26]);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  outlined destroy of [SFCardSection](v0 + 2);
  MEMORY[0x277D82BD8](v10);
  v2 = v0[70];
  v3 = v0[49];
  v11 = v0[48];
  v12 = v0[47];
  v13 = v0[46];

  v4 = *(v0[14] + 8);
  v5 = v0[14];

  return v4();
}

{
  v6 = v0[64];
  v7 = v0[62];
  v8 = v0[61];
  v9 = v0[55];
  v0[14] = v0;
  MEMORY[0x277D82BD8](v0[26]);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  outlined destroy of [SFCardSection](v0 + 2);
  MEMORY[0x277D82BD8](v9);
  v1 = v0[73];
  v2 = v0[49];
  v10 = v0[48];
  v11 = v0[47];
  v12 = v0[46];

  v3 = *(v0[14] + 8);
  v4 = v0[14];

  return v3();
}

uint64_t SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:)(uint64_t a1)
{
  v9 = *v2;
  v4 = *(*v2 + 464);
  v9[14] = *v2;
  v10 = v9 + 14;
  v9[59] = a1;
  v9[60] = v1;

  if (v1)
  {
    v7 = *v10;
    v6 = SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:);
  }

  else
  {
    v5 = *v10;
    v6 = SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:);
  }

  return MEMORY[0x2822009F8](v6, 0);
}

{
  v9 = *v2;
  v4 = *(*v2 + 568);
  v9[14] = *v2;
  v10 = v9 + 14;
  v9[72] = a1;
  v9[73] = v1;

  if (v1)
  {
    v7 = *v10;
    v6 = SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:);
  }

  else
  {
    v5 = *v10;
    v6 = SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:);
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t SearchForAccountsViewBuilder.buildPhoneSnippets(for:app:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 304) = v2;
  *(v3 + 296) = a2;
  *(v3 + 288) = a1;
  *(v3 + 144) = v3;
  *(v3 + 152) = 0;
  *(v3 + 160) = 0;
  *(v3 + 168) = 0;
  *(v3 + 192) = 0;
  *(v3 + 200) = 0;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 224) = 0;
  *(v3 + 232) = 0;
  *(v3 + 240) = 0;
  *(v3 + 248) = 0;
  *(v3 + 544) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  *(v3 + 88) = 0;
  *(v3 + 96) = 0;
  *(v3 + 104) = 0;
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64);
  *(v3 + 312) = swift_task_alloc();
  *(v3 + 320) = swift_task_alloc();
  v4 = type metadata accessor for TemplatingResult();
  *(v3 + 328) = v4;
  v13 = *(v4 - 8);
  *(v3 + 336) = v13;
  v5 = *(v13 + 64) + 15;
  *(v3 + 344) = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  *(v3 + 352) = v6;
  v14 = *(v6 - 8);
  *(v3 + 360) = v14;
  v7 = *(v14 + 64) + 15;
  *(v3 + 368) = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  *(v3 + 376) = v8;
  v15 = *(v8 - 8);
  *(v3 + 384) = v15;
  v9 = *(v15 + 64) + 15;
  *(v3 + 392) = swift_task_alloc();
  *(v3 + 152) = a1;
  *(v3 + 160) = a2;
  *(v3 + 168) = v2;
  v10 = *(v3 + 144);

  return MEMORY[0x2822009F8](SearchForAccountsViewBuilder.buildPhoneSnippets(for:app:), 0);
}

uint64_t SearchForAccountsViewBuilder.buildPhoneSnippets(for:app:)()
{
  v56 = v0;
  v1 = v0[36];
  v0[18] = v0;
  v0[22] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo16INPaymentAccountCGMd, &_sSaySo16INPaymentAccountCGMR);
  lazy protocol witness table accessor for type [INPaymentAccount] and conformance [A]();
  if (Collection.isEmpty.getter())
  {
    type metadata accessor for SACardSnippet();
    v27 = _allocateUninitializedArray<A>(_:)();
  }

  else
  {
    v2 = v50[49];
    v39 = v50[47];
    v40 = v50[36];
    v38 = v50[48];
    v3 = Logger.payments.unsafeMutableAddressor();
    (*(v38 + 16))(v2, v3, v39);

    v41 = swift_allocObject();
    *(v41 + 16) = v40;

    v42 = swift_allocObject();
    *(v42 + 16) = partial apply for implicit closure #1 in SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:);
    *(v42 + 24) = v41;

    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    v44 = swift_allocObject();
    *(v44 + 16) = 32;
    v45 = swift_allocObject();
    *(v45 + 16) = 8;
    v43 = swift_allocObject();
    *(v43 + 16) = _s2os18OSLogInterpolationV06appendC0_5align7privacyyxyXA_AA0B15StringAlignmentVAA0B7PrivacyVts06CustomG11ConvertibleRzlFSSycfu_TA_1;
    *(v43 + 24) = v42;
    v46 = swift_allocObject();
    *(v46 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v46 + 24) = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    _allocateUninitializedArray<A>(_:)();
    v47 = v4;

    *v47 = partial apply for closure #1 in OSLogArguments.append(_:);
    v47[1] = v44;

    v47[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v47[3] = v45;

    v47[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v47[5] = v46;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v48, v49))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v36 = createStorage<A>(capacity:type:)(0);
      v37 = createStorage<A>(capacity:type:)(1);
      v51 = buf;
      v52 = v36;
      v53 = v37;
      serialize(_:at:)(2, &v51);
      serialize(_:at:)(1, &v51);
      v54 = partial apply for closure #1 in OSLogArguments.append(_:);
      v55 = v44;
      closure #1 in osLogInternal(_:log:type:)(&v54, &v51, &v52, &v53);
      v54 = partial apply for closure #1 in OSLogArguments.append(_:);
      v55 = v45;
      closure #1 in osLogInternal(_:log:type:)(&v54, &v51, &v52, &v53);
      v54 = partial apply for closure #1 in OSLogArguments.append(_:);
      v55 = v46;
      closure #1 in osLogInternal(_:log:type:)(&v54, &v51, &v52, &v53);
      _os_log_impl(&dword_2686B1000, v48, v49, "#SearchForAccountsHandleIntentStrategy buildSnippet for accounts %s", buf, 0xCu);
      destroyStorage<A>(_:count:)(v36, 0, v34);
      destroyStorage<A>(_:count:)(v37, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v31 = v50[49];
    v32 = v50[47];
    v33 = v50[36];
    v30 = v50[48];
    MEMORY[0x277D82BD8](v48);
    (*(v30 + 8))(v31, v32);
    type metadata accessor for INPaymentAccount();
    if (MEMORY[0x26D620910](v33) <= 1)
    {
      v12 = v50[36];
      Array.subscript.getter();
      v22 = v50[23];
      v50[64] = v22;
      v13 = swift_task_alloc();
      v6 = v22;
      v50[65] = v13;
      *v13 = v50[18];
      v13[1] = SearchForAccountsViewBuilder.buildPhoneSnippets(for:app:);
      v14 = v50[38];
      v8 = v50[37];

      return SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:)(v6, v8);
    }

    v28 = v50[36];
    v50[50] = type metadata accessor for SFCardSection();
    v50[25] = Array.init()();

    v50[26] = v28;
    Collection<>.makeIterator()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo16INPaymentAccountCGGMd, &_ss16IndexingIteratorVySaySo16INPaymentAccountCGGMR);
    IndexingIterator.next()();
    v29 = v50[27];
    v50[51] = v29;
    if (v29)
    {
      v50[28] = v29;
      v5 = swift_task_alloc();
      v6 = v29;
      v50[52] = v5;
      *v5 = v50[18];
      v5[1] = SearchForAccountsViewBuilder.buildPhoneSnippets(for:app:);
      v7 = v50[38];
      v8 = v50[37];

      return SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:)(v6, v8);
    }

    v10 = v50[37];
    outlined destroy of [SFCardSection](v50 + 6);
    type metadata accessor for SACardSnippet();
    v26 = _allocateUninitializedArray<A>(_:)();
    v25 = v11;
    v23 = v50[25];

    App.appIdentifier.getter();
    default argument 3 of static SACardSnippet.makeFromCardSections(cardSections:shouldGenerateAceId:sashBundleId:referencedCommands:)();
    v24 = static SACardSnippet.makeFromCardSections(cardSections:shouldGenerateAceId:sashBundleId:referencedCommands:)();

    *v25 = v24;
    _finalizeUninitializedArray<A>(_:)();
    outlined destroy of [SFCardSection](v50 + 25);
    v27 = v26;
  }

  v15 = v50[49];
  v18 = v50[46];
  v19 = v50[43];
  v20 = v50[40];
  v21 = v50[39];

  v16 = *(v50[18] + 8);
  v17 = v50[18];

  return v16(v27);
}

{
  v1 = v0[53];
  v86 = v0[51];
  v83 = v0[50];
  v81 = v0[46];
  v79 = v0[45];
  v80 = v0[44];
  v0[18] = v0;
  v0[29] = v1;
  type metadata accessor for SFCard();
  v84 = SAUIAppPunchOut.__allocating_init()();
  v0[55] = v84;
  v0[30] = v84;
  UUID.init()();
  v2 = UUID.uuidString.getter();
  v82 = MEMORY[0x26D620690](v2);
  (*(v79 + 8))(v81, v80);

  [v84 setCardId_];
  MEMORY[0x277D82BD8](v82);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v84 setCardSections_];
  MEMORY[0x277D82BD8](isa);
  type metadata accessor for SFRowCardSection();
  v87 = SAUIAppPunchOut.__allocating_init()();
  v0[56] = v87;
  v0[31] = v87;
  v0[32] = 0;
  v3 = [v86 organizationName];
  v88 = v3;
  if (v3)
  {
    v72 = [v3 spokenPhrase];
    v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v74 = v8;
    MEMORY[0x277D82BD8](v88);
    MEMORY[0x277D82BD8](v72);
    v75 = v73;
    v76 = v74;
  }

  else
  {
    v75 = 0;
    v76 = 0;
  }

  if (v76)
  {
    *(v78 + 112) = v75;
    *(v78 + 120) = v76;
    if ((String.isEmpty.getter() & 1) == 0)
    {
      type metadata accessor for SFRichText();

      v9 = @nonobjc SFRichText.__allocating_init(string:)(v75, v76);
      v10 = *(v78 + 256);
      *(v78 + 256) = v9;
      MEMORY[0x277D82BD8](v10);

      v71 = MEMORY[0x26D620690](v75, v76);

      [v84 setTitle_];
      MEMORY[0x277D82BD8](v71);

      goto LABEL_27;
    }
  }

  v70 = [*(v78 + 408) nickname];
  if (v70)
  {
    v65 = [v70 spokenPhrase];
    v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v67 = v11;
    MEMORY[0x277D82BD8](v70);
    MEMORY[0x277D82BD8](v65);
    v68 = v66;
    v69 = v67;
  }

  else
  {
    v68 = 0;
    v69 = 0;
  }

  if (v69)
  {
    *(v78 + 96) = v68;
    *(v78 + 104) = v69;
    if ((String.isEmpty.getter() & 1) == 0)
    {
      type metadata accessor for SFRichText();

      v12 = @nonobjc SFRichText.__allocating_init(string:)(v68, v69);
      v13 = *(v78 + 256);
      *(v78 + 256) = v12;
      MEMORY[0x277D82BD8](v13);

      v64 = MEMORY[0x26D620690](v68, v69);

      [v84 setTitle_];
      MEMORY[0x277D82BD8](v64);

      goto LABEL_27;
    }
  }

  v63 = [*(v78 + 408) accountNumber];
  if (v63)
  {
    v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v60 = v14;
    MEMORY[0x277D82BD8](v63);
    v61 = v59;
    v62 = v60;
  }

  else
  {
    v61 = 0;
    v62 = 0;
  }

  if (v62)
  {
    *(v78 + 80) = v61;
    *(v78 + 88) = v62;
    if ((String.isEmpty.getter() & 1) == 0)
    {
      type metadata accessor for SFRichText();

      v15 = @nonobjc SFRichText.__allocating_init(string:)(v61, v62);
      v16 = *(v78 + 256);
      *(v78 + 256) = v15;
      MEMORY[0x277D82BD8](v16);

      v58 = MEMORY[0x26D620690](v61, v62);

      [v84 setTitle_];
      MEMORY[0x277D82BD8](v58);
    }
  }

LABEL_27:
  v56 = *(v78 + 408);
  v55 = *(v78 + 256);
  MEMORY[0x277D82BE0](v55);
  [v87 setLeadingText_];
  MEMORY[0x277D82BD8](v55);
  v57 = [v56 balance];
  if (v57)
  {
    v52 = [v57 balanceType];
    MEMORY[0x277D82BD8](v57);
    v53 = v52;
    v54 = 0;
  }

  else
  {
    v53 = 0;
    v54 = 1;
  }

  *(v78 + 16) = v53;
  *(v78 + 24) = v54 & 1;
  *(v78 + 32) = 1;
  *(v78 + 40) = 0;
  if (*(v78 + 24))
  {
    if ((*(v78 + 40) & 1) == 0)
    {
      goto LABEL_40;
    }
  }

  else
  {
    *(v78 + 128) = v53;
    *(v78 + 136) = v54 & 1;
    if ((*(v78 + 40) & 1) != 0 || (*(v78 + 272) = *(v78 + 128), *(v78 + 280) = *(v78 + 32), type metadata accessor for INBalanceType(), lazy protocol witness table accessor for type INBalanceType and conformance INBalanceType(), v17 = dispatch thunk of static Equatable.== infix(_:_:)(), (v17 & 1) == 0))
    {
LABEL_40:
      v20 = static Constants.PaymentAccountType.fromINAccountType(_:)([*(v78 + 408) accountType]);
      v50 = v20;
      if (v20 == 9)
      {
        v46 = *(v78 + 448);
        v47 = *(v78 + 440);
        v48 = *(v78 + 424);
        v49 = *(v78 + 408);
        MEMORY[0x277D82BE0](v46);
        MEMORY[0x277D82BE0](v47);
        [v46 setNextCard_];
        MEMORY[0x277D82BD8](v47);
        MEMORY[0x277D82BD8](v46);
        MEMORY[0x277D82BE0](v46);
        *(v78 + 264) = v46;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13SFCardSectionCGMd, &_sSaySo13SFCardSectionCGMR);
        Array.append(_:)();
        outlined destroy of SFRichText?((v78 + 256));
        MEMORY[0x277D82BD8](v46);
        MEMORY[0x277D82BD8](v47);

        MEMORY[0x277D82BD8](v49);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo16INPaymentAccountCGGMd, &_ss16IndexingIteratorVySaySo16INPaymentAccountCGGMR);
        IndexingIterator.next()();
        v77 = *(v78 + 216);
        *(v78 + 408) = v77;
        if (v77)
        {
          *(v78 + 224) = v77;
          v4 = swift_task_alloc();
          *(v78 + 416) = v4;
          *v4 = *(v78 + 144);
          v4[1] = SearchForAccountsViewBuilder.buildPhoneSnippets(for:app:);
          v5 = *(v78 + 304);
          v6 = *(v78 + 296);

          return SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:)(v77, v6);
        }

        else
        {
          v30 = *(v78 + 296);
          outlined destroy of [SFCardSection]((v78 + 48));
          type metadata accessor for SACardSnippet();
          v38 = _allocateUninitializedArray<A>(_:)();
          v37 = v31;
          v35 = *(v78 + 200);

          App.appIdentifier.getter();
          default argument 3 of static SACardSnippet.makeFromCardSections(cardSections:shouldGenerateAceId:sashBundleId:referencedCommands:)();
          v36 = static SACardSnippet.makeFromCardSections(cardSections:shouldGenerateAceId:sashBundleId:referencedCommands:)();

          *v37 = v36;
          _finalizeUninitializedArray<A>(_:)();
          outlined destroy of [SFCardSection]((v78 + 200));
          v32 = *(v78 + 392);
          v39 = *(v78 + 368);
          v40 = *(v78 + 344);
          v41 = *(v78 + 320);
          v42 = *(v78 + 312);

          v33 = *(*(v78 + 144) + 8);
          v34 = *(v78 + 144);

          return v33(v38);
        }
      }

      else
      {
        v21 = *(v78 + 304);
        *(v78 + 544) = v20;
        *(v78 + 488) = *v21;

        Constants.PaymentAccountType.asCATIDForLoc.getter(v50);
        if (v22)
        {
          v45 = *(v78 + 320);
          String.toSpeakableString.getter();

          v23 = type metadata accessor for SpeakableString();
          (*(*(v23 - 8) + 56))(v45, 0, 1);
        }

        else
        {
          v43 = *(v78 + 320);
          v29 = type metadata accessor for SpeakableString();
          (*(*(v29 - 8) + 56))(v43, 1);
        }

        v44 = *(v78 + 312);
        v24 = type metadata accessor for SpeakableString();
        (*(*(v24 - 8) + 56))(v44, 1);
        v25 = swift_task_alloc();
        *(v78 + 496) = v25;
        *v25 = *(v78 + 144);
        v25[1] = SearchForAccountsViewBuilder.buildPhoneSnippets(for:app:);
        v26 = *(v78 + 344);
        v27 = *(v78 + 320);
        v28 = *(v78 + 312);

        return SearchForAccountsCATs.labelForEnum(accountType:balanceType:)(v26, v27, v28);
      }
    }
  }

  v51 = [*(v78 + 408) balance];
  *(v78 + 456) = v51;
  v18 = swift_task_alloc();
  *(v78 + 464) = v18;
  *v18 = *(v78 + 144);
  v18[1] = SearchForAccountsViewBuilder.buildPhoneSnippets(for:app:);
  v19 = *(v78 + 304);

  return SearchForAccountsViewBuilder.buildBalanceText(for:)(v51);
}

{
  v38 = *(v0 + 472);
  v1 = *(v0 + 448);
  *(v0 + 144) = v0;
  [v1 setTrailingText_];
  MEMORY[0x277D82BD8](v38);
  v2 = static Constants.PaymentAccountType.fromINAccountType(_:)([*(v0 + 408) accountType]);
  v39 = v2;
  if (v2 == 9)
  {
    v32 = *(v37 + 448);
    v33 = *(v37 + 440);
    v34 = *(v37 + 424);
    v35 = *(v37 + 408);
    MEMORY[0x277D82BE0](v32);
    MEMORY[0x277D82BE0](v33);
    [v32 setNextCard_];
    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](v32);
    MEMORY[0x277D82BE0](v32);
    *(v37 + 264) = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13SFCardSectionCGMd, &_sSaySo13SFCardSectionCGMR);
    Array.append(_:)();
    outlined destroy of SFRichText?((v37 + 256));
    MEMORY[0x277D82BD8](v32);
    MEMORY[0x277D82BD8](v33);

    MEMORY[0x277D82BD8](v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo16INPaymentAccountCGGMd, &_ss16IndexingIteratorVySaySo16INPaymentAccountCGGMR);
    IndexingIterator.next()();
    v36 = *(v37 + 216);
    *(v37 + 408) = v36;
    if (v36)
    {
      *(v37 + 224) = v36;
      v3 = swift_task_alloc();
      *(v37 + 416) = v3;
      *v3 = *(v37 + 144);
      v3[1] = SearchForAccountsViewBuilder.buildPhoneSnippets(for:app:);
      v4 = *(v37 + 304);
      v5 = *(v37 + 296);

      return SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:)(v36, v5);
    }

    else
    {
      v16 = *(v37 + 296);
      outlined destroy of [SFCardSection]((v37 + 48));
      type metadata accessor for SACardSnippet();
      v24 = _allocateUninitializedArray<A>(_:)();
      v23 = v17;
      v21 = *(v37 + 200);

      App.appIdentifier.getter();
      default argument 3 of static SACardSnippet.makeFromCardSections(cardSections:shouldGenerateAceId:sashBundleId:referencedCommands:)();
      v22 = static SACardSnippet.makeFromCardSections(cardSections:shouldGenerateAceId:sashBundleId:referencedCommands:)();

      *v23 = v22;
      _finalizeUninitializedArray<A>(_:)();
      outlined destroy of [SFCardSection]((v37 + 200));
      v18 = *(v37 + 392);
      v25 = *(v37 + 368);
      v26 = *(v37 + 344);
      v27 = *(v37 + 320);
      v28 = *(v37 + 312);

      v19 = *(*(v37 + 144) + 8);
      v20 = *(v37 + 144);

      return v19(v24);
    }
  }

  else
  {
    v7 = *(v37 + 304);
    *(v37 + 544) = v2;
    *(v37 + 488) = *v7;

    Constants.PaymentAccountType.asCATIDForLoc.getter(v39);
    if (v8)
    {
      v31 = *(v37 + 320);
      String.toSpeakableString.getter();

      v9 = type metadata accessor for SpeakableString();
      (*(*(v9 - 8) + 56))(v31, 0, 1);
    }

    else
    {
      v29 = *(v37 + 320);
      v15 = type metadata accessor for SpeakableString();
      (*(*(v15 - 8) + 56))(v29, 1);
    }

    v30 = *(v37 + 312);
    v10 = type metadata accessor for SpeakableString();
    (*(*(v10 - 8) + 56))(v30, 1);
    v11 = swift_task_alloc();
    *(v37 + 496) = v11;
    *v11 = *(v37 + 144);
    v11[1] = SearchForAccountsViewBuilder.buildPhoneSnippets(for:app:);
    v12 = *(v37 + 344);
    v13 = *(v37 + 320);
    v14 = *(v37 + 312);

    return SearchForAccountsCATs.labelForEnum(accountType:balanceType:)(v12, v13, v14);
  }
}

{
  v9 = *v1;
  v2 = *(*v1 + 496);
  v9[18] = *v1;
  v10 = v9 + 18;
  v9[63] = v0;

  if (v0)
  {
    v5 = *v10;
    v4 = SearchForAccountsViewBuilder.buildPhoneSnippets(for:app:);
  }

  else
  {
    v8 = v9[61];
    v7 = v9[40];
    outlined destroy of SpeakableString?(v9[39]);
    outlined destroy of SpeakableString?(v7);

    v3 = *v10;
    v4 = SearchForAccountsViewBuilder.buildPhoneSnippets(for:app:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v24 = v0[56];
  v21 = v0[43];
  v20 = v0[42];
  v22 = v0[41];
  v0[18] = v0;
  v23 = TemplatingResult.resultSectionsAsString.getter();
  v26 = v1;
  v0[8] = v23;
  v0[9] = v1;
  (*(v20 + 8))(v21, v22);
  type metadata accessor for SFRichText();

  v25 = @nonobjc SFRichText.__allocating_init(string:)(v23, v26);
  [v24 setLeadingSubtitle_];
  MEMORY[0x277D82BD8](v25);

  v27 = v0[56];
  v28 = v0[55];
  v29 = v0[53];
  v30 = v0[51];
  MEMORY[0x277D82BE0](v27);
  MEMORY[0x277D82BE0](v28);
  [v27 setNextCard_];
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BE0](v27);
  v0[33] = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13SFCardSectionCGMd, &_sSaySo13SFCardSectionCGMR);
  Array.append(_:)();
  outlined destroy of SFRichText?(v0 + 32);
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](v28);

  MEMORY[0x277D82BD8](v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo16INPaymentAccountCGGMd, &_ss16IndexingIteratorVySaySo16INPaymentAccountCGGMR);
  IndexingIterator.next()();
  v31 = v0[27];
  v0[51] = v31;
  if (v31)
  {
    v19[28] = v31;
    v2 = swift_task_alloc();
    v19[52] = v2;
    *v2 = v19[18];
    v2[1] = SearchForAccountsViewBuilder.buildPhoneSnippets(for:app:);
    v3 = v19[38];
    v4 = v19[37];

    return SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:)(v31, v4);
  }

  else
  {
    v6 = v19[37];
    outlined destroy of [SFCardSection](v19 + 6);
    type metadata accessor for SACardSnippet();
    v14 = _allocateUninitializedArray<A>(_:)();
    v13 = v7;
    v11 = v19[25];

    App.appIdentifier.getter();
    default argument 3 of static SACardSnippet.makeFromCardSections(cardSections:shouldGenerateAceId:sashBundleId:referencedCommands:)();
    v12 = static SACardSnippet.makeFromCardSections(cardSections:shouldGenerateAceId:sashBundleId:referencedCommands:)();

    *v13 = v12;
    _finalizeUninitializedArray<A>(_:)();
    outlined destroy of [SFCardSection](v19 + 25);
    v8 = v19[49];
    v15 = v19[46];
    v16 = v19[43];
    v17 = v19[40];
    v18 = v19[39];

    v9 = *(v19[18] + 8);
    v10 = v19[18];

    return v9(v14);
  }
}

{
  v1 = v0[66];
  v2 = v0[37];
  v0[18] = v0;
  v0[24] = v1;
  type metadata accessor for SACardSnippet();
  v10 = _allocateUninitializedArray<A>(_:)();
  v9 = v3;
  App.appIdentifier.getter();
  default argument 3 of static SACardSnippet.makeFromCardSections(cardSections:shouldGenerateAceId:sashBundleId:referencedCommands:)();
  v8 = static SACardSnippet.makeFromCardSections(cardSections:shouldGenerateAceId:sashBundleId:referencedCommands:)();

  *v9 = v8;
  _finalizeUninitializedArray<A>(_:)();

  v4 = v0[49];
  v11 = v0[46];
  v12 = v0[43];
  v13 = v0[40];
  v14 = v0[39];

  v5 = *(v0[18] + 8);
  v6 = v0[18];

  return v5(v10);
}

{
  v1 = v0[51];
  v0[18] = v0;
  MEMORY[0x277D82BD8](v1);
  outlined destroy of [SFCardSection](v0 + 6);
  outlined destroy of [SFCardSection](v0 + 25);
  v2 = v0[54];
  v3 = v0[49];
  v7 = v0[46];
  v8 = v0[43];
  v9 = v0[40];
  v10 = v0[39];

  v4 = *(v0[18] + 8);
  v5 = v0[18];

  return v4();
}

{
  v1 = v0[57];
  v7 = v0[56];
  v8 = v0[55];
  v9 = v0[53];
  v10 = v0[51];
  v0[18] = v0;
  MEMORY[0x277D82BD8](v1);
  outlined destroy of SFRichText?(v0 + 32);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);

  MEMORY[0x277D82BD8](v10);
  outlined destroy of [SFCardSection](v0 + 6);
  outlined destroy of [SFCardSection](v0 + 25);
  v2 = v0[60];
  v3 = v0[49];
  v11 = v0[46];
  v12 = v0[43];
  v13 = v0[40];
  v14 = v0[39];

  v4 = *(v0[18] + 8);
  v5 = v0[18];

  return v4();
}

{
  v8 = v0[61];
  v9 = v0[56];
  v10 = v0[55];
  v11 = v0[53];
  v12 = v0[51];
  v7 = v0[40];
  v1 = v0[39];
  v0[18] = v0;
  outlined destroy of SpeakableString?(v1);
  outlined destroy of SpeakableString?(v7);

  outlined destroy of SFRichText?(v0 + 32);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);

  MEMORY[0x277D82BD8](v12);
  outlined destroy of [SFCardSection](v0 + 6);
  outlined destroy of [SFCardSection](v0 + 25);
  v2 = v0[63];
  v3 = v0[49];
  v13 = v0[46];
  v14 = v0[43];
  v15 = v0[40];
  v16 = v0[39];

  v4 = *(v0[18] + 8);
  v5 = v0[18];

  return v4();
}

{
  v1 = v0[64];
  v0[18] = v0;
  MEMORY[0x277D82BD8](v1);
  v2 = v0[67];
  v3 = v0[49];
  v7 = v0[46];
  v8 = v0[43];
  v9 = v0[40];
  v10 = v0[39];

  v4 = *(v0[18] + 8);
  v5 = v0[18];

  return v4();
}

uint64_t SearchForAccountsViewBuilder.buildPhoneSnippets(for:app:)(uint64_t a1)
{
  v9 = *v2;
  v4 = *(*v2 + 416);
  v9[18] = *v2;
  v10 = v9 + 18;
  v9[53] = a1;
  v9[54] = v1;

  if (v1)
  {
    v7 = *v10;
    v6 = SearchForAccountsViewBuilder.buildPhoneSnippets(for:app:);
  }

  else
  {
    v5 = *v10;
    v6 = SearchForAccountsViewBuilder.buildPhoneSnippets(for:app:);
  }

  return MEMORY[0x2822009F8](v6, 0);
}

{
  v9 = *v2;
  v4 = *(*v2 + 464);
  *(v9 + 144) = *v2;
  v10 = (v9 + 144);
  *(v9 + 472) = a1;
  *(v9 + 480) = v1;

  if (v1)
  {
    v7 = *v10;
    v6 = SearchForAccountsViewBuilder.buildPhoneSnippets(for:app:);
  }

  else
  {

    v5 = *v10;
    v6 = SearchForAccountsViewBuilder.buildPhoneSnippets(for:app:);
  }

  return MEMORY[0x2822009F8](v6, 0);
}

{
  v9 = *v2;
  v4 = *(*v2 + 520);
  *(v9 + 144) = *v2;
  v10 = (v9 + 144);
  *(v9 + 528) = a1;
  *(v9 + 536) = v1;

  if (v1)
  {
    v7 = *v10;
    v6 = SearchForAccountsViewBuilder.buildPhoneSnippets(for:app:);
  }

  else
  {

    v5 = *v10;
    v6 = SearchForAccountsViewBuilder.buildPhoneSnippets(for:app:);
  }

  return MEMORY[0x2822009F8](v6, 0);
}

unint64_t lazy protocol witness table accessor for type [INPaymentAccount] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [INPaymentAccount] and conformance [A];
  if (!lazy protocol witness table cache variable for type [INPaymentAccount] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo16INPaymentAccountCGMd, &_sSaySo16INPaymentAccountCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [INPaymentAccount] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [INPaymentAccount] and conformance [A];
  if (!lazy protocol witness table cache variable for type [INPaymentAccount] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo16INPaymentAccountCGMd, &_sSaySo16INPaymentAccountCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [INPaymentAccount] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 240) = v2;
  *(v3 + 232) = a1;
  *(v3 + 80) = v3;
  *(v3 + 88) = 0;
  *(v3 + 96) = 0;
  *(v3 + 104) = 0;
  *(v3 + 112) = 0;
  *(v3 + 136) = 0;
  *(v3 + 152) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 168) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 184) = 0;
  *(v3 + 720) = 0;
  *(v3 + 200) = 0;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 216) = 0;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64);
  *(v3 + 248) = swift_task_alloc();
  *(v3 + 256) = swift_task_alloc();
  *(v3 + 264) = swift_task_alloc();
  *(v3 + 272) = swift_task_alloc();
  *(v3 + 280) = swift_task_alloc();
  *(v3 + 288) = swift_task_alloc();
  v4 = type metadata accessor for TemplatingResult();
  *(v3 + 296) = v4;
  v8 = *(v4 - 8);
  *(v3 + 304) = v8;
  v9 = *(v8 + 64);
  *(v3 + 312) = swift_task_alloc();
  *(v3 + 320) = swift_task_alloc();
  *(v3 + 328) = swift_task_alloc();
  *(v3 + 336) = swift_task_alloc();
  *(v3 + 344) = swift_task_alloc();
  *(v3 + 88) = a1;
  *(v3 + 96) = a2;
  *(v3 + 104) = v2;
  v5 = *(v3 + 80);

  return MEMORY[0x2822009F8](SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:), 0);
}

uint64_t SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:)()
{
  v81 = v0[29];
  v0[10] = v0;
  type metadata accessor for SFCardSection();
  v0[14] = Array.init()();
  v82 = [v81 organizationName];
  if (v82)
  {
    v75 = [v82 spokenPhrase];
    v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v77 = v1;
    MEMORY[0x277D82BD8](v82);
    MEMORY[0x277D82BD8](v75);
    v78 = v76;
    v79 = v77;
  }

  else
  {
    v78 = 0;
    v79 = 0;
  }

  *(v80 + 360) = v79;
  *(v80 + 352) = v78;
  if (v79)
  {
    *(v80 + 64) = v78;
    *(v80 + 72) = v79;
    if ((String.isEmpty.getter() & 1) == 0)
    {
      v74 = *(v80 + 288);
      v73 = *(v80 + 240);
      type metadata accessor for SFRowCardSection();
      v2 = SAUIAppPunchOut.__allocating_init()();
      *(v80 + 368) = v2;
      *(v80 + 216) = v2;
      *(v80 + 376) = *v73;

      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("organizationName", 0x10uLL, 1);
      String.toSpeakableString.getter();

      v3 = type metadata accessor for SpeakableString();
      (*(*(v3 - 8) + 56))(v74, 0, 1);
      v4 = swift_task_alloc();
      *(v80 + 384) = v4;
      *v4 = *(v80 + 80);
      v4[1] = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
      v5 = *(v80 + 344);
      v6 = *(v80 + 288);

      return SearchForAccountsCATs.labelForResponseSlot(slot:)(v5, v6);
    }
  }

  v72 = static Constants.PaymentAccountType.fromINAccountType(_:)([*(v80 + 232) accountType]);
  *(v80 + 723) = v72;
  if (v72 != 9)
  {
    *(v80 + 720) = v72;
    *(v80 + 721) = v72;
    *(v80 + 722) = 0;
    lazy protocol witness table accessor for type Constants.PaymentAccountType and conformance Constants.PaymentAccountType();
    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      v71 = *(v80 + 280);
      v70 = *(v80 + 240);
      type metadata accessor for SFRowCardSection();
      v8 = SAUIAppPunchOut.__allocating_init()();
      *(v80 + 400) = v8;
      *(v80 + 200) = v8;
      *(v80 + 408) = *v70;

      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("accountType", 0xBuLL, 1);
      String.toSpeakableString.getter();

      v9 = type metadata accessor for SpeakableString();
      *(v80 + 416) = v9;
      v10 = *(v9 - 8);
      v11 = *(v10 + 56);
      *(v80 + 424) = v11;
      *(v80 + 432) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v11(v71, 0, 1);
      v12 = swift_task_alloc();
      *(v80 + 440) = v12;
      *v12 = *(v80 + 80);
      v12[1] = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
      v5 = *(v80 + 336);
      v6 = *(v80 + 280);

      return SearchForAccountsCATs.labelForResponseSlot(slot:)(v5, v6);
    }
  }

  v69 = [*(v80 + 232) nickname];
  if (v69)
  {
    v64 = [v69 spokenPhrase];
    v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v66 = v13;
    MEMORY[0x277D82BD8](v69);
    MEMORY[0x277D82BD8](v64);
    v67 = v65;
    v68 = v66;
  }

  else
  {
    v67 = 0;
    v68 = 0;
  }

  *(v80 + 488) = v68;
  *(v80 + 480) = v67;
  if (v68)
  {
    *(v80 + 32) = v67;
    *(v80 + 40) = v68;
    if ((String.isEmpty.getter() & 1) == 0)
    {
      v63 = *(v80 + 256);
      v62 = *(v80 + 240);
      type metadata accessor for SFRowCardSection();
      v14 = SAUIAppPunchOut.__allocating_init()();
      *(v80 + 496) = v14;
      *(v80 + 184) = v14;
      *(v80 + 504) = *v62;

      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("accountNickname", 0xFuLL, 1);
      String.toSpeakableString.getter();

      v15 = type metadata accessor for SpeakableString();
      (*(*(v15 - 8) + 56))(v63, 0, 1);
      v16 = swift_task_alloc();
      *(v80 + 512) = v16;
      *v16 = *(v80 + 80);
      v16[1] = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
      v5 = *(v80 + 320);
      v6 = *(v80 + 256);

      return SearchForAccountsCATs.labelForResponseSlot(slot:)(v5, v6);
    }
  }

  v61 = [*(v80 + 232) accountNumber];
  if (v61)
  {
    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v17;
    MEMORY[0x277D82BD8](v61);
    v59 = v57;
    v60 = v58;
  }

  else
  {
    v59 = 0;
    v60 = 0;
  }

  *(v80 + 536) = v60;
  *(v80 + 528) = v59;
  if (v60)
  {
    *(v80 + 16) = v59;
    *(v80 + 24) = v60;
    if ((String.isEmpty.getter() & 1) == 0)
    {
      v56 = *(v80 + 248);
      v55 = *(v80 + 240);
      type metadata accessor for SFRowCardSection();
      v18 = SAUIAppPunchOut.__allocating_init()();
      *(v80 + 544) = v18;
      *(v80 + 168) = v18;
      *(v80 + 552) = *v55;

      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("accountNumber", 0xDuLL, 1);
      String.toSpeakableString.getter();

      v19 = type metadata accessor for SpeakableString();
      (*(*(v19 - 8) + 56))(v56, 0, 1);
      v20 = swift_task_alloc();
      *(v80 + 560) = v20;
      *v20 = *(v80 + 80);
      v20[1] = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
      v5 = *(v80 + 312);
      v6 = *(v80 + 248);

      return SearchForAccountsCATs.labelForResponseSlot(slot:)(v5, v6);
    }
  }

  v54 = [*(v80 + 232) balance];
  if (v54)
  {
    v52 = [v54 amount];
    MEMORY[0x277D82BD8](v54);
    v53 = v52;
  }

  else
  {
    v53 = 0;
  }

  *(v80 + 120) = v53;
  if (*(v80 + 120))
  {
    outlined destroy of SFRichText?((v80 + 120));
    v49 = *(v80 + 232);
    type metadata accessor for SFRowCardSection();
    v21 = SAUIAppPunchOut.__allocating_init()();
    *(v80 + 576) = v21;
    *(v80 + 152) = v21;
    v51 = [v49 balance];
    *(v80 + 584) = v51;
    has_malloc_size = _swift_stdlib_has_malloc_size();
    v22 = swift_task_alloc();
    v23 = v51;
    *(v80 + 592) = v22;
    *v22 = *(v80 + 80);
    v22[1] = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
    v24 = *(v80 + 240);
    v25 = has_malloc_size & 1;

    return SearchForAccountsViewBuilder.buildBalanceLabel(for:isPrimary:)(v23, v25);
  }

  outlined destroy of SFRichText?((v80 + 120));
  v26 = [*(v80 + 232) secondaryBalance];
  v48 = v26;
  if (v26)
  {
    v46 = [v26 amount];
    MEMORY[0x277D82BD8](v48);
    v47 = v46;
  }

  else
  {
    v47 = 0;
  }

  *(v80 + 128) = v47;
  if (*(v80 + 128))
  {
    outlined destroy of SFRichText?((v80 + 128));
    v44 = *(v80 + 232);
    type metadata accessor for SFRowCardSection();
    v27 = SAUIAppPunchOut.__allocating_init()();
    *(v80 + 648) = v27;
    *(v80 + 136) = v27;
    v45 = [v44 secondaryBalance];
    *(v80 + 656) = v45;
    v28 = swift_task_alloc();
    v23 = v45;
    *(v80 + 664) = v28;
    *v28 = *(v80 + 80);
    v28[1] = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
    v29 = *(v80 + 240);
    v25 = 0;

    return SearchForAccountsViewBuilder.buildBalanceLabel(for:isPrimary:)(v23, v25);
  }

  outlined destroy of SFRichText?((v80 + 128));
  v32 = *(v80 + 344);
  v33 = *(v80 + 336);
  v34 = *(v80 + 328);
  v35 = *(v80 + 320);
  v36 = *(v80 + 312);
  v37 = *(v80 + 288);
  v38 = *(v80 + 280);
  v39 = *(v80 + 272);
  v40 = *(v80 + 264);
  v41 = *(v80 + 256);
  v42 = *(v80 + 248);
  v43 = *(v80 + 112);

  outlined destroy of [SFCardSection]((v80 + 112));

  v30 = *(*(v80 + 80) + 8);
  v31 = *(v80 + 80);

  return v30(v43);
}

{
  v8 = *v1;
  v2 = *(*v1 + 384);
  v8[10] = *v1;
  v9 = v8 + 10;
  v8[49] = v0;

  if (v0)
  {
    v5 = *v9;
    v4 = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
  }

  else
  {
    v7 = v8[47];
    outlined destroy of SpeakableString?(v8[36]);

    v3 = *v9;
    v4 = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v78 = *(v0 + 368);
  v79 = *(v0 + 360);
  v73 = *(v0 + 352);
  v76 = *(v0 + 344);
  v75 = *(v0 + 304);
  v77 = *(v0 + 296);
  *(v0 + 80) = v0;
  type metadata accessor for SFRichText();
  v1 = TemplatingResult.resultSectionsAsString.getter();
  v72 = @nonobjc SFRichText.__allocating_init(string:)(v1, v2);
  [v78 setLeadingText_];
  MEMORY[0x277D82BD8](v72);

  v74 = @nonobjc SFRichText.__allocating_init(string:)(v73, v79);
  [v78 setTrailingText_];
  MEMORY[0x277D82BD8](v74);
  MEMORY[0x277D82BE0](v78);
  [v78 setSeparatorStyle_];
  MEMORY[0x277D82BD8](v78);
  MEMORY[0x277D82BE0](v78);
  *(v0 + 224) = v78;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13SFCardSectionCGMd, &_sSaySo13SFCardSectionCGMR);
  Array.append(_:)();
  (*(v75 + 8))(v76, v77);
  MEMORY[0x277D82BD8](v78);

  v3 = static Constants.PaymentAccountType.fromINAccountType(_:)([*(v0 + 232) accountType]);
  *(v0 + 723) = v3;
  if (v3 != 9)
  {
    *(v71 + 720) = v3;
    *(v71 + 721) = v3;
    *(v71 + 722) = 0;
    lazy protocol witness table accessor for type Constants.PaymentAccountType and conformance Constants.PaymentAccountType();
    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      v70 = *(v71 + 280);
      v69 = *(v71 + 240);
      type metadata accessor for SFRowCardSection();
      v4 = SAUIAppPunchOut.__allocating_init()();
      *(v71 + 400) = v4;
      *(v71 + 200) = v4;
      *(v71 + 408) = *v69;

      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("accountType", 0xBuLL, 1);
      String.toSpeakableString.getter();

      v5 = type metadata accessor for SpeakableString();
      *(v71 + 416) = v5;
      v6 = *(v5 - 8);
      v7 = *(v6 + 56);
      *(v71 + 424) = v7;
      *(v71 + 432) = (v6 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v7(v70, 0, 1);
      v8 = swift_task_alloc();
      *(v71 + 440) = v8;
      *v8 = *(v71 + 80);
      v8[1] = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
      v9 = *(v71 + 336);
      v10 = *(v71 + 280);

      return SearchForAccountsCATs.labelForResponseSlot(slot:)(v9, v10);
    }
  }

  v68 = [*(v71 + 232) nickname];
  if (v68)
  {
    v63 = [v68 spokenPhrase];
    v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v12;
    MEMORY[0x277D82BD8](v68);
    MEMORY[0x277D82BD8](v63);
    v66 = v64;
    v67 = v65;
  }

  else
  {
    v66 = 0;
    v67 = 0;
  }

  *(v71 + 488) = v67;
  *(v71 + 480) = v66;
  if (v67)
  {
    *(v71 + 32) = v66;
    *(v71 + 40) = v67;
    if ((String.isEmpty.getter() & 1) == 0)
    {
      v62 = *(v71 + 256);
      v61 = *(v71 + 240);
      type metadata accessor for SFRowCardSection();
      v13 = SAUIAppPunchOut.__allocating_init()();
      *(v71 + 496) = v13;
      *(v71 + 184) = v13;
      *(v71 + 504) = *v61;

      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("accountNickname", 0xFuLL, 1);
      String.toSpeakableString.getter();

      v14 = type metadata accessor for SpeakableString();
      (*(*(v14 - 8) + 56))(v62, 0, 1);
      v15 = swift_task_alloc();
      *(v71 + 512) = v15;
      *v15 = *(v71 + 80);
      v15[1] = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
      v9 = *(v71 + 320);
      v10 = *(v71 + 256);

      return SearchForAccountsCATs.labelForResponseSlot(slot:)(v9, v10);
    }
  }

  v60 = [*(v71 + 232) accountNumber];
  if (v60)
  {
    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v16;
    MEMORY[0x277D82BD8](v60);
    v58 = v56;
    v59 = v57;
  }

  else
  {
    v58 = 0;
    v59 = 0;
  }

  *(v71 + 536) = v59;
  *(v71 + 528) = v58;
  if (v59)
  {
    *(v71 + 16) = v58;
    *(v71 + 24) = v59;
    if ((String.isEmpty.getter() & 1) == 0)
    {
      v55 = *(v71 + 248);
      v54 = *(v71 + 240);
      type metadata accessor for SFRowCardSection();
      v17 = SAUIAppPunchOut.__allocating_init()();
      *(v71 + 544) = v17;
      *(v71 + 168) = v17;
      *(v71 + 552) = *v54;

      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("accountNumber", 0xDuLL, 1);
      String.toSpeakableString.getter();

      v18 = type metadata accessor for SpeakableString();
      (*(*(v18 - 8) + 56))(v55, 0, 1);
      v19 = swift_task_alloc();
      *(v71 + 560) = v19;
      *v19 = *(v71 + 80);
      v19[1] = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
      v9 = *(v71 + 312);
      v10 = *(v71 + 248);

      return SearchForAccountsCATs.labelForResponseSlot(slot:)(v9, v10);
    }
  }

  v53 = [*(v71 + 232) balance];
  if (v53)
  {
    v51 = [v53 amount];
    MEMORY[0x277D82BD8](v53);
    v52 = v51;
  }

  else
  {
    v52 = 0;
  }

  *(v71 + 120) = v52;
  if (*(v71 + 120))
  {
    outlined destroy of SFRichText?((v71 + 120));
    v48 = *(v71 + 232);
    type metadata accessor for SFRowCardSection();
    v20 = SAUIAppPunchOut.__allocating_init()();
    *(v71 + 576) = v20;
    *(v71 + 152) = v20;
    v50 = [v48 balance];
    *(v71 + 584) = v50;
    has_malloc_size = _swift_stdlib_has_malloc_size();
    v21 = swift_task_alloc();
    v22 = v50;
    *(v71 + 592) = v21;
    *v21 = *(v71 + 80);
    v21[1] = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
    v23 = *(v71 + 240);
    v24 = has_malloc_size & 1;

    return SearchForAccountsViewBuilder.buildBalanceLabel(for:isPrimary:)(v22, v24);
  }

  outlined destroy of SFRichText?((v71 + 120));
  v25 = [*(v71 + 232) secondaryBalance];
  v47 = v25;
  if (v25)
  {
    v45 = [v25 amount];
    MEMORY[0x277D82BD8](v47);
    v46 = v45;
  }

  else
  {
    v46 = 0;
  }

  *(v71 + 128) = v46;
  if (*(v71 + 128))
  {
    outlined destroy of SFRichText?((v71 + 128));
    v43 = *(v71 + 232);
    type metadata accessor for SFRowCardSection();
    v26 = SAUIAppPunchOut.__allocating_init()();
    *(v71 + 648) = v26;
    *(v71 + 136) = v26;
    v44 = [v43 secondaryBalance];
    *(v71 + 656) = v44;
    v27 = swift_task_alloc();
    v22 = v44;
    *(v71 + 664) = v27;
    *v27 = *(v71 + 80);
    v27[1] = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
    v28 = *(v71 + 240);
    v24 = 0;

    return SearchForAccountsViewBuilder.buildBalanceLabel(for:isPrimary:)(v22, v24);
  }

  outlined destroy of SFRichText?((v71 + 128));
  v31 = *(v71 + 344);
  v32 = *(v71 + 336);
  v33 = *(v71 + 328);
  v34 = *(v71 + 320);
  v35 = *(v71 + 312);
  v36 = *(v71 + 288);
  v37 = *(v71 + 280);
  v38 = *(v71 + 272);
  v39 = *(v71 + 264);
  v40 = *(v71 + 256);
  v41 = *(v71 + 248);
  v42 = *(v71 + 112);

  outlined destroy of [SFCardSection]((v71 + 112));

  v29 = *(*(v71 + 80) + 8);
  v30 = *(v71 + 80);

  return v29(v42);
}

{
  v8 = *v1;
  v2 = *(*v1 + 440);
  v8[10] = *v1;
  v9 = v8 + 10;
  v8[56] = v0;

  if (v0)
  {
    v5 = *v9;
    v4 = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
  }

  else
  {
    v7 = v8[51];
    outlined destroy of SpeakableString?(v8[35]);

    v3 = *v9;
    v4 = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v15 = *(v0 + 723);
  v1 = *(v0 + 240);
  *(v0 + 80) = v0;
  *(v0 + 456) = *v1;

  Constants.PaymentAccountType.asCATIDForLoc.getter(v15);
  if (v2)
  {
    v12 = v14[54];
    v13 = v14[53];
    v11 = v14[52];
    v10 = v14[34];
    String.toSpeakableString.getter();

    v13(v10, 0, 1, v11);
  }

  else
  {
    v9 = v14[54];
    (v14[53])(v14[34], 1, 1, v14[52]);
  }

  v3 = v14[54];
  (v14[53])(v14[33], 1, 1, v14[52]);
  v4 = swift_task_alloc();
  v14[58] = v4;
  *v4 = v14[10];
  v4[1] = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
  v5 = v14[41];
  v6 = v14[34];
  v7 = v14[33];

  return SearchForAccountsCATs.labelForEnum(accountType:balanceType:)(v5, v6, v7);
}

{
  v9 = *v1;
  v2 = *(*v1 + 464);
  v9[10] = *v1;
  v10 = v9 + 10;
  v9[59] = v0;

  if (v0)
  {
    v5 = *v10;
    v4 = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
  }

  else
  {
    v8 = v9[57];
    v7 = v9[34];
    outlined destroy of SpeakableString?(v9[33]);
    outlined destroy of SpeakableString?(v7);

    v3 = *v10;
    v4 = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v74 = *(v0 + 400);
  v71 = *(v0 + 336);
  v66 = *(v0 + 328);
  v65 = *(v0 + 304);
  v72 = *(v0 + 296);
  *(v0 + 80) = v0;
  v68 = TemplatingResult.resultSectionsAsString.getter();
  v70 = v1;
  *(v0 + 48) = v68;
  *(v0 + 56) = v1;
  v73 = *(v65 + 8);
  v73(v66, v72);
  type metadata accessor for SFRichText();
  v2 = TemplatingResult.resultSectionsAsString.getter();
  v67 = @nonobjc SFRichText.__allocating_init(string:)(v2, v3);
  [v74 setLeadingText_];
  MEMORY[0x277D82BD8](v67);

  v69 = @nonobjc SFRichText.__allocating_init(string:)(v68, v70);
  [v74 setTrailingText_];
  MEMORY[0x277D82BD8](v69);
  MEMORY[0x277D82BE0](v74);
  [v74 setSeparatorStyle_];
  MEMORY[0x277D82BD8](v74);
  MEMORY[0x277D82BE0](v74);
  *(v0 + 208) = v74;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13SFCardSectionCGMd, &_sSaySo13SFCardSectionCGMR);
  Array.append(_:)();

  v73(v71, v72);
  MEMORY[0x277D82BD8](v74);
  v4 = [*(v0 + 232) nickname];
  v75 = v4;
  if (v4)
  {
    v59 = [v4 spokenPhrase];
    v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v61 = v5;
    MEMORY[0x277D82BD8](v75);
    MEMORY[0x277D82BD8](v59);
    v62 = v60;
    v63 = v61;
  }

  else
  {
    v62 = 0;
    v63 = 0;
  }

  *(v64 + 488) = v63;
  *(v64 + 480) = v62;
  if (v63)
  {
    *(v64 + 32) = v62;
    *(v64 + 40) = v63;
    if ((String.isEmpty.getter() & 1) == 0)
    {
      v58 = *(v64 + 256);
      v57 = *(v64 + 240);
      type metadata accessor for SFRowCardSection();
      v6 = SAUIAppPunchOut.__allocating_init()();
      *(v64 + 496) = v6;
      *(v64 + 184) = v6;
      *(v64 + 504) = *v57;

      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("accountNickname", 0xFuLL, 1);
      String.toSpeakableString.getter();

      v7 = type metadata accessor for SpeakableString();
      (*(*(v7 - 8) + 56))(v58, 0, 1);
      v8 = swift_task_alloc();
      *(v64 + 512) = v8;
      *v8 = *(v64 + 80);
      v8[1] = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
      v9 = *(v64 + 320);
      v10 = *(v64 + 256);

      return SearchForAccountsCATs.labelForResponseSlot(slot:)(v9, v10);
    }
  }

  v56 = [*(v64 + 232) accountNumber];
  if (v56)
  {
    v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v12;
    MEMORY[0x277D82BD8](v56);
    v54 = v52;
    v55 = v53;
  }

  else
  {
    v54 = 0;
    v55 = 0;
  }

  *(v64 + 536) = v55;
  *(v64 + 528) = v54;
  if (v55)
  {
    *(v64 + 16) = v54;
    *(v64 + 24) = v55;
    if (String.isEmpty.getter())
    {

      goto LABEL_21;
    }

    v51 = *(v64 + 248);
    v50 = *(v64 + 240);
    type metadata accessor for SFRowCardSection();
    v13 = SAUIAppPunchOut.__allocating_init()();
    *(v64 + 544) = v13;
    *(v64 + 168) = v13;
    *(v64 + 552) = *v50;

    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("accountNumber", 0xDuLL, 1);
    String.toSpeakableString.getter();

    v14 = type metadata accessor for SpeakableString();
    (*(*(v14 - 8) + 56))(v51, 0, 1);
    v15 = swift_task_alloc();
    *(v64 + 560) = v15;
    *v15 = *(v64 + 80);
    v15[1] = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
    v9 = *(v64 + 312);
    v10 = *(v64 + 248);

    return SearchForAccountsCATs.labelForResponseSlot(slot:)(v9, v10);
  }

LABEL_21:
  v49 = [*(v64 + 232) balance];
  if (v49)
  {
    v47 = [v49 amount];
    MEMORY[0x277D82BD8](v49);
    v48 = v47;
  }

  else
  {
    v48 = 0;
  }

  *(v64 + 120) = v48;
  if (*(v64 + 120))
  {
    outlined destroy of SFRichText?((v64 + 120));
    v44 = *(v64 + 232);
    type metadata accessor for SFRowCardSection();
    v16 = SAUIAppPunchOut.__allocating_init()();
    *(v64 + 576) = v16;
    *(v64 + 152) = v16;
    v46 = [v44 balance];
    *(v64 + 584) = v46;
    has_malloc_size = _swift_stdlib_has_malloc_size();
    v17 = swift_task_alloc();
    v18 = v46;
    *(v64 + 592) = v17;
    *v17 = *(v64 + 80);
    v17[1] = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
    v19 = *(v64 + 240);
    v20 = has_malloc_size & 1;

    return SearchForAccountsViewBuilder.buildBalanceLabel(for:isPrimary:)(v18, v20);
  }

  outlined destroy of SFRichText?((v64 + 120));
  v21 = [*(v64 + 232) secondaryBalance];
  v43 = v21;
  if (v21)
  {
    v41 = [v21 amount];
    MEMORY[0x277D82BD8](v43);
    v42 = v41;
  }

  else
  {
    v42 = 0;
  }

  *(v64 + 128) = v42;
  if (*(v64 + 128))
  {
    outlined destroy of SFRichText?((v64 + 128));
    v39 = *(v64 + 232);
    type metadata accessor for SFRowCardSection();
    v22 = SAUIAppPunchOut.__allocating_init()();
    *(v64 + 648) = v22;
    *(v64 + 136) = v22;
    v40 = [v39 secondaryBalance];
    *(v64 + 656) = v40;
    v23 = swift_task_alloc();
    v18 = v40;
    *(v64 + 664) = v23;
    *v23 = *(v64 + 80);
    v23[1] = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
    v24 = *(v64 + 240);
    v20 = 0;

    return SearchForAccountsViewBuilder.buildBalanceLabel(for:isPrimary:)(v18, v20);
  }

  outlined destroy of SFRichText?((v64 + 128));
  v27 = *(v64 + 344);
  v28 = *(v64 + 336);
  v29 = *(v64 + 328);
  v30 = *(v64 + 320);
  v31 = *(v64 + 312);
  v32 = *(v64 + 288);
  v33 = *(v64 + 280);
  v34 = *(v64 + 272);
  v35 = *(v64 + 264);
  v36 = *(v64 + 256);
  v37 = *(v64 + 248);
  v38 = *(v64 + 112);

  outlined destroy of [SFCardSection]((v64 + 112));

  v25 = *(*(v64 + 80) + 8);
  v26 = *(v64 + 80);

  return v25(v38);
}

{
  v8 = *v1;
  v2 = *(*v1 + 512);
  v8[10] = *v1;
  v9 = v8 + 10;
  v8[65] = v0;

  if (v0)
  {
    v5 = *v9;
    v4 = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
  }

  else
  {
    v7 = v8[63];
    outlined destroy of SpeakableString?(v8[32]);

    v3 = *v9;
    v4 = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v57 = *(v0 + 496);
  v58 = *(v0 + 488);
  v52 = *(v0 + 480);
  v55 = *(v0 + 320);
  v54 = *(v0 + 304);
  v56 = *(v0 + 296);
  *(v0 + 80) = v0;
  type metadata accessor for SFRichText();
  v1 = TemplatingResult.resultSectionsAsString.getter();
  v51 = @nonobjc SFRichText.__allocating_init(string:)(v1, v2);
  [v57 setLeadingText_];
  MEMORY[0x277D82BD8](v51);

  v53 = @nonobjc SFRichText.__allocating_init(string:)(v52, v58);
  [v57 setTrailingText_];
  MEMORY[0x277D82BD8](v53);
  MEMORY[0x277D82BE0](v57);
  [v57 setSeparatorStyle_];
  MEMORY[0x277D82BD8](v57);
  MEMORY[0x277D82BE0](v57);
  *(v0 + 192) = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13SFCardSectionCGMd, &_sSaySo13SFCardSectionCGMR);
  Array.append(_:)();
  (*(v54 + 8))(v55, v56);
  MEMORY[0x277D82BD8](v57);

  v59 = [*(v0 + 232) accountNumber];
  if (v59)
  {
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v3;
    MEMORY[0x277D82BD8](v59);
    v48 = v46;
    v49 = v47;
  }

  else
  {
    v48 = 0;
    v49 = 0;
  }

  *(v50 + 536) = v49;
  *(v50 + 528) = v48;
  if (v49)
  {
    *(v50 + 16) = v48;
    *(v50 + 24) = v49;
    if ((String.isEmpty.getter() & 1) == 0)
    {
      v45 = *(v50 + 248);
      v44 = *(v50 + 240);
      type metadata accessor for SFRowCardSection();
      v4 = SAUIAppPunchOut.__allocating_init()();
      *(v50 + 544) = v4;
      *(v50 + 168) = v4;
      *(v50 + 552) = *v44;

      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("accountNumber", 0xDuLL, 1);
      String.toSpeakableString.getter();

      v5 = type metadata accessor for SpeakableString();
      (*(*(v5 - 8) + 56))(v45, 0, 1);
      v6 = swift_task_alloc();
      *(v50 + 560) = v6;
      *v6 = *(v50 + 80);
      v6[1] = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
      v7 = *(v50 + 312);
      v8 = *(v50 + 248);

      return SearchForAccountsCATs.labelForResponseSlot(slot:)(v7, v8);
    }
  }

  v43 = [*(v50 + 232) balance];
  if (v43)
  {
    v41 = [v43 amount];
    MEMORY[0x277D82BD8](v43);
    v42 = v41;
  }

  else
  {
    v42 = 0;
  }

  *(v50 + 120) = v42;
  if (*(v50 + 120))
  {
    outlined destroy of SFRichText?((v50 + 120));
    v38 = *(v50 + 232);
    type metadata accessor for SFRowCardSection();
    v10 = SAUIAppPunchOut.__allocating_init()();
    *(v50 + 576) = v10;
    *(v50 + 152) = v10;
    v40 = [v38 balance];
    *(v50 + 584) = v40;
    has_malloc_size = _swift_stdlib_has_malloc_size();
    v11 = swift_task_alloc();
    v12 = v40;
    *(v50 + 592) = v11;
    *v11 = *(v50 + 80);
    v11[1] = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
    v13 = *(v50 + 240);
    v14 = has_malloc_size & 1;

    return SearchForAccountsViewBuilder.buildBalanceLabel(for:isPrimary:)(v12, v14);
  }

  outlined destroy of SFRichText?((v50 + 120));
  v15 = [*(v50 + 232) secondaryBalance];
  v37 = v15;
  if (v15)
  {
    v35 = [v15 amount];
    MEMORY[0x277D82BD8](v37);
    v36 = v35;
  }

  else
  {
    v36 = 0;
  }

  *(v50 + 128) = v36;
  if (*(v50 + 128))
  {
    outlined destroy of SFRichText?((v50 + 128));
    v33 = *(v50 + 232);
    type metadata accessor for SFRowCardSection();
    v16 = SAUIAppPunchOut.__allocating_init()();
    *(v50 + 648) = v16;
    *(v50 + 136) = v16;
    v34 = [v33 secondaryBalance];
    *(v50 + 656) = v34;
    v17 = swift_task_alloc();
    v12 = v34;
    *(v50 + 664) = v17;
    *v17 = *(v50 + 80);
    v17[1] = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
    v18 = *(v50 + 240);
    v14 = 0;

    return SearchForAccountsViewBuilder.buildBalanceLabel(for:isPrimary:)(v12, v14);
  }

  outlined destroy of SFRichText?((v50 + 128));
  v21 = *(v50 + 344);
  v22 = *(v50 + 336);
  v23 = *(v50 + 328);
  v24 = *(v50 + 320);
  v25 = *(v50 + 312);
  v26 = *(v50 + 288);
  v27 = *(v50 + 280);
  v28 = *(v50 + 272);
  v29 = *(v50 + 264);
  v30 = *(v50 + 256);
  v31 = *(v50 + 248);
  v32 = *(v50 + 112);

  outlined destroy of [SFCardSection]((v50 + 112));

  v19 = *(*(v50 + 80) + 8);
  v20 = *(v50 + 80);

  return v19(v32);
}

{
  v8 = *v1;
  v2 = *(*v1 + 560);
  v8[10] = *v1;
  v9 = v8 + 10;
  v8[71] = v0;

  if (v0)
  {
    v5 = *v9;
    v4 = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
  }

  else
  {
    v7 = v8[69];
    outlined destroy of SpeakableString?(v8[31]);

    v3 = *v9;
    v4 = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v45 = *(v0 + 544);
  v46 = *(v0 + 536);
  v40 = *(v0 + 528);
  v43 = *(v0 + 312);
  v42 = *(v0 + 304);
  v44 = *(v0 + 296);
  *(v0 + 80) = v0;
  type metadata accessor for SFRichText();
  v1 = TemplatingResult.resultSectionsAsString.getter();
  v39 = @nonobjc SFRichText.__allocating_init(string:)(v1, v2);
  [v45 setLeadingText_];
  MEMORY[0x277D82BD8](v39);

  v41 = @nonobjc SFRichText.__allocating_init(string:)(v40, v46);
  [v45 setTrailingText_];
  MEMORY[0x277D82BD8](v41);
  MEMORY[0x277D82BE0](v45);
  *(v0 + 176) = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13SFCardSectionCGMd, &_sSaySo13SFCardSectionCGMR);
  Array.append(_:)();
  (*(v42 + 8))(v43, v44);
  MEMORY[0x277D82BD8](v45);

  v3 = [*(v0 + 232) balance];
  v47 = v3;
  if (v3)
  {
    v36 = [v3 amount];
    MEMORY[0x277D82BD8](v47);
    v37 = v36;
  }

  else
  {
    v37 = 0;
  }

  *(v38 + 120) = v37;
  if (*(v38 + 120))
  {
    outlined destroy of SFRichText?((v38 + 120));
    v33 = *(v38 + 232);
    type metadata accessor for SFRowCardSection();
    v4 = SAUIAppPunchOut.__allocating_init()();
    *(v38 + 576) = v4;
    *(v38 + 152) = v4;
    v35 = [v33 balance];
    *(v38 + 584) = v35;
    has_malloc_size = _swift_stdlib_has_malloc_size();
    v5 = swift_task_alloc();
    v6 = v35;
    *(v38 + 592) = v5;
    *v5 = *(v38 + 80);
    v5[1] = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
    v7 = *(v38 + 240);
    v8 = has_malloc_size & 1;

    return SearchForAccountsViewBuilder.buildBalanceLabel(for:isPrimary:)(v6, v8);
  }

  outlined destroy of SFRichText?((v38 + 120));
  v10 = [*(v38 + 232) secondaryBalance];
  v32 = v10;
  if (v10)
  {
    v30 = [v10 amount];
    MEMORY[0x277D82BD8](v32);
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  *(v38 + 128) = v31;
  if (*(v38 + 128))
  {
    outlined destroy of SFRichText?((v38 + 128));
    v28 = *(v38 + 232);
    type metadata accessor for SFRowCardSection();
    v11 = SAUIAppPunchOut.__allocating_init()();
    *(v38 + 648) = v11;
    *(v38 + 136) = v11;
    v29 = [v28 secondaryBalance];
    *(v38 + 656) = v29;
    v12 = swift_task_alloc();
    v6 = v29;
    *(v38 + 664) = v12;
    *v12 = *(v38 + 80);
    v12[1] = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
    v13 = *(v38 + 240);
    v8 = 0;

    return SearchForAccountsViewBuilder.buildBalanceLabel(for:isPrimary:)(v6, v8);
  }

  outlined destroy of SFRichText?((v38 + 128));
  v16 = *(v38 + 344);
  v17 = *(v38 + 336);
  v18 = *(v38 + 328);
  v19 = *(v38 + 320);
  v20 = *(v38 + 312);
  v21 = *(v38 + 288);
  v22 = *(v38 + 280);
  v23 = *(v38 + 272);
  v24 = *(v38 + 264);
  v25 = *(v38 + 256);
  v26 = *(v38 + 248);
  v27 = *(v38 + 112);

  outlined destroy of [SFCardSection]((v38 + 112));

  v14 = *(*(v38 + 80) + 8);
  v15 = *(v38 + 80);

  return v14(v27);
}

{
  v5 = v0[75];
  v1 = v0[72];
  v6 = v0[29];
  v0[10] = v0;
  [v1 setLeadingText_];
  MEMORY[0x277D82BD8](v5);
  v8 = [v6 balance];
  v0[77] = v8;
  v2 = swift_task_alloc();
  v7[78] = v2;
  *v2 = v7[10];
  v2[1] = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
  v3 = v7[30];

  return SearchForAccountsViewBuilder.buildBalanceText(for:)(v8);
}

{
  v26 = *(v0 + 632);
  v1 = *(v0 + 576);
  v27 = v1;
  *(v0 + 80) = v0;
  [v1 setTrailingText_];
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BE0](v27);
  [v27 setSeparatorStyle_];
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BE0](v27);
  *(v0 + 160) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13SFCardSectionCGMd, &_sSaySo13SFCardSectionCGMR);
  Array.append(_:)();
  MEMORY[0x277D82BD8](v27);
  v2 = [*(v0 + 232) secondaryBalance];
  v28 = v2;
  if (v2)
  {
    v23 = [v2 amount];
    MEMORY[0x277D82BD8](v28);
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25[16] = v24;
  if (v25[16])
  {
    outlined destroy of SFRichText?(v25 + 16);
    v21 = v25[29];
    type metadata accessor for SFRowCardSection();
    v3 = SAUIAppPunchOut.__allocating_init()();
    v25[81] = v3;
    v25[17] = v3;
    v22 = [v21 secondaryBalance];
    v25[82] = v22;
    v4 = swift_task_alloc();
    v25[83] = v4;
    *v4 = v25[10];
    v4[1] = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
    v5 = v25[30];

    return SearchForAccountsViewBuilder.buildBalanceLabel(for:isPrimary:)(v22, 0);
  }

  else
  {
    outlined destroy of SFRichText?(v25 + 16);
    v9 = v25[43];
    v10 = v25[42];
    v11 = v25[41];
    v12 = v25[40];
    v13 = v25[39];
    v14 = v25[36];
    v15 = v25[35];
    v16 = v25[34];
    v17 = v25[33];
    v18 = v25[32];
    v19 = v25[31];
    v20 = v25[14];

    outlined destroy of [SFCardSection](v25 + 14);

    v7 = *(v25[10] + 8);
    v8 = v25[10];

    return v7(v20);
  }
}

{
  v5 = v0[84];
  v1 = v0[81];
  v6 = v0[29];
  v0[10] = v0;
  [v1 setLeadingText_];
  MEMORY[0x277D82BD8](v5);
  v8 = [v6 secondaryBalance];
  v0[86] = v8;
  v2 = swift_task_alloc();
  v7[87] = v2;
  *v2 = v7[10];
  v2[1] = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
  v3 = v7[30];

  return SearchForAccountsViewBuilder.buildBalanceText(for:)(v8);
}

{
  v5 = v0[88];
  v1 = v0[81];
  v6 = v1;
  v0[10] = v0;
  [v1 setTrailingText_];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BE0](v6);
  [v6 setSeparatorStyle_];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BE0](v6);
  v0[18] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13SFCardSectionCGMd, &_sSaySo13SFCardSectionCGMR);
  Array.append(_:)();
  MEMORY[0x277D82BD8](v6);
  v7 = v0[43];
  v8 = v0[42];
  v9 = v0[41];
  v10 = v0[40];
  v11 = v0[39];
  v12 = v0[36];
  v13 = v0[35];
  v14 = v0[34];
  v15 = v0[33];
  v16 = v0[32];
  v17 = v0[31];
  v18 = v0[14];

  outlined destroy of [SFCardSection](v0 + 14);

  v2 = *(v0[10] + 8);
  v3 = v0[10];

  return v2(v18);
}

{
  v7 = v0[47];
  v8 = v0[46];
  v9 = v0[45];
  v1 = v0[36];
  v0[10] = v0;
  outlined destroy of SpeakableString?(v1);

  MEMORY[0x277D82BD8](v8);

  outlined destroy of [SFCardSection](v0 + 14);
  v2 = v0[49];
  v3 = v0[43];
  v10 = v0[42];
  v11 = v0[41];
  v12 = v0[40];
  v13 = v0[39];
  v14 = v0[36];
  v15 = v0[35];
  v16 = v0[34];
  v17 = v0[33];
  v18 = v0[32];
  v19 = v0[31];

  v4 = *(v0[10] + 8);
  v5 = v0[10];

  return v4();
}

{
  v7 = v0[51];
  v8 = v0[50];
  v1 = v0[35];
  v0[10] = v0;
  outlined destroy of SpeakableString?(v1);

  MEMORY[0x277D82BD8](v8);
  outlined destroy of [SFCardSection](v0 + 14);
  v2 = v0[56];
  v3 = v0[43];
  v9 = v0[42];
  v10 = v0[41];
  v11 = v0[40];
  v12 = v0[39];
  v13 = v0[36];
  v14 = v0[35];
  v15 = v0[34];
  v16 = v0[33];
  v17 = v0[32];
  v18 = v0[31];

  v4 = *(v0[10] + 8);
  v5 = v0[10];

  return v4();
}

{
  v8 = v0[57];
  v12 = v0[50];
  v10 = v0[42];
  v9 = v0[38];
  v11 = v0[37];
  v7 = v0[34];
  v1 = v0[33];
  v0[10] = v0;
  outlined destroy of SpeakableString?(v1);
  outlined destroy of SpeakableString?(v7);

  (*(v9 + 8))(v10, v11);
  MEMORY[0x277D82BD8](v12);
  outlined destroy of [SFCardSection](v0 + 14);
  v2 = v0[59];
  v3 = v0[43];
  v13 = v0[42];
  v14 = v0[41];
  v15 = v0[40];
  v16 = v0[39];
  v17 = v0[36];
  v18 = v0[35];
  v19 = v0[34];
  v20 = v0[33];
  v21 = v0[32];
  v22 = v0[31];

  v4 = *(v0[10] + 8);
  v5 = v0[10];

  return v4();
}

{
  v7 = v0[63];
  v8 = v0[62];
  v9 = v0[61];
  v1 = v0[32];
  v0[10] = v0;
  outlined destroy of SpeakableString?(v1);

  MEMORY[0x277D82BD8](v8);

  outlined destroy of [SFCardSection](v0 + 14);
  v2 = v0[65];
  v3 = v0[43];
  v10 = v0[42];
  v11 = v0[41];
  v12 = v0[40];
  v13 = v0[39];
  v14 = v0[36];
  v15 = v0[35];
  v16 = v0[34];
  v17 = v0[33];
  v18 = v0[32];
  v19 = v0[31];

  v4 = *(v0[10] + 8);
  v5 = v0[10];

  return v4();
}

{
  v7 = v0[69];
  v8 = v0[68];
  v9 = v0[67];
  v1 = v0[31];
  v0[10] = v0;
  outlined destroy of SpeakableString?(v1);

  MEMORY[0x277D82BD8](v8);

  outlined destroy of [SFCardSection](v0 + 14);
  v2 = v0[71];
  v3 = v0[43];
  v10 = v0[42];
  v11 = v0[41];
  v12 = v0[40];
  v13 = v0[39];
  v14 = v0[36];
  v15 = v0[35];
  v16 = v0[34];
  v17 = v0[33];
  v18 = v0[32];
  v19 = v0[31];

  v4 = *(v0[10] + 8);
  v5 = v0[10];

  return v4();
}

{
  v1 = v0[73];
  v7 = v0[72];
  v0[10] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v7);
  outlined destroy of [SFCardSection](v0 + 14);
  v2 = v0[76];
  v3 = v0[43];
  v8 = v0[42];
  v9 = v0[41];
  v10 = v0[40];
  v11 = v0[39];
  v12 = v0[36];
  v13 = v0[35];
  v14 = v0[34];
  v15 = v0[33];
  v16 = v0[32];
  v17 = v0[31];

  v4 = *(v0[10] + 8);
  v5 = v0[10];

  return v4();
}

{
  v1 = v0[77];
  v7 = v0[72];
  v0[10] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v7);
  outlined destroy of [SFCardSection](v0 + 14);
  v2 = v0[80];
  v3 = v0[43];
  v8 = v0[42];
  v9 = v0[41];
  v10 = v0[40];
  v11 = v0[39];
  v12 = v0[36];
  v13 = v0[35];
  v14 = v0[34];
  v15 = v0[33];
  v16 = v0[32];
  v17 = v0[31];

  v4 = *(v0[10] + 8);
  v5 = v0[10];

  return v4();
}

{
  v1 = v0[82];
  v7 = v0[81];
  v0[10] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v7);
  outlined destroy of [SFCardSection](v0 + 14);
  v2 = v0[85];
  v3 = v0[43];
  v8 = v0[42];
  v9 = v0[41];
  v10 = v0[40];
  v11 = v0[39];
  v12 = v0[36];
  v13 = v0[35];
  v14 = v0[34];
  v15 = v0[33];
  v16 = v0[32];
  v17 = v0[31];

  v4 = *(v0[10] + 8);
  v5 = v0[10];

  return v4();
}

{
  v1 = v0[86];
  v7 = v0[81];
  v0[10] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v7);
  outlined destroy of [SFCardSection](v0 + 14);
  v2 = v0[89];
  v3 = v0[43];
  v8 = v0[42];
  v9 = v0[41];
  v10 = v0[40];
  v11 = v0[39];
  v12 = v0[36];
  v13 = v0[35];
  v14 = v0[34];
  v15 = v0[33];
  v16 = v0[32];
  v17 = v0[31];

  v4 = *(v0[10] + 8);
  v5 = v0[10];

  return v4();
}

uint64_t SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:)(uint64_t a1)
{
  v9 = *v2;
  v4 = *(*v2 + 592);
  *(v9 + 80) = *v2;
  v10 = (v9 + 80);
  *(v9 + 600) = a1;
  *(v9 + 608) = v1;

  if (v1)
  {
    v7 = *v10;
    v6 = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
  }

  else
  {

    v5 = *v10;
    v6 = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
  }

  return MEMORY[0x2822009F8](v6, 0);
}

{
  v9 = *v2;
  v4 = *(*v2 + 624);
  *(v9 + 80) = *v2;
  v10 = (v9 + 80);
  *(v9 + 632) = a1;
  *(v9 + 640) = v1;

  if (v1)
  {
    v7 = *v10;
    v6 = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
  }

  else
  {

    v5 = *v10;
    v6 = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
  }

  return MEMORY[0x2822009F8](v6, 0);
}

{
  v9 = *v2;
  v4 = *(*v2 + 664);
  *(v9 + 80) = *v2;
  v10 = (v9 + 80);
  *(v9 + 672) = a1;
  *(v9 + 680) = v1;

  if (v1)
  {
    v7 = *v10;
    v6 = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
  }

  else
  {

    v5 = *v10;
    v6 = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
  }

  return MEMORY[0x2822009F8](v6, 0);
}

{
  v9 = *v2;
  v4 = *(*v2 + 696);
  *(v9 + 80) = *v2;
  v10 = (v9 + 80);
  *(v9 + 704) = a1;
  *(v9 + 712) = v1;

  if (v1)
  {
    v7 = *v10;
    v6 = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
  }

  else
  {

    v5 = *v10;
    v6 = SearchForAccountsViewBuilder.buildBalanceCardSections(for:app:);
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t SearchForAccountsViewBuilder.buildBalanceLabel(for:isPrimary:)(uint64_t a1, char a2)
{
  *(v3 + 88) = v2;
  *(v3 + 225) = a2 & 1;
  *(v3 + 80) = a1;
  *(v3 + 32) = v3;
  *(v3 + 40) = 0;
  *(v3 + 224) = 0;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 232) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64);
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  v4 = type metadata accessor for TemplatingResult();
  *(v3 + 120) = v4;
  v8 = *(v4 - 8);
  *(v3 + 128) = v8;
  v9 = *(v8 + 64);
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 40) = a1;
  *(v3 + 224) = a2 & 1;
  *(v3 + 48) = v2;
  v5 = *(v3 + 32);

  return MEMORY[0x2822009F8](SearchForAccountsViewBuilder.buildBalanceLabel(for:isPrimary:), 0);
}

uint64_t SearchForAccountsViewBuilder.buildBalanceLabel(for:isPrimary:)()
{
  v1 = *(v0 + 80);
  v34 = v1;
  *(v0 + 32) = v0;
  MEMORY[0x277D82BE0](v1);
  if (v34)
  {
    v32 = *(v33 + 80);
    *(v33 + 56) = v32;
    *(v33 + 64) = [v32 balanceType];
    *(v33 + 72) = 1;
    type metadata accessor for INBalanceType();
    lazy protocol witness table accessor for type INBalanceType and conformance INBalanceType();
    if (== infix<A>(_:_:)())
    {
      if (*(v33 + 225))
      {
        v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("balance", 7uLL, 1);
        object = v4._object;
        countAndFlagsBits = v4._countAndFlagsBits;
      }

      else
      {
        v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("secondaryBalance", 0x10uLL, 1);
        object = v5._object;
        countAndFlagsBits = v5._countAndFlagsBits;
      }

      *(v33 + 168) = object;
      v31 = *(v33 + 112);
      v6 = *(v33 + 88);
      *(v33 + 16) = countAndFlagsBits;
      *(v33 + 24) = object;
      *(v33 + 176) = *v6;

      String.toSpeakableString.getter();
      v7 = type metadata accessor for SpeakableString();
      (*(*(v7 - 8) + 56))(v31, 0, 1);
      v8 = swift_task_alloc();
      *(v33 + 184) = v8;
      *v8 = *(v33 + 32);
      v8[1] = SearchForAccountsViewBuilder.buildBalanceLabel(for:isPrimary:);
      v9 = *(v33 + 152);
      v10 = *(v33 + 112);

      return SearchForAccountsCATs.labelForResponseSlot(slot:)(v9, v10);
    }

    else
    {
      v27 = *(v33 + 104);
      v26 = *(v33 + 88);
      v30 = static Constants.PaymentAccountBalanceType.fromINBalanceType(_:)([v32 balanceType], 0);
      *(v33 + 232) = v30;
      *(v33 + 200) = *v26;

      v28 = type metadata accessor for SpeakableString();
      v29 = *(*(v28 - 8) + 56);
      v29(v27, 1);
      if (v30 == 4)
      {
        (v29)(*(v33 + 96), 1, 1, v28);
      }

      else
      {
        v25 = *(v33 + 96);
        Constants.PaymentAccountBalanceType.asCATIDForLoc.getter(v30);
        String.toSpeakableString.getter();

        (v29)(v25, 0, 1, v28);
      }

      v12 = swift_task_alloc();
      *(v33 + 208) = v12;
      *v12 = *(v33 + 32);
      v12[1] = SearchForAccountsViewBuilder.buildBalanceLabel(for:isPrimary:);
      v13 = *(v33 + 144);
      v14 = *(v33 + 104);
      v15 = *(v33 + 96);

      return SearchForAccountsCATs.labelForEnum(accountType:balanceType:)(v13, v14, v15);
    }
  }

  else
  {
    v16 = *(v33 + 160);
    v19 = *(v33 + 152);
    v20 = *(v33 + 144);
    v21 = *(v33 + 136);
    v22 = *(v33 + 112);
    v23 = *(v33 + 104);
    v24 = *(v33 + 96);

    v17 = *(*(v33 + 32) + 8);
    v18 = *(v33 + 32);

    return v17(0);
  }
}

{
  v8 = *v1;
  v2 = *(*v1 + 184);
  v8[4] = *v1;
  v9 = v8 + 4;
  v8[24] = v0;

  if (v0)
  {
    v5 = *v9;
    v4 = SearchForAccountsViewBuilder.buildBalanceLabel(for:isPrimary:);
  }

  else
  {
    v7 = v8[22];
    outlined destroy of SpeakableString?(v8[14]);

    v3 = *v9;
    v4 = SearchForAccountsViewBuilder.buildBalanceLabel(for:isPrimary:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v11 = v0[21];
  v1 = v0[20];
  v2 = v0[19];
  v3 = v0[16];
  v4 = v0[15];
  v0[4] = v0;
  (*(v3 + 32))(v1, v2, v4);

  v17 = v0[20];
  v5 = v0[17];
  v12 = v0[16];
  v15 = v0[15];
  v18 = v0[10];
  type metadata accessor for SFRichText();
  (*(v12 + 16))(v5, v17, v15);
  v13 = TemplatingResult.resultSectionsAsString.getter();
  v14 = v6;
  v16 = *(v12 + 8);
  v16(v5, v15);
  v25 = @nonobjc SFRichText.__allocating_init(string:)(v13, v14);
  v16(v17, v15);
  MEMORY[0x277D82BD8](v18);
  v7 = v0[20];
  v19 = v0[19];
  v20 = v0[18];
  v21 = v0[17];
  v22 = v0[14];
  v23 = v0[13];
  v24 = v0[12];

  v8 = *(v0[4] + 8);
  v9 = v0[4];

  return v8(v25);
}

{
  v9 = *v1;
  v2 = *(*v1 + 208);
  v9[4] = *v1;
  v10 = v9 + 4;
  v9[27] = v0;

  if (v0)
  {
    v5 = *v10;
    v4 = SearchForAccountsViewBuilder.buildBalanceLabel(for:isPrimary:);
  }

  else
  {
    v8 = v9[25];
    v7 = v9[13];
    outlined destroy of SpeakableString?(v9[12]);
    outlined destroy of SpeakableString?(v7);

    v3 = *v10;
    v4 = SearchForAccountsViewBuilder.buildBalanceLabel(for:isPrimary:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[16];
  v4 = v0[15];
  v0[4] = v0;
  (*(v3 + 32))(v1, v2, v4);
  v16 = v0[20];
  v5 = v0[17];
  v11 = v0[16];
  v14 = v0[15];
  v17 = v0[10];
  type metadata accessor for SFRichText();
  (*(v11 + 16))(v5, v16, v14);
  v12 = TemplatingResult.resultSectionsAsString.getter();
  v13 = v6;
  v15 = *(v11 + 8);
  v15(v5, v14);
  v24 = @nonobjc SFRichText.__allocating_init(string:)(v12, v13);
  v15(v16, v14);
  MEMORY[0x277D82BD8](v17);
  v7 = v0[20];
  v18 = v0[19];
  v19 = v0[18];
  v20 = v0[17];
  v21 = v0[14];
  v22 = v0[13];
  v23 = v0[12];

  v8 = *(v0[4] + 8);
  v9 = v0[4];

  return v8(v24);
}

{
  v7 = v0[22];
  v8 = v0[21];
  v1 = v0[14];
  v9 = v0[10];
  v0[4] = v0;
  outlined destroy of SpeakableString?(v1);

  MEMORY[0x277D82BD8](v9);
  v2 = v0[24];
  v3 = v0[20];
  v10 = v0[19];
  v11 = v0[18];
  v12 = v0[17];
  v13 = v0[14];
  v14 = v0[13];
  v15 = v0[12];

  v4 = *(v0[4] + 8);
  v5 = v0[4];

  return v4();
}

{
  v8 = v0[25];
  v7 = v0[13];
  v1 = v0[12];
  v9 = v0[10];
  v0[4] = v0;
  outlined destroy of SpeakableString?(v1);
  outlined destroy of SpeakableString?(v7);

  MEMORY[0x277D82BD8](v9);
  v2 = v0[27];
  v3 = v0[20];
  v10 = v0[19];
  v11 = v0[18];
  v12 = v0[17];
  v13 = v0[14];
  v14 = v0[13];
  v15 = v0[12];

  v4 = *(v0[4] + 8);
  v5 = v0[4];

  return v4();
}

uint64_t SearchForAccountsViewBuilder.buildBalanceText(for:)(uint64_t a1)
{
  v2[9] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  v2[6] = 0;
  v2[3] = a1;
  v2[4] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](SearchForAccountsViewBuilder.buildBalanceText(for:), 0);
}

uint64_t SearchForAccountsViewBuilder.buildBalanceText(for:)()
{
  v30 = v0[9];
  v0[2] = v0;
  type metadata accessor for NSNumberFormatter();
  v29 = SAUIAppPunchOut.__allocating_init()();
  v0[5] = v29;
  [v29 setNumberStyle_];
  MEMORY[0x277D82BE0](v30);
  if (v30)
  {
    v25 = v28[9];
    v26 = [v25 amount];
    MEMORY[0x277D82BD8](v25);
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  if (v27)
  {
    v24 = v28[9];
    v28[6] = v27;
    MEMORY[0x277D82BE0](v24);
    if (v24)
    {
      v20 = v28[9];
      v21 = [v20 balanceType];
      MEMORY[0x277D82BD8](v20);
      v22 = v21;
      v23 = 0;
    }

    else
    {
      v22 = 0;
      v23 = 1;
    }

    if ((v23 & 1) != 0 || (v28[7] = v22, v28[8] = 1, type metadata accessor for INBalanceType(), lazy protocol witness table accessor for type INBalanceType and conformance INBalanceType(), v1 = dispatch thunk of static Equatable.== infix(_:_:)(), (v1 & 1) == 0))
    {
      [v29 setNumberStyle_];
      type metadata accessor for SFRichText();
      v12 = [v29 stringFromNumber_];
      if (v12)
      {
        v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v9 = v3;
        MEMORY[0x277D82BD8](v12);
        v10 = v8;
        v11 = v9;
      }

      else
      {
        v10 = 0;
        v11 = 0;
      }

      v7 = @nonobjc SFRichText.__allocating_init(string:)(v10, v11);
      MEMORY[0x277D82BD8](v27);
      MEMORY[0x277D82BD8](v29);
      v14 = v7;
    }

    else
    {
      type metadata accessor for SFRichText();
      v19 = [v29 stringFromNumber_];
      if (v19)
      {
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v2;
        MEMORY[0x277D82BD8](v19);
        v17 = v15;
        v18 = v16;
      }

      else
      {
        v17 = 0;
        v18 = 0;
      }

      v13 = @nonobjc SFRichText.__allocating_init(string:)(v17, v18);
      MEMORY[0x277D82BD8](v27);
      MEMORY[0x277D82BD8](v29);
      v14 = v13;
    }
  }

  else
  {
    MEMORY[0x277D82BD8](v29);
    v14 = 0;
  }

  v4 = *(v28[2] + 8);
  v5 = v28[2];

  return v4(v14);
}

uint64_t implicit closure #1 in SearchForAccountsViewBuilder.buildPhoneSnippets(for:app:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  result = a1;
  *a2 = a1;
  return result;
}

uint64_t SearchForAccountsViewBuilder.buildWatchBalanceLabel(for:isPrimary:)(uint64_t a1, char a2)
{
  *(v3 + 96) = v2;
  *(v3 + 233) = a2 & 1;
  *(v3 + 88) = a1;
  *(v3 + 32) = v3;
  *(v3 + 40) = 0;
  *(v3 + 232) = 0;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 240) = 0;
  *(v3 + 80) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64);
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  v4 = type metadata accessor for TemplatingResult();
  *(v3 + 128) = v4;
  v8 = *(v4 - 8);
  *(v3 + 136) = v8;
  v9 = *(v8 + 64);
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 40) = a1;
  *(v3 + 232) = a2 & 1;
  *(v3 + 48) = v2;
  v5 = *(v3 + 32);

  return MEMORY[0x2822009F8](SearchForAccountsViewBuilder.buildWatchBalanceLabel(for:isPrimary:), 0);
}

uint64_t SearchForAccountsViewBuilder.buildWatchBalanceLabel(for:isPrimary:)()
{
  v1 = *(v0 + 88);
  v34 = v1;
  *(v0 + 32) = v0;
  MEMORY[0x277D82BE0](v1);
  if (v34)
  {
    v32 = *(v33 + 88);
    *(v33 + 56) = v32;
    *(v33 + 64) = [v32 balanceType];
    *(v33 + 72) = 1;
    type metadata accessor for INBalanceType();
    lazy protocol witness table accessor for type INBalanceType and conformance INBalanceType();
    if (== infix<A>(_:_:)())
    {
      if (*(v33 + 233))
      {
        v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("balance", 7uLL, 1);
        object = v4._object;
        countAndFlagsBits = v4._countAndFlagsBits;
      }

      else
      {
        v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("secondaryBalance", 0x10uLL, 1);
        object = v5._object;
        countAndFlagsBits = v5._countAndFlagsBits;
      }

      *(v33 + 176) = object;
      v31 = *(v33 + 120);
      v6 = *(v33 + 96);
      *(v33 + 16) = countAndFlagsBits;
      *(v33 + 24) = object;
      *(v33 + 184) = *v6;

      String.toSpeakableString.getter();
      v7 = type metadata accessor for SpeakableString();
      (*(*(v7 - 8) + 56))(v31, 0, 1);
      v8 = swift_task_alloc();
      *(v33 + 192) = v8;
      *v8 = *(v33 + 32);
      v8[1] = SearchForAccountsViewBuilder.buildWatchBalanceLabel(for:isPrimary:);
      v9 = *(v33 + 160);
      v10 = *(v33 + 120);

      return SearchForAccountsCATs.labelForResponseSlot(slot:)(v9, v10);
    }

    else
    {
      v27 = *(v33 + 112);
      v26 = *(v33 + 96);
      v30 = static Constants.PaymentAccountBalanceType.fromINBalanceType(_:)([v32 balanceType], 0);
      *(v33 + 240) = v30;
      *(v33 + 208) = *v26;

      v28 = type metadata accessor for SpeakableString();
      v29 = *(*(v28 - 8) + 56);
      v29(v27, 1);
      if (v30 == 4)
      {
        (v29)(*(v33 + 104), 1, 1, v28);
      }

      else
      {
        v25 = *(v33 + 104);
        Constants.PaymentAccountBalanceType.asCATIDForLoc.getter(v30);
        String.toSpeakableString.getter();

        (v29)(v25, 0, 1, v28);
      }

      v12 = swift_task_alloc();
      *(v33 + 216) = v12;
      *v12 = *(v33 + 32);
      v12[1] = SearchForAccountsViewBuilder.buildWatchBalanceLabel(for:isPrimary:);
      v13 = *(v33 + 152);
      v14 = *(v33 + 112);
      v15 = *(v33 + 104);

      return SearchForAccountsCATs.labelForEnum(accountType:balanceType:)(v13, v14, v15);
    }
  }

  else
  {
    v16 = *(v33 + 168);
    v19 = *(v33 + 160);
    v20 = *(v33 + 152);
    v21 = *(v33 + 144);
    v22 = *(v33 + 120);
    v23 = *(v33 + 112);
    v24 = *(v33 + 104);

    v17 = *(*(v33 + 32) + 8);
    v18 = *(v33 + 32);

    return v17(0);
  }
}

{
  v8 = *v1;
  v2 = *(*v1 + 192);
  v8[4] = *v1;
  v9 = v8 + 4;
  v8[25] = v0;

  if (v0)
  {
    v5 = *v9;
    v4 = SearchForAccountsViewBuilder.buildWatchBalanceLabel(for:isPrimary:);
  }

  else
  {
    v7 = v8[23];
    outlined destroy of SpeakableString?(v8[15]);

    v3 = *v9;
    v4 = SearchForAccountsViewBuilder.buildWatchBalanceLabel(for:isPrimary:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v10 = v0[22];
  v1 = v0[21];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[16];
  v0[4] = v0;
  (*(v3 + 32))(v1, v2, v4);

  v14 = v0[21];
  v12 = v0[18];
  v11 = v0[17];
  v15 = v0[16];
  v17 = v0[11];
  type metadata accessor for SAUIDecoratedText();
  v24 = SAUIAppPunchOut.__allocating_init()();
  v0[10] = v24;
  (*(v11 + 16))(v12, v14, v15);
  v5 = TemplatingResult.resultSectionsAsString.getter();
  v13 = MEMORY[0x26D620690](v5);
  v16 = *(v11 + 8);
  v16(v12, v15);

  [v24 setText_];
  MEMORY[0x277D82BD8](v13);
  v16(v14, v15);
  MEMORY[0x277D82BD8](v17);
  v6 = v0[21];
  v18 = v0[20];
  v19 = v0[19];
  v20 = v0[18];
  v21 = v0[15];
  v22 = v0[14];
  v23 = v0[13];

  v7 = *(v0[4] + 8);
  v8 = v0[4];

  return v7(v24);
}

{
  v9 = *v1;
  v2 = *(*v1 + 216);
  v9[4] = *v1;
  v10 = v9 + 4;
  v9[28] = v0;

  if (v0)
  {
    v5 = *v10;
    v4 = SearchForAccountsViewBuilder.buildWatchBalanceLabel(for:isPrimary:);
  }

  else
  {
    v8 = v9[26];
    v7 = v9[14];
    outlined destroy of SpeakableString?(v9[13]);
    outlined destroy of SpeakableString?(v7);

    v3 = *v10;
    v4 = SearchForAccountsViewBuilder.buildWatchBalanceLabel(for:isPrimary:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v1 = v0[21];
  v2 = v0[19];
  v3 = v0[17];
  v4 = v0[16];
  v0[4] = v0;
  (*(v3 + 32))(v1, v2, v4);
  v13 = v0[21];
  v11 = v0[18];
  v10 = v0[17];
  v14 = v0[16];
  v16 = v0[11];
  type metadata accessor for SAUIDecoratedText();
  v23 = SAUIAppPunchOut.__allocating_init()();
  v0[10] = v23;
  (*(v10 + 16))(v11, v13, v14);
  v5 = TemplatingResult.resultSectionsAsString.getter();
  v12 = MEMORY[0x26D620690](v5);
  v15 = *(v10 + 8);
  v15(v11, v14);

  [v23 setText_];
  MEMORY[0x277D82BD8](v12);
  v15(v13, v14);
  MEMORY[0x277D82BD8](v16);
  v6 = v0[21];
  v17 = v0[20];
  v18 = v0[19];
  v19 = v0[18];
  v20 = v0[15];
  v21 = v0[14];
  v22 = v0[13];

  v7 = *(v0[4] + 8);
  v8 = v0[4];

  return v7(v23);
}

{
  v7 = v0[23];
  v8 = v0[22];
  v1 = v0[15];
  v9 = v0[11];
  v0[4] = v0;
  outlined destroy of SpeakableString?(v1);

  MEMORY[0x277D82BD8](v9);
  v2 = v0[25];
  v3 = v0[21];
  v10 = v0[20];
  v11 = v0[19];
  v12 = v0[18];
  v13 = v0[15];
  v14 = v0[14];
  v15 = v0[13];

  v4 = *(v0[4] + 8);
  v5 = v0[4];

  return v4();
}

{
  v8 = v0[26];
  v7 = v0[14];
  v1 = v0[13];
  v9 = v0[11];
  v0[4] = v0;
  outlined destroy of SpeakableString?(v1);
  outlined destroy of SpeakableString?(v7);

  MEMORY[0x277D82BD8](v9);
  v2 = v0[28];
  v3 = v0[21];
  v10 = v0[20];
  v11 = v0[19];
  v12 = v0[18];
  v13 = v0[15];
  v14 = v0[14];
  v15 = v0[13];

  v4 = *(v0[4] + 8);
  v5 = v0[4];

  return v4();
}

uint64_t SearchForAccountsViewBuilder.buildWatchBalanceText(for:)(uint64_t a1)
{
  v2[10] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  v2[6] = 0;
  v2[7] = 0;
  v2[3] = a1;
  v2[4] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](SearchForAccountsViewBuilder.buildWatchBalanceText(for:), 0);
}

uint64_t SearchForAccountsViewBuilder.buildWatchBalanceText(for:)()
{
  v33 = v0[10];
  v0[2] = v0;
  type metadata accessor for NSNumberFormatter();
  v32 = SAUIAppPunchOut.__allocating_init()();
  v0[5] = v32;
  [v32 setNumberStyle_];
  MEMORY[0x277D82BE0](v33);
  if (v33)
  {
    v28 = v31[10];
    v29 = [v28 amount];
    MEMORY[0x277D82BD8](v28);
    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  if (v30)
  {
    v27 = v31[10];
    v31[6] = v30;
    type metadata accessor for SAUIDecoratedText();
    v26 = SAUIAppPunchOut.__allocating_init()();
    v31[7] = v26;
    MEMORY[0x277D82BE0](v27);
    if (v27)
    {
      v22 = v31[10];
      v23 = [v22 balanceType];
      MEMORY[0x277D82BD8](v22);
      v24 = v23;
      v25 = 0;
    }

    else
    {
      v24 = 0;
      v25 = 1;
    }

    if ((v25 & 1) != 0 || (v31[8] = v24, v31[9] = 1, type metadata accessor for INBalanceType(), lazy protocol witness table accessor for type INBalanceType and conformance INBalanceType(), v1 = dispatch thunk of static Equatable.== infix(_:_:)(), (v1 & 1) == 0))
    {
      [v32 setNumberStyle_];
      v14 = [v32 stringFromNumber_];
      if (v14)
      {
        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v11 = v3;
        MEMORY[0x277D82BD8](v14);
        v12 = v10;
        v13 = v11;
      }

      else
      {
        v12 = 0;
        v13 = 0;
      }

      if (v13)
      {
        v8 = MEMORY[0x26D620690](v12);

        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      [v26 setText_];
      MEMORY[0x277D82BD8](v9);
    }

    else
    {
      v21 = [v32 stringFromNumber_];
      if (v21)
      {
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v2;
        MEMORY[0x277D82BD8](v21);
        v19 = v17;
        v20 = v18;
      }

      else
      {
        v19 = 0;
        v20 = 0;
      }

      if (v20)
      {
        v15 = MEMORY[0x26D620690](v19);

        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      [v26 setText_];
      MEMORY[0x277D82BD8](v16);
    }

    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](v32);
    v7 = v26;
  }

  else
  {
    MEMORY[0x277D82BD8](v32);
    v7 = 0;
  }

  v4 = *(v31[2] + 8);
  v5 = v31[2];

  return v4(v7);
}

uint64_t sub_268760A9C()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t SearchForAccountsViewBuilder.makeTemplateAction(for:app:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 272) = v2;
  *(v3 + 264) = a1;
  *(v3 + 80) = v3;
  *(v3 + 88) = 0;
  *(v3 + 96) = 0;
  *(v3 + 104) = 0;
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
  *(v3 + 144) = 0;
  *(v3 + 152) = 0;
  *(v3 + 160) = 0;
  *(v3 + 168) = 0;
  *(v3 + 192) = 0;
  *(v3 + 200) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 208) = 0;
  *(v3 + 216) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 224) = 0;
  *(v3 + 232) = 0;
  *(v3 + 776) = 0;
  *(v3 + 240) = 0;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 248) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 256) = 0;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64);
  *(v3 + 280) = swift_task_alloc();
  *(v3 + 288) = swift_task_alloc();
  *(v3 + 296) = swift_task_alloc();
  *(v3 + 304) = swift_task_alloc();
  *(v3 + 312) = swift_task_alloc();
  v4 = type metadata accessor for TemplatingResult();
  *(v3 + 320) = v4;
  v8 = *(v4 - 8);
  *(v3 + 328) = v8;
  v9 = *(v8 + 64);
  *(v3 + 336) = swift_task_alloc();
  *(v3 + 344) = swift_task_alloc();
  *(v3 + 352) = swift_task_alloc();
  *(v3 + 360) = swift_task_alloc();
  *(v3 + 88) = a1;
  *(v3 + 96) = a2;
  *(v3 + 104) = v2;
  v5 = *(v3 + 80);

  return MEMORY[0x2822009F8](SearchForAccountsViewBuilder.makeTemplateAction(for:app:), 0);
}

uint64_t SearchForAccountsViewBuilder.makeTemplateAction(for:app:)()
{
  v95 = v0[33];
  v0[10] = v0;
  type metadata accessor for SASTViewTemplateAction();
  v1 = SAUIAppPunchOut.__allocating_init()();
  v0[46] = v1;
  v0[14] = v1;
  type metadata accessor for SASTItemGroup();
  v92 = SAUIAppPunchOut.__allocating_init()();
  v0[47] = v92;
  v0[15] = v92;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16SASTTemplateItem_pMd, &_sSo16SASTTemplateItem_pMR);
  _allocateUninitializedArray<A>(_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v92 setTemplateItems_];
  MEMORY[0x277D82BD8](isa);
  type metadata accessor for SASTPropertyListItem();
  v94 = SAUIAppPunchOut.__allocating_init()();
  v0[48] = v94;
  v0[16] = v94;
  v2 = SAUIAppPunchOut.__allocating_init()();
  v0[49] = v2;
  v0[17] = v2;
  v3 = SAUIAppPunchOut.__allocating_init()();
  v0[50] = v3;
  v0[18] = v3;
  v4 = SAUIAppPunchOut.__allocating_init()();
  v0[51] = v4;
  v0[19] = v4;
  v5 = SAUIAppPunchOut.__allocating_init()();
  v0[52] = v5;
  v0[20] = v5;
  v6 = SAUIAppPunchOut.__allocating_init()();
  v0[53] = v6;
  v0[21] = v6;
  v7 = [v95 organizationName];
  v96 = v7;
  if (v7)
  {
    v86 = [v7 spokenPhrase];
    v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v88 = v8;
    MEMORY[0x277D82BD8](v96);
    MEMORY[0x277D82BD8](v86);
    v89 = v87;
    v90 = v88;
  }

  else
  {
    v89 = 0;
    v90 = 0;
  }

  if (v90)
  {
    *(v91 + 64) = v89;
    *(v91 + 72) = v90;
    if ((String.isEmpty.getter() & 1) == 0)
    {
      type metadata accessor for SAUIDecoratedText();
      v85 = SAUIAppPunchOut.__allocating_init()();
      *(v91 + 256) = v85;

      v82 = MEMORY[0x26D620690](v89, v90);

      [v85 setText_];
      MEMORY[0x277D82BD8](v82);
      _allocateUninitializedArray<A>(_:)();
      v83 = v9;
      MEMORY[0x277D82BE0](v85);
      *v83 = v85;
      _finalizeUninitializedArray<A>(_:)();
      v84 = Array._bridgeToObjectiveC()().super.isa;

      [v94 setDecoratedValues_];
      MEMORY[0x277D82BD8](v84);
      MEMORY[0x277D82BD8](v85);
    }
  }

  v81 = static Constants.PaymentAccountType.fromINAccountType(_:)([*(v91 + 264) accountType]);
  *(v91 + 779) = v81;
  if (v81 != 9)
  {
    *(v91 + 776) = v81;
    *(v91 + 777) = v81;
    *(v91 + 778) = 0;
    lazy protocol witness table accessor for type Constants.PaymentAccountType and conformance Constants.PaymentAccountType();
    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      v80 = *(v91 + 312);
      v79 = *(v91 + 272);
      *(v91 + 432) = type metadata accessor for SAUIDecoratedText();
      v10 = SAUIAppPunchOut.__allocating_init()();
      *(v91 + 440) = v10;
      *(v91 + 240) = v10;
      *(v91 + 448) = *v79;

      SearchForAccountsSlots.rawValue.getter(1);
      String.toSpeakableString.getter();

      v11 = type metadata accessor for SpeakableString();
      *(v91 + 456) = v11;
      v12 = *(v11 - 8);
      v13 = *(v12 + 56);
      *(v91 + 464) = v13;
      *(v91 + 472) = (v12 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v13(v80, 0, 1);
      v14 = swift_task_alloc();
      *(v91 + 480) = v14;
      *v14 = *(v91 + 80);
      v14[1] = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
      v15 = *(v91 + 360);
      v16 = *(v91 + 312);

      return SearchForAccountsCATs.labelForResponseSlot(slot:)(v15, v16);
    }
  }

  v78 = [*(v91 + 264) nickname];
  if (v78)
  {
    v73 = [v78 spokenPhrase];
    v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v75 = v18;
    MEMORY[0x277D82BD8](v78);
    MEMORY[0x277D82BD8](v73);
    v76 = v74;
    v77 = v75;
  }

  else
  {
    v76 = 0;
    v77 = 0;
  }

  *(v91 + 544) = v77;
  *(v91 + 536) = v76;
  if (v77)
  {
    *(v91 + 32) = v76;
    *(v91 + 40) = v77;
    if ((String.isEmpty.getter() & 1) == 0)
    {
      v72 = *(v91 + 288);
      v71 = *(v91 + 272);
      *(v91 + 552) = type metadata accessor for SAUIDecoratedText();
      v19 = SAUIAppPunchOut.__allocating_init()();
      *(v91 + 560) = v19;
      *(v91 + 224) = v19;
      *(v91 + 568) = *v71;

      SearchForAccountsSlots.rawValue.getter(0);
      String.toSpeakableString.getter();

      v20 = type metadata accessor for SpeakableString();
      (*(*(v20 - 8) + 56))(v72, 0, 1);
      v21 = swift_task_alloc();
      *(v91 + 576) = v21;
      *v21 = *(v91 + 80);
      v21[1] = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
      v15 = *(v91 + 344);
      v16 = *(v91 + 288);

      return SearchForAccountsCATs.labelForResponseSlot(slot:)(v15, v16);
    }
  }

  v70 = [*(v91 + 264) accountNumber];
  if (v70)
  {
    v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v67 = v22;
    MEMORY[0x277D82BD8](v70);
    v68 = v66;
    v69 = v67;
  }

  else
  {
    v68 = 0;
    v69 = 0;
  }

  *(v91 + 600) = v69;
  *(v91 + 592) = v68;
  if (v69)
  {
    *(v91 + 16) = v68;
    *(v91 + 24) = v69;
    if ((String.isEmpty.getter() & 1) == 0)
    {
      v65 = *(v91 + 280);
      v64 = *(v91 + 272);
      *(v91 + 608) = type metadata accessor for SAUIDecoratedText();
      v23 = SAUIAppPunchOut.__allocating_init()();
      *(v91 + 616) = v23;
      *(v91 + 208) = v23;
      *(v91 + 624) = *v64;

      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("accountNumber", 0xDuLL, 1);
      String.toSpeakableString.getter();

      v24 = type metadata accessor for SpeakableString();
      (*(*(v24 - 8) + 56))(v65, 0, 1);
      v25 = swift_task_alloc();
      *(v91 + 632) = v25;
      *v25 = *(v91 + 80);
      v25[1] = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
      v15 = *(v91 + 336);
      v16 = *(v91 + 280);

      return SearchForAccountsCATs.labelForResponseSlot(slot:)(v15, v16);
    }
  }

  v63 = [*(v91 + 264) balance];
  if (v63)
  {
    v61 = [v63 amount];
    MEMORY[0x277D82BD8](v63);
    v62 = v61;
  }

  else
  {
    v62 = 0;
  }

  *(v91 + 176) = v62;
  v60 = *(v91 + 176) != 0;
  outlined destroy of SFRichText?((v91 + 176));
  if (v60)
  {
    v59 = [*(v91 + 264) balance];
    *(v91 + 648) = v59;
    has_malloc_size = _swift_stdlib_has_malloc_size();
    v26 = swift_task_alloc();
    v27 = v59;
    *(v91 + 656) = v26;
    *v26 = *(v91 + 80);
    v26[1] = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
    v28 = *(v91 + 272);
    v29 = has_malloc_size & 1;

    return SearchForAccountsViewBuilder.buildWatchBalanceLabel(for:isPrimary:)(v27, v29);
  }

  v30 = [*(v91 + 264) secondaryBalance];
  v57 = v30;
  if (v30)
  {
    v55 = [v30 amount];
    MEMORY[0x277D82BD8](v57);
    v56 = v55;
  }

  else
  {
    v56 = 0;
  }

  *(v91 + 184) = v56;
  v54 = *(v91 + 184) != 0;
  outlined destroy of SFRichText?((v91 + 184));
  if (v54)
  {
    v53 = [*(v91 + 264) secondaryBalance];
    *(v91 + 712) = v53;
    v31 = swift_task_alloc();
    v27 = v53;
    *(v91 + 720) = v31;
    *v31 = *(v91 + 80);
    v31[1] = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
    v32 = *(v91 + 272);
    v29 = 0;

    return SearchForAccountsViewBuilder.buildWatchBalanceLabel(for:isPrimary:)(v27, v29);
  }

  v37 = *(v91 + 424);
  v38 = *(v91 + 416);
  v39 = *(v91 + 408);
  v40 = *(v91 + 400);
  v41 = *(v91 + 392);
  v42 = *(v91 + 384);
  v43 = *(v91 + 376);
  v36 = *(v91 + 368);
  v44 = *(v91 + 360);
  v45 = *(v91 + 352);
  v46 = *(v91 + 344);
  v47 = *(v91 + 336);
  v48 = *(v91 + 312);
  v49 = *(v91 + 304);
  v50 = *(v91 + 296);
  v51 = *(v91 + 288);
  v52 = *(v91 + 280);
  MEMORY[0x277D82BE0](v42);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v42, &protocol witness table for SASTPropertyListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v41);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v41, &protocol witness table for SASTPropertyListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v40);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v40, &protocol witness table for SASTPropertyListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v39);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v39, &protocol witness table for SASTPropertyListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v38);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v38, &protocol witness table for SASTPropertyListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v37);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v37, &protocol witness table for SASTPropertyListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v43);
  [v36 setItemGroupView_];
  MEMORY[0x277D82BD8](v43);
  MEMORY[0x277D82BD8](v37);
  MEMORY[0x277D82BD8](v38);
  MEMORY[0x277D82BD8](v39);
  MEMORY[0x277D82BD8](v40);
  MEMORY[0x277D82BD8](v41);
  MEMORY[0x277D82BD8](v42);
  MEMORY[0x277D82BD8](v43);

  v33 = *(*(v91 + 80) + 8);
  v34 = *(v91 + 80);
  v35 = *(v91 + 368);

  return v33(v35);
}

{
  v8 = *v1;
  v2 = *(*v1 + 480);
  v8[10] = *v1;
  v9 = v8 + 10;
  v8[61] = v0;

  if (v0)
  {
    v5 = *v9;
    v4 = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
  }

  else
  {
    v7 = v8[56];
    outlined destroy of SpeakableString?(v8[39]);

    v3 = *v9;
    v4 = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v19 = *(v0 + 440);
  v22 = *(v0 + 779);
  v18 = *(v0 + 360);
  v16 = *(v0 + 328);
  v17 = *(v0 + 320);
  v21 = *(v0 + 272);
  *(v0 + 80) = v0;
  v1 = TemplatingResult.resultSectionsAsString.getter();
  v20 = MEMORY[0x26D620690](v1);
  v2 = *(v16 + 8);
  *(v0 + 496) = v2;
  *(v0 + 504) = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v2(v18, v17);

  [v19 setText_];
  MEMORY[0x277D82BD8](v20);
  *(v0 + 512) = *v21;

  Constants.PaymentAccountType.asCATIDForLoc.getter(v22);
  if (v3)
  {
    v13 = v15[59];
    v14 = v15[58];
    v12 = v15[57];
    v11 = v15[38];
    String.toSpeakableString.getter();

    v14(v11, 0, 1, v12);
  }

  else
  {
    v10 = v15[59];
    (v15[58])(v15[38], 1, 1, v15[57]);
  }

  v4 = v15[59];
  (v15[58])(v15[37], 1, 1, v15[57]);
  v5 = swift_task_alloc();
  v15[65] = v5;
  *v5 = v15[10];
  v5[1] = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
  v6 = v15[44];
  v7 = v15[38];
  v8 = v15[37];

  return SearchForAccountsCATs.labelForEnum(accountType:balanceType:)(v6, v7, v8);
}

{
  v9 = *v1;
  v2 = *(*v1 + 520);
  v9[10] = *v1;
  v10 = v9 + 10;
  v9[66] = v0;

  if (v0)
  {
    v5 = *v10;
    v4 = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
  }

  else
  {
    v8 = v9[64];
    v7 = v9[38];
    outlined destroy of SpeakableString?(v9[37]);
    outlined destroy of SpeakableString?(v7);

    v3 = *v10;
    v4 = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v68 = *(v0 + 504);
  v69 = *(v0 + 496);
  v80 = *(v0 + 440);
  v75 = *(v0 + 432);
  v76 = *(v0 + 392);
  v70 = *(v0 + 352);
  v71 = *(v0 + 320);
  *(v0 + 80) = v0;
  v72 = TemplatingResult.resultSectionsAsString.getter();
  v79 = v1;
  *(v0 + 48) = v72;
  *(v0 + 56) = v1;
  v69(v70, v71);
  v78 = SAUIAppPunchOut.__allocating_init()();
  *(v0 + 248) = v78;

  v73 = MEMORY[0x26D620690](v72, v79);

  [v78 setText_];
  MEMORY[0x277D82BD8](v73);
  MEMORY[0x277D82BE0](v80);
  [v76 setDecoratedTitle_];
  MEMORY[0x277D82BD8](v80);
  _allocateUninitializedArray<A>(_:)();
  v74 = v2;
  MEMORY[0x277D82BE0](v78);
  *v74 = v78;
  _finalizeUninitializedArray<A>(_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v76 setDecoratedValues_];
  MEMORY[0x277D82BD8](isa);
  MEMORY[0x277D82BD8](v78);

  MEMORY[0x277D82BD8](v80);
  v3 = [*(v0 + 264) nickname];
  v81 = v3;
  if (v3)
  {
    v62 = [v3 spokenPhrase];
    v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v64 = v4;
    MEMORY[0x277D82BD8](v81);
    MEMORY[0x277D82BD8](v62);
    v65 = v63;
    v66 = v64;
  }

  else
  {
    v65 = 0;
    v66 = 0;
  }

  *(v67 + 544) = v66;
  *(v67 + 536) = v65;
  if (v66)
  {
    *(v67 + 32) = v65;
    *(v67 + 40) = v66;
    if ((String.isEmpty.getter() & 1) == 0)
    {
      v61 = *(v67 + 288);
      v60 = *(v67 + 272);
      *(v67 + 552) = type metadata accessor for SAUIDecoratedText();
      v5 = SAUIAppPunchOut.__allocating_init()();
      *(v67 + 560) = v5;
      *(v67 + 224) = v5;
      *(v67 + 568) = *v60;

      SearchForAccountsSlots.rawValue.getter(0);
      String.toSpeakableString.getter();

      v6 = type metadata accessor for SpeakableString();
      (*(*(v6 - 8) + 56))(v61, 0, 1);
      v7 = swift_task_alloc();
      *(v67 + 576) = v7;
      *v7 = *(v67 + 80);
      v7[1] = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
      v8 = *(v67 + 344);
      v9 = *(v67 + 288);

      return SearchForAccountsCATs.labelForResponseSlot(slot:)(v8, v9);
    }
  }

  v59 = [*(v67 + 264) accountNumber];
  if (v59)
  {
    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v11;
    MEMORY[0x277D82BD8](v59);
    v57 = v55;
    v58 = v56;
  }

  else
  {
    v57 = 0;
    v58 = 0;
  }

  *(v67 + 600) = v58;
  *(v67 + 592) = v57;
  if (v58)
  {
    *(v67 + 16) = v57;
    *(v67 + 24) = v58;
    if (String.isEmpty.getter())
    {

      goto LABEL_21;
    }

    v54 = *(v67 + 280);
    v53 = *(v67 + 272);
    *(v67 + 608) = type metadata accessor for SAUIDecoratedText();
    v12 = SAUIAppPunchOut.__allocating_init()();
    *(v67 + 616) = v12;
    *(v67 + 208) = v12;
    *(v67 + 624) = *v53;

    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("accountNumber", 0xDuLL, 1);
    String.toSpeakableString.getter();

    v13 = type metadata accessor for SpeakableString();
    (*(*(v13 - 8) + 56))(v54, 0, 1);
    v14 = swift_task_alloc();
    *(v67 + 632) = v14;
    *v14 = *(v67 + 80);
    v14[1] = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
    v8 = *(v67 + 336);
    v9 = *(v67 + 280);

    return SearchForAccountsCATs.labelForResponseSlot(slot:)(v8, v9);
  }

LABEL_21:
  v52 = [*(v67 + 264) balance];
  if (v52)
  {
    v50 = [v52 amount];
    MEMORY[0x277D82BD8](v52);
    v51 = v50;
  }

  else
  {
    v51 = 0;
  }

  *(v67 + 176) = v51;
  v49 = *(v67 + 176) != 0;
  outlined destroy of SFRichText?((v67 + 176));
  if (v49)
  {
    v48 = [*(v67 + 264) balance];
    *(v67 + 648) = v48;
    has_malloc_size = _swift_stdlib_has_malloc_size();
    v15 = swift_task_alloc();
    v16 = v48;
    *(v67 + 656) = v15;
    *v15 = *(v67 + 80);
    v15[1] = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
    v17 = *(v67 + 272);
    v18 = has_malloc_size & 1;

    return SearchForAccountsViewBuilder.buildWatchBalanceLabel(for:isPrimary:)(v16, v18);
  }

  v19 = [*(v67 + 264) secondaryBalance];
  v46 = v19;
  if (v19)
  {
    v44 = [v19 amount];
    MEMORY[0x277D82BD8](v46);
    v45 = v44;
  }

  else
  {
    v45 = 0;
  }

  *(v67 + 184) = v45;
  v43 = *(v67 + 184) != 0;
  outlined destroy of SFRichText?((v67 + 184));
  if (v43)
  {
    v42 = [*(v67 + 264) secondaryBalance];
    *(v67 + 712) = v42;
    v20 = swift_task_alloc();
    v16 = v42;
    *(v67 + 720) = v20;
    *v20 = *(v67 + 80);
    v20[1] = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
    v21 = *(v67 + 272);
    v18 = 0;

    return SearchForAccountsViewBuilder.buildWatchBalanceLabel(for:isPrimary:)(v16, v18);
  }

  v26 = *(v67 + 424);
  v27 = *(v67 + 416);
  v28 = *(v67 + 408);
  v29 = *(v67 + 400);
  v30 = *(v67 + 392);
  v31 = *(v67 + 384);
  v32 = *(v67 + 376);
  v25 = *(v67 + 368);
  v33 = *(v67 + 360);
  v34 = *(v67 + 352);
  v35 = *(v67 + 344);
  v36 = *(v67 + 336);
  v37 = *(v67 + 312);
  v38 = *(v67 + 304);
  v39 = *(v67 + 296);
  v40 = *(v67 + 288);
  v41 = *(v67 + 280);
  MEMORY[0x277D82BE0](v31);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v31, &protocol witness table for SASTPropertyListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v30);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v30, &protocol witness table for SASTPropertyListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v29);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v29, &protocol witness table for SASTPropertyListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v28);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v28, &protocol witness table for SASTPropertyListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v27);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v27, &protocol witness table for SASTPropertyListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v26);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v26, &protocol witness table for SASTPropertyListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v32);
  [v25 setItemGroupView_];
  MEMORY[0x277D82BD8](v32);
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](v30);
  MEMORY[0x277D82BD8](v31);
  MEMORY[0x277D82BD8](v32);

  v22 = *(*(v67 + 80) + 8);
  v23 = *(v67 + 80);
  v24 = *(v67 + 368);

  return v22(v24);
}

{
  v8 = *v1;
  v2 = *(*v1 + 576);
  v8[10] = *v1;
  v9 = v8 + 10;
  v8[73] = v0;

  if (v0)
  {
    v5 = *v9;
    v4 = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
  }

  else
  {
    v7 = v8[71];
    outlined destroy of SpeakableString?(v8[36]);

    v3 = *v9;
    v4 = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v66 = *(v0 + 560);
  v62 = *(v0 + 552);
  v67 = *(v0 + 544);
  v59 = *(v0 + 536);
  v63 = *(v0 + 400);
  v57 = *(v0 + 344);
  v55 = *(v0 + 328);
  v56 = *(v0 + 320);
  *(v0 + 80) = v0;
  v1 = TemplatingResult.resultSectionsAsString.getter();
  v58 = MEMORY[0x26D620690](v1);
  (*(v55 + 8))(v57, v56);

  [v66 0x1FB02AAF8];
  MEMORY[0x277D82BD8](v58);
  v65 = SAUIAppPunchOut.__allocating_init()();
  *(v0 + 232) = v65;

  v60 = MEMORY[0x26D620690](v59, v67);

  [v65 0x1FB02AAF8];
  MEMORY[0x277D82BD8](v60);
  MEMORY[0x277D82BE0](v66);
  [v63 setDecoratedTitle_];
  MEMORY[0x277D82BD8](v66);
  _allocateUninitializedArray<A>(_:)();
  v61 = v2;
  MEMORY[0x277D82BE0](v65);
  *v61 = v65;
  _finalizeUninitializedArray<A>(_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v63 setDecoratedValues_];
  MEMORY[0x277D82BD8](isa);
  MEMORY[0x277D82BD8](v65);
  MEMORY[0x277D82BD8](v66);

  v68 = [*(v0 + 264) accountNumber];
  if (v68)
  {
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v3;
    MEMORY[0x277D82BD8](v68);
    v52 = v50;
    v53 = v51;
  }

  else
  {
    v52 = 0;
    v53 = 0;
  }

  *(v54 + 600) = v53;
  *(v54 + 592) = v52;
  if (v53)
  {
    *(v54 + 16) = v52;
    *(v54 + 24) = v53;
    if ((String.isEmpty.getter() & 1) == 0)
    {
      v49 = *(v54 + 280);
      v48 = *(v54 + 272);
      *(v54 + 608) = type metadata accessor for SAUIDecoratedText();
      v4 = SAUIAppPunchOut.__allocating_init()();
      *(v54 + 616) = v4;
      *(v54 + 208) = v4;
      *(v54 + 624) = *v48;

      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("accountNumber", 0xDuLL, 1);
      String.toSpeakableString.getter();

      v5 = type metadata accessor for SpeakableString();
      (*(*(v5 - 8) + 56))(v49, 0, 1);
      v6 = swift_task_alloc();
      *(v54 + 632) = v6;
      *v6 = *(v54 + 80);
      v6[1] = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
      v7 = *(v54 + 336);
      v8 = *(v54 + 280);

      return SearchForAccountsCATs.labelForResponseSlot(slot:)(v7, v8);
    }
  }

  v47 = [*(v54 + 264) balance];
  if (v47)
  {
    v45 = [v47 amount];
    MEMORY[0x277D82BD8](v47);
    v46 = v45;
  }

  else
  {
    v46 = 0;
  }

  *(v54 + 176) = v46;
  v44 = *(v54 + 176) != 0;
  outlined destroy of SFRichText?((v54 + 176));
  if (v44)
  {
    v43 = [*(v54 + 264) balance];
    *(v54 + 648) = v43;
    has_malloc_size = _swift_stdlib_has_malloc_size();
    v10 = swift_task_alloc();
    v11 = v43;
    *(v54 + 656) = v10;
    *v10 = *(v54 + 80);
    v10[1] = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
    v12 = *(v54 + 272);
    v13 = has_malloc_size & 1;

    return SearchForAccountsViewBuilder.buildWatchBalanceLabel(for:isPrimary:)(v11, v13);
  }

  v14 = [*(v54 + 264) secondaryBalance];
  v41 = v14;
  if (v14)
  {
    v39 = [v14 amount];
    MEMORY[0x277D82BD8](v41);
    v40 = v39;
  }

  else
  {
    v40 = 0;
  }

  *(v54 + 184) = v40;
  v38 = *(v54 + 184) != 0;
  outlined destroy of SFRichText?((v54 + 184));
  if (v38)
  {
    v37 = [*(v54 + 264) secondaryBalance];
    *(v54 + 712) = v37;
    v15 = swift_task_alloc();
    v11 = v37;
    *(v54 + 720) = v15;
    *v15 = *(v54 + 80);
    v15[1] = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
    v16 = *(v54 + 272);
    v13 = 0;

    return SearchForAccountsViewBuilder.buildWatchBalanceLabel(for:isPrimary:)(v11, v13);
  }

  v21 = *(v54 + 424);
  v22 = *(v54 + 416);
  v23 = *(v54 + 408);
  v24 = *(v54 + 400);
  v25 = *(v54 + 392);
  v26 = *(v54 + 384);
  v27 = *(v54 + 376);
  v20 = *(v54 + 368);
  v28 = *(v54 + 360);
  v29 = *(v54 + 352);
  v30 = *(v54 + 344);
  v31 = *(v54 + 336);
  v32 = *(v54 + 312);
  v33 = *(v54 + 304);
  v34 = *(v54 + 296);
  v35 = *(v54 + 288);
  v36 = *(v54 + 280);
  MEMORY[0x277D82BE0](v26);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v26, &protocol witness table for SASTPropertyListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v25);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v25, &protocol witness table for SASTPropertyListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v24);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v24, &protocol witness table for SASTPropertyListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v23);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v23, &protocol witness table for SASTPropertyListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v22);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v22, &protocol witness table for SASTPropertyListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v21);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v21, &protocol witness table for SASTPropertyListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v27);
  [v20 setItemGroupView_];
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](v27);

  v17 = *(*(v54 + 80) + 8);
  v18 = *(v54 + 80);
  v19 = *(v54 + 368);

  return v17(v19);
}

{
  v8 = *v1;
  v2 = *(*v1 + 632);
  v8[10] = *v1;
  v9 = v8 + 10;
  v8[80] = v0;

  if (v0)
  {
    v5 = *v9;
    v4 = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
  }

  else
  {
    v7 = v8[78];
    outlined destroy of SpeakableString?(v8[35]);

    v3 = *v9;
    v4 = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v54 = *(v0 + 616);
  v50 = *(v0 + 608);
  v55 = *(v0 + 600);
  v47 = *(v0 + 592);
  v51 = *(v0 + 408);
  v45 = *(v0 + 336);
  v43 = *(v0 + 328);
  v44 = *(v0 + 320);
  *(v0 + 80) = v0;
  v1 = TemplatingResult.resultSectionsAsString.getter();
  v46 = MEMORY[0x26D620690](v1);
  (*(v43 + 8))(v45, v44);

  [v54 0x1FB02AAF8];
  MEMORY[0x277D82BD8](v46);
  v53 = SAUIAppPunchOut.__allocating_init()();
  *(v0 + 216) = v53;

  v48 = MEMORY[0x26D620690](v47, v55);

  [v53 0x1FB02AAF8];
  MEMORY[0x277D82BD8](v48);
  MEMORY[0x277D82BE0](v54);
  [v51 setDecoratedTitle_];
  MEMORY[0x277D82BD8](v54);
  _allocateUninitializedArray<A>(_:)();
  v49 = v2;
  MEMORY[0x277D82BE0](v53);
  *v49 = v53;
  _finalizeUninitializedArray<A>(_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v51 setDecoratedValues_];
  MEMORY[0x277D82BD8](isa);
  MEMORY[0x277D82BD8](v53);
  MEMORY[0x277D82BD8](v54);

  v3 = [*(v0 + 264) balance];
  v56 = v3;
  if (v3)
  {
    v40 = [v3 amount];
    MEMORY[0x277D82BD8](v56);
    v41 = v40;
  }

  else
  {
    v41 = 0;
  }

  *(v42 + 176) = v41;
  v39 = *(v42 + 176) != 0;
  outlined destroy of SFRichText?((v42 + 176));
  if (v39)
  {
    v38 = [*(v42 + 264) balance];
    *(v42 + 648) = v38;
    has_malloc_size = _swift_stdlib_has_malloc_size();
    v4 = swift_task_alloc();
    v5 = v38;
    *(v42 + 656) = v4;
    *v4 = *(v42 + 80);
    v4[1] = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
    v6 = *(v42 + 272);
    v7 = has_malloc_size & 1;

    return SearchForAccountsViewBuilder.buildWatchBalanceLabel(for:isPrimary:)(v5, v7);
  }

  v9 = [*(v42 + 264) secondaryBalance];
  v36 = v9;
  if (v9)
  {
    v34 = [v9 amount];
    MEMORY[0x277D82BD8](v36);
    v35 = v34;
  }

  else
  {
    v35 = 0;
  }

  *(v42 + 184) = v35;
  v33 = *(v42 + 184) != 0;
  outlined destroy of SFRichText?((v42 + 184));
  if (v33)
  {
    v32 = [*(v42 + 264) secondaryBalance];
    *(v42 + 712) = v32;
    v10 = swift_task_alloc();
    v5 = v32;
    *(v42 + 720) = v10;
    *v10 = *(v42 + 80);
    v10[1] = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
    v11 = *(v42 + 272);
    v7 = 0;

    return SearchForAccountsViewBuilder.buildWatchBalanceLabel(for:isPrimary:)(v5, v7);
  }

  v16 = *(v42 + 424);
  v17 = *(v42 + 416);
  v18 = *(v42 + 408);
  v19 = *(v42 + 400);
  v20 = *(v42 + 392);
  v21 = *(v42 + 384);
  v22 = *(v42 + 376);
  v15 = *(v42 + 368);
  v23 = *(v42 + 360);
  v24 = *(v42 + 352);
  v25 = *(v42 + 344);
  v26 = *(v42 + 336);
  v27 = *(v42 + 312);
  v28 = *(v42 + 304);
  v29 = *(v42 + 296);
  v30 = *(v42 + 288);
  v31 = *(v42 + 280);
  MEMORY[0x277D82BE0](v21);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v21, &protocol witness table for SASTPropertyListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v20);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v20, &protocol witness table for SASTPropertyListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v19);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v19, &protocol witness table for SASTPropertyListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v18);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v18, &protocol witness table for SASTPropertyListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v17);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v17, &protocol witness table for SASTPropertyListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v16);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v16, &protocol witness table for SASTPropertyListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v22);
  [v15 setItemGroupView_];
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v22);

  v12 = *(*(v42 + 80) + 8);
  v13 = *(v42 + 80);
  v14 = *(v42 + 368);

  return v12(v14);
}

{
  v5 = v0[83];
  v1 = v0[52];
  v6 = v0[33];
  v0[10] = v0;
  [v1 setDecoratedTitle_];
  MEMORY[0x277D82BD8](v5);
  v8 = [v6 balance];
  v0[85] = v8;
  v2 = swift_task_alloc();
  v7[86] = v2;
  *v2 = v7[10];
  v2[1] = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
  v3 = v7[34];

  return SearchForAccountsViewBuilder.buildWatchBalanceText(for:)(v8);
}

{
  v1 = *(v0 + 696);
  *(v0 + 80) = v0;
  if (v1)
  {
    v35 = *(v36 + 696);
    v33 = *(v36 + 416);
    *(v36 + 200) = v35;
    type metadata accessor for SAUIDecoratedText();
    _allocateUninitializedArray<A>(_:)();
    v32 = v2;
    MEMORY[0x277D82BE0](v35);
    *v32 = v35;
    _finalizeUninitializedArray<A>(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v33 setDecoratedValues_];
    MEMORY[0x277D82BD8](isa);
    MEMORY[0x277D82BD8](v35);
  }

  v3 = [*(v36 + 264) secondaryBalance];
  v31 = v3;
  if (v3)
  {
    v29 = [v3 amount];
    MEMORY[0x277D82BD8](v31);
    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  *(v36 + 184) = v30;
  v28 = *(v36 + 184) != 0;
  outlined destroy of SFRichText?((v36 + 184));
  if (v28)
  {
    v27 = [*(v36 + 264) secondaryBalance];
    *(v36 + 712) = v27;
    v4 = swift_task_alloc();
    *(v36 + 720) = v4;
    *v4 = *(v36 + 80);
    v4[1] = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
    v5 = *(v36 + 272);

    return SearchForAccountsViewBuilder.buildWatchBalanceLabel(for:isPrimary:)(v27, 0);
  }

  else
  {
    v11 = *(v36 + 424);
    v12 = *(v36 + 416);
    v13 = *(v36 + 408);
    v14 = *(v36 + 400);
    v15 = *(v36 + 392);
    v16 = *(v36 + 384);
    v17 = *(v36 + 376);
    v10 = *(v36 + 368);
    v18 = *(v36 + 360);
    v19 = *(v36 + 352);
    v20 = *(v36 + 344);
    v21 = *(v36 + 336);
    v22 = *(v36 + 312);
    v23 = *(v36 + 304);
    v24 = *(v36 + 296);
    v25 = *(v36 + 288);
    v26 = *(v36 + 280);
    MEMORY[0x277D82BE0](v16);
    SASTItemGroup.addToTemplateIfApplicable(_:)(v16, &protocol witness table for SASTPropertyListItem);
    swift_unknownObjectRelease();
    MEMORY[0x277D82BE0](v15);
    SASTItemGroup.addToTemplateIfApplicable(_:)(v15, &protocol witness table for SASTPropertyListItem);
    swift_unknownObjectRelease();
    MEMORY[0x277D82BE0](v14);
    SASTItemGroup.addToTemplateIfApplicable(_:)(v14, &protocol witness table for SASTPropertyListItem);
    swift_unknownObjectRelease();
    MEMORY[0x277D82BE0](v13);
    SASTItemGroup.addToTemplateIfApplicable(_:)(v13, &protocol witness table for SASTPropertyListItem);
    swift_unknownObjectRelease();
    MEMORY[0x277D82BE0](v12);
    SASTItemGroup.addToTemplateIfApplicable(_:)(v12, &protocol witness table for SASTPropertyListItem);
    swift_unknownObjectRelease();
    MEMORY[0x277D82BE0](v11);
    SASTItemGroup.addToTemplateIfApplicable(_:)(v11, &protocol witness table for SASTPropertyListItem);
    swift_unknownObjectRelease();
    MEMORY[0x277D82BE0](v17);
    [v10 setItemGroupView_];
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v17);

    v7 = *(*(v36 + 80) + 8);
    v8 = *(v36 + 80);
    v9 = *(v36 + 368);

    return v7(v9);
  }
}

{
  v5 = v0[91];
  v1 = v0[53];
  v6 = v0[33];
  v0[10] = v0;
  [v1 setDecoratedTitle_];
  MEMORY[0x277D82BD8](v5);
  v8 = [v6 secondaryBalance];
  v0[93] = v8;
  v2 = swift_task_alloc();
  v7[94] = v2;
  *v2 = v7[10];
  v2[1] = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
  v3 = v7[34];

  return SearchForAccountsViewBuilder.buildWatchBalanceText(for:)(v8);
}

{
  v1 = *(v0 + 760);
  *(v0 + 80) = v0;
  if (v1)
  {
    v27 = v28[95];
    v25 = v28[53];
    v28[24] = v27;
    type metadata accessor for SAUIDecoratedText();
    _allocateUninitializedArray<A>(_:)();
    v24 = v2;
    MEMORY[0x277D82BE0](v27);
    *v24 = v27;
    _finalizeUninitializedArray<A>(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v25 setDecoratedValues_];
    MEMORY[0x277D82BD8](isa);
    MEMORY[0x277D82BD8](v27);
  }

  v8 = v28[53];
  v9 = v28[52];
  v10 = v28[51];
  v11 = v28[50];
  v12 = v28[49];
  v13 = v28[48];
  v14 = v28[47];
  v7 = v28[46];
  v15 = v28[45];
  v16 = v28[44];
  v17 = v28[43];
  v18 = v28[42];
  v19 = v28[39];
  v20 = v28[38];
  v21 = v28[37];
  v22 = v28[36];
  v23 = v28[35];
  MEMORY[0x277D82BE0](v13);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v13, &protocol witness table for SASTPropertyListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v12);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v12, &protocol witness table for SASTPropertyListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v11);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v11, &protocol witness table for SASTPropertyListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v10);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v10, &protocol witness table for SASTPropertyListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v9);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v9, &protocol witness table for SASTPropertyListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v8);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v8, &protocol witness table for SASTPropertyListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v14);
  [v7 setItemGroupView_];
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);

  v3 = *(v28[10] + 8);
  v4 = v28[10];
  v5 = v28[46];

  return v3(v5);
}

{
  v7 = v0[56];
  v8 = v0[55];
  v9 = v0[53];
  v10 = v0[52];
  v11 = v0[51];
  v12 = v0[50];
  v13 = v0[49];
  v14 = v0[48];
  v15 = v0[47];
  v16 = v0[46];
  v1 = v0[39];
  v0[10] = v0;
  outlined destroy of SpeakableString?(v1);

  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  v2 = v0[61];
  v3 = v0[45];
  v17 = v0[44];
  v18 = v0[43];
  v19 = v0[42];
  v20 = v0[39];
  v21 = v0[38];
  v22 = v0[37];
  v23 = v0[36];
  v24 = v0[35];

  v4 = *(v0[10] + 8);
  v5 = v0[10];

  return v4();
}

{
  v8 = v0[64];
  v9 = v0[55];
  v10 = v0[53];
  v11 = v0[52];
  v12 = v0[51];
  v13 = v0[50];
  v14 = v0[49];
  v15 = v0[48];
  v16 = v0[47];
  v17 = v0[46];
  v7 = v0[38];
  v1 = v0[37];
  v0[10] = v0;
  outlined destroy of SpeakableString?(v1);
  outlined destroy of SpeakableString?(v7);

  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  v2 = v0[66];
  v3 = v0[45];
  v18 = v0[44];
  v19 = v0[43];
  v20 = v0[42];
  v21 = v0[39];
  v22 = v0[38];
  v23 = v0[37];
  v24 = v0[36];
  v25 = v0[35];

  v4 = *(v0[10] + 8);
  v5 = v0[10];

  return v4();
}

{
  v7 = v0[71];
  v8 = v0[70];
  v9 = v0[68];
  v10 = v0[53];
  v11 = v0[52];
  v12 = v0[51];
  v13 = v0[50];
  v14 = v0[49];
  v15 = v0[48];
  v16 = v0[47];
  v17 = v0[46];
  v1 = v0[36];
  v0[10] = v0;
  outlined destroy of SpeakableString?(v1);

  MEMORY[0x277D82BD8](v8);

  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  v2 = v0[73];
  v3 = v0[45];
  v18 = v0[44];
  v19 = v0[43];
  v20 = v0[42];
  v21 = v0[39];
  v22 = v0[38];
  v23 = v0[37];
  v24 = v0[36];
  v25 = v0[35];

  v4 = *(v0[10] + 8);
  v5 = v0[10];

  return v4();
}

{
  v7 = v0[78];
  v8 = v0[77];
  v9 = v0[75];
  v10 = v0[53];
  v11 = v0[52];
  v12 = v0[51];
  v13 = v0[50];
  v14 = v0[49];
  v15 = v0[48];
  v16 = v0[47];
  v17 = v0[46];
  v1 = v0[35];
  v0[10] = v0;
  outlined destroy of SpeakableString?(v1);

  MEMORY[0x277D82BD8](v8);

  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  v2 = v0[80];
  v3 = v0[45];
  v18 = v0[44];
  v19 = v0[43];
  v20 = v0[42];
  v21 = v0[39];
  v22 = v0[38];
  v23 = v0[37];
  v24 = v0[36];
  v25 = v0[35];

  v4 = *(v0[10] + 8);
  v5 = v0[10];

  return v4();
}

{
  v1 = v0[81];
  v7 = v0[53];
  v8 = v0[52];
  v9 = v0[51];
  v10 = v0[50];
  v11 = v0[49];
  v12 = v0[48];
  v13 = v0[47];
  v14 = v0[46];
  v0[10] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  v2 = v0[84];
  v3 = v0[45];
  v15 = v0[44];
  v16 = v0[43];
  v17 = v0[42];
  v18 = v0[39];
  v19 = v0[38];
  v20 = v0[37];
  v21 = v0[36];
  v22 = v0[35];

  v4 = *(v0[10] + 8);
  v5 = v0[10];

  return v4();
}

{
  v1 = v0[85];
  v7 = v0[53];
  v8 = v0[52];
  v9 = v0[51];
  v10 = v0[50];
  v11 = v0[49];
  v12 = v0[48];
  v13 = v0[47];
  v14 = v0[46];
  v0[10] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  v2 = v0[88];
  v3 = v0[45];
  v15 = v0[44];
  v16 = v0[43];
  v17 = v0[42];
  v18 = v0[39];
  v19 = v0[38];
  v20 = v0[37];
  v21 = v0[36];
  v22 = v0[35];

  v4 = *(v0[10] + 8);
  v5 = v0[10];

  return v4();
}

{
  v1 = v0[89];
  v7 = v0[53];
  v8 = v0[52];
  v9 = v0[51];
  v10 = v0[50];
  v11 = v0[49];
  v12 = v0[48];
  v13 = v0[47];
  v14 = v0[46];
  v0[10] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  v2 = v0[92];
  v3 = v0[45];
  v15 = v0[44];
  v16 = v0[43];
  v17 = v0[42];
  v18 = v0[39];
  v19 = v0[38];
  v20 = v0[37];
  v21 = v0[36];
  v22 = v0[35];

  v4 = *(v0[10] + 8);
  v5 = v0[10];

  return v4();
}

{
  v1 = v0[93];
  v7 = v0[53];
  v8 = v0[52];
  v9 = v0[51];
  v10 = v0[50];
  v11 = v0[49];
  v12 = v0[48];
  v13 = v0[47];
  v14 = v0[46];
  v0[10] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  v2 = v0[96];
  v3 = v0[45];
  v15 = v0[44];
  v16 = v0[43];
  v17 = v0[42];
  v18 = v0[39];
  v19 = v0[38];
  v20 = v0[37];
  v21 = v0[36];
  v22 = v0[35];

  v4 = *(v0[10] + 8);
  v5 = v0[10];

  return v4();
}

uint64_t SearchForAccountsViewBuilder.makeTemplateAction(for:app:)(uint64_t a1)
{
  v9 = *v2;
  v4 = *(*v2 + 656);
  *(v9 + 80) = *v2;
  v10 = (v9 + 80);
  *(v9 + 664) = a1;
  *(v9 + 672) = v1;

  if (v1)
  {
    v7 = *v10;
    v6 = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
  }

  else
  {

    v5 = *v10;
    v6 = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
  }

  return MEMORY[0x2822009F8](v6, 0);
}

{
  v9 = *v2;
  v4 = *(*v2 + 688);
  *(v9 + 80) = *v2;
  v10 = (v9 + 80);
  *(v9 + 696) = a1;
  *(v9 + 704) = v1;

  if (v1)
  {
    v7 = *v10;
    v6 = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
  }

  else
  {

    v5 = *v10;
    v6 = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
  }

  return MEMORY[0x2822009F8](v6, 0);
}

{
  v9 = *v2;
  v4 = *(*v2 + 720);
  *(v9 + 80) = *v2;
  v10 = (v9 + 80);
  *(v9 + 728) = a1;
  *(v9 + 736) = v1;

  if (v1)
  {
    v7 = *v10;
    v6 = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
  }

  else
  {

    v5 = *v10;
    v6 = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
  }

  return MEMORY[0x2822009F8](v6, 0);
}

{
  v9 = *v2;
  v4 = *(*v2 + 752);
  *(v9 + 80) = *v2;
  v10 = (v9 + 80);
  *(v9 + 760) = a1;
  *(v9 + 768) = v1;

  if (v1)
  {
    v7 = *v10;
    v6 = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
  }

  else
  {

    v5 = *v10;
    v6 = SearchForAccountsViewBuilder.makeTemplateAction(for:app:);
  }

  return MEMORY[0x2822009F8](v6, 0);
}

id implicit closure #2 in SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = [a1 templateItems];
  v7 = result;
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16SASTTemplateItem_pMd, &_sSo16SASTTemplateItem_pMR);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    result = MEMORY[0x277D82BD8](v7);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v3 = v5;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  *a2 = v3;
  return result;
}

uint64_t SearchForAccountsViewBuilder.fillWatchLabelForAccountIfNeeded(account:label:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 128) = v2;
  *(v3 + 120) = a2;
  *(v3 + 112) = a1;
  *(v3 + 48) = v3;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 224) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64);
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  v4 = type metadata accessor for TemplatingResult();
  *(v3 + 152) = v4;
  v11 = *(v4 - 8);
  *(v3 + 160) = v11;
  v5 = *(v11 + 64) + 15;
  *(v3 + 168) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v3 + 176) = v6;
  v12 = *(v6 - 8);
  *(v3 + 184) = v12;
  v7 = *(v12 + 64) + 15;
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 56) = a1;
  *(v3 + 64) = a2;
  *(v3 + 72) = v2;
  v8 = *(v3 + 48);

  return MEMORY[0x2822009F8](SearchForAccountsViewBuilder.fillWatchLabelForAccountIfNeeded(account:label:), 0);
}

uint64_t SearchForAccountsViewBuilder.fillWatchLabelForAccountIfNeeded(account:label:)()
{
  v1 = v0[24];
  v40 = v0[23];
  v41 = v0[22];
  v0[6] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v40 + 16))(v1, v2, v41);
  v43 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v44 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v43, v42))
  {
    v35 = static UnsafeMutablePointer.allocate(capacity:)();
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v36 = createStorage<A>(capacity:type:)(0);
    v37 = createStorage<A>(capacity:type:)(0);
    *(v39 + 80) = v35;
    *(v39 + 88) = v36;
    *(v39 + 96) = v37;
    serialize(_:at:)(0, (v39 + 80));
    serialize(_:at:)(0, (v39 + 80));
    *(v39 + 104) = v44;
    v38 = swift_task_alloc();
    v38[2] = v39 + 80;
    v38[3] = v39 + 88;
    v38[4] = v39 + 96;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v43, v42, "#SearchForAccountsHandleIntentStrategy fillWatchLabelForAccountIfNeeded", v35, 2u);
    destroyStorage<A>(_:count:)(v36, 0, v34);
    destroyStorage<A>(_:count:)(v37, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](v35, MEMORY[0x277D84B78]);
  }

  v30 = *(v39 + 192);
  v31 = *(v39 + 176);
  v32 = *(v39 + 112);
  v29 = *(v39 + 184);
  MEMORY[0x277D82BD8](v43);
  (*(v29 + 8))(v30, v31);
  v33 = static Constants.PaymentAccountType.fromINAccountType(_:)([v32 accountType]);
  if (v33 == 9 || (*(v39 + 224) = v33, *(v39 + 225) = v33, *(v39 + 226) = 0, lazy protocol witness table accessor for type Constants.PaymentAccountType and conformance Constants.PaymentAccountType(), (dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0))
  {
    v25 = [*(v39 + 112) accountNumber];
    if (v25)
    {
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v12;
      MEMORY[0x277D82BD8](v25);
      v23 = v21;
      v24 = v22;
    }

    else
    {
      v23 = 0;
      v24 = 0;
    }

    if (v24)
    {
      *(v39 + 16) = v23;
      *(v39 + 24) = v24;
      if ((String.isEmpty.getter() & 1) == 0)
      {
        v20 = **(v39 + 120);
        MEMORY[0x277D82BE0](v20);

        v19 = MEMORY[0x26D620690](v23, v24);

        [v20 setText_];
        MEMORY[0x277D82BD8](v19);
        MEMORY[0x277D82BD8](v20);
      }
    }

    v13 = *(v39 + 192);
    v16 = *(v39 + 168);
    v17 = *(v39 + 144);
    v18 = *(v39 + 136);

    v14 = *(*(v39 + 48) + 8);
    v15 = *(v39 + 48);

    return v14();
  }

  else
  {
    *(v39 + 200) = **(v39 + 128);

    Constants.PaymentAccountType.asCATIDForLoc.getter(v33);
    if (v3)
    {
      v28 = *(v39 + 144);
      String.toSpeakableString.getter();

      v4 = type metadata accessor for SpeakableString();
      (*(*(v4 - 8) + 56))(v28, 0, 1);
    }

    else
    {
      v26 = *(v39 + 144);
      v11 = type metadata accessor for SpeakableString();
      (*(*(v11 - 8) + 56))(v26, 1);
    }

    v27 = *(v39 + 136);
    v5 = type metadata accessor for SpeakableString();
    (*(*(v5 - 8) + 56))(v27, 1);
    v6 = swift_task_alloc();
    *(v39 + 208) = v6;
    *v6 = *(v39 + 48);
    v6[1] = SearchForAccountsViewBuilder.fillWatchLabelForAccountIfNeeded(account:label:);
    v7 = *(v39 + 168);
    v8 = *(v39 + 144);
    v9 = *(v39 + 136);

    return SearchForAccountsCATs.labelForEnum(accountType:balanceType:)(v7, v8, v9);
  }
}

{
  v9 = *v1;
  v2 = *(*v1 + 208);
  v9[6] = *v1;
  v10 = v9 + 6;
  v9[27] = v0;

  if (v0)
  {
    v5 = *v10;
    v4 = SearchForAccountsViewBuilder.fillWatchLabelForAccountIfNeeded(account:label:);
  }

  else
  {
    v8 = v9[25];
    v7 = v9[18];
    outlined destroy of SpeakableString?(v9[17]);
    outlined destroy of SpeakableString?(v7);

    v3 = *v10;
    v4 = SearchForAccountsViewBuilder.fillWatchLabelForAccountIfNeeded(account:label:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v7 = v0[21];
  v6 = v0[20];
  v8 = v0[19];
  v9 = v0[15];
  v0[6] = v0;
  v10 = TemplatingResult.resultSectionsAsString.getter();
  v13 = v1;
  v0[4] = v10;
  v0[5] = v1;
  (*(v6 + 8))(v7, v8);
  v12 = *v9;
  MEMORY[0x277D82BE0](*v9);

  v11 = MEMORY[0x26D620690](v10, v13);

  [v12 setText_];
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);

  v2 = v0[24];
  v14 = v0[21];
  v15 = v0[18];
  v16 = v0[17];

  v3 = *(v0[6] + 8);
  v4 = v0[6];

  return v3();
}

{
  v7 = v0[25];
  v8 = v0[24];
  v9 = v0[21];
  v10 = v0[18];
  v1 = v0[17];
  v0[6] = v0;
  outlined destroy of SpeakableString?(v1);
  outlined destroy of SpeakableString?(v10);

  v2 = v0;
  v3 = *(v0[6] + 8);
  v4 = v0[6];
  v5 = v2[27];

  return v3();
}

id implicit closure #3 in SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = [a1 templateItems];
  v7 = result;
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16SASTTemplateItem_pMd, &_sSo16SASTTemplateItem_pMR);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    result = MEMORY[0x277D82BD8](v7);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v3 = v5;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  *a2 = v3;
  return result;
}

uint64_t protocol witness for SearchForAccountsViewBuilding.buildSnippets(for:app:intent:) in conformance SearchForAccountsViewBuilder(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = protocol witness for TCCResponseProviding.promptToEnableApp(appDisplayInfo:deviceState:catOverrides:) in conformance TCCResponses;

  return SearchForAccountsViewBuilder.buildSnippets(for:app:intent:)(a1, a2, a3);
}

uint64_t sub_268769A78()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t _s2os18OSLogInterpolationV06appendC0_5align7privacyyxyXA_AA0B15StringAlignmentVAA0B7PrivacyVts06CustomG11ConvertibleRzlFSSycfu_TA_1()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo16INPaymentAccountCGMd, &_sSaySo16INPaymentAccountCGMR);
  v1 = lazy protocol witness table accessor for type [INPaymentAccount] and conformance [A]();

  return implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(v5, v3, v4, v1);
}

uint64_t _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSo20SAClientBoundCommand_p_Tt0gq5(uint64_t result)
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
    v1 = static Array._allocateBufferUninitialized(minimumCapacity:)();

    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v3;

    return v1;
  }

  return result;
}

uint64_t sub_268769CBC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268769CFC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268769D8C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268769F14()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268769F54()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268769FE4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26876A07C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26876A0BC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26876A0FC()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_26876A13C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26876A1D4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26876A214()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t type metadata accessor for INPaymentAccount()
{
  v2 = lazy cache variable for type metadata for INPaymentAccount;
  if (!lazy cache variable for type metadata for INPaymentAccount)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for INPaymentAccount);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type Constants.PaymentAccountType and conformance Constants.PaymentAccountType()
{
  v2 = lazy protocol witness table cache variable for type Constants.PaymentAccountType and conformance Constants.PaymentAccountType;
  if (!lazy protocol witness table cache variable for type Constants.PaymentAccountType and conformance Constants.PaymentAccountType)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Constants.PaymentAccountType and conformance Constants.PaymentAccountType);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type Constants.PaymentAccountType and conformance Constants.PaymentAccountType;
  if (!lazy protocol witness table cache variable for type Constants.PaymentAccountType and conformance Constants.PaymentAccountType)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Constants.PaymentAccountType and conformance Constants.PaymentAccountType);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for SASTViewTemplateAction()
{
  v2 = lazy cache variable for type metadata for SASTViewTemplateAction;
  if (!lazy cache variable for type metadata for SASTViewTemplateAction)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SASTViewTemplateAction);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for SASTPropertyListItem()
{
  v2 = lazy cache variable for type metadata for SASTPropertyListItem;
  if (!lazy cache variable for type metadata for SASTPropertyListItem)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SASTPropertyListItem);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for SearchForAccountsViewBuilder(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SearchForAccountsViewBuilder(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

void *PayeeDisambiguationStrategy.__allocating_init()()
{
  v48 = implicit closure #1 in PayeeDisambiguationStrategy.init();
  v49 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v53 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v55 = partial apply for closure #1 in OSLogArguments.append(_:);
  v57 = partial apply for closure #1 in OSLogArguments.append(_:);
  v60 = partial apply for closure #1 in OSLogArguments.append(_:);
  v78 = 0;
  v73 = 0;
  v26 = 0;
  v40 = 0;
  v46 = type metadata accessor for Logger();
  v44 = *(v46 - 8);
  v45 = v46 - 8;
  v27 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v42 = v17 - v27;
  v28 = (*(*(type metadata accessor for CATOption() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v40);
  v29 = v17 - v28;
  v36 = type metadata accessor for SendPaymentCATs();
  default argument 0 of CATWrapper.init(options:globals:)();
  v38 = CATWrapper.__allocating_init(options:globals:)();
  v78 = v38;
  v34 = type metadata accessor for Globals();
  v30 = v77;
  default argument 0 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v77);
  v31 = &v76;
  default argument 1 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v32 = &v75;
  default argument 2 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v33 = &v74;
  default argument 3 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v35 = Globals.__allocating_init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v30, v31, v32, v33);
  v73 = v35;

  v39 = v72;
  v72[3] = v34;
  v72[4] = &protocol witness table for Globals;
  v72[0] = v35;
  v37 = type metadata accessor for INSendPaymentIntent();
  type metadata accessor for INSendPaymentIntentResponse();
  v41 = v71;
  default argument 3 of ContactDisambiguationStrategy.init(catFamily:globals:mockGlobals:contactResolver:)(v71);
  v0 = PayeeDisambiguationStrategy.__allocating_init(catFamily:globals:mockGlobals:contactResolver:)(v38, v39, v40, v41);
  v1 = v42;
  v43 = v0;

  v79 = v43;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v44 + 16))(v1, v2, v46);
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.debug.getter();
  v47 = 17;
  v51 = 7;
  v56 = swift_allocObject();
  *(v56 + 16) = 32;
  v58 = swift_allocObject();
  *(v58 + 16) = 8;
  v50 = 32;
  v3 = swift_allocObject();
  v52 = v3;
  *(v3 + 16) = v48;
  *(v3 + 24) = 0;
  v4 = swift_allocObject();
  v5 = v52;
  v54 = v4;
  *(v4 + 16) = v49;
  *(v4 + 24) = v5;
  v6 = swift_allocObject();
  v7 = v54;
  v61 = v6;
  *(v6 + 16) = v53;
  *(v6 + 24) = v7;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v59 = _allocateUninitializedArray<A>(_:)();
  v62 = v8;

  v9 = v56;
  v10 = v62;
  *v62 = v55;
  v10[1] = v9;

  v11 = v58;
  v12 = v62;
  v62[2] = v57;
  v12[3] = v11;

  v13 = v61;
  v14 = v62;
  v62[4] = v60;
  v14[5] = v13;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v64, v65))
  {
    v15 = v26;
    v19 = static UnsafeMutablePointer.allocate(capacity:)();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v20 = createStorage<A>(capacity:type:)(0);
    v21 = createStorage<A>(capacity:type:)(1);
    v22 = &v70;
    v70 = v19;
    v23 = &v69;
    v69 = v20;
    v24 = &v68;
    v68 = v21;
    serialize(_:at:)(2, &v70);
    serialize(_:at:)(1, v22);
    v66 = v55;
    v67 = v56;
    closure #1 in osLogInternal(_:log:type:)(&v66, v22, v23, v24);
    v25 = v15;
    if (v15)
    {

      __break(1u);
    }

    else
    {
      v66 = v57;
      v67 = v58;
      closure #1 in osLogInternal(_:log:type:)(&v66, &v70, &v69, &v68);
      v17[1] = 0;
      v66 = v60;
      v67 = v61;
      closure #1 in osLogInternal(_:log:type:)(&v66, &v70, &v69, &v68);
      _os_log_impl(&dword_2686B1000, v64, v65, "#ContactDisambiguationStrategy<%s> init", v19, 0xCu);
      destroyStorage<A>(_:count:)(v20, 0, v18);
      destroyStorage<A>(_:count:)(v21, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v19, MEMORY[0x277D84B78]);
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v64);
  (*(v44 + 8))(v42, v46);

  return v43;
}