uint64_t objectdestroy_29Tm()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t ConnectionProviderProtocol.connectionAnalysisInfo.getter@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v27 - v6;
  v8 = a1[18];
  v9 = OUTLINED_FUNCTION_18();
  v8(v9);
  memcpy(v38, v39, sizeof(v38));
  v31 = v7;
  ConnectionConfiguration.resolvedURL.getter(v7);
  outlined destroy of ConnectionConfiguration(v39);
  v10 = a1[20];
  v11 = OUTLINED_FUNCTION_18();
  v10(v11);
  memcpy(v41, v40, 0x121uLL);
  v30 = _s11SiriNetwork25ConnectionInterfaceReportVSgWOg(v41);
  if (v30 == 1)
  {
    v29 = 0;
  }

  else
  {
    outlined destroy of ConnectionSnapshotReport?(v40, &_s11SiriNetwork25ConnectionInterfaceReportVSgMd, &_s11SiriNetwork25ConnectionInterfaceReportVSgMR);
    v29 = v41[9];
  }

  v12 = OUTLINED_FUNCTION_18();
  v10(v12);
  memcpy(v37, v36, 0x121uLL);
  if (_s11SiriNetwork25ConnectionInterfaceReportVSgWOg(v37) == 1 || (outlined init with copy of ConnectionSnapshotReport?(&v37[40], v33, &_s11SiriNetwork24ConnectionTCPInfoMetricsVSgMd, _s11SiriNetwork24ConnectionTCPInfoMetricsVSgMR), outlined destroy of ConnectionSnapshotReport?(v36, &_s11SiriNetwork25ConnectionInterfaceReportVSgMd, &_s11SiriNetwork25ConnectionInterfaceReportVSgMR), memcpy(v34, &v37[40], 0xF9uLL), _s11SiriNetwork24ConnectionTCPInfoMetricsVSgWOg(v34) == 1) || (outlined destroy of ConnectionSnapshotReport?(&v37[40], &_s11SiriNetwork24ConnectionTCPInfoMetricsVSgMd, _s11SiriNetwork24ConnectionTCPInfoMetricsVSgMR), LOBYTE(v34[28]) == 1))
  {
    v28 = 0;
  }

  else
  {
    v28 = v34[27];
  }

  v13 = OUTLINED_FUNCTION_18();
  v8(v13);
  outlined destroy of ConnectionConfiguration(v33);
  v14 = a1[21];
  v15 = OUTLINED_FUNCTION_18();
  v16(v15);
  v17 = v32[87];
  v18 = OUTLINED_FUNCTION_18();
  v8(v18);
  outlined init with copy of ConnectionSnapshotReport?(v35, v32, &_s11SiriNetwork16ConnectionPolicyVSgMd, &_s11SiriNetwork16ConnectionPolicyVSgMR);
  outlined destroy of ConnectionConfiguration(v34);
  if (v35[9])
  {
    v19 = v35[1];
    v20 = v35[0];

    outlined destroy of ConnectionSnapshotReport?(v35, &_s11SiriNetwork16ConnectionPolicyVSgMd, &_s11SiriNetwork16ConnectionPolicyVSgMR);
  }

  else
  {
    v20 = 0;
    v19 = 0;
  }

  v21 = v30 == 1;
  v22 = v33[96];
  outlined init with take of URL?(v31, a2);
  v23 = type metadata accessor for ConnectionAnalysisInfo();
  v24 = a2 + v23[5];
  *v24 = v29;
  *(v24 + 4) = v21;
  *(a2 + v23[6]) = v28;
  *(a2 + v23[7]) = v22;
  *(a2 + v23[8]) = v17;
  v25 = (a2 + v23[9]);
  *v25 = v20;
  v25[1] = v19;
  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v23);
}

uint64_t ConnectionProviderProtocol.hash(into:)(void *a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 144))(__src, a2, a3);
  memcpy(v5, __src, sizeof(v5));
  ConnectionConfiguration.hash(into:)(a1);
  return outlined destroy of ConnectionConfiguration(__src);
}

uint64_t static ConnectionProviderProtocol.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v6 = *(a4 + 144);
  v6(__src, a3, a4);
  v6(v8, a3, v4);
  LOBYTE(v4) = static ConnectionConfiguration.== infix(_:_:)(__src, v8);
  memcpy(__dst, v8, 0x204uLL);
  outlined destroy of ConnectionConfiguration(__dst);
  memcpy(v11, __src, 0x204uLL);
  outlined destroy of ConnectionConfiguration(v11);
  return v4 & 1;
}

uint64_t ConnectionProviderProtocol.updateConnectionMetricsSnapthotReport(_:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (*(a4 + 520))(a3, a4);
  if (a1)
  {
    return a1(result);
  }

  return result;
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ConnectionAnalysisInfo.connectionType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ConnectionAnalysisInfo();
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t ConnectionAnalysisInfo.policyId.getter()
{
  v1 = (v0 + *(type metadata accessor for ConnectionAnalysisInfo() + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

void type metadata completion function for ConnectionAnalysisInfo()
{
  type metadata accessor for URL?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for UInt32?);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for String?);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for URL?()
{
  if (!lazy cache variable for type metadata for URL?)
  {
    type metadata accessor for URL();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for URL?);
    }
  }
}

void type metadata accessor for UInt32?(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t RPCOspreyConnectionProvider.__allocating_init(connectionConfiguration:connectionQueue:networkManager:networkAnalytics:)(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  RPCOspreyConnectionProvider.init(connectionConfiguration:connectionQueue:networkManager:networkAnalytics:)(a1, a2, a3, a4);
  return v8;
}

uint64_t RPCOspreyConnectionProvider.init(connectionConfiguration:connectionQueue:networkManager:networkAnalytics:)(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = type metadata accessor for UUID();
  v9 = OUTLINED_FUNCTION_0_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_0_1();
  v16 = v15 - v14;
  memcpy(v29, a1, sizeof(v29));
  *(v5 + 1512) = 0;
  *(v5 + 1528) = 0;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 2168) = 0;
  *(v5 + 2080) = 0u;
  *(v5 + 2096) = 0u;
  *(v5 + 2109) = 0;
  *(v5 + 2120) = 0u;
  *(v5 + 2136) = 0u;
  *(v5 + 2152) = 0;
  UUID.init()();
  v17 = UUID.uuidString.getter();
  v19 = v18;
  (*(v11 + 8))(v16, v8);
  *(v5 + 16) = v17;
  *(v5 + 24) = v19;
  memcpy((v5 + 1552), v29, 0x204uLL);
  *(v5 + 2072) = a2;
  _s11SiriNetwork27ConnectionPreparationReportVSgWOi0_(v30);
  memcpy(v39, v30, sizeof(v39));
  _s11SiriNetwork24ConnectionSnapshotReportVSgWOi0_(v31);
  *(v5 + 72) = 0;
  *(v5 + 80) = 1;
  v20 = v42[0];
  *(v5 + 84) = *(v42 + 3);
  *(v5 + 81) = v20;
  v21 = MEMORY[0x277D84F90];
  *(v5 + 88) = MEMORY[0x277D84F90];
  *(v5 + 96) = 0u;
  *(v5 + 112) = v21;
  *(v5 + 120) = 0;
  *(v5 + 124) = 1;
  LOWORD(v20) = v40;
  *(v5 + 127) = v41;
  *(v5 + 125) = v20;
  *(v5 + 160) = 0;
  *(v5 + 128) = 0u;
  *(v5 + 144) = 0u;
  memcpy((v5 + 168), v39, 0x168uLL);
  *(v5 + 528) = 0u;
  *(v5 + 544) = 0u;
  *(v5 + 560) = 0u;
  *(v5 + 576) = 0u;
  *(v5 + 592) = 0u;
  *(v5 + 608) = 0u;
  *(v5 + 624) = 0u;
  memcpy((v5 + 640), v31, 0x2C8uLL);
  *(v5 + 1352) = v21;
  *(v5 + 1360) = 0u;
  *(v5 + 1376) = 0u;
  *(v5 + 1392) = 0;
  *(v5 + 1400) = 1;
  *(v5 + 1401) = *v38;
  *(v5 + 1404) = *&v38[3];
  *(v5 + 1408) = 0;
  *(v5 + 1416) = 1;
  v22 = *&v36[3];
  *(v5 + 1417) = *v37;
  *(v5 + 1420) = *&v37[3];
  *(v5 + 1424) = 0;
  *(v5 + 1432) = 1;
  v23 = *v36;
  *(v5 + 1436) = v22;
  *(v5 + 1433) = v23;
  *(v5 + 1456) = 0;
  *(v5 + 1440) = 0u;
  *(v5 + 1460) = 1;
  *(v5 + 1463) = v35;
  *(v5 + 1461) = v34;
  *(v5 + 1464) = 0;
  *(v5 + 1472) = 1;
  *(v5 + 1473) = *v33;
  *(v5 + 1476) = *&v33[3];
  *(v5 + 1480) = 0;
  *(v5 + 1488) = 1;
  v24 = *v32;
  *(v5 + 1492) = *&v32[3];
  *(v5 + 1489) = v24;
  *(v5 + 1496) = 0;
  *(v5 + 1504) = 1;
  *(v5 + 1536) = 0;
  *(v5 + 1544) = 2;
  *(v5 + 2160) = a4;
  v25 = *(v5 + 1512);
  *(v5 + 1512) = a3;

  return v5;
}

uint64_t RPCOspreyConnectionProvider.deinit()
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
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_6_0();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    v10 = OUTLINED_FUNCTION_1_2();
    MEMORY[0x223DE38F0](v10);
  }

  v11 = OUTLINED_FUNCTION_13_0();
  outlined consume of ConnectionProviderState(v11, v12);
  *(v1 + 1528) = 0;
  swift_unknownObjectWeakAssign();
  v13 = OUTLINED_FUNCTION_33_0();
  *(v1 + 2080) = 0u;
  outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v13);
  specialized ConnectionProviderProtocol.cancelOpenTimer()();
  specialized ConnectionProviderProtocol.cancelOpenSlowTimer()();
  specialized ConnectionProviderProtocol.cancelStaleConnectionTimer()();
  specialized ConnectionProviderProtocol.cancelConnectionUnviableTimer()();
  RPCOspreyConnectionProvider.closeWithError(_:)(0);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_15_0();
    _os_log_impl(v16, v17, v18, v19, v20, 2u);
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
  }

  v21 = *(v1 + 24);

  outlined destroy of ConnectionSnapshotReport?(v1 + 32, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMd, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMR);
  OUTLINED_FUNCTION_41_1(v28);
  outlined destroy of ConnectionMetrics(v28);

  outlined destroy of weak ConnectionProviderDelegate?(v1 + 1520);
  outlined consume of ConnectionProviderState(*(v1 + 1536), *(v1 + 1544));
  memcpy(__dst, (v1 + 1552), 0x204uLL);
  outlined destroy of ConnectionConfiguration(__dst);

  v22 = OUTLINED_FUNCTION_33_0();
  outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v22);

  v23 = *(v1 + 2128);
  swift_unknownObjectRelease();
  v24 = *(v1 + 2136);
  swift_unknownObjectRelease();
  v25 = *(v1 + 2144);
  swift_unknownObjectRelease();
  v26 = *(v1 + 2152);
  swift_unknownObjectRelease();

  return v1;
}

uint64_t RPCOspreyConnectionProvider.__deallocating_deinit()
{
  RPCOspreyConnectionProvider.deinit();

  return MEMORY[0x2821FE8D8](v0, 2170, 7);
}

uint64_t RPCOspreyConnectionProvider.openConnectionWithInitialPayload(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.siriNetwork);
  OUTLINED_FUNCTION_11_3();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    OUTLINED_FUNCTION_6_5();
    v11 = swift_slowAlloc();
    OUTLINED_FUNCTION_4_3();
    v12 = swift_slowAlloc();
    v25 = v12;
    *v11 = 136315138;
    v23 = v4;
    v13 = *(v6 + 16);
    v14 = *(v6 + 24);

    v15 = a2;
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v25);
    v5 = v23;

    *(v11 + 4) = v16;
    a2 = v15;
    OUTLINED_FUNCTION_36(&dword_223515000, v17, v18, "Provider - RPCOspreyConnectionProvider [%s]: Preparing connection with initial payload.");
    __swift_destroy_boxed_opaque_existential_0(v12);
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
  }

  v19 = OUTLINED_FUNCTION_33_0();
  *(v6 + 2080) = 0u;
  outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v19);
  specialized ConnectionProviderProtocol.cancelOpenTimer()();
  specialized ConnectionProviderProtocol.cancelOpenSlowTimer()();
  specialized ConnectionProviderProtocol.configureNetworkAnalytics()();
  result = _s11SiriNetwork27RPCOspreyConnectionProviderC06createD18WithInitialPayload_09rpcOspreyD12ProtocolTypeySo16OS_dispatch_dataCSg_xmtKAA0cdL0RzlFAA0abK7ChannelC_Tt0g5();
  if (!v5)
  {
    v21 = OUTLINED_FUNCTION_13_0();
    outlined consume of ConnectionProviderState(v21, v22);
    return RPCOspreyConnectionProvider.startConnectionWithOpenTimeoutTimer(completion:)(a2, a3);
  }

  return result;
}

uint64_t _s11SiriNetwork27RPCOspreyConnectionProviderC06createD18WithInitialPayload_09rpcOspreyD12ProtocolTypeySo16OS_dispatch_dataCSg_xmtKAA0cdL0RzlFAA0abK7ChannelC_Tt0g5()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v30 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - v13;
  memcpy(v37, (v0 + 1552), sizeof(v37));
  ConnectionConfiguration.resolvedURL.getter(v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    outlined destroy of ConnectionSnapshotReport?(v6, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
    v15 = swift_allocError();
    *(v16 + 8) = 0;
    *(v16 + 16) = 0;
    *v16 = 0;
    v32 = xmmword_2235F01E0;
    *(v16 + 24) = xmmword_2235F01E0;
    v17 = *(v0 + 1536);
    *(v0 + 1536) = v15;
    LOBYTE(v16) = *(v0 + 1544);
    *(v0 + 1544) = 1;
    outlined consume of ConnectionProviderState(v17, v16);
    swift_allocError();
    *(v18 + 8) = 0;
    *(v18 + 16) = 0;
    *v18 = 0;
    *(v18 + 24) = v32;
    return swift_willThrow();
  }

  else
  {
    (*(v8 + 32))(v14, v6, v7);
    if (one-time initialization token for streamOpenNetwork != -1)
    {
      swift_once();
    }

    siri_kdebug_trace(static Constants.Signposts.streamOpenNetwork);
    v20 = *(v0 + 1536);
    *(v0 + 1536) = 0;
    v21 = *(v0 + 1544);
    *(v0 + 1544) = 2;
    outlined consume of ConnectionProviderState(v20, v21);
    v22 = type metadata accessor for SiriNetworkOspreyChannel();
    (*(v8 + 16))(v12, v14, v7);
    memcpy(v36, v2 + 194, 0x204uLL);
    memcpy(v34, v2 + 194, 0x204uLL);
    v35[3] = v22;
    v35[4] = &protocol witness table for SiriNetworkOspreyChannel;
    outlined init with copy of ConnectionConfiguration(v36, &v33);
    v35[0] = SiriNetworkOspreyChannel.__allocating_init(url:connectionConfiguration:)(v12);
    swift_beginAccess();
    outlined assign with take of RPCOspreyConnectionProtocol?(v35, (v2 + 4));
    swift_endAccess();
    v23 = RPCOspreyConnectionProvider.connection.modify();
    v25 = *(v24 + 24);
    if (v25)
    {
      v26 = v2[2];
      v27 = v2[3];
      v31 = v23;
      *&v32 = v1;
      v28 = *(v24 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
      v38 = v14;
      v29 = *(v28 + 64);

      v29(v26, v27, v25, v28);
      v14 = v38;
      (v31)(v34, 0);
    }

    else
    {
      (v23)(v34, 0);
    }

    return (*(v8 + 8))(v14, v7);
  }
}

uint64_t RPCOspreyConnectionProvider.startConnectionWithOpenTimeoutTimer(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = OUTLINED_FUNCTION_0_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_1();
  v13 = v12 - v11;
  v32 = type metadata accessor for DispatchQoS();
  v14 = OUTLINED_FUNCTION_0_0(v32);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_0_1();
  v21 = v20 - v19;
  v22 = *(v2 + 1536);
  *(v2 + 1536) = 0;
  v23 = *(v2 + 1544);
  *(v2 + 1544) = 0;
  outlined consume of ConnectionProviderState(v22, v23);
  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  outlined init with copy of ConnectionSnapshotReport?(v2 + 32, &aBlock, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMd, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMR);
  if (v35)
  {
    outlined init with take of RPCOspreyConnectionProtocol(&aBlock, v38);
    specialized ConnectionProviderProtocol.openCompletionSetup(completion:)(a1, a2);
    specialized ConnectionProviderProtocol.setupOpenTimeoutTimer()();
    specialized ConnectionProviderProtocol.setupOpenSlowTimer()();
    [*__swift_project_boxed_opaque_existential_1(v38 v38[3])];
    v31 = *(v2 + 2072);
    OUTLINED_FUNCTION_7_1();
    v24 = swift_allocObject();
    swift_weakInit();
    v36 = partial apply for closure #1 in RPCOspreyConnectionProvider.startConnectionWithOpenTimeoutTimer(completion:);
    v37 = v24;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v34 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v35 = &block_descriptor_142;
    v25 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v38[6] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type RPCOspreyConnectionProvider and conformance RPCOspreyConnectionProvider(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x223DE2460](0, v21, v13, v25);
    _Block_release(v25);
    (*(v8 + 8))(v13, v5);
    (*(v16 + 8))(v21, v32);

    return __swift_destroy_boxed_opaque_existential_0(v38);
  }

  else
  {
    outlined destroy of ConnectionSnapshotReport?(&aBlock, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMd, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMR);
    lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
    OUTLINED_FUNCTION_10_0();
    v27 = swift_allocError();
    OUTLINED_FUNCTION_34_0(v27, v28);
    return OUTLINED_FUNCTION_39(xmmword_2235F01E0, v29, v30);
  }
}

uint64_t closure #1 in RPCOspreyConnectionProvider.startConnectionWithOpenTimeoutTimer(completion:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(result + 2080);
    if (v2)
    {
      v3 = (result + 2080);
      v4 = *(result + 2088);

      RPCOspreyConnectionProvider.updateAndEmitConnectionMetricsPreparationReport()();
      memset(v7, 0, 41);
      v2(v7);
      outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v2);
      v5 = *(v1 + 2080);
      v6 = *(v1 + 2088);
      *v3 = 0;
      *(v1 + 2088) = 0;
      outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v5);
    }
  }

  return result;
}

void RPCOspreyConnectionProvider.closeWithError(_:)(id a1)
{
  if (*(v1 + 2115))
  {
    return;
  }

  v4 = v1;
  *(v1 + 2114) = 257;
  v6 = *(v1 + 1544) == 2 && *(v1 + 1536) == 2;
  if (v6)
  {
    *(v1 + 1536) = 0;
    *(v1 + 1544) = 2;
  }

  if (a1)
  {
    *&v57 = a1;
    v7 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      if (v55 >> 60 == 10 && !*(&v55 + 1))
      {
        v8 = v55 == 0xA000000000000000 && v53 == 1;
        if (v8 && v54 == 0)
        {
          OUTLINED_FUNCTION_32_0();
          if (!v6)
          {
            OUTLINED_FUNCTION_0_8();
            swift_once();
          }

          v9 = type metadata accessor for Logger();
          __swift_project_value_buffer(v9, static Logger.siriNetwork);
          OUTLINED_FUNCTION_11_3();

          v10 = Logger.logObject.getter();
          v11 = static os_log_type_t.default.getter();

          if (!os_log_type_enabled(v10, v11))
          {
            goto LABEL_32;
          }

          goto LABEL_25;
        }
      }

      outlined consume of NetworkConnectionError(v53, v54, *(&v54 + 1), v55, *(&v55 + 1));
    }

    OUTLINED_FUNCTION_32_0();
    if (!v6)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.siriNetwork);
    v22 = a1;

    v10 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v10, v23))
    {
      goto LABEL_32;
    }

    OUTLINED_FUNCTION_30();
    v24 = swift_slowAlloc();
    v2 = swift_slowAlloc();
    OUTLINED_FUNCTION_4_3();
    v25 = swift_slowAlloc();
    v53 = v25;
    *v24 = 136315394;
    v26 = *(v4 + 16);
    v27 = *(v4 + 24);

    v3 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v53);

    *(v24 + 4) = v3;
    *(v24 + 12) = 2112;
    v28 = a1;
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v24 + 14) = v29;
    *v2 = v29;
    _os_log_impl(&dword_223515000, v10, v23, "Provider - RPCOspreyConnectionProvider [%s]: Close and cancel connection for error: %@", v24, 0x16u);
    outlined destroy of ConnectionSnapshotReport?(v2, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
    __swift_destroy_boxed_opaque_existential_0(v25);
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_32_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.siriNetwork);
  OUTLINED_FUNCTION_11_3();

  v10 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v10, v13))
  {
    goto LABEL_32;
  }

LABEL_25:
  OUTLINED_FUNCTION_6_5();
  v14 = swift_slowAlloc();
  OUTLINED_FUNCTION_4_3();
  v15 = swift_slowAlloc();
  v53 = v15;
  OUTLINED_FUNCTION_20_0(4.8149e-34);
  v2 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v3, &v53);

  *(v14 + 4) = v2;
  OUTLINED_FUNCTION_6_0();
  _os_log_impl(v16, v17, v18, v19, v20, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v15);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x223DE38F0]();
LABEL_31:
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x223DE38F0]();
LABEL_32:

  v30 = v4;
  specialized ConnectionProviderProtocol.cancelStaleConnectionTimer()();
  specialized ConnectionProviderProtocol.cancelConnectionUnviableTimer()();
  specialized ConnectionProviderProtocol.cancelOpenTimer()();
  specialized ConnectionProviderProtocol.cancelOpenSlowTimer()();
  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  outlined init with copy of ConnectionSnapshotReport?(v4 + 32, &v57, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMd, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMR);
  if (*(&v58 + 1))
  {
    outlined init with take of RPCOspreyConnectionProtocol(&v57, &v53);
    v59 = 0;
    v57 = 0u;
    v58 = 0u;
    swift_beginAccess();
    outlined assign with take of RPCOspreyConnectionProtocol?(&v57, v4 + 32);
    swift_endAccess();
    v31 = *(v4 + 2160);
    v32 = OUTLINED_FUNCTION_31_0();
    NetworkAnalytics.setIsConnectionActive(_:)(v32);

    v33 = *(v4 + 2160);
    v34 = OUTLINED_FUNCTION_31_0();
    NetworkAnalytics.setNetIdAvailable(_:)(v34);

    [*__swift_project_boxed_opaque_existential_1(&v53 v55)];
    OUTLINED_FUNCTION_32_0();
    if (!v6)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Logger.siriNetwork);
    OUTLINED_FUNCTION_11_3();

    v30 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v30, v36))
    {
      OUTLINED_FUNCTION_6_5();
      v37 = swift_slowAlloc();
      OUTLINED_FUNCTION_4_3();
      v38 = swift_slowAlloc();
      *&v57 = v38;
      OUTLINED_FUNCTION_20_0(4.8149e-34);
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v3, &v57);

      *(v37 + 4) = v39;
      OUTLINED_FUNCTION_6_0();
      _os_log_impl(v40, v41, v42, v43, v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      OUTLINED_FUNCTION_2_2();
      MEMORY[0x223DE38F0]();
      v45 = OUTLINED_FUNCTION_1_2();
      MEMORY[0x223DE38F0](v45);
    }

    __swift_destroy_boxed_opaque_existential_0(&v53);
  }

  else
  {
    outlined destroy of ConnectionSnapshotReport?(&v57, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMd, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMR);
  }

  v46 = *(v4 + 2080);
  if (v46)
  {
    v30 = *(v4 + 2088);
    v53 = a1;
    v54 = 0u;
    v55 = 0u;
    v56 = 1;
    v47 = a1;
    outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(v46);
    v46(&v53);
    outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v46);
    outlined consume of Result<(), NetworkConnectionError>(v53, v54, *(&v54 + 1), v55, *(&v55 + 1), v56);
    v48 = OUTLINED_FUNCTION_33_0();
    *(v4 + 2080) = 0;
    *(v4 + 2088) = 0;
    outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v48);
  }

  else if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_11_3();
    specialized BackgroundConnection.connectionProvider(_:received:)();
    swift_unknownObjectRelease();
  }

  v49 = *(v4 + 2160);
  v50 = OUTLINED_FUNCTION_31_0();
  NetworkAnalytics.setIsConnectionActive(_:)(v50);

  v51 = *(v4 + 2160);
  v52 = OUTLINED_FUNCTION_31_0();
  NetworkAnalytics.setNetIdAvailable(_:)(v52);
}

void RPCOspreyConnectionProvider.send(data:completion:)(uint64_t a1, unint64_t a2, void (*a3)(void, void))
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v113 - v9;
  if (a2 >> 60 == 15)
  {
    return;
  }

  if (!*(v3 + 1544))
  {
    goto LABEL_10;
  }

  v11 = *(v3 + 1536);
  if (*(v3 + 1544) == 1)
  {
    v12 = OUTLINED_FUNCTION_3_2();
    outlined copy of Data?(v12, v13);
    v14 = OUTLINED_FUNCTION_35();
    outlined copy of ConnectionProviderState(v14, v15);
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.siriNetwork);
    v17 = OUTLINED_FUNCTION_3_2();
    outlined copy of Data?(v17, v18);

    v19 = OUTLINED_FUNCTION_35();
    outlined copy of ConnectionProviderState(v19, v20);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    v23 = OUTLINED_FUNCTION_35();
    outlined consume of ConnectionProviderState(v23, v24);
    if (os_log_type_enabled(v21, v22))
    {
      OUTLINED_FUNCTION_4_3();
      v25 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      OUTLINED_FUNCTION_4_3();
      v117 = swift_slowAlloc();
      v116[0] = v117;
      OUTLINED_FUNCTION_23_0(4.8152e-34);
      v26 = OUTLINED_FUNCTION_22_0();

      *(v25 + 4) = v26;
      OUTLINED_FUNCTION_16_3();
      v27 = 0;
      switch(v28)
      {
        case 1:
          OUTLINED_FUNCTION_29_0();
          if (!v72)
          {
            v27 = v27;
            goto LABEL_39;
          }

          __break(1u);
          goto LABEL_69;
        case 2:
          OUTLINED_FUNCTION_28_1();
          if (!v72)
          {
            goto LABEL_39;
          }

LABEL_69:
          __break(1u);
          goto LABEL_70;
        case 3:
          goto LABEL_39;
        default:
          v27 = BYTE6(a2);
LABEL_39:
          *(v25 + 14) = v27;
          v80 = OUTLINED_FUNCTION_3_2();
          outlined consume of Data?(v80, v81);
          *(v25 + 22) = 2112;
          if (v11)
          {
            v82 = v11;
            v83 = _swift_stdlib_bridgeErrorToNSError();
            v84 = v83;
          }

          else
          {
            v83 = 0;
            v84 = 0;
          }

          *(v25 + 24) = v83;
          v85 = v113;
          *v113 = v84;
          _os_log_impl(&dword_223515000, v21, v22, "Provider - RPCOspreyConnectionProvider [%s]: Send data failed. Sending %ld bytes error %@.", v25, 0x20u);
          outlined destroy of ConnectionSnapshotReport?(v85, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v86 = OUTLINED_FUNCTION_1_2();
          MEMORY[0x223DE38F0](v86);
          __swift_destroy_boxed_opaque_existential_0(v117);
          v87 = OUTLINED_FUNCTION_1_2();
          MEMORY[0x223DE38F0](v87);
          OUTLINED_FUNCTION_2_2();
          MEMORY[0x223DE38F0]();
          goto LABEL_43;
      }
    }

    v42 = OUTLINED_FUNCTION_3_2();
    outlined consume of Data?(v42, v43);
LABEL_43:

    if (v11)
    {
      v116[0] = v11;
      v88 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v89 = type metadata accessor for NWError();
      v90 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v10, v90 ^ 1u, 1, v89);
      if (__swift_getEnumTagSinglePayload(v10, 1, v89) != 1)
      {
        lazy protocol witness table accessor for type RPCOspreyConnectionProvider and conformance RPCOspreyConnectionProvider(&lazy protocol witness table cache variable for type NWError and conformance NWError, 255, MEMORY[0x277CD8FC0]);
        OUTLINED_FUNCTION_10_0();
        v91 = swift_allocError();
        (*(*(v89 - 8) + 32))(v92, v10, v89);
LABEL_48:
        lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
        OUTLINED_FUNCTION_10_0();
        v94 = swift_allocError();
        v95[1] = 0;
        v95[2] = 0;
        *v95 = v91;
        OUTLINED_FUNCTION_39(xmmword_2235F01F0, v94, v95);
        v96 = OUTLINED_FUNCTION_35();
        outlined consume of ConnectionProviderState(v96, v97);
        goto LABEL_49;
      }
    }

    else
    {
      v93 = type metadata accessor for NWError();
      __swift_storeEnumTagSinglePayload(v10, 1, 1, v93);
    }

    outlined destroy of ConnectionSnapshotReport?(v10, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
    v91 = 0;
    goto LABEL_48;
  }

  if (v11 < 2)
  {
LABEL_10:
    v29 = OUTLINED_FUNCTION_3_2();
    outlined copy of Data._Representation(v29, v30);
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.siriNetwork);
    v32 = OUTLINED_FUNCTION_3_2();
    outlined copy of Data?(v32, v33);

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      OUTLINED_FUNCTION_30();
      v36 = swift_slowAlloc();
      OUTLINED_FUNCTION_4_3();
      v37 = swift_slowAlloc();
      v116[0] = v37;
      OUTLINED_FUNCTION_23_0(4.8151e-34);
      a3 = OUTLINED_FUNCTION_22_0();

      *(v36 + 4) = a3;
      OUTLINED_FUNCTION_16_3();
      v38 = 0;
      switch(v39)
      {
        case 1:
          OUTLINED_FUNCTION_29_0();
          if (!v72)
          {
            v38 = v38;
            goto LABEL_33;
          }

          __break(1u);
          goto LABEL_65;
        case 2:
          OUTLINED_FUNCTION_28_1();
          if (!v72)
          {
            goto LABEL_33;
          }

LABEL_65:
          __break(1u);
          goto LABEL_66;
        case 3:
          goto LABEL_33;
        default:
          v38 = BYTE6(a2);
LABEL_33:
          *(v36 + 14) = v38;
          v73 = OUTLINED_FUNCTION_3_2();
          outlined consume of Data?(v73, v74);
          OUTLINED_FUNCTION_37(&dword_223515000, v75, v76, "Provider - RPCOspreyConnectionProvider [%s]: Send data failed. Sending %ld bytes in a connection during setup, waiting, or preparing state.");
          __swift_destroy_boxed_opaque_existential_0(v37);
          OUTLINED_FUNCTION_2_2();
          MEMORY[0x223DE38F0]();
          OUTLINED_FUNCTION_2_2();
          MEMORY[0x223DE38F0]();
          goto LABEL_34;
      }
    }

    v40 = OUTLINED_FUNCTION_3_2();
    outlined consume of Data?(v40, v41);
LABEL_34:

    lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
    OUTLINED_FUNCTION_10_0();
    v77 = swift_allocError();
    v79 = 4;
LABEL_35:
    v78[1] = 0;
    v78[2] = 0;
    *v78 = v79;
    OUTLINED_FUNCTION_39(xmmword_2235F01E0, v77, v78);
LABEL_49:
    v98 = OUTLINED_FUNCTION_3_2();
    outlined consume of Data?(v98, v99);
    return;
  }

  if (v11 != 2)
  {
    v60 = OUTLINED_FUNCTION_3_2();
    outlined copy of Data._Representation(v60, v61);
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    __swift_project_value_buffer(v62, static Logger.siriNetwork);
    v63 = OUTLINED_FUNCTION_3_2();
    outlined copy of Data?(v63, v64);

    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v65, v66))
    {
      OUTLINED_FUNCTION_30();
      v67 = swift_slowAlloc();
      OUTLINED_FUNCTION_4_3();
      v68 = swift_slowAlloc();
      v116[0] = v68;
      OUTLINED_FUNCTION_23_0(4.8151e-34);
      v69 = OUTLINED_FUNCTION_22_0();

      *(v67 + 4) = v69;
      OUTLINED_FUNCTION_16_3();
      v70 = 0;
      switch(v71)
      {
        case 1:
          OUTLINED_FUNCTION_29_0();
          if (!v72)
          {
            v70 = v70;
            goto LABEL_57;
          }

LABEL_70:
          __break(1u);
          goto LABEL_71;
        case 2:
          OUTLINED_FUNCTION_28_1();
          if (!v72)
          {
            goto LABEL_57;
          }

LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
          return;
        case 3:
          goto LABEL_57;
        default:
          v70 = BYTE6(a2);
LABEL_57:
          *(v67 + 14) = v70;
          v104 = OUTLINED_FUNCTION_3_2();
          outlined consume of Data?(v104, v105);
          OUTLINED_FUNCTION_37(&dword_223515000, v106, v107, "Provider - RPCOspreyConnectionProvider [%s]: Send data failed. Sending %ld bytes in a cancelled connection.");
          __swift_destroy_boxed_opaque_existential_0(v68);
          OUTLINED_FUNCTION_2_2();
          MEMORY[0x223DE38F0]();
          OUTLINED_FUNCTION_2_2();
          MEMORY[0x223DE38F0]();
          goto LABEL_58;
      }
    }

    v100 = OUTLINED_FUNCTION_3_2();
    outlined consume of Data?(v100, v101);
LABEL_58:

    lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
    OUTLINED_FUNCTION_10_0();
    v77 = swift_allocError();
    v79 = 1;
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  outlined init with copy of ConnectionSnapshotReport?(v3 + 32, &v114, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMd, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMR);
  if (!v115)
  {
    outlined destroy of ConnectionSnapshotReport?(&v114, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMd, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMR);
    return;
  }

  outlined init with take of RPCOspreyConnectionProtocol(&v114, v116);
  v44 = *(v3 + 2096);
  v45 = __CFADD__(v44, 1);
  v46 = v44 + 1;
  if (v45)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  *(v3 + 2096) = v46;
  v47 = *__swift_project_boxed_opaque_existential_1(v116, v116[3]);
  v48 = OUTLINED_FUNCTION_3_2();
  outlined copy of Data._Representation(v48, v49);
  OUTLINED_FUNCTION_3_2();
  SiriNetworkOspreyChannel.send(_:)();
  if (one-time initialization token for siriNetwork != -1)
  {
LABEL_67:
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v50 = type metadata accessor for Logger();
  __swift_project_value_buffer(v50, static Logger.siriNetwork);
  v51 = OUTLINED_FUNCTION_3_2();
  outlined copy of Data?(v51, v52);

  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v53, v54))
  {
    LODWORD(v117) = v54;
    OUTLINED_FUNCTION_30();
    v55 = swift_slowAlloc();
    OUTLINED_FUNCTION_4_3();
    v113 = swift_slowAlloc();
    *&v114 = v113;
    *v55 = 136315394;
    v56 = *(v4 + 16);
    v57 = *(v4 + 24);

    v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v57, &v114);

    *(v55 + 4) = v58;
    *(v55 + 12) = 2048;
    v59 = 0;
    switch(a2 >> 62)
    {
      case 1uLL:
        OUTLINED_FUNCTION_29_0();
        if (v72)
        {
          goto LABEL_72;
        }

        v59 = v59;
        break;
      case 2uLL:
        OUTLINED_FUNCTION_28_1();
        if (v72)
        {
          goto LABEL_73;
        }

        break;
      case 3uLL:
        break;
      default:
        v59 = BYTE6(a2);
        break;
    }

    *(v55 + 14) = v59;
    v108 = OUTLINED_FUNCTION_3_2();
    outlined consume of Data?(v108, v109);
    _os_log_impl(&dword_223515000, v53, v117, "Provider - RPCOspreyConnectionProvider [%s]: Send data to streamer. %ld bytes in streamer.", v55, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v113);
    v110 = OUTLINED_FUNCTION_1_2();
    MEMORY[0x223DE38F0](v110);
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
  }

  else
  {
    v102 = OUTLINED_FUNCTION_3_2();
    outlined consume of Data?(v102, v103);
  }

  a3(0, 0);
  v111 = OUTLINED_FUNCTION_3_2();
  outlined consume of Data?(v111, v112);
  __swift_destroy_boxed_opaque_existential_0(v116);
}

uint64_t RPCOspreyConnectionProvider.readData(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.siriNetwork);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    OUTLINED_FUNCTION_6_5();
    v8 = swift_slowAlloc();
    OUTLINED_FUNCTION_4_3();
    v9 = a2;
    v10 = swift_slowAlloc();
    *&aBlock = v10;
    *v8 = 136315138;
    v11 = *(v3 + 16);
    v12 = *(v3 + 24);

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &aBlock);

    *(v8 + 4) = v13;
    OUTLINED_FUNCTION_36(&dword_223515000, v14, v15, "Provider - RPCOspreyConnectionProvider [%s]: Reader. Ready to receive data.");
    __swift_destroy_boxed_opaque_existential_0(v10);
    a2 = v9;
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
  }

  specialized ConnectionProviderProtocol.setupStaleConnectionTimer()();
  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  outlined init with copy of ConnectionSnapshotReport?(v3 + 32, &aBlock, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMd, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMR);
  if (v43)
  {
    outlined init with take of RPCOspreyConnectionProtocol(&aBlock, v46);
    if ((*(v3 + 2115) & 1) == 0)
    {
      v29 = __swift_project_boxed_opaque_existential_1(v46, v46[3]);
      OUTLINED_FUNCTION_7_1();
      v30 = swift_allocObject();
      swift_weakInit();
      v31 = swift_allocObject();
      v31[2] = v30;
      v31[3] = a1;
      v31[4] = a2;
      OUTLINED_FUNCTION_7_1();
      v32 = swift_allocObject();
      swift_weakInit();
      v39 = *v29;

      v33 = MEMORY[0x223DE2070](0xD000000000000015, 0x80000002235F6E40);
      v44 = partial apply for closure #1 in RPCOspreyConnectionProvider.readData(_:);
      v45 = v3;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v42 = thunk for @escaping @callee_guaranteed (@guaranteed OspreyConnectionMetrics) -> ();
      v43 = &block_descriptor_2;
      v34 = _Block_copy(&aBlock);

      v44 = partial apply for closure #2 in RPCOspreyConnectionProvider.readData(_:);
      v45 = v31;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v42 = thunk for @escaping @callee_guaranteed (@guaranteed Data) -> ();
      v43 = &block_descriptor_123;
      v35 = _Block_copy(&aBlock);
      v40[4] = partial apply for closure #3 in RPCOspreyConnectionProvider.readData(_:);
      v40[5] = v32;
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 1107296256;
      v40[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
      v40[3] = &block_descriptor_126;
      v36 = _Block_copy(v40);

      v37 = [v39 bidirectionalStreamingRequestWithMethodName:v33 requestBuilder:v34 streamingResponseHandler:v35 completion:v36];

      swift_unknownObjectRelease();
      _Block_release(v35);
      _Block_release(v34);

      _Block_release(v36);

      return __swift_destroy_boxed_opaque_existential_0(v46);
    }

    __swift_destroy_boxed_opaque_existential_0(v46);
  }

  else
  {
    outlined destroy of ConnectionSnapshotReport?(&aBlock, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMd, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMR);
  }

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v16, v17))
  {
    OUTLINED_FUNCTION_6_5();
    v18 = swift_slowAlloc();
    OUTLINED_FUNCTION_4_3();
    v19 = swift_slowAlloc();
    *&aBlock = v19;
    *v18 = 136315138;
    v20 = *(v3 + 16);
    v21 = *(v3 + 24);

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &aBlock);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_223515000, v16, v17, "Provider - RPCOspreyConnectionProvider [%s]: Reader. Error - Connection does not exist or it was cancelled.", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
    v23 = OUTLINED_FUNCTION_1_2();
    MEMORY[0x223DE38F0](v23);
  }

  lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
  OUTLINED_FUNCTION_10_0();
  v24 = swift_allocError();
  OUTLINED_FUNCTION_34_0(v24, v25);
  return OUTLINED_FUNCTION_39(xmmword_2235F01E0, v26, v27);
}

void closure #1 in RPCOspreyConnectionProvider.readData(_:)(void *a1, uint64_t a2)
{
  if (one-time initialization token for siriNetwork != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.siriNetwork);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315394;
    v9 = *(a2 + 16);
    v10 = *(a2 + 24);

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v18);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = *(a2 + 16);
    v13 = *(a2 + 24);

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v18);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_223515000, v5, v6, "Provider - RPCOspreyConnectionProvider [%s]: Trace identifier %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE38F0](v8, -1, -1);
    MEMORY[0x223DE38F0](v7, -1, -1);
  }

  [a1 setEnableDeviceAuthentication_];
  v15 = *(a2 + 16);
  v16 = *(a2 + 24);

  v17 = MEMORY[0x223DE2070](v15, v16);

  [a1 setClientTraceIdentifier_];
}

uint64_t closure #2 in RPCOspreyConnectionProvider.readData(_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v46 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v48 = *(v12 - 8);
  v49 = v12;
  v13 = *(v48 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for siriNetwork != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.siriNetwork);
  outlined copy of Data._Representation(a1, a2);
  outlined copy of Data._Representation(a1, a2);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v42 = a5;
    v43 = v15;
    v44 = v8;
    v45 = v9;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v57 = v20;
    *v19 = 136315394;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v23 = *(Strong + 16);
      v22 = *(Strong + 24);

      aBlock = v23;
      v52 = v22;
      Strong = String.init<A>(describing:)();
      v25 = v24;
    }

    else
    {
      v25 = 0xE000000000000000;
    }

    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(Strong, v25, &v57);

    *(v19 + 4) = v26;
    *(v19 + 12) = 2048;
    v8 = v44;
    v9 = v45;
    switch(a2 >> 62)
    {
      case 1uLL:
        result = outlined consume of Data._Representation(a1, a2);
        LODWORD(v27) = HIDWORD(a1) - a1;
        if (__OFSUB__(HIDWORD(a1), a1))
        {
          goto LABEL_25;
        }

        v27 = v27;
        break;
      case 2uLL:
        v29 = *(a1 + 16);
        v28 = *(a1 + 24);
        result = outlined consume of Data._Representation(a1, a2);
        v27 = v28 - v29;
        if (__OFSUB__(v28, v29))
        {
          goto LABEL_24;
        }

        v9 = v45;
        break;
      case 3uLL:
        outlined consume of Data._Representation(a1, a2);
        v27 = 0;
        break;
      default:
        outlined consume of Data._Representation(a1, a2);
        v27 = BYTE6(a2);
        break;
    }

    v15 = v43;
    *(v19 + 14) = v27;
    outlined consume of Data._Representation(a1, a2);
    _os_log_impl(&dword_223515000, v17, v18, "Provider - RPCOspreyConnectionProvider [%s]: Reader. Read data. %ld bytes", v19, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x223DE38F0](v20, -1, -1);
    MEMORY[0x223DE38F0](v19, -1, -1);

    a5 = v42;
  }

  else
  {
    outlined consume of Data._Representation(a1, a2);
    outlined consume of Data._Representation(a1, a2);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 2115) == 1)
    {
      v31 = *(result + 2072);
      v32 = swift_allocObject();
      *(v32 + 16) = v46;
      *(v32 + 24) = a5;
      v55 = partial apply for closure #1 in closure #2 in RPCOspreyConnectionProvider.readData(_:);
      v56 = v32;
      aBlock = MEMORY[0x277D85DD0];
      v52 = 1107296256;
      v53 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v54 = &block_descriptor_138;
      v33 = _Block_copy(&aBlock);

      static DispatchQoS.unspecified.getter();
      v50 = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type RPCOspreyConnectionProvider and conformance RPCOspreyConnectionProvider(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      v34 = v47;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x223DE2460](0, v15, v34, v33);
      _Block_release(v33);
      (*(v9 + 8))(v34, v8);
      (*(v48 + 8))(v15, v49);
    }

    v35 = *(result + 2096);
    v36 = __CFADD__(v35, 1);
    v37 = v35 + 1;
    if (!v36)
    {
      *(result + 2096) = v37;
      v38 = *(result + 2072);
      v39 = swift_allocObject();
      v39[2] = v46;
      v39[3] = a5;
      v39[4] = a1;
      v39[5] = a2;
      v55 = partial apply for closure #2 in closure #2 in RPCOspreyConnectionProvider.readData(_:);
      v56 = v39;
      aBlock = MEMORY[0x277D85DD0];
      v52 = 1107296256;
      v53 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v54 = &block_descriptor_132;
      v40 = _Block_copy(&aBlock);
      outlined copy of Data._Representation(a1, a2);

      static DispatchQoS.unspecified.getter();
      v50 = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type RPCOspreyConnectionProvider and conformance RPCOspreyConnectionProvider(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      v41 = v47;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x223DE2460](0, v15, v41, v40);
      _Block_release(v40);
      (*(v9 + 8))(v41, v8);
      (*(v48 + 8))(v15, v49);

      RPCOspreyConnectionProvider.updateAndEmitConnectionMetricsPreparationReport()();
      RPCOspreyConnectionProvider.updateAndEmitConnectionMetricsReadyEstablishmentReport()();
      RPCOspreyConnectionProvider.updateConnectionMetricsSnapshotReport()();
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

void closure #1 in closure #2 in RPCOspreyConnectionProvider.readData(_:)(void (*a1)(void, unint64_t, void *, void))
{
  lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
  v2 = swift_allocError();
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  *v3 = 1;
  *(v3 + 24) = xmmword_2235F01E0;
  a1(0, 0xF000000000000000, v2, 0);
}

void closure #3 in RPCOspreyConnectionProvider.readData(_:)(void *a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v3 = Strong;
  v4 = *(Strong + 1536);
  v5 = *(Strong + 1544);
  if (v5 == 2 && v4 == 3)
  {
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.siriNetwork);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v24, v25))
    {
      goto LABEL_21;
    }

    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v36 = v27;
    *v26 = 136315138;
    v28 = *(v3 + 16);
    v29 = *(v3 + 24);

    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v36);

    *(v26 + 4) = v30;
    v31 = "Provider - RPCOspreyConnectionProvider [%s]: Streamer. Connection cancelled";
    goto LABEL_20;
  }

  if (!a1)
  {
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Logger.siriNetwork);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v24, v25))
    {
      goto LABEL_21;
    }

    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v36 = v27;
    *v26 = 136315138;
    v33 = *(v3 + 16);
    v34 = *(v3 + 24);

    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v36);

    *(v26 + 4) = v35;
    v31 = "Provider - RPCOspreyConnectionProvider [%s]: Streamer called.";
LABEL_20:
    _os_log_impl(&dword_223515000, v24, v25, v31, v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x223DE38F0](v27, -1, -1);
    MEMORY[0x223DE38F0](v26, -1, -1);
LABEL_21:

    return;
  }

  *(Strong + 1536) = a1;
  *(Strong + 1544) = 1;
  v7 = a1;
  v8 = a1;
  v9 = a1;
  outlined consume of ConnectionProviderState(v4, v5);
  if (one-time initialization token for siriNetwork != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.siriNetwork);

  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v36 = v15;
    *v14 = 136315394;
    v16 = *(v3 + 16);
    v17 = *(v3 + 24);

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v36);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    v19 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v20 = String.init<A>(describing:)();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v36);

    *(v14 + 14) = v22;
    _os_log_impl(&dword_223515000, v12, v13, "Provider - RPCOspreyConnectionProvider [%s]: Streamer. Connection error: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE38F0](v15, -1, -1);
    MEMORY[0x223DE38F0](v14, -1, -1);
  }

  RPCOspreyConnectionProvider.closeWithError(_:)(a1);
}

Swift::Void __swiftcall RPCOspreyConnectionProvider.updateConnectionMetricsSnapshotReport()()
{
  (MEMORY[0x28223BE20])();
  v1 = v0;
  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  outlined init with copy of ConnectionSnapshotReport?(v0 + 32, v73, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMd, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMR);
  if (!v73[3])
  {
    outlined destroy of ConnectionSnapshotReport?(v73, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMd, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMR);
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork27RPCOspreyConnectionProtocol_pMd, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pMR);
  type metadata accessor for SiriNetworkOspreyChannel();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v2 = v72[89];
  swift_beginAccess();
  v3 = OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_41_1(v3);
  v4 = OUTLINED_FUNCTION_26_0();
  outlined init with copy of ConnectionMetrics(v4, &v70);
  OUTLINED_FUNCTION_5_6();
  v5 = RPCOspreyConnectionProvider.connectionMetrics.modify();
  v7 = v6 + 568;
  memmove(v72, (v6 + 568), 0x2C8uLL);
  OUTLINED_FUNCTION_10_1(v72);
  if (!v27)
  {
    *v7 = *(*(v1 + 2160) + OBJC_IVAR___SNNetworkAnalyticsInternal_sequenceNumber);
  }

  v8 = OUTLINED_FUNCTION_5_6();
  (v5)(v8, 0);
  OUTLINED_FUNCTION_5_6();
  RPCOspreyConnectionProvider.connectionMetrics.modify();
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_19_0(v69, v9);
  OUTLINED_FUNCTION_10_1(v69);
  if (!v27)
  {
    v10 = *(v7 + 600);
    *(v7 + 592) = 0x6574736575716572;
    *(v7 + 600) = 0xEA0000000000646ELL;
  }

  v11 = OUTLINED_FUNCTION_5_6();
  (v1)(v11, 0);
  OUTLINED_FUNCTION_5_6();
  RPCOspreyConnectionProvider.connectionMetrics.modify();
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_19_0(v68, v12);
  OUTLINED_FUNCTION_10_1(v68);
  if (!v27)
  {
    v13 = *(v7 + 584);
    *(v7 + 576) = 0xD00000000000001ELL;
    *(v7 + 584) = 0x80000002235F6E20;
  }

  v14 = OUTLINED_FUNCTION_5_6();
  (v1)(v14, 0);
  memcpy(v67, (v1 + 640), sizeof(v67));
  OUTLINED_FUNCTION_10_1(v67);
  if (v27)
  {
    _s11SiriNetwork010ConnectionB6ReportVSgWOi0_(__src);
    memcpy(__dst, __src, 0x139uLL);
    v63[0] = 1;
    _s11SiriNetwork25ConnectionInterfaceReportVSgWOi0_(v65);
    memcpy(&v66[7], v65, 0x121uLL);
    if (one-time initialization token for sharedNetworkAnalytics != -1)
    {
      swift_once();
    }

    v15 = static NetworkAnalytics.sharedNetworkAnalytics;
    memcpy(&v64[5], __dst, 0x139uLL);
    LODWORD(v64[0]) = 0;
    v64[1] = 0;
    v64[2] = 0xE000000000000000;
    v64[3] = 0;
    v64[4] = 0xE000000000000000;
    v64[46] = 0;
    v64[45] = 0;
    LOBYTE(v64[47]) = v63[0];
    memcpy(&v64[47] + 1, v66, 0x128uLL);
    v64[85] = MEMORY[0x277D84F90];
    v64[86] = MEMORY[0x277D84F90];
    LODWORD(v64[87]) = 4;
    v64[88] = static NetworkAnalytics.sharedNetworkAnalytics;
    v16 = OUTLINED_FUNCTION_9_3();
    destructiveProjectEnumData for ConnectionConfigurationError(v16);
    v17 = OUTLINED_FUNCTION_5_6();
    memcpy(v17, (v1 + 640), 0x2C8uLL);
    memcpy((v1 + 640), v64, 0x2C8uLL);
    v18 = v15;
    v19 = OUTLINED_FUNCTION_5_6();
    outlined destroy of ConnectionSnapshotReport?(v19, v20, v21);
  }

  v22 = RPCOspreyConnectionProvider.connectionMetrics.modify();
  v24 = v23;
  OUTLINED_FUNCTION_19_0(v65, v23);
  OUTLINED_FUNCTION_10_1(v65);
  if (v27)
  {
    (v22)(v63, 0);
  }

  else
  {
    SiriNetworkOspreyChannel.getMetrics()(v64);
    v25 = OUTLINED_FUNCTION_5_6();
    OUTLINED_FUNCTION_21_1(v25);
    v26 = OUTLINED_FUNCTION_5_6();
    OUTLINED_FUNCTION_10_1(v26);
    if (v27 || (outlined init with copy of ConnectionSnapshotReport?(v71, __dst, &_s11SiriNetwork24ConnectionSnapshotReportVSgMd, &_s11SiriNetwork24ConnectionSnapshotReportVSgMR), v28 = OUTLINED_FUNCTION_9_3(), outlined destroy of ConnectionSnapshotReport?(v28, v29, v30), memcpy(__src, v71, 0x2C8uLL), OUTLINED_FUNCTION_10_1(__src), v27))
    {
      _s11SiriNetwork010ConnectionB6ReportVSgWOi0_(__dst);
    }

    else
    {
      outlined init with copy of ConnectionSnapshotReport?(&__src[40], __dst, &_s11SiriNetwork010ConnectionB6ReportVSgMd, &_s11SiriNetwork010ConnectionB6ReportVSgMR);
      outlined destroy of ConnectionSnapshotReport?(v71, &_s11SiriNetwork24ConnectionSnapshotReportVSgMd, &_s11SiriNetwork24ConnectionSnapshotReportVSgMR);
      memcpy(__dst, &__src[40], 0x139uLL);
    }

    memcpy(__src, (v24 + 608), 0x139uLL);
    memcpy((v24 + 608), __dst, 0x139uLL);
    outlined destroy of ConnectionSnapshotReport?(__src, &_s11SiriNetwork010ConnectionB6ReportVSgMd, &_s11SiriNetwork010ConnectionB6ReportVSgMR);
    (v22)(v63, 0);
  }

  v31 = OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_41_1(v31);
  v32 = OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_41_1(v32);
  memcpy(v63, (v1 + 640), sizeof(v63));
  OUTLINED_FUNCTION_10_1(v63);
  if (v27)
  {
    OUTLINED_FUNCTION_21_1(__src);
    v33 = OUTLINED_FUNCTION_5_6();
    outlined init with copy of ConnectionMetrics(v33, __dst);
    outlined destroy of ConnectionMetrics(__src);
LABEL_27:
    RPCOspreyConnectionProvider.connectionMetrics.modify();
    OUTLINED_FUNCTION_18_1();
    v36 = OUTLINED_FUNCTION_9_3();
    OUTLINED_FUNCTION_19_0(v36, v37);
    v38 = OUTLINED_FUNCTION_9_3();
    OUTLINED_FUNCTION_10_1(v38);
    if (!v27)
    {
      __src[0] = 1;
      LOBYTE(v60[0]) = 1;
      v56[0] = 1;
      LOBYTE(v57) = 1;
      LODWORD(__dst[0]) = 0;
      BYTE4(__dst[0]) = 1;
      memset(&__dst[1], 0, 24);
      LOBYTE(__dst[4]) = 1;
      memset(&__dst[5], 0, 52);
      BYTE4(__dst[11]) = 1;
      LODWORD(__dst[12]) = 0;
      BYTE4(__dst[12]) = 1;
      __dst[13] = MEMORY[0x277D84F98];
      memset(&__dst[14], 0, 24);
      LOBYTE(__dst[17]) = 1;
      __dst[18] = 0;
      LOBYTE(__dst[19]) = 1;
      __dst[20] = 0;
      LOBYTE(__dst[21]) = 1;
      __dst[22] = 0;
      LOBYTE(__dst[23]) = 1;
      __dst[24] = 0;
      LOBYTE(__dst[25]) = 1;
      __dst[26] = 0;
      LOBYTE(__dst[27]) = 1;
      memset(&__dst[28], 0, 24);
      LOBYTE(__dst[31]) = 1;
      __dst[32] = 0;
      LOWORD(__dst[33]) = 1;
      *(&__dst[33] + 2) = v57;
      HIWORD(__dst[33]) = v58;
      __dst[34] = 0;
      LOBYTE(__dst[35]) = 1;
      *(&__dst[35] + 1) = v60[0];
      HIDWORD(__dst[35]) = *(v60 + 3);
      __dst[36] = 0;
      LOBYTE(__dst[37]) = 1;
      *(&__dst[37] + 1) = *v56;
      HIDWORD(__dst[37]) = *&v56[3];
      __dst[38] = 0;
      LOBYTE(__dst[39]) = 1;
      destructiveProjectEnumData for ConnectionConfigurationError(__dst);
      memcpy(__src, v22 + 608, 0x139uLL);
      memcpy(v22 + 608, __dst, 0x139uLL);
      outlined destroy of ConnectionSnapshotReport?(__src, &_s11SiriNetwork010ConnectionB6ReportVSgMd, &_s11SiriNetwork010ConnectionB6ReportVSgMR);
    }

    (v1)(v62, 0);
    goto LABEL_31;
  }

  memcpy(v60, &v64[76], 0x139uLL);
  OUTLINED_FUNCTION_21_1(__src);
  v34 = OUTLINED_FUNCTION_5_6();
  outlined init with copy of ConnectionMetrics(v34, __dst);
  outlined init with copy of ConnectionSnapshotReport?(v60, __dst, &_s11SiriNetwork010ConnectionB6ReportVSgMd, &_s11SiriNetwork010ConnectionB6ReportVSgMR);
  outlined destroy of ConnectionMetrics(__src);
  memcpy(v62, v60, 0x139uLL);
  v35 = _s11SiriNetwork010ConnectionB6ReportVSgWOg(v62);
  if (v35 == 1)
  {
    goto LABEL_27;
  }

  outlined destroy of ConnectionSnapshotReport?(v60, &_s11SiriNetwork010ConnectionB6ReportVSgMd, &_s11SiriNetwork010ConnectionB6ReportVSgMR);
LABEL_31:
  RPCOspreyConnectionProvider.connectionMetrics.modify();
  OUTLINED_FUNCTION_18_1();
  v39 = OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_19_0(v39, v40);
  v41 = OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_10_1(v41);
  if (!v27)
  {
    memcpy(__src, v22 + 608, 0x139uLL);
    v42 = _s11SiriNetwork010ConnectionB6ReportVSgWOg(__src);
    if (v42 != 1)
    {
      v43 = *(v1 + 1512);
      if (v43)
      {
        v44 = (v43 + OBJC_IVAR___SNNetworkManagerInternal_carrierName);
        v46 = *v44;
        v45 = v44[1];
      }

      else
      {
        v46 = 0;
        v47 = 0;
      }

      v48 = *(v22 + 78);
      *(v22 + 77) = v46;
      *(v22 + 78) = v47;
    }
  }

  (v1)(__dst, 0);
  v49 = *(v1 + 1512);
  if (v49)
  {
    v50 = v49 + OBJC_IVAR___SNNetworkManagerInternal_lastSignalStrength;
    if ((*(v50 + 8) & 1) == 0)
    {
      v51 = *v50;
      RPCOspreyConnectionProvider.connectionMetrics.modify();
      OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_19_0(__src, v52);
      OUTLINED_FUNCTION_10_1(__src);
      if (!v27)
      {
        memcpy(__dst, v22 + 608, 0x139uLL);
        v53 = _s11SiriNetwork010ConnectionB6ReportVSgWOg(__dst);
        if (v53 != 1)
        {
          *(v22 + 79) = v51;
          *(v22 + 640) = 0;
        }
      }

      (v1)(v62, 0);
    }
  }

  v54 = OUTLINED_FUNCTION_26_0();
  specialized ConnectionProviderProtocol.updateConnectionMetrics(with:completion:)(v54);

  v55 = OUTLINED_FUNCTION_26_0();
  outlined destroy of ConnectionMetrics(v55);
}

Swift::Void __swiftcall RPCOspreyConnectionProvider.updateAndEmitConnectionMetricsPreparationReport()()
{
  (MEMORY[0x28223BE20])();
  if (*(v0 + 2168))
  {
    return;
  }

  v1 = v0;
  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  outlined init with copy of ConnectionSnapshotReport?(v0 + 32, v43, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMd, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMR);
  if (!v44)
  {
    outlined destroy of ConnectionSnapshotReport?(v43, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMd, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMR);
    goto LABEL_8;
  }

  outlined init with copy of RPCOspreyConnectionProtocol(v43, v40);
  outlined destroy of ConnectionSnapshotReport?(v43, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMd, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMR);
  v2 = *__swift_project_boxed_opaque_existential_1(v40, v40[3]);
  SiriNetworkOspreyChannel.getMetrics()(__src);
  memcpy(__dst, __src, 0x599uLL);
  OUTLINED_FUNCTION_10_1(__dst);
  if (v3)
  {
    __swift_destroy_boxed_opaque_existential_0(v40);
LABEL_8:
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.siriNetwork);
    OUTLINED_FUNCTION_11_3();

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      OUTLINED_FUNCTION_6_5();
      v8 = swift_slowAlloc();
      OUTLINED_FUNCTION_4_3();
      v9 = swift_slowAlloc();
      __dst[0] = v9;
      *v8 = 136315138;
      v11 = *(v1 + 16);
      v10 = *(v1 + 24);

      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v10, __dst);

      *(v8 + 4) = v12;
      OUTLINED_FUNCTION_15_0();
      _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      v18 = OUTLINED_FUNCTION_1_2();
      MEMORY[0x223DE38F0](v18);
      OUTLINED_FUNCTION_2_2();
      MEMORY[0x223DE38F0]();
    }

    return;
  }

  outlined init with copy of ConnectionSnapshotReport?(&__dst[12], v38, &_s11SiriNetwork27ConnectionPreparationReportVSgMd, &_s11SiriNetwork27ConnectionPreparationReportVSgMR);
  outlined destroy of ConnectionSnapshotReport?(__src, &_s11SiriNetwork17ConnectionMetricsVSgMd, &_s11SiriNetwork17ConnectionMetricsVSgMR);
  __swift_destroy_boxed_opaque_existential_0(v40);
  OUTLINED_FUNCTION_40(v39);
  v4 = _s11SiriNetwork27ConnectionPreparationReportVSgWOg(v39);
  if (v4 == 1)
  {
    goto LABEL_8;
  }

  *(v1 + 2168) = 1;
  swift_beginAccess();
  memcpy(v38, (v1 + 168), sizeof(v38));
  OUTLINED_FUNCTION_40((v1 + 168));
  outlined init with copy of ConnectionPreparationReport(v39, v37);
  outlined destroy of ConnectionSnapshotReport?(v38, &_s11SiriNetwork27ConnectionPreparationReportVSgMd, &_s11SiriNetwork27ConnectionPreparationReportVSgMR);
  v19 = LOBYTE(v39[4]);
  v20 = [objc_allocWithZone(MEMORY[0x277D58BE0]) init];
  [v20 setHasDNS_];
  if (v20)
  {
    NetworkAnalytics.logNetworkConnectionStatePreparationSnapshotCaptured(_:)();
  }

  memcpy(v37, v39, sizeof(v37));
  v21 = ConnectionPreparationReport.netDebugConnectionStatePreparationSnapshot.getter();
  if (v21)
  {
    v22 = v21;
    NetworkAnalytics.logDebugNetworkConnectionStatePreparationSnapshotCaptured(_:)();
  }

  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Logger.siriNetwork);
  OUTLINED_FUNCTION_40(v37);
  outlined init with copy of ConnectionPreparationReport(v37, v36);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  outlined destroy of ConnectionSnapshotReport?(&__dst[12], &_s11SiriNetwork27ConnectionPreparationReportVSgMd, &_s11SiriNetwork27ConnectionPreparationReportVSgMR);
  if (os_log_type_enabled(v24, v25))
  {
    OUTLINED_FUNCTION_6_5();
    v26 = swift_slowAlloc();
    OUTLINED_FUNCTION_4_3();
    v27 = swift_slowAlloc();
    v35 = v27;
    *v26 = 136315138;
    memcpy(v34, v39, sizeof(v34));
    OUTLINED_FUNCTION_40(v36);
    outlined init with copy of ConnectionPreparationReport(v36, v33);
    v28 = String.init<A>(describing:)();
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v35);

    *(v26 + 4) = v30;
    OUTLINED_FUNCTION_38(&dword_223515000, v31, v32, "%s");
    __swift_destroy_boxed_opaque_existential_0(v27);
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
    outlined destroy of ConnectionSnapshotReport?(&__dst[12], &_s11SiriNetwork27ConnectionPreparationReportVSgMd, &_s11SiriNetwork27ConnectionPreparationReportVSgMR);
  }

  else
  {

    outlined destroy of ConnectionSnapshotReport?(&__dst[12], &_s11SiriNetwork27ConnectionPreparationReportVSgMd, &_s11SiriNetwork27ConnectionPreparationReportVSgMR);
  }
}

Swift::Void __swiftcall RPCOspreyConnectionProvider.updateAndEmitConnectionMetricsReadyEstablishmentReport()()
{
  if (*(v0 + 2169))
  {
    return;
  }

  v1 = v0;
  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  outlined init with copy of ConnectionSnapshotReport?(v0 + 32, v43, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMd, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMR);
  if (v44)
  {
    outlined init with copy of RPCOspreyConnectionProtocol(v43, v40);
    outlined destroy of ConnectionSnapshotReport?(v43, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMd, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMR);
    v2 = *__swift_project_boxed_opaque_existential_1(v40, v40[3]);
    SiriNetworkOspreyChannel.getMetrics()(__src);
    memcpy(__dst, __src, 0x599uLL);
    OUTLINED_FUNCTION_10_1(__dst);
    if (v3)
    {
      __swift_destroy_boxed_opaque_existential_0(v40);
    }

    else
    {
      outlined init with copy of ConnectionSnapshotReport?(&__dst[57], v45, &_s11SiriNetwork29ConnectionEstablishmentReportVSgMd, _s11SiriNetwork29ConnectionEstablishmentReportVSgMR);
      outlined destroy of ConnectionSnapshotReport?(__src, &_s11SiriNetwork17ConnectionMetricsVSgMd, &_s11SiriNetwork17ConnectionMetricsVSgMR);
      __swift_destroy_boxed_opaque_existential_0(v40);
      OUTLINED_FUNCTION_25(v38);
      if (v39)
      {
        OUTLINED_FUNCTION_25(v45);
        *(v1 + 2169) = 1;
        swift_beginAccess();
        memcpy(v37, (v1 + 528), sizeof(v37));
        OUTLINED_FUNCTION_25((v1 + 528));
        outlined init with copy of ConnectionEstablishmentReport(v38, v36);
        outlined destroy of ConnectionSnapshotReport?(v37, &_s11SiriNetwork29ConnectionEstablishmentReportVSgMd, _s11SiriNetwork29ConnectionEstablishmentReportVSgMR);
        ConnectionEstablishmentReport.netConnectionStateReadySnapshot.getter();
        if (v4)
        {
          v5 = v4;
          NetworkAnalytics.logNetworkConnectionStateReadySnapshotCaptured(_:)();
        }

        ConnectionEstablishmentReport.netDebugConnectionStateReadySnapshot.getter();
        if (v6)
        {
          v7 = v6;
          NetworkAnalytics.logDebugNetworkConnectionStateReadySnapshotCaptured(_:)();
        }

        if (one-time initialization token for siriNetwork != -1)
        {
          OUTLINED_FUNCTION_0_8();
          swift_once();
        }

        v8 = type metadata accessor for Logger();
        __swift_project_value_buffer(v8, static Logger.siriNetwork);
        OUTLINED_FUNCTION_25(v36);
        outlined init with copy of ConnectionEstablishmentReport(v36, v35);
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.default.getter();
        outlined destroy of ConnectionSnapshotReport?(&__dst[57], &_s11SiriNetwork29ConnectionEstablishmentReportVSgMd, _s11SiriNetwork29ConnectionEstablishmentReportVSgMR);
        if (os_log_type_enabled(v9, v10))
        {
          OUTLINED_FUNCTION_6_5();
          v11 = swift_slowAlloc();
          OUTLINED_FUNCTION_4_3();
          v12 = swift_slowAlloc();
          v34 = v12;
          *v11 = 136315138;
          memcpy(v33, v45, sizeof(v33));
          OUTLINED_FUNCTION_25(v35);
          outlined init with copy of ConnectionEstablishmentReport(v35, v32);
          v13 = String.init<A>(describing:)();
          v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v34);

          *(v11 + 4) = v15;
          OUTLINED_FUNCTION_38(&dword_223515000, v16, v17, "%s");
          __swift_destroy_boxed_opaque_existential_0(v12);
          OUTLINED_FUNCTION_2_2();
          MEMORY[0x223DE38F0]();
          OUTLINED_FUNCTION_2_2();
          MEMORY[0x223DE38F0]();
          outlined destroy of ConnectionSnapshotReport?(&__dst[57], &_s11SiriNetwork29ConnectionEstablishmentReportVSgMd, _s11SiriNetwork29ConnectionEstablishmentReportVSgMR);
        }

        else
        {

          outlined destroy of ConnectionSnapshotReport?(&__dst[57], &_s11SiriNetwork29ConnectionEstablishmentReportVSgMd, _s11SiriNetwork29ConnectionEstablishmentReportVSgMR);
        }

        return;
      }
    }
  }

  else
  {
    outlined destroy of ConnectionSnapshotReport?(v43, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMd, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMR);
  }

  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.siriNetwork);
  OUTLINED_FUNCTION_11_3();

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    OUTLINED_FUNCTION_6_5();
    v21 = swift_slowAlloc();
    OUTLINED_FUNCTION_4_3();
    v22 = swift_slowAlloc();
    __dst[0] = v22;
    *v21 = 136315138;
    v24 = *(v1 + 16);
    v23 = *(v1 + 24);

    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v23, __dst);

    *(v21 + 4) = v25;
    OUTLINED_FUNCTION_15_0();
    _os_log_impl(v26, v27, v28, v29, v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    v31 = OUTLINED_FUNCTION_1_2();
    MEMORY[0x223DE38F0](v31);
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
  }
}

Swift::Int RPCOspreyConnectionProvider.hashValue.getter()
{
  Hasher.init(_seed:)();
  specialized ConnectionProviderProtocol.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for ConnectionProviderProtocol.connectionMetrics.getter in conformance RPCOspreyConnectionProvider@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  memcpy(__dst, (v1 + 72), 0x599uLL);
  memcpy(a1, (v1 + 72), 0x599uLL);
  return outlined init with copy of ConnectionMetrics(__dst, &v4);
}

uint64_t protocol witness for ConnectionProviderProtocol.delegate.getter in conformance RPCOspreyConnectionProvider()
{
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 1528);
  return result;
}

uint64_t protocol witness for ConnectionProviderProtocol.delegate.setter in conformance RPCOspreyConnectionProvider(uint64_t a1, uint64_t a2)
{
  *(v2 + 1528) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t protocol witness for ConnectionProviderProtocol.connectionConfiguration.getter in conformance RPCOspreyConnectionProvider@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 1552), 0x204uLL);
  memcpy(a1, (v1 + 1552), 0x204uLL);
  return outlined init with copy of ConnectionConfiguration(__dst, v4);
}

uint64_t protocol witness for ConnectionProviderProtocol.openCompletion.setter in conformance RPCOspreyConnectionProvider(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 2080);
  v4 = *(v2 + 2088);
  *(v2 + 2080) = a1;
  *(v2 + 2088) = a2;
  return outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v3);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance RPCOspreyConnectionProvider(void *a1, uint64_t a2)
{
  v5 = *v2;
  WitnessTable = swift_getWitnessTable();
  return ConnectionProviderProtocol.hash(into:)(a1, a2, WitnessTable);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RPCOspreyConnectionProvider(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  v4 = *v2;
  WitnessTable = swift_getWitnessTable();
  ConnectionProviderProtocol.hash(into:)(v7, a2, WitnessTable);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance RPCOspreyConnectionProvider(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return static ConnectionProviderProtocol.== infix(_:_:)(v4, v5, a3, WitnessTable);
}

uint64_t instantiation function for generic protocol witness table for RPCOspreyConnectionProvider(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type RPCOspreyConnectionProvider and conformance RPCOspreyConnectionProvider(&lazy protocol witness table cache variable for type RPCOspreyConnectionProvider and conformance RPCOspreyConnectionProvider, a2, type metadata accessor for RPCOspreyConnectionProvider);
  *(a1 + 8) = result;
  return result;
}

uint64_t partial apply for closure #2 in closure #2 in RPCOspreyConnectionProvider.readData(_:)()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  OUTLINED_FUNCTION_10_0();
  return v5();
}

id outlined copy of ConnectionProviderState(id result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type RPCOspreyConnectionProvider and conformance RPCOspreyConnectionProvider(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void outlined consume of Result<(), NetworkConnectionError>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, char a6)
{
  if (a6)
  {
    outlined consume of NetworkConnectionError(a1, a2, a3, a4, a5);
  }
}

void outlined consume of NetworkConnectionError(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  if ((a4 >> 60) <= 9)
  {
    if (a4 >> 60 == 3)
    {
      a1 = a5;
    }
  }
}

uint64_t outlined assign with take of RPCOspreyConnectionProtocol?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMd, &_s11SiriNetwork27RPCOspreyConnectionProtocol_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for ConnectionResolutionReport(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 80))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 40);
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

uint64_t storeEnumTagSinglePayload for ConnectionResolutionReport(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

void *static NSURLSessionConfiguration.defaultSessionConfiguration(with:)(char *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v2 = __src[200];
  v3 = __src[201];
  memcpy(v52, __src + 202, sizeof(v52));
  v42 = *(__src + 34);
  v4 = __src[280];
  v5 = *(__src + 297);
  v55 = *(__src + 281);
  v56 = v5;
  *v57 = *(__src + 313);
  *&v57[15] = *(__src + 41);
  v6 = __src[336];
  v7 = __src[337];
  v8 = __src[338];
  v43 = v4;
  v44 = __src[339];
  v41 = __src[340];
  v9 = *(__src + 97);
  v10 = *(__src + 341);
  v11 = *(__src + 373);
  v64 = *(__src + 357);
  *v65 = v11;
  v63 = v10;
  *&v65[15] = v9;
  v39 = *(__src + 49);
  v40 = *(__src + 50);
  v12 = *(__src + 51);
  v13 = *(__src + 27);
  v69 = *(__src + 26);
  v70 = v13;
  v71 = *(__src + 28);
  v72 = *(__src + 58);
  v14 = __src[472];
  v15 = *(__src + 473);
  v16 = *(__src + 489);
  *&v75[9] = *(__src + 498);
  v74 = v15;
  *v75 = v16;
  v17 = *(__src + 257);
  v18 = [swift_getObjCClassFromMetadata() defaultSessionConfiguration];
  v37 = v8;
  v50 = v2;
  v38 = v3;
  v51 = v3;
  v53 = v42;
  v54 = v43;
  v58 = v6;
  v59 = v7;
  v60 = v8;
  v61 = v44;
  v62 = v41;
  v66 = v39;
  v67 = v40;
  v45 = v12;
  v68 = v12;
  v73 = v14;
  v76 = v17;
  v19 = ConnectionConfiguration.usingTLS.getter();
  [v18 setAllowsCellularAccess_];
  [v18 setNetworkServiceType_];
  [v18 set:1 allowTCPIOConnectionStreamTask:?];
  [v18 setTimeoutIntervalForRequest_];
  if ((v43 & 1) == 0)
  {
    [v18 setTimeoutIntervalForRequest_];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_2235EFCC0;
  __dst[0] = *MEMORY[0x277CBACD8];
  v21 = __dst[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CFStringRefaSgMd, &_sSo11CFStringRefaSgMR);
  lazy protocol witness table accessor for type CFStringRef? and conformance <A> A?();
  AnyHashable.init<A>(_:)();
  v22 = MEMORY[0x277D839B0];
  *(v20 + 96) = MEMORY[0x277D839B0];
  *(v20 + 72) = 1;
  __dst[0] = *MEMORY[0x277CBADB8];
  v23 = __dst[0];
  AnyHashable.init<A>(_:)();
  *(v20 + 168) = v22;
  *(v20 + 144) = 1;
  Dictionary.init(dictionaryLiteral:)();
  if (v39)
  {
    v24 = v18;
    if (!v19)
    {
      v25 = 0;
      v26 = v7;
      goto LABEL_13;
    }

    v25 = v41;
    v26 = v7;
  }

  else
  {
    v6 = 0;
    v24 = v18;
    if (!v19)
    {
      v25 = 0;
      v26 = 1;
      goto LABEL_13;
    }

    v25 = v2;
    v26 = 1;
  }

  [v24 set:v38 & 1 allowsTLSSessionTickets:?];
  if (v39 && (v37 & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefaSg_SbtGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefaSg_SbtGMR);
    v27 = swift_allocObject();
    v28 = v26;
    *(v27 + 16) = xmmword_2235EFCB0;
    v29 = *MEMORY[0x277CBACD0];
    *(v27 + 32) = *MEMORY[0x277CBACD0];
    *(v27 + 40) = 1;
    v30 = v29;
    v31 = Dictionary.init(dictionaryLiteral:)();
    v32 = *MEMORY[0x277CBAE68];
    type metadata accessor for CFStringRef(0);
    lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
    v33 = v32;
    AnyHashable.init<A>(_:)();
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo11CFStringRefaSgSbGMd, _sSDySo11CFStringRefaSgSbGMR);
    *&v47 = v31;
    v26 = v28;
    outlined init with take of Any(&v47, v46);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v46, __dst, isUniquelyReferenced_nonNull_native);
    outlined destroy of AnyHashable(__dst);
  }

LABEL_13:
  [v24 set:v25 & 1 allowsTCPFastOpen:?];
  [v24 set:1 allowsRetryForBackgroundDataTasks:?];
  if (!AFIsHorseman() && (v6 & 1) == 0 && (v45 == 1) | v14 & 1)
  {
    [v24 set:1 allowsMultipathTCP:?];
    [v24 setMultipathServiceType_];
  }

  if (v26)
  {
    [v24 set:1 expiredDNSBehavior:?];
  }

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v24 set:isa socketStreamProperties:?];

  [v24 set:4 timingDataOptions:?];
  return v24;
}

uint64_t NSURLSessionConfiguration.rpcDescription.getter()
{
  strcpy(v22, "Service Type ");
  [v0 networkServiceType];
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x223DE2180](v1);

  v21 = v22[0];
  _StringGuts.grow(_:)(17);

  v22[0] = 0x7473696D6974704FLL;
  v22[1] = 0xEF20534E44206369;
  v2 = [v0 _expiredDNSBehavior];
  v3 = v2 == 1;
  if (v2 == 1)
  {
    v4 = 0x64656C62616E65;
  }

  else
  {
    v4 = 0x64656C6261736964;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  MEMORY[0x223DE2180](v4, v5);

  v7 = v22[0];
  v6 = v22[1];
  v22[0] = 0x20504354504DLL;
  v22[1] = 0xE600000000000000;
  v8 = [v0 _allowsMultipathTCP];
  v9 = v8 == 0;
  if (v8)
  {
    v10 = 0x64656C62616E65;
  }

  else
  {
    v10 = 0x64656C6261736964;
  }

  if (v9)
  {
    v11 = 0xE800000000000000;
  }

  else
  {
    v11 = 0xE700000000000000;
  }

  MEMORY[0x223DE2180](v10, v11);

  v13 = v22[0];
  v12 = v22[1];
  v22[0] = 542329940;
  v22[1] = 0xE400000000000000;
  v14 = [v0 _allowsTLSSessionTickets];
  v15 = v14 == 0;
  if (v14)
  {
    v16 = 0x64656C62616E65;
  }

  else
  {
    v16 = 0x64656C6261736964;
  }

  if (v15)
  {
    v17 = 0xE800000000000000;
  }

  else
  {
    v17 = 0xE700000000000000;
  }

  MEMORY[0x223DE2180](v16, v17);

  _StringGuts.grow(_:)(32);

  [v0 timeoutIntervalForRequest];
  Double.seconds.getter(v18);
  v19 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x223DE2180](v19);

  MEMORY[0x223DE2180](0x73646E6F63657320, 0xE90000000000002ELL);
  _StringGuts.grow(_:)(18);

  OUTLINED_FUNCTION_0_11();
  MEMORY[0x223DE2180](v7, v6);

  OUTLINED_FUNCTION_0_11();
  MEMORY[0x223DE2180](v13, v12);

  OUTLINED_FUNCTION_0_11();
  MEMORY[0x223DE2180](v22[0], v22[1]);

  OUTLINED_FUNCTION_0_11();
  MEMORY[0x223DE2180](0xD000000000000015, 0x80000002235F6F30);

  return v21;
}

unint64_t lazy protocol witness table accessor for type CFStringRef? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type CFStringRef? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type CFStringRef? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo11CFStringRefaSgMd, &_sSo11CFStringRefaSgMR);
    lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CFStringRef? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef()
{
  result = lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef;
  if (!lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef)
  {
    type metadata accessor for CFStringRef(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef;
  if (!lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef)
  {
    type metadata accessor for CFStringRef(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef);
  }

  return result;
}

const __CFString *one-time initialization function for httpMethodACE()
{
  result = __CFStringMakeConstantString("ACE");
  static ConnectionConfigurationConstants.httpMethodACE = result;
  return result;
}

const __CFString *one-time initialization function for httpContentLengthACE()
{
  result = __CFStringMakeConstantString("2000000000");
  static ConnectionConfigurationConstants.httpContentLengthACE = result;
  return result;
}

unint64_t Logger.Category.rawValue.getter(char a1)
{
  result = 0x6B726F7774654ELL;
  switch(a1)
  {
    case 1:
      result = 0x436567617373654DLL;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x7974696C697455;
      break;
    default:
      return result;
  }

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

uint64_t one-time initialization function for messageCenterActor()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.messageCenterActor);
  __swift_project_value_buffer(v0, static Logger.messageCenterActor);
  type metadata accessor for OS_os_log();
  OS_os_log.init(subsystem:category:)();
  return Logger.init(_:)();
}

uint64_t one-time initialization function for siriNetwork(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  type metadata accessor for OS_os_log();
  OS_os_log.init(subsystem:category:)();
  return Logger.init(_:)();
}

uint64_t ConnectionTCPInfoMetrics.interfaceName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ConnectionTCPInfoMetrics.interfaceName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ConnectionTCPInfoMetrics.connectionIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ConnectionTCPInfoMetrics.connectionIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ConnectionTCPInfoMetrics.bytesReceived.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t ConnectionTCPInfoMetrics.bytesReceived.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t ConnectionTCPInfoMetrics.bytesRetransmitted.getter()
{
  result = *(v0 + 56);
  v2 = *(v0 + 64);
  return result;
}

uint64_t ConnectionTCPInfoMetrics.bytesRetransmitted.setter(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  return result;
}

uint64_t ConnectionTCPInfoMetrics.bytesSent.getter()
{
  result = *(v0 + 72);
  v2 = *(v0 + 80);
  return result;
}

uint64_t ConnectionTCPInfoMetrics.bytesSent.setter(uint64_t result, char a2)
{
  *(v2 + 72) = result;
  *(v2 + 80) = a2 & 1;
  return result;
}

uint64_t ConnectionTCPInfoMetrics.bytesUnacked.getter()
{
  result = *(v0 + 88);
  v2 = *(v0 + 96);
  return result;
}

uint64_t ConnectionTCPInfoMetrics.bytesUnacked.setter(uint64_t result, char a2)
{
  *(v2 + 88) = result;
  *(v2 + 96) = a2 & 1;
  return result;
}

uint64_t ConnectionTCPInfoMetrics.duplicateBytesReceived.getter()
{
  result = *(v0 + 104);
  v2 = *(v0 + 112);
  return result;
}

uint64_t ConnectionTCPInfoMetrics.duplicateBytesReceived.setter(uint64_t result, char a2)
{
  *(v2 + 104) = result;
  *(v2 + 112) = a2 & 1;
  return result;
}

uint64_t ConnectionTCPInfoMetrics.outOfOrderBytesReceived.getter()
{
  result = *(v0 + 120);
  v2 = *(v0 + 128);
  return result;
}

uint64_t ConnectionTCPInfoMetrics.outOfOrderBytesReceived.setter(uint64_t result, char a2)
{
  *(v2 + 120) = result;
  *(v2 + 128) = a2 & 1;
  return result;
}

uint64_t ConnectionTCPInfoMetrics.packetsReceived.getter()
{
  result = *(v0 + 136);
  v2 = *(v0 + 144);
  return result;
}

uint64_t ConnectionTCPInfoMetrics.packetsReceived.setter(uint64_t result, char a2)
{
  *(v2 + 136) = result;
  *(v2 + 144) = a2 & 1;
  return result;
}

uint64_t ConnectionTCPInfoMetrics.packetsSent.getter()
{
  result = *(v0 + 152);
  v2 = *(v0 + 160);
  return result;
}

uint64_t ConnectionTCPInfoMetrics.packetsSent.setter(uint64_t result, char a2)
{
  *(v2 + 152) = result;
  *(v2 + 160) = a2 & 1;
  return result;
}

uint64_t ConnectionTCPInfoMetrics.rttBest.setter(uint64_t result)
{
  *(v1 + 164) = result;
  *(v1 + 168) = BYTE4(result) & 1;
  return result;
}

uint64_t ConnectionTCPInfoMetrics.rttCurrent.setter(uint64_t result)
{
  *(v1 + 172) = result;
  *(v1 + 176) = BYTE4(result) & 1;
  return result;
}

uint64_t ConnectionTCPInfoMetrics.rttSmoothed.setter(uint64_t result)
{
  *(v1 + 180) = result;
  *(v1 + 184) = BYTE4(result) & 1;
  return result;
}

uint64_t ConnectionTCPInfoMetrics.rttVariance.setter(uint64_t result)
{
  *(v1 + 188) = result;
  *(v1 + 192) = BYTE4(result) & 1;
  return result;
}

uint64_t ConnectionTCPInfoMetrics.sendBandwidth.getter()
{
  result = *(v0 + 200);
  v2 = *(v0 + 208);
  return result;
}

uint64_t ConnectionTCPInfoMetrics.sendBandwidth.setter(uint64_t result, char a2)
{
  *(v2 + 200) = result;
  *(v2 + 208) = a2 & 1;
  return result;
}

uint64_t ConnectionTCPInfoMetrics.sendBufferBytes.getter()
{
  result = *(v0 + 216);
  v2 = *(v0 + 224);
  return result;
}

uint64_t ConnectionTCPInfoMetrics.sendBufferBytes.setter(uint64_t result, char a2)
{
  *(v2 + 216) = result;
  *(v2 + 224) = a2 & 1;
  return result;
}

uint64_t ConnectionTCPInfoMetrics.synRetransmits.setter(uint64_t result)
{
  *(v1 + 228) = result;
  *(v1 + 232) = BYTE4(result) & 1;
  return result;
}

uint64_t ConnectionTCPInfoMetrics.tfoSynDataAcked.setter(uint64_t result)
{
  *(v1 + 236) = result;
  *(v1 + 240) = BYTE4(result) & 1;
  return result;
}

uint64_t ConnectionTCPInfoMetrics.subflowSwitchCount.setter(uint64_t result)
{
  *(v1 + 244) = result;
  *(v1 + 248) = BYTE4(result) & 1;
  return result;
}

BOOL ConnectionTCPInfoMetrics.isPoorLinkQuality.getter()
{
  memcpy(__dst, v0, 0xF9uLL);
  if (__dst[12] & 1) != 0 || (__dst[22])
  {
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.siriNetwork);
    outlined init with copy of ConnectionTCPInfoMetrics(__dst, &v31);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    outlined destroy of ConnectionTCPInfoMetrics(__dst);
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v30 = v5;
      *v4 = 136315138;
      v6 = __dst[1];
      if (__dst[1])
      {
        v31 = __dst[0];
        v32 = __dst[1];

        v6 = String.init<A>(describing:)();
        v8 = v7;
      }

      else
      {
        v8 = 0xE000000000000000;
      }

      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v8, &v30);

      *(v4 + 4) = v13;
      _os_log_impl(&dword_223515000, v2, v3, "SiriNetwork - Report Link Quality [%s]. Bytes unacked unknown", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v5);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();
    }

    return 0;
  }

  else
  {
    v9 = __dst[11];
    v10 = HIDWORD(__dst[21]);
    v12 = __dst[11] > 0x100uLL || HIDWORD(__dst[21]) > 0x3E8;
    v31 = 0;
    v32 = 0xE000000000000000;
    _StringGuts.grow(_:)(87);
    OUTLINED_FUNCTION_7_5();
    if ((__dst[23] & 1) == 0)
    {
      LODWORD(v30) = HIDWORD(__dst[22]);
      String.init<A>(describing:)();
    }

    OUTLINED_FUNCTION_8_4();

    OUTLINED_FUNCTION_7_5();
    LODWORD(v30) = v10;
    v14 = String.init<A>(describing:)();
    MEMORY[0x223DE2180](v14);

    OUTLINED_FUNCTION_7_5();
    if ((__dst[24] & 1) == 0)
    {
      LODWORD(v30) = HIDWORD(__dst[23]);
      String.init<A>(describing:)();
    }

    OUTLINED_FUNCTION_8_4();

    MEMORY[0x223DE2180](0x657479626273202CLL, 0xEB00000000203A73);
    if ((__dst[28] & 1) == 0)
    {
      v30 = __dst[27];
      String.init<A>(describing:)();
    }

    OUTLINED_FUNCTION_8_4();

    MEMORY[0x223DE2180](0x63616E757874202CLL, 0xED0000203A64656BLL);
    v30 = v9;
    v15 = String.init<A>(describing:)();
    MEMORY[0x223DE2180](v15);

    MEMORY[0x223DE2180](0xD000000000000015, 0x80000002235F6FC0);
    if ((__dst[8] & 1) == 0)
    {
      v30 = __dst[7];
      String.init<A>(describing:)();
    }

    OUTLINED_FUNCTION_8_4();

    v17 = v31;
    v16 = v32;
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.siriNetwork);
    outlined init with copy of ConnectionTCPInfoMetrics(__dst, &v31);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    outlined destroy of ConnectionTCPInfoMetrics(__dst);

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v21 = 136315650;
      v22 = __dst[1];
      if (__dst[1])
      {
        v31 = __dst[0];
        v32 = __dst[1];

        v22 = String.init<A>(describing:)();
        v24 = v23;
      }

      else
      {
        v24 = 0xE000000000000000;
      }

      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v30);

      *(v21 + 4) = v25;
      v26 = "Good link quality";
      *(v21 + 12) = 2080;
      if (v12)
      {
        v26 = "Poor link quality";
      }

      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, (v26 - 32) | 0x8000000000000000, &v30);

      *(v21 + 14) = v27;
      *(v21 + 22) = 2080;
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v16, &v30);

      *(v21 + 24) = v28;
      _os_log_impl(&dword_223515000, v19, v20, "SiriNetwork - Report Link Quality [%s]. %s. %s", v21, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();
    }

    else
    {
    }
  }

  return v12;
}

uint64_t Data.truncateBeginning(removeSize:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = a2;
  switch(a3 >> 62)
  {
    case 1uLL:
      v5 = a2;
      v6 = a2 >> 32;
      goto LABEL_6;
    case 2uLL:
      v5 = *(a2 + 16);
      v6 = *(a2 + 24);
LABEL_6:
      if (v5 == v6)
      {
        goto LABEL_7;
      }

      if (a3 >> 62 != 2)
      {
        goto LABEL_12;
      }

      v8 = *(a2 + 16);
      v7 = *(a2 + 24);
      v4 = v7 - v8;
      if (!__OFSUB__(v7, v8))
      {
        goto LABEL_14;
      }

      __break(1u);
LABEL_12:
      if (!__OFSUB__(HIDWORD(v3), v3))
      {
        v4 = HIDWORD(v3) - v3;
        goto LABEL_14;
      }

      __break(1u);
      break;
    case 3uLL:
      goto LABEL_7;
    default:
      if ((a3 & 0xFF000000000000) != 0)
      {
        v4 = BYTE6(a3);
LABEL_14:
        if (v4 <= result)
        {
          v3 = 0;
        }

        else
        {
          v3 = Data.subdata(in:)();
        }
      }

      else
      {
LABEL_7:
        outlined copy of Data._Representation(a2, a3);
      }

      result = v3;
      break;
  }

  return result;
}

uint64_t SafeCallback.__deallocating_deinit()
{
  MEMORY[0x223DE39C0](v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

Swift::Int NWConnection.hashValue.getter()
{
  Hasher.init(_seed:)();
  v0 = NWConnection.identifier.getter();
  MEMORY[0x223DE29A0](v0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NWConnection()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = NWConnection.identifier.getter();
  MEMORY[0x223DE29A0](v2);
  return Hasher._finalize()();
}

uint64_t instantiation function for generic protocol witness table for NWConnection(uint64_t a1)
{
  result = lazy protocol witness table accessor for type NWConnection and conformance NWConnection(&lazy protocol witness table cache variable for type NWConnection and conformance NWConnection);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type NWConnection and conformance NWConnection(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NWConnection();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance NWConnection(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return static NWConnection.== infix(_:_:)();
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

uint64_t SiriNetworkOspreyChannel.connectionIdentifier.didset()
{
  v1 = SiriNetworkOspreyChannel.connectionMetrics.modify();
  v3 = v2;
  memmove(__dst, v2, 0x599uLL);
  if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(__dst) == 1)
  {
    (v1)(v19, 0);
  }

  else
  {
    memmove(v18, v3 + 12, 0x168uLL);
    if (_s11SiriNetwork27ConnectionPreparationReportVSgWOg(v18) != 1)
    {
      v4 = [v0 description];
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;

      v8 = v3[13];
      v3[12] = v5;
      v3[13] = v7;
    }

    (v1)(v19, 0);
  }

  v9 = SiriNetworkOspreyChannel.connectionMetrics.modify();
  v11 = v10;
  memmove(v18, v10, 0x599uLL);
  if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v18) != 1 && v11[64])
  {
    v12 = [v0 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = v11[58];
    v11[57] = v13;
    v11[58] = v15;
  }

  return (v9)(v19, 0);
}

uint64_t SiriNetworkOspreyChannel.connectionIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___SNOspreyChannel_connectionIdentifier);
  v4 = *(v2 + OBJC_IVAR___SNOspreyChannel_connectionIdentifier + 8);
  *v3 = a1;
  v3[1] = a2;

  return SiriNetworkOspreyChannel.connectionIdentifier.didset();
}

uint64_t SiriNetworkOspreyChannel.description.getter()
{
  if (*(v0 + OBJC_IVAR___SNOspreyChannel_connectionIdentifier + 8))
  {
    v1 = *(v0 + OBJC_IVAR___SNOspreyChannel_connectionIdentifier);
    v2 = *(v0 + OBJC_IVAR___SNOspreyChannel_connectionIdentifier + 8);
  }

  else
  {
    v2 = 0x80000002235F7290;
    v1 = 0xD000000000000012;
  }

  MEMORY[0x223DE2180](v1, v2);

  MEMORY[0x223DE2180](32, 0xE100000000000000);
  v3 = *(v0 + OBJC_IVAR___SNOspreyChannel_configuration + 8);
  if (v3)
  {
    v4 = *(v0 + OBJC_IVAR___SNOspreyChannel_configuration);
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    v5 = *(v0 + OBJC_IVAR___SNOspreyChannel_configuration + 8);
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  MEMORY[0x223DE2180](v4, v5);

  return 0;
}

char *SiriNetworkOspreyChannel.__allocating_init(url:connectionConfiguration:)(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](a1);
  v3 = v1;
  v5 = v4;
  v6 = v2;
  memcpy(v69, v4, sizeof(v69));
  type metadata accessor for NSURLSessionConfiguration();
  memcpy(__dst, v5, 0x204uLL);
  v7 = static NSURLSessionConfiguration.defaultSessionConfiguration(with:)(__dst);
  v8 = objc_allocWithZone(v3);
  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  v12 = [v8 initWithURL:v10 configuration:v7];

  v13 = v12;
  v14 = URL.host.getter();
  if (v15)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0;
  }

  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0xE000000000000000;
  }

  v18 = URL.port.getter();
  if (v19)
  {
    v20 = 443;
  }

  else
  {
    v20 = v18;
  }

  __dst[0] = v16;
  __dst[1] = v17;
  MEMORY[0x223DE2180](58, 0xE100000000000000);
  v67[0] = v20;
  v21 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x223DE2180](v21);

  MEMORY[0x223DE2180](8236, 0xE200000000000000);
  v22 = NSURLSessionConfiguration.rpcDescription.getter();
  MEMORY[0x223DE2180](v22);

  v23 = __dst[1];
  v24 = &v13[OBJC_IVAR___SNOspreyChannel_configuration];
  v25 = *&v13[OBJC_IVAR___SNOspreyChannel_configuration + 8];
  *v24 = __dst[0];
  *(v24 + 1) = v23;

  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static Logger.siriNetwork);
  v27 = v7;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v52 = v6;
    v30 = v3;
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    __dst[0] = v32;
    *v31 = 136315138;
    v33 = NSURLSessionConfiguration.rpcDescription.getter();
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, __dst);

    *(v31 + 4) = v35;
    _os_log_impl(&dword_223515000, v28, v29, "Provider - SiriNetworkOspreyChannel: Channel init with configuration: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    OUTLINED_FUNCTION_12();
    v3 = v30;
    v6 = v52;
    OUTLINED_FUNCTION_12();
  }

  memcpy(__src, v69, 0x204uLL);
  destructiveProjectEnumData for ConnectionConfigurationError(__src);
  memcpy(v63, &v13[OBJC_IVAR___SNOspreyChannel_connectionConfiguration], 0x204uLL);
  memcpy(&v13[OBJC_IVAR___SNOspreyChannel_connectionConfiguration], __src, 0x204uLL);
  outlined destroy of ConnectionConfiguration?(v63, &_s11SiriNetwork23ConnectionConfigurationVSgMd, &_s11SiriNetwork23ConnectionConfigurationVSgMR);
  LOBYTE(aBlock[0]) = 1;
  v61 = 1;
  _s11SiriNetwork27ConnectionPreparationReportVSgWOi0_(v64);
  memcpy(v66, v64, sizeof(v66));
  _s11SiriNetwork24ConnectionSnapshotReportVSgWOi0_(v65);
  memcpy(&v67[71], v65, 0x2C8uLL);
  v60 = 1;
  v59 = 1;
  v58 = 1;
  v57 = 1;
  v56 = 1;
  v55 = 1;
  v54 = 1;
  v67[0] = 0;
  LOBYTE(v67[1]) = 1;
  *&v67[3] = 0u;
  v67[2] = MEMORY[0x277D84F90];
  v67[5] = MEMORY[0x277D84F90];
  LODWORD(v67[6]) = 0;
  BYTE4(v67[6]) = 1;
  memset(&v67[7], 0, 40);
  memcpy(&v67[12], v66, 0x168uLL);
  memset(&v67[57], 0, 112);
  v67[160] = MEMORY[0x277D84F90];
  memset(&v67[161], 0, 40);
  LOBYTE(v67[166]) = 1;
  v67[167] = 0;
  LOBYTE(v67[168]) = 1;
  v67[169] = 0;
  LOBYTE(v67[170]) = 1;
  memset(&v67[171], 0, 20);
  BYTE4(v67[173]) = 1;
  v67[174] = 0;
  LOBYTE(v67[175]) = 1;
  v67[176] = 0;
  LOBYTE(v67[177]) = 1;
  v67[178] = 0;
  LOBYTE(v67[179]) = 1;
  destructiveProjectEnumData for ConnectionConfigurationError(v67);
  v36 = OBJC_IVAR___SNOspreyChannel_connectionMetrics;
  swift_beginAccess();
  memcpy(__dst, &v13[v36], 0x599uLL);
  memcpy(&v13[v36], v67, 0x599uLL);
  outlined destroy of ConnectionConfiguration?(__dst, &_s11SiriNetwork17ConnectionMetricsVSgMd, &_s11SiriNetwork17ConnectionMetricsVSgMR);
  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_3();
  v38 = swift_allocObject();
  *(v38 + 16) = v37;
  *(v38 + 24) = v3;
  v39 = &v13[OBJC_IVAR___SNOspreyChannel_ospreyConnectionMetrics];
  v40 = *&v13[OBJC_IVAR___SNOspreyChannel_ospreyConnectionMetrics];
  v41 = *&v13[OBJC_IVAR___SNOspreyChannel_ospreyConnectionMetrics + 8];
  *v39 = partial apply for closure #1 in SiriNetworkOspreyChannel.init(url:connectionConfiguration:);
  v39[1] = v38;
  v42 = v13;

  outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v40);

  v43 = *v39;
  v44 = v39[1];
  if (*v39)
  {
    OUTLINED_FUNCTION_3();
    v45 = swift_allocObject();
    *(v45 + 16) = v43;
    *(v45 + 24) = v44;
    v46 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed OspreyConnectionMetrics) -> ();
  }

  else
  {
    v46 = destructiveProjectEnumData for ConnectionConfigurationError;
    v45 = 0;
  }

  OUTLINED_FUNCTION_3();
  v47 = swift_allocObject();
  *(v47 + 16) = v46;
  *(v47 + 24) = v45;
  aBlock[4] = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed OspreyConnectionMetrics) -> (@out ());
  aBlock[5] = v47;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed OspreyConnectionMetrics) -> ();
  aBlock[3] = &block_descriptor_3;
  v48 = _Block_copy(aBlock);
  outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(v43);

  [v42 setConnectionMetricsHandler_];
  _Block_release(v48);

  [v42 setUseCompression_];
  v49 = type metadata accessor for URL();
  OUTLINED_FUNCTION_1(v49);
  (*(v50 + 8))(v6);
  return v42;
}

void closure #1 in SiriNetworkOspreyChannel.init(url:connectionConfiguration:)(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v3 = Strong;
  v4 = OBJC_IVAR___SNOspreyChannel_lock;
  [*(Strong + OBJC_IVAR___SNOspreyChannel_lock) lock];
  v5 = OBJC_IVAR___SNOspreyChannel_connectionMetrics;
  swift_beginAccess();
  memcpy(v72, &v3[v5], 0x599uLL);
  memcpy(v71, &v3[v5], 0x599uLL);
  memmove(v73, &v3[v5], 0x599uLL);
  v6 = _s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v73);
  v7 = MEMORY[0x277D84F90];
  if (v6 == 1)
  {
    memcpy(v70, v71, 0x599uLL);
    outlined init with copy of ConnectionSnapshotReport?(v72, v69, &_s11SiriNetwork17ConnectionMetricsVSgMd, &_s11SiriNetwork17ConnectionMetricsVSgMR);
    outlined destroy of ConnectionConfiguration?(v70, &_s11SiriNetwork17ConnectionMetricsVSgMd, &_s11SiriNetwork17ConnectionMetricsVSgMR);
  }

  else
  {
    memcpy(v66, &v71[96], 0x168uLL);
    memcpy(v70, v71, 0x599uLL);
    outlined init with copy of ConnectionSnapshotReport?(v72, v69, &_s11SiriNetwork17ConnectionMetricsVSgMd, &_s11SiriNetwork17ConnectionMetricsVSgMR);
    outlined init with copy of ConnectionSnapshotReport?(v66, v69, &_s11SiriNetwork27ConnectionPreparationReportVSgMd, &_s11SiriNetwork27ConnectionPreparationReportVSgMR);
    outlined destroy of ConnectionConfiguration?(v70, &_s11SiriNetwork17ConnectionMetricsVSgMd, &_s11SiriNetwork17ConnectionMetricsVSgMR);
    memcpy(v67, v66, 0x168uLL);
    if (_s11SiriNetwork27ConnectionPreparationReportVSgWOg(v67) != 1)
    {
      outlined destroy of ConnectionConfiguration?(v66, &_s11SiriNetwork27ConnectionPreparationReportVSgMd, &_s11SiriNetwork27ConnectionPreparationReportVSgMR);
      goto LABEL_11;
    }
  }

  v8 = SiriNetworkOspreyChannel.connectionMetrics.modify();
  v10 = v9;
  memmove(v71, v9, 0x599uLL);
  if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v71) == 1)
  {
    (v8)(v66, 0);
  }

  else
  {
    _s11SiriNetwork25ConnectionInterfaceReportVSgWOi0_(v67);
    if (one-time initialization token for sharedNetworkAnalytics != -1)
    {
      swift_once();
    }

    v11 = static NetworkAnalytics.sharedNetworkAnalytics;
    memcpy(&v68[3], v67, 0x121uLL);
    v69[0] = 0uLL;
    v69[1] = xmmword_2235F0700;
    LODWORD(v69[2]) = 0;
    BYTE4(v69[2]) = 0;
    memcpy(&v69[2] + 5, v68, 0x124uLL);
    *&v69[21] = v7;
    *(&v69[21] + 1) = v7;
    *&v69[22] = static NetworkAnalytics.sharedNetworkAnalytics;
    destructiveProjectEnumData for ConnectionConfigurationError(v69);
    memcpy(v70, v10 + 96, 0x168uLL);
    memcpy(v10 + 96, v69, 0x168uLL);
    v12 = v11;
    outlined destroy of ConnectionConfiguration?(v70, &_s11SiriNetwork27ConnectionPreparationReportVSgMd, &_s11SiriNetwork27ConnectionPreparationReportVSgMR);
    (v8)(v66, 0);
  }

LABEL_11:
  v13 = SiriNetworkOspreyChannel.connectionMetrics.modify();
  v15 = v14;
  memmove(v71, v14, 0x599uLL);
  if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v71) != 1)
  {
    memmove(v70, v15 + 12, 0x168uLL);
    if (_s11SiriNetwork27ConnectionPreparationReportVSgWOg(v70) != 1)
    {
      v67[0] = 0;
      v67[1] = 0xE000000000000000;
      v66[0] = v3;
      lazy protocol witness table accessor for type SiriNetworkOspreyChannel and conformance NSObject();
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v16 = v67[1];
      v17 = v15[13];
      v15[12] = v67[0];
      v15[13] = v16;
    }
  }

  (v13)(v69, 0);
  memcpy(v69, &v3[v5], 0x599uLL);
  memcpy(v67, &v3[v5], 0x599uLL);
  memmove(v70, &v3[v5], 0x599uLL);
  if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v70) == 1)
  {
    memcpy(v66, v67, 0x599uLL);
    outlined init with copy of ConnectionSnapshotReport?(v69, v65, &_s11SiriNetwork17ConnectionMetricsVSgMd, &_s11SiriNetwork17ConnectionMetricsVSgMR);
    outlined destroy of ConnectionConfiguration?(v66, &_s11SiriNetwork17ConnectionMetricsVSgMd, &_s11SiriNetwork17ConnectionMetricsVSgMR);
  }

  else
  {
    memcpy(v64, &v67[57], 0x70uLL);
    memcpy(v66, v67, 0x599uLL);
    outlined init with copy of ConnectionSnapshotReport?(v69, v65, &_s11SiriNetwork17ConnectionMetricsVSgMd, &_s11SiriNetwork17ConnectionMetricsVSgMR);
    outlined init with copy of ConnectionSnapshotReport?(v64, v65, &_s11SiriNetwork29ConnectionEstablishmentReportVSgMd, _s11SiriNetwork29ConnectionEstablishmentReportVSgMR);
    outlined destroy of ConnectionConfiguration?(v66, &_s11SiriNetwork17ConnectionMetricsVSgMd, &_s11SiriNetwork17ConnectionMetricsVSgMR);
    if (v64[7])
    {
      outlined destroy of ConnectionConfiguration?(v64, &_s11SiriNetwork29ConnectionEstablishmentReportVSgMd, _s11SiriNetwork29ConnectionEstablishmentReportVSgMR);
      goto LABEL_23;
    }
  }

  v18 = SiriNetworkOspreyChannel.connectionMetrics.modify();
  v20 = v19;
  memmove(v67, v19, 0x599uLL);
  if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v67) == 1)
  {
    (v18)(v65, 0);
  }

  else
  {
    v21 = v4;
    LOBYTE(v66[0]) = 1;
    LOBYTE(v64[0]) = 1;
    v63[0] = 1;
    if (one-time initialization token for sharedNetworkAnalytics != -1)
    {
      swift_once();
    }

    v22 = static NetworkAnalytics.sharedNetworkAnalytics;
    v23 = v66[0];
    v24 = v64[0];
    v25 = v63[0];
    memcpy(v66, v20 + 57, 0x70uLL);
    v20[57] = 0;
    v20[58] = 0;
    *(v20 + 118) = 0;
    *(v20 + 476) = v23;
    v20[60] = 0;
    *(v20 + 488) = v24;
    v20[62] = 0;
    *(v20 + 504) = v25;
    v7 = MEMORY[0x277D84F90];
    v20[64] = MEMORY[0x277D84F90];
    v20[65] = v7;
    *(v20 + 264) = 0;
    v20[67] = 0;
    v20[69] = 0;
    v20[68] = 0;
    v20[70] = v22;
    v26 = v22;
    outlined destroy of ConnectionConfiguration?(v66, &_s11SiriNetwork29ConnectionEstablishmentReportVSgMd, _s11SiriNetwork29ConnectionEstablishmentReportVSgMR);
    (v18)(v65, 0);
    v4 = v21;
  }

LABEL_23:
  v27 = SiriNetworkOspreyChannel.connectionMetrics.modify();
  v29 = v28;
  memmove(v67, v28, 0x599uLL);
  if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v67) != 1 && v29[64])
  {
    v65[0] = 0;
    v65[1] = 0xE000000000000000;
    v64[0] = v3;
    lazy protocol witness table accessor for type SiriNetworkOspreyChannel and conformance NSObject();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v30 = v65[1];
    v31 = v29[58];
    v29[57] = v65[0];
    v29[58] = v30;
  }

  (v27)(v66, 0);
  v32 = SiriNetworkOspreyChannel.connectionMetrics.modify();
  v34 = v33;
  memmove(v66, v33, 0x599uLL);
  if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v66) != 1)
  {
    v35 = v1;
    ConnectionEstablishmentReport.init(ospreyConnectionMetrics:)(v1, v64);
    memcpy(v65, v34 + 456, 0x70uLL);
    memcpy(v34 + 456, v64, 0x70uLL);
    outlined destroy of ConnectionConfiguration?(v65, &_s11SiriNetwork29ConnectionEstablishmentReportVSgMd, _s11SiriNetwork29ConnectionEstablishmentReportVSgMR);
  }

  (v32)(v63, 0);
  memcpy(v64, &v3[v5], 0x599uLL);
  memcpy(v63, &v3[v5], 0x599uLL);
  memmove(v65, &v3[v5], 0x599uLL);
  if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v65) == 1)
  {
    memcpy(v62, v63, 0x599uLL);
    outlined init with copy of ConnectionSnapshotReport?(v64, v61, &_s11SiriNetwork17ConnectionMetricsVSgMd, &_s11SiriNetwork17ConnectionMetricsVSgMR);
    outlined destroy of ConnectionConfiguration?(v62, &_s11SiriNetwork17ConnectionMetricsVSgMd, &_s11SiriNetwork17ConnectionMetricsVSgMR);
    goto LABEL_31;
  }

  memcpy(__dst, &v63[568], 0x2C8uLL);
  memcpy(v62, v63, 0x599uLL);
  outlined init with copy of ConnectionSnapshotReport?(v64, v61, &_s11SiriNetwork17ConnectionMetricsVSgMd, &_s11SiriNetwork17ConnectionMetricsVSgMR);
  outlined init with copy of ConnectionSnapshotReport?(__dst, v61, &_s11SiriNetwork24ConnectionSnapshotReportVSgMd, &_s11SiriNetwork24ConnectionSnapshotReportVSgMR);
  outlined destroy of ConnectionConfiguration?(v62, &_s11SiriNetwork17ConnectionMetricsVSgMd, &_s11SiriNetwork17ConnectionMetricsVSgMR);
  memcpy(__src, __dst, 0x2C8uLL);
  if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(__src) == 1)
  {
LABEL_31:
    v36 = SiriNetworkOspreyChannel.connectionMetrics.modify();
    v38 = v37;
    memmove(v63, v37, 0x599uLL);
    if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v63) == 1)
    {
      (v36)(v54, 0);
    }

    else
    {
      _s11SiriNetwork010ConnectionB6ReportVSgWOi0_(__src);
      memcpy(v60, __src, sizeof(v60));
      v74[0] = 1;
      _s11SiriNetwork25ConnectionInterfaceReportVSgWOi0_(__dst);
      memcpy(&v59[7], __dst, 0x121uLL);
      if (one-time initialization token for sharedNetworkAnalytics != -1)
      {
        swift_once();
      }

      v39 = static NetworkAnalytics.sharedNetworkAnalytics;
      LODWORD(v61[0]) = 0;
      v61[1] = 0;
      v61[2] = 0xE000000000000000;
      v61[3] = 0;
      v61[4] = 0xE000000000000000;
      memcpy(&v61[5], v60, 0x139uLL);
      v61[46] = 0;
      v61[45] = 0;
      LOBYTE(v61[47]) = v74[0];
      memcpy(&v61[47] + 1, v59, 0x128uLL);
      v61[85] = v7;
      v61[86] = v7;
      LODWORD(v61[87]) = 4;
      v61[88] = static NetworkAnalytics.sharedNetworkAnalytics;
      destructiveProjectEnumData for ConnectionConfigurationError(v61);
      memcpy(v62, v38 + 568, 0x2C8uLL);
      memcpy(v38 + 568, v61, 0x2C8uLL);
      v40 = v39;
      outlined destroy of ConnectionConfiguration?(v62, &_s11SiriNetwork24ConnectionSnapshotReportVSgMd, &_s11SiriNetwork24ConnectionSnapshotReportVSgMR);
      (v36)(v54, 0);
    }

    goto LABEL_37;
  }

  outlined destroy of ConnectionConfiguration?(__dst, &_s11SiriNetwork24ConnectionSnapshotReportVSgMd, &_s11SiriNetwork24ConnectionSnapshotReportVSgMR);
LABEL_37:
  ConnectionNetworkReport.init(ospreyConnectionMetrics:)(v1, v74);
  memcpy(v58, v74, sizeof(v58));
  v41 = SiriNetworkOspreyChannel.connectionMetrics.modify();
  v43 = v42;
  memmove(v63, v42, 0x599uLL);
  if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v63) == 1)
  {
    outlined destroy of ConnectionNetworkReport(v74);
    (v41)(__dst, 0);
  }

  else
  {
    memmove(v62, v43 + 568, 0x2C8uLL);
    if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v62) == 1)
    {
      outlined destroy of ConnectionNetworkReport(v74);
    }

    else
    {
      memcpy(__src, v58, 0x139uLL);
      destructiveProjectEnumData for ConnectionConfigurationError(__src);
      memcpy(v61, v43 + 608, 0x139uLL);
      memcpy(v43 + 608, __src, 0x139uLL);
      outlined destroy of ConnectionConfiguration?(v61, &_s11SiriNetwork010ConnectionB6ReportVSgMd, &_s11SiriNetwork010ConnectionB6ReportVSgMR);
    }

    (v41)(__dst, 0);
  }

  if (one-time initialization token for siriNetwork != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  __swift_project_value_buffer(v44, static Logger.siriNetwork);
  v45 = v3;
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v57 = v49;
    *v48 = 136315138;
    memcpy(v61, &v3[v5], 0x599uLL);
    memmove(v62, &v3[v5], 0x599uLL);
    if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v62) == 1)
    {
      v50 = 0xE100000000000000;
      v51 = 45;
    }

    else
    {
      memcpy(__dst, v61, 0x599uLL);
      memcpy(__src, v61, 0x599uLL);
      outlined init with copy of ConnectionMetrics(__src, v54);
      v51 = String.init<A>(describing:)();
      v50 = v52;
    }

    v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v50, &v57);

    *(v48 + 4) = v53;
    _os_log_impl(&dword_223515000, v46, v47, "Provider - SiriNetworkOspreyChannel: Channel metrics generated. %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v49);
    MEMORY[0x223DE38F0](v49, -1, -1);
    MEMORY[0x223DE38F0](v48, -1, -1);
  }

  [*&v3[v4] unlock];
}

void SiriNetworkOspreyChannel.send(_:)()
{
  v1 = *(v0 + OBJC_IVAR___SNOspreyChannel_ospreyClientStreamingContext);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR___SNOspreyChannel_ospreyClientStreamingContext);
    swift_unknownObjectRetain();
    oslog = Data._bridgeToObjectiveC()().super.isa;
    [v1 writeFrame_];
    swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.siriNetwork);
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_223515000, oslog, v4, "Provider - SiriNetworkOspreyChannel: Channel streaming context is nil.", v5, 2u);
      OUTLINED_FUNCTION_12();
    }
  }
}

id SiriNetworkOspreyChannel.bidirectionalStreamingRequest(withMethodName:requestBuilder:streamingResponseHandler:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.siriNetwork);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_223515000, v15, v16, "Provider - SiriNetworkOspreyChannel: Bidirectional streaming created.", v17, 2u);
    OUTLINED_FUNCTION_12();
  }

  v18 = MEMORY[0x223DE2070](a1, a2);
  if (a3)
  {
    v36 = a3;
    v37 = a4;
    aBlock = MEMORY[0x277D85DD0];
    v33 = 1107296256;
    v34 = thunk for @escaping @callee_guaranteed (@guaranteed OspreyConnectionMetrics) -> ();
    v35 = &block_descriptor_70;
    v19 = _Block_copy(&aBlock);
  }

  else
  {
    v19 = 0;
  }

  v36 = a5;
  v37 = a6;
  OUTLINED_FUNCTION_2_4();
  v33 = 1107296256;
  v34 = thunk for @escaping @callee_guaranteed (@guaranteed Data) -> ();
  v35 = &block_descriptor_64;
  v20 = _Block_copy(&aBlock);

  v36 = a7;
  v37 = a8;
  OUTLINED_FUNCTION_2_4();
  v33 = 1107296256;
  v34 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  v35 = &block_descriptor_67;
  v21 = _Block_copy(&aBlock);

  v31.receiver = v29;
  v31.super_class = type metadata accessor for SiriNetworkOspreyChannel();
  v22 = objc_msgSendSuper2(&v31, sel_bidirectionalStreamingRequestWithMethodName_requestBuilder_streamingResponseHandler_completion_, v18, v19, v20, v21);
  _Block_release(v21);
  _Block_release(v20);
  _Block_release(v19);

  v23 = *&v29[OBJC_IVAR___SNOspreyChannel_ospreyClientStreamingContext];
  *&v29[OBJC_IVAR___SNOspreyChannel_ospreyClientStreamingContext] = v22;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v24 = &v29[OBJC_IVAR___SNOspreyChannel_ospreyRequestBuilder];
  v25 = *&v29[OBJC_IVAR___SNOspreyChannel_ospreyRequestBuilder];
  v26 = *&v29[OBJC_IVAR___SNOspreyChannel_ospreyRequestBuilder + 8];
  *v24 = a3;
  v24[1] = a4;
  outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v25);
  outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(a3);
  return v22;
}

void thunk for @escaping @callee_guaranteed (@guaranteed OspreyConnectionMetrics) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed Data) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v4(v6, v8);
  outlined consume of Data._Representation(v6, v8);
}

void thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSData) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  (*(a3 + 16))(a3, isa);
}

id SiriNetworkOspreyChannel.getMetrics()@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR___SNOspreyChannel_lock;
  [*(v1 + OBJC_IVAR___SNOspreyChannel_lock) lock];
  v4 = OBJC_IVAR___SNOspreyChannel_connectionMetrics;
  swift_beginAccess();
  memcpy(__dst, (v1 + v4), 0x599uLL);
  memcpy(a1, (v1 + v4), 0x599uLL);
  v5 = *(v1 + v3);
  outlined init with copy of ConnectionSnapshotReport?(__dst, &v7, &_s11SiriNetwork17ConnectionMetricsVSgMd, &_s11SiriNetwork17ConnectionMetricsVSgMR);
  return [v5 unlock];
}

id SiriNetworkOspreyChannel.init(url:configuration:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = OBJC_IVAR___SNOspreyChannel_connectionConfiguration;
  _s11SiriNetwork23ConnectionConfigurationVSgWOi0_(__src);
  memcpy(&v3[v6], __src, 0x204uLL);
  *&v3[OBJC_IVAR___SNOspreyChannel_ospreyClientStreamingContext] = 0;
  OUTLINED_FUNCTION_5_7(OBJC_IVAR___SNOspreyChannel_ospreyRequestBuilder);
  OUTLINED_FUNCTION_5_7(OBJC_IVAR___SNOspreyChannel_ospreyConnectionMetrics);
  v7 = OBJC_IVAR___SNOspreyChannel_connectionMetrics;
  _s11SiriNetwork17ConnectionMetricsVSgWOi0_(v18);
  memcpy(&v3[v7], v18, 0x599uLL);
  v8 = OBJC_IVAR___SNOspreyChannel_lock;
  *&v3[v8] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  OUTLINED_FUNCTION_5_7(OBJC_IVAR___SNOspreyChannel_connectionIdentifier);
  OUTLINED_FUNCTION_5_7(OBJC_IVAR___SNOspreyChannel_configuration);
  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  v16.receiver = v3;
  v16.super_class = type metadata accessor for SiriNetworkOspreyChannel();
  v12 = objc_msgSendSuper2(&v16, sel_initWithURL_configuration_, v11, a2);

  v13 = type metadata accessor for URL();
  OUTLINED_FUNCTION_1(v13);
  (*(v14 + 8))(a1);
  return v12;
}

id SiriNetworkOspreyChannel.init(url:configuration:useCache:)(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v8 = OBJC_IVAR___SNOspreyChannel_connectionConfiguration;
  _s11SiriNetwork23ConnectionConfigurationVSgWOi0_(__src);
  memcpy(&v4[v8], __src, 0x204uLL);
  *&v4[OBJC_IVAR___SNOspreyChannel_ospreyClientStreamingContext] = 0;
  OUTLINED_FUNCTION_4_4(OBJC_IVAR___SNOspreyChannel_ospreyRequestBuilder);
  OUTLINED_FUNCTION_4_4(OBJC_IVAR___SNOspreyChannel_ospreyConnectionMetrics);
  v9 = OBJC_IVAR___SNOspreyChannel_connectionMetrics;
  _s11SiriNetwork17ConnectionMetricsVSgWOi0_(v20);
  memcpy(&v4[v9], v20, 0x599uLL);
  v10 = OBJC_IVAR___SNOspreyChannel_lock;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  OUTLINED_FUNCTION_4_4(OBJC_IVAR___SNOspreyChannel_connectionIdentifier);
  OUTLINED_FUNCTION_4_4(OBJC_IVAR___SNOspreyChannel_configuration);
  URL._bridgeToObjectiveC()(v11);
  v13 = v12;
  v18.receiver = v4;
  v18.super_class = type metadata accessor for SiriNetworkOspreyChannel();
  v14 = objc_msgSendSuper2(&v18, sel_initWithURL_configuration_useCache_, v13, a2, a3 & 1);

  v15 = type metadata accessor for URL();
  OUTLINED_FUNCTION_1(v15);
  (*(v16 + 8))(a1);
  return v14;
}

id SiriNetworkOspreyChannel.init()()
{
  v1 = OBJC_IVAR___SNOspreyChannel_connectionConfiguration;
  _s11SiriNetwork23ConnectionConfigurationVSgWOi0_(__src);
  memcpy(&v0[v1], __src, 0x204uLL);
  *&v0[OBJC_IVAR___SNOspreyChannel_ospreyClientStreamingContext] = 0;
  v2 = &v0[OBJC_IVAR___SNOspreyChannel_ospreyRequestBuilder];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = &v0[OBJC_IVAR___SNOspreyChannel_ospreyConnectionMetrics];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = OBJC_IVAR___SNOspreyChannel_connectionMetrics;
  _s11SiriNetwork17ConnectionMetricsVSgWOi0_(v12);
  memcpy(&v0[v4], v12, 0x599uLL);
  v5 = OBJC_IVAR___SNOspreyChannel_lock;
  *&v0[v5] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v6 = &v0[OBJC_IVAR___SNOspreyChannel_connectionIdentifier];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v0[OBJC_IVAR___SNOspreyChannel_configuration];
  v8 = type metadata accessor for SiriNetworkOspreyChannel();
  *v7 = 0;
  *(v7 + 1) = 0;
  v10.receiver = v0;
  v10.super_class = v8;
  return objc_msgSendSuper2(&v10, sel_init);
}

id SiriNetworkOspreyChannel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriNetworkOspreyChannel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t type metadata accessor for NSURLSessionConfiguration()
{
  result = lazy cache variable for type metadata for NSURLSessionConfiguration;
  if (!lazy cache variable for type metadata for NSURLSessionConfiguration)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSURLSessionConfiguration);
  }

  return result;
}

void partial apply for closure #1 in SiriNetworkOspreyChannel.init(url:connectionConfiguration:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  closure #1 in SiriNetworkOspreyChannel.init(url:connectionConfiguration:)(a1);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed OspreyConnectionMetrics) -> (@out ())(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed OspreyConnectionMetrics) -> ()(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

unint64_t lazy protocol witness table accessor for type SiriNetworkOspreyChannel and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type SiriNetworkOspreyChannel and conformance NSObject;
  if (!lazy protocol witness table cache variable for type SiriNetworkOspreyChannel and conformance NSObject)
  {
    type metadata accessor for SiriNetworkOspreyChannel();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriNetworkOspreyChannel and conformance NSObject);
  }

  return result;
}

uint64_t outlined destroy of ConnectionConfiguration?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_1(v4);
  (*(v5 + 8))(a1);
  return a1;
}

void _s11SiriNetwork23ConnectionConfigurationVSgWOi0_(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 1;
  bzero(a1 + 4, 0x1E4uLL);
}

uint64_t one-time initialization function for connectionStart()
{
  result = siri_ariadneDbgCode(320);
  static Constants.Signposts.connectionStart = result;
  return result;
}

uint64_t one-time initialization function for connectionOpen()
{
  result = siri_ariadneDbgCode(321);
  static Constants.Signposts.connectionOpen = result;
  return result;
}

uint64_t one-time initialization function for connectionOpened()
{
  result = siri_ariadneDbgCode(322);
  static Constants.Signposts.connectionOpened = result;
  return result;
}

uint64_t one-time initialization function for connectionClosed()
{
  result = siri_ariadneDbgCode(351);
  static Constants.Signposts.connectionClosed = result;
  return result;
}

uint64_t one-time initialization function for streamOpenNetwork()
{
  result = siri_ariadneDbgCode(356);
  static Constants.Signposts.streamOpenNetwork = result;
  return result;
}

uint64_t one-time initialization function for readBufferBegin()
{
  result = siri_ariadneDbgCode(358);
  static Constants.Signposts.readBufferBegin = result;
  return result;
}

uint64_t one-time initialization function for readBufferEnd()
{
  result = siri_ariadneDbgCode(359);
  static Constants.Signposts.readBufferEnd = result;
  return result;
}

uint64_t one-time initialization function for writeBufferBegin()
{
  result = siri_ariadneDbgCode(360);
  static Constants.Signposts.writeBufferBegin = result;
  return result;
}

uint64_t one-time initialization function for writeBufferEnd()
{
  result = siri_ariadneDbgCode(361);
  static Constants.Signposts.writeBufferEnd = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ConnectionMethod(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ConnectionMethod(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t ConnectionMethod.nextConnectionMethodSupported(connectionConfiguration:)(uint64_t a1, Swift::Int a2)
{
  v3 = *(a1 + 99);
  v4 = *(a1 + 408);
  v5 = *(a1 + 513);
  v18 = MEMORY[0x277D84FA0];
  v7 = v4 == 1 || v5 != 4;
  v8 = v7 | v3;
LABEL_8:
  while (2)
  {
    specialized Set._Variant.insert(_:)(v17, a2);
    v9 = 1;
    switch(a2)
    {
      case 1:
        v9 = 0;
        break;
      case 2:
        a2 = 3;
        v9 = 3;
        if (v8)
        {
          goto LABEL_12;
        }

        break;
      case 3:
        break;
      default:
        a2 = 2;
        v9 = 2;
        if ((v3 & 1) == 0)
        {
LABEL_12:
          v10 = v18;
          if (!*(v18 + 16))
          {
            continue;
          }

          v11 = *(v18 + 40);
          Hasher.init(_seed:)();
          MEMORY[0x223DE2980](a2);
          v12 = Hasher._finalize()();
          v13 = ~(-1 << *(v10 + 32));
          do
          {
            v14 = v12 & v13;
            if (((*(v10 + 56 + (((v12 & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v12 & v13)) & 1) == 0)
            {
              goto LABEL_8;
            }

            v12 = v14 + 1;
          }

          while (*(*(v10 + 48) + v14) != a2);
          v9 = a2;
        }

        break;
    }

    break;
  }

  v15 = specialized Set.contains(_:)(v9, v18);

  if (v15)
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

SiriNetwork::ConnectionMethod_optional __swiftcall ConnectionMethod.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 4)
  {
    LOBYTE(rawValue) = 4;
  }

  return rawValue;
}

SiriNetwork::ConnectionMethod_optional protocol witness for RawRepresentable.init(rawValue:) in conformance ConnectionMethod@<W0>(Swift::Int *a1@<X0>, SiriNetwork::ConnectionMethod_optional *a2@<X8>)
{
  result.value = ConnectionMethod.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ConnectionMethod@<X0>(uint64_t *a1@<X8>)
{
  result = ConnectionMethod.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type [ConnectionMethod] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [ConnectionMethod] and conformance [A];
  if (!lazy protocol witness table cache variable for type [ConnectionMethod] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11SiriNetwork16ConnectionMethodOGMd, &_sSay11SiriNetwork16ConnectionMethodOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ConnectionMethod] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ConnectionMethod and conformance ConnectionMethod()
{
  result = lazy protocol witness table cache variable for type ConnectionMethod and conformance ConnectionMethod;
  if (!lazy protocol witness table cache variable for type ConnectionMethod and conformance ConnectionMethod)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConnectionMethod and conformance ConnectionMethod);
  }

  return result;
}

uint64_t type metadata completion function for NetworkActivity(uint64_t a1)
{
  v1 = *(a1 + 88);
  result = type metadata accessor for Optional();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NetworkActivityTracingState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NetworkActivityTracingState and conformance NetworkActivityTracingState()
{
  result = lazy protocol witness table cache variable for type NetworkActivityTracingState and conformance NetworkActivityTracingState;
  if (!lazy protocol witness table cache variable for type NetworkActivityTracingState and conformance NetworkActivityTracingState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkActivityTracingState and conformance NetworkActivityTracingState);
  }

  return result;
}

id Error.sn_isNetworkUnreachable()(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v15 = OUTLINED_FUNCTION_0_15(v7, v8, v9, v10, v11, v12, v13, v14, v26);
  v16(v15);
  OUTLINED_FUNCTION_2_5();
  v17 = _getErrorEmbeddedNSError<A>(_:)();
  if (v17)
  {
    v3 = v17;
    v18 = *(v5 + 8);
    v19 = OUTLINED_FUNCTION_2_5();
  }

  else
  {
    v21 = OUTLINED_FUNCTION_3_3();
    v19 = OUTLINED_FUNCTION_1_7(v21, v22);
  }

  v20(v19);
  v23 = _convertErrorToNSError(_:)();

  v24 = [v23 *a3];
  return v24;
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

uint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(a3 + 56) + 16 * v4);
  result = *v6;
  v8 = v6[1];
  return result;
}

{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

{
  if (!*(a3 + 16))
  {
    return 2;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + v4);
  }

  else
  {
    return 2;
  }
}

uint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(a5 + 16))
  {
    return 0;
  }

  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, a3, a4);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = (*(a5 + 56) + 16 * v6);
  v9 = *v8;
  v10 = v8[1];
  return swift_unknownObjectRetain();
}

Swift::Bool __swiftcall NSError.isFallbackConnectionMethodRetryable(for:)(SiriNetwork::ConnectionMethod a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  OUTLINED_FUNCTION_11_1(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_28_2();
  v9 = OUTLINED_FUNCTION_0_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_0_1();
  v16 = v15 - v14;
  *&v51 = v1;
  type metadata accessor for NSError();
  v17 = v1;
  if (swift_dynamicCast())
  {
    v18 = 1;
    OUTLINED_FUNCTION_9_0();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v8);
    (*(v11 + 32))(v16, v2, v8);
    v22 = NWError.isFallbackConnectionMethodRetryable(for:)(a1);
    (*(v11 + 8))(v16, v8);
    if (v22)
    {
      return v18;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_5();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v8);
    outlined destroy of ConnectionSnapshotReport?(v2, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  }

  v26 = [v17 domain];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v30 = *MEMORY[0x277CCA5B8];
  if (v27 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v29 == v31)
  {
    goto LABEL_16;
  }

  v33 = OUTLINED_FUNCTION_24_0();

  if (v33)
  {
    goto LABEL_17;
  }

  v34 = [v17 domain];
  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  v38 = *MEMORY[0x277CD9248];
  if (v35 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v37 == v39)
  {
LABEL_16:

    goto LABEL_17;
  }

  v41 = OUTLINED_FUNCTION_24_0();

  if ((v41 & 1) == 0)
  {
LABEL_23:
    v44 = [v17 userInfo];
    v45 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v46 = *MEMORY[0x277CCA7E8];
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    specialized Dictionary.subscript.getter(v47, v48, v45, &v51);

    if (!v52)
    {
      outlined destroy of ConnectionSnapshotReport?(&v51, &_sypSgMd, &_sypSgMR);
      return 0;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      return 0;
    }

    v49 = NSError.isFallbackConnectionMethodRetryable(for:)(a1);

    return v49;
  }

LABEL_17:
  v42 = [v17 code];
  if (v42 != POSIXErrorCode.rawValue.getter() && v42 != POSIXErrorCode.rawValue.getter())
  {
    if (v42 == POSIXErrorCode.rawValue.getter())
    {
      return a1 == SiriNetwork_ConnectionMethod_peer;
    }

    goto LABEL_23;
  }

  return 1;
}

Swift::Bool __swiftcall NSError.sn_isNetworkUnreachable()()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  OUTLINED_FUNCTION_11_1(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_28_2();
  v8 = OUTLINED_FUNCTION_0_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_1();
  v15 = v14 - v13;
  *&v62 = isNetwork;
  type metadata accessor for NSError();
  v16 = isNetwork;
  if (OUTLINED_FUNCTION_22_1())
  {
    v1 = 1;
    OUTLINED_FUNCTION_9_0();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v7);
    (*(v10 + 32))(v15, v2, v7);
    isNetwork = NWError.sn_isNetworkUnreachable()();
    (*(v10 + 8))(v15, v7);
    if (isNetwork)
    {
      return v1;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_5();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v7);
    outlined destroy of ConnectionSnapshotReport?(v2, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  }

  v23 = OUTLINED_FUNCTION_14_1();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_15_3();
  v24 = *MEMORY[0x277CCA5B8];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_4_5();
  v26 = v26 && isNetwork == v25;
  if (v26)
  {
LABEL_16:

    goto LABEL_17;
  }

  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_16_4();

  if (!v1)
  {
    v27 = OUTLINED_FUNCTION_14_1();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_15_3();
    v28 = *MEMORY[0x277CD9248];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_4_5();
    if (!v26 || isNetwork != v29)
    {
      OUTLINED_FUNCTION_0_16();
      OUTLINED_FUNCTION_16_4();

      if (!v1)
      {
        goto LABEL_20;
      }

      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_17:
  isNetwork = OUTLINED_FUNCTION_30_0();
  if (isNetwork == POSIXErrorCode.rawValue.getter() || isNetwork == POSIXErrorCode.rawValue.getter() || isNetwork == POSIXErrorCode.rawValue.getter())
  {
    return 1;
  }

LABEL_20:
  v31 = OUTLINED_FUNCTION_14_1();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_15_3();
  v32 = *MEMORY[0x277CD9240];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_4_5();
  if (v26 && isNetwork == v33)
  {
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    OUTLINED_FUNCTION_16_4();

    if (!v1)
    {
      goto LABEL_31;
    }
  }

  v35 = OUTLINED_FUNCTION_30_0();
  if (v35 == -65554 || v35 == -65537)
  {
    return 1;
  }

LABEL_31:
  v37 = OUTLINED_FUNCTION_14_1();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_15_3();
  v38 = *MEMORY[0x277CBACE8];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_4_5();
  if (v26 && isNetwork == v39)
  {
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    OUTLINED_FUNCTION_16_4();

    if (!v1)
    {
      goto LABEL_39;
    }
  }

  if (OUTLINED_FUNCTION_30_0() - 1 < 2)
  {
    return 1;
  }

LABEL_39:
  v41 = OUTLINED_FUNCTION_14_1();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_15_3();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_4_5();
  if (v26 && isNetwork == v42)
  {

    return 1;
  }

  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_16_4();

  if (v1)
  {
    return 1;
  }

  v44 = OUTLINED_FUNCTION_14_1();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_15_3();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_4_5();
  if (v26 && isNetwork == v45)
  {

    goto LABEL_54;
  }

  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_16_4();

  if (v1)
  {
LABEL_54:
    v48 = OUTLINED_FUNCTION_30_0();
    if (v48 >= 0x11 || ((0x1726Bu >> v48) & 1) == 0)
    {
      goto LABEL_56;
    }

    return 1;
  }

LABEL_56:
  v49 = OUTLINED_FUNCTION_14_1();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_15_3();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_4_5();
  if (v26 && isNetwork == v50)
  {
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    OUTLINED_FUNCTION_16_4();

    if (!v1)
    {
      goto LABEL_69;
    }
  }

  v52 = [v16 userInfo];
  v53 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v54, v55, v53, &v62);

  if (!v63)
  {
    outlined destroy of ConnectionSnapshotReport?(&v62, &_sypSgMd, &_sypSgMR);
LABEL_69:
    v56 = [v16 userInfo];
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v57 = *MEMORY[0x277CCA7E8];
    v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_23_1(v58, v59);

    if (!v63)
    {
      outlined destroy of ConnectionSnapshotReport?(&v62, &_sypSgMd, &_sypSgMR);
      return 0;
    }

    OUTLINED_FUNCTION_26_1();
    if ((swift_dynamicCast() & 1) == 0)
    {
      return 0;
    }

    v60 = [v61 sn_isNetworkUnreachable];

    return (v60 & 1) != 0;
  }

  OUTLINED_FUNCTION_26_1();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_69;
  }

  v1 = 1;
  if (v61 != 406 && v61 != 503)
  {
    goto LABEL_69;
  }

  return v1;
}

unint64_t type metadata accessor for NSError()
{
  result = lazy cache variable for type metadata for NSError;
  if (!lazy cache variable for type metadata for NSError)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSError);
  }

  return result;
}

BOOL @objc NSError.sn_isNetworkUnreachable()(void *a1)
{
  v1 = a1;
  isNetwork = NSError.sn_isNetworkUnreachable()();

  return isNetwork;
}

Swift::Bool __swiftcall NSError.sn_isNetworkUnreachableForServerCause()()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  OUTLINED_FUNCTION_11_1(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_13_1();
  v8 = OUTLINED_FUNCTION_0_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_17_1();
  *&v54 = v0;
  type metadata accessor for NSError();
  v14 = v0;
  if (OUTLINED_FUNCTION_12_1())
  {
    OUTLINED_FUNCTION_9_0();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v7);
    v18 = v10[4];
    v19 = OUTLINED_FUNCTION_18_2();
    v18(v19);
    v20 = OUTLINED_FUNCTION_19_1();
    v18(v20);
    v21 = v10[11];
    v22 = OUTLINED_FUNCTION_5_2();
    if (v23(v22) == *MEMORY[0x277CD8FB0])
    {
      v24 = v10[12];
      v25 = OUTLINED_FUNCTION_5_2();
      v26(v25);
      if (*v2 <= 0x3Du)
      {
        v27 = ((1 << *v2) & 0x2060000000000000) == 0;
        *v2;
      }

      else
      {
        v27 = 1;
      }

      if (!v27)
      {
        return 1;
      }
    }

    else
    {
      v31 = v10[1];
      v32 = OUTLINED_FUNCTION_5_2();
      v33(v32);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_5();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v7);
    outlined destroy of ConnectionSnapshotReport?(v1, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  }

  v34 = [v14 domain];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_20_1();
  v35 = *MEMORY[0x277CCA5B8];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_4_5();
  if (v27 && v7 == v36)
  {
LABEL_22:

    goto LABEL_23;
  }

  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_21_2();

  if ((v2 & 1) == 0)
  {
    v38 = [v14 domain];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_20_1();
    v39 = *MEMORY[0x277CD9248];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_4_5();
    if (!v27 || v7 != v40)
    {
      OUTLINED_FUNCTION_2_6();
      OUTLINED_FUNCTION_21_2();

      if ((v2 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_23:
  v7 = [v14 code];
  if (v7 == POSIXErrorCode.rawValue.getter() || v7 == POSIXErrorCode.rawValue.getter() || v7 == POSIXErrorCode.rawValue.getter())
  {
    return 1;
  }

LABEL_26:
  v42 = [v14 domain];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_20_1();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_4_5();
  if (v27 && v7 == v43)
  {

    goto LABEL_33;
  }

  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_21_2();

  if (v2)
  {
LABEL_33:
    v45 = [v14 code];
    if (v45 <= 7 && ((1 << v45) & 0x8C) != 0)
    {
      return 1;
    }
  }

  v47 = [v14 userInfo];
  v48 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v49 = *MEMORY[0x277CCA7E8];
  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v50, v51, v48, &v54);

  if (!v55)
  {
    outlined destroy of ConnectionSnapshotReport?(&v54, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  if ((OUTLINED_FUNCTION_7_6() & 1) == 0)
  {
    return 0;
  }

  v52 = [v53 sn_isNetworkUnreachableForServerCause];

  return (v52 & 1) != 0;
}

BOOL @objc NSError.sn_isNetworkUnreachableForServerCause()(void *a1)
{
  v1 = a1;
  isNetworkUnreachableForServer = NSError.sn_isNetworkUnreachableForServerCause()();

  return isNetworkUnreachableForServer;
}

Swift::Bool __swiftcall NSError.sn_isNetworkDown()()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  OUTLINED_FUNCTION_11_1(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_13_1();
  v8 = OUTLINED_FUNCTION_0_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_17_1();
  v49[0] = v0;
  type metadata accessor for NSError();
  v14 = v0;
  if (OUTLINED_FUNCTION_12_1())
  {
    OUTLINED_FUNCTION_9_0();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v7);
    v18 = v10[4];
    v19 = OUTLINED_FUNCTION_18_2();
    v18(v19);
    v20 = OUTLINED_FUNCTION_19_1();
    v18(v20);
    v21 = v10[11];
    v22 = OUTLINED_FUNCTION_5_2();
    if (v23(v22) == *MEMORY[0x277CD8FB0])
    {
      v24 = v10[12];
      v25 = OUTLINED_FUNCTION_5_2();
      v26(v25);
      return *v2 == 50;
    }

    v45 = v10[1];
    v46 = OUTLINED_FUNCTION_5_2();
    v47(v46);
    return 0;
  }

  OUTLINED_FUNCTION_8_5();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v7);
  outlined destroy of ConnectionSnapshotReport?(v1, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  v31 = OUTLINED_FUNCTION_29_1();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_20_1();
  v32 = *MEMORY[0x277CCA5B8];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_4_5();
  v34 = v34 && v7 == v33;
  if (!v34)
  {
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_21_2();

    if (v2)
    {
      goto LABEL_16;
    }

    v35 = OUTLINED_FUNCTION_29_1();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_20_1();
    v36 = *MEMORY[0x277CD9248];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_4_5();
    if (!v34 || v7 != v37)
    {
      OUTLINED_FUNCTION_2_6();
      OUTLINED_FUNCTION_21_2();

      if ((v2 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    }
  }

LABEL_16:
  v39 = [v14 code];
  if (v39 == POSIXErrorCode.rawValue.getter())
  {
    return 1;
  }

LABEL_18:
  v40 = [v14 userInfo];
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v41 = *MEMORY[0x277CCA7E8];
  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_23_1(v42, v43);

  if (v49[3])
  {
    OUTLINED_FUNCTION_26_1();
    if ((OUTLINED_FUNCTION_7_6() & 1) == 0)
    {
      return 0;
    }

    v44 = [v48 sn_isNetworkDown];

    return (v44 & 1) != 0;
  }

  outlined destroy of ConnectionSnapshotReport?(v49, &_sypSgMd, &_sypSgMR);
  return 0;
}

BOOL @objc NSError.sn_isNetworkDown()(void *a1)
{
  v1 = a1;
  isNetwork = NSError.sn_isNetworkDown()();

  return isNetwork;
}

BOOL @objc NSError.sn_isNetworkConnectionRetryable()(void *a1)
{
  v1 = a1;
  isNetworkConnection = NSError.sn_isNetworkConnectionRetryable()();

  return isNetworkConnection;
}

Swift::Bool __swiftcall NSError.sn_isNetworkConnectionRetryableNow()()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  OUTLINED_FUNCTION_11_1(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_13_1();
  v8 = OUTLINED_FUNCTION_0_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_17_1();
  *&v50 = v0;
  type metadata accessor for NSError();
  v14 = v0;
  if (OUTLINED_FUNCTION_12_1())
  {
    OUTLINED_FUNCTION_9_0();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v7);
    v18 = v10[4];
    v19 = OUTLINED_FUNCTION_18_2();
    v18(v19);
    v20 = OUTLINED_FUNCTION_19_1();
    v18(v20);
    v21 = v10[11];
    v22 = OUTLINED_FUNCTION_5_2();
    if (v23(v22) == *MEMORY[0x277CD8FB0])
    {
      v24 = v10[12];
      v25 = OUTLINED_FUNCTION_5_2();
      v26(v25);
      if (*v2 == 54)
      {
        return 1;
      }
    }

    else
    {
      v30 = v10[1];
      v31 = OUTLINED_FUNCTION_5_2();
      v32(v31);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_5();
    __swift_storeEnumTagSinglePayload(v27, v28, v29, v7);
    outlined destroy of ConnectionSnapshotReport?(v1, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  }

  v33 = OUTLINED_FUNCTION_29_1();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_20_1();
  v34 = *MEMORY[0x277CCA5B8];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_4_5();
  v36 = v36 && v7 == v35;
  if (!v36)
  {
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_21_2();

    if (v2)
    {
      goto LABEL_19;
    }

    v37 = OUTLINED_FUNCTION_29_1();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_20_1();
    v38 = *MEMORY[0x277CD9248];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_4_5();
    if (!v36 || v7 != v39)
    {
      OUTLINED_FUNCTION_2_6();
      OUTLINED_FUNCTION_21_2();

      if ((v2 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }
  }

LABEL_19:
  v41 = [v14 code];
  if (v41 == POSIXErrorCode.rawValue.getter())
  {
    return 1;
  }

LABEL_21:
  v43 = [v14 userInfo];
  v44 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v45 = *MEMORY[0x277CCA7E8];
  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v46, v47, v44, &v50);

  if (v51)
  {
    if (OUTLINED_FUNCTION_7_6())
    {
      v48 = [v49 sn_isNetworkConnectionRetryableNow];

      if (v48)
      {
        return 1;
      }
    }
  }

  else
  {
    outlined destroy of ConnectionSnapshotReport?(&v50, &_sypSgMd, &_sypSgMR);
  }

  return 0;
}

BOOL @objc NSError.sn_isNetworkConnectionRetryableNow()(void *a1)
{
  v1 = a1;
  isNetworkConnectionRetryable = NSError.sn_isNetworkConnectionRetryableNow()();

  return isNetworkConnectionRetryable;
}

Swift::Bool __swiftcall NSError.sn_isNetworkConnectionRetryableAfterDelay()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  OUTLINED_FUNCTION_11_1(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_27();
  v6 = OUTLINED_FUNCTION_0_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_1();
  v13 = v12 - v11;
  if ([isNetworkConnectionRetryableAfter sn_isNetworkConnectionRetryableNow])
  {
    return 1;
  }

  v40[0] = isNetworkConnectionRetryableAfter;
  type metadata accessor for NSError();
  v14 = isNetworkConnectionRetryableAfter;
  if (OUTLINED_FUNCTION_22_1())
  {
    v15 = 1;
    OUTLINED_FUNCTION_9_0();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v5);
    v19 = OUTLINED_FUNCTION_25_0(v8);
    v20(v19);
    isNetworkConnectionRetryableAfter = NWError.sn_isNetworkConnectionRetryableAfterDelay()();
    (*(v8 + 8))(v13, v5);
    if (isNetworkConnectionRetryableAfter)
    {
      return v15;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_5();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v5);
    outlined destroy of ConnectionSnapshotReport?(isNetworkConnectionRetryableAfter, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  }

  v24 = OUTLINED_FUNCTION_14_1();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_15_3();
  v25 = *MEMORY[0x277CCA5B8];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_4_5();
  v27 = v27 && isNetworkConnectionRetryableAfter == v26;
  if (v27)
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_16_4();

  if (v13)
  {
LABEL_18:
    v32 = [v14 code];
    if (v32 == POSIXErrorCode.rawValue.getter() || v32 == POSIXErrorCode.rawValue.getter())
    {
      return 1;
    }

    goto LABEL_22;
  }

  v28 = OUTLINED_FUNCTION_14_1();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_15_3();
  v29 = *MEMORY[0x277CD9248];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_4_5();
  if (v27 && isNetworkConnectionRetryableAfter == v30)
  {
LABEL_17:

    goto LABEL_18;
  }

  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_16_4();

  if (v13)
  {
    goto LABEL_18;
  }

LABEL_22:
  v34 = [v14 userInfo];
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v35 = *MEMORY[0x277CCA7E8];
  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_23_1(v36, v37);

  if (!v40[3])
  {
    outlined destroy of ConnectionSnapshotReport?(v40, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  OUTLINED_FUNCTION_26_1();
  if ((OUTLINED_FUNCTION_7_6() & 1) == 0)
  {
    return 0;
  }

  v38 = [v39 sn_isNetworkConnectionRetryableAfterDelay];

  return (v38 & 1) != 0;
}

BOOL @objc NSError.sn_isNetworkConnectionRetryableAfterDelay()(void *a1)
{
  v1 = a1;
  isNetworkConnectionRetryableAfter = NSError.sn_isNetworkConnectionRetryableAfterDelay()();

  return isNetworkConnectionRetryableAfter;
}

Swift::Bool __swiftcall NSError.sn_isNetworkOperationRetryable()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  OUTLINED_FUNCTION_11_1(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_27();
  v6 = OUTLINED_FUNCTION_0_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_1();
  v13 = v12 - v11;
  v14 = [isNetworkOperation sn_isNetworkConnectionRetryable];
  if (v14)
  {
    *&v41 = isNetworkOperation;
    type metadata accessor for NSError();
    v15 = isNetworkOperation;
    if (OUTLINED_FUNCTION_22_1())
    {
      OUTLINED_FUNCTION_9_0();
      __swift_storeEnumTagSinglePayload(v16, v17, v18, v5);
      v19 = OUTLINED_FUNCTION_25_0(v8);
      v20(v19);
      isNetworkOperation = NWError.sn_isNetworkOperationRetryable()();
      (*(v8 + 8))(v13, v5);
      if ((isNetworkOperation & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      OUTLINED_FUNCTION_8_5();
      __swift_storeEnumTagSinglePayload(v21, v22, v23, v5);
      outlined destroy of ConnectionSnapshotReport?(isNetworkOperation, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
    }

    v24 = OUTLINED_FUNCTION_14_1();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_15_3();
    v25 = *MEMORY[0x277CCA5B8];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_4_5();
    v27 = v27 && isNetworkOperation == v26;
    if (!v27)
    {
      OUTLINED_FUNCTION_0_16();
      OUTLINED_FUNCTION_16_4();

      if (v13)
      {
        goto LABEL_18;
      }

      v28 = OUTLINED_FUNCTION_14_1();
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      OUTLINED_FUNCTION_15_3();
      v29 = *MEMORY[0x277CD9248];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      OUTLINED_FUNCTION_4_5();
      if (!v27 || isNetworkOperation != v30)
      {
        OUTLINED_FUNCTION_0_16();
        OUTLINED_FUNCTION_16_4();

        if ((v13 & 1) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_18;
      }
    }

LABEL_18:
    v32 = [v15 code];
    if (v32 == POSIXErrorCode.rawValue.getter())
    {
LABEL_19:
      LOBYTE(v14) = 0;
      return v14;
    }

LABEL_20:
    v33 = [v15 userInfo];
    v34 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v35 = *MEMORY[0x277CCA7E8];
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    specialized Dictionary.subscript.getter(v36, v37, v34, &v41);

    if (v42)
    {
      if (OUTLINED_FUNCTION_7_6())
      {
        v38 = [v40 sn_isNetworkOperationRetryable];

        if ((v38 & 1) == 0)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      outlined destroy of ConnectionSnapshotReport?(&v41, &_sypSgMd, &_sypSgMR);
    }

    LOBYTE(v14) = 1;
  }

  return v14;
}

BOOL @objc NSError.sn_isNetworkOperationRetryable()(void *a1)
{
  v1 = a1;
  isNetworkOperation = NSError.sn_isNetworkOperationRetryable()();

  return isNetworkOperation;
}

id SNSetRestrictionsThunk.init(thunk:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5[4] = a1;
    v5[5] = a2;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 1107296256;
    v5[2] = thunk for @escaping @callee_guaranteed (@guaranteed AceObject?) -> ();
    v5[3] = &block_descriptor_4;
    v2 = _Block_copy(v5);
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithThunk_];
  _Block_release(v2);
  return v3;
}

void thunk for @escaping @callee_guaranteed (@guaranteed AceObject?) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

char *SNSetRestrictionsThunk.init(thunk:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_17(OBJC_IVAR___SNSetRestrictionsThunk_thunk);
  v11.receiver = v2;
  v11.super_class = SNSetRestrictionsThunk;
  v5 = objc_msgSendSuper2(&v11, sel_init);
  v6 = &v5[OBJC_IVAR___SNSetRestrictionsThunk_thunk];
  v7 = *&v5[OBJC_IVAR___SNSetRestrictionsThunk_thunk];
  v8 = *&v5[OBJC_IVAR___SNSetRestrictionsThunk_thunk + 8];
  *v6 = a1;
  *(v6 + 1) = a2;
  v9 = v5;
  outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v7);

  return v9;
}

id SNSetRestrictionsThunk.init(coder:)(void *a1)
{
  OUTLINED_FUNCTION_0_17(OBJC_IVAR___SNSetRestrictionsThunk_thunk);
  v5.receiver = v1;
  v5.super_class = SNSetRestrictionsThunk;
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id SNSetRestrictionsThunk.init(dictionary:context:)(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v5 = [v3 initWithDictionary:isa context:a2];

  swift_unknownObjectRelease();
  return v5;
}

void SNSetRestrictionsThunk.init(dictionary:context:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_17(OBJC_IVAR___SNSetRestrictionsThunk_thunk);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v6.receiver = v2;
  v6.super_class = SNSetRestrictionsThunk;
  v5 = objc_msgSendSuper2(&v6, sel_initWithDictionary_context_, isa, a2);

  if (v5)
  {

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void __swiftcall SNSetRestrictionsThunk.init(dictionary:)(SNSetRestrictionsThunk *__return_ptr retstr, Swift::OpaquePointer dictionary)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v2 initWithDictionary_];
}

void SNSetRestrictionsThunk.init(dictionary:)()
{
  OUTLINED_FUNCTION_0_17(OBJC_IVAR___SNSetRestrictionsThunk_thunk);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v3.receiver = v0;
  v3.super_class = SNSetRestrictionsThunk;
  v2 = objc_msgSendSuper2(&v3, sel_initWithDictionary_, isa);

  if (v2)
  {
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall SNSetRestrictionsThunk.siriNetwork_invokeThunk()()
{
  v1 = (v0 + OBJC_IVAR___SNSetRestrictionsThunk_thunk);
  v2 = *(v0 + OBJC_IVAR___SNSetRestrictionsThunk_thunk);
  if (v2)
  {
    v3 = v1[1];

    v2();
    outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v2);
    v4 = *v1;
  }

  else
  {
    v4 = 0;
  }

  v5 = v1[1];
  *v1 = 0;
  v1[1] = 0;

  outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v4);
}

void __swiftcall SNSetRestrictionsThunk.init()(SNSetRestrictionsThunk *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

unint64_t type metadata accessor for SNSetRestrictionsThunk()
{
  result = lazy cache variable for type metadata for SNSetRestrictionsThunk;
  if (!lazy cache variable for type metadata for SNSetRestrictionsThunk)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SNSetRestrictionsThunk);
  }

  return result;
}

void specialized ConnectionProviderProtocol.setupOpenTimeoutTimer()()
{
  OUTLINED_FUNCTION_46();
  v3 = v0;
  v4 = type metadata accessor for DispatchTime();
  v5 = OUTLINED_FUNCTION_0_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_26_2();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_35_0();
  v104 = v9;
  OUTLINED_FUNCTION_31();
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = OUTLINED_FUNCTION_0_0(v10);
  v102 = v12;
  v103 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_0_1();
  v100 = v16 - v15;
  OUTLINED_FUNCTION_31();
  v101 = type metadata accessor for DispatchQoS();
  v17 = OUTLINED_FUNCTION_0_0(v101);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_31();
  v20 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v21 = OUTLINED_FUNCTION_0_0(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_49_1(v25 - v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
  v27 = OUTLINED_FUNCTION_11_1(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_9();
  v32 = v30 - v31;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_35_0();
  v99 = v34;
  OUTLINED_FUNCTION_31();
  v35 = type metadata accessor for DispatchTimeInterval();
  v36 = OUTLINED_FUNCTION_0_0(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_5();
  v105 = v41;
  OUTLINED_FUNCTION_26_2();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_100();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_99();
  specialized ConnectionProviderProtocol.openTimeoutTimerInterval.getter(v45);
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  __swift_project_value_buffer(v46, static Logger.siriNetwork);
  v47 = OUTLINED_FUNCTION_57_2();
  v1(v47);

  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();

  v107 = v3;
  if (os_log_type_enabled(v48, v49))
  {
    v97 = v48;
    v98 = v2;
    OUTLINED_FUNCTION_4_3();
    v50 = swift_slowAlloc();
    v108[0] = OUTLINED_FUNCTION_116();
    *v50 = 136315650;
    isa = v3->isa;
    v52 = _typeName(_:qualified:)();
    v53 = v32;
    v2 = v35;
    v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, v108);

    OUTLINED_FUNCTION_73();
    v56 = OUTLINED_FUNCTION_98();
    v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v55, v57);

    v59 = OUTLINED_FUNCTION_54_0();
    v1(v59);
    OUTLINED_FUNCTION_9_0();
    __swift_storeEnumTagSinglePayload(v60, v61, v62, v2);
    outlined init with copy of NetworkConnectionProtocol?(v3, v53, &_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
    OUTLINED_FUNCTION_113(v53);
    if (v63)
    {
      OUTLINED_FUNCTION_97();
    }

    else
    {
      v66 = *(v38 + 32);
      v2 = v98;
      OUTLINED_FUNCTION_45();
      v67();
      v68 = OUTLINED_FUNCTION_50();
      v1(v68);
      String.init<A>(describing:)();
      v69 = OUTLINED_FUNCTION_62();
      v70(v69);
    }

    v3 = v97;
    outlined destroy of NetworkConnectionProtocol?(v99, &_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
    v71 = OUTLINED_FUNCTION_7_7();
    v72(v71);
    v73 = OUTLINED_FUNCTION_98();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v1, v74);
    OUTLINED_FUNCTION_115();
    *(v50 + 24) = v58;
    OUTLINED_FUNCTION_74(&dword_223515000, v75, v76, "Provider - %s [%s]: Open timer scheduled (%s).");
    OUTLINED_FUNCTION_86();
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
  }

  else
  {

    v64 = OUTLINED_FUNCTION_7_7();
    v65(v64);
  }

  type metadata accessor for OS_dispatch_source();
  v108[0] = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_13_2();
  lazy protocol witness table accessor for type NetworkConnectionProvider and conformance NetworkConnectionProvider(v77, 255, v78);
  v79 = OUTLINED_FUNCTION_79();
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(v79, v80);
  OUTLINED_FUNCTION_83();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](v82, v83, v84);
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_111();
  v85 = OUTLINED_FUNCTION_81();
  v86(v85);
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_7_1();
  v88 = swift_allocObject();
  OUTLINED_FUNCTION_77(v88);
  swift_weakInit();
  v108[4] = partial apply for specialized closure #1 in ConnectionProviderProtocol.setupOpenTimeoutTimer();
  v108[5] = &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMR;
  v108[0] = MEMORY[0x277D85DD0];
  OUTLINED_FUNCTION_32_1(COERCE_DOUBLE(1107296256));
  v108[2] = v89;
  v108[3] = &block_descriptor_307;
  _Block_copy(v108);
  OUTLINED_FUNCTION_104();

  default argument 0 of OS_dispatch_source.setEventHandler(qos:flags:handler:)(ObjectType);
  default argument 1 of OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_90_0();
  _Block_release(v81);
  (*(v102 + 8))(v100, v103);
  v90 = OUTLINED_FUNCTION_106();
  v91(v90);

  static DispatchTime.now()();
  DispatchTime.advanced(by:)();
  v92 = OUTLINED_FUNCTION_103_0();
  (_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMR)(v92);
  OUTLINED_FUNCTION_101();
  default argument 1 of OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)(v93);
  OUTLINED_FUNCTION_101();
  default argument 2 of OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)(v94);
  OUTLINED_FUNCTION_88();
  v95 = OUTLINED_FUNCTION_51();
  v105(v95);
  (v105)(v2, v3);
  (_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMR)(v104, v81);
  OS_dispatch_source.resume()();
  (v105)(v106, v3);
  v96 = v107[266].isa;
  v107[266].isa = v97;
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_47();
}

void specialized closure #1 in ConnectionProviderProtocol.setupOpenTimeoutTimer()()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.siriNetwork);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v22 = v6;
      *v5 = 136315394;
      v7 = *v1;
      v8 = _typeName(_:qualified:)();
      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v22);

      *(v5 + 4) = v10;
      *(v5 + 12) = 2080;
      v11 = v1[2];
      v12 = v1[3];

      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v22);

      *(v5 + 14) = v13;
      _os_log_impl(&dword_223515000, v3, v4, "Provider - %s [%s]: Open timer fired.", v5, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DE38F0](v6, -1, -1);
      MEMORY[0x223DE38F0](v5, -1, -1);
    }

    specialized ConnectionProviderProtocol.cancelOpenTimer()();
    v14 = v1[265];
    v15 = v14;
    if (AFDeviceSupportsSiriUOD() && swift_unknownObjectWeakLoadStrong())
    {
      lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
      v16 = swift_allocError();
      *(v17 + 8) = 0;
      *(v17 + 16) = 0;
      *v17 = v14;
      *(v17 + 24) = xmmword_2235F0A60;

      v18 = v14;
      specialized BackgroundConnection.connectionProvider(_:received:)();

      swift_unknownObjectRelease();
    }

    else
    {
      lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
      v19 = swift_allocError();
      *(v20 + 8) = 0;
      *(v20 + 16) = 0;
      *v20 = v14;
      *(v20 + 24) = xmmword_2235F0A60;
      v21 = v14;
      RPCOspreyConnectionProvider.closeWithError(_:)(v19);
    }
  }
}

{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.siriNetwork);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v22 = v6;
      *v5 = 136315394;
      v7 = *v1;
      v8 = _typeName(_:qualified:)();
      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v22);

      *(v5 + 4) = v10;
      *(v5 + 12) = 2080;
      v11 = NetworkConnectionProvider.connectionIdentifier.getter();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v22);

      *(v5 + 14) = v13;
      _os_log_impl(&dword_223515000, v3, v4, "Provider - %s [%s]: Open timer fired.", v5, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DE38F0](v6, -1, -1);
      MEMORY[0x223DE38F0](v5, -1, -1);
    }

    specialized ConnectionProviderProtocol.cancelOpenTimer()();
    v14 = v1[263];
    v15 = v14;
    if (AFDeviceSupportsSiriUOD() && swift_unknownObjectWeakLoadStrong())
    {
      lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
      v16 = swift_allocError();
      *(v17 + 8) = 0;
      *(v17 + 16) = 0;
      *v17 = v14;
      *(v17 + 24) = xmmword_2235F0A60;

      v18 = v14;
      specialized BackgroundConnection.connectionProvider(_:received:)();

      swift_unknownObjectRelease();
    }

    else
    {
      lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
      v19 = swift_allocError();
      *(v20 + 8) = 0;
      *(v20 + 16) = 0;
      *v20 = v14;
      *(v20 + 24) = xmmword_2235F0A60;
      v21 = v14;
      NetworkConnectionProvider.closeWithError(_:)();
    }
  }
}

void specialized ConnectionProviderProtocol.setupOpenSlowTimer()()
{
  OUTLINED_FUNCTION_46();
  v3 = v0;
  v4 = type metadata accessor for DispatchTime();
  v5 = OUTLINED_FUNCTION_0_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_26_2();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_35_0();
  v104 = v9;
  OUTLINED_FUNCTION_31();
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = OUTLINED_FUNCTION_0_0(v10);
  v102 = v12;
  v103 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_0_1();
  v100 = v16 - v15;
  OUTLINED_FUNCTION_31();
  v101 = type metadata accessor for DispatchQoS();
  v17 = OUTLINED_FUNCTION_0_0(v101);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_31();
  v20 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v21 = OUTLINED_FUNCTION_0_0(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_49_1(v25 - v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
  v27 = OUTLINED_FUNCTION_11_1(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_9();
  v32 = v30 - v31;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_35_0();
  v99 = v34;
  OUTLINED_FUNCTION_31();
  v35 = type metadata accessor for DispatchTimeInterval();
  v36 = OUTLINED_FUNCTION_0_0(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_5();
  v105 = v41;
  OUTLINED_FUNCTION_26_2();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_100();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_99();
  specialized ConnectionProviderProtocol.openSlowTimerInterval.getter(v45);
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  __swift_project_value_buffer(v46, static Logger.siriNetwork);
  v47 = OUTLINED_FUNCTION_57_2();
  v1(v47);

  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();

  v107 = v3;
  if (os_log_type_enabled(v48, v49))
  {
    v97 = v48;
    v98 = v2;
    OUTLINED_FUNCTION_4_3();
    v50 = swift_slowAlloc();
    v108[0] = OUTLINED_FUNCTION_116();
    *v50 = 136315650;
    isa = v3->isa;
    v52 = _typeName(_:qualified:)();
    v53 = v32;
    v2 = v35;
    v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, v108);

    OUTLINED_FUNCTION_73();
    v56 = OUTLINED_FUNCTION_98();
    v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v55, v57);

    v59 = OUTLINED_FUNCTION_54_0();
    v1(v59);
    OUTLINED_FUNCTION_9_0();
    __swift_storeEnumTagSinglePayload(v60, v61, v62, v2);
    outlined init with copy of NetworkConnectionProtocol?(v3, v53, &_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
    OUTLINED_FUNCTION_113(v53);
    if (v63)
    {
      OUTLINED_FUNCTION_97();
    }

    else
    {
      v66 = *(v38 + 32);
      v2 = v98;
      OUTLINED_FUNCTION_45();
      v67();
      v68 = OUTLINED_FUNCTION_50();
      v1(v68);
      String.init<A>(describing:)();
      v69 = OUTLINED_FUNCTION_62();
      v70(v69);
    }

    v3 = v97;
    outlined destroy of NetworkConnectionProtocol?(v99, &_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
    v71 = OUTLINED_FUNCTION_7_7();
    v72(v71);
    v73 = OUTLINED_FUNCTION_98();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v1, v74);
    OUTLINED_FUNCTION_115();
    *(v50 + 24) = v58;
    OUTLINED_FUNCTION_74(&dword_223515000, v75, v76, "Provider - %s [%s]: Open slow timer scheduled (%s).");
    OUTLINED_FUNCTION_86();
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
  }

  else
  {

    v64 = OUTLINED_FUNCTION_7_7();
    v65(v64);
  }

  type metadata accessor for OS_dispatch_source();
  v108[0] = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_13_2();
  lazy protocol witness table accessor for type NetworkConnectionProvider and conformance NetworkConnectionProvider(v77, 255, v78);
  v79 = OUTLINED_FUNCTION_79();
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(v79, v80);
  OUTLINED_FUNCTION_83();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](v82, v83, v84);
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_111();
  v85 = OUTLINED_FUNCTION_81();
  v86(v85);
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_7_1();
  v88 = swift_allocObject();
  OUTLINED_FUNCTION_77(v88);
  swift_weakInit();
  v108[4] = partial apply for specialized closure #1 in ConnectionProviderProtocol.setupOpenSlowTimer();
  v108[5] = &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMR;
  v108[0] = MEMORY[0x277D85DD0];
  OUTLINED_FUNCTION_32_1(COERCE_DOUBLE(1107296256));
  v108[2] = v89;
  v108[3] = &block_descriptor_295;
  _Block_copy(v108);
  OUTLINED_FUNCTION_104();

  default argument 0 of OS_dispatch_source.setEventHandler(qos:flags:handler:)(ObjectType);
  default argument 1 of OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_90_0();
  _Block_release(v81);
  (*(v102 + 8))(v100, v103);
  v90 = OUTLINED_FUNCTION_106();
  v91(v90);

  static DispatchTime.now()();
  DispatchTime.advanced(by:)();
  v92 = OUTLINED_FUNCTION_103_0();
  (_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMR)(v92);
  OUTLINED_FUNCTION_101();
  default argument 1 of OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)(v93);
  OUTLINED_FUNCTION_101();
  default argument 2 of OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)(v94);
  OUTLINED_FUNCTION_88();
  v95 = OUTLINED_FUNCTION_51();
  v105(v95);
  (v105)(v2, v3);
  (_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMR)(v104, v81);
  OS_dispatch_source.resume()();
  (v105)(v106, v3);
  v96 = v107[267].isa;
  v107[267].isa = v97;
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_47();
}

uint64_t specialized closure #1 in ConnectionProviderProtocol.setupOpenSlowTimer()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.siriNetwork);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v19 = v6;
      *v5 = 136315394;
      v7 = *v1;
      v8 = _typeName(_:qualified:)();
      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v19);

      *(v5 + 4) = v10;
      *(v5 + 12) = 2080;
      v11 = v1[2];
      v12 = v1[3];

      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v19);

      *(v5 + 14) = v13;
      _os_log_impl(&dword_223515000, v3, v4, "Provider - %s [%s]: Open slow timer fired.", v5, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DE38F0](v6, -1, -1);
      MEMORY[0x223DE38F0](v5, -1, -1);
    }

    specialized ConnectionProviderProtocol.cancelOpenSlowTimer()();
    v14 = v1[265];
    if (swift_unknownObjectWeakLoadStrong())
    {
      lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
      v15 = swift_allocError();
      *(v16 + 8) = 0;
      *(v16 + 16) = 0;
      *v16 = v14;
      *(v16 + 24) = xmmword_2235F0A70;
      v17 = v14;

      v18 = v14;
      specialized BackgroundConnection.connectionProvider(_:received:)();

      swift_unknownObjectRelease();
    }
  }

  return result;
}

{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.siriNetwork);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v19 = v6;
      *v5 = 136315394;
      v7 = *v1;
      v8 = _typeName(_:qualified:)();
      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v19);

      *(v5 + 4) = v10;
      *(v5 + 12) = 2080;
      v11 = NetworkConnectionProvider.connectionIdentifier.getter();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v19);

      *(v5 + 14) = v13;
      _os_log_impl(&dword_223515000, v3, v4, "Provider - %s [%s]: Open slow timer fired.", v5, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DE38F0](v6, -1, -1);
      MEMORY[0x223DE38F0](v5, -1, -1);
    }

    specialized ConnectionProviderProtocol.cancelOpenSlowTimer()();
    v14 = v1[263];
    if (swift_unknownObjectWeakLoadStrong())
    {
      lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
      v15 = swift_allocError();
      *(v16 + 8) = 0;
      *(v16 + 16) = 0;
      *v16 = v14;
      *(v16 + 24) = xmmword_2235F0A70;
      v17 = v14;

      v18 = v14;
      specialized BackgroundConnection.connectionProvider(_:received:)();

      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t specialized ConnectionProviderProtocol.setupConnectionUnviableTimer()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTime();
  v103 = *(v2 - 8);
  v104 = v2;
  v3 = *(v103 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v101 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v102 = &v83 - v6;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v99 = *(v7 - 8);
  v100 = v7;
  v8 = *(v99 + 64);
  MEMORY[0x28223BE20](v7);
  v97 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for DispatchQoS();
  v96 = *(v98 - 8);
  v10 = *(v96 + 64);
  MEMORY[0x28223BE20](v98);
  v95 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v93 = *(v12 - 8);
  v13 = *(v93 + 64);
  MEMORY[0x28223BE20](v12);
  v92 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v90 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v91 = &v83 - v19;
  v20 = type metadata accessor for DispatchTimeInterval();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v83 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v105 = &v83 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v83 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v83 - v31;
  Double.dispatchTimeInterval.getter((&v83 - v31), 2.0);
  if (one-time initialization token for siriNetwork != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, static Logger.siriNetwork);
  v34 = *(v21 + 16);
  v94 = v32;
  v34(v30, v32, v20);

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v86 = v36;
    v84 = v25;
    v87 = v35;
    v88 = v12;
    v37 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    aBlock[0] = v85;
    *v37 = 136315650;
    v38 = *v1;
    v39 = _typeName(_:qualified:)();
    v41 = v20;
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, aBlock);

    *(v37 + 4) = v42;
    *(v37 + 12) = 2080;
    v43 = v1;
    v44 = NetworkConnectionProvider.connectionIdentifier.getter();
    v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, aBlock);

    *(v37 + 14) = v46;
    v47 = v41;
    *(v37 + 22) = 2080;
    v48 = v91;
    v34(v91, v30, v41);
    __swift_storeEnumTagSinglePayload(v48, 0, 1, v41);
    v49 = v90;
    outlined init with copy of NetworkConnectionProtocol?(v48, v90, &_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
    if (__swift_getEnumTagSinglePayload(v49, 1, v41) == 1)
    {
      v50 = 0xE100000000000000;
      v51 = 45;
    }

    else
    {
      v54 = v105;
      (*(v21 + 32))(v105, v49, v47);
      v34(v84, v54, v47);
      v51 = String.init<A>(describing:)();
      v50 = v55;
      (*(v21 + 8))(v54, v47);
    }

    outlined destroy of NetworkConnectionProtocol?(v48, &_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
    v56 = *(v21 + 8);
    v90 = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v91 = v56;
    (v56)(v30, v47);
    v53 = v47;
    v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v50, aBlock);

    *(v37 + 24) = v57;
    v58 = v87;
    _os_log_impl(&dword_223515000, v87, v86, "Provider - %s [%s]: Unviable timer scheduled (%s).", v37, 0x20u);
    v59 = v85;
    swift_arrayDestroy();
    MEMORY[0x223DE38F0](v59, -1, -1);
    MEMORY[0x223DE38F0](v37, -1, -1);

    v1 = v43;
    v12 = v88;
  }

  else
  {

    v52 = *(v21 + 8);
    v90 = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v91 = v52;
    (v52)(v30, v20);
    v53 = v20;
  }

  specialized ConnectionProviderProtocol.cancelConnectionUnviableTimer()();
  type metadata accessor for OS_dispatch_source();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type NetworkConnectionProvider and conformance NetworkConnectionProvider(&lazy protocol witness table cache variable for type OS_dispatch_source.TimerFlags and conformance OS_dispatch_source.TimerFlags, 255, MEMORY[0x277D85278]);
  v60 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMd, &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_source.TimerFlags] and conformance [A], &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMd, &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMR);
  v61 = v92;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v62 = v60[257];
  v63 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
  (*(v93 + 8))(v61, v12);
  v89 = v60;
  v64 = NetworkConnectionProvider.connectionIdentifier.getter();
  v66 = v65;
  ObjectType = swift_getObjectType();
  v68 = swift_allocObject();
  swift_weakInit();
  v69 = swift_allocObject();
  v69[2] = v68;
  v69[3] = v64;
  v69[4] = v66;
  aBlock[4] = partial apply for specialized closure #1 in ConnectionProviderProtocol.setupConnectionUnviableTimer();
  aBlock[5] = v69;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_199;
  v70 = _Block_copy(aBlock);

  v71 = v95;
  default argument 0 of OS_dispatch_source.setEventHandler(qos:flags:handler:)(ObjectType);
  v72 = v97;
  default argument 1 of OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v70);
  (*(v99 + 8))(v72, v100);
  (*(v96 + 8))(v71, v98);

  v73 = v101;
  static DispatchTime.now()();
  v74 = v102;
  v75 = v94;
  DispatchTime.advanced(by:)();
  v76 = v104;
  v77 = *(v103 + 8);
  v77(v73, v104);
  v78 = v105;
  default argument 2 of OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)(v105);
  MEMORY[0x223DE2510](v74, v75, v78, ObjectType);
  v79 = v78;
  v80 = v91;
  (v91)(v79, v53);
  v77(v74, v76);
  OS_dispatch_source.resume()();
  v80(v75, v53);
  v81 = v89[267];
  v89[267] = v63;
  return swift_unknownObjectRelease();
}

uint64_t specialized closure #1 in ConnectionProviderProtocol.setupConnectionUnviableTimer()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    specialized ConnectionProviderProtocol.cancelConnectionUnviableTimer()();
    swift_beginAccess();
    outlined init with copy of NetworkConnectionProtocol?(v6 + 16, v13, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
    v7 = v14;
    outlined destroy of NetworkConnectionProtocol?(v13, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
    if (v7)
    {
      if (NetworkConnectionProvider.connectionIdentifier.getter() == a2 && v8 == a3)
      {
      }

      else
      {
        v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v10 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
      v11 = swift_allocError();
      *(v12 + 8) = 0;
      *(v12 + 16) = 0;
      *v12 = 0;
      *(v12 + 24) = xmmword_2235F0A80;
      NetworkConnectionProvider.closeWithError(_:)();
    }

LABEL_11:
    *(v6 + 2088) = 0;
  }

  return result;
}

void specialized ConnectionProviderProtocol.setupStaleConnectionTimer()()
{
  OUTLINED_FUNCTION_46();
  v4 = v0;
  v5 = type metadata accessor for DispatchTime();
  v6 = OUTLINED_FUNCTION_0_0(v5);
  v132 = v7;
  v133 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v131 = v10;
  OUTLINED_FUNCTION_26_2();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_35_0();
  v130 = v12;
  OUTLINED_FUNCTION_31();
  v129 = type metadata accessor for DispatchWorkItemFlags();
  v13 = OUTLINED_FUNCTION_0_0(v129);
  v127 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_0_1();
  v125 = v18 - v17;
  OUTLINED_FUNCTION_31();
  v128 = type metadata accessor for DispatchQoS();
  v19 = OUTLINED_FUNCTION_0_0(v128);
  v126 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_56();
  v23 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v24 = OUTLINED_FUNCTION_0_0(v23);
  v123 = v25;
  v124 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_0_1();
  v122 = v29 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
  v31 = OUTLINED_FUNCTION_11_1(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_14_2();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_35_0();
  v118 = v35;
  OUTLINED_FUNCTION_31();
  v36 = type metadata accessor for DispatchTimeInterval();
  v37 = OUTLINED_FUNCTION_0_0(v36);
  v136 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v41);
  v134 = (v113 - v42);
  OUTLINED_FUNCTION_26_2();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v44);
  v46 = v113 - v45;
  Double.dispatchTimeInterval.getter((v113 - v45), *(v0 + 1696));
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v47 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_58(v47, static Logger.siriNetwork);
  v48 = v136[2];
  (v48)(v2, v46, v36);

  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();

  LODWORD(v119) = v50;
  v51 = os_log_type_enabled(v49, v50);
  v135 = v36;
  if (v51)
  {
    v113[1] = v3;
    v115 = v49;
    v116 = v46;
    v117 = v1;
    OUTLINED_FUNCTION_4_3();
    v52 = swift_slowAlloc();
    v114 = OUTLINED_FUNCTION_116();
    v137[0] = v114;
    *v52 = 136315650;
    v53 = *v4;
    v54 = _typeName(_:qualified:)();
    v55 = v4;
    v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v56, v137);

    *(v52 + 4) = v57;
    *(v52 + 12) = 2080;
    v58 = v4[2];
    v59 = v55[3];
    v60 = v55;

    v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v59, v137);
    v62 = v135;

    *(v52 + 14) = v61;
    *(v52 + 22) = 2080;
    v63 = v118;
    (v48)(v118, v2, v62);
    OUTLINED_FUNCTION_9_0();
    __swift_storeEnumTagSinglePayload(v64, v65, v66, v62);
    v67 = v121;
    outlined init with copy of NetworkConnectionProtocol?(v63, v121, &_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
    if (__swift_getEnumTagSinglePayload(v67, 1, v62) == 1)
    {
      v68 = 0xE100000000000000;
      v69 = 45;
    }

    else
    {
      v71 = v136;
      v72 = v136[4];
      OUTLINED_FUNCTION_30_1();
      v73();
      OUTLINED_FUNCTION_83();
      v48();
      v69 = String.init<A>(describing:)();
      v68 = v74;
      v75 = v71[1];
      v76 = OUTLINED_FUNCTION_79();
      v77(v76);
    }

    outlined destroy of NetworkConnectionProtocol?(v63, &_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
    v70 = v136[1];
    v70(v2, v62);
    v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v68, v137);

    *(v52 + 24) = v78;
    v79 = v115;
    _os_log_impl(&dword_223515000, v115, v119, "Provider - %s [%s]: Stale connection timer scheduled (%s).", v52, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();

    v4 = v60;
    v1 = v117;
    v46 = v116;
  }

  else
  {

    v70 = v136[1];
    v70(v2, v36);
  }

  OUTLINED_FUNCTION_7_1();
  v80 = swift_allocObject();
  v81 = v4[262];
  v82 = __CFADD__(v81, 1);
  v83 = v81 + 1;
  if (v82)
  {
    __break(1u);
  }

  else
  {
    *(v80 + 16) = v83;
    v121 = v70;
    v84 = v80;
    specialized ConnectionProviderProtocol.cancelStaleConnectionTimer()();
    type metadata accessor for OS_dispatch_source();
    v137[0] = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_13_2();
    lazy protocol witness table accessor for type NetworkConnectionProvider and conformance NetworkConnectionProvider(v85, 255, v86);
    v87 = v1;
    v88 = OUTLINED_FUNCTION_79();
    __swift_instantiateConcreteTypeFromMangledNameV2(v88, v89);
    OUTLINED_FUNCTION_83();
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](v90, v91, v92);
    v93 = v122;
    v94 = v124;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v120 = v4;
    v95 = v4[259];
    v96 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
    (*(v123 + 8))(v93, v94);
    ObjectType = swift_getObjectType();
    OUTLINED_FUNCTION_7_1();
    v98 = swift_allocObject();
    OUTLINED_FUNCTION_77(v98);
    swift_weakInit();
    v99 = swift_allocObject();
    *(v99 + 16) = v94;
    *(v99 + 24) = v84;
    v119 = v84;
    v137[4] = partial apply for specialized closure #1 in ConnectionProviderProtocol.setupStaleConnectionTimer();
    v137[5] = v99;
    v137[0] = MEMORY[0x277D85DD0];
    v137[1] = 1107296256;
    v137[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v137[3] = &block_descriptor_283;
    v100 = _Block_copy(v137);

    default argument 0 of OS_dispatch_source.setEventHandler(qos:flags:handler:)(ObjectType);
    v101 = v125;
    default argument 1 of OS_dispatch_source.setEventHandler(qos:flags:handler:)();
    OS_dispatch_source.setEventHandler(qos:flags:handler:)();
    _Block_release(v100);
    v102 = v46;
    (*(v127 + 8))(v101, v129);
    (*(v126 + 8))(v87, v128);

    v103 = v131;
    static DispatchTime.now()();
    v104 = v130;
    DispatchTime.advanced(by:)();
    v105 = v133;
    v106 = *(v132 + 8);
    v106(v103, v133);
    v107 = v134;
    default argument 2 of OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)(v134);
    v108 = v96;
    MEMORY[0x223DE2510](v104, v102, v107, ObjectType);
    v109 = v107;
    v110 = v135;
    v111 = v121;
    v121(v109, v135);
    v106(v104, v105);
    OS_dispatch_source.resume()();
    v111(v102, v110);
    v112 = v120[268];
    v120[268] = v108;

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_47();
  }
}

uint64_t specialized closure #1 in ConnectionProviderProtocol.setupStaleConnectionTimer()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    v5 = *(a2 + 16);
    v6 = v4[262];
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.siriNetwork);
    swift_retain_n();
    swift_retain_n();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = v5 == v6;
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v25[0] = v12;
      *v11 = 136316162;
      v13 = *v4;
      v14 = _typeName(_:qualified:)();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v25);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2080;
      v17 = v4[2];
      v18 = v4[3];

      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v25);

      *(v11 + 14) = v19;
      *(v11 + 22) = 1024;
      *(v11 + 24) = v10;
      *(v11 + 28) = 2048;
      swift_beginAccess();
      v20 = *(a2 + 16);

      *(v11 + 30) = v20;

      *(v11 + 38) = 2048;
      v21 = v4[262];

      *(v11 + 40) = v21;

      _os_log_impl(&dword_223515000, v8, v9, "Provider - %s [%s]: Stale connection timer check. Connection in stale %{BOOL}d. Last read/write counter value %lu, current %lu", v11, 0x30u);
      swift_arrayDestroy();
      MEMORY[0x223DE38F0](v12, -1, -1);
      MEMORY[0x223DE38F0](v11, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();
    v22 = v4[262];
    if (*(a2 + 16) == v22)
    {
      specialized ConnectionProviderProtocol.cancelStaleConnectionTimer()();
      if (swift_unknownObjectWeakLoadStrong())
      {
        lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
        v23 = swift_allocError();
        *(v24 + 8) = 0;
        *(v24 + 16) = 0;
        *v24 = 7;
        *(v24 + 24) = xmmword_2235F01E0;

        specialized BackgroundConnection.connectionProvider(_:received:)();

        swift_unknownObjectRelease();
      }
    }

    else
    {

      result = swift_beginAccess();
      *(a2 + 16) = v22;
    }
  }

  return result;
}

{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    v5 = *(a2 + 16);
    v6 = v4[260];
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.siriNetwork);
    swift_retain_n();
    swift_retain_n();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = v5 == v6;
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v25[0] = v12;
      *v11 = 136316162;
      v13 = *v4;
      v14 = _typeName(_:qualified:)();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v25);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2080;
      v17 = NetworkConnectionProvider.connectionIdentifier.getter();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v25);

      *(v11 + 14) = v19;
      *(v11 + 22) = 1024;
      *(v11 + 24) = v10;
      *(v11 + 28) = 2048;
      swift_beginAccess();
      v20 = *(a2 + 16);

      *(v11 + 30) = v20;

      *(v11 + 38) = 2048;
      v21 = v4[260];

      *(v11 + 40) = v21;

      _os_log_impl(&dword_223515000, v8, v9, "Provider - %s [%s]: Stale connection timer check. Connection in stale %{BOOL}d. Last read/write counter value %lu, current %lu", v11, 0x30u);
      swift_arrayDestroy();
      MEMORY[0x223DE38F0](v12, -1, -1);
      MEMORY[0x223DE38F0](v11, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();
    v22 = v4[260];
    if (*(a2 + 16) == v22)
    {
      specialized ConnectionProviderProtocol.cancelStaleConnectionTimer()();
      if (swift_unknownObjectWeakLoadStrong())
      {
        lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
        v23 = swift_allocError();
        *(v24 + 8) = 0;
        *(v24 + 16) = 0;
        *v24 = 7;
        *(v24 + 24) = xmmword_2235F01E0;

        specialized BackgroundConnection.connectionProvider(_:received:)();

        swift_unknownObjectRelease();
      }
    }

    else
    {

      result = swift_beginAccess();
      *(a2 + 16) = v22;
    }
  }

  return result;
}

void specialized ConnectionProviderProtocol.hash(into:)(void *a1)
{
  memcpy(__dst, (v1 + 1552), sizeof(__dst));
  ConnectionConfiguration.hash(into:)(a1);
}

{
  memcpy(__dst, (v1 + 1536), sizeof(__dst));
  ConnectionConfiguration.hash(into:)(a1);
}

uint64_t specialized NetworkConnectionProtocol.tcpInfoMetrics(wasConnected:queue:deadline:_:)(char a1, void *a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v6 = v5;
  v32 = a3;
  v11 = *v6;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v12 - 8);
  v13 = *(v31 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40[3] = v11;
  v40[4] = &protocol witness table for NWConnection;
  v40[0] = v6;
  if ((a1 & 1) == 0)
  {

    goto LABEL_6;
  }

  v30 = v18;
  outlined init with copy of NetworkConnectionProtocol?(v40, &aBlock, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
  if (!v36)
  {

    outlined destroy of NetworkConnectionProtocol?(&aBlock, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
    if (!a4)
    {
      return outlined destroy of NetworkConnectionProtocol?(v40, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
    }

    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork0B18ConnectionProtocol_pMd, _s11SiriNetwork0B18ConnectionProtocol_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    if (!a4)
    {
      return outlined destroy of NetworkConnectionProtocol?(v40, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
    }

LABEL_7:
    a4(MEMORY[0x277D84F90]);
    return outlined destroy of NetworkConnectionProtocol?(v40, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
  }

  v21 = v39;
  v22 = swift_allocObject();
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  *(v23 + 24) = 1;
  *(v23 + 32) = a4;
  *(v23 + 40) = a5;
  *(v22 + 16) = partial apply for closure #1 in static ConnectionTCPInfoMetrics.connectionTCPInfoMetrics(from:wasConnected:queue:deadline:_:);
  *(v22 + 24) = v23;
  v29[1] = v21;

  v24 = outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(a4);
  MEMORY[0x223DE1A50](v24);
  v25 = swift_allocObject();
  *(v25 + 16) = a2;
  *(v25 + 24) = v22;
  v37 = partial apply for closure #2 in static ConnectionTCPInfoMetrics.connectionTCPInfoMetrics(from:wasConnected:queue:deadline:_:);
  v38 = v25;
  aBlock = MEMORY[0x277D85DD0];
  v34 = 1107296256;
  v35 = thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_object?) -> ();
  v36 = &block_descriptor_5;
  v26 = _Block_copy(&aBlock);
  v29[0] = a2;

  nw_connection_copy_tcp_info_async();
  _Block_release(v26);
  swift_unknownObjectRelease();
  v37 = partial apply for closure #3 in static ConnectionTCPInfoMetrics.connectionTCPInfoMetrics(from:wasConnected:queue:deadline:_:);
  v38 = v22;
  aBlock = MEMORY[0x277D85DD0];
  v34 = 1107296256;
  v35 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v36 = &block_descriptor_161;
  v27 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  v39 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type NetworkConnectionProvider and conformance NetworkConnectionProvider(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x223DE2440](v32, v20, v15, v27);
  _Block_release(v27);

  (*(v31 + 8))(v15, v12);
  (*(v30 + 8))(v20, v16);

  return outlined destroy of NetworkConnectionProtocol?(v40, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
}

void closure #1 in NetworkConnectionProvider.configureConnectionHandler(_:)()
{
  OUTLINED_FUNCTION_46();
  v35 = v2;
  v36 = v3;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = OUTLINED_FUNCTION_0_0(v4);
  v38 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_56();
  v9 = type metadata accessor for DispatchQoS();
  v10 = OUTLINED_FUNCTION_0_0(v9);
  v37 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_1();
  v16 = v15 - v14;
  v17 = type metadata accessor for DispatchTime();
  v18 = OUTLINED_FUNCTION_0_0(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_35_0();
  v25 = v24;
  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v33 = *(Strong + 2056);

    static DispatchTime.now()();
    v32 = v25;
    + infix(_:_:)();
    v34 = *(v20 + 8);
    v34(v1, v17);
    OUTLINED_FUNCTION_7_1();
    v27 = swift_allocObject();
    OUTLINED_FUNCTION_8();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v39[4] = v35;
    v39[5] = v27;
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 1107296256;
    OUTLINED_FUNCTION_3_5();
    v39[2] = v28;
    v39[3] = v36;
    v29 = _Block_copy(v39);

    static DispatchQoS.unspecified.getter();
    OUTLINED_FUNCTION_1_8();
    lazy protocol witness table accessor for type NetworkConnectionProvider and conformance NetworkConnectionProvider(v30, 255, v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x223DE2440](v32, v16, v0, v29);
    _Block_release(v29);

    (*(v38 + 8))(v0, v4);
    (*(v37 + 8))(v16, v9);
    v34(v32, v17);
  }

  OUTLINED_FUNCTION_47();
}

uint64_t closure #1 in closure #1 in NetworkConnectionProvider.configureConnectionHandler(_:)(uint64_t a1, const char *a2)
{
  OUTLINED_FUNCTION_77(a1);
  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v4, static Logger.siriNetwork);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      OUTLINED_FUNCTION_6_5();
      v7 = swift_slowAlloc();
      OUTLINED_FUNCTION_4_3();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136315138;
      OUTLINED_FUNCTION_8();
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        NetworkConnectionProvider.connectionIdentifier.getter();

        Strong = String.init<A>(describing:)();
        v11 = v10;
      }

      else
      {
        v11 = 0xE000000000000000;
      }

      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(Strong, v11, &v13);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_223515000, v5, v6, a2, v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      OUTLINED_FUNCTION_2_2();
      MEMORY[0x223DE38F0]();
      OUTLINED_FUNCTION_2_2();
      MEMORY[0x223DE38F0]();
    }

    NetworkConnectionProvider.closeWithError(_:)();
  }

  return result;
}

void closure #2 in NetworkConnectionProvider.closeWithError(_:)(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_beginAccess();
    memcpy(__dst, (v3 + 624), sizeof(__dst));
    memmove(v19, (v3 + 624), 0x2C8uLL);
    if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v19) == 1)
    {
    }

    else
    {
      memcpy(v16, __dst, sizeof(v16));
      outlined init with copy of ConnectionSnapshotReport(v16, v15);
      if (one-time initialization token for siriNetwork != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      __swift_project_value_buffer(v4, static Logger.siriNetwork);
      memcpy(v17, __dst, sizeof(v17));
      outlined init with copy of ConnectionSnapshotReport(v17, v15);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();
      outlined destroy of NetworkConnectionProtocol?(__dst, &_s11SiriNetwork24ConnectionSnapshotReportVSgMd, &_s11SiriNetwork24ConnectionSnapshotReportVSgMR);
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v14 = v8;
        *v7 = 136315138;
        memcpy(v13, v19, sizeof(v13));
        memcpy(v15, __dst, sizeof(v15));
        outlined init with copy of ConnectionSnapshotReport(v15, &v12);
        v9 = String.init<A>(describing:)();
        v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v14);

        *(v7 + 4) = v11;
        _os_log_impl(&dword_223515000, v5, v6, "%s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v8);
        MEMORY[0x223DE38F0](v8, -1, -1);
        MEMORY[0x223DE38F0](v7, -1, -1);
        outlined destroy of NetworkConnectionProtocol?(__dst, &_s11SiriNetwork24ConnectionSnapshotReportVSgMd, &_s11SiriNetwork24ConnectionSnapshotReportVSgMR);
      }

      else
      {

        outlined destroy of NetworkConnectionProtocol?(__dst, &_s11SiriNetwork24ConnectionSnapshotReportVSgMd, &_s11SiriNetwork24ConnectionSnapshotReportVSgMR);
      }
    }
  }

  dispatch_group_leave(v1);
}

uint64_t closure #4 in NetworkConnectionProvider.closeWithError(_:)(uint64_t a1, void *a2, void (*a3)(void))
{
  v6 = type metadata accessor for NWConnection.SendCompletion();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *v10 = partial apply for closure #1 in closure #4 in NetworkConnectionProvider.closeWithError(_:);
  v10[1] = v11;
  (*(v7 + 104))(v10, *MEMORY[0x277CD8DB0], v6);
  outlined init with copy of RPCOspreyConnectionProtocol(a2, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork0B18ConnectionProtocol_pMd, _s11SiriNetwork0B18ConnectionProtocol_pMR);
  type metadata accessor for NWConnection();
  if (swift_dynamicCast())
  {
    MEMORY[0x223DE1A50]();
    nw_connection_set_read_close_handler();
    v12 = swift_unknownObjectRelease();
    MEMORY[0x223DE1A50](v12);
    nw_connection_set_write_close_handler();

    swift_unknownObjectRelease();
  }

  v13 = __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for NWConnection.ContentContext();
  static NWConnection.ContentContext.defaultMessage.getter();
  v14 = *v13;
  NWConnection.send(content:contentContext:isComplete:completion:)();

  v15 = *__swift_project_boxed_opaque_existential_1(a2, a2[3]);
  NWConnection.cancel()();
  a3();
  return (*(v7 + 8))(v10, v6);
}

void closure #1 in closure #4 in NetworkConnectionProvider.closeWithError(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  if (one-time initialization token for siriNetwork != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.siriNetwork);
  outlined init with copy of NetworkConnectionProtocol?(a1, v10, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 134218242;
    *(v14 + 4) = a2;
    *(v14 + 12) = 2112;
    outlined init with copy of NetworkConnectionProtocol?(v10, v8, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
    v16 = type metadata accessor for NWError();
    if (__swift_getEnumTagSinglePayload(v8, 1, v16) == 1)
    {
      outlined destroy of NetworkConnectionProtocol?(v8, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
      outlined destroy of NetworkConnectionProtocol?(v10, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
      v17 = 0;
    }

    else
    {
      lazy protocol witness table accessor for type NetworkConnectionProvider and conformance NetworkConnectionProvider(&lazy protocol witness table cache variable for type NWError and conformance NWError, 255, MEMORY[0x277CD8FC0]);
      swift_allocError();
      (*(*(v16 - 8) + 32))(v18, v8, v16);
      v17 = _swift_stdlib_bridgeErrorToNSError();
      outlined destroy of NetworkConnectionProtocol?(v10, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
    }

    *(v14 + 14) = v17;
    *v15 = v17;
    _os_log_impl(&dword_223515000, v12, v13, "Provider - NetworkConnectionProvider [%llu]: Close. Nil content sent to close connection. Start cancelling connection. Close error %@", v14, 0x16u);
    outlined destroy of NetworkConnectionProtocol?(v15, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x223DE38F0](v15, -1, -1);
    MEMORY[0x223DE38F0](v14, -1, -1);
  }

  else
  {

    outlined destroy of NetworkConnectionProtocol?(v10, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  }
}

void NetworkConnectionProvider.handleBetterPathUpdate(_:)()
{
  OUTLINED_FUNCTION_46();
  v3 = v2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = OUTLINED_FUNCTION_0_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_1();
  v8 = OUTLINED_FUNCTION_8_1();
  v9 = OUTLINED_FUNCTION_0_0(v8);
  v37 = v10;
  v38 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_56();
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_58(v13, static Logger.siriNetwork);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    OUTLINED_FUNCTION_6_5();
    v16 = swift_slowAlloc();
    OUTLINED_FUNCTION_4_3();
    v36 = swift_slowAlloc();
    v39[0] = v36;
    *v16 = 136315138;
    v17 = NetworkConnectionProvider.connectionIdentifier.getter();
    v19 = v3;
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v39);

    *(v16 + 4) = v20;
    v3 = v19;
    _os_log_impl(&dword_223515000, v14, v15, "Provider - NetworkConnectionProvider [%s]: handle better path update", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
  }

  v21 = *(v0 + 2056);
  OUTLINED_FUNCTION_7_1();
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  *(v23 + 24) = v3 & 1;
  v39[4] = partial apply for closure #1 in NetworkConnectionProvider.handleBetterPathUpdate(_:);
  v39[5] = v23;
  OUTLINED_FUNCTION_1_1();
  v39[1] = 1107296256;
  OUTLINED_FUNCTION_3_5();
  v39[2] = v24;
  v39[3] = &block_descriptor_183;
  v25 = _Block_copy(v39);

  static DispatchQoS.unspecified.getter();
  OUTLINED_FUNCTION_1_8();
  lazy protocol witness table accessor for type NetworkConnectionProvider and conformance NetworkConnectionProvider(v26, 255, v27);
  v28 = OUTLINED_FUNCTION_80();
  __swift_instantiateConcreteTypeFromMangledNameV2(v28, v29);
  OUTLINED_FUNCTION_45();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](v30, v31, v32);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_64();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v33 = OUTLINED_FUNCTION_6();
  MEMORY[0x223DE2460](v33);
  _Block_release(v25);
  v34 = OUTLINED_FUNCTION_16_1();
  v35(v34);
  (*(v37 + 8))(v1, v38);

  OUTLINED_FUNCTION_47();
}

void closure #1 in NetworkConnectionProvider.handleBetterPathUpdate(_:)(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v4 = Strong;
  if (one-time initialization token for siriNetwork != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.siriNetwork);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v38[0] = v9;
    *v8 = 136315394;
    v10 = NetworkConnectionProvider.connectionIdentifier.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v38);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    if (a2)
    {
      v13 = 5457241;
    }

    else
    {
      v13 = 20302;
    }

    if (a2)
    {
      v14 = 0xE300000000000000;
    }

    else
    {
      v14 = 0xE200000000000000;
    }

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v38);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_223515000, v6, v7, "Provider - NetworkConnectionProvider [%s]: Better path available updated to: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE38F0](v9, -1, -1);
    MEMORY[0x223DE38F0](v8, -1, -1);
  }

  swift_beginAccess();
  outlined init with copy of NetworkConnectionProtocol?(v4 + 16, v38, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
  v16 = v38[3];
  outlined destroy of NetworkConnectionProtocol?(v38, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
  if (!v16 || (*(v4 + 2099) & 1) != 0)
  {

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v38[0] = v20;
      *v19 = 136315138;
      v21 = NetworkConnectionProvider.connectionIdentifier.getter();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v38);

      *(v19 + 4) = v23;
      v24 = "Provider - NetworkConnectionProvider [%s]: Better path available updated, but connection does not exist or cancelled";
LABEL_24:
      _os_log_impl(&dword_223515000, v17, v18, v24, v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x223DE38F0](v20, -1, -1);
      MEMORY[0x223DE38F0](v19, -1, -1);
      goto LABEL_25;
    }

    goto LABEL_25;
  }

  v25 = swift_unknownObjectWeakLoadStrong();
  if (!v25)
  {
LABEL_22:

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v38[0] = v20;
      *v19 = 136315138;
      v35 = NetworkConnectionProvider.connectionIdentifier.getter();
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, v38);

      *(v19 + 4) = v37;
      v24 = "Provider - NetworkConnectionProvider [%s]: Better path available updated to NO";
      goto LABEL_24;
    }

LABEL_25:

    return;
  }

  v26 = v25;
  if ((a2 & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_22;
  }

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v38[0] = v30;
    *v29 = 136315138;
    v31 = NetworkConnectionProvider.connectionIdentifier.getter();
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, v38);

    *(v29 + 4) = v33;
    _os_log_impl(&dword_223515000, v27, v28, "Provider - NetworkConnectionProvider [%s]: Better path available updated to YES", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x223DE38F0](v30, -1, -1);
    MEMORY[0x223DE38F0](v29, -1, -1);
  }

  specialized BackgroundConnection.connectionProviderReceivedBetterRouteNotification(_:)(v34, v26);
  swift_unknownObjectRelease();
}

void NetworkConnectionProvider.updateConnectionMetricsSnapthotReport(_:)()
{
  OUTLINED_FUNCTION_46();
  v3 = MEMORY[0x28223BE20](v2);
  v4 = v0;
  v6 = v5;
  v7 = v3;
  v8 = type metadata accessor for DispatchTime();
  v9 = OUTLINED_FUNCTION_0_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - v15;
  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  outlined init with copy of NetworkConnectionProtocol?(v0 + 16, v49, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
  if (*(&v49[1] + 1))
  {
    outlined init with take of RPCOspreyConnectionProtocol(v49, v47);
    OUTLINED_FUNCTION_95();
    memcpy(v49, (v0 + 56), 0x599uLL);
    v17 = *(*&v49[80] + 16);
    v42 = v6;
    if (v17)
    {
      outlined init with copy of ConnectionMetrics(v49, v46);
    }

    else
    {
      v19 = *__swift_project_boxed_opaque_existential_1(v47, v48);
      outlined init with copy of ConnectionMetrics(v49, v46);
      v20 = NWConnection.getAttemptedEndpoints()();
      v21 = *(v4 + 1336);
      *(v4 + 1336) = v20;
    }

    v22 = __swift_project_boxed_opaque_existential_1(v47, v48);
    v23 = *(v4 + 2101);
    v24._rawValue = *(v4 + 1336);
    v25 = *v22;

    v26 = NWConnection.getConnectionEdgeID(wasConnected:attemptedEndpoints:)(v23, v24);

    v27 = *(v4 + 1352);
    *(v4 + 1344) = v26;

    memcpy(v44, (v4 + 1536), 0x204uLL);
    memcpy(v46, (v4 + 1536), 0x204uLL);
    LOBYTE(v25) = *(v4 + 2100);
    outlined init with copy of ConnectionConfiguration(v44, v45);
    v28 = ConnectionMethod.connectionMethodDescription(connectionConfiguration:isMPTCP:)(v46, v25, 1);
    v38 = v29;
    v39 = v28;
    memcpy(v45, v46, 0x204uLL);
    outlined destroy of ConnectionConfiguration(v45);
    v30 = __swift_project_boxed_opaque_existential_1(v47, v48);
    v41 = *(v4 + 2101);
    v40 = *(v4 + 2056);
    static DispatchTime.now()();
    v31 = v16;
    + infix(_:_:)();
    v32 = *(v11 + 8);
    v32(v1, v8);
    OUTLINED_FUNCTION_7_1();
    v33 = swift_allocObject();
    swift_weakInit();
    outlined init with copy of RPCOspreyConnectionProtocol(v47, v43);
    v34 = swift_allocObject();
    v35 = v42;
    v34[2] = v7;
    v34[3] = v35;
    v34[4] = v33;
    outlined init with take of RPCOspreyConnectionProtocol(v43, (v34 + 5));
    v36 = v38;
    v34[10] = v39;
    v34[11] = v36;
    memcpy(v34 + 12, v49, 0x599uLL);
    v37 = *v30;
    outlined init with copy of ConnectionMetrics(v49, v46);
    outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(v7);

    specialized NetworkConnectionProtocol.tcpInfoMetrics(wasConnected:queue:deadline:_:)(v41, v40, v31, partial apply for closure #1 in NetworkConnectionProvider.updateConnectionMetricsSnapthotReport(_:), v34);

    outlined destroy of ConnectionMetrics(v49);
    v32(v31, v8);

    __swift_destroy_boxed_opaque_existential_0(v47);
  }

  else
  {
    v18 = outlined destroy of NetworkConnectionProtocol?(v49, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
    if (v7)
    {
      v7(v18);
    }
  }

  OUTLINED_FUNCTION_47();
}

uint64_t closure #1 in NetworkConnectionProvider.updateConnectionMetricsSnapthotReport(_:)(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    if (!v11)
    {
      return result;
    }

    return v11();
  }

  v14 = result;
  _s11SiriNetwork010ConnectionB6ReportVSgWOi0_(__src);
  memcpy(__dst, __src, sizeof(__dst));
  v42[0] = 1;
  _s11SiriNetwork25ConnectionInterfaceReportVSgWOi0_(v46);
  memcpy(&v43[7], v46, 0x121uLL);
  if (one-time initialization token for sharedNetworkAnalytics != -1)
  {
    swift_once();
  }

  v15 = static NetworkAnalytics.sharedNetworkAnalytics;
  LODWORD(v47[0]) = 0;
  v47[1] = 0;
  v47[2] = 0xE000000000000000;
  v47[3] = 0;
  v47[4] = 0xE000000000000000;
  memcpy(&v47[5], __dst, 0x139uLL);
  v47[46] = 0;
  v47[45] = 0;
  LOBYTE(v47[47]) = v42[0];
  memcpy(&v47[47] + 1, v43, 0x128uLL);
  v47[85] = MEMORY[0x277D84F90];
  v47[86] = MEMORY[0x277D84F90];
  LODWORD(v47[87]) = 4;
  v47[88] = static NetworkAnalytics.sharedNetworkAnalytics;
  destructiveProjectEnumData for ConnectionConfigurationError(v47);
  swift_beginAccess();
  memcpy(v48, (v14 + 624), sizeof(v48));
  memcpy((v14 + 624), v47, 0x2C8uLL);
  v16 = v15;
  outlined destroy of NetworkConnectionProtocol?(v48, &_s11SiriNetwork24ConnectionSnapshotReportVSgMd, &_s11SiriNetwork24ConnectionSnapshotReportVSgMR);
  v17 = NetworkConnectionProvider.connectionMetrics.modify();
  v19 = v18;
  memmove(v49, (v18 + 568), 0x2C8uLL);
  if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v49) != 1)
  {
    outlined init with copy of RPCOspreyConnectionProtocol(v9, v42);
    v20 = *(v14 + 2101);
    *(v19 + 568) = *(*(v14 + 2144) + OBJC_IVAR___SNNetworkAnalyticsInternal_sequenceNumber);
    v21 = *(v19 + 584);
    *(v19 + 576) = 0xD000000000000017;
    *(v19 + 584) = 0x80000002235F7560;

    v22 = *(v19 + 600);
    *(v19 + 592) = 0x6574736575716572;
    *(v19 + 600) = 0xEA0000000000646ELL;

    v23 = *(v19 + 1256);
    *(v19 + 1256) = v12;

    ConnectionSnapshotReport.updateTCPInfoMetrics(connection:wasConnected:connectionMethod:)(v42, v20, v7, v5);
    outlined destroy of NetworkConnectionProtocol?(v42, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
  }

  (v17)(v41, 0);
  v24 = NetworkConnectionProvider.connectionMetrics.modify();
  v26 = v25;
  memmove(v42, v25 + 71, 0x2C8uLL);
  if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v42) != 1)
  {
    memcpy(v41, v26 + 76, 0x139uLL);
    if (_s11SiriNetwork010ConnectionB6ReportVSgWOg(v41) != 1)
    {
      v27 = *(v14 + 1496);
      if (v27)
      {
        v28 = (v27 + OBJC_IVAR___SNNetworkManagerInternal_carrierName);
        v30 = *v28;
        v29 = v28[1];
      }

      else
      {
        v30 = 0;
        v31 = 0;
      }

      v32 = v26[78];
      v26[77] = v30;
      v26[78] = v31;
    }
  }

  (v24)(v39, 0);
  v33 = *(v14 + 1496);
  if (v33)
  {
    v34 = v33 + OBJC_IVAR___SNNetworkManagerInternal_lastSignalStrength;
    if ((*(v34 + 8) & 1) == 0)
    {
      v35 = *v34;
      v36 = NetworkConnectionProvider.connectionMetrics.modify();
      v38 = v37;
      memmove(v41, (v37 + 568), 0x2C8uLL);
      if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v41) != 1)
      {
        memcpy(v39, (v38 + 608), 0x139uLL);
        if (_s11SiriNetwork010ConnectionB6ReportVSgWOg(v39) != 1)
        {
          *(v38 + 632) = v35;
          *(v38 + 640) = 0;
        }
      }

      (v36)(v40, 0);
    }
  }

  specialized ConnectionProviderProtocol.updateConnectionMetrics(with:completion:)(v3);

  if (v11)
  {
    return v11();
  }

  return result;
}

Swift::Int NetworkConnectionProvider.hashValue.getter()
{
  Hasher.init(_seed:)();
  specialized ConnectionProviderProtocol.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for ConnectionProviderProtocol.delegate.getter in conformance NetworkConnectionProvider()
{
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 1512);
  return result;
}

uint64_t protocol witness for ConnectionProviderProtocol.connectionConfiguration.getter in conformance NetworkConnectionProvider@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 1536), 0x204uLL);
  memcpy(a1, (v1 + 1536), 0x204uLL);
  return outlined init with copy of ConnectionConfiguration(__dst, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NetworkConnectionProvider(void *a1, uint64_t a2)
{
  v5 = *v2;
  WitnessTable = swift_getWitnessTable();
  return ConnectionProviderProtocol.hash(into:)(a1, a2, WitnessTable);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NetworkConnectionProvider(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  v4 = *v2;
  WitnessTable = swift_getWitnessTable();
  ConnectionProviderProtocol.hash(into:)(v7, a2, WitnessTable);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NetworkConnectionProvider(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return static ConnectionProviderProtocol.== infix(_:_:)(v4, v5, a3, WitnessTable);
}

uint64_t instantiation function for generic protocol witness table for NetworkConnectionProvider(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type NetworkConnectionProvider and conformance NetworkConnectionProvider(&lazy protocol witness table cache variable for type NetworkConnectionProvider and conformance NetworkConnectionProvider, a2, type metadata accessor for NetworkConnectionProvider);
  *(a1 + 8) = result;
  return result;
}

uint64_t partial apply for closure #1 in NetworkConnectionProvider.updateConnectionMetricsSnapthotReport(_:)(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[10];
  v6 = v1[11];
  return closure #1 in NetworkConnectionProvider.updateConnectionMetricsSnapthotReport(_:)(a1);
}

void partial apply for closure #2 in static ConnectionTCPInfoMetrics.connectionTCPInfoMetrics(from:wasConnected:queue:deadline:_:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  closure #2 in static ConnectionTCPInfoMetrics.connectionTCPInfoMetrics(from:wasConnected:queue:deadline:_:)();
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_object?) -> ()(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void specialized BackgroundConnection.connectionProvider(_:received:)()
{
  specialized BackgroundConnection.connectionProvider(_:received:)();
}

{
  OUTLINED_FUNCTION_46();
  v32 = v4;
  v33 = v5;
  v6 = OUTLINED_FUNCTION_92();
  v7 = OUTLINED_FUNCTION_0_0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_1();
  v35 = OUTLINED_FUNCTION_8_1();
  v10 = OUTLINED_FUNCTION_0_0(v35);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_56();
  v16 = lazy protocol witness table accessor for type NetworkConnectionProvider and conformance NetworkConnectionProvider(&lazy protocol witness table cache variable for type NetworkConnectionProvider and conformance NetworkConnectionProvider, v15, type metadata accessor for NetworkConnectionProvider);
  v34 = *(v3 + 32);
  OUTLINED_FUNCTION_7_1();
  v17 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_66();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = v2;
  v18[4] = v16;
  v18[5] = v0;
  v36[4] = v32;
  v36[5] = v18;
  OUTLINED_FUNCTION_1_1();
  v36[1] = 1107296256;
  OUTLINED_FUNCTION_3_5();
  v36[2] = v19;
  v36[3] = v33;
  v20 = _Block_copy(v36);

  v21 = v0;
  static DispatchQoS.unspecified.getter();
  OUTLINED_FUNCTION_1_8();
  lazy protocol witness table accessor for type NetworkConnectionProvider and conformance NetworkConnectionProvider(v22, 255, v23);
  v24 = OUTLINED_FUNCTION_80();
  __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
  OUTLINED_FUNCTION_45();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](v26, v27, v28);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_64();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v29 = OUTLINED_FUNCTION_6();
  MEMORY[0x223DE2460](v29);
  _Block_release(v20);
  v30 = OUTLINED_FUNCTION_16_1();
  v31(v30);
  (*(v12 + 8))(v1, v35);

  OUTLINED_FUNCTION_47();
}

{
  OUTLINED_FUNCTION_46();
  v35 = v4;
  v33 = v5;
  v6 = OUTLINED_FUNCTION_92();
  v7 = OUTLINED_FUNCTION_0_0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_1();
  v36 = OUTLINED_FUNCTION_8_1();
  v10 = OUTLINED_FUNCTION_0_0(v36);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_12_2();
  v17 = lazy protocol witness table accessor for type NetworkConnectionProvider and conformance NetworkConnectionProvider(v15, 255, v16);
  v34 = *(v3 + 32);
  OUTLINED_FUNCTION_7_1();
  v18 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_66();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = v2;
  v19[4] = v17;
  v19[5] = v0;
  v37[4] = v33;
  v37[5] = v19;
  OUTLINED_FUNCTION_1_1();
  v37[1] = 1107296256;
  OUTLINED_FUNCTION_3_5();
  v37[2] = v20;
  v37[3] = v35;
  v21 = _Block_copy(v37);

  v22 = v0;
  static DispatchQoS.unspecified.getter();
  OUTLINED_FUNCTION_1_8();
  lazy protocol witness table accessor for type NetworkConnectionProvider and conformance NetworkConnectionProvider(v23, 255, v24);
  v25 = OUTLINED_FUNCTION_80();
  __swift_instantiateConcreteTypeFromMangledNameV2(v25, v26);
  OUTLINED_FUNCTION_45();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](v27, v28, v29);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_64();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v30 = OUTLINED_FUNCTION_6();
  MEMORY[0x223DE2460](v30);
  _Block_release(v21);
  v31 = OUTLINED_FUNCTION_16_1();
  v32(v31);
  (*(v12 + 8))(v1, v36);

  OUTLINED_FUNCTION_47();
}

void specialized BackgroundConnection.connectionProvider(_:receivedViabilityChangeNotification:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  lazy protocol witness table accessor for type NetworkConnectionProvider and conformance NetworkConnectionProvider(&lazy protocol witness table cache variable for type NetworkConnectionProvider and conformance NetworkConnectionProvider, a2, type metadata accessor for NetworkConnectionProvider);
  v6 = *(a3 + 1080);
  if (v6)
  {
    v7 = v6 == a1;
  }

  else
  {
    v7 = 0;
  }

  if (!v7 || !swift_unknownObjectWeakLoadStrong())
  {
    return;
  }

  type metadata accessor for BackgroundConnection();
  v8 = swift_dynamicCastClass();
  if (!v8)
  {
    goto LABEL_16;
  }

  v9 = v8;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (v9 != a3)
  {
    goto LABEL_16;
  }

  if (*(a3 + 1188) != (v4 & 1))
  {
    if ((v4 & 1) == 0)
    {
      lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
      v10 = swift_allocError();
      *(v11 + 8) = 0;
      *(v11 + 16) = 0;
      *v11 = 0;
      *(v11 + 24) = xmmword_2235F0AC0;
      BackgroundConnection.didEncounterError(_:)();

LABEL_16:

      swift_unknownObjectRelease();
      return;
    }

LABEL_15:
    BackgroundConnection.cancelSecondaryConnection()();
    goto LABEL_16;
  }

  if (v4)
  {
    goto LABEL_15;
  }

  if (*(a3 + 1189))
  {
    BackgroundConnection.startSecondaryConnection()();
    goto LABEL_16;
  }

  if (one-time initialization token for siriNetwork != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.siriNetwork);
  oslog = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_223515000, oslog, v13, "Background Connection - Provider: Wait for better route event", v14, 2u);
    MEMORY[0x223DE38F0](v14, -1, -1);
  }

  swift_unknownObjectRelease();
}

uint64_t specialized BackgroundConnection.connectionProviderReceivedBetterRouteNotification(_:)(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type NetworkConnectionProvider and conformance NetworkConnectionProvider(&lazy protocol witness table cache variable for type NetworkConnectionProvider and conformance NetworkConnectionProvider, a2, type metadata accessor for NetworkConnectionProvider);
  v5 = *(a2 + 1080);
  if (v5)
  {
    v6 = v5 == a1;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      type metadata accessor for BackgroundConnection();
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        v8 = v7;
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        if (v8 == a2)
        {
          *(a2 + 1189) = 1;
          if ((*(a2 + 1188) & 1) == 0)
          {
            if (one-time initialization token for siriNetwork != -1)
            {
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
              _os_log_impl(&dword_223515000, v10, v11, "Background Connection - Provider: Starting secondary connection after better route notification received", v12, 2u);
              MEMORY[0x223DE38F0](v12, -1, -1);
            }

            BackgroundConnection.startSecondaryConnection()();
          }
        }
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void partial apply for closure #1 in BackgroundConnection.connectionProvider(_:receivedIntermediateError:)()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  closure #1 in BackgroundConnection.connectionProvider(_:receivedIntermediateError:)(v0[2]);
}

uint64_t partial apply for specialized closure #1 in ConnectionProviderProtocol.setupStaleConnectionTimer()()
{
  return specialized closure #1 in ConnectionProviderProtocol.setupStaleConnectionTimer()(*(v0 + 16), *(v0 + 24));
}

{
  return specialized closure #1 in ConnectionProviderProtocol.setupStaleConnectionTimer()(*(v0 + 16), *(v0 + 24));
}

void partial apply for closure #1 in BackgroundConnection.connectionProvider(_:received:)()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  closure #1 in BackgroundConnection.connectionProvider(_:received:)(v0[2]);
}

uint64_t objectdestroy_157Tm()
{
  v1 = *(v0 + 24);

  v2 = OUTLINED_FUNCTION_41();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t partial apply for specialized closure #1 in ConnectionProviderProtocol.setupOpenSlowTimer()()
{
  return specialized closure #1 in ConnectionProviderProtocol.setupOpenSlowTimer()();
}

{
  return specialized closure #1 in ConnectionProviderProtocol.setupOpenSlowTimer()();
}

void partial apply for specialized closure #1 in ConnectionProviderProtocol.setupOpenTimeoutTimer()()
{
  specialized closure #1 in ConnectionProviderProtocol.setupOpenTimeoutTimer()();
}

{
  specialized closure #1 in ConnectionProviderProtocol.setupOpenTimeoutTimer()();
}

id outlined copy of NetworkConnectionError(id result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  if ((a4 >> 60) <= 9)
  {
    if (a4 >> 60 == 3)
    {
      result = a5;
    }

    return result;
  }

  return result;
}

uint64_t objectdestroy_214Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = OUTLINED_FUNCTION_41();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t objectdestroy_204Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_66();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t objectdestroy_171Tm(void (*a1)(void))
{
  v3 = *(v1 + 16);

  a1(*(v1 + 32));
  OUTLINED_FUNCTION_109();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_92()
{

  return type metadata accessor for DispatchWorkItemFlags();
}

uint64_t OUTLINED_FUNCTION_94()
{
}

double OUTLINED_FUNCTION_96()
{
  v1 = *(v0 + 2064);
  v2 = *(v0 + 2072);
  result = 0.0;
  *(v0 + 2064) = 0u;
  return result;
}

BOOL OUTLINED_FUNCTION_121()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_122()
{
}

void ConnectionEstablishmentReport.init(ospreyConnectionMetrics:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = 1;
  if (one-time initialization token for sharedNetworkAnalytics != -1)
  {
    swift_once();
  }

  v4 = static NetworkAnalytics.sharedNetworkAnalytics;
  if (a1)
  {
    v5 = static NetworkAnalytics.sharedNetworkAnalytics;
    [a1 fetchStartToDomainLookupStartTime];
    v7 = v6;
    [a1 dnsResolutionTime];
    v9 = v8;
    [a1 connectionEstablishmentTime];
    v11 = v10;
    v42 = 0;
    [a1 tcpConnectTime];
    v13 = v12;
    [a1 secureConnectionTime];
    v15 = v14;
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v17 = v16;
    v19 = *(v16 + 16);
    v18 = *(v16 + 24);
    v20 = v18 >> 1;
    v21 = v19 + 1;
    if (v18 >> 1 <= v19)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v17 = v34;
      v18 = *(v34 + 24);
      v20 = v18 >> 1;
    }

    *(v17 + 16) = v21;
    v22 = v17 + 48 * v19;
    *(v22 + 32) = xmmword_2235F0D60;
    *(v22 + 48) = v13;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    *(v22 + 72) = 1;
    if (v20 < (v19 + 2))
    {
      OUTLINED_FUNCTION_0_19(v18);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v17 = v35;
    }

    v23 = v7 + v9;
    *(v17 + 16) = v19 + 2;
    v24 = v17 + 48 * v21;
    *(v24 + 32) = xmmword_2235F0D70;
    *(v24 + 48) = v15;
    *(v24 + 56) = 0;
    *(v24 + 64) = 0;
    *(v24 + 72) = 1;
    [a1 dnsResolutionTime];
    v26 = v25;
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v28 = v27;
    v30 = *(v27 + 16);
    v29 = *(v27 + 24);
    if (v30 >= v29 >> 1)
    {
      OUTLINED_FUNCTION_0_19(v29);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v28 = v36;
    }

    v31 = v23 + v11;

    *(v28 + 16) = v30 + 1;
    v32 = v28 + 80 * v30;
    *(v32 + 32) = 0;
    *(v32 + 36) = 1;
    *(v32 + 37) = v40;
    *(v32 + 39) = v41;
    *(v32 + 40) = v26;
    *(v32 + 48) = 0;
    *(v32 + 49) = v38;
    *(v32 + 51) = v39;
    *(v32 + 52) = 0;
    *(v32 + 56) = 1;
    *(v32 + 60) = *&v37[3];
    *(v32 + 57) = *v37;
    *(v32 + 80) = 0u;
    *(v32 + 96) = 0u;
    *(v32 + 64) = 0u;
  }

  else
  {
    v33 = static NetworkAnalytics.sharedNetworkAnalytics;
    v17 = MEMORY[0x277D84F90];
    v31 = 0.0;
    v28 = MEMORY[0x277D84F90];
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = 1;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  *(a2 + 40) = v31;
  *(a2 + 48) = v42;
  *(a2 + 56) = v17;
  *(a2 + 64) = v28;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = v4;
}

uint64_t ConnectionSnapshotReport.isPoorLinkQuality.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = *(__dst[86] + 16);
  if (v1)
  {
    v2 = (__dst[86] + 32);
    v3 = v1 - 1;
    v4 = 1;
    while (1)
    {
      memcpy(v28, v2, 0xF9uLL);
      memcpy(v26, v2, 0xF9uLL);
      outlined init with copy of ConnectionTCPInfoMetrics(v28, v27);
      if (ConnectionTCPInfoMetrics.isPoorLinkQuality.getter())
      {
LABEL_4:
        outlined destroy of ConnectionTCPInfoMetrics(v28);
        goto LABEL_20;
      }

      memcpy(v26, &__dst[48], 0x121uLL);
      if (_s11SiriNetwork25ConnectionInterfaceReportVSgWOg(v26) == 1)
      {
        v5 = 0;
        v6 = 0;
      }

      else
      {
        v5 = v26[0];
        v6 = v26[1];
      }

      if (!v28[1])
      {
        break;
      }

      if (!v6)
      {
        goto LABEL_4;
      }

      if (v28[0] == v5 && v28[1] == v6)
      {

        outlined destroy of ConnectionTCPInfoMetrics(v28);

LABEL_19:
        v4 = 0;
        goto LABEL_20;
      }

      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      outlined destroy of ConnectionTCPInfoMetrics(v28);

      if (v8)
      {
        goto LABEL_19;
      }

LABEL_20:
      if (!v3)
      {
        if (one-time initialization token for siriNetwork != -1)
        {
          OUTLINED_FUNCTION_0_6();
        }

        v9 = type metadata accessor for Logger();
        __swift_project_value_buffer(v9, static Logger.siriNetwork);
        outlined init with copy of ConnectionSnapshotReport(__dst, v26);
        v10 = Logger.logObject.getter();
        v11 = static os_log_type_t.default.getter();
        outlined destroy of ConnectionSnapshotReport(__dst);
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          v13 = swift_slowAlloc();
          v25 = v13;
          *v12 = 136315394;
          memcpy(v26, &__dst[48], 0x121uLL);
          if (_s11SiriNetwork25ConnectionInterfaceReportVSgWOg(v26) == 1)
          {
            v14 = 0;
            v15 = 0xE000000000000000;
          }

          else
          {
            v27[0] = v26[0];
            v27[1] = v26[1];

            v14 = String.init<A>(describing:)();
            v15 = v20;
          }

          v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v25);

          *(v12 + 4) = v21;
          *(v12 + 12) = 2080;
          v22 = "Poor link quality";
          if ((v4 & 1) == 0)
          {
            v22 = "Good link quality";
          }

          v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, (v22 - 32) | 0x8000000000000000, &v25);

          *(v12 + 14) = v23;
          _os_log_impl(&dword_223515000, v10, v11, "SiriNetwork - Report Link Quality for primary interface [%s]. %s", v12, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223DE38F0](v13, -1, -1);
          MEMORY[0x223DE38F0](v12, -1, -1);
        }

        return v4 & 1;
      }

      --v3;
      v2 += 256;
    }

    outlined destroy of ConnectionTCPInfoMetrics(v28);
    if (v6)
    {

      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.siriNetwork);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_223515000, v17, v18, "SiriNetwork - Report Link Quality. Unavailable", v19, 2u);
    MEMORY[0x223DE38F0](v19, -1, -1);
  }

  v4 = 0;
  return v4 & 1;
}

uint64_t static ConnectionPolicy.maxGlobalTimeout.setter(double a1)
{
  result = swift_beginAccess();
  static ConnectionPolicy.maxGlobalTimeout = *&a1;
  return result;
}

double key path getter for static ConnectionPolicy.maxGlobalTimeout : ConnectionPolicy.Type@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  result = *&static ConnectionPolicy.maxGlobalTimeout;
  *a1 = static ConnectionPolicy.maxGlobalTimeout;
  return result;
}

uint64_t key path setter for static ConnectionPolicy.maxGlobalTimeout : ConnectionPolicy.Type(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static ConnectionPolicy.maxGlobalTimeout = v1;
  return result;
}

uint64_t ConnectionPolicy.policyId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ConnectionPolicy.policyId.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ConnectionPolicy.globalTimeout.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t ConnectionPolicy.globalTimeout.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

double ConnectionPolicy.maxRoutesTimeout.getter()
{
  if (*(v0 + 32))
  {
    OUTLINED_FUNCTION_1_10();
    return *&static ConnectionPolicy.maxGlobalTimeout;
  }

  else
  {
    v1 = *(v0 + 24);
    OUTLINED_FUNCTION_1_10();
    if (*&static ConnectionPolicy.maxGlobalTimeout < v1)
    {
      return *&static ConnectionPolicy.maxGlobalTimeout;
    }
  }

  return v1;
}

double ConnectionPolicy.delayBetweenScheduledRoutes.getter()
{
  v1 = static ConnectionPolicyRoute.aceptableRoutes(_:)(*(v0 + 72));
  static ConnectionPolicyRoute.maxTimeoutFromRoutes(_:)(v1);
  v3 = v2;

  return fmin(v3, 5.0);
}

uint64_t ConnectionPolicy.mptcpFallbackPort.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t ConnectionPolicy.mptcpFallbackPort.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t ConnectionPolicy.timeToLive.getter()
{
  result = *(v0 + 56);
  v2 = *(v0 + 64);
  return result;
}

uint64_t ConnectionPolicy.timeToLive.setter(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  return result;
}

uint64_t ConnectionPolicy.routes.setter(uint64_t a1)
{
  v3 = *(v1 + 72);

  *(v1 + 72) = a1;
  return result;
}

uint64_t Double.seconds.getter(double a1)
{
  v1 = round(a1);
  if (v1 <= -9.22337204e18)
  {
    return 0x8000000000000000;
  }

  if (v1 >= 9.22337204e18)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v1 > -9.22337204e18)
  {
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t specialized RawRepresentable<>.hash(into:)()
{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  return MEMORY[0x223DE2980](1);
}

Swift::Int ConnectionConfiguration.hashValue.getter()
{
  Hasher.init(_seed:)();
  ConnectionConfiguration.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ConnectionConfiguration()
{
  Hasher.init(_seed:)();
  ConnectionConfiguration.hash(into:)(v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type ConnectionConfiguration and conformance ConnectionConfiguration()
{
  result = lazy protocol witness table cache variable for type ConnectionConfiguration and conformance ConnectionConfiguration;
  if (!lazy protocol witness table cache variable for type ConnectionConfiguration and conformance ConnectionConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConnectionConfiguration and conformance ConnectionConfiguration);
  }

  return result;
}

id one-time initialization function for sharedNetworkAnalytics()
{
  default argument 0 of NetworkAnalytics.init(queue:siriAnalyticsMessageStream:)();
  v2 = v1;
  v3 = [objc_opt_self() sharedStream];
  v4 = OUTLINED_FUNCTION_53_1();
  v5 = objc_allocWithZone(type metadata accessor for NetworkAnalytics(v4));
  result = NetworkAnalytics.init(queue:siriAnalyticsMessageStream:)(v2, v0);
  static NetworkAnalytics.sharedNetworkAnalytics = result;
  return result;
}

void default argument 0 of NetworkAnalytics.init(queue:siriAnalyticsMessageStream:)()
{
  OUTLINED_FUNCTION_46();
  v16 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = OUTLINED_FUNCTION_0_0(v16);
  v2 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v0);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  v8 = OUTLINED_FUNCTION_71(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = OUTLINED_FUNCTION_9_5();
  v12 = OUTLINED_FUNCTION_11_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7();
  v15[1] = type metadata accessor for CTServiceDescriptor(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  static DispatchQoS.utility.getter();
  v17 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v6, *MEMORY[0x277D85260], v16);
  OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  OUTLINED_FUNCTION_47();
}

id static NetworkAnalytics.sharedNetworkAnalytics.getter()
{
  if (one-time initialization token for sharedNetworkAnalytics != -1)
  {
    swift_once();
  }

  v1 = static NetworkAnalytics.sharedNetworkAnalytics;

  return v1;
}

id NetworkAnalytics.init(queue:siriAnalyticsMessageStream:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR___SNNetworkAnalyticsInternal_netId;
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_17_3(&v2[v5]);
  OUTLINED_FUNCTION_17_3(&v2[OBJC_IVAR___SNNetworkAnalyticsInternal_networkConnectionId]);
  v6 = &v2[OBJC_IVAR___SNNetworkAnalyticsInternal_connectionProvider];
  *v6 = 0;
  v6[4] = 1;
  OUTLINED_FUNCTION_17_3(&v2[OBJC_IVAR___SNNetworkAnalyticsInternal_orchestratorRequestId]);
  OUTLINED_FUNCTION_17_3(&v2[OBJC_IVAR___SNNetworkAnalyticsInternal_netIdForRequestLink]);
  v7 = &v2[OBJC_IVAR___SNNetworkAnalyticsInternal_httpHeaderEvent];
  OUTLINED_FUNCTION_17_3(&v2[OBJC_IVAR___SNNetworkAnalyticsInternal_httpHeaderEvent]);
  v8 = type metadata accessor for NetworkAnalyticsEventMessage(0);
  *&v7[*(v8 + 20)] = 0;
  v9 = &v7[*(v8 + 24)];
  *v9 = 0;
  v9[8] = 1;
  OUTLINED_FUNCTION_3_8(OBJC_IVAR___SNNetworkAnalyticsInternal_preparationSnapshotEvent);
  OUTLINED_FUNCTION_3_8(OBJC_IVAR___SNNetworkAnalyticsInternal_debugPreparationSnapshotEvent);
  OUTLINED_FUNCTION_3_8(OBJC_IVAR___SNNetworkAnalyticsInternal_readySnapshotEvent);
  OUTLINED_FUNCTION_3_8(OBJC_IVAR___SNNetworkAnalyticsInternal_debugReadySnapshotEvent);
  OUTLINED_FUNCTION_3_8(OBJC_IVAR___SNNetworkAnalyticsInternal_sessionConnectionSnapthotEvent);
  OUTLINED_FUNCTION_3_8(OBJC_IVAR___SNNetworkAnalyticsInternal_debugSessionConnectionSnapthotEvent);
  OUTLINED_FUNCTION_3_8(OBJC_IVAR___SNNetworkAnalyticsInternal_sessionConnectionFailedEvent);
  OUTLINED_FUNCTION_3_8(OBJC_IVAR___SNNetworkAnalyticsInternal_peerConnectionFailedEvent);
  *&v2[OBJC_IVAR___SNNetworkAnalyticsInternal_queue] = a1;
  v2[OBJC_IVAR___SNNetworkAnalyticsInternal_isConnectionActive] = 0;
  v2[OBJC_IVAR___SNNetworkAnalyticsInternal_netIdAvailable] = 0;
  *&v2[OBJC_IVAR___SNNetworkAnalyticsInternal_sequenceNumber] = 0;
  *&v2[OBJC_IVAR___SNNetworkAnalyticsInternal_siriAnalyticsMessageStream] = a2;
  v11.receiver = v2;
  v11.super_class = type metadata accessor for NetworkAnalytics(0);
  return objc_msgSendSuper2(&v11, sel_init);
}

Swift::Void __swiftcall NetworkAnalytics.reset()()
{
  NetworkAnalytics.resetNetId()();

  NetworkAnalytics.resetSequenceNumber()();
}

uint64_t NetworkAnalytics.getNetId()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for UUID();
  v3 = OUTLINED_FUNCTION_47_0();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  v5 = *&v1[OBJC_IVAR___SNNetworkAnalyticsInternal_queue];
  OUTLINED_FUNCTION_3();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = v1;
  OUTLINED_FUNCTION_3();
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for closure #1 in NetworkAnalytics.getNetId();
  *(v7 + 24) = v6;
  v16[4] = partial apply for thunk for @callee_guaranteed () -> ();
  v16[5] = v7;
  OUTLINED_FUNCTION_20_2();
  v16[1] = 1107296256;
  OUTLINED_FUNCTION_5_9();
  v16[2] = v8;
  v16[3] = &block_descriptor_16_0;
  v9 = _Block_copy(v16);
  v10 = v5;
  v11 = v1;

  v12 = OUTLINED_FUNCTION_31_1();
  dispatch_sync(v12, v13);

  _Block_release(v9);
  OUTLINED_FUNCTION_36_1();
  v14 = OUTLINED_FUNCTION_46_0();

  if (v14)
  {
    __break(1u);
  }

  return result;
}

Swift::Bool __swiftcall NetworkAnalytics.getIsConnectionActive()()
{
  v19 = 0;
  v1 = *&v0[OBJC_IVAR___SNNetworkAnalyticsInternal_queue];
  OUTLINED_FUNCTION_3();
  v2 = swift_allocObject();
  *(v2 + 16) = &v19;
  *(v2 + 24) = v0;
  OUTLINED_FUNCTION_3();
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in NetworkAnalytics.getIsConnectionActive();
  *(v3 + 24) = v2;
  v17 = thunk for @callee_guaranteed () -> ()partial apply;
  v18 = v3;
  OUTLINED_FUNCTION_12_3();
  v14 = 1107296256;
  OUTLINED_FUNCTION_5_9();
  v15 = v4;
  v16 = &block_descriptor_56_0;
  v5 = _Block_copy(aBlock);
  v6 = v1;
  v7 = v0;

  v8 = OUTLINED_FUNCTION_31_1();
  dispatch_sync(v8, v9);

  _Block_release(v5);
  OUTLINED_FUNCTION_36_1();
  v10 = OUTLINED_FUNCTION_46_0();

  if (v10)
  {
    __break(1u);
  }

  else
  {
    v12 = v19;

    return v12;
  }

  return result;
}

Swift::Bool __swiftcall NetworkAnalytics.isNetIdAvailable()()
{
  v19 = 0;
  v1 = *&v0[OBJC_IVAR___SNNetworkAnalyticsInternal_queue];
  OUTLINED_FUNCTION_3();
  v2 = swift_allocObject();
  *(v2 + 16) = &v19;
  *(v2 + 24) = v0;
  OUTLINED_FUNCTION_3();
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in NetworkAnalytics.isNetIdAvailable();
  *(v3 + 24) = v2;
  v17 = thunk for @callee_guaranteed () -> ()partial apply;
  v18 = v3;
  OUTLINED_FUNCTION_12_3();
  v14 = 1107296256;
  OUTLINED_FUNCTION_5_9();
  v15 = v4;
  v16 = &block_descriptor_72;
  v5 = _Block_copy(aBlock);
  v6 = v1;
  v7 = v0;

  v8 = OUTLINED_FUNCTION_31_1();
  dispatch_sync(v8, v9);

  _Block_release(v5);
  OUTLINED_FUNCTION_36_1();
  v10 = OUTLINED_FUNCTION_46_0();

  if (v10)
  {
    __break(1u);
  }

  else
  {
    v12 = v19;

    return v12;
  }

  return result;
}

void partial apply for closure #1 in NetworkAnalytics.increaseSequenceNumber()()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR___SNNetworkAnalyticsInternal_sequenceNumber);
  if (v2 <= 0x3E8)
  {
    v3 = v2 + 1;
  }

  else
  {
    v3 = 1;
  }

  *(v1 + OBJC_IVAR___SNNetworkAnalyticsInternal_sequenceNumber) = v3;
}

Class @objc NetworkAnalytics.getNetId()(void *a1, uint64_t a2, void (*a3)(void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  v6 = OUTLINED_FUNCTION_11_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  v11 = a1;
  a3();

  v12 = type metadata accessor for UUID();
  isa = 0;
  if (__swift_getEnumTagSinglePayload(v10, 1, v12) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(*(v12 - 8) + 8))(v10, v12);
  }

  return isa;
}

void *NetworkAnalytics.createRequestLinkInfo(from:component:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  v5 = OUTLINED_FUNCTION_11_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - v8;
  v10 = type metadata accessor for UUID();
  v11 = OUTLINED_FUNCTION_0_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_9();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v32 - v20;
  outlined init with copy of UUID?(a1, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    outlined destroy of NetworkConnectionProtocol?(v9, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
    return 0;
  }

  else
  {
    v23 = *(v13 + 32);
    OUTLINED_FUNCTION_29_3();
    v24();
    type metadata accessor for CTServiceDescriptor(0, &lazy cache variable for type metadata for SISchemaUUID, 0x277D5AC78);
    (*(v13 + 16))(v18, v21, v10);
    v25 = SISchemaUUID.__allocating_init(nsuuid:)(v18);
    v26 = [objc_allocWithZone(MEMORY[0x277D5A9E0]) init];
    v22 = v26;
    if (v26)
    {
      [v26 setUuid_];
      [v22 setComponent_];

      v27 = OUTLINED_FUNCTION_32_2();
      v28(v27);
    }

    else
    {
      v29 = OUTLINED_FUNCTION_32_2();
      v30(v29);
    }
  }

  return v22;
}

void NetworkAnalytics.emitAllCachedMessagesFor(_:)()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_53_1();
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = OUTLINED_FUNCTION_0_0(v2);
  v36 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = OUTLINED_FUNCTION_9_5();
  v8 = OUTLINED_FUNCTION_0_0(v7);
  v34 = v9;
  v35 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v12 = type metadata accessor for UUID();
  v13 = OUTLINED_FUNCTION_0_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  v33 = *(v0 + OBJC_IVAR___SNNetworkAnalyticsInternal_queue);
  OUTLINED_FUNCTION_7_1();
  v18 = swift_allocObject();
  OUTLINED_FUNCTION_28_0(v18);
  swift_unknownObjectWeakInit();
  (*(v15 + 16))(&v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v0, v12);
  v19 = ((*(v15 + 80) + 24) & ~*(v15 + 80));
  v20 = swift_allocObject();
  *(v20 + 16) = v1;
  (*(v15 + 32))(&v19[v20], &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  v38[4] = partial apply for closure #1 in NetworkAnalytics.emitAllCachedMessagesFor(_:);
  v38[5] = v20;
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v38[2] = v21;
  v38[3] = &block_descriptor_238;
  v22 = _Block_copy(v38);
  v23 = v33;
  OUTLINED_FUNCTION_42();
  static DispatchQoS.unspecified.getter();
  v37 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_2_9();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(v24, v25);
  v26 = OUTLINED_FUNCTION_27_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
  OUTLINED_FUNCTION_45_0(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  OUTLINED_FUNCTION_11_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_43_1();
  _Block_release(v22);

  v28 = OUTLINED_FUNCTION_16_1();
  v29(v28);
  v30 = OUTLINED_FUNCTION_16();
  v31(v30);
  OUTLINED_FUNCTION_39_0();

  OUTLINED_FUNCTION_47();
}