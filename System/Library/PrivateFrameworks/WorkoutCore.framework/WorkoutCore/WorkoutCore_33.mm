uint64_t QueryClient.remoteProxy(handler:errorHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v14 = *(v23 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v23);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = *&v4[OBJC_IVAR____TtC11WorkoutCore11QueryClient_serverQueue];
  v18 = swift_allocObject();
  v18[2] = v4;
  v18[3] = a1;
  v18[4] = a2;
  v18[5] = a3;
  v18[6] = a4;
  aBlock[4] = partial apply for closure #1 in QueryClient.remoteProxy(handler:errorHandler:);
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_477;
  v19 = _Block_copy(aBlock);
  v20 = v4;

  static DispatchQoS.unspecified.getter();
  v24 = MEMORY[0x277D84F90];
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_3(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v17, v13, v19);
  _Block_release(v19);
  (*(v10 + 8))(v13, v9);
  (*(v14 + 8))(v17, v23);
}

void closure #1 in QueryClient.remoteProxy(handler:errorHandler:)(uint64_t a1, uint64_t (*a2)(void *a1), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + OBJC_IVAR____TtC11WorkoutCore11QueryClient_pluginProxyProvider);
  if (v5)
  {
    v16 = a2;
    v17 = a3;
    v12 = MEMORY[0x277D85DD0];
    v13 = 1107296256;
    v14 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> ();
    v15 = &block_descriptor_480;
    v8 = _Block_copy(&v12);
    v9 = v5;

    v10 = swift_allocObject();
    *(v10 + 16) = a4;
    *(v10 + 24) = a5;
    v16 = partial apply for closure #1 in closure #1 in QueryClient.remoteProxy(handler:errorHandler:);
    v17 = v10;
    v12 = MEMORY[0x277D85DD0];
    v13 = 1107296256;
    v14 = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
    v15 = &block_descriptor_486;
    v11 = _Block_copy(&v12);

    [v9 fetchPluginProxyWithHandler:v8 errorHandler:v11];
    _Block_release(v11);
    _Block_release(v8);
  }
}

uint64_t closure #1 in QueryClient.remoteSynchronousProxy(handler:errorHandler:)(void *a1, uint64_t (*a2)(void *))
{
  if (one-time initialization token for core != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static WOLog.core);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = Error.localizedDescription.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_20AEA4000, v6, v7, "Failed to fetch plugin proxy with error %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x20F2E9420](v9, -1, -1);
    MEMORY[0x20F2E9420](v8, -1, -1);
  }

  return a2(a1);
}

id QueryClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id QueryClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QueryClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *protocol witness for QueryClientProtocol.fetchConfigurationSynchronously(uuid:) in conformance QueryClient(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *v6;
  v11 = swift_allocObject();
  *(v11 + 24) = 0;
  *(v11 + 16) = 0;
  v17[2] = v11;
  v17[3] = a1;

  QueryClient.remoteSynchronousProxy(handler:errorHandler:)(a5, v17, a6, v11);

  swift_beginAccess();
  v12 = *(v11 + 16);
  v13 = *(v11 + 24);
  v14 = v12;
  v15 = v13;

  return v12;
}

uint64_t protocol witness for QueryClientProtocol.fetchConfigurations(activityType:completion:) in conformance QueryClient(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v9 = swift_allocObject();
  v9[2] = closure #1 in QueryClient.fetchConfigurations(activityType:completion:)partial apply;
  v9[3] = v8;
  v9[4] = v7;
  v10 = swift_allocObject();
  *(v10 + 16) = closure #1 in QueryClient.fetchConfigurations(activityType:completion:)partial apply;
  *(v10 + 24) = v8;
  swift_retain_n();
  v11 = a1;

  v12 = v7;
  QueryClient.remoteProxy(handler:errorHandler:)(closure #1 in QueryClient.fetchConfigurations(completion:)partial apply, v9, closure #2 in QueryClient.fetchConfigurations(completion:)partial apply, v10);
}

uint64_t protocol witness for QueryClientProtocol.save(_:completion:) in conformance QueryClient(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a1;
  v8[5] = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  swift_retain_n();
  v10 = a1;
  v11 = v7;
  QueryClient.remoteProxy(handler:errorHandler:)(closure #1 in QueryClient.save(_:completion:)partial apply, v8, closure #2 in QueryClient.save(_:completion:)partial apply, v9);
}

uint64_t protocol witness for QueryClientProtocol.fetchConfiguration(uuid:completion:) in conformance QueryClient(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22 = a9;
  v23 = a8;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = *v9;
  (*(v14 + 16))(&v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v13);
  v17 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  (*(v14 + 32))(v18 + v17, &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
  *(v18 + ((v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v16;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  swift_retain_n();
  v20 = v16;
  QueryClient.remoteProxy(handler:errorHandler:)(v23, v18, v22, v19);
}

uint64_t protocol witness for QueryClientProtocol.addManagedConfigurations(managedConfigurations:completion:) in conformance QueryClient(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = *v9;
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a1;
  v15[5] = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  swift_retain_n();

  v17 = v14;
  QueryClient.remoteProxy(handler:errorHandler:)(a8, v15, a9, v16);
}

uint64_t protocol witness for QueryClientProtocol.updateQueriedExternalProvider(_:permissionState:completion:) in conformance QueryClient(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v11 = *v5;
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = a5;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  *(v12 + 48) = a3 & 1;
  *(v12 + 56) = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  *(v13 + 24) = a5;
  swift_retain_n();

  v14 = v11;
  QueryClient.remoteProxy(handler:errorHandler:)(closure #1 in QueryClient.updateQueriedExternalProvider(_:permissionState:completion:)partial apply, v12, closure #2 in QueryClient.updateQueriedExternalProvider(_:permissionState:completion:)partial apply, v13);
}

uint64_t protocol witness for QueryClientProtocol.fetchConfigurations(completion:) in conformance QueryClient(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *v8;
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  swift_retain_n();
  v16 = v13;
  QueryClient.remoteProxy(handler:errorHandler:)(a7, v14, a8, v15);
}

uint64_t protocol witness for QueryClientProtocol.fetchManagedConfigurations(sourceIdentifier:completion:) in conformance QueryClient(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = *v10;
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a1;
  v16[5] = a2;
  v16[6] = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  swift_retain_n();

  v18 = v15;
  QueryClient.remoteProxy(handler:errorHandler:)(a9, v16, a10, v17);
}

NSXPCInterface_optional __swiftcall QueryClient.exportedInterface()()
{
  v0 = 0;
  result.value.super.isa = v0;
  return result;
}

NSXPCInterface_optional __swiftcall QueryClient.remoteInterface()()
{
  v0 = WOWorkoutServerInterface();

  v1 = v0;
  result.value.super.isa = v1;
  result.is_nil = v2;
  return result;
}

BOOL specialized static QueriedExternalProvider.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  swift_beginAccess();
  v5 = *(a2 + 16);
  swift_beginAccess();
  v6 = *(v4 + 32);
  v7 = *(v4 + 40);
  swift_beginAccess();
  v8 = v6 == *(v5 + 32) && v7 == *(v5 + 40);
  if (v8 || (v9 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v9 & 1) != 0))
  {
    swift_beginAccess();
    v11 = *(a1 + 24);
    swift_beginAccess();
    return v11 == *(a2 + 24);
  }

  return result;
}

uint64_t partial apply for closure #2 in QueryClient.fetchConfiguration(uuid:completion:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(0, a1);
}

uint64_t objectdestroy_5Tm_0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t partial apply for closure #2 in QueryClient.fetchConfigurations(completion:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(MEMORY[0x277D84F90], a1);
}

uint64_t specialized QueryClient.decodePersistences(data:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for NSFastEnumerationIterator();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  if (a2 >> 60 == 15)
  {
    return v10;
  }

  v22 = v7;
  v11 = objc_allocWithZone(MEMORY[0x277D7E7E0]);
  outlined copy of Data._Representation(a1, a2);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v13 = [v11 initWithData_];

  if (!v13)
  {
    outlined consume of Data?(a1, a2);
    return 0;
  }

  v14 = [v13 persistences];
  if (!v14)
  {
    outlined consume of Data?(a1, a2);

    return 0;
  }

  v15 = MEMORY[0x277D84F90];
  v27 = MEMORY[0x277D84F90];
  v21 = v14;
  NSArray.makeIterator()();
  NSFastEnumerationIterator.next()();
  if (v26)
  {
    v15 = MEMORY[0x277D84F90];
    do
    {
      outlined init with take of Any(&v25, &v24);
      type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for WOHealthBridgeProtoPersistence, 0x277D7E7D8);
      if (swift_dynamicCast())
      {
        v16 = v23;
        v17 = objc_opt_self();
        v20 = v16;
        v19 = [v17 persistenceFromProto_];
        MEMORY[0x20F2E6F30](v19);
        if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v15 = v27;
      }

      NSFastEnumerationIterator.next()();
    }

    while (v26);
  }

  (*(v5 + 8))(v9, v22);
  outlined consume of Data?(a1, a2);

  return v15;
}

void specialized closure #1 in QueryClient.handleRetrievedPersistences(_:)(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a1;
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static WOLog.core);
    v5 = a1;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v22 = v9;
      *v8 = 136315138;
      v10 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v11 = String.init<A>(describing:)();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v22);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_20AEA4000, v6, v7, "Failed to update configurations with proto: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x20F2E9420](v9, -1, -1);
      MEMORY[0x20F2E9420](v8, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static WOLog.core);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      swift_beginAccess();
      v19 = *(a2 + 16);
      if (v19 >> 62)
      {
        if (v19 < 0)
        {
          v21 = *(a2 + 16);
        }

        v20 = __CocoaSet.count.getter();
      }

      else
      {
        v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v18 + 4) = v20;

      _os_log_impl(&dword_20AEA4000, v16, v17, "Successfully updated %ld configurations with proto", v18, 0xCu);
      MEMORY[0x20F2E9420](v18, -1, -1);
    }

    else
    {
    }
  }
}

void specialized QueryClient.connectionInvalidated()()
{
  if (one-time initialization token for core != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static WOLog.core);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_20AEA4000, oslog, v1, "healthd connection invalidated", v2, 2u);
    MEMORY[0x20F2E9420](v2, -1, -1);
  }
}

unint64_t lazy protocol witness table accessor for type QueryClient.QueryClientError and conformance QueryClient.QueryClientError()
{
  result = lazy protocol witness table cache variable for type QueryClient.QueryClientError and conformance QueryClient.QueryClientError;
  if (!lazy protocol witness table cache variable for type QueryClient.QueryClientError and conformance QueryClient.QueryClientError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type QueryClient.QueryClientError and conformance QueryClient.QueryClientError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type QueryClient.QueryClientError and conformance QueryClient.QueryClientError;
  if (!lazy protocol witness table cache variable for type QueryClient.QueryClientError and conformance QueryClient.QueryClientError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type QueryClient.QueryClientError and conformance QueryClient.QueryClientError);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for QueryClient.QueryClientError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for QueryClient.QueryClientError(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t partial apply for closure #2 in QueryClient.savePersistences(_:completion:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(0, a1);
}

uint64_t objectdestroy_91Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t objectdestroy_61Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t partial apply for closure #2 in QueryClient.fetchManagedConfigurationsByProvider(completion:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11WorkoutCore23QueriedExternalProviderC_SayAC0C13ConfigurationCGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v4(v5, a1);
}

uint64_t objectdestroy_37Tm()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_11Tm()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroyTm_4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t partial apply for closure #1 in QueryClient.fetchConfiguration(uuid:completion:)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t))
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);

  return a2(a1, v7, v8, v2 + v5, v6);
}

uint64_t objectdestroy_49Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unint64_t lazy protocol witness table accessor for type WOPersistence and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type WOPersistence and conformance NSObject;
  if (!lazy protocol witness table cache variable for type WOPersistence and conformance NSObject)
  {
    type metadata accessor for NSNumber(255, &lazy cache variable for type metadata for WOPersistence, 0x277D7E7E8);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WOPersistence and conformance NSObject);
  }

  return result;
}

uint64_t objectdestroy_323Tm()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_395Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in QueryClient.fetchManagedConfigurations(sourceIdentifier:completion:)()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[4];
  v6 = QueryClient.handleRetrievedPersistences(_:)(v3);
  v2(v6, v4);
}

uint64_t objectdestroy_26Tm_0()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TrackAlerts.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TrackAlerts.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance TrackAlerts.CodingKeys@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance TrackAlerts.CodingKeys, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TrackAlerts.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance TrackAlerts.CodingKeys, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TrackAlerts.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TrackAlerts.CodingKeys and conformance TrackAlerts.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TrackAlerts.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TrackAlerts.CodingKeys and conformance TrackAlerts.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TrackAlerts.lapChangeEnabled.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t TrackAlerts.__allocating_init(lapChangeEnabled:)(char a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t TrackAlerts.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  TrackAlerts.init(from:)(a1);
  return v2;
}

uint64_t TrackAlerts.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore11TrackAlertsC10CodingKeys33_CFCB4C898E006DD529324293A4CC8123LLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore11TrackAlertsC10CodingKeys33_CFCB4C898E006DD529324293A4CC8123LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TrackAlerts.CodingKeys and conformance TrackAlerts.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    type metadata accessor for TrackAlerts();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v5 + 8))(v8, v4);
    *(v1 + 16) = v11 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

unint64_t lazy protocol witness table accessor for type TrackAlerts.CodingKeys and conformance TrackAlerts.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TrackAlerts.CodingKeys and conformance TrackAlerts.CodingKeys;
  if (!lazy protocol witness table cache variable for type TrackAlerts.CodingKeys and conformance TrackAlerts.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrackAlerts.CodingKeys and conformance TrackAlerts.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TrackAlerts.CodingKeys and conformance TrackAlerts.CodingKeys;
  if (!lazy protocol witness table cache variable for type TrackAlerts.CodingKeys and conformance TrackAlerts.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrackAlerts.CodingKeys and conformance TrackAlerts.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TrackAlerts.CodingKeys and conformance TrackAlerts.CodingKeys;
  if (!lazy protocol witness table cache variable for type TrackAlerts.CodingKeys and conformance TrackAlerts.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrackAlerts.CodingKeys and conformance TrackAlerts.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TrackAlerts.CodingKeys and conformance TrackAlerts.CodingKeys;
  if (!lazy protocol witness table cache variable for type TrackAlerts.CodingKeys and conformance TrackAlerts.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrackAlerts.CodingKeys and conformance TrackAlerts.CodingKeys);
  }

  return result;
}

uint64_t TrackAlerts.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore11TrackAlertsC10CodingKeys33_CFCB4C898E006DD529324293A4CC8123LLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore11TrackAlertsC10CodingKeys33_CFCB4C898E006DD529324293A4CC8123LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TrackAlerts.CodingKeys and conformance TrackAlerts.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  swift_beginAccess();
  v10 = *(v2 + 16);
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v5 + 8))(v8, v4);
}

uint64_t static TrackAlerts.defaultTrackAlerts()()
{
  type metadata accessor for TrackAlerts();
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

Swift::Int TrackAlerts.hashValue.getter()
{
  Hasher.init(_seed:)();
  swift_beginAccess();
  Hasher._combine(_:)(*(v0 + 16));
  return Hasher._finalize()();
}

uint64_t protocol witness for Decodable.init(from:) in conformance TrackAlerts@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for TrackAlerts();
  v5 = swift_allocObject();
  result = TrackAlerts.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TrackAlerts()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  swift_beginAccess();
  Hasher._combine(_:)(*(v1 + 16));
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance TrackAlerts()
{
  v1 = *v0;
  swift_beginAccess();
  Hasher._combine(_:)(*(v1 + 16));
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TrackAlerts()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  swift_beginAccess();
  Hasher._combine(_:)(*(v1 + 16));
  return Hasher._finalize()();
}

BOOL static TrackAlerts.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  LODWORD(a1) = *(a1 + 16);
  swift_beginAccess();
  return ((a1 ^ *(a2 + 16)) & 1) == 0;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance TrackAlerts(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  LODWORD(v2) = *(v2 + 16);
  swift_beginAccess();
  return ((v2 ^ *(v3 + 16)) & 1) == 0;
}

unint64_t TrackAlerts.description.getter()
{
  _StringGuts.grow(_:)(35);

  swift_beginAccess();
  if (*(v0 + 16))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + 16))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x20F2E6D80](v1, v2);

  MEMORY[0x20F2E6D80](62, 0xE100000000000000);
  return 0xD000000000000020;
}

unint64_t lazy protocol witness table accessor for type TrackAlerts and conformance TrackAlerts()
{
  result = lazy protocol witness table cache variable for type TrackAlerts and conformance TrackAlerts;
  if (!lazy protocol witness table cache variable for type TrackAlerts and conformance TrackAlerts)
  {
    type metadata accessor for TrackAlerts();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrackAlerts and conformance TrackAlerts);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TrackAlerts.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for TrackAlerts.CodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

id one-time initialization function for integerNumberFormatter()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v0 setNumberStyle_];
  [v0 setRoundingMode_];
  result = [v0 setMaximumFractionDigits_];
  static NSNumberFormatter.integerNumberFormatter = v0;
  return result;
}

id static NSNumberFormatter.integerNumberFormatter.getter()
{
  if (one-time initialization token for integerNumberFormatter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static NSNumberFormatter.integerNumberFormatter;

  return v0;
}

id @objc static NSNumberFormatter.integerNumberFormatter.getter()
{
  if (one-time initialization token for integerNumberFormatter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static NSNumberFormatter.integerNumberFormatter;
}

void static NSNumberFormatter.integerNumberFormatter.setter(uint64_t a1)
{
  if (one-time initialization token for integerNumberFormatter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static NSNumberFormatter.integerNumberFormatter;
  static NSNumberFormatter.integerNumberFormatter = a1;
}

void @objc static NSNumberFormatter.integerNumberFormatter.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = one-time initialization token for integerNumberFormatter;
  v4 = a3;
  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = static NSNumberFormatter.integerNumberFormatter;
  static NSNumberFormatter.integerNumberFormatter = v4;
}

uint64_t (*static NSNumberFormatter.integerNumberFormatter.modify())()
{
  if (one-time initialization token for integerNumberFormatter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static NSNumberFormatter.integerNumberFormatter.modify;
}

id one-time initialization function for integralFormatter(uint64_t a1, SEL *a2, uint64_t a3, void *a4)
{
  v7 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  result = [v7 *a2];
  *a4 = v7;
  return result;
}

id static NSNumberFormatter.integralFormatter.getter(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

unint64_t HKWorkoutActivityType.description.getter()
{
  v0 = _HKWorkoutActivityNameForActivityType();
  if (!v0)
  {
    return 0xD000000000000010;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5._object = 0x800000020B456540;
  v5._countAndFlagsBits = 0xD000000000000015;
  if (String.hasPrefix(_:)(v5))
  {
    v6 = String.count.getter();
    v7 = specialized Collection.dropFirst(_:)(v6, v2, v4);
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v2 = MEMORY[0x20F2E6D00](v7, v9, v11, v13);
  }

  return v2;
}

unint64_t specialized Collection.dropFirst(_:)(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

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

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return String.subscript.getter();
}

uint64_t MSSuggestion.unifiedArtworkImage()()
{
  *(v1 + 184) = v0;
  return MEMORY[0x2822009F8](MSSuggestion.unifiedArtworkImage(), 0, 0);
}

{
  v1 = v0[23];
  v2 = MSSuggestion.legacyIntent.getter();
  v0[24] = v2;
  if (v2)
  {
    v3 = v2;
    v4 = swift_task_alloc();
    v0[25] = v4;
    *v4 = v0;
    v4[1] = MSSuggestion.unifiedArtworkImage();

    return (specialized MSSuggestion.artworkImage(from:))(v3);
  }

  else
  {
    v6 = v0[23];
    v0[2] = v0;
    v0[7] = v0 + 21;
    v0[3] = MSSuggestion.unifiedArtworkImage();
    v7 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo7INImageCs5Error_pGMd, &_sSccySo7INImageCs5Error_pGMR);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned INImage?, @unowned NSError?) -> () with result type INImage;
    v0[13] = &block_descriptor_53;
    v0[14] = v7;
    [v6 artworkWithCompletion_];

    return MEMORY[0x282200938](v0 + 2);
  }
}

{

  v1 = *(v0 + 208);
  v2 = *(v0 + 8);

  return v2(v1);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  if (v2)
  {
    v3 = MSSuggestion.unifiedArtworkImage();
  }

  else
  {
    v3 = MSSuggestion.unifiedArtworkImage();
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v27 = v0;
  v1 = v0[21];
  v2 = [v1 _imageData];
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = v2;
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = objc_allocWithZone(MEMORY[0x277D755B8]);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v9 = [v7 initWithData_];

  outlined consume of Data._Representation(v4, v6);
  if (v9)
  {
  }

  else
  {
LABEL_4:
    lazy protocol witness table accessor for type SuggestionError and conformance SuggestionError();
    v10 = swift_allocError();
    *v11 = 4;
    *(v11 + 8) = 2;
    swift_willThrow();

    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static WOLog.mediaPlayback);
    v13 = v10;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v26 = v17;
      *v16 = 136315138;
      swift_getErrorValue();
      v19 = v0[18];
      v18 = v0[19];
      v20 = v0[20];
      v21 = Error.localizedDescription.getter();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v26);

      *(v16 + 4) = v23;
      _os_log_impl(&dword_20AEA4000, v14, v15, "MSSuggestion artwork loading encountered error: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x20F2E9420](v17, -1, -1);
      MEMORY[0x20F2E9420](v16, -1, -1);
    }

    else
    {
    }

    v9 = 0;
  }

  v24 = v0[1];

  return v24(v9);
}

{
  v18 = v0;
  v1 = v0[27];
  swift_willThrow();
  v2 = v0[27];
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static WOLog.mediaPlayback);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[18];
    v9 = v0[19];
    v11 = v0[20];
    v12 = Error.localizedDescription.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v17);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_20AEA4000, v5, v6, "MSSuggestion artwork loading encountered error: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  else
  {
  }

  v15 = v0[1];

  return v15(0);
}

uint64_t MSSuggestion.unifiedArtworkImage()(uint64_t a1)
{
  v2 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = a1;

  return MEMORY[0x2822009F8](MSSuggestion.unifiedArtworkImage(), 0, 0);
}

void thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t MSSuggestionLegacyIntentExecutionContext.confirm()()
{
  *(v1 + 224) = v0;
  return MEMORY[0x2822009F8](MSSuggestionLegacyIntentExecutionContext.confirm(), 0, 0);
}

{
  v1 = v0;
  v2 = v0 + 18;
  v3 = v1[28];
  [*(v3 + 16) _setAirPlayRouteIds_];
  v4 = [objc_allocWithZone(MEMORY[0x277D21520]) initWithIntent_];
  v1[29] = v4;
  [v4 setRequiresTCC_];
  v1[22] = closure #1 in MSSuggestionLegacyIntentExecutionContext.confirm();
  v1[23] = 0;
  v5 = MEMORY[0x277D85DD0];
  v1[18] = MEMORY[0x277D85DD0];
  v1[19] = 1107296256;
  v1[20] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  v1[21] = &block_descriptor_22;
  v6 = _Block_copy(v2);
  [v4 setInterruptionHandler_];
  _Block_release(v6);
  v7 = *(v3 + 24);
  *(v3 + 24) = v4;
  v8 = v4;

  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  v1[30] = __swift_project_value_buffer(v9, static WOLog.mediaPlayback);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_20AEA4000, v10, v11, "NETWORK_START: extension connection resume", v12, 2u);
    MEMORY[0x20F2E9420](v12, -1, -1);
  }

  v1[2] = v1;
  v1[7] = v1 + 26;
  v1[3] = MSSuggestionLegacyIntentExecutionContext.confirm();
  v13 = swift_continuation_init();
  v1[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo17INCExtensionProxy_ps5Error_pGMd, &_sSccySo17INCExtensionProxy_ps5Error_pGMR);
  v1[18] = v5;
  v1[19] = 1107296256;
  v1[20] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned INCExtensionProxy?, @unowned NSError?) -> () with result type INCExtensionProxy;
  v1[21] = &block_descriptor_25_0;
  v1[22] = v13;
  [v8 resumeWithCompletionHandler_];

  return MEMORY[0x282200938](v1 + 2);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 248) = v2;
  if (v2)
  {
    v3 = MSSuggestionLegacyIntentExecutionContext.confirm();
  }

  else
  {
    v3 = MSSuggestionLegacyIntentExecutionContext.confirm();
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0;
  v3 = v0 + 26;
  v2 = v0[26];
  v4 = v3[4];
  v3[6] = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_20AEA4000, v5, v6, "NETWORK_END: extension connection resume - result: success", v7, 2u);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = v1[30];
  v1[33] = static WorkoutSignposter.shared;
  WorkoutSignposter.emit(signpost:)(11);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_20AEA4000, v9, v10, "NETWORK_START: extension confirmIntent", v11, 2u);
    MEMORY[0x20F2E9420](v11, -1, -1);
  }

  v1[10] = v1;
  v1[15] = v3;
  v1[11] = MSSuggestionLegacyIntentExecutionContext.confirm();
  v12 = swift_continuation_init();
  v1[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo16INIntentResponseCSg_So17INCExtensionErrorCSgts5NeverOGMd, &_sSccySo16INIntentResponseCSg_So17INCExtensionErrorCSgts5NeverOGMR);
  v1[18] = MEMORY[0x277D85DD0];
  v1[19] = 1107296256;
  v1[20] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned INIntentResponse?, @unowned INCExtensionError?) -> () with result type (INIntentResponse?, INCExtensionError?);
  v1[21] = &block_descriptor_28_0;
  v1[22] = v12;
  [v2 confirmIntentWithCompletionHandler_];

  return MEMORY[0x282200938](v1 + 10);
}

{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](MSSuggestionLegacyIntentExecutionContext.confirm(), 0, 0);
}

{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 240);
  if (v1)
  {
    v4 = v1;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = [v4 errorCode];

      _os_log_impl(&dword_20AEA4000, v5, v6, "NETWORK_END: extension confirmIntent - result: error (code: %ld)", v7, 0xCu);
      MEMORY[0x20F2E9420](v7, -1, -1);
    }

    else
    {
    }

    v28 = *(v0 + 256);
    v27 = *(v0 + 264);
    WorkoutSignposter.emit(signpost:)(12);
    v29 = v4;
    v30 = [v29 errorCode];
    lazy protocol witness table accessor for type SuggestionError and conformance SuggestionError();
    v31 = swift_allocError();
    *v32 = v30;
    *(v32 + 8) = 0;
    swift_willThrow();

    swift_unknownObjectRelease();
  }

  else
  {
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_20AEA4000, v8, v9, "NETWORK_END: extension confirmIntent - result: success", v10, 2u);
      MEMORY[0x20F2E9420](v10, -1, -1);
    }

    v11 = *(v0 + 264);

    WorkoutSignposter.emit(signpost:)(12);
    if (v2 && (objc_opt_self(), (v12 = swift_dynamicCastObjCClass()) != 0))
    {
      v13 = v12;
      v14 = v2;
      if ([v13 code] == 1 || objc_msgSend(v13, sel_code) == 4)
      {
        v15 = *(v0 + 256);
        v16 = *(v0 + 240);
        v17 = *(v0 + 224);

        v18 = *(v17 + 32);
        *(v17 + 32) = v15;
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        v19 = v14;
        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.default.getter();

        v22 = os_log_type_enabled(v20, v21);
        v23 = *(v0 + 256);
        if (v22)
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          *v24 = 138412290;
          *(v24 + 4) = v13;
          *v25 = v13;
          v26 = v19;
          _os_log_impl(&dword_20AEA4000, v20, v21, "MSSuggestionLegacyIntentExecutionContext.confirm() succeeded with response: %@", v24, 0xCu);
          outlined destroy of NSObject?(v25);
          MEMORY[0x20F2E9420](v25, -1, -1);
          MEMORY[0x20F2E9420](v24, -1, -1);

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }

        v44 = *(v0 + 8);
        goto LABEL_19;
      }

      v46 = *(v0 + 256);
      lazy protocol witness table accessor for type SuggestionError and conformance SuggestionError();
      v31 = swift_allocError();
      *v47 = 2;
      *(v47 + 8) = 2;
      swift_willThrow();
    }

    else
    {
      v33 = *(v0 + 256);
      lazy protocol witness table accessor for type SuggestionError and conformance SuggestionError();
      v31 = swift_allocError();
      *v34 = 1;
      *(v34 + 8) = 2;
      swift_willThrow();
    }

    swift_unknownObjectRelease();
  }

  v35 = *(v0 + 240);
  [*(v0 + 232) reset];
  v36 = v31;
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v39 = 138412290;
    v41 = v31;
    v42 = _swift_stdlib_bridgeErrorToNSError();
    *(v39 + 4) = v42;
    *v40 = v42;
    _os_log_impl(&dword_20AEA4000, v37, v38, "MSSuggestionLegacyIntentExecutionContext.confirm() failed with error: %@", v39, 0xCu);
    outlined destroy of NSObject?(v40);
    MEMORY[0x20F2E9420](v40, -1, -1);
    MEMORY[0x20F2E9420](v39, -1, -1);
  }

  v43 = *(v0 + 232);

  swift_willThrow();
  v44 = *(v0 + 8);
LABEL_19:

  return v44();
}

{
  v1 = *(v0 + 248);
  swift_willThrow();
  v3 = *(v0 + 240);
  v2 = *(v0 + 248);
  [*(v0 + 232) reset];
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_20AEA4000, v5, v6, "MSSuggestionLegacyIntentExecutionContext.confirm() failed with error: %@", v7, 0xCu);
    outlined destroy of NSObject?(v8);
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  v11 = *(v0 + 232);

  swift_willThrow();
  v12 = *(v0 + 8);

  return v12();
}

void closure #1 in MSSuggestionLegacyIntentExecutionContext.confirm()(void *a1)
{
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.mediaPlayback);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = a1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_20AEA4000, oslog, v4, "Extension connection interrupted: %@", v5, 0xCu);
    outlined destroy of NSObject?(v6);
    MEMORY[0x20F2E9420](v6, -1, -1);
    MEMORY[0x20F2E9420](v5, -1, -1);
  }
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned INCExtensionProxy?, @unowned NSError?) -> () with result type INCExtensionProxy(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      swift_unknownObjectRetain();
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned INIntentResponse?, @unowned INCExtensionError?) -> () with result type (INIntentResponse?, INCExtensionError?)(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  v7 = *(*(*v5 + 64) + 40);
  *v7 = a2;
  v7[1] = a3;
  v8 = a2;
  v9 = a3;

  return MEMORY[0x282200948](v6);
}

uint64_t MSSuggestionLegacyIntentExecutionContext.handle()()
{
  *(v1 + 160) = v0;
  return MEMORY[0x2822009F8](MSSuggestionLegacyIntentExecutionContext.handle(), 0, 0);
}

{
  v1 = v0[20];
  v2 = *(v1 + 24);
  v0[21] = v2;
  if (v2 && (v3 = *(v1 + 32), (v0[22] = v3) != 0))
  {
    v4 = one-time initialization token for shared;
    v5 = v2;
    swift_unknownObjectRetain();
    if (v4 != -1)
    {
      swift_once();
    }

    v0[23] = static WorkoutSignposter.shared;
    WorkoutSignposter.emit(signpost:)(13);
    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    v0[24] = __swift_project_value_buffer(v6, static WOLog.mediaPlayback);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_20AEA4000, v7, v8, "NETWORK_START: extension handleIntent", v9, 2u);
      MEMORY[0x20F2E9420](v9, -1, -1);
    }

    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = MSSuggestionLegacyIntentExecutionContext.handle();
    v10 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo16INIntentResponseCSg_So17INCExtensionErrorCSgts5NeverOGMd, &_sSccySo16INIntentResponseCSg_So17INCExtensionErrorCSgts5NeverOGMR);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned INIntentResponse?, @unowned INCExtensionError?) -> () with result type (INIntentResponse?, INCExtensionError?);
    v0[13] = &block_descriptor_18_3;
    v0[14] = v10;
    [v3 handleIntentWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    lazy protocol witness table accessor for type SuggestionError and conformance SuggestionError();
    swift_allocError();
    *v11 = 3;
    *(v11 + 8) = 2;
    swift_willThrow();
    v12 = v0[1];

    return v12();
  }
}

{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](MSSuggestionLegacyIntentExecutionContext.handle(), 0, 0);
}

{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[24];
  if (v1)
  {
    v4 = v1;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = [v4 errorCode];

      _os_log_impl(&dword_20AEA4000, v5, v6, "NETWORK_END: extension handleIntent - result: error (code: %ld)", v7, 0xCu);
      MEMORY[0x20F2E9420](v7, -1, -1);
    }

    else
    {
    }

    v23 = v0[23];
    v24 = v0[24];
    v25 = v0[21];
    WorkoutSignposter.emit(signpost:)(14);
    v26 = v4;
    v27 = [v26 errorCode];
    lazy protocol witness table accessor for type SuggestionError and conformance SuggestionError();
    v28 = swift_allocError();
    *v29 = v27;
    *(v29 + 8) = 1;
    swift_willThrow();

    v30 = v28;
    [v25 reset];
    v31 = v28;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      v36 = v28;
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 4) = v37;
      *v35 = v37;
      _os_log_impl(&dword_20AEA4000, v32, v33, "MSSuggestionLegacyIntentExecutionContext.handle() failed with error: %@", v34, 0xCu);
      outlined destroy of NSObject?(v35);
      MEMORY[0x20F2E9420](v35, -1, -1);
      MEMORY[0x20F2E9420](v34, -1, -1);
    }

    v39 = v0[21];
    v38 = v0[22];

    swift_willThrow();
    swift_unknownObjectRelease();

    v22 = v0[1];
  }

  else
  {
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_20AEA4000, v8, v9, "NETWORK_END: extension handleIntent - result: success", v10, 2u);
      MEMORY[0x20F2E9420](v10, -1, -1);
    }

    v12 = v0[23];
    v11 = v0[24];

    WorkoutSignposter.emit(signpost:)(14);
    v13 = v2;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[22];
    if (v16)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      *(v18 + 4) = v13;
      *v19 = v2;
      v20 = v13;
      _os_log_impl(&dword_20AEA4000, v14, v15, "MSSuggestionLegacyIntentExecutionContext.handle() succeeded with response: %@", v18, 0xCu);
      outlined destroy of NSObject?(v19);
      MEMORY[0x20F2E9420](v19, -1, -1);
      MEMORY[0x20F2E9420](v18, -1, -1);
      v13 = v14;
      v14 = v20;
    }

    swift_unknownObjectRelease();
    v21 = v0[21];

    v22 = v0[1];
  }

  return v22();
}

uint64_t MSSuggestionLegacyIntentExecutionContext.__deallocating_deinit()
{
  v1 = *(v0 + 32);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id MSSuggestion.legacyIntent.getter()
{
  v1 = [v0 intent];
  v2 = v1;
  if (!v1)
  {
    return v2;
  }

  v3 = [v1 mediaContainer];
  if (v3)
  {
    v4 = v2;
    v2 = v3;
LABEL_4:

    return v4;
  }

  v6 = [v2 mediaItems];
  if (!v6)
  {
    v4 = 0;
    goto LABEL_4;
  }

  result = [v2 mediaItems];
  if (result)
  {
    v7 = result;
    type metadata accessor for LNAction(0, &lazy cache variable for type metadata for INMediaItem, 0x277CD3DB8);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v8 >> 62)
    {
      v4 = __CocoaSet.count.getter();
    }

    else
    {
      v4 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v4)
    {
      return v2;
    }

    goto LABEL_4;
  }

  __break(1u);
  return result;
}

uint64_t MSSuggestion.unifiedPrepare()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](MSSuggestion.unifiedPrepare(), 0, 0);
}

{
  v1 = v0[2];
  v2 = MSSuggestion.legacyIntent.getter();
  v0[3] = v2;
  if (v2)
  {
    type metadata accessor for MSSuggestionLegacyIntentExecutionContext();
    v3 = swift_allocObject();
    v0[4] = v3;
    v3[3] = 0;
    v3[4] = 0;
    v3[2] = v2;
    v4 = v2;
    v5 = swift_task_alloc();
    v0[5] = v5;
    *v5 = v0;
    v5[1] = MSSuggestion.unifiedPrepare();

    return MSSuggestionLegacyIntentExecutionContext.confirm()();
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = MSSuggestion.unifiedPrepare();
  }

  else
  {
    v3 = MSSuggestion.unifiedPrepare();
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2(v1);
}

{
  v2 = v0[3];
  v1 = v0[4];

  v3 = v0[1];
  v4 = v0[6];

  return v3();
}

uint64_t MSSuggestion.unifiedPlay()()
{
  *(v1 + 144) = v0;
  return MEMORY[0x2822009F8](MSSuggestion.unifiedPlay(), 0, 0);
}

{
  v26 = v0;
  v1 = *(v0 + 144);
  v2 = MSSuggestion.legacyIntent.getter();
  *(v0 + 152) = v2;
  if (v2)
  {
    v3 = v2;
    v4 = swift_task_alloc();
    *(v0 + 160) = v4;
    *v4 = v0;
    v4[1] = MSSuggestion.unifiedPlay();

    return specialized MSSuggestion.play(intent:)(v3);
  }

  else
  {
    v6 = [*(v0 + 144) unifiedIntent];
    *(v0 + 176) = v6;
    if (v6)
    {
      v7 = v6;
      v8 = *(v0 + 144);
      if ((MSSuggestion.needsMusicAppIntentConversion.getter() & 1) != 0 && (v9 = *(v0 + 144), v10 = MSSuggestion.extractSiriRepID()(), (*(v0 + 184) = v11) != 0))
      {
        v12 = v10;
        v13 = v11;
        if (one-time initialization token for mediaPlayback != -1)
        {
          swift_once();
        }

        v14 = type metadata accessor for Logger();
        __swift_project_value_buffer(v14, static WOLog.mediaPlayback);

        v15 = Logger.logObject.getter();
        v16 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v25 = v18;
          *v17 = 136315138;
          *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v25);
          _os_log_impl(&dword_20AEA4000, v15, v16, "Music intent needs conversion, extracted Siri rep ID (%s) and executing with MusicSiriRepresentationAppIntentDispatcher", v17, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v18);
          MEMORY[0x20F2E9420](v18, -1, -1);
          MEMORY[0x20F2E9420](v17, -1, -1);
        }

        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        v19 = static MusicSiriRepresentationAppIntentDispatcher.shared;
        v20 = unk_27C7299A0;
        *(v0 + 192) = static MusicSiriRepresentationAppIntentDispatcher.shared;
        swift_unknownObjectRetain();
        v21 = swift_task_alloc();
        *(v0 + 200) = v21;
        *v21 = v0;
        v21[1] = MSSuggestion.unifiedPlay();

        return MusicSiriRepresentationAppIntentDispatcher.startPlayback(siriRepID:)(v12, v13, v19, v20);
      }

      else
      {
        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        *(v0 + 208) = static WorkoutSignposter.shared;
        WorkoutSignposter.emit(signpost:)(13);
        *(v0 + 16) = v0;
        *(v0 + 24) = MSSuggestion.unifiedPlay();
        v22 = swift_continuation_init();
        *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
        *(v0 + 80) = MEMORY[0x277D85DD0];
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
        *(v0 + 104) = &block_descriptor_32;
        *(v0 + 112) = v22;
        [v7 executeWithCompletion_];

        return MEMORY[0x282200938](v0 + 16);
      }
    }

    else
    {
      lazy protocol witness table accessor for type SuggestionError and conformance SuggestionError();
      swift_allocError();
      *v23 = 5;
      *(v23 + 8) = 2;
      swift_willThrow();
      v24 = *(v0 + 8);

      return v24();
    }
  }
}

{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = MSSuggestion.unifiedPlay();
  }

  else
  {
    v3 = MSSuggestion.unifiedPlay();
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 168);
  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);
  v3 = *(*v0 + 184);
  v5 = *v0;

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](MSSuggestion.unifiedPlay(), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  if (v2)
  {
    v3 = MSSuggestion.unifiedPlay();
  }

  else
  {
    v3 = MSSuggestion.unifiedPlay();
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[26];
  v2 = v0[22];
  WorkoutSignposter.emit(signpost:)(14);

  v3 = v0[1];

  return v3();
}

{
  v1 = v0[27];
  v2 = v0[22];
  swift_willThrow();

  v3 = v0[27];
  v4 = v0[1];

  return v4();
}

uint64_t MSSuggestion.needsMusicAppIntentConversion.getter()
{
  v1 = v0;
  v2 = [v0 bundleID];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  if (v3 == 0xD000000000000013 && 0x800000020B45F950 == v5)
  {
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v8 = [v1 bundleID];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v36 = 0;
  v37 = 0;
  v12 = [v1 bundleID];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v17 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(v13, v15, 0);
  if (v17)
  {
    v25 = v17;
    v26 = [v17 bundleIdentifier];
    if (v26)
    {
      v27 = v26;
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v28;
    }

    else
    {

      v24 = 0;
      v23 = 0;
    }

    if (!v23)
    {
      return 0;
    }
  }

  else
  {
    v18 = [objc_opt_self() enumeratorWithOptions_];
    v19 = swift_allocObject();
    v19[2] = v9;
    v19[3] = v11;
    v19[4] = &v36;
    v20 = swift_allocObject();
    *(v20 + 16) = closure #1 in MSSuggestion.platformBundleID(for:)partial apply;
    *(v20 + 24) = v19;
    aBlock[4] = thunk for @callee_guaranteed (@guaranteed LSApplicationRecord) -> ()partial apply;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed LSApplicationRecord) -> ();
    aBlock[3] = &block_descriptor_58_0;
    v21 = _Block_copy(aBlock);

    [v18 swift:v21 forEach:?];

    _Block_release(v21);
    LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

    if (v18)
    {
      __break(1u);
      return result;
    }

    v24 = v36;
    v23 = v37;

    if (!v23)
    {
      return 0;
    }
  }

  v29 = [v1 bundleID];
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  if (v24 == v30 && v23 == v32)
  {

    return 0;
  }

  v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v33)
  {
    return 0;
  }

  v34 = MSSuggestion.legacyIntent.getter();
  if (v34)
  {

    return 0;
  }

  return 1;
}

uint64_t MSSuggestion.extractSiriRepID()()
{
  v1 = *MEMORY[0x277D27F90];
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = v2;
    MSPlayMediaAppIntent.intentAction.getter();

    type metadata accessor for LNAction(0, &lazy cache variable for type metadata for LNAction, 0x277D23720);
    if (swift_dynamicCast())
    {
      v4 = [v34 parameters];
      type metadata accessor for LNAction(0, &lazy cache variable for type metadata for LNProperty, 0x277D238D8);
      v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v5 >> 62)
      {
        v6 = __CocoaSet.count.getter();
        if (v6)
        {
LABEL_5:
          v7 = 0;
          v8 = 0xEB00000000797469;
          while (1)
          {
            if ((v5 & 0xC000000000000001) != 0)
            {
              v9 = MEMORY[0x20F2E7A20](v7, v5);
            }

            else
            {
              if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_27;
              }

              v9 = *(v5 + 8 * v7 + 32);
            }

            v10 = v9;
            v11 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
              __break(1u);
LABEL_27:
              __break(1u);
              goto LABEL_28;
            }

            v12 = [v9 identifier];
            v13 = v8;
            v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v16 = v15;

            if (v14 == 0x746E456F69647561 && v16 == v13)
            {
              break;
            }

            v8 = v13;
            v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v18)
            {
              goto LABEL_22;
            }

            ++v7;
            if (v11 == v6)
            {
              goto LABEL_30;
            }
          }

LABEL_22:

          v23 = [v10 value];
          if (v23)
          {
            v24 = v23;
            v25 = [v23 value];

            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
            type metadata accessor for LNAction(0, &lazy cache variable for type metadata for LNEntity, 0x277D237F0);
            if (swift_dynamicCast())
            {
              v26 = [v34 identifier];
              v27 = [v26 instanceIdentifier];

              v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              return v28;
            }
          }

          goto LABEL_31;
        }
      }

      else
      {
        v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v6)
        {
          goto LABEL_5;
        }
      }

LABEL_30:

LABEL_31:
      v20 = v34;
      if (one-time initialization token for mediaPlayback != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      __swift_project_value_buffer(v30, static WOLog.mediaPlayback);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_20AEA4000, v31, v32, "SiriRepID extraction error: couldn't extract id from audioEntity", v33, 2u);
        MEMORY[0x20F2E9420](v33, -1, -1);
      }

      goto LABEL_36;
    }
  }

  if (one-time initialization token for mediaPlayback != -1)
  {
LABEL_28:
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static WOLog.mediaPlayback);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_20AEA4000, v20, v21, "SiriRepID extraction error: no existing LNAction", v22, 2u);
    MEMORY[0x20F2E9420](v22, -1, -1);
  }

LABEL_36:

  return 0;
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned INImage?, @unowned NSError?) -> () with result type INImage(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t MSSuggestion.validatedSuggestion.getter()
{
  v1 = v0;
  v2 = [v0 bundleID];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v37 = 0;
  v38 = 0;
  v6 = [v1 bundleID];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v11 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(v7, v9, 0);
  if (v11)
  {
    v23 = v11;
    v24 = [v11 bundleIdentifier];
    if (v24)
    {
      v25 = v24;
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v26;
    }

    else
    {

      v18 = 0;
      v17 = 0;
    }

    if (!v17)
    {
      return 0;
    }

    goto LABEL_4;
  }

  v12 = [objc_opt_self() enumeratorWithOptions_];
  v13 = swift_allocObject();
  v13[2] = v3;
  v13[3] = v5;
  v13[4] = &v37;
  v14 = swift_allocObject();
  *(v14 + 16) = partial apply for closure #1 in MSSuggestion.platformBundleID(for:);
  *(v14 + 24) = v13;
  aBlock[4] = partial apply for thunk for @callee_guaranteed (@guaranteed LSApplicationRecord) -> ();
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed LSApplicationRecord) -> ();
  aBlock[3] = &block_descriptor_47_0;
  v15 = _Block_copy(aBlock);

  [v12 swift:v15 forEach:?];

  _Block_release(v15);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if ((v12 & 1) == 0)
  {
    v18 = v37;
    v17 = v38;

    if (!v17)
    {
      return 0;
    }

LABEL_4:
    v19 = [v1 bundleID];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    if (v18 == v20 && v17 == v22)
    {
    }

    else
    {
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v27 & 1) == 0)
      {
        v29 = MSSuggestion.legacyIntent.getter();
        if (v29)
        {
          v30 = v29;
          v31 = MEMORY[0x20F2E6C00](v18, v17);
          [v30 _setLaunchId_];

          [v1 copy];
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
          type metadata accessor for MSSuggestion();
          swift_dynamicCast();
          v1 = v37;
          v32 = MEMORY[0x20F2E6C00](v18, v17);

          [v1 setBundleID_];

          return v1;
        }

        v33 = [v1 unifiedIntent];
        if (!v33)
        {

          return 0;
        }

        v34 = v33;
        v35 = MEMORY[0x20F2E6C00](v18, v17);

        [v34 setBundleID_];

LABEL_12:
        v28 = v1;
        return v1;
      }
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

id closure #1 in MSSuggestion.platformBundleID(for:)(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = [a1 counterpartIdentifiers];
  if (result)
  {
    v9 = result;
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v19[0] = a2;
    v19[1] = a3;
    MEMORY[0x28223BE20](v11);
    v18[2] = v19;
    v12 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_1, v18, v10);

    if (v12)
    {
      result = [a1 bundleIdentifier];
      if (result)
      {
        v13 = result;
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        v17 = a4[1];
        *a4 = v14;
        a4[1] = v16;
      }
    }
  }

  return result;
}

void thunk for @escaping @callee_guaranteed (@guaranteed LSApplicationRecord) -> ()(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v2();
}

uint64_t MSSuggestion.effectiveAppIconBundleID.getter()
{
  if (MSSuggestion.needsMusicAppIntentConversion.getter())
  {
    return 0x6C7070612E6D6F63;
  }

  v2 = [v0 bundleID];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(uint64_t a1, uint64_t a2, char a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x20F2E6C00]();

  v11[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

unint64_t lazy protocol witness table accessor for type SuggestionError and conformance SuggestionError()
{
  result = lazy protocol witness table cache variable for type SuggestionError and conformance SuggestionError;
  if (!lazy protocol witness table cache variable for type SuggestionError and conformance SuggestionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionError and conformance SuggestionError);
  }

  return result;
}

uint64_t specialized MSSuggestion.artworkImage(from:)()
{
  v1 = [*(v0 + 152) mediaContainer];
  if (!v1)
  {
    goto LABEL_20;
  }

  v2 = v1;
  v3 = [v1 artwork];
  *(v0 + 160) = v3;

  if (!v3)
  {
    goto LABEL_19;
  }

  if ([v3 _requiresRetrieval])
  {
    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    *(v0 + 168) = __swift_project_value_buffer(v4, static WOLog.mediaPlayback);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20AEA4000, v5, v6, "NETWORK_START: INImage artwork retrieval - requires network fetch", v7, 2u);
      MEMORY[0x20F2E9420](v7, -1, -1);
    }

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = specialized MSSuggestion.artworkImage(from:);
    v8 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo7INImageCSgs5Error_pGMd, &_sSccySo7INImageCSgs5Error_pGMR);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned INImage?, @unowned NSError?) -> () with result type INImage?;
    *(v0 + 104) = &block_descriptor_61_0;
    *(v0 + 112) = v8;
    [v3 _retrieveImageDataWithReply_];

    return MEMORY[0x282200938](v0 + 16);
  }

  v9 = [v3 _imageData];
  if (!v9)
  {
    goto LABEL_14;
  }

  v10 = v9;
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = objc_allocWithZone(MEMORY[0x277D755B8]);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v16 = [v14 initWithData_];

  outlined consume of Data._Representation(v11, v13);
  if (!v16)
  {
LABEL_14:
    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static WOLog.mediaPlayback);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_20AEA4000, v18, v19, "Failed to instantiate image from existing data.", v20, 2u);
      MEMORY[0x20F2E9420](v20, -1, -1);
    }

LABEL_19:
    v1 = 0;
    goto LABEL_20;
  }

  v1 = v16;
LABEL_20:
  v21 = *(v0 + 8);

  return v21(v1);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = specialized MSSuggestion.artworkImage(from:);
  }

  else
  {
    v3 = specialized MSSuggestion.artworkImage(from:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 144);
  if (!v1)
  {
LABEL_9:
    lazy protocol witness table accessor for type SuggestionError and conformance SuggestionError();
    v18 = swift_allocError();
    *v19 = 4;
    *(v19 + 8) = 2;
    swift_willThrow();
    v20 = *(v0 + 168);
    v21 = v18;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 160);
    if (v24)
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      v28 = v18;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 4) = v29;
      *v27 = v29;
      _os_log_impl(&dword_20AEA4000, v22, v23, "NETWORK_END: INImage artwork retrieval - result: error - %@", v26, 0xCu);
      outlined destroy of NSObject?(v27);
      MEMORY[0x20F2E9420](v27, -1, -1);
      MEMORY[0x20F2E9420](v26, -1, -1);
    }

    else
    {
    }

    v17 = 0;
    goto LABEL_13;
  }

  v2 = [*(v0 + 144) _imageData];
  if (!v2)
  {
LABEL_8:

    goto LABEL_9;
  }

  v3 = v2;
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = objc_allocWithZone(MEMORY[0x277D755B8]);
  outlined copy of Data._Representation(v4, v6);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v9 = [v7 initWithData_];

  outlined consume of Data._Representation(v4, v6);
  if (!v9)
  {
    outlined consume of Data._Representation(v4, v6);
    goto LABEL_8;
  }

  v10 = v9;
  v11 = *(v0 + 168);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v0 + 160);
  if (v14)
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_20AEA4000, v12, v13, "NETWORK_END: INImage artwork retrieval - result: success", v16, 2u);
    MEMORY[0x20F2E9420](v16, -1, -1);
  }

  outlined consume of Data._Representation(v4, v6);
  v17 = v10;
LABEL_13:
  v30 = *(v0 + 8);

  return v30(v17);
}

{
  v1 = v0[22];
  swift_willThrow();
  v2 = v0[22];
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[20];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v2;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_20AEA4000, v4, v5, "NETWORK_END: INImage artwork retrieval - result: error - %@", v8, 0xCu);
    outlined destroy of NSObject?(v9);
    MEMORY[0x20F2E9420](v9, -1, -1);
    MEMORY[0x20F2E9420](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12(0);
}

uint64_t getEnumTagSinglePayload for SuggestionError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SuggestionError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTag for SuggestionError(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t destructiveInjectEnumTag for SuggestionError(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t specialized MSSuggestion.play(intent:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  WorkoutSignposter.emit(signpost:)(10);
  type metadata accessor for MSSuggestionLegacyIntentExecutionContext();
  inited = swift_initStackObject();
  v0[8] = inited;
  inited[3] = 0;
  inited[4] = 0;
  inited[2] = v1;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = specialized MSSuggestion.play(intent:);

  return MSSuggestionLegacyIntentExecutionContext.confirm()();
}

{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](specialized MSSuggestion.play(intent:), 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[11] = v4;
    *v4 = v3;
    v4[1] = specialized MSSuggestion.play(intent:);
    v5 = v3[8];

    return MSSuggestionLegacyIntentExecutionContext.handle()();
  }
}

{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = specialized MSSuggestion.play(intent:);
  }

  else
  {
    v3 = specialized MSSuggestion.play(intent:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static WOLog.mediaPlayback);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20AEA4000, v2, v3, "MSSuggestion.play(INPlayMediaIntent) succeeded", v4, 2u);
    MEMORY[0x20F2E9420](v4, -1, -1);
  }

  v5 = *(v0 + 64);

  v6 = *(v0 + 8);

  return v6();
}

{
  v1 = v0[10];
  v2 = v0[8];

  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static WOLog.mediaPlayback);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_20AEA4000, v5, v6, "MSSuggestion.play(INPlayMediaIntent) failed with error: %@", v7, 0xCu);
    outlined destroy of NSObject?(v8);
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  swift_willThrow();
  v11 = v0[1];

  return v11();
}

{
  v1 = v0[12];
  v2 = v0[8];

  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static WOLog.mediaPlayback);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_20AEA4000, v5, v6, "MSSuggestion.play(INPlayMediaIntent) failed with error: %@", v7, 0xCu);
    outlined destroy of NSObject?(v8);
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  swift_willThrow();
  v11 = v0[1];

  return v11();
}

uint64_t partial apply for thunk for @callee_guaranteed (@guaranteed LSApplicationRecord) -> ()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t type metadata accessor for LNAction(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t AlertConfigurationContext.description.getter()
{
  v1 = *v0;
  if (v1 == 5)
  {
    return 0xD000000000000012;
  }

  _StringGuts.grow(_:)(17);

  v3 = 0xE400000000000000;
  v4 = 1818324839;
  strcpy(v11, "localBinding (");
  HIBYTE(v11[1]) = -18;
  v5 = 0xE400000000000000;
  v6 = 1701011826;
  v7 = 0xE500000000000000;
  v8 = 0x7265636170;
  if (v1 != 3)
  {
    v8 = 0x6F707369746C756DLL;
    v7 = 0xEA00000000007472;
  }

  if (v1 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (v1)
  {
    v4 = 0x6C61767265746E69;
    v3 = 0xE800000000000000;
  }

  if (v1 <= 1)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (v1 <= 1)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  MEMORY[0x20F2E6D80](v9, v10);

  MEMORY[0x20F2E6D80](41, 0xE100000000000000);
  return v11[0];
}

BOOL static AlertConfigurationContext.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 5)
  {
    return v3 == 5;
  }

  if (v3 == 5)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t AlertConfigurationContext.hash(into:)()
{
  v1 = *v0;
  if (v1 == 5)
  {
    v2 = 1;
  }

  else
  {
    MEMORY[0x20F2E7FF0](0);
    v2 = v1 + 1;
  }

  return MEMORY[0x20F2E7FF0](v2);
}

Swift::Int AlertConfigurationContext.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 5)
  {
    v2 = 1;
  }

  else
  {
    MEMORY[0x20F2E7FF0](0);
    v2 = v1 + 1;
  }

  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AlertConfigurationContext()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 5)
  {
    v2 = 1;
  }

  else
  {
    MEMORY[0x20F2E7FF0](0);
    v2 = v1 + 1;
  }

  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AlertConfigurationContext()
{
  v1 = *v0;
  if (v1 == 5)
  {
    v2 = 1;
  }

  else
  {
    MEMORY[0x20F2E7FF0](0);
    v2 = v1 + 1;
  }

  return MEMORY[0x20F2E7FF0](v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AlertConfigurationContext()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 5)
  {
    v2 = 1;
  }

  else
  {
    MEMORY[0x20F2E7FF0](0);
    v2 = v1 + 1;
  }

  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

uint64_t AlertConfigurationSessionContext.hash(into:)()
{
  if (!*v0)
  {
    return MEMORY[0x20F2E7FF0](1);
  }

  MEMORY[0x20F2E7FF0](0);
  return NSObject.hash(into:)();
}

Swift::Int AlertConfigurationSessionContext.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    MEMORY[0x20F2E7FF0](0);
    NSObject.hash(into:)();
  }

  else
  {
    MEMORY[0x20F2E7FF0](1);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AlertConfigurationSessionContext()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    MEMORY[0x20F2E7FF0](0);
    NSObject.hash(into:)();
  }

  else
  {
    MEMORY[0x20F2E7FF0](1);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AlertConfigurationSessionContext()
{
  if (!*v0)
  {
    return MEMORY[0x20F2E7FF0](1);
  }

  MEMORY[0x20F2E7FF0](0);
  return NSObject.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AlertConfigurationSessionContext()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    MEMORY[0x20F2E7FF0](0);
    NSObject.hash(into:)();
  }

  else
  {
    MEMORY[0x20F2E7FF0](1);
  }

  return Hasher._finalize()();
}

uint64_t static AlertConfigurationSessionContext.== infix(_:_:)(id *a1, uint64_t *a2)
{
  v2 = *a2;
  if (!*a1)
  {
    if (!v2)
    {
      v4 = 0;
      v3 = 1;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (!v2)
  {
LABEL_5:
    v3 = 0;
    goto LABEL_6;
  }

  v3 = 1;
LABEL_6:
  v4 = *a1;
LABEL_7:

  return v3;
}

unint64_t lazy protocol witness table accessor for type AlertConfigurationContext and conformance AlertConfigurationContext()
{
  result = lazy protocol witness table cache variable for type AlertConfigurationContext and conformance AlertConfigurationContext;
  if (!lazy protocol witness table cache variable for type AlertConfigurationContext and conformance AlertConfigurationContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AlertConfigurationContext and conformance AlertConfigurationContext);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AlertConfigurationSessionContext and conformance AlertConfigurationSessionContext()
{
  result = lazy protocol witness table cache variable for type AlertConfigurationSessionContext and conformance AlertConfigurationSessionContext;
  if (!lazy protocol witness table cache variable for type AlertConfigurationSessionContext and conformance AlertConfigurationSessionContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AlertConfigurationSessionContext and conformance AlertConfigurationSessionContext);
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AlertConfigurationSessionContext(id *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      v3 = -1;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    if (!v2)
    {
      v4 = 0;
      v3 = 1;
      goto LABEL_8;
    }

    v3 = 0;
  }

  v4 = *a1;
LABEL_8:

  return v3 & 1;
}

uint64_t getEnumTagSinglePayload for AlertConfigurationContext(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_20;
  }

  v2 = a2 + 5;
  if (a2 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 5;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 5;
  v9 = v7 - 5;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AlertConfigurationContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFB)
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t getEnumTag for AlertConfigurationContext(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 5)
  {
    return v1 - 4;
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for AlertConfigurationContext(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 4;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AlertConfigurationSessionContext(uint64_t *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AlertConfigurationSessionContext(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTag for AlertConfigurationSessionContext(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *destructiveInjectEnumTag for AlertConfigurationSessionContext(void *result, int a2)
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

uint64_t IntervalWorkoutConfiguration.intervalWorkout.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

id IntervalWorkoutConfiguration.copyWith(activityType:intervalWorkout:uuid:occurrence:)(void *a1, void *a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v60 = a4;
  ObjectType = swift_getObjectType();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v57 = *(v9 - 8);
  v10 = *(v57 + 64);
  MEMORY[0x28223BE20](v9);
  v56 = &v51 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v51 - v14;
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v59 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v61 = &v51 - v21;
  if (a1)
  {
    v58 = a1;
    if (a2)
    {
LABEL_3:
      v22 = a1;
      v54 = a2;
      goto LABEL_6;
    }
  }

  else
  {
    v23 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
    swift_beginAccess();
    v58 = *(v5 + v23);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v24 = a1;
  static Published.subscript.getter();

  v54 = v65;
LABEL_6:
  _s10Foundation4UUIDVSgWOcTm_1(a3, v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v25 = *(v17 + 48);
  if (v25(v15, 1, v16) == 1)
  {
    v26 = v9;
    v27 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
    swift_beginAccess();
    v28 = v5 + v27;
    v9 = v26;
    (*(v17 + 16))(v61, v28, v16);
    v29 = v25(v15, 1, v16);
    v30 = a2;
    if (v29 != 1)
    {
      _s10Foundation4UUIDVSgWOhTm_3(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }
  }

  else
  {
    (*(v17 + 32))(v61, v15, v16);
    v31 = a2;
  }

  if (v60)
  {
    v53 = v60;
  }

  else
  {
    v32 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
    swift_beginAccess();
    v53 = *(v5 + v32);
  }

  v33 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  swift_beginAccess();
  v52 = *(v5 + v33);
  v34 = objc_allocWithZone(ObjectType);
  v35 = OBJC_IVAR____TtC11WorkoutCore28IntervalWorkoutConfiguration__forceUpdatePublisher;
  v64 = 0;

  v36 = v60;
  v37 = v56;
  Published.init(initialValue:)();
  (*(v57 + 32))(&v34[v35], v37, v9);
  swift_beginAccess();
  v38 = v54;
  v63 = v54;
  type metadata accessor for IntervalWorkout();
  v60 = v38;
  Published.init(initialValue:)();
  swift_endAccess();
  v39 = *(v17 + 16);
  v40 = v59;
  v39(v59, v61, v16);
  *&v34[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v41 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  v42 = type metadata accessor for Date();
  v43 = *(*(v42 - 8) + 56);
  v43(&v34[v41], 1, 1, v42);
  v43(&v34[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v42);
  v44 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
  v45 = type metadata accessor for WorkoutPlan.Route();
  (*(*(v45 - 8) + 56))(&v34[v44], 1, 1, v45);
  (*(v17 + 56))(&v34[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v16);
  v46 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v34[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v39(&v34[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v40, v16);
  *&v34[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v58;
  v34[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 1;
  *&v34[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v53;
  swift_beginAccess();
  *&v34[v46] = v52;
  v34[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v47 = type metadata accessor for WorkoutConfiguration();
  v62.receiver = v34;
  v62.super_class = v47;
  v48 = objc_msgSendSuper2(&v62, sel_init);

  v49 = *(v17 + 8);
  v49(v40, v16);
  v49(v61, v16);
  return v48;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance IntervalWorkoutConfiguration.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance IntervalWorkoutConfiguration.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance IntervalWorkoutConfiguration.CodingKeys@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance IntervalWorkoutConfiguration.CodingKeys, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance IntervalWorkoutConfiguration.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance IntervalWorkoutConfiguration.CodingKeys, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance IntervalWorkoutConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IntervalWorkoutConfiguration.CodingKeys and conformance IntervalWorkoutConfiguration.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance IntervalWorkoutConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IntervalWorkoutConfiguration.CodingKeys and conformance IntervalWorkoutConfiguration.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IntervalWorkoutConfiguration.intervalWorkout.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

uint64_t (*IntervalWorkoutConfiguration.intervalWorkout.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return IntervalWorkoutConfiguration.intervalWorkout.modify;
}

uint64_t key path setter for IntervalWorkoutConfiguration.$intervalWorkout : IntervalWorkoutConfiguration(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore08IntervalD0C_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore08IntervalD0C_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore08IntervalC0CGMd, &_s7Combine9PublishedVy11WorkoutCore08IntervalC0CGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t IntervalWorkoutConfiguration.$intervalWorkout.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore08IntervalD0C_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore08IntervalD0C_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore08IntervalC0CGMd, &_s7Combine9PublishedVy11WorkoutCore08IntervalC0CGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*IntervalWorkoutConfiguration.$intervalWorkout.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore08IntervalD0C_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore08IntervalD0C_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore28IntervalWorkoutConfiguration__intervalWorkout;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore08IntervalC0CGMd, &_s7Combine9PublishedVy11WorkoutCore08IntervalC0CGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return IntervalWorkoutConfiguration.$intervalWorkout.modify;
}

uint64_t IntervalWorkoutConfiguration.forceUpdatePublisher.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path getter for IntervalWorkoutConfiguration.forceUpdatePublisher : IntervalWorkoutConfiguration@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for IntervalWorkoutConfiguration.forceUpdatePublisher : IntervalWorkoutConfiguration(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return static Published.subscript.setter();
}

uint64_t IntervalWorkoutConfiguration.forceUpdatePublisher.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

uint64_t (*IntervalWorkoutConfiguration.forceUpdatePublisher.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return IntervalWorkoutConfiguration.forceUpdatePublisher.modify;
}

void IntervalWorkoutConfiguration.intervalWorkout.modify(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t IntervalWorkoutConfiguration.$intervalWorkout.getter(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for IntervalWorkoutConfiguration.$intervalWorkout : IntervalWorkoutConfiguration(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = *a4;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for IntervalWorkoutConfiguration.$forceUpdatePublisher : IntervalWorkoutConfiguration(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t IntervalWorkoutConfiguration.$forceUpdatePublisher.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*IntervalWorkoutConfiguration.$forceUpdatePublisher.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore28IntervalWorkoutConfiguration__forceUpdatePublisher;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return IntervalWorkoutConfiguration.$forceUpdatePublisher.modify;
}

void IntervalWorkoutConfiguration.$intervalWorkout.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

Swift::Int IntervalWorkoutConfiguration.hash.getter()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  Hasher.init()();
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v6, sel_hash);
  MEMORY[0x20F2E7FF0](v3);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  NSObject.hash(into:)();

  return Hasher.finalize()();
}

BOOL IntervalWorkoutConfiguration.isValidConfiguration.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v0 = IntervalWorkout.isValid.getter();

  return v0;
}

id IntervalWorkoutConfiguration.__allocating_init(_:intervalWorkout:uuid:occurrence:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v37 = a2;
  v40 = a1;
  v41 = a4;
  v39 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v34 - v16;
  v35 = *(v11 + 16);
  v38 = &v34 - v16;
  v35(&v34 - v16, a3, v10);
  v18 = objc_allocWithZone(v36);
  v19 = OBJC_IVAR____TtC11WorkoutCore28IntervalWorkoutConfiguration__forceUpdatePublisher;
  v44 = 0;
  Published.init(initialValue:)();
  (*(v6 + 32))(&v18[v19], v9, v5);
  swift_beginAccess();
  v20 = v37;
  v43 = v37;
  type metadata accessor for IntervalWorkout();
  v37 = v20;
  Published.init(initialValue:)();
  swift_endAccess();
  v21 = v17;
  v22 = v35;
  v35(v15, v21, v10);
  *&v18[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v23 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  v24 = type metadata accessor for Date();
  v25 = *(*(v24 - 8) + 56);
  v25(&v18[v23], 1, 1, v24);
  v25(&v18[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v24);
  v26 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
  v27 = type metadata accessor for WorkoutPlan.Route();
  (*(*(v27 - 8) + 56))(&v18[v26], 1, 1, v27);
  (*(v11 + 56))(&v18[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v10);
  v28 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v18[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v29 = v15;
  v22(&v18[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v15, v10);
  *&v18[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v40;
  v18[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 1;
  *&v18[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v41;
  swift_beginAccess();
  *&v18[v28] = 0;
  v18[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v30 = type metadata accessor for WorkoutConfiguration();
  v42.receiver = v18;
  v42.super_class = v30;
  v31 = objc_msgSendSuper2(&v42, sel_init);

  v32 = *(v11 + 8);
  v32(v39, v10);
  v32(v29, v10);
  v32(v38, v10);
  return v31;
}

uint64_t IntervalWorkoutConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore08IntervalD13ConfigurationC10CodingKeys33_9E77B18C4AC995BE6322621A585A71D1LLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore08IntervalD13ConfigurationC10CodingKeys33_9E77B18C4AC995BE6322621A585A71D1LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm_1(a1, a1[3]);
  lazy protocol witness table accessor for type IntervalWorkoutConfiguration.CodingKeys and conformance IntervalWorkoutConfiguration.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v9 = v11[1];
  type metadata accessor for IntervalWorkout();
  lazy protocol witness table accessor for type IntervalWorkout and conformance IntervalWorkout(&lazy protocol witness table cache variable for type IntervalWorkout and conformance IntervalWorkout);
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v1)
  {
    WorkoutConfiguration.encode(to:)(a1);
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t lazy protocol witness table accessor for type IntervalWorkoutConfiguration.CodingKeys and conformance IntervalWorkoutConfiguration.CodingKeys()
{
  result = lazy protocol witness table cache variable for type IntervalWorkoutConfiguration.CodingKeys and conformance IntervalWorkoutConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type IntervalWorkoutConfiguration.CodingKeys and conformance IntervalWorkoutConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntervalWorkoutConfiguration.CodingKeys and conformance IntervalWorkoutConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IntervalWorkoutConfiguration.CodingKeys and conformance IntervalWorkoutConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type IntervalWorkoutConfiguration.CodingKeys and conformance IntervalWorkoutConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntervalWorkoutConfiguration.CodingKeys and conformance IntervalWorkoutConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IntervalWorkoutConfiguration.CodingKeys and conformance IntervalWorkoutConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type IntervalWorkoutConfiguration.CodingKeys and conformance IntervalWorkoutConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntervalWorkoutConfiguration.CodingKeys and conformance IntervalWorkoutConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IntervalWorkoutConfiguration.CodingKeys and conformance IntervalWorkoutConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type IntervalWorkoutConfiguration.CodingKeys and conformance IntervalWorkoutConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntervalWorkoutConfiguration.CodingKeys and conformance IntervalWorkoutConfiguration.CodingKeys);
  }

  return result;
}

char *IntervalWorkoutConfiguration.init(from:)(uint64_t *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore08IntervalD13ConfigurationC10CodingKeys33_9E77B18C4AC995BE6322621A585A71D1LLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore08IntervalD13ConfigurationC10CodingKeys33_9E77B18C4AC995BE6322621A585A71D1LLOGMR);
  v22 = *(v4 - 8);
  v23 = v4;
  v5 = *(v22 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - v11;
  v13 = OBJC_IVAR____TtC11WorkoutCore28IntervalWorkoutConfiguration__forceUpdatePublisher;
  LOBYTE(v27[0]) = 0;
  Published.init(initialValue:)();
  (*(v9 + 32))(&v2[v13], v12, v8);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm_1(a1, a1[3]);
  lazy protocol witness table accessor for type IntervalWorkoutConfiguration.CodingKeys and conformance IntervalWorkoutConfiguration.CodingKeys();
  v24 = v7;
  v15 = v26;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_1Tm_12(a1);
    (*(v9 + 8))(&v2[v13], v8);
    v17 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v18 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for IntervalWorkout();
    lazy protocol witness table accessor for type IntervalWorkout and conformance IntervalWorkout(&lazy protocol witness table cache variable for type IntervalWorkout and conformance IntervalWorkout);
    v16 = v23;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v20 = v27[7];
    swift_beginAccess();
    v27[5] = v20;
    Published.init(initialValue:)();
    swift_endAccess();
    _ss7Decoder_pWOcTm_3(a1, v27);
    v2 = WorkoutConfiguration.init(from:)(v27);
    (*(v22 + 8))(v24, v16);
    __swift_destroy_boxed_opaque_existential_1Tm_12(a1);
  }

  return v2;
}

uint64_t lazy protocol witness table accessor for type IntervalWorkout and conformance IntervalWorkout(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IntervalWorkout();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id IntervalWorkoutConfiguration.isEqual(_:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  _s10Foundation4UUIDVSgWOcTm_1(a1, v21, &_sypSgMd, &_sypSgMR);
  if (!v22)
  {
    _s10Foundation4UUIDVSgWOhTm_3(v21, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v5 = v20;
  type metadata accessor for NSObject();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v6 = v21[0];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v7 = v21[0];
  v8 = static NSObject.== infix(_:_:)();

  if ((v8 & 1) == 0)
  {

    return 0;
  }

  _s10Foundation4UUIDVSgWOcTm_1(a1, v21, &_sypSgMd, &_sypSgMR);
  v9 = v22;
  if (v22)
  {
    v10 = __swift_project_boxed_opaque_existential_1Tm_1(v21, v22);
    v11 = *(v9 - 8);
    v12 = *(v11 + 64);
    MEMORY[0x28223BE20](v10);
    v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v14);
    v15 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v11 + 8))(v14, v9);
    __swift_destroy_boxed_opaque_existential_1Tm_12(v21);
  }

  else
  {
    v15 = 0;
  }

  v19.receiver = v2;
  v19.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v19, sel_isEqual_, v15);
  swift_unknownObjectRelease();

  return v17;
}

uint64_t _s10Foundation4UUIDVSgWOcTm_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s10Foundation4UUIDVSgWOhTm_3(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *__swift_project_boxed_opaque_existential_1Tm_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t IntervalWorkoutConfiguration.isEquivalent(to:)(uint64_t a1)
{
  swift_getObjectType();
  _ss7Decoder_pWOcTm_3(a1, &v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore10Equivalent_pMd, &_s11WorkoutCore10Equivalent_pMR);
  if (!swift_dynamicCast())
  {
    goto LABEL_5;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v3 = v9;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v4 = v9;
  v5 = specialized IntervalWorkout.isEquivalent(to:)(v9);

  if ((v5 & 1) == 0)
  {

LABEL_5:
    v6 = 0;
    return v6 & 1;
  }

  v6 = specialized WorkoutConfiguration.isEquivalent(to:)(v8, v1);

  return v6 & 1;
}

uint64_t _ss7Decoder_pWOcTm_3(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t IntervalWorkoutConfiguration.removeStep(_:from:)(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v4 = v15[0];
  swift_getKeyPath();
  swift_getKeyPath();

  v5 = static Published.subscript.modify();
  v7 = v6;
  v8 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(v6, a1);

  v10 = *v7;
  if (*v7 >> 62)
  {
    if (v10 < 0)
    {
      v14 = *v7;
    }

    result = __CocoaSet.count.getter();
    v11 = result;
    if (result >= v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 >= v8)
    {
LABEL_3:
      specialized Array.replaceSubrange<A>(_:with:)(v8, v11);
      v5(v15, 0);

      IntervalWorkout.cleanupBlockIfNecessary(_:)(a2);

      swift_getKeyPath();
      swift_getKeyPath();
      v12 = static Published.subscript.modify();
      *v13 = !*v13;
      v12(v15, 0);
    }
  }

  __break(1u);
  return result;
}

uint64_t IntervalWorkoutConfiguration.removeSteps(atOffsets:from:)(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v3 = v8[0];
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = static Published.subscript.modify();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A4StepCGMd, &_sSay11WorkoutCore0A4StepCGMR);
  _sSay11WorkoutCore0A4StepCGSayxGSMsWlTm_0(&lazy protocol witness table cache variable for type [WorkoutStep] and conformance [A]);
  _sSay11WorkoutCore0A4StepCGSayxGSMsWlTm_0(&lazy protocol witness table cache variable for type [WorkoutStep] and conformance [A]);
  RangeReplaceableCollection<>.remove(atOffsets:)();
  v4(v8, 0);

  IntervalWorkout.cleanupBlockIfNecessary(_:)(a2);

  swift_getKeyPath();
  swift_getKeyPath();
  v5 = static Published.subscript.modify();
  *v6 = !*v6;
  v5(v8, 0);
}

Swift::Void __swiftcall IntervalWorkoutConfiguration.deleteBlocks(_:)(Swift::OpaquePointer a1)
{
  rawValue = a1._rawValue;
  if (a1._rawValue >> 62)
  {
    goto LABEL_45;
  }

  for (i = *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v3 = 0;
    v4 = 0;
    v29 = rawValue & 0xFFFFFFFFFFFFFF8;
    v30 = rawValue & 0xC000000000000001;
    while (1)
    {
      if (v30)
      {
        v6 = MEMORY[0x20F2E7A20](v3, rawValue);
        v7 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_39;
        }
      }

      else
      {
        if (v3 >= *(v29 + 16))
        {
          goto LABEL_40;
        }

        v6 = *(rawValue + 8 * v3 + 32);

        v7 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_39;
        }
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v8 = v34[0];
      swift_getKeyPath();
      swift_getKeyPath();

      v33 = static Published.subscript.modify();
      v10 = v9;
      v11 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(v9, v6);

      if (*v10 >> 62)
      {
        v12 = __CocoaSet.count.getter();
        v13 = v12 - v11;
        if (v12 < v11)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v12 = *((*v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v13 = v12 - v11;
        if (v12 < v11)
        {
          goto LABEL_41;
        }
      }

      if (v11 < 0)
      {
        goto LABEL_42;
      }

      v31 = v8;
      v32 = v4;
      v14 = v7;
      v15 = i;
      v16 = rawValue;
      v17 = *v10;
      rawValue = *v10 >> 62;
      if (rawValue)
      {
        break;
      }

      if (*((*v10 & 0xFFFFFFFFFFFFFF8) + 0x10) < v12)
      {
        goto LABEL_38;
      }

LABEL_15:
      v18 = __OFSUB__(0, v13);
      v19 = -v13;
      if (v18)
      {
        goto LABEL_43;
      }

      if (rawValue)
      {
        v20 = __CocoaSet.count.getter();
      }

      else
      {
        v20 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v18 = __OFADD__(v20, v19);
      v21 = v20 + v19;
      if (v18)
      {
        goto LABEL_44;
      }

      rawValue = v16;
      v22 = *v10;
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *v10 = v22;
      i = v15;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if ((v22 & 0x8000000000000000) == 0 && (v22 & 0x4000000000000000) == 0)
        {
          v24 = v22 & 0xFFFFFFFFFFFFFF8;
          if (v21 <= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_6;
          }

          goto LABEL_28;
        }
      }

      else if ((v22 & 0x8000000000000000) == 0 && (v22 & 0x4000000000000000) == 0)
      {
        v24 = v22 & 0xFFFFFFFFFFFFFF8;
LABEL_28:
        v25 = *(v24 + 16);
        goto LABEL_5;
      }

      __CocoaSet.count.getter();
LABEL_5:
      *v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_6:
      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v11, v12, 0, type metadata accessor for WorkoutBlock);
      v33(v34, 0);

      ++v3;
      v5 = v14 == v15;
      v4 = v32;
      if (v5)
      {
        goto LABEL_46;
      }
    }

    if (v17 < 0)
    {
      v26 = *v10;
    }

    else
    {
      v26 = *v10 & 0xFFFFFFFFFFFFFF8;
    }

    if (__CocoaSet.count.getter() >= v12)
    {
      goto LABEL_15;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    ;
  }

LABEL_46:
  swift_getKeyPath();
  swift_getKeyPath();
  v27 = static Published.subscript.modify();
  *v28 = !*v28;
  v27(v34, 0);
}

uint64_t IntervalWorkoutConfiguration.__ivar_destroyer()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore28IntervalWorkoutConfiguration__intervalWorkout;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore08IntervalC0CGMd, &_s7Combine9PublishedVy11WorkoutCore08IntervalC0CGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11WorkoutCore28IntervalWorkoutConfiguration__forceUpdatePublisher;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v5 = *(*(v4 - 8) + 8);

  return v5(v0 + v3, v4);
}

id IntervalWorkoutConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static IntervalWorkoutConfiguration.canonical()()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D0A810]) initWithActivityTypeIdentifier:37 isIndoor:0];
  v1 = specialized static IntervalWorkoutConfiguration.canonical(activityType:activityMoveMode:)(v0, 1);

  return v1;
}

void protocol witness for static Canonical.canonical() in conformance IntervalWorkoutConfiguration(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D0A810]) initWithActivityTypeIdentifier:37 isIndoor:0];
  v3 = specialized static IntervalWorkoutConfiguration.canonical(activityType:activityMoveMode:)(v2, 1);

  *a1 = v3;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3 - v6;
  if (__OFSUB__(a3, v6))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = *v5;
  v9 = (v8 + 32 + 16 * result);
  if (v7)
  {
    v10 = *(v8 + 16);
    v11 = __OFSUB__(v10, a2);
    v12 = v10 - a2;
    if (!v11)
    {
      result = &v9[2 * a3];
      v13 = (v8 + 32 + 16 * a2);
      if (result != v13 || result >= v13 + 16 * v12)
      {
        v15 = a3;
        v16 = a5;
        v17 = a4;
        result = memmove(result, v13, 16 * v12);
        a3 = v15;
        a4 = v17;
        a5 = v16;
      }

      v18 = *(v8 + 16);
      v11 = __OFADD__(v18, v7);
      v19 = v18 + v7;
      if (!v11)
      {
        *(v8 + 16) = v19;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v9 = a4;
    v9[1] = a5;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t specialized closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  if (a2 == a3)
  {
    if (result)
    {
      a5(0);
      return swift_arrayInitWithCopy();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFADq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxsAE_pqd__Isgyrzr_AByxGqd__sAE_psAE_pRsd_0_r_0_lIetMggrzo_Tpq511WorkoutCore0I5BlockC_ytTg5074_sSa32withContiguousStorageIfAvailableyqd__Sgqd__SRyxGKXEKlFqd__ACKXEfU_11i7Core0F5K7C_ytTG5ADq_sAE_pRi_zRi0_zRi__Ri0__r0_lyAIytIsgyrzo_Tf1ncn_nTm(uint64_t a1, uint64_t (*a2)(void *, uint64_t), uint64_t a3, uint64_t (*a4)(uint64_t))
{
  AssociatedObject = specialized _ArrayBuffer.getOrAllocateAssociatedObjectBuffer()(a1, a4);
  v6 = AssociatedObject[2];

  return a2(AssociatedObject + 4, v6);
}

void *specialized _ArrayBuffer.getOrAllocateAssociatedObjectBuffer()(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (a1 < 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v4, MEMORY[0x277D84F90]);
  if (AssociatedObject)
  {
    v6 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v4);
    v7 = objc_getAssociatedObject(v4, MEMORY[0x277D84F90]);
    if (v7)
    {
      v6 = v7;
      swift_retain_n();
    }

    else
    {
      v6 = a2(a1);

      objc_setAssociatedObject(v4, MEMORY[0x277D84F90], v6, 1);
    }

    objc_sync_exit(v4);
  }

  return v6;
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, a4, type metadata accessor for WorkoutBlock, partial apply for specialized closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:), specialized _copyCollectionToContiguousArray<A>(_:));
}

{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, a4, type metadata accessor for WorkoutConfiguration, partial apply for specialized closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:), specialized _copyCollectionToContiguousArray<A>(_:));
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, type metadata accessor for WorkoutBlock);
}

{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, type metadata accessor for WorkoutStep);
}

{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, type metadata accessor for WorkoutNotification);
}

{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, type metadata accessor for LocationRequest);
}

{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore23LocationManagerObserver_pMd, &_s11WorkoutCore23LocationManagerObserver_pMR);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = __CocoaSet.count.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = __CocoaSet.count.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, type metadata accessor for WorkoutConfiguration);
}

uint64_t _sSay11WorkoutCore0A4StepCGSayxGSMsWlTm_0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore0A4StepCGMd, &_sSay11WorkoutCore0A4StepCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for WorkoutBlock();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = result - v7;
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = __CocoaSet.count.getter();
    v15 = result - v7;
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = __CocoaSet.count.getter();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = result + v11;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;

    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(void *, uint64_t), uint64_t (*a7)(uint64_t))
{
  v14 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v10 = a4;
  v13 = a3;
  v12 = a2;
  v26 = a6;
  v27 = a7;
  v15 = *v8;
  v8 = (*v8 & 0xFFFFFFFFFFFFFF8);
  v7 = v8 + 4;
  v11 = &v8[a1 + 4];
  a5(0);
  result = swift_arrayDestroy();
  v18 = __OFSUB__(v13, v14);
  v14 = v13 - v14;
  if (v18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v14)
  {
    goto LABEL_17;
  }

  v9 = v15 >> 62;
  if (!(v15 >> 62))
  {
    v19 = v8[2];
    v20 = v19 - v12;
    if (!__OFSUB__(v19, v12))
    {
      goto LABEL_6;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFADq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxsAE_pqd__Isgyrzr_AByxGqd__sAE_psAE_pRsd_0_r_0_lIetMggrzo_Tpq511WorkoutCore0I5BlockC_ytTg5074_sSa32withContiguousStorageIfAvailableyqd__Sgqd__SRyxGKXEKlFqd__ACKXEfU_11i7Core0F5K7C_ytTG5ADq_sAE_pRi_zRi0_zRi__Ri0__r0_lyAIytIsgyrzo_Tf1ncn_nTm(v10, v26, v17, v27);
  }

LABEL_25:
  v24 = __CocoaSet.count.getter();
  v20 = v24 - v12;
  if (__OFSUB__(v24, v12))
  {
    goto LABEL_27;
  }

LABEL_6:
  v21 = (v11 + 8 * v13);
  v22 = &v7[v12];
  if (v21 != v22 || v21 >= &v22[8 * v20])
  {
    memmove(v21, v22, 8 * v20);
  }

  if (v9)
  {
    result = __CocoaSet.count.getter();
  }

  else
  {
    result = v8[2];
  }

  if (__OFADD__(result, v14))
  {
    goto LABEL_28;
  }

  v8[2] = result + v14;
LABEL_17:
  if (v13 < 1)
  {
    return result;
  }

  result = MEMORY[0x28223BE20](result);
  v17 = v25;
  v25[2] = v13;
  v25[3] = v11;
  if (v10 < 0 || (v10 & 0x4000000000000000) != 0)
  {
    return _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFADq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxsAE_pqd__Isgyrzr_AByxGqd__sAE_psAE_pRsd_0_r_0_lIetMggrzo_Tpq511WorkoutCore0I5BlockC_ytTg5074_sSa32withContiguousStorageIfAvailableyqd__Sgqd__SRyxGKXEKlFqd__ACKXEfU_11i7Core0F5K7C_ytTG5ADq_sAE_pRi_zRi0_zRi__Ri0__r0_lyAIytIsgyrzo_Tf1ncn_nTm(v10, v26, v17, v27);
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) == v13)
  {
    return swift_arrayInitWithCopy();
  }

  __break(1u);
  return result;
}

char *specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for WorkoutConfiguration();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = __CocoaSet.count.getter();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = __CocoaSet.count.getter();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_20;
  }

  v9 = *v4;
  v10 = v9 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, a2);
  v14 = v13 - a2;
  if (v11)
  {
    goto LABEL_21;
  }

  result = v10 + 16 * a3;
  v15 = (v9 + 32 + 16 * a2);
  if (result != v15 || result >= v15 + 16 * v14)
  {
    result = memmove(result, v15, 16 * v14);
  }

  v17 = *(v9 + 16);
  v11 = __OFADD__(v17, v12);
  v18 = v17 + v12;
  if (v11)
  {
    goto LABEL_22;
  }

  *(v9 + 16) = v18;
LABEL_13:
  if (a3 < 1)
  {
    return result;
  }

  if (*(a4 + 16) != a3)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  return swift_arrayInitWithCopy();
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 80 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 80 * a3;
  v13 = (v7 + 32 + 80 * a2);
  if (result != v13 || result >= v13 + 80 * v12)
  {
    result = memmove(result, v13, 80 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 16 * result + 16 * a3;
  v10 = (v6 + 32 + 16 * a2);
  if (result != v10 || result >= v10 + 16 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 16 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_syycMd, &_syycMR);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

id specialized static IntervalWorkoutConfiguration.canonical(activityType:activityMoveMode:)(void *a1, uint64_t a2)
{
  v43 = a1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v4 = *(v41 - 1);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v41);
  v7 = &v37 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v39 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v37 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v37 - v16;
  v18 = specialized static IntervalWorkout.canonical(activityType:activityMoveMode:)(a1, a2);
  v44 = v17;
  UUID.init()();
  v42 = specialized Occurrence.__allocating_init(count:)(0);
  v38 = *(v9 + 16);
  v40 = v15;
  v38(v15, v17, v8);
  v19 = objc_allocWithZone(type metadata accessor for IntervalWorkoutConfiguration());
  v20 = OBJC_IVAR____TtC11WorkoutCore28IntervalWorkoutConfiguration__forceUpdatePublisher;
  v47 = 0;
  Published.init(initialValue:)();
  (*(v4 + 32))(&v19[v20], v7, v41);
  swift_beginAccess();
  v46 = v18;
  type metadata accessor for IntervalWorkout();
  v41 = v18;
  Published.init(initialValue:)();
  swift_endAccess();
  v21 = v39;
  v22 = v15;
  v23 = v38;
  v38(v39, v22, v8);
  *&v19[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v24 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  v25 = type metadata accessor for Date();
  v26 = *(*(v25 - 8) + 56);
  v26(&v19[v24], 1, 1, v25);
  v26(&v19[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v25);
  v27 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
  v28 = type metadata accessor for WorkoutPlan.Route();
  (*(*(v28 - 8) + 56))(&v19[v27], 1, 1, v28);
  (*(v9 + 56))(&v19[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v8);
  v29 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v19[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v30 = v21;
  v23(&v19[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v21, v8);
  v31 = v43;
  *&v19[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v43;
  v19[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 1;
  *&v19[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v42;
  swift_beginAccess();
  *&v19[v29] = 0;
  v19[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v32 = type metadata accessor for WorkoutConfiguration();
  v45.receiver = v19;
  v45.super_class = v32;
  v33 = v31;
  v34 = objc_msgSendSuper2(&v45, sel_init);

  v35 = *(v9 + 8);
  v35(v30, v8);
  v35(v40, v8);
  v35(v44, v8);
  return v34;
}

uint64_t type metadata accessor for IntervalWorkoutConfiguration()
{
  result = type metadata singleton initialization cache for IntervalWorkoutConfiguration;
  if (!type metadata singleton initialization cache for IntervalWorkoutConfiguration)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for IntervalWorkoutConfiguration()
{
  type metadata accessor for Published<IntervalWorkout>();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for Published<Bool>();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Published<IntervalWorkout>()
{
  if (!lazy cache variable for type metadata for Published<IntervalWorkout>)
  {
    type metadata accessor for IntervalWorkout();
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<IntervalWorkout>);
    }
  }
}

uint64_t getEnumTagSinglePayload for IntervalWorkoutConfiguration.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for IntervalWorkoutConfiguration.CodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  a4(0);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = __CocoaSet.count.getter();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = __CocoaSet.count.getter();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2)
{
  return specialized closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, *(v2 + 16), *(v2 + 24), type metadata accessor for WorkoutConfiguration);
}

{
  return specialized closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, *(v2 + 16), *(v2 + 24), type metadata accessor for WorkoutBlock);
}

WorkoutCore::AppleExertionScale_optional __swiftcall AppleExertionScale.init(sample:)(HKQuantitySample sample)
{
  v3 = v1;
  _sSo8NSObjectCMaTm_2(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
  v4 = [(objc_class *)sample.super.super.super.isa quantityType];
  _sSo8NSObjectCMaTm_2(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
  v5 = MEMORY[0x20F2E7440](*MEMORY[0x277CCCB68]);
  v6 = static NSObject.== infix(_:_:)();

  if (v6 & 1) != 0 || (v7 = [(objc_class *)sample.super.super.super.isa quantityType], v8 = MEMORY[0x20F2E7440](*MEMORY[0x277CCCCD8]), v9 = static NSObject.== infix(_:_:)(), v7, v8, (v9))
  {
    v20.value.super.isa = [(objc_class *)sample.super.super.super.isa quantity];
    AppleExertionScale.init(quantity:)(v20);

    v11 = v19;
  }

  else
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static WOLog.core);
    v13 = sample.super.super.super.isa;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = [(objc_class *)v13 quantityType];
      *(v16 + 4) = v18;
      *v17 = v18;
      _os_log_impl(&dword_20AEA4000, v14, v15, "Tried to initialize AppleExertionScale with a quantity type of %@", v16, 0xCu);
      outlined destroy of NSObject?(v17);
      MEMORY[0x20F2E9420](v17, -1, -1);
      MEMORY[0x20F2E9420](v16, -1, -1);
    }

    else
    {
    }

    v11 = 11;
  }

  *v3 = v11;
  return result;
}

uint64_t _sSo8NSObjectCMaTm_2(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

WorkoutCore::AppleExertionScale_optional __swiftcall AppleExertionScale.init(quantity:)(HKQuantity_optional quantity)
{
  v2 = v1;
  if (!quantity.value.super.isa)
  {
    if (one-time initialization token for core == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_43;
  }

  isa = quantity.value.super.isa;
  v4 = objc_opt_self();
  v5 = isa;
  v6 = [v4 appleEffortScoreUnit];
  [v5 doubleValueForUnit:v6];
  v8 = v7;

  v9 = round(v8);
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_41;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    swift_once();
LABEL_12:
    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static WOLog.core);
    v5 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_20AEA4000, v5, v13, "Tried to init an AppleExertionScale with nil quantity", v14, 2u);
      MEMORY[0x20F2E9420](v14, -1, -1);
    }

    goto LABEL_38;
  }

  v10 = v9;
  if (v9 <= 4)
  {
    if (v10 <= 1)
    {
      if (!v10)
      {

        v11 = 10;
        goto LABEL_39;
      }

      if (v10 == 1)
      {

        v11 = 0;
        goto LABEL_39;
      }
    }

    else
    {
      switch(v10)
      {
        case 2:

          v11 = 1;
          goto LABEL_39;
        case 3:

          v11 = 2;
          goto LABEL_39;
        case 4:

          v11 = 3;
          goto LABEL_39;
      }
    }

    goto LABEL_33;
  }

  if (v10 > 7)
  {
    switch(v10)
    {
      case 8:

        v11 = 7;
        goto LABEL_39;
      case 9:

        v11 = 8;
        goto LABEL_39;
      case 10:

        v11 = 9;
        goto LABEL_39;
    }

    goto LABEL_33;
  }

  if (v10 == 5)
  {

    v11 = 4;
    goto LABEL_39;
  }

  if (v10 == 6)
  {

    v11 = 5;
    goto LABEL_39;
  }

  if (v10 != 7)
  {
LABEL_33:
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static WOLog.core);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      *(v18 + 4) = v10;
      _os_log_impl(&dword_20AEA4000, v16, v17, "Unable to convert exertion value %ld to AppleExertionScale", v18, 0xCu);
      MEMORY[0x20F2E9420](v18, -1, -1);
    }

LABEL_38:
    v11 = 11;
    goto LABEL_39;
  }

  v11 = 6;
LABEL_39:

  *v2 = v11;
  return result;
}

id AppleExertionScale.quantity.getter()
{
  v1 = *v0;
  v2 = [objc_opt_self() appleEffortScoreUnit];
  AppleExertionScale.rawValue.getter(&v5);
  v3 = [objc_opt_self() quantityWithUnit:v2 doubleValue:v5];

  return v3;
}

id QuickWorkoutSwitchProvider.observers.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type QuickWorkoutSwitchProvider and conformance QuickWorkoutSwitchProvider();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC11WorkoutCore26QuickWorkoutSwitchProvider__observers);

  return v1;
}

id key path getter for QuickWorkoutSwitchProvider.observers : QuickWorkoutSwitchProvider@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type QuickWorkoutSwitchProvider and conformance QuickWorkoutSwitchProvider();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC11WorkoutCore26QuickWorkoutSwitchProvider__observers);
  *a2 = v4;

  return v4;
}

void QuickWorkoutSwitchProvider.observers.setter(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC11WorkoutCore26QuickWorkoutSwitchProvider__observers;
  v5 = *(v1 + OBJC_IVAR____TtC11WorkoutCore26QuickWorkoutSwitchProvider__observers);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11NSHashTableCMd, &_sSo11NSHashTableCMR);
  v6 = v5;
  v7 = static NSObject.== infix(_:_:)();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type QuickWorkoutSwitchProvider and conformance QuickWorkoutSwitchProvider();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t (*QuickWorkoutSwitchProvider._quickWorkoutSwitch.modify(uint64_t a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC11WorkoutCore26QuickWorkoutSwitchProvider__quickWorkoutSwitch;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = *(v1 + v2);
  return QuickWorkoutSwitchProvider._quickWorkoutSwitch.modify;
}

uint64_t QuickWorkoutSwitchProvider._quickWorkoutSwitch.modify(uint64_t a1, char a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(v5 + v4);
  *(v5 + v4) = *(a1 + 24);
  swift_getKeyPath();
  *a1 = v5;
  lazy protocol witness table accessor for type QuickWorkoutSwitchProvider and conformance QuickWorkoutSwitchProvider();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = v6 ^ *(v5 + v4);
  if ((a2 & 1) == 0)
  {
LABEL_14:
    if ((v8 & 1) == 0)
    {
      return result;
    }

    v18 = *(a1 + 8);
    swift_getKeyPath();
    *a1 = v18;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v19 = [*(v18 + OBJC_IVAR____TtC11WorkoutCore26QuickWorkoutSwitchProvider__observers) allObjects];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo28NLQuickWorkoutSwitchObserver_pMd, &_sSo28NLQuickWorkoutSwitchObserver_pMR);
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v11 >> 62)
    {
      v20 = __CocoaSet.count.getter();
      if (!v20)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v20 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v20)
      {
        goto LABEL_32;
      }
    }

    v21 = 0;
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x20F2E7A20](v21, v11);
        v22 = result;
        v23 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (v21 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v22 = *(v11 + 8 * v21 + 32);
        result = swift_unknownObjectRetain();
        v23 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
LABEL_25:
          __break(1u);
          return result;
        }
      }

      v25 = *(a1 + 8);
      v24 = *(a1 + 16);
      swift_getKeyPath();
      *a1 = v25;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      [v22 quickWorkoutSwitchDidChange_];
      swift_unknownObjectRelease();
      ++v21;
      if (v23 == v20)
      {
        goto LABEL_32;
      }
    }
  }

  if (((v6 ^ *(v5 + v4)) & 1) == 0)
  {
    return result;
  }

  v9 = *(a1 + 8);
  swift_getKeyPath();
  *a1 = v9;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = [*(v9 + OBJC_IVAR____TtC11WorkoutCore26QuickWorkoutSwitchProvider__observers) allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo28NLQuickWorkoutSwitchObserver_pMd, &_sSo28NLQuickWorkoutSwitchObserver_pMR);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v11 >> 62)
  {
LABEL_29:
    v12 = __CocoaSet.count.getter();
    if (v12)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
LABEL_5:
      v13 = 0;
      do
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x20F2E7A20](v13, v11);
          v14 = result;
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
LABEL_13:
            __break(1u);
            goto LABEL_14;
          }
        }

        else
        {
          if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

          v14 = *(v11 + 8 * v13 + 32);
          result = swift_unknownObjectRetain();
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            goto LABEL_13;
          }
        }

        v17 = *(a1 + 8);
        v16 = *(a1 + 16);
        swift_getKeyPath();
        *a1 = v17;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        [v14 quickWorkoutSwitchDidChange_];
        swift_unknownObjectRelease();
        ++v13;
      }

      while (v15 != v12);
    }
  }

LABEL_32:
}

uint64_t QuickWorkoutSwitchProvider.quickWorkoutSwitch.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type QuickWorkoutSwitchProvider and conformance QuickWorkoutSwitchProvider();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC11WorkoutCore26QuickWorkoutSwitchProvider__quickWorkoutSwitch);
}

uint64_t QuickWorkoutSwitchProvider.quickWorkoutSwitch.setter(char a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC11WorkoutCore26QuickWorkoutSwitchProvider__quickWorkoutSwitch;
  v4 = *(v1 + OBJC_IVAR____TtC11WorkoutCore26QuickWorkoutSwitchProvider__quickWorkoutSwitch);
  if (v4 != (a1 & 1))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type QuickWorkoutSwitchProvider and conformance QuickWorkoutSwitchProvider();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  *(v1 + OBJC_IVAR____TtC11WorkoutCore26QuickWorkoutSwitchProvider__quickWorkoutSwitch) = a1 & 1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type QuickWorkoutSwitchProvider and conformance QuickWorkoutSwitchProvider();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v4 != *(v1 + v3))
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v7 = [*(v1 + OBJC_IVAR____TtC11WorkoutCore26QuickWorkoutSwitchProvider__observers) allObjects];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo28NLQuickWorkoutSwitchObserver_pMd, &_sSo28NLQuickWorkoutSwitchObserver_pMR);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v8 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v10 = 0;
      while ((v8 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x20F2E7A20](v10, v8);
        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_14;
        }

LABEL_10:
        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        [v11 quickWorkoutSwitchDidChange_];
        swift_unknownObjectRelease();
        ++v10;
        if (v12 == i)
        {
        }
      }

      if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v11 = *(v8 + 8 * v10 + 32);
      swift_unknownObjectRetain();
      v12 = v10 + 1;
      if (!__OFADD__(v10, 1))
      {
        goto LABEL_10;
      }

LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }
  }

  return result;
}

uint64_t key path getter for QuickWorkoutSwitchProvider.quickWorkoutSwitch : QuickWorkoutSwitchProvider@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type QuickWorkoutSwitchProvider and conformance QuickWorkoutSwitchProvider();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC11WorkoutCore26QuickWorkoutSwitchProvider__quickWorkoutSwitch);
  return result;
}

unint64_t lazy protocol witness table accessor for type QuickWorkoutSwitchProvider and conformance QuickWorkoutSwitchProvider()
{
  result = lazy protocol witness table cache variable for type QuickWorkoutSwitchProvider and conformance QuickWorkoutSwitchProvider;
  if (!lazy protocol witness table cache variable for type QuickWorkoutSwitchProvider and conformance QuickWorkoutSwitchProvider)
  {
    type metadata accessor for QuickWorkoutSwitchProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type QuickWorkoutSwitchProvider and conformance QuickWorkoutSwitchProvider);
  }

  return result;
}

uint64_t closure #1 in QuickWorkoutSwitchProvider.quickWorkoutSwitch.setter(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore26QuickWorkoutSwitchProvider__quickWorkoutSwitch;
  v4 = *(a1 + OBJC_IVAR____TtC11WorkoutCore26QuickWorkoutSwitchProvider__quickWorkoutSwitch);
  *(a1 + OBJC_IVAR____TtC11WorkoutCore26QuickWorkoutSwitchProvider__quickWorkoutSwitch) = a2;
  swift_getKeyPath();
  lazy protocol witness table accessor for type QuickWorkoutSwitchProvider and conformance QuickWorkoutSwitchProvider();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = v3;
  if (v4 != *(a1 + v3))
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v6 = [*(a1 + OBJC_IVAR____TtC11WorkoutCore26QuickWorkoutSwitchProvider__observers) allObjects];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo28NLQuickWorkoutSwitchObserver_pMd, &_sSo28NLQuickWorkoutSwitchObserver_pMR);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v7 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v9 = 0;
      while ((v7 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x20F2E7A20](v9, v7);
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_12;
        }

LABEL_8:
        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        [v10 quickWorkoutSwitchDidChange_];
        swift_unknownObjectRelease();
        ++v9;
        if (v11 == i)
        {
        }
      }

      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v10 = *(v7 + 8 * v9 + 32);
      swift_unknownObjectRetain();
      v11 = v9 + 1;
      if (!__OFADD__(v9, 1))
      {
        goto LABEL_8;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }
  }

  return result;
}

void (*QuickWorkoutSwitchProvider.quickWorkoutSwitch.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11WorkoutCore26QuickWorkoutSwitchProvider___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type QuickWorkoutSwitchProvider and conformance QuickWorkoutSwitchProvider();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = QuickWorkoutSwitchProvider._quickWorkoutSwitch.modify(v4);
  return QuickWorkoutSwitchProvider.quickWorkoutSwitch.modify;
}

void QuickWorkoutSwitchProvider.quickWorkoutSwitch.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  v2 = v1[5];
  v3 = v1[6];
  *v1 = v1[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

id QuickWorkoutSwitchProvider.__allocating_init(quickWorkoutSwitch:)(char a1)
{
  v3 = objc_allocWithZone(v1);
  ObservationRegistrar.init()();
  v4 = [objc_opt_self() weakObjectsHashTable];
  *&v3[OBJC_IVAR____TtC11WorkoutCore26QuickWorkoutSwitchProvider__observers] = v4;
  v3[OBJC_IVAR____TtC11WorkoutCore26QuickWorkoutSwitchProvider__quickWorkoutSwitch] = a1;
  v6.receiver = v3;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, sel_init);
}

id QuickWorkoutSwitchProvider.addObserver(_:)(uint64_t a1, SEL *a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type QuickWorkoutSwitchProvider and conformance QuickWorkoutSwitchProvider();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return [*(v2 + OBJC_IVAR____TtC11WorkoutCore26QuickWorkoutSwitchProvider__observers) *a2];
}

void @objc QuickWorkoutSwitchProvider.addObserver(_:)(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type QuickWorkoutSwitchProvider and conformance QuickWorkoutSwitchProvider();
  swift_unknownObjectRetain();
  v7 = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = *&v7[OBJC_IVAR____TtC11WorkoutCore26QuickWorkoutSwitchProvider__observers];
  [v8 *a4];

  swift_unknownObjectRelease();
}

id QuickWorkoutSwitchProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id QuickWorkoutSwitchProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QuickWorkoutSwitchProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void partial apply for closure #1 in QuickWorkoutSwitchProvider.observers.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC11WorkoutCore26QuickWorkoutSwitchProvider__observers);
  *(v1 + OBJC_IVAR____TtC11WorkoutCore26QuickWorkoutSwitchProvider__observers) = v2;
  v4 = v2;
}

BOOL static StandardWorkoutAddWorkoutRow.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + OBJC_IVAR___WOStandardWorkoutAddWorkoutRow_sortingTitle);
  swift_beginAccess();
  v8 = *v3;
  v9 = v3[1];
  v4 = (a2 + OBJC_IVAR___WOStandardWorkoutAddWorkoutRow_sortingTitle);
  swift_beginAccess();
  v6 = *v4;
  v7 = v4[1];
  lazy protocol witness table accessor for type String and conformance String();
  return StringProtocol.localizedStandardCompare<A>(_:)() == -1;
}

BOOL protocol witness for static Comparable.< infix(_:_:) in conformance StandardWorkoutAddWorkoutRow(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = (*a1 + OBJC_IVAR___WOStandardWorkoutAddWorkoutRow_sortingTitle);
  swift_beginAccess();
  v8 = *v3;
  v9 = v3[1];
  v4 = (v2 + OBJC_IVAR___WOStandardWorkoutAddWorkoutRow_sortingTitle);
  swift_beginAccess();
  v6 = *v4;
  v7 = v4[1];
  lazy protocol witness table accessor for type String and conformance String();
  return StringProtocol.localizedStandardCompare<A>(_:)() == -1;
}

unint64_t lazy protocol witness table accessor for type StandardWorkoutAddWorkoutRow and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type StandardWorkoutAddWorkoutRow and conformance NSObject;
  if (!lazy protocol witness table cache variable for type StandardWorkoutAddWorkoutRow and conformance NSObject)
  {
    type metadata accessor for StandardWorkoutAddWorkoutRow();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StandardWorkoutAddWorkoutRow and conformance NSObject);
  }

  return result;
}

uint64_t StandardWorkoutAddWorkoutRow.id.getter()
{
  v1 = OBJC_IVAR___WOStandardWorkoutAddWorkoutRow_activityType;
  swift_beginAccess();
  v2 = [*(v0 + v1) uniqueIdentifier];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void protocol witness for Identifiable.id.getter in conformance StandardWorkoutAddWorkoutRow(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR___WOStandardWorkoutAddWorkoutRow_activityType;
  swift_beginAccess();
  v5 = [*(v3 + v4) uniqueIdentifier];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  *a1 = v6;
  a1[1] = v8;
}

uint64_t WorkoutConfiguration.requiresDisambiguation.getter()
{
  type metadata accessor for MultiSportWorkoutConfiguration();
  if (swift_dynamicCastClass())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v10 = v0;
    static Published.subscript.getter();

    if (v11 >> 62)
    {
LABEL_18:
      v1 = __CocoaSet.count.getter();
    }

    else
    {
      v1 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    for (i = 0; v1 != i; ++i)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v3 = MEMORY[0x20F2E7A20](i);
      }

      else
      {
        if (i >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v3 = *(v11 + 8 * i + 32);
      }

      v4 = v3;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      v5 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
      swift_beginAccess();
      v6 = *&v4[v5];
      v7 = [v6 requiresDisambiguation];

      if (v7)
      {

        return 1;
      }
    }

    return 0;
  }

  else
  {
    v8 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
    swift_beginAccess();
    return [*&v0[v8] requiresDisambiguation];
  }
}

uint64_t MultiSportWorkoutConfiguration.copyWithForcedDisambiguation(uuid:)(char *a1)
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v59 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v52 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 8);
  MEMORY[0x28223BE20](v10);
  KeyPath = v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for shared != -1)
  {
LABEL_51:
    swift_once();
  }

  v15 = WorkoutConfiguration.deserializedCopy(validator:)(static WorkoutConfigurationValidator.shared);
  if (!v15)
  {
    goto LABEL_8;
  }

  v16 = v15;
  v54 = swift_dynamicCastClass();
  if (!v54)
  {

LABEL_8:
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static WOLog.core);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_20AEA4000, v21, v22, "Unable to copy MultiSportWorkoutConfiguration for forced disambiguation", v23, 2u);
      MEMORY[0x20F2E9420](v23, -1, -1);
    }

    goto LABEL_55;
  }

  v52[1] = ObjectType;
  outlined init with copy of UUID?(a1, v9);
  a1 = v11 + 48;
  v17 = *(v11 + 6);
  if (v17(v9, 1, v10) == 1)
  {
    v18 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
    swift_beginAccess();
    (*(v11 + 2))(KeyPath, &v1[v18], v10);
    a1 = v17(v9, 1, v10);
    v19 = v16;
    if (a1 != 1)
    {
      outlined destroy of UUID?(v9);
    }
  }

  else
  {
    (*(v11 + 4))(KeyPath, v9, v10);
    v24 = v16;
  }

  v25 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
  ObjectType = v54;
  swift_beginAccess();
  (*(v11 + 5))(ObjectType + v25, KeyPath, v10);
  swift_endAccess();

  v62 = MEMORY[0x277D84F90];
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v26 = v63;
  if (v63 >> 62)
  {
    v27 = __CocoaSet.count.getter();
    v53 = v16;
    if (v27)
    {
      goto LABEL_15;
    }

LABEL_53:
    v9 = MEMORY[0x277D84F90];
LABEL_54:

    swift_getKeyPath();
    swift_getKeyPath();
    v61 = v9;
    v21 = v53;
    static Published.subscript.setter();
    result = swift_dynamicCastClass();
    if (!result)
    {
      goto LABEL_55;
    }

    return result;
  }

  v27 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v53 = v16;
  if (!v27)
  {
    goto LABEL_53;
  }

LABEL_15:
  v57 = v10;
  v10 = 0;
  v60 = v26 & 0xC000000000000001;
  v55 = v26 & 0xFFFFFFFFFFFFFF8;
  v9 = MEMORY[0x277D84F90];
  v56 = (v11 + 56);
  v58 = v26;
  while (1)
  {
    if (v60)
    {
      v28 = MEMORY[0x20F2E7A20](v10, v26);
    }

    else
    {
      if (v10 >= *(v55 + 16))
      {
        goto LABEL_50;
      }

      v28 = *(v26 + 8 * v10 + 32);
    }

    a1 = v28;
    v29 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    ObjectType = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
    swift_beginAccess();
    v30 = *&a1[ObjectType];
    v11 = a1;
    if (![v30 requiresDisambiguation])
    {

      KeyPath = v11;
      v1 = &v62;
      MEMORY[0x20F2E6F30]();
      if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v39 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      goto LABEL_19;
    }

    v31 = v27;
    v32 = *&a1[ObjectType];
    v21 = v11;
    v33 = v21;
    if ([v32 requiresLocationDisambiguation])
    {
      break;
    }

LABEL_29:
    v36 = *&a1[ObjectType];

    a1 = [v36 requiresSwimmingLocationDisambiguation];
    if (a1)
    {
      ObjectType = v59;
      (*v56)(v59, 1, 1, v57);
      v37 = WorkoutConfiguration.copy(uuid:location:swimmingLocation:isPartOfMultisport:preservingExternalProvider:)(ObjectType, 0, 1, 1, 0, 1, 1);
      outlined destroy of UUID?(ObjectType);
      if (!v37)
      {

LABEL_44:
        v46 = v53;
        if (one-time initialization token for core != -1)
        {
          swift_once();
        }

        v47 = type metadata accessor for Logger();
        __swift_project_value_buffer(v47, static WOLog.core);
        v48 = Logger.logObject.getter();
        v49 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          *v50 = 0;
          _os_log_impl(&dword_20AEA4000, v48, v49, "Unable to copy GoalWorkoutConfiguration for forced swimming location disambiguation", v50, 2u);
          MEMORY[0x20F2E9420](v50, -1, -1);
        }

        return 0;
      }

      type metadata accessor for GoalWorkoutConfiguration();
      v38 = swift_dynamicCastClass();
      if (!v38)
      {

        goto LABEL_44;
      }

      a1 = v38;

      v33 = a1;
    }

    KeyPath = v33;
    v1 = &v62;
    MEMORY[0x20F2E6F30]();
    if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v40 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v27 = v31;
    v26 = v58;
LABEL_19:

    v9 = v62;
    ++v10;
    if (v29 == v27)
    {
      goto LABEL_54;
    }
  }

  v34 = v59;
  (*v56)(v59, 1, 1, v57);
  v35 = WorkoutConfiguration.copy(uuid:location:swimmingLocation:isPartOfMultisport:preservingExternalProvider:)(v34, 3, 0, 0, 1, 1, 1);
  outlined destroy of UUID?(v34);
  if (v35)
  {
    type metadata accessor for GoalWorkoutConfiguration();
    v33 = swift_dynamicCastClass();

    if (!v33)
    {
      goto LABEL_37;
    }

    goto LABEL_29;
  }

  v35 = v21;
LABEL_37:

  v41 = v53;
  if (one-time initialization token for core != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  __swift_project_value_buffer(v42, static WOLog.core);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_20AEA4000, v43, v44, "Unable to copy GoalWorkoutConfiguration for forced location disambiguation", v45, 2u);
    MEMORY[0x20F2E9420](v45, -1, -1);
  }

LABEL_55:
  return 0;
}

uint64_t protocol witness for ForcedDisambiguating.copyWithForcedDisambiguation(uuid:) in conformance MultiSportWorkoutConfiguration@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  result = MultiSportWorkoutConfiguration.copyWithForcedDisambiguation(uuid:)(a1);
  *a2 = result;
  return result;
}

id @objc StandardWorkoutAddWorkoutRow.localizedTitle.getter(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];

  v6 = MEMORY[0x20F2E6C00](v5, v4);

  return v6;
}

uint64_t StandardWorkoutAddWorkoutRow.localizedTitle.getter(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

uint64_t @objc StandardWorkoutAddWorkoutRow.localizedTitle.setter(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = (a1 + *a4);
  swift_beginAccess();
  v10 = v9[1];
  *v9 = v6;
  v9[1] = v8;
}

uint64_t StandardWorkoutAddWorkoutRow.localizedTitle.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;
}

uint64_t key path setter for StandardWorkoutAddWorkoutRow.localizedTitle : StandardWorkoutAddWorkoutRow(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v6;
  v7[1] = v5;
}

uint64_t StandardWorkoutAddWorkoutRow.type.getter()
{
  v1 = OBJC_IVAR___WOStandardWorkoutAddWorkoutRow_type;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t StandardWorkoutAddWorkoutRow.type.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___WOStandardWorkoutAddWorkoutRow_type;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void key path setter for StandardWorkoutAddWorkoutRow.activityType : StandardWorkoutAddWorkoutRow(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___WOStandardWorkoutAddWorkoutRow_activityType;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id StandardWorkoutAddWorkoutRow.activityType.getter()
{
  v1 = OBJC_IVAR___WOStandardWorkoutAddWorkoutRow_activityType;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void StandardWorkoutAddWorkoutRow.activityType.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___WOStandardWorkoutAddWorkoutRow_activityType;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id StandardWorkoutAddWorkoutRow.__allocating_init(activityType:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = specialized StandardWorkoutAddWorkoutRow.init(activityType:)(a1);

  return v4;
}

id StandardWorkoutAddWorkoutRow.init(activityType:)(void *a1)
{
  v2 = specialized StandardWorkoutAddWorkoutRow.init(activityType:)(a1);

  return v2;
}

id StandardWorkoutAddWorkoutRow.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StandardWorkoutAddWorkoutRow.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StandardWorkoutAddWorkoutRow();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id specialized StandardWorkoutAddWorkoutRow.init(activityType:)(void *a1)
{
  *&v1[OBJC_IVAR___WOStandardWorkoutAddWorkoutRow_activityType] = a1;
  *&v1[OBJC_IVAR___WOStandardWorkoutAddWorkoutRow_type] = 0;
  v2 = a1;
  v3 = [v2 localizedName];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = &v1[OBJC_IVAR___WOStandardWorkoutAddWorkoutRow_localizedTitle];
  *v7 = v4;
  v7[1] = v6;
  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  v10 = MEMORY[0x20F2E6C00](0xD00000000000002ALL, 0x800000020B4649A0);
  v11 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v12 = [v9 localizedStringForKey:v10 value:0 table:v11];

  if (!v12)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = MEMORY[0x20F2E6C00](v13);
  }

  v14 = [objc_allocWithZone(MEMORY[0x277CCACA8]) initWithString_];
  v15 = [v14 BOOLValue];

  if (([v2 forceDescriptiveNameSort] & 1) != 0 || v15)
  {
    goto LABEL_7;
  }

  [v2 effectiveTypeIdentifier];
  v2 = FILocalizedNameForAdjectiveOmittedActivityType();
  if (!v2)
  {
    __break(1u);
LABEL_7:
    v2 = [v2 localizedName];
  }

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = &v1[OBJC_IVAR___WOStandardWorkoutAddWorkoutRow_sortingTitle];
  *v19 = v16;
  v19[1] = v18;
  v21.receiver = v1;
  v21.super_class = type metadata accessor for StandardWorkoutAddWorkoutRow();
  return objc_msgSendSuper2(&v21, sel_init);
}

uint64_t keypath_getTm_4@<X0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;
}

uint64_t Apple_Workout_Core_PowerMetricsPublisher.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  v2 = MEMORY[0x277D84F90];
  *(a1 + 8) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs5Int32V_SdTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(a1 + 16) = v2;
  v3 = type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher();
  v4 = a1 + v3[7];
  UnknownStorage.init()();
  v5 = a1 + v3[8];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = a1 + v3[9];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a1 + v3[10];
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = v3[11];
  v9 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(a1 + v8, 1, 1, v9);
}

uint64_t Apple_Workout_Core_PowerMetricsPublisher.currentPower.setter(double a1)
{
  result = type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher();
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t Apple_Workout_Core_PowerMetricsPublisher.averagePower.setter(double a1)
{
  result = type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher();
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t Apple_Workout_Core_PowerMetricsPublisher.thirtySecondAveragePower.setter(double a1)
{
  result = type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher();
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t Apple_Workout_Core_PowerMetricsPublisher.livePowerZones.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher() + 44);
  _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOhTm_1(v1 + v3, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
  outlined init with take of Apple_Workout_Core_LiveZones(a1, v1 + v3);
  v4 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

double Apple_Workout_Core_PowerMetricsPublisher.currentPower.getter()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher() + 32);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

double Apple_Workout_Core_PowerMetricsPublisher.averagePower.getter()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher() + 36);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

double Apple_Workout_Core_PowerMetricsPublisher.thirtySecondAveragePower.getter()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher() + 40);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

BOOL Apple_Workout_Core_PowerMetricsPublisher.hasLivePowerZones.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher();
  outlined init with copy of Apple_Workout_Core_LiveZones?(v0 + *(v5 + 44), v4);
  v6 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOhTm_1(v4, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
  return v7;
}

uint64_t Apple_Workout_Core_PowerMetricsPublisher.livePowerZones.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher();
  outlined init with copy of Apple_Workout_Core_LiveZones?(v1 + *(v7 + 44), v6);
  v8 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Apple_Workout_Core_LiveZones(v6, a1);
  }

  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  v10 = a1 + *(v8 + 24);
  UnknownStorage.init()();
  v11 = a1 + *(v8 + 28);
  *v11 = 0;
  *(v11 + 4) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOhTm_1(v6, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
  }

  return result;
}

uint64_t (*Apple_Workout_Core_PowerMetricsPublisher.currentPower.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher() + 32);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return Apple_Workout_Core_PowerMetricsPublisher.currentPower.modify;
}

Swift::Void __swiftcall Apple_Workout_Core_PowerMetricsPublisher.clearCurrentPower()()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher() + 32);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t (*Apple_Workout_Core_PowerMetricsPublisher.averagePower.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher() + 36);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return Apple_Workout_Core_PowerMetricsPublisher.averagePower.modify;
}

Swift::Void __swiftcall Apple_Workout_Core_PowerMetricsPublisher.clearAveragePower()()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher() + 36);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t (*Apple_Workout_Core_PowerMetricsPublisher.thirtySecondAveragePower.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher() + 40);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return Apple_Workout_Core_PowerMetricsPublisher.thirtySecondAveragePower.modify;
}

uint64_t Apple_Workout_Core_PowerMetricsPublisher.thirtySecondAveragePower.modify(uint64_t result)
{
  v1 = *(result + 8) + *(result + 16);
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

Swift::Void __swiftcall Apple_Workout_Core_PowerMetricsPublisher.clearThirtySecondAveragePower()()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher() + 40);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Apple_Workout_Core_PowerMetricsPublisher.powerMeanDistributionByTime.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t Apple_Workout_Core_PowerMetricsPublisher.powerChartData.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t key path getter for Apple_Workout_Core_PowerMetricsPublisher.livePowerZones : Apple_Workout_Core_PowerMetricsPublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher();
  outlined init with copy of Apple_Workout_Core_LiveZones?(a1 + *(v8 + 44), v7);
  v9 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_LiveZones(v7, a2);
  }

  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = 0;
  v11 = a2 + *(v9 + 24);
  UnknownStorage.init()();
  v12 = a2 + *(v9 + 28);
  *v12 = 0;
  *(v12 + 4) = 1;
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOhTm_1(v7, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_PowerMetricsPublisher.livePowerZones : Apple_Workout_Core_PowerMetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_LiveZones(a1, v8);
  v9 = *(type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher() + 44);
  _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOhTm_1(a2 + v9, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
  outlined init with take of Apple_Workout_Core_LiveZones(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*Apple_Workout_Core_PowerMetricsPublisher.livePowerZones.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher() + 44);
  *(v5 + 12) = v15;
  outlined init with copy of Apple_Workout_Core_LiveZones?(v1 + v15, v8);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    *(v14 + 8) = 0;
    v17 = v14 + *(v9 + 24);
    UnknownStorage.init()();
    v18 = v14 + *(v9 + 28);
    *v18 = 0;
    *(v18 + 4) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOhTm_1(v8, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_LiveZones(v8, v14);
  }

  return Apple_Workout_Core_PowerMetricsPublisher.livePowerZones.modify;
}

void Apple_Workout_Core_PowerMetricsPublisher.livePowerZones.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of Apple_Workout_Core_LiveZones((*a1)[5], v4);
    _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOhTm_1(v9 + v3, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
    outlined init with take of Apple_Workout_Core_LiveZones(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of Apple_Workout_Core_LiveZones(v5);
  }

  else
  {
    _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOhTm_1(v9 + v3, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
    outlined init with take of Apple_Workout_Core_LiveZones(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

Swift::Void __swiftcall Apple_Workout_Core_PowerMetricsPublisher.clearLivePowerZones()()
{
  v1 = *(type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher() + 44);
  _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOhTm_1(v0 + v1, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
  v2 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Workout_Core_PowerMetricsPublisher.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher() + 28);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Workout_Core_PowerMetricsPublisher.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher() + 28);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t static Apple_Workout_Core_PowerMetricsPublisher._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for _protobuf_nameMap != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = __swift_project_value_buffer(v2, static Apple_Workout_Core_PowerMetricsPublisher._protobuf_nameMap);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Apple_Workout_Core_PowerMetricsPublisher.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 3)
      {
        switch(result)
        {
          case 1:
            dispatch thunk of Decoder.decodeSingularBoolField(value:)();
            break;
          case 2:
            v3 = v0;
            v6 = *(type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher() + 32);
            goto LABEL_5;
          case 3:
            v3 = v0;
            v5 = *(type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher() + 36);
            goto LABEL_5;
        }
      }

      else if (result > 5)
      {
        if (result == 6)
        {
          type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement();
          lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutChartDataElement and conformance Apple_Workout_Core_WorkoutChartDataElement(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutChartDataElement and conformance Apple_Workout_Core_WorkoutChartDataElement, type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }

        else if (result == 7)
        {
          closure #7 in Apple_Workout_Core_PowerMetricsPublisher.decodeMessage<A>(decoder:)();
        }
      }

      else
      {
        if (result == 4)
        {
          v3 = v0;
          v4 = *(type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher() + 40);
LABEL_5:
          v0 = v3;
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          goto LABEL_6;
        }

        closure #5 in Apple_Workout_Core_PowerMetricsPublisher.decodeMessage<A>(decoder:)();
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #5 in Apple_Workout_Core_PowerMetricsPublisher.decodeMessage<A>(decoder:)()
{
  type metadata accessor for ProtobufInt32();
  type metadata accessor for ProtobufDouble();
  return dispatch thunk of Decoder.decodeMapField<A, B>(fieldType:value:)();
}

uint64_t closure #7 in Apple_Workout_Core_PowerMetricsPublisher.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher() + 44);
  type metadata accessor for Apple_Workout_Core_LiveZones(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutChartDataElement and conformance Apple_Workout_Core_WorkoutChartDataElement(&lazy protocol witness table cache variable for type Apple_Workout_Core_LiveZones and conformance Apple_Workout_Core_LiveZones, type metadata accessor for Apple_Workout_Core_LiveZones);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Apple_Workout_Core_PowerMetricsPublisher.traverse<A>(visitor:)()
{
  if (*v0 != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
  {
    result = closure #1 in Apple_Workout_Core_PowerMetricsPublisher.traverse<A>(visitor:)(v0);
    if (!v1)
    {
      closure #2 in Apple_Workout_Core_PowerMetricsPublisher.traverse<A>(visitor:)(v0);
      closure #3 in Apple_Workout_Core_PowerMetricsPublisher.traverse<A>(visitor:)(v0);
      if (*(*(v0 + 8) + 16))
      {
        type metadata accessor for ProtobufInt32();
        type metadata accessor for ProtobufDouble();
        dispatch thunk of Visitor.visitMapField<A, B>(fieldType:value:fieldNumber:)();
      }

      if (*(*(v0 + 16) + 16))
      {
        type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement();
        lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutChartDataElement and conformance Apple_Workout_Core_WorkoutChartDataElement(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutChartDataElement and conformance Apple_Workout_Core_WorkoutChartDataElement, type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement);
        dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
      }

      closure #4 in Apple_Workout_Core_PowerMetricsPublisher.traverse<A>(visitor:)(v0);
      v3 = v0 + *(type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher() + 28);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_PowerMetricsPublisher.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher();
  v3 = (a1 + *(result + 32));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #2 in Apple_Workout_Core_PowerMetricsPublisher.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher();
  v3 = (a1 + *(result + 36));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #3 in Apple_Workout_Core_PowerMetricsPublisher.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher();
  v3 = (a1 + *(result + 40));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #4 in Apple_Workout_Core_PowerMetricsPublisher.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v13 - v4;
  v6 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher();
  outlined init with copy of Apple_Workout_Core_LiveZones?(a1 + *(v11 + 44), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOhTm_1(v5, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
  }

  outlined init with take of Apple_Workout_Core_LiveZones(v5, v10);
  lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutChartDataElement and conformance Apple_Workout_Core_WorkoutChartDataElement(&lazy protocol witness table cache variable for type Apple_Workout_Core_LiveZones and conformance Apple_Workout_Core_LiveZones, type metadata accessor for Apple_Workout_Core_LiveZones);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_LiveZones(v10);
}

Swift::Int Apple_Workout_Core_PowerMetricsPublisher.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher();
  lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutChartDataElement and conformance Apple_Workout_Core_WorkoutChartDataElement(&lazy protocol witness table cache variable for type Apple_Workout_Core_PowerMetricsPublisher and conformance Apple_Workout_Core_PowerMetricsPublisher, type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_PowerMetricsPublisher@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  v4 = MEMORY[0x277D84F90];
  *(a2 + 8) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs5Int32V_SdTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(a2 + 16) = v4;
  v5 = a2 + a1[7];
  UnknownStorage.init()();
  v6 = a1[9];
  v7 = a2 + a1[8];
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a2 + v6;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = a1[10];
  v10 = a1[11];
  v11 = a2 + v9;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  v13 = *(*(v12 - 8) + 56);

  return v13(a2 + v10, 1, 1, v12);
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_PowerMetricsPublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_PowerMetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_PowerMetricsPublisher(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_PowerMetricsPublisher;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_PowerMetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutChartDataElement and conformance Apple_Workout_Core_WorkoutChartDataElement(&lazy protocol witness table cache variable for type Apple_Workout_Core_PowerMetricsPublisher and conformance Apple_Workout_Core_PowerMetricsPublisher, type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_Core_PowerMetricsPublisher@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for _protobuf_nameMap != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = __swift_project_value_buffer(v2, static Apple_Workout_Core_PowerMetricsPublisher._protobuf_nameMap);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_PowerMetricsPublisher(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutChartDataElement and conformance Apple_Workout_Core_WorkoutChartDataElement(&lazy protocol witness table cache variable for type Apple_Workout_Core_PowerMetricsPublisher and conformance Apple_Workout_Core_PowerMetricsPublisher, type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_PowerMetricsPublisher()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_PowerMetricsPublisher()
{
  lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutChartDataElement and conformance Apple_Workout_Core_WorkoutChartDataElement(&lazy protocol witness table cache variable for type Apple_Workout_Core_PowerMetricsPublisher and conformance Apple_Workout_Core_PowerMetricsPublisher, type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_PowerMetricsPublisher()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized static Apple_Workout_Core_PowerMetricsPublisher.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v43 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B10_LiveZonesVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v43 - v16;
  if (*a1 != *a2)
  {
    goto LABEL_2;
  }

  v20 = v15;
  v21 = type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher();
  v22 = v21[8];
  v23 = &a1[v22];
  v24 = a1[v22 + 8];
  v25 = &a2[v22];
  v26 = a2[v22 + 8];
  if (v24)
  {
    if (!v26)
    {
      goto LABEL_2;
    }
  }

  else
  {
    if (*v23 != *v25)
    {
      LOBYTE(v26) = 1;
    }

    if (v26)
    {
      goto LABEL_2;
    }
  }

  v27 = v21[9];
  v28 = &a1[v27];
  v29 = a1[v27 + 8];
  v30 = &a2[v27];
  v31 = a2[v27 + 8];
  if (v29)
  {
    if (!v31)
    {
      goto LABEL_2;
    }
  }

  else
  {
    if (*v28 != *v30)
    {
      LOBYTE(v31) = 1;
    }

    if (v31)
    {
      goto LABEL_2;
    }
  }

  v32 = v21[10];
  v33 = &a1[v32];
  v34 = a1[v32 + 8];
  v35 = &a2[v32];
  v36 = a2[v32 + 8];
  if (v34)
  {
    if (!v36)
    {
      goto LABEL_2;
    }
  }

  else
  {
    if (*v33 != *v35)
    {
      LOBYTE(v36) = 1;
    }

    if (v36)
    {
      goto LABEL_2;
    }
  }

  v37 = v21;
  if ((_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZs5Int32V_SdTt1g5(*(a1 + 1), *(a2 + 1)) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_c1_B16ChartDataElementV_Tt1g5(*(a1 + 2), *(a2 + 2)) & 1) == 0)
  {
    goto LABEL_2;
  }

  v38 = v37[11];
  v39 = *(v20 + 48);
  outlined init with copy of Apple_Workout_Core_LiveZones?(&a1[v38], v17);
  outlined init with copy of Apple_Workout_Core_LiveZones?(&a2[v38], &v17[v39]);
  v40 = *(v5 + 48);
  if (v40(v17, 1, v4) == 1)
  {
    if (v40(&v17[v39], 1, v4) == 1)
    {
      _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOhTm_1(v17, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
LABEL_31:
      v42 = v37[7];
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutChartDataElement and conformance Apple_Workout_Core_WorkoutChartDataElement(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v18 & 1;
    }

    goto LABEL_29;
  }

  outlined init with copy of Apple_Workout_Core_LiveZones?(v17, v12);
  if (v40(&v17[v39], 1, v4) == 1)
  {
    outlined destroy of Apple_Workout_Core_LiveZones(v12);
LABEL_29:
    _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOhTm_1(v17, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSg_ADtMR);
    goto LABEL_2;
  }

  outlined init with take of Apple_Workout_Core_LiveZones(&v17[v39], v8);
  v41 = static Apple_Workout_Core_LiveZones.== infix(_:_:)(v12, v8);
  outlined destroy of Apple_Workout_Core_LiveZones(v8);
  outlined destroy of Apple_Workout_Core_LiveZones(v12);
  _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOhTm_1(v17, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
  if (v41)
  {
    goto LABEL_31;
  }

LABEL_2:
  v18 = 0;
  return v18 & 1;
}

uint64_t type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher()
{
  result = type metadata singleton initialization cache for Apple_Workout_Core_PowerMetricsPublisher;
  if (!type metadata singleton initialization cache for Apple_Workout_Core_PowerMetricsPublisher)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for Apple_Workout_Core_PowerMetricsPublisher()
{
  type metadata accessor for [Int32 : Double]();
  if (v0 <= 0x3F)
  {
    type metadata accessor for [Apple_Workout_Core_WorkoutChartDataElement](319, &lazy cache variable for type metadata for [Apple_Workout_Core_WorkoutChartDataElement], type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Double?();
        if (v3 <= 0x3F)
        {
          type metadata accessor for [Apple_Workout_Core_WorkoutChartDataElement](319, &lazy cache variable for type metadata for Apple_Workout_Core_LiveZones?, type metadata accessor for Apple_Workout_Core_LiveZones, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for [Apple_Workout_Core_WorkoutChartDataElement](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOhTm_1(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

double WeatherSummary.coordinate.getter()
{
  result = *(v0 + OBJC_IVAR___NLWeatherSummary_coordinate);
  v2 = *(v0 + OBJC_IVAR___NLWeatherSummary_coordinate + 8);
  return result;
}

void *WeatherSummary.airQualityIndex.getter()
{
  v1 = *(v0 + OBJC_IVAR___NLWeatherSummary_airQualityIndex);
  v2 = v1;
  return v1;
}

uint64_t WeatherSummary.sourceName.getter()
{
  v1 = *(v0 + OBJC_IVAR___NLWeatherSummary_sourceName);
  v2 = *(v0 + OBJC_IVAR___NLWeatherSummary_sourceName + 8);

  return v1;
}

id WeatherSummary.__allocating_init(coordinate:isDaytime:temperature:humidity:condition:airQualityIndex:sourceName:)(char a1, char *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, double a8, double a9, double a10)
{
  v11 = v10;
  v44 = a6;
  v45 = a7;
  v43 = a5;
  v42 = a4;
  v46 = a3;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v42 - v20;
  v22 = objc_allocWithZone(v11);
  v23 = &v22[OBJC_IVAR___NLWeatherSummary_coordinate];
  *v23 = a8;
  v23[1] = a9;
  v22[OBJC_IVAR___NLWeatherSummary_isDaytime] = a1;
  v24 = [objc_opt_self() fahrenheit];
  v47 = a2;
  Measurement<>.converted(to:)();

  Measurement.value.getter();
  v26 = v25;
  v27 = *(v18 + 8);
  v27(v21, v17);
  v28 = objc_opt_self();
  v29 = [v28 degreeFahrenheitUnit];
  v30 = objc_opt_self();
  v31 = [v30 quantityWithUnit:v29 doubleValue:v26];

  *&v22[OBJC_IVAR___NLWeatherSummary_temperature] = v31;
  v32 = [v28 percentUnit];
  v33 = [v30 quantityWithUnit:v32 doubleValue:a10 * 100.0];

  *&v22[OBJC_IVAR___NLWeatherSummary_humidity] = v33;
  if (v43)
  {
    v34 = 0;
  }

  else
  {
    v35 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    v34 = [v35 initWithInteger_];
  }

  *&v22[OBJC_IVAR___NLWeatherSummary_airQualityIndex] = v34;
  v36 = v46;
  *&v22[OBJC_IVAR___NLWeatherSummary_condition] = WeatherCondition.hkCondition.getter();
  v37 = &v22[OBJC_IVAR___NLWeatherSummary_sourceName];
  v38 = v45;
  *v37 = v44;
  v37[1] = v38;
  v48.receiver = v22;
  v48.super_class = v11;
  v39 = objc_msgSendSuper2(&v48, sel_init);
  v40 = type metadata accessor for WeatherCondition();
  (*(*(v40 - 8) + 8))(v36, v40);
  v27(v47, v17);
  return v39;
}

id WeatherSummary.init(coordinate:isDaytime:temperature:humidity:condition:airQualityIndex:sourceName:)(char a1, char *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, double a8, double a9, double a10)
{
  v11 = v10;
  v45 = a6;
  v46 = a7;
  v44 = a5;
  v43 = a4;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = &v11[OBJC_IVAR___NLWeatherSummary_coordinate];
  *v23 = a8;
  v23[1] = a9;
  v11[OBJC_IVAR___NLWeatherSummary_isDaytime] = a1;
  v24 = [objc_opt_self() fahrenheit];
  v47 = a2;
  Measurement<>.converted(to:)();

  Measurement.value.getter();
  v26 = v25;
  v27 = *(v19 + 8);
  v27(v22, v18);
  v28 = objc_opt_self();
  v29 = [v28 degreeFahrenheitUnit];
  v30 = objc_opt_self();
  v31 = [v30 quantityWithUnit:v29 doubleValue:v26];

  *&v11[OBJC_IVAR___NLWeatherSummary_temperature] = v31;
  v32 = [v28 percentUnit];
  v33 = [v30 quantityWithUnit:v32 doubleValue:a10 * 100.0];

  *&v11[OBJC_IVAR___NLWeatherSummary_humidity] = v33;
  if (v44)
  {
    v34 = 0;
  }

  else
  {
    v35 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    v34 = [v35 initWithInteger_];
  }

  *&v11[OBJC_IVAR___NLWeatherSummary_airQualityIndex] = v34;
  *&v11[OBJC_IVAR___NLWeatherSummary_condition] = WeatherCondition.hkCondition.getter();
  v36 = &v11[OBJC_IVAR___NLWeatherSummary_sourceName];
  v37 = v46;
  *v36 = v45;
  v36[1] = v37;
  v38 = type metadata accessor for WeatherSummary();
  v48.receiver = v11;
  v48.super_class = v38;
  v39 = objc_msgSendSuper2(&v48, sel_init);
  v40 = type metadata accessor for WeatherCondition();
  (*(*(v40 - 8) + 8))(a3, v40);
  v27(v47, v18);
  return v39;
}

uint64_t WeatherCondition.hkCondition.getter()
{
  v1 = v0;
  v2 = type metadata accessor for WeatherCondition();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277CE32F8])
  {
    return 20;
  }

  if (v7 == *MEMORY[0x277CE3220])
  {
    return 11;
  }

  if (v7 == *MEMORY[0x277CE3228])
  {
    return 19;
  }

  if (v7 == *MEMORY[0x277CE32D8])
  {
    return 8;
  }

  if (v7 == *MEMORY[0x277CE32B0])
  {
    return 1;
  }

  if (v7 == *MEMORY[0x277CE32E0])
  {
    return 5;
  }

  if (v7 == *MEMORY[0x277CE32F0])
  {
    return 29;
  }

  if (v7 == *MEMORY[0x277CE3300])
  {
    return 17;
  }

  if (v7 == *MEMORY[0x277CE32B8])
  {
    return 6;
  }

  if (v7 == *MEMORY[0x277CE3270])
  {
    return 23;
  }

  if (v7 == *MEMORY[0x277CE3240])
  {
    return 24;
  }

  if (v7 == *MEMORY[0x277CE32E8])
  {
    return 13;
  }

  if (v7 == *MEMORY[0x277CE3290])
  {
    return 21;
  }

  if (v7 == *MEMORY[0x277CE3298])
  {
    return 7;
  }

  if (v7 == *MEMORY[0x277CE3308])
  {
    return 31;
  }

  if (v7 == *MEMORY[0x277CE3310])
  {
    return 20;
  }

  if (v7 == *MEMORY[0x277CE3288])
  {
    return 12;
  }

  if (v7 == *MEMORY[0x277CE3318])
  {
    return 38;
  }

  if (v7 == *MEMORY[0x277CE3278])
  {
    return 33;
  }

  if (v7 == *MEMORY[0x277CE3230])
  {
    return 1;
  }

  if (v7 == *MEMORY[0x277CE3248])
  {
    return 4;
  }

  if (v7 == *MEMORY[0x277CE3250])
  {
    return 3;
  }

  if (v7 == *MEMORY[0x277CE32A0])
  {
    return 31;
  }

  if (v7 == *MEMORY[0x277CE3280])
  {
    return 34;
  }

  if (v7 == *MEMORY[0x277CE32C0])
  {
    return 22;
  }

  if (v7 == *MEMORY[0x277CE32C8])
  {
    return 10;
  }

  if (v7 == *MEMORY[0x277CE32A8])
  {
    return 18;
  }

  if (v7 == *MEMORY[0x277CE3258])
  {
    return 36;
  }

  if (v7 == *MEMORY[0x277CE3238])
  {
    return 17;
  }

  if (v7 == *MEMORY[0x277CE3218])
  {
    return 31;
  }

  if (v7 == *MEMORY[0x277CE3260])
  {
    return 35;
  }

  if (v7 == *MEMORY[0x277CE3268])
  {
    return 37;
  }

  if (v7 == *MEMORY[0x277CE32D0])
  {
    return 8;
  }

  if (v7 == *MEMORY[0x277CE3320])
  {
    return 28;
  }

  (*(v3 + 8))(v6, v2);
  return 0;
}

uint64_t WeatherSummary.description.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(112);
  MEMORY[0x20F2E6D80](0x616E6964726F6F63, 0xEC000000203A6574);
  v2 = *(v0 + OBJC_IVAR___NLWeatherSummary_coordinate);
  v3 = *(v0 + OBJC_IVAR___NLWeatherSummary_coordinate + 8);
  v4 = CLLocationCoordinate2D.logString.getter();
  MEMORY[0x20F2E6D80](v4);

  MEMORY[0x20F2E6D80](0x747961447369202CLL, 0xED0000203A656D69);
  if (*(v0 + OBJC_IVAR___NLWeatherSummary_isDaytime))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___NLWeatherSummary_isDaytime))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x20F2E6D80](v5, v6);

  MEMORY[0x20F2E6D80](0x7265706D6574202CLL, 0xEF203A6572757461);
  v7 = [*(v0 + OBJC_IVAR___NLWeatherSummary_temperature) description];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  MEMORY[0x20F2E6D80](v8, v10);

  MEMORY[0x20F2E6D80](0x6964696D7568202CLL, 0xEC000000203A7974);
  v11 = [*(v1 + OBJC_IVAR___NLWeatherSummary_humidity) description];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  MEMORY[0x20F2E6D80](v12, v14);

  MEMORY[0x20F2E6D80](0x7469646E6F63202CLL, 0xED0000203A6E6F69);
  v18 = *(v1 + OBJC_IVAR___NLWeatherSummary_condition);
  type metadata accessor for _HKPrivateWeatherCondition(0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x20F2E6D80](0xD000000000000013, 0x800000020B464A40);
  v19 = *(v1 + OBJC_IVAR___NLWeatherSummary_airQualityIndex);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSNumberCSgMd, &_sSo8NSNumberCSgMR);
  v15 = Optional.description.getter();
  MEMORY[0x20F2E6D80](v15);

  MEMORY[0x20F2E6D80](0x656372756F73202CLL, 0xEE00203A656D614ELL);
  v20 = *(v1 + OBJC_IVAR___NLWeatherSummary_sourceName);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v16 = Optional.description.getter();
  MEMORY[0x20F2E6D80](v16);

  return 0;
}

unint64_t CLLocationCoordinate2D.logString.getter()
{
  Double.write<A>(to:)();
  MEMORY[0x20F2E6D80](8236, 0xE200000000000000);
  Double.write<A>(to:)();
  if (one-time initialization token for isInternal != -1)
  {
    swift_once();
  }

  if ((static CLLocationCoordinate2D.isInternal & 1) == 0)
  {
    MEMORY[0x20F2E6E10]();

    dispatch thunk of CustomStringConvertible.description.getter();
  }

  MEMORY[0x20F2E6D80]();

  MEMORY[0x20F2E6D80](62, 0xE100000000000000);
  return 0xD000000000000019;
}

id WeatherSummary.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WeatherSummaryManager.__allocating_init(withLocation:delegate:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR___NLWeatherSummaryManager_location] = a1;
  swift_unknownObjectWeakAssign();
  v7.receiver = v3;
  v7.super_class = v1;
  v4 = a1;
  v5 = objc_msgSendSuper2(&v7, sel_init);

  swift_unknownObjectRelease();
  return v5;
}

id WeatherSummaryManager.init(withLocation:delegate:)(void *a1)
{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___NLWeatherSummaryManager_location] = a1;
  swift_unknownObjectWeakAssign();
  v6.receiver = v1;
  v6.super_class = type metadata accessor for WeatherSummaryManager();
  v3 = a1;
  v4 = objc_msgSendSuper2(&v6, sel_init);

  swift_unknownObjectRelease();
  return v4;
}

Swift::Void __swiftcall WeatherSummaryManager.fetchSummary()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v8 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;
  v7 = v0;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in WeatherSummaryManager.fetchSummary(), v6);
}

uint64_t closure #1 in WeatherSummaryManager.fetchSummary()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v5 = type metadata accessor for WeatherCondition();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v7 = *(v6 + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);
  v4[15] = v8;
  v9 = *(v8 - 8);
  v4[16] = v9;
  v10 = *(v9 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WeatherKit0A5QueryVyAA10AirQualityVSgGMd, &_s10WeatherKit0A5QueryVyAA10AirQualityVSgGMR);
  v4[19] = v11;
  v12 = *(v11 - 8);
  v4[20] = v12;
  v13 = *(v12 + 64) + 15;
  v4[21] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WeatherKit0A5QueryVyAA07CurrentA0VGMd, &_s10WeatherKit0A5QueryVyAA07CurrentA0VGMR);
  v4[22] = v14;
  v15 = *(v14 - 8);
  v4[23] = v15;
  v16 = *(v15 + 64) + 15;
  v4[24] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WeatherKit10AirQualityVSgMd, &_s10WeatherKit10AirQualityVSgMR);
  v4[25] = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v19 = type metadata accessor for CurrentWeather();
  v4[30] = v19;
  v20 = *(v19 - 8);
  v4[31] = v20;
  v21 = *(v20 + 64) + 15;
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in WeatherSummaryManager.fetchSummary(), 0, 0);
}

uint64_t closure #1 in WeatherSummaryManager.fetchSummary()()
{
  v31 = v0;
  v1 = v0[10];
  v2 = OBJC_IVAR___NLWeatherSummaryManager_location;
  [*(v1 + OBJC_IVAR___NLWeatherSummaryManager_location) coordinate];
  v0[37] = v3;
  v0[38] = v4;
  if (one-time initialization token for workouts != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v0[39] = __swift_project_value_buffer(v5, static Logger.workouts);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v30 = v10;
    *v8 = 136315394;
    v11 = CLLocationCoordinate2D.logString.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v30);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2112;
    v14 = [objc_opt_self() currentThread];
    *(v8 + 14) = v14;
    *v9 = v14;
    _os_log_impl(&dword_20AEA4000, v6, v7, "[weather] Fetching current weather for %s, thread: %@.", v8, 0x16u);
    outlined destroy of AirQuality?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x20F2E9420](v10, -1, -1);
    MEMORY[0x20F2E9420](v8, -1, -1);
  }

  v15 = v0[30];
  v17 = v0[24];
  v16 = v0[25];
  v18 = v0[21];
  type metadata accessor for WeatherService();
  v0[40] = static WeatherService.shared.getter();
  v19 = *(v1 + v2);
  v0[41] = v19;
  v20 = v19;
  static WeatherQuery.current.getter();
  static WeatherQuery.airQuality.getter();
  v21 = *(MEMORY[0x277CE3208] + 4);
  v22 = swift_task_alloc();
  v0[42] = v22;
  *v22 = v0;
  v22[1] = closure #1 in WeatherSummaryManager.fetchSummary();
  v23 = v0[36];
  v24 = v0[29];
  v25 = v0[30];
  v26 = v0[24];
  v27 = v0[25];
  v28 = v0[21];

  return MEMORY[0x282135628](v23, v24, v20, v26, v28, v25, v27);
}

{
  v2 = *(*v1 + 336);
  v3 = *(*v1 + 328);
  v4 = *(*v1 + 320);
  v5 = *(*v1 + 192);
  v6 = *(*v1 + 184);
  v7 = *(*v1 + 176);
  v8 = *(*v1 + 168);
  v9 = *(*v1 + 160);
  v10 = *(*v1 + 152);
  v13 = *v1;
  *(*v1 + 344) = v0;

  (*(v9 + 8))(v8, v10);
  (*(v6 + 8))(v5, v7);
  if (v0)
  {
    v11 = closure #1 in WeatherSummaryManager.fetchSummary();
  }

  else
  {
    v11 = closure #1 in WeatherSummaryManager.fetchSummary();
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

{
  v142 = v0;
  v137 = *(v0 + 312);
  v1 = *(v0 + 288);
  v3 = *(v0 + 264);
  v2 = *(v0 + 272);
  v4 = *(v0 + 256);
  v5 = *(v0 + 232);
  v6 = *(v0 + 240);
  v7 = *(v0 + 224);
  v8 = *(*(v0 + 248) + 16);
  v8(*(v0 + 280), v1, v6);
  v8(v2, v1, v6);
  v8(v3, v1, v6);
  v8(v4, v1, v6);
  outlined init with copy of AirQuality?(v5, v7);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v13 = *(v0 + 272);
  v12 = *(v0 + 280);
  v14 = *(v0 + 264);
  v16 = *(v0 + 240);
  v15 = *(v0 + 248);
  v17 = *(v0 + 224);
  if (v11)
  {
    v131 = v10;
    log = v9;
    v138 = *(v0 + 256);
    v125 = *(v0 + 216);
    v18 = *(v0 + 144);
    v120 = *(v0 + 272);
    v20 = *(v0 + 120);
    v19 = *(v0 + 128);
    v123 = *(v0 + 96);
    v121 = *(v0 + 112);
    v122 = *(v0 + 88);
    v124 = *(v0 + 224);
    v21 = swift_slowAlloc();
    v128 = swift_slowAlloc();
    v141 = v128;
    *v21 = 136316418;
    CurrentWeather.temperature.getter();
    _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_8(&lazy protocol witness table cache variable for type Measurement<NSUnitTemperature> and conformance Measurement<A>, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v119 = v14;
    v24 = v23;
    (*(v19 + 8))(v18, v20);
    v25 = *(v15 + 8);
    v25(v12, v16);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v141);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2048;
    CurrentWeather.humidity.getter();
    v28 = v27;
    v25(v120, v16);
    *(v21 + 14) = v28;
    *(v21 + 22) = 2080;
    CurrentWeather.condition.getter();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_7(&lazy protocol witness table cache variable for type WeatherCondition and conformance WeatherCondition, MEMORY[0x277CE3328]);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    (*(v123 + 8))(v121, v122);
    v25(v119, v16);
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v141);

    *(v21 + 24) = v32;
    *(v21 + 32) = 1024;
    v33 = v138;
    LODWORD(v32) = CurrentWeather.isDaylight.getter() & 1;
    v139 = v25;
    v25(v33, v16);
    *(v21 + 34) = v32;
    *(v21 + 38) = 2080;
    outlined init with copy of AirQuality?(v124, v125);
    v34 = type metadata accessor for AirQuality();
    v35 = *(v34 - 8);
    v36 = (*(v35 + 48))(v125, 1, v34);
    v37 = *(v0 + 216);
    if (v36 == 1)
    {
      outlined destroy of AirQuality?(*(v0 + 216), &_s10WeatherKit10AirQualityVSgMd, &_s10WeatherKit10AirQualityVSgMR);
      v38 = 0;
    }

    else
    {
      v38 = AirQuality.index.getter();
      (*(v35 + 8))(v37, v34);
    }

    v40 = v36 == 1;
    v42 = *(v0 + 296);
    v41 = *(v0 + 304);
    v43 = *(v0 + 224);
    *(v0 + 56) = v38;
    *(v0 + 64) = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
    v44 = Optional.description.getter();
    v46 = v45;
    outlined destroy of AirQuality?(v43, &_s10WeatherKit10AirQualityVSgMd, &_s10WeatherKit10AirQualityVSgMR);
    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, &v141);

    *(v21 + 40) = v47;
    *(v21 + 48) = 2080;
    v48 = CLLocationCoordinate2D.logString.getter();
    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, &v141);

    *(v21 + 50) = v50;
    _os_log_impl(&dword_20AEA4000, log, v131, "[weather] Fetched current weather (temperature: %s, humidity: %f, condition: %s, isDaylight: %{BOOL}d, airQualityIndex: %s) for %s.", v21, 0x3Au);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v128, -1, -1);
    MEMORY[0x20F2E9420](v21, -1, -1);
  }

  else
  {
    v39 = *(v15 + 8);
    v39(*(v0 + 256), *(v0 + 240));

    outlined destroy of AirQuality?(v17, &_s10WeatherKit10AirQualityVSgMd, &_s10WeatherKit10AirQualityVSgMR);
    v39(v14, v16);
    v39(v13, v16);
    v139 = v39;
    v39(v12, v16);
  }

  v51 = *(v0 + 288);
  v52 = *(v0 + 232);
  v53 = *(v0 + 208);
  v54 = *(v0 + 136);
  v55 = *(v0 + 104);
  v56 = CurrentWeather.isDaylight.getter();
  CurrentWeather.temperature.getter();
  CurrentWeather.humidity.getter();
  v58 = v57;
  CurrentWeather.condition.getter();
  outlined init with copy of AirQuality?(v52, v53);
  v59 = type metadata accessor for AirQuality();
  v60 = *(v59 - 8);
  v61 = (*(v60 + 48))(v53, 1, v59);
  v62 = *(v0 + 208);
  loga = v61;
  if (v61 == 1)
  {
    outlined destroy of AirQuality?(v62, &_s10WeatherKit10AirQualityVSgMd, &_s10WeatherKit10AirQualityVSgMR);
    v63 = 0;
  }

  else
  {
    v64 = AirQuality.index.getter();
    (*(v60 + 8))(v62, v59);
    v63 = v64;
  }

  v66 = *(v0 + 296);
  v65 = *(v0 + 304);
  v67 = *(v0 + 136);
  v68 = *(v0 + 144);
  v70 = *(v0 + 120);
  v69 = *(v0 + 128);
  v71 = *MEMORY[0x277CCE278];
  v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v129 = v73;
  v132 = v72;
  v74 = type metadata accessor for WeatherSummary();
  v75 = objc_allocWithZone(v74);
  v76 = &v75[OBJC_IVAR___NLWeatherSummary_coordinate];
  *v76 = v66;
  v76[1] = v65;
  v75[OBJC_IVAR___NLWeatherSummary_isDaytime] = v56 & 1;
  v77 = [objc_opt_self() fahrenheit];
  Measurement<>.converted(to:)();

  Measurement.value.getter();
  v79 = v78;
  v126 = *(v69 + 8);
  v126(v68, v70);
  v80 = objc_opt_self();
  v81 = [v80 degreeFahrenheitUnit];
  v82 = objc_opt_self();
  v83 = [v82 quantityWithUnit:v81 doubleValue:v79];

  *&v75[OBJC_IVAR___NLWeatherSummary_temperature] = v83;
  v84 = [v80 percentUnit];
  v85 = [v82 quantityWithUnit:v84 doubleValue:v58 * 100.0];

  *&v75[OBJC_IVAR___NLWeatherSummary_humidity] = v85;
  if (loga == 1)
  {
    v86 = 0;
  }

  else
  {
    v86 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  }

  v87 = *(v0 + 312);
  v88 = *(v0 + 136);
  v89 = *(v0 + 120);
  v91 = *(v0 + 96);
  v90 = *(v0 + 104);
  v92 = *(v0 + 88);
  *&v75[OBJC_IVAR___NLWeatherSummary_airQualityIndex] = v86;
  *&v75[OBJC_IVAR___NLWeatherSummary_condition] = WeatherCondition.hkCondition.getter();
  v93 = &v75[OBJC_IVAR___NLWeatherSummary_sourceName];
  *v93 = v132;
  v93[1] = v129;
  *(v0 + 40) = v75;
  *(v0 + 48) = v74;
  v94 = objc_msgSendSuper2((v0 + 40), sel_init);
  (*(v91 + 8))(v90, v92);
  v126(v88, v89);
  v95 = v94;
  v96 = Logger.logObject.getter();
  v97 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    *v98 = 138412290;
    *(v98 + 4) = v95;
    *v99 = v95;
    v100 = v95;
    _os_log_impl(&dword_20AEA4000, v96, v97, "[weather] Fetched current weather, summary (%@).", v98, 0xCu);
    outlined destroy of AirQuality?(v99, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v99, -1, -1);
    MEMORY[0x20F2E9420](v98, -1, -1);
  }

  v101 = *(v0 + 288);
  v102 = *(v0 + 240);
  v103 = *(v0 + 248);
  v104 = *(v0 + 232);
  v105 = *(v0 + 80);
  v106 = v95;
  WeatherSummaryManager.notifyDelegate(with:)(v95);

  outlined destroy of AirQuality?(v104, &_s10WeatherKit10AirQualityVSgMd, &_s10WeatherKit10AirQualityVSgMR);
  v139(v101, v102);
  v108 = *(v0 + 280);
  v107 = *(v0 + 288);
  v110 = *(v0 + 264);
  v109 = *(v0 + 272);
  v111 = *(v0 + 256);
  v113 = *(v0 + 224);
  v112 = *(v0 + 232);
  v115 = *(v0 + 208);
  v114 = *(v0 + 216);
  v116 = *(v0 + 192);
  v127 = *(v0 + 168);
  v130 = *(v0 + 144);
  v133 = *(v0 + 136);
  logb = *(v0 + 112);
  v140 = *(v0 + 104);

  v117 = *(v0 + 8);

  return v117();
}

{
  v35 = v0;
  v1 = v0[43];
  v2 = v0[39];
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[43];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v34 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[2];
    v9 = v0[3];
    v11 = v0[4];
    v12 = Error.localizedDescription.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v34);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_20AEA4000, v4, v5, "[weather] Error fetching current weather: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  v15 = v0[43];
  v16 = v0[10];
  WeatherSummaryManager.notifyDelegate(with:)(0);

  v18 = v0[35];
  v17 = v0[36];
  v20 = v0[33];
  v19 = v0[34];
  v21 = v0[32];
  v23 = v0[28];
  v22 = v0[29];
  v25 = v0[26];
  v24 = v0[27];
  v26 = v0[24];
  v29 = v0[21];
  v30 = v0[18];
  v31 = v0[17];
  v32 = v0[14];
  v33 = v0[13];

  v27 = v0[1];

  return v27();
}

uint64_t WeatherSummaryManager.notifyDelegate(with:)(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v3 - 8);
  v4 = *(v18 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v7 = *(v17 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v17);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue();
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in WeatherSummaryManager.notifyDelegate(with:);
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_54;
  v13 = _Block_copy(aBlock);
  v14 = a1;
  v15 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_7(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_8(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v10, v6, v13);
  _Block_release(v13);

  (*(v18 + 8))(v6, v3);
  return (*(v7 + 8))(v10, v17);
}

void *closure #1 in WeatherSummaryManager.notifyDelegate(with:)(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result manager:a1 updatedSummary:a2];

    return swift_unknownObjectRelease();
  }

  return result;
}

id WeatherSummary.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t one-time initialization function for workouts()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.workouts);
  __swift_project_value_buffer(v0, static Logger.workouts);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for isInternal()
{
  result = os_variant_has_internal_diagnostics();
  static CLLocationCoordinate2D.isInternal = result;
  return result;
}

unint64_t protocol witness for CustomLogStringConvertible.logString.getter in conformance CLLocationCoordinate2D()
{
  v1 = *v0;
  v2 = v0[1];
  return CLLocationCoordinate2D.logString.getter();
}

void specialized WeatherSummaryManager.cancelFetch()()
{
  if (one-time initialization token for workouts != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.workouts);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_20AEA4000, oslog, v1, "[weather] Asked to cancel current weather fetch.", v2, 2u);
    MEMORY[0x20F2E9420](v2, -1, -1);
  }
}

uint64_t partial apply for closure #1 in WeatherSummaryManager.fetchSummary()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in WeatherSummaryManager.fetchSummary();

  return closure #1 in WeatherSummaryManager.fetchSummary()(a1, v4, v5, v6);
}

uint64_t objectdestroyTm_5()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}