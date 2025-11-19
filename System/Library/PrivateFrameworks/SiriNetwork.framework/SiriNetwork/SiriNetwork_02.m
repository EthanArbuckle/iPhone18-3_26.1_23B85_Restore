uint64_t sub_223538390()
{
  MEMORY[0x223DE39C0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BackgroundConnection.start()()
{
  v0[1136] = 0;
  v0[138] = v0[658];
  v0[136] = v0[656];
  BackgroundConnection.start(proposedFallbackMethod:allowFallbackToNewMethod:)(SiriNetwork_ConnectionMethod_unknown, 1);
}

uint64_t ConnectionMethod.communicationProtocolClass(for:)(uint64_t a1)
{
  if (a1 == 2)
  {
    return type metadata accessor for CommunicationProtocolProtobuf();
  }

  if (a1 == 1)
  {
    return type metadata accessor for CommunicationProtocolAce();
  }

  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
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

uint64_t protocol witness for CommunicationProtocol.init(withDelegate:connectionQueue:) in conformance CommunicationProtocolAce@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = CommunicationProtocolAce.__allocating_init(withDelegate:connectionQueue:)(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_67(uint64_t a1)
{

  return outlined init with copy of MessageCenterEndpoint(v1 + 344, a1 + 16);
}

uint64_t OUTLINED_FUNCTION_67_0(uint64_t a1, ...)
{
  va_start(va, a1);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1, v2, va);
}

uint64_t CommunicationProtocolAce.init(withDelegate:connectionQueue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 40) = xmmword_2235EF700;
  *(v3 + 56) = xmmword_2235EF6F0;
  *(v3 + 72) = xmmword_2235EF700;
  *(v3 + 88) = xmmword_2235EF700;
  *(v3 + 104) = 0u;
  *(v3 + 120) = 0u;
  *(v3 + 136) = 0u;
  *(v3 + 152) = 0u;
  *(v3 + 168) = 0u;
  *(v3 + 184) = 0u;
  *(v3 + 200) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySbcMd, &_sySbcMR);
  *(v3 + 208) = Dictionary.init(dictionaryLiteral:)();
  *(v3 + 216) = -100000;
  *(v3 + 224) = 0;
  *(v3 + 232) = 0;
  *(v3 + 240) = 0;
  *(v3 + 248) = 0;
  *(v3 + 256) = xmmword_2235EF700;
  *(v3 + 272) = 0u;
  *(v3 + 288) = 0u;
  *(v3 + 304) = 0u;
  *(v3 + 320) = 0;
  *(v3 + 328) = 0xF000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v3 + 336) = v6;
  swift_getObjectType();
  if (dynamic_cast_existential_1_conditional(a1))
  {
    v8 = *(v7 + 8);
  }

  else
  {
    swift_unknownObjectRelease();
    v8 = 0;
  }

  *(v3 + 24) = v8;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(v3 + 32) = a3;
  return v3;
}

void *OUTLINED_FUNCTION_49_3(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char __src)
{

  return memcpy(&a9, &__src, 0xF9uLL);
}

void OUTLINED_FUNCTION_49_4()
{
  *v0 = v2;
  *(v0 + 8) = 0;
  v3 = v0 + *(v1 + 28);
}

void *OUTLINED_FUNCTION_49_5(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 1136);
  v4 = (a2 + 40);

  return memcpy(&STACK[0x668], v4, 0x204uLL);
}

uint64_t outlined assign with take of CommunicationProtocol?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

Swift::Void __swiftcall CommunicationProtocolAce.connectionStarted(fallingBack:)(Swift::Bool fallingBack)
{
  v2 = v1;
  if (fallingBack)
  {
    if (one-time initialization token for siriNetwork != -1)
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
      OUTLINED_FUNCTION_30();
      v7 = swift_slowAlloc();
      *v7 = 134218240;
      OUTLINED_FUNCTION_36_2();
      v8 = 0;
      if (v2[41] >> 60 != 15)
      {
        v9 = v2[40];
        v10 = OUTLINED_FUNCTION_18();
        outlined copy of Data._Representation(v10, v11);
        v12 = OUTLINED_FUNCTION_18();
        v8 = MEMORY[0x223DE13E0](v12);
        v13 = OUTLINED_FUNCTION_18();
        outlined consume of Data?(v13, v14);
      }

      *(v7 + 4) = v8;
      *(v7 + 12) = 2048;
      OUTLINED_FUNCTION_37_1();
      v15 = 0;
      if (v2[10] >> 60 != 15)
      {
        v16 = v2[9];
        v17 = OUTLINED_FUNCTION_18();
        outlined copy of Data._Representation(v17, v18);
        v19 = OUTLINED_FUNCTION_18();
        v15 = MEMORY[0x223DE13E0](v19);
        v20 = OUTLINED_FUNCTION_18();
        outlined consume of Data?(v20, v21);
      }

      *(v7 + 14) = v15;

      OUTLINED_FUNCTION_15_0();
      _os_log_impl(v22, v23, v24, v25, v26, 0x16u);
      v27 = OUTLINED_FUNCTION_6_15();
      MEMORY[0x223DE38F0](v27);
    }

    else
    {
    }

    OUTLINED_FUNCTION_25_2();
    swift_beginAccess();
    v28 = v2[10];
    OUTLINED_FUNCTION_31_2();
    if (!(!v31 & v30) && !specialized Collection.isEmpty.getter(v2[9], v29))
    {
      OUTLINED_FUNCTION_40_1();
      if (v2[41] >> 60 != 15)
      {
        v32 = CommunicationProtocolAce.safetyNetBuffer.modify();
        OUTLINED_FUNCTION_24_1(v32, v33);
        if (!(!v31 & v30))
        {
          OUTLINED_FUNCTION_40_1();
          v34 = v2[9];
          v35 = v2[10];
          OUTLINED_FUNCTION_31_2();
          outlined copy of Data?(v36, v37);
          OUTLINED_FUNCTION_0();
          Data.append(_:)();
          v38 = OUTLINED_FUNCTION_0();
          outlined consume of Data._Representation(v38, v39);
        }

        (v32)(v50, 0);
      }
    }

    OUTLINED_FUNCTION_40_1();
    v40 = v2[41];
    OUTLINED_FUNCTION_31_2();
    if (!v31 & v30 || specialized Collection.isEmpty.getter(v2[40], v41))
    {
      v42 = 0;
      v43 = 0xF000000000000000;
    }

    else
    {
      v42 = v2[40];
      v43 = v2[41];
      v44 = OUTLINED_FUNCTION_58_0();
      outlined copy of Data?(v44, v45);
    }

    v46 = v2[9];
    v47 = v2[10];
    v2[9] = v42;
    v2[10] = v43;
    outlined consume of Data?(v46, v47);
  }

  OUTLINED_FUNCTION_25_2();
  swift_beginAccess();
  v48 = v2[40];
  v49 = v2[41];
  *(v2 + 20) = xmmword_2235EF6F0;
  outlined consume of Data?(v48, v49);
}

uint64_t OUTLINED_FUNCTION_106()
{
  v2 = *(*(v1 - 232) + 8);
  result = v0;
  v4 = *(v1 - 216);
  return result;
}

uint64_t ConnectionMethod.providerClass(for:)(uint64_t a1)
{
  if (a1 == 2)
  {
    v1 = type metadata accessor for RPCOspreyConnectionProvider();
    v2 = &lazy protocol witness table cache variable for type RPCOspreyConnectionProvider and conformance RPCOspreyConnectionProvider;
    v3 = type metadata accessor for RPCOspreyConnectionProvider;
LABEL_5:
    lazy protocol witness table accessor for type RPCOspreyConnectionProvider and conformance RPCOspreyConnectionProvider(v2, v3);
    return v1;
  }

  if (a1 == 1)
  {
    v1 = type metadata accessor for NetworkConnectionProvider();
    v2 = &lazy protocol witness table cache variable for type NetworkConnectionProvider and conformance NetworkConnectionProvider;
    v3 = type metadata accessor for NetworkConnectionProvider;
    goto LABEL_5;
  }

  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t lazy protocol witness table accessor for type RPCOspreyConnectionProvider and conformance RPCOspreyConnectionProvider(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t NetworkConnectionProvider.__allocating_init(connectionConfiguration:connectionQueue:networkManager:networkAnalytics:)(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  NetworkConnectionProvider.init(connectionConfiguration:connectionQueue:networkManager:networkAnalytics:)(a1, a2, a3, a4);
  return v8;
}

uint64_t NetworkConnectionProvider.init(connectionConfiguration:connectionQueue:networkManager:networkAnalytics:)(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 1496) = 0;
  *(v4 + 1512) = 0;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + 2096) = 0;
  *(v4 + 2080) = 0u;
  *(v4 + 2064) = 0u;
  *(v4 + 2098) = 1;
  *(v4 + 2104) = 0u;
  *(v4 + 2120) = 0u;
  *(v4 + 2136) = 0;
  *(v4 + 2152) = 0;
  *(v4 + 2160) = 0u;
  memcpy((v4 + 1536), a1, 0x204uLL);
  *(v4 + 2056) = a2;
  _s11SiriNetwork27ConnectionPreparationReportVSgWOi0_(__src);
  memcpy(__dst, __src, sizeof(__dst));
  _s11SiriNetwork24ConnectionSnapshotReportVSgWOi0_(v13);
  *(v4 + 56) = 0;
  *(v4 + 64) = 1;
  v9 = MEMORY[0x277D84F90];
  *(v4 + 72) = MEMORY[0x277D84F90];
  *(v4 + 80) = 0u;
  *(v4 + 96) = v9;
  *(v4 + 104) = 0;
  *(v4 + 108) = 1;
  *(v4 + 144) = 0;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0u;
  memcpy((v4 + 152), __dst, 0x168uLL);
  *(v4 + 512) = 0u;
  *(v4 + 528) = 0u;
  *(v4 + 544) = 0u;
  *(v4 + 560) = 0u;
  *(v4 + 576) = 0u;
  *(v4 + 592) = 0u;
  *(v4 + 608) = 0u;
  memcpy((v4 + 624), v13, 0x2C8uLL);
  *(v4 + 1336) = v9;
  *(v4 + 1344) = 0u;
  *(v4 + 1360) = 0u;
  *(v4 + 1376) = 0;
  *(v4 + 1384) = 1;
  *(v4 + 1392) = 0;
  *(v4 + 1400) = 1;
  *(v4 + 1408) = 0;
  *(v4 + 1416) = 1;
  *(v4 + 1424) = 0u;
  *(v4 + 1440) = 0;
  *(v4 + 1444) = 1;
  *(v4 + 1448) = 0;
  *(v4 + 1456) = 1;
  *(v4 + 1464) = 0;
  *(v4 + 1472) = 1;
  *(v4 + 1480) = 0;
  *(v4 + 1488) = 1;
  *(v4 + 1520) = 0;
  *(v4 + 1528) = 2;
  *(v4 + 2144) = a4;
  v10 = *(v4 + 1496);
  *(v4 + 1496) = a3;

  return v4;
}

uint64_t CommunicationProtocolAce.initialPayload(withBufferedInitialLength:forceReconnect:)(uint64_t *a1)
{
  v18 = xmmword_2235EF700;
  if (CommunicationProtocolAce.aceDelegate.getter())
  {
    if (BackgroundConnection.isUsingPop()())
    {
      outlined consume of Data?(0, 0xF000000000000000);
      v18 = xmmword_2235EF6F0;
      OUTLINED_FUNCTION_37_1();
      if (*(v1 + 80) >> 60 == 15)
      {
        CommunicationProtocolAce.httpHeaderData()();
        OUTLINED_FUNCTION_31_2();
        OUTLINED_FUNCTION_21_4();
        Data.append(_:)();
        v3 = OUTLINED_FUNCTION_21_4();
        outlined consume of Data._Representation(v3, v4);
        static AceStreamHeader.createAceStreamHeaderData(withMagic:compressionType:)(&outlined read-only object #0 of one-time initialization function for aceHeaderMagic, 1);
        OUTLINED_FUNCTION_71_0();
        Data.append(_:)();
        v15 = OUTLINED_FUNCTION_21_4();
        outlined consume of Data._Representation(v15, v16);
      }

      else
      {
        v8 = *(v1 + 72);
        v9 = OUTLINED_FUNCTION_0();
        outlined copy of Data._Representation(v9, v10);
        OUTLINED_FUNCTION_0();
        Data.append(_:)();
        v11 = OUTLINED_FUNCTION_0();
        v12 = MEMORY[0x223DE13E0](v11);
        v13 = OUTLINED_FUNCTION_0();
        outlined consume of Data?(v13, v14);
        *a1 = v12;
      }
    }

    v7 = *(&v18 + 1);
    v5 = v18;
    if (*(&v18 + 1) >> 60 == 15)
    {
      swift_unknownObjectRelease();
      v6 = 0;
    }

    else
    {
      v6 = specialized Data.withUnsafeBytes<A>(_:)(v18, *(&v18 + 1));
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0xF000000000000000;
  }

  outlined consume of Data?(v5, v7);
  return v6;
}

uint64_t protocol witness for ConnectionProviderProtocol.delegate.setter in conformance NetworkConnectionProvider(uint64_t a1, uint64_t a2)
{
  *(v2 + 1512) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t ConnectionProviderProtocol.connectionType.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  result = (*(a2 + 280))();
  if (result)
  {
    v7 = 17;
  }

  else
  {
    (*(a2 + 160))(__src, a1, a2);
    memcpy(__dst, __src, 0x121uLL);
    result = _s11SiriNetwork25ConnectionInterfaceReportVSgWOg(__dst);
    if (result == 1)
    {
      v7 = 0;
    }

    else
    {
      result = outlined destroy of ConnectionSnapshotReport?(__src, &_s11SiriNetwork25ConnectionInterfaceReportVSgMd, &_s11SiriNetwork25ConnectionInterfaceReportVSgMR);
      v7 = __dst[32];
    }
  }

  *a3 = v7;
  return result;
}

void *ConnectionProviderProtocol.primaryInterface.getter(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v4 = v1;
  v6 = v5;
  v7 = *(v2 + 40);
  v7(v16);
  memcpy(v20, v18, sizeof(v20));
  OUTLINED_FUNCTION_10_1(v20);
  if (v8)
  {
    _s11SiriNetwork25ConnectionInterfaceReportVSgWOi0_(v13);
    OUTLINED_FUNCTION_17_0();
    outlined destroy of ConnectionMetrics(v15);
    v9 = v13;
    goto LABEL_6;
  }

  memcpy(__dst, &v18[384], 0x121uLL);
  OUTLINED_FUNCTION_17_0();
  outlined init with copy of ConnectionSnapshotReport?(__dst, v19, &_s11SiriNetwork25ConnectionInterfaceReportVSgMd, &_s11SiriNetwork25ConnectionInterfaceReportVSgMR);
  outlined destroy of ConnectionMetrics(v15);
  memcpy(v13, __dst, 0x121uLL);
  v10 = _s11SiriNetwork25ConnectionInterfaceReportVSgWOg(v13);
  if (v10 == 1)
  {
    v9 = __dst;
LABEL_6:
    memcpy(v19, v9, 0x121uLL);
    (v7)(v16, v4, v3);
    memcpy(v13, v17, sizeof(v13));
    if (_s11SiriNetwork27ConnectionPreparationReportVSgWOg(v13) == 1)
    {
      OUTLINED_FUNCTION_17_0();
      outlined destroy of ConnectionMetrics(v15);
      outlined destroy of ConnectionSnapshotReport?(v19, &_s11SiriNetwork25ConnectionInterfaceReportVSgMd, &_s11SiriNetwork25ConnectionInterfaceReportVSgMR);
      _s11SiriNetwork25ConnectionInterfaceReportVSgWOi0_(__dst);
    }

    else
    {
      memcpy(__dst, &v17[40], 0x121uLL);
      OUTLINED_FUNCTION_17_0();
      outlined init with copy of ConnectionSnapshotReport?(__dst, v12, &_s11SiriNetwork25ConnectionInterfaceReportVSgMd, &_s11SiriNetwork25ConnectionInterfaceReportVSgMR);
      outlined destroy of ConnectionMetrics(v15);
      outlined destroy of ConnectionSnapshotReport?(v19, &_s11SiriNetwork25ConnectionInterfaceReportVSgMd, &_s11SiriNetwork25ConnectionInterfaceReportVSgMR);
    }
  }

  return memcpy(v6, __dst, 0x121uLL);
}

uint64_t _s11SiriNetwork27ConnectionPreparationReportVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 336);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t specialized Connection.willStartConnection(_:type:)(uint64_t a1, char a2, uint64_t a3)
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
      *(v20 + 16) = v19;
      *(v20 + 24) = a1;
      *(v20 + 32) = v16;
      *(v20 + 40) = a2;
      aBlock[4] = partial apply for closure #1 in Connection.willStartConnection(_:type:);
      aBlock[5] = v20;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_249_0;
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

uint64_t sub_2235396C4()
{
  MEMORY[0x223DE39C0](v0 + 16);
  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

void specialized ConnectionProviderProtocol.cancelOpenSlowTimer()()
{
  if (v0[265])
  {
    v1 = v0;
    v2 = one-time initialization token for siriNetwork;
    swift_unknownObjectRetain();
    if (v2 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.siriNetwork);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v16 = v7;
      *v6 = 136315394;
      v8 = *v1;
      v9 = _typeName(_:qualified:)();
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v16);

      *(v6 + 4) = v11;
      *(v6 + 12) = 2080;
      v12 = NetworkConnectionProvider.connectionIdentifier.getter();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v16);

      *(v6 + 14) = v14;
      _os_log_impl(&dword_223515000, v4, v5, "Provider - %s [%s]: Open slow timer cancelled.", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DE38F0](v7, -1, -1);
      MEMORY[0x223DE38F0](v6, -1, -1);
    }

    v15 = v1[265];
    v1[265] = 0;
    swift_unknownObjectRelease();
    swift_getObjectType();
    OS_dispatch_source.cancel()();

    swift_unknownObjectRelease();
  }
}

{
  OUTLINED_FUNCTION_112();
  if (*(v0 + 2136))
  {
    v3 = v0;
    v4 = one-time initialization token for siriNetwork;
    swift_unknownObjectRetain();
    if (v4 != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v5, static Logger.siriNetwork);

    v6 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    OUTLINED_FUNCTION_122();
    if (OUTLINED_FUNCTION_121())
    {
      OUTLINED_FUNCTION_89();
      OUTLINED_FUNCTION_53_0();
      OUTLINED_FUNCTION_105();
      OUTLINED_FUNCTION_38_0(4.8151e-34);
      v7 = _typeName(_:qualified:)();
      OUTLINED_FUNCTION_119(v7, v8, v9);
      OUTLINED_FUNCTION_94();
      OUTLINED_FUNCTION_21_3();
      v10 = OUTLINED_FUNCTION_65();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v12);
      OUTLINED_FUNCTION_118();
      *(v1 + 14) = v2;
      OUTLINED_FUNCTION_36_0(&dword_223515000, v13, v14, "Provider - %s [%s]: Open slow timer cancelled.");
      OUTLINED_FUNCTION_52_0();
      OUTLINED_FUNCTION_2_2();
      MEMORY[0x223DE38F0]();
      OUTLINED_FUNCTION_2_2();
      MEMORY[0x223DE38F0]();
    }

    v15 = *(v3 + 2136);
    *(v3 + 2136) = 0;
    swift_unknownObjectRelease();
    swift_getObjectType();
    OS_dispatch_source.cancel()();
    OUTLINED_FUNCTION_63_1();

    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_63_1();
  }
}

id outlined bridged method (mnbnnn) of @objc NetworkPerformanceFeed.fullScorecard(for:options:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v8 = [a4 fullScorecardFor:a1 options:isa reply:a3];

  return v8;
}

void specialized ConnectionProviderProtocol.configureNetworkAnalytics()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - v4;
  v6 = *(v0 + 2144);
  NetworkAnalytics.resetSequenceNumber()();

  v7 = *(v1 + 2144);
  NetworkAnalytics.setIsConnectionActive(_:)(1);

  v8 = *(v1 + 2144);
  NetworkAnalytics.getOrchestratorRequestId()(v5);

  v9 = type metadata accessor for UUID();
  LODWORD(v8) = __swift_getEnumTagSinglePayload(v5, 1, v9);
  outlined destroy of NetworkConnectionProtocol?(v5, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  if (v8 == 1)
  {
    v10 = *(v1 + 2144);
    NetworkAnalytics.resetNetId()();

    v11 = *(v1 + 2144);
    NetworkAnalytics.setNetIdAvailable(_:)(1);
  }

  v12 = *(v1 + 2144);
  NetworkAnalytics.logRequestLinkBetweenOrchestratorAndNetworkComponent()();
}

{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  v4 = OUTLINED_FUNCTION_11_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_56();
  v7 = *(v0 + 2160);
  NetworkAnalytics.resetSequenceNumber()();

  v8 = *(v2 + 2160);
  NetworkAnalytics.setIsConnectionActive(_:)(1);

  v9 = *(v2 + 2160);
  NetworkAnalytics.getOrchestratorRequestId()(v1);

  v10 = type metadata accessor for UUID();
  LODWORD(v9) = __swift_getEnumTagSinglePayload(v1, 1, v10);
  outlined destroy of NetworkConnectionProtocol?(v1, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  if (v9 == 1)
  {
    v11 = *(v2 + 2160);
    NetworkAnalytics.resetNetId()();

    v12 = *(v2 + 2160);
    NetworkAnalytics.setNetIdAvailable(_:)(1);
  }

  v13 = *(v2 + 2160);
  NetworkAnalytics.logRequestLinkBetweenOrchestratorAndNetworkComponent()();
}

void specialized ConnectionProviderProtocol.cancelOpenTimer()()
{
  if (v0[264])
  {
    v1 = v0;
    v2 = one-time initialization token for siriNetwork;
    swift_unknownObjectRetain();
    if (v2 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.siriNetwork);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v16 = v7;
      *v6 = 136315394;
      v8 = *v1;
      v9 = _typeName(_:qualified:)();
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v16);

      *(v6 + 4) = v11;
      *(v6 + 12) = 2080;
      v12 = NetworkConnectionProvider.connectionIdentifier.getter();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v16);

      *(v6 + 14) = v14;
      _os_log_impl(&dword_223515000, v4, v5, "Provider - %s [%s]: Open timer cancelled.", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DE38F0](v7, -1, -1);
      MEMORY[0x223DE38F0](v6, -1, -1);
    }

    v15 = v1[264];
    v1[264] = 0;
    swift_unknownObjectRelease();
    swift_getObjectType();
    OS_dispatch_source.cancel()();

    swift_unknownObjectRelease();
  }
}

{
  OUTLINED_FUNCTION_112();
  if (*(v0 + 2128))
  {
    v3 = v0;
    v4 = one-time initialization token for siriNetwork;
    swift_unknownObjectRetain();
    if (v4 != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v5, static Logger.siriNetwork);

    v6 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    OUTLINED_FUNCTION_122();
    if (OUTLINED_FUNCTION_121())
    {
      OUTLINED_FUNCTION_89();
      OUTLINED_FUNCTION_53_0();
      OUTLINED_FUNCTION_105();
      OUTLINED_FUNCTION_38_0(4.8151e-34);
      v7 = _typeName(_:qualified:)();
      OUTLINED_FUNCTION_119(v7, v8, v9);
      OUTLINED_FUNCTION_94();
      OUTLINED_FUNCTION_21_3();
      v10 = OUTLINED_FUNCTION_65();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v12);
      OUTLINED_FUNCTION_118();
      *(v1 + 14) = v2;
      OUTLINED_FUNCTION_36_0(&dword_223515000, v13, v14, "Provider - %s [%s]: Open timer cancelled.");
      OUTLINED_FUNCTION_52_0();
      OUTLINED_FUNCTION_2_2();
      MEMORY[0x223DE38F0]();
      OUTLINED_FUNCTION_2_2();
      MEMORY[0x223DE38F0]();
    }

    v15 = *(v3 + 2128);
    *(v3 + 2128) = 0;
    swift_unknownObjectRelease();
    swift_getObjectType();
    OS_dispatch_source.cancel()();
    OUTLINED_FUNCTION_63_1();

    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_63_1();
  }
}

uint64_t _s11SiriNetwork25ConnectionInterfaceReportVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t CommunicationProtocolAce.__allocating_init(withDelegate:connectionQueue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_72_0();
  swift_allocObject();
  v5 = OUTLINED_FUNCTION_52();
  CommunicationProtocolAce.init(withDelegate:connectionQueue:)(v5, v6, a3);
  return v3;
}

uint64_t lazy protocol witness table accessor for type BackgroundConnection and conformance BackgroundConnection(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void NetworkAnalytics.setIsConnectionActive(_:)()
{
  OUTLINED_FUNCTION_46();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = OUTLINED_FUNCTION_0_0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v28 = OUTLINED_FUNCTION_9_5();
  v12 = OUTLINED_FUNCTION_0_0(v28);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7();
  v17 = *&v0[OBJC_IVAR___SNNetworkAnalyticsInternal_queue];
  v18 = swift_allocObject();
  *(v18 + 16) = v0;
  *(v18 + 24) = v7;
  v29[4] = v5;
  v29[5] = v18;
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v29[2] = v19;
  v29[3] = v3;
  v20 = _Block_copy(v29);
  v21 = v17;
  v22 = v0;
  static DispatchQoS.unspecified.getter();
  OUTLINED_FUNCTION_2_9();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(v23, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_30_2();
  v25 = OUTLINED_FUNCTION_6();
  MEMORY[0x223DE2460](v25);
  _Block_release(v20);

  v26 = OUTLINED_FUNCTION_16_1();
  v27(v26);
  (*(v14 + 8))(v1, v28);

  OUTLINED_FUNCTION_47();
}

uint64_t NetworkAnalytics.getOrchestratorRequestId()@<X0>(uint64_t a1@<X8>)
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
  *(v7 + 16) = partial apply for closure #1 in NetworkAnalytics.getOrchestratorRequestId();
  *(v7 + 24) = v6;
  v16[4] = thunk for @callee_guaranteed () -> ()partial apply;
  v16[5] = v7;
  OUTLINED_FUNCTION_20_2();
  v16[1] = 1107296256;
  OUTLINED_FUNCTION_5_9();
  v16[2] = v8;
  v16[3] = &block_descriptor_101;
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

void NetworkAnalytics.increaseSequenceNumber()()
{
  OUTLINED_FUNCTION_46();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = OUTLINED_FUNCTION_0_0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v26 = OUTLINED_FUNCTION_9_5();
  v10 = OUTLINED_FUNCTION_0_0(v26);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  v15 = *&v0[OBJC_IVAR___SNNetworkAnalyticsInternal_queue];
  OUTLINED_FUNCTION_7_1();
  v16 = swift_allocObject();
  *(v16 + 16) = v0;
  v27[4] = v5;
  v27[5] = v16;
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v27[2] = v17;
  v27[3] = v3;
  v18 = _Block_copy(v27);
  v19 = v15;
  v20 = v0;
  static DispatchQoS.unspecified.getter();
  OUTLINED_FUNCTION_2_9();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(v21, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_30_2();
  v23 = OUTLINED_FUNCTION_6();
  MEMORY[0x223DE2460](v23);
  _Block_release(v18);

  v24 = OUTLINED_FUNCTION_16_1();
  v25(v24);
  (*(v12 + 8))(v1, v26);

  OUTLINED_FUNCTION_47();
}

uint64_t sub_22353A398()
{
  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22353A3FC()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t NetworkActivity.__deallocating_deinit()
{
  NetworkActivity.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t NetworkActivity.deinit()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 88);
  v3 = type metadata accessor for Optional();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = *(v0 + *(*v0 + 120));

  return v0;
}

Swift::Void __swiftcall NetworkManager.releaseWiFiAssertion()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = OUTLINED_FUNCTION_0_0(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_1();
  v17 = OUTLINED_FUNCTION_8_1();
  v5 = OUTLINED_FUNCTION_0_0(v17);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_1();
  v8 = *(v0 + OBJC_IVAR___SNNetworkManagerInternal_queue);
  OUTLINED_FUNCTION_7_1();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = partial apply for closure #1 in NetworkManager.releaseWiFiAssertion();
  v22 = v9;
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v19 = v10;
  v20 = &block_descriptor_14;
  v11 = _Block_copy(aBlock);
  v12 = v8;

  static DispatchQoS.unspecified.getter();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_5_3();
  _Block_release(v11);

  v13 = OUTLINED_FUNCTION_7_10();
  v14(v13);
  v15 = OUTLINED_FUNCTION_5_4();
  v16(v15);
}

void closure #1 in NetworkManager.releaseWiFiAssertion()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR___SNNetworkManagerInternal_networkWiFiManager);
    NetworkWiFiManager.releaseWiFiAssertion()();
  }
}

Swift::Void __swiftcall NetworkWiFiManager.releaseWiFiAssertion()()
{
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  v0 = type metadata accessor for Logger();
  v1 = OUTLINED_FUNCTION_17(v0, static Logger.siriNetwork);
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_223515000, v1, v2, "NetworkWiFiManager - Assertion: releaseWiFiAssertion", v3, 2u);
    OUTLINED_FUNCTION_12();
  }

  NetworkWiFiManager.setWiFiManagerClientType(_:)(0);
}

uint64_t Connection.getSNConnectionMetrics(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3();
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  v6 = OUTLINED_FUNCTION_32();
  outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(v6);
  Connection.getConnectionMetrics(_:with:)();
}

void Connection.getConnectionMetrics(_:with:)()
{
  OUTLINED_FUNCTION_46();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = OUTLINED_FUNCTION_0_0(v9);
  v70 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_1();
  v16 = v15 - v14;
  v17 = type metadata accessor for DispatchQoS();
  v18 = OUTLINED_FUNCTION_0_0(v17);
  v68 = v19;
  v69 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_7();
  v22 = type metadata accessor for String.Encoding();
  v23 = OUTLINED_FUNCTION_11_1(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_0_1();
  dispatch_queue_get_label(0);
  static String.Encoding.utf8.getter();
  v26 = String.init(cString:encoding:)();
  v28 = v27;
  if ((v8 & 1) == 0)
  {

    v37 = *&v2[OBJC_IVAR___SNConnectionInternal_connectionQueue];
    OUTLINED_FUNCTION_109();
    v38 = swift_allocObject();
    v38[2] = v2;
    v38[3] = v6;
    v38[4] = v4;
    v72[4] = partial apply for closure #2 in Connection.getConnectionMetrics(_:with:);
    OUTLINED_FUNCTION_17_8(v38);
    v72[1] = 1107296256;
    OUTLINED_FUNCTION_3_5();
    v72[2] = v39;
    v72[3] = &block_descriptor_43_0;
    v40 = _Block_copy(v72);
    v41 = v2;
    outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(v6);
    static DispatchQoS.unspecified.getter();
    v71[0] = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_1_24();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(v42, v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x223DE2460](0, v1, v16, v40);
    _Block_release(v40);
    (*(v70 + 8))(v16, v9);
    (*(v68 + 8))(v1, v69);

    goto LABEL_26;
  }

  v29 = v26;
  v30 = *&v2[OBJC_IVAR___SNConnectionInternal_connectionQueue];
  v31 = OS_dispatch_queue.label.getter();
  if (v28)
  {
    v33 = v29 == v31 && v28 == v32;
    v34 = v4;
    v35 = v6;
    if (v33)
    {
      goto LABEL_17;
    }

    v36 = OUTLINED_FUNCTION_72_1();

    if (v36)
    {
      goto LABEL_18;
    }
  }

  else
  {

    v34 = v4;
    v35 = v6;
  }

  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_58(v44, static Logger.siriNetwork);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();
  v47 = OUTLINED_FUNCTION_16_0();
  if (os_log_type_enabled(v47, v48))
  {
    OUTLINED_FUNCTION_17_5();
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_223515000, v45, v46, "Connection - Get Connection Metrics: synchronously", v49, 2u);
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
  }

  OUTLINED_FUNCTION_109();
  v50 = swift_allocObject();
  v50[2] = v2;
  v50[3] = v35;
  v50[4] = v34;
  OUTLINED_FUNCTION_3();
  v51 = swift_allocObject();
  *(v51 + 16) = partial apply for closure #1 in Connection.getConnectionMetrics(_:with:);
  *(v51 + 24) = v50;
  v72[4] = thunk for @callee_guaranteed () -> ()partial apply;
  OUTLINED_FUNCTION_17_8(v51);
  v72[1] = 1107296256;
  OUTLINED_FUNCTION_5_9();
  v72[2] = v52;
  v72[3] = &block_descriptor_53;
  v53 = _Block_copy(v72);
  v54 = v2;
  outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(v35);

  dispatch_sync(v30, v53);
  _Block_release(v53);
  LOBYTE(v53) = swift_isEscapingClosureAtFileLocation();

  if (v53)
  {
    __break(1u);
LABEL_17:

LABEL_18:
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v55, static Logger.siriNetwork);
    v56 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    v57 = OUTLINED_FUNCTION_16_0();
    if (os_log_type_enabled(v57, v58))
    {
      OUTLINED_FUNCTION_17_5();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_52_5();
      _os_log_impl(v59, v60, v61, v62, v63, 2u);
      v64 = OUTLINED_FUNCTION_2_0();
      MEMORY[0x223DE38F0](v64);
    }

    if (Connection.activeOrAnyPendingConnection()())
    {
      v65 = OBJC_IVAR___SNConnectionInternal_connectionMethodUsedHistory;
      OUTLINED_FUNCTION_8();
      swift_beginAccess();
      v66 = *&v2[v65];

      BackgroundConnection.getConnectionMetrics(connectionMethodHistory:with:)(v67);
    }

    else if (v35)
    {
      _s11SiriNetwork17ConnectionMetricsVSgWOi0_(v72);
      memcpy(v71, v72, 0x599uLL);
      v35(v71);
    }
  }

LABEL_26:
  OUTLINED_FUNCTION_47();
}

uint64_t outlined destroy of WiFiRecord?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork10WiFiRecordVSgMd, &_s11SiriNetwork10WiFiRecordVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of MessageCenterActorWrapper(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_13_4(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_14_3();
  v8(v7);
  return a2;
}

uint64_t _s11SiriNetwork25MessageCenterActorWrapperVWObTm_0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_53_1();
  v5 = v4(v3);
  OUTLINED_FUNCTION_71(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_14_3();
  v9(v8);
  return a2;
}

uint64_t OUTLINED_FUNCTION_118()
{
}

BOOL OUTLINED_FUNCTION_118_0()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1 & 1, v0);
}

uint64_t OUTLINED_FUNCTION_124@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return outlined init with copy of AsyncStream<MessageCenterEventProtocol>?(v4 + a3, v3, a1, a2);
}

void *OUTLINED_FUNCTION_124_0()
{

  return memcpy(&STACK[0x860], &STACK[0x10C8], 0x599uLL);
}

id OUTLINED_FUNCTION_128()
{
  v2 = STACK[0x440];
  v3 = STACK[0x448];
  v4 = STACK[0x450];

  return v0;
}

uint64_t OUTLINED_FUNCTION_97_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_97_1@<X0>(uint64_t a1@<X8>)
{
  v5 = *(*(v1 + 48) + 8 * (a1 | (v3 << 6)));
  v6 = *(v2 + 40);

  return Hasher.init(_seed:)();
}

uint64_t closure #2 in Connection.getConnectionMetrics(_:with:)(uint64_t a1, uint64_t (*a2)(_BYTE *))
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
    *v7 = 0;
    _os_log_impl(&dword_223515000, v5, v6, "Connection - Get Connection Metrics: async", v7, 2u);
    MEMORY[0x223DE38F0](v7, -1, -1);
  }

  result = Connection.activeOrAnyPendingConnection()();
  if (result)
  {
    v9 = OBJC_IVAR___SNConnectionInternal_connectionMethodUsedHistory;
    swift_beginAccess();
    v10 = *(a1 + v9);

    BackgroundConnection.getConnectionMetrics(connectionMethodHistory:with:)(v11);
  }

  else if (a2)
  {
    _s11SiriNetwork17ConnectionMetricsVSgWOi0_(__src);
    memcpy(v12, __src, 0x599uLL);
    return a2(v12);
  }

  return result;
}

uint64_t BackgroundConnection.getConnectionMetrics(connectionMethodHistory:with:)(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](a1);
  v3 = v1;
  v5 = v4;
  v88 = v6;
  v7 = *&v2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork10WiFiRecordVSgMd, &_s11SiriNetwork10WiFiRecordVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v85 - v10;
  v12 = type metadata accessor for WiFiRecord(0);
  v13 = OUTLINED_FUNCTION_71(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_0_1();
  v18 = (v17 - v16);
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_58(v19, static Logger.siriNetwork);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_15_1(v21))
  {
    v22 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_40_2(v22);
    OUTLINED_FUNCTION_40_6();
    _os_log_impl(v23, v24, v25, v26, v27, 2u);
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
  }

  v28 = *(v3 + 1232);
  v29 = __CFADD__(v28, 1);
  v30 = v28 + 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    v94 = v7;
    v7 = COERCE_DOUBLE(v180);
    *(v3 + 1232) = v30;
    v102 = swift_allocObject();
    ConnectionMetrics.init()(v102 + 16);
    _s11SiriNetwork010ConnectionB6ReportVSgWOi0_(v188);
    memcpy(v187, v188, sizeof(v187));
    _s11SiriNetwork25ConnectionInterfaceReportVSgWOi0_(v189);
    result = memcpy(v184, v189, sizeof(v184));
    if (one-time initialization token for sharedNetworkAnalytics == -1)
    {
      goto LABEL_7;
    }
  }

  result = swift_once();
LABEL_7:
  v32 = static NetworkAnalytics.sharedNetworkAnalytics;
  *(*&v7 + 1008) = 1;
  *(*&v7 + 1000) = 1;
  LOBYTE(v179[0]) = 1;
  v178[0] = 1;
  LOBYTE(v177[0]) = 1;
  LOBYTE(v162) = 1;
  v182[0] = 1;
  v181[0] = 1;
  LOBYTE(v180[0]) = 1;
  LOBYTE(v103) = 1;
  *(*&v7 + 992) = 1;
  *(*&v7 + 984) = 1;
  *(*&v7 + 976) = 1;
  *(*&v7 + 968) = 1;
  v33 = 0.0;
  v34 = *(v3 + 1208);
  v35 = *(v3 + 1192);
  v36 = 0.0;
  *(*&v7 + 960) = 1;
  if (v35 < v34)
  {
    v36 = v34 - v35;
    *(*&v7 + 992) = 0;
  }

  v37 = *(v3 + 1216);
  if (v35 < v37)
  {
    v33 = v37 - v35;
    *(*&v7 + 984) = 0;
  }

  v99 = *(v3 + 1224);
  if (HIDWORD(v99))
  {
    __break(1u);
    goto LABEL_36;
  }

  v87 = v5;
  v97 = LOBYTE(v180[0]);
  v98 = v103;
  *(*&v7 + 1008) = 0;
  v38 = *(v3 + 1144);
  v96 = v32;
  if (v38)
  {
    v39 = *&v38[OBJC_IVAR___SNNetworkManagerInternal_carrierName];
    v100 = *&v38[OBJC_IVAR___SNNetworkManagerInternal_carrierName + 8];
    v101 = v39;

    v40 = v32;
    v41 = v38;

    v42 = 0.0;
    if ((v41[OBJC_IVAR___SNNetworkManagerInternal_lastSignalStrength + 8] & 1) == 0)
    {
      v42 = *&v41[OBJC_IVAR___SNNetworkManagerInternal_lastSignalStrength];
      *(*&v7 + 1000) = 0;
    }

    v43 = *&v41[OBJC_IVAR___SNNetworkManagerInternal_networkWiFiManager];
    NetworkWiFiManager.getWiFiRecord()(v11);

    if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
    {
      outlined destroy of NetworkConnectionProtocol?(v11, &_s11SiriNetwork10WiFiRecordVSgMd, &_s11SiriNetwork10WiFiRecordVSgMR);
      v44 = 0;
      v45 = 0;
      LODWORD(v38) = 0;
      v46 = 0.0;
    }

    else
    {
      _s11SiriNetwork25MessageCenterActorWrapperVWObTm_0(v11, v18);
      *(*&v7 + 968) = 0;
      v95 = vcvtq_f64_s64(*v18);
      *(*&v7 + 976) = 0;
      v46 = v18[1].i64[0];
      *(*&v7 + 960) = 0;
      LODWORD(v38) = v18[3].u8[8];
      v44 = v18[2].i64[1];
      v45 = v18[3].i64[0];

      outlined destroy of WiFiRecord(v18);
    }

    v32 = v96;
    v49 = v100;
    v48 = v101;
  }

  else
  {
    v47 = v32;
    v48 = 0;
    v49 = 0;
    v44 = 0;
    v45 = 0;
    v42 = 0.0;
    v46 = 0.0;
  }

  LODWORD(v180[0]) = v99;
  BYTE4(v180[0]) = *(*&v7 + 1008);
  *(*&v7 + 5) = v202;
  HIBYTE(v180[0]) = v203;
  v100 = v49;
  v101 = v48;
  v180[1] = v48;
  v180[2] = v49;
  *&v180[3] = v42;
  LOBYTE(v180[4]) = *(*&v7 + 1000);
  *(*&v7 + 33) = *v201;
  HIDWORD(v180[4]) = *&v201[3];
  v180[5] = v44;
  v180[6] = v45;
  LODWORD(v180[11]) = 0;
  *(*&v7 + 72) = 0u;
  *(*&v7 + 56) = 0u;
  BYTE4(v180[11]) = 1;
  *(*&v7 + 93) = v199;
  HIBYTE(v180[11]) = v200;
  LODWORD(v180[12]) = 0;
  BYTE4(v180[12]) = 1;
  *(*&v7 + 101) = v197;
  HIBYTE(v180[12]) = v198;
  v180[13] = MEMORY[0x277D84F98];
  memset(&v180[14], 0, 24);
  LOBYTE(v180[17]) = 1;
  HIDWORD(v180[17]) = *&v196[3];
  *(*&v7 + 137) = *v196;
  v180[18] = 0;
  LOBYTE(v180[19]) = 1;
  HIDWORD(v180[19]) = *&v195[3];
  *(*&v7 + 153) = *v195;
  v180[20] = 0;
  LOBYTE(v180[21]) = 1;
  HIDWORD(v180[21]) = *&v194[3];
  *(*&v7 + 169) = *v194;
  v180[22] = 0;
  LOBYTE(v180[23]) = 1;
  HIDWORD(v180[23]) = *&v193[3];
  *(*&v7 + 185) = *v193;
  v180[24] = 0;
  LOBYTE(v180[25]) = v97;
  HIDWORD(v180[25]) = *&v192[3];
  *(*&v7 + 201) = *v192;
  v180[26] = 0;
  LOBYTE(v180[27]) = v98;
  HIDWORD(v180[27]) = *&v191[3];
  *(*&v7 + 217) = *v191;
  v180[29] = 0;
  v180[28] = 0;
  *&v180[30] = v36;
  v91 = *(*&v7 + 992);
  LOBYTE(v180[31]) = v91;
  HIDWORD(v180[31]) = *&v190[3];
  *(*&v7 + 249) = *v190;
  *&v180[32] = v33;
  v90 = *(*&v7 + 984);
  LOBYTE(v180[33]) = v90;
  v93 = v38;
  BYTE1(v180[33]) = v38;
  OUTLINED_FUNCTION_115_1(v180);
  HIWORD(v180[33]) = v50;
  v89 = v51.f64[0];
  v180[34] = *&v51.f64[0];
  LOBYTE(v180[35]) = *(*&v7 + 976);
  v53 = *(v183 + 3);
  *(v52 + 281) = v183[0];
  HIDWORD(v180[35]) = v53;
  v95 = v51;
  *(v52 + 288) = v51.f64[1];
  LOBYTE(v180[37]) = *(*&v7 + 968);
  OUTLINED_FUNCTION_114_1(v52);
  HIDWORD(v180[37]) = v54;
  *&v180[38] = v46;
  LOBYTE(v180[39]) = *(*&v7 + 960);
  memcpy(v181, v180, 0x139uLL);
  destructiveProjectEnumData for ConnectionConfigurationError(v181);
  OUTLINED_FUNCTION_98_1(v182);
  outlined init with copy of ConnectionNetworkReport(v180, v179);
  outlined destroy of NetworkConnectionProtocol?(v182, &_s11SiriNetwork010ConnectionB6ReportVSgMd, &_s11SiriNetwork010ConnectionB6ReportVSgMR);
  memcpy(v187, v181, sizeof(v187));
  OUTLINED_FUNCTION_40_1();
  outlined init with copy of MessageCenterBrowserProtocol?(v3 + 1096, v179, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
  v55 = v179[3];
  v92 = v45;
  if (v179[3])
  {
    v56 = v179[4];
    __swift_project_boxed_opaque_existential_1(v179, v179[3]);
    v57 = (*(v56 + 40))(v55, v56);
    outlined destroy of NetworkConnectionProtocol?(v179, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
    if (v57)
    {
      v58 = v44;
      result = Double.milliseconds.getter(*(v57 + 24));
      v59 = *(v57 + 16);
      if ((v59 & 0x8000000000000000) != 0)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (HIDWORD(v59))
      {
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v60 = result;
      v61 = PingInfo.numberOfUnacknowledgedPings()();

      if ((v61 & 0x8000000000000000) != 0)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v62 = HIDWORD(v61);
      if (HIDWORD(v61))
      {
LABEL_40:
        __break(1u);
        return result;
      }

      v63 = v60;
      v55 = v59 | (v61 << 32);
      v32 = v96;
      v44 = v58;
    }

    else
    {
      v55 = 0;
      LOBYTE(v62) = 1;
      v63 = 0.0;
      v32 = v96;
    }
  }

  else
  {
    outlined destroy of NetworkConnectionProtocol?(v179, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
    LOBYTE(v62) = 1;
    v63 = 0.0;
  }

  v185 = v62;
  LODWORD(v177[0]) = 0;
  v177[1] = 0;
  v177[2] = 0xE000000000000000;
  v177[3] = 0;
  v177[4] = 0xE000000000000000;
  OUTLINED_FUNCTION_98_1(&v177[5]);
  *(&v177[44] + 1) = *v186;
  HIDWORD(v177[44]) = *&v186[3];
  *&v177[45] = v63;
  v177[46] = v55;
  LOBYTE(v177[47]) = v185;
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_108_1();
  HIDWORD(v177[84]) = v64;
  v177[85] = MEMORY[0x277D84F90];
  v177[86] = MEMORY[0x277D84F90];
  LODWORD(v177[87]) = 4;
  v177[88] = v32;
  memcpy(v178, v177, sizeof(v178));
  destructiveProjectEnumData for ConnectionConfigurationError(v178);
  v65 = v102;
  memcpy(v179, (v102 + 584), 0x2C8uLL);
  memcpy((v102 + 584), v178, 0x2C8uLL);
  outlined init with copy of ConnectionSnapshotReport(v177, &v162);
  outlined destroy of NetworkConnectionProtocol?(v179, &_s11SiriNetwork24ConnectionSnapshotReportVSgMd, &_s11SiriNetwork24ConnectionSnapshotReportVSgMR);
  v66 = *(v65 + 32);
  *(v65 + 32) = v94;

  v67 = *(v3 + 1232);
  if (HIDWORD(v67))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v68 = v95.f64[1];
  v69 = v102;
  *(v102 + 64) = v67;
  *(v69 + 68) = 0;
  if (*(v3 + 1080))
  {
    v94 = v68;
    *&v95.f64[0] = v55;
    v70 = *(v3 + 1088);
    ObjectType = swift_getObjectType();
    OUTLINED_FUNCTION_7_1();
    v71 = swift_allocObject();
    swift_weakInit();
    v72 = swift_allocObject();
    v73 = v102;
    v72[2] = v71;
    v72[3] = v73;
    v74 = v44;
    v76 = v87;
    v75 = v88;
    v72[4] = v88;
    v72[5] = v76;
    v85[0] = *(v70 + 528);
    v85[1] = v70 + 528;
    swift_unknownObjectRetain();

    v77 = v75;
    v44 = v74;
    outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(v77);
    v78 = v70;
    v55 = *&v95.f64[0];
    (v85[0])(partial apply for closure #1 in BackgroundConnection.getConnectionMetrics(connectionMethodHistory:with:), v72, ObjectType, v78);
    v7 = COERCE_DOUBLE(v180);
    v32 = v96;

    swift_unknownObjectRelease();
  }

  v103 = v99;
  v104 = *(*&v7 + 1008);
  v105 = v202;
  v106 = v203;
  v107 = v101;
  v108 = v100;
  v109 = v42;
  v110 = *(*&v7 + 1000);
  *v111 = *v201;
  *&v111[3] = *&v201[3];
  v112 = v44;
  v113 = v92;
  v116 = 0;
  v114 = 0u;
  v115 = 0u;
  v117 = 1;
  v118 = v199;
  v119 = v200;
  v120 = 0;
  v121 = 1;
  v122 = v197;
  v123 = v198;
  v124 = MEMORY[0x277D84F98];
  v125 = 0;
  v126 = 0;
  v127 = 0;
  v128 = 1;
  *&v129[3] = *&v196[3];
  *v129 = *v196;
  v130 = 0;
  v131 = 1;
  *&v132[3] = *&v195[3];
  *v132 = *v195;
  v133 = 0;
  v134 = 1;
  *&v135[3] = *&v194[3];
  *v135 = *v194;
  v136 = 0;
  v137 = 1;
  *&v138[3] = *&v193[3];
  *v138 = *v193;
  v139 = 0;
  v140 = v97;
  *&v141[3] = *&v192[3];
  *v141 = *v192;
  v142 = 0;
  v143 = v98;
  *&v144[3] = *&v191[3];
  *v144 = *v191;
  v145 = 0;
  v146 = 0;
  v147 = v36;
  v148 = v91;
  *&v149[3] = *&v190[3];
  *v149 = *v190;
  v150 = v33;
  v151 = v90;
  v152 = v93;
  OUTLINED_FUNCTION_115_1(&v103);
  v153 = v79;
  v154 = v89;
  v155 = *(*&v7 + 976);
  v81 = *(v183 + 3);
  *(v80 + 281) = v183[0];
  v156 = v81;
  v157 = v82;
  v158 = *(*&v7 + 968);
  OUTLINED_FUNCTION_114_1(v80);
  v159 = v83;
  v160 = v46;
  v161 = *(*&v7 + 960);
  outlined destroy of ConnectionNetworkReport(&v103);
  v162 = 0;
  v163 = 0;
  v164 = 0xE000000000000000;
  v165 = 0;
  v166 = 0xE000000000000000;
  OUTLINED_FUNCTION_98_1(&v167);
  *v168 = *v186;
  *&v168[3] = *&v186[3];
  v169 = v63;
  v170 = v55;
  v171 = v185;
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_108_1();
  v172 = v84;
  v173 = MEMORY[0x277D84F90];
  v174 = MEMORY[0x277D84F90];
  v175 = 4;
  v176 = v32;
  outlined destroy of ConnectionSnapshotReport(&v162);
}

uint64_t sub_22353C0A4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  if (*(v0 + 104))
  {
    v4 = *(v0 + 80);

    v5 = *(v0 + 96);
  }

  if (*(v0 + 448))
  {
    v6 = *(v0 + 120);

    v7 = *(v0 + 136);

    if (*(v0 + 160))
    {

      v8 = *(v0 + 176);

      if (*(v0 + 200) != 1)
      {

        v9 = *(v0 + 216);
      }
    }

    v10 = *(v0 + 448);

    v11 = *(v0 + 456);
  }

  if (*(v0 + 528))
  {
    v12 = *(v0 + 480);

    v13 = *(v0 + 528);

    v14 = *(v0 + 536);

    v15 = *(v0 + 560);
  }

  if (*(v0 + 600))
  {

    v16 = *(v0 + 616);

    if (*(v0 + 728))
    {
      v17 = *(v0 + 640);

      v18 = *(v0 + 672);

      v19 = *(v0 + 688);

      v20 = *(v0 + 704);

      v21 = *(v0 + 728);

      v22 = *(v0 + 744);

      v23 = *(v0 + 856);
    }

    if (*(v0 + 976))
    {

      v24 = *(v0 + 992);

      if (*(v0 + 1016) != 1)
      {

        v25 = *(v0 + 1032);
      }
    }

    v26 = *(v0 + 1264);

    v27 = *(v0 + 1272);
  }

  v28 = *(v0 + 1296);

  v29 = *(v0 + 1312);

  v30 = *(v0 + 1328);

  v31 = *(v0 + 1392);

  return MEMORY[0x2821FE8E8](v0, 1449, 7);
}

uint64_t sub_22353C250()
{
  v1 = v0[2];

  v2 = v0[3];

  if (v0[4])
  {
    v3 = v0[5];
  }

  v4 = OUTLINED_FUNCTION_19_8();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t NetworkWiFiManager.getWiFiRecord()@<X0>(uint64_t a1@<X8>)
{
  v3 = 0x6E776F6E6B6E75;
  v4 = type metadata accessor for WiFiRecord(0);
  v5 = OUTLINED_FUNCTION_71(v4);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v67 = &v63 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork10WiFiRecordVSgMd, &_s11SiriNetwork10WiFiRecordVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v71 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v68 = &v63 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v63 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v63 - v21;
  __swift_storeEnumTagSinglePayload(&v63 - v21, 1, 1, v4);
  v23 = NetworkWiFiManager.currentNetwork()();
  v66 = v10;
  if (v23)
  {
    v24 = MEMORY[0x223DE2070](5394003, 0xE300000000000000);
    OUTLINED_FUNCTION_5_18();
    IntProperty = WiFiNetworkGetIntProperty();

    v69 = WiFiNetworkIsCaptive() != 0;
    v25 = MEMORY[0x223DE2070](4277059, 0xE300000000000000);
    OUTLINED_FUNCTION_5_18();
    v26 = WiFiNetworkGetIntProperty();

    v27 = MEMORY[0x223DE2070](0x45444F4D5F594850, 0xE800000000000000);
    v28 = WiFiNetworkGetIntProperty();

    if ((v28 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(v28))
    {
      v3 = static WiFiPhyModeApple80211.wifiPhyMode(_:)(v28);
      v30 = v29;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }

    __break(1u);
LABEL_35:
    OUTLINED_FUNCTION_0_6();
    goto LABEL_25;
  }

  v69 = 0;
  v26 = 0;
  IntProperty = 0;
  v30 = 0xE700000000000000;
LABEL_6:
  v31 = *(v1 + OBJC_IVAR___SNNetworkWiFiManagerInternal_interface);
  if (!v31)
  {
LABEL_9:

    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    v34 = type metadata accessor for Logger();
    v35 = OUTLINED_FUNCTION_17(v34, static Logger.siriNetwork);
    v36 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_4_20(v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_223515000, v35, v1, "NetworkWiFiManager - WiFiRecord: Not available device to get WiFiRecord", v37, 2u);
      OUTLINED_FUNCTION_12();
    }

    __swift_storeEnumTagSinglePayload(a1, 1, 1, v4);
    return outlined destroy of WiFiRecord?(v22);
  }

  v72 = v4;
  v4 = v31;
  v32 = outlined bridged method (pb) of @objc CWFInterface.ssid()(v4);
  if (v33 >> 60 == 15)
  {

    v4 = v72;
    goto LABEL_9;
  }

  v65 = a1;
  outlined consume of Data?(v32, v33);
  v64 = [v4 RSSI];
  v38 = [v4 CCA];
  v39 = static WiFiPhyModeApple80211.wifiPhyMode(_:)([v4 PHYMode]);
  v41 = v40;
  if (v38)
  {
    v42 = v38;
  }

  else
  {
    v42 = v26;
  }

  v1 = CWFInterface.channelInfo.getter();
  v44 = v43;
  v45 = v39 == 0x6E776F6E6B6E75 && v41 == 0xE700000000000000;
  if (v45 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
  }

  else
  {

    v3 = v39;
    v30 = v41;
  }

  v46 = v72;
  v47 = &v20[v72[10]];
  Date.init()();
  v48 = IntProperty;
  *v20 = v64;
  *(v20 + 1) = v48;
  *(v20 + 2) = v42;
  *(v20 + 3) = v1;
  *(v20 + 4) = v44;
  *(v20 + 5) = v3;
  *(v20 + 6) = v30;
  v20[56] = v69;
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v46);
  outlined assign with take of WiFiRecord?(v20, v22);
  v28 = v65;
  if (one-time initialization token for siriNetwork != -1)
  {
    goto LABEL_35;
  }

LABEL_25:
  v49 = type metadata accessor for Logger();
  v50 = OUTLINED_FUNCTION_17(v49, static Logger.siriNetwork);
  v51 = static os_log_type_t.default.getter();
  v52 = OUTLINED_FUNCTION_4_20(v51);
  v53 = v71;
  if (v52)
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v73 = v55;
    *v54 = 136315138;
    swift_beginAccess();
    v56 = v68;
    outlined init with copy of WiFiRecord?(v22, v68);
    outlined init with copy of WiFiRecord?(v56, v53);
    if (__swift_getEnumTagSinglePayload(v53, 1, v72) != 1)
    {
      v57 = v67;
      outlined init with take of WiFiRecord(v53, v67);
      outlined init with copy of WiFiRecord(v57, v66);
      OUTLINED_FUNCTION_5_18();
      String.init<A>(describing:)();
      outlined destroy of WiFiRecord(v57);
    }

    outlined destroy of WiFiRecord?(v68);
    v58 = OUTLINED_FUNCTION_5_18();
    v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v59, v60);

    *(v54 + 4) = v61;
    _os_log_impl(&dword_223515000, v50, v1, "NetworkWiFiManager - WiFiRecord: %s", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v55);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();

    v28 = v65;
  }

  else
  {
  }

  swift_beginAccess();
  outlined init with copy of WiFiRecord?(v22, v28);
  return outlined destroy of WiFiRecord?(v22);
}

uint64_t sub_22353C8E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = v5 + *(a4 + 40);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
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

uint64_t Connection.activeOrAnyPendingConnection()()
{
  v1 = *(v0 + OBJC_IVAR___SNConnectionInternal_activeBackgroundConnection);
  if (!v1)
  {
    v2 = OBJC_IVAR___SNConnectionInternal_pendingBackgroundConnections;
    OUTLINED_FUNCTION_8();
    swift_beginAccess();
    v3 = *(v0 + v2);

    v1 = specialized Collection.first.getter(v4);

    if (!v1)
    {
      v5 = OBJC_IVAR___SNConnectionInternal_comatoseBackgroundConnections;
      OUTLINED_FUNCTION_8();
      swift_beginAccess();
      v6 = *(v0 + v5);

      v1 = specialized Collection.first.getter(v7);
    }
  }

  return v1;
}

uint64_t NetworkWiFiManager.currentNetwork()()
{
  v1 = *(v0 + OBJC_IVAR___SNNetworkWiFiManagerInternal_wifiManager);
  v2 = WiFiManagerClientCopyDevices();
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      static Array._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }

  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  v4 = type metadata accessor for Logger();
  v5 = OUTLINED_FUNCTION_17(v4, static Logger.siriNetwork);
  v6 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_4_20(v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_223515000, v5, v0, "NetworkWiFiManager - CurrentNetwork: Not available device to get WiFiRecord", v7, 2u);
    OUTLINED_FUNCTION_12();
  }

  return 0;
}

uint64_t outlined bridged method (pb) of @objc CWFInterface.ssid()(void *a1)
{
  v1 = [a1 SSID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t @objc NetworkAnalytics.setNetId(_:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);
}

uint64_t OUTLINED_FUNCTION_52_0()
{

  return swift_arrayDestroy();
}

BOOL OUTLINED_FUNCTION_52_2()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t outlined assign with take of WiFiRecord?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork10WiFiRecordVSgMd, &_s11SiriNetwork10WiFiRecordVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22353CE68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = a1 + *(a3 + 40);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t outlined init with take of WiFiRecord(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WiFiRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of WiFiRecord(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WiFiRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of WiFiRecord(uint64_t a1)
{
  v2 = type metadata accessor for WiFiRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static WiFiPhyModeApple80211.wifiPhyMode(_:)(int a1)
{
  v3 = 0x6E776F6E6B6E75;
  v4 = (a1 & 0x22) == 0;
  if ((a1 & 0x22) != 0)
  {
    v5 = 0x6131312E323038;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if ((a1 & 4) != 0)
  {
    OUTLINED_FUNCTION_1_22();
    v5 = v5 & 0xFFFFFFFFFFFFLL | 0x62000000000000;
  }

  if ((a1 & 8) != 0)
  {

    v5 = 0x6731312E323038;
    if ((a1 & 0x40) == 0)
    {
LABEL_8:
      if ((a1 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_13;
    }
  }

  else if ((a1 & 0x40) == 0)
  {
    goto LABEL_8;
  }

  v5 = 0x6731312E323038;
  if ((a1 & 0x10) == 0)
  {
LABEL_9:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_15;
    }

LABEL_14:
    OUTLINED_FUNCTION_1_22();
    v5 = v5 & 0xFFFFFFFFFFFFLL | 0x6361000000000000;

    goto LABEL_15;
  }

LABEL_13:
  OUTLINED_FUNCTION_1_22();
  v5 = v5 & 0xFFFFFFFFFFFFLL | 0x6E000000000000;

  if ((a1 & 0x80) != 0)
  {
    goto LABEL_14;
  }

LABEL_15:
  if ((a1 & 0x100) != 0)
  {

    v5 = 0x786131312E323038;
  }

  if ((a1 & 0x400) != 0)
  {

    v5 = 0x786131312E323038;
  }

  else
  {
    if (!(!v4 & v1))
    {
      switch(a1)
      {
        case 0:
          goto LABEL_35;
        case 1:
        case 3:
        case 5:
        case 6:
        case 7:
          goto LABEL_27;
        case 2:
          goto LABEL_34;
        case 4:
          OUTLINED_FUNCTION_0_43();
          v3 = 0x62776F6E6B6E75;
          goto LABEL_35;
        case 8:
          goto LABEL_33;
        default:
          JUMPOUT(0);
      }
    }

    switch(a1)
    {
      case 16:
        OUTLINED_FUNCTION_0_43();
        v3 = 0x6E776F6E6B6E75;
        goto LABEL_35;
      case 32:
LABEL_34:
        v3 = 0x6131312E323038;
        goto LABEL_35;
      case 64:
LABEL_33:
        v3 = 0x6731312E323038;
        goto LABEL_35;
      case 128:
        OUTLINED_FUNCTION_0_43();
        v3 = 0x6361776F6E6B6E75;
        goto LABEL_35;
      case 256:
LABEL_28:
        v3 = 0x786131312E323038;
LABEL_35:

        return v3;
    }
  }

LABEL_27:
  if (a1 == 1024)
  {
    goto LABEL_28;
  }

  return v5;
}

uint64_t CWFInterface.channelInfo.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = [v0 channel];
  if (v2)
  {
    v3 = v2;
    if ([v2 channel] < 1)
    {
    }

    else
    {
      v4 = [v3 channel];
      v5 = CWFInterface.frequencyBand.getter();
      [v3 width];
      v1 = static WiFiRecord.channelInfo(channel:frequencyBand:channelInMHz:)(v4, v5, 0xE400000000000000);
    }
  }

  return v1;
}

uint64_t CWFInterface.frequencyBand.getter()
{
  v1 = 2051557183;
  v2 = [v0 channel];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 band];

    if (v4 - 1 <= 2)
    {
      return *&a2ghz[8 * v4 - 8];
    }
  }

  return v1;
}

uint64_t static WiFiRecord.channelInfo(channel:frequencyBand:channelInMHz:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 1)
  {
    return 0x6E776F6E6B6E75;
  }

  _StringGuts.grow(_:)(22);

  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x223DE2180](v5);

  MEMORY[0x223DE2180](10272, 0xE200000000000000);
  MEMORY[0x223DE2180](a2, a3);
  OUTLINED_FUNCTION_4();
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x223DE2180](v6);

  MEMORY[0x223DE2180](695879757, 0xE400000000000000);
  return 0x206C656E6E616843;
}

uint64_t outlined init with copy of WiFiRecord?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork10WiFiRecordVSgMd, &_s11SiriNetwork10WiFiRecordVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t WiFiRecord.debugDescription.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v23 - v4;
  v33[0] = 0x203A69737372;
  v33[1] = 0xE600000000000000;
  v32 = *v0;
  v6 = OUTLINED_FUNCTION_5_22();
  MEMORY[0x223DE2180](v6);

  v30 = v33[1];
  v31 = v33[0];
  v33[0] = 0x203A726E73;
  v33[1] = 0xE500000000000000;
  v32 = v0[1];
  v7 = OUTLINED_FUNCTION_5_22();
  MEMORY[0x223DE2180](v7);

  v28 = v33[1];
  v29 = v33[0];
  v33[0] = 0x203A616363;
  v33[1] = 0xE500000000000000;
  v32 = v0[2];
  v8 = OUTLINED_FUNCTION_5_22();
  MEMORY[0x223DE2180](v8);

  v9 = v33[1];
  v25 = v33[0];
  strcpy(v33, "channelInfo: ");
  HIWORD(v33[1]) = -4864;
  MEMORY[0x223DE2180](v1[3], v1[4]);
  v10 = v33[1];
  v26 = v33[0];
  strcpy(v33, "phyMode: ");
  WORD1(v33[1]) = 0;
  HIDWORD(v33[1]) = -385875968;
  MEMORY[0x223DE2180](v1[5], v1[6]);
  v11 = v33[1];
  v27 = v33[0];
  strcpy(v33, "isCaptive: ");
  HIDWORD(v33[1]) = -352321536;
  if (*(v0 + 56))
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (*(v0 + 56))
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x223DE2180](v12, v13);

  v14 = v33[1];
  v24 = v33[0];
  strcpy(v33, "timestamp: ");
  HIDWORD(v33[1]) = -352321536;
  v15 = *(type metadata accessor for WiFiRecord(0) + 40);
  static Locale.current.getter();
  v16 = type metadata accessor for Locale();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v16);
  v17 = Date.description(with:)();
  v19 = v18;
  outlined destroy of Locale?(v5);
  MEMORY[0x223DE2180](v17, v19);

  v21 = v33[0];
  v20 = v33[1];
  v33[0] = 0;
  v33[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(38);

  strcpy(v33, "WiFiRecord: ");
  BYTE5(v33[1]) = 0;
  HIWORD(v33[1]) = -5120;
  MEMORY[0x223DE2180](v31, v30);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v29, v28);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v25, v9);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v26, v10);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v27, v11);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v24, v14);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v21, v20);

  return v33[0];
}

uint64_t outlined destroy of Locale?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_126()
{
  v2 = *(v0 + 120);

  return swift_unknownObjectRetain();
}

uint64_t getEnumTagSinglePayload for ConnectionNetworkReport(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 313))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 104);
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

uint64_t OUTLINED_FUNCTION_56_3(float a1)
{
  *v1 = a1;
}

uint64_t OUTLINED_FUNCTION_56_4()
{

  return swift_dynamicCast();
}

uint64_t Double.milliseconds.getter(double a1)
{
  v1 = a1 * 1000.0;
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

BOOL OUTLINED_FUNCTION_141()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t get_enum_tag_for_layout_string_11SiriNetwork25ConnectionInterfaceReportVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

Swift::Void __swiftcall NetworkConnectionProvider.updateConnectionMetricsSnapshotReport()()
{
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v1);
  v2 = v0;
  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  outlined init with copy of NetworkConnectionProtocol?(v0 + 16, v91, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
  if (v91[3])
  {
    v3 = OUTLINED_FUNCTION_60_0();
    outlined init with take of RPCOspreyConnectionProtocol(v3, &v90);
    OUTLINED_FUNCTION_95();
    v4 = OUTLINED_FUNCTION_60_0();
    memcpy(v4, (v0 + 56), 0x599uLL);
    if (*(v91[160] + 16))
    {
      OUTLINED_FUNCTION_60_0();
      OUTLINED_FUNCTION_69();
      outlined init with copy of ConnectionMetrics(v5, v6);
    }

    else
    {
      v10 = OUTLINED_FUNCTION_107();
      v12 = *__swift_project_boxed_opaque_existential_1(v10, v11);
      OUTLINED_FUNCTION_60_0();
      OUTLINED_FUNCTION_69();
      outlined init with copy of ConnectionMetrics(v13, v14);
      v15 = NWConnection.getAttemptedEndpoints()();
      v16 = *(v2 + 1336);
      *(v2 + 1336) = v15;
    }

    v17 = OUTLINED_FUNCTION_107();
    v19 = __swift_project_boxed_opaque_existential_1(v17, v18);
    v20 = *(v2 + 2101);
    v21._rawValue = *(v2 + 1336);
    v22 = *v19;

    v23 = NWConnection.getConnectionEdgeID(wasConnected:attemptedEndpoints:)(v20, v21);

    v24 = *(v2 + 1352);
    *(v2 + 1344) = v23;

    memcpy(__dst, (v2 + 1536), 0x204uLL);
    v25 = OUTLINED_FUNCTION_108();
    memcpy(v25, (v2 + 1536), 0x204uLL);
    LOBYTE(v22) = *(v2 + 2100);
    outlined init with copy of ConnectionConfiguration(__dst, v75);
    v26 = OUTLINED_FUNCTION_108();
    v27 = ConnectionMethod.connectionMethodDescription(connectionConfiguration:isMPTCP:)(v26, v22, 1);
    v29 = v28;
    OUTLINED_FUNCTION_69();
    memcpy(v30, v31, 0x204uLL);
    outlined destroy of ConnectionConfiguration(v69);
    v32 = OUTLINED_FUNCTION_107();
    outlined init with copy of RPCOspreyConnectionProtocol(v32, v67);
    v33 = *(v2 + 2101);
    v34 = *(*(v2 + 2144) + OBJC_IVAR___SNNetworkAnalyticsInternal_sequenceNumber);
    _s11SiriNetwork010ConnectionB6ReportVSgWOi0_(__src);
    memcpy(v81, __src, sizeof(v81));
    v83 = 0;
    v82 = 0;
    v84 = 1;
    _s11SiriNetwork25ConnectionInterfaceReportVSgWOi0_(v71);
    memcpy(v85, v71, sizeof(v85));
    v86 = MEMORY[0x277D84F90];
    v88 = 4;
    if (one-time initialization token for sharedNetworkAnalytics != -1)
    {
      OUTLINED_FUNCTION_40_0();
    }

    v89 = static NetworkAnalytics.sharedNetworkAnalytics;
    v76 = v34;
    v77 = 0xD000000000000017;
    v78 = 0x80000002235F7560;
    v79 = 0x6574736575716572;
    v80 = 0xEA0000000000646ELL;
    v35 = static NetworkAnalytics.sharedNetworkAnalytics;
    v87 = static ConnectionTCPInfoMetrics.connectionTCPInfoMetrics(from:wasConnected:)(v67, v33);
    ConnectionSnapshotReport.updateTCPInfoMetrics(connection:wasConnected:connectionMethod:)(v67, v33, v27, v29);

    outlined destroy of NetworkConnectionProtocol?(v67, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
    OUTLINED_FUNCTION_69();
    memcpy(v36, v37, 0x2C8uLL);
    OUTLINED_FUNCTION_69();
    memcpy(v38, v39, 0x2C8uLL);
    destructiveProjectEnumData for ConnectionConfigurationError(v73);
    OUTLINED_FUNCTION_69();
    memcpy(v40, v41, 0x2C8uLL);
    outlined init with copy of ConnectionSnapshotReport(v72, v75);
    outlined destroy of ConnectionSnapshotReport(&v74);
    memcpy(v75, (v2 + 624), sizeof(v75));
    memcpy((v2 + 624), v73, 0x2C8uLL);
    outlined destroy of NetworkConnectionProtocol?(v75, &_s11SiriNetwork24ConnectionSnapshotReportVSgMd, &_s11SiriNetwork24ConnectionSnapshotReportVSgMR);
    v42 = NetworkConnectionProvider.connectionMetrics.modify();
    v44 = v43;
    v45 = OUTLINED_FUNCTION_108();
    OUTLINED_FUNCTION_19_0(v45, v46);
    v47 = OUTLINED_FUNCTION_108();
    OUTLINED_FUNCTION_10_1(v47);
    if (!v48)
    {
      memcpy(v67, v44 + 76, 0x139uLL);
      OUTLINED_FUNCTION_12_0(v67);
      if (!v48)
      {
        v49 = *(v2 + 1496);
        if (v49)
        {
          v50 = (v49 + OBJC_IVAR___SNNetworkManagerInternal_carrierName);
          v52 = *v50;
          v51 = v50[1];
        }

        else
        {
          v52 = 0;
          v53 = 0;
        }

        v54 = v44[78];
        v44[77] = v52;
        v44[78] = v53;
      }
    }

    (v42)(v65, 0);
    v55 = *(v2 + 1496);
    if (v55)
    {
      v56 = v55 + OBJC_IVAR___SNNetworkManagerInternal_lastSignalStrength;
      if ((*(v56 + 8) & 1) == 0)
      {
        v57 = *v56;
        v58 = NetworkConnectionProvider.connectionMetrics.modify();
        v60 = v59;
        OUTLINED_FUNCTION_19_0(v67, v59);
        OUTLINED_FUNCTION_10_1(v67);
        if (!v48)
        {
          memcpy(v65, (v60 + 608), 0x139uLL);
          OUTLINED_FUNCTION_12_0(v65);
          if (!v61)
          {
            *(v60 + 632) = v57;
            *(v60 + 640) = 0;
          }
        }

        (v58)(v66, 0);
      }
    }

    v62 = OUTLINED_FUNCTION_60_0();
    specialized ConnectionProviderProtocol.updateConnectionMetrics(with:completion:)(v62);
    v63 = OUTLINED_FUNCTION_60_0();
    outlined destroy of ConnectionMetrics(v63);
    v64 = OUTLINED_FUNCTION_107();
    __swift_destroy_boxed_opaque_existential_0(v64);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_60_0();
    outlined destroy of NetworkConnectionProtocol?(v7, v8, v9);
  }

  OUTLINED_FUNCTION_47();
}

uint64_t OUTLINED_FUNCTION_54_0()
{
  *(v1 + 14) = v2;
  *(v1 + 22) = v0;
  return *(v3 - 272);
}

void OUTLINED_FUNCTION_54_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t get_enum_tag_for_layout_string_11SiriNetwork24ConnectionTCPInfoMetricsVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t OUTLINED_FUNCTION_103_0()
{
  v2 = *(v1 - 168);
  v3 = *(*(v1 - 176) + 8);
  return v0;
}

uint64_t OUTLINED_FUNCTION_103_1()
{

  return swift_unknownObjectRetain();
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

void static ConnectionTCPInfoMetrics.setConnectionMetricsTCPInfo(_:from:)()
{
  OUTLINED_FUNCTION_46();
  v1 = v0;
  v109 = v2;
  v122 = type metadata accessor for NWInterface.InterfaceType();
  v3 = OUTLINED_FUNCTION_0_0(v122);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_1();
  v121 = v9 - v8;
  v10 = type metadata accessor for NWInterface();
  v11 = OUTLINED_FUNCTION_0_0(v10);
  v123 = v12;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v11);
  v17 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v120 = &v101 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network6NWPathVSgMd, &_s7Network6NWPathVSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v101 - v21;
  if (v1)
  {

    v132[0]._countAndFlagsBits = NWConnection.identifier.getter();
    v103 = dispatch thunk of CustomStringConvertible.description.getter();
    v106 = v23;
    NWConnection.currentPath.getter();
    v24 = type metadata accessor for NWPath();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22, 1, v24);
    v105 = v1;
    if (EnumTagSinglePayload == 1)
    {
      outlined destroy of ConnectionSnapshotReport?(v22, &_s7Network6NWPathVSgMd, &_s7Network6NWPathVSgMR);
LABEL_33:
      v30 = MEMORY[0x277D84F98];
LABEL_34:
      v64 = v109 + 64;
      v65 = 1 << *(v109 + 32);
      v66 = -1;
      if (v65 < 64)
      {
        v66 = ~(-1 << v65);
      }

      v67 = v66 & *(v109 + 64);
      v68 = (v65 + 63) >> 6;

      v69 = 0;
      v119 = MEMORY[0x277D84F90];
      v122 = v68;
LABEL_37:
      v70 = v69;
      if (!v67)
      {
        goto LABEL_39;
      }

      while (1)
      {
        v69 = v70;
LABEL_42:
        v71 = __clz(__rbit64(v67));
        v67 &= v67 - 1;
        v72 = (v69 << 10) | (16 * v71);
        v73 = *(v109 + 56);
        v74 = (*(v109 + 48) + v72);
        v75 = v74[1];
        v121 = *v74;
        v76 = (v73 + v72);
        v78 = *v76;
        v77 = v76[1];
        v123 = *v76;
        switch(v77 >> 62)
        {
          case 1uLL:
            v80 = v78 >> 32;
            if (v78 >> 32 < v78)
            {
              goto LABEL_85;
            }

            v118 = v78;
            v120 = v75;

            outlined copy of Data._Representation(v78, v77);
            v81 = __DataStorage._bytes.getter();
            v79 = v77;
            if (v81)
            {
              v82 = __DataStorage._offset.getter();
              v83 = v118;
              if (__OFSUB__(v118, v82))
              {
                goto LABEL_88;
              }

              v81 += v118 - v82;
            }

            else
            {
              v83 = v118;
            }

            v90 = MEMORY[0x223DE1260]();
            v75 = v120;
            if (!v81)
            {
              goto LABEL_63;
            }

            v89 = v80 - v83;
            if (v90 < v80 - v83)
            {
              v89 = v90;
            }

LABEL_61:
            if (v89 == 424)
            {
              memmove(v124, v81, 0x1A8uLL);
              _sSo8tcp_infoVSgWOi_(v124);
              memcpy(v131, v124, 0x1A9uLL);
            }

            else
            {
LABEL_63:
              _sSo8tcp_infoVSgWOi0_(v131);
            }

            memcpy(v132, v131, 0x1A9uLL);
            ConnectionTCPInfoMetrics.init(tcpInfo:)();
            memcpy(v124, v130, 0xF9uLL);
            v91 = v79;
            if (_s11SiriNetwork24ConnectionTCPInfoMetricsVSgWOg(v124) != 1)
            {
              memcpy(v129, &v124[33], sizeof(v129));

              v68 = v122;
              if (v30[2])
              {
                v120 = specialized __RawDictionaryStorage.find<A>(_:)(v121, v75);
                v93 = v92;

                if (v93)
                {
                  v94 = v120[v30[7]];
                }

                else
                {
                  v94 = 25;
                }

                LODWORD(v120) = v94;
              }

              else
              {

                LODWORD(v120) = 25;
              }

              v95 = v106;

              v128[0] = v121;
              v128[1] = v75;
              v128[2] = v103;
              v128[3] = v95;
              LOBYTE(v128[4]) = v120;
              memcpy(&v128[4] + 1, v129, 0xD8uLL);
              outlined init with copy of ConnectionTCPInfoMetrics(v128, v125);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v98 = *(v119 + 16);
                specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                v119 = v99;
              }

              v96 = *(v119 + 16);
              if (v96 >= *(v119 + 24) >> 1)
              {
                specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                v119 = v100;
              }

              outlined consume of Data._Representation(v123, v91);
              v97 = v119;
              *(v119 + 16) = v96 + 1;
              memcpy((v97 + (v96 << 8) + 32), v128, 0xF9uLL);
              v125[0] = v121;
              v125[1] = v75;
              v125[2] = v103;
              v125[3] = v106;
              v126 = v120;
              memcpy(v127, v129, sizeof(v127));
              outlined destroy of ConnectionTCPInfoMetrics(v125);
              goto LABEL_37;
            }

            outlined consume of Data._Representation(v123, v79);

            v70 = v69;
            v68 = v122;
            if (!v67)
            {
LABEL_39:
              while (1)
              {
                v69 = v70 + 1;
                if (__OFADD__(v70, 1))
                {
                  break;
                }

                if (v69 >= v68)
                {

                  goto LABEL_80;
                }

                v67 = *(v64 + 8 * v69);
                ++v70;
                if (v67)
                {
                  goto LABEL_42;
                }
              }

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
LABEL_88:
              __break(1u);
LABEL_89:
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              JUMPOUT(0x22353ED38);
            }

            return;
          case 2uLL:
            v84 = *(v78 + 16);
            v85 = *(v78 + 24);
            v120 = v75;

            outlined copy of Data._Representation(v78, v77);
            v81 = __DataStorage._bytes.getter();
            if (!v81)
            {
              goto LABEL_51;
            }

            v86 = __DataStorage._offset.getter();
            if (__OFSUB__(v84, v86))
            {
              goto LABEL_87;
            }

            v81 += v84 - v86;
LABEL_51:
            v62 = __OFSUB__(v85, v84);
            v87 = v85 - v84;
            if (v62)
            {
              goto LABEL_86;
            }

            v79 = v77;
            v88 = MEMORY[0x223DE1260]();
            if (v88 >= v87)
            {
              v89 = v87;
            }

            else
            {
              v89 = v88;
            }

            v75 = v120;
            if (!v81)
            {
              goto LABEL_63;
            }

            goto LABEL_61;
          default:
            v79 = v77;

            goto LABEL_63;
        }
      }
    }

    v26 = NWPath.availableInterfaces.getter();
    (*(*(v24 - 8) + 8))(v22, v24);
    v119 = *(v26 + 16);
    if (!v119)
    {

      goto LABEL_33;
    }

    v27 = 0;
    OUTLINED_FUNCTION_9_7();
    v118 = v28;
    v116 = v29 + 32;
    v117 = v29 + 16;
    v115 = (v5 + 88);
    v114 = *MEMORY[0x277CD8CB0];
    v108 = *MEMORY[0x277CD8CA8];
    v107 = *MEMORY[0x277CD8CB8];
    v104 = *MEMORY[0x277CD8CA0];
    v113 = (v29 + 8);
    v101 = (v5 + 8);
    v30 = MEMORY[0x277D84F98];
    v102 = *MEMORY[0x277CD8CC0];
    v111 = v17;
    v112 = v10;
    v110 = v26;
    while (1)
    {
      if (v27 >= *(v26 + 16))
      {
        goto LABEL_82;
      }

      v31 = v123;
      v32 = v120;
      v33 = (*(v123 + 16))(v120, v118 + *(v123 + 72) * v27, v10);
      v34 = MEMORY[0x223DE1820](v33);
      v36 = v35;
      (*(v31 + 32))(v17, v32, v10);
      v37 = v121;
      NWInterface.type.getter();
      v38 = (*v115)(v37, v122);
      if (v38 == v114)
      {
        break;
      }

      if (v38 == v108)
      {
        v42 = OUTLINED_FUNCTION_3_12();
        v43(v42);
        countAndFlagsBits = 1;
      }

      else
      {
        if (v38 == v107)
        {
          if (one-time initialization token for shared != -1)
          {
            OUTLINED_FUNCTION_4_11();
            swift_once();
          }

          NetworkManager.connectionTechnologyForCellularInterface()();
          v44 = OUTLINED_FUNCTION_3_12();
          v45(v44);
          countAndFlagsBits = v132[0]._countAndFlagsBits;
          goto LABEL_22;
        }

        if (v38 == v104)
        {
          v46 = OUTLINED_FUNCTION_3_12();
          v47(v46);
          countAndFlagsBits = 23;
        }

        else
        {
          if (v38 == v102)
          {
            break;
          }

          v48 = OUTLINED_FUNCTION_3_12();
          v49(v48);
          (*v101)(v121, v122);
          countAndFlagsBits = 0;
        }
      }

LABEL_22:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v132[0]._countAndFlagsBits = v30;
      v51 = specialized __RawDictionaryStorage.find<A>(_:)(v34, v36);
      v53 = v30[2];
      v54 = (v52 & 1) == 0;
      v55 = v53 + v54;
      if (__OFADD__(v53, v54))
      {
        goto LABEL_83;
      }

      v56 = v51;
      v57 = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS11SiriNetwork14ConnectionTypeOGMd, &_ss17_NativeDictionaryVySS11SiriNetwork14ConnectionTypeOGMR);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v55))
      {
        v58 = specialized __RawDictionaryStorage.find<A>(_:)(v34, v36);
        if ((v57 & 1) != (v59 & 1))
        {
          goto LABEL_89;
        }

        v56 = v58;
      }

      if (v57)
      {

        v30 = v132[0]._countAndFlagsBits;
        *(*(v132[0]._countAndFlagsBits + 56) + v56) = countAndFlagsBits;
      }

      else
      {
        v30 = v132[0]._countAndFlagsBits;
        *(v132[0]._countAndFlagsBits + 8 * (v56 >> 6) + 64) |= 1 << v56;
        v60 = (v30[6] + 16 * v56);
        *v60 = v34;
        v60[1] = v36;
        *(v30[7] + v56) = countAndFlagsBits;
        v61 = v30[2];
        v62 = __OFADD__(v61, 1);
        v63 = v61 + 1;
        if (v62)
        {
          goto LABEL_84;
        }

        v30[2] = v63;
      }

      ++v27;
      v17 = v111;
      v10 = v112;
      v26 = v110;
      if (v119 == v27)
      {

        goto LABEL_34;
      }
    }

    MEMORY[0x223DE1820]();
    v39 = String.lowercased()();

    v132[0] = v39;
    v131[0] = 0x6365737069;
    v131[1] = 0xE500000000000000;
    lazy protocol witness table accessor for type String and conformance String();
    v40 = StringProtocol.contains<A>(_:)();

    (*v113)(v17, v10);
    if (v40)
    {
      countAndFlagsBits = 24;
    }

    else
    {
      countAndFlagsBits = 0;
    }

    goto LABEL_22;
  }

LABEL_80:
  OUTLINED_FUNCTION_47();
}

void ConnectionTCPInfoMetrics.init(tcpInfo:)()
{
  OUTLINED_FUNCTION_46();
  v1 = v0;
  v74 = 1;
  v73 = 1;
  v72 = 1;
  v71 = 1;
  v70 = 1;
  v69 = 1;
  v68 = 1;
  v67 = 1;
  v66 = 1;
  v65 = 1;
  v64 = 1;
  v63 = 1;
  v62 = 1;
  v61 = 1;
  v60 = 1;
  v59 = 1;
  v58 = 1;
  memcpy(__dst, v2, 0x1A9uLL);
  if (_sSo8tcp_infoVSgWOg(__dst) == 1)
  {
    memset(v22, 0, sizeof(v22));
    v23 = 25;
    v24 = 0;
    v25 = v74;
    v26 = 0;
    v27 = v73;
    v28 = 0;
    v29 = v72;
    v30 = 0;
    v31 = v71;
    v32 = 0;
    v33 = v70;
    v34 = 0;
    v35 = v69;
    v36 = 0;
    v37 = v68;
    v38 = 0;
    v39 = v67;
    v40 = 0;
    v41 = v66;
    v42 = 0;
    v43 = v65;
    v44 = 0;
    v45 = v64;
    v46 = 0;
    v47 = v63;
    v48 = 0;
    v49 = v62;
    v50 = 0;
    v51 = v61;
    v52 = 0;
    v53 = v60;
    v54 = 0;
    v55 = v59;
    v56 = 0;
    v57 = v58;
    outlined destroy of ConnectionTCPInfoMetrics(v22);
    _s11SiriNetwork24ConnectionTCPInfoMetricsVSgWOi0_(__src);
    v3 = v1;
  }

  else
  {
    v16 = __dst[5];
    v17 = __dst[6];
    v18 = __dst[7];
    v4 = __dst[8];
    v19 = __dst[16];
    v20 = v1;
    v5 = *&__dst[17];
    v6 = *&__dst[19];
    v7 = *&__dst[21];
    v8 = *&__dst[23];
    v9 = *&__dst[25];
    v10 = *&__dst[27];
    v11 = *&__dst[29];
    v12 = *&__dst[31];
    v13 = *&__dst[33];
    v15 = LOBYTE(__dst[35]);
    memcpy(__src, __dst, 0x1A8uLL);
    v74 = 0;
    v73 = 0;
    v72 = 0;
    v71 = 0;
    v70 = 0;
    v69 = 0;
    v68 = 0;
    v67 = 0;
    v66 = 0;
    v65 = 0;
    v64 = 0;
    v63 = 0;
    v62 = 0;
    v61 = 0;
    v60 = 0;
    v14 = _So8tcp_infoV_tcpi_tfo_syn_data_acked_getter(__src);
    LOBYTE(__src[2]) = 25;
    *(&__src[2] + 1) = v10;
    LOBYTE(__src[3]) = v74;
    *(&__src[3] + 1) = v7;
    LOBYTE(__src[4]) = v73;
    *(&__src[4] + 1) = v6;
    LOBYTE(__src[5]) = v72;
    *(&__src[5] + 1) = v8;
    LOBYTE(__src[6]) = v71;
    *(&__src[6] + 1) = v11;
    LOBYTE(__src[7]) = v70;
    *(&__src[7] + 1) = v12;
    LOBYTE(__src[8]) = v69;
    *(&__src[8] + 1) = v9;
    LOBYTE(__src[9]) = v68;
    *(&__src[9] + 1) = v5;
    LOBYTE(__src[10]) = v67;
    DWORD1(__src[10]) = v4;
    BYTE8(__src[10]) = v66;
    HIDWORD(__src[10]) = v16;
    LOBYTE(__src[11]) = v65;
    DWORD1(__src[11]) = v17;
    BYTE8(__src[11]) = v64;
    HIDWORD(__src[11]) = v18;
    LOBYTE(__src[12]) = v63;
    *(&__src[12] + 1) = v13;
    LOBYTE(__src[13]) = v62;
    *(&__src[13] + 1) = v19;
    LOBYTE(__src[14]) = v61;
    DWORD1(__src[14]) = v15;
    BYTE8(__src[14]) = v60;
    HIDWORD(__src[14]) = v14;
    BYTE8(__src[15]) = v58;
    v59 = 0;
    memset(__src, 0, 32);
    LOBYTE(__src[15]) = 0;
    DWORD1(__src[15]) = 0;
    destructiveProjectEnumData for ConnectionConfigurationError(__src);
    v3 = v20;
  }

  memcpy(v3, __src, 0xF9uLL);
  OUTLINED_FUNCTION_47();
}

uint64_t _sSo8tcp_infoVSgWOg(uint64_t a1)
{
  if (*(a1 + 424))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s11SiriNetwork010ConnectionB6ReportVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *ConnectionInterfaceReport.init(interface:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NWInterface();
  v5 = OUTLINED_FUNCTION_0_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NWInterface.InterfaceType();
  v13 = OUTLINED_FUNCTION_0_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  v19 = v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s11SiriNetwork24ConnectionTCPInfoMetricsVSgWOi0_(v25);
  v20 = memcpy((a2 + 40), v25, 0xF9uLL);
  *a2 = MEMORY[0x223DE1820](v20);
  *(a2 + 8) = v21;
  v26[0] = 0;
  v26[1] = 0xE000000000000000;
  NWInterface.type.getter();
  _print_unlocked<A, B>(_:_:)();
  (*(v15 + 8))(v19, v12);
  v22 = v26[1];
  *(a2 + 16) = v26[0];
  *(a2 + 24) = v22;
  (*(v7 + 16))(v11, a1, v4);
  ConnectionType.init(fromInterface:)(v11, v26);
  *(a2 + 32) = v26[0];
  v23 = NWInterface.index.getter();
  result = (*(v7 + 8))(a1, v4);
  if ((v23 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v23))
  {
    *(a2 + 36) = v23;
    memcpy(v26, (a2 + 40), 0xF9uLL);
    outlined destroy of ConnectionTCPInfoMetrics?(v26);
    return memcpy((a2 + 40), v25, 0xF9uLL);
  }

  __break(1u);
  return result;
}

uint64_t ConnectionType.init(fromInterface:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for NWInterface.InterfaceType();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  NWInterface.type.getter();
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x277CD8CB0])
  {
LABEL_2:
    MEMORY[0x223DE1820]();
    v10 = String.lowercased()();

    v25 = v10;
    v24[0] = 0x6365737069;
    v24[1] = 0xE500000000000000;
    lazy protocol witness table accessor for type String and conformance String();
    v11 = StringProtocol.contains<A>(_:)();
    v12 = type metadata accessor for NWInterface();
    OUTLINED_FUNCTION_1(v12);
    (*(v13 + 8))(a1);

    if (v11)
    {
      countAndFlagsBits = 24;
    }

    else
    {
      countAndFlagsBits = 0;
    }

    goto LABEL_15;
  }

  if (v9 == *MEMORY[0x277CD8CA8])
  {
    v16 = type metadata accessor for NWInterface();
    OUTLINED_FUNCTION_1(v16);
    result = (*(v17 + 8))(a1);
    countAndFlagsBits = 1;
    goto LABEL_15;
  }

  if (v9 != *MEMORY[0x277CD8CB8])
  {
    if (v9 == *MEMORY[0x277CD8CA0])
    {
      v20 = type metadata accessor for NWInterface();
      OUTLINED_FUNCTION_1(v20);
      result = (*(v21 + 8))(a1);
      countAndFlagsBits = 23;
      goto LABEL_15;
    }

    if (v9 != *MEMORY[0x277CD8CC0])
    {
      v22 = type metadata accessor for NWInterface();
      OUTLINED_FUNCTION_1(v22);
      (*(v23 + 8))(a1);
      result = (*(v5 + 8))(v8, v4);
      countAndFlagsBits = 0;
      goto LABEL_15;
    }

    goto LABEL_2;
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  NetworkManager.connectionTechnologyForCellularInterface()();
  v18 = type metadata accessor for NWInterface();
  OUTLINED_FUNCTION_1(v18);
  result = (*(v19 + 8))(a1);
  countAndFlagsBits = v25._countAndFlagsBits;
LABEL_15:
  *a2 = countAndFlagsBits;
  return result;
}

void *specialized Sequence.first(where:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = *(a2 + 16);
  for (i = (a2 + 32); ; i += 256)
  {
    if (!v6)
    {
      _s11SiriNetwork24ConnectionTCPInfoMetricsVSgWOi0_(__dst);
      v16 = __dst;
      return memcpy(a3, v16, 0xF9uLL);
    }

    memcpy(__dst, i, 0xF9uLL);
    memcpy(v50, i, 0xF9uLL);
    outlined init with copy of ConnectionTCPInfoMetrics(__dst, &v18);
    v8 = a1(v50);
    if (v3)
    {
      OUTLINED_FUNCTION_49_3(v8, v9, v10, v11, v12, v13, v14, v15, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50[0]);
      return outlined destroy of ConnectionTCPInfoMetrics(&v18);
    }

    if (v8)
    {
      break;
    }

    OUTLINED_FUNCTION_49_3(v8, v9, v10, v11, v12, v13, v14, v15, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50[0]);
    outlined destroy of ConnectionTCPInfoMetrics(&v18);
    --v6;
  }

  OUTLINED_FUNCTION_49_3(v8, v9, v10, v11, v12, v13, v14, v15, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50[0]);
  destructiveProjectEnumData for ConnectionConfigurationError(&v18);
  v16 = &v18;
  return memcpy(a3, v16, 0xF9uLL);
}

uint64_t get_enum_tag_for_layout_string_11SiriNetwork010ConnectionB6ReportVSg(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for ConnectionSnapshotReport(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 712))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

Swift::String_optional __swiftcall NWConnection.getConnectionEdgeID(wasConnected:attemptedEndpoints:)(Swift::Bool wasConnected, Swift::OpaquePointer attemptedEndpoints)
{
  if (wasConnected && (MEMORY[0x223DE1A50](), v3 = nw_connection_copy_connected_remote_endpoint(), swift_unknownObjectRelease(), v3))
  {
    nw_endpoint_get_description();
    v4 = String.init(cString:)();
    v6 = v5;
    v7 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v7 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      v8 = v4;
    }

    else
    {

      v6 = 0x80000002235F7130;
      v8 = 0xD000000000000012;
    }

    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.siriNetwork);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v33 = v23;
      *v22 = 136315138;

      v24 = String.init<A>(describing:)();
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v33);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_223515000, v20, v21, "SiriNetwork - Report: Connection EdgeID: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v9 = *(attemptedEndpoints._rawValue + 2);
    if (v9)
    {
      v33 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
      v10 = v33;
      v11 = (attemptedEndpoints._rawValue + 40);
      v30 = v9;
      do
      {
        v31 = *(v11 - 1);
        v32 = *v11;

        v12 = String.init<A>(_:)();
        v14 = v13;
        v33 = v10;
        v16 = *(v10 + 16);
        v15 = *(v10 + 24);
        if (v16 >= v15 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v15 > 1, v16 + 1, 1);
          v10 = v33;
        }

        *(v10 + 16) = v16 + 1;
        v17 = v10 + 16 * v16;
        *(v17 + 32) = v12;
        *(v17 + 40) = v14;
        v11 += 2;
        --v9;
      }

      while (v9);
      v9 = v30;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v8 = BidirectionalCollection<>.joined(separator:)();
    v6 = v18;

    if (!v9)
    {

      v6 = 0xEF656C62616C6961;
      v8 = 0x76616E5572656570;
    }
  }

  v27 = v8;
  v28 = v6;
  result.value._object = v28;
  result.value._countAndFlagsBits = v27;
  return result;
}

uint64_t ConnectionMethod.connectionMethodDescription(connectionConfiguration:isMPTCP:)(uint64_t a1, char a2, char a3)
{
  v4 = 7365492;
  v5 = *(a1 + 313);
  v6 = *(a1 + 392);
  switch(a3)
  {
    case 1:
      if (*(a1 + 408) == 1 || *(a1 + 513) == 5)
      {
        goto LABEL_7;
      }

      v10 = MEMORY[0x277D47CD0];
      v11 = *(a1 + 513);
      switch(*(a1 + 513))
      {
        case 1:
          break;
        case 2:
          v10 = MEMORY[0x277D47CB8];
          break;
        case 3:
          v10 = MEMORY[0x277D47CC0];
          break;
        case 4:
          v10 = MEMORY[0x277D47CC8];
          break;
        default:
          goto LABEL_7;
      }

      v12 = MEMORY[0x277D47CB8];
      v13 = *v10;
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;
      v17 = *v12;
      if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v18)
      {
        OUTLINED_FUNCTION_0_14();
      }

      else
      {
        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v20)
        {
          OUTLINED_FUNCTION_0_14();
        }

        else
        {
LABEL_7:
          v8 = 0x706374706DLL;
          if ((a2 & 1) == 0)
          {
            v8 = 7365492;
          }

          v9 = 0xD000000000000010;
          if (a2)
          {
            v9 = 0xD000000000000012;
          }

          if (((v6 != 0) & v5) == 1)
          {
            return v9;
          }

          else
          {
            return v8;
          }
        }
      }

      return v4;
    case 2:
      return 1919247728;
    case 3:
      return 0x796E6163737574;
    default:
      return v4;
  }
}

uint64_t outlined init with copy of NetworkConnectionProtocol?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<Int8>, @guaranteed OS_xpc_object) -> (@unowned Bool)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  swift_unknownObjectRetain();
  LOBYTE(v5) = v6(a2, a3);
  swift_unknownObjectRelease();
  return v5 & 1;
}

uint64_t partial apply for thunk for @callee_guaranteed (@unowned UnsafePointer<Int8>, @guaranteed OS_xpc_object) -> (@unowned Bool)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)()
{
  OUTLINED_FUNCTION_46();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = OUTLINED_FUNCTION_78_0(v8, v6, v4);
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v11);
  OUTLINED_FUNCTION_2_19(v12, v13);
  if (v16)
  {
    __break(1u);
    goto LABEL_13;
  }

  v17 = v14;
  v18 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS10Foundation4DataVGMd, &_ss17_NativeDictionaryVySS10Foundation4DataVGMR);
  if (!OUTLINED_FUNCTION_118_0())
  {
    goto LABEL_5;
  }

  v19 = *v0;
  v20 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v3);
  if ((v18 & 1) != (v21 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v17 = v20;
LABEL_5:
  v22 = *v1;
  if (v18)
  {
    v23 = (v22[7] + 16 * v17);
    v24 = *v23;
    v25 = v23[1];
    *v23 = v9;
    v23[1] = v7;
    OUTLINED_FUNCTION_47();

    return outlined consume of Data._Representation(v26, v27);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v17, v5, v3, v9, v7, v22);
    OUTLINED_FUNCTION_47();
  }
}

{
  OUTLINED_FUNCTION_46();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = OUTLINED_FUNCTION_78_0(v8, v6, v4);
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v11);
  OUTLINED_FUNCTION_2_19(v12, v13);
  if (v16)
  {
    __break(1u);
    goto LABEL_13;
  }

  v17 = v14;
  v18 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVyS2SGMd, &_ss17_NativeDictionaryVyS2SGMR);
  if (!OUTLINED_FUNCTION_118_0())
  {
    goto LABEL_5;
  }

  v19 = *v0;
  v20 = OUTLINED_FUNCTION_88_0();
  v22 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v21);
  if ((v18 & 1) != (v23 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v17 = v22;
LABEL_5:
  v24 = *v1;
  if (v18)
  {
    v25 = (v24[7] + 16 * v17);
    v26 = v25[1];
    *v25 = v9;
    v25[1] = v7;
    OUTLINED_FUNCTION_47();
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v17, v5, v3, v9, v7, v24);
    OUTLINED_FUNCTION_47();
  }
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
}

{
  OUTLINED_FUNCTION_46();
  v5 = v4;
  v7 = v6;
  v11 = OUTLINED_FUNCTION_20_4(v8, v9, v10);
  OUTLINED_FUNCTION_2_19(v11, v12);
  if (v13)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v7, v5);
  if (OUTLINED_FUNCTION_28_4())
  {
    OUTLINED_FUNCTION_95_0();
    OUTLINED_FUNCTION_16_8();
    if (!v15)
    {
      goto LABEL_14;
    }

    v3 = v14;
  }

  if (v2)
  {
    v16 = *(*v1 + 56);
    v17 = *(v16 + 8 * v3);
    *(v16 + 8 * v3) = v0;
    OUTLINED_FUNCTION_47();
  }

  else
  {
    v20 = OUTLINED_FUNCTION_52_3();
    specialized _NativeDictionary._insert(at:key:value:)(v20, v21, v22, v23, v24);
    OUTLINED_FUNCTION_47();
  }
}

uint64_t _s11SiriNetwork24ConnectionTCPInfoMetricsVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t ConnectionTCPInfoMetrics.debugDescription.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v85 = *(v0 + 40);
  v6 = *(v0 + 48);
  v82 = *(v0 + 56);
  v80 = *(v0 + 64);
  v76 = *(v0 + 72);
  v74 = *(v0 + 80);
  v72 = *(v0 + 88);
  v70 = *(v0 + 96);
  v65 = *(v0 + 104);
  v63 = *(v0 + 112);
  v61 = *(v0 + 120);
  v59 = *(v0 + 128);
  v55 = *(v0 + 136);
  v53 = *(v0 + 144);
  v50 = *(v0 + 152);
  v48 = *(v0 + 160);
  v43 = *(v0 + 164);
  v41 = *(v0 + 168);
  v38 = *(v0 + 176);
  v39 = *(v0 + 172);
  v45 = *(v0 + 184);
  v46 = *(v0 + 180);
  v97[0] = 0x6361667265746E69;
  v57 = *(v0 + 188);
  if (v1)
  {
    v7 = v2;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  v52 = *(v0 + 192);
  v68 = *(v0 + 200);
  v67 = *(v0 + 208);
  v79 = *(v0 + 216);
  v78 = *(v0 + 224);
  v89 = *(v0 + 232);
  v90 = *(v0 + 228);
  v91 = *(v0 + 240);
  v92 = *(v0 + 236);
  v97[1] = 0xEA00000000002065;
  if (v1)
  {
    v8 = v1;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  MEMORY[0x223DE2180](v7, v8);

  v95 = v97[0];
  v96 = v97[1];
  _StringGuts.grow(_:)(17);

  v97[0] = 0x697463656E6E6F63;
  v97[1] = 0xEF20657079546E6FLL;
  if (v5 == 25)
  {
    v9 = 0x6E776F6E6B6E75;
    v10 = 0xE700000000000000;
  }

  else
  {
    v9 = ConnectionType.stringRawValue.getter();
    v10 = v11;
  }

  MEMORY[0x223DE2180](v9, v10);

  v93 = v97[1];
  v94 = v97[0];
  strcpy(v97, "connection ");
  HIDWORD(v97[1]) = -352321536;
  if (v3)
  {
    v12 = v4;
  }

  else
  {
    v12 = 0x6E776F6E6B6E75;
  }

  if (v3)
  {
    v13 = v3;
  }

  else
  {
    v13 = 0xE700000000000000;
  }

  MEMORY[0x223DE2180](v12, v13);

  v87 = v97[1];
  v88 = v97[0];
  _StringGuts.grow(_:)(16);

  strcpy(v97, "bytesReceived ");
  HIBYTE(v97[1]) = -18;
  dispatch thunk of CustomStringConvertible.description.getter();
  OUTLINED_FUNCTION_6_7();

  v86 = v97[0];
  v84 = v97[1];
  OUTLINED_FUNCTION_5_0();
  v97[0] = 0xD000000000000013;
  v97[1] = v14;
  v15 = v82;
  if (v80)
  {
    v15 = 0;
  }

  OUTLINED_FUNCTION_1_6(v15);
  OUTLINED_FUNCTION_6_7();

  v81 = v97[1];
  v83 = v97[0];
  strcpy(v97, "bytesSent ");
  BYTE3(v97[1]) = 0;
  HIDWORD(v97[1]) = -369098752;
  v16 = v76;
  if (v74)
  {
    v16 = 0;
  }

  OUTLINED_FUNCTION_1_6(v16);
  OUTLINED_FUNCTION_6_7();

  v75 = v97[1];
  v77 = v97[0];
  strcpy(v97, "bytesUnacked ");
  HIWORD(v97[1]) = -4864;
  v17 = v72;
  if (v70)
  {
    v17 = 0;
  }

  OUTLINED_FUNCTION_1_6(v17);
  OUTLINED_FUNCTION_6_7();

  v71 = v97[1];
  v73 = v97[0];
  OUTLINED_FUNCTION_5_0();
  v97[0] = 0xD000000000000017;
  v97[1] = v18;
  v19 = v65;
  if (v63)
  {
    v19 = 0;
  }

  OUTLINED_FUNCTION_1_6(v19);
  OUTLINED_FUNCTION_6_7();

  v64 = v97[1];
  v66 = v97[0];
  OUTLINED_FUNCTION_5_0();
  v97[0] = 0xD000000000000018;
  v97[1] = v20;
  v21 = v61;
  if (v59)
  {
    v21 = 0;
  }

  OUTLINED_FUNCTION_1_6(v21);
  OUTLINED_FUNCTION_6_7();

  v60 = v97[1];
  v62 = v97[0];
  OUTLINED_FUNCTION_5_0();
  v97[0] = 0xD000000000000010;
  v97[1] = v22;
  v23 = v55;
  if (v53)
  {
    v23 = 0;
  }

  OUTLINED_FUNCTION_1_6(v23);
  OUTLINED_FUNCTION_6_7();

  v54 = v97[1];
  v56 = v97[0];
  strcpy(v97, "packetsSent ");
  BYTE5(v97[1]) = 0;
  HIWORD(v97[1]) = -5120;
  v24 = v50;
  if (v48)
  {
    v24 = 0;
  }

  OUTLINED_FUNCTION_1_6(v24);
  OUTLINED_FUNCTION_6_7();

  v49 = v97[1];
  v51 = v97[0];
  strcpy(v97, "rttBest ");
  BYTE1(v97[1]) = 0;
  WORD1(v97[1]) = 0;
  HIDWORD(v97[1]) = -402653184;
  dispatch thunk of CustomStringConvertible.description.getter();
  OUTLINED_FUNCTION_9_4();

  v42 = v97[1];
  v44 = v97[0];
  strcpy(v97, "rttCurrent ");
  HIDWORD(v97[1]) = -352321536;
  OUTLINED_FUNCTION_2_3(v39);
  OUTLINED_FUNCTION_9_4();

  v25 = v97[1];
  v40 = v97[0];
  strcpy(v97, "rttSmoothed ");
  HIWORD(v97[1]) = -5120;
  OUTLINED_FUNCTION_2_3(v46);
  OUTLINED_FUNCTION_9_4();

  v26 = v97[1];
  v47 = v97[0];
  strcpy(v97, "rttVariance ");
  HIWORD(v97[1]) = -5120;
  dispatch thunk of CustomStringConvertible.description.getter();
  OUTLINED_FUNCTION_9_4();

  v27 = v97[1];
  v58 = v97[0];
  strcpy(v97, "sendBandwidth ");
  HIBYTE(v97[1]) = -18;
  v28 = v68;
  if (v67)
  {
    v28 = 0;
  }

  v29 = OUTLINED_FUNCTION_1_6(v28);
  MEMORY[0x223DE2180](v29);

  v30 = v97[1];
  v69 = v97[0];
  OUTLINED_FUNCTION_5_0();
  v97[0] = 0xD000000000000010;
  v97[1] = v31;
  v32 = v79;
  if (v78)
  {
    v32 = 0;
  }

  v33 = OUTLINED_FUNCTION_1_6(v32);
  MEMORY[0x223DE2180](v33);

  v34 = v97[1];
  v35 = OUTLINED_FUNCTION_2_3(v90);
  MEMORY[0x223DE2180](v35);

  OUTLINED_FUNCTION_5_0();
  v97[1] = v36;
  OUTLINED_FUNCTION_2_3(v92);
  OUTLINED_FUNCTION_6_7();

  _StringGuts.grow(_:)(131);
  MEMORY[0x223DE2180](0xD000000000000037, 0x80000002235F70E0);
  MEMORY[0x223DE2180](v95, v96);

  MEMORY[0x223DE2180](10272, 0xE200000000000000);
  MEMORY[0x223DE2180](v88, v87);

  MEMORY[0x223DE2180](2112041, 0xE300000000000000);
  MEMORY[0x223DE2180](v94, v93);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v86, v84);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v83, v81);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v77, v75);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v73, v71);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v66, v64);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v62, v60);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v56, v54);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v51, v49);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v44, v42);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v40, v25);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v47, v26);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v58, v27);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v69, v30);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](v97[0], v34);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](0x61727465526E7973, 0xEF207374696D736ELL);

  OUTLINED_FUNCTION_4();
  MEMORY[0x223DE2180](0xD000000000000010, v97[1]);

  MEMORY[0x223DE2180](93, 0xE100000000000000);
  return 0;
}

uint64_t outlined destroy of ConnectionTCPInfoMetrics?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork24ConnectionTCPInfoMetricsVSgMd, _s11SiriNetwork24ConnectionTCPInfoMetricsVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for ConnectionTCPInfoMetrics(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 249))
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

void *OUTLINED_FUNCTION_19_0(void *a1, uint64_t a2)
{
  v3 = (a2 + 568);

  return memmove(a1, v3, 0x2C8uLL);
}

void OUTLINED_FUNCTION_19_2(CFStringRef value)
{

  CFHTTPMessageSetHeaderFieldValue(v2, v1, value);
}

uint64_t OUTLINED_FUNCTION_19_7()
{

  return swift_bridgeObjectRelease_n();
}

void OUTLINED_FUNCTION_19_9()
{
}

void OUTLINED_FUNCTION_36(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_36_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_36_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_36_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *(v17 + v18) = a17;

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_36_5()
{

  return swift_beginAccess();
}

SiriNetwork::ConnectionQualityReport __swiftcall NetworkManager.currentConnectionQualityReport()()
{
  v1 = OBJC_IVAR___SNNetworkManagerInternal_lockConnectionQuality;
  [*(v0 + OBJC_IVAR___SNNetworkManagerInternal_lockConnectionQuality) lock];
  v2 = *(v0 + OBJC_IVAR___SNNetworkManagerInternal_connectionQualityReport);
  v3 = *(v0 + OBJC_IVAR___SNNetworkManagerInternal_connectionQualityReport + 1);
  v4 = *(v0 + OBJC_IVAR___SNNetworkManagerInternal_connectionQualityReport + 2);
  v5 = *(v0 + OBJC_IVAR___SNNetworkManagerInternal_connectionQualityReport + 3);
  [*(v0 + v1) unlock];
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.siriNetwork);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    v11 = String.init<A>(describing:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v15);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_223515000, v7, v8, "NetworkManager - PerformanceFeed: Current connection quality report: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x223DE38F0](v10, -1, -1);
    MEMORY[0x223DE38F0](v9, -1, -1);
  }

  return (v2 | (v3 << 8) | (v4 << 16) | (v5 << 24));
}

uint64_t specialized ConnectionProviderProtocol.updateConnectionMetrics(with:completion:)(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](a1);
  v4 = v3;
  v5 = v2;
  v90 = *(v2 + 16);
  v6 = v90;
  v89 = *(v2 + 24);
  swift_beginAccess();
  *(v1 + 104) = *(v5 + 48);
  *(v1 + 108) = *(v5 + 52);
  v7 = *(v1 + 72);
  *(v1 + 72) = v6;
  outlined init with copy of NetworkConnectionProtocol?(&v90, v85, &_sSaySSGMd, &_sSaySSGMR);
  outlined init with copy of NetworkConnectionProtocol?(&v89, v85, &_sSSSgMd, &_sSSSgMR);
  v8 = *(v1 + 88);
  *(v1 + 80) = v89;

  memcpy(v112, (v1 + 624), 0x2C8uLL);
  if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v112) == 1)
  {
    _s11SiriNetwork010ConnectionB6ReportVSgWOi0_(v83);
    memcpy(v82, v83, 0x139uLL);
    LOBYTE(v100[0]) = 1;
    _s11SiriNetwork25ConnectionInterfaceReportVSgWOi0_(v101);
    memcpy(&v87[7], v101, 0x121uLL);
    if (one-time initialization token for sharedNetworkAnalytics != -1)
    {
      swift_once();
    }

    v9 = static NetworkAnalytics.sharedNetworkAnalytics;
    memcpy(&v84[5], v82, 0x139uLL);
    LODWORD(v84[0]) = 0;
    v84[1] = 0;
    v84[2] = 0xE000000000000000;
    v84[3] = 0;
    v84[4] = 0xE000000000000000;
    v84[46] = 0;
    v84[45] = 0;
    LOBYTE(v84[47]) = v100[0];
    memcpy(&v84[47] + 1, v87, 0x128uLL);
    v84[85] = MEMORY[0x277D84F90];
    v84[86] = MEMORY[0x277D84F90];
    LODWORD(v84[87]) = 4;
    v84[88] = static NetworkAnalytics.sharedNetworkAnalytics;
    destructiveProjectEnumData for ConnectionConfigurationError(v84);
    memcpy(v85, (v1 + 624), 0x2C8uLL);
    memcpy((v1 + 624), v84, 0x2C8uLL);
    v10 = v9;
    outlined destroy of NetworkConnectionProtocol?(v85, &_s11SiriNetwork24ConnectionSnapshotReportVSgMd, &_s11SiriNetwork24ConnectionSnapshotReportVSgMR);
  }

  memcpy(v85, (v1 + 56), 0x599uLL);
  memcpy(v84, (v1 + 56), 0x599uLL);
  memcpy(v86, (v1 + 624), sizeof(v86));
  if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v86) == 1)
  {
    memcpy(v83, v84, 0x599uLL);
    outlined init with copy of ConnectionMetrics(v85, v82);
    outlined destroy of ConnectionMetrics(v83);
  }

  else
  {
    memcpy(v100, &v84[76], 0x139uLL);
    memcpy(v83, v84, 0x599uLL);
    outlined init with copy of ConnectionMetrics(v85, v82);
    outlined init with copy of NetworkConnectionProtocol?(v100, v82, &_s11SiriNetwork010ConnectionB6ReportVSgMd, &_s11SiriNetwork010ConnectionB6ReportVSgMR);
    outlined destroy of ConnectionMetrics(v83);
    memcpy(v101, v100, 0x139uLL);
    if (_s11SiriNetwork010ConnectionB6ReportVSgWOg(v101) != 1)
    {
      outlined destroy of NetworkConnectionProtocol?(v100, &_s11SiriNetwork010ConnectionB6ReportVSgMd, &_s11SiriNetwork010ConnectionB6ReportVSgMR);
      goto LABEL_12;
    }
  }

  type metadata accessor for NetworkConnectionProvider();
  lazy protocol witness table accessor for type NetworkConnectionProvider and conformance NetworkConnectionProvider(&lazy protocol witness table cache variable for type NetworkConnectionProvider and conformance NetworkConnectionProvider, v11, type metadata accessor for NetworkConnectionProvider);
  v12 = protocol witness for ConnectionProviderProtocol.connectionMetrics.modify in conformance NetworkConnectionProvider();
  v14 = v13;
  memmove(v84, (v13 + 568), 0x2C8uLL);
  if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v84) != 1)
  {
    v83[0] = 1;
    LOBYTE(v100[0]) = 1;
    LOBYTE(v99[0]) = 1;
    LOBYTE(v98[0]) = 1;
    v97[0] = 1;
    v96[0] = 1;
    v95[0] = 1;
    v94[0] = 1;
    v93[0] = 1;
    v92[0] = 1;
    LOBYTE(v91[0]) = 1;
    v88[0] = 1;
    v81[0] = 1;
    v80[0] = 1;
    LODWORD(v82[0]) = 0;
    BYTE4(v82[0]) = 1;
    memset(&v82[1], 0, 24);
    LOBYTE(v82[4]) = 1;
    memset(&v82[5], 0, 52);
    BYTE4(v82[11]) = 1;
    LODWORD(v82[12]) = 0;
    BYTE4(v82[12]) = 1;
    v82[13] = MEMORY[0x277D84F98];
    memset(&v82[14], 0, 24);
    LOBYTE(v82[17]) = 1;
    LOBYTE(v82[19]) = 1;
    v82[18] = 0;
    v82[20] = 0;
    LOBYTE(v82[21]) = 1;
    LOBYTE(v82[23]) = 1;
    v82[22] = 0;
    v82[24] = 0;
    LOBYTE(v82[25]) = 1;
    LOBYTE(v82[27]) = 1;
    v82[26] = 0;
    memset(&v82[28], 0, 24);
    LOBYTE(v82[31]) = 1;
    v82[32] = 0;
    LOWORD(v82[33]) = 1;
    *(&v82[33] + 2) = v98[0];
    HIWORD(v82[33]) = v98[1];
    v82[34] = 0;
    LOBYTE(v82[35]) = 1;
    *(&v82[35] + 1) = v100[0];
    HIDWORD(v82[35]) = *(v100 + 3);
    v82[36] = 0;
    LOBYTE(v82[37]) = 1;
    *(&v82[37] + 1) = v99[0];
    HIDWORD(v82[37]) = *(v99 + 3);
    v82[38] = 0;
    LOBYTE(v82[39]) = 1;
    destructiveProjectEnumData for ConnectionConfigurationError(v82);
    memcpy(v83, (v14 + 608), 0x139uLL);
    memcpy((v14 + 608), v82, 0x139uLL);
    outlined destroy of NetworkConnectionProtocol?(v83, &_s11SiriNetwork010ConnectionB6ReportVSgMd, &_s11SiriNetwork010ConnectionB6ReportVSgMR);
  }

  (v12)(v101, 0);
LABEL_12:
  memcpy(v88, (v5 + 568), sizeof(v88));
  type metadata accessor for NetworkConnectionProvider();
  lazy protocol witness table accessor for type NetworkConnectionProvider and conformance NetworkConnectionProvider(&lazy protocol witness table cache variable for type NetworkConnectionProvider and conformance NetworkConnectionProvider, v15, type metadata accessor for NetworkConnectionProvider);
  v16 = protocol witness for ConnectionProviderProtocol.connectionMetrics.modify in conformance NetworkConnectionProvider();
  v18 = v17;
  memmove(v81, &v17[35].u64[1], 0x2C8uLL);
  if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v81) != 1)
  {
    memcpy(v91, v88, sizeof(v91));
    v19 = _s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v91) == 1;
    v20 = v19 | LOBYTE(v91[47]);
    v21 = vdup_n_s32(v19);
    v22.i64[0] = v21.u32[0];
    v22.i64[1] = v21.u32[1];
    v18[58] = vandq_s8(*&v91[45], vcgezq_s64(vshlq_n_s64(v22, 0x3FuLL)));
    v18[59].i8[0] = v20 & 1;
  }

  (v16)(v84, 0);
  v23 = protocol witness for ConnectionProviderProtocol.connectionMetrics.modify in conformance NetworkConnectionProvider();
  v25 = v24;
  memmove(v80, (v24 + 568), 0x2C8uLL);
  if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v80) != 1)
  {
    memcpy(v84, (v25 + 608), 0x139uLL);
    if (_s11SiriNetwork010ConnectionB6ReportVSgWOg(v84) != 1)
    {
      memcpy(v92, v88, sizeof(v92));
      if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v92) == 1 || (memcpy(v102, &v92[40], 0x139uLL), _s11SiriNetwork010ConnectionB6ReportVSgWOg(v102) == 1))
      {
        v26 = 0;
        v27 = 1;
      }

      else
      {
        v26 = v102[0];
        v27 = v102[1];
      }

      *(v25 + 608) = v26;
      *(v25 + 612) = v27 & 1;
    }
  }

  (v23)(v83, 0);
  memcpy(v101, v88, sizeof(v101));
  if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v101) != 1)
  {
    memcpy(v111, &v101[40], 0x139uLL);
    if (_s11SiriNetwork010ConnectionB6ReportVSgWOg(v111) != 1)
    {
      v28 = v111[2];
      if (v111[2])
      {
        v29 = v111[1];

        v30 = protocol witness for ConnectionProviderProtocol.connectionMetrics.modify in conformance NetworkConnectionProvider();
        v32 = v31;
        memmove(v84, v31 + 71, 0x2C8uLL);
        if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v84) != 1)
        {
          memcpy(v83, v32 + 76, 0x139uLL);
          if (_s11SiriNetwork010ConnectionB6ReportVSgWOg(v83) != 1)
          {
            v33 = v32[78];
            v32[77] = v29;
            v32[78] = v28;
          }
        }

        (v30)(v82, 0);
      }
    }
  }

  v34 = protocol witness for ConnectionProviderProtocol.connectionMetrics.modify in conformance NetworkConnectionProvider();
  v36 = v35;
  memmove(__dst, (v35 + 568), 0x2C8uLL);
  if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(__dst) != 1)
  {
    memcpy(v84, (v36 + 608), 0x139uLL);
    if (_s11SiriNetwork010ConnectionB6ReportVSgWOg(v84) != 1)
    {
      memcpy(v93, v88, sizeof(v93));
      if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v93) == 1 || (memcpy(v103, &v93[40], 0x139uLL), _s11SiriNetwork010ConnectionB6ReportVSgWOg(v103) == 1))
      {
        v37 = 0;
        v38 = 1;
      }

      else
      {
        v37 = v103[38];
        v38 = v103[39];
      }

      *(v36 + 912) = v37;
      *(v36 + 920) = v38 & 1;
    }
  }

  (v34)(v83, 0);
  memcpy(v100, v88, sizeof(v100));
  if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v100) != 1)
  {
    memcpy(v110, &v100[10], 0x139uLL);
    if (_s11SiriNetwork010ConnectionB6ReportVSgWOg(v110) != 1)
    {
      v39 = v110[265];
      v40 = protocol witness for ConnectionProviderProtocol.connectionMetrics.modify in conformance NetworkConnectionProvider();
      v42 = v41;
      memmove(v84, (v41 + 568), 0x2C8uLL);
      if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v84) != 1)
      {
        memcpy(v83, (v42 + 608), 0x139uLL);
        if (_s11SiriNetwork010ConnectionB6ReportVSgWOg(v83) != 1)
        {
          *(v42 + 873) = v39;
        }
      }

      (v40)(v82, 0);
    }
  }

  v43 = protocol witness for ConnectionProviderProtocol.connectionMetrics.modify in conformance NetworkConnectionProvider();
  v45 = v44;
  memmove(v78, (v44 + 568), 0x2C8uLL);
  if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v78) != 1)
  {
    memcpy(v84, (v45 + 608), 0x139uLL);
    if (_s11SiriNetwork010ConnectionB6ReportVSgWOg(v84) != 1)
    {
      memcpy(v94, v88, sizeof(v94));
      if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v94) == 1 || (memcpy(v104, &v94[40], 0x139uLL), _s11SiriNetwork010ConnectionB6ReportVSgWOg(v104) == 1))
      {
        v46 = 0;
        v47 = 1;
      }

      else
      {
        v46 = v104[34];
        v47 = v104[35];
      }

      *(v45 + 880) = v46;
      *(v45 + 888) = v47 & 1;
    }
  }

  (v43)(v83, 0);
  v48 = protocol witness for ConnectionProviderProtocol.connectionMetrics.modify in conformance NetworkConnectionProvider();
  v50 = v49;
  memmove(v77, (v49 + 568), 0x2C8uLL);
  if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v77) != 1)
  {
    memcpy(v84, (v50 + 608), 0x139uLL);
    if (_s11SiriNetwork010ConnectionB6ReportVSgWOg(v84) != 1)
    {
      memcpy(v95, v88, sizeof(v95));
      if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v95) == 1 || (memcpy(v105, &v95[40], 0x139uLL), _s11SiriNetwork010ConnectionB6ReportVSgWOg(v105) == 1))
      {
        v51 = 0;
        v52 = 1;
      }

      else
      {
        v51 = v105[36];
        v52 = v105[37];
      }

      *(v50 + 896) = v51;
      *(v50 + 904) = v52 & 1;
    }
  }

  (v48)(v83, 0);
  memcpy(v99, v88, sizeof(v99));
  if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v99) != 1)
  {
    memcpy(v109, &v99[10], 0x139uLL);
    if (_s11SiriNetwork010ConnectionB6ReportVSgWOg(v109) != 1 && (v109[4] & 1) == 0)
    {
      v53 = v109[3];
      v54 = protocol witness for ConnectionProviderProtocol.connectionMetrics.modify in conformance NetworkConnectionProvider();
      v56 = v55;
      memmove(v84, (v55 + 568), 0x2C8uLL);
      if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v84) != 1)
      {
        memcpy(v83, (v56 + 608), 0x139uLL);
        if (_s11SiriNetwork010ConnectionB6ReportVSgWOg(v83) != 1)
        {
          *(v56 + 632) = v53;
          *(v56 + 640) = 0;
        }
      }

      (v54)(v82, 0);
    }
  }

  v57 = protocol witness for ConnectionProviderProtocol.connectionMetrics.modify in conformance NetworkConnectionProvider();
  v59 = v58;
  memmove(v76, v58 + 71, 0x2C8uLL);
  if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v76) != 1)
  {
    memcpy(v84, v59 + 76, 0x139uLL);
    if (_s11SiriNetwork010ConnectionB6ReportVSgWOg(v84) != 1)
    {
      memcpy(v96, v88, sizeof(v96));
      if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v96) == 1 || (memcpy(v106, &v96[40], 0x139uLL), _s11SiriNetwork010ConnectionB6ReportVSgWOg(v106) == 1))
      {
        v60 = 0;
        v61 = 0;
      }

      else
      {
        v60 = v106[5];
      }

      v62 = v59[82];
      v59[81] = v60;
      v59[82] = v61;
    }
  }

  (v57)(v83, 0);
  v63 = protocol witness for ConnectionProviderProtocol.connectionMetrics.modify in conformance NetworkConnectionProvider();
  v65 = v64;
  memmove(v75, (v64 + 568), 0x2C8uLL);
  if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v75) != 1)
  {
    memcpy(v84, (v65 + 608), 0x139uLL);
    if (_s11SiriNetwork010ConnectionB6ReportVSgWOg(v84) != 1)
    {
      memcpy(v97, v88, sizeof(v97));
      if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v97) == 1 || (memcpy(v107, &v97[40], 0x139uLL), _s11SiriNetwork010ConnectionB6ReportVSgWOg(v107) == 1))
      {
        v66 = 0;
        v67 = 1;
      }

      else
      {
        v66 = v107[30];
        v67 = v107[31];
      }

      *(v65 + 848) = v66;
      *(v65 + 856) = v67 & 1;
    }
  }

  (v63)(v83, 0);
  v68 = protocol witness for ConnectionProviderProtocol.connectionMetrics.modify in conformance NetworkConnectionProvider();
  v70 = v69;
  memmove(v74, (v69 + 568), 0x2C8uLL);
  if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v74) == 1)
  {
    result = (v68)(v83, 0);
    if (!v4)
    {
      return result;
    }

LABEL_86:
    memcpy(v83, (v1 + 56), 0x599uLL);
    memcpy(v82, (v1 + 56), 0x599uLL);
    outlined init with copy of ConnectionMetrics(v83, v84);
    v4(v82);
    memcpy(v84, v82, 0x599uLL);
    return outlined destroy of ConnectionMetrics(v84);
  }

  memcpy(v84, (v70 + 608), 0x139uLL);
  if (_s11SiriNetwork010ConnectionB6ReportVSgWOg(v84) != 1)
  {
    memcpy(v98, v88, sizeof(v98));
    if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(v98) == 1 || (memcpy(v108, &v98[10], 0x139uLL), _s11SiriNetwork010ConnectionB6ReportVSgWOg(v108) == 1))
    {
      v72 = 0;
      v73 = 1;
    }

    else
    {
      v72 = v108[32];
      v73 = v108[33];
    }

    *(v70 + 864) = v72;
    *(v70 + 872) = v73 & 1;
  }

  result = (v68)(v83, 0);
  if (v4)
  {
    goto LABEL_86;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for ConnectionNetworkReport(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 312) = 0;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 313) = 1;
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
      *(result + 104) = (a2 - 1);
      return result;
    }

    *(result + 313) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_134()
{
  v2 = *(v0 + 1088);

  return swift_getObjectType();
}

void OUTLINED_FUNCTION_80_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_73()
{
  *(v1 + 4) = v2;
  *(v1 + 12) = 2080;
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
}

uint64_t OUTLINED_FUNCTION_135(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return ConnectionMethod.nextConnectionMethodSupported(connectionConfiguration:)(va, 0);
}

void *OUTLINED_FUNCTION_120(void *a1)
{

  return memcpy(a1, (v1 + 72), 0x599uLL);
}

uint64_t OUTLINED_FUNCTION_120_0()
{
  v2 = v0[43];
  v0[47] = *(v0[46] + 120);
}

uint64_t storeEnumTagSinglePayload for ConnectionSnapshotReport(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 696) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 712) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 712) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed ConnectionMetrics?) -> ()(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return thunk for @escaping @callee_guaranteed (@in_guaranteed ConnectionMetrics?) -> ()(a1);
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed ConnectionMetrics?) -> ()(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v4 = v1;
  memcpy(__dst, v1, 0x599uLL);
  memcpy(__src, v4, 0x599uLL);
  destructiveProjectEnumData for ConnectionConfigurationError(__src);
  memcpy(v6, __src, 0x599uLL);
  outlined init with copy of ConnectionMetrics(__dst, v9);
  v3(v6);
  memcpy(v9, v6, 0x599uLL);
  return outlined destroy of NetworkConnectionProtocol?(v9, &_s11SiriNetwork17ConnectionMetricsVSgMd, &_s11SiriNetwork17ConnectionMetricsVSgMR);
}

void closure #1 in Connection.getSNConnectionMetrics(_:with:)(void *__src, void (*a2)(id))
{
  if (a2)
  {
    memcpy(__dst, __src, 0x599uLL);
    if (_s11SiriNetwork17ConnectionMetricsVSgWOg(__dst) == 1)
    {
      v3 = 0;
    }

    else
    {
      v4 = memcpy(v5, __dst, sizeof(v5));
      v3 = ConnectionMetrics.snConnectionMetrics.getter(v4);
    }

    a2(v3);
  }
}

id ConnectionMetrics.snConnectionMetrics.getter(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = OUTLINED_FUNCTION_7_20();
  memcpy(v6, (v1 + 568), 0x2C8uLL);
  v7 = *(v1 + 1296);
  v95 = *(v1 + 1288);
  v96 = *(v1 + 1304);
  v8 = *(v1 + 1312);
  v92 = *(v1 + 1320);
  v9 = *(v1 + 1336);
  v97 = *(v1 + 1328);
  v98 = *(v1 + 1344);
  v10 = *(v1 + 1352);
  v11 = *(v1 + 1376);
  v91 = *(v1 + 1384);
  v12 = *(v1 + 1388);
  v13 = *(v1 + 1392);
  v99 = *(v1 + 1360);
  v100 = *(v1 + 1400);
  v14 = *(v1 + 1408);
  v93 = *(v1 + 1424);
  v94 = *(v1 + 1368);
  v101 = *(v1 + 1416);
  v102 = *(v1 + 1432);
  v15 = [objc_allocWithZone(SNConnectionMetrics) init];
  if (*(v5 + 16))
  {
    v16 = memcpy(__dst, (v5 + 32), 0x599uLL);
    v17 = ConnectionMetrics.snConnectionMetrics.getter(v16);
    OUTLINED_FUNCTION_6_4(v17, sel_setRemoteMetrics_);
  }

  if (*(v3 + 16))
  {
    specialized _arrayForceCast<A, B>(_:)(v3);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v15 setConnectionMethodHistory_];
  }

  if (v4)
  {
    v19 = MEMORY[0x223DE2070](v2, v4);
    OUTLINED_FUNCTION_6_4(v19, sel_setPolicyId_);
  }

  memcpy(__dst, v110, 0x2C8uLL);
  v20 = 0x277CCA000uLL;
  v21 = &off_2784DD000;
  v22 = &selRef_host;
  if (_s11SiriNetwork24ConnectionSnapshotReportVSgWOg(__dst) != 1)
  {
    memcpy(v107, v110, sizeof(v107));
    OUTLINED_FUNCTION_0_52();
    outlined init with copy of ConnectionSnapshotReport(v107, v104);
    v23 = __dst;
    v24 = ConnectionSnapshotReport.netConnectionSnapshot.getter();
    OUTLINED_FUNCTION_6_4(v24, sel_setConnectionSnapshot_);

    OUTLINED_FUNCTION_0_52();
    v25 = ConnectionSnapshotReport.netDebugConnectionSnapshot.getter();
    OUTLINED_FUNCTION_6_4(v25, sel_setDebugConnectionSnapshot_);

    v26 = MEMORY[0x223DE2070](__dst[1], __dst[2]);
    OUTLINED_FUNCTION_6_4(v26, sel_setProviderStyle_);

    v27 = MEMORY[0x223DE2070](__dst[3], __dst[4]);
    OUTLINED_FUNCTION_6_4(v27, sel_setSnapshotTriggerReason_);

    memcpy(v108, &__dst[5], 0x139uLL);
    if (_s11SiriNetwork010ConnectionB6ReportVSgWOg(v108) != 1)
    {
      if (v108[2])
      {
        v28 = v108[1];
        outlined init with copy of ConnectionNetworkReport?(&__dst[5], v105);

        OUTLINED_FUNCTION_6_21();
        v29 = OUTLINED_FUNCTION_3_27();
        OUTLINED_FUNCTION_2_31(v29, sel_setCarrierName_);
      }

      else
      {
        OUTLINED_FUNCTION_8_19();
        outlined init with copy of ConnectionNetworkReport(v105, v104);
      }

      if (v108[15])
      {
        v30 = v108[14];

        OUTLINED_FUNCTION_6_21();
        v31 = OUTLINED_FUNCTION_3_27();
        OUTLINED_FUNCTION_2_31(v31, sel_setConnectionMethod_);
      }

      if (v108[10])
      {
        v32 = v108[9];

        OUTLINED_FUNCTION_6_21();
        v33 = OUTLINED_FUNCTION_3_27();
        OUTLINED_FUNCTION_2_31(v33, sel_setPrimarySubflowInterfaceName_);
      }

      v34 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
      OUTLINED_FUNCTION_6_4(v34, sel_setIsCaptive_);

      if ((v108[35] & 1) == 0)
      {
        v35 = OUTLINED_FUNCTION_5_26(objc_allocWithZone(MEMORY[0x277CCABB0]));
        OUTLINED_FUNCTION_6_4(v35, sel_setRssi_);
      }

      if ((v108[37] & 1) == 0)
      {
        v36 = OUTLINED_FUNCTION_5_26(objc_allocWithZone(MEMORY[0x277CCABB0]));
        OUTLINED_FUNCTION_6_4(v36, sel_setSnr_);
      }

      if ((v108[39] & 1) == 0)
      {
        v37 = OUTLINED_FUNCTION_5_26(objc_allocWithZone(MEMORY[0x277CCABB0]));
        OUTLINED_FUNCTION_6_4(v37, sel_setCca_);
      }

      if ((v108[0] & 0x100000000) == 0)
      {
        v38 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
        OUTLINED_FUNCTION_6_4(v38, sel_setAttemptCount_);
      }

      if ((v108[33] & 1) == 0)
      {
        v39 = OUTLINED_FUNCTION_5_26(objc_allocWithZone(MEMORY[0x277CCABB0]));
        OUTLINED_FUNCTION_6_4(v39, sel_setTimeUntilFirstByteRead_);
      }

      if ((v108[17] & 1) == 0)
      {
        v40 = OUTLINED_FUNCTION_4_26(objc_allocWithZone(MEMORY[0x277CCABB0]));
        OUTLINED_FUNCTION_6_4(v40, sel_setDnsResolutionTime_);
      }

      if ((v108[19] & 1) == 0)
      {
        v41 = OUTLINED_FUNCTION_4_26(objc_allocWithZone(MEMORY[0x277CCABB0]));
        OUTLINED_FUNCTION_6_4(v41, sel_setConnectionStartTimeToDNSResolutionTimeMsec_);
      }

      if (v108[29])
      {
        v42 = v108[28];

        OUTLINED_FUNCTION_6_21();
        v43 = OUTLINED_FUNCTION_3_27();
        OUTLINED_FUNCTION_2_31(v43, sel_setTlsVersion_);
      }

      if ((v108[27] & 1) == 0)
      {
        v44 = OUTLINED_FUNCTION_4_26(objc_allocWithZone(MEMORY[0x277CCABB0]));
        OUTLINED_FUNCTION_6_4(v44, sel_setTlsHandshakeTimeMsec_);
      }

      if ((v108[21] & 1) == 0)
      {
        v45 = OUTLINED_FUNCTION_4_26(objc_allocWithZone(MEMORY[0x277CCABB0]));
        OUTLINED_FUNCTION_6_4(v45, sel_setConnectionEstablishmentTimeMsec_);
      }

      if ((v108[23] & 1) == 0)
      {
        v46 = OUTLINED_FUNCTION_4_26(objc_allocWithZone(MEMORY[0x277CCABB0]));
        OUTLINED_FUNCTION_6_4(v46, sel_setConnectionStartTimeToConnectionEstablishmentTimeMsec_);
      }

      if ((v108[25] & 1) == 0)
      {
        v47 = OUTLINED_FUNCTION_4_26(objc_allocWithZone(MEMORY[0x277CCABB0]));
        OUTLINED_FUNCTION_6_4(v47, sel_setConnectionStartTimeToTLSHandshakeTimeMsec_);
      }

      if (v108[6])
      {
        v48 = v108[5];

        OUTLINED_FUNCTION_6_21();
        v49 = OUTLINED_FUNCTION_3_27();
        OUTLINED_FUNCTION_2_31(v49, sel_setWifiPhyMode_);
      }

      if ((v108[4] & 1) == 0)
      {
        v50 = OUTLINED_FUNCTION_5_26(objc_allocWithZone(MEMORY[0x277CCABB0]));
        OUTLINED_FUNCTION_6_4(v50, sel_setSignalStrengthBars_);
      }

      if ((v108[31] & 1) == 0)
      {
        v51 = OUTLINED_FUNCTION_5_26(objc_allocWithZone(MEMORY[0x277CCABB0]));
        OUTLINED_FUNCTION_6_4(v51, sel_setTimeUntilOpen_);
      }

      v23 = &off_2784DD000;
      if ((v108[11] & 0x100000000) == 0)
      {
        v52 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
        OUTLINED_FUNCTION_6_4(v52, sel_setConnectedSubflowCount_);
      }

      outlined destroy of ConnectionSnapshotReport?(&__dst[5], &_s11SiriNetwork010ConnectionB6ReportVSgMd, &_s11SiriNetwork010ConnectionB6ReportVSgMR);
      if ((v108[12] & 0x100000000) == 0)
      {
        v53 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
        OUTLINED_FUNCTION_6_4(v53, sel_setConnectedSubflowCount_);
      }
    }

    OUTLINED_FUNCTION_0_52();
    v54 = ConnectionSnapshotReport.flowNetworkInterfaceType.getter()[2];

    if (v54)
    {
      OUTLINED_FUNCTION_0_52();
      v55 = ConnectionSnapshotReport.flowNetworkInterfaceType.getter();
      specialized _dictionaryUpCast<A, B, C, D>(_:)(v55);
      OUTLINED_FUNCTION_3_27();
      v56 = Dictionary._bridgeToObjectiveC()().super.isa;

      OUTLINED_FUNCTION_6_4(v57, sel_setFlowNetworkInterfaceType_);
    }

    OUTLINED_FUNCTION_0_52();
    v58 = *(ConnectionSnapshotReport.tcpInfoMetricsByInterfaceName.getter() + 16);

    if (v58)
    {
      OUTLINED_FUNCTION_0_52();
      ConnectionSnapshotReport.tcpInfoMetricsByInterfaceName.getter();
      type metadata accessor for SNConnectionTCPInfoMetrics();
      Dictionary._bridgeToObjectiveC()();
      v59 = OUTLINED_FUNCTION_3_27();
      OUTLINED_FUNCTION_2_31(v59, sel_setTCPInfoMetricsByInterfaceName_);
    }

    if ((__dst[47] & 1) == 0)
    {
      v60 = HIDWORD(__dst[46]);
      v61 = *&__dst[45];
      v62 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
      OUTLINED_FUNCTION_2_31(v62, sel_setPingCount_);

      v23 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      OUTLINED_FUNCTION_2_31(v23, sel_setMeanPing_);

      v63 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
      OUTLINED_FUNCTION_6_4(v63, sel_setUnacknowledgedPingCount_);
    }

    OUTLINED_FUNCTION_8_19();
    if (_s11SiriNetwork010ConnectionB6ReportVSgWOg(v105) != 1)
    {
      v64 = v106;
      memcpy(v104, &__dst[5], 0x139uLL);
      outlined init with copy of ConnectionNetworkReport(v104, v103);
      specialized _dictionaryUpCast<A, B, C, D>(_:)(v64);
      Dictionary._bridgeToObjectiveC()();
      OUTLINED_FUNCTION_3_27();
      v65 = outlined destroy of ConnectionSnapshotReport?(&__dst[5], &_s11SiriNetwork010ConnectionB6ReportVSgMd, &_s11SiriNetwork010ConnectionB6ReportVSgMR);
      OUTLINED_FUNCTION_2_31(v65, sel_setSubflowSwitchCounts_);
    }

    v66 = __dst[87];
    v22 = &selRef_host;
    if (LOBYTE(__dst[87]) == 4)
    {
      v67 = OUTLINED_FUNCTION_7_20();
      outlined destroy of ConnectionSnapshotReport?(v67, v68, v69);
      v20 = 0x277CCA000;
    }

    else
    {
      v70 = *(ConnectionQualityReport.symptomsBasedNetworkQuality.getter(__dst[87]) + 16);

      v20 = 0x277CCA000uLL;
      if (v70)
      {
        v71 = ConnectionQualityReport.symptomsBasedNetworkQuality.getter(v66);
        specialized _dictionaryUpCast<A, B, C, D>(_:)(v71);
        OUTLINED_FUNCTION_3_27();
        v72 = Dictionary._bridgeToObjectiveC()().super.isa;

        OUTLINED_FUNCTION_6_4(v73, sel_setSymptomsBasedNetworkQuality_);
        v74 = OUTLINED_FUNCTION_7_20();
        outlined destroy of ConnectionSnapshotReport?(v74, v75, v76);
      }

      else
      {
        v77 = OUTLINED_FUNCTION_7_20();
        outlined destroy of ConnectionSnapshotReport?(v77, v78, v79);
      }
    }

    v21 = &off_2784DD000;
  }

  if (v11)
  {
    v80 = MEMORY[0x223DE2070](v94, v11);
    OUTLINED_FUNCTION_6_4(v80, sel_setWifiChannelInfo_);
  }

  if ((v12 & 1) == 0)
  {
    v81 = [objc_allocWithZone(*(v20 + 2992)) initWithUnsignedInt_];
    OUTLINED_FUNCTION_6_4(v81, sel_setSimSubscriptions_);
  }

  if (v7)
  {
    v82 = MEMORY[0x223DE2070](v95, v7);
    OUTLINED_FUNCTION_6_4(v82, sel_setConnectionEdgeID_);
  }

  if (v8)
  {
    v83 = MEMORY[0x223DE2070](v96, v8);
    OUTLINED_FUNCTION_6_4(v83, sel_setConnectionEdgeType_);
  }

  if ((v97 & 1) == 0)
  {
    v84 = [objc_allocWithZone(*(v20 + 2992)) v21[493]];
    OUTLINED_FUNCTION_6_4(v84, sel_setConnectionFallbackReason_);
  }

  if ((v98 & 1) == 0)
  {
    v85 = [objc_allocWithZone(*(v20 + 2992)) v22[6]];
    OUTLINED_FUNCTION_6_4(v85, sel_setConnectionDelay_);
  }

  if ((v99 & 1) == 0)
  {
    v86 = [objc_allocWithZone(*(v20 + 2992)) v22[6]];
    OUTLINED_FUNCTION_6_4(v86, sel_setFirstTxByteDelay_);
  }

  if ((v100 & 1) == 0)
  {
    v87 = [objc_allocWithZone(*(v20 + 2992)) v22[6]];
    OUTLINED_FUNCTION_6_4(v87, sel_setIdsLastMessageDelay_);
  }

  if ((v101 & 1) == 0)
  {
    v88 = [objc_allocWithZone(*(v20 + 2992)) v22[6]];
    OUTLINED_FUNCTION_6_4(v88, sel_setIdsLastSocketDelay_);
  }

  if ((v102 & 1) == 0)
  {
    v89 = [objc_allocWithZone(*(v20 + 2992)) v21[493]];
    OUTLINED_FUNCTION_6_4(v89, sel_setIdsLastSocketOpenError_);
  }

  return v15;
}

uint64_t specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v11;
    v4 = (a1 + 40);
    do
    {
      v8 = *(v4 - 1);
      v9 = *v4;

      swift_dynamicCast();
      v11 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v5 > 1, v6 + 1, 1);
        v2 = v11;
      }

      *(v2 + 16) = v6 + 1;
      outlined init with take of Any(&v10, (v2 + 32 * v6 + 32));
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t static NetworkAnalytics.netSnapshotState(from:)()
{
  String.lowercased()();
  OUTLINED_FUNCTION_10_12();
  v3 = v3 && v2 == 0xEA0000000000646ELL;
  if (v3 || (v4 = v1, (OUTLINED_FUNCTION_4_29() & 1) != 0))
  {

    return 1;
  }

  else if (v4 == 0x6674736575716572 && v0 == 0xED000064656C6961)
  {

    return 2;
  }

  else
  {
    OUTLINED_FUNCTION_4_29();
    OUTLINED_FUNCTION_12_11();
    if (v4)
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }
}

unint64_t ConnectionNetworkReport.firstByteTimeInMs.getter()
{
  v1 = *(v0 + 256);
  if (*(v0 + 264) & 1 | (v1 <= 0.0))
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

void outlined bridged method (mbnn) of @objc NETSchemaNETSessionConnectionNetwork.primarySubflowInterfaceName.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x223DE2070]();

  [a3 setPrimarySubflowInterfaceName_];
}

uint64_t static NetworkAnalytics.netConnectionMethod(from:)()
{
  String.lowercased()();
  lazy protocol witness table accessor for type String and conformance String();
  if (OUTLINED_FUNCTION_0_56())
  {

    return 1;
  }

  else if (OUTLINED_FUNCTION_0_56())
  {

    return 2;
  }

  else if (OUTLINED_FUNCTION_0_56())
  {

    return 3;
  }

  else if (OUTLINED_FUNCTION_0_56())
  {

    return 4;
  }

  else if (OUTLINED_FUNCTION_0_56())
  {

    return 5;
  }

  else if (OUTLINED_FUNCTION_0_56())
  {

    return 6;
  }

  else
  {
    OUTLINED_FUNCTION_0_56();
    OUTLINED_FUNCTION_12_11();
    if (v0)
    {
      return 7;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t static NetworkAnalytics.netTLSVersion(from:)()
{
  String.lowercased()();
  OUTLINED_FUNCTION_10_12();
  v3 = v3 && v2 == 0xE500000000000000;
  if (v3 || (v4 = v1, (OUTLINED_FUNCTION_4_29() & 1) != 0))
  {

    return 2;
  }

  else
  {
    v6 = v4 == (OUTLINED_FUNCTION_17_11() & 0xFFFF0000FFFFFFFFLL | 0x3100000000) && v0 == 0xE500000000000000;
    if (v6 || (OUTLINED_FUNCTION_4_29() & 1) != 0)
    {

      return 3;
    }

    else
    {
      v7 = v4 == (OUTLINED_FUNCTION_17_11() & 0xFFFF0000FFFFFFFFLL | 0x3200000000) && v0 == 0xE500000000000000;
      if (v7 || (OUTLINED_FUNCTION_4_29() & 1) != 0)
      {

        return 4;
      }

      else
      {
        v8 = v4 == (OUTLINED_FUNCTION_17_11() & 0xFFFF0000FFFFFFFFLL | 0x3300000000) && v0 == 0xE500000000000000;
        if (v8 || (OUTLINED_FUNCTION_4_29() & 1) != 0)
        {

          return 5;
        }

        else
        {
          v9 = v4 == (OUTLINED_FUNCTION_17_11() & 0xFFFF0000FFFFFFFFLL | 0x3400000000) && v0 == 0xE500000000000000;
          if (v9 || (OUTLINED_FUNCTION_4_29() & 1) != 0)
          {

            return 6;
          }

          else if (v4 == 0x30336C7373 && v0 == 0xE500000000000000)
          {

            return 1;
          }

          else
          {
            OUTLINED_FUNCTION_4_29();
            OUTLINED_FUNCTION_12_11();
            return v4 & 1;
          }
        }
      }
    }
  }
}

Swift::UInt32 __swiftcall NetworkAnalytics.getSequenceNumber()()
{
  v19 = 0;
  v1 = *&v0[OBJC_IVAR___SNNetworkAnalyticsInternal_queue];
  OUTLINED_FUNCTION_3();
  v2 = swift_allocObject();
  *(v2 + 16) = &v19;
  *(v2 + 24) = v0;
  OUTLINED_FUNCTION_3();
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in NetworkAnalytics.getSequenceNumber();
  *(v3 + 24) = v2;
  v17 = thunk for @callee_guaranteed () -> ()partial apply;
  v18 = v3;
  OUTLINED_FUNCTION_12_3();
  v14 = 1107296256;
  OUTLINED_FUNCTION_5_9();
  v15 = v4;
  v16 = &block_descriptor_40;
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

uint64_t sub_223544B40()
{
  OUTLINED_FUNCTION_3();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

void *ConnectionNetworkReport.netDebugSessionConnectionNetwork.getter()
{
  v2 = [objc_allocWithZone(MEMORY[0x277D58BA0]) init];
  v3 = v2;
  if (*(v0 + 48))
  {
    if (!v2)
    {
      return v3;
    }

    v4 = *(v0 + 40);
    type metadata accessor for NetworkAnalytics(0);
    v5 = v3;
    OUTLINED_FUNCTION_1_9();
    [v1 setWiFiPhyMode_];
  }

  else if (!v2)
  {
    return v3;
  }

  v6 = *(v0 + 24);
  if (*(v0 + 32))
  {
    v6 = 0.0;
  }

  [v3 setSignalStrengthBars_];
  v7 = COERCE_DOUBLE(ConnectionNetworkReport.openTimeInMs.getter());
  if (v8)
  {
    v7 = 0.0;
  }

  [v3 setOpenTimeInMs_];
  if (*(v0 + 100))
  {
    v9 = 0;
  }

  else
  {
    v9 = *(v0 + 96);
  }

  [v3 setConnectedSubflowCount_];
  return v3;
}

uint64_t static NetworkAnalytics.netWiFiPhyMode(from:)()
{
  String.lowercased()();
  OUTLINED_FUNCTION_10_12();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (v4 = v1, (OUTLINED_FUNCTION_4_29() & 1) != 0))
  {

    return 1;
  }

  else
  {
    v6 = v4 == (OUTLINED_FUNCTION_2_34() & 0xFFFFFFFFFFFFLL | 0x62000000000000) && v0 == 0xE700000000000000;
    if (v6 || (OUTLINED_FUNCTION_4_29() & 1) != 0)
    {

      return 2;
    }

    else
    {
      v7 = v4 == (OUTLINED_FUNCTION_2_34() & 0xFFFFFFFFFFFFLL | 0x67000000000000) && v0 == 0xE700000000000000;
      if (v7 || (OUTLINED_FUNCTION_4_29() & 1) != 0)
      {

        return 3;
      }

      else
      {
        v8 = v4 == (OUTLINED_FUNCTION_2_34() & 0xFFFFFFFFFFFFLL | 0x6E000000000000) && v0 == 0xE700000000000000;
        if (v8 || (OUTLINED_FUNCTION_4_29() & 1) != 0)
        {

          return 4;
        }

        else
        {
          v9 = v4 == (OUTLINED_FUNCTION_2_34() & 0xFFFFFFFFFFFFLL | 0x6361000000000000) && v0 == 0xE800000000000000;
          if (v9 || (OUTLINED_FUNCTION_4_29() & 1) != 0)
          {

            return 5;
          }

          else
          {
            v10 = v4 == (OUTLINED_FUNCTION_2_34() & 0xFFFFFFFFFFFFLL | 0x7861000000000000) && v0 == 0xE800000000000000;
            if (v10 || (OUTLINED_FUNCTION_4_29() & 1) != 0)
            {

              return 6;
            }

            else
            {
              v11 = v4 == (OUTLINED_FUNCTION_2_34() & 0xFFFFFFFFFFFFLL | 0x6A61000000000000) && v0 == 0xE800000000000000;
              if (v11 || (OUTLINED_FUNCTION_4_29() & 1) != 0)
              {

                return 7;
              }

              else
              {
                v12 = v4 == (OUTLINED_FUNCTION_2_34() & 0xFFFFFFFFFFFFLL | 0x6861000000000000) && v0 == 0xE800000000000000;
                if (v12 || (OUTLINED_FUNCTION_4_29() & 1) != 0)
                {

                  return 8;
                }

                else if (v4 == (OUTLINED_FUNCTION_2_34() & 0xFFFFFFFFFFFFLL | 0x6461000000000000) && v0 == 0xE800000000000000)
                {

                  return 9;
                }

                else
                {
                  OUTLINED_FUNCTION_4_29();
                  OUTLINED_FUNCTION_12_11();
                  if (v4)
                  {
                    return 9;
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
    }
  }
}

uint64_t ConnectionNetworkReport.openTimeInMs.getter()
{
  result = *(v0 + 240);
  if ((*(v0 + 248) & 1) == 0)
  {
    v2 = *&result * 1000.0;
    *&result = -9.22337204e18;
    if (v2 > -9.22337204e18)
    {
      *&result = 9.22337204e18;
      if (v2 < 9.22337204e18)
      {
        if (v2 <= -9.22337204e18)
        {
          __break(1u);
        }

        else
        {
          *&result = v2;
        }
      }
    }
  }

  return result;
}

void *ConnectionTCPInfoMetrics.netDebugNetworkInterface.getter()
{
  v1 = *(v0 + 5);
  v78 = *(v0 + 48);
  v2 = *(v0 + 7);
  v77 = *(v0 + 64);
  v3 = *(v0 + 9);
  v76 = *(v0 + 80);
  v4 = *(v0 + 11);
  v5 = *(v0 + 96);
  v6 = *(v0 + 13);
  v7 = *(v0 + 112);
  v36 = *(v0 + 15);
  v34 = *(v0 + 128);
  v38 = *(v0 + 17);
  v37 = *(v0 + 144);
  v40 = *(v0 + 19);
  v39 = *(v0 + 160);
  v42 = *(v0 + 168);
  v43 = *(v0 + 41);
  v44 = *(v0 + 176);
  v45 = *(v0 + 43);
  v46 = *(v0 + 184);
  v47 = *(v0 + 45);
  v35 = *(v0 + 47);
  v41 = *(v0 + 192);
  v27 = *(v0 + 25);
  v29 = *(v0 + 27);
  v28 = *(v0 + 224);
  v48 = *(v0 + 57);
  v49 = *(v0 + 232);
  v8 = *(v0 + 59);
  v32 = *(v0 + 208);
  v33 = *(v0 + 240);
  v30 = *(v0 + 248);
  v31 = *(v0 + 61);
  v9 = [objc_allocWithZone(MEMORY[0x277D58B98]) init];
  v10 = v9;
  if (v9)
  {
    if (v78)
    {
      v11 = 0;
    }

    else
    {
      v11 = v1;
    }

    [v9 setBytesReceived_];
    if (v77)
    {
      v12 = 0;
    }

    else
    {
      v12 = v2;
    }

    [v10 setBytesRetransmitted_];
    if (v76)
    {
      v13 = 0;
    }

    else
    {
      v13 = v3;
    }

    [v10 setBytesSent_];
    if (v5)
    {
      v14 = 0;
    }

    else
    {
      v14 = v4;
    }

    [v10 setBytesUnacked_];
    if (v7)
    {
      v15 = 0;
    }

    else
    {
      v15 = v6;
    }

    [v10 setDuplicateBytesReceived_];
    if (v34)
    {
      v16 = 0;
    }

    else
    {
      v16 = v36;
    }

    [v10 setOutOfOrderBytesReceived_];
    if (v37)
    {
      v17 = 0;
    }

    else
    {
      v17 = v38;
    }

    [v10 setPacketsReceived_];
    if (v39)
    {
      v18 = 0;
    }

    else
    {
      v18 = v40;
    }

    [v10 setPacketsSent_];
    OUTLINED_FUNCTION_0_9();
    [v10 setRttBest_];
    OUTLINED_FUNCTION_0_9();
    [v10 setRttCurrent_];
    OUTLINED_FUNCTION_0_9();
    [v10 setRttSmoothed_];
    if (v41)
    {
      v19 = 0;
    }

    else
    {
      v19 = v35;
    }

    [v10 setRttVariance_];
    if (v32)
    {
      v20 = 0;
    }

    else
    {
      v20 = v27;
    }

    [v10 setSendBandwidth_];
    if (v28)
    {
      v21 = 0;
    }

    else
    {
      v21 = v29;
    }

    [v10 setSendBufferBytes_];
    if (v30)
    {
      v22 = 0;
    }

    else
    {
      v22 = v31;
    }

    [v10 setSubflowSwitchCount_];
    OUTLINED_FUNCTION_0_9();
    [v10 setSynRetransmits_];
    if (v33)
    {
      v23 = 0;
    }

    else
    {
      v23 = v8;
    }

    [v10 setTfoSynDataAcked_];
    v50 = *v0;
    v51 = v0[1];
    v52 = *(v0 + 4);
    LODWORD(v53) = *(v0 + 49);
    *(&v53 + 3) = *(v0 + 13);
    *(&v54 + 3) = *(v0 + 17);
    LODWORD(v54) = *(v0 + 65);
    LODWORD(v55) = *(v0 + 81);
    *(&v55 + 3) = *(v0 + 21);
    LODWORD(v56) = *(v0 + 97);
    *(&v56 + 3) = *(v0 + 25);
    *(&v57 + 3) = *(v0 + 29);
    LODWORD(v57) = *(v0 + 113);
    *(&v58 + 3) = *(v0 + 33);
    LODWORD(v58) = *(v0 + 129);
    *(&v59 + 3) = *(v0 + 37);
    LODWORD(v59) = *(v0 + 145);
    v61 = *(v0 + 163);
    v60 = *(v0 + 161);
    v63 = *(v0 + 171);
    v62 = *(v0 + 169);
    v65 = *(v0 + 179);
    v64 = *(v0 + 177);
    v67 = *(v0 + 187);
    v66 = *(v0 + 185);
    *(&v68 + 3) = *(v0 + 49);
    LODWORD(v68) = *(v0 + 193);
    *(&v69 + 3) = *(v0 + 53);
    LODWORD(v69) = *(v0 + 209);
    v71 = *(v0 + 227);
    v70 = *(v0 + 225);
    v73 = *(v0 + 235);
    v72 = *(v0 + 233);
    v75 = *(v0 + 243);
    v74 = *(v0 + 241);
    v24 = v10;
    v25 = ConnectionTCPInfoMetrics.netNetworkInterface.getter();
    [v24 setNetworkInterface_];
  }

  return v10;
}

void *ConnectionTCPInfoMetrics.netNetworkInterface.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 32);
  v4 = [objc_allocWithZone(MEMORY[0x277D58BF0]) init];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    if (v1)
    {
      v7 = MEMORY[0x223DE2070](v2, v1);
    }

    else
    {
      v7 = 0;
    }

    [v5 setName_];

    if (v3 == 25)
    {
      v8 = 0;
    }

    else
    {
      v8 = ConnectionType.netConnectionType.getter();
    }

    [v5 setConnectionType_];
  }

  return v5;
}

void *ConnectionPingInfoReport.netPingInfo.getter(unint64_t a1, double a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D58BA8]) init];
  v5 = v4;
  if (v4)
  {
    [v4 setPingCount_];
    [v5 setMeanPingInMs_];
    [v5 setUnacknowledgedPingCount_];
  }

  return v5;
}

uint64_t ConnectionQualityReport.symptomsBasedNetworkQuality.getter(unsigned int a1)
{
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_5_17();
      break;
    case 2:
      OUTLINED_FUNCTION_0_35();
      break;
    case 3:
      OUTLINED_FUNCTION_1_18();
      break;
    default:
      break;
  }

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_7_16();
  switch(BYTE1(a1))
  {
    case 1:
      OUTLINED_FUNCTION_5_17();
      break;
    case 2:
      OUTLINED_FUNCTION_0_35();
      break;
    case 3:
      OUTLINED_FUNCTION_1_18();
      break;
    default:
      break;
  }

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_7_16();
  switch(BYTE2(a1))
  {
    case 1:
      OUTLINED_FUNCTION_5_17();
      break;
    case 2:
      OUTLINED_FUNCTION_0_35();
      break;
    case 3:
      OUTLINED_FUNCTION_1_18();
      break;
    default:
      break;
  }

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_7_16();
  switch(HIBYTE(a1))
  {
    case 2u:
      OUTLINED_FUNCTION_11_9();
      break;
    case 3u:
      OUTLINED_FUNCTION_4_6();
      break;
    default:
      break;
  }

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_9_11();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
  return v3;
}

uint64_t static NetworkAnalytics.netDebugSessionConnectionQuality(from:)(uint64_t a1)
{
  v2 = 0xEF746E6174736E69;
  v27 = [objc_allocWithZone(MEMORY[0x277D58BB0]) init];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v31 = a1;

  v28 = 0;
  v29 = 0;
  v9 = 0;
  while (v6)
  {
    v10 = v2;
LABEL_10:
    v12 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v13 = (v9 << 10) | (16 * v12);
    v14 = (*(v31 + 48) + v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(v31 + 56) + v13);
    v18 = *v17;
    v19 = v17[1];

    v30 = static NetworkAnalytics.netQuality(fromString:)();

    v20 = String.lowercased()();

    v2 = v10;
    v21 = v20._countAndFlagsBits == 0x72616C756C6C6563 && v20._object == v10;
    if (v21 || (OUTLINED_FUNCTION_8_22() & 1) != 0)
    {

      HIDWORD(v29) = v30;
    }

    else
    {
      v22 = v20._countAndFlagsBits == 0xD000000000000012 && 0x80000002235F86B0 == v20._object;
      if (v22 || (OUTLINED_FUNCTION_8_22() & 1) != 0)
      {

        LODWORD(v29) = v30;
      }

      else
      {
        v23 = v20._countAndFlagsBits == 0x74736E6969666977 && v20._object == 0xEB00000000746E61;
        if (v23 || (OUTLINED_FUNCTION_8_22() & 1) != 0)
        {

          HIDWORD(v28) = v30;
        }

        else
        {
          if (v20._countAndFlagsBits == 0x7473696869666977 && v20._object == 0xEE006C616369726FLL)
          {

            goto LABEL_35;
          }

          v25 = OUTLINED_FUNCTION_8_22();

          if (v25)
          {
LABEL_35:
            LODWORD(v28) = v30;
          }
        }
      }
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      v26 = v27;
      [v26 setSymptomsCellularInstant_];
      [v26 setSymptomsCellularHistorical_];
      [v26 setSymptomsWiFiInstant_];
      [v26 setSymptomsWiFiHistorical_];

      return v27;
    }

    v6 = *(v3 + 8 * v11);
    ++v9;
    if (v6)
    {
      v10 = v2;
      v9 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t static NetworkAnalytics.netQuality(fromString:)()
{
  String.lowercased()();
  OUTLINED_FUNCTION_10_12();
  v3 = v3 && v2 == 0xE300000000000000;
  if (v3 || (v4 = v1, (OUTLINED_FUNCTION_4_29() & 1) != 0))
  {

    return 3;
  }

  else
  {
    v6 = v4 == 1685024615 && v0 == 0xE400000000000000;
    if (v6 || (OUTLINED_FUNCTION_4_29() & 1) != 0)
    {

      return 2;
    }

    else if (v4 == 0x616C696176616E75 && v0 == 0xEB00000000656C62)
    {

      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_4_29();
      OUTLINED_FUNCTION_12_11();
      return v4 & 1;
    }
  }
}

uint64_t outlined init with copy of ConnectionNetworkReport?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork010ConnectionB6ReportVSgMd, &_s11SiriNetwork010ConnectionB6ReportVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *ConnectionSnapshotReport.flowNetworkInterfaceType.getter()
{
  v1 = *(v0 + 680);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F98];
  }

  v3 = 0;
  v30 = *(v0 + 680);
  v4 = (v1 + 32);
  v31 = v2 - 1;
  v5 = MEMORY[0x277D84F98];
  while (1)
  {
    if (v3 >= v2)
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      JUMPOUT(0x2235461F8);
    }

    v32 = v4;
    memcpy(__dst, v4, 0x121uLL);
    v6 = 0xE700000000000000;
    v7 = 0x6E776F6E6B6E55;
    switch(LOBYTE(__dst[4]))
    {
      case 1:
        v6 = 0xE500000000000000;
        v7 = 0x69462D6957;
        break;
      case 2:
        v6 = 0xE400000000000000;
        v7 = 1312905047;
        break;
      case 3:
        v6 = 0xE500000000000000;
        v7 = 0x4E41525455;
        break;
      case 4:
        v6 = 0xE900000000000078;
        v7 = 0x31414D4443204732;
        break;
      case 5:
        v7 = 0x53525047204732;
        break;
      case 6:
        v7 = 0x65676445204732;
        break;
      case 7:
        v6 = 0xE800000000000000;
        v7 = 0x414D444357204733;
        break;
      case 8:
        v6 = 0xE800000000000000;
        v9 = 0x445348204733;
        goto LABEL_27;
      case 9:
        v6 = 0xE800000000000000;
        v9 = 0x555348204733;
LABEL_27:
        v7 = v9 & 0xFFFFFFFFFFFFLL | 0x4150000000000000;
        break;
      case 0xA:
        v8 = 0x307665524FLL;
        goto LABEL_25;
      case 0xB:
        v8 = 0x417665524FLL;
        goto LABEL_25;
      case 0xC:
        v8 = 0x427665524FLL;
LABEL_25:
        v6 = v8 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
        v7 = 0x44564520414D4443;
        break;
      case 0xD:
        v6 = 0xE400000000000000;
        v7 = 1146114632;
        break;
      case 0xE:
        v6 = 0xE300000000000000;
        v7 = 4543564;
        break;
      case 0xF:
        v6 = 0xE800000000000000;
        v7 = 0x41534E524E204735;
        break;
      case 0x10:
        v6 = 0xE500000000000000;
        v7 = 0x524E204735;
        break;
      case 0x11:
        v6 = 0xE500000000000000;
        v7 = 0x504354504DLL;
        break;
      case 0x12:
        v6 = 0xE800000000000000;
        v7 = 0x796C6C654264654CLL;
        break;
      case 0x13:
        v6 = 0xE300000000000000;
        v7 = 5456969;
        break;
      case 0x14:
        v6 = 0xE300000000000000;
        v7 = 5263184;
        break;
      case 0x15:
        v6 = 0xE800000000000000;
        v7 = 0x65636E65726F6C46;
        break;
      case 0x16:
        v6 = 0xE500000000000000;
        v7 = 0x6C61636F4CLL;
        break;
      case 0x17:
        v7 = 0x504354504D574ELL;
        break;
      case 0x18:
        v6 = 0xE500000000000000;
        v7 = 0x6365737069;
        break;
      default:
        break;
    }

    v11 = __dst[0];
    v10 = __dst[1];
    outlined init with copy of ConnectionInterfaceReport(__dst, &v33);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = v5;
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v10);
    v15 = v5[2];
    v16 = (v14 & 1) == 0;
    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      goto LABEL_44;
    }

    v18 = v13;
    v19 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVyS2SGMd, &_ss17_NativeDictionaryVyS2SGMR);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v17))
    {
      v20 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v10);
      if ((v19 & 1) != (v21 & 1))
      {
        goto LABEL_46;
      }

      v18 = v20;
    }

    v5 = v33;
    if (v19)
    {
      v22 = (v33[7] + 16 * v18);
      v23 = v22[1];
      *v22 = v7;
      v22[1] = v6;

      outlined destroy of ConnectionInterfaceReport(__dst);
    }

    else
    {
      v33[(v18 >> 6) + 8] |= 1 << v18;
      v24 = (v5[6] + 16 * v18);
      *v24 = v11;
      v24[1] = v10;
      v25 = (v5[7] + 16 * v18);
      *v25 = v7;
      v25[1] = v6;

      outlined destroy of ConnectionInterfaceReport(__dst);
      v26 = v5[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_45;
      }

      v5[2] = v28;
    }

    if (v31 == v3)
    {
      return v5;
    }

    v2 = *(v30 + 16);
    v4 = v32 + 296;
    ++v3;
  }
}

uint64_t ConnectionSnapshotReport.tcpInfoMetricsByInterfaceName.getter()
{
  v1 = *(v0 + 688);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F98];
  }

  v3 = (v1 + 48);
  v4 = MEMORY[0x277D84F98];
  do
  {
    v5 = *(v3 - 1);
    if (v5)
    {
      v6 = *(v3 - 2);
      v9 = *(v3 - 1);
      memcpy(v10, v3, sizeof(v10));

      v7 = ConnectionTCPInfoMetrics.snConnectionTCPInfoMetrics.getter();
      swift_isUniquelyReferenced_nonNull_native();
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, v6, v5);
    }

    v3 += 32;
    --v2;
  }

  while (v2);
  return v4;
}

id ConnectionTCPInfoMetrics.snConnectionTCPInfoMetrics.getter()
{
  v34 = *(v0 + 40);
  v33 = *(v0 + 48);
  v39 = *(v0 + 56);
  v36 = *(v0 + 64);
  v31 = *(v0 + 72);
  v30 = *(v0 + 80);
  v41 = *(v0 + 88);
  v40 = *(v0 + 96);
  v45 = *(v0 + 104);
  v44 = *(v0 + 112);
  v51 = *(v0 + 120);
  v49 = *(v0 + 128);
  v37 = *(v0 + 136);
  v42 = *(v0 + 152);
  v28 = *(v0 + 160);
  v29 = *(v0 + 144);
  v46 = *(v0 + 164);
  v1 = *(v0 + 168);
  v2 = *(v0 + 180);
  v3 = *(v0 + 184);
  v4 = *(v0 + 188);
  v5 = *(v0 + 192);
  v54 = *(v0 + 200);
  v53 = *(v0 + 208);
  v50 = *(v0 + 216);
  v48 = *(v0 + 224);
  v56 = *(v0 + 232);
  v57 = *(v0 + 228);
  v59 = *(v0 + 240);
  v60 = *(v0 + 236);
  if (*(v0 + 8))
  {
    v61 = *(v0 + 8);
    v62 = *v0;
  }

  else
  {
    v61 = 0xE000000000000000;
    v62 = 0;
  }

  if (*(v0 + 176))
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v0 + 172);
  }

  v7 = objc_allocWithZone(MEMORY[0x277CCABB0]);

  v58 = [v7 initWithUnsignedInt_];
  if (v3)
  {
    v8 = 0;
  }

  else
  {
    v8 = v2;
  }

  v55 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  if (v5)
  {
    v9 = 0;
  }

  else
  {
    v9 = v4;
  }

  v52 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  if (v1)
  {
    v10 = 0;
  }

  else
  {
    v10 = v46;
  }

  v47 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  v43 = OUTLINED_FUNCTION_0_38(objc_allocWithZone(MEMORY[0x277CCABB0]));
  v38 = OUTLINED_FUNCTION_0_38(objc_allocWithZone(MEMORY[0x277CCABB0]));
  v32 = OUTLINED_FUNCTION_0_38(objc_allocWithZone(MEMORY[0x277CCABB0]));
  v35 = OUTLINED_FUNCTION_0_38(objc_allocWithZone(MEMORY[0x277CCABB0]));
  v11 = OUTLINED_FUNCTION_0_38(objc_allocWithZone(MEMORY[0x277CCABB0]));
  if (v40)
  {
    v12 = 0;
  }

  else
  {
    v12 = v41;
  }

  v13 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
  if (v44)
  {
    v14 = 0;
  }

  else
  {
    v14 = v45;
  }

  v15 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
  if (v49)
  {
    v16 = 0;
  }

  else
  {
    v16 = v51;
  }

  v17 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
  if (v48)
  {
    v18 = 0;
  }

  else
  {
    v18 = v50;
  }

  v19 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
  if (v53)
  {
    v20 = 0;
  }

  else
  {
    v20 = v54;
  }

  v21 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
  if (v56)
  {
    v22 = 0;
  }

  else
  {
    v22 = v57;
  }

  v23 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  if (v59)
  {
    v24 = 0;
  }

  else
  {
    v24 = v60;
  }

  v25 = [objc_allocWithZone(MEMORY[0x277CCABB0]) &selRef:v24 setNetworkConnectionStateReadySnapshotCaptured:? + 3];
  v26 = objc_allocWithZone(SNConnectionTCPInfoMetrics);
  return @nonobjc SNConnectionTCPInfoMetrics.init(interfaceName:rttCurrent:rttSmoothed:rttVariance:rttBest:packetsSent:packetsReceived:bytesSent:bytesReceived:bytesRetransmitted:bytesUnacked:duplicateBytesReceived:outOfOrderBytesReceived:sendBufferBytes:sendBandwidth:synRetransmits:tfoSynDataAcked:)(v62, v61, v58, v55, v52, v47, v43, v38, v32, v35, v11, v13, v15, v17, v19, v21, v23, v25);
}

Swift::Void __swiftcall NetworkAnalytics.resetNetId()()
{
  OUTLINED_FUNCTION_46();
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = OUTLINED_FUNCTION_0_0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = OUTLINED_FUNCTION_9_5();
  v8 = OUTLINED_FUNCTION_0_0(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v11 = *(v0 + OBJC_IVAR___SNNetworkAnalyticsInternal_queue);
  OUTLINED_FUNCTION_7_1();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_28_0(v12);
  swift_unknownObjectWeakInit();
  v24[4] = partial apply for closure #1 in NetworkAnalytics.resetNetId();
  v25 = v1;
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
  v24[2] = v13;
  v24[3] = &block_descriptor_6;
  v14 = _Block_copy(v24);
  v15 = v11;
  OUTLINED_FUNCTION_42();
  static DispatchQoS.unspecified.getter();
  OUTLINED_FUNCTION_2_9();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(v16, v17);
  v18 = OUTLINED_FUNCTION_27_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
  OUTLINED_FUNCTION_45_0(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  OUTLINED_FUNCTION_11_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_43_1();
  _Block_release(v14);

  v20 = OUTLINED_FUNCTION_16_1();
  v21(v20);
  v22 = OUTLINED_FUNCTION_16();
  v23(v22);
  OUTLINED_FUNCTION_39_0();

  OUTLINED_FUNCTION_47();
}

uint64_t sub_223546944()
{
  MEMORY[0x223DE39C0](v0 + 16);
  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t closure #1 in NetworkAnalytics.getNetId()(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  v7 = OUTLINED_FUNCTION_11_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = *a3;
  OUTLINED_FUNCTION_40_1();
  outlined init with copy of UUID?(a2 + v12, v11);
  return outlined assign with take of UUID?(v11, a1);
}

void specialized ConnectionProviderProtocol.cancelStaleConnectionTimer()()
{
  if (v0[266])
  {
    v1 = v0;
    v2 = one-time initialization token for siriNetwork;
    swift_unknownObjectRetain();
    if (v2 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.siriNetwork);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v16 = v7;
      *v6 = 136315394;
      v8 = *v1;
      v9 = _typeName(_:qualified:)();
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v16);

      *(v6 + 4) = v11;
      *(v6 + 12) = 2080;
      v12 = NetworkConnectionProvider.connectionIdentifier.getter();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v16);

      *(v6 + 14) = v14;
      _os_log_impl(&dword_223515000, v4, v5, "Provider - %s [%s]: Stale connection timer cancelled.", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DE38F0](v7, -1, -1);
      MEMORY[0x223DE38F0](v6, -1, -1);
    }

    v15 = v1[266];
    v1[266] = 0;
    swift_unknownObjectRelease();
    swift_getObjectType();
    OS_dispatch_source.cancel()();

    swift_unknownObjectRelease();
  }
}

{
  OUTLINED_FUNCTION_112();
  if (*(v0 + 2144))
  {
    v3 = v0;
    v4 = one-time initialization token for siriNetwork;
    swift_unknownObjectRetain();
    if (v4 != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v5, static Logger.siriNetwork);

    v6 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    OUTLINED_FUNCTION_122();
    if (OUTLINED_FUNCTION_121())
    {
      OUTLINED_FUNCTION_89();
      OUTLINED_FUNCTION_53_0();
      OUTLINED_FUNCTION_105();
      OUTLINED_FUNCTION_38_0(4.8151e-34);
      v7 = _typeName(_:qualified:)();
      OUTLINED_FUNCTION_119(v7, v8, v9);
      OUTLINED_FUNCTION_94();
      OUTLINED_FUNCTION_21_3();
      v10 = OUTLINED_FUNCTION_65();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v12);
      OUTLINED_FUNCTION_118();
      *(v1 + 14) = v2;
      OUTLINED_FUNCTION_36_0(&dword_223515000, v13, v14, "Provider - %s [%s]: Stale connection timer cancelled.");
      OUTLINED_FUNCTION_52_0();
      OUTLINED_FUNCTION_2_2();
      MEMORY[0x223DE38F0]();
      OUTLINED_FUNCTION_2_2();
      MEMORY[0x223DE38F0]();
    }

    v15 = *(v3 + 2144);
    *(v3 + 2144) = 0;
    swift_unknownObjectRelease();
    swift_getObjectType();
    OS_dispatch_source.cancel()();
    OUTLINED_FUNCTION_63_1();

    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_63_1();
  }
}

uint64_t partial apply for thunk for @callee_guaranteed () -> ()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void *OUTLINED_FUNCTION_21_1(void *a1)
{

  return memcpy(a1, &STACK[0x10F0], 0x599uLL);
}

uint64_t OUTLINED_FUNCTION_21_2()
{
}

uint64_t OUTLINED_FUNCTION_21_3()
{
  *(v1 + 4) = v2;
  *(v1 + 12) = 2080;
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
}

void OUTLINED_FUNCTION_21_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_81_0(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
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

void outlined bridged method (mbnn) of @objc NETSchemaNETSessionConnectionSnapshotCaptured.networkInterfaces.setter(uint64_t a1, void *a2, unint64_t *a3, uint64_t *a4)
{
  type metadata accessor for CTServiceDescriptor(0, a3, a4);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setNetworkInterfaces_];
}

id ConnectionSnapshotReport.netConnectionSnapshot.getter()
{
  v1 = *v0;
  v3 = v0[1];
  v2 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  memcpy(__dst, v0 + 5, sizeof(__dst));
  v6 = v0[85];
  v7 = v0[86];
  v8 = [objc_allocWithZone(MEMORY[0x277D58C28]) init];
  [v8 setSequenceNumber_];
  if (v8)
  {
    type metadata accessor for NetworkAnalytics(0);
    v9 = v8;
    [v9 setProvider_];

    v10 = v9;
    [v10 setSnapshotTriggerReason_];
  }

  if (*(v6 + 16))
  {
    v11 = MEMORY[0x277D84F90];
    v28 = MEMORY[0x277D84F90];
    v12 = *(v7 + 16);
    if (v12)
    {
      v13 = (v7 + 32);
      do
      {
        memcpy(v29, v13, 0xF9uLL);
        v14 = objc_allocWithZone(MEMORY[0x277D58BF0]);
        outlined init with copy of ConnectionTCPInfoMetrics(v29, v27);
        v15 = [v14 init];
        if (v15)
        {
          v16 = v15;
          v17 = v29[1];
          if (v29[1])
          {
            v18 = v29[0];
            v19 = v15;
            v17 = MEMORY[0x223DE2070](v18, v17);
          }

          else
          {
            v20 = v15;
          }

          v21 = SLOBYTE(v29[4]);
          [v16 setName_];

          [v16 setConnectionType_];
          outlined destroy of ConnectionTCPInfoMetrics(v29);
          v22 = v16;
          MEMORY[0x223DE2240]();
          if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v11 = v28;
        }

        else
        {
          outlined destroy of ConnectionTCPInfoMetrics(v29);
        }

        v13 += 256;
        --v12;
      }

      while (v12);
    }

    if (!v8)
    {

      return v8;
    }

    outlined bridged method (mbnn) of @objc NETSchemaNETSessionConnectionSnapshotCaptured.networkInterfaces.setter(v11, v8, &lazy cache variable for type metadata for NETSchemaNETNetworkInterface, 0x277D58BF0);
  }

  if (v8)
  {
    memcpy(v27, __dst, 0x139uLL);
    if (_s11SiriNetwork010ConnectionB6ReportVSgWOg(v27) == 1)
    {
      v23 = v8;
      v24 = 0;
    }

    else
    {
      memcpy(v29, v27, 0x139uLL);
      v25 = v8;
      v24 = ConnectionNetworkReport.netSessionConnectionNetwork.getter();
    }

    [v8 setNetwork_];
  }

  return v8;
}

id ConnectionSnapshotReport.netDebugConnectionSnapshot.getter()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);
  v3 = *(v0 + 376);
  v4 = *(v0 + 680);
  v5 = *(v0 + 688);
  v6 = *(v0 + 696);
  v7 = [objc_allocWithZone(MEMORY[0x277D58BB8]) init];
  if (v7)
  {
    if (one-time initialization token for sharedNetworkAnalytics != -1)
    {
      swift_once();
    }

    [v7 setSequenceNumber_];
    memcpy(__dst, (v0 + 40), 0x139uLL);
    if (_s11SiriNetwork010ConnectionB6ReportVSgWOg(__dst) == 1)
    {
      v8 = v7;
      v9 = 0;
    }

    else
    {
      memcpy(v28, __dst, sizeof(v28));
      v10 = v7;
      v9 = ConnectionNetworkReport.netDebugSessionConnectionNetwork.getter();
    }

    [v7 setNetwork_];
  }

  if (*(v4 + 16))
  {
    v11 = MEMORY[0x277D84F90];
    v27 = MEMORY[0x277D84F90];
    v12 = *(v5 + 16);
    if (v12)
    {
      v13 = (v5 + 32);
      do
      {
        memcpy(__dst, v13, 0xF9uLL);
        memcpy(v26, v13, sizeof(v26));
        outlined init with copy of ConnectionTCPInfoMetrics(__dst, v25);
        v14 = ConnectionTCPInfoMetrics.netDebugNetworkInterface.getter();
        if (v14)
        {
          v15 = v14;
          outlined destroy of ConnectionTCPInfoMetrics(__dst);
          v16 = v15;
          MEMORY[0x223DE2240]();
          if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v11 = v27;
        }

        else
        {
          outlined destroy of ConnectionTCPInfoMetrics(__dst);
        }

        v13 += 256;
        --v12;
      }

      while (v12);
    }

    if (!v7)
    {

      return v7;
    }

    outlined bridged method (mbnn) of @objc NETSchemaNETSessionConnectionSnapshotCaptured.networkInterfaces.setter(v11, v7, &lazy cache variable for type metadata for NETSchemaNETDebugNetworkInterface, 0x277D58B98);
  }

  if (v7)
  {
    v17 = v7;
    if (v3)
    {
      v18 = 0;
    }

    else
    {
      v18 = ConnectionPingInfoReport.netPingInfo.getter(v2, v1);
    }

    [v17 setPingInfo_];

    if (v6 == 4)
    {
      v19 = v17;
      v20 = 0;
    }

    else
    {
      type metadata accessor for NetworkAnalytics(0);
      v21 = v17;
      v22 = ConnectionQualityReport.symptomsBasedNetworkQuality.getter(v6);
      v20 = static NetworkAnalytics.netDebugSessionConnectionQuality(from:)(v22);
    }

    [v17 setQuality_];
  }

  return v7;
}

id @nonobjc SNConnectionTCPInfoMetrics.init(interfaceName:rttCurrent:rttSmoothed:rttVariance:rttBest:packetsSent:packetsReceived:bytesSent:bytesReceived:bytesRetransmitted:bytesUnacked:duplicateBytesReceived:outOfOrderBytesReceived:sendBufferBytes:sendBandwidth:synRetransmits:tfoSynDataAcked:)(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18)
{
  v20 = MEMORY[0x223DE2070]();

  v27 = [v26 initWithInterfaceName:v20 rttCurrent:a3 rttSmoothed:a4 rttVariance:a5 rttBest:a6 packetsSent:a7 packetsReceived:a8 bytesSent:a9 bytesReceived:a10 bytesRetransmitted:a11 bytesUnacked:a12 duplicateBytesReceived:a13 outOfOrderBytesReceived:a14 sendBufferBytes:a15 sendBandwidth:a16 synRetransmits:a17 tfoSynDataAcked:a18];

  return v27;
}

void *ConnectionNetworkReport.netSessionConnectionNetwork.getter()
{
  v2 = v0;
  v3 = [objc_allocWithZone(MEMORY[0x277D58C20]) init];
  v4 = v3;
  if (v3)
  {
    v5 = *(v0 + 2);
    if (v5)
    {
      v6 = *(v2 + 1);
      v7 = v3;
      v5 = MEMORY[0x223DE2070](v6, v5);
    }

    else
    {
      v8 = v3;
    }

    [v4 setCarrierName_];

    if (*(v2 + 4))
    {
      v9 = 0;
    }

    else
    {
      v9 = *v2;
    }

    [v4 setAttempCount_];
    v10 = *(v2 + 38);
    if (*(v2 + 312))
    {
      v10 = 0.0;
    }

    [v4 setClearChannelAssessmentScore_];
    v11 = *(v2 + 16);
    v12 = *(v2 + 136);
    OUTLINED_FUNCTION_0_18();
    [v4 setDnsResolutionTime_];
    v13 = *(v2 + 18);
    v14 = *(v2 + 152);
    OUTLINED_FUNCTION_0_18();
    [v4 setStartToDNSResolution_];
    v15 = *(v2 + 22);
    v16 = *(v2 + 184);
    OUTLINED_FUNCTION_0_18();
    [v4 setConnectionStartToEstablishmentTime_];
    v17 = *(v2 + 24);
    v18 = *(v2 + 200);
    OUTLINED_FUNCTION_0_18();
    [v4 setConnectionStartToTLSHandshake_];
    v19 = *(v2 + 26);
    v20 = *(v2 + 216);
    OUTLINED_FUNCTION_0_18();
    [v4 setTlsHandshakeTime_];
    v21 = *(v2 + 20);
    v22 = *(v2 + 168);
    OUTLINED_FUNCTION_0_18();
    [v4 setConnectionEstablishmentTime_];
    v23 = ConnectionNetworkReport.firstByteTimeInMs.getter();
    if (v24)
    {
      v25 = 0;
    }

    else
    {
      v25 = v23;
    }

    [v4 setFirstByteTime_];
    [v4 setIsCaptive_];
    v26 = *(v2 + 34);
    if (*(v2 + 280))
    {
      v26 = 0.0;
    }

    [v4 setRssi_];
    v27 = *(v2 + 36);
    if (*(v2 + 296))
    {
      v27 = 0.0;
    }

    [v4 setSnr_];
    if (*(v2 + 10))
    {
      v28 = *(v2 + 9);
      v29 = *(v2 + 10);
    }

    else
    {
      v28 = 0;
      v29 = 0xE000000000000000;
    }

    outlined bridged method (mbnn) of @objc NETSchemaNETSessionConnectionNetwork.primarySubflowInterfaceName.setter(v28, v29, v4);
    if (*(v2 + 15))
    {
      v30 = *(v2 + 14);
      type metadata accessor for NetworkAnalytics(0);
      v31 = v4;
      OUTLINED_FUNCTION_1_9();
      [v1 setConnectionMethod_];
    }

    if (*(v2 + 29))
    {
      v32 = *(v2 + 28);
      type metadata accessor for NetworkAnalytics(0);
      v33 = v4;
      [v33 setTlsVersion_];
    }
  }

  return v4;
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OUTLINED_FUNCTION_20_4(a1, a2, a3);
  OUTLINED_FUNCTION_2_19(v7, v8);
  if (v9)
  {
    __break(1u);
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSo26SNConnectionTCPInfoMetricsCGMd, &_ss17_NativeDictionaryVySSSo26SNConnectionTCPInfoMetricsCGMR);
  if (OUTLINED_FUNCTION_28_4())
  {
    OUTLINED_FUNCTION_95_0();
    OUTLINED_FUNCTION_16_8();
    if (!v11)
    {
      goto LABEL_14;
    }

    v6 = v10;
  }

  if (v5)
  {
    v12 = *(*v4 + 56);
    v13 = *(v12 + 8 * v6);
    *(v12 + 8 * v6) = v3;
    OUTLINED_FUNCTION_106_0();
  }

  else
  {
    v16 = OUTLINED_FUNCTION_52_3();
    specialized _NativeDictionary._insert(at:key:value:)(v16, v17, v18, v19, v20);
    OUTLINED_FUNCTION_106_0();
  }
}

{
  v7 = OUTLINED_FUNCTION_20_4(a1, a2, a3);
  OUTLINED_FUNCTION_2_19(v7, v8);
  if (v9)
  {
    __break(1u);
LABEL_12:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSs6UInt64VGMd, &_ss17_NativeDictionaryVySSs6UInt64VGMR);
  if (OUTLINED_FUNCTION_28_4())
  {
    OUTLINED_FUNCTION_95_0();
    OUTLINED_FUNCTION_16_8();
    if (!v11)
    {
      goto LABEL_12;
    }

    v6 = v10;
  }

  if (v5)
  {
    *(*(*v4 + 56) + 8 * v6) = v3;
    OUTLINED_FUNCTION_106_0();
  }

  else
  {
    v12 = OUTLINED_FUNCTION_52_3();
    specialized _NativeDictionary._insert(at:key:value:)(v12, v13, v14, v15, v16);
    OUTLINED_FUNCTION_106_0();
  }
}

uint64_t OUTLINED_FUNCTION_86()
{
  v2 = *(v0 - 312);

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_93()
{
  v2 = *(v0 - 312);
}

uint64_t OUTLINED_FUNCTION_93_0()
{

  return AsyncStream.Continuation.yield(_:)();
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t type metadata accessor for SNConnectionTCPInfoMetrics()
{
  result = lazy cache variable for type metadata for SNConnectionTCPInfoMetrics;
  if (!lazy cache variable for type metadata for SNConnectionTCPInfoMetrics)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SNConnectionTCPInfoMetrics);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConnectionMetrics(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 1433))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t objectdestroy_30Tm()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  OUTLINED_FUNCTION_109();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t objectdestroy_55Tm()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  OUTLINED_FUNCTION_3();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

void Connection.cancelSynchronously(_:isOnConnectionQueue:with:)()
{
  OUTLINED_FUNCTION_46();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = OUTLINED_FUNCTION_0_0(v10);
  v76 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_0_1();
  v17 = v16 - v15;
  v18 = type metadata accessor for DispatchQoS();
  v19 = OUTLINED_FUNCTION_0_0(v18);
  v75 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_0_1();
  v25 = v24 - v23;
  v26 = type metadata accessor for String.Encoding();
  v27 = OUTLINED_FUNCTION_11_1(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_0_1();
  if (v1[OBJC_IVAR___SNConnectionInternal_isCanceled])
  {
    if (v5)
    {
      v5();
    }

    goto LABEL_33;
  }

  v74 = v3;
  v1[OBJC_IVAR___SNConnectionInternal_isCanceled] = 1;
  dispatch_queue_get_label(0);
  static String.Encoding.utf8.getter();
  v30 = String.init(cString:encoding:)();
  v32 = v31;
  if (v7)
  {

    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v33, static Logger.siriNetwork);
    v34 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    v35 = OUTLINED_FUNCTION_16_0();
    if (os_log_type_enabled(v35, v36))
    {
      OUTLINED_FUNCTION_17_5();
      v37 = swift_slowAlloc();
      OUTLINED_FUNCTION_40_2(v37);
      OUTLINED_FUNCTION_68_3(&dword_223515000, v38, v39, "Connection - Cancel: on connection queue");
      v40 = OUTLINED_FUNCTION_1_2();
      MEMORY[0x223DE38F0](v40);
    }

    Connection.cancelSynchronously(_:)(v5);
    goto LABEL_33;
  }

  if ((v9 & 1) == 0)
  {
    goto LABEL_27;
  }

  v41 = v30;
  v42 = *&v1[OBJC_IVAR___SNConnectionInternal_connectionQueue];
  v43 = OS_dispatch_queue.label.getter();
  if (v32)
  {
    if (v41 == v43 && v32 == v44)
    {
      goto LABEL_26;
    }

    v46 = OUTLINED_FUNCTION_72_1();

    v47 = v74;
    if (v46)
    {
      goto LABEL_28;
    }
  }

  else
  {

    v47 = v74;
  }

  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v48 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_58(v48, static Logger.siriNetwork);
  v49 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  v50 = OUTLINED_FUNCTION_16_0();
  if (os_log_type_enabled(v50, v51))
  {
    OUTLINED_FUNCTION_17_5();
    v52 = swift_slowAlloc();
    OUTLINED_FUNCTION_40_2(v52);
    OUTLINED_FUNCTION_68_3(&dword_223515000, v53, v54, "Connection - Cancel: synchronously");
    v55 = OUTLINED_FUNCTION_1_2();
    MEMORY[0x223DE38F0](v55);
  }

  OUTLINED_FUNCTION_109();
  v56 = swift_allocObject();
  v56[2] = v1;
  v56[3] = v5;
  v56[4] = v47;
  OUTLINED_FUNCTION_3();
  v10 = swift_allocObject();
  *(v10 + 16) = partial apply for closure #1 in Connection.cancelSynchronously(_:isOnConnectionQueue:with:);
  *(v10 + 24) = v56;
  v81 = _sIg_Ieg_TRTA_0;
  v82 = v10;
  OUTLINED_FUNCTION_1_1();
  v78 = 1107296256;
  OUTLINED_FUNCTION_5_9();
  v79 = v57;
  v80 = &block_descriptor_37;
  v58 = _Block_copy(&v77);
  v18 = v82;
  v59 = v1;
  outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(v5);

  dispatch_sync(v42, v58);
  _Block_release(v58);
  LOBYTE(v58) = swift_isEscapingClosureAtFileLocation();

  if (v58)
  {
    __break(1u);
LABEL_26:

LABEL_27:

LABEL_28:
    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v60, static Logger.siriNetwork);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();
    v63 = OUTLINED_FUNCTION_16_0();
    if (os_log_type_enabled(v63, v64))
    {
      OUTLINED_FUNCTION_17_5();
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_223515000, v61, v62, "Connection - Cancel: async", v65, 2u);
      OUTLINED_FUNCTION_2_2();
      MEMORY[0x223DE38F0]();
    }

    v66 = *&v1[OBJC_IVAR___SNConnectionInternal_connectionQueue];
    OUTLINED_FUNCTION_7_1();
    v67 = swift_allocObject();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_109();
    v68 = swift_allocObject();
    v68[2] = v67;
    v68[3] = v5;
    v68[4] = v74;
    v81 = partial apply for closure #2 in Connection.cancelSynchronously(_:isOnConnectionQueue:with:);
    v82 = v68;
    OUTLINED_FUNCTION_1_1();
    v78 = 1107296256;
    OUTLINED_FUNCTION_3_5();
    v79 = v69;
    v80 = &block_descriptor_28_0;
    v70 = _Block_copy(&v77);
    v71 = OUTLINED_FUNCTION_32();
    outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(v71);

    static DispatchQoS.unspecified.getter();
    OUTLINED_FUNCTION_1_24();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(v72, v73);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x223DE2460](0, v25, v17, v70);
    _Block_release(v70);
    (*(v76 + 8))(v17, v10);
    (*(v75 + 8))(v25, v18);
  }

LABEL_33:
  OUTLINED_FUNCTION_47();
}

void closure #2 in Connection.cancelSynchronously(_:isOnConnectionQueue:with:)(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    Connection.cancelSynchronously(_:)(a2);
  }
}

uint64_t objectdestroy_24Tm()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  OUTLINED_FUNCTION_109();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t objectdestroy_24Tm_0()
{
  if (v0[2])
  {
    v1 = v0[3];
  }

  v2 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t BackgroundConnection.__deallocating_deinit()
{
  BackgroundConnection.deinit();

  return MEMORY[0x2821FE8D8](v0, 1256, 7);
}

uint64_t BackgroundConnection.deinit()
{
  BackgroundConnection.closeConnectionAndPrepareForReconnect(_:)(0);
  outlined destroy of weak ConnectionProviderDelegate?(v0 + 16);

  OUTLINED_FUNCTION_78_1(v5);
  outlined destroy of ConnectionConfiguration(v5);
  memcpy(__dst, (v0 + 560), 0x204uLL);
  outlined destroy of ConnectionConfiguration(__dst);
  v1 = *(v0 + 1080);
  swift_unknownObjectRelease();
  outlined destroy of NetworkConnectionProtocol?(v0 + 1096, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);

  v2 = *(v0 + 1152);

  v3 = *(v0 + 1160);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t BackgroundConnection.closeConnectionAndPrepareForReconnect(_:)(char a1)
{
  if (*(v1 + 1080))
  {
    v3 = *(v1 + 1088);
    swift_getObjectType();
    v4 = *(v3 + 472);
    swift_unknownObjectRetain();
    v5 = OUTLINED_FUNCTION_0_36();
    v4(v5);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_36_5();
  v6 = outlined init with copy of MessageCenterBrowserProtocol?(v1 + 1096, v12, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
  if (v13)
  {
    OUTLINED_FUNCTION_101_1(v6);
    outlined destroy of NetworkConnectionProtocol?(v12, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
    v7 = v11[3];
    v8 = v11[4];
    OUTLINED_FUNCTION_143(v11);
    (*(v9 + 144))(a1 & 1, v7, v8);
    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    outlined destroy of NetworkConnectionProtocol?(v12, &_s11SiriNetwork21CommunicationProtocol_pSgMd, &_s11SiriNetwork21CommunicationProtocol_pSgMR);
  }

  *(v1 + 1185) = 0;
  *(v1 + 1187) = 0;
  if (one-time initialization token for connectionClosed != -1)
  {
    swift_once();
  }

  return siri_kdebug_trace(static Constants.Signposts.connectionClosed);
}

Swift::Void __swiftcall ConnectionProviderProtocol.close()()
{
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = OUTLINED_FUNCTION_0_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[0] = type metadata accessor for DispatchQoS();
  v12 = OUTLINED_FUNCTION_0_0(v23[0]);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v18 = v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = (*(v2 + 152))(v3, v2);
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  v21[2] = v3;
  v21[3] = v2;
  v21[4] = v20;
  aBlock[4] = partial apply for closure #1 in ConnectionProviderProtocol.close();
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_1;
  v22 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v23[1] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x223DE2460](0, v18, v11, v22);
  _Block_release(v22);

  (*(v7 + 8))(v11, v4);
  (*(v14 + 8))(v18, v23[0]);
}

uint64_t sub_223548B50()
{
  MEMORY[0x223DE39C0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_223548B88()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

Swift::Void __swiftcall CommunicationProtocolAce.closeConnection(prepareForReconnect:)(Swift::Bool prepareForReconnect)
{
  v2 = v1;
  OUTLINED_FUNCTION_25_2();
  swift_beginAccess();
  v4 = v2[5];
  v5 = v2[6];
  *(v2 + 5) = xmmword_2235EF700;
  outlined consume of Data?(v4, v5);
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  OUTLINED_FUNCTION_27_1();
  swift_beginAccess();
  outlined assign with take of DataCompressing?(v13, (v2 + 14), &_s11SiriNetwork17DataDecompressing_pSgMd, &_s11SiriNetwork17DataDecompressing_pSgMR);
  swift_endAccess();
  if (!prepareForReconnect)
  {
    OUTLINED_FUNCTION_25_2();
    swift_beginAccess();
    v6 = v2[9];
    v7 = v2[10];
    *(v2 + 9) = xmmword_2235EF700;
    v8 = outlined consume of Data?(v6, v7);
    v9 = v2[42];
    MEMORY[0x28223BE20](v8);
    os_unfair_lock_lock(v9 + 4);
    closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply();
    os_unfair_lock_unlock(v9 + 4);
    OUTLINED_FUNCTION_25_2();
    swift_beginAccess();
    v10 = v2[11];
    v11 = v2[12];
    *(v2 + 11) = xmmword_2235EF700;
    outlined consume of Data?(v10, v11);
    CommunicationProtocolAce.cancelOutstandingBarriers()();
  }

  v12 = v2[13];
  if (v12)
  {

    v2[13] = 0;
  }
}

uint64_t outlined assign with take of DataCompressing?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_75_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_71(v5);
  v7 = *(v6 + 40);
  v8 = OUTLINED_FUNCTION_14_3();
  v9(v8);
  return v4;
}

uint64_t ZlibDataDecompressor.__deallocating_deinit()
{
  ZlibDataDecompressor.deinit();

  return MEMORY[0x2821FE8D8](v0, 136, 7);
}

uint64_t ZlibDataDecompressor.deinit()
{
  MEMORY[0x223DE38F0](*(v0 + 128), -1, -1);
  swift_beginAccess();
  inflateEnd((v0 + 16));
  swift_endAccess();
  return v0;
}

uint64_t closure #1 in ConnectionProviderProtocol.close()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    (*(a3 + 488))(0, a2, a3);
    return swift_unknownObjectRelease();
  }

  return result;
}

void NetworkConnectionProvider.closeWithError(_:)()
{
  OUTLINED_FUNCTION_46();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = OUTLINED_FUNCTION_0_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_1();
  v12 = v11 - v10;
  v13 = type metadata accessor for DispatchQoS();
  v14 = OUTLINED_FUNCTION_0_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_0_1();
  if (*(v0 + 2099))
  {
    goto LABEL_35;
  }

  *(v0 + 2099) = 1;
  v82 = v7;
  v81 = v13;
  v80 = v12;
  v79 = v16;
  v78 = v20 - v19;
  if (v3)
  {
    v87[0] = v3;
    v21 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      if (*(&v83[1] + 1) >> 60 == 10 && !v84)
      {
        v22 = *(&v83[1] + 1) == 0xA000000000000000 && *&v83[0] == 1;
        if (v22 && *(v83 + 8) == 0)
        {
          if (one-time initialization token for siriNetwork != -1)
          {
            OUTLINED_FUNCTION_0_8();
            swift_once();
          }

          v23 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_58(v23, static Logger.siriNetwork);

          v24 = Logger.logObject.getter();
          v25 = static os_log_type_t.default.getter();

          if (!os_log_type_enabled(v24, v25))
          {
            goto LABEL_27;
          }

          OUTLINED_FUNCTION_6_5();
          v26 = swift_slowAlloc();
          OUTLINED_FUNCTION_4_3();
          v27 = swift_slowAlloc();
          *&v83[0] = v27;
          *v26 = 136315138;
          v28 = NetworkConnectionProvider.connectionIdentifier.getter();
          v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, v83);

          *(v26 + 4) = v30;
          v31 = "Provider - NetworkConnectionProvider [%s]: Close and cancel connection after receiving cancellation";
          goto LABEL_20;
        }
      }

      outlined consume of NetworkConnectionError(*&v83[0], *(&v83[0] + 1), *&v83[1], *(&v83[1] + 1), v84);
    }

    if (one-time initialization token for siriNetwork != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v36, static Logger.siriNetwork);
    v37 = v3;

    v24 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v24, v38))
    {
      goto LABEL_27;
    }

    v39 = OUTLINED_FUNCTION_89();
    v40 = swift_slowAlloc();
    OUTLINED_FUNCTION_4_3();
    v41 = swift_slowAlloc();
    *&v83[0] = v41;
    *v39 = 136315394;
    v42 = NetworkConnectionProvider.connectionIdentifier.getter();
    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, v83);

    *(v39 + 4) = v44;
    *(v39 + 12) = 2112;
    v45 = v3;
    v46 = _swift_stdlib_bridgeErrorToNSError();
    *(v39 + 14) = v46;
    *v40 = v46;
    _os_log_impl(&dword_223515000, v24, v38, "Provider - NetworkConnectionProvider [%s]: Close and cancel connection for error: %@", v39, 0x16u);
    outlined destroy of NetworkConnectionProtocol?(v40, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
    __swift_destroy_boxed_opaque_existential_0(v41);
    goto LABEL_26;
  }

  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_58(v32, static Logger.siriNetwork);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v24, v25))
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_6_5();
  v26 = swift_slowAlloc();
  OUTLINED_FUNCTION_4_3();
  v27 = swift_slowAlloc();
  *&v83[0] = v27;
  *v26 = 136315138;
  v33 = NetworkConnectionProvider.connectionIdentifier.getter();
  v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, v83);

  *(v26 + 4) = v35;
  v31 = "Provider - NetworkConnectionProvider [%s]: Close and cancel connection with no error";
LABEL_20:
  _os_log_impl(&dword_223515000, v24, v25, v31, v26, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v27);
LABEL_26:
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x223DE38F0]();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x223DE38F0]();
LABEL_27:

  specialized ConnectionProviderProtocol.cancelStaleConnectionTimer()();
  specialized ConnectionProviderProtocol.cancelConnectionUnviableTimer()();
  specialized ConnectionProviderProtocol.cancelOpenTimer()();
  specialized ConnectionProviderProtocol.cancelOpenSlowTimer()();
  v47 = *(v0 + 2064);
  v48 = *(v0 + 2072);
  OUTLINED_FUNCTION_7_1();
  v49 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_66();
  v50 = swift_allocObject();
  v50[2] = v49;
  v50[3] = v47;
  v50[4] = v48;
  v50[5] = v3;
  OUTLINED_FUNCTION_8();
  swift_beginAccess();
  outlined init with copy of NetworkConnectionProtocol?(v1 + 16, v83, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
  if (*(&v83[1] + 1))
  {
    outlined init with take of RPCOspreyConnectionProtocol(v83, v87);
    v84 = 0;
    memset(v83, 0, sizeof(v83));
    swift_beginAccess();
    v51 = OUTLINED_FUNCTION_50();
    outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(v51);
    v52 = v3;
    v53 = OUTLINED_FUNCTION_50();
    outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(v53);
    outlined assign with take of NetworkConnectionProtocol?(v83, v1 + 16);
    swift_endAccess();
    v54 = *__swift_project_boxed_opaque_existential_1(v87, v87[3]);
    v55 = NWConnection.identifier.getter();
    v77 = v47;
    v56 = dispatch_group_create();
    dispatch_group_enter(v56);
    OUTLINED_FUNCTION_7_1();
    v57 = swift_allocObject();
    swift_weakInit();
    v58 = swift_allocObject();
    *(v58 + 16) = v56;
    *(v58 + 24) = v57;
    v59 = v56;

    NetworkConnectionProvider.updateConnectionMetricsSnapthotReport(_:)();

    dispatch_group_enter(v59);
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    outlined init with copy of RPCOspreyConnectionProtocol(v87, v83);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork0B18ConnectionProtocol_pMd, _s11SiriNetwork0B18ConnectionProtocol_pMR);
    type metadata accessor for NWConnection();
    if (swift_dynamicCast())
    {
      v60 = *&v86[0];
    }

    else
    {
      v60 = 0;
    }

    OUTLINED_FUNCTION_7_1();
    v61 = swift_allocObject();
    *(v61 + 16) = v59;
    v62 = v59;
    NetworkActivityTracing.removeNWConnection(_:completion:)(v60, partial apply for closure #3 in NetworkConnectionProvider.closeWithError(_:), v61);

    v76 = *(v1 + 2056);
    outlined init with copy of RPCOspreyConnectionProtocol(v87, v86);
    v63 = swift_allocObject();
    v63[2] = v55;
    outlined init with take of RPCOspreyConnectionProtocol(v86, (v63 + 3));
    v63[8] = partial apply for closure #1 in NetworkConnectionProvider.closeWithError(_:);
    v63[9] = v50;
    v84 = partial apply for closure #4 in NetworkConnectionProvider.closeWithError(_:);
    v85 = v63;
    *&v83[0] = MEMORY[0x277D85DD0];
    *(&v83[0] + 1) = 1107296256;
    *&v83[1] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    *(&v83[1] + 1) = &block_descriptor_242;
    v64 = _Block_copy(v83);

    static DispatchQoS.unspecified.getter();
    OUTLINED_FUNCTION_1_8();
    lazy protocol witness table accessor for type NetworkConnectionProvider and conformance NetworkConnectionProvider(v65, 255, v66);
    v67 = OUTLINED_FUNCTION_79();
    __swift_instantiateConcreteTypeFromMangledNameV2(v67, v68);
    OUTLINED_FUNCTION_83();
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](v69, v70, v71);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v64);

    outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v77);
    (*(v82 + 8))(v80, v4);
    (*(v79 + 8))(v78, v81);

    __swift_destroy_boxed_opaque_existential_0(v87);
  }

  else
  {
    v72 = OUTLINED_FUNCTION_50();
    outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(v72);
    v73 = v3;
    v74 = OUTLINED_FUNCTION_50();
    outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(v74);

    outlined destroy of NetworkConnectionProtocol?(v83, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
    closure #1 in NetworkConnectionProvider.closeWithError(_:)(v49, v47, v48, v3);

    v75 = OUTLINED_FUNCTION_50();
    outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v75);
  }

LABEL_35:
  OUTLINED_FUNCTION_47();
}

uint64_t sub_223549844()
{
  v1 = *(v0 + 16);

  if (*(v0 + 24))
  {
    v2 = *(v0 + 32);
  }

  OUTLINED_FUNCTION_66();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_223549890()
{
  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2235498C4()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  v1 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t ZlibDataCompressor.__deallocating_deinit()
{
  ZlibDataCompressor.deinit();

  return MEMORY[0x2821FE8D8](v0, 136, 7);
}

uint64_t ZlibDataCompressor.deinit()
{
  MEMORY[0x223DE38F0](*(v0 + 128), -1, -1);
  swift_beginAccess();
  deflateEnd((v0 + 16));
  swift_endAccess();
  return v0;
}

void *OUTLINED_FUNCTION_78_1(void *a1)
{

  return memcpy(a1, (v1 + 40), 0x204uLL);
}

void specialized ConnectionProviderProtocol.cancelConnectionUnviableTimer()()
{
  if (v0[267])
  {
    v1 = v0;
    v2 = one-time initialization token for siriNetwork;
    swift_unknownObjectRetain();
    if (v2 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.siriNetwork);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v16 = v7;
      *v6 = 136315394;
      v8 = *v1;
      v9 = _typeName(_:qualified:)();
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v16);

      *(v6 + 4) = v11;
      *(v6 + 12) = 2080;
      v12 = NetworkConnectionProvider.connectionIdentifier.getter();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v16);

      *(v6 + 14) = v14;
      _os_log_impl(&dword_223515000, v4, v5, "Provider - %s [%s]: Unviable timer cancelled", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DE38F0](v7, -1, -1);
      MEMORY[0x223DE38F0](v6, -1, -1);
    }

    v15 = v1[267];
    v1[267] = 0;
    swift_unknownObjectRelease();
    swift_getObjectType();
    OS_dispatch_source.cancel()();

    swift_unknownObjectRelease();
  }
}

{
  OUTLINED_FUNCTION_112();
  if (*(v0 + 2152))
  {
    v3 = v0;
    v4 = one-time initialization token for siriNetwork;
    swift_unknownObjectRetain();
    if (v4 != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v5, static Logger.siriNetwork);

    v6 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    OUTLINED_FUNCTION_122();
    if (OUTLINED_FUNCTION_121())
    {
      OUTLINED_FUNCTION_89();
      OUTLINED_FUNCTION_53_0();
      OUTLINED_FUNCTION_105();
      OUTLINED_FUNCTION_38_0(4.8151e-34);
      v7 = _typeName(_:qualified:)();
      OUTLINED_FUNCTION_119(v7, v8, v9);
      OUTLINED_FUNCTION_94();
      OUTLINED_FUNCTION_21_3();
      v10 = OUTLINED_FUNCTION_65();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v12);
      OUTLINED_FUNCTION_118();
      *(v1 + 14) = v2;
      OUTLINED_FUNCTION_36_0(&dword_223515000, v13, v14, "Provider - %s [%s]: Unviable timer cancelled");
      OUTLINED_FUNCTION_52_0();
      OUTLINED_FUNCTION_2_2();
      MEMORY[0x223DE38F0]();
      OUTLINED_FUNCTION_2_2();
      MEMORY[0x223DE38F0]();
    }

    v15 = *(v3 + 2152);
    *(v3 + 2152) = 0;
    swift_unknownObjectRelease();
    swift_getObjectType();
    OS_dispatch_source.cancel()();
    OUTLINED_FUNCTION_63_1();

    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_63_1();
  }
}

void CommunicationProtocolAce.cancelOutstandingBarriers()()
{
  OUTLINED_FUNCTION_36_2();
  v1 = *(v0 + 208);
  v2 = *(v1 + 64);
  v3 = *(v1 + 32);
  OUTLINED_FUNCTION_49();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
    v10 = v9;
LABEL_7:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = *(v1 + 56) + ((v10 << 10) | (16 * v11));
    v14 = *v12;
    v13 = *(v12 + 8);
    v15[0] = 0;

    v14(v15);
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      OUTLINED_FUNCTION_27_1();
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD8_VariantVys6UInt32VySbc_GMd, &_sSD8_VariantVys6UInt32VySbc_GMR);
      Dictionary._Variant.removeAll(keepingCapacity:)(0);
      swift_endAccess();
      OUTLINED_FUNCTION_77_0();
      return;
    }

    v6 = *(v1 + 64 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t CommunicationProtocolAce.deinit()
{
  CommunicationProtocolAce.closeConnection(prepareForReconnect:)(0);
  CommunicationProtocolAce.cancelAceHeaderTimeoutTimer()();
  CommunicationProtocolAce.cancelPingTimer()();
  outlined destroy of weak ConnectionProviderDelegate?(v0 + 16);

  outlined consume of Data?(*(v0 + 40), *(v0 + 48));
  outlined consume of Data._Representation(*(v0 + 56), *(v0 + 64));
  outlined consume of Data?(*(v0 + 72), *(v0 + 80));
  outlined consume of Data?(*(v0 + 88), *(v0 + 96));
  outlined destroy of NetworkConnectionProtocol?(v0 + 112, &_s11SiriNetwork17DataDecompressing_pSgMd, &_s11SiriNetwork17DataDecompressing_pSgMR);
  outlined destroy of NetworkConnectionProtocol?(v0 + 152, &_s11SiriNetwork15DataCompressing_pSgMd, &_s11SiriNetwork15DataCompressing_pSgMR);
  v1 = *(v0 + 192);
  swift_unknownObjectRelease();
  v2 = *(v0 + 208);

  v3 = *(v0 + 224);
  swift_unknownObjectRelease();
  v4 = *(v0 + 240);

  outlined consume of Data?(*(v0 + 256), *(v0 + 264));
  outlined consume of Data?(*(v0 + 320), *(v0 + 328));
  v5 = *(v0 + 336);

  return v0;
}

uint64_t CommunicationProtocolAce.__deallocating_deinit()
{
  CommunicationProtocolAce.deinit();

  return MEMORY[0x2821FE8D8](v0, 344, 7);
}

void CommunicationProtocolAce.cancelAceHeaderTimeoutTimer()()
{
  if (*(v0 + 192))
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
    v14 = *(v1 + 192);
    *(v1 + 192) = 0;

    swift_unknownObjectRelease();
  }
}

unint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ConnectionPingInfoReport()
{
  v1 = *v0;
  v2 = v0[1];
  return ConnectionPingInfoReport.debugDescription.getter();
}

unint64_t ConnectionPingInfoReport.debugDescription.getter()
{
  MEMORY[0x223DE2180](0x676E69506E61656DLL, 0xED000020734D6E49);
  Double.write<A>(to:)();
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x223DE2180](v0);

  _StringGuts.grow(_:)(26);

  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x223DE2180](v1);

  _StringGuts.grow(_:)(45);

  MEMORY[0x223DE2180](0, 0xE000000000000000);

  MEMORY[0x223DE2180](8236, 0xE200000000000000);
  MEMORY[0x223DE2180](0x6E756F43676E6970, 0xEA00000000002074);

  MEMORY[0x223DE2180](8236, 0xE200000000000000);
  MEMORY[0x223DE2180](0xD000000000000018, 0x80000002235F8D70);

  MEMORY[0x223DE2180](93, 0xE100000000000000);
  return 0xD000000000000022;
}

uint64_t NWConnection.init(endpoint:configuration:with:)(uint64_t a1, const void *a2, void *a3)
{
  v6 = type metadata accessor for NWEndpoint();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  memcpy(v15, a2, 0x204uLL);
  type metadata accessor for NWParameters();
  v11 = a3;
  NWParameters.init(configuration:with:)(v15, a3);
  (*(v7 + 16))(v10, a1, v6);
  v12 = dispatch thunk of NWConnection.__allocating_init(to:using:)();

  (*(v7 + 8))(a1, v6);
  return v12;
}

uint64_t NWParameters.init(configuration:with:)(const void *a1, void *a2)
{
  v150[65] = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for NWParameters.ServiceClass();
  isa = v5[-1].isa;
  v6 = *(isa + 8);
  MEMORY[0x28223BE20](v5);
  v141 = v135 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v150, a1, 0x204uLL);
  memcpy(v149, a1, sizeof(v149));
  v8 = ConnectionConfiguration.usingTLS.getter();
  v9 = &lazy cache variable for type metadata for OS_dispatch_queue;
  if (v8 && (v150[14] & 1) == 0)
  {
    OUTLINED_FUNCTION_4_14();
    if (!v11)
    {
      OUTLINED_FUNCTION_0_6();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.siriNetwork);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_3_13(v14))
    {
      v15 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_11_7(v15);
      OUTLINED_FUNCTION_15_0();
      _os_log_impl(v16, v17, v18, v19, v20, 2u);
      OUTLINED_FUNCTION_12();
    }

    v10 = LOBYTE(v150[25]);
    v21 = type metadata accessor for NWProtocolTLS.Options();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    v145 = NWProtocolTLS.Options.init()();
    v24 = dispatch thunk of NWProtocolTLS.Options.securityProtocolOptions.getter();
    sec_protocol_options_set_tls_tickets_enabled(v24, SBYTE1(v150[25]));
    if (v150[49] && ((v150[42] & 0x10000) != 0 || (v150[42] & 0x1000000) != 0))
    {
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_3_13(v26))
      {
        v27 = OUTLINED_FUNCTION_14();
        *v27 = 0;
        _os_log_impl(&dword_223515000, v25, v2, "Provider - Network setup: TLS13 enabled", v27, 2u);
        OUTLINED_FUNCTION_12();
      }

      sec_protocol_options_set_max_tls_protocol_version(v24, tls_protocol_version_TLSv13);
      sec_protocol_options_set_tls_resumption_enabled(v24, 1);
      sec_protocol_options_set_tls_false_start_enabled(v24, 1);
      v28 = String.utf8CString.getter();
      sec_protocol_options_add_tls_application_protocol(v24, (v28 + 32));
    }

    swift_unknownObjectRelease();
    v9 = &lazy cache variable for type metadata for OS_dispatch_queue;
  }

  else
  {
    v10 = 0;
    v145 = 0;
  }

  v29 = type metadata accessor for NWProtocolTCP.Options();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  v32 = NWProtocolTCP.Options.init()();
  v137 = v150[49] != 0;
  v138 = LOBYTE(v150[42]);
  v143 = v150[49] == 0;
  v144 = BYTE1(v150[42]);
  if (v150[49])
  {
    v33 = BYTE4(v150[42]);
  }

  else
  {
    v33 = v10;
  }

  dispatch thunk of NWProtocolTCP.Options.noDelay.setter();
  v140 = v33;
  dispatch thunk of NWProtocolTCP.Options.enableFastOpen.setter();
  v34 = *&v150[26];
  v35 = v150[27];
  if (LOBYTE(v150[27]) != 1 || LOBYTE(v150[29]) != 1 || (v150[31] & 1) == 0)
  {
    v136 = v5;
    dispatch thunk of NWProtocolTCP.Options.enableKeepalive.setter();
    dispatch thunk of NWProtocolTCP.Options.keepaliveCount.setter();
    OUTLINED_FUNCTION_4_14();
    if (!v11)
    {
      OUTLINED_FUNCTION_0_6();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Logger.siriNetwork);

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_8_9(v38))
    {
      v39 = OUTLINED_FUNCTION_55();
      *v39 = 134217984;
      *(v39 + 4) = dispatch thunk of NWProtocolTCP.Options.keepaliveCount.getter();

      OUTLINED_FUNCTION_6_14(&dword_223515000, v40, v41, "Provider - Network setup: keepaliveCount (number of keepalive probes to send before terminating): %ld");
      OUTLINED_FUNCTION_12();

      if (v35)
      {
LABEL_27:
        dispatch thunk of NWProtocolTCP.Options.keepaliveIdle.setter();

        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.default.getter();
        if (OUTLINED_FUNCTION_8_9(v43))
        {
          v44 = OUTLINED_FUNCTION_55();
          *v44 = 134217984;
          *(v44 + 4) = dispatch thunk of NWProtocolTCP.Options.keepaliveIdle.getter();

          OUTLINED_FUNCTION_6_14(&dword_223515000, v45, v46, "Provider - Network setup: keepaliveIdle (number of seconds of idleness to wait before keepalive): %ld");
          OUTLINED_FUNCTION_12();
        }

        else
        {
        }

        if ((v150[29] & 1) == 0)
        {
          Double.seconds.getter(*&v150[28]);
        }

        dispatch thunk of NWProtocolTCP.Options.keepaliveInterval.setter();

        v47 = Logger.logObject.getter();
        v48 = static os_log_type_t.default.getter();
        if (OUTLINED_FUNCTION_8_9(v48))
        {
          v49 = OUTLINED_FUNCTION_55();
          *v49 = 134217984;
          *(v49 + 4) = dispatch thunk of NWProtocolTCP.Options.keepaliveInterval.getter();

          OUTLINED_FUNCTION_6_14(&dword_223515000, v50, v51, "Provider - Network setup: keepaliveInterval (number of seconds to wait before resending TCP): %ld");
          OUTLINED_FUNCTION_12();
        }

        else
        {
        }

        v9 = &lazy cache variable for type metadata for OS_dispatch_queue;
        v5 = v136;
        goto LABEL_36;
      }
    }

    else
    {

      if (v35)
      {
        goto LABEL_27;
      }
    }

    Double.seconds.getter(v34);
    goto LABEL_27;
  }

LABEL_36:
  if ((v150[33] & 1) == 0)
  {
    v52 = *&v150[32];
    OUTLINED_FUNCTION_4_14();
    if (!v11)
    {
      OUTLINED_FUNCTION_0_6();
    }

    v53 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v53, static Logger.siriNetwork);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_3_13(v55))
    {
      v9 = OUTLINED_FUNCTION_55();
      *v9 = 134217984;
      *(v9 + 4) = Double.seconds.getter(v52);
      OUTLINED_FUNCTION_15_0();
      _os_log_impl(v56, v57, v58, v59, v60, 0xCu);
      OUTLINED_FUNCTION_2_17();
    }

    Double.seconds.getter(v52);
    dispatch thunk of NWProtocolTCP.Options.connectionDropTime.setter();
  }

  if (v8)
  {
    v61 = v145;
  }

  else
  {
    v61 = 0;
  }

  v62 = MEMORY[0x223DE1B10](v61, v32);
  if (v8 && (v150[14] & 1) == 0)
  {
    v139 = a2;
    memcpy(v149, v150, sizeof(v149));

    v63 = ConnectionConfiguration.resolvedHost.getter();
    if (v64)
    {
      v65 = v63;
      v66 = v64;
      v67 = String.utf8CString.getter();
      v68 = strdup((v67 + 32));

      if (v68)
      {
        v136 = v65;
        v69 = strlen(v68);
        v70 = xpc_data_create(v68, v69);
        NWParameters.nw.getter();
        nw_parameters_set_tls_session_id();
        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_4_14();
        if (!v11)
        {
          OUTLINED_FUNCTION_0_6();
        }

        v71 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_58(v71, static Logger.siriNetwork);

        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v72, v73))
        {
          v74 = OUTLINED_FUNCTION_55();
          v135[1] = v70;
          v75 = v74;
          v9 = swift_slowAlloc();
          *v149 = v9;
          *v75 = 136315138;
          v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v136, v66, v149);
          v136 = v72;
          v77 = v76;

          *(v75 + 4) = v77;
          v72 = v136;
          _os_log_impl(&dword_223515000, v136, v73, "Provider - Network setup: session set %s", v75, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v9);
          OUTLINED_FUNCTION_2_17();
          OUTLINED_FUNCTION_12();
        }

        else
        {
        }

        OUTLINED_FUNCTION_12();
        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    a2 = v139;
  }

  else
  {
  }

  LODWORD(v78) = v137 & v138;
  NWParameters.nw.getter();
  if (one-time initialization token for siriContext != -1)
  {
    swift_once();
  }

  nw_parameters_set_context();
  swift_unknownObjectRelease();
  NWParameters.nw.getter();
  nw_parameters_set_data_mode();
  swift_unknownObjectRelease();
  (*(isa + 13))(v141, *MEMORY[0x277CD8E10], v5);
  NWParameters.serviceClass.setter();
  NWParameters.nw.getter();
  nw_parameters_set_traffic_class();
  swift_unknownObjectRelease();
  if (((AFIsHorseman() | v78) & 1) == 0)
  {
    OUTLINED_FUNCTION_4_14();
    if (!v11)
    {
      OUTLINED_FUNCTION_0_6();
    }

    v89 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v89, static Logger.siriNetwork);
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_3_13(v91))
    {
      v92 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_11_7(v92);
      OUTLINED_FUNCTION_15_0();
      _os_log_impl(v93, v94, v95, v96, v97, 2u);
      OUTLINED_FUNCTION_2_17();
    }

    v98 = NWParameters.nw.getter();
    nw_parameters_set_multipath_service(v98, nw_multipath_service_interactive);
    goto LABEL_77;
  }

  if (LOBYTE(v150[12]) == 1 && AFHasCellularData())
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if ((*(static NetworkManager.shared + OBJC_IVAR___SNNetworkManagerInternal_lastSignalStrength + 8) & 1) == 0 && *(static NetworkManager.shared + OBJC_IVAR___SNNetworkManagerInternal_lastSignalStrength) >= 2)
    {
      OUTLINED_FUNCTION_4_14();
      if (!v11)
      {
        OUTLINED_FUNCTION_0_6();
      }

      v79 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_58(v79, static Logger.siriNetwork);
      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_3_13(v81))
      {
        v82 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_11_7(v82);
        OUTLINED_FUNCTION_15_0();
        _os_log_impl(v83, v84, v85, v86, v87, 2u);
        OUTLINED_FUNCTION_2_17();
      }

      v88 = NWParameters.nw.getter();
      nw_parameters_set_required_interface_type(v88, nw_interface_type_cellular);
LABEL_77:
      swift_unknownObjectRelease();
    }
  }

  NWParameters.nw.getter();
  nw_parameters_set_indefinite();
  swift_unknownObjectRelease();
  NWParameters.nw.getter();
  nw_parameters_set_tfo();
  swift_unknownObjectRelease();
  if (LOBYTE(v150[14]) != 1)
  {
    outlined destroy of ConnectionConfiguration(v150);
    goto LABEL_89;
  }

  if (v150[51] == 1 || (v99 = v150[53]) == 0)
  {
    v100 = v150[6];
    v99 = v150[7];

    outlined destroy of ConnectionConfiguration(v150);
    if (!v99)
    {
      goto LABEL_89;
    }
  }

  else
  {
    v100 = v150[52];

    outlined destroy of ConnectionConfiguration(v150);
  }

  OUTLINED_FUNCTION_4_14();
  if (!v11)
  {
    OUTLINED_FUNCTION_0_6();
  }

  v101 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_58(v101, static Logger.siriNetwork);

  v102 = Logger.logObject.getter();
  v103 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v102, v103))
  {
    v9 = OUTLINED_FUNCTION_55();
    v104 = swift_slowAlloc();
    *v149 = v104;
    *v9 = 136315138;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v99, v149);
    OUTLINED_FUNCTION_15_0();
    _os_log_impl(v105, v106, v107, v108, v109, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v104);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_2_17();
  }

  NWParameters.nw.getter();
  NetworkServiceProxyEnableInParameters();
  swift_unknownObjectRelease();
  NWParameters.nw.getter();
  v78 = MEMORY[0x223DE2070](v100, v99);

  NetworkServiceProxySetServiceNameInParameters();
  swift_unknownObjectRelease();

LABEL_89:
  v110 = v143 | v144;
  if (a2)
  {
    v111 = v9[80];
    v112 = a2;
    if (v111 != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    v113 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v113, static Logger.siriNetwork);
    v114 = Logger.logObject.getter();
    v115 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_3_13(v115))
    {
      v116 = OUTLINED_FUNCTION_14();
      *v116 = 0;
      _os_log_impl(&dword_223515000, v114, v78, "Provider - Network setup: Connection with initial payload", v116, 2u);
      OUTLINED_FUNCTION_12();
    }

    NWParameters.nw.getter();
    nw_parameters_set_initial_data_payload();

    swift_unknownObjectRelease();
  }

  if (v110)
  {
    OUTLINED_FUNCTION_4_14();
    if (!v11)
    {
      OUTLINED_FUNCTION_0_6();
    }

    v117 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v117, static Logger.siriNetwork);
    v118 = Logger.logObject.getter();
    v119 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_3_13(v119))
    {
      v120 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_11_7(v120);
      OUTLINED_FUNCTION_15_0();
      _os_log_impl(v121, v122, v123, v124, v125, 2u);
      OUTLINED_FUNCTION_2_17();
    }

    v126 = NWParameters.nw.getter();
    nw_parameters_set_expired_dns_behavior(v126, nw_parameters_expired_dns_behavior_allow);
    swift_unknownObjectRelease();
  }

  memset(v149, 0, 32);
  v148 = 8;
  if (task_info(*MEMORY[0x277D85F48], 0xFu, v149, &v148))
  {
    OUTLINED_FUNCTION_4_14();
    if (!v11)
    {
      OUTLINED_FUNCTION_0_6();
    }

    v127 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v127, static Logger.siriNetwork);
    v128 = Logger.logObject.getter();
    v129 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v128, v129))
    {
      v130 = OUTLINED_FUNCTION_14();
      *v130 = 0;
      v131 = "Provider - Network setup: Failed to get audit_token_t for current task.";
LABEL_110:
      _os_log_impl(&dword_223515000, v128, v129, v131, v130, 2u);
      OUTLINED_FUNCTION_12();
    }
  }

  else
  {
    NWParameters.nw.getter();
    v146 = *v149;
    v147 = *&v149[16];
    nw_parameters_set_source_application();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_4_14();
    if (!v11)
    {
      OUTLINED_FUNCTION_0_6();
    }

    v132 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_58(v132, static Logger.siriNetwork);
    v128 = Logger.logObject.getter();
    v129 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v128, v129))
    {
      v130 = OUTLINED_FUNCTION_14();
      *v130 = 0;
      v131 = "Provider - Network setup: Source application assigned (audit_token_t).";
      goto LABEL_110;
    }
  }

  v133 = *MEMORY[0x277D85DE8];
  return v62;
}