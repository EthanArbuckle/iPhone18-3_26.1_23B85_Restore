id NetworkAnalytics.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NetworkAnalytics.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NetworkAnalytics(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void type metadata completion function for NetworkAnalytics()
{
  type metadata accessor for UUID?();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = type metadata accessor for NetworkAnalyticsEventMessage(319);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for UUID?()
{
  if (!lazy cache variable for type metadata for UUID?)
  {
    type metadata accessor for UUID();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UUID?);
    }
  }
}

void type metadata completion function for NetworkAnalyticsEventMessage()
{
  type metadata accessor for UUID?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for NETSchemaNETClientEvent?();
    if (v1 <= 0x3F)
    {
      type metadata accessor for UInt64?();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for NETSchemaNETClientEvent?()
{
  if (!lazy cache variable for type metadata for NETSchemaNETClientEvent?)
  {
    type metadata accessor for CTServiceDescriptor(255, &lazy cache variable for type metadata for NETSchemaNETClientEvent, 0x277D58B78);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for NETSchemaNETClientEvent?);
    }
  }
}

void type metadata accessor for UInt64?()
{
  if (!lazy cache variable for type metadata for UInt64?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UInt64?);
    }
  }
}

void partial apply for closure #1 in NetworkAnalytics.emitAllCachedMessagesFor(_:)()
{
  v0 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_11_1(v0);
  v2 = *(v1 + 80);
  v3 = OUTLINED_FUNCTION_52_1();

  closure #1 in NetworkAnalytics.emitAllCachedMessagesFor(_:)(v3, v4);
}

uint64_t getEnumTagSinglePayload for ConnectionEndpointReport(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ConnectionEndpointReport(uint64_t result, int a2, int a3)
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

uint64_t get_enum_tag_for_layout_string_11SiriNetwork23ConnectionProviderStateO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ConnectionProviderState(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
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

uint64_t storeEnumTagSinglePayload for ConnectionProviderState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for ConnectionProviderState(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t lazy protocol witness table accessor for type NWError and conformance NWError()
{
  result = lazy protocol witness table cache variable for type NWError and conformance NWError;
  if (!lazy protocol witness table cache variable for type NWError and conformance NWError)
  {
    type metadata accessor for NWError();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NWError and conformance NWError);
  }

  return result;
}

BOOL NetworkWiFiManager.registerOneShotPowerStateDidChangeForWiFiInterface(_:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = OUTLINED_FUNCTION_0_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_1();
  v13 = v12 - v11;
  v14 = type metadata accessor for DispatchQoS();
  v15 = OUTLINED_FUNCTION_0_0(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_0_1();
  v22 = v21 - v20;
  if (a1)
  {
    v23 = *(v2 + OBJC_IVAR___SNNetworkWiFiManagerInternal_queue);
    v30 = v19;
    v31 = v18;
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v25[2] = v24;
    v25[3] = a1;
    v25[4] = a2;
    v35 = partial apply for closure #1 in NetworkWiFiManager.registerOneShotPowerStateDidChangeForWiFiInterface(_:);
    v36 = v25;
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
    v33 = v26;
    v34 = &block_descriptor_7;
    v27 = _Block_copy(aBlock);
    v28 = v23;

    outlined copy of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(a1, a2);
    static DispatchQoS.unspecified.getter();
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x223DE2460](0, v22, v13, v27);
    _Block_release(v27);

    (*(v8 + 8))(v13, v5);
    (*(v30 + 8))(v22, v31);
  }

  return a1 != 0;
}

void closure #1 in NetworkWiFiManager.registerOneShotPowerStateDidChangeForWiFiInterface(_:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_17;
  }

  v8 = Strong;
  if (NetworkWiFiManager.isWiFiEnabled()())
  {
    if (a2)
    {

      a2(v9);

      outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(a2);
      goto LABEL_17;
    }

LABEL_14:

    goto LABEL_17;
  }

  v10 = OBJC_IVAR___SNNetworkWiFiManagerInternal_queueGroup;
  if (!*&v8[OBJC_IVAR___SNNetworkWiFiManagerInternal_queueGroup])
  {
    v11 = OBJC_IVAR___SNNetworkWiFiManagerInternal_interface;
    v12 = *&v8[OBJC_IVAR___SNNetworkWiFiManagerInternal_interface];
    if (v12)
    {
      v13 = swift_allocObject();
      *(v13 + 16) = v8;
      v45 = partial apply for closure #1 in closure #1 in NetworkWiFiManager.registerOneShotPowerStateDidChangeForWiFiInterface(_:);
      v46 = v13;
      aBlock = MEMORY[0x277D85DD0];
      v42 = 1107296256;
      v43 = thunk for @escaping @callee_guaranteed (@guaranteed OspreyConnectionMetrics) -> ();
      v44 = &block_descriptor_16_1;
      v14 = _Block_copy(&aBlock);
      v15 = v12;
      v40 = v8;

      [v15 setEventHandler_];
      _Block_release(v14);

      v16 = *&v8[v11];
      if (v16)
      {
        aBlock = 0;
        if (![v16 startMonitoringEventType:1 error:&aBlock])
        {
          v30 = aBlock;
          v31 = _convertNSErrorToError(_:)();

          swift_willThrow();
          if (one-time initialization token for siriNetwork != -1)
          {
            swift_once();
          }

          v32 = type metadata accessor for Logger();
          __swift_project_value_buffer(v32, static Logger.siriNetwork);
          v33 = v31;
          v34 = Logger.logObject.getter();
          v35 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            v37 = swift_slowAlloc();
            *v36 = 138412290;
            v38 = v31;
            v39 = _swift_stdlib_bridgeErrorToNSError();
            *(v36 + 4) = v39;
            *v37 = v39;
            _os_log_impl(&dword_223515000, v34, v35, "NetworkWiFiManager - PowerNotification: Failed registering for power notifications, error: %@", v36, 0xCu);
            outlined destroy of NSObject?(v37);
            MEMORY[0x223DE38F0](v37, -1, -1);
            MEMORY[0x223DE38F0](v36, -1, -1);
          }

          else
          {
          }

          goto LABEL_17;
        }

        v17 = aBlock;
      }
    }

    v18 = dispatch_group_create();
    v19 = *&v8[v10];
    *&v8[v10] = v18;
    v20 = v18;

    dispatch_group_enter(v20);
    if (!*&v8[v10])
    {
      goto LABEL_14;
    }
  }

  if (!a2)
  {
    goto LABEL_14;
  }

  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;
  v45 = partial apply for thunk for @callee_guaranteed () -> ();
  v46 = v21;
  aBlock = MEMORY[0x277D85DD0];
  v42 = 1107296256;
  v43 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v44 = &block_descriptor_22;
  _Block_copy(&aBlock);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(a2, a3);
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v22 = type metadata accessor for DispatchWorkItem();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  DispatchWorkItem.init(flags:block:)();

  v25 = *&v8[v10];
  if (v25)
  {
    v26 = *&v8[OBJC_IVAR___SNNetworkWiFiManagerInternal_queue];
    v27 = v25;
    v28 = v26;
    OS_dispatch_group.notify(queue:work:)();
    outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(a2);
  }

  else
  {
    outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(a2);
  }

LABEL_17:
  v29 = *MEMORY[0x277D85DE8];
}

void closure #1 in closure #1 in NetworkWiFiManager.registerOneShotPowerStateDidChangeForWiFiInterface(_:)(void *a1, char *a2)
{
  if ([a1 type] == 1)
  {
    v3 = *&a2[OBJC_IVAR___SNNetworkWiFiManagerInternal_interface];
    if (v3 && (v4 = [v3 interfaceName]) != 0)
    {
      v5 = v4;
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0xE000000000000000;
    }

    v9 = MEMORY[0x223DE2070](v6, v8);

    [a2 powerStateDidChangeForWiFiInterfaceWithName_];
  }
}

Swift::Void __swiftcall NetworkWiFiManager.powerStateDidChangeForWiFiInterface(withName:)(Swift::String withName)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = OUTLINED_FUNCTION_0_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_1();
  v10 = v9 - v8;
  v11 = type metadata accessor for DispatchQoS();
  v12 = OUTLINED_FUNCTION_0_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_1();
  v19 = v18 - v17;
  if (NetworkWiFiManager.isWiFiEnabled()())
  {
    v20 = *(v1 + OBJC_IVAR___SNNetworkWiFiManagerInternal_queue);
    v25 = v11;
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = partial apply for closure #1 in NetworkWiFiManager.powerStateDidChangeForWiFiInterface(withName:);
    v30 = v21;
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_0_3(COERCE_DOUBLE(1107296256));
    v27 = v22;
    v28 = &block_descriptor_7_0;
    v23 = _Block_copy(aBlock);
    v24 = v20;

    static DispatchQoS.unspecified.getter();
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x223DE2460](0, v19, v10, v23);
    _Block_release(v23);

    (*(v5 + 8))(v10, v2);
    (*(v14 + 8))(v19, v25);
  }
}

void closure #1 in NetworkWiFiManager.powerStateDidChangeForWiFiInterface(withName:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR___SNNetworkWiFiManagerInternal_queueGroup;
    v3 = *(Strong + OBJC_IVAR___SNNetworkWiFiManagerInternal_queueGroup);
    if (v3)
    {
      dispatch_group_leave(v3);
      v4 = OBJC_IVAR___SNNetworkWiFiManagerInternal_interface;
      v5 = *&v1[OBJC_IVAR___SNNetworkWiFiManagerInternal_interface];
      if (v5)
      {
        [v5 setEventHandler_];
        v6 = *&v1[v4];
        if (v6)
        {
          [v6 stopMonitoringEventType_];
        }
      }

      v7 = *&v1[v2];
      *&v1[v2] = 0;

      v1 = v7;
    }
  }
}

double ConnectionMetrics.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = MEMORY[0x277D84F90];
  *(a1 + 16) = MEMORY[0x277D84F90];
  *(a1 + 24) = 0u;
  *(a1 + 40) = v2;
  *(a1 + 48) = 0;
  *(a1 + 52) = 1;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  _s11SiriNetwork27ConnectionPreparationReportVSgWOi0_(v4);
  memcpy((a1 + 96), v4, 0x168uLL);
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  _s11SiriNetwork24ConnectionSnapshotReportVSgWOi0_(__src);
  memcpy((a1 + 568), __src, 0x2C8uLL);
  *(a1 + 1280) = v2;
  result = 0.0;
  *(a1 + 1288) = 0u;
  *(a1 + 1304) = 0u;
  *(a1 + 1320) = 0;
  *(a1 + 1328) = 1;
  *(a1 + 1336) = 0;
  *(a1 + 1344) = 1;
  *(a1 + 1352) = 0;
  *(a1 + 1360) = 1;
  *(a1 + 1368) = 0u;
  *(a1 + 1384) = 0;
  *(a1 + 1388) = 1;
  *(a1 + 1392) = 0;
  *(a1 + 1400) = 1;
  *(a1 + 1408) = 0;
  *(a1 + 1416) = 1;
  *(a1 + 1424) = 0;
  *(a1 + 1432) = 1;
  return result;
}

uint64_t ConnectionMetrics.connectionIdentifier.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t ConnectionMetrics.connectionIdentifier.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t ConnectionMetrics.connectionMethodHistory.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t ConnectionMetrics.policyId.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_14_3();
}

uint64_t ConnectionMetrics.policyId.setter()
{
  OUTLINED_FUNCTION_13_3();
  v3 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

void *ConnectionMetrics.remoteMetrics.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 40);
  if (*(v3 + 16))
  {
    memcpy(__dst, (v3 + 32), 0x599uLL);
    memmove(a1, (v3 + 32), 0x599uLL);
    destructiveProjectEnumData for ConnectionConfigurationError(a1);
    return outlined init with copy of ConnectionMetrics(__dst, &v5);
  }

  else
  {
    _s11SiriNetwork17ConnectionMetricsVSgWOi0_(__dst);
    return memcpy(a1, __dst, 0x599uLL);
  }
}

uint64_t key path setter for ConnectionMetrics.remoteMetrics : ConnectionMetrics(void *__src)
{
  memcpy(__dst, __src, 0x599uLL);
  outlined init with copy of ConnectionMetrics?(__dst, &v3);
  return ConnectionMetrics.remoteMetrics.setter(__src);
}

uint64_t ConnectionMetrics.remoteMetrics.setter(void *__src)
{
  memcpy(v8, __src, 0x599uLL);
  v2 = _s11SiriNetwork17ConnectionMetricsVSgWOg(v8);
  v4 = *(v1 + 40);
  v3 = (v1 + 40);

  *v3 = MEMORY[0x277D84F90];
  if (v2 != 1)
  {
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
    v6 = *(*v3 + 16);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v6, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
    v7 = *v3;
    *(v7 + 16) = v6 + 1;
    result = memcpy((v7 + 1440 * v6 + 32), v8, 0x599uLL);
    *v3 = v7;
  }

  return result;
}

void (*ConnectionMetrics.remoteMetrics.modify(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x1690uLL);
  v4 = v3;
  *a1 = v3;
  v3[720] = v1;
  v5 = *(v1 + 40);
  v3[721] = v5;
  if (*(v5 + 16))
  {
    memcpy(v3 + 180, (v5 + 32), 0x599uLL);
    memmove(v4, (v5 + 32), 0x599uLL);
    destructiveProjectEnumData for ConnectionConfigurationError(v4);
    outlined init with copy of ConnectionMetrics(v4 + 1440, v4 + 2880);
  }

  else
  {
    _s11SiriNetwork17ConnectionMetricsVSgWOi0_(v3);
  }

  return ConnectionMetrics.remoteMetrics.modify;
}

void ConnectionMetrics.remoteMetrics.modify(void **a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    OUTLINED_FUNCTION_17_4(v15);
    OUTLINED_FUNCTION_17_4(v3 + 180);
    v4 = _s11SiriNetwork17ConnectionMetricsVSgWOg(v3 + 180);
    v5 = v3[721];
    if (v4 == 1)
    {
      v6 = v3[721];

      v7 = MEMORY[0x277D84F90];
    }

    else
    {
      v13 = v3[720];
      memcpy(v3 + 360, v15, 0x599uLL);
      outlined init with copy of ConnectionMetrics((v3 + 360), (v3 + 540));

      *(v13 + 40) = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_5_11();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(v14);
      OUTLINED_FUNCTION_15_4();
      v7 = *(v13 + 40);
      *(v7 + 16) = 4321;
      memcpy((v7 + 6220832), v3 + 180, 0x599uLL);
    }

    *(v3[720] + 40) = v7;
    OUTLINED_FUNCTION_17_4(v3 + 360);
    outlined destroy of ConnectionMetrics?((v3 + 360));
  }

  else
  {
    v8 = v3[721];
    OUTLINED_FUNCTION_17_4(v3 + 180);
    v9 = _s11SiriNetwork17ConnectionMetricsVSgWOg(v3 + 180);

    v10 = MEMORY[0x277D84F90];
    if (v9 != 1)
    {
      v11 = v3[720];
      *(v11 + 40) = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_5_11();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(v12);
      OUTLINED_FUNCTION_15_4();
      v10 = *(v11 + 40);
      *(v10 + 16) = v2 + 1;
      memcpy((v10 + 1440 * v2 + 32), v3 + 180, 0x599uLL);
    }

    *(v3[720] + 40) = v10;
  }

  free(v3);
}

uint64_t ConnectionMetrics.metricsCount.setter(uint64_t result)
{
  *(v1 + 48) = result;
  *(v1 + 52) = BYTE4(result) & 1;
  return result;
}

uint64_t ConnectionMetrics.attemptedEndpoints.setter(uint64_t a1)
{
  v3 = *(v1 + 1280);

  *(v1 + 1280) = a1;
  return result;
}

uint64_t ConnectionMetrics.connectionEdgeID.getter()
{
  v1 = *(v0 + 1288);
  v2 = *(v0 + 1296);

  return OUTLINED_FUNCTION_14_3();
}

uint64_t ConnectionMetrics.connectionEdgeID.setter()
{
  OUTLINED_FUNCTION_13_3();
  v3 = *(v1 + 1296);

  *(v1 + 1288) = v2;
  *(v1 + 1296) = v0;
  return result;
}

uint64_t ConnectionMetrics.connectionEdgeType.getter()
{
  v1 = *(v0 + 1304);
  v2 = *(v0 + 1312);

  return OUTLINED_FUNCTION_14_3();
}

uint64_t ConnectionMetrics.connectionEdgeType.setter()
{
  OUTLINED_FUNCTION_13_3();
  v3 = *(v1 + 1312);

  *(v1 + 1304) = v2;
  *(v1 + 1312) = v0;
  return result;
}

uint64_t ConnectionMetrics.connectionFallbackReason.getter()
{
  result = *(v0 + 1320);
  v2 = *(v0 + 1328);
  return result;
}

uint64_t ConnectionMetrics.connectionFallbackReason.setter(uint64_t result, char a2)
{
  *(v2 + 1320) = result;
  *(v2 + 1328) = a2 & 1;
  return result;
}

uint64_t ConnectionMetrics.connectionDelay.getter()
{
  result = *(v0 + 1336);
  v2 = *(v0 + 1344);
  return result;
}

uint64_t ConnectionMetrics.connectionDelay.setter(uint64_t result, char a2)
{
  *(v2 + 1336) = result;
  *(v2 + 1344) = a2 & 1;
  return result;
}

uint64_t ConnectionMetrics.firstTxByteDelay.getter()
{
  result = *(v0 + 1352);
  v2 = *(v0 + 1360);
  return result;
}

uint64_t ConnectionMetrics.firstTxByteDelay.setter(uint64_t result, char a2)
{
  *(v2 + 1352) = result;
  *(v2 + 1360) = a2 & 1;
  return result;
}

uint64_t ConnectionMetrics.wifiChannelInfo.getter()
{
  v1 = *(v0 + 1368);
  v2 = *(v0 + 1376);

  return OUTLINED_FUNCTION_14_3();
}

uint64_t ConnectionMetrics.wifiChannelInfo.setter()
{
  OUTLINED_FUNCTION_13_3();
  v3 = *(v1 + 1376);

  *(v1 + 1368) = v2;
  *(v1 + 1376) = v0;
  return result;
}

uint64_t ConnectionMetrics.simSubscriptions.setter(uint64_t result)
{
  *(v1 + 1384) = result;
  *(v1 + 1388) = BYTE4(result) & 1;
  return result;
}

uint64_t ConnectionMetrics.idsLastMessageDelay.getter()
{
  result = *(v0 + 1392);
  v2 = *(v0 + 1400);
  return result;
}

uint64_t ConnectionMetrics.idsLastMessageDelay.setter(uint64_t result, char a2)
{
  *(v2 + 1392) = result;
  *(v2 + 1400) = a2 & 1;
  return result;
}

uint64_t ConnectionMetrics.idsLastSocketDelay.getter()
{
  result = *(v0 + 1408);
  v2 = *(v0 + 1416);
  return result;
}

uint64_t ConnectionMetrics.idsLastSocketDelay.setter(uint64_t result, char a2)
{
  *(v2 + 1408) = result;
  *(v2 + 1416) = a2 & 1;
  return result;
}

uint64_t ConnectionMetrics.idsLastSocketOpenError.getter()
{
  result = *(v0 + 1424);
  v2 = *(v0 + 1432);
  return result;
}

uint64_t ConnectionMetrics.idsLastSocketOpenError.setter(uint64_t result, char a2)
{
  *(v2 + 1424) = result;
  *(v2 + 1432) = a2 & 1;
  return result;
}

uint64_t outlined destroy of ConnectionMetrics?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork17ConnectionMetricsVSgMd, &_s11SiriNetwork17ConnectionMetricsVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t storeEnumTagSinglePayload for ConnectionMetrics(uint64_t result, int a2, int a3)
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
    *(result + 1432) = 0;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
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
      *(result + 1433) = 1;
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

    *(result + 1433) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11SiriNetwork21ConnectionPolicyRouteV_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriNetwork21ConnectionPolicyRouteVGMd, &_ss23_ContiguousArrayStorageCy11SiriNetwork21ConnectionPolicyRouteVGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 120);
  return v4;
}

char *specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_24(a3, result);
  }

  return result;
}

{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_24(a3, result);
  }

  return result;
}

uint64_t outlined init with copy of ConnectionMetrics?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork17ConnectionMetricsVSgMd, &_s11SiriNetwork17ConnectionMetricsVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[120 * a2] <= __dst)
  {
    return memmove(__dst, __src, 120 * a2);
  }

  return __src;
}

uint64_t specialized == infix<A>(_:_:)(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0x6563697665444941;
  }

  if (v2)
  {
    v4 = 0xEF726573776F7242;
  }

  else
  {
    v4 = 0x80000002235F64B0;
  }

  if (a2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0x6563697665444941;
  }

  if (a2)
  {
    v6 = 0x80000002235F64B0;
  }

  else
  {
    v6 = 0xEF726573776F7242;
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

{
  v2 = "mits = %@ tfoSynDataAcked = %@}";
  if (a1)
  {
    v3 = "remoteIntelligenceClient";
  }

  else
  {
    v3 = "mits = %@ tfoSynDataAcked = %@}";
  }

  if (a2)
  {
    v2 = "remoteIntelligenceClient";
  }

  if ((v3 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v4 & 1;
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, char a2)
{
  v2 = 1685024615;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1685024615;
  switch(v4)
  {
    case 1:
      v3 = 0xE300000000000000;
      v5 = 6578530;
      break;
    case 2:
      v5 = 0x616C696176616E75;
      v3 = 0xEB00000000656C62;
      break;
    case 3:
      v3 = 0xE700000000000000;
      v5 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE300000000000000;
      v2 = 6578530;
      break;
    case 2:
      v2 = 0x616C696176616E75;
      v6 = 0xEB00000000656C62;
      break;
    case 3:
      v6 = 0xE700000000000000;
      v2 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

BOOL specialized == infix<A>(_:_:)(char a1, char a2)
{
  return qword_2235F1770[a1] == qword_2235F1770[a2];
}

{
  return (0x70403020100FFuLL >> (8 * a1)) == (0x70403020100FFuLL >> (8 * a2));
}

SiriNetwork::ConnectionType_optional __swiftcall ConnectionType.init(fromStringValue:)(Swift::String fromStringValue)
{
  v2 = v1;
  v3 = String.lowercased()();

  v4 = v3._countAndFlagsBits == 0x6E776F6E6B6E75 && v3._object == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_25() & 1) != 0)
  {

    v6 = 0;
  }

  else
  {
    v7 = v3._countAndFlagsBits == 0x69662D6977 && v3._object == 0xE500000000000000;
    if (v7 || (OUTLINED_FUNCTION_0_25() & 1) != 0)
    {

      v6 = 1;
    }

    else
    {
      v8 = v3._countAndFlagsBits == 1851881335 && v3._object == 0xE400000000000000;
      if (v8 || (OUTLINED_FUNCTION_0_25() & 1) != 0)
      {

        v6 = 2;
      }

      else
      {
        v9 = v3._countAndFlagsBits == 0x6E61727475 && v3._object == 0xE500000000000000;
        if (v9 || (OUTLINED_FUNCTION_0_25() & 1) != 0)
        {

          v6 = 3;
        }

        else
        {
          v10 = v3._countAndFlagsBits == 0x31616D6463206732 && v3._object == 0xE900000000000078;
          if (v10 || (OUTLINED_FUNCTION_0_25() & 1) != 0)
          {

            v6 = 4;
          }

          else
          {
            v11 = v3._countAndFlagsBits == 0x73727067206732 && v3._object == 0xE700000000000000;
            if (v11 || (OUTLINED_FUNCTION_0_25() & 1) != 0)
            {

              v6 = 5;
            }

            else
            {
              v12 = v3._countAndFlagsBits == 0x65676465206732 && v3._object == 0xE700000000000000;
              if (v12 || (OUTLINED_FUNCTION_0_25() & 1) != 0)
              {

                v6 = 6;
              }

              else
              {
                v13 = v3._countAndFlagsBits == 0x616D646377206733 && v3._object == 0xE800000000000000;
                if (v13 || (OUTLINED_FUNCTION_0_25() & 1) != 0)
                {

                  v6 = 7;
                }

                else
                {
                  v14 = v3._countAndFlagsBits == 0x6170647368206733 && v3._object == 0xE800000000000000;
                  if (v14 || (OUTLINED_FUNCTION_0_25() & 1) != 0)
                  {

                    v6 = 8;
                  }

                  else
                  {
                    v15 = v3._countAndFlagsBits == 0x6170757368206733 && v3._object == 0xE800000000000000;
                    if (v15 || (OUTLINED_FUNCTION_0_25() & 1) != 0)
                    {

                      v6 = 9;
                    }

                    else
                    {
                      v16 = v3._countAndFlagsBits == 0x64766520616D6463 && v3._object == 0xED0000307665726FLL;
                      if (v16 || (OUTLINED_FUNCTION_0_25() & 1) != 0)
                      {

                        v6 = 10;
                      }

                      else
                      {
                        v17 = v3._countAndFlagsBits == 0x64766520616D6463 && v3._object == 0xED0000617665726FLL;
                        if (v17 || (OUTLINED_FUNCTION_0_25() & 1) != 0)
                        {

                          v6 = 11;
                        }

                        else
                        {
                          v18 = v3._countAndFlagsBits == 0x64766520616D6463 && v3._object == 0xED0000627665726FLL;
                          if (v18 || (OUTLINED_FUNCTION_0_25() & 1) != 0)
                          {

                            v6 = 12;
                          }

                          else
                          {
                            v19 = v3._countAndFlagsBits == 1685090920 && v3._object == 0xE400000000000000;
                            if (v19 || (OUTLINED_FUNCTION_0_25() & 1) != 0)
                            {

                              v6 = 13;
                            }

                            else
                            {
                              v20 = v3._countAndFlagsBits == 6648940 && v3._object == 0xE300000000000000;
                              if (v20 || (OUTLINED_FUNCTION_0_25() & 1) != 0)
                              {

                                v6 = 14;
                              }

                              else
                              {
                                v21 = v3._countAndFlagsBits == 0x61736E726E206735 && v3._object == 0xE800000000000000;
                                if (v21 || (OUTLINED_FUNCTION_0_25() & 1) != 0)
                                {

                                  v6 = 15;
                                }

                                else
                                {
                                  v22 = v3._countAndFlagsBits == 0x726E206735 && v3._object == 0xE500000000000000;
                                  if (v22 || (OUTLINED_FUNCTION_0_25() & 1) != 0)
                                  {

                                    v6 = 16;
                                  }

                                  else
                                  {
                                    v23 = v3._countAndFlagsBits == 0x706374706DLL && v3._object == 0xE500000000000000;
                                    if (v23 || (OUTLINED_FUNCTION_0_25() & 1) != 0)
                                    {

                                      v6 = 17;
                                    }

                                    else
                                    {
                                      v24 = v3._countAndFlagsBits == 0x796C6C656264656CLL && v3._object == 0xE800000000000000;
                                      if (v24 || (OUTLINED_FUNCTION_0_25() & 1) != 0)
                                      {

                                        v6 = 18;
                                      }

                                      else
                                      {
                                        v25 = v3._countAndFlagsBits == 7562345 && v3._object == 0xE300000000000000;
                                        if (v25 || (OUTLINED_FUNCTION_0_25() & 1) != 0)
                                        {

                                          v6 = 19;
                                        }

                                        else
                                        {
                                          v26 = v3._countAndFlagsBits == 7368560 && v3._object == 0xE300000000000000;
                                          if (v26 || (OUTLINED_FUNCTION_0_25() & 1) != 0)
                                          {

                                            v6 = 20;
                                          }

                                          else
                                          {
                                            v27 = v3._countAndFlagsBits == 0x65636E65726F6C66 && v3._object == 0xE800000000000000;
                                            if (v27 || (OUTLINED_FUNCTION_0_25() & 1) != 0)
                                            {

                                              v6 = 21;
                                            }

                                            else
                                            {
                                              v28 = v3._countAndFlagsBits == 0x6C61636F6CLL && v3._object == 0xE500000000000000;
                                              if (v28 || (OUTLINED_FUNCTION_0_25() & 1) != 0)
                                              {

                                                v6 = 22;
                                              }

                                              else
                                              {
                                                v29 = v3._countAndFlagsBits == 0x706374706D776ELL && v3._object == 0xE700000000000000;
                                                if (v29 || (OUTLINED_FUNCTION_0_25() & 1) != 0)
                                                {

                                                  v6 = 23;
                                                }

                                                else if (v3._countAndFlagsBits == 0x6365737069 && v3._object == 0xE500000000000000)
                                                {

                                                  v6 = 24;
                                                }

                                                else
                                                {
                                                  v31 = OUTLINED_FUNCTION_0_25();

                                                  if (v31)
                                                  {
                                                    v6 = 24;
                                                  }

                                                  else
                                                  {
                                                    v6 = 25;
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
          }
        }
      }
    }
  }

  *v2 = v6;
  return result;
}

uint64_t ConnectionType.diagnosticConnectionType()()
{
  result = 2;
  v2 = 1 << *v0;
  if ((v2 & 0x1FFFC) == 0)
  {
    return (v2 & 0x1FE0001) == 0;
  }

  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ConnectionType@<X0>(uint64_t *a1@<X8>)
{
  result = ConnectionType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t ConnectionTypeWrapper.diagnosticConnectionType()()
{
  result = 2;
  v2 = 1 << *(v0 + OBJC_IVAR___SNConnectionTypeInternal_connectionType);
  if ((v2 & 0x1FFFC) == 0)
  {
    return (v2 & 0x1FE0001) == 0;
  }

  return result;
}

id ConnectionTypeWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ConnectionTypeWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConnectionTypeWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type ConnectionType and conformance ConnectionType()
{
  result = lazy protocol witness table cache variable for type ConnectionType and conformance ConnectionType;
  if (!lazy protocol witness table cache variable for type ConnectionType and conformance ConnectionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConnectionType and conformance ConnectionType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConnectionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE8)
  {
    if (a2 + 24 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 24) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 25;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v5 = v6 - 25;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ConnectionType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE7)
  {
    v6 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
          *result = a2 + 24;
        }

        break;
    }
  }

  return result;
}

uint64_t (*AceObject.internalAceId.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = outlined bridged method (pb) of @objc AceObject.aceId.getter(v1, &selRef_aceId);
  a1[1] = v3;
  return AceObject.internalAceId.modify;
}

uint64_t key path setter for AceObject.internalAceId : AceObject(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  v9 = OUTLINED_FUNCTION_2_13();
  return a5(v9);
}

void AceObject.internalAceId.setter(uint64_t a1, uint64_t a2, SEL *a3)
{
  if (a2)
  {
    v5 = MEMORY[0x223DE2070]();
  }

  else
  {
    v5 = 0;
  }

  [v3 *a3];
}

uint64_t (*AceObject.internalRefId.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = outlined bridged method (pb) of @objc AceObject.aceId.getter(v1, &selRef_refId);
  a1[1] = v3;
  return AceObject.internalRefId.modify;
}

uint64_t AceObject.internalAceId.modify(uint64_t *a1, char a2, void (*a3)(uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  if (a2)
  {
    v7 = a1[1];

    v8 = OUTLINED_FUNCTION_2_13();
    a3(v8);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_2_13();
    return (a3)(v10);
  }
}

BOOL @objc AceObject.isRestartable()(void *a1)
{
  v1 = a1;
  v2 = AceObject.isRestartable()();

  return v2;
}

Swift::String_optional __swiftcall AceObject.sessionRequestId()()
{
  v0 = 0;
  v1 = 0;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t @objc AceObject.setSessionRequestId(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }
}

uint64_t (*protocol witness for SessionObject.internalAceId.modify in conformance AceObject(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = *v1;
  a1[2] = *v1;
  *a1 = outlined bridged method (pb) of @objc AceObject.aceId.getter(v3, &selRef_aceId);
  a1[1] = v4;
  return AceObject.internalAceId.modify;
}

uint64_t (*protocol witness for SessionObject.internalRefId.modify in conformance AceObject(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = *v1;
  a1[2] = *v1;
  *a1 = outlined bridged method (pb) of @objc AceObject.aceId.getter(v3, &selRef_refId);
  a1[1] = v4;
  return AceObject.internalRefId.modify;
}

id protocol witness for SessionObject.serializedAceData() in conformance AceObject()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v7[0] = 0;
  v2 = [v1 serializedAceDataAndReturnError_];
  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

void protocol witness for SessionObject.setSessionRequestId(_:) in conformance AceObject(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (a2)
  {
    v4 = MEMORY[0x223DE2070]();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v3 setSessionRequestId_];
}

Swift::String_optional __swiftcall SARollbackRequest.sessionRequestId()()
{
  v1 = outlined bridged method (pb) of @objc AceObject.aceId.getter(v0, &selRef_requestId);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t @objc SARollbackRequest.setSessionRequestId(_:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a1;
  v7 = OUTLINED_FUNCTION_2_13();
  a4(v7);
}

Swift::String_optional __swiftcall SASSpeechCorrectionStatistics.sessionRequestId()()
{
  v1 = outlined bridged method (pb) of @objc AceObject.aceId.getter(v0, &selRef_interactionId);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

id @objc SARollbackRequest.sessionRequestId()(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  if (v7)
  {
    v8 = MEMORY[0x223DE2070](v5, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void SARollbackRequest.setSessionRequestId(_:)(uint64_t a1, uint64_t a2, SEL *a3)
{
  if (a2)
  {
    v5 = MEMORY[0x223DE2070]();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  [v3 *a3];
}

uint64_t specialized Data.InlineData.withUnsafeBytes<A>(_:)(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for DispatchData();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = a1;
  v14 = WORD2(a2);
  v13 = a2;
  DispatchData.init(bytes:)();
  v9 = DispatchData._bridgeToObjectiveC()();
  (*(v5 + 8))(v8, v4);
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

{
  v15 = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for DispatchData();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = a1;
  v14 = WORD2(a2);
  v13 = a2;
  DispatchData.init(bytes:)();
  v9 = DispatchData._bridgeToObjectiveC()();
  (*(v5 + 8))(v8, v4);
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

{
  v15 = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for DispatchData();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = a1;
  v14 = WORD2(a2);
  v13 = a2;
  DispatchData.init(bytes:)();
  v9 = DispatchData._bridgeToObjectiveC()();
  (*(v5 + 8))(v8, v4);
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t outlined bridged method (pb) of @objc AceObject.aceId.getter(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

Swift::Int __swiftcall PingInfo.totalPingCount()()
{
  OUTLINED_FUNCTION_0_26();
  v1 = *(*(v0 + 32) + 16);
  v2 = *(v0 + 16);
  result = v1 + v2;
  if (__OFADD__(v1, v2))
  {
    __break(1u);
  }

  return result;
}

void closure #1 in NetworkManager.acquireWiFiAssertion(wifiAssertionType:)(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR___SNNetworkManagerInternal_networkWiFiManager);
    v7 = a2;
    v6 = v5;
    NetworkWiFiManager.acquireWiFiAssertion(wifiAssertionType:)(&v7);
  }
}

void closure #1 in closure #1 in NetworkManager.updateNetworkPerformanceFeed()(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.siriNetwork);
    v7 = a2;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v27[0] = v11;
      *v10 = 136315138;
      if (a2)
      {
        v26 = a2;
        v12 = a2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v13 = String.init<A>(describing:)();
        v15 = v14;
      }

      else
      {
        v15 = 0xE300000000000000;
        v13 = 7104878;
      }

      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, v27);

      *(v10 + 4) = v16;
      _os_log_impl(&dword_223515000, v8, v9, "NetworkManager - PerformanceFeed: Historical data for WiFi. Error: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x223DE38F0](v11, -1, -1);
      MEMORY[0x223DE38F0](v10, -1, -1);
    }

    LOBYTE(v26) = 0;
    if (a1)
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
      v18 = a1;
    }

    else
    {
      v18 = 0;
      v17 = 0;
      v27[1] = 0;
      v27[2] = 0;
    }

    v27[0] = v18;
    v27[3] = v17;

    v19 = NetworkManager.acceptableSuccessRate(fullScorecard:hasMetrics:)(v27, &v26);
    outlined destroy of Any?(v27);
    v20 = v26;
    v21 = OBJC_IVAR___SNNetworkManagerInternal_lockConnectionQuality;
    [*&v5[OBJC_IVAR___SNNetworkManagerInternal_lockConnectionQuality] lock];
    if (v20 == 1)
    {
      v5[OBJC_IVAR___SNNetworkManagerInternal_connectionQualityReport + 2] = (v19 & 1) == 0;
      [*&v5[v21] unlock];
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 67109120;
        *(v24 + 4) = v19 & 1;
        _os_log_impl(&dword_223515000, v22, v23, "NetworkManager - PerformanceFeed: Symptoms WiFi Historical: %{BOOL}d", v24, 8u);
        MEMORY[0x223DE38F0](v24, -1, -1);
      }
    }

    else
    {
      v5[OBJC_IVAR___SNNetworkManagerInternal_connectionQualityReport + 2] = 2;
      v25 = *&v5[v21];
      [v25 unlock];
    }
  }
}

void closure #1 in closure #2 in NetworkManager.updateNetworkPerformanceFeed()(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (one-time initialization token for siriNetwork != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.siriNetwork);
    v7 = a2;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v27[0] = v11;
      *v10 = 136315138;
      if (a2)
      {
        v26 = a2;
        v12 = a2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v13 = String.init<A>(describing:)();
        v15 = v14;
      }

      else
      {
        v15 = 0xE300000000000000;
        v13 = 7104878;
      }

      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, v27);

      *(v10 + 4) = v16;
      _os_log_impl(&dword_223515000, v8, v9, "NetworkManager - PerformanceFeed: Historical data for Cell. Error: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x223DE38F0](v11, -1, -1);
      MEMORY[0x223DE38F0](v10, -1, -1);
    }

    LOBYTE(v26) = 0;
    if (a1)
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
      v18 = a1;
    }

    else
    {
      v18 = 0;
      v17 = 0;
      v27[1] = 0;
      v27[2] = 0;
    }

    v27[0] = v18;
    v27[3] = v17;

    v19 = NetworkManager.acceptableSuccessRate(fullScorecard:hasMetrics:)(v27, &v26);
    outlined destroy of Any?(v27);
    v20 = v26;
    v21 = OBJC_IVAR___SNNetworkManagerInternal_lockConnectionQuality;
    [*&v5[OBJC_IVAR___SNNetworkManagerInternal_lockConnectionQuality] lock];
    if (v20 == 1)
    {
      v5[OBJC_IVAR___SNNetworkManagerInternal_connectionQualityReport + 3] = (v19 & 1) == 0;
      [*&v5[v21] unlock];
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 67109120;
        *(v24 + 4) = v19 & 1;
        _os_log_impl(&dword_223515000, v22, v23, "NetworkManager - PerformanceFeed: Symptoms Cellular Historical: %{BOOL}d", v24, 8u);
        MEMORY[0x223DE38F0](v24, -1, -1);
      }
    }

    else
    {
      v5[OBJC_IVAR___SNNetworkManagerInternal_connectionQualityReport + 3] = 2;
      v25 = *&v5[v21];
      [v25 unlock];
    }
  }
}

uint64_t NetworkManager.networkQuality(networkType:)(uint64_t a1)
{
  v2 = NetworkManager.currentConnectionQualityReport()();
  v3 = v2;
  if (!a1)
  {
    return qword_2235F19C0[v3];
  }

  if (a1 == 1)
  {
    v3 = v2 >> 8;
    return qword_2235F19C0[v3];
  }

  if (a1 != 2)
  {
    return 0;
  }

  result = 1;
  if (v3)
  {
    v5 = v3 >> 8;
    v6 = BYTE1(v3) == 1 || v3 == 1;
    v7 = 2;
    if (!v6)
    {
      v7 = 0;
    }

    if (v5)
    {
      return v7;
    }
  }

  return result;
}

uint64_t static ConnectionTCPInfoMetrics.connectionTCPInfoMetrics(from:wasConnected:)(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  outlined init with copy of NetworkConnectionProtocol?(a1, &v13);
  if (!v17)
  {
    outlined destroy of ConnectionSnapshotReport?(&v13, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork0B18ConnectionProtocol_pMd, _s11SiriNetwork0B18ConnectionProtocol_pMR);
  v2 = type metadata accessor for NWConnection();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  MEMORY[0x223DE1A50]();
  v3 = nw_connection_copy_tcp_info();
  swift_unknownObjectRelease();
  v17 = v2;
  v18 = &protocol witness table for NWConnection;
  v13 = v12;

  static ConnectionTCPInfoMetrics.connectionCopyTCPInfo(from:wasConnected:xpcTCPInfo:)(&v13, 1, v3, v4, v5, v6, v7, v8, v12, SHIDWORD(v12), v13, v14, v15, v16, v17, SHIDWORD(v17), v18, v19, v20, v21, v22, v23, v24, vars0, vars8);
  v10 = v9;
  swift_unknownObjectRelease();

  outlined destroy of ConnectionSnapshotReport?(&v13, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
  return v10;
}

void static ConnectionTCPInfoMetrics.connectionCopyTCPInfo(from:wasConnected:xpcTCPInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12, int a13, uint64_t a14, int a15, int a16, uint64_t a17, int a18, int a19, uint64_t a20, uint64_t a21, int a22, int a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_46();
  a24 = v25;
  a25 = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = type metadata accessor for NWInterface.InterfaceType();
  v34 = OUTLINED_FUNCTION_0_0(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_0_1();
  v41 = v40 - v39;
  v42 = type metadata accessor for NWInterface();
  v43 = OUTLINED_FUNCTION_0_0(v42);
  v142 = v44;
  v46 = *(v45 + 64);
  v47 = MEMORY[0x28223BE20](v43);
  v49 = &v119 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v51 = &v119 - v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network6NWPathVSgMd, &_s7Network6NWPathVSgMR);
  v53 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52 - 8);
  v55 = &v119 - v54;
  if ((v30 & 1) == 0)
  {
    goto LABEL_13;
  }

  outlined init with copy of NetworkConnectionProtocol?(v32, &v145);
  if (!v147)
  {
    outlined destroy of ConnectionSnapshotReport?(&v145, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork0B18ConnectionProtocol_pMd, _s11SiriNetwork0B18ConnectionProtocol_pMR);
  type metadata accessor for NWConnection();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    OUTLINED_FUNCTION_47();
    return;
  }

  v138 = v33;
  v56 = v143;
  v145._countAndFlagsBits = NWConnection.identifier.getter();
  countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  v139 = v58;
  if (!v28)
  {
LABEL_7:
    if (one-time initialization token for siriNetwork != -1)
    {
LABEL_60:
      OUTLINED_FUNCTION_0_6();
    }

    v61 = type metadata accessor for Logger();
    __swift_project_value_buffer(v61, static Logger.siriNetwork);
    v62 = v139;

    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = countAndFlagsBits;
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v145._countAndFlagsBits = v67;
      *v66 = 136315138;
      v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v62, &v145._countAndFlagsBits);

      *(v66 + 4) = v68;
      _os_log_impl(&dword_223515000, v63, v64, "NetworkMetrics: TCP Info not reachable for connection %s because path doesn't exist", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v67);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();
    }

    else
    {
    }

    goto LABEL_13;
  }

  v59 = swift_unknownObjectRetain();
  v60 = MEMORY[0x223DE3B00](v59);
  if (v60 != XPC_TYPE_DICTIONARY.getter() || xpc_dictionary_get_count(v28) < 1)
  {
    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  v124 = countAndFlagsBits;
  v150 = MEMORY[0x277D84F98];
  v69 = swift_allocObject();
  *(v69 + 16) = &v150;
  v70 = swift_allocObject();
  *(v70 + 16) = partial apply for closure #1 in static ConnectionTCPInfoMetrics.connectionCopyTCPInfo(from:wasConnected:xpcTCPInfo:);
  *(v70 + 24) = v69;
  v126 = v69;
  v148 = partial apply for thunk for @callee_guaranteed (@unowned UnsafePointer<Int8>, @guaranteed OS_xpc_object) -> (@unowned Bool);
  v149 = v70;
  v145._countAndFlagsBits = MEMORY[0x277D85DD0];
  v145._object = 1107296256;
  v146 = thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<Int8>, @guaranteed OS_xpc_object) -> (@unowned Bool);
  v147 = &block_descriptor_9;
  v71 = _Block_copy(&v145);
  v136 = v28;

  v72 = v136;

  xpc_dictionary_apply(v72, v71);
  _Block_release(v71);
  LOBYTE(v71) = swift_isEscapingClosureAtFileLocation();

  if (v71)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (!*(v150 + 16))
  {

    swift_unknownObjectRelease();

    goto LABEL_13;
  }

  NWConnection.currentPath.getter();
  countAndFlagsBits = type metadata accessor for NWPath();
  if (__swift_getEnumTagSinglePayload(v55, 1, countAndFlagsBits) == 1)
  {
    outlined destroy of ConnectionSnapshotReport?(v55, &_s7Network6NWPathVSgMd, &_s7Network6NWPathVSgMR);
    goto LABEL_53;
  }

  v122 = v56;
  v73 = NWPath.availableInterfaces.getter();
  (*(*(countAndFlagsBits - 8) + 8))(v55, countAndFlagsBits);
  v135 = *(v73 + 16);
  if (!v135)
  {
LABEL_52:

LABEL_53:

    static ConnectionTCPInfoMetrics.setConnectionMetricsTCPInfo(_:from:)();
    v36 = v110;

    v41 = v139;
    if (one-time initialization token for siriNetwork == -1)
    {
LABEL_54:
      v111 = type metadata accessor for Logger();
      __swift_project_value_buffer(v111, static Logger.siriNetwork);

      v112 = Logger.logObject.getter();
      v113 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v112, v113))
      {
        v114 = swift_slowAlloc();
        v145._countAndFlagsBits = swift_slowAlloc();
        *v114 = 136315394;
        v115 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v124, v41, &v145._countAndFlagsBits);

        *(v114 + 4) = v115;
        *(v114 + 12) = 2080;
        v116 = MEMORY[0x223DE2280](v36, &type metadata for ConnectionTCPInfoMetrics);
        v118 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v116, v117, &v145._countAndFlagsBits);

        *(v114 + 14) = v118;
        _os_log_impl(&dword_223515000, v112, v113, "NetworkMetrics: TCP Info by interface for connection %s: %s", v114, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12();
      }

      else
      {
      }

      swift_unknownObjectRelease();

      goto LABEL_13;
    }

LABEL_63:
    OUTLINED_FUNCTION_0_6();
    goto LABEL_54;
  }

  v74 = 0;
  OUTLINED_FUNCTION_9_7();
  v134 = v75;
  v132 = v76 + 32;
  v133 = v76 + 16;
  v131 = (v36 + 11);
  v130 = *MEMORY[0x277CD8CB0];
  v127 = *MEMORY[0x277CD8CA8];
  v125 = *MEMORY[0x277CD8CB8];
  v123 = *MEMORY[0x277CD8CA0];
  v129 = v76 + 8;
  v120 = (v36 + 1);
  v36 = MEMORY[0x277D84F98];
  v121 = *MEMORY[0x277CD8CC0];
  v128 = v73;
  while (1)
  {
    if (v74 >= *(v73 + 16))
    {
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    countAndFlagsBits = v142;
    v77 = (*(v142 + 16))(v51, v134 + *(v142 + 72) * v74, v42);
    v140 = MEMORY[0x223DE1820](v77);
    v141 = v78;
    (*(countAndFlagsBits + 32))(v49, v51, v42);
    NWInterface.type.getter();
    (*v131)(v41, v138);
    OUTLINED_FUNCTION_7_12(&a23);
    if (v84)
    {
LABEL_25:
      MEMORY[0x223DE1820]();
      v79 = String.lowercased()();
      countAndFlagsBits = v79._countAndFlagsBits;

      v145 = v79;
      v143 = 0x6365737069;
      v144 = 0xE500000000000000;
      lazy protocol witness table accessor for type String and conformance String();
      v80 = StringProtocol.contains<A>(_:)();

      v81 = OUTLINED_FUNCTION_0_27();
      v82(v81);
      if (v80)
      {
        countAndFlagsBits_low = 24;
      }

      else
      {
        countAndFlagsBits_low = 0;
      }

      goto LABEL_39;
    }

    OUTLINED_FUNCTION_7_12(&a19);
    if (v84)
    {
      v85 = OUTLINED_FUNCTION_0_27();
      v86(v85);
      countAndFlagsBits_low = 1;
LABEL_39:
      v137 = countAndFlagsBits_low;
      goto LABEL_40;
    }

    OUTLINED_FUNCTION_7_12(&a16);
    if (v87)
    {
      if (one-time initialization token for shared != -1)
      {
        OUTLINED_FUNCTION_4_11();
        swift_once();
      }

      NetworkManager.connectionTechnologyForCellularInterface()();
      v88 = OUTLINED_FUNCTION_0_27();
      v89(v88);
      countAndFlagsBits_low = LOBYTE(v145._countAndFlagsBits);
      goto LABEL_39;
    }

    OUTLINED_FUNCTION_7_12(&a13);
    if (v90)
    {
      v91 = OUTLINED_FUNCTION_0_27();
      v92(v91);
      countAndFlagsBits_low = 23;
      goto LABEL_39;
    }

    OUTLINED_FUNCTION_7_12(&a10);
    if (v107)
    {
      goto LABEL_25;
    }

    v108 = OUTLINED_FUNCTION_0_27();
    v109(v108);
    (*v120)(v41, v138);
    v137 = 0;
LABEL_40:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v145._countAndFlagsBits = v36;
    v94 = specialized __RawDictionaryStorage.find<A>(_:)(v140, v141);
    v96 = v36[2];
    v97 = (v95 & 1) == 0;
    v98 = v96 + v97;
    if (__OFADD__(v96, v97))
    {
      goto LABEL_59;
    }

    countAndFlagsBits = v94;
    v99 = v95;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS11SiriNetwork14ConnectionTypeOGMd, &_ss17_NativeDictionaryVySS11SiriNetwork14ConnectionTypeOGMR);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v98))
    {
      break;
    }

LABEL_44:
    v73 = v128;
    if (v99)
    {

      v36 = v145._countAndFlagsBits;
      *(*(v145._countAndFlagsBits + 56) + countAndFlagsBits) = v137;
    }

    else
    {
      v36 = v145._countAndFlagsBits;
      *(v145._countAndFlagsBits + 8 * (countAndFlagsBits >> 6) + 64) |= 1 << countAndFlagsBits;
      v102 = (v36[6] + 16 * countAndFlagsBits);
      v103 = v141;
      *v102 = v140;
      v102[1] = v103;
      *(v36[7] + countAndFlagsBits) = v137;
      v104 = v36[2];
      v105 = __OFADD__(v104, 1);
      v106 = v104 + 1;
      if (v105)
      {
        __break(1u);
        goto LABEL_62;
      }

      v36[2] = v106;
    }

    if (v135 == ++v74)
    {
      goto LABEL_52;
    }
  }

  v100 = specialized __RawDictionaryStorage.find<A>(_:)(v140, v141);
  if ((v99 & 1) == (v101 & 1))
  {
    countAndFlagsBits = v100;
    goto LABEL_44;
  }

  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t closure #1 in static ConnectionTCPInfoMetrics.connectionTCPInfoMetrics(from:wasConnected:queue:deadline:_:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v21 = type metadata accessor for NWConnection();

  static ConnectionTCPInfoMetrics.connectionCopyTCPInfo(from:wasConnected:xpcTCPInfo:)(&v17, a3, a1, v8, v9, v10, v11, v12, v16, SHIDWORD(v16), a2, v18, v19, v20, v21, SHIDWORD(v21), &protocol witness table for NWConnection, v22, v23, v24, v25, v26, v27, v28, v29);
  v14 = v13;
  outlined destroy of ConnectionSnapshotReport?(&v17, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
  if (a4)
  {
    a4(v14);
  }
}

void closure #2 in static ConnectionTCPInfoMetrics.connectionTCPInfoMetrics(from:wasConnected:queue:deadline:_:)()
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
  v21 = v20 - v19;
  v22 = swift_allocObject();
  *(v22 + 16) = v1;
  *(v22 + 24) = v3;
  v24[4] = partial apply for closure #1 in closure #2 in static ConnectionTCPInfoMetrics.connectionTCPInfoMetrics(from:wasConnected:queue:deadline:_:);
  v24[5] = v22;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 1107296256;
  v24[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v24[3] = &block_descriptor_10;
  v23 = _Block_copy(v24);
  swift_unknownObjectRetain();

  static DispatchQoS.unspecified.getter();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x223DE2460](0, v21, v12, v23);
  _Block_release(v23);
  (*(v7 + 8))(v12, v4);
  (*(v16 + 8))(v21, v13);

  OUTLINED_FUNCTION_47();
}

uint64_t closure #1 in closure #2 in static ConnectionTCPInfoMetrics.connectionTCPInfoMetrics(from:wasConnected:queue:deadline:_:)(uint64_t a1, uint64_t a2)
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
    _os_log_impl(&dword_223515000, v5, v6, "NetworkMetrics: TCP Info metrics extracted", v7, 2u);
    MEMORY[0x223DE38F0](v7, -1, -1);
  }

  swift_beginAccess();
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = *(a1 + 24);

    v8(a2);
    outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v8);
  }

  swift_beginAccess();
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v10);
}

uint64_t closure #3 in static ConnectionTCPInfoMetrics.connectionTCPInfoMetrics(from:wasConnected:queue:deadline:_:)(uint64_t a1)
{
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriNetwork);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_223515000, v3, v4, "NetworkMetrics: TCP Info metrics timeout", v5, 2u);
    OUTLINED_FUNCTION_12();
  }

  swift_beginAccess();
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *(a1 + 24);

    v6(0);
    outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v6);
  }

  swift_beginAccess();
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v8);
}

uint64_t closure #1 in static ConnectionTCPInfoMetrics.connectionCopyTCPInfo(from:wasConnected:xpcTCPInfo:)(int a1, xpc_object_t xdata, uint64_t *a3)
{
  result = xpc_data_get_bytes_ptr(xdata);
  if (result)
  {
    v6 = result;
    if (xpc_data_get_length(xdata) == 424 && (v7 = MEMORY[0x223DE3B00](xdata), v7 == XPC_TYPE_DATA.getter()))
    {
      String.init(cString:)();
      MEMORY[0x223DE13C0](v6, 424);
      v8 = *a3;
      swift_isUniquelyReferenced_nonNull_native();
      v9 = *a3;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
      *a3 = v9;

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t specialized Data.withUnsafeBytes<A>(_:)(uint64_t result, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v5 = result >> 32;
      if (result >> 32 >= result)
      {
        result = result;
        v4 = v5;
        goto LABEL_9;
      }

      __break(1u);
      break;
    case 2uLL:
      v3 = *(result + 24);
      result = *(result + 16);
      v4 = v3;
LABEL_9:
      result = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(result, v4);
      break;
    case 3uLL:
      result = 0;
      v2 = 0;
      goto LABEL_5;
    default:
      v2 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      result = specialized Data.InlineData.withUnsafeBytes<A>(_:)(result, v2);
      break;
  }

  return result;
}

{
  switch(a2 >> 62)
  {
    case 1uLL:
      v5 = result >> 32;
      if (result >> 32 >= result)
      {
        result = result;
        v4 = v5;
        goto LABEL_9;
      }

      __break(1u);
      break;
    case 2uLL:
      v3 = *(result + 24);
      result = *(result + 16);
      v4 = v3;
LABEL_9:
      result = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(result, v4);
      break;
    case 3uLL:
      result = 0;
      v2 = 0;
      goto LABEL_5;
    default:
      v2 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      result = specialized Data.InlineData.withUnsafeBytes<A>(_:)(result, v2);
      break;
  }

  return result;
}

id @objc SpeechPacket.internalAceId.getter(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3();
  if (v4)
  {
    v5 = MEMORY[0x223DE2070](v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t SpeechPacket.internalAceId.getter(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

void @objc SpeechPacket.internalAceId.setter(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
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

uint64_t SpeechPacket.internalAceId.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  OUTLINED_FUNCTION_95();
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;
}

uint64_t key path setter for SpeechPacket.internalAceId : SpeechPacket(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t SpeechPacket.packets.getter()
{
  v1 = OBJC_IVAR___SNSpeechPacketInternal_packets;
  OUTLINED_FUNCTION_6_13();
  v2 = *(v0 + v1);
}

uint64_t SpeechPacket.packets.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SNSpeechPacketInternal_packets;
  OUTLINED_FUNCTION_95();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path setter for SpeechPacket.packets : SpeechPacket(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return SpeechPacket.packets.setter(v4);
}

uint64_t SpeechPacket.packetNumber.getter()
{
  v1 = OBJC_IVAR___SNSpeechPacketInternal_packetNumber;
  OUTLINED_FUNCTION_6_13();
  return *(v0 + v1);
}

uint64_t SpeechPacket.packetNumber.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SNSpeechPacketInternal_packetNumber;
  result = OUTLINED_FUNCTION_95();
  *(v1 + v3) = a1;
  return result;
}

id SpeechPacket.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SpeechPacket.__allocating_init(aceId:refId:packets:packetNumber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_2_15();
  v13 = objc_allocWithZone(v6);
  return SpeechPacket.init(aceId:refId:packets:packetNumber:)(v11, v10, v9, v8, v7, a6);
}

id SpeechPacket.init(aceId:refId:packets:packetNumber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_2_15();
  v12 = &v6[OBJC_IVAR___SNSpeechPacketInternal_internalAceId];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v6[OBJC_IVAR___SNSpeechPacketInternal_internalRefId];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = OBJC_IVAR___SNSpeechPacketInternal_packets;
  *&v6[OBJC_IVAR___SNSpeechPacketInternal_packets] = MEMORY[0x277D84F90];
  v15 = OBJC_IVAR___SNSpeechPacketInternal_packetNumber;
  *&v6[OBJC_IVAR___SNSpeechPacketInternal_packetNumber] = 0;
  OUTLINED_FUNCTION_95();
  *v12 = v11;
  *(v12 + 1) = v10;
  OUTLINED_FUNCTION_95();
  *v13 = v9;
  *(v13 + 1) = v8;
  OUTLINED_FUNCTION_95();
  v16 = *&v6[v14];
  *&v6[v14] = v7;

  OUTLINED_FUNCTION_95();
  *&v6[v15] = a6;
  v19.receiver = v6;
  v19.super_class = type metadata accessor for SpeechPacket();
  return objc_msgSendSuper2(&v19, sel_init);
}

size_t SpeechPacket.serializedAceData()()
{
  result = static AceSerialization.aceDataForSpeechPacket(_:)(v0);
  if (!v1)
  {
    v4 = v3;
    if (v3 >> 60 == 15)
    {
      lazy protocol witness table accessor for type AceSerializationError and conformance AceSerializationError();
      swift_allocError();
      *v5 = xmmword_2235F1900;
      *(v5 + 16) = 3;
      return swift_willThrow();
    }

    else
    {
      v6 = result;
      v7 = specialized Data.withUnsafeBytes<A>(_:)(result, v3);
      outlined consume of Data?(v6, v4);
      return v7;
    }
  }

  return result;
}

Swift::String_optional __swiftcall SpeechPacket.sessionRequestId()()
{
  v0 = 0;
  v1 = 0;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

id SpeechPacket.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpeechPacket();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t (*protocol witness for SessionObject.internalAceId.modify in conformance SpeechPacket())()
{
  v1 = *v0;
  swift_beginAccess();
  return RPCOspreyConnectionProvider.connectionMetrics.modify;
}

uint64_t (*protocol witness for SessionObject.internalRefId.modify in conformance SpeechPacket())()
{
  v1 = *v0;
  swift_beginAccess();
  return RPCOspreyConnectionProvider.connectionMetrics.modify;
}

unint64_t type metadata accessor for NSData()
{
  result = lazy cache variable for type metadata for NSData;
  if (!lazy cache variable for type metadata for NSData)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSData);
  }

  return result;
}

uint64_t one-time initialization function for logger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static AsyncSequentialExecutor.logger);
  v1 = __swift_project_value_buffer(v0, static AsyncSequentialExecutor.logger);
  if (one-time initialization token for utility != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static Logger.utility);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t AsyncSequentialExecutor.__allocating_init(label:priority:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  AsyncSequentialExecutor.init(label:priority:)(a1, a2, a3);
  return v9;
}

void *AsyncSequentialExecutor.init(label:priority:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v34 = a3;
  v35 = a2;
  v32 = *v3;
  v33 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy11SiriNetwork23AsyncSequentialExecutorC0F4Work33_929935727E72E3DCCC3D8351439F96F6LLV__GMd, &_sScS12ContinuationV15BufferingPolicyOy11SiriNetwork23AsyncSequentialExecutorC0F4Work33_929935727E72E3DCCC3D8351439F96F6LLV__GMR);
  OUTLINED_FUNCTION_0_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy11SiriNetwork23AsyncSequentialExecutorC0D4Work33_929935727E72E3DCCC3D8351439F96F6LLV_GMd, &_sScS12ContinuationVy11SiriNetwork23AsyncSequentialExecutorC0D4Work33_929935727E72E3DCCC3D8351439F96F6LLV_GMR);
  OUTLINED_FUNCTION_0_0(v13);
  v15 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v18);
  v20 = &v32 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy11SiriNetwork23AsyncSequentialExecutorC0C4Work33_929935727E72E3DCCC3D8351439F96F6LLVGMd, &_sScSy11SiriNetwork23AsyncSequentialExecutorC0C4Work33_929935727E72E3DCCC3D8351439F96F6LLVGMR);
  OUTLINED_FUNCTION_0_0(v21);
  v23 = v22;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v26);
  v28 = &v32 - v27;
  swift_defaultActor_initialize();
  (*(v7 + 104))(v12, *MEMORY[0x277D85778], v5);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v7 + 8))(v12, v5);
  (*(v15 + 16))(v4 + OBJC_IVAR____TtC11SiriNetwork23AsyncSequentialExecutor_streamContinuation, v20, v13);
  v29 = v34;
  v30 = static AsyncSequentialExecutor.asynchronouslyConsume(stream:withPriority:label:)(v28, v34, v33, v35);

  outlined destroy of TaskPriority?(v29);
  (*(v15 + 8))(v20, v13);
  (*(v23 + 8))(v28, v21);
  *(v4 + OBJC_IVAR____TtC11SiriNetwork23AsyncSequentialExecutor_task) = v30;
  return v4;
}

uint64_t static AsyncSequentialExecutor.asynchronouslyConsume(stream:withPriority:label:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy11SiriNetwork23AsyncSequentialExecutorC0C4Work33_929935727E72E3DCCC3D8351439F96F6LLVGMd, &_sScSy11SiriNetwork23AsyncSequentialExecutorC0C4Work33_929935727E72E3DCCC3D8351439F96F6LLVGMR);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v21 - v16;
  outlined init with copy of TaskPriority?(a2, &v21 - v16);
  (*(v10 + 16))(v13, a1, v9);
  v18 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = a3;
  *(v19 + 5) = a4;
  (*(v10 + 32))(&v19[v18], v13, v9);
  *&v19[(v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8] = v4;

  return _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v17, &async function pointer to partial apply for closure #1 in static AsyncSequentialExecutor.asynchronouslyConsume(stream:withPriority:label:), v19);
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t closure #1 in static AsyncSequentialExecutor.asynchronouslyConsume(stream:withPriority:label:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy11SiriNetwork23AsyncSequentialExecutorC0D4Work33_929935727E72E3DCCC3D8351439F96F6LLV_GMd, &_sScS8IteratorVy11SiriNetwork23AsyncSequentialExecutorC0D4Work33_929935727E72E3DCCC3D8351439F96F6LLV_GMR);
  v6[13] = v7;
  v8 = *(v7 - 8);
  v6[14] = v8;
  v9 = *(v8 + 64) + 15;
  v6[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in static AsyncSequentialExecutor.asynchronouslyConsume(stream:withPriority:label:), 0, 0);
}

uint64_t closure #1 in static AsyncSequentialExecutor.asynchronouslyConsume(stream:withPriority:label:)()
{
  OUTLINED_FUNCTION_7_0();
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy11SiriNetwork23AsyncSequentialExecutorC0C4Work33_929935727E72E3DCCC3D8351439F96F6LLVGMd, &_sScSy11SiriNetwork23AsyncSequentialExecutorC0C4Work33_929935727E72E3DCCC3D8351439F96F6LLVGMR);
  AsyncStream.makeAsyncIterator()();
  v3 = *(MEMORY[0x277D85798] + 4);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_4_13(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_29(v5);

  return MEMORY[0x2822003E8](v7);
}

{
  OUTLINED_FUNCTION_7_0();
  v1 = *(*v0 + 128);
  v2 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;

  return MEMORY[0x2822009F8](closure #1 in static AsyncSequentialExecutor.asynchronouslyConsume(stream:withPriority:label:), 0, 0);
}

{
  v25 = v0;
  v1 = v0[2];
  v3 = v0[4];
  v2 = v0[5];
  v0[17] = v0[3];
  v0[18] = v3;
  v0[19] = v2;
  if (v1)
  {
    if (one-time initialization token for logger != -1)
    {
      OUTLINED_FUNCTION_2_16();
    }

    v4 = type metadata accessor for Logger();
    v0[20] = __swift_project_value_buffer(v4, static AsyncSequentialExecutor.logger);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = OUTLINED_FUNCTION_55();
      v8 = OUTLINED_FUNCTION_54();
      v24 = v8;
      *v7 = 136315138;

      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, v2, &v24);

      *(v7 + 4) = v9;
      _os_log_impl(&dword_223515000, v5, v6, "#AsyncSequentialExecutor Starting async task: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();
    }

    v23 = (v1 + *v1);
    v10 = v1[1];
    v11 = swift_task_alloc();
    v0[21] = v11;
    *v11 = v0;
    v11[1] = closure #1 in static AsyncSequentialExecutor.asynchronouslyConsume(stream:withPriority:label:);

    return v23();
  }

  else
  {
    (*(v0[14] + 8))(v0[15], v0[13]);
    if (one-time initialization token for logger != -1)
    {
      OUTLINED_FUNCTION_2_16();
    }

    v13 = v0[11];
    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static AsyncSequentialExecutor.logger);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v18 = v0[10];
      v17 = v0[11];
      v19 = OUTLINED_FUNCTION_55();
      v20 = OUTLINED_FUNCTION_54();
      v24 = v20;
      *v19 = 136315138;
      *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v17, &v24);
      _os_log_impl(&dword_223515000, v15, v16, "#AsyncSequentialExecutor ending main task: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();
    }

    v21 = v0[15];

    v22 = v0[1];

    return v22();
  }
}

{
  OUTLINED_FUNCTION_7_0();
  v2 = *(*v1 + 168);
  v3 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v4 = v3;
  *(v5 + 176) = v0;

  if (v0)
  {
    v6 = closure #1 in static AsyncSequentialExecutor.asynchronouslyConsume(stream:withPriority:label:);
  }

  else
  {
    v6 = closure #1 in static AsyncSequentialExecutor.asynchronouslyConsume(stream:withPriority:label:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v21 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[19];
  if (v6)
  {
    v8 = v0[17];
    v9 = v0[18];
    v10 = OUTLINED_FUNCTION_55();
    v11 = OUTLINED_FUNCTION_54();
    v20 = v11;
    *v10 = 136315138;

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v7, &v20);

    *(v10 + 4) = v12;
    _os_log_impl(&dword_223515000, v4, v5, "#AsyncSequentialExecutor Ending async task: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();
  }

  else
  {
    v13 = v0[17];
  }

  v14 = *(MEMORY[0x277D85798] + 4);
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_4_13(v15);
  *v16 = v17;
  v18 = OUTLINED_FUNCTION_0_29(v16);

  return MEMORY[0x2822003E8](v18);
}

{
  v30 = v0;
  v1 = v0[22];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[17];

  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[22];
    v9 = v0[18];
    v10 = v0[19];
    v11 = v0[17];
    v12 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v12 = 136315394;

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v29);

    *(v12 + 4) = v13;
    *(v12 + 12) = 2080;
    swift_getErrorValue();
    v15 = v0[6];
    v14 = v0[7];
    v16 = v0[8];
    v17 = Error.localizedDescription.getter();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v29);

    *(v12 + 14) = v19;
    _os_log_impl(&dword_223515000, v6, v7, "#AsyncSequentialExecutor async task %s threw an exception: %s", v12, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();
  }

  else
  {
    v20 = v0[22];
    v21 = v0[19];
    v22 = v0[17];
  }

  v23 = *(MEMORY[0x277D85798] + 4);
  v24 = swift_task_alloc();
  v25 = OUTLINED_FUNCTION_4_13(v24);
  *v25 = v26;
  v27 = OUTLINED_FUNCTION_0_29(v25);

  return MEMORY[0x2822003E8](v27);
}

uint64_t AsyncSequentialExecutor.submit(taskName:task:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy11SiriNetwork23AsyncSequentialExecutorC0F4Work33_929935727E72E3DCCC3D8351439F96F6LLV__GMd, &_sScS12ContinuationV11YieldResultOy11SiriNetwork23AsyncSequentialExecutorC0F4Work33_929935727E72E3DCCC3D8351439F96F6LLV__GMR);
  OUTLINED_FUNCTION_0_0(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - v14;
  v16 = one-time initialization token for logger;

  if (v16 != -1)
  {
    OUTLINED_FUNCTION_2_16();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static AsyncSequentialExecutor.logger);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = OUTLINED_FUNCTION_55();
    v25 = a3;
    v21 = v20;
    v22 = OUTLINED_FUNCTION_54();
    v26 = v8;
    v27[0] = v22;
    v23 = v22;
    *v21 = 136315138;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v27);
    _os_log_impl(&dword_223515000, v18, v19, "#AsyncSequentialExecutor Submitting async task: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    v8 = v26;
    OUTLINED_FUNCTION_12();
    a3 = v25;
    OUTLINED_FUNCTION_12();
  }

  v27[0] = a3;
  v27[1] = a4;
  v27[2] = a1;
  v27[3] = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy11SiriNetwork23AsyncSequentialExecutorC0D4Work33_929935727E72E3DCCC3D8351439F96F6LLV_GMd, &_sScS12ContinuationVy11SiriNetwork23AsyncSequentialExecutorC0D4Work33_929935727E72E3DCCC3D8351439F96F6LLV_GMR);
  AsyncStream.Continuation.yield(_:)();

  return (*(v10 + 8))(v15, v8);
}

uint64_t AsyncSequentialExecutor.deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy11SiriNetwork23AsyncSequentialExecutorC0D4Work33_929935727E72E3DCCC3D8351439F96F6LLV_GMd, &_sScS12ContinuationVy11SiriNetwork23AsyncSequentialExecutorC0D4Work33_929935727E72E3DCCC3D8351439F96F6LLV_GMR);
  OUTLINED_FUNCTION_0_0(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = OBJC_IVAR____TtC11SiriNetwork23AsyncSequentialExecutor_streamContinuation;
  (*(v4 + 16))(&v14 - v8, v1 + OBJC_IVAR____TtC11SiriNetwork23AsyncSequentialExecutor_streamContinuation, v2);
  AsyncStream.Continuation.finish()();
  v11 = *(v4 + 8);
  v11(v9, v2);
  v11((v1 + v10), v2);
  v12 = *(v1 + OBJC_IVAR____TtC11SiriNetwork23AsyncSequentialExecutor_task);

  swift_defaultActor_destroy();
  return v1;
}

uint64_t AsyncSequentialExecutor.__deallocating_deinit()
{
  AsyncSequentialExecutor.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for AsyncSequentialExecutor()
{
  result = type metadata singleton initialization cache for AsyncSequentialExecutor;
  if (!type metadata singleton initialization cache for AsyncSequentialExecutor)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for AsyncSequentialExecutor()
{
  type metadata accessor for AsyncStream<AsyncSequentialExecutor.AsyncWork>.Continuation();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for AsyncStream<AsyncSequentialExecutor.AsyncWork>.Continuation()
{
  if (!lazy cache variable for type metadata for AsyncStream<AsyncSequentialExecutor.AsyncWork>.Continuation)
  {
    v0 = type metadata accessor for AsyncStream.Continuation();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AsyncStream<AsyncSequentialExecutor.AsyncWork>.Continuation);
    }
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AsyncSequentialExecutor.AsyncWork(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for AsyncSequentialExecutor.AsyncWork(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in static AsyncSequentialExecutor.asynchronouslyConsume(stream:withPriority:label:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy11SiriNetwork23AsyncSequentialExecutorC0C4Work33_929935727E72E3DCCC3D8351439F96F6LLVGMd, &_sScSy11SiriNetwork23AsyncSequentialExecutorC0C4Work33_929935727E72E3DCCC3D8351439F96F6LLVGMR) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = partial apply for closure #1 in static AsyncSequentialExecutor.asynchronouslyConsume(stream:withPriority:label:);

  return closure #1 in static AsyncSequentialExecutor.asynchronouslyConsume(stream:withPriority:label:)(a1, v7, v8, v9, v10, v1 + v6);
}

uint64_t partial apply for closure #1 in static AsyncSequentialExecutor.asynchronouslyConsume(stream:withPriority:label:)()
{
  OUTLINED_FUNCTION_7_0();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

Swift::Int MessageCenterEventState.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x223DE2980](v1);
  return Hasher._finalize()();
}

uint64_t MessageCenterEvent.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MessageCenterEvent() + 24);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for MessageCenterEvent()
{
  result = type metadata singleton initialization cache for MessageCenterEvent;
  if (!type metadata singleton initialization cache for MessageCenterEvent)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MessageCenterEvent.messageCenter.getter()
{
  v1 = (v0 + *(type metadata accessor for MessageCenterEvent() + 28));
  v2 = *v1;
  v3 = v1[1];
  return swift_unknownObjectRetain();
}

void *MessageCenterEvent.error.getter()
{
  v1 = *(v0 + *(type metadata accessor for MessageCenterEvent() + 32));
  v2 = v1;
  return v1;
}

uint64_t MessageCenterEvent.size.getter()
{
  v1 = (v0 + *(type metadata accessor for MessageCenterEvent() + 36));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

unint64_t lazy protocol witness table accessor for type MessageCenterEventState and conformance MessageCenterEventState()
{
  result = lazy protocol witness table cache variable for type MessageCenterEventState and conformance MessageCenterEventState;
  if (!lazy protocol witness table cache variable for type MessageCenterEventState and conformance MessageCenterEventState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageCenterEventState and conformance MessageCenterEventState);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MessageCenterEventState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MessageCenterEventState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

void type metadata completion function for MessageCenterEvent()
{
  type metadata accessor for MessageCenterMessage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      type metadata accessor for MessageCenterProtocol?(319, &lazy cache variable for type metadata for MessageCenterProtocol?, &_s11SiriNetwork21MessageCenterProtocol_pMd, &_s11SiriNetwork21MessageCenterProtocol_pMR);
      if (v2 <= 0x3F)
      {
        type metadata accessor for MessageCenterProtocol?(319, &lazy cache variable for type metadata for Error?, &_ss5Error_pMd, &_ss5Error_pMR);
        if (v3 <= 0x3F)
        {
          type metadata accessor for Int?();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for MessageCenterProtocol?(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for Int?()
{
  if (!lazy cache variable for type metadata for Int?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Int?);
    }
  }
}

uint64_t one-time initialization function for siriContext()
{
  String.utf8CString.getter();
  v0 = nw_context_create();

  nw_context_set_scheduling_mode();
  nw_context_set_isolate_protocol_stack();
  nw_context_set_privacy_level();
  result = nw_context_set_isolate_protocol_cache();
  static NWParameters.siriContext = v0;
  return result;
}

uint64_t specialized Data.withUnsafeBytes<A>(_:)(uint64_t result, unint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t))
{
  v8 = result;
  switch(a2 >> 62)
  {
    case 1uLL:
      v17 = result >> 32;
      if (result >> 32 >= result)
      {
        v18 = result;

        v15 = a2 & 0x3FFFFFFFFFFFFFFFLL;
        v13 = v18;
        v14 = v17;
        goto LABEL_8;
      }

      __break(1u);
      return result;
    case 2uLL:
      v12 = *(result + 16);
      v11 = *(result + 24);

      v13 = OUTLINED_FUNCTION_53();
LABEL_8:
      v16 = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v13, v14, v15, a3, a4);
      goto LABEL_9;
    case 3uLL:

      v10 = 0;
      v9 = 0;
      goto LABEL_5;
    default:

      v9 = a2 & 0xFFFFFFFFFFFFFFLL;
      v10 = v8;
LABEL_5:
      v16 = specialized Data.InlineData.withUnsafeBytes<A>(_:)(v10, v9, a3, a4);
LABEL_9:
      v19 = v16;

      if (!v4)
      {
        return v19 & 1;
      }

      return result;
  }
}

uint64_t (*CommunicationProtocolAce.safetyNetBuffer.modify())()
{
  OUTLINED_FUNCTION_27_1();
  swift_beginAccess();
  return static ConnectionConfigurationError.errorDomain.modify;
}

uint64_t closure #1 in CommunicationProtocolAce.closeConnection(prepareForReconnect:)(uint64_t a1)
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  swift_beginAccess();
  outlined assign with take of DataCompressing?(v3, a1 + 152, &_s11SiriNetwork15DataCompressing_pSgMd, &_s11SiriNetwork15DataCompressing_pSgMR);
  return swift_endAccess();
}

void CommunicationProtocolAce.barrier(with:)(uint64_t a1, uint64_t a2)
{
  CommunicationProtocolAce.sendAcePing(withId:)(*(v2 + 216));
  v5 = *(v2 + 216);
  if (a1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
  }

  OUTLINED_FUNCTION_27_1();
  swift_beginAccess();
  if (a1)
  {
    outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(a1);
    v7 = *(v2 + 208);
    swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v2 + 208);
    v8 = OUTLINED_FUNCTION_57();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8, v9, v5);
    *(v2 + 208) = v13;
  }

  else
  {
    outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(0);
    v10 = specialized Dictionary._Variant.removeValue(forKey:)(v5);
    outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v10);
  }

  swift_endAccess();
  v11 = *(v2 + 216);
  if (v11 == -1)
  {
    v12 = -100000;
  }

  else
  {
    v12 = v11 + 1;
  }

  *(v2 + 216) = v12;
  OUTLINED_FUNCTION_77_0();
}

uint64_t CommunicationProtocolAce.compressData(_:logDebug:)(uint64_t a1, unint64_t a2, char a3)
{
  v8 = *(v3 + 336);
  os_unfair_lock_lock(v8 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)();
  os_unfair_lock_unlock(v8 + 4);
  if (!v4)
  {
    if (v56 >> 60 == 15)
    {
      if (one-time initialization token for siriNetwork != -1)
      {
        OUTLINED_FUNCTION_0_8();
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_58(v9, static Logger.siriNetwork);
      v10 = Logger.logObject.getter();
      static os_log_type_t.error.getter();
      v11 = OUTLINED_FUNCTION_10_4();
      if (os_log_type_enabled(v11, v12))
      {
        OUTLINED_FUNCTION_17_5();
        v13 = swift_slowAlloc();
        OUTLINED_FUNCTION_51_1(v13);
        OUTLINED_FUNCTION_9_8();
        _os_log_impl(v14, v15, v16, v17, v18, v19);
        v20 = OUTLINED_FUNCTION_2_0();
        MEMORY[0x223DE38F0](v20);
      }

      lazy protocol witness table accessor for type BackgroundConnectionError and conformance BackgroundConnectionError();
      OUTLINED_FUNCTION_10_0();
      swift_allocError();
      OUTLINED_FUNCTION_8_10(v21, 3);
      swift_willThrow();
      v22 = OUTLINED_FUNCTION_60_1();
      outlined consume of Data?(v22, v23);
    }

    else if (a3)
    {
      if (one-time initialization token for siriNetwork != -1)
      {
        OUTLINED_FUNCTION_0_8();
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_58(v25, static Logger.siriNetwork);
      v26 = OUTLINED_FUNCTION_57();
      outlined copy of Data._Representation(v26, v27);
      v28 = OUTLINED_FUNCTION_60_1();
      outlined copy of Data?(v28, v29);
      v30 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      v31 = OUTLINED_FUNCTION_16_0();
      if (os_log_type_enabled(v31, v32))
      {
        OUTLINED_FUNCTION_30();
        result = swift_slowAlloc();
        *result = 134218240;
        v33 = result;
        v34 = 0;
        switch(a2 >> 62)
        {
          case 1uLL:
            LODWORD(v34) = HIDWORD(a1) - a1;
            if (!__OFSUB__(HIDWORD(a1), a1))
            {
              v34 = v34;
              goto LABEL_19;
            }

            __break(1u);
            goto LABEL_27;
          case 2uLL:
            v40 = *(a1 + 16);
            v39 = *(a1 + 24);
            v41 = __OFSUB__(v39, v40);
            v34 = v39 - v40;
            if (!v41)
            {
              goto LABEL_19;
            }

LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
            return result;
          case 3uLL:
            goto LABEL_19;
          default:
            v34 = BYTE6(a2);
LABEL_19:
            *(result + 4) = v34;
            v42 = OUTLINED_FUNCTION_57();
            result = outlined consume of Data._Representation(v42, v43);
            *(v33 + 12) = 2048;
            v44 = 0;
            switch(v56 >> 62)
            {
              case 1uLL:
                LODWORD(v44) = HIDWORD(v55) - v55;
                if (__OFSUB__(HIDWORD(v55), v55))
                {
                  goto LABEL_28;
                }

                v44 = v44;
                break;
              case 2uLL:
                v46 = *(v55 + 16);
                v45 = *(v55 + 24);
                v41 = __OFSUB__(v45, v46);
                v44 = v45 - v46;
                if (v41)
                {
                  goto LABEL_29;
                }

                break;
              case 3uLL:
                break;
              default:
                v44 = BYTE6(v56);
                break;
            }

            *(v33 + 14) = v44;
            v47 = OUTLINED_FUNCTION_60_1();
            outlined consume of Data?(v47, v48);
            OUTLINED_FUNCTION_34_2();
            _os_log_impl(v49, v50, v51, v52, v53, 0x16u);
            v54 = OUTLINED_FUNCTION_5_14();
            MEMORY[0x223DE38F0](v54);
            goto LABEL_25;
        }
      }

      v35 = OUTLINED_FUNCTION_60_1();
      outlined consume of Data?(v35, v36);
      v37 = OUTLINED_FUNCTION_57();
      outlined consume of Data._Representation(v37, v38);
LABEL_25:
    }
  }

  return OUTLINED_FUNCTION_60_1();
}

uint64_t closure #1 in CommunicationProtocolAce.compressData(_:logDebug:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  swift_beginAccess();
  outlined init with copy of DataDecompressing?(a1 + 152, v17, &_s11SiriNetwork15DataCompressing_pSgMd, &_s11SiriNetwork15DataCompressing_pSgMR);
  if (v18)
  {
    outlined init with copy of RPCOspreyConnectionProtocol(v17, v14);
    outlined destroy of NetworkConnectionProtocol?(v17, &_s11SiriNetwork15DataCompressing_pSgMd, &_s11SiriNetwork15DataCompressing_pSgMR);
    v9 = v15;
    v10 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    v11 = (*(v10 + 16))(a2, a3, v9, v10);
    if (!v4)
    {
      *a4 = v11;
      a4[1] = v12;
    }

    return __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    result = outlined destroy of NetworkConnectionProtocol?(v17, &_s11SiriNetwork15DataCompressing_pSgMd, &_s11SiriNetwork15DataCompressing_pSgMR);
    *a4 = xmmword_2235EF700;
  }

  return result;
}

uint64_t closure #1 in CommunicationProtocolAce.initializeBufferedGeneralOutputData(hasInitialPayload:)(uint64_t a1)
{
  v2 = type metadata accessor for ZlibDataCompressor();
  swift_allocObject();
  v3 = ZlibDataCompressor.init()();
  if (v3)
  {
    v4 = &protocol witness table for ZlibDataCompressor;
  }

  else
  {
    v2 = 0;
    v4 = 0;
    v6[1] = 0;
    v6[2] = 0;
  }

  v6[0] = v3;
  v6[3] = v2;
  v6[4] = v4;
  swift_beginAccess();
  outlined assign with take of DataCompressing?(v6, a1 + 152, &_s11SiriNetwork15DataCompressing_pSgMd, &_s11SiriNetwork15DataCompressing_pSgMR);
  return swift_endAccess();
}

uint64_t CommunicationProtocolAce.handleAcePing(_:)(uint64_t a1)
{
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_58(v2, static Logger.siriNetwork);
  v3 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  v4 = OUTLINED_FUNCTION_16_0();
  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_28_3();
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    v6[1] = a1;
    OUTLINED_FUNCTION_6_0();
    _os_log_impl(v7, v8, v9, v10, v11, 8u);
    v12 = OUTLINED_FUNCTION_1_2();
    MEMORY[0x223DE38F0](v12);
  }

  return CommunicationProtocolAce.sendAcePong(withId:)(a1);
}

uint64_t CommunicationProtocolAce.handleAceEnd()()
{
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_58(v1, static Logger.siriNetwork);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    OUTLINED_FUNCTION_17_5();
    v4 = swift_slowAlloc();
    OUTLINED_FUNCTION_40_2(v4);
    OUTLINED_FUNCTION_44_2();
    _os_log_impl(v5, v6, v7, v8, v9, v10);
    v11 = OUTLINED_FUNCTION_1_2();
    MEMORY[0x223DE38F0](v11);
  }

  OUTLINED_FUNCTION_36_2();
  if (v0[6] >> 60 != 15)
  {
    v12 = v0[5];
    v13 = OUTLINED_FUNCTION_2_13();
    outlined copy of Data._Representation(v13, v14);
    v15 = OUTLINED_FUNCTION_2_13();
    v16 = MEMORY[0x223DE13E0](v15);
    v17 = OUTLINED_FUNCTION_2_13();
    outlined consume of Data?(v17, v18);
    if (v16 > 0)
    {
      goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_37_1();
  if (v0[10] >> 60 != 15)
  {
    v19 = v0[9];
    v20 = OUTLINED_FUNCTION_2_13();
    outlined copy of Data._Representation(v20, v21);
    v22 = OUTLINED_FUNCTION_2_13();
    v23 = MEMORY[0x223DE13E0](v22);
    v24 = OUTLINED_FUNCTION_2_13();
    outlined consume of Data?(v24, v25);
    if (v23 > 0)
    {
      goto LABEL_10;
    }
  }

  if (v0[28])
  {
LABEL_10:
    v26 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v27 = OUTLINED_FUNCTION_16_0();
    if (os_log_type_enabled(v27, v28))
    {
      OUTLINED_FUNCTION_17_5();
      v29 = swift_slowAlloc();
      OUTLINED_FUNCTION_11_7(v29);
      OUTLINED_FUNCTION_15_0();
      _os_log_impl(v30, v31, v32, v33, v34, 2u);
      v35 = OUTLINED_FUNCTION_6_15();
      MEMORY[0x223DE38F0](v35);
    }

    if (CommunicationProtocolAce.aceDelegate.getter())
    {
      lazy protocol witness table accessor for type BackgroundConnectionError and conformance BackgroundConnectionError();
      OUTLINED_FUNCTION_10_0();
      v36 = swift_allocError();
      OUTLINED_FUNCTION_8_10(v37, 1);
      BackgroundConnection.didEncounterError(_:)();
      swift_unknownObjectRelease();
    }
  }

  result = CommunicationProtocolAce.aceDelegate.getter();
  if (result)
  {
    BackgroundConnection.cancel()();
    return swift_unknownObjectRelease();
  }

  return result;
}

void CommunicationProtocolAce.handleAceNop()()
{
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_58(v0, static Logger.siriNetwork);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    OUTLINED_FUNCTION_17_5();
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_223515000, oslog, v1, "CommunicationProtocol - Ace object: Connection got nop", v2, 2u);
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
  }
}

uint64_t closure #1 in CommunicationProtocolAce.pingTimerFired()(char a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a1)
    {
      v3 = *(result + 240);
      if (v3)
      {
        v4 = PingInfo.totalPingCount()();
        v5 = PingInfo.numberOfUnacknowledgedPings()();
      }

      else
      {
        v5 = 0;
        v4 = 0;
      }

      v6 = v3 == 0;
      v7 = v3 == 0;
      if (v6)
      {
        v8 = 0x3000000000000001;
      }

      else
      {
        v8 = 0x3000000000000000;
      }

      lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
      v9 = swift_allocError();
      *v10 = v4;
      v10[1] = v7;
      v10[2] = v5;
      v10[3] = v8;
      v10[4] = 0;
      BackgroundConnection.didEncounterIntermediateError(_:)();
    }
  }

  return result;
}

void CommunicationProtocolAce.checkForProgressOnReadingData()()
{
  OUTLINED_FUNCTION_40_1();
  v1 = v0[6];
  OUTLINED_FUNCTION_48_0();
  if (!(!v3 & v2))
  {
    v4 = v0[5];

    v5 = OUTLINED_FUNCTION_3_2();
    outlined copy of Data?(v5, v6);
    v7 = OUTLINED_FUNCTION_3_2();
    specialized Data.withUnsafeBytes<A>(_:)(v7, v8, v0, v9);
    v10 = OUTLINED_FUNCTION_3_2();
    outlined consume of Data?(v10, v11);
  }

  OUTLINED_FUNCTION_40_1();
  v12 = v0[10];
  OUTLINED_FUNCTION_48_0();
  if (!(!v3 & v2))
  {
    v13 = v0[9];

    v14 = OUTLINED_FUNCTION_3_2();
    outlined copy of Data?(v14, v15);
    v16 = OUTLINED_FUNCTION_3_2();
    specialized Data.withUnsafeBytes<A>(_:)(v16, v17, v0, v18);
    v19 = OUTLINED_FUNCTION_3_2();
    outlined consume of Data?(v19, v20);
  }

  if (__OFADD__(v0[36], v0[39]))
  {
    __break(1u);
  }
}

void closure #1 in CommunicationProtocolAce.checkForProgressOnReadingData()(uint64_t a1@<X0>, void *a2@<X2>, _BYTE *a3@<X8>)
{
  if (!a1)
  {
    goto LABEL_22;
  }

  v35 = a3;
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
    v36[0] = v9;
    *v8 = 136315138;
    v37 = a2[34];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSVSgMd, &_sSVSgMR);
    v10 = Optional.debugDescription.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v36);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_223515000, v6, v7, "CommunicationProtocol - Ace objects: lastInputDataPointer %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x223DE38F0](v9, -1, -1);
    MEMORY[0x223DE38F0](v8, -1, -1);
  }

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v36[0] = v16;
    *v15 = 136315138;
    v37 = a1;
    v17 = _Pointer.debugDescription.getter();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v36);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_223515000, v13, v14, "CommunicationProtocol - Ace objects: baseAddress %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x223DE38F0](v16, -1, -1);
    MEMORY[0x223DE38F0](v15, -1, -1);
  }

  if (a2[34] != a1)
  {
    a2[35] = 0;
    a2[36] = 0;
    a2[34] = a1;
LABEL_21:
    a3 = v35;
LABEL_22:
    *a3 = 0;
    return;
  }

  swift_beginAccess();
  v20 = 0;
  v21 = a2[6];
  if (v21 >> 60 == 15 || (v22 = a2[5], outlined copy of Data._Representation(v22, a2[6]), v20 = MEMORY[0x223DE13E0](v22, v21), outlined consume of Data?(v22, v21), v20 < 1) || v20 != a2[35])
  {
    a2[36] = 0;
    v26 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v26, v34))
    {
LABEL_19:

LABEL_20:
      a2[35] = v20;
      goto LABEL_21;
    }

    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = "CommunicationProtocol - Ace objects: Reset Input Unchanged Counter to 0";
    v30 = v34;
    v31 = v26;
    v32 = v28;
    v33 = 2;
LABEL_18:
    _os_log_impl(&dword_223515000, v31, v30, v29, v32, v33);
    MEMORY[0x223DE38F0](v28, -1, -1);
    goto LABEL_19;
  }

  v23 = a2[36];
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    a2[36] = v25;

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v26, v27))
    {

      goto LABEL_20;
    }

    v28 = swift_slowAlloc();
    *v28 = 134217984;
    *(v28 + 4) = a2[36];

    v29 = "CommunicationProtocol - Ace objects: Incremented Input Unchanged Counter to %ld";
    v30 = v27;
    v31 = v26;
    v32 = v28;
    v33 = 12;
    goto LABEL_18;
  }

  __break(1u);
}

void closure #2 in CommunicationProtocolAce.checkForProgressOnReadingData()(uint64_t a1@<X0>, void *a2@<X2>, _BYTE *a3@<X8>)
{
  if (a1)
  {
    if (a2[37] == a1)
    {
      swift_beginAccess();
      v5 = 0;
      v6 = a2[10];
      if (v6 >> 60 == 15 || (v7 = a2[9], outlined copy of Data._Representation(v7, a2[10]), v5 = MEMORY[0x223DE13E0](v7, v6), outlined consume of Data?(v7, v6), v5 < 1) || v5 != a2[38])
      {
        a2[39] = 0;
        if (one-time initialization token for siriNetwork != -1)
        {
          swift_once();
        }

        v20 = type metadata accessor for Logger();
        __swift_project_value_buffer(v20, static Logger.siriNetwork);
        v12 = Logger.logObject.getter();
        v21 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v12, v21))
        {
          goto LABEL_16;
        }

        v14 = swift_slowAlloc();
        *v14 = 0;
        v15 = "CommunicationProtocol - Ace objects: Reset Output Unchanged Counter to 0";
        v16 = v21;
        v17 = v12;
        v18 = v14;
        v19 = 2;
LABEL_15:
        _os_log_impl(&dword_223515000, v17, v16, v15, v18, v19);
        MEMORY[0x223DE38F0](v14, -1, -1);
LABEL_16:

LABEL_17:
        a2[38] = v5;
        goto LABEL_18;
      }

      v8 = a2[39];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        __break(1u);
      }

      else
      {
        a2[39] = v10;
        if (one-time initialization token for siriNetwork == -1)
        {
LABEL_8:
          v11 = type metadata accessor for Logger();
          __swift_project_value_buffer(v11, static Logger.siriNetwork);

          v12 = Logger.logObject.getter();
          v13 = static os_log_type_t.default.getter();
          if (!os_log_type_enabled(v12, v13))
          {

            goto LABEL_17;
          }

          v14 = swift_slowAlloc();
          *v14 = 134217984;
          *(v14 + 4) = a2[39];

          v15 = "CommunicationProtocol - Ace objects: Incremented Output Unchanged Counter to %ld";
          v16 = v13;
          v17 = v12;
          v18 = v14;
          v19 = 12;
          goto LABEL_15;
        }
      }

      swift_once();
      goto LABEL_8;
    }

    a2[38] = 0;
    a2[39] = 0;
    a2[37] = a1;
  }

LABEL_18:
  *a3 = 0;
}

uint64_t CommunicationProtocolAce.sendAcePong(withId:)(uint64_t a1)
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
    _os_log_impl(&dword_223515000, v4, v5, "CommunicationProtocol - Ace pings: Sending ACE Pong %u", v6, 8u);
    v7 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x223DE38F0](v7);
  }

  static AceDataHeader.createHeaderData(forType:lengthOrIdentifier:)(5, a1);
  OUTLINED_FUNCTION_31_2();
  if (!v9 & v8)
  {
    v10 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v11 = OUTLINED_FUNCTION_10_4();
    if (os_log_type_enabled(v11, v12))
    {
      OUTLINED_FUNCTION_17_5();
      v13 = swift_slowAlloc();
      OUTLINED_FUNCTION_51_1(v13);
      OUTLINED_FUNCTION_9_8();
      _os_log_impl(v14, v15, v16, v17, v18, v19);
      v20 = OUTLINED_FUNCTION_2_0();
      MEMORY[0x223DE38F0](v20);
    }

    goto LABEL_10;
  }

  v22 = OUTLINED_FUNCTION_3_2();
  CommunicationProtocolAce.compressData(_:logDebug:)(v22, v23, 0);
  if (v1)
  {
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_31_2();
  if (!v9 & v8)
  {
LABEL_10:
    lazy protocol witness table accessor for type BackgroundConnectionError and conformance BackgroundConnectionError();
    OUTLINED_FUNCTION_10_0();
    swift_allocError();
    OUTLINED_FUNCTION_8_10(v21, 3);
    swift_willThrow();
    goto LABEL_16;
  }

  if (CommunicationProtocolAce.aceDelegate.getter())
  {
    v24 = OUTLINED_FUNCTION_26();
    BackgroundConnection.connectionSendData(_:)(v24, v25);
    swift_unknownObjectRelease();
  }

  v26 = OUTLINED_FUNCTION_26();
  outlined consume of Data?(v26, v27);
LABEL_16:
  v28 = OUTLINED_FUNCTION_3_2();
  return outlined consume of Data?(v28, v29);
}

uint64_t CommunicationProtocolAce.handleBarrierReply(barrierValue:)(unsigned int a1)
{
  result = OUTLINED_FUNCTION_36_2();
  v4 = *(v1 + 208);
  if (*(v4 + 16))
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v5)
    {
      v6 = *(v4 + 56) + 16 * result;
      v8 = *v6;
      v7 = *(v6 + 8);
      v10[0] = 1;

      v8(v10);

      OUTLINED_FUNCTION_27_1();
      swift_beginAccess();
      specialized Dictionary._Variant.removeValue(forKey:)(a1);
      swift_endAccess();
      v9 = OUTLINED_FUNCTION_14_3();
      return outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v9);
    }
  }

  return result;
}

uint64_t protocol witness for CommunicationProtocol.safetyNetBuffer.getter in conformance CommunicationProtocolAce()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 320);
  outlined copy of Data?(v2, *(v1 + 328));
  return v2;
}

uint64_t protocol witness for CommunicationProtocol.safetyNetBuffer.setter in conformance CommunicationProtocolAce(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  v6 = *(v5 + 320);
  v7 = *(v5 + 328);
  *(v5 + 320) = a1;
  *(v5 + 328) = a2;
  return outlined consume of Data?(v6, v7);
}

BOOL protocol witness for CommunicationProtocol.hasBufferedDataOrOutstandPings() in conformance CommunicationProtocolAce()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = v1[6];
  if (v2 >> 60 != 15)
  {
    v3 = v1[5];
    outlined copy of Data._Representation(v3, v1[6]);
    v4 = MEMORY[0x223DE13E0](v3, v2);
    outlined consume of Data?(v3, v2);
    if (v4 > 0)
    {
      return 1;
    }
  }

  swift_beginAccess();
  v5 = v1[10];
  if (v5 >> 60 == 15)
  {
    return v1[28] != 0;
  }

  v6 = v1[9];
  outlined copy of Data._Representation(v6, v1[10]);
  v7 = MEMORY[0x223DE13E0](v6, v5);
  outlined consume of Data?(v6, v5);
  return v7 > 0 || v1[28] != 0;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned UInt32)@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t specialized Data.InlineData.withUnsafeBytes<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(unsigned __int8 *__return_ptr, uint64_t *, char *))
{
  v11 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v9 = WORD2(a2);
  v8 = a2;
  a4(&v10, &v7, &v7 + BYTE6(a2));

  if (!v4)
  {
    result = v10;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t))
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  v12 = __OFSUB__(a2, a1);
  v13 = a2 - a1;
  if (v12)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = MEMORY[0x223DE1260]();
  if (v14 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = v15 + v11;
  if (v11)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  a5(&v18, v11, v17, a4);

  if (!v5)
  {
    return v18;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BackgroundConnectionError and conformance BackgroundConnectionError()
{
  result = lazy protocol witness table cache variable for type BackgroundConnectionError and conformance BackgroundConnectionError;
  if (!lazy protocol witness table cache variable for type BackgroundConnectionError and conformance BackgroundConnectionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BackgroundConnectionError and conformance BackgroundConnectionError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BackgroundConnectionError and conformance BackgroundConnectionError;
  if (!lazy protocol witness table cache variable for type BackgroundConnectionError and conformance BackgroundConnectionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BackgroundConnectionError and conformance BackgroundConnectionError);
  }

  return result;
}

uint64_t partial apply for closure #1 in CommunicationProtocolAce.pingTimerFired()(char a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return closure #1 in CommunicationProtocolAce.pingTimerFired()(a1);
}

uint64_t outlined copy of AceSerializationError(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 <= 1)
  {
    return outlined copy of Data?(a1, a2);
  }

  return a1;
}

uint64_t outlined consume of AceSerializationError(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 <= 1)
  {
    return outlined consume of Data?(a1, a2);
  }

  return a1;
}

uint64_t outlined consume of BackgroundConnectionError(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  if (!a5)
  {
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t objectdestroy_84Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));
  OUTLINED_FUNCTION_109();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t outlined init with copy of DataDecompressing?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_75_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_71(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_14_3();
  v9(v8);
  return v4;
}

uint64_t OUTLINED_FUNCTION_63_2(uint64_t result, float a2)
{
  *result = a2;
  *(result + 4) = v2;
  return result;
}

id OUTLINED_FUNCTION_79_0(id a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v3;

  return a1;
}

uint64_t MessageCenterMessage.messageType.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MessageCenterMessage.__allocating_init()()
{
  OUTLINED_FUNCTION_41();
  v0 = swift_allocObject();
  MessageCenterMessage.init()();
  return v0;
}

uint64_t *MessageCenterMessage.init()()
{
  v3 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork013MessageCenterC0CmMd, &_s11SiriNetwork013MessageCenterC0CmMR);
  v0[2] = String.init<A>(describing:)();
  v0[3] = v1;
  return v0;
}

uint64_t MessageCenterMessage.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x546567617373656DLL && a2 == 0xEB00000000657079)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

Swift::Int MessageCenterMessage.CodingKeys.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x223DE2980](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MessageCenterMessage.CodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x223DE2980](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MessageCenterMessage.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = MessageCenterMessage.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance MessageCenterMessage.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_22();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MessageCenterMessage.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MessageCenterMessage.CodingKeys and conformance MessageCenterMessage.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MessageCenterMessage.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MessageCenterMessage.CodingKeys and conformance MessageCenterMessage.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MessageCenterMessage.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t MessageCenterMessage.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = OUTLINED_FUNCTION_41();

  return MEMORY[0x2821FE8D8](v2, v3, v4);
}

uint64_t MessageCenterMessage.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11SiriNetwork013MessageCenterF0C10CodingKeys33_A2F59A18C718FF7409E73977D77D451FLLOGMd, &_ss22KeyedEncodingContainerVy11SiriNetwork013MessageCenterF0C10CodingKeys33_A2F59A18C718FF7409E73977D77D451FLLOGMR);
  v6 = OUTLINED_FUNCTION_1_16(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v17 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MessageCenterMessage.CodingKeys and conformance MessageCenterMessage.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = *(v3 + 16);
  v15 = *(v3 + 24);
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v8 + 8))(v12, v2);
}

unint64_t lazy protocol witness table accessor for type MessageCenterMessage.CodingKeys and conformance MessageCenterMessage.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MessageCenterMessage.CodingKeys and conformance MessageCenterMessage.CodingKeys;
  if (!lazy protocol witness table cache variable for type MessageCenterMessage.CodingKeys and conformance MessageCenterMessage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageCenterMessage.CodingKeys and conformance MessageCenterMessage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MessageCenterMessage.CodingKeys and conformance MessageCenterMessage.CodingKeys;
  if (!lazy protocol witness table cache variable for type MessageCenterMessage.CodingKeys and conformance MessageCenterMessage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageCenterMessage.CodingKeys and conformance MessageCenterMessage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MessageCenterMessage.CodingKeys and conformance MessageCenterMessage.CodingKeys;
  if (!lazy protocol witness table cache variable for type MessageCenterMessage.CodingKeys and conformance MessageCenterMessage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageCenterMessage.CodingKeys and conformance MessageCenterMessage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MessageCenterMessage.CodingKeys and conformance MessageCenterMessage.CodingKeys;
  if (!lazy protocol witness table cache variable for type MessageCenterMessage.CodingKeys and conformance MessageCenterMessage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageCenterMessage.CodingKeys and conformance MessageCenterMessage.CodingKeys);
  }

  return result;
}

uint64_t MessageCenterMessage.__allocating_init(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_41();
  v2 = swift_allocObject();
  MessageCenterMessage.init(from:)(a1);
  return v2;
}

uint64_t MessageCenterMessage.init(from:)(uint64_t *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11SiriNetwork013MessageCenterF0C10CodingKeys33_A2F59A18C718FF7409E73977D77D451FLLOGMd, &_ss22KeyedDecodingContainerVy11SiriNetwork013MessageCenterF0C10CodingKeys33_A2F59A18C718FF7409E73977D77D451FLLOGMR);
  v7 = OUTLINED_FUNCTION_1_16(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v19 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MessageCenterMessage.CodingKeys and conformance MessageCenterMessage.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    type metadata accessor for MessageCenterMessage();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v16 = KeyedDecodingContainer.decode(_:forKey:)();
    v18 = v17;
    (*(v9 + 8))(v13, v3);
    *(v4 + 16) = v16;
    *(v4 + 24) = v18;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v4;
}

uint64_t instantiation function for generic protocol witness table for MessageCenterMessage(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type MessageCenterMessage and conformance MessageCenterMessage(&lazy protocol witness table cache variable for type MessageCenterMessage and conformance MessageCenterMessage);
  result = lazy protocol witness table accessor for type MessageCenterMessage and conformance MessageCenterMessage(&lazy protocol witness table cache variable for type MessageCenterMessage and conformance MessageCenterMessage);
  *(a1 + 16) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type MessageCenterMessage and conformance MessageCenterMessage(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MessageCenterMessage();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t protocol witness for Decodable.init(from:) in conformance MessageCenterMessage@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 104))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MessageCenterMessage.CodingKeys(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for MessageCenterMessage.CodingKeys(_BYTE *result, int a2, int a3)
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

double MessageCenterDeviceProtocol.user.getter@<D0>(_OWORD *a1@<X8>)
{
  return MessageCenterDeviceProtocol.user.getter(a1);
}

{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t MessageCenterDevice.idsIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MessageCenterDevice.idsIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MessageCenterDevice.model.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MessageCenterDevice.model.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t MessageCenterDevice.user.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return outlined copy of MessageCenterUser?(v2, v3);
}

uint64_t outlined copy of MessageCenterUser?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

__n128 MessageCenterDevice.user.setter(uint64_t a1)
{
  v3 = v1[6];
  v4 = v1[7];
  outlined consume of MessageCenterUser?(v1[4], v1[5]);
  result = *a1;
  v6 = *(a1 + 16);
  *(v1 + 2) = *a1;
  *(v1 + 3) = v6;
  return result;
}

uint64_t outlined consume of MessageCenterUser?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t MessageCenterDevice.description.getter()
{
  _StringGuts.grow(_:)(39);

  MEMORY[0x223DE2180](*v0, v0[1]);
  MEMORY[0x223DE2180](0x3D6C65646F6D202CLL, 0xE800000000000000);
  v3 = v0[2];
  v4 = v0[3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v1 = String.init<A>(describing:)();
  MEMORY[0x223DE2180](v1);

  MEMORY[0x223DE2180](62, 0xE100000000000000);
  return 0xD00000000000001ALL;
}

uint64_t MessageCenterDevice.init(actor:endpoint:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  *(a3 + 64) = 0u;
  v6 = a3 + 64;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  outlined init with copy of MessageCenterEndpointProtocol?(a2, v35);
  v7 = v36;
  if (v36)
  {
    v8 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    v9 = (*(v8 + 16))(v7, v8);
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_0(v35);
    if (v11)
    {
      outlined assign with copy of MessageCenterActorProtocol?(a1, v6, &_s11SiriNetwork26MessageCenterActorProtocol_pSgMd, &_s11SiriNetwork26MessageCenterActorProtocol_pSgMR);
      outlined assign with copy of MessageCenterActorProtocol?(v3, v6 + 40, &_s11SiriNetwork29MessageCenterEndpointProtocol_pSgMd, &_s11SiriNetwork29MessageCenterEndpointProtocol_pSgMR);
      *a3 = v9;
      *(a3 + 8) = v11;
      outlined init with copy of MessageCenterEndpointProtocol?(v3, v35);
      v12 = v36;
      if (v36)
      {
        v13 = v37;
        __swift_project_boxed_opaque_existential_1(v35, v36);
        v14 = (*(v13 + 24))(v12, v13);
        v16 = v15;
        outlined destroy of ConnectionSnapshotReport?(v3, &_s11SiriNetwork29MessageCenterEndpointProtocol_pSgMd, &_s11SiriNetwork29MessageCenterEndpointProtocol_pSgMR);
        outlined destroy of ConnectionSnapshotReport?(a1, &_s11SiriNetwork26MessageCenterActorProtocol_pSgMd, &_s11SiriNetwork26MessageCenterActorProtocol_pSgMR);
        result = __swift_destroy_boxed_opaque_existential_0(v35);
      }

      else
      {
        outlined destroy of ConnectionSnapshotReport?(v3, &_s11SiriNetwork29MessageCenterEndpointProtocol_pSgMd, &_s11SiriNetwork29MessageCenterEndpointProtocol_pSgMR);
        outlined destroy of ConnectionSnapshotReport?(a1, &_s11SiriNetwork26MessageCenterActorProtocol_pSgMd, &_s11SiriNetwork26MessageCenterActorProtocol_pSgMR);
        result = outlined destroy of ConnectionSnapshotReport?(v35, &_s11SiriNetwork29MessageCenterEndpointProtocol_pSgMd, &_s11SiriNetwork29MessageCenterEndpointProtocol_pSgMR);
        v14 = 0;
        v16 = 0;
      }

      *(a3 + 16) = v14;
      *(a3 + 24) = v16;
      return result;
    }
  }

  else
  {
    outlined destroy of ConnectionSnapshotReport?(v35, &_s11SiriNetwork29MessageCenterEndpointProtocol_pSgMd, &_s11SiriNetwork29MessageCenterEndpointProtocol_pSgMR);
  }

  if (one-time initialization token for messageCenter != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.messageCenter);
  outlined init with copy of MessageCenterEndpointProtocol?(v3, v35);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v38 = v33;
    *v21 = 136315138;
    outlined init with copy of MessageCenterEndpointProtocol?(v35, v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork29MessageCenterEndpointProtocol_pSgMd, &_s11SiriNetwork29MessageCenterEndpointProtocol_pSgMR);
    v22 = String.init<A>(describing:)();
    v23 = v3;
    v24 = a1;
    v26 = v25;
    outlined destroy of ConnectionSnapshotReport?(v35, &_s11SiriNetwork29MessageCenterEndpointProtocol_pSgMd, &_s11SiriNetwork29MessageCenterEndpointProtocol_pSgMR);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v26, &v38);
    a1 = v24;
    v3 = v23;

    *(v21 + 4) = v27;
    _os_log_impl(&dword_223515000, v19, v20, "Ignoring MessageCenterDevice initializer as endpoint does not have an ids identifier %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x223DE38F0](v33, -1, -1);
    MEMORY[0x223DE38F0](v21, -1, -1);
  }

  else
  {

    outlined destroy of ConnectionSnapshotReport?(v35, &_s11SiriNetwork29MessageCenterEndpointProtocol_pSgMd, &_s11SiriNetwork29MessageCenterEndpointProtocol_pSgMR);
  }

  lazy protocol witness table accessor for type MessageCenterError and conformance MessageCenterError();
  v28 = OUTLINED_FUNCTION_0_30();
  *v29 = 19;
  *(v29 + 8) = 8;
  OUTLINED_FUNCTION_0_30();
  *v30 = v28;
  *(v30 + 8) = 4;
  swift_willThrow();
  outlined destroy of ConnectionSnapshotReport?(v3, &_s11SiriNetwork29MessageCenterEndpointProtocol_pSgMd, &_s11SiriNetwork29MessageCenterEndpointProtocol_pSgMR);
  outlined destroy of ConnectionSnapshotReport?(a1, &_s11SiriNetwork26MessageCenterActorProtocol_pSgMd, &_s11SiriNetwork26MessageCenterActorProtocol_pSgMR);
  v31 = *(a3 + 48);
  v32 = *(a3 + 56);
  outlined consume of MessageCenterUser?(*(a3 + 32), *(a3 + 40));
  outlined destroy of ConnectionSnapshotReport?(v6, &_s11SiriNetwork26MessageCenterActorProtocol_pSgMd, &_s11SiriNetwork26MessageCenterActorProtocol_pSgMR);
  return outlined destroy of ConnectionSnapshotReport?(v6 + 40, &_s11SiriNetwork29MessageCenterEndpointProtocol_pSgMd, &_s11SiriNetwork29MessageCenterEndpointProtocol_pSgMR);
}

uint64_t static MessageCenterDevice.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t MessageCenterDevice.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return String.hash(into:)();
}

Swift::Int MessageCenterDevice.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MessageCenterDevice()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  return Hasher._finalize()();
}

unint64_t instantiation function for generic protocol witness table for MessageCenterDevice(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type MessageCenterDevice and conformance MessageCenterDevice();
  result = lazy protocol witness table accessor for type MessageCenterDevice and conformance MessageCenterDevice();
  *(a1 + 16) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type MessageCenterDevice and conformance MessageCenterDevice()
{
  result = lazy protocol witness table cache variable for type MessageCenterDevice and conformance MessageCenterDevice;
  if (!lazy protocol witness table cache variable for type MessageCenterDevice and conformance MessageCenterDevice)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageCenterDevice and conformance MessageCenterDevice);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MessageCenterDevice and conformance MessageCenterDevice;
  if (!lazy protocol witness table cache variable for type MessageCenterDevice and conformance MessageCenterDevice)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageCenterDevice and conformance MessageCenterDevice);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MessageCenterDevice and conformance MessageCenterDevice;
  if (!lazy protocol witness table cache variable for type MessageCenterDevice and conformance MessageCenterDevice)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageCenterDevice and conformance MessageCenterDevice);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11SiriNetwork17MessageCenterUserVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for MessageCenterDevice(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 144))
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

uint64_t storeEnumTagSinglePayload for MessageCenterDevice(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined init with copy of MessageCenterEndpointProtocol?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork29MessageCenterEndpointProtocol_pSgMd, &_s11SiriNetwork29MessageCenterEndpointProtocol_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type MessageCenterError and conformance MessageCenterError()
{
  result = lazy protocol witness table cache variable for type MessageCenterError and conformance MessageCenterError;
  if (!lazy protocol witness table cache variable for type MessageCenterError and conformance MessageCenterError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageCenterError and conformance MessageCenterError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MessageCenterError and conformance MessageCenterError;
  if (!lazy protocol witness table cache variable for type MessageCenterError and conformance MessageCenterError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageCenterError and conformance MessageCenterError);
  }

  return result;
}

uint64_t outlined assign with copy of MessageCenterActorProtocol?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t MessageCenterEndpointPayload.description.getter()
{
  v1 = *v0;
  _StringGuts.grow(_:)(28);

  OUTLINED_FUNCTION_60_2();
  v6 = v2;
  if (v1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x223DE2180](v3, v4);

  return v6;
}

uint64_t MessageCenterEndpointPayload.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x4349417369 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MessageCenterEndpointPayload.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = MessageCenterEndpointPayload.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MessageCenterEndpointPayload.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MessageCenterEndpointPayload.CodingKeys and conformance MessageCenterEndpointPayload.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MessageCenterEndpointPayload.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MessageCenterEndpointPayload.CodingKeys and conformance MessageCenterEndpointPayload.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MessageCenterEndpointPayload.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11SiriNetwork28MessageCenterEndpointPayloadV10CodingKeys33_8D5DBEF99912F277E07A3932C7939D03LLOGMd, &_ss22KeyedEncodingContainerVy11SiriNetwork28MessageCenterEndpointPayloadV10CodingKeys33_8D5DBEF99912F277E07A3932C7939D03LLOGMR);
  OUTLINED_FUNCTION_0_0(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  v11 = *v1;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MessageCenterEndpointPayload.CodingKeys and conformance MessageCenterEndpointPayload.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v5 + 8))(v10, v3);
}

unint64_t lazy protocol witness table accessor for type MessageCenterEndpointPayload.CodingKeys and conformance MessageCenterEndpointPayload.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MessageCenterEndpointPayload.CodingKeys and conformance MessageCenterEndpointPayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type MessageCenterEndpointPayload.CodingKeys and conformance MessageCenterEndpointPayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageCenterEndpointPayload.CodingKeys and conformance MessageCenterEndpointPayload.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MessageCenterEndpointPayload.CodingKeys and conformance MessageCenterEndpointPayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type MessageCenterEndpointPayload.CodingKeys and conformance MessageCenterEndpointPayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageCenterEndpointPayload.CodingKeys and conformance MessageCenterEndpointPayload.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MessageCenterEndpointPayload.CodingKeys and conformance MessageCenterEndpointPayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type MessageCenterEndpointPayload.CodingKeys and conformance MessageCenterEndpointPayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageCenterEndpointPayload.CodingKeys and conformance MessageCenterEndpointPayload.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MessageCenterEndpointPayload.CodingKeys and conformance MessageCenterEndpointPayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type MessageCenterEndpointPayload.CodingKeys and conformance MessageCenterEndpointPayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageCenterEndpointPayload.CodingKeys and conformance MessageCenterEndpointPayload.CodingKeys);
  }

  return result;
}

uint64_t MessageCenterEndpointPayload.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11SiriNetwork28MessageCenterEndpointPayloadV10CodingKeys33_8D5DBEF99912F277E07A3932C7939D03LLOGMd, &_ss22KeyedDecodingContainerVy11SiriNetwork28MessageCenterEndpointPayloadV10CodingKeys33_8D5DBEF99912F277E07A3932C7939D03LLOGMR);
  OUTLINED_FUNCTION_0_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MessageCenterEndpointPayload.CodingKeys and conformance MessageCenterEndpointPayload.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v14 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v7 + 8))(v12, v5);
    *a2 = v14 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t MessageCenterEndpointBrowser.description.getter()
{
  _StringGuts.grow(_:)(43);

  MEMORY[0x223DE2180](*(v0 + 192), *(v0 + 200));
  return 0xD000000000000029;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MessageCenterEndpointBrowser.start()()
{
  v1 = *v0;

  OUTLINED_FUNCTION_25_3();
  specialized MessageCenterEndpointBrowser.executeAsPersonaIfNeeded<A>(_:)(v2, v3, v4, v5);
}

void closure #1 in MessageCenterEndpointBrowser.start()(uint64_t a1)
{
  v2 = type metadata accessor for NWBrowser.Descriptor();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  if (*(a1 + 208) == 1)
  {
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_223515000, v4, v5, "NetworkDeviceBrowser has already been started", v6, 2u);
      MEMORY[0x223DE38F0](v6, -1, -1);
    }
  }

  else
  {
    *(a1 + 208) = 1;
    v7 = *(a1 + 112);
    if (v7)
    {
      v8 = *(a1 + 120);

      v7(v30, v9);
      outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v7);
    }

    else
    {

      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v30[0] = v13;
        *v12 = 136315138;
        v14 = MessageCenterEndpointBrowser.description.getter();
        v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v30);

        *(v12 + 4) = v16;
        _os_log_impl(&dword_223515000, v10, v11, "%s Creating NWBrowser", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v13);
        MEMORY[0x223DE38F0](v13, -1, -1);
        MEMORY[0x223DE38F0](v12, -1, -1);
      }

      static MessageCenterEndpointBrowser.defaultBrowseDescriptor.getter();
      static MessageCenterEndpointBrowser.defaultBrowseParameters.getter();
      v17 = type metadata accessor for NWBrowser();
      v18 = *(v17 + 48);
      v19 = *(v17 + 52);
      swift_allocObject();
      v20 = NWBrowser.init(for:using:)();
      v31 = v17;
      v32 = &protocol witness table for NWBrowser;
      v30[0] = v20;
    }

    swift_beginAccess();
    outlined assign with take of MessageCenterBrowserProtocol?(v30, a1 + 128);
    swift_endAccess();
    v22 = MessageCenterEndpointBrowser.browser.modify();
    v23 = *(v21 + 24);
    if (v23)
    {
      v24 = *(v21 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v21, *(v21 + 24));
      v25 = *(v24 + 16);

      v25(partial apply for closure #1 in closure #1 in MessageCenterEndpointBrowser.start(), a1, v23, v24);
    }

    (v22)(v30, 0);
    swift_beginAccess();
    outlined init with copy of MessageCenterBrowserProtocol?(a1 + 128, v30, &_s11SiriNetwork28MessageCenterBrowserProtocol_pSgMd, &_s11SiriNetwork28MessageCenterBrowserProtocol_pSgMR);
    if (v31)
    {
      outlined init with copy of UMUserPersonProtocol(v30, v29);
      outlined destroy of NetworkConnectionProtocol?(v30, &_s11SiriNetwork28MessageCenterBrowserProtocol_pSgMd, &_s11SiriNetwork28MessageCenterBrowserProtocol_pSgMR);
      v26 = __swift_project_boxed_opaque_existential_1(v29, v29[3]);
      v27 = *(a1 + 168);
      v28 = *v26;
      NWBrowser.start(queue:)();
      __swift_destroy_boxed_opaque_existential_0(v29);
    }

    else
    {
      outlined destroy of NetworkConnectionProtocol?(v30, &_s11SiriNetwork28MessageCenterBrowserProtocol_pSgMd, &_s11SiriNetwork28MessageCenterBrowserProtocol_pSgMR);
    }
  }
}

uint64_t static MessageCenterEndpointBrowser.defaultBrowseDescriptor.getter()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network9NWBrowserC10DescriptorOSgMd, &_s7Network9NWBrowserC10DescriptorOSgMR) - 8) + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v1);
  v3 = &v11 - v2;
  v4 = String.utf8CString.getter();
  nw_browse_descriptor_create_application_service((v4 + 32));

  nw_browse_descriptor_set_browse_scope();
  swift_unknownObjectRetain();
  NWBrowser.Descriptor.init(_:)();
  v5 = type metadata accessor for NWBrowser.Descriptor();
  result = __swift_getEnumTagSinglePayload(v3, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_13_4(v5);
    v8 = *(v7 + 32);
    v9 = OUTLINED_FUNCTION_14_3();
    return v10(v9);
  }

  return result;
}

uint64_t static MessageCenterEndpointBrowser.defaultBrowseParameters.getter()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR) - 8) + 64);
  OUTLINED_FUNCTION_10();
  v2 = MEMORY[0x28223BE20](v1);
  v4 = &v14 - v3;
  v5 = MEMORY[0x223DE3050](v2);
  v6 = xpc_array_create(0, 0);
  v7 = xpc_string_create("com.apple.rapport.browse");
  xpc_array_append_value(v6, v7);
  v8 = xpc_array_create(0, 0);
  v9 = xpc_string_create("RapportBrowseAgent");
  xpc_array_append_value(v8, v9);
  swift_unknownObjectRetain();
  nw_parameters_set_required_netagent_classes();
  MEMORY[0x223DE3070](v5, 1);
  static NWApplicationID.self.getter();
  v10 = type metadata accessor for NWApplicationID();
  if (__swift_getEnumTagSinglePayload(v4, 1, v10) == 1)
  {
    outlined destroy of NetworkConnectionProtocol?(v4, &_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
  }

  else
  {
    NWApplicationID.nw.getter();
    OUTLINED_FUNCTION_13_4(v10);
    (*(v11 + 8))(v4, v10);
  }

  nw_parameters_set_application_id();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  type metadata accessor for NWParameters();
  v12 = NWParameters.__allocating_init(_:)();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v12;
}

uint64_t closure #1 in closure #1 in MessageCenterEndpointBrowser.start()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v46 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v40 - v9;
  v11 = type metadata accessor for NWBrowser.Result.Change();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v45 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v52 = v40 - v15;
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();
  v50 = a3;

  v16 = a2 + 56;
  v17 = 1 << *(a2 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a2 + 56);
  v20 = (v17 + 63) >> 6;
  v41 = v13 + 7;
  v42 = v12 + 16;
  v47 = v12;
  v40[0] = v12 + 8;
  v40[1] = v12 + 32;
  v51 = a2;

  v22 = 0;
  v43 = v20;
  v44 = a2 + 56;
  v48 = v11;
  v49 = v10;
  if (v19)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v23 >= v20)
    {
      swift_unownedRelease();
      swift_unownedRelease();
    }

    v19 = *(v16 + 8 * v23);
    ++v22;
    if (v19)
    {
      v22 = v23;
      do
      {
LABEL_8:
        v24 = v52;
        v25 = v47;
        v26 = *(v47 + 16);
        v26(v52, *(v51 + 48) + *(v47 + 72) * (__clz(__rbit64(v19)) | (v22 << 6)), v11);
        v27 = type metadata accessor for TaskPriority();
        __swift_storeEnumTagSinglePayload(v10, 1, 1, v27);
        v28 = v10;
        v29 = v45;
        v26(v45, v24, v11);
        v30 = (*(v25 + 80) + 32) & ~*(v25 + 80);
        v31 = (v41 + v30) & 0xFFFFFFFFFFFFFFF8;
        v32 = swift_allocObject();
        *(v32 + 16) = 0;
        *(v32 + 24) = 0;
        (*(v25 + 32))(v32 + v30, v29, v11);
        *(v32 + v31) = v50;
        v33 = v46;
        outlined init with copy of MessageCenterBrowserProtocol?(v28, v46, &_sScPSgMd, &_sScPSgMR);
        LODWORD(v30) = __swift_getEnumTagSinglePayload(v33, 1, v27);
        swift_unownedRetain();

        if (v30 == 1)
        {
          outlined destroy of NetworkConnectionProtocol?(v33, &_sScPSgMd, &_sScPSgMR);
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(*(v27 - 8) + 8))(v33, v27);
        }

        v34 = *(v32 + 16);
        v35 = *(v32 + 24);
        swift_unknownObjectRetain();

        v10 = v49;
        v20 = v43;
        if (v34)
        {
          swift_getObjectType();
          v36 = dispatch thunk of Actor.unownedExecutor.getter();
          v38 = v37;
          swift_unknownObjectRelease();
        }

        else
        {
          v36 = 0;
          v38 = 0;
        }

        outlined destroy of NetworkConnectionProtocol?(v10, &_sScPSgMd, &_sScPSgMR);
        v39 = swift_allocObject();
        *(v39 + 16) = &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in closure #1 in MessageCenterEndpointBrowser.start();
        *(v39 + 24) = v32;
        if (v38 | v36)
        {
          v53 = 0;
          v54 = 0;
          v55 = v36;
          v56 = v38;
        }

        v16 = v44;
        v19 &= v19 - 1;
        swift_task_create();

        v11 = v48;
        result = (*v40[0])(v52, v48);
      }

      while (v19);
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in MessageCenterEndpointBrowser.start()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for NWEndpoint();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();
  v9 = type metadata accessor for NWBrowser.Result();
  v5[8] = v9;
  v10 = *(v9 - 8);
  v5[9] = v10;
  v11 = *(v10 + 64) + 15;
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v12 = type metadata accessor for NWBrowser.Result.Change();
  v5[12] = v12;
  v13 = *(v12 - 8);
  v5[13] = v13;
  v14 = *(v13 + 64) + 15;
  v5[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #1 in closure #1 in MessageCenterEndpointBrowser.start(), 0, 0);
}

void closure #1 in closure #1 in closure #1 in closure #1 in MessageCenterEndpointBrowser.start()()
{
  v2 = *(v0 + 104);
  (*(v2 + 16))(*(v0 + 112), *(v0 + 16), *(v0 + 96));
  v3 = *(v2 + 88);
  v4 = OUTLINED_FUNCTION_41_0();
  v6 = v5(v4);
  if (v6 == *MEMORY[0x277CD9130])
  {
    v7 = OUTLINED_FUNCTION_24_2();
    v8(v7);
    v9 = *(v1 + 32);
    v10 = OUTLINED_FUNCTION_14_3();
    v11(v10);
    swift_unownedRetainStrong();
    NWBrowser.Result.endpoint.getter();
    OUTLINED_FUNCTION_4_15(&async function pointer to specialized MessageCenterEndpointBrowser.handleEndpointAdded(_:));
    v12 = swift_task_alloc();
    *(v0 + 120) = v12;
    *v12 = v0;
    v13 = closure #1 in closure #1 in closure #1 in closure #1 in MessageCenterEndpointBrowser.start();
  }

  else
  {
    if (v6 != *MEMORY[0x277CD9140])
    {
      v23 = *(v0 + 104);
      v24 = *(v0 + 112);
      v25 = *(v0 + 96);
      if (v6 == *MEMORY[0x277CD9138])
      {
        v27 = *(v0 + 80);
        v26 = *(v0 + 88);
        v28 = *(v0 + 64);
        v29 = *(v0 + 72);
        v30 = *(v0 + 56);
        v44 = *(v0 + 48);
        v31 = *(v0 + 24);
        (*(v23 + 96))(v24, v25);
        v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network9NWBrowserC6ResultV3old_AE3newAE6ChangeO5FlagsV5flagstMd, &_s7Network9NWBrowserC6ResultV3old_AE3newAE6ChangeO5FlagsV5flagstMR);
        v33 = *(v32 + 48);
        *(v0 + 144) = *(v32 + 64);
        v34 = *(v29 + 32);
        v35 = OUTLINED_FUNCTION_14_3();
        v34(v35);
        (v34)(v27, v24 + v33, v28);
        swift_unownedRetainStrong();
        NWBrowser.Result.endpoint.getter();
        NWBrowser.Result.endpoint.getter();
        OUTLINED_FUNCTION_4_15(&async function pointer to specialized MessageCenterEndpointBrowser.handleEndpointChanged(_:newEndpoint:));
        v36 = swift_task_alloc();
        *(v0 + 136) = v36;
        *v36 = v0;
        v36[1] = closure #1 in closure #1 in closure #1 in closure #1 in MessageCenterEndpointBrowser.start();
        v37 = *(v0 + 48);
        v38 = *(v0 + 56);
        v39 = *(v0 + 24);
        OUTLINED_FUNCTION_63_0();

        __asm { BR              X3 }
      }

      (*(v23 + 8))(*(v0 + 112), v25);
      OUTLINED_FUNCTION_50_2();

      OUTLINED_FUNCTION_6_3();
      OUTLINED_FUNCTION_63_0();

      __asm { BRAA            X1, X16 }
    }

    v14 = OUTLINED_FUNCTION_24_2();
    v15(v14);
    v16 = *(v1 + 32);
    v17 = OUTLINED_FUNCTION_14_3();
    v18(v17);
    swift_unownedRetainStrong();
    NWBrowser.Result.endpoint.getter();
    OUTLINED_FUNCTION_4_15(&async function pointer to specialized MessageCenterEndpointBrowser.handleEndpointRemoved(_:));
    v12 = swift_task_alloc();
    *(v0 + 128) = v12;
    *v12 = v0;
    v13 = closure #1 in closure #1 in closure #1 in closure #1 in MessageCenterEndpointBrowser.start();
  }

  v12[1] = v13;
  v19 = *(v0 + 56);
  v20 = *(v0 + 24);
  OUTLINED_FUNCTION_63_0();

  __asm { BR              X2 }
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in MessageCenterEndpointBrowser.start()()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_11_0();
  v2 = v1[15];
  v3 = v1[7];
  v4 = v1[5];
  v5 = v1[4];
  v6 = v1[3];
  v7 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v8 = v7;

  v9 = *(v4 + 8);
  v10 = OUTLINED_FUNCTION_41_0();
  v11(v10);
  v12 = OUTLINED_FUNCTION_36_3();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

{
  OUTLINED_FUNCTION_29();
  (*(v0[9] + 8))(v0[11], v0[8]);
  OUTLINED_FUNCTION_50_2();

  OUTLINED_FUNCTION_6_3();

  return v1();
}

{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_11_0();
  v2 = v1[16];
  v3 = v1[7];
  v4 = v1[5];
  v5 = v1[4];
  v6 = v1[3];
  v7 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v8 = v7;

  v9 = *(v4 + 8);
  v10 = OUTLINED_FUNCTION_41_0();
  v11(v10);
  v12 = OUTLINED_FUNCTION_36_3();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

{
  OUTLINED_FUNCTION_40_3();
  OUTLINED_FUNCTION_11_0();
  v2 = v1[17];
  v3 = v1[7];
  v4 = v1[6];
  v5 = v1[5];
  v6 = v1[4];
  v7 = v1[3];
  v8 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v9 = v8;

  v10 = *(v5 + 8);
  v10(v4, v6);
  v10(v3, v6);
  v11 = OUTLINED_FUNCTION_36_3();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

{
  OUTLINED_FUNCTION_40_3();
  v1 = *(v0 + 144);
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(*(v0 + 72) + 8);
  (v4)(*(v0 + 80), *(v0 + 64));
  v5 = OUTLINED_FUNCTION_41_0();
  v4(v5);
  v6 = type metadata accessor for NWBrowser.Result.Change.Flags();
  OUTLINED_FUNCTION_71(v6);
  (*(v7 + 8))(v2 + v1);
  OUTLINED_FUNCTION_50_2();

  OUTLINED_FUNCTION_6_3();

  return v8();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MessageCenterEndpointBrowser.stop()()
{
  if (*(v0 + OBJC_IVAR____TtC11SiriNetwork28MessageCenterEndpointBrowser_usePersona) == 1)
  {
    v1 = OBJC_IVAR____TtC11SiriNetwork28MessageCenterEndpointBrowser_executionStrategy;
    swift_retain_n();
    _s11SiriNetwork29AdoptPersonaExecutionStrategyV13executeAsUseryxxyKXEKlFyt_Tg504_s11a47Network28MessageCenterEndpointBrowserC24executehD32IfNeededyxxyKXEKlFxyKXEfU_yt_Tg5xs5Error_pRi_zRi0_zlyytIsgrzo_Tf1ncn_n0jaklmnO17C4stopyyKFyyXEfU_AA0lmnO0CTf1nnc_n((v0 + v1), v0, v2);
  }

  else
  {

    closure #1 in MessageCenterEndpointBrowser.stop()(v3);
  }
}

void closure #1 in MessageCenterEndpointBrowser.stop()(uint64_t a1)
{
  if (*(a1 + 208))
  {
    *(a1 + 208) = 0;
    swift_beginAccess();
    outlined init with copy of MessageCenterBrowserProtocol?(a1 + 128, v7, &_s11SiriNetwork28MessageCenterBrowserProtocol_pSgMd, &_s11SiriNetwork28MessageCenterBrowserProtocol_pSgMR);
    if (v8)
    {
      outlined init with copy of UMUserPersonProtocol(v7, v6);
      outlined destroy of NetworkConnectionProtocol?(v7, &_s11SiriNetwork28MessageCenterBrowserProtocol_pSgMd, &_s11SiriNetwork28MessageCenterBrowserProtocol_pSgMR);
      v2 = *__swift_project_boxed_opaque_existential_1(v6, v6[3]);
      NWBrowser.cancel()();
      __swift_destroy_boxed_opaque_existential_0(v6);
    }

    else
    {
      outlined destroy of NetworkConnectionProtocol?(v7, &_s11SiriNetwork28MessageCenterBrowserProtocol_pSgMd, &_s11SiriNetwork28MessageCenterBrowserProtocol_pSgMR);
    }
  }

  else
  {
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_223515000, v3, v4, "NetworkDeviceBrowser has already been stopped", v5, 2u);
      MEMORY[0x223DE38F0](v5, -1, -1);
    }
  }
}

void *static MessageCenterEndpointBrowser.defaultConnectionParametersForPersona(persona:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdoptPersonaExecutionStrategy(0);
  v5 = OUTLINED_FUNCTION_71(v4);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v10 = a1;
  *(v10 + 1) = a2;
  v11 = *(v8 + 20);
  v12 = one-time initialization token for messageCenterActor;

  if (v12 != -1)
  {
    OUTLINED_FUNCTION_14_4();
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.messageCenterActor);
  OUTLINED_FUNCTION_13_4(v13);
  (*(v14 + 16))(&v10[v11]);
  v15 = &v10[*(v4 + 24)];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = specialized AdoptPersonaExecutionStrategy.executeAsUser<A>(_:)(v10);
  outlined destroy of AdoptPersonaExecutionStrategy(v10);
  return v16;
}

uint64_t _s11SiriNetwork29AdoptPersonaExecutionStrategyV13executeAsUseryxxyKXEKlFyt_Tg504_s11a47Network28MessageCenterEndpointBrowserC24executehD32IfNeededyxxyKXEKlFxyKXEfU_yt_Tg5xs5Error_pRi_zRi0_zlyytIsgrzo_Tf1ncn_n0jaklmnO18C5startyyKFyyXEfU_AA0lmnO0CAIXDXMTTf1nnc_n@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v105 = a4;
  v7 = type metadata accessor for AdoptPersonaExecutionStrategy(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v104 = (&v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v97 - v12);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = (&v97 - v15);
  v17 = (a1 + *(v14 + 24));
  v18 = *v17;
  v19 = v17[1];
  if (*v17)
  {
    v20 = *v17;
  }

  else
  {
    v20 = UMUserPersona.current();
  }

  if (*v17)
  {
    v21 = v17[1];
  }

  else
  {
    v21 = 0;
  }

  swift_retain_n();
  v22 = outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(v18);
  v107 = v21;
  v20(v109, v22);
  v23 = v110;
  if (v110)
  {
    v103 = a3;
    v24 = v111;
    __swift_project_boxed_opaque_existential_1(v109, v110);
    (*(v24 + 16))(&v112, v23, v24);
    __swift_destroy_boxed_opaque_existential_0(v109);
    if (*(&v113 + 1))
    {
      v102 = a2;
      outlined init with take of RPCOspreyConnectionProtocol(&v112, v115);
      v25 = a1;
      v26 = *a1;
      v101 = v25;
      v27 = *(v25 + 8);
      v29 = v116;
      v28 = v117;
      __swift_project_boxed_opaque_existential_1(v115, v116);
      v30 = *(v28 + 8);

      v31 = v30(v29, v28);
      if (v32)
      {
        if (v26 == v31 && v32 == v27)
        {

LABEL_22:
          v52 = *(v7 + 20);
          outlined init with copy of AdoptPersonaExecutionStrategy(v101, v16);
          v53 = Logger.logObject.getter();
          v54 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v53, v54))
          {
            v55 = swift_slowAlloc();
            v56 = swift_slowAlloc();
            *&v112 = v56;
            *v55 = 136315138;
            v57 = *v16;
            v58 = v16[1];

            outlined destroy of AdoptPersonaExecutionStrategy(v16);
            v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v58, &v112);

            *(v55 + 4) = v59;
            _os_log_impl(&dword_223515000, v53, v54, "Already running as persona %s, nothing to do", v55, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v56);
            MEMORY[0x223DE38F0](v56, -1, -1);
            MEMORY[0x223DE38F0](v55, -1, -1);
          }

          else
          {

            outlined destroy of AdoptPersonaExecutionStrategy(v16);
          }

          specialized closure #1 in MessageCenterEndpointBrowser.executeAsPersonaIfNeeded<A>(_:)(v82);
LABEL_40:

          __swift_destroy_boxed_opaque_existential_0(v115);
        }

        v100 = v26;
        v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v34)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v100 = v26;
      }

      v36 = *(v7 + 20);
      v37 = v101;
      outlined init with copy of AdoptPersonaExecutionStrategy(v101, v13);
      outlined init with copy of UMUserPersonProtocol(v115, &v112);
      v99 = v36;
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();
      v40 = os_log_type_enabled(v38, v39);
      v98 = v27;
      if (v40)
      {
        v41 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        v42 = v37;
        v43 = v108;
        *v41 = 136315394;
        v44 = *v13;
        v45 = v13[1];

        outlined destroy of AdoptPersonaExecutionStrategy(v13);
        v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, &v108);

        *(v41 + 4) = v46;
        *(v41 + 12) = 2080;
        outlined init with copy of UMUserPersonProtocol(&v112, v109);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork20UMUserPersonProtocol_pMd, &_s11SiriNetwork20UMUserPersonProtocol_pMR);
        v47 = String.init<A>(describing:)();
        v49 = v48;
        __swift_destroy_boxed_opaque_existential_0(&v112);
        v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, &v108);

        *(v41 + 14) = v50;
        _os_log_impl(&dword_223515000, v38, v39, "Request to execute as user %s, currently running as %s", v41, 0x16u);
        swift_arrayDestroy();
        v51 = v43;
        v37 = v42;
        MEMORY[0x223DE38F0](v51, -1, -1);
        MEMORY[0x223DE38F0](v41, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0(&v112);
        outlined destroy of AdoptPersonaExecutionStrategy(v13);
      }

      v60 = v116;
      v61 = v117;
      __swift_project_boxed_opaque_existential_1(v115, v116);
      v62 = v106;
      v63 = (*(v61 + 40))(v60, v61);
      if (!v62)
      {
        v64 = v63;
        v65 = v116;
        v66 = v117;
        __swift_project_boxed_opaque_existential_1(v115, v116);
        v67 = (*(v66 + 32))(v100, v98, v65, v66);
        if (v67)
        {
          v68 = v67;
          v106 = v64;
          v69 = v104;
          outlined init with copy of AdoptPersonaExecutionStrategy(v37, v104);
          v70 = v68;
          v71 = Logger.logObject.getter();
          v72 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v71, v72))
          {
            v73 = swift_slowAlloc();
            v74 = swift_slowAlloc();
            *&v112 = v74;
            *v73 = 136315394;
            v75 = v69;
            v76 = *v69;
            v77 = *(v75 + 8);

            outlined destroy of AdoptPersonaExecutionStrategy(v75);
            v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v77, &v112);

            *(v73 + 4) = v78;
            *(v73 + 12) = 2080;
            swift_getErrorValue();
            v79 = Error.localizedDescription.getter();
            v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v80, &v112);

            *(v73 + 14) = v81;
            _os_log_impl(&dword_223515000, v71, v72, "Failed adopting persona %s: %s", v73, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x223DE38F0](v74, -1, -1);
            MEMORY[0x223DE38F0](v73, -1, -1);
          }

          else
          {

            outlined destroy of AdoptPersonaExecutionStrategy(v69);
          }

          lazy protocol witness table accessor for type AdoptPersonaExecutionStrategy.AdoptPersonaExecutionStrategyError and conformance AdoptPersonaExecutionStrategy.AdoptPersonaExecutionStrategyError();
          swift_allocError();
          *v91 = 0;
          swift_willThrow();

          v92 = v106;
          $defer #1 <A>() in AdoptPersonaExecutionStrategy.executeAsUser<A>(_:)(v115, v106);
        }

        else
        {
          v83 = Logger.logObject.getter();
          v84 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v83, v84))
          {
            v106 = v64;
            v85 = swift_slowAlloc();
            v104 = swift_slowAlloc();
            *&v112 = v104;
            *v85 = 136315138;
            v86 = [objc_opt_self() currentPersona];
            if (v86)
            {
              v87 = v86;
              v88 = UMUserPersona.logDescription.getter();
              v90 = v89;
            }

            else
            {
              v90 = 0xE300000000000000;
              v88 = 7104878;
            }

            v93 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v90, &v112);

            *(v85 + 4) = v93;
            _os_log_impl(&dword_223515000, v83, v84, "Executing as %s", v85, 0xCu);
            v94 = v104;
            __swift_destroy_boxed_opaque_existential_0(v104);
            MEMORY[0x223DE38F0](v94, -1, -1);
            MEMORY[0x223DE38F0](v85, -1, -1);

            v64 = v106;
          }

          else
          {
          }

          specialized closure #1 in MessageCenterEndpointBrowser.executeAsPersonaIfNeeded<A>(_:)(v95);
          $defer #1 <A>() in AdoptPersonaExecutionStrategy.executeAsUser<A>(_:)(v115, v64);
        }
      }

      goto LABEL_40;
    }
  }

  else
  {
    outlined destroy of NetworkConnectionProtocol?(v109, &_s11SiriNetwork20UMUserPersonProtocol_pSgMd, &_s11SiriNetwork20UMUserPersonProtocol_pSgMR);
    v112 = 0u;
    v113 = 0u;
    v114 = 0;
  }

  outlined destroy of NetworkConnectionProtocol?(&v112, &_s11SiriNetwork20UMUserPersonProtocol_pSgMd, &_s11SiriNetwork20UMUserPersonProtocol_pSgMR);
  lazy protocol witness table accessor for type AdoptPersonaExecutionStrategy.AdoptPersonaExecutionStrategyError and conformance AdoptPersonaExecutionStrategy.AdoptPersonaExecutionStrategyError();
  swift_allocError();
  *v35 = 1;
  swift_willThrow();
}

uint64_t _s11SiriNetwork29AdoptPersonaExecutionStrategyV13executeAsUseryxxyKXEKlFyt_Tg504_s11a47Network28MessageCenterEndpointBrowserC24executehD32IfNeededyxxyKXEKlFxyKXEfU_yt_Tg5xs5Error_pRi_zRi0_zlyytIsgrzo_Tf1ncn_n0jaklmnO17C4stopyyKFyyXEfU_AA0lmnO0CTf1nnc_n@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AdoptPersonaExecutionStrategy(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v8);
  v13 = (v92 - v12);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = (v92 - v15);
  v17 = *(v14 + 24);
  v98 = a1;
  v18 = (a1 + v17);
  v19 = *v18;
  v20 = v18[1];
  if (*v18)
  {
    v21 = *v18;
  }

  else
  {
    v21 = UMUserPersona.current();
  }

  if (*v18)
  {
    v22 = v18[1];
  }

  else
  {
    v22 = 0;
  }

  swift_retain_n();
  v23 = outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(v19);
  v99 = v22;
  v21(v101, v23);
  v24 = v102;
  if (v102)
  {
    v96 = a3;
    v25 = v103;
    __swift_project_boxed_opaque_existential_1(v101, v102);
    (*(v25 + 16))(&v104, v24, v25);
    __swift_destroy_boxed_opaque_existential_0(v101);
    if (*(&v105 + 1))
    {
      v94 = v10;
      v95 = a2;
      outlined init with take of RPCOspreyConnectionProtocol(&v104, v107);
      v26 = *v98;
      v27 = v98[1];
      v29 = v108;
      v28 = v109;
      __swift_project_boxed_opaque_existential_1(v107, v108);
      v30 = *(v28 + 8);

      v31 = v30(v29, v28);
      if (v32)
      {
        if (v26 == v31 && v32 == v27)
        {

LABEL_22:
          v48 = *(v6 + 20);
          outlined init with copy of AdoptPersonaExecutionStrategy(v98, v16);
          v49 = Logger.logObject.getter();
          v50 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v49, v50))
          {
            v51 = swift_slowAlloc();
            v52 = swift_slowAlloc();
            *&v104 = v52;
            *v51 = 136315138;
            v53 = *v16;
            v54 = v16[1];

            outlined destroy of AdoptPersonaExecutionStrategy(v16);
            v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, &v104);

            *(v51 + 4) = v55;
            _os_log_impl(&dword_223515000, v49, v50, "Already running as persona %s, nothing to do", v51, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v52);
            MEMORY[0x223DE38F0](v52, -1, -1);
            MEMORY[0x223DE38F0](v51, -1, -1);
          }

          else
          {

            outlined destroy of AdoptPersonaExecutionStrategy(v16);
          }

          closure #1 in MessageCenterEndpointBrowser.stop()(v77);

LABEL_40:

          __swift_destroy_boxed_opaque_existential_0(v107);
        }

        v93 = v26;
        v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v34)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v93 = v26;
      }

      v36 = *(v6 + 20);
      outlined init with copy of AdoptPersonaExecutionStrategy(v98, v13);
      outlined init with copy of UMUserPersonProtocol(v107, &v104);
      v92[1] = v36;
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v100 = v40;
        *v39 = 136315394;
        v41 = *v13;
        v42 = v13[1];

        outlined destroy of AdoptPersonaExecutionStrategy(v13);
        v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, &v100);

        *(v39 + 4) = v43;
        *(v39 + 12) = 2080;
        outlined init with copy of UMUserPersonProtocol(&v104, v101);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork20UMUserPersonProtocol_pMd, &_s11SiriNetwork20UMUserPersonProtocol_pMR);
        v44 = String.init<A>(describing:)();
        v46 = v45;
        __swift_destroy_boxed_opaque_existential_0(&v104);
        v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, &v100);

        *(v39 + 14) = v47;
        _os_log_impl(&dword_223515000, v37, v38, "Request to execute as user %s, currently running as %s", v39, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DE38F0](v40, -1, -1);
        MEMORY[0x223DE38F0](v39, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0(&v104);
        outlined destroy of AdoptPersonaExecutionStrategy(v13);
      }

      v56 = v94;
      v57 = v108;
      v58 = v109;
      __swift_project_boxed_opaque_existential_1(v107, v108);
      v59 = v97;
      v60 = (*(v58 + 40))(v57, v58);
      if (!v59)
      {
        v61 = v60;
        v62 = v108;
        v63 = v109;
        __swift_project_boxed_opaque_existential_1(v107, v108);
        v64 = (*(v63 + 32))(v93, v27, v62, v63);
        if (v64)
        {
          v65 = v64;
          v97 = v61;
          outlined init with copy of AdoptPersonaExecutionStrategy(v98, v56);
          v66 = v65;
          v67 = Logger.logObject.getter();
          v68 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v67, v68))
          {
            v69 = swift_slowAlloc();
            v70 = swift_slowAlloc();
            *&v104 = v70;
            *v69 = 136315394;
            v71 = *v56;
            v72 = v56[1];

            outlined destroy of AdoptPersonaExecutionStrategy(v56);
            v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v72, &v104);

            *(v69 + 4) = v73;
            *(v69 + 12) = 2080;
            swift_getErrorValue();
            v74 = Error.localizedDescription.getter();
            v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v75, &v104);

            *(v69 + 14) = v76;
            _os_log_impl(&dword_223515000, v67, v68, "Failed adopting persona %s: %s", v69, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x223DE38F0](v70, -1, -1);
            MEMORY[0x223DE38F0](v69, -1, -1);
          }

          else
          {

            outlined destroy of AdoptPersonaExecutionStrategy(v56);
          }

          lazy protocol witness table accessor for type AdoptPersonaExecutionStrategy.AdoptPersonaExecutionStrategyError and conformance AdoptPersonaExecutionStrategy.AdoptPersonaExecutionStrategyError();
          swift_allocError();
          *v86 = 0;
          swift_willThrow();

          v87 = v97;
          $defer #1 <A>() in AdoptPersonaExecutionStrategy.executeAsUser<A>(_:)(v107, v97);
        }

        else
        {
          v78 = Logger.logObject.getter();
          v79 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v78, v79))
          {
            v97 = v61;
            v80 = swift_slowAlloc();
            v95 = swift_slowAlloc();
            *&v104 = v95;
            *v80 = 136315138;
            v81 = [objc_opt_self() currentPersona];
            if (v81)
            {
              v82 = v81;
              v83 = UMUserPersona.logDescription.getter();
              v85 = v84;
            }

            else
            {
              v85 = 0xE300000000000000;
              v83 = 7104878;
            }

            v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v85, &v104);

            *(v80 + 4) = v88;
            _os_log_impl(&dword_223515000, v78, v79, "Executing as %s", v80, 0xCu);
            v89 = v95;
            __swift_destroy_boxed_opaque_existential_0(v95);
            MEMORY[0x223DE38F0](v89, -1, -1);
            MEMORY[0x223DE38F0](v80, -1, -1);

            v61 = v97;
          }

          else
          {
          }

          closure #1 in MessageCenterEndpointBrowser.stop()(v90);

          $defer #1 <A>() in AdoptPersonaExecutionStrategy.executeAsUser<A>(_:)(v107, v61);
        }
      }

      goto LABEL_40;
    }
  }

  else
  {
    outlined destroy of NetworkConnectionProtocol?(v101, &_s11SiriNetwork20UMUserPersonProtocol_pSgMd, &_s11SiriNetwork20UMUserPersonProtocol_pSgMR);
    v104 = 0u;
    v105 = 0u;
    v106 = 0;
  }

  outlined destroy of NetworkConnectionProtocol?(&v104, &_s11SiriNetwork20UMUserPersonProtocol_pSgMd, &_s11SiriNetwork20UMUserPersonProtocol_pSgMR);
  lazy protocol witness table accessor for type AdoptPersonaExecutionStrategy.AdoptPersonaExecutionStrategyError and conformance AdoptPersonaExecutionStrategy.AdoptPersonaExecutionStrategyError();
  swift_allocError();
  *v35 = 1;
  swift_willThrow();
}

void *specialized AdoptPersonaExecutionStrategy.executeAsUser<A>(_:)(void *a1)
{
  v3 = type metadata accessor for AdoptPersonaExecutionStrategy(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = (v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v5);
  v10 = (v89 - v9);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = (v89 - v12);
  v14 = (a1 + *(v11 + 24));
  v15 = v14[1];
  if (*v14)
  {
    v16 = *v14;
  }

  else
  {
    v16 = UMUserPersona.current();
  }

  if (*v14)
  {
    v17 = v14[1];
  }

  else
  {
    v17 = 0;
  }

  v18 = outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(*v14);
  v16(v96, v18);
  v19 = v97;
  if (v97)
  {
    v91 = v7;
    v20 = v98;
    __swift_project_boxed_opaque_existential_1(v96, v97);
    (*(v20 + 16))(&v99, v19, v20);
    __swift_destroy_boxed_opaque_existential_0(v96);
    if (*(&v100 + 1))
    {
      v92 = v1;
      v93 = v17;
      outlined init with take of RPCOspreyConnectionProtocol(&v99, v102);
      v21 = *a1;
      v22 = a1[1];
      v94 = a1;
      v23 = v103;
      v24 = v104;
      __swift_project_boxed_opaque_existential_1(v102, v103);
      v25 = *(v24 + 8);

      v26 = v25(v23, v24);
      if (v27)
      {
        if (v21 == v26 && v27 == v22)
        {

          v30 = v94;
LABEL_22:
          v47 = *(v3 + 20);
          outlined init with copy of AdoptPersonaExecutionStrategy(v30, v13);
          v48 = Logger.logObject.getter();
          v49 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            v51 = swift_slowAlloc();
            *&v99 = v51;
            *v50 = 136315138;
            v52 = *v13;
            v53 = v13[1];

            outlined destroy of AdoptPersonaExecutionStrategy(v13);
            v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, &v99);

            *(v50 + 4) = v54;
            _os_log_impl(&dword_223515000, v48, v49, "Already running as persona %s, nothing to do", v50, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v51);
            MEMORY[0x223DE38F0](v51, -1, -1);
            MEMORY[0x223DE38F0](v50, -1, -1);
          }

          else
          {

            v55 = outlined destroy of AdoptPersonaExecutionStrategy(v13);
          }

          v75 = MEMORY[0x223DE3050](v55);
          nw_parameters_set_include_peer_to_peer(v75, 1);
          type metadata accessor for NWParameters();
          v19 = NWParameters.__allocating_init(_:)();
LABEL_36:

          __swift_destroy_boxed_opaque_existential_0(v102);
          return v19;
        }

        v90 = v21;
        v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v30 = v94;
        if (v29)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v90 = v21;

        v30 = v94;
      }

      v32 = *(v3 + 20);
      outlined init with copy of AdoptPersonaExecutionStrategy(v30, v10);
      outlined init with copy of UMUserPersonProtocol(v102, &v99);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();
      v35 = os_log_type_enabled(v33, v34);
      v36 = v92;
      if (v35)
      {
        v37 = swift_slowAlloc();
        v89[1] = v32;
        v38 = v37;
        v39 = swift_slowAlloc();
        v95 = v39;
        *v38 = 136315394;
        v41 = *v10;
        v40 = v10[1];

        outlined destroy of AdoptPersonaExecutionStrategy(v10);
        v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v40, &v95);

        *(v38 + 4) = v42;
        *(v38 + 12) = 2080;
        outlined init with copy of UMUserPersonProtocol(&v99, v96);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork20UMUserPersonProtocol_pMd, &_s11SiriNetwork20UMUserPersonProtocol_pMR);
        v43 = String.init<A>(describing:)();
        v45 = v44;
        __swift_destroy_boxed_opaque_existential_0(&v99);
        v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, &v95);

        *(v38 + 14) = v46;
        _os_log_impl(&dword_223515000, v33, v34, "Request to execute as user %s, currently running as %s", v38, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DE38F0](v39, -1, -1);
        MEMORY[0x223DE38F0](v38, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0(&v99);
        outlined destroy of AdoptPersonaExecutionStrategy(v10);
      }

      v19 = v103;
      v56 = v104;
      __swift_project_boxed_opaque_existential_1(v102, v103);
      v57 = (*(v56 + 40))(v19, v56);
      if (!v36)
      {
        v58 = v57;
        v59 = v103;
        v60 = v104;
        __swift_project_boxed_opaque_existential_1(v102, v103);
        v61 = (*(v60 + 32))(v90, v22, v59, v60);
        if (v61)
        {
          v62 = v61;
          v93 = v58;
          v63 = v91;
          outlined init with copy of AdoptPersonaExecutionStrategy(v94, v91);
          v64 = v62;
          v65 = Logger.logObject.getter();
          v66 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v65, v66))
          {
            v67 = swift_slowAlloc();
            v68 = swift_slowAlloc();
            *&v99 = v68;
            *v67 = 136315394;
            v69 = *v63;
            v70 = v63[1];

            outlined destroy of AdoptPersonaExecutionStrategy(v63);
            v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v70, &v99);

            *(v67 + 4) = v71;
            *(v67 + 12) = 2080;
            swift_getErrorValue();
            v72 = Error.localizedDescription.getter();
            v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v73, &v99);

            *(v67 + 14) = v74;
            _os_log_impl(&dword_223515000, v65, v66, "Failed adopting persona %s: %s", v67, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x223DE38F0](v68, -1, -1);
            MEMORY[0x223DE38F0](v67, -1, -1);
          }

          else
          {

            outlined destroy of AdoptPersonaExecutionStrategy(v63);
          }

          lazy protocol witness table accessor for type AdoptPersonaExecutionStrategy.AdoptPersonaExecutionStrategyError and conformance AdoptPersonaExecutionStrategy.AdoptPersonaExecutionStrategyError();
          swift_allocError();
          *v84 = 0;
          swift_willThrow();

          v19 = v93;
          $defer #1 <A>() in AdoptPersonaExecutionStrategy.executeAsUser<A>(_:)(v102, v93);
        }

        else
        {
          v76 = Logger.logObject.getter();
          v77 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v76, v77))
          {
            v78 = swift_slowAlloc();
            v93 = swift_slowAlloc();
            *&v99 = v93;
            *v78 = 136315138;
            v79 = [objc_opt_self() currentPersona];
            if (v79)
            {
              v80 = v79;
              v81 = UMUserPersona.logDescription.getter();
              v83 = v82;
            }

            else
            {
              v83 = 0xE300000000000000;
              v81 = 7104878;
            }

            v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v83, &v99);

            *(v78 + 4) = v86;
            _os_log_impl(&dword_223515000, v76, v77, "Executing as %s", v78, 0xCu);
            v87 = v93;
            __swift_destroy_boxed_opaque_existential_0(v93);
            MEMORY[0x223DE38F0](v87, -1, -1);
            MEMORY[0x223DE38F0](v78, -1, -1);
          }

          v88 = MEMORY[0x223DE3050]();
          nw_parameters_set_include_peer_to_peer(v88, 1);
          type metadata accessor for NWParameters();
          v19 = NWParameters.__allocating_init(_:)();
          $defer #1 <A>() in AdoptPersonaExecutionStrategy.executeAsUser<A>(_:)(v102, v58);
        }
      }

      goto LABEL_36;
    }
  }

  else
  {
    outlined destroy of NetworkConnectionProtocol?(v96, &_s11SiriNetwork20UMUserPersonProtocol_pSgMd, &_s11SiriNetwork20UMUserPersonProtocol_pSgMR);
    v99 = 0u;
    v100 = 0u;
    v101 = 0;
  }

  outlined destroy of NetworkConnectionProtocol?(&v99, &_s11SiriNetwork20UMUserPersonProtocol_pSgMd, &_s11SiriNetwork20UMUserPersonProtocol_pSgMR);
  lazy protocol witness table accessor for type AdoptPersonaExecutionStrategy.AdoptPersonaExecutionStrategyError and conformance AdoptPersonaExecutionStrategy.AdoptPersonaExecutionStrategyError();
  swift_allocError();
  *v31 = 1;
  swift_willThrow();

  return v19;
}

uint64_t specialized MessageCenterEndpointBrowser.executeAsPersonaIfNeeded<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a1 + OBJC_IVAR____TtC11SiriNetwork28MessageCenterEndpointBrowser_usePersona) == 1)
  {
    v8 = OBJC_IVAR____TtC11SiriNetwork28MessageCenterEndpointBrowser_executionStrategy;

    _s11SiriNetwork29AdoptPersonaExecutionStrategyV13executeAsUseryxxyKXEKlFyt_Tg504_s11a47Network28MessageCenterEndpointBrowserC24executehD32IfNeededyxxyKXEKlFxyKXEfU_yt_Tg5xs5Error_pRi_zRi0_zlyytIsgrzo_Tf1ncn_n0jaklmnO18C5startyyKFyyXEfU_AA0lmnO0CAIXDXMTTf1nnc_n((a1 + v8), a2, a3, a4);
  }

  else
  {
    closure #1 in MessageCenterEndpointBrowser.start()(a2);
  }
}

uint64_t MessageCenterEndpointBrowser.deinit()
{
  v1 = *(v0 + 120);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(*(v0 + 112));
  outlined destroy of NetworkConnectionProtocol?(v0 + 128, &_s11SiriNetwork28MessageCenterBrowserProtocol_pSgMd, &_s11SiriNetwork28MessageCenterBrowserProtocol_pSgMR);

  outlined destroy of weak ConnectionProviderDelegate?(v0 + 176);
  v2 = *(v0 + 200);

  v3 = OBJC_IVAR____TtC11SiriNetwork28MessageCenterEndpointBrowser_logger;
  v4 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_71(v4);
  (*(v5 + 8))(v0 + v3);
  outlined destroy of AdoptPersonaExecutionStrategy(v0 + OBJC_IVAR____TtC11SiriNetwork28MessageCenterEndpointBrowser_executionStrategy);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t MessageCenterEndpointBrowser.__deallocating_deinit()
{
  MessageCenterEndpointBrowser.deinit();

  return MEMORY[0x282200960](v0);
}

unint64_t NWEndpoint.isMeDevice.getter()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network11NWTXTRecordVSgMd, &_s7Network11NWTXTRecordVSgMR) - 8) + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v1);
  v3 = &v10 - v2;
  NWEndpoint.txtRecord.getter();
  v4 = type metadata accessor for NWTXTRecord();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    outlined destroy of NetworkConnectionProtocol?(v3, &_s7Network11NWTXTRecordVSgMd, &_s7Network11NWTXTRecordVSgMR);
    return 0;
  }

  else
  {
    v6 = NWTXTRecord.statusFlags.getter();
    v5 = (v6 >> 7) & 1 & ~v7;
    OUTLINED_FUNCTION_13_4(v4);
    (*(v8 + 8))(v3, v4);
  }

  return v5;
}

uint64_t NWEndpoint.endpointPayload.getter()
{
  v0 = lazy protocol witness table accessor for type MessageCenterEndpointPayload and conformance MessageCenterEndpointPayload();

  return MEMORY[0x282125278](&type metadata for MessageCenterEndpointPayload, v0);
}

uint64_t NWEndpoint.discoverActor(persona:invalidationHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (one-time initialization token for actorSystem != -1)
  {
    swift_once();
  }

  outlined init with copy of UMUserPersonProtocol(&static MessageCenter.actorSystem, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork34MessageCenterNWActorSystemProtocol_pMd, &_s11SiriNetwork34MessageCenterNWActorSystemProtocol_pMR);
  type metadata accessor for NWActorSystem();
  if (swift_dynamicCast())
  {
    type metadata accessor for MessageCenterEndpointBrowser(0);
    static MessageCenterEndpointBrowser.defaultConnectionParametersForPersona(persona:)(a1, a2);
    if (v3)
    {
    }

    else
    {
      v8 = type metadata accessor for MessageCenterActor(0);
      OUTLINED_FUNCTION_12_5();
      lazy protocol witness table accessor for type NWEndpoint and conformance NWEndpoint(v9, v10);
      v12 = static DistributedActor<>.discover(_:connectionParameters:using:invalidationHandler:)();
      a3[3] = v8;
      OUTLINED_FUNCTION_12_5();
      a3[4] = lazy protocol witness table accessor for type NWEndpoint and conformance NWEndpoint(v13, v14);

      *a3 = v12;
    }
  }

  else
  {
    lazy protocol witness table accessor for type MessageCenterError and conformance MessageCenterError();
    swift_allocError();
    *v7 = 1;
    *(v7 + 8) = 8;
    return swift_willThrow();
  }

  return result;
}

uint64_t NWTXTRecord.statusFlags.getter()
{
  result = NWTXTRecord.subscript.getter();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = HIBYTE(v2) & 0xF;
  v5 = result & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

    return 0;
  }

  if ((v3 & 0x1000000000000000) != 0)
  {
    v0 = specialized _parseInteger<A, B>(ascii:radix:)(result, v3, 10);
    v14 = v15;
LABEL_74:

    if ((v14 & 1) == 0)
    {
      return v0;
    }

    return 0;
  }

  if ((v3 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v3 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v7 = *result;
    if (v7 == 43)
    {
      if (v5 >= 1)
      {
        if (v5 != 1)
        {
          v0 = 0;
          if (result)
          {
            while (1)
            {
              OUTLINED_FUNCTION_10_5();
              if (!v9 && v8)
              {
                goto LABEL_72;
              }

              OUTLINED_FUNCTION_46_2();
              if (!v9)
              {
                goto LABEL_72;
              }

              OUTLINED_FUNCTION_37_2();
              if (v8)
              {
                goto LABEL_72;
              }

              OUTLINED_FUNCTION_45_2();
              if (v9)
              {
                goto LABEL_73;
              }
            }
          }

          goto LABEL_62;
        }

        goto LABEL_72;
      }

      goto LABEL_82;
    }

    if (v7 != 45)
    {
      if (v5)
      {
        v0 = 0;
        if (result)
        {
          while (1)
          {
            v13 = *result - 48;
            if (v13 > 9)
            {
              goto LABEL_72;
            }

            if (!is_mul_ok(v0, 0xAuLL))
            {
              goto LABEL_72;
            }

            v8 = __CFADD__(10 * v0, v13);
            v0 = 10 * v0 + v13;
            if (v8)
            {
              goto LABEL_72;
            }

            ++result;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_62;
      }

LABEL_72:
      v0 = 0;
      v11 = 1;
      goto LABEL_73;
    }

    if (v5 >= 1)
    {
      if (v5 != 1)
      {
        v0 = 0;
        if (result)
        {
          while (1)
          {
            OUTLINED_FUNCTION_10_5();
            if (!v9 && v8)
            {
              goto LABEL_72;
            }

            OUTLINED_FUNCTION_46_2();
            if (!v9)
            {
              goto LABEL_72;
            }

            v8 = 10 * v0 >= v10;
            v0 = 10 * v0 - v10;
            if (!v8)
            {
              goto LABEL_72;
            }

            OUTLINED_FUNCTION_45_2();
            if (v9)
            {
              goto LABEL_73;
            }
          }
        }

LABEL_62:
        v11 = 0;
LABEL_73:
        v14 = v11;
        goto LABEL_74;
      }

      goto LABEL_72;
    }

    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  if (result != 43)
  {
    if (result != 45)
    {
      if (v4)
      {
        v0 = 0;
        while (1)
        {
          OUTLINED_FUNCTION_10_5();
          if (!v9 && v8)
          {
            break;
          }

          OUTLINED_FUNCTION_46_2();
          if (!v9)
          {
            break;
          }

          OUTLINED_FUNCTION_37_2();
          if (v8)
          {
            break;
          }

          OUTLINED_FUNCTION_45_2();
          if (v9)
          {
            goto LABEL_73;
          }
        }
      }

      goto LABEL_72;
    }

    if (v4)
    {
      if (v4 != 1)
      {
        OUTLINED_FUNCTION_54_1();
        while (1)
        {
          OUTLINED_FUNCTION_10_5();
          if (!v9 && v8)
          {
            break;
          }

          OUTLINED_FUNCTION_46_2();
          if (!v9)
          {
            break;
          }

          v8 = 10 * v0 >= v12;
          v0 = 10 * v0 - v12;
          if (!v8)
          {
            break;
          }

          OUTLINED_FUNCTION_45_2();
          if (v9)
          {
            goto LABEL_73;
          }
        }
      }

      goto LABEL_72;
    }

    goto LABEL_81;
  }

  if (v4)
  {
    if (v4 != 1)
    {
      OUTLINED_FUNCTION_54_1();
      while (1)
      {
        OUTLINED_FUNCTION_10_5();
        if (!v9 && v8)
        {
          break;
        }

        OUTLINED_FUNCTION_46_2();
        if (!v9)
        {
          break;
        }

        OUTLINED_FUNCTION_37_2();
        if (v8)
        {
          break;
        }

        OUTLINED_FUNCTION_45_2();
        if (v9)
        {
          goto LABEL_73;
        }
      }
    }

    goto LABEL_72;
  }

LABEL_83:
  __break(1u);
  return result;
}

id UMUserPersona.current()@<X0>(void *a1@<X8>)
{
  result = [objc_opt_self() currentPersona];
  v3 = result;
  if (result)
  {
    result = type metadata accessor for UMUserPersona();
    v4 = &protocol witness table for UMUserPersona;
  }

  else
  {
    v4 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = result;
  a1[4] = v4;
  return result;
}

id @nonobjc UMUserPersona.restorePersona(withSavedPersonaContext:)(uint64_t a1)
{
  v2 = [v1 restorePersonaWithSavedPersonaContext_];

  return v2;
}

id @nonobjc UMUserPersona.generateAndRestorePersonaContext(withPersonaUniqueString:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = MEMORY[0x223DE2070]();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 generateAndRestorePersonaContextWithPersonaUniqueString_];

  return v4;
}

id @nonobjc UMUserPersona.copyCurrentPersonaContext()()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v1 = [v0 copyCurrentPersonaContextWithError_];
  if (v1)
  {
    v2 = v6[0];
  }

  else
  {
    v3 = v6[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v4 = *MEMORY[0x277D85DE8];
  return v1;
}

Swift::Int AdoptPersonaExecutionStrategy.AdoptPersonaExecutionStrategyError.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x223DE2980](a1 & 1);
  return Hasher._finalize()();
}

void $defer #1 <A>() in AdoptPersonaExecutionStrategy.executeAsUser<A>(_:)(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);

  v5 = *(type metadata accessor for AdoptPersonaExecutionStrategy(0) + 20);
  v6 = a2;
  oslog = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136315394;
    v10 = [v6 description];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v22);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2080;
    v15 = [objc_opt_self() currentPersona];
    if (v15)
    {
      v16 = v15;
      v17 = UMUserPersona.logDescription.getter();
      v19 = v18;
    }

    else
    {
      v19 = 0xE300000000000000;
      v17 = 7104878;
    }

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v22);

    *(v8 + 14) = v20;
    _os_log_impl(&dword_223515000, oslog, v7, "Restored persona context %s, executing as %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE38F0](v9, -1, -1);
    MEMORY[0x223DE38F0](v8, -1, -1);
  }
}

uint64_t UMUserPersona.logDescription.getter()
{
  _StringGuts.grow(_:)(35);
  v1 = outlined bridged method (pb) of @objc UMUserPersona.userPersonaUniqueString.getter(v0, &selRef_userPersonaUniqueString);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v1 = 0x3E6C696E3CLL;
    v3 = 0xE500000000000000;
  }

  MEMORY[0x223DE2180](v1, v3);

  MEMORY[0x223DE2180](10272, 0xE200000000000000);
  v4 = outlined bridged method (pb) of @objc UMUserPersona.userPersonaUniqueString.getter(v0, &selRef_userPersonaNickName);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v4 = 0x3E6C696E3CLL;
    v6 = 0xE500000000000000;
  }

  MEMORY[0x223DE2180](v4, v6);

  MEMORY[0x223DE2180](0x203A65707974202CLL, 0xE800000000000000);
  [v0 userPersonaType];
  type metadata accessor for UMUserPersonaType(0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x223DE2180](0x203A444955202CLL, 0xE700000000000000);
  [v0 uid];
  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x223DE2180](v7);

  MEMORY[0x223DE2180](0x203A444947202CLL, 0xE700000000000000);
  [v0 gid];
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x223DE2180](v8);

  MEMORY[0x223DE2180](41, 0xE100000000000000);
  return 0;
}

uint64_t MessageCenterEndpointPayloadProducer.init(capabilityProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(type metadata accessor for MessageCenterEndpointPayloadProducer(0) + 20);
  if (one-time initialization token for messageCenterActor != -1)
  {
    OUTLINED_FUNCTION_14_4();
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.messageCenterActor);
  OUTLINED_FUNCTION_13_4(v7);
  result = (*(v8 + 16))(&a3[v6]);
  *a3 = a1;
  *(a3 + 1) = a2;
  return result;
}

SiriNetwork::MessageCenterEndpointPayload __swiftcall MessageCenterEndpointPayloadProducer.payload()()
{
  v2 = v1;
  v3 = v0;
  v4 = *v1;
  if (*v1)
  {
    v5 = *(v1 + 8);
    v6 = *(v2 + 8);

    v8 = v4(v7);
    outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v4);
  }

  else
  {
    v9 = MEMORY[0x223DE2070](0xD000000000000024, 0x80000002235F80E0);
    v8 = MGGetBoolAnswer();
  }

  v10 = v2 + *(type metadata accessor for MessageCenterEndpointPayloadProducer(0) + 20);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = OUTLINED_FUNCTION_55();
    v14 = OUTLINED_FUNCTION_54();
    *v13 = 136315138;
    v23 = v14;
    _StringGuts.grow(_:)(28);

    OUTLINED_FUNCTION_60_2();
    v21 = v16;
    v22 = v15;
    if (v8)
    {
      v17 = 1702195828;
    }

    else
    {
      v17 = 0x65736C6166;
    }

    if (v8)
    {
      v18 = 0xE400000000000000;
    }

    else
    {
      v18 = 0xE500000000000000;
    }

    MEMORY[0x223DE2180](v17, v18);

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v23);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_223515000, v11, v12, "Producing endpoint payload %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_11();
  }

  *v3 = v8 & 1;
  return result;
}

uint64_t specialized Sequence.first(where:)@<X0>(uint64_t (*a1)(__int128 *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = a2 + 56;
  v8 = 1 << *(a2 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a2 + 56);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      outlined init with copy of MessageCenterEndpoint(*(a2 + 48) + 40 * (__clz(__rbit64(v10)) | (v14 << 6)), v20);
      v17 = v20[0];
      v18 = v20[1];
      v19 = v21;
      v15 = a1(&v17);
      if (v3)
      {
        outlined destroy of MessageCenterEndpoint(&v17);
      }

      if (v15)
      {
        break;
      }

      v10 &= v10 - 1;
      result = outlined destroy of MessageCenterEndpoint(&v17);
      v13 = v14;
      if (!v10)
      {
        goto LABEL_5;
      }
    }

    v16 = v18;
    *a3 = v17;
    *(a3 + 16) = v16;
    *(a3 + 32) = v19;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {

        *(a3 + 32) = 0;
        *a3 = 0u;
        *(a3 + 16) = 0u;
        return result;
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
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

unint64_t specialized Collection.dropFirst(_:)(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = String.index(_:offsetBy:limitedBy:)();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = String.subscript.getter();

      return v7;
    }
  }

  __break(1u);
  return result;
}

void (*specialized Dictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = specialized Dictionary._Variant.subscript.modify(v6, a2, a3);
  return Dictionary.subscript.modifyspecialized ;
}

void Dictionary.subscript.modifyspecialized (uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  v3 = OUTLINED_FUNCTION_34_3();
  v4(v3);

  free(v1);
}

uint64_t instantiation function for generic protocol witness table for NWEndpoint(uint64_t a1)
{
  result = lazy protocol witness table accessor for type NWEndpoint and conformance NWEndpoint(&lazy protocol witness table cache variable for type NWEndpoint and conformance NWEndpoint, MEMORY[0x277CD8B10]);
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MessageCenterEndpointPayload(unsigned __int8 *a1, unsigned int a2)
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
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MessageCenterEndpointPayload(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didFindEndpoint:)()
{
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_21();
  v6 = OUTLINED_FUNCTION_28(v1, v2, v3, v4, v5);
  v7 = *(v6 + 8);
  v21 = v6 + 8;
  OUTLINED_FUNCTION_57_0();
  v22 = v8 + *v8;
  v10 = *(v9 + 4);
  v11 = swift_task_alloc();
  *(v0 + 16) = v11;
  *v11 = v0;
  OUTLINED_FUNCTION_22_4(v11);
  OUTLINED_FUNCTION_26_3();

  return v17(v12, v13, v14, v15, v16, v17, v18, v19, v21, v22);
}

uint64_t dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didLoseEndpoint:)()
{
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_21();
  v6 = OUTLINED_FUNCTION_28(v1, v2, v3, v4, v5);
  v7 = *(v6 + 16);
  v21 = v6 + 16;
  OUTLINED_FUNCTION_57_0();
  v22 = v8 + *v8;
  v10 = *(v9 + 4);
  v11 = swift_task_alloc();
  *(v0 + 16) = v11;
  *v11 = v0;
  OUTLINED_FUNCTION_22_4(v11);
  OUTLINED_FUNCTION_26_3();

  return v17(v12, v13, v14, v15, v16, v17, v18, v19, v21, v22);
}

uint64_t dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didUpdateEndpoint:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 24);
  OUTLINED_FUNCTION_57_0();
  v19 = (v14 + *v14);
  v16 = *(v15 + 4);
  v17 = swift_task_alloc();
  *(v6 + 16) = v17;
  *v17 = v6;
  v17[1] = dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didLoseEndpoint:);

  return v19(a1, a2, a3, a4, a5, a6);
}

uint64_t type metadata completion function for MessageCenterEndpointBrowser()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for AdoptPersonaExecutionStrategy(319);
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void type metadata completion function for MessageCenterEndpointPayloadProducer()
{
  type metadata accessor for (())?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Logger();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for (())?()
{
  if (!lazy cache variable for type metadata for (())?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_syycMd, &_syycMR);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (())?);
    }
  }
}

void type metadata completion function for AdoptPersonaExecutionStrategy()
{
  type metadata accessor for Logger();
  if (v0 <= 0x3F)
  {
    type metadata accessor for (())?();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *storeEnumTagSinglePayload for MessageCenterEndpointPayload.CodingKeys(_BYTE *result, int a2, int a3)
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

uint64_t instantiation function for generic protocol witness table for MessageCenterEndpointBrowser(uint64_t a1)
{
  result = lazy protocol witness table accessor for type NWEndpoint and conformance NWEndpoint(&lazy protocol witness table cache variable for type MessageCenterEndpointBrowser and conformance MessageCenterEndpointBrowser, type metadata accessor for MessageCenterEndpointBrowser);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type NWEndpoint and conformance NWEndpoint(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type AdoptPersonaExecutionStrategy.AdoptPersonaExecutionStrategyError and conformance AdoptPersonaExecutionStrategy.AdoptPersonaExecutionStrategyError()
{
  result = lazy protocol witness table cache variable for type AdoptPersonaExecutionStrategy.AdoptPersonaExecutionStrategyError and conformance AdoptPersonaExecutionStrategy.AdoptPersonaExecutionStrategyError;
  if (!lazy protocol witness table cache variable for type AdoptPersonaExecutionStrategy.AdoptPersonaExecutionStrategyError and conformance AdoptPersonaExecutionStrategy.AdoptPersonaExecutionStrategyError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AdoptPersonaExecutionStrategy.AdoptPersonaExecutionStrategyError and conformance AdoptPersonaExecutionStrategy.AdoptPersonaExecutionStrategyError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AdoptPersonaExecutionStrategy.AdoptPersonaExecutionStrategyError and conformance AdoptPersonaExecutionStrategy.AdoptPersonaExecutionStrategyError;
  if (!lazy protocol witness table cache variable for type AdoptPersonaExecutionStrategy.AdoptPersonaExecutionStrategyError and conformance AdoptPersonaExecutionStrategy.AdoptPersonaExecutionStrategyError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AdoptPersonaExecutionStrategy.AdoptPersonaExecutionStrategyError and conformance AdoptPersonaExecutionStrategy.AdoptPersonaExecutionStrategyError);
  }

  return result;
}

uint64_t outlined init with copy of AdoptPersonaExecutionStrategy(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdoptPersonaExecutionStrategy(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AdoptPersonaExecutionStrategy(uint64_t a1)
{
  v2 = type metadata accessor for AdoptPersonaExecutionStrategy(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unsigned __int8 *specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, int64_t a3)
{
  v69 = a1;
  v70 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = static String._copying(_:)();
    v40 = v39;

    v7 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v22 = v8 - 1;
        if (v8 != 1)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v14 = 0;
            v26 = result + 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_129;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              if (!is_mul_ok(v14, a3))
              {
                goto LABEL_128;
              }

              v29 = v14 * a3;
              v30 = v27 + v28;
              v21 = __CFADD__(v29, v30);
              v14 = v29 + v30;
              if (v21)
              {
                goto LABEL_128;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_47:
            v18 = v14;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v18 = 0;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            if (!is_mul_ok(v34, a3))
            {
              goto LABEL_128;
            }

            v37 = v34 * a3;
            v38 = v35 + v36;
            v21 = __CFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_128;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_129;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            if (!is_mul_ok(v14, a3))
            {
              goto LABEL_128;
            }

            v19 = v14 * a3;
            v20 = v16 + v17;
            v21 = v19 >= v20;
            v14 = v19 - v20;
            if (!v21)
            {
              goto LABEL_128;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v18 = 0;
LABEL_129:

        return v18;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v7) & 0xF;
  v69 = v6;
  v70 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v69;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          if (!is_mul_ok(v43, a3))
          {
            goto LABEL_128;
          }

          v67 = v43 * a3;
          v68 = v65 + v66;
          v21 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v69 + 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          if (!is_mul_ok(v43, a3))
          {
            goto LABEL_128;
          }

          v50 = v43 * a3;
          v51 = v48 + v49;
          v21 = v50 >= v51;
          v43 = v50 - v51;
          if (!v21)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v69 + 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        if (!is_mul_ok(v43, a3))
        {
          goto LABEL_128;
        }

        v59 = v43 * a3;
        v60 = v57 + v58;
        v21 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v18 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t static String._copying(_:)()
{
  v0 = specialized Collection.subscript.getter();
  v4 = static String._copying(_:)(v0, v1, v2, v3);

  return v4;
}

uint64_t static String._copying(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v9, 0);
  v12 = specialized Sequence._copySequenceContents(initializing:)(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x223DE21C0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unsigned __int8 *specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v82 = a1;
  v83 = a2;
  v84 = a3;
  v85 = a4;
  lazy protocol witness table accessor for type Substring and conformance Substring();

  result = String.init<A>(_:)();
  v8 = result;
  v9 = v7;
  if ((v7 & 0x1000000000000000) != 0)
  {
    OUTLINED_FUNCTION_32();
    v8 = static String._copying(_:)();
    v46 = v45;

    v9 = v46;
    if ((v46 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      OUTLINED_FUNCTION_32();
      result = _StringObject.sharedUTF8.getter();
    }

    v11 = *result;
    if (v11 == 43)
    {
      if (v10 >= 1)
      {
        if (v10 != 1)
        {
          OUTLINED_FUNCTION_41_3();
          if (v27 ^ v28 | v26)
          {
            v31 = 65;
          }

          if (!(v27 ^ v28 | v26))
          {
            v32 = 58;
          }

          if (v29)
          {
            v19 = 0;
            v33 = (v29 + 1);
            do
            {
              v34 = *v33;
              if (v34 < 0x30 || v34 >= v32)
              {
                if (v34 < 0x41 || v34 >= v31)
                {
                  OUTLINED_FUNCTION_39_1();
                  if (!v24 || v34 >= v36)
                  {
                    goto LABEL_142;
                  }

                  v35 = -87;
                }

                else
                {
                  v35 = -55;
                }
              }

              else
              {
                v35 = -48;
              }

              v37 = v19 * a5;
              if ((v19 * a5) >> 64 != (v19 * a5) >> 63)
              {
                goto LABEL_141;
              }

              v19 = v37 + (v34 + v35);
              if (__OFADD__(v37, (v34 + v35)))
              {
                goto LABEL_141;
              }

              ++v33;
              --v30;
            }

            while (v30);
LABEL_52:
            v8 = v19;
            goto LABEL_142;
          }

          goto LABEL_72;
        }

LABEL_141:
        v8 = 0;
        goto LABEL_142;
      }

      goto LABEL_146;
    }

    if (v11 != 45)
    {
      if (v10)
      {
        v38 = a5 + 48;
        v39 = a5 + 55;
        v40 = a5 + 87;
        if (a5 > 10)
        {
          v38 = 58;
        }

        else
        {
          v40 = 97;
          v39 = 65;
        }

        if (result)
        {
          v41 = 0;
          do
          {
            v42 = *result;
            if (v42 < 0x30 || v42 >= v38)
            {
              if (v42 < 0x41 || v42 >= v39)
              {
                v8 = 0;
                if (v42 < 0x61 || v42 >= v40)
                {
                  goto LABEL_142;
                }

                v43 = -87;
              }

              else
              {
                v43 = -55;
              }
            }

            else
            {
              v43 = -48;
            }

            v44 = v41 * a5;
            if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
            {
              goto LABEL_141;
            }

            v41 = v44 + (v42 + v43);
            if (__OFADD__(v44, (v42 + v43)))
            {
              goto LABEL_141;
            }

            ++result;
            --v10;
          }

          while (v10);
          v8 = v44 + (v42 + v43);
          goto LABEL_142;
        }

        goto LABEL_72;
      }

      goto LABEL_141;
    }

    if (v10 >= 1)
    {
      if (v10 != 1)
      {
        OUTLINED_FUNCTION_41_3();
        if (v13 ^ v14 | v12)
        {
          v17 = 65;
        }

        if (!(v13 ^ v14 | v12))
        {
          v18 = 58;
        }

        if (v15)
        {
          v19 = 0;
          v20 = (v15 + 1);
          while (1)
          {
            v21 = *v20;
            if (v21 < 0x30 || v21 >= v18)
            {
              if (v21 < 0x41 || v21 >= v17)
              {
                OUTLINED_FUNCTION_39_1();
                if (!v24 || v21 >= v23)
                {
                  goto LABEL_142;
                }

                v22 = -87;
              }

              else
              {
                v22 = -55;
              }
            }

            else
            {
              v22 = -48;
            }

            v25 = v19 * a5;
            if ((v19 * a5) >> 64 != (v19 * a5) >> 63)
            {
              goto LABEL_141;
            }

            v19 = v25 - (v21 + v22);
            if (__OFSUB__(v25, (v21 + v22)))
            {
              goto LABEL_141;
            }

            ++v20;
            if (!--v16)
            {
              goto LABEL_52;
            }
          }
        }

LABEL_72:
        v8 = 0;
LABEL_142:

        return v8;
      }

      goto LABEL_141;
    }

    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  v47 = HIBYTE(v9) & 0xF;
  v82 = v8;
  v83 = v9 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v47)
      {
        OUTLINED_FUNCTION_5_15();
        if (v72 ^ v73 | v71)
        {
          v75 = 65;
        }

        if (!(v72 ^ v73 | v71))
        {
          v76 = 58;
        }

        v77 = &v82;
        while (1)
        {
          v78 = *v77;
          if (v78 < 0x30 || v78 >= v76)
          {
            if (v78 < 0x41 || v78 >= v75)
            {
              OUTLINED_FUNCTION_39_1();
              if (!v24 || v78 >= v80)
              {
                goto LABEL_142;
              }

              v79 = -87;
            }

            else
            {
              v79 = -55;
            }
          }

          else
          {
            v79 = -48;
          }

          v81 = v52 * a5;
          if ((v52 * a5) >> 64 != (v52 * a5) >> 63)
          {
            goto LABEL_141;
          }

          v52 = v81 + (v78 + v79);
          if (__OFADD__(v81, (v78 + v79)))
          {
            goto LABEL_141;
          }

          v77 = (v77 + 1);
          if (!--v74)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    if (v47)
    {
      if (v47 != 1)
      {
        OUTLINED_FUNCTION_5_15();
        if (v49 ^ v50 | v48)
        {
          v53 = 65;
        }

        if (!(v49 ^ v50 | v48))
        {
          v54 = 58;
        }

        v55 = &v82 + 1;
        while (1)
        {
          v56 = *v55;
          if (v56 < 0x30 || v56 >= v54)
          {
            if (v56 < 0x41 || v56 >= v53)
            {
              OUTLINED_FUNCTION_39_1();
              if (!v24 || v56 >= v58)
              {
                goto LABEL_142;
              }

              v57 = -87;
            }

            else
            {
              v57 = -55;
            }
          }

          else
          {
            v57 = -48;
          }

          v59 = v52 * a5;
          if ((v52 * a5) >> 64 != (v52 * a5) >> 63)
          {
            goto LABEL_141;
          }

          v52 = v59 - (v56 + v57);
          if (__OFSUB__(v59, (v56 + v57)))
          {
            goto LABEL_141;
          }

          ++v55;
          if (!--v51)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    goto LABEL_145;
  }

  if (v47)
  {
    if (v47 != 1)
    {
      OUTLINED_FUNCTION_5_15();
      if (v61 ^ v62 | v60)
      {
        v64 = 65;
      }

      if (!(v61 ^ v62 | v60))
      {
        v65 = 58;
      }

      v66 = &v82 + 1;
      do
      {
        v67 = *v66;
        if (v67 < 0x30 || v67 >= v65)
        {
          if (v67 < 0x41 || v67 >= v64)
          {
            OUTLINED_FUNCTION_39_1();
            if (!v24 || v67 >= v69)
            {
              goto LABEL_142;
            }

            v68 = -87;
          }

          else
          {
            v68 = -55;
          }
        }

        else
        {
          v68 = -48;
        }

        v70 = v52 * a5;
        if ((v52 * a5) >> 64 != (v52 * a5) >> 63)
        {
          goto LABEL_141;
        }

        v52 = v70 + (v67 + v68);
        if (__OFADD__(v70, (v67 + v68)))
        {
          goto LABEL_141;
        }

        ++v66;
        --v63;
      }

      while (v63);
LABEL_140:
      v8 = v52;
      goto LABEL_142;
    }

    goto LABEL_141;
  }

LABEL_147:
  __break(1u);
  return result;
}