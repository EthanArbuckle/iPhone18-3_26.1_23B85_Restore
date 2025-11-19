uint64_t sub_2232CEAF4()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t partial apply for closure #1 in AssistantLocationProvider.fetchLocation()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sIeghH_IeAgH_TRTQ0_;

  return closure #1 in AssistantLocationProvider.fetchLocation()(a1, v4, v5, v6);
}

uint64_t outlined consume of PommesPhoneCallStateManager.Status(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t closure #1 in AssistantLocationProvider.fetchLocation()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[276] = a4;
  v4[275] = a1;
  v5 = type metadata accessor for LocationStatus();
  v4[277] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[278] = swift_task_alloc();
  v4[279] = swift_task_alloc();
  v4[280] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in AssistantLocationProvider.fetchLocation(), 0, 0);
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t type metadata accessor for LocationStatus()
{
  result = type metadata singleton initialization cache for LocationStatus;
  if (!type metadata singleton initialization cache for LocationStatus)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t closure #1 in AssistantLocationProvider.fetchLocation()()
{
  v1 = (*(**(v0 + 2208) + 128))();
  *(v0 + 2248) = v1;
  if (!v1)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.pommes);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2232BB000, v15, v16, "self.serviceHelper is nil. Cannot fetch location.", v17, 2u);
      MEMORY[0x223DE0F80](v17, -1, -1);
    }

    v18 = *(v0 + 2200);

    *v18 = 0;
    goto LABEL_14;
  }

  v2 = *(v0 + 2216);
  v3 = *(v0 + 2240);
  (*(**(v0 + 2208) + 208))();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *(v0 + 2232);
    outlined init with copy of LocationStatus(*(v0 + 2240), v4);
    v5 = *(v4 + 8);
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23CLAccuracyAuthorizationVSg_10Foundation4DateVtMd, &_sSo23CLAccuracyAuthorizationVSg_10Foundation4DateVtMR) + 48);
    if (v5 == 1)
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, static Logger.pommes);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_2232BB000, v8, v9, "Setting self.status is already pending. Ignoring location fetch.", v10, 2u);
        MEMORY[0x223DE0F80](v10, -1, -1);
      }

      v11 = *(v0 + 2240);
      v12 = *(v0 + 2200);
      swift_unknownObjectRelease();

      *v12 = 0;
      v13 = type metadata accessor for Date();
      (*(*(v13 - 8) + 8))(v4 + v6, v13);
      outlined destroy of LocationStatus(v11);
LABEL_14:
      v19 = *(v0 + 2240);
      v20 = *(v0 + 2232);
      v21 = *(v0 + 2224);

      v22 = *(v0 + 8);

      return v22();
    }

    v24 = type metadata accessor for Date();
    (*(*(v24 - 8) + 8))(v4 + v6, v24);
  }

  v25 = *(v0 + 2224);
  v26 = *(v0 + 2216);
  v27 = *(v0 + 2208);
  outlined destroy of LocationStatus(*(v0 + 2240));
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23CLAccuracyAuthorizationVSg_10Foundation4DateVtMd, &_sSo23CLAccuracyAuthorizationVSg_10Foundation4DateVtMR) + 48);
  *v25 = 0;
  *(v25 + 8) = 1;
  Date.init()();
  swift_storeEnumTagMultiPayload();
  v29 = *(*v27 + 216);
  v30 = *v27 + 216;
  *(v0 + 2256) = v29;
  *(v0 + 2264) = v30 & 0xFFFFFFFFFFFFLL | 0xFED9000000000000;
  v29(v25);
  swift_getObjectType();
  v31 = swift_task_alloc();
  *(v0 + 2272) = v31;
  *v31 = v0;
  v31[1] = closure #1 in AssistantLocationProvider.fetchLocation();

  return AFRequestDispatcherServiceHelper.currentAuthorizationStyleAsync()();
}

{
  v1 = v0[287];
  if (v1 <= 2)
  {
    if ((v1 - 1) < 2)
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v2 = type metadata accessor for Logger();
      __swift_project_value_buffer(v2, static Logger.pommes);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v3, v4))
      {
        goto LABEL_30;
      }

      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2232BB000, v3, v4, "Setting status to .unavailable because authorization style is .restricted or .denied", v5, 2u);
LABEL_29:
      MEMORY[0x223DE0F80](v5, -1, -1);
LABEL_30:
      v25 = v0[283];
      v26 = v0[282];
      v27 = v0[281];
      v28 = v0[278];
      v29 = v0[277];
      v30 = v0[276];
      v31 = v0[275];

      swift_storeEnumTagMultiPayload();
      v26(v28);
      swift_unknownObjectRelease();
      *v31 = 0;
      v32 = v0[280];
      v33 = v0[279];
      v34 = v0[278];

      v35 = v0[1];

      return v35();
    }

    if (!v1)
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static Logger.pommes);
      v3 = Logger.logObject.getter();
      v20 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v3, v20))
      {
        goto LABEL_30;
      }

      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2232BB000, v3, v20, "Setting status to .siriLocationDisabled because authorization style is .undetermined", v5, 2u);
      goto LABEL_29;
    }

    goto LABEL_25;
  }

  if ((v1 - 3) >= 2)
  {
    if (v1 == 5)
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      __swift_project_value_buffer(v21, static Logger.pommes);
      v3 = Logger.logObject.getter();
      v22 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v3, v22))
      {
        goto LABEL_30;
      }

      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2232BB000, v3, v22, "Setting status to .locationDisabled because authorization style is .serviceDisabled", v5, 2u);
      goto LABEL_29;
    }

LABEL_25:
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.pommes);
    v3 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v3, v24))
    {
      goto LABEL_30;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2232BB000, v3, v24, "Setting status to .unknown because we encountered an unhandled authorization style", v5, 2u);
    goto LABEL_29;
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  v0[288] = __swift_project_value_buffer(v6, static Logger.pommes);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2232BB000, v7, v8, "Getting currentLocation from serviceHelper", v9, 2u);
    MEMORY[0x223DE0F80](v9, -1, -1);
  }

  v10 = v0[285];
  v11 = v0[281];

  v12 = specialized closure #1 in closure #1 in AssistantLocationProvider.fetchLocation()(v10);
  v13 = [objc_allocWithZone(MEMORY[0x277CEF2E0]) init];
  v0[289] = v13;
  [v13 setStyle_];
  [v13 setTimeout_];
  [v13 setDesiredAccuracy_];
  v14 = swift_allocObject();
  v0[290] = v14;
  *(v14 + 16) = v11;
  *(v14 + 24) = v13;
  swift_unknownObjectRetain();
  v15 = v13;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for CLLocation, 0x277CE41F8);
  swift_asyncLet_begin();
  v16 = [objc_allocWithZone(MEMORY[0x277CEF2E0]) init];
  v0[291] = v16;
  [v16 setStyle_];
  [v16 setTimeout_];
  [v16 setDesiredAccuracy_];
  v17 = swift_allocObject();
  v0[292] = v17;
  *(v17 + 16) = v11;
  *(v17 + 24) = v16;
  swift_unknownObjectRetain();
  v18 = v16;
  swift_asyncLet_begin();

  return MEMORY[0x282200930](v0 + 82, v0 + 274, closure #1 in AssistantLocationProvider.fetchLocation(), v0 + 178);
}

{
  *(v1 + 2344) = v0;
  if (v0)
  {
    v2 = closure #1 in AssistantLocationProvider.fetchLocation();
  }

  else
  {
    v2 = closure #1 in AssistantLocationProvider.fetchLocation();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 2304);
  v2 = *(v0 + 2192);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2232BB000, v3, v4, "Setting status to .available after fast location fetch", v5, 2u);
    MEMORY[0x223DE0F80](v5, -1, -1);
  }

  v6 = *(v0 + 2280);
  v7 = *(v0 + 2264);
  v8 = *(v0 + 2256);
  v9 = *(v0 + 2224);
  v10 = *(v0 + 2216);
  v11 = *(v0 + 2208);

  *v9 = v2;
  *(v9 + 8) = v6;
  *(v9 + 16) = 0;
  swift_storeEnumTagMultiPayload();
  v12 = v2;
  v8(v9);

  return MEMORY[0x282200930](v0 + 16, v0 + 1464, closure #1 in AssistantLocationProvider.fetchLocation(), v0 + 1664);
}

{
  v1 = *(v0 + 2304);
  v2 = *(v0 + 1464);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2232BB000, v3, v4, "Setting status to .available after slow location fetch", v5, 2u);
    MEMORY[0x223DE0F80](v5, -1, -1);
  }

  v6 = *(v0 + 2280);
  v7 = *(v0 + 2264);
  v8 = *(v0 + 2256);
  v9 = *(v0 + 2224);
  v10 = *(v0 + 2216);
  v11 = *(v0 + 2208);

  *v9 = v2;
  *(v9 + 8) = v6;
  *(v9 + 16) = 0;
  swift_storeEnumTagMultiPayload();
  v12 = v2;
  v8(v9);

  **(v0 + 2200) = 1;

  return MEMORY[0x282200920](v0 + 16, v0 + 1464, closure #1 in AssistantLocationProvider.fetchLocation(), v0 + 2000);
}

{
  *(v1 + 2352) = v0;
  if (v0)
  {
    v2 = closure #1 in AssistantLocationProvider.fetchLocation();
  }

  else
  {
    v2 = closure #1 in AssistantLocationProvider.fetchLocation();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  return MEMORY[0x2822009F8](closure #1 in AssistantLocationProvider.fetchLocation(), 0, 0);
}

{

  return MEMORY[0x282200920](v0 + 656, v0 + 2192, closure #1 in AssistantLocationProvider.fetchLocation(), v0 + 2048);
}

{
  v1 = *(v0 + 2336);
  v2 = *(v0 + 2320);
  v3 = *(v0 + 2248);

  swift_unknownObjectRelease();

  v4 = *(v0 + 2240);
  v5 = *(v0 + 2232);
  v6 = *(v0 + 2224);

  v7 = *(v0 + 8);

  return v7();
}

{
  return MEMORY[0x2822009F8](closure #1 in AssistantLocationProvider.fetchLocation(), 0, 0);
}

{
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.pommes);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2232BB000, v2, v3, "Setting status to .unknown service helper does not implement the authorization fetching method", v4, 2u);
    MEMORY[0x223DE0F80](v4, -1, -1);
  }

  v5 = v0[286];
  v6 = v0[283];
  v7 = v0[282];
  v8 = v0[281];
  v9 = v0[278];
  v10 = v0[277];
  v11 = v0[276];
  v12 = v0[275];

  swift_storeEnumTagMultiPayload();
  v7(v9);

  swift_unknownObjectRelease();
  *v12 = 0;
  v13 = v0[280];
  v14 = v0[279];
  v15 = v0[278];

  v16 = v0[1];

  return v16();
}

{
  return MEMORY[0x2822009F8](closure #1 in AssistantLocationProvider.fetchLocation(), 0, 0);
}

{

  return MEMORY[0x282200920](v0 + 656, v0 + 2192, closure #1 in AssistantLocationProvider.fetchLocation(), v0 + 1296);
}

{
  return MEMORY[0x2822009F8](closure #1 in AssistantLocationProvider.fetchLocation(), 0, 0);
}

{
  return MEMORY[0x2822009F8](closure #1 in AssistantLocationProvider.fetchLocation(), 0, 0);
}

{

  return MEMORY[0x282200920](v0 + 656, v0 + 2192, closure #1 in AssistantLocationProvider.fetchLocation(), v0 + 1520);
}

{
  return MEMORY[0x2822009F8](closure #1 in AssistantLocationProvider.fetchLocation(), 0, 0);
}

{

  return MEMORY[0x282200920](v0 + 656, v0 + 2192, closure #1 in AssistantLocationProvider.fetchLocation(), v0 + 1616);
}

{
  return MEMORY[0x2822009F8](closure #1 in AssistantLocationProvider.fetchLocation(), 0, 0);
}

{

  return MEMORY[0x282200920](v0 + 656, v0 + 2192, closure #1 in AssistantLocationProvider.fetchLocation(), v0 + 1760);
}

{
  v96 = v0;
  v1 = *(v0 + 2344);
  *(v0 + 2184) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  type metadata accessor for related decl 'e' for AFLocationServiceErrorCode(0);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 2344);
  if (v3)
  {

    v5 = *(v0 + 2136);
    *(v0 + 1848) = v5;
    lazy protocol witness table accessor for type PommesCodableLocation and conformance PommesCodableLocation(&lazy protocol witness table cache variable for type related decl 'e' for AFLocationServiceErrorCode and conformance related decl 'e' for AFLocationServiceErrorCode, type metadata accessor for related decl 'e' for AFLocationServiceErrorCode);
    _BridgedStoredNSError.code.getter();
    v6 = *(v0 + 1896);
    v7 = *(v0 + 2304);
    if (v6 != 3)
    {
      if (v6 == 9)
      {
        v58 = Logger.logObject.getter();
        v59 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          *v60 = 0;
          _os_log_impl(&dword_2232BB000, v58, v59, "Setting status to .locationDisable with locationServiceDisabled error", v60, 2u);
          MEMORY[0x223DE0F80](v60, -1, -1);
        }

        v61 = *(v0 + 2264);
        v62 = *(v0 + 2256);
        v63 = *(v0 + 2224);
        v64 = *(v0 + 2216);
        v65 = *(v0 + 2208);
        v66 = *(v0 + 2200);

        swift_storeEnumTagMultiPayload();
        v62(v63);

        *v66 = 0;
        v17 = closure #1 in AssistantLocationProvider.fetchLocation();
        v18 = v0 + 16;
        v19 = v0 + 1464;
        v20 = v0 + 1568;
      }

      else if (v6 == 5)
      {
        v8 = Logger.logObject.getter();
        v9 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          *v10 = 0;
          _os_log_impl(&dword_2232BB000, v8, v9, "Setting status to .siriLocationDisabled with unauthorizedToFetchLocation error", v10, 2u);
          MEMORY[0x223DE0F80](v10, -1, -1);
        }

        v11 = *(v0 + 2264);
        v12 = *(v0 + 2256);
        v13 = *(v0 + 2224);
        v14 = *(v0 + 2216);
        v15 = *(v0 + 2208);
        v16 = *(v0 + 2200);

        swift_storeEnumTagMultiPayload();
        v12(v13);

        *v16 = 0;
        v17 = closure #1 in AssistantLocationProvider.fetchLocation();
        v18 = v0 + 16;
        v19 = v0 + 1464;
        v20 = v0 + 1472;
      }

      else
      {
        v80 = v5;
        v81 = Logger.logObject.getter();
        v82 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          v84 = swift_slowAlloc();
          v95 = v84;
          *v83 = 136315138;
          *(v0 + 1992) = v80;
          lazy protocol witness table accessor for type PommesCodableLocation and conformance PommesCodableLocation(&lazy protocol witness table cache variable for type related decl 'e' for AFLocationServiceErrorCode and conformance related decl 'e' for AFLocationServiceErrorCode, type metadata accessor for related decl 'e' for AFLocationServiceErrorCode);
          v85 = Error.localizedDescription.getter();
          v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v86, &v95);

          *(v83 + 4) = v87;
          _os_log_impl(&dword_2232BB000, v81, v82, "Setting status to .unavailable with error %s", v83, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v84);
          MEMORY[0x223DE0F80](v84, -1, -1);
          MEMORY[0x223DE0F80](v83, -1, -1);
        }

        v88 = *(v0 + 2264);
        v89 = *(v0 + 2256);
        v90 = *(v0 + 2224);
        v91 = *(v0 + 2216);
        v92 = *(v0 + 2208);
        v93 = *(v0 + 2200);
        swift_storeEnumTagMultiPayload();
        v89(v90);

        *v93 = 0;
        v17 = closure #1 in AssistantLocationProvider.fetchLocation();
        v18 = v0 + 16;
        v19 = v0 + 1464;
        v20 = v0 + 1712;
      }

LABEL_27:

      return MEMORY[0x282200920](v18, v19, v17, v20);
    }

    v67 = v5;
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v95 = v71;
      *v70 = 136315138;
      *(v0 + 2040) = v67;
      lazy protocol witness table accessor for type PommesCodableLocation and conformance PommesCodableLocation(&lazy protocol witness table cache variable for type related decl 'e' for AFLocationServiceErrorCode and conformance related decl 'e' for AFLocationServiceErrorCode, type metadata accessor for related decl 'e' for AFLocationServiceErrorCode);
      v72 = Error.localizedDescription.getter();
      v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v73, &v95);

      *(v70 + 4) = v74;
      _os_log_impl(&dword_2232BB000, v68, v69, "Setting status to .unavailable with error %s", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v71);
      MEMORY[0x223DE0F80](v71, -1, -1);
      MEMORY[0x223DE0F80](v70, -1, -1);
    }

    v75 = *(v0 + 2264);
    v76 = *(v0 + 2256);
    v77 = *(v0 + 2224);
    v78 = *(v0 + 2216);
    v79 = *(v0 + 2208);
    swift_storeEnumTagMultiPayload();
    v76(v77);

    v57 = *(v0 + 2184);
  }

  else
  {

    *(v0 + 2088) = v4;
    v21 = v4;
    v22 = swift_dynamicCast();
    v23 = *(v0 + 2344);
    v24 = *(v0 + 2304);
    if (v22)
    {

      v25 = *(v0 + 2363);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v95 = v29;
        *v28 = 136446210;
        *(v0 + 2362) = v25;
        lazy protocol witness table accessor for type OptionalMethodError and conformance OptionalMethodError();
        v30 = Error.localizedDescription.getter();
        v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v95);

        *(v28 + 4) = v32;
        _os_log_impl(&dword_2232BB000, v26, v27, "Setting status to .unknown service helper does not implement the location fetching method. Error: %{public}s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v29);
        MEMORY[0x223DE0F80](v29, -1, -1);
        MEMORY[0x223DE0F80](v28, -1, -1);
      }

      v33 = *(v0 + 2264);
      v34 = *(v0 + 2256);
      v35 = *(v0 + 2224);
      v36 = *(v0 + 2216);
      v37 = *(v0 + 2208);
      v38 = *(v0 + 2200);
      swift_storeEnumTagMultiPayload();
      v34(v35);
      *v38 = 0;

      v17 = closure #1 in AssistantLocationProvider.fetchLocation();
      v18 = v0 + 16;
      v19 = v0 + 1464;
      v20 = v0 + 1808;
      goto LABEL_27;
    }

    v39 = v23;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = *(v0 + 2344);
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v95 = v44;
      *v43 = 136315138;
      swift_getErrorValue();
      v45 = *(v0 + 1336);
      v46 = *(v0 + 1344);
      v47 = *(v0 + 1352);
      v48 = Error.localizedDescription.getter();
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, &v95);

      *(v43 + 4) = v50;
      _os_log_impl(&dword_2232BB000, v40, v41, "Setting status to .unavailable with error %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v44);
      MEMORY[0x223DE0F80](v44, -1, -1);
      MEMORY[0x223DE0F80](v43, -1, -1);
    }

    v51 = *(v0 + 2344);
    v52 = *(v0 + 2264);
    v53 = *(v0 + 2256);
    v54 = *(v0 + 2224);
    v55 = *(v0 + 2216);
    v56 = *(v0 + 2208);
    swift_storeEnumTagMultiPayload();
    v53(v54);
    v57 = v51;
  }

  return MEMORY[0x282200930](v0 + 16, v0 + 1464, closure #1 in AssistantLocationProvider.fetchLocation(), v0 + 1664);
}

{
  return MEMORY[0x2822009F8](closure #1 in AssistantLocationProvider.fetchLocation(), 0, 0);
}

{

  return MEMORY[0x282200920](v0 + 656, v0 + 2192, closure #1 in AssistantLocationProvider.fetchLocation(), v0 + 1952);
}

{
  return MEMORY[0x2822009F8](closure #1 in AssistantLocationProvider.fetchLocation(), 0, 0);
}

{

  return MEMORY[0x282200920](v0 + 656, v0 + 2192, closure #1 in AssistantLocationProvider.fetchLocation(), v0 + 2144);
}

{
  return MEMORY[0x2822009F8](closure #1 in AssistantLocationProvider.fetchLocation(), 0, 0);
}

{

  return MEMORY[0x282200920](v0 + 656, v0 + 2192, closure #1 in AssistantLocationProvider.fetchLocation(), v0 + 1904);
}

{
  v68 = v0;
  v1 = (v0 + 1944);
  v2 = *(v0 + 2352);
  *(v0 + 1944) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  type metadata accessor for related decl 'e' for AFLocationServiceErrorCode(0);
  v4 = swift_dynamicCast();
  v5 = *(v0 + 2352);
  if (v4)
  {
    v6 = *(v0 + 2344);

    v7 = *(v0 + 1800);
    if (v6)
    {
      v8 = *(v0 + 2304);
      *(v0 + 1512) = v7;
      lazy protocol witness table accessor for type PommesCodableLocation and conformance PommesCodableLocation(&lazy protocol witness table cache variable for type related decl 'e' for AFLocationServiceErrorCode and conformance related decl 'e' for AFLocationServiceErrorCode, type metadata accessor for related decl 'e' for AFLocationServiceErrorCode);
      _BridgedStoredNSError.code.getter();
      v9 = v7;
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v67 = v13;
        *v12 = 136315138;
        *(v0 + 1656) = v9;
        lazy protocol witness table accessor for type PommesCodableLocation and conformance PommesCodableLocation(&lazy protocol witness table cache variable for type related decl 'e' for AFLocationServiceErrorCode and conformance related decl 'e' for AFLocationServiceErrorCode, type metadata accessor for related decl 'e' for AFLocationServiceErrorCode);
        v14 = Error.localizedDescription.getter();
        v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v67);

        *(v12 + 4) = v16;
        _os_log_impl(&dword_2232BB000, v10, v11, "Setting status to .unavailable with error %s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v13);
        MEMORY[0x223DE0F80](v13, -1, -1);
        MEMORY[0x223DE0F80](v12, -1, -1);
      }

      v17 = *(v0 + 2264);
      v18 = *(v0 + 2256);
      v19 = *(v0 + 2224);
      v20 = *(v0 + 2216);
      v21 = *(v0 + 2208);
      v22 = *(v0 + 2200);
      swift_storeEnumTagMultiPayload();
      v18(v19);

      *v22 = 0;
      v23 = closure #1 in AssistantLocationProvider.fetchLocation();
      v24 = v0 + 16;
      v25 = v0 + 1464;
      v26 = v0 + 1360;
      goto LABEL_17;
    }

    v65 = *v1;
LABEL_16:

    **(v0 + 2200) = 1;
    v23 = closure #1 in AssistantLocationProvider.fetchLocation();
    v24 = v0 + 16;
    v25 = v0 + 1464;
    v26 = v0 + 2000;
    goto LABEL_17;
  }

  *(v0 + 1752) = v5;
  v27 = v5;
  if (swift_dynamicCast())
  {
    v28 = *(v0 + 2304);

    v29 = *(v0 + 2361);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v67 = v33;
      *v32 = 136446210;
      *(v0 + 2360) = v29;
      lazy protocol witness table accessor for type OptionalMethodError and conformance OptionalMethodError();
      v34 = Error.localizedDescription.getter();
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v67);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_2232BB000, v30, v31, "Setting status to .unknown service helper does not implement the location fetching method. Error: %{public}s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x223DE0F80](v33, -1, -1);
      MEMORY[0x223DE0F80](v32, -1, -1);
    }

    v37 = *(v0 + 2264);
    v38 = *(v0 + 2256);
    v39 = *(v0 + 2224);
    v40 = *(v0 + 2216);
    v41 = *(v0 + 2208);
    v42 = *(v0 + 2200);
    swift_storeEnumTagMultiPayload();
    v38(v39);
    *v42 = 0;

    v23 = closure #1 in AssistantLocationProvider.fetchLocation();
    v24 = v0 + 16;
    v25 = v0 + 1464;
    v26 = v0 + 2096;
  }

  else
  {
    v43 = *(v0 + 2344);

    v44 = *(v0 + 2352);
    if (!v43)
    {
      v65 = *(v0 + 2352);
      goto LABEL_16;
    }

    v45 = *(v0 + 2304);
    v46 = v44;
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = *(v0 + 2352);
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v67 = v51;
      *v50 = 136315138;
      swift_getErrorValue();
      v52 = *(v0 + 1400);
      v53 = *(v0 + 1408);
      v54 = *(v0 + 1416);
      v55 = Error.localizedDescription.getter();
      v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, &v67);

      *(v50 + 4) = v57;
      _os_log_impl(&dword_2232BB000, v47, v48, "Setting status to .unavailable with error %s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v51);
      MEMORY[0x223DE0F80](v51, -1, -1);
      MEMORY[0x223DE0F80](v50, -1, -1);
    }

    v58 = *(v0 + 2352);
    v59 = *(v0 + 2264);
    v60 = *(v0 + 2256);
    v61 = *(v0 + 2224);
    v62 = *(v0 + 2216);
    v63 = *(v0 + 2208);
    v64 = *(v0 + 2200);
    swift_storeEnumTagMultiPayload();
    v60(v61);

    *v64 = 0;
    v23 = closure #1 in AssistantLocationProvider.fetchLocation();
    v24 = v0 + 16;
    v25 = v0 + 1464;
    v26 = v0 + 1856;
  }

LABEL_17:

  return MEMORY[0x282200920](v24, v25, v23, v26);
}

uint64_t AssistantLocationProvider.serviceHelper.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  return swift_unknownObjectRetain();
}

Swift::Void __swiftcall PegasusCacheManager.prepare()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_overrideEnabled))
  {
    goto LABEL_4;
  }

  v13 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_trialClient);
  v14 = MEMORY[0x223DDF550](0x635F656C62616E65, 0xEE00676E69686361);
  v15 = MEMORY[0x223DDF550](0xD000000000000018, 0x80000002234D9430);
  v16 = [v13 levelForFactor:v14 withNamespaceName:v15];

  if (v16)
  {
    v17 = [v16 BOOLeanValue];

    if (v17)
    {
LABEL_4:
      v22 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch19PegasusCacheManager_cacheQueue);
      v18 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = partial apply for closure #1 in PegasusCacheManager.prepare();
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_4;
      v21 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      v23 = MEMORY[0x277D84F90];
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
      v20 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v19 = v21;
      MEMORY[0x223DDFBF0](0, v12, v6, v21);
      _Block_release(v19);
      (*(v2 + 8))(v6, v1);
      (*(v8 + 8))(v12, v20);
    }
  }
}

uint64_t sub_2232CF6D0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void AssistantLocationProvider.status.getter()
{
  v1 = *(v0 + 24);
  type metadata accessor for LocationStatus();
  v2 = v1;
  OS_dispatch_queue.sync<A>(execute:)();
}

uint64_t outlined init with copy of LocationStatus(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationStatus();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in AssistantLocationProvider.status.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21SiriInformationSearch25AssistantLocationProvider__status;
  swift_beginAccess();
  return outlined init with copy of LocationStatus(v1 + v3, a1);
}

{
  return partial apply for closure #1 in AssistantLocationProvider.status.getter(a1);
}

uint64_t outlined destroy of LocationStatus(uint64_t a1)
{
  v2 = type metadata accessor for LocationStatus();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AssistantLocationProvider.status.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch14LocationStatusOAC0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch14LocationStatusOAC0E5ErrorOGMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = aBlock - v7;
  v9 = type metadata accessor for LocationStatus();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8, v12);
  v13 = *(v1 + 24);
  outlined init with copy of LocationStatus(a1, aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  outlined init with take of LocationStatus(aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  v16 = swift_allocObject();
  *(v16 + 16) = partial apply for closure #1 in AssistantLocationProvider.status.setter;
  *(v16 + 24) = v15;
  aBlock[4] = partial apply for thunk for @callee_guaranteed () -> ();
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_15;
  v17 = _Block_copy(aBlock);
  v18 = v13;

  dispatch_sync(v18, v17);

  _Block_release(v17);
  LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

  if (v17)
  {
    __break(1u);
  }

  else
  {
    v20 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch25AssistantLocationProvider_statusPassthrough);
    outlined init with copy of LocationStatus(a1, v8);
    swift_storeEnumTagMultiPayload();
    PassthroughSubject.send(_:)();
    outlined destroy of LocationStatus(a1);
    outlined destroy of MediaUserStateCenter?(v8, &_ss6ResultOy21SiriInformationSearch14LocationStatusOAC0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch14LocationStatusOAC0E5ErrorOGMR);
  }

  return result;
}

uint64_t sub_2232CFB78()
{
  v1 = *(type metadata accessor for LocationStatus() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);

  v6 = (v0 + v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23CLAccuracyAuthorizationVSg_10Foundation4DateVtMd, &_sSo23CLAccuracyAuthorizationVSg_10Foundation4DateVtMR) + 48);
    v9 = type metadata accessor for Date();
    (*(*(v9 - 8) + 8))(v6 + v8, v9);
  }

  else if (!EnumCaseMultiPayload)
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t type metadata accessor for PommesRequestContext()
{
  result = type metadata singleton initialization cache for PommesRequestContext;
  if (!type metadata singleton initialization cache for PommesRequestContext)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with take of LocationStatus(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationStatus();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of PommesSearchReason?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t partial apply for closure #1 in AssistantLocationProvider.status.setter()
{
  v1 = *(type metadata accessor for LocationStatus() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return closure #1 in AssistantLocationProvider.status.setter(v2, v3);
}

uint64_t PommesBridgeRequestProcessor.setRequestContextAndBeginSearchIfReady(_:)(uint64_t a1)
{
  v2 = v1;
  v29 = type metadata accessor for PommesCandidateId();
  v4 = *(v29 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v29, v6);
  v8 = (v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = type metadata accessor for PommesBridgeResultCandidateState(0);
  v9 = *(v28 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v28, v11);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + direct field offset for PommesBridgeRequestProcessor.pommesRequestContext);
  *(v2 + direct field offset for PommesBridgeRequestProcessor.pommesRequestContext) = a1;

  v16 = (*(*v2 + class metadata base offset for PommesBridgeRequestProcessor + 120))(v15);
  v17 = (*(*v16 + 120))(v16);

  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = v4;
    v20 = *(*v2 + class metadata base offset for PommesBridgeRequestProcessor + 464);
    v21 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v27[1] = v17;
    v22 = v9;
    v23 = v17 + v21;
    v24 = *(v22 + 72);
    v25 = (v19 + 8);
    do
    {
      outlined init with copy of PommesBridgeResultCandidateState.ParseState(v23, v13, type metadata accessor for PommesBridgeResultCandidateState);
      if (v20(v13))
      {
        PommesBridgeResultCandidateState.pommesCandidateId.getter(v8);
        (*(*v2 + class metadata base offset for PommesBridgeRequestProcessor + 472))(v8, &v13[*(v28 + 20)]);
        (*v25)(v8, v29);
      }

      outlined destroy of NLXResultCandidate(v13, type metadata accessor for PommesBridgeResultCandidateState);
      v23 += v24;
      --v18;
    }

    while (v18);
  }
}

uint64_t _sIg_Ieg_TRTA_0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t closure #1 in AssistantLocationProvider.status.setter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationStatus();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of LocationStatus(a2, v8);
  v9 = OBJC_IVAR____TtC21SiriInformationSearch25AssistantLocationProvider__status;
  swift_beginAccess();
  outlined assign with take of LocationStatus(v8, a1 + v9);
  return swift_endAccess();
}

uint64_t outlined assign with take of LocationStatus(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationStatus();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t AFRequestDispatcherServiceHelper.currentAuthorizationStyleAsync()()
{
  *(v1 + 32) = v0;
  return MEMORY[0x2822009F8](AFRequestDispatcherServiceHelper.currentAuthorizationStyleAsync(), 0, 0);
}

{
  if ([*(v0 + 32) respondsToSelector_])
  {
    v1 = *(v0 + 32);
    v2 = swift_allocObject();
    *(v2 + 16) = v1;
    v3 = swift_allocObject();
    *(v3 + 16) = partial apply;
    *(v3 + 24) = v2;
    v4 = swift_allocObject();
    *(v0 + 40) = v4;
    *(v4 + 16) = partial apply for thunk for @escaping @callee_guaranteed (@unowned @escaping @callee_unowned @convention(block) @Sendable (@unowned AFLocationAuthorizationStyle, @unowned CLAccuracyAuthorization) -> ()) -> ();
    *(v4 + 24) = v3;
    v5 = swift_task_alloc();
    *(v0 + 48) = v5;
    *(v5 + 16) = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed @Sendable (@unowned AFLocationAuthorizationStyle, @unowned CLAccuracyAuthorization) -> ()) -> ();
    *(v5 + 24) = v4;
    v6 = *(MEMORY[0x277D859E0] + 4);
    swift_unknownObjectRetain();
    v7 = swift_task_alloc();
    *(v0 + 56) = v7;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo28AFLocationAuthorizationStyleV_So010CLAccuracyB0VtMd, &_sSo28AFLocationAuthorizationStyleV_So010CLAccuracyB0VtMR);
    *v7 = v0;
    v7[1] = AFRequestDispatcherServiceHelper.currentAuthorizationStyleAsync();

    return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD000000000000020, 0x80000002234DF6C0, partial apply for closure #1 in AFRequestDispatcherServiceHelper.currentAuthorizationStyleAsync(), v5, v8);
  }

  else
  {
    lazy protocol witness table accessor for type OptionalMethodError and conformance OptionalMethodError();
    swift_allocError();
    *v9 = 0;
    swift_willThrow();
    v10 = *(v0 + 8);

    return v10();
  }
}

{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x2822009F8](AFRequestDispatcherServiceHelper.currentAuthorizationStyleAsync(), 0, 0);
}

{
  v1 = v0[5];

  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[1];

  return v4(v2, v3);
}

uint64_t sub_2232D0558()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2232D0590()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t closure #1 in AFRequestDispatcherServiceHelper.currentAuthorizationStyleAsync()(uint64_t a1, void (*a2)(uint64_t (*)(), uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo28AFLocationAuthorizationStyleV_So010CLAccuracyB0Vts5NeverOGMd, &_sScCySo28AFLocationAuthorizationStyleV_So010CLAccuracyB0Vts5NeverOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v13 - v8;
  (*(v5 + 16))(&v13 - v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v9, v4);
  a2(partial apply for closure #1 in closure #1 in AFRequestDispatcherServiceHelper.currentAuthorizationStyleAsync(), v11);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed @Sendable (@unowned AFLocationAuthorizationStyle, @unowned CLAccuracyAuthorization) -> ()) -> ()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned @escaping @callee_unowned @convention(block) @Sendable (@unowned AFLocationAuthorizationStyle, @unowned CLAccuracyAuthorization) -> ()) -> ()(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned AFLocationAuthorizationStyle, @unowned CLAccuracyAuthorization) -> ();
  v6[3] = &block_descriptor_83;
  v4 = _Block_copy(v6);

  a3(v4);
  _Block_release(v4);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@unowned AFLocationAuthorizationStyle, @unowned CLAccuracyAuthorization) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v6(a2, a3);
}

uint64_t PommesBridgeRequestProcessor.pommesStateHolder.getter()
{
  v1 = direct field offset for PommesBridgeRequestProcessor.$__lazy_storage_$_pommesStateHolder;
  if (*(v0 + direct field offset for PommesBridgeRequestProcessor.$__lazy_storage_$_pommesStateHolder))
  {
    v2 = *(v0 + direct field offset for PommesBridgeRequestProcessor.$__lazy_storage_$_pommesStateHolder);
  }

  else
  {
    v3 = v0;
    type metadata accessor for PommesStateHolder();
    v2 = swift_allocObject();
    PommesStateHolder.init()();
    v4 = *(v3 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t partial apply for closure #1 in closure #1 in AFRequestDispatcherServiceHelper.currentAuthorizationStyleAsync()()
{
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo28AFLocationAuthorizationStyleV_So010CLAccuracyB0Vts5NeverOGMd, &_sScCySo28AFLocationAuthorizationStyleV_So010CLAccuracyB0Vts5NeverOGMR) - 8);
  v1 = (*(v0 + 80) + 16) & ~*(v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo28AFLocationAuthorizationStyleV_So010CLAccuracyB0Vts5NeverOGMd, &_sScCySo28AFLocationAuthorizationStyleV_So010CLAccuracyB0Vts5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t PommesStateHolder.init()()
{
  v17 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v17 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v17, v3);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6, v8);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v12 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v16[0] = ", speechPackage: ";
  v16[1] = v12;
  static DispatchQoS.userInitiated.getter();
  v18 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type ServerFallbackReason and conformance ServerFallbackReason(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v5, *MEMORY[0x277D85260], v17);
  v13 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v14 = MEMORY[0x277D84F98];
  *(v0 + 16) = v13;
  *(v0 + 24) = v14;
  return v0;
}

uint64_t lazy protocol witness table accessor for type ServerFallbackReason and conformance ServerFallbackReason(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_60Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t PommesStateHolder.states.getter()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SiriInformationSearch32PommesBridgeResultCandidateStateVGMd, &_sSay21SiriInformationSearch32PommesBridgeResultCandidateStateVGMR);
  OS_dispatch_queue.sync<A>(execute:)();
  return v3;
}

uint64_t closure #1 in PommesStateHolder.states.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdO3key_0aB6Search0d12BridgeResultE5StateV5valuetMd, &_s20SiriInformationTypes17PommesCandidateIdO3key_0aB6Search0d12BridgeResultE5StateV5valuetMR);
  v5 = *(*(v64 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v64, v6);
  v63 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v62 = v54 - v11;
  MEMORY[0x28223BE20](v10, v12);
  v61 = v54 - v13;
  v14 = type metadata accessor for PommesBridgeResultCandidateState(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8, v17);
  v19 = v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  v21 = *(a1 + 24);
  v22 = *(v21 + 16);
  v23 = MEMORY[0x277D84F90];
  if (v22)
  {
    v54[0] = a2;
    v54[1] = v2;
    v71 = MEMORY[0x277D84F90];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22, 0);
    v23 = v71;
    v24 = v21 + 64;
    v25 = -1 << *(v21 + 32);
    result = _HashTable.startBucket.getter();
    v26 = result;
    v27 = 0;
    v55 = v21 + 72;
    v56 = v22;
    v59 = v21 + 64;
    v60 = v19;
    v57 = v15;
    v58 = v21;
    while ((v26 & 0x8000000000000000) == 0 && v26 < 1 << *(v21 + 32))
    {
      if ((*(v24 + 8 * (v26 >> 6)) & (1 << v26)) == 0)
      {
        goto LABEL_22;
      }

      v67 = 1 << v26;
      v68 = v26 >> 6;
      v29 = *(v21 + 36);
      v65 = v27;
      v66 = v29;
      v30 = v64;
      v31 = *(v64 + 48);
      v32 = *(v21 + 48);
      v33 = type metadata accessor for PommesCandidateId();
      v34 = *(v33 - 8);
      v35 = v34;
      v36 = v32 + *(v34 + 72) * v26;
      v37 = *(v34 + 16);
      v70 = v23;
      v38 = v61;
      v37(v61, v36, v33);
      v39 = *(v21 + 56);
      v69 = *(v15 + 72);
      outlined init with copy of PommesBridgeResultCandidateState.ParseState(v39 + v69 * v26, &v38[v31], type metadata accessor for PommesBridgeResultCandidateState);
      v40 = v62;
      (*(v35 + 32))(v62, v38, v33);
      v41 = &v38[v31];
      v23 = v70;
      outlined init with take of NLXResultCandidate(v41, v40 + *(v30 + 48), type metadata accessor for PommesBridgeResultCandidateState);
      v42 = v63;
      outlined init with take of PommesSearchReason?(v40, v63, &_s20SiriInformationTypes17PommesCandidateIdO3key_0aB6Search0d12BridgeResultE5StateV5valuetMd, &_s20SiriInformationTypes17PommesCandidateIdO3key_0aB6Search0d12BridgeResultE5StateV5valuetMR);
      v43 = *(v30 + 48);
      v44 = v60;
      outlined init with take of NLXResultCandidate(v42 + v43, v60, type metadata accessor for PommesBridgeResultCandidateState);
      (*(v35 + 8))(v42, v33);
      v71 = v23;
      v46 = *(v23 + 16);
      v45 = *(v23 + 24);
      if (v46 >= v45 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v45 > 1, v46 + 1, 1);
        v23 = v71;
      }

      *(v23 + 16) = v46 + 1;
      v15 = v57;
      result = outlined init with take of NLXResultCandidate(v44, v23 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + v46 * v69, type metadata accessor for PommesBridgeResultCandidateState);
      v21 = v58;
      v24 = v59;
      v28 = 1 << *(v58 + 32);
      if (v26 >= v28)
      {
        goto LABEL_23;
      }

      v47 = *(v59 + 8 * v68);
      if ((v47 & v67) == 0)
      {
        goto LABEL_24;
      }

      if (v66 != *(v58 + 36))
      {
        goto LABEL_25;
      }

      v48 = v47 & (-2 << (v26 & 0x3F));
      if (v48)
      {
        v28 = __clz(__rbit64(v48)) | v26 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v49 = v68 << 6;
        v50 = v68 + 1;
        v51 = (v55 + 8 * v68);
        while (v50 < (v28 + 63) >> 6)
        {
          v53 = *v51++;
          v52 = v53;
          v49 += 64;
          ++v50;
          if (v53)
          {
            result = outlined consume of Set<CommonAudio.Attribute>.Index._Variant(v26, v66, 0);
            v28 = __clz(__rbit64(v52)) + v49;
            goto LABEL_4;
          }
        }

        result = outlined consume of Set<CommonAudio.Attribute>.Index._Variant(v26, v66, 0);
      }

LABEL_4:
      v27 = v65 + 1;
      v26 = v28;
      if (v65 + 1 == v56)
      {

        a2 = v54[0];
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
LABEL_20:
    *a2 = v23;
  }

  return result;
}

uint64_t closure #1 in AssistantLocationProvider.fetchLocation()(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *(*v3 + 2272);
  v7 = *v3;
  v5[285] = a2;
  v5[286] = v2;

  if (v2)
  {
    v8 = closure #1 in AssistantLocationProvider.fetchLocation();
  }

  else
  {
    v5[287] = a1;
    v8 = closure #1 in AssistantLocationProvider.fetchLocation();
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [AFServiceDeviceContext]?) -> ()(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (a2)
  {
    type metadata accessor for AFServiceDeviceContext();
    v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v4(v2);
}

uint64_t closure #1 in PommesPhoneCallStateManager.fetchIsUserOnPhoneCall(requestId:completion:)(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  if (!a1)
  {
    goto LABEL_14;
  }

  v10 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_14:
    v14 = 0;
    goto LABEL_15;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_4:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x223DDFF80](0, a1);
  }

  else
  {
    if (!*(v10 + 16))
    {
      __break(1u);
      return result;
    }

    v12 = *(a1 + 32);
  }

  v13 = v12;
  v14 = [v12 serializedContextByKey];

  if (v14)
  {
    v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = *MEMORY[0x277CEEFD0];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v15 + 16))
    {
      v19 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v18);
      v21 = v20;

      if (v21)
      {
        outlined init with copy of Any(*(v15 + 56) + 32 * v19, v34);

        v22 = objc_allocWithZone(MEMORY[0x277CEF1C8]);
        __swift_project_boxed_opaque_existential_1(v34, v34[3]);
        v23 = [v22 initWithSerializedBackingStore_];
        swift_unknownObjectRelease();
        if ([v23 callState])
        {
          __swift_destroy_boxed_opaque_existential_1(v34);

          v14 = 1;
        }

        else
        {
          v24 = [v23 callState];

          __swift_destroy_boxed_opaque_existential_1(v34);
          v14 = (v24 >> 3) & 1;
        }

        goto LABEL_15;
      }
    }

    else
    {
    }

    goto LABEL_14;
  }

LABEL_15:
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Logger.pommes);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v34[0] = v29;
    *v28 = 67109378;
    *(v28 + 4) = v14;
    *(v28 + 8) = 2080;
    *(v28 + 10) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, v34);
    _os_log_impl(&dword_2232BB000, v26, v27, "Retrieved isUserOnPhoneCall status: %{BOOL}d for requestId: %s", v28, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x223DE0F80](v29, -1, -1);
    MEMORY[0x223DE0F80](v28, -1, -1);
  }

  if (v14)
  {
    v30 = 2;
  }

  else
  {
    v30 = 1;
  }

  v31 = *(a4 + 24);
  v32 = *(a4 + 32);
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  v33 = *(a4 + 40);
  *(a4 + 40) = v30;

  outlined consume of PommesPhoneCallStateManager.Status(v31, v32, v33);
  return a5(v14);
}

double specialized closure #1 in closure #1 in AssistantLocationProvider.fetchLocation()(uint64_t a1)
{
  if (a1 != 1)
  {
    if (!a1)
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v1 = type metadata accessor for Logger();
      __swift_project_value_buffer(v1, static Logger.pommes);
      v2 = Logger.logObject.getter();
      v3 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v2, v3))
      {
        v5 = MEMORY[0x277CE4228];
        goto LABEL_19;
      }

      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2232BB000, v2, v3, "Fetching location with 100 meters accuracy", v4, 2u);
      v5 = MEMORY[0x277CE4228];
      goto LABEL_16;
    }

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.pommes);
    v2 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v7))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v8 = "Encountered unknown accuracyAuthorization. Fetching location with reduced accuracy.";
      goto LABEL_15;
    }

LABEL_17:
    v5 = MEMORY[0x277CE4258];
    goto LABEL_19;
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.pommes);
  v2 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v2, v7))
  {
    goto LABEL_17;
  }

  v4 = swift_slowAlloc();
  *v4 = 0;
  v8 = "Fetching location with reduced accuracy";
LABEL_15:
  _os_log_impl(&dword_2232BB000, v2, v7, v8, v4, 2u);
  v5 = MEMORY[0x277CE4258];
LABEL_16:
  MEMORY[0x223DE0F80](v4, -1, -1);
LABEL_19:

  return *v5;
}

uint64_t partial apply for implicit closure #1 in closure #1 in AssistantLocationProvider.fetchLocation()(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sIeghH_IeAgH_TRTQ0_;

  return implicit closure #1 in closure #1 in AssistantLocationProvider.fetchLocation()(a1, v5, v4);
}

uint64_t implicit closure #1 in closure #1 in AssistantLocationProvider.fetchLocation()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  swift_getObjectType();
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = implicit closure #1 in closure #1 in AssistantLocationProvider.fetchLocation();

  return AFRequestDispatcherServiceHelper.currentLocationAsync(with:)(a3);
}

uint64_t AFRequestDispatcherServiceHelper.currentLocationAsync(with:)()
{
  if ([*(v0 + 32) respondsToSelector_])
  {
    v2 = *(v0 + 24);
    v1 = *(v0 + 32);
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    v4 = swift_allocObject();
    *(v4 + 16) = partial apply;
    *(v4 + 24) = v3;
    v5 = swift_allocObject();
    *(v0 + 40) = v5;
    *(v5 + 16) = partial apply for thunk for @escaping @callee_guaranteed (@unowned AFLocationFetchRequest?, @unowned (@escaping @callee_unowned @convention(block) @Sendable (@unowned CLLocation?, @unowned NSError?) -> ())?) -> ();
    *(v5 + 24) = v4;
    v6 = swift_task_alloc();
    *(v0 + 48) = v6;
    v6[2] = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed AFLocationFetchRequest?, @guaranteed (@escaping @callee_guaranteed @Sendable (@guaranteed CLLocation?, @guaranteed Error?) -> ())?) -> ();
    v6[3] = v5;
    v6[4] = v2;
    v7 = *(MEMORY[0x277D85A40] + 4);
    swift_unknownObjectRetain();
    v8 = swift_task_alloc();
    *(v0 + 56) = v8;
    v9 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for CLLocation, 0x277CE41F8);
    *v8 = v0;
    v8[1] = AFRequestDispatcherServiceHelper.currentLocationAsync(with:);

    return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD00000000000001BLL, 0x80000002234DF670, partial apply for closure #1 in AFRequestDispatcherServiceHelper.currentLocationAsync(with:), v6, v9);
  }

  else
  {
    lazy protocol witness table accessor for type OptionalMethodError and conformance OptionalMethodError();
    swift_allocError();
    *v10 = 0;
    swift_willThrow();
    v11 = *(v0 + 8);

    return v11();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = AFRequestDispatcherServiceHelper.currentLocationAsync(with:);
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = AFRequestDispatcherServiceHelper.currentLocationAsync(with:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v1 = v0[5];

  v2 = v0[2];
  v3 = v0[1];

  return v3(v2);
}

{
  v1 = v0[5];
  v2 = v0[6];

  v3 = v0[8];
  v4 = v0[1];

  return v4();
}

uint64_t AFRequestDispatcherServiceHelper.currentLocationAsync(with:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](AFRequestDispatcherServiceHelper.currentLocationAsync(with:), 0, 0);
}

uint64_t closure #1 in AFRequestDispatcherServiceHelper.currentLocationAsync(with:)(uint64_t a1, void (*a2)(uint64_t, uint64_t (*)(void *a1, void *a2), uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo10CLLocationCs5Error_pGMd, &_sScCySo10CLLocationCs5Error_pGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v16 - v11;
  (*(v8 + 16))(&v16 - v11, a1, v7);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  (*(v8 + 32))(v14 + v13, v12, v7);
  a2(a4, partial apply for closure #1 in closure #1 in AFRequestDispatcherServiceHelper.currentLocationAsync(with:), v14);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed AFLocationFetchRequest?, @guaranteed (@escaping @callee_guaranteed @Sendable (@guaranteed CLLocation?, @guaranteed Error?) -> ())?) -> ()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void thunk for @escaping @callee_guaranteed (@unowned AFLocationFetchRequest?, @unowned (@escaping @callee_unowned @convention(block) @Sendable (@unowned CLLocation?, @unowned NSError?) -> ())?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, void *))
{
  if (a2)
  {
    v7[4] = a2;
    v7[5] = a3;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed SABaseCommand?, @guaranteed Error?) -> ();
    v7[3] = &block_descriptor_64;
    v5 = a1;
    v6 = _Block_copy(v7);

    a1 = v5;
  }

  else
  {
    v6 = 0;
  }

  a4(a1, v6);
  _Block_release(v6);
}

uint64_t partial apply for implicit closure #2 in closure #1 in AssistantLocationProvider.fetchLocation()(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #2 in PommesSearchService.searchInfiEntity(request:timeoutInSec:);

  return implicit closure #2 in closure #1 in AssistantLocationProvider.fetchLocation()(a1, v5, v4);
}

uint64_t implicit closure #2 in closure #1 in AssistantLocationProvider.fetchLocation()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  swift_getObjectType();
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = closure #1 in closure #1 in SageSearch.searchRemote(pommesSearchRequest:clientEntities:location:timeout:);

  return AFRequestDispatcherServiceHelper.currentLocationAsync(with:)(a3);
}

uint64_t closure #1 in closure #1 in AFRequestDispatcherServiceHelper.currentLocationAsync(with:)(void *a1, id a2)
{
  if (a2)
  {
    v2 = a2;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo10CLLocationCs5Error_pGMd, &_sScCySo10CLLocationCs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  if (!a1)
  {
    lazy protocol witness table accessor for type OptionalMethodError and conformance OptionalMethodError();
    swift_allocError();
    *v5 = 1;
    goto LABEL_3;
  }

  v4 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo10CLLocationCs5Error_pGMd, &_sScCySo10CLLocationCs5Error_pGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t partial apply for closure #1 in closure #1 in AFRequestDispatcherServiceHelper.currentLocationAsync(with:)(void *a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo10CLLocationCs5Error_pGMd, &_sScCySo10CLLocationCs5Error_pGMR) - 8) + 80);

  return closure #1 in closure #1 in AFRequestDispatcherServiceHelper.currentLocationAsync(with:)(a1, a2);
}

uint64_t implicit closure #1 in closure #1 in AssistantLocationProvider.fetchLocation()(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](implicit closure #1 in closure #1 in AssistantLocationProvider.fetchLocation(), 0, 0);
  }
}

uint64_t objectdestroy_22Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t PommesBridgeRequestProcessor.handleEndRequest(_:)()
{
  v1 = v0;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pommes);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2232BB000, v3, v4, "PommesBridgeRequestProcessor received end message", v5, 2u);
    MEMORY[0x223DE0F80](v5, -1, -1);
  }

  v6 = *(*v1 + class metadata base offset for PommesBridgeRequestProcessor + 104);

  return v6(1);
}

uint64_t PommesBridgeRequestProcessor.isRequestFinished.setter(char a1)
{
  v3 = direct field offset for PommesBridgeRequestProcessor.isRequestFinished;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t PommesBridgeRequestProcessor.__deallocating_deinit()
{
  v0 = RequestProcessorBase.deinit();
  v1 = *(v0 + direct field offset for PommesBridgeRequestProcessor.$__lazy_storage_$_pommesStateHolder);

  outlined destroy of MediaUserStateCenter?(v0 + direct field offset for PommesBridgeRequestProcessor.sessionState, &_s16SiriMessageTypes24ConversationSessionState_pSgMd, &_s16SiriMessageTypes24ConversationSessionState_pSgMR);
  v2 = *(v0 + direct field offset for PommesBridgeRequestProcessor.aceInputOrigin + 8);

  v3 = *(v0 + direct field offset for PommesBridgeRequestProcessor.pommesRequestContext);

  v4 = *(v0 + direct field offset for PommesBridgeRequestProcessor.pommesSearch);

  v5 = *(v0 + direct field offset for PommesBridgeRequestProcessor.instrumentationUtil);

  v6 = direct field offset for PommesBridgeRequestProcessor.timeout;
  v7 = type metadata accessor for DispatchTimeInterval();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);

  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t PommesStateHolder.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t PommesRequestContext.__deallocating_deinit()
{
  PommesRequestContext.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t PommesRequestContext.deinit()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_sessionId;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId + 8);

  v5 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioSource + 8);

  v6 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioDestination + 8);

  v7 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_responseMode + 8);

  v8 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_bargeInModes);

  outlined destroy of MediaUserStateCenter?(v0 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_approximatePreviousTTSInterval, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v9 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_deviceRestrictions);

  return v0;
}

void *_sSo27AFUserIdentityClassficationVSYSCSY8rawValuexSg03RawE0Qz_tcfCTW_0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t _sSo29ICSubscriptionStatusOfferTypeaSYSCSY8rawValue03RawF0QzvgTW_0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_2232D3A14()
{
  v1 = (type metadata accessor for PerformanceUtil.Ticket(0) - 8);
  v79 = *(*v1 + 80);
  v2 = (v79 + 16) & ~v79;
  v3 = *(*v1 + 64);
  v4 = (type metadata accessor for SignpostToken() - 8);
  v78 = *(*v4 + 80);
  v5 = (v2 + v3 + v78) & ~v78;
  v6 = *(*v4 + 64);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR) - 8);
  v77 = *(v7 + 80);
  v8 = (v5 + v6 + v77) & ~v77;
  v70 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v71 = (v70 + 23) & 0xFFFFFFFFFFFFFFF8;
  v72 = (v71 + 15) & 0xFFFFFFFFFFFFFFF8;
  v73 = type metadata accessor for PommesCandidateId();
  v9 = *(v73 - 8);
  v75 = *(v9 + 80);
  v10 = (v75 + v72 + 16) & ~v75;
  v11 = *(v9 + 64);
  v12 = type metadata accessor for PommesSearchRequest(0);
  v74 = *(*(v12 - 1) + 80);
  v13 = (v10 + v11 + v74) & ~v74;
  v76 = *(*(v12 - 1) + 64);
  v14 = v0 + v2;
  v15 = type metadata accessor for Date();
  (*(*(v15 - 8) + 8))(v14, v15);
  v16 = *(v14 + v1[10] + 8);

  v17 = v0 + v5;
  v18 = v0;
  v19 = v4[7];
  v20 = type metadata accessor for OSSignpostID();
  (*(*(v20 - 8) + 8))(v17 + v19, v20);
  v21 = *(v17 + v4[8]);

  v22 = type metadata accessor for PommesSearchReason();
  v23 = *(v22 - 8);
  if (!(*(v23 + 48))(v0 + v8, 1, v22))
  {
    (*(v23 + 8))(v0 + v8, v22);
  }

  v24 = *(v0 + v70 + 8);

  v25 = *(v0 + v71);

  v26 = *(v0 + v72 + 8);

  (*(v9 + 8))(v0 + v10, v73);
  v27 = (v0 + v13);
  type metadata accessor for PommesSearchRequest.ParseState(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v42 = *(v27 + 1);

    v43 = *(v27 + 2);

    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMd, &_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMR);
    v45 = *(v44 + 64);
    v46 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
    v47 = *(v46 - 8);
    if (!(*(v47 + 48))(&v27[v45], 1, v46))
    {
      (*(v47 + 8))(&v27[v45], v46);
    }

    v36 = &v27[*(v44 + 80)];
LABEL_14:
    v48 = *(v36 + 1);

    goto LABEL_15;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_15;
    }

    v29 = *(v27 + 1);

    v30 = &v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMR) + 48)];
    v31 = *v30;

    v32 = type metadata accessor for NLXResultCandidate();
    v33 = *(v32 + 20);
    v34 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
    v35 = *(v34 - 8);
    if (!(*(v35 + 48))(&v30[v33], 1, v34))
    {
      (*(v35 + 8))(&v30[v33], v34);
    }

    v36 = &v30[*(v32 + 24)];
    goto LABEL_14;
  }

  v37 = *(v27 + 1);

  v38 = *(v27 + 3);

  v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMR) + 64);
  v40 = type metadata accessor for TCUMappedNLResponse();
  v41 = *(v40 - 8);
  if (!(*(v41 + 48))(&v27[v39], 1, v40))
  {
    (*(v41 + 8))(&v27[v39], v40);
  }

LABEL_15:
  v49 = *&v27[v12[5] + 8];

  v50 = v12[6];
  v51 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance();
  v52 = *(v51 - 8);
  if (!(*(v52 + 48))(&v27[v50], 1, v51))
  {
    (*(v52 + 8))(&v27[v50], v51);
  }

  v53 = *&v27[v12[7] + 8];

  v54 = *&v27[v12[8] + 8];

  v55 = *&v27[v12[9] + 8];

  v56 = v12[10];
  v57 = type metadata accessor for PommesContext();
  v58 = *(v57 - 8);
  if (!(*(v58 + 48))(&v27[v56], 1, v57))
  {
    (*(v58 + 8))(&v27[v56], v57);
  }

  v59 = v12[11];
  v60 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v61 = *(v60 - 8);
  if (!(*(v61 + 48))(&v27[v59], 1, v60))
  {
    (*(v61 + 8))(&v27[v59], v60);
  }

  v62 = *&v27[v12[13]];

  v63 = v12[14];
  v64 = type metadata accessor for InputOrigin();
  v65 = *(v64 - 8);
  if (!(*(v65 + 48))(&v27[v63], 1, v64))
  {
    (*(v65 + 8))(&v27[v63], v64);
  }

  v66 = *&v27[v12[19]];

  v67 = *&v27[v12[21] + 8];

  v68 = *&v27[v12[23]];

  return MEMORY[0x2821FE8E8](v18, v13 + v76, v79 | v78 | v75 | v77 | v74 | 7);
}

uint64_t sub_2232D4290()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_2232D42C8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);
  outlined consume of Result<PommesResponse, Error>(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_2232D43AC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 184))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2232D43FC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 112) = v2;
  return result;
}

uint64_t sub_2232D4440@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 208))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D4490(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for PommesSearchReason();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_2232D453C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for PommesSearchReason();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2232D45E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PommesSearchReason();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2232D464C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PommesSearchReason();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2232D46BC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2232D4700()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2232D4738()
{
  v1 = type metadata accessor for UserID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2232D4810@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D485C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 136);

  return v3(v4);
}

uint64_t sub_2232D48B0()
{
  v1 = type metadata accessor for UserID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 96) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 32);

  v8 = *(v0 + 48);

  v9 = *(v0 + 64);

  v10 = *(v0 + 88);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2232D4A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2232D4B5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2232D4C18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OSSignpostID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_2232D4CD8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for OSSignpostID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2232D4D94()
{
  v1 = type metadata accessor for PommesSearchRequest(0);
  v57 = *(*(v1 - 1) + 80);
  v55 = *(*(v1 - 1) + 64);
  v2 = type metadata accessor for PommesCandidateId();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 4);

  v8 = *(v0 + 6);

  v56 = (v57 + 56) & ~v57;
  v9 = &v0[v56];
  type metadata accessor for PommesSearchRequest.ParseState(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v54 = v5;
    v24 = *(v9 + 1);

    v25 = *(v9 + 2);

    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMd, &_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMR);
    v27 = *(v26 + 64);
    v28 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
    v29 = *(v28 - 8);
    if (!(*(v29 + 48))(&v9[v27], 1, v28))
    {
      (*(v29 + 8))(&v9[v27], v28);
    }

    v30 = *&v9[*(v26 + 80) + 8];

LABEL_12:
    v5 = v54;
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_13;
    }

    v53 = v2;
    v54 = v5;
    v11 = *(v9 + 1);

    v12 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMR) + 48)];
    v13 = *v12;

    v14 = type metadata accessor for NLXResultCandidate();
    v15 = *(v14 + 20);
    v16 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
    v17 = *(v16 - 8);
    if (!(*(v17 + 48))(&v12[v15], 1, v16))
    {
      (*(v17 + 8))(&v12[v15], v16);
    }

    v18 = *&v12[*(v14 + 24) + 8];

    v2 = v53;
    goto LABEL_12;
  }

  v19 = *(v9 + 1);

  v20 = *(v9 + 3);

  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMR) + 64);
  v22 = type metadata accessor for TCUMappedNLResponse();
  v23 = *(v22 - 8);
  if (!(*(v23 + 48))(&v9[v21], 1, v22))
  {
    (*(v23 + 8))(&v9[v21], v22);
  }

LABEL_13:
  v31 = *&v9[v1[5] + 8];

  v32 = v1[6];
  v33 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance();
  v34 = *(v33 - 8);
  if (!(*(v34 + 48))(&v9[v32], 1, v33))
  {
    (*(v34 + 8))(&v9[v32], v33);
  }

  v35 = *&v9[v1[7] + 8];

  v36 = *&v9[v1[8] + 8];

  v37 = *&v9[v1[9] + 8];

  v38 = v1[10];
  v39 = type metadata accessor for PommesContext();
  v40 = *(v39 - 8);
  if (!(*(v40 + 48))(&v9[v38], 1, v39))
  {
    (*(v40 + 8))(&v9[v38], v39);
  }

  v41 = v1[11];
  v42 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v43 = *(v42 - 8);
  if (!(*(v43 + 48))(&v9[v41], 1, v42))
  {
    (*(v43 + 8))(&v9[v41], v42);
  }

  v44 = *&v9[v1[13]];

  v45 = v1[14];
  v46 = type metadata accessor for InputOrigin();
  v47 = *(v46 - 8);
  if (!(*(v47 + 48))(&v9[v45], 1, v46))
  {
    (*(v47 + 8))(&v9[v45], v46);
  }

  v48 = (v56 + v55 + v4) & ~v4;

  v49 = *&v9[v1[19]];

  v50 = *&v9[v1[21] + 8];

  v51 = *&v9[v1[23]];

  (*(v3 + 8))(&v0[v48], v2);

  return MEMORY[0x2821FE8E8](v0, v48 + v5, v57 | v4 | 7);
}

uint64_t sub_2232D53AC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2232D53E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCys6ResultOy21SiriInformationSearch14PommesResponseCs5Error_pGs5NeverOGMd, &_sScCys6ResultOy21SiriInformationSearch14PommesResponseCs5Error_pGs5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2232D54A4()
{
  v1 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  }

  v6 = (v3 + 80) & ~v3;

  (*(v2 + 8))(v0 + v6, v1);

  return MEMORY[0x2821FE8E8](v0, v6 + v4, v3 | 7);
}

uint64_t sub_2232D5580()
{
  v1 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = v0[2];
  swift_unknownObjectRelease();
  if (v0[7])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  }

  v6 = (v3 + 72) & ~v3;
  (*(v2 + 8))(v0 + v6, v1);

  return MEMORY[0x2821FE8E8](v0, v6 + v4, v3 | 7);
}

uint64_t sub_2232D5654()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  }

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2232D56AC()
{
  v1 = (type metadata accessor for PerformanceUtil.Ticket(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v3;
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = *(v6 + v1[10] + 8);

  v9 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v2 | 7);
}

uint64_t sub_2232D57BC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2232D5804(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2232D58B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2232D5954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2232D5A44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_2232D5B40()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2232D5B78()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2232D5BB0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2232D5C40()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2232D5D44@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D5D90(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 128);

  return v3(v4);
}

uint64_t sub_2232D5DE4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2232D5E2C()
{
  outlined consume of FeatureFlag(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_2232D5E7C()
{
  v1 = type metadata accessor for PommesSearchRequest(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);

  v6 = (v0 + v3);
  type metadata accessor for PommesSearchRequest.ParseState(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v21 = v4;
      v22 = *(v6 + 1);

      v23 = *(v6 + 2);

      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMd, &_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMR);
      v25 = *(v24 + 64);
      v26 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
      v27 = *(v26 - 8);
      if (!(*(v27 + 48))(&v6[v25], 1, v26))
      {
        (*(v27 + 8))(&v6[v25], v26);
      }

      v28 = *&v6[*(v24 + 80) + 8];

      v4 = v21;
      break;
    case 1:
      v16 = *(v6 + 1);

      v17 = *(v6 + 3);

      v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMR) + 64);
      v19 = type metadata accessor for TCUMappedNLResponse();
      v20 = *(v19 - 8);
      if (!(*(v20 + 48))(&v6[v18], 1, v19))
      {
        (*(v20 + 8))(&v6[v18], v19);
      }

      break;
    case 0:
      v56 = v4;
      v8 = *(v6 + 1);

      v9 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMR) + 48)];
      v10 = *v9;

      v11 = type metadata accessor for NLXResultCandidate();
      v12 = *(v11 + 20);
      v13 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
      v14 = *(v13 - 8);
      if (!(*(v14 + 48))(&v9[v12], 1, v13))
      {
        (*(v14 + 8))(&v9[v12], v13);
      }

      v15 = *&v9[*(v11 + 24) + 8];

      v4 = v56;
      break;
  }

  v29 = *&v6[v1[5] + 8];

  v30 = v1[6];
  v31 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance();
  v32 = *(v31 - 8);
  if (!(*(v32 + 48))(&v6[v30], 1, v31))
  {
    (*(v32 + 8))(&v6[v30], v31);
  }

  v33 = *&v6[v1[7] + 8];

  v34 = *&v6[v1[8] + 8];

  v35 = *&v6[v1[9] + 8];

  v36 = v1[10];
  v37 = type metadata accessor for PommesContext();
  v38 = *(v37 - 8);
  if (!(*(v38 + 48))(&v6[v36], 1, v37))
  {
    (*(v38 + 8))(&v6[v36], v37);
  }

  v39 = v1[11];
  v40 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v41 = *(v40 - 8);
  if (!(*(v41 + 48))(&v6[v39], 1, v40))
  {
    (*(v41 + 8))(&v6[v39], v40);
  }

  v42 = *&v6[v1[13]];

  v43 = v1[14];
  v44 = type metadata accessor for InputOrigin();
  v45 = *(v44 - 8);
  if (!(*(v45 + 48))(&v6[v43], 1, v44))
  {
    (*(v45 + 8))(&v6[v43], v44);
  }

  v46 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = (v46 + 15) & 0xFFFFFFFFFFFFFFF8;
  v48 = (v47 + 23) & 0xFFFFFFFFFFFFFFF8;

  v49 = *&v6[v1[19]];

  v50 = *&v6[v1[21] + 8];

  v51 = *&v6[v1[23]];

  v52 = *(v0 + v46);

  v53 = *(v0 + v47 + 8);

  v54 = *(v0 + v48 + 8);

  return MEMORY[0x2821FE8E8](v0, v48 + 16, v2 | 7);
}

uint64_t sub_2232D6428()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 32);

  v7 = type metadata accessor for PommesCandidateId();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3, 1, v7))
  {
    (*(v8 + 8))(v0 + v3, v7);
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4, v2 | 7);
}

uint64_t sub_2232D655C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 40);

  v7 = type metadata accessor for PommesCandidateId();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3, 1, v7))
  {
    (*(v8 + 8))(v0 + v3, v7);
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4, v2 | 7);
}

uint64_t sub_2232D6690()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 36, 7);
}

uint64_t sub_2232D66D0()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);

  v8 = *(v0 + 48);

  (*(v2 + 8))(v0 + v4, v1);

  v9 = *(v0 + v6 + 8);

  return MEMORY[0x2821FE8E8](v0, v6 + 16, v3 | 7);
}

uint64_t sub_2232D67D4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2232D6824()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2232D6874@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D6914@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2232D69D4()
{
  outlined consume of FeatureFlag(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_2232D6A14()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2232D6A54()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2232D6A8C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2232D6AC4()
{
  v1 = (type metadata accessor for PerformanceUtil.Ticket(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = (type metadata accessor for SignpostToken() - 8);
  v6 = *(*v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = v2 | v6;
  v9 = (*(*v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 8))(v0 + v3, v12);
  v13 = *(v0 + v3 + v1[10] + 8);

  v14 = v5[7];
  v15 = type metadata accessor for OSSignpostID();
  (*(*(v15 - 8) + 8))(v0 + v7 + v14, v15);
  v16 = *(v0 + v7 + v5[8]);

  v17 = *(v0 + v10);

  v18 = *(v0 + v11);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v8 | 7);
}

uint64_t sub_2232D6CA0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2232D6D30()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2232D6D68()
{
  v1 = type metadata accessor for PommesCandidateId();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2232D6E4C()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2232D6E90()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2232D6EC8()
{
  outlined consume of FeatureFlag(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_2232D6F10@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = static ServiceHelperManager.shared;
  return swift_unknownObjectRetain();
}

uint64_t sub_2232D6F64()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2232D70A0()
{
  outlined consume of FeatureFlag(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_2232D70E0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2232D7118()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 32);

  v7 = type metadata accessor for PommesCandidateId();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3, 1, v7))
  {
    (*(v8 + 8))(v0 + v3, v7);
  }

  v9 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + v9);

  return MEMORY[0x2821FE8E8](v0, v9 + 8, v2 | 7);
}

uint64_t sub_2232D7254()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2232D728C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2232D72CC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2232D7454@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + class metadata base offset for PommesBridge + 120))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2232D7524@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + class metadata base offset for PommesBridge + 144))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2232D75F4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2232D762C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2232D76B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D7790@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D78A4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x60))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D7900(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x68);
  v4 = swift_unknownObjectRetain();
  return v3(v4);
}

uint64_t _s12SiriOntology26UsoEntity_common_MediaItemCSgSgWOe_0(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t _s12SiriOntology26UsoEntity_common_MediaItemCSgSgWOy_0(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_2232D7B94@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 904))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D7BE8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 136) = v2;
  return result;
}

uint64_t sub_2232D7C2C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 928))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D7C80(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 137) = v2;
  return result;
}

uint64_t sub_2232D7CC4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 952))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D7D18(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 138) = v2;
  return result;
}

uint64_t sub_2232D7D5C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1040))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D7DB0(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 160);
  *(*a2 + 160) = *a1;

  return outlined consume of [CodeGenListEntry<UsoEntity_common_UserEntity>]??(v2);
}

uint64_t sub_2232D7DF4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1112))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D7E58@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1136))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D7EBC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1160))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D7F10(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 192);
  *(*a2 + 192) = *a1;
}

uint64_t sub_2232D7F54@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1184))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D7FA8(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 200);
  *(*a2 + 200) = *a1;

  return _s12SiriOntology26UsoEntity_common_MediaItemCSgSgWOe_0(v2);
}

uint64_t sub_2232D7FEC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1208))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D8040(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 208);
  *(*a2 + 208) = *a1;
}

uint64_t sub_2232D8084@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1232))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D80D8(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 216);
  *(*a2 + 216) = *a1;
}

uint64_t sub_2232D811C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1256))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D8170(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 224);
  *(*a2 + 224) = *a1;
}

uint64_t sub_2232D81B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1280))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D8208(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 232);
  *(*a2 + 232) = *a1;
}

uint64_t sub_2232D824C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1304))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D82A0(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 240);
  *(*a2 + 240) = *a1;
}

uint64_t sub_2232D82E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1328))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D8338(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 248);
  *(*a2 + 248) = *a1;
}

uint64_t sub_2232D837C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1352))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D83D0(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 256);
  *(*a2 + 256) = *a1;
}

uint64_t sub_2232D8414@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1376))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D8468(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 264);
  *(*a2 + 264) = *a1;
}

uint64_t sub_2232D84AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1400))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D8500(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 272);
  *(*a2 + 272) = *a1;
}

uint64_t sub_2232D8544@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1424))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D85A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1448))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D85FC(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 288);
  *(*a2 + 288) = *a1;

  return _s12SiriOntology26UsoEntity_common_MediaItemCSgSgWOe_0(v2);
}

uint64_t sub_2232D8640@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1472))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D8694(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 296);
  *(*a2 + 296) = *a1;
}

uint64_t sub_2232D86D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1496))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D872C(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 304);
  *(*a2 + 304) = *a1;
}

uint64_t sub_2232D8770@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1520))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D87C4(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 312);
  *(*a2 + 312) = *a1;
}

uint64_t sub_2232D8808@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1544))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D885C(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 320);
  *(*a2 + 320) = *a1;
}

uint64_t sub_2232D88A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1568))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D88F4(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 328);
  *(*a2 + 328) = *a1;
}

uint64_t sub_2232D8938@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1592))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2232D898C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  v5 = *(*a2 + 336);
  v6 = *(*a2 + 344);
  *(v4 + 336) = v3;
  *(v4 + 344) = v2;

  return outlined consume of String??(v5, v6);
}

uint64_t sub_2232D89D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1616))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D8A28(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 352);
  *(*a2 + 352) = *a1;
}

uint64_t sub_2232D8A6C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1640))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D8AC0(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 360);
  *(*a2 + 360) = *a1;
}

uint64_t sub_2232D8B04@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1664))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D8B58(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 368);
  *(*a2 + 368) = *a1;
}

uint64_t sub_2232D8B9C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1688))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D8BF0(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 376);
  *(*a2 + 376) = *a1;
}

uint64_t sub_2232D8C34@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1712))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D8C98@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1736))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D8CFC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1760))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D8D50(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 392);
  *(*a2 + 392) = *a1;
}

uint64_t sub_2232D8D94@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1784))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D8DF8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1808))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D8E4C(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 408);
  *(*a2 + 408) = *a1;
}

uint64_t sub_2232D8E90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1832))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D8EE4(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 416);
  *(*a2 + 416) = *a1;
}

uint64_t sub_2232D8F28@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1856))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D8F7C(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 424);
  *(*a2 + 424) = *a1;
}

uint64_t sub_2232D8FC0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1880))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D9024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 1904))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2232D9080(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 440) = *result;
  *(v3 + 448) = v2;
  return result;
}

uint64_t sub_2232D909C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1928))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2232D90F0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 1936);

  return v4(v2, v3);
}

uint64_t sub_2232D9160@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D9200@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static SearchToolGlobalRequestXPC.supportsSecureCoding;
  return result;
}

uint64_t sub_2232D924C(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static SearchToolGlobalRequestXPC.supportsSecureCoding = v1;
  return result;
}

uint64_t sub_2232D9294@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D92E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D9334@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  return result;
}

uint64_t sub_2232D9384@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 184))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2232D93D4()
{
  v1 = (type metadata accessor for PerformanceUtil.Ticket(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v3;
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = *(v6 + v1[10] + 8);

  v9 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v2 | 7);
}

uint64_t sub_2232D94E4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2232D95A4()
{
  v1 = type metadata accessor for PommesCandidateId();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v11 = v0 + v8;
  v12 = type metadata accessor for PommesBridgeResultCandidateState(0);
  if ((*(*(v12 - 1) + 48))(v0 + v8, 1, v12))
  {
    goto LABEL_18;
  }

  type metadata accessor for PommesBridgeResultCandidateState.ParseState(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v45 = v9;
  if (EnumCaseMultiPayload == 2)
  {

    v42 = *(v11 + 8);

    v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SARDRunPOMMESRequestC7request_Say12SiriNLUTypes0D23_Nlu_External_UserParseVG10userParsesAD0d1_f1_g10_DelegatedH9DialogActVSg08fallbackI0tMd, &_sSo20SARDRunPOMMESRequestC7request_Say12SiriNLUTypes0D23_Nlu_External_UserParseVG10userParsesAD0d1_f1_g10_DelegatedH9DialogActVSg08fallbackI0tMR) + 64);
    v31 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
    v32 = *(v31 - 8);
    if ((*(v32 + 48))(v11 + v30, 1, v31))
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v14 = *(v11 + 8);

        v15 = (v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0Sb011hasNLResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0Sb011hasNLResultF0tMR) + 48));
        v16 = *v15;

        v44 = type metadata accessor for NLXResultCandidate();
        v17 = *(v44 + 20);
        v18 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
        v19 = *(v18 - 8);
        if (!(*(v19 + 48))(&v15[v17], 1, v18))
        {
          (*(v19 + 8))(&v15[v17], v18);
        }

        v20 = *&v15[*(v44 + 24) + 8];
      }

      goto LABEL_14;
    }

    v21 = *(v11 + 8);

    v22 = *(v11 + 24);

    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMR);
    v24 = v23[16];
    v25 = type metadata accessor for TCUMappedNLResponse();
    v26 = *(v25 - 8);
    if (!(*(v26 + 48))(v11 + v24, 1, v25))
    {
      (*(v26 + 8))(v11 + v24, v25);
    }

    v27 = v23[20];
    v28 = type metadata accessor for SiriUserInput();
    v29 = *(v28 - 8);
    if (!(*(v29 + 48))(v11 + v27, 1, v28))
    {
      (*(v29 + 8))(v11 + v27, v28);
    }

    v30 = v23[24];
    v31 = type metadata accessor for RewrittenUtteranceCandidateMessage.RewriteReason();
    v32 = *(v31 - 8);
    if ((*(v32 + 48))(v11 + v30, 1, v31))
    {
      goto LABEL_14;
    }
  }

  (*(v32 + 8))(v11 + v30, v31);
LABEL_14:
  v33 = v12[5];
  v34 = type metadata accessor for UserID();
  (*(*(v34 - 8) + 8))(v11 + v33, v34);
  v35 = v12[7];
  v36 = type metadata accessor for SelectedUserAttributes();
  v37 = *(v36 - 8);
  if (!(*(v37 + 48))(v11 + v35, 1, v36))
  {
    (*(v37 + 8))(v11 + v35, v36);
  }

  v38 = *(v11 + v12[9] + 8);

  v39 = v12[15];
  v40 = type metadata accessor for PommesSearchEagerInfo(0);
  v9 = v45;
  if (!(*(*(v40 - 8) + 48))(v11 + v39, 1, v40))
  {
    v41 = type metadata accessor for PommesSearchReason();
    (*(*(v41 - 8) + 8))(v11 + v39, v41);
  }

LABEL_18:

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_2232D9BB0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2232D9BF8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2232D9C34()
{
  v1 = type metadata accessor for PommesCandidateId();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2232D9D20()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for PommesCandidateId();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = type metadata accessor for PommesError();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3, 1, v9))
  {
    (*(v10 + 8))(v0 + v3, v9);
  }

  v11 = v2 | v7;
  v12 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + v7 + 8) & ~v7;
  v14 = *(v0 + v12);

  (*(v6 + 8))(v0 + v13, v5);

  return MEMORY[0x2821FE8E8](v0, v13 + v8, v11 | 7);
}

uint64_t sub_2232D9F34@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + class metadata base offset for PommesBridgeRequestProcessor + 96))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2232DA004@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + class metadata base offset for PommesBridgeRequestProcessor + 120))();
  *a2 = result;
  return result;
}

uint64_t sub_2232DA06C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *(**a2 + class metadata base offset for PommesBridgeRequestProcessor + 128);

  return v3(v4);
}

uint64_t sub_2232DA1C4@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + class metadata base offset for PommesBridgeRequestProcessor + 168))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2232DA230(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = direct field offset for PommesBridgeRequestProcessor.isCandidateRequest;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_2232DA2E8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for PommesBridgeResultCandidateState.ParseState(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for UserID();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v16 = *(a1 + a3[9] + 8);
    if (v16 >= 0xFFFFFFFF)
    {
      LODWORD(v16) = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC9EagerInfoVSgMd, &_s21SiriInformationSearch06PommesC9EagerInfoVSgMR);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[15];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_2232DA4C0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for PommesBridgeResultCandidateState.ParseState(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for UserID();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[7];
    goto LABEL_7;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[9] + 8) = (a2 - 1);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC9EagerInfoVSgMd, &_s21SiriInformationSearch06PommesC9EagerInfoVSgMR);
    v18 = *(*(v17 - 8) + 56);
    v19 = a1 + a4[15];

    return v18(v19, a2, a2, v17);
  }

  return result;
}

uint64_t sub_2232DA6D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t sub_2232DA720(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 128);

  return v3(v4);
}

uint64_t sub_2232DA778()
{
  outlined consume of FeatureFlag(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_2232DA86C()
{
  outlined consume of FeatureFlag(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_2232DA8AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 224))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2232DA8F8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 232);

  return v4(v2, v3);
}

__n128 sub_2232DA96C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_2232DA9CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 272))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2232DAA20(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 280);
  outlined copy of Data?(*a1, v3);
  return v4(v2, v3);
}

uint64_t sub_2232DAAA0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 296))();
  *a2 = result;
  return result;
}

uint64_t sub_2232DAAF4(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 304);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2232DAB6C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result;
  return result;
}

uint64_t sub_2232DAC0C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result;
  return result;
}

uint64_t sub_2232DAC5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2232DAD1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2232DADD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PerformanceUtil.Ticket(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2232DAE44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PerformanceUtil.Ticket(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2232DAEB4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  return result;
}

uint64_t sub_2232DAF54()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2232DAFA4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2232DAFDC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x60))();
  *a2 = result;
  return result;
}

uint64_t sub_2232DB038(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x68);

  return v3(v4);
}

uint64_t sub_2232DB0A8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2232DB0E8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2232DB120@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static AudioResult.supportsSecureCoding;
  return result;
}

uint64_t sub_2232DB16C(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static AudioResult.supportsSecureCoding = v1;
  return result;
}

uint64_t sub_2232DB1B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  return result;
}

uint64_t sub_2232DB254@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result;
  return result;
}

uint64_t sub_2232DB2A0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 136);
  v4 = swift_unknownObjectRetain();
  return v3(v4);
}

uint64_t sub_2232DB33C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 232))();
  *a2 = result;
  return result;
}

uint64_t sub_2232DB388(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 240);

  return v3(v4);
}

uint64_t sub_2232DB3DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  return result;
}

uint64_t sub_2232DB428(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 104);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2232DB480@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = static UtteranceMatchPreflightClient.disallowedUtterances;
}

uint64_t sub_2232DB4D4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_2232DB590(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2232DB6A0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2232DB6F4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xB8))();
  *a2 = result;
  return result;
}

uint64_t sub_2232DBC40()
{
  v1 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = v0[2];
  swift_unknownObjectRelease();
  if (v0[7])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  }

  v6 = (v3 + 72) & ~v3;
  (*(v2 + 8))(v0 + v6, v1);

  return MEMORY[0x2821FE8E8](v0, v6 + v4, v3 | 7);
}

uint64_t sub_2232DBD14()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2232DBD4C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v19 = *(v1 + 64);
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v18 = *(v5 + 64);
  v20 = type metadata accessor for PommesCandidateId();
  v7 = *(v20 - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(v0 + 16);

  v11 = (*(v5 + 48))(v0 + v3, 1, v4);
  v12 = *(v5 + 8);
  if (!v11)
  {
    v12(v0 + v3, v4);
  }

  v13 = (v3 + v19 + v6) & ~v6;
  v14 = (v13 + v18 + v8) & ~v8;
  v15 = (v9 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12(v0 + v13, v4);
  (*(v7 + 8))(v0 + v14, v20);
  v16 = *(v0 + v15);

  return MEMORY[0x2821FE8E8](v0, v15 + 8, v2 | v6 | v8 | 7);
}

uint64_t sub_2232DBF7C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8);
  v78 = *(v1 + 80);
  v2 = (v78 + 24) & ~v78;
  v3 = *(v1 + 64);
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v77 = *(v5 + 80);
  v6 = (v2 + v3 + v77) & ~v77;
  v7 = *(v5 + 64);
  v70 = type metadata accessor for PommesCandidateId();
  v8 = *(v70 - 8);
  v69 = v6;
  v75 = *(v8 + 80);
  v9 = (v6 + v7 + v75) & ~v75;
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = type metadata accessor for PommesSearchRequest(0);
  v74 = *(*(v11 - 1) + 80);
  v68 = (((v10 + 23) & 0xFFFFFFFFFFFFFFF8) + v74 + 8) & ~v74;
  v73 = *(*(v11 - 1) + 64);
  v76 = type metadata accessor for SignpostToken();
  v72 = *(*(v76 - 8) + 80);
  v71 = *(*(v76 - 8) + 64);
  v12 = *(v0 + 16);

  v13 = (*(v5 + 48))(v0 + v2, 1, v4);
  v14 = *(v5 + 8);
  if (!v13)
  {
    v14(v0 + v2, v4);
  }

  v14(v0 + v69, v4);
  (*(v8 + 8))(v0 + v9, v70);
  v15 = *(v0 + v10 + 8);

  v16 = *(v0 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8));

  v17 = (v0 + v68);
  type metadata accessor for PommesSearchRequest.ParseState(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v19 = v0;
  if (EnumCaseMultiPayload == 2)
  {
    v33 = *(v17 + 1);

    v34 = *(v17 + 2);

    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMd, &_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMR);
    v36 = *(v35 + 64);
    v37 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
    v38 = *(v37 - 8);
    if (!(*(v38 + 48))(&v17[v36], 1, v37))
    {
      (*(v38 + 8))(&v17[v36], v37);
    }

    v27 = &v17[*(v35 + 80)];
LABEL_14:
    v39 = *(v27 + 1);

    goto LABEL_15;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_15;
    }

    v20 = *(v17 + 1);

    v21 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMR) + 48)];
    v22 = *v21;

    v23 = type metadata accessor for NLXResultCandidate();
    v24 = *(v23 + 20);
    v25 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
    v26 = *(v25 - 8);
    if (!(*(v26 + 48))(&v21[v24], 1, v25))
    {
      (*(v26 + 8))(&v21[v24], v25);
    }

    v27 = &v21[*(v23 + 24)];
    goto LABEL_14;
  }

  v28 = *(v17 + 1);

  v29 = *(v17 + 3);

  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMR) + 64);
  v31 = type metadata accessor for TCUMappedNLResponse();
  v32 = *(v31 - 8);
  if (!(*(v32 + 48))(&v17[v30], 1, v31))
  {
    (*(v32 + 8))(&v17[v30], v31);
  }

LABEL_15:
  v40 = *&v17[v11[5] + 8];

  v41 = v11[6];
  v42 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance();
  v43 = *(v42 - 8);
  if (!(*(v43 + 48))(&v17[v41], 1, v42))
  {
    (*(v43 + 8))(&v17[v41], v42);
  }

  v44 = *&v17[v11[7] + 8];

  v45 = *&v17[v11[8] + 8];

  v46 = *&v17[v11[9] + 8];

  v47 = v11[10];
  v48 = type metadata accessor for PommesContext();
  v49 = *(v48 - 8);
  if (!(*(v49 + 48))(&v17[v47], 1, v48))
  {
    (*(v49 + 8))(&v17[v47], v48);
  }

  v50 = v11[11];
  v51 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v52 = *(v51 - 8);
  if (!(*(v52 + 48))(&v17[v50], 1, v51))
  {
    (*(v52 + 8))(&v17[v50], v51);
  }

  v53 = *&v17[v11[13]];

  v54 = v11[14];
  v55 = type metadata accessor for InputOrigin();
  v56 = *(v55 - 8);
  if (!(*(v56 + 48))(&v17[v54], 1, v55))
  {
    (*(v56 + 8))(&v17[v54], v55);
  }

  v57 = (v68 + v73 + v72) & ~v72;
  v58 = (v71 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;

  v59 = *&v17[v11[19]];

  v60 = *&v17[v11[21] + 8];

  v61 = *&v17[v11[23]];

  v62 = v19 + v57;
  v63 = *(v76 + 20);
  v64 = type metadata accessor for OSSignpostID();
  (*(*(v64 - 8) + 8))(v62 + v63, v64);
  v65 = *(v62 + *(v76 + 24));

  v66 = *(v19 + v58 + 8);

  return MEMORY[0x2821FE8E8](v19, v58 + 16, v78 | v77 | v75 | v74 | v72 | 7);
}

uint64_t sub_2232DC7A8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 272))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2232DC850@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 344))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2232DC8A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 368))();
  *a2 = result;
  return result;
}

uint64_t sub_2232DC8FC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 376);

  return v3(v4);
}

uint64_t sub_2232DC958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2232DCA48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_2232DCB44()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8);
  v23 = *(v1 + 80);
  v22 = *(v1 + 64);
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v20 = *(v3 + 64);
  v21 = type metadata accessor for PommesCandidateId();
  v5 = *(v21 - 8);
  v6 = *(v5 + 80);
  v17 = *(v5 + 64);
  v19 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload();
  v7 = *(v19 - 8);
  v8 = *(v7 + 80);
  v18 = *(v7 + 64);
  v9 = *(v0 + 16);

  v10 = (v23 + 24) & ~v23;
  v11 = (*(v3 + 48))(v0 + v10, 1, v2);
  v12 = *(v3 + 8);
  if (!v11)
  {
    v12(v0 + v10, v2);
  }

  v24 = v23 | v4 | v6 | v8;
  v13 = (v10 + v22 + v4) & ~v4;
  v14 = (v13 + v20 + v6) & ~v6;
  v15 = (v14 + v17 + v8) & ~v8;
  v12(v0 + v13, v2);
  (*(v5 + 8))(v0 + v14, v21);
  (*(v7 + 8))(v0 + v15, v19);

  return MEMORY[0x2821FE8E8](v0, v15 + v18, v24 | 7);
}

uint64_t sub_2232DCDEC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8);
  v25 = *(v1 + 80);
  v24 = *(v1 + 64);
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v21 = *(v3 + 64);
  v23 = type metadata accessor for PommesCandidateId();
  v5 = *(v23 - 8);
  v6 = *(v5 + 80);
  v20 = *(v5 + 64);
  v22 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload();
  v7 = *(v22 - 8);
  v8 = *(v7 + 80);
  v19 = *(v7 + 64);
  v9 = *(v0 + 16);

  v10 = (v25 + 24) & ~v25;
  v11 = (*(v3 + 48))(v0 + v10, 1, v2);
  v12 = *(v3 + 8);
  if (!v11)
  {
    v12(v0 + v10, v2);
  }

  v26 = v25 | v4 | v6 | v8;
  v13 = (v10 + v24 + v4) & ~v4;
  v14 = (v13 + v21 + v6) & ~v6;
  v15 = (v14 + v20 + v8) & ~v8;
  v16 = (v19 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12(v0 + v13, v2);
  (*(v5 + 8))(v0 + v14, v23);
  (*(v7 + 8))(v0 + v15, v22);
  v17 = *(v0 + v16);

  return MEMORY[0x2821FE8E8](v0, v16 + 8, v26 | 7);
}

uint64_t sub_2232DD0AC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2232DD13C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result;
  return result;
}

uint64_t sub_2232DD188(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC21SiriInformationSearch32GMAvailabilityPolicyDataProvider_hasChinaPolicy;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_2232DD1DC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2232DD214()
{
  v1 = type metadata accessor for GenerativeModelsAvailability();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_2232DD2C4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];
  swift_unknownObjectRelease();
  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2232DD30C@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v3 = (*(**a1 + 88))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed () -> (@owned SatisfyingAppsDataProvider);
  a2[1] = result;
  return result;
}

uint64_t sub_2232DD394()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2232DD3D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  return result;
}

uint64_t sub_2232DD470(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for PommesSearchRequest.ParseState(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RewrittenUtteranceVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RewrittenUtteranceVSgMR);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[6];
LABEL_13:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_14;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[10];
    goto LABEL_13;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v14 = *(v17 - 8);
    v15 = a3[11];
    goto LABEL_13;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[14];

  return v19(v20, a2, v18);
}

uint64_t sub_2232DD6A8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for PommesSearchRequest.ParseState(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RewrittenUtteranceVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RewrittenUtteranceVSgMR);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[10];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[11];
    goto LABEL_11;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[14];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_2232DD8E0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RewrittenUtteranceVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RewrittenUtteranceVSgMR);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_11:
    v14 = *(v8 + 48);

    return v14(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_11;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[11];
    goto LABEL_11;
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v7 = v12;
    v8 = *(v12 - 8);
    v9 = a3[12];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v7 = v13;
    v8 = *(v13 - 8);
    v9 = a3[13];
    goto LABEL_11;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v16 = *(a1 + a3[14]);
    if (v16 >= 0xFFFFFFFF)
    {
      LODWORD(v16) = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[15];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_2232DDB70(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RewrittenUtteranceVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RewrittenUtteranceVSgMR);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_11:
    v16 = *(v10 + 56);

    return v16(a1 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[11];
    goto LABEL_11;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[12];
    goto LABEL_11;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[13];
    goto LABEL_11;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[14]) = (a2 - 1);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    v18 = *(*(v17 - 8) + 56);
    v19 = a1 + a4[15];

    return v18(v19, a2, a2, v17);
  }

  return result;
}

uint64_t sub_2232DDE48@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  return result;
}

uint64_t sub_2232DDE98()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2232DDED0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2232DDF08()
{
  v1 = type metadata accessor for PommesCandidateId();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2232DDFE8@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static PegasusOverrideUtil.enablePromptContextLogging;
  return result;
}

uint64_t sub_2232DE034(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static PegasusOverrideUtil.enablePromptContextLogging = v1;
  return result;
}

double sub_2232DE170@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  (*(**a1 + 120))(v6);
  v3 = v6[3];
  a2[2] = v6[2];
  a2[3] = v3;
  a2[4] = v7[0];
  *(a2 + 74) = *(v7 + 10);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  a2[1] = v5;
  return result;
}

uint64_t sub_2232DE1E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  return result;
}

uint64_t sub_2232DE238()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2232DE2CC@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static PommesSearchRequestXPC.supportsSecureCoding;
  return result;
}

uint64_t sub_2232DE318(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static PommesSearchRequestXPC.supportsSecureCoding = v1;
  return result;
}

uint64_t sub_2232DE360@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 248))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2232DE3B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 272))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2232DE408@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 296))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2232DE4B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 344))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2232DE508@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 368))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2232DE56C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 392))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2232DE5D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 416))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2232DE644@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 440))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2232DE6B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 464))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2232DE72C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 488))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2232DE790@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 512))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2232DE7F4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 536))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2232DE858@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 560))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2232DE8BC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 584))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2232DE920@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 608))();
  *a2 = result;
  return result;
}

uint64_t sub_2232DE978@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 632))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2232DEA2C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 680))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2232DEAA0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 704))();
  *a2 = result;
  return result;
}

uint64_t sub_2232DEAF8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 728))();
  *a2 = result;
  return result;
}

uint64_t sub_2232DEB4C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_userIdentityClassification;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t outlined consume of (@escaping @callee_guaranteed () -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id default argument 0 of PommesMUXContextManager.init(multiUserConnection:isMultiUserSupported:pommesUserProfile:)()
{
  v0 = objc_allocWithZone(MEMORY[0x277CEF318]);

  return [v0 init];
}

uint64_t default argument 2 of PommesMUXContextManager.init(multiUserConnection:isMultiUserSupported:pommesUserProfile:)()
{
  type metadata accessor for PommesUserProfile();

  return swift_allocObject();
}

uint64_t default argument 3 of DataProviderManager.init(ampDataProvider:queueStateDataProvider:appInfoDataProvider:preferredNavigationAppDataProvider:siriKitAppInfoDataProvider:profileSliceResolvingDataProvider:marketplaceInfoDataProvider:pairedDeviceDataProvider:gmAvailabilityPolicyDataProvider:carPlaySessionDataProvider:muxContextManager:preferences:environment:assistantDataCache:serviceHelper:appChecking:)()
{
  type metadata accessor for AppDataProvider();
  v0 = swift_allocObject();
  v5 = &type metadata for PommesSystemAppChecking;
  v6 = &protocol witness table for PommesSystemAppChecking;
  *(v0 + 56) = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
  outlined init with take of DomainWarmupHandling(&v4, v0 + 16);
  v1 = [objc_opt_self() sharedPreferences];
  v2 = _s21SiriInformationSearch34PreferredNavigationAppDataProviderC4make03appgH011preferencesAA03AnygH0CySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGAA0fG9Providing_p_So13AFPreferencesCtFZTf4enn_nAA0fgH0C_Tt1g5(v0, v1);

  return v2;
}

uint64_t default argument 4 of DataProviderManager.init(ampDataProvider:queueStateDataProvider:appInfoDataProvider:preferredNavigationAppDataProvider:siriKitAppInfoDataProvider:profileSliceResolvingDataProvider:marketplaceInfoDataProvider:pairedDeviceDataProvider:gmAvailabilityPolicyDataProvider:carPlaySessionDataProvider:muxContextManager:preferences:environment:assistantDataCache:serviceHelper:appChecking:)()
{
  type metadata accessor for AppDataProvider();
  v0 = swift_allocObject();
  *(&v4 + 1) = &type metadata for PommesSystemAppChecking;
  v5 = &protocol witness table for PommesSystemAppChecking;
  *(v0 + 56) = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
  outlined init with take of DomainWarmupHandling(&v3, v0 + 16);
  v5 = 0;
  v3 = 0u;
  v4 = 0u;
  v1 = _s21SiriInformationSearch0A22KitAppInfoDataProviderC4make03appgH0014satisfyingAppsgH0010foregroundeH00jc4ViewH0AA03AnygH0CySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGAA0eG9Providing_p_AA010SatisfyinglgH0_pSgAA010ForegroundeH0_pAA0ecnH0_pSgtFZTf4enenn_nAA0egH0C_AA012RunningBoardyeH0VTt3g5(v0, 0, 0, &v3);

  outlined destroy of MediaUserStateCenter?(&v3, &_s21SiriInformationSearch03AppC12ViewProvider_pSgMd, &_s21SiriInformationSearch03AppC12ViewProvider_pSgMR);
  return v1;
}

uint64_t default argument 6 of DataProviderManager.init(ampDataProvider:queueStateDataProvider:appInfoDataProvider:preferredNavigationAppDataProvider:siriKitAppInfoDataProvider:profileSliceResolvingDataProvider:marketplaceInfoDataProvider:pairedDeviceDataProvider:gmAvailabilityPolicyDataProvider:carPlaySessionDataProvider:muxContextManager:preferences:environment:assistantDataCache:serviceHelper:appChecking:)()
{
  v0 = type metadata accessor for MarketplaceInfoDataProvider();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtC21SiriInformationSearch27MarketplaceInfoDataProvider_marketplaceInfo;
  v5 = type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo();
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_C19_V2_MarketplaceInfoVGMd, &_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_C19_V2_MarketplaceInfoVGMR);
  swift_allocObject();
  return specialized AnyDataProvider.init<A>(provider:)(v3);
}

uint64_t default argument 7 of DataProviderManager.init(ampDataProvider:queueStateDataProvider:appInfoDataProvider:preferredNavigationAppDataProvider:siriKitAppInfoDataProvider:profileSliceResolvingDataProvider:marketplaceInfoDataProvider:pairedDeviceDataProvider:gmAvailabilityPolicyDataProvider:carPlaySessionDataProvider:muxContextManager:preferences:environment:assistantDataCache:serviceHelper:appChecking:)()
{
  type metadata accessor for PairedDeviceDataProvider();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI27Useragentpb_CompanionDeviceVGGMd, &_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI27Useragentpb_CompanionDeviceVGGMR);
  swift_allocObject();
  return specialized AnyDataProvider.init<A>(provider:)(v0);
}

uint64_t default argument 8 of DataProviderManager.init(ampDataProvider:queueStateDataProvider:appInfoDataProvider:preferredNavigationAppDataProvider:siriKitAppInfoDataProvider:profileSliceResolvingDataProvider:marketplaceInfoDataProvider:pairedDeviceDataProvider:gmAvailabilityPolicyDataProvider:carPlaySessionDataProvider:muxContextManager:preferences:environment:assistantDataCache:serviceHelper:appChecking:)()
{
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  outlined init with copy of MediaUserStateCenter?(v7, v6, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMd, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMR);
  v0 = type metadata accessor for GMAvailabilityPolicyDataProvider();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v3 = GMAvailabilityPolicyDataProvider.init(gmAvailability:)(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySbGMd, &_s21SiriInformationSearch15AnyDataProviderCySbGMR);
  swift_allocObject();
  v4 = specialized AnyDataProvider.init<A>(provider:)(v3);
  outlined destroy of MediaUserStateCenter?(v7, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMd, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMR);
  return v4;
}

uint64_t default argument 9 of DataProviderManager.init(ampDataProvider:queueStateDataProvider:appInfoDataProvider:preferredNavigationAppDataProvider:siriKitAppInfoDataProvider:profileSliceResolvingDataProvider:marketplaceInfoDataProvider:pairedDeviceDataProvider:gmAvailabilityPolicyDataProvider:carPlaySessionDataProvider:muxContextManager:preferences:environment:assistantDataCache:serviceHelper:appChecking:)()
{
  v0 = type metadata accessor for CarPlaySessionDataProvider();
  v1 = objc_allocWithZone(v0);
  v2 = OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_carPlaySessionStatus;
  *&v1[OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_carPlaySessionStatus] = 0;
  v1[OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_sessionDidConnect] = 0;
  *&v1[v2] = 0;
  v5.receiver = v1;
  v5.super_class = v0;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_a23_V2alpha_CarPlaySessionE0VGMd, &_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_a23_V2alpha_CarPlaySessionE0VGMR);
  swift_allocObject();
  return specialized AnyDataProvider.init<A>(provider:)(v3);
}

unint64_t default argument 0 of DomainWarmup.init(warmupClients:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_21SiriInformationSearch20DomainWarmupHandling_ptGMd, &_ss23_ContiguousArrayStorageCySS_21SiriInformationSearch20DomainWarmupHandling_ptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2234CF910;
  *(inited + 32) = 0x616964656DLL;
  *(inited + 40) = 0xE500000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy20SiriInformationTypes15WarmupComponentOGMd, &_ss23_ContiguousArrayStorageCy20SiriInformationTypes15WarmupComponentOGMR);
  v15 = type metadata accessor for WarmupComponent();
  v1 = *(v15 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v14 = *(v1 + 72);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2234CF920;
  v4 = *(v1 + 104);
  v4(v3 + v2, *MEMORY[0x277D56608], v15);
  v5 = type metadata accessor for PluginWarmupHandler();
  v6 = swift_allocObject();
  v6[2] = 0xD00000000000002CLL;
  v6[3] = 0x80000002234DA040;
  v6[4] = v3;
  *(inited + 72) = v5;
  *(inited + 80) = &protocol witness table for PluginWarmupHandler;
  *(inited + 48) = v6;
  *(inited + 88) = 0x7374726F7073;
  *(inited + 96) = 0xE600000000000000;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2234CF920;
  v8 = *MEMORY[0x277D56600];
  v4(v7 + v2, v8, v15);
  v9 = swift_allocObject();
  v9[2] = 0xD000000000000024;
  v9[3] = 0x80000002234DA070;
  v9[4] = v7;
  *(inited + 128) = v5;
  *(inited + 104) = v9;
  *(inited + 136) = &protocol witness table for PluginWarmupHandler;
  *(inited + 144) = 0x72656874616577;
  *(inited + 152) = 0xE700000000000000;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2234CF920;
  v4(v10 + v2, v8, v15);
  v11 = swift_allocObject();
  v11[2] = 0xD000000000000024;
  v11[3] = 0x80000002234DA070;
  v11[4] = v10;
  *(inited + 184) = v5;
  *(inited + 192) = &protocol witness table for PluginWarmupHandler;
  *(inited + 160) = v11;
  v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_21SiriInformationSearch20DomainWarmupHandling_pTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_21SiriInformationSearch20DomainWarmupHandling_ptMd, &_sSS_21SiriInformationSearch20DomainWarmupHandling_ptMR);
  swift_arrayDestroy();
  return v12;
}

uint64_t default argument 0 of PommesSearch.init(remoteSearchClient:domainSearchClients:)()
{
  v0 = type metadata accessor for AssistantLocationProvider();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v3 = specialized AssistantLocationProvider.init(serviceHelper:)(0);
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  v4 = SiriEnvironment.networkAvailability.getter();

  type metadata accessor for AnalyticsComponentIdGenerator();
  v5 = swift_allocObject();
  type metadata accessor for PegasusInstrumentationUtil();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = v5;
  v7 = [objc_opt_self() processInfo];
  v8 = NSProcessInfo.isRunningUnitTests.getter();

  if (v8)
  {
    v9 = &type metadata for EmptyReferenceResolver;
    v10 = lazy protocol witness table accessor for type EmptyReferenceResolver and conformance EmptyReferenceResolver();
  }

  else
  {
    v9 = type metadata accessor for ReferenceResolutionClient();
    v27[0] = ReferenceResolutionClient.__allocating_init()();
    v10 = MEMORY[0x277D5FDD8];
  }

  v27[3] = v9;
  v27[4] = v10;
  v11 = default argument 6 of PegasusProxy.init(pegasusClientBuilder:locationManager:networkAvailabilityProvider:pimsEnablementProvider:instrumentationUtil:rrClient:dataProviderManager:contactStore:dialogStateManager:)();
  v12 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  type metadata accessor for PommesDialogStateManager();
  swift_allocObject();
  v13 = PommesDialogStateManager.init(suiteName:)(0xD000000000000010, 0x80000002234DA020);
  v14 = type metadata accessor for PegasusProxy(0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  v26[3] = v0;
  v26[4] = &protocol witness table for AssistantLocationProvider;
  v26[0] = v3;
  v25[3] = &type metadata for PIMSEnablementProvider;
  v25[4] = &protocol witness table for PIMSEnablementProvider;
  v24[3] = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for CNContactStore, 0x277CBDAB8);
  v24[4] = &protocol witness table for CNContactStore;
  v24[0] = v12;
  *(v17 + 16) = 1;
  *(v17 + 144) = 0;
  *(v17 + 64) = 0;
  *(v17 + 72) = 0;

  v18 = v12;
  v19 = closure #1 in variable initialization expression of PegasusProxy.requestCancellableQueue();
  v20 = MEMORY[0x277D84FA0];
  *(v17 + 152) = v19;
  *(v17 + 160) = v20;
  *(v17 + 168) = v20;
  *(v17 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_persistentPegasusConversationContext) = xmmword_2234CF930;
  v21 = OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_previousInteractionType;
  v22 = type metadata accessor for InteractionType();
  (*(*(v22 - 8) + 56))(v17 + v21, 1, 1, v22);
  type metadata accessor for PegasusProxyForAssistant();
  *(v17 + 80) = static PegasusProxyForAssistant.shared.getter();
  *(v17 + 88) = &protocol witness table for PegasusProxyForAssistant;
  outlined init with copy of AppDataProviding(v26, v17 + 96);
  *(v17 + 136) = v4;
  outlined init with copy of AppDataProviding(v25, v17 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_pimsEnablementProvider);
  *(v17 + 176) = v6;
  *(v17 + 184) = v11;
  outlined init with copy of AppDataProviding(v27, v17 + 24);
  outlined init with copy of AppDataProviding(v24, v17 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_contactStore);
  *(v17 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_dialogStateManager) = v13;
  type metadata accessor for DomainAffinityKVStoreManager();
  static DomainAffinityKVStoreManager.domainAffinityKVStore(name:)(0xD000000000000013, 0x80000002234D9320);

  static DomainAffinityKVStoreManager.domainAffinityKVStore(name:)(0x6E65657263536E6FLL, 0xEB00000000495255);

  Apple_Parsec_Search_SearchConversationContext.init()();

  __swift_destroy_boxed_opaque_existential_1(v27);
  __swift_destroy_boxed_opaque_existential_1(v24);
  __swift_destroy_boxed_opaque_existential_1(v25);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v17;
}

id default argument 6 of PegasusProxy.init(pegasusClientBuilder:locationManager:networkAvailabilityProvider:pimsEnablementProvider:instrumentationUtil:rrClient:dataProviderManager:contactStore:dialogStateManager:)()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v69 = *(v0 - 8);
  v70 = v0;
  v1 = *(v69 + 64);
  MEMORY[0x28223BE20](v0, v2);
  v68 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for DispatchQoS.QoSClass();
  v65 = *(v67 - 8);
  v4 = *(v65 + 64);
  MEMORY[0x28223BE20](v67, v5);
  v66 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v63 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v76 = 0;
  v74 = 0u;
  v75 = 0u;
  outlined init with copy of MediaUserStateCenter?(&v74, v72, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  type metadata accessor for AmpDataProvider();
  v14 = swift_allocObject();
  *(v14 + 32) = 0u;
  *(v14 + 16) = 0u;
  v15 = MEMORY[0x277D84F90];
  *(v14 + 48) = 0;
  *(v14 + 56) = v15;
  swift_beginAccess();
  outlined assign with take of MediaUserStateCenter?(v72, v14 + 16, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySayAA14MediaUserState_pGGMd, &_s21SiriInformationSearch15AnyDataProviderCySayAA14MediaUserState_pGGMR);
  swift_allocObject();
  v64 = specialized AnyDataProvider.init<A>(provider:)(v14);
  outlined destroy of MediaUserStateCenter?(&v74, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  result = [objc_opt_self() defaultObserver];
  if (result)
  {
    v17 = result;
    v18 = objc_allocWithZone(type metadata accessor for AudioQueueStateManager());
    v19 = specialized AudioQueueStateManager.init(queueStateObserver:)(v17, v18);
    type metadata accessor for AudioQueueStateDataProvider();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_A28_V2alpha_AudioQueueStateInfoVGMd, &_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_A28_V2alpha_AudioQueueStateInfoVGMR);
    swift_allocObject();
    v62 = specialized AnyDataProvider.init<A>(provider:)(v20);
    v61 = default argument 2 of PegasusProxy.init(ampDataProvider:queueStateDataProvider:appInfoDataProvider:profileSliceResolvingDataProvider:pimsEnablementProvider:pegasusClientBuilder:locationManager:networkAvailabilityProvider:instrumentationUtil:preferences:rrClient:contactStore:muxContextManager:dialogStateManager:)();
    type metadata accessor for AppDataProvider();
    v21 = swift_allocObject();
    *(&v75 + 1) = &type metadata for PommesSystemAppChecking;
    v76 = &protocol witness table for PommesSystemAppChecking;
    *(v21 + 56) = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
    outlined init with take of DomainWarmupHandling(&v74, v21 + 16);
    v22 = objc_opt_self();
    v23 = [v22 sharedPreferences];
    v24 = _s21SiriInformationSearch34PreferredNavigationAppDataProviderC4make03appgH011preferencesAA03AnygH0CySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGAA0fG9Providing_p_So13AFPreferencesCtFZTf4enn_nAA0fgH0C_Tt1g5(v21, v23);

    v25 = swift_allocObject();
    *(&v75 + 1) = &type metadata for PommesSystemAppChecking;
    v76 = &protocol witness table for PommesSystemAppChecking;
    *(v25 + 56) = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
    outlined init with take of DomainWarmupHandling(&v74, v25 + 16);
    v76 = 0;
    v74 = 0u;
    v75 = 0u;
    v60 = _s21SiriInformationSearch0A22KitAppInfoDataProviderC4make03appgH0014satisfyingAppsgH0010foregroundeH00jc4ViewH0AA03AnygH0CySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGAA0eG9Providing_p_AA010SatisfyinglgH0_pSgAA010ForegroundeH0_pAA0ecnH0_pSgtFZTf4enenn_nAA0egH0C_AA012RunningBoardyeH0VTt3g5(v25, 0, 0, &v74);

    outlined destroy of MediaUserStateCenter?(&v74, &_s21SiriInformationSearch03AppC12ViewProvider_pSgMd, &_s21SiriInformationSearch03AppC12ViewProvider_pSgMR);
    v26 = type metadata accessor for MarketplaceInfoDataProvider();
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    v29 = swift_allocObject();
    v30 = OBJC_IVAR____TtC21SiriInformationSearch27MarketplaceInfoDataProvider_marketplaceInfo;
    v31 = type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo();
    (*(*(v31 - 8) + 56))(v29 + v30, 1, 1, v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_C19_V2_MarketplaceInfoVGMd, &_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_C19_V2_MarketplaceInfoVGMR);
    swift_allocObject();
    v59 = specialized AnyDataProvider.init<A>(provider:)(v29);
    type metadata accessor for PairedDeviceDataProvider();
    v32 = swift_allocObject();
    *(v32 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI27Useragentpb_CompanionDeviceVGGMd, &_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI27Useragentpb_CompanionDeviceVGGMR);
    swift_allocObject();
    v58 = specialized AnyDataProvider.init<A>(provider:)(v32);
    v76 = 0;
    v74 = 0u;
    v75 = 0u;
    outlined init with copy of MediaUserStateCenter?(&v74, v72, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMd, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMR);
    v33 = type metadata accessor for GMAvailabilityPolicyDataProvider();
    v34 = *(v33 + 48);
    v35 = *(v33 + 52);
    swift_allocObject();
    v36 = GMAvailabilityPolicyDataProvider.init(gmAvailability:)(v72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySbGMd, &_s21SiriInformationSearch15AnyDataProviderCySbGMR);
    swift_allocObject();
    v57 = specialized AnyDataProvider.init<A>(provider:)(v36);
    outlined destroy of MediaUserStateCenter?(&v74, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMd, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMR);
    v37 = type metadata accessor for CarPlaySessionDataProvider();
    v38 = objc_allocWithZone(v37);
    v39 = OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_carPlaySessionStatus;
    *&v38[OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_carPlaySessionStatus] = 0;
    v38[OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_sessionDidConnect] = 0;
    *&v38[v39] = 0;
    v71.receiver = v38;
    v71.super_class = v37;
    v40 = objc_msgSendSuper2(&v71, sel_init);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_a23_V2alpha_CarPlaySessionE0VGMd, &_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_a23_V2alpha_CarPlaySessionE0VGMR);
    swift_allocObject();
    v56 = specialized AnyDataProvider.init<A>(provider:)(v40);
    v55 = [v22 sharedPreferences];
    type metadata accessor for SiriEnvironment();
    v54 = static SiriEnvironment.default.getter();
    type metadata accessor for DataProviderManager();
    v41 = swift_allocObject();
    *(&v75 + 1) = &type metadata for PommesSystemAppChecking;
    v76 = &protocol witness table for PommesSystemAppChecking;
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    static DispatchQoS.userInitiated.getter();
    static OS_dispatch_queue.Attributes.concurrent.getter();
    v42 = v65;
    v44 = v66;
    v43 = v67;
    (*(v65 + 104))(v66, *MEMORY[0x277D851C8], v67);
    static OS_dispatch_queue.global(qos:)();
    (*(v42 + 8))(v44, v43);
    (*(v69 + 104))(v68, *MEMORY[0x277D85260], v70);
    v45 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    *(v41 + 128) = 0u;
    *(v41 + 160) = 0u;
    *(v41 + 176) = 0;
    *(v41 + 144) = 0u;
    v46 = v64;
    *(v41 + 16) = v45;
    *(v41 + 24) = v46;
    v47 = v61;
    *(v41 + 32) = v62;
    *(v41 + 40) = v47;
    v48 = v60;
    *(v41 + 48) = v24;
    *(v41 + 56) = v48;
    type metadata accessor for AnalyticsComponentIdGenerator();
    memset(v72, 0, sizeof(v72));
    v73 = 0;
    v49 = swift_allocObject();
    type metadata accessor for ProfileSliceResolutionRequestInstrumentationUtil();
    v50 = swift_allocObject();
    *(v50 + 16) = 0;
    *(v50 + 24) = v49;

    v51 = specialized static ProfileSliceResolvingDataProvider.make(mediaUserStateCenter:instrumentationUtil:muxContextManager:)(v72, v50, 0);

    outlined destroy of MediaUserStateCenter?(v72, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
    v52 = v59;
    *(v41 + 64) = v51;
    *(v41 + 72) = v52;
    *(v41 + 80) = v58;
    *(v41 + 96) = v56;
    *(v41 + 104) = 0;
    v53 = v55;
    *(v41 + 112) = v54;
    *(v41 + 120) = v53;
    *(v41 + 128) = 0;
    *(v41 + 136) = 0;
    outlined init with copy of AppDataProviding(&v74, v72);
    swift_beginAccess();
    outlined assign with take of MediaUserStateCenter?(v72, v41 + 144, &_s21SiriInformationSearch17PommesAppChecking_pSgMd, &_s21SiriInformationSearch17PommesAppChecking_pSgMR);
    swift_endAccess();
    *(v41 + 88) = v57;
    (*(*v47 + 160))(1);

    (*(*v24 + 160))(1);

    (*(*v48 + 160))(1);
    __swift_destroy_boxed_opaque_existential_1(&v74);
    return v41;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t default argument 5 of PommesSearch.init(remoteSearchClient:domainSearchClients:preflightClients:pegasusCacheManager:domainWarmup:muxContextManager:)()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CEF318]) init];
  v1 = AFSupportsMultiUser();
  type metadata accessor for PommesUserProfile();
  v2 = swift_allocObject();
  type metadata accessor for PommesMUXContextManager();
  swift_allocObject();
  return PommesMUXContextManager.init(multiUserConnection:isMultiUserSupported:pommesUserProfile:)(v0, v1, v2);
}

uint64_t default argument 1 of PommesSearchService.init(pommesSearch:instrumentationUtil:searchToolHandler:)()
{
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }
}

id default argument 2 of PommesSearchService.init(pommesSearch:instrumentationUtil:searchToolHandler:)()
{
  v85 = type metadata accessor for Logger();
  v84 = *(v85 - 8);
  v0 = *(v84 + 64);
  MEMORY[0x28223BE20](v85, v1);
  v83 = &v72 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v81 = *(v79 - 8);
  v3 = *(v81 + 64);
  MEMORY[0x28223BE20](v79, v4);
  v80 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for DispatchQoS.QoSClass();
  v6 = *(v77 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v77, v8);
  v76 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch0C21ToolEmptyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMd, &_s21SiriInformationSearch0C21ToolEmptyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMR);
  v16 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMd, &_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMR);
  swift_allocObject();
  v82 = specialized AnyDataProvider.init<A>(provider:)(v16);
  v96 = 0;
  v94 = 0u;
  v95 = 0u;
  outlined init with copy of MediaUserStateCenter?(&v94, v92, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  type metadata accessor for AmpDataProvider();
  v17 = swift_allocObject();
  *(v17 + 32) = 0u;
  *(v17 + 16) = 0u;
  v18 = MEMORY[0x277D84F90];
  *(v17 + 48) = 0;
  *(v17 + 56) = v18;
  swift_beginAccess();
  outlined assign with take of MediaUserStateCenter?(v92, v17 + 16, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySayAA14MediaUserState_pGGMd, &_s21SiriInformationSearch15AnyDataProviderCySayAA14MediaUserState_pGGMR);
  swift_allocObject();
  v78 = specialized AnyDataProvider.init<A>(provider:)(v17);
  outlined destroy of MediaUserStateCenter?(&v94, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  result = [objc_opt_self() defaultObserver];
  if (result)
  {
    v20 = result;
    v21 = objc_allocWithZone(type metadata accessor for AudioQueueStateManager());
    v22 = specialized AudioQueueStateManager.init(queueStateObserver:)(v20, v21);
    type metadata accessor for AudioQueueStateDataProvider();
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_A28_V2alpha_AudioQueueStateInfoVGMd, &_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_A28_V2alpha_AudioQueueStateInfoVGMR);
    swift_allocObject();
    v90 = specialized AnyDataProvider.init<A>(provider:)(v23);
    v89 = default argument 2 of PegasusProxy.init(ampDataProvider:queueStateDataProvider:appInfoDataProvider:profileSliceResolvingDataProvider:pimsEnablementProvider:pegasusClientBuilder:locationManager:networkAvailabilityProvider:instrumentationUtil:preferences:rrClient:contactStore:muxContextManager:dialogStateManager:)();
    type metadata accessor for AppDataProvider();
    v24 = swift_allocObject();
    *(&v95 + 1) = &type metadata for PommesSystemAppChecking;
    v96 = &protocol witness table for PommesSystemAppChecking;
    *(v24 + 56) = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
    outlined init with take of DomainWarmupHandling(&v94, v24 + 16);
    v25 = objc_opt_self();
    v26 = [v25 sharedPreferences];
    v88 = _s21SiriInformationSearch34PreferredNavigationAppDataProviderC4make03appgH011preferencesAA03AnygH0CySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGAA0fG9Providing_p_So13AFPreferencesCtFZTf4enn_nAA0fgH0C_Tt1g5(v24, v26);

    v27 = type metadata accessor for MarketplaceInfoDataProvider();
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    v30 = swift_allocObject();
    v31 = OBJC_IVAR____TtC21SiriInformationSearch27MarketplaceInfoDataProvider_marketplaceInfo;
    v32 = type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo();
    (*(*(v32 - 8) + 56))(v30 + v31, 1, 1, v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_C19_V2_MarketplaceInfoVGMd, &_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_C19_V2_MarketplaceInfoVGMR);
    swift_allocObject();
    v74 = specialized AnyDataProvider.init<A>(provider:)(v30);
    type metadata accessor for PairedDeviceDataProvider();
    v33 = swift_allocObject();
    *(v33 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI27Useragentpb_CompanionDeviceVGGMd, &_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI27Useragentpb_CompanionDeviceVGGMR);
    swift_allocObject();
    v72 = specialized AnyDataProvider.init<A>(provider:)(v33);
    v96 = 0;
    v94 = 0u;
    v95 = 0u;
    outlined init with copy of MediaUserStateCenter?(&v94, v92, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMd, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMR);
    v34 = type metadata accessor for GMAvailabilityPolicyDataProvider();
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    swift_allocObject();
    v37 = GMAvailabilityPolicyDataProvider.init(gmAvailability:)(v92);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySbGMd, &_s21SiriInformationSearch15AnyDataProviderCySbGMR);
    swift_allocObject();
    v73 = specialized AnyDataProvider.init<A>(provider:)(v37);
    outlined destroy of MediaUserStateCenter?(&v94, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMd, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMR);
    v38 = type metadata accessor for CarPlaySessionDataProvider();
    v39 = objc_allocWithZone(v38);
    v40 = OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_carPlaySessionStatus;
    *&v39[OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_carPlaySessionStatus] = 0;
    v39[OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_sessionDidConnect] = 0;
    *&v39[v40] = 0;
    v91.receiver = v39;
    v91.super_class = v38;
    v41 = objc_msgSendSuper2(&v91, &selRef_statusType);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_a23_V2alpha_CarPlaySessionE0VGMd, &_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_a23_V2alpha_CarPlaySessionE0VGMR);
    swift_allocObject();
    v87 = specialized AnyDataProvider.init<A>(provider:)(v41);
    v42 = [v25 sharedPreferences];
    v75 = type metadata accessor for SiriEnvironment();
    v86 = static SiriEnvironment.default.getter();
    type metadata accessor for DataProviderManager();
    v43 = swift_allocObject();
    *(&v95 + 1) = &type metadata for PommesSystemAppChecking;
    v96 = &protocol witness table for PommesSystemAppChecking;
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    static DispatchQoS.userInitiated.getter();
    static OS_dispatch_queue.Attributes.concurrent.getter();
    v44 = v76;
    v45 = v77;
    (*(v6 + 104))(v76, *MEMORY[0x277D851C8], v77);
    static OS_dispatch_queue.global(qos:)();
    (*(v6 + 8))(v44, v45);
    (*(v81 + 104))(v80, *MEMORY[0x277D85260], v79);
    v46 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    *(v43 + 128) = 0u;
    *(v43 + 160) = 0u;
    *(v43 + 176) = 0;
    *(v43 + 144) = 0u;
    v47 = v78;
    *(v43 + 16) = v46;
    *(v43 + 24) = v47;
    v48 = v89;
    *(v43 + 32) = v90;
    *(v43 + 40) = v48;
    v49 = v82;
    *(v43 + 48) = v88;
    *(v43 + 56) = v49;
    v81 = type metadata accessor for AnalyticsComponentIdGenerator();
    memset(v92, 0, sizeof(v92));
    v93 = 0;
    v50 = swift_allocObject();
    type metadata accessor for ProfileSliceResolutionRequestInstrumentationUtil();
    v51 = swift_allocObject();
    *(v51 + 16) = 0;
    *(v51 + 24) = v50;

    v52 = specialized static ProfileSliceResolvingDataProvider.make(mediaUserStateCenter:instrumentationUtil:muxContextManager:)(v92, v51, 0);

    outlined destroy of MediaUserStateCenter?(v92, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
    v53 = v74;
    *(v43 + 64) = v52;
    *(v43 + 72) = v53;
    *(v43 + 80) = v72;
    v54 = v86;
    *(v43 + 96) = v87;
    *(v43 + 104) = 0;
    *(v43 + 112) = v54;
    *(v43 + 120) = v42;
    *(v43 + 128) = 0;
    *(v43 + 136) = 0;

    v55 = v42;
    outlined init with copy of AppDataProviding(&v94, v92);
    swift_beginAccess();
    outlined assign with take of MediaUserStateCenter?(v92, v43 + 144, &_s21SiriInformationSearch17PommesAppChecking_pSgMd, &_s21SiriInformationSearch17PommesAppChecking_pSgMR);
    swift_endAccess();
    *(v43 + 88) = v73;
    v56 = *(**(v43 + 40) + 160);

    v56(1);

    v57 = *(**(v43 + 48) + 160);

    v57(1);

    (*(**(v43 + 56) + 160))(1);

    __swift_destroy_boxed_opaque_existential_1(&v94);
    type metadata accessor for PegasusProxyForIntelligenceFlow();
    v90 = static PegasusProxyForIntelligenceFlow.shared.getter();
    static SiriEnvironment.default.getter();
    v89 = SiriEnvironment.networkAvailability.getter();

    v58 = swift_allocObject();
    type metadata accessor for PegasusInstrumentationUtil();
    v59 = swift_allocObject();
    *(v59 + 16) = 0;
    *(v59 + 24) = v58;
    v60 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
    type metadata accessor for PommesDialogStateManager();
    swift_allocObject();
    v61 = PommesDialogStateManager.init(suiteName:)(0xD000000000000010, 0x80000002234DA020);
    if (one-time initialization token for sage != -1)
    {
      swift_once();
    }

    v62 = v85;
    v63 = __swift_project_value_buffer(v85, static Logger.sage);
    v64 = v84;
    v65 = *(v84 + 16);
    v66 = v83;
    v65(v83, v63, v62);
    v67 = type metadata accessor for SagePegasusProxy();
    v68 = *(v67 + 48);
    v69 = *(v67 + 52);
    v70 = swift_allocObject();
    v65((v70 + *(*v70 + 216)), v66, v62);
    *(v70 + 104) = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for CNContactStore, 0x277CBDAB8);
    *(v70 + 112) = &protocol witness table for CNContactStore;
    *(v70 + 80) = v60;
    *(v70 + 16) = 0;
    *(v70 + 24) = 0;
    *(v70 + 64) = xmmword_2234CF930;
    v71 = v89;
    *(v70 + 32) = v90;
    *(v70 + 40) = v71;
    *(v70 + 48) = v59;
    *(v70 + 56) = v43;
    *(v70 + 120) = 0;
    *(v70 + 128) = v61;
    (*(v64 + 8))(v66, v62);
    type metadata accessor for SageSearch();
    swift_allocObject();
    return SageSearch.init(remoteSearchClient:)(v70);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t default argument 1 of SearchToolPegasusProxy.init(pegasusClient:networkAvailabilityProvider:instrumentationUtil:dataProviderManager:contactStore:dialogStateManager:logger:)()
{
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  v0 = SiriEnvironment.networkAvailability.getter();

  return v0;
}

uint64_t default argument 2 of SearchToolPegasusProxy.init(pegasusClient:networkAvailabilityProvider:instrumentationUtil:dataProviderManager:contactStore:dialogStateManager:logger:)()
{
  type metadata accessor for AnalyticsComponentIdGenerator();
  v0 = swift_allocObject();
  type metadata accessor for PegasusInstrumentationUtil();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v0;
  return result;
}

uint64_t default argument 4 of SearchToolPegasusProxy.init(pegasusClient:networkAvailabilityProvider:instrumentationUtil:dataProviderManager:contactStore:dialogStateManager:logger:)@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  result = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for CNContactStore, 0x277CBDAB8);
  a1[3] = result;
  a1[4] = &protocol witness table for CNContactStore;
  *a1 = v2;
  return result;
}

uint64_t default argument 5 of SearchToolPegasusProxy.init(pegasusClient:networkAvailabilityProvider:instrumentationUtil:dataProviderManager:contactStore:dialogStateManager:logger:)()
{
  type metadata accessor for PommesDialogStateManager();
  swift_allocObject();
  return PommesDialogStateManager.init(suiteName:)(0xD000000000000010, 0x80000002234DA020);
}

uint64_t default argument 6 of SearchToolPegasusProxy.init(pegasusClient:networkAvailabilityProvider:instrumentationUtil:dataProviderManager:contactStore:dialogStateManager:logger:)@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for sage != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.sage);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t default argument 5 of static PommesSearchPreflightHandling.preflightResponse(pommesSearchRequest:experiences:clientResults:requestId:pommesCandidateId:searchReason:domainName:preflightClientHandlerIdentifier:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D56670];
  v3 = type metadata accessor for PommesSearchReason();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t default argument 5 of ContactProfileSliceResolver.init(from:requestId:pommesCandidateId:profileResolutionRequest:instrumentationUtil:contactResolver:contactStore:)@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for SiriKitContactResolver();
  a1[4] = &protocol witness table for SiriKitContactResolver;
  __swift_allocate_boxed_opaque_existential_1(a1);
  return SiriKitContactResolver.init()();
}

id default argument 6 of ContactProfileSliceResolver.init(from:requestId:pommesCandidateId:profileResolutionRequest:instrumentationUtil:contactResolver:contactStore:)()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBDAB8]);

  return [v0 init];
}

uint64_t default argument 0 of VocabularySearchClient.init(spanMatcher:)@<X0>(void *a1@<X8>)
{
  v2 = [objc_opt_self() indexMatcher];
  result = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SEMSpanMatcher, 0x277D55D38);
  a1[3] = result;
  a1[4] = &protocol witness table for SEMSpanMatcher;
  *a1 = v2;
  return result;
}

id default argument 0 of static AudioQueueStateDataProvider.make(audioQueueStateManager:)()
{
  result = [objc_opt_self() defaultObserver];
  if (result)
  {
    v1 = result;
    v2 = objc_allocWithZone(type metadata accessor for AudioQueueStateManager());

    return specialized AudioQueueStateManager.init(queueStateObserver:)(v1, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id default argument 0 of AudioQueueStateManager.init(queueStateObserver:)@<X0>(void *a1@<X8>)
{
  result = [objc_opt_self() defaultObserver];
  if (result)
  {
    v3 = result;
    result = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SOMediaNowPlayingObserver, 0x277D5E1D0);
    a1[3] = result;
    a1[4] = &protocol witness table for SOMediaNowPlayingObserver;
    *a1 = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t default argument 1 of PegasusCacheManager.init(locale:domainCacheHandlers:path:flags:enabled:trialClient:prepopulate:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_21SiriInformationSearch13CacheHandling_ptGMd, &_ss23_ContiguousArrayStorageCySS_21SiriInformationSearch13CacheHandling_ptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2234CF920;
  *(inited + 32) = 0x616964656DLL;
  *(inited + 40) = 0xE500000000000000;
  v1 = type metadata accessor for AudioCacheHandler();
  v2 = swift_allocObject();
  *(inited + 72) = v1;
  *(inited + 80) = &protocol witness table for AudioCacheHandler;
  *(inited + 48) = v2;
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_21SiriInformationSearch13CacheHandling_pTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of MediaUserStateCenter?(inited + 32, &_sSS_21SiriInformationSearch13CacheHandling_ptMd, &_sSS_21SiriInformationSearch13CacheHandling_ptMR);
  return v3;
}

double default argument 0 of PegasusCacheManager.purge(expirationThreshold:requestId:pommesCandidateId:reason:)()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.now.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  v7 = v6;
  (*(v1 + 8))(v5, v0);
  return v7;
}

id default argument 1 of PegasusCacheManager.updateLastMaintenanceStartedTimestamp(with:userDefaults:)()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = MEMORY[0x223DDF550](0xD000000000000010, 0x80000002234DA020);
  v2 = [v0 initWithSuiteName_];

  return v2;
}

uint64_t default argument 0 of PegasusCacheManager.updateLastMaintenanceStartedTimestamp(with:userDefaults:)@<X0>(uint64_t a1@<X8>)
{
  Date.init()();
  v2 = type metadata accessor for Date();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t default argument 0 of OnDeviceSearchInstrumentationUtil.init(analyticsComponentIdGenerator:)()
{
  type metadata accessor for AnalyticsComponentIdGenerator();

  return swift_allocObject();
}

uint64_t default argument 7 of PegasusProxy.init(pegasusClientBuilder:locationManager:networkAvailabilityProvider:pimsEnablementProvider:instrumentationUtil:rrClient:dataProviderManager:contactStore:dialogStateManager:)@<X0>(Class *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = [objc_allocWithZone(*a1) init];
  result = type metadata accessor for CNContactStore(0, a2, a1);
  a4[3] = result;
  a4[4] = a3;
  *a4 = v8;
  return result;
}

double default argument 3 of static SiriKitAppInfoDataProvider.make(appDataProvider:satisfyingAppsDataProvider:foregroundAppProvider:appSearchViewProvider:)@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

id default argument 1 of PerformanceUtil.init(analyticsComponentIdGenerator:trialClient:)()
{
  v0 = [objc_opt_self() clientWithIdentifier_];

  return v0;
}

char *default argument 0 of SageSearch.init(remoteSearchClient:)()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x28223BE20](v0, v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v22 - v8;
  type metadata accessor for PegasusProxyForIntelligenceFlow();
  v23 = static PegasusProxyForIntelligenceFlow.shared.getter();
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  v22 = SiriEnvironment.networkAvailability.getter();

  type metadata accessor for AnalyticsComponentIdGenerator();
  v10 = swift_allocObject();
  type metadata accessor for PegasusInstrumentationUtil();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = v10;
  v12 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  type metadata accessor for PommesDialogStateManager();
  swift_allocObject();
  v13 = PommesDialogStateManager.init(suiteName:)(0xD000000000000010, 0x80000002234DA020);
  if (one-time initialization token for sage != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v0, static Logger.sage);
  v15 = *(v1 + 16);
  v15(v9, v14, v0);
  v16 = type metadata accessor for SagePegasusProxy();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  v15(v6, v9, v0);
  v20 = specialized SearchToolPegasusProxy.init(pegasusClient:networkAvailabilityProvider:instrumentationUtil:dataProviderManager:contactStore:dialogStateManager:logger:)(v23, v22, v11, 0, v12, v13, v6, v19);
  (*(v1 + 8))(v9, v0);
  return v20;
}

unint64_t default argument 3 of SageSearchRequestProcessor.init(remoteClient:pommesSearchRequest:clientEntities:localDomainClients:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SiriInformationSearch16LocalDomainTypesO_AC0ghF0_ptGMd, &_ss23_ContiguousArrayStorageCy21SiriInformationSearch16LocalDomainTypesO_AC0ghF0_ptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2234CF920;
  *(inited + 32) = 1;
  v1 = [objc_opt_self() indexMatcher];
  v2 = type metadata accessor for MusicDomain();
  v3 = swift_allocObject();
  v4 = specialized MusicDomain.init(spanMatcher:)(v1, v3);
  *(inited + 64) = v2;
  *(inited + 72) = &protocol witness table for MusicDomain;
  *(inited + 40) = v4;
  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC21SiriInformationSearch16LocalDomainTypesO_AC0fgE0_pTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of MediaUserStateCenter?(inited + 32, &_s21SiriInformationSearch16LocalDomainTypesO_AA0deC0_ptMd, &_s21SiriInformationSearch16LocalDomainTypesO_AA0deC0_ptMR);
  return v5;
}

uint64_t default argument 3 of PegasusCacheManager.store(siriRequestId:pegasusResponse:pommesResponse:waitFor:completion:)@<X0>(void *a1@<X8>)
{
  *a1 = 5;
  v2 = *MEMORY[0x277D85188];
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t default argument 0 of DataProviderManager.init(ampDataProvider:queueStateDataProvider:appInfoDataProvider:preferredNavigationAppDataProvider:siriKitAppInfoDataProvider:profileSliceResolvingDataProvider:marketplaceInfoDataProvider:pairedDeviceDataProvider:gmAvailabilityPolicyDataProvider:carPlaySessionDataProvider:muxContextManager:preferences:environment:assistantDataCache:serviceHelper:appChecking:)()
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  outlined init with copy of MediaUserStateCenter?(v5, v4, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  type metadata accessor for AmpDataProvider();
  v0 = swift_allocObject();
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  v1 = MEMORY[0x277D84F90];
  *(v0 + 48) = 0;
  *(v0 + 56) = v1;
  swift_beginAccess();
  outlined assign with take of MediaUserStateCenter?(v4, v0 + 16, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySayAA14MediaUserState_pGGMd, &_s21SiriInformationSearch15AnyDataProviderCySayAA14MediaUserState_pGGMR);
  swift_allocObject();
  v2 = specialized AnyDataProvider.init<A>(provider:)(v0);
  outlined destroy of MediaUserStateCenter?(v5, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  return v2;
}

id default argument 1 of DataProviderManager.init(ampDataProvider:queueStateDataProvider:appInfoDataProvider:preferredNavigationAppDataProvider:siriKitAppInfoDataProvider:profileSliceResolvingDataProvider:marketplaceInfoDataProvider:pairedDeviceDataProvider:gmAvailabilityPolicyDataProvider:carPlaySessionDataProvider:muxContextManager:preferences:environment:assistantDataCache:serviceHelper:appChecking:)()
{
  result = [objc_opt_self() defaultObserver];
  if (result)
  {
    v1 = result;
    v2 = objc_allocWithZone(type metadata accessor for AudioQueueStateManager());
    v3 = specialized AudioQueueStateManager.init(queueStateObserver:)(v1, v2);
    type metadata accessor for AudioQueueStateDataProvider();
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_A28_V2alpha_AudioQueueStateInfoVGMd, &_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_A28_V2alpha_AudioQueueStateInfoVGMR);
    swift_allocObject();
    return specialized AnyDataProvider.init<A>(provider:)(v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t default argument 2 of DataProviderManager.init(ampDataProvider:queueStateDataProvider:appInfoDataProvider:preferredNavigationAppDataProvider:siriKitAppInfoDataProvider:profileSliceResolvingDataProvider:marketplaceInfoDataProvider:pairedDeviceDataProvider:gmAvailabilityPolicyDataProvider:carPlaySessionDataProvider:muxContextManager:preferences:environment:assistantDataCache:serviceHelper:appChecking:)()
{
  v0 = type metadata accessor for AppDataProvider();
  v1 = swift_allocObject();
  v8 = &type metadata for PommesSystemAppChecking;
  v9 = &protocol witness table for PommesSystemAppChecking;
  *(v1 + 56) = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
  outlined init with take of DomainWarmupHandling(&v7, v1 + 16);
  v8 = v0;
  v9 = &protocol witness table for AppDataProvider;
  *&v7 = v1;
  v2 = [objc_opt_self() sharedPreferences];
  outlined init with copy of AppDataProviding(&v7, v6);
  type metadata accessor for AppInfoDataProvider();
  v3 = swift_allocObject();
  outlined init with take of DomainWarmupHandling(v6, v3 + 16);
  *(v3 + 56) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMd, &_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMR);
  swift_allocObject();
  v4 = specialized AnyDataProvider.init<A>(provider:)(v3);
  __swift_destroy_boxed_opaque_existential_1(&v7);
  return v4;
}

uint64_t default argument 1 of PegasusProxy.init(pegasusClientBuilder:locationManager:networkAvailabilityProvider:pimsEnablementProvider:instrumentationUtil:rrClient:dataProviderManager:contactStore:dialogStateManager:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for AssistantLocationProvider();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = specialized AssistantLocationProvider.init(serviceHelper:)(0);
  a1[3] = v2;
  a1[4] = &protocol witness table for AssistantLocationProvider;
  *a1 = result;
  return result;
}

uint64_t default argument 2 of PegasusProxy.init(pegasusClientBuilder:locationManager:networkAvailabilityProvider:pimsEnablementProvider:instrumentationUtil:rrClient:dataProviderManager:contactStore:dialogStateManager:)()
{
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  v0 = SiriEnvironment.networkAvailability.getter();

  return v0;
}

uint64_t default argument 4 of PegasusProxy.init(pegasusClientBuilder:locationManager:networkAvailabilityProvider:pimsEnablementProvider:instrumentationUtil:rrClient:dataProviderManager:contactStore:dialogStateManager:)(void (*a1)(void))
{
  type metadata accessor for AnalyticsComponentIdGenerator();
  v2 = swift_allocObject();
  a1(0);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v2;
  return result;
}

id default argument 9 of PegasusProxy.init(ampDataProvider:queueStateDataProvider:appInfoDataProvider:profileSliceResolvingDataProvider:pimsEnablementProvider:pegasusClientBuilder:locationManager:networkAvailabilityProvider:instrumentationUtil:preferences:rrClient:contactStore:muxContextManager:dialogStateManager:)()
{
  v0 = [objc_opt_self() sharedPreferences];

  return v0;
}

unint64_t default argument 0 of PlayThisLibraryItemPreflightClient.init(rrClient:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() processInfo];
  v3 = NSProcessInfo.isRunningUnitTests.getter();

  if (v3)
  {
    v4 = &type metadata for EmptyReferenceResolver;
    result = lazy protocol witness table accessor for type EmptyReferenceResolver and conformance EmptyReferenceResolver();
  }

  else
  {
    v4 = type metadata accessor for ReferenceResolutionClient();
    *a1 = ReferenceResolutionClient.__allocating_init()();
    result = MEMORY[0x277D5FDD8];
  }

  a1[3] = v4;
  a1[4] = result;
  return result;
}

uint64_t default argument 8 of PegasusProxy.init(pegasusClientBuilder:locationManager:networkAvailabilityProvider:pimsEnablementProvider:instrumentationUtil:rrClient:dataProviderManager:contactStore:dialogStateManager:)()
{
  type metadata accessor for PommesDialogStateManager();
  swift_allocObject();
  return PommesDialogStateManager.init(suiteName:)(0xD000000000000010, 0x80000002234DA020);
}

unint64_t lazy protocol witness table accessor for type EmptyReferenceResolver and conformance EmptyReferenceResolver()
{
  result = lazy protocol witness table cache variable for type EmptyReferenceResolver and conformance EmptyReferenceResolver;
  if (!lazy protocol witness table cache variable for type EmptyReferenceResolver and conformance EmptyReferenceResolver)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmptyReferenceResolver and conformance EmptyReferenceResolver);
  }

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

double default argument 2 of MusicDomain.search(_:query:allowedItemTypes:allowedFieldTypes:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd, &_ss23_ContiguousArrayStorageCys6UInt16VGMR);
  v0 = swift_allocObject();
  *&result = 2;
  *(v0 + 16) = xmmword_2234CF940;
  *(v0 + 32) = -1530378132;
  return result;
}

uint64_t default argument 0 of static AppInfoDataProvider.make(appDataProvider:preferences:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for AppDataProvider();
  v3 = swift_allocObject();
  v6 = &type metadata for PommesSystemAppChecking;
  v7 = &protocol witness table for PommesSystemAppChecking;
  *(v3 + 56) = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
  result = outlined init with take of DomainWarmupHandling(&v5, v3 + 16);
  a1[3] = v2;
  a1[4] = &protocol witness table for AppDataProvider;
  *a1 = v3;
  return result;
}

uint64_t default argument 1 of createAmpUsersStateSlice(mediaUserStates:resolution:isPostResolution:muxUserInfo:isMultiUserRequest:)@<X0>(unsigned int *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a3, v4, v5);
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance NSStringCompareOptions(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t protocol witness for Error._domain.getter in conformance related decl e for AFLocationServiceErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ICSubscriptionStatusOfferType and conformance ICSubscriptionStatusOfferType(&lazy protocol witness table cache variable for type related decl 'e' for AFLocationServiceErrorCode and conformance related decl 'e' for AFLocationServiceErrorCode, type metadata accessor for related decl 'e' for AFLocationServiceErrorCode);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance related decl e for AFLocationServiceErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ICSubscriptionStatusOfferType and conformance ICSubscriptionStatusOfferType(&lazy protocol witness table cache variable for type related decl 'e' for AFLocationServiceErrorCode and conformance related decl 'e' for AFLocationServiceErrorCode, type metadata accessor for related decl 'e' for AFLocationServiceErrorCode);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t protocol witness for Error._getEmbeddedNSError() in conformance related decl e for AFLocationServiceErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ICSubscriptionStatusOfferType and conformance ICSubscriptionStatusOfferType(&lazy protocol witness table cache variable for type related decl 'e' for AFLocationServiceErrorCode and conformance related decl 'e' for AFLocationServiceErrorCode, type metadata accessor for related decl 'e' for AFLocationServiceErrorCode);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance ICSubscriptionStatusOfferType(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance ICSubscriptionStatusOfferType(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance ICSubscriptionStatusOfferType@<X0>(uint64_t *a1@<X8>)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = MEMORY[0x223DDF550](v2);

  *a1 = v3;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CLAccuracyAuthorization()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x223DE0370](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CLAccuracyAuthorization()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x223DE0370](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomNSError.errorCode.getter in conformance related decl e for AFLocationServiceErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ICSubscriptionStatusOfferType and conformance ICSubscriptionStatusOfferType(&lazy protocol witness table cache variable for type related decl 'e' for AFLocationServiceErrorCode and conformance related decl 'e' for AFLocationServiceErrorCode, type metadata accessor for related decl 'e' for AFLocationServiceErrorCode);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t protocol witness for CustomNSError.errorUserInfo.getter in conformance related decl e for AFLocationServiceErrorCode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ICSubscriptionStatusOfferType and conformance ICSubscriptionStatusOfferType(&lazy protocol witness table cache variable for type related decl 'e' for AFLocationServiceErrorCode and conformance related decl 'e' for AFLocationServiceErrorCode, type metadata accessor for related decl 'e' for AFLocationServiceErrorCode);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t protocol witness for _ObjectiveCBridgeableError.init(_bridgedNSError:) in conformance related decl e for AFLocationServiceErrorCode(void *a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type ICSubscriptionStatusOfferType and conformance ICSubscriptionStatusOfferType(&lazy protocol witness table cache variable for type related decl 'e' for AFLocationServiceErrorCode and conformance related decl 'e' for AFLocationServiceErrorCode, type metadata accessor for related decl 'e' for AFLocationServiceErrorCode);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance related decl e for AFLocationServiceErrorCode(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type ICSubscriptionStatusOfferType and conformance ICSubscriptionStatusOfferType(&lazy protocol witness table cache variable for type related decl 'e' for AFLocationServiceErrorCode and conformance related decl 'e' for AFLocationServiceErrorCode, type metadata accessor for related decl 'e' for AFLocationServiceErrorCode);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance related decl e for AFLocationServiceErrorCode()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance ICSubscriptionStatusOfferType(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ICSubscriptionStatusOfferType and conformance ICSubscriptionStatusOfferType(&lazy protocol witness table cache variable for type ICSubscriptionStatusOfferType and conformance ICSubscriptionStatusOfferType, type metadata accessor for ICSubscriptionStatusOfferType);
  v3 = lazy protocol witness table accessor for type ICSubscriptionStatusOfferType and conformance ICSubscriptionStatusOfferType(&lazy protocol witness table cache variable for type ICSubscriptionStatusOfferType and conformance ICSubscriptionStatusOfferType, type metadata accessor for ICSubscriptionStatusOfferType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance related decl e for AFLocationServiceErrorCode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ICSubscriptionStatusOfferType and conformance ICSubscriptionStatusOfferType(&lazy protocol witness table cache variable for type related decl 'e' for AFLocationServiceErrorCode and conformance related decl 'e' for AFLocationServiceErrorCode, type metadata accessor for related decl 'e' for AFLocationServiceErrorCode);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ICSubscriptionStatusOfferType@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x223DDF550](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance LNSystemProtocolIdentifier(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ICSubscriptionStatusOfferType and conformance ICSubscriptionStatusOfferType(&lazy protocol witness table cache variable for type LNSystemProtocolIdentifier and conformance LNSystemProtocolIdentifier, type metadata accessor for LNSystemProtocolIdentifier);
  v3 = lazy protocol witness table accessor for type ICSubscriptionStatusOfferType and conformance ICSubscriptionStatusOfferType(&lazy protocol witness table cache variable for type LNSystemProtocolIdentifier and conformance LNSystemProtocolIdentifier, type metadata accessor for LNSystemProtocolIdentifier);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance LNSystemProtocolIdentifier()
{
  v1 = *v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = MEMORY[0x223DDF780](v2);

  return v3;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance LNSystemProtocolIdentifier()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LNSystemProtocolIdentifier()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance LNSystemProtocolIdentifier(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

char *specialized SearchToolPegasusProxy.init(pegasusClient:networkAvailabilityProvider:instrumentationUtil:dataProviderManager:contactStore:dialogStateManager:logger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v96 = a7;
  v95 = a6;
  v97 = a3;
  v92 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v91 = *(v92 - 8);
  v13 = *(v91 + 64);
  MEMORY[0x28223BE20](v92, v14);
  v16 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS.QoSClass();
  v90 = *(v17 - 8);
  v18 = *(v90 + 64);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for OS_dispatch_queue.Attributes();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8, v24);
  v26 = &v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchQoS();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8, v29);
  v31 = &v75 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for CNContactStore, 0x277CBDAB8);
  v106 = &protocol witness table for CNContactStore;
  *&v104 = a5;
  *(a8 + 16) = 0;
  *(a8 + 24) = 0;
  *(a8 + 64) = xmmword_2234CF930;
  *(a8 + 120) = 0;
  *(a8 + 32) = a1;
  *(a8 + 40) = a2;
  v93 = a2;
  v94 = a8;
  *(a8 + 48) = v97;
  if (a4)
  {
    goto LABEL_4;
  }

  v79 = v31;
  v80 = v26;
  v81 = v21;
  v83 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch0C21ToolEmptyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMd, &_s21SiriInformationSearch0C21ToolEmptyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMR);
  v32 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMd, &_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMR);
  swift_allocObject();

  v84 = specialized AnyDataProvider.init<A>(provider:)(v32);
  v103 = 0;
  v101 = 0u;
  v102 = 0u;
  outlined init with copy of MediaUserStateCenter?(&v101, v99, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  type metadata accessor for AmpDataProvider();
  v33 = swift_allocObject();
  *(v33 + 32) = 0u;
  *(v33 + 16) = 0u;
  v34 = MEMORY[0x277D84F90];
  *(v33 + 48) = 0;
  *(v33 + 56) = v34;
  swift_beginAccess();
  outlined assign with take of MediaUserStateCenter?(v99, v33 + 16, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySayAA14MediaUserState_pGGMd, &_s21SiriInformationSearch15AnyDataProviderCySayAA14MediaUserState_pGGMR);
  swift_allocObject();
  v82 = specialized AnyDataProvider.init<A>(provider:)(v33);
  outlined destroy of MediaUserStateCenter?(&v101, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  result = [objc_opt_self() defaultObserver];
  if (result)
  {
    v36 = result;

    v37 = objc_allocWithZone(type metadata accessor for AudioQueueStateManager());
    v38 = specialized AudioQueueStateManager.init(queueStateObserver:)(v36, v37);
    type metadata accessor for AudioQueueStateDataProvider();
    v39 = swift_allocObject();
    *(v39 + 16) = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_A28_V2alpha_AudioQueueStateInfoVGMd, &_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_A28_V2alpha_AudioQueueStateInfoVGMR);
    swift_allocObject();
    v89 = specialized AnyDataProvider.init<A>(provider:)(v39);
    v88 = default argument 2 of PegasusProxy.init(ampDataProvider:queueStateDataProvider:appInfoDataProvider:profileSliceResolvingDataProvider:pimsEnablementProvider:pegasusClientBuilder:locationManager:networkAvailabilityProvider:instrumentationUtil:preferences:rrClient:contactStore:muxContextManager:dialogStateManager:)();
    type metadata accessor for AppDataProvider();
    v40 = swift_allocObject();
    *(&v102 + 1) = &type metadata for PommesSystemAppChecking;
    v103 = &protocol witness table for PommesSystemAppChecking;
    *(v40 + 56) = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
    outlined init with take of DomainWarmupHandling(&v101, v40 + 16);
    v41 = objc_opt_self();
    v42 = [v41 sharedPreferences];
    v87 = _s21SiriInformationSearch34PreferredNavigationAppDataProviderC4make03appgH011preferencesAA03AnygH0CySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGAA0fG9Providing_p_So13AFPreferencesCtFZTf4enn_nAA0fgH0C_Tt1g5(v40, v42);

    v43 = type metadata accessor for MarketplaceInfoDataProvider();
    v44 = *(v43 + 48);
    v45 = *(v43 + 52);
    v46 = swift_allocObject();
    v47 = OBJC_IVAR____TtC21SiriInformationSearch27MarketplaceInfoDataProvider_marketplaceInfo;
    v48 = type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo();
    (*(*(v48 - 8) + 56))(v46 + v47, 1, 1, v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_C19_V2_MarketplaceInfoVGMd, &_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_C19_V2_MarketplaceInfoVGMR);
    swift_allocObject();
    v78 = specialized AnyDataProvider.init<A>(provider:)(v46);
    type metadata accessor for PairedDeviceDataProvider();
    v49 = swift_allocObject();
    *(v49 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI27Useragentpb_CompanionDeviceVGGMd, &_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI27Useragentpb_CompanionDeviceVGGMR);
    swift_allocObject();
    v76 = specialized AnyDataProvider.init<A>(provider:)(v49);
    v103 = 0;
    v101 = 0u;
    v102 = 0u;
    outlined init with copy of MediaUserStateCenter?(&v101, v99, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMd, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMR);
    v50 = type metadata accessor for GMAvailabilityPolicyDataProvider();
    v51 = *(v50 + 48);
    v52 = *(v50 + 52);
    swift_allocObject();
    v53 = GMAvailabilityPolicyDataProvider.init(gmAvailability:)(v99);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySbGMd, &_s21SiriInformationSearch15AnyDataProviderCySbGMR);
    swift_allocObject();
    v77 = specialized AnyDataProvider.init<A>(provider:)(v53);
    outlined destroy of MediaUserStateCenter?(&v101, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMd, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMR);
    v54 = type metadata accessor for CarPlaySessionDataProvider();
    v55 = objc_allocWithZone(v54);
    v56 = OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_carPlaySessionStatus;
    *&v55[OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_carPlaySessionStatus] = 0;
    v55[OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_sessionDidConnect] = 0;
    *&v55[v56] = 0;
    v98.receiver = v55;
    v98.super_class = v54;
    v57 = objc_msgSendSuper2(&v98, sel_init);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_a23_V2alpha_CarPlaySessionE0VGMd, &_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_a23_V2alpha_CarPlaySessionE0VGMR);
    swift_allocObject();
    v86 = specialized AnyDataProvider.init<A>(provider:)(v57);
    v58 = [v41 sharedPreferences];
    type metadata accessor for SiriEnvironment();
    v85 = static SiriEnvironment.default.getter();
    type metadata accessor for DataProviderManager();
    a4 = swift_allocObject();
    *(&v102 + 1) = &type metadata for PommesSystemAppChecking;
    v103 = &protocol witness table for PommesSystemAppChecking;
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    static DispatchQoS.userInitiated.getter();
    static OS_dispatch_queue.Attributes.concurrent.getter();
    v59 = v90;
    v60 = v81;
    (*(v90 + 104))(v81, *MEMORY[0x277D851C8], v17);
    static OS_dispatch_queue.global(qos:)();
    (*(v59 + 8))(v60, v17);
    (*(v91 + 104))(v83, *MEMORY[0x277D85260], v92);
    v61 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    *(a4 + 128) = 0u;
    *(a4 + 160) = 0u;
    *(a4 + 176) = 0;
    *(a4 + 144) = 0u;
    v62 = v82;
    *(a4 + 16) = v61;
    *(a4 + 24) = v62;
    v63 = v88;
    *(a4 + 32) = v89;
    *(a4 + 40) = v63;
    v64 = v84;
    *(a4 + 48) = v87;
    *(a4 + 56) = v64;
    type metadata accessor for AnalyticsComponentIdGenerator();
    memset(v99, 0, sizeof(v99));
    v100 = 0;
    v65 = swift_allocObject();
    type metadata accessor for ProfileSliceResolutionRequestInstrumentationUtil();
    v66 = swift_allocObject();
    *(v66 + 16) = 0;
    *(v66 + 24) = v65;

    v67 = specialized static ProfileSliceResolvingDataProvider.make(mediaUserStateCenter:instrumentationUtil:muxContextManager:)(v99, v66, 0);

    outlined destroy of MediaUserStateCenter?(v99, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
    v68 = v78;
    *(a4 + 64) = v67;
    *(a4 + 72) = v68;
    *(a4 + 80) = v76;
    *(a4 + 96) = v86;
    *(a4 + 104) = 0;
    *(a4 + 112) = v85;
    *(a4 + 120) = v58;
    *(a4 + 128) = 0;
    *(a4 + 136) = 0;

    v69 = v58;
    outlined init with copy of AppDataProviding(&v101, v99);
    swift_beginAccess();
    outlined assign with take of MediaUserStateCenter?(v99, a4 + 144, &_s21SiriInformationSearch17PommesAppChecking_pSgMd, &_s21SiriInformationSearch17PommesAppChecking_pSgMR);
    swift_endAccess();
    *(a4 + 88) = v77;
    v70 = *(**(a4 + 40) + 160);

    v70(1);

    v71 = *(**(a4 + 48) + 160);

    v71(1);

    (*(**(a4 + 56) + 160))(1);

    __swift_destroy_boxed_opaque_existential_1(&v101);
LABEL_4:
    v72 = v94;
    *(v94 + 7) = a4;
    outlined init with take of DomainWarmupHandling(&v104, (v72 + 80));
    *(v72 + 16) = v95;
    v73 = *(*v72 + 216);
    v74 = type metadata accessor for Logger();
    (*(*(v74 - 8) + 32))(&v72[v73], v96, v74);
    return v72;
  }

  __break(1u);
  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ICSubscriptionStatusOfferType and conformance ICSubscriptionStatusOfferType(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

void type metadata accessor for AFUserIdentityClassfication(uint64_t a1, unint64_t *a2)
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

id PommesSearchError.underlyingError.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t PommesSearchError.searchReason.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PommesSearchError(0) + 20);
  v4 = type metadata accessor for PommesSearchReason();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PommesSearchError.init(underlyingError:searchReason:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for PommesSearchError(0) + 20);
  v6 = type metadata accessor for PommesSearchReason();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t PommesSearchEagerInfo.searchReason.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PommesSearchReason();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PommesSearchEagerInfo.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D56670];
  v3 = type metadata accessor for PommesSearchReason();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t PommesSearchEagerInfo.init(searchReason:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PommesSearchReason();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t PommesSearch.serverFallbackPreferences.setter(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 72));
  outlined init with take of DomainWarmupHandling(a1, v1 + 72);
  return swift_endAccess();
}

uint64_t key path setter for PommesSearch.preparedRequestsIds : PommesSearch(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 120);
  *(v3 + 120) = v2;
}

id PommesSearch.__allocating_init()()
{
  v0 = type metadata accessor for Apple_Parsec_Search_SearchConversationContext();
  v123 = *(v0 - 8);
  v124 = v0;
  v1 = *(v123 + 64);
  MEMORY[0x28223BE20](v0, v2);
  v122 = &v106 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v119 = *(v4 - 8);
  v120 = v4;
  v5 = v119[8];
  MEMORY[0x28223BE20](v4, v6);
  v118 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v116 = *(v8 - 8);
  v117 = v8;
  v9 = *(v116 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v115 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OS_dispatch_queue.Attributes();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v114 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v113 = &v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [objc_allocWithZone(MEMORY[0x277CEF318]) init];
  v21 = AFSupportsMultiUser();
  type metadata accessor for PommesUserProfile();
  v22 = swift_allocObject();
  type metadata accessor for PommesMUXContextManager();
  swift_allocObject();
  v131 = PommesMUXContextManager.init(multiUserConnection:isMultiUserSupported:pommesUserProfile:)(v20, v21, v22);
  v140 = 0;
  v138 = 0u;
  v139 = 0u;
  outlined init with copy of MediaUserStateCenter?(&v138, &v135, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  type metadata accessor for AmpDataProvider();
  v23 = swift_allocObject();
  *(v23 + 32) = 0u;
  *(v23 + 16) = 0u;
  v24 = MEMORY[0x277D84F90];
  *(v23 + 48) = 0;
  *(v23 + 56) = v24;
  swift_beginAccess();
  outlined assign with take of MediaUserStateCenter?(&v135, v23 + 16, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySayAA14MediaUserState_pGGMd, &_s21SiriInformationSearch15AnyDataProviderCySayAA14MediaUserState_pGGMR);
  swift_allocObject();
  v121 = specialized AnyDataProvider.init<A>(provider:)(v23);
  outlined destroy of MediaUserStateCenter?(&v138, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  result = [objc_opt_self() defaultObserver];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v26 = result;
  v27 = objc_allocWithZone(type metadata accessor for AudioQueueStateManager());
  v28 = specialized AudioQueueStateManager.init(queueStateObserver:)(v26, v27);
  type metadata accessor for AudioQueueStateDataProvider();
  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_A28_V2alpha_AudioQueueStateInfoVGMd, &_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_A28_V2alpha_AudioQueueStateInfoVGMR);
  swift_allocObject();
  v130 = specialized AnyDataProvider.init<A>(provider:)(v29);
  v129 = default argument 2 of DataProviderManager.init(ampDataProvider:queueStateDataProvider:appInfoDataProvider:preferredNavigationAppDataProvider:siriKitAppInfoDataProvider:profileSliceResolvingDataProvider:marketplaceInfoDataProvider:pairedDeviceDataProvider:gmAvailabilityPolicyDataProvider:carPlaySessionDataProvider:muxContextManager:preferences:environment:assistantDataCache:serviceHelper:appChecking:)();
  type metadata accessor for AppDataProvider();
  v30 = swift_allocObject();
  *(&v139 + 1) = &type metadata for PommesSystemAppChecking;
  v140 = &protocol witness table for PommesSystemAppChecking;
  *(v30 + 56) = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
  outlined init with take of DomainWarmupHandling(&v138, v30 + 16);
  v31 = objc_opt_self();
  v32 = [v31 sharedPreferences];
  v128 = _s21SiriInformationSearch34PreferredNavigationAppDataProviderC4make03appgH011preferencesAA03AnygH0CySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGAA0fG9Providing_p_So13AFPreferencesCtFZTf4enn_nAA0fgH0C_Tt1g5(v30, v32);

  v33 = swift_allocObject();
  *(&v139 + 1) = &type metadata for PommesSystemAppChecking;
  v140 = &protocol witness table for PommesSystemAppChecking;
  *(v33 + 56) = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
  outlined init with take of DomainWarmupHandling(&v138, v33 + 16);
  v140 = 0;
  v138 = 0u;
  v139 = 0u;
  v127 = _s21SiriInformationSearch0A22KitAppInfoDataProviderC4make03appgH0014satisfyingAppsgH0010foregroundeH00jc4ViewH0AA03AnygH0CySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGAA0eG9Providing_p_AA010SatisfyinglgH0_pSgAA010ForegroundeH0_pAA0ecnH0_pSgtFZTf4enenn_nAA0egH0C_AA012RunningBoardyeH0VTt3g5(v33, 0, 0, &v138);

  outlined destroy of MediaUserStateCenter?(&v138, &_s21SiriInformationSearch03AppC12ViewProvider_pSgMd, &_s21SiriInformationSearch03AppC12ViewProvider_pSgMR);
  v34 = type metadata accessor for MarketplaceInfoDataProvider();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  v37 = swift_allocObject();
  v38 = OBJC_IVAR____TtC21SiriInformationSearch27MarketplaceInfoDataProvider_marketplaceInfo;
  v39 = type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo();
  (*(*(v39 - 8) + 56))(v37 + v38, 1, 1, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_C19_V2_MarketplaceInfoVGMd, &_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_C19_V2_MarketplaceInfoVGMR);
  swift_allocObject();
  v111 = specialized AnyDataProvider.init<A>(provider:)(v37);
  type metadata accessor for PairedDeviceDataProvider();
  v40 = swift_allocObject();
  *(v40 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI27Useragentpb_CompanionDeviceVGGMd, &_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI27Useragentpb_CompanionDeviceVGGMR);
  swift_allocObject();
  v109 = specialized AnyDataProvider.init<A>(provider:)(v40);
  v140 = 0;
  v138 = 0u;
  v139 = 0u;
  outlined init with copy of MediaUserStateCenter?(&v138, &v135, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMd, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMR);
  v41 = type metadata accessor for GMAvailabilityPolicyDataProvider();
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();
  v44 = GMAvailabilityPolicyDataProvider.init(gmAvailability:)(&v135);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySbGMd, &_s21SiriInformationSearch15AnyDataProviderCySbGMR);
  swift_allocObject();
  v110 = specialized AnyDataProvider.init<A>(provider:)(v44);
  outlined destroy of MediaUserStateCenter?(&v138, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMd, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMR);
  v45 = type metadata accessor for CarPlaySessionDataProvider();
  v46 = objc_allocWithZone(v45);
  v47 = OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_carPlaySessionStatus;
  *&v46[OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_carPlaySessionStatus] = 0;
  v46[OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_sessionDidConnect] = 0;
  *&v46[v47] = 0;
  v134.receiver = v46;
  v134.super_class = v45;
  v48 = objc_msgSendSuper2(&v134, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_a23_V2alpha_CarPlaySessionE0VGMd, &_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_a23_V2alpha_CarPlaySessionE0VGMR);
  swift_allocObject();
  v108 = specialized AnyDataProvider.init<A>(provider:)(v48);
  v107 = [v31 sharedPreferences];
  v112 = type metadata accessor for SiriEnvironment();
  v126 = static SiriEnvironment.default.getter();
  type metadata accessor for DataProviderManager();
  v49 = swift_allocObject();
  *(&v139 + 1) = &type metadata for PommesSystemAppChecking;
  v140 = &protocol witness table for PommesSystemAppChecking;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);

  static DispatchQoS.userInitiated.getter();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  v51 = v115;
  v50 = v116;
  v52 = v117;
  (*(v116 + 104))(v115, *MEMORY[0x277D851C8], v117);
  static OS_dispatch_queue.global(qos:)();
  (*(v50 + 8))(v51, v52);
  (v119[13])(v118, *MEMORY[0x277D85260], v120);
  v53 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v49 + 128) = 0u;
  *(v49 + 160) = 0u;
  *(v49 + 176) = 0;
  *(v49 + 144) = 0u;
  v54 = v121;
  *(v49 + 16) = v53;
  *(v49 + 24) = v54;
  v55 = v129;
  *(v49 + 32) = v130;
  *(v49 + 40) = v55;
  v56 = v127;
  *(v49 + 48) = v128;
  *(v49 + 56) = v56;
  v120 = type metadata accessor for AnalyticsComponentIdGenerator();
  v135 = 0u;
  v136 = 0u;
  v137 = 0;
  v57 = swift_allocObject();
  type metadata accessor for ProfileSliceResolutionRequestInstrumentationUtil();
  v58 = swift_allocObject();
  *(v58 + 16) = 0;
  *(v58 + 24) = v57;

  v59 = v131;
  v60 = specialized static ProfileSliceResolvingDataProvider.make(mediaUserStateCenter:instrumentationUtil:muxContextManager:)(&v135, v58, v131);

  outlined destroy of MediaUserStateCenter?(&v135, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  v61 = v111;
  *(v49 + 64) = v60;
  *(v49 + 72) = v61;
  v62 = v108;
  *(v49 + 80) = v109;
  *(v49 + 96) = v62;
  *(v49 + 104) = v59;
  v63 = v107;
  *(v49 + 112) = v126;
  *(v49 + 120) = v63;
  *(v49 + 128) = 0;
  *(v49 + 136) = 0;

  v119 = v63;
  outlined init with copy of AppDataProviding(&v138, &v135);
  swift_beginAccess();
  outlined assign with take of MediaUserStateCenter?(&v135, v49 + 144, &_s21SiriInformationSearch17PommesAppChecking_pSgMd, &_s21SiriInformationSearch17PommesAppChecking_pSgMR);
  swift_endAccess();
  *(v49 + 88) = v110;
  v64 = *(**(v49 + 40) + 160);

  v64(1);

  v65 = *(**(v49 + 48) + 160);

  v65(1);

  (*(**(v49 + 56) + 160))(1);

  __swift_destroy_boxed_opaque_existential_1(&v138);
  static SiriEnvironment.default.getter();
  v130 = SiriEnvironment.networkAvailability.getter();

  v66 = type metadata accessor for AssistantLocationProvider();
  v67 = *(v66 + 48);
  v68 = *(v66 + 52);
  swift_allocObject();
  v129 = specialized AssistantLocationProvider.init(serviceHelper:)(0);
  v69 = swift_allocObject();
  type metadata accessor for PegasusInstrumentationUtil();
  v70 = swift_allocObject();
  *(v70 + 16) = 0;
  *(v70 + 24) = v69;
  v71 = [objc_opt_self() processInfo];
  LOBYTE(v61) = NSProcessInfo.isRunningUnitTests.getter();

  if (v61)
  {
    v72 = &type metadata for EmptyReferenceResolver;
    v73 = lazy protocol witness table accessor for type EmptyReferenceResolver and conformance EmptyReferenceResolver();
  }

  else
  {
    v72 = type metadata accessor for ReferenceResolutionClient();
    *&v138 = ReferenceResolutionClient.__allocating_init()();
    v73 = MEMORY[0x277D5FDD8];
  }

  v74 = 0xEB00000000495255;
  *(&v139 + 1) = v72;
  v140 = v73;
  v75 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  type metadata accessor for PommesDialogStateManager();
  swift_allocObject();
  v76 = PommesDialogStateManager.init(suiteName:)(0xD000000000000010, 0x80000002234DA020);
  v77 = type metadata accessor for PegasusProxy(0);
  v78 = *(v77 + 48);
  v79 = *(v77 + 52);
  v80 = swift_allocObject();
  *(&v136 + 1) = v66;
  v137 = &protocol witness table for AssistantLocationProvider;
  *&v135 = v129;
  v133[3] = &type metadata for PIMSEnablementProvider;
  v133[4] = &protocol witness table for PIMSEnablementProvider;
  v132[3] = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for CNContactStore, 0x277CBDAB8);
  v132[4] = &protocol witness table for CNContactStore;
  v132[0] = v75;
  *(v80 + 16) = 1;
  *(v80 + 144) = 0;
  *(v80 + 64) = 0;
  *(v80 + 72) = 0;
  v81 = v130;

  v127 = v75;
  v82 = closure #1 in variable initialization expression of PegasusProxy.requestCancellableQueue();
  v83 = MEMORY[0x277D84FA0];
  *(v80 + 152) = v82;
  *(v80 + 160) = v83;
  *(v80 + 168) = v83;
  *(v80 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_persistentPegasusConversationContext) = xmmword_2234CF930;
  v84 = OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_previousInteractionType;
  v85 = type metadata accessor for InteractionType();
  (*(*(v85 - 8) + 56))(v80 + v84, 1, 1, v85);
  type metadata accessor for PegasusProxyForAssistant();
  *(v80 + 80) = static PegasusProxyForAssistant.shared.getter();
  *(v80 + 88) = &protocol witness table for PegasusProxyForAssistant;
  outlined init with copy of AppDataProviding(&v135, v80 + 96);
  *(v80 + 136) = v81;
  outlined init with copy of AppDataProviding(v133, v80 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_pimsEnablementProvider);
  *(v80 + 176) = v70;
  *(v80 + 184) = v49;
  outlined init with copy of AppDataProviding(&v138, v80 + 24);
  outlined init with copy of AppDataProviding(v132, v80 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_contactStore);
  *(v80 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_dialogStateManager) = v76;
  v86 = byte_2836954A8;

  v128 = v76;

  if (v86)
  {
    v87 = 0x6E65657263536E6FLL;
    v88 = 0xEB00000000495255;
    if (v86 != 1)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v88 = 0x80000002234D9320;
    v87 = 0xD000000000000013;
  }

  type metadata accessor for DomainAffinityKVStoreManager();
  static DomainAffinityKVStoreManager.domainAffinityKVStore(name:)(v87, v88);

LABEL_10:
  v89 = v131;
  if (byte_2836954A9 != 2)
  {
    v90 = 0x6E65657263536E6FLL;
    v91 = 0xEB00000000495255;
    if (byte_2836954A9 != 1)
    {
      v90 = 0xD000000000000013;
      v91 = 0x80000002234D9320;
    }

    type metadata accessor for DomainAffinityKVStoreManager();
    static DomainAffinityKVStoreManager.domainAffinityKVStore(name:)(v90, v91);
  }

  if (byte_2836954AA != 2)
  {
    v92 = 0x6E65657263536E6FLL;
    if (byte_2836954AA != 1)
    {
      v92 = 0xD000000000000013;
      v74 = 0x80000002234D9320;
    }

    type metadata accessor for DomainAffinityKVStoreManager();
    static DomainAffinityKVStoreManager.domainAffinityKVStore(name:)(v92, v74);
  }

  v93 = v122;
  Apple_Parsec_Search_SearchConversationContext.init()();
  v94 = v130;

  __swift_destroy_boxed_opaque_existential_1(&v138);
  __swift_destroy_boxed_opaque_existential_1(v132);
  __swift_destroy_boxed_opaque_existential_1(v133);
  __swift_destroy_boxed_opaque_existential_1(&v135);
  (*(v123 + 32))(v80 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_searchConversationContext, v93, v124);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SiriInformationSearch16LocalDomainTypesO_AC0ghF0_ptGMd, &_ss23_ContiguousArrayStorageCy21SiriInformationSearch16LocalDomainTypesO_AC0ghF0_ptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2234CF920;
  *(inited + 32) = 1;
  v96 = [objc_opt_self() indexMatcher];
  v97 = type metadata accessor for MusicDomain();
  v98 = swift_allocObject();
  v99 = specialized MusicDomain.init(spanMatcher:)(v96, v98);
  *(inited + 64) = v97;
  *(inited + 72) = &protocol witness table for MusicDomain;
  *(inited + 40) = v99;
  v100 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC21SiriInformationSearch16LocalDomainTypesO_AC0fgE0_pTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of MediaUserStateCenter?(inited + 32, &_s21SiriInformationSearch16LocalDomainTypesO_AA0deC0_ptMd, &_s21SiriInformationSearch16LocalDomainTypesO_AA0deC0_ptMR);
  v101 = specialized static PommesSearch.defaultPreflightClients(dataProviderManager:networkAvailabilityProvider:)(v49, v94);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v102 = static PegasusCacheManager.shared;

  v103 = default argument 0 of DomainWarmup.init(warmupClients:)();
  type metadata accessor for DomainWarmup();
  swift_allocObject();
  v104 = DomainWarmup.init(warmupClients:)(v103);
  v105 = (*(v125 + 240))(v80, v100, v101, v102, v104, v89);

  return v105;
}

uint64_t static PommesSearch.pommesSearchForSistoolFactory()()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v132 = *(v0 - 1);
  v133 = v0;
  v1 = *(v132 + 64);
  MEMORY[0x28223BE20](v0, v2);
  v131 = v122 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS.QoSClass();
  v129 = *(v4 - 8);
  v130 = v4;
  v5 = *(v129 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v128 = v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v127 = v122 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v126 = v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_AudioQueueStateInfoVSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_AudioQueueStateInfoVSgMR);
  v17 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v16 - 8, v18);
  v21 = v122 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = v122 - v23;
  v152 = 0;
  v150 = 0u;
  v151 = 0u;
  outlined init with copy of MediaUserStateCenter?(&v150, &v147, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  type metadata accessor for AmpDataProvider();
  v25 = swift_allocObject();
  *(v25 + 32) = 0u;
  *(v25 + 16) = 0u;
  v26 = MEMORY[0x277D84F90];
  *(v25 + 48) = 0;
  *(v25 + 56) = v26;
  swift_beginAccess();
  outlined assign with take of MediaUserStateCenter?(&v147, v25 + 16, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySayAA14MediaUserState_pGGMd, &_s21SiriInformationSearch15AnyDataProviderCySayAA14MediaUserState_pGGMR);
  swift_allocObject();
  v140 = specialized AnyDataProvider.init<A>(provider:)(v25);
  outlined destroy of MediaUserStateCenter?(&v150, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  v27 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo();
  v28 = *(*(v27 - 8) + 56);
  v28(v24, 1, 1, v27);
  outlined init with copy of MediaUserStateCenter?(v24, v21, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_AudioQueueStateInfoVSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_AudioQueueStateInfoVSgMR);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch17DummyDataProviderCy10PegasusAPI013Apple_Parsec_A28_V2alpha_AudioQueueStateInfoVGMd, &_s21SiriInformationSearch17DummyDataProviderCy10PegasusAPI013Apple_Parsec_A28_V2alpha_AudioQueueStateInfoVGMR);
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  v32 = swift_allocObject();
  v33 = *(*v32 + 88);
  v28((v32 + v33), 1, 1, v27);
  swift_beginAccess();
  outlined assign with take of MediaUserStateCenter?(v21, v32 + v33, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_AudioQueueStateInfoVSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_AudioQueueStateInfoVSgMR);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_A28_V2alpha_AudioQueueStateInfoVGMd, &_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_A28_V2alpha_AudioQueueStateInfoVGMR);
  swift_allocObject();
  v139 = specialized AnyDataProvider.init<A>(provider:)(v32);
  outlined destroy of MediaUserStateCenter?(v24, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_AudioQueueStateInfoVSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_AudioQueueStateInfoVSgMR);
  v34 = type metadata accessor for AppDataProvider();
  v35 = swift_allocObject();
  *(&v151 + 1) = &type metadata for PommesSystemAppChecking;
  v152 = &protocol witness table for PommesSystemAppChecking;
  *(v35 + 56) = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
  outlined init with take of DomainWarmupHandling(&v150, v35 + 16);
  *(&v151 + 1) = v34;
  v152 = &protocol witness table for AppDataProvider;
  *&v150 = v35;
  v36 = objc_opt_self();
  v37 = [v36 sharedPreferences];
  outlined init with copy of AppDataProviding(&v150, &v147);
  type metadata accessor for AppInfoDataProvider();
  v38 = swift_allocObject();
  outlined init with take of DomainWarmupHandling(&v147, v38 + 16);
  *(v38 + 56) = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMd, &_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMR);
  swift_allocObject();
  v125 = specialized AnyDataProvider.init<A>(provider:)(v38);
  __swift_destroy_boxed_opaque_existential_1(&v150);
  v141 = type metadata accessor for AnalyticsComponentIdGenerator();
  v150 = 0u;
  v151 = 0u;
  v152 = 0;
  v39 = swift_allocObject();
  type metadata accessor for ProfileSliceResolutionRequestInstrumentationUtil();
  v40 = swift_allocObject();
  *(v40 + 16) = 0;
  *(v40 + 24) = v39;
  v138 = specialized static ProfileSliceResolvingDataProvider.make(mediaUserStateCenter:instrumentationUtil:muxContextManager:)(&v150, v40, 0);

  outlined destroy of MediaUserStateCenter?(&v150, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  v41 = swift_allocObject();
  *(&v151 + 1) = &type metadata for PommesSystemAppChecking;
  v152 = &protocol witness table for PommesSystemAppChecking;
  *(v41 + 56) = [objc_allocWithZone(MEMORY[0x277D23C38]) &selRef_statusType];
  outlined init with take of DomainWarmupHandling(&v150, v41 + 16);
  v42 = [v36 &off_2784DB1E0];
  v124 = _s21SiriInformationSearch34PreferredNavigationAppDataProviderC4make03appgH011preferencesAA03AnygH0CySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGAA0fG9Providing_p_So13AFPreferencesCtFZTf4enn_nAA0fgH0C_Tt1g5(v41, v42);

  v43 = swift_allocObject();
  *(&v151 + 1) = &type metadata for PommesSystemAppChecking;
  v152 = &protocol witness table for PommesSystemAppChecking;
  *(v43 + 56) = [objc_allocWithZone(MEMORY[0x277D23C38]) &selRef_statusType];
  outlined init with take of DomainWarmupHandling(&v150, v43 + 16);
  v152 = 0;
  v150 = 0u;
  v151 = 0u;
  v123 = _s21SiriInformationSearch0A22KitAppInfoDataProviderC4make03appgH0014satisfyingAppsgH0010foregroundeH00jc4ViewH0AA03AnygH0CySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGAA0eG9Providing_p_AA010SatisfyinglgH0_pSgAA010ForegroundeH0_pAA0ecnH0_pSgtFZTf4enenn_nAA0egH0C_AA012RunningBoardyeH0VTt3g5(v43, 0, 0, &v150);

  outlined destroy of MediaUserStateCenter?(&v150, &_s21SiriInformationSearch03AppC12ViewProvider_pSgMd, &_s21SiriInformationSearch03AppC12ViewProvider_pSgMR);
  v44 = type metadata accessor for MarketplaceInfoDataProvider();
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  v47 = swift_allocObject();
  v48 = OBJC_IVAR____TtC21SiriInformationSearch27MarketplaceInfoDataProvider_marketplaceInfo;
  v49 = type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo();
  (*(*(v49 - 8) + 56))(v47 + v48, 1, 1, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_C19_V2_MarketplaceInfoVGMd, &_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_C19_V2_MarketplaceInfoVGMR);
  swift_allocObject();
  v137 = specialized AnyDataProvider.init<A>(provider:)(v47);
  type metadata accessor for PairedDeviceDataProvider();
  v50 = swift_allocObject();
  *(v50 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI27Useragentpb_CompanionDeviceVGGMd, &_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI27Useragentpb_CompanionDeviceVGGMR);
  swift_allocObject();
  v142 = specialized AnyDataProvider.init<A>(provider:)(v50);
  v152 = 0;
  v150 = 0u;
  v151 = 0u;
  outlined init with copy of MediaUserStateCenter?(&v150, &v147, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMd, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMR);
  v51 = type metadata accessor for GMAvailabilityPolicyDataProvider();
  v52 = *(v51 + 48);
  v53 = *(v51 + 52);
  swift_allocObject();
  v54 = GMAvailabilityPolicyDataProvider.init(gmAvailability:)(&v147);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySbGMd, &_s21SiriInformationSearch15AnyDataProviderCySbGMR);
  swift_allocObject();
  v122[0] = specialized AnyDataProvider.init<A>(provider:)(v54);
  outlined destroy of MediaUserStateCenter?(&v150, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMd, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMR);
  v55 = type metadata accessor for CarPlaySessionDataProvider();
  v56 = objc_allocWithZone(v55);
  v57 = OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_carPlaySessionStatus;
  *&v56[OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_carPlaySessionStatus] = 0;
  v56[OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_sessionDidConnect] = 0;
  *&v56[v57] = 0;
  v146.receiver = v56;
  v146.super_class = v55;
  v58 = objc_msgSendSuper2(&v146, &selRef_statusType);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_a23_V2alpha_CarPlaySessionE0VGMd, &_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_a23_V2alpha_CarPlaySessionE0VGMR);
  swift_allocObject();
  v136 = specialized AnyDataProvider.init<A>(provider:)(v58);
  v134 = v36;
  v143 = [v36 &off_2784DB1E0];
  v122[1] = type metadata accessor for SiriEnvironment();
  v135 = static SiriEnvironment.default.getter();
  type metadata accessor for DataProviderManager();
  v59 = swift_allocObject();
  *(&v151 + 1) = &type metadata for PommesSystemAppChecking;
  v152 = &protocol witness table for PommesSystemAppChecking;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  static DispatchQoS.userInitiated.getter();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  v61 = v128;
  v60 = v129;
  v62 = v130;
  (*(v129 + 104))(v128, *MEMORY[0x277D851C8], v130);
  static OS_dispatch_queue.global(qos:)();
  (*(v60 + 8))(v61, v62);
  (*(v132 + 104))(v131, *MEMORY[0x277D85260], v133);
  v63 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v59 + 160) = 0u;
  *(v59 + 176) = 0;
  *(v59 + 144) = 0u;
  v132 = v59 + 144;
  v64 = v139;
  v65 = v140;
  *(v59 + 16) = v63;
  *(v59 + 24) = v65;
  v67 = v124;
  v66 = v125;
  *(v59 + 32) = v64;
  *(v59 + 40) = v66;
  v68 = v123;
  *(v59 + 48) = v67;
  *(v59 + 56) = v68;
  v69 = v137;
  *(v59 + 64) = v138;
  *(v59 + 72) = v69;
  *(v59 + 80) = v142;
  v70 = v135;
  *(v59 + 96) = v136;
  *(v59 + 104) = 0;
  v71 = v143;
  *(v59 + 112) = v70;
  *(v59 + 120) = v71;
  *(v59 + 128) = 0;
  *(v59 + 136) = 0;
  outlined init with copy of AppDataProviding(&v150, &v147);
  swift_beginAccess();

  v72 = v68;

  v133 = v143;
  outlined assign with take of MediaUserStateCenter?(&v147, v132, &_s21SiriInformationSearch17PommesAppChecking_pSgMd, &_s21SiriInformationSearch17PommesAppChecking_pSgMR);
  swift_endAccess();
  v143 = v59;
  *(v59 + 88) = v122[0];
  v73 = *(*v66 + 160);

  v73(1);

  v74 = *(*v67 + 160);

  v74(1);

  (*(*v72 + 160))(1);

  __swift_destroy_boxed_opaque_existential_1(&v150);
  static SiriEnvironment.default.getter();
  v75 = SiriEnvironment.networkAvailability.getter();

  v76 = type metadata accessor for AssistantLocationProvider();
  v77 = *(v76 + 48);
  v78 = *(v76 + 52);
  swift_allocObject();
  v142 = specialized AssistantLocationProvider.init(serviceHelper:)(0);
  static SiriEnvironment.default.getter();
  v139 = SiriEnvironment.networkAvailability.getter();

  v79 = swift_allocObject();
  type metadata accessor for PegasusInstrumentationUtil();
  v80 = swift_allocObject();
  *(v80 + 16) = 0;
  *(v80 + 24) = v79;
  v81 = [objc_opt_self() processInfo];
  LOBYTE(v64) = NSProcessInfo.isRunningUnitTests.getter();

  v140 = v75;
  if (v64)
  {
    v82 = &type metadata for EmptyReferenceResolver;
    v83 = lazy protocol witness table accessor for type EmptyReferenceResolver and conformance EmptyReferenceResolver();
  }

  else
  {
    v82 = type metadata accessor for ReferenceResolutionClient();
    *&v150 = ReferenceResolutionClient.__allocating_init()();
    v83 = MEMORY[0x277D5FDD8];
  }

  v84 = 0xEB00000000495255;
  *(&v151 + 1) = v82;
  v152 = v83;
  v85 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  type metadata accessor for PommesDialogStateManager();
  swift_allocObject();
  v86 = PommesDialogStateManager.init(suiteName:)(0xD000000000000010, 0x80000002234DA020);
  v87 = type metadata accessor for PegasusProxy(0);
  v88 = *(v87 + 48);
  v89 = *(v87 + 52);
  v90 = swift_allocObject();
  v148 = v76;
  v149 = &protocol witness table for AssistantLocationProvider;
  *&v147 = v142;
  v145[3] = &type metadata for PIMSEnablementProvider;
  v145[4] = &protocol witness table for PIMSEnablementProvider;
  v144[3] = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for CNContactStore, 0x277CBDAB8);
  v144[4] = &protocol witness table for CNContactStore;
  v144[0] = v85;
  *(v90 + 16) = 1;
  *(v90 + 144) = 0;
  *(v90 + 64) = 0;
  *(v90 + 72) = 0;
  v91 = v143;

  v92 = v85;
  v93 = closure #1 in variable initialization expression of PegasusProxy.requestCancellableQueue();
  v94 = MEMORY[0x277D84FA0];
  *(v90 + 152) = v93;
  *(v90 + 160) = v94;
  *(v90 + 168) = v94;
  *(v90 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_persistentPegasusConversationContext) = xmmword_2234CF930;
  v95 = OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_previousInteractionType;
  v96 = type metadata accessor for InteractionType();
  (*(*(v96 - 8) + 56))(v90 + v95, 1, 1, v96);
  type metadata accessor for PegasusProxyForAssistant();
  *(v90 + 80) = static PegasusProxyForAssistant.shared.getter();
  *(v90 + 88) = &protocol witness table for PegasusProxyForAssistant;
  outlined init with copy of AppDataProviding(&v147, v90 + 96);
  *(v90 + 136) = v139;
  outlined init with copy of AppDataProviding(v145, v90 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_pimsEnablementProvider);
  *(v90 + 176) = v80;
  *(v90 + 184) = v91;
  outlined init with copy of AppDataProviding(&v150, v90 + 24);
  outlined init with copy of AppDataProviding(v144, v90 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_contactStore);
  *(v90 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_dialogStateManager) = v86;
  if (!byte_2836954F8)
  {
    v99 = 0x80000002234D9320;
    v98 = 0xD000000000000013;
    v97 = 0x6E65657263536E6FLL;
    goto LABEL_8;
  }

  v97 = 0x6E65657263536E6FLL;
  v98 = 0x6E65657263536E6FLL;
  v99 = 0xEB00000000495255;
  if (byte_2836954F8 == 1)
  {
LABEL_8:
    type metadata accessor for DomainAffinityKVStoreManager();
    static DomainAffinityKVStoreManager.domainAffinityKVStore(name:)(v98, v99);
  }

  if (byte_2836954F9 != 2)
  {
    v100 = 0x6E65657263536E6FLL;
    v101 = 0xEB00000000495255;
    if (byte_2836954F9 != 1)
    {
      v100 = 0xD000000000000013;
      v101 = 0x80000002234D9320;
    }

    type metadata accessor for DomainAffinityKVStoreManager();
    static DomainAffinityKVStoreManager.domainAffinityKVStore(name:)(v100, v101);
  }

  if (byte_2836954FA != 2)
  {
    if (byte_2836954FA != 1)
    {
      v97 = 0xD000000000000013;
      v84 = 0x80000002234D9320;
    }

    type metadata accessor for DomainAffinityKVStoreManager();
    static DomainAffinityKVStoreManager.domainAffinityKVStore(name:)(v97, v84);
  }

  Apple_Parsec_Search_SearchConversationContext.init()();

  __swift_destroy_boxed_opaque_existential_1(&v150);
  __swift_destroy_boxed_opaque_existential_1(v144);
  __swift_destroy_boxed_opaque_existential_1(v145);
  __swift_destroy_boxed_opaque_existential_1(&v147);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SiriInformationSearch16LocalDomainTypesO_AC0ghF0_ptGMd, &_ss23_ContiguousArrayStorageCy21SiriInformationSearch16LocalDomainTypesO_AC0ghF0_ptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2234CF920;
  *(inited + 32) = 1;
  v103 = [objc_opt_self() indexMatcher];
  v104 = type metadata accessor for MusicDomain();
  v105 = swift_allocObject();
  v106 = specialized MusicDomain.init(spanMatcher:)(v103, v105);
  *(inited + 64) = v104;
  *(inited + 72) = &protocol witness table for MusicDomain;
  *(inited + 40) = v106;
  v142 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC21SiriInformationSearch16LocalDomainTypesO_AC0fgE0_pTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of MediaUserStateCenter?(inited + 32, &_s21SiriInformationSearch16LocalDomainTypesO_AA0deC0_ptMd, &_s21SiriInformationSearch16LocalDomainTypesO_AA0deC0_ptMR);
  v107 = specialized static PommesSearch.defaultPreflightClients(dataProviderManager:networkAvailabilityProvider:)(v143, v140);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v108 = static PegasusCacheManager.shared;

  v109 = default argument 0 of DomainWarmup.init(warmupClients:)();
  type metadata accessor for DomainWarmup();
  swift_allocObject();
  v139 = DomainWarmup.init(warmupClients:)(v109);
  v110 = [objc_allocWithZone(MEMORY[0x277CEF318]) init];
  v111 = AFSupportsMultiUser();
  type metadata accessor for PommesUserProfile();
  v112 = swift_allocObject();
  type metadata accessor for PommesMUXContextManager();
  swift_allocObject();
  v113 = PommesMUXContextManager.init(multiUserConnection:isMultiUserSupported:pommesUserProfile:)(v110, v111, v112);
  type metadata accessor for PommesSearch();
  v114 = swift_allocObject();
  v115 = swift_allocObject();
  type metadata accessor for PommesRequestInstrumentationUtil();
  v116 = swift_allocObject();
  *(v116 + 16) = 0;
  *(v116 + 24) = v115;
  *(v114 + 64) = v116;
  v117 = [v134 sharedPreferences];
  v118 = type metadata accessor for PommesServerFallbackPreferences();
  v119 = swift_allocObject();
  *(v119 + 16) = v117;
  *(v114 + 96) = v118;
  *(v114 + 104) = &protocol witness table for PommesServerFallbackPreferences;

  *(v114 + 72) = v119;
  *(v114 + 112) = 0;
  *(v114 + 120) = MEMORY[0x277D84FA0];
  *(v114 + 16) = v107;
  *(v114 + 24) = v90;
  *(v114 + 32) = v142;
  *(v114 + 40) = v108;
  v120 = v139;
  *(v114 + 48) = v113;
  *(v114 + 56) = v120;
  return v114;
}

uint64_t PommesSearch.__allocating_init(remoteSearchClient:domainSearchClients:preflightClients:pegasusCacheManager:domainWarmup:muxContextManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  type metadata accessor for AnalyticsComponentIdGenerator();
  v13 = swift_allocObject();
  type metadata accessor for PommesRequestInstrumentationUtil();
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = v13;
  *(v12 + 64) = v14;
  v15 = [objc_opt_self() sharedPreferences];
  v16 = type metadata accessor for PommesServerFallbackPreferences();
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v12 + 96) = v16;
  *(v12 + 104) = &protocol witness table for PommesServerFallbackPreferences;
  *(v12 + 72) = v17;
  *(v12 + 112) = 0;
  *(v12 + 120) = MEMORY[0x277D84FA0];
  *(v12 + 16) = a3;
  *(v12 + 24) = a1;
  *(v12 + 32) = a2;
  *(v12 + 40) = a4;
  *(v12 + 48) = a6;
  *(v12 + 56) = a5;
  return v12;
}

uint64_t PommesSearch.__allocating_init(remoteSearchClient:domainSearchClients:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = specialized PommesSearch.init(remoteSearchClient:domainSearchClients:)(a1, a2);

  return v4;
}

uint64_t PommesSearch.init(remoteSearchClient:domainSearchClients:)(uint64_t a1, uint64_t a2)
{
  v2 = specialized PommesSearch.init(remoteSearchClient:domainSearchClients:)(a1, a2);

  return v2;
}

uint64_t PommesSearch.init(remoteSearchClient:domainSearchClients:preflightClients:pegasusCacheManager:domainWarmup:muxContextManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for AnalyticsComponentIdGenerator();
  v13 = swift_allocObject();
  type metadata accessor for PommesRequestInstrumentationUtil();
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = v13;
  *(v6 + 64) = v14;
  v15 = [objc_opt_self() sharedPreferences];
  v16 = type metadata accessor for PommesServerFallbackPreferences();
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v6 + 96) = v16;
  *(v6 + 104) = &protocol witness table for PommesServerFallbackPreferences;
  *(v6 + 72) = v17;
  *(v6 + 112) = 0;
  *(v6 + 120) = MEMORY[0x277D84FA0];
  *(v6 + 16) = a3;
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  *(v6 + 40) = a4;
  *(v6 + 48) = a6;
  *(v6 + 56) = a5;
  return v6;
}

uint64_t PommesSearch.shouldHandleRequest(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for PommesSearchRequest(0);
  v6 = *(*(v5 - 1) + 64);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v101[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v101[-1] - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v19 = &v101[-1] - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8, v22);
  v24 = &v101[-1] - v23;
  v25 = type metadata accessor for PommesSearchRequest.ParseState(0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25, v27);
  v29 = &v101[-1] - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PommesSearchRequest.ParseState(a1, v29, type metadata accessor for PommesSearchRequest.ParseState);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v30 = *(v29 + 1);

    v31 = *(v29 + 2);

    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMd, &_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMR);
    v33 = *(v32 + 64);
    v34 = *&v29[*(v32 + 80) + 8];

    outlined destroy of MediaUserStateCenter?(&v29[v33], &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Logger.pommes);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_2232BB000, v36, v37, "Found PSC parse with high confidence from SARDRunPommesRequest. Accepting search for POMMES.", v38, 2u);
      MEMORY[0x223DE0F80](v38, -1, -1);
    }

    v39 = MEMORY[0x277D56650];
LABEL_14:
    v46 = *v39;
    v47 = type metadata accessor for PommesSearchReason();
    v48 = *(v47 - 8);
    (*(v48 + 104))(a2, v46, v47);
    return (*(v48 + 56))(a2, 0, 1, v47);
  }

  v40 = outlined destroy of PommesSearchRequest.ParseState(v29, type metadata accessor for PommesSearchRequest.ParseState);
  if (*(a1 + v5[20]) == 1)
  {
    v41 = *(PommesSearchRequest.userParses.getter() + 16);

    if (v41)
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      __swift_project_value_buffer(v42, static Logger.pommes);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_2232BB000, v43, v44, "Search request specified fallback and had any parse. Handle it in POMMES.", v45, 2u);
        MEMORY[0x223DE0F80](v45, -1, -1);
      }

      v39 = MEMORY[0x277D56668];
      goto LABEL_14;
    }
  }

  v100 = 0xD000000000000012;
  (*(*v2 + 160))(v101, v40);
  v51 = v102;
  v50 = v103;
  __swift_project_boxed_opaque_existential_1(v101, v102);
  v52 = (*(v50 + 8))(0, v51, v50);
  __swift_destroy_boxed_opaque_existential_1(v101);
  if (v52)
  {
    v53 = *(PommesSearchRequest.otherSalientParses()() + 16);

    if (!v53)
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v71 = type metadata accessor for Logger();
      __swift_project_value_buffer(v71, static Logger.pommes);
      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&dword_2232BB000, v72, v73, "NL server fallback is disabled and there are no other salient parses. POMMES may act as fallback.", v74, 2u);
        MEMORY[0x223DE0F80](v74, -1, -1);
      }

      v75 = *MEMORY[0x277D56660];
      v76 = type metadata accessor for PommesSearchReason();
      v77 = *(v76 - 8);
      (*(v77 + 104))(v24, v75, v76);
      (*(v77 + 56))(v24, 0, 1, v76);
      v64 = " gestures based search.";
      v65 = 0xD000000000000028;
      goto LABEL_37;
    }
  }

  if (*(a1 + v5[17]) == 1)
  {
    outlined init with copy of MediaUserStateCenter?(a1 + v5[10], v19, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    v54 = type metadata accessor for PommesContext();
    v55 = *(v54 - 8);
    if ((*(v55 + 48))(v19, 1, v54) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v19, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
      goto LABEL_27;
    }

    v56 = PommesContext.isConfirmation.getter();
    (*(v55 + 8))(v19, v54);
    if ((v56 & 1) == 0)
    {
      goto LABEL_27;
    }

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    __swift_project_value_buffer(v57, static Logger.pommes);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_2232BB000, v58, v59, "POMMES may act as fallback for the head gesture initiated search.", v60, 2u);
      MEMORY[0x223DE0F80](v60, -1, -1);
    }

    v61 = *MEMORY[0x277D56670];
    v62 = type metadata accessor for PommesSearchReason();
    v63 = *(v62 - 8);
    (*(v63 + 104))(v24, v61, v62);
    (*(v63 + 56))(v24, 0, 1, v62);
    v64 = "Rejecting request.";
    v65 = 0xD000000000000047;
LABEL_37:
    v100 = v65;
    goto LABEL_38;
  }

LABEL_27:
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v66 = type metadata accessor for Logger();
  __swift_project_value_buffer(v66, static Logger.pommes);
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    *v69 = 0;
    _os_log_impl(&dword_2232BB000, v67, v68, "NL server fallback is enabled, or there are other salient parses available. POMMES will not act as fallback.", v69, 2u);
    MEMORY[0x223DE0F80](v69, -1, -1);
  }

  v70 = type metadata accessor for PommesSearchReason();
  (*(*(v70 - 8) + 56))(v24, 1, 1, v70);
  v64 = "sponse@NSError>24";
LABEL_38:
  outlined init with copy of MediaUserStateCenter?(a1 + v5[11], v14, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v78 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v79 = (*(*(v78 - 8) + 48))(v14, 1, v78);
  outlined destroy of MediaUserStateCenter?(v14, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  if (v79 == 1)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v80 = type metadata accessor for Logger();
    __swift_project_value_buffer(v80, static Logger.pommes);

    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v81, v82))
    {

      goto LABEL_50;
    }

    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v101[0] = v84;
    *v83 = 136446210;
    v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v64 | 0x8000000000000000, v101);

    *(v83 + 4) = v85;
    _os_log_impl(&dword_2232BB000, v81, v82, "No delegatedUDA from PSC parsers. %{public}s", v83, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v84);
    MEMORY[0x223DE0F80](v84, -1, -1);
    v86 = v83;
  }

  else
  {
    v87 = *(a1 + v5[12]);
    specialized static PommesSearchRequest.pommesDUDAThreshold.getter();
    if (v88 <= v87)
    {

      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v95 = type metadata accessor for Logger();
      __swift_project_value_buffer(v95, static Logger.pommes);
      v96 = Logger.logObject.getter();
      v97 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        *v98 = 0;
        _os_log_impl(&dword_2232BB000, v96, v97, "Found PSC parse with high confidence. Accepting search for POMMES.", v98, 2u);
        MEMORY[0x223DE0F80](v98, -1, -1);
      }

      outlined destroy of MediaUserStateCenter?(v24, &_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
      v99 = *MEMORY[0x277D56658];
      v47 = type metadata accessor for PommesSearchReason();
      v48 = *(v47 - 8);
      (*(v48 + 104))(a2, v99, v47);
      return (*(v48 + 56))(a2, 0, 1, v47);
    }

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v89 = type metadata accessor for Logger();
    __swift_project_value_buffer(v89, static Logger.pommes);
    outlined init with copy of PommesSearchRequest.ParseState(a1, v9, type metadata accessor for PommesSearchRequest);

    v81 = Logger.logObject.getter();
    v90 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v81, v90))
    {

      outlined destroy of PommesSearchRequest.ParseState(v9, type metadata accessor for PommesSearchRequest);
      return outlined init with take of PommesSearchReason?(v24, a2, &_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
    }

    v91 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v101[0] = v92;
    *v91 = 134218242;
    v93 = *&v9[v5[12]];
    outlined destroy of PommesSearchRequest.ParseState(v9, type metadata accessor for PommesSearchRequest);
    *(v91 + 4) = v93;
    *(v91 + 12) = 2082;
    v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v64 | 0x8000000000000000, v101);

    *(v91 + 14) = v94;
    _os_log_impl(&dword_2232BB000, v81, v90, "Low PSC score: %f. %{public}s", v91, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v92);
    MEMORY[0x223DE0F80](v92, -1, -1);
    v86 = v91;
  }

  MEMORY[0x223DE0F80](v86, -1, -1);
LABEL_50:

  return outlined init with take of PommesSearchReason?(v24, a2, &_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
}

uint64_t PommesSearch.search(pommesSearchRequest:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC9EagerInfoVSgMd, &_s21SiriInformationSearch06PommesC9EagerInfoVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v13 - v10;
  (*(*v3 + 272))(a1, a2, a3);
  return outlined destroy of MediaUserStateCenter?(v11, &_s21SiriInformationSearch06PommesC9EagerInfoVSgMd, &_s21SiriInformationSearch06PommesC9EagerInfoVSgMR);
}

uint64_t PommesSearch.search(pommesSearchRequest:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v5 = v4;
  v206 = a3;
  v205 = a2;
  v207 = a4;
  v186 = type metadata accessor for DispatchWorkItemFlags();
  v185 = *(v186 - 8);
  v7 = *(v185 + 64);
  MEMORY[0x28223BE20](v186, v8);
  v182 = v174 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = type metadata accessor for DispatchQoS();
  v183 = *(v184 - 8);
  v10 = *(v183 + 64);
  MEMORY[0x28223BE20](v184, v11);
  v181 = v174 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = type metadata accessor for DispatchQoS.QoSClass();
  v178 = *(v179 - 8);
  v13 = *(v178 + 64);
  MEMORY[0x28223BE20](v179, v14);
  v177 = v174 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = type metadata accessor for PommesSearchReason();
  v208 = *(v209 - 8);
  v16 = *(v208 + 64);
  MEMORY[0x28223BE20](v209, v17);
  v180 = v174 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SignpostToken();
  v201 = *(v19 - 8);
  v20 = *(v201 + 64);
  v22 = MEMORY[0x28223BE20](v19 - 8, v21);
  v218 = v174 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = v23;
  MEMORY[0x28223BE20](v22, v24);
  v222 = v174 - v25;
  v194 = type metadata accessor for PerformanceUtil.Ticket(0);
  v199 = *(v194 - 8);
  v26 = *(v199 + 64);
  v28 = MEMORY[0x28223BE20](v194, v27);
  v203 = v174 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = v29;
  MEMORY[0x28223BE20](v28, v30);
  v221 = v174 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
  v197 = *(v32 - 8);
  v33 = *(v197 + 64);
  v35 = MEMORY[0x28223BE20](v32 - 8, v34);
  v204 = v174 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v35, v37);
  v217 = v174 - v39;
  v198 = v40;
  MEMORY[0x28223BE20](v38, v41);
  v223 = v174 - v42;
  v43 = type metadata accessor for PommesSearchRequest(0);
  v210 = v43;
  v195 = *(v43 - 8);
  v44 = *(v195 + 64);
  v46 = MEMORY[0x28223BE20](v43, v45);
  v216 = v174 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = v47;
  MEMORY[0x28223BE20](v46, v48);
  v190 = v174 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v51 = *(*(v50 - 8) + 64);
  v53 = MEMORY[0x28223BE20](v50 - 8, v52);
  v176 = v174 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53, v55);
  v188 = v174 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v58 = *(*(v57 - 8) + 64);
  v60 = MEMORY[0x28223BE20](v57 - 8, v59);
  v187 = v174 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v60, v62);
  v64 = v174 - v63;
  v65 = type metadata accessor for PommesCandidateId();
  v66 = *(v65 - 8);
  v67 = v66[8];
  v69 = MEMORY[0x28223BE20](v65, v68);
  v215 = v174 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = v70;
  MEMORY[0x28223BE20](v69, v71);
  v73 = (v174 - v72);
  v74 = *(v43 + 32);
  v212 = a1;
  v75 = (a1 + v74);
  v77 = *v75;
  v76 = v75[1];

  PommesSearchRequest.pommesCandidateId.getter(v73);
  v219 = v5;
  v78 = *(v5 + 64);
  v79 = v66[2];
  v79(v64, v73, v65);
  v211 = v66;
  v80 = v66[7];
  v80(v64, 0, 1, v65);
  v81 = *(*v78 + 128);
  v214 = v77;
  v82 = v77;
  v83 = v210;
  v213 = v76;
  v189 = v78;
  v81(v82, v76, v64);
  outlined destroy of MediaUserStateCenter?(v64, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v84 = v187;
  v220 = v73;
  v85 = v73;
  v86 = v212;
  v192 = v66 + 2;
  v191 = v79;
  v79(v187, v85, v65);
  v87 = v84;
  v224 = v65;
  v80(v84, 0, 1, v65);
  v88 = v188;
  v89 = *(v86 + *(v83 + 48));
  v175 = *(v83 + 44);
  outlined init with copy of MediaUserStateCenter?(v86 + v175, v188, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v90 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v91 = *(v90 - 8);
  v92 = *(v91 + 48);
  v174[1] = v91 + 48;
  v174[0] = v92;
  if (v92(v88, 1, v90) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v88, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    v93 = 0;
    v94 = 0;
  }

  else
  {
    v93 = Siri_Nlu_External_DelegatedUserDialogAct.externalParserID.getter();
    v94 = v95;
    (*(v91 + 8))(v88, v90);
  }

  v188 = v90;
  (*(*v189 + 160))(v214, v213, v87, v93, v94, v89);

  outlined destroy of MediaUserStateCenter?(v87, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v96 = v222;
  v97 = v220;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v98 = type metadata accessor for Logger();
  __swift_project_value_buffer(v98, static Logger.pommes);
  v99 = v190;
  outlined init with copy of PommesSearchRequest.ParseState(v86, v190, type metadata accessor for PommesSearchRequest);
  v100 = Logger.logObject.getter();
  v101 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v100, v101))
  {
    v102 = swift_slowAlloc();
    *v102 = 134217984;
    v103 = *(v99 + *(v210 + 48));
    outlined destroy of PommesSearchRequest.ParseState(v99, type metadata accessor for PommesSearchRequest);
    *(v102 + 4) = v103;
    _os_log_impl(&dword_2232BB000, v100, v101, "Checking if PSC score is above threshold: %f", v102, 0xCu);
    MEMORY[0x223DE0F80](v102, -1, -1);
  }

  else
  {

    outlined destroy of PommesSearchRequest.ParseState(v99, type metadata accessor for PommesSearchRequest);
  }

  v104 = v221;
  v105 = v223;
  v106 = v224;
  (*(*v219 + 256))(v86);
  Date.init()();
  v107 = v194;
  v108 = v104 + *(v194 + 20);
  *v108 = "SiriInformationSearch/PommesSearch.swift";
  *(v108 + 8) = 40;
  *(v108 + 16) = 2;
  *(v104 + v107[6]) = 257;
  v109 = v104 + v107[7];
  *v109 = "search(pommesSearchRequest:completion:)";
  *(v109 + 8) = 39;
  *(v109 + 16) = 2;
  v110 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD000000000000017);
  v111 = (v104 + v107[8]);
  *v111 = v110;
  v111[1] = v112;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v113 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v113, static Signposter.pommes);
  OSSignposter.begin(name:context:)("search", 6, 2u, 0, v96);
  v114 = v203;
  outlined init with copy of PommesSearchRequest.ParseState(v104, v203, type metadata accessor for PerformanceUtil.Ticket);
  outlined init with copy of PommesSearchRequest.ParseState(v96, v218, type metadata accessor for SignpostToken);
  outlined init with copy of MediaUserStateCenter?(v105, v217, &_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
  v191(v215, v97, v106);
  outlined init with copy of PommesSearchRequest.ParseState(v86, v216, type metadata accessor for PommesSearchRequest);
  v115 = (*(v199 + 80) + 16) & ~*(v199 + 80);
  v116 = (v200 + *(v201 + 80) + v115) & ~*(v201 + 80);
  v117 = (v202 + *(v197 + 80) + v116) & ~*(v197 + 80);
  v118 = (v198 + v117 + 7) & 0xFFFFFFFFFFFFFFF8;
  v119 = (v118 + 23) & 0xFFFFFFFFFFFFFFF8;
  v120 = (v119 + 15) & 0xFFFFFFFFFFFFFFF8;
  v121 = v211;
  v122 = (*(v211 + 80) + v120 + 16) & ~*(v211 + 80);
  v123 = (v193 + *(v195 + 80) + v122) & ~*(v195 + 80);
  v124 = swift_allocObject();
  v125 = v124 + v115;
  v126 = v223;
  v127 = v114;
  v128 = v124;
  outlined init with take of PerformanceUtil.Ticket(v127, v125, type metadata accessor for PerformanceUtil.Ticket);
  outlined init with take of PerformanceUtil.Ticket(v218, v128 + v116, type metadata accessor for SignpostToken);
  outlined init with take of PommesSearchReason?(v217, v128 + v117, &_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
  v129 = (v128 + v118);
  v130 = v121;
  v131 = v206;
  *v129 = v205;
  v129[1] = v131;
  v132 = v219;
  *(v128 + v119) = v219;
  v133 = (v128 + v120);
  v134 = v130;
  v135 = v213;
  *v133 = v214;
  v133[1] = v135;
  (v130[4])(v128 + v122, v215, v224);
  outlined init with take of PerformanceUtil.Ticket(v216, v128 + v123, type metadata accessor for PommesSearchRequest);
  v136 = v204;
  outlined init with copy of MediaUserStateCenter?(v126, v204, &_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
  v137 = v208;
  v138 = v209;
  if ((*(v208 + 48))(v136, 1, v209) == 1)
  {

    outlined destroy of MediaUserStateCenter?(v136, &_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
    v139 = v128;
    v140 = v176;
    outlined init with copy of MediaUserStateCenter?(v212 + v175, v176, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    if ((v174[0])(v140, 1, v188) == 1)
    {
      v141 = 65;
    }

    else
    {
      v141 = 2;
    }

    outlined destroy of MediaUserStateCenter?(v140, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v142 = v178;
    v143 = v177;
    v144 = v179;
    (*(v178 + 104))(v177, *MEMORY[0x277D851C8], v179);
    v145 = static OS_dispatch_queue.global(qos:)();
    (*(v142 + 8))(v143, v144);
    v146 = swift_allocObject();
    *(v146 + 16) = partial apply for closure #1 in PommesSearch.search(pommesSearchRequest:completion:);
    *(v146 + 24) = v139;
    *(v146 + 32) = v141;
    v230 = partial apply for closure #2 in PommesSearch.search(pommesSearchRequest:completion:);
    v231 = v146;
    aBlock = MEMORY[0x277D85DD0];
    v227 = 1107296256;
    v228 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v229 = &block_descriptor;
    v147 = _Block_copy(&aBlock);

    v148 = v181;
    static DispatchQoS.unspecified.getter();
    v225 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v149 = v182;
    v150 = v186;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x223DDFBF0](0, v148, v149, v147);
    v151 = 1;
    _Block_release(v147);

    (*(v185 + 8))(v149, v150);
    (*(v183 + 8))(v148, v184);
    outlined destroy of PommesSearchRequest.ParseState(v222, type metadata accessor for SignpostToken);
    outlined destroy of PommesSearchRequest.ParseState(v221, type metadata accessor for PerformanceUtil.Ticket);
    outlined destroy of MediaUserStateCenter?(v223, &_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
    (v134[1])(v220, v224);
  }

  else
  {
    v152 = *(v137 + 32);
    v153 = v180;
    v152(v180, v136, v138);
    v154 = *(*v132 + 288);

    v155 = v212;
    v156 = v154(v212);
    if (v157 == -1)
    {
      v173 = (*(*v132 + 296))(v155);
      (*(*v173 + 208))(partial apply for closure #1 in PommesSearch.search(pommesSearchRequest:completion:), v128);

      outlined destroy of PommesSearchRequest.ParseState(v222, type metadata accessor for SignpostToken);
      outlined destroy of PommesSearchRequest.ParseState(v221, type metadata accessor for PerformanceUtil.Ticket);
      outlined destroy of MediaUserStateCenter?(v126, &_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
      (v211[1])(v220, v224);
      v170 = v207;
      v152(v207, v153, v138);
      v151 = 0;
      goto LABEL_19;
    }

    v158 = v157;
    v159 = v156;
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v160 = v178;
    v161 = v177;
    v162 = v179;
    (*(v178 + 104))(v177, *MEMORY[0x277D851C8], v179);
    v219 = static OS_dispatch_queue.global(qos:)();
    (*(v160 + 8))(v161, v162);
    v163 = swift_allocObject();
    *(v163 + 16) = partial apply for closure #1 in PommesSearch.search(pommesSearchRequest:completion:);
    *(v163 + 24) = v128;
    v218 = v159;
    *(v163 + 32) = v159;
    *(v163 + 40) = v158 & 1;
    v230 = partial apply for closure #3 in PommesSearch.search(pommesSearchRequest:completion:);
    v231 = v163;
    aBlock = MEMORY[0x277D85DD0];
    v227 = 1107296256;
    v228 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v229 = &block_descriptor_10;
    v164 = _Block_copy(&aBlock);

    outlined copy of Result<PommesResponse, Error>?(v159, v158);
    v165 = v181;
    static DispatchQoS.unspecified.getter();
    v225 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    v166 = v211;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v167 = v182;
    v168 = v186;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v169 = v219;
    MEMORY[0x223DDFBF0](0, v165, v167, v164);
    _Block_release(v164);

    outlined consume of Result<PommesResponse, Error>?(v218, v158);

    (*(v185 + 8))(v167, v168);
    (*(v183 + 8))(v165, v184);
    (*(v208 + 8))(v180, v209);
    outlined destroy of PommesSearchRequest.ParseState(v222, type metadata accessor for SignpostToken);
    outlined destroy of PommesSearchRequest.ParseState(v221, type metadata accessor for PerformanceUtil.Ticket);
    outlined destroy of MediaUserStateCenter?(v223, &_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
    (v166[1])(v220, v224);

    v151 = 1;
  }

  v170 = v207;
LABEL_19:
  v171 = type metadata accessor for PommesSearchEagerInfo(0);
  return (*(*(v171 - 8) + 56))(v170, v151, 1, v171);
}

void closure #1 in PommesSearch.search(pommesSearchRequest:completion:)(char *a1, char a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(char *, uint64_t, uint64_t), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v72 = a6;
  v73 = a8;
  v71 = a7;
  v64 = a4;
  v65 = a5;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v74 = &v63 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
  v20 = *(*(v19 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v19 - 8, v21);
  v24 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v63 - v26;
  v28 = type metadata accessor for PommesSearchReason();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v32 = MEMORY[0x28223BE20](v28, v31);
  v34 = &v63 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v35);
  v37 = &v63 - v36;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v68 = a10;
  v69 = a11;
  v67 = a9;
  v38 = *(*static PerformanceUtil.shared + 184);
  v70 = static PerformanceUtil.shared;
  v38(a3, 0);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v66 = a12;
  v39 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v39, static Signposter.pommes);
  OSSignposter.end(token:message:)(v64, 0, 0xE000000000000000);
  v40 = (v29 + 48);
  v63 = a1;
  if (a2)
  {
    outlined init with copy of MediaUserStateCenter?(v65, v24, &_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
    v41 = *v40;
    if ((*v40)(v24, 1, v28) == 1)
    {
      (*(v29 + 104))(v34, *MEMORY[0x277D56670], v28);
      v42 = v41(v24, 1, v28);
      v43 = a1;
      if (v42 != 1)
      {
        outlined destroy of MediaUserStateCenter?(v24, &_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
      }
    }

    else
    {
      (*(v29 + 32))(v34, v24, v28);
      v47 = a1;
    }

    v48 = type metadata accessor for PommesSearchError(0);
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type PommesSearchError and conformance PommesSearchError, type metadata accessor for PommesSearchError);
    v49 = swift_allocError();
    *v50 = a1;
    (*(v29 + 32))(v50 + *(v48 + 20), v34, v28);
    v51 = v49;
  }

  else
  {
    outlined init with copy of MediaUserStateCenter?(v65, v27, &_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
    v44 = *v40;
    if ((*v40)(v27, 1, v28) == 1)
    {
      (*(v29 + 104))(v37, *MEMORY[0x277D56670], v28);
      v45 = v44(v27, 1, v28);
      v46 = a1;
      if (v45 != 1)
      {
        outlined destroy of MediaUserStateCenter?(v27, &_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
      }
    }

    else
    {
      (*(v29 + 32))(v37, v27, v28);
      v52 = a1;
    }

    dispatch thunk of PommesResponse.setSearchReason(_:)();
    (*(v29 + 8))(v37, v28);
    v53 = a1;
    v49 = a1;
  }

  (v72)(v49, a2 & 1);
  v54 = type metadata accessor for PommesCandidateId();
  v55 = *(v54 - 8);
  v72 = *(v55 + 16);
  v56 = v74;
  v57 = v69;
  v72(v74, v69, v54);
  v58 = *(v55 + 56);
  v58(v56, 0, 1, v54);
  v59 = *(*v73 + 360);
  v65 = v49;
  v59(v67, v68, v56, v49, a2 & 1);
  outlined consume of Result<PommesResponse, Error>(v49);
  outlined destroy of MediaUserStateCenter?(v56, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v60 = (v66 + *(type metadata accessor for PommesSearchRequest(0) + 32));
  v61 = *v60;
  v62 = v60[1];
  v72(v56, v57, v54);
  v58(v56, 0, 1, v54);
  (*(*v70 + 240))(v61, v62, v56);
  outlined destroy of MediaUserStateCenter?(v56, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  specialized PommesSearch.runGeoPersonalizationShadowLogging(result:)(v63, a2 & 1);
  outlined consume of Result<PommesResponse, Error>(v65);
}

void closure #2 in PommesSearch.search(pommesSearchRequest:completion:)(void (*a1)(void *, uint64_t), uint64_t a2, char a3)
{
  lazy protocol witness table accessor for type PommesSearchRequestProcessorError and conformance PommesSearchRequestProcessorError();
  v5 = swift_allocError();
  *v6 = a3;
  a1(v5, 1);
}

uint64_t PommesSearch.shouldCheckPreflight(preflight:for:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of AppDataProviding(a1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC17PreflightHandling_pMd, &_s21SiriInformationSearch06PommesC17PreflightHandling_pMR);
  type metadata accessor for ClassicFollowupPreflightClient();
  if (swift_dynamicCast() & 1) != 0 && (v5 = , (*(*v2 + 160))(v19, v5), v6 = v20, v7 = v21, __swift_project_boxed_opaque_existential_1(v19, v20), v8 = (*(v7 + 8))(0, v6, v7), __swift_destroy_boxed_opaque_existential_1(v19), (v8))
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.pommes);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2232BB000, v10, v11, "NLv3 deprecation enabled, skipping ClassicFollowupPreflightClient", v12, 2u);
      MEMORY[0x223DE0F80](v12, -1, -1);
    }

    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  outlined init with copy of AppDataProviding(a1, v19);
  type metadata accessor for WholeHomeAudioPreflightClient();
  if (swift_dynamicCast())
  {

    if (*(a2 + *(type metadata accessor for PommesSearchRequest(0) + 80)))
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, static Logger.pommes);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_2232BB000, v15, v16, "Handling fallback request, skipping WholeHomeAudioPreflightClient", v17, 2u);
        MEMORY[0x223DE0F80](v17, -1, -1);
      }

      return 0;
    }
  }

  return v13;
}

void *PommesSearch.performPreflightChecks(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SignpostToken();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for pommes != -1)
  {
    goto LABEL_25;
  }

LABEL_2:
  v9 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v9, static Signposter.pommes);
  OSSignposter.begin(name:context:)("search.preflight", 16, 2u, 0, v8);
  v10 = *(v2 + 16);
  v11 = *(v10 + 16);
  if (!v11)
  {
    goto LABEL_22;
  }

  v12 = 0;
  v13 = v10 + 32;
  while (1)
  {
    if (v12 >= *(v10 + 16))
    {
      __break(1u);
LABEL_25:
      swift_once();
      goto LABEL_2;
    }

    outlined init with copy of AppDataProviding(v13, v52);
    if (PommesSearch.shouldCheckPreflight(preflight:for:)(v52, a1))
    {
      v14 = v53;
      v15 = v54;
      __swift_project_boxed_opaque_existential_1(v52, v53);
      v16 = PommesSearchPreflightHandling.handleAndLog(pommesSearchRequest:)(a1, v14, v15);
      if (v16 != 1)
      {
        break;
      }
    }

    ++v12;
    __swift_destroy_boxed_opaque_existential_1(v52);
    v13 += 40;
    if (v11 == v12)
    {
      goto LABEL_22;
    }
  }

  v18 = v17;
  v19 = v16;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  v21 = __swift_project_value_buffer(v20, static Logger.pommes);
  outlined init with copy of AppDataProviding(v52, v51);
  v22 = v19;
  v23 = v18;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();

  if (!os_log_type_enabled(v24, v25))
  {

    __swift_destroy_boxed_opaque_existential_1(v51);
    if (!v19)
    {
      goto LABEL_17;
    }

LABEL_14:
    v38 = v22;
    outlined consume of PommesSearchPreflightResult(v19, v18);
    __swift_destroy_boxed_opaque_existential_1(v52);
    goto LABEL_23;
  }

  v48 = v21;
  v26 = swift_slowAlloc();
  v46 = swift_slowAlloc();
  v50 = v46;
  *v26 = 136315650;
  outlined init with copy of AppDataProviding(v51, &v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC17PreflightHandling_pMd, &_s21SiriInformationSearch06PommesC17PreflightHandling_pMR);
  v27 = String.init<A>(describing:)();
  v29 = v28;
  __swift_destroy_boxed_opaque_existential_1(v51);
  v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v50);

  *(v26 + 4) = v30;
  *(v26 + 12) = 2080;
  v49 = v19;
  v47 = v22;
  v31 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch14PommesResponseCSgMd, &_s21SiriInformationSearch14PommesResponseCSgMR);
  v32 = String.init<A>(describing:)();
  v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v50);

  *(v26 + 14) = v34;
  *(v26 + 22) = 2080;
  if (v18)
  {
    swift_getErrorValue();
    v35 = Error.localizedDescription.getter();
    v37 = v36;
  }

  else
  {
    v37 = 0xE500000000000000;
    v35 = 0x3E6C696E3CLL;
  }

  v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v50);

  *(v26 + 24) = v39;
  _os_log_impl(&dword_2232BB000, v24, v25, "Preflight client %s generated response: %s error: %s", v26, 0x20u);
  v40 = v46;
  swift_arrayDestroy();
  MEMORY[0x223DE0F80](v40, -1, -1);
  MEMORY[0x223DE0F80](v26, -1, -1);

  v22 = v47;
  if (v19)
  {
    goto LABEL_14;
  }

LABEL_17:
  if (!v18)
  {
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      MEMORY[0x223DE0F80](v44, -1, -1);
    }

    outlined consume of PommesSearchPreflightResult(0, 0);
    __swift_destroy_boxed_opaque_existential_1(v52);
LABEL_22:
    v19 = 0;
    goto LABEL_23;
  }

  v19 = v18;
  v41 = v18;
  outlined consume of PommesSearchPreflightResult(0, v18);
  __swift_destroy_boxed_opaque_existential_1(v52);
LABEL_23:
  OSSignposter.end(token:message:)(v8, 0, 0xE000000000000000);
  outlined destroy of PommesSearchRequest.ParseState(v8, type metadata accessor for SignpostToken);
  return v19;
}

void *PommesSearch.makeSearchRequestProcessor(with:)(uint64_t a1)
{
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v55 = *(v3 - 8);
  v56 = v3;
  v4 = *(v55 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v54 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for OS_dispatch_queue.Attributes();
  v7 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52, v8);
  v53 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v51 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for PommesSearchRequest.ParseState(0);
  v14 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49, v15);
  v17 = (&v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for PommesSearchRequest(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8, v20);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v1[3];
  v24 = v1[4];
  v25 = v1[5];
  v26 = v1[7];
  outlined init with copy of PommesSearchRequest.ParseState(a1, v22, type metadata accessor for PommesSearchRequest);
  v27 = v1[6];
  v28 = type metadata accessor for PommesSearchRequestProcessor();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  v31 = swift_allocObject();
  type metadata accessor for AnalyticsComponentIdGenerator();
  v32 = swift_allocObject();
  type metadata accessor for OnDeviceSearchInstrumentationUtil();
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = v32;
  v31[6] = v33;
  *(v31 + OBJC_IVAR____TtC21SiriInformationSearch28PommesSearchRequestProcessor_attemptedProfileSliceLabels) = MEMORY[0x277D84FA0];
  outlined init with copy of PommesSearchRequest.ParseState(v22, v31 + OBJC_IVAR____TtC21SiriInformationSearch28PommesSearchRequestProcessor_pommesSearchRequest, type metadata accessor for PommesSearchRequest);
  v31[2] = v23;
  v31[3] = v24;
  v31[4] = v25;
  v31[5] = v26;
  *(v31 + OBJC_IVAR____TtC21SiriInformationSearch28PommesSearchRequestProcessor_muxContextManager) = v27;
  v50 = v22;
  outlined init with copy of PommesSearchRequest.ParseState(v22, v17, type metadata accessor for PommesSearchRequest.ParseState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v35 = *v17;
  v36 = v17[1];
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v37 = v17[3];

      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMR);
      v39 = &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd;
      v40 = &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR;
      v41 = v17 + *(v38 + 64);
    }

    else
    {
      v43 = v17[2];

      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMd, &_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMR);
      v45 = *(v44 + 64);
      v46 = *(v17 + *(v44 + 80) + 8);

      v39 = &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd;
      v40 = &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR;
      v41 = v17 + v45;
    }

    outlined destroy of MediaUserStateCenter?(v41, v39, v40);
  }

  else
  {
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMR) + 48);

    outlined destroy of PommesSearchRequest.ParseState(v17 + v42, type metadata accessor for NLXResultCandidate);
  }

  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v57 = 0;
  v58 = 0xE000000000000000;
  _StringGuts.grow(_:)(35);

  v57 = 0xD000000000000021;
  v58 = 0x80000002234DA3B0;
  MEMORY[0x223DDF6D0](v35, v36);

  static DispatchQoS.userInitiated.getter();
  v57 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v55 + 104))(v54, *MEMORY[0x277D85260], v56);
  v47 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  outlined destroy of PommesSearchRequest.ParseState(v50, type metadata accessor for PommesSearchRequest);
  *(v31 + OBJC_IVAR____TtC21SiriInformationSearch28PommesSearchRequestProcessor_requestQueue) = v47;
  return v31;
}

Swift::Void __swiftcall PommesSearch.prepareForSearch()()
{
  v1 = v0;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pommes);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2232BB000, v3, v4, "POMMES preparing for search", v5, 2u);
    MEMORY[0x223DE0F80](v5, -1, -1);
  }

  v6 = *(v1 + 24);
  v7 = (*(*v6 + 528))();
  (*(*v6 + 536))(v7);
}

Swift::Void __swiftcall PommesSearch.prepareForSearchAtRequestStart()()
{
  v1 = v0;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pommes);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2232BB000, v3, v4, "POMMES preparing for search at request start", v5, 2u);
    MEMORY[0x223DE0F80](v5, -1, -1);
  }

  (*(**(v1 + 24) + 536))();
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  matched = type metadata accessor for AudioTypeFeaturiser.ExactMatchKey(0);
  v4 = *(matched - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](matched, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16))
  {
    v9 = *(a2 + 40);
    Hasher.init(_seed:)();
    type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_RequestedMediaType and conformance Apple_Parsec_Siri_V2alpha_RequestedMediaType, MEMORY[0x277D398B0]);
    dispatch thunk of Hashable.hash(into:)();
    v10 = *(matched + 20);
    v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioItemType and conformance Apple_Parsec_Siri_V2alpha_AudioItemType, MEMORY[0x277D39530]);
    v23 = v11;
    v24 = v10;
    dispatch thunk of Hashable.hash(into:)();
    v12 = Hasher._finalize()();
    v13 = a2 + 56;
    v14 = -1 << *(a2 + 32);
    v15 = v12 & ~v14;
    if ((*(a2 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
    {
      v21 = v8;
      v22 = matched;
      v25 = a2;
      v16 = ~v14;
      v17 = *(v4 + 72);
      do
      {
        outlined init with copy of PommesSearchRequest.ParseState(*(v25 + 48) + v17 * v15, v8, type metadata accessor for AudioTypeFeaturiser.ExactMatchKey);
        lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_RequestedMediaType and conformance Apple_Parsec_Siri_V2alpha_RequestedMediaType, MEMORY[0x277D398B0]);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        if (v27 == v26)
        {
          v18 = *(v22 + 20);
          lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioItemType and conformance Apple_Parsec_Siri_V2alpha_AudioItemType, MEMORY[0x277D39530]);
          dispatch thunk of RawRepresentable.rawValue.getter();
          v8 = v21;
          dispatch thunk of RawRepresentable.rawValue.getter();
          outlined destroy of PommesSearchRequest.ParseState(v8, type metadata accessor for AudioTypeFeaturiser.ExactMatchKey);
          if (v27 == v26)
          {
            return 1;
          }
        }

        else
        {
          outlined destroy of PommesSearchRequest.ParseState(v8, type metadata accessor for AudioTypeFeaturiser.ExactMatchKey);
        }

        v15 = (v15 + 1) & v16;
      }

      while (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0);
    }
  }

  return 0;
}

{
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v9 = *(a2 + 40), lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioItemType and conformance Apple_Parsec_Siri_V2alpha_AudioItemType, MEMORY[0x277D39530]), v10 = dispatch thunk of Hashable._rawHashValue(seed:)(), v11 = -1 << *(a2 + 32), v12 = v10 & ~v11, v21 = a2 + 56, ((*(a2 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0))
  {
    v20 = a2;
    v13 = ~v11;
    v14 = v4 + 16;
    v15 = *(v4 + 16);
    v16 = *(v14 + 56);
    v17 = (v14 - 8);
    do
    {
      v15(v8, *(v20 + 48) + v16 * v12, v3);
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioItemType and conformance Apple_Parsec_Siri_V2alpha_AudioItemType, MEMORY[0x277D39530]);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v17)(v8, v3);
      if (v18)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
    }

    while (((*(v21 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

{
  v3 = type metadata accessor for DeviceClass();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v9 = *(a2 + 40), lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DeviceClass and conformance DeviceClass, MEMORY[0x277D61BC8]), v10 = dispatch thunk of Hashable._rawHashValue(seed:)(), v11 = -1 << *(a2 + 32), v12 = v10 & ~v11, v21 = a2 + 56, ((*(a2 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0))
  {
    v20 = a2;
    v13 = ~v11;
    v14 = v4 + 16;
    v15 = *(v4 + 16);
    v16 = *(v14 + 56);
    v17 = (v14 - 8);
    do
    {
      v15(v8, *(v20 + 48) + v16 * v12, v3);
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DeviceClass and conformance DeviceClass, MEMORY[0x277D61BC8]);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v17)(v8, v3);
      if (v18)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
    }

    while (((*(v21 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

BOOL specialized Set.contains(_:)(unsigned __int16 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  v4 = MEMORY[0x223DE0350](*(a2 + 40), a1, 2);
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 2 * v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t specialized Set.contains(_:)(char a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v4 = *(a2 + 40);
    Hasher.init(_seed:)();
    CommonAudio.Attribute.rawValue.getter(a1);
    String.hash(into:)();

    v5 = Hasher._finalize()();
    v6 = -1 << *(a2 + 32);
    v7 = v5 & ~v6;
    if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
    {
      v8 = ~v6;
      while (1)
      {
        v9 = 0xEA00000000007473;
        v10 = 0x697472416D6F7266;
        switch(*(*(a2 + 48) + v7))
        {
          case 1:
            v9 = 0xE800000000000000;
            v10 = 0x676E6F536D6F7266;
            break;
          case 2:
            v10 = 0x75626C416D6F7266;
            v9 = 0xE90000000000006DLL;
            break;
          case 3:
            v9 = 0xE800000000000000;
            v10 = 0x7478654E79616C70;
            break;
          case 4:
            v9 = 0xE700000000000000;
            v10 = 0x776F4E79616C70;
            break;
          case 5:
            v9 = 0xE800000000000000;
            v10 = 0x7473614C79616C70;
            break;
          case 6:
            v9 = 0xE800000000000000;
            v10 = 0x7974696E69666661;
            break;
          case 7:
            v10 = 0x6E656D6D6F636572;
            v9 = 0xEB00000000646564;
            break;
          case 8:
            v9 = 0xE900000000000079;
            v10 = 0x7265766F63736964;
            break;
          case 9:
            v10 = 0xD000000000000018;
            v9 = 0x80000002234D9AC0;
            break;
          case 0xA:
            v9 = 0xE400000000000000;
            v10 = 1954047342;
            break;
          case 0xB:
            v9 = 0xE500000000000000;
            v10 = 0x64656D616ELL;
            break;
          case 0xC:
            v9 = 0xE800000000000000;
            v10 = 0x73756F6976657270;
            break;
          case 0xD:
            v10 = 0x44657361656C6572;
            v9 = 0xEB00000000657461;
            break;
          case 0xE:
            v9 = 0xE800000000000000;
            v10 = 0x6E6F697461727564;
            break;
          default:
            break;
        }

        v11 = 0x697472416D6F7266;
        v12 = 0xEA00000000007473;
        switch(a1)
        {
          case 1:
            v12 = 0xE800000000000000;
            if (v10 == 0x676E6F536D6F7266)
            {
              goto LABEL_46;
            }

            goto LABEL_47;
          case 2:
            v12 = 0xE90000000000006DLL;
            if (v10 != 0x75626C416D6F7266)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 3:
            v12 = 0xE800000000000000;
            if (v10 != 0x7478654E79616C70)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 4:
            v12 = 0xE700000000000000;
            if (v10 != 0x776F4E79616C70)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 5:
            v12 = 0xE800000000000000;
            if (v10 != 0x7473614C79616C70)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 6:
            v12 = 0xE800000000000000;
            if (v10 != 0x7974696E69666661)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 7:
            v13 = 0x6E656D6D6F636572;
            v14 = 6579556;
            goto LABEL_40;
          case 8:
            v12 = 0xE900000000000079;
            if (v10 != 0x7265766F63736964)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 9:
            v12 = 0x80000002234D9AC0;
            if (v10 != 0xD000000000000018)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 10:
            v12 = 0xE400000000000000;
            v11 = 1954047342;
            goto LABEL_45;
          case 11:
            v12 = 0xE500000000000000;
            if (v10 != 0x64656D616ELL)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 12:
            v12 = 0xE800000000000000;
            if (v10 != 0x73756F6976657270)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 13:
            v13 = 0x44657361656C6572;
            v14 = 6648929;
LABEL_40:
            v12 = v14 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
            if (v10 != v13)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 14:
            v12 = 0xE800000000000000;
            if (v10 != 0x6E6F697461727564)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          default:
LABEL_45:
            if (v10 != v11)
            {
              goto LABEL_47;
            }

LABEL_46:
            if (v9 == v12)
            {

              v15 = 1;
              return v15 & 1;
            }

LABEL_47:
            v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v15)
            {
              return v15 & 1;
            }

            v7 = (v7 + 1) & v8;
            if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
            {
              return v15 & 1;
            }

            break;
        }
      }
    }
  }

  v15 = 0;
  return v15 & 1;
}