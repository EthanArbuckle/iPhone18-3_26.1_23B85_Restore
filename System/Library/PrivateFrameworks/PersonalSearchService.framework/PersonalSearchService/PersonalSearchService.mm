uint64_t EchoServiceImp.handle(_:progressReporter:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 8);

  return v6(a1, a2);
}

uint64_t protocol witness for ServiceProtocol.init() in conformance EchoServiceImp@<X0>(uint64_t *a1@<X8>)
{
  result = EchoServiceImp.__allocating_init()();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ServiceProtocol.handle(_:) in conformance EchoServiceImp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D3A310] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for ServiceProtocol.handle(_:) in conformance EchoServiceImp;

  return MEMORY[0x28219B198](a1, a2, a3, a4);
}

uint64_t protocol witness for ServiceProtocol.handle(_:) in conformance EchoServiceImp()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t protocol witness for ServiceProtocol.handle(_:progressReporter:) in conformance EchoServiceImp(uint64_t a1, uint64_t *a2)
{
  *(v2 + 16) = a1;
  v4 = *a2;
  v3 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = protocol witness for ServiceProtocol.handle(_:progressReporter:) in conformance EchoServiceImp;

  return EchoServiceImp.handle(_:progressReporter:)(v4, v3);
}

uint64_t protocol witness for ServiceProtocol.handle(_:progressReporter:) in conformance EchoServiceImp(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 24);
  v6 = *(*v2 + 16);
  v9 = *v2;

  *v6 = a1;
  v6[1] = a2;
  v7 = *(v9 + 8);

  return v7();
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

void type metadata accessor for os_unfair_lock_s()
{
  if (!lazy cache variable for type metadata for os_unfair_lock_s)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for os_unfair_lock_s);
    }
  }
}

uint64_t PersonalSearchResult.init(_:locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v62 = v56 - v6;
  v7 = type metadata accessor for SearchResultItem();
  v8 = OUTLINED_FUNCTION_1(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8, v13);
  OUTLINED_FUNCTION_3();
  v16 = v15 - v14;
  v17 = type metadata accessor for AppEntityItem();
  v18 = OUTLINED_FUNCTION_1(v17);
  v59 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18, v22);
  OUTLINED_FUNCTION_3();
  v58 = v24 - v23;

  v25 = SearchResult.csItem.getter();
  v26 = [v25 attributeSet];

  v27 = [v26 attributeForKey_];
  if (v27)
  {
    _bridgeAnyObjectToAny(_:)();
    v28 = swift_unknownObjectRelease();
  }

  else
  {
    v66 = 0u;
    v67 = 0u;
  }

  v68 = v66;
  v69 = v67;
  if (*(&v67 + 1))
  {
    if (OUTLINED_FUNCTION_14(v28, v29, v30, MEMORY[0x277D837D0]))
    {
      v31 = v65;
      v61 = v64;
      goto LABEL_9;
    }
  }

  else
  {
    outlined destroy of Any?(&v68, &_sypSgMd, &_sypSgMR);
  }

  v61 = 0;
  v31 = 0xE000000000000000;
LABEL_9:
  v60 = v31;
  v32 = SearchResult.csItem.getter();
  v33 = [v32 attributeSet];

  v34 = MEMORY[0x25F8B3DB0](0xD000000000000018, 0x800000025E473200);
  v35 = [v33 attributeForKey_];

  if (v35)
  {
    _bridgeAnyObjectToAny(_:)();
    v36 = swift_unknownObjectRelease();
  }

  else
  {
    v66 = 0u;
    v67 = 0u;
  }

  v68 = v66;
  v69 = v67;
  if (*(&v67 + 1))
  {
    if (OUTLINED_FUNCTION_14(v36, v37, v38, MEMORY[0x277D837D0]))
    {
      v39 = v64;
    }

    else
    {
      v39 = 0;
    }
  }

  else
  {
    outlined destroy of Any?(&v68, &_sypSgMd, &_sypSgMR);
    v39 = 0;
  }

  v40 = a1;
  MEMORY[0x25F8B3B20]();
  if ((*(v10 + 88))(v16, v7) == *MEMORY[0x277D36DC0])
  {
    (*(v10 + 96))(v16, v7);
    v56[2] = v39;
    v41 = v58;
    v42 = v59;
    v43 = *(v59 + 32);
    v44 = OUTLINED_FUNCTION_10();
    v45(v44);
    v46 = AppEntityItem.id.getter();
    v57 = v17;
    v56[1] = v46;
    AppEntityItem.bundleId.getter();
    AppEntityItem.typeId.getter();
    v47 = type metadata accessor for URL();
    __swift_storeEnumTagSinglePayload(v62, 1, 1, v47);
    PersonalSearchResult.init(appEntityIdentifier:bundleId:typeId:title:subtitle:icon:)();
    v48 = type metadata accessor for SearchResult();
    OUTLINED_FUNCTION_0(v48);
    (*(v49 + 8))(v40);
    return (*(v42 + 8))(v41, v57);
  }

  else
  {

    (*(v10 + 8))(v16, v7);
    v51 = SearchResult.csItem.getter();
    v52 = [v51 uniqueIdentifier];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    SearchResult.bundleId.getter();
    v53 = type metadata accessor for URL();
    __swift_storeEnumTagSinglePayload(v62, 1, 1, v53);
    PersonalSearchResult.init(spotlightIdentifier:bundleId:title:subtitle:icon:)();
    v54 = type metadata accessor for SearchResult();
    OUTLINED_FUNCTION_0(v54);
    return (*(v55 + 8))(v40);
  }
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

uint64_t outlined init with copy of LocalIndexClientProtocol(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t PersonalSearchServiceImp.__allocating_init()()
{
  type metadata accessor for LocalIndexClient();
  v0 = LocalIndexClient.__allocating_init()();
  v1 = swift_allocObject();

  return specialized PersonalSearchServiceImp.init(_:)(v0, v1);
}

uint64_t PersonalSearchServiceImp.__allocating_init(_:)(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v7, v7);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  (*(v12 + 16))(v10 - v9);
  v13 = a2(v11, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v13;
}

uint64_t PersonalSearchServiceImp.deinit()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3, v8);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  static Logging.server.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    *OUTLINED_FUNCTION_9() = 0;
    OUTLINED_FUNCTION_15(&dword_25E46D000, v14, v15, "PersonalSearchService: deinitialized");
    OUTLINED_FUNCTION_8();
  }

  (*(v5 + 8))(v11, v2);
  PersonalSearchServiceImp.deactivate()();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));
  v16 = *(v1 + 64);

  return v1;
}

void PersonalSearchServiceImp.deactivate()()
{
  v1 = *(v0 + 64);
  os_unfair_lock_lock(v1 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t PersonalSearchServiceImp.__deallocating_deinit()
{
  PersonalSearchServiceImp.deinit();

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

Swift::Void __swiftcall PersonalSearchServiceImp.cancel()()
{
  v0 = type metadata accessor for Logger();
  v1 = OUTLINED_FUNCTION_1(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1, v6);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  static Logging.server.getter();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    *OUTLINED_FUNCTION_9() = 0;
    OUTLINED_FUNCTION_15(&dword_25E46D000, v12, v13, "PersonalSearchService: cancel");
    OUTLINED_FUNCTION_8();
  }

  (*(v3 + 8))(v9, v0);
  PersonalSearchServiceImp.deactivate()();
}

void PersonalSearchServiceImp.activate()()
{
  v1 = *(v0 + 64);
  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t closure #1 in PersonalSearchServiceImp.activate()(uint64_t result)
{
  if ((*(result + 56) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 48);
    __swift_project_boxed_opaque_existential_1((result + 16), *(result + 40));
    result = dispatch thunk of LocalIndexClientProtocol.activate()();
    *(v1 + 56) = 1;
  }

  return result;
}

uint64_t closure #1 in PersonalSearchServiceImp.deactivate()(uint64_t result)
{
  if (*(result + 56) == 1)
  {
    v1 = result;
    v2 = *(result + 48);
    __swift_project_boxed_opaque_existential_1((result + 16), *(result + 40));
    result = dispatch thunk of LocalIndexClientProtocol.deactivate()();
    *(v1 + 56) = 0;
  }

  return result;
}

uint64_t PersonalSearchServiceImp.search(_:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for SearchServiceResult();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for EntityTypeIdentifier();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = type metadata accessor for SearchEntityTypeIdentifier();
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v11 = *(v10 + 64) + 15;
  v2[12] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19PersonalSearchTypes0aB12QueryOptionsVSgMd, &_s19PersonalSearchTypes0aB12QueryOptionsVSgMR) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v13 = type metadata accessor for SpotlightIndexRequest();
  v2[15] = v13;
  v14 = *(v13 - 8);
  v2[16] = v14;
  v15 = *(v14 + 64) + 15;
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](PersonalSearchServiceImp.search(_:), 0, 0);
}

uint64_t PersonalSearchServiceImp.search(_:)()
{
  v1 = v0[2];
  v2 = PersonalSearchQuery.typeIdentifiers.getter();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[11];
    v5 = v0[8];
    v39 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v6 = *(v5 + 16);
    v5 += 16;
    v7 = v2 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
    v37 = *(v5 + 56);
    v38 = v6;
    v36 = (v5 - 8);
    do
    {
      v8 = v0[12];
      v38(v0[9], v7, v0[7]);
      EntityTypeIdentifier.bundleId.getter();
      PersonalSearchQueryOptions.locale.getter();
      SearchEntityTypeIdentifier.init(bundleId:typeName:)();
      v9 = *v36;
      v10 = OUTLINED_FUNCTION_10();
      v11(v10);
      v13 = *(v39 + 16);
      v12 = *(v39 + 24);
      if (v13 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v12 > 1, v13 + 1, 1);
      }

      v14 = v0[12];
      v15 = v0[10];
      *(v39 + 16) = v13 + 1;
      (*(v4 + 32))(v39 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v13, v14, v15);
      v7 += v37;
      --v3;
    }

    while (v3);
  }

  v16 = v0[14];
  v17 = v0[2];
  PersonalSearchQuery.rawQuery.getter();
  PersonalSearchQuery.options.getter();
  Options = type metadata accessor for PersonalSearchQueryOptions();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, Options);
  v20 = v0[14];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Any?(v20, &_s19PersonalSearchTypes0aB12QueryOptionsVSgMd, &_s19PersonalSearchTypes0aB12QueryOptionsVSgMR);
  }

  else
  {
    PersonalSearchQueryOptions.maxResult.getter();
    (*(*(Options - 8) + 8))(v20, Options);
  }

  v21 = v0[13];
  v22 = v0[2];
  PersonalSearchQuery.options.getter();
  v23 = __swift_getEnumTagSinglePayload(v21, 1, Options);
  v24 = v0[13];
  if (v23 == 1)
  {
    outlined destroy of Any?(v0[13], &_s19PersonalSearchTypes0aB12QueryOptionsVSgMd, &_s19PersonalSearchTypes0aB12QueryOptionsVSgMR);
  }

  else
  {
    v25 = v0[13];
    PersonalSearchQueryOptions.locale.getter();
    (*(*(Options - 8) + 8))(v24, Options);
  }

  v26 = v0;
  v27 = v0[17];
  v28 = v0[3];
  SpotlightIndexRequest.init(userQuery:targetMatches:spQUParse:allowedTypes:locale:)();
  v29 = v28[5];
  v30 = v28[6];
  __swift_project_boxed_opaque_existential_1(v28 + 2, v29);
  v31 = *(MEMORY[0x277D36F90] + 4);
  v32 = swift_task_alloc();
  v26[18] = v32;
  *v32 = v26;
  v32[1] = PersonalSearchServiceImp.search(_:);
  v33 = v26[17];
  v34 = v26[6];

  return MEMORY[0x282196420](v34, v33, v29, v30);
}

{
  v2 = *(*v1 + 144);
  v3 = *v1;
  OUTLINED_FUNCTION_5();
  *v4 = v3;
  *(v5 + 152) = v0;

  if (v0)
  {
    v6 = PersonalSearchServiceImp.search(_:);
  }

  else
  {
    v6 = PersonalSearchServiceImp.search(_:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  v13 = v0[15];
  v14 = v0[14];
  v15 = v0[13];
  v16 = v0[12];
  v17 = v0[9];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];
  v7 = v0[2];
  v8 = SearchServiceResult.searchResults.getter();
  v9 = swift_task_alloc();
  *(v9 + 16) = v7;
  v10 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10OmniSearch0E6ResultVG_08PersonalE5Types0geF0Vs5NeverOTg5(partial apply for closure #2 in PersonalSearchServiceImp.search(_:), v9, v8);

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v3, v13);

  v11 = v0[1];

  return v11(v10);
}

{
  v1 = v0[14];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[9];
  v5 = v0[6];
  (*(v0[16] + 8))(v0[17], v0[15]);

  OUTLINED_FUNCTION_7();
  v7 = v0[19];

  return v6();
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10OmniSearch0E6ResultVG_08PersonalE5Types0geF0Vs5NeverOTg5(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v22 = a1;
  v23 = a2;
  v21 = type metadata accessor for PersonalSearchResult();
  v6 = *(v21 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v21, v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
    return v12;
  }

  v24 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
  v12 = v24;
  v13 = *(type metadata accessor for SearchResult() - 8);
  v14 = a3 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v20 = v6 + 32;
  v19 = *(v13 + 72);
  while (1)
  {
    v22(v14);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v24 = v12;
    v16 = *(v12 + 16);
    v15 = *(v12 + 24);
    if (v16 >= v15 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v15 > 1, v16 + 1, 1);
      v12 = v24;
    }

    *(v12 + 16) = v16 + 1;
    (*(v6 + 32))(v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16, v10, v21);
    v14 += v19;
    if (!--v11)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #2 in PersonalSearchServiceImp.search(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19PersonalSearchTypes0aB12QueryOptionsVSgMd, &_s19PersonalSearchTypes0aB12QueryOptionsVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v17 - v7;
  v9 = type metadata accessor for SearchResult();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, a1);
  PersonalSearchQuery.options.getter();
  Options = type metadata accessor for PersonalSearchQueryOptions();
  if (__swift_getEnumTagSinglePayload(v8, 1, Options) == 1)
  {
    outlined destroy of Any?(v8, &_s19PersonalSearchTypes0aB12QueryOptionsVSgMd, &_s19PersonalSearchTypes0aB12QueryOptionsVSgMR);
  }

  else
  {
    PersonalSearchQueryOptions.locale.getter();
    (*(*(Options - 8) + 8))(v8, Options);
  }

  return PersonalSearchResult.init(_:locale:)(v13, a2);
}

uint64_t PersonalSearchServiceImp.handle(_:progressReporter:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for PersonalSearchError.ErrorType();
  v3[8] = v4;
  OUTLINED_FUNCTION_2(v4);
  v3[9] = v5;
  v7 = *(v6 + 64) + 15;
  v3[10] = swift_task_alloc();
  v8 = type metadata accessor for PersonalSearchQuery();
  v3[11] = v8;
  OUTLINED_FUNCTION_2(v8);
  v3[12] = v9;
  v11 = *(v10 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  v3[15] = v12;
  OUTLINED_FUNCTION_2(v12);
  v3[16] = v13;
  v15 = *(v14 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v16 = type metadata accessor for PersonalSearchRequest();
  v3[21] = v16;
  OUTLINED_FUNCTION_2(v16);
  v3[22] = v17;
  v19 = *(v18 + 64) + 15;
  v3[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](PersonalSearchServiceImp.handle(_:progressReporter:), 0, 0);
}

uint64_t PersonalSearchServiceImp.handle(_:progressReporter:)()
{
  v84 = v0;
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  (*(v2 + 16))(v1, v0[6], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x277D3A2B8])
  {
    v5 = v0[23];
    v6 = v0[17];
    v8 = v0[13];
    v7 = v0[14];
    v9 = v0[11];
    v10 = v0[12];
    (*(v0[22] + 96))(v5, v0[21]);
    (*(v10 + 32))(v7, v5, v9);
    static Logging.server.getter();
    (*(v10 + 16))(v8, v7, v9);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    v13 = os_log_type_enabled(v11, v12);
    v15 = v0[16];
    v14 = v0[17];
    v16 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[11];
    if (v13)
    {
      v82 = v0[15];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v83 = v21;
      *v20 = 136315138;
      v79 = PersonalSearchQuery.rawQuery.getter();
      v81 = v14;
      v23 = v22;
      v80 = v12;
      v24 = *(v18 + 8);
      v25 = OUTLINED_FUNCTION_10();
      v24(v25);
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v23, &v83);

      *(v20 + 4) = v26;
      _os_log_impl(&dword_25E46D000, v11, v80, "PersonalSearchService: search '%s'", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_8();

      (*(v15 + 8))(v81, v82);
    }

    else
    {

      v24 = *(v18 + 8);
      v40 = OUTLINED_FUNCTION_10();
      v24(v40);
      (*(v15 + 8))(v14, v16);
    }

    v0[24] = v24;
    v41 = v0[7];
    PersonalSearchServiceImp.activate()();
    v42 = swift_task_alloc();
    v0[25] = v42;
    *v42 = v0;
    v42[1] = PersonalSearchServiceImp.handle(_:progressReporter:);
    v43 = v0[14];
    v44 = v0[7];
    OUTLINED_FUNCTION_12();

    return PersonalSearchServiceImp.search(_:)(v45);
  }

  if (v4 == *MEMORY[0x277D3A2C0])
  {
    v27 = v0[20];
    static Logging.server.getter();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = OUTLINED_FUNCTION_9();
      *v30 = 0;
      _os_log_impl(&dword_25E46D000, v28, v29, "PersonalSearchService: preheat", v30, 2u);
      OUTLINED_FUNCTION_8();
    }

    v31 = v0[20];
    v32 = v0[15];
    v33 = v0[16];
    v34 = v0[7];
    v35 = v0[5];

    v36 = *(v33 + 8);
    v37 = OUTLINED_FUNCTION_6();
    v38(v37);
    v39 = v34[6];
    __swift_project_boxed_opaque_existential_1(v34 + 2, v34[5]);
    OUTLINED_FUNCTION_6();
    dispatch thunk of LocalIndexClientProtocol.preheat()();
    goto LABEL_20;
  }

  if (v4 == *MEMORY[0x277D3A2C8])
  {
    v48 = v0[19];
    static Logging.server.getter();
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v49, v50))
    {
      *OUTLINED_FUNCTION_9() = 0;
      OUTLINED_FUNCTION_13(&dword_25E46D000, v51, v52, "PersonalSearchService: activate");
      OUTLINED_FUNCTION_8();
    }

    v53 = v0[19];
    v54 = v0[15];
    v55 = v0[16];
    v56 = v0[7];
    v35 = v0[5];

    v57 = *(v55 + 8);
    v58 = OUTLINED_FUNCTION_6();
    v59(v58);
    PersonalSearchServiceImp.activate()();
    goto LABEL_20;
  }

  if (v4 == *MEMORY[0x277D3A2B0])
  {
    v60 = v0[18];
    static Logging.server.getter();
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v61, v62))
    {
      *OUTLINED_FUNCTION_9() = 0;
      OUTLINED_FUNCTION_13(&dword_25E46D000, v63, v64, "PersonalSearchService: deactivate");
      OUTLINED_FUNCTION_8();
    }

    v65 = v0[18];
    v66 = v0[15];
    v67 = v0[16];
    v68 = v0[7];
    v35 = v0[5];

    v69 = *(v67 + 8);
    v70 = OUTLINED_FUNCTION_6();
    v71(v70);
    PersonalSearchServiceImp.deactivate()();
LABEL_20:
    *v35 = 0;
    v72 = *MEMORY[0x277D3A2F0];
    v73 = type metadata accessor for PersonalSearchResponse();
    OUTLINED_FUNCTION_0(v73);
    (*(v74 + 104))(v35, v72);
    OUTLINED_FUNCTION_4();

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_12();

    __asm { BRAA            X1, X16 }
  }

  v77 = v0[21];
  OUTLINED_FUNCTION_12();

  return MEMORY[0x2821FDEB8]();
}

{
  v1 = *(v0 + 216);
  v2 = *(v0 + 40);
  v3 = *(v0 + 96) + 8;
  (*(v0 + 192))(*(v0 + 112), *(v0 + 88));
  *v2 = v1;
  v4 = *MEMORY[0x277D3A2F0];
  v5 = type metadata accessor for PersonalSearchResponse();
  OUTLINED_FUNCTION_0(v5);
  (*(v6 + 104))(v2, v4);
  OUTLINED_FUNCTION_4();

  OUTLINED_FUNCTION_7();

  return v7();
}

{
  v1 = v0[26];
  v2 = v0[24];
  v3 = v0[14];
  v4 = v0[11];
  v5 = v0[12];
  v6 = v0[5];
  (*(v0[9] + 104))(v0[10], *MEMORY[0x277D3A290], v0[8]);
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v0[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  _print_unlocked<A, B>(_:_:)();
  v7 = v0[2];
  v8 = v0[3];
  PersonalSearchError.init(type:description:)();
  MEMORY[0x25F8B3FD0](v1);
  v9 = OUTLINED_FUNCTION_6();
  v2(v9);
  v10 = *MEMORY[0x277D3A2E8];
  v11 = type metadata accessor for PersonalSearchResponse();
  OUTLINED_FUNCTION_0(v11);
  (*(v12 + 104))(v6, v10);
  OUTLINED_FUNCTION_4();

  OUTLINED_FUNCTION_7();

  return v13();
}

uint64_t PersonalSearchServiceImp.handle(_:progressReporter:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 200);
  v6 = *v2;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v4 + 208) = v1;

  if (v1)
  {
    v8 = PersonalSearchServiceImp.handle(_:progressReporter:);
  }

  else
  {
    *(v4 + 216) = a1;
    v8 = PersonalSearchServiceImp.handle(_:progressReporter:);
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t protocol witness for ServiceProtocol.init() in conformance PersonalSearchServiceImp@<X0>(uint64_t *a1@<X8>)
{
  result = PersonalSearchServiceImp.__allocating_init()();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ServiceProtocol.handle(_:) in conformance PersonalSearchServiceImp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D3A310] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for ServiceProtocol.handle(_:) in conformance PersonalSearchServiceImp;

  return MEMORY[0x28219B198](a1, a2, a3, a4);
}

uint64_t protocol witness for ServiceProtocol.handle(_:progressReporter:) in conformance PersonalSearchServiceImp(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for ServiceProtocol.handle(_:progressReporter:) in conformance PersonalSearchServiceImp;

  return PersonalSearchServiceImp.handle(_:progressReporter:)(a1, a2);
}

uint64_t protocol witness for ServiceProtocol.handle(_:progressReporter:) in conformance PersonalSearchServiceImp()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_5();
  *v3 = v2;

  OUTLINED_FUNCTION_7();

  return v4();
}

uint64_t specialized UnsafeMutablePointer.moveInitialize(from:count:)(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (v8 = (a4)(0), result = OUTLINED_FUNCTION_0(v8), a1 + *(v10 + 72) * a2 <= a3))
  {
    a4(0);
    v12 = OUTLINED_FUNCTION_11();

    return MEMORY[0x2821FE828](v12);
  }

  else if (a3 != a1)
  {
    v11 = OUTLINED_FUNCTION_11();

    return MEMORY[0x2821FE820](v11);
  }

  return result;
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

  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
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

size_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy19PersonalSearchTypes0dE6ResultVGMd, &_ss23_ContiguousArrayStorageCy19PersonalSearchTypes0dE6ResultVGMR, MEMORY[0x277D3A2A8], MEMORY[0x277D3A2A8]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10OmniSearch0E20EntityTypeIdentifierVGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch0E20EntityTypeIdentifierVGMR, MEMORY[0x277D36DD0], MEMORY[0x277D36DD0]);
  *v3 = result;
  return result;
}

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(void))
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 16);
  if (v13 <= v14)
  {
    v15 = *(a4 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v21 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = a7(0);
  OUTLINED_FUNCTION_2(v16);
  v18 = *(v17 + 72);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v21);
  if (!v18)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v20 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_24;
  }

  v21[2] = v14;
  v21[3] = 2 * ((result - v20) / v18);
LABEL_19:
  v23 = *(a7(0) - 8);
  if (v11)
  {
    v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + v24, v14, v21 + v24, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v21;
}

uint64_t specialized PersonalSearchServiceImp.__allocating_init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  (*(v7 + 16))(v10, a1, a3);
  v12 = specialized PersonalSearchServiceImp.init(_:)(v10, v11, a3, a4);
  (*(v7 + 8))(a1, a3);
  return v12;
}

uint64_t specialized PersonalSearchServiceImp.init(_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for LocalIndexClient();
  v18 = MEMORY[0x277D36F20];
  *&v16 = a1;
  *(a2 + 56) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(a2 + 64) = v10;
  static Logging.server.getter();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_25E46D000, v11, v12, "PersonalSearchService: initialized", v13, 2u);
    MEMORY[0x25F8B4070](v13, -1, -1);
  }

  (*(v5 + 8))(v9, v4);
  outlined init with take of LocalIndexClientProtocol(&v16, a2 + 16);
  return a2;
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

uint64_t specialized PersonalSearchServiceImp.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a3;
  v23 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v21);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  *(a2 + 56) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(a2 + 64) = v15;
  static Logging.server.getter();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_25E46D000, v16, v17, "PersonalSearchService: initialized", v18, 2u);
    MEMORY[0x25F8B4070](v18, -1, -1);
  }

  (*(v9 + 8))(v13, v8);
  outlined init with take of LocalIndexClientProtocol(&v21, a2 + 16);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type PersonalSearchRequest and conformance PersonalSearchRequest(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined destroy of Any?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
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

uint64_t outlined init with take of LocalIndexClientProtocol(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t OUTLINED_FUNCTION_4()
{
  v2 = v0[23];
  v3 = v0[19];
  v4 = v0[20];
  v6 = v0[17];
  v5 = v0[18];
  v8 = v0[13];
  v7 = v0[14];
  v9 = v0[10];
}

uint64_t OUTLINED_FUNCTION_7()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_8()
{

  JUMPOUT(0x25F8B4070);
}

uint64_t OUTLINED_FUNCTION_9()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_13(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return MEMORY[0x2821FE908](v5 - 176, v5 - 128, v4 + 8, a4, 6);
}

void OUTLINED_FUNCTION_15(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}