uint64_t CorrectionsSELFHelper.correctionsId.setter(uint64_t a1, uint64_t *a2, const char *a3)
{
  v7 = *a2;
  swift_beginAccess();
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  (*(v9 + 24))(v3 + v7, a1, v8);
  swift_endAccess();
  CorrectionsSELFHelper.correctionsId.didset(a2, a3);
  return (*(v9 + 8))(a1, v8);
}

uint64_t CorrectionsPlatformClient.setupNewTurn(executionUUID:)(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  (*(*static CorrectionsSELFHelper.shared + 176))(a1);
  return (*(v3 + 8))(v6, v2);
}

void CorrectionsSELFHelper.makeCorrectionsIdAndEmitRequestLink(executionUUID:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v146 = a2;
  v4 = type metadata accessor for UUID();
  v5 = OUTLINED_FUNCTION_6(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v144 = &v131 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_16();
  v136 = v12;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_16();
  v139 = v14;
  OUTLINED_FUNCTION_7_1();
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v131 - v17;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_16();
  v137 = v19;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_16();
  v141 = v21;
  OUTLINED_FUNCTION_7_1();
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v131 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v131 - v26;
  v29 = v7 + 16;
  v28 = *(v7 + 16);
  (v28)(&v131 - v26, a1, v4);
  v142 = v27;
  v140 = v2;
  CorrectionsSELFHelper.executionRequestId.setter(v27);
  if (one-time initialization token for instrumentation != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v30 = type metadata accessor for Logger();
  v31 = __swift_project_value_buffer(v30, static Logger.instrumentation);
  v145 = a1;
  v148 = v28;
  (v28)(v25, a1, v4);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();
  v34 = os_log_type_enabled(v32, v33);
  v138 = v18;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v143 = v31;
    v36 = v35;
    v135 = swift_slowAlloc();
    v149[0] = v135;
    *v36 = 136315394;
    v37 = @"COMPONENTNAME_SIRI_CORRECTIONS";
    v38 = v7 + 16;
    v39 = v7;
    v40 = v4;
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    v44 = v41;
    v4 = v40;
    v7 = v39;
    v29 = v38;
    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v43, v149);

    *(v36 + 4) = v45;
    *(v36 + 12) = 2080;
    UUID.uuidString.getter();
    v47 = v46;
    v147 = *(v7 + 8);
    v147(v25, v4);
    v48 = OUTLINED_FUNCTION_11();
    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v47, v49);

    *(v36 + 14) = v50;
    _os_log_impl(&dword_266A4D000, v32, v33, "[CorrectionsSELFHelper] Deriving identifier for: %s and execution ID: %s", v36, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_5_2();
    v31 = v143;
    OUTLINED_FUNCTION_5_2();
  }

  else
  {

    v147 = *(v7 + 8);
    v147(v25, v4);
  }

  v51 = [objc_allocWithZone(MEMORY[0x277D5A9D0]) init];
  v52 = v148;
  v53 = v144;
  if (v51)
  {
    v54 = v51;
    v55 = [objc_allocWithZone(MEMORY[0x277D5A9E0]) init];
    if (v55)
    {
      v32 = v55;
      v56 = [objc_allocWithZone(MEMORY[0x277D5A9E0]) init];
      if (v56)
      {
        v143 = v31;
        v57 = v56;
        v58 = type metadata accessor for SISchemaUUID();
        v59 = v142;
        (v52)(v142, v145, v4);
        v133 = v58;
        v60 = SISchemaUUID.__allocating_init(nsuuid:)(v59);
        [v57 setUuid_];

        if (AFDeviceSupportsSAE())
        {
          v61 = 43;
        }

        else
        {
          v61 = 1;
        }

        [v57 setComponent_];
        [v32 setComponent_];
        v144 = v32;
        [v54 setSource_];
        v134 = v54;
        v135 = v57;
        [v54 setTarget_];
        v62 = v29;
        v63 = objc_opt_self();
        isa = UUID._bridgeToObjectiveC()().super.isa;
        v65 = [v63 derivedIdentifierForComponentName:31 fromSourceIdentifier:isa];

        if (v65)
        {
          v132 = v63;
          v136 = v7;
          v66 = v141;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v67 = v137;
          (v52)(v137, v66, v4);
          v68 = v138;
          v69 = OUTLINED_FUNCTION_15();
          v145 = v62;
          (v52)(v69);
          v70 = Logger.logObject.getter();
          v71 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v70, v71))
          {
            v72 = swift_slowAlloc();
            v131 = swift_slowAlloc();
            v149[0] = v131;
            *v72 = 136315650;
            v73 = @"COMPONENTNAME_SIRI_CORRECTIONS";
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v75 = v74;

            v76 = OUTLINED_FUNCTION_11();
            v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v75, v77);

            *(v72 + 4) = v78;
            *(v72 + 12) = 2080;
            v79 = UUID.uuidString.getter();
            v81 = v80;
            v82 = v147;
            v147(v67, v4);
            v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v81, v149);

            *(v72 + 14) = v83;
            *(v72 + 22) = 2080;
            v84 = UUID.uuidString.getter();
            v86 = v85;
            v82(v68, v4);
            v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v86, v149);

            *(v72 + 24) = v87;
            _os_log_impl(&dword_266A4D000, v70, v71, "[CorrectionsSELFHelper] Emitting request link: %s/%s to ORCH:%s", v72, 0x20u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_5_2();
            OUTLINED_FUNCTION_2();
          }

          else
          {

            v108 = v147;
            v147(v68, v4);
            v108(v67, v4);
          }

          v109 = v134;
          v110 = v142;
          OUTLINED_FUNCTION_12();
          v111 = v148;
          v148();
          v112 = SISchemaUUID.__allocating_init(nsuuid:)(v110);
          [v144 setUuid_];

          [objc_msgSend(v132 sharedStream)];
          swift_unknownObjectRelease();
          v113 = v139;
          OUTLINED_FUNCTION_12();
          v111();
          v114 = Logger.logObject.getter();
          v115 = static os_log_type_t.debug.getter();
          if (OUTLINED_FUNCTION_9_0(v115))
          {
            OUTLINED_FUNCTION_10();
            v116 = OUTLINED_FUNCTION_4_2();
            v149[0] = v116;
            *v113 = 136315138;
            lazy protocol witness table accessor for type UUID and conformance UUID();
            v117 = dispatch thunk of CustomStringConvertible.description.getter();
            v118 = v4;
            v120 = v119;
            v121 = v136;
            v147(v113, v118);
            v122 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v117, v120, v149);
            v123 = v121;

            *(v113 + 4) = v122;
            OUTLINED_FUNCTION_6_1(&dword_266A4D000, v124, v125, "[CorrectionsSELFHelper] Emitted request link SELF logging Corrections ID: %s");
            __swift_destroy_boxed_opaque_existential_1(v116);
            OUTLINED_FUNCTION_5_2();
            OUTLINED_FUNCTION_2();
          }

          else
          {

            v123 = v136;
            v147(v113, v4);
          }

          v126 = v142;
          OUTLINED_FUNCTION_12();
          v148();
          CorrectionsSELFHelper.correctionsId.setter(v126);

          v127 = *(v123 + 4);
          OUTLINED_FUNCTION_12();
          v128();
        }

        else
        {
          v97 = v136;
          v98 = OUTLINED_FUNCTION_15();
          (v52)(v98);
          v99 = Logger.logObject.getter();
          v100 = static os_log_type_t.error.getter();
          if (OUTLINED_FUNCTION_9_0(v100))
          {
            OUTLINED_FUNCTION_10();
            v101 = OUTLINED_FUNCTION_4_2();
            v149[0] = v101;
            *v62 = 136315138;
            UUID.uuidString.getter();
            OUTLINED_FUNCTION_14();
            v147(v97, v102);
            v103 = OUTLINED_FUNCTION_11();
            v105 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v103, v4, v104);

            *(v62 + 4) = v105;
            OUTLINED_FUNCTION_6_1(&dword_266A4D000, v106, v107, "[CorrectionsSELFHelper] Failed to create a derived identifier for SELF for execution ID: %s. Will create a random UUID.");
            __swift_destroy_boxed_opaque_existential_1(v101);
            OUTLINED_FUNCTION_5_2();
            OUTLINED_FUNCTION_2();
          }

          else
          {

            v147(v97, v4);
          }

          v129 = v144;
          v130 = v134;
          UUID.init()();
        }

        goto LABEL_22;
      }
    }

    else
    {
      v32 = v54;
    }
  }

  (v52)(v53, v145, v4);
  v88 = Logger.logObject.getter();
  v89 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_9_0(v89))
  {
    OUTLINED_FUNCTION_10();
    v90 = OUTLINED_FUNCTION_4_2();
    v149[0] = v90;
    *v32 = 136315138;
    UUID.uuidString.getter();
    OUTLINED_FUNCTION_14();
    v147(v53, v91);
    v92 = OUTLINED_FUNCTION_11();
    v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v4, v93);

    *(v32 + 4) = v94;
    OUTLINED_FUNCTION_6_1(&dword_266A4D000, v95, v96, "[CorrectionsSELFHelper] Unable to create RequestLink schemas for SELF for execution ID: %s. Will create an unlinked UUID.");
    __swift_destroy_boxed_opaque_existential_1(v90);
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_2();
  }

  else
  {

    v147(v53, v4);
  }

  UUID.init()();
LABEL_22:
  OUTLINED_FUNCTION_19();
}

uint64_t OUTLINED_FUNCTION_6_0()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_6_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

__n128 OUTLINED_FUNCTION_6_2()
{
  v3 = *(v2 - 144);
  *(v0 + 736) = *(v2 - 160);
  *(v0 + 752) = v3;
  result = *(v2 - 128);
  v5 = *(v2 - 112);
  *(v0 + 768) = result;
  *(v0 + 784) = v5;
  v6 = *v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_3()
{
  v2 = *(v0 - 288);

  return Logger.logObject.getter();
}

uint64_t OUTLINED_FUNCTION_7()
{
  v2 = *(v0 - 96);
  v3 = *(v0 - 88);
  v4 = *(v0 - 68);

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t OUTLINED_FUNCTION_7_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_10()
{

  return swift_slowAlloc();
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

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void CorrectionsSELFHelper.correctionsId.didset(uint64_t *a1, const char *a2)
{
  v6 = v2;
  v7 = type metadata accessor for UUID();
  v8 = OUTLINED_FUNCTION_6(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_8_0();
  if (one-time initialization token for instrumentation != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.instrumentation);

  v24 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v24, v14))
  {
    v15 = OUTLINED_FUNCTION_10();
    v16 = swift_slowAlloc();
    v25 = v16;
    *v15 = 136315138;
    v17 = *a1;
    swift_beginAccess();
    (*(v10 + 16))(v3, v6 + v17, v7);
    v18 = UUID.uuidString.getter();
    v20 = v19;
    (*(v10 + 8))(v3, v7);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v25);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_266A4D000, v24, v14, a2, v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_5_2();

    OUTLINED_FUNCTION_19();
  }

  else
  {
    OUTLINED_FUNCTION_19();
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t OUTLINED_FUNCTION_10_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_1()
{

  return os_signpost(_:dso:log:name:signpostID:)();
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

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_5_1()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_5_2()
{

  JUMPOUT(0x26D5E7CB0);
}

uint64_t OUTLINED_FUNCTION_19_0()
{

  return outlined destroy of CorrectionsParse(v0, type metadata accessor for CorrectionsParse);
}

uint64_t OUTLINED_FUNCTION_11_0()
{
  v2 = *(v0 - 312);
}

unint64_t type metadata accessor for SISchemaUUID()
{
  result = lazy cache variable for type metadata for SISchemaUUID;
  if (!lazy cache variable for type metadata for SISchemaUUID)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SISchemaUUID);
  }

  return result;
}

id SISchemaUUID.__allocating_init(nsuuid:)(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v4 = [v2 initWithNSUUID_];

  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

void OUTLINED_FUNCTION_2()
{

  JUMPOUT(0x26D5E7CB0);
}

uint64_t OUTLINED_FUNCTION_3()
{

  return swift_once();
}

void OUTLINED_FUNCTION_12_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_12_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_0_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9()
{

  return String.init<A>(describing:)();
}

BOOL OUTLINED_FUNCTION_9_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

unint64_t lazy protocol witness table accessor for type UUID and conformance UUID()
{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_4_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_4@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 168) = v1 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  result = v2;
  *(v3 - 136) = a1;
  return result;
}

Swift::Void __swiftcall CorrectionsPlatformClient.commit()()
{
  type metadata accessor for CorrectionsEngine();
  swift_initStaticObject();
  CorrectionsEngine.commit()();
}

Swift::Void __swiftcall CorrectionsEngine.commit()()
{
  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_0_4();
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_18_0(v0, static Logger.logger);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_25(v2))
  {
    v3 = OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_45(v3);
    OUTLINED_FUNCTION_17_0(&dword_266A4D000, v4, v5, "[CorrectionsEngine.commit] clearing corrections context");
    OUTLINED_FUNCTION_24();
  }

  if (one-time initialization token for inverseDirectInvocation != -1)
  {
    OUTLINED_FUNCTION_3_3();
  }

  OUTLINED_FUNCTION_71();
  v6 = static CorrectionsEngine.inverseDirectInvocation;
  v7 = qword_281321728;
  qword_281321728 = 0;
  qword_281321730 = 0;
  static CorrectionsEngine.inverseDirectInvocation = 0;
  outlined consume of CorrectionsDirectInvocation?(v6, v7);
  if (one-time initialization token for context != -1)
  {
    OUTLINED_FUNCTION_4_3();
  }

  v8 = static CorrectionsEngine.context;
  OUTLINED_FUNCTION_71();
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[3];
  v12[2] = v8[2];
  v12[3] = v11;
  v12[0] = v9;
  v12[1] = v10;
  *v8 = xmmword_266A62200;
  v8[1] = 0u;
  v8[2] = 0u;
  v8[3] = 0u;
  outlined destroy of (Siri_Nlu_External_Parser.ParserIdentifier?, Siri_Nlu_External_Parser.ParserIdentifier?)(v12, &_s15SiriCorrections0B7ContextVSgMd, &_s15SiriCorrections0B7ContextVSgMR);
}

void OUTLINED_FUNCTION_18(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_64(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t outlined consume of CorrectionsDirectInvocation?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t outlined destroy of (Siri_Nlu_External_Parser.ParserIdentifier?, Siri_Nlu_External_Parser.ParserIdentifier?)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t getEnumTagSinglePayload for CorrectionsContext(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_266A505BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Siri_Nlu_External_UserParse();
  v7 = OUTLINED_FUNCTION_4_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  v12 = OUTLINED_FUNCTION_4_0(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 24) + 8);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  v16 = v15 - 1;
  if (v16 < 0)
  {
    v16 = -1;
  }

  return (v16 + 1);
}

uint64_t sub_266A506C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Siri_Nlu_External_UserParse();
  v9 = OUTLINED_FUNCTION_4_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
    result = OUTLINED_FUNCTION_4_0(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v11 = result;
    v12 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_266A507E4(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_1_1(a1);
  result = (*(v3 + 112))(v2);
  *v1 = result;
  v1[1] = v5;
  return result;
}

uint64_t sub_266A50828(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_1_1(a1);
  result = (*(v3 + 136))(v2);
  *v1 = result;
  v1[1] = v5;
  return result;
}

uint64_t sub_266A5086C(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_1_1(a1);
  result = (*(v3 + 160))(v2);
  *v1 = result;
  v1[1] = v5;
  return result;
}

uint64_t sub_266A508B0(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_1_1(a1);
  result = (*(v3 + 184))(v2);
  *v1 = result;
  v1[1] = v5;
  return result;
}

uint64_t sub_266A50904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_266A50998(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

BOOL Logger.Subsystem.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Logger.Subsystem.init(rawValue:), v2);

  return v3 != 0;
}

Swift::Int specialized RawRepresentable<>.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t specialized RawRepresentable<>.hash(into:)()
{
  return String.hash(into:)();
}

{
  String.hash(into:)();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance Logger.Subsystem@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = Logger.Subsystem.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance Logger.Subsystem@<X0>(void *a1@<X8>)
{
  result = Logger.Subsystem.rawValue.getter();
  *a1 = 0xD00000000000001ELL;
  a1[1] = v3;
  return result;
}

SiriCorrections::Logger::Category_optional __swiftcall Logger.Category.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Logger.Category.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = SiriCorrections_Logger_Category_instrumentation;
  }

  else
  {
    v4.value = SiriCorrections_Logger_Category_unknownDefault;
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

uint64_t Logger.Category.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x656D757274736E49;
  }

  else
  {
    return 0x6974636572726F43;
  }
}

SiriCorrections::Logger::Category_optional protocol witness for RawRepresentable.init(rawValue:) in conformance Logger.Category@<W0>(Swift::String *a1@<X0>, SiriCorrections::Logger::Category_optional *a2@<X8>)
{
  result.value = Logger.Category.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance Logger.Category@<X0>(uint64_t *a1@<X8>)
{
  result = Logger.Category.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t one-time initialization function for log()
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  static Logger.log = result;
  return result;
}

uint64_t *Logger.log.unsafeMutableAddressor()
{
  if (one-time initialization token for log != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  return &static Logger.log;
}

uint64_t one-time initialization function for logger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.logger);
  __swift_project_value_buffer(v0, static Logger.logger);
  if (one-time initialization token for log != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = static Logger.log;
  return Logger.init(_:)();
}

uint64_t one-time initialization function for instrumentation()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.instrumentation);
  __swift_project_value_buffer(v0, static Logger.instrumentation);
  type metadata accessor for OS_os_log();
  OS_os_log.init(subsystem:category:)();
  return Logger.init(_:)();
}

uint64_t Logger.logger.unsafeMutableAddressor(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t static Logger.logger.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t static Logger.makeSignpostID(log:)(void *a1)
{
  v1 = a1;

  return OSSignpostID.init(log:)();
}

uint64_t static Logger.begin(_:log:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t static Logger.begin(_:_:log:)()
{
  OUTLINED_FUNCTION_2_0();
  static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_1();

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t static Logger.event(_:log:)()
{
  v0 = type metadata accessor for OSSignpostID();
  v1 = OUTLINED_FUNCTION_6(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.event.getter();
  static OSSignpostID.exclusive.getter();
  OUTLINED_FUNCTION_1();
  os_signpost(_:dso:log:name:signpostID:)();
  return (*(v3 + 8))(v7, v0);
}

id static Logger.log.getter()
{
  if (one-time initialization token for log != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = static Logger.log;

  return v1;
}

uint64_t static Logger.end(_:_:log:)()
{
  OUTLINED_FUNCTION_2_0();
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_1();

  return os_signpost(_:dso:log:name:signpostID:)();
}

id default argument 1 of static Logger.withSignpost<A>(name:log:completion:)()
{
  if (one-time initialization token for log != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = static Logger.log;

  return v1;
}

uint64_t static Logger.withSignpost<A>(name:log:completion:)(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v21 = a3;
  v20[0] = a1;
  v20[1] = a2;
  v7 = type metadata accessor for OSSignpostID();
  v8 = OUTLINED_FUNCTION_6(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OS_os_log.signpostsEnabled.getter();
  if ((v15 & 1) == 0)
  {
    return a5(v15, v16);
  }

  v17 = a4;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  v18 = OUTLINED_FUNCTION_7();
  (a5)(v18);
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_7();
  return (*(v10 + 8))(v14, v7);
}

unint64_t lazy protocol witness table accessor for type Logger.Subsystem and conformance Logger.Subsystem()
{
  result = lazy protocol witness table cache variable for type Logger.Subsystem and conformance Logger.Subsystem;
  if (!lazy protocol witness table cache variable for type Logger.Subsystem and conformance Logger.Subsystem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Logger.Subsystem and conformance Logger.Subsystem);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Logger.Category and conformance Logger.Category()
{
  result = lazy protocol witness table cache variable for type Logger.Category and conformance Logger.Category;
  if (!lazy protocol witness table cache variable for type Logger.Category and conformance Logger.Category)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Logger.Category and conformance Logger.Category);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Logger.Subsystem(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for Logger.Subsystem(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for Logger.Category(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Logger.Category(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t protocol witness for SetAlgebra.init() in conformance NSPropertyListMutabilityOptions@<X0>(uint64_t *a1@<X8>)
{
  result = specialized OptionSet<>.init()();
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SCSchemaSCUndoOutcomeReason@<X0>(_DWORD *a1@<X8>)
{
  result = destructiveProjectEnumData for Logger.Subsystem(*v1);
  *a1 = result;
  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t type metadata accessor for OS_os_log()
{
  result = lazy cache variable for type metadata for OS_os_log;
  if (!lazy cache variable for type metadata for OS_os_log)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_os_log);
  }

  return result;
}

uint64_t CorrectionsPlatformClient.undoFollowUpPluginActionUserDataKey.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t CorrectionsPlatformClient.__allocating_init()()
{
  v0 = swift_allocObject();
  CorrectionsPlatformClient.init()();
  return v0;
}

uint64_t CorrectionsPlatformClient.init()()
{
  v1 = off_2813213F0;
  *(v0 + 16) = qword_2813213E8;
  *(v0 + 24) = v1;

  return v0;
}

uint64_t CorrectionsPlatformClient.checkUndo(input:context:)(uint64_t a1, _OWORD *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A31_Nlu_External_CorrectionOutcomeVSgMd, &_s12SiriNLUTypes0A31_Nlu_External_CorrectionOutcomeVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v11 - v5;
  v7 = a2[1];
  v11[0] = *a2;
  v11[1] = v7;
  v8 = a2[3];
  v11[2] = a2[2];
  v11[3] = v8;
  type metadata accessor for CorrectionsEngine();
  swift_initStaticObject();
  v9 = type metadata accessor for Siri_Nlu_External_CorrectionOutcome();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v9);
  CorrectionsEngine.checkUndo(input:context:correctionsOutcome:)();
  return outlined destroy of Siri_Nlu_External_CorrectionOutcome?(v6);
}

void CorrectionsPlatformClient.checkUndo(input:context:correctionsOutcome:)(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  type metadata accessor for CorrectionsEngine();
  swift_initStaticObject();
  CorrectionsEngine.checkUndo(input:context:correctionsOutcome:)();
}

Swift::Bool __swiftcall CorrectionsPlatformClient.isCorrectionPossible(context:)(SiriCorrections::CorrectionsContext_optional *context)
{
  assistantId = context->value.assistantId;
  v4.value.userId = context->value.userId;
  v4.value.assistantId = assistantId;
  executionRequestId = context->value.executionRequestId;
  v4.value.resultCandidateId = context->value.resultCandidateId;
  v4.value.executionRequestId = executionRequestId;
  type metadata accessor for CorrectionsEngine();
  swift_initStaticObject();
  return CorrectionsEngine.isUndoPossible(context:)(&v4);
}

uint64_t CorrectionsPlatformClient.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t CorrectionsPlatformClient.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
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

uint64_t outlined destroy of Siri_Nlu_External_CorrectionOutcome?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A31_Nlu_External_CorrectionOutcomeVSgMd, &_s12SiriNLUTypes0A31_Nlu_External_CorrectionOutcomeVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CorrectionOperation.attribute.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CorrectionOperation.correction.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 32);
  *(a1 + 16) = v4;
  return outlined copy of CorrectionType(v2, v3, v4);
}

uint64_t outlined copy of CorrectionType(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 >= 2u && a3 != 3)
  {
    if (a3 != 2)
    {
      return result;
    }
  }
}

__n128 CorrectionOperation.init(attribute:correction:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X2>, __n128 *a4@<X8>)
{
  v4 = a3[1].n128_u8[0];
  a4->n128_u64[0] = a1;
  a4->n128_u64[1] = a2;
  result = *a3;
  a4[1] = *a3;
  a4[2].n128_u8[0] = v4;
  return result;
}

uint64_t get_enum_tag_for_layout_string_15SiriCorrections14CorrectionTypeO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CorrectionType(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 17))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 4)
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

uint64_t storeEnumTagSinglePayload for CorrectionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t destructiveInjectEnumTag for CorrectionType(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CorrectionOperation(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
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

uint64_t storeEnumTagSinglePayload for CorrectionOperation(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Bool __swiftcall CorrectionsCustomizing.shouldConsiderVerbAsCorrection(verb:)(Swift::String verb)
{
  object = verb._object;
  countAndFlagsBits = verb._countAndFlagsBits;
  (*(v1 + 16))(&v6);
  if (!v6)
  {
    return 1;
  }

  v4 = specialized Set.contains(_:)(countAndFlagsBits, object, v6);

  return v4;
}

Swift::Bool __swiftcall CorrectionsCustomizing.shouldAllowAttributeToBeCorrected(attribute:)(Swift::String attribute)
{
  object = attribute._object;
  countAndFlagsBits = attribute._countAndFlagsBits;
  v4 = (*(v1 + 8))();
  LOBYTE(object) = specialized Set.contains(_:)(countAndFlagsBits, object, v4);

  return (object & 1) == 0;
}

BOOL specialized Set.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = ~(-1 << *(a3 + 32));
  do
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(a3 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (*(a3 + 48) + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v7 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

uint64_t CorrectionsCustomizationsAllowingAllEntities.attributesNotAllowedToBeCorrected.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t CorrectionsCustomizationsAllowingAllEntities.explicitCorrectionVerbs.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 8);

  *(v1 + 8) = v2;
  return result;
}

uint64_t CorrectionsCustomizationsAllowingAllEntities.init(attributesNotAllowedToBeCorrected:explicitCorrectionVerbs:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  *a3 = result;
  a3[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for WildcardStringSet(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WildcardStringSet(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTag for WildcardStringSet(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *destructiveInjectEnumTag for WildcardStringSet(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for CorrectionsCustomizationsAllowingAllEntities(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for CorrectionsCustomizationsAllowingAllEntities(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t CorrectionsDomainClient.undoFollowUpPluginActionUserDataKey.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t CorrectionsDomainClient.__allocating_init()()
{
  v0 = swift_allocObject();
  CorrectionsDomainClient.init()();
  return v0;
}

uint64_t CorrectionsDomainClient.init()()
{
  v1 = off_2813213F0;
  *(v0 + 16) = qword_2813213E8;
  *(v0 + 24) = v1;

  return v0;
}

uint64_t CorrectionsDomainClient.checkCorrection(input:)(uint64_t a1)
{
  type metadata accessor for CorrectionsEngine();
  swift_initStaticObject();
  return CorrectionsEngine.checkCorrection(input:)(a1);
}

uint64_t CorrectionsDomainClient.checkCorrections(input:customizations:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CorrectionsEngine();
  inited = swift_initStaticObject();
  CorrectionsEngine.checkCorrection(input:customizations:)(a1, a2, inited, v5, v6, v7, v8, v9, v11, v12, v14, v16, v18, v20, v22, v23, v24, v25, v26, v27);
  if (!v15)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SiriCorrections19CorrectionOperationVGMd, &_ss23_ContiguousArrayStorageCy15SiriCorrections19CorrectionOperationVGMR);
  result = swift_allocObject();
  *(result + 16) = xmmword_266A61D60;
  *(result + 32) = v13;
  *(result + 40) = v15;
  *(result + 48) = v17;
  *(result + 56) = v19;
  *(result + 64) = v21;
  return result;
}

uint64_t CorrectionsDomainClient.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t CorrectionsDomainClient.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t outlined destroy of CorrectionsContext?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SiriCorrections0B7ContextVSgMd, &_s15SiriCorrections0B7ContextVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CorrectionsUSOParse.debugDescription.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  OUTLINED_FUNCTION_0(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v4);
  v6 = v13 - v5;
  v14 = 0;
  v15 = 0xE000000000000000;
  _StringGuts.grow(_:)(53);
  MEMORY[0x26D5E75C0](0x7372615072657355, 0xEB00000000203A65);
  type metadata accessor for Siri_Nlu_External_UserParse();
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x26D5E75C0](0xD000000000000014, 0x8000000266A62540);
  v7 = type metadata accessor for CorrectionsUSOParse(0);
  outlined init with copy of Siri_Nlu_External_Parser.ParserIdentifier?(v0 + *(v7 + 20), v6);
  v8 = String.init<A>(describing:)();
  MEMORY[0x26D5E75C0](v8);

  MEMORY[0x26D5E75C0](0x6E7542707061202CLL, 0xEF203A6449656C64);
  v9 = (v0 + *(v7 + 24));
  v10 = v9[1];
  v13[0] = *v9;
  v13[1] = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, "b\b");
  v11 = String.init<A>(describing:)();
  MEMORY[0x26D5E75C0](v11);

  MEMORY[0x26D5E75C0](41, 0xE100000000000000);
  return v14;
}

uint64_t outlined init with copy of Siri_Nlu_External_Parser.ParserIdentifier?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CorrectionsUSOParse.init(userParse:parserIdentifier:appBundleId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for CorrectionsUSOParse(0);
  outlined init with take of Siri_Nlu_External_Parser.ParserIdentifier?(a2, a5 + *(v10 + 20));
  v11 = type metadata accessor for Siri_Nlu_External_UserParse();
  OUTLINED_FUNCTION_0(v11);
  result = (*(v12 + 32))(a5, a1);
  v14 = (a5 + *(v10 + 24));
  *v14 = a3;
  v14[1] = a4;
  return result;
}

uint64_t outlined init with take of Siri_Nlu_External_Parser.ParserIdentifier?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t CorrectionsUSOParse.userParse.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Siri_Nlu_External_UserParse();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t CorrectionsUSOParse.parserIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CorrectionsUSOParse(0) + 20);

  return outlined init with copy of Siri_Nlu_External_Parser.ParserIdentifier?(v3, a1);
}

uint64_t CorrectionsUSOParse.appBundleId.getter()
{
  v1 = (v0 + *(type metadata accessor for CorrectionsUSOParse(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t static CorrectionsUSOParse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  v5 = OUTLINED_FUNCTION_6(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR) - 8) + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSg_AFtMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSg_AFtMR);
  OUTLINED_FUNCTION_0(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v19);
  v21 = &v35 - v20;
  if ((static Siri_Nlu_External_UserParse.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v22 = type metadata accessor for CorrectionsUSOParse(0);
  v23 = *(v22 + 20);
  v24 = *(v16 + 48);
  outlined init with copy of Siri_Nlu_External_Parser.ParserIdentifier?(a1 + v23, v21);
  outlined init with copy of Siri_Nlu_External_Parser.ParserIdentifier?(a2 + v23, &v21[v24]);
  OUTLINED_FUNCTION_5_0(v21);
  if (!v25)
  {
    outlined init with copy of Siri_Nlu_External_Parser.ParserIdentifier?(v21, v15);
    OUTLINED_FUNCTION_5_0(&v21[v24]);
    if (!v25)
    {
      (*(v7 + 32))(v11, &v21[v24], v4);
      lazy protocol witness table accessor for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier();
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      v28 = *(v7 + 8);
      v28(v11, v4);
      v28(v15, v4);
      outlined destroy of (Siri_Nlu_External_Parser.ParserIdentifier?, Siri_Nlu_External_Parser.ParserIdentifier?)(v21, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
      if ((v27 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_14;
    }

    (*(v7 + 8))(v15, v4);
LABEL_10:
    outlined destroy of (Siri_Nlu_External_Parser.ParserIdentifier?, Siri_Nlu_External_Parser.ParserIdentifier?)(v21, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSg_AFtMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSg_AFtMR);
    return 0;
  }

  OUTLINED_FUNCTION_5_0(&v21[v24]);
  if (!v25)
  {
    goto LABEL_10;
  }

  outlined destroy of (Siri_Nlu_External_Parser.ParserIdentifier?, Siri_Nlu_External_Parser.ParserIdentifier?)(v21, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
LABEL_14:
  v29 = *(v22 + 24);
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = v32[1];
  if (v31)
  {
    if (v33)
    {
      v34 = *v30 == *v32 && v31 == v33;
      if (v34 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v33)
  {
    return 1;
  }

  return 0;
}

uint64_t CorrectionsDirectInvocation.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

SiriCorrections::CorrectionsDirectInvocation __swiftcall CorrectionsDirectInvocation.init(identifier:userData:)(SiriCorrections::CorrectionsDirectInvocation identifier, Swift::OpaquePointer_optional userData)
{
  *v2 = identifier.identifier;
  v2[1]._countAndFlagsBits = userData.value._rawValue;
  identifier.userData = userData;
  return identifier;
}

SiriCorrections::CorrectionsDirectInvocation::CodingKeys_optional __swiftcall CorrectionsDirectInvocation.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v3 = stringValue._countAndFlagsBits == 0x696669746E656469 && stringValue._object == 0xEA00000000007265;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (countAndFlagsBits == 0x6174614472657375 && object == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int CorrectionsDirectInvocation.CodingKeys.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x26D5E7840](a1 & 1);
  return Hasher._finalize()();
}

uint64_t CorrectionsDirectInvocation.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x6174614472657375;
  }

  else
  {
    return 0x696669746E656469;
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CorrectionsDirectInvocation.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  CorrectionsDirectInvocation.CodingKeys.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CorrectionsDirectInvocation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CorrectionsDirectInvocation.CodingKeys and conformance CorrectionsDirectInvocation.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CorrectionsDirectInvocation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CorrectionsDirectInvocation.CodingKeys and conformance CorrectionsDirectInvocation.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CorrectionsDirectInvocation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SiriCorrections0E16DirectInvocationV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15SiriCorrections0E16DirectInvocationV10CodingKeysOGMR);
  OUTLINED_FUNCTION_6(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v8);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CorrectionsDirectInvocation.CodingKeys and conformance CorrectionsDirectInvocation.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    LOBYTE(v32) = 0;
    v12 = KeyedDecodingContainer.decode(_:forKey:)();
    v14 = v13;
    LOBYTE(v31) = 1;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v30 = v33;
    if (v33 >> 60 == 15)
    {
      v15 = OUTLINED_FUNCTION_1_0();
      v16(v15);
      v17 = 0;
    }

    else
    {
      v18 = v32;
      v28 = objc_opt_self();
      v29 = v18;
      isa = Data._bridgeToObjectiveC()().super.isa;
      v32 = 0;
      v19 = [v28 propertyListWithData:isa options:0 format:0 error:&v32];

      if (!v19)
      {
        v26 = v32;

        _convertNSErrorToError(_:)();

        swift_willThrow();
        outlined consume of Data?(v29, v30);
        v10 = OUTLINED_FUNCTION_1_0();
        v11(v10);
        goto LABEL_8;
      }

      v20 = v32;
      _bridgeAnyObjectToAny(_:)();
      outlined consume of Data?(v29, v30);
      swift_unknownObjectRelease();
      v21 = OUTLINED_FUNCTION_1_0();
      v22(v21);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
      v23 = swift_dynamicCast();
      v17 = v31;
      if (!v23)
      {
        v17 = 0;
      }
    }

    *a2 = v12;
    a2[1] = v14;
    a2[2] = v17;
  }

LABEL_8:
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CorrectionsDirectInvocation.encode(to:)(void *a1)
{
  v33[2] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SiriCorrections0E16DirectInvocationV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15SiriCorrections0E16DirectInvocationV10CodingKeysOGMR);
  OUTLINED_FUNCTION_6(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - v10;
  v12 = *v1;
  v13 = v1[1];
  v31 = v1[2];
  v15 = a1[3];
  v14 = a1[4];
  v16 = a1;
  v18 = v17;
  __swift_project_boxed_opaque_existential_1(v16, v15);
  lazy protocol witness table accessor for type CorrectionsDirectInvocation.CodingKeys and conformance CorrectionsDirectInvocation.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v33[0]) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v20 = v6;
    if (v31)
    {
      v21 = objc_opt_self();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      v33[0] = 0;
      v23 = [v21 dataWithPropertyList:isa format:200 options:0 error:v33];

      v24 = v33[0];
      if (v23)
      {
        v25 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;

        v33[0] = v25;
        v33[1] = v27;
        v32 = 1;
        lazy protocol witness table accessor for type Data and conformance Data();
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        (*(v20 + 8))(v11, v18);
        result = outlined consume of Data._Representation(v25, v27);
        goto LABEL_8;
      }

      v28 = v24;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    result = (*(v20 + 8))(v11, v18);
    goto LABEL_8;
  }

  result = (*(v6 + 8))(v11, v18);
LABEL_8:
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t lazy protocol witness table accessor for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier()
{
  result = lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier;
  if (!lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier)
  {
    type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CorrectionsDirectInvocation.CodingKeys and conformance CorrectionsDirectInvocation.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CorrectionsDirectInvocation.CodingKeys and conformance CorrectionsDirectInvocation.CodingKeys;
  if (!lazy protocol witness table cache variable for type CorrectionsDirectInvocation.CodingKeys and conformance CorrectionsDirectInvocation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CorrectionsDirectInvocation.CodingKeys and conformance CorrectionsDirectInvocation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CorrectionsDirectInvocation.CodingKeys and conformance CorrectionsDirectInvocation.CodingKeys;
  if (!lazy protocol witness table cache variable for type CorrectionsDirectInvocation.CodingKeys and conformance CorrectionsDirectInvocation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CorrectionsDirectInvocation.CodingKeys and conformance CorrectionsDirectInvocation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CorrectionsDirectInvocation.CodingKeys and conformance CorrectionsDirectInvocation.CodingKeys;
  if (!lazy protocol witness table cache variable for type CorrectionsDirectInvocation.CodingKeys and conformance CorrectionsDirectInvocation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CorrectionsDirectInvocation.CodingKeys and conformance CorrectionsDirectInvocation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CorrectionsDirectInvocation.CodingKeys and conformance CorrectionsDirectInvocation.CodingKeys;
  if (!lazy protocol witness table cache variable for type CorrectionsDirectInvocation.CodingKeys and conformance CorrectionsDirectInvocation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CorrectionsDirectInvocation.CodingKeys and conformance CorrectionsDirectInvocation.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t type metadata accessor for CorrectionsUSOParse(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t type metadata completion function for CorrectionsParse()
{
  result = type metadata accessor for CorrectionsUSOParse(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SIRINLUUserDialogAct();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t type metadata accessor for SIRINLUUserDialogAct()
{
  result = lazy cache variable for type metadata for SIRINLUUserDialogAct;
  if (!lazy cache variable for type metadata for SIRINLUUserDialogAct)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SIRINLUUserDialogAct);
  }

  return result;
}

void type metadata completion function for CorrectionsUSOParse()
{
  type metadata accessor for Siri_Nlu_External_UserParse();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier?();
    if (v1 <= 0x3F)
    {
      type metadata accessor for String?();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier?()
{
  if (!lazy cache variable for type metadata for Siri_Nlu_External_Parser.ParserIdentifier?)
  {
    type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Siri_Nlu_External_Parser.ParserIdentifier?);
    }
  }
}

void type metadata accessor for String?()
{
  if (!lazy cache variable for type metadata for String?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for String?);
    }
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CorrectionsDirectInvocation(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for CorrectionsDirectInvocation(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CorrectionsDirectInvocation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

void __swiftcall CorrectionsContext.init(userId:assistantId:)(SiriCorrections::CorrectionsContext *__return_ptr retstr, Swift::String_optional userId, Swift::String_optional assistantId)
{
  retstr->userId = userId;
  retstr->assistantId = assistantId;
  retstr->resultCandidateId = 0u;
  retstr->executionRequestId = 0u;
}

uint64_t CorrectionsContext.userId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_4_1();
}

uint64_t CorrectionsContext.assistantId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_4_1();
}

uint64_t CorrectionsContext.resultCandidateId.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_4_1();
}

uint64_t CorrectionsContext.executionRequestId.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_4_1();
}

double static CorrectionsContext.builder.getter()
{
  type metadata accessor for CorrectionsContext.Builder();
  v0 = swift_allocObject();
  result = 0.0;
  v0[1] = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  v0[4] = 0u;
  return result;
}

double CorrectionsContext.Builder.__allocating_init()()
{
  v0 = swift_allocObject();
  result = 0.0;
  v0[1] = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  v0[4] = 0u;
  return result;
}

uint64_t key path setter for CorrectionsContext.Builder.userId : CorrectionsContext.Builder(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 120);

  return v4(v2, v3);
}

uint64_t CorrectionsContext.Builder.userId.getter()
{
  OUTLINED_FUNCTION_6_0();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_4_1();
}

uint64_t CorrectionsContext.Builder.userId.setter()
{
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_5_1();
  v3 = *(v1 + 24);
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
}

uint64_t key path setter for CorrectionsContext.Builder.assistantId : CorrectionsContext.Builder(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 144);

  return v4(v2, v3);
}

uint64_t CorrectionsContext.Builder.assistantId.getter()
{
  OUTLINED_FUNCTION_6_0();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_4_1();
}

uint64_t CorrectionsContext.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_5_1();
  v3 = *(v1 + 40);
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
}

uint64_t key path setter for CorrectionsContext.Builder.resultCandidateId : CorrectionsContext.Builder(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 168);

  return v4(v2, v3);
}

uint64_t CorrectionsContext.Builder.resultCandidateId.getter()
{
  OUTLINED_FUNCTION_6_0();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_4_1();
}

uint64_t CorrectionsContext.Builder.resultCandidateId.setter()
{
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_5_1();
  v3 = *(v1 + 56);
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
}

uint64_t key path setter for CorrectionsContext.Builder.executionRequestId : CorrectionsContext.Builder(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 192);

  return v4(v2, v3);
}

uint64_t CorrectionsContext.Builder.executionRequestId.getter()
{
  OUTLINED_FUNCTION_6_0();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_4_1();
}

uint64_t CorrectionsContext.Builder.executionRequestId.setter()
{
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_5_1();
  v3 = *(v1 + 72);
  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
}

uint64_t CorrectionsContext.Builder.userId(_:)()
{
  OUTLINED_FUNCTION_0_2();
  v1 = *(v0 + 120);

  v2 = OUTLINED_FUNCTION_8();
  v1(v2);
}

uint64_t CorrectionsContext.Builder.assistantId(_:)()
{
  OUTLINED_FUNCTION_0_2();
  v1 = *(v0 + 144);

  v2 = OUTLINED_FUNCTION_8();
  v1(v2);
}

uint64_t CorrectionsContext.Builder.resultCandidateId(_:)()
{
  OUTLINED_FUNCTION_0_2();
  v1 = *(v0 + 168);

  v2 = OUTLINED_FUNCTION_8();
  v1(v2);
}

uint64_t CorrectionsContext.Builder.executionRequestId(_:)()
{
  OUTLINED_FUNCTION_0_2();
  v1 = *(v0 + 192);

  v2 = OUTLINED_FUNCTION_8();
  v1(v2);
}

void __swiftcall CorrectionsContext.Builder.build()(SiriCorrections::CorrectionsContext *__return_ptr retstr)
{
  OUTLINED_FUNCTION_2_1();
  v3 = (*(v2 + 112))();
  v5 = v4;
  OUTLINED_FUNCTION_2_1();
  v7 = (*(v6 + 136))();
  v9 = v8;
  OUTLINED_FUNCTION_2_1();
  v11 = (*(v10 + 160))();
  v13 = v12;
  OUTLINED_FUNCTION_2_1();
  v15 = (*(v14 + 184))();
  retstr->userId.value._countAndFlagsBits = v3;
  retstr->userId.value._object = v5;
  retstr->assistantId.value._countAndFlagsBits = v7;
  retstr->assistantId.value._object = v9;
  retstr->resultCandidateId.value._countAndFlagsBits = v11;
  retstr->resultCandidateId.value._object = v13;
  retstr->executionRequestId.value._countAndFlagsBits = v15;
  retstr->executionRequestId.value._object = v16;
}

void *CorrectionsContext.Builder.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return v0;
}

uint64_t CorrectionsContext.Builder.__deallocating_deinit()
{
  CorrectionsContext.Builder.deinit();

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

double CorrectionsContext.Builder.init()()
{
  result = 0.0;
  v0[3] = 0u;
  v0[4] = 0u;
  v0[1] = 0u;
  v0[2] = 0u;
  return result;
}

uint64_t CorrectionsContext.debugDescription.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v8 = v0[6];
  v7 = v0[7];

  _StringGuts.grow(_:)(74);
  MEMORY[0x26D5E75C0](0x203A644972657375, 0xE800000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, "b\b");
  v9 = OUTLINED_FUNCTION_9();
  MEMORY[0x26D5E75C0](v9);

  MEMORY[0x26D5E75C0](0x747369737361202CLL, 0xEF203A6449746E61);
  v10 = OUTLINED_FUNCTION_9();
  MEMORY[0x26D5E75C0](v10);

  MEMORY[0x26D5E75C0](0xD000000000000015, 0x8000000266A62560);
  v11 = OUTLINED_FUNCTION_9();
  MEMORY[0x26D5E75C0](v11);

  MEMORY[0x26D5E75C0](0xD000000000000016, 0x8000000266A62580);
  v12 = OUTLINED_FUNCTION_9();
  MEMORY[0x26D5E75C0](v12);

  return 0;
}

uint64_t static CorrectionsContext.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v7 = a2[2];
  v6 = a2[3];
  if (!v3 || (v8 = a2[1]) == 0 || (*a1 == *a2 ? (v9 = v3 == v8) : (v9 = 0), v9 || (v10 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v10 & 1) != 0)))
  {
    result = 1;
    if (v5 && v6 && (v4 != v7 || v5 != v6))
    {
      OUTLINED_FUNCTION_8();

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t storeEnumTagSinglePayload for CorrectionsContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t *CorrectionsSELFHelper.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  return &static CorrectionsSELFHelper.shared;
}

uint64_t one-time initialization function for shared()
{
  v0 = type metadata accessor for CorrectionsSELFHelper();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  UUID.init()();
  result = UUID.init()();
  static CorrectionsSELFHelper.shared = v3;
  return result;
}

uint64_t CorrectionsSELFHelper.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  UUID.init()();
  UUID.init()();
  return v3;
}

uint64_t static CorrectionsSELFHelper.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_3();
  }
}

uint64_t static CorrectionsSELFHelper.emit(_:)(uint64_t a1)
{
  [objc_msgSend(objc_opt_self() sharedStream)];

  return swift_unknownObjectRelease();
}

void CorrectionsSELFHelper.emitCheckUndo(undoType:undoReason:context:)(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v5 = *v3;
  v6 = a3[1];
  v32[0] = *a3;
  v32[1] = v6;
  v7 = a3[3];
  v32[2] = a3[2];
  v32[3] = v7;
  v8 = (*(v5 + 168))(a1, a2, v32);
  if (v8)
  {
    v9 = v8;
    if (one-time initialization token for instrumentation != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.instrumentation);
    v31 = v9;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v11, v12))
    {
      OUTLINED_FUNCTION_10();
      v13 = OUTLINED_FUNCTION_4_2();
      *&v32[0] = v13;
      *v4 = 136315138;
      v14 = v31;
      v15 = [v14 description];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v16 = OUTLINED_FUNCTION_15();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v18);

      *(v4 + 4) = v19;
      OUTLINED_FUNCTION_18(&dword_266A4D000, v20, v21, "[CorrectionsSELFHelper] Emitting checkUndo metric %s");
      __swift_destroy_boxed_opaque_existential_1(v13);
      OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_2();
    }

    static CorrectionsSELFHelper.emit(_:)(v31);
  }

  else
  {
    if (one-time initialization token for instrumentation != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.instrumentation);
    v31 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v23))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_17(&dword_266A4D000, v24, v25, "[CorrectionsSELFHelper] checkUndo failed to be emitted", v26, v27, v28, v29, v30, v31);
      OUTLINED_FUNCTION_5_2();
    }
  }
}

void *CorrectionsSELFHelper.buildSetUndo(correctionsDirectInvocation:context:)(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];

  CorrectionsSELFHelper.makeClientEventWrapper(context:)();
  if (v4)
  {
    v5 = v4;
    v6 = closure #1 in CorrectionsSELFHelper.buildSetUndo(correctionsDirectInvocation:context:)(v4, v2, v1);

    return v6;
  }

  else
  {

    return 0;
  }
}

void *closure #1 in CorrectionsSELFHelper.buildSetUndo(correctionsDirectInvocation:context:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x277D5A658]) init];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_allocWithZone(MEMORY[0x277D5A648]) init];
    if (v8)
    {
      v9 = v8;
      outlined bridged method (mbgnn) of @objc SCSchemaSCSetUndoArgs.directInvocationId.setter(a2, a3, v8);
      [v7 setSetUndoArgs_];
      [a1 setUndoSet_];

      v10 = a1;
      return a1;
    }
  }

  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.instrumentation);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_266A4D000, v12, v13, "[CorrectionsSELFHelper] setUndo failed to be emitted", v14, 2u);
    MEMORY[0x26D5E7CB0](v14, -1, -1);
  }

  return 0;
}

void CorrectionsSELFHelper.buildCheckUndo(undoType:undoReason:context:)(uint64_t a1, uint64_t a2)
{
  CorrectionsSELFHelper.makeClientEventWrapper(context:)();
  if (v4)
  {
    v5 = v4;
    closure #1 in CorrectionsSELFHelper.buildCheckUndo(undoType:undoReason:context:)(v4, a1, a2);
  }
}

void *closure #1 in CorrectionsSELFHelper.buildCheckUndo(undoType:undoReason:context:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x277D5A628]) init];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_allocWithZone(MEMORY[0x277D5A650]) init];
    if (v8)
    {
      v9 = v8;
      [v7 setUndoType_];
      [v7 setReason_];
      [v9 setCheckUndoResponse_];
      [a1 setUndoChecked_];

      v10 = a1;
      return a1;
    }
  }

  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.instrumentation);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_266A4D000, v12, v13, "[CorrectionsSELFHelper] checkUndo failed to be emitted", v14, 2u);
    MEMORY[0x26D5E7CB0](v14, -1, -1);
  }

  return 0;
}

void CorrectionsSELFHelper.makeClientEventWrapper(context:)()
{
  v2 = type metadata accessor for UUID();
  v3 = OUTLINED_FUNCTION_6(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_8_0();
  v8 = [objc_allocWithZone(MEMORY[0x277D5A630]) init];
  if (v8)
  {
    v9 = v8;
    v10 = [objc_allocWithZone(MEMORY[0x277D5A638]) init];
    if (v10)
    {
      v11 = v10;
      v12 = AFDeviceSupportsSAE();
      type metadata accessor for SISchemaUUID();
      v13 = OBJC_IVAR____TtC15SiriCorrections21CorrectionsSELFHelper_executionRequestId;
      v14 = (v5 + 16);
      v15 = &selRef_setSubRequestId_;
      if ((v12 & 1) == 0)
      {
        v15 = &selRef_setRequestId_;
      }

      v24 = v15;
      swift_beginAccess();
      v16 = *v14;
      (*v14)(v1, v0 + v13, v2);
      v17 = SISchemaUUID.__allocating_init(nsuuid:)(v1);
      [v11 *v24];

      type metadata accessor for SISchemaUUID();
      v18 = OBJC_IVAR____TtC15SiriCorrections21CorrectionsSELFHelper_correctionsId;
      swift_beginAccess();
      v16(v1, v0 + v18, v2);
      v19 = SISchemaUUID.__allocating_init(nsuuid:)(v1);
      [v11 setScId_];

      [v9 setEventMetadata_];
      goto LABEL_12;
    }
  }

  if (one-time initialization token for instrumentation != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.instrumentation);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_266A4D000, v21, v22, "[CorrectionsSELFHelper] Failed to create base SELF objects", v23, 2u);
    OUTLINED_FUNCTION_5_2();
  }

LABEL_12:
  OUTLINED_FUNCTION_19();
}

uint64_t CorrectionsSELFHelper.deinit()
{
  v2 = OBJC_IVAR____TtC15SiriCorrections21CorrectionsSELFHelper_correctionsId;
  v3 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_13_0(v3);
  v5 = *(v4 + 8);
  v5(v1 + v2, v0);
  v5(v1 + OBJC_IVAR____TtC15SiriCorrections21CorrectionsSELFHelper_executionRequestId, v0);
  return v1;
}

uint64_t CorrectionsSELFHelper.__deallocating_deinit()
{
  v2 = OBJC_IVAR____TtC15SiriCorrections21CorrectionsSELFHelper_correctionsId;
  v3 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_13_0(v3);
  v5 = *(v4 + 8);
  v5(v1 + v2, v0);
  v5(v1 + OBJC_IVAR____TtC15SiriCorrections21CorrectionsSELFHelper_executionRequestId, v0);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v6, v7);
}

uint64_t CorrectionsSELFHelper.init()()
{
  UUID.init()();
  UUID.init()();
  return v0;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SiriCorrections12ModifiedNode33_B4A290DC396177E2DE6FD9C9F9B768B2LLVGMd, &_ss23_ContiguousArrayStorageCy15SiriCorrections12ModifiedNode33_B4A290DC396177E2DE6FD9C9F9B768B2LLVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SiriCorrections23CorrectionCandidateTask33_B4A290DC396177E2DE6FD9C9F9B768B2LLVGMd, &_ss23_ContiguousArrayStorageCy15SiriCorrections23CorrectionCandidateTask33_B4A290DC396177E2DE6FD9C9F9B768B2LLVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SiriCorrections19CorrectionOperationVGMd, &_ss23_ContiguousArrayStorageCy15SiriCorrections19CorrectionOperationVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[40 * v8] <= v12)
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
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

uint64_t type metadata accessor for CorrectionsSELFHelper()
{
  result = type metadata singleton initialization cache for CorrectionsSELFHelper;
  if (!type metadata singleton initialization cache for CorrectionsSELFHelper)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for CorrectionsSELFHelper()
{
  result = type metadata accessor for UUID();
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

void outlined bridged method (mbgnn) of @objc SCSchemaSCSetUndoArgs.directInvocationId.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x26D5E7570]();
  [a3 setDirectInvocationId_];
}

uint64_t OUTLINED_FUNCTION_0_3()
{

  return swift_once();
}

void OUTLINED_FUNCTION_17(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t log)
{

  _os_log_impl(a1, log, v10, a4, v11, 2u);
}

uint64_t specialized == infix<A>(_:_:)(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x656D757274736E49;
  }

  else
  {
    v3 = 0x6974636572726F43;
  }

  if (v2)
  {
    v4 = 0xEB00000000736E6FLL;
  }

  else
  {
    v4 = 0xEF6E6F697461746ELL;
  }

  if (a2)
  {
    v5 = 0x656D757274736E49;
  }

  else
  {
    v5 = 0x6974636572726F43;
  }

  if (a2)
  {
    v6 = 0xEF6E6F697461746ELL;
  }

  else
  {
    v6 = 0xEB00000000736E6FLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

void *one-time initialization function for rrUtils()
{
  type metadata accessor for ReferenceResolutionUtils();
  result = swift_allocObject();
  static CorrectionsEngine.rrUtils = result;
  return result;
}

void one-time initialization function for inverseDirectInvocation()
{
  static CorrectionsEngine.inverseDirectInvocation = 0;
  qword_281321728 = 0;
  qword_281321730 = 0;
}

uint64_t *CorrectionsEngine.inverseDirectInvocation.unsafeMutableAddressor()
{
  if (one-time initialization token for inverseDirectInvocation != -1)
  {
    OUTLINED_FUNCTION_3_3();
  }

  return &static CorrectionsEngine.inverseDirectInvocation;
}

uint64_t static CorrectionsEngine.inverseDirectInvocation.getter@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for inverseDirectInvocation != -1)
  {
    OUTLINED_FUNCTION_3_3();
  }

  OUTLINED_FUNCTION_27();
  v2 = static CorrectionsEngine.inverseDirectInvocation;
  v3 = qword_281321728;
  v4 = qword_281321730;
  *a1 = static CorrectionsEngine.inverseDirectInvocation;
  a1[1] = v3;
  a1[2] = v4;
  return outlined copy of CorrectionsDirectInvocation?(v2, v3);
}

uint64_t outlined copy of CorrectionsDirectInvocation?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t key path getter for static CorrectionsEngine.inverseDirectInvocation : CorrectionsEngine.Type@<X0>(void *a1@<X8>)
{
  CorrectionsEngine.inverseDirectInvocation.unsafeMutableAddressor();
  swift_beginAccess();
  v2 = static CorrectionsEngine.inverseDirectInvocation;
  v3 = qword_281321728;
  v4 = qword_281321730;
  *a1 = static CorrectionsEngine.inverseDirectInvocation;
  a1[1] = v3;
  a1[2] = v4;
  return outlined copy of CorrectionsDirectInvocation?(v2, v3);
}

uint64_t key path setter for static CorrectionsEngine.inverseDirectInvocation : CorrectionsEngine.Type(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  outlined copy of CorrectionsDirectInvocation?(*a1, v2);
  CorrectionsEngine.inverseDirectInvocation.unsafeMutableAddressor();
  swift_beginAccess();
  v4 = static CorrectionsEngine.inverseDirectInvocation;
  v5 = qword_281321728;
  static CorrectionsEngine.inverseDirectInvocation = v1;
  qword_281321728 = v2;
  qword_281321730 = v3;
  return outlined consume of CorrectionsDirectInvocation?(v4, v5);
}

uint64_t one-time initialization function for parseStoredTime()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  __swift_allocate_value_buffer(v0, static CorrectionsEngine.parseStoredTime);
  v1 = __swift_project_value_buffer(v0, static CorrectionsEngine.parseStoredTime);
  v2 = type metadata accessor for Date();

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
}

double one-time initialization function for context()
{
  v0 = swift_slowAlloc();
  static CorrectionsEngine.context = v0;
  result = 0.0;
  *v0 = xmmword_266A62200;
  v0[1] = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  return result;
}

uint64_t CorrectionsEngine.context.unsafeMutableAddressor()
{
  if (one-time initialization token for context != -1)
  {
    OUTLINED_FUNCTION_4_3();
  }

  return static CorrectionsEngine.context;
}

uint64_t static CorrectionsEngine.context.getter@<X0>(__int128 *a1@<X8>)
{
  if (one-time initialization token for context != -1)
  {
    OUTLINED_FUNCTION_4_3();
  }

  v2 = static CorrectionsEngine.context;
  OUTLINED_FUNCTION_27();
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[3];
  v10[2] = v2[2];
  v10[3] = v5;
  v10[0] = v3;
  v10[1] = v4;
  v6 = v2[1];
  *a1 = *v2;
  a1[1] = v6;
  v7 = v2[3];
  a1[2] = v2[2];
  a1[3] = v7;
  return outlined init with copy of CorrectionsContext?(v10, v9, &_s15SiriCorrections0B7ContextVSgMd, &_s15SiriCorrections0B7ContextVSgMR);
}

uint64_t key path getter for static CorrectionsEngine.context : CorrectionsEngine.Type@<X0>(__int128 *a1@<X8>)
{
  v2 = CorrectionsEngine.context.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[3];
  v10[2] = v2[2];
  v10[3] = v5;
  v10[0] = v3;
  v10[1] = v4;
  v6 = v2[1];
  *a1 = *v2;
  a1[1] = v6;
  v7 = v2[3];
  a1[2] = v2[2];
  a1[3] = v7;
  return outlined init with copy of CorrectionsContext?(v10, v9, &_s15SiriCorrections0B7ContextVSgMd, &_s15SiriCorrections0B7ContextVSgMR);
}

uint64_t key path setter for static CorrectionsEngine.context : CorrectionsEngine.Type(__int128 *a1)
{
  v1 = a1[1];
  v11 = *a1;
  v12 = v1;
  v2 = a1[3];
  v13 = a1[2];
  v14 = v2;
  outlined init with copy of CorrectionsContext?(&v11, v15, &_s15SiriCorrections0B7ContextVSgMd, &_s15SiriCorrections0B7ContextVSgMR);
  v3 = CorrectionsEngine.context.unsafeMutableAddressor();
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[3];
  v15[2] = v3[2];
  v15[3] = v6;
  v15[0] = v4;
  v15[1] = v5;
  v7 = v11;
  v8 = v12;
  v9 = v14;
  v3[2] = v13;
  v3[3] = v9;
  *v3 = v7;
  v3[1] = v8;
  return outlined destroy of (Siri_Nlu_External_Parser.ParserIdentifier?, Siri_Nlu_External_Parser.ParserIdentifier?)(v15, &_s15SiriCorrections0B7ContextVSgMd, &_s15SiriCorrections0B7ContextVSgMR);
}

uint64_t CorrectionsEngine.undoFollowUpPluginActionUserDataKey.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t static CorrectionsEngine.setReferenceResolver(to:)(void *a1)
{
  if (one-time initialization token for rrUtils != -1)
  {
    swift_once();
  }

  static CorrectionsEngine.rrUtils = a1;
}

uint64_t static CorrectionsEngine.shared()()
{
  type metadata accessor for CorrectionsEngine();

  return swift_initStaticObject();
}

uint64_t CorrectionsEngine.checkCorrection(input:)(uint64_t a1)
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  (*(*v1 + 112))(a1, v3);
  return outlined destroy of (Siri_Nlu_External_Parser.ParserIdentifier?, Siri_Nlu_External_Parser.ParserIdentifier?)(v3, &_s15SiriCorrections0B11Customizing_pSgMd, &_s15SiriCorrections0B11Customizing_pSgMR);
}

void CorrectionsEngine.checkCorrection(input:customizations:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_66();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v231 = v24;
  v263 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v25 = OUTLINED_FUNCTION_6(v263);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_8_1();
  v30 = v29 - v28;
  v262 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v31 = OUTLINED_FUNCTION_6(v262);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_7_2();
  v261 = v36;
  OUTLINED_FUNCTION_23();
  v37 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v38 = OUTLINED_FUNCTION_6(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_7_2();
  v265 = v43;
  OUTLINED_FUNCTION_23();
  v230 = type metadata accessor for OSSignpostID();
  v44 = OUTLINED_FUNCTION_6(v230);
  v229 = v45;
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_8_1();
  v50 = v49 - v48;
  if (one-time initialization token for log != -1)
  {
LABEL_303:
    OUTLINED_FUNCTION_0_0();
  }

  static Logger.log;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  v228 = v50;
  os_signpost(_:dso:log:name:signpostID:)();
  v51 = MEMORY[0x277D84F90];
  v275 = MEMORY[0x277D84F90];
  v52 = outlined init with copy of CorrectionsContext?(v23, &v268, &_s15SiriCorrections0B11Customizing_pSgMd, &_s15SiriCorrections0B11Customizing_pSgMR);
  if (v270)
  {
    v52 = outlined init with take of CorrectionsCustomizing(&v268, v272);
  }

  else
  {
    v273 = &type metadata for CorrectionsCustomizationsAllowingAllEntities;
    v274 = &protocol witness table for CorrectionsCustomizationsAllowingAllEntities;
    v272[0] = MEMORY[0x277D84FA0];
    v272[1] = MEMORY[0x277D84FA0];
  }

  v53 = MEMORY[0x26D5E71D0](v52);
  v50 = v53;
  v23 = *(v53 + 16);
  if (v23)
  {
    v54 = 0;
    v55 = 0;
    v56 = v53 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
    v258 = (v33 + 8);
    v33 = v40 + 8;
    v57 = v265;
    v256 = v30;
    v254 = v37;
    v250 = v40;
    v248 = v53;
    v247 = *(v53 + 16);
    v245 = v56;
    v243 = v40 + 8;
    do
    {
      if (v55 >= *(v50 + 16))
      {
        goto LABEL_286;
      }

      (*(v40 + 16))(v57, v56 + *(v40 + 72) * v55, v37);
      if (Siri_Nlu_External_UserDialogAct.hasUserStatedTask.getter())
      {
        Siri_Nlu_External_UserDialogAct.userStatedTask.getter();
        Siri_Nlu_External_UserStatedTask.task.getter();
        (*v258)(v261, v262);
        v58 = static UsoGraphProtoReader.fromSwiftProtobuf(protobufGraph:vocabManager:)();
        v59 = OUTLINED_FUNCTION_46();
        v60(v59);
        v61 = MEMORY[0x26D5E7330](v58);
        v33 = v61;
        if (!v54)
        {
          v50 = specialized Array._getCount()(v61);
          v62 = 0;
          v37 = v33 & 0xC000000000000001;
          v23 = (v33 & 0xFFFFFFFFFFFFFF8);
          while (1)
          {
            v54 = v50 != v62;
            if (v50 == v62)
            {
              goto LABEL_29;
            }

            if (v37)
            {
              MEMORY[0x26D5E76F0](v62, v33);
            }

            else
            {
              if (v62 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_282;
              }

              v63 = *(v33 + 8 * v62 + 32);
            }

            if (__OFADD__(v62, 1))
            {
              break;
            }

            v64 = UsoTask.verbString.getter();
            v30 = v65;
            v66 = v64 == 0x657461647075 && v65 == 0xE600000000000000;
            if (v66)
            {

              goto LABEL_28;
            }

            v40 = OUTLINED_FUNCTION_70();

            ++v62;
            if (v40)
            {
              goto LABEL_29;
            }
          }

          __break(1u);
LABEL_282:
          __break(1u);
LABEL_283:
          __break(1u);
LABEL_284:
          __break(1u);
LABEL_285:
          __break(1u);
LABEL_286:
          __break(1u);
LABEL_287:
          __break(1u);
LABEL_288:
          __break(1u);
LABEL_289:
          __break(1u);
LABEL_290:
          __break(1u);
LABEL_291:
          __break(1u);
LABEL_292:
          __break(1u);
LABEL_293:
          __break(1u);
LABEL_294:
          __break(1u);
LABEL_295:
          __break(1u);
LABEL_296:
          __break(1u);
LABEL_297:
          __break(1u);
LABEL_298:
          __break(1u);
LABEL_299:
          __break(1u);
LABEL_300:
          __break(1u);
LABEL_301:
          __break(1u);
          goto LABEL_302;
        }

LABEL_28:
        v54 = 1;
LABEL_29:
        type metadata accessor for CorrectionsEngine();
        v67 = static CorrectionsEngine.searchTasks(tasks:customizations:)(v33, v272);

        specialized Array.append<A>(contentsOf:)(v67);

        v30 = v256;
        v37 = v254;
        v40 = v250;
        v57 = v265;
        v50 = v248;
        v23 = v247;
        v56 = v245;
        v33 = v243;
      }

      else if ((Siri_Nlu_External_UserDialogAct.hasRejected.getter() & 1) == 0 && (Siri_Nlu_External_UserDialogAct.hasCancelled.getter() & 1) == 0 && (Siri_Nlu_External_UserDialogAct.hasAccepted.getter() & 1) == 0)
      {
        Siri_Nlu_External_UserDialogAct.hasWantedToProceed.getter();
      }

      v55 = (v55 + 1);
      (*v33)(v57, v37);
    }

    while (v55 != v23);

    OUTLINED_FUNCTION_50(v275);
    if (!v69)
    {
      if (v54)
      {

        v70 = MEMORY[0x277D84F90];
LABEL_274:
        if (*(v70 + 16) >= 2uLL)
        {
          v89 = v70;
          if (one-time initialization token for logger != -1)
          {
LABEL_307:
            OUTLINED_FUNCTION_0_4();
            swift_once();
          }

          v222 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_18_0(v222, static Logger.logger);
          v223 = Logger.logObject.getter();
          v224 = static os_log_type_t.debug.getter();
          if (OUTLINED_FUNCTION_25(v224))
          {
            v225 = OUTLINED_FUNCTION_30();
            OUTLINED_FUNCTION_45(v225);
            OUTLINED_FUNCTION_17_0(&dword_266A4D000, v226, v227, "[CorrectionsEngine.checkCorrection] found more than one correction candidate.");
            OUTLINED_FUNCTION_24();
          }

          v70 = v89;
        }

        specialized Collection.first.getter(v70, v231);

        goto LABEL_280;
      }

LABEL_270:

      if (one-time initialization token for logger != -1)
      {
        goto LABEL_305;
      }

      goto LABEL_271;
    }
  }

  else
  {

    OUTLINED_FUNCTION_50(v51);
    if (!v71)
    {
      goto LABEL_270;
    }
  }

  v72 = 0;
  v233 = v68 + 32;
  v73 = MEMORY[0x277D84F90];
  while (2)
  {
    if (v72 >= *v234)
    {
      goto LABEL_298;
    }

    v74 = v233 + 32 * v72;
    v23 = *v74;
    v33 = *(v74 + 16);
    v75 = *(v74 + 24);
    v237 = v73;
    v246 = *(v75 + 16);
    v235 = v72;
    v238 = v33;
    if (!v246)
    {
      if (*(v74 + 8) == 0x657461647075)
      {

        OUTLINED_FUNCTION_34();

        if (v33 == 0xE600000000000000)
        {

          v236 = 0;
          v37 = MEMORY[0x277D84F90];
          goto LABEL_237;
        }
      }

      else
      {

        OUTLINED_FUNCTION_34();
      }

      v236 = 0;
      v37 = MEMORY[0x277D84F90];
      goto LABEL_236;
    }

    v244 = v75 + 32;
    swift_bridgeObjectRetain_n();

    v236 = 0;
    v50 = 0;
    v37 = MEMORY[0x277D84F90];
    v242 = v75;
    while (1)
    {
LABEL_39:
      if (v50 >= *(v75 + 16))
      {
        goto LABEL_283;
      }

      v260 = v37;
      v76 = (v244 + 24 * v50);
      v77 = *v76;
      v30 = v76[1];
      v37 = v76[2];
      ++v50;
      v23 = v273;
      v33 = __swift_project_boxed_opaque_existential_1(v272, v273);

      v78._countAndFlagsBits = v77;
      v78._object = v30;
      if (CorrectionsCustomizing.shouldAllowAttributeToBeCorrected(attribute:)(v78))
      {
        break;
      }

      v236 = 1;
      v37 = v260;
      if (v50 == v246)
      {

        OUTLINED_FUNCTION_36();
        if (v205)
        {
          v206 = v238 == 0xE600000000000000;
        }

        else
        {
          v206 = 0;
        }

        if (!v206)
        {
          v236 = 1;
          goto LABEL_236;
        }

        goto LABEL_249;
      }
    }

    v255 = v77;
    v257 = v30;
    v259 = v50;
    v264 = v37 + 64;
    v79 = 1 << *(v37 + 32);
    if (v79 < 64)
    {
      v80 = ~(-1 << v79);
    }

    else
    {
      v80 = -1;
    }

    v81 = v80 & *(v37 + 64);
    v262 = (v79 + 63) >> 6;

    LODWORD(v261) = 0;
    v249 = 0;
    LODWORD(v265) = 0;
    v50 = 0;
    v82 = MEMORY[0x277D84F90];
    v266 = MEMORY[0x277D84F90];
    v267 = v37;
    v33 = 0xED00007465536D6FLL;
    while (v81)
    {
LABEL_50:
      v84 = __clz(__rbit64(v81));
      v81 &= v81 - 1;
      v85 = v84 | (v50 << 6);
      v86 = *(v37 + 56);
      v87 = (*(v37 + 48) + 16 * v85);
      v88 = *v87;
      v30 = v87[1];
      v89 = *(v86 + 8 * v85);
      v90 = *v87 == 0x7465536F54646461 && v30 == 0xE800000000000000;
      v23 = (v89 >> 62);
      v91 = v82 >> 62;
      if (v90 || (OUTLINED_FUNCTION_28(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) || (v88 == 0x6C61566F54646461 ? (v92 = v30 == 0xEA00000000006575) : (v92 = 0), v92 || (OUTLINED_FUNCTION_28(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) || (v88 == 0x646E65707061 ? (v93 = v30 == 0xE600000000000000) : (v93 = 0), v93 || (OUTLINED_FUNCTION_28(), (OUTLINED_FUNCTION_70() & 1) != 0))))
      {
        if (v23)
        {
          v150 = OUTLINED_FUNCTION_52(v89 & 0xFFFFFFFFFFFFFF8);
          v40 = MEMORY[0x26D5E7790](v150);
        }

        else
        {
          v40 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v37 = v267;
        if (v91)
        {
          OUTLINED_FUNCTION_69();
        }

        else
        {
          v102 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v33 = v102 + v40;
        if (__OFADD__(v102, v40))
        {
          goto LABEL_284;
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          if (v91)
          {
LABEL_116:
            OUTLINED_FUNCTION_69();
          }

          else
          {
            v103 = v82 & 0xFFFFFFFFFFFFFF8;
LABEL_112:
            v106 = *(v103 + 16);
          }

          v82 = OUTLINED_FUNCTION_63();
          v103 = v82 & 0xFFFFFFFFFFFFFF8;
          goto LABEL_118;
        }

        if (v91)
        {
          goto LABEL_116;
        }

        v103 = v82 & 0xFFFFFFFFFFFFFF8;
        if (v33 > *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_112;
        }

LABEL_118:
        v108 = *(v103 + 16);
        v33 = *(v103 + 24);
        if (v23)
        {
          v110 = OUTLINED_FUNCTION_52(v89 & 0xFFFFFFFFFFFFFF8);
          v112 = v111;
          v113 = MEMORY[0x26D5E7790](v110);
          v103 = v112;
          v30 = v113;
          if (v113)
          {
            goto LABEL_120;
          }

LABEL_124:

          LODWORD(v265) = 1;
          v33 = 0xED00007465536D6FLL;
          if (v40 > 0)
          {
            goto LABEL_285;
          }
        }

        else
        {
          v30 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v30)
          {
            goto LABEL_124;
          }

LABEL_120:
          if (((v33 >> 1) - v108) < v40)
          {
            goto LABEL_287;
          }

          v252 = v82;
          v109 = (v103 + 8 * v108 + 32);
          v239 = v103;
          if (v23)
          {
            if (v30 < 1)
            {
              goto LABEL_292;
            }

            lazy protocol witness table accessor for type [UsoEntity] and conformance [A]();
            v23 = 0;
            do
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology9UsoEntityCGMd, &_sSay12SiriOntology9UsoEntityCGMR);
              v114 = OUTLINED_FUNCTION_44();
              v40 = specialized protocol witness for Collection.subscript.read in conformance [A](v114, v115, v89);
              v117 = *v116;

              v118 = OUTLINED_FUNCTION_43();
              (v40)(v118);
              *v109 = v117;
              OUTLINED_FUNCTION_42();
            }

            while (!v66);
          }

          else
          {
            v23 = (v89 & 0xFFFFFFFFFFFFFF8);
            type metadata accessor for UsoEntity();
            swift_arrayInitWithCopy();
          }

          LODWORD(v265) = 1;
          OUTLINED_FUNCTION_39();
          v33 = 0xED00007465536D6FLL;
          v82 = v252;
          v37 = v267;
          if (!(v120 ^ v121 | v66))
          {
            v122 = *(v239 + 16);
            v121 = __OFADD__(v122, v119);
            v123 = v122 + v119;
            if (v121)
            {
              goto LABEL_290;
            }

            *(v239 + 16) = v123;
            LODWORD(v265) = 1;
          }
        }
      }

      else
      {
        v40 = v89;
        if (v88 == 0x724665766F6D6572 && v30 == v33)
        {
          goto LABEL_101;
        }

        OUTLINED_FUNCTION_28();
        v95 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v96 = v88 == 0x724665766F6D6572 && v30 == 0xEF65756C61566D6FLL;
        v97 = v96;
        if (v95 & 1) != 0 || v97 || ((OUTLINED_FUNCTION_28(), v98 = _stringCompareWithSmolCheck(_:_:expecting:)(), v88 == 0x6574656C6564) ? (v99 = v30 == 0xE600000000000000) : (v99 = 0), !v99 ? (v100 = 0) : (v100 = 1), (v98 & 1) != 0 || (v100 & 1) != 0 || (OUTLINED_FUNCTION_28(), (OUTLINED_FUNCTION_70())))
        {
LABEL_101:
          if (v23)
          {
            if (v89 < 0)
            {
              v151 = v89;
            }

            else
            {
              v151 = v89 & 0xFFFFFFFFFFFFFF8;
            }

            v30 = MEMORY[0x26D5E7790](v151);
          }

          else
          {
            v30 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v37 = v267;
          v33 = v266 >> 62;
          if (v266 >> 62)
          {
            if (v266 < 0)
            {
              v152 = v266;
            }

            else
            {
              v152 = v266 & 0xFFFFFFFFFFFFFF8;
            }

            v104 = MEMORY[0x26D5E7790](v152);
          }

          else
          {
            v104 = *((v266 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v105 = v104 + v30;
          if (__OFADD__(v104, v30))
          {
            goto LABEL_288;
          }

          v251 = v82;
          if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
          {
            if (v33)
            {
LABEL_133:
              if (v266 < 0)
              {
                v124 = v266;
              }

              else
              {
                v124 = v266 & 0xFFFFFFFFFFFFFF8;
              }

              MEMORY[0x26D5E7790](v124);
            }

            else
            {
              v33 = v266 & 0xFFFFFFFFFFFFFF8;
LABEL_115:
              v107 = *(v33 + 16);
            }

            v266 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v33 = v266 & 0xFFFFFFFFFFFFFF8;
            goto LABEL_138;
          }

          if (v33)
          {
            goto LABEL_133;
          }

          v33 = v266 & 0xFFFFFFFFFFFFFF8;
          if (v105 > *((v266 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_115;
          }

LABEL_138:
          v125 = *(v33 + 16);
          v126 = *(v33 + 24);
          v40 = v33 + 16;
          if (v23)
          {
            v128 = OUTLINED_FUNCTION_52(v89 & 0xFFFFFFFFFFFFFF8);
            v30 = MEMORY[0x26D5E7790](v128);
            if (v30)
            {
              goto LABEL_140;
            }

LABEL_144:

            OUTLINED_FUNCTION_49(1);
            v33 = v33 | 0xED00007465530000;
            v82 = v251;
            if (!(v120 ^ v121 | v66))
            {
              goto LABEL_289;
            }
          }

          else
          {
            v30 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v30)
            {
              goto LABEL_144;
            }

LABEL_140:
            OUTLINED_FUNCTION_62();
            if (v120 != v121)
            {
              goto LABEL_291;
            }

            v240 = (v33 + 16);
            v127 = (v33 + 8 * v125 + 32);
            if (v23)
            {
              if (v30 < 1)
              {
                goto LABEL_296;
              }

              lazy protocol witness table accessor for type [UsoEntity] and conformance [A]();
              v23 = 0;
              do
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology9UsoEntityCGMd, &_sSay12SiriOntology9UsoEntityCGMR);
                v129 = OUTLINED_FUNCTION_44();
                v131 = specialized protocol witness for Collection.subscript.read in conformance [A](v129, v130, v89);
                v40 = *v132;

                v133 = OUTLINED_FUNCTION_43();
                (v131)(v133);
                *v127 = v40;
                OUTLINED_FUNCTION_42();
              }

              while (!v66);
            }

            else
            {
              v23 = (v89 & 0xFFFFFFFFFFFFFF8);
              type metadata accessor for UsoEntity();
              swift_arrayInitWithCopy();
            }

            LODWORD(v261) = 1;
            OUTLINED_FUNCTION_39();
            v33 = 0xED00007465536D6FLL;
            v82 = v251;
            v37 = v267;
            if (!(v120 ^ v121 | v66))
            {
              v135 = v240;
              v136 = *v240 + v134;
              if (__OFADD__(*v240, v134))
              {
                goto LABEL_295;
              }

              v137 = &a17;
              goto LABEL_153;
            }
          }
        }

        else
        {
          if (v88 == 0x5474636572726F63 && v30 == 0xE90000000000006FLL)
          {
            v37 = v267;
            goto LABEL_155;
          }

          OUTLINED_FUNCTION_28();
          v37 = v267;
          if (_stringCompareWithSmolCheck(_:_:expecting:)())
          {
LABEL_155:
            if (v23)
            {
              v153 = OUTLINED_FUNCTION_52(v89 & 0xFFFFFFFFFFFFFF8);
              v30 = MEMORY[0x26D5E7790](v153);
            }

            else
            {
              v30 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (v91)
            {
              OUTLINED_FUNCTION_69();
            }

            else
            {
              v138 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v33 = v138 + v30;
            if (__OFADD__(v138, v30))
            {
              goto LABEL_293;
            }

            if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
            {
              if (v91)
              {
LABEL_167:
                OUTLINED_FUNCTION_69();
              }

              else
              {
                v40 = v82 & 0xFFFFFFFFFFFFFF8;
LABEL_166:
                v139 = *(v40 + 16);
              }

              v82 = OUTLINED_FUNCTION_63();
              v40 = v82 & 0xFFFFFFFFFFFFFF8;
              goto LABEL_169;
            }

            if (v91)
            {
              goto LABEL_167;
            }

            v40 = v82 & 0xFFFFFFFFFFFFFF8;
            if (v33 > *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              goto LABEL_166;
            }

LABEL_169:
            v140 = *(v40 + 16);
            v33 = *(v40 + 24);
            if (v23)
            {
              v141 = OUTLINED_FUNCTION_52(v89 & 0xFFFFFFFFFFFFFF8);
              v30 = MEMORY[0x26D5E7790](v141);
              if (v30)
              {
                goto LABEL_171;
              }

LABEL_175:

              OUTLINED_FUNCTION_49(1);
              v33 = v33 | 0xED00007465530000;
              if (!(v120 ^ v121 | v66))
              {
                goto LABEL_294;
              }
            }

            else
            {
              v30 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v30)
              {
                goto LABEL_175;
              }

LABEL_171:
              OUTLINED_FUNCTION_62();
              if (v120 != v121)
              {
                goto LABEL_297;
              }

              v253 = v82;
              v37 = v40 + 8 * v140 + 32;
              v241 = v40;
              if (v23)
              {
                if (v30 < 1)
                {
                  goto LABEL_301;
                }

                lazy protocol witness table accessor for type [UsoEntity] and conformance [A]();
                v23 = 0;
                v40 = v89;
                v89 = &_sSay12SiriOntology9UsoEntityCGMR;
                do
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology9UsoEntityCGMd, &_sSay12SiriOntology9UsoEntityCGMR);
                  v142 = OUTLINED_FUNCTION_44();
                  v144 = specialized protocol witness for Collection.subscript.read in conformance [A](v142, v143, v40);
                  v146 = *v145;

                  v147 = OUTLINED_FUNCTION_43();
                  (v144)(v147);
                  *v37 = v146;
                  OUTLINED_FUNCTION_42();
                }

                while (!v66);
              }

              else
              {
                v23 = (v89 & 0xFFFFFFFFFFFFFF8);
                type metadata accessor for UsoEntity();
                swift_arrayInitWithCopy();
                v40 = v89;
              }

              v249 = 1;
              OUTLINED_FUNCTION_39();
              v33 = 0xED00007465536D6FLL;
              v82 = v253;
              v37 = v267;
              if (!(v120 ^ v121 | v66))
              {
                v149 = *(v241 + 16);
                v135 = (v241 + 16);
                v136 = v149 + v148;
                if (__OFADD__(v149, v148))
                {
                  __break(1u);
                  goto LABEL_307;
                }

                v137 = &a11;
LABEL_153:
                *(v137 - 64) = 1;
                *v135 = v136;
              }
            }
          }
        }
      }
    }

    while (1)
    {
      v83 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        __break(1u);
        goto LABEL_270;
      }

      if (v83 >= v262)
      {
        break;
      }

      v81 = *(v264 + 8 * v83);
      ++v50;
      if (v81)
      {
        v50 = v83;
        goto LABEL_50;
      }
    }

    v154 = v266;
    if (specialized Array._getCount()(v266))
    {
      v50 = v259;
      v33 = v257;
      v30 = v255;
    }

    else
    {

      type metadata accessor for CorrectionsEngine();
      v155 = OUTLINED_FUNCTION_34();
      v30 = v255;
      v33 = v257;
      v154 = static CorrectionsEngine.getCorrectedEntitiesFromSRR(correctionCandidateTaskEntity:attributePath:)(v155, v255, v257);
      v50 = v259;
    }

    if ((v265 & 1) == 0)
    {
      if ((v249 & 1) == 0)
      {

        if (v261)
        {

          OUTLINED_FUNCTION_56();
          v75 = v242;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v173 = *(v37 + 16);
            OUTLINED_FUNCTION_20();
            v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v174, v175, v176, v177);
          }

          v162 = *(v37 + 16);
          v23 = (v162 + 1);
          if (v162 >= *(v37 + 24) >> 1)
          {
            OUTLINED_FUNCTION_20();
            v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v178, v179, v180, v181);
          }

          OUTLINED_FUNCTION_57();
          *(v163 + 48) = v154;
          *(v163 + 56) = 0;
          *(v163 + 64) = 1;
        }

        else
        {

          v75 = v242;
          OUTLINED_FUNCTION_56();
        }

        goto LABEL_214;
      }

LABEL_208:

      goto LABEL_209;
    }

    if (v261)
    {
      goto LABEL_208;
    }

    if ((v249 & 1) == 0)
    {

      OUTLINED_FUNCTION_56();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v164 = *(v37 + 16);
        OUTLINED_FUNCTION_20();
        v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v165, v166, v167, v168);
      }

      v156 = *(v37 + 16);
      v23 = (v156 + 1);
      if (v156 >= *(v37 + 24) >> 1)
      {
        OUTLINED_FUNCTION_20();
        v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v169, v170, v171, v172);
      }

      OUTLINED_FUNCTION_57();
      *(v157 + 48) = v82;
      *(v157 + 56) = 0;
      *(v157 + 64) = 0;
      goto LABEL_213;
    }

LABEL_209:
    OUTLINED_FUNCTION_56();
    v23 = *(v37 + 16);
    if (!swift_isUniquelyReferenced_nonNull_native() || v23 >= *(v37 + 24) >> 1)
    {
      OUTLINED_FUNCTION_20();
      v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v158, v159, v160, v161);
    }

    *&v268 = v30;
    *(&v268 + 1) = v33;
    v269 = v154;
    v270 = v82;
    v271 = 2;
    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 0, 1, &v268);
LABEL_213:
    v75 = v242;
LABEL_214:
    if (v50 != v246)
    {
      goto LABEL_39;
    }

    OUTLINED_FUNCTION_36();
    if (v182)
    {
      v183 = v238 == 0xE600000000000000;
    }

    else
    {
      v183 = 0;
    }

    if (v183)
    {
LABEL_237:
      if (!*(v37 + 16) && (v236 & 1) == 0)
      {
        v184 = v273;
        v185 = v274;
        __swift_project_boxed_opaque_existential_1(v272, v273);
        v186 = OUTLINED_FUNCTION_34();
        v187 = v185;
        v189 = v188;
        if (CorrectionsCustomizing.shouldCheckEntityForCorrections(entity:)(v186, v184, v187))
        {
          if (one-time initialization token for logger != -1)
          {
            OUTLINED_FUNCTION_0_4();
            swift_once();
          }

          v190 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_18_0(v190, static Logger.logger);
          v191 = Logger.logObject.getter();
          v192 = static os_log_type_t.debug.getter();
          if (OUTLINED_FUNCTION_25(v192))
          {
            v193 = OUTLINED_FUNCTION_30();
            OUTLINED_FUNCTION_45(v193);
            _os_log_impl(&dword_266A4D000, v191, v189, "[CorrectionsEngine.checkCorrection] returning underspecified correction type due to UPDATE verb.", v33, 2u);
            OUTLINED_FUNCTION_24();
          }

          type metadata accessor for CorrectionsEngine();
          v194 = OUTLINED_FUNCTION_34();
          v195 = static CorrectionsEngine.getCorrectedEntitiesFromSRR(correctionCandidateTaskEntity:attributePath:)(v194, 0, 0xE000000000000000);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v207 = *(v37 + 16);
            OUTLINED_FUNCTION_20();
            v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v208, v209, v210, v211);
          }

          v196 = *(v37 + 16);
          if (v196 >= *(v37 + 24) >> 1)
          {
            OUTLINED_FUNCTION_20();
            v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v212, v213, v214, v215);
          }

          *(v37 + 16) = v196 + 1;
          v197 = v37 + 40 * v196;
          *(v197 + 32) = 0;
          *(v197 + 40) = 0xE000000000000000;
          *(v197 + 48) = v195;
          *(v197 + 56) = 0;
          *(v197 + 64) = 3;
        }
      }
    }

    else
    {
LABEL_236:
      if (OUTLINED_FUNCTION_70())
      {
        goto LABEL_237;
      }
    }

LABEL_249:
    v23 = *(v37 + 16);
    v198 = *(v237 + 2);
    v33 = v23 + v198;
    if (__OFADD__(v198, v23))
    {
      goto LABEL_299;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v200 = v237;
    if (!isUniquelyReferenced_nonNull_native || (v201 = *(v237 + 3) >> 1, v201 < v33))
    {
      if (v198 <= v33)
      {
        v202 = v23 + v198;
      }

      else
      {
        v202 = v198;
      }

      v200 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v202, 1, v237);
      v201 = *(v200 + 3) >> 1;
    }

    if (!*(v37 + 16))
    {
      v73 = v200;

      if (v23)
      {
        goto LABEL_300;
      }

LABEL_262:
      v23 = (v235 + 1);

      OUTLINED_FUNCTION_34();

      v72 = v235 + 1;
      if (v235 + 1 == v232)
      {
        v70 = v73;

        goto LABEL_274;
      }

      continue;
    }

    break;
  }

  if (v201 - *(v200 + 2) < v23)
  {
LABEL_302:
    __break(1u);
    goto LABEL_303;
  }

  v73 = v200;
  swift_arrayInitWithCopy();

  if (!v23)
  {
    goto LABEL_262;
  }

  v203 = *(v73 + 2);
  v121 = __OFADD__(v203, v23);
  v204 = v23 + v203;
  if (!v121)
  {
    *(v73 + 2) = v204;
    goto LABEL_262;
  }

  __break(1u);
LABEL_305:
  OUTLINED_FUNCTION_0_4();
  swift_once();
LABEL_271:
  v216 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_18_0(v216, static Logger.logger);
  v217 = Logger.logObject.getter();
  v218 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_25(v218))
  {
    v219 = OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_45(v219);
    OUTLINED_FUNCTION_17_0(&dword_266A4D000, v220, v221, "[CorrectionsEngine.checkCorrection] No correction candidates, and the verb is not update.");
    OUTLINED_FUNCTION_24();
  }

  *(v231 + 32) = 0;
  *v231 = 0u;
  *(v231 + 16) = 0u;
LABEL_280:
  __swift_destroy_boxed_opaque_existential_1Tm(v272);
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  (*(v229 + 8))(v228, v230);
  OUTLINED_FUNCTION_19();
}

BOOL specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

char *static CorrectionsEngine.searchTasks(tasks:customizations:)(unint64_t a1, void *a2)
{
  v3 = a1;
  if (a1 >> 62)
  {
    goto LABEL_54;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x26D5E7790](v39))
  {
    v5 = 0;
    v45 = v3 & 0xFFFFFFFFFFFFFF8;
    v46 = v3 & 0xC000000000000001;
    v44 = v3 + 32;
    v52 = MEMORY[0x277D84F90];
    v47 = a2;
    v41 = i;
    v42 = v3;
    while (1)
    {
      if (v46)
      {
        MEMORY[0x26D5E76F0](v5, v3);
      }

      else
      {
        if (v5 >= *(v45 + 16))
        {
          goto LABEL_52;
        }

        v56 = *(v44 + 8 * v5);
      }

      v6 = __OFADD__(v5, 1);
      v7 = v5 + 1;
      if (v6)
      {
        goto LABEL_51;
      }

      v48 = v7;
      v8 = UsoTask.arguments.getter();
      v9 = 0;
      v10 = v8 + 64;
      v11 = 1 << *(v8 + 32);
      v12 = v11 < 64 ? ~(-1 << v11) : -1;
      v13 = v12 & *(v8 + 64);
      v14 = (v11 + 63) >> 6;
LABEL_13:
      if (v13)
      {
        goto LABEL_18;
      }

LABEL_14:
      v15 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      if (v15 < v14)
      {
        break;
      }

      v5 = v48;
      if (v48 == i)
      {
        return v52;
      }
    }

    v13 = *(v10 + 8 * v15);
    ++v9;
    if (!v13)
    {
      goto LABEL_14;
    }

    v9 = v15;
LABEL_18:
    v16 = *(*(v8 + 56) + ((v9 << 9) | (8 * __clz(__rbit64(v13)))));
    if (v16 >> 62)
    {
      v36 = v8;
      if (v16 < 0)
      {
        v37 = v16;
      }

      else
      {
        v37 = v16 & 0xFFFFFFFFFFFFFF8;
      }

      v38 = MEMORY[0x26D5E7790](v37);
      v8 = v36;
      v17 = v38;
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 &= v13 - 1;
    if (!v17)
    {
      goto LABEL_13;
    }

    if (v17 >= 1)
    {
      v43 = v8;
      v53 = v16 & 0xC000000000000001;

      v18 = 0;
      v54 = v17;
      v55 = v16;
      while (1)
      {
        if (v53)
        {
          MEMORY[0x26D5E76F0](v18, v16);
        }

        else
        {
          v19 = *(v16 + 8 * v18 + 32);
        }

        v20 = dispatch thunk of UsoValue.getAsEntity()();
        if (v20)
        {
          v21 = v20;
          v22 = a2[3];
          v23 = a2[4];
          __swift_project_boxed_opaque_existential_1(a2, v22);
          if (CorrectionsCustomizing.shouldCheckEntityForCorrections(entity:)(v21, v22, v23))
          {
            if (UsoTask.verbString.getter() == 0x657461647075 && v24 == 0xE600000000000000)
            {

              v50 = 1;
            }

            else
            {
              v50 = _stringCompareWithSmolCheck(_:_:expecting:)();
            }

            v49 = a2[4];
            __swift_project_boxed_opaque_existential_1(a2, a2[3]);
            v26._countAndFlagsBits = UsoTask.verbString.getter();
            v27 = CorrectionsCustomizing.shouldConsiderVerbAsCorrection(verb:)(v26);

            type metadata accessor for CorrectionsEngine();

            v28 = UsoTask.verbString.getter();
            v51 = static CorrectionsEngine.searchEntityForCorrectedAttributes(usoEntity:isExplicitCorrection:attributePathRoot:)(v21, (v50 | v27) & 1, v28, v29);

            v30 = UsoTask.verbString.getter();
            v32 = v31;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v52 + 2) + 1, 1, v52);
            }

            v34 = *(v52 + 2);
            v33 = *(v52 + 3);
            if (v34 >= v33 >> 1)
            {
              v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v52);
            }

            *(v52 + 2) = v34 + 1;
            v35 = &v52[32 * v34];
            *(v35 + 4) = v21;
            *(v35 + 5) = v30;
            *(v35 + 6) = v32;
            *(v35 + 7) = v51;
            a2 = v47;
            goto LABEL_42;
          }
        }

LABEL_42:
        ++v18;
        v16 = v55;
        if (v54 == v18)
        {

          i = v41;
          v3 = v42;
          v8 = v43;
          goto LABEL_13;
        }
      }
    }

LABEL_53:
    __break(1u);
LABEL_54:
    if (v3 < 0)
    {
      v39 = v3;
    }

    else
    {
      v39 = v3 & 0xFFFFFFFFFFFFFF8;
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1)
{
  v3 = specialized Array._getCount()(a1);
  v4 = specialized Array._getCount()(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  specialized Array._copyContents(initializing:)(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t static CorrectionsEngine.getCorrectedEntitiesFromSRR(correctionCandidateTaskEntity:attributePath:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (one-time initialization token for rrUtils != -1)
  {
LABEL_62:
    swift_once();
  }

  v6 = *(*static CorrectionsEngine.rrUtils + 80);

  a1 = v6(a1);

  v7 = 0;
  v41 = a1 & 0xC000000000000001;
  v42 = specialized Array._getCount()(a1);
  v40 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = MEMORY[0x277D84F90];
  v35 = a1;
  v36 = a2;
  v39 = a1 + 32;
  v37 = a3;
  while (v7 != v42)
  {
    if (v41)
    {
      a1 = MEMORY[0x26D5E76F0](v7, v35);
    }

    else
    {
      if (v7 >= *(v40 + 16))
      {
        goto LABEL_55;
      }

      a1 = *(v39 + 8 * v7);
    }

    v9 = __OFADD__(v7++, 1);
    if (v9)
    {
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    type metadata accessor for CorrectionsEngine();
    v10 = static CorrectionsEngine.searchEntityForPath(entity:path:)(a1, a2, a3);

    a1 = v10 >> 62;
    if (v10 >> 62)
    {
      if (v10 < 0)
      {
        v32 = v10;
      }

      else
      {
        v32 = v10 & 0xFFFFFFFFFFFFFF8;
      }

      v11 = MEMORY[0x26D5E7790](v32);
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = v8 >> 62;
    if (v8 >> 62)
    {
      if (v8 < 0)
      {
        v33 = v8;
      }

      else
      {
        v33 = v8 & 0xFFFFFFFFFFFFFF8;
      }

      v13 = MEMORY[0x26D5E7790](v33);
    }

    else
    {
      v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = v13 + v11;
    if (__OFADD__(v13, v11))
    {
      goto LABEL_56;
    }

    v43 = v11;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v12)
      {
LABEL_20:
        if (v8 < 0)
        {
          v17 = v8;
        }

        else
        {
          v17 = v8 & 0xFFFFFFFFFFFFFF8;
        }

        MEMORY[0x26D5E7790](v17);
      }

      else
      {
        v15 = v8 & 0xFFFFFFFFFFFFFF8;
LABEL_19:
        v16 = *(v15 + 16);
      }

      v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v15 = v44 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_25;
    }

    if (v12)
    {
      goto LABEL_20;
    }

    v15 = v8 & 0xFFFFFFFFFFFFFF8;
    if (v14 > *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_19;
    }

    v44 = v8;
LABEL_25:
    v18 = *(v15 + 16);
    v19 = (*(v15 + 24) >> 1) - v18;
    v20 = v15 + 8 * v18;
    if (a1)
    {
      if (v10 < 0)
      {
        v22 = v10;
      }

      else
      {
        v22 = v10 & 0xFFFFFFFFFFFFFF8;
      }

      v23 = MEMORY[0x26D5E7790](v22);
      if (!v23)
      {
        goto LABEL_42;
      }

      a1 = v23;
      v24 = MEMORY[0x26D5E7790](v22);
      if (v19 < v24)
      {
        goto LABEL_60;
      }

      if (a1 < 1)
      {
        goto LABEL_61;
      }

      v38 = v24;
      v25 = v20 + 32;
      lazy protocol witness table accessor for type [UsoEntity] and conformance [A]();
      v26 = 0;
      do
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology9UsoEntityCGMd, &_sSay12SiriOntology9UsoEntityCGMR);
        v27 = specialized protocol witness for Collection.subscript.read in conformance [A](v45, v26, v10);
        v29 = *v28;

        (v27)(v45, 0);
        *(v25 + 8 * v26++) = v29;
      }

      while (a1 != v26);
      a2 = v36;
      a3 = v37;
      v21 = v38;
LABEL_38:

      v8 = v44;
      if (v21 < v43)
      {
        goto LABEL_57;
      }

      if (v21 > 0)
      {
        v30 = *(v15 + 16);
        v9 = __OFADD__(v30, v21);
        v31 = v30 + v21;
        if (v9)
        {
          goto LABEL_58;
        }

        *(v15 + 16) = v31;
      }
    }

    else
    {
      a1 = v10 & 0xFFFFFFFFFFFFFF8;
      v21 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v21)
      {
        if (v19 < v21)
        {
          goto LABEL_59;
        }

        type metadata accessor for UsoEntity();
        swift_arrayInitWithCopy();
        goto LABEL_38;
      }

LABEL_42:

      v8 = v44;
      if (v43 > 0)
      {
        goto LABEL_57;
      }
    }
  }

  return v8;
}

uint64_t specialized Collection.first.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t specialized Collection.first.getter(uint64_t a1)
{
  v1 = a1;
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

    goto LABEL_3;
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  result = MEMORY[0x26D5E7790](a1);
  if (result)
  {
LABEL_3:
    if ((v1 & 0xC000000000000001) != 0)
    {
      return MEMORY[0x26D5E76F0](0, v1);
    }

    else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v3 = *(v1 + 32);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void specialized Collection.first.getter(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (a3 >> 1 == a2)
  {
    v5 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
    v6 = a4;
    v7 = 1;
  }

  else
  {
    if ((a3 >> 1) <= a2)
    {
      __break(1u);
      return;
    }

    v10 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
    (*(*(v10 - 8) + 16))(a4, a1 + *(*(v10 - 8) + 72) * a2, v10);
    v6 = a4;
    v7 = 0;
    v5 = v10;
  }

  __swift_storeEnumTagSinglePayload(v6, v7, 1, v5);
}

uint64_t specialized Collection.first.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 16))
  {
    v4 = *(result + 32);
    v3 = *(result + 40);
    v5 = *(result + 48);
    v6 = *(result + 56);
    v7 = *(result + 64);

    result = outlined copy of CorrectionType(v5, v6, v7);
  }

  else
  {
    v4 = 0;
    v3 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  return result;
}

uint64_t static CorrectionsEngine.searchEntityForCorrectedAttributes(usoEntity:isExplicitCorrection:attributePathRoot:)(char *a1, int a2, unint64_t a3, unint64_t a4)
{
  v138 = a2;
  v7 = type metadata accessor for Name();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v120 - v13;
  v15 = MEMORY[0x277D84F90];
  v141 = MEMORY[0x277D84F90];
  if (!a1)
  {
    return v15;
  }

  v132 = a3;
  v134 = a4;

  v137 = a1;
  v16 = UsoTask.verbString.getter();
  v18 = v17;
  static Name.primitiveString.getter();
  v19 = Name.value.getter();
  v21 = v20;
  v22 = *(v8 + 8);
  v22(v14, v7);
  if (v16 == v19 && v18 == v21)
  {
    v25 = v134;
LABEL_16:

LABEL_17:
    if ((v138 & 1) == 0)
    {

      return MEMORY[0x277D84F90];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_Say12SiriOntology9UsoEntityCGtGMd, &_ss23_ContiguousArrayStorageCySS_Say12SiriOntology9UsoEntityCGtGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_266A61D60;
    *(inited + 32) = 0x5474636572726F63;
    *(inited + 40) = 0xE90000000000006FLL;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, _ss23_ContiguousArrayStorageCyyXlGMR);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_266A62210;
    *(v36 + 32) = v137;
    *(inited + 48) = v36;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology9UsoEntityCGMd, &_sSay12SiriOntology9UsoEntityCGMR);
    v33 = Dictionary.init(dictionaryLiteral:)();

    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
    v12 = *(v15 + 2);
    v37 = *(v15 + 3);
    v38 = v12 + 1;
    if (v12 < v37 >> 1)
    {
LABEL_19:

      *(v15 + 2) = v38;
      v39 = &v15[24 * v12];
      *(v39 + 4) = v132;
      *(v39 + 5) = v25;
      *(v39 + 6) = v33;
      return v15;
    }

LABEL_126:
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38, 1, v15);
    goto LABEL_19;
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v25 = v134;
  if (v24)
  {
    goto LABEL_17;
  }

  v26 = UsoTask.verbString.getter();
  v28 = v27;
  static Name.primitiveInteger.getter();
  v29 = Name.value.getter();
  v31 = v30;
  v22(v12, v7);
  if (v26 == v29 && v28 == v31)
  {
    goto LABEL_16;
  }

  v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v33)
  {
    goto LABEL_17;
  }

  if (*(UsoEntity.attributes.getter() + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000010, 0x8000000266A62480);
    v33 = v34;

    if (v33)
    {
      v33 = *(UsoEntity.attributes.getter() + 16);

      v138 |= v33 > 1;
    }
  }

  else
  {
  }

  v15 = v137;
  v41 = UsoEntity.attributes.getter();
  v42 = v41;
  v43 = 0;
  v38 = 0;
  v44 = v41 + 64;
  v45 = 1 << *(v41 + 32);
  v46 = -1;
  if (v45 < 64)
  {
    v46 = ~(-1 << v45);
  }

  v47 = v46 & *(v41 + 64);
  v48 = (v45 + 63) >> 6;
  v126 = xmmword_266A62210;
  v123 = v48;
  v122 = v41;
  v121 = v41 + 64;
  if (!v47)
  {
LABEL_26:
    while (1)
    {
      v37 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      if (v37 >= v48)
      {

        return v141;
      }

      v47 = *(v44 + 8 * v37);
      ++v43;
      if (v47)
      {
        v43 = v37;
        goto LABEL_30;
      }
    }

LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

LABEL_30:
  while (1)
  {
    v125 = v43;
    v49 = __clz(__rbit64(v47)) | (v43 << 6);
    v50 = (*(v42 + 48) + 16 * v49);
    v12 = *v50;
    v33 = v50[1];
    v51 = *(*(v42 + 56) + 8 * v49);
    v124 = (v47 - 1) & v47;
    v139 = v12;
    v140 = v33;
    MEMORY[0x28223BE20](v41);
    v15 = (&v120 - 4);
    *(&v120 - 2) = &v139;

    if (!specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v120 - 4), &outlined read-only object #0 of one-time initialization function for attributeDenyList))
    {
      break;
    }

LABEL_120:
    v43 = v125;
    v48 = v123;
    v47 = v124;
    if (!v124)
    {
      goto LABEL_26;
    }
  }

  v139 = v132;
  v140 = v25;

  v15 = &v139;
  MEMORY[0x26D5E75C0](46, 0xE100000000000000);
  MEMORY[0x26D5E75C0](v12, v33);

  v129 = v139;
  v130 = v140;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology9UsoEntityCGMd, &_sSay12SiriOntology9UsoEntityCGMR);
  v133 = Dictionary.init(dictionaryLiteral:)();
  v136 = specialized Array._getCount()(v51);
  if (!v136)
  {
LABEL_112:

    v115 = v133;
    if (*(v133 + 16))
    {
      v33 = v141;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = v134;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v33 + 16) + 1, 1, v33);
      }

      v12 = *(v33 + 16);
      v117 = *(v33 + 24);
      v15 = (v12 + 1);
      if (v12 >= v117 >> 1)
      {
        v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v117 > 1), v12 + 1, 1, v33);
      }

      *(v33 + 16) = v15;
      v118 = (v33 + 24 * v12);
      v119 = v130;
      v118[4] = v129;
      v118[5] = v119;
      v118[6] = v115;

      v141 = v33;
    }

    else
    {

      v25 = v134;
    }

    v42 = v122;
    v44 = v121;
    goto LABEL_120;
  }

  v25 = 0;
  v135 = v51 & 0xC000000000000001;
  v128 = v51 & 0xFFFFFFFFFFFFFF8;
  v131 = v51;
  while (1)
  {
    if (v135)
    {
      v12 = MEMORY[0x26D5E76F0](v25, v51);
    }

    else
    {
      v37 = *(v128 + 16);
      if (v25 >= v37)
      {
        goto LABEL_125;
      }

      v12 = *(v51 + 8 * v25 + 32);
    }

    v52 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      goto LABEL_124;
    }

    v53 = dispatch thunk of UsoValue.getAsExpression()();
    if (v53)
    {
      v33 = v53;
      v54 = UsoExpression.operatorAsString.getter();
      if (v55)
      {
        v56 = v54;
      }

      else
      {
        v56 = 0;
      }

      if (v55)
      {
        v57 = v55;
      }

      else
      {
        v57 = 0xE000000000000000;
      }

      v139 = v56;
      v140 = v57;
      MEMORY[0x28223BE20](v54);
      *(&v120 - 2) = &v139;
      v58 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v120 - 4), &outlined read-only object #0 of one-time initialization function for operatorStrings);

      if (v58)
      {
        v15 = v33;
        v59 = UsoExpression.operatorAsString.getter();
        if (v60)
        {
          v61 = v59;
          v62 = v60;
          v15 = v33;
          v63 = UsoExpression.operandAsValue.getter();
          if (v63)
          {
            v15 = v63;
            v64 = dispatch thunk of UsoValue.getAsEntity()();

            if (v64)
            {
              v65 = v133;
              if (*(v133 + 16) && (v66 = specialized __RawDictionaryStorage.find<A>(_:)(v61, v62), (v67 & 1) != 0))
              {
                v68 = *(*(v65 + 56) + 8 * v66);
              }

              else
              {
                v68 = MEMORY[0x277D84F90];
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, _ss23_ContiguousArrayStorageCyyXlGMR);
              v94 = swift_initStackObject();
              *(v94 + 16) = v126;
              *(v94 + 32) = v64;
              v139 = v68;

              specialized Array.append<A>(contentsOf:)(v94);
              v95 = v139;
              v96 = v133;
              v97 = swift_isUniquelyReferenced_nonNull_native();
              v139 = v96;
              v15 = &v139;
              specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v95, v61, v62, v97);

              v133 = v139;
            }

            else
            {
            }

            goto LABEL_88;
          }
        }

LABEL_88:
        v51 = v131;
        goto LABEL_106;
      }

      type metadata accessor for CorrectionsEngine();
      v75 = dispatch thunk of UsoValue.getAsEntity()();
      v76 = static CorrectionsEngine.searchEntityForCorrectedAttributes(usoEntity:isExplicitCorrection:attributePathRoot:)(v75, 0, v129, v130);

      v15 = &v141;
      specialized Array.append<A>(contentsOf:)(v76);

LABEL_59:

      goto LABEL_106;
    }

    v15 = v12;
    v69 = dispatch thunk of UsoValue.getAsEntity()();
    if (!v69)
    {
      goto LABEL_59;
    }

    v33 = v69;
    if (v138)
    {
      break;
    }

    type metadata accessor for CorrectionsEngine();
    v77 = static CorrectionsEngine.searchEntityForCorrectedAttributes(usoEntity:isExplicitCorrection:attributePathRoot:)(v33, 0, v129, v130);
    v78 = *(v77 + 16);
    v15 = v141;
    v79 = *(v141 + 16);
    v80 = v79 + v78;
    if (__OFADD__(v79, v78))
    {
      goto LABEL_128;
    }

    v81 = v77;
    v82 = swift_isUniquelyReferenced_nonNull_native();
    if (!v82 || (v83 = *(v15 + 3) >> 1, v83 < v80))
    {
      if (v79 <= v80)
      {
        v84 = v79 + v78;
      }

      else
      {
        v84 = v79;
      }

      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v82, v84, 1, v15);
      v83 = *(v15 + 3) >> 1;
    }

    if (*(v81 + 16))
    {
      if (v83 - *(v15 + 2) < v78)
      {
        goto LABEL_132;
      }

      swift_arrayInitWithCopy();

      v51 = v131;
      if (v78)
      {
        v85 = *(v15 + 2);
        v86 = __OFADD__(v85, v78);
        v87 = v85 + v78;
        if (v86)
        {
          goto LABEL_134;
        }

        *(v15 + 2) = v87;
      }
    }

    else
    {

      v51 = v131;
      if (v78)
      {
        goto LABEL_130;
      }
    }

    v141 = v15;
LABEL_106:
    ++v25;
    if (v52 == v136)
    {
      goto LABEL_112;
    }
  }

  v70 = v133;
  v71 = *(v133 + 16);
  v127 = v25 + 1;
  if (v71 && (v72 = specialized __RawDictionaryStorage.find<A>(_:)(0x5474636572726F63, 0xE90000000000006FLL), (v73 & 1) != 0))
  {
    v74 = *(*(v70 + 56) + 8 * v72);
  }

  else
  {
    v74 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, _ss23_ContiguousArrayStorageCyyXlGMR);
  v88 = swift_initStackObject();
  *(v88 + 16) = v126;
  *(v88 + 32) = v33;
  v89 = v74 >> 62;
  if (v74 >> 62)
  {
    if (v74 < 0)
    {
      v114 = v74;
    }

    else
    {
      v114 = v74 & 0xFFFFFFFFFFFFFF8;
    }

    v90 = MEMORY[0x26D5E7790](v114);
  }

  else
  {
    v90 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v91 = v90 + 1;
  if (!__OFADD__(v90, 1))
  {

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v89)
      {
        v92 = v74 & 0xFFFFFFFFFFFFFF8;
        if (v91 <= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_96:
          if (*(v92 + 16) >= *(v92 + 24) >> 1)
          {
            goto LABEL_129;
          }

          type metadata accessor for UsoEntity();
          swift_arrayInitWithCopy();

          ++*(v92 + 16);
          v99 = v133;
          v100 = swift_isUniquelyReferenced_nonNull_native();
          v139 = v99;
          v101 = specialized __RawDictionaryStorage.find<A>(_:)(0x5474636572726F63, 0xE90000000000006FLL);
          v103 = *(v99 + 16);
          v104 = (v102 & 1) == 0;
          v105 = v103 + v104;
          if (__OFADD__(v103, v104))
          {
            goto LABEL_131;
          }

          v106 = v101;
          v107 = v102;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSay12SiriOntology9UsoEntityCGGMd, &_ss17_NativeDictionaryVySSSay12SiriOntology9UsoEntityCGGMR);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v100, v105))
          {
            v108 = specialized __RawDictionaryStorage.find<A>(_:)(0x5474636572726F63, 0xE90000000000006FLL);
            if ((v107 & 1) != (v109 & 1))
            {
              goto LABEL_135;
            }

            v106 = v108;
          }

          v15 = v139;
          v133 = v139;
          if (v107)
          {
            v110 = *(v139 + 56);
            v15 = *(v110 + 8 * v106);
            *(v110 + 8 * v106) = v74;
          }

          else
          {
            *(v139 + 8 * (v106 >> 6) + 64) |= 1 << v106;
            v111 = (*(v15 + 6) + 16 * v106);
            *v111 = 0x5474636572726F63;
            v111[1] = 0xE90000000000006FLL;
            *(*(v15 + 7) + 8 * v106) = v74;

            v112 = *(v15 + 2);
            v86 = __OFADD__(v112, 1);
            v113 = v112 + 1;
            if (v86)
            {
              goto LABEL_133;
            }

            *(v15 + 2) = v113;
          }

          v51 = v131;
          v52 = v127;
          goto LABEL_106;
        }

        goto LABEL_84;
      }
    }

    else if (!v89)
    {
      v92 = v74 & 0xFFFFFFFFFFFFFF8;
LABEL_84:
      v93 = *(v92 + 16);
LABEL_95:
      v74 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v92 = v74 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_96;
    }

    if (v74 < 0)
    {
      v98 = v74;
    }

    else
    {
      v98 = v74 & 0xFFFFFFFFFFFFFF8;
    }

    MEMORY[0x26D5E7790](v98);
    goto LABEL_95;
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t static CorrectionsEngine.searchEntityForPath(entity:path:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v5 = &enum case for CorrectionsParse.uso(_:);
  if (!v4)
  {
    if (one-time initialization token for logger != -1)
    {
      goto LABEL_79;
    }

    goto LABEL_7;
  }

  lazy protocol witness table accessor for type String and conformance String();
  v6 = StringProtocol.components<A>(separatedBy:)();
  v7 = v6;
  if (v6[2])
  {
    v9 = v6[4];
    v8 = v6[5];
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v15 = UsoTask.verbString.getter();
  if (!v8)
  {

    goto LABEL_19;
  }

  if (v9 == v15 && v8 == v16)
  {

    goto LABEL_25;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v18 & 1) == 0)
  {
LABEL_19:

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.logger);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_266A4D000, v20, v21, "[CorrectionsEngine.searchEntityForPath] the entity type does not match the path root type", v22, 2u);
      MEMORY[0x26D5E7CB0](v22, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

LABEL_25:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, _ss23_ContiguousArrayStorageCyyXlGMR);
  result = swift_allocObject();
  v14 = result;
  *(result + 16) = xmmword_266A62210;
  *(result + 32) = a1;
  v24 = v7[2];
  if (v24 == 1)
  {

    return v14;
  }

  if (!v24)
  {
    __break(1u);
    return result;
  }

  v43 = v7 + 4;

  v25 = 1;
  v44 = v24;
  v45 = v7;
  while (1)
  {
    if (v25 >= v24)
    {
      goto LABEL_78;
    }

    v53 = MEMORY[0x277D84F90];
    if (v14 >> 62)
    {
      break;
    }

    v26 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26)
    {
      goto LABEL_31;
    }

LABEL_69:
    a1 = MEMORY[0x277D84F90];
LABEL_70:
    ++v25;

    v14 = a1;
    v24 = v44;
    if (v25 == v44)
    {

      return a1;
    }
  }

  if (v14 < 0)
  {
    v42 = v14;
  }

  else
  {
    v42 = v14 & 0xFFFFFFFFFFFFFF8;
  }

  v26 = MEMORY[0x26D5E7790](v42);
  if (!v26)
  {
    goto LABEL_69;
  }

LABEL_31:
  v5 = 0;
  v52 = v14 & 0xC000000000000001;
  v48 = v14 + 32;
  v49 = v14 & 0xFFFFFFFFFFFFFF8;
  a1 = MEMORY[0x277D84F90];
  v50 = v26;
  v51 = &v43[2 * v25];
  v46 = v14;
  v47 = v25;
  while (1)
  {
    if (v52)
    {
      MEMORY[0x26D5E76F0](v5, v14);
    }

    else
    {
      if (v5 >= *(v49 + 16))
      {
        goto LABEL_76;
      }

      v27 = *(v48 + 8 * v5);
    }

    if (__OFADD__(v5++, 1))
    {
      break;
    }

    v29 = UsoEntity.attributes.getter();
    if (v25 >= v7[2])
    {
      goto LABEL_75;
    }

    v30 = v29;
    if (*(v29 + 16))
    {
      v31 = *v51;
      v32 = v51[1];

      v33 = specialized __RawDictionaryStorage.find<A>(_:)(v31, v32);
      v35 = v34;

      if (v35)
      {
        v36 = *(*(v30 + 56) + 8 * v33);

        if (v36 >> 62)
        {
          if (v36 < 0)
          {
            v41 = v36;
          }

          else
          {
            v41 = v36 & 0xFFFFFFFFFFFFFF8;
          }

          v37 = MEMORY[0x26D5E7790](v41);
          if (!v37)
          {
            goto LABEL_60;
          }

LABEL_42:
          if (v37 < 1)
          {
            goto LABEL_77;
          }

          for (i = 0; i != v37; ++i)
          {
            if ((v36 & 0xC000000000000001) != 0)
            {
              MEMORY[0x26D5E76F0](i, v36);
            }

            else
            {
              v39 = *(v36 + 8 * i + 32);
            }

            if (dispatch thunk of UsoValue.getAsEntity()())
            {

              MEMORY[0x26D5E75F0](v40);
              if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

              a1 = v53;
            }

            else
            {
            }
          }

          v7 = v45;
          v14 = v46;
        }

        else
        {
          v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v37)
          {
            goto LABEL_42;
          }

LABEL_60:
        }

        v25 = v47;
      }

      else
      {
      }

      v26 = v50;
      goto LABEL_63;
    }

LABEL_63:

    if (v5 == v26)
    {
      goto LABEL_70;
    }
  }

  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  swift_once();
LABEL_7:
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.logger);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_266A4D000, v11, v12, "[CorrectionsEngine.searchEntityForPath] No path provided, returning entire entity", v13, 2u);
    MEMORY[0x26D5E7CB0](v13, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, _ss23_ContiguousArrayStorageCyyXlGMR);
  v14 = swift_allocObject();
  *(v14 + 16) = *(v5 + 528);
  *(v14 + 32) = a1;

  return v14;
}

double specialized Dictionary.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    outlined init with copy of Any(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t static CorrectionsEngine.tasks(from:)(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - v8;
  v10 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v15 = *(v31 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v31);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (Siri_Nlu_External_UserDialogAct.hasUserStatedTask.getter())
  {
    Siri_Nlu_External_UserDialogAct.userStatedTask.getter();
    Siri_Nlu_External_UserStatedTask.task.getter();
    (*(v11 + 8))(v14, v10);
    static UsoGraphProtoReader.fromSwiftProtobuf(protobufGraph:vocabManager:)();
    v30 = MEMORY[0x26D5E7330]();

    (*(v15 + 8))(v18, v31);
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.logger);
    v20 = *(v3 + 16);
    v20(v9, a1, v2);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v32 = v24;
      *v23 = 136315138;
      v20(v7, v9, v2);
      v25 = String.init<A>(describing:)();
      v27 = v26;
      (*(v3 + 8))(v9, v2);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v32);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_266A4D000, v21, v22, "[CorrectionsEngine.checkUndo] No UserStatedTask for %s, returning []", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x26D5E7CB0](v24, -1, -1);
      MEMORY[0x26D5E7CB0](v23, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v9, v2);
    }

    return MEMORY[0x277D84F90];
  }

  return v30;
}

uint64_t static CorrectionsEngine.isCrossAlarmTimerDomain(invocation:incomingParse:)(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v30 - v4;
  v6 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = a1[1];
  v14 = *(MEMORY[0x26D5E71D0](v9) + 16);

  if (v14 != 1)
  {
    goto LABEL_21;
  }

  v16 = MEMORY[0x26D5E71D0](v15);
  specialized Collection.first.getter(v16, v5);

  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    outlined destroy of (Siri_Nlu_External_Parser.ParserIdentifier?, Siri_Nlu_External_Parser.ParserIdentifier?)(v5, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
LABEL_21:
    v29 = 0;
    return v29 & 1;
  }

  (*(v7 + 32))(v11, v5, v6);
  type metadata accessor for CorrectionsEngine();
  v17 = static CorrectionsEngine.tasks(from:)(v11);
  result = specialized Array._getCount()(v17);
  if (!result)
  {

    (*(v7 + 8))(v11, v6);
    goto LABEL_21;
  }

  if ((v17 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26D5E76F0](0, v17);
LABEL_8:

    v20 = UsoTask.baseEntityAsString.getter();
    v22 = v21;

    v32 = String.lowercased()();
    v30 = 0x6D72616C61;
    v31 = 0xE500000000000000;
    lazy protocol witness table accessor for type String and conformance String();
    v23 = StringProtocol.contains<A>(_:)();

    if (v23)
    {
      v24 = 0xEC0000006D72616CLL;
      v25 = 0x415F6E6F6D6D6F63;
    }

    else
    {
      v32 = String.lowercased()();
      v30 = 0x72656D6974;
      v31 = 0xE500000000000000;
      v26 = StringProtocol.contains<A>(_:)();

      if ((v26 & 1) == 0)
      {
        (*(v7 + 8))(v11, v6);

        goto LABEL_21;
      }

      v24 = 0xEC00000072656D69;
      v25 = 0x545F6E6F6D6D6F63;
    }

    if (v20 == v25 && v22 == v24)
    {

      v29 = 0;
    }

    else
    {
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v29 = v28 ^ 1;
    }

    (*(v7 + 8))(v11, v6);
    return v29 & 1;
  }

  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v19 = *(v17 + 32);

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t static CorrectionsEngine.getFirstTaskUda(_:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v21 - v4;
  v6 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(MEMORY[0x26D5E71D0](v9) + 16);

  if (v12 < 2)
  {
    goto LABEL_4;
  }

  v14 = MEMORY[0x26D5E71D0](v13);
  specialized Collection.first.getter(v14, v5);

  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    v13 = outlined destroy of (Siri_Nlu_External_Parser.ParserIdentifier?, Siri_Nlu_External_Parser.ParserIdentifier?)(v5, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
LABEL_4:
    v15 = MEMORY[0x26D5E71D0](v13);
    specialized Collection.first.getter(v15, a1);
  }

  (*(v7 + 32))(v11, v5, v6);
  if ((Siri_Nlu_External_UserDialogAct.hasRejected.getter() & 1) == 0 && (Siri_Nlu_External_UserDialogAct.hasCancelled.getter() & 1) == 0 && (Siri_Nlu_External_UserDialogAct.hasWantedToUndo.getter() & 1) == 0)
  {
    v13 = (*(v7 + 8))(v11, v6);
    goto LABEL_4;
  }

  v17 = MEMORY[0x26D5E71D0]();
  specialized Collection.dropFirst(_:)(1, v17);
  specialized Collection.first.getter(v18, v19, v20, a1);
  swift_unknownObjectRelease();
  return (*(v7 + 8))(v11, v6);
}

uint64_t specialized Collection.dropFirst(_:)(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = specialized Array.index(_:offsetBy:limitedBy:)(0, result, v3);
    if (v4)
    {
      result = v3;
    }

    if (v3 >= result)
    {
      v5 = specialized Array.subscript.getter(result, v3, a2);

      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t static CorrectionsEngine.isDeleteAndUpdate(_:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v28 - v2;
  v4 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for inverseDirectInvocation != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = qword_281321728;
  if (!qword_281321728)
  {
    return 0;
  }

  v10 = static CorrectionsEngine.inverseDirectInvocation;
  if (static CorrectionsEngine.inverseDirectInvocation == 0xD000000000000024 && qword_281321728 == 0x8000000266A62710)
  {
    return 0;
  }

  v12 = qword_281321730;
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    return 0;
  }

  type metadata accessor for CorrectionsEngine();
  *&v29 = v10;
  *(&v29 + 1) = v9;
  v30 = v12;

  if (static CorrectionsEngine.isCrossAlarmTimerDomain(invocation:incomingParse:)(&v29))
  {
    v13 = v10;
    v14 = v9;
LABEL_17:
    outlined consume of CorrectionsDirectInvocation?(v13, v14);
    return 0;
  }

  if (!v12)
  {
    v13 = v10;
    v14 = v9;
    goto LABEL_17;
  }

  outlined consume of CorrectionsDirectInvocation?(v10, v9);
  specialized Dictionary.subscript.getter(1651664246, 0xE400000000000000, v12, &v29);

  if (!v31)
  {
    v17 = &_sypSgMd;
    v18 = &_sypSgMR;
    v19 = &v29;
    goto LABEL_20;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v16 = v28[1];
  v15 = v28[2];
  static CorrectionsEngine.getFirstTaskUda(_:)(v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {

    v17 = &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd;
    v18 = &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR;
    v19 = v3;
LABEL_20:
    outlined destroy of (Siri_Nlu_External_Parser.ParserIdentifier?, Siri_Nlu_External_Parser.ParserIdentifier?)(v19, v17, v18);
    return 0;
  }

  (*(v5 + 32))(v8, v3, v4);
  v21 = static CorrectionsEngine.tasks(from:)(v8);
  result = specialized Array._getCount()(v21);
  if (!result)
  {
    (*(v5 + 8))(v8, v4);

    return 0;
  }

  if ((v21 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26D5E76F0](0, v21);
  }

  else
  {
    if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v22 = *(v21 + 32);
  }

  if (v16 == 0x6574656C6564 && v15 == 0xE600000000000000)
  {
  }

  else
  {
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v24 & 1) == 0)
    {
      (*(v5 + 8))(v8, v4);

      return 0;
    }
  }

  if (UsoTask.verbString.getter() == 0x657461647075 && v25 == 0xE600000000000000)
  {

    (*(v5 + 8))(v8, v4);
  }

  else
  {
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*(v5 + 8))(v8, v4);
    if ((v27 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

Swift::Void __swiftcall CorrectionsEngine.setUndoInvocation(directInvocation:context:)(SiriCorrections::CorrectionsDirectInvocation directInvocation, SiriCorrections::CorrectionsContext_optional *context)
{
  OUTLINED_FUNCTION_66();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_0(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v39 - v8;
  v10 = type metadata accessor for OSSignpostID();
  v11 = OUTLINED_FUNCTION_6(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_8_1();
  v18 = v17 - v16;
  v19 = v3[1];
  v40 = *v3;
  v20 = v3[2];
  OUTLINED_FUNCTION_59();
  if (one-time initialization token for log != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  static Logger.log;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_67();
  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_0_4();
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_18_0(v21, static Logger.logger);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_32(v23))
  {
    v24 = OUTLINED_FUNCTION_30();
    v39 = v9;
    *v24 = 0;
    _os_log_impl(&dword_266A4D000, v22, v23, "[CorrectionsEngine.setUndoInvocation] storing an undo direct invocation.", v24, 2u);
    v9 = v39;
    OUTLINED_FUNCTION_5_2();
  }

  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v25 = static CorrectionsSELFHelper.shared;
  v41[0] = v40;
  v41[1] = v19;
  v41[2] = v20;
  v42 = v46;
  v43 = v47;
  v44 = v48;
  v45 = v49;
  (*(*static CorrectionsSELFHelper.shared + 152))(v41, &v42);
  if (one-time initialization token for parseStoredTime != -1)
  {
    OUTLINED_FUNCTION_10_0();
  }

  OUTLINED_FUNCTION_18_0(v4, static CorrectionsEngine.parseStoredTime);
  static Date.now.getter();
  type metadata accessor for Date();
  OUTLINED_FUNCTION_35();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  swift_beginAccess();
  outlined assign with take of Date?(v9, v25);
  swift_endAccess();
  if (one-time initialization token for inverseDirectInvocation != -1)
  {
    OUTLINED_FUNCTION_3_3();
  }

  OUTLINED_FUNCTION_71();
  v30 = static CorrectionsEngine.inverseDirectInvocation;
  v31 = qword_281321728;
  static CorrectionsEngine.inverseDirectInvocation = v40;
  qword_281321728 = v19;
  qword_281321730 = v20;

  outlined consume of CorrectionsDirectInvocation?(v30, v31);
  if (one-time initialization token for context != -1)
  {
    OUTLINED_FUNCTION_4_3();
  }

  v32 = static CorrectionsEngine.context;
  OUTLINED_FUNCTION_71();
  v33 = *v32;
  v34 = v32[1];
  v35 = v32[3];
  v44 = v32[2];
  v45 = v35;
  v42 = v33;
  v43 = v34;
  v36 = v46;
  v37 = v47;
  v38 = v49;
  v32[2] = v48;
  v32[3] = v38;
  *v32 = v36;
  v32[1] = v37;
  outlined init with copy of CorrectionsContext?(&v46, v41, &_s15SiriCorrections0B7ContextVSgMd, &_s15SiriCorrections0B7ContextVSgMR);
  outlined destroy of (Siri_Nlu_External_Parser.ParserIdentifier?, Siri_Nlu_External_Parser.ParserIdentifier?)(&v42, &_s15SiriCorrections0B7ContextVSgMd, &_s15SiriCorrections0B7ContextVSgMR);
  static os_signpost_type_t.end.getter();
  OUTLINED_FUNCTION_67();
  (*(v13 + 8))(v18, v10);
  OUTLINED_FUNCTION_19();
}

void CorrectionsEngine.checkUndo(input:context:correctionsOutcome:)()
{
  OUTLINED_FUNCTION_66();
  v406 = v0;
  v398 = v1;
  v403 = v2;
  v390 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_0(v390);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v5);
  v404 = &v370[-v6];
  OUTLINED_FUNCTION_23();
  v396 = type metadata accessor for Date();
  v7 = OUTLINED_FUNCTION_6(v396);
  v391 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_2();
  v394 = v11;
  OUTLINED_FUNCTION_23();
  v405 = type metadata accessor for Siri_Nlu_External_UserParse();
  v12 = OUTLINED_FUNCTION_6(v405);
  v376 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7_2();
  v375 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v18 = OUTLINED_FUNCTION_48(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_13();
  v373 = v21;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_16();
  v384 = v23;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_16();
  v383 = v25;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v26);
  v381 = &v370[-v27];
  OUTLINED_FUNCTION_23();
  v399 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v28 = OUTLINED_FUNCTION_6(v399);
  v386 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_13();
  v372 = v32;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_16();
  v374 = v34;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_16();
  v382 = v36;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_16();
  v388 = v38;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v39);
  v385 = &v370[-v40];
  OUTLINED_FUNCTION_23();
  v41 = type metadata accessor for Siri_Nlu_External_CorrectionOutcome();
  v42 = OUTLINED_FUNCTION_6(v41);
  v392 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_7_2();
  v380 = v46;
  v47 = OUTLINED_FUNCTION_23();
  v48 = type metadata accessor for CorrectionsUSOParse(v47);
  v49 = OUTLINED_FUNCTION_48(v48);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_7_2();
  v393 = v52;
  v53 = OUTLINED_FUNCTION_23();
  v397 = type metadata accessor for CorrectionsParse(v53);
  v54 = OUTLINED_FUNCTION_0(v397);
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_7_2();
  v407 = v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  OUTLINED_FUNCTION_48(v58);
  v60 = *(v59 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v61);
  v410 = &v370[-v62];
  OUTLINED_FUNCTION_23();
  v63 = type metadata accessor for Siri_Nlu_External_CorrectionOutcome.CorrectionType();
  v64 = OUTLINED_FUNCTION_6(v63);
  v408 = v65;
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_13();
  v379 = v68;
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v69);
  v389 = &v370[-v70];
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A31_Nlu_External_CorrectionOutcomeV0E4TypeOSg_AFtMd, &_s12SiriNLUTypes0A31_Nlu_External_CorrectionOutcomeV0E4TypeOSg_AFtMR);
  OUTLINED_FUNCTION_0(v71);
  v73 = *(v72 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v74);
  v76 = &v370[-v75];
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A31_Nlu_External_CorrectionOutcomeVSgMd, &_s12SiriNLUTypes0A31_Nlu_External_CorrectionOutcomeVSgMR);
  OUTLINED_FUNCTION_48(v77);
  v79 = *(v78 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v80);
  v82 = &v370[-v81];
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A31_Nlu_External_CorrectionOutcomeV0E4TypeOSgMd, &_s12SiriNLUTypes0A31_Nlu_External_CorrectionOutcomeV0E4TypeOSgMR);
  v84 = OUTLINED_FUNCTION_48(v83);
  v86 = *(v85 + 64);
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_13();
  v395 = v87;
  OUTLINED_FUNCTION_7_1();
  v89 = MEMORY[0x28223BE20](v88);
  v91 = &v370[-v90];
  MEMORY[0x28223BE20](v89);
  v93 = &v370[-v92];
  v94 = type metadata accessor for OSSignpostID();
  v95 = OUTLINED_FUNCTION_6(v94);
  v401 = v96;
  v402 = v95;
  v98 = *(v97 + 64);
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_8_1();
  v101 = v100 - v99;
  OUTLINED_FUNCTION_59();
  if (one-time initialization token for log != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v102 = static Logger.log;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  v400 = v102;
  os_signpost(_:dso:log:name:signpostID:)();
  outlined init with copy of CorrectionsContext?(v406, v82, &_s12SiriNLUTypes0A31_Nlu_External_CorrectionOutcomeVSgMd, &_s12SiriNLUTypes0A31_Nlu_External_CorrectionOutcomeVSgMR);
  OUTLINED_FUNCTION_16_0(v82);
  v409 = v101;
  v387 = v41;
  if (v126)
  {
    outlined destroy of (Siri_Nlu_External_Parser.ParserIdentifier?, Siri_Nlu_External_Parser.ParserIdentifier?)(v82, &_s12SiriNLUTypes0A31_Nlu_External_CorrectionOutcomeVSgMd, &_s12SiriNLUTypes0A31_Nlu_External_CorrectionOutcomeVSgMR);
  }

  else
  {
    Siri_Nlu_External_CorrectionOutcome.type.getter();
    (*(v392 + 8))(v82, v41);
  }

  OUTLINED_FUNCTION_20();
  __swift_storeEnumTagSinglePayload(v103, v104, v105, v106);
  v107 = *(v408 + 104);
  v378 = *MEMORY[0x277D5DCE8];
  v377 = v107;
  v107(v91);
  OUTLINED_FUNCTION_20();
  __swift_storeEnumTagSinglePayload(v108, v109, v110, v111);
  v112 = *(v71 + 48);
  v113 = &_s12SiriNLUTypes0A31_Nlu_External_CorrectionOutcomeV0E4TypeOSgMd;
  v114 = &_s12SiriNLUTypes0A31_Nlu_External_CorrectionOutcomeV0E4TypeOSgMR;
  OUTLINED_FUNCTION_29();
  outlined init with copy of CorrectionsContext?(v115, v116, v117, v118);
  OUTLINED_FUNCTION_29();
  outlined init with copy of CorrectionsContext?(v119, v120, v121, v122);
  OUTLINED_FUNCTION_68(v76);
  v123 = v407;
  if (v126)
  {
    OUTLINED_FUNCTION_54(v91);
    OUTLINED_FUNCTION_54(v93);
    OUTLINED_FUNCTION_68(&v76[v112]);
    if (v126)
    {
      outlined destroy of (Siri_Nlu_External_Parser.ParserIdentifier?, Siri_Nlu_External_Parser.ParserIdentifier?)(v76, &_s12SiriNLUTypes0A31_Nlu_External_CorrectionOutcomeV0E4TypeOSgMd, &_s12SiriNLUTypes0A31_Nlu_External_CorrectionOutcomeV0E4TypeOSgMR);
      v124 = v399;
LABEL_16:
      LODWORD(v113) = 0;
      LODWORD(v395) = 8;
      LOBYTE(v114) = 1;
      goto LABEL_18;
    }

LABEL_14:
    outlined destroy of (Siri_Nlu_External_Parser.ParserIdentifier?, Siri_Nlu_External_Parser.ParserIdentifier?)(v76, &_s12SiriNLUTypes0A31_Nlu_External_CorrectionOutcomeV0E4TypeOSg_AFtMd, &_s12SiriNLUTypes0A31_Nlu_External_CorrectionOutcomeV0E4TypeOSg_AFtMR);
    OUTLINED_FUNCTION_61();
    v124 = v399;
    goto LABEL_18;
  }

  v125 = v395;
  outlined init with copy of CorrectionsContext?(v76, v395, &_s12SiriNLUTypes0A31_Nlu_External_CorrectionOutcomeV0E4TypeOSgMd, &_s12SiriNLUTypes0A31_Nlu_External_CorrectionOutcomeV0E4TypeOSgMR);
  OUTLINED_FUNCTION_68(&v76[v112]);
  if (v126)
  {
    v127 = v125;
    v113 = &_s12SiriNLUTypes0A31_Nlu_External_CorrectionOutcomeV0E4TypeOSgMd;
    OUTLINED_FUNCTION_54(v91);
    OUTLINED_FUNCTION_54(v93);
    (*(v408 + 8))(v127, v63);
    goto LABEL_14;
  }

  v128 = v408;
  v129 = &v76[v112];
  v130 = v389;
  (*(v408 + 32))(v389, v129, v63);
  lazy protocol witness table accessor for type Siri_Nlu_External_CorrectionOutcome.CorrectionType and conformance Siri_Nlu_External_CorrectionOutcome.CorrectionType(&lazy protocol witness table cache variable for type Siri_Nlu_External_CorrectionOutcome.CorrectionType and conformance Siri_Nlu_External_CorrectionOutcome.CorrectionType);
  v371 = dispatch thunk of static Equatable.== infix(_:_:)();
  LODWORD(v113) = v128 + 8;
  v131 = *(v128 + 8);
  v131(v130, v63);
  v114 = &_s12SiriNLUTypes0A31_Nlu_External_CorrectionOutcomeV0E4TypeOSgMd;
  OUTLINED_FUNCTION_51();
  outlined destroy of (Siri_Nlu_External_Parser.ParserIdentifier?, Siri_Nlu_External_Parser.ParserIdentifier?)(v132, v133, v134);
  OUTLINED_FUNCTION_51();
  outlined destroy of (Siri_Nlu_External_Parser.ParserIdentifier?, Siri_Nlu_External_Parser.ParserIdentifier?)(v135, v136, v137);
  v131(v395, v63);
  v123 = v407;
  OUTLINED_FUNCTION_51();
  outlined destroy of (Siri_Nlu_External_Parser.ParserIdentifier?, Siri_Nlu_External_Parser.ParserIdentifier?)(v138, v139, v140);
  v124 = v399;
  if (v371)
  {
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_61();
LABEL_18:
  OUTLINED_FUNCTION_55();
  __swift_storeEnumTagSinglePayload(v141, v142, v143, v144);
  outlined init with copy of CorrectionsParse(v398, v123);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v146 = 0x281321000uLL;
  if (!EnumCaseMultiPayload)
  {
    outlined init with take of CorrectionsUSOParse(v123, v393);
    v152 = v387;
    if (__swift_getEnumTagSinglePayload(v406, 1, v387) == 1)
    {
      v153 = v380;
      Siri_Nlu_External_UserParse.correctionOutcome.getter();
      v154 = v389;
      Siri_Nlu_External_CorrectionOutcome.type.getter();
      (*(v392 + 8))(v153, v152);
      v155 = v379;
      v377(v379, v378, v63);
      lazy protocol witness table accessor for type Siri_Nlu_External_CorrectionOutcome.CorrectionType and conformance Siri_Nlu_External_CorrectionOutcome.CorrectionType(&lazy protocol witness table cache variable for type Siri_Nlu_External_CorrectionOutcome.CorrectionType and conformance Siri_Nlu_External_CorrectionOutcome.CorrectionType);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v156 = *(v408 + 8);
      v156(v155, v63);
      v157 = v154;
      v146 = 0x281321000;
      v156(v157, v63);
      if (v425 == v440)
      {
LABEL_26:
        v158 = 1;
        v150 = v404;
        v159 = v393;
        goto LABEL_37;
      }
    }

    else if (!v113)
    {
      goto LABEL_26;
    }

    v159 = v393;
    v168 = MEMORY[0x26D5E71D0]();
    v169 = v381;
    specialized Collection.first.getter(v168, v381);

    OUTLINED_FUNCTION_16_0(v169);
    v150 = v404;
    if (!v126)
    {
      v195 = v386;
      OUTLINED_FUNCTION_60();
      OUTLINED_FUNCTION_51();
      v196();
      OUTLINED_FUNCTION_58();
      if (!v197)
      {
        OUTLINED_FUNCTION_0_4();
        swift_once();
      }

      v198 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_18_0(v198, static Logger.logger);
      v199 = Logger.logObject.getter();
      v200 = static os_log_type_t.debug.getter();
      v201 = OUTLINED_FUNCTION_14_0(v200);
      v174 = v388;
      if (v201)
      {
        v202 = OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_22(v202);
        OUTLINED_FUNCTION_12_0(&dword_266A4D000, v203, v204, "[CorrectionsEngine.checkUndo] Corrections signal not detected, falling back to using user dialog acts.");
        OUTLINED_FUNCTION_2();
      }

      v205 = v385;
      if (Siri_Nlu_External_UserDialogAct.hasRejected.getter())
      {
        v206 = 1;
      }

      else
      {
        if ((Siri_Nlu_External_UserDialogAct.hasCancelled.getter() & 1) == 0)
        {
          v338 = Siri_Nlu_External_UserDialogAct.hasWantedToUndo.getter();
          (*(v195 + 8))(v205, v124);
          if (v338)
          {
LABEL_42:
            LODWORD(v408) = 8;
            v195 = v386;
            goto LABEL_67;
          }

LABEL_146:
          OUTLINED_FUNCTION_1_2();
          outlined destroy of CorrectionsParse(v159, v339);
          goto LABEL_147;
        }

        v206 = 2;
      }

      LODWORD(v408) = v206;
      (*(v195 + 8))(v205, v124);
LABEL_67:
      if (one-time initialization token for logger != -1)
      {
        OUTLINED_FUNCTION_0_4();
        swift_once();
      }

      v208 = type metadata accessor for Logger();
      __swift_project_value_buffer(v208, static Logger.logger);
      v209 = Logger.logObject.getter();
      v210 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_32(v210))
      {
        *OUTLINED_FUNCTION_30() = 0;
        OUTLINED_FUNCTION_64(&dword_266A4D000, v211, v212, "[CorrectionsEngine.checkUndo] undo request detected in uso");
        v195 = v386;
        OUTLINED_FUNCTION_5_2();
      }

      v213 = MEMORY[0x26D5E71D0]();
      v214 = v383;
      specialized Collection.first.getter(v213, v383);

      OUTLINED_FUNCTION_16_0(v214);
      if (v126)
      {
        v215 = outlined destroy of (Siri_Nlu_External_Parser.ParserIdentifier?, Siri_Nlu_External_Parser.ParserIdentifier?)(v214, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
        v216 = v384;
      }

      else
      {
        OUTLINED_FUNCTION_60();
        v217(v174, v214, v124);
        v218 = Siri_Nlu_External_UserDialogAct.hasRejected.getter();
        v216 = v384;
        if (v218 & 1) != 0 || (Siri_Nlu_External_UserDialogAct.hasCancelled.getter() & 1) != 0 || (Siri_Nlu_External_UserDialogAct.hasWantedToUndo.getter())
        {
          v219 = *(MEMORY[0x26D5E71D0]() + 16);

          if (v219 == 1)
          {
            v161 = Logger.logObject.getter();
            v220 = static os_log_type_t.debug.getter();
            if (OUTLINED_FUNCTION_14_0(v220))
            {
              v221 = OUTLINED_FUNCTION_30();
              OUTLINED_FUNCTION_22(v221);
              OUTLINED_FUNCTION_12_0(&dword_266A4D000, v222, v223, "[CorrectionsEngine.checkUndo] undo action parseExludingUndoUserDialogActs won't be set");
              OUTLINED_FUNCTION_2();

              v224 = OUTLINED_FUNCTION_37();
              v225(v224);
              OUTLINED_FUNCTION_1_2();
              outlined destroy of CorrectionsParse(v159, v226);
              v167 = 1;
              LODWORD(v395) = v408;
              v166 = 2;
              goto LABEL_107;
            }

            v259 = OUTLINED_FUNCTION_37();
            v260(v259);
            OUTLINED_FUNCTION_1_2();
            outlined destroy of CorrectionsParse(v159, v261);
            v166 = 2;
            v167 = 1;
            goto LABEL_106;
          }
        }

        v215 = (*(v195 + 8))(v174, v124);
      }

      v227 = MEMORY[0x26D5E71D0](v215);
      specialized Collection.first.getter(v227, v216);

      OUTLINED_FUNCTION_16_0(v216);
      v228 = v382;
      if (v126)
      {
        outlined destroy of (Siri_Nlu_External_Parser.ParserIdentifier?, Siri_Nlu_External_Parser.ParserIdentifier?)(v216, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
      }

      else
      {
        OUTLINED_FUNCTION_60();
        v239(v228, v216, v124);
        v240 = Siri_Nlu_External_UserDialogAct.hasRejected.getter();
        if (v240 & 1) != 0 || (Siri_Nlu_External_UserDialogAct.hasCancelled.getter() & 1) != 0 || (Siri_Nlu_External_UserDialogAct.hasWantedToUndo.getter())
        {
          type metadata accessor for CorrectionsEngine();
          if (static CorrectionsEngine.isDeleteAndUpdate(_:)())
          {
            (*(v195 + 8))(v228, v124);
            v241 = v410;
            outlined destroy of (Siri_Nlu_External_Parser.ParserIdentifier?, Siri_Nlu_External_Parser.ParserIdentifier?)(v410, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
            v242 = v405;
            (*(v376 + 16))(v241, v159, v405);
            OUTLINED_FUNCTION_1_2();
            outlined destroy of CorrectionsParse(v159, v243);
            OUTLINED_FUNCTION_35();
            __swift_storeEnumTagSinglePayload(v244, v245, v246, v242);
LABEL_147:
            v207 = 7;
            goto LABEL_148;
          }

          v247 = v124;
          v248 = v159;
          v249 = v375;
          v250 = v376;
          v251 = v405;
          (*(v376 + 16))(v375, v248, v405);
          v252 = Siri_Nlu_External_UserParse.userDialogActs.modify();
          v253 = v374;
          specialized RangeReplaceableCollection.removeFirst()(v374);
          v254 = *(v195 + 8);
          v254(v253, v247);
          v252(&v425, 0);
          v254(v382, v247);
          OUTLINED_FUNCTION_1_2();
          outlined destroy of CorrectionsParse(v393, v255);
          v161 = v410;
          outlined destroy of (Siri_Nlu_External_Parser.ParserIdentifier?, Siri_Nlu_External_Parser.ParserIdentifier?)(v410, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
          (*(v250 + 32))(v161, v249, v251);
          OUTLINED_FUNCTION_35();
          v146 = 0x281321000;
          __swift_storeEnumTagSinglePayload(v256, v257, v258, v251);
LABEL_104:
          v167 = 0;
          v166 = 3;
LABEL_106:
          LODWORD(v395) = v408;
          goto LABEL_107;
        }

        (*(v195 + 8))(v228, v124);
      }

      if (*(v146 + 936) != -1)
      {
        OUTLINED_FUNCTION_3_3();
      }

      OUTLINED_FUNCTION_41();
      v161 = qword_281321728;
      if (!qword_281321728)
      {
        goto LABEL_94;
      }

      v229 = static CorrectionsEngine.inverseDirectInvocation;
      v230 = static CorrectionsEngine.inverseDirectInvocation == 0xD000000000000024 && qword_281321728 == 0x8000000266A62710;
      if (v230 || (v231 = qword_281321730, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) || (type metadata accessor for CorrectionsEngine(), *&v425 = v229, *(&v425 + 1) = v161, *&v426 = v231, (static CorrectionsEngine.isCrossAlarmTimerDomain(invocation:incomingParse:)(&v425) & 1) != 0))
      {
        v161 = 0;
LABEL_94:
        v232 = 0;
LABEL_95:
        v233 = v410;
        outlined destroy of (Siri_Nlu_External_Parser.ParserIdentifier?, Siri_Nlu_External_Parser.ParserIdentifier?)(v410, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
        v234 = v405;
        (*(v376 + 16))(v233, v159, v405);
        OUTLINED_FUNCTION_1_2();
        outlined destroy of CorrectionsParse(v159, v235);
        OUTLINED_FUNCTION_35();
        __swift_storeEnumTagSinglePayload(v236, v237, v238, v234);
        v207 = 7;
        if (v232 || (v161 & 1) != 0)
        {
          goto LABEL_148;
        }

        goto LABEL_104;
      }

      v358 = *(MEMORY[0x26D5E71D0]() + 16);

      if (v358 == 1)
      {
        v360 = MEMORY[0x26D5E71D0](v359);
        v361 = v373;
        specialized Collection.first.getter(v360, v373);

        OUTLINED_FUNCTION_16_0(v361);
        if (v126)
        {
          outlined destroy of (Siri_Nlu_External_Parser.ParserIdentifier?, Siri_Nlu_External_Parser.ParserIdentifier?)(v361, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
        }

        else
        {
          v362 = v386;
          OUTLINED_FUNCTION_60();
          v363 = v372;
          OUTLINED_FUNCTION_51();
          v364();
          v365 = static CorrectionsEngine.tasks(from:)(v363);
          v366 = specialized Collection.first.getter(v365);

          if (v366)
          {
            *&v425 = UsoTask.verbString.getter();
            *(&v425 + 1) = v367;
            MEMORY[0x28223BE20](v425);
            *&v370[-16] = &v425;
            v232 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), &v370[-32], &outlined read-only object #0 of one-time initialization function for deleteVerbStrings);

            v150 = v404;
            (*(v362 + 8))(v363, v124);
            v146 = 0x281321000;

LABEL_177:
            v161 = static CorrectionsEngine.isDeleteAndUpdate(_:)();
            goto LABEL_95;
          }

          v368 = OUTLINED_FUNCTION_37();
          v369(v368);
        }
      }

      v232 = 0;
      goto LABEL_177;
    }

    outlined destroy of (Siri_Nlu_External_Parser.ParserIdentifier?, Siri_Nlu_External_Parser.ParserIdentifier?)(v169, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    v158 = 0;
LABEL_37:
    OUTLINED_FUNCTION_58();
    if (!v126)
    {
      OUTLINED_FUNCTION_0_4();
      swift_once();
    }

    v170 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_18_0(v170, static Logger.logger);
    v171 = Logger.logObject.getter();
    v172 = static os_log_type_t.debug.getter();
    v173 = OUTLINED_FUNCTION_14_0(v172);
    v174 = v388;
    if (v173)
    {
      v175 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_22(v175);
      OUTLINED_FUNCTION_12_0(&dword_266A4D000, v176, v177, "[CorrectionsEngine.checkUndo] Corrections signal detected");
      OUTLINED_FUNCTION_2();
    }

    if (v158)
    {
      goto LABEL_42;
    }

    goto LABEL_146;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v147 = *v123;
    objc_opt_self();
    v148 = swift_dynamicCastObjCClass();
    objc_opt_self();
    v149 = swift_dynamicCastObjCClass();
    v150 = v404;
    if (v149)
    {
      if (v148)
      {
        v151 = 1;
      }

      else
      {
        v151 = 2;
      }

      goto LABEL_52;
    }

    if (v148)
    {
      v151 = 1;
LABEL_52:
      LODWORD(v395) = v151;
      OUTLINED_FUNCTION_58();
      if (!v126)
      {
        OUTLINED_FUNCTION_0_4();
        swift_once();
      }

      v192 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_18_0(v192, static Logger.logger);
      v161 = Logger.logObject.getter();
      v193 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_32(v193))
      {
        v194 = OUTLINED_FUNCTION_30();
        *v194 = 0;
        _os_log_impl(&dword_266A4D000, v161, v193, "[CorrectionsEngine.checkUndo] undo request detected in NLv4", v194, 2u);
        OUTLINED_FUNCTION_5_2();
      }

      swift_unknownObjectRelease();
      v167 = 1;
      v146 = 0x281321000uLL;
      v166 = 2;
      goto LABEL_107;
    }

    swift_unknownObjectRelease();
    v207 = v395;
LABEL_148:
    if (one-time initialization token for logger != -1)
    {
      OUTLINED_FUNCTION_0_4();
      swift_once();
    }

    v340 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_18_0(v340, static Logger.logger);
    v341 = Logger.logObject.getter();
    v342 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_14_0(v342))
    {
      v343 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_22(v343);
      OUTLINED_FUNCTION_12_0(&dword_266A4D000, v344, v345, "[CorrectionsEngine.checkUndo] undo was not requested");
      OUTLINED_FUNCTION_2();
    }

    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_3();
    }

    OUTLINED_FUNCTION_6_2();
    v347 = *(v346 + 144);
    v291 = OUTLINED_FUNCTION_47();
    v293 = v207;
    goto LABEL_155;
  }

  v150 = v404;
  if (v114)
  {
    if (one-time initialization token for logger != -1)
    {
      OUTLINED_FUNCTION_0_4();
      swift_once();
    }

    v160 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_18_0(v160, static Logger.logger);
    v161 = Logger.logObject.getter();
    v162 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_14_0(v162))
    {
      v163 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_22(v163);
      OUTLINED_FUNCTION_12_0(&dword_266A4D000, v164, v165, "[CorrectionsEngine.checkUndo] this is not nlv4 or uso parse, but correction signal is present");
      OUTLINED_FUNCTION_5_2();
    }

    OUTLINED_FUNCTION_19_0();
    v166 = 2;
    v167 = 1;
LABEL_107:
    if (one-time initialization token for parseStoredTime != -1)
    {
      OUTLINED_FUNCTION_10_0();
    }

    OUTLINED_FUNCTION_18_0(v390, static CorrectionsEngine.parseStoredTime);
    OUTLINED_FUNCTION_41();
    outlined init with copy of CorrectionsContext?(v161, v150, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v262 = v396;
    if (__swift_getEnumTagSinglePayload(v150, 1, v396) == 1)
    {
      outlined destroy of (Siri_Nlu_External_Parser.ParserIdentifier?, Siri_Nlu_External_Parser.ParserIdentifier?)(v150, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
LABEL_127:
      OUTLINED_FUNCTION_58();
      if (!v126)
      {
        OUTLINED_FUNCTION_0_4();
        swift_once();
      }

      v283 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_18_0(v283, static Logger.logger);
      v284 = Logger.logObject.getter();
      v285 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_14_0(v285))
      {
        v286 = OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_22(v286);
        OUTLINED_FUNCTION_12_0(&dword_266A4D000, v287, v288, "[CorrectionsEngine.checkUndo] nothing to undo.");
        OUTLINED_FUNCTION_2();
      }

      if (one-time initialization token for shared != -1)
      {
        OUTLINED_FUNCTION_3();
      }

      OUTLINED_FUNCTION_6_2();
      v290 = *(v289 + 144);
      v291 = OUTLINED_FUNCTION_47();
      v293 = 3;
LABEL_155:
      v292(v291, v293);
LABEL_156:
      outlined destroy of (Siri_Nlu_External_Parser.ParserIdentifier?, Siri_Nlu_External_Parser.ParserIdentifier?)(v410, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
      type metadata accessor for UndoAction();
      OUTLINED_FUNCTION_55();
LABEL_157:
      __swift_storeEnumTagSinglePayload(v304, v305, v306, v307);
      goto LABEL_158;
    }

    (*(v391 + 32))(v394, v150, v262);
    if (*(v146 + 936) != -1)
    {
      OUTLINED_FUNCTION_3_3();
    }

    OUTLINED_FUNCTION_41();
    v263 = qword_281321728;
    if (!qword_281321728)
    {
      v281 = OUTLINED_FUNCTION_40();
      v282(v281, v262);
      goto LABEL_127;
    }

    v264 = static CorrectionsEngine.inverseDirectInvocation;
    v265 = qword_281321730;
    v266 = one-time initialization token for context;

    if (v266 != -1)
    {
      OUTLINED_FUNCTION_4_3();
    }

    v267 = static CorrectionsEngine.context;
    OUTLINED_FUNCTION_27();
    if (*(v267 + 8) == 1)
    {
      goto LABEL_118;
    }

    v268 = *(&v444 + 1);
    if (*(&v444 + 1) == 1)
    {
      goto LABEL_118;
    }

    v407 = v166;
    v408 = v264;
    v308 = *v267;
    v309 = *(v267 + 16);
    v310 = *(v267 + 48);
    v442 = *(v267 + 32);
    v443 = v310;
    v440 = v308;
    v441 = v309;
    v311 = *(&v308 + 1);
    v312 = *(v267 + 32);
    v437 = *(v267 + 16);
    v438 = v312;
    v439 = *(v267 + 48);
    v313 = v444;
    v434 = v445;
    v435 = v446;
    v436 = v447;
    if (*(&v308 + 1) == 1)
    {
      OUTLINED_FUNCTION_29();
      v315 = v314;
      outlined init with copy of CorrectionsContext?(v316, v317, v318, v319);
      OUTLINED_FUNCTION_29();
      outlined init with copy of CorrectionsContext?(v320, v321, v322, v323);
      outlined consume of CorrectionsDirectInvocation?(v408, v263);
      *&v425 = v315;
      *(&v425 + 1) = 1;
      v426 = v437;
      v427 = v438;
      v428 = v439;
      v429 = v313;
      v430 = v268;
      v431 = v434;
      v432 = v435;
      v433 = v436;
      outlined destroy of (Siri_Nlu_External_Parser.ParserIdentifier?, Siri_Nlu_External_Parser.ParserIdentifier?)(&v425, &_s15SiriCorrections0B7ContextVSg_ADtMd, &_s15SiriCorrections0B7ContextVSg_ADtMR);
    }

    else
    {
      v425 = v308;
      v426 = v437;
      v427 = v438;
      v428 = v439;
      v423 = v438;
      v424 = v439;
      v421 = v308;
      v422 = v437;
      v412 = v445;
      v413 = v446;
      v414 = v447;
      v411 = v444;
      v324 = v308;
      v325 = static CorrectionsContext.== infix(_:_:)(&v421, &v411);
      v415[0] = v411;
      v415[1] = v412;
      v415[2] = v413;
      v415[3] = v414;
      OUTLINED_FUNCTION_29();
      outlined init with copy of CorrectionsContext?(v326, v327, v328, v329);
      OUTLINED_FUNCTION_29();
      outlined init with copy of CorrectionsContext?(v330, v331, v332, v333);
      OUTLINED_FUNCTION_29();
      outlined init with copy of CorrectionsContext?(v334, v335, v336, v337);
      outlined destroy of CorrectionsContext(v415);
      v416[0] = v421;
      v416[1] = v422;
      v416[2] = v423;
      v416[3] = v424;
      outlined destroy of CorrectionsContext(v416);
      v417[0] = v324;
      v417[1] = v311;
      v418 = v437;
      v419 = v438;
      v420 = v439;
      OUTLINED_FUNCTION_54(v417);
      if (v325)
      {
        v166 = v407;
        v264 = v408;
LABEL_118:
        Date.timeIntervalSinceNow.getter();
        if (v269 >= -30.0)
        {
          if (one-time initialization token for logger != -1)
          {
            OUTLINED_FUNCTION_0_4();
            swift_once();
          }

          v294 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_18_0(v294, static Logger.logger);
          v295 = Logger.logObject.getter();
          v296 = static os_log_type_t.debug.getter();
          if (OUTLINED_FUNCTION_32(v296))
          {
            v297 = OUTLINED_FUNCTION_30();
            *v297 = 0;
            _os_log_impl(&dword_266A4D000, v295, v296, "[CorrectionsEngine.checkUndo] undo action being returned", v297, 2u);
            OUTLINED_FUNCTION_5_2();
          }

          if (one-time initialization token for shared != -1)
          {
            OUTLINED_FUNCTION_3();
          }

          v298 = OUTLINED_FUNCTION_6_2();
          (*(v299 + 144))(v166, v395, &v425, v298);
          v300 = OUTLINED_FUNCTION_40();
          v301(v300, v396);
          v302 = type metadata accessor for UndoAction();
          v303 = v403;
          outlined init with take of Siri_Nlu_External_UserParse?(v410, v403 + *(v302 + 24));
          *v303 = v264;
          *(v303 + 8) = v263;
          *(v303 + 16) = v265;
          *(v303 + 24) = v167;
          OUTLINED_FUNCTION_35();
          v307 = v302;
          goto LABEL_157;
        }

        outlined consume of CorrectionsDirectInvocation?(v264, v263);
        if (one-time initialization token for logger != -1)
        {
          OUTLINED_FUNCTION_0_4();
          swift_once();
        }

        v270 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_18_0(v270, static Logger.logger);
        v271 = Logger.logObject.getter();
        v272 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_14_0(v272))
        {
          v273 = OUTLINED_FUNCTION_30();
          OUTLINED_FUNCTION_22(v273);
          OUTLINED_FUNCTION_12_0(&dword_266A4D000, v274, v275, "[CorrectionsEngine.checkUndo] undo action has gone stale.");
          OUTLINED_FUNCTION_2();
        }

        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_3();
        }

        OUTLINED_FUNCTION_6_2();
        v277 = *(v276 + 144);
        v278 = OUTLINED_FUNCTION_47();
        v280 = 4;
        goto LABEL_167;
      }

      outlined consume of CorrectionsDirectInvocation?(v408, v263);
    }

    if (one-time initialization token for logger != -1)
    {
      OUTLINED_FUNCTION_0_4();
      swift_once();
    }

    v348 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_18_0(v348, static Logger.logger);
    v349 = Logger.logObject.getter();
    v350 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_14_0(v350))
    {
      v351 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_22(v351);
      OUTLINED_FUNCTION_12_0(&dword_266A4D000, v352, v353, "[CorrectionsEngine.checkUndo] mismatched context.");
      OUTLINED_FUNCTION_2();
    }

    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_3();
    }

    OUTLINED_FUNCTION_6_2();
    v355 = *(v354 + 144);
    v278 = OUTLINED_FUNCTION_47();
    v280 = 5;
LABEL_167:
    v279(v278, v280);
    v356 = OUTLINED_FUNCTION_40();
    v357(v356, v396);
    goto LABEL_156;
  }

  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_0_4();
    swift_once();
  }

  v178 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_18_0(v178, static Logger.logger);
  v179 = Logger.logObject.getter();
  v180 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_14_0(v180))
  {
    v181 = OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_22(v181);
    OUTLINED_FUNCTION_12_0(&dword_266A4D000, v182, v183, "[CorrectionsEngine.checkUndo] this is not nlv4 or uso parse");
    OUTLINED_FUNCTION_5_2();
  }

  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  OUTLINED_FUNCTION_6_2();
  v185 = *(v184 + 144);
  v186 = OUTLINED_FUNCTION_47();
  v187(v186, 6);
  outlined destroy of (Siri_Nlu_External_Parser.ParserIdentifier?, Siri_Nlu_External_Parser.ParserIdentifier?)(v410, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  type metadata accessor for UndoAction();
  OUTLINED_FUNCTION_55();
  __swift_storeEnumTagSinglePayload(v188, v189, v190, v191);
  OUTLINED_FUNCTION_19_0();
LABEL_158:
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  (*(v401 + 8))(v409, v402);
  OUTLINED_FUNCTION_19();
}

uint64_t specialized RangeReplaceableCollection.removeFirst()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v4 = *(*(v3 - 8) + 64);
  result = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v10 - v6;
  v8 = *v1;
  if (!*(*v1 + 16))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  specialized Collection.first.getter(*v1, &v10 - v6);
  v9 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  result = __swift_getEnumTagSinglePayload(v7, 1, v9);
  if (result != 1)
  {
    result = (*(*(v9 - 8) + 32))(a1, v7, v9);
    if (*(v8 + 16))
    {
      return specialized Array.replaceSubrange<A>(_:with:)(0, 1);
    }

    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t UndoAction.init(directInvocation:isExclusive:parseExludingUndoUserDialogActs:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v6;
  *(a4 + 24) = a2;
  v7 = a4 + *(type metadata accessor for UndoAction() + 24);

  return outlined init with take of Siri_Nlu_External_UserParse?(a3, v7);
}

Swift::Bool __swiftcall CorrectionsEngine.isUndoPossible(context:)(SiriCorrections::CorrectionsContext_optional *context)
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_0(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v51 - v7;
  v9 = type metadata accessor for Date();
  v10 = OUTLINED_FUNCTION_6(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_8_1();
  v17 = v16 - v15;
  v19 = *v2;
  v18 = v2[1];
  v21 = v2[2];
  v20 = v2[3];
  if (one-time initialization token for parseStoredTime != -1)
  {
    OUTLINED_FUNCTION_10_0();
  }

  v22 = __swift_project_value_buffer(v3, static CorrectionsEngine.parseStoredTime);
  OUTLINED_FUNCTION_41();
  outlined init with copy of CorrectionsContext?(v22, v8, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
  {
    (*(v12 + 32))(v17, v8, v9);
    if (one-time initialization token for inverseDirectInvocation != -1)
    {
      OUTLINED_FUNCTION_3_3();
    }

    OUTLINED_FUNCTION_27();
    if (!qword_281321728)
    {
      v32 = OUTLINED_FUNCTION_38();
      v33(v32);
      goto LABEL_16;
    }

    Date.timeIntervalSinceNow.getter();
    if (v23 < -30.0)
    {
      if (one-time initialization token for logger != -1)
      {
        OUTLINED_FUNCTION_0_4();
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_18_0(v24, static Logger.logger);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.debug.getter();
      if (!OUTLINED_FUNCTION_32(v26))
      {
        goto LABEL_14;
      }

      *OUTLINED_FUNCTION_30() = 0;
      v29 = "[CorrectionsEngine.isUndoPossible] undo action has gone stale.";
LABEL_13:
      OUTLINED_FUNCTION_64(&dword_266A4D000, v27, v28, v29);
      OUTLINED_FUNCTION_5_2();
LABEL_14:

      v30 = OUTLINED_FUNCTION_38();
      v31(v30);
      goto LABEL_21;
    }

    if (v18 == 1)
    {
      goto LABEL_26;
    }

    if (one-time initialization token for context != -1)
    {
      OUTLINED_FUNCTION_4_3();
    }

    v41 = static CorrectionsEngine.context;
    OUTLINED_FUNCTION_27();
    v42 = v41[1];
    if (v42 == 1)
    {
LABEL_26:
      v43 = OUTLINED_FUNCTION_38();
      v44(v43);
      goto LABEL_21;
    }

    v45 = v41[3];
    if (v45)
    {
      if (!v20)
      {
        goto LABEL_46;
      }

      if (v41[2] != v21 || v45 != v20)
      {
        v47 = v41[3];
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_46;
        }

        v42 = v41[1];
        if (v42 == 1)
        {
          goto LABEL_45;
        }
      }
    }

    else if (v20)
    {
      goto LABEL_46;
    }

    if (v42)
    {
      if (v18)
      {
        v48 = *v41 == v19 && v42 == v18;
        if (v48 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_26;
        }
      }

      goto LABEL_46;
    }

LABEL_45:
    if (!v18)
    {
      goto LABEL_26;
    }

LABEL_46:
    if (one-time initialization token for logger != -1)
    {
      OUTLINED_FUNCTION_0_4();
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_18_0(v49, static Logger.logger);
    v25 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();
    if (!OUTLINED_FUNCTION_32(v50))
    {
      goto LABEL_14;
    }

    *OUTLINED_FUNCTION_30() = 0;
    v29 = "[CorrectionsEngine.isUndoPossible] Correction is not possible with the given context.";
    goto LABEL_13;
  }

  outlined destroy of (Siri_Nlu_External_Parser.ParserIdentifier?, Siri_Nlu_External_Parser.ParserIdentifier?)(v8, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
LABEL_16:
  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_0_4();
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_18_0(v34, static Logger.logger);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_25(v36))
  {
    v37 = OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_45(v37);
    OUTLINED_FUNCTION_17_0(&dword_266A4D000, v38, v39, "[CorrectionsEngine.isUndoPossible] nothing to undo.");
    OUTLINED_FUNCTION_24();
  }

LABEL_21:
  OUTLINED_FUNCTION_19();
  return result;
}

uint64_t CorrectionsEngine.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t CorrectionsEngine.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t UndoAction.directInvocation.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
}

uint64_t UndoAction.init(directInvocation:isExclusive:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v4;
  *(a3 + 24) = a2;
  v5 = *(type metadata accessor for UndoAction() + 24);
  type metadata accessor for Siri_Nlu_External_UserParse();
  OUTLINED_FUNCTION_55();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t specialized Array._getCount()(unint64_t a1)
{
  if (a1 >> 62)
  {
    JUMPOUT(0x26D5E7790);
  }

  return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, uint64_t a4)
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
  v9 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC12SiriNLUTypes0H27_Nlu_External_UserDialogActV_Tt1g5(v8, v7);
  v10 = *(type metadata accessor for Siri_Nlu_External_UserDialogAct() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

size_t _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC12SiriNLUTypes0H27_Nlu_External_UserDialogActV_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D27_Nlu_External_UserDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D27_Nlu_External_UserDialogActVGMR);
  v4 = *(type metadata accessor for Siri_Nlu_External_UserDialogAct() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized UnsafeMutablePointer.moveInitialize(from:count:)(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = type metadata accessor for Siri_Nlu_External_UserDialogAct(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = type metadata accessor for Siri_Nlu_External_UserDialogAct();

    return MEMORY[0x2821FE828](a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x2821FE820](a3, a1, a2, result);
  }

  return result;
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    if (v3 < 0)
    {
      v7 = v3;
    }

    else
    {
      v7 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    MEMORY[0x26D5E7790](v7);
    goto LABEL_14;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_14:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
  v8 = *v2;
  v9 = *(type metadata accessor for Siri_Nlu_External_UserDialogAct() - 8);
  v10 = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  v12 = v10 + v11 * v5;
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v13 = *(v8 + 16);
  if (__OFSUB__(v13, a2))
  {
    goto LABEL_16;
  }

  result = specialized UnsafeMutablePointer.moveInitialize(from:count:)(v10 + v11 * a2, v13 - a2, v12);
  v14 = *(v8 + 16);
  v15 = __OFADD__(v14, v7);
  v16 = v14 - v6;
  if (!v15)
  {
    *(v8 + 16) = v16;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  v9 = *v4;
  v10 = *v4 + 32;
  v11 = 5 * result;
  v12 = v10 + 40 * result;
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v5);
  v14 = a3 - v5;
  if (v13)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  v15 = v12 + 40 * a3;
  if (!v14)
  {
    goto LABEL_12;
  }

  v16 = *(v9 + 16);
  if (__OFSUB__(v16, a2))
  {
    goto LABEL_19;
  }

  v17 = (v10 + 40 * a2);
  if (v15 != v17 || v17 + 40 * (v16 - a2) <= v15)
  {
    result = memmove((v12 + 40 * a3), v17, 40 * (v16 - a2));
    v16 = *(v9 + 16);
  }

  v13 = __OFADD__(v16, v14);
  v19 = v16 + v14;
  if (v13)
  {
    goto LABEL_20;
  }

  *(v9 + 16) = v19;
LABEL_12:
  if (a3 > 0)
  {
    v20 = *(a4 + 16);
    v23 = *a4;
    v24 = v20;
    v25 = *(a4 + 32);
    v21 = 8 * v11 + v9;
    *(v21 + 32) = v23;
    *(v21 + 48) = v20;
    *(v21 + 64) = v25;
    if (v21 + 72 >= v15)
    {
      return result;
    }

    outlined init with copy of CorrectionsContext?(a4, v22, &_ss15CollectionOfOneVy15SiriCorrections19CorrectionOperationVGMd, &_ss15CollectionOfOneVy15SiriCorrections19CorrectionOperationVGMR);
    __break(1u);
  }

  return outlined destroy of (Siri_Nlu_External_Parser.ParserIdentifier?, Siri_Nlu_External_Parser.ParserIdentifier?)(a4, &_ss15CollectionOfOneVy15SiriCorrections19CorrectionOperationVGMd, &_ss15CollectionOfOneVy15SiriCorrections19CorrectionOperationVGMR);
}

unint64_t specialized Array._checkSubscript(_:wasNativeTypeChecked:)(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSay12SiriOntology9UsoEntityCGGMd, &_ss17_NativeDictionaryVySSSay12SiriOntology9UsoEntityCGGMR);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = *v5;
  v19 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v19;
LABEL_5:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v16);
    *(v22 + 8 * v16) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v16, a2, a3, a1, v21);
  }
}