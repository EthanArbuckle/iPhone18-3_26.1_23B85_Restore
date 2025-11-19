uint64_t closure #1 in SiriKitCurareDonator.donateSiriExecutionTaskStep(activityType:eventContext:eventTime:requestContent:taskContent:taskId:taskName:app:attribute:parameterName:responseId:statusDescription:statusReason:)()
{
  v155 = v0;
  v154[1] = *MEMORY[0x1E69E9840];
  v1 = v0[89];
  v3 = v1[12];
  v2 = v1[13];
  v4 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v4 = v3 & 0xFFFFFFFFFFFFLL;
  }

  v152 = v1[12];
  v153 = v1[13];
  if (!v4)
  {
    v3 = v1[10];
    v2 = v1[11];
  }

  v5 = one-time initialization token for instrumentation;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.instrumentation);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  v145 = v2;
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v154[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, v2, v154);
    _os_log_impl(&dword_1DC659000, v7, v8, "Create SiriKit execution task step donation to Curare for interactionId: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1E12A2F50](v10, -1, -1);
    MEMORY[0x1E12A2F50](v9, -1, -1);
  }

  v11 = v0[92];
  v12 = v0[91];
  v13 = v0[90];
  v14 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DCA75F30;
  strcpy((inited + 32), "activityType");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  v16 = ActivityType.rawValue.getter();
  v17 = MEMORY[0x1E69E6158];
  *(inited + 48) = v16;
  *(inited + 56) = v18;
  *(inited + 72) = v17;
  *(inited + 80) = 0x6D6954746E657665;
  *(inited + 88) = 0xE900000000000065;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v151 = v14;
  v20 = [v14 stringFromDate_];

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  *(inited + 96) = v21;
  *(inited + 104) = v23;
  *(inited + 120) = v17;
  *(inited + 128) = 7368801;
  *(inited + 136) = 0xE300000000000000;
  v142 = v3;
  if (v11)
  {
    v24 = v0[92];
    v25 = App.appIdentifier.getter();
    v27 = (inited + 144);
    *(inited + 168) = v17;
    if (v26)
    {
      *v27 = v25;
      goto LABEL_14;
    }
  }

  else
  {
    v27 = (inited + 144);
    *(inited + 168) = v17;
  }

  *v27 = 0x6C7070615F746F6ELL;
  v26 = 0xEE00656C62616369;
LABEL_14:
  v28 = v0[116];
  v29 = v0[102];
  v138 = v0[101];
  v139 = v0[103];
  v30 = v0[100];
  v31 = v0[99];
  v32 = v0[98];
  v33 = v0[97];
  v34 = v0[96];
  v35 = v0[95];
  v36 = v0[94];
  v37 = v0[93];
  v38 = v0[89];
  *(inited + 152) = v26;
  *(inited + 176) = 0x7475626972747461;
  *(inited + 184) = 0xE900000000000065;
  if (v36)
  {
    v39 = v36;
  }

  else
  {
    v37 = 7104878;
    v39 = 0xE300000000000000;
  }

  *(inited + 192) = v37;
  *(inited + 200) = v39;
  *(inited + 216) = v17;
  strcpy((inited + 224), "intentTypeName");
  *(inited + 239) = -18;
  *(inited + 240) = v35;
  *(inited + 248) = v34;
  *(inited + 264) = v17;
  *(inited + 272) = 0x6574656D61726170;
  if (v32)
  {
    v40 = v32;
  }

  else
  {
    v33 = 7104878;
    v40 = 0xE300000000000000;
  }

  *(inited + 280) = 0xED0000656D614E72;
  *(inited + 288) = v33;
  *(inited + 296) = v40;
  *(inited + 312) = v17;
  *(inited + 320) = 0x65736E6F70736572;
  if (v30)
  {
    v41 = v30;
  }

  else
  {
    v31 = 7104878;
    v41 = 0xE300000000000000;
  }

  *(inited + 328) = 0xEA00000000006449;
  *(inited + 336) = v31;
  *(inited + 344) = v41;
  *(inited + 360) = v17;
  *(inited + 368) = 0xD000000000000011;
  *(inited + 376) = 0x80000001DCA7AB40;

  v42 = SiriKitEventContext.resultCandidateId.getter();
  if (v43)
  {
    v44 = v42;
  }

  else
  {
    v44 = 0;
  }

  v45 = 0xE000000000000000;
  if (v43)
  {
    v45 = v43;
  }

  *(inited + 384) = v44;
  *(inited + 392) = v45;
  *(inited + 408) = v17;
  *(inited + 416) = 0xD000000000000011;
  v46 = v138;
  if (!v29)
  {
    v46 = 7104878;
  }

  *(inited + 424) = 0x80000001DCA88F60;
  *(inited + 432) = v46;
  if (v29)
  {
    v47 = v29;
  }

  else
  {
    v47 = 0xE300000000000000;
  }

  *(inited + 440) = v47;
  *(inited + 456) = v17;
  strcpy((inited + 464), "statusReason");
  *(inited + 477) = 0;
  *(inited + 478) = -5120;
  outlined init with copy of SiriKitReliabilityCodes?(v139, v28);
  v48 = type metadata accessor for SiriKitReliabilityCodes();
  v49 = *(v48 - 8);
  v50 = (*(v49 + 48))(v28, 1, v48);

  v51 = v0[116];
  if (v50 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v0[116], &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
    v52 = (inited + 480);
    *(inited + 504) = v17;
  }

  else
  {
    v53 = v0[116];
    v54 = SiriKitReliabilityCodes.rawValue.getter();
    v56 = v55;
    (*(v49 + 8))(v51, v48);
    v52 = (inited + 480);
    *(inited + 504) = v17;
    if (v56)
    {
      *v52 = v54;
      v57 = v142;
      goto LABEL_38;
    }
  }

  v57 = v142;
  *v52 = 7104878;
  v56 = 0xE300000000000000;
LABEL_38:
  v58 = v0[107];
  v59 = v0[106];
  v60 = v0[105];
  v61 = v0[104];
  *(inited + 488) = v56;
  *(inited + 512) = 0xD000000000000010;
  *(inited + 520) = 0x80000001DCA88F80;
  *(inited + 552) = v17;
  *(inited + 528) = v61;
  *(inited + 536) = v60;
  *(inited + 560) = 0xD000000000000013;
  *(inited + 568) = 0x80000001DCA88FA0;
  *(inited + 600) = v17;
  *(inited + 576) = v59;
  *(inited + 584) = v58;
  strcpy((inited + 608), "interactionId");
  *(inited + 622) = -4864;
  *(inited + 648) = v17;
  *(inited + 624) = v57;
  *(inited + 632) = v145;

  v62 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v62);

  v63 = objc_allocWithZone(MEMORY[0x1E699C0C8]);
  v64 = Dictionary._bridgeToObjectiveC()().super.isa;

  v65 = MEMORY[0x1E12A1410](v152, v153);
  v66 = [v63 initWithContent:v64 interactionId:v65 dataVersion:0];

  if (v66)
  {
    v67 = v0[110];
    v0[87] = 0;
    v146 = v66;
    v68 = [v67 insert:v66 error:v0 + 87];
    v69 = v0[87];
    v70 = v0[112];
    v71 = v0[111];
    v72 = v0[109];
    v73 = v0[96];
    v74 = v0[90];
    v75 = v0[89];
    if (v68)
    {
      (*(v70 + 16))(v0[115], v0[90], v0[111]);

      v76 = v69;

      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.debug.getter();

      v79 = os_log_type_enabled(v77, v78);
      v80 = v0[115];
      v81 = v0[112];
      v82 = v0[111];
      if (v79)
      {
        v83 = v0[109];
        v84 = v0[108];
        v140 = v0[95];
        v143 = v0[96];
        v85 = swift_slowAlloc();
        log = swift_slowAlloc();
        v154[0] = log;
        *v85 = 136315906;
        *(v85 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v83, v154);
        *(v85 + 12) = 2080;
        *(v85 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v140, v143, v154);
        *(v85 + 22) = 2080;
        v86 = ActivityType.rawValue.getter();
        v88 = v87;
        (*(v81 + 8))(v80, v82);
        v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v88, v154);

        *(v85 + 24) = v89;
        *(v85 + 32) = 2080;
        *(v85 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v152, v153, v154);
        _os_log_impl(&dword_1DC659000, v77, v78, "Donated SiriKit execution task step to Curare for taskId: %s, taskType: %s, stepType: %s for interactionId:%s", v85, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](log, -1, -1);
        MEMORY[0x1E12A2F50](v85, -1, -1);

LABEL_44:
        goto LABEL_50;
      }

      (*(v81 + 8))(v80, v82);
    }

    else
    {
      v106 = v0[113];
      v107 = v69;
      v108 = _convertNSErrorToError(_:)();

      swift_willThrow();
      (*(v70 + 16))(v106, v74, v71);

      v109 = v108;
      v110 = Logger.logObject.getter();
      v111 = static os_log_type_t.error.getter();

      v112 = os_log_type_enabled(v110, v111);
      v113 = v0[113];
      v114 = v0[112];
      v115 = v0[111];
      if (v112)
      {
        logb = v110;
        v116 = v0[109];
        v117 = v0[108];
        v118 = v0[96];
        v119 = v0[95];
        v141 = v108;
        v120 = swift_slowAlloc();
        v144 = swift_slowAlloc();
        v154[0] = v144;
        *v120 = 136316162;
        *(v120 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v117, v116, v154);
        *(v120 + 12) = 2080;
        *(v120 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v119, v118, v154);
        *(v120 + 22) = 2080;
        v121 = ActivityType.rawValue.getter();
        v123 = v122;
        (*(v114 + 8))(v113, v115);
        v124 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v121, v123, v154);

        *(v120 + 24) = v124;
        *(v120 + 32) = 2080;
        *(v120 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v152, v153, v154);
        *(v120 + 42) = 2080;
        swift_getErrorValue();
        v125 = v0[84];
        v126 = v0[85];
        v127 = v0[86];
        v128 = Error.localizedDescription.getter();
        v130 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v128, v129, v154);

        *(v120 + 44) = v130;
        _os_log_impl(&dword_1DC659000, logb, v111, "Failed to donate SiriKit execution task step to Curare for taskId: %s, taskType: %s, stepType: %s for interactionId:%s: %s", v120, 0x34u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v144, -1, -1);
        MEMORY[0x1E12A2F50](v120, -1, -1);
      }

      else
      {

        (*(v114 + 8))(v113, v115);
      }
    }
  }

  else
  {
    v90 = v0[109];
    v91 = v0[96];
    v92 = v0[89];
    (*(v0[112] + 16))(v0[114], v0[90], v0[111]);

    v77 = Logger.logObject.getter();
    v93 = static os_log_type_t.error.getter();

    v94 = os_log_type_enabled(v77, v93);
    v95 = v0[114];
    v96 = v0[112];
    v97 = v0[111];
    if (v94)
    {
      v98 = v0[109];
      v99 = v0[108];
      v147 = v0[95];
      loga = v0[96];
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v154[0] = v101;
      *v100 = 136315906;
      *(v100 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v98, v154);
      *(v100 + 12) = 2080;
      *(v100 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v147, loga, v154);
      *(v100 + 22) = 2080;
      v102 = ActivityType.rawValue.getter();
      v104 = v103;
      (*(v96 + 8))(v95, v97);
      v105 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v104, v154);

      *(v100 + 24) = v105;
      *(v100 + 32) = 2080;
      *(v100 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v152, v153, v154);
      _os_log_impl(&dword_1DC659000, v77, v93, "Failed to create SiriKit execution task step donation to Curare for taskId: %s, taskType: %s, stepType: %s for interactionId:%s", v100, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v101, -1, -1);
      MEMORY[0x1E12A2F50](v100, -1, -1);
      goto LABEL_44;
    }

    (*(v96 + 8))(v95, v97);
  }

LABEL_50:
  v131 = v0[116];
  v132 = v0[115];
  v133 = v0[114];
  v134 = v0[113];

  v135 = v0[1];
  v136 = *MEMORY[0x1E69E9840];

  return v135();
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of ReferenceResolutionClientProtocol?(v4, &v13, &_sSS_yptMd, &_sSS_yptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t type metadata accessor for ExecutionContextUpdate()
{
  result = type metadata singleton initialization cache for ExecutionContextUpdate;
  if (!type metadata singleton initialization cache for ExecutionContextUpdate)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t specialized _NativeSet.update(with:isUnique:)(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  Hasher.init(_seed:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13SABaseCommandCSgMd, &_sSo13SABaseCommandCSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  Task.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v32 = a2;
    v11 = ~v9;
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);

      v13 = static Task.== infix(_:_:)();

      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        v14 = 1;
        goto LABEL_8;
      }
    }

    v14 = 0;
LABEL_8:
    v15 = v13 ^ 1;
    v3 = v2;
    a2 = v32;
  }

  else
  {
    v15 = 1;
    v14 = 1;
  }

  v16 = *(v6 + 16);
  v17 = v16 + v14;
  if (__OFADD__(v16, v14))
  {
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v18 = *(v6 + 24);
  if (v18 < v17 || (a2 & 1) == 0)
  {
    if (a2)
    {
      v33 = v15;
      specialized _NativeSet.resize(capacity:)(v17);
    }

    else
    {
      if (v18 >= v17)
      {
        specialized _NativeSet.copy()();
        if ((v15 & 1) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_25;
      }

      v33 = v15;
      specialized _NativeSet.copyAndResize(capacity:)(v17);
    }

    v19 = *v3;
    v20 = *(*v3 + 40);
    Hasher.init(_seed:)();
    Task.hash(into:)();
    v21 = Hasher._finalize()();
    v22 = -1 << *(v19 + 32);
    v10 = v21 & ~v22;
    if ((*(v19 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v23 = ~v22;
      while (1)
      {
        v24 = *(*(v19 + 48) + 8 * v10);

        v25 = static Task.== infix(_:_:)();

        if (v25)
        {
          break;
        }

        v10 = (v10 + 1) & v23;
        if (((*(v19 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      v3 = v2;
      if ((v33 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    else
    {
LABEL_24:
      v3 = v2;
      if (v33)
      {
LABEL_25:
        v26 = *v3;
        *(*v3 + 8 * (v10 >> 6) + 56) |= 1 << v10;
        *(*(v26 + 48) + 8 * v10) = a1;
        v27 = *(v26 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (!v28)
        {
          result = 0;
          *(v26 + 16) = v29;
          return result;
        }

        goto LABEL_31;
      }
    }

LABEL_32:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScTySo13SABaseCommandCSgs5Error_pGMd, &_sScTySo13SABaseCommandCSgs5Error_pGMR);
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  if (v15)
  {
    goto LABEL_25;
  }

LABEL_28:
  v31 = *(*v3 + 48);
  result = *(v31 + 8 * v10);
  *(v31 + 8 * v10) = a1;
  return result;
}

uint64_t outlined assign with take of Conversation.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Conversation.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

char *assignWithTake for Conversation.State(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of Conversation.State(a1, type metadata accessor for Conversation.State);
  if (!swift_getEnumCaseMultiPayload())
  {
    *a1 = *a2;
    v8 = type metadata accessor for SiriRequest(0);
    v9 = v8[5];
    v10 = type metadata accessor for Input();
    (*(*(v10 - 8) + 32))(&a1[v9], &a2[v9], v10);
    *&a1[v8[6]] = *&a2[v8[6]];
    *&a1[v8[7]] = *&a2[v8[7]];
    *&a1[v8[8]] = *&a2[v8[8]];
    *&a1[v8[9]] = *&a2[v8[9]];
    *&a1[v8[10]] = *&a2[v8[10]];
    *&a1[v8[11]] = *&a2[v8[11]];
    v11 = v8[12];
    v12 = &a1[v11];
    v13 = &a2[v11];
    v14 = type metadata accessor for SiriRequestIdentities(0);
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v13, 1, v14))
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
      memcpy(v12, v13, *(*(v16 - 8) + 64));
    }

    else
    {
      v17 = type metadata accessor for IdentifiedUser();
      v18 = *(v17 - 8);
      v24 = *(v18 + 48);
      v23 = v18;
      if (v24(v13, 1, v17))
      {
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        memcpy(v12, v13, *(*(v19 - 8) + 64));
      }

      else
      {
        (*(v18 + 32))(v12, v13, v17);
        (*(v18 + 56))(v12, 0, 1, v17);
      }

      v20 = *(v14 + 20);
      if (v24(&v13[v20], 1, v17))
      {
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        memcpy(&v12[v20], &v13[v20], *(*(v21 - 8) + 64));
      }

      else
      {
        (*(v23 + 32))(&v12[v20], &v13[v20], v17);
        (*(v23 + 56))(&v12[v20], 0, 1, v17);
      }

      *&v12[*(v14 + 24)] = *&v13[*(v14 + 24)];
      (*(v15 + 56))(v12, 0, 1, v14);
    }

    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA4NodeCyAA9FlowAgentCG08selectedG0tMd, &_s14SiriKitRuntime0A7RequestV7request_AA4NodeCyAA9FlowAgentCG08selectedG0tMR);
    *&a1[*(v22 + 48)] = *&a2[*(v22 + 48)];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

uint64_t type metadata accessor for ConversationCommitResult()
{
  result = type metadata singleton initialization cache for ConversationCommitResult;
  if (!type metadata singleton initialization cache for ConversationCommitResult)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FlowPluginInfo.description.getter()
{
  _StringGuts.grow(_:)(79);
  MEMORY[0x1E12A1580](0xD000000000000022, 0x80000001DCA83C50);
  if (*(v0 + OBJC_IVAR____TtC14SiriKitRuntime14FlowPluginInfo_supportsOnDeviceNL))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC14SiriKitRuntime14FlowPluginInfo_supportsOnDeviceNL))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v1, v2);

  MEMORY[0x1E12A1580](0xD000000000000013, 0x80000001DCA83C80);
  if (*(v0 + OBJC_IVAR____TtC14SiriKitRuntime14FlowPluginInfo_isPersonalRequest))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC14SiriKitRuntime14FlowPluginInfo_isPersonalRequest))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v3, v4);

  MEMORY[0x1E12A1580](0xD000000000000014, 0x80000001DCA83CA0);
  v6 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime14FlowPluginInfo_sensitivityPolicy);
  type metadata accessor for AFSiriDataSharingSensitivityPolicy(0);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

void type metadata accessor for AFAnalyticsEventType(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t AceServiceInvokerImpl.publish(executionContextUpdate:)(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for RequestSummary.ExecutionSource();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](AceServiceInvokerImpl.publish(executionContextUpdate:), 0, 0);
}

uint64_t AceServiceInvokerImpl.publish(executionContextUpdate:)()
{
  v40 = v0;
  receiver = v0[5].receiver;
  super_class = v0[5].super_class;
  v4 = v0[4].receiver;
  v3 = v0[4].super_class;
  v5 = v0[3].receiver;
  v6 = v0[3].super_class;
  v7 = v0[2].super_class;
  v38 = v0[2].receiver;
  v9 = *(v7 + 5);
  v8 = *(v7 + 6);
  v10 = type metadata accessor for FlowOutputMessage.InAppResponse();
  (*(*(v10 - 8) + 56))(super_class, 1, 1, v10);
  (*(v6 + 13))(v3, *MEMORY[0x1E69D0678], v5);
  v11 = *(v6 + 2);
  v11(v4, v3, v5);
  outlined init with copy of ReferenceResolutionClientProtocol?(super_class, receiver, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  v37 = type metadata accessor for ExecutionOutput();
  v12 = objc_allocWithZone(v37);
  v13 = &v12[OBJC_IVAR___SKRExecutionOutput_executionRequestId];
  *v13 = v9;
  *(v13 + 1) = v8;
  v14 = &v12[OBJC_IVAR___SKRExecutionOutput_fullPrint];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v12[OBJC_IVAR___SKRExecutionOutput_fullSpeak];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v12[OBJC_IVAR___SKRExecutionOutput_redactedFullPrint];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = &v12[OBJC_IVAR___SKRExecutionOutput_redactedFullSpeak];
  *v17 = 0;
  *(v17 + 1) = 0;
  v11(&v12[OBJC_IVAR___SKRExecutionOutput_executionSource], v4, v5);
  outlined init with copy of ReferenceResolutionClientProtocol?(receiver, &v12[OBJC_IVAR___SKRExecutionOutput_inAppResponse], &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  v18 = one-time initialization token for executor;

  v19 = v38;
  if (v18 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.executor);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v39 = v25;
    *v23 = 136315394;
    *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, &v39);
    *(v23 + 12) = 2112;
    *(v23 + 14) = 0;
    *v24 = 0;
    _os_log_impl(&dword_1DC659000, v21, v22, "ExecutionOutput: %s: converting non-context ACE command=%@ to ExecutionOutput", v23, 0x16u);
    outlined destroy of ReferenceResolutionClientProtocol?(v24, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v24, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x1E12A2F50](v25, -1, -1);
    MEMORY[0x1E12A2F50](v23, -1, -1);
  }

  v27 = v0[5].receiver;
  v26 = v0[5].super_class;
  v29 = v0[4].receiver;
  v28 = v0[4].super_class;
  v30 = v0[3].receiver;
  v31 = v0[3].super_class;
  *&v12[OBJC_IVAR___SKRExecutionOutput_command] = 0;
  *&v12[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = v19;
  v0[1].receiver = v12;
  v0[1].super_class = v37;
  v32 = objc_msgSendSuper2(v0 + 1, sel_init);
  v0[6].receiver = v32;
  outlined destroy of ReferenceResolutionClientProtocol?(v27, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  v33 = *(v31 + 1);
  v33(v29, v30);
  v33(v28, v30);
  outlined destroy of ReferenceResolutionClientProtocol?(v26, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  v34 = swift_task_alloc();
  v0[6].super_class = v34;
  *v34 = v0;
  *(v34 + 1) = AceServiceInvokerImpl.publish(executionContextUpdate:);
  v35 = v0[2].super_class;

  return AceServiceInvokerImpl.publish(executionOutput:)(v32);
}

{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = AceServiceInvokerImpl.publish(executionContextUpdate:);
  }

  else
  {
    v3 = AceServiceInvokerImpl.publish(executionContextUpdate:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 64);

  v5 = *(v0 + 8);

  return v5();
}

{
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 64);

  v5 = *(v0 + 8);
  v6 = *(v0 + 112);

  return v5();
}

uint64_t outlined init with take of SiriKitReliabilityCodes?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t closure #1 in RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:)()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = closure #1 in RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:);
  }

  else
  {
    v3 = closure #1 in RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = *(v0 + 40);
  outlined init with copy of RemoteConversationService.State(*(v0 + 56), *(v0 + 48), type metadata accessor for UserInputResult);
  v3 = 0;
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v2 = *(v0 + 80);
    outlined destroy of RemoteConversationService.State(*(v0 + 48), type metadata accessor for UserInputResult);
    if (v2)
    {
      v3 = 1;
    }
  }

  v4 = *(v0 + 48);
  outlined init with take of SiriRequest(*(v0 + 56), *(v0 + 16), type metadata accessor for UserInputResult);

  v5 = *(v0 + 8);

  return v5(v3);
}

{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 24);
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = closure #1 in RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:);
  v7 = v0[7];
  v8 = v0[4];

  return v10(v7, v8, v2, v3);
}

{
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[1];
  v4 = v0[9];

  return v3(0);
}

unint64_t UserInputResult.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Input();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UserInputResult();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of UserInputResult(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v3 + 32))(v6, v10, v2);
      v19 = 0;
      v20 = 0xE000000000000000;
      _StringGuts.grow(_:)(18);

      v19 = 0x656D726F6665722ELL;
      v20 = 0xEF287475706E4964;
      v12 = Input.description.getter();
      MEMORY[0x1E12A1580](v12);

      MEMORY[0x1E12A1580](41, 0xE100000000000000);
      v14 = v19;
      v13 = v20;
      (*(v3 + 8))(v6, v2);
    }

    else
    {
      v13 = 0xEF7475706E496465;
      v14 = 0x74726F707075732ELL;
    }
  }

  else
  {
    v15 = *v10;
    v19 = 0;
    v20 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);

    v19 = 0xD00000000000001BLL;
    v20 = 0x80000001DCA8BCE0;
    if (v15)
    {
      v16 = 1702195828;
    }

    else
    {
      v16 = 0x65736C6166;
    }

    if (v15)
    {
      v17 = 0xE400000000000000;
    }

    else
    {
      v17 = 0xE500000000000000;
    }

    MEMORY[0x1E12A1580](v16, v17);

    MEMORY[0x1E12A1580](41, 0xE100000000000000);
    v14 = v19;
    v13 = v20;
  }

  v19 = 0;
  v20 = 0xE000000000000000;
  _StringGuts.grow(_:)(19);

  v19 = 0xD000000000000010;
  v20 = 0x80000001DCA8BCC0;
  MEMORY[0x1E12A1580](v14, v13);

  MEMORY[0x1E12A1580](41, 0xE100000000000000);
  return v19;
}

uint64_t closure #1 in RemoteConversationService.prepare(bridge:reply:)()
{
  v31 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 80);
  v4 = OBJC_IVAR____TtC14SiriKitRuntime25RemoteConversationService_state;
  swift_beginAccess();
  outlined init with copy of RemoteConversationService.State(v3 + v4, v2, type metadata accessor for RemoteConversationService.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v6 = *(v0 + 112);
      *(v0 + 144) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMd, &_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMR) + 64);
      outlined init with take of ReferenceResolutionClientProtocol((v6 + 40), v0 + 16);
      v7 = *(v0 + 40);
      v8 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v7);
      v9 = *(v8 + 40);
      v29 = (v9 + *v9);
      v10 = v9[1];
      v11 = swift_task_alloc();
      *(v0 + 128) = v11;
      *v11 = v0;
      v11[1] = closure #1 in RemoteConversationService.prepare(bridge:reply:);

      return v29(v7, v8);
    }

    v15 = 0x80000001DCA85D50;
    v16 = 0xD00000000000003FLL;
  }

  else
  {
    v13 = *(v0 + 112);
    v14 = v13[10];

    v30[0] = 0;
    v30[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    MEMORY[0x1E12A1580](0x74784520776F6C46, 0xEF206E6F69736E65);
    MEMORY[0x1E12A1580](0xD000000000000016, 0x80000001DCA837C0);
    MEMORY[0x1E12A1580](0xD000000000000023, 0x80000001DCA85D20);
    v16 = 0;
    v15 = 0xE000000000000000;

    outlined destroy of ReferenceResolutionClientProtocol?((v13 + 5), &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.executor);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v30[0] = v21;
    *v20 = 136315138;
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v15, v30);

    *(v20 + 4) = v22;
    _os_log_impl(&dword_1DC659000, v18, v19, "%s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x1E12A2F50](v21, -1, -1);
    MEMORY[0x1E12A2F50](v20, -1, -1);
  }

  else
  {
  }

  v24 = *(v0 + 88);
  v23 = *(v0 + 96);
  lazy protocol witness table accessor for type IllegalStateError and conformance IllegalStateError();
  v25 = swift_allocError();
  *v26 = v16;
  v26[1] = v15;
  v24();

  v27 = *(v0 + 112);

  v28 = *(v0 + 8);

  return v28();
}

{
  v1 = *(v0 + 144);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  (*(v0 + 88))(0);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  outlined destroy of RemoteConversationService.State(v2 + v1, type metadata accessor for SiriRequest);
  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  v4 = *(v0 + 112);

  v5 = *(v0 + 8);

  return v5();
}

{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 120);
  if (v0)
  {
    v6 = closure #1 in RemoteConversationService.prepare(bridge:reply:);
  }

  else
  {
    v6 = closure #1 in RemoteConversationService.prepare(bridge:reply:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v0 + 112);
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  v6 = v1;
  v5(v1);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  outlined destroy of RemoteConversationService.State(v3 + v2, type metadata accessor for SiriRequest);
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  v7 = *(v0 + 112);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t Conversation.prepare()()
{
  v53 = v0;
  v1 = v0[21];
  v2 = v0[15];
  v3 = v0[8];
  v4 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_state;
  swift_beginAccess();
  outlined init with copy of Conversation.State(v3 + v4, v2, type metadata accessor for Conversation.State);
  v49 = Conversation.State.assertAcceptedInput(function:)(v1, "prepare()", 9, 2);
  v50 = v4;
  v51 = v3;
  outlined destroy of Conversation.State(v0[15], type metadata accessor for Conversation.State);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v6 = v0[20];
  v5 = v0[21];
  v7 = v0[8];
  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.executor);
  outlined init with copy of Conversation.State(v5, v6, type metadata accessor for SiriRequest);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[20];
  if (v11)
  {
    v13 = v0[16];
    v14 = v0[11];
    v15 = v0[12];
    v16 = v0[10];
    v45 = v0[8];
    v17 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v52[0] = v47;
    *v17 = 136315394;
    v18 = v12 + *(v13 + 20);
    Input.identifier.getter();
    _s14SiriKitRuntime22CorrectionsUndoManagerCAcA0D6EngineAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    (*(v14 + 8))(v15, v16);
    outlined destroy of Conversation.State(v12, type metadata accessor for SiriRequest);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, v52);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    v23 = ObjectIdentifier.debugDescription.getter();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v52);

    *(v17 + 14) = v25;
    _os_log_impl(&dword_1DC659000, v9, v10, "[Conversation] Submits speculation task %s. %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v47, -1, -1);
    MEMORY[0x1E12A2F50](v17, -1, -1);
  }

  else
  {

    outlined destroy of Conversation.State(v12, type metadata accessor for SiriRequest);
  }

  v26 = v0[21];
  v27 = v0[18];
  v28 = v0[19];
  v29 = v0[17];
  v30 = v0[14];
  v44 = v0[20];
  v46 = v0[15];
  v43 = v0[13];
  v48 = v0[12];
  v32 = v0[8];
  v31 = v0[9];
  v41 = v26;
  v42 = v31;
  v33 = type metadata accessor for TaskPriority();
  (*(*(v33 - 8) + 56))(v31, 1, 1, v33);
  outlined init with copy of Conversation.State(v26, v28, type metadata accessor for SiriRequest);
  v34 = _s14SiriKitRuntime22CorrectionsUndoManagerCAcA0D6EngineAAWlTm_0(&lazy protocol witness table cache variable for type Conversation and conformance Conversation, type metadata accessor for Conversation);
  v35 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v36 = (v27 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  *(v37 + 16) = v32;
  *(v37 + 24) = v34;
  outlined init with take of Conversation.State(v28, v37 + v35, type metadata accessor for SiriRequest);
  *(v37 + v36) = v32;
  *(v37 + ((v36 + 15) & 0xFFFFFFFFFFFFFFF8)) = v49;
  swift_retain_n();

  v38 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC14SiriKitRuntime4NodeCyAH9FlowAgentCGSg_Tt2g5(0, 0, v42, &async function pointer to partial apply for closure #1 in Conversation.prepare(), v37);
  outlined destroy of Conversation.State(v41, type metadata accessor for SiriRequest);
  *v30 = v38;
  v30[1] = v49;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  outlined assign with take of Conversation.State(v30, v51 + v50);
  swift_endAccess();

  v39 = v0[1];

  return v39();
}

{
  v1[8] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v1[10] = v3;
  v4 = *(v3 - 8);
  v1[11] = v4;
  v5 = *(v4 + 64) + 15;
  v1[12] = swift_task_alloc();
  v6 = type metadata accessor for Conversation.State(0);
  v1[13] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v8 = type metadata accessor for SiriRequest(0);
  v1[16] = v8;
  v9 = *(v8 - 8);
  v1[17] = v9;
  v1[18] = *(v9 + 64);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](Conversation.prepare(), v0, 0);
}

uint64_t sub_1DC6E3B88()
{
  v1 = type metadata accessor for SiriRequest(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v0 + v3 + 8);

  v8 = v1[5];
  v9 = type metadata accessor for Input();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  v10 = *(v0 + v3 + v1[6]);

  v11 = *(v0 + v3 + v1[7]);

  v12 = (v0 + v3 + v1[8]);
  v13 = v12[1];
  if (v13 >> 60 != 15)
  {
    outlined consume of Data._Representation(*v12, v13);
  }

  v14 = *(v6 + v1[9]);

  v15 = *(v6 + v1[10]);

  v16 = *(v6 + v1[11]);

  v17 = v6 + v1[12];
  v18 = type metadata accessor for SiriRequestIdentities(0);
  if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
  {
    v29 = v4;
    v19 = type metadata accessor for IdentifiedUser();
    v20 = *(v19 - 8);
    v21 = *(v20 + 48);
    if (!v21(v17, 1, v19))
    {
      (*(v20 + 8))(v17, v19);
    }

    v22 = *(v18 + 20);
    if (!v21(v17 + v22, 1, v19))
    {
      (*(v20 + 8))(v17 + v22, v19);
    }

    v23 = *(v17 + *(v18 + 24));

    v4 = v29;
  }

  v24 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v0 + v24);

  v27 = *(v0 + v25);

  return MEMORY[0x1EEE6BDD0](v0, v25 + 8, v2 | 7);
}

uint64_t closure #1 in Conversation.prepare()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a1;
  v6[6] = a4;
  v8 = type metadata accessor for UUID();
  v6[9] = v8;
  v9 = *(v8 - 8);
  v6[10] = v9;
  v10 = *(v9 + 64) + 15;
  v6[11] = swift_task_alloc();
  v11 = type metadata accessor for SiriRequest(0);
  v6[12] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in Conversation.prepare(), a5, 0);
}

uint64_t closure #1 in Conversation.prepare()()
{
  v29 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[6];
  v3 = v0[7];
  v4 = type metadata accessor for Logger();
  v0[15] = __swift_project_value_buffer(v4, static Logger.executor);
  outlined init with copy of Conversation.State(v2, v1, type metadata accessor for SiriRequest);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[14];
  if (v7)
  {
    v10 = v0[11];
    v9 = v0[12];
    v12 = v0[9];
    v11 = v0[10];
    v26 = v0[7];
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v13 = 136315394;
    v14 = v8 + *(v9 + 20);
    Input.identifier.getter();
    _s14SiriKitRuntime22CorrectionsUndoManagerCAcA0D6EngineAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    outlined destroy of Conversation.State(v8, type metadata accessor for SiriRequest);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v28);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2080;
    v19 = ObjectIdentifier.debugDescription.getter();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v28);

    *(v13 + 14) = v21;
    _os_log_impl(&dword_1DC659000, v5, v6, "[Conversation] Running queued speculation task %s. %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v27, -1, -1);
    MEMORY[0x1E12A2F50](v13, -1, -1);
  }

  else
  {

    outlined destroy of Conversation.State(v8, type metadata accessor for SiriRequest);
  }

  v22 = swift_task_alloc();
  v0[16] = v22;
  *v22 = v0;
  v22[1] = closure #1 in Conversation.prepare();
  v24 = v0[7];
  v23 = v0[8];

  return Conversation.speculativelyExecute(from:)(v23);
}

{
  v28 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 56);
  outlined init with copy of Conversation.State(*(v0 + 48), *(v0 + 104), type metadata accessor for SiriRequest);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 104);
  if (v5)
  {
    v8 = *(v0 + 88);
    v7 = *(v0 + 96);
    v10 = *(v0 + 72);
    v9 = *(v0 + 80);
    v25 = *(v0 + 56);
    v11 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v11 = 136315394;
    v12 = v6 + *(v7 + 20);
    Input.identifier.getter();
    _s14SiriKitRuntime22CorrectionsUndoManagerCAcA0D6EngineAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v9 + 8))(v8, v10);
    outlined destroy of Conversation.State(v6, type metadata accessor for SiriRequest);
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v27);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    v17 = ObjectIdentifier.debugDescription.getter();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v27);

    *(v11 + 14) = v19;
    _os_log_impl(&dword_1DC659000, v3, v4, "[Conversation] Done running queued speculation task %s. %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v26, -1, -1);
    MEMORY[0x1E12A2F50](v11, -1, -1);
  }

  else
  {

    outlined destroy of Conversation.State(v6, type metadata accessor for SiriRequest);
  }

  v21 = *(v0 + 104);
  v20 = *(v0 + 112);
  v22 = *(v0 + 88);
  **(v0 + 40) = *(v0 + 24);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t Conversation.speculativelyExecute(from:)()
{
  v1 = *(*v0 + 488);
  v2 = *(*v0 + 280);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](Conversation.speculativelyExecute(from:), v2, 0);
}

{
  v1 = *(v0 + 600);
  v2 = *(v0 + 360);
  v3 = *(v0 + 336);
  v4 = *(v0 + 312);
  v5 = *(v0 + 320);
  PrepareResponse.type.getter();
  v6 = (*(v5 + 88))(v3, v4);
  if (v6 == v1)
  {
    v7 = *(v0 + 472);
    v8 = *(v0 + 360);
    v9 = (*(v0 + 280) + *(v0 + 440));
    v10 = *v9;
    v11 = v9[1];
    *(v0 + 496) = v11;

    v12 = PrepareResponse.next.getter();
    *(v0 + 504) = v12;
    v13 = PrepareResponse.onChildFlowCompletion.getter();
    *(v0 + 512) = v13;
    v14 = swift_task_alloc();
    *(v0 + 520) = v14;
    *v14 = v0;
    v14[1] = Conversation.speculativelyExecute(from:);
    v15 = *(v0 + 472);
    v16 = *(v0 + 280);

    return Conversation.push(rcId:parentNode:flow:continuedTasks:parentEnvironment:completion:)(v10, v11, v15, v12, 0, 0, v13);
  }

  else if (v6 == *(v0 + 604))
  {
    v18 = *(v0 + 480);

    return MEMORY[0x1EEE6DFA0](Conversation.speculativelyExecute(from:), v18, 0);
  }

  else
  {
    v19 = *(v0 + 432);
    v20 = *(v0 + 360);
    v22 = *(v0 + 320);
    v21 = *(v0 + 328);
    v23 = *(v0 + 312);
    v24 = (*(v0 + 280) + *(v0 + 440));
    static ConversationSELFHelper.shared.getter();
    v25 = *v24;
    v26 = v24[1];

    dispatch thunk of ConversationSELFHelper.emitEagerExecutionContextFailed(rcId:reason:)();

    _StringGuts.grow(_:)(33);
    *(v0 + 248) = 0;
    *(v0 + 256) = 0xE000000000000000;
    v27 = (v0 + 248);
    MEMORY[0x1E12A1580](0xD00000000000001FLL, 0x80000001DCA7E890);
    PrepareResponse.type.getter();
    _print_unlocked<A, B>(_:_:)();
    (*(v22 + 8))(v21, v23);
    v28 = *v27;
    v29 = v27[1];

    return specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(v28, v29, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/Runtime/Conversation.swift", 95, 2, 438);
  }
}

{
  v1 = *(*v0 + 520);
  v2 = *(*v0 + 512);
  v3 = *(*v0 + 504);
  v4 = *(*v0 + 496);
  v5 = *(*v0 + 280);
  v7 = *v0;

  return MEMORY[0x1EEE6DFA0](Conversation.speculativelyExecute(from:), v5, 0);
}

{
  v1 = v0[45];
  if (PrepareResponse.next.getter())
  {
    v3 = v0[59];
    v2 = v0[60];
  }

  else
  {
    v4 = v0[45];
    if (PrepareResponse.needsExecute.getter())
    {
      v5 = v0[56];
      v6 = v0[49];
      v7 = v0[46];
      v8 = v0[35];
      swift_beginAccess();
      outlined init with copy of Conversation.State(v8 + v5, v6, type metadata accessor for Conversation.State);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v9 = v0[59];
        v10 = v0[56];
        v11 = v0[46];
        v12 = v0[35];
        outlined destroy of Conversation.State(v12 + v10, type metadata accessor for Conversation.State);
        *(v12 + v10) = v9;
        swift_storeEnumTagMultiPayload();
      }

      v14 = v0[59];
      v13 = v0[60];
      v15 = v0[54];
      v17 = v0[44];
      v16 = v0[45];
      v18 = v0[43];
      v19 = (v0[35] + v0[55]);
      outlined destroy of Conversation.State(v0[49], type metadata accessor for Conversation.State);
      swift_endAccess();
      static ConversationSELFHelper.shared.getter();
      v20 = *v19;
      v21 = v19[1];

      dispatch thunk of ConversationSELFHelper.emitEagerExecutionContextEnded(rcId:)();

      (*(v17 + 8))(v16, v18);
      v74 = v0[59];
      goto LABEL_18;
    }

    v23 = v0[59];
    v22 = v0[60];
  }

  v24 = v0[58];
  v25 = v0[56];
  v26 = v0[52];
  v27 = v0[53];
  v28 = v0[46];
  v29 = v0[35];
  (*(v0[44] + 8))(v0[45], v0[43]);
  outlined init with copy of Conversation.State(v29 + v25, v27, type metadata accessor for Conversation.State);
  outlined init with take of Conversation.State(v27, v26, type metadata accessor for Conversation.State);
  LODWORD(v27) = (swift_getEnumCaseMultiPayload() - 1) & 0xFFFFFFFD;
  outlined destroy of Conversation.State(v26, type metadata accessor for Conversation.State);
  v30 = v0[35];
  if (v27 || (v0[58] = v24, (*(v30 + v0[57]) & 1) != 0))
  {
LABEL_13:
    v35 = v0[46];
    outlined init with copy of Conversation.State(v30 + v0[56], v0[47], type metadata accessor for Conversation.State);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v36 = v0[57];
      v37 = v0[35];
      outlined destroy of Conversation.State(v0[47], type metadata accessor for Conversation.State);
      if (*(v37 + v36) == 1)
      {
        v38 = v0[56];
        v39 = v0[48];
        v40 = v0[46];
        v41 = v0[35];
        *v39 = 0;
        swift_storeEnumTagMultiPayload();
        swift_beginAccess();
        outlined assign with take of Conversation.State(v39, v41 + v38);
        swift_endAccess();
      }
    }

    else
    {
      outlined destroy of Conversation.State(v0[47], type metadata accessor for Conversation.State);
    }

    v74 = 0;
LABEL_18:
    v43 = v0[52];
    v42 = v0[53];
    v45 = v0[50];
    v44 = v0[51];
    v47 = v0[48];
    v46 = v0[49];
    v48 = v0[47];
    v49 = v0[45];
    v50 = v0[41];
    v51 = v0[42];
    v72 = v0[38];

    v52 = v0[1];

    return v52(v74);
  }

  v31 = v0[50];
  v32 = v0[51];
  v33 = v0[46];
  outlined init with copy of Conversation.State(v30 + v0[56], v32, type metadata accessor for Conversation.State);
  outlined init with take of Conversation.State(v32, v31, type metadata accessor for Conversation.State);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v30 = v0[35];
    goto LABEL_13;
  }

  outlined destroy of Conversation.State(v0[50], type metadata accessor for Conversation.State);
  v34 = static Task<>.isCancelled.getter();
  v30 = v0[35];
  if (v34)
  {
    goto LABEL_13;
  }

  v54 = (*(**(v30 + 112) + 216))();
  if (v54)
  {
    v0[59] = v54;
    v0[60] = *(v54 + 16);

    v55 = swift_task_alloc();
    v0[61] = v55;
    *v55 = v0;
    v55[1] = Conversation.speculativelyExecute(from:);
    v56 = v0[45];

    return FlowAgent.prepare()(v56);
  }

  else
  {
    v57 = v0[54];
    v58 = v0[52];
    v59 = v0[53];
    v60 = v0[50];
    v61 = v0[51];
    v62 = v0[48];
    v63 = v0[49];
    v69 = v0[47];
    v70 = v0[45];
    v75 = v0[41];
    v64 = (v0[35] + v0[55]);
    v71 = v0[42];
    v73 = v0[38];
    static ConversationSELFHelper.shared.getter();
    v65 = *v64;
    v66 = v64[1];

    dispatch thunk of ConversationSELFHelper.emitEagerExecutionContextFailed(rcId:reason:)();

    lazy protocol witness table accessor for type IllegalStateError and conformance IllegalStateError();
    swift_allocError();
    *v67 = 0xD00000000000002FLL;
    v67[1] = 0x80000001DCA7E9D0;
    swift_willThrow();

    v68 = v0[1];

    return v68();
  }
}

{
  v73 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 280);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 280);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v72[0] = v7;
    *v6 = 136315394;
    v8 = (v5 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_rcId);
    swift_beginAccess();
    v10 = *v8;
    v9 = v8[1];

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, v72);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2080;
    *(v6 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v5 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_pluginId), *(v5 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_pluginId + 8), v72);
    _os_log_impl(&dword_1DC659000, v3, v4, "[Conversation] Speculatively executing rcId: %s, plugin: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v7, -1, -1);
    MEMORY[0x1E12A2F50](v6, -1, -1);
  }

  v12 = *(v0 + 416);
  v13 = *(v0 + 424);
  v69 = *(v0 + 368);
  v15 = *(v0 + 272);
  v14 = *(v0 + 280);
  *(v0 + 432) = type metadata accessor for ConversationSELFHelper();
  static ConversationSELFHelper.shared.getter();
  v16 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_rcId;
  *(v0 + 440) = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_rcId;
  v17 = (v14 + v16);
  swift_beginAccess();
  v19 = *v17;
  v18 = v17[1];
  v20 = *(v14 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_pluginId);
  v21 = *(v14 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_pluginId + 8);

  v22 = v15;
  dispatch thunk of ConversationSELFHelper.emitEagerExecutionContextStarted(rcId:fromPlugin:)();

  v23 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_state;
  v24 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_isPaused;
  *(v0 + 448) = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_state;
  *(v0 + 456) = v24;

  swift_beginAccess();
  swift_beginAccess();
  outlined init with copy of Conversation.State(v14 + v23, v13, type metadata accessor for Conversation.State);
  outlined init with take of Conversation.State(v13, v12, type metadata accessor for Conversation.State);
  LODWORD(v24) = (swift_getEnumCaseMultiPayload() - 1) & 0xFFFFFFFD;
  outlined destroy of Conversation.State(v12, type metadata accessor for Conversation.State);
  if (v24)
  {
    goto LABEL_9;
  }

  v25 = MEMORY[0x1E69CFFE0];
  *(v0 + 600) = *MEMORY[0x1E69CFFD8];
  *(v0 + 604) = *v25;
  *(v0 + 608) = *MEMORY[0x1E69CFB18];
  *(v0 + 464) = 0;
  v26 = *(v0 + 280);
  if (*(v26 + *(v0 + 456)) & 1) != 0 || (v28 = *(v0 + 400), v27 = *(v0 + 408), v29 = *(v0 + 368), outlined init with copy of Conversation.State(v26 + *(v0 + 448), v27, type metadata accessor for Conversation.State), outlined init with take of Conversation.State(v27, v28, type metadata accessor for Conversation.State), swift_getEnumCaseMultiPayload() == 5) || (outlined destroy of Conversation.State(*(v0 + 400), type metadata accessor for Conversation.State), (static Task<>.isCancelled.getter()))
  {
LABEL_9:
    v30 = *(v0 + 368);
    outlined init with copy of Conversation.State(*(v0 + 280) + *(v0 + 448), *(v0 + 376), type metadata accessor for Conversation.State);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v31 = *(v0 + 456);
      v32 = *(v0 + 280);
      outlined destroy of Conversation.State(*(v0 + 376), type metadata accessor for Conversation.State);
      if (*(v32 + v31) == 1)
      {
        v33 = *(v0 + 448);
        v34 = *(v0 + 384);
        v35 = *(v0 + 368);
        v36 = *(v0 + 280);
        *v34 = v22;
        swift_storeEnumTagMultiPayload();
        swift_beginAccess();

        outlined assign with take of Conversation.State(v34, v36 + v33);
        swift_endAccess();
        v70 = v22;
LABEL_15:
        v39 = *(v0 + 416);
        v38 = *(v0 + 424);
        v41 = *(v0 + 400);
        v40 = *(v0 + 408);
        v43 = *(v0 + 384);
        v42 = *(v0 + 392);
        v44 = *(v0 + 376);
        v45 = *(v0 + 360);
        v46 = *(v0 + 328);
        v47 = *(v0 + 336);
        v67 = *(v0 + 304);

        v48 = *(v0 + 8);

        return v48(v70);
      }
    }

    else
    {
      v37 = *(v0 + 376);

      outlined destroy of Conversation.State(v37, type metadata accessor for Conversation.State);
    }

    v70 = 0;
    goto LABEL_15;
  }

  if (v22 || (v22 = (*(**(*(v0 + 280) + 112) + 216))()) != 0)
  {
    *(v0 + 472) = v22;
    *(v0 + 480) = *(v22 + 16);

    v50 = swift_task_alloc();
    *(v0 + 488) = v50;
    *v50 = v0;
    v50[1] = Conversation.speculativelyExecute(from:);
    v51 = *(v0 + 360);

    return FlowAgent.prepare()(v51);
  }

  else
  {
    v52 = *(v0 + 432);
    v53 = *(v0 + 416);
    v54 = *(v0 + 424);
    v55 = *(v0 + 400);
    v56 = *(v0 + 408);
    v57 = *(v0 + 384);
    v58 = *(v0 + 392);
    v64 = *(v0 + 376);
    v65 = *(v0 + 360);
    v71 = *(v0 + 328);
    v59 = (*(v0 + 280) + *(v0 + 440));
    v66 = *(v0 + 336);
    v68 = *(v0 + 304);
    static ConversationSELFHelper.shared.getter();
    v60 = *v59;
    v61 = v59[1];

    dispatch thunk of ConversationSELFHelper.emitEagerExecutionContextFailed(rcId:reason:)();

    lazy protocol witness table accessor for type IllegalStateError and conformance IllegalStateError();
    swift_allocError();
    *v62 = 0xD00000000000002FLL;
    v62[1] = 0x80000001DCA7E9D0;
    swift_willThrow();

    v63 = *(v0 + 8);

    return v63();
  }
}

{
  v1 = v0[35];
  v0[66] = *(v0[60] + 112);
  return MEMORY[0x1EEE6DFA0](Conversation.speculativelyExecute(from:), v1, 0);
}

{
  v1 = v0[66];
  v2 = v0[60];
  v0[67] = dispatch thunk of AnyFlow.siriEnvironment.getter();

  return MEMORY[0x1EEE6DFA0](Conversation.speculativelyExecute(from:), v2, 0);
}

{
  v1 = *(v0 + 480);
  v2 = *(v0 + 464);
  type metadata accessor for SiriEnvironment();
  v3 = *(v1 + 112);
  *(v0 + 264) = v3;
  type metadata accessor for AnyFlow();
  _s14SiriKitRuntime22CorrectionsUndoManagerCAcA0D6EngineAAWlTm_0(&lazy protocol witness table cache variable for type AnyFlow and conformance AnyFlow, MEMORY[0x1E69CF990]);
  swift_retain_n();
  static SiriEnvironment.withTaskLocalEnvironment<A, B>(for:_:)();
  *(v0 + 544) = v2;

  if (*(v1 + 120))
  {
    outlined init with copy of Any(v0 + 16, v0 + 48);

    dispatch thunk of AnyChildCompletion.completion(exitValue:)();

    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 48, &_sypSgMd, &_sypSgMR);
  }

  v4 = *(v0 + 608);
  v6 = *(v0 + 296);
  v5 = *(v0 + 304);
  v8 = *(v0 + 280);
  v7 = *(v0 + 288);
  *v5 = v3;
  outlined init with copy of Any(v0 + 16, (v5 + 1));
  (*(v6 + 104))(v5, v4, v7);
  static FlowTrace.trace(event:)();
  (*(v6 + 8))(v5, v7);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x1EEE6DFA0](Conversation.speculativelyExecute(from:), v8, 0);
}

{
  v1 = v0[45];
  v2 = PrepareResponse.next.getter();
  v0[69] = v2;
  if (v2)
  {
    v3 = v0[59];
    v4 = swift_task_alloc();
    v0[70] = v4;
    *v4 = v0;
    v4[1] = Conversation.speculativelyExecute(from:);
    v5 = v0[35];

    return Conversation.removeNode(node:)(v3);
  }

  v7 = v0[56];
  v8 = v0[48];
  v9 = v0[46];
  v10 = v0[35];
  *v8 = v0[59];
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();

  outlined assign with take of Conversation.State(v8, v10 + v7);
  swift_endAccess();
  v11 = v0[67];
  v13 = v0[59];
  v12 = v0[60];
  v14 = v0[54];
  v15 = (v0[35] + v0[55]);
  static ConversationSELFHelper.shared.getter();
  v16 = *v15;
  v17 = v15[1];

  dispatch thunk of ConversationSELFHelper.emitEagerExecutionContextEnded(rcId:)();

  v18 = v0[68];
  v19 = v0[56];
  v20 = v0[52];
  v21 = v0[53];
  v22 = v0[46];
  v23 = v0[35];
  (*(v0[44] + 8))(v0[45], v0[43]);
  outlined init with copy of Conversation.State(v23 + v19, v21, type metadata accessor for Conversation.State);
  outlined init with take of Conversation.State(v21, v20, type metadata accessor for Conversation.State);
  LODWORD(v21) = (swift_getEnumCaseMultiPayload() - 1) & 0xFFFFFFFD;
  outlined destroy of Conversation.State(v20, type metadata accessor for Conversation.State);
  v24 = v0[35];
  if (v21)
  {
    goto LABEL_10;
  }

  v0[58] = v18;
  if (*(v24 + v0[57]))
  {
    goto LABEL_10;
  }

  v25 = v0[50];
  v26 = v0[51];
  v27 = v0[46];
  outlined init with copy of Conversation.State(v24 + v0[56], v26, type metadata accessor for Conversation.State);
  outlined init with take of Conversation.State(v26, v25, type metadata accessor for Conversation.State);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v24 = v0[35];
LABEL_10:
    v29 = v0[46];
    outlined init with copy of Conversation.State(v24 + v0[56], v0[47], type metadata accessor for Conversation.State);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v30 = v0[57];
      v31 = v0[35];
      outlined destroy of Conversation.State(v0[47], type metadata accessor for Conversation.State);
      if (*(v31 + v30) == 1)
      {
        v32 = v0[56];
        v33 = v0[48];
        v34 = v0[46];
        v35 = v0[35];
        *v33 = 0;
        swift_storeEnumTagMultiPayload();
        swift_beginAccess();
        outlined assign with take of Conversation.State(v33, v35 + v32);
        swift_endAccess();
      }
    }

    else
    {
      outlined destroy of Conversation.State(v0[47], type metadata accessor for Conversation.State);
    }

    v37 = v0[52];
    v36 = v0[53];
    v39 = v0[50];
    v38 = v0[51];
    v41 = v0[48];
    v40 = v0[49];
    v42 = v0[47];
    v43 = v0[45];
    v45 = v0[41];
    v44 = v0[42];
    v66 = v0[38];

    v46 = v0[1];

    return v46(0);
  }

  outlined destroy of Conversation.State(v0[50], type metadata accessor for Conversation.State);
  v28 = static Task<>.isCancelled.getter();
  v24 = v0[35];
  if (v28)
  {
    goto LABEL_10;
  }

  v47 = (*(**(v24 + 112) + 216))();
  if (v47)
  {
    v0[59] = v47;
    v0[60] = *(v47 + 16);

    v48 = swift_task_alloc();
    v0[61] = v48;
    *v48 = v0;
    v48[1] = Conversation.speculativelyExecute(from:);
    v49 = v0[45];

    return FlowAgent.prepare()(v49);
  }

  else
  {
    v50 = v0[54];
    v51 = v0[52];
    v52 = v0[53];
    v53 = v0[50];
    v54 = v0[51];
    v55 = v0[48];
    v56 = v0[49];
    v62 = v0[47];
    v63 = v0[45];
    v67 = v0[41];
    v57 = (v0[35] + v0[55]);
    v64 = v0[42];
    v65 = v0[38];
    static ConversationSELFHelper.shared.getter();
    v58 = *v57;
    v59 = v57[1];

    dispatch thunk of ConversationSELFHelper.emitEagerExecutionContextFailed(rcId:reason:)();

    lazy protocol witness table accessor for type IllegalStateError and conformance IllegalStateError();
    swift_allocError();
    *v60 = 0xD00000000000002FLL;
    v60[1] = 0x80000001DCA7E9D0;
    swift_willThrow();

    v61 = v0[1];

    return v61();
  }
}

{
  v1 = *(*v0 + 560);
  v2 = *(*v0 + 280);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](Conversation.speculativelyExecute(from:), v2, 0);
}

{
  v1 = v0[69];
  v2 = v0[67];
  v3 = v0[60];
  v4 = v0[45];
  v5 = (v0[35] + v0[55]);
  v6 = *v5;
  v7 = v5[1];
  v0[71] = v7;
  v8 = *(v3 + 152);
  v0[72] = v8;

  v9 = PrepareResponse.onChildFlowCompletion.getter();
  v0[73] = v9;
  v10 = swift_task_alloc();
  v0[74] = v10;
  *v10 = v0;
  v10[1] = Conversation.speculativelyExecute(from:);
  v11 = v0[69];
  v12 = v0[35];

  return Conversation.push(rcId:parentNode:flow:continuedTasks:parentEnvironment:completion:)(v6, v7, 0, v11, v8, v2, v9);
}

{
  v1 = *(*v0 + 592);
  v2 = *(*v0 + 584);
  v3 = *(*v0 + 576);
  v4 = *(*v0 + 568);
  v5 = *(*v0 + 552);
  v6 = *(*v0 + 536);
  v7 = *(*v0 + 280);
  v9 = *v0;

  return MEMORY[0x1EEE6DFA0](Conversation.speculativelyExecute(from:), v7, 0);
}

{
  v1 = v0[69];

  v2 = v0[67];
  v4 = v0[59];
  v3 = v0[60];
  v5 = v0[54];
  v6 = (v0[35] + v0[55]);
  static ConversationSELFHelper.shared.getter();
  v7 = *v6;
  v8 = v6[1];

  dispatch thunk of ConversationSELFHelper.emitEagerExecutionContextEnded(rcId:)();

  v9 = v0[68];
  v10 = v0[56];
  v11 = v0[52];
  v12 = v0[53];
  v13 = v0[46];
  v14 = v0[35];
  (*(v0[44] + 8))(v0[45], v0[43]);
  outlined init with copy of Conversation.State(v14 + v10, v12, type metadata accessor for Conversation.State);
  outlined init with take of Conversation.State(v12, v11, type metadata accessor for Conversation.State);
  LODWORD(v12) = (swift_getEnumCaseMultiPayload() - 1) & 0xFFFFFFFD;
  outlined destroy of Conversation.State(v11, type metadata accessor for Conversation.State);
  v15 = v0[35];
  if (v12)
  {
    goto LABEL_6;
  }

  v0[58] = v9;
  if (*(v15 + v0[57]))
  {
    goto LABEL_6;
  }

  v16 = v0[50];
  v17 = v0[51];
  v18 = v0[46];
  outlined init with copy of Conversation.State(v15 + v0[56], v17, type metadata accessor for Conversation.State);
  outlined init with take of Conversation.State(v17, v16, type metadata accessor for Conversation.State);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v15 = v0[35];
LABEL_6:
    v20 = v0[46];
    outlined init with copy of Conversation.State(v15 + v0[56], v0[47], type metadata accessor for Conversation.State);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v21 = v0[57];
      v22 = v0[35];
      outlined destroy of Conversation.State(v0[47], type metadata accessor for Conversation.State);
      if (*(v22 + v21) == 1)
      {
        v23 = v0[56];
        v24 = v0[48];
        v25 = v0[46];
        v26 = v0[35];
        *v24 = 0;
        swift_storeEnumTagMultiPayload();
        swift_beginAccess();
        outlined assign with take of Conversation.State(v24, v26 + v23);
        swift_endAccess();
      }
    }

    else
    {
      outlined destroy of Conversation.State(v0[47], type metadata accessor for Conversation.State);
    }

    v28 = v0[52];
    v27 = v0[53];
    v30 = v0[50];
    v29 = v0[51];
    v32 = v0[48];
    v31 = v0[49];
    v33 = v0[47];
    v34 = v0[45];
    v36 = v0[41];
    v35 = v0[42];
    v58 = v0[38];

    v37 = v0[1];

    return v37(0);
  }

  outlined destroy of Conversation.State(v0[50], type metadata accessor for Conversation.State);
  v19 = static Task<>.isCancelled.getter();
  v15 = v0[35];
  if (v19)
  {
    goto LABEL_6;
  }

  v39 = (*(**(v15 + 112) + 216))();
  if (v39)
  {
    v0[59] = v39;
    v0[60] = *(v39 + 16);

    v40 = swift_task_alloc();
    v0[61] = v40;
    *v40 = v0;
    v40[1] = Conversation.speculativelyExecute(from:);
    v41 = v0[45];

    return FlowAgent.prepare()(v41);
  }

  else
  {
    v42 = v0[54];
    v43 = v0[52];
    v44 = v0[53];
    v45 = v0[50];
    v46 = v0[51];
    v47 = v0[48];
    v48 = v0[49];
    v54 = v0[47];
    v55 = v0[45];
    v59 = v0[41];
    v49 = (v0[35] + v0[55]);
    v56 = v0[42];
    v57 = v0[38];
    static ConversationSELFHelper.shared.getter();
    v50 = *v49;
    v51 = v49[1];

    dispatch thunk of ConversationSELFHelper.emitEagerExecutionContextFailed(rcId:reason:)();

    lazy protocol witness table accessor for type IllegalStateError and conformance IllegalStateError();
    swift_allocError();
    *v52 = 0xD00000000000002FLL;
    v52[1] = 0x80000001DCA7E9D0;
    swift_willThrow();

    v53 = v0[1];

    return v53();
  }
}

uint64_t protocol witness for Conversational.commit() in conformance Conversation(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return Conversation.commit()(a1);
}

uint64_t Conversation.commit()(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for OSSignpostID();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v7 = type metadata accessor for Conversation.State(0);
  v2[14] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](Conversation.commit(), v1, 0);
}

uint64_t Conversation.commit()()
{
  v54 = v0;
  v1 = *(v0[9] + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_jetsamHelper);
  v2 = v1[4];
  OS_dispatch_semaphore.wait()();
  closure #1 in JetsamHelper.ensureJetsamTransaction()(v1);
  v3 = v0[9];
  OS_dispatch_semaphore.signal()();
  v4 = *(v3 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_rootEnvironment);
  v5 = SiriEnvironment.currentProcess.getter();
  v6 = dispatch thunk of CurrentProcess.idleTracker.getter();

  if (v6)
  {
    v7 = dispatch thunk of IdleTracker.track(name:)();
  }

  else
  {
    v7 = 0;
  }

  v8 = v0[9];
  v9 = *(v8 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_idleTrackerActivity);
  *(v8 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_idleTrackerActivity) = v7;

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v10 = v0[9];
  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.executor);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = v0[9];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v52 = v16;
    *v15 = 136315138;
    v17 = ObjectIdentifier.debugDescription.getter();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v52);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_1DC659000, v12, v13, "[Conversation] Submits commit task. %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x1E12A2F50](v16, -1, -1);
    MEMORY[0x1E12A2F50](v15, -1, -1);
  }

  v20 = v0[16];
  v21 = v0[14];
  v22 = v0[9];
  v23 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_state;
  swift_beginAccess();
  outlined init with copy of Conversation.State(v22 + v23, v20, type metadata accessor for Conversation.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:
      lazy protocol witness table accessor for type CancelledError and conformance CancelledError();
      swift_allocError();
      *v39 = 0xD00000000000002FLL;
      v39[1] = 0x80000001DCA7E730;
      swift_willThrow();
      break;
    case 2:
      v28 = 0;
      v27 = *v0[16];
      goto LABEL_13;
    case 1:
      v25 = v0[16];
      v26 = *v25;
      v27 = v25[1];

LABEL_13:
      v0[17] = v27;
      v0[18] = v28;
      v29 = v0[15];
      v50 = v28;
      v51 = v0[14];
      v30 = v0[13];
      v31 = v0[9];
      v32 = type metadata accessor for TaskPriority();
      v33 = *(*(v32 - 8) + 56);

      v33(v30, 1, 1, v32);
      v34 = _s14SiriKitRuntime22CorrectionsUndoManagerCAcA0D6EngineAAWlTm_0(&lazy protocol witness table cache variable for type Conversation and conformance Conversation, type metadata accessor for Conversation);
      v35 = swift_allocObject();
      v35[2] = v31;
      v35[3] = v34;
      v35[4] = v31;
      v35[5] = v50;
      v35[6] = v27;
      swift_retain_n();
      v36 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC14SiriKitRuntime24ConversationCommitResultO_Tt2g5(0, 0, v30, &async function pointer to partial apply for closure #1 in Conversation.commit(), v35);
      v0[19] = v36;
      *v29 = v36;
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();

      outlined assign with take of Conversation.State(v29, v22 + v23);
      swift_endAccess();
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v37 = v0[12];
      v38 = type metadata accessor for OSSignposter();
      v0[20] = __swift_project_value_buffer(v38, static Signposter.executor);
      static OSSignpostID.exclusive.getter();

      return MEMORY[0x1EEE6DFA0](Conversation.commit(), 0, 0);
    default:
      v40 = v0[16];
      v52 = 0;
      v53 = 0xE000000000000000;
      _StringGuts.grow(_:)(59);
      MEMORY[0x1E12A1580](0x6320746F6E6E6143, 0xEC000000206C6C61);
      MEMORY[0x1E12A1580](0x292874696D6D6F63, 0xE800000000000000);
      MEMORY[0x1E12A1580](0xD00000000000002DLL, 0x80000001DCA7E700);
      v41 = v52;
      v42 = v53;
      lazy protocol witness table accessor for type IllegalStateError and conformance IllegalStateError();
      swift_allocError();
      *v43 = v41;
      v43[1] = v42;
      swift_willThrow();
      outlined destroy of Conversation.State(v40, type metadata accessor for Conversation.State);
      break;
  }

  v45 = v0[15];
  v44 = v0[16];
  v47 = v0[12];
  v46 = v0[13];

  v48 = v0[1];

  return v48();
}

{
  v1 = v0[20];
  v0[21] = OSSignposter.beginIntervalTelemetryEnabled(_:id:)("execution_time", 14, 2, v0[12]);
  v2 = *(MEMORY[0x1E69E86A8] + 4);
  v3 = swift_task_alloc();
  v0[22] = v3;
  v4 = type metadata accessor for ConversationCommitResult();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v3 = v0;
  v3[1] = Conversation.commit();
  v6 = v0[19];
  v7 = v0[8];
  v8 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v7, v6, v4, v5, v8);
}

{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = Conversation.commit();
  }

  else
  {
    v3 = Conversation.commit();
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  $defer #1 <A>() in OSSignposter.withIntervalSignpostTelemetryEnabledAsync<A>(_:id:around:)(v0[20], "execution_time", 14, 2, v0[21]);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](Conversation.commit(), v4, 0);
}

{
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[15];
  v7 = v0[12];
  v6 = v0[13];

  v8 = v0[1];

  return v8();
}

{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  $defer #1 <A>() in OSSignposter.withIntervalSignpostTelemetryEnabledAsync<A>(_:id:around:)(v0[20], "execution_time", 14, 2, v0[21]);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](Conversation.commit(), v4, 0);
}

{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];

  v4 = v0[23];
  v6 = v0[15];
  v5 = v0[16];
  v8 = v0[12];
  v7 = v0[13];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1DC6E55BC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t OSSignposter.beginIntervalTelemetryEnabled(_:id:)(const char *a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = type metadata accessor for OSSignpostID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OSSignposter.logHandle.getter();
  v13 = static os_signpost_type_t.begin.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  if ((a3 & 1) == 0)
  {
    if (a1)
    {
LABEL_9:
      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_1DC659000, v12, v13, v16, a1, "enableTelemetry=YES", v15, 2u);
      MEMORY[0x1E12A2F50](v15, -1, -1);
LABEL_10:

      (*(v8 + 16))(v11, a4, v7);
      v17 = type metadata accessor for OSSignpostIntervalState();
      v18 = *(v17 + 48);
      v19 = *(v17 + 52);
      swift_allocObject();
      return OSSignpostIntervalState.init(id:isOpen:)();
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v21;
      goto LABEL_9;
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t closure #1 in Conversation.commit()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[12] = a1;
  v6[13] = a4;
  v8 = type metadata accessor for Conversation.State(0);
  v6[16] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v6[17] = swift_task_alloc();
  v10 = type metadata accessor for ConversationCommitResult();
  v6[18] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in Conversation.commit(), a4, 0);
}

uint64_t closure #1 in Conversation.commit()()
{
  v27 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = type metadata accessor for Logger();
  v0[21] = __swift_project_value_buffer(v2, static Logger.executor);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[13];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v26 = v7;
    *v6 = 136315138;
    v8 = ObjectIdentifier.debugDescription.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v26);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1DC659000, v3, v4, "[Conversation] Running queued commit task. %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1E12A2F50](v7, -1, -1);
    MEMORY[0x1E12A2F50](v6, -1, -1);
  }

  v11 = v0[14];
  if (v11)
  {
    v12 = v0[14];

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1DC659000, v13, v14, "[Conversation] Speculation task is still running, will wait for it to complete.", v15, 2u);
      MEMORY[0x1E12A2F50](v15, -1, -1);
    }

    v16 = *(MEMORY[0x1E69E86A8] + 4);
    v17 = swift_task_alloc();
    v0[22] = v17;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime4NodeCyAA9FlowAgentCGSgMd, &_s14SiriKitRuntime4NodeCyAA9FlowAgentCGSgMR);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    *v17 = v0;
    v17[1] = closure #1 in Conversation.commit();
    v20 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v0 + 11, v11, v18, v19, v20);
  }

  else
  {
    v21 = v0[15];
    v0[24] = v21;
    swift_retain_n();
    v22 = swift_task_alloc();
    v0[25] = v22;
    *v22 = v0;
    v22[1] = closure #1 in Conversation.commit();
    v23 = v0[12];
    v24 = v0[13];

    return Conversation.execute(from:)(v23, v21);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = v0;

  v5 = *(v2 + 192);
  v6 = *(v2 + 104);

  if (v0)
  {
    v7 = closure #1 in Conversation.commit();
  }

  else
  {
    v7 = closure #1 in Conversation.commit();
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

{
  v41 = v0;
  v1 = v0[26];
  static Task<>.checkCancellation()();
  if (v1)
  {
    v2 = v0[24];
    v3 = v0[16];
    v4 = v0[17];
    v5 = v0[12];
    v6 = v0[13];
    swift_storeEnumTagMultiPayload();
    v7 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_state;
    swift_beginAccess();
    outlined assign with take of Conversation.State(v4, v6 + v7);
    swift_endAccess();
    swift_willThrow();

    outlined destroy of Conversation.State(v5, type metadata accessor for ConversationCommitResult);
    v9 = v0[19];
    v8 = v0[20];
    v10 = v0[17];

    v11 = v0[1];
    goto LABEL_12;
  }

  v12 = v0[13];
  v13 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_isPaused;
  swift_beginAccess();
  v14 = *(v12 + v13);
  v15 = v0[21];
  if (v14 != 1)
  {
    outlined init with copy of Conversation.State(v0[12], v0[20], type metadata accessor for ConversationCommitResult);
    v16 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    v22 = os_log_type_enabled(v16, v21);
    v23 = v0[24];
    v24 = v0[20];
    if (!v22)
    {
      v32 = v0[24];

      outlined destroy of Conversation.State(v24, type metadata accessor for ConversationCommitResult);
      goto LABEL_11;
    }

    v26 = v0[18];
    v25 = v0[19];
    v20 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v40 = v27;
    *v20 = 136315138;
    outlined init with copy of Conversation.State(v24, v25, type metadata accessor for ConversationCommitResult);
    v28 = String.init<A>(describing:)();
    v30 = v29;
    outlined destroy of Conversation.State(v24, type metadata accessor for ConversationCommitResult);
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v40);

    *(v20 + 4) = v31;
    _os_log_impl(&dword_1DC659000, v16, v21, "[Conversation] commit done, result: %s.", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x1E12A2F50](v27, -1, -1);
    goto LABEL_8;
  }

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  v18 = os_log_type_enabled(v16, v17);
  v19 = v0[24];
  if (v18)
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1DC659000, v16, v17, "[Conversation] commit paused.", v20, 2u);
LABEL_8:
    MEMORY[0x1E12A2F50](v20, -1, -1);
  }

LABEL_11:
  v33 = v0[19];
  v34 = v0[20];
  v35 = v0[16];
  v36 = v0[17];
  v37 = v0[13];
  swift_storeEnumTagMultiPayload();
  v38 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_state;
  swift_beginAccess();
  outlined assign with take of Conversation.State(v36, v37 + v38);
  swift_endAccess();

  v11 = v0[1];
LABEL_12:

  return v11();
}

{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = *(v2 + 104);
  if (v0)
  {
    v6 = closure #1 in Conversation.commit();
  }

  else
  {
    v6 = closure #1 in Conversation.commit();
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v1 = v0[14];

  v2 = v0[11];
  v0[24] = v2;

  v3 = swift_task_alloc();
  v0[25] = v3;
  *v3 = v0;
  v3[1] = closure #1 in Conversation.commit();
  v4 = v0[12];
  v5 = v0[13];

  return Conversation.execute(from:)(v4, v2);
}

{
  v1 = v0[14];

  v2 = v0[23];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[17];

  v6 = v0[1];

  return v6();
}

{
  v1 = v0[24];

  v2 = v0[26];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[17];

  v6 = v0[1];

  return v6();
}

uint64_t RemoteConversationService.conversationWillExecute(flowPluginInfo:activeTasks:rcId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[18] = a4;
  v5[19] = v4;
  v5[16] = a2;
  v5[17] = a3;
  v5[15] = a1;
  v6 = *(*(type metadata accessor for RemoteConversationService.State(0) - 8) + 64) + 15;
  v5[20] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](RemoteConversationService.conversationWillExecute(flowPluginInfo:activeTasks:rcId:), v7, 0);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in RemoteConversationService.conversationWillExecute(flowPluginInfo:activeTasks:rcId:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in closure #1 in RemoteConversationService.conversationWillExecute(flowPluginInfo:activeTasks:rcId:)(a1, v4, v5, v6, (v1 + 5));
}

uint64_t closure #1 in closure #1 in closure #1 in RemoteConversationService.conversationWillExecute(flowPluginInfo:activeTasks:rcId:)()
{
  v18 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v7 = 136315394;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000039, 0x80000001DCA85AA0, &v17);
    *(v7 + 12) = 2112;
    *(v7 + 14) = v6;
    *v8 = v6;
    v10 = v6;
    _os_log_impl(&dword_1DC659000, v4, v5, "RemoteConversationService: %s sending loaded flow info to ExecutionBridge: %@", v7, 0x16u);
    outlined destroy of ReferenceResolutionClientProtocol?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1E12A2F50](v9, -1, -1);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }

  v12 = v0[2];
  v11 = v0[3];
  v13 = v11[3];
  v14 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v13);
  [(*(v14 + 104))(v13 v14)];
  swift_unknownObjectRelease();
  v15 = v0[1];

  return v15();
}

uint64_t @objc ServiceBridgeErrorHandlingProxy.close(withExecutionOutput:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v9 = a3;

  v11 = specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(v10, a4, a5);
  if (v11)
  {
    [v11 *a6];
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall FlowPluginInfo.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime14FlowPluginInfo_supportsOnDeviceNL);
  v4 = MEMORY[0x1E12A1410](0xD000000000000013, 0x80000001DCA83CC0);
  [(objc_class *)with.super.isa encodeBool:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime14FlowPluginInfo_isPersonalRequest);
  v6 = MEMORY[0x1E12A1410](0xD000000000000011, 0x80000001DCA83CE0);
  [(objc_class *)with.super.isa encodeBool:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime14FlowPluginInfo_sensitivityPolicy);
  v8 = MEMORY[0x1E12A1410](0xD000000000000011, 0x80000001DCA83D00);
  [(objc_class *)with.super.isa encodeInteger:v7 forKey:v8];
}

char *initializeWithCopy for SiriRequest(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = a3[5];
  v8 = type metadata accessor for Input();
  v9 = *(*(v8 - 8) + 16);

  v9(&a1[v7], &a2[v7], v8);
  v10 = a3[7];
  *&a1[a3[6]] = *&a2[a3[6]];
  *&a1[v10] = *&a2[v10];
  v11 = a3[8];
  v12 = &a1[v11];
  v13 = &a2[v11];
  v14 = *&a2[v11 + 8];

  if (v14 >> 60 == 15)
  {
    *v12 = *v13;
  }

  else
  {
    v15 = *v13;
    outlined copy of Data._Representation(*v13, v14);
    *v12 = v15;
    *(v12 + 1) = v14;
  }

  v16 = a3[10];
  *&a1[a3[9]] = *&a2[a3[9]];
  *&a1[v16] = *&a2[v16];
  v17 = a3[12];
  *&a1[a3[11]] = *&a2[a3[11]];
  v18 = &a1[v17];
  v19 = &a2[v17];
  v20 = type metadata accessor for SiriRequestIdentities(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);

  if (v22(v19, 1, v20))
  {
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
    memcpy(v18, v19, *(*(v23 - 8) + 64));
  }

  else
  {
    v24 = type metadata accessor for IdentifiedUser();
    v25 = *(v24 - 8);
    v26 = *(v25 + 48);
    if (v26(v19, 1, v24))
    {
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      memcpy(v18, v19, *(*(v27 - 8) + 64));
    }

    else
    {
      (*(v25 + 16))(v18, v19, v24);
      (*(v25 + 56))(v18, 0, 1, v24);
    }

    v28 = *(v20 + 20);
    if (v26(&v19[v28], 1, v24))
    {
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      memcpy(&v18[v28], &v19[v28], *(*(v29 - 8) + 64));
    }

    else
    {
      (*(v25 + 16))(&v18[v28], &v19[v28], v24);
      (*(v25 + 56))(&v18[v28], 0, 1, v24);
    }

    *&v18[*(v20 + 24)] = *&v19[*(v20 + 24)];
    v30 = *(v21 + 56);

    v30(v18, 0, 1, v20);
  }

  return a1;
}

uint64_t outlined init with take of SiriRequest(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t dispatch thunk of CaarRankingProviding.getCaarRanking(requestId:caarId:rcId:actions:rankerContext:)(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t specialized RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:)()
{
  v41 = v0;
  v1 = v0[31];
  v2 = v0[29];
  v3 = v0[27];
  outlined init with take of SiriRequest(v0[30], v1, type metadata accessor for UserInputResult);
  outlined init with copy of RemoteConversationService.State(v1, v2, type metadata accessor for UserInputResult);
  LODWORD(v1) = swift_getEnumCaseMultiPayload();
  outlined destroy of RemoteConversationService.State(v2, type metadata accessor for UserInputResult);
  if (v1 == 2)
  {
    v4 = v0[33];
    v6 = v0[22];
    v5 = v0[23];
    v7 = v0[21];
    v8 = v0[16];
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMd, &_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMR) + 64);
    outlined init with copy of ReferenceResolutionClientProtocol(v8, v5);
    outlined init with copy of ReferenceResolutionClientProtocol((v0 + 2), v5 + 40);
    outlined init with copy of RemoteConversationService.State(v4, v5 + v9, type metadata accessor for SiriRequest);
    swift_storeEnumTagMultiPayload();
    v10 = OBJC_IVAR____TtC14SiriKitRuntime25RemoteConversationService_state;
    swift_beginAccess();
    outlined assign with take of RemoteConversationService.State(v5, v7 + v10);
    swift_endAccess();
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v11 = v0[31];
  v12 = v0[28];
  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.executor);
  outlined init with copy of RemoteConversationService.State(v11, v12, type metadata accessor for UserInputResult);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  v16 = os_log_type_enabled(v14, v15);
  v17 = v0[28];
  if (v16)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v40 = v19;
    *v18 = 136315138;
    v20 = UserInputResult.description.getter();
    v22 = v21;
    outlined destroy of RemoteConversationService.State(v17, type metadata accessor for UserInputResult);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v40);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_1DC659000, v14, v15, "FlowExtensionContext: accept() returned %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x1E12A2F50](v19, -1, -1);
    MEMORY[0x1E12A2F50](v18, -1, -1);
  }

  else
  {

    outlined destroy of RemoteConversationService.State(v17, type metadata accessor for UserInputResult);
  }

  v24 = v0[31];
  v26 = v0[19];
  v25 = v0[20];
  v27 = UserInputResult.xpcRepresentation.getter();
  v26();

  outlined destroy of RemoteConversationService.State(v24, type metadata accessor for UserInputResult);
  v28 = v0[39];
  v30 = v0[35];
  v29 = v0[36];
  v31 = v0[34];
  v33 = v0[30];
  v32 = v0[31];
  v35 = v0[28];
  v34 = v0[29];
  v38 = v0[26];
  v39 = v0[23];
  outlined destroy of RemoteConversationService.State(v0[33], type metadata accessor for SiriRequest);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v36 = v0[1];

  return v36();
}

{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v4 = *(*v1 + 408);
  v5 = *(*v1 + 400);
  v6 = *(*v1 + 208);
  v7 = *(*v1 + 200);
  v8 = *(*v1 + 192);
  v9 = *v1;
  *(*v1 + 424) = v0;

  (*(v7 + 8))(v6, v8);

  v10 = *(v2 + 320);
  if (v0)
  {
    v11 = specialized RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:);
  }

  else
  {
    v11 = specialized RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:);
  }

  return MEMORY[0x1EEE6DFA0](v11, v10, 0);
}

{
  v1 = v0[38];
  v2 = v0[39];
  v3 = v0[37];
  v34 = v0[36];
  v35 = v0[35];
  v36 = v0[34];
  v37 = v0[32];
  v38 = v0[17];
  v39 = v0[33];
  v4 = v0[16];
  v5 = v4[3];
  v32 = v4[4];
  v33 = v0[18];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v7 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v7);
  v8 = (*(v6 + 88))(v7, v6);
  (*(v1 + 16))(v2, v8 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_positionInSession, v3);

  v0[41] = ConversationTurnState.makeCurrentRequestForSiriEnvironment(speechData:positionInSession:)(v33, v2, v5, v32);
  (*(v1 + 8))(v2, v3);
  v9 = v4[3];
  v10 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v9);
  (*(v10 + 32))(v9, v10);
  v11 = type metadata accessor for SessionConfigurationProvider();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v0[42] = SessionConfigurationProvider.init(sessionConfiguration:)();
  outlined init with copy of ReferenceResolutionClientProtocol?(v33 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_genAIFallbackSuppressReason, v35, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR);
  v14 = type metadata accessor for NLRoutingDecisionProvider();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v0[43] = NLRoutingDecisionProvider.init(genAIFallbackSuppressReason:)();
  outlined init with copy of ReferenceResolutionClientProtocol?(v33 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_flowRedirectContext, v36, &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  v17 = type metadata accessor for FlowRedirectContextProvider();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v0[44] = FlowRedirectContextProvider.init(flowRedirectContext:)();
  v20 = v33 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_rcId;
  v0[45] = *(v33 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_rcId);
  v0[46] = *(v20 + 8);
  v21 = *(v37 + 20);
  v22 = type metadata accessor for Input();
  (*(*(v22 - 8) + 16))(v39 + v21, v38, v22);
  v23 = v4[3];
  v24 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v23);
  v25 = *(v24 + 96);

  v0[47] = v25(v23, v24);
  v0[48] = v26;
  v27 = *(v37 + 48);
  v28 = swift_task_alloc();
  v0[49] = v28;
  *v28 = v0;
  v28[1] = specialized RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:);
  v29 = v0[21];
  v30 = v0[18];

  return RemoteConversationService.makeRequestIdentities(from:)(v39 + v27, v30);
}

{
  v1 = *(*v0 + 392);
  v2 = *(*v0 + 320);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](specialized RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:), v2, 0);
}

{
  v1 = *(v0 + 368);
  v3 = *(v0 + 344);
  v2 = *(v0 + 352);
  v5 = *(v0 + 328);
  v4 = *(v0 + 336);
  v6 = *(v0 + 256);
  v7 = *(v0 + 264);
  v8 = *(v0 + 208);
  v9 = *(v0 + 432);
  v10 = *(v0 + 128);
  v11 = *(v0 + 136);
  v12 = *(v0 + 376);
  *v7 = *(v0 + 360);
  v7[1] = v1;
  *(v7 + v6[6]) = v5;
  *(v7 + v6[7]) = v4;
  *(v7 + v6[8]) = v12;
  *(v7 + v6[9]) = 0;
  *(v7 + v6[10]) = v3;
  *(v7 + v6[11]) = v2;
  v13 = v10[3];
  v14 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v13);
  (*(v14 + 56))(v13, v14);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  type metadata accessor for ConversationSELFHelper();
  *(v0 + 400) = static ConversationSELFHelper.shared.getter();
  Input.identifier.getter();
  v15 = swift_task_alloc();
  *(v0 + 408) = v15;
  *(v15 + 16) = v0 + 16;
  *(v15 + 24) = v7;
  *(v15 + 32) = v9;
  v16 = *(MEMORY[0x1E69D0030] + 4);
  v24 = (*MEMORY[0x1E69D0030] + MEMORY[0x1E69D0030]);
  v17 = swift_task_alloc();
  *(v0 + 416) = v17;
  *v17 = v0;
  v17[1] = specialized RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:);
  v18 = *(v0 + 360);
  v19 = *(v0 + 368);
  v20 = *(v0 + 240);
  v21 = *(v0 + 208);
  v22 = *(v0 + 216);

  return v24(v20, v18, v19, v21, &closure #1 in RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:)partial apply, v15, v22);
}

{
  v1 = v0[38];
  v2 = v0[39];
  v3 = v0[37];
  v34 = v0[36];
  v35 = v0[35];
  v36 = v0[34];
  v37 = v0[32];
  v38 = v0[17];
  v39 = v0[33];
  v4 = v0[16];
  v5 = v4[3];
  v32 = v4[4];
  v33 = v0[18];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v7 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v7);
  v8 = (*(v6 + 88))(v7, v6);
  (*(v1 + 16))(v2, v8 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_positionInSession, v3);

  v0[41] = ConversationTurnState.makeCurrentRequestForSiriEnvironment(speechData:positionInSession:)(v33, v2, v5, v32);
  (*(v1 + 8))(v2, v3);
  v9 = v4[3];
  v10 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v9);
  (*(v10 + 32))(v9, v10);
  v11 = type metadata accessor for SessionConfigurationProvider();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v0[42] = SessionConfigurationProvider.init(sessionConfiguration:)();
  outlined init with copy of ReferenceResolutionClientProtocol?(v33 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_genAIFallbackSuppressReason, v35, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR);
  v14 = type metadata accessor for NLRoutingDecisionProvider();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v0[43] = NLRoutingDecisionProvider.init(genAIFallbackSuppressReason:)();
  outlined init with copy of ReferenceResolutionClientProtocol?(v33 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_flowRedirectContext, v36, &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  v17 = type metadata accessor for FlowRedirectContextProvider();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v0[44] = FlowRedirectContextProvider.init(flowRedirectContext:)();
  v20 = v33 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_rcId;
  v0[45] = *(v33 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_rcId);
  v0[46] = *(v20 + 8);
  v21 = *(v37 + 20);
  v22 = type metadata accessor for Input();
  (*(*(v22 - 8) + 16))(v39 + v21, v38, v22);
  v23 = v4[3];
  v24 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v23);
  v25 = *(v24 + 96);

  v0[47] = v25(v23, v24);
  v0[48] = v26;
  v27 = *(v37 + 48);
  v28 = swift_task_alloc();
  v0[49] = v28;
  *v28 = v0;
  v28[1] = specialized RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:);
  v29 = v0[21];
  v30 = v0[18];

  return RemoteConversationService.makeRequestIdentities(from:)(v39 + v27, v30);
}

{
  v1 = *(*v0 + 392);
  v2 = *(*v0 + 320);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](specialized RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:), v2, 0);
}

{
  v1 = *(v0 + 368);
  v3 = *(v0 + 344);
  v2 = *(v0 + 352);
  v5 = *(v0 + 328);
  v4 = *(v0 + 336);
  v6 = *(v0 + 256);
  v7 = *(v0 + 264);
  v8 = *(v0 + 208);
  v9 = *(v0 + 432);
  v10 = *(v0 + 128);
  v11 = *(v0 + 136);
  v12 = *(v0 + 376);
  *v7 = *(v0 + 360);
  v7[1] = v1;
  *(v7 + v6[6]) = v5;
  *(v7 + v6[7]) = v4;
  *(v7 + v6[8]) = v12;
  *(v7 + v6[9]) = 0;
  *(v7 + v6[10]) = v3;
  *(v7 + v6[11]) = v2;
  v13 = v10[3];
  v14 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v13);
  (*(v14 + 56))(v13, v14);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  type metadata accessor for ConversationSELFHelper();
  *(v0 + 400) = static ConversationSELFHelper.shared.getter();
  Input.identifier.getter();
  v15 = swift_task_alloc();
  *(v0 + 408) = v15;
  *(v15 + 16) = v0 + 16;
  *(v15 + 24) = v7;
  *(v15 + 32) = v9;
  v16 = *(MEMORY[0x1E69D0030] + 4);
  v24 = (*MEMORY[0x1E69D0030] + MEMORY[0x1E69D0030]);
  v17 = swift_task_alloc();
  *(v0 + 416) = v17;
  *v17 = v0;
  v17[1] = specialized RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:);
  v18 = *(v0 + 360);
  v19 = *(v0 + 368);
  v20 = *(v0 + 240);
  v21 = *(v0 + 208);
  v22 = *(v0 + 216);

  return v24(v20, v18, v19, v21, &closure #1 in RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:)partial apply, v15, v22);
}

{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v4 = *(*v1 + 408);
  v5 = *(*v1 + 400);
  v6 = *(*v1 + 208);
  v7 = *(*v1 + 200);
  v8 = *(*v1 + 192);
  v9 = *v1;
  *(*v1 + 424) = v0;

  (*(v7 + 8))(v6, v8);

  v10 = *(v2 + 320);
  if (v0)
  {
    v11 = specialized RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:);
  }

  else
  {
    v11 = specialized RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:);
  }

  return MEMORY[0x1EEE6DFA0](v11, v10, 0);
}

{
  v30 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[53];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[53];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v29 = v8;
    *v7 = 136315394;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000061, 0x80000001DCA85E20, &v29);
    *(v7 + 12) = 2080;
    v0[15] = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v10 = String.init<A>(describing:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v29);

    *(v7 + 14) = v12;
    _os_log_impl(&dword_1DC659000, v4, v5, "%s: Error calling conversation.accept: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v8, -1, -1);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }

  v13 = v0[53];
  v15 = v0[19];
  v14 = v0[20];
  v16 = specialized static FlowExtensionUserInputResultXPC.error(_:)();
  v15();

  v17 = v0[39];
  v19 = v0[35];
  v18 = v0[36];
  v20 = v0[34];
  v22 = v0[30];
  v21 = v0[31];
  v24 = v0[28];
  v23 = v0[29];
  v27 = v0[26];
  v28 = v0[23];
  outlined destroy of RemoteConversationService.State(v0[33], type metadata accessor for SiriRequest);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v25 = v0[1];

  return v25();
}

{
  v1 = v0[38];
  v2 = v0[39];
  v3 = v0[37];
  v34 = v0[36];
  v35 = v0[35];
  v36 = v0[34];
  v37 = v0[32];
  v38 = v0[17];
  v39 = v0[33];
  v4 = v0[16];
  v5 = v4[3];
  v32 = v4[4];
  v33 = v0[18];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v7 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v7);
  v8 = (*(v6 + 88))(v7, v6);
  (*(v1 + 16))(v2, v8 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_positionInSession, v3);

  v0[41] = ConversationTurnState.makeCurrentRequestForSiriEnvironment(speechData:positionInSession:)(v33, v2, v5, v32);
  (*(v1 + 8))(v2, v3);
  v9 = v4[3];
  v10 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v9);
  (*(v10 + 32))(v9, v10);
  v11 = type metadata accessor for SessionConfigurationProvider();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v0[42] = SessionConfigurationProvider.init(sessionConfiguration:)();
  outlined init with copy of ReferenceResolutionClientProtocol?(v33 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_genAIFallbackSuppressReason, v35, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR);
  v14 = type metadata accessor for NLRoutingDecisionProvider();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v0[43] = NLRoutingDecisionProvider.init(genAIFallbackSuppressReason:)();
  outlined init with copy of ReferenceResolutionClientProtocol?(v33 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_flowRedirectContext, v36, &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  v17 = type metadata accessor for FlowRedirectContextProvider();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v0[44] = FlowRedirectContextProvider.init(flowRedirectContext:)();
  v20 = v33 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_rcId;
  v0[45] = *(v33 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_rcId);
  v0[46] = *(v20 + 8);
  v21 = *(v37 + 20);
  v22 = type metadata accessor for Input();
  (*(*(v22 - 8) + 16))(v39 + v21, v38, v22);
  v23 = v4[3];
  v24 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v23);
  v25 = *(v24 + 96);

  v0[47] = v25(v23, v24);
  v0[48] = v26;
  v27 = *(v37 + 48);
  v28 = swift_task_alloc();
  v0[49] = v28;
  *v28 = v0;
  v28[1] = specialized RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:);
  v29 = v0[21];
  v30 = v0[18];

  return RemoteConversationService.makeRequestIdentities(from:)(v39 + v27, v30);
}

{
  v1 = *(*v0 + 392);
  v2 = *(*v0 + 320);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](specialized RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:), v2, 0);
}

{
  v1 = *(v0 + 368);
  v3 = *(v0 + 344);
  v2 = *(v0 + 352);
  v5 = *(v0 + 328);
  v4 = *(v0 + 336);
  v6 = *(v0 + 256);
  v7 = *(v0 + 264);
  v8 = *(v0 + 208);
  v9 = *(v0 + 432);
  v10 = *(v0 + 128);
  v11 = *(v0 + 136);
  v12 = *(v0 + 376);
  *v7 = *(v0 + 360);
  v7[1] = v1;
  *(v7 + v6[6]) = v5;
  *(v7 + v6[7]) = v4;
  *(v7 + v6[8]) = v12;
  *(v7 + v6[9]) = 0;
  *(v7 + v6[10]) = v3;
  *(v7 + v6[11]) = v2;
  v13 = v10[3];
  v14 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v13);
  (*(v14 + 56))(v13, v14);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  type metadata accessor for ConversationSELFHelper();
  *(v0 + 400) = static ConversationSELFHelper.shared.getter();
  Input.identifier.getter();
  v15 = swift_task_alloc();
  *(v0 + 408) = v15;
  *(v15 + 16) = v0 + 16;
  *(v15 + 24) = v7;
  *(v15 + 32) = v9;
  v16 = *(MEMORY[0x1E69D0030] + 4);
  v24 = (*MEMORY[0x1E69D0030] + MEMORY[0x1E69D0030]);
  v17 = swift_task_alloc();
  *(v0 + 416) = v17;
  *v17 = v0;
  v17[1] = specialized RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:);
  v18 = *(v0 + 360);
  v19 = *(v0 + 368);
  v20 = *(v0 + 240);
  v21 = *(v0 + 208);
  v22 = *(v0 + 216);

  return v24(v20, v18, v19, v21, &async function pointer to partial apply for closure #1 in RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:), v15, v22);
}

uint64_t closure #1 in RemoteConversationService.acceptInitialInput(inputIdentifier:speechData:reply:)()
{
  v1 = *(*v0 + 792);
  v2 = *(*v0 + 784);
  v3 = *(*v0 + 720);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationService.acceptInitialInput(inputIdentifier:speechData:reply:), v3, 0);
}

{
  v1 = v0[98];
  v2 = v0[97];
  v3 = v0[96];
  v4 = v0[95];
  v5 = v0[91];
  v6 = v0[86];
  v7 = v0[85];
  v8 = v0[84];

  (*(v7 + 8))(v6, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  outlined destroy of ReferenceResolutionClientProtocol?((v0 + 7), &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);
  v9 = v0[89];
  v10 = v0[87];
  v11 = v0[86];
  v12 = v0[83];
  v13 = v0[82];
  v14 = v0[81];
  v15 = v0[78];
  v16 = v0[77];
  v17 = v0[76];

  v18 = v0[1];

  return v18();
}

{
  v158 = v0;
  v1 = *(v0 + 712);
  v2 = *(v0 + 704);
  v3 = *(v0 + 552);
  v4 = OBJC_IVAR____TtC14SiriKitRuntime25RemoteConversationService_state;
  swift_beginAccess();
  outlined init with copy of RemoteConversationService.State(v3 + v4, v1, type metadata accessor for RemoteConversationService.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v6 = *(v0 + 712);
      v7 = *(v0 + 568);
      v8 = *(v0 + 560);
      v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMd, &_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMR) + 64);
      lazy protocol witness table accessor for type IllegalStateError and conformance IllegalStateError();
      v10 = swift_allocError();
      *v11 = 0xD000000000000058;
      v11[1] = 0x80000001DCA85FC0;
      v12 = specialized static FlowExtensionUserInputResultXPC.error(_:)();

      v8(v12);
      outlined destroy of RemoteConversationService.State(v6 + v9, type metadata accessor for SiriRequest);
      __swift_destroy_boxed_opaque_existential_1Tm(v6 + 5);
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
    }

    else
    {
      v22 = *(v0 + 568);
      v23 = *(v0 + 560);
      v156 = 0;
      v157 = 0xE000000000000000;
      _StringGuts.grow(_:)(58);
      MEMORY[0x1E12A1580](0xD000000000000035, 0x80000001DCA859E0);
      MEMORY[0x1E12A1580](0xD000000000000038, 0x80000001DCA86020);
      lazy protocol witness table accessor for type IllegalStateError and conformance IllegalStateError();
      v24 = swift_allocError();
      *v25 = 0;
      v25[1] = 0xE000000000000000;
      v26 = specialized static FlowExtensionUserInputResultXPC.error(_:)();

      v23(v26);
    }

LABEL_8:
    v27 = *(v0 + 712);
    v28 = *(v0 + 696);
    v29 = *(v0 + 688);
    v30 = *(v0 + 664);
    v31 = *(v0 + 656);
    v32 = *(v0 + 648);
    v33 = *(v0 + 624);
    v34 = *(v0 + 616);
    v35 = *(v0 + 608);

    v36 = *(v0 + 8);

    return v36();
  }

  v13 = *(v0 + 712);
  *(v0 + 728) = *(v13 + 80);
  outlined init with take of ReferenceResolutionClientProtocol(v13, v0 + 16);
  v14 = *(v13 + 40);
  v15 = *(v13 + 56);
  *(v0 + 88) = *(v13 + 72);
  *(v0 + 72) = v15;
  *(v0 + 56) = v14;
  if (*(v0 + 80))
  {
    v16 = *(v0 + 568);
    v17 = *(v0 + 560);
    lazy protocol witness table accessor for type IllegalStateError and conformance IllegalStateError();
    v18 = swift_allocError();
    *v19 = 0xD000000000000062;
    v19[1] = 0x80000001DCA85F50;
    v20 = specialized static FlowExtensionUserInputResultXPC.error(_:)();

    v21 = v20;
LABEL_6:
    v17(v21);

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 56, &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);
    goto LABEL_8;
  }

  v38 = *(v0 + 664);
  RemoteConversationService.FlowAndInputRegistry.getRegisteredActingFlow(uuid:)(*(v0 + 576), v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtMd, &_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtMR);
  if ((*(*(v39 - 8) + 48))(v38, 1, v39) == 1)
  {
    v40 = *(v0 + 656);
    v41 = *(v0 + 576);
    outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 664), &_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtSgMd, &_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtSgMR);
    RemoteConversationService.FlowAndInputRegistry.getRegisteredFlow(uuid:)(v41, v40);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtMd, &_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtMR);
    if ((*(*(v42 - 8) + 48))(v40, 1, v42) == 1)
    {
      v43 = *(v0 + 568);
      v17 = *(v0 + 560);
      outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 656), &_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtSgMd, &_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtSgMR);
      v156 = 0;
      v157 = 0xE000000000000000;
      _StringGuts.grow(_:)(65);
      MEMORY[0x1E12A1580](0xD000000000000020, 0x80000001DCA85F00);
      MEMORY[0x1E12A1580](0xD000000000000035, 0x80000001DCA859E0);
      MEMORY[0x1E12A1580](0xD00000000000001FLL, 0x80000001DCA85F30);
      lazy protocol witness table accessor for type IllegalStateError and conformance IllegalStateError();
      v44 = swift_allocError();
      *v45 = 0;
      v45[1] = 0xE000000000000000;
      v20 = specialized static FlowExtensionUserInputResultXPC.error(_:)();

      v21 = v20;
      goto LABEL_6;
    }

    v67 = *(v0 + 688);
    v68 = *(v0 + 680);
    v69 = *(v0 + 672);
    v70 = *(v0 + 656);
    v71 = *(v0 + 648);
    v72 = *(v0 + 640);
    v73 = *(v0 + 632);
    v74 = *(v0 + 552);
    v75 = *(v70 + *(v42 + 48));
    *(v0 + 760) = v75;
    *(v0 + 768) = *(v70 + *(v42 + 64));
    (*(v68 + 32))(v67);

    Input.parse.getter();
    v76 = Parse.usoTasks.getter();
    (*(v72 + 8))(v71, v73);
    type metadata accessor for FlowPluginInfo();
    outlined init with copy of ReferenceResolutionClientProtocol((v74 + 10), v0 + 136);
    v77 = FlowPluginInfo.__allocating_init(pluginBundle:)((v0 + 136));
    type metadata accessor for FlowAgent();
    v78 = swift_allocObject();
    *(v0 + 776) = v78;
    swift_defaultActor_initialize();
    *(v78 + 130) = 0;
    *(v78 + 136) = 0;
    *(v78 + 144) = 0;
    *(v78 + 112) = v75;
    *(v78 + 120) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow010PreparableC0_pMd, &_s11SiriKitFlow010PreparableC0_pMR);

    dispatch thunk of AnyFlow.unbox<A>(as:)();

    v79 = *(v0 + 200) != 0;
    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 176, &_s11SiriKitFlow010PreparableC0_pSgMd, &_s11SiriKitFlow010PreparableC0_pSgMR);
    *(v78 + 128) = v79;
    *(v78 + 129) = v79;
    *(v78 + 152) = v76;
    *(v78 + 160) = v77;
    v80 = v74[9];
    v150 = SiriKitRuntimeState.taskService.getter();
    v81 = v74[8];
    v147 = v74[7];
    v82 = one-time initialization token for defaultTimeout;

    v148 = v81;

    if (v82 != -1)
    {
      swift_once();
    }

    v83 = *(v0 + 624);
    v155 = *(v0 + 616);
    v84 = *(v0 + 600);
    v154 = v84;
    v85 = *(v0 + 592);
    v145 = *(v0 + 608);
    v146 = *(v0 + 552);
    v86 = __swift_project_value_buffer(v85, static JetsamHelper.defaultTimeout);
    v87 = *(v84 + 16);
    v149 = v83;
    v152 = v85;
    v87(v83, v86, v85);
    v88 = type metadata accessor for ServerFallbackDisablingUtils();
    v89 = swift_allocObject();
    v89[2] = [objc_allocWithZone(type metadata accessor for ExperimentationAnalyticsManager()) init];
    v89[3] = closure #1 in default argument 5 of ConversationService.init(conversationHandlerLocator:referenceResolutionClient:useStubCamBridge:useNoopEventSender:doWarmup:selfEmitter:serverFallbackDisablingUtils:);
    v89[4] = 0;
    *(v0 + 240) = v88;
    *(v0 + 248) = &protocol witness table for ServerFallbackDisablingUtils;
    *(v0 + 216) = v89;
    v90 = type metadata accessor for CorrectionsUndoManager();
    v91 = swift_allocObject();
    *(v91 + 40) = 0u;
    *(v91 + 56) = 0;
    *(v91 + 24) = 0u;
    *(v91 + 16) = MEMORY[0x1E69E7CC0];
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0;
    swift_beginAccess();
    outlined assign with take of (Input, AnyFlow, SiriEnvironment)(v0 + 256, v91 + 24, &_s11SiriKitFlow010CorrectingC0_pSgMd, &_s11SiriKitFlow010CorrectingC0_pSgMR);
    swift_endAccess();
    v87(v155, v83, v85);
    outlined init with copy of ReferenceResolutionClientProtocol(v0 + 216, v0 + 296);
    *(v0 + 360) = v90;
    *(v0 + 368) = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type CorrectionsUndoManager and conformance CorrectionsUndoManager, 255, type metadata accessor for CorrectionsUndoManager);
    *(v0 + 336) = v91;
    v92 = type metadata accessor for Conversation(0);
    v93 = *(v92 + 48);
    v94 = *(v92 + 52);
    v95 = swift_allocObject();
    *(v0 + 784) = v95;
    swift_defaultActor_initialize();
    type metadata accessor for Conversation.State(0);
    swift_storeEnumTagMultiPayload();
    v96 = v95 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskObserver;
    *(v95 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskObserver + 8) = 0;
    swift_unknownObjectWeakInit();
    *(v95 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_idleTrackerActivity) = 0;
    v97 = (v95 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_rcId);
    *v97 = 12589;
    v97[1] = 0xE200000000000000;
    v98 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_hypothesisId;
    v99 = type metadata accessor for UUID();
    (*(*(v99 - 8) + 56))(v95 + v98, 1, 1, v99);
    *(v95 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_isPaused) = 0;
    *(v95 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation____lazy_storage___correctionsFlow) = 0;
    type metadata accessor for InstrumentedStack(0);
    v100 = swift_allocObject();
    v100[5] = MEMORY[0x1E69E7CC8];
    v100[3] = 0;
    v100[4] = 0;
    v100[2] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime4NodeCyAA9FlowAgentCGMd, &_s14SiriKitRuntime4NodeCyAA9FlowAgentCGMR);
    swift_allocObject();
    swift_retain_n();

    v101 = specialized Node.init(value:parent:)(v78);
    specialized OrderedForest._push(_:)(v101);
    v102 = v101[2];
    v103 = type metadata accessor for InstrumentedStack.TrackedFlowAgent(0);
    v104 = *(v103 + 48);
    v105 = *(v103 + 52);
    swift_allocObject();

    v107 = specialized InstrumentedStack.TrackedFlowAgent.init(agent:parent:)(v106, 0);

    swift_beginAccess();
    v108 = v100[5];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v156 = v100[5];
    v100[5] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v107, v102, isUniquelyReferenced_nonNull_native);
    v100[5] = v156;
    swift_endAccess();

    *(v95 + 112) = v100;
    v87(v145, v155, v152);
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
    v110 = static OS_dispatch_queue.main.getter();
    v111 = type metadata accessor for JetsamHelper();
    v112 = *(v111 + 48);
    v113 = *(v111 + 52);
    v114 = swift_allocObject();
    v115 = (v114 + OBJC_IVAR____TtC14SiriKitRuntime12JetsamHelper_transaction);
    *v115 = 0;
    v115[1] = 0;
    v114[2] = 0xD000000000000023;
    v114[3] = 0x80000001DCA7E400;
    v114[4] = dispatch_semaphore_create(1);
    v114[5] = v110;
    (*(v154 + 32))(v114 + OBJC_IVAR____TtC14SiriKitRuntime12JetsamHelper_timeout, v145, v152);
    *(v95 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_jetsamHelper) = v114;
    swift_beginAccess();
    *(v96 + 8) = &protocol witness table for RemoteConversationService;
    swift_unknownObjectWeakAssign();
    *(v95 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskService) = v150;
    v116 = (v95 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_pluginId);
    *v116 = v147;
    v116[1] = v148;
    v117 = *(v78 + 160);
    *(v95 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_pluginInfo) = v117;
    outlined init with copy of ReferenceResolutionClientProtocol(v0 + 336, v95 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_correctionsEngine);
    outlined init with copy of ReferenceResolutionClientProtocol(v0 + 296, v95 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_serverFallbackDisablingUtils);
    v118 = type metadata accessor for SiriEnvironment();
    v119 = *(v118 + 48);
    v120 = *(v118 + 52);
    swift_allocObject();

    v121 = v117;
    *(v95 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_rootEnvironment) = SiriEnvironment.init(parent:)();
    v122 = type metadata accessor for SiriCorrectionsClientProvider();
    v123 = *(v122 + 48);
    v124 = *(v122 + 52);
    swift_allocObject();

    SiriCorrectionsClientProvider.init()();
    SiriEnvironment.correctionsClientProvider.setter();

    v125 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_rootEnvironment;
    v126 = *(v95 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_rootEnvironment);
    SiriEnvironment.correctionsClientProvider.getter();
    v127 = *(v0 + 360);
    v128 = *(v0 + 368);
    v129 = __swift_project_boxed_opaque_existential_1((v0 + 336), v127);
    *(v0 + 400) = v127;
    *(v0 + 408) = *(v128 + 8);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 376));
    (*(*(v127 - 8) + 16))(boxed_opaque_existential_0, v129, v127);
    dispatch thunk of SiriCorrectionsClientProvider.correctionsClient.setter();

    v131 = *(v95 + v125);
    type metadata accessor for UserIdentityProvider();
    _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type UserIdentityProvider and conformance UserIdentityProvider, 255, MEMORY[0x1E69D0010]);

    dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();

    v132 = *(v95 + v125);
    type metadata accessor for FlowTaskProvider();
    _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type FlowTaskProvider and conformance FlowTaskProvider, 255, MEMORY[0x1E69CFB28]);

    dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();

    v133 = *(v95 + v125);
    type metadata accessor for CallStateEnvironmentProvider();
    _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type CallStateEnvironmentProvider and conformance CallStateEnvironmentProvider, 255, MEMORY[0x1E69D0098]);

    dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();

    v134 = *(v95 + v125);
    type metadata accessor for ScopedReferenceResolutionDataProvider();
    _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type ScopedReferenceResolutionDataProvider and conformance ScopedReferenceResolutionDataProvider, 255, MEMORY[0x1E69D27E0]);

    dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();

    v135 = *(v95 + v125);
    type metadata accessor for AceServiceContextProvider();
    _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type AceServiceContextProvider and conformance AceServiceContextProvider, 255, MEMORY[0x1E69D0068]);

    dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();

    v136 = *(v78 + 112);
    v137 = *(v95 + v125);

    dispatch thunk of AnyFlow.siriEnvironment.setter();

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 296));
    v138 = *(v154 + 8);
    v138(v155, v152);
    v138(v149, v152);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 216));

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 336));

    v139 = swift_task_alloc();
    *(v0 + 792) = v139;
    *v139 = v0;
    v139[1] = closure #1 in RemoteConversationService.acceptInitialInput(inputIdentifier:speechData:reply:);
    v140 = *(v0 + 688);
    v141 = *(v0 + 584);
    v142 = *(v0 + 568);
    v143 = *(v0 + 560);
    v144 = *(v0 + 552);

    return specialized RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:)(v0 + 16, v95, v140, v141, 0, v143, v142, v144);
  }

  else
  {
    v46 = *(v0 + 696);
    v47 = *(v0 + 680);
    v48 = *(v0 + 672);
    v49 = *(v0 + 664);
    v50 = *(v0 + 552);
    v51 = *(v39 + 48);
    v52 = *(v49 + *(v39 + 64));
    *(v0 + 736) = v52;
    (*(v47 + 32))(v46, v49, v48);
    outlined init with take of ReferenceResolutionClientProtocol((v49 + v51), v0 + 96);
    v53 = *(v0 + 120);
    v54 = *(v0 + 128);
    v153 = __swift_project_boxed_opaque_existential_1((v0 + 96), v53);
    type metadata accessor for EncoreConversation(0);
    v55 = v50[8];
    v151 = v50[7];
    type metadata accessor for FlowPluginInfo();
    outlined init with copy of ReferenceResolutionClientProtocol((v50 + 10), v0 + 416);

    v56 = FlowPluginInfo.__allocating_init(pluginBundle:)((v0 + 416));
    v57 = v50[9];
    v58 = SiriKitRuntimeState.taskService.getter();
    v59 = v50[20];

    default argument 7 of EncoreConversation.init<A>(initialFlow:pluginId:pluginInfo:taskService:taskObserver:snippetManager:rootEnvironment:correctionsEngine:)(&v156);

    v60 = specialized EncoreConversation.__allocating_init<A>(initialFlow:pluginId:pluginInfo:taskService:taskObserver:snippetManager:rootEnvironment:correctionsEngine:)(v153, v151, v55, v56, v58, v50, &protocol witness table for RemoteConversationService, v59, v52, &v156, v53, v54);
    *(v0 + 744) = v60;

    v61 = swift_task_alloc();
    *(v0 + 752) = v61;
    *v61 = v0;
    v61[1] = closure #1 in RemoteConversationService.acceptInitialInput(inputIdentifier:speechData:reply:);
    v62 = *(v0 + 696);
    v63 = *(v0 + 584);
    v64 = *(v0 + 568);
    v65 = *(v0 + 560);
    v66 = *(v0 + 552);

    return specialized RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:)(v0 + 16, v60, v62, v63, 0, v65, v64, v66);
  }
}

{
  v1 = *(*v0 + 752);
  v2 = *(*v0 + 720);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationService.acceptInitialInput(inputIdentifier:speechData:reply:), v2, 0);
}

{
  v1 = v0[93];
  v2 = v0[92];
  v3 = v0[91];
  v4 = v0[87];
  v5 = v0[85];
  v6 = v0[84];

  (*(v5 + 8))(v4, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  outlined destroy of ReferenceResolutionClientProtocol?((v0 + 7), &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  v7 = v0[89];
  v8 = v0[87];
  v9 = v0[86];
  v10 = v0[83];
  v11 = v0[82];
  v12 = v0[81];
  v13 = v0[78];
  v14 = v0[77];
  v15 = v0[76];

  v16 = v0[1];

  return v16();
}

uint64_t Conversation.State.assertAcceptedInput(function:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v22 = a4;
  v7 = type metadata accessor for Conversation.State(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v21 - v12;
  outlined init with copy of Conversation.State(v5, v21 - v12, type metadata accessor for Conversation.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  outlined destroy of Conversation.State(v13, type metadata accessor for Conversation.State);
  if (EnumCaseMultiPayload == 5)
  {
    v21[0] = 0;
    v21[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(41);

    strcpy(v21, "Cannot call ");
    BYTE5(v21[1]) = 0;
    HIWORD(v21[1]) = -5120;
    v15 = StaticString.description.getter();
    MEMORY[0x1E12A1580](v15);

    MEMORY[0x1E12A1580](0xD00000000000001BLL, 0x80000001DCA7E5A0);
    v16 = v21[0];
    v17 = v21[1];
    lazy protocol witness table accessor for type CancelledError and conformance CancelledError();
  }

  else
  {
    outlined init with copy of Conversation.State(v5, v10, type metadata accessor for Conversation.State);
    if (!swift_getEnumCaseMultiPayload())
    {
      v17 = *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA4NodeCyAA9FlowAgentCG08selectedG0tMd, &_s14SiriKitRuntime0A7RequestV7request_AA4NodeCyAA9FlowAgentCG08selectedG0tMR) + 48)];
      outlined init with take of Conversation.State(v10, a1, type metadata accessor for SiriRequest);
      return v17;
    }

    outlined destroy of Conversation.State(v10, type metadata accessor for Conversation.State);
    v21[0] = 0;
    v21[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    MEMORY[0x1E12A1580](0x6320746F6E6E6143, 0xEC000000206C6C61);
    v18 = StaticString.description.getter();
    MEMORY[0x1E12A1580](v18);

    MEMORY[0x1E12A1580](0xD000000000000026, 0x80000001DCA7E600);
    v16 = v21[0];
    v17 = v21[1];
    lazy protocol witness table accessor for type IllegalStateError and conformance IllegalStateError();
  }

  swift_allocError();
  *v19 = v16;
  v19[1] = v17;
  swift_willThrow();
  return v17;
}

uint64_t lazy protocol witness table accessor for type CorrectionsUndoManager and conformance CorrectionsUndoManager(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s14SiriKitRuntime22CorrectionsUndoManagerCAcA0D6EngineAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Conversation.speculativelyExecute(from:)(uint64_t a1)
{
  v2[34] = a1;
  v2[35] = v1;
  v3 = type metadata accessor for FlowTraceEvent();
  v2[36] = v3;
  v4 = *(v3 - 8);
  v2[37] = v4;
  v5 = *(v4 + 64) + 15;
  v2[38] = swift_task_alloc();
  v6 = type metadata accessor for PrepareResponseType();
  v2[39] = v6;
  v7 = *(v6 - 8);
  v2[40] = v7;
  v8 = *(v7 + 64) + 15;
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v9 = type metadata accessor for PrepareResponse();
  v2[43] = v9;
  v10 = *(v9 - 8);
  v2[44] = v10;
  v11 = *(v10 + 64) + 15;
  v2[45] = swift_task_alloc();
  v12 = type metadata accessor for Conversation.State(0);
  v2[46] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](Conversation.speculativelyExecute(from:), v1, 0);
}

uint64_t Conversation.execute(from:)(uint64_t a1, uint64_t a2)
{
  v3[43] = a2;
  v3[44] = v2;
  v3[42] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime24ConversationCommitResultOSgMd, &_s14SiriKitRuntime24ConversationCommitResultOSgMR) - 8) + 64) + 15;
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v5 = type metadata accessor for ConversationCommitResult();
  v3[47] = v5;
  v6 = *(v5 - 8);
  v3[48] = v6;
  v7 = *(v6 + 64) + 15;
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0C15UnhandledReasonOSgMd, &_s11SiriKitFlow0C15UnhandledReasonOSgMR) - 8) + 64) + 15;
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();
  v9 = type metadata accessor for FlowUnhandledReason();
  v3[53] = v9;
  v10 = *(v9 - 8);
  v3[54] = v10;
  v11 = *(v10 + 64) + 15;
  v3[55] = swift_task_alloc();
  v3[56] = swift_task_alloc();
  v3[57] = swift_task_alloc();
  v3[58] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PluginActionVSgMd, &_s11SiriKitFlow12PluginActionVSgMR) - 8) + 64) + 15;
  v3[59] = swift_task_alloc();
  v13 = type metadata accessor for PluginAction();
  v3[60] = v13;
  v14 = *(v13 - 8);
  v3[61] = v14;
  v15 = *(v14 + 64) + 15;
  v3[62] = swift_task_alloc();
  v16 = type metadata accessor for ExecuteResponseType();
  v3[63] = v16;
  v17 = *(v16 - 8);
  v3[64] = v17;
  v18 = *(v17 + 64) + 15;
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  v19 = type metadata accessor for FlowTraceEvent();
  v3[67] = v19;
  v20 = *(v19 - 8);
  v3[68] = v20;
  v21 = *(v20 + 64) + 15;
  v3[69] = swift_task_alloc();
  v22 = type metadata accessor for DispatchTimeInterval();
  v3[70] = v22;
  v23 = *(v22 - 8);
  v3[71] = v23;
  v24 = *(v23 + 64) + 15;
  v3[72] = swift_task_alloc();
  v25 = type metadata accessor for ExecuteResponse();
  v3[73] = v25;
  v26 = *(v25 - 8);
  v3[74] = v26;
  v27 = *(v26 + 64) + 15;
  v3[75] = swift_task_alloc();
  v28 = type metadata accessor for PrepareResponseType();
  v3[76] = v28;
  v29 = *(v28 - 8);
  v3[77] = v29;
  v30 = *(v29 + 64) + 15;
  v3[78] = swift_task_alloc();
  v3[79] = swift_task_alloc();
  v31 = type metadata accessor for PrepareResponse();
  v3[80] = v31;
  v32 = *(v31 - 8);
  v3[81] = v32;
  v33 = *(v32 + 64) + 15;
  v3[82] = swift_task_alloc();
  v34 = type metadata accessor for Conversation.State(0);
  v3[83] = v34;
  v35 = *(*(v34 - 8) + 64) + 15;
  v3[84] = swift_task_alloc();
  v3[85] = swift_task_alloc();
  v3[86] = swift_task_alloc();
  v36 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  v3[87] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](Conversation.execute(from:), v2, 0);
}

uint64_t RemoteConversationService.sendActiveTasks(_:rcId:)()
{
  v47 = v0;
  v1 = v0;
  v2 = *(v0 + 224);
  v3 = *(v0 + 168);
  v4 = OBJC_IVAR____TtC14SiriKitRuntime25RemoteConversationService_state;
  swift_beginAccess();
  outlined init with copy of RemoteConversationService.State(v3 + v4, v2, type metadata accessor for RemoteConversationService.State);
  RemoteConversationService.State.activeTurn.getter(v1 + 56);
  outlined destroy of RemoteConversationService.State(v2, type metadata accessor for RemoteConversationService.State);
  if (*(v1 + 80))
  {
    v6 = *(v1 + 208);
    v5 = *(v1 + 216);
    v8 = *(v1 + 192);
    v7 = *(v1 + 200);
    v10 = *(v1 + 176);
    v9 = *(v1 + 184);
    v11 = *(v1 + 144);
    outlined init with take of ReferenceResolutionClientProtocol((v1 + 56), v1 + 16);
    v12 = type metadata accessor for Parse.DirectInvocation();
    (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
    v13 = type metadata accessor for PommesContext();
    (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
    (*(v9 + 104))(v8, *MEMORY[0x1E69CFF08], v10);
    v14 = type metadata accessor for ExecutionContextUpdate();
    v15 = objc_allocWithZone(v14);
    outlined init with copy of ReferenceResolutionClientProtocol?(v6, v7, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);

    specialized static ExecutionContextUpdate.synchronizePromptContexts(pommesContext:nativeFlowContextCommand:)(v7, 0);
    *&v15[OBJC_IVAR___SKRExecutionContextUpdate_provideContextCommand] = 0;
    *&v15[OBJC_IVAR___SKRExecutionContextUpdate_nativeFlowContextCommand] = 0;
    *&v15[OBJC_IVAR___SKRExecutionContextUpdate_nluSystemDialogActs] = 0;
    *&v15[OBJC_IVAR___SKRExecutionContextUpdate_nluActiveTasks] = v11;
    *&v15[OBJC_IVAR___SKRExecutionContextUpdate_nluCompletedTasks] = 0;
    outlined init with copy of ReferenceResolutionClientProtocol?(v5, &v15[OBJC_IVAR___SKRExecutionContextUpdate_undoDirectInvocation], &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
    *&v15[OBJC_IVAR___SKRExecutionContextUpdate_rrEntities] = 0;
    outlined init with copy of ReferenceResolutionClientProtocol?(v7, &v15[OBJC_IVAR___SKRExecutionContextUpdate_pommesContext], &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    (*(v9 + 16))(&v15[OBJC_IVAR___SKRExecutionContextUpdate_contextUpdateScope], v8, v10);
    v16 = &v15[OBJC_IVAR___SKRExecutionContextUpdate_restoreSessionForRequestId];
    *v16 = 0;
    v16[1] = 0;
    v15[OBJC_IVAR___SKRExecutionContextUpdate_executedOnRemoteDevice] = 0;
    *(v1 + 120) = v15;
    *(v1 + 128) = v14;
    v17 = objc_msgSendSuper2((v1 + 120), sel_init);
    *(v1 + 240) = v17;
    (*(v9 + 8))(v8, v10);
    outlined destroy of ReferenceResolutionClientProtocol?(v6, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v5, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v18 = *(v1 + 160);
    v19 = *(v1 + 144);
    v20 = type metadata accessor for Logger();
    *(v1 + 248) = __swift_project_value_buffer(v20, static Logger.executor);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = *(v1 + 152);
      v24 = *(v1 + 160);
      v25 = *(v1 + 144);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v46 = v27;
      *v26 = 136315650;
      *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, 0x80000001DCA85C90, &v46);
      *(v26 + 12) = 2080;
      *(v26 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v46);
      *(v26 + 22) = 2080;
      v28 = type metadata accessor for Siri_Nlu_External_Task();
      v29 = MEMORY[0x1E12A16D0](v25, v28);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v46);

      *(v26 + 24) = v31;
      _os_log_impl(&dword_1DC659000, v21, v22, "RemoteConversationService: %s sending active tasks if rcId='%s' is selected: %s", v26, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v27, -1, -1);
      MEMORY[0x1E12A2F50](v26, -1, -1);
    }

    v33 = *(v1 + 40);
    v32 = *(v1 + 48);
    __swift_project_boxed_opaque_existential_1((v1 + 16), v33);
    *(v1 + 256) = (*(v32 + 64))(v33, v32);
    v34 = swift_task_alloc();
    *(v1 + 264) = v34;
    *v34 = v1;
    v34[1] = RemoteConversationService.sendActiveTasks(_:rcId:);

    return AceServiceInvokerImpl.publish(executionContextUpdate:)(v17);
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v1 + 56, &_s14SiriKitRuntime21ConversationTurnState_pSgMd, &_s14SiriKitRuntime21ConversationTurnState_pSgMR);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Logger.executor);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1DC659000, v37, v38, "Cannot send active task list to Execution Bridge: We're not in an active turn", v39, 2u);
      MEMORY[0x1E12A2F50](v39, -1, -1);
    }

    v41 = *(v1 + 216);
    v40 = *(v1 + 224);
    v42 = *(v1 + 200);
    v43 = *(v1 + 208);
    v44 = *(v1 + 192);

    v45 = *(v1 + 8);

    return v45();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v9 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v4 = *(v2 + 232);
    v5 = RemoteConversationService.sendActiveTasks(_:rcId:);
  }

  else
  {
    v6 = *(v2 + 256);
    v7 = *(v2 + 232);

    v5 = RemoteConversationService.sendActiveTasks(_:rcId:);
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

{
  v1 = v0[31];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[30];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1DC659000, v2, v3, "Sent active task list to SiriRequestDispatcher", v6, 2u);
    MEMORY[0x1E12A2F50](v6, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v8 = v0[27];
  v7 = v0[28];
  v10 = v0[25];
  v9 = v0[26];
  v11 = v0[24];

  v12 = v0[1];

  return v12();
}

{
  v24 = v0;
  v1 = *(v0 + 272);
  v3 = *(v0 + 248);
  v2 = *(v0 + 256);

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 272);
    v8 = *(v0 + 240);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136315138;
    *(v0 + 136) = v7;
    v11 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v12 = String.init<A>(describing:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v23);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1DC659000, v5, v6, "Error sending active task list to SiriRequestDispatcher: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1E12A2F50](v10, -1, -1);
    MEMORY[0x1E12A2F50](v9, -1, -1);
  }

  else
  {
    v15 = *(v0 + 272);
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v17 = *(v0 + 216);
  v16 = *(v0 + 224);
  v19 = *(v0 + 200);
  v18 = *(v0 + 208);
  v20 = *(v0 + 192);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t FlowAgent.prepare()()
{
  v59 = v0;
  v1 = *(v0 + 208);
  swift_beginAccess();
  if (*(v1 + 130) == 1)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 208);
    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.executor);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 208);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v58[0] = v8;
      *v7 = 136315138;
      *(v0 + 192) = *(v6 + 112);
      type metadata accessor for AnyFlow();
      lazy protocol witness table accessor for type AnyFlow and conformance AnyFlow(&lazy protocol witness table cache variable for type AnyFlow and conformance AnyFlow, 255, MEMORY[0x1E69CF990]);
      v9 = dispatch thunk of CustomStringConvertible.description.getter();
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v58);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_1DC659000, v4, v5, "[Conversation] %s prepare cancelled before call.", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x1E12A2F50](v8, -1, -1);
      MEMORY[0x1E12A2F50](v7, -1, -1);
    }

    v12 = *(v0 + 200);
    static PrepareResponse.complete()();
    goto LABEL_21;
  }

  v13 = *(v0 + 208);
  swift_beginAccess();
  if ((*(v13 + 129) & 1) == 0)
  {
    v49 = *(v0 + 200);
LABEL_20:
    static PrepareResponse.ongoing(needsExecute:)();
LABEL_21:
    v51 = *(v0 + 304);
    v52 = *(v0 + 280);
    v53 = *(v0 + 256);
    v54 = *(v0 + 232);

    v55 = *(v0 + 8);

    return v55();
  }

  v14 = *(*(v0 + 208) + 112);
  *(v0 + 312) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow010PreparableC0_pMd, &_s11SiriKitFlow010PreparableC0_pMR);
  dispatch thunk of AnyFlow.unbox<A>(as:)();
  if (!*(v0 + 80))
  {
    v50 = *(v0 + 200);
    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 56, &_s11SiriKitFlow010PreparableC0_pSgMd, &_s11SiriKitFlow010PreparableC0_pSgMR);
    goto LABEL_20;
  }

  outlined init with take of ReferenceResolutionClientProtocol((v0 + 56), v0 + 16);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v15 = *(v0 + 208);
  v16 = type metadata accessor for Logger();
  *(v0 + 320) = __swift_project_value_buffer(v16, static Logger.executor);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v58[0] = v20;
    *v19 = 136315138;
    *(v0 + 184) = v14;
    type metadata accessor for AnyFlow();
    lazy protocol witness table accessor for type AnyFlow and conformance AnyFlow(&lazy protocol witness table cache variable for type AnyFlow and conformance AnyFlow, 255, MEMORY[0x1E69CF990]);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v58);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_1DC659000, v17, v18, "[Conversation] %s prepare.", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x1E12A2F50](v20, -1, -1);
    MEMORY[0x1E12A2F50](v19, -1, -1);
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v24 = *(v0 + 304);
  v57 = *(v0 + 208);
  v25 = static Log.executor;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1DCA6B020;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1DCA66060;
  v28 = ObjectIdentifier.hashValue.getter();
  v29 = MEMORY[0x1E69E6530];
  v30 = MEMORY[0x1E69E65A8];
  *(v27 + 56) = MEMORY[0x1E69E6530];
  *(v27 + 64) = v30;
  *(v27 + 32) = v28;
  v31 = String.init(format:_:)();
  v33 = v32;
  v34 = MEMORY[0x1E69E6158];
  *(v26 + 56) = MEMORY[0x1E69E6158];
  v35 = lazy protocol witness table accessor for type String and conformance String();
  *(v26 + 64) = v35;
  *(v26 + 32) = v31;
  *(v26 + 40) = v33;
  v36 = AnyFlow.description.getter();
  *(v26 + 96) = v34;
  *(v26 + 104) = v35;
  *(v26 + 72) = v36;
  *(v26 + 80) = v37;
  v38 = AnyFlow.description.getter();
  v39 = MEMORY[0x1E12A15C0](v38);

  *(v26 + 136) = v29;
  *(v26 + 144) = v30;
  *(v26 + 112) = v39;
  os_signpost(_:dso:log:name:signpostID:_:_:)();

  type metadata accessor for SiriEnvironment();
  *(v0 + 152) = v14;
  v40 = swift_task_alloc();
  *(v40 + 16) = v57;
  *(v40 + 24) = v0 + 16;
  *(v0 + 328) = type metadata accessor for AnyFlow();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScTy11SiriKitFlow15PrepareResponseVs5Error_pGMd, &_sScTy11SiriKitFlow15PrepareResponseVs5Error_pGMR);
  lazy protocol witness table accessor for type AnyFlow and conformance AnyFlow(&lazy protocol witness table cache variable for type AnyFlow and conformance AnyFlow, 255, MEMORY[0x1E69CF990]);
  static SiriEnvironment.withTaskLocalEnvironment<A, B>(for:_:)();

  v41 = *(v0 + 144);
  *(v0 + 336) = v41;
  v42 = *(v57 + 144);
  *(v57 + 144) = v41;

  v43 = *(MEMORY[0x1E69E86A8] + 4);
  v44 = swift_task_alloc();
  *(v0 + 344) = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *(v0 + 352) = v45;
  *v44 = v0;
  v44[1] = FlowAgent.prepare();
  v46 = *(v0 + 280);
  v47 = *(v0 + 264);
  v48 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v46, v41, v47, v45, v48);
}

{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v4 = *v1;
  *(*v1 + 360) = v0;

  v5 = *(v2 + 208);
  if (v0)
  {
    v6 = FlowAgent.prepare();
  }

  else
  {
    v6 = FlowAgent.prepare();
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v1 = v0[39];
  v17 = v0[42];
  v18 = v0[38];
  v2 = v0[37];
  v19 = v0[36];
  v3 = v0[34];
  v4 = v0[32];
  v5 = v0[33];
  v7 = v0[30];
  v6 = v0[31];
  v8 = v0[25];
  v9 = v0[26];
  (*(v3 + 32))(v8, v0[35], v5);
  *(v9 + 129) = (PrepareResponse.needsExecute.getter() & 1) == 0;
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow03AnyC0C4flow_AA15PrepareResponseV8responsetMd, &_s11SiriKitFlow03AnyC0C4flow_AA15PrepareResponseV8responsetMR) + 48);
  *v4 = v1;
  (*(v3 + 16))(&v4[v10], v8, v5);
  (*(v6 + 104))(v4, *MEMORY[0x1E69CFB08], v7);

  static FlowTrace.trace(event:)();

  (*(v6 + 8))(v4, v7);
  $defer #1 () in FlowAgent.prepare()(v18, v9);
  (*(v2 + 8))(v18, v19);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v11 = v0[38];
  v12 = v0[35];
  v13 = v0[32];
  v14 = v0[29];

  v15 = v0[1];

  return v15();
}

{
  v49 = v0;
  v1 = v0[45];
  v0[20] = v1;
  v2 = v0[44];
  v3 = v0[29];
  v4 = v0[27];
  v5 = v1;
  if (swift_dynamicCast())
  {
    v6 = v0[40];
    v7 = v0[26];
    (*(v0[28] + 8))(v0[29], v0[27]);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = v0[41];
      v11 = v0[39];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v48 = v13;
      *v12 = 136315138;
      v0[22] = v11;
      lazy protocol witness table accessor for type AnyFlow and conformance AnyFlow(&lazy protocol witness table cache variable for type AnyFlow and conformance AnyFlow, 255, MEMORY[0x1E69CF990]);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v48);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_1DC659000, v8, v9, "[Conversation] %s prepare cancelled.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1E12A2F50](v13, -1, -1);
      MEMORY[0x1E12A2F50](v12, -1, -1);
    }
  }

  else
  {
    v17 = v0[45];
    v18 = v0[40];
    v19 = v17;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v23 = v0[44];
      v22 = v0[45];
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v48 = v25;
      *v24 = 136315138;
      v0[21] = v22;
      v26 = v22;
      v27 = String.init<A>(describing:)();
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v48);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_1DC659000, v20, v21, "[Conversation] Error preparing flow: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x1E12A2F50](v25, -1, -1);
      MEMORY[0x1E12A2F50](v24, -1, -1);
    }
  }

  v30 = v0[42];
  v31 = v0[38];
  v32 = v0[39];
  v33 = v0[37];
  v46 = v0[45];
  v47 = v0[36];
  v34 = v0[31];
  v35 = v0[32];
  v36 = v0[30];
  v37 = v0[25];
  v45 = v0[26];
  v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow03AnyC0C4flow_AA15PrepareResponseV8responsetMd, &_s11SiriKitFlow03AnyC0C4flow_AA15PrepareResponseV8responsetMR) + 48);
  *v35 = v32;

  static PrepareResponse.complete()();
  (*(v34 + 104))(v35, *MEMORY[0x1E69CFB08], v36);
  static FlowTrace.trace(event:)();
  (*(v34 + 8))(v35, v36);
  static PrepareResponse.complete()();

  $defer #1 () in FlowAgent.prepare()(v31, v45);
  (*(v33 + 8))(v31, v47);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v39 = v0[38];
  v40 = v0[35];
  v41 = v0[32];
  v42 = v0[29];

  v43 = v0[1];

  return v43();
}

uint64_t Conversation.execute(from:)()
{
  v1 = *(*v0 + 816);
  v2 = *(*v0 + 352);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](Conversation.execute(from:), v2, 0);
}

{
  v1 = *(v0 + 1120);
  v2 = *(v0 + 656);
  v3 = *(v0 + 632);
  v4 = *(v0 + 616);
  v5 = *(v0 + 608);
  PrepareResponse.type.getter();
  v6 = (*(v4 + 88))(v3, v5);
  if (v6 == v1)
  {
    v7 = *(v0 + 800);
    v8 = *(v0 + 656);
    v9 = (*(v0 + 352) + *(v0 + 720));
    v10 = *v9;
    v11 = v9[1];
    *(v0 + 824) = v11;

    v12 = PrepareResponse.next.getter();
    *(v0 + 832) = v12;
    v13 = PrepareResponse.onChildFlowCompletion.getter();
    *(v0 + 840) = v13;
    v14 = swift_task_alloc();
    *(v0 + 848) = v14;
    *v14 = v0;
    v14[1] = Conversation.execute(from:);
    v15 = *(v0 + 800);
    v16 = *(v0 + 352);

    return Conversation.push(rcId:parentNode:flow:continuedTasks:parentEnvironment:completion:)(v10, v11, v15, v12, 0, 0, v13);
  }

  else if (v6 == *(v0 + 1124))
  {
    v18 = *(v0 + 808);

    return MEMORY[0x1EEE6DFA0](Conversation.execute(from:), v18, 0);
  }

  else
  {
    v19 = *(v0 + 656);
    v20 = *(v0 + 624);
    v21 = *(v0 + 616);
    v22 = *(v0 + 608);
    _StringGuts.grow(_:)(33);
    *(v0 + 296) = 0;
    *(v0 + 304) = 0xE000000000000000;
    MEMORY[0x1E12A1580](0xD00000000000001FLL, 0x80000001DCA7E890);
    PrepareResponse.type.getter();
    _print_unlocked<A, B>(_:_:)();
    (*(v21 + 8))(v20, v22);
    v23 = *(v0 + 296);
    v24 = *(v0 + 304);

    return specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(v23, v24, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/Runtime/Conversation.swift", 95, 2, 495);
  }
}

{
  v1 = *(*v0 + 848);
  v2 = *(*v0 + 840);
  v3 = *(*v0 + 832);
  v4 = *(*v0 + 824);
  v5 = *(*v0 + 352);
  v7 = *v0;

  return MEMORY[0x1EEE6DFA0](Conversation.execute(from:), v5, 0);
}

{
  v105 = v0;
  v1 = *(v0 + 656);
  if (PrepareResponse.needsExecute.getter())
  {
    v2 = *(v0 + 656);
    if (!PrepareResponse.next.getter())
    {
      v16 = *(v0 + 1132);
      v17 = *(v0 + 568);
      v18 = *(v0 + 560);
      **(v0 + 576) = 300;
      (*(v17 + 104))();
      v19 = swift_task_alloc();
      *(v0 + 856) = v19;
      *v19 = v0;
      v19[1] = Conversation.execute(from:);
      v20 = *(v0 + 808);
      v21 = *(v0 + 600);
      v22 = *(v0 + 576);

      return FlowAgent.execute(timeout:)(v21, v22);
    }

    v3 = *(v0 + 808);
    v4 = *(v0 + 800);
  }

  else
  {
    v5 = *(v0 + 808);
    v6 = *(v0 + 800);
  }

  v7 = *(v0 + 768);
  v8 = *(v0 + 688);
  v9 = *(v0 + 680);
  v10 = *(v0 + 664);
  v11 = *(v0 + 352);
  (*(*(v0 + 648) + 8))(*(v0 + 656), *(v0 + 640));
  outlined init with copy of Conversation.State(v11 + v7, v8, type metadata accessor for Conversation.State);
  outlined init with take of Conversation.State(v8, v9, type metadata accessor for Conversation.State);
  LODWORD(v8) = swift_getEnumCaseMultiPayload() & 0xFFFFFFFE;
  outlined destroy of Conversation.State(v9, type metadata accessor for Conversation.State);
  if (v8 == 2 && (static Task<>.isCancelled.getter() & 1) == 0 && (*(*(v0 + 352) + *(v0 + 776)) & 1) == 0)
  {
    v12 = (*(**(v0 + 736) + 216))();
    if (v12)
    {
      *(v0 + 800) = v12;
      *(v0 + 808) = *(v12 + 16);

      v13 = swift_task_alloc();
      *(v0 + 816) = v13;
      *v13 = v0;
      v13[1] = Conversation.execute(from:);
      v14 = *(v0 + 656);

      return FlowAgent.prepare()(v14);
    }

    v23 = *(v0 + 768);
    v24 = *(v0 + 672);
    v25 = *(v0 + 664);
    v26 = *(v0 + 352);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    outlined assign with take of Conversation.State(v24, v26 + v23);
    swift_endAccess();
  }

  *(v0 + 1096) = *(v0 + 792);
  v27 = *(v0 + 728);
  v28 = *(v0 + 712);
  v29 = *(v0 + 696);
  v30 = *(v0 + 352);
  v31 = (v30 + *(v0 + 720));
  static ConversationSELFHelper.shared.getter();
  v32 = *v31;
  v33 = v31[1];
  outlined init with copy of ReferenceResolutionClientProtocol?(v30 + v27, v29, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  dispatch thunk of ConversationSELFHelper.emitFinalExecutionContextEnded(rcId:hypothesisId:)();

  outlined destroy of ReferenceResolutionClientProtocol?(v29, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v34 = v30 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskObserver;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 1104) = Strong;
  if (Strong)
  {
    v36 = *(v34 + 8);
    ObjectType = swift_getObjectType();
    v38 = *(v36 + 16);
    v102 = (v38 + *v38);
    v39 = v38[1];
    v40 = swift_task_alloc();
    *(v0 + 1112) = v40;
    *v40 = v0;
    v40[1] = Conversation.execute(from:);

    return v102(ObjectType, v36);
  }

  else
  {
    v41 = (*(**(v0 + 736) + 216))();
    v42 = *(v0 + 704);
    if (v41)
    {
      v43 = v41;
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v104 = v47;
        *v46 = 136315394;
        *(v46 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x2865747563657865, 0xEE00293A6D6F7266, &v104);
        *(v46 + 12) = 2080;
        v48 = *(*(v43 + 16) + 152);
        v49 = type metadata accessor for Siri_Nlu_External_Task();

        v51 = MEMORY[0x1E12A16D0](v50, v49);
        v53 = v52;

        v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, &v104);

        *(v46 + 14) = v54;
        _os_log_impl(&dword_1DC659000, v44, v45, "[Conversation] %s: flow was handled, stack is non-empty. Active tasks: %s", v46, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v47, -1, -1);
        MEMORY[0x1E12A2F50](v46, -1, -1);
      }

      v55 = *(v0 + 1096);
      v56 = *(v0 + 376);
      v57 = *(v0 + 336);
      v58 = *(*(v43 + 16) + 152);

      v59 = MEMORY[0x1E69E7CC0];
      *v57 = v58;
      v57[1] = v59;
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = *(v0 + 1096);
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v104 = v64;
        *v63 = 136315394;
        *(v63 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x2865747563657865, 0xEE00293A6D6F7266, &v104);
        *(v63 + 12) = 2080;
        if (v62)
        {
          v65 = *(*(*(v0 + 1096) + 16) + 152);
        }

        else
        {
          v65 = MEMORY[0x1E69E7CC0];
        }

        v66 = type metadata accessor for Siri_Nlu_External_Task();
        v67 = MEMORY[0x1E12A16D0](v65, v66);
        v69 = v68;

        v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v69, &v104);

        *(v63 + 14) = v70;
        _os_log_impl(&dword_1DC659000, v60, v61, "[Conversation] %s: flow was handled, stack is empty. Completed tasks: %s", v63, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v64, -1, -1);
        MEMORY[0x1E12A2F50](v63, -1, -1);
      }

      v71 = *(v0 + 1096);
      v72 = MEMORY[0x1E69E7CC0];
      if (v71)
      {
        v73 = *(v0 + 1096);
        v74 = *(*(v71 + 16) + 152);
      }

      else
      {
        v75 = MEMORY[0x1E69E7CC0];
      }

      v76 = *(v0 + 376);
      v77 = *(v0 + 336);
      *v77 = v72;
      v77[1] = v75;
      swift_storeEnumTagMultiPayload();
    }

    v78 = *(v0 + 696);
    v79 = *(v0 + 688);
    v80 = *(v0 + 680);
    v81 = *(v0 + 672);
    v82 = *(v0 + 656);
    v83 = *(v0 + 632);
    v84 = *(v0 + 624);
    v85 = *(v0 + 600);
    v86 = *(v0 + 576);
    v88 = *(v0 + 552);
    v89 = *(v0 + 528);
    v90 = *(v0 + 520);
    v91 = *(v0 + 496);
    v92 = *(v0 + 472);
    v93 = *(v0 + 464);
    v94 = *(v0 + 456);
    v95 = *(v0 + 448);
    v96 = *(v0 + 440);
    v97 = *(v0 + 416);
    v98 = *(v0 + 408);
    v99 = *(v0 + 400);
    v100 = *(v0 + 392);
    v101 = *(v0 + 368);
    v103 = *(v0 + 360);

    v87 = *(v0 + 8);

    return v87();
  }
}

{
  v135 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 352);
  v2 = type metadata accessor for Logger();
  *(v0 + 704) = __swift_project_value_buffer(v2, static Logger.executor);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 352);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v134 = v7;
    *v6 = 136315138;
    v8 = (v5 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_rcId);
    swift_beginAccess();
    v10 = *v8;
    v9 = v8[1];

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, &v134);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1DC659000, v3, v4, "[Conversation] Finally executing rcId: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1E12A2F50](v7, -1, -1);
    MEMORY[0x1E12A2F50](v6, -1, -1);
  }

  v12 = *(v0 + 696);
  v13 = *(v0 + 352);
  v131 = *(v0 + 344);
  *(v0 + 712) = type metadata accessor for ConversationSELFHelper();
  static ConversationSELFHelper.shared.getter();
  v14 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_rcId;
  *(v0 + 720) = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_rcId;
  v15 = (v13 + v14);
  swift_beginAccess();
  v16 = v15[1];
  v128 = *v15;
  v17 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_hypothesisId;
  *(v0 + 728) = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_hypothesisId;
  swift_beginAccess();
  outlined init with copy of ReferenceResolutionClientProtocol?(v13 + v17, v12, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v19 = *(v13 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_pluginId);
  v18 = *(v13 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_pluginId + 8);
  v20 = *(v13 + 112);
  *(v0 + 736) = v20;
  v21 = *(*v20 + 160);

  v21(v22);
  dispatch thunk of ConversationSELFHelper.emitFinalExecutionContextStarted(rcId:hypothesisId:fromPlugin:stackDepth:)();

  outlined destroy of ReferenceResolutionClientProtocol?(v12, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v131)
  {
    v23 = *(v131 + 16);
    v24 = *(v0 + 352) + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskObserver;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 744) = Strong;
    if (Strong)
    {
      v26 = *(v24 + 8);
      ObjectType = swift_getObjectType();
      v30 = v23 + 152;
      v29 = *(v23 + 152);
      v28 = *(v30 + 8);
      v32 = *v15;
      v31 = v15[1];
      *(v0 + 752) = v31;
      v33 = *(v26 + 8);

      v129 = (v33 + *v33);
      v34 = v33[1];
      v35 = swift_task_alloc();
      *(v0 + 760) = v35;
      *v35 = v0;
      v35[1] = Conversation.execute(from:);

      return v129(v28, v29, v32, v31, ObjectType, v26);
    }
  }

  v37 = *(v0 + 688);
  v38 = *(v0 + 680);
  v39 = *(v0 + 664);
  v40 = *(v0 + 344);
  v41 = *(v0 + 352);
  v42 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_state;
  *(v0 + 768) = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_state;
  *(v0 + 776) = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_isPaused;

  swift_beginAccess();
  swift_beginAccess();
  outlined init with copy of Conversation.State(v41 + v42, v37, type metadata accessor for Conversation.State);
  outlined init with take of Conversation.State(v37, v38, type metadata accessor for Conversation.State);
  LODWORD(v37) = swift_getEnumCaseMultiPayload() & 0xFFFFFFFE;
  outlined destroy of Conversation.State(v38, type metadata accessor for Conversation.State);
  if (v37 != 2)
  {
    v47 = *(v0 + 344);

    v46 = 0;
LABEL_16:
    *(v0 + 1096) = v46;
    v48 = *(v0 + 728);
    v49 = *(v0 + 712);
    v50 = *(v0 + 696);
    v51 = *(v0 + 352);
    v52 = (v51 + *(v0 + 720));
    static ConversationSELFHelper.shared.getter();
    v53 = *v52;
    v54 = v52[1];
    outlined init with copy of ReferenceResolutionClientProtocol?(v51 + v48, v50, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

    dispatch thunk of ConversationSELFHelper.emitFinalExecutionContextEnded(rcId:hypothesisId:)();

    outlined destroy of ReferenceResolutionClientProtocol?(v50, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v55 = v51 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskObserver;
    swift_beginAccess();
    v56 = swift_unknownObjectWeakLoadStrong();
    *(v0 + 1104) = v56;
    if (v56)
    {
      v57 = *(v55 + 8);
      v58 = swift_getObjectType();
      v59 = *(v57 + 16);
      v132 = (v59 + *v59);
      v60 = v59[1];
      v61 = swift_task_alloc();
      *(v0 + 1112) = v61;
      *v61 = v0;
      v61[1] = Conversation.execute(from:);

      return v132(v58, v57);
    }

    else
    {
      v62 = (*(**(v0 + 736) + 216))();
      v63 = *(v0 + 704);
      if (v62)
      {
        v64 = v62;
        v65 = Logger.logObject.getter();
        v66 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          v134 = v68;
          *v67 = 136315394;
          *(v67 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x2865747563657865, 0xEE00293A6D6F7266, &v134);
          *(v67 + 12) = 2080;
          v69 = *(*(v64 + 16) + 152);
          v70 = type metadata accessor for Siri_Nlu_External_Task();

          v72 = MEMORY[0x1E12A16D0](v71, v70);
          v74 = v73;

          v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v74, &v134);

          *(v67 + 14) = v75;
          _os_log_impl(&dword_1DC659000, v65, v66, "[Conversation] %s: flow was handled, stack is non-empty. Active tasks: %s", v67, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12A2F50](v68, -1, -1);
          MEMORY[0x1E12A2F50](v67, -1, -1);
        }

        v76 = *(v0 + 1096);
        v77 = *(v0 + 376);
        v78 = *(v0 + 336);
        v79 = *(*(v64 + 16) + 152);

        v80 = MEMORY[0x1E69E7CC0];
        *v78 = v79;
        v78[1] = v80;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v81 = Logger.logObject.getter();
        v82 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v81, v82))
        {
          v83 = *(v0 + 1096);
          v84 = swift_slowAlloc();
          v85 = swift_slowAlloc();
          v134 = v85;
          *v84 = 136315394;
          *(v84 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x2865747563657865, 0xEE00293A6D6F7266, &v134);
          *(v84 + 12) = 2080;
          if (v83)
          {
            v86 = *(*(*(v0 + 1096) + 16) + 152);
          }

          else
          {
            v86 = MEMORY[0x1E69E7CC0];
          }

          v89 = type metadata accessor for Siri_Nlu_External_Task();
          v90 = MEMORY[0x1E12A16D0](v86, v89);
          v92 = v91;

          v93 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v92, &v134);

          *(v84 + 14) = v93;
          _os_log_impl(&dword_1DC659000, v81, v82, "[Conversation] %s: flow was handled, stack is empty. Completed tasks: %s", v84, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12A2F50](v85, -1, -1);
          MEMORY[0x1E12A2F50](v84, -1, -1);
        }

        v94 = *(v0 + 1096);
        v95 = MEMORY[0x1E69E7CC0];
        if (v94)
        {
          v96 = *(v0 + 1096);
          v97 = *(*(v94 + 16) + 152);
        }

        else
        {
          v98 = MEMORY[0x1E69E7CC0];
        }

        v99 = *(v0 + 376);
        v100 = *(v0 + 336);
        *v100 = v95;
        v100[1] = v98;
        swift_storeEnumTagMultiPayload();
      }

      v101 = *(v0 + 696);
      v102 = *(v0 + 688);
      v103 = *(v0 + 680);
      v104 = *(v0 + 672);
      v105 = *(v0 + 656);
      v106 = *(v0 + 632);
      v107 = *(v0 + 624);
      v108 = *(v0 + 600);
      v109 = *(v0 + 576);
      v115 = *(v0 + 552);
      v116 = *(v0 + 528);
      v117 = *(v0 + 520);
      v118 = *(v0 + 496);
      v119 = *(v0 + 472);
      v120 = *(v0 + 464);
      v121 = *(v0 + 456);
      v122 = *(v0 + 448);
      v123 = *(v0 + 440);
      v124 = *(v0 + 416);
      v125 = *(v0 + 408);
      v126 = *(v0 + 400);
      v127 = *(v0 + 392);
      v130 = *(v0 + 368);
      v133 = *(v0 + 360);

      v110 = *(v0 + 8);

      return v110();
    }
  }

  *(v0 + 1120) = *MEMORY[0x1E69CFFD8];
  *(v0 + 1124) = *MEMORY[0x1E69CFFE0];
  v43 = MEMORY[0x1E69E7F48];
  *(v0 + 1128) = *MEMORY[0x1E69CFB18];
  *(v0 + 1132) = *v43;
  *(v0 + 1136) = *MEMORY[0x1E69CFFC0];
  v44 = MEMORY[0x1E69CFFB8];
  *(v0 + 1140) = *MEMORY[0x1E69CFFC8];
  *(v0 + 1144) = *v44;
  v45 = *(v0 + 344);
  *(v0 + 784) = 0u;
  if (static Task<>.isCancelled.getter() & 1) != 0 || (*(*(v0 + 352) + *(v0 + 776)))
  {

LABEL_14:
    v46 = *(v0 + 792);
    goto LABEL_16;
  }

  if (!v45)
  {
    v45 = (*(**(v0 + 736) + 216))();
    if (!v45)
    {
      v111 = *(v0 + 768);
      v112 = *(v0 + 672);
      v113 = *(v0 + 664);
      v114 = *(v0 + 352);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      outlined assign with take of Conversation.State(v112, v114 + v111);
      swift_endAccess();
      goto LABEL_14;
    }
  }

  *(v0 + 800) = v45;
  *(v0 + 808) = *(v45 + 16);

  v87 = swift_task_alloc();
  *(v0 + 816) = v87;
  *v87 = v0;
  v87[1] = Conversation.execute(from:);
  v88 = *(v0 + 656);

  return FlowAgent.prepare()(v88);
}

{
  v1 = *(*v0 + 760);
  v2 = *(*v0 + 752);
  v3 = *(*v0 + 744);
  v4 = *(*v0 + 352);
  v6 = *v0;

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](Conversation.execute(from:), v4, 0);
}

{
  v97 = v0;
  v1 = *(v0 + 688);
  v2 = *(v0 + 680);
  v3 = *(v0 + 664);
  v4 = *(v0 + 344);
  v5 = *(v0 + 352);
  v6 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_state;
  *(v0 + 768) = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_state;
  *(v0 + 776) = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_isPaused;

  swift_beginAccess();
  swift_beginAccess();
  outlined init with copy of Conversation.State(v5 + v6, v1, type metadata accessor for Conversation.State);
  outlined init with take of Conversation.State(v1, v2, type metadata accessor for Conversation.State);
  LODWORD(v1) = swift_getEnumCaseMultiPayload() & 0xFFFFFFFE;
  outlined destroy of Conversation.State(v2, type metadata accessor for Conversation.State);
  if (v1 != 2)
  {
    v11 = *(v0 + 344);

    v10 = 0;
LABEL_7:
    *(v0 + 1096) = v10;
    v12 = *(v0 + 728);
    v13 = *(v0 + 712);
    v14 = *(v0 + 696);
    v15 = *(v0 + 352);
    v16 = (v15 + *(v0 + 720));
    static ConversationSELFHelper.shared.getter();
    v17 = *v16;
    v18 = v16[1];
    outlined init with copy of ReferenceResolutionClientProtocol?(v15 + v12, v14, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

    dispatch thunk of ConversationSELFHelper.emitFinalExecutionContextEnded(rcId:hypothesisId:)();

    outlined destroy of ReferenceResolutionClientProtocol?(v14, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v19 = v15 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskObserver;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 1104) = Strong;
    if (Strong)
    {
      v21 = *(v19 + 8);
      ObjectType = swift_getObjectType();
      v23 = *(v21 + 16);
      v94 = (v23 + *v23);
      v24 = v23[1];
      v25 = swift_task_alloc();
      *(v0 + 1112) = v25;
      *v25 = v0;
      v25[1] = Conversation.execute(from:);

      return v94(ObjectType, v21);
    }

    else
    {
      v27 = (*(**(v0 + 736) + 216))();
      v28 = *(v0 + 704);
      if (v27)
      {
        v29 = v27;
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v96 = v33;
          *v32 = 136315394;
          *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x2865747563657865, 0xEE00293A6D6F7266, &v96);
          *(v32 + 12) = 2080;
          v34 = *(*(v29 + 16) + 152);
          v35 = type metadata accessor for Siri_Nlu_External_Task();

          v37 = MEMORY[0x1E12A16D0](v36, v35);
          v39 = v38;

          v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, &v96);

          *(v32 + 14) = v40;
          _os_log_impl(&dword_1DC659000, v30, v31, "[Conversation] %s: flow was handled, stack is non-empty. Active tasks: %s", v32, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12A2F50](v33, -1, -1);
          MEMORY[0x1E12A2F50](v32, -1, -1);
        }

        v41 = *(v0 + 1096);
        v42 = *(v0 + 376);
        v43 = *(v0 + 336);
        v44 = *(*(v29 + 16) + 152);

        v45 = MEMORY[0x1E69E7CC0];
        *v43 = v44;
        v43[1] = v45;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = *(v0 + 1096);
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v96 = v50;
          *v49 = 136315394;
          *(v49 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x2865747563657865, 0xEE00293A6D6F7266, &v96);
          *(v49 + 12) = 2080;
          if (v48)
          {
            v51 = *(*(*(v0 + 1096) + 16) + 152);
          }

          else
          {
            v51 = MEMORY[0x1E69E7CC0];
          }

          v54 = type metadata accessor for Siri_Nlu_External_Task();
          v55 = MEMORY[0x1E12A16D0](v51, v54);
          v57 = v56;

          v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v57, &v96);

          *(v49 + 14) = v58;
          _os_log_impl(&dword_1DC659000, v46, v47, "[Conversation] %s: flow was handled, stack is empty. Completed tasks: %s", v49, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12A2F50](v50, -1, -1);
          MEMORY[0x1E12A2F50](v49, -1, -1);
        }

        v59 = *(v0 + 1096);
        v60 = MEMORY[0x1E69E7CC0];
        if (v59)
        {
          v61 = *(v0 + 1096);
          v62 = *(*(v59 + 16) + 152);
        }

        else
        {
          v63 = MEMORY[0x1E69E7CC0];
        }

        v64 = *(v0 + 376);
        v65 = *(v0 + 336);
        *v65 = v60;
        v65[1] = v63;
        swift_storeEnumTagMultiPayload();
      }

      v66 = *(v0 + 696);
      v67 = *(v0 + 688);
      v68 = *(v0 + 680);
      v69 = *(v0 + 672);
      v70 = *(v0 + 656);
      v71 = *(v0 + 632);
      v72 = *(v0 + 624);
      v73 = *(v0 + 600);
      v74 = *(v0 + 576);
      v80 = *(v0 + 552);
      v81 = *(v0 + 528);
      v82 = *(v0 + 520);
      v83 = *(v0 + 496);
      v84 = *(v0 + 472);
      v85 = *(v0 + 464);
      v86 = *(v0 + 456);
      v87 = *(v0 + 448);
      v88 = *(v0 + 440);
      v89 = *(v0 + 416);
      v90 = *(v0 + 408);
      v91 = *(v0 + 400);
      v92 = *(v0 + 392);
      v93 = *(v0 + 368);
      v95 = *(v0 + 360);

      v75 = *(v0 + 8);

      return v75();
    }
  }

  *(v0 + 1120) = *MEMORY[0x1E69CFFD8];
  *(v0 + 1124) = *MEMORY[0x1E69CFFE0];
  v7 = MEMORY[0x1E69E7F48];
  *(v0 + 1128) = *MEMORY[0x1E69CFB18];
  *(v0 + 1132) = *v7;
  *(v0 + 1136) = *MEMORY[0x1E69CFFC0];
  v8 = MEMORY[0x1E69CFFB8];
  *(v0 + 1140) = *MEMORY[0x1E69CFFC8];
  *(v0 + 1144) = *v8;
  v9 = *(v0 + 344);
  *(v0 + 784) = 0u;
  if (static Task<>.isCancelled.getter() & 1) != 0 || (*(*(v0 + 352) + *(v0 + 776)))
  {

LABEL_5:
    v10 = *(v0 + 792);
    goto LABEL_7;
  }

  if (!v9)
  {
    v9 = (*(**(v0 + 736) + 216))();
    if (!v9)
    {
      v76 = *(v0 + 768);
      v77 = *(v0 + 672);
      v78 = *(v0 + 664);
      v79 = *(v0 + 352);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      outlined assign with take of Conversation.State(v77, v79 + v76);
      swift_endAccess();
      goto LABEL_5;
    }
  }

  *(v0 + 800) = v9;
  *(v0 + 808) = *(v9 + 16);

  v52 = swift_task_alloc();
  *(v0 + 816) = v52;
  *v52 = v0;
  v52[1] = Conversation.execute(from:);
  v53 = *(v0 + 656);

  return FlowAgent.prepare()(v53);
}

{
  v1 = v0[99];
  v2 = v0[75];
  v3 = v0[60];
  v4 = v0[61];
  v5 = v0[59];

  ExecuteResponse.nextPluginAction.getter();
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    v6 = v0[75];
    v7 = v0[53];
    v8 = v0[54];
    v9 = v0[52];
    outlined destroy of ReferenceResolutionClientProtocol?(v0[59], &_s11SiriKitFlow12PluginActionVSgMd, &_s11SiriKitFlow12PluginActionVSgMR);
    ExecuteResponse.unhandledReason.getter();
    if ((*(v8 + 48))(v9, 1, v7) == 1)
    {
      v10 = v0[129];
      v11 = v0[101];
      v12 = v0[75];
      v13 = (v0[44] + v0[90]);
      outlined destroy of ReferenceResolutionClientProtocol?(v0[52], &_s11SiriKitFlow0C15UnhandledReasonOSgMd, &_s11SiriKitFlow0C15UnhandledReasonOSgMR);
      v14 = *v13;
      v15 = v13[1];
      v0[132] = v15;

      v16 = ExecuteResponse.next.getter();
      v0[133] = v16;
      v17 = *(v11 + 152);
      v0[134] = v17;

      v18 = ExecuteResponse.onChildFlowCompletion.getter();
      v0[135] = v18;
      v19 = swift_task_alloc();
      v0[136] = v19;
      *v19 = v0;
      v19[1] = Conversation.execute(from:);
      v20 = v0[44];

      return Conversation.push(rcId:parentNode:flow:continuedTasks:parentEnvironment:completion:)(v14, v15, 0, v16, v17, v10, v18);
    }

    v33 = v0[57];
    v34 = v0[58];
    v35 = v0[53];
    v36 = v0[54];
    v102 = *(v36 + 32);
    v102(v34, v0[52], v35);
    (*(v36 + 16))(v33, v34, v35);
    v37 = (*(v36 + 88))(v33, v35);
    v38 = v0[101];
    v107 = v0[129];
    v110 = v0[100];
    if (v37 == *MEMORY[0x1E69CFB70])
    {
      v90 = v0[81];
      v94 = v0[80];
      v96 = v0[82];
      v82 = v0[74];
      v84 = v0[73];
      v86 = v0[75];
      v88 = v0[48];
      v92 = v0[47];
      v99 = v0[46];
      v39 = v0[44];
      v40 = (v39 + v0[90]);
      v77 = *(v0[54] + 8);
      v77(v0[57], v0[53]);
      v41 = *(v39 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_rootEnvironment);
      SiriEnvironment.currentRequest.getter();
      v42 = CurrentRequest.executionRequestId.getter();
      v44 = v43;

      if (v44)
      {
        v45 = v42;
      }

      else
      {
        v45 = 0;
      }

      v79 = v45;
      if (!v44)
      {
        v44 = 0xE000000000000000;
      }

      SiriEnvironment.currentRequest.getter();
      v78 = CurrentRequest.rootRequestId.getter();
      v47 = v46;

      v49 = *(v39 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_serverFallbackDisablingUtils + 24);
      v48 = *(v39 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_serverFallbackDisablingUtils + 32);
      __swift_project_boxed_opaque_existential_1((v39 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_serverFallbackDisablingUtils), v49);
      v50 = *v40;
      v51 = v40[1];
      v52 = *(v48 + 40);

      v52(v79, v44, v78, v47, v50, v51, v49, v48);

      (*(v82 + 8))(v86, v84);
      (*(v90 + 8))(v96, v94);
      if ((*(v88 + 48))(v99, 1, v92) != 1)
      {
        v74 = v0[50];
        v75 = v0[46];
        v76 = v0[42];
        v77(v0[58], v0[53]);
        outlined init with take of Conversation.State(v75, v74, type metadata accessor for ConversationCommitResult);
        outlined init with take of Conversation.State(v74, v76, type metadata accessor for ConversationCommitResult);
        goto LABEL_18;
      }

      outlined destroy of ReferenceResolutionClientProtocol?(v0[46], &_s14SiriKitRuntime24ConversationCommitResultOSgMd, &_s14SiriKitRuntime24ConversationCommitResultOSgMR);
    }

    else
    {
      v53 = v0[82];
      v54 = v0[81];
      v55 = v0[80];
      v56 = v0[75];
      v57 = v0[74];
      v58 = v0[73];
      v59 = v0[57];
      v61 = v0[53];
      v60 = v0[54];

      (*(v57 + 8))(v56, v58);
      (*(v54 + 8))(v53, v55);
      (*(v60 + 8))(v59, v61);
    }

    v62 = v0[47];
    v102(v0[42], v0[58], v0[53]);
  }

  else
  {
    v22 = v0[129];
    v23 = v0[101];
    v24 = v0[100];
    v25 = v0[81];
    v104 = v0[80];
    v106 = v0[82];
    v98 = v0[75];
    v26 = v0[74];
    v27 = v0[73];
    v28 = v0[61];
    v29 = v0[62];
    v30 = v0[60];
    v101 = v0[59];
    v109 = v0[47];
    v31 = v0[42];

    (*(v26 + 8))(v98, v27);
    (*(v25 + 8))(v106, v104);
    v32 = *(v28 + 32);
    v32(v29, v101, v30);
    v32(v31, v29, v30);
  }

  swift_storeEnumTagMultiPayload();
LABEL_18:
  v63 = v0[131];
  v64 = v0[87];
  v65 = v0[86];
  v66 = v0[85];
  v67 = v0[84];
  v68 = v0[82];
  v69 = v0[79];
  v70 = v0[78];
  v71 = v0[75];
  v72 = v0[72];
  v80 = v0[69];
  v81 = v0[66];
  v83 = v0[65];
  v85 = v0[62];
  v87 = v0[59];
  v89 = v0[58];
  v91 = v0[57];
  v93 = v0[56];
  v95 = v0[55];
  v97 = v0[52];
  v100 = v0[51];
  v103 = v0[50];
  v105 = v0[49];
  v108 = v0[46];
  v111 = v0[45];

  v73 = v0[1];

  return v73();
}

{
  v1 = *(*v0 + 1088);
  v2 = *(*v0 + 1080);
  v3 = *(*v0 + 1072);
  v4 = *(*v0 + 1064);
  v5 = *(*v0 + 1056);
  v6 = *(*v0 + 1032);
  v7 = *(*v0 + 352);
  v9 = *v0;

  return MEMORY[0x1EEE6DFA0](Conversation.execute(from:), v7, 0);
}

{
  v107 = v0;
  v1 = *(v0 + 1032);

  v103 = *(v0 + 1048);
  v2 = *(v0 + 808);
  v3 = *(v0 + 800);
  v4 = *(v0 + 656);
  v5 = *(v0 + 648);
  v6 = *(v0 + 640);
  v7 = *(v0 + 600);
  v8 = *(v0 + 592);
  v9 = *(v0 + 584);
  v10 = ExecuteResponse.requireInput.getter();

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  if (v10)
  {
    v11 = *(v0 + 768);
    v12 = *(v0 + 672);
    v13 = *(v0 + 664);
    v14 = *(v0 + 352);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    outlined assign with take of Conversation.State(v12, v14 + v11);
    swift_endAccess();
    v15 = v103;
    goto LABEL_12;
  }

  v16 = *(v0 + 864);
  v17 = *(v0 + 688);
  v18 = *(v0 + 680);
  v19 = *(v0 + 664);
  outlined init with copy of Conversation.State(*(v0 + 352) + *(v0 + 768), v17, type metadata accessor for Conversation.State);
  outlined init with take of Conversation.State(v17, v18, type metadata accessor for Conversation.State);
  LODWORD(v17) = swift_getEnumCaseMultiPayload() & 0xFFFFFFFE;
  outlined destroy of Conversation.State(v18, type metadata accessor for Conversation.State);
  v15 = v103;
  if (v17 != 2)
  {
LABEL_12:
    *(v0 + 1096) = v15;
    v28 = *(v0 + 728);
    v29 = *(v0 + 712);
    v30 = *(v0 + 696);
    v31 = *(v0 + 352);
    v32 = (v31 + *(v0 + 720));
    static ConversationSELFHelper.shared.getter();
    v33 = *v32;
    v34 = v32[1];
    outlined init with copy of ReferenceResolutionClientProtocol?(v31 + v28, v30, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

    dispatch thunk of ConversationSELFHelper.emitFinalExecutionContextEnded(rcId:hypothesisId:)();

    outlined destroy of ReferenceResolutionClientProtocol?(v30, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v35 = v31 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskObserver;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 1104) = Strong;
    if (Strong)
    {
      v37 = *(v35 + 8);
      ObjectType = swift_getObjectType();
      v39 = *(v37 + 16);
      v104 = (v39 + *v39);
      v40 = v39[1];
      v41 = swift_task_alloc();
      *(v0 + 1112) = v41;
      *v41 = v0;
      v41[1] = Conversation.execute(from:);

      return v104(ObjectType, v37);
    }

    else
    {
      v42 = (*(**(v0 + 736) + 216))();
      v43 = *(v0 + 704);
      if (v42)
      {
        v44 = v42;
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v106 = v48;
          *v47 = 136315394;
          *(v47 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x2865747563657865, 0xEE00293A6D6F7266, &v106);
          *(v47 + 12) = 2080;
          v49 = *(*(v44 + 16) + 152);
          v50 = type metadata accessor for Siri_Nlu_External_Task();

          v52 = MEMORY[0x1E12A16D0](v51, v50);
          v54 = v53;

          v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, &v106);

          *(v47 + 14) = v55;
          _os_log_impl(&dword_1DC659000, v45, v46, "[Conversation] %s: flow was handled, stack is non-empty. Active tasks: %s", v47, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12A2F50](v48, -1, -1);
          MEMORY[0x1E12A2F50](v47, -1, -1);
        }

        v56 = *(v0 + 1096);
        v57 = *(v0 + 376);
        v58 = *(v0 + 336);
        v59 = *(*(v44 + 16) + 152);

        v60 = MEMORY[0x1E69E7CC0];
        *v58 = v59;
        v58[1] = v60;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v61 = Logger.logObject.getter();
        v62 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = *(v0 + 1096);
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          v106 = v65;
          *v64 = 136315394;
          *(v64 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x2865747563657865, 0xEE00293A6D6F7266, &v106);
          *(v64 + 12) = 2080;
          if (v63)
          {
            v66 = *(*(*(v0 + 1096) + 16) + 152);
          }

          else
          {
            v66 = MEMORY[0x1E69E7CC0];
          }

          v67 = type metadata accessor for Siri_Nlu_External_Task();
          v68 = MEMORY[0x1E12A16D0](v66, v67);
          v70 = v69;

          v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v70, &v106);

          *(v64 + 14) = v71;
          _os_log_impl(&dword_1DC659000, v61, v62, "[Conversation] %s: flow was handled, stack is empty. Completed tasks: %s", v64, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12A2F50](v65, -1, -1);
          MEMORY[0x1E12A2F50](v64, -1, -1);
        }

        v72 = *(v0 + 1096);
        v73 = MEMORY[0x1E69E7CC0];
        if (v72)
        {
          v74 = *(v0 + 1096);
          v75 = *(*(v72 + 16) + 152);
        }

        else
        {
          v76 = MEMORY[0x1E69E7CC0];
        }

        v77 = *(v0 + 376);
        v78 = *(v0 + 336);
        *v78 = v73;
        v78[1] = v76;
        swift_storeEnumTagMultiPayload();
      }

      v79 = *(v0 + 696);
      v80 = *(v0 + 688);
      v81 = *(v0 + 680);
      v82 = *(v0 + 672);
      v83 = *(v0 + 656);
      v84 = *(v0 + 632);
      v85 = *(v0 + 624);
      v86 = *(v0 + 600);
      v87 = *(v0 + 576);
      v89 = *(v0 + 552);
      v90 = *(v0 + 528);
      v91 = *(v0 + 520);
      v92 = *(v0 + 496);
      v93 = *(v0 + 472);
      v94 = *(v0 + 464);
      v95 = *(v0 + 456);
      v96 = *(v0 + 448);
      v97 = *(v0 + 440);
      v98 = *(v0 + 416);
      v99 = *(v0 + 408);
      v100 = *(v0 + 400);
      v101 = *(v0 + 392);
      v102 = *(v0 + 368);
      v105 = *(v0 + 360);

      v88 = *(v0 + 8);

      return v88();
    }
  }

  *(v0 + 792) = v103;
  *(v0 + 784) = v16;
  if (static Task<>.isCancelled.getter() & 1) != 0 || (*(*(v0 + 352) + *(v0 + 776)))
  {
LABEL_11:
    v15 = *(v0 + 792);
    goto LABEL_12;
  }

  v20 = (*(**(v0 + 736) + 216))();
  if (!v20)
  {
    v24 = *(v0 + 768);
    v25 = *(v0 + 672);
    v26 = *(v0 + 664);
    v27 = *(v0 + 352);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    outlined assign with take of Conversation.State(v25, v27 + v24);
    swift_endAccess();
    goto LABEL_11;
  }

  *(v0 + 800) = v20;
  *(v0 + 808) = *(v20 + 16);

  v21 = swift_task_alloc();
  *(v0 + 816) = v21;
  *v21 = v0;
  v21[1] = Conversation.execute(from:);
  v22 = *(v0 + 656);

  return FlowAgent.prepare()(v22);
}

{
  v2 = *v1;
  v3 = *(*v1 + 856);
  v13 = *v1;
  *(*v1 + 864) = v0;

  if (v0)
  {
    v4 = v2[100];
    v5 = v2[72];
    v6 = v2[71];
    v7 = v2[70];
    v8 = v2[44];

    (*(v6 + 8))(v5, v7);
    v9 = Conversation.execute(from:);
    v10 = v8;
  }

  else
  {
    v11 = v2[44];
    (*(v2[71] + 8))(v2[72], v2[70]);
    v9 = Conversation.execute(from:);
    v10 = v11;
  }

  return MEMORY[0x1EEE6DFA0](v9, v10, 0);
}

{
  v1 = *(v0 + 1136);
  v2 = *(v0 + 600);
  v3 = *(v0 + 528);
  v4 = *(v0 + 504);
  v5 = *(v0 + 512);
  ExecuteResponse.type.getter();
  v6 = (*(v5 + 88))(v3, v4);
  if (v6 == v1)
  {
    v7 = *(v0 + 600);
    v8 = (*(v0 + 352) + *(v0 + 720));
    v9 = *v8;
    v10 = v8[1];
    *(v0 + 952) = v10;

    v11 = ExecuteResponse.next.getter();
    *(v0 + 960) = v11;
    v12 = ExecuteResponse.onChildFlowCompletion.getter();
    *(v0 + 968) = v12;
    v13 = swift_task_alloc();
    *(v0 + 976) = v13;
    *v13 = v0;
    v13[1] = Conversation.execute(from:);
    v14 = *(v0 + 800);
    v15 = *(v0 + 352);
    v16 = v9;
    v17 = v10;
    v18 = v11;
    v19 = 0;
    v20 = v12;
LABEL_3:

    return Conversation.push(rcId:parentNode:flow:continuedTasks:parentEnvironment:completion:)(v16, v17, v14, v18, v19, 0, v20);
  }

  if (v6 == *(v0 + 1140))
  {
    v22 = *(v0 + 808);
    v23 = *(v0 + 800);

    return MEMORY[0x1EEE6DFA0](Conversation.execute(from:), v22, 0);
  }

  if (v6 == *(v0 + 1144))
  {
    v24 = *(v0 + 808);
    v25 = *(v0 + 600);
    v26 = (*(v0 + 352) + *(v0 + 720));
    (*(**(v0 + 736) + 232))(*(v0 + 800));

    flushProcessWideSiriEnvironmentCache()();
    v27 = *v26;
    v28 = v26[1];
    *(v0 + 984) = v28;

    v29 = ExecuteResponse.next.getter();
    *(v0 + 992) = v29;
    v30 = *(v24 + 152);
    *(v0 + 1000) = v30;

    v31 = ExecuteResponse.onChildFlowCompletion.getter();
    *(v0 + 1008) = v31;
    v32 = swift_task_alloc();
    *(v0 + 1016) = v32;
    *v32 = v0;
    v32[1] = Conversation.execute(from:);
    v14 = *(v0 + 800);
    v33 = *(v0 + 352);
    v16 = v27;
    v17 = v28;
    v18 = v29;
    v19 = v30;
    v20 = v31;
    goto LABEL_3;
  }

  if (v6 != *MEMORY[0x1E69CFFD0])
  {
    v42 = *(v0 + 728);
    v43 = *(v0 + 712);
    v44 = *(v0 + 696);
    v45 = *(v0 + 520);
    v46 = *(v0 + 512);
    v129 = *(v0 + 600);
    v131 = *(v0 + 504);
    v47 = *(v0 + 352);
    v48 = (v47 + *(v0 + 720));
    static ConversationSELFHelper.shared.getter();
    v49 = *v48;
    v50 = v48[1];
    outlined init with copy of ReferenceResolutionClientProtocol?(v47 + v42, v44, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

    dispatch thunk of ConversationSELFHelper.emitFinalExecutionContextFailed(rcId:hypothesisId:reason:)();

    outlined destroy of ReferenceResolutionClientProtocol?(v44, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    _StringGuts.grow(_:)(35);
    *(v0 + 312) = 0;
    *(v0 + 320) = 0xE000000000000000;
    MEMORY[0x1E12A1580](0xD000000000000021, 0x80000001DCA7E910);
    ExecuteResponse.type.getter();
    _print_unlocked<A, B>(_:_:)();
    (*(v46 + 8))(v45, v131);
    v39 = *(v0 + 312);
    v40 = *(v0 + 320);
    v41 = 559;
    goto LABEL_16;
  }

  v34 = *(v0 + 800);
  v35 = *(v0 + 600);
  v36 = *(v0 + 424);
  v37 = *(v0 + 432);
  v38 = *(v0 + 408);

  ExecuteResponse.unhandledReason.getter();
  if ((*(v37 + 48))(v38, 1, v36) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 408), &_s11SiriKitFlow0C15UnhandledReasonOSgMd, &_s11SiriKitFlow0C15UnhandledReasonOSgMR);
    v39 = 0xD000000000000080;
    v40 = 0x80000001DCA7E940;
    v41 = 539;
LABEL_16:

    return specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(v39, v40, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/Runtime/Conversation.swift", 95, 2, v41);
  }

  v51 = *(v0 + 728);
  v52 = *(v0 + 712);
  v53 = *(v0 + 696);
  v54 = *(v0 + 448);
  v55 = *(v0 + 424);
  v56 = *(v0 + 432);
  v57 = *(v0 + 352);
  v58 = (v57 + *(v0 + 720));
  v132 = *(v0 + 440);
  v127 = *(v56 + 32);
  v127(v54, *(v0 + 408), v55);
  static ConversationSELFHelper.shared.getter();
  v59 = *v58;
  v60 = v58[1];
  outlined init with copy of ReferenceResolutionClientProtocol?(v57 + v51, v53, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  dispatch thunk of ConversationSELFHelper.emitFinalExecutionContextFailed(rcId:hypothesisId:reason:)();

  outlined destroy of ReferenceResolutionClientProtocol?(v53, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(v56 + 16))(v132, v54, v55);
  v61 = (*(v56 + 88))(v132, v55);
  v62 = *(v0 + 808);
  v133 = *(v0 + 800);
  if (v61 == *MEMORY[0x1E69CFB70])
  {
    v117 = *(v0 + 648);
    v121 = *(v0 + 640);
    v123 = *(v0 + 656);
    v108 = *(v0 + 592);
    v110 = *(v0 + 584);
    v112 = *(v0 + 600);
    v114 = *(v0 + 384);
    v119 = *(v0 + 376);
    v63 = *(v0 + 352);
    v125 = *(v0 + 360);
    v64 = (v63 + *(v0 + 720));
    v101 = *(*(v0 + 432) + 8);
    v101(*(v0 + 440), *(v0 + 424));
    v65 = *(v63 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_rootEnvironment);
    SiriEnvironment.currentRequest.getter();
    v66 = CurrentRequest.executionRequestId.getter();
    v68 = v67;

    if (v68)
    {
      v69 = v66;
    }

    else
    {
      v69 = 0;
    }

    v105 = v69;
    if (v68)
    {
      v70 = v68;
    }

    else
    {
      v70 = 0xE000000000000000;
    }

    SiriEnvironment.currentRequest.getter();
    v103 = CurrentRequest.rootRequestId.getter();
    v72 = v71;

    v74 = *(v63 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_serverFallbackDisablingUtils + 24);
    v73 = *(v63 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_serverFallbackDisablingUtils + 32);
    __swift_project_boxed_opaque_existential_1((v63 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_serverFallbackDisablingUtils), v74);
    v75 = *v64;
    v76 = v64[1];
    v77 = *(v73 + 40);

    v77(v105, v70, v103, v72, v75, v76, v74, v73);

    (*(v108 + 8))(v112, v110);
    (*(v117 + 8))(v123, v121);
    if ((*(v114 + 48))(v125, 1, v119) != 1)
    {
      v116 = *(v0 + 792);
      v88 = *(v0 + 392);
      v89 = *(v0 + 360);
      v90 = *(v0 + 336);
      v101(*(v0 + 448), *(v0 + 424));
      outlined init with take of Conversation.State(v89, v88, type metadata accessor for ConversationCommitResult);
      outlined init with take of Conversation.State(v88, v90, type metadata accessor for ConversationCommitResult);
      goto LABEL_31;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 360), &_s14SiriKitRuntime24ConversationCommitResultOSgMd, &_s14SiriKitRuntime24ConversationCommitResultOSgMR);
  }

  else
  {
    v78 = *(v0 + 656);
    v79 = *(v0 + 648);
    v80 = *(v0 + 640);
    v81 = *(v0 + 600);
    v82 = *(v0 + 592);
    v83 = *(v0 + 584);
    v85 = *(v0 + 432);
    v84 = *(v0 + 440);
    v86 = *(v0 + 424);

    (*(v82 + 8))(v81, v83);
    (*(v79 + 8))(v78, v80);
    (*(v85 + 8))(v84, v86);
  }

  v115 = *(v0 + 792);
  v87 = *(v0 + 376);
  v127(*(v0 + 336), *(v0 + 448), *(v0 + 424));
  swift_storeEnumTagMultiPayload();
LABEL_31:
  v91 = *(v0 + 696);
  v92 = *(v0 + 688);
  v93 = *(v0 + 680);
  v94 = *(v0 + 672);
  v95 = *(v0 + 656);
  v96 = *(v0 + 632);
  v97 = *(v0 + 624);
  v98 = *(v0 + 600);
  v99 = *(v0 + 576);
  v102 = *(v0 + 552);
  v104 = *(v0 + 528);
  v106 = *(v0 + 520);
  v107 = *(v0 + 496);
  v109 = *(v0 + 472);
  v111 = *(v0 + 464);
  v113 = *(v0 + 456);
  v118 = *(v0 + 448);
  v120 = *(v0 + 440);
  v122 = *(v0 + 416);
  v124 = *(v0 + 408);
  v126 = *(v0 + 400);
  v128 = *(v0 + 392);
  v130 = *(v0 + 368);
  v134 = *(v0 + 360);

  v100 = *(v0 + 8);

  return v100();
}

{
  v1 = *(*v0 + 976);
  v2 = *(*v0 + 968);
  v3 = *(*v0 + 960);
  v4 = *(*v0 + 952);
  v5 = *(*v0 + 800);
  v6 = *(*v0 + 352);
  v8 = *v0;

  return MEMORY[0x1EEE6DFA0](Conversation.execute(from:), v6, 0);
}

{
  v120 = v0;
  v1 = *(v0 + 600);
  v2 = ExecuteResponse.retriggerNL.getter();
  v116 = *(v0 + 656);
  v6 = *(v0 + 648);
  v7 = *(v0 + 640);
  v8 = *(v0 + 600);
  v9 = *(v0 + 592);
  v10 = *(v0 + 584);
  if (v3)
  {
    v11 = v3;
    v108 = *(v0 + 640);
    v110 = v2;
    v12 = *(v0 + 808);
    v13 = *(v0 + 800);
    v114 = *(v0 + 792);
    v112 = *(v0 + 376);
    v14 = *(v0 + 336);
    v15 = v4;
    v16 = v5;

    (*(v9 + 8))(v8, v10);
    (*(v6 + 8))(v116, v108);
    *v14 = v110;
    v14[1] = v11;
    v14[2] = v15;
    v14[3] = v16;
    swift_storeEnumTagMultiPayload();
LABEL_3:
    v17 = *(v0 + 696);
    v18 = *(v0 + 688);
    v19 = *(v0 + 680);
    v20 = *(v0 + 672);
    v21 = *(v0 + 656);
    v22 = *(v0 + 632);
    v23 = *(v0 + 624);
    v24 = *(v0 + 600);
    v25 = *(v0 + 576);
    v98 = *(v0 + 552);
    v99 = *(v0 + 528);
    v100 = *(v0 + 520);
    v101 = *(v0 + 496);
    v102 = *(v0 + 472);
    v103 = *(v0 + 464);
    v104 = *(v0 + 456);
    v105 = *(v0 + 448);
    v106 = *(v0 + 440);
    v107 = *(v0 + 416);
    v109 = *(v0 + 408);
    v111 = *(v0 + 400);
    v113 = *(v0 + 392);
    v115 = *(v0 + 368);
    v117 = *(v0 + 360);

    v26 = *(v0 + 8);

    return v26();
  }

  v28 = *(v0 + 792);
  v29 = *(v0 + 808);
  v30 = *(v0 + 800);
  v31 = *(v0 + 600);
  LOBYTE(v31) = ExecuteResponse.requireInput.getter();

  (*(v9 + 8))(v8, v10);
  (*(v6 + 8))(v116, v7);
  if (v31)
  {
    v32 = *(v0 + 768);
    v33 = *(v0 + 672);
    v34 = *(v0 + 664);
    v35 = *(v0 + 352);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    outlined assign with take of Conversation.State(v33, v35 + v32);
    swift_endAccess();
  }

  else
  {
    v36 = *(v0 + 864);
    v37 = *(v0 + 688);
    v38 = *(v0 + 680);
    v39 = *(v0 + 664);
    outlined init with copy of Conversation.State(*(v0 + 352) + *(v0 + 768), v37, type metadata accessor for Conversation.State);
    outlined init with take of Conversation.State(v37, v38, type metadata accessor for Conversation.State);
    LODWORD(v37) = swift_getEnumCaseMultiPayload() & 0xFFFFFFFE;
    outlined destroy of Conversation.State(v38, type metadata accessor for Conversation.State);
    if (v37 == 2)
    {
      *(v0 + 792) = v28;
      *(v0 + 784) = v36;
      if ((static Task<>.isCancelled.getter() & 1) == 0 && (*(*(v0 + 352) + *(v0 + 776)) & 1) == 0)
      {
        v40 = (*(**(v0 + 736) + 216))();
        if (v40)
        {
          *(v0 + 800) = v40;
          *(v0 + 808) = *(v40 + 16);

          v41 = swift_task_alloc();
          *(v0 + 816) = v41;
          *v41 = v0;
          v41[1] = Conversation.execute(from:);
          v42 = *(v0 + 656);

          return FlowAgent.prepare()(v42);
        }

        v43 = *(v0 + 768);
        v44 = *(v0 + 672);
        v45 = *(v0 + 664);
        v46 = *(v0 + 352);
        swift_storeEnumTagMultiPayload();
        swift_beginAccess();
        outlined assign with take of Conversation.State(v44, v46 + v43);
        swift_endAccess();
      }

      v28 = *(v0 + 792);
    }
  }

  *(v0 + 1096) = v28;
  v47 = *(v0 + 728);
  v48 = *(v0 + 712);
  v49 = *(v0 + 696);
  v50 = *(v0 + 352);
  v51 = (v50 + *(v0 + 720));
  static ConversationSELFHelper.shared.getter();
  v52 = *v51;
  v53 = v51[1];
  outlined init with copy of ReferenceResolutionClientProtocol?(v50 + v47, v49, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  dispatch thunk of ConversationSELFHelper.emitFinalExecutionContextEnded(rcId:hypothesisId:)();

  outlined destroy of ReferenceResolutionClientProtocol?(v49, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v54 = v50 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskObserver;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 1104) = Strong;
  if (!Strong)
  {
    v61 = (*(**(v0 + 736) + 216))();
    v62 = *(v0 + 704);
    if (v61)
    {
      v63 = v61;
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v119 = v67;
        *v66 = 136315394;
        *(v66 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x2865747563657865, 0xEE00293A6D6F7266, &v119);
        *(v66 + 12) = 2080;
        v68 = *(*(v63 + 16) + 152);
        v69 = type metadata accessor for Siri_Nlu_External_Task();

        v71 = MEMORY[0x1E12A16D0](v70, v69);
        v73 = v72;

        v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v73, &v119);

        *(v66 + 14) = v74;
        _os_log_impl(&dword_1DC659000, v64, v65, "[Conversation] %s: flow was handled, stack is non-empty. Active tasks: %s", v66, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v67, -1, -1);
        MEMORY[0x1E12A2F50](v66, -1, -1);
      }

      v75 = *(v0 + 1096);
      v76 = *(v0 + 376);
      v77 = *(v0 + 336);
      v78 = *(*(v63 + 16) + 152);

      v79 = MEMORY[0x1E69E7CC0];
      *v77 = v78;
      v77[1] = v79;
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = *(v0 + 1096);
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v119 = v84;
        *v83 = 136315394;
        *(v83 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x2865747563657865, 0xEE00293A6D6F7266, &v119);
        *(v83 + 12) = 2080;
        if (v82)
        {
          v85 = *(*(*(v0 + 1096) + 16) + 152);
        }

        else
        {
          v85 = MEMORY[0x1E69E7CC0];
        }

        v86 = type metadata accessor for Siri_Nlu_External_Task();
        v87 = MEMORY[0x1E12A16D0](v85, v86);
        v89 = v88;

        v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v89, &v119);

        *(v83 + 14) = v90;
        _os_log_impl(&dword_1DC659000, v80, v81, "[Conversation] %s: flow was handled, stack is empty. Completed tasks: %s", v83, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v84, -1, -1);
        MEMORY[0x1E12A2F50](v83, -1, -1);
      }

      v91 = *(v0 + 1096);
      v92 = MEMORY[0x1E69E7CC0];
      if (v91)
      {
        v93 = *(v0 + 1096);
        v94 = *(*(v91 + 16) + 152);
      }

      else
      {
        v95 = MEMORY[0x1E69E7CC0];
      }

      v96 = *(v0 + 376);
      v97 = *(v0 + 336);
      *v97 = v92;
      v97[1] = v95;
      swift_storeEnumTagMultiPayload();
    }

    goto LABEL_3;
  }

  v56 = *(v54 + 8);
  ObjectType = swift_getObjectType();
  v58 = *(v56 + 16);
  v118 = (v58 + *v58);
  v59 = v58[1];
  v60 = swift_task_alloc();
  *(v0 + 1112) = v60;
  *v60 = v0;
  v60[1] = Conversation.execute(from:);

  return v118(ObjectType, v56);
}

{
  v1 = *(*v0 + 1112);
  v2 = *(*v0 + 1104);
  v3 = *(*v0 + 352);
  v5 = *v0;

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](Conversation.execute(from:), v3, 0);
}

{
  v65 = v0;
  v1 = (*(**(v0 + 736) + 216))();
  v2 = *(v0 + 704);
  if (v1)
  {
    v3 = v1;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v64 = v7;
      *v6 = 136315394;
      *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x2865747563657865, 0xEE00293A6D6F7266, &v64);
      *(v6 + 12) = 2080;
      v8 = *(*(v3 + 16) + 152);
      v9 = type metadata accessor for Siri_Nlu_External_Task();

      v11 = MEMORY[0x1E12A16D0](v10, v9);
      v13 = v12;

      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v64);

      *(v6 + 14) = v14;
      _os_log_impl(&dword_1DC659000, v4, v5, "[Conversation] %s: flow was handled, stack is non-empty. Active tasks: %s", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v7, -1, -1);
      MEMORY[0x1E12A2F50](v6, -1, -1);
    }

    v15 = *(v0 + 1096);
    v16 = *(v0 + 376);
    v17 = *(v0 + 336);
    v18 = *(*(v3 + 16) + 152);

    v19 = MEMORY[0x1E69E7CC0];
    *v17 = v18;
    v17[1] = v19;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = *(v0 + 1096);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v64 = v24;
      *v23 = 136315394;
      *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x2865747563657865, 0xEE00293A6D6F7266, &v64);
      *(v23 + 12) = 2080;
      if (v22)
      {
        v25 = *(*(*(v0 + 1096) + 16) + 152);
      }

      else
      {
        v25 = MEMORY[0x1E69E7CC0];
      }

      v26 = type metadata accessor for Siri_Nlu_External_Task();
      v27 = MEMORY[0x1E12A16D0](v25, v26);
      v29 = v28;

      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v64);

      *(v23 + 14) = v30;
      _os_log_impl(&dword_1DC659000, v20, v21, "[Conversation] %s: flow was handled, stack is empty. Completed tasks: %s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v24, -1, -1);
      MEMORY[0x1E12A2F50](v23, -1, -1);
    }

    v31 = *(v0 + 1096);
    v32 = MEMORY[0x1E69E7CC0];
    if (v31)
    {
      v33 = *(v0 + 1096);
      v34 = *(*(v31 + 16) + 152);
    }

    else
    {
      v35 = MEMORY[0x1E69E7CC0];
    }

    v36 = *(v0 + 376);
    v37 = *(v0 + 336);
    *v37 = v32;
    v37[1] = v35;
    swift_storeEnumTagMultiPayload();
  }

  v38 = *(v0 + 696);
  v39 = *(v0 + 688);
  v40 = *(v0 + 680);
  v41 = *(v0 + 672);
  v42 = *(v0 + 656);
  v43 = *(v0 + 632);
  v44 = *(v0 + 624);
  v45 = *(v0 + 600);
  v46 = *(v0 + 576);
  v49 = *(v0 + 552);
  v50 = *(v0 + 528);
  v51 = *(v0 + 520);
  v52 = *(v0 + 496);
  v53 = *(v0 + 472);
  v54 = *(v0 + 464);
  v55 = *(v0 + 456);
  v56 = *(v0 + 448);
  v57 = *(v0 + 440);
  v58 = *(v0 + 416);
  v59 = *(v0 + 408);
  v60 = *(v0 + 400);
  v61 = *(v0 + 392);
  v62 = *(v0 + 368);
  v63 = *(v0 + 360);

  v47 = *(v0 + 8);

  return v47();
}

{
  v1 = v0[101];
  v2 = v0[44];
  FlowAgent.complete()();
  v0[128] = *(v1 + 112);

  return MEMORY[0x1EEE6DFA0](Conversation.execute(from:), v2, 0);
}

{
  v1 = v0[128];
  v2 = v0[100];
  v0[129] = dispatch thunk of AnyFlow.siriEnvironment.getter();
  v3 = swift_task_alloc();
  v0[130] = v3;
  *v3 = v0;
  v3[1] = Conversation.execute(from:);
  v4 = v0[44];

  return Conversation.removeNode(node:)(v2);
}

{
  v1 = v0[44];
  v0[109] = *(v0[101] + 112);
  return MEMORY[0x1EEE6DFA0](Conversation.execute(from:), v1, 0);
}

{
  v1 = v0[109];
  v2 = v0[101];
  v0[110] = dispatch thunk of AnyFlow.siriEnvironment.getter();

  return MEMORY[0x1EEE6DFA0](Conversation.execute(from:), v2, 0);
}

{
  v1 = *(v0 + 808);
  v2 = *(v0 + 784);
  type metadata accessor for SiriEnvironment();
  v3 = *(v1 + 112);
  *(v0 + 328) = v3;
  type metadata accessor for AnyFlow();
  _s14SiriKitRuntime22CorrectionsUndoManagerCAcA0D6EngineAAWlTm_0(&lazy protocol witness table cache variable for type AnyFlow and conformance AnyFlow, MEMORY[0x1E69CF990]);
  swift_retain_n();
  static SiriEnvironment.withTaskLocalEnvironment<A, B>(for:_:)();
  *(v0 + 888) = v2;

  if (*(v1 + 120))
  {
    outlined init with copy of Any(v0 + 16, v0 + 48);

    dispatch thunk of AnyChildCompletion.completion(exitValue:)();

    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 48, &_sypSgMd, &_sypSgMR);
  }

  v4 = *(v0 + 800);
  v5 = *(v0 + 1128);
  v6 = *(v0 + 552);
  v7 = *(v0 + 544);
  v8 = *(v0 + 536);
  *v6 = v3;
  outlined init with copy of Any(v0 + 16, (v6 + 1));
  (*(v7 + 104))(v6, v5, v8);
  static FlowTrace.trace(event:)();
  (*(v7 + 8))(v6, v8);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v9 = swift_task_alloc();
  *(v0 + 896) = v9;
  *v9 = v0;
  v9[1] = Conversation.execute(from:);
  v10 = *(v0 + 352);

  return Conversation.removeNode(node:)(v4);
}

{
  v1 = v0[110];
  v2 = v0[101];
  v3 = v0[99];
  v4 = v0[82];
  v5 = (v0[44] + v0[90]);

  v6 = *v5;
  v7 = v5[1];
  v0[114] = v7;

  v8 = PrepareResponse.next.getter();
  v0[115] = v8;
  v9 = *(v2 + 152);
  v0[116] = v9;

  v10 = PrepareResponse.onChildFlowCompletion.getter();
  v0[117] = v10;
  v11 = swift_task_alloc();
  v0[118] = v11;
  *v11 = v0;
  v11[1] = Conversation.execute(from:);
  v12 = v0[44];

  return Conversation.push(rcId:parentNode:flow:continuedTasks:parentEnvironment:completion:)(v6, v7, 0, v8, v9, v1, v10);
}

{
  v1 = *(*v0 + 944);
  v2 = *(*v0 + 936);
  v3 = *(*v0 + 928);
  v4 = *(*v0 + 920);
  v5 = *(*v0 + 912);
  v6 = *(*v0 + 880);
  v7 = *(*v0 + 352);
  v9 = *v0;

  return MEMORY[0x1EEE6DFA0](Conversation.execute(from:), v7, 0);
}

{
  v98 = v0;
  v1 = *(v0 + 880);
  v2 = *(v0 + 808);
  v3 = *(v0 + 800);
  v4 = *(v0 + 656);
  v5 = *(v0 + 648);
  v6 = *(v0 + 640);

  (*(v5 + 8))(v4, v6);
  v7 = *(v0 + 904);
  v8 = *(v0 + 888);
  v9 = *(v0 + 688);
  v10 = *(v0 + 680);
  v11 = *(v0 + 664);
  outlined init with copy of Conversation.State(*(v0 + 352) + *(v0 + 768), v9, type metadata accessor for Conversation.State);
  outlined init with take of Conversation.State(v9, v10, type metadata accessor for Conversation.State);
  LODWORD(v9) = swift_getEnumCaseMultiPayload() & 0xFFFFFFFE;
  outlined destroy of Conversation.State(v10, type metadata accessor for Conversation.State);
  if (v9 == 2)
  {
    *(v0 + 792) = v7;
    *(v0 + 784) = v8;
    if ((static Task<>.isCancelled.getter() & 1) == 0 && (*(*(v0 + 352) + *(v0 + 776)) & 1) == 0)
    {
      v12 = (*(**(v0 + 736) + 216))();
      if (v12)
      {
        *(v0 + 800) = v12;
        *(v0 + 808) = *(v12 + 16);

        v13 = swift_task_alloc();
        *(v0 + 816) = v13;
        *v13 = v0;
        v13[1] = Conversation.execute(from:);
        v14 = *(v0 + 656);

        return FlowAgent.prepare()(v14);
      }

      v16 = *(v0 + 768);
      v17 = *(v0 + 672);
      v18 = *(v0 + 664);
      v19 = *(v0 + 352);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      outlined assign with take of Conversation.State(v17, v19 + v16);
      swift_endAccess();
    }

    v7 = *(v0 + 792);
  }

  *(v0 + 1096) = v7;
  v20 = *(v0 + 728);
  v21 = *(v0 + 712);
  v22 = *(v0 + 696);
  v23 = *(v0 + 352);
  v24 = (v23 + *(v0 + 720));
  static ConversationSELFHelper.shared.getter();
  v25 = *v24;
  v26 = v24[1];
  outlined init with copy of ReferenceResolutionClientProtocol?(v23 + v20, v22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  dispatch thunk of ConversationSELFHelper.emitFinalExecutionContextEnded(rcId:hypothesisId:)();

  outlined destroy of ReferenceResolutionClientProtocol?(v22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v27 = v23 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskObserver;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 1104) = Strong;
  if (Strong)
  {
    v29 = *(v27 + 8);
    ObjectType = swift_getObjectType();
    v31 = *(v29 + 16);
    v95 = (v31 + *v31);
    v32 = v31[1];
    v33 = swift_task_alloc();
    *(v0 + 1112) = v33;
    *v33 = v0;
    v33[1] = Conversation.execute(from:);

    return v95(ObjectType, v29);
  }

  else
  {
    v34 = (*(**(v0 + 736) + 216))();
    v35 = *(v0 + 704);
    if (v34)
    {
      v36 = v34;
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v97 = v40;
        *v39 = 136315394;
        *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x2865747563657865, 0xEE00293A6D6F7266, &v97);
        *(v39 + 12) = 2080;
        v41 = *(*(v36 + 16) + 152);
        v42 = type metadata accessor for Siri_Nlu_External_Task();

        v44 = MEMORY[0x1E12A16D0](v43, v42);
        v46 = v45;

        v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, &v97);

        *(v39 + 14) = v47;
        _os_log_impl(&dword_1DC659000, v37, v38, "[Conversation] %s: flow was handled, stack is non-empty. Active tasks: %s", v39, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v40, -1, -1);
        MEMORY[0x1E12A2F50](v39, -1, -1);
      }

      v48 = *(v0 + 1096);
      v49 = *(v0 + 376);
      v50 = *(v0 + 336);
      v51 = *(*(v36 + 16) + 152);

      v52 = MEMORY[0x1E69E7CC0];
      *v50 = v51;
      v50[1] = v52;
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = *(v0 + 1096);
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v97 = v57;
        *v56 = 136315394;
        *(v56 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x2865747563657865, 0xEE00293A6D6F7266, &v97);
        *(v56 + 12) = 2080;
        if (v55)
        {
          v58 = *(*(*(v0 + 1096) + 16) + 152);
        }

        else
        {
          v58 = MEMORY[0x1E69E7CC0];
        }

        v59 = type metadata accessor for Siri_Nlu_External_Task();
        v60 = MEMORY[0x1E12A16D0](v58, v59);
        v62 = v61;

        v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v62, &v97);

        *(v56 + 14) = v63;
        _os_log_impl(&dword_1DC659000, v53, v54, "[Conversation] %s: flow was handled, stack is empty. Completed tasks: %s", v56, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v57, -1, -1);
        MEMORY[0x1E12A2F50](v56, -1, -1);
      }

      v64 = *(v0 + 1096);
      v65 = MEMORY[0x1E69E7CC0];
      if (v64)
      {
        v66 = *(v0 + 1096);
        v67 = *(*(v64 + 16) + 152);
      }

      else
      {
        v68 = MEMORY[0x1E69E7CC0];
      }

      v69 = *(v0 + 376);
      v70 = *(v0 + 336);
      *v70 = v65;
      v70[1] = v68;
      swift_storeEnumTagMultiPayload();
    }

    v71 = *(v0 + 696);
    v72 = *(v0 + 688);
    v73 = *(v0 + 680);
    v74 = *(v0 + 672);
    v75 = *(v0 + 656);
    v76 = *(v0 + 632);
    v77 = *(v0 + 624);
    v78 = *(v0 + 600);
    v79 = *(v0 + 576);
    v81 = *(v0 + 552);
    v82 = *(v0 + 528);
    v83 = *(v0 + 520);
    v84 = *(v0 + 496);
    v85 = *(v0 + 472);
    v86 = *(v0 + 464);
    v87 = *(v0 + 456);
    v88 = *(v0 + 448);
    v89 = *(v0 + 440);
    v90 = *(v0 + 416);
    v91 = *(v0 + 408);
    v92 = *(v0 + 400);
    v93 = *(v0 + 392);
    v94 = *(v0 + 368);
    v96 = *(v0 + 360);

    v80 = *(v0 + 8);

    return v80();
  }
}

{
  v1 = *(*v0 + 1016);
  v2 = *(*v0 + 1008);
  v3 = *(*v0 + 1000);
  v4 = *(*v0 + 992);
  v5 = *(*v0 + 984);
  v6 = *(*v0 + 800);
  v7 = *(*v0 + 352);
  v9 = *v0;

  return MEMORY[0x1EEE6DFA0](Conversation.execute(from:), v7, 0);
}

{
  v106 = v0;
  v102 = *(v0 + 792);
  v1 = *(v0 + 808);
  v2 = *(v0 + 800);
  v3 = *(v0 + 656);
  v4 = *(v0 + 648);
  v5 = *(v0 + 640);
  v6 = *(v0 + 600);
  v7 = *(v0 + 592);
  v8 = *(v0 + 584);
  v9 = ExecuteResponse.requireInput.getter();

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  if (v9)
  {
    v10 = *(v0 + 768);
    v11 = *(v0 + 672);
    v12 = *(v0 + 664);
    v13 = *(v0 + 352);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    outlined assign with take of Conversation.State(v11, v13 + v10);
    swift_endAccess();
    v14 = v102;
    goto LABEL_13;
  }

  v15 = *(v0 + 864);
  v16 = *(v0 + 688);
  v17 = *(v0 + 680);
  v18 = *(v0 + 664);
  outlined init with copy of Conversation.State(*(v0 + 352) + *(v0 + 768), v16, type metadata accessor for Conversation.State);
  outlined init with take of Conversation.State(v16, v17, type metadata accessor for Conversation.State);
  LODWORD(v16) = swift_getEnumCaseMultiPayload() & 0xFFFFFFFE;
  outlined destroy of Conversation.State(v17, type metadata accessor for Conversation.State);
  if (v16 != 2)
  {
    v14 = v102;
    goto LABEL_13;
  }

  *(v0 + 792) = v102;
  *(v0 + 784) = v15;
  if (static Task<>.isCancelled.getter() & 1) != 0 || (*(*(v0 + 352) + *(v0 + 776)))
  {
LABEL_12:
    v14 = *(v0 + 792);
LABEL_13:
    *(v0 + 1096) = v14;
    v27 = *(v0 + 728);
    v28 = *(v0 + 712);
    v29 = *(v0 + 696);
    v30 = *(v0 + 352);
    v31 = (v30 + *(v0 + 720));
    static ConversationSELFHelper.shared.getter();
    v32 = *v31;
    v33 = v31[1];
    outlined init with copy of ReferenceResolutionClientProtocol?(v30 + v27, v29, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

    dispatch thunk of ConversationSELFHelper.emitFinalExecutionContextEnded(rcId:hypothesisId:)();

    outlined destroy of ReferenceResolutionClientProtocol?(v29, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v34 = v30 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskObserver;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 1104) = Strong;
    if (Strong)
    {
      v36 = *(v34 + 8);
      ObjectType = swift_getObjectType();
      v38 = *(v36 + 16);
      v103 = (v38 + *v38);
      v39 = v38[1];
      v40 = swift_task_alloc();
      *(v0 + 1112) = v40;
      *v40 = v0;
      v40[1] = Conversation.execute(from:);

      return v103(ObjectType, v36);
    }

    else
    {
      v41 = (*(**(v0 + 736) + 216))();
      v42 = *(v0 + 704);
      if (v41)
      {
        v43 = v41;
        v44 = Logger.logObject.getter();
        v45 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v105 = v47;
          *v46 = 136315394;
          *(v46 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x2865747563657865, 0xEE00293A6D6F7266, &v105);
          *(v46 + 12) = 2080;
          v48 = *(*(v43 + 16) + 152);
          v49 = type metadata accessor for Siri_Nlu_External_Task();

          v51 = MEMORY[0x1E12A16D0](v50, v49);
          v53 = v52;

          v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, &v105);

          *(v46 + 14) = v54;
          _os_log_impl(&dword_1DC659000, v44, v45, "[Conversation] %s: flow was handled, stack is non-empty. Active tasks: %s", v46, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12A2F50](v47, -1, -1);
          MEMORY[0x1E12A2F50](v46, -1, -1);
        }

        v55 = *(v0 + 1096);
        v56 = *(v0 + 376);
        v57 = *(v0 + 336);
        v58 = *(*(v43 + 16) + 152);

        v59 = MEMORY[0x1E69E7CC0];
        *v57 = v58;
        v57[1] = v59;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = *(v0 + 1096);
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v105 = v64;
          *v63 = 136315394;
          *(v63 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x2865747563657865, 0xEE00293A6D6F7266, &v105);
          *(v63 + 12) = 2080;
          if (v62)
          {
            v65 = *(*(*(v0 + 1096) + 16) + 152);
          }

          else
          {
            v65 = MEMORY[0x1E69E7CC0];
          }

          v66 = type metadata accessor for Siri_Nlu_External_Task();
          v67 = MEMORY[0x1E12A16D0](v65, v66);
          v69 = v68;

          v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v69, &v105);

          *(v63 + 14) = v70;
          _os_log_impl(&dword_1DC659000, v60, v61, "[Conversation] %s: flow was handled, stack is empty. Completed tasks: %s", v63, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12A2F50](v64, -1, -1);
          MEMORY[0x1E12A2F50](v63, -1, -1);
        }

        v71 = *(v0 + 1096);
        v72 = MEMORY[0x1E69E7CC0];
        if (v71)
        {
          v73 = *(v0 + 1096);
          v74 = *(*(v71 + 16) + 152);
        }

        else
        {
          v75 = MEMORY[0x1E69E7CC0];
        }

        v76 = *(v0 + 376);
        v77 = *(v0 + 336);
        *v77 = v72;
        v77[1] = v75;
        swift_storeEnumTagMultiPayload();
      }

      v78 = *(v0 + 696);
      v79 = *(v0 + 688);
      v80 = *(v0 + 680);
      v81 = *(v0 + 672);
      v82 = *(v0 + 656);
      v83 = *(v0 + 632);
      v84 = *(v0 + 624);
      v85 = *(v0 + 600);
      v86 = *(v0 + 576);
      v88 = *(v0 + 552);
      v89 = *(v0 + 528);
      v90 = *(v0 + 520);
      v91 = *(v0 + 496);
      v92 = *(v0 + 472);
      v93 = *(v0 + 464);
      v94 = *(v0 + 456);
      v95 = *(v0 + 448);
      v96 = *(v0 + 440);
      v97 = *(v0 + 416);
      v98 = *(v0 + 408);
      v99 = *(v0 + 400);
      v100 = *(v0 + 392);
      v101 = *(v0 + 368);
      v104 = *(v0 + 360);

      v87 = *(v0 + 8);

      return v87();
    }
  }

  v19 = (*(**(v0 + 736) + 216))();
  if (!v19)
  {
    v23 = *(v0 + 768);
    v24 = *(v0 + 672);
    v25 = *(v0 + 664);
    v26 = *(v0 + 352);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    outlined assign with take of Conversation.State(v24, v26 + v23);
    swift_endAccess();
    goto LABEL_12;
  }

  *(v0 + 800) = v19;
  *(v0 + 808) = *(v19 + 16);

  v20 = swift_task_alloc();
  *(v0 + 816) = v20;
  *v20 = v0;
  v20[1] = Conversation.execute(from:);
  v21 = *(v0 + 656);

  return FlowAgent.prepare()(v21);
}

{
  v1 = v0[101];
  v2 = v0[100];
  v3 = v0[99];
  v4 = v0[87];
  v5 = v0[86];
  v6 = v0[85];
  v7 = v0[84];
  v8 = v0[82];
  v9 = v0[81];
  v10 = v0[80];
  v14 = v0[79];
  v15 = v0[78];
  v16 = v0[75];
  v17 = v0[72];
  v18 = v0[69];
  v19 = v0[66];
  v20 = v0[65];
  v21 = v0[62];
  v22 = v0[59];
  v23 = v0[58];
  v24 = v0[57];
  v25 = v0[56];
  v26 = v0[55];
  v27 = v0[52];
  v28 = v0[51];
  v29 = v0[50];
  v30 = v0[49];
  v31 = v0[46];
  v32 = v0[45];

  (*(v9 + 8))(v8, v10);

  v11 = v0[1];
  v12 = v0[108];

  return v11();
}

uint64_t FlowAgent.execute(timeout:)(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  v4 = type metadata accessor for CancellationError();
  v3[17] = v4;
  v5 = *(v4 - 8);
  v3[18] = v5;
  v6 = *(v5 + 64) + 15;
  v3[19] = swift_task_alloc();
  v7 = type metadata accessor for TimeoutError();
  v3[20] = v7;
  v8 = *(v7 - 8);
  v3[21] = v8;
  v9 = *(v8 + 64) + 15;
  v3[22] = swift_task_alloc();
  v10 = type metadata accessor for FlowTraceEvent();
  v3[23] = v10;
  v11 = *(v10 - 8);
  v3[24] = v11;
  v12 = *(v11 + 64) + 15;
  v3[25] = swift_task_alloc();
  v13 = type metadata accessor for ExecuteResponse();
  v3[26] = v13;
  v14 = *(v13 - 8);
  v3[27] = v14;
  v15 = *(v14 + 64) + 15;
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v16 = type metadata accessor for DispatchTimeInterval();
  v3[30] = v16;
  v17 = *(v16 - 8);
  v3[31] = v17;
  v3[32] = *(v17 + 64);
  v3[33] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v3[34] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](FlowAgent.execute(timeout:), v2, 0);
}

uint64_t FlowAgent.execute(timeout:)()
{
  v53 = v0;
  v1 = v0[16];
  swift_beginAccess();
  if (*(v1 + 130) == 1)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v2 = v0[16];
    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.executor);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[16];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v52 = v8;
      *v7 = 136315138;
      v0[13] = *(v6 + 112);
      type metadata accessor for AnyFlow();
      lazy protocol witness table accessor for type AnyFlow and conformance AnyFlow(&lazy protocol witness table cache variable for type AnyFlow and conformance AnyFlow, 255, MEMORY[0x1E69CF990]);
      v9 = dispatch thunk of CustomStringConvertible.description.getter();
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v52);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_1DC659000, v4, v5, "[Conversation] %s execute cancelled before call.", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x1E12A2F50](v8, -1, -1);
      MEMORY[0x1E12A2F50](v7, -1, -1);
    }

    v12 = v0[14];
    static ExecuteResponse.complete()();
    v14 = v0[33];
    v13 = v0[34];
    v16 = v0[28];
    v15 = v0[29];
    v17 = v0[25];
    v18 = v0[22];
    v19 = v0[19];

    v20 = v0[1];

    return v20();
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v22 = v0[16];
    v23 = type metadata accessor for Logger();
    v0[35] = __swift_project_value_buffer(v23, static Logger.executor);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = v0[16];
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v52 = v28;
      *v27 = 136315138;
      v0[12] = *(v26 + 112);
      type metadata accessor for AnyFlow();
      lazy protocol witness table accessor for type AnyFlow and conformance AnyFlow(&lazy protocol witness table cache variable for type AnyFlow and conformance AnyFlow, 255, MEMORY[0x1E69CF990]);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v52);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_1DC659000, v24, v25, "[Conversation] %s execute.", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x1E12A2F50](v28, -1, -1);
      MEMORY[0x1E12A2F50](v27, -1, -1);
    }

    v33 = v0[33];
    v32 = v0[34];
    v35 = v0[31];
    v34 = v0[32];
    v36 = v0[30];
    v38 = v0[15];
    v37 = v0[16];
    v39 = type metadata accessor for TaskPriority();
    (*(*(v39 - 8) + 56))(v32, 1, 1, v39);
    (*(v35 + 16))(v33, v38, v36);
    v41 = lazy protocol witness table accessor for type AnyFlow and conformance AnyFlow(&lazy protocol witness table cache variable for type FlowAgent and conformance FlowAgent, v40, type metadata accessor for FlowAgent);
    v42 = (*(v35 + 80) + 40) & ~*(v35 + 80);
    v43 = swift_allocObject();
    *(v43 + 2) = v37;
    *(v43 + 3) = v41;
    *(v43 + 4) = v37;
    (*(v35 + 32))(&v43[v42], v33, v36);
    swift_retain_n();
    v44 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC11SiriKitFlow15ExecuteResponseV_Tt2g5(0, 0, v32, &async function pointer to partial apply for closure #1 in FlowAgent.execute(timeout:), v43);
    v0[36] = v44;
    v45 = *(v37 + 136);
    *(v37 + 136) = v44;

    v46 = *(MEMORY[0x1E69E86A8] + 4);
    v47 = swift_task_alloc();
    v0[37] = v47;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v0[38] = v48;
    *v47 = v0;
    v47[1] = FlowAgent.execute(timeout:);
    v49 = v0[28];
    v50 = v0[26];
    v51 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v49, v44, v50, v48, v51);
  }
}

{
  v43 = v0;
  v1 = v0[16];
  v2 = *(v0[27] + 32);
  v2(v0[29], v0[28], v0[26]);
  if (*(v1 + 130) == 1)
  {
    v3 = v0[35];
    v4 = v0[16];

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[16];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v42 = v9;
      *v8 = 136315138;
      v0[11] = *(v7 + 112);
      type metadata accessor for AnyFlow();
      lazy protocol witness table accessor for type AnyFlow and conformance AnyFlow(&lazy protocol witness table cache variable for type AnyFlow and conformance AnyFlow, 255, MEMORY[0x1E69CF990]);
      v10 = dispatch thunk of CustomStringConvertible.description.getter();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v42);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_1DC659000, v5, v6, "[Conversation] %s execute cancelled.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x1E12A2F50](v9, -1, -1);
      MEMORY[0x1E12A2F50](v8, -1, -1);
    }

    v13 = v0[36];
    v40 = v0[29];
    v14 = v0[26];
    v15 = v0[27];
    v17 = v0[24];
    v16 = v0[25];
    v18 = v0[23];
    v19 = v0[16];
    v20 = v0[14];
    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow03AnyC0C4flow_AA15ExecuteResponseV8responsetMd, &_s11SiriKitFlow03AnyC0C4flow_AA15ExecuteResponseV8responsetMR) + 48);
    *v16 = *(v19 + 112);

    static ExecuteResponse.complete()();
    (*(v17 + 104))(v16, *MEMORY[0x1E69CFB00], v18);
    static FlowTrace.trace(event:)();
    (*(v17 + 8))(v16, v18);
    static ExecuteResponse.complete()();

    (*(v15 + 8))(v40, v14);
  }

  else
  {
    v22 = v0[29];
    v23 = v0[26];
    v24 = v0[27];
    v25 = v0[24];
    v26 = v0[25];
    v27 = v0[23];
    v28 = v0[16];
    v39 = v0[36];
    v41 = v0[14];
    v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow03AnyC0C4flow_AA15ExecuteResponseV8responsetMd, &_s11SiriKitFlow03AnyC0C4flow_AA15ExecuteResponseV8responsetMR) + 48);
    *v26 = *(v28 + 112);
    (*(v24 + 16))(&v26[v29], v22, v23);
    (*(v25 + 104))(v26, *MEMORY[0x1E69CFB00], v27);

    static FlowTrace.trace(event:)();

    (*(v25 + 8))(v26, v27);
    v2(v41, v22, v23);
  }

  v31 = v0[33];
  v30 = v0[34];
  v33 = v0[28];
  v32 = v0[29];
  v34 = v0[25];
  v35 = v0[22];
  v36 = v0[19];

  v37 = v0[1];

  return v37();
}

{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v4 = *v1;
  *(*v1 + 312) = v0;

  v5 = *(v2 + 128);
  if (v0)
  {
    v6 = FlowAgent.execute(timeout:);
  }

  else
  {
    v6 = FlowAgent.execute(timeout:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v63 = v0;
  v1 = v0[39];
  v0[5] = v1;
  v2 = v0[38];
  v3 = v0[22];
  v4 = v0[20];
  v5 = v1;
  if (swift_dynamicCast())
  {
    v6 = v0[35];
    v7 = v0[16];
    (*(v0[21] + 8))(v0[22], v0[20]);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = v0[16];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v61 = v12;
      *v11 = 136315138;
      v0[10] = *(v10 + 112);
      type metadata accessor for AnyFlow();
      lazy protocol witness table accessor for type AnyFlow and conformance AnyFlow(&lazy protocol witness table cache variable for type AnyFlow and conformance AnyFlow, 255, MEMORY[0x1E69CF990]);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v61);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1DC659000, v8, v9, "[Conversation] %s timed out during execution", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1E12A2F50](v12, -1, -1);
      MEMORY[0x1E12A2F50](v11, -1, -1);
    }

    v16 = v0[39];
    v17 = v0[36];
    v18 = v0[16];
    v61 = 0;
    v62 = 0xE000000000000000;
    _StringGuts.grow(_:)(29);
    v0[9] = *(v18 + 112);
    type metadata accessor for AnyFlow();
    lazy protocol witness table accessor for type AnyFlow and conformance AnyFlow(&lazy protocol witness table cache variable for type AnyFlow and conformance AnyFlow, 255, MEMORY[0x1E69CF990]);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;

    v61 = v19;
    v62 = v21;
    MEMORY[0x1E12A1580](0xD00000000000001BLL, 0x80000001DCA83110);
    v22 = v61;
    v23 = v62;
    lazy protocol witness table accessor for type TimedOutError and conformance TimedOutError();
LABEL_9:
    swift_allocError();
    *v45 = v22;
    v45[1] = v23;
    swift_willThrow();

    goto LABEL_13;
  }

  v25 = v0[38];
  v24 = v0[39];
  v26 = v0[19];
  v27 = v0[17];
  v0[6] = v24;
  v28 = v24;
  v29 = swift_dynamicCast();
  v30 = v0[35];
  if (v29)
  {
    v31 = v0[16];
    (*(v0[18] + 8))(v0[19], v0[17]);

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = v0[16];
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v61 = v36;
      *v35 = 136315138;
      v0[8] = *(v34 + 112);
      type metadata accessor for AnyFlow();
      lazy protocol witness table accessor for type AnyFlow and conformance AnyFlow(&lazy protocol witness table cache variable for type AnyFlow and conformance AnyFlow, 255, MEMORY[0x1E69CF990]);
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v61);

      *(v35 + 4) = v39;
      _os_log_impl(&dword_1DC659000, v32, v33, "[Conversation] %s cancelled during execution", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x1E12A2F50](v36, -1, -1);
      MEMORY[0x1E12A2F50](v35, -1, -1);
    }

    v16 = v0[39];
    v40 = v0[36];
    v41 = v0[16];
    v61 = 0;
    v62 = 0xE000000000000000;
    _StringGuts.grow(_:)(29);
    v0[7] = *(v41 + 112);
    type metadata accessor for AnyFlow();
    lazy protocol witness table accessor for type AnyFlow and conformance AnyFlow(&lazy protocol witness table cache variable for type AnyFlow and conformance AnyFlow, 255, MEMORY[0x1E69CF990]);
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = v43;

    v61 = v42;
    v62 = v44;
    MEMORY[0x1E12A1580](0xD00000000000001BLL, 0x80000001DCA830F0);
    v22 = v61;
    v23 = v62;
    lazy protocol witness table accessor for type CancelledError and conformance CancelledError();
    goto LABEL_9;
  }

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_1DC659000, v46, v47, "Unknown result from withTimeout, assuming timed out", v48, 2u);
    MEMORY[0x1E12A2F50](v48, -1, -1);
  }

  v49 = v0[39];
  v50 = v0[36];

  swift_willThrow();

  v51 = v0[39];
LABEL_13:
  v53 = v0[33];
  v52 = v0[34];
  v55 = v0[28];
  v54 = v0[29];
  v56 = v0[25];
  v57 = v0[22];
  v58 = v0[19];

  v59 = v0[1];

  return v59();
}

uint64_t sub_1DC6E9E18()
{
  v1 = type metadata accessor for DispatchTimeInterval();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in FlowAgent.execute(timeout:)(uint64_t a1)
{
  v4 = *(type metadata accessor for DispatchTimeInterval() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in FlowAgent.execute(timeout:)(a1, v6, v7, v8, v1 + v5);
}

uint64_t closure #1 in FlowAgent.execute(timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](closure #1 in FlowAgent.execute(timeout:), a4, 0);
}

uint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    outlined init with copy of Any(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    outlined init with take of Any(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    outlined init with take of Any(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    outlined init with take of Any(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(*(v2 + 40));
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = outlined init with take of Any(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

{
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22ConversationSessionKeyO3key_s8Sendable_pSg5valuetMd, &_s16SiriMessageTypes22ConversationSessionKeyO3key_s8Sendable_pSg5valuetMR);
  v2 = *(*(v64 - 8) + 64);
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v53 - v3;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22ConversationSessionKeyO_s8Sendable_pSgtMd, &_s16SiriMessageTypes22ConversationSessionKeyO_s8Sendable_pSgtMR);
  v4 = *(*(v62 - 8) + 64);
  MEMORY[0x1EEE9AC00](v62);
  v61 = &v53 - v5;
  v6 = type metadata accessor for ConversationSessionKey();
  v65 = *(v6 - 8);
  v7 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22ConversationSessionKeyO3key_s8Sendable_p5valuetMd, &_s16SiriMessageTypes22ConversationSessionKeyO3key_s8Sendable_p5valuetMR);
  v10 = *(*(v59 - 8) + 64);
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v57 = &v53 - v13;
  v66 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy16SiriMessageTypes22ConversationSessionKeyOs8Sendable_pSgGMd, &_ss18_DictionaryStorageCy16SiriMessageTypes22ConversationSessionKeyOs8Sendable_pSgGMR);
    v14 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC8];
  }

  v15 = v66 + 64;
  v16 = 1 << *(v66 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(v66 + 64);
  v19 = (v16 + 63) >> 6;
  v55 = v65 + 16;
  v68 = v65 + 32;
  v20 = v14 + 64;

  v22 = 0;
  v53 = v19;
  v54 = v15;
  v60 = v9;
  v56 = v14;
  while (v18)
  {
LABEL_15:
    v26 = __clz(__rbit64(v18)) | (v22 << 6);
    v28 = v65;
    v27 = v66;
    v29 = *(v66 + 48);
    v67 = *(v65 + 72);
    v30 = v57;
    (*(v65 + 16))(v57, v29 + v67 * v26, v6);
    v31 = *(v27 + 56) + 32 * v26;
    v32 = v59;
    outlined init with copy of Any(v31, v30 + *(v59 + 48));
    v33 = v58;
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v30, v58, &_s16SiriMessageTypes22ConversationSessionKeyO3key_s8Sendable_p5valuetMd, &_s16SiriMessageTypes22ConversationSessionKeyO3key_s8Sendable_p5valuetMR);
    v34 = *(v32 + 48);
    v35 = v6;
    v36 = v63;
    v37 = &v63[*(v64 + 48)];
    v38 = *(v28 + 32);
    v38(v63, v33, v35);
    outlined init with take of Any((v33 + v34), &v69);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pMd, &_ss8Sendable_pMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pSgMd, &_ss8Sendable_pSgMR);
    swift_dynamicCast();
    v39 = v61;
    v40 = &v61[*(v62 + 48)];
    v41 = v36;
    v6 = v35;
    v38(v61, v41, v35);
    v42 = *(v37 + 1);
    *v40 = *v37;
    *(v40 + 1) = v42;
    v43 = v60;
    v38(v60, v39, v6);
    v44 = *(v40 + 1);
    v69 = *v40;
    v70 = v44;
    v14 = v56;
    v45 = *(v56 + 40);
    lazy protocol witness table accessor for type RequestType and conformance RequestType(&lazy protocol witness table cache variable for type ConversationSessionKey and conformance ConversationSessionKey, MEMORY[0x1E69D0820]);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v46 = -1 << *(v14 + 32);
    v47 = result & ~v46;
    v48 = v47 >> 6;
    if (((-1 << v47) & ~*(v20 + 8 * (v47 >> 6))) == 0)
    {
      v49 = 0;
      v50 = (63 - v46) >> 6;
      while (++v48 != v50 || (v49 & 1) == 0)
      {
        v51 = v48 == v50;
        if (v48 == v50)
        {
          v48 = 0;
        }

        v49 |= v51;
        v52 = *(v20 + 8 * v48);
        if (v52 != -1)
        {
          v23 = __clz(__rbit64(~v52)) + (v48 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v23 = __clz(__rbit64((-1 << v47) & ~*(v20 + 8 * (v47 >> 6)))) | v47 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v18 &= v18 - 1;
    *(v20 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = (v38)(*(v14 + 48) + v23 * v67, v43, v6);
    v24 = (*(v14 + 56) + 32 * v23);
    v24[1] = v70;
    *v24 = v69;
    ++*(v14 + 16);
    v19 = v53;
    v15 = v54;
  }

  while (1)
  {
    v25 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v25 >= v19)
    {

      return v14;
    }

    v18 = *(v15 + 8 * v25);
    ++v22;
    if (v18)
    {
      v22 = v25;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

{
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22ConversationSessionKeyO3key_ypSg5valuetMd, &_s16SiriMessageTypes22ConversationSessionKeyO3key_ypSg5valuetMR);
  v2 = *(*(v65 - 8) + 64);
  MEMORY[0x1EEE9AC00](v65);
  v64 = &v54 - v3;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22ConversationSessionKeyO_ypSgtMd, &_s16SiriMessageTypes22ConversationSessionKeyO_ypSgtMR);
  v4 = *(*(v63 - 8) + 64);
  MEMORY[0x1EEE9AC00](v63);
  v62 = &v54 - v5;
  v6 = type metadata accessor for ConversationSessionKey();
  v66 = *(v6 - 8);
  v7 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22ConversationSessionKeyO3key_s8Sendable_pSg5valuetMd, &_s16SiriMessageTypes22ConversationSessionKeyO3key_s8Sendable_pSg5valuetMR);
  v10 = *(*(v60 - 8) + 64);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v58 = &v54 - v13;
  v67 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy16SiriMessageTypes22ConversationSessionKeyOypSgGMd, &_ss18_DictionaryStorageCy16SiriMessageTypes22ConversationSessionKeyOypSgGMR);
    v14 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC8];
  }

  v15 = v67 + 64;
  v16 = 1 << *(v67 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(v67 + 64);
  v19 = (v16 + 63) >> 6;
  v56 = v66 + 16;
  v69 = v66 + 32;
  v20 = v14 + 64;

  v22 = 0;
  v54 = v19;
  v55 = v15;
  v61 = v9;
  v57 = v14;
  while (v18)
  {
LABEL_15:
    v26 = __clz(__rbit64(v18)) | (v22 << 6);
    v28 = v66;
    v27 = v67;
    v29 = *(v67 + 48);
    v68 = *(v66 + 72);
    v30 = v58;
    (*(v66 + 16))(v58, v29 + v68 * v26, v6);
    v31 = *(v27 + 56) + 32 * v26;
    v32 = v60;
    outlined init with copy of ReferenceResolutionClientProtocol?(v31, v30 + *(v60 + 48), &_ss8Sendable_pSgMd, &_ss8Sendable_pSgMR);
    v33 = v59;
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v30, v59, &_s16SiriMessageTypes22ConversationSessionKeyO3key_s8Sendable_pSg5valuetMd, &_s16SiriMessageTypes22ConversationSessionKeyO3key_s8Sendable_pSg5valuetMR);
    v34 = (v33 + *(v32 + 48));
    v35 = v6;
    v36 = v64;
    v37 = &v64[*(v65 + 48)];
    v38 = *(v28 + 32);
    v38(v64, v33, v35);
    v39 = v34[1];
    v70 = *v34;
    v71 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pSgMd, &_ss8Sendable_pSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
    swift_dynamicCast();
    v40 = v62;
    v41 = &v62[*(v63 + 48)];
    v42 = v36;
    v6 = v35;
    v38(v62, v42, v35);
    v43 = *(v37 + 1);
    *v41 = *v37;
    *(v41 + 1) = v43;
    v44 = v61;
    v38(v61, v40, v6);
    v45 = *(v41 + 1);
    v70 = *v41;
    v71 = v45;
    v14 = v57;
    v46 = *(v57 + 40);
    lazy protocol witness table accessor for type RequestType and conformance RequestType(&lazy protocol witness table cache variable for type ConversationSessionKey and conformance ConversationSessionKey, MEMORY[0x1E69D0820]);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v47 = -1 << *(v14 + 32);
    v48 = result & ~v47;
    v49 = v48 >> 6;
    if (((-1 << v48) & ~*(v20 + 8 * (v48 >> 6))) == 0)
    {
      v50 = 0;
      v51 = (63 - v47) >> 6;
      while (++v49 != v51 || (v50 & 1) == 0)
      {
        v52 = v49 == v51;
        if (v49 == v51)
        {
          v49 = 0;
        }

        v50 |= v52;
        v53 = *(v20 + 8 * v49);
        if (v53 != -1)
        {
          v23 = __clz(__rbit64(~v53)) + (v49 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v23 = __clz(__rbit64((-1 << v48) & ~*(v20 + 8 * (v48 >> 6)))) | v48 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v18 &= v18 - 1;
    *(v20 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = (v38)(*(v14 + 48) + v23 * v68, v44, v6);
    v24 = (*(v14 + 56) + 32 * v23);
    v24[1] = v71;
    *v24 = v70;
    ++*(v14 + 16);
    v19 = v54;
    v15 = v55;
  }

  while (1)
  {
    v25 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v25 >= v19)
    {

      return v14;
    }

    v18 = *(v15 + 8 * v25);
    ++v22;
    if (v18)
    {
      v22 = v25;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

char *initializeWithCopy for Conversation.State(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
    {
      *a1 = *a2;

      goto LABEL_25;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v11 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v11;
      v12 = type metadata accessor for SiriRequest(0);
      v13 = v12[5];
      v14 = type metadata accessor for Input();
      v15 = *(*(v14 - 8) + 16);

      v15(&a1[v13], &a2[v13], v14);
      *&a1[v12[6]] = *&a2[v12[6]];
      *&a1[v12[7]] = *&a2[v12[7]];
      v16 = v12[8];
      v17 = &a1[v16];
      v18 = &a2[v16];
      v19 = *&a2[v16 + 8];

      if (v19 >> 60 == 15)
      {
        *v17 = *v18;
      }

      else
      {
        v20 = *v18;
        outlined copy of Data._Representation(*v18, v19);
        *v17 = v20;
        *(v17 + 1) = v19;
      }

      *&a1[v12[9]] = *&a2[v12[9]];
      *&a1[v12[10]] = *&a2[v12[10]];
      *&a1[v12[11]] = *&a2[v12[11]];
      v21 = v12[12];
      __dst = &a1[v21];
      v22 = &a2[v21];
      v23 = type metadata accessor for SiriRequestIdentities(0);
      v24 = *(v23 - 8);
      v25 = *(v24 + 48);

      v26 = v22;
      if (v25(v22, 1, v23))
      {
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
        memcpy(__dst, v22, *(*(v27 - 8) + 64));
      }

      else
      {
        v39 = v24;
        v28 = type metadata accessor for IdentifiedUser();
        v29 = *(v28 - 8);
        v30 = v26;
        v31 = v26;
        v32 = *(v29 + 48);
        if (v32(v31, 1, v28))
        {
          v33 = v29;
          v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
          memcpy(__dst, v30, *(*(v34 - 8) + 64));
        }

        else
        {
          (*(v29 + 16))(__dst, v30, v28);
          v33 = v29;
          (*(v29 + 56))(__dst, 0, 1, v28);
        }

        v35 = *(v23 + 20);
        if (v32(&v30[v35], 1, v28))
        {
          v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
          memcpy(&__dst[v35], &v30[v35], *(*(v36 - 8) + 64));
        }

        else
        {
          (*(v33 + 16))(&__dst[v35], &v30[v35], v28);
          (*(v33 + 56))(&__dst[v35], 0, 1, v28);
        }

        *&__dst[*(v23 + 24)] = *&v30[*(v23 + 24)];
        v37 = *(v39 + 56);

        v37(__dst, 0, 1, v23);
      }

      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA4NodeCyAA9FlowAgentCG08selectedG0tMd, &_s14SiriKitRuntime0A7RequestV7request_AA4NodeCyAA9FlowAgentCG08selectedG0tMR);
      *&a1[*(v38 + 48)] = *&a2[*(v38 + 48)];

      goto LABEL_25;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v7 = *a2;
      v8 = *(a2 + 1);
      *a1 = v7;
      *(a1 + 1) = v8;

LABEL_25:
      swift_storeEnumTagMultiPayload();
      return a1;
    }
  }

  v9 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v9);
}

uint64_t FlowAgent.prepare()(uint64_t a1)
{
  v2[25] = a1;
  v2[26] = v1;
  v3 = type metadata accessor for CancellationError();
  v2[27] = v3;
  v4 = *(v3 - 8);
  v2[28] = v4;
  v5 = *(v4 + 64) + 15;
  v2[29] = swift_task_alloc();
  v6 = type metadata accessor for FlowTraceEvent();
  v2[30] = v6;
  v7 = *(v6 - 8);
  v2[31] = v7;
  v8 = *(v7 + 64) + 15;
  v2[32] = swift_task_alloc();
  v9 = type metadata accessor for PrepareResponse();
  v2[33] = v9;
  v10 = *(v9 - 8);
  v2[34] = v10;
  v11 = *(v10 + 64) + 15;
  v2[35] = swift_task_alloc();
  v12 = type metadata accessor for OSSignpostID();
  v2[36] = v12;
  v13 = *(v12 - 8);
  v2[37] = v13;
  v14 = *(v13 + 64) + 15;
  v2[38] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](FlowAgent.prepare(), v1, 0);
}

uint64_t closure #1 in FlowAgent.execute(timeout:)()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = DispatchTimeInterval.seconds.getter();
  v4 = *(MEMORY[0x1E69D3548] + 4);

  v5 = swift_task_alloc();
  v0[5] = v5;
  v6 = type metadata accessor for ExecuteResponse();
  *v5 = v0;
  v5[1] = closure #1 in FlowAgent.execute(timeout:);
  v7 = v0[2];
  v8 = v0[3];
  v9.n128_f64[0] = v3;

  return MEMORY[0x1EEE40F70](v7, &async function pointer to partial apply for closure #1 in closure #1 in FlowAgent.execute(timeout:), v8, v6, v9);
}

{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = closure #1 in FlowAgent.execute(timeout:);
  }

  else
  {
    v7 = *(v2 + 24);

    v6 = closure #1 in FlowAgent.execute(timeout:);
    v5 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v1 = *(v0 + 24);
  v2 = *(v1 + 136);
  *(v1 + 136) = 0;

  v3 = *(v0 + 8);

  return v3();
}

{
  v1 = v0[3];

  v2 = *(v1 + 136);
  *(v1 + 136) = 0;

  v3 = v0[1];
  v4 = v0[6];

  return v3();
}

double DispatchTimeInterval.seconds.getter()
{
  v1 = type metadata accessor for DispatchTimeInterval();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v2 + 16))(v6, v0, v1, v4);
  v7 = (*(v2 + 88))(v6, v1);
  if (v7 == *MEMORY[0x1E69E7F48])
  {
    (*(v2 + 96))(v6, v1);
    return *v6;
  }

  if (v7 == *MEMORY[0x1E69E7F38])
  {
    (*(v2 + 96))(v6, v1);
    v9 = *v6;
    v10 = 1000.0;
    return v9 / v10;
  }

  if (v7 == *MEMORY[0x1E69E7F30])
  {
    (*(v2 + 96))(v6, v1);
    v9 = *v6;
    v10 = 1000000.0;
    return v9 / v10;
  }

  if (v7 == *MEMORY[0x1E69E7F28])
  {
    (*(v2 + 96))(v6, v1);
    v9 = *v6;
    v10 = 1000000000.0;
    return v9 / v10;
  }

  if (v7 != *MEMORY[0x1E69E7F40])
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.executor);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1DC659000, v12, v13, "Cannot convert unknown DispatchTimeInterval to seconds, returning Double.infinity", v14, 2u);
      MEMORY[0x1E12A2F50](v14, -1, -1);
    }

    (*(v2 + 8))(v6, v1);
  }

  return INFINITY;
}

uint64_t closure #1 in FlowAgent.on(input:)(char a1)
{
  v2 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = a1;

  return MEMORY[0x1EEE6DFA0](closure #1 in FlowAgent.on(input:), 0, 0);
}

uint64_t closure #1 in FlowAgent.on(input:)()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v14 = *(v0 + 112);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 80);
  v6 = *(v0 + 56);
  v7 = *(v0 + 40);
  v8 = *(v0 + 16);
  static os_signpost_type_t.end.getter();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E6530];
  *(v9 + 16) = xmmword_1DCA66060;
  v11 = MEMORY[0x1E69E65A8];
  *(v9 + 56) = v10;
  *(v9 + 64) = v11;
  *(v9 + 32) = v1;
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:_:_:)();

  v2(v6, v7);
  *v8 = v1;

  v12 = *(v0 + 8);

  return v12();
}

{
  static os_signpost_type_t.begin.getter();
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v29 = v0[7];
  v4 = v0[6];
  v30 = v0[5];
  v6 = v0[3];
  v5 = v0[4];
  v0[11] = static Log.executor;
  v0[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1DCA6EB80;
  Input.identifier.getter();
  v8 = UUID.uuidString.getter();
  v10 = v9;
  (*(v1 + 8))(v2, v3);
  v11 = MEMORY[0x1E69E6158];
  *(v7 + 56) = MEMORY[0x1E69E6158];
  v12 = lazy protocol witness table accessor for type String and conformance String();
  *(v7 + 64) = v12;
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  v13 = *(v5 + 112);
  v14 = AnyFlow.description.getter();
  *(v7 + 96) = v11;
  *(v7 + 104) = v12;
  *(v7 + 72) = v14;
  *(v7 + 80) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1DCA66060;
  v17 = ObjectIdentifier.hashValue.getter();
  v18 = MEMORY[0x1E69E6530];
  v19 = MEMORY[0x1E69E65A8];
  *(v16 + 56) = MEMORY[0x1E69E6530];
  *(v16 + 64) = v19;
  *(v16 + 32) = v17;
  v20 = String.init(format:_:)();
  *(v7 + 136) = v11;
  *(v7 + 144) = v12;
  *(v7 + 112) = v20;
  *(v7 + 120) = v21;
  v22 = AnyFlow.description.getter();
  v23 = MEMORY[0x1E12A15C0](v22);

  *(v7 + 176) = v18;
  *(v7 + 184) = v19;
  *(v7 + 152) = v23;
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:_:_:)();

  v24 = *(v4 + 8);
  v0[13] = v24;
  v0[14] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v24(v29, v30);
  v25 = *(MEMORY[0x1E69CF988] + 4);
  v31 = (*MEMORY[0x1E69CF988] + MEMORY[0x1E69CF988]);
  v26 = swift_task_alloc();
  v0[15] = v26;
  *v26 = v0;
  v26[1] = closure #1 in FlowAgent.on(input:);
  v27 = v0[3];

  return v31(v27);
}

void FlowAgent.on(input:)()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = v2[12];
    v6 = v2[13];
    v7 = v2[8];

    MEMORY[0x1EEE6DFA0](FlowAgent.on(input:), v7, 0);
  }
}

uint64_t outlined init with copy of UserInputResult(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserInputResult();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in RemoteConversationService.prepare(bridge:reply:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in RemoteConversationService.prepare(bridge:reply:)(a1, v4, v5, v6, v7, v8);
}

uint64_t closure #1 in RemoteConversationService.prepare(bridge:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  v7 = type metadata accessor for RemoteConversationService.State(0);
  v6[13] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[14] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static ConversationActor.shared;
  v6[15] = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationService.prepare(bridge:reply:), v9, 0);
}

uint64_t protocol witness for Conversational.prepare() in conformance Conversation()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return Conversation.prepare()();
}

uint64_t partial apply for closure #1 in Conversation.prepare()(uint64_t a1)
{
  v4 = *(type metadata accessor for SiriRequest(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in Conversation.prepare()(a1, v7, v8, v1 + v5, v9, v10);
}

uint64_t closure #1 in Conversation.prepare()(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[16];
  v6 = *v2;

  if (v1)
  {
    v8 = v4[13];
    v7 = v4[14];
    v9 = v4[11];

    v10 = v6[1];

    return v10();
  }

  else
  {
    v12 = v4[7];

    return MEMORY[0x1EEE6DFA0](closure #1 in Conversation.prepare(), v12, 0);
  }
}

uint64_t partial apply for closure #1 in RemoteConversationService.commit(bridge:reply:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in RemoteConversationService.commit(bridge:reply:)(a1, v4, v5, v6, v7, v8);
}

uint64_t closure #1 in RemoteConversationService.commit(bridge:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  v7 = *(*(type metadata accessor for ConversationCommitResult() - 8) + 64) + 15;
  v6[13] = swift_task_alloc();
  v8 = type metadata accessor for RemoteConversationService.State(0);
  v6[14] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v6[15] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v10 = static ConversationActor.shared;
  v6[16] = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationService.commit(bridge:reply:), v10, 0);
}

uint64_t closure #1 in RemoteConversationService.commit(bridge:reply:)()
{
  v35 = v0;
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[10];
  v4 = OBJC_IVAR____TtC14SiriKitRuntime25RemoteConversationService_state;
  swift_beginAccess();
  outlined init with copy of RemoteConversationService.State(v3 + v4, v2, type metadata accessor for RemoteConversationService.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v6 = v0[15];
      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMd, &_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMR) + 64);
      outlined init with take of ReferenceResolutionClientProtocol((v6 + 40), (v0 + 2));
      outlined destroy of RemoteConversationService.State(v6 + v7, type metadata accessor for SiriRequest);
      v8 = v0[5];
      v9 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v8);
      v10 = *(v9 + 48);
      v33 = (v10 + *v10);
      v11 = v10[1];
      v12 = swift_task_alloc();
      v0[17] = v12;
      *v12 = v0;
      v12[1] = closure #1 in RemoteConversationService.commit(bridge:reply:);
      v13 = v0[13];

      return v33(v13, v8, v9);
    }

    v17 = 0x80000001DCA85CE0;
    v18 = 0xD00000000000003ELL;
  }

  else
  {
    v15 = v0[15];
    v16 = v15[10];

    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    MEMORY[0x1E12A1580](0x74784520776F6C46, 0xEF206E6F69736E65);
    MEMORY[0x1E12A1580](0xD000000000000015, 0x80000001DCA837A0);
    MEMORY[0x1E12A1580](0xD000000000000023, 0x80000001DCA85D20);
    v18 = 0;
    v17 = 0xE000000000000000;

    outlined destroy of ReferenceResolutionClientProtocol?((v15 + 5), &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.executor);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v34[0] = v23;
    *v22 = 136315138;
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v17, v34);

    *(v22 + 4) = v24;
    _os_log_impl(&dword_1DC659000, v20, v21, "%s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x1E12A2F50](v23, -1, -1);
    MEMORY[0x1E12A2F50](v22, -1, -1);
  }

  else
  {
  }

  v26 = v0[11];
  v25 = v0[12];
  lazy protocol witness table accessor for type IllegalStateError and conformance IllegalStateError();
  v27 = swift_allocError();
  *v28 = v18;
  v28[1] = v17;
  v29 = specialized static ConversationCommitResultXPC.error(_:)(v27);

  v26(v29);
  v30 = v0[15];
  v31 = v0[13];

  v32 = v0[1];

  return v32();
}

{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  v5 = *(v2 + 128);
  if (v0)
  {
    v6 = closure #1 in RemoteConversationService.commit(bridge:reply:);
  }

  else
  {
    v6 = closure #1 in RemoteConversationService.commit(bridge:reply:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  v5 = ConversationCommitResult.xpcRepresentation.getter();
  v4();

  outlined destroy of RemoteConversationService.State(v2, type metadata accessor for ConversationCommitResult);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v1);
  v6 = v0[15];
  v7 = v0[13];

  v8 = v0[1];

  return v8();
}

{
  v1 = v0[18];
  v2 = v0[15];
  v4 = v0[11];
  v3 = v0[12];
  v5 = specialized static ConversationCommitResultXPC.error(_:)(v1);
  v4();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  v6 = v0[15];
  v7 = v0[13];

  v8 = v0[1];

  return v8();
}

uint64_t partial apply for closure #1 in Conversation.commit()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in Conversation.commit()(a1, v4, v5, v6, v7, v8);
}

uint64_t protocol witness for ConversationTaskObservationDelegate.conversationWillExecute(flowPluginInfo:activeTasks:rcId:) in conformance RemoteConversationService(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return RemoteConversationService.conversationWillExecute(flowPluginInfo:activeTasks:rcId:)(a1, a2, a3, a4);
}

uint64_t closure #1 in closure #1 in closure #1 in RemoteConversationService.conversationWillExecute(flowPluginInfo:activeTasks:rcId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in closure #1 in RemoteConversationService.conversationWillExecute(flowPluginInfo:activeTasks:rcId:), v6, 0);
}

uint64_t FlowAgent.on(input:)()
{
  v1 = *(v0 + 120);
  if (v1 == 1)
  {
    v2 = *(v0 + 64);
    v3 = *(v2 + 128);
    swift_beginAccess();
    *(v2 + 129) = v3;
  }

  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  v6 = *(v0 + 72);
  v7 = *(v0 + 80);
  v8 = *(v0 + 56);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow03AnyC0C4flow_AA5InputV5inputSb6resulttMd, &_s11SiriKitFlow03AnyC0C4flow_AA5InputV5inputSb6resulttMR);
  v10 = *(v9 + 48);
  v11 = *(v9 + 64);
  *v4 = v5;
  v12 = type metadata accessor for Input();
  (*(*(v12 - 8) + 16))(&v4[v10], v8, v12);
  v4[v11] = v1;
  (*(v7 + 104))(v4, *MEMORY[0x1E69CFAF8], v6);
  static FlowTrace.trace(event:)();
  (*(v7 + 8))(v4, v6);

  v13 = *(v0 + 8);

  return v13(v1);
}

{
  v22 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[8];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v21 = v7;
    *v6 = 136315138;
    v0[6] = *(v5 + 112);
    type metadata accessor for AnyFlow();
    lazy protocol witness table accessor for type AnyFlow and conformance AnyFlow(&lazy protocol witness table cache variable for type AnyFlow and conformance AnyFlow, 255, MEMORY[0x1E69CF990]);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v21);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1DC659000, v3, v4, "%s on input.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1E12A2F50](v7, -1, -1);
    MEMORY[0x1E12A2F50](v6, -1, -1);
  }

  v12 = v0[7];
  v11 = v0[8];
  type metadata accessor for SiriEnvironment();
  v13 = *(v11 + 112);
  v0[12] = v13;
  v0[5] = v13;
  v14 = swift_task_alloc();
  v0[13] = v14;
  *(v14 + 16) = v12;
  *(v14 + 24) = v11;
  v15 = *(MEMORY[0x1E69D33F8] + 4);
  swift_retain_n();
  v16 = swift_task_alloc();
  v0[14] = v16;
  v17 = type metadata accessor for AnyFlow();
  v18 = lazy protocol witness table accessor for type AnyFlow and conformance AnyFlow(&lazy protocol witness table cache variable for type AnyFlow and conformance AnyFlow, 255, MEMORY[0x1E69CF990]);
  *v16 = v0;
  v16[1] = FlowAgent.on(input:);
  v19 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE40DB8](v0 + 15, v0 + 5, &async function pointer to partial apply for closure #1 in FlowAgent.on(input:), v14, v17, v19, v18);
}

uint64_t Conversation.accept(request:)(char a1)
{
  v2 = *(*v1 + 392);
  v3 = *(*v1 + 384);
  v4 = *(*v1 + 152);
  v6 = *v1;
  *(*v1 + 404) = a1;

  return MEMORY[0x1EEE6DFA0](Conversation.accept(request:), v4, 0);
}

uint64_t Conversation.accept(request:)()
{
  if (*(v0 + 404) == 1)
  {
    v1 = *(v0 + 336);

    v2 = *(v0 + 328);
    v3 = *(v0 + 272);
    v4 = *(v0 + 200);
    v5 = *(v0 + 208);
    v6 = *(v0 + 144);
    v7 = *(v0 + 152);
    v8 = *(v0 + 136);
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA4NodeCyAA9FlowAgentCG08selectedG0tMd, &_s14SiriKitRuntime0A7RequestV7request_AA4NodeCyAA9FlowAgentCG08selectedG0tMR) + 48);
    outlined init with copy of Conversation.State(v6, v5, type metadata accessor for SiriRequest);
    *(v5 + v9) = v2;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    outlined assign with take of Conversation.State(v5, v7 + v3);
    swift_endAccess();
    type metadata accessor for UserInputResult();
LABEL_8:
    swift_storeEnumTagMultiPayload();
    v14 = *(v0 + 264);
    v15 = *(v0 + 240);
    v17 = *(v0 + 208);
    v16 = *(v0 + 216);
    v19 = *(v0 + 184);
    v18 = *(v0 + 192);
    v20 = *(v0 + 160);

    v21 = *(v0 + 8);

    return v21();
  }

  v10 = *(v0 + 328);
  v11 = *(v0 + 336);

  if (!v11)
  {
    **(v0 + 136) = 0;
    type metadata accessor for UserInputResult();
    goto LABEL_8;
  }

  v12 = *(v0 + 336);
  *(v0 + 328) = v12;
  *(v0 + 336) = swift_weakLoadStrong();
  v13 = *(v12 + 16);
  *(v0 + 344) = v13;

  return MEMORY[0x1EEE6DFA0](Conversation.accept(request:), v13, 0);
}

{
  v1 = *(*v0 + 288);
  v2 = *(*v0 + 280);
  v3 = *(*v0 + 152);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](Conversation.accept(request:), v3, 0);
}

{
  v1 = *(*(v0 + 152) + 112);
  *(v0 + 296) = v1;
  if ((*(*v1 + 184))())
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.executor);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1DC659000, v3, v4, "Checking if corrections flow accepts input", v5, 2u);
      MEMORY[0x1E12A2F50](v5, -1, -1);
    }

    v6 = swift_task_alloc();
    *(v0 + 304) = v6;
    *v6 = v0;
    v6[1] = Conversation.accept(request:);
    v7 = *(v0 + 144);
    v8 = *(v0 + 152);

    return Conversation.attemptCorrectionsOn(request:)(v7);
  }

  else
  {
    v10 = (*(*v1 + 192))();
    *(v0 + 320) = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskService;
    if (v10)
    {
      *(v0 + 328) = v10;
      v11 = v10;
      *(v0 + 336) = swift_weakLoadStrong();
      v12 = *(v11 + 16);
      *(v0 + 344) = v12;

      return MEMORY[0x1EEE6DFA0](Conversation.accept(request:), v12, 0);
    }

    else
    {
      **(v0 + 136) = 0;
      type metadata accessor for UserInputResult();
      swift_storeEnumTagMultiPayload();
      v13 = *(v0 + 264);
      v14 = *(v0 + 240);
      v16 = *(v0 + 208);
      v15 = *(v0 + 216);
      v18 = *(v0 + 184);
      v17 = *(v0 + 192);
      v19 = *(v0 + 160);

      v20 = *(v0 + 8);

      return v20();
    }
  }
}

{
  v1 = v0[19];
  v0[44] = *(v0[43] + 112);
  return MEMORY[0x1EEE6DFA0](Conversation.accept(request:), v1, 0);
}

{
  v1 = v0[44];
  v2 = v0[40];
  v3 = v0[18];
  v4 = v0[19];
  v0[45] = dispatch thunk of AnyFlow.siriEnvironment.getter();
  SiriEnvironment.update(forRequest:)(v3);
  v0[46] = *(v4 + v2);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](Conversation.accept(request:), v5, 0);
}

{
  static os_signpost_type_t.event.getter();
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  v3 = *(v0 + 240);
  v4 = *(v0 + 248);
  v5 = *(v0 + 232);
  v27 = *(v0 + 224);
  v28 = *(v0 + 216);
  v6 = *(v0 + 144);
  v7 = *(v0 + 152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1DCA66060;
  *(v0 + 400) = *(type metadata accessor for SiriRequest(0) + 20);
  Input.identifier.getter();
  v9 = UUID.uuidString.getter();
  v11 = v10;
  (*(v1 + 8))(v2, v4);
  *(v8 + 56) = MEMORY[0x1E69E6158];
  *(v8 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:_:_:)();

  (*(v5 + 8))(v3, v27);
  v12 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_state;
  *(v0 + 272) = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_state;
  swift_beginAccess();
  outlined init with copy of Conversation.State(v7 + v12, v28, type metadata accessor for Conversation.State);
  Conversation.State.assertReady(function:)();
  v13 = *(v0 + 192);
  v14 = *(v0 + 248);
  v15 = *(v0 + 256);
  v16 = *(v0 + 144);
  v17 = *(v0 + 152);
  outlined destroy of Conversation.State(*(v0 + 216), type metadata accessor for Conversation.State);
  v19 = *v16;
  v18 = v16[1];
  v20 = (v17 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_rcId);
  swift_beginAccess();
  v21 = v20[1];
  *v20 = v19;
  v20[1] = v18;

  Input.identifier.getter();
  (*(v15 + 56))(v13, 0, 1, v14);
  v22 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_hypothesisId;
  swift_beginAccess();
  outlined assign with take of (Input, AnyFlow, SiriEnvironment)(v13, v17 + v22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  swift_endAccess();
  v23 = *(v17 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_rootEnvironment);
  *(v0 + 280) = SiriEnvironment.callState.getter();
  v24 = *(MEMORY[0x1E69D0088] + 4);
  v29 = (*MEMORY[0x1E69D0088] + MEMORY[0x1E69D0088]);
  v25 = swift_task_alloc();
  *(v0 + 288) = v25;
  *v25 = v0;
  v25[1] = Conversation.accept(request:);

  return v29();
}

{
  v1 = v0[46];
  swift_beginAccess();
  v4 = *(v1 + 32);
  if (v4 >> 62)
  {
    v5 = __CocoaSet.count.getter();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_8:
    v2 = v0[19];
    v7 = Conversation.accept(request:);
    goto LABEL_9;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {

    v6 = MEMORY[0x1E12A1FE0](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v5, v2, v3);
    }

    v6 = *(v4 + 32);
  }

  v0[47] = v6;
  v2 = v0[19];
  v7 = Conversation.accept(request:);
LABEL_9:
  v5 = v7;
  v3 = 0;

  return MEMORY[0x1EEE6DFA0](v5, v2, v3);
}

{
  v1 = *(v0 + 376);
  v17 = *(v0 + 344);
  v18 = *(v0 + 360);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = *(v0 + 168);
  v16 = *(v0 + 160);
  type metadata accessor for FlowTaskProvider();
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v15 = *(v1 + 33);
  v7 = OBJC_IVAR____TtC14SiriKitRuntime8FlowTask_creationTime;
  v8 = *(v2 + 16);
  v8(v3, v1 + OBJC_IVAR____TtC14SiriKitRuntime8FlowTask_creationTime, v4);

  dispatch thunk of FlowTaskProvider.__allocating_init(id:isClientInitiated:creationTime:)();
  SiriEnvironment.flowTask.setter();
  SiriEnvironment.currentRequest.getter();
  v8(v3, v1 + v7, v4);

  FlowTaskMetadata.init(id:isClientInitiated:creationTime:)();
  v9 = type metadata accessor for FlowTaskMetadata();
  (*(*(v9 - 8) + 56))(v16, 0, 1, v9);
  CurrentRequest.flowTaskMetadata.setter();

  v10 = *(v0 + 328);
  v11 = *(v0 + 400);
  v12 = *(v0 + 144);

  *(v0 + 384) = *(v10 + 16);

  v13 = swift_task_alloc();
  *(v0 + 392) = v13;
  *v13 = v0;
  v13[1] = Conversation.accept(request:);

  return FlowAgent.on(input:)(v12 + v11);
}

{
  v20 = v0;
  if (v0[39])
  {
    v1 = v0[37];
    v19 = v0[39];
    v2 = (*(*v1 + 208))(&v19, 0);

    v3 = v0[34];
    v5 = v0[25];
    v4 = v0[26];
    v6 = v0[18];
    v7 = v0[19];
    v8 = v0[17];
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA4NodeCyAA9FlowAgentCG08selectedG0tMd, &_s14SiriKitRuntime0A7RequestV7request_AA4NodeCyAA9FlowAgentCG08selectedG0tMR) + 48);
    outlined init with copy of Conversation.State(v6, v4, type metadata accessor for SiriRequest);
    *(v4 + v9) = v2;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    outlined assign with take of Conversation.State(v4, v7 + v3);
    swift_endAccess();
    type metadata accessor for UserInputResult();
  }

  else
  {
    *v0[17] = 0;
    type metadata accessor for UserInputResult();
  }

  swift_storeEnumTagMultiPayload();
  v10 = v0[33];
  v11 = v0[30];
  v13 = v0[26];
  v12 = v0[27];
  v15 = v0[23];
  v14 = v0[24];
  v16 = v0[20];

  v17 = v0[1];

  return v17();
}

{
  v1 = *(v0 + 344);

  v2 = *(v0 + 360);
  v3 = *(v0 + 328);
  v4 = *(v0 + 400);
  v5 = *(v0 + 144);

  *(v0 + 384) = *(v3 + 16);

  v6 = swift_task_alloc();
  *(v0 + 392) = v6;
  *v6 = v0;
  v6[1] = Conversation.accept(request:);

  return FlowAgent.on(input:)(v5 + v4);
}