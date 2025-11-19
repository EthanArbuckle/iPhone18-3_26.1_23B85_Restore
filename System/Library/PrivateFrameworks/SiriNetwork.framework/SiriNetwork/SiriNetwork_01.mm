uint64_t OUTLINED_FUNCTION_53_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_53_3(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = v3;
  a1[2].n128_u64[1] = v2;
  a1[3].n128_u64[0] = v4;
}

uint64_t OUTLINED_FUNCTION_53_5(uint64_t result)
{
  v4 = result & ~(v3 << *(v1 + 32));
  v5 = (v3 << v4) & ~*(v2 + 8 * (v4 >> 6));
  return result;
}

uint64_t ConnectionType.stringRawValue.getter()
{
  result = 0x6E776F6E6B6E55;
  switch(*v0)
  {
    case 1:
      result = 0x69462D6957;
      break;
    case 2:
      result = 1312905047;
      break;
    case 3:
      result = 0x4E41525455;
      break;
    case 4:
      result = 0x31414D4443204732;
      break;
    case 5:
      result = 0x53525047204732;
      break;
    case 6:
      result = 0x65676445204732;
      break;
    case 7:
      result = 0x414D444357204733;
      break;
    case 8:
      v2 = 0x445348204733;
      goto LABEL_21;
    case 9:
      v2 = 0x555348204733;
LABEL_21:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x4150000000000000;
      break;
    case 0xA:
    case 0xB:
    case 0xC:
      result = 0x44564520414D4443;
      break;
    case 0xD:
      result = 1146114632;
      break;
    case 0xE:
      result = 4543564;
      break;
    case 0xF:
      result = 0x41534E524E204735;
      break;
    case 0x10:
      result = 0x524E204735;
      break;
    case 0x11:
      result = 0x504354504DLL;
      break;
    case 0x12:
      result = 0x796C6C654264654CLL;
      break;
    case 0x13:
      result = 5456969;
      break;
    case 0x14:
      result = 5263184;
      break;
    case 0x15:
      result = 0x65636E65726F6C46;
      break;
    case 0x16:
      result = 0x6C61636F4CLL;
      break;
    case 0x17:
      result = 0x504354504D574ELL;
      break;
    case 0x18:
      result = 0x6365737069;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_72_1()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void OUTLINED_FUNCTION_72_2(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = v2;
}

uint64_t lazy protocol witness table accessor for type NetworkConnectionProvider and conformance NetworkConnectionProvider(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of ConnectionSnapshotReport?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void static NetworkManager.releaseDormancySuspendAssertion(_:)(void *a1)
{
  if (a1 && *a1)
  {
    swift_unknownObjectRelease();
    *a1 = 0;
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    v2 = type metadata accessor for Logger();
    oslog = OUTLINED_FUNCTION_17(v2, static Logger.siriNetwork);
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = OUTLINED_FUNCTION_14();
      *v4 = 0;
      _os_log_impl(&dword_223515000, oslog, v3, "NetworkManager - Assertion: Released dormancy suspension assertion.", v4, 2u);
      OUTLINED_FUNCTION_12();
    }
  }
}

void CommunicationProtocolAce.cancelPingTimer()()
{
  if (*(v0 + 224))
  {
    v1 = v0;
    v2 = one-time initialization token for siriNetwork;
    swift_unknownObjectRetain();
    if (v2 != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v3, static Logger.siriNetwork);
    v4 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    v5 = OUTLINED_FUNCTION_16_0();
    if (os_log_type_enabled(v5, v6))
    {
      OUTLINED_FUNCTION_17_5();
      v7 = swift_slowAlloc();
      OUTLINED_FUNCTION_40_2(v7);
      OUTLINED_FUNCTION_6_0();
      _os_log_impl(v8, v9, v10, v11, v12, 2u);
      v13 = OUTLINED_FUNCTION_1_2();
      MEMORY[0x223DE38F0](v13);
    }

    swift_getObjectType();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();
    v14 = *(v1 + 224);
    *(v1 + 224) = 0;

    swift_unknownObjectRelease();
  }
}

void NetworkConnectionProvider.handleStateUpdate(_:)()
{
  OUTLINED_FUNCTION_46();
  v1 = v0;
  v3 = v2;
  v151 = type metadata accessor for ConnectionAnalysisInfo();
  v4 = OUTLINED_FUNCTION_71(v151);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_14_2();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_49_1(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork22ConnectionAnalysisInfoVSgMd, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMR);
  v10 = OUTLINED_FUNCTION_11_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_14_2();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_35_0();
  v136 = v14;
  OUTLINED_FUNCTION_31();
  v139 = type metadata accessor for NWError();
  v15 = OUTLINED_FUNCTION_0_0(v139);
  v138 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_14_2();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_49_1(v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network12NWConnectionC5StateOSgMd, &_s7Network12NWConnectionC5StateOSgMR);
  v22 = OUTLINED_FUNCTION_11_1(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_14_2();
  MEMORY[0x28223BE20](v25);
  v27 = &v129 - v26;
  v28 = type metadata accessor for NWConnection.State();
  v29 = OUTLINED_FUNCTION_0_0(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_14_2();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_14_2();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_14_2();
  MEMORY[0x28223BE20](v36);
  v38 = &v129 - v37;
  v145 = NetworkConnectionProvider.connectionIdentifier.getter();
  v40 = v39;
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  v42 = __swift_project_value_buffer(v41, static Logger.siriNetwork);
  v43 = *(v31 + 16);
  v148 = v3;
  v44 = v42;
  (v43)(v38, v3, v28);

  v144 = v44;
  v45 = Logger.logObject.getter();
  LODWORD(v44) = static os_log_type_t.default.getter();
  v147 = v1;

  v143 = v44;
  v46 = os_log_type_enabled(v45, v44);
  v146 = v31;
  v150 = v40;
  if (v46)
  {
    v131 = v45;
    OUTLINED_FUNCTION_4_3();
    v47 = swift_slowAlloc();
    v130 = OUTLINED_FUNCTION_116();
    v155 = v130;
    *v47 = 136315650;
    *(v47 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v145, v40, &v155);
    *(v47 + 12) = 2080;
    (v43)(v27, v38, v28);
    OUTLINED_FUNCTION_9_0();
    __swift_storeEnumTagSinglePayload(v48, v49, v50, v28);
    v51 = v142;
    outlined init with copy of NetworkConnectionProtocol?(v27, v142, &_s7Network12NWConnectionC5StateOSgMd, &_s7Network12NWConnectionC5StateOSgMR);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v51, 1, v28);
    v132 = v43;
    if (EnumTagSinglePayload == 1)
    {
      v53 = 0xE100000000000000;
      v54 = 45;
      v55 = v147;
      v56 = v146;
    }

    else
    {
      v56 = v146;
      v60 = *(v146 + 32);
      v61 = v152;
      OUTLINED_FUNCTION_45();
      v62();
      (v43)(v140, v61, v28);
      OUTLINED_FUNCTION_80();
      v54 = String.init<A>(describing:)();
      v53 = v63;
      (*(v56 + 8))(v61, v28);
      v55 = v147;
    }

    outlined destroy of NetworkConnectionProtocol?(v27, &_s7Network12NWConnectionC5StateOSgMd, &_s7Network12NWConnectionC5StateOSgMR);
    v64 = v38;
    v58 = *(v56 + 8);
    v58(v64, v28);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v53, &v155);
    OUTLINED_FUNCTION_115();
    *(v47 + 14) = v27;
    *(v47 + 22) = 2080;
    OUTLINED_FUNCTION_8();
    swift_beginAccess();
    outlined init with copy of NetworkConnectionProtocol?(v55 + 16, v156, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
    outlined init with copy of NetworkConnectionProtocol?(v156, &v157, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
    if (v158)
    {
      outlined init with take of RPCOspreyConnectionProtocol(&v157, v154);
      outlined init with copy of RPCOspreyConnectionProtocol(v154, &v153);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork0B18ConnectionProtocol_pMd, _s11SiriNetwork0B18ConnectionProtocol_pMR);
      v65 = String.init<A>(describing:)();
      v67 = v66;
      __swift_destroy_boxed_opaque_existential_0(v154);
    }

    else
    {
      v67 = 0xE100000000000000;
      v65 = 45;
    }

    v59 = v132;
    outlined destroy of NetworkConnectionProtocol?(v156, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v67, &v155);
    OUTLINED_FUNCTION_104();

    *(v47 + 24) = v65;
    v68 = v131;
    _os_log_impl(&dword_223515000, v131, v143, "Provider - NetworkConnectionProvider [%s]: State updated to %s. Info: %s", v47, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
  }

  else
  {

    v57 = v38;
    v58 = *(v31 + 8);
    v58(v57, v28);
    v55 = v147;
    v59 = v43;
  }

  v69 = v152;
  OUTLINED_FUNCTION_45();
  v59();
  v70 = ConnectionProviderState.init(from:)(v69);
  v71 = *(v55 + 1520);
  *(v55 + 1520) = v70;
  v72 = *(v55 + 1528);
  *(v55 + 1528) = v73;
  outlined consume of ConnectionProviderState(v71, v72);
  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  outlined init with copy of NetworkConnectionProtocol?(v55 + 16, v156, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
  v74 = v149;
  if (!*(&v156[1] + 1))
  {
    outlined destroy of NetworkConnectionProtocol?(v156, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
    goto LABEL_16;
  }

  outlined init with take of RPCOspreyConnectionProtocol(v156, &v157);
  if (*(v55 + 2099))
  {
    __swift_destroy_boxed_opaque_existential_0(&v157);
LABEL_16:
    v75 = v150;

    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v76, v77))
    {
      OUTLINED_FUNCTION_6_5();
      v78 = swift_slowAlloc();
      OUTLINED_FUNCTION_4_3();
      v79 = swift_slowAlloc();
      *&v156[0] = v79;
      *v78 = 136315138;
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v145, v75, v156);
      OUTLINED_FUNCTION_115();
      *(v78 + 4) = v69;
      _os_log_impl(&dword_223515000, v76, v77, "Provider - NetworkConnectionProvider [%s]: Connection state updated, but connection does not exist or was cancelled", v78, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v79);
      OUTLINED_FUNCTION_2_2();
      MEMORY[0x223DE38F0]();
      OUTLINED_FUNCTION_2_2();
      MEMORY[0x223DE38F0]();
    }

    else
    {
    }

    goto LABEL_31;
  }

  v80 = v141;
  OUTLINED_FUNCTION_45();
  v59();
  v81 = v80;
  v82 = v146;
  v83 = (*(v146 + 88))(v81, v28);
  if (v83 == *MEMORY[0x277CD8DE8])
  {
    OUTLINED_FUNCTION_93();
    (*(v82 + 96))(v81, v28);
    v84 = v138;
    v85 = v139;
    (*(v138 + 32))(v74, v81, v139);
    OUTLINED_FUNCTION_34_1();
    lazy protocol witness table accessor for type NetworkConnectionProvider and conformance NetworkConnectionProvider(v86, 255, v87);
    OUTLINED_FUNCTION_10_0();
    v88 = swift_allocError();
    v89 = *(v84 + 16);
    v89(v90, v74, v85);
    v91 = *(v55 + 2104);
    *(v55 + 2104) = v88;

    if (swift_unknownObjectWeakLoadStrong())
    {
      OUTLINED_FUNCTION_10_0();
      v92 = swift_allocError();
      v89(v93, v74, v85);
      lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
      OUTLINED_FUNCTION_10_0();
      v94 = swift_allocError();
      *(v95 + 8) = 0;
      *(v95 + 16) = 0;
      *v95 = v92;
      *(v95 + 24) = xmmword_2235F0AA0;
      specialized BackgroundConnection.connectionProvider(_:received:)();
      swift_unknownObjectRelease();
    }

    (*(v84 + 8))(v74, v85);
  }

  else
  {
    v96 = v83;
    if (v83 == *MEMORY[0x277CD8DE0])
    {
      OUTLINED_FUNCTION_93();
      (*(v146 + 96))(v81, v28);
      v97 = v138;
      v98 = v137;
      v99 = v139;
      (*(v138 + 32))(v137, v81, v139);
      OUTLINED_FUNCTION_34_1();
      lazy protocol witness table accessor for type NetworkConnectionProvider and conformance NetworkConnectionProvider(v100, 255, v101);
      OUTLINED_FUNCTION_10_0();
      v102 = swift_allocError();
      (*(v97 + 16))(v103, v98, v99);
      lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
      OUTLINED_FUNCTION_10_0();
      v104 = swift_allocError();
      *(v105 + 8) = 0;
      *(v105 + 16) = 0;
      *v105 = v102;
      *(v105 + 24) = xmmword_2235F0A90;
      NetworkConnectionProvider.closeWithError(_:)();

      (*(v97 + 8))(v98, v99);
    }

    else if (v83 == *MEMORY[0x277CD8DD8])
    {
      OUTLINED_FUNCTION_93();
    }

    else if (v83 == *MEMORY[0x277CD8DF8])
    {
      OUTLINED_FUNCTION_93();
      v106 = *__swift_project_boxed_opaque_existential_1(&v157, v158);
      v107 = NWConnection.identifier.getter();
      OUTLINED_FUNCTION_95();
      *(v55 + 56) = v107;
      *(v55 + 64) = 0;
      NetworkConnectionProvider.updateAndEmitConnectionMetricsPreparationReport()();
    }

    else if (v83 == *MEMORY[0x277CD8DD0])
    {
      *(v55 + 2101) = 1;
      specialized ConnectionProviderProtocol.setupStaleConnectionTimer()();
      NetworkConnectionProvider.updateAndEmitConnectionMetricsReadyEstablishmentReport()();
      outlined init with copy of RPCOspreyConnectionProtocol(&v157, v156);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork0B18ConnectionProtocol_pMd, _s11SiriNetwork0B18ConnectionProtocol_pMR);
      type metadata accessor for NWConnection();
      if (swift_dynamicCast())
      {
        MEMORY[0x223DE1A50]();
        v108 = nw_connection_uses_multipath();
        swift_unknownObjectRelease();

        *(v55 + 2100) = v108;
      }

      v112 = v150;
      NetworkConnectionProvider.updateConnectionMetricsSnapthotReport(_:)();
      v113 = v55 + 2064;
      v114 = *(v55 + 2064);
      if (v114)
      {
        v115 = *(v55 + 2072);
        memset(v156, 0, 41);

        v114(v156);
        outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v114);
        v116 = *(v55 + 2064);
      }

      else
      {
        v116 = 0;
      }

      v117 = *(v55 + 2072);
      *v113 = 0;
      *(v55 + 2072) = 0;
      outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v116);

      v118 = Logger.logObject.getter();
      v119 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v118, v119))
      {
        swift_slowAlloc();
        *&v156[0] = OUTLINED_FUNCTION_53_0();
        *v113 = 136315650;
        v120 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v145, v112, v156);

        *(v55 + 2068) = v120;
        *(v55 + 2076) = 1024;
        *(v55 + 2078) = *(v55 + 2100);

        *(v55 + 2082) = 2080;
        v121 = v136;
        specialized ConnectionProviderProtocol.connectionAnalysisInfo.getter(v136);
        v122 = v135;
        outlined init with copy of NetworkConnectionProtocol?(v121, v135, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMd, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMR);
        OUTLINED_FUNCTION_113(v122);
        if (v123)
        {
          v127 = 0xE700000000000000;
          v125 = 0x6E776F6E6B6E75;
        }

        else
        {
          v124 = v134;
          outlined init with take of ConnectionAnalysisInfo(v122, v134);
          outlined init with copy of ConnectionAnalysisInfo(v124, v133);
          OUTLINED_FUNCTION_50();
          v125 = String.init<A>(describing:)();
          v127 = v126;
          outlined destroy of ConnectionAnalysisInfo(v124);
        }

        outlined destroy of NetworkConnectionProtocol?(v136, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMd, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMR);
        v128 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v125, v127, v156);

        *(v113 + 20) = v128;
        _os_log_impl(&dword_223515000, v118, v119, "Provider - NetworkConnectionProvider [%s]: isMPTCP %{BOOL}d, Analysis Info - %s", v113, 0x1Cu);
        OUTLINED_FUNCTION_52_0();
        OUTLINED_FUNCTION_2_2();
        MEMORY[0x223DE38F0]();
        OUTLINED_FUNCTION_2_2();
        MEMORY[0x223DE38F0]();
      }

      else
      {
      }
    }

    else
    {
      v109 = *MEMORY[0x277CD8DF0];
      OUTLINED_FUNCTION_93();
      if (v96 == v109)
      {
        lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
        OUTLINED_FUNCTION_10_0();
        v110 = swift_allocError();
        *(v111 + 8) = 0;
        *(v111 + 16) = 0;
        *v111 = 1;
        *(v111 + 24) = xmmword_2235F01E0;
        NetworkConnectionProvider.closeWithError(_:)();
      }

      else
      {
        v58(v141, v28);
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_0(&v157);
LABEL_31:
  OUTLINED_FUNCTION_47();
}

unint64_t type metadata accessor for OS_dispatch_source()
{
  result = lazy cache variable for type metadata for OS_dispatch_source;
  if (!lazy cache variable for type metadata for OS_dispatch_source)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_source);
  }

  return result;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(unsigned int a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  OUTLINED_FUNCTION_2_19(v9, v10);
  if (v13)
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVys6UInt32VSdGMd, &_ss17_NativeDictionaryVys6UInt32VSdGMR);
  result = _NativeDictionary.ensureUnique(isUnique:capacity:)(a2 & 1, v8);
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  v17 = *v4;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_11:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = result;
LABEL_5:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v14) = a3;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v14, a1, v19, a3);
  }

  return result;
}

Swift::Void __swiftcall PingInfo.markPingSent(withIndex:)(Swift::UInt32 withIndex)
{
  v2 = v1;
  v4 = [objc_opt_self() processInfo];
  [v4 systemUptime];
  v6 = v5;

  swift_beginAccess();
  v7 = *(v2 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + 32);
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(withIndex, isUniquelyReferenced_nonNull_native, v6);
  *(v2 + 32) = v9;
  swift_endAccess();
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, int a2, void *a3, double a4)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + 4 * result) = a2;
  *(a3[7] + 8 * result) = a4;
  v4 = a3[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v6;
  }

  return result;
}

Swift::Int CommunicationProtocolAce.checkPings()()
{
  v3 = *(v1 + 232);
  v4 = __CFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
    OUTLINED_FUNCTION_0_8();
    swift_once();
    v7 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v7, static Logger.siriNetwork);

    v8 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v9 = OUTLINED_FUNCTION_16_0();
    if (os_log_type_enabled(v9, v10))
    {
      OUTLINED_FUNCTION_28_3();
      v11 = swift_slowAlloc();
      *v11 = 67109120;
      v11[1] = *(v0 + 232);

      OUTLINED_FUNCTION_6_0();
      _os_log_impl(v12, v13, v14, v15, v16, 8u);
      v17 = OUTLINED_FUNCTION_1_2();
      MEMORY[0x223DE38F0](v17);
    }

    else
    {
    }
  }

  else
  {
    v0 = v1;
    if (v5 <= 0xFFFE795F)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    *(v1 + 232) = v6;
    CommunicationProtocolAce.sendAcePing(withId:)(v6);
  }

  if (!*(v0 + 240))
  {
    type metadata accessor for PingInfo();
    OUTLINED_FUNCTION_109();
    swift_allocObject();
    v18 = PingInfo.init(pingAcknowledgedCount:avgPingTime:)(0, 0.0);
    v19 = *(v0 + 240);
    *(v0 + 240) = v18;

    if (!*(v0 + 240))
    {
      return 0;
    }
  }

  v20 = *(v0 + 232);

  PingInfo.markPingSent(withIndex:)(v20);

  if (!*(v0 + 240))
  {
    return 0;
  }

  result = PingInfo.numberOfUnacknowledgedPings()();
  if (result < 2)
  {
    return 0;
  }

  if (result != 3)
  {
    if (result == 7)
    {
      return 5;
    }

    else if (result < 0xC)
    {
      return 1;
    }

    else
    {
      return 9;
    }
  }

  return result;
}

uint64_t closure #1 in CommunicationProtocolAce.resumePingTimer()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    CommunicationProtocolAce.pingTimerFired()();
  }

  return result;
}

uint64_t CommunicationProtocolAce.pingTimerFired()()
{
  v2 = v0;
  OUTLINED_FUNCTION_36_2();
  v3 = v0[6];
  OUTLINED_FUNCTION_48_0();
  if (!(!v5 & v4))
  {
    v6 = v0[5];
    v7 = OUTLINED_FUNCTION_41_0();
    outlined copy of Data._Representation(v7, v8);
    v9 = OUTLINED_FUNCTION_41_0();
    v10 = MEMORY[0x223DE13E0](v9);
    v11 = OUTLINED_FUNCTION_41_0();
    outlined consume of Data?(v11, v12);
    if (v10 > 0)
    {
      goto LABEL_5;
    }
  }

  OUTLINED_FUNCTION_37_1();
  v13 = v2[10];
  OUTLINED_FUNCTION_48_0();
  if (!v5 & v4 || (v14 = v2[9], v15 = OUTLINED_FUNCTION_41_0(), outlined copy of Data._Representation(v15, v16), v17 = OUTLINED_FUNCTION_41_0(), v18 = MEMORY[0x223DE13E0](v17), v19 = OUTLINED_FUNCTION_41_0(), outlined consume of Data?(v19, v20), v18 < 1))
  {
    v21 = CommunicationProtocolAce.checkPings()();
  }

  else
  {
LABEL_5:
    CommunicationProtocolAce.checkForProgressOnReadingData()();
  }

  v22 = v21;
  result = CommunicationProtocolAce.aceDelegate.getter();
  if (result)
  {
    v25 = result;
    v26 = v24;
    if ((v22 & 2) != 0 && BackgroundConnection.shouldFallbackQuickly()() || (v22 & 4) != 0)
    {
      if (BackgroundConnection.isUsingPeer()())
      {
        if (!AFDeviceSupportsWiFiLPASMode() || !BackgroundConnection.logTcpInfoIndicatesPoorLinkQuality()())
        {
          OUTLINED_FUNCTION_61();
          if (!v5)
          {
            OUTLINED_FUNCTION_0_8();
            swift_once();
          }

          v54 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_58(v54, static Logger.siriNetwork);
          v55 = Logger.logObject.getter();
          static os_log_type_t.default.getter();
          v56 = OUTLINED_FUNCTION_16_0();
          if (os_log_type_enabled(v56, v57))
          {
            OUTLINED_FUNCTION_17_5();
            v58 = swift_slowAlloc();
            OUTLINED_FUNCTION_11_7(v58);
            OUTLINED_FUNCTION_15_0();
            _os_log_impl(v59, v60, v61, v62, v63, 2u);
            v64 = OUTLINED_FUNCTION_6_15();
            MEMORY[0x223DE38F0](v64);
          }

          return swift_unknownObjectRelease();
        }
      }

      else
      {
        if (!BackgroundConnection.isUsingPop()() && !BackgroundConnection.isUsingFlorence()())
        {
          goto LABEL_12;
        }

        OUTLINED_FUNCTION_61();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_8();
          swift_once();
        }

        v28 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_58(v28, static Logger.siriNetwork);
        v29 = Logger.logObject.getter();
        v1 = static os_log_type_t.default.getter();
        v30 = OUTLINED_FUNCTION_16_0();
        if (os_log_type_enabled(v30, v31))
        {
          OUTLINED_FUNCTION_17_5();
          *swift_slowAlloc() = 0;
          OUTLINED_FUNCTION_55_0();
          _os_log_impl(v32, v33, v34, v35, v36, 2u);
          v37 = OUTLINED_FUNCTION_7_2();
          MEMORY[0x223DE38F0](v37);
        }

        if (v22)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
      if (v22 < 8)
      {
LABEL_12:
        if ((v22 & 1) == 0)
        {
          return swift_unknownObjectRelease();
        }

        v27 = 0;
        goto LABEL_28;
      }

      if (v22)
      {
LABEL_27:
        v27 = 1;
LABEL_28:
        if (!BackgroundConnection.isUsingPop()() || BackgroundConnection.isUsingPeer()())
        {
          OUTLINED_FUNCTION_7_1();
          v38 = swift_allocObject();
          swift_weakInit();
          OUTLINED_FUNCTION_109();
          v1 = swift_allocObject();
          *(v1 + 16) = v38;
          *(v1 + 24) = v25;
          *(v1 + 32) = v26;

          swift_unknownObjectRetain();
          BackgroundConnection.logTcpInfoIndicatesPoorLinkQuality(_:)();
        }

        if (!v27)
        {
          return swift_unknownObjectRelease();
        }
      }
    }

    OUTLINED_FUNCTION_61();
    if (!v5)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v39, static Logger.siriNetwork);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      OUTLINED_FUNCTION_17_5();
      v42 = swift_slowAlloc();
      OUTLINED_FUNCTION_51_1(v42);
      _os_log_impl(&dword_223515000, v40, v41, "CommunicationProtocol - Ace pings: Ping timeout", v1, 2u);
      v43 = OUTLINED_FUNCTION_2_0();
      MEMORY[0x223DE38F0](v43);
    }

    if (v2[13])
    {
      v44 = Logger.logObject.getter();
      v2 = static os_log_type_t.default.getter();
      v45 = OUTLINED_FUNCTION_16_0();
      if (os_log_type_enabled(v45, v46))
      {
        OUTLINED_FUNCTION_17_5();
        v47 = swift_slowAlloc();
        OUTLINED_FUNCTION_11_7(v47);
        OUTLINED_FUNCTION_15_0();
        _os_log_impl(v48, v49, v50, v51, v52, 2u);
        v53 = OUTLINED_FUNCTION_6_15();
        MEMORY[0x223DE38F0](v53);
      }
    }

    lazy protocol witness table accessor for type BackgroundConnectionError and conformance BackgroundConnectionError();
    OUTLINED_FUNCTION_10_0();
    v65 = swift_allocError();
    OUTLINED_FUNCTION_79_0(v65, v66);
    v67 = OUTLINED_FUNCTION_68_1();
    BackgroundConnection.fallbackToNextConnectionMethod(error:)(v67);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t CommunicationProtocolAce.sendAcePing(withId:)(uint64_t a1)
{
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_58(v3, static Logger.siriNetwork);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_28_3();
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = a1;
    _os_log_impl(&dword_223515000, v4, v5, "CommunicationProtocol - Ace pings: Sending ACE Ping %u", v6, 8u);
    v7 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x223DE38F0](v7);
  }

  static AceDataHeader.createHeaderData(forType:lengthOrIdentifier:)(4, a1);
  OUTLINED_FUNCTION_31_2();
  if (!v11 & v10)
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      OUTLINED_FUNCTION_17_5();
      v14 = swift_slowAlloc();
      OUTLINED_FUNCTION_11_7(v14);
      _os_log_impl(&dword_223515000, v12, v13, "Failed to serialize ACE Ping", v1, 2u);
      v15 = OUTLINED_FUNCTION_6_15();
      MEMORY[0x223DE38F0](v15);
    }

    lazy protocol witness table accessor for type BackgroundConnectionError and conformance BackgroundConnectionError();
    OUTLINED_FUNCTION_10_0();
    swift_allocError();
    OUTLINED_FUNCTION_8_10(v16, 3);
    return swift_willThrow();
  }

  else
  {
    CommunicationProtocolAce.compressData(_:logDebug:)(v8, v9, 0);
    if (!v1)
    {
      OUTLINED_FUNCTION_31_2();
      if (!v11 & v10)
      {
        lazy protocol witness table accessor for type BackgroundConnectionError and conformance BackgroundConnectionError();
        OUTLINED_FUNCTION_10_0();
        swift_allocError();
        OUTLINED_FUNCTION_8_10(v18, 3);
        swift_willThrow();
      }

      else
      {
        if (CommunicationProtocolAce.aceDelegate.getter())
        {
          v19 = OUTLINED_FUNCTION_26();
          BackgroundConnection.connectionSendData(_:)(v19, v20);
          swift_unknownObjectRelease();
        }

        v21 = OUTLINED_FUNCTION_26();
        outlined consume of Data?(v21, v22);
      }
    }

    v23 = OUTLINED_FUNCTION_53();
    return outlined consume of Data?(v23, v24);
  }
}

uint64_t BackgroundConnection.connectionSendData(_:)(uint64_t a1, unint64_t a2)
{
  v3[3] = MEMORY[0x277CC9318];
  v3[0] = a1;
  v3[1] = a2;
  outlined copy of Data._Representation(a1, a2);
  BackgroundConnection.sendData(_:with:)(v3, destructiveProjectEnumData for ConnectionConfigurationError, 0);
  return __swift_destroy_boxed_opaque_existential_0(v3);
}

uint64_t NWConnection.startActivity(_:)(uint64_t a1, void (*a2)())
{
  outlined init with copy of Any?(a1, v4);
  if (!v5)
  {
    return outlined destroy of Any?(v4);
  }

  type metadata accessor for NWActivity();
  result = swift_dynamicCast();
  if (result)
  {
    a2();
  }

  return result;
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t specialized closure #1 in NetworkActivityTracingInternal.stop(label:reason:error:completion:)(uint64_t a1, int a2, uint64_t a3, void *a4, void (*a5)(void), uint64_t a6)
{
  v123 = a6;
  v124 = a3;
  v9 = type metadata accessor for UUID();
  v122 = *(v9 - 8);
  v10 = *(v122 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v94 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v94 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v120 = &v94 - v25;
  MEMORY[0x28223BE20](v24);
  v121 = &v94 - v26;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v28 = result;
  v118 = v9;
  if (a2 == 1)
  {
    v111 = a2;
    v112 = v20;
    v119 = v13;
    v113 = v23;
    v116 = v15;
    swift_beginAccess();
    v117 = v28;
    v20 = *(v28 + 16);
    v15 = v20 + 64;
    v29 = 1 << v20[32];
    v30 = -1;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    v23 = v30 & *(v20 + 8);
    v31 = (v29 + 63) >> 6;
    v105 = (v122 + 32);
    v104 = (v122 + 16);
    v103 = (v122 + 8);

    v28 = 0;
    v32 = static Logger.siriNetwork;
    *&v33 = 136315906;
    v108 = v33;
    v107 = "SiriNetworkActivityUnknown";
    v106 = v124;
    v102 = "SiriNetworkActivitySucceeded";
    v101 = "SiriNetworkActivityTimedOut";
    v100 = "SiriNetworkActivityFailed";
    v99 = "SiriNetworkActivityCancelled";
    v98 = "remoteRequestExecution";
    v114 = v20;
    while (v23)
    {
LABEL_11:
      v35 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v36 = *(*(v20 + 7) + ((v28 << 9) | (8 * v35)));
      if (v36[32] == 1 && v36[34] == 1)
      {
        v37 = a5;
        v38 = one-time initialization token for siriNetwork;

        if (v38 != -1)
        {
          swift_once();
        }

        v39 = type metadata accessor for Logger();
        v40 = v32;
        __swift_project_value_buffer(v39, v32);

        v41 = a4;
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.default.getter();

        v109 = v43;
        if (os_log_type_enabled(v42, v43))
        {
          v97 = v42;
          v115 = a4;
          v110 = v37;
          v44 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          v96 = swift_slowAlloc();
          v127 = v96;
          *v44 = v108;
          LOBYTE(v126) = v36[35];
          v45 = String.init<A>(describing:)();
          v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, &v127);

          *(v44 + 4) = v47;
          *(v44 + 12) = 2080;
          v48 = v121;
          specialized NetworkActivity.token.getter(v121);
          v49 = v120;
          outlined init with copy of UUID?(v48, v120);
          v50 = v118;
          if (__swift_getEnumTagSinglePayload(v49, 1, v118) == 1)
          {
            v51 = 0;
            v52 = 0xE000000000000000;
          }

          else
          {
            v53 = v116;
            (*v105)(v116, v49, v50);
            (*v104)(v119, v53, v50);
            v54 = String.init<A>(describing:)();
            v52 = v55;
            v56 = v53;
            v51 = v54;
            (*v103)(v56, v50);
          }

          v20 = v114;
          v57 = 0xD00000000000001ALL;
          outlined destroy of ConnectionSnapshotReport?(v121, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
          v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, &v127);

          *(v44 + 14) = v58;
          *(v44 + 22) = 2080;
          v59 = v107;
          v60 = v115;
          switch(v106)
          {
            case 1:
              v61 = &v130;
              goto LABEL_26;
            case 2:
              v57 = 0xD00000000000001CLL;
              v61 = &v129;
              goto LABEL_26;
            case 3:
              v57 = 0xD00000000000001BLL;
              v61 = &v128;
              goto LABEL_26;
            case 4:
              v57 = 0xD000000000000019;
              v61 = &v127;
              goto LABEL_26;
            case 5:
              v57 = 0xD00000000000001CLL;
              v61 = &v126;
LABEL_26:
              v59 = *(v61 - 32);
              break;
            default:
              break;
          }

          v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v59 | 0x8000000000000000, &v127);

          *(v44 + 24) = v62;
          *(v44 + 32) = 2112;
          if (v60)
          {
            v63 = v60;
            v64 = _swift_stdlib_bridgeErrorToNSError();
            v65 = v64;
          }

          else
          {
            v64 = 0;
            v65 = 0;
          }

          v32 = static Logger.siriNetwork;
          v66 = v97;
          *(v44 + 34) = v64;
          v67 = v95;
          *v95 = v65;
          _os_log_impl(&dword_223515000, v66, v109, "NetworkActivity Tracing: Stopping network sub-activity %s %s with reason %s and error: %@", v44, 0x2Au);
          outlined destroy of ConnectionSnapshotReport?(v67, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          MEMORY[0x223DE38F0](v67, -1, -1);
          v68 = v96;
          swift_arrayDestroy();
          MEMORY[0x223DE38F0](v68, -1, -1);
          MEMORY[0x223DE38F0](v44, -1, -1);

          a5 = v110;
          a4 = v115;
        }

        else
        {

          v32 = v40;
          a5 = v37;
          v20 = v114;
        }

        v36[34] = 0;
        specialized NetworkActivity.stop(completionReason:error:)(v124, a4);
      }
    }

    while (1)
    {
      v34 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v34 >= v31)
      {

        v15 = v116;
        v28 = v117;
        v23 = v113;
        v13 = v119;
        v20 = v112;
        LOBYTE(a2) = v111;
        goto LABEL_33;
      }

      v23 = *&v15[8 * v34];
      ++v28;
      if (v23)
      {
        v28 = v34;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_58;
  }

LABEL_33:
  swift_beginAccess();
  v69 = specialized Dictionary.subscript.getter(a2, *(v28 + 16));
  if (v69)
  {
    v31 = v69;
    if (*(v69 + 34) != 1)
    {
LABEL_52:

      goto LABEL_53;
    }

    v119 = v13;
    if (one-time initialization token for siriNetwork == -1)
    {
LABEL_36:
      v70 = type metadata accessor for Logger();
      __swift_project_value_buffer(v70, static Logger.siriNetwork);
      v71 = a4;

      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v72, v73))
      {
        LODWORD(v121) = v73;
        v117 = v28;
        v115 = a4;
        v110 = a5;
        v74 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        v120 = swift_slowAlloc();
        v126 = v120;
        *v74 = 136315906;
        v125 = *(v31 + 35);
        v75 = String.init<A>(describing:)();
        v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v76, &v126);

        *(v74 + 4) = v77;
        *(v74 + 12) = 2080;
        specialized NetworkActivity.token.getter(v23);
        outlined init with copy of UUID?(v23, v20);
        v78 = v118;
        if (__swift_getEnumTagSinglePayload(v20, 1, v118) == 1)
        {
          v79 = 0;
          v80 = 0xE000000000000000;
        }

        else
        {
          v81 = v122;
          (*(v122 + 32))(v15, v20, v78);
          (*(v81 + 16))(v119, v15, v78);
          v79 = String.init<A>(describing:)();
          v80 = v82;
          (*(v81 + 8))(v15, v78);
        }

        v83 = 0xD00000000000001ALL;
        outlined destroy of ConnectionSnapshotReport?(v23, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
        v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v80, &v126);

        *(v74 + 14) = v84;
        *(v74 + 22) = 2080;
        v85 = "SiriNetworkActivityUnknown";
        a4 = v115;
        switch(v124)
        {
          case 1:
            v85 = "SiriNetworkActivitySucceeded";
            break;
          case 2:
            v86 = "SiriNetworkActivitySucceeded";
            goto LABEL_46;
          case 3:
            v85 = "SiriNetworkActivityFailed";
            v83 = 0xD00000000000001BLL;
            break;
          case 4:
            v85 = "SiriNetworkActivityCancelled";
            v83 = 0xD000000000000019;
            break;
          case 5:
            v86 = "SiriNetworkActivityCancelled";
LABEL_46:
            v85 = v86 - 32;
            v83 = 0xD00000000000001CLL;
            break;
          default:
            break;
        }

        v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v85 | 0x8000000000000000, &v126);

        *(v74 + 24) = v87;
        *(v74 + 32) = 2112;
        if (a4)
        {
          v88 = a4;
          v89 = _swift_stdlib_bridgeErrorToNSError();
          v90 = v89;
        }

        else
        {
          v89 = 0;
          v90 = 0;
        }

        a5 = v110;
        v91 = v121;
        v92 = v120;
        *(v74 + 34) = v89;
        v93 = v116;
        *v116 = v90;
        _os_log_impl(&dword_223515000, v72, v91, "NetworkActivity Tracing: Stopping network activity %s %s with reason %s and error: %@", v74, 0x2Au);
        outlined destroy of ConnectionSnapshotReport?(v93, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x223DE38F0](v93, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x223DE38F0](v92, -1, -1);
        MEMORY[0x223DE38F0](v74, -1, -1);
      }

      *(v31 + 34) = 0;
      specialized NetworkActivity.stop(completionReason:error:)(v124, a4);
      goto LABEL_52;
    }

LABEL_58:
    swift_once();
    goto LABEL_36;
  }

LABEL_53:
  if (a5)
  {
    a5(v69);
  }
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unsigned int a1)
{
  v3 = MEMORY[0x223DE2950](*(v1 + 40), a1, 4);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(int a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

double *PingInfo.init(pingAcknowledgedCount:avgPingTime:)(uint64_t a1, double a2)
{
  v2[3] = 0.0;
  *(v2 + 4) = Dictionary.init(dictionaryLiteral:)();
  *(v2 + 2) = a1;
  v2[3] = a2;
  return v2;
}

uint64_t NetworkActivityLabel.description.getter()
{
  result = 0x64696C61766E69;
  switch(*v0)
  {
    case 1:
      result = 0x7365757165526975;
      break;
    case 2:
      result = 0x6973734164616F6CLL;
      break;
    case 3:
      result = 0x7274536F69647561;
      break;
    case 4:
      result = 0x686365657073;
      break;
    case 5:
      result = 0x73746C75736572;
      break;
    case 6:
      result = 0x7972746572;
      break;
    case 7:
      result = 0xD000000000000016;
      break;
    case 8:
      v2 = 2003790950;
      goto LABEL_12;
    case 9:
      v2 = 1668184435;
LABEL_12:
      result = v2 | 0x6D6D6F4300000000;
      break;
    case 0xA:
      result = 1953718636;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t specialized NetworkActivity.stop(completionReason:error:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v47 = a1;
  v5 = type metadata accessor for NWActivity.CompletionReason();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v43 - v11;
  specialized NetworkActivity.moveTo(_:)(3u);
  swift_beginAccess();
  v13 = *(v2 + 24);

  v15 = specialized Set.isEmpty.getter(v14);

  if ((v15 & 1) != 0 || (v17 = *(v3 + 16)) == 0)
  {
LABEL_23:
    if (!a2 || (*&v48 = a2, v32 = a2, __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR), type metadata accessor for CTServiceDescriptor(0, &lazy cache variable for type metadata for NSError, 0x277CCA9B8), result = swift_dynamicCast(), !result))
    {
      if (!*(v3 + 16))
      {
        return result;
      }

      (*(v6 + 104))(v10, **(&unk_2784DD390 + v47), v5);

      NWActivity.complete(reason:)();

      v12 = v10;
      return (*(v6 + 8))(v12, v5);
    }

    v33 = v50;
    v34 = [v50 code];
    v35 = [v33 userInfo];
    v36 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v37 = *MEMORY[0x277CCA7E8];
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    specialized Dictionary.subscript.getter(v38, v39, v36, &v48);

    if (v49)
    {
      if (swift_dynamicCast())
      {
        v40 = v50;
        v41 = [v50 code];

LABEL_32:
        *v12 = v34;
        *(v12 + 1) = v41;
        (*(v6 + 104))(v12, *MEMORY[0x277CD8AB0], v5);
        if (*(v3 + 16))
        {
          v42 = *(v3 + 16);

          NWActivity.complete(reason:)();
        }

        return (*(v6 + 8))(v12, v5);
      }
    }

    else
    {
      outlined destroy of ConnectionSnapshotReport?(&v48, &_sypSgMd, &_sypSgMR);
    }

    v41 = -1;
    goto LABEL_32;
  }

  v45 = v6;
  v46 = v5;
  v18 = *(v3 + 24);
  v44 = v12;
  if ((v18 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for NWConnection();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type NWConnection and conformance NWConnection, MEMORY[0x277CD8E08]);
    result = Set.Iterator.init(_cocoa:)();
    v18 = v51;
    v19 = v52;
    v21 = v53;
    v20 = v54;
    v22 = v55;
  }

  else
  {
    v23 = -1 << *(v18 + 32);
    v19 = v18 + 56;
    v21 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v22 = v25 & *(v18 + 56);

    v20 = 0;
  }

  v43 = v21;
  v26 = (v21 + 64) >> 6;
  if (v18 < 0)
  {
    goto LABEL_12;
  }

  while (v22)
  {
    v27 = v20;
LABEL_19:
    v30 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v31 = *(*(v18 + 48) + ((v27 << 9) | (8 * v30)));

    while (1)
    {
      v49 = type metadata accessor for NWActivity();
      *&v48 = v17;

      NWConnection.endActivity(_:)(&v48);

      result = outlined destroy of ConnectionSnapshotReport?(&v48, &_sypSgMd, &_sypSgMR);
      if ((v18 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_12:
      v28 = __CocoaSet.Iterator.next()();
      if (!v28)
      {
        goto LABEL_22;
      }

      v50 = v28;
      type metadata accessor for NWConnection();
      swift_dynamicCast();
    }
  }

  v29 = v20;
  while (1)
  {
    v27 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v27 >= v26)
    {
LABEL_22:

      result = outlined consume of Set<MessageCenterUser>.Iterator._Variant();
      v6 = v45;
      v5 = v46;
      v12 = v44;
      goto LABEL_23;
    }

    v22 = *(v19 + 8 * v27);
    ++v29;
    if (v22)
    {
      v20 = v27;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in BackgroundConnection.setupReadHandlerOnProvider()(uint64_t a1, unint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6)
{
  if (one-time initialization token for readBufferEnd != -1)
  {
    swift_once();
  }

  siri_kdebug_trace(static Constants.Signposts.readBufferEnd);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = *(result + 1080);
    if (!v12 || v12 != a6)
    {
    }

    if (!a3 || (v13 = a3, __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR), (swift_dynamicCast() & 1) == 0))
    {
      if (a2 >> 60 == 15)
      {
        if (one-time initialization token for siriNetwork != -1)
        {
          swift_once();
        }

        v27 = type metadata accessor for Logger();
        __swift_project_value_buffer(v27, static Logger.siriNetwork);
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&dword_223515000, v28, v29, "Background Connection - Reader: Reader called but it did not returned data.", v30, 2u);
          MEMORY[0x223DE38F0](v30, -1, -1);
        }

        swift_allocObject();
        swift_beginAccess();
        swift_weakLoadStrong();
        swift_weakInit();

        v31 = a3;

        v32 = a3;

        specialized BackgroundConnection.fallbackToNextConnectionMethodWithError(_:with:)();
      }

      else
      {
        outlined copy of Data._Representation(a1, a2);
        if (one-time initialization token for siriNetwork != -1)
        {
          swift_once();
        }

        v33 = type metadata accessor for Logger();
        __swift_project_value_buffer(v33, static Logger.siriNetwork);
        outlined copy of Data._Representation(a1, a2);
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 134217984;
          v37 = v36;
          v38 = 0;
          switch(a2 >> 62)
          {
            case 1uLL:
              LODWORD(v38) = HIDWORD(a1) - a1;
              if (__OFSUB__(HIDWORD(a1), a1))
              {
                __break(1u);
LABEL_35:
                __break(1u);
                JUMPOUT(0x22352C210);
              }

              v38 = v38;
LABEL_30:
              *(v36 + 4) = v38;
              outlined consume of Data?(a1, a2);
              _os_log_impl(&dword_223515000, v34, v35, "Background Connection - Reader: Read %ld bytes", v37, 0xCu);
              MEMORY[0x223DE38F0](v37, -1, -1);
              break;
            case 2uLL:
              v40 = *(a1 + 16);
              v39 = *(a1 + 24);
              v41 = __OFSUB__(v39, v40);
              v38 = v39 - v40;
              if (!v41)
              {
                goto LABEL_30;
              }

              goto LABEL_35;
            case 3uLL:
              goto LABEL_30;
            default:
              v38 = BYTE6(a2);
              goto LABEL_30;
          }
        }

        else
        {
          outlined consume of Data?(a1, a2);
        }

        outlined copy of Data._Representation(a1, a2);
        BackgroundConnection.connectionHasBytesAvailable(_:)(a1, a2);
        v42 = outlined consume of Data?(a1, a2);
        if (a4)
        {
          BackgroundConnection.setupReadHandlerOnProvider()(v42);
        }

        outlined consume of Data?(a1, a2);
      }
    }

    v45 = v43[0];
    v46 = v43[1];
    v47 = v44;
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.siriNetwork);
    outlined init with copy of NetworkConnectionError(&v45, v43);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    outlined destroy of NetworkConnectionError(&v45);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
      swift_allocError();
      v19 = v47;
      v20 = v46;
      *v21 = v45;
      *(v21 + 16) = v20;
      *(v21 + 32) = v19;
      outlined init with copy of NetworkConnectionError(&v45, v43);
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v22;
      *v18 = v22;
      _os_log_impl(&dword_223515000, v15, v16, "Background Connection - Reader: Error. %@", v17, 0xCu);
      outlined destroy of NetworkConnectionProtocol?(v18, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x223DE38F0](v18, -1, -1);
      MEMORY[0x223DE38F0](v17, -1, -1);
    }

    lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
    v23 = swift_allocError();
    v24 = v47;
    v25 = v46;
    *v26 = v45;
    *(v26 + 16) = v25;
    *(v26 + 32) = v24;
    swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();
    outlined init with copy of NetworkConnectionError(&v45, v43);

    outlined init with copy of NetworkConnectionError(&v45, v43);

    outlined init with copy of NetworkConnectionError(&v45, v43);

    specialized BackgroundConnection.fallbackToNextConnectionMethodWithError(_:with:)();

    outlined destroy of NetworkConnectionError(&v45);

    return outlined destroy of NetworkConnectionError(&v45);
  }

  return result;
}

void CommunicationProtocolAce.bytesAvailable(_:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  OUTLINED_FUNCTION_25_2();
  swift_beginAccess();
  v6 = v2[41];
  OUTLINED_FUNCTION_31_2();
  if (!(!v9 & v8))
  {
    v10 = v2[40];
    *(v2 + 20) = xmmword_2235EF700;
    outlined consume of Data?(v10, v7);
    if (CommunicationProtocolAce.aceDelegate.getter())
    {
      BackgroundConnection.updateFirstByteReadTime()();
      swift_unknownObjectRelease();
    }
  }

  OUTLINED_FUNCTION_40_1();
  v11 = OUTLINED_FUNCTION_65_0();
  outlined init with copy of DataDecompressing?(v11, v12, v13, v14);
  if (!v194)
  {
    outlined destroy of NetworkConnectionProtocol?(v193, &_s11SiriNetwork17DataDecompressing_pSgMd, &_s11SiriNetwork17DataDecompressing_pSgMR);
LABEL_7:
    v19 = OUTLINED_FUNCTION_3_2();
    outlined copy of Data._Representation(v19, v20);
    goto LABEL_8;
  }

  outlined init with copy of RPCOspreyConnectionProtocol(v193, &v185);
  outlined destroy of NetworkConnectionProtocol?(v193, &_s11SiriNetwork17DataDecompressing_pSgMd, &_s11SiriNetwork17DataDecompressing_pSgMR);
  v15 = v189;
  __swift_project_boxed_opaque_existential_1(&v185, v188);
  v16 = *(v15 + 16);
  v17 = OUTLINED_FUNCTION_3_2();
  v49 = v18(v17);
  v51 = v50;
  __swift_destroy_boxed_opaque_existential_0(&v185);
  if (v51 >> 60 == 15)
  {
    goto LABEL_7;
  }

  a1 = v49;
  a2 = v51;
LABEL_8:
  OUTLINED_FUNCTION_25_2();
  swift_beginAccess();
  v21 = v3[6];
  if (v21 >> 60 == 15)
  {
    v22 = v3[5];
    v3[5] = a1;
    v3[6] = a2;
    v23 = OUTLINED_FUNCTION_3_2();
    outlined copy of Data._Representation(v23, v24);
    outlined consume of Data?(v22, v21);
  }

  else
  {
    v25 = CommunicationProtocolAce.bufferedInputData.modify();
    OUTLINED_FUNCTION_24_1(v25, v26);
    if (!(!v9 & v8))
    {
      OUTLINED_FUNCTION_3_2();
      Data.append(_:)();
    }

    (v25)(v193, 0);
  }

  v27 = v3[6];
  if (v27 >> 60 == 15)
  {
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v28, static Logger.siriNetwork);
    v29 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v30 = OUTLINED_FUNCTION_16_0();
    if (os_log_type_enabled(v30, v31))
    {
      OUTLINED_FUNCTION_17_5();
      v32 = swift_slowAlloc();
      OUTLINED_FUNCTION_40_2(v32);
      OUTLINED_FUNCTION_44_2();
      _os_log_impl(v33, v34, v35, v36, v37, v38);
      v39 = OUTLINED_FUNCTION_1_2();
      MEMORY[0x223DE38F0](v39);
    }

    v40 = OUTLINED_FUNCTION_3_2();
    outlined consume of Data._Representation(v40, v41);
  }

  else
  {
    v191 = v3[5];
    v192 = v27;
    outlined copy of Data._Representation(v191, v27);
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, static Logger.siriNetwork);
    v43 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    v44 = OUTLINED_FUNCTION_16_0();
    v46 = &qword_2235F0FF0[2];
    if (os_log_type_enabled(v44, v45))
    {
      OUTLINED_FUNCTION_6_5();
      v47 = swift_slowAlloc();
      *v47 = 134217984;
      OUTLINED_FUNCTION_40_1();
      v48 = 0;
      switch(v192 >> 62)
      {
        case 1uLL:
          LODWORD(v48) = HIDWORD(v191) - v191;
          if (__OFSUB__(HIDWORD(v191), v191))
          {
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
            JUMPOUT(0x22352CBE4);
          }

          v48 = v48;
LABEL_29:
          *(v47 + 4) = v48;
          OUTLINED_FUNCTION_74_0();
          _os_log_impl(v55, v56, v57, v58, v59, 0xCu);
          v60 = OUTLINED_FUNCTION_4_0();
          MEMORY[0x223DE38F0](v60);
          break;
        case 2uLL:
          v53 = *(v191 + 16);
          v52 = *(v191 + 24);
          v54 = __OFSUB__(v52, v53);
          v48 = v52 - v53;
          if (!v54)
          {
            goto LABEL_29;
          }

          goto LABEL_65;
        case 3uLL:
          goto LABEL_29;
        default:
          v48 = BYTE6(v192);
          goto LABEL_29;
      }
    }

    if (v3[13])
    {
      OUTLINED_FUNCTION_62_0(v61, v62, v63, v64, v65, v66, v67, v68, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191);
      OUTLINED_FUNCTION_27_1();
      swift_beginAccess();
      CommunicationProtocolAce.consumeHttpHeader(withData:)();
      swift_endAccess();
      v69 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      v70 = OUTLINED_FUNCTION_16_0();
      if (os_log_type_enabled(v70, v71))
      {
        OUTLINED_FUNCTION_6_5();
        v72 = swift_slowAlloc();
        OUTLINED_FUNCTION_63_2(v72, 3.852e-34);
        OUTLINED_FUNCTION_34_2();
        _os_log_impl(v73, v74, v75, v76, v77, 0xCu);
        v78 = OUTLINED_FUNCTION_5_14();
        MEMORY[0x223DE38F0](v78);
      }
    }

    v79 = OUTLINED_FUNCTION_65_0();
    outlined init with copy of DataDecompressing?(v79, v80, &_s11SiriNetwork17DataDecompressing_pSgMd, &_s11SiriNetwork17DataDecompressing_pSgMR);
    v81 = v194;
    v82 = outlined destroy of NetworkConnectionProtocol?(v193, &_s11SiriNetwork17DataDecompressing_pSgMd, &_s11SiriNetwork17DataDecompressing_pSgMR);
    if (!v81)
    {
      OUTLINED_FUNCTION_62_0(v82, v83, v84, v85, v86, v87, v88, v89, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191);
      OUTLINED_FUNCTION_27_1();
      swift_beginAccess();
      CommunicationProtocolAce.consumeAceHeader(withData:)(&v191);
      swift_endAccess();
      v123 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      v124 = OUTLINED_FUNCTION_16_0();
      if (os_log_type_enabled(v124, v125))
      {
        OUTLINED_FUNCTION_6_5();
        v127 = swift_slowAlloc();
        OUTLINED_FUNCTION_63_2(v127, 3.852e-34);
        OUTLINED_FUNCTION_34_2();
        _os_log_impl(v128, v129, v130, v131, v132, 0xCu);
        v133 = OUTLINED_FUNCTION_5_14();
        MEMORY[0x223DE38F0](v133);
      }

      v134 = OUTLINED_FUNCTION_65_0();
      outlined init with copy of DataDecompressing?(v134, v135, v136, v137);
      if (v194)
      {
        outlined init with copy of RPCOspreyConnectionProtocol(v193, &v185);
        outlined destroy of NetworkConnectionProtocol?(v193, &_s11SiriNetwork17DataDecompressing_pSgMd, &_s11SiriNetwork17DataDecompressing_pSgMR);
        v138 = v189;
        v179 = v189;
        v139 = __swift_project_boxed_opaque_existential_1(&v185, v188);
        v180 = *(v138 + 16);
        v181 = v139;
        v140 = OUTLINED_FUNCTION_50_1();
        outlined copy of Data._Representation(v140, v141);
        v142 = OUTLINED_FUNCTION_50_1();
        v143 = v180(v142);
        v145 = v144;
        v146 = OUTLINED_FUNCTION_50_1();
        outlined consume of Data._Representation(v146, v147);
        __swift_destroy_boxed_opaque_existential_0(&v185);
        if (v145 >> 60 != 15)
        {
          v148 = Logger.logObject.getter();
          static os_log_type_t.default.getter();
          v149 = OUTLINED_FUNCTION_16_0();
          if (os_log_type_enabled(v149, v150))
          {
            OUTLINED_FUNCTION_6_5();
            v151 = swift_slowAlloc();
            *v151 = 134217984;
            v154 = 0;
            switch(v192 >> 62)
            {
              case 1uLL:
                LODWORD(v154) = HIDWORD(v191) - v191;
                if (__OFSUB__(HIDWORD(v191), v191))
                {
                  goto LABEL_66;
                }

                v154 = v154;
LABEL_53:
                *(v151 + 4) = v154;
                OUTLINED_FUNCTION_80_0(&dword_223515000, v152, v153, "CommunicationProtocol - Ace bytes available: Still have %ld after Ace Header, decompressing");
                OUTLINED_FUNCTION_2_2();
                MEMORY[0x223DE38F0]();
                break;
              case 2uLL:
                v156 = *(v191 + 16);
                v155 = *(v191 + 24);
                v54 = __OFSUB__(v155, v156);
                v154 = v155 - v156;
                if (!v54)
                {
                  goto LABEL_53;
                }

                goto LABEL_67;
              case 3uLL:
                goto LABEL_53;
              default:
                v154 = BYTE6(v192);
                goto LABEL_53;
            }
          }

          v157 = v191;
          v158 = v192;
          v191 = v143;
          v192 = v145;
          v159 = OUTLINED_FUNCTION_26();
          outlined copy of Data._Representation(v159, v160);
          outlined consume of Data._Representation(v157, v158);
          v161 = OUTLINED_FUNCTION_26();
          outlined copy of Data._Representation(v161, v162);
          v163 = Logger.logObject.getter();
          static os_log_type_t.default.getter();
          v164 = OUTLINED_FUNCTION_16_0();
          if (os_log_type_enabled(v164, v165))
          {
            OUTLINED_FUNCTION_6_5();
            v166 = swift_slowAlloc();
            *v166 = 134217984;
            v167 = 0;
            switch(v145 >> 62)
            {
              case 1uLL:
                LODWORD(v167) = HIDWORD(v143) - v143;
                if (__OFSUB__(HIDWORD(v143), v143))
                {
                  goto LABEL_68;
                }

                v167 = v167;
LABEL_61:
                *(v166 + 4) = v167;
                v172 = OUTLINED_FUNCTION_26();
                outlined consume of Data?(v172, v173);
                OUTLINED_FUNCTION_80_0(&dword_223515000, v174, v175, "CommunicationProtocol - Ace bytes available: Decompressed %ld bytes");
                OUTLINED_FUNCTION_2_2();
                MEMORY[0x223DE38F0]();
                break;
              case 2uLL:
                v171 = *(v143 + 16);
                v170 = *(v143 + 24);
                v54 = __OFSUB__(v170, v171);
                v167 = v170 - v171;
                if (!v54)
                {
                  goto LABEL_61;
                }

                goto LABEL_69;
              case 3uLL:
                goto LABEL_61;
              default:
                v167 = BYTE6(v145);
                goto LABEL_61;
            }
          }

          else
          {
            v168 = OUTLINED_FUNCTION_26();
            outlined consume of Data?(v168, v169);
          }

          v176 = OUTLINED_FUNCTION_26();
          outlined consume of Data?(v176, v177);
        }

        v46 = qword_2235F0FF0 + 16;
      }

      else
      {
        outlined destroy of NetworkConnectionProtocol?(v193, &_s11SiriNetwork17DataDecompressing_pSgMd, &_s11SiriNetwork17DataDecompressing_pSgMR);
      }
    }

    v90 = OUTLINED_FUNCTION_65_0();
    outlined init with copy of DataDecompressing?(v90, v91, v92, v93);
    if (v194)
    {
      v94 = outlined destroy of NetworkConnectionProtocol?(v193, &_s11SiriNetwork17DataDecompressing_pSgMd, &_s11SiriNetwork17DataDecompressing_pSgMR);
      OUTLINED_FUNCTION_62_0(v94, v95, v96, v97, v98, v99, v100, v101, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191);
      OUTLINED_FUNCTION_27_1();
      swift_beginAccess();
      CommunicationProtocolAce.consumeAceData(withData:)(&v191);
      swift_endAccess();
      v102 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      v103 = OUTLINED_FUNCTION_16_0();
      if (os_log_type_enabled(v103, v104))
      {
        OUTLINED_FUNCTION_6_5();
        v105 = swift_slowAlloc();
        OUTLINED_FUNCTION_63_2(v105, COERCE_FLOAT(v46[396]));
        OUTLINED_FUNCTION_18_5();
        _os_log_impl(v106, v107, v108, v109, v110, v111);
        v112 = OUTLINED_FUNCTION_2_0();
        MEMORY[0x223DE38F0](v112);
      }

      v113 = OUTLINED_FUNCTION_3_2();
      outlined consume of Data._Representation(v113, v114);
    }

    else
    {
      v115 = OUTLINED_FUNCTION_3_2();
      outlined consume of Data._Representation(v115, v116);
      outlined destroy of NetworkConnectionProtocol?(v193, &_s11SiriNetwork17DataDecompressing_pSgMd, &_s11SiriNetwork17DataDecompressing_pSgMR);
    }

    OUTLINED_FUNCTION_40_1();
    v117 = v191;
    v118 = v192;
    v119 = v3[5];
    v120 = v3[6];
    v3[5] = v191;
    v3[6] = v118;
    outlined copy of Data._Representation(v117, v118);
    v121 = OUTLINED_FUNCTION_14_3();
    outlined consume of Data?(v121, v122);
    outlined consume of Data._Representation(v191, v192);
  }
}

uint64_t closure #1 in ZlibDataDecompressor.decompressedDataForData(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, _OWORD *a5@<X8>)
{
  v6 = v5;
  v35 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    swift_beginAccess();
    *(a2 + 16) = a1;
  }

  v12 = MEMORY[0x223DE13E0](a3, a4);
  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  LODWORD(a4) = v12;
  if (HIDWORD(v12))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    swift_once();
    goto LABEL_20;
  }

  swift_beginAccess();
  *(a2 + 24) = a4;
  v34 = xmmword_2235EF6F0;
  v13 = *(a2 + 128);
  while (1)
  {
    swift_beginAccess();
    *(a2 + 40) = v13;
    *(a2 + 48) = 0x2000;
    LODWORD(a4) = inflate((a2 + 16), 2);
    swift_endAccess();
    if (a4 > 1)
    {
      break;
    }

    v14 = *(a2 + 48);
    if (v14 == 0x2000)
    {
      v15 = 0;
      v16 = 0xC000000000000000;
    }

    else
    {
      v17 = 0x2000 - v14;
      if (v14 >> 1 >= 0xFF9)
      {
        memset(__dst, 0, sizeof(__dst));
        v33 = -v14;
        memcpy(__dst, v13, v17);
        v15 = *__dst;
        v6 = v6 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v33 << 16)) << 32);
        v16 = v6;
      }

      else
      {
        v18 = type metadata accessor for __DataStorage();
        v19 = *(v18 + 48);
        v20 = *(v18 + 52);
        swift_allocObject();
        v15 = v17 << 32;
        v16 = __DataStorage.init(bytes:length:)() | 0x4000000000000000;
      }
    }

    if (*(&v34 + 1) >> 60 != 15)
    {
      Data.append(_:)();
    }

    outlined consume of Data._Representation(v15, v16);
    if (a4 || *(a2 + 48) || !*(a2 + 24))
    {
      v21 = v34;
      *a5 = v34;
      outlined copy of Data?(v21, *(&v21 + 1));
      result = outlined consume of Data?(v21, *(&v21 + 1));
      goto LABEL_24;
    }
  }

  result = *(a2 + 64);
  if (!result)
  {
    __break(1u);
    return result;
  }

  a5 = String.init(cString:)();
  v6 = v23;
  if (one-time initialization token for siriNetwork != -1)
  {
    goto LABEL_27;
  }

LABEL_20:
  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Logger.siriNetwork);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *__dst = v28;
    *v27 = 67109378;
    *(v27 + 4) = a4;
    *(v27 + 8) = 2080;
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a5, v6, __dst);

    *(v27 + 10) = v29;
    _os_log_impl(&dword_223515000, v25, v26, "DataCompressor - Compression: Inflate finished with unexpected status %d %s", v27, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x223DE38F0](v28, -1, -1);
    MEMORY[0x223DE38F0](v27, -1, -1);
  }

  else
  {
  }

  outlined consume of Data?(v34, *(&v34 + 1));
  v34 = xmmword_2235EF700;
  lazy protocol witness table accessor for type DataCompressorError and conformance DataCompressorError();
  swift_allocError();
  *v30 = a4;
  swift_willThrow();
  result = outlined consume of Data?(v34, *(&v34 + 1));
LABEL_24:
  v31 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t (*CommunicationProtocolAce.bufferedInputData.modify())()
{
  OUTLINED_FUNCTION_27_1();
  swift_beginAccess();
  return RPCOspreyConnectionProvider.connectionMetrics.modify;
}

void closure #1 in NetworkConnectionProvider.readData(_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, unint64_t, void *, uint64_t))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v34 - v13;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + 2099))
    {
      if (one-time initialization token for siriNetwork != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      __swift_project_value_buffer(v16, static Logger.siriNetwork);

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v34 = v20;
        *v19 = 136315138;
        v21 = NetworkConnectionProvider.connectionIdentifier.getter();
        v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v34);

        *(v19 + 4) = v23;
        _os_log_impl(&dword_223515000, v17, v18, "Provider - NetworkConnectionProvider [%s]: Reader got data, but connection was cancelled", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v20);
        MEMORY[0x223DE38F0](v20, -1, -1);
        MEMORY[0x223DE38F0](v19, -1, -1);
      }
    }

    else
    {
      v24 = *(Strong + 2080);
      v25 = __CFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
      }

      else
      {
        *(Strong + 2080) = v26;
        if (a2 >> 60 == 15 || (v27 = type metadata accessor for NWError(), v28 = 1, __swift_getEnumTagSinglePayload(a5, 1, v27) != 1))
        {
          outlined init with copy of NetworkConnectionProtocol?(a5, v14, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
          v30 = type metadata accessor for NWError();
          if (__swift_getEnumTagSinglePayload(v14, 1, v30) == 1)
          {
            outlined destroy of NetworkConnectionProtocol?(v14, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
            lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
            v29 = swift_allocError();
            *(v31 + 16) = 0;
            *v31 = 0;
          }

          else
          {
            lazy protocol witness table accessor for type NetworkConnectionProvider and conformance NetworkConnectionProvider(&lazy protocol witness table cache variable for type NWError and conformance NWError, 255, MEMORY[0x277CD8FC0]);
            v32 = swift_allocError();
            (*(*(v30 - 8) + 32))(v33, v14, v30);
            lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
            v29 = swift_allocError();
            *(v31 + 16) = 0;
            *v31 = v32;
          }

          *(v31 + 8) = 0;
          v28 = 0;
          *(v31 + 24) = xmmword_2235F0AB0;
        }

        else
        {
          v29 = 0;
        }

        a7(a1, a2, v29, v28);
      }
    }
  }
}

void BackgroundConnection.connectionHasBytesAvailable(_:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
LABEL_8:
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v7, static Logger.siriNetwork);
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = OUTLINED_FUNCTION_14();
      *v9 = 0;
      _os_log_impl(&dword_223515000, oslog, v8, "Background Connection - Reader: Connection does not have bytes available", v9, 2u);
      OUTLINED_FUNCTION_2_2();
      MEMORY[0x223DE38F0]();
    }
  }

  else
  {
    switch(a2 >> 62)
    {
      case 1uLL:
        v5 = a1;
        v6 = a1 >> 32;
        goto LABEL_7;
      case 2uLL:
        v5 = *(a1 + 16);
        v6 = *(a1 + 24);
LABEL_7:
        if (v5 == v6)
        {
          goto LABEL_8;
        }

        v10 = OUTLINED_FUNCTION_32();
        outlined copy of Data?(v10, v11);
        goto LABEL_16;
      case 3uLL:
        goto LABEL_4;
      default:
        if ((a2 & 0xFF000000000000) == 0)
        {
LABEL_4:
          v3 = OUTLINED_FUNCTION_32();
          outlined consume of Data?(v3, v4);
          goto LABEL_8;
        }

LABEL_16:
        OUTLINED_FUNCTION_36_5();
        v12 = outlined init with copy of MessageCenterBrowserProtocol?(v2 + 1096, v23, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
        if (v24)
        {
          OUTLINED_FUNCTION_101_1(v12);
          outlined destroy of NetworkConnectionProtocol?(v23, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
          OUTLINED_FUNCTION_143(v22);
          v14 = *(v13 + 176);
          v15 = OUTLINED_FUNCTION_32();
          v16(v15);
          v17 = OUTLINED_FUNCTION_32();
          outlined consume of Data?(v17, v18);
          __swift_destroy_boxed_opaque_existential_0(v22);
        }

        else
        {
          v19 = OUTLINED_FUNCTION_32();
          outlined consume of Data?(v19, v20);
          outlined destroy of NetworkConnectionProtocol?(v23, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
        }

        break;
    }
  }
}

__n128 OUTLINED_FUNCTION_60_3@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 48) + 40 * v1;
  result = *v2;
  v4 = *(v2 + 16);
  return result;
}

uint64_t ZlibDataDecompressor.decompressedDataForData(_:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    return 0;
  }

  switch(a2 >> 62)
  {
    case 1uLL:
      v8 = a1;
      v9 = a1 >> 32;
      goto LABEL_7;
    case 2uLL:
      v8 = *(a1 + 16);
      v9 = *(a1 + 24);
LABEL_7:
      if (v8 == v9)
      {
        return 0;
      }

      v11 = OUTLINED_FUNCTION_0();
      outlined copy of Data?(v11, v12);
      goto LABEL_11;
    case 3uLL:
      goto LABEL_4;
    default:
      if ((a2 & 0xFF000000000000) == 0)
      {
LABEL_4:
        v6 = OUTLINED_FUNCTION_0();
        outlined consume of Data?(v6, v7);
        return 0;
      }

LABEL_11:
      v13 = OUTLINED_FUNCTION_0();
      outlined copy of Data?(v13, v14);

      v15 = OUTLINED_FUNCTION_0();
      specialized Data.withUnsafeBytes<A>(_:)(v15, v16, v2, a1, a2, v17);
      v18 = OUTLINED_FUNCTION_0();
      result = outlined consume of Data?(v18, v19);
      if (!v3)
      {
        result = v20;
      }

      break;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_58_1(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_58_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_58_3()
{

  return swift_slowAlloc();
}

uint64_t CommunicationProtocolAce.consumeAceData(withData:)(uint64_t *a1)
{
  v83 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = a1[1];
  v7 = v1;
  v8 = 0;
  switch(v6 >> 62)
  {
    case 1uLL:
      v9 = __OFSUB__(HIDWORD(v5), v5);
      v10 = HIDWORD(v5) - v5;
      if (v9)
      {
        goto LABEL_60;
      }

      v2 = v10;
LABEL_6:
      if (v2 < 1)
      {
        goto LABEL_53;
      }

      v8 = 0;
      break;
    case 2uLL:
      v13 = v5 + 16;
      v11 = *(v5 + 16);
      v12 = *(v13 + 8);
      v2 = v12 - v11;
      if (!__OFSUB__(v12, v11))
      {
        goto LABEL_6;
      }

      goto LABEL_61;
    case 3uLL:
      goto LABEL_54;
    default:
      v2 = BYTE6(v6);
      goto LABEL_6;
  }

  while (2)
  {
    v14 = *a1;
    v3 = a1[1];
    v70 = v2;
    v71 = v8;
    switch(v3 >> 62)
    {
      case 1uLL:
        v21 = v14 >> 32;
        if (v14 >> 32 < v14)
        {
          goto LABEL_56;
        }

        v8 = v14;
        v18 = __DataStorage._bytes.getter();
        if (v18)
        {
          v22 = __DataStorage._offset.getter();
          if (__OFSUB__(v8, v22))
          {
            goto LABEL_59;
          }

          v18 += v8 - v22;
        }

        v20 = v21 - v8;
        goto LABEL_22;
      case 2uLL:
        v17 = *(v14 + 16);
        v8 = *(v14 + 24);
        v18 = __DataStorage._bytes.getter();
        if (!v18)
        {
          goto LABEL_13;
        }

        v19 = __DataStorage._offset.getter();
        if (__OFSUB__(v17, v19))
        {
          goto LABEL_58;
        }

        v18 += v17 - v19;
LABEL_13:
        v9 = __OFSUB__(v8, v17);
        v20 = v8 - v17;
        if (v9)
        {
          goto LABEL_57;
        }

LABEL_22:
        v23 = MEMORY[0x223DE1260]();
        if (v23 >= v20)
        {
          v24 = v20;
        }

        else
        {
          v24 = v23;
        }

        v25 = (v24 + v18);
        if (v18)
        {
          v15 = v25;
        }

        else
        {
          v15 = 0;
        }

        v16 = v18;
LABEL_29:
        closure #1 in static AceSerialization.parsePacket(data:)(v16, v15, &v75);
        v2 = v7;
        if (!v7)
        {
          v26 = v78;
          v27 = v79;
          v28 = v80;
          v81[0] = v75;
          v81[1] = v76;
          v82 = v77;
          v4 = a1;
          v29 = *a1;
          v30 = a1[1];
          v31 = OUTLINED_FUNCTION_50_1();
          outlined copy of Data._Representation(v31, v32);
          v33 = OUTLINED_FUNCTION_50_1();
          outlined consume of Data._Representation(v33, v34);
          v3 = Data.advanced(by:)();
          v36 = v35;
          v37 = OUTLINED_FUNCTION_50_1();
          outlined consume of Data._Representation(v37, v38);
          *a1 = v3;
          a1[1] = v36;
          v8 = v71 + v28;
          if (__OFADD__(v71, v28))
          {
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
LABEL_62:
            OUTLINED_FUNCTION_0_8();
            swift_once();
LABEL_43:
            v41 = type metadata accessor for Logger();
            OUTLINED_FUNCTION_58(v41, static Logger.siriNetwork);
            v42 = OUTLINED_FUNCTION_53();
            outlined copy of AceSerializationError(v42, v43, v8);
            v44 = Logger.logObject.getter();
            v45 = static os_log_type_t.error.getter();
            v46 = OUTLINED_FUNCTION_53();
            outlined consume of AceSerializationError(v46, v47, v8);
            if (os_log_type_enabled(v44, v45))
            {
              OUTLINED_FUNCTION_6_5();
              v48 = swift_slowAlloc();
              OUTLINED_FUNCTION_28_3();
              v49 = swift_slowAlloc();
              *v48 = 138412290;
              lazy protocol witness table accessor for type AceSerializationError and conformance AceSerializationError();
              OUTLINED_FUNCTION_10_0();
              swift_allocError();
              *v50 = v4;
              *(v50 + 8) = v3;
              *(v50 + 16) = v8;
              v51 = OUTLINED_FUNCTION_53();
              outlined copy of AceSerializationError(v51, v52, v8);
              v53 = _swift_stdlib_bridgeErrorToNSError();
              *(v48 + 4) = v53;
              *v49 = v53;
              _os_log_impl(&dword_223515000, v44, v45, "CommunicationProtocol - Ace Data: Error reading Ace data %@", v48, 0xCu);
              outlined destroy of NetworkConnectionProtocol?(v49, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
              v54 = OUTLINED_FUNCTION_5_14();
              MEMORY[0x223DE38F0](v54);
              v55 = OUTLINED_FUNCTION_4_0();
              MEMORY[0x223DE38F0](v55);
            }

            lazy protocol witness table accessor for type AceSerializationError and conformance AceSerializationError();
            OUTLINED_FUNCTION_10_0();
            swift_allocError();
            *v56 = v4;
            *(v56 + 8) = v3;
            *(v56 + 16) = v8;
            swift_willThrow();

            goto LABEL_54;
          }

          v7 = 0;
          if (v28 <= 0)
          {
            outlined destroy of NetworkConnectionProtocol?(v81, &_s11SiriNetwork13SessionObject_pSgMd, &_s11SiriNetwork13SessionObject_pSgMR);
            goto LABEL_54;
          }

          v2 = v70 - v28;
          if (v70 >= v28)
          {
            v39 = v70 - v28;
          }

          else
          {
            v39 = 0;
          }

          v4 = &_s11SiriNetwork13SessionObject_pSgMd;
          outlined init with copy of DataDecompressing?(v81, &v73, &_s11SiriNetwork13SessionObject_pSgMd, &_s11SiriNetwork13SessionObject_pSgMR);
          if (v74)
          {
            outlined init with take of RPCOspreyConnectionProtocol(&v73, &v75);
            outlined init with copy of RPCOspreyConnectionProtocol(&v75, &v73);
            CommunicationProtocolAce.handleAceObject(_:)(&v73);
            outlined destroy of NetworkConnectionProtocol?(&v73, &_s11SiriNetwork13SessionObject_pSgMd, &_s11SiriNetwork13SessionObject_pSgMR);
            __swift_destroy_boxed_opaque_existential_0(&v75);
          }

          else
          {
            outlined destroy of NetworkConnectionProtocol?(&v73, &_s11SiriNetwork13SessionObject_pSgMd, &_s11SiriNetwork13SessionObject_pSgMR);
            CommunicationProtocolAce.handlePacket(_:)(v26 | (v27 << 32));
          }

          outlined destroy of NetworkConnectionProtocol?(v81, &_s11SiriNetwork13SessionObject_pSgMd, &_s11SiriNetwork13SessionObject_pSgMR);
          if (v39 <= 0)
          {
            goto LABEL_54;
          }

          continue;
        }

        *&v81[0] = v7;
        v40 = v7;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        if (swift_dynamicCast())
        {
          v3 = *(&v75 + 1);
          v4 = v75;
          v8 = v76;
          if (v76)
          {
            if (one-time initialization token for siriNetwork == -1)
            {
              goto LABEL_43;
            }

            goto LABEL_62;
          }

          if (one-time initialization token for siriNetwork != -1)
          {
            OUTLINED_FUNCTION_0_8();
            swift_once();
          }

          v57 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_58(v57, static Logger.siriNetwork);
          v58 = Logger.logObject.getter();
          v59 = static os_log_type_t.default.getter();
          v60 = OUTLINED_FUNCTION_16_0();
          if (os_log_type_enabled(v60, v61))
          {
            OUTLINED_FUNCTION_6_5();
            v62 = swift_slowAlloc();
            OUTLINED_FUNCTION_28_3();
            v63 = swift_slowAlloc();
            *v62 = 138412290;
            lazy protocol witness table accessor for type AceSerializationError and conformance AceSerializationError();
            OUTLINED_FUNCTION_10_0();
            swift_allocError();
            *v64 = v4;
            *(v64 + 8) = v3;
            *(v64 + 16) = 0;
            v65 = _swift_stdlib_bridgeErrorToNSError();
            *(v62 + 4) = v65;
            *v63 = v65;
            _os_log_impl(&dword_223515000, v58, v59, "CommunicationProtocol - Ace Data: Need more data to read Ace object %@", v62, 0xCu);
            outlined destroy of NetworkConnectionProtocol?(v63, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            v66 = OUTLINED_FUNCTION_5_14();
            MEMORY[0x223DE38F0](v66);
            v67 = OUTLINED_FUNCTION_7_2();
            MEMORY[0x223DE38F0](v67);
          }
        }

        else
        {
        }

LABEL_53:
        v8 = 0;
LABEL_54:
        v68 = *MEMORY[0x277D85DE8];
        return v8;
      case 3uLL:
        *(&v73 + 6) = 0;
        *&v73 = 0;
        v16 = &v73;
        v15 = &v73;
        goto LABEL_29;
      default:
        *&v73 = *a1;
        WORD4(v73) = v3;
        BYTE10(v73) = BYTE2(v3);
        BYTE11(v73) = BYTE3(v3);
        BYTE12(v73) = BYTE4(v3);
        BYTE13(v73) = BYTE5(v3);
        v15 = (&v73 + BYTE6(v3));
        v16 = &v73;
        goto LABEL_29;
    }
  }
}

uint64_t closure #1 in static AceSerialization.parsePacket(data:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  if (!a1)
  {
    lazy protocol witness table accessor for type AceSerializationError and conformance AceSerializationError();
    OUTLINED_FUNCTION_60();
    *v7 = xmmword_2235EF700;
    v8 = 1;
LABEL_6:
    *(v7 + 16) = v8;
LABEL_7:
    swift_willThrow();
    return outlined destroy of SessionObject?(&v40);
  }

  v4 = a2 - a1;
  v5 = a2 - a1 - 5;
  if (a2 - a1 < 5)
  {
    lazy protocol witness table accessor for type AceSerializationError and conformance AceSerializationError();
    OUTLINED_FUNCTION_60();
    *v6 = 5;
    *(v6 + 8) = v4;
LABEL_4:
    *(v6 + 16) = 0;
    goto LABEL_7;
  }

  v11 = AceDataType.init(rawValue:)(*a1);
  v12 = 0;
  switch(v11)
  {
    case 2u:
    case 3u:
      goto LABEL_16;
    case 6u:
      v12 = 1;
LABEL_16:
      if (one-time initialization token for ntohl != -1)
      {
        OUTLINED_FUNCTION_2_23();
      }

      v16 = static Endian.ntohl(*(a1 + 1));
      if (v5 < v16)
      {
        lazy protocol witness table accessor for type AceSerializationError and conformance AceSerializationError();
        OUTLINED_FUNCTION_60();
        *v6 = v16;
        *(v6 + 8) = v5;
        goto LABEL_4;
      }

      v17 = (a1 + 5);
      if (v12)
      {
        v18 = static AceSerialization.parseSpeechPacket(withBytes:length:)(v17, v16);
        if (!v18)
        {
          v31 = MEMORY[0x223DE13C0](a1 + 5, v16);
          v33 = v32;
          lazy protocol witness table accessor for type AceSerializationError and conformance AceSerializationError();
          OUTLINED_FUNCTION_60();
          *v7 = v31;
          *(v7 + 8) = v33;
          v8 = 2;
          goto LABEL_6;
        }

        v19 = v18;
        v20 = type metadata accessor for SpeechPacket();
        outlined destroy of SessionObject?(&v40);
        v13 = 0;
        result = 0;
        *&v40 = v19;
        *(&v41 + 1) = v20;
        v21 = &protocol witness table for SpeechPacket;
      }

      else
      {
        MEMORY[0x223DE13C0](v17, v16);
        v22 = type metadata accessor for AceObject();
        v23 = OUTLINED_FUNCTION_26();
        outlined copy of Data._Representation(v23, v24);
        v25 = OUTLINED_FUNCTION_26();
        v27 = @nonobjc AceObject.__allocating_init(plistData:)(v25, v26);
        if (!v27)
        {
          v34 = MEMORY[0x223DE13C0](a1 + 5, v16);
          v36 = v35;
          lazy protocol witness table accessor for type AceSerializationError and conformance AceSerializationError();
          OUTLINED_FUNCTION_60();
          *v37 = v34;
          v37[1] = v36;
          OUTLINED_FUNCTION_5_19(v37, 1);
          v38 = OUTLINED_FUNCTION_26();
          outlined consume of Data._Representation(v38, v39);
          return outlined destroy of SessionObject?(&v40);
        }

        v28 = v27;
        v29 = OUTLINED_FUNCTION_26();
        outlined consume of Data._Representation(v29, v30);
        outlined destroy of SessionObject?(&v40);
        v13 = 0;
        result = 0;
        *&v40 = v28;
        *(&v41 + 1) = v22;
        v21 = &protocol witness table for AceObject;
      }

      v42 = v21;
      v14 = v16 + 5;
LABEL_13:
      v15 = v41;
      *a3 = v40;
      *(a3 + 16) = v15;
      *(a3 + 32) = v42;
      *(a3 + 40) = v13;
      *(a3 + 44) = result;
      *(a3 + 48) = v14;
      break;
    case 7u:
      lazy protocol witness table accessor for type AceSerializationError and conformance AceSerializationError();
      OUTLINED_FUNCTION_60();
      *v7 = 0;
      *(v7 + 8) = 0;
      v8 = 3;
      goto LABEL_6;
    default:
      v13 = static AceSerialization.rawPacketType(fromDataType:)(v11);
      if (one-time initialization token for ntohl != -1)
      {
        OUTLINED_FUNCTION_2_23();
      }

      result = static Endian.ntohl(*(a1 + 1));
      v14 = 5;
      goto LABEL_13;
  }

  return result;
}

uint64_t static AceSerialization.rawPacketType(fromDataType:)(unsigned __int8 a1)
{
  if (a1 >= 6u)
  {
    return 0;
  }

  else
  {
    return (0x30200000104uLL >> (8 * a1));
  }
}

uint64_t AceDataType.init(rawValue:)(char a1)
{
  if ((a1 + 1) > 8u)
  {
    return 7;
  }

  else
  {
    return byte_2235F3AB2[(a1 + 1)];
  }
}

void CommunicationProtocolAce.handlePacket(_:)(unint64_t a1)
{
  v1 = a1;
  v2 = HIDWORD(a1);
  switch(v1)
  {
    case 1:
      CommunicationProtocolAce.handleAceNop()();
      break;
    case 2:

      CommunicationProtocolAce.handleAcePing(_:)(v2);
      break;
    case 3:

      CommunicationProtocolAce.handleAcePong(_:)(v2);
      break;
    case 4:

      CommunicationProtocolAce.handleAceEnd()();
      break;
    default:
      return;
  }
}

void CommunicationProtocolAce.handleAcePong(_:)(Swift::UInt32 a1)
{
  v2 = v1;
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_58(v4, static Logger.siriNetwork);
  v5 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  v6 = OUTLINED_FUNCTION_16_0();
  if (os_log_type_enabled(v6, v7))
  {
    OUTLINED_FUNCTION_28_3();
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    v8[1] = a1;
    OUTLINED_FUNCTION_6_0();
    _os_log_impl(v9, v10, v11, v12, v13, 8u);
    v14 = OUTLINED_FUNCTION_1_2();
    MEMORY[0x223DE38F0](v14);
  }

  if (a1 <= 0xFFFE795F)
  {
    if (*(v2 + 240))
    {
      v15 = *(v2 + 240);

      PingInfo.markPongReceived(withIndex:)(a1);
    }
  }

  else
  {

    CommunicationProtocolAce.handleBarrierReply(barrierValue:)(a1);
  }
}

Swift::Void __swiftcall PingInfo.markPongReceived(withIndex:)(Swift::UInt32 withIndex)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 32);
  if (*(v4 + 16))
  {
    v5 = specialized __RawDictionaryStorage.find<A>(_:)(withIndex);
    if (v6)
    {
      v7 = *(*(v4 + 56) + 8 * v5);
      swift_beginAccess();
      specialized Dictionary._Variant.removeValue(forKey:)(withIndex);
      swift_endAccess();
      v8 = [objc_opt_self() processInfo];
      [v8 systemUptime];
      v10 = v9;

      v11 = *(v2 + 16);
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        __break(1u);
      }

      else
      {
        *(v2 + 16) = v13;
        v14 = (v10 - v7 - *(v2 + 24)) / v13;
        if (v14 > 0.0)
        {
          *(v2 + 24) = v14;
        }
      }
    }
  }
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(unsigned int a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v9 = *(*v2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVys6UInt32VSdGMd, &_ss17_NativeDictionaryVys6UInt32VSdGMR);
  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v9);
  v10 = *(*(v12 + 56) + 8 * v6);
  _NativeDictionary._delete(at:)();
  *v2 = v12;
  return v10;
}

{
  v2 = v1;
  v3 = *v1;
  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v9 = *(*v2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVys6UInt32VySbcGMd, &_ss17_NativeDictionaryVys6UInt32VySbcGMR);
  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v9);
  v10 = (*(v14 + 56) + 16 * v6);
  v11 = *v10;
  v12 = v10[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySbcMd, &_sySbcMR);
  _NativeDictionary._delete(at:)();
  *v2 = v14;
  return v11;
}

uint64_t OUTLINED_FUNCTION_57_2()
{
  v4 = *(v1 + 16);
  result = v2;
  *(v3 - 152) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_57_3()
{

  return swift_beginAccess();
}

void *OUTLINED_FUNCTION_57_4@<X0>(uint64_t a1@<X8>)
{

  return memcpy((a1 + 16), (v1 + 456), 0x62uLL);
}

void BackgroundConnection.setupReadHandlerOnProvider()()
{
  v1 = *(v0 + 1080);
  if (v1)
  {
    v2 = *(v0 + 1088);
    v3 = one-time initialization token for readBufferBegin;
    v4 = *(v0 + 1080);
    swift_unknownObjectRetain();
    if (v3 != -1)
    {
      swift_once();
    }

    siri_kdebug_trace(static Constants.Signposts.readBufferBegin);
    ObjectType = swift_getObjectType();
    OUTLINED_FUNCTION_7_1();
    v6 = swift_allocObject();
    swift_weakInit();
    OUTLINED_FUNCTION_109();
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = v1;
    v7[4] = v2;
    v8 = *(v2 + 512);
    swift_unknownObjectRetain();

    v8(partial apply for closure #1 in BackgroundConnection.setupReadHandlerOnProvider(), v7, ObjectType, v2);

    swift_unknownObjectRelease();
  }
}

uint64_t NetworkConnectionProvider.readData(_:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.siriNetwork);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    OUTLINED_FUNCTION_6_5();
    v27[6] = v3;
    v10 = a2;
    v11 = a1;
    v12 = swift_slowAlloc();
    OUTLINED_FUNCTION_4_3();
    v13 = swift_slowAlloc();
    v27[0] = v13;
    *v12 = 136315138;
    v14 = NetworkConnectionProvider.connectionIdentifier.getter();
    v4 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v27);

    *(v12 + 4) = v4;
    _os_log_impl(&dword_223515000, v8, v9, "Provider - NetworkConnectionProvider [%s]: Reader. Ready to receive data.", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
    a1 = v11;
    a2 = v10;
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
  }

  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  outlined init with copy of NetworkConnectionProtocol?(v2 + 16, &v25, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
  if (!v26)
  {
    outlined destroy of NetworkConnectionProtocol?(&v25, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
    goto LABEL_9;
  }

  outlined init with take of RPCOspreyConnectionProtocol(&v25, v27);
  if (*(v2 + 2099))
  {
    __swift_destroy_boxed_opaque_existential_0(v27);
LABEL_9:
    lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
    OUTLINED_FUNCTION_10_0();
    v16 = swift_allocError();
    OUTLINED_FUNCTION_34_0(v16, v17);
    return OUTLINED_FUNCTION_39(xmmword_2235F01E0, v18, v19);
  }

  v21 = __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  OUTLINED_FUNCTION_7_1();
  v22 = swift_allocObject();
  OUTLINED_FUNCTION_77(v22);
  swift_weakInit();
  OUTLINED_FUNCTION_109();
  v23 = swift_allocObject();
  v23[2] = v4;
  v23[3] = a1;
  v23[4] = a2;
  v24 = *v21;

  NWConnection.receive(minimumIncompleteLength:maximumLength:completion:)();

  return __swift_destroy_boxed_opaque_existential_0(v27);
}

uint64_t OUTLINED_FUNCTION_70_0(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, v4, a3);
}

uint64_t OUTLINED_FUNCTION_70_2()
{
}

uint64_t NetworkActivityTracing.stop(label:reason:error:completion:)(uint64_t a1)
{
  OUTLINED_FUNCTION_0_37(a1);
  if (v1 >= 6)
  {
    v5 = 1;
  }

  else
  {
    v5 = v1;
  }

  v7 = v5;
  return NetworkActivityTracing.stop(label:reason:error:completion:)(&v8, &v7, v2, v3, v4);
}

uint64_t NetworkActivityTracing.stop(label:reason:error:completion:)(char *a1, unsigned __int8 *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = *(v5 + OBJC_IVAR___SNNetworkActivityTracingInternal_networkActivityTracing);
  v10 = *a2;
  v11 = *a1;

  specialized NetworkActivityTracingInternal.stop(label:reason:error:completion:)(v11, v10, a3, a4, a5);
}

uint64_t specialized NetworkActivityTracingInternal.stop(label:reason:error:completion:)(char a1, int a2, void *a3, uint64_t a4, uint64_t a5)
{
  v26 = a2;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v10 - 8);
  v11 = *(v29 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v25[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for DispatchQoS();
  v27 = *(v14 - 8);
  v28 = v14;
  v15 = *(v27 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v25[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = *(v5 + 32);
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = a1;
  *(v20 + 25) = v26;
  *(v20 + 32) = a3;
  *(v20 + 40) = a4;
  *(v20 + 48) = a5;
  aBlock[4] = partial apply for specialized closure #1 in NetworkActivityTracingInternal.stop(label:reason:error:completion:);
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_68;
  v21 = _Block_copy(aBlock);
  v22 = v18;

  v23 = a3;
  outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(a4);
  static DispatchQoS.unspecified.getter();
  v30 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x223DE2460](0, v17, v13, v21);
  _Block_release(v21);

  (*(v29 + 8))(v13, v10);
  (*(v27 + 8))(v17, v28);
}

uint64_t sub_22352F1F8()
{
  v1 = *(v0 + 16);

  if (*(v0 + 40))
  {
    v2 = *(v0 + 48);
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

void closure #1 in NetworkAnalytics.setNetId(_:)()
{
  OUTLINED_FUNCTION_46();
  v2 = v1;
  v48 = v3;
  v5 = v4;
  v6 = type metadata accessor for UUID();
  v7 = OUTLINED_FUNCTION_0_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_9();
  v47 = v12 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v44 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  v18 = OUTLINED_FUNCTION_11_1(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_9();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_51_0();
  MEMORY[0x28223BE20](v25);
  v27 = &v44 - v26;
  OUTLINED_FUNCTION_40_1();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v29 = Strong;
    if (v5)
    {
      UUID.init(uuidString:)();
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v27, 1, 1, v6);
    }

    v30 = *v48;
    swift_beginAccess();
    outlined assign with take of UUID?(v27, v29 + v30);
    swift_endAccess();
    v31 = v9;
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Logger.siriNetwork);
    v33 = v29;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v46 = v2;
      v36 = OUTLINED_FUNCTION_55();
      v45 = OUTLINED_FUNCTION_54();
      v49 = v45;
      *v36 = 136315138;
      v37 = *v48;
      OUTLINED_FUNCTION_40_1();
      outlined init with copy of UUID?(v33 + v37, v0);
      outlined init with copy of UUID?(v0, v23);
      if (__swift_getEnumTagSinglePayload(v23, 1, v6) == 1)
      {
        v38 = 0xE400000000000000;
        v39 = 1819047278;
      }

      else
      {
        (*(v31 + 32))(v16, v23, v6);
        (*(v31 + 16))(v47, v16, v6);
        v39 = String.init<A>(describing:)();
        v38 = v40;
        v41 = OUTLINED_FUNCTION_32_2();
        v42(v41);
      }

      outlined destroy of NetworkConnectionProtocol?(v0, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v38, &v49);

      *(v36 + 4) = v43;
      _os_log_impl(&dword_223515000, v34, v35, v46, v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();
    }
  }

  OUTLINED_FUNCTION_47();
}

Swift::Void __swiftcall NetworkAnalytics.logRequestLinkBetweenOrchestratorAndNetworkComponent()()
{
  OUTLINED_FUNCTION_46();
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = OUTLINED_FUNCTION_0_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = OUTLINED_FUNCTION_9_5();
  v7 = OUTLINED_FUNCTION_0_0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v10 = mach_absolute_time();
  v11 = *(v0 + OBJC_IVAR___SNNetworkAnalyticsInternal_queue);
  OUTLINED_FUNCTION_7_1();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_28_0(v12);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_3();
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  *(v13 + 24) = v10;
  v25[4] = partial apply for closure #1 in NetworkAnalytics.logRequestLinkBetweenOrchestratorAndNetworkComponent();
  v25[5] = v13;
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v25[2] = v14;
  v25[3] = &block_descriptor_108;
  v15 = _Block_copy(v25);
  v16 = v11;
  OUTLINED_FUNCTION_42();
  static DispatchQoS.unspecified.getter();
  OUTLINED_FUNCTION_2_9();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(v17, v18);
  v19 = OUTLINED_FUNCTION_27_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v19, v20);
  OUTLINED_FUNCTION_45_0(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  OUTLINED_FUNCTION_11_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_43_1();
  _Block_release(v15);

  v21 = OUTLINED_FUNCTION_16_1();
  v22(v21);
  v23 = OUTLINED_FUNCTION_16();
  v24(v23);
  OUTLINED_FUNCTION_39_0();

  OUTLINED_FUNCTION_47();
}

uint64_t sub_22352F818()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_3();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t _s11SiriNetwork0B18ConnectionProviderC06createC18WithInitialPayload_07networkC12ProtocolTypeySo16OS_dispatch_dataCSg_xmtKAA0bcJ0RzlF0B012NWConnectionC_Tt0g5(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network10NWEndpointOSgMd, &_s7Network10NWEndpointOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v21 - v6;
  v8 = type metadata accessor for NWEndpoint();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v21 - v14;
  memcpy(v25, (v2 + 1536), 0x204uLL);
  memcpy(v24, (v2 + 1536), 0x204uLL);
  outlined init with copy of ConnectionConfiguration(v25, v23);
  NWEndpoint.init(configuration:)(v24, v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    outlined destroy of NetworkConnectionProtocol?(v7, &_s7Network10NWEndpointOSgMd, &_s7Network10NWEndpointOSgMR);
    lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
    swift_allocError();
    *(v16 + 8) = 0;
    *(v16 + 16) = 0;
    *v16 = 0;
    *(v16 + 24) = xmmword_2235F01E0;
    return swift_willThrow();
  }

  else
  {
    (*(v9 + 32))(v15, v7, v8);
    if (one-time initialization token for streamOpenNetwork != -1)
    {
      swift_once();
    }

    siri_kdebug_trace(static Constants.Signposts.streamOpenNetwork);
    v18 = type metadata accessor for NWConnection();
    (*(v9 + 16))(v13, v15, v8);
    memcpy(v24, (v2 + 1536), 0x204uLL);
    memcpy(v23, (v2 + 1536), 0x204uLL);
    v22[3] = v18;
    v22[4] = &protocol witness table for NWConnection;
    outlined init with copy of ConnectionConfiguration(v24, v21);
    v19 = a1;
    v22[0] = NWConnection.init(endpoint:configuration:with:)(v13, v23, a1);
    swift_beginAccess();
    outlined assign with take of NetworkConnectionProtocol?(v22, v2 + 16);
    swift_endAccess();
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    outlined init with copy of NetworkConnectionProtocol?(v2 + 16, v23, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
    if (v23[3])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork0B18ConnectionProtocol_pMd, _s11SiriNetwork0B18ConnectionProtocol_pMR);
      if (swift_dynamicCast())
      {
        v20 = v21[0];
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      outlined destroy of NetworkConnectionProtocol?(v23, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
      v20 = 0;
    }

    NetworkActivityTracing.addNWConnection(_:completion:)(v20, 0, 0);

    result = (*(v9 + 8))(v15, v8);
    *(v2 + 2101) = 0;
  }

  return result;
}

void closure #1 in NetworkManager.acquireWiFiAssertion(wifiAssertionTypeRawValue:)(uint64_t a1, Swift::Int a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR___SNNetworkManagerInternal_networkWiFiManager);
    NetworkWiFiManager.acquireWiFiAssertion(wifiAssertionTypeRawValue:)(a2);
  }
}

Swift::Void __swiftcall NetworkWiFiManager.acquireWiFiAssertion(wifiAssertionTypeRawValue:)(Swift::Int wifiAssertionTypeRawValue)
{
  v1 = wifiAssertionTypeRawValue == 2;
  if (wifiAssertionTypeRawValue == 3)
  {
    v1 = 2;
  }

  v2 = v1;
  NetworkWiFiManager.acquireWiFiAssertion(wifiAssertionType:)(&v2);
}

Swift::Void __swiftcall NetworkManager.startMonitoringNetwork(_:)(Swift::String a1)
{
  v3 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = OUTLINED_FUNCTION_0_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_1();
  v26 = OUTLINED_FUNCTION_8_1();
  v12 = OUTLINED_FUNCTION_0_0(v26);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_1();
  v19 = v18 - v17;
  v20 = *(v3 + OBJC_IVAR___SNNetworkManagerInternal_queue);
  OUTLINED_FUNCTION_7_1();
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = countAndFlagsBits;
  v22[4] = object;
  v30 = partial apply for closure #1 in NetworkManager.startMonitoringNetwork(_:);
  v31 = v22;
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v28 = v23;
  v29 = &block_descriptor_17_0;
  v24 = _Block_copy(aBlock);
  v25 = v20;

  static DispatchQoS.unspecified.getter();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_5_3();
  _Block_release(v24);

  (*(v9 + 8))(v2, v6);
  (*(v14 + 8))(v19, v26);
}

uint64_t sub_223530170()
{
  MEMORY[0x223DE39C0](v0 + 16);
  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2235301A4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t NetworkWiFiManager.setWiFiManagerClientType(_:)(uint64_t result)
{
  if (*(v1 + OBJC_IVAR___SNNetworkWiFiManagerInternal_wifiClientType) != result)
  {
    *(v1 + OBJC_IVAR___SNNetworkWiFiManagerInternal_wifiClientType) = result;
    return MEMORY[0x2821878C8](*(v1 + OBJC_IVAR___SNNetworkWiFiManagerInternal_wifiManager), result);
  }

  return result;
}

void NetworkAnalytics.setNetworkConnectionId(_:)()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_53_1();
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = OUTLINED_FUNCTION_0_0(v2);
  v34[2] = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = OUTLINED_FUNCTION_9_5();
  v8 = OUTLINED_FUNCTION_0_0(v7);
  v34[0] = v9;
  v34[1] = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v16 = v34 - v15;
  v17 = *(v0 + OBJC_IVAR___SNNetworkAnalyticsInternal_queue);
  OUTLINED_FUNCTION_7_1();
  v18 = swift_allocObject();
  OUTLINED_FUNCTION_28_0(v18);
  swift_unknownObjectWeakInit();
  v19 = OUTLINED_FUNCTION_27_0();
  outlined init with copy of UUID?(v19, v20);
  v21 = ((*(v13 + 80) + 24) & ~*(v13 + 80));
  v22 = swift_allocObject();
  *(v22 + 16) = v1;
  outlined init with take of UUID?(v16, v21 + v22);
  v35[4] = partial apply for closure #1 in NetworkAnalytics.setNetworkConnectionId(_:);
  v35[5] = v22;
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v35[2] = v23;
  v35[3] = &block_descriptor_23;
  v24 = _Block_copy(v35);
  v25 = v17;
  OUTLINED_FUNCTION_42();
  static DispatchQoS.unspecified.getter();
  v34[3] = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_2_9();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(v26, v27);
  v28 = OUTLINED_FUNCTION_27_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v28, v29);
  OUTLINED_FUNCTION_45_0(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  OUTLINED_FUNCTION_11_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_43_1();
  _Block_release(v24);

  v30 = OUTLINED_FUNCTION_16_1();
  v31(v30);
  v32 = OUTLINED_FUNCTION_16();
  v33(v32);
  OUTLINED_FUNCTION_39_0();

  OUTLINED_FUNCTION_47();
}

uint64_t sub_2235304CC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);

  v6 = type metadata accessor for UUID();
  if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v6))
  {
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t outlined init with take of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_11SiriNetwork26ConnectionHTTPHeaderReportVSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_11SiriNetwork27ConnectionPreparationReportVSg(uint64_t a1)
{
  v1 = *(a1 + 336);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_11SiriNetwork29ConnectionEstablishmentReportVSg(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_11SiriNetwork24ConnectionSnapshotReportVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_35_1()
{
  result = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return result;
}

uint64_t OUTLINED_FUNCTION_35_2(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v2, v1, 1, a1);
}

uint64_t getEnumTagSinglePayload for ConnectionInterfaceReport(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 289))
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

uint64_t _s11SiriNetwork24ConnectionSnapshotReportVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t protocol witness for ConnectionProviderProtocol.connectionMetrics.getter in conformance NetworkConnectionProvider@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  memcpy(__dst, (v1 + 56), 0x599uLL);
  memcpy(a1, (v1 + 56), 0x599uLL);
  return outlined init with copy of ConnectionMetrics(__dst, &v4);
}

uint64_t outlined assign with take of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void NetworkAnalytics.setNetId(_:)()
{
  OUTLINED_FUNCTION_46();
  v30 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = OUTLINED_FUNCTION_0_0(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = OUTLINED_FUNCTION_9_5();
  v14 = OUTLINED_FUNCTION_0_0(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7();
  v17 = *(v0 + OBJC_IVAR___SNNetworkAnalyticsInternal_queue);
  OUTLINED_FUNCTION_7_1();
  v18 = swift_allocObject();
  OUTLINED_FUNCTION_28_0(v18);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_109();
  v19 = swift_allocObject();
  v19[2] = v1;
  v19[3] = v8;
  v19[4] = v6;
  v31[4] = v4;
  v31[5] = v19;
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v31[2] = v20;
  v31[3] = v30;
  v21 = _Block_copy(v31);

  v22 = v17;

  static DispatchQoS.unspecified.getter();
  OUTLINED_FUNCTION_2_9();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(v23, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_30_2();
  v25 = OUTLINED_FUNCTION_6();
  MEMORY[0x223DE2460](v25);
  _Block_release(v21);

  v26 = OUTLINED_FUNCTION_16_1();
  v27(v26);
  v28 = OUTLINED_FUNCTION_16();
  v29(v28);
  OUTLINED_FUNCTION_39_0();

  OUTLINED_FUNCTION_47();
}

uint64_t static NetworkAnalytics.netProvider(from:)()
{
  v0 = String.lowercased()();
  OUTLINED_FUNCTION_7_21();
  v2 = v0._countAndFlagsBits == 0xD000000000000018 && v1 == v0._object;
  if (v2 || (OUTLINED_FUNCTION_4_29() & 1) != 0)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_7_21();
    v5 = v0._countAndFlagsBits == 0xD00000000000001ELL && v4 == v0._object;
    if (v5 || (OUTLINED_FUNCTION_4_29() & 1) != 0)
    {

      return 3;
    }

    else
    {
      OUTLINED_FUNCTION_7_21();
      v7 = v0._countAndFlagsBits == 0xD000000000000014 && v6 == v0._object;
      if (v7 || (OUTLINED_FUNCTION_4_29() & 1) != 0)
      {

        return 2;
      }

      else
      {
        OUTLINED_FUNCTION_7_21();
        v9 = v0._countAndFlagsBits == 0xD000000000000017 && v8 == v0._object;
        if (v9 || (OUTLINED_FUNCTION_4_29() & 1) != 0)
        {

          return 4;
        }

        else
        {
          OUTLINED_FUNCTION_7_21();
          if (v0._countAndFlagsBits == 0xD00000000000001ELL && v10 == v0._object)
          {

            return 5;
          }

          else
          {
            OUTLINED_FUNCTION_4_29();
            OUTLINED_FUNCTION_12_11();
            if (v0._countAndFlagsBits)
            {
              return 5;
            }

            else
            {
              return 0;
            }
          }
        }
      }
    }
  }
}

id Connection.__deallocating_deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  v3 = OUTLINED_FUNCTION_11_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  if (!*&v0[OBJC_IVAR___SNConnectionInternal_activeBackgroundConnection])
  {
    dispatch_group_leave(*&v0[OBJC_IVAR___SNConnectionInternal_activeConnectionGroup]);
  }

  v8 = OBJC_IVAR___SNConnectionInternal_networkAnalytics;
  v9 = *&v0[OBJC_IVAR___SNConnectionInternal_networkAnalytics];
  v10 = type metadata accessor for UUID();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v10);
  v11 = v9;
  NetworkAnalytics.setNetworkConnectionId(_:)();

  outlined destroy of NetworkConnectionProtocol?(v7, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  v12 = *&v1[v8];
  v13 = OUTLINED_FUNCTION_53_1();
  NetworkAnalytics.setConnectionProvider(_:)(v13);

  v14 = type metadata accessor for Connection();
  v16.receiver = v1;
  v16.super_class = v14;
  return objc_msgSendSuper2(&v16, sel_dealloc);
}

uint64_t outlined consume of ConnectionPolicyRoute?(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Connection.start()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  v3 = OUTLINED_FUNCTION_11_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = (&v125 - v6);
  if (one-time initialization token for siriNetwork != -1)
  {
LABEL_58:
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  v9 = __swift_project_value_buffer(v8, static Logger.siriNetwork);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = OUTLINED_FUNCTION_16_0();
  if (os_log_type_enabled(v12, v13))
  {
    OUTLINED_FUNCTION_17_5();
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_223515000, v10, v11, "Connection - Start: Starting connection", v14, 2u);
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
  }

  if (*(v1 + OBJC_IVAR___SNConnectionInternal_activeBackgroundConnection))
  {
    v15 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v16 = OUTLINED_FUNCTION_16_0();
    if (os_log_type_enabled(v16, v17))
    {
      OUTLINED_FUNCTION_17_5();
      v18 = swift_slowAlloc();
      OUTLINED_FUNCTION_40_2(v18);
      OUTLINED_FUNCTION_6_0();
      _os_log_impl(v19, v20, v21, v22, v23, 2u);
      v24 = OUTLINED_FUNCTION_1_2();
      MEMORY[0x223DE38F0](v24);
    }

    lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
    v25 = OUTLINED_FUNCTION_60();
    v27 = 2;
LABEL_12:
    *(v26 + 8) = 0;
    *(v26 + 16) = 0;
    *v26 = v27;
    *(v26 + 24) = xmmword_2235F01E0;
LABEL_13:
    v134 = v25;
    swift_willThrow();
    return;
  }

  if (*(v1 + OBJC_IVAR___SNConnectionInternal_isCanceledInternal))
  {
    v28 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v29 = OUTLINED_FUNCTION_16_0();
    if (os_log_type_enabled(v29, v30))
    {
      OUTLINED_FUNCTION_17_5();
      v31 = swift_slowAlloc();
      OUTLINED_FUNCTION_40_2(v31);
      OUTLINED_FUNCTION_6_0();
      _os_log_impl(v32, v33, v34, v35, v36, 2u);
      v37 = OUTLINED_FUNCTION_1_2();
      MEMORY[0x223DE38F0](v37);
    }

    lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
    v25 = OUTLINED_FUNCTION_60();
    v27 = 1;
    goto LABEL_12;
  }

  v38 = [objc_opt_self() sharedPreferences];
  v39 = [v38 isDictationHIPAACompliant];

  if (v39)
  {
    v40 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v41 = OUTLINED_FUNCTION_16_0();
    if (os_log_type_enabled(v41, v42))
    {
      OUTLINED_FUNCTION_17_5();
      v43 = swift_slowAlloc();
      OUTLINED_FUNCTION_40_2(v43);
      OUTLINED_FUNCTION_6_0();
      _os_log_impl(v44, v45, v46, v47, v48, 2u);
      v49 = OUTLINED_FUNCTION_1_2();
      MEMORY[0x223DE38F0](v49);
    }

    lazy protocol witness table accessor for type ConnectionConfigurationError and conformance ConnectionConfigurationError();
    v25 = OUTLINED_FUNCTION_60();
    *v50 = 1;
    goto LABEL_13;
  }

  v147 = MEMORY[0x277D84FA0];
  v51 = (v1 + OBJC_IVAR___SNConnectionInternal_connectionConfiguration);
  v52 = *(v1 + OBJC_IVAR___SNConnectionInternal_connectionConfiguration + 392);
  if (v52)
  {
    v53 = static ConnectionPolicyRoute.aceptableRoutes(_:)(v52);
    specialized Set.formUnion<A>(_:)(v53);
  }

  v54 = *(v51 + 51);
  if (v54 != 1)
  {
    v55 = v9;
    v56 = *(v51 + 50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriNetwork21ConnectionPolicyRouteVGMd, &_ss23_ContiguousArrayStorageCy11SiriNetwork21ConnectionPolicyRouteVGMR);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_2235EFCB0;
    *(v57 + 32) = v56;
    *(v57 + 40) = v54;
    memcpy((v57 + 48), v51 + 52, 0x62uLL);
    v146[0] = v56;
    v9 = v55;
    v146[1] = v54;
    memcpy(&v146[2], v51 + 52, 0x62uLL);
    outlined init with copy of ConnectionPolicyRoute(v146, v145);
    v58 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11SiriNetwork21ConnectionPolicyRouteV_Tt0g5(v57);
    v59 = static ConnectionPolicyRoute.aceptableRoutes(_:)(v58);

    specialized Set.formUnion<A>(_:)(v59);
  }

  if (!*(_sSaySayxGqd__c7ElementQyd__RszSTRd__lufC11SiriNetwork21ConnectionPolicyRouteV_ShyAFGTt0g5(v147) + 2))
  {

    v99 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v100 = OUTLINED_FUNCTION_16_0();
    if (os_log_type_enabled(v100, v101))
    {
      OUTLINED_FUNCTION_17_5();
      v102 = swift_slowAlloc();
      OUTLINED_FUNCTION_40_2(v102);
      OUTLINED_FUNCTION_6_0();
      _os_log_impl(v103, v104, v105, v106, v107, 2u);
      v108 = OUTLINED_FUNCTION_1_2();
      MEMORY[0x223DE38F0](v108);
    }

    lazy protocol witness table accessor for type ConnectionConfigurationError and conformance ConnectionConfigurationError();
    v25 = OUTLINED_FUNCTION_60();
    *v109 = 0;
    goto LABEL_13;
  }

  v131 = v9;
  v60 = OBJC_IVAR___SNConnectionInternal_networkAnalytics;
  v61 = *(v1 + OBJC_IVAR___SNConnectionInternal_networkAnalytics);
  UUID.init()();
  v62 = type metadata accessor for UUID();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v62);
  NetworkAnalytics.setNetworkConnectionId(_:)();

  outlined destroy of NetworkConnectionProtocol?(v7, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  v63 = *v51;
  v64 = *(v1 + v60);
  v65 = ConnectionProtocolTechnology.provider()();
  v137 = v51;
  NetworkAnalytics.setConnectionProvider(_:)(v65);

  v66 = v137;

  v132 = static ConnectionPolicyRoute.groupedRoutesAndSortedByPriority(_:)();

  if (*(v66 + 49) && (v66[44] & 1) == 0)
  {
    v110 = v66[43];
    OUTLINED_FUNCTION_8();
    swift_beginAccess();
    v68 = *&static ConnectionPolicy.maxGlobalTimeout;
    if (*&static ConnectionPolicy.maxGlobalTimeout >= v110)
    {
      v68 = v110;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8();
    swift_beginAccess();
    v68 = *&static ConnectionPolicy.maxGlobalTimeout;
  }

  v69 = v132;
  v129 = v132[2];
  if (!v129)
  {
    goto LABEL_47;
  }

  v70 = 0;
  v135 = OBJC_IVAR___SNConnectionInternal_networkManager;
  v136 = OBJC_IVAR___SNConnectionInternal_connectionQueue;
  v130 = v132 + 4;
  v71 = 0.0;
  *&v67 = 134218242;
  v125 = v67;
  while (2)
  {
    if (v70 >= v69[2])
    {
      __break(1u);
      return;
    }

    v72 = &v130[2 * v70];
    v73 = *v72;
    v7 = v72[1];
    swift_bridgeObjectRetain_n();
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.default.getter();

    LODWORD(v138) = v75;
    v76 = os_log_type_enabled(v74, v75);
    v133 = v73;
    if (v76)
    {
      OUTLINED_FUNCTION_30();
      v77 = swift_slowAlloc();
      v127 = v74;
      v78 = v77;
      OUTLINED_FUNCTION_4_3();
      v126 = swift_slowAlloc();
      v146[0] = v126;
      *v78 = v125;
      *(v78 + 4) = v73;
      *(v78 + 12) = 2080;
      v79 = MEMORY[0x223DE2280](v7, &type metadata for ConnectionPolicyRoute);
      v128 = v7;
      v81 = v70;
      v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v80, v146);
      v7 = v128;

      *(v78 + 14) = v82;
      v70 = v81;
      v83 = v127;
      _os_log_impl(&dword_223515000, v127, v138, "Connection - Start: Acceptable Routes for priority %ld: %s", v78, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v126);
      OUTLINED_FUNCTION_2_2();
      MEMORY[0x223DE38F0]();
      v84 = OUTLINED_FUNCTION_2_0();
      MEMORY[0x223DE38F0](v84);
    }

    else
    {
    }

    static ConnectionPolicyRoute.maxTimeoutFromRoutes(_:)(v7);
    if (v85 <= 5.0)
    {
      v86 = v85;
    }

    else
    {
      v86 = 5.0;
    }

    if (v71 == 0.0 || v68 > v71)
    {
      v133 = v70 + 1;
      v88 = static ConnectionPolicyRoute.prioritizedPOPRoutes(_:)(v7);

      v89 = 0;
      v138 = v88[2];
      v90 = 4;
      while (v138 != v89)
      {
        if (v89 >= v88[2])
        {
          __break(1u);
          goto LABEL_58;
        }

        memcpy(v141, &v88[v90], 0x72uLL);
        memcpy(v142, &v88[v90], sizeof(v142));
        memcpy(v143, v66, 0x204uLL);
        memcpy(v140, v66, sizeof(v140));
        memcpy(v144, v66 + 50, 0x72uLL);
        outlined init with copy of ConnectionPolicyRoute(v141, v146);
        outlined init with copy of ConnectionConfiguration(v143, v146);
        outlined destroy of NetworkConnectionProtocol?(v144, &_s11SiriNetwork21ConnectionPolicyRouteVSgMd, &_s11SiriNetwork21ConnectionPolicyRouteVSgMR);
        memcpy(&v140[400], v142, 0x72uLL);
        memcpy(v145, v140, 0x204uLL);
        memcpy(v146, v140, 0x204uLL);
        v91 = *(v1 + v136);
        v92 = *(v1 + v135);
        outlined init with copy of ConnectionConfiguration(v145, &v139);
        v93 = v1;
        v94 = one-time initialization token for sharedNetworkAnalytics;
        v95 = v91;
        v96 = v92;
        if (v94 != -1)
        {
          OUTLINED_FUNCTION_24_3();
          swift_once();
        }

        v97 = static NetworkAnalytics.sharedNetworkAnalytics;
        type metadata accessor for BackgroundConnection();
        swift_allocObject();
        v7 = BackgroundConnection.init(connectionConfiguration:connectionQueue:networkManager:networkAnalytics:)(v146, v95, v92, v97);
        v98 = v97;
        Connection.scheduleBackgroundConnection(_:after:)(v7, v71);

        memcpy(v146, v140, 0x204uLL);
        outlined destroy of ConnectionConfiguration(v146);
        v90 += 15;
        ++v89;
        v1 = v93;
        v66 = v137;
      }

      v71 = v71 + v86;
      v69 = v132;
      v70 = v133;
      if (v133 != v129)
      {
        continue;
      }

LABEL_47:

      return;
    }

    break;
  }

  v111 = Logger.logObject.getter();
  v112 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v111, v112))
  {
    v114 = swift_slowAlloc();
    OUTLINED_FUNCTION_4_3();
    v115 = swift_slowAlloc();
    v146[0] = v115;
    *v114 = 134218754;
    *(v114 + 4) = v133;
    *(v114 + 12) = 2048;
    *(v114 + 14) = v71;
    *(v114 + 22) = 2048;
    *(v114 + 24) = v68;
    *(v114 + 32) = 2080;
    v145[0] = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11SiriNetwork21ConnectionPolicyRouteVGMd, &_sSay11SiriNetwork21ConnectionPolicyRouteVGMR);
    v116 = String.init<A>(describing:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v116, v117, v146);
    OUTLINED_FUNCTION_53_4();

    *(v114 + 34) = v7;
    OUTLINED_FUNCTION_6_0();
    _os_log_impl(v118, v119, v120, v121, v122, 0x2Au);
    __swift_destroy_boxed_opaque_existential_0(v115);
    v123 = OUTLINED_FUNCTION_2_0();
    MEMORY[0x223DE38F0](v123);
    v124 = OUTLINED_FUNCTION_1_2();
    MEMORY[0x223DE38F0](v124);
  }

  else
  {
  }
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriNetwork21ConnectionPolicyRouteVGMd, &_ss23_ContiguousArrayStorageCy11SiriNetwork21ConnectionPolicyRouteVGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 120);
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi3key_Say11SiriNetwork21ConnectionPolicyRouteVG5valuetGMd, &_ss23_ContiguousArrayStorageCySi3key_Say11SiriNetwork21ConnectionPolicyRouteVG5valuetGMR);
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi3key_Say11SiriNetwork21ConnectionPolicyRouteVG5valuetMd, &_sSi3key_Say11SiriNetwork21ConnectionPolicyRouteVG5valuetMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(uint64_t a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *static ConnectionPolicyRoute.groupedRoutesAndSortedByPriority(_:)()
{

  v1 = _sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSi_Say11SiriNetwork21ConnectionPolicyRouteVGTt1g504_s11d9Network21fgh46V32groupedRoutesAndSortedByPriorityySaySi3key_Q24ACG5valuetGAFFZSiACXEfU_Tf1nc_n(v0);
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(v1);
  specialized MutableCollection<>.sort(by:)(&v3);

  return v3;
}

uint64_t _sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSi_Say11SiriNetwork21ConnectionPolicyRouteVGTt1g504_s11d9Network21fgh46V32groupedRoutesAndSortedByPriorityySaySi3key_Q24ACG5valuetGAFFZSiACXEfU_Tf1nc_n(uint64_t a1)
{
  v2 = 0;
  v3 = MEMORY[0x277D84F98];
  v31 = MEMORY[0x277D84F98];
  v4 = *(a1 + 16);
  v5 = 32;
  v28 = v4;
  while (1)
  {
    if (v4 == v2)
    {

      return v3;
    }

    if (v2 >= *(a1 + 16))
    {
      break;
    }

    memcpy(__dst, (a1 + v5), 0x72uLL);
    v6 = __dst[4];
    v7 = specialized __RawDictionaryStorage.find<A>(_:)(__dst[4]);
    v9 = v3[2];
    v10 = (v8 & 1) == 0;
    v11 = v9 + v10;
    if (__OFADD__(v9, v10))
    {
      goto LABEL_19;
    }

    v12 = v8;
    if (v3[3] >= v11)
    {
      v15 = v7;
      outlined init with copy of ConnectionPolicyRoute(__dst, v29);
      if (v12)
      {
        goto LABEL_11;
      }
    }

    else
    {
      outlined init with copy of ConnectionPolicyRoute(__dst, v29);
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v11, 1);
      v3 = v31;
      v13 = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if ((v12 & 1) != (v14 & 1))
      {
        goto LABEL_21;
      }

      v15 = v13;
      if (v12)
      {
LABEL_11:
        v20 = v3[7];
        v21 = *(v20 + 8 * v15);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v20 + 8 * v15) = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v24 = *(v21 + 16);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v21 = v25;
          *(v20 + 8 * v15) = v25;
        }

        v23 = *(v21 + 16);
        if (v23 >= *(v21 + 24) >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v21 = v26;
          *(v20 + 8 * v15) = v26;
        }

        *(v21 + 16) = v23 + 1;
        memcpy((v21 + 120 * v23 + 32), __dst, 0x72uLL);
        v4 = v28;
        goto LABEL_16;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriNetwork21ConnectionPolicyRouteVGMd, &_ss23_ContiguousArrayStorageCy11SiriNetwork21ConnectionPolicyRouteVGMR);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_2235EFCB0;
    memcpy((v16 + 32), __dst, 0x72uLL);
    v3[(v15 >> 6) + 8] |= 1 << v15;
    *(v3[6] + 8 * v15) = v6;
    *(v3[7] + 8 * v15) = v16;
    v17 = v3[2];
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      goto LABEL_20;
    }

    v3[2] = v19;
LABEL_16:
    v5 += 120;
    ++v2;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v3 = MEMORY[0x223DE2960](*(v1 + 40), a1);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    outlined init with copy of AnyHashable(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x223DE26B0](v8, a1);
    outlined destroy of AnyHashable(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi3key_Say11SiriNetwork21ConnectionPolicyRouteVG5valuet_Tt1g5(*(a1 + 16), 0);
  v4 = specialized Sequence._copySequenceContents(initializing:)(&v6, v3 + 4, v1, a1);

  outlined consume of Set<MessageCenterUser>.Iterator._Variant();
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi3key_Say11SiriNetwork21ConnectionPolicyRouteVG5valuetMd, &_sSi3key_Say11SiriNetwork21ConnectionPolicyRouteVG5valuetMR);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (v15 << 9) | (8 * __clz(__rbit64(v9)));
      v17 = *(*(a4 + 56) + v16);
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + v16);
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::String __swiftcall ConnectionProtocolTechnology.provider()()
{
  v1 = v0;
  v2 = 0xD000000000000017;
  if (v1 == 1)
  {
    v3 = "v16@?0@<OS_xpc_object>8";
  }

  else
  {
    if (v1 != 2)
    {
      v2 = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      goto LABEL_7;
    }

    v3 = "connectionReadyReportEmitted";
    v2 = 0xD00000000000001ELL;
  }

  v4 = (v3 | 0x8000000000000000);
LABEL_7:
  result._object = v4;
  result._countAndFlagsBits = v2;
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi3key_Say11SiriNetwork21ConnectionPolicyRouteVG5valuet_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi3key_Say11SiriNetwork21ConnectionPolicyRouteVG5valuetGMd, &_ss23_ContiguousArrayStorageCySi3key_Say11SiriNetwork21ConnectionPolicyRouteVG5valuetGMR);
  v4 = OUTLINED_FUNCTION_16_6();
  _swift_stdlib_malloc_size(v4);
  OUTLINED_FUNCTION_7_9();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

uint64_t BackgroundConnection.init(connectionConfiguration:connectionQueue:networkManager:networkAnalytics:)(void *__src, uint64_t a2, uint64_t a3, uint64_t a4)
{
  memcpy(__dst, __src, 0x204uLL);
  *(v4 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + 1121) = 0u;
  *(v4 + 1096) = 0u;
  *(v4 + 1112) = 0u;
  *(v4 + 1080) = 0u;
  *(v4 + 1160) = 0u;
  *(v4 + 1184) = 0;
  *(v4 + 1188) = 0;
  *(v4 + 1192) = 0u;
  *(v4 + 1208) = 0u;
  *(v4 + 1224) = 0u;
  *(v4 + 1240) = 1;
  *(v4 + 1248) = 0;
  memcpy((v4 + 40), __src, 0x204uLL);
  memcpy((v4 + 560), __src, 0x204uLL);
  *(v4 + 32) = a2;
  *(v4 + 1152) = MEMORY[0x277D84FA0];
  *(v4 + 1176) = a4;
  *(v4 + 1144) = a3;
  outlined init with copy of ConnectionConfiguration(__dst, &v10);
  return v4;
}

void Connection.scheduleBackgroundConnection(_:after:)(void *a1, double a2)
{
  v4 = v2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = OUTLINED_FUNCTION_0_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v13 = type metadata accessor for DispatchQoS();
  v14 = OUTLINED_FUNCTION_0_0(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_0_1();
  v20 = v19 - v18;
  if (!*&v4[OBJC_IVAR___SNConnectionInternal_activeBackgroundConnection] && (v4[OBJC_IVAR___SNConnectionInternal_isCanceledInternal] & 1) == 0)
  {
    v21 = a1[56];
    if (v21 != 1)
    {
      v40 = v17;
      v45 = v10;
      v22 = a1[55];
      memcpy(__dst, a1 + 57, sizeof(__dst));
      v43 = v22;
      v55[0] = v22;
      v55[1] = v21;
      OUTLINED_FUNCTION_57_4(v55);
      outlined init with copy of ConnectionPolicyRoute(v55, &v49);
      if (one-time initialization token for siriNetwork != -1)
      {
        OUTLINED_FUNCTION_0_8();
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_58(v23, static Logger.siriNetwork);

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();

      v41 = v25;
      v44 = v21;
      if (os_log_type_enabled(v24, v25))
      {
        v39 = v24;
        OUTLINED_FUNCTION_30();
        v26 = swift_slowAlloc();
        OUTLINED_FUNCTION_4_3();
        v38 = swift_slowAlloc();
        v48 = v38;
        *v26 = 134218242;
        *(v26 + 4) = a2;
        *(v26 + 12) = 2080;
        v27 = a1[56];
        if (v27 == 1)
        {
          v28 = 0xE100000000000000;
          v29 = 45;
        }

        else
        {
          v30 = a1[55];
          OUTLINED_FUNCTION_57_4(v47);
          v47[0] = v30;
          v47[1] = v27;
          v49 = v30;
          v50 = v27;
          OUTLINED_FUNCTION_57_4(&v49);
          outlined init with copy of ConnectionPolicyRoute(&v49, &v46);
          v29 = String.init<A>(describing:)();
          v28 = v31;
        }

        v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v28, &v48);

        *(v26 + 14) = v32;
        v24 = v39;
        _os_log_impl(&dword_223515000, v39, v41, "Connection - Start: Background Connection. Scheduling route after delay %f: %s", v26, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v38);
        OUTLINED_FUNCTION_2_2();
        MEMORY[0x223DE38F0]();
        OUTLINED_FUNCTION_2_2();
        MEMORY[0x223DE38F0]();
      }

      v42 = *&v4[OBJC_IVAR___SNConnectionInternal_connectionQueue];
      OUTLINED_FUNCTION_7_1();
      v33 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v34 = swift_allocObject();
      *(v34 + 16) = v33;
      *(v34 + 24) = v43;
      *(v34 + 32) = v44;
      memcpy((v34 + 40), __dst, 0x62uLL);
      *(v34 + 144) = a1;
      *(v34 + 152) = a2;
      v53 = partial apply for closure #1 in Connection.scheduleBackgroundConnection(_:after:);
      v54 = v34;
      v49 = MEMORY[0x277D85DD0];
      v50 = 1107296256;
      OUTLINED_FUNCTION_3_5();
      v51 = v35;
      v52 = &block_descriptor_174;
      _Block_copy(&v49);
      OUTLINED_FUNCTION_53_4();

      static DispatchQoS.unspecified.getter();
      v47[0] = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_1_24();
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(v36, v37);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x223DE2460](0, v20, v3, v4);
      _Block_release(v4);
      (*(v45 + 8))(v3, v7);
      (*(v40 + 8))(v20, v13);
    }
  }
}

uint64_t sub_223532948()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[14];

  v7 = v0[18];

  return MEMORY[0x2821FE8E8](v0, 160, 7);
}

uint64_t NetworkConnectionProvider.openConnectionWithInitialPayload(_:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.siriNetwork);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_223515000, v10, v11, "Provider - NetworkConnectionProvider: Preparing connection with initial payload.", v12, 2u);
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
  }

  OUTLINED_FUNCTION_96();
  outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v13);
  specialized ConnectionProviderProtocol.cancelOpenTimer()();
  specialized ConnectionProviderProtocol.cancelOpenSlowTimer()();
  specialized ConnectionProviderProtocol.configureNetworkAnalytics()();
  result = _s11SiriNetwork0B18ConnectionProviderC06createC18WithInitialPayload_07networkC12ProtocolTypeySo16OS_dispatch_dataCSg_xmtKAA0bcJ0RzlF0B012NWConnectionC_Tt0g5(a1);
  if (!v4)
  {
    NetworkConnectionProvider.configureConnectionHandler(_:)(v5);
    return NetworkConnectionProvider.startConnectionWithOpenTimeoutTimer(completion:)(a2, a3);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BackgroundConnection.start(proposedFallbackMethod:allowFallbackToNewMethod:)(SiriNetwork::ConnectionMethod proposedFallbackMethod, Swift::Bool allowFallbackToNewMethod)
{
  v3 = v2;
  if (one-time initialization token for connectionStart != -1)
  {
    swift_once();
  }

  siri_kdebug_trace(static Constants.Signposts.connectionStart);
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v99 = 0x6E776F6E6B6E75;
  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.siriNetwork);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *__dst = swift_slowAlloc();
    *v9 = 136315650;
    v10 = 0x6E776F6E6B6E75;
    switch(*(v3 + 1136))
    {
      case 1:
        v10 = OUTLINED_FUNCTION_12_9();
        break;
      case 2:
        v10 = OUTLINED_FUNCTION_75_2();
        break;
      case 3:
        v10 = OUTLINED_FUNCTION_74_2();
        break;
      default:
        break;
    }

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, 0xE700000000000000, __dst);

    *(v9 + 4) = v11;
    *(v9 + 12) = 2080;
    v12 = 0x6E776F6E6B6E75;
    switch(proposedFallbackMethod)
    {
      case SiriNetwork_ConnectionMethod_network:
        v12 = OUTLINED_FUNCTION_12_9();
        break;
      case SiriNetwork_ConnectionMethod_peer:
        v12 = OUTLINED_FUNCTION_75_2();
        break;
      case SiriNetwork_ConnectionMethod_pop:
        v12 = OUTLINED_FUNCTION_74_2();
        break;
      default:
        break;
    }

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, 0xE700000000000000, __dst);

    *(v9 + 14) = v13;
    *(v9 + 22) = 1024;
    *(v9 + 24) = allowFallbackToNewMethod;
    _os_log_impl(&dword_223515000, v7, v8, "Background Connection - Start. Current method: %s. Proposed: %s. Allow fallback: %{BOOL}d", v9, 0x1Cu);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
  }

  else
  {
  }

  [*(v3 + 1144) updateNetworkPerformanceFeed];
  v14 = [objc_allocWithZone(MEMORY[0x277CCAC38]) init];
  [v14 systemUptime];
  v16 = v15;

  *(v3 + 1200) = v16;
  if (*(v3 + 1192) <= 0.0)
  {
    *(v3 + 1192) = v16;
  }

  *(v3 + 1208) = 0;
  v17 = *(v3 + 1224);
  v18 = __CFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
    JUMPOUT(0x2235338ECLL);
  }

  *(v3 + 1224) = v19;
  v20 = *(v3 + 1136);
  if (!*(v3 + 1136))
  {
    if ((*(v3 + 138) & 1) == 0)
    {
      OUTLINED_FUNCTION_95_1(v106);
      OUTLINED_FUNCTION_95_1(__src);
      outlined init with copy of ConnectionConfiguration(v106, __dst);
      v21 = 0;
      goto LABEL_29;
    }

    proposedFallbackMethod = SiriNetwork_ConnectionMethod_network;
LABEL_30:
    *(v3 + 1136) = proposedFallbackMethod;
    goto LABEL_36;
  }

  if (allowFallbackToNewMethod)
  {
    if (proposedFallbackMethod == SiriNetwork_ConnectionMethod_unknown)
    {
      OUTLINED_FUNCTION_95_1(v106);
      OUTLINED_FUNCTION_95_1(__src);
      outlined init with copy of ConnectionConfiguration(v106, __dst);
      v21 = v20;
LABEL_29:
      proposedFallbackMethod = ConnectionMethod.nextConnectionMethodSupported(connectionConfiguration:)(__src, v21);
      memcpy(__dst, __src, sizeof(__dst));
      outlined destroy of ConnectionConfiguration(__dst);
      goto LABEL_30;
    }

    goto LABEL_30;
  }

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  v24 = OUTLINED_FUNCTION_106_1();
  if (os_log_type_enabled(v24, v25))
  {
    OUTLINED_FUNCTION_6_5();
    v26 = swift_slowAlloc();
    OUTLINED_FUNCTION_4_3();
    v27 = swift_slowAlloc();
    *__dst = v27;
    *v26 = 136315138;
    v28 = v27;
    v29 = 0x6E776F6E6B6E75;
    switch(*(v3 + 1136))
    {
      case 1:
        v29 = OUTLINED_FUNCTION_12_9();
        break;
      case 2:
        v29 = OUTLINED_FUNCTION_75_2();
        break;
      case 3:
        v29 = OUTLINED_FUNCTION_74_2();
        break;
      default:
        break;
    }

    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, 0xE700000000000000, __dst);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_223515000, v22, v23, "Background Connection - Start. Fallback not allowed for this attempt, sticking with %s method.", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    v31 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x223DE38F0](v31);
    v32 = OUTLINED_FUNCTION_7_2();
    MEMORY[0x223DE38F0](v32);
  }

  else
  {
  }

  proposedFallbackMethod = *(v3 + 1136);
LABEL_36:
  if (proposedFallbackMethod == SiriNetwork_ConnectionMethod_peer && *(v3 + 137) == 1)
  {
    swift_beginAccess();
    specialized Set._Variant.insert(_:)(v106, 2);
    swift_endAccess();
    v33 = *(v3 + 1136);
    OUTLINED_FUNCTION_95_1(v106);
    OUTLINED_FUNCTION_95_1(__src);
    outlined init with copy of ConnectionConfiguration(v106, __dst);
    LOBYTE(v33) = ConnectionMethod.nextConnectionMethodSupported(connectionConfiguration:)(__src, v33);
    memcpy(__dst, __src, sizeof(__dst));
    outlined destroy of ConnectionConfiguration(__dst);
    *(v3 + 1136) = v33;
  }

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();

  v36 = OUTLINED_FUNCTION_106_1();
  if (os_log_type_enabled(v36, v37))
  {
    OUTLINED_FUNCTION_6_5();
    v38 = swift_slowAlloc();
    OUTLINED_FUNCTION_4_3();
    v39 = swift_slowAlloc();
    *__dst = v39;
    *v38 = 136315138;
    v40 = 0xE700000000000000;
    v41 = v39;
    switch(*(v3 + 1136))
    {
      case 1:
        v42 = 0x6B726F7774656ELL;
        goto LABEL_44;
      case 2:
        v40 = 0xE400000000000000;
        v42 = 1919247728;
        goto LABEL_44;
      case 3:
        v40 = 0xE300000000000000;
        v42 = 7368560;
LABEL_44:
        v99 = v42;
        break;
      default:
        break;
    }

    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v40, __dst);

    *(v38 + 4) = v43;
    _os_log_impl(&dword_223515000, v34, v35, "Background Connection - Start. Selected method: %s.", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
    v44 = OUTLINED_FUNCTION_7_2();
    MEMORY[0x223DE38F0](v44);
    v45 = OUTLINED_FUNCTION_2_0();
    MEMORY[0x223DE38F0](v45);
  }

  v46 = *(v3 + 1136);
  v47 = ConnectionMethod.communicationProtocolClass(for:)(*(v3 + 48));
  v49 = v48;
  v50 = swift_allocObject();
  v51 = *(v3 + 32);
  v52 = *(v49 + 8);
  v50[5] = v47;
  v50[6] = v49;
  __swift_allocate_boxed_opaque_existential_1(v50 + 2);
  v53 = v51;

  v88 = v53;
  v52(v3, &protocol witness table for BackgroundConnection);
  v96 = v50;
  outlined init with copy of RPCOspreyConnectionProtocol((v50 + 2), __dst);
  swift_beginAccess();
  outlined assign with take of CommunicationProtocol?(__dst, v3 + 1096);
  swift_endAccess();
  outlined init with copy of MessageCenterBrowserProtocol?(v3 + 1096, v113, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
  if (v114)
  {
    outlined init with copy of RPCOspreyConnectionProtocol(v113, __dst);
    outlined destroy of NetworkConnectionProtocol?(v113, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
    v54 = *&__dst[24];
    v55 = *&__dst[32];
    __swift_project_boxed_opaque_existential_1(__dst, *&__dst[24]);
    (*(v55 + 88))(*(v3 + 1136) != 0, v54, v55);
    __swift_destroy_boxed_opaque_existential_0(__dst);
  }

  else
  {
    outlined destroy of NetworkConnectionProtocol?(v113, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
  }

  OUTLINED_FUNCTION_95_1(__dst);
  memcpy(v111, (v3 + 40), sizeof(v111));
  v56 = __dst[96];
  v110[0] = *(v3 + 137);
  *(v110 + 7) = *(v3 + 144);
  v109[0] = *(v3 + 153);
  *(v109 + 15) = *(v3 + 168);
  memcpy(v108, (v3 + 192), sizeof(v108));
  v98 = *&__dst[320];
  v100 = *&__dst[336];
  v57 = *&__dst[344];
  v58 = *&__dst[352];
  v59 = *&__dst[360];
  v60 = *&__dst[368];
  v61 = *&__dst[376];
  v62 = *&__dst[384];
  v63 = *&__dst[392];
  memcpy(v107, (v3 + 440), sizeof(v107));
  if (*(v3 + 1136))
  {
    outlined init with copy of ConnectionConfiguration(__dst, v106);
    v97 = v60;
    v64 = v61;
  }

  else
  {
    *__src = *&__dst[320];
    *&__src[8] = *&__dst[328];
    *&__src[16] = *&__dst[336];
    *&__src[24] = *&__dst[344];
    *&__src[32] = *&__dst[352];
    *&__src[40] = *&__dst[360];
    *&__src[48] = *&__dst[368];
    *&__src[56] = *&__dst[376];
    *&__src[64] = *&__dst[384];
    *&__src[72] = *&__dst[392];
    outlined init with copy of ConnectionConfiguration(__dst, v106);
    outlined destroy of NetworkConnectionProtocol?(__src, &_s11SiriNetwork16ConnectionPolicyVSgMd, &_s11SiriNetwork16ConnectionPolicyVSgMR);
    v98 = 0uLL;
    v100 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v97 = 0;
    v64 = 0;
    v62 = 0;
    v63 = 0;
  }

  if (__dst[98])
  {
    v65 = v56;
  }

  else
  {
    v65 = 1;
  }

  v66 = *(v3 + 1136) == 3;
  v89 = ConnectionMethod.providerClass(for:)(*__dst);
  v87 = v67;
  memcpy(v106, v111, 0x60uLL);
  v91 = v65;
  v92 = v66;
  v106[96] = v65;
  *&v106[97] = v110[0];
  *&v106[104] = *(v110 + 7);
  v106[112] = v66;
  *&v106[113] = v109[0];
  *&v106[128] = *(v109 + 15);
  *&v106[144] = 0x4056800000000000;
  memcpy(&v106[152], v108, 0xA8uLL);
  *&v106[320] = v98;
  *&v106[336] = v100;
  v93 = v57;
  *&v94 = v58;
  *&v106[344] = v57;
  *&v106[352] = v58;
  *(&v94 + 1) = v59;
  v95 = v64;
  *&v106[360] = v59;
  *&v106[368] = v97;
  *&v106[376] = v64;
  *&v106[384] = v62;
  v90 = v63;
  *&v106[392] = v63;
  memcpy(&v106[400], v107, 0x74uLL);
  memcpy(__src, v106, sizeof(__src));
  v68 = *(v3 + 1144);
  v69 = *(v3 + 1176);
  v70 = *(v87 + 448);
  outlined init with copy of ConnectionConfiguration(v106, v102);
  v71 = v68;
  v72 = v70(__src, v88, v68, v69, v89, v87);
  v73 = *(v3 + 1080);
  *(v3 + 1080) = v72;
  *(v3 + 1088) = v87;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v101 = 0;
  outlined init with copy of MessageCenterBrowserProtocol?(v3 + 1096, __src, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
  if (*&__src[24])
  {
    v74 = v106[113];
    outlined init with copy of RPCOspreyConnectionProtocol(__src, v102);
    outlined destroy of NetworkConnectionProtocol?(__src, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
    v75 = v103;
    v76 = v104;
    __swift_project_boxed_opaque_existential_1(v102, v103);
    v77 = (*(v76 + 96))(&v101, v74, v75, v76);
    __swift_destroy_boxed_opaque_existential_0(v102);
  }

  else
  {
    outlined destroy of NetworkConnectionProtocol?(__src, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
    v77 = 0;
  }

  v78 = *(v87 + 128);
  v79 = swift_unknownObjectRetain();
  v78(v79, &protocol witness table for BackgroundConnection, v89, v87);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v81 = Strong;
    (*(v87 + 168))(__src, v89, v87);
    specialized Connection.willStartConnection(_:type:)(v3, __src[0], v81);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_7_1();
  v82 = swift_allocObject();
  swift_weakInit();
  memcpy(v115, v111, 0x60uLL);
  LOBYTE(v115[6]) = v65;
  *(&v115[6] + 1) = v110[0];
  *(&v115[6] + 1) = *(v110 + 7);
  LOBYTE(v115[7]) = v92;
  *(&v115[7] + 1) = v109[0];
  v115[8] = *(v109 + 15);
  *&v115[9] = 0x4056800000000000;
  memcpy(&v115[9] + 8, v108, 0xA8uLL);
  v115[20] = v98;
  *&v115[21] = v100;
  *(&v115[21] + 1) = v93;
  v115[22] = v94;
  *&v115[23] = v97;
  *(&v115[23] + 1) = v95;
  *&v115[24] = v62;
  *(&v115[24] + 1) = v90;
  memcpy(&v115[25], v107, 0x74uLL);
  v83 = v101;
  v84 = swift_allocObject();
  v84[2] = v82;
  v84[3] = v72;
  v84[4] = v87;
  v84[5] = v96;
  memcpy(v84 + 6, v115, 0x204uLL);
  v84[71] = v77;
  v84[72] = v83;
  v85 = *(v87 + 456);
  v86 = v77;
  swift_unknownObjectRetain_n();

  outlined init with copy of ConnectionConfiguration(v115, __src);
  v85(v77, partial apply for specialized closure #2 in BackgroundConnection.start(proposedFallbackMethod:allowFallbackToNewMethod:), v84, v89, v87);

  swift_unknownObjectRelease_n();
  memcpy(__src, v111, 0x60uLL);
  __src[96] = v91;
  *&__src[97] = v110[0];
  *&__src[104] = *(v110 + 7);
  __src[112] = v92;
  *&__src[113] = v109[0];
  *&__src[128] = *(v109 + 15);
  *&__src[144] = 0x4056800000000000;
  memcpy(&__src[152], v108, 0xA8uLL);
  *&__src[320] = v98;
  *&__src[336] = v100;
  *&__src[344] = v93;
  *&__src[352] = v94;
  *&__src[368] = v97;
  *&__src[376] = v95;
  *&__src[384] = v62;
  *&__src[392] = v90;
  memcpy(&__src[400], v107, 0x74uLL);
  outlined destroy of ConnectionConfiguration(__src);
}

uint64_t sub_22353392C()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_223533960()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_223533998()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();
  v3 = *(v0 + 40);

  v4 = *(v0 + 72);

  v5 = *(v0 + 88);

  v6 = *(v0 + 104);

  v7 = *(v0 + 120);

  v8 = *(v0 + 136);

  v9 = *(v0 + 208);

  v10 = *(v0 + 224);

  v11 = *(v0 + 240);

  if (*(v0 + 440))
  {
    v12 = *(v0 + 376);

    v13 = *(v0 + 440);
  }

  if (*(v0 + 456) != 1)
  {

    v14 = *(v0 + 472);

    v15 = *(v0 + 496);

    v16 = *(v0 + 512);

    v17 = *(v0 + 536);
  }

  return MEMORY[0x2821FE8E8](v0, 584, 7);
}

uint64_t storeEnumTagSinglePayload for ConnectionPolicy(uint64_t result, int a2, int a3)
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
      *(result + 72) = (a2 - 1);
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

uint64_t storeEnumTagSinglePayload for ConnectionPolicyRoute(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 114) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 114) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t ConnectionPolicyRoute.routeHost.getter()
{
  v1 = v0[7];
  v2 = v0[8];
  if (v0[6])
  {
    v3 = v0[5];
    v4 = v0[6];

    if (AFIsInternalInstall())
    {
      return v3;
    }

    v5._countAndFlagsBits = OUTLINED_FUNCTION_4_24();
    if (String.hasSuffix(_:)(v5))
    {
      return v3;
    }

    v6._countAndFlagsBits = OUTLINED_FUNCTION_2_28();
    if (String.hasPrefix(_:)(v6))
    {
      return v3;
    }
  }

  if (!v2 || (, (AFIsInternalInstall() & 1) != 0) || (v7._countAndFlagsBits = OUTLINED_FUNCTION_4_24(), String.hasSuffix(_:)(v7)))
  {
  }

  else
  {
    v9._countAndFlagsBits = OUTLINED_FUNCTION_2_28();
    v10 = String.hasPrefix(_:)(v9);

    if (!v10)
    {

      return 0;
    }
  }

  return v1;
}

uint64_t closure #1 in Connection.scheduleBackgroundConnection(_:after:)(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v51 = *(v8 - 8);
  v52 = v8;
  v9 = *(v51 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  v14 = *(v13 + 8);
  MEMORY[0x28223BE20](v12);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchTime();
  v50 = *(v17 - 8);
  v18 = *(v50 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v49 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v53 = &v42 - v21;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v23 = result;
    v46 = v11;
    v47 = v12;
    swift_beginAccess();
    outlined init with copy of ConnectionPolicyRoute(a2, v55);
    specialized Set._Variant.insert(_:)();
    memcpy(v56, v55, 0x72uLL);
    swift_endAccess();
    outlined destroy of ConnectionPolicyRoute(v56);
    swift_beginAccess();

    specialized Set._Variant.insert(_:)();
    swift_endAccess();

    swift_beginAccess();
    outlined init with copy of ConnectionPolicyRoute(a2, v55);
    specialized Set._Variant.insert(_:)();
    memcpy(__dst, v55, 0x72uLL);
    swift_endAccess();
    outlined destroy of ConnectionPolicyRoute(__dst);
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.siriNetwork);
    outlined init with copy of ConnectionPolicyRoute(a2, v55);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    outlined destroy of ConnectionPolicyRoute(a2);
    v27 = os_log_type_enabled(v25, v26);
    v48 = v17;
    if (v27)
    {
      v43 = a3;
      v44 = v16;
      v45 = v13;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v54 = v29;
      *v28 = 136315138;
      v30 = a2[1];
      if (v30)
      {
        v55[0] = *a2;
        v55[1] = v30;

        v31 = String.init<A>(describing:)();
        v33 = v32;
      }

      else
      {
        v33 = 0xE700000000000000;
        v31 = 0x6E776F6E6B6E75;
      }

      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v54);

      *(v28 + 4) = v34;
      _os_log_impl(&dword_223515000, v25, v26, "Connection - Start: Background Connection. Scheduled route %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x223DE38F0](v29, -1, -1);
      MEMORY[0x223DE38F0](v28, -1, -1);

      v16 = v44;
      v13 = v45;
      v17 = v48;
      a3 = v43;
    }

    else
    {
    }

    v35 = swift_allocObject();
    v35[2] = v23;
    memcpy(v35 + 3, a2, 0x72uLL);
    v35[18] = a3;
    v35[19] = a1;
    if (a4 <= 0.0)
    {
      outlined init with copy of ConnectionPolicyRoute(a2, v55);

      v41 = v23;

      closure #1 in closure #1 in Connection.scheduleBackgroundConnection(_:after:)(v41, a2, a3);
    }

    else
    {
      v44 = *&v23[OBJC_IVAR___SNConnectionInternal_connectionQueue];
      outlined init with copy of ConnectionPolicyRoute(a2, v55);

      v45 = v23;

      v36 = v49;
      static DispatchTime.now()();
      + infix(_:_:)();
      v50 = *(v50 + 8);
      (v50)(v36, v17);
      v55[4] = partial apply for closure #1 in closure #1 in Connection.scheduleBackgroundConnection(_:after:);
      v55[5] = v35;
      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 1107296256;
      v55[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v55[3] = &block_descriptor_180;
      v37 = _Block_copy(v55);

      static DispatchQoS.unspecified.getter();
      v54 = MEMORY[0x277D84F90];
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      v38 = v46;
      v39 = v52;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v40 = v53;
      MEMORY[0x223DE2440](v53, v16, v38, v37);
      _Block_release(v37);

      (*(v51 + 8))(v38, v39);
      (*(v13 + 1))(v16, v47);
      (v50)(v40, v48);
    }
  }

  return result;
}

uint64_t sub_22353433C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 72);

  v4 = *(v0 + 88);

  v5 = *(v0 + 112);

  v6 = *(v0 + 144);

  v7 = *(v0 + 152);

  return MEMORY[0x2821FE8E8](v0, 160, 7);
}

void OUTLINED_FUNCTION_88()
{

  JUMPOUT(0x223DE2510);
}

void ConnectionConfiguration.hash(into:)(void *a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 24);
  v5 = *(v1 + 40);
  v26 = *(v1 + 16);
  v27 = *(v1 + 32);
  v6 = *(v1 + 56);
  v30 = *(v1 + 48);
  v31 = *(v1 + 72);
  v28 = *(v1 + 64);
  v29 = *(v1 + 80);
  v32 = *(v1 + 88);
  v33 = *(v1 + 96);
  v34 = *(v1 + 97);
  v35 = *(v1 + 98);
  v36 = *(v1 + 113);
  v37 = *(v1 + 114);
  v38 = *(v1 + 128);
  v18 = *(v1 + 120);
  v19 = *(v1 + 208);
  v39 = *(v1 + 201);
  v40 = *(v1 + 216);
  v20 = *(v1 + 224);
  v21 = *(v1 + 240);
  v41 = *(v1 + 232);
  v42 = *(v1 + 248);
  v22 = *(v1 + 256);
  v23 = *(v1 + 272);
  v43 = *(v1 + 264);
  v44 = *(v1 + 280);
  v45 = *(v1 + 312);
  v46 = *(v1 + 313);
  v7 = *(v1 + 392);
  v24 = *(v1 + 304);
  v25 = *(v1 + 400);
  v8 = *(v1 + 408);
  v47 = *(v1 + 416);
  v9 = *(v1 + 424);
  MEMORY[0x223DE2980](*v1);
  MEMORY[0x223DE2980](v3);
  if (v4)
  {
    OUTLINED_FUNCTION_1_11();
    String.hash(into:)();
  }

  else
  {
    OUTLINED_FUNCTION_2_8();
  }

  if (v5)
  {
    OUTLINED_FUNCTION_1_11();
    String.hash(into:)();
  }

  else
  {
    OUTLINED_FUNCTION_2_8();
  }

  v10 = v8;
  if (v8 != 1 && v9)
  {

    v11 = v32;
    goto LABEL_11;
  }

  v11 = v32;
  if (v6)
  {
LABEL_11:
    OUTLINED_FUNCTION_1_11();
    String.hash(into:)();

    if (v31)
    {
      goto LABEL_12;
    }

LABEL_15:
    OUTLINED_FUNCTION_2_8();
    if (v11)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  OUTLINED_FUNCTION_2_8();
  if (!v31)
  {
    goto LABEL_15;
  }

LABEL_12:
  OUTLINED_FUNCTION_1_11();
  String.hash(into:)();
  if (v11)
  {
LABEL_13:
    OUTLINED_FUNCTION_1_11();
    String.hash(into:)();
    goto LABEL_17;
  }

LABEL_16:
  OUTLINED_FUNCTION_2_8();
LABEL_17:
  Hasher._combine(_:)(v33);
  Hasher._combine(_:)(v34);
  Hasher._combine(_:)(v35);
  Hasher._combine(_:)(v36);
  Hasher._combine(_:)(v37);
  if (v38)
  {
    OUTLINED_FUNCTION_2_8();
  }

  else
  {
    OUTLINED_FUNCTION_1_11();
    v12 = OUTLINED_FUNCTION_3_7(v18);
    MEMORY[0x223DE29A0](v12);
  }

  Hasher._combine(_:)(v39);
  if (v40)
  {
    OUTLINED_FUNCTION_2_8();
  }

  else
  {
    OUTLINED_FUNCTION_1_11();
    v13 = OUTLINED_FUNCTION_3_7(v19);
    MEMORY[0x223DE29A0](v13);
  }

  if (v41)
  {
    OUTLINED_FUNCTION_2_8();
  }

  else
  {
    OUTLINED_FUNCTION_1_11();
    v14 = OUTLINED_FUNCTION_3_7(v20);
    MEMORY[0x223DE29A0](v14);
  }

  if (v42)
  {
    OUTLINED_FUNCTION_2_8();
  }

  else
  {
    OUTLINED_FUNCTION_1_11();
    MEMORY[0x223DE2980](v21);
  }

  if (v43)
  {
    OUTLINED_FUNCTION_2_8();
  }

  else
  {
    OUTLINED_FUNCTION_1_11();
    v15 = OUTLINED_FUNCTION_3_7(v22);
    MEMORY[0x223DE29A0](v15);
  }

  if (v44)
  {
    OUTLINED_FUNCTION_2_8();
  }

  else
  {
    OUTLINED_FUNCTION_1_11();
    v16 = OUTLINED_FUNCTION_3_7(v23);
    MEMORY[0x223DE29A0](v16);
  }

  if (v45)
  {
    OUTLINED_FUNCTION_2_8();
  }

  else
  {
    OUTLINED_FUNCTION_1_11();
    v17 = OUTLINED_FUNCTION_3_7(v24);
    MEMORY[0x223DE29A0](v17);
  }

  Hasher._combine(_:)(v46);
  if (v7)
  {
    memcpy(__dst, (v1 + 320), 0x48uLL);
    __dst[9] = v7;
    OUTLINED_FUNCTION_1_11();
    memcpy(v49, (v1 + 320), 0x48uLL);
    v49[9] = v7;
    outlined init with copy of ConnectionPolicy(v49, v50);
    ConnectionPolicy.hash(into:)(a1);
    memcpy(v50, __dst, 0x50uLL);
    outlined destroy of ConnectionPolicy(v50);
  }

  else
  {
    OUTLINED_FUNCTION_2_8();
  }

  if (v10 == 1)
  {
    OUTLINED_FUNCTION_2_8();
  }

  else
  {
    memcpy(&__dst[4], (v1 + 432), 0x52uLL);
    __dst[0] = v25;
    __dst[1] = v10;
    __dst[2] = v47;
    __dst[3] = v9;
    OUTLINED_FUNCTION_1_11();
    v49[0] = v25;
    v49[1] = v10;
    v49[2] = v47;
    v49[3] = v9;
    memcpy(&v49[4], (v1 + 432), 0x52uLL);
    outlined init with copy of ConnectionPolicyRoute(v49, v50);
    ConnectionPolicyRoute.hash(into:)();
    memcpy(v50, __dst, 0x72uLL);
    outlined destroy of ConnectionPolicyRoute(v50);
  }
}

uint64_t ConnectionPolicy.hash(into:)(void *a1)
{
  v2 = v1;
  v4 = *(v2 + 16);
  v5 = *(v2 + 17);
  v6 = *(v2 + 18);
  v7 = *(v2 + 19);
  v8 = *(v2 + 20);
  v9 = *(v2 + 21);
  v10 = v2[3];
  v11 = *(v2 + 32);
  v12 = v2[5];
  v25 = v12;
  v26 = v2[7];
  v27 = *(v2 + 48);
  v28 = *(v2 + 64);
  v29 = v2[9];
  if (v2[1])
  {
    v24 = *(v2 + 16);
    v13 = *(v2 + 17);
    v14 = *(v2 + 18);
    v15 = *(v2 + 19);
    v16 = *(v2 + 20);
    v17 = *(v2 + 21);
    v18 = *(v2 + 32);
    v19 = v2[3];
    v20 = *v2;
    Hasher._combine(_:)(1u);
    v10 = v19;
    v11 = v18;
    v9 = v17;
    v8 = v16;
    v7 = v15;
    v6 = v14;
    v5 = v13;
    v4 = v24;
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  if (v11)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if ((v10 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v21 = v10;
    }

    else
    {
      v21 = 0;
    }

    MEMORY[0x223DE29A0](v21);
  }

  if (v27)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x223DE2980](v25);
  }

  if (v28)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if ((v26 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v22 = v26;
    }

    else
    {
      v22 = 0;
    }

    MEMORY[0x223DE29A0](v22);
  }

  return specialized Set.hash(into:)(a1, v29);
}

uint64_t specialized Set.hash(into:)(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  Hasher._finalize()();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = 0; v5; v8 ^= v13)
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = (*(a2 + 48) + 120 * (v11 | (v10 << 6)));
    memcpy(v16, v12, 0x72uLL);
    memcpy(v15, v12, sizeof(v15));
    Hasher.init(_seed:)();
    outlined init with copy of ConnectionPolicyRoute(v16, &v14);
    ConnectionPolicyRoute.hash(into:)();
    v13 = Hasher._finalize()();
    result = outlined destroy of ConnectionPolicyRoute(v16);
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x223DE2980](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

BOOL static ConnectionPolicyRoute.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  v13 = *(a1 + 80);
  v12 = *(a1 + 88);
  v14 = *(a1 + 96);
  v15 = *(a1 + 104);
  v16 = *(a1 + 112);
  v17 = *(a1 + 113);
  v19 = *(a2 + 8);
  v18 = *(a2 + 16);
  v20 = *(a2 + 24);
  v100 = *(a2 + 32);
  v22 = *(a2 + 40);
  v21 = *(a2 + 48);
  v23 = *(a2 + 56);
  v24 = *(a2 + 64);
  v25 = *(a2 + 72);
  v26 = *(a2 + 80);
  v27 = *(a2 + 88);
  v28 = *(a2 + 96);
  v29 = *(a2 + 104);
  v30 = *(a2 + 112);
  v31 = *(a2 + 113);
  if (v3)
  {
    if (!v19)
    {
      return 0;
    }

    v99 = *(a2 + 16);
    if (*a1 != *a2 || v3 != v19)
    {
      v91 = *(a1 + 40);
      v93 = *(a1 + 48);
      v78 = *(a1 + 80);
      v82 = *(a2 + 64);
      v75 = *(a2 + 96);
      v85 = *(a2 + 112);
      v69 = *(a1 + 112);
      v72 = *(a1 + 96);
      v65 = *(a2 + 113);
      v33 = *(a1 + 113);
      v67 = *(a2 + 88);
      v34 = *(a1 + 88);
      v35 = *(a2 + 80);
      v97 = *(a1 + 72);
      v36 = *(a1 + 56);
      v95 = *(a1 + 64);
      v37 = *(a2 + 72);
      v38 = *(a2 + 56);
      v39 = *(a2 + 48);
      v89 = *(a2 + 40);
      v40 = *(a1 + 32);
      v64 = *(a1 + 16);
      v41 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v5 = v40;
      v22 = v89;
      v7 = v91;
      v21 = v39;
      v8 = v93;
      v10 = v95;
      v23 = v38;
      v25 = v37;
      v13 = v78;
      v24 = v82;
      v9 = v36;
      v11 = v97;
      v26 = v35;
      v12 = v34;
      v27 = v67;
      v17 = v33;
      v31 = v65;
      v16 = v69;
      v14 = v72;
      v30 = v85;
      v28 = v75;
      if ((v41 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v99 = *(a2 + 16);
    if (v19)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (!v20)
    {
      return 0;
    }

    if (v4 == v99 && v6 == v20)
    {
      if (v5 != v100)
      {
        return 0;
      }
    }

    else
    {
      v66 = v5;
      v68 = v21;
      v90 = v22;
      v92 = v7;
      v94 = v8;
      v96 = v10;
      v79 = v26;
      v83 = v23;
      v70 = v25;
      v73 = v9;
      v98 = v11;
      v86 = v12;
      v76 = v17;
      v43 = _stringCompareWithSmolCheck(_:_:expecting:)();
      result = 0;
      if ((v43 & 1) == 0)
      {
        return result;
      }

      v21 = v68;
      v17 = v76;
      v23 = v83;
      v12 = v86;
      v26 = v79;
      v11 = v98;
      v9 = v73;
      v8 = v94;
      v10 = v96;
      v25 = v70;
      v22 = v90;
      v7 = v92;
      if (v66 != v100)
      {
        return result;
      }
    }
  }

  else
  {
    result = 0;
    if (v20 || v5 != v100)
    {
      return result;
    }
  }

  if (v8)
  {
    if (!v21)
    {
      return 0;
    }

    if (v7 != v22 || v8 != v21)
    {
      v87 = v30;
      v77 = v17;
      v46 = v12;
      v80 = v26;
      v84 = v24;
      v47 = v11;
      v74 = v9;
      v48 = v10;
      v71 = v25;
      v49 = v23;
      v50 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v23 = v49;
      v25 = v71;
      v10 = v48;
      v9 = v74;
      v11 = v47;
      v26 = v80;
      v24 = v84;
      v12 = v46;
      v17 = v77;
      v30 = v87;
      if ((v50 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v21)
  {
    return 0;
  }

  if (v10)
  {
    if (!v24)
    {
      return 0;
    }

    if (v9 == v23 && v10 == v24)
    {
      if (v11 != v25)
      {
        return 0;
      }
    }

    else
    {
      v52 = v25;
      v53 = v11;
      v81 = v26;
      v88 = v12;
      v54 = v30;
      v55 = v17;
      v56 = _stringCompareWithSmolCheck(_:_:expecting:)();
      result = 0;
      if ((v56 & 1) == 0)
      {
        return result;
      }

      v17 = v55;
      v30 = v54;
      v12 = v88;
      v26 = v81;
      if ((v53 ^ v52))
      {
        return result;
      }
    }
  }

  else
  {
    result = 0;
    if (v24 || ((v11 ^ v25) & 1) != 0)
    {
      return result;
    }
  }

  if (v12)
  {
    if (!v27)
    {
      return 0;
    }

    if (v13 != v26 || v12 != v27)
    {
      v58 = v30;
      v59 = v17;
      v60 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v17 = v59;
      v30 = v58;
      if ((v60 & 1) == 0)
      {
        return 0;
      }
    }

    goto LABEL_54;
  }

  if (v27)
  {
    return 0;
  }

LABEL_54:
  if (v14 == 3)
  {
    if (v28 != 3)
    {
      return 0;
    }
  }

  else if (v28 == 3 || v14 != v28)
  {
    return 0;
  }

  if (v16)
  {
    if (!v30)
    {
      return 0;
    }
  }

  else
  {
    if (v15 == v29)
    {
      v62 = v30;
    }

    else
    {
      v62 = 1;
    }

    if (v62)
    {
      return 0;
    }
  }

  if (v17 == 5)
  {
    return v31 == 5;
  }

  else
  {
    return v31 != 5 && v17 == v31;
  }
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySiSay11SiriNetwork21ConnectionPolicyRouteVGGMd, &_ss18_DictionaryStorageCySiSay11SiriNetwork21ConnectionPolicyRouteVGGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

  v33 = v3;
  v9 = 0;
  v10 = (v5 + 64);
  v11 = 1 << *(v5 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = result + 64;
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v32 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = *(v5 + 56);
    v21 = *(*(v5 + 48) + 8 * v19);
    v22 = *(v20 + 8 * v19);
    if ((a2 & 1) == 0)
    {
      v23 = *(v20 + 8 * v19);
    }

    result = MEMORY[0x223DE2960](*(v8 + 40), v21);
    v24 = -1 << *(v8 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    *(*(v8 + 48) + 8 * v27) = v21;
    *(*(v8 + 56) + 8 * v27) = v22;
    ++*(v8 + 16);
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *(v15 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

void closure #1 in NetworkManager.startMonitoringNetwork(_:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = OBJC_IVAR___SNNetworkManagerInternal_pathEvaluator;
    if (*&Strong[OBJC_IVAR___SNNetworkManagerInternal_pathEvaluator])
    {
    }

    else
    {
      if (one-time initialization token for siriNetwork != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, static Logger.siriNetwork);

      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        aBlock[0] = v12;
        *v11 = 136315138;
        *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, aBlock);
        _os_log_impl(&dword_223515000, v9, v10, "NetworkManager - PathEvaluator: Start monitoring network %s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v12);
        MEMORY[0x223DE38F0](v12, -1, -1);
        MEMORY[0x223DE38F0](v11, -1, -1);
      }

      v13 = String.utf8CString.getter();
      nw_endpoint_create_host((v13 + 32), "443");

      evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
      v15 = *&v6[OBJC_IVAR___SNNetworkManagerInternal_queue];
      v16 = swift_allocObject();
      *(v16 + 16) = v6;
      aBlock[4] = partial apply for closure #1 in closure #1 in NetworkManager.startMonitoringNetwork(_:);
      aBlock[5] = v16;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_object?) -> ();
      aBlock[3] = &block_descriptor_27;
      v17 = _Block_copy(aBlock);
      v18 = v15;
      v19 = v6;

      nw_path_evaluator_set_update_handler();
      swift_unknownObjectRelease();
      _Block_release(v17);

      v20 = *&v6[v7];
      *&v6[v7] = evaluator_for_endpoint;

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_223535698()
{
  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

void closure #1 in NetworkAnalytics.setConnectionProvider(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (a3)
    {
      type metadata accessor for NetworkAnalytics(0);
      v6 = static NetworkAnalytics.netProvider(from:)();
    }

    else
    {
      v6 = 0;
    }

    v7 = &v5[OBJC_IVAR___SNNetworkAnalyticsInternal_connectionProvider];
    *v7 = v6;
    v7[4] = a3 == 0;
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.siriNetwork);
    v9 = v5;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136315138;
      if (v9[OBJC_IVAR___SNNetworkAnalyticsInternal_connectionProvider + 4])
      {
        v14 = 0xE300000000000000;
        v15 = 7104878;
      }

      else
      {
        v18 = *&v9[OBJC_IVAR___SNNetworkAnalyticsInternal_connectionProvider];
        type metadata accessor for NETSchemaNETProvider(0);
        v15 = String.init<A>(describing:)();
        v14 = v16;
      }

      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, &v19);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_223515000, v10, v11, "Network Analytics: ConnectionProvider set: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x223DE38F0](v13, -1, -1);
      MEMORY[0x223DE38F0](v12, -1, -1);
    }
  }
}

void static ConnectionPolicyRoute.maxTimeoutFromRoutes(_:)(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 16);
  v3 = a1 + 144;
  v4 = MEMORY[0x277D84F90];
LABEL_2:
  v5 = (v3 + 120 * v1);
  while (1)
  {
    if (v2 == v1)
    {
      specialized Sequence<>.max()(v4);

      return;
    }

    if (v1 >= v2)
    {
      break;
    }

    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_14;
    }

    v7 = *v5;
    v5 += 120;
    ++v1;
    if ((v7 & 1) == 0)
    {
      v8 = *(v5 - 16);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = *(v4 + 16);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v4 = v11;
      }

      v9 = *(v4 + 16);
      if (v9 >= *(v4 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v4 = v12;
      }

      *(v4 + 16) = v9 + 1;
      *(v4 + 8 * v9 + 32) = v8;
      v1 = v6;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

void specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)()
{
  OUTLINED_FUNCTION_6_11();
  if (v5)
  {
    OUTLINED_FUNCTION_1_13();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_8_7();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_11();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_12_4(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd, _ss23_ContiguousArrayStorageCySdGMR);
    v9 = OUTLINED_FUNCTION_16_6();
    v10 = _swift_stdlib_malloc_size(v9);
    *(v9 + 2) = v3;
    *(v9 + 3) = 2 * ((v10 - 32) / 8);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[8 * v3] <= v11)
    {
      memmove(v11, v12, 8 * v3);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 8 * v3);
  }
}

{
  OUTLINED_FUNCTION_6_11();
  if (v5)
  {
    OUTLINED_FUNCTION_1_13();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_8_7();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_11();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_3_10(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriNetwork21ConnectionPolicyRouteVGMd, &_ss23_ContiguousArrayStorageCy11SiriNetwork21ConnectionPolicyRouteVGMR);
    v9 = OUTLINED_FUNCTION_11_6();
    v10 = _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_4_9(v10);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = OUTLINED_FUNCTION_10_3();
  if (v1)
  {
    if (v9 != v0 || &v12[120 * v2] <= v11)
    {
      memmove(v11, v12, 120 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

{
  OUTLINED_FUNCTION_6_11();
  if (v5)
  {
    OUTLINED_FUNCTION_1_13();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_8_7();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_11();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_3_10(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriNetwork25ConnectionInterfaceReportVGMd, &_ss23_ContiguousArrayStorageCy11SiriNetwork25ConnectionInterfaceReportVGMR);
    v9 = OUTLINED_FUNCTION_11_6();
    v10 = _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_4_9(v10);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = OUTLINED_FUNCTION_10_3();
  if (v1)
  {
    if (v9 != v0 || &v12[296 * v2] <= v11)
    {
      memmove(v11, v12, 296 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

{
  OUTLINED_FUNCTION_6_11();
  if (v5)
  {
    OUTLINED_FUNCTION_1_13();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_8_7();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_11();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_3_10(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriNetwork24ConnectionTCPInfoMetricsVGMd, &_ss23_ContiguousArrayStorageCy11SiriNetwork24ConnectionTCPInfoMetricsVGMR);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    v9[2] = v2;
    v9[3] = 2 * ((v10 - 32) / 256);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = OUTLINED_FUNCTION_10_3();
  if (v1)
  {
    if (v9 != v0 || &v12[256 * v2] <= v11)
    {
      memmove(v11, v12, v2 << 8);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

{
  OUTLINED_FUNCTION_6_11();
  if (v5)
  {
    OUTLINED_FUNCTION_1_13();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_8_7();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_11();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_3_10(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v9 = OUTLINED_FUNCTION_16_6();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_7_9();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = OUTLINED_FUNCTION_10_3();
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

{
  OUTLINED_FUNCTION_6_11();
  if (v5)
  {
    OUTLINED_FUNCTION_1_13();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_8_7();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_11();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_3_10(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriNetwork24ConnectionEndpointReportVGMd, &_ss23_ContiguousArrayStorageCy11SiriNetwork24ConnectionEndpointReportVGMR);
    v9 = OUTLINED_FUNCTION_11_6();
    v10 = _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_4_9(v10);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = OUTLINED_FUNCTION_10_3();
  if (v1)
  {
    if (v9 != v0 || &v12[24 * v2] <= v11)
    {
      memmove(v11, v12, 24 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

{
  OUTLINED_FUNCTION_6_11();
  if (v5)
  {
    OUTLINED_FUNCTION_1_13();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_8_7();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_11();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_12_4(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriNetwork25ConnectionHandshakeReportVGMd, &_ss23_ContiguousArrayStorageCy11SiriNetwork25ConnectionHandshakeReportVGMR);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    *(v9 + 2) = v3;
    *(v9 + 3) = 2 * ((v10 - 32) / 48);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[48 * v3] <= v11)
    {
      memmove(v11, v12, 48 * v3);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

{
  OUTLINED_FUNCTION_6_11();
  if (v5)
  {
    OUTLINED_FUNCTION_1_13();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_8_7();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_11();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_3_10(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriNetwork26ConnectionResolutionReportVGMd, &_ss23_ContiguousArrayStorageCy11SiriNetwork26ConnectionResolutionReportVGMR);
    v9 = OUTLINED_FUNCTION_11_6();
    v10 = _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_4_9(v10);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = OUTLINED_FUNCTION_10_3();
  if (v1)
  {
    if (v9 != v0 || &v12[80 * v2] <= v11)
    {
      memmove(v11, v12, 80 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

{
  OUTLINED_FUNCTION_6_11();
  if (v5)
  {
    OUTLINED_FUNCTION_1_13();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_8_7();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_11();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_12_4(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
    v9 = OUTLINED_FUNCTION_16_6();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_7_9();
    *(v9 + 2) = v3;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v3] <= v11)
    {
      memmove(v11, v12, 16 * v3);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v3);
  }
}

uint64_t specialized Sequence<>.max()(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

void *static ConnectionPolicyRoute.prioritizedPOPRoutes(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = (a1 + 32);
  v3 = MEMORY[0x277D84F90];
  do
  {
    v4 = memcpy(__dst, v2, sizeof(__dst));
    if (__dst[113] == 4)
    {
      v12 = v3[2];
      OUTLINED_FUNCTION_15_9(v4, v5, v6, v7, v8, v9, v10, v11, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, __dst[0]);
      if (!swift_isUniquelyReferenced_nonNull_native() || v12 >= v3[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v3 = v13;
      }

      swift_arrayDestroy();
      v14 = v3[2];
      memmove(v3 + 19, v3 + 4, 120 * v14);
      v3[2] = v14 + 1;
      v15 = v3 + 4;
    }

    else
    {
      OUTLINED_FUNCTION_15_9(v4, v5, v6, v7, v8, v9, v10, v11, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, __dst[0]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = v3[2];
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v3 = v18;
      }

      v16 = v3[2];
      if (v16 >= v3[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v3 = v19;
      }

      v3[2] = v16 + 1;
      v15 = &v3[15 * v16 + 4];
    }

    memcpy(v15, __dst, 0x72uLL);
    v2 += 120;
    --v1;
  }

  while (v1);
  return v3;
}

uint64_t static ConnectionPolicyRoute.aceptableRoutes(_:)(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8;
    if (!v5)
    {
      break;
    }

LABEL_8:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = memcpy(__dst, (*(a1 + 48) + 120 * (v11 | (v8 << 6))), 0x72uLL);
    if (!__dst[6])
    {
      OUTLINED_FUNCTION_15_9(v12, v13, v14, v15, v16, v17, v18, v19, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, __dst[0]);
      goto LABEL_14;
    }

    v20 = __dst[5];
    OUTLINED_FUNCTION_15_9(v12, v13, v14, v15, v16, v17, v18, v19, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, __dst[0]);

    if (AFIsInternalInstall() & 1) != 0 || (OUTLINED_FUNCTION_9_13())
    {
      goto LABEL_21;
    }

    v21._countAndFlagsBits = OUTLINED_FUNCTION_2_28();
    String.hasPrefix(_:)(v21);
    OUTLINED_FUNCTION_2();
    if (v20)
    {
LABEL_22:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1);
        v9 = v42;
      }

      v25 = *(v9 + 16);
      v24 = *(v9 + 24);
      if (v25 >= v24 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v24 > 1, v25 + 1, 1);
        v9 = v42;
      }

      *(v9 + 16) = v25 + 1;
      result = memcpy((v9 + 120 * v25 + 32), __dst, 0x72uLL);
    }

    else
    {
LABEL_14:
      if (__dst[8])
      {

        if (AFIsInternalInstall() || (OUTLINED_FUNCTION_9_13() & 1) != 0 || (v22._countAndFlagsBits = OUTLINED_FUNCTION_2_28(), String.hasPrefix(_:)(v22)))
        {

LABEL_21:

          goto LABEL_22;
        }
      }

      result = outlined destroy of ConnectionPolicyRoute(__dst);
    }
  }

  while (1)
  {
    v8 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return v9;
    }

    v5 = *(v2 + 8 * v8);
    ++v10;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

Swift::Int specialized MutableCollection<>.sort(by:)(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 16);
  v5[0] = v2 + 32;
  v5[1] = v3;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v2;
  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3 - 16;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 16 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        if (*v9 >= v7)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 24);
        *(v9 + 16) = *v9;
        *v9 = v7;
        *(v9 + 8) = v10;
        v9 -= 16;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 16;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t ConnectionPolicyRoute.debugDescription.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = OUTLINED_FUNCTION_3_18();
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 48);
  v61 = *(v0 + 40);
  v63 = *(v0 + 56);
  v8 = *(v0 + 64);
  v82 = *(v0 + 72);
  v81[0] = *(v0 + 73);
  *(v9 + 11) = *(v0 + 76);
  v65 = *(v0 + 80);
  v48 = *(v0 + 88);
  v52 = *(v0 + 96);
  v80[0] = *(v0 + 97);
  *(v9 + 3) = *(v0 + 100);
  v60 = *(v0 + 104);
  v79 = *(v0 + 112);
  v58 = *(v0 + 113);
  v67[0] = 0x3A64496574756F72;
  v67[1] = v10;
  if (v1)
  {
    v77 = v2;
    v78 = v1;

    v3 = String.init<A>(describing:)();
    v12 = v11;
  }

  else
  {
    v12 = 0xE700000000000000;
  }

  MEMORY[0x223DE2180](v3, v12);

  v59 = v67[0];
  OUTLINED_FUNCTION_5_24();
  _StringGuts.grow(_:)(16);

  strcpy(v67, "connectionId: ");
  HIBYTE(v67[1]) = -18;
  if (v5)
  {
    v77 = v4;
    v78 = v5;

    v13 = String.init<A>(describing:)();
    v15 = v14;
  }

  else
  {
    v15 = 0xE700000000000000;
    v13 = OUTLINED_FUNCTION_3_18();
  }

  MEMORY[0x223DE2180](v13, v15);

  v56 = v67[0];
  v57 = v67[1];
  strcpy(v67, "priority: ");
  BYTE3(v67[1]) = 0;
  HIDWORD(v67[1]) = -369098752;
  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x223DE2180](v16);

  v54 = v67[0];
  v55 = v67[1];
  v77 = 0x736F486574756F72;
  v78 = 0xEB00000000203A74;
  v67[0] = v2;
  v67[1] = v1;
  v67[2] = v4;
  v67[3] = v5;
  v67[4] = v6;
  v67[5] = v61;
  v67[6] = v7;
  v67[7] = v63;
  v67[8] = v8;
  v68 = v82;
  *v69 = v81[0];
  *&v69[3] = *(v81 + 3);
  v70 = v65;
  v71 = v48;
  v72 = v52;
  *&v73[3] = *(v80 + 3);
  *v73 = v80[0];
  v74 = v60;
  v75 = v79;
  v76 = v58;
  ConnectionPolicyRoute.routeHost.getter();
  v17 = 0xE700000000000000;
  if (v18)
  {
    String.init<A>(describing:)();
    v20 = v19;
    OUTLINED_FUNCTION_4_6();
  }

  else
  {
    OUTLINED_FUNCTION_4_6();
    v21 = v4;
    v20 = 0xE700000000000000;
  }

  MEMORY[0x223DE2180](v21, v20);

  v50 = v77;
  v51 = v78;
  strcpy(v67, "cname: ");
  v67[1] = 0xE700000000000000;
  if (v7)
  {
    v77 = v61;
    v78 = v7;

    v22 = String.init<A>(describing:)();
    v17 = v23;
  }

  else
  {
    v22 = v4;
  }

  MEMORY[0x223DE2180](v22, v17);

  v49 = v67[0];
  v62 = v67[1];
  v67[0] = 0x203A74736F68;
  v67[1] = 0xE600000000000000;
  v24 = 0xE700000000000000;
  if (v8)
  {
    v77 = v63;
    v78 = v8;

    v25 = String.init<A>(describing:)();
    v27 = v26;
  }

  else
  {
    v25 = v4;
    v27 = 0xE700000000000000;
  }

  MEMORY[0x223DE2180](v25, v27);

  v28 = v67[1];
  v64 = v67[0];
  strcpy(v67, "mptcp: ");
  v67[1] = 0xE700000000000000;
  if (v82)
  {
    v29 = 1702195828;
  }

  else
  {
    v29 = 0x65736C6166;
  }

  if (v82)
  {
    v30 = 0xE400000000000000;
  }

  else
  {
    v30 = 0xE500000000000000;
  }

  MEMORY[0x223DE2180](v29, v30);

  v31 = v67[1];
  v47 = v67[0];
  strcpy(v67, "resolver: ");
  BYTE3(v67[1]) = 0;
  HIDWORD(v67[1]) = -369098752;
  if (v48)
  {
    v77 = v65;
    v78 = v48;

    v32 = String.init<A>(describing:)();
    v24 = v33;
  }

  else
  {
    v32 = v4;
  }

  MEMORY[0x223DE2180](v32, v24);

  v34 = v67[1];
  v66 = v67[0];
  OUTLINED_FUNCTION_5_24();
  _StringGuts.grow(_:)(20);

  v67[0] = 0xD000000000000012;
  v67[1] = 0x80000002235F9230;
  if (v52 == 3)
  {
    v35 = 0xE700000000000000;
    v36 = v4;
  }

  else
  {
    LOBYTE(v77) = v52;
    v36 = String.init<A>(describing:)();
    v35 = v37;
  }

  MEMORY[0x223DE2180](v36, v35);

  v38 = v67[1];
  v53 = v67[0];
  strcpy(v67, "timeout: ");
  WORD1(v67[1]) = 0;
  HIDWORD(v67[1]) = -385875968;
  if (v79)
  {
    v39 = 0xE700000000000000;
    v40 = v4;
  }

  else
  {
    v77 = v60;
    v40 = String.init<A>(describing:)();
    v39 = v41;
  }

  MEMORY[0x223DE2180](v40, v39);

  v42 = v67[0];
  v43 = v67[1];
  v67[0] = 0x203A65707974;
  v67[1] = 0xE600000000000000;
  if (v58 == 5)
  {
    v44 = 0xE700000000000000;
  }

  else
  {
    LOBYTE(v77) = v58;
    v4 = String.init<A>(describing:)();
    v44 = v45;
  }

  MEMORY[0x223DE2180](v4, v44);

  OUTLINED_FUNCTION_5_24();
  _StringGuts.grow(_:)(42);

  OUTLINED_FUNCTION_0_48();
  MEMORY[0x223DE2180](v56, v57);

  OUTLINED_FUNCTION_0_48();
  MEMORY[0x223DE2180](v54, v55);

  OUTLINED_FUNCTION_0_48();
  MEMORY[0x223DE2180](v50, v51);

  OUTLINED_FUNCTION_0_48();
  MEMORY[0x223DE2180](v49, v62);

  OUTLINED_FUNCTION_0_48();
  MEMORY[0x223DE2180](v64, v28);

  OUTLINED_FUNCTION_0_48();
  MEMORY[0x223DE2180](v47, v31);

  OUTLINED_FUNCTION_0_48();
  MEMORY[0x223DE2180](v66, v34);

  OUTLINED_FUNCTION_0_48();
  MEMORY[0x223DE2180](v53, v38);

  OUTLINED_FUNCTION_0_48();
  MEMORY[0x223DE2180](v42, v43);

  OUTLINED_FUNCTION_0_48();
  MEMORY[0x223DE2180](v67[0], v67[1]);

  return v59;
}

uint64_t NetworkManager.registerClient()(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = OUTLINED_FUNCTION_0_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_1();
  v24 = OUTLINED_FUNCTION_8_1();
  v12 = OUTLINED_FUNCTION_0_0(v24);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_1();
  v15 = *(v2 + OBJC_IVAR___SNNetworkManagerInternal_queue);
  OUTLINED_FUNCTION_7_1();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = a1;
  v29 = v16;
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v26 = v17;
  v27 = a2;
  v18 = _Block_copy(aBlock);
  v19 = v15;

  static DispatchQoS.unspecified.getter();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  OUTLINED_FUNCTION_3_0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v20 = OUTLINED_FUNCTION_6();
  MEMORY[0x223DE2460](v20);
  _Block_release(v18);

  (*(v9 + 8))(v3, v6);
  v21 = OUTLINED_FUNCTION_5_4();
  v22(v21);
}

uint64_t sub_223536A3C()
{
  MEMORY[0x223DE39C0](v0 + 16);
  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

id @nonobjc AnalyticsWorkspace.init(workspaceWithService:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = MEMORY[0x223DE2070]();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWorkspaceWithService_];

  return v4;
}

void type metadata accessor for WiFiClientType(uint64_t a1, unint64_t *a2)
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

void partial apply for closure #1 in NetworkAnalytics.setNetworkConnectionId(_:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_11_1(v0);
  v2 = *(v1 + 80);
  v3 = OUTLINED_FUNCTION_52_1();

  closure #1 in NetworkAnalytics.setNetworkConnectionId(_:)(v3, v4);
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2;
  v11 = *(*v8 + 16);
  v12 = *(*v8 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)(v11 + 1, a2, a3, a4, a5, a6, a7, a8, *&v22[0], SLOBYTE(v22[1]), *&v22[2], *&v22[3], *&v22[4], *&v22[5], *&v22[6], *&v22[7], *&v22[8], *&v22[9], *&v22[10], *&v22[11], *&v22[12], *&v22[13], *&v22[14], *&v22[15], *&v22[16], *&v22[17], *&v22[18], *&v22[19], *&v22[20], *&v22[21]);
      goto LABEL_10;
    }

    if (v12 <= v11)
    {
      specialized _NativeSet.copyAndResize(capacity:)(v11 + 1);
LABEL_10:
      v17 = *v8;
      v18 = *(*v8 + 40);
      Hasher.init(_seed:)();
      specialized BackgroundConnectionProtocol.hash(into:)(v27);
      v19 = Hasher._finalize()();
      v20 = ~(-1 << *(v17 + 32));
      while (1)
      {
        v9 = v19 & v20;
        if (((*(v17 + 56 + (((v19 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v20)) & 1) == 0)
        {
          goto LABEL_7;
        }

        type metadata accessor for BackgroundConnection();
        v21 = *(*(v17 + 48) + 8 * v9);
        memcpy(__dst, (v21 + 40), 0x204uLL);
        memcpy(__src, (v21 + 40), 0x204uLL);
        memcpy(v25, (a1 + 40), 0x204uLL);
        memcpy(v22, (a1 + 40), 0x204uLL);
        outlined init with copy of ConnectionConfiguration(__dst, v27);
        outlined init with copy of ConnectionConfiguration(v25, v27);
        LOBYTE(v21) = static ConnectionConfiguration.== infix(_:_:)(__src, v22);
        memcpy(v26, v22, 0x204uLL);
        outlined destroy of ConnectionConfiguration(v26);
        memcpy(v27, __src, 0x204uLL);
        outlined destroy of ConnectionConfiguration(v27);
        if (v21)
        {
          goto LABEL_15;
        }

        v19 = v9 + 1;
      }
    }

    specialized _NativeSet.copy()();
  }

LABEL_7:
  v13 = *v8;
  *(*v8 + 8 * (v9 >> 6) + 56) |= 1 << v9;
  *(*(v13 + 48) + 8 * v9) = a1;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
LABEL_15:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v16;
  }
}

unint64_t specialized _NativeSet._delete(at:)(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 48);
        v12 = 120 * v6;
        memcpy(__dst, (v11 + 120 * v6), 0x72uLL);
        v13 = *(v3 + 40);
        memcpy(v28, (v11 + 120 * v6), sizeof(v28));
        Hasher.init(_seed:)();
        outlined init with copy of ConnectionPolicyRoute(__dst, &v27);
        ConnectionPolicyRoute.hash(into:)();
        v14 = Hasher._finalize()();
        outlined destroy of ConnectionPolicyRoute(__dst);
        v15 = v14 & v7;
        if (v2 >= v10)
        {
          if (v15 >= v10 && v2 >= v15)
          {
LABEL_15:
            v18 = *(v3 + 48);
            v19 = (v18 + 120 * v2);
            v20 = (v18 + v12);
            v21 = v18 + v12 + 120;
            if (120 * v2 < v12 || v19 >= v21 || v2 != v6)
            {
              memmove(v19, v20, 0x78uLL);
              v2 = v6;
            }
          }
        }

        else if (v15 >= v10 || v2 >= v15)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v24 = *(v3 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v26;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        Hasher.init(_seed:)();

        v13 = NWConnection.identifier.getter();
        MEMORY[0x223DE29A0](v13);
        v14 = Hasher._finalize()();

        v15 = v14 & v7;
        if (v2 >= v10)
        {
          if (v15 >= v10 && v2 >= v15)
          {
LABEL_15:
            v18 = *(v3 + 48);
            v19 = (v18 + 8 * v2);
            v20 = (v18 + 8 * v6);
            if (v2 != v6 || v19 >= v20 + 1)
            {
              *v19 = *v20;
              v2 = v6;
            }
          }
        }

        else if (v15 >= v10 || v2 >= v15)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v22 = *(v3 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v24;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        outlined init with copy of MessageCenterEndpoint(*(v3 + 48) + 40 * v6, v28);
        v11 = *(v3 + 40);
        Hasher.init(_seed:)();
        v12 = v29;
        v13 = v30;
        __swift_project_boxed_opaque_existential_1(v28, v29);
        (*(v13 + 16))(v12, v13);
        if (v14)
        {
          Hasher._combine(_:)(1u);
          String.hash(into:)();
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        v15 = Hasher._finalize()();
        outlined destroy of MessageCenterEndpoint(v28);
        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 >= v10 && v2 >= v16)
          {
LABEL_18:
            v19 = *(v3 + 48);
            v20 = v19 + 40 * v2;
            v21 = (v19 + 40 * v6);
            if (v2 != v6 || v20 >= v21 + 40)
            {
              v23 = *v21;
              v24 = v21[1];
              *(v20 + 32) = *(v21 + 4);
              *v20 = v23;
              *(v20 + 16) = v24;
              v2 = v6;
            }
          }
        }

        else if (v16 >= v10 || v2 >= v16)
        {
          goto LABEL_18;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v25 = *(v3 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v27;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 32 * v6);
        v13 = *v12;
        v14 = v12[1];
        v15 = v12[2];
        v16 = v12[3];
        Hasher.init(_seed:)();

        String.hash(into:)();
        String.hash(into:)();
        v17 = Hasher._finalize()();

        v18 = v17 & v7;
        if (v2 >= v10)
        {
          if (v18 >= v10 && v2 >= v18)
          {
LABEL_15:
            v21 = *(v3 + 48);
            v22 = (v21 + 32 * v2);
            v23 = (v21 + 32 * v6);
            if (v2 != v6 || v22 >= v23 + 2)
            {
              v25 = v23[1];
              *v22 = *v23;
              v22[1] = v25;
              v2 = v6;
            }
          }
        }

        else if (v18 >= v10 || v2 >= v18)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v26 = *(v3 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v28;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        Hasher.init(_seed:)();

        specialized BackgroundConnectionProtocol.hash(into:)(v24);
        v13 = Hasher._finalize()();

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_15:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v21 = *(v3 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v23;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        outlined init with copy of AnyHashable(*(v3 + 48) + 40 * v6, v24);
        v11 = AnyHashable._rawHashValue(seed:)(*(v3 + 40));
        outlined destroy of AnyHashable(v24);
        v12 = v11 & v7;
        if (v2 >= v10)
        {
          if (v12 >= v10 && v2 >= v12)
          {
LABEL_15:
            v15 = *(v3 + 48);
            v16 = v15 + 40 * v2;
            v17 = (v15 + 40 * v6);
            if (v2 != v6 || v16 >= v17 + 40)
            {
              v19 = *v17;
              v20 = v17[1];
              *(v16 + 32) = *(v17 + 4);
              *v16 = v19;
              *(v16 + 16) = v20;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v10 || v2 >= v12)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v21 = *(v3 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v23;
    ++*(v3 + 36);
  }

  return result;
}

void closure #1 in NetworkAnalytics.setNetworkConnectionId(_:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v36 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v36 - v19;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v39 = v4;
    outlined init with copy of UUID?(a2, v20);
    v23 = OBJC_IVAR___SNNetworkAnalyticsInternal_networkConnectionId;
    swift_beginAccess();
    outlined assign with take of UUID?(v20, v22 + v23);
    swift_endAccess();
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.siriNetwork);
    v25 = v22;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v38 = v25;
      v28 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v40 = v37;
      *v28 = 136315138;
      outlined init with copy of UUID?(v22 + v23, v18);
      outlined init with copy of UUID?(v18, v15);
      if (__swift_getEnumTagSinglePayload(v15, 1, v3) == 1)
      {
        v29 = 0xE300000000000000;
        v30 = 7104878;
      }

      else
      {
        v31 = v39;
        (*(v39 + 32))(v10, v15, v3);
        (*(v31 + 16))(v8, v10, v3);
        v30 = String.init<A>(describing:)();
        v29 = v32;
        (*(v31 + 8))(v10, v3);
      }

      v33 = v38;
      outlined destroy of NetworkConnectionProtocol?(v18, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v29, &v40);

      *(v28 + 4) = v34;
      _os_log_impl(&dword_223515000, v26, v27, "Network Analytics: NetworkConnectionId set: %s", v28, 0xCu);
      v35 = v37;
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x223DE38F0](v35, -1, -1);
      MEMORY[0x223DE38F0](v28, -1, -1);
    }

    else
    {
    }
  }
}

void closure #1 in closure #1 in Connection.scheduleBackgroundConnection(_:after:)(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a1 + OBJC_IVAR___SNConnectionInternal_activeBackgroundConnection))
  {
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.siriNetwork);
    outlined init with copy of ConnectionPolicyRoute(a2, __dst);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    outlined destroy of ConnectionPolicyRoute(a2);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v32[0] = v8;
      *v7 = 136315138;
      v9 = a2[1];
      if (v9)
      {
        __dst[0] = *a2;
        __dst[1] = v9;

        v10 = String.init<A>(describing:)();
        v12 = v11;
      }

      else
      {
        v10 = 0x6E776F6E6B6E75;
        v12 = 0xE700000000000000;
      }

      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, v32);

      *(v7 + 4) = v23;
      _os_log_impl(&dword_223515000, v5, v6, "Connection - Start: Background Connection. Starting route %s cancelled. Race lost", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x223DE38F0](v8, -1, -1);
      MEMORY[0x223DE38F0](v7, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    specialized Set._Variant.remove(_:)(a2, v35);
    swift_endAccess();
    outlined destroy of NetworkConnectionProtocol?(v35, &_s11SiriNetwork21ConnectionPolicyRouteVSgMd, &_s11SiriNetwork21ConnectionPolicyRouteVSgMR);
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.siriNetwork);
    outlined init with copy of ConnectionPolicyRoute(a2, __dst);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    outlined destroy of ConnectionPolicyRoute(a2);

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v34[0] = v18;
      *v17 = 136315394;
      v19 = a2[1];
      if (v19)
      {
        __dst[0] = *a2;
        __dst[1] = v19;

        v20 = String.init<A>(describing:)();
        v22 = v21;
      }

      else
      {
        v20 = 0x6E776F6E6B6E75;
        v22 = 0xE700000000000000;
      }

      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v34);

      *(v17 + 4) = v24;
      *(v17 + 12) = 2080;
      memcpy(__dst, (a3 + 40), 0x204uLL);
      memcpy(v32, (a3 + 40), 0x204uLL);
      outlined init with copy of ConnectionConfiguration(__dst, &v31);
      v25 = String.init<A>(describing:)();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v34);

      *(v17 + 14) = v27;
      _os_log_impl(&dword_223515000, v15, v16, "Connection - Start: Background Connection. Starting route %s with connection configuration: %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DE38F0](v18, -1, -1);
      MEMORY[0x223DE38F0](v17, -1, -1);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v29 = &protocol witness table for Connection;
    if (!Strong)
    {
      v29 = 0;
    }

    *(a3 + 24) = v29;
    swift_unknownObjectWeakAssign();

    BackgroundConnection.start()();
    if (v30)
    {
    }
  }
}

unint64_t specialized Set._Variant.remove(_:)@<X0>(void *__src@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  memcpy(__dst, __src, 0x72uLL);
  v6 = *v3;
  v7 = *(*v3 + 40);
  memcpy(v18, __src, 0x72uLL);
  Hasher.init(_seed:)();
  ConnectionPolicyRoute.hash(into:)();
  result = Hasher._finalize()();
  v9 = ~(-1 << *(v6 + 32));
  while (1)
  {
    v10 = result & v9;
    if (((*(v6 + 56 + (((result & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v9)) & 1) == 0)
    {
      *a2 = xmmword_2235EFB30;
      a2[1] = 0u;
      a2[2] = 0u;
      a2[3] = 0u;
      a2[4] = 0u;
      a2[5] = 0u;
      a2[6] = 0u;
      *(a2 + 56) = 0;
      return result;
    }

    v11 = *(v6 + 48);
    memcpy(v17, (v11 + 120 * v10), 0x72uLL);
    memcpy(__srca, (v11 + 120 * v10), 0x72uLL);
    LOBYTE(v11) = static ConnectionPolicyRoute.== infix(_:_:)(__srca, __dst);
    memcpy(v18, __srca, 0x72uLL);
    outlined init with copy of ConnectionPolicyRoute(v17, v15);
    outlined destroy of ConnectionPolicyRoute(v18);
    if (v11)
    {
      break;
    }

    result = v10 + 1;
  }

  v12 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v3;
  __srca[0] = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v14 = __srca[0];
  }

  memcpy(a2, (*(v14 + 48) + 120 * v10), 0x72uLL);
  result = specialized _NativeSet._delete(at:)(v10);
  *v3 = __srca[0];
  return result;
}

uint64_t closure #1 in NetworkManager.registerClient()(uint64_t a1, void (*a2)(uint64_t))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = *(result + OBJC_IVAR___SNNetworkManagerInternal_networkWirelessCoexManager);

    a2(v6);
  }

  return result;
}

void NetworkWirelessCoexManager.unregisterClient()()
{
  OUTLINED_FUNCTION_46();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = OUTLINED_FUNCTION_0_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_1();
  v9 = OUTLINED_FUNCTION_8_1();
  v10 = OUTLINED_FUNCTION_0_0(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  v13 = *(v0 + 168);
  OUTLINED_FUNCTION_7_1();
  v14 = swift_allocObject();
  swift_weakInit();
  v25[4] = v4;
  v25[5] = v14;
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v25[2] = v15;
  v25[3] = v2;
  v16 = _Block_copy(v25);
  v17 = v13;

  static DispatchQoS.unspecified.getter();
  OUTLINED_FUNCTION_2_33();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(v18, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  OUTLINED_FUNCTION_8_21();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v20 = OUTLINED_FUNCTION_6();
  MEMORY[0x223DE2460](v20);
  _Block_release(v16);

  v21 = OUTLINED_FUNCTION_16_1();
  v22(v21);
  v23 = OUTLINED_FUNCTION_16();
  v24(v23);

  OUTLINED_FUNCTION_47();
}

uint64_t sub_223537E50()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t closure #1 in NetworkWirelessCoexManager.resetLinkRecommendationInfo()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    *(v1 + 56) = 256;
    *(v1 + 72) = 0;
    *(v1 + 80) = 0;
    *(v1 + 64) = 0;
    *(v1 + 85) = 0;
    *(v1 + 96) = 0u;
    *(v1 + 112) = 0u;
    *(v1 + 128) = 0u;
    *(v1 + 144) = 0u;
    *(v1 + 160) = 0;
  }

  return result;
}

Swift::Void __swiftcall NetworkManager.updateNetworkPerformanceFeed()()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 processInfo];
  [v3 systemUptime];
  v5 = v4;

  v6 = OBJC_IVAR___SNNetworkManagerInternal_lastTimeSymptomsFetch;
  if (v5 - *(v1 + OBJC_IVAR___SNNetworkManagerInternal_lastTimeSymptomsFetch) > 90.0)
  {
    v7 = [v2 processInfo];
    [v7 systemUptime];
    v9 = v8;

    *(v1 + v6) = v9;
    v10 = OBJC_IVAR___SNNetworkManagerInternal_lockConnectionQuality;
    [*(v1 + OBJC_IVAR___SNNetworkManagerInternal_lockConnectionQuality) lock];
    *(v1 + OBJC_IVAR___SNNetworkManagerInternal_connectionQualityReport) = 50529027;
    [*(v1 + v10) unlock];
    v11 = *MEMORY[0x277D6B6A0];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
    v15 = objc_allocWithZone(MEMORY[0x277D6B500]);
    v42 = @nonobjc AnalyticsWorkspace.init(workspaceWithService:)(v12, v14);
    v16 = [objc_allocWithZone(MEMORY[0x277D6B6E8]) initWithWorkspace_];
    if (v16)
    {
      v17 = *(v1 + OBJC_IVAR___SNNetworkManagerInternal_queue);
      v18 = v16;
      [v18 setQueue_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2235EFCB0;
      v20 = *MEMORY[0x277D6B6C8];
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v21;
      v22 = *MEMORY[0x277D6B6B0];
      *(inited + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 56) = v23;
      v24 = Dictionary.init(dictionaryLiteral:)();
      v25 = swift_initStackObject();
      *(v25 + 16) = xmmword_2235EFCB0;
      v26 = *MEMORY[0x277D6B6B8];
      *(v25 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v25 + 40) = v27;
      *(v25 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v25 + 56) = v28;
      v29 = Dictionary.init(dictionaryLiteral:)();
      v30 = v18;
      specialized _dictionaryUpCast<A, B, C, D>(_:)(v24);
      v32 = v31;
      v33 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v34 = swift_allocObject();
      v34[2] = v33;
      v34[3] = v30;
      v34[4] = v29;
      v47 = partial apply for closure #1 in NetworkManager.updateNetworkPerformanceFeed();
      v48 = v34;
      aBlock = MEMORY[0x277D85DD0];
      v44 = 1107296256;
      v45 = thunk for @escaping @callee_guaranteed (@guaranteed [AnyHashable : Any]?, @guaranteed Error?) -> ();
      v46 = &block_descriptor_9;
      v35 = _Block_copy(&aBlock);

      outlined bridged method (mnbnnn) of @objc NetworkPerformanceFeed.fullScorecard(for:options:reply:)(1, v32, v35, v30);
      _Block_release(v35);
      v36 = v30;
      specialized _dictionaryUpCast<A, B, C, D>(_:)(v24);
      v38 = v37;

      v39 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v40 = swift_allocObject();
      v40[2] = v39;
      v40[3] = v36;
      v40[4] = v29;
      v47 = partial apply for closure #2 in NetworkManager.updateNetworkPerformanceFeed();
      v48 = v40;
      aBlock = MEMORY[0x277D85DD0];
      v44 = 1107296256;
      v45 = thunk for @escaping @callee_guaranteed (@guaranteed [AnyHashable : Any]?, @guaranteed Error?) -> ();
      v46 = &block_descriptor_10_1;
      v41 = _Block_copy(&aBlock);

      outlined bridged method (mnbnnn) of @objc NetworkPerformanceFeed.fullScorecard(for:options:reply:)(2, v38, v41, v36);

      _Block_release(v41);
    }

    else
    {
      __break(1u);
    }
  }
}