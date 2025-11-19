BOOL ConnectionConfiguration.usingTLS.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
  OUTLINED_FUNCTION_11_1(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v4);
  v6 = v54 - v5;
  v7 = type metadata accessor for URLComponents();
  v8 = OUTLINED_FUNCTION_0_0(v7);
  v56 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_1();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v16 = OUTLINED_FUNCTION_11_1(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_9();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = v54 - v23;
  v25 = type metadata accessor for URL();
  v26 = OUTLINED_FUNCTION_0_0(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_9();
  v33 = v31 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = v54 - v35;
  v37 = v0[51];
  if (v37 == 1)
  {
    goto LABEL_9;
  }

  v59 = v0[50];
  v60 = v37;
  memcpy(v61, v0 + 52, sizeof(v61));
  ConnectionPolicyRoute.routeHost.getter();
  if (!v38)
  {
    goto LABEL_9;
  }

  URL.init(string:)();

  OUTLINED_FUNCTION_6_25(v21);
  if (v39)
  {
    v40 = &_s10Foundation3URLVSgMd;
    v41 = &_s10Foundation3URLVSgMR;
    v42 = v21;
LABEL_8:
    outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v42, v40, v41);
LABEL_9:
    v44 = OUTLINED_FUNCTION_8_23();
    __swift_storeEnumTagSinglePayload(v44, v45, 1, v25);
LABEL_10:
    outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v24, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    return 0;
  }

  v55 = *(v28 + 32);
  v55(v33, v21, v25);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v7);
  if (EnumTagSinglePayload == 1)
  {
    (*(v28 + 8))(v33, v25);
    v40 = &_s10Foundation13URLComponentsVSgMd;
    v41 = &_s10Foundation13URLComponentsVSgMR;
    v42 = v6;
    goto LABEL_8;
  }

  v54[1] = v28 + 32;
  v47 = v56;
  (*(v56 + 32))(v14, v6, v7);
  URLComponents.url.getter();
  (*(v47 + 8))(v14, v7);
  v48 = *(v28 + 8);
  v48(v33, v25);
  OUTLINED_FUNCTION_6_25(v24);
  if (v39)
  {
    goto LABEL_10;
  }

  v55(v36, v24, v25);
  v49 = URL.scheme.getter();
  if (v50)
  {
    v59 = v49;
    v60 = v50;
    OUTLINED_FUNCTION_11_13();
    v57 = v51;
    v58 = v52;
    lazy protocol witness table accessor for type String and conformance String();
    v53 = StringProtocol.caseInsensitiveCompare<A>(_:)();

    v48(v36, v25);
    return v53 == 0;
  }

  v48(v36, v25);
  return 0;
}

uint64_t outlined assign with take of NetworkConnectionProtocol?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t NetworkActivityTracing.addNWConnection(_:completion:)(uint64_t result, uint64_t (*a2)(void), uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result)
  {
    v14 = result;
    v15 = *(v7 + OBJC_IVAR___SNNetworkActivityTracingInternal_networkActivityTracing);

    specialized NetworkActivityTracingInternal.addConnection(_:completion:)(v14, a2, a3, a4, a5, a6, a7);
  }

  else if (a2)
  {
    return a2();
  }

  return result;
}

uint64_t specialized NetworkActivityTracingInternal.addConnection(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v46 = a5;
  v47 = a6;
  v44 = a4;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v12 = OUTLINED_FUNCTION_0_0(v11);
  v50 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v19 = OUTLINED_FUNCTION_0_0(v18);
  v48 = v20;
  v49 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Logger.siriNetwork);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v43 = v24;
    v29 = v17;
    v30 = v11;
    v31 = a7;
    v32 = a2;
    v33 = a3;
    v34 = v28;
    *v28 = 134217984;
    *(v28 + 4) = NWConnection.identifier.getter();

    _os_log_impl(&dword_223515000, v26, v27, v44, v34, 0xCu);
    v35 = v34;
    a3 = v33;
    a2 = v32;
    a7 = v31;
    v11 = v30;
    v17 = v29;
    v24 = v43;
    MEMORY[0x223DE38F0](v35, -1, -1);
  }

  else
  {
  }

  v36 = *(v45 + 32);
  v37 = swift_allocObject();
  swift_weakInit();
  v38 = swift_allocObject();
  v38[2] = v37;
  v38[3] = a1;
  v38[4] = a2;
  v38[5] = a3;
  aBlock[4] = v47;
  aBlock[5] = v38;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = a7;
  v39 = _Block_copy(aBlock);

  v40 = v36;

  outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(a2);
  static DispatchQoS.unspecified.getter();
  v51 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x223DE2460](0, v24, v17, v39);
  _Block_release(v39);

  (*(v50 + 8))(v17, v11);
  (*(v48 + 8))(v24, v49);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

Swift::Void __swiftcall NetworkConnectionProvider.updateAndEmitConnectionMetricsPreparationReport()()
{
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v2);
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network6NWPathVSgMd, &_s7Network6NWPathVSgMR);
  v5 = OUTLINED_FUNCTION_11_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v31[-v8];
  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  outlined init with copy of NetworkConnectionProtocol?(v0 + 16, &v43, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
  if (v44)
  {
    outlined init with take of RPCOspreyConnectionProtocol(&v43, v45);
    v10 = *__swift_project_boxed_opaque_existential_1(v45, v45[3]);
    NWConnection.currentPath.getter();
    ConnectionPreparationReport.init(path:)(v9, v40);
    OUTLINED_FUNCTION_95();
    OUTLINED_FUNCTION_84(v41);
    memcpy((v3 + 152), v40, 0x168uLL);
    outlined destroy of NetworkConnectionProtocol?(v41, &_s11SiriNetwork27ConnectionPreparationReportVSgMd, &_s11SiriNetwork27ConnectionPreparationReportVSgMR);
    v11 = NetworkConnectionProvider.connectionMetrics.modify();
    v13 = v12;
    memmove(v42, (v12 + 96), 0x168uLL);
    if (_s11SiriNetwork27ConnectionPreparationReportVSgWOg(v42) == 1)
    {
      (v11)(v35, 0);
    }

    else
    {
      v14 = 0xE000000000000000;
      v34[0] = 0;
      v34[1] = 0xE000000000000000;
      outlined init with copy of RPCOspreyConnectionProtocol(v45, v39);
      outlined init with copy of NetworkConnectionProtocol?(v39, v38, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
      if (*&v38[24])
      {
        outlined init with take of RPCOspreyConnectionProtocol(v38, v37);
        outlined init with copy of RPCOspreyConnectionProtocol(v37, v36);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork0B18ConnectionProtocol_pMd, _s11SiriNetwork0B18ConnectionProtocol_pMR);
        v15 = String.init<A>(describing:)();
        v14 = v16;
        __swift_destroy_boxed_opaque_existential_0(v37);
      }

      else
      {
        v15 = 0;
      }

      outlined destroy of NetworkConnectionProtocol?(v39, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
      MEMORY[0x223DE2180](v15, v14);

      v17 = v34[1];
      v18 = *(v13 + 104);
      *(v13 + 96) = v34[0];
      *(v13 + 104) = v17;

      (v11)(v35, 0);
    }

    OUTLINED_FUNCTION_84(v38);
    OUTLINED_FUNCTION_84(v39);
    if (_s11SiriNetwork27ConnectionPreparationReportVSgWOg(v39) != 1)
    {
      memcpy(v36, v38, sizeof(v36));
      outlined init with copy of ConnectionPreparationReport(v36, v35);
      if (one-time initialization token for siriNetwork != -1)
      {
        OUTLINED_FUNCTION_0_8();
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_58(v19, static Logger.siriNetwork);
      memcpy(v37, v38, sizeof(v37));
      outlined init with copy of ConnectionPreparationReport(v37, v35);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      outlined destroy of NetworkConnectionProtocol?(v38, &_s11SiriNetwork27ConnectionPreparationReportVSgMd, &_s11SiriNetwork27ConnectionPreparationReportVSgMR);
      if (os_log_type_enabled(v20, v21))
      {
        OUTLINED_FUNCTION_6_5();
        v22 = swift_slowAlloc();
        OUTLINED_FUNCTION_4_3();
        v23 = swift_slowAlloc();
        v32[0] = v23;
        *v22 = 136315138;
        memcpy(v34, v39, sizeof(v34));
        memcpy(v35, v38, sizeof(v35));
        outlined init with copy of ConnectionPreparationReport(v35, v33);
        v24 = String.init<A>(describing:)();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v32);
        OUTLINED_FUNCTION_94();
        *(v22 + 4) = v1;
        _os_log_impl(&dword_223515000, v20, v21, "%s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v23);
        OUTLINED_FUNCTION_2_2();
        MEMORY[0x223DE38F0]();
        OUTLINED_FUNCTION_2_2();
        MEMORY[0x223DE38F0]();
        outlined destroy of NetworkConnectionProtocol?(v38, &_s11SiriNetwork27ConnectionPreparationReportVSgMd, &_s11SiriNetwork27ConnectionPreparationReportVSgMR);
      }

      else
      {

        outlined destroy of NetworkConnectionProtocol?(v38, &_s11SiriNetwork27ConnectionPreparationReportVSgMd, &_s11SiriNetwork27ConnectionPreparationReportVSgMR);
      }
    }

    OUTLINED_FUNCTION_84(v36);
    OUTLINED_FUNCTION_84(v37);
    if (_s11SiriNetwork27ConnectionPreparationReportVSgWOg(v37) != 1)
    {
      memcpy(v35, v36, sizeof(v35));
      v26 = v35[32];
      v27 = objc_allocWithZone(MEMORY[0x277D58BE0]);
      outlined init with copy of ConnectionPreparationReport(v35, v34);
      v28 = [v27 init];
      [v28 setHasDNS_];
      if (v28)
      {
        NetworkAnalytics.logNetworkConnectionStatePreparationSnapshotCaptured(_:)();
      }

      outlined destroy of NetworkConnectionProtocol?(v36, &_s11SiriNetwork27ConnectionPreparationReportVSgMd, &_s11SiriNetwork27ConnectionPreparationReportVSgMR);
    }

    OUTLINED_FUNCTION_84(v34);
    OUTLINED_FUNCTION_84(v35);
    if (_s11SiriNetwork27ConnectionPreparationReportVSgWOg(v35) != 1)
    {
      memcpy(v33, v34, sizeof(v33));
      memcpy(v32, v34, sizeof(v32));
      outlined init with copy of ConnectionPreparationReport(v33, v31);
      v29 = ConnectionPreparationReport.netDebugConnectionStatePreparationSnapshot.getter();
      if (v29)
      {
        v30 = v29;
        NetworkAnalytics.logDebugNetworkConnectionStatePreparationSnapshotCaptured(_:)();
      }

      outlined destroy of NetworkConnectionProtocol?(v34, &_s11SiriNetwork27ConnectionPreparationReportVSgMd, &_s11SiriNetwork27ConnectionPreparationReportVSgMR);
    }

    __swift_destroy_boxed_opaque_existential_0(v45);
  }

  else
  {
    outlined destroy of NetworkConnectionProtocol?(&v43, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
  }

  OUTLINED_FUNCTION_47();
}

void *ConnectionPreparationReport.init(path:)@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  v156 = a2;
  v163 = type metadata accessor for NWEndpoint.Port();
  v3 = OUTLINED_FUNCTION_0_0(v163);
  v152 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_1();
  v162 = (v8 - v7);
  OUTLINED_FUNCTION_31();
  v161 = type metadata accessor for NWEndpoint.Host();
  v9 = OUTLINED_FUNCTION_0_0(v161);
  v151 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_0_1();
  v160 = v14 - v13;
  OUTLINED_FUNCTION_31();
  v181 = type metadata accessor for NWEndpoint();
  v15 = OUTLINED_FUNCTION_0_0(v181);
  v178 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5();
  v176 = v19;
  MEMORY[0x28223BE20](v20);
  v175 = v141 - v21;
  OUTLINED_FUNCTION_31();
  v174 = type metadata accessor for NWInterface.InterfaceType();
  v22 = OUTLINED_FUNCTION_0_0(v174);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_5();
  v173 = v27;
  MEMORY[0x28223BE20](v28);
  v172 = v141 - v29;
  OUTLINED_FUNCTION_31();
  v180 = type metadata accessor for NWInterface();
  v30 = OUTLINED_FUNCTION_0_0(v180);
  v177 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_5();
  v179 = v34;
  MEMORY[0x28223BE20](v35);
  v37 = v141 - v36;
  v38 = type metadata accessor for NWPath.Status();
  v39 = OUTLINED_FUNCTION_0_0(v38);
  countAndFlagsBits_low = v40;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_0_1();
  v46 = v45 - v44;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network6NWPathVSgMd, &_s7Network6NWPathVSgMR);
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47 - 8);
  v50 = v141 - v49;
  v51 = type metadata accessor for NWPath();
  v52 = OUTLINED_FUNCTION_0_0(v51);
  v155 = v53;
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_0_1();
  v158 = v57 - v56;
  _s11SiriNetwork25ConnectionInterfaceReportVSgWOi0_(v198);
  memcpy(&v197[3], v198, 0x121uLL);
  if (one-time initialization token for sharedNetworkAnalytics != -1)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v58 = static NetworkAnalytics.sharedNetworkAnalytics;
    outlined init with copy of NWPath?(a1, v50);
    if (__swift_getEnumTagSinglePayload(v50, 1, v51) == 1)
    {
      v59 = MEMORY[0x277D84F90];
      v60 = v58;
      outlined destroy of ConnectionSnapshotReport?(a1, &_s7Network6NWPathVSgMd, &_s7Network6NWPathVSgMR);
      outlined destroy of ConnectionSnapshotReport?(v50, &_s7Network6NWPathVSgMd, &_s7Network6NWPathVSgMR);
      memset(v195, 0, 37);
      memcpy(&v195[4] + 5, v197, 0x124uLL);
      v195[42] = v59;
      v195[43] = v59;
      v195[44] = v60;
      outlined destroy of ConnectionPreparationReport(v195);
      _s11SiriNetwork27ConnectionPreparationReportVSgWOi0_(v196);
      return memcpy(v156, v196, 0x168uLL);
    }

    v171 = a1;
    v62 = *(v155 + 32);
    v150 = v51;
    v62(v158, v50, v51);
    v196[0]._countAndFlagsBits = 0;
    v196[0]._object = 0xE000000000000000;
    v149 = v58;
    NWPath.status.getter();
    _print_unlocked<A, B>(_:_:)();
    (*(countAndFlagsBits_low + 8))(v46, v38);
    countAndFlagsBits = v196[0]._countAndFlagsBits;
    object = v196[0]._object;
    LODWORD(v147) = NWPath.supportsDNS.getter();
    v146 = NWPath.isExpensive.getter();
    v145 = NWPath.isConstrained.getter();
    v144 = NWPath.supportsIPv4.getter();
    v143 = NWPath.supportsIPv6.getter();
    NWPath.nw.getter();
    v63 = nw_path_copy_interface();
    swift_unknownObjectRelease();
    if (v63)
    {
      LODWORD(v169) = nw_interface_get_index(v63);
      swift_unknownObjectRelease();
    }

    else
    {
      LODWORD(v169) = 0;
    }

    v65 = v180;
    v64 = v181;
    v66 = NWPath.availableInterfaces.getter();
    v67 = *(v66 + 16);
    if (!v67)
    {
      break;
    }

    _s11SiriNetwork24ConnectionTCPInfoMetricsVSgWOi0_(v194);
    v68 = *(v177 + 16);
    v69 = (*(v177 + 80) + 32) & ~*(v177 + 80);
    v141[1] = v66;
    v70 = v66 + v69;
    v170 = (v24 + 8);
    v167 = (v24 + 88);
    v168 = v68;
    v166 = (v177 + 8);
    v186 = (v67 - 1);
    v187 = MEMORY[0x277D84F90];
    v177 += 16;
    v164 = *(v177 + 56);
    v165 = *MEMORY[0x277CD8CB0];
    v159 = *MEMORY[0x277CD8CA8];
    v157 = *MEMORY[0x277CD8CB8];
    v154 = *MEMORY[0x277CD8CA0];
    v142 = *MEMORY[0x277CD8CC0];
    while (1)
    {
      v182 = v70;
      v71 = v168;
      (v168)(v37);
      v72 = memcpy(v191, v194, sizeof(v191));
      v73 = MEMORY[0x223DE1820](v72);
      v184 = v74;
      v185 = v73;
      v196[0]._countAndFlagsBits = 0;
      v196[0]._object = 0xE000000000000000;
      v75 = v172;
      NWInterface.type.getter();
      v76 = v174;
      _print_unlocked<A, B>(_:_:)();
      v77 = *v170;
      (*v170)(v75, v76);
      v38 = v196[0]._countAndFlagsBits;
      v183 = v196[0]._object;
      v50 = v179;
      v71(v179, v37, v65);
      v46 = v65;
      v51 = v173;
      NWInterface.type.getter();
      v78 = (*v167)(v51, v76);
      v24 = v166 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      if (v78 == v165)
      {
        goto LABEL_10;
      }

      if (v78 == v159)
      {
        v51 = *v166;
        v46 = v180;
        (*v166)(v179, v180);
        countAndFlagsBits_low = 1;
        goto LABEL_23;
      }

      v50 = v179;
      if (v78 != v157)
      {
        if (v78 == v154)
        {
          v83 = OUTLINED_FUNCTION_7_23();
          v46 = v180;
          v51(v83, v180);
          countAndFlagsBits_low = 23;
          goto LABEL_23;
        }

        v46 = v180;
        if (v78 != v142)
        {
          v84 = OUTLINED_FUNCTION_7_23();
          v51(v84, v46);
          v77(v173, v174);
          countAndFlagsBits_low = 0;
          goto LABEL_23;
        }

LABEL_10:
        MEMORY[0x223DE1820]();
        v79 = String.lowercased()();
        v51 = v79._countAndFlagsBits;

        v196[0] = v79;
        v195[0] = 0x6365737069;
        v195[1] = 0xE500000000000000;
        lazy protocol witness table accessor for type String and conformance String();
        v80 = StringProtocol.contains<A>(_:)();
        v81 = OUTLINED_FUNCTION_7_23();
        (v79._countAndFlagsBits)(v81, v46);

        if (v80)
        {
          countAndFlagsBits_low = 24;
        }

        else
        {
          countAndFlagsBits_low = 0;
        }

        goto LABEL_23;
      }

      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      NetworkManager.connectionTechnologyForCellularInterface()();
      v82 = OUTLINED_FUNCTION_7_23();
      v46 = v180;
      v51(v82, v180);
      countAndFlagsBits_low = LOBYTE(v196[0]._countAndFlagsBits);
LABEL_23:
      a1 = NWInterface.index.getter();
      v51(v37, v46);
      if ((a1 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (HIDWORD(a1))
      {
        goto LABEL_55;
      }

      memcpy(v190, v191, 0xF9uLL);
      outlined destroy of ConnectionSnapshotReport?(v190, &_s11SiriNetwork24ConnectionTCPInfoMetricsVSgMd, _s11SiriNetwork24ConnectionTCPInfoMetricsVSgMR);
      memcpy(v191, v194, sizeof(v191));
      v196[0]._countAndFlagsBits = v185;
      v196[0]._object = v184;
      v196[1]._countAndFlagsBits = v38;
      v196[1]._object = v183;
      LOBYTE(v196[2]._countAndFlagsBits) = countAndFlagsBits_low;
      *(&v196[2]._countAndFlagsBits + 1) = v192;
      BYTE3(v196[2]._countAndFlagsBits) = v193;
      HIDWORD(v196[2]._countAndFlagsBits) = a1;
      memcpy(&v196[2]._object, v194, 0xF9uLL);
      if (v169 == a1)
      {
        memcpy(v189, v196, 0x121uLL);
        destructiveProjectEnumData for ConnectionConfigurationError(v189);
        memcpy(v195, &v197[3], 0x121uLL);
        outlined init with copy of ConnectionInterfaceReport(v196, v188);
        outlined destroy of ConnectionSnapshotReport?(v195, &_s11SiriNetwork25ConnectionInterfaceReportVSgMd, &_s11SiriNetwork25ConnectionInterfaceReportVSgMR);
        memcpy(&v197[3], v189, 0x121uLL);
      }

      v85 = v187;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v65 = v180;
      v64 = v181;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v89 = *(v85 + 16);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v85 = v90;
      }

      v88 = *(v85 + 16);
      v87 = *(v85 + 24);
      if (v88 >= v87 >> 1)
      {
        OUTLINED_FUNCTION_5_28(v87);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v85 = v91;
      }

      *(v85 + 16) = v88 + 1;
      memcpy((v85 + 296 * v88 + 32), v196, 0x121uLL);
      if (!v186)
      {

        goto LABEL_35;
      }

      v186 = (v186 - 1);
      v187 = v85;
      v70 = v182 + v164;
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    swift_once();
  }

  v85 = MEMORY[0x277D84F90];
LABEL_35:
  v92 = v150;
  LODWORD(v164) = v147 & 1;
  v159 = v146 & 1;
  v157 = v145 & 1;
  v165 = v143 & 1;
  LODWORD(v166) = v144 & 1;
  v93 = NWPath.gateways.getter();
  v94 = *(v93 + 16);
  v95 = v176;
  if (v94)
  {
    v187 = v85;
    v183 = *(v178 + 16);
    v96 = (*(v178 + 80) + 32) & ~*(v178 + 80);
    v147 = v93;
    v97 = v93 + v96;
    v182 = v178 + 88;
    v180 = *(v178 + 72);
    LODWORD(v179) = *MEMORY[0x277CD8B08];
    LODWORD(v174) = *MEMORY[0x277CD8B00];
    LODWORD(v168) = *MEMORY[0x277CD8AF0];
    LODWORD(v167) = *MEMORY[0x277CD8AD0];
    v184 = (v178 + 8);
    v177 = v178 + 96;
    v178 += 16;
    v172 = (v152 + 32);
    v173 = (v151 + 32);
    v169 = (v151 + 8);
    v170 = (v152 + 8);
    v98 = MEMORY[0x277D84F90];
    v154 = *MEMORY[0x277CD8AF8];
    v99 = v175;
    do
    {
      v186 = v94;
      v100 = v183;
      (v183)(v99, v97, v64);
      v100(v95, v99, v64);
      v101 = OUTLINED_FUNCTION_1_35();
      v103 = v102(v101);
      if (v103 == v179)
      {
        v104 = OUTLINED_FUNCTION_1_35();
        v105(v104);
        v106 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network10NWEndpointO4HostO4host_AC4PortV4porttMd, &_s7Network10NWEndpointO4HostO4host_AC4PortV4porttMR) + 48);
        v107 = v160;
        v108 = v161;
        (*v173)(v160, v95, v161);
        v110 = v162;
        v109 = v163;
        (*v172)(v162, &v95[v106], v163);
        v185 = NWEndpoint.Host.debugDescription.getter();
        v112 = v111;
        LOWORD(v106) = NWEndpoint.Port.rawValue.getter();
        (*v170)(v110, v109);
        v113 = v107;
        v64 = v181;
        (*v169)(v113, v108);
        v114 = v106;
        v115 = 1;
      }

      else
      {
        if (v103 == v174)
        {
          v116 = OUTLINED_FUNCTION_1_35();
          v117(v116);
          v118 = *(v95 + 1);

          v119 = *(v95 + 3);

          v120 = *(v95 + 5);

          v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS4name_SS4typeSS6domain7Network11NWInterfaceVSg9interfacetMd, &_sSS4name_SS4typeSS6domain7Network11NWInterfaceVSg9interfacetMR);
          outlined destroy of ConnectionSnapshotReport?(&v95[*(v121 + 80)], &_s7Network11NWInterfaceVSgMd, &_s7Network11NWInterfaceVSgMR);
          v185 = 0;
          v114 = 0;
          v115 = 3;
        }

        else if (v103 == v168 || v103 != v167)
        {
          (*v184)(v95, v64);
          v185 = 0;
          v114 = 0;
          v115 = 5;
        }

        else
        {
          v122 = OUTLINED_FUNCTION_1_35();
          v123(v122);
          v185 = 0;
          v114 = 0;
          v115 = 4;
        }

        v112 = 0xE000000000000000;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v129 = v98[2];
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v98 = v130;
      }

      v125 = v98[2];
      v124 = v98[3];
      if (v125 >= v124 >> 1)
      {
        OUTLINED_FUNCTION_5_28(v124);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v98 = v131;
      }

      v99 = v175;
      (*v184)(v175, v64);
      v98[2] = v125 + 1;
      v126 = &v98[3 * v125];
      v127 = v186;
      v126[4] = v185;
      v126[5] = v112;
      *(v126 + 12) = v114;
      *(v126 + 13) = v115;
      v97 += v180;
      v94 = v127 - 1;
      v128 = v171;
      v95 = v176;
    }

    while (v94);

    v92 = v150;
    v85 = v187;
    v186 = v98;
  }

  else
  {

    v186 = MEMORY[0x277D84F90];
    v128 = v171;
  }

  outlined destroy of ConnectionSnapshotReport?(v128, &_s7Network6NWPathVSgMd, &_s7Network6NWPathVSgMR);
  (*(v155 + 8))(v158, v92);
  v189[1] = 0;
  v189[0] = 0;
  v189[2] = countAndFlagsBits;
  v132 = object;
  v189[3] = object;
  v133 = v164;
  LOBYTE(v189[4]) = v164;
  v134 = v159;
  BYTE1(v189[4]) = v159;
  v135 = v157;
  BYTE2(v189[4]) = v157;
  v136 = v165;
  BYTE3(v189[4]) = v166;
  BYTE4(v189[4]) = v165;
  memcpy(&v189[4] + 5, v197, 0x124uLL);
  OUTLINED_FUNCTION_4_31();
  HIDWORD(v189[41]) = v137;
  v189[42] = v85;
  v138 = v186;
  v189[43] = v186;
  v139 = v149;
  v189[44] = v149;
  memcpy(v195, v189, 0x168uLL);
  destructiveProjectEnumData for ConnectionConfigurationError(v195);
  memcpy(v156, v195, 0x168uLL);
  v196[0]._object = 0;
  v196[0]._countAndFlagsBits = 0;
  v196[1]._countAndFlagsBits = countAndFlagsBits;
  v196[1]._object = v132;
  LOBYTE(v196[2]._countAndFlagsBits) = v133;
  BYTE1(v196[2]._countAndFlagsBits) = v134;
  BYTE2(v196[2]._countAndFlagsBits) = v135;
  BYTE3(v196[2]._countAndFlagsBits) = v166;
  BYTE4(v196[2]._countAndFlagsBits) = v136;
  memcpy(&v196[2]._countAndFlagsBits + 5, v197, 0x124uLL);
  OUTLINED_FUNCTION_4_31();
  HIDWORD(v196[20]._object) = v140;
  v196[21]._countAndFlagsBits = v85;
  v196[21]._object = v138;
  v196[22]._countAndFlagsBits = v139;
  outlined init with copy of ConnectionPreparationReport(v189, v188);
  return outlined destroy of ConnectionPreparationReport(v196);
}

uint64_t outlined init with copy of NWPath?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network6NWPathVSgMd, &_s7Network6NWPathVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t specialized ConnectionProviderProtocol.setupStaleConnectionTimer()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTime();
  v99 = *(v2 - 8);
  v100 = v2;
  v3 = *(v99 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v97 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v98 = &v82 - v6;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v95 = *(v7 - 8);
  v96 = v7;
  v8 = *(v95 + 64);
  MEMORY[0x28223BE20](v7);
  v93 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for DispatchQoS();
  v92 = *(v94 - 8);
  v10 = *(v92 + 64);
  MEMORY[0x28223BE20](v94);
  v91 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v88 = *(v12 - 8);
  v89 = v12;
  v13 = *(v88 + 64);
  MEMORY[0x28223BE20](v12);
  v87 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v86 = (&v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v20 = &v82 - v19;
  v21 = type metadata accessor for DispatchTimeInterval();
  v102 = *(v21 - 8);
  v22 = *(v102 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v101 = &v82 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v82 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v82 - v31;
  Double.dispatchTimeInterval.getter((&v82 - v31), *(v0 + 1680));
  if (one-time initialization token for siriNetwork != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, static Logger.siriNetwork);
  v34 = *(v102 + 16);
  v34(v30, v32, v21);

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();

  LODWORD(v85) = v36;
  v37 = os_log_type_enabled(v35, v36);
  v90 = v32;
  if (v37)
  {
    v82 = v25;
    v84 = v35;
    v38 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    aBlock[0] = v83;
    *v38 = 136315650;
    v39 = *v1;
    v40 = _typeName(_:qualified:)();
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, aBlock);

    *(v38 + 4) = v42;
    *(v38 + 12) = 2080;
    v43 = NetworkConnectionProvider.connectionIdentifier.getter();
    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, aBlock);

    *(v38 + 14) = v45;
    *(v38 + 22) = 2080;
    v34(v20, v30, v21);
    __swift_storeEnumTagSinglePayload(v20, 0, 1, v21);
    v46 = v86;
    outlined init with copy of NetworkConnectionProtocol?(v20, v86, &_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
    if (__swift_getEnumTagSinglePayload(v46, 1, v21) == 1)
    {
      v47 = 0xE100000000000000;
      v48 = 45;
    }

    else
    {
      v50 = v101;
      v51 = v102;
      (*(v102 + 32))(v101, v46, v21);
      v34(v82, v50, v21);
      v48 = String.init<A>(describing:)();
      v47 = v52;
      (*(v51 + 8))(v50, v21);
    }

    outlined destroy of NetworkConnectionProtocol?(v20, &_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
    v49 = *(v102 + 8);
    (v49)(v30, v21);
    v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v47, aBlock);

    *(v38 + 24) = v53;
    v54 = v84;
    _os_log_impl(&dword_223515000, v84, v85, "Provider - %s [%s]: Stale connection timer scheduled (%s).", v38, 0x20u);
    v55 = v83;
    swift_arrayDestroy();
    MEMORY[0x223DE38F0](v55, -1, -1);
    MEMORY[0x223DE38F0](v38, -1, -1);
  }

  else
  {

    v49 = *(v102 + 8);
    (v49)(v30, v21);
  }

  result = swift_allocObject();
  v57 = v1[260];
  v58 = __CFADD__(v57, 1);
  v59 = v57 + 1;
  if (v58)
  {
    __break(1u);
  }

  else
  {
    *(result + 16) = v59;
    v60 = result;
    specialized ConnectionProviderProtocol.cancelStaleConnectionTimer()();
    type metadata accessor for OS_dispatch_source();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type NetworkConnectionProvider and conformance NetworkConnectionProvider(&lazy protocol witness table cache variable for type OS_dispatch_source.TimerFlags and conformance OS_dispatch_source.TimerFlags, 255, MEMORY[0x277D85278]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMd, &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_source.TimerFlags] and conformance [A], &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMd, &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMR);
    v86 = v49;
    v61 = v87;
    v62 = v89;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v63 = v1[257];
    v64 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
    (*(v88 + 8))(v61, v62);
    ObjectType = swift_getObjectType();
    v66 = swift_allocObject();
    swift_weakInit();
    v67 = swift_allocObject();
    *(v67 + 16) = v66;
    *(v67 + 24) = v60;
    v85 = v60;
    aBlock[4] = partial apply for specialized closure #1 in ConnectionProviderProtocol.setupStaleConnectionTimer();
    aBlock[5] = v67;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_218;
    v68 = _Block_copy(aBlock);

    v88 = v21;
    v89 = v1;
    v69 = v91;
    default argument 0 of OS_dispatch_source.setEventHandler(qos:flags:handler:)(ObjectType);
    v70 = v93;
    default argument 1 of OS_dispatch_source.setEventHandler(qos:flags:handler:)();
    OS_dispatch_source.setEventHandler(qos:flags:handler:)();
    _Block_release(v68);
    (*(v95 + 8))(v70, v96);
    (*(v92 + 8))(v69, v94);

    v71 = v97;
    static DispatchTime.now()();
    v72 = v98;
    v73 = v90;
    DispatchTime.advanced(by:)();
    v74 = v100;
    v75 = *(v99 + 8);
    v75(v71, v100);
    v76 = v101;
    default argument 2 of OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)(v101);
    v77 = v64;
    MEMORY[0x223DE2510](v72, v73, v76, ObjectType);
    v78 = v76;
    v79 = v88;
    v80 = v86;
    (v86)(v78, v88);
    v75(v72, v74);
    OS_dispatch_source.resume()();
    v80(v73, v79);
    v81 = v89[266];
    v89[266] = v77;

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall NetworkConnectionProvider.updateAndEmitConnectionMetricsReadyEstablishmentReport()()
{
  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  outlined init with copy of NetworkConnectionProtocol?(v0 + 16, &v7, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
  if (v8)
  {
    outlined init with take of RPCOspreyConnectionProtocol(&v7, v9);
    v1 = __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    v2 = *(v0 + 2056);
    OUTLINED_FUNCTION_7_1();
    v3 = swift_allocObject();
    swift_weakInit();
    outlined init with copy of RPCOspreyConnectionProtocol(v9, &v7);
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    outlined init with take of RPCOspreyConnectionProtocol(&v7, v4 + 24);
    v5 = *v1;
    v6 = swift_allocObject();
    *(v6 + 16) = partial apply for closure #1 in NetworkConnectionProvider.updateAndEmitConnectionMetricsReadyEstablishmentReport();
    *(v6 + 24) = v4;

    NWConnection.requestEstablishmentReport(queue:completion:)();

    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  else
  {
    outlined destroy of NetworkConnectionProtocol?(&v7, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
  }
}

uint64_t sub_22354E140()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22354E180()
{
  v1 = *(v0 + 24);

  v2 = OUTLINED_FUNCTION_41();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t ConnectionConfiguration.resolvedHost.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
  OUTLINED_FUNCTION_11_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_14_8();
  v7 = OUTLINED_FUNCTION_0_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_1();
  v14 = v13 - v12;
  v15 = type metadata accessor for URL();
  v16 = OUTLINED_FUNCTION_0_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_0_1();
  v23 = v22 - v21;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v25 = OUTLINED_FUNCTION_11_1(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_9();
  v30 = v28 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v46 - v32;
  v34 = *(v0 + 408);
  if (v34 == 1)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_7_24(v34);
  ConnectionPolicyRoute.routeHost.getter();
  if (!v35)
  {
    goto LABEL_9;
  }

  URL.init(string:)();

  OUTLINED_FUNCTION_6_25(v30);
  if (v36)
  {
    v37 = &_s10Foundation3URLVSgMd;
    v38 = &_s10Foundation3URLVSgMR;
    v39 = v30;
LABEL_8:
    outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v39, v37, v38);
LABEL_9:
    __swift_storeEnumTagSinglePayload(v33, 1, 1, v15);
    goto LABEL_10;
  }

  (*(v18 + 32))(v23, v30, v15);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  v40 = OUTLINED_FUNCTION_8_23();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v40, v41, v6);
  if (EnumTagSinglePayload == 1)
  {
    (*(v18 + 8))(v23, v15);
    v37 = &_s10Foundation13URLComponentsVSgMd;
    v38 = &_s10Foundation13URLComponentsVSgMR;
    v39 = v1;
    goto LABEL_8;
  }

  (*(v9 + 32))(v14, v1, v6);
  URLComponents.url.getter();
  (*(v9 + 8))(v14, v6);
  v45 = *(v18 + 8);
  v45(v23, v15);
  OUTLINED_FUNCTION_6_25(v33);
  if (!v36)
  {
    v43 = URL.host.getter();
    v45(v33, v15);
    return v43;
  }

LABEL_10:
  outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v33, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return 0;
}

uint64_t NWEndpoint.init(configuration:)@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network10NWEndpointO4PortVSgMd, _s7Network10NWEndpointO4PortVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v47 - v6;
  v8 = type metadata accessor for NWEndpoint.Port();
  v9 = OUTLINED_FUNCTION_0_0(v8);
  v53 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_0_1();
  v15 = v14 - v13;
  v16 = type metadata accessor for NWEndpoint();
  v17 = OUTLINED_FUNCTION_0_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_0_1();
  v24 = v23 - v22;
  memcpy(v55, a1, 0x204uLL);
  memcpy(v54, a1, 0x204uLL);
  v25 = ConnectionConfiguration.resolvedHost.getter();
  if (!v26)
  {
    outlined destroy of ConnectionConfiguration(v55);
LABEL_8:
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.siriNetwork);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_223515000, v31, v32, "Provider - Network setup: No resolved host", v33, 2u);
      MEMORY[0x223DE38F0](v33, -1, -1);
    }

    v34 = 1;
    return __swift_storeEnumTagSinglePayload(a2, v34, 1, v16);
  }

  v27 = v26;
  v51 = v25;
  v52 = a2;
  memcpy(v54, v55, 0x204uLL);
  v28 = ConnectionConfiguration.resolvedPort.getter();
  if ((v28 & 0x10000) != 0)
  {

    outlined destroy of ConnectionConfiguration(v55);
    goto LABEL_7;
  }

  v29 = v28;
  NWEndpoint.Port.init(rawValue:)();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    outlined destroy of ConnectionConfiguration(v55);

    outlined destroy of ConnectionSnapshotReport?(v7, &_s7Network10NWEndpointO4PortVSgMd, _s7Network10NWEndpointO4PortVSgMR);
LABEL_7:
    a2 = v52;
    goto LABEL_8;
  }

  v49 = v19;
  v36 = v53;
  (*(v53 + 32))(v15, v7, v8);
  v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network10NWEndpointO4HostO4host_AC4PortV4porttMd, &_s7Network10NWEndpointO4HostO4host_AC4PortV4porttMR) + 48);

  NWEndpoint.Host.init(_:)();
  v38 = v36;
  v39 = v49;
  (*(v38 + 16))(v24 + v37, v15, v8);
  (*(v39 + 104))(v24, *MEMORY[0x277CD8B08], v16);
  if (!v55[49])
  {
    outlined destroy of ConnectionConfiguration(v55);
    goto LABEL_19;
  }

  v50 = v55[45];
  v40 = v55[46];
  outlined destroy of ConnectionConfiguration(v55);
  if (v40)
  {
LABEL_19:
    v50 = 5228;
    goto LABEL_20;
  }

  if ((v50 - 1) <= 0xFFFD)
  {
LABEL_20:
    if (one-time initialization token for htons != -1)
    {
      swift_once();
    }

    static Endian.htons(v50);
    NWEndpoint.alternatePort.setter();
  }

  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  v41 = type metadata accessor for Logger();
  __swift_project_value_buffer(v41, static Logger.siriNetwork);

  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();

  v48 = v43;
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v54[0] = v47;
    *v44 = 136315650;
    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v27, v54);

    *(v44 + 4) = v45;
    *(v44 + 12) = 512;
    *(v44 + 14) = v29;
    *(v44 + 16) = 2048;
    v39 = v49;
    *(v44 + 18) = v50;
    _os_log_impl(&dword_223515000, v42, v48, "Provider - Network setup: Endpoint created: %s:%hu/%ld", v44, 0x1Au);
    v46 = v47;
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x223DE38F0](v46, -1, -1);
    MEMORY[0x223DE38F0](v44, -1, -1);
  }

  else
  {
  }

  (*(v53 + 8))(v15, v8);
  a2 = v52;
  (*(v39 + 32))(v52, v24, v16);
  v34 = 0;
  return __swift_storeEnumTagSinglePayload(a2, v34, 1, v16);
}

uint64_t ConnectionConfiguration.resolvedPort.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2 = OUTLINED_FUNCTION_11_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_9();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = v28 - v9;
  memcpy(v29, v0, sizeof(v29));
  ConnectionConfiguration.resolvedURL.getter(v10);
  v11 = type metadata accessor for URL();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v10, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {
    v12 = URL.port.getter();
    v14 = v13;
    OUTLINED_FUNCTION_13_4(v11);
    (*(v15 + 8))(v10, v11);
    if ((v14 & 1) == 0)
    {
      v25 = 0;
      v26 = v12;
      return v26 | (v25 << 16);
    }
  }

  ConnectionConfiguration.resolvedURL.getter(v7);
  v16 = OUTLINED_FUNCTION_8_23();
  if (__swift_getEnumTagSinglePayload(v16, v17, v11) == 1)
  {
    outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v7, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_10:
    v26 = 0;
    v25 = 1;
    return v26 | (v25 << 16);
  }

  v18 = URL.scheme.getter();
  v20 = v19;
  OUTLINED_FUNCTION_13_4(v11);
  (*(v21 + 8))(v7, v11);
  if (!v20)
  {
    goto LABEL_10;
  }

  v28[2] = v18;
  v28[3] = v20;
  OUTLINED_FUNCTION_11_13();
  v28[0] = v22;
  v28[1] = v23;
  lazy protocol witness table accessor for type String and conformance String();
  v24 = StringProtocol.caseInsensitiveCompare<A>(_:)();

  v25 = 0;
  if (v24)
  {
    v26 = 80;
  }

  else
  {
    v26 = 443;
  }

  return v26 | (v25 << 16);
}

uint64_t ConnectionProviderState.init(from:)(uint64_t a1)
{
  v3 = type metadata accessor for NWError();
  v4 = OUTLINED_FUNCTION_0_0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = type metadata accessor for NWConnection.State();
  v8 = OUTLINED_FUNCTION_0_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v14, a1, v7);
  v15 = *(v10 + 88);
  v16 = OUTLINED_FUNCTION_3_9();
  v18 = v17(v16);
  if (v18 == *MEMORY[0x277CD8DE8] || (v1 = v18, v18 == *MEMORY[0x277CD8DE0]))
  {
    v19 = *(v10 + 96);
    v20 = OUTLINED_FUNCTION_3_9();
    v21(v20);
    v22 = OUTLINED_FUNCTION_2_10();
    v1(v22);
    lazy protocol witness table accessor for type NWError and conformance NWError();
    v23 = OUTLINED_FUNCTION_5_10();
    v25 = OUTLINED_FUNCTION_1_12(v23, v24);
    v1(v25);
    v26 = OUTLINED_FUNCTION_0_23();
    v27(v26);
  }

  else
  {
    if (v18 == *MEMORY[0x277CD8DD8])
    {
      v28 = OUTLINED_FUNCTION_0_23();
      v29(v28);
    }

    else
    {
      if (v18 == *MEMORY[0x277CD8DF8])
      {
        v30 = OUTLINED_FUNCTION_0_23();
        v31(v30);
        return 1;
      }

      if (v18 == *MEMORY[0x277CD8DD0])
      {
        v33 = OUTLINED_FUNCTION_0_23();
        v34(v33);
        return 2;
      }

      v35 = *MEMORY[0x277CD8DF0];
      v36 = *(v10 + 8);
      v36(a1, v7);
      if (v1 == v35)
      {
        return 3;
      }

      v37 = OUTLINED_FUNCTION_3_9();
      (v36)(v37);
    }

    return 0;
  }

  return v14;
}

void outlined consume of ConnectionProviderState(id a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }
}

uint64_t type metadata accessor for ConnectionAnalysisInfo()
{
  result = type metadata singleton initialization cache for ConnectionAnalysisInfo;
  if (!type metadata singleton initialization cache for ConnectionAnalysisInfo)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NWConnection.getAttemptedEndpoints()()
{
  MEMORY[0x223DE1A50]();
  v1 = nw_connection_copy_attempted_endpoint_array();
  swift_unknownObjectRelease();
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  swift_unknownObjectRetain();
  count = nw_array_get_count();
  if (count < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = count;
    if (count)
    {
      v4 = 0;
      v0 = MEMORY[0x277D84F90];
      do
      {
        v5 = nw_array_get_object_at_index();
        v23[1] = &unk_2836D0120;
        if (!swift_dynamicCastObjCProtocolConditional())
        {
          swift_unknownObjectRelease();
        }

        nw_endpoint_get_description();
        v6 = String.init(cString:)();
        v8 = v7;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = *(v0 + 16);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v0 = v12;
        }

        v9 = *(v0 + 16);
        if (v9 >= *(v0 + 24) >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v0 = v13;
        }

        ++v4;
        swift_unknownObjectRelease();
        *(v0 + 16) = v9 + 1;
        v10 = v0 + 16 * v9;
        *(v10 + 32) = v6;
        *(v10 + 40) = v8;
      }

      while (v3 != v4);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      v0 = MEMORY[0x277D84F90];
    }

    if (one-time initialization token for siriNetwork == -1)
    {
      goto LABEL_16;
    }
  }

  OUTLINED_FUNCTION_0_6();
LABEL_16:
  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.siriNetwork);
  swift_bridgeObjectRetain_n();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v23[0] = v18;
    *v17 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v19 = String.init<A>(describing:)();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v23);

    *(v17 + 4) = v21;

    _os_log_impl(&dword_223515000, v15, v16, "SiriNetwork - Report: Attempted Endpoints: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();
  }

  else
  {
  }

  swift_unknownObjectRelease();
  return v0;
}

uint64_t ConnectionSnapshotReport.debugDescription.getter()
{
  v1 = 0xD000000000000019;
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  v5 = *(v0 + 3);
  v6 = *(v0 + 4);
  memcpy(__dst, v0 + 10, sizeof(__dst));
  v7 = *(v0 + 45);
  v8 = *(v0 + 46);
  v9 = *(v0 + 376);
  memcpy(__src, v0 + 96, sizeof(__src));
  v41 = *(v0 + 85);
  v44 = *(v0 + 86);
  v45 = v0[174];
  OUTLINED_FUNCTION_3_6();
  _StringGuts.grow(_:)(17);

  v63[0] = 0x65636E6575716573;
  v63[1] = 0xEF207265626D754ELL;
  LODWORD(v54[0]) = v2;
  v10 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x223DE2180](v10);

  v48 = v63[0];
  v49 = v63[1];
  v63[0] = 0x72656469766F7270;
  v63[1] = 0xE900000000000020;
  MEMORY[0x223DE2180](v3, v4);
  v50 = v63[0];
  v51 = v63[1];
  OUTLINED_FUNCTION_3_6();
  _StringGuts.grow(_:)(24);

  OUTLINED_FUNCTION_5_0();
  v63[0] = 0xD000000000000016;
  v63[1] = v11;
  MEMORY[0x223DE2180](v5, v6);
  v46 = v63[0];
  v47 = v63[1];
  OUTLINED_FUNCTION_3_6();
  _StringGuts.grow(_:)(26);

  OUTLINED_FUNCTION_5_0();
  v55 = 0xD000000000000018;
  v56 = v12;
  memcpy(v63, __dst, 0x139uLL);
  if (_s11SiriNetwork010ConnectionB6ReportVSgWOg(v63) == 1)
  {
    v13 = 0xE700000000000000;
    OUTLINED_FUNCTION_4_6();
    v14 = 0xD000000000000019;
  }

  else
  {
    memcpy(v53, __dst, 0x139uLL);
    memcpy(v54, __dst, 0x139uLL);
    outlined init with copy of ConnectionNetworkReport(v54, v52);
    String.init<A>(describing:)();
    v13 = v15;
    OUTLINED_FUNCTION_4_6();
  }

  MEMORY[0x223DE2180](v14, v13);

  v42 = v55;
  v43 = v56;
  v54[0] = 0;
  v54[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(27);

  OUTLINED_FUNCTION_5_0();
  v59 = 0xD000000000000019;
  v60 = v16;
  if (v9)
  {
    v17 = 0xE700000000000000;
    v18 = 0xD000000000000019;
  }

  else
  {
    v54[0] = v7;
    v54[1] = v8;
    v18 = String.init<A>(describing:)();
    v17 = v19;
  }

  MEMORY[0x223DE2180](v18, v17);

  v40 = v59;
  v20 = v60;
  v54[0] = 0;
  v54[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(19);

  OUTLINED_FUNCTION_5_0();
  v57 = 0xD000000000000011;
  v58 = v21;
  memcpy(v54, __src, 0x121uLL);
  if (_s11SiriNetwork25ConnectionInterfaceReportVSgWOg(v54) == 1)
  {
    v22 = 0xE700000000000000;
    v23 = 0xD000000000000019;
  }

  else
  {
    memcpy(v52, __src, 0x121uLL);
    memcpy(v53, __src, 0x121uLL);
    outlined init with copy of ConnectionInterfaceReport(v53, &v55);
    v23 = String.init<A>(describing:)();
    v22 = v24;
  }

  MEMORY[0x223DE2180](v23, v22);

  v39 = v57;
  v25 = v58;
  v53[0] = 0;
  v53[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(29);

  OUTLINED_FUNCTION_5_0();
  v53[0] = 0xD00000000000001BLL;
  v53[1] = v26;
  v27 = MEMORY[0x223DE2280](v41, &type metadata for ConnectionInterfaceReport);
  MEMORY[0x223DE2180](v27);

  v28 = v53[0];
  v29 = v53[1];
  v53[0] = 0;
  v53[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(27);

  OUTLINED_FUNCTION_5_0();
  v53[0] = 0xD000000000000019;
  v53[1] = v30;
  v31 = MEMORY[0x223DE2280](v44, &type metadata for ConnectionTCPInfoMetrics);
  MEMORY[0x223DE2180](v31);

  v33 = v53[0];
  v32 = v53[1];
  v53[0] = 0;
  v53[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  v53[0] = 0x516B726F7774656ELL;
  v53[1] = 0xEF207974696C6175;
  if (v45 == 4)
  {
    v34 = 0xE700000000000000;
  }

  else
  {
    v52[0] = v45;
    v1 = String.init<A>(describing:)();
    v34 = v35;
  }

  MEMORY[0x223DE2180](v1, v34);

  v37 = v53[0];
  v36 = v53[1];
  v53[0] = 0;
  v53[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(77);
  MEMORY[0x223DE2180](0xD00000000000002BLL, 0x80000002235F7640);
  MEMORY[0x223DE2180](v48, v49);

  OUTLINED_FUNCTION_0_20();
  MEMORY[0x223DE2180](v50, v51);

  OUTLINED_FUNCTION_0_20();
  MEMORY[0x223DE2180](v46, v47);

  OUTLINED_FUNCTION_0_20();
  MEMORY[0x223DE2180](v42, v43);

  OUTLINED_FUNCTION_0_20();
  MEMORY[0x223DE2180](v40, v20);

  OUTLINED_FUNCTION_0_20();
  MEMORY[0x223DE2180](v39, v25);

  OUTLINED_FUNCTION_0_20();
  MEMORY[0x223DE2180](v28, v29);

  OUTLINED_FUNCTION_0_20();
  MEMORY[0x223DE2180](v33, v32);

  OUTLINED_FUNCTION_0_20();
  MEMORY[0x223DE2180](v37, v36);

  return v53[0];
}

uint64_t ConnectionNetworkReport.debugDescription.getter()
{
  v1 = 0x6E776F6E6B6E75;
  strcpy(v77, "attemptCount ");
  HIWORD(v77[1]) = -4864;
  v2 = *(v0 + 4);
  OUTLINED_FUNCTION_5_20(*v0);
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x223DE2180](v3);

  v75 = v77[0];
  v76 = v77[1];
  strcpy(v77, "carrierName ");
  BYTE5(v77[1]) = 0;
  HIWORD(v77[1]) = -5120;
  if (*(v0 + 16))
  {
    v4 = *(v0 + 8);
    v5 = *(v0 + 16);
  }

  else
  {
    OUTLINED_FUNCTION_6_19();
  }

  OUTLINED_FUNCTION_8_13();

  v73 = v77[0];
  v74 = v77[1];
  v77[0] = 0;
  v77[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(21);
  MEMORY[0x223DE2180](0xD000000000000013, 0x80000002235F8AD0);
  v6 = *(v0 + 24);
  *(v0 + 32);
  Double.write<A>(to:)();
  strcpy(v77, "wifiPhyMode ");
  HIWORD(v77[1]) = -5120;
  if (*(v0 + 48))
  {
    v7 = *(v0 + 40);
    v8 = *(v0 + 48);
  }

  else
  {
    OUTLINED_FUNCTION_6_19();
  }

  OUTLINED_FUNCTION_8_13();

  v71 = v77[0];
  v72 = v77[1];
  _StringGuts.grow(_:)(23);

  OUTLINED_FUNCTION_5_0();
  v77[0] = 0xD000000000000015;
  v77[1] = v9;
  if (*(v0 + 64))
  {
    v10 = *(v0 + 56);
    v11 = *(v0 + 64);
  }

  else
  {
    OUTLINED_FUNCTION_6_19();
  }

  OUTLINED_FUNCTION_8_13();

  v69 = v77[0];
  v70 = v77[1];
  OUTLINED_FUNCTION_5_0();
  v77[0] = 0xD00000000000001CLL;
  v77[1] = v12;
  if (*(v0 + 80))
  {
    v13 = *(v0 + 72);
    v14 = *(v0 + 80);
  }

  else
  {
    OUTLINED_FUNCTION_6_19();
  }

  OUTLINED_FUNCTION_8_13();

  v67 = v77[0];
  v68 = v77[1];
  strcpy(v77, "subflowCount ");
  HIWORD(v77[1]) = -4864;
  v15 = *(v0 + 92);
  OUTLINED_FUNCTION_5_20(*(v0 + 88));
  OUTLINED_FUNCTION_2_24();
  OUTLINED_FUNCTION_7_17();

  v65 = v77[0];
  v66 = v77[1];
  OUTLINED_FUNCTION_5_0();
  v77[0] = 0xD000000000000016;
  v77[1] = v16;
  v17 = *(v0 + 100);
  OUTLINED_FUNCTION_5_20(*(v0 + 96));
  v18 = OUTLINED_FUNCTION_2_24();
  MEMORY[0x223DE2180](v18);

  v64 = v77[1];
  OUTLINED_FUNCTION_5_0();
  v77[0] = 0xD000000000000014;
  v77[1] = v19;
  v20 = *(v0 + 104);
  v21 = Dictionary.description.getter();
  MEMORY[0x223DE2180](v21);

  v63 = v77[1];
  OUTLINED_FUNCTION_5_0();
  v77[0] = 0xD000000000000011;
  v77[1] = v22;
  if (*(v0 + 120))
  {
    v23 = *(v0 + 112);
    v24 = *(v0 + 120);
  }

  else
  {
    OUTLINED_FUNCTION_6_19();
  }

  OUTLINED_FUNCTION_8_13();

  v61 = v77[0];
  v62 = v77[1];
  OUTLINED_FUNCTION_5_0();
  v77[0] = 0xD000000000000016;
  v77[1] = v25;
  v26 = *(v0 + 128);
  *(v0 + 136);
  OUTLINED_FUNCTION_2_24();
  OUTLINED_FUNCTION_7_17();

  v60 = v77[1];
  OUTLINED_FUNCTION_5_0();
  v77[0] = 0xD000000000000019;
  v77[1] = v27;
  v28 = *(v0 + 152);
  OUTLINED_FUNCTION_0_39(*(v0 + 144));
  OUTLINED_FUNCTION_7_17();

  v59 = v77[1];
  OUTLINED_FUNCTION_5_0();
  v77[0] = 0xD000000000000020;
  v77[1] = v29;
  v30 = *(v0 + 168);
  OUTLINED_FUNCTION_0_39(*(v0 + 160));
  OUTLINED_FUNCTION_7_17();

  v58 = v77[1];
  OUTLINED_FUNCTION_5_0();
  v77[0] = 0xD000000000000027;
  v77[1] = v31;
  v32 = *(v0 + 184);
  OUTLINED_FUNCTION_0_39(*(v0 + 176));
  OUTLINED_FUNCTION_7_17();

  v57 = v77[1];
  OUTLINED_FUNCTION_5_0();
  v77[0] = 0xD000000000000022;
  v77[1] = v33;
  v34 = *(v0 + 200);
  OUTLINED_FUNCTION_0_39(*(v0 + 192));
  OUTLINED_FUNCTION_7_17();

  v56 = v77[1];
  OUTLINED_FUNCTION_5_0();
  v77[0] = 0xD000000000000015;
  v77[1] = v35;
  v36 = *(v0 + 216);
  v37 = OUTLINED_FUNCTION_0_39(*(v0 + 208));
  MEMORY[0x223DE2180](v37);

  v55 = v77[1];
  strcpy(v77, "tlsVersion ");
  HIDWORD(v77[1]) = -352321536;
  if (*(v0 + 232))
  {
    v1 = *(v0 + 224);
    v38 = *(v0 + 232);
  }

  else
  {
    v38 = 0xE700000000000000;
  }

  MEMORY[0x223DE2180](v1, v38);

  v53 = v77[1];
  v54 = v77[0];
  MEMORY[0x223DE2180](0x656D69546E65706FLL, 0xED000020734D6E49);
  ConnectionNetworkReport.openTimeInMs.getter();
  Double.write<A>(to:)();
  OUTLINED_FUNCTION_5_0();
  v77[1] = v39;
  ConnectionNetworkReport.firstByteTimeInMs.getter();
  v40 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x223DE2180](v40);

  v41 = v77[1];
  strcpy(v77, "isCaptive ");
  BYTE3(v77[1]) = 0;
  HIDWORD(v77[1]) = -369098752;
  if (*(v0 + 265))
  {
    v42 = 1702195828;
  }

  else
  {
    v42 = 0x65736C6166;
  }

  if (*(v0 + 265))
  {
    v43 = 0xE400000000000000;
  }

  else
  {
    v43 = 0xE500000000000000;
  }

  MEMORY[0x223DE2180](v42, v43);

  v44 = v77[1];
  v52 = v77[0];
  v77[0] = 0;
  v77[1] = 0xE000000000000000;
  MEMORY[0x223DE2180](0x2069737372, 0xE500000000000000);
  v45 = *(v0 + 272);
  v46 = *(v0 + 280);
  OUTLINED_FUNCTION_3_19();
  v77[0] = 0;
  v77[1] = 0xE000000000000000;
  MEMORY[0x223DE2180](544370291, 0xE400000000000000);
  v47 = *(v0 + 288);
  v48 = *(v0 + 296);
  OUTLINED_FUNCTION_3_19();
  v77[0] = 0;
  v77[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  MEMORY[0x223DE2180](0xD00000000000001CLL, 0x80000002235F8CA0);
  v49 = *(v0 + 304);
  v50 = *(v0 + 312);
  OUTLINED_FUNCTION_3_19();
  _StringGuts.grow(_:)(132);
  MEMORY[0x223DE2180](0xD00000000000002ALL, 0x80000002235F8CC0);
  MEMORY[0x223DE2180](v75, v76);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v73, v74);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](0, 0xE000000000000000);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v71, v72);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v69, v70);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v67, v68);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v65, v66);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](0xD000000000000016, v64);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](0xD000000000000014, v63);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v61, v62);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](0xD000000000000016, v60);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](0xD000000000000019, v59);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](0xD000000000000020, v58);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](0xD000000000000027, v57);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](0xD000000000000022, v56);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](0xD000000000000015, v55);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v54, v53);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](0, 0xE000000000000000);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](0xD000000000000012, v41);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v52, v44);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](0, 0xE000000000000000);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](0, 0xE000000000000000);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](0, 0xE000000000000000);

  return 0;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t ConnectionInterfaceReport.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = *(v0 + 9);
  memcpy(__dst, v0 + 5, sizeof(__dst));
  v28[0] = 0x20656D616ELL;
  OUTLINED_FUNCTION_1_23();
  MEMORY[0x223DE2180](v1, v2);
  v20 = v28[0];
  v7 = v28[1];
  v28[0] = 0x2065707974;
  OUTLINED_FUNCTION_1_23();
  MEMORY[0x223DE2180](v3, v4);
  v21 = v28[0];
  v8 = v28[1];
  v28[0] = 0;
  OUTLINED_FUNCTION_1_23();
  _StringGuts.grow(_:)(17);
  MEMORY[0x223DE2180](0x697463656E6E6F63, 0xEF20657079546E6FLL);
  _print_unlocked<A, B>(_:_:)();
  v9 = v28[0];
  v10 = v28[1];
  v28[0] = 0x207865646E69;
  v28[1] = 0xE600000000000000;
  LODWORD(v24[0]) = v6;
  v11 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x223DE2180](v11);

  v12 = v28[0];
  v13 = v28[1];
  v28[0] = 0;
  OUTLINED_FUNCTION_1_23();
  _StringGuts.grow(_:)(27);

  v25 = 0xD000000000000019;
  v26 = 0x80000002235F7620;
  memcpy(v28, __dst, 0xF9uLL);
  if (_s11SiriNetwork24ConnectionTCPInfoMetricsVSgWOg(v28) == 1)
  {
    v14 = 0xE700000000000000;
    v15 = 0x6E776F6E6B6E75;
  }

  else
  {
    memcpy(v23, __dst, sizeof(v23));
    memcpy(v24, __dst, 0xF9uLL);
    outlined init with copy of ConnectionTCPInfoMetrics(v24, v22);
    v15 = String.init<A>(describing:)();
    v14 = v16;
  }

  MEMORY[0x223DE2180](v15, v14);

  v17 = v25;
  v18 = v26;
  v24[0] = 0;
  v24[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(64);
  MEMORY[0x223DE2180](0xD00000000000002DLL, 0x80000002235F8F00);
  MEMORY[0x223DE2180](v20, v7);

  OUTLINED_FUNCTION_0_44();
  MEMORY[0x223DE2180](v21, v8);

  OUTLINED_FUNCTION_0_44();
  MEMORY[0x223DE2180](v9, v10);

  OUTLINED_FUNCTION_0_44();
  MEMORY[0x223DE2180](v12, v13);

  OUTLINED_FUNCTION_0_44();
  MEMORY[0x223DE2180](v17, v18);

  MEMORY[0x223DE2180](93, 0xE100000000000000);
  return v24[0];
}

uint64_t NetworkConnectionProvider.configureConnectionHandler(_:)(uint64_t a1)
{
  v3 = v1;
  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  outlined init with copy of NetworkConnectionProtocol?(v1 + 16, &aBlock, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
  if (v55)
  {
    outlined init with take of RPCOspreyConnectionProtocol(&aBlock, &v62);
    type metadata accessor for NetworkConnectionProvider.StateUpdateHandler(0);
    OUTLINED_FUNCTION_7_1();
    swift_allocObject();
    OUTLINED_FUNCTION_91();
    v5 = *(v1 + 2152);
    *(v1 + 2152) = v1;

    swift_weakAssign();

    v7 = *(v1 + 2152);
    OUTLINED_FUNCTION_87(v6, v8, v9, v10, v11, v12, v13, v14, v50, aBlock, *(&aBlock + 1), v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65);
    v15 = v2[6];

    v16 = OUTLINED_FUNCTION_25_1();
    v15(v16);
    type metadata accessor for NetworkConnectionProvider.ViabilityUpdateHandler(0);
    OUTLINED_FUNCTION_7_1();
    swift_allocObject();
    OUTLINED_FUNCTION_91();
    v17 = *(v3 + 2160);
    *(v3 + 2160) = v7;

    swift_weakAssign();

    v19 = *(v3 + 2160);
    OUTLINED_FUNCTION_87(v18, v20, v21, v22, v23, v24, v25, v26, v51, aBlock, *(&aBlock + 1), v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65);
    v27 = v2[9];

    v28 = OUTLINED_FUNCTION_25_1();
    v27(v28);
    type metadata accessor for NetworkConnectionProvider.BetterPathUpdateHandler(0);
    OUTLINED_FUNCTION_7_1();
    swift_allocObject();
    OUTLINED_FUNCTION_91();
    v29 = *(v3 + 2168);
    *(v3 + 2168) = v19;

    swift_weakAssign();

    *(v3 + 2168);
    OUTLINED_FUNCTION_87(v30, v31, v32, v33, v34, v35, v36, v37, v52, aBlock, *(&aBlock + 1), v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65);
    v38 = v2[12];

    v39 = OUTLINED_FUNCTION_25_1();
    v38(v39);
    if (a1)
    {
      outlined init with copy of RPCOspreyConnectionProtocol(&v62, &aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork0B18ConnectionProtocol_pMd, _s11SiriNetwork0B18ConnectionProtocol_pMR);
      type metadata accessor for NWConnection();
      if (swift_dynamicCast())
      {
        MEMORY[0x223DE1A50]();
        OUTLINED_FUNCTION_7_1();
        v40 = swift_allocObject();
        swift_weakInit();
        v56 = partial apply for closure #1 in NetworkConnectionProvider.configureConnectionHandler(_:);
        v57 = v40;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        v54 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        v55 = &block_descriptor_261;
        v41 = _Block_copy(&aBlock);

        nw_connection_set_read_close_handler();
        _Block_release(v41);
        v42 = swift_unknownObjectRelease();
        MEMORY[0x223DE1A50](v42);
        OUTLINED_FUNCTION_104();
        OUTLINED_FUNCTION_7_1();
        v43 = swift_allocObject();
        swift_weakInit();
        v56 = partial apply for closure #2 in NetworkConnectionProvider.configureConnectionHandler(_:);
        v57 = v43;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        v54 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        v55 = &block_descriptor_265;
        v44 = _Block_copy(&aBlock);

        nw_connection_set_write_close_handler();
        _Block_release(v44);

        swift_unknownObjectRelease();
      }
    }

    return __swift_destroy_boxed_opaque_existential_0(&v62);
  }

  else
  {
    outlined destroy of NetworkConnectionProtocol?(&aBlock, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
    lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
    OUTLINED_FUNCTION_10_0();
    v46 = swift_allocError();
    OUTLINED_FUNCTION_34_0(v46, v47);
    return OUTLINED_FUNCTION_39(xmmword_2235F01E0, v48, v49);
  }
}

uint64_t objectdestroy_21Tm()
{
  v1 = v0[2];

  v2 = v0[3];

  if (v0[4])
  {
    v3 = v0[5];
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t NetworkConnectionProvider.startConnectionWithOpenTimeoutTimer(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  outlined init with copy of NetworkConnectionProtocol?(v3 + 16, &v22, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
  if (v23)
  {
    outlined init with take of RPCOspreyConnectionProtocol(&v22, v24);
    specialized ConnectionProviderProtocol.openCompletionSetup(completion:)(a1, a2);
    specialized ConnectionProviderProtocol.setupOpenTimeoutTimer()();
    specialized ConnectionProviderProtocol.setupOpenSlowTimer()();
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.siriNetwork);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      OUTLINED_FUNCTION_6_5();
      v9 = swift_slowAlloc();
      OUTLINED_FUNCTION_4_3();
      v10 = swift_slowAlloc();
      *&v22 = v10;
      *v9 = 136315138;
      v11 = NetworkConnectionProvider.connectionIdentifier.getter();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v22);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_223515000, v7, v8, "Provider - NetworkConnectionProvider [%s]: Connection start", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      OUTLINED_FUNCTION_2_2();
      MEMORY[0x223DE38F0]();
      OUTLINED_FUNCTION_2_2();
      MEMORY[0x223DE38F0]();
    }

    v14 = __swift_project_boxed_opaque_existential_1(v24, v24[3]);
    v15 = *(v3 + 2056);
    v16 = *v14;
    NWConnection.start(queue:)();
    return __swift_destroy_boxed_opaque_existential_0(v24);
  }

  else
  {
    outlined destroy of NetworkConnectionProtocol?(&v22, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
    lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
    OUTLINED_FUNCTION_10_0();
    v18 = swift_allocError();
    OUTLINED_FUNCTION_34_0(v18, v19);
    return OUTLINED_FUNCTION_39(xmmword_2235F01E0, v20, v21);
  }
}

uint64_t specialized ConnectionProviderProtocol.openCompletionSetup(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = a1;
  v6[4] = a2;
  v7 = *(v2 + 2064);
  v8 = *(v2 + 2072);
  *(v2 + 2064) = partial apply for specialized closure #1 in ConnectionProviderProtocol.openCompletionSetup(completion:);
  *(v2 + 2072) = v6;

  outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v7);
}

{
  OUTLINED_FUNCTION_7_1();
  v5 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_109();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = a1;
  v6[4] = a2;
  v7 = *(v2 + 2080);
  v8 = *(v2 + 2088);
  *(v2 + 2080) = partial apply for specialized closure #1 in ConnectionProviderProtocol.openCompletionSetup(completion:);
  *(v2 + 2088) = v6;

  outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v7);
}

uint64_t sub_223550DBC()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t specialized ConnectionProviderProtocol.setupOpenTimeoutTimer()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTime();
  v97 = *(v2 - 8);
  v98 = v2;
  v3 = *(v97 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v95 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v96 = &v79 - v6;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v93 = *(v7 - 8);
  v94 = v7;
  v8 = *(v93 + 64);
  MEMORY[0x28223BE20](v7);
  v91 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for DispatchQoS();
  v90 = *(v92 - 8);
  v10 = *(v90 + 64);
  MEMORY[0x28223BE20](v92);
  v89 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v87 = *(v12 - 8);
  v88 = v12;
  v13 = *(v87 + 64);
  MEMORY[0x28223BE20](v12);
  v86 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v84 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v85 = (&v79 - v19);
  v20 = type metadata accessor for DispatchTimeInterval();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v99 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v79 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v79 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v79 - v31;
  specialized ConnectionProviderProtocol.openTimeoutTimerInterval.getter((&v79 - v31));
  if (one-time initialization token for siriNetwork != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, static Logger.siriNetwork);
  v34 = *(v21 + 16);
  v100 = v32;
  v34(v30, v32, v20);

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();

  v37 = os_log_type_enabled(v35, v36);
  v101 = v1;
  v83 = v20;
  if (v37)
  {
    v81 = v36;
    v82 = v27;
    v38 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    aBlock[0] = v80;
    *v38 = 136315650;
    v39 = *v1;
    v40 = _typeName(_:qualified:)();
    v42 = v20;
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, aBlock);

    *(v38 + 4) = v43;
    *(v38 + 12) = 2080;
    v44 = NetworkConnectionProvider.connectionIdentifier.getter();
    v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, aBlock);

    *(v38 + 14) = v46;
    v47 = v42;
    *(v38 + 22) = 2080;
    v48 = v85;
    v34(v85, v30, v42);
    __swift_storeEnumTagSinglePayload(v48, 0, 1, v42);
    v49 = v48;
    v50 = v84;
    outlined init with copy of NetworkConnectionProtocol?(v49, v84, &_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
    if (__swift_getEnumTagSinglePayload(v50, 1, v42) == 1)
    {
      v51 = 0xE100000000000000;
      v52 = 45;
      v27 = v82;
    }

    else
    {
      v27 = v82;
      (*(v21 + 32))(v82, v50, v47);
      v34(v99, v27, v47);
      v52 = String.init<A>(describing:)();
      v51 = v54;
      (*(v21 + 8))(v27, v47);
    }

    outlined destroy of NetworkConnectionProtocol?(v85, &_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
    v55 = *(v21 + 8);
    v84 = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v85 = v55;
    (v55)(v30, v47);
    v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v51, aBlock);

    *(v38 + 24) = v56;
    _os_log_impl(&dword_223515000, v35, v81, "Provider - %s [%s]: Open timer scheduled (%s).", v38, 0x20u);
    v57 = v80;
    swift_arrayDestroy();
    MEMORY[0x223DE38F0](v57, -1, -1);
    MEMORY[0x223DE38F0](v38, -1, -1);
  }

  else
  {

    v53 = *(v21 + 8);
    v84 = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v85 = v53;
    (v53)(v30, v20);
  }

  type metadata accessor for OS_dispatch_source();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type NetworkConnectionProvider and conformance NetworkConnectionProvider(&lazy protocol witness table cache variable for type OS_dispatch_source.TimerFlags and conformance OS_dispatch_source.TimerFlags, 255, MEMORY[0x277D85278]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMd, &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_source.TimerFlags] and conformance [A], &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMd, &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMR);
  v58 = v86;
  v59 = v88;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v60 = v101[257];
  v61 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
  (*(v87 + 8))(v58, v59);
  ObjectType = swift_getObjectType();
  v63 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = partial apply for specialized closure #1 in ConnectionProviderProtocol.setupOpenTimeoutTimer();
  aBlock[5] = v63;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_253;
  v64 = _Block_copy(aBlock);

  v65 = v89;
  default argument 0 of OS_dispatch_source.setEventHandler(qos:flags:handler:)(ObjectType);
  v66 = v91;
  default argument 1 of OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  v82 = v61;
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v64);
  (*(v93 + 8))(v66, v94);
  (*(v90 + 8))(v65, v92);

  v67 = v95;
  static DispatchTime.now()();
  v68 = v96;
  DispatchTime.advanced(by:)();
  v69 = v98;
  v70 = *(v97 + 8);
  v70(v67, v98);
  default argument 1 of OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)(v27);
  v71 = v27;
  v72 = v99;
  default argument 2 of OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)(v99);
  MEMORY[0x223DE2510](v68, v71, v72, ObjectType);
  v73 = v72;
  v74 = v83;
  v75 = v85;
  (v85)(v73, v83);
  v75(v71, v74);
  v70(v68, v69);
  v76 = v82;
  OS_dispatch_source.resume()();
  v75(v100, v74);
  v77 = v101[264];
  v101[264] = v76;
  return swift_unknownObjectRelease();
}

void specialized ConnectionProviderProtocol.openTimeoutTimerInterval.getter(uint64_t *a1@<X8>)
{
  if ((*(v1 + 1816) & 1) == 0)
  {
    v5 = *(v1 + 1808);
    v6 = v5 * 1000.0;
    if (v5 * 1000.0 <= -9.22337204e18)
    {
      v3 = MEMORY[0x277D85178];
    }

    else
    {
      if (v6 < 9.22337204e18)
      {
        if (v6 <= -9.22337204e18)
        {
          __break(1u);
          goto LABEL_20;
        }

        v4 = v6;
        if (v6 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v3 = MEMORY[0x277D85178];
          goto LABEL_14;
        }
      }

      v7 = round(v5);
      if (v7 > -9.22337204e18)
      {
        if (v7 >= 9.22337204e18)
        {
          v3 = MEMORY[0x277D85188];
          v4 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_14;
        }

        if (v7 > -9.22337204e18)
        {
          v4 = v7;
          v3 = MEMORY[0x277D85188];
          goto LABEL_14;
        }

LABEL_20:
        __break(1u);
        return;
      }

      v3 = MEMORY[0x277D85188];
    }

    v4 = 0x8000000000000000;
    goto LABEL_14;
  }

  v3 = MEMORY[0x277D85178];
  v4 = 15000;
LABEL_14:
  *a1 = v4;
  v8 = *v3;
  v9 = type metadata accessor for DispatchTimeInterval();
  v10 = *(*(v9 - 8) + 104);

  v10(a1, v8, v9);
}

{
  if ((*(v1 + 1832) & 1) == 0)
  {
    v5 = *(v1 + 1824);
    v6 = v5 * 1000.0;
    if (v5 * 1000.0 <= -9.22337204e18)
    {
      v3 = MEMORY[0x277D85178];
    }

    else
    {
      if (v6 < 9.22337204e18)
      {
        if (v6 <= -9.22337204e18)
        {
          __break(1u);
          goto LABEL_20;
        }

        v4 = v6;
        if (v6 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v3 = MEMORY[0x277D85178];
          goto LABEL_14;
        }
      }

      v7 = round(v5);
      if (v7 > -9.22337204e18)
      {
        if (v7 >= 9.22337204e18)
        {
          v3 = MEMORY[0x277D85188];
          v4 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_14;
        }

        if (v7 > -9.22337204e18)
        {
          v4 = v7;
          v3 = MEMORY[0x277D85188];
          goto LABEL_14;
        }

LABEL_20:
        __break(1u);
        return;
      }

      v3 = MEMORY[0x277D85188];
    }

    v4 = 0x8000000000000000;
    goto LABEL_14;
  }

  v3 = MEMORY[0x277D85178];
  v4 = 15000;
LABEL_14:
  *a1 = v4;
  v8 = *v3;
  v9 = type metadata accessor for DispatchTimeInterval();
  v10 = *(*(v9 - 8) + 104);

  v10(a1, v8, v9);
}

uint64_t default argument 1 of OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D85180];
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t specialized ConnectionProviderProtocol.setupOpenSlowTimer()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTime();
  v97 = *(v2 - 8);
  v98 = v2;
  v3 = *(v97 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v95 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v96 = &v79 - v6;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v93 = *(v7 - 8);
  v94 = v7;
  v8 = *(v93 + 64);
  MEMORY[0x28223BE20](v7);
  v91 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for DispatchQoS();
  v90 = *(v92 - 8);
  v10 = *(v90 + 64);
  MEMORY[0x28223BE20](v92);
  v89 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v87 = *(v12 - 8);
  v88 = v12;
  v13 = *(v87 + 64);
  MEMORY[0x28223BE20](v12);
  v86 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v84 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v85 = (&v79 - v19);
  v20 = type metadata accessor for DispatchTimeInterval();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v99 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v79 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v79 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v79 - v31;
  specialized ConnectionProviderProtocol.openSlowTimerInterval.getter((&v79 - v31));
  if (one-time initialization token for siriNetwork != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, static Logger.siriNetwork);
  v34 = *(v21 + 16);
  v100 = v32;
  v34(v30, v32, v20);

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();

  v37 = os_log_type_enabled(v35, v36);
  v101 = v1;
  v83 = v20;
  if (v37)
  {
    v81 = v36;
    v82 = v27;
    v38 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    aBlock[0] = v80;
    *v38 = 136315650;
    v39 = *v1;
    v40 = _typeName(_:qualified:)();
    v42 = v20;
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, aBlock);

    *(v38 + 4) = v43;
    *(v38 + 12) = 2080;
    v44 = NetworkConnectionProvider.connectionIdentifier.getter();
    v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, aBlock);

    *(v38 + 14) = v46;
    v47 = v42;
    *(v38 + 22) = 2080;
    v48 = v85;
    v34(v85, v30, v42);
    __swift_storeEnumTagSinglePayload(v48, 0, 1, v42);
    v49 = v48;
    v50 = v84;
    outlined init with copy of NetworkConnectionProtocol?(v49, v84, &_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
    if (__swift_getEnumTagSinglePayload(v50, 1, v42) == 1)
    {
      v51 = 0xE100000000000000;
      v52 = 45;
      v27 = v82;
    }

    else
    {
      v27 = v82;
      (*(v21 + 32))(v82, v50, v47);
      v34(v99, v27, v47);
      v52 = String.init<A>(describing:)();
      v51 = v54;
      (*(v21 + 8))(v27, v47);
    }

    outlined destroy of NetworkConnectionProtocol?(v85, &_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
    v55 = *(v21 + 8);
    v84 = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v85 = v55;
    (v55)(v30, v47);
    v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v51, aBlock);

    *(v38 + 24) = v56;
    _os_log_impl(&dword_223515000, v35, v81, "Provider - %s [%s]: Open slow timer scheduled (%s).", v38, 0x20u);
    v57 = v80;
    swift_arrayDestroy();
    MEMORY[0x223DE38F0](v57, -1, -1);
    MEMORY[0x223DE38F0](v38, -1, -1);
  }

  else
  {

    v53 = *(v21 + 8);
    v84 = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v85 = v53;
    (v53)(v30, v20);
  }

  type metadata accessor for OS_dispatch_source();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type NetworkConnectionProvider and conformance NetworkConnectionProvider(&lazy protocol witness table cache variable for type OS_dispatch_source.TimerFlags and conformance OS_dispatch_source.TimerFlags, 255, MEMORY[0x277D85278]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMd, &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_source.TimerFlags] and conformance [A], &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMd, &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMR);
  v58 = v86;
  v59 = v88;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v60 = v101[257];
  v61 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
  (*(v87 + 8))(v58, v59);
  ObjectType = swift_getObjectType();
  v63 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = partial apply for specialized closure #1 in ConnectionProviderProtocol.setupOpenSlowTimer();
  aBlock[5] = v63;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_249;
  v64 = _Block_copy(aBlock);

  v65 = v89;
  default argument 0 of OS_dispatch_source.setEventHandler(qos:flags:handler:)(ObjectType);
  v66 = v91;
  default argument 1 of OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  v82 = v61;
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v64);
  (*(v93 + 8))(v66, v94);
  (*(v90 + 8))(v65, v92);

  v67 = v95;
  static DispatchTime.now()();
  v68 = v96;
  DispatchTime.advanced(by:)();
  v69 = v98;
  v70 = *(v97 + 8);
  v70(v67, v98);
  default argument 1 of OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)(v27);
  v71 = v27;
  v72 = v99;
  default argument 2 of OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)(v99);
  MEMORY[0x223DE2510](v68, v71, v72, ObjectType);
  v73 = v72;
  v74 = v83;
  v75 = v85;
  (v85)(v73, v83);
  v75(v71, v74);
  v70(v68, v69);
  v76 = v82;
  OS_dispatch_source.resume()();
  v75(v100, v74);
  v77 = v101[265];
  v101[265] = v76;
  return swift_unknownObjectRelease();
}

void specialized ConnectionProviderProtocol.openSlowTimerInterval.getter(uint64_t *a1@<X8>)
{
  if ((*(v1 + 1832) & 1) == 0)
  {
    v5 = *(v1 + 1824);
    v6 = v5 * 1000.0;
    if (v5 * 1000.0 <= -9.22337204e18)
    {
      v3 = MEMORY[0x277D85178];
    }

    else
    {
      if (v6 < 9.22337204e18)
      {
        if (v6 <= -9.22337204e18)
        {
          __break(1u);
          goto LABEL_20;
        }

        v4 = v6;
        if (v6 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v3 = MEMORY[0x277D85178];
          goto LABEL_14;
        }
      }

      v7 = round(v5);
      if (v7 > -9.22337204e18)
      {
        if (v7 >= 9.22337204e18)
        {
          v3 = MEMORY[0x277D85188];
          v4 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_14;
        }

        if (v7 > -9.22337204e18)
        {
          v4 = v7;
          v3 = MEMORY[0x277D85188];
          goto LABEL_14;
        }

LABEL_20:
        __break(1u);
        return;
      }

      v3 = MEMORY[0x277D85188];
    }

    v4 = 0x8000000000000000;
    goto LABEL_14;
  }

  v3 = MEMORY[0x277D85178];
  v4 = 6000;
LABEL_14:
  *a1 = v4;
  v8 = *v3;
  v9 = type metadata accessor for DispatchTimeInterval();
  v10 = *(*(v9 - 8) + 104);

  v10(a1, v8, v9);
}

{
  if ((*(v1 + 1848) & 1) == 0)
  {
    v5 = *(v1 + 1840);
    v6 = v5 * 1000.0;
    if (v5 * 1000.0 <= -9.22337204e18)
    {
      v3 = MEMORY[0x277D85178];
    }

    else
    {
      if (v6 < 9.22337204e18)
      {
        if (v6 <= -9.22337204e18)
        {
          __break(1u);
          goto LABEL_20;
        }

        v4 = v6;
        if (v6 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v3 = MEMORY[0x277D85178];
          goto LABEL_14;
        }
      }

      v7 = round(v5);
      if (v7 > -9.22337204e18)
      {
        if (v7 >= 9.22337204e18)
        {
          v3 = MEMORY[0x277D85188];
          v4 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_14;
        }

        if (v7 > -9.22337204e18)
        {
          v4 = v7;
          v3 = MEMORY[0x277D85188];
          goto LABEL_14;
        }

LABEL_20:
        __break(1u);
        return;
      }

      v3 = MEMORY[0x277D85188];
    }

    v4 = 0x8000000000000000;
    goto LABEL_14;
  }

  v3 = MEMORY[0x277D85178];
  v4 = 6000;
LABEL_14:
  *a1 = v4;
  v8 = *v3;
  v9 = type metadata accessor for DispatchTimeInterval();
  v10 = *(*(v9 - 8) + 104);

  v10(a1, v8, v9);
}

uint64_t static ConnectionConfiguration.== infix(_:_:)(double *a1, double *a2)
{
  v5 = *a1;
  v4 = *(a1 + 1);
  v6 = *(a1 + 3);
  v367 = *(a1 + 4);
  v374 = *(a1 + 2);
  v381 = *(a1 + 5);
  v339 = *(a1 + 7);
  v346 = *(a1 + 6);
  v297 = *(a1 + 8);
  v248 = *(a1 + 10);
  v318 = *(a1 + 11);
  v325 = *(a1 + 9);
  HIDWORD(v283) = *(a1 + 96);
  HIDWORD(v276) = *(a1 + 97);
  HIDWORD(v269) = *(a1 + 98);
  HIDWORD(v262) = *(a1 + 113);
  HIDWORD(v255) = *(a1 + 114);
  v7 = a1[15];
  HIDWORD(v234) = *(a1 + 128);
  HIDWORD(v227) = *(a1 + 201);
  v8 = a1[26];
  HIDWORD(v220) = *(a1 + 216);
  v199 = *(a1 + 28);
  HIDWORD(v213) = *(a1 + 232);
  v185 = *(a1 + 30);
  HIDWORD(v206) = *(a1 + 248);
  v157 = *(a1 + 32);
  LODWORD(v192) = *(a1 + 264);
  v143 = *(a1 + 34);
  HIDWORD(v164) = *(a1 + 280);
  v122 = *(a1 + 38);
  HIDWORD(v150) = *(a1 + 312);
  LODWORD(v136) = *(a1 + 313);
  memcpy(__dst, a1 + 40, sizeof(__dst));
  memcpy(v396, a1 + 50, 0x72uLL);
  v9 = *a2;
  v10 = *(a2 + 1);
  v12 = *(a2 + 2);
  v11 = *(a2 + 3);
  v13 = *(a2 + 5);
  v353 = *(a2 + 6);
  v360 = *(a2 + 4);
  v332 = *(a2 + 7);
  v290 = *(a2 + 8);
  v241 = *(a2 + 10);
  v304 = *(a2 + 11);
  v311 = *(a2 + 9);
  LODWORD(v283) = *(a2 + 96);
  LODWORD(v276) = *(a2 + 97);
  LODWORD(v269) = *(a2 + 98);
  LODWORD(v262) = *(a2 + 113);
  LODWORD(v255) = *(a2 + 114);
  v14 = a2[15];
  LODWORD(v234) = *(a2 + 128);
  LODWORD(v227) = *(a2 + 201);
  v15 = a2[26];
  LODWORD(v220) = *(a2 + 216);
  v16 = a2[28];
  LODWORD(v213) = *(a2 + 232);
  v178 = *(a2 + 30);
  HIDWORD(v192) = *(a2 + 248);
  v17 = a2[32];
  v18 = a2[34];
  LODWORD(v171) = *(a2 + 280);
  HIDWORD(v171) = *(a2 + 264);
  v19 = a2[38];
  HIDWORD(v136) = *(a2 + 312);
  HIDWORD(v129) = *(a2 + 313);
  memcpy(v397, a2 + 40, sizeof(v397));
  memcpy(v398, a2 + 50, 0x72uLL);
  if (*&v5 != *&v9 || v4 != v10)
  {
    goto LABEL_5;
  }

  if (v6)
  {
    if (!v11)
    {
      goto LABEL_5;
    }

    v23 = v374 == v12 && v6 == v11;
    if (!v23 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  else if (v11)
  {
    goto LABEL_5;
  }

  if (v381)
  {
    if (!v13)
    {
      goto LABEL_5;
    }

    v24 = v367 == v360 && v381 == v13;
    if (!v24 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  else if (v13)
  {
    goto LABEL_5;
  }

  v25 = v396[1];
  if (v396[1] == 1 || (v26 = v396[3]) == 0)
  {
    v26 = v339;

    v27 = v346;
  }

  else
  {
    v27 = v396[2];
  }

  v28 = v398[1];
  if (v398[1] == 1 || (v29 = v398[3]) == 0)
  {
    v29 = v332;

    if (!v26)
    {
LABEL_32:
      if (v29)
      {
        goto LABEL_42;
      }

      goto LABEL_44;
    }
  }

  else
  {
    v353 = v398[2];

    if (!v26)
    {
      goto LABEL_32;
    }
  }

  if (!v29)
  {
LABEL_42:

    goto LABEL_5;
  }

  if (v27 == v353 && v26 == v29)
  {

    goto LABEL_44;
  }

  v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v31 & 1) == 0)
  {
LABEL_5:
    v21 = 0;
    return v21 & 1;
  }

LABEL_44:
  if (v325)
  {
    v32 = v318;
    if (!v311)
    {
      goto LABEL_5;
    }

    v33 = v297 == v290 && v325 == v311;
    if (!v33 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v32 = v318;
    if (v311)
    {
      goto LABEL_5;
    }
  }

  if (!v32)
  {
    v21 = 0;
    if (v304)
    {
      return v21 & 1;
    }

    goto LABEL_62;
  }

  if (!v304)
  {
    goto LABEL_5;
  }

  if (v248 != v241 || v32 != v304)
  {
    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v21 = 0;
    if ((v35 & 1) == 0)
    {
      return v21 & 1;
    }

LABEL_62:
    if ((HIDWORD(v283) ^ v283))
    {
      return v21 & 1;
    }

    goto LABEL_65;
  }

  v21 = 0;
  if (HIDWORD(v283) != v283)
  {
    return v21 & 1;
  }

LABEL_65:
  if ((HIDWORD(v276) ^ v276) & 1) != 0 || ((HIDWORD(v269) ^ v269) & 1) != 0 || ((HIDWORD(v262) ^ v262) & 1) != 0 || ((HIDWORD(v255) ^ v255))
  {
    return v21 & 1;
  }

  if ((v234 & 0x100000000) != 0)
  {
    v21 = 0;
    if (!v234)
    {
      return v21 & 1;
    }
  }

  else
  {
    v21 = 0;
    v36 = v234;
    if (v7 != v14)
    {
      v36 = 1;
    }

    if (v36)
    {
      return v21 & 1;
    }
  }

  if ((HIDWORD(v227) ^ v227))
  {
    return v21 & 1;
  }

  if ((v220 & 0x100000000) != 0)
  {
    v21 = v220;
    if (!v220)
    {
      return v21 & 1;
    }
  }

  else
  {
    v37 = v220;
    if (v8 != v15)
    {
      v37 = 1;
    }

    if (v37)
    {
      goto LABEL_5;
    }
  }

  if ((v213 & 0x100000000) != 0)
  {
    v21 = v213;
    if (!v213)
    {
      return v21 & 1;
    }
  }

  else
  {
    v38 = v213;
    if (*&v199 != v16)
    {
      v38 = 1;
    }

    if (v38)
    {
      goto LABEL_5;
    }
  }

  if ((v206 & 0x100000000) != 0)
  {
    v21 = BYTE4(v192);
    if (!HIDWORD(v192))
    {
      return v21 & 1;
    }
  }

  else
  {
    v39 = BYTE4(v192);
    if (v185 != v178)
    {
      v39 = 1;
    }

    if (v39)
    {
      goto LABEL_5;
    }
  }

  if (v192)
  {
    v21 = BYTE4(v171);
    if (!HIDWORD(v171))
    {
      return v21 & 1;
    }
  }

  else
  {
    v40 = BYTE4(v171);
    if (*&v157 != v17)
    {
      v40 = 1;
    }

    if (v40)
    {
      goto LABEL_5;
    }
  }

  if ((v164 & 0x100000000) != 0)
  {
    v21 = v171;
    if (!v171)
    {
      return v21 & 1;
    }
  }

  else
  {
    v41 = v171;
    if (*&v143 != v18)
    {
      v41 = 1;
    }

    if (v41)
    {
      goto LABEL_5;
    }
  }

  if ((v150 & 0x100000000) != 0)
  {
    v21 = 0;
    if (!HIDWORD(v136))
    {
      return v21 & 1;
    }

LABEL_112:
    if ((v136 ^ HIDWORD(v129)))
    {
      return v21 & 1;
    }

    v43 = __dst[9];
    v44 = v397[9];
    if (__dst[9])
    {
      OUTLINED_FUNCTION_7_8();
      __src[9] = v43;
      memcpy(v391, __src, 0x50uLL);
      if (v44)
      {
        memcpy(v390, a2 + 40, 0x48uLL);
        v390[9] = v44;
        OUTLINED_FUNCTION_0_22(__dst, v45, v46, v47, v48, v49, v50, v51, v115, v122, v129, v136, v143, v150, v157, v164, v171, v178, v185, v192, v199, v206, v213, v220, v227, v234, v241, v248, v255, v262, v269, v276, v283, v290, v297, v304, v311, v318, v325, v332, v339, v346, v353, v360, v367, v374, v381, v388[0], v388[1], v388[2], v388[3], v388[4], v388[5], v388[6], v388[7], v388[8], v388[9], v388[10], v388[11], v388[12], v388[13], v388[14], v389[0]);
        OUTLINED_FUNCTION_0_22(v397, v52, v53, v54, v55, v56, v57, v58, v116, v123, v130, v137, v144, v151, v158, v165, v172, v179, v186, v193, v200, v207, v214, v221, v228, v235, v242, v249, v256, v263, v270, v277, v284, v291, v298, v305, v312, v319, v326, v333, v340, v347, v354, v361, v368, v375, v382, v388[0], v388[1], v388[2], v388[3], v388[4], v388[5], v388[6], v388[7], v388[8], v388[9], v388[10], v388[11], v388[12], v388[13], v388[14], v389[0]);
        OUTLINED_FUNCTION_0_22(__src, v59, v60, v61, v62, v63, v64, v65, v117, v124, v131, v138, v145, v152, v159, v166, v173, v180, v187, v194, v201, v208, v215, v222, v229, v236, v243, v250, v257, v264, v271, v278, v285, v292, v299, v306, v313, v320, v327, v334, v341, v348, v355, v362, v369, v376, v383, v388[0], v388[1], v388[2], v388[3], v388[4], v388[5], v388[6], v388[7], v388[8], v388[9], v388[10], v388[11], v388[12], v388[13], v388[14], v389[0]);
        static ConnectionPolicy.== infix(_:_:)(v391, v390);
        v67 = v66;
        memcpy(v388, v390, 0x50uLL);
        outlined destroy of ConnectionPolicy(v388);
        memcpy(v389, v391, 0x50uLL);
        outlined destroy of ConnectionPolicy(v389);
        memcpy(v390, a1 + 40, 0x48uLL);
        v390[9] = v43;
        outlined destroy of ConnectionSnapshotReport?(v390, &_s11SiriNetwork16ConnectionPolicyVSgMd, &_s11SiriNetwork16ConnectionPolicyVSgMR);
        if ((v67 & 1) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_122;
      }

      memcpy(v390, __src, 0x50uLL);
      OUTLINED_FUNCTION_6_9(__dst, v68, v69, v70, v71, v72, v73, v74, v115, v122, v129, v136, v143, v150, v157, v164, v171, v178, v185, v192, v199, v206, v213, v220, v227, v234, v241, v248, v255, v262, v269, v276, v283, v290, v297, v304, v311, v318, v325, v332, v339, v346, v353, v360, v367, v374, v381, v388[0], v388[1], v388[2], v388[3], v388[4], v388[5], v388[6], v388[7], v388[8], v388[9], v388[10], v388[11], v388[12], v388[13], v388[14], v389[0]);
      OUTLINED_FUNCTION_6_9(v397, v75, v76, v77, v78, v79, v80, v81, v118, v125, v132, v139, v146, v153, v160, v167, v174, v181, v188, v195, v202, v209, v216, v223, v230, v237, v244, v251, v258, v265, v272, v279, v286, v293, v300, v307, v314, v321, v328, v335, v342, v349, v356, v363, v370, v377, v384, v388[0], v388[1], v388[2], v388[3], v388[4], v388[5], v388[6], v388[7], v388[8], v388[9], v388[10], v388[11], v388[12], v388[13], v388[14], v389[0]);
      OUTLINED_FUNCTION_6_9(__src, v82, v83, v84, v85, v86, v87, v88, v119, v126, v133, v140, v147, v154, v161, v168, v175, v182, v189, v196, v203, v210, v217, v224, v231, v238, v245, v252, v259, v266, v273, v280, v287, v294, v301, v308, v315, v322, v329, v336, v343, v350, v357, v364, v371, v378, v385, v388[0], v388[1], v388[2], v388[3], v388[4], v388[5], v388[6], v388[7], v388[8], v388[9], v388[10], v388[11], v388[12], v388[13], v388[14], v389[0]);
      outlined destroy of ConnectionPolicy(v390);
    }

    else
    {
      if (!v397[9])
      {
        OUTLINED_FUNCTION_7_8();
        __src[9] = 0;
        OUTLINED_FUNCTION_4_7(__dst);
        OUTLINED_FUNCTION_4_7(v397);
        outlined destroy of ConnectionSnapshotReport?(__src, &_s11SiriNetwork16ConnectionPolicyVSgMd, &_s11SiriNetwork16ConnectionPolicyVSgMR);
LABEL_122:
        v91 = v396[0];
        memcpy(v394, &v396[2], sizeof(v394));
        v92 = v398[0];
        memcpy(v393, &v398[2], sizeof(v393));
        if (v25 == 1)
        {
          if (v28 == 1)
          {
            __src[0] = v396[0];
            __src[1] = 1;
            OUTLINED_FUNCTION_8_6();
            OUTLINED_FUNCTION_4_7(v396);
            OUTLINED_FUNCTION_4_7(v398);
            outlined destroy of ConnectionSnapshotReport?(__src, &_s11SiriNetwork21ConnectionPolicyRouteVSgMd, &_s11SiriNetwork21ConnectionPolicyRouteVSgMR);
            v21 = 1;
            return v21 & 1;
          }

          OUTLINED_FUNCTION_5_8(v396, __src);
          OUTLINED_FUNCTION_5_8(v398, __src);
        }

        else
        {
          __src[0] = v396[0];
          __src[1] = v25;
          OUTLINED_FUNCTION_8_6();
          memcpy(v391, __src, 0x72uLL);
          if (v28 != 1)
          {
            memcpy(&v390[2], &v398[2], 0x62uLL);
            v390[0] = v92;
            v390[1] = v28;
            v93 = static ConnectionPolicyRoute.== infix(_:_:)(v391, v390);
            memcpy(v388, v390, 0x72uLL);
            OUTLINED_FUNCTION_0_22(v396, v94, v95, v96, v97, v98, v99, v100, v115, v122, v129, v136, v143, v150, v157, v164, v171, v178, v185, v192, v199, v206, v213, v220, v227, v234, v241, v248, v255, v262, v269, v276, v283, v290, v297, v304, v311, v318, v325, v332, v339, v346, v353, v360, v367, v374, v381, v388[0], v388[1], v388[2], v388[3], v388[4], v388[5], v388[6], v388[7], v388[8], v388[9], v388[10], v388[11], v388[12], v388[13], v388[14], v389[0]);
            OUTLINED_FUNCTION_0_22(v398, v101, v102, v103, v104, v105, v106, v107, v120, v127, v134, v141, v148, v155, v162, v169, v176, v183, v190, v197, v204, v211, v218, v225, v232, v239, v246, v253, v260, v267, v274, v281, v288, v295, v302, v309, v316, v323, v330, v337, v344, v351, v358, v365, v372, v379, v386, v388[0], v388[1], v388[2], v388[3], v388[4], v388[5], v388[6], v388[7], v388[8], v388[9], v388[10], v388[11], v388[12], v388[13], v388[14], v389[0]);
            OUTLINED_FUNCTION_0_22(__src, v108, v109, v110, v111, v112, v113, v114, v121, v128, v135, v142, v149, v156, v163, v170, v177, v184, v191, v198, v205, v212, v219, v226, v233, v240, v247, v254, v261, v268, v275, v282, v289, v296, v303, v310, v317, v324, v331, v338, v345, v352, v359, v366, v373, v380, v387, v388[0], v388[1], v388[2], v388[3], v388[4], v388[5], v388[6], v388[7], v388[8], v388[9], v388[10], v388[11], v388[12], v388[13], v388[14], v389[0]);
            outlined destroy of ConnectionPolicyRoute(v388);
            memcpy(v389, v391, 0x72uLL);
            outlined destroy of ConnectionPolicyRoute(v389);
            v390[0] = v91;
            v390[1] = v25;
            memcpy(&v390[2], v394, 0x62uLL);
            outlined destroy of ConnectionSnapshotReport?(v390, &_s11SiriNetwork21ConnectionPolicyRouteVSgMd, &_s11SiriNetwork21ConnectionPolicyRouteVSgMR);
            v21 = v93;
            return v21 & 1;
          }

          memcpy(v390, __src, 0x72uLL);
          OUTLINED_FUNCTION_5_8(v396, v389);
          OUTLINED_FUNCTION_5_8(v398, v389);
          OUTLINED_FUNCTION_5_8(__src, v389);
          outlined destroy of ConnectionPolicyRoute(v390);
        }

        __src[0] = v91;
        __src[1] = v25;
        memcpy(&__src[2], v394, 0x62uLL);
        __src[15] = v92;
        __src[16] = v28;
        memcpy(&__src[17], v393, 0x62uLL);
        v89 = &_s11SiriNetwork21ConnectionPolicyRouteVSg_ADtMd;
        v90 = &_s11SiriNetwork21ConnectionPolicyRouteVSg_ADtMR;
        goto LABEL_129;
      }

      outlined init with copy of ConnectionSnapshotReport?(__dst, __src, &_s11SiriNetwork16ConnectionPolicyVSgMd, &_s11SiriNetwork16ConnectionPolicyVSgMR);
      outlined init with copy of ConnectionSnapshotReport?(v397, __src, &_s11SiriNetwork16ConnectionPolicyVSgMd, &_s11SiriNetwork16ConnectionPolicyVSgMR);
    }

    OUTLINED_FUNCTION_7_8();
    __src[9] = v43;
    memcpy(&__src[10], a2 + 40, 0x48uLL);
    __src[19] = v44;
    v89 = &_s11SiriNetwork16ConnectionPolicyVSg_ADtMd;
    v90 = &_s11SiriNetwork16ConnectionPolicyVSg_ADtMR;
LABEL_129:
    outlined destroy of ConnectionSnapshotReport?(__src, v89, v90);
    goto LABEL_5;
  }

  v21 = 0;
  v42 = BYTE4(v136);
  if (*&v122 != v19)
  {
    v42 = 1;
  }

  if ((v42 & 1) == 0)
  {
    goto LABEL_112;
  }

  return v21 & 1;
}

void static ConnectionPolicy.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  v6 = *(a1 + 18);
  v7 = *(a1 + 19);
  v8 = *(a1 + 20);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  v15 = *(a1 + 72);
  v16 = *(a2 + 8);
  v17 = *(a2 + 16);
  v18 = *(a2 + 17);
  v19 = *(a2 + 18);
  v20 = *(a2 + 19);
  v21 = *(a2 + 20);
  v22 = *(a2 + 24);
  v23 = *(a2 + 32);
  v24 = *(a2 + 40);
  v25 = *(a2 + 48);
  v26 = *(a2 + 56);
  v27 = *(a2 + 64);
  v28 = *(a2 + 72);
  if (!v3)
  {
    if (v16 || ((v4 ^ v17) & 1) != 0 || ((v5 ^ v18) & 1) != 0 || ((v6 ^ v19) & 1) != 0 || ((v7 ^ v20) & 1) != 0 || ((v8 ^ v21) & 1) != 0)
    {
      goto LABEL_35;
    }

LABEL_18:
    if (((*(a1 + 21) ^ *(a2 + 21)) & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_35:
    OUTLINED_FUNCTION_0_50();
    return;
  }

  if (!v16)
  {
    goto LABEL_35;
  }

  if (*a1 == *a2 && v3 == v16)
  {
    if ((v4 ^ v17 | v5 ^ v18 | v6 ^ v19 | v7 ^ v20 | v8 ^ v21))
    {
      goto LABEL_35;
    }

    goto LABEL_18;
  }

  v44 = *(a1 + 32);
  v45 = *(a2 + 48);
  v46 = *(a2 + 64);
  v47 = *(a1 + 64);
  v39 = v8 ^ v21;
  v40 = *(a2 + 21);
  v30 = *(a1 + 40);
  v31 = *(a1 + 48);
  v43 = *(a2 + 40);
  v41 = *(a2 + 32);
  v42 = *(a1 + 21);
  v32 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v23 = v41;
  v24 = v43;
  v10 = v44;
  v25 = v45;
  v27 = v46;
  v14 = v47;
  if ((v32 ^ 1 | v4 ^ v17 | v5 ^ v18 | v6 ^ v19 | v7 ^ v20 | v39))
  {
    goto LABEL_35;
  }

  v12 = v31;
  v11 = v30;
  if ((v42 ^ v40))
  {
    goto LABEL_35;
  }

LABEL_19:
  if (v10)
  {
    if (!v23)
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (v9 == v22)
    {
      v33 = v23;
    }

    else
    {
      v33 = 1;
    }

    if (v33)
    {
      goto LABEL_35;
    }
  }

  if (v12)
  {
    if (!v25)
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (v11 == v24)
    {
      v34 = v25;
    }

    else
    {
      v34 = 1;
    }

    if (v34)
    {
      goto LABEL_35;
    }
  }

  if (v14)
  {
    if (!v27)
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (v13 == v26)
    {
      v35 = v27;
    }

    else
    {
      v35 = 1;
    }

    if (v35)
    {
      goto LABEL_35;
    }
  }

  OUTLINED_FUNCTION_0_50();

  _sSh2eeoiySbShyxG_ABtFZ11SiriNetwork21ConnectionPolicyRouteV_Tt1g5(v36, v37);
}

uint64_t _sSh2eeoiySbShyxG_ABtFZ11SiriNetwork21ConnectionPolicyRouteV_Tt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  if (v7)
  {
    while (2)
    {
      v9 = __clz(__rbit64(v7));
      v18 = (v7 - 1) & v7;
LABEL_13:
      v12 = (*(v3 + 48) + 120 * (v9 | (v4 << 6)));
      memcpy(__dst, v12, 0x72uLL);
      memcpy(v23, v12, 0x72uLL);
      v13 = *(a2 + 40);
      memcpy(v22, v12, 0x72uLL);
      Hasher.init(_seed:)();
      outlined init with copy of ConnectionPolicyRoute(__dst, v21);
      ConnectionPolicyRoute.hash(into:)();
      v14 = Hasher._finalize()();
      v15 = ~(-1 << *(a2 + 32));
      while (1)
      {
        v16 = v14 & v15;
        if (((*(a2 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          memcpy(v22, v23, 0x72uLL);
          outlined destroy of ConnectionPolicyRoute(v22);
          return 0;
        }

        v17 = *(a2 + 48) + 120 * v16;
        memcpy(v21, v17, 0x72uLL);
        memcpy(__src, v17, 0x72uLL);
        LOBYTE(v17) = static ConnectionPolicyRoute.== infix(_:_:)(__src, v23);
        memcpy(v22, __src, 0x72uLL);
        outlined init with copy of ConnectionPolicyRoute(v21, v19);
        outlined destroy of ConnectionPolicyRoute(v22);
        if (v17)
        {
          break;
        }

        v14 = v16 + 1;
      }

      memcpy(__src, v23, 0x72uLL);
      result = outlined destroy of ConnectionPolicyRoute(__src);
      v7 = v18;
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 56 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v18 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void closure #1 in Connection.willStartConnection(_:type:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  OUTLINED_FUNCTION_65_3(a1);
  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v8, static Logger.siriNetwork);
    swift_unknownObjectRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_4_3();
      v12 = swift_slowAlloc();
      v30[0] = v12;
      *v11 = 136315138;
      v13 = *(a2 + 448);
      if (v13 >= 2)
      {
        v30[1] = *(a2 + 440);
        v30[2] = v13;

        v15 = String.init<A>(describing:)();
        v14 = v16;
      }

      else
      {
        OUTLINED_FUNCTION_46_4();
        v14 = 0xE700000000000000;
        v15 = OUTLINED_FUNCTION_3_18();
      }

      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, v30);

      *(v11 + 4) = v17;
      OUTLINED_FUNCTION_52_5();
      _os_log_impl(v18, v19, v20, v21, v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      OUTLINED_FUNCTION_2_2();
      MEMORY[0x223DE38F0]();
      v23 = OUTLINED_FUNCTION_2_0();
      MEMORY[0x223DE38F0](v23);
    }

    OUTLINED_FUNCTION_8();
    swift_beginAccess();
    v24 = swift_unknownObjectWeakLoadStrong();
    if (v24)
    {
      v25 = v24;
      v26 = qword_2235F4928[a4];
      v27 = objc_allocWithZone(type metadata accessor for ConnectionTypeWrapper());
      v28 = OUTLINED_FUNCTION_15_8();
      v29 = ConnectionTypeWrapper.init(_:)(v28);
      [v25 willStartConnection:v7 type:v29];
      swift_unknownObjectRelease();
    }
  }
}

id ConnectionTypeWrapper.init(_:)(Swift::Int a1)
{
  ConnectionType.init(rawValue:)(a1);
  v2 = v5;
  if (v5 == 25)
  {
    v2 = 0;
  }

  v1[OBJC_IVAR___SNConnectionTypeInternal_connectionType] = v2;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for ConnectionTypeWrapper();
  return objc_msgSendSuper2(&v4, sel_init);
}

SiriNetwork::ConnectionType_optional __swiftcall ConnectionType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 7;
  switch(rawValue)
  {
    case 2000:
      v2 = 2;
      break;
    case 2001:
      v2 = 3;
      break;
    case 2002:
      v2 = 4;
      break;
    case 2003:
      v2 = 5;
      break;
    case 2004:
      v2 = 6;
      break;
    case 2005:
      break;
    case 2006:
      v2 = 8;
      break;
    case 2007:
      v2 = 9;
      break;
    case 2008:
      v2 = 10;
      break;
    case 2009:
      v2 = 11;
      break;
    case 2010:
      v2 = 12;
      break;
    case 2011:
      v2 = 13;
      break;
    case 2012:
      v2 = 14;
      break;
    case 2013:
      v2 = 15;
      break;
    case 2014:
      v2 = 16;
      break;
    default:
      switch(rawValue)
      {
        case 3000:
          v2 = 17;
          break;
        case 3001:
          v2 = 18;
          break;
        case 3002:
          v2 = 19;
          break;
        case 3003:
          v2 = 20;
          break;
        case 3004:
          v2 = 21;
          break;
        case 3005:
          v2 = 22;
          break;
        case 3006:
          v2 = 23;
          break;
        default:
          if (rawValue)
          {
            if (rawValue == 4000)
            {
              v2 = 24;
            }

            else if (rawValue == 1000)
            {
              v2 = 1;
            }

            else
            {
              v2 = 25;
            }
          }

          else
          {
            v2 = 0;
          }

          break;
      }

      break;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t Connection.delegate.getter()
{
  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

Swift::String __swiftcall ConnectionTypeWrapper.connectionTypeStringRawValue()()
{
  v4 = *(v0 + OBJC_IVAR___SNConnectionTypeInternal_connectionType);
  v1 = ConnectionType.stringRawValue.getter();
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t specialized SafeCallback.reify(_:)(void (*a1)(void))
{
  result = swift_weakLoadStrong();
  if (result)
  {
    a1();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_90_0()
{
  *(v1 - 296) = v0;

  return OS_dispatch_source.setEventHandler(qos:flags:handler:)();
}

void closure #1 in NetworkManager.updateNetworkPerformanceFeed()(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v37 = a5;
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.siriNetwork);
    v12 = a2;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v36 = a4;
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      aBlock = v16;
      *v15 = 136315138;
      if (a2)
      {
        v44 = a2;
        v17 = a2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v18 = String.init<A>(describing:)();
        v20 = v19;
      }

      else
      {
        v20 = 0xE300000000000000;
        v18 = 7104878;
      }

      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &aBlock);

      *(v15 + 4) = v21;
      _os_log_impl(&dword_223515000, v13, v14, "NetworkManager - PerformanceFeed: Instant data for WiFi. Error: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x223DE38F0](v16, -1, -1);
      MEMORY[0x223DE38F0](v15, -1, -1);

      a4 = v36;
    }

    else
    {
    }

    v45 = 0;
    if (a1)
    {
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
      v23 = a1;
    }

    else
    {
      v23 = 0;
      v22 = 0;
      v39 = 0;
      v40 = 0;
    }

    aBlock = v23;
    v41 = v22;

    v24 = NetworkManager.acceptableSuccessRate(fullScorecard:hasMetrics:)(&aBlock, &v45);
    outlined destroy of Any?(&aBlock);
    v25 = v45;
    v26 = OBJC_IVAR___SNNetworkManagerInternal_lockConnectionQuality;
    [*&v10[OBJC_IVAR___SNNetworkManagerInternal_lockConnectionQuality] lock];
    if (v25 == 1)
    {
      v10[OBJC_IVAR___SNNetworkManagerInternal_connectionQualityReport] = (v24 & 1) == 0;
      [*&v10[v26] unlock];
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 67109120;
        *(v29 + 4) = v24 & 1;
        _os_log_impl(&dword_223515000, v27, v28, "NetworkManager - PerformanceFeed: Symptoms WiFi Instant: %{BOOL}d", v29, 8u);
        MEMORY[0x223DE38F0](v29, -1, -1);
      }

      if ((v24 & 1) == 0)
      {
        specialized _dictionaryUpCast<A, B, C, D>(_:)(v37);
        v31 = v30;
        v32 = swift_allocObject();
        swift_beginAccess();
        v33 = swift_unknownObjectWeakLoadStrong();
        swift_unknownObjectWeakInit();

        v42 = partial apply for closure #1 in closure #1 in NetworkManager.updateNetworkPerformanceFeed();
        v43 = v32;
        aBlock = MEMORY[0x277D85DD0];
        v39 = 1107296256;
        v40 = thunk for @escaping @callee_guaranteed (@guaranteed [AnyHashable : Any]?, @guaranteed Error?) -> ();
        v41 = &block_descriptor_18_0;
        v34 = _Block_copy(&aBlock);

        outlined bridged method (mnbnnn) of @objc NetworkPerformanceFeed.fullScorecard(for:options:reply:)(1, v31, v34, a4);

        _Block_release(v34);
        return;
      }
    }

    else
    {
      v10[OBJC_IVAR___SNNetworkManagerInternal_connectionQualityReport] = 2;
      v35 = *&v10[v26];
      [v35 unlock];
    }
  }
}

uint64_t NetworkManager.acceptableSuccessRate(fullScorecard:hasMetrics:)(uint64_t a1, _BYTE *a2)
{
  outlined init with copy of Any?(a1, &v27);
  if (!*(&v28 + 1))
  {
    goto LABEL_33;
  }

  v6 = type metadata accessor for NSDictionary();
  if ((OUTLINED_FUNCTION_1_15() & 1) == 0)
  {
    return 0;
  }

  v7 = v23;
  if ([v23 count] < 1)
  {
    goto LABEL_36;
  }

  v8 = &off_2784DD000;
  v9 = [v23 allValues];
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!v10[2])
  {
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  outlined init with copy of Any((v10 + 4), &v27);

  if ((OUTLINED_FUNCTION_1_15() & 1) == 0)
  {
LABEL_36:

    return 0;
  }

  v10 = v23;
  if ([v23 count] < 1)
  {

    return 0;
  }

  v11 = [v23 allValues];
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v9 + 16))
  {
    goto LABEL_40;
  }

  outlined init with copy of Any(v9 + 32, &v27);

  if ((OUTLINED_FUNCTION_1_15() & 1) == 0)
  {
LABEL_35:

    goto LABEL_36;
  }

  v6 = v23;
  v12 = *MEMORY[0x277D6B708];
  v24[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24[1] = v13;
  v9 = [v6 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v9)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    *v24 = 0u;
    v26 = 0u;
  }

  v27 = *v24;
  v28 = v26;
  if (!*(&v26 + 1))
  {
LABEL_32:

LABEL_33:
    outlined destroy of Any?(&v27);
    return 0;
  }

  if ((OUTLINED_FUNCTION_9_6() & 1) == 0)
  {
LABEL_34:

    goto LABEL_35;
  }

  v3 = v22;
  if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_41;
  }

  v2 = -9.22337204e18;
  if (v22 <= -9.22337204e18)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v22 < 9.22337204e18)
  {
    v8 = v22;
    if (v22 >= 7)
    {
      v14 = *MEMORY[0x277D6B710];
      v25[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25[1] = v15;
      v16 = [v6 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v16)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        *v25 = 0u;
        v26 = 0u;
      }

      v27 = *v25;
      v28 = v26;
      if (*(&v26 + 1))
      {
        if (OUTLINED_FUNCTION_9_6())
        {
          v4 = v22;
          *a2 = 1;
          v3 = v22 / v22;
          v9 = v22 / v22 > 0.5;
          if (one-time initialization token for siriNetwork == -1)
          {
            goto LABEL_26;
          }

          goto LABEL_44;
        }

        goto LABEL_34;
      }

      goto LABEL_32;
    }

    return 0;
  }

LABEL_43:
  __break(1u);
LABEL_44:
  OUTLINED_FUNCTION_0_6();
LABEL_26:
  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.siriNetwork);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v18, v19))
  {
LABEL_31:

    return v9;
  }

  result = swift_slowAlloc();
  *result = 134219008;
  *(result + 4) = v3;
  *(result + 12) = 1024;
  *(result + 14) = v3 > 0.5;
  *(result + 18) = 2048;
  *(result + 20) = 0x3FE0000000000000;
  *(result + 28) = 2048;
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_46;
  }

  if (v4 <= v2)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v4 < 9.22337204e18)
  {
    v21 = result;
    *(result + 30) = v4;
    *(result + 38) = 2048;
    *(result + 40) = v8;
    _os_log_impl(&dword_223515000, v18, v19, "NetworkManager - PerformanceFeed: Success rate %f is acceptable: %{BOOL}d (success rate higher than %f). successes = %ld attempts = %ld", result, 0x30u);
    MEMORY[0x223DE38F0](v21, -1, -1);
    goto LABEL_31;
  }

LABEL_47:
  __break(1u);
  return result;
}

void closure #2 in NetworkManager.updateNetworkPerformanceFeed()(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v37 = a5;
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.siriNetwork);
    v12 = a2;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v36 = a4;
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      aBlock = v16;
      *v15 = 136315138;
      if (a2)
      {
        v44 = a2;
        v17 = a2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v18 = String.init<A>(describing:)();
        v20 = v19;
      }

      else
      {
        v20 = 0xE300000000000000;
        v18 = 7104878;
      }

      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &aBlock);

      *(v15 + 4) = v21;
      _os_log_impl(&dword_223515000, v13, v14, "NetworkManager - PerformanceFeed: Instant data for Cell. Error: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x223DE38F0](v16, -1, -1);
      MEMORY[0x223DE38F0](v15, -1, -1);

      a4 = v36;
    }

    else
    {
    }

    v45 = 0;
    if (a1)
    {
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
      v23 = a1;
    }

    else
    {
      v23 = 0;
      v22 = 0;
      v39 = 0;
      v40 = 0;
    }

    aBlock = v23;
    v41 = v22;

    v24 = NetworkManager.acceptableSuccessRate(fullScorecard:hasMetrics:)(&aBlock, &v45);
    outlined destroy of Any?(&aBlock);
    v25 = v45;
    v26 = OBJC_IVAR___SNNetworkManagerInternal_lockConnectionQuality;
    [*&v10[OBJC_IVAR___SNNetworkManagerInternal_lockConnectionQuality] lock];
    if (v25 == 1)
    {
      v10[OBJC_IVAR___SNNetworkManagerInternal_connectionQualityReport + 1] = (v24 & 1) == 0;
      [*&v10[v26] unlock];
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 67109120;
        *(v29 + 4) = v24 & 1;
        _os_log_impl(&dword_223515000, v27, v28, "NetworkManager - PerformanceFeed: Symptoms Cellular Instant: %{BOOL}d", v29, 8u);
        MEMORY[0x223DE38F0](v29, -1, -1);
      }

      if ((v24 & 1) == 0)
      {
        specialized _dictionaryUpCast<A, B, C, D>(_:)(v37);
        v31 = v30;
        v32 = swift_allocObject();
        swift_beginAccess();
        v33 = swift_unknownObjectWeakLoadStrong();
        swift_unknownObjectWeakInit();

        v42 = partial apply for closure #1 in closure #2 in NetworkManager.updateNetworkPerformanceFeed();
        v43 = v32;
        aBlock = MEMORY[0x277D85DD0];
        v39 = 1107296256;
        v40 = thunk for @escaping @callee_guaranteed (@guaranteed [AnyHashable : Any]?, @guaranteed Error?) -> ();
        v41 = &block_descriptor_14_0;
        v34 = _Block_copy(&aBlock);

        outlined bridged method (mnbnnn) of @objc NetworkPerformanceFeed.fullScorecard(for:options:reply:)(2, v31, v34, a4);

        _Block_release(v34);
        return;
      }
    }

    else
    {
      v10[OBJC_IVAR___SNNetworkManagerInternal_connectionQualityReport + 1] = 2;
      v35 = *&v10[v26];
      [v35 unlock];
    }
  }
}

void closure #1 in NetworkAnalytics.setNetIdAvailable(_:)(uint64_t a1, char a2)
{
  *(a1 + OBJC_IVAR___SNNetworkAnalyticsInternal_netIdAvailable) = a2;
  if (one-time initialization token for siriNetwork != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.siriNetwork);
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = a2 & 1;
    _os_log_impl(&dword_223515000, oslog, v4, "Network Analytics: NetId available: %{BOOL}d", v5, 8u);
    MEMORY[0x223DE38F0](v5, -1, -1);
  }
}

void closure #1 in NetworkAnalytics.logRequestLinkBetweenOrchestratorAndNetworkComponent()(uint64_t a1, void *a2)
{
  v118 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v111 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v119 = &v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v111 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v111 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v111 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v111 - v19;
  v21 = type metadata accessor for UUID();
  v124 = *(v21 - 8);
  v22 = v124[8];
  v23 = MEMORY[0x28223BE20](v21);
  v122 = &v111 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v121 = &v111 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v120 = &v111 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v111 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v111 - v33;
  MEMORY[0x28223BE20](v32);
  v123 = &v111 - v35;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v117 = v31;
  v37 = OBJC_IVAR___SNNetworkAnalyticsInternal_netId;
  v38 = Strong;
  swift_beginAccess();
  outlined init with copy of UUID?(v38 + v37, v20);
  if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
  {
    v39 = v38;
    outlined destroy of NetworkConnectionProtocol?(v20, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    __swift_project_value_buffer(v40, static Logger.siriNetwork);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_223515000, v41, v42, "Network Analytics: Event link. No netId generated", v43, 2u);
      MEMORY[0x223DE38F0](v43, -1, -1);
    }

    return;
  }

  v115 = v12;
  v45 = v123;
  v44 = v124;
  v46 = v124[4];
  v114 = v124 + 4;
  v113 = v46;
  v46(v123, v20, v21);
  v47 = OBJC_IVAR___SNNetworkAnalyticsInternal_netIdForRequestLink;
  swift_beginAccess();
  v112 = v44[2];
  v112(v18, v45, v21);
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v21);
  v48 = *(v2 + 48);
  v116 = v38;
  v111 = v47;
  outlined init with copy of UUID?(v38 + v47, v5);
  outlined init with copy of UUID?(v18, &v5[v48]);
  v49 = v21;
  if (__swift_getEnumTagSinglePayload(v5, 1, v21) == 1)
  {
    outlined destroy of NetworkConnectionProtocol?(v18, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v5[v48], 1, v21);
    v51 = v115;
    if (EnumTagSinglePayload == 1)
    {
      outlined destroy of NetworkConnectionProtocol?(v5, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
      v52 = v123;
LABEL_27:
      if (one-time initialization token for siriNetwork != -1)
      {
        swift_once();
      }

      v92 = type metadata accessor for Logger();
      __swift_project_value_buffer(v92, static Logger.siriNetwork);
      v93 = v122;
      v112(v122, v52, v49);
      v94 = Logger.logObject.getter();
      v95 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v126 = v97;
        *v96 = 136315138;
        lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
        v98 = dispatch thunk of CustomStringConvertible.description.getter();
        v99 = v93;
        v101 = v100;
        v102 = v124[1];
        v102(v99, v49);
        v103 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v101, &v126);

        *(v96 + 4) = v103;
        _os_log_impl(&dword_223515000, v94, v95, "Network Analytics: Event link. Request Link already sent for netId: %s", v96, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v97);
        MEMORY[0x223DE38F0](v97, -1, -1);
        MEMORY[0x223DE38F0](v96, -1, -1);

        v102(v52, v49);
        return;
      }

      v104 = v124[1];
      v104(v93, v49);
      goto LABEL_39;
    }

    goto LABEL_13;
  }

  outlined init with copy of UUID?(v5, v15);
  v53 = __swift_getEnumTagSinglePayload(&v5[v48], 1, v21);
  v51 = v115;
  if (v53 == 1)
  {
    outlined destroy of NetworkConnectionProtocol?(v18, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
    (v124[1])(v15, v21);
LABEL_13:
    outlined destroy of NetworkConnectionProtocol?(v5, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    v52 = v123;
    goto LABEL_14;
  }

  v113(v34, &v5[v48], v21);
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  v90 = dispatch thunk of static Equatable.== infix(_:_:)();
  v91 = v124[1];
  v91(v34, v49);
  outlined destroy of NetworkConnectionProtocol?(v18, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  v91(v15, v49);
  v52 = v123;
  outlined destroy of NetworkConnectionProtocol?(v5, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  if (v90)
  {
    goto LABEL_27;
  }

LABEL_14:
  v54 = OBJC_IVAR___SNNetworkAnalyticsInternal_orchestratorRequestId;
  v55 = v49;
  v56 = v116;
  swift_beginAccess();
  outlined init with copy of UUID?(&v56[v54], v51);
  if (__swift_getEnumTagSinglePayload(v51, 1, v55) == 1)
  {
    v57 = v55;
    outlined destroy of NetworkConnectionProtocol?(v51, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    __swift_project_value_buffer(v58, static Logger.siriNetwork);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_223515000, v59, v60, "Network Analytics: Event link. No orchestrator requestId", v61, 2u);
      MEMORY[0x223DE38F0](v61, -1, -1);
    }

    else
    {
    }

    (v124[1])(v52, v57);
  }

  else
  {
    v62 = v117;
    v113(v117, v51, v55);
    if (v56[OBJC_IVAR___SNNetworkAnalyticsInternal_isConnectionActive] != 1)
    {
      v49 = v55;
      if (one-time initialization token for siriNetwork != -1)
      {
        swift_once();
      }

      v105 = type metadata accessor for Logger();
      __swift_project_value_buffer(v105, static Logger.siriNetwork);
      v106 = Logger.logObject.getter();
      v107 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        *v108 = 0;
        _os_log_impl(&dword_223515000, v106, v107, "Network Analytics: Event link. No active connection", v108, 2u);
        MEMORY[0x223DE38F0](v108, -1, -1);
      }

      v104 = v124[1];
      v104(v117, v49);
LABEL_39:
      v104(v52, v49);
      return;
    }

    v63 = v56;
    v64 = v119;
    v65 = v112;
    v112(v119, v52, v55);
    __swift_storeEnumTagSinglePayload(v64, 0, 1, v55);
    v122 = NetworkAnalytics.createRequestLinkInfo(from:component:)(v64, 18);
    outlined destroy of NetworkConnectionProtocol?(v64, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
    v65(v64, v62, v55);
    v66 = v65;
    __swift_storeEnumTagSinglePayload(v64, 0, 1, v55);
    v67 = NetworkAnalytics.createRequestLinkInfo(from:component:)(v64, 1);
    outlined destroy of NetworkConnectionProtocol?(v64, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
    v68 = [objc_allocWithZone(MEMORY[0x277D5A9D0]) init];
    v69 = v55;
    if (v68)
    {
      v70 = v68;
      [v68 setSource_];
      [v70 setTarget_];
      [*&v63[OBJC_IVAR___SNNetworkAnalyticsInternal_siriAnalyticsMessageStream] emitMessage:v70 timestamp:v118];
    }

    v118 = v67;
    v66(v64, v52, v55);
    __swift_storeEnumTagSinglePayload(v64, 0, 1, v55);
    v71 = v111;
    swift_beginAccess();
    outlined assign with take of UUID?(v64, &v63[v71]);
    swift_endAccess();
    v72 = v66;
    v74 = v120;
    v73 = v121;
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v75 = type metadata accessor for Logger();
    __swift_project_value_buffer(v75, static Logger.siriNetwork);
    v72(v74, v52, v69);
    v72(v73, v117, v69);
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v125[0] = v119;
      *v78 = 136315394;
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v79 = dispatch thunk of CustomStringConvertible.description.getter();
      v81 = v80;
      v82 = v124[1];
      v82(v74, v69);
      v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v81, v125);

      *(v78 + 4) = v83;
      *(v78 + 12) = 2080;
      v84 = v121;
      v85 = dispatch thunk of CustomStringConvertible.description.getter();
      v87 = v86;
      v82(v84, v69);
      v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v87, v125);
      v52 = v123;

      *(v78 + 14) = v88;
      _os_log_impl(&dword_223515000, v76, v77, "Network Analytics: Event link emitted. netId: %s, orchestratorRequestId: %s", v78, 0x16u);
      v89 = v119;
      swift_arrayDestroy();
      MEMORY[0x223DE38F0](v89, -1, -1);
      MEMORY[0x223DE38F0](v78, -1, -1);
    }

    else
    {

      v82 = v124[1];
      v82(v73, v69);
      v82(v74, v69);
    }

    v109 = v118;
    v110 = v116;
    NetworkAnalytics.emitAllCachedMessagesFor(_:)();

    v82(v117, v69);
    v82(v52, v69);
  }
}

uint64_t specialized RandomNumberGenerator.next<A>(upperBound:)(uint64_t result)
{
  if (result)
  {
    v6[3] = v1;
    v6[4] = v2;
    v3 = result;
    v6[0] = 0;
    MEMORY[0x223DE3910](v6, 8);
    v4 = v3;
    result = (LOBYTE(v6[0]) * v3) >> 8;
    if (v3 > (LOBYTE(v6[0]) * v3) && -v3 % v3 > (LOBYTE(v6[0]) * v3))
    {
      v5 = (-v3 % v3);
      do
      {
        v6[0] = 0;
        MEMORY[0x223DE3910](v6, 8);
      }

      while (v5 > (LOBYTE(v6[0]) * v4));
      return (LOBYTE(v6[0]) * v4) >> 8;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in NetworkActivityTracingInternal.addConnection(_:completion:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    swift_beginAccess();
    v7 = *(v6 + 24);

    specialized Set.contains(_:)();
    v9 = v8;

    if (v9)
    {
LABEL_14:
      if (a3)
      {
        a3(v10);
      }
    }

    else
    {
      swift_beginAccess();

      specialized Set._Variant.insert(_:)(&v28, a2, v11, v12, v13, v14, v15, v16, v27);
      swift_endAccess();

      swift_beginAccess();
      v17 = *(v6 + 16);
      v18 = 1 << *(v17 + 32);
      v19 = -1;
      if (v18 < 64)
      {
        v19 = ~(-1 << v18);
      }

      v20 = v19 & *(v17 + 64);
      v21 = (v18 + 63) >> 6;
      v22 = *(v6 + 16);

      for (i = 0; v20; result = )
      {
        v24 = i;
LABEL_11:
        v25 = __clz(__rbit64(v20));
        v20 &= v20 - 1;
        v26 = *(*(v17 + 56) + ((v24 << 9) | (8 * v25)));

        specialized NetworkActivity.addConnection(_:)(a2);
      }

      while (1)
      {
        v24 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        if (v24 >= v21)
        {

          goto LABEL_14;
        }

        v20 = *(v17 + 64 + 8 * v24);
        ++i;
        if (v20)
        {
          i = v24;
          goto LABEL_11;
        }
      }

      __break(1u);
    }
  }

  return result;
}

void specialized Set.contains(_:)()
{
  OUTLINED_FUNCTION_67_1();
  v1 = v0;
  if ((v0 & 0xC000000000000001) != 0)
  {

    __CocoaSet.contains(_:)();
  }

  else if (*(v0 + 16))
  {
    v2 = *(v0 + 40);
    Hasher.init(_seed:)();
    v3 = NWConnection.identifier.getter();
    MEMORY[0x223DE29A0](v3);
    Hasher._finalize()();
    v4 = *(v1 + 32);
    OUTLINED_FUNCTION_18_8();
    v7 = ~v6;
    do
    {
      v8 = v5 & v7;
      if (((1 << (v5 & v7)) & *(v1 + 56 + (((v5 & v7) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
      {
        break;
      }

      v9 = *(*(v1 + 48) + 8 * v8);

      v10 = NWConnection.identifier.getter();
      v11 = NWConnection.identifier.getter();

      v5 = v8 + 1;
    }

    while (v10 != v11);
  }

  OUTLINED_FUNCTION_66_3();
}

void NetworkAnalytics.logDebugNetworkConnectionStatePreparationSnapshotCaptured(_:)()
{
  OUTLINED_FUNCTION_46();
  v34 = v3;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = OUTLINED_FUNCTION_0_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v14 = OUTLINED_FUNCTION_9_5();
  v15 = OUTLINED_FUNCTION_0_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  if (NetworkAnalytics.emitLogDebug()())
  {
    v32 = v11;
    v33 = v17;
    v20 = mach_absolute_time();
    v21 = *(v0 + OBJC_IVAR___SNNetworkAnalyticsInternal_queue);
    OUTLINED_FUNCTION_7_1();
    v22 = swift_allocObject();
    OUTLINED_FUNCTION_28_0(v22);
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_109();
    v23 = swift_allocObject();
    v23[2] = v14;
    v23[3] = v7;
    v23[4] = v20;
    v35[4] = v5;
    v35[5] = v23;
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
    v35[2] = v24;
    v35[3] = v34;
    v25 = _Block_copy(v35);
    v26 = v21;
    OUTLINED_FUNCTION_42();
    v27 = v7;
    static DispatchQoS.unspecified.getter();
    OUTLINED_FUNCTION_2_9();
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(v28, v29);
    v30 = OUTLINED_FUNCTION_27_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v30, v31);
    OUTLINED_FUNCTION_45_0(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
    OUTLINED_FUNCTION_11_5();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_43_1();
    _Block_release(v25);

    (*(v32 + 8))(v1, v8);
    (*(v33 + 8))(v2, v14);
    OUTLINED_FUNCTION_39_0();
  }

  OUTLINED_FUNCTION_47();
}

{
  NetworkAnalytics.logDebugNetworkConnectionStatePreparationSnapshotCaptured(_:)();
}

Swift::Bool __swiftcall NetworkAnalytics.emitLogDebug()()
{
  if (specialized RandomNumberGenerator.next<A>(upperBound:)(10))
  {
    return AFIsInternalInstall();
  }

  else
  {
    return 1;
  }
}

void NetworkAnalytics.logSessionConnectionHttpHeaderCreated(_:)()
{
  OUTLINED_FUNCTION_46();
  v29 = v2;
  v4 = v3;
  OUTLINED_FUNCTION_53_1();
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = OUTLINED_FUNCTION_0_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = OUTLINED_FUNCTION_9_5();
  v10 = OUTLINED_FUNCTION_0_0(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  v13 = mach_absolute_time();
  v14 = *&v0[OBJC_IVAR___SNNetworkAnalyticsInternal_queue];
  OUTLINED_FUNCTION_7_1();
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_28_0(v15);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_109();
  v16 = swift_allocObject();
  v16[2] = v1;
  v16[3] = v0;
  v16[4] = v13;
  v30[4] = v4;
  v30[5] = v16;
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v30[2] = v17;
  v30[3] = v29;
  v18 = _Block_copy(v30);
  v19 = v14;
  OUTLINED_FUNCTION_42();
  v20 = v0;
  static DispatchQoS.unspecified.getter();
  OUTLINED_FUNCTION_2_9();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(v21, v22);
  v23 = OUTLINED_FUNCTION_27_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
  OUTLINED_FUNCTION_45_0(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  OUTLINED_FUNCTION_11_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_43_1();
  _Block_release(v18);

  v25 = OUTLINED_FUNCTION_16_1();
  v26(v25);
  v27 = OUTLINED_FUNCTION_16();
  v28(v27);
  OUTLINED_FUNCTION_39_0();

  OUTLINED_FUNCTION_47();
}

{
  NetworkAnalytics.logSessionConnectionHttpHeaderCreated(_:)();
}

unint64_t type metadata accessor for NSDictionary()
{
  result = lazy cache variable for type metadata for NSDictionary;
  if (!lazy cache variable for type metadata for NSDictionary)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSDictionary);
  }

  return result;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_2Tm_0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void closure #1 in NetworkAnalytics.resetNetId()()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v32 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v32 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v35 = v5;
    UUID.init()();
    __swift_storeEnumTagSinglePayload(v17, 0, 1, v0);
    v20 = OBJC_IVAR___SNNetworkAnalyticsInternal_netId;
    swift_beginAccess();
    outlined assign with take of UUID?(v17, v19 + v20);
    swift_endAccess();
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.siriNetwork);
    v22 = v19;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v33 = v1;
      v25 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v36 = v34;
      *v25 = 136315138;
      outlined init with copy of UUID?(v19 + v20, v15);
      outlined init with copy of UUID?(v15, v12);
      if (__swift_getEnumTagSinglePayload(v12, 1, v0) == 1)
      {
        v26 = 0xE400000000000000;
        v27 = 1819047278;
      }

      else
      {
        v28 = v33;
        (*(v33 + 32))(v7, v12, v0);
        (*(v28 + 16))(v35, v7, v0);
        v27 = String.init<A>(describing:)();
        v26 = v29;
        (*(v28 + 8))(v7, v0);
      }

      outlined destroy of NetworkConnectionProtocol?(v15, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v26, &v36);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_223515000, v23, v24, "Network Analytics: NetId reset: %s", v25, 0xCu);
      v31 = v34;
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x223DE38F0](v31, -1, -1);
      MEMORY[0x223DE38F0](v25, -1, -1);
    }
  }
}

unint64_t ConnectionQualityReport.debugDescription.getter(unsigned int a1)
{
  v2 = 1685024615;
  OUTLINED_FUNCTION_2_22();
  _StringGuts.grow(_:)(22);

  OUTLINED_FUNCTION_5_0();
  v19 = v3;
  v4 = 0xE400000000000000;
  v5 = 1685024615;
  switch(a1)
  {
    case 1:
      v4 = 0xE300000000000000;
      v5 = 6578530;
      break;
    case 2:
      v5 = OUTLINED_FUNCTION_4_19();
      v4 = 0xEB00000000656C62;
      break;
    case 3:
      v4 = 0xE700000000000000;
      v5 = OUTLINED_FUNCTION_3_18();
      break;
    default:
      break;
  }

  MEMORY[0x223DE2180](v5, v4);

  v6 = v19;
  _StringGuts.grow(_:)(26);

  OUTLINED_FUNCTION_5_0();
  v20 = v7;
  v8 = 0xE400000000000000;
  v9 = 1685024615;
  switch(BYTE1(a1))
  {
    case 1:
      v8 = 0xE300000000000000;
      v9 = 6578530;
      break;
    case 2:
      v9 = OUTLINED_FUNCTION_4_19();
      v8 = 0xEB00000000656C62;
      break;
    case 3:
      v8 = 0xE700000000000000;
      v9 = OUTLINED_FUNCTION_3_18();
      break;
    default:
      break;
  }

  MEMORY[0x223DE2180](v9, v8);

  v10 = v20;
  OUTLINED_FUNCTION_2_22();
  _StringGuts.grow(_:)(25);

  OUTLINED_FUNCTION_5_0();
  v21 = v11;
  v12 = 0xE400000000000000;
  v13 = 1685024615;
  switch(BYTE2(a1))
  {
    case 1:
      v12 = 0xE300000000000000;
      v13 = 6578530;
      break;
    case 2:
      v13 = OUTLINED_FUNCTION_4_19();
      v12 = 0xEB00000000656C62;
      break;
    case 3:
      v12 = 0xE700000000000000;
      v13 = OUTLINED_FUNCTION_3_18();
      break;
    default:
      break;
  }

  v14 = HIBYTE(a1);
  MEMORY[0x223DE2180](v13, v12);

  v15 = v21;
  OUTLINED_FUNCTION_2_22();
  _StringGuts.grow(_:)(29);

  OUTLINED_FUNCTION_5_0();
  v22 = v16;
  v17 = 0xE400000000000000;
  switch(v14)
  {
    case 1:
      v17 = 0xE300000000000000;
      v2 = 6578530;
      break;
    case 2:
      OUTLINED_FUNCTION_11_9();
      v17 = 0xEB00000000656C62;
      break;
    case 3:
      v17 = 0xE700000000000000;
      OUTLINED_FUNCTION_4_6();
      break;
    default:
      break;
  }

  MEMORY[0x223DE2180](v2, v17);

  OUTLINED_FUNCTION_2_22();
  _StringGuts.grow(_:)(58);
  MEMORY[0x223DE2180](0xD00000000000002BLL, 0x80000002235F8680);
  MEMORY[0x223DE2180](0xD000000000000014, v6);

  OUTLINED_FUNCTION_6_18();
  MEMORY[0x223DE2180](0xD000000000000018, v10);

  OUTLINED_FUNCTION_6_18();
  MEMORY[0x223DE2180](0xD000000000000017, v15);

  OUTLINED_FUNCTION_6_18();
  MEMORY[0x223DE2180](0xD00000000000001BLL, v22);

  MEMORY[0x223DE2180](93, 0xE100000000000000);
  return 0xD00000000000001BLL;
}

uint64_t OUTLINED_FUNCTION_111()
{
  v2 = *(*(v0 - 144) + 2072);

  return static OS_dispatch_source.makeTimerSource(flags:queue:)();
}

SiriNetwork::ConnectionType __swiftcall NetworkManager.connectionTechnologyForCellularInterface()()
{
  v2 = v0;
  v22[4] = *MEMORY[0x277D85DE8];
  v3 = *(v1 + OBJC_IVAR___SNNetworkManagerInternal_dataServiceDescriptor);
  if (!v3 || ([v3 copy], _bridgeAnyObjectToAny(_:)(), swift_unknownObjectRelease(), type metadata accessor for CTServiceDescriptor(0, &lazy cache variable for type metadata for CTServiceDescriptor, 0x277CC3718), (swift_dynamicCast() & 1) == 0))
  {
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    v14 = type metadata accessor for Logger();
    v15 = OUTLINED_FUNCTION_17(v14, static Logger.siriNetwork);
    v16 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_15_1(v16))
    {
      v17 = OUTLINED_FUNCTION_14();
      *v17 = 0;
      _os_log_impl(&dword_223515000, v15, v16, "NetworkManager - CoreTelephony: No data service descriptor to get cellular interface.", v17, 2u);
      OUTLINED_FUNCTION_12();
    }

    goto LABEL_10;
  }

  v4 = *(v1 + OBJC_IVAR___SNNetworkManagerInternal_coreTelephonyClient);
  v22[0] = 0;
  v5 = [v4 getCurrentRat:v21 error:v22];
  v6 = v22[0];
  if (!v5)
  {
    v19 = v22[0];
    v20 = _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_10:
    *v2 = 2;
    goto LABEL_11;
  }

  v7 = v5;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = v6;

  v12._countAndFlagsBits = v8;
  v12._object = v10;
  ConnectionType.init(fromCoreTelephonyeRATString:)(v12);

LABEL_11:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void OUTLINED_FUNCTION_101_0()
{

  JUMPOUT(0x223DE2180);
}

uint64_t OUTLINED_FUNCTION_101_1(uint64_t a1, ...)
{
  va_start(va1, a1);
  va_start(va, a1);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);

  return outlined init with copy of RPCOspreyConnectionProtocol(va1, va);
}

SiriNetwork::ConnectionType __swiftcall ConnectionType.init(fromCoreTelephonyeRATString:)(Swift::String fromCoreTelephonyeRATString)
{
  object = fromCoreTelephonyeRATString._object;
  v4 = v1;
  v5 = *MEMORY[0x277CC35C8];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1_25();
  v7 = v7 && v6 == object;
  if (v7)
  {

LABEL_8:

    v9 = 5;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_46();
  OUTLINED_FUNCTION_2();
  if (v2)
  {
    goto LABEL_8;
  }

  v10 = *MEMORY[0x277CC35C0];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1_25();
  if (v7 && v11 == object)
  {

LABEL_17:

    v9 = 6;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_46();
  OUTLINED_FUNCTION_2();
  if (v2)
  {
    goto LABEL_17;
  }

  v13 = *MEMORY[0x277CC35F8];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1_25();
  if (v7 && v14 == object)
  {

LABEL_25:

    v9 = 7;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_46();
  OUTLINED_FUNCTION_2();
  if (v2)
  {
    goto LABEL_25;
  }

  v16 = *MEMORY[0x277CC35D0];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1_25();
  if (v7 && v17 == object)
  {

LABEL_33:

    v9 = 8;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_46();
  OUTLINED_FUNCTION_2();
  if (v2)
  {
    goto LABEL_33;
  }

  v19 = *MEMORY[0x277CC35D8];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1_25();
  if (v7 && v20 == object)
  {

LABEL_41:

    v9 = 9;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_46();
  OUTLINED_FUNCTION_2();
  if (v2)
  {
    goto LABEL_41;
  }

  v22 = *MEMORY[0x277CC35A0];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1_25();
  if (v7 && v23 == object)
  {

LABEL_49:

    v9 = 4;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_46();
  OUTLINED_FUNCTION_2();
  if (v2)
  {
    goto LABEL_49;
  }

  v25 = *MEMORY[0x277CC35A8];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1_25();
  if (v7 && v26 == object)
  {

LABEL_57:

    v9 = 10;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_46();
  OUTLINED_FUNCTION_2();
  if (v2)
  {
    goto LABEL_57;
  }

  v28 = *MEMORY[0x277CC35B0];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1_25();
  if (v7 && v29 == object)
  {

LABEL_65:

    v9 = 11;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_46();
  OUTLINED_FUNCTION_2();
  if (v2)
  {
    goto LABEL_65;
  }

  v31 = *MEMORY[0x277CC35B8];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1_25();
  if (v7 && v32 == object)
  {

LABEL_73:

    v9 = 12;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_46();
  OUTLINED_FUNCTION_2();
  if (v2)
  {
    goto LABEL_73;
  }

  v34 = *MEMORY[0x277CC3600];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1_25();
  if (v7 && v35 == object)
  {

LABEL_81:

    v9 = 13;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_46();
  OUTLINED_FUNCTION_2();
  if (v2)
  {
    goto LABEL_81;
  }

  v37 = *MEMORY[0x277CC35E0];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1_25();
  if (v7 && v38 == object)
  {

LABEL_89:

    v9 = 14;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_46();
  OUTLINED_FUNCTION_2();
  if (v2)
  {
    goto LABEL_89;
  }

  v40 = *MEMORY[0x277CC35F0];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1_25();
  if (v7 && v41 == object)
  {

LABEL_97:

    v9 = 15;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_46();
  OUTLINED_FUNCTION_2();
  if (v2)
  {
    goto LABEL_97;
  }

  v43 = *MEMORY[0x277CC35E8];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1_25();
  if (v7 && v44 == object)
  {

    v9 = 16;
  }

  else
  {
    v46 = OUTLINED_FUNCTION_0_46();

    if (v46)
    {
      v9 = 16;
    }

    else
    {
      v9 = 0;
    }
  }

LABEL_9:
  *v4 = v9;
  return result;
}

uint64_t specialized closure #1 in NetworkActivityTracingInternal.removeConnection(_:completion:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_beginAccess();
    specialized Set._Variant.remove(_:)();
    v7 = v6;
    v8 = swift_endAccess();
    if (v7)
    {

      swift_beginAccess();
      v9 = *(v5 + 16);
      v10 = 1 << *(v9 + 32);
      v11 = -1;
      if (v10 < 64)
      {
        v11 = ~(-1 << v10);
      }

      v12 = v11 & *(v9 + 64);
      v13 = (v10 + 63) >> 6;
      v14 = *(v5 + 16);

      for (i = 0; v12; result = )
      {
        v16 = i;
LABEL_11:
        v17 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v18 = *(*(v9 + 56) + ((v16 << 9) | (8 * v17)));

        specialized NetworkActivity.removeConnection(_:)();
      }

      while (1)
      {
        v16 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        if (v16 >= v13)
        {

          goto LABEL_14;
        }

        v12 = *(v9 + 64 + 8 * v16);
        ++i;
        if (v12)
        {
          i = v16;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_14:
      if (a3)
      {
        a3(v8);
      }
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_77_1@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 + 14) = a1;
  *v4 = a2;
  *(v2 + 22) = 1024;
  v6 = *(v3 + 139);
}

void specialized Set._Variant.remove(_:)()
{
  OUTLINED_FUNCTION_67_1();
  v1 = v0;
  v2 = *v0;
  if ((*v0 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v3 = *v0;
    }

    v4 = __CocoaSet.contains(_:)();

    if (v4)
    {
      specialized Set._Variant._migrateToNative(_:removing:)();
    }

    else
    {
    }
  }

  else
  {
    v5 = *(v2 + 40);
    Hasher.init(_seed:)();
    v6 = NWConnection.identifier.getter();
    MEMORY[0x223DE29A0](v6);
    Hasher._finalize()();
    v7 = *(v2 + 32);
    OUTLINED_FUNCTION_18_8();
    v10 = ~v9;
    while (1)
    {
      v11 = v8 & v10;
      if (((*(v2 + 56 + (((v8 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v8 & v10)) & 1) == 0)
      {
        break;
      }

      v12 = *(*(v2 + 48) + 8 * v11);

      v13 = NWConnection.identifier.getter();
      v14 = NWConnection.identifier.getter();

      if (v13 == v14)
      {
        v15 = *v1;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = *v1;
        v19 = *v1;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized _NativeSet.copy()();
          v17 = v19;
        }

        v18 = *(*(v17 + 48) + 8 * v11);
        specialized _NativeSet._delete(at:)(v11);
        *v1 = v19;
        break;
      }

      v8 = v11 + 1;
    }
  }

  OUTLINED_FUNCTION_66_3();
}

{
  OUTLINED_FUNCTION_50_4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v31 = v0;
  v32 = v9;
  v10 = *v0;
  v11 = *(*v0 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  Hasher._finalize()();
  v12 = v10 + 56;
  v13 = *(v10 + 32);
  OUTLINED_FUNCTION_18_8();
  v16 = v15 & ~v14;
  if ((*(v10 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v14;
    v18 = *(v10 + 48);
    while (1)
    {
      v19 = (v18 + 32 * v16);
      v20 = v19[2];
      v21 = v19[3];
      v22 = *v19 == v8 && v19[1] == v6;
      if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v23 = v20 == v4 && v21 == v2;
        if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }
      }

      v16 = (v16 + 1) & v17;
      if (((*(v12 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    v24 = *v31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v31;
    v33 = *v31;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeSet.copy()();
      v26 = v33;
    }

    v27 = *(v26 + 48) + 32 * v16;
    v28 = *v27;
    v30 = *(v27 + 16);
    v29 = *(v27 + 24);
    *v32 = v28;
    *(v32 + 16) = v30;
    *(v32 + 24) = v29;
    specialized _NativeSet._delete(at:)(v16);
    *v31 = v33;
  }

  else
  {
LABEL_14:
    *v32 = 0u;
    *(v32 + 16) = 0u;
  }

  OUTLINED_FUNCTION_40_5();
}

uint64_t getEnumTagSinglePayload for ConnectionPreparationReport(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 360))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 336);
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

uint64_t ConnectionPreparationReport.debugDescription.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = *v0;
  v3 = *(v0 + 8);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = *(v0 + 32);
  v52 = *(v0 + 33);
  v49 = *(v0 + 34);
  v46 = *(v0 + 35);
  v43 = *(v0 + 36);
  v57 = *(v0 + 336);
  v59 = *(v0 + 344);
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;

  _StringGuts.grow(_:)(17);

  OUTLINED_FUNCTION_2_30(0x697463656E6E6F63uLL);
  if (v3)
  {
    v7 = v2;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  v8 = 0xE700000000000000;
  if (!v3)
  {
    v3 = 0xE700000000000000;
  }

  MEMORY[0x223DE2180](v7, v3);

  OUTLINED_FUNCTION_1_28();
  v60 = v10;
  v61 = v9;
  OUTLINED_FUNCTION_2_30(0x7461745368746170uLL);
  if (v4)
  {
    v11 = v5;
  }

  else
  {
    v11 = 0x6E776F6E6B6E75;
  }

  if (v4)
  {
    v12 = v4;
  }

  else
  {
    v12 = 0xE700000000000000;
  }

  MEMORY[0x223DE2180](v11, v12);

  v56 = __dst[0];
  v58 = __dst[1];
  __dst[0] = 0x20534E44736168;
  __dst[1] = 0xE700000000000000;
  if (v6)
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (v6)
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  MEMORY[0x223DE2180](v13, v14);

  OUTLINED_FUNCTION_1_28();
  v54 = v16;
  v55 = v15;
  OUTLINED_FUNCTION_2_30(0x736E657078457369uLL);
  v17 = OUTLINED_FUNCTION_3_26(v52);
  if (v18)
  {
    v19 = 0xE500000000000000;
  }

  else
  {
    v19 = 0xE400000000000000;
  }

  MEMORY[0x223DE2180](v17, v19);

  OUTLINED_FUNCTION_1_28();
  v51 = v21;
  v53 = v20;
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  OUTLINED_FUNCTION_2_30(0x7274736E6F437369uLL);
  v22 = OUTLINED_FUNCTION_3_26(v49);
  if (v18)
  {
    v23 = 0xE500000000000000;
  }

  else
  {
    v23 = 0xE400000000000000;
  }

  MEMORY[0x223DE2180](v22, v23);

  OUTLINED_FUNCTION_1_28();
  v48 = v25;
  v50 = v24;
  __dst[0] = 0x2034767049736168;
  __dst[1] = 0xE800000000000000;
  v26 = OUTLINED_FUNCTION_3_26(v46);
  if (v18)
  {
    v27 = 0xE500000000000000;
  }

  else
  {
    v27 = 0xE400000000000000;
  }

  MEMORY[0x223DE2180](v26, v27);

  OUTLINED_FUNCTION_1_28();
  v45 = v29;
  v47 = v28;
  v68 = 0x2036767049736168;
  v69 = 0xE800000000000000;
  v30 = OUTLINED_FUNCTION_3_26(v43);
  if (v18)
  {
    v31 = 0xE500000000000000;
  }

  else
  {
    v31 = 0xE400000000000000;
  }

  MEMORY[0x223DE2180](v30, v31);

  v33 = v68;
  v32 = v69;
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(19);

  v65 = 0xD000000000000011;
  v66 = 0x80000002235F75E0;
  memcpy(__dst, (v0 + 40), 0x121uLL);
  if (_s11SiriNetwork25ConnectionInterfaceReportVSgWOg(__dst) != 1)
  {
    memcpy(v63, (v0 + 40), sizeof(v63));
    memcpy(v64, (v0 + 40), 0x121uLL);
    outlined init with copy of ConnectionInterfaceReport(v64, v62);
    v1 = String.init<A>(describing:)();
    v8 = v34;
  }

  MEMORY[0x223DE2180](v1, v8);

  v44 = v65;
  v35 = v66;
  v64[0] = 0;
  v64[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  v64[0] = 0x65746E4968746170;
  v64[1] = 0xEF20736563616672;
  v36 = MEMORY[0x223DE2280](v57, &type metadata for ConnectionInterfaceReport);
  MEMORY[0x223DE2180](v36);

  v37 = v64[0];
  v38 = v64[1];
  strcpy(v64, "pathGateways ");
  HIWORD(v64[1]) = -4864;
  v39 = MEMORY[0x223DE2280](v59, &type metadata for ConnectionEndpointReport);
  MEMORY[0x223DE2180](v39);

  v40 = v64[0];
  v41 = v64[1];
  v64[0] = 0;
  v64[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(84);
  MEMORY[0x223DE2180](0xD00000000000002ELL, 0x80000002235F9620);
  MEMORY[0x223DE2180](v56, v58);

  OUTLINED_FUNCTION_0_51();
  MEMORY[0x223DE2180](v54, v55);

  OUTLINED_FUNCTION_0_51();
  MEMORY[0x223DE2180](v51, v53);

  OUTLINED_FUNCTION_0_51();
  MEMORY[0x223DE2180](v48, v50);

  OUTLINED_FUNCTION_0_51();
  MEMORY[0x223DE2180](v45, v47);

  OUTLINED_FUNCTION_0_51();
  MEMORY[0x223DE2180](v33, v32);

  OUTLINED_FUNCTION_0_51();
  MEMORY[0x223DE2180](v44, v35);

  OUTLINED_FUNCTION_0_51();
  MEMORY[0x223DE2180](v37, v38);

  OUTLINED_FUNCTION_0_51();
  MEMORY[0x223DE2180](v40, v41);

  OUTLINED_FUNCTION_0_51();
  MEMORY[0x223DE2180](v60, v61);

  return v64[0];
}

uint64_t closure #1 in NetworkConnectionProvider.closeWithError(_:)(uint64_t a1, void (*a2)(void **), uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (a2)
    {
      v15 = a4;
      v16 = 0u;
      v17 = 0u;
      v18 = 1;
      outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(a2);
      v8 = a4;
      a2(&v15);
      outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(a2);
      outlined consume of Result<(), NetworkConnectionError>(v15, v16, *(&v16 + 1), v17, *(&v17 + 1), v18);
    }

    else if (swift_unknownObjectWeakLoadStrong())
    {

      specialized BackgroundConnection.connectionProvider(_:received:)();
      swift_unknownObjectRelease();
    }

    v9 = *(v7 + 2144);
    NetworkAnalytics.setIsConnectionActive(_:)(0);

    v10 = *(v7 + 2144);
    NetworkAnalytics.setNetIdAvailable(_:)(0);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v13 = *(result + 2064);
    v14 = *(v12 + 2072);
    *(v12 + 2064) = 0u;
    outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v13);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ConnectionEndpointReport()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  return ConnectionEndpointReport.debugDescription.getter();
}

uint64_t ConnectionEndpointReport.debugDescription.getter()
{
  MEMORY[0x223DE2180]();
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x223DE2180](v0);

  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x223DE2180](v1);

  _StringGuts.grow(_:)(55);
  MEMORY[0x223DE2180](0xD00000000000002CLL, 0x80000002235F7930);
  MEMORY[0x223DE2180](0x2074736F68, 0xE500000000000000);

  MEMORY[0x223DE2180](8236, 0xE200000000000000);
  MEMORY[0x223DE2180](0x2074726F70, 0xE500000000000000);

  MEMORY[0x223DE2180](8236, 0xE200000000000000);
  MEMORY[0x223DE2180](0x2065707974, 0xE500000000000000);

  MEMORY[0x223DE2180](93, 0xE100000000000000);
  return 0;
}

id ConnectionPreparationReport.netDebugConnectionStatePreparationSnapshot.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  v4 = *(v0 + 33);
  v5 = *(v0 + 34);
  v6 = *(v0 + 35);
  v7 = *(v0 + 36);
  v8 = v0[42];
  v39 = v0[43];
  v40 = v0[2];
  v9 = [objc_allocWithZone(MEMORY[0x277D58B88]) init];
  v10 = v9;
  v42 = v9;
  if (v9)
  {
    v11 = v9;
    v12 = v2 ? MEMORY[0x223DE2070](v1, v2) : 0;
    [v10 setConnectionInfo_];

    if (v3)
    {
      type metadata accessor for NetworkAnalytics(0);
      v13 = v42;
      v10 = v42;
      [v13 setStatus_];
    }
  }

  v14 = v10;
  [v14 setIsConstrained_];
  [v14 setIsExpensive_];
  [v14 setHasIpv4_];
  [v14 setHasIpv6_];

  v15 = *(v8 + 16);
  v16 = MEMORY[0x277D84F90];
  v41 = v14;
  if (v15)
  {
    v17 = (v8 + 32);
    v45 = MEMORY[0x277D84F90];
    v18 = v15 - 1;
    v19 = MEMORY[0x277D84F90];
    while (1)
    {
      memcpy(__dst, v17, 0x121uLL);
      v20 = objc_allocWithZone(MEMORY[0x277D58BF8]);
      outlined init with copy of ConnectionInterfaceReport(__dst, v43);
      v21 = [v20 init];
      if (v21)
      {
        v22 = __dst[0];
        v23 = __dst[1];
        v24 = v21;
        outlined bridged method (mbgnn) of @objc NETSchemaNETPathInterface.name.setter(v22, v23, v24);

        [v24 setIndex_];
        type metadata accessor for NetworkAnalytics(0);
        v25 = v24;
        [v25 setType_];

        outlined destroy of ConnectionInterfaceReport(__dst);
        v26 = v25;
        MEMORY[0x223DE2240]();
        if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v19 = v45;
        if (!v18)
        {
LABEL_16:
          if (v42)
          {
            v27 = v19;
            v14 = v41;
            outlined bridged method (mbnn) of @objc NETSchemaNETDebugNetworkConnectionStatePreparationSnapshotCaptured.pathGateways.setter(v27, v41, &lazy cache variable for type metadata for NETSchemaNETPathInterface, 0x277D58BF8, &selRef_setPathInterfaces_);
          }

          else
          {

            v14 = v41;
          }

          break;
        }
      }

      else
      {
        [0 setIndex_];
        outlined destroy of ConnectionInterfaceReport(__dst);
        if (!v18)
        {
          goto LABEL_16;
        }
      }

      --v18;
      v17 += 296;
    }
  }

  v28 = *(v39 + 16);
  if (v28)
  {
    __dst[0] = v16;
    v29 = (v39 + 52);
    do
    {
      v30 = *(v29 - 3);
      v32 = *(v29 - 1);
      v31 = *v29;
      v33 = objc_allocWithZone(MEMORY[0x277D58BC0]);

      v34 = [v33 init];
      [v34 setPort_];
      if (v34)
      {
        type metadata accessor for NetworkAnalytics(0);
        v35 = static NetworkAnalytics.netEndpointType(from:)(v31);
        v36 = v34;
        [v36 setType_];

        v37 = v36;
        MEMORY[0x223DE2240]();
        if (*((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v16 = __dst[0];
      }

      else
      {
      }

      v29 += 6;
      --v28;
    }

    while (v28);
    if (v42)
    {
      v14 = v41;
      outlined bridged method (mbnn) of @objc NETSchemaNETDebugNetworkConnectionStatePreparationSnapshotCaptured.pathGateways.setter(v16, v41, &lazy cache variable for type metadata for NETSchemaNETEndpoint, 0x277D58BC0, &selRef_setPathGateways_);
    }

    else
    {

      return v41;
    }
  }

  return v14;
}

uint64_t static NetworkAnalytics.netPathStatus(from:)()
{
  v1 = String.lowercased()();
  String.lowercased()();
  OUTLINED_FUNCTION_9_17();
  v3 = v3 && v2 == v1._object;
  if (v3)
  {

LABEL_8:

    return 2;
  }

  OUTLINED_FUNCTION_3_30();
  OUTLINED_FUNCTION_15_11();
  if (v0)
  {
    goto LABEL_8;
  }

  String.lowercased()();
  OUTLINED_FUNCTION_9_17();
  if (v3 && v5 == v1._object)
  {

LABEL_16:

    return 3;
  }

  OUTLINED_FUNCTION_3_30();
  OUTLINED_FUNCTION_15_11();
  if (v0)
  {
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_7_21();
  String.lowercased()();
  OUTLINED_FUNCTION_9_17();
  if (v3 && v7 == v1._object)
  {

    return 4;
  }

  else
  {
    OUTLINED_FUNCTION_3_30();
    OUTLINED_FUNCTION_12_11();

    if (v1._countAndFlagsBits)
    {
      return 4;
    }

    else
    {
      return 0;
    }
  }
}

void outlined bridged method (mbgnn) of @objc NETSchemaNETPathInterface.name.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x223DE2070]();
  [a3 setName_];
}

uint64_t static NetworkAnalytics.netPathType(from:)()
{
  v1 = String.lowercased()();
  String.lowercased()();
  OUTLINED_FUNCTION_9_17();
  v3 = v3 && v2 == v1._object;
  if (v3)
  {

LABEL_8:

    return 0;
  }

  OUTLINED_FUNCTION_3_30();
  OUTLINED_FUNCTION_15_11();
  if (v0)
  {
    goto LABEL_8;
  }

  String.lowercased()();
  OUTLINED_FUNCTION_9_17();
  if (v3 && v5 == v1._object)
  {

LABEL_16:

    return 1;
  }

  OUTLINED_FUNCTION_3_30();
  OUTLINED_FUNCTION_15_11();
  if (v0)
  {
    goto LABEL_16;
  }

  String.lowercased()();
  OUTLINED_FUNCTION_9_17();
  if (v3 && v7 == v1._object)
  {

LABEL_24:

    return 2;
  }

  OUTLINED_FUNCTION_3_30();
  OUTLINED_FUNCTION_15_11();
  if (v0)
  {
    goto LABEL_24;
  }

  String.lowercased()();
  OUTLINED_FUNCTION_9_17();
  if (v3 && v9 == v1._object)
  {

LABEL_32:

    return 3;
  }

  OUTLINED_FUNCTION_3_30();
  OUTLINED_FUNCTION_15_11();
  if (v0)
  {
    goto LABEL_32;
  }

  String.lowercased()();
  OUTLINED_FUNCTION_9_17();
  if (v3 && v11 == v1._object)
  {

    return 4;
  }

  else
  {
    OUTLINED_FUNCTION_3_30();
    OUTLINED_FUNCTION_12_11();

    if (v1._countAndFlagsBits)
    {
      return 4;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t NetworkConnectionProvider.__deallocating_deinit()
{
  NetworkConnectionProvider.deinit();

  return MEMORY[0x2821FE8D8](v0, 2176, 7);
}

uint64_t NetworkConnectionProvider.deinit()
{
  v1 = v0;
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriNetwork);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_223515000, v3, v4, "Provider - NetworkConnectionProvider: Deallocating.", v5, 2u);
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
  }

  NetworkConnectionProvider.configureConnectionHandler(_:)(0);
  *(v1 + 1512) = 0;
  swift_unknownObjectWeakAssign();
  OUTLINED_FUNCTION_96();
  outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v6);
  specialized ConnectionProviderProtocol.cancelOpenTimer()();
  specialized ConnectionProviderProtocol.cancelOpenSlowTimer()();
  specialized ConnectionProviderProtocol.cancelStaleConnectionTimer()();
  specialized ConnectionProviderProtocol.cancelConnectionUnviableTimer()();
  NetworkConnectionProvider.closeWithError(_:)();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_223515000, v7, v8, "Provider - NetworkConnectionProvider: Deallocated.", v9, 2u);
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
  }

  outlined destroy of NetworkConnectionProtocol?(v1 + 16, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
  memcpy(v19, (v1 + 56), 0x599uLL);
  outlined destroy of ConnectionMetrics(v19);

  outlined destroy of weak ConnectionProviderDelegate?(v1 + 1504);
  outlined consume of ConnectionProviderState(*(v1 + 1520), *(v1 + 1528));
  memcpy(__dst, (v1 + 1536), 0x204uLL);
  outlined destroy of ConnectionConfiguration(__dst);

  v10 = *(v1 + 2072);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(*(v1 + 2064));

  v11 = *(v1 + 2112);
  swift_unknownObjectRelease();
  v12 = *(v1 + 2120);
  swift_unknownObjectRelease();
  v13 = *(v1 + 2128);
  swift_unknownObjectRelease();
  v14 = *(v1 + 2136);
  swift_unknownObjectRelease();

  v15 = *(v1 + 2152);

  v16 = *(v1 + 2160);

  v17 = *(v1 + 2168);

  return v1;
}

void outlined bridged method (mbnn) of @objc NETSchemaNETDebugNetworkConnectionStatePreparationSnapshotCaptured.pathGateways.setter(uint64_t a1, void *a2, unint64_t *a3, uint64_t *a4, SEL *a5)
{
  type metadata accessor for CTServiceDescriptor(0, a3, a4);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 *a5];
}

unint64_t lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError()
{
  result = lazy protocol witness table cache variable for type NetworkConnectionError and conformance NetworkConnectionError;
  if (!lazy protocol witness table cache variable for type NetworkConnectionError and conformance NetworkConnectionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkConnectionError and conformance NetworkConnectionError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NetworkConnectionError and conformance NetworkConnectionError;
  if (!lazy protocol witness table cache variable for type NetworkConnectionError and conformance NetworkConnectionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkConnectionError and conformance NetworkConnectionError);
  }

  return result;
}

uint64_t static NetworkAnalytics.netEndpointType(from:)(unsigned int a1)
{
  if (a1 < 5)
  {
    return a1 + 1;
  }

  else
  {
    return 0;
  }
}

unint64_t get_enum_tag_for_layout_string_11SiriNetwork0B15ConnectionErrorO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >> 61 <= 4)
  {
    return v1 >> 60;
  }

  else
  {
    return (*a1 + 10);
  }
}

void closure #1 in NetworkAnalytics.logNetworkConnectionStatePreparationSnapshotCaptured(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, const char *a21)
{
  OUTLINED_FUNCTION_46();
  v194 = v22;
  v24 = v23;
  v192 = v25;
  v197 = v26;
  v204 = v27;
  v201 = v28;
  v198 = v29;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  v30 = OUTLINED_FUNCTION_71(v205);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_14_2();
  MEMORY[0x28223BE20](v33);
  v35 = &v183[-v34];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  v37 = OUTLINED_FUNCTION_11_1(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_14_2();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_14_2();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_50_0();
  v203 = v42;
  v44 = MEMORY[0x28223BE20](v43);
  v46 = &v183[-v45];
  v47 = MEMORY[0x28223BE20](v44);
  v49 = &v183[-v48];
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_51_0();
  MEMORY[0x28223BE20](v50);
  v52 = &v183[-v51];
  v53 = type metadata accessor for UUID();
  v54 = OUTLINED_FUNCTION_0_0(v53);
  v206 = v55;
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_14_2();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_50_0();
  v202 = v59;
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_14_2();
  v62 = MEMORY[0x28223BE20](v61);
  v64 = &v183[-v63];
  MEMORY[0x28223BE20](v62);
  v66 = &v183[-v65];
  OUTLINED_FUNCTION_40_1();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_48;
  }

  v191 = v24;
  v68 = OBJC_IVAR___SNNetworkAnalyticsInternal_netId;
  v69 = Strong;
  OUTLINED_FUNCTION_40_1();
  outlined init with copy of UUID?(&v69[v68], v52);
  if (__swift_getEnumTagSinglePayload(v52, 1, v53) != 1)
  {
    v187 = v64;
    v74 = v206;
    v75 = *(v206 + 32);
    v186 = v206 + 32;
    v185 = v75;
    v75(v66, v52, v53);
    v76 = *v204;
    v204 = v69;
    v77 = &v69[v76];
    swift_beginAccess();
    v78 = v74;
    v79 = v53;
    v80 = *(v78 + 16);
    v188 = v66;
    v190 = v80;
    v80(v21, v66, v53);
    __swift_storeEnumTagSinglePayload(v21, 0, 1, v53);
    v81 = v205[12];
    v189 = v77;
    outlined init with copy of UUID?(v77, v35);
    outlined init with copy of UUID?(v21, &v35[v81]);
    OUTLINED_FUNCTION_18_4(v35);
    if (v83)
    {
      outlined destroy of NetworkConnectionProtocol?(v21, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
      OUTLINED_FUNCTION_18_4(&v35[v81]);
      if (v83)
      {
        outlined destroy of NetworkConnectionProtocol?(v35, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
        OUTLINED_FUNCTION_49_2();
        v82 = v188;
LABEL_24:
        if (one-time initialization token for siriNetwork != -1)
        {
          OUTLINED_FUNCTION_0_6();
        }

        v117 = type metadata accessor for Logger();
        __swift_project_value_buffer(v117, static Logger.siriNetwork);
        v118 = v196;
        (v21)(v196, v82, v79);
        v119 = Logger.logObject.getter();
        v120 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v119, v120))
        {
          v121 = OUTLINED_FUNCTION_55();
          v122 = v79;
          v123 = OUTLINED_FUNCTION_54();
          v209 = v123;
          *v121 = 136315138;
          OUTLINED_FUNCTION_6_10();
          lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(v124, v125);
          v126 = dispatch thunk of CustomStringConvertible.description.getter();
          v128 = v127;
          v129 = *(v206 + 8);
          v129(v118, v122);
          v130 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v126, v128, &v209);

          *(v121 + 4) = v130;
          _os_log_impl(&dword_223515000, v119, v120, v194, v121, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v123);
          OUTLINED_FUNCTION_12();
          OUTLINED_FUNCTION_12();

          v131 = v188;
          v132 = v122;
LABEL_37:
          v129(v131, v132);
          goto LABEL_48;
        }

        v159 = *(v206 + 8);
        v159(v118, v79);
LABEL_47:
        v159(v82, v79);
        goto LABEL_48;
      }
    }

    else
    {
      outlined init with copy of UUID?(v35, v49);
      OUTLINED_FUNCTION_18_4(&v35[v81]);
      v84 = v187;
      if (!v83)
      {
        OUTLINED_FUNCTION_37_0();
        v109();
        OUTLINED_FUNCTION_6_10();
        lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(v110, v111);
        OUTLINED_FUNCTION_47_0();
        v184 = dispatch thunk of static Equatable.== infix(_:_:)();
        v112 = *(v206 + 8);
        (v112)(v84, v79);
        v113 = OUTLINED_FUNCTION_31_1();
        v21 = v114;
        outlined destroy of NetworkConnectionProtocol?(v113, v115, v114);
        v116 = OUTLINED_FUNCTION_48();
        v112(v116);
        v82 = v66;
        outlined destroy of NetworkConnectionProtocol?(v35, &_s10Foundation4UUIDVSgMd, v21);
        OUTLINED_FUNCTION_49_2();
        if (v184)
        {
          goto LABEL_24;
        }

LABEL_17:
        v88 = OUTLINED_FUNCTION_22_3();
        (v21)(v88);
        OUTLINED_FUNCTION_41_2(v46);
        v89 = v189;
        swift_beginAccess();
        outlined assign with take of UUID?(v46, v89);
        swift_endAccess();
        v90 = OUTLINED_FUNCTION_22_3();
        (v21)(v90);
        OUTLINED_FUNCTION_41_2(v46);
        v91 = OBJC_IVAR___SNNetworkAnalyticsInternal_networkConnectionId;
        v92 = v204;
        OUTLINED_FUNCTION_40_1();
        outlined init with copy of UUID?(&v92[v91], v203);
        v93 = *&v92[OBJC_IVAR___SNNetworkAnalyticsInternal_connectionProvider];
        v208 = v92[OBJC_IVAR___SNNetworkAnalyticsInternal_connectionProvider + 4];
        NetworkAnalytics.createSchemaClientEventFrom(netId:networkConnectionId:connectionProvider:)();
        v95 = v94;
        OUTLINED_FUNCTION_29_3();
        outlined destroy of NetworkConnectionProtocol?(v96, v97, v98);
        OUTLINED_FUNCTION_29_3();
        outlined destroy of NetworkConnectionProtocol?(v99, v100, v101);
        if (!v95)
        {
          (*(v206 + 8))(v82, v79);

          goto LABEL_48;
        }

        v102 = *v197;
        v203 = v95;
        [v95 v102];
        v103 = OBJC_IVAR___SNNetworkAnalyticsInternal_netIdForRequestLink;
        OUTLINED_FUNCTION_40_1();
        v104 = v199;
        (v21)(v199, v82, v79);
        OUTLINED_FUNCTION_41_2(v104);
        v105 = v205[12];
        v106 = v200;
        outlined init with copy of UUID?(&v92[v103], v200);
        outlined init with copy of UUID?(v104, v106 + v105);
        OUTLINED_FUNCTION_18_4(v106);
        if (v83)
        {
          outlined destroy of NetworkConnectionProtocol?(v104, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
          OUTLINED_FUNCTION_18_4(v106 + v105);
          v107 = v202;
          if (v83)
          {
            outlined destroy of NetworkConnectionProtocol?(v106, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
            v108 = v203;
LABEL_41:
            v167 = *(type metadata accessor for NetworkAnalyticsEventMessage(0) + 20);
            v168 = *(v189 + v167);
            *(v189 + v167) = 0;

            [*&v204[OBJC_IVAR___SNNetworkAnalyticsInternal_siriAnalyticsMessageStream] emitMessage:v108 timestamp:v201];
            if (one-time initialization token for siriNetwork != -1)
            {
              OUTLINED_FUNCTION_0_6();
            }

            v169 = type metadata accessor for Logger();
            __swift_project_value_buffer(v169, static Logger.siriNetwork);
            v107 = v193;
            v170 = OUTLINED_FUNCTION_22_3();
            (v21)(v170);
            v171 = Logger.logObject.getter();
            v172 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v171, v172))
            {
              v173 = OUTLINED_FUNCTION_55();
              v174 = OUTLINED_FUNCTION_54();
              v207 = v174;
              *v173 = 136315138;
              OUTLINED_FUNCTION_6_10();
              lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(v175, v176);
              v177 = dispatch thunk of CustomStringConvertible.description.getter();
              v178 = v79;
              v180 = v179;
              v181 = *(v206 + 8);
              v181(v107, v178);
              v182 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v177, v180, &v207);

              *(v173 + 4) = v182;
              _os_log_impl(&dword_223515000, v171, v172, v192, v173, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v174);
              OUTLINED_FUNCTION_12();
              OUTLINED_FUNCTION_12();

              v181(v188, v178);
              goto LABEL_48;
            }

LABEL_46:
            v159 = *(v206 + 8);
            v159(v107, v79);
            goto LABEL_47;
          }
        }

        else
        {
          outlined init with copy of UUID?(v106, v195);
          OUTLINED_FUNCTION_18_4(v106 + v105);
          v107 = v202;
          if (!v133)
          {
            v160 = v187;
            OUTLINED_FUNCTION_37_0();
            v161();
            OUTLINED_FUNCTION_6_10();
            lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(v162, v163);
            OUTLINED_FUNCTION_47_0();
            v164 = dispatch thunk of static Equatable.== infix(_:_:)();
            v21 = *(v206 + 8);
            v165 = v160;
            v107 = v202;
            (v21)(v165, v79);
            outlined destroy of NetworkConnectionProtocol?(v104, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
            v166 = OUTLINED_FUNCTION_48();
            (v21)(v166);
            OUTLINED_FUNCTION_49_2();
            outlined destroy of NetworkConnectionProtocol?(v106, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
            v108 = v203;
            if (v164)
            {
              goto LABEL_41;
            }

LABEL_33:
            v137 = type metadata accessor for NetworkAnalyticsEventMessage(0);
            v138 = *(v137 + 20);
            v139 = v189;
            v140 = *(v189 + v138);
            *(v189 + v138) = v108;
            v141 = v139 + *(v137 + 24);
            *v141 = v201;
            *(v141 + 8) = 0;
            v142 = v108;

            if (one-time initialization token for siriNetwork != -1)
            {
              OUTLINED_FUNCTION_0_6();
            }

            v143 = type metadata accessor for Logger();
            __swift_project_value_buffer(v143, static Logger.siriNetwork);
            v144 = OUTLINED_FUNCTION_22_3();
            (v21)(v144);
            v145 = Logger.logObject.getter();
            v146 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v145, v146))
            {
              v147 = OUTLINED_FUNCTION_55();
              v148 = OUTLINED_FUNCTION_54();
              v205 = v142;
              v149 = v79;
              v150 = v148;
              v207 = v148;
              *v147 = 136315138;
              OUTLINED_FUNCTION_6_10();
              lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(v151, v152);
              v153 = dispatch thunk of CustomStringConvertible.description.getter();
              v154 = v82;
              v156 = v155;
              v157 = v107;
              v129 = *(v206 + 8);
              v129(v157, v149);
              v158 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v153, v156, &v207);

              *(v147 + 4) = v158;
              _os_log_impl(&dword_223515000, v145, v146, v191, v147, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v150);
              OUTLINED_FUNCTION_12();
              OUTLINED_FUNCTION_12();

              v131 = v154;
              v132 = v149;
              goto LABEL_37;
            }

            goto LABEL_46;
          }

          outlined destroy of NetworkConnectionProtocol?(v104, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
          v134 = *(v206 + 8);
          v135 = OUTLINED_FUNCTION_48();
          v136(v135);
        }

        outlined destroy of NetworkConnectionProtocol?(v106, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
        v108 = v203;
        goto LABEL_33;
      }

      outlined destroy of NetworkConnectionProtocol?(v21, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
      v85 = *(v206 + 8);
      v86 = OUTLINED_FUNCTION_48();
      v87(v86);
    }

    outlined destroy of NetworkConnectionProtocol?(v35, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    OUTLINED_FUNCTION_49_2();
    v82 = v188;
    goto LABEL_17;
  }

  outlined destroy of NetworkConnectionProtocol?(v52, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  v70 = type metadata accessor for Logger();
  __swift_project_value_buffer(v70, static Logger.siriNetwork);
  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    *v73 = 0;
    _os_log_impl(&dword_223515000, v71, v72, a21, v73, 2u);
    OUTLINED_FUNCTION_12();
  }

LABEL_48:
  OUTLINED_FUNCTION_47();
}

uint64_t NetworkConnectionProvider.StateUpdateHandler.__deallocating_deinit()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void NetworkAnalytics.createSchemaClientEventFrom(netId:networkConnectionId:connectionProvider:)()
{
  OUTLINED_FUNCTION_46();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  v7 = OUTLINED_FUNCTION_11_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_9();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v49 - v14;
  v16 = type metadata accessor for UUID();
  v17 = OUTLINED_FUNCTION_0_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_9();
  v24 = (v22 - v23);
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v49 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v49 - v29;
  outlined init with copy of UUID?(v5, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    outlined destroy of NetworkConnectionProtocol?(v15, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
    goto LABEL_24;
  }

  v50 = v24;
  v51 = v3;
  v53 = v1;
  v54 = v30;
  v49 = *(v19 + 32);
  v49(v30, v15, v16);
  v31 = [objc_allocWithZone(MEMORY[0x277D58B78]) init];
  if (v31)
  {
    v32 = objc_allocWithZone(MEMORY[0x277D58B80]);
    v33 = v31;
    v34 = [v32 init];
    [v33 setEventMetadata_];
  }

  type metadata accessor for CTServiceDescriptor(0, &lazy cache variable for type metadata for SISchemaUUID, 0x277D5AC78);
  v52 = v19;
  v35 = *(v19 + 16);
  v35(v28, v54, v16);
  v36 = SISchemaUUID.__allocating_init(nsuuid:)(v28);
  if (v31)
  {
    v37 = [v31 eventMetadata];
    if (v37)
    {
      v38 = v37;
      [v37 setNetId_];
    }
  }

  outlined init with copy of UUID?(v51, v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v16) == 1)
  {
    outlined destroy of NetworkConnectionProtocol?(v12, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
    v39 = v53;
    v40 = v54;
    v41 = v52;
    if ((v53 & 0x100000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    v48 = *(v41 + 8);
    goto LABEL_21;
  }

  v51 = v36;
  v44 = v50;
  v49(v50, v12, v16);
  v35(v28, v44, v16);
  v45 = SISchemaUUID.__allocating_init(nsuuid:)(v28);
  if (!v31)
  {
    v48 = *(v52 + 8);
    v48(v44, v16);

    v40 = v54;
    v36 = v51;
LABEL_21:
    v48(v40, v16);

    goto LABEL_24;
  }

  v46 = [v31 eventMetadata];
  v40 = v54;
  v41 = v52;
  if (v46)
  {
    v47 = v46;
    [v46 setNetworkConnectionId_];
  }

  else
  {
  }

  (*(v41 + 8))(v50, v16);
  v39 = v53;
  v36 = v51;
  if ((v53 & 0x100000000) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if (!v31)
  {
    v48 = *(v41 + 8);
    goto LABEL_21;
  }

  v42 = [v31 eventMetadata];
  if (v42)
  {
    v43 = v42;
    [v42 setProvider_];
  }

  else
  {
  }

  (*(v41 + 8))(v40, v16);
LABEL_24:
  OUTLINED_FUNCTION_47();
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

uint64_t objectdestroy_111Tm()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_109();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

void partial apply for specialized closure #1 in ConnectionProviderProtocol.openCompletionSetup(completion:)(__int128 *a1)
{
  v2 = *(v1 + 32);
  specialized closure #1 in ConnectionProviderProtocol.openCompletionSetup(completion:)(a1, *(v1 + 16), *(v1 + 24));
}

{
  v2 = *(v1 + 32);
  specialized closure #1 in ConnectionProviderProtocol.openCompletionSetup(completion:)(a1, *(v1 + 16), *(v1 + 24));
}

void specialized closure #1 in ConnectionProviderProtocol.openCompletionSetup(completion:)(__int128 *a1, uint64_t a2, void (*a3)(__int128 *))
{
  v3 = a1[1];
  v4 = *a1;
  v5[0] = v3;
  *(v5 + 9) = *(a1 + 25);
  specialized closure #1 in ConnectionProviderProtocol.openCompletionSetup(completion:)(&v4, a2, a3);
}

{
  v3 = a1[1];
  v4 = *a1;
  v5[0] = v3;
  *(v5 + 9) = *(a1 + 25);
  specialized closure #1 in ConnectionProviderProtocol.openCompletionSetup(completion:)(&v4, a2, a3);
}

void specialized closure #1 in ConnectionProviderProtocol.openCompletionSetup(completion:)(uint64_t a1, uint64_t a2, void (*a3)(__int128 *))
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    specialized ConnectionProviderProtocol.cancelOpenTimer()();
    specialized ConnectionProviderProtocol.cancelOpenSlowTimer()();
    if (*(a1 + 40))
    {
      v53 = a3;
      lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
      v12 = swift_allocError();
      *v13 = v5;
      v13[1] = v6;
      v13[2] = v7;
      v13[3] = v8;
      v13[4] = v9;
      v14 = *(v11 + 1520);
      *(v11 + 1520) = v12;
      v15 = *(v11 + 1528);
      *(v11 + 1528) = 1;
      v52 = v5;
      outlined copy of NetworkConnectionError(v5, v6, v7, v8, v9);
      outlined consume of ConnectionProviderState(v14, v15);
      if (one-time initialization token for siriNetwork != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      __swift_project_value_buffer(v16, static Logger.siriNetwork);

      outlined init with copy of NetworkConnectionProtocol?(a1, &v55, &_ss6ResultOyyt11SiriNetwork0C15ConnectionErrorOGMd, &_ss6ResultOyyt11SiriNetwork0C15ConnectionErrorOGMR);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();

      outlined destroy of NetworkConnectionProtocol?(a1, &_ss6ResultOyyt11SiriNetwork0C15ConnectionErrorOGMd, &_ss6ResultOyyt11SiriNetwork0C15ConnectionErrorOGMR);
      v51 = v18;
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v54 = v20;
        *v19 = 136315650;
        v21 = *v11;
        v22 = _typeName(_:qualified:)();
        log = v17;
        v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v54);

        *(v19 + 4) = v24;
        *(v19 + 12) = 2080;
        v25 = NetworkConnectionProvider.connectionIdentifier.getter();
        v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v54);

        *(v19 + 14) = v27;
        *(v19 + 22) = 2080;
        v28 = v52;
        *&v55 = v52;
        *(&v55 + 1) = v6;
        *v56 = v7;
        *&v56[8] = v8;
        *&v56[16] = v9;
        outlined copy of NetworkConnectionError(v52, v6, v7, v8, v9);
        v29 = String.init<A>(describing:)();
        v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v54);

        *(v19 + 24) = v31;
        _os_log_impl(&dword_223515000, log, v51, "Provider - %s [%s]: Open Completion error. %s", v19, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x223DE38F0](v20, -1, -1);
        MEMORY[0x223DE38F0](v19, -1, -1);

        v32 = v53;
      }

      else
      {

        v32 = a3;
        v28 = v52;
      }

      *&v55 = v28;
      *(&v55 + 1) = v6;
      *v56 = v7;
      *&v56[8] = v8;
      *&v56[16] = v9;
      v56[24] = 1;
      outlined copy of NetworkConnectionError(v28, v6, v7, v8, v9);
      v32(&v55);

      outlined consume of Result<(), NetworkConnectionError>(v55, *(&v55 + 1), *v56, *&v56[8], *&v56[16], v56[24]);
    }

    else
    {
      v33 = *(v11 + 1520);
      *(v11 + 1520) = 2;
      v34 = *(v11 + 1528);
      *(v11 + 1528) = 2;
      outlined consume of ConnectionProviderState(v33, v34);
      if (one-time initialization token for siriNetwork != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      __swift_project_value_buffer(v35, static Logger.siriNetwork);

      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = a3;
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *&v55 = v40;
        *v39 = 136315394;
        v41 = *v11;
        v42 = _typeName(_:qualified:)();
        v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &v55);

        *(v39 + 4) = v44;
        *(v39 + 12) = 2080;
        v45 = NetworkConnectionProvider.connectionIdentifier.getter();
        v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, &v55);

        *(v39 + 14) = v47;
        _os_log_impl(&dword_223515000, v36, v37, "Provider - %s [%s]: Connection ready.", v39, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DE38F0](v40, -1, -1);
        v48 = v39;
        a3 = v38;
        MEMORY[0x223DE38F0](v48, -1, -1);
      }

      v49 = *(a1 + 16);
      v55 = *a1;
      *v56 = v49;
      *&v56[9] = *(a1 + 25);
      a3(&v55);
    }
  }
}

{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v51 = a3;
    specialized ConnectionProviderProtocol.cancelOpenTimer()();
    specialized ConnectionProviderProtocol.cancelOpenSlowTimer()();
    if (*(a1 + 40))
    {
      lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
      v12 = swift_allocError();
      *v13 = v5;
      v13[1] = v6;
      v13[2] = v7;
      v13[3] = v8;
      v13[4] = v9;
      v14 = *(v11 + 1536);
      *(v11 + 1536) = v12;
      v15 = *(v11 + 1544);
      *(v11 + 1544) = 1;
      v50 = v5;
      outlined copy of NetworkConnectionError(v5, v6, v7, v8, v9);
      outlined consume of ConnectionProviderState(v14, v15);
      if (one-time initialization token for siriNetwork != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      __swift_project_value_buffer(v16, static Logger.siriNetwork);

      outlined init with copy of NetworkConnectionProtocol?(a1, &v53, &_ss6ResultOyyt11SiriNetwork0C15ConnectionErrorOGMd, &_ss6ResultOyyt11SiriNetwork0C15ConnectionErrorOGMR);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();

      outlined destroy of NetworkConnectionProtocol?(a1, &_ss6ResultOyyt11SiriNetwork0C15ConnectionErrorOGMd, &_ss6ResultOyyt11SiriNetwork0C15ConnectionErrorOGMR);
      v49 = v18;
      v19 = v18;
      v20 = v17;
      if (os_log_type_enabled(v17, v19))
      {
        v21 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v52 = v48;
        *v21 = 136315650;
        v22 = *v11;
        v23 = _typeName(_:qualified:)();
        v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v52);

        *(v21 + 4) = v25;
        *(v21 + 12) = 2080;
        v26 = *(v11 + 16);
        v27 = *(v11 + 24);

        v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v52);

        *(v21 + 14) = v28;
        *(v21 + 22) = 2080;
        v29 = v50;
        *&v53 = v50;
        *(&v53 + 1) = v6;
        *v54 = v7;
        *&v54[8] = v8;
        *&v54[16] = v9;
        outlined copy of NetworkConnectionError(v50, v6, v7, v8, v9);
        v30 = String.init<A>(describing:)();
        v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v52);

        *(v21 + 24) = v32;
        _os_log_impl(&dword_223515000, v20, v49, "Provider - %s [%s]: Open Completion error. %s", v21, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x223DE38F0](v48, -1, -1);
        MEMORY[0x223DE38F0](v21, -1, -1);
      }

      else
      {

        v29 = v50;
      }

      *&v53 = v29;
      *(&v53 + 1) = v6;
      *v54 = v7;
      *&v54[8] = v8;
      *&v54[16] = v9;
      v54[24] = 1;
      outlined copy of NetworkConnectionError(v29, v6, v7, v8, v9);
      v51(&v53);

      outlined consume of Result<(), NetworkConnectionError>(v53, *(&v53 + 1), *v54, *&v54[8], *&v54[16], v54[24]);
    }

    else
    {
      v33 = *(v11 + 1536);
      *(v11 + 1536) = 2;
      v34 = *(v11 + 1544);
      *(v11 + 1544) = 2;
      outlined consume of ConnectionProviderState(v33, v34);
      if (one-time initialization token for siriNetwork != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      __swift_project_value_buffer(v35, static Logger.siriNetwork);

      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *&v53 = v39;
        *v38 = 136315394;
        v40 = *v11;
        v41 = _typeName(_:qualified:)();
        v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, &v53);

        *(v38 + 4) = v43;
        *(v38 + 12) = 2080;
        v44 = *(v11 + 16);
        v45 = *(v11 + 24);

        v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, &v53);

        *(v38 + 14) = v46;
        _os_log_impl(&dword_223515000, v36, v37, "Provider - %s [%s]: Connection ready.", v38, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DE38F0](v39, -1, -1);
        MEMORY[0x223DE38F0](v38, -1, -1);
      }

      v47 = *(a1 + 16);
      v53 = *a1;
      *v54 = v47;
      *&v54[9] = *(a1 + 25);
      v51(&v53);
    }
  }
}

void specialized closure #2 in BackgroundConnection.start(proposedFallbackMethod:allowFallbackToNewMethod:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v74 = *a1;
  v13 = *(a1 + 2);
  v12 = *(a1 + 3);
  v14 = *(a1 + 4);
  v15 = *(a1 + 40);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    *&v70 = v13;
    *(&v70 + 1) = v12;
    if (one-time initialization token for connectionOpen != -1)
    {
      swift_once();
    }

    siri_kdebug_trace(static Constants.Signposts.connectionOpen);
    v18 = *(v17 + 1080);
    if (v18 && (v19 = *(v17 + 1088), v20 = swift_getObjectType(), v18 == a3))
    {
      if (v15)
      {
        v25 = *(&v74 + 1);
        v26 = v74;
        v80 = v74;
        v27 = *(&v70 + 1);
        v81 = v70;
        v82 = v14;
        if (AFDeviceSupportsSiriUOD() && (*(&v70 + 1) & 0xF000000000000000) == 0x1000000000000000)
        {
          if (one-time initialization token for siriNetwork != -1)
          {
            swift_once();
          }

          v28 = type metadata accessor for Logger();
          __swift_project_value_buffer(v28, static Logger.siriNetwork);
          outlined copy of NetworkConnectionError(v74, *(&v74 + 1), v70, *(&v70 + 1), v14);
          v29 = Logger.logObject.getter();
          v30 = static os_log_type_t.error.getter();
          outlined consume of Result<(), NetworkConnectionError>(v74, *(&v74 + 1), v70, *(&v70 + 1), v14, 1);
          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            v32 = swift_slowAlloc();
            *v31 = 138412290;
            lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
            swift_allocError();
            v33 = v82;
            v34 = v81;
            *v35 = v80;
            *(v35 + 16) = v34;
            *(v35 + 32) = v33;
            outlined copy of NetworkConnectionError(v74, *(&v74 + 1), v70, *(&v70 + 1), v14);
            v26 = v74;
            v36 = _swift_stdlib_bridgeErrorToNSError();
            *(v31 + 4) = v36;
            *v32 = v36;
            _os_log_impl(&dword_223515000, v29, v30, "Background Connection - Provider: Connection failed. Error: (%@), but device support UOD.", v31, 0xCu);
            outlined destroy of NetworkConnectionProtocol?(v32, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            v37 = v32;
            v25 = *(&v74 + 1);
            MEMORY[0x223DE38F0](v37, -1, -1);
            v38 = v31;
            v27 = *(&v70 + 1);
            MEMORY[0x223DE38F0](v38, -1, -1);
          }

          lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
          v39 = swift_allocError();
          v40 = v82;
          v41 = v81;
          *v42 = v80;
          *(v42 + 16) = v41;
          *(v42 + 32) = v40;
          outlined copy of NetworkConnectionError(v26, v25, v70, v27, v14);
          BackgroundConnection.didEncounterError(_:)();

          *(v17 + 1187) = 0;
        }

        else
        {
          if (*(v17 + 1080))
          {
            v53 = *(v17 + 1088);
            v54 = *(v17 + 1080);
            ObjectType = swift_getObjectType();
            v56 = *(v53 + 184);
            swift_unknownObjectRetain();
            v57 = ObjectType;
            v27 = *(&v70 + 1);
            v56(0, 0, v57, v53);
            v25 = *(&v74 + 1);
            v26 = v74;
            swift_unknownObjectRelease();
          }

          if (one-time initialization token for siriNetwork != -1)
          {
            swift_once();
          }

          v58 = type metadata accessor for Logger();
          __swift_project_value_buffer(v58, static Logger.siriNetwork);

          outlined copy of Result<(), NetworkConnectionError>(v26, v25, v70, v27, v14, 1);

          v59 = Logger.logObject.getter();
          v60 = static os_log_type_t.default.getter();
          outlined consume of Result<(), NetworkConnectionError>(v26, v25, v70, v27, v14, 1);
          if (os_log_type_enabled(v59, v60))
          {
            v61 = swift_slowAlloc();
            v73 = swift_slowAlloc();
            v76 = v73;
            *v61 = 136315394;
            v77 = v80;
            v78 = v81;
            v79 = v82;
            outlined copy of NetworkConnectionError(v26, v25, v70, *(&v70 + 1), v14);
            v62 = String.init<A>(describing:)();
            v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, &v76);

            *(v61 + 4) = v64;
            *(v61 + 12) = 1024;
            v65 = *(v17 + 1186);

            *(v61 + 14) = v65;

            _os_log_impl(&dword_223515000, v59, v60, "Background Connection - Provider. Connection failed. Error: %s. Connection was Cancelled: %{BOOL}d", v61, 0x12u);
            __swift_destroy_boxed_opaque_existential_0(v73);
            MEMORY[0x223DE38F0](v73, -1, -1);
            MEMORY[0x223DE38F0](v61, -1, -1);
          }

          else
          {
          }

          if ((*(v17 + 1186) & 1) == 0)
          {
            lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
            v66 = swift_allocError();
            v67 = v82;
            v68 = v81;
            *v69 = v80;
            *(v69 + 16) = v68;
            *(v69 + 32) = v67;
            swift_allocObject();
            swift_beginAccess();
            swift_weakLoadStrong();
            swift_weakInit();
            outlined copy of NetworkConnectionError(v74, *(&v74 + 1), v70, *(&v70 + 1), v14);

            outlined copy of Result<(), NetworkConnectionError>(v74, *(&v74 + 1), v70, *(&v70 + 1), v14, 1);

            outlined copy of Result<(), NetworkConnectionError>(v74, *(&v74 + 1), v70, *(&v70 + 1), v14, 1);

            specialized BackgroundConnection.fallbackToNextConnectionMethodWithError(_:with:)();

            outlined consume of Result<(), NetworkConnectionError>(v74, *(&v74 + 1), v70, *(&v70 + 1), v14, 1);

            return;
          }
        }
      }

      else
      {
        v75 = v20;
        v43 = swift_getObjectType();
        v44 = *(v19 + 184);
        swift_unknownObjectRetain();
        v44(0, 0, v43, v19);
        swift_unknownObjectRelease();
        if (one-time initialization token for siriNetwork != -1)
        {
          swift_once();
        }

        v45 = type metadata accessor for Logger();
        __swift_project_value_buffer(v45, static Logger.siriNetwork);
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          *v48 = 0;
          _os_log_impl(&dword_223515000, v46, v47, "Background Connection - Provider. Connection ready.", v48, 2u);
          MEMORY[0x223DE38F0](v48, -1, -1);
        }

        swift_beginAccess();
        outlined init with copy of RPCOspreyConnectionProtocol(a5 + 16, &v80);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork21CommunicationProtocol_pMd, _s11SiriNetwork21CommunicationProtocol_pMR);
        type metadata accessor for CommunicationProtocolAce();
        if (swift_dynamicCast())
        {
          v49 = (*(a4 + 552))(v75, a4);
          v50 = 5.0;
          if ((v49 & 1) == 0)
          {
            v50 = 7.0;
            if (*(v17 + 1136) == 3)
            {
              v50 = -1.0;
              if ((*(a6 + 128) & 1) == 0)
              {
                v50 = *(a6 + 120);
              }
            }
          }

          CommunicationProtocolAce.scheduleAceHeaderTimeout(withInterval:)(v50);
        }

        swift_beginAccess();
        outlined init with copy of MessageCenterBrowserProtocol?(v17 + 1096, &v80, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
        if (*(&v81 + 1))
        {
          outlined init with copy of RPCOspreyConnectionProtocol(&v80, &v77);
          outlined destroy of NetworkConnectionProtocol?(&v80, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
          v51 = *(&v78 + 1);
          v52 = v79;
          __swift_project_boxed_opaque_existential_1(&v77, *(&v78 + 1));
          v52[13](a7, a8, *(v17 + 153), v51, v52);
          __swift_destroy_boxed_opaque_existential_0(&v77);
        }

        else
        {
          outlined destroy of NetworkConnectionProtocol?(&v80, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
        }

        BackgroundConnection.setupReadHandlerOnProvider()();
        BackgroundConnection.networkProviderDidOpen()();
      }
    }

    else
    {
      if (one-time initialization token for siriNetwork != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      __swift_project_value_buffer(v21, static Logger.siriNetwork);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_223515000, v22, v23, "Background Connection - Provider. Connection open ignored for stale connection.", v24, 2u);
        MEMORY[0x223DE38F0](v24, -1, -1);
      }
    }
  }
}

uint64_t protocol witness for ConnectionProviderProtocol.openCompletion.setter in conformance NetworkConnectionProvider(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 2064);
  v4 = *(v2 + 2072);
  *(v2 + 2064) = a1;
  *(v2 + 2072) = a2;
  return outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v3);
}

Swift::Void __swiftcall CommunicationProtocolAce.scheduleAceHeaderTimeout(withInterval:)(Swift::Double withInterval)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchTime();
  v5 = OUTLINED_FUNCTION_0_0(v4);
  v86 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5();
  v94 = v9;
  OUTLINED_FUNCTION_26_2();
  MEMORY[0x28223BE20](v10);
  v12 = &v78 - v11;
  v93 = type metadata accessor for DispatchWorkItemFlags();
  v13 = OUTLINED_FUNCTION_0_0(v93);
  v91 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_0_1();
  v88 = v18 - v17;
  OUTLINED_FUNCTION_31();
  v89 = type metadata accessor for DispatchQoS();
  v19 = OUTLINED_FUNCTION_0_0(v89);
  v87 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_0_1();
  v85 = v24 - v23;
  OUTLINED_FUNCTION_31();
  v25 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v26 = OUTLINED_FUNCTION_0_0(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_0_1();
  v33 = v32 - v31;
  v92 = type metadata accessor for DispatchTimeInterval();
  v34 = OUTLINED_FUNCTION_0_0(v92);
  v90 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_5();
  v84 = v38;
  OUTLINED_FUNCTION_26_2();
  MEMORY[0x28223BE20](v39);
  v41 = (&v78 - v40);
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_58(v42, static Logger.siriNetwork);
  v43 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  v44 = OUTLINED_FUNCTION_16_0();
  if (os_log_type_enabled(v44, v45))
  {
    OUTLINED_FUNCTION_6_5();
    v46 = swift_slowAlloc();
    *v46 = 134217984;
    *(v46 + 4) = withInterval;
    OUTLINED_FUNCTION_6_0();
    _os_log_impl(v47, v48, v49, v50, v51, 0xCu);
    v52 = OUTLINED_FUNCTION_1_2();
    MEMORY[0x223DE38F0](v52);
  }

  if (*(v2 + 192))
  {
    CommunicationProtocolAce.cancelAceHeaderTimeoutTimer()();
  }

  if (withInterval > 0.0)
  {
    v83 = v41;
    Double.dispatchTimeInterval.getter(v41, withInterval);
    type metadata accessor for CTServiceDescriptor(0, &lazy cache variable for type metadata for OS_dispatch_source, 0x277D85CA0);
    aBlock[0] = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_30_3();
    lazy protocol witness table accessor for type OS_dispatch_source.TimerFlags and conformance OS_dispatch_source.TimerFlags(v53, v54);
    v81 = v12;
    v55 = v86;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMd, &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMR);
    v82 = v4;
    v56 = v2;
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_source.TimerFlags] and conformance [A], &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMd, &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v57 = *(v2 + 32);
    v80 = v56;
    v58 = v57;
    v59 = static OS_dispatch_source.makeTimerSource(flags:queue:)();

    (*(v28 + 8))(v33, v25);
    v60 = v59;
    ObjectType = swift_getObjectType();
    OUTLINED_FUNCTION_7_1();
    v62 = swift_allocObject();
    swift_weakInit();
    OUTLINED_FUNCTION_109();
    v63 = swift_allocObject();
    *(v63 + 16) = v59;
    *(v63 + 24) = v62;
    *(v63 + 32) = withInterval;
    aBlock[4] = partial apply for closure #1 in CommunicationProtocolAce.scheduleAceHeaderTimeout(withInterval:);
    aBlock[5] = v63;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_11;
    v64 = _Block_copy(aBlock);
    v79 = v60;
    swift_unknownObjectRetain();

    v65 = v85;
    static DispatchQoS.unspecified.getter();
    v66 = v88;
    default argument 1 of OS_dispatch_source.setEventHandler(qos:flags:handler:)();
    OS_dispatch_source.setEventHandler(qos:flags:handler:)();
    _Block_release(v64);
    (*(v91 + 8))(v66, v93);
    (*(v87 + 8))(v65, v89);

    v67 = v94;
    static DispatchTime.now()();
    v68 = v81;
    v69 = v83;
    DispatchTime.advanced(by:)();
    v70 = *(v55 + 8);
    v71 = v82;
    v70(v67, v82);
    v72 = v84;
    default argument 2 of OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)(v84);
    v73 = v79;
    MEMORY[0x223DE2510](v68, v69, v72, ObjectType);
    v74 = *(v90 + 8);
    v75 = v72;
    v76 = v92;
    v74(v75, v92);
    v70(v68, v71);
    OS_dispatch_source.resume()();
    v74(v69, v76);
    v77 = *(v80 + 192);
    *(v80 + 192) = v73;
    swift_unknownObjectRelease();
  }
}

void CommunicationProtocolAce.updateBuffers(forInitialPayload:bufferedLength:forceReconnect:)()
{
  OUTLINED_FUNCTION_46();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A4DataVSgMd, &_s8Dispatch0A4DataVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v71 - v11;
  v2[13] = CFHTTPMessageCreateEmpty(0, 0);
  if (v8)
  {
    static DispatchData._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = type metadata accessor for DispatchData();
    v14 = 0;
  }

  else
  {
    v13 = type metadata accessor for DispatchData();
    v14 = 1;
  }

  __swift_storeEnumTagSinglePayload(v12, v14, 1, v13);
  Data.init(copying:)(v12);
  OUTLINED_FUNCTION_71_0();
  if (v15 >> 60 == 15)
  {
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v16, static Logger.siriNetwork);
    v17 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    v18 = OUTLINED_FUNCTION_10_4();
    if (os_log_type_enabled(v18, v19))
    {
      OUTLINED_FUNCTION_17_5();
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_223515000, v17, v6, "CommunicationProtocol - Ace: No initial payload", v20, 2u);
      v21 = OUTLINED_FUNCTION_7_2();
      MEMORY[0x223DE38F0](v21);
    }

    CommunicationProtocolAce.prepareProviderHeader(withForceReconnect:)(v4 & 1);
    v22 = OUTLINED_FUNCTION_21_4();
    outlined copy of Data?(v22, v23);
    v24 = 0;
  }

  else
  {
    v25 = OUTLINED_FUNCTION_21_4();
    outlined copy of Data._Representation(v25, v26);
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v27, static Logger.siriNetwork);
    v28 = OUTLINED_FUNCTION_21_4();
    outlined copy of Data?(v28, v29);

    v30 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    v31 = OUTLINED_FUNCTION_16_0();
    if (os_log_type_enabled(v31, v32))
    {
      OUTLINED_FUNCTION_30();
      v33 = swift_slowAlloc();
      *v33 = 134218240;
      v34 = v33;
      v35 = 0;
      switch(v1 >> 62)
      {
        case 1uLL:
          LODWORD(v35) = HIDWORD(v8) - v8;
          if (__OFSUB__(HIDWORD(v8), v8))
          {
            __break(1u);
LABEL_32:
            __break(1u);
            JUMPOUT(0x22355BCF4);
          }

          v35 = v35;
LABEL_19:
          *(v33 + 4) = v35;
          v41 = OUTLINED_FUNCTION_21_4();
          outlined consume of Data?(v41, v42);
          *(v34 + 12) = 2048;
          OUTLINED_FUNCTION_40_1();
          v43 = 0;
          v44 = v2[10];
          if (v44 >> 60 != 15)
          {
            v45 = v2[9];
            outlined copy of Data._Representation(v45, v2[10]);
            v43 = MEMORY[0x223DE13E0](v45, v44);
            outlined consume of Data?(v45, v44);
          }

          *(v34 + 14) = v43;

          OUTLINED_FUNCTION_55_0();
          _os_log_impl(v46, v47, v48, v49, v50, 0x16u);
          v51 = OUTLINED_FUNCTION_7_2();
          MEMORY[0x223DE38F0](v51);
          break;
        case 2uLL:
          v39 = *(v8 + 16);
          v38 = *(v8 + 24);
          v40 = __OFSUB__(v38, v39);
          v35 = v38 - v39;
          if (!v40)
          {
            goto LABEL_19;
          }

          goto LABEL_32;
        case 3uLL:
          goto LABEL_19;
        default:
          v35 = BYTE6(v1);
          goto LABEL_19;
      }
    }

    else
    {

      v36 = OUTLINED_FUNCTION_21_4();
      outlined consume of Data?(v36, v37);
    }

    OUTLINED_FUNCTION_40_1();
    if (v2[41] >> 60 != 15)
    {
      v52 = CommunicationProtocolAce.safetyNetBuffer.modify();
      OUTLINED_FUNCTION_24_1(v52, v53);
      if (!(!v55 & v54))
      {
        OUTLINED_FUNCTION_21_4();
        Data.append(_:)();
      }

      (v52)(&v72, 0);
    }

    OUTLINED_FUNCTION_25_2();
    swift_beginAccess();
    v56 = v2[9];
    v57 = v2[10];
    if (v57 >> 60 == 15)
    {
      v58 = OUTLINED_FUNCTION_21_4();
      outlined consume of Data?(v58, v59);
    }

    else
    {
      outlined copy of Data._Representation(v2[9], v2[10]);
      v60 = Data.truncateBeginning(removeSize:)(v6, v56, v57);
      v62 = v61;
      v63 = OUTLINED_FUNCTION_21_4();
      outlined consume of Data?(v63, v64);
      outlined consume of Data?(v56, v57);
      v56 = v60;
      v57 = v62;
    }

    v65 = v2[9];
    v66 = v2[10];
    v2[9] = v56;
    v2[10] = v57;
    outlined consume of Data?(v65, v66);
    v67 = OUTLINED_FUNCTION_21_4();
    v24 = !specialized Collection.isEmpty.getter(v67, v68);
  }

  CommunicationProtocolAce.initializeBufferedGeneralOutputData(hasInitialPayload:)(v24);
  v69 = OUTLINED_FUNCTION_21_4();
  outlined consume of Data?(v69, v70);
  OUTLINED_FUNCTION_47();
}

uint64_t Data.init(copying:)(uint64_t a1)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A4DataVSgMd, &_s8Dispatch0A4DataVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v5 = &v15[-v4];
  v6 = type metadata accessor for DispatchData();
  v7 = OUTLINED_FUNCTION_0_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  outlined init with copy of DispatchData?(a1, v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    outlined destroy of DispatchData?(a1);
    outlined destroy of DispatchData?(v5);
    return 0;
  }

  else
  {
    (*(v9 + 32))(v1, v5, v6);
    v13 = DispatchData.count.getter();
    v16 = MEMORY[0x223DE13D0](v13);
    v17 = v14;
    MEMORY[0x28223BE20](v16);
    *&v15[-16] = v1;
    specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(partial apply for closure #1 in Data.init(copying:));
    outlined destroy of DispatchData?(a1);
    (*(v9 + 8))(v1, v6);
    return v16;
  }
}

uint64_t outlined init with copy of DispatchData?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A4DataVSgMd, &_s8Dispatch0A4DataVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of DispatchData?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A4DataVSgMd, &_s8Dispatch0A4DataVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_68_2()
{
}

void OUTLINED_FUNCTION_68_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t CommunicationProtocolAce.prepareProviderHeader(withForceReconnect:)(char a1)
{
  OUTLINED_FUNCTION_25_2();
  swift_beginAccess();
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  *(v1 + 56) = xmmword_2235EF6F0;
  outlined consume of Data._Representation(v4, v5);
  result = CommunicationProtocolAce.aceDelegate.getter();
  if (result)
  {
    BackgroundConnection.providerHeaderData(forceReconnect:)(a1 & 1);
    OUTLINED_FUNCTION_71_0();
    result = swift_unknownObjectRelease();
    if (v2 >> 60 != 15)
    {
      if (one-time initialization token for siriNetwork != -1)
      {
        OUTLINED_FUNCTION_0_8();
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_58(v7, static Logger.siriNetwork);
      v8 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      v9 = OUTLINED_FUNCTION_10_4();
      if (os_log_type_enabled(v9, v10))
      {
        OUTLINED_FUNCTION_17_5();
        v11 = swift_slowAlloc();
        OUTLINED_FUNCTION_51_1(v11);
        OUTLINED_FUNCTION_9_8();
        _os_log_impl(v12, v13, v14, v15, v16, v17);
        v18 = OUTLINED_FUNCTION_2_0();
        MEMORY[0x223DE38F0](v18);
      }

      OUTLINED_FUNCTION_27_1();
      swift_beginAccess();
      OUTLINED_FUNCTION_21_4();
      Data.append(_:)();
      swift_endAccess();
      v19 = OUTLINED_FUNCTION_21_4();
      return outlined consume of Data?(v19, v20);
    }
  }

  return result;
}

uint64_t BackgroundConnection.providerHeaderData(forceReconnect:)(char a1)
{
  if (!*(v1 + 1080))
  {
    return 0;
  }

  v4 = OUTLINED_FUNCTION_134();
  return (*(v2 + 560))(a1 & 1, v4, v2);
}

uint64_t CommunicationProtocolAce.initializeBufferedGeneralOutputData(hasInitialPayload:)(char a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_25_2();
  swift_beginAccess();
  v4 = v1[10];
  if (v4 >> 60 == 15)
  {
    v5 = v1[9];
    *(v1 + 9) = xmmword_2235EF6F0;
    v6 = outlined consume of Data?(v5, v4);
    if ((a1 & 1) == 0)
    {
      OUTLINED_FUNCTION_61();
      if (!v7)
      {
        OUTLINED_FUNCTION_0_8();
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, static Logger.siriNetwork);
      v9 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      v10 = OUTLINED_FUNCTION_10_4();
      if (os_log_type_enabled(v10, v11))
      {
        OUTLINED_FUNCTION_17_5();
        v12 = swift_slowAlloc();
        OUTLINED_FUNCTION_51_1(v12);
        OUTLINED_FUNCTION_9_8();
        _os_log_impl(v13, v14, v15, v16, v17, v18);
        v19 = OUTLINED_FUNCTION_2_0();
        MEMORY[0x223DE38F0](v19);
      }

      CommunicationProtocolAce.httpHeaderData()();
      OUTLINED_FUNCTION_31_2();
      if (!v7 & v22)
      {
        v23 = Logger.logObject.getter();
        static os_log_type_t.error.getter();
        v24 = OUTLINED_FUNCTION_16_0();
        if (os_log_type_enabled(v24, v25))
        {
          OUTLINED_FUNCTION_17_5();
          v26 = swift_slowAlloc();
          OUTLINED_FUNCTION_40_2(v26);
          OUTLINED_FUNCTION_44_2();
          _os_log_impl(v27, v28, v29, v30, v31, v32);
          v33 = OUTLINED_FUNCTION_1_2();
          MEMORY[0x223DE38F0](v33);
        }
      }

      else
      {
        v34 = v20;
        v35 = v21;
        CommunicationProtocolAce.bufferGeneralData(data:)(v20, v21);
        v6 = outlined consume of Data?(v34, v35);
      }
    }

    v36 = v2[42];
    MEMORY[0x28223BE20](v6);
    os_unfair_lock_lock(v36 + 4);
    partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)();
    os_unfair_lock_unlock(v36 + 4);
    if ((a1 & 1) == 0)
    {
      OUTLINED_FUNCTION_61();
      if (!v7)
      {
        OUTLINED_FUNCTION_0_8();
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_58(v37, static Logger.siriNetwork);
      v38 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      v39 = OUTLINED_FUNCTION_16_0();
      if (os_log_type_enabled(v39, v40))
      {
        OUTLINED_FUNCTION_17_5();
        v41 = swift_slowAlloc();
        OUTLINED_FUNCTION_11_7(v41);
        OUTLINED_FUNCTION_15_0();
        _os_log_impl(v42, v43, v44, v45, v46, 2u);
        v47 = OUTLINED_FUNCTION_6_15();
        MEMORY[0x223DE38F0](v47);
      }

      static AceStreamHeader.createAceStreamHeaderData(withMagic:compressionType:)(&outlined read-only object #0 of one-time initialization function for aceHeaderMagic, 1);
      OUTLINED_FUNCTION_71_0();
      CommunicationProtocolAce.bufferGeneralData(data:)(v48, v49);
      v50 = OUTLINED_FUNCTION_21_4();
      outlined consume of Data._Representation(v50, v51);
    }
  }

  OUTLINED_FUNCTION_25_2();
  result = swift_beginAccess();
  v53 = v2[12];
  if (v53 >> 60 == 15)
  {
    v54 = v2[11];
    *(v2 + 11) = xmmword_2235EF6F0;
    return outlined consume of Data?(v54, v53);
  }

  return result;
}

void CommunicationProtocolAce.httpHeaderData()()
{
  OUTLINED_FUNCTION_46();
  v1 = type metadata accessor for URL.DirectoryHint();
  v2 = OUTLINED_FUNCTION_0_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_1();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v31[-1] - v12;
  v14 = type metadata accessor for URL();
  v15 = OUTLINED_FUNCTION_0_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v15);
  v22 = &v31[-1] - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v31[-1] - v23;
  v30 = v0;
  v25 = CommunicationProtocolAce.aceDelegate.getter();
  if (v25)
  {
    memcpy(v32, (v25 + 40), 0x204uLL);
    outlined init with copy of ConnectionConfiguration(v32, v31);
    swift_unknownObjectRelease();
    memcpy(v31, v32, 0x204uLL);
    ConnectionConfiguration.resolvedURL.getter(v13);
    if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
    {
      outlined destroy of NetworkConnectionProtocol?(v13, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      outlined destroy of ConnectionConfiguration(v32);
    }

    else
    {
      (*(v17 + 32))(v24, v13, v14);
      v31[0] = 1701011759;
      v31[1] = 0xE400000000000000;
      (*(v4 + 104))(v9, *MEMORY[0x277CC91D8], v1);
      lazy protocol witness table accessor for type String and conformance String();
      URL.appending<A>(path:directoryHint:)();
      v26 = *(v4 + 8);
      v27 = OUTLINED_FUNCTION_26();
      v28(v27);
      CommunicationProtocolAce.headerData(forURL:aceHost:languageCode:syncAssistantId:)();
      outlined destroy of ConnectionConfiguration(v32);
      v29 = *(v17 + 8);
      v29(v22, v14);
      v29(v24, v14);
    }
  }

  OUTLINED_FUNCTION_58_0();
  OUTLINED_FUNCTION_47();
}

uint64_t ConnectionConfiguration.resolvedURL.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
  OUTLINED_FUNCTION_11_1(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_14_8();
  v9 = OUTLINED_FUNCTION_0_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_0_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_11_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v20);
  v22 = &v40 - v21;
  v23 = type metadata accessor for URL();
  v24 = OUTLINED_FUNCTION_0_0(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_0_1();
  v31 = v30 - v29;
  v32 = *(v1 + 408);
  if (v32 != 1)
  {
    OUTLINED_FUNCTION_7_24(v32);
    ConnectionPolicyRoute.routeHost.getter();
    if (v33)
    {
      URL.init(string:)();

      if (__swift_getEnumTagSinglePayload(v22, 1, v23) == 1)
      {
        v34 = &_s10Foundation3URLVSgMd;
        v35 = &_s10Foundation3URLVSgMR;
        v36 = v22;
      }

      else
      {
        (*(v26 + 32))(v31, v22, v23);
        URLComponents.init(url:resolvingAgainstBaseURL:)();
        v37 = OUTLINED_FUNCTION_8_23();
        if (__swift_getEnumTagSinglePayload(v37, v38, v8) != 1)
        {
          (*(v11 + 32))(v16, v2, v8);
          URLComponents.url.getter();
          (*(v11 + 8))(v16, v8);
          return (*(v26 + 8))(v31, v23);
        }

        (*(v26 + 8))(v31, v23);
        v34 = &_s10Foundation13URLComponentsVSgMd;
        v35 = &_s10Foundation13URLComponentsVSgMR;
        v36 = v2;
      }

      outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v36, v34, v35);
    }
  }

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v23);
}

void CommunicationProtocolAce.headerData(forURL:aceHost:languageCode:syncAssistantId:)()
{
  OUTLINED_FUNCTION_46();
  v113 = v0;
  v2 = v1;
  object = v3;
  v6 = v5;
  v8 = v7;
  v9 = CommunicationProtocolAce.aceDelegate.getter();
  if (v9)
  {
    memcpy(__dst, (v9 + 40), 0x204uLL);
    outlined init with copy of ConnectionConfiguration(__dst, &v117);
    if (one-time initialization token for httpMethodACE != -1)
    {
      goto LABEL_82;
    }

    while (1)
    {
      v10 = static ConnectionConfigurationConstants.httpMethodACE;
      v109 = v2;
      if (static ConnectionConfigurationConstants.httpMethodACE)
      {
        v11 = static ConnectionConfigurationConstants.httpMethodACE;
      }

      else
      {
        v11 = MEMORY[0x223DE2070](4539201, 0xE300000000000000);
        v10 = 0;
      }

      v12 = v10;
      URL._bridgeToObjectiveC()(v13);
      v15 = v14;
      Request = CFHTTPMessageCreateRequest(0, v11, v14, *MEMORY[0x277CBACF8]);

      v17 = URL.host(percentEncoded:)(1);
      if (v17.value._object)
      {
        countAndFlagsBits = v17.value._countAndFlagsBits;
      }

      else
      {
        countAndFlagsBits = 0;
      }

      v19 = MEMORY[0x223DE2070](1953722184, 0xE400000000000000);
      v20 = OUTLINED_FUNCTION_58_0();
      MEMORY[0x223DE2070](v20);
      OUTLINED_FUNCTION_52();

      CFHTTPMessageSetHeaderFieldValue(Request, v19, countAndFlagsBits);

      if (__dst[20])
      {
        v21 = __dst[19];

        v22 = OUTLINED_FUNCTION_58_0();
        MEMORY[0x223DE2070](v22);
        OUTLINED_FUNCTION_52();
      }

      else
      {
        v21 = 0;
      }

      v2 = [objc_opt_self() createUserAgentStringFromProductTypePrefix_];

      v23 = v2;
      if (!v2)
      {
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = MEMORY[0x223DE2070](v24);
      }

      v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v112 = v25;
      v26 = MEMORY[0x223DE2070](0x6567412D72657355, 0xEA0000000000746ELL);
      OUTLINED_FUNCTION_45_1(v26);

      if (v6)
      {
        v27 = MEMORY[0x223DE2070](0x6F482D6563412D58, 0xEA00000000007473);
        v28 = OUTLINED_FUNCTION_53();
        v29 = MEMORY[0x223DE2070](v28);
        OUTLINED_FUNCTION_19_2(v29);
      }

      v106 = v8;
      v108 = v6;
      if (object)
      {
        v30 = MEMORY[0x223DE2070](0x4C2D747065636341, 0xEF65676175676E61);
        v31 = OUTLINED_FUNCTION_26();
        v32 = MEMORY[0x223DE2070](v31);
        OUTLINED_FUNCTION_19_2(v32);
      }

      v8 = __dst;
      if (one-time initialization token for httpContentLengthACE != -1)
      {
        swift_once();
      }

      v33 = MEMORY[0x223DE2070](0x2D746E65746E6F43, 0xEE006874676E654CLL);
      OUTLINED_FUNCTION_45_1(v33);

      v110 = CFUUIDCreate(0);
      v34 = CFUUIDCreateString(0, v110);
      v35 = MEMORY[0x223DE2070](0xD000000000000016, 0x80000002235F7F50);
      v111 = v34;
      CFHTTPMessageSetHeaderFieldValue(Request, v35, v34);

      if (BYTE3(__dst[64]) == 1)
      {
        v36 = __dst[22];
        if (__dst[22])
        {
          v2 = __dst[21];

          v37 = MEMORY[0x223DE2070](0xD000000000000012, 0x80000002235F8040);
          MEMORY[0x223DE2070](v2, v36);
          OUTLINED_FUNCTION_72_0();

          CFHTTPMessageSetHeaderFieldValue(Request, v37, v2);
        }

        v35 = __dst[24];
        if (__dst[24])
        {
          v2 = __dst[23];

          v38 = MEMORY[0x223DE2070](0xD000000000000015, 0x80000002235F8020);
          MEMORY[0x223DE2070](v2, v35);
          OUTLINED_FUNCTION_72_0();

          CFHTTPMessageSetHeaderFieldValue(Request, v38, v2);
        }
      }

      if (!AFIsInternalInstall())
      {
        break;
      }

      if (BYTE2(__dst[64]) == 1)
      {
        MEMORY[0x223DE2070](0xD000000000000012, 0x80000002235F8000);
        OUTLINED_FUNCTION_46_1();
        OUTLINED_FUNCTION_19_2(v39);
      }

      v40 = [objc_opt_self() sharedPreferences];
      v41 = outlined bridged method (ob) of @objc AFPreferences.configOverrides()(v40);
      if (!v41)
      {
        v41 = Dictionary.init(dictionaryLiteral:)();
      }

      v42 = v41;
      v6 = 0;
      v44 = v41 + 64;
      v43 = *(v41 + 64);
      v45 = *(v41 + 32);
      OUTLINED_FUNCTION_49();
      v48 = v47 & v46;
      object = ((v49 + 63) >> 6);
      if ((v47 & v46) != 0)
      {
        do
        {
          v50 = v6;
LABEL_37:
          v51 = __clz(__rbit64(v48));
          v48 &= v48 - 1;
          v52 = (v50 << 10) | (16 * v51);
          v53 = (*(v42 + 48) + v52);
          v54 = *v53;
          v55 = v53[1];
          v56 = (*(v42 + 56) + v52);
          v8 = *v56;
          v57 = v56[1];

          v58 = OUTLINED_FUNCTION_21_4();
          v2 = MEMORY[0x223DE2070](v58);

          v59 = MEMORY[0x223DE2070](v8, v57);

          CFHTTPMessageSetHeaderFieldValue(Request, v2, v59);
        }

        while (v48);
      }

      while (1)
      {
        v50 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if (v50 >= object)
        {

          goto LABEL_40;
        }

        v48 = *(v44 + 8 * v50);
        ++v6;
        if (v48)
        {
          v6 = v50;
          goto LABEL_37;
        }
      }

LABEL_81:
      __break(1u);
LABEL_82:
      swift_once();
    }

LABEL_40:
    v2 = [objc_opt_self() featureFlags];
    v60 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = 0;
    v116 = v60;
    v61 = 1 << *(v60 + 32);
    v62 = -1;
    if (v61 < 64)
    {
      v62 = ~(-1 << v61);
    }

    v63 = v60 + 64;
    v64 = v62 & *(v60 + 64);
    v8 = ((v61 + 63) >> 6);
    v114 = *MEMORY[0x277CEF000];
    message = Request;
    while (v64)
    {
LABEL_48:
      v66 = __clz(__rbit64(v64));
      v64 &= v64 - 1;
      v67 = (v6 << 10) | (16 * v66);
      v68 = (*(v116 + 48) + v67);
      v70 = *v68;
      v69 = v68[1];
      v71 = (*(v116 + 56) + v67);
      v72 = *v71;
      v2 = v71[1];

      if ((AFIsInternalInstall() & 1) != 0 || (v73._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)(), object = v73._object, v74 = String.hasPrefix(_:)(v73), , !v74))
      {
        object = MEMORY[0x223DE2070](v70, v69);

        v75 = MEMORY[0x223DE2070](v72, v2);

        Request = message;
        CFHTTPMessageSetHeaderFieldValue(message, object, v75);
      }

      else
      {

        Request = message;
      }
    }

    while (1)
    {
      v65 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        goto LABEL_81;
      }

      if (v65 >= v8)
      {
        break;
      }

      v64 = *(v63 + 8 * v65);
      ++v6;
      if (v64)
      {
        v6 = v65;
        goto LABEL_48;
      }
    }

    if ((__dst[14] & 0x10000) != 0)
    {
      MEMORY[0x223DE2070](0xD000000000000020, 0x80000002235F7FD0);
      OUTLINED_FUNCTION_46_1();
      OUTLINED_FUNCTION_19_2(v76);
    }

    if (AFIsInternalInstall() && _AFPreferencesShowAllDialogVariantsEnabled())
    {
      MEMORY[0x223DE2070](0xD000000000000016, 0x80000002235F7FB0);
      OUTLINED_FUNCTION_46_1();
      OUTLINED_FUNCTION_19_2(v77);
    }

    if (v113)
    {
      v78 = MEMORY[0x223DE2070](0xD000000000000019, 0x80000002235F7F90);
      v79 = MEMORY[0x223DE2070](v109, v113);
      OUTLINED_FUNCTION_19_2(v79);
    }

    v80 = CFHTTPMessageCopyAllHeaderFields(Request);
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v81 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v81, static Logger.siriNetwork);
    v82 = v80;
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v83, v84))
    {
      OUTLINED_FUNCTION_6_5();
      v85 = swift_slowAlloc();
      OUTLINED_FUNCTION_28_3();
      v86 = swift_slowAlloc();
      *v85 = 138412290;
      *(v85 + 4) = v82;
      *v86 = v80;
      v87 = v82;
      OUTLINED_FUNCTION_18_5();
      _os_log_impl(v88, v89, v90, v91, v92, v93);
      outlined destroy of NetworkConnectionProtocol?(v86, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v94 = OUTLINED_FUNCTION_7_2();
      MEMORY[0x223DE38F0](v94);
      v95 = OUTLINED_FUNCTION_2_0();
      MEMORY[0x223DE38F0](v95);
    }

    if (v82)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v117 = 0;
        v96 = v82;
        static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();

        v84 = v117;
        if (v117)
        {
          v97 = OUTLINED_FUNCTION_68_1();
          BackgroundConnection.willStartConnection(with:)(v97);
        }
      }
    }

    v98 = AFDeviceRegionCode();
    if (v98)
    {
      v99 = v98;
      v100 = MEMORY[0x223DE2070](0xD000000000000014, 0x80000002235F7F70);
      OUTLINED_FUNCTION_45_1(v100);
    }

    v101 = CFHTTPMessageCopySerializedMessage(Request);
    v102 = v101;
    Data.init(fromCFData:)(v101);
    if (AFIsInternalInstall())
    {
      v103 = [objc_allocWithZone(MEMORY[0x277D58C18]) init];
      if (v103)
      {
        v104 = v103;
        outlined bridged method (mbnn) of @objc NETSchemaNETSessionConnectionHttpHeaderCreated.userAgent.setter(v107, v112, v103);
        if (v108)
        {
          v105 = MEMORY[0x223DE2070](v106);
        }

        else
        {
          v105 = 0;
        }

        [v104 setAceHost_];

        OUTLINED_FUNCTION_68_1();
        BackgroundConnection.logSessionConnectionHttpHeaderCreated(httpHeader:)();

        outlined destroy of ConnectionConfiguration(__dst);
        goto LABEL_78;
      }
    }

    else
    {
    }

    outlined destroy of ConnectionConfiguration(__dst);
LABEL_78:
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_47();
}

uint64_t OUTLINED_FUNCTION_64_1(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v2, v1, 1, a1);
}

uint64_t static SNUtilities.createUserAgentString(fromProductTypePrefix:)(uint64_t a1, uint64_t a2)
{
  v3 = AFProductType();
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2235F4D90;
  v8 = AFDeviceName();
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = MEMORY[0x277D837D0];
  *(v7 + 56) = MEMORY[0x277D837D0];
  v13 = lazy protocol witness table accessor for type String and conformance String();
  v14 = v13;
  *(v7 + 64) = v13;
  *(v7 + 32) = v9;
  *(v7 + 40) = v11;
  if (!a2)
  {
    *(v7 + 96) = v12;
    *(v7 + 104) = v13;
    goto LABEL_5;
  }

  v15 = specialized StringProtocol.appending<A>(_:)();
  *(v7 + 96) = v12;
  *(v7 + 104) = v14;
  if (!v16)
  {
LABEL_5:
    *(v7 + 72) = v4;
    *(v7 + 80) = v6;

    goto LABEL_6;
  }

  *(v7 + 72) = v15;
  *(v7 + 80) = v16;
LABEL_6:
  v17 = AFProductName();
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  *(v7 + 136) = v12;
  *(v7 + 144) = v14;
  *(v7 + 112) = v18;
  *(v7 + 120) = v20;
  v21 = AFProductVersion();
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  *(v7 + 176) = v12;
  *(v7 + 184) = v14;
  *(v7 + 152) = v22;
  *(v7 + 160) = v24;
  v25 = AFBuildVersion();
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  *(v7 + 216) = v12;
  *(v7 + 224) = v14;
  *(v7 + 192) = v26;
  *(v7 + 200) = v28;
  v29 = *MEMORY[0x277D47C38];
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v7 + 256) = v12;
  *(v7 + 264) = v14;
  *(v7 + 232) = v30;
  *(v7 + 240) = v31;
  v32 = String.init(format:_:)();

  return v32;
}

uint64_t OUTLINED_FUNCTION_42()
{
}

void OUTLINED_FUNCTION_42_0()
{

  JUMPOUT(0x223DE38F0);
}

uint64_t outlined bridged method (ob) of @objc AFPreferences.configOverrides()(void *a1)
{
  v2 = [a1 configOverrides];

  if (!v2)
  {
    return 0;
  }

  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t BackgroundConnection.willStartConnection(with:)()
{
  OUTLINED_FUNCTION_13_3();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v0(v1, v2, result);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t specialized Connection.willStartConnection(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v6 - 8);
  v7 = *(v23 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = lazy protocol witness table accessor for type BackgroundConnection and conformance BackgroundConnection(&lazy protocol witness table cache variable for type BackgroundConnection and conformance BackgroundConnection, v15, type metadata accessor for BackgroundConnection);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = result;
    result = swift_unknownObjectRelease();
    if (v18 == a3)
    {
      v22[1] = *(a3 + OBJC_IVAR___SNConnectionInternal_connectionQueue);
      v19 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v20 = swift_allocObject();
      v20[2] = v19;
      v20[3] = a1;
      v20[4] = v16;
      v20[5] = a2;
      aBlock[4] = partial apply for closure #1 in Connection.willStartConnection(_:with:);
      aBlock[5] = v20;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_159;
      v21 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      v24 = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type BackgroundConnection and conformance BackgroundConnection(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x223DE2460](0, v14, v9, v21);
      _Block_release(v21);
      (*(v23 + 8))(v9, v6);
      (*(v11 + 8))(v14, v10);
    }
  }

  return result;
}

const __CFData *Data.init(fromCFData:)(const __CFData *result)
{
  if (result)
  {
    v1 = result;
    if (CFDataGetBytePtr(result))
    {
      CFDataGetLength(v1);
      Data.append(_:count:)();
    }

    return 0;
  }

  return result;
}

void outlined bridged method (mbnn) of @objc NETSchemaNETSessionConnectionHttpHeaderCreated.userAgent.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x223DE2070]();

  [a3 setUserAgent_];
}

void OUTLINED_FUNCTION_62_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

void *OUTLINED_FUNCTION_62_3()
{

  return memcpy(&STACK[0x238], (v0 + 40), 0x204uLL);
}

void BackgroundConnection.logSessionConnectionHttpHeaderCreated(httpHeader:)()
{
  v1 = *(v0 + 1176);
  NetworkAnalytics.logSessionConnectionHttpHeaderCreated(_:)();
}

uint64_t ZlibDataCompressor.init()()
{
  v1 = swift_slowAlloc();
  *(v0 + 16) = 0u;
  *(v0 + 128) = v1;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  swift_beginAccess();
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  v2 = deflateInit_((v0 + 16), 9, "1.2.12", 112);
  swift_endAccess();
  if (v2)
  {

    return 0;
  }

  return v0;
}

uint64_t static AceStreamHeader.createAceStreamHeaderData(withMagic:compressionType:)(uint64_t a1, char a2)
{
  v4 = type metadata accessor for Data.Deallocator();
  v5 = OUTLINED_FUNCTION_0_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_1();
  v12 = v11 - v10;
  v13 = *(a1 + 16);
  v14 = swift_slowAlloc();
  memcpy(v14, (a1 + 32), v13);
  *(v14 + v13) = (a2 & 1) + 1;
  (*(v7 + 104))(v12, *MEMORY[0x277CC92A0], v4);
  return MEMORY[0x223DE1380](v14, v13 + 1, v12);
}

void BackgroundConnection.networkProviderDidOpen()()
{
  OUTLINED_FUNCTION_120_1();
  if (*(v0 + 1185))
  {
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v1, static Logger.siriNetwork);
    osloga = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(osloga, v2))
    {
      v3 = OUTLINED_FUNCTION_14();
      *v3 = 0;
      _os_log_impl(&dword_223515000, osloga, v2, "Background Connection - Provider. Provider ready received when it is already ready.", v3, 2u);
      OUTLINED_FUNCTION_2_2();
      MEMORY[0x223DE38F0]();
    }

    OUTLINED_FUNCTION_81_1();
  }

  else
  {
    v6 = v0;
    if (one-time initialization token for connectionOpened != -1)
    {
      swift_once();
    }

    siri_kdebug_trace(static Constants.Signposts.connectionOpened);
    *(v0 + 1185) = 1;
    *(v0 + 1188) = 1;
    v7 = [objc_allocWithZone(MEMORY[0x277CCAC38]) init];
    [v7 systemUptime];
    v9 = v8;

    *(v6 + 1208) = v9;
    OUTLINED_FUNCTION_40_1();
    outlined init with copy of MessageCenterBrowserProtocol?(v6 + 1096, __dst, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
    if (__dst[3])
    {
      outlined init with copy of RPCOspreyConnectionProtocol(__dst, v53);
      outlined destroy of NetworkConnectionProtocol?(__dst, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
      v10 = v53[3];
      v11 = v53[4];
      __swift_project_boxed_opaque_existential_1(v53, v53[3]);
      (*(v11 + 168))(v10, v11);
      __swift_destroy_boxed_opaque_existential_0(v53);
    }

    else
    {
      outlined destroy of NetworkConnectionProtocol?(__dst, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
    }

    v12 = *(v6 + 1208);
    v13 = *(v6 + 1200);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v21 = Strong;
      if (*(v6 + 1080))
      {
        v22 = v12 - v13;
        v23 = *(v6 + 1088);
        v24 = *(v6 + 1080);
        swift_getObjectType();
        v25 = *(v23 + 168);
        swift_unknownObjectRetain();
        v26 = OUTLINED_FUNCTION_0_36();
        v25(v26);
        v27 = v54[103];
        memcpy(__dst, (v6 + 40), 0x204uLL);
        v28 = __dst[50];
        v29 = __dst[51];
        if (__dst[51] == 1)
        {
          v30 = 0;
          v31 = 0;
        }

        else
        {

          v30 = v28;
          v31 = v29;
        }

        memcpy(v53, (v6 + 40), 0x190uLL);
        v53[50] = v28;
        v53[51] = v29;
        memcpy(v54, (v6 + 456), 0x64uLL);
        outlined init with copy of ConnectionConfiguration(__dst, v35);
        outlined destroy of ConnectionConfiguration(v53);
        specialized Connection.didOpenConnectionType(_:type:routeId:delay:)(v6, v27, v30, v31, v21, v22);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    BackgroundConnection.tryToWriteBufferedOutputData(with:)(0, 0, v15, v16, v17, v18, v19, v20, v32, oslog, v35[0], v35[1], v35[2], v35[3], v35[4], v35[5], v35[6], v35[7], v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);
    OUTLINED_FUNCTION_81_1();
  }
}

uint64_t OUTLINED_FUNCTION_139(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, va);
}

uint64_t storeEnumTagSinglePayload for ConnectionInterfaceReport(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *(result + 288) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 289) = 1;
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

    *(result + 289) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized Connection.didOpenConnectionType(_:type:routeId:delay:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v12 - 8);
  v13 = *(v27 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v26 = *(v16 - 8);
  v17 = *(v26 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v21 = result;
    result = swift_unknownObjectRelease();
    if (v21 == a5)
    {
      v25 = *(a5 + OBJC_IVAR___SNConnectionInternal_connectionQueue);
      v22 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      *(v23 + 24) = a1;
      *(v23 + 32) = a2;
      *(v23 + 40) = a3;
      *(v23 + 48) = a4;
      *(v23 + 56) = a6;
      aBlock[4] = partial apply for closure #1 in Connection.didOpenConnectionType(_:type:routeId:delay:);
      aBlock[5] = v23;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_234;
      v24 = _Block_copy(aBlock);

      swift_retain_n();

      static DispatchQoS.unspecified.getter();
      v28 = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type BackgroundConnection and conformance BackgroundConnection(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x223DE2460](0, v19, v15, v24);
      _Block_release(v24);

      (*(v27 + 8))(v15, v12);
      (*(v26 + 8))(v19, v16);
    }
  }

  return result;
}