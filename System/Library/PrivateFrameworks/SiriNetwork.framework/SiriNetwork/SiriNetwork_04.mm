uint64_t sub_22355E7D8()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

void closure #1 in NetworkAnalytics.logSessionConnectionHttpHeaderCreated(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v126 = a3;
  v124 = a2;
  v125 = type metadata accessor for NetworkAnalyticsEventMessage(0);
  v3 = *(*(v125 - 1) + 64);
  MEMORY[0x28223BE20](v125);
  v5 = &v118 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v118 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v118 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v118 - v17;
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v118 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v123 = &v118 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v122 = &v118 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v118 - v30;
  MEMORY[0x28223BE20](v29);
  v128 = &v118 - v32;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v34 = Strong;
  v127 = v20;
  v35 = OBJC_IVAR___SNNetworkAnalyticsInternal_netId;
  swift_beginAccess();
  outlined init with copy of UUID?(&v34[v35], v18);
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {
    outlined destroy of NetworkConnectionProtocol?(v18, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Logger.siriNetwork);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_223515000, v37, v38, "Network Analytics: Event Header. No netId generated", v39, 2u);
      MEMORY[0x223DE38F0](v39, -1, -1);
    }

    return;
  }

  v40 = v127;
  (*(v127 + 32))(v128, v18, v19);
  v41 = &v34[OBJC_IVAR___SNNetworkAnalyticsInternal_httpHeaderEvent];
  swift_beginAccess();
  v121 = v41;
  outlined init with copy of NetworkAnalyticsEventMessage(v41, v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v19))
  {
    outlined destroy of NetworkAnalyticsEventMessage(v5);
    v42 = 0;
    v43 = 0;
  }

  else
  {
    (*(v40 + 16))(v31, v5, v19);
    outlined destroy of NetworkAnalyticsEventMessage(v5);
    v42 = UUID.uuidString.getter();
    v44 = v40;
    v43 = v45;
    (*(v44 + 8))(v31, v19);
  }

  v46 = UUID.uuidString.getter();
  if (!v43)
  {

    goto LABEL_20;
  }

  if (v42 != v46 || v43 != v47)
  {
    v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v49)
    {
      goto LABEL_24;
    }

LABEL_20:
    v50 = v19;
    v51 = v128;
    v52 = v127 + 16;
    v53 = *(v127 + 16);
    v53(v16, v128, v50);
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v50);
    v54 = v121;
    swift_beginAccess();
    outlined assign with take of UUID?(v16, v54);
    swift_endAccess();
    v120 = v52;
    v119 = v53;
    v53(v16, v51, v50);
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v50);
    v55 = OBJC_IVAR___SNNetworkAnalyticsInternal_networkConnectionId;
    swift_beginAccess();
    outlined init with copy of UUID?(&v34[v55], v13);
    v56 = *&v34[OBJC_IVAR___SNNetworkAnalyticsInternal_connectionProvider];
    v130 = v34[OBJC_IVAR___SNNetworkAnalyticsInternal_connectionProvider + 4];
    NetworkAnalytics.createSchemaClientEventFrom(netId:networkConnectionId:connectionProvider:)();
    v58 = v57;
    outlined destroy of NetworkConnectionProtocol?(v13, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
    outlined destroy of NetworkConnectionProtocol?(v16, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
    if (!v58)
    {
      (*(v127 + 8))(v51, v50);

      return;
    }

    [v58 setSessionConnectionHttpHeaderCreated_];
    v59 = OBJC_IVAR___SNNetworkAnalyticsInternal_netIdForRequestLink;
    swift_beginAccess();
    outlined init with copy of UUID?(&v34[v59], v10);
    if (__swift_getEnumTagSinglePayload(v10, 1, v50))
    {
      v60 = v50;
      outlined destroy of NetworkConnectionProtocol?(v10, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
      v61 = 0;
      v62 = 0;
      v63 = v119;
    }

    else
    {
      v63 = v119;
      v119(v31, v10, v50);
      outlined destroy of NetworkConnectionProtocol?(v10, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
      v61 = UUID.uuidString.getter();
      v62 = v77;
      v78 = v31;
      v60 = v50;
      (*(v127 + 8))(v78, v50);
    }

    v79 = v128;
    v80 = UUID.uuidString.getter();
    if (v62)
    {
      if (v61 == v80 && v62 == v81)
      {

LABEL_44:
        v102 = *(v125 + 5);
        v103 = *(v121 + v102);
        *(v121 + v102) = 0;

        [*&v34[OBJC_IVAR___SNNetworkAnalyticsInternal_siriAnalyticsMessageStream] emitMessage:v58 timestamp:v126];
        if (one-time initialization token for siriNetwork != -1)
        {
          swift_once();
        }

        v104 = type metadata accessor for Logger();
        __swift_project_value_buffer(v104, static Logger.siriNetwork);
        v105 = v122;
        v92 = v60;
        v63(v122, v79, v60);
        v106 = Logger.logObject.getter();
        v107 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v106, v107))
        {
          v108 = swift_slowAlloc();
          v126 = v58;
          v109 = v105;
          v110 = v108;
          v125 = swift_slowAlloc();
          v129 = v125;
          *v110 = 136315138;
          lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
          v111 = dispatch thunk of CustomStringConvertible.description.getter();
          v113 = v112;
          v114 = *(v127 + 8);
          v114(v109, v60);
          v115 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v111, v113, &v129);

          *(v110 + 4) = v115;
          _os_log_impl(&dword_223515000, v106, v107, "Network Analytics: Event Header. httpHeaderEvent emitted: %s", v110, 0xCu);
          v116 = v125;
          __swift_destroy_boxed_opaque_existential_0(v125);
          MEMORY[0x223DE38F0](v116, -1, -1);
          MEMORY[0x223DE38F0](v110, -1, -1);

          v114(v128, v60);
          return;
        }

        v117 = *(v127 + 8);
        v117(v105, v60);
        goto LABEL_50;
      }

      v83 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v83)
      {
        goto LABEL_44;
      }
    }

    else
    {
    }

    v85 = v125;
    v84 = v126;
    v86 = *(v125 + 5);
    v87 = v121;
    v88 = *(v121 + v86);
    *(v121 + v86) = v58;
    v89 = v87 + *(v85 + 6);
    *v89 = v84;
    *(v89 + 8) = 0;
    v126 = v58;

    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v90 = type metadata accessor for Logger();
    __swift_project_value_buffer(v90, static Logger.siriNetwork);
    v91 = v123;
    v92 = v60;
    v63(v123, v79, v60);
    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v129 = v96;
      *v95 = 136315138;
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v97 = dispatch thunk of CustomStringConvertible.description.getter();
      v99 = v98;
      v100 = *(v127 + 8);
      v100(v91, v92);
      v101 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v97, v99, &v129);

      *(v95 + 4) = v101;
      _os_log_impl(&dword_223515000, v93, v94, "Network Analytics: Event Header. No netIdForRequestLink for netId: %s", v95, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v96);
      MEMORY[0x223DE38F0](v96, -1, -1);
      MEMORY[0x223DE38F0](v95, -1, -1);

      v100(v128, v92);
      return;
    }

    v117 = *(v127 + 8);
    v117(v91, v60);
LABEL_50:
    v117(v79, v92);
    return;
  }

LABEL_24:
  v64 = v127;
  if (one-time initialization token for siriNetwork != -1)
  {
    swift_once();
  }

  v65 = type metadata accessor for Logger();
  __swift_project_value_buffer(v65, static Logger.siriNetwork);
  v66 = v128;
  (*(v64 + 16))(v24, v128, v19);
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v131 = v70;
    *v69 = 136315138;
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v71 = dispatch thunk of CustomStringConvertible.description.getter();
    v73 = v72;
    v74 = *(v64 + 8);
    v74(v24);
    v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v73, &v131);

    *(v69 + 4) = v75;
    _os_log_impl(&dword_223515000, v67, v68, "Network Analytics: Event Header. Http header already sent for netId: %s", v69, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v70);
    MEMORY[0x223DE38F0](v70, -1, -1);
    MEMORY[0x223DE38F0](v69, -1, -1);

    (v74)(v128, v19);
  }

  else
  {

    v76 = *(v64 + 8);
    v76(v24, v19);
    v76(v66, v19);
  }
}

uint64_t outlined init with copy of NetworkAnalyticsEventMessage(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkAnalyticsEventMessage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of NetworkAnalyticsEventMessage(uint64_t a1)
{
  v2 = type metadata accessor for NetworkAnalyticsEventMessage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_91()
{

  return swift_weakInit();
}

void OUTLINED_FUNCTION_91_1(void *a1@<X1>, uint64_t a2@<X8>)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a2;
}

uint64_t specialized ConnectionProviderProtocol.connectionAnalysisInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22[-v6];
  memcpy(v26, (v1 + 1536), sizeof(v26));
  v8 = ConnectionConfiguration.resolvedURL.getter(v7);
  specialized ConnectionProviderProtocol.primaryInterface.getter(v8);
  memcpy(v28, v27, 0x121uLL);
  v9 = _s11SiriNetwork25ConnectionInterfaceReportVSgWOg(v28);
  v10 = v9;
  if (v9 == 1)
  {
    v11 = 0;
  }

  else
  {
    v9 = outlined destroy of NetworkConnectionProtocol?(v27, &_s11SiriNetwork25ConnectionInterfaceReportVSgMd, &_s11SiriNetwork25ConnectionInterfaceReportVSgMR);
    v11 = v28[9];
  }

  specialized ConnectionProviderProtocol.primaryInterface.getter(v9);
  memcpy(v25, v24, 0x121uLL);
  v12 = _s11SiriNetwork25ConnectionInterfaceReportVSgWOg(v25);
  if (v12 == 1 || (outlined init with copy of NetworkConnectionProtocol?(&v25[40], v22, &_s11SiriNetwork24ConnectionTCPInfoMetricsVSgMd, _s11SiriNetwork24ConnectionTCPInfoMetricsVSgMR), outlined destroy of NetworkConnectionProtocol?(v24, &_s11SiriNetwork25ConnectionInterfaceReportVSgMd, &_s11SiriNetwork25ConnectionInterfaceReportVSgMR), memcpy(v23, &v25[40], 0xF9uLL), v12 = _s11SiriNetwork24ConnectionTCPInfoMetricsVSgWOg(v23), v12 == 1) || (v12 = outlined destroy of NetworkConnectionProtocol?(&v25[40], &_s11SiriNetwork24ConnectionTCPInfoMetricsVSgMd, _s11SiriNetwork24ConnectionTCPInfoMetricsVSgMR), (v23[28] & 1) != 0))
  {
    v13 = 0;
  }

  else
  {
    v13 = v23[27];
  }

  v14 = *(v1 + 1632);
  specialized ConnectionProviderProtocol.connectionType.getter(v12, v23);
  v15 = v23[0];
  if (*(v1 + 1928))
  {
    v16 = *(v1 + 1864);
    v17 = *(v2 + 1856);
  }

  else
  {
    v17 = 0;
    v16 = 0;
  }

  outlined init with take of URL?(v7, a1);
  v18 = type metadata accessor for ConnectionAnalysisInfo();
  v19 = a1 + v18[5];
  *v19 = v11;
  *(v19 + 4) = v10 == 1;
  *(a1 + v18[6]) = v13;
  *(a1 + v18[7]) = v14;
  *(a1 + v18[8]) = v15;
  v20 = (a1 + v18[9]);
  *v20 = v17;
  v20[1] = v16;
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v18);
}

void *specialized ConnectionProviderProtocol.primaryInterface.getter(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v3 = v2;
  swift_beginAccess();
  memcpy(v14, (v1 + 56), 0x599uLL);
  memcpy(v12, (v1 + 56), 0x599uLL);
  memcpy(v15, (v1 + 624), sizeof(v15));
  if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v15) == 1)
  {
    _s11SiriNetwork25ConnectionInterfaceReportVSgWOi0_(v7);
    memcpy(__dst, v12, 0x599uLL);
    outlined init with copy of ConnectionMetrics(v14, v10);
    outlined destroy of ConnectionMetrics(__dst);
    v4 = v7;
  }

  else
  {
    memcpy(__src, &v12[952], 0x121uLL);
    memcpy(__dst, v12, 0x599uLL);
    outlined init with copy of ConnectionMetrics(v14, v10);
    outlined init with copy of NetworkConnectionProtocol?(__src, v10, &_s11SiriNetwork25ConnectionInterfaceReportVSgMd, &_s11SiriNetwork25ConnectionInterfaceReportVSgMR);
    outlined destroy of ConnectionMetrics(__dst);
    memcpy(v7, __src, 0x121uLL);
    if (_s11SiriNetwork25ConnectionInterfaceReportVSgWOg(v7) != 1)
    {
      v5 = __src;
      return memcpy(v3, v5, 0x121uLL);
    }

    v4 = __src;
  }

  memcpy(v13, v4, 0x121uLL);
  memcpy(v12, (v1 + 56), 0x599uLL);
  memcpy(__dst, (v1 + 56), 0x599uLL);
  memcpy(__src, (v1 + 152), sizeof(__src));
  if (_s11SiriNetwork27ConnectionPreparationReportVSgWOg(__src) == 1)
  {
    memcpy(v10, __dst, 0x599uLL);
    outlined init with copy of ConnectionMetrics(v12, v7);
    outlined destroy of ConnectionMetrics(v10);
    outlined destroy of NetworkConnectionProtocol?(v13, &_s11SiriNetwork25ConnectionInterfaceReportVSgMd, &_s11SiriNetwork25ConnectionInterfaceReportVSgMR);
    _s11SiriNetwork25ConnectionInterfaceReportVSgWOi0_(v7);
    v5 = v7;
  }

  else
  {
    memcpy(v8, &__dst[136], 0x121uLL);
    memcpy(v10, __dst, 0x599uLL);
    outlined init with copy of ConnectionMetrics(v12, v7);
    outlined init with copy of NetworkConnectionProtocol?(v8, v7, &_s11SiriNetwork25ConnectionInterfaceReportVSgMd, &_s11SiriNetwork25ConnectionInterfaceReportVSgMR);
    outlined destroy of ConnectionMetrics(v10);
    outlined destroy of NetworkConnectionProtocol?(v13, &_s11SiriNetwork25ConnectionInterfaceReportVSgMd, &_s11SiriNetwork25ConnectionInterfaceReportVSgMR);
    v5 = v8;
  }

  return memcpy(v3, v5, 0x121uLL);
}

uint64_t storeEnumTagSinglePayload for ConnectionTCPInfoMetrics(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
    *(result + 248) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 249) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 249) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t specialized ConnectionProviderProtocol.connectionType.getter@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (*(v2 + 2100))
  {
    v4 = 17;
  }

  else
  {
    specialized ConnectionProviderProtocol.primaryInterface.getter(result);
    memcpy(__dst, __src, 0x121uLL);
    result = _s11SiriNetwork25ConnectionInterfaceReportVSgWOg(__dst);
    if (result == 1)
    {
      v4 = 0;
    }

    else
    {
      result = outlined destroy of NetworkConnectionProtocol?(__src, &_s11SiriNetwork25ConnectionInterfaceReportVSgMd, &_s11SiriNetwork25ConnectionInterfaceReportVSgMR);
      v4 = __dst[32];
    }
  }

  *a2 = v4;
  return result;
}

uint64_t outlined init with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22355FDE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36) + 8) = a2;
  }

  return result;
}

uint64_t sub_22355FEB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 36) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t outlined init with copy of ConnectionAnalysisInfo(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConnectionAnalysisInfo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of ConnectionAnalysisInfo(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConnectionAnalysisInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ConnectionAnalysisInfo(uint64_t a1)
{
  v2 = type metadata accessor for ConnectionAnalysisInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void NetworkConnectionProvider.handleViabilityUpdate(_:)()
{
  OUTLINED_FUNCTION_46();
  v2 = v0;
  v4 = v3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = OUTLINED_FUNCTION_0_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_1();
  v9 = OUTLINED_FUNCTION_8_1();
  v10 = OUTLINED_FUNCTION_0_0(v9);
  v39 = v11;
  v40 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_56();
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_58(v14, static Logger.siriNetwork);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = OUTLINED_FUNCTION_89();
    v41[0] = swift_slowAlloc();
    *v17 = 136315394;
    v18 = NetworkConnectionProvider.connectionIdentifier.getter();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v41);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2080;
    if (v4)
    {
      v21 = 0x656C62616976;
    }

    else
    {
      v21 = 0x656C626169766E75;
    }

    if (v4)
    {
      v22 = 0xE600000000000000;
    }

    else
    {
      v22 = 0xE800000000000000;
    }

    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v41);

    *(v17 + 14) = v23;
    _os_log_impl(&dword_223515000, v15, v16, "Provider - NetworkConnectionProvider [%s]: Viability update. Connection %s", v17, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
  }

  v24 = *(v2 + 2056);
  OUTLINED_FUNCTION_7_1();
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = v4 & 1;
  v41[4] = partial apply for closure #1 in NetworkConnectionProvider.handleViabilityUpdate(_:);
  v41[5] = v26;
  OUTLINED_FUNCTION_1_1();
  v41[1] = 1107296256;
  OUTLINED_FUNCTION_3_5();
  v41[2] = v27;
  v41[3] = &block_descriptor_190;
  v28 = _Block_copy(v41);

  static DispatchQoS.unspecified.getter();
  OUTLINED_FUNCTION_1_8();
  lazy protocol witness table accessor for type NetworkConnectionProvider and conformance NetworkConnectionProvider(v29, 255, v30);
  v31 = OUTLINED_FUNCTION_80();
  __swift_instantiateConcreteTypeFromMangledNameV2(v31, v32);
  OUTLINED_FUNCTION_45();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](v33, v34, v35);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_64();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v36 = OUTLINED_FUNCTION_6();
  MEMORY[0x223DE2460](v36);
  _Block_release(v28);
  v37 = OUTLINED_FUNCTION_16_1();
  v38(v37);
  (*(v39 + 8))(v1, v40);

  OUTLINED_FUNCTION_47();
}

uint64_t sub_22356049C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t implicit closure #4 in implicit closure #3 in NetworkConnectionProvider.configureConnectionHandler(_:)(char a1, uint64_t a2, void (*a3)(void))
{
  result = swift_weakLoadStrong();
  if (result)
  {
    a3(a1 & 1);
  }

  return result;
}

uint64_t closure #1 in NWConnection.readyEstablishmentReport(queue:completion:)(uint64_t a1, void (*a2)(void *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network12NWConnectionC19EstablishmentReportVSgMd, &_s7Network12NWConnectionC19EstablishmentReportVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v9 - v6;
  outlined init with copy of NWConnection.EstablishmentReport?(a1, v9 - v6);
  ConnectionEstablishmentReport.init(report:)(v7, v9);
  a2(v9);
  return outlined destroy of ConnectionEstablishmentReport?(v9);
}

uint64_t outlined init with copy of NWConnection.EstablishmentReport?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network12NWConnectionC19EstablishmentReportVSgMd, &_s7Network12NWConnectionC19EstablishmentReportVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t ConnectionEstablishmentReport.init(report:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v211 = a2;
  v234 = type metadata accessor for NWEndpoint.Port();
  v3 = OUTLINED_FUNCTION_0_0(v234);
  v244 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_33();
  v233 = v7;
  OUTLINED_FUNCTION_31();
  v232 = type metadata accessor for NWEndpoint.Host();
  v8 = OUTLINED_FUNCTION_0_0(v232);
  v243 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_33();
  v231 = v12;
  OUTLINED_FUNCTION_31();
  v217 = type metadata accessor for NWEndpoint();
  v13 = OUTLINED_FUNCTION_0_0(v217);
  v245 = v14;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v13);
  v19 = &v196 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v251 = &v196 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = (&v196 - v23);
  MEMORY[0x28223BE20](v22);
  v250 = &v196 - v25;
  OUTLINED_FUNCTION_31();
  v237 = type metadata accessor for NWConnection.EstablishmentReport.Resolution.Source();
  v26 = OUTLINED_FUNCTION_0_0(v237);
  v246 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_1_33();
  v236 = v30;
  OUTLINED_FUNCTION_31();
  v31 = type metadata accessor for NWConnection.EstablishmentReport.Resolution();
  v32 = OUTLINED_FUNCTION_0_0(v31);
  v235 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_1_33();
  v253 = v36;
  OUTLINED_FUNCTION_31();
  v249 = type metadata accessor for NWConnection.EstablishmentReport.Handshake();
  v37 = OUTLINED_FUNCTION_0_0(v249);
  v252 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  v42 = &v196 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network10NWEndpointOSgMd, &_s7Network10NWEndpointOSgMR);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43 - 8);
  v46 = &v196 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network12NWConnectionC19EstablishmentReportVSgMd, &_s7Network12NWConnectionC19EstablishmentReportVSgMR);
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47 - 8);
  v50 = &v196 - v49;
  v51 = type metadata accessor for NWConnection.EstablishmentReport();
  v52 = OUTLINED_FUNCTION_0_0(v51);
  v210 = v53;
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_1_33();
  v214 = v56;
  v277 = 1;
  v274 = 1;
  v272 = 1;
  if (one-time initialization token for sharedNetworkAnalytics != -1)
  {
    goto LABEL_64;
  }

  while (1)
  {
    v57 = static NetworkAnalytics.sharedNetworkAnalytics;
    outlined init with copy of NWConnection.EstablishmentReport?(a1, v50);
    if (__swift_getEnumTagSinglePayload(v50, 1, v51) == 1)
    {
      v58 = v57;
      outlined destroy of ConnectionSnapshotReport?(a1, &_s7Network12NWConnectionC19EstablishmentReportVSgMd, &_s7Network12NWConnectionC19EstablishmentReportVSgMR);
      outlined destroy of ConnectionSnapshotReport?(v50, &_s7Network12NWConnectionC19EstablishmentReportVSgMd, &_s7Network12NWConnectionC19EstablishmentReportVSgMR);
      v59 = 0;
      v60 = 0;
      v61 = 0;
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v65 = 0;
      v66 = 0;
      v67 = 0;
      v253 = 0;
      v68 = 0;
      v69 = v277;
      v70 = v274;
      v71 = MEMORY[0x277D84F90];
      v72 = 0;
      v73 = v272;
      v74 = 0;
      v75 = MEMORY[0x277D84F90];
LABEL_61:
      v257 = 0;
      v256 = 0;
      LODWORD(v258) = v59;
      BYTE4(v258) = v69;
      *(&v258 + 5) = v275;
      HIBYTE(v258) = v276;
      v259 = v72;
      LOBYTE(v260) = v70;
      *(&v260 + 1) = *v273;
      HIDWORD(v260) = *&v273[3];
      v261 = v74;
      LOBYTE(v262) = v73;
      HIDWORD(v262) = *(v271 + 3);
      *(&v262 + 1) = v271[0];
      v263 = v71;
      v264 = v75;
      LOBYTE(v265) = v60;
      BYTE1(v265) = v61;
      OUTLINED_FUNCTION_6_24();
      v266 = v189;
      v267 = v190;
      v268 = v62;
      v269 = v191;
      v192 = v189;
      v193 = v190;
      result = outlined destroy of ConnectionEstablishmentReport(&v256);
      v194 = v211;
      *v211 = 0;
      v194[1] = 0;
      v194[2] = v63;
      v194[3] = v72;
      v194[4] = v64;
      v194[5] = v74;
      v194[6] = v65;
      v194[7] = v66;
      v195 = v253;
      v194[8] = v67;
      v194[9] = v195;
      v194[10] = v192;
      v194[11] = v193;
      v194[12] = v62;
      v194[13] = v68;
      return result;
    }

    v205 = a1;
    v206 = v51;
    a1 = v214;
    (*(v210 + 32))(v214, v50, v51);
    v204 = v57;
    result = NWConnection.EstablishmentReport.previousAttemptCount.getter();
    if ((result & 0x8000000000000000) != 0)
    {
      break;
    }

    if (HIDWORD(result))
    {
      goto LABEL_66;
    }

    v207 = result;
    v228 = v19;
    v277 = 0;
    NWConnection.EstablishmentReport.attemptStartedAfterInterval.getter();
    v72 = v77;
    v274 = 0;
    NWConnection.EstablishmentReport.Resolution.duration.getter();
    v74 = v78;
    v272 = 0;
    v198 = NWConnection.EstablishmentReport.proxyConfigured.getter();
    v197 = NWConnection.EstablishmentReport.usedProxy.getter();
    NWConnection.EstablishmentReport.proxyEndpoint.getter();
    v19 = v217;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v46, 1, v217);
    v229 = v24;
    v202 = v57;
    if (EnumTagSinglePayload == 1)
    {
      outlined destroy of ConnectionSnapshotReport?(v46, &_s7Network10NWEndpointOSgMd, &_s7Network10NWEndpointOSgMR);
      v200 = 0;
      v201 = 0;
      v199 = 0;
    }

    else
    {
      v80 = NWEndpoint.endpointReport()();
      v200 = v81;
      v201 = v80;
      v199 = v82;
      (*(v245 + 8))(v46, v19);
    }

    v83 = v19;
    v84 = NWConnection.EstablishmentReport.handshakes.getter();
    v85 = *(v84 + 16);
    v230 = v31;
    if (v85)
    {
      v86 = *(v252 + 16);
      v87 = *(v252 + 80);
      v242 = v84;
      a1 = v84 + ((v87 + 32) & ~v87);
      v247 = *(v252 + 72);
      v248 = v86;
      v252 += 16;
      v88 = (v252 - 8);
      v89 = MEMORY[0x277D84F90];
      do
      {
        v19 = v249;
        v248(v42, a1, v249);
        v90 = NWConnection.EstablishmentReport.Handshake.definition.getter();
        v91 = MEMORY[0x223DE1CC0](v90);
        v93 = v92;

        NWConnection.EstablishmentReport.Handshake.handshakeDuration.getter();
        v95 = v94;
        NWConnection.EstablishmentReport.Handshake.handshakeRTT.getter();
        v97 = v96;
        (*v88)(v42, v19);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v98 = v89;
        }

        else
        {
          v102 = *(v89 + 16);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v98 = v103;
        }

        v100 = *(v98 + 16);
        v99 = *(v98 + 24);
        if (v100 >= v99 >> 1)
        {
          OUTLINED_FUNCTION_5_28(v99);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v98 = v104;
        }

        *(v98 + 16) = v100 + 1;
        v101 = v98 + 48 * v100;
        *(v101 + 32) = v91;
        *(v101 + 40) = v93;
        *(v101 + 48) = v95;
        *(v101 + 56) = 0;
        *(v101 + 64) = v97;
        *(v101 + 72) = 0;
        a1 += v247;
        --v85;
        v89 = v98;
      }

      while (v85);
      v203 = v98;

      v83 = v217;
      v31 = v230;
    }

    else
    {

      v203 = MEMORY[0x277D84F90];
    }

    v105 = NWConnection.EstablishmentReport.resolutions.getter();
    v106 = *(v105 + 16);
    v24 = v229;
    v107 = v206;
    if (!v106)
    {

      v184 = MEMORY[0x277D84F90];
LABEL_60:
      v252 = v184;
      v185 = v198 & 1;
      LODWORD(v249) = v198 & 1;
      v186 = v197 & 1;
      LODWORD(v248) = v197 & 1;
      outlined destroy of ConnectionSnapshotReport?(v205, &_s7Network12NWConnectionC19EstablishmentReportVSgMd, &_s7Network12NWConnectionC19EstablishmentReportVSgMR);
      (*(v210 + 8))(v214, v107);
      v257 = 0;
      v256 = 0;
      LODWORD(v258) = v207;
      LODWORD(v251) = v277;
      BYTE4(v258) = v277;
      *(&v258 + 5) = v275;
      HIBYTE(v258) = v276;
      v259 = v72;
      LODWORD(v250) = v274;
      LOBYTE(v260) = v274;
      *(&v260 + 1) = *v273;
      HIDWORD(v260) = *&v273[3];
      v261 = v74;
      v73 = v272;
      LOBYTE(v262) = v272;
      HIDWORD(v262) = *(v271 + 3);
      *(&v262 + 1) = v271[0];
      v187 = v203;
      v263 = v203;
      v264 = v184;
      LOBYTE(v265) = v185;
      BYTE1(v265) = v186;
      OUTLINED_FUNCTION_6_24();
      v266 = v201;
      v267 = v200;
      v62 = v199;
      v268 = v199;
      v68 = v204;
      v269 = v204;
      v247 = v258;
      v64 = v260;
      v188 = v262;
      v253 = v265;
      outlined init with copy of ConnectionEstablishmentReport(&v256, &v254);
      v70 = v250;
      v69 = v251;
      v61 = v248;
      v60 = v249;
      v71 = v187;
      v65 = v188;
      v63 = v247;
      v75 = v252;
      v59 = v207;
      v66 = v71;
      v67 = v252;
      goto LABEL_61;
    }

    v227 = *(v235 + 16);
    v108 = (*(v235 + 80) + 32) & ~*(v235 + 80);
    v196 = v105;
    v42 = (v105 + v108);
    v218 = *(v235 + 72);
    v226 = (v246 + 11);
    v225 = *MEMORY[0x277CD8DC8];
    v216 = *MEMORY[0x277CD8DC0];
    v213 = *MEMORY[0x277CD8DB8];
    v209 = (v246 + 1);
    v248 = (v245 + 88);
    v249 = (v245 + 16);
    LODWORD(v247) = *MEMORY[0x277CD8B08];
    v224 = *MEMORY[0x277CD8B00];
    v215 = *MEMORY[0x277CD8AF0];
    v246 = (v245 + 8);
    v238 = v245 + 96;
    v223 = (v243 + 32);
    v222 = (v244 + 32);
    v221 = (v244 + 8);
    v220 = (v243 + 8);
    v235 += 16;
    v219 = (v235 - 8);
    v51 = v106 - 1;
    v212 = *MEMORY[0x277CD8AD0];
    v208 = *MEMORY[0x277CD8AF8];
    v252 = MEMORY[0x277D84F90];
    while (1)
    {
      v227(v253, v42, v31);
      v109 = v236;
      NWConnection.EstablishmentReport.Resolution.source.getter();
      v110 = (*v226)(v109, v237);
      if (v110 == v225)
      {
        goto LABEL_22;
      }

      if (v110 == v216)
      {
        v46 = 1;
      }

      else
      {
        if (v110 != v213)
        {
          (*v209)(v236, v237);
LABEL_22:
          v46 = 0;
          goto LABEL_27;
        }

        v46 = 2;
      }

LABEL_27:
      v50 = v253;
      NWConnection.EstablishmentReport.Resolution.duration.getter();
      v112 = v111;
      v113 = NWConnection.EstablishmentReport.Resolution.endpointCount.getter();
      if ((v113 & 0x8000000000000000) != 0)
      {
        break;
      }

      a1 = v113;
      if (HIDWORD(v113))
      {
        goto LABEL_63;
      }

      LODWORD(v244) = v46;
      v245 = v51;
      v114 = v250;
      NWConnection.EstablishmentReport.Resolution.successfulEndpoint.getter();
      v115 = *v249;
      (*v249)(v24, v114, v83);
      v116 = *v248;
      v117 = OUTLINED_FUNCTION_2_36();
      v118 = v116(v117);
      v239 = v42;
      if (v118 == v247)
      {
        OUTLINED_FUNCTION_7_22();
        v119 = OUTLINED_FUNCTION_2_36();
        v120(v119);
        v121 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network10NWEndpointO4HostO4host_AC4PortV4porttMd, &_s7Network10NWEndpointO4HostO4host_AC4PortV4porttMR) + 48);
        v123 = v231;
        v122 = v232;
        (*v223)(v231, v24, v232);
        v124 = v24 + v121;
        v126 = v233;
        v125 = v234;
        (*v222)(v233, v124, v234);
        v127 = NWEndpoint.Host.debugDescription.getter();
        v242 = v128;
        v243 = v127;
        LOWORD(v121) = NWEndpoint.Port.rawValue.getter();
        (*v221)(v126, v125);
        (*v220)(v123, v122);
        v240 = 0x100000000;
        v241 = v121;
LABEL_33:
        v135 = v228;
        v136 = v246;
        goto LABEL_42;
      }

      if (v118 == v224)
      {
        OUTLINED_FUNCTION_7_22();
        v129 = OUTLINED_FUNCTION_2_36();
        v130(v129);
        v131 = v24[1];

        v132 = v24[3];

        v133 = v24[5];

        v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS4name_SS4typeSS6domain7Network11NWInterfaceVSg9interfacetMd, &_sSS4name_SS4typeSS6domain7Network11NWInterfaceVSg9interfacetMR);
        outlined destroy of ConnectionSnapshotReport?(v24 + *(v134 + 80), &_s7Network11NWInterfaceVSgMd, &_s7Network11NWInterfaceVSgMR);
        v240 = 0x300000000;
        v241 = 0;
        v242 = 0xE000000000000000;
        v243 = 0;
        goto LABEL_33;
      }

      v136 = v246;
      if (v118 == v215)
      {
        v137 = *v246;
        v135 = v228;
LABEL_40:
        v143 = OUTLINED_FUNCTION_2_36();
        v144(v143);
        v243 = 0;
        v241 = 0;
        v141 = 0x500000000;
        goto LABEL_41;
      }

      v135 = v228;
      if (v118 != v212)
      {
        v142 = *v246;
        goto LABEL_40;
      }

      v138 = *v246;
      v139 = OUTLINED_FUNCTION_2_36();
      v140(v139);
      v243 = 0;
      v241 = 0;
      v141 = 0x400000000;
LABEL_41:
      v240 = v141;
      v242 = 0xE000000000000000;
LABEL_42:
      v145 = *v136;
      (*v136)(v250, v83);
      v146 = v251;
      NWConnection.EstablishmentReport.Resolution.preferredEndpoint.getter();
      v115(v135, v146, v83);
      v147 = OUTLINED_FUNCTION_57();
      v148 = v116(v147);
      if (v148 == v247)
      {
        OUTLINED_FUNCTION_7_22();
        v149 = OUTLINED_FUNCTION_57();
        v150(v149);
        v151 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network10NWEndpointO4HostO4host_AC4PortV4porttMd, &_s7Network10NWEndpointO4HostO4host_AC4PortV4porttMR) + 48);
        v152 = v231;
        v153 = v232;
        (*v223)(v231, v135, v232);
        v154 = v135 + v151;
        v156 = v233;
        v155 = v234;
        (*v222)(v233, v154, v234);
        v157 = NWEndpoint.Host.debugDescription.getter();
        v159 = v158;
        LOWORD(v151) = NWEndpoint.Port.rawValue.getter();
        (*v221)(v156, v155);
        v160 = v152;
        v83 = v217;
        (*v220)(v160, v153);
        v161 = v151;
        v162 = 0x100000000;
        v163 = v252;
      }

      else
      {
        v163 = v252;
        if (v148 == v224)
        {
          OUTLINED_FUNCTION_7_22();
          v164 = OUTLINED_FUNCTION_57();
          v165(v164);
          v166 = v135[1];

          v167 = v135[3];

          v168 = v135[5];

          v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS4name_SS4typeSS6domain7Network11NWInterfaceVSg9interfacetMd, &_sSS4name_SS4typeSS6domain7Network11NWInterfaceVSg9interfacetMR);
          outlined destroy of ConnectionSnapshotReport?(v135 + *(v169 + 80), &_s7Network11NWInterfaceVSgMd, &_s7Network11NWInterfaceVSgMR);
          v157 = 0;
          v161 = 0;
          v162 = 0x300000000;
        }

        else if (v148 == v215 || v148 != v212)
        {
          v171 = OUTLINED_FUNCTION_57();
          (v145)(v171);
          v157 = 0;
          v161 = 0;
          v162 = 0x500000000;
        }

        else
        {
          v170 = OUTLINED_FUNCTION_57();
          (v145)(v170);
          v157 = 0;
          v161 = 0;
          v162 = 0x400000000;
        }

        v159 = 0xE000000000000000;
      }

      v145(v251, v83);
      LOBYTE(v271[0]) = 0;
      v270 = 0;
      LOBYTE(v275) = 0;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v181 = *(v163 + 16);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v163 = v182;
      }

      v173 = *(v163 + 16);
      v172 = *(v163 + 24);
      if (v173 >= v172 >> 1)
      {
        OUTLINED_FUNCTION_5_28(v172);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v252 = v183;
      }

      else
      {
        v252 = v163;
      }

      v174 = v240 | v241;
      v19 = (v162 | v161);
      v31 = v230;
      (*v219)(v253, v230);
      v175 = v252;
      *(v252 + 16) = v173 + 1;
      v176 = v175 + 80 * v173;
      *(v176 + 32) = v244;
      *(v176 + 36) = v271[0];
      v177 = v255;
      *(v176 + 37) = v254;
      *(v176 + 39) = v177;
      *(v176 + 40) = v112;
      *(v176 + 48) = v270;
      v178 = v273[2];
      *(v176 + 49) = *v273;
      *(v176 + 51) = v178;
      *(v176 + 52) = a1;
      *(v176 + 56) = v275;
      v179 = *(&v256 + 3);
      *(v176 + 57) = v256;
      *(v176 + 60) = v179;
      v180 = v242;
      *(v176 + 64) = v243;
      *(v176 + 72) = v180;
      *(v176 + 80) = v174;
      *(v176 + 88) = v157;
      *(v176 + 96) = v159;
      *(v176 + 104) = v19;
      if (!v245)
      {

        v107 = v206;
        v184 = v252;
        goto LABEL_60;
      }

      v51 = v245 - 1;
      v42 = &v239[v218];
      v24 = v229;
    }

    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    swift_once();
  }

  __break(1u);
LABEL_66:
  __break(1u);
  return result;
}

uint64_t closure #1 in NetworkConnectionProvider.updateAndEmitConnectionMetricsReadyEstablishmentReport()(const void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    swift_beginAccess();
    memcpy(__dst, (v6 + 512), sizeof(__dst));
    memcpy((v6 + 512), a1, 0x70uLL);
    outlined init with copy of NetworkConnectionProtocol?(a1, v44, &_s11SiriNetwork29ConnectionEstablishmentReportVSgMd, _s11SiriNetwork29ConnectionEstablishmentReportVSgMR);
    outlined destroy of NetworkConnectionProtocol?(__dst, &_s11SiriNetwork29ConnectionEstablishmentReportVSgMd, _s11SiriNetwork29ConnectionEstablishmentReportVSgMR);
    v8 = NetworkConnectionProvider.connectionMetrics.modify();
    if (*(v7 + 512))
    {
      v9 = v7;
      v10 = 0xE000000000000000;
      v31[0] = 0;
      v31[1] = 0xE000000000000000;
      outlined init with copy of RPCOspreyConnectionProtocol(a3, v44);
      outlined init with copy of NetworkConnectionProtocol?(v44, v43, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
      if (*(&v43[1] + 1))
      {
        outlined init with take of RPCOspreyConnectionProtocol(v43, __src);
        outlined init with copy of RPCOspreyConnectionProtocol(__src, v33);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork0B18ConnectionProtocol_pMd, _s11SiriNetwork0B18ConnectionProtocol_pMR);
        v11 = String.init<A>(describing:)();
        v10 = v12;
        __swift_destroy_boxed_opaque_existential_0(__src);
      }

      else
      {
        v11 = 0;
      }

      outlined destroy of NetworkConnectionProtocol?(v44, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
      MEMORY[0x223DE2180](v11, v10);

      v13 = v31[1];
      v14 = *(v9 + 464);
      *(v9 + 456) = v31[0];
      *(v9 + 464) = v13;

      (v8)(v32, 0);
    }

    else
    {
      (v8)(v32, 0);
    }

    memcpy(__src, (v6 + 512), sizeof(__src));
    v15 = *(v6 + 528);
    v38 = *(v6 + 512);
    v39 = v15;
    v40 = *(v6 + 544);
    v41 = *(v6 + 560);
    v16 = __src[7];
    v17 = *(v6 + 592);
    v35 = *(v6 + 576);
    v36 = v17;
    v37 = *(v6 + 608);
    if (__src[7])
    {
      memcpy(v43, (v6 + 512), sizeof(v43));
      outlined init with copy of ConnectionEstablishmentReport(v43, v33);
      if (one-time initialization token for siriNetwork != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      __swift_project_value_buffer(v18, static Logger.siriNetwork);
      memcpy(v44, __src, sizeof(v44));
      outlined init with copy of ConnectionEstablishmentReport(v44, v33);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      outlined destroy of NetworkConnectionProtocol?(__src, &_s11SiriNetwork29ConnectionEstablishmentReportVSgMd, _s11SiriNetwork29ConnectionEstablishmentReportVSgMR);
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v30[0] = v22;
        *v21 = 136315138;
        v32[0] = v38;
        v32[1] = v39;
        v32[2] = v40;
        *&v32[3] = v41;
        *(&v32[3] + 1) = v16;
        v32[4] = v35;
        v32[5] = v36;
        v32[6] = v37;
        memcpy(v33, __src, sizeof(v33));
        outlined init with copy of ConnectionEstablishmentReport(v33, v31);
        v23 = String.init<A>(describing:)();
        v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v30);

        *(v21 + 4) = v25;
        _os_log_impl(&dword_223515000, v19, v20, "%s", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v22);
        MEMORY[0x223DE38F0](v22, -1, -1);
        MEMORY[0x223DE38F0](v21, -1, -1);
        outlined destroy of NetworkConnectionProtocol?(__src, &_s11SiriNetwork29ConnectionEstablishmentReportVSgMd, _s11SiriNetwork29ConnectionEstablishmentReportVSgMR);
      }

      else
      {

        outlined destroy of NetworkConnectionProtocol?(__src, &_s11SiriNetwork29ConnectionEstablishmentReportVSgMd, _s11SiriNetwork29ConnectionEstablishmentReportVSgMR);
      }
    }

    memcpy(v33, (v6 + 512), sizeof(v33));
    if (v33[7])
    {
      memcpy(v43, (v6 + 512), sizeof(v43));
      memcpy(v44, (v6 + 512), sizeof(v44));
      outlined init with copy of ConnectionEstablishmentReport(v43, v32);
      ConnectionEstablishmentReport.netConnectionStateReadySnapshot.getter();
      if (v26)
      {
        v27 = v26;
        NetworkAnalytics.logNetworkConnectionStateReadySnapshotCaptured(_:)();
        outlined destroy of NetworkConnectionProtocol?(v33, &_s11SiriNetwork29ConnectionEstablishmentReportVSgMd, _s11SiriNetwork29ConnectionEstablishmentReportVSgMR);
      }

      else
      {
        outlined destroy of NetworkConnectionProtocol?(v33, &_s11SiriNetwork29ConnectionEstablishmentReportVSgMd, _s11SiriNetwork29ConnectionEstablishmentReportVSgMR);
      }
    }

    memcpy(v32, (v6 + 512), sizeof(v32));
    if (*(&v32[3] + 1))
    {
      memcpy(v31, (v6 + 512), sizeof(v31));
      memcpy(v43, (v6 + 512), sizeof(v43));
      outlined init with copy of ConnectionEstablishmentReport(v31, v30);
      ConnectionEstablishmentReport.netDebugConnectionStateReadySnapshot.getter();
      if (v28)
      {
        v29 = v28;
        NetworkAnalytics.logDebugNetworkConnectionStateReadySnapshotCaptured(_:)();
        outlined destroy of NetworkConnectionProtocol?(v32, &_s11SiriNetwork29ConnectionEstablishmentReportVSgMd, _s11SiriNetwork29ConnectionEstablishmentReportVSgMR);
      }

      else
      {
        outlined destroy of NetworkConnectionProtocol?(v32, &_s11SiriNetwork29ConnectionEstablishmentReportVSgMd, _s11SiriNetwork29ConnectionEstablishmentReportVSgMR);
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConnectionEstablishmentReport(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56);
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

uint64_t storeEnumTagSinglePayload for ConnectionEstablishmentReport(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t ConnectionEstablishmentReport.debugDescription.getter()
{
  v1 = 0x6E776F6E6B6E75;
  _StringGuts.grow(_:)(23);

  OUTLINED_FUNCTION_5_0();
  v30[0] = 0xD000000000000015;
  v30[1] = v2;
  if (*(v0 + 20))
  {
    OUTLINED_FUNCTION_4_23();
  }

  else
  {
    LODWORD(v31[0]) = *(v0 + 16);
    String.init<A>(describing:)();
  }

  OUTLINED_FUNCTION_3_23();

  v28 = v30[0];
  v29 = v30[1];
  _StringGuts.grow(_:)(19);

  OUTLINED_FUNCTION_5_0();
  v30[0] = 0xD000000000000011;
  v30[1] = v3;
  v4 = ConnectionEstablishmentReport.attemptDelayInMs.getter();
  if ((v4 & 0x100000000) != 0)
  {
    OUTLINED_FUNCTION_4_23();
  }

  else
  {
    LODWORD(v31[0]) = v4;
    String.init<A>(describing:)();
  }

  OUTLINED_FUNCTION_3_23();

  v26 = v30[0];
  v27 = v30[1];
  strcpy(v30, "durationInMs ");
  HIWORD(v30[1]) = -4864;
  v5 = ConnectionEstablishmentReport.durationInMs.getter();
  if (v6)
  {
    OUTLINED_FUNCTION_4_23();
  }

  else
  {
    v31[0] = v5;
    String.init<A>(describing:)();
  }

  OUTLINED_FUNCTION_3_23();

  v24 = v30[0];
  v25 = v30[1];
  OUTLINED_FUNCTION_2_26();
  _StringGuts.grow(_:)(29);

  OUTLINED_FUNCTION_5_0();
  v30[0] = 0xD00000000000001BLL;
  v30[1] = v7;
  v8 = MEMORY[0x223DE2280](*(v0 + 56), &type metadata for ConnectionHandshakeReport);
  MEMORY[0x223DE2180](v8);

  v23 = v30[1];
  OUTLINED_FUNCTION_2_26();
  _StringGuts.grow(_:)(30);

  OUTLINED_FUNCTION_5_0();
  v30[0] = 0xD00000000000001CLL;
  v30[1] = v9;
  v10 = MEMORY[0x223DE2280](*(v0 + 64), &type metadata for ConnectionResolutionReport);
  MEMORY[0x223DE2180](v10);

  v22 = v30[1];
  OUTLINED_FUNCTION_2_26();
  _StringGuts.grow(_:)(18);

  OUTLINED_FUNCTION_5_0();
  v30[0] = 0xD000000000000010;
  v30[1] = v11;
  LOBYTE(v11) = *(v0 + 72);
  OUTLINED_FUNCTION_3_23();

  v12 = v30[1];
  strcpy(v30, "usedProxy ");
  BYTE3(v30[1]) = 0;
  HIDWORD(v30[1]) = -369098752;
  if (*(v0 + 73))
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  OUTLINED_FUNCTION_3_23();

  v15 = v30[0];
  v14 = v30[1];
  OUTLINED_FUNCTION_2_26();
  _StringGuts.grow(_:)(17);

  strcpy(v31, "proxyEndpoint ");
  HIBYTE(v31[1]) = -18;
  v16 = *(v0 + 88);
  if (v16)
  {
    v17 = *(v0 + 96);
    v30[0] = *(v0 + 80);
    v30[1] = v16;
    v30[2] = v17;

    v18 = String.init<A>(describing:)();
    v13 = v19;
  }

  else
  {
    v18 = OUTLINED_FUNCTION_4_23();
  }

  MEMORY[0x223DE2180](v18, v13);

  MEMORY[0x223DE2180](41, 0xE100000000000000);
  OUTLINED_FUNCTION_2_26();
  _StringGuts.grow(_:)(17);

  v30[0] = 0x697463656E6E6F63;
  v30[1] = 0xEF206F666E496E6FLL;
  if (*(v0 + 8))
  {
    v1 = *v0;
    v20 = *(v0 + 8);
  }

  else
  {
    v20 = 0xE700000000000000;
  }

  MEMORY[0x223DE2180](v1, v20);

  _StringGuts.grow(_:)(82);
  MEMORY[0x223DE2180](0xD000000000000030, 0x80000002235F91F0);
  MEMORY[0x223DE2180](v28, v29);

  OUTLINED_FUNCTION_0_45();
  MEMORY[0x223DE2180](v26, v27);

  OUTLINED_FUNCTION_0_45();
  MEMORY[0x223DE2180](v24, v25);

  OUTLINED_FUNCTION_0_45();
  MEMORY[0x223DE2180](0xD00000000000001BLL, v23);

  OUTLINED_FUNCTION_0_45();
  MEMORY[0x223DE2180](0xD00000000000001CLL, v22);

  OUTLINED_FUNCTION_0_45();
  MEMORY[0x223DE2180](0xD000000000000010, v12);

  OUTLINED_FUNCTION_0_45();
  MEMORY[0x223DE2180](v15, v14);

  OUTLINED_FUNCTION_0_45();
  MEMORY[0x223DE2180](v31[0], v31[1]);

  OUTLINED_FUNCTION_0_45();
  MEMORY[0x223DE2180](v30[0], v30[1]);

  return 0;
}

void closure #1 in NetworkAnalytics.emitAllCachedMessagesFor(_:)(uint64_t a1, uint64_t *a2)
{
  v486 = a2;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v436 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v481 = &v436 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v468 = &v436 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v467 = &v436 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v466 = &v436 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v465 = &v436 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v463 = &v436 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v469 = &v436 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v462 = &v436 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v461 = &v436 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v436 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30 - 8);
  v447 = &v436 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v454 = &v436 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v460 = &v436 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v478 = &v436 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v445 = &v436 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v446 = &v436 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v477 = &v436 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v475 = &v436 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v444 = &v436 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v453 = &v436 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v459 = &v436 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v476 = (&v436 - v55);
  v56 = MEMORY[0x28223BE20](v54);
  v443 = &v436 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v452 = &v436 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v479 = &v436 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v464 = &v436 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v442 = &v436 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v451 = &v436 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v458 = &v436 - v69;
  v70 = MEMORY[0x28223BE20](v68);
  v480 = &v436 - v71;
  v72 = MEMORY[0x28223BE20](v70);
  v441 = &v436 - v73;
  v74 = MEMORY[0x28223BE20](v72);
  v450 = &v436 - v75;
  v76 = MEMORY[0x28223BE20](v74);
  v457 = &v436 - v77;
  v78 = MEMORY[0x28223BE20](v76);
  v474 = &v436 - v79;
  v80 = MEMORY[0x28223BE20](v78);
  v440 = &v436 - v81;
  v82 = MEMORY[0x28223BE20](v80);
  v449 = &v436 - v83;
  v84 = MEMORY[0x28223BE20](v82);
  v456 = &v436 - v85;
  v86 = MEMORY[0x28223BE20](v84);
  v473 = &v436 - v87;
  v88 = MEMORY[0x28223BE20](v86);
  v439 = &v436 - v89;
  v90 = MEMORY[0x28223BE20](v88);
  v448 = &v436 - v91;
  v92 = MEMORY[0x28223BE20](v90);
  v455 = &v436 - v93;
  v94 = MEMORY[0x28223BE20](v92);
  v96 = &v436 - v95;
  v97 = MEMORY[0x28223BE20](v94);
  v438 = &v436 - v98;
  v99 = MEMORY[0x28223BE20](v97);
  v470 = &v436 - v100;
  v101 = MEMORY[0x28223BE20](v99);
  v103 = &v436 - v102;
  MEMORY[0x28223BE20](v101);
  v105 = &v436 - v104;
  swift_beginAccess();
  v472 = a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v107 = Strong;
    v437 = v8;
    v484 = *(v4 + 16);
    v485 = v4 + 16;
    v484(v105, v486, v3);
    __swift_storeEnumTagSinglePayload(v105, 0, 1, v3);
    v487 = v107;
    v108 = &v107[OBJC_IVAR___SNNetworkAnalyticsInternal_httpHeaderEvent];
    swift_beginAccess();
    v109 = *(v10 + 48);
    outlined init with copy of UUID?(v105, v29);
    v471 = v108;
    outlined init with copy of UUID?(v108, &v29[v109]);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v29, 1, v3);
    v482 = v4;
    v483 = v10;
    if (EnumTagSinglePayload == 1)
    {
      outlined destroy of NetworkConnectionProtocol?(v105, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
      if (__swift_getEnumTagSinglePayload(&v29[v109], 1, v3) == 1)
      {
        outlined destroy of NetworkConnectionProtocol?(v29, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
LABEL_9:
        v116 = type metadata accessor for NetworkAnalyticsEventMessage(0);
        v117 = *(v471 + *(v116 + 20));
        if (v117)
        {
          v118 = v471 + *(v116 + 24);
          if ((*(v118 + 8) & 1) == 0)
          {
            v119 = *v118;
            swift_beginAccess();
            v120 = swift_unknownObjectWeakLoadStrong();
            if (v120)
            {
              v121 = v120;
              v122 = *(v120 + OBJC_IVAR___SNNetworkAnalyticsInternal_siriAnalyticsMessageStream);
              v123 = v117;
              swift_unknownObjectRetain();

              [v122 emitMessage:v123 timestamp:v119];
              swift_unknownObjectRelease();
            }

            if (one-time initialization token for siriNetwork != -1)
            {
              swift_once();
            }

            v124 = type metadata accessor for Logger();
            __swift_project_value_buffer(v124, static Logger.siriNetwork);
            v125 = v487;
            v126 = Logger.logObject.getter();
            v127 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v126, v127))
            {
              v128 = swift_slowAlloc();
              v436 = swift_slowAlloc();
              v496 = v436;
              *v128 = 136315138;
              v129 = OBJC_IVAR___SNNetworkAnalyticsInternal_netId;
              swift_beginAccess();
              v130 = &v125[v129];
              v131 = v470;
              outlined init with copy of UUID?(v130, v470);
              v132 = v438;
              outlined init with copy of UUID?(v131, v438);
              if (__swift_getEnumTagSinglePayload(v132, 1, v3) == 1)
              {
                v133 = 1819047278;
                v134 = 0xE400000000000000;
              }

              else
              {
                v136 = v481;
                v135 = v482;
                (*(v482 + 32))(v481, v132, v3);
                v484(v437, v136, v3);
                v133 = String.init<A>(describing:)();
                v134 = v137;
                (*(v135 + 8))(v136, v3);
              }

              v10 = v483;
              outlined destroy of NetworkConnectionProtocol?(v470, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
              v138 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v133, v134, &v496);

              *(v128 + 4) = v138;
              _os_log_impl(&dword_223515000, v126, v127, "Network Analytics: Event httpHeaderEvent emitted: %s", v128, 0xCu);
              v139 = v436;
              __swift_destroy_boxed_opaque_existential_0(v436);
              MEMORY[0x223DE38F0](v139, -1, -1);
              MEMORY[0x223DE38F0](v128, -1, -1);
            }
          }
        }

LABEL_21:
        v484(v96, v486, v3);
        __swift_storeEnumTagSinglePayload(v96, 0, 1, v3);
        v140 = &v487[OBJC_IVAR___SNNetworkAnalyticsInternal_preparationSnapshotEvent];
        swift_beginAccess();
        v141 = *(v10 + 48);
        v142 = v461;
        outlined init with copy of UUID?(v96, v461);
        v470 = v140;
        outlined init with copy of UUID?(v140, v142 + v141);
        if (__swift_getEnumTagSinglePayload(v142, 1, v3) == 1)
        {
          outlined destroy of NetworkConnectionProtocol?(v96, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
          v143 = __swift_getEnumTagSinglePayload(v142 + v141, 1, v3);
          v144 = v482;
          v145 = v473;
          v146 = v474;
          if (v143 == 1)
          {
            outlined destroy of NetworkConnectionProtocol?(v142, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
LABEL_28:
            v152 = type metadata accessor for NetworkAnalyticsEventMessage(0);
            v153 = *&v470[*(v152 + 20)];
            if (v153)
            {
              v154 = &v470[*(v152 + 24)];
              if ((v154[8] & 1) == 0)
              {
                v155 = *v154;
                swift_beginAccess();
                v156 = swift_unknownObjectWeakLoadStrong();
                if (v156)
                {
                  v157 = v156;
                  v158 = *(v156 + OBJC_IVAR___SNNetworkAnalyticsInternal_siriAnalyticsMessageStream);
                  v159 = v153;
                  swift_unknownObjectRetain();

                  [v158 emitMessage:v159 timestamp:v155];
                  swift_unknownObjectRelease();
                }

                if (one-time initialization token for siriNetwork != -1)
                {
                  swift_once();
                }

                v160 = type metadata accessor for Logger();
                __swift_project_value_buffer(v160, static Logger.siriNetwork);
                v161 = v487;
                v162 = Logger.logObject.getter();
                v163 = static os_log_type_t.default.getter();

                if (os_log_type_enabled(v162, v163))
                {
                  v164 = swift_slowAlloc();
                  v165 = swift_slowAlloc();
                  v495 = v165;
                  *v164 = 136315138;
                  v166 = OBJC_IVAR___SNNetworkAnalyticsInternal_netId;
                  swift_beginAccess();
                  v167 = v448;
                  outlined init with copy of UUID?(&v161[v166], v448);
                  v168 = v439;
                  outlined init with copy of UUID?(v167, v439);
                  if (__swift_getEnumTagSinglePayload(v168, 1, v3) == 1)
                  {
                    v169 = 1819047278;
                    v170 = 0xE400000000000000;
                  }

                  else
                  {
                    v171 = *(v144 + 32);
                    v172 = v144;
                    v173 = v481;
                    v171(v481, v168, v3);
                    v484(v437, v173, v3);
                    v169 = String.init<A>(describing:)();
                    v170 = v174;
                    v175 = v173;
                    v144 = v172;
                    (*(v172 + 8))(v175, v3);
                  }

                  outlined destroy of NetworkConnectionProtocol?(v448, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                  v176 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v169, v170, &v495);

                  *(v164 + 4) = v176;
                  _os_log_impl(&dword_223515000, v162, v163, "Network Analytics: Event preparationSnapshotEvent emitted: %s", v164, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0(v165);
                  MEMORY[0x223DE38F0](v165, -1, -1);
                  MEMORY[0x223DE38F0](v164, -1, -1);

                  v145 = v473;
                  v146 = v474;
                }

                else
                {
                }
              }
            }

LABEL_40:
            v484(v145, v486, v3);
            __swift_storeEnumTagSinglePayload(v145, 0, 1, v3);
            v177 = &v487[OBJC_IVAR___SNNetworkAnalyticsInternal_debugPreparationSnapshotEvent];
            swift_beginAccess();
            v178 = *(v483 + 48);
            v179 = v462;
            outlined init with copy of UUID?(v145, v462);
            v473 = v177;
            outlined init with copy of UUID?(v177, v179 + v178);
            if (__swift_getEnumTagSinglePayload(v179, 1, v3) == 1)
            {
              outlined destroy of NetworkConnectionProtocol?(v145, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
              if (__swift_getEnumTagSinglePayload(v179 + v178, 1, v3) == 1)
              {
                outlined destroy of NetworkConnectionProtocol?(v179, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
LABEL_47:
                v183 = type metadata accessor for NetworkAnalyticsEventMessage(0);
                v184 = *&v473[*(v183 + 20)];
                if (v184)
                {
                  v185 = &v473[*(v183 + 24)];
                  if ((v185[8] & 1) == 0)
                  {
                    v186 = *v185;
                    swift_beginAccess();
                    v187 = swift_unknownObjectWeakLoadStrong();
                    if (v187)
                    {
                      v188 = v187;
                      v189 = *(v187 + OBJC_IVAR___SNNetworkAnalyticsInternal_siriAnalyticsMessageStream);
                      v190 = v184;
                      swift_unknownObjectRetain();

                      [v189 emitMessage:v190 timestamp:v186];
                      swift_unknownObjectRelease();
                    }

                    if (one-time initialization token for siriNetwork != -1)
                    {
                      swift_once();
                    }

                    v191 = type metadata accessor for Logger();
                    __swift_project_value_buffer(v191, static Logger.siriNetwork);
                    v192 = v487;
                    v193 = Logger.logObject.getter();
                    v194 = static os_log_type_t.default.getter();

                    if (os_log_type_enabled(v193, v194))
                    {
                      v195 = swift_slowAlloc();
                      v196 = swift_slowAlloc();
                      v494 = v196;
                      *v195 = 136315138;
                      v197 = OBJC_IVAR___SNNetworkAnalyticsInternal_netId;
                      swift_beginAccess();
                      v198 = &v192[v197];
                      v199 = v449;
                      outlined init with copy of UUID?(v198, v449);
                      v200 = v199;
                      v201 = v440;
                      outlined init with copy of UUID?(v200, v440);
                      if (__swift_getEnumTagSinglePayload(v201, 1, v3) == 1)
                      {
                        v202 = 1819047278;
                        v203 = 0xE400000000000000;
                      }

                      else
                      {
                        v204 = v481;
                        (*(v482 + 32))(v481, v201, v3);
                        v484(v437, v204, v3);
                        v202 = String.init<A>(describing:)();
                        v203 = v205;
                        (*(v482 + 8))(v204, v3);
                      }

                      outlined destroy of NetworkConnectionProtocol?(v449, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                      v206 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v202, v203, &v494);

                      *(v195 + 4) = v206;
                      _os_log_impl(&dword_223515000, v193, v194, "Network Analytics: Event debugPreparationSnapshotEvent emitted: %s", v195, 0xCu);
                      __swift_destroy_boxed_opaque_existential_0(v196);
                      MEMORY[0x223DE38F0](v196, -1, -1);
                      MEMORY[0x223DE38F0](v195, -1, -1);

                      v146 = v474;
                    }

                    else
                    {
                    }
                  }
                }

LABEL_59:
                v484(v146, v486, v3);
                __swift_storeEnumTagSinglePayload(v146, 0, 1, v3);
                v207 = &v487[OBJC_IVAR___SNNetworkAnalyticsInternal_readySnapshotEvent];
                swift_beginAccess();
                v208 = *(v483 + 48);
                v209 = v469;
                outlined init with copy of UUID?(v146, v469);
                v474 = v207;
                outlined init with copy of UUID?(v207, v209 + v208);
                if (__swift_getEnumTagSinglePayload(v209, 1, v3) == 1)
                {
                  outlined destroy of NetworkConnectionProtocol?(v146, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                  v210 = __swift_getEnumTagSinglePayload(v209 + v208, 1, v3);
                  v211 = v479;
                  if (v210 == 1)
                  {
                    outlined destroy of NetworkConnectionProtocol?(v209, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
LABEL_66:
                    v217 = type metadata accessor for NetworkAnalyticsEventMessage(0);
                    v218 = *&v474[*(v217 + 20)];
                    if (v218)
                    {
                      v219 = &v474[*(v217 + 24)];
                      if ((v219[8] & 1) == 0)
                      {
                        v220 = *v219;
                        swift_beginAccess();
                        v221 = swift_unknownObjectWeakLoadStrong();
                        if (v221)
                        {
                          v222 = v221;
                          v223 = *(v221 + OBJC_IVAR___SNNetworkAnalyticsInternal_siriAnalyticsMessageStream);
                          v224 = v218;
                          swift_unknownObjectRetain();

                          [v223 emitMessage:v224 timestamp:v220];
                          swift_unknownObjectRelease();
                        }

                        if (one-time initialization token for siriNetwork != -1)
                        {
                          swift_once();
                        }

                        v225 = type metadata accessor for Logger();
                        __swift_project_value_buffer(v225, static Logger.siriNetwork);
                        v226 = v487;
                        v227 = Logger.logObject.getter();
                        v228 = static os_log_type_t.default.getter();

                        if (os_log_type_enabled(v227, v228))
                        {
                          v229 = swift_slowAlloc();
                          v230 = swift_slowAlloc();
                          v493 = v230;
                          *v229 = 136315138;
                          v231 = OBJC_IVAR___SNNetworkAnalyticsInternal_netId;
                          swift_beginAccess();
                          v232 = &v226[v231];
                          v233 = v450;
                          outlined init with copy of UUID?(v232, v450);
                          v234 = v233;
                          v235 = v441;
                          outlined init with copy of UUID?(v234, v441);
                          if (__swift_getEnumTagSinglePayload(v235, 1, v3) == 1)
                          {
                            v236 = 1819047278;
                            v237 = 0xE400000000000000;
                          }

                          else
                          {
                            v238 = v481;
                            (*(v482 + 32))(v481, v235, v3);
                            v484(v437, v238, v3);
                            v236 = String.init<A>(describing:)();
                            v237 = v239;
                            (*(v482 + 8))(v238, v3);
                          }

                          outlined destroy of NetworkConnectionProtocol?(v450, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                          v240 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v236, v237, &v493);

                          *(v229 + 4) = v240;
                          _os_log_impl(&dword_223515000, v227, v228, "Network Analytics: Event readySnapshotEvent emitted: %s", v229, 0xCu);
                          __swift_destroy_boxed_opaque_existential_0(v230);
                          MEMORY[0x223DE38F0](v230, -1, -1);
                          MEMORY[0x223DE38F0](v229, -1, -1);
                        }

                        v211 = v479;
                      }
                    }

LABEL_78:
                    v241 = v480;
                    v484(v480, v486, v3);
                    __swift_storeEnumTagSinglePayload(v241, 0, 1, v3);
                    v242 = &v487[OBJC_IVAR___SNNetworkAnalyticsInternal_debugReadySnapshotEvent];
                    swift_beginAccess();
                    v243 = *(v483 + 48);
                    v244 = v463;
                    outlined init with copy of UUID?(v241, v463);
                    v469 = v242;
                    outlined init with copy of UUID?(v242, v244 + v243);
                    if (__swift_getEnumTagSinglePayload(v244, 1, v3) == 1)
                    {
                      outlined destroy of NetworkConnectionProtocol?(v480, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                      if (__swift_getEnumTagSinglePayload(v244 + v243, 1, v3) == 1)
                      {
                        outlined destroy of NetworkConnectionProtocol?(v244, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                        v245 = v464;
LABEL_85:
                        v251 = type metadata accessor for NetworkAnalyticsEventMessage(0);
                        v252 = *&v469[*(v251 + 20)];
                        if (v252)
                        {
                          v253 = &v469[*(v251 + 24)];
                          if ((v253[8] & 1) == 0)
                          {
                            v254 = *v253;
                            swift_beginAccess();
                            v255 = swift_unknownObjectWeakLoadStrong();
                            if (v255)
                            {
                              v256 = v255;
                              v257 = *(v255 + OBJC_IVAR___SNNetworkAnalyticsInternal_siriAnalyticsMessageStream);
                              v258 = v252;
                              swift_unknownObjectRetain();

                              [v257 emitMessage:v258 timestamp:v254];
                              swift_unknownObjectRelease();
                            }

                            if (one-time initialization token for siriNetwork != -1)
                            {
                              swift_once();
                            }

                            v259 = type metadata accessor for Logger();
                            __swift_project_value_buffer(v259, static Logger.siriNetwork);
                            v260 = v487;
                            v261 = Logger.logObject.getter();
                            v262 = static os_log_type_t.default.getter();

                            if (os_log_type_enabled(v261, v262))
                            {
                              v263 = swift_slowAlloc();
                              v264 = swift_slowAlloc();
                              v492 = v264;
                              *v263 = 136315138;
                              v265 = OBJC_IVAR___SNNetworkAnalyticsInternal_netId;
                              swift_beginAccess();
                              v266 = &v260[v265];
                              v267 = v451;
                              outlined init with copy of UUID?(v266, v451);
                              v268 = v267;
                              v269 = v442;
                              outlined init with copy of UUID?(v268, v442);
                              if (__swift_getEnumTagSinglePayload(v269, 1, v3) == 1)
                              {
                                v270 = 1819047278;
                                v271 = 0xE400000000000000;
                              }

                              else
                              {
                                v272 = v481;
                                (*(v482 + 32))(v481, v269, v3);
                                v484(v437, v272, v3);
                                v270 = String.init<A>(describing:)();
                                v271 = v273;
                                (*(v482 + 8))(v272, v3);
                              }

                              outlined destroy of NetworkConnectionProtocol?(v451, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                              v274 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v270, v271, &v492);

                              *(v263 + 4) = v274;
                              _os_log_impl(&dword_223515000, v261, v262, "Network Analytics: Event debugReadySnapshotEvent emitted: %s", v263, 0xCu);
                              __swift_destroy_boxed_opaque_existential_0(v264);
                              MEMORY[0x223DE38F0](v264, -1, -1);
                              MEMORY[0x223DE38F0](v263, -1, -1);
                            }

                            v211 = v479;
                          }
                        }

LABEL_97:
                        v484(v245, v486, v3);
                        __swift_storeEnumTagSinglePayload(v245, 0, 1, v3);
                        v275 = &v487[OBJC_IVAR___SNNetworkAnalyticsInternal_sessionConnectionSnapthotEvent];
                        swift_beginAccess();
                        v276 = *(v483 + 48);
                        v277 = v465;
                        outlined init with copy of UUID?(v245, v465);
                        v480 = v275;
                        outlined init with copy of UUID?(v275, v277 + v276);
                        if (__swift_getEnumTagSinglePayload(v277, 1, v3) == 1)
                        {
                          outlined destroy of NetworkConnectionProtocol?(v245, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                          v278 = __swift_getEnumTagSinglePayload(v277 + v276, 1, v3) == 1;
                          v279 = v277;
                          v280 = v476;
                          if (!v278)
                          {
                            goto LABEL_103;
                          }

                          outlined destroy of NetworkConnectionProtocol?(v279, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                        }

                        else
                        {
                          outlined init with copy of UUID?(v277, v211);
                          if (__swift_getEnumTagSinglePayload(v277 + v276, 1, v3) == 1)
                          {
                            outlined destroy of NetworkConnectionProtocol?(v245, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                            (*(v482 + 8))(v211, v3);
                            v279 = v277;
                            v280 = v476;
LABEL_103:
                            outlined destroy of NetworkConnectionProtocol?(v279, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
                            goto LABEL_117;
                          }

                          v281 = v482;
                          v282 = v245;
                          v283 = v211;
                          v284 = v481;
                          (*(v482 + 32))(v481, v277 + v276, v3);
                          lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
                          v285 = dispatch thunk of static Equatable.== infix(_:_:)();
                          v286 = *(v281 + 8);
                          v286(v284, v3);
                          outlined destroy of NetworkConnectionProtocol?(v282, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                          v286(v283, v3);
                          outlined destroy of NetworkConnectionProtocol?(v277, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                          v280 = v476;
                          if ((v285 & 1) == 0)
                          {
LABEL_117:
                            v484(v280, v486, v3);
                            __swift_storeEnumTagSinglePayload(v280, 0, 1, v3);
                            v310 = &v487[OBJC_IVAR___SNNetworkAnalyticsInternal_debugSessionConnectionSnapthotEvent];
                            swift_beginAccess();
                            v311 = v483;
                            v312 = *(v483 + 48);
                            v313 = v466;
                            outlined init with copy of UUID?(v280, v466);
                            v479 = v310;
                            outlined init with copy of UUID?(v310, v313 + v312);
                            if (__swift_getEnumTagSinglePayload(v313, 1, v3) == 1)
                            {
                              outlined destroy of NetworkConnectionProtocol?(v280, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                              v314 = __swift_getEnumTagSinglePayload(v313 + v312, 1, v3);
                              v315 = v477;
                              if (v314 == 1)
                              {
                                outlined destroy of NetworkConnectionProtocol?(v313, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                                v316 = v475;
LABEL_125:
                                v322 = type metadata accessor for NetworkAnalyticsEventMessage(0);
                                v323 = *&v479[*(v322 + 20)];
                                if (!v323)
                                {
                                  goto LABEL_137;
                                }

                                v324 = &v479[*(v322 + 24)];
                                if (v324[8])
                                {
                                  goto LABEL_137;
                                }

                                v325 = *v324;
                                swift_beginAccess();
                                v326 = swift_unknownObjectWeakLoadStrong();
                                if (v326)
                                {
                                  v327 = v326;
                                  v328 = *(v326 + OBJC_IVAR___SNNetworkAnalyticsInternal_siriAnalyticsMessageStream);
                                  v329 = v323;
                                  swift_unknownObjectRetain();

                                  [v328 emitMessage:v329 timestamp:v325];
                                  v315 = v477;
                                  swift_unknownObjectRelease();
                                }

                                if (one-time initialization token for siriNetwork != -1)
                                {
                                  swift_once();
                                }

                                v330 = type metadata accessor for Logger();
                                __swift_project_value_buffer(v330, static Logger.siriNetwork);
                                v331 = v487;
                                v332 = Logger.logObject.getter();
                                v333 = static os_log_type_t.default.getter();

                                if (os_log_type_enabled(v332, v333))
                                {
                                  v334 = swift_slowAlloc();
                                  v335 = swift_slowAlloc();
                                  v490 = v335;
                                  *v334 = 136315138;
                                  v336 = OBJC_IVAR___SNNetworkAnalyticsInternal_netId;
                                  swift_beginAccess();
                                  v337 = v453;
                                  outlined init with copy of UUID?(&v331[v336], v453);
                                  v338 = v444;
                                  outlined init with copy of UUID?(v337, v444);
                                  if (__swift_getEnumTagSinglePayload(v338, 1, v3) == 1)
                                  {
                                    v339 = 1819047278;
                                    v340 = 0xE400000000000000;
                                  }

                                  else
                                  {
                                    v341 = v482;
                                    v342 = *(v482 + 32);
                                    v476 = v335;
                                    v343 = v481;
                                    v342(v481, v338, v3);
                                    v484(v437, v343, v3);
                                    v339 = String.init<A>(describing:)();
                                    v340 = v344;
                                    v345 = v343;
                                    v335 = v476;
                                    (*(v341 + 8))(v345, v3);
                                  }

                                  outlined destroy of NetworkConnectionProtocol?(v453, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                                  v346 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v339, v340, &v490);

                                  *(v334 + 4) = v346;
                                  _os_log_impl(&dword_223515000, v332, v333, "Network Analytics: Event debugSessionConnectionSnapthotEvent emitted: %s", v334, 0xCu);
                                  __swift_destroy_boxed_opaque_existential_0(v335);
                                  MEMORY[0x223DE38F0](v335, -1, -1);
                                  MEMORY[0x223DE38F0](v334, -1, -1);

                                  v315 = v477;
                                  v316 = v475;
                                  v311 = v483;
LABEL_137:
                                  v347 = v486;
                                  v484(v316, v486, v3);
                                  __swift_storeEnumTagSinglePayload(v316, 0, 1, v3);
                                  v348 = &v487[OBJC_IVAR___SNNetworkAnalyticsInternal_sessionConnectionFailedEvent];
                                  swift_beginAccess();
                                  v349 = *(v311 + 48);
                                  v350 = v467;
                                  outlined init with copy of UUID?(v316, v467);
                                  outlined init with copy of UUID?(v348, v350 + v349);
                                  if (__swift_getEnumTagSinglePayload(v350, 1, v3) == 1)
                                  {
                                    outlined destroy of NetworkConnectionProtocol?(v316, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                                    v351 = __swift_getEnumTagSinglePayload(v350 + v349, 1, v3);
                                    v352 = v478;
                                    if (v351 == 1)
                                    {
                                      outlined destroy of NetworkConnectionProtocol?(v350, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
LABEL_144:
                                      v357 = type metadata accessor for NetworkAnalyticsEventMessage(0);
                                      v358 = *&v348[*(v357 + 20)];
                                      if (v358)
                                      {
                                        v359 = &v348[*(v357 + 24)];
                                        if ((v359[8] & 1) == 0)
                                        {
                                          v360 = *v359;
                                          swift_beginAccess();
                                          v361 = swift_unknownObjectWeakLoadStrong();
                                          if (v361)
                                          {
                                            v362 = v361;
                                            v363 = *(v361 + OBJC_IVAR___SNNetworkAnalyticsInternal_siriAnalyticsMessageStream);
                                            v364 = v358;
                                            swift_unknownObjectRetain();

                                            [v363 emitMessage:v364 timestamp:v360];
                                            v352 = v478;
                                            swift_unknownObjectRelease();
                                          }

                                          if (one-time initialization token for siriNetwork != -1)
                                          {
                                            swift_once();
                                          }

                                          v365 = type metadata accessor for Logger();
                                          __swift_project_value_buffer(v365, static Logger.siriNetwork);
                                          v366 = v487;
                                          v367 = Logger.logObject.getter();
                                          LODWORD(v368) = static os_log_type_t.default.getter();

                                          if (os_log_type_enabled(v367, v368))
                                          {
                                            v369 = swift_slowAlloc();
                                            v370 = swift_slowAlloc();
                                            v489 = v370;
                                            *v369 = 136315138;
                                            v371 = OBJC_IVAR___SNNetworkAnalyticsInternal_netId;
                                            swift_beginAccess();
                                            v372 = v446;
                                            outlined init with copy of UUID?(&v366[v371], v446);
                                            v373 = v445;
                                            outlined init with copy of UUID?(v372, v445);
                                            if (__swift_getEnumTagSinglePayload(v373, 1, v3) == 1)
                                            {
                                              v374 = 1819047278;
                                              v375 = 0xE400000000000000;
                                            }

                                            else
                                            {
                                              LODWORD(v477) = v368;
                                              v368 = v482;
                                              v376 = *(v482 + 32);
                                              v476 = v370;
                                              v377 = v481;
                                              v376(v481, v373, v3);
                                              v484(v437, v377, v3);
                                              v374 = String.init<A>(describing:)();
                                              v375 = v378;
                                              v379 = v368;
                                              LOBYTE(v368) = v477;
                                              v380 = v377;
                                              v370 = v476;
                                              (*(v379 + 8))(v380, v3);
                                            }

                                            outlined destroy of NetworkConnectionProtocol?(v372, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                                            v381 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v374, v375, &v489);

                                            *(v369 + 4) = v381;
                                            _os_log_impl(&dword_223515000, v367, v368, "Network Analytics: Event sessionConnectionFailedEvent emitted: %s", v369, 0xCu);
                                            __swift_destroy_boxed_opaque_existential_0(v370);
                                            MEMORY[0x223DE38F0](v370, -1, -1);
                                            MEMORY[0x223DE38F0](v369, -1, -1);

                                            v347 = v486;
                                            v352 = v478;
                                          }

                                          else
                                          {

                                            v347 = v486;
                                          }

                                          v311 = v483;
                                        }
                                      }

LABEL_157:
                                      v484(v352, v347, v3);
                                      __swift_storeEnumTagSinglePayload(v352, 0, 1, v3);
                                      v382 = &v487[OBJC_IVAR___SNNetworkAnalyticsInternal_peerConnectionFailedEvent];
                                      swift_beginAccess();
                                      v383 = *(v311 + 48);
                                      v384 = v468;
                                      outlined init with copy of UUID?(v352, v468);
                                      outlined init with copy of UUID?(v382, v384 + v383);
                                      if (__swift_getEnumTagSinglePayload(v384, 1, v3) == 1)
                                      {
                                        outlined destroy of NetworkConnectionProtocol?(v352, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                                        if (__swift_getEnumTagSinglePayload(v384 + v383, 1, v3) == 1)
                                        {
                                          outlined destroy of NetworkConnectionProtocol?(v384, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
LABEL_164:
                                          v391 = type metadata accessor for NetworkAnalyticsEventMessage(0);
                                          v392 = *&v382[*(v391 + 20)];
                                          if (v392)
                                          {
                                            v393 = &v382[*(v391 + 24)];
                                            if ((v393[8] & 1) == 0)
                                            {
                                              v394 = *v393;
                                              swift_beginAccess();
                                              v395 = swift_unknownObjectWeakLoadStrong();
                                              if (v395)
                                              {
                                                v396 = v395;
                                                v397 = *(v395 + OBJC_IVAR___SNNetworkAnalyticsInternal_siriAnalyticsMessageStream);
                                                v398 = v392;
                                                swift_unknownObjectRetain();

                                                [v397 emitMessage:v398 timestamp:v394];
                                                swift_unknownObjectRelease();
                                              }

                                              if (one-time initialization token for siriNetwork != -1)
                                              {
                                                swift_once();
                                              }

                                              v399 = type metadata accessor for Logger();
                                              __swift_project_value_buffer(v399, static Logger.siriNetwork);
                                              v400 = v487;
                                              v401 = Logger.logObject.getter();
                                              v402 = static os_log_type_t.default.getter();

                                              if (os_log_type_enabled(v401, v402))
                                              {
                                                v403 = swift_slowAlloc();
                                                v486 = swift_slowAlloc();
                                                v488 = v486;
                                                *v403 = 136315138;
                                                v404 = OBJC_IVAR___SNNetworkAnalyticsInternal_netId;
                                                swift_beginAccess();
                                                v405 = &v400[v404];
                                                v406 = v454;
                                                outlined init with copy of UUID?(v405, v454);
                                                v407 = v447;
                                                outlined init with copy of UUID?(v406, v447);
                                                if (__swift_getEnumTagSinglePayload(v407, 1, v3) == 1)
                                                {
                                                  v408 = 1819047278;
                                                  v409 = 0xE400000000000000;
                                                }

                                                else
                                                {
                                                  v410 = v482;
                                                  v411 = *(v482 + 32);
                                                  v483 = v403;
                                                  v412 = v481;
                                                  v411(v481, v407, v3);
                                                  v484(v437, v412, v3);
                                                  v408 = String.init<A>(describing:)();
                                                  v409 = v413;
                                                  v414 = v412;
                                                  v403 = v483;
                                                  (*(v410 + 8))(v414, v3);
                                                }

                                                outlined destroy of NetworkConnectionProtocol?(v454, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                                                v415 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v408, v409, &v488);

                                                *(v403 + 4) = v415;
                                                _os_log_impl(&dword_223515000, v401, v402, "Network Analytics: Event peerConnectionFailedEvent emitted: %s", v403, 0xCu);
                                                v416 = v486;
                                                __swift_destroy_boxed_opaque_existential_0(v486);
                                                MEMORY[0x223DE38F0](v416, -1, -1);
                                                MEMORY[0x223DE38F0](v403, -1, -1);
                                              }
                                            }
                                          }

                                          goto LABEL_176;
                                        }
                                      }

                                      else
                                      {
                                        v385 = v460;
                                        outlined init with copy of UUID?(v384, v460);
                                        v386 = __swift_getEnumTagSinglePayload(v384 + v383, 1, v3);
                                        v387 = v482;
                                        if (v386 != 1)
                                        {
                                          v388 = v481;
                                          (*(v482 + 32))(v481, v384 + v383, v3);
                                          lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
                                          v389 = dispatch thunk of static Equatable.== infix(_:_:)();
                                          v390 = *(v387 + 8);
                                          v390(v388, v3);
                                          outlined destroy of NetworkConnectionProtocol?(v478, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                                          v390(v385, v3);
                                          outlined destroy of NetworkConnectionProtocol?(v384, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                                          if (v389)
                                          {
                                            goto LABEL_164;
                                          }

LABEL_176:
                                          v417 = type metadata accessor for NetworkAnalyticsEventMessage(0);
                                          v418 = *(v417 + 20);
                                          v419 = *(v471 + v418);
                                          *(v471 + v418) = 0;

                                          v420 = *(v417 + 20);
                                          v421 = *&v470[v420];
                                          *&v470[v420] = 0;

                                          v422 = *(v417 + 20);
                                          v423 = *&v473[v422];
                                          *&v473[v422] = 0;

                                          v424 = *(v417 + 20);
                                          v425 = *&v474[v424];
                                          *&v474[v424] = 0;

                                          v426 = *(v417 + 20);
                                          v427 = *&v469[v426];
                                          *&v469[v426] = 0;

                                          v428 = *(v417 + 20);
                                          v429 = *&v480[v428];
                                          *&v480[v428] = 0;

                                          v430 = *(v417 + 20);
                                          v431 = *&v479[v430];
                                          *&v479[v430] = 0;

                                          v432 = *(v417 + 20);
                                          v433 = *&v348[v432];
                                          *&v348[v432] = 0;

                                          v434 = *(v417 + 20);
                                          v435 = *&v382[v434];
                                          *&v382[v434] = 0;

                                          return;
                                        }

                                        outlined destroy of NetworkConnectionProtocol?(v352, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                                        (*(v387 + 8))(v385, v3);
                                      }

                                      outlined destroy of NetworkConnectionProtocol?(v384, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
                                      goto LABEL_176;
                                    }
                                  }

                                  else
                                  {
                                    outlined init with copy of UUID?(v350, v315);
                                    if (__swift_getEnumTagSinglePayload(v350 + v349, 1, v3) != 1)
                                    {
                                      v477 = v348;
                                      v353 = v481;
                                      v354 = v482;
                                      (*(v482 + 32))(v481, v350 + v349, v3);
                                      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
                                      v355 = dispatch thunk of static Equatable.== infix(_:_:)();
                                      v356 = *(v354 + 8);
                                      v356(v353, v3);
                                      v348 = v477;
                                      outlined destroy of NetworkConnectionProtocol?(v316, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                                      v356(v315, v3);
                                      v311 = v483;
                                      v347 = v486;
                                      outlined destroy of NetworkConnectionProtocol?(v350, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                                      v352 = v478;
                                      if ((v355 & 1) == 0)
                                      {
                                        goto LABEL_157;
                                      }

                                      goto LABEL_144;
                                    }

                                    outlined destroy of NetworkConnectionProtocol?(v316, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                                    (*(v482 + 8))(v315, v3);
                                    v352 = v478;
                                  }

                                  outlined destroy of NetworkConnectionProtocol?(v350, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
                                  goto LABEL_157;
                                }

LABEL_123:
                                v316 = v475;
                                goto LABEL_137;
                              }
                            }

                            else
                            {
                              v317 = v459;
                              outlined init with copy of UUID?(v313, v459);
                              if (__swift_getEnumTagSinglePayload(v313 + v312, 1, v3) != 1)
                              {
                                v318 = v481;
                                v319 = v482;
                                (*(v482 + 32))(v481, v313 + v312, v3);
                                lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
                                v320 = dispatch thunk of static Equatable.== infix(_:_:)();
                                v321 = *(v319 + 8);
                                v321(v318, v3);
                                outlined destroy of NetworkConnectionProtocol?(v280, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                                v321(v317, v3);
                                outlined destroy of NetworkConnectionProtocol?(v313, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                                v315 = v477;
                                v316 = v475;
                                if ((v320 & 1) == 0)
                                {
                                  goto LABEL_137;
                                }

                                goto LABEL_125;
                              }

                              outlined destroy of NetworkConnectionProtocol?(v280, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                              (*(v482 + 8))(v317, v3);
                              v315 = v477;
                            }

                            outlined destroy of NetworkConnectionProtocol?(v313, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
                            goto LABEL_123;
                          }
                        }

                        v287 = type metadata accessor for NetworkAnalyticsEventMessage(0);
                        v288 = *&v480[*(v287 + 20)];
                        if (v288)
                        {
                          v289 = &v480[*(v287 + 24)];
                          if ((v289[8] & 1) == 0)
                          {
                            v290 = *v289;
                            swift_beginAccess();
                            v291 = swift_unknownObjectWeakLoadStrong();
                            if (v291)
                            {
                              v292 = v291;
                              v293 = *(v291 + OBJC_IVAR___SNNetworkAnalyticsInternal_siriAnalyticsMessageStream);
                              v294 = v288;
                              swift_unknownObjectRetain();

                              [v293 emitMessage:v294 timestamp:v290];
                              v280 = v476;
                              swift_unknownObjectRelease();
                            }

                            if (one-time initialization token for siriNetwork != -1)
                            {
                              swift_once();
                            }

                            v295 = type metadata accessor for Logger();
                            __swift_project_value_buffer(v295, static Logger.siriNetwork);
                            v296 = v487;
                            v297 = Logger.logObject.getter();
                            v298 = static os_log_type_t.default.getter();

                            if (os_log_type_enabled(v297, v298))
                            {
                              v299 = swift_slowAlloc();
                              v300 = swift_slowAlloc();
                              v491 = v300;
                              *v299 = 136315138;
                              v301 = OBJC_IVAR___SNNetworkAnalyticsInternal_netId;
                              swift_beginAccess();
                              v302 = v452;
                              outlined init with copy of UUID?(&v296[v301], v452);
                              v303 = v443;
                              outlined init with copy of UUID?(v302, v443);
                              if (__swift_getEnumTagSinglePayload(v303, 1, v3) == 1)
                              {
                                v304 = 1819047278;
                                v305 = 0xE400000000000000;
                              }

                              else
                              {
                                v307 = v481;
                                v306 = v482;
                                (*(v482 + 32))(v481, v303, v3);
                                v484(v437, v307, v3);
                                v304 = String.init<A>(describing:)();
                                v305 = v308;
                                (*(v306 + 8))(v307, v3);
                              }

                              outlined destroy of NetworkConnectionProtocol?(v452, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                              v309 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v304, v305, &v491);

                              *(v299 + 4) = v309;
                              _os_log_impl(&dword_223515000, v297, v298, "Network Analytics: Event sessionConnectionSnapthotEvent emitted: %s", v299, 0xCu);
                              __swift_destroy_boxed_opaque_existential_0(v300);
                              MEMORY[0x223DE38F0](v300, -1, -1);
                              MEMORY[0x223DE38F0](v299, -1, -1);

                              v280 = v476;
                            }

                            else
                            {
                            }
                          }
                        }

                        goto LABEL_117;
                      }
                    }

                    else
                    {
                      v246 = v458;
                      outlined init with copy of UUID?(v244, v458);
                      if (__swift_getEnumTagSinglePayload(v244 + v243, 1, v3) != 1)
                      {
                        v247 = v481;
                        v248 = v482;
                        (*(v482 + 32))(v481, v244 + v243, v3);
                        lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
                        v249 = dispatch thunk of static Equatable.== infix(_:_:)();
                        v250 = *(v248 + 8);
                        v250(v247, v3);
                        outlined destroy of NetworkConnectionProtocol?(v480, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                        v250(v246, v3);
                        v211 = v479;
                        outlined destroy of NetworkConnectionProtocol?(v244, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                        v245 = v464;
                        if ((v249 & 1) == 0)
                        {
                          goto LABEL_97;
                        }

                        goto LABEL_85;
                      }

                      outlined destroy of NetworkConnectionProtocol?(v480, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                      (*(v482 + 8))(v246, v3);
                    }

                    outlined destroy of NetworkConnectionProtocol?(v244, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
                    v245 = v464;
                    goto LABEL_97;
                  }
                }

                else
                {
                  v212 = v457;
                  outlined init with copy of UUID?(v209, v457);
                  if (__swift_getEnumTagSinglePayload(v209 + v208, 1, v3) != 1)
                  {
                    v213 = v481;
                    v214 = v482;
                    (*(v482 + 32))(v481, v209 + v208, v3);
                    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
                    v215 = dispatch thunk of static Equatable.== infix(_:_:)();
                    v216 = *(v214 + 8);
                    v216(v213, v3);
                    outlined destroy of NetworkConnectionProtocol?(v146, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                    v216(v212, v3);
                    outlined destroy of NetworkConnectionProtocol?(v209, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                    v211 = v479;
                    if ((v215 & 1) == 0)
                    {
                      goto LABEL_78;
                    }

                    goto LABEL_66;
                  }

                  outlined destroy of NetworkConnectionProtocol?(v146, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                  (*(v482 + 8))(v212, v3);
                  v211 = v479;
                }

                outlined destroy of NetworkConnectionProtocol?(v209, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
                goto LABEL_78;
              }
            }

            else
            {
              v180 = v456;
              outlined init with copy of UUID?(v179, v456);
              if (__swift_getEnumTagSinglePayload(v179 + v178, 1, v3) != 1)
              {
                v181 = v481;
                (*(v144 + 32))(v481, v179 + v178, v3);
                lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
                LODWORD(v461) = dispatch thunk of static Equatable.== infix(_:_:)();
                v182 = *(v144 + 8);
                v182(v181, v3);
                outlined destroy of NetworkConnectionProtocol?(v145, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                v182(v180, v3);
                outlined destroy of NetworkConnectionProtocol?(v179, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
                if ((v461 & 1) == 0)
                {
                  goto LABEL_59;
                }

                goto LABEL_47;
              }

              outlined destroy of NetworkConnectionProtocol?(v145, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
              (*(v144 + 8))(v180, v3);
            }

            outlined destroy of NetworkConnectionProtocol?(v179, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
            goto LABEL_59;
          }
        }

        else
        {
          v147 = v455;
          outlined init with copy of UUID?(v142, v455);
          v148 = __swift_getEnumTagSinglePayload(v142 + v141, 1, v3);
          v144 = v482;
          if (v148 != 1)
          {
            v149 = v481;
            (*(v482 + 32))(v481, v142 + v141, v3);
            lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
            v150 = dispatch thunk of static Equatable.== infix(_:_:)();
            v151 = *(v144 + 8);
            v151(v149, v3);
            outlined destroy of NetworkConnectionProtocol?(v96, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
            v151(v147, v3);
            outlined destroy of NetworkConnectionProtocol?(v142, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
            v145 = v473;
            v146 = v474;
            if ((v150 & 1) == 0)
            {
              goto LABEL_40;
            }

            goto LABEL_28;
          }

          outlined destroy of NetworkConnectionProtocol?(v96, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
          (*(v144 + 8))(v147, v3);
          v145 = v473;
          v146 = v474;
        }

        outlined destroy of NetworkConnectionProtocol?(v142, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
        goto LABEL_40;
      }
    }

    else
    {
      v111 = v4;
      outlined init with copy of UUID?(v29, v103);
      if (__swift_getEnumTagSinglePayload(&v29[v109], 1, v3) != 1)
      {
        v112 = *(v4 + 32);
        v113 = v481;
        v112(v481, &v29[v109], v3);
        lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
        v114 = dispatch thunk of static Equatable.== infix(_:_:)();
        v115 = *(v111 + 8);
        v115(v113, v3);
        outlined destroy of NetworkConnectionProtocol?(v105, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
        v115(v103, v3);
        v10 = v483;
        outlined destroy of NetworkConnectionProtocol?(v29, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
        if ((v114 & 1) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_9;
      }

      outlined destroy of NetworkConnectionProtocol?(v105, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
      (*(v4 + 8))(v103, v3);
    }

    outlined destroy of NetworkConnectionProtocol?(v29, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    goto LABEL_21;
  }
}

unint64_t ConnectionEstablishmentReport.attemptDelayInMs.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32) | (v1 <= 0.0);
  if (*(v0 + 32) & 1 | (v1 <= 0.0) || (v3 = v1 * 1000.0, v3 <= 0.0))
  {
    v4 = 0;
    return v4 | ((v2 & 1) << 32);
  }

  if (v3 >= 4294967300.0)
  {
    v4 = 0xFFFFFFFFLL;
    return v4 | ((v2 & 1) << 32);
  }

  if (*&v3 >> 52 > 0x7FEuLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3 <= -1.0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v3 < 4294967300.0)
  {
    v4 = v3;
    return v4 | ((v2 & 1) << 32);
  }

LABEL_13:
  __break(1u);
  return result;
}

unint64_t ConnectionEstablishmentReport.durationInMs.getter()
{
  v1 = *(v0 + 40);
  if (*(v0 + 48) & 1 | (v1 <= 0.0))
  {
    return 0;
  }

  v2 = v1 * 1000.0;
  if (v2 <= 0.0)
  {
    return 0;
  }

  if (v2 >= 1.84467441e19)
  {
    return -1;
  }

  if (*&v2 >> 52 > 0x7FEuLL)
  {
    __break(1u);
  }

  else if (v2 > -1.0)
  {
    return v2;
  }

  __break(1u);
  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

unint64_t ConnectionHandshakeReport.debugDescription.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v21 = 0x20656D616ELL;
  v22 = 0xE500000000000000;
  v2 = v0[1];
  if (v2)
  {
    v3 = *v0;
  }

  else
  {
    v2 = 0xE700000000000000;
    v3 = 0x6E776F6E6B6E75;
  }

  outlined init with copy of ConnectionHandshakeReport(v0, &v19);
  MEMORY[0x223DE2180](v3, v2);

  v5 = v21;
  v4 = v22;
  v19 = 0;
  v20 = 0xE000000000000000;
  _StringGuts.grow(_:)(24);

  v19 = 0xD000000000000016;
  v20 = 0x80000002235F9D40;
  v6 = ConnectionHandshakeReport.handshakeDurationInMs.getter();
  if (v7)
  {
    v8 = 0xE700000000000000;
    v9 = 0x6E776F6E6B6E75;
  }

  else
  {
    v21 = v6;
    v9 = String.init<A>(describing:)();
    v8 = v10;
  }

  MEMORY[0x223DE2180](v9, v8);

  v12 = v19;
  v11 = v20;
  v19 = 0;
  v20 = 0xE000000000000000;
  _StringGuts.grow(_:)(19);

  v19 = 0xD000000000000011;
  v20 = 0x80000002235F9D60;
  v13 = ConnectionHandshakeReport.handshakeRTTInMs.getter();
  if ((v13 & 0x100000000) != 0)
  {
    v15 = 0xE700000000000000;
  }

  else
  {
    LODWORD(v21) = v13;
    v1 = String.init<A>(describing:)();
    v15 = v14;
  }

  MEMORY[0x223DE2180](v1, v15);

  v17 = v19;
  v16 = v20;
  v19 = 0;
  v20 = 0xE000000000000000;
  _StringGuts.grow(_:)(45);

  v19 = 0xD000000000000022;
  v20 = 0x80000002235F9D80;
  MEMORY[0x223DE2180](v5, v4);

  MEMORY[0x223DE2180](8236, 0xE200000000000000);
  MEMORY[0x223DE2180](v12, v11);

  MEMORY[0x223DE2180](8236, 0xE200000000000000);
  MEMORY[0x223DE2180](v17, v16);

  MEMORY[0x223DE2180](93, 0xE100000000000000);
  return v19;
}

unint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ConnectionHandshakeReport()
{
  v2 = *v0;
  *v3 = v0[1];
  *&v3[9] = *(v0 + 25);
  return ConnectionHandshakeReport.debugDescription.getter();
}

unint64_t ConnectionHandshakeReport.handshakeDurationInMs.getter()
{
  v1 = *(v0 + 16);
  if (*(v0 + 24) & 1 | (v1 <= 0.0))
  {
    return 0;
  }

  v2 = v1 * 1000.0;
  if (v2 <= 0.0)
  {
    return 0;
  }

  if (v2 >= 1.84467441e19)
  {
    return -1;
  }

  if (*&v2 >> 52 > 0x7FEuLL)
  {
    __break(1u);
  }

  else if (v2 > -1.0)
  {
    return v2;
  }

  __break(1u);
  return result;
}

unint64_t ConnectionHandshakeReport.handshakeRTTInMs.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40) | (v1 <= 0.0);
  if (*(v0 + 40) & 1 | (v1 <= 0.0) || (v3 = v1 * 1000.0, v3 <= 0.0))
  {
    v4 = 0;
    return v4 | ((v2 & 1) << 32);
  }

  if (v3 >= 4294967300.0)
  {
    v4 = 0xFFFFFFFFLL;
    return v4 | ((v2 & 1) << 32);
  }

  if (*&v3 >> 52 > 0x7FEuLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3 <= -1.0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v3 < 4294967300.0)
  {
    v4 = v3;
    return v4 | ((v2 & 1) << 32);
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t ConnectionResolutionReport.debugDescription.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0xE700000000000000;
  strcpy(v31, "source ");
  v31[1] = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  if ((*(v0 + 4) & 1) == 0)
  {
    LODWORD(v33) = *v0;
    v3 = String.init<A>(describing:)();
    v2 = v4;
  }

  MEMORY[0x223DE2180](v3, v2);

  v5 = v31[1];
  v30 = v31[0];
  strcpy(v31, "durationInMs ");
  HIWORD(v31[1]) = -4864;
  v6 = ConnectionResolutionReport.durationInMs.getter();
  if (v7)
  {
    v8 = 0xE700000000000000;
    v9 = 0x6E776F6E6B6E75;
  }

  else
  {
    v33 = v6;
    v9 = String.init<A>(describing:)();
    v8 = v10;
  }

  MEMORY[0x223DE2180](v9, v8);

  v11 = v31[1];
  v29 = v31[0];
  OUTLINED_FUNCTION_1_5();
  _StringGuts.grow(_:)(16);

  strcpy(v31, "endpointCount ");
  HIBYTE(v31[1]) = -18;
  if (*(v0 + 24))
  {
    v12 = 0xE700000000000000;
    v13 = 0x6E776F6E6B6E75;
  }

  else
  {
    LODWORD(v33) = *(v0 + 20);
    v13 = String.init<A>(describing:)();
    v12 = v14;
  }

  MEMORY[0x223DE2180](v13, v12);

  v15 = v31[1];
  v28 = v31[0];
  OUTLINED_FUNCTION_1_5();
  _StringGuts.grow(_:)(23);

  v33 = 0xD000000000000014;
  v34 = 0x80000002235F6EC0;
  v16 = *(v0 + 40);
  if (v16)
  {
    v17 = *(v0 + 48);
    v31[0] = *(v0 + 32);
    v31[1] = v16;
    v32 = v17;

    v18 = String.init<A>(describing:)();
    v20 = v19;
  }

  else
  {
    v20 = 0xE700000000000000;
    v18 = 0x6E776F6E6B6E75;
  }

  MEMORY[0x223DE2180](v18, v20);

  MEMORY[0x223DE2180](93, 0xE100000000000000);
  v21 = v33;
  v22 = v34;
  OUTLINED_FUNCTION_1_5();
  _StringGuts.grow(_:)(22);

  v33 = 0xD000000000000013;
  v34 = 0x80000002235F6EE0;
  v23 = *(v0 + 64);
  if (v23)
  {
    v24 = *(v0 + 72);
    v31[0] = *(v0 + 56);
    v31[1] = v23;
    v32 = v24;

    v1 = String.init<A>(describing:)();
    v26 = v25;
  }

  else
  {
    v26 = 0xE700000000000000;
  }

  MEMORY[0x223DE2180](v1, v26);

  MEMORY[0x223DE2180](93, 0xE100000000000000);
  OUTLINED_FUNCTION_1_5();
  _StringGuts.grow(_:)(54);
  MEMORY[0x223DE2180](0xD000000000000023, 0x80000002235F6F00);
  MEMORY[0x223DE2180](v30, v5);

  OUTLINED_FUNCTION_0_10();
  MEMORY[0x223DE2180](v29, v11);

  OUTLINED_FUNCTION_0_10();
  MEMORY[0x223DE2180](v28, v15);

  OUTLINED_FUNCTION_0_10();
  MEMORY[0x223DE2180](v21, v22);

  OUTLINED_FUNCTION_0_10();
  MEMORY[0x223DE2180](v33, v34);

  MEMORY[0x223DE2180](93, 0xE100000000000000);
  return v31[0];
}

unint64_t ConnectionResolutionReport.durationInMs.getter()
{
  v1 = *(v0 + 8);
  if (*(v0 + 16) & 1 | (v1 <= 0.0))
  {
    return 0;
  }

  v2 = v1 * 1000.0;
  if (v2 <= 0.0)
  {
    return 0;
  }

  if (v2 >= 1.84467441e19)
  {
    return -1;
  }

  if (*&v2 >> 52 > 0x7FEuLL)
  {
    __break(1u);
  }

  else if (v2 > -1.0)
  {
    return v2;
  }

  __break(1u);
  return result;
}

void ConnectionEstablishmentReport.netConnectionStateReadySnapshot.getter()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D58BE8]) init];
  v2 = v1;
  if (v1)
  {
    v3 = *(v0 + 1);
    if (v3)
    {
      v4 = *v0;
      v5 = v1;
      v3 = MEMORY[0x223DE2070](*&v4, v3);
    }

    else
    {
      v6 = v1;
    }

    [v2 setConnectionInfo_];
  }

  if (v0[4])
  {
    goto LABEL_18;
  }

  v7 = v0[3];
  if (v7 <= 0.0)
  {
    goto LABEL_18;
  }

  v8 = v7 * 1000.0;
  if (v8 <= 0.0)
  {
    v14 = 0;
  }

  else
  {
    if (v8 < 4294967300.0)
    {
      OUTLINED_FUNCTION_0_58();
      if (!v11 & v10)
      {
        __break(1u);
      }

      else if (v9 > -1.0)
      {
        OUTLINED_FUNCTION_1_34();
        if (!v13)
        {
          goto LABEL_23;
        }

        v14 = v12;
        goto LABEL_17;
      }

      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    v14 = 0xFFFFFFFFLL;
  }

LABEL_17:
  [v2 setConnectionEstablishmentAttemptDelay_];
LABEL_18:
  if ((*(v0 + 20) & 1) == 0)
  {
    [v2 setConnectionEstablishmentPreviousAttemptCount_];
  }
}

void ConnectionEstablishmentReport.netDebugConnectionStateReadySnapshot.getter()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D58B90]) init];
  v2 = ConnectionEstablishmentReport.durationInMs.getter();
  if ((v3 & 1) == 0)
  {
    [v1 setDurationInMs_];
  }

  if (v1)
  {
    v4 = objc_allocWithZone(MEMORY[0x277D58C08]);
    v5 = v1;
    v6 = [v4 init];
    [v5 setProxyConfiguration_];

    v7 = [v5 proxyConfiguration];
    if (v7)
    {
      v8 = v7;
      [v7 setIsProxyConfigured_];
    }

    v9 = [v5 proxyConfiguration];
    if (v9)
    {
      v10 = v9;
      [v9 setUsingConfiguredProxy_];
    }
  }

  v11 = *(v0 + 56);
  v12 = *(v11 + 16);
  v13 = MEMORY[0x277D84F90];
  v57 = v1;
  if (v12)
  {
    v56 = v0;
    __dst[0] = MEMORY[0x277D84F90];
    v14 = (v11 + 72);
    v15 = MEMORY[0x277D84F90];
    while (1)
    {
      v17 = *(v14 - 5);
      v16 = *(v14 - 4);
      v18 = *(v14 - 3);
      v19 = *(v14 - 16);
      v20 = *(v14 - 1);
      v21 = *v14;
      v22 = objc_allocWithZone(MEMORY[0x277D58BD8]);

      v23 = [v22 init];
      if ((v19 & 1) == 0 && v18 > 0.0)
      {
        if (v18 * 1000.0 <= 0.0)
        {
          v28 = 0;
        }

        else
        {
          OUTLINED_FUNCTION_1_34();
          if (v24)
          {
            OUTLINED_FUNCTION_0_58();
            if (!v27 & v26)
            {
              __break(1u);
LABEL_82:
              __break(1u);
LABEL_83:
              __break(1u);
LABEL_84:
              __break(1u);
LABEL_85:
              __break(1u);
LABEL_86:
              __break(1u);
LABEL_87:
              __break(1u);
              return;
            }

            if (v25 <= -1.0)
            {
              goto LABEL_84;
            }

            v28 = v25;
          }

          else
          {
            v28 = -1;
          }
        }

        [v23 setHandShakeDuration_];
      }

      if (v20 <= 0.0)
      {
        v29 = 1;
      }

      else
      {
        v29 = v21;
      }

      if ((v29 & 1) == 0)
      {
        if (v20 * 1000.0 <= 0.0)
        {
          v32 = 0;
        }

        else if (v20 * 1000.0 >= 4294967300.0)
        {
          v32 = 0xFFFFFFFFLL;
        }

        else
        {
          OUTLINED_FUNCTION_0_58();
          if (!v27 & v26)
          {
            goto LABEL_82;
          }

          if (v30 <= -1.0)
          {
            goto LABEL_85;
          }

          OUTLINED_FUNCTION_1_34();
          if (!v24)
          {
            goto LABEL_87;
          }

          v32 = v31;
        }

        [v23 setHandShakeRTT_];
      }

      if (v16)
      {
        if (v23)
        {
          type metadata accessor for NetworkAnalytics(0);
          v33 = v23;
          [v33 setProtocol_];

LABEL_38:
          v34 = v23;
          MEMORY[0x223DE2240]();
          if (*((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v15 = __dst[0];
          goto LABEL_42;
        }
      }

      else if (v23)
      {
        goto LABEL_38;
      }

LABEL_42:
      v14 += 48;
      if (!--v12)
      {
        if (v1)
        {
          outlined bridged method (mbnn) of @objc NETSchemaNETDebugNetworkConnectionStatePreparationSnapshotCaptured.pathGateways.setter(v15, v1, &lazy cache variable for type metadata for NETSchemaNETHandShakeProtocol, 0x277D58BD8, &selRef_setConnectionEstablishmentProtocols_);
        }

        else
        {
        }

        v13 = MEMORY[0x277D84F90];
        v0 = v56;
        break;
      }
    }
  }

  v35 = *(v0 + 64);
  v36 = *(v35 + 16);
  if (!v36)
  {
    return;
  }

  v37 = v13;
  v60 = v13;
  v38 = (v35 + 32);
  for (i = v36 - 1; ; --i)
  {
    memcpy(__dst, v38, sizeof(__dst));
    v40 = *&__dst[1];
    v41 = __dst[2];
    v42 = objc_allocWithZone(MEMORY[0x277D58BD0]);
    outlined init with copy of ConnectionResolutionReport(__dst, v58);
    v43 = [v42 init];
    if ((v41 & 1) == 0 && v40 > 0.0)
    {
      if (v40 * 1000.0 <= 0.0)
      {
        v45 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_1_34();
        if (v24)
        {
          OUTLINED_FUNCTION_0_58();
          if (!v27 & v26)
          {
            goto LABEL_83;
          }

          if (v44 <= -1.0)
          {
            goto LABEL_86;
          }

          v45 = v44;
        }

        else
        {
          v45 = -1;
        }
      }

      [v43 setDuration_];
    }

    if ((__dst[3] & 1) == 0)
    {
      [v43 setEndpointCount_];
    }

    if ((__dst[0] & 0x100000000) == 0)
    {
      [v43 setResolutionSource_];
    }

    if (__dst[5])
    {
      v46 = __dst[6];
      v47 = [objc_allocWithZone(MEMORY[0x277D58BC0]) init];
      if (v47)
      {
        v48 = v47;
        [v47 setPort_];
        type metadata accessor for NetworkAnalytics(0);
        [v48 setType_];
        v49 = v43;
        [v49 setSuccessfulEndpoint_];
      }
    }

    if (!__dst[8] || (v50 = __dst[9], (v51 = [objc_allocWithZone(MEMORY[0x277D58BC0]) init]) == 0))
    {
      outlined destroy of ConnectionResolutionReport(__dst);
      if (!v43)
      {
        goto LABEL_74;
      }

      goto LABEL_71;
    }

    v52 = v51;
    [v51 setPort_];
    type metadata accessor for NetworkAnalytics(0);
    [v52 setType_];
    if (!v43)
    {
      break;
    }

    v53 = v43;
    v54 = v52;
    [v53 setPreferredEndpoint_];
    outlined destroy of ConnectionResolutionReport(__dst);

LABEL_71:
    v55 = v43;
    MEMORY[0x223DE2240]();
    if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v37 = v60;
LABEL_74:
    if (!i)
    {
      goto LABEL_77;
    }

LABEL_75:
    v38 += 80;
  }

  outlined destroy of ConnectionResolutionReport(__dst);

  if (i)
  {
    goto LABEL_75;
  }

LABEL_77:
  if (v57)
  {
    outlined bridged method (mbnn) of @objc NETSchemaNETDebugNetworkConnectionStatePreparationSnapshotCaptured.pathGateways.setter(v37, v57, &lazy cache variable for type metadata for NETSchemaNETEstablishmentResolution, 0x277D58BD0, &selRef_setResolutions_);
  }

  else
  {
  }
}

uint64_t static NetworkAnalytics.netProtocol(from:)()
{
  String.lowercased()();
  OUTLINED_FUNCTION_10_12();
  v3 = v3 && v2 == 0xE300000000000000;
  if (v3 || (v4 = v1, (OUTLINED_FUNCTION_4_29() & 1) != 0))
  {

    return 1;
  }

  else
  {
    v6 = v4 == 7564404 && v0 == 0xE300000000000000;
    if (v6 || (OUTLINED_FUNCTION_4_29() & 1) != 0)
    {

      return 2;
    }

    else if (v4 == 1886680168 && v0 == 0xE400000000000000)
    {

      return 3;
    }

    else
    {
      OUTLINED_FUNCTION_4_29();
      OUTLINED_FUNCTION_12_11();
      if (v4)
      {
        return 3;
      }

      else
      {
        return 0;
      }
    }
  }
}

uint64_t outlined destroy of ConnectionEstablishmentReport?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork29ConnectionEstablishmentReportVSgMd, _s11SiriNetwork29ConnectionEstablishmentReportVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void closure #1 in Connection.willStartConnection(_:with:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_65_3(a1);
  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v6, static Logger.siriNetwork);
    swift_unknownObjectRetain();

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    swift_unknownObjectRelease();
    if (os_log_type_enabled(v7, v8))
    {
      OUTLINED_FUNCTION_30();
      v9 = swift_slowAlloc();
      v20[0] = OUTLINED_FUNCTION_58_2();
      *v9 = 136315394;
      v10 = *(a2 + 448);
      if (v10 >= 2)
      {
        v20[1] = *(a2 + 440);
        v20[2] = v10;

        v12 = String.init<A>(describing:)();
        v11 = v13;
      }

      else
      {
        OUTLINED_FUNCTION_46_4();
        v11 = 0xE700000000000000;
        v12 = OUTLINED_FUNCTION_3_18();
      }

      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, v20);
      OUTLINED_FUNCTION_53_4();

      *(v9 + 4) = v2;
      *(v9 + 12) = 2080;
      v14 = Dictionary.description.getter();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v20);
      OUTLINED_FUNCTION_53_4();

      *(v9 + 14) = v2;
      _os_log_impl(&dword_223515000, v7, v8, "Connection - Start: Background Connection. Connection route %s will start, HTTP Header %s.", v9, 0x16u);
      swift_arrayDestroy();
      v16 = OUTLINED_FUNCTION_2_0();
      MEMORY[0x223DE38F0](v16);
      OUTLINED_FUNCTION_2_2();
      MEMORY[0x223DE38F0]();
    }

    OUTLINED_FUNCTION_8();
    swift_beginAccess();
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v18 = v17;
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      [v18 willStartConnection:v5 with:isa];
      swift_unknownObjectRelease();
    }
  }
}

void partial apply for closure #1 in Connection.willStartConnection(_:with:)()
{
  v1 = v0[4];
  v2 = v0[5];
  closure #1 in Connection.willStartConnection(_:with:)(v0[2], v0[3]);
}

void closure #1 in Connection.didOpenConnectionType(_:type:routeId:delay:)(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, double a6)
{
  OUTLINED_FUNCTION_65_3(a1);
  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = BackgroundConnection.getConnectionMethod()();
    countAndFlagsBits = v13._countAndFlagsBits;
    v15 = OBJC_IVAR___SNConnectionInternal_activeBackgroundConnection;
    v16 = *&v12[OBJC_IVAR___SNConnectionInternal_activeBackgroundConnection];
    if (!v16)
    {
      if (one-time initialization token for siriNetwork != -1)
      {
        OUTLINED_FUNCTION_0_8();
        swift_once();
      }

      v78 = a3;
      v24 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_58(v24, static Logger.siriNetwork);

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v76 = a4;
        v77 = a5;
        OUTLINED_FUNCTION_30();
        v27 = swift_slowAlloc();
        __dst[0] = OUTLINED_FUNCTION_58_2();
        *v27 = 136315394;
        v28 = a2[56];
        if (v28 >= 2)
        {
          v83 = a2[55];
          v84 = v28;

          a5 = String.init<A>(describing:)();
          v29 = v47;
        }

        else
        {
          OUTLINED_FUNCTION_19_7();
          v29 = 0xE700000000000000;
        }

        v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a5, v29, __dst);

        *(v27 + 4) = v48;
        *(v27 + 12) = 2080;
        countAndFlagsBits = v13._countAndFlagsBits;
        *(v27 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13._countAndFlagsBits, v13._object, __dst);
        _os_log_impl(&dword_223515000, v25, v26, "Connection - Status: Background Connection. Connection route %s ready. Method %s", v27, 0x16u);
        swift_arrayDestroy();
        v49 = OUTLINED_FUNCTION_1_2();
        MEMORY[0x223DE38F0](v49);
        OUTLINED_FUNCTION_2_2();
        MEMORY[0x223DE38F0]();

        a4 = v76;
        a5 = v77;
      }

      else
      {
      }

      v50 = *&v12[v15];
      *&v12[v15] = a2;

      v52 = a2[55];
      v51 = a2[56];
      memcpy(v80, a2 + 57, 0x62uLL);
      if (v51 != 1)
      {
        v53 = &v12[OBJC_IVAR___SNConnectionInternal_activeRoute];
        memcpy(__dst, &v12[OBJC_IVAR___SNConnectionInternal_activeRoute], 0x72uLL);
        *v53 = v52;
        v53[1] = v51;
        memcpy(v53 + 2, v80, 0x62uLL);
        v83 = v52;
        v84 = v51;
        memcpy(v85, v80, sizeof(v85));
        outlined init with copy of ConnectionPolicyRoute(&v83, v81);
        outlined destroy of NetworkConnectionProtocol?(__dst, &_s11SiriNetwork21ConnectionPolicyRouteVSgMd, &_s11SiriNetwork21ConnectionPolicyRouteVSgMR);
      }

      OUTLINED_FUNCTION_8();
      swift_beginAccess();
      v54 = swift_unknownObjectWeakLoadStrong();
      if (v54)
      {
        v55 = v54;
        v56 = qword_2235F4928[v78];
        v57 = objc_allocWithZone(type metadata accessor for ConnectionTypeWrapper());
        v58 = OUTLINED_FUNCTION_15_8();
        v59 = ConnectionTypeWrapper.init(_:)(v58);
        if (a5)
        {
          v60 = MEMORY[0x223DE2070](a4, a5);
        }

        else
        {
          v60 = 0;
        }

        v61 = MEMORY[0x223DE2070](countAndFlagsBits, v13._object);
        [v55 didOpenConnectionType:v12 type:v59 routeId:v60 delay:v61 method:a6];
        swift_unknownObjectRelease();
      }

      v62 = OBJC_IVAR___SNConnectionInternal_connectionMethodUsedHistory;
      OUTLINED_FUNCTION_27_3();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v63 = *(*&v12[v62] + 16);
      specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v63);
      v64 = *&v12[v62];
      *(v64 + 16) = v63 + 1;
      v65 = v64 + 16 * v63;
      *(v65 + 32) = countAndFlagsBits;
      *(v65 + 40) = v13._object;
      *&v12[v62] = v64;
      swift_endAccess();
      v66 = *&v12[OBJC_IVAR___SNConnectionInternal_activeConnectionGroup];
      dispatch_group_leave(v66);

LABEL_35:
      return;
    }

    if (v16 != a2)
    {
      if (one-time initialization token for siriNetwork != -1)
      {
        OUTLINED_FUNCTION_0_8();
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_58(v17, static Logger.siriNetwork);

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v18, v19))
      {
        OUTLINED_FUNCTION_30();
        v20 = swift_slowAlloc();
        __dst[0] = OUTLINED_FUNCTION_58_2();
        *v20 = 136315394;
        v21 = a2[56];
        if (v21 >= 2)
        {
          v83 = a2[55];
          v84 = v21;

          v22 = String.init<A>(describing:)();
          v23 = v38;
        }

        else
        {
          v22 = 0x6E776F6E6B6E75;
          OUTLINED_FUNCTION_46_4();
          v23 = 0xE700000000000000;
        }

        v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, __dst);

        *(v20 + 4) = v39;
        *(v20 + 12) = 2080;
        v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13._countAndFlagsBits, v13._object, __dst);

        *(v20 + 14) = v40;
        OUTLINED_FUNCTION_52_5();
        _os_log_impl(v41, v42, v43, v44, v45, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_2_2();
        MEMORY[0x223DE38F0]();
        v46 = OUTLINED_FUNCTION_2_0();
        MEMORY[0x223DE38F0](v46);
      }

      else
      {
      }

      BackgroundConnection.cancel()();
      OUTLINED_FUNCTION_27_3();
      specialized Set._Variant.remove(_:)(a2);
      swift_endAccess();

      memcpy(__dst, a2 + 55, 0x72uLL);
      if (__dst[1] != 1)
      {
        v83 = __dst[0];
        v84 = __dst[1];
        memcpy(v85, a2 + 57, sizeof(v85));
        OUTLINED_FUNCTION_27_3();
        memcpy(v80, __dst, 0x72uLL);
        outlined init with copy of ConnectionPolicyRoute(v80, v81);
        specialized Set._Variant.remove(_:)(&v83, __src);
        memcpy(v81, __src, 0x72uLL);
        swift_endAccess();
        outlined destroy of NetworkConnectionProtocol?(v81, &_s11SiriNetwork21ConnectionPolicyRouteVSgMd, &_s11SiriNetwork21ConnectionPolicyRouteVSgMR);

        outlined destroy of NetworkConnectionProtocol?(__dst, &_s11SiriNetwork21ConnectionPolicyRouteVSgMd, &_s11SiriNetwork21ConnectionPolicyRouteVSgMR);
        return;
      }

      goto LABEL_35;
    }

    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v30, static Logger.siriNetwork);

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_4_3();
      v34 = swift_slowAlloc();
      __dst[0] = v34;
      *v33 = 136315138;
      v35 = a2[56];
      if (v35 >= 2)
      {
        v83 = a2[55];
        v84 = v35;

        v36 = String.init<A>(describing:)();
        v37 = v67;
      }

      else
      {
        v36 = 0x6E776F6E6B6E75;
        OUTLINED_FUNCTION_46_4();
        v37 = 0xE700000000000000;
      }

      v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, __dst);

      *(v33 + 4) = v68;
      OUTLINED_FUNCTION_6_0();
      _os_log_impl(v69, v70, v71, v72, v73, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      v74 = OUTLINED_FUNCTION_2_0();
      MEMORY[0x223DE38F0](v74);
      v75 = OUTLINED_FUNCTION_1_2();
      MEMORY[0x223DE38F0](v75);
    }
  }
}

Swift::String __swiftcall BackgroundConnection.getConnectionMethod()()
{
  OUTLINED_FUNCTION_133();
  v2 = *(v0 + 1136);
  OUTLINED_FUNCTION_78_1(v11);
  OUTLINED_FUNCTION_78_1(__src);
  if (*(v0 + 1080))
  {
    OUTLINED_FUNCTION_134();
    v3 = *(v1 + 280);
    outlined init with copy of ConnectionConfiguration(v11, __dst);
    swift_unknownObjectRetain();
    v4 = OUTLINED_FUNCTION_0_36();
    v5 = v3(v4);
    swift_unknownObjectRelease();
  }

  else
  {
    outlined init with copy of ConnectionConfiguration(v11, __dst);
    v5 = 0;
  }

  ConnectionMethod.connectionMethodDescription(connectionConfiguration:isMPTCP:)(__src, v5 & 1, v2);
  memcpy(__dst, __src, 0x204uLL);
  outlined destroy of ConnectionConfiguration(__dst);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_106_0();
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

uint64_t specialized Array._makeUniqueAndReserveCapacityIfNotUnique()()
{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return MEMORY[0x2821FC240]();
}

uint64_t specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(uint64_t a1)
{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

uint64_t specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

void closure #1 in NetworkConnectionProvider.handleViabilityUpdate(_:)(uint64_t a1, unsigned __int8 a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    outlined init with copy of NetworkConnectionProtocol?(v4 + 16, v27, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
    v5 = v27[3];
    outlined destroy of NetworkConnectionProtocol?(v27, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
    if (v5 && (*(v4 + 2099) & 1) == 0)
    {
      if (*(v4 + 2098) != (a2 & 1))
      {
        if (one-time initialization token for siriNetwork != -1)
        {
          swift_once();
        }

        v14 = type metadata accessor for Logger();
        __swift_project_value_buffer(v14, static Logger.siriNetwork);
        swift_retain_n();
        v15 = Logger.logObject.getter();
        v16 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v27[0] = v18;
          *v17 = 136315650;
          v19 = NetworkConnectionProvider.connectionIdentifier.getter();
          v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v27);

          *(v17 + 4) = v21;
          *(v17 + 12) = 1024;
          LODWORD(v21) = *(v4 + 2098);

          *(v17 + 14) = v21;

          *(v17 + 18) = 1024;
          *(v17 + 20) = a2 & 1;
          _os_log_impl(&dword_223515000, v15, v16, "Provider - NetworkConnectionProvider [%s]: Viability updated from %{BOOL}d to %{BOOL}d", v17, 0x18u);
          __swift_destroy_boxed_opaque_existential_0(v18);
          MEMORY[0x223DE38F0](v18, -1, -1);
          MEMORY[0x223DE38F0](v17, -1, -1);
        }

        else
        {
        }
      }

      v22 = *(v4 + 2098) ^ a2;
      if (*(v4 + 2100) == 1)
      {
        if ((*(v4 + 2098) ^ a2))
        {
          v23 = a2 & 1;
          *(v4 + 2098) = a2 & 1;
          v24 = swift_unknownObjectWeakLoadStrong();
          if (v24)
          {
            v25 = v24;

            specialized BackgroundConnection.connectionProvider(_:receivedViabilityChangeNotification:)(v26, v23, v25);
            swift_unknownObjectRelease();

            return;
          }
        }
      }

      else if ((*(v4 + 2098) ^ a2))
      {
        *(v4 + 2098) = a2 & 1;
        if (a2)
        {
          specialized ConnectionProviderProtocol.cancelConnectionUnviableTimer()();
        }

        else if (!*(v4 + 2136))
        {
          specialized ConnectionProviderProtocol.setupConnectionUnviableTimer()();
        }
      }
    }

    else
    {
      if (one-time initialization token for siriNetwork != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      __swift_project_value_buffer(v6, static Logger.siriNetwork);

      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v27[0] = v10;
        *v9 = 136315138;
        v11 = NetworkConnectionProvider.connectionIdentifier.getter();
        v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v27);

        *(v9 + 4) = v13;
        _os_log_impl(&dword_223515000, v7, v8, "Provider - NetworkConnectionProvider [%s]: Viability updated, but connection does not exist or cancelled", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v10);
        MEMORY[0x223DE38F0](v10, -1, -1);
        MEMORY[0x223DE38F0](v9, -1, -1);
      }
    }
  }
}

SiriNetwork::NetworkActivityLabel_optional __swiftcall NetworkActivityLabel.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 11;
  if (rawValue < 0xB)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  MEMORY[0x223DE2980](a2);
  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  MEMORY[0x223DE2980](a2 + 1);
  return Hasher._finalize()();
}

id SpeechPacket.init()()
{
  v1 = &v0[OBJC_IVAR___SNSpeechPacketInternal_internalAceId];
  *v1 = 0;
  *(v1 + 1) = 0;
  v2 = &v0[OBJC_IVAR___SNSpeechPacketInternal_internalRefId];
  *v2 = 0;
  *(v2 + 1) = 0;
  *&v0[OBJC_IVAR___SNSpeechPacketInternal_packets] = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR___SNSpeechPacketInternal_packetNumber] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for SpeechPacket();
  return objc_msgSendSuper2(&v4, sel_init);
}

void Connection.sendCommands(_:with:)()
{
  OUTLINED_FUNCTION_46();
  v6 = OUTLINED_FUNCTION_30_6();
  v7 = OUTLINED_FUNCTION_0_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_1();
  v28 = OUTLINED_FUNCTION_8_1();
  v12 = OUTLINED_FUNCTION_0_0(v28);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7();
  v27 = *(v5 + OBJC_IVAR___SNConnectionInternal_connectionQueue);
  OUTLINED_FUNCTION_7_1();
  v17 = swift_allocObject();
  OUTLINED_FUNCTION_28_0(v17);
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  v18[2] = v2;
  v18[3] = v4;
  v18[4] = v3;
  v18[5] = v0;
  v29[4] = partial apply for closure #1 in Connection.sendCommands(_:with:);
  v29[5] = v18;
  OUTLINED_FUNCTION_1_1();
  v29[1] = 1107296256;
  OUTLINED_FUNCTION_3_5();
  v29[2] = v19;
  v29[3] = &block_descriptor_17;
  v20 = _Block_copy(v29);

  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_1_24();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(v21, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  OUTLINED_FUNCTION_3_0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v23 = OUTLINED_FUNCTION_6();
  MEMORY[0x223DE2460](v23);
  _Block_release(v20);
  v24 = *(v9 + 8);
  v25 = OUTLINED_FUNCTION_3_2();
  v26(v25);
  (*(v14 + 8))(v1, v28);
  OUTLINED_FUNCTION_39_0();

  OUTLINED_FUNCTION_47();
}

uint64_t specialized Connection.accessPotentiallyActiveConnections(_:)(uint64_t a1, unint64_t a2, void (*a3)(uint64_t, void *), uint64_t a4)
{
  if (*(a1 + OBJC_IVAR___SNConnectionInternal_isCanceledInternal) == 1)
  {
LABEL_2:
    closure #1 in closure #1 in Connection.sendCommands(_:with:)(0, a2, a3, a4);
LABEL_3:

    return outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(a3);
  }

  if (*(a1 + OBJC_IVAR___SNConnectionInternal_activeBackgroundConnection))
  {
    v8 = *(a1 + OBJC_IVAR___SNConnectionInternal_activeBackgroundConnection);

    closure #1 in closure #1 in Connection.sendCommands(_:with:)(v9, a2, a3, a4);

    return outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(a3);
  }

  v11 = OBJC_IVAR___SNConnectionInternal_pendingBackgroundConnections;
  swift_beginAccess();
  v12 = *(a1 + v11);

  result = specialized Set.isEmpty.getter(v13);
  if (result)
  {

    goto LABEL_2;
  }

  if ((v12 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for BackgroundConnection();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type BackgroundConnection and conformance BackgroundConnection, type metadata accessor for BackgroundConnection);
    result = Set.Iterator.init(_cocoa:)();
    v12 = v27;
    v14 = v28;
    v15 = v29;
    v16 = v30;
    v17 = v31;
  }

  else
  {
    v16 = 0;
    v18 = -1 << *(v12 + 32);
    v14 = v12 + 56;
    v15 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v17 = v20 & *(v12 + 56);
  }

  v21 = (v15 + 64) >> 6;
  while (v12 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (type metadata accessor for BackgroundConnection(), swift_dynamicCast(), v24 = v17, !v26))
    {
LABEL_26:
      outlined consume of Set<MessageCenterUser>.Iterator._Variant();
      goto LABEL_3;
    }

LABEL_25:

    BackgroundConnection.sendCommands(_:with:)(a2, a3, a4);

    v17 = v24;
  }

  v22 = v16;
  v23 = v17;
  if (v17)
  {
LABEL_21:
    v24 = (v23 - 1) & v23;
    v25 = *(*(v12 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v23)))));

    if (!v25)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  while (1)
  {
    v16 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v16 >= v21)
    {
      goto LABEL_26;
    }

    v23 = *(v14 + 8 * v16);
    ++v22;
    if (v23)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in Connection.sendCommands(_:with:)(uint64_t result, unint64_t a2, void (*a3)(uint64_t, void *), uint64_t a4)
{
  if (!result)
  {
    if (a2 >> 62)
    {
      result = __CocoaSet.count.getter();
      v7 = result;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v7)
      {
        return result;
      }
    }

    if (v7 < 1)
    {
      __break(1u);
      return result;
    }

    v8 = 0;
    while ((a2 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x223DE2730](v8, a2);
      if (a3)
      {
        goto LABEL_11;
      }

LABEL_12:
      ++v8;
      result = swift_unknownObjectRelease();
      if (v7 == v8)
      {
        return result;
      }
    }

    v9 = *(a2 + 8 * v8 + 32);
    swift_unknownObjectRetain();
    if (!a3)
    {
      goto LABEL_12;
    }

LABEL_11:
    lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
    v10 = swift_allocError();
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = 3;
    *(v11 + 24) = xmmword_2235F01E0;
    a3(v9, v10);

    goto LABEL_12;
  }

  BackgroundConnection.sendCommands(_:with:)(a2, a3, a4);
}

uint64_t BackgroundConnection.sendCommands(_:with:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  result = specialized Array.count.getter(a1);
  v7 = 0;
  v13 = result;
  while (v13 != v7)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x223DE2730](v7, a1);
      v8 = result;
    }

    else
    {
      if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v8 = *(a1 + 8 * v7 + 32);
      result = swift_unknownObjectRetain();
    }

    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }

    if (a1 >> 62)
    {
      result = __CocoaSet.count.getter();
    }

    else
    {
      result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (__OFSUB__(result, 1))
    {
      goto LABEL_16;
    }

    v9 = v7 != result - 1;
    OUTLINED_FUNCTION_109();
    v10 = swift_allocObject();
    v10[2] = a2;
    v10[3] = a3;
    v10[4] = v8;
    v11 = OUTLINED_FUNCTION_32();
    outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(v11);
    v12 = swift_unknownObjectRetain();
    BackgroundConnection.sendCommand(_:moreComing:with:)(v12, v9, partial apply for closure #1 in BackgroundConnection.sendCommands(_:with:), v10);
    swift_unknownObjectRelease();

    ++v7;
  }

  return result;
}

uint64_t sub_223568A54()
{
  if (v0[2])
  {
    v1 = v0[3];
  }

  v2 = v0[4];
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_109();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

void OUTLINED_FUNCTION_74(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 300);
  v9 = *(v6 - 300);

  _os_log_impl(a1, v4, v9, a4, v5, 0x20u);
}

uint64_t partial apply for closure #1 in BackgroundConnection.sendCommands(_:with:)(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v4 = v1 + 24;
    v3 = *(v1 + 24);
    return v2(*(v4 + 8), result);
  }

  return result;
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned SNSessionObject?, @unowned NSError?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

Swift::Void __swiftcall BackgroundConnection.updateFirstByteReadTime()()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCAC38]) init];
  [v1 systemUptime];
  v3 = v2;

  *(v0 + 1216) = v3;
}

const __CFString *CommunicationProtocolAce.consumeHttpHeader(withData:)()
{
  v3 = v1;
  v4 = v0;
  v5 = *(v0 + 104);
  if (!v5)
  {
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v22, static Logger.siriNetwork);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      OUTLINED_FUNCTION_17_5();
      v25 = swift_slowAlloc();
      OUTLINED_FUNCTION_40_2(v25);
      OUTLINED_FUNCTION_44_2();
      _os_log_impl(v26, v27, v28, v29, v30, v31);
      v32 = OUTLINED_FUNCTION_1_2();
      MEMORY[0x223DE38F0](v32);
    }

    return 0;
  }

  v6 = v5;
  v7 = OUTLINED_FUNCTION_41_0();
  v9 = CommunicationProtocolAce.parseHttpHeaderData(_:partialMessage:)(v7, v8);
  if (v1)
  {
LABEL_20:
    v56 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      v57 = v88 == 4 && v84 == 4;
      if (v57 && !(v86 | v85 | v87))
      {
        OUTLINED_FUNCTION_32_0();
        if (!v57)
        {
          OUTLINED_FUNCTION_0_8();
          swift_once();
        }

        v73 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_58(v73, static Logger.siriNetwork);
        v74 = Logger.logObject.getter();
        v75 = static os_log_type_t.default.getter();
        v76 = OUTLINED_FUNCTION_16_0();
        if (os_log_type_enabled(v76, v77))
        {
          OUTLINED_FUNCTION_6_5();
          v78 = swift_slowAlloc();
          OUTLINED_FUNCTION_28_3();
          v79 = swift_slowAlloc();
          *v78 = 138412290;
          lazy protocol witness table accessor for type BackgroundConnectionError and conformance BackgroundConnectionError();
          OUTLINED_FUNCTION_10_0();
          swift_allocError();
          *v80 = 4;
          *(v80 + 8) = 0;
          *(v80 + 16) = 0;
          *(v80 + 24) = 0;
          *(v80 + 32) = 4;
          v81 = _swift_stdlib_bridgeErrorToNSError();
          *(v78 + 4) = v81;
          *v79 = v81;
          _os_log_impl(&dword_223515000, v74, v75, "CommunicationProtocol - Ace header: Need more data to read Http Header %@", v78, 0xCu);
          outlined destroy of NetworkConnectionProtocol?(v79, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v82 = OUTLINED_FUNCTION_7_2();
          MEMORY[0x223DE38F0](v82);
          v83 = OUTLINED_FUNCTION_1_2();
          MEMORY[0x223DE38F0](v83);
        }

        return 0;
      }

      outlined consume of BackgroundConnectionError(v84, v85, v86, v87, v88);
    }

    OUTLINED_FUNCTION_32_0();
    if (!v57)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v58, static Logger.siriNetwork);
    v59 = v3;
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v60, v61))
    {
      OUTLINED_FUNCTION_6_5();
      v62 = swift_slowAlloc();
      OUTLINED_FUNCTION_28_3();
      v2 = swift_slowAlloc();
      *v62 = 138412290;
      v63 = v3;
      v64 = _swift_stdlib_bridgeErrorToNSError();
      *(v62 + 4) = v64;
      *v2 = v64;
      OUTLINED_FUNCTION_18_5();
      _os_log_impl(v65, v66, v67, v68, v69, v70);
      outlined destroy of NetworkConnectionProtocol?(v2, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v71 = OUTLINED_FUNCTION_7_2();
      MEMORY[0x223DE38F0](v71);
      v72 = OUTLINED_FUNCTION_2_0();
      MEMORY[0x223DE38F0](v72);
    }

    swift_willThrow();
    return v2;
  }

  v11 = v9;
  if (v9 == 200)
  {
    v2 = v10;
    OUTLINED_FUNCTION_32_0();
    if (!v57)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v12, static Logger.siriNetwork);
    v13 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    v14 = OUTLINED_FUNCTION_10_4();
    if (os_log_type_enabled(v14, v15))
    {
      OUTLINED_FUNCTION_17_5();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_74_0();
      _os_log_impl(v16, v17, v18, v19, v20, 2u);
      v21 = OUTLINED_FUNCTION_4_0();
      MEMORY[0x223DE38F0](v21);
    }

    *(v4 + 104) = 0;
    return v2;
  }

  v33 = [objc_opt_self() localizedStringForStatusCode_];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  OUTLINED_FUNCTION_32_0();
  if (!v57)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_58(v36, static Logger.siriNetwork);

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v37, v38))
  {
    OUTLINED_FUNCTION_30();
    v39 = swift_slowAlloc();
    OUTLINED_FUNCTION_4_3();
    v84 = swift_slowAlloc();
    *v39 = 134218242;
    *(v39 + 4) = v11;
    *(v39 + 12) = 2080;
    v40 = OUTLINED_FUNCTION_57();
    *(v39 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, v42);
    OUTLINED_FUNCTION_74_0();
    _os_log_impl(v43, v44, v45, v46, v47, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v84);
    v48 = OUTLINED_FUNCTION_5_14();
    MEMORY[0x223DE38F0](v48);
    v49 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x223DE38F0](v49);
  }

  result = __CFStringMakeConstantString("Location");
  if (result)
  {
    v51 = result;
    v52 = OUTLINED_FUNCTION_14_3();
    v54 = CFHTTPMessageCopyHeaderFieldValue(v52, v53);

    lazy protocol witness table accessor for type BackgroundConnectionError and conformance BackgroundConnectionError();
    OUTLINED_FUNCTION_10_0();
    v3 = swift_allocError();
    *v55 = v11;
    *(v55 + 8) = v54;
    *(v55 + 16) = v2;
    *(v55 + 24) = v35;
    *(v55 + 32) = 0;
    swift_willThrow();
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t CommunicationProtocolAce.parseHttpHeaderData(_:partialMessage:)(uint64_t *a1, void *a2)
{
  OUTLINED_FUNCTION_7_1();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = MEMORY[0x223DE13E0](*a1, a1[1]);
  v7 = *a1;
  v8 = a1[1];
  v9 = a2;
  OUTLINED_FUNCTION_72_0();

  specialized Data.withUnsafeBytes<A>(_:)(v7, v8, v2, v6, v5, &v18);
  v11 = v10;
  if (v2)
  {
  }

  else
  {
    OUTLINED_FUNCTION_25_2();
    swift_beginAccess();
    *(v5 + 16) = v11;
    v12 = *a1;
    v13 = a1[1];
    v14 = Data.advanced(by:)();
    v16 = v15;
    outlined consume of Data._Representation(*a1, a1[1]);

    *a1 = v14;
    a1[1] = v16;
  }

  return OUTLINED_FUNCTION_0();
}

void specialized Data.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, __CFHTTPMessage *a3, CFIndex a4, uint64_t a5, CFIndex *a6)
{
  v26 = *MEMORY[0x277D85DE8];
  switch(a2 >> 62)
  {
    case 1uLL:
      if (a1 >> 32 < a1)
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v23 = v6;
      v20 = a1;
      v14 = __DataStorage._bytes.getter();
      if (v14)
      {
        v21 = __DataStorage._offset.getter();
        if (!__OFSUB__(v20, v21))
        {
          v14 += v20 - v21;
          goto LABEL_15;
        }

LABEL_22:
        __break(1u);
      }

LABEL_15:
      MEMORY[0x223DE1260]();
      v11 = v14;
      v16 = a3;
      v17 = a4;
      v18 = a5;
      v19 = a6;
      v6 = v23;
LABEL_16:
      closure #1 in CommunicationProtocolAce.parseHttpHeaderData(_:partialMessage:)(v11, v16, v17, v18, v19, v25);
      if (v6)
      {
      }

      else
      {
      }

      v22 = *MEMORY[0x277D85DE8];
      return;
    case 2uLL:
      v23 = v6;
      v13 = *(a1 + 16);
      v12 = *(a1 + 24);
      v14 = __DataStorage._bytes.getter();
      if (!v14)
      {
        goto LABEL_6;
      }

      v15 = __DataStorage._offset.getter();
      if (__OFSUB__(v13, v15))
      {
        goto LABEL_21;
      }

      v14 += v13 - v15;
LABEL_6:
      if (!__OFSUB__(v12, v13))
      {
        goto LABEL_15;
      }

      __break(1u);
LABEL_9:
      memset(v24, 0, 14);
      v11 = v24;
LABEL_10:
      v16 = a3;
      v17 = a4;
      v18 = a5;
      v19 = a6;
      goto LABEL_16;
    case 3uLL:
      goto LABEL_9;
    default:
      v24[0] = a1;
      LOWORD(v24[1]) = a2;
      BYTE2(v24[1]) = BYTE2(a2);
      BYTE3(v24[1]) = BYTE3(a2);
      BYTE4(v24[1]) = BYTE4(a2);
      BYTE5(v24[1]) = BYTE5(a2);
      v11 = v24;
      goto LABEL_10;
  }
}

void closure #1 in CommunicationProtocolAce.parseHttpHeaderData(_:partialMessage:)(UInt8 *newBytes@<X0>, CFHTTPMessageRef message@<X2>, CFIndex numBytes@<X3>, uint64_t a4@<X4>, CFIndex *a5@<X5>, CFIndex *a6@<X8>)
{
  if (!newBytes || !CFHTTPMessageAppendBytes(message, newBytes, numBytes))
  {
    lazy protocol witness table accessor for type BackgroundConnectionError and conformance BackgroundConnectionError();
    swift_allocError();
    *v20 = 0u;
    *(v20 + 16) = 0u;
    *(v20 + 32) = 4;
LABEL_12:
    swift_willThrow();
    return;
  }

  swift_beginAccess();
  *(a4 + 16) = numBytes;
  if (!CFHTTPMessageIsHeaderComplete(message))
  {
    lazy protocol witness table accessor for type BackgroundConnectionError and conformance BackgroundConnectionError();
    swift_allocError();
    *v21 = 4;
    *(v21 + 8) = 0;
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    *(v21 + 32) = 4;
    goto LABEL_12;
  }

  v11 = CFHTTPMessageCopyBody(message);
  v12 = v11;
  if (!v11)
  {
LABEL_20:
    ResponseStatusCode = CFHTTPMessageGetResponseStatusCode(message);

    *a5 = ResponseStatusCode;
    *a6 = ResponseStatusCode;
    swift_beginAccess();
    a6[1] = *(a4 + 16);
    return;
  }

  v13 = v11;
  Length = CFDataGetLength(v13);
  swift_beginAccess();
  v15 = *(a4 + 16);
  if (Length < v15)
  {
    swift_beginAccess();
    if (!__OFSUB__(v15, Length))
    {
      *(a4 + 16) = v15 - Length;
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
        v30 = v13;
        v19 = swift_slowAlloc();
        *v19 = 134217984;
        swift_beginAccess();
        *(v19 + 4) = *(a4 + 16);

        _os_log_impl(&dword_223515000, v17, v18, "CommunicationProtocol - Ace header: Header is complete. Bytes read %ld", v19, 0xCu);
        MEMORY[0x223DE38F0](v19, -1, -1);
      }

      else
      {
      }

      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_22;
  }

  if (one-time initialization token for siriNetwork != -1)
  {
LABEL_22:
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.siriNetwork);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = v13;
    v26 = swift_slowAlloc();
    *v26 = 134218240;
    swift_beginAccess();
    *(v26 + 4) = *(a4 + 16);

    *(v26 + 12) = 2048;
    *(v26 + 14) = Length;
    _os_log_impl(&dword_223515000, v23, v24, "CommunicationProtocol - Ace header: Something has gone terribly wrong. bytesRead: %ld bodyLength: %ld", v26, 0x16u);
    v27 = v26;
    v13 = v25;
    MEMORY[0x223DE38F0](v27, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  *(a4 + 16) = 0;
  *a5 = CFHTTPMessageGetResponseStatusCode(message);
  lazy protocol witness table accessor for type BackgroundConnectionError and conformance BackgroundConnectionError();
  swift_allocError();
  *v28 = 2;
  *(v28 + 8) = 0;
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = 4;
  swift_willThrow();
}

uint64_t CommunicationProtocolAce.consumeAceHeader(withData:)(uint64_t *a1)
{
  v3 = v1;
  MEMORY[0x223DE13E0](*a1, a1[1]);
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.siriNetwork);
  v6 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  v7 = OUTLINED_FUNCTION_16_0();
  if (os_log_type_enabled(v7, v8))
  {
    OUTLINED_FUNCTION_6_5();
    v9 = swift_slowAlloc();
    OUTLINED_FUNCTION_63_2(v9, 3.852e-34);
    OUTLINED_FUNCTION_34_2();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    v15 = OUTLINED_FUNCTION_5_14();
    MEMORY[0x223DE38F0](v15);
  }

  v87 = 0;
  v85 = 0u;
  v86 = 0u;
  v16 = static AceSerialization.parseAceStreamHeader(data:)(a1);
  if (v2)
  {
    v88 = v2;
    v18 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      v20 = v83[0];
      v19 = v83[1];
      v21 = v84;
      if (v84)
      {
        v22 = OUTLINED_FUNCTION_56_0();
        outlined copy of AceSerializationError(v22, v23, v24);
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.error.getter();
        v27 = OUTLINED_FUNCTION_56_0();
        outlined consume of AceSerializationError(v27, v28, v29);
        if (os_log_type_enabled(v25, v26))
        {
          OUTLINED_FUNCTION_6_5();
          v30 = swift_slowAlloc();
          OUTLINED_FUNCTION_28_3();
          v31 = swift_slowAlloc();
          *v30 = 138412290;
          lazy protocol witness table accessor for type AceSerializationError and conformance AceSerializationError();
          OUTLINED_FUNCTION_10_0();
          swift_allocError();
          *v32 = v20;
          *(v32 + 8) = v19;
          *(v32 + 16) = v21;
          v33 = OUTLINED_FUNCTION_56_0();
          outlined copy of AceSerializationError(v33, v34, v35);
          v36 = _swift_stdlib_bridgeErrorToNSError();
          *(v30 + 4) = v36;
          *v31 = v36;
          OUTLINED_FUNCTION_74_0();
          _os_log_impl(v37, v38, v39, v40, v41, 0xCu);
          outlined destroy of NetworkConnectionProtocol?(v31, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v42 = OUTLINED_FUNCTION_5_14();
          MEMORY[0x223DE38F0](v42);
          v43 = OUTLINED_FUNCTION_4_0();
          MEMORY[0x223DE38F0](v43);
        }

        lazy protocol witness table accessor for type AceSerializationError and conformance AceSerializationError();
        OUTLINED_FUNCTION_10_0();
        swift_allocError();
        *v44 = v20;
        *(v44 + 8) = v19;
        *(v44 + 16) = v21;
        swift_willThrow();

        outlined destroy of NetworkConnectionProtocol?(&v85, &_s11SiriNetwork17DataDecompressing_pSgMd, &_s11SiriNetwork17DataDecompressing_pSgMR);
        return v20;
      }

      v67 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      v68 = OUTLINED_FUNCTION_16_0();
      if (os_log_type_enabled(v68, v69))
      {
        OUTLINED_FUNCTION_6_5();
        v70 = swift_slowAlloc();
        OUTLINED_FUNCTION_28_3();
        v71 = swift_slowAlloc();
        *v70 = 138412290;
        lazy protocol witness table accessor for type AceSerializationError and conformance AceSerializationError();
        OUTLINED_FUNCTION_10_0();
        swift_allocError();
        *v72 = v20;
        *(v72 + 8) = v19;
        *(v72 + 16) = 0;
        v73 = _swift_stdlib_bridgeErrorToNSError();
        *(v70 + 4) = v73;
        *v71 = v73;
        OUTLINED_FUNCTION_18_5();
        _os_log_impl(v74, v75, v76, v77, v78, v79);
        outlined destroy of NetworkConnectionProtocol?(v71, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v80 = OUTLINED_FUNCTION_4_0();
        MEMORY[0x223DE38F0](v80);
        v81 = OUTLINED_FUNCTION_2_0();
        MEMORY[0x223DE38F0](v81);
      }

      else
      {
      }

      outlined destroy of NetworkConnectionProtocol?(&v85, &_s11SiriNetwork17DataDecompressing_pSgMd, &_s11SiriNetwork17DataDecompressing_pSgMR);
    }

    else
    {
      outlined destroy of NetworkConnectionProtocol?(&v85, &_s11SiriNetwork17DataDecompressing_pSgMd, &_s11SiriNetwork17DataDecompressing_pSgMR);
    }

    return 0;
  }

  v45 = v16;
  v20 = v17;
  if (v16)
  {
    v49 = type metadata accessor for ZlibDataDecompressor();
    swift_allocObject();
    v50 = ZlibDataDecompressor.init()();
    v51 = v50;
    if (v50)
    {
      v46 = v49;
    }

    else
    {
      v46 = 0;
    }

    if (v50)
    {
      v48 = &protocol witness table for ZlibDataDecompressor;
    }

    else
    {
      v48 = 0;
    }

    outlined destroy of NetworkConnectionProtocol?(&v85, &_s11SiriNetwork17DataDecompressing_pSgMd, &_s11SiriNetwork17DataDecompressing_pSgMR);
    v85 = v51;
    *&v86 = 0;
  }

  else
  {
    v46 = type metadata accessor for NoneDataDecompressor();
    v47 = swift_allocObject();
    outlined destroy of NetworkConnectionProtocol?(&v85, &_s11SiriNetwork17DataDecompressing_pSgMd, &_s11SiriNetwork17DataDecompressing_pSgMR);
    *&v85 = v47;
    v48 = &protocol witness table for NoneDataDecompressor;
  }

  *(&v86 + 1) = v46;
  v87 = v48;
  v52 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  v53 = OUTLINED_FUNCTION_16_0();
  if (os_log_type_enabled(v53, v54))
  {
    OUTLINED_FUNCTION_6_5();
    v55 = swift_slowAlloc();
    OUTLINED_FUNCTION_4_3();
    v56 = swift_slowAlloc();
    v83[0] = v56;
    *v55 = 136315138;
    if (v45)
    {
      v57 = 1651076218;
    }

    else
    {
      v57 = 1701736302;
    }

    v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, 0xE400000000000000, v83);

    *(v55 + 4) = v58;
    OUTLINED_FUNCTION_18_5();
    _os_log_impl(v59, v60, v61, v62, v63, v64);
    __swift_destroy_boxed_opaque_existential_0(v56);
    v65 = OUTLINED_FUNCTION_5_14();
    MEMORY[0x223DE38F0](v65);
    v66 = OUTLINED_FUNCTION_2_0();
    MEMORY[0x223DE38F0](v66);
  }

  OUTLINED_FUNCTION_27_1();
  swift_beginAccess();
  outlined assign with copy of DataDecompressing?(&v85, v3 + 112);
  swift_endAccess();
  outlined destroy of NetworkConnectionProtocol?(&v85, &_s11SiriNetwork17DataDecompressing_pSgMd, &_s11SiriNetwork17DataDecompressing_pSgMR);
  return v20;
}

uint64_t static AceSerialization.parseAceStreamHeader(data:)(uint64_t *a1)
{
  v4 = MEMORY[0x223DE13E0](*a1, a1[1]);
  v5 = *a1;
  v6 = a1[1];
  if (v4 >= 4)
  {
    v9 = specialized Data.withUnsafeBytes<A>(_:)(v5, v6, 3uLL);
    if (!v1)
    {
      v2 = v9;
      v11 = *a1;
      v12 = a1[1];
      v13 = Data.advanced(by:)();
      v15 = v14;
      outlined consume of Data._Representation(*a1, a1[1]);
      *a1 = v13;
      a1[1] = v15;
    }
  }

  else
  {
    v7 = MEMORY[0x223DE13E0](v5, v6);
    lazy protocol witness table accessor for type AceSerializationError and conformance AceSerializationError();
    OUTLINED_FUNCTION_60();
    *v8 = 4;
    *(v8 + 8) = v7;
    *(v8 + 16) = 0;
    swift_willThrow();
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type AceSerializationError and conformance AceSerializationError()
{
  result = lazy protocol witness table cache variable for type AceSerializationError and conformance AceSerializationError;
  if (!lazy protocol witness table cache variable for type AceSerializationError and conformance AceSerializationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AceSerializationError and conformance AceSerializationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AceSerializationError and conformance AceSerializationError;
  if (!lazy protocol witness table cache variable for type AceSerializationError and conformance AceSerializationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AceSerializationError and conformance AceSerializationError);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11SiriNetwork21AceSerializationErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t protocol witness for Error._domain.getter in conformance AceSerializationError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AceSerializationError and conformance AceSerializationError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t static AceSerializationError.errorDomain.getter()
{
  if (one-time initialization token for errorDomain != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  swift_beginAccess();
  v0 = static AceSerializationError.errorDomain;

  return v0;
}

uint64_t protocol witness for Error._code.getter in conformance AceSerializationError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AceSerializationError and conformance AceSerializationError();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t AceSerializationError.errorCode.getter()
{
  result = 1;
  switch(*(v0 + 16))
  {
    case 1:
      result = 4;
      break;
    case 2:
      result = 5;
      break;
    case 3:
      result = qword_2235EFF38[*v0];
      break;
    default:
      return result;
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t AceSerializationError.errorUserInfo.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (v3 == 2)
  {
    if (v1 >> 60 == 15)
    {
      goto LABEL_8;
    }

LABEL_11:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2235EFCB0;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v10;
    *(inited + 72) = MEMORY[0x277CC9318];
    *(inited + 48) = v2;
    *(inited + 56) = v1;
    outlined copy of Data?(v2, v1);
    return Dictionary.init(dictionaryLiteral:)();
  }

  if (v3 == 1)
  {
    if (v1 >> 60 == 15)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  if (!*(v0 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    v4 = swift_initStackObject();
    *(v4 + 16) = xmmword_2235EFCC0;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = MEMORY[0x277D83B88];
    *(v4 + 32) = v5;
    *(v4 + 40) = v7;
    *(v4 + 72) = v6;
    *(v4 + 48) = v2;
    *(v4 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v4 + 88) = v8;
    *(v4 + 120) = v6;
    *(v4 + 96) = v1;
    return Dictionary.init(dictionaryLiteral:)();
  }

LABEL_8:

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t specialized Data.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, size_t a3)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v9 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        __break(1u);
        JUMPOUT(0x22356A3D8);
      }

      a1 = a1;
      v6 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v7 = v9;
      return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(a1, v7, v6, a3);
    case 2uLL:
      v5 = *(a1 + 24);
      v6 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      a1 = *(a1 + 16);
      v7 = v5;
      return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(a1, v7, v6, a3);
    case 3uLL:
      a1 = 0;
      v4 = 0;
      return specialized Data.InlineData.withUnsafeBytes<A>(_:)(a1, v4, a3);
    default:
      v4 = a2 & 0xFFFFFFFFFFFFFFLL;
      return specialized Data.InlineData.withUnsafeBytes<A>(_:)(a1, v4, a3);
  }
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, size_t a4)
{
  v6 = __DataStorage._bytes.getter();
  if (v6)
  {
    v7 = v6;
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
      __break(1u);
      return result;
    }

    v9 = (a1 - result + v7);
  }

  else
  {
    v9 = 0;
  }

  MEMORY[0x223DE1260]();
  if (v9 && !memcmp(v9, &unk_2836AF790, a4))
  {
    v11 = v9[a4];
    if (v11 == 2)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    if (v11 == 1)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }

  else
  {
    lazy protocol witness table accessor for type AceSerializationError and conformance AceSerializationError();
    swift_allocError();
    *v10 = 0;
    *(v10 + 8) = 0;
    *(v10 + 16) = 3;
    return swift_willThrow();
  }
}

uint64_t ZlibDataDecompressor.init()()
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
  v2 = inflateInit_((v0 + 16), "1.2.12", 112);
  swift_endAccess();
  if (v2)
  {

    return 0;
  }

  return v0;
}

uint64_t outlined assign with copy of DataDecompressing?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork17DataDecompressing_pSgMd, &_s11SiriNetwork17DataDecompressing_pSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void *OUTLINED_FUNCTION_75(void *a1)
{

  return memcpy(a1, (v1 + 608), 0x139uLL);
}

uint64_t OUTLINED_FUNCTION_75_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

unint64_t type metadata accessor for AceObject()
{
  result = lazy cache variable for type metadata for AceObject;
  if (!lazy cache variable for type metadata for AceObject)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for AceObject);
  }

  return result;
}

id @nonobjc AceObject.__allocating_init(plistData:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(a1, a2);
  }

  v5 = [swift_getObjCClassFromMetadata() aceObjectWithPlistData_];

  return v5;
}

uint64_t outlined destroy of SessionObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork13SessionObject_pSgMd, &_s11SiriNetwork13SessionObject_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void CommunicationProtocolAce.handleAceObject(_:)(uint64_t a1)
{
  outlined init with copy of DataDecompressing?(a1, v22, &_s11SiriNetwork13SessionObject_pSgMd, &_s11SiriNetwork13SessionObject_pSgMR);
  if (!v22[3])
  {
    outlined destroy of NetworkConnectionProtocol?(v22, &_s11SiriNetwork13SessionObject_pSgMd, &_s11SiriNetwork13SessionObject_pSgMR);
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork13SessionObject_pMd, &_s11SiriNetwork13SessionObject_pMR);
  type metadata accessor for CTServiceDescriptor(0, &lazy cache variable for type metadata for AceObject, 0x277D470E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v17, static Logger.siriNetwork);
    v3 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v18))
    {
      OUTLINED_FUNCTION_17_5();
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_223515000, v3, v18, "CommunicationProtocol - Ace object: Received SessionObject could not be cast to AceObject", v19, 2u);
      OUTLINED_FUNCTION_2_2();
      MEMORY[0x223DE38F0]();
    }

    goto LABEL_16;
  }

  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_58(v2, static Logger.siriNetwork);
  v3 = v21;
  v4 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  v5 = OUTLINED_FUNCTION_10_4();
  if (!os_log_type_enabled(v5, v6))
  {

LABEL_14:
    if (CommunicationProtocolAce.aceDelegate.getter())
    {
      v20 = OUTLINED_FUNCTION_52();
      BackgroundConnection.didReceiveAceObject(aceObject:)(v20);
      swift_unknownObjectRelease();
    }

LABEL_16:

    OUTLINED_FUNCTION_77_0();
    return;
  }

  OUTLINED_FUNCTION_6_5();
  v7 = swift_slowAlloc();
  OUTLINED_FUNCTION_4_3();
  v8 = swift_slowAlloc();
  v22[0] = v8;
  *v7 = 136315138;
  outlined bridged method (pb) of @objc AceObject.encodedClassName()(v3);
  v10 = v9;

  if (v10)
  {
    v11 = OUTLINED_FUNCTION_26();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v13);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_223515000, v4, v1, "CommunicationProtocol - Ace object: Connection got AceObject %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    v15 = OUTLINED_FUNCTION_2_0();
    MEMORY[0x223DE38F0](v15);
    v16 = OUTLINED_FUNCTION_6_15();
    MEMORY[0x223DE38F0](v16);
    goto LABEL_14;
  }

  __break(1u);
}

uint64_t outlined bridged method (pb) of @objc AceObject.encodedClassName()(void *a1)
{
  v1 = [a1 encodedClassName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t specialized Connection.didReceiveAceObject(_:object:)(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v6 - 8);
  v7 = *(v24 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = lazy protocol witness table accessor for type BackgroundConnection and conformance BackgroundConnection(&lazy protocol witness table cache variable for type BackgroundConnection and conformance BackgroundConnection, v15, type metadata accessor for BackgroundConnection);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = result;
    result = swift_unknownObjectRelease();
    if (v18 == a3)
    {
      v23[1] = *(a3 + OBJC_IVAR___SNConnectionInternal_connectionQueue);
      v19 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v20 = swift_allocObject();
      v20[2] = v19;
      v20[3] = a1;
      v20[4] = v16;
      v20[5] = a2;
      aBlock[4] = partial apply for closure #1 in Connection.didReceiveAceObject(_:object:);
      aBlock[5] = v20;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_139;
      v21 = _Block_copy(aBlock);

      v22 = a2;
      static DispatchQoS.unspecified.getter();
      v25 = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type BackgroundConnection and conformance BackgroundConnection(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x223DE2460](0, v14, v9, v21);
      _Block_release(v21);
      (*(v24 + 8))(v9, v6);
      (*(v11 + 8))(v14, v10);
    }
  }

  return result;
}

uint64_t sub_22356ADC0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  v3 = OUTLINED_FUNCTION_19_8();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

void closure #1 in Connection.didReceiveAceObject(_:object:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_50_4();
  a31 = v32;
  a32 = v33;
  v35 = v34;
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v37 = Strong;
    type metadata accessor for BackgroundConnection();
    v38 = swift_dynamicCastClass();
    if (v38)
    {
      v39 = v38;
      if (v38 == *&v37[OBJC_IVAR___SNConnectionInternal_activeBackgroundConnection])
      {
        OUTLINED_FUNCTION_8();
        swift_beginAccess();
        v53 = swift_unknownObjectWeakLoadStrong();
        if (v53)
        {
          v54 = v53;
          v55 = one-time initialization token for siriNetwork;
          swift_unknownObjectRetain();
          if (v55 != -1)
          {
            OUTLINED_FUNCTION_0_8();
            swift_once();
          }

          v56 = type metadata accessor for Logger();
          __swift_project_value_buffer(v56, static Logger.siriNetwork);
          swift_unknownObjectRetain();
          v57 = v35;
          v58 = Logger.logObject.getter();
          v59 = static os_log_type_t.default.getter();
          swift_unknownObjectRelease();

          if (os_log_type_enabled(v58, v59))
          {
            v79 = v59;
            OUTLINED_FUNCTION_30();
            v60 = swift_slowAlloc();
            a17 = OUTLINED_FUNCTION_58_2();
            *v60 = 136315394;
            v80 = v57;
            v61 = v57;
            v62 = [v61 description];
            v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v65 = v64;

            v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v65, &a17);

            *(v60 + 4) = v66;
            *(v60 + 12) = 2080;
            if (*(v39 + 448) >= 2uLL)
            {
              v82 = *(v39 + 440);
              v84 = *(v39 + 448);

              v67 = String.init<A>(describing:)();
              v68 = v77;
            }

            else
            {
              v67 = 0x6E776F6E6B6E75;
              OUTLINED_FUNCTION_46_4();
              v68 = 0xE700000000000000;
            }

            v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v68, &a17);

            *(v60 + 14) = v78;
            _os_log_impl(&dword_223515000, v58, v79, "Connection - Reader: Background Connection. Received ace object %s from active background connection route %s", v60, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_2_2();
            MEMORY[0x223DE38F0]();
            OUTLINED_FUNCTION_2_2();
            MEMORY[0x223DE38F0]();

            v57 = v80;
          }

          else
          {
          }

          [v54 didReceiveAceObject:v37 object:v57];
          swift_unknownObjectRelease();

          goto LABEL_23;
        }
      }

      v40 = one-time initialization token for siriNetwork;
      swift_unknownObjectRetain();
      if (v40 != -1)
      {
        OUTLINED_FUNCTION_0_8();
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      __swift_project_value_buffer(v41, static Logger.siriNetwork);
      swift_unknownObjectRetain();
      v42 = v35;
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.default.getter();
      swift_unknownObjectRelease();

      if (os_log_type_enabled(v43, v44))
      {
        OUTLINED_FUNCTION_30();
        v45 = swift_slowAlloc();
        a17 = OUTLINED_FUNCTION_58_2();
        *v45 = 136315394;
        v46 = v42;
        v47 = [v46 description];
        v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v50 = v49;

        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, &a17);
        OUTLINED_FUNCTION_53_4();

        *(v45 + 4) = v46;
        *(v45 + 12) = 2080;
        if (*(v39 + 448) >= 2uLL)
        {
          v81 = *(v39 + 440);
          v83 = *(v39 + 448);

          v51 = String.init<A>(describing:)();
          v52 = v69;
        }

        else
        {
          v51 = 0x6E776F6E6B6E75;
          OUTLINED_FUNCTION_46_4();
          v52 = 0xE700000000000000;
        }

        v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, &a17);

        *(v45 + 14) = v70;
        OUTLINED_FUNCTION_52_5();
        _os_log_impl(v71, v72, v73, v74, v75, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_2_2();
        MEMORY[0x223DE38F0]();
        v76 = OUTLINED_FUNCTION_2_0();
        MEMORY[0x223DE38F0](v76);

LABEL_23:
        swift_unknownObjectRelease();
        goto LABEL_24;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

LABEL_24:
  OUTLINED_FUNCTION_40_5();
}

_DWORD *_sSo18WRMApplicationTypeaSYSCSY8rawValuexSg03RawD0Qz_tcfCTW_0@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_22356B2FC()
{
  v1 = v0[2];

  if (v0[4])
  {
    v2 = v0[5];
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22356B344()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22356B38C()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22356B3DC()
{
  MEMORY[0x223DE39C0](v0 + 16);
  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22356B410()
{
  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22356B4B4()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_22356B4E8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22356B528()
{
  v1 = v0[3];

  outlined consume of Data._Representation(v0[4], v0[5]);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22356B568()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22356B5C8()
{
  MEMORY[0x223DE39C0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22356B600()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_3();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22356B634()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_3();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22356B668()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22356B710()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22356B74C()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  v2 = *(v0 + 32);

  __swift_destroy_boxed_opaque_existential_0((v0 + 40));
  v3 = *(v0 + 88);

  v4 = *(v0 + 112);

  v5 = *(v0 + 128);

  v6 = *(v0 + 136);

  if (*(v0 + 184))
  {
    v7 = *(v0 + 160);

    v8 = *(v0 + 176);
  }

  if (*(v0 + 528))
  {
    v9 = *(v0 + 200);

    v10 = *(v0 + 216);

    if (*(v0 + 240))
    {

      v11 = *(v0 + 256);

      if (*(v0 + 280) != 1)
      {

        v12 = *(v0 + 296);
      }
    }

    v13 = *(v0 + 528);

    v14 = *(v0 + 536);
  }

  if (*(v0 + 608))
  {
    v15 = *(v0 + 560);

    v16 = *(v0 + 608);

    v17 = *(v0 + 616);

    v18 = *(v0 + 640);
  }

  if (*(v0 + 680))
  {

    v19 = *(v0 + 696);

    if (*(v0 + 808))
    {
      v20 = *(v0 + 720);

      v21 = *(v0 + 752);

      v22 = *(v0 + 768);

      v23 = *(v0 + 784);

      v24 = *(v0 + 808);

      v25 = *(v0 + 824);

      v26 = *(v0 + 936);
    }

    if (*(v0 + 1056))
    {

      v27 = *(v0 + 1072);

      if (*(v0 + 1096) != 1)
      {

        v28 = *(v0 + 1112);
      }
    }

    v29 = *(v0 + 1344);

    v30 = *(v0 + 1352);
  }

  v31 = *(v0 + 1376);

  v32 = *(v0 + 1392);

  v33 = *(v0 + 1408);

  v34 = *(v0 + 1472);

  return MEMORY[0x2821FE8E8](v0, 1529, 7);
}

uint64_t sub_22356B920()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  v2 = OUTLINED_FUNCTION_41();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22356B958()
{
  v1 = v0[2];

  if (v0[4])
  {
    v2 = v0[5];
  }

  OUTLINED_FUNCTION_66();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_22356BA10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_22356BAD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_22356BB88()
{
  v1 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_0_0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_22356BC60()
{
  MEMORY[0x223DE39C0](v0 + 16);
  v1 = OUTLINED_FUNCTION_4_8();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22356BC90()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22356BCD8()
{
  _Block_release(*(v0 + 16));
  v1 = OUTLINED_FUNCTION_4_8();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22356BD08()
{
  v1 = OUTLINED_FUNCTION_4_8();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22356BD38()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22356BE20@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = AceObject.internalAceId.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_22356BE78@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = AceObject.internalRefId.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_22356BED0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_22356BF08()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22356BF70(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_12(a1);
  result = SpeechPacket.internalAceId.getter();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_22356BFC4(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_12(a1);
  result = SpeechPacket.internalRefId.getter();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_22356C018(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_12(a1);
  result = SpeechPacket.packets.getter();
  *v1 = result;
  return result;
}

uint64_t sub_22356C044(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_12(a1);
  result = SpeechPacket.packetNumber.getter();
  *v1 = result;
  return result;
}

uint64_t sub_22356C094()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy11SiriNetwork23AsyncSequentialExecutorC0C4Work33_929935727E72E3DCCC3D8351439F96F6LLVGMd, &_sScSy11SiriNetwork23AsyncSequentialExecutorC0C4Work33_929935727E72E3DCCC3D8351439F96F6LLVGMR);
  OUTLINED_FUNCTION_0_0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = *(v0 + 40);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v4 | 7);
}

uint64_t sub_22356C194(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Date();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_22356C21C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22356C30C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t get_enum_tag_for_layout_string_11SiriNetwork29MessageCenterEndpointProtocol_pSg_0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_22356C3AC(uint64_t *a1, int a2)
{
  if (a2 == 2147483646)
  {
    v2 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }

    v3 = v2 - 1;
    if (v3 < 0)
    {
      v3 = -1;
    }

    return (v3 + 1);
  }

  else
  {
    type metadata accessor for Logger();
    v5 = OUTLINED_FUNCTION_19_3();

    return __swift_getEnumTagSinglePayload(v5, v6, v7);
  }
}

void *sub_22356C438(void *result, uint64_t a2, int a3)
{
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    type metadata accessor for Logger();
    v4 = OUTLINED_FUNCTION_19_3();

    return __swift_storeEnumTagSinglePayload(v4, v5, a2, v6);
  }

  return result;
}

uint64_t sub_22356C4B0(uint64_t a1, int a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    v2 = *(a1 + 8);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }

    return (v2 + 1);
  }

  else
  {
    type metadata accessor for Logger();
    v4 = OUTLINED_FUNCTION_19_3();

    return __swift_getEnumTagSinglePayload(v4, v5, v6);
  }
}

uint64_t sub_22356C530(uint64_t result, uint64_t a2, int a3)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for Logger();
    v4 = OUTLINED_FUNCTION_19_3();

    return __swift_storeEnumTagSinglePayload(v4, v5, a2, v6);
  }

  return result;
}

uint64_t sub_22356C5D0()
{
  v1 = type metadata accessor for NWBrowser.Result.Change();
  OUTLINED_FUNCTION_0_0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);
  v9 = *(v0 + v7);
  swift_unownedRelease();

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v4 | 7);
}

uint64_t sub_22356C69C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22356C6D4()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_44_3();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

__n128 sub_22356C740(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_22356C790()
{
  v1 = v0[3];

  v2 = v0[5];

  if (v0[7])
  {

    v3 = v0[9];
  }

  if (v0[13])
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 10);
  }

  if (v0[18])
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 15);
  }

  OUTLINED_FUNCTION_107_0();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_22356C800()
{
  v1 = v0[2];

  v2 = v0[3];

  __swift_destroy_boxed_opaque_existential_0(v0 + 4);
  v3 = v0[10];

  outlined consume of Data._Representation(v0[11], v0[12]);
  v4 = v0[14];

  v5 = v0[16];

  v6 = v0[18];

  if (v0[22])
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 19);
  }

  return MEMORY[0x2821FE8E8](v0, 192, 7);
}

uint64_t sub_22356C898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_22356C954(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = a2;
  }

  return result;
}

uint64_t sub_22356CA00()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  outlined consume of Data._Representation(v0[6], v0[7]);
  v3 = v0[9];

  v4 = v0[11];

  v5 = v0[13];

  v6 = v0[15];

  v7 = v0[17];

  if (v0[19])
  {

    v8 = v0[21];
  }

  if (v0[25])
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  }

  if (v0[30])
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  }

  return MEMORY[0x2821FE8E8](v0, 256, 7);
}

uint64_t sub_22356CACC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22356CB04()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22356CB98()
{
  v1 = v0[3];

  v2 = v0[5];

  if (v0[7])
  {

    v3 = v0[9];
  }

  if (v0[13])
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 10);
  }

  if (v0[18])
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 15);
  }

  return MEMORY[0x2821FE8E8](v0, 160, 7);
}

uint64_t sub_22356CC0C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22356CC44()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22356CC7C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22356CCBC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t _s11SiriNetwork0B24ActivityCompletionReasonOSYAASY8rawValue03RawG0QzvgTW_0@<X0>(uint64_t *a1@<X8>)
{
  result = NetworkActivityLabel.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_22356CE60()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22356CEA0()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_3();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22356CED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSyytGMd, &_sScSyytGMR);
  v7 = OUTLINED_FUNCTION_18_7(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyyt_GMd, &_sScS12ContinuationVyyt_GMR);
    v10 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_22356CF84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSyytGMd, &_sScSyytGMR);
  v9 = OUTLINED_FUNCTION_18_7(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyyt_GMd, &_sScS12ContinuationVyyt_GMR);
    v12 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_22356D098()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_0(v0 + 3);
  if (v0[7])
  {
    v2 = v0[8];
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_22356D0E8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = Connection.delegate.getter();
  *a2 = result;
  return result;
}

uint64_t sub_22356D118()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork22ConnectionAnalysisInfoVSgMd, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMR);
  OUTLINED_FUNCTION_15(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v6 = *(v5 + 64);

  v7 = type metadata accessor for ConnectionAnalysisInfo();
  if (!__swift_getEnumTagSinglePayload(v0 + v4, 1, v7))
  {
    v8 = type metadata accessor for URL();
    if (!__swift_getEnumTagSinglePayload(v0 + v4, 1, v8))
    {
      (*(*(v8 - 8) + 8))(v0 + v4, v8);
    }

    v9 = *(v0 + v4 + *(v7 + 36) + 8);
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v6, v3 | 7);
}

uint64_t sub_22356D254()
{
  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22356D28C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v0[6])
  {
    v1 = v0[7];
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t _s11SiriNetwork24ConnectionPolicyProtocolOSYAASY8rawValue03RawG0QzvgTW_0@<X0>(uint64_t *a1@<X8>)
{
  result = ConnectionPolicyType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_22356D3AC(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_12(a1);
  result = ConnectionInfo.connectionProtocolTechnology.getter();
  *v1 = result;
  return result;
}

uint64_t sub_22356D3FC(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_12(a1);
  result = ConnectionInfo.communicationProtocolTechnology.getter();
  *v1 = result;
  return result;
}

uint64_t sub_22356D44C(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_12(a1);
  result = ConnectionInfo.assistantIdentifier.getter();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_22356D4A0(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_12(a1);
  result = ConnectionInfo.peerAssistantIdentifier.getter();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_22356D4F4(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_12(a1);
  result = ConnectionInfo.connectionId.getter();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_22356D548(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_12(a1);
  result = ConnectionInfo.aceHost.getter();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_22356D59C(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_12(a1);
  result = ConnectionInfo.languageCode.getter();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_22356D5F0(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_12(a1);
  v1 = ConnectionInfo.prefersWWAN.getter();
  return OUTLINED_FUNCTION_12_8(v1);
}

uint64_t sub_22356D63C(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_12(a1);
  v1 = ConnectionInfo.skipPeer.getter();
  return OUTLINED_FUNCTION_12_8(v1);
}

uint64_t sub_22356D688(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_12(a1);
  v1 = ConnectionInfo.useWiFiHint.getter();
  return OUTLINED_FUNCTION_12_8(v1);
}

void *sub_22356D6D4(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_12(a1);
  result = ConnectionInfo.skipPeerErrorReason.getter();
  *v1 = result;
  return result;
}

uint64_t sub_22356D700(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_12(a1);
  v1 = ConnectionInfo.forceReconnect.getter();
  return OUTLINED_FUNCTION_12_8(v1);
}

uint64_t sub_22356D79C(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_12(a1);
  v1 = ConnectionInfo.imposePolicyBan.getter();
  return OUTLINED_FUNCTION_12_8(v1);
}

void *sub_22356D7E8(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_12(a1);
  result = ConnectionInfo.connectionPolicy.getter();
  *v1 = result;
  return result;
}

void *sub_22356D814(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_12(a1);
  result = ConnectionInfo.policyRoute.getter();
  *v1 = result;
  return result;
}

uint64_t sub_22356D840(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_12(a1);
  v1 = ConnectionInfo.forceOnDeviceOnlyDictation.getter();
  return OUTLINED_FUNCTION_12_8(v1);
}

uint64_t sub_22356D88C(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_12(a1);
  result = ConnectionInfo.productTypePrefix.getter();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_22356D8E0(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_12(a1);
  result = ConnectionInfo.peerType.getter();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_22356D934(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_12(a1);
  result = ConnectionInfo.peerVersion.getter();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_22356D988(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_12(a1);
  v1 = ConnectionInfo.deviceIsInWalkaboutExperimentGroup.getter();
  return OUTLINED_FUNCTION_12_8(v1);
}

uint64_t sub_22356D9D4(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_12(a1);
  v1 = ConnectionInfo.usesProxyConnection.getter();
  return OUTLINED_FUNCTION_12_8(v1);
}

uint64_t sub_22356DA20(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_12(a1);
  v1 = ConnectionInfo.usesPeerManagedSync.getter();
  return OUTLINED_FUNCTION_12_8(v1);
}

uint64_t sub_22356DB20()
{
  v1 = v0[2];

  v2 = v0[3];
  swift_unknownObjectRelease();
  v3 = v0[6];
  if (v3 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[5], v3);
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22356DB94()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  if (v0[4])
  {
    v2 = v0[5];
  }

  v3 = OUTLINED_FUNCTION_19_8();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_22356DBF0()
{
  OUTLINED_FUNCTION_133();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork22ConnectionAnalysisInfoVSgMd, &_s11SiriNetwork22ConnectionAnalysisInfoVSgMR);
  OUTLINED_FUNCTION_15(v1);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(v0 + 16);

  v7 = type metadata accessor for ConnectionAnalysisInfo();
  if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v7))
  {
    v8 = type metadata accessor for URL();
    if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v8))
    {
      (*(*(v8 - 8) + 8))(v0 + v3, v8);
    }

    v9 = *(v0 + v3 + *(v7 + 36) + 8);
  }

  v10 = (v5 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + v10);

  v13 = *(v0 + v11 + 8);

  OUTLINED_FUNCTION_106_0();

  return MEMORY[0x2821FE8E8](v14, v15, v16);
}

uint64_t sub_22356DD64()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22356DDC8()
{
  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t _s11SiriNetwork31CommunicationProtocolTechnologyOSYAASY8rawValuexSg03RawG0Qz_tcfCTW_0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = ConnectionProtocolTechnology.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_22356DEAC@<X0>(uint64_t *a1@<X8>)
{
  result = ConnectionConfiguration.connectionId.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for z_stream_s(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 112))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 64);
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

uint64_t storeEnumTagSinglePayload for z_stream_s(uint64_t result, unsigned int a2, unsigned int a3)
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance CTSubscriptionSlot(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  CTSubscriptionSlot.init(rawValue:)();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CTSubscriptionSlot@<X0>(uint64_t *a1@<X8>)
{
  result = destructiveProjectEnumData for ConnectionConfigurationError(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance CFStringRef()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hashValue.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CFStringRef()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CFStringRef()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CFStringRef(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t protocol witness for SetAlgebra.intersection(_:) in conformance RPStatusFlags@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized OptionSet.intersection(_:)(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CFStringRef(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized Data.InlineData.withUnsafeBytes<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v12 = WORD2(a2);
  v11 = a2;
  closure #1 in ZlibDataDecompressor.decompressedDataForData(_:)(&v10, a3, a4, a5, a6);

  result = outlined consume of Data._Representation(a4, a5);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v13 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v12 = WORD2(a2);
  v11 = a2;
  closure #1 in ZlibDataCompressor.compressedDataForData(_:)(&v10, a3, a4, a5, a6);

  result = outlined consume of Data._Representation(a4, a5);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t lazy protocol witness table accessor for type DataCompressorError and conformance DataCompressorError()
{
  result = lazy protocol witness table cache variable for type DataCompressorError and conformance DataCompressorError;
  if (!lazy protocol witness table cache variable for type DataCompressorError and conformance DataCompressorError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DataCompressorError and conformance DataCompressorError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DataCompressorError and conformance DataCompressorError;
  if (!lazy protocol witness table cache variable for type DataCompressorError and conformance DataCompressorError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DataCompressorError and conformance DataCompressorError);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for os_unfair_lock_s(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for os_unfair_lock_s(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
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

char *one-time initialization function for shared()
{
  v0 = objc_allocWithZone(type metadata accessor for NetworkManager());
  result = NetworkManager.init(coreTelephonyClient:queue:)(0, 0);
  static NetworkManager.shared = result;
  return result;
}

id static NetworkManager.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static NetworkManager.shared;

  return v1;
}

char *NetworkManager.init(coreTelephonyClient:queue:)(id a1, void *a2)
{
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v45 = *(v5 - 8);
  v46 = v5;
  v6 = *(v45 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_1();
  v44 = v8 - v7;
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_0_1();
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  OUTLINED_FUNCTION_0_1();
  v13 = OBJC_IVAR___SNNetworkManagerInternal_lock;
  v14 = objc_allocWithZone(MEMORY[0x277CCAAF8]);
  v15 = v2;
  *&v2[v13] = [v14 init];
  *&v15[OBJC_IVAR___SNNetworkManagerInternal_observers] = MEMORY[0x277D84FA0];
  *&v15[OBJC_IVAR___SNNetworkManagerInternal_dataServiceDescriptor] = 0;
  *&v15[OBJC_IVAR___SNNetworkManagerInternal_lastDataSubscriptionSlot] = 0;
  v16 = &v15[OBJC_IVAR___SNNetworkManagerInternal_subscriptionSlotOneStatus];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = &v15[OBJC_IVAR___SNNetworkManagerInternal_subscriptionSlotTwoStatus];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = &v15[OBJC_IVAR___SNNetworkManagerInternal_lastSuccessfulSymptomsFetch];
  *v18 = 0;
  v18[8] = 1;
  v15[OBJC_IVAR___SNNetworkManagerInternal_lastFetchInProgress] = 0;
  v19 = &v15[OBJC_IVAR___SNNetworkManagerInternal_lastSignalStrength];
  *v19 = 0;
  v19[8] = 1;
  v20 = &v15[OBJC_IVAR___SNNetworkManagerInternal_subscriptionCount];
  *v20 = 0;
  v20[8] = 1;
  v21 = &v15[OBJC_IVAR___SNNetworkManagerInternal_carrierName];
  *v21 = 0;
  *(v21 + 1) = 0;
  *&v15[OBJC_IVAR___SNNetworkManagerInternal_pathEvaluator] = 0;
  *&v15[OBJC_IVAR___SNNetworkManagerInternal_pathStatus] = 0;
  v15[OBJC_IVAR___SNNetworkManagerInternal_pathUsesCellular] = 0;
  v22 = OBJC_IVAR___SNNetworkManagerInternal_networkWiFiManager;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v23 = static NetworkWiFiManager.shared;
  *&v15[v22] = static NetworkWiFiManager.shared;
  v24 = OBJC_IVAR___SNNetworkManagerInternal_lastTimeSymptomsFetch;
  v25 = objc_opt_self();
  v26 = v23;
  v27 = [v25 processInfo];
  [v27 systemUptime];
  v29 = v28;

  *&v15[v24] = v29 + -90.0;
  *&v15[OBJC_IVAR___SNNetworkManagerInternal_connectionQualityReport] = 50529027;
  v30 = OBJC_IVAR___SNNetworkManagerInternal_lockConnectionQuality;
  *&v15[v30] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  if (a2)
  {
    v31 = a2;
  }

  else
  {
    type metadata accessor for OS_dispatch_queue();
    static DispatchQoS.unspecified.getter();
    v48 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v45 + 104))(v44, *MEMORY[0x277D85260], v46);
    v31 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  }

  v32 = OBJC_IVAR___SNNetworkManagerInternal_queue;
  *&v15[OBJC_IVAR___SNNetworkManagerInternal_queue] = v31;
  if (a1)
  {
    a1 = a1;
    v33 = a2;

    v34 = a1;
  }

  else
  {
    v35 = objc_allocWithZone(MEMORY[0x277CC37B0]);
    v33 = a2;
    v36 = v31;
    v34 = [v35 initWithQueue_];
  }

  *&v15[OBJC_IVAR___SNNetworkManagerInternal_coreTelephonyClient] = v34;
  v37 = *&v15[v32];
  type metadata accessor for NetworkWirelessCoexManager();
  swift_allocObject();
  v38 = v37;
  NetworkWirelessCoexManager.init(queue:)();
  *&v15[OBJC_IVAR___SNNetworkManagerInternal_networkWirelessCoexManager] = v39;
  v47.receiver = v15;
  v47.super_class = type metadata accessor for NetworkManager();
  v40 = objc_msgSendSuper2(&v47, sel_init);
  v41 = *&v40[OBJC_IVAR___SNNetworkManagerInternal_coreTelephonyClient];
  v42 = v40;
  [v41 setDelegate_];
  NetworkManager.dataSubscriptionContextUpdate()();
  NetworkManager.dataServiceDescriptorUpdate()();
  NetworkManager.serviceSubscriptionInfoUpdate()();
  NetworkManager.signalStrengthUpdate()();

  return v42;
}

id NetworkManager.__deallocating_deinit()
{
  v1 = v0;
  if (one-time initialization token for siriNetwork != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriNetwork);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_223515000, v3, v4, "NetworkManager deinit", v5, 2u);
    MEMORY[0x223DE38F0](v5, -1, -1);
  }

  if (*&v1[OBJC_IVAR___SNNetworkManagerInternal_pathEvaluator])
  {
    nw_path_evaluator_cancel();
  }

  [*&v1[OBJC_IVAR___SNNetworkManagerInternal_coreTelephonyClient] setDelegate_];
  v7.receiver = v1;
  v7.super_class = type metadata accessor for NetworkManager();
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

id NetworkManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A];
  if (!lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A]);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t one-time initialization function for errorDomain()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static ConnectionConfigurationError.errorDomain = result;
  qword_27D0899A8 = v1;
  return result;
}

{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static AceSerializationError.errorDomain = result;
  qword_2813240E0 = v1;
  return result;
}

{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static DataCompressorError.errorDomain = result;
  qword_27D0899D8 = v1;
  return result;
}

{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static BackgroundConnectionError.errorDomain = result;
  qword_27D08A6D0 = v1;
  return result;
}

{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NetworkConnectionError.errorDomain = result;
  qword_281325628 = v1;
  return result;
}

{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static MessageCenterError.errorDomain = result;
  qword_27D08A820 = v1;
  return result;
}

uint64_t *ConnectionConfigurationError.errorDomain.unsafeMutableAddressor()
{
  if (one-time initialization token for errorDomain != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  return &static ConnectionConfigurationError.errorDomain;
}

uint64_t static ConnectionConfigurationError.errorDomain.getter()
{
  if (one-time initialization token for errorDomain != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  swift_beginAccess();
  v0 = static ConnectionConfigurationError.errorDomain;

  return v0;
}

uint64_t static ConnectionConfigurationError.errorDomain.setter(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for errorDomain != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  swift_beginAccess();
  static ConnectionConfigurationError.errorDomain = a1;
  qword_27D0899A8 = a2;
}

uint64_t (*static ConnectionConfigurationError.errorDomain.modify())()
{
  if (one-time initialization token for errorDomain != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  swift_beginAccess();
  return static ConnectionConfigurationError.errorDomain.modify;
}

uint64_t key path getter for static ConnectionConfigurationError.errorDomain : ConnectionConfigurationError.Type@<X0>(void *a1@<X8>)
{
  ConnectionConfigurationError.errorDomain.unsafeMutableAddressor();
  swift_beginAccess();
  v2 = qword_27D0899A8;
  *a1 = static ConnectionConfigurationError.errorDomain;
  a1[1] = v2;
}

uint64_t key path setter for static ConnectionConfigurationError.errorDomain : ConnectionConfigurationError.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  ConnectionConfigurationError.errorDomain.unsafeMutableAddressor();
  swift_beginAccess();
  static ConnectionConfigurationError.errorDomain = v2;
  qword_27D0899A8 = v1;
}

Swift::Int ConnectionConfigurationError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x223DE2980](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ConnectionConfigurationError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x223DE2980](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type ConnectionConfigurationError and conformance ConnectionConfigurationError()
{
  result = lazy protocol witness table cache variable for type ConnectionConfigurationError and conformance ConnectionConfigurationError;
  if (!lazy protocol witness table cache variable for type ConnectionConfigurationError and conformance ConnectionConfigurationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConnectionConfigurationError and conformance ConnectionConfigurationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConnectionConfigurationError and conformance ConnectionConfigurationError;
  if (!lazy protocol witness table cache variable for type ConnectionConfigurationError and conformance ConnectionConfigurationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConnectionConfigurationError and conformance ConnectionConfigurationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConnectionConfigurationError and conformance ConnectionConfigurationError;
  if (!lazy protocol witness table cache variable for type ConnectionConfigurationError and conformance ConnectionConfigurationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConnectionConfigurationError and conformance ConnectionConfigurationError);
  }

  return result;
}

uint64_t protocol witness for Error._domain.getter in conformance ConnectionConfigurationError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ConnectionConfigurationError and conformance ConnectionConfigurationError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance ConnectionConfigurationError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ConnectionConfigurationError and conformance ConnectionConfigurationError();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t getEnumTagSinglePayload for ConnectionConfigurationError(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for ConnectionConfigurationError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t NetworkManager.getSNProximityLinkRecommendation(retry:completion:)(char a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(a2);
  NetworkManager.getProximityLinkRecommendation(retry:_:)(a1, partial apply for closure #1 in NetworkManager.getSNProximityLinkRecommendation(retry:completion:), v6);
}

uint64_t NetworkManager.getProximityLinkRecommendation(retry:_:)(char a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = OUTLINED_FUNCTION_0_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_0_1();
  v28 = OUTLINED_FUNCTION_8_1();
  v14 = OUTLINED_FUNCTION_0_0(v28);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_0_1();
  v17 = *(v5 + OBJC_IVAR___SNNetworkManagerInternal_queue);
  OUTLINED_FUNCTION_7_1();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = a1;
  *(v19 + 32) = a2;
  *(v19 + 40) = a3;
  v32 = partial apply for closure #1 in NetworkManager.getProximityLinkRecommendation(retry:_:);
  v33 = v19;
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v30 = v20;
  v31 = &block_descriptor_18;
  v21 = _Block_copy(aBlock);
  v22 = v17;

  outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(a2);
  static DispatchQoS.unspecified.getter();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  OUTLINED_FUNCTION_3_0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v23 = OUTLINED_FUNCTION_6();
  MEMORY[0x223DE2460](v23);
  _Block_release(v21);

  (*(v11 + 8))(v4, v8);
  v24 = OUTLINED_FUNCTION_5_4();
  v25(v24);
}

uint64_t closure #1 in NetworkManager.getProximityLinkRecommendation(retry:_:)()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(result + OBJC_IVAR___SNNetworkManagerInternal_networkWirelessCoexManager);

    NetworkWirelessCoexManager.getProximityLinkRecommendation(retry:_:)();
  }

  return result;
}

uint64_t partial apply for closure #1 in NetworkManager.getProximityLinkRecommendation(retry:_:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  return closure #1 in NetworkManager.getProximityLinkRecommendation(retry:_:)();
}

uint64_t NetworkManager.getSNLinkRecommendationMetrics(_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(a1);
  NetworkManager.getLinkRecommendationMetrics(_:)(partial apply for closure #1 in NetworkManager.getSNLinkRecommendationMetrics(_:), v4);
}

void closure #1 in NetworkManager.getSNProximityLinkRecommendation(retry:completion:)(uint64_t *a1, void (*a2)(void))
{
  if (a2)
  {
    if (*a1 == 2)
    {
      v3 = 0;
    }

    else
    {
      v6 = *a1;
      memcpy(v7, a1 + 1, sizeof(v7));
      LinkRecommendationInfo.snLinkRecommendationInfo()(v4);
    }

    v5 = v3;
    a2();
  }
}

uint64_t objectdestroy_10Tm()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t NetworkManager.getLinkRecommendationMetrics(_:)(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = OUTLINED_FUNCTION_0_0(v6);
  v24 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_1();
  v25 = OUTLINED_FUNCTION_8_1();
  v11 = OUTLINED_FUNCTION_0_0(v25);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_0_1();
  v14 = *(v2 + OBJC_IVAR___SNNetworkManagerInternal_queue);
  OUTLINED_FUNCTION_7_1();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = a1;
  v16[4] = a2;
  v29 = partial apply for closure #1 in NetworkManager.getLinkRecommendationMetrics(_:);
  v30 = v16;
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v27 = v17;
  v28 = &block_descriptor_28;
  v18 = _Block_copy(aBlock);
  v19 = v14;

  outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(a1);
  static DispatchQoS.unspecified.getter();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  OUTLINED_FUNCTION_3_0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v20 = OUTLINED_FUNCTION_6();
  MEMORY[0x223DE2460](v20);
  _Block_release(v18);

  (*(v24 + 8))(v3, v6);
  v21 = OUTLINED_FUNCTION_5_4();
  v22(v21);
}

uint64_t closure #1 in NetworkManager.getLinkRecommendationMetrics(_:)()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(result + OBJC_IVAR___SNNetworkManagerInternal_networkWirelessCoexManager);

    NetworkWirelessCoexManager.getLinkRecommendationMetrics(_:)();
  }

  return result;
}

uint64_t partial apply for closure #1 in NetworkManager.getLinkRecommendationMetrics(_:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return closure #1 in NetworkManager.getLinkRecommendationMetrics(_:)();
}

uint64_t *AceSerializationError.errorDomain.unsafeMutableAddressor()
{
  if (one-time initialization token for errorDomain != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  return &static AceSerializationError.errorDomain;
}

uint64_t static AceSerializationError.errorDomain.setter(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for errorDomain != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  swift_beginAccess();
  static AceSerializationError.errorDomain = a1;
  qword_2813240E0 = a2;
}

uint64_t (*static AceSerializationError.errorDomain.modify())()
{
  if (one-time initialization token for errorDomain != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  swift_beginAccess();
  return static ConnectionConfigurationError.errorDomain.modify;
}

uint64_t key path getter for static AceSerializationError.errorDomain : AceSerializationError.Type@<X0>(void *a1@<X8>)
{
  AceSerializationError.errorDomain.unsafeMutableAddressor();
  swift_beginAccess();
  v2 = qword_2813240E0;
  *a1 = static AceSerializationError.errorDomain;
  a1[1] = v2;
}

uint64_t key path setter for static AceSerializationError.errorDomain : AceSerializationError.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  AceSerializationError.errorDomain.unsafeMutableAddressor();
  swift_beginAccess();
  static AceSerializationError.errorDomain = v2;
  qword_2813240E0 = v1;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for AceSerializationError(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
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

uint64_t storeEnumTagSinglePayload for AceSerializationError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t destructiveInjectEnumTag for AceSerializationError(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t *DataCompressorError.errorDomain.unsafeMutableAddressor()
{
  if (one-time initialization token for errorDomain != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  return &static DataCompressorError.errorDomain;
}

uint64_t static DataCompressorError.errorDomain.getter()
{
  if (one-time initialization token for errorDomain != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  swift_beginAccess();
  v0 = static DataCompressorError.errorDomain;

  return v0;
}

uint64_t static DataCompressorError.errorDomain.setter(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for errorDomain != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  swift_beginAccess();
  static DataCompressorError.errorDomain = a1;
  qword_27D0899D8 = a2;
}

uint64_t (*static DataCompressorError.errorDomain.modify())()
{
  if (one-time initialization token for errorDomain != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  swift_beginAccess();
  return static ConnectionConfigurationError.errorDomain.modify;
}

uint64_t key path getter for static DataCompressorError.errorDomain : DataCompressorError.Type@<X0>(void *a1@<X8>)
{
  DataCompressorError.errorDomain.unsafeMutableAddressor();
  swift_beginAccess();
  v2 = qword_27D0899D8;
  *a1 = static DataCompressorError.errorDomain;
  a1[1] = v2;
}

uint64_t key path setter for static DataCompressorError.errorDomain : DataCompressorError.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  DataCompressorError.errorDomain.unsafeMutableAddressor();
  swift_beginAccess();
  static DataCompressorError.errorDomain = v2;
  qword_27D0899D8 = v1;
}

uint64_t protocol witness for Error._domain.getter in conformance DataCompressorError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DataCompressorError and conformance DataCompressorError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance DataCompressorError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DataCompressorError and conformance DataCompressorError();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t NetworkManager.dataSubscriptionContextUpdate()(const char *a1, uint64_t a2, uint64_t a3)
{
  v7 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = OUTLINED_FUNCTION_0_0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_0_1();
  v14 = v13 - v12;
  v35 = type metadata accessor for DispatchQoS();
  v15 = OUTLINED_FUNCTION_0_0(v35);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_0_1();
  v22 = v21 - v20;
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  v23 = type metadata accessor for Logger();
  v24 = OUTLINED_FUNCTION_17(v23, static Logger.siriNetwork);
  v25 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_15_1(v25))
  {
    v26 = OUTLINED_FUNCTION_14();
    *v26 = 0;
    _os_log_impl(&dword_223515000, v24, v25, a1, v26, 2u);
    OUTLINED_FUNCTION_12();
  }

  v27 = *(v7 + OBJC_IVAR___SNNetworkManagerInternal_queue);
  OUTLINED_FUNCTION_7_1();
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v39 = a2;
  v40 = v28;
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v37 = v29;
  v38 = a3;
  v30 = _Block_copy(aBlock);
  v31 = v27;

  static DispatchQoS.unspecified.getter();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  OUTLINED_FUNCTION_3_0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x223DE2460](0, v22, v14, v30);
  _Block_release(v30);

  v32 = OUTLINED_FUNCTION_16_1();
  v33(v32);
  (*(v17 + 8))(v22, v35);
}

uint64_t NetworkManager.preferredDataSimChanged(_:)(void *a1)
{
  NetworkManager.dataSubscriptionContextChange(_:)(a1);
  OUTLINED_FUNCTION_1_3();
  return NetworkManager.dataSubscriptionContextUpdate()(v1, v2, v3);
}

uint64_t NetworkManager.dataSubscriptionContextChange(_:)(void *a1)
{
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  v2 = type metadata accessor for Logger();
  v3 = OUTLINED_FUNCTION_17(v2, static Logger.siriNetwork);
  v4 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_15_1(v4))
  {
    *OUTLINED_FUNCTION_14() = 0;
    OUTLINED_FUNCTION_6_0();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_11();
  }

  NetworkManager.subscriptionContextUpdate(_:)(a1);
  OUTLINED_FUNCTION_7_3();
  return NetworkManager.carrierNameUpdate(_:)(a1, v10, v11, v12, v13);
}

uint64_t NetworkManager.carrierBundleChange(_:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  v4 = type metadata accessor for Logger();
  v5 = OUTLINED_FUNCTION_17(v4, static Logger.siriNetwork);
  v6 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_15_1(v6))
  {
    *OUTLINED_FUNCTION_14() = 0;
    OUTLINED_FUNCTION_6_0();
    _os_log_impl(v7, v8, v9, v10, v11, 2u);
    OUTLINED_FUNCTION_11();
  }

  v12 = OBJC_IVAR___SNNetworkManagerInternal_lock;
  [*(v2 + OBJC_IVAR___SNNetworkManagerInternal_lock) lock];
  v13 = *(v2 + OBJC_IVAR___SNNetworkManagerInternal_lastDataSubscriptionSlot);
  [*(v2 + v12) unlock];
  if (v13)
  {
    if ([a1 slotID] == v13)
    {
      NetworkManager.dataSubscriptionContextChange(_:)(a1);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_1();
    NetworkManager.dataSubscriptionContextUpdate()(v14, v15, v16);
  }

  OUTLINED_FUNCTION_1_3();
  return NetworkManager.dataSubscriptionContextUpdate()(v17, v18, v19);
}

id NetworkManager.simStatusDidChange(_:status:)(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.siriNetwork);
  v9 = a1;

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v12 = 136315394;
    v21 = [v9 slotID];
    type metadata accessor for CTSubscriptionSlot(0);
    v13 = String.init<A>(describing:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v22);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v22);
    _os_log_impl(&dword_223515000, v10, v11, "NetworkManager - CoreTelephony: SIM Slot %s - Status: %s", v12, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();
  }

  v16 = OBJC_IVAR___SNNetworkManagerInternal_lock;
  [*(v4 + OBJC_IVAR___SNNetworkManagerInternal_lock) lock];
  if ([v9 slotID] == 1)
  {
    v17 = &OBJC_IVAR___SNNetworkManagerInternal_subscriptionSlotOneStatus;
LABEL_9:
    v18 = (v4 + *v17);
    v19 = v18[1];
    *v18 = a2;
    v18[1] = a3;

    return [*(v4 + v16) unlock];
  }

  if ([v9 slotID] == 2)
  {
    v17 = &OBJC_IVAR___SNNetworkManagerInternal_subscriptionSlotTwoStatus;
    goto LABEL_9;
  }

  return [*(v4 + v16) unlock];
}

uint64_t NetworkManager.signalStrengthChanged(_:info:)(void *a1, void *a2)
{
  v3 = v2;
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  v6 = type metadata accessor for Logger();
  v7 = OUTLINED_FUNCTION_17(v6, static Logger.siriNetwork);
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = OUTLINED_FUNCTION_14();
    *v9 = 0;
    _os_log_impl(&dword_223515000, v7, v8, "NetworkManager - CoreTelephony: Signal strength changed", v9, 2u);
    OUTLINED_FUNCTION_12();
  }

  v10 = OBJC_IVAR___SNNetworkManagerInternal_lock;
  [*&v2[OBJC_IVAR___SNNetworkManagerInternal_lock] lock];
  v11 = *&v2[OBJC_IVAR___SNNetworkManagerInternal_lastDataSubscriptionSlot];
  if (v11 == [a1 slotID])
  {
    v12 = [a2 bars];
    if (v12)
    {
      v13 = v12;
      v14 = Int.init(truncating:)();
      v15 = &v2[OBJC_IVAR___SNNetworkManagerInternal_lastSignalStrength];
      *v15 = v14;
      v15[8] = 0;
      v16 = v2;
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v38 = v20;
        *v19 = 136315138;
        if (v15[8])
        {
          v21 = 0xE700000000000000;
          v22 = 0x6E776F6E6B6E75;
        }

        else
        {
          v37 = *v15;
          v22 = String.init<A>(describing:)();
          v21 = v23;
        }

        v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v21, &v38);

        *(v19 + 4) = v24;
        OUTLINED_FUNCTION_6_0();
        _os_log_impl(v25, v26, v27, v28, v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v20);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_11();
      }
    }
  }

  [*&v3[v10] unlock];
  OUTLINED_FUNCTION_8_2();
  NetworkManager.dataSubscriptionContextUpdate()(v30, v31, v32);
  OUTLINED_FUNCTION_1_3();
  return NetworkManager.dataSubscriptionContextUpdate()(v33, v34, v35);
}

id NetworkManager.subscriptionContextUpdate(_:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  v4 = type metadata accessor for Logger();
  v5 = OUTLINED_FUNCTION_17(v4, static Logger.siriNetwork);
  v6 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_15_1(v6))
  {
    *OUTLINED_FUNCTION_14() = 0;
    OUTLINED_FUNCTION_6_0();
    _os_log_impl(v7, v8, v9, v10, v11, 2u);
    OUTLINED_FUNCTION_11();
  }

  v12 = OBJC_IVAR___SNNetworkManagerInternal_lock;
  [*(v2 + OBJC_IVAR___SNNetworkManagerInternal_lock) lock];
  v13 = [a1 slotID];
  *(v2 + OBJC_IVAR___SNNetworkManagerInternal_lastDataSubscriptionSlot) = v13;
  if ([a1 slotID] == 1)
  {
    result = *MEMORY[0x277CC3F00];
    if (*MEMORY[0x277CC3F00])
    {
      v15 = &OBJC_IVAR___SNNetworkManagerInternal_subscriptionSlotOneStatus;
LABEL_11:
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = (v2 + *v15);
      v18 = v17[1];
      *v17 = v16;
      v17[1] = v19;

      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_16;
  }

  if ([a1 slotID] == 2)
  {
    result = *MEMORY[0x277CC3F00];
    if (*MEMORY[0x277CC3F00])
    {
      v15 = &OBJC_IVAR___SNNetworkManagerInternal_subscriptionSlotTwoStatus;
      goto LABEL_11;
    }

LABEL_16:
    __break(1u);
    return result;
  }

LABEL_12:
  [*(v2 + v12) unlock];
  v20 = *(v2 + v12);

  return [v20 unlock];
}

void closure #1 in NetworkManager.carrierNameUpdate(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR___SNNetworkManagerInternal_coreTelephonyClient);
    v6 = MEMORY[0x223DE2070](0x4E72656972726143, 0xEB00000000656D61);
    v7 = [objc_allocWithZone(MEMORY[0x277CC3620]) initWithBundleType_];
    v8 = swift_allocObject();
    *(v8 + 16) = v4;
    aBlock[4] = partial apply for closure #1 in closure #1 in NetworkManager.carrierNameUpdate(_:);
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSObject?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_39;
    v9 = _Block_copy(aBlock);
    v10 = v4;

    [v5 copyCarrierBundleValue:a2 key:v6 bundleType:v7 completion:v9];
    _Block_release(v9);
  }
}

uint64_t closure #1 in closure #1 in NetworkManager.carrierNameUpdate(_:)(uint64_t result, uint64_t a2)
{
  if (!a2 && result)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return static String._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }

  return result;
}

void closure #1 in closure #1 in NetworkManager.dataSubscriptionContextUpdate()(void *a1, NSObject *a2)
{
  if (a2)
  {
    v3 = a2;
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.siriNetwork);
    v5 = a2;
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(oslog, v6))
    {

      v11 = a2;

      goto LABEL_10;
    }

    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = a2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_223515000, oslog, v6, "NetworkManager - CoreTelephony Error: Data Subscription Context Error: %@", v7, 0xCu);
    outlined destroy of NSObject?(v8);
    MEMORY[0x223DE38F0](v8, -1, -1);
    MEMORY[0x223DE38F0](v7, -1, -1);
  }

  else
  {
    if (!a1)
    {
      return;
    }

    oslog = a1;
    NetworkManager.dataSubscriptionContextChange(_:)(oslog);
  }

  v11 = oslog;

LABEL_10:
}

void closure #1 in NetworkManager.dataServiceDescriptorUpdate()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR___SNNetworkManagerInternal_coreTelephonyClient);
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    aBlock[4] = partial apply for closure #1 in closure #1 in NetworkManager.dataServiceDescriptorUpdate();
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSObject?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_26;
    v4 = _Block_copy(aBlock);
    v5 = v2;
    v6 = v1;

    [v5 getCurrentDataServiceDescriptor_];
    _Block_release(v4);
  }
}

void closure #1 in closure #1 in NetworkManager.dataServiceDescriptorUpdate()(void *a1, NSObject *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2;
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.siriNetwork);
    v6 = a2;
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = a2;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_223515000, oslog, v7, "NetworkManager - CoreTelephony Error: Data Service Descriptor Error: %@", v8, 0xCu);
      outlined destroy of NSObject?(v9);
      MEMORY[0x223DE38F0](v9, -1, -1);
      MEMORY[0x223DE38F0](v8, -1, -1);

      v12 = oslog;
    }

    else
    {

      v12 = a2;
    }
  }

  else
  {
    v15 = OBJC_IVAR___SNNetworkManagerInternal_lock;
    [*(a3 + OBJC_IVAR___SNNetworkManagerInternal_lock) lock];
    v16 = *(a3 + OBJC_IVAR___SNNetworkManagerInternal_dataServiceDescriptor);
    *(a3 + OBJC_IVAR___SNNetworkManagerInternal_dataServiceDescriptor) = a1;

    v17 = *(a3 + v15);
    v18 = a1;

    [v17 unlock];
  }
}

void closure #1 in NetworkManager.serviceSubscriptionInfoUpdate()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR___SNNetworkManagerInternal_coreTelephonyClient);
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    aBlock[4] = partial apply for closure #1 in closure #1 in NetworkManager.serviceSubscriptionInfoUpdate();
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSObject?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_6;
    v4 = _Block_copy(aBlock);
    v5 = v2;
    v6 = v1;

    [v5 getSubscriptionInfo_];
    _Block_release(v4);
  }
}

void closure #1 in closure #1 in NetworkManager.serviceSubscriptionInfoUpdate()(void *a1, unint64_t a2, uint64_t a3)
{
  if (a1 && (v5 = outlined bridged method (pb) of @objc CTXPCServiceSubscriptionInfo.subscriptions.getter(a1)) != 0)
  {
    v6 = v5;
    v7 = OBJC_IVAR___SNNetworkManagerInternal_lock;
    [*(a3 + OBJC_IVAR___SNNetworkManagerInternal_lock) lock];
    a2 = specialized Array.count.getter(v6);

    if ((a2 & 0x8000000000000000) == 0)
    {
      v8 = a3 + OBJC_IVAR___SNNetworkManagerInternal_subscriptionCount;
      *v8 = a2;
      *(v8 + 8) = 0;
      v9 = *(a3 + v7);

      [v9 unlock];
      return;
    }

    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return;
    }

    v10 = a2;
    if (one-time initialization token for siriNetwork == -1)
    {
      goto LABEL_9;
    }
  }

  swift_once();
LABEL_9:
  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.siriNetwork);
  v12 = a2;
  oslog = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = a2;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_223515000, oslog, v13, "NetworkManager - CoreTelephony Error: Subscription Info Error: %@", v14, 0xCu);
    outlined destroy of NSObject?(v15);
    MEMORY[0x223DE38F0](v15, -1, -1);
    MEMORY[0x223DE38F0](v14, -1, -1);

    v18 = oslog;
  }

  else
  {

    v18 = a2;
  }
}

void closure #1 in NetworkManager.dataSubscriptionContextUpdate()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + OBJC_IVAR___SNNetworkManagerInternal_coreTelephonyClient);
    OUTLINED_FUNCTION_7_1();
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    aBlock[4] = a3;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSObject?, @guaranteed Error?) -> ();
    aBlock[3] = a4;
    v10 = _Block_copy(aBlock);
    v11 = v8;
    v12 = v7;

    [v11 getCurrentDataSubscriptionContext_];
    _Block_release(v10);
  }
}

void closure #1 in closure #1 in NetworkManager.signalStrengthUpdate()(void *a1, NSObject *a2)
{
  if (a1)
  {
    oslog = a1;
    NetworkManager.carrierNameUpdate(_:)(oslog, "NetworkManager - CoreTelephony: signalStrengthUpdate", &unk_2836B0310, partial apply for closure #1 in NetworkManager.signalStrengthUpdate(_:), &block_descriptor_56);
    goto LABEL_3;
  }

  if (a2)
  {
    v4 = a2;
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.siriNetwork);
    v6 = a2;
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(oslog, v7))
    {

      v2 = a2;

      goto LABEL_5;
    }

    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = a2;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_223515000, oslog, v7, "NetworkManager - CoreTelephony Error: Data Subscription Error: %@", v8, 0xCu);
    outlined destroy of NSObject?(v9);
    MEMORY[0x223DE38F0](v9, -1, -1);
    MEMORY[0x223DE38F0](v8, -1, -1);

LABEL_3:
    v2 = oslog;

LABEL_5:
  }
}

uint64_t NetworkManager.carrierNameUpdate(_:)(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = OUTLINED_FUNCTION_0_0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_0_1();
  v14 = v13 - v12;
  v39 = type metadata accessor for DispatchQoS();
  v15 = OUTLINED_FUNCTION_0_0(v39);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_0_1();
  v22 = v21 - v20;
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  v23 = type metadata accessor for Logger();
  v24 = OUTLINED_FUNCTION_17(v23, static Logger.siriNetwork);
  v25 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_15_1(v25))
  {
    v26 = OUTLINED_FUNCTION_14();
    *v26 = 0;
    _os_log_impl(&dword_223515000, v24, v25, a2, v26, 2u);
    OUTLINED_FUNCTION_12();
  }

  v27 = *(v38 + OBJC_IVAR___SNNetworkManagerInternal_queue);
  OUTLINED_FUNCTION_7_1();
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  *(v29 + 24) = a1;
  v43 = a4;
  v44 = v29;
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v41 = v30;
  v42 = a5;
  v31 = _Block_copy(aBlock);
  v32 = v27;

  v33 = a1;
  static DispatchQoS.unspecified.getter();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  OUTLINED_FUNCTION_3_0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x223DE2460](0, v22, v14, v31);
  _Block_release(v31);

  v34 = OUTLINED_FUNCTION_16_1();
  v35(v34);
  (*(v17 + 8))(v22, v39);
}

void closure #1 in NetworkManager.signalStrengthUpdate(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR___SNNetworkManagerInternal_coreTelephonyClient);
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    aBlock[4] = partial apply for closure #1 in closure #1 in NetworkManager.signalStrengthUpdate(_:);
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSObject?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_62;
    v7 = _Block_copy(aBlock);
    v8 = v5;
    v9 = v4;

    [v8 getSignalStrengthInfo:a2 completion:v7];
    _Block_release(v7);
  }
}

void closure #1 in closure #1 in NetworkManager.signalStrengthUpdate(_:)(void *a1, NSObject *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2;
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.siriNetwork);
    v6 = a2;
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(oslog, v7))
    {

      v17 = a2;

      goto LABEL_11;
    }

    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = a2;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_223515000, oslog, v7, "NetworkManager - CoreTelephony Error: Signal Strength Error: %@", v8, 0xCu);
    outlined destroy of NSObject?(v9);
    MEMORY[0x223DE38F0](v9, -1, -1);
    MEMORY[0x223DE38F0](v8, -1, -1);

LABEL_9:
    v17 = oslog;

LABEL_11:

    return;
  }

  if (a1)
  {
    v13 = [a1 bars];
    if (v13)
    {
      v14 = OBJC_IVAR___SNNetworkManagerInternal_lock;
      oslog = v13;
      [*(a3 + OBJC_IVAR___SNNetworkManagerInternal_lock) lock];
      v15 = Int.init(truncating:)();
      v16 = a3 + OBJC_IVAR___SNNetworkManagerInternal_lastSignalStrength;
      *v16 = v15;
      *(v16 + 8) = 0;
      [*(a3 + v14) unlock];
      goto LABEL_9;
    }
  }
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSObject?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
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

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined bridged method (pb) of @objc CTXPCServiceSubscriptionInfo.subscriptions.getter(void *a1)
{
  v1 = [a1 subscriptions];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for CTServiceDescriptor(0, &lazy cache variable for type metadata for CTXPCServiceSubscriptionContext, 0x277CC3798);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}