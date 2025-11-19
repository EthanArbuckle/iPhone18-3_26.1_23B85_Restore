uint64_t specialized static PegasusOverrideUtil.headerOverrides.getter()
{
  v0 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  if (one-time initialization token for overrideKeyHeaderKeyDict != -1)
  {
    goto LABEL_50;
  }

LABEL_2:
  v1 = static PegasusOverrideUtil.overrideKeyHeaderKeyDict + 64;
  v2 = 1 << *(static PegasusOverrideUtil.overrideKeyHeaderKeyDict + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(static PegasusOverrideUtil.overrideKeyHeaderKeyDict + 8);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  *&v8 = 136315394;
  if (v4)
  {
LABEL_5:
    while (1)
    {
      v9 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v10 = v9 | (v7 << 6);
      v11 = *(*(v6 + 56) + 8 * v10);
      v12 = *(v11 + 16);
      if (v12)
      {
        break;
      }

      if (!v4)
      {
        goto LABEL_7;
      }
    }

    v62 = v8;
    v60 = v6;
    v14 = (*(v6 + 48) + 16 * v10);
    v65 = *v14;
    v66 = v14[1];

    v15 = 0;
    v16 = (v11 + 40);
    v69 = v11;
    v70 = v12;
    while (1)
    {
      if (v15 >= *(v11 + 16))
      {
        goto LABEL_49;
      }

      v72 = v0;
      v18 = *(v16 - 1);
      v19 = *v16;

      if (!AFIsInternalInstall())
      {
        goto LABEL_29;
      }

      v20 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
      v71 = v18;
      v21 = MEMORY[0x223DDF550](0xD000000000000011, 0x80000002234DC2A0);
      v22 = [v20 initWithSuiteName_];

      v18 = v71;
      if (!v22)
      {
        goto LABEL_29;
      }

      v23 = MEMORY[0x223DDF550](v65, v66);
      v24 = [v22 stringForKey_];

      if (!v24)
      {

LABEL_28:
        v18 = v71;
LABEL_29:
        v35 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v19);
        v37 = v36;

        if (v37)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v73 = v72;
          v0 = v72;
          if (!isUniquelyReferenced_nonNull_native)
          {
            specialized _NativeDictionary.copy()();
            v0 = v73;
          }

          v39 = *(*(v0 + 48) + 16 * v35 + 8);

          v40 = *(*(v0 + 56) + 16 * v35 + 8);

          specialized _NativeDictionary._delete(at:)(v35, v0);
        }

        else
        {
          v0 = v72;
        }

        v11 = v69;
        v17 = v70;
        goto LABEL_14;
      }

      v68 = v22;
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      v28 = HIBYTE(v27) & 0xF;
      v67 = v25;
      if ((v27 & 0x2000000000000000) == 0)
      {
        v28 = v25 & 0xFFFFFFFFFFFFLL;
      }

      if (!v28)
      {

        goto LABEL_28;
      }

      if (one-time initialization token for overrides != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      __swift_project_value_buffer(v29, static Logger.overrides);

      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();

      log = v30;
      v63 = v27;
      if (os_log_type_enabled(v30, v31))
      {
        v32 = v27;
        v33 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v73 = v61;
        *v33 = v62;
        *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v19, &v73);
        *(v33 + 12) = 2080;
        *(v33 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v32, &v73);
        _os_log_impl(&dword_2232BB000, log, v31, "POMMES override enabled for %s header! Using value “%s”", v33, 0x16u);
        swift_arrayDestroy();
        v34 = v71;
        MEMORY[0x223DE0F80](v61, -1, -1);
        MEMORY[0x223DE0F80](v33, -1, -1);
      }

      else
      {

        v34 = v71;
      }

      v41 = swift_isUniquelyReferenced_nonNull_native();
      v73 = v72;
      v42 = specialized __RawDictionaryStorage.find<A>(_:)(v34, v19);
      v44 = *(v72 + 16);
      v45 = (v43 & 1) == 0;
      v46 = __OFADD__(v44, v45);
      v47 = v44 + v45;
      if (v46)
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      v48 = v43;
      if (*(v72 + 24) < v47)
      {
        break;
      }

      if (v41)
      {
        goto LABEL_39;
      }

      v53 = v42;
      specialized _NativeDictionary.copy()();
      v42 = v53;
      v17 = v70;
      if ((v48 & 1) == 0)
      {
LABEL_42:
        v54 = v73;
        v73[(v42 >> 6) + 8] |= 1 << v42;
        v55 = (v54[6] + 16 * v42);
        *v55 = v71;
        v55[1] = v19;
        v56 = (v54[7] + 16 * v42);
        *v56 = v67;
        v56[1] = v63;
        v57 = v54[2];
        v46 = __OFADD__(v57, 1);
        v58 = v57 + 1;
        if (v46)
        {
          goto LABEL_52;
        }

        v0 = v54;
        v54[2] = v58;
        goto LABEL_44;
      }

LABEL_40:
      v50 = v42;

      v0 = v73;
      v51 = (v73[7] + 16 * v50);
      v52 = v51[1];
      *v51 = v67;
      v51[1] = v63;

LABEL_44:
      v11 = v69;
LABEL_14:
      ++v15;
      v16 += 2;
      if (v17 == v15)
      {

        v6 = v60;
        v8 = v62;
        if (!v4)
        {
          goto LABEL_7;
        }

        goto LABEL_5;
      }
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v47, v41);
    v42 = specialized __RawDictionaryStorage.find<A>(_:)(v71, v19);
    if ((v48 & 1) != (v49 & 1))
    {
      goto LABEL_53;
    }

LABEL_39:
    v17 = v70;
    if ((v48 & 1) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_40;
  }

  while (1)
  {
LABEL_7:
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      swift_once();
      goto LABEL_2;
    }

    if (v13 >= v5)
    {
      break;
    }

    v4 = *&v1[8 * v13];
    ++v7;
    if (v4)
    {
      v7 = v13;
      goto LABEL_5;
    }
  }

  return v0;
}

uint64_t static NowPlayingInfo.createIdentifierUrl(scheme:host:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for URLComponents();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  URLComponents.init()();

  URLComponents.scheme.setter();

  MEMORY[0x223DD8CC0](a3, a4);
  v18 = 47;
  v19 = 0xE100000000000000;
  MEMORY[0x223DDF6D0](a5, a6);
  MEMORY[0x223DD8CD0](v18, v19);
  v16 = URLComponents.string.getter();
  (*(v11 + 8))(v15, v10);
  return v16;
}

void *NowPlayingInfo.__allocating_init(_:_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5)
{
  result = swift_allocObject();
  if (a1)
  {
    if (a3)
    {
      v11 = 0;
    }

    else
    {
      v11 = a2;
    }

    result[2] = a1;
    result[3] = v11;
    if (a5)
    {
      v12 = a4;
    }

    else
    {
      v12 = 0;
    }

    v13 = 0xE000000000000000;
    if (a5)
    {
      v13 = a5;
    }

    result[4] = v12;
    result[5] = v13;
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t NowPlayingInfo.applicationBundleIdentifier.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

void *NowPlayingInfo.init(_:_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5)
{
  if (a1)
  {
    if (a3)
    {
      v6 = 0;
    }

    else
    {
      v6 = a2;
    }

    v5[2] = a1;
    v5[3] = v6;
    if (a5)
    {
      v7 = a4;
    }

    else
    {
      v7 = 0;
    }

    v8 = 0xE000000000000000;
    if (a5)
    {
      v8 = a5;
    }

    v5[4] = v7;
    v5[5] = v8;
  }

  else
  {

    type metadata accessor for NowPlayingInfo();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v5;
}

void *NowPlayingInfo.title.getter(void *result)
{
  if (*result)
  {
    if ([*(v1 + 16) objectForKey_])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v3 = 0u;
      v4 = 0u;
    }

    v5[0] = v3;
    v5[1] = v4;
    if (*(&v4 + 1))
    {
      if (swift_dynamicCast())
      {
        return v2;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      outlined destroy of Any?(v5);
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t NowPlayingInfo.externalContentIdentifier.getter()
{
  v1 = type metadata accessor for CharacterSet();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  result = MEMORY[0x28223BE20](v1, v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*MEMORY[0x277D27BF0])
  {
    if ([*(v0 + 16) objectForKey_])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
    }

    v12[0] = v10;
    v12[1] = v11;
    if (*(&v11 + 1))
    {
      if (swift_dynamicCast())
      {
        v12[0] = v9;
        static CharacterSet.urlPathAllowed.getter();
        lazy protocol witness table accessor for type String and conformance String();
        v8 = StringProtocol.addingPercentEncoding(withAllowedCharacters:)();
        (*(v2 + 8))(v7, v1);

        return v8;
      }
    }

    else
    {
      outlined destroy of Any?(v12);
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id NowPlayingInfo.uniqueIdentifier.getter()
{
  v1 = type metadata accessor for CharacterSet();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  result = MEMORY[0x28223BE20](v1, v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*MEMORY[0x277D27CC0])
  {
    result = [*(v0 + 16) objectForKey_];
    if (result)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      outlined init with copy of Any(v30, v29);
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
      if (swift_dynamicCast())
      {
        v8 = v28[0];
        static CharacterSet.urlPathAllowed.getter();
        isa = CharacterSet._bridgeToObjectiveC()().super.isa;
        (*(v2 + 8))(v7, v1);
        v10 = [v8 stringByAddingPercentEncodingWithAllowedCharacters_];

        if (v10)
        {
          v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();

          __swift_destroy_boxed_opaque_existential_1(v30);
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(v30);

          v11 = 0;
        }

        __swift_destroy_boxed_opaque_existential_1(v29);
        return v11;
      }

      else
      {
        type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
        if (swift_dynamicCast())
        {
          v12 = v28[0];
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          v13 = swift_allocObject();
          *(v13 + 16) = xmmword_2234CF920;
          v14 = [v12 longLongValue];
          v15 = MEMORY[0x277D84A90];
          *(v13 + 56) = MEMORY[0x277D84A28];
          *(v13 + 64) = v15;
          *(v13 + 32) = v14;
          v16 = String.init(format:_:)();

          __swift_destroy_boxed_opaque_existential_1(v30);
          __swift_destroy_boxed_opaque_existential_1(v29);
          return v16;
        }

        else
        {
          if (one-time initialization token for pommes != -1)
          {
            swift_once();
          }

          v17 = type metadata accessor for Logger();
          __swift_project_value_buffer(v17, static Logger.pommes);
          outlined init with copy of Any(v30, v28);
          v18 = Logger.logObject.getter();
          v19 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v18, v19))
          {
            v20 = swift_slowAlloc();
            v21 = swift_slowAlloc();
            v27 = v21;
            *v20 = 136315138;
            __swift_project_boxed_opaque_existential_1(v28, v28[3]);
            swift_getDynamicType();
            v22 = _typeName(_:qualified:)();
            v24 = v23;
            __swift_destroy_boxed_opaque_existential_1(v28);
            v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v27);

            *(v20 + 4) = v25;
            _os_log_impl(&dword_2232BB000, v18, v19, "Bad NowPlayingInfo, kMRMediaRemoteNowPlayingInfoUniqueIdentifier gave unexpected item of class %s", v20, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v21);
            MEMORY[0x223DE0F80](v21, -1, -1);
            MEMORY[0x223DE0F80](v20, -1, -1);
          }

          else
          {

            __swift_destroy_boxed_opaque_existential_1(v28);
          }

          __swift_destroy_boxed_opaque_existential_1(v30);
          __swift_destroy_boxed_opaque_existential_1(v29);
          return 0;
        }
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t NowPlayingInfo.isRadio.getter()
{
  v1 = (*(*v0 + 160))();
  if (!v2)
  {
    v8 = 0;
    return v8 & 1;
  }

  v3 = v1;
  result = *MEMORY[0x277D27AF8];
  if (*MEMORY[0x277D27AF8])
  {
    v5 = v2;
    if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
    {
      v8 = 1;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    return v8 & 1;
  }

  __break(1u);
  return result;
}

void *NowPlayingInfo.queueIndex.getter(void *result)
{
  if (*result)
  {
    if ([*(v1 + 16) objectForKey_])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v6 = 0u;
      v7 = 0u;
    }

    v8[0] = v6;
    v8[1] = v7;
    if (*(&v7 + 1))
    {
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v2 = [v5 intValue];

        v3 = 0;
        v4 = v2;
LABEL_10:
        LOBYTE(v8[0]) = v3;
        return (v4 | (v3 << 32));
      }
    }

    else
    {
      outlined destroy of Any?(v8);
    }

    v4 = 0;
    v3 = 1;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void static NowPlayingInfo.addKVToListeningToContainer(key:value:container:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  outlined init with copy of Any(a1, &v41);
  if (!swift_dynamicCast())
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.pommes);
    outlined init with copy of Any(a1, &v41);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v13, v14))
    {

      __swift_destroy_boxed_opaque_existential_1(&v41);
      return;
    }

    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *&v36[0] = v16;
    *v15 = 136315138;
    outlined init with copy of Any(&v41, &v37);
    v17 = String.init<A>(describing:)();
    v19 = v18;
    __swift_destroy_boxed_opaque_existential_1(&v41);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, v36);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_2232BB000, v13, v14, "Ignoring non-string key: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x223DE0F80](v16, -1, -1);
    v21 = v15;
    goto LABEL_34;
  }

  if (*MEMORY[0x277D27B58])
  {
    v6 = v37;
    if (v37 == static String._unconditionallyBridgeFromObjectiveC(_:)() && *(&v37 + 1) == v7)
    {
    }

    else
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v9 & 1) == 0)
      {
        outlined init with copy of Any(a2, &v41);
        if (swift_dynamicCast())
        {
          v10 = *a3;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v41 = *a3;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v37, *(&v37 + 1), v37, *(&v37 + 1), isUniquelyReferenced_nonNull_native);

          *a3 = v41;
          return;
        }

        if (one-time initialization token for pommes != -1)
        {
          swift_once();
        }

        v32 = type metadata accessor for Logger();
        __swift_project_value_buffer(v32, static Logger.pommes);

        v13 = Logger.logObject.getter();
        v33 = static os_log_type_t.debug.getter();

        if (!os_log_type_enabled(v13, v33))
        {

          goto LABEL_35;
        }

        v31 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *&v41 = v34;
        *v31 = 136315138;
        v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, *(&v6 + 1), &v41);

        *(v31 + 4) = v35;
        _os_log_impl(&dword_2232BB000, v13, v33, "Could not make safe value for key: %s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v34);
        MEMORY[0x223DE0F80](v34, -1, -1);
        goto LABEL_33;
      }
    }

    outlined init with copy of Any(a2, &v41);
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSDictionary, 0x277CBEAC0);
    if (!swift_dynamicCast())
    {

      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      __swift_project_value_buffer(v29, static Logger.pommes);
      v13 = Logger.logObject.getter();
      v30 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v13, v30))
      {
        goto LABEL_35;
      }

      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_2232BB000, v13, v30, "Unexpected non-dictionary value for kMRMediaRemoteNowPlayingCollectionInfoKeyIdentifiers", v31, 2u);
LABEL_33:
      v21 = v31;
LABEL_34:
      MEMORY[0x223DE0F80](v21, -1, -1);
LABEL_35:

      return;
    }

    v22 = v37;
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.pommes);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *&v41 = v27;
      *v26 = 136315138;
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, *(&v6 + 1), &v41);

      *(v26 + 4) = v28;
      _os_log_impl(&dword_2232BB000, v24, v25, "Processing kMRMediaRemoteNowPlayingCollectionInfoKeyIdentifiers key: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x223DE0F80](v27, -1, -1);
      MEMORY[0x223DE0F80](v26, -1, -1);
    }

    else
    {
    }

    NSDictionary.makeIterator()();
    NSDictionary.Iterator.next()();
    v41 = v37;
    v42 = v38;
    v43 = v39;
    for (i = v40; *(&v38 + 1); i = v40)
    {
      outlined init with take of Any(&v41, &v37);
      outlined init with take of Any(&v43, v36);
      static NowPlayingInfo.addKVToListeningToContainer(key:value:container:)(&v37, v36, a3);
      __swift_destroy_boxed_opaque_existential_1(v36);
      __swift_destroy_boxed_opaque_existential_1(&v37);
      NSDictionary.Iterator.next()();
      v41 = v37;
      v42 = v38;
      v43 = v39;
    }
  }

  else
  {
    __break(1u);
  }
}

void NowPlayingInfo.collectionInfo.getter()
{
  v1 = *v0;
  if (!*MEMORY[0x277D27BA8])
  {
    __break(1u);
    return;
  }

  if ([v0[2] objectForKey_])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v8 = v4;
  v9 = v5;
  if (!*(&v5 + 1))
  {
    outlined destroy of Any?(&v8);
    goto LABEL_12;
  }

  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSDictionary, 0x277CBEAC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    return;
  }

  v2 = v3[0];
  if ([v3[0] count] < 1)
  {
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  else
  {
    v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    NSDictionary.makeIterator()();
    NSDictionary.Iterator.next()();
    v8 = v4;
    v9 = v5;
    v10 = v6;
    v11 = v7;
    do
    {
      outlined init with take of Any(&v8, &v4);
      outlined init with take of Any(&v10, v3);
      static NowPlayingInfo.addKVToListeningToContainer(key:value:container:)(&v4, v3, &v12);
      __swift_destroy_boxed_opaque_existential_1(v3);
      __swift_destroy_boxed_opaque_existential_1(&v4);
      NSDictionary.Iterator.next()();
      v8 = v4;
      v9 = v5;
      v10 = v6;
      v11 = v7;
    }

    while (*(&v5 + 1));
  }
}

uint64_t NowPlayingInfo.currentItemAdamIdentifier.getter()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2234CF940;
  result = *MEMORY[0x277D27CC8];
  if (!*MEMORY[0x277D27CC8])
  {
    __break(1u);
    goto LABEL_19;
  }

  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v4;
  result = *MEMORY[0x277D27CD0];
  if (!*MEMORY[0x277D27CD0])
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v5 = inited + 32;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = 0;
  v8 = 0;
  *(inited + 48) = v6;
  *(inited + 56) = v9;
  v10 = &unk_2784DB000;
  v11 = 0x676E6F4C676E6F6CLL;
  while (1)
  {
    v32 = v7;
    v12 = (v5 + 16 * v8);
    v13 = *v12;
    v14 = v12[1];
    v15 = *(v1 + 16);

    v16 = v15;
    v17 = MEMORY[0x223DDF550](v13, v14);
    v18 = [v16 v10[201]];

    if (v18)
    {
      break;
    }

LABEL_5:
    v7 = 1;
    v8 = 1;
    if (v32)
    {

      return 0;
    }
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with take of Any(v34, &v35);
  __swift_project_boxed_opaque_existential_1(&v35, v36);
  v19 = _bridgeAnythingToObjectiveC<A>(_:)();
  v20 = [v19 respondsToSelector_];
  swift_unknownObjectRelease();
  if (!v20)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.pommes);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = v5;
      v26 = v1;
      v27 = v10;
      v28 = v11;
      v29 = swift_slowAlloc();
      *&v34[0] = v29;
      *v24 = 136315138;
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v34);

      *(v24 + 4) = v30;
      _os_log_impl(&dword_2232BB000, v22, v23, "Found %s value that is illegal (not a 64 bit integer)", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      v31 = v29;
      v11 = v28;
      v10 = v27;
      v1 = v26;
      v5 = v25;
      MEMORY[0x223DE0F80](v31, -1, -1);
      MEMORY[0x223DE0F80](v24, -1, -1);
    }

    else
    {
    }

    __swift_destroy_boxed_opaque_existential_1(&v35);
    goto LABEL_5;
  }

  outlined init with take of Any(&v35, v34);
  if (swift_dynamicCast())
  {
    return v33;
  }

  else
  {
    return 0;
  }
}

uint64_t NowPlayingInfo.mediaItemIdURL.getter()
{
  v1 = type metadata accessor for URLComponents();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = NowPlayingInfo.currentItemAdamIdentifier.getter();
  if (v8)
  {
    v9 = (*(*v0 + 168))(v7);
    if (v10)
    {
      v11 = v9;
      v12 = v10;
      v13 = 0xE800000000000000;
      v14 = 0x6C616E7265747865;
    }

    else
    {
      v11 = (*(*v0 + 176))(v9);
      if (!v21)
      {
        return v11;
      }

      v12 = v21;
      v22 = *MEMORY[0x277CEF028];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v23;
    }
  }

  else
  {
    v15 = v7;
    v16 = *MEMORY[0x277CEF038];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v17;
    v24 = v15;
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v18;
  }

  v19 = *MEMORY[0x277CEF020];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  URLComponents.init()();

  URLComponents.scheme.setter();

  MEMORY[0x223DD8CC0](v14, v13);
  v24 = 47;
  v25 = 0xE100000000000000;
  MEMORY[0x223DDF6D0](v11, v12);

  MEMORY[0x223DD8CD0](v24, v25);
  v11 = URLComponents.string.getter();

  (*(v2 + 8))(v6, v1);
  return v11;
}

uint64_t NowPlayingInfo.deinit()
{
  v1 = *(v0 + 40);

  return v0;
}

uint64_t NowPlayingInfo.__deallocating_deinit()
{
  v1 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t UsoTask.getArgumentsAsType<A>(arguments:asType:)()
{
  static Array._allocateUninitialized(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology7UsoTaskC0A17InformationSearchE9ArgumentsOGMd, &_sSay12SiriOntology7UsoTaskC0A17InformationSearchE9ArgumentsOGMR);
  type metadata accessor for Array();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [UsoTask.Arguments] and conformance [A], &_sSay12SiriOntology7UsoTaskC0A17InformationSearchE9ArgumentsOGMd, &_sSay12SiriOntology7UsoTaskC0A17InformationSearchE9ArgumentsOGMR);
  Sequence.reduce<A>(_:_:)();

  return v1;
}

uint64_t Siri_Nlu_External_UserParse.pommesUSOTasks()@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v42 = a1;
  v55 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v3 = *(v55 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v55, v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v8 = *(v54 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v54, v10);
  v53 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v45 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = Siri_Nlu_External_Span.matcherNames.getter();
  v18 = result;
  v19 = MEMORY[0x277D84F90];
  v61 = MEMORY[0x277D84F90];
  v48 = *(result + 16);
  if (v48)
  {
    v20 = 0;
    v50 = (v8 + 8);
    v51 = v13 + 16;
    v52 = (v3 + 8);
    v49 = (v13 + 8);
    v21 = v45;
    v43 = v12;
    v44 = v7;
    v46 = v13;
    v47 = result;
    while (v20 < *(v18 + 16))
    {
      (*(v13 + 16))(v21, v18 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v20, v12);
      v22 = v53;
      Siri_Nlu_External_UserDialogAct.userStatedTask.getter();
      Siri_Nlu_External_UserStatedTask.task.getter();
      (*v50)(v22, v54);
      v23 = static UsoGraphProtoReader.fromSwiftProtobuf(protobufGraph:vocabManager:)();
      if (v2)
      {

        (*v52)(v7, v55);
        (*v49)(v21, v12);
      }

      v24 = v23;
      v58 = v20;
      (*v52)(v7, v55);
      v25 = static UsoPrintUtils.flattenUsoGraph(graph:printIdentifiers:)();
      v27 = v26;
      v28 = static ConversionUtils.convertUserDialogActToTasks(userDialogAct:)();
      v59 = v28;
      if (v28 >> 62)
      {
        v29 = __CocoaSet.count.getter();
      }

      else
      {
        v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v30 = MEMORY[0x277D84F90];
      if (v29)
      {
        v57 = v24;
        v60 = MEMORY[0x277D84F90];
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29 & ~(v29 >> 63), 0);
        if (v29 < 0)
        {
          goto LABEL_28;
        }

        v56 = 0;
        v30 = v60;
        if ((v59 & 0xC000000000000001) != 0)
        {
          v31 = 0;
          do
          {
            v32 = MEMORY[0x223DDFF80](v31, v59);
            v60 = v30;
            v34 = *(v30 + 16);
            v33 = *(v30 + 24);

            if (v34 >= v33 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1);
              v30 = v60;
            }

            ++v31;
            *(v30 + 16) = v34 + 1;
            v35 = (v30 + 24 * v34);
            v35[4] = v32;
            v35[5] = v25;
            v35[6] = v27;
          }

          while (v29 != v31);
        }

        else
        {
          v36 = (v59 + 32);
          do
          {
            v37 = *v36;
            v60 = v30;
            v39 = *(v30 + 16);
            v38 = *(v30 + 24);

            if (v39 >= v38 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1);
              v30 = v60;
            }

            *(v30 + 16) = v39 + 1;
            v40 = (v30 + 24 * v39);
            v40[4] = v37;
            v40[5] = v25;
            v40[6] = v27;
            ++v36;
            --v29;
          }

          while (v29);
        }

        v21 = v45;
        v12 = v43;
        (*v49)(v45, v43);
        v2 = v56;
        v7 = v44;
      }

      else
      {

        (*v49)(v21, v12);
      }

      v20 = v58 + 1;
      result = specialized Array.append<A>(contentsOf:)(v30);
      v18 = v47;
      v13 = v46;
      if (v20 == v48)
      {
        v19 = v61;
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v42 = v19;
  }

  return result;
}

uint64_t UsoTask.userEntities.getter()
{
  v1 = _s12SiriOntology7UsoTaskC0A17InformationSearchE18getArgumentsAsType9arguments02asJ0SayxGSayAcDE0H0OG_xmtAA11CodeGenBaseCRbzlFA2H_AJtXEfU_AA0c18Entity_common_UserP0C_Tt3g5(MEMORY[0x277D84F90], byte_2836982C8, v0);

  return v1;
}

uint64_t UsoTask.references.getter()
{
  v1 = _s12SiriOntology7UsoTaskC0A17InformationSearchE18getArgumentsAsType9arguments02asJ0SayxGSayAcDE0H0OG_xmtAA11CodeGenBaseCRbzlFA2H_AJtXEfU_AA0c13Entity_uso_NoP0C_Tt3g5(MEMORY[0x277D84F90], byte_2836982F0, v0);

  return v1;
}

uint64_t UsoTask.triggers.getter()
{
  v1 = _s12SiriOntology7UsoTaskC0A17InformationSearchE18getArgumentsAsType9arguments02asJ0SayxGSayAcDE0H0OG_xmtAA11CodeGenBaseCRbzlFA2H_AJtXEfU_AA0C26Entity_common_EventTriggerC_Tt3g5(MEMORY[0x277D84F90], byte_283698318, v0);

  return v1;
}

uint64_t UsoTask.referencedMediaItems()()
{
  v1 = _s12SiriOntology7UsoTaskC0A17InformationSearchE18getArgumentsAsType9arguments02asJ0SayxGSayAcDE0H0OG_xmtAA11CodeGenBaseCRbzlFA2H_AJtXEfU_AA0C23Entity_common_MediaItemC_Tt3g5(MEMORY[0x277D84F90], byte_283698910, v0);

  return v1;
}

uint64_t UsoTask.codeGenUserEntities.getter()
{
  static UsoTask_CodegenConverter.convert(task:)();
  if (!v3)
  {
    outlined destroy of Any?(v2);
    return MEMORY[0x277D84F90];
  }

  type metadata accessor for CodeGenTaskBase();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  type metadata accessor for UsoEntity_common_UserEntity();
  v0 = dispatch thunk of CodeGenTaskBase.getAsListHelper<A>(argumentName:entryType:)();

  if (v0)
  {
    return v0;
  }

  else
  {
    return MEMORY[0x277D84F90];
  }
}

uint64_t UsoTask.isWHARelevantTask.getter()
{
  static UsoTask_CodegenConverter.convert(task:)();
  outlined init with copy of Any?(&v3, &v1);
  if (*(&v2 + 1))
  {
    type metadata accessor for UsoTask_play_common_MediaItem();
    if (swift_dynamicCast())
    {

      outlined destroy of Any?(&v3);
      return 1;
    }
  }

  else
  {
    outlined destroy of Any?(&v1);
  }

  v1 = v3;
  v2 = v4;
  if (*(&v4 + 1))
  {
    type metadata accessor for UsoTask_update_common_MediaItem();
    if (swift_dynamicCast())
    {

      return 1;
    }
  }

  else
  {
    outlined destroy of Any?(&v1);
  }

  return 0;
}

uint64_t UsoTask.phoneCallEntities.getter()
{
  v1 = _s12SiriOntology7UsoTaskC0A17InformationSearchE18getArgumentsAsType9arguments02asJ0SayxGSayAcDE0H0OG_xmtAA11CodeGenBaseCRbzlFA2H_AJtXEfU_AA0C23Entity_common_PhoneCallC_Tt3g5(MEMORY[0x277D84F90], byte_2836994E0, v0);

  return v1;
}

uint64_t UsoTask.Arguments.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x69746E4572657375;
  v2 = 0x636E657265666572;
  if (a1 != 2)
  {
    v2 = 0x72656767697274;
  }

  if (a1)
  {
    v1 = 0x746567726174;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance UsoTask.Arguments(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEC00000073656974;
  v3 = 0x69746E4572657375;
  v4 = *a1;
  v5 = 0x636E657265666572;
  v6 = 0xE900000000000065;
  if (v4 != 2)
  {
    v5 = 0x72656767697274;
    v6 = 0xE700000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x746567726174;
  if (!*a1)
  {
    v8 = 0x69746E4572657375;
    v7 = 0xEC00000073656974;
  }

  if (*a1 <= 1u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v4 <= 1)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  v11 = 0x636E657265666572;
  v12 = 0xE900000000000065;
  if (*a2 != 2)
  {
    v11 = 0x72656767697274;
    v12 = 0xE700000000000000;
  }

  if (*a2)
  {
    v3 = 0x746567726174;
    v2 = 0xE600000000000000;
  }

  if (*a2 <= 1u)
  {
    v13 = v3;
  }

  else
  {
    v13 = v11;
  }

  if (*a2 <= 1u)
  {
    v14 = v2;
  }

  else
  {
    v14 = v12;
  }

  if (v9 == v13 && v10 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v15 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance UsoTask.Arguments()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance UsoTask.Arguments()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UsoTask.Arguments()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance UsoTask.Arguments@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized UsoTask.Arguments.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance UsoTask.Arguments(uint64_t *a1@<X8>)
{
  v2 = 0xEC00000073656974;
  v3 = 0x69746E4572657375;
  v4 = 0xE900000000000065;
  v5 = 0x636E657265666572;
  if (*v1 != 2)
  {
    v5 = 0x72656767697274;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x746567726174;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t closure #1 in UsoTask.getArgumentsAsType<A>(arguments:asType:)@<X0>(uint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = UsoTask.arguments.getter();
  v7 = 0xEC00000073656974;
  v8 = 0x69746E4572657375;
  v9 = 0xE900000000000065;
  v10 = 0x636E657265666572;
  if (v5 != 2)
  {
    v10 = 0x72656767697274;
    v9 = 0xE700000000000000;
  }

  if (v5)
  {
    v8 = 0x746567726174;
    v7 = 0xE600000000000000;
  }

  if (v5 <= 1)
  {
    v11 = v8;
  }

  else
  {
    v11 = v10;
  }

  if (v5 <= 1)
  {
    v12 = v7;
  }

  else
  {
    v12 = v9;
  }

  if (*(v6 + 16))
  {
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v12);
    v15 = v14;

    if (v15)
    {
      v16 = *(*(v6 + 56) + 8 * v13);

      v21[1] = v21;
      v21[3] = v16;
      MEMORY[0x28223BE20](v17, v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology8UsoValueCGMd, &_sSay12SiriOntology8UsoValueCGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [UsoValue] and conformance [A], &_sSay12SiriOntology8UsoValueCGMd, &_sSay12SiriOntology8UsoValueCGMR);
      Sequence.compactMap<A>(_:)();

      v19 = static Array.+ infix(_:_:)();

      *a3 = v19;
      return result;
    }
  }

  else
  {
  }

  *a3 = v4;
}

uint64_t closure #1 in closure #1 in UsoTask.getArgumentsAsType<A>(arguments:asType:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  dispatch thunk of UsoValue.getAsEntity()();
  static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

  *a2 = v5;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PommesUsoTask()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t partial apply for closure #1 in UsoTask.getArgumentsAsType<A>(arguments:asType:)@<X0>(uint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = v3[2];
  v4 = v3[3];
  v6 = v3[4];
  return closure #1 in UsoTask.getArgumentsAsType<A>(arguments:asType:)(a1, a2, a3);
}

unint64_t specialized UsoTask.Arguments.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UsoTask.Arguments.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type UsoTask.Arguments and conformance UsoTask.Arguments()
{
  result = lazy protocol witness table cache variable for type UsoTask.Arguments and conformance UsoTask.Arguments;
  if (!lazy protocol witness table cache variable for type UsoTask.Arguments and conformance UsoTask.Arguments)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UsoTask.Arguments and conformance UsoTask.Arguments);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PommesUsoTask(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PommesUsoTask(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t partial apply for closure #1 in closure #1 in UsoTask.getArgumentsAsType<A>(arguments:asType:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  return closure #1 in closure #1 in UsoTask.getArgumentsAsType<A>(arguments:asType:)(a1, a2);
}

char *Apple_Parsec_Siri_V2alpha_AudioUnderstanding.librarySearchTerms.getter()
{
  v187 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LibrarySearchTerm();
  v175 = *(v187 - 8);
  v0 = *(v175 + 64);
  MEMORY[0x28223BE20](v187, v1);
  v177 = &v138 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVSgMR);
  v185 = *(v170 - 8);
  v3 = v185[8];
  v5 = MEMORY[0x28223BE20](v170, v4);
  v7 = &v138 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v183 = &v138 - v10;
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v138 - v12;
  v173 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  v182 = *(v173 - 8);
  v14 = *(v182 + 64);
  v16 = MEMORY[0x28223BE20](v173, v15);
  v169 = &v138 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v168 = &v138 - v20;
  v22 = MEMORY[0x28223BE20](v19, v21);
  v162 = &v138 - v23;
  v25 = MEMORY[0x28223BE20](v22, v24);
  v174 = &v138 - v26;
  MEMORY[0x28223BE20](v25, v27);
  v141 = &v138 - v28;
  v186 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioRadioType();
  v29 = *(v186 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v186, v31);
  v33 = &v138 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDecade();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34, v37);
  v39 = &v138 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = Apple_Parsec_Siri_V2alpha_AudioUnderstanding.entity.getter();
  v181 = v40;
  v143 = Apple_Parsec_Siri_V2alpha_AudioUnderstanding.musicTitle.getter();
  v142 = v41;
  v145 = Apple_Parsec_Siri_V2alpha_AudioUnderstanding.album.getter();
  v144 = v42;
  v148 = Apple_Parsec_Siri_V2alpha_AudioUnderstanding.artist.getter();
  v147 = v43;
  v150 = Apple_Parsec_Siri_V2alpha_AudioUnderstanding.podcastTitle.getter();
  v149 = v44;
  v45 = Apple_Parsec_Siri_V2alpha_AudioUnderstanding.playlistTitle.getter();
  v171 = v46;
  v172 = v45;
  Apple_Parsec_Siri_V2alpha_AudioUnderstanding.decade.getter();
  v138 = Apple_Parsec_Siri_V2alpha_AudioDecade.toString.getter();
  v151 = v47;
  (*(v35 + 8))(v39, v34);
  v188 = Apple_Parsec_Siri_V2alpha_AudioUnderstanding.activity.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v153 = BidirectionalCollection<>.joined(separator:)();
  v152 = v48;

  v188 = Apple_Parsec_Siri_V2alpha_AudioUnderstanding.genre.getter();
  v155 = BidirectionalCollection<>.joined(separator:)();
  v154 = v49;

  v188 = Apple_Parsec_Siri_V2alpha_AudioUnderstanding.mood.getter();
  v157 = BidirectionalCollection<>.joined(separator:)();
  v156 = v50;

  v159 = Apple_Parsec_Siri_V2alpha_AudioUnderstanding.audiobookAuthor.getter();
  v158 = v51;
  v161 = Apple_Parsec_Siri_V2alpha_AudioUnderstanding.audiobookTitle.getter();
  v160 = v52;
  v164 = Apple_Parsec_Siri_V2alpha_AudioUnderstanding.radioStationName.getter();
  v163 = v53;
  Apple_Parsec_Siri_V2alpha_AudioUnderstanding.radioStationFrequency.getter();
  v54 = 0;
  v55 = 0;
  if (v56 >= 0.01)
  {
    Apple_Parsec_Siri_V2alpha_AudioUnderstanding.radioStationFrequency.getter();
    v54 = Double.description.getter();
  }

  v165 = v55;
  v139 = v54;
  Apple_Parsec_Siri_V2alpha_AudioUnderstanding.audioRadioType.getter();
  v140 = Apple_Parsec_Siri_V2alpha_AudioRadioType.toString.getter();
  v166 = v57;
  (*(v29 + 8))(v33, v186);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVSgGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVSgGMR);
  v186 = v185[9];
  v58 = (*(v185 + 80) + 32) & ~*(v185 + 80);
  v167 = swift_allocObject();
  v59 = v167 + v58;
  v60 = *MEMORY[0x277D39518];
  v61 = v182;
  v62 = v182 + 104;
  v176 = *(v182 + 104);
  v63 = v141;
  v146 = v60;
  v64 = v173;
  v176(v141);
  v178 = v62;
  Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
  v65 = *(v61 + 16);
  v179 = v61 + 16;
  v180 = v65;
  v66 = v174;
  (v65)(v174, v63, v64);
  MEMORY[0x223DDAEB0](v66);
  MEMORY[0x223DDAED0](v184, v181);
  Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
  v67 = *(v175 + 56);
  v184 = v175 + 56;
  v185 = v67;
  (v67)(v59, 0, 1, v187);
  v181 = *(v61 + 8);
  v181(v63, v64);
  v182 = v61 + 8;
  v68 = v176;
  (v176)(v63, *MEMORY[0x277D394D8], v64);
  v69 = v186;
  Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
  (v180)(v66, v63, v64);
  MEMORY[0x223DDAEB0](v66);
  MEMORY[0x223DDAED0](v143, v142);
  Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
  v70 = v59 + v69;
  v71 = v69;
  v72 = v185;
  (v185)(v70, 0, 1, v187);
  v73 = v181;
  v181(v63, v64);
  (v68)(v63, *MEMORY[0x277D394E0], v64);
  Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
  v74 = v174;
  (v180)(v174, v63, v64);
  MEMORY[0x223DDAEB0](v74);
  MEMORY[0x223DDAED0](v145, v144);
  Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
  v72(v59 + 2 * v71, 0, 1, v187);
  v73(v63, v64);
  v75 = 2 * v71 + v186;
  LODWORD(v145) = *MEMORY[0x277D39500];
  v176(v63);
  Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
  v76 = v174;
  (v180)(v174, v63, v64);
  MEMORY[0x223DDAEB0](v76);
  MEMORY[0x223DDAED0](v148, v147);
  Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
  (v185)(v59 + v75, 0, 1, v187);
  v181(v63, v64);
  v77 = 4 * v186;
  (v176)(v63, *MEMORY[0x277D39488], v64);
  Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
  v78 = v174;
  (v180)(v174, v63, v64);
  MEMORY[0x223DDAEB0](v78);
  MEMORY[0x223DDAED0](v150, v149);
  Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
  v79 = v187;
  (v185)(v59 + v77, 0, 1, v187);
  v181(v63, v64);
  v80 = v77 + v186;
  (v176)(v63, *MEMORY[0x277D39520], v64);
  Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
  (v180)(v78, v63, v64);
  MEMORY[0x223DDAEB0](v78);
  MEMORY[0x223DDAED0](v172, v171);
  Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
  (v185)(v59 + v80, 0, 1, v79);
  v181(v63, v64);
  v172 = v59;
  v81 = v59 + 6 * v186;
  v82 = v162;
  LODWORD(v171) = *MEMORY[0x277D394E8];
  v176(v162);
  v83 = v151;
  if (v151)
  {
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    (v180)(v63, v82, v64);
    MEMORY[0x223DDAEB0](v63);
    MEMORY[0x223DDAED0](v138, v83);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v84 = 0;
    v85 = v63;
  }

  else
  {
    v85 = v63;
    v84 = 1;
  }

  v86 = v187;
  (v185)(v81, v84, 1, v187);
  v181(v82, v64);
  v87 = 8 * v186;
  v88 = 7 * v186;
  (v176)(v85, v146, v64);
  v89 = v172;
  Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
  v90 = v174;
  v180();
  MEMORY[0x223DDAEB0](v90);
  MEMORY[0x223DDAED0](v153, v152);
  Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
  (v185)(v89 + v88, 0, 1, v86);
  v181(v85, v64);
  v91 = v176;
  (v176)(v85, v171, v64);
  Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
  (v180)(v90, v85, v64);
  v92 = v90;
  v93 = v64;
  MEMORY[0x223DDAEB0](v92);
  MEMORY[0x223DDAED0](v155, v154);
  Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
  (v185)(v89 + v87, 0, 1, v187);
  v181(v85, v64);
  v94 = v87 + v186;
  (v91)(v85, v171, v64);
  Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
  v95 = v174;
  (v180)(v174, v85, v64);
  v96 = v95;
  MEMORY[0x223DDAEB0](v95);
  MEMORY[0x223DDAED0](v157, v156);
  Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
  v97 = v187;
  (v185)(v89 + v94, 0, 1, v187);
  v181(v85, v64);
  v98 = v186;
  (v176)(v85, v145, v64);
  Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
  v99 = v96;
  (v180)(v96, v85, v93);
  v100 = v96;
  v101 = v93;
  MEMORY[0x223DDAEB0](v100);
  MEMORY[0x223DDAED0](v159, v158);
  Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
  (v185)(v89 + 10 * v98, 0, 1, v97);
  v181(v85, v93);
  v102 = v89 + 11 * v98;
  v103 = v176;
  (v176)(v85, *MEMORY[0x277D39528], v93);
  Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
  (v180)(v99, v85, v93);
  MEMORY[0x223DDAEB0](v99);
  MEMORY[0x223DDAED0](v161, v160);
  Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
  (v185)(v102, 0, 1, v187);
  v181(v85, v93);
  v104 = v89 + 12 * v186;
  v105 = *MEMORY[0x277D394A0];
  v103(v85, v105, v101);
  Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
  v106 = v180;
  (v180)(v99, v85, v101);
  MEMORY[0x223DDAEB0](v99);
  MEMORY[0x223DDAED0](v164, v163);
  Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
  (v185)(v104, 0, 1, v187);
  v181(v85, v101);
  v107 = v89 + 13 * v186;
  v108 = v168;
  LODWORD(v174) = v105;
  v103(v168, v105, v101);
  v109 = v85;
  v110 = v165;
  if (v165)
  {
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    (v106)(v85, v108, v173);
    MEMORY[0x223DDAEB0](v85);
    MEMORY[0x223DDAED0](v139, v110);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v111 = 0;
    v112 = v169;
  }

  else
  {
    v112 = v169;
    v111 = 1;
  }

  v113 = 1;
  (v185)(v107, v111, 1, v187);
  v114 = v173;
  v181(v108, v173);
  v115 = v172 + 14 * v186;
  (v176)(v112, v174, v114);
  v116 = v166;
  if (v166)
  {
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    (v180)(v109, v112, v173);
    MEMORY[0x223DDAEB0](v109);
    MEMORY[0x223DDAED0](v140, v116);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v113 = 0;
  }

  v117 = v115;
  v118 = v187;
  (v185)(v117, v113, 1, v187);
  v181(v112, v173);
  v119 = (v175 + 48);
  v120 = (v175 + 8);
  v182 = v175 + 32;
  v121 = MEMORY[0x277D84F90];
  v122 = 15;
  v123 = v172;
  v124 = v183;
  do
  {
    outlined init with copy of Apple_Parsec_Siri_V2alpha_LibrarySearchTerm?(v123, v13);
    outlined init with copy of Apple_Parsec_Siri_V2alpha_LibrarySearchTerm?(v13, v7);
    v126 = *v119;
    if ((*v119)(v7, 1, v118) == 1)
    {
      outlined destroy of Apple_Parsec_Siri_V2alpha_LibrarySearchTerm?(v13);
      v125 = v7;
LABEL_13:
      outlined destroy of Apple_Parsec_Siri_V2alpha_LibrarySearchTerm?(v125);
      (v185)(v124, 1, 1, v118);
LABEL_14:
      outlined destroy of Apple_Parsec_Siri_V2alpha_LibrarySearchTerm?(v124);
      goto LABEL_15;
    }

    v127 = MEMORY[0x223DDAEC0]();
    v129 = v128;
    (*v120)(v7, v187);

    v130 = HIBYTE(v129) & 0xF;
    v131 = v127 & 0xFFFFFFFFFFFFLL;
    v118 = v187;
    v132 = (v129 & 0x2000000000000000) == 0;
    v124 = v183;
    if (v132)
    {
      v130 = v131;
    }

    v125 = v13;
    if (!v130)
    {
      goto LABEL_13;
    }

    outlined init with take of Apple_Parsec_Siri_V2alpha_LibrarySearchTerm?(v13, v183);
    if (v126(v124, 1, v118) == 1)
    {
      goto LABEL_14;
    }

    v133 = v124;
    v134 = *v182;
    (*v182)(v177, v133, v118);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v121 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v121 + 2) + 1, 1, v121);
    }

    v136 = *(v121 + 2);
    v135 = *(v121 + 3);
    if (v136 >= v135 >> 1)
    {
      v121 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v135 > 1, v136 + 1, 1, v121);
    }

    *(v121 + 2) = v136 + 1;
    v118 = v187;
    v134(&v121[((*(v175 + 80) + 32) & ~*(v175 + 80)) + *(v175 + 72) * v136], v177, v187);
    v124 = v183;
LABEL_15:
    v123 += v186;
    --v122;
  }

  while (v122);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v121;
}

char *static Apple_Parsec_Siri_V2alpha_AudioUnderstanding.makeLibrarySearchTerms(entity:musicTitle:album:artist:podcastTitle:playlistTitle:decade:activity:genre:mood:audiobookAuthor:audiobookTitle:radioStationName:radioStationFrequency:audioRadioType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char *a14, uint64_t a15, char *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char *a22, uint64_t a23, uint64_t a24, uint64_t a25, char *a26, uint64_t a27, char *a28, uint64_t a29, char *a30)
{
  v198 = a8;
  v193 = a7;
  v199 = a6;
  v192 = a5;
  v195 = a4;
  v191 = a3;
  v224 = a1;
  v225 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LibrarySearchTerm();
  v215 = *(v225 - 8);
  v31 = *(v215 + 64);
  MEMORY[0x28223BE20](v225, v32);
  v216 = &v190 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVSgMR);
  v34 = *(v210 - 8);
  v35 = *(v34 + 64);
  v37 = MEMORY[0x28223BE20](v210, v36);
  v39 = &v190 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v37, v40);
  v222 = &v190 - v42;
  MEMORY[0x28223BE20](v41, v43);
  v226 = &v190 - v44;
  v45 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  v46 = *(v45 - 8);
  v47 = *(v46 + 64);
  v49 = MEMORY[0x28223BE20](v45, v48);
  v208 = &v190 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x28223BE20](v49, v51);
  v207 = &v190 - v53;
  v55 = MEMORY[0x28223BE20](v52, v54);
  v206 = &v190 - v56;
  v58 = MEMORY[0x28223BE20](v55, v57);
  v205 = &v190 - v59;
  v61 = MEMORY[0x28223BE20](v58, v60);
  v204 = &v190 - v62;
  v64 = MEMORY[0x28223BE20](v61, v63);
  v211 = &v190 - v65;
  v67 = MEMORY[0x28223BE20](v64, v66);
  v203 = &v190 - v68;
  v70 = MEMORY[0x28223BE20](v67, v69);
  v202 = &v190 - v71;
  v73 = MEMORY[0x28223BE20](v70, v72);
  v200 = &v190 - v74;
  v76 = MEMORY[0x28223BE20](v73, v75);
  v197 = &v190 - v77;
  v79 = MEMORY[0x28223BE20](v76, v78);
  v196 = &v190 - v80;
  v82 = MEMORY[0x28223BE20](v79, v81);
  v213 = &v190 - v83;
  v85 = MEMORY[0x28223BE20](v82, v84);
  v194 = &v190 - v86;
  v88 = MEMORY[0x28223BE20](v85, v87);
  v90 = &v190 - v89;
  v92 = MEMORY[0x28223BE20](v88, v91);
  v94 = &v190 - v93;
  MEMORY[0x28223BE20](v92, v95);
  v97 = &v190 - v96;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVSgGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVSgGMR);
  v98 = v46;
  v99 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v217 = *(v34 + 72);
  v209 = swift_allocObject();
  v100 = v209 + v99;
  v101 = *(v98 + 104);
  LODWORD(v201) = *MEMORY[0x277D39518];
  v220 = v101;
  v221 = (v98 + 104);
  v101(v97);
  if (a2)
  {

    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    (*(v98 + 16))(v94, v97, v45);
    MEMORY[0x223DDAEB0](v94);
    MEMORY[0x223DDAED0](v224, a2);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v102 = 0;
  }

  else
  {
    v102 = 1;
  }

  v103 = v94;
  v104 = 1;
  v223 = *(v215 + 56);
  v224 = v215 + 56;
  v223(v100, v102, 1, v225);
  v218 = *(v98 + 8);
  v219 = v98 + 8;
  v218(v97, v45);
  (v220)(v90, *MEMORY[0x277D394D8], v45);
  v105 = v195;
  if (v195)
  {

    v106 = v217;
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    (*(v98 + 16))(v94, v90, v45);
    MEMORY[0x223DDAEB0](v94);
    MEMORY[0x223DDAED0](v191, v105);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v104 = 0;
  }

  else
  {
    v106 = v217;
  }

  v107 = v213;
  v108 = 1;
  v223(v100 + v106, v104, 1, v225);
  v218(v90, v45);
  v109 = v100 + 2 * v106;
  v110 = v194;
  (v220)(v194, *MEMORY[0x277D394E0], v45);
  v213 = v103;
  v214 = v98;
  v111 = v199;
  if (v199)
  {

    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    (*(v98 + 16))(v103, v110, v45);
    MEMORY[0x223DDAEB0](v103);
    MEMORY[0x223DDAED0](v192, v111);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v108 = 0;
  }

  v112 = 1;
  v113 = v225;
  v223(v109, v108, 1, v225);
  v218(v110, v45);
  v114 = 3 * v217;
  LODWORD(v199) = *MEMORY[0x277D39500];
  v220(v107);
  v115 = v198;
  if (v198)
  {

    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    v116 = v213;
    (*(v214 + 16))(v213, v107, v45);
    MEMORY[0x223DDAEB0](v116);
    MEMORY[0x223DDAED0](v193, v115);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v113 = v225;
    v112 = 0;
  }

  v198 = a12;
  v117 = 1;
  v223(v100 + v114, v112, 1, v113);
  v218(v107, v45);
  v118 = v100 + 4 * v217;
  v119 = v196;
  (v220)(v196, *MEMORY[0x277D39488], v45);
  if (a10)
  {

    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    v120 = v213;
    v121 = v214;
    (*(v214 + 16))(v213, v119, v45);
    MEMORY[0x223DDAEB0](v120);
    MEMORY[0x223DDAED0](a9, a10);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v117 = 0;
  }

  else
  {
    v121 = v214;
  }

  v122 = v119;
  v123 = v197;
  v197 = a14;
  v124 = 1;
  v125 = v225;
  v223(v118, v117, 1, v225);
  v218(v122, v45);
  v126 = 5 * v217;
  (v220)(v123, *MEMORY[0x277D39520], v45);
  if (v198)
  {
    v127 = v198;

    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    v128 = v213;
    (*(v121 + 16))(v213, v123, v45);
    MEMORY[0x223DDAEB0](v128);
    MEMORY[0x223DDAED0](a11, v127);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v125 = v225;
    v124 = 0;
  }

  v196 = a16;
  v129 = 1;
  v223(v100 + v126, v124, 1, v125);
  v218(v123, v45);
  v130 = v100 + 6 * v217;
  v131 = v200;
  LODWORD(v198) = *MEMORY[0x277D394E8];
  v220(v200);
  v132 = v197;
  if (v197)
  {

    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    v133 = v213;
    (*(v121 + 16))(v213, v131, v45);
    MEMORY[0x223DDAEB0](v133);
    MEMORY[0x223DDAED0](a13, v132);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v129 = 0;
  }

  else
  {
    v133 = v213;
  }

  v134 = 1;
  v223(v130, v129, 1, v225);
  v218(v131, v45);
  v135 = v100 - v217 + 8 * v217;
  v136 = v202;
  (v220)(v202, v201, v45);
  v137 = v196;
  if (v196)
  {

    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    (*(v214 + 16))(v133, v136, v45);
    MEMORY[0x223DDAEB0](v133);
    MEMORY[0x223DDAED0](a15, v137);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v134 = 0;
  }

  v201 = a20;
  v138 = 1;
  v223(v135, v134, 1, v225);
  v218(v136, v45);
  v139 = v100 + 8 * v217;
  v140 = v203;
  v141 = v198;
  (v220)(v203, v198, v45);
  if (a18)
  {

    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    (*(v214 + 16))(v133, v140, v45);
    MEMORY[0x223DDAEB0](v133);
    MEMORY[0x223DDAED0](a17, a18);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v138 = 0;
  }

  v202 = a22;
  v142 = 1;
  v143 = v225;
  v223(v139, v138, 1, v225);
  v218(v140, v45);
  v144 = 9 * v217;
  v145 = v211;
  (v220)(v211, v141, v45);
  v146 = v201;
  if (v201)
  {

    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    v147 = v213;
    (*(v214 + 16))(v213, v145, v45);
    MEMORY[0x223DDAEB0](v147);
    MEMORY[0x223DDAED0](a19, v146);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v145 = v211;
    v143 = v225;
    v142 = 0;
  }

  v148 = 1;
  v223(v100 + v144, v142, 1, v143);
  v218(v145, v45);
  v149 = v100 + 10 * v217;
  v150 = v204;
  (v220)(v204, v199, v45);
  v151 = v202;
  if (v202)
  {

    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    v152 = v213;
    (*(v214 + 16))(v213, v150, v45);
    MEMORY[0x223DDAEB0](v152);
    MEMORY[0x223DDAED0](a21, v151);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v148 = 0;
  }

  else
  {
    v152 = v213;
  }

  v153 = v205;
  v211 = a26;
  v154 = 1;
  v223(v149, v148, 1, v225);
  v218(v150, v45);
  v155 = v217;
  (v220)(v153, *MEMORY[0x277D39528], v45);
  if (a24)
  {

    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    (*(v214 + 16))(v152, v153, v45);
    MEMORY[0x223DDAEB0](v152);
    MEMORY[0x223DDAED0](a23, a24);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v154 = 0;
  }

  v205 = a28;
  v156 = 1;
  v223(v100 + 11 * v155, v154, 1, v225);
  v218(v153, v45);
  v157 = v100 + 12 * v155;
  v158 = *MEMORY[0x277D394A0];
  v159 = v206;
  (v220)(v206, v158, v45);
  v160 = v211;
  if (v211)
  {

    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    (*(v214 + 16))(v152, v159, v45);
    MEMORY[0x223DDAEB0](v152);
    MEMORY[0x223DDAED0](a25, v160);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v156 = 0;
  }

  v211 = a30;
  v161 = 1;
  v223(v157, v156, 1, v225);
  v218(v159, v45);
  v162 = v217;
  v163 = v207;
  (v220)(v207, v158, v45);
  v164 = v205;
  if (v205)
  {

    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    (*(v214 + 16))(v152, v163, v45);
    MEMORY[0x223DDAEB0](v152);
    MEMORY[0x223DDAED0](a27, v164);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v161 = 0;
  }

  v165 = 1;
  v223(v100 + 13 * v162, v161, 1, v225);
  v218(v163, v45);
  v166 = v208;
  (v220)(v208, v158, v45);
  v167 = v211;
  v212 = v100;
  if (v211)
  {
    v168 = v214;

    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    v169 = v213;
    (*(v168 + 16))(v213, v166, v45);
    MEMORY[0x223DDAEB0](v169);
    MEMORY[0x223DDAED0](a29, v167);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v165 = 0;
  }

  v170 = v222;
  v171 = v225;
  v223(v100 + 14 * v162, v165, 1, v225);
  v218(v166, v45);
  v172 = (v215 + 48);
  v173 = (v215 + 8);
  v221 = (v215 + 32);
  v174 = MEMORY[0x277D84F90];
  v175 = 15;
  v176 = v212;
  do
  {
    v177 = v226;
    outlined init with copy of Apple_Parsec_Siri_V2alpha_LibrarySearchTerm?(v176, v226);
    outlined init with copy of Apple_Parsec_Siri_V2alpha_LibrarySearchTerm?(v177, v39);
    v178 = *v172;
    if ((*v172)(v39, 1, v171) == 1)
    {
      outlined destroy of Apple_Parsec_Siri_V2alpha_LibrarySearchTerm?(v39);
LABEL_38:
      outlined destroy of Apple_Parsec_Siri_V2alpha_LibrarySearchTerm?(v226);
      v223(v170, 1, 1, v171);
LABEL_39:
      outlined destroy of Apple_Parsec_Siri_V2alpha_LibrarySearchTerm?(v170);
      goto LABEL_40;
    }

    v179 = MEMORY[0x223DDAEC0]();
    v181 = v180;
    (*v173)(v39, v225);

    v182 = HIBYTE(v181) & 0xF;
    v183 = v179 & 0xFFFFFFFFFFFFLL;
    v171 = v225;
    v184 = (v181 & 0x2000000000000000) == 0;
    v170 = v222;
    if (v184)
    {
      v182 = v183;
    }

    if (!v182)
    {
      goto LABEL_38;
    }

    outlined init with take of Apple_Parsec_Siri_V2alpha_LibrarySearchTerm?(v226, v222);
    if (v178(v170, 1, v171) == 1)
    {
      goto LABEL_39;
    }

    v185 = v170;
    v186 = *v221;
    (*v221)(v216, v185, v171);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v174 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v174 + 2) + 1, 1, v174);
    }

    v188 = *(v174 + 2);
    v187 = *(v174 + 3);
    if (v188 >= v187 >> 1)
    {
      v174 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v187 > 1, v188 + 1, 1, v174);
    }

    *(v174 + 2) = v188 + 1;
    v171 = v225;
    v186(&v174[((*(v215 + 80) + 32) & ~*(v215 + 80)) + *(v215 + 72) * v188], v216, v225);
    v170 = v222;
LABEL_40:
    v176 += v162;
    --v175;
  }

  while (v175);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v174;
}

uint64_t outlined init with copy of Apple_Parsec_Siri_V2alpha_LibrarySearchTerm?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Apple_Parsec_Siri_V2alpha_LibrarySearchTerm?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of Apple_Parsec_Siri_V2alpha_LibrarySearchTerm?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

Swift::Bool __swiftcall AudioIntent.hasResolvedReference()()
{
  v1 = (*(v0 + 256))();
  if (v1)
  {
  }

  return v1 != 0;
}

Swift::Bool __swiftcall AudioIntent.isReferringToCurrentlyPlayingForAdd()()
{
  v2 = v1;
  v3 = v0;
  v4 = (*(v1 + 280))();
  if (v4 == 17)
  {
    return 0;
  }

  if (CommonAudio.Verb.rawValue.getter(v4) == 0x657461647075 && v6 == 0xE600000000000000)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(v2 + 256))(v3, v2))
  {

    if (AudioIntent.isWithoutTitlesAndArtist()())
    {
      return 1;
    }
  }

  return AudioIntent.isWithoutTitlesAndArtistAndGenre()();
}

Swift::Bool __swiftcall AudioIntent.isWithoutTitlesAndArtist()()
{
  v2 = v1;
  v3 = v0;
  v4 = *((*(v1 + 136))() + 16);

  if (v4)
  {
    return 0;
  }

  v5 = *(v2[25](v3, v2) + 16);

  if (v5)
  {
    return 0;
  }

  v6 = *(v2[12](v3, v2) + 16);

  if (v6)
  {
    return 0;
  }

  v8 = *(v2[2](v3, v2) + 16);

  return v8 == 0;
}

Swift::Bool __swiftcall AudioIntent.isWithoutTitlesAndArtistAndGenre()()
{
  v2 = v1;
  v3 = v0;
  if (AudioIntent.isWithoutTitlesAndArtist()())
  {
    v4 = *((*(v2 + 152))(v3, v2) + 16);

    if (!v4)
    {
      v7 = (*(v2 + 168))(v3, v2);
      if (v7 == 28)
      {
        v5 = 1;
        return v5 & 1;
      }

      if (CommonAudio.MediaType.rawValue.getter(v7) != 0x65726E6567 || v8 != 0xE500000000000000)
      {
        v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v5 = v10 ^ 1;
        return v5 & 1;
      }
    }
  }

  v5 = 0;
  return v5 & 1;
}

Swift::Bool __swiftcall AudioIntent.isBeats1Only()()
{
  if (AudioIntent.hasBeats1ItemOrRadioStationNameOnly()())
  {
    return 1;
  }

  return AudioIntent.hasBeats1NounOnly()();
}

Swift::Bool __swiftcall AudioIntent.hasBeats1ItemOrRadioStationNameOnly()()
{
  v2 = v1;
  v3 = v0;
  v4 = (*(v1 + 136))();
  if (v4[2])
  {
    v6 = v4[4];
    v5 = v4[5];
  }

  else
  {
    v6 = 0;
    v5 = 0xE000000000000000;
  }

  v7 = (*(v2 + 232))(v3, v2);
  if (v7[2])
  {
    v9 = v7[4];
    v8 = v7[5];
  }

  else
  {
    v9 = 0;
    v8 = 0xE000000000000000;
  }

  v10 = v5 & 0x2000000000000000;
  v11 = HIBYTE(v5) & 0xF;
  v12 = v6 & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v13 = HIBYTE(v5) & 0xF;
  }

  else
  {
    v13 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
  }

  else
  {

    v10 = v8 & 0x2000000000000000;
    v11 = HIBYTE(v8) & 0xF;
    v12 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    v14 = v11;
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    v15 = String.lowercased()();

    v16 = String.lowercased()();
    if (v15._countAndFlagsBits == v16._countAndFlagsBits && v15._object == v16._object)
    {
      v17 = 1;
    }

    else
    {
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

Swift::Bool __swiftcall AudioIntent.hasBeats1NounOnly()()
{
  v2 = v1;
  v3 = v0;
  v4 = (*(v1 + 136))();
  if (v4[2])
  {
    v6 = v4[4];
    v5 = v4[5];

    v7 = v6 & 0xFFFFFFFFFFFFLL;
  }

  else
  {

    v7 = 0;
    v5 = 0xE000000000000000;
  }

  v8 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v8 = v7;
  }

  if (v8)
  {
    goto LABEL_7;
  }

  v10 = (*(v2 + 208))(v3, v2);
  if (v10 <= 1)
  {
    if (v10)
    {
      v9 = 1;
      goto LABEL_14;
    }

LABEL_12:
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
LABEL_14:

    return v9 & 1;
  }

  if (v10 == 2)
  {
    goto LABEL_12;
  }

LABEL_7:
  v9 = 0;
  return v9 & 1;
}

Swift::Bool __swiftcall AudioIntent.isAddToUpNext()()
{
  v2 = v1;
  v3 = v0;
  v4 = *(v1 + 280);
  v5 = v4();
  if (v5 != 17)
  {
    if (CommonAudio.Verb.rawValue.getter(v5) == 2036427888 && v8 == 0xE400000000000000)
    {
LABEL_16:

      goto LABEL_17;
    }

    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      goto LABEL_17;
    }
  }

  v6 = (v4)(v3, v2);
  if (v6 == 17)
  {
    return 0;
  }

  if (CommonAudio.Verb.rawValue.getter(v6) == 0x657461647075 && v11 == 0xE600000000000000)
  {
    goto LABEL_16;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v13 & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  v14 = (*(v2 + 104))(v3, v2);
  v15 = specialized Set.contains(_:)(3, v14);

  return v15 & 1;
}

Swift::Bool __swiftcall AudioIntent.hasAttribute(_:)(SiriInformationSearch::CommonAudio::Attribute a1)
{
  v3 = (*(v1 + 104))();
  v4 = specialized Set.contains(_:)(a1, v3);

  return v4 & 1;
}

BOOL AudioIntent.hasAnyAttribute(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 104))(a2, a3);
  LOBYTE(a1) = specialized Set.isDisjoint(with:)(a1, v4);

  return (a1 & 1) == 0;
}

uint64_t specialized Set.isDisjoint(with:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (v2 >= v3)
  {
    v5 = a2;
  }

  else
  {
    v5 = a1;
  }

  v6 = v4 + 56;
  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  v30 = v5 + 56;

  v12 = 0;
LABEL_13:
  if (v9)
  {
    v13 = v9;
    goto LABEL_19;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return 1;
    }

    v13 = *(v6 + 8 * v14);
    ++v12;
    if (v13)
    {
      v12 = v14;
LABEL_19:
      v9 = (v13 - 1) & v13;
      if (*(v5 + 16))
      {
        v15 = *(*(v4 + 48) + (__clz(__rbit64(v13)) | (v12 << 6)));
        v16 = *(v5 + 40);
        Hasher.init(_seed:)();
        v29 = v15;
        String.hash(into:)();

        result = Hasher._finalize()();
        v17 = -1 << *(v5 + 32);
        v18 = result & ~v17;
        if ((*(v30 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
        {
          v27 = v9;
          v28 = v4;
          v19 = ~v17;
          while (2)
          {
            v20 = 0xEA00000000007473;
            v21 = 0x697472416D6F7266;
            switch(*(*(v5 + 48) + v18))
            {
              case 1:
                v20 = 0xE800000000000000;
                v21 = 0x676E6F536D6F7266;
                break;
              case 2:
                v21 = 0x75626C416D6F7266;
                v20 = 0xE90000000000006DLL;
                break;
              case 3:
                v20 = 0xE800000000000000;
                v21 = 0x7478654E79616C70;
                break;
              case 4:
                v20 = 0xE700000000000000;
                v21 = 0x776F4E79616C70;
                break;
              case 5:
                v20 = 0xE800000000000000;
                v21 = 0x7473614C79616C70;
                break;
              case 6:
                v20 = 0xE800000000000000;
                v21 = 0x7974696E69666661;
                break;
              case 7:
                v21 = 0x6E656D6D6F636572;
                v20 = 0xEB00000000646564;
                break;
              case 8:
                v20 = 0xE900000000000079;
                v21 = 0x7265766F63736964;
                break;
              case 9:
                v21 = 0xD000000000000018;
                v20 = 0x80000002234D9AC0;
                break;
              case 0xA:
                v20 = 0xE400000000000000;
                v21 = 1954047342;
                break;
              case 0xB:
                v20 = 0xE500000000000000;
                v21 = 0x64656D616ELL;
                break;
              case 0xC:
                v20 = 0xE800000000000000;
                v21 = 0x73756F6976657270;
                break;
              case 0xD:
                v21 = 0x44657361656C6572;
                v20 = 0xEB00000000657461;
                break;
              case 0xE:
                v20 = 0xE800000000000000;
                v21 = 0x6E6F697461727564;
                break;
              default:
                break;
            }

            v22 = 0x697472416D6F7266;
            v23 = 0xEA00000000007473;
            switch(v29)
            {
              case 1:
                v23 = 0xE800000000000000;
                if (v21 == 0x676E6F536D6F7266)
                {
                  goto LABEL_64;
                }

                goto LABEL_65;
              case 2:
                v23 = 0xE90000000000006DLL;
                if (v21 != 0x75626C416D6F7266)
                {
                  goto LABEL_65;
                }

                goto LABEL_64;
              case 3:
                v23 = 0xE800000000000000;
                if (v21 != 0x7478654E79616C70)
                {
                  goto LABEL_65;
                }

                goto LABEL_64;
              case 4:
                v23 = 0xE700000000000000;
                if (v21 != 0x776F4E79616C70)
                {
                  goto LABEL_65;
                }

                goto LABEL_64;
              case 5:
                v23 = 0xE800000000000000;
                if (v21 != 0x7473614C79616C70)
                {
                  goto LABEL_65;
                }

                goto LABEL_64;
              case 6:
                v23 = 0xE800000000000000;
                if (v21 != 0x7974696E69666661)
                {
                  goto LABEL_65;
                }

                goto LABEL_64;
              case 7:
                v24 = 0x6E656D6D6F636572;
                v25 = 6579556;
                goto LABEL_58;
              case 8:
                v23 = 0xE900000000000079;
                if (v21 != 0x7265766F63736964)
                {
                  goto LABEL_65;
                }

                goto LABEL_64;
              case 9:
                v23 = 0x80000002234D9AC0;
                if (v21 != 0xD000000000000018)
                {
                  goto LABEL_65;
                }

                goto LABEL_64;
              case 10:
                v23 = 0xE400000000000000;
                v22 = 1954047342;
                goto LABEL_63;
              case 11:
                v23 = 0xE500000000000000;
                if (v21 != 0x64656D616ELL)
                {
                  goto LABEL_65;
                }

                goto LABEL_64;
              case 12:
                v23 = 0xE800000000000000;
                if (v21 != 0x73756F6976657270)
                {
                  goto LABEL_65;
                }

                goto LABEL_64;
              case 13:
                v24 = 0x44657361656C6572;
                v25 = 6648929;
LABEL_58:
                v23 = v25 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
                if (v21 != v24)
                {
                  goto LABEL_65;
                }

                goto LABEL_64;
              case 14:
                v23 = 0xE800000000000000;
                if (v21 != 0x6E6F697461727564)
                {
                  goto LABEL_65;
                }

                goto LABEL_64;
              default:
LABEL_63:
                if (v21 != v22)
                {
                  goto LABEL_65;
                }

LABEL_64:
                if (v20 == v23)
                {

                  return 0;
                }

LABEL_65:
                v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v26)
                {

                  return 0;
                }

                v18 = (v18 + 1) & v19;
                if ((*(v30 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
                {
                  continue;
                }

                v9 = v27;
                v4 = v28;
                break;
            }

            break;
          }
        }
      }

      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t DomainWarmup.__allocating_init(warmupClients:)(uint64_t a1)
{
  v2 = swift_allocObject();
  DomainWarmup.init(warmupClients:)(a1);
  return v2;
}

void *DomainWarmup.init(warmupClients:)(uint64_t a1)
{
  v24 = a1;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v22 = *(v2 - 8);
  v23 = v2;
  v3 = *(v22 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v21 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6, v8);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue();
  v20 = "ationSearch14FeatureChecker";
  (*(v13 + 104))(v17, *MEMORY[0x277D851C8], v12);
  static OS_dispatch_queue.global(qos:)();
  (*(v13 + 8))(v17, v12);
  static DispatchQoS.unspecified.getter();
  v18 = MEMORY[0x277D84F90];
  v25 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v22 + 104))(v21, *MEMORY[0x277D85260], v23);
  v1[2] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v1[3] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Say20SiriInformationTypes15WarmupComponentOGTt0g5Tf4g_n(v18);
  v1[4] = v24;
  v1[5] = 0;
  return v1;
}

uint64_t DomainWarmup.warmupFirstExperience(request:response:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.pommes);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2232BB000, v11, v12, "DomainWarmup#warmupFirstExperience", v13, 2u);
    MEMORY[0x223DE0F80](v13, -1, -1);
  }

  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.queryConfidenceScore.getter();
  if (v14 <= 0.99)
  {
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2232BB000, v20, v21, "DomainWarmup#warmupFirstExperience recieved low confidence PommesResponse. Skipping warmup", v22, 2u);
      MEMORY[0x223DE0F80](v22, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  else
  {
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
    v15 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.domainName.getter();
    v17 = v16;
    (*(v5 + 8))(v9, v4);
    v18 = (*(*v2 + 184))(a1, v15, v17);

    return v18;
  }
}

uint64_t DomainWarmup.setServiceHelper(_:)(uint64_t a1)
{
  v2 = *(v1 + 40);
  *(v1 + 40) = a1;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

uint64_t DomainWarmup.warmup(request:domain:)()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay20SiriInformationTypes15WarmupComponentOGMd, _sSay20SiriInformationTypes15WarmupComponentOGMR);
  OS_dispatch_queue.sync<A>(execute:)();
  return v3;
}

void closure #1 in DomainWarmup.warmup(request:domain:)(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
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
    v13 = swift_slowAlloc();
    v40[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v40);
    _os_log_impl(&dword_2232BB000, v10, v11, "DomainWarmup#warmup %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x223DE0F80](v13, -1, -1);
    MEMORY[0x223DE0F80](v12, -1, -1);
  }

  v14 = a3[4];
  if (*(v14 + 16))
  {
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if (v16)
    {
      outlined init with copy of AppDataProviding(*(v14 + 56) + 40 * v15, v39);
      outlined init with take of DomainWarmupHandling(v39, v40);
      swift_beginAccess();
      v17 = a3[3];
      if (*(v17 + 16))
      {
        v18 = a3[3];

        v19 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
        if (v20)
        {
          v21 = *(*(v17 + 56) + 8 * v19);

          v22 = Logger.logObject.getter();
          v23 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v22, v23))
          {
            v24 = swift_slowAlloc();
            v25 = swift_slowAlloc();
            v38 = v25;
            *v24 = 136315138;
            *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v38);
            _os_log_impl(&dword_2232BB000, v22, v23, "DomainWarmup#warmup : Warmup already called for %s", v24, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v25);
            MEMORY[0x223DE0F80](v25, -1, -1);
            MEMORY[0x223DE0F80](v24, -1, -1);
          }

          *a5 = v21;
          goto LABEL_17;
        }
      }

      v30 = v41;
      v31 = v42;
      __swift_project_boxed_opaque_existential_1(v40, v41);
      v32 = a3[5];
      v33 = *(v31 + 8);
      swift_unknownObjectRetain();
      v34 = v33(a4, v32, v30, v31);
      swift_unknownObjectRelease();
      swift_beginAccess();

      v35 = a3[3];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v43 = a3[3];
      a3[3] = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v34, a1, a2, isUniquelyReferenced_nonNull_native);

      a3[3] = v43;
      swift_endAccess();
      *a5 = v34;
LABEL_17:
      __swift_destroy_boxed_opaque_existential_1(v40);
      return;
    }
  }

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v40[0] = v29;
    *v28 = 136315138;
    *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v40);
    _os_log_impl(&dword_2232BB000, v26, v27, "DomainWarmup#warmup warmup handler not found for domain: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x223DE0F80](v29, -1, -1);
    MEMORY[0x223DE0F80](v28, -1, -1);
  }

  *a5 = MEMORY[0x277D84F90];
}

Swift::Bool __swiftcall DomainWarmup.warmupCalled(for:)(Swift::String a1)
{
  v2 = *(v1 + 16);
  OS_dispatch_queue.sync<A>(execute:)();
  return v4;
}

uint64_t closure #1 in DomainWarmup.warmupCalled(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  result = swift_beginAccess();
  if (*(*(a1 + 24) + 16))
  {

    specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  *a4 = v10 & 1;
  return result;
}

Swift::Void __swiftcall DomainWarmup.reset()()
{
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  *(v2 + 16) = partial apply for closure #1 in DomainWarmup.reset();
  *(v2 + 24) = v0;
  v4[4] = partial apply for thunk for @callee_guaranteed () -> ();
  v4[5] = v2;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = thunk for @escaping @callee_guaranteed () -> ();
  v4[3] = &block_descriptor_20;
  v3 = _Block_copy(v4);

  dispatch_sync(v1, v3);
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }
}

uint64_t closure #1 in DomainWarmup.reset()(uint64_t a1)
{
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
    _os_log_impl(&dword_2232BB000, v3, v4, "DomainWarmup clearing warmup state", v5, 2u);
    MEMORY[0x223DE0F80](v5, -1, -1);
  }

  swift_beginAccess();
  v6 = *(a1 + 24);
  *(a1 + 24) = MEMORY[0x277D84F98];
}

uint64_t DomainWarmup.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t DomainWarmup.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

BOOL AudioQuery.removeLibraryGenreCandidates.getter()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioNoun();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v5, *MEMORY[0x277D39108], v0);
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioNoun and conformance Apple_Parsec_Siri_V2alpha_AudioNoun(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioNoun and conformance Apple_Parsec_Siri_V2alpha_AudioNoun, MEMORY[0x277D39118]);
  v6 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v1 + 8))(v5, v0);
  return (v6 & 1) == 0;
}

uint64_t AudioQuery.requestedType.getter@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t AudioQuery.appName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_appName);
  v2 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_appName + 8);

  return v1;
}

uint64_t AudioQuery.utterance.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_utterance);
  v2 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_utterance + 8);

  return v1;
}

uint64_t AudioQuery.isRequestingAppleMusic.getter()
{
  if (!*(v0 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_appName + 8))
  {
    return 0;
  }

  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_appName);
  v2 = String.lowercased()();
  if (v2._countAndFlagsBits == 0x636973756DLL && v2._object == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return v4 & 1;
  }
}

uint64_t AudioQuery.__allocating_init(entity:musicTitle:album:artist:podcastTitle:playlistTitle:decade:activity:genre:mood:audiobookAuthor:audiobookTitle:radioStationName:radioStationFrequency:audioRadioType:requestType:audioSort:verb:noun:appName:modifier:hasNonExplicitReference:)(void (*a1)(unint64_t, uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char *a22, uint64_t a23, char *a24, uint64_t a25, uint64_t a26, uint64_t a27, char *a28, uint64_t a29, uint64_t a30, char *a31, char *a32, char *a33, char *a34, char *a35, char *a36, uint64_t a37, unsigned __int8 a38)
{
  v232 = a8;
  v224 = a7;
  v230 = a6;
  v225 = a5;
  v260 = a4;
  v223 = a3;
  v269 = a1;
  v270 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioModifierOSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioModifierOSgMR);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8, v40);
  v245 = &v222 - v41;
  v247 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioNoun();
  v246 = *(v247 - 8);
  v42 = *(v246 + 64);
  MEMORY[0x28223BE20](v247, v43);
  v243 = &v222 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v256 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioVerb();
  v244 = *(v256 - 8);
  v45 = *(v244 + 64);
  MEMORY[0x28223BE20](v256, v46);
  v241 = &v222 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v255 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioSort();
  v242 = *(v255 - 8);
  v48 = *(v242 + 64);
  MEMORY[0x28223BE20](v255, v49);
  v240 = &v222 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
  v253 = *(v51 - 8);
  v254 = v51;
  v52 = *(v253 + 64);
  MEMORY[0x28223BE20](v51, v53);
  v252 = &v222 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v272 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LibrarySearchTerm();
  v259 = *(v272 - 8);
  v55 = *(v259 + 64);
  MEMORY[0x28223BE20](v272, v56);
  v263 = &v222 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVSgMR);
  v58 = *(v239 - 8);
  v59 = *(v58 + 64);
  v61 = MEMORY[0x28223BE20](v239, v60);
  v271 = &v222 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = MEMORY[0x28223BE20](v61, v63);
  v66 = &v222 - v65;
  MEMORY[0x28223BE20](v64, v67);
  v267 = &v222 - v68;
  v69 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  v70 = *(v69 - 8);
  v71 = *(v70 + 64);
  v73 = MEMORY[0x28223BE20](v69, v72);
  v237 = &v222 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = MEMORY[0x28223BE20](v73, v75);
  v236 = &v222 - v77;
  v79 = MEMORY[0x28223BE20](v76, v78);
  v250 = &v222 - v80;
  v82 = MEMORY[0x28223BE20](v79, v81);
  v249 = &v222 - v83;
  v85 = MEMORY[0x28223BE20](v82, v84);
  v235 = &v222 - v86;
  v88 = MEMORY[0x28223BE20](v85, v87);
  v234 = &v222 - v89;
  v91 = MEMORY[0x28223BE20](v88, v90);
  v258 = &v222 - v92;
  v94 = MEMORY[0x28223BE20](v91, v93);
  v233 = &v222 - v95;
  v97 = MEMORY[0x28223BE20](v94, v96);
  v231 = &v222 - v98;
  v100 = MEMORY[0x28223BE20](v97, v99);
  v228 = &v222 - v101;
  v103 = MEMORY[0x28223BE20](v100, v102);
  v257 = &v222 - v104;
  v106 = MEMORY[0x28223BE20](v103, v105);
  v227 = &v222 - v107;
  v109 = MEMORY[0x28223BE20](v106, v108);
  v226 = &v222 - v110;
  v112 = MEMORY[0x28223BE20](v109, v111);
  v114 = &v222 - v113;
  v116 = MEMORY[0x28223BE20](v112, v115);
  v118 = &v222 - v117;
  MEMORY[0x28223BE20](v116, v119);
  v121 = &v222 - v120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVSgGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVSgGMR);
  v122 = *(v58 + 72);
  v123 = v70;
  v124 = (*(v58 + 80) + 32) & ~*(v58 + 80);
  v238 = swift_allocObject();
  v125 = v238 + v124;
  v126 = *(v123 + 104);
  v229 = *MEMORY[0x277D39518];
  v264 = v126;
  v262 = v123 + 104;
  v126(v121);
  v261 = v118;
  if (v270)
  {
    v127 = v270;
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    (*(v123 + 16))(v118, v121, v69);
    MEMORY[0x223DDAEB0](v118);
    MEMORY[0x223DDAED0](v269, v127);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v128 = 0;
  }

  else
  {
    v128 = 1;
  }

  v129 = 1;
  v269 = *(v259 + 56);
  v270 = v259 + 56;
  v269(v125, v128, 1, v272);
  v265 = *(v123 + 8);
  v266 = (v123 + 8);
  (v265)(v121, v69);
  (v264)(v114, *MEMORY[0x277D394D8], v69);
  v130 = v260;
  if (v260)
  {
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    v131 = v261;
    (*(v123 + 16))(v261, v114, v69);
    MEMORY[0x223DDAEB0](v131);
    MEMORY[0x223DDAED0](v223, v130);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v129 = 0;
  }

  v132 = 1;
  v269(v125 + v122, v129, 1, v272);
  (v265)(v114, v69);
  v133 = v226;
  (v264)(v226, *MEMORY[0x277D394E0], v69);
  v260 = v123;
  v134 = v230;
  if (v230)
  {
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    v135 = *(v123 + 16);
    v136 = v261;
    v135(v261, v133, v69);
    MEMORY[0x223DDAEB0](v136);
    MEMORY[0x223DDAED0](v225, v134);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v132 = 0;
  }

  v225 = a10;
  v137 = 1;
  v138 = v272;
  v269(v125 + 2 * v122, v132, 1, v272);
  (v265)(v133, v69);
  v139 = v227;
  LODWORD(v230) = *MEMORY[0x277D39500];
  v264(v227);
  v140 = v232;
  if (v232)
  {
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    v141 = v261;
    (*(v260 + 16))(v261, v139, v69);
    MEMORY[0x223DDAEB0](v141);
    MEMORY[0x223DDAED0](v224, v140);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v138 = v272;
    v137 = 0;
  }

  v142 = 1;
  v269(v125 + 3 * v122, v137, 1, v138);
  (v265)(v139, v69);
  v143 = v257;
  (v264)(v257, *MEMORY[0x277D39488], v69);
  v144 = v225;
  if (v225)
  {
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    v145 = v261;
    (*(v260 + 16))(v261, v257, v69);
    v146 = v145;
    v143 = v257;
    MEMORY[0x223DDAEB0](v146);
    MEMORY[0x223DDAED0](a9, v144);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v142 = 0;
  }

  v232 = a14;
  v147 = 1;
  v148 = v272;
  v269(v125 + 4 * v122, v142, 1, v272);
  (v265)(v143, v69);
  v149 = v228;
  (v264)(v228, *MEMORY[0x277D39520], v69);
  if (a12)
  {
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    v150 = v261;
    (*(v260 + 16))(v261, v149, v69);
    MEMORY[0x223DDAEB0](v150);
    MEMORY[0x223DDAED0](a11, a12);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v148 = v272;
    v147 = 0;
  }

  v151 = v149;
  v228 = a16;
  v152 = 1;
  v269(v125 + 5 * v122, v147, 1, v148);
  (v265)(v151, v69);
  v153 = v231;
  LODWORD(v257) = *MEMORY[0x277D394E8];
  v264(v231);
  if (v232)
  {
    v154 = v232;
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    v155 = v261;
    (*(v260 + 16))(v261, v153, v69);
    MEMORY[0x223DDAEB0](v155);
    MEMORY[0x223DDAED0](a13, v154);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v152 = 0;
  }

  v232 = a18;
  v156 = 1;
  v269(v125 + 6 * v122, v152, 1, v272);
  (v265)(v153, v69);
  v157 = v233;
  (v264)(v233, v229, v69);
  v158 = v228;
  if (v228)
  {
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    v159 = v261;
    (*(v260 + 16))(v261, v157, v69);
    MEMORY[0x223DDAEB0](v159);
    MEMORY[0x223DDAED0](a15, v158);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v156 = 0;
  }

  v160 = 1;
  v269(v125 - v122 + 8 * v122, v156, 1, v272);
  (v265)(v157, v69);
  v161 = v258;
  (v264)(v258, v257, v69);
  v162 = v232;
  if (v232)
  {
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    v163 = v261;
    (*(v260 + 16))(v261, v258, v69);
    MEMORY[0x223DDAEB0](v163);
    v161 = v258;
    MEMORY[0x223DDAED0](a17, v162);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v160 = 0;
  }

  v233 = a22;
  v164 = 1;
  v165 = v272;
  v269(v125 + 8 * v122, v160, 1, v272);
  (v265)(v161, v69);
  v166 = v234;
  (v264)(v234, v257, v69);
  if (a20)
  {
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    v167 = v261;
    (*(v260 + 16))(v261, v166, v69);
    MEMORY[0x223DDAEB0](v167);
    MEMORY[0x223DDAED0](a19, a20);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v165 = v272;
    v164 = 0;
  }

  v258 = a24;
  v168 = 1;
  v269(v125 + 9 * v122, v164, 1, v165);
  (v265)(v166, v69);
  v169 = v235;
  (v264)(v235, v230, v69);
  v170 = v233;
  v268 = v122;
  if (v233)
  {
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    v171 = v261;
    (*(v260 + 16))(v261, v169, v69);
    MEMORY[0x223DDAEB0](v171);
    MEMORY[0x223DDAED0](a21, v170);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v168 = 0;
  }

  else
  {
    v171 = v261;
  }

  v172 = v249;
  v173 = 1;
  v269(v125 + 10 * v122, v168, 1, v272);
  (v265)(v169, v69);
  v174 = v125 + 11 * v268;
  (v264)(v172, *MEMORY[0x277D39528], v69);
  v175 = v258;
  if (v258)
  {
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    (*(v260 + 16))(v171, v172, v69);
    MEMORY[0x223DDAEB0](v171);
    MEMORY[0x223DDAED0](a23, v175);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v173 = 0;
  }

  v258 = a28;
  v176 = 1;
  v269(v174, v173, 1, v272);
  (v265)(v172, v69);
  v177 = v125 + 12 * v268;
  v178 = *MEMORY[0x277D394A0];
  v179 = v250;
  (v264)(v250, v178, v69);
  if (a26)
  {
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    (*(v260 + 16))(v171, v179, v69);
    MEMORY[0x223DDAEB0](v171);
    MEMORY[0x223DDAED0](a25, a26);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v176 = 0;
  }

  v180 = v179;
  v232 = a30;
  v181 = 1;
  v269(v177, v176, 1, v272);
  (v265)(v180, v69);
  v182 = v268;
  v183 = v236;
  LODWORD(v231) = v178;
  (v264)(v236, v178, v69);
  v184 = v258;
  if (v258)
  {
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    v185 = v261;
    (*(v260 + 16))(v261, v183, v69);
    MEMORY[0x223DDAEB0](v185);
    MEMORY[0x223DDAED0](a27, v184);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v181 = 0;
  }

  v235 = a37;
  v234 = a36;
  v233 = a35;
  v249 = a34;
  v250 = a33;
  v257 = a32;
  v258 = a31;
  v186 = 1;
  v269(v125 + 13 * v182, v181, 1, v272);
  (v265)(v183, v69);
  v187 = v237;
  (v264)(v237, v231, v69);
  v188 = v232;
  v251 = v125;
  if (v232)
  {
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    v189 = v261;
    (*(v260 + 16))(v261, v187, v69);
    MEMORY[0x223DDAEB0](v189);
    MEMORY[0x223DDAED0](a29, v188);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v186 = 0;
  }

  LODWORD(v262) = a38;
  v191 = v271;
  v190 = v272;
  v269(v125 + 14 * v182, v186, 1, v272);
  (v265)(v187, v69);
  v192 = (v259 + 48);
  v264 = (v259 + 32);
  v265 = (v259 + 8);
  v266 = MEMORY[0x277D84F90];
  v193 = 15;
  v194 = v251;
  do
  {
    v196 = v66;
    v197 = v267;
    outlined init with copy of MediaUserStateCenter?(v194, v267, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVSgMR);
    outlined init with copy of MediaUserStateCenter?(v197, v191, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVSgMR);
    v198 = *v192;
    if ((*v192)(v191, 1, v190) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v197, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVSgMR);
      v195 = v191;
LABEL_35:
      outlined destroy of MediaUserStateCenter?(v195, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVSgMR);
      v66 = v196;
      v269(v196, 1, 1, v190);
LABEL_36:
      outlined destroy of MediaUserStateCenter?(v66, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVSgMR);
      goto LABEL_37;
    }

    v199 = MEMORY[0x223DDAEC0]();
    v201 = v200;
    (*v265)(v271, v272);

    v202 = HIBYTE(v201) & 0xF;
    v203 = v199 & 0xFFFFFFFFFFFFLL;
    v204 = (v201 & 0x2000000000000000) == 0;
    v191 = v271;
    v190 = v272;
    if (v204)
    {
      v202 = v203;
    }

    v195 = v197;
    if (!v202)
    {
      goto LABEL_35;
    }

    v205 = v197;
    v66 = v196;
    outlined init with take of PommesSearchReason?(v205, v196, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVSgMR);
    if (v198(v196, 1, v190) == 1)
    {
      goto LABEL_36;
    }

    v206 = *v264;
    (*v264)(v263, v196, v190);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v266 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v266 + 2) + 1, 1, v266);
    }

    v208 = *(v266 + 2);
    v207 = *(v266 + 3);
    if (v208 >= v207 >> 1)
    {
      v266 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v207 > 1, v208 + 1, 1, v266);
    }

    v209 = v266;
    *(v266 + 2) = v208 + 1;
    v190 = v272;
    v206(&v209[((*(v259 + 80) + 32) & ~*(v259 + 80)) + *(v259 + 72) * v208], v263, v272);
    v191 = v271;
    v66 = v196;
LABEL_37:
    v194 += v268;
    --v193;
  }

  while (v193);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v253 + 16))(v252, v258, v254);
  v210 = v242;
  v211 = v240;
  (*(v242 + 16))(v240, v257, v255);
  v212 = v244;
  v213 = v241;
  (*(v244 + 16))(v241, v250, v256);
  v214 = v246;
  v215 = v243;
  v216 = v247;
  (*(v246 + 16))(v243, v249, v247);
  v217 = v235;
  v218 = v245;
  outlined init with copy of MediaUserStateCenter?(v235, v245, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioModifierOSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioModifierOSgMR);
  HIBYTE(v221) = 1;
  LOBYTE(v221) = v262 & 1;
  v219 = (*(v248 + 176))(v266, v252, v211, v213, v215, v233, v234, v218, v221, 0, 0);
  outlined destroy of MediaUserStateCenter?(v217, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioModifierOSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioModifierOSgMR);
  (*(v214 + 8))(v249, v216);
  (*(v212 + 8))(v250, v256);
  (*(v210 + 8))(v257, v255);
  (*(v253 + 8))(v258, v254);
  return v219;
}

uint64_t AudioQuery.__allocating_init(queryFields:requestType:audioSort:verb:noun:appName:modifier:hasNonExplicitReference:networkAvailableAtRequest:utterance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10, uint64_t a11, uint64_t a12)
{
  v21 = *(v12 + 48);
  v22 = *(v12 + 52);
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  v24 = OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_requestedType;
  v25 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
  (*(*(v25 - 8) + 32))(v23 + v24, a2, v25);
  v26 = OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_audioSort;
  v27 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioSort();
  (*(*(v27 - 8) + 32))(v23 + v26, a3, v27);
  v28 = OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_verb;
  v29 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioVerb();
  (*(*(v29 - 8) + 32))(v23 + v28, a4, v29);
  v30 = OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_noun;
  v31 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioNoun();
  (*(*(v31 - 8) + 32))(v23 + v30, a5, v31);
  v32 = (v23 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_appName);
  *v32 = a6;
  v32[1] = a7;
  outlined init with take of PommesSearchReason?(a8, v23 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_modifier, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioModifierOSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioModifierOSgMR);
  *(v23 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_hasNonExplicitReference) = a9;
  *(v23 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_networkAvailableAtRequest) = a10;
  v33 = (v23 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_utterance);
  *v33 = a11;
  v33[1] = a12;
  return v23;
}

uint64_t AudioQuery.init(queryFields:requestType:audioSort:verb:noun:appName:modifier:hasNonExplicitReference:networkAvailableAtRequest:utterance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10, uint64_t a11, uint64_t a12)
{
  *(v12 + 16) = a1;
  v20 = OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_requestedType;
  v21 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
  (*(*(v21 - 8) + 32))(v12 + v20, a2, v21);
  v22 = OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_audioSort;
  v23 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioSort();
  (*(*(v23 - 8) + 32))(v12 + v22, a3, v23);
  v24 = OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_verb;
  v25 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioVerb();
  (*(*(v25 - 8) + 32))(v12 + v24, a4, v25);
  v26 = OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_noun;
  v27 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioNoun();
  (*(*(v27 - 8) + 32))(v12 + v26, a5, v27);
  v28 = (v12 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_appName);
  *v28 = a6;
  v28[1] = a7;
  outlined init with take of PommesSearchReason?(a8, v12 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_modifier, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioModifierOSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioModifierOSgMR);
  *(v12 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_hasNonExplicitReference) = a9;
  *(v12 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_networkAvailableAtRequest) = a10;
  v29 = (v12 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_utterance);
  *v29 = a11;
  v29[1] = a12;
  return v12;
}

char *closure #1 in static AudioQuery.makeNormalQuery(audioExperience:mode:)()
{
  v0 = *(Apple_Parsec_Siri_V2alpha_ClientSignals.librarySearchTerms.getter() + 16);

  if (v0)
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
      _os_log_impl(&dword_2232BB000, v2, v3, "AudioQuery : librarySearchTerms from ClientSignals", v4, 2u);
      MEMORY[0x223DE0F80](v4, -1, -1);
    }

    return Apple_Parsec_Siri_V2alpha_ClientSignals.librarySearchTerms.getter();
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.pommes);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2232BB000, v7, v8, "AudioQuery : librarySearchTerms from AudioUnderstanding", v9, 2u);
      MEMORY[0x223DE0F80](v9, -1, -1);
    }

    return Apple_Parsec_Siri_V2alpha_AudioUnderstanding.librarySearchTerms.getter();
  }
}

size_t closure #1 in static AudioQuery.makePlaylistQuery(audioExperience:)()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x28223BE20](v0, v3);
  v63 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v6);
  v64 = &v51 - v7;
  v54 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LibrarySearchTerm();
  v8 = *(v54 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v54, v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v62 = &v51 - v16;
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v51 - v18;
  v20 = *(Apple_Parsec_Siri_V2alpha_ClientSignals.librarySearchTerms.getter() + 16);

  if (!v20)
  {
    v42 = Apple_Parsec_Siri_V2alpha_AudioUnderstanding.playlistTitle.getter();
    v44 = v43;

    v45 = HIBYTE(v44) & 0xF;
    if ((v44 & 0x2000000000000000) == 0)
    {
      v45 = v42 & 0xFFFFFFFFFFFFLL;
    }

    if (v45)
    {
      Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
      v46 = v64;
      (*(v1 + 104))(v64, *MEMORY[0x277D39520], v0);
      MEMORY[0x223DDAEB0](v46);
      v47 = Apple_Parsec_Siri_V2alpha_AudioUnderstanding.playlistTitle.getter();
      MEMORY[0x223DDAED0](v47);
      Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVGMR);
      v48 = *(v8 + 72);
      v49 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_2234CF920;
      (*(v8 + 32))(v28 + v49, v13, v54);
      return v28;
    }

    return MEMORY[0x277D84F90];
  }

  v21 = Apple_Parsec_Siri_V2alpha_ClientSignals.librarySearchTerms.getter();
  v22 = *(v21 + 16);
  if (!v22)
  {

    return MEMORY[0x277D84F90];
  }

  v24 = *(v8 + 16);
  v23 = v8 + 16;
  v60 = v24;
  v25 = (*(v23 + 64) + 32) & ~*(v23 + 64);
  v51 = v21;
  v53 = v25;
  v26 = v21 + v25;
  v27 = *(v23 + 56);
  v58 = *MEMORY[0x277D39520];
  v56 = (v1 + 8);
  v57 = (v1 + 104);
  v52 = (v23 - 8);
  v61 = v23;
  v55 = (v23 + 16);
  v28 = MEMORY[0x277D84F90];
  v29 = v54;
  v30 = v19;
  v59 = v27;
  v31 = v63;
  do
  {
    v33 = v28;
    v34 = v60(v30, v26, v29);
    v35 = v64;
    MEMORY[0x223DDAEA0](v34);
    (*v57)(v31, v58, v0);
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioNoun and conformance Apple_Parsec_Siri_V2alpha_AudioNoun(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioItemType and conformance Apple_Parsec_Siri_V2alpha_AudioItemType, MEMORY[0x277D39530]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v36 = v29;
    v37 = *v56;
    (*v56)(v31, v0);
    v37(v35, v0);
    if (v66 == v65)
    {
      v38 = *v55;
      (*v55)(v62, v30, v36);
      v28 = v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v33[2] + 1, 1, v33);
      }

      v40 = *(v28 + 16);
      v39 = *(v28 + 24);
      if (v40 >= v39 >> 1)
      {
        v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v39 > 1, v40 + 1, 1, v28);
      }

      *(v28 + 16) = v40 + 1;
      v32 = v59;
      v41 = v28 + v53 + v40 * v59;
      v29 = v54;
      v38(v41, v62, v54);
    }

    else
    {
      (*v52)(v30, v36);
      v29 = v36;
      v28 = v33;
      v32 = v59;
    }

    v26 += v32;
    --v22;
  }

  while (v22);

  return v28;
}

uint64_t AudioQuery.deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_requestedType;
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_audioSort;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioSort();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_verb;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioVerb();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_noun;
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioNoun();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_appName + 8);

  outlined destroy of MediaUserStateCenter?(v0 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_modifier, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioModifierOSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioModifierOSgMR);
  v11 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_utterance + 8);

  return v0;
}

uint64_t AudioQuery.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_requestedType;
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_audioSort;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioSort();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_verb;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioVerb();
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  v8 = OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_noun;
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioNoun();
  (*(*(v9 - 8) + 8))(&v0[v8], v9);
  v10 = *&v0[OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_appName + 8];

  outlined destroy of MediaUserStateCenter?(&v0[OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_modifier], &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioModifierOSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioModifierOSgMR);
  v11 = *&v0[OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_utterance + 8];

  v12 = *(*v0 + 48);
  v13 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t specialized static AudioQuery.makeNormalQuery(audioExperience:mode:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioModifierOSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioModifierOSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v89 = &v69 - v5;
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioNoun();
  v87 = *(v6 - 8);
  v88 = v6;
  v7 = *(v87 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v86 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioVerb();
  v84 = *(v10 - 8);
  v85 = v10;
  v11 = *(v84 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v82 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioSort();
  v80 = *(v14 - 8);
  v81 = v14;
  v15 = *(v80 + 64);
  MEMORY[0x28223BE20](v14, v16);
  v79 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
  v77 = *(v18 - 8);
  v78 = v18;
  v19 = *(v77 + 64);
  MEMORY[0x28223BE20](v18, v20);
  v76 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioReference();
  v72 = *(v22 - 8);
  v23 = *(v72 + 64);
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27, v30);
  v32 = &v69 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals();
  v33 = *(v75 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v75, v35);
  v37 = &v69 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding();
  v38 = *(v73 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v73, v40);
  v42 = &v69 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  AudioExperience.audioUnderstanding.getter();
  v83 = a1;
  AudioExperience.audioClientComponent.getter();
  Apple_Parsec_Siri_V2alpha_AudioClientComponent.clientSignals.getter();
  v43 = v27;
  v44 = v72;
  (*(v28 + 8))(v32, v43);
  Apple_Parsec_Siri_V2alpha_AudioUnderstanding.reference.getter();
  v45 = (*(v44 + 88))(v26, v22);
  v50 = v45 == *MEMORY[0x277D39620] || v45 == *MEMORY[0x277D39630] || v45 == *MEMORY[0x277D39628] || v45 == *MEMORY[0x277D39638] || v45 == *MEMORY[0x277D39618] || v45 == *MEMORY[0x277D39610];
  v51 = v50;
  v74 = v51;
  if (!v50)
  {
    (*(v44 + 8))(v26, v22);
  }

  v70 = closure #1 in static AudioQuery.makeNormalQuery(audioExperience:mode:)();
  v52 = v76;
  Apple_Parsec_Siri_V2alpha_AudioUnderstanding.requestedMediaType.getter();
  v53 = v79;
  Apple_Parsec_Siri_V2alpha_AudioUnderstanding.sort.getter();
  v54 = v82;
  Apple_Parsec_Siri_V2alpha_AudioUnderstanding.verb.getter();
  v55 = v86;
  Apple_Parsec_Siri_V2alpha_AudioUnderstanding.noun.getter();
  v56 = Apple_Parsec_Siri_V2alpha_AudioUnderstanding.appName.getter();
  v71 = v57;
  v72 = v56;
  v58 = v89;
  Apple_Parsec_Siri_V2alpha_AudioUnderstanding.modifier.getter();
  v59 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioModifier();
  (*(*(v59 - 8) + 56))(v58, 0, 1, v59);
  v60 = dispatch thunk of AudioExperience.networkAvailableAtRequest.getter();
  (*(v33 + 8))(v37, v75);
  (*(v38 + 8))(v42, v73);
  v61 = type metadata accessor for AudioQuery();
  v62 = *(v61 + 48);
  v63 = *(v61 + 52);
  v64 = swift_allocObject();
  *(v64 + 16) = v70;
  (*(v77 + 32))(v64 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_requestedType, v52, v78);
  (*(v80 + 32))(v64 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_audioSort, v53, v81);
  (*(v84 + 32))(v64 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_verb, v54, v85);
  (*(v87 + 32))(v64 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_noun, v55, v88);
  v65 = (v64 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_appName);
  v66 = v71;
  *v65 = v72;
  v65[1] = v66;
  outlined init with take of PommesSearchReason?(v58, v64 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_modifier, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioModifierOSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioModifierOSgMR);
  *(v64 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_hasNonExplicitReference) = v74;
  *(v64 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_networkAvailableAtRequest) = v60 & 1;
  v67 = (v64 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_utterance);
  *v67 = 0;
  v67[1] = 0;
  return v64;
}

uint64_t specialized static AudioQuery.makePlaylistQuery(audioExperience:)(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioSort();
  v72 = *(v2 - 8);
  v73 = v2;
  v3 = *(v72 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v71 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioModifierOSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioModifierOSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v68 = &v59 - v9;
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioNoun();
  v74 = *(v10 - 8);
  v75 = v10;
  v11 = *(v74 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v76 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioVerb();
  v69 = *(v14 - 8);
  v70 = v14;
  v15 = *(v69 + 64);
  MEMORY[0x28223BE20](v14, v16);
  v67 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
  v60 = *(v65 - 8);
  v18 = v60;
  v19 = *(v60 + 64);
  MEMORY[0x28223BE20](v65, v20);
  v62 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals();
  v28 = *(v66 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v66, v30);
  v32 = &v59 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33, v36);
  v38 = &v59 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = a1;
  AudioExperience.audioUnderstanding.getter();
  AudioExperience.audioClientComponent.getter();
  Apple_Parsec_Siri_V2alpha_AudioClientComponent.clientSignals.getter();
  (*(v23 + 8))(v27, v22);
  v61 = closure #1 in static AudioQuery.makePlaylistQuery(audioExperience:)();
  v39 = *(v18 + 104);
  v40 = v62;
  v41 = v65;
  v39(v62, *MEMORY[0x277D39898], v65);
  v42 = v67;
  Apple_Parsec_Siri_V2alpha_AudioUnderstanding.verb.getter();
  Apple_Parsec_Siri_V2alpha_AudioUnderstanding.noun.getter();
  v43 = Apple_Parsec_Siri_V2alpha_AudioUnderstanding.appName.getter();
  v63 = v44;
  v64 = v43;
  v45 = v68;
  Apple_Parsec_Siri_V2alpha_AudioUnderstanding.modifier.getter();
  v46 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioModifier();
  (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
  LOBYTE(a1) = dispatch thunk of AudioExperience.networkAvailableAtRequest.getter();
  (*(v28 + 8))(v32, v66);
  (*(v34 + 8))(v38, v33);
  v48 = v71;
  v47 = v72;
  v49 = v73;
  (*(v72 + 104))(v71, *MEMORY[0x277D39168], v73);
  v50 = type metadata accessor for AudioQuery();
  v51 = *(v50 + 48);
  v52 = *(v50 + 52);
  v53 = swift_allocObject();
  v54 = v60;
  *(v53 + 16) = v61;
  (*(v54 + 32))(v53 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_requestedType, v40, v41);
  (*(v47 + 32))(v53 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_audioSort, v48, v49);
  (*(v69 + 32))(v53 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_verb, v42, v70);
  (*(v74 + 32))(v53 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_noun, v76, v75);
  v55 = (v53 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_appName);
  v56 = v63;
  *v55 = v64;
  v55[1] = v56;
  outlined init with take of PommesSearchReason?(v45, v53 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_modifier, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioModifierOSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioModifierOSgMR);
  *(v53 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_hasNonExplicitReference) = 0;
  *(v53 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_networkAvailableAtRequest) = a1 & 1;
  v57 = (v53 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_utterance);
  *v57 = 0;
  v57[1] = 0;
  return v53;
}

uint64_t type metadata accessor for AudioQuery()
{
  result = type metadata singleton initialization cache for AudioQuery;
  if (!type metadata singleton initialization cache for AudioQuery)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for AudioQuery()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioSort();
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioVerb();
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioNoun();
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioModifier?();
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioModifier?()
{
  if (!lazy cache variable for type metadata for Apple_Parsec_Siri_V2alpha_AudioModifier?)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioModifier();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Apple_Parsec_Siri_V2alpha_AudioModifier?);
    }
  }
}

uint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioNoun and conformance Apple_Parsec_Siri_V2alpha_AudioNoun(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t AssistantDataCache.__allocating_init(_:)(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  v4 = *(v1 + 168);

  return v4(a1, v3, &protocol witness table for CNContactStore, 0);
}

uint64_t closure #1 in variable initialization expression of AssistantDataCache.contactsQueue()
{
  v19 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v19 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v19, v2);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5, v7);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v18[1] = "tantData(_:updateQueue:)";
  (*(v12 + 104))(v16, *MEMORY[0x277D851C8], v11);
  v18[0] = static OS_dispatch_queue.global(qos:)();
  (*(v12 + 8))(v16, v11);
  static DispatchQoS.unspecified.getter();
  v20 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v4, *MEMORY[0x277D85260], v19);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

uint64_t key path setter for AssistantDataCache.lastAssistantDataSnapshot : AssistantDataCache(__int128 *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[4];
  v17 = a1[3];
  v18[0] = v3;
  *(v18 + 10) = *(a1 + 74);
  v4 = a1[1];
  v14 = *a1;
  v15 = v4;
  v16 = v2;
  v5 = *a2;
  swift_beginAccess();
  v7 = v5[5];
  v6 = v5[6];
  *(v20 + 10) = *(v5 + 122);
  v8 = v5[7];
  v19[3] = v6;
  v20[0] = v8;
  v9 = v5[4];
  v19[0] = v5[3];
  v19[1] = v9;
  v19[2] = v7;
  v10 = v18[0];
  v5[6] = v17;
  v5[7] = v10;
  *(v5 + 122) = *(v18 + 10);
  v11 = v16;
  v5[4] = v15;
  v5[5] = v11;
  v5[3] = v14;
  outlined init with copy of AssistantDataSnapshot?(&v14, v13);
  return outlined destroy of AssistantDataSnapshot?(v19);
}

double AssistantDataCache.lastAssistantDataSnapshot.getter@<D0>(_OWORD *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[5];
  v4 = v1[7];
  v14 = v1[6];
  v15[0] = v4;
  *(v15 + 10) = *(v1 + 122);
  v5 = v1[4];
  v11 = v1[3];
  v12 = v5;
  v13 = v3;
  outlined init with copy of AssistantDataSnapshot?(&v11, v10);
  v6 = v14;
  v7 = v15[0];
  v8 = v12;
  a1[2] = v13;
  a1[3] = v6;
  a1[4] = v7;
  *(a1 + 74) = *(v15 + 10);
  result = *&v11;
  *a1 = v11;
  a1[1] = v8;
  return result;
}

uint64_t outlined init with copy of AssistantDataSnapshot?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void key path setter for AssistantDataCache.profileConnection : AssistantDataCache(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 144);
  *(v3 + 144) = v2;
  v5 = v2;
}

void *AssistantDataCache.profileConnection.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 144);
  v2 = v1;
  return v1;
}

uint64_t AssistantDataCache.__allocating_init(_:contactFetching:profileConnection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v9 = closure #1 in variable initialization expression of AssistantDataCache.contactsQueue();
  *(v8 + 144) = 0;
  *(v8 + 48) = 0u;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0u;
  *(v8 + 96) = 0u;
  *(v8 + 112) = 0u;
  *(v8 + 122) = 0u;
  *(v8 + 16) = v9;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
  *(v8 + 40) = a3;
  swift_beginAccess();
  *(v8 + 144) = a4;
  return v8;
}

uint64_t AssistantDataCache.init(_:contactFetching:profileConnection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = closure #1 in variable initialization expression of AssistantDataCache.contactsQueue();
  *(v4 + 144) = 0;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0u;
  *(v4 + 122) = 0u;
  *(v4 + 16) = v9;
  *(v4 + 24) = a1;
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  swift_beginAccess();
  *(v4 + 144) = a4;
  return v4;
}

uint64_t closure #1 in AssistantDataCache.handleSASetAssistantData(_:updateQueue:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      AssistantDataCache.fallbackSnapshot()(v15);
      v11 = v15[1];
      v12 = v15[0];
      v9 = v15[3];
      v10 = v15[2];
      v2 = v16;
      v3 = v17;
      v4 = v18;
      v5 = v19;
    }

    else
    {
      v2 = 0;
      v3 = 0;
      v4 = 0;
      v5 = 0;
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
    }

    swift_beginAccess();
    v6 = *(v1 + 112);
    v13[3] = *(v1 + 96);
    v14[0] = v6;
    v7 = *(v1 + 80);
    *(v14 + 10) = *(v1 + 122);
    v8 = *(v1 + 64);
    v13[0] = *(v1 + 48);
    v13[1] = v8;
    v13[2] = v7;
    *(v1 + 48) = v12;
    *(v1 + 64) = v11;
    *(v1 + 80) = v10;
    *(v1 + 96) = v9;
    *(v1 + 112) = v2;
    *(v1 + 120) = v3;
    *(v1 + 128) = v4;
    *(v1 + 136) = v5;
    outlined destroy of AssistantDataSnapshot?(v13);
  }

  return result;
}

void AssistantDataCache.fallbackSnapshot()(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(MEMORY[0x277D475C8]) init];
  [v10 setMovieRestriction_];
  v53 = v10;
  [v10 setTvRestriction_];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v11 = static PerformanceUtil.shared;
  Date.init()();
  v12 = *(*v11 + 200);
  v13 = *v11 + 200;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo19MCProfileConnectionCSgMd, &_sSo19MCProfileConnectionCSgMR);
  LOBYTE(v42) = 2;
  v12(&v54, 0xD00000000000001CLL, 0x80000002234E2360, 0, v9, "SiriInformationSearch/AssistantDataCache.swift", 46, 2, 138, "fallbackSnapshot()", 18, v42, partial apply for closure #1 in AssistantDataCache.fallbackSnapshot(), v2, v14);
  v17 = *(v5 + 8);
  v16 = v5 + 8;
  v15 = v17;
  v18 = v17(v9, v4);
  if (v54)
  {
    v47 = &v45;
    v52 = v15;
    MEMORY[0x28223BE20](v18, v19);
    v51 = v20;
    Date.init()();
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSNumberCSgMd, &_sSo8NSNumberCSgMR);
    v22 = v12;
    v23 = v21;
    v43 = &v42;
    v44 = v21;
    LOBYTE(v42) = 2;
    v49 = v22;
    v22(&v54, 0xD000000000000055, 0x80000002234E23A0, 0, v9, "SiriInformationSearch/AssistantDataCache.swift", 46, 2, 142, "fallbackSnapshot()", 18, v42, partial apply for closure #2 in AssistantDataCache.fallbackSnapshot());
    v50 = v16;
    v24 = v52(v9, v4);
    v26 = v54;
    if (v54)
    {
      v27 = [v54 integerValue];
      [v53 setMovieRestriction_];
    }

    MEMORY[0x28223BE20](v24, v25);
    Date.init()();
    v43 = &v42;
    v44 = v23;
    LOBYTE(v42) = 2;
    v49(&v54, 0xD000000000000056, 0x80000002234E2400, 0, v9, "SiriInformationSearch/AssistantDataCache.swift", 46, 2, 148, "fallbackSnapshot()", 18, v42, partial apply for closure #3 in AssistantDataCache.fallbackSnapshot());
    v28 = v52(v9, v4);
    v30 = v54;
    v48 = v13;
    if (v54)
    {
      v31 = [v54 integerValue];
      [v53 setTvRestriction_];
    }

    v46 = "howsRating).int32Value";
    MEMORY[0x28223BE20](v28, v29);
    Date.init()();
    v43 = &v42;
    v44 = MEMORY[0x277D839B0];
    LOBYTE(v42) = 2;
    v32 = v49;
    v49(&v54, 0xD000000000000055, 0x80000002234E2460, 0, v9, "SiriInformationSearch/AssistantDataCache.swift", 46, 2, 154, "fallbackSnapshot()", 18, v42, partial apply for closure #4 in AssistantDataCache.fallbackSnapshot());
    v33 = v52;
    v34 = v52(v9, v4);
    v47 = &v45;
    v45 = v4;
    v35 = v54;
    MEMORY[0x28223BE20](v34, v36);
    v37 = v51;
    Date.init()();
    v43 = &v42;
    v44 = MEMORY[0x277D839B0];
    LOBYTE(v42) = 2;
    v32(&v54, 0xD000000000000055, v46 | 0x8000000000000000, 0, v9, "SiriInformationSearch/AssistantDataCache.swift", 46, 2, 157, "fallbackSnapshot()", 18, v42, partial apply for closure #5 in AssistantDataCache.fallbackSnapshot());

    v33(v9, v45);
    v38 = v54;
  }

  else
  {
    v35 = 0;
    v38 = 1;
  }

  v39 = v53;
  v40 = [v39 movieRestriction];
  v41 = [v39 tvRestriction];

  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
  *(a1 + 32) = v40;
  *(a1 + 40) = v41;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = v38;
  *(a1 + 89) = v35;
}

id closure #1 in AssistantDataCache.fallbackSnapshot()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(*a1 + 144))();
  if (!result)
  {
    result = [objc_opt_self() sharedConnection];
  }

  *a2 = result;
  return result;
}

uint64_t AssistantDataCache.deinit()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  swift_unknownObjectRelease();
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  v6 = *(v0 + 104);
  v10 = *(v0 + 136);
  v9 = *(v0 + 128);
  v8 = *(v0 + 112);
  outlined consume of AssistantDataSnapshot?(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));

  return v0;
}

uint64_t AssistantDataCache.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  swift_unknownObjectRelease();
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  v6 = *(v0 + 104);
  v10 = *(v0 + 136);
  v9 = *(v0 + 128);
  v8 = *(v0 + 112);
  outlined consume of AssistantDataSnapshot?(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));

  return swift_deallocClassInstance();
}

id partial apply for closure #2 in AssistantDataCache.fallbackSnapshot()@<X0>(void *a1@<X8>)
{
  result = [*(v1 + 16) effectiveValueForSetting_];
  *a1 = result;
  return result;
}

id partial apply for closure #3 in AssistantDataCache.fallbackSnapshot()@<X0>(void *a1@<X8>)
{
  result = [*(v1 + 16) effectiveValueForSetting_];
  *a1 = result;
  return result;
}

id partial apply for closure #4 in AssistantDataCache.fallbackSnapshot()@<X0>(BOOL *a1@<X8>)
{
  result = [*(v1 + 16) effectiveBoolValueForSetting_];
  *a1 = result == 1;
  return result;
}

id partial apply for closure #5 in AssistantDataCache.fallbackSnapshot()@<X0>(BOOL *a1@<X8>)
{
  result = [*(v1 + 16) effectiveBoolValueForSetting_];
  *a1 = result == 1;
  return result;
}

void *PimsRuntimeLoggingHandler.__allocating_init()()
{
  v0 = swift_allocObject();
  getPimsRuntimeLogger()();
  v1 = type metadata accessor for MediaSuggestionManager();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = MediaSuggestionManager.init()();
  v0[10] = v1;
  v0[11] = &protocol witness table for MediaSuggestionManager;
  v0[7] = v4;
  return v0;
}

void *PimsRuntimeLoggingHandler.init()()
{
  getPimsRuntimeLogger()();
  outlined init with take of DomainWarmupHandling(&v6, (v0 + 2));
  v1 = type metadata accessor for MediaSuggestionManager();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = MediaSuggestionManager.init()();
  v0[10] = v1;
  v0[11] = &protocol witness table for MediaSuggestionManager;
  v0[7] = v4;
  return v0;
}

uint64_t PimsRuntimeLoggingHandler.__allocating_init(pimsRuntimeLogger:suggestionManager:)(__int128 *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  outlined init with take of DomainWarmupHandling(a1, v4 + 16);
  outlined init with take of DomainWarmupHandling(a2, v4 + 56);
  return v4;
}

uint64_t PimsRuntimeLoggingHandler.init(pimsRuntimeLogger:suggestionManager:)(__int128 *a1, __int128 *a2)
{
  outlined init with take of DomainWarmupHandling(a1, v2 + 16);
  outlined init with take of DomainWarmupHandling(a2, v2 + 56);
  return v2;
}

void PimsRuntimeLoggingHandler.logPIMSCandidates(requestId:serverStateSignals:rankedResults:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v111 = a2;
  v101 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v115 = v6;
  v116 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MediaSuggestionManager.EnablementStatus();
  v97 = *(v12 - 8);
  v13 = *(v97 + 64);
  MEMORY[0x28223BE20](v12, v14);
  v100 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s28SiriPrivateLearningInference22PimsSuggestionMetadataVSgMd, &_s28SiriPrivateLearningInference22PimsSuggestionMetadataVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v113 = (&v92 - v19);
  v117 = type metadata accessor for PimsSuggestionMetadata();
  isa = v117[-1].isa;
  v20 = *(isa + 8);
  v22 = MEMORY[0x28223BE20](v117, v21);
  v114 = &v92 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v24);
  v110 = (&v92 - v25);
  v109 = type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo.ClientMusicSuggestionImpactInfo();
  v112 = *(v109 - 8);
  v26 = *(v112 + 64);
  MEMORY[0x28223BE20](v109, v27);
  v108 = &v92 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29, v32);
  v34 = &v92 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMR);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8, v37);
  v39 = &v92 - v38;
  v40 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40, v43);
  v45 = &v92 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 >> 62)
  {
    v107 = v30;
    v86 = &v92 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
    v87 = __CocoaSet.count.getter();
    v45 = v86;
    v30 = v107;
    if (v87)
    {
LABEL_3:
      v95 = v45;
      outlined init with copy of MediaUserStateCenter?(v111, v39, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMR);
      v46 = (*(v41 + 48))(v39, 1, v40);
      v96 = v12;
      if (v46 == 1)
      {
        outlined destroy of MediaUserStateCenter?(v39, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMR);
      }

      else
      {
        v107 = v30;
        v47 = v95;
        (*(v41 + 32))(v95, v39, v40);
        if (Apple_Parsec_Siri_V2alpha_ClientSignals.hasMusicRankingInfluenceImpactInfo.getter())
        {
          v94 = v41;
          Apple_Parsec_Siri_V2alpha_ClientSignals.musicRankingInfluenceImpactInfo.getter();
          v48 = Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo.suggestionImpactInfo.getter();
          (*(v107 + 8))(v34, v29);
          v49 = v48;
          v50 = *(v48 + 16);
          if (v50)
          {
            v93 = v40;
            v51 = v4;
            v107 = *(v112 + 16);
            v52 = (*(v112 + 80) + 32) & ~*(v112 + 80);
            v92 = v49;
            v53 = v49 + v52;
            v54 = *(v112 + 72);
            v112 += 16;
            v105 = (v112 - 8);
            v106 = v54;
            v103 = (isa + 32);
            v104 = (isa + 48);
            v111 = MEMORY[0x277D84F90];
            v55 = v117;
            v56 = v113;
            v99 = a3;
            v98 = v51;
            v57 = v108;
            do
            {
              v58 = v109;
              (v107)(v57, v53, v109);
              PimsRuntimeLoggingHandler.mapPimsMatchToSuggestionMetadata(match:rankedResults:)(a3, v56);
              v56 = v113;
              (*v105)(v57, v58);
              if ((*v104)(v56, 1, v55) == 1)
              {
                outlined destroy of MediaUserStateCenter?(v56, &_s28SiriPrivateLearningInference22PimsSuggestionMetadataVSgMd, &_s28SiriPrivateLearningInference22PimsSuggestionMetadataVSgMR);
              }

              else
              {
                v59 = *v103;
                (*v103)(v110, v56, v55);
                v60 = v111;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v60[2] + 1, 1, v60);
                }

                v62 = v60[2];
                v61 = v60[3];
                if (v62 >= v61 >> 1)
                {
                  v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v61 > 1, v62 + 1, 1, v60);
                }

                v60[2] = v62 + 1;
                v63 = (*(isa + 80) + 32) & ~*(isa + 80);
                v111 = v60;
                v55 = v117;
                (v59)(v60 + v63 + *(isa + 9) * v62, v110);
                v51 = v98;
                a3 = v99;
                v56 = v113;
              }

              v53 += v106;
              --v50;
            }

            while (v50);

            v4 = v51;
            v40 = v93;
          }

          else
          {

            v111 = MEMORY[0x277D84F90];
          }

          (*(v94 + 8))(v95, v40);
          v68 = v111;
          goto LABEL_25;
        }

        (*(v41 + 8))(v47, v40);
      }

      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v64 = type metadata accessor for Logger();
      __swift_project_value_buffer(v64, static Logger.pommes);
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&dword_2232BB000, v65, v66, "PimsRuntimeLoggingHandler: Missing signals from server, unable to get information about suggestion match if any", v67, 2u);
        MEMORY[0x223DE0F80](v67, -1, -1);
      }

      v68 = MEMORY[0x277D84F90];
LABEL_25:
      v69 = v4[6];
      __swift_project_boxed_opaque_existential_1(v4 + 2, v4[5]);
      dispatch thunk of PimsRuntimeLogging.logSuggestionMetadata(requestId:suggestions:)();
      outlined init with copy of AppDataProviding((v4 + 2), v118);
      v70 = v119;
      v71 = v120;
      v110 = __swift_project_boxed_opaque_existential_1(v118, v119);
      v72 = v4[10];
      v73 = v4[11];
      __swift_project_boxed_opaque_existential_1(v4 + 7, v72);
      (*(v73 + 8))(v72, v73);
      v74 = *(v68 + 16);
      if (v74)
      {
        v108 = v71;
        v109 = v70;
        v75 = *(isa + 2);
        v76 = *(isa + 80);
        v111 = v68;
        v77 = v68 + ((v76 + 32) & ~v76);
        v112 = *(isa + 9);
        v113 = v75;
        v78 = (isa + 8);
        v79 = MEMORY[0x277D84F90];
        v80 = v11;
        do
        {
          v81 = v114;
          v82 = v117;
          v113(v114, v77, v117);
          PimsSuggestionMetadata.pimsId.getter();
          (*v78)(v81, v82);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v79 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v79[2] + 1, 1, v79);
          }

          v84 = v79[2];
          v83 = v79[3];
          if (v84 >= v83 >> 1)
          {
            v79 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v83 > 1, v84 + 1, 1, v79);
          }

          v79[2] = v84 + 1;
          (*(v116 + 32))(v79 + ((*(v116 + 80) + 32) & ~*(v116 + 80)) + *(v116 + 72) * v84, v80, v115);
          v77 += v112;
          --v74;
        }

        while (v74);
      }

      v85 = v100;
      dispatch thunk of PimsRuntimeLogging.logCandidateSuggestions(requestId:enablementStatus:pimsIds:)();

      (*(v97 + 8))(v85, v96);
      __swift_destroy_boxed_opaque_existential_1(v118);
      return;
    }
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v88 = type metadata accessor for Logger();
  __swift_project_value_buffer(v88, static Logger.pommes);
  v117 = Logger.logObject.getter();
  v89 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v117, v89))
  {
    v90 = swift_slowAlloc();
    *v90 = 0;
    _os_log_impl(&dword_2232BB000, v117, v89, "PimsRuntimeLoggingHandler: There is no candidate in the ranked results", v90, 2u);
    MEMORY[0x223DE0F80](v90, -1, -1);
  }

  v91 = v117;
}

uint64_t PimsRuntimeLoggingHandler.mapPimsMatchToSuggestionMetadata(match:rankedResults:)@<X0>(unint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v143 = a1;
  v153 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s28SiriPrivateLearningAnalytics29PLUSSuggestionRedundancyStateOSgMd, &_s28SiriPrivateLearningAnalytics29PLUSSuggestionRedundancyStateOSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v141 = &v130 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s28SiriPrivateLearningAnalytics26PLUSSuggestionNoveltyStateOSgMd, &_s28SiriPrivateLearningAnalytics26PLUSSuggestionNoveltyStateOSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v140 = &v130 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s28SiriPrivateLearningAnalytics27PLUSSuggestionSurfacedStateOSgMd, &_s28SiriPrivateLearningAnalytics27PLUSSuggestionSurfacedStateOSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v139 = &v130 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s28SiriPrivateLearningInference12PimsLocalityOSgMd, &_s28SiriPrivateLearningInference12PimsLocalityOSgMR);
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v14 - 8, v16);
  v152 = &v130 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v151 = &v130 - v20;
  v131 = type metadata accessor for PimsClientTreatment();
  v145 = *(v131 - 8);
  v21 = *(v145 + 64);
  v23 = MEMORY[0x28223BE20](v131, v22);
  v130 = &v130 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v25);
  v146 = &v130 - v26;
  v27 = type metadata accessor for PLUSSuggestionSurfacedState();
  v149 = *(v27 - 8);
  v150 = v27;
  v28 = *(v149 + 64);
  MEMORY[0x28223BE20](v27, v29);
  v148 = &v130 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s28SiriPrivateLearningInference19PimsClientTreatmentOSgMd, &_s28SiriPrivateLearningInference19PimsClientTreatmentOSgMR);
  v32 = *(*(v31 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v31 - 8, v33);
  v138 = &v130 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v34, v36);
  v144 = &v130 - v38;
  MEMORY[0x28223BE20](v37, v39);
  v154 = &v130 - v40;
  v41 = type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpact();
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41, v44);
  v46 = &v130 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMd, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMR);
  v48 = *(*(v47 - 8) + 64);
  v50 = MEMORY[0x28223BE20](v47 - 8, v49);
  v137 = &v130 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x28223BE20](v50, v52);
  v136 = &v130 - v54;
  v56 = MEMORY[0x28223BE20](v53, v55);
  v132 = &v130 - v57;
  v59 = MEMORY[0x28223BE20](v56, v58);
  v142 = (&v130 - v60);
  MEMORY[0x28223BE20](v59, v61);
  v63 = &v130 - v62;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v65 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64 - 8, v66);
  v68 = &v130 - v67;
  v69 = type metadata accessor for UUID();
  v70 = *(v69 - 8);
  v71 = *(v70 + 64);
  v73 = MEMORY[0x28223BE20](v69, v72);
  v147 = &v130 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v73, v75);
  v77 = &v130 - v76;
  Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo.ClientMusicSuggestionImpactInfo.clientMusicSuggestionID.getter();
  UUID.init(uuidString:)();
  v78 = v69;
  v79 = v70;

  if ((*(v70 + 48))(v68, 1, v78) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v68, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v80 = type metadata accessor for Logger();
    __swift_project_value_buffer(v80, static Logger.pommes);
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.debug.getter();
    v83 = os_log_type_enabled(v81, v82);
    v84 = v153;
    if (v83)
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&dword_2232BB000, v81, v82, "PimsRuntimeLoggingHandler: There is no pims id in the response", v85, 2u);
      MEMORY[0x223DE0F80](v85, -1, -1);
    }

    v86 = 1;
    goto LABEL_44;
  }

  (*(v70 + 32))(v77, v68, v78);
  Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo.ClientMusicSuggestionImpactInfo.impact.getter();
  PimsRuntimeLoggingHandler.mapServerImpactToPimsServerTreatment(impact:)(v46, v63);
  result = (*(v42 + 8))(v46, v41);
  v88 = v143;
  v89 = v63;
  v90 = v77;
  if (v143 >> 62)
  {
    result = __CocoaSet.count.getter();
    v91 = result;
  }

  else
  {
    v91 = *((v143 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v92 = v154;
  v93 = v144;
  v94 = v142;
  v134 = v78;
  v135 = v79;
  v133 = v90;
  if (v91)
  {
    if ((v88 & 0xC000000000000001) != 0)
    {
      goto LABEL_47;
    }

    if (*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v95 = *(v88 + 32);
      goto LABEL_13;
    }

    __break(1u);
    return result;
  }

  v96 = 0;
LABEL_15:
  v97 = v145;
  PimsRuntimeLoggingHandler.mapClientImpactToPimsClientTreatment(finalTopCandidate:serverTreatment:)(v96, v89, v92);

  v144 = v89;
  outlined init with copy of MediaUserStateCenter?(v89, v94, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMd, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMR);
  v89 = type metadata accessor for PimsServerTreatment();
  v98 = *(v89 - 8);
  v99 = *(v98 + 48);
  if (v99(v94, 1, v89) == 1)
  {
    goto LABEL_16;
  }

  v142 = v99;
  v102 = v132;
  outlined init with copy of MediaUserStateCenter?(v94, v132, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMd, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMR);
  v103 = (*(v98 + 88))(v102, v89);
  if (v103 == *MEMORY[0x277D5FD70] || v103 == *MEMORY[0x277D5FD68])
  {
    outlined destroy of MediaUserStateCenter?(v94, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMd, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMR);
    outlined init with copy of MediaUserStateCenter?(v92, v93, &_s28SiriPrivateLearningInference19PimsClientTreatmentOSgMd, &_s28SiriPrivateLearningInference19PimsClientTreatmentOSgMR);
    v104 = v131;
    if ((*(v97 + 48))(v93, 1, v131) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v93, &_s28SiriPrivateLearningInference19PimsClientTreatmentOSgMd, &_s28SiriPrivateLearningInference19PimsClientTreatmentOSgMR);
      v100 = v141;
      v99 = v142;
LABEL_37:
      (*(v149 + 104))(v148, *MEMORY[0x277D5FC70], v150);
      v101 = v151;
      goto LABEL_40;
    }

    v105 = v146;
    (*(v97 + 32))(v146, v93, v104);
    v106 = v130;
    (*(v97 + 104))(v130, *MEMORY[0x277D5FD48], v104);
    v107 = v97;
    v108 = v104;
    v109 = MEMORY[0x223DDF080](v105, v106);
    v110 = *(v107 + 8);
    v93 = v107 + 8;
    v111 = v106;
    v112 = v110;
    v110(v111, v108);
    v99 = v142;
    if ((v109 & 1) == 0)
    {
      v112(v146, v108);
      v100 = v141;
      goto LABEL_37;
    }

    v113 = v112;
    v145 = v93;
    v98 = 0;
    v92 = v88 & 0xC000000000000001;
    v94 = v88 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v91 == v98)
      {
        v113(v146, v131);
        v117 = MEMORY[0x277D5FC68];
        goto LABEL_39;
      }

      if (v92)
      {
        v114 = MEMORY[0x223DDFF80](v98, v88);
        if (__OFADD__(v98, 1))
        {
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }
      }

      else
      {
        if (v98 >= *(v94 + 16))
        {
          __break(1u);
LABEL_47:
          v95 = MEMORY[0x223DDFF80](0, v88);
LABEL_13:
          v96 = v95;
          goto LABEL_15;
        }

        v114 = *(v88 + 8 * v98 + 32);
        if (__OFADD__(v98, 1))
        {
          goto LABEL_34;
        }
      }

      v93 = v88;
      v115 = v114[OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_itemSource];

      ++v98;
      v116 = v115 == 1;
      v88 = v93;
      if (v116)
      {
        v113(v146, v131);
        v117 = MEMORY[0x277D5FC78];
LABEL_39:
        (*(v149 + 104))(v148, *v117, v150);
        v100 = v141;
        v101 = v151;
        v92 = v154;
        goto LABEL_40;
      }
    }
  }

  if (v103 != *MEMORY[0x277D5FD78])
  {
LABEL_35:
    (*(v98 + 8))(v132, v89);
    v99 = v142;
LABEL_16:
    (*(v149 + 104))(v148, *MEMORY[0x277D5FC68], v150);
    outlined destroy of MediaUserStateCenter?(v94, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMd, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMR);
    v100 = v141;
    v101 = v151;
    goto LABEL_40;
  }

  (*(v149 + 104))(v148, *MEMORY[0x277D5FC78], v150);
  outlined destroy of MediaUserStateCenter?(v94, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMd, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMR);
  v100 = v141;
  v99 = v142;
  v101 = v151;
LABEL_40:
  v118 = v136;
  outlined init with copy of MediaUserStateCenter?(v144, v136, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMd, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMR);
  v119 = v99(v118, 1, v89);
  outlined destroy of MediaUserStateCenter?(v118, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMd, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMR);
  if (v119 == 1)
  {
    v120 = type metadata accessor for PimsLocality();
    (*(*(v120 - 8) + 56))(v101, 1, 1, v120);
  }

  else
  {
    v121 = *MEMORY[0x277D5FD38];
    v122 = type metadata accessor for PimsLocality();
    v123 = *(v122 - 8);
    (*(v123 + 104))(v101, v121, v122);
    (*(v123 + 56))(v101, 0, 1, v122);
  }

  (*(v135 + 16))(v147, v133, v134);
  outlined init with copy of MediaUserStateCenter?(v101, v152, &_s28SiriPrivateLearningInference12PimsLocalityOSgMd, &_s28SiriPrivateLearningInference12PimsLocalityOSgMR);
  v124 = v144;
  outlined init with copy of MediaUserStateCenter?(v144, v137, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMd, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMR);
  outlined init with copy of MediaUserStateCenter?(v92, v138, &_s28SiriPrivateLearningInference19PimsClientTreatmentOSgMd, &_s28SiriPrivateLearningInference19PimsClientTreatmentOSgMR);
  v126 = v148;
  v125 = v149;
  v127 = v139;
  v128 = v150;
  (*(v149 + 16))(v139, v148, v150);
  (*(v125 + 56))(v127, 0, 1, v128);
  PimsRuntimeLoggingHandler.extractNoveltyState(serverTreatment:)(v124, v140);
  PimsRuntimeLoggingHandler.extractRedundancyState(serverTreatment:)(v124, v100);
  v84 = v153;
  PimsSuggestionMetadata.init(pimsId:locality:serverTreatment:clientTreatment:suggestionSurfaced:noveltyState:redundancyState:)();
  outlined destroy of MediaUserStateCenter?(v151, &_s28SiriPrivateLearningInference12PimsLocalityOSgMd, &_s28SiriPrivateLearningInference12PimsLocalityOSgMR);
  (*(v125 + 8))(v126, v128);
  outlined destroy of MediaUserStateCenter?(v154, &_s28SiriPrivateLearningInference19PimsClientTreatmentOSgMd, &_s28SiriPrivateLearningInference19PimsClientTreatmentOSgMR);
  outlined destroy of MediaUserStateCenter?(v124, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMd, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMR);
  (*(v135 + 8))(v133, v134);
  v86 = 0;
LABEL_44:
  v129 = type metadata accessor for PimsSuggestionMetadata();
  return (*(*(v129 - 8) + 56))(v84, v86, 1, v129);
}

uint64_t PimsRuntimeLoggingHandler.mapServerImpactToPimsServerTreatment(impact:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpact();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4);
  v10 = (*(v5 + 88))(v9, v4);
  if (v10 == *MEMORY[0x277D39C68])
  {
    v11 = MEMORY[0x277D5FD60];
  }

  else if (v10 == *MEMORY[0x277D39C78])
  {
    v11 = MEMORY[0x277D5FD70];
  }

  else if (v10 == *MEMORY[0x277D39C70])
  {
    v11 = MEMORY[0x277D5FD68];
  }

  else if (v10 == *MEMORY[0x277D39C80])
  {
    v11 = MEMORY[0x277D5FD78];
  }

  else if (v10 == *MEMORY[0x277D39CA0])
  {
    v11 = MEMORY[0x277D5FD98];
  }

  else if (v10 == *MEMORY[0x277D39CB0])
  {
    v11 = MEMORY[0x277D5FDA8];
  }

  else if (v10 == *MEMORY[0x277D39C98])
  {
    v11 = MEMORY[0x277D5FD90];
  }

  else if (v10 == *MEMORY[0x277D39C88])
  {
    v11 = MEMORY[0x277D5FD80];
  }

  else if (v10 == *MEMORY[0x277D39C90])
  {
    v11 = MEMORY[0x277D5FD88];
  }

  else if (v10 == *MEMORY[0x277D39CA8])
  {
    v11 = MEMORY[0x277D5FDA0];
  }

  else
  {
    if (v10 != *MEMORY[0x277D39C60])
    {
      v16 = type metadata accessor for PimsServerTreatment();
      (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
      return (*(v5 + 8))(v9, v4);
    }

    v11 = MEMORY[0x277D5FD58];
  }

  v12 = *v11;
  v13 = type metadata accessor for PimsServerTreatment();
  v14 = *(v13 - 8);
  (*(v14 + 104))(a2, v12, v13);
  return (*(v14 + 56))(a2, 0, 1, v13);
}

uint64_t PimsRuntimeLoggingHandler.mapClientImpactToPimsClientTreatment(finalTopCandidate:serverTreatment:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMd, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for PimsServerTreatment();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v31 - v19;
  if (!a1 || a1[OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_itemSource] != 2)
  {
    goto LABEL_5;
  }

  outlined init with copy of MediaUserStateCenter?(a2, v10, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMd, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMR);
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    (*(v12 + 32))(v20, v10, v11);
    v26 = *(v12 + 104);
    v26(v17, *MEMORY[0x277D5FD70], v11);
    v27 = a1;
    v28 = MEMORY[0x223DDF0A0](v20, v17);
    v29 = *(v12 + 8);
    v29(v17, v11);
    if (v28)
    {
      v29(v20, v11);
    }

    else
    {
      v26(v17, *MEMORY[0x277D5FD68], v11);
      v30 = MEMORY[0x223DDF0A0](v20, v17);

      v29(v17, v11);
      v29(v20, v11);
      if ((v30 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v21 = MEMORY[0x277D5FD48];
    goto LABEL_6;
  }

  outlined destroy of MediaUserStateCenter?(v10, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMd, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMR);
LABEL_5:
  v21 = MEMORY[0x277D5FD40];
LABEL_6:
  v22 = *v21;
  v23 = type metadata accessor for PimsClientTreatment();
  v24 = *(v23 - 8);
  (*(v24 + 104))(a3, v22, v23);
  return (*(v24 + 56))(a3, 0, 1, v23);
}

uint64_t PimsRuntimeLoggingHandler.extractNoveltyState(serverTreatment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMd, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v32 - v7;
  v9 = type metadata accessor for PimsServerTreatment();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v32 - v17;
  outlined init with copy of MediaUserStateCenter?(a1, v8, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMd, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMR);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    v22 = *(v10 + 32);
    v22(v18, v8, v9);
    v22(v15, v18, v9);
    v23 = (*(v10 + 88))(v15, v9);
    if (v23 != *MEMORY[0x277D5FD50])
    {
      if (v23 == *MEMORY[0x277D5FD70] || v23 == *MEMORY[0x277D5FD60])
      {
        goto LABEL_10;
      }

      if (v23 == *MEMORY[0x277D5FD68] || v23 == *MEMORY[0x277D5FD78] || v23 == *MEMORY[0x277D5FD98] || v23 == *MEMORY[0x277D5FDA8])
      {
        goto LABEL_4;
      }

      if (v23 == *MEMORY[0x277D5FD90])
      {
        v24 = MEMORY[0x277D5FC50];
        goto LABEL_11;
      }

      if (v23 == *MEMORY[0x277D5FD80])
      {
        goto LABEL_4;
      }

      if (v23 == *MEMORY[0x277D5FDA0])
      {
LABEL_10:
        v24 = MEMORY[0x277D5FC58];
        goto LABEL_11;
      }

      if (v23 != *MEMORY[0x277D5FD88] && v23 != *MEMORY[0x277D5FD58])
      {
        v31 = type metadata accessor for PLUSSuggestionNoveltyState();
        (*(*(v31 - 8) + 56))(a2, 1, 1, v31);
        return (*(v10 + 8))(v15, v9);
      }
    }

LABEL_4:
    v24 = MEMORY[0x277D5FC48];
LABEL_11:
    v26 = *v24;
    v20 = type metadata accessor for PLUSSuggestionNoveltyState();
    v21 = *(v20 - 8);
    (*(v21 + 104))(a2, v26, v20);
    return (*(v21 + 56))(a2, 0, 1, v20);
  }

  outlined destroy of MediaUserStateCenter?(v8, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMd, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMR);
  v19 = *MEMORY[0x277D5FC48];
  v20 = type metadata accessor for PLUSSuggestionNoveltyState();
  v21 = *(v20 - 8);
  (*(v21 + 104))(a2, v19, v20);
  return (*(v21 + 56))(a2, 0, 1, v20);
}

uint64_t PimsRuntimeLoggingHandler.extractRedundancyState(serverTreatment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMd, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v34 - v7;
  v9 = type metadata accessor for PimsServerTreatment();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v34 - v17;
  outlined init with copy of MediaUserStateCenter?(a1, v8, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMd, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v8, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMd, &_s28SiriPrivateLearningInference19PimsServerTreatmentOSgMR);
    v19 = type metadata accessor for PLUSSuggestionRedundancyState();
    return (*(*(v19 - 8) + 56))(a2, 1, 1, v19);
  }

  v21 = *(v10 + 32);
  v21(v18, v8, v9);
  v21(v15, v18, v9);
  v22 = (*(v10 + 88))(v15, v9);
  if (v22 == *MEMORY[0x277D5FD70] || v22 == *MEMORY[0x277D5FD60] || v22 == *MEMORY[0x277D5FD68] || v22 == *MEMORY[0x277D5FD78] || v22 == *MEMORY[0x277D5FD98] || v22 == *MEMORY[0x277D5FDA8] || v22 == *MEMORY[0x277D5FD90])
  {
    v29 = MEMORY[0x277D5FCA0];
LABEL_26:
    v30 = *v29;
    v31 = type metadata accessor for PLUSSuggestionRedundancyState();
    v32 = *(v31 - 8);
    (*(v32 + 104))(a2, v30, v31);
    return (*(v32 + 56))(a2, 0, 1, v31);
  }

  if (v22 == *MEMORY[0x277D5FDA0])
  {
    v29 = MEMORY[0x277D5FCA8];
    goto LABEL_26;
  }

  v33 = type metadata accessor for PLUSSuggestionRedundancyState();
  (*(*(v33 - 8) + 56))(a2, 1, 1, v33);
  return (*(v10 + 8))(v15, v9);
}

uint64_t PimsRuntimeLoggingHandler.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  return v0;
}

uint64_t PimsRuntimeLoggingHandler.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t PommesPhoneCallStateManager.__allocating_init(_:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 3;
  *(result + 16) = a1;
  return result;
}

uint64_t one-time initialization function for phoneCallStateQueryTimeoutInMillis()
{
  v0 = type metadata accessor for DispatchTimeInterval();
  __swift_allocate_value_buffer(v0, static PommesPhoneCallStateManager.phoneCallStateQueryTimeoutInMillis);
  *__swift_project_value_buffer(v0, static PommesPhoneCallStateManager.phoneCallStateQueryTimeoutInMillis) = 20;
  v1 = *MEMORY[0x277D85178];
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t PommesPhoneCallStateManager.phoneCallStateQueryTimeoutInMillis.unsafeMutableAddressor()
{
  if (one-time initialization token for phoneCallStateQueryTimeoutInMillis != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for DispatchTimeInterval();

  return __swift_project_value_buffer(v0, static PommesPhoneCallStateManager.phoneCallStateQueryTimeoutInMillis);
}

uint64_t static PommesPhoneCallStateManager.phoneCallStateQueryTimeoutInMillis.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for phoneCallStateQueryTimeoutInMillis != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for DispatchTimeInterval();
  v3 = __swift_project_value_buffer(v2, static PommesPhoneCallStateManager.phoneCallStateQueryTimeoutInMillis);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t PommesPhoneCallStateManager.init(_:)(uint64_t a1)
{
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 3;
  *(v1 + 16) = a1;
  return v1;
}

uint64_t PommesPhoneCallStateManager.fetchIsUserOnPhoneCall(requestId:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](PommesPhoneCallStateManager.fetchIsUserOnPhoneCall(requestId:), 0, 0);
}

uint64_t PommesPhoneCallStateManager.fetchIsUserOnPhoneCall(requestId:)()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = swift_task_alloc();
  v0[5] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D859E0] + 4);
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = PommesPhoneCallStateManager.fetchIsUserOnPhoneCall(requestId:);
  v7 = MEMORY[0x277D839B0];

  return MEMORY[0x2822007B8](v0 + 7, 0, 0, 0xD000000000000022, 0x80000002234E2610, partial apply for closure #1 in PommesPhoneCallStateManager.fetchIsUserOnPhoneCall(requestId:), v4, v7);
}

{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x2822009F8](PommesPhoneCallStateManager.fetchIsUserOnPhoneCall(requestId:), 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 56));
}

uint64_t closure #1 in PommesPhoneCallStateManager.fetchIsUserOnPhoneCall(requestId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v17 - v12;
  (*(v9 + 16))(&v17 - v12, a1, v8);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = swift_allocObject();
  (*(v9 + 32))(v15 + v14, v13, v8);
  (*(*a2 + 128))(a3, a4, partial apply for closure #1 in closure #1 in PommesPhoneCallStateManager.fetchIsUserOnPhoneCall(requestId:), v15);
}

Swift::Bool __swiftcall PommesPhoneCallStateManager.cachedIsUserOnPhoneCall(requestId:conservative:)(Swift::String_optional requestId, Swift::Bool conservative)
{
  if (*(v2 + 40) > 1u)
  {
    if (*(v2 + 40) == 2)
    {
      if (requestId.value._object)
      {
        v9 = *(v2 + 24) == requestId.value._countAndFlagsBits && *(v2 + 32) == requestId.value._object;
        if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          if (one-time initialization token for pommes != -1)
          {
            swift_once();
          }

          v10 = type metadata accessor for Logger();
          __swift_project_value_buffer(v10, static Logger.pommes);
          v5 = Logger.logObject.getter();
          v11 = static os_log_type_t.debug.getter();
          if (!os_log_type_enabled(v5, v11))
          {
            conservative = 1;
            goto LABEL_32;
          }

          v7 = swift_slowAlloc();
          *v7 = 0;
          _os_log_impl(&dword_2232BB000, v5, v11, "PommesPhoneCallStateManager: User is on phone call", v7, 2u);
          conservative = 1;
          goto LABEL_31;
        }
      }

      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      __swift_project_value_buffer(v15, static Logger.pommes);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        v8 = "PommesPhoneCallStateManager: requestId is not the same as cached requestId value, cannot determine call state";
        goto LABEL_30;
      }
    }

    else
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, static Logger.pommes);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        v8 = "PommesPhoneCallStateManager: unknown phone call state";
        goto LABEL_30;
      }
    }
  }

  else
  {
    if (*(v2 + 40))
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, static Logger.pommes);
      v5 = Logger.logObject.getter();
      v13 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v5, v13))
      {
        conservative = 0;
        goto LABEL_32;
      }

      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2232BB000, v5, v13, "PommesPhoneCallStateManager: not in phone call", v7, 2u);
      conservative = 0;
      goto LABEL_31;
    }

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.pommes);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      v8 = "PommesPhoneCallStateManager: pending phone call state";
LABEL_30:
      _os_log_impl(&dword_2232BB000, v5, v6, v8, v7, 2u);
LABEL_31:
      MEMORY[0x223DE0F80](v7, -1, -1);
    }
  }

LABEL_32:

  return conservative;
}

uint64_t PommesPhoneCallStateManager.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  outlined consume of PommesPhoneCallStateManager.Status(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  return v0;
}

uint64_t PommesPhoneCallStateManager.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  outlined consume of PommesPhoneCallStateManager.Status(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t dispatch thunk of PommesPhoneCallStateManager.fetchIsUserOnPhoneCall(requestId:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 136);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = dispatch thunk of SageSearch.search(query:location:);

  return v10(a1, a2);
}

uint64_t get_enum_tag_for_layout_string_21SiriInformationSearch27PommesPhoneCallStateManagerC6Status33_FC42574546B17363A16536B78F6DCCFCLLO(uint64_t a1)
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

uint64_t getEnumTagSinglePayload for PommesPhoneCallStateManager.Status(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PommesPhoneCallStateManager.Status(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t destructiveInjectEnumTag for PommesPhoneCallStateManager.Status(uint64_t result, unsigned int a2)
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

uint64_t specialized static PommesPhoneCallStateManager.Status.== infix(_:_:)(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      if (a6 == 2)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else if (a6 == 3 && !(a5 | a4))
    {
      return 1;
    }

    return 0;
  }

  if (a3)
  {
    if (a6 == 1)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    return 0;
  }

  if (a6)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t partial apply for closure #1 in closure #1 in PommesPhoneCallStateManager.fetchIsUserOnPhoneCall(requestId:)()
{
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR) - 8);
  v1 = (*(v0 + 80) + 16) & ~*(v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

unint64_t type metadata accessor for AFServiceDeviceContext()
{
  result = lazy cache variable for type metadata for AFServiceDeviceContext;
  if (!lazy cache variable for type metadata for AFServiceDeviceContext)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for AFServiceDeviceContext);
  }

  return result;
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0xE800000000000000;
    v10 = 0x65736E6F70736572;
    if (a1 != 6)
    {
      v10 = 0x7365525454736168;
      v9 = 0xED000065736E6F70;
    }

    v11 = 0x69646E6143707274;
    v12 = 0xEE00644965746164;
    if (a1 != 4)
    {
      v11 = 0x6449756374;
      v12 = 0xE500000000000000;
    }

    if (a1 <= 5u)
    {
      v7 = v11;
    }

    else
    {
      v7 = v10;
    }

    if (v2 <= 5)
    {
      v8 = v12;
    }

    else
    {
      v8 = v9;
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 0xE600000000000000;
    v5 = 0x736573726170;
    if (a1 != 2)
    {
      v5 = 0xD000000000000014;
      v4 = 0x80000002234D9FD0;
    }

    v6 = 0xD000000000000011;
    if (a1)
    {
      v3 = 0x80000002234D9FB0;
    }

    else
    {
      v6 = 1702060386;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v4;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xE800000000000000;
        if (v7 != 0x65736E6F70736572)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v13 = 0xED000065736E6F70;
        if (v7 != 0x7365525454736168)
        {
LABEL_47:
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
          goto LABEL_48;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xEE00644965746164;
      if (v7 != 0x69646E6143707274)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0xE500000000000000;
      if (v7 != 0x6449756374)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xE600000000000000;
      if (v7 != 0x736573726170)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0x80000002234D9FD0;
      if (v7 != 0xD000000000000014)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2)
  {
    v13 = 0x80000002234D9FB0;
    if (v7 != 0xD000000000000011)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v13 = 0xE400000000000000;
    if (v7 != 1702060386)
    {
      goto LABEL_47;
    }
  }

  if (v8 != v13)
  {
    goto LABEL_47;
  }

  v14 = 1;
LABEL_48:

  return v14 & 1;
}

uint64_t specialized RawRepresentable<>.hash(into:)()
{
  String.hash(into:)();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t PommesSearchRequestXPC.pommesCandidateId.getter@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for ParseStateXPC(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3, v5);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of ParseStateXPC(v1 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_parseState, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = *v7;
  v9 = v7[1];
  if (EnumCaseMultiPayload == 1)
  {
    v11 = v7[2];
    v12 = v7[3];
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseSb13hasTTResponsetMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseSb13hasTTResponsetMR) + 64);
    *a1 = v10;
    a1[1] = v9;
    a1[2] = v11;
    a1[3] = v12;
    v14 = *MEMORY[0x277D56620];
    v15 = type metadata accessor for PommesCandidateId();
    (*(*(v15 - 8) + 104))(a1, v14, v15);
    return outlined destroy of MediaUserStateCenter?(v7 + v13, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  }

  else
  {
    v17 = v7[2];

    *a1 = v10;
    a1[1] = v9;
    v18 = *MEMORY[0x277D56618];
    v19 = type metadata accessor for PommesCandidateId();
    return (*(*(v19 - 8) + 104))(a1, v18, v19);
  }
}

uint64_t outlined init with copy of ParseStateXPC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParseStateXPC(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PommesSearchRequestXPC.domain.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_domain);
  v2 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_domain + 8);

  return v1;
}

uint64_t PommesSearchRequestXPC.assistantId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_assistantId);
  v2 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_assistantId + 8);

  return v1;
}

uint64_t PommesSearchRequestXPC.requestId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_requestId);
  v2 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_requestId + 8);

  return v1;
}

uint64_t PommesSearchRequestXPC.utterance.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_utterance);
  v2 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_utterance + 8);

  return v1;
}

uint64_t PommesSearchRequestXPC.audioSource.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_audioSource);
  v2 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_audioSource + 8);

  return v1;
}

uint64_t PommesSearchRequestXPC.audioDestination.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_audioDestination);
  v2 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_audioDestination + 8);

  return v1;
}

uint64_t PommesSearchRequestXPC.responseMode.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_responseMode);
  v2 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_responseMode + 8);

  return v1;
}

uint64_t PommesSearchRequestXPC.sharedUserId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_sharedUserId);
  v2 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_sharedUserId + 8);

  return v1;
}

id PommesSearchRequestXPC.__allocating_init(domain:listenAfterSpeaking:assistantId:requestId:isMultiUser:parseState:utterance:deviceRestrictions:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12;
  v22 = objc_allocWithZone(v13);
  v23 = &v22[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_domain];
  *v23 = a1;
  v23[1] = a2;
  v22[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_listenAfterSpeaking] = a3;
  v24 = &v22[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_assistantId];
  *v24 = a4;
  v24[1] = a5;
  v25 = &v22[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_requestId];
  *v25 = a6;
  v25[1] = a7;
  v22[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isMultiUser] = a8;
  outlined init with copy of ParseStateXPC(a9, &v22[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_parseState]);
  v26 = &v22[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_utterance];
  *v26 = a10;
  v26[1] = a11;
  v27 = &v22[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_audioSource];
  *v27 = 0;
  v27[1] = 0;
  v28 = &v22[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_audioDestination];
  *v28 = 0;
  v28[1] = 0;
  v29 = &v22[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_responseMode];
  *v29 = 0;
  v29[1] = 0;
  v22[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isEyesFree] = 0;
  v22[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isVoiceTriggerEnabled] = 0;
  v22[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isTextToSpeechEnabled] = 0;
  v22[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isTriggerlessFollowup] = 0;
  v22[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isPushOffRequest] = 0;
  *&v22[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_deviceRestrictions] = a12;
  v22[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isOnlyUserInHome] = 0;
  v30 = OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_inputOrigin;
  v31 = type metadata accessor for InputOrigin();
  (*(*(v31 - 8) + 56))(&v22[v30], 1, 1, v31);
  v32 = &v22[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_sharedUserId];
  *v32 = 0;
  v32[1] = 0;
  *&v22[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_requestContext] = 0;
  *&v22[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_userIdentityClassification] = 0;
  v36.receiver = v22;
  v36.super_class = v35;
  v33 = objc_msgSendSuper2(&v36, sel_init);
  outlined destroy of ParseStateXPC(a9);
  return v33;
}

id PommesSearchRequestXPC.init(domain:listenAfterSpeaking:assistantId:requestId:isMultiUser:parseState:utterance:deviceRestrictions:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  ObjectType = swift_getObjectType();
  v21 = &v12[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_domain];
  *v21 = a1;
  v21[1] = a2;
  v12[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_listenAfterSpeaking] = a3;
  v22 = &v12[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_assistantId];
  *v22 = a4;
  v22[1] = a5;
  v23 = &v12[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_requestId];
  *v23 = a6;
  v23[1] = a7;
  v12[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isMultiUser] = a8;
  outlined init with copy of ParseStateXPC(a9, &v12[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_parseState]);
  v24 = &v12[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_utterance];
  *v24 = a10;
  v24[1] = a11;
  v25 = &v12[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_audioSource];
  *v25 = 0;
  v25[1] = 0;
  v26 = &v12[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_audioDestination];
  *v26 = 0;
  v26[1] = 0;
  v27 = &v12[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_responseMode];
  *v27 = 0;
  v27[1] = 0;
  v12[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isEyesFree] = 0;
  v12[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isVoiceTriggerEnabled] = 0;
  v12[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isTextToSpeechEnabled] = 0;
  v12[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isTriggerlessFollowup] = 0;
  v12[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isPushOffRequest] = 0;
  *&v12[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_deviceRestrictions] = a12;
  v12[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isOnlyUserInHome] = 0;
  v28 = OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_inputOrigin;
  v29 = type metadata accessor for InputOrigin();
  (*(*(v29 - 8) + 56))(&v12[v28], 1, 1, v29);
  v30 = &v12[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_sharedUserId];
  *v30 = 0;
  v30[1] = 0;
  *&v12[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_requestContext] = 0;
  *&v12[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_userIdentityClassification] = 0;
  v34.receiver = v12;
  v34.super_class = ObjectType;
  v31 = objc_msgSendSuper2(&v34, sel_init);
  outlined destroy of ParseStateXPC(a9);
  return v31;
}

uint64_t outlined destroy of ParseStateXPC(uint64_t a1)
{
  v2 = type metadata accessor for ParseStateXPC(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id PommesSearchRequestXPC.__allocating_init(domain:listenAfterSpeaking:assistantId:requestId:isMultiUser:parseState:utterance:audioSource:audioDestination:responseMode:isEyesFree:isVoiceTriggerEnabled:isTextToSpeechEnabled:isTriggerlessFollowup:isPushOffRequest:deviceRestrictions:isOnlyUserInHome:inputOrigin:sharedUserId:requestContext:userIdentityClassification:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, char a19, char a20, char a21, char a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v30 = v29;
  v36 = objc_allocWithZone(v30);
  v37 = &v36[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_domain];
  *v37 = a1;
  v37[1] = a2;
  v36[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_listenAfterSpeaking] = a3;
  v38 = &v36[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_assistantId];
  *v38 = a4;
  v38[1] = a5;
  v39 = &v36[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_requestId];
  *v39 = a6;
  v39[1] = a7;
  v36[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isMultiUser] = a8;
  outlined init with copy of ParseStateXPC(a9, &v36[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_parseState]);
  v40 = &v36[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_utterance];
  *v40 = a10;
  v40[1] = a11;
  v41 = &v36[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_audioSource];
  *v41 = a12;
  v41[1] = a13;
  v42 = &v36[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_audioDestination];
  *v42 = a14;
  v42[1] = a15;
  v43 = &v36[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_responseMode];
  *v43 = a16;
  v43[1] = a17;
  v36[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isEyesFree] = a18;
  v36[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isVoiceTriggerEnabled] = a19;
  v36[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isTextToSpeechEnabled] = a20;
  v36[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isTriggerlessFollowup] = a21;
  v36[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isPushOffRequest] = a22;
  *&v36[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_deviceRestrictions] = a23;
  v36[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isOnlyUserInHome] = a24;
  outlined init with copy of MediaUserStateCenter?(a25, &v36[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_inputOrigin], &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  v44 = &v36[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_sharedUserId];
  *v44 = a26;
  v44[1] = a27;
  *&v36[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_requestContext] = a28;
  *&v36[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_userIdentityClassification] = a29;
  v51.receiver = v36;
  v51.super_class = v50;
  v45 = objc_msgSendSuper2(&v51, sel_init);
  outlined destroy of MediaUserStateCenter?(a25, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  outlined destroy of ParseStateXPC(a9);
  return v45;
}

id PommesSearchRequestXPC.init(domain:listenAfterSpeaking:assistantId:requestId:isMultiUser:parseState:utterance:audioSource:audioDestination:responseMode:isEyesFree:isVoiceTriggerEnabled:isTextToSpeechEnabled:isTriggerlessFollowup:isPushOffRequest:deviceRestrictions:isOnlyUserInHome:inputOrigin:sharedUserId:requestContext:userIdentityClassification:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, char a19, char a20, char a21, char a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  ObjectType = swift_getObjectType();
  v35 = &v29[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_domain];
  *v35 = a1;
  v35[1] = a2;
  v29[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_listenAfterSpeaking] = a3;
  v36 = &v29[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_assistantId];
  *v36 = a4;
  v36[1] = a5;
  v37 = &v29[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_requestId];
  *v37 = a6;
  v37[1] = a7;
  v29[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isMultiUser] = a8;
  outlined init with copy of ParseStateXPC(a9, &v29[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_parseState]);
  v38 = &v29[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_utterance];
  *v38 = a10;
  v38[1] = a11;
  v39 = &v29[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_audioSource];
  *v39 = a12;
  v39[1] = a13;
  v40 = &v29[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_audioDestination];
  *v40 = a14;
  v40[1] = a15;
  v41 = &v29[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_responseMode];
  *v41 = a16;
  v41[1] = a17;
  v29[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isEyesFree] = a18;
  v29[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isVoiceTriggerEnabled] = a19;
  v29[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isTextToSpeechEnabled] = a20;
  v29[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isTriggerlessFollowup] = a21;
  v29[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isPushOffRequest] = a22;
  *&v29[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_deviceRestrictions] = a23;
  v29[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isOnlyUserInHome] = a24;
  outlined init with copy of MediaUserStateCenter?(a25, &v29[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_inputOrigin], &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  v42 = &v29[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_sharedUserId];
  *v42 = a26;
  v42[1] = a27;
  *&v29[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_requestContext] = a28;
  *&v29[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_userIdentityClassification] = a29;
  v49.receiver = v29;
  v49.super_class = ObjectType;
  v43 = objc_msgSendSuper2(&v49, sel_init);
  outlined destroy of MediaUserStateCenter?(a25, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  outlined destroy of ParseStateXPC(a9);
  return v43;
}

uint64_t static PommesSearchRequestXPC.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  static PommesSearchRequestXPC.supportsSecureCoding = a1;
  return result;
}

Swift::Void __swiftcall PommesSearchRequestXPC.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v73 - v7;
  v75 = type metadata accessor for InputOrigin();
  v9 = *(v75 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v75, v11);
  v74 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x223DDF550](*(v1 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_domain), *(v1 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_domain + 8));
  v14 = MEMORY[0x223DDF550](0x6E69616D6F64, 0xE600000000000000);
  [(objc_class *)with.super.isa encodeObject:v13 forKey:v14];

  v15 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_listenAfterSpeaking);
  v16 = MEMORY[0x223DDF550](0xD000000000000013, 0x80000002234E26B0);
  [(objc_class *)with.super.isa encodeBool:v15 forKey:v16];

  v17 = MEMORY[0x223DDF550](*(v2 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_assistantId), *(v2 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_assistantId + 8));
  v18 = MEMORY[0x223DDF550](0x6E61747369737361, 0xEB00000000644974);
  [(objc_class *)with.super.isa encodeObject:v17 forKey:v18];

  v19 = MEMORY[0x223DDF550](*(v2 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_requestId), *(v2 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_requestId + 8));
  v20 = MEMORY[0x223DDF550](0x4974736575716572, 0xE900000000000064);
  [(objc_class *)with.super.isa encodeObject:v19 forKey:v20];

  v21 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isMultiUser);
  v22 = MEMORY[0x223DDF550](0x5569746C754D7369, 0xEB00000000726573);
  [(objc_class *)with.super.isa encodeBool:v21 forKey:v22];

  v23 = type metadata accessor for PropertyListEncoder();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = PropertyListEncoder.init()();
  dispatch thunk of PropertyListEncoder.outputFormat.setter();
  type metadata accessor for ParseStateXPC(0);
  lazy protocol witness table accessor for type ParseStateXPC and conformance ParseStateXPC(&lazy protocol witness table cache variable for type ParseStateXPC and conformance ParseStateXPC, type metadata accessor for ParseStateXPC);
  v78 = v26;
  v27 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v29 = v28;
  outlined copy of Data._Representation(v27, v28);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v76 = v29;
  outlined consume of Data._Representation(v27, v29);
  v31 = MEMORY[0x223DDF550](0x6174536573726170, 0xEA00000000006574);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v31];
  swift_unknownObjectRelease();

  v32 = MEMORY[0x223DDF550](*(v2 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_utterance), *(v2 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_utterance + 8));
  v33 = MEMORY[0x223DDF550](0x636E617265747475, 0xE900000000000065);
  [(objc_class *)with.super.isa encodeObject:v32 forKey:v33];

  if (*(v2 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_audioSource + 8))
  {
    v34 = MEMORY[0x223DDF550](*(v2 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_audioSource));
    v35 = MEMORY[0x223DDF550](0x756F536F69647561, 0xEB00000000656372);
    [(objc_class *)with.super.isa encodeObject:v34 forKey:v35];
  }

  if (*(v2 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_audioDestination + 8))
  {
    v36 = MEMORY[0x223DDF550](*(v2 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_audioDestination));
    v37 = MEMORY[0x223DDF550](0xD000000000000010, 0x80000002234DCAD0);
    [(objc_class *)with.super.isa encodeObject:v36 forKey:v37];
  }

  v77 = v27;
  if (*(v2 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_responseMode + 8))
  {
    v38 = MEMORY[0x223DDF550](*(v2 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_responseMode));
    v39 = MEMORY[0x223DDF550](0x65736E6F70736572, 0xEC00000065646F4DLL);
    [(objc_class *)with.super.isa encodeObject:v38 forKey:v39];
  }

  v40 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isEyesFree);
  v41 = MEMORY[0x223DDF550](0x7246736579457369, 0xEA00000000006565);
  [(objc_class *)with.super.isa encodeBool:v40 forKey:v41];

  v42 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isVoiceTriggerEnabled);
  v43 = MEMORY[0x223DDF550](0xD000000000000015, 0x80000002234DCAF0);
  [(objc_class *)with.super.isa encodeBool:v42 forKey:v43];

  v44 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isTextToSpeechEnabled);
  v45 = MEMORY[0x223DDF550](0xD000000000000015, 0x80000002234DCB10);
  [(objc_class *)with.super.isa encodeBool:v44 forKey:v45];

  v46 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isTriggerlessFollowup);
  v47 = MEMORY[0x223DDF550](0xD000000000000015, 0x80000002234DCB30);
  [(objc_class *)with.super.isa encodeBool:v46 forKey:v47];

  v48 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isPushOffRequest);
  v49 = MEMORY[0x223DDF550](0xD000000000000010, 0x80000002234DCB50);
  [(objc_class *)with.super.isa encodeBool:v48 forKey:v49];

  v50 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_deviceRestrictions);
  v51 = Array._bridgeToObjectiveC()().super.isa;
  v52 = MEMORY[0x223DDF550](0xD000000000000012, 0x80000002234DCB90);
  [(objc_class *)with.super.isa encodeObject:v51 forKey:v52];

  v53 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isOnlyUserInHome);
  v54 = MEMORY[0x223DDF550](0xD000000000000010, 0x80000002234DC670);
  [(objc_class *)with.super.isa encodeBool:v53 forKey:v54];

  if (*(v2 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_sharedUserId + 8))
  {
    v55 = MEMORY[0x223DDF550](*(v2 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_sharedUserId));
    v56 = MEMORY[0x223DDF550](0x7355646572616873, 0xEC00000064497265);
    [(objc_class *)with.super.isa encodeObject:v55 forKey:v56];
  }

  outlined init with copy of MediaUserStateCenter?(v2 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_inputOrigin, v8, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  v57 = v75;
  if ((*(v9 + 48))(v8, 1, v75) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v8, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  }

  else
  {
    v58 = v74;
    (*(v9 + 32))(v74, v8, v57);
    v59 = InputOrigin.rawValue.getter();
    v60 = MEMORY[0x223DDF550](v59);

    v61 = MEMORY[0x223DDF550](0x69724F7475706E69, 0xEB000000006E6967);
    [(objc_class *)with.super.isa encodeObject:v60 forKey:v61];

    (*(v9 + 8))(v58, v57);
  }

  v62 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_requestContext);
  if (v62)
  {
    v63 = type metadata accessor for JSONEncoder();
    v64 = *(v63 + 48);
    v65 = *(v63 + 52);
    swift_allocObject();

    JSONEncoder.init()();
    v79 = v62;
    type metadata accessor for PommesRequestContext();
    lazy protocol witness table accessor for type ParseStateXPC and conformance ParseStateXPC(&lazy protocol witness table cache variable for type PommesRequestContext and conformance PommesRequestContext, type metadata accessor for PommesRequestContext);
    v66 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v68 = v67;
    v69 = Data._bridgeToObjectiveC()().super.isa;
    v70 = MEMORY[0x223DDF550](0x4374736575716572, 0xEE00747865746E6FLL);
    [(objc_class *)with.super.isa encodeObject:v69 forKey:v70];

    outlined consume of Data._Representation(v66, v68);
  }

  v71 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_userIdentityClassification);
  v72 = MEMORY[0x223DDF550](0xD00000000000001ALL, 0x80000002234E26D0);
  [(objc_class *)with.super.isa encodeInteger:v71 forKey:v72];

  outlined consume of Data?(v77, v76);
}

uint64_t lazy protocol witness table accessor for type ParseStateXPC and conformance ParseStateXPC(unint64_t *a1, void (*a2)(uint64_t))
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

id PommesSearchRequestXPC.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v139 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v108 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13ParseStateXPCOSgMd, &_s21SiriInformationSearch13ParseStateXPCOSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = &v108 - v15;
  v17 = type metadata accessor for ParseStateXPC(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v21 = MEMORY[0x28223BE20](v17, v20);
  v23 = &v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v108 - v25;
  v27 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
  v28 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v28 || (v142 = 0uLL, v29 = v28, static String._conditionallyBridgeFromObjectiveC(_:result:)(), v29, !*(&v142 + 1)))
  {

LABEL_22:
    swift_getObjectType();
    v49 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v50 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v137 = v142;
  v30 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v30 || (v142 = 0uLL, v31 = v30, static String._conditionallyBridgeFromObjectiveC(_:result:)(), v31, !*(&v142 + 1)))
  {

    goto LABEL_22;
  }

  v135 = v11;
  v136 = *(&v142 + 1);
  v134 = v142;
  v32 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v32 || (v142 = 0uLL, v33 = v32, static String._conditionallyBridgeFromObjectiveC(_:result:)(), v33, !*(&v142 + 1)))
  {

    goto LABEL_22;
  }

  v133 = v142;
  v34 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v34 || (v142 = 0uLL, v35 = v34, static String._conditionallyBridgeFromObjectiveC(_:result:)(), v35, !*(&v142 + 1)))
  {

    goto LABEL_22;
  }

  v132 = *(&v142 + 1);
  v129 = v142;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_2234CF940;
  *(v36 + 32) = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSArray, 0x277CBEA60);
  *(v36 + 40) = v27;
  NSCoder.decodeObject(of:forKey:)();

  if (v143)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v37 = swift_dynamicCast();
    v38 = v140;
    if (!v37)
    {
      v38 = 0;
    }

    v131 = v38;
  }

  else
  {
    outlined destroy of MediaUserStateCenter?(&v142, &_sypSgMd, &_sypSgMR);
    v131 = 0;
  }

  v39 = MEMORY[0x223DDF550](0xD000000000000013, 0x80000002234E26B0);
  v128 = [a1 decodeBoolForKey_];

  v40 = MEMORY[0x223DDF550](0x5569746C754D7369, 0xEB00000000726573);
  v127 = [a1 decodeBoolForKey_];

  v41 = type metadata accessor for PropertyListDecoder();
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();
  v44 = PropertyListDecoder.init()();
  v126 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSData, 0x277CBEA90);
  v45 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v45 || (v130 = v44, v125 = xmmword_2234CF930, v142 = xmmword_2234CF930, v46 = v45, static Data._conditionallyBridgeFromObjectiveC(_:result:)(), v46, v47 = *(&v142 + 1), *(&v142 + 1) >> 60 == 15))
  {

    goto LABEL_22;
  }

  v48 = v142;
  lazy protocol witness table accessor for type ParseStateXPC and conformance ParseStateXPC(&lazy protocol witness table cache variable for type ParseStateXPC and conformance ParseStateXPC, type metadata accessor for ParseStateXPC);
  v123 = v48;
  v124 = v47;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  (*(v18 + 56))(v16, 0, 1, v17);
  outlined init with take of ParseStateXPC(v16, v26);
  v52 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v52)
  {
    v142 = 0uLL;
    v53 = v52;
    static String._conditionallyBridgeFromObjectiveC(_:result:)();

    v122 = *(&v142 + 1);
    v54 = v142;
    if (!*(&v142 + 1))
    {
      v54 = 0;
    }

    v121 = v54;
  }

  else
  {
    v121 = 0;
    v122 = 0;
  }

  v55 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v55)
  {
    v142 = 0uLL;
    v56 = v55;
    static String._conditionallyBridgeFromObjectiveC(_:result:)();

    v120 = *(&v142 + 1);
    v57 = v142;
    if (!*(&v142 + 1))
    {
      v57 = 0;
    }

    v119 = v57;
  }

  else
  {
    v119 = 0;
    v120 = 0;
  }

  v58 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v58)
  {
    v142 = 0uLL;
    v59 = v58;
    static String._conditionallyBridgeFromObjectiveC(_:result:)();

    v118 = *(&v142 + 1);
    v60 = v142;
    if (!*(&v142 + 1))
    {
      v60 = 0;
    }

    v117 = v60;
  }

  else
  {
    v117 = 0;
    v118 = 0;
  }

  v61 = MEMORY[0x223DDF550](0x7246736579457369, 0xEA00000000006565);
  v116 = [a1 decodeBoolForKey_];

  v62 = MEMORY[0x223DDF550](0xD000000000000015, 0x80000002234DCAF0);
  v115 = [a1 decodeBoolForKey_];

  v63 = MEMORY[0x223DDF550](0xD000000000000015, 0x80000002234DCB10);
  v114 = [a1 decodeBoolForKey_];

  v64 = MEMORY[0x223DDF550](0xD000000000000015, 0x80000002234DCB30);
  v113 = [a1 decodeBoolForKey_];

  v65 = MEMORY[0x223DDF550](0xD000000000000010, 0x80000002234DCB50);
  v112 = [a1 decodeBoolForKey_];

  v66 = MEMORY[0x223DDF550](0xD000000000000010, 0x80000002234DC670);
  v111 = [a1 decodeBoolForKey_];

  v67 = type metadata accessor for InputOrigin();
  (*(*(v67 - 8) + 56))(v135, 1, 1, v67);
  v68 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v68)
  {
    v142 = 0uLL;
    v69 = v68;
    static String._conditionallyBridgeFromObjectiveC(_:result:)();

    if (*(&v142 + 1))
    {
      v70 = v139;
      InputOrigin.init(rawValue:)();
      v71 = v135;
      outlined destroy of MediaUserStateCenter?(v135, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
      outlined init with take of PommesSearchReason?(v70, v71, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
    }
  }

  v72 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v72)
  {
    v142 = 0uLL;
    v73 = v72;
    static String._conditionallyBridgeFromObjectiveC(_:result:)();

    v110 = *(&v142 + 1);
    v74 = v142;
    if (!*(&v142 + 1))
    {
      v74 = 0;
    }

    v109 = v74;
  }

  else
  {
    v109 = 0;
    v110 = 0;
  }

  v75 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v75 || (v142 = v125, v76 = v75, static Data._conditionallyBridgeFromObjectiveC(_:result:)(), v76, v77 = *(&v142 + 1), *(&v142 + 1) >> 60 == 15))
  {
    v107 = 0;
  }

  else
  {
    v78 = v142;
    v79 = type metadata accessor for JSONDecoder();
    v80 = *(v79 + 48);
    v81 = *(v79 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    type metadata accessor for PommesRequestContext();
    lazy protocol witness table accessor for type ParseStateXPC and conformance ParseStateXPC(&lazy protocol witness table cache variable for type PommesRequestContext and conformance PommesRequestContext, type metadata accessor for PommesRequestContext);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    outlined consume of Data?(v78, v77);
    v107 = v142;
  }

  v82 = MEMORY[0x223DDF550](0xD00000000000001ALL, 0x80000002234E26D0);
  v126 = [a1 decodeIntegerForKey_];

  outlined init with copy of ParseStateXPC(v26, v23);
  if (v131)
  {
    v83 = v131;
  }

  else
  {
    v83 = MEMORY[0x277D84F90];
  }

  v84 = v135;
  v85 = v139;
  outlined init with copy of MediaUserStateCenter?(v135, v139, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  v86 = ObjectType;
  v87 = objc_allocWithZone(ObjectType);
  v88 = &v87[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_domain];
  v89 = *(&v137 + 1);
  *v88 = v137;
  v88[1] = v89;
  v87[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_listenAfterSpeaking] = v128;
  v90 = &v87[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_assistantId];
  v91 = v136;
  *v90 = v134;
  v90[1] = v91;
  v92 = &v87[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_requestId];
  v93 = *(&v133 + 1);
  *v92 = v133;
  v92[1] = v93;
  v87[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isMultiUser] = v127;
  outlined init with copy of ParseStateXPC(v23, &v87[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_parseState]);
  v94 = &v87[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_utterance];
  v95 = v132;
  *v94 = v129;
  v94[1] = v95;
  v96 = &v87[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_audioSource];
  v97 = v122;
  *v96 = v121;
  v96[1] = v97;
  v98 = &v87[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_audioDestination];
  v99 = v120;
  *v98 = v119;
  v98[1] = v99;
  v100 = &v87[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_responseMode];
  v101 = v118;
  *v100 = v117;
  v100[1] = v101;
  v87[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isEyesFree] = v116;
  v87[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isVoiceTriggerEnabled] = v115;
  v87[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isTextToSpeechEnabled] = v114;
  v87[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isTriggerlessFollowup] = v113;
  v87[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isPushOffRequest] = v112;
  *&v87[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_deviceRestrictions] = v83;
  v87[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isOnlyUserInHome] = v111;
  outlined init with copy of MediaUserStateCenter?(v85, &v87[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_inputOrigin], &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  v102 = &v87[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_sharedUserId];
  v103 = v110;
  *v102 = v109;
  v102[1] = v103;
  *&v87[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_requestContext] = v107;
  *&v87[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_userIdentityClassification] = v126;
  v141.receiver = v87;
  v141.super_class = v86;

  v104 = objc_msgSendSuper2(&v141, sel_init);

  outlined consume of Data?(v123, v124);

  outlined destroy of MediaUserStateCenter?(v85, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  outlined destroy of ParseStateXPC(v23);
  outlined destroy of MediaUserStateCenter?(v84, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  outlined destroy of ParseStateXPC(v26);
  swift_getObjectType();
  v105 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
  v106 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
  swift_deallocPartialClassInstance();
  return v104;
}

id PommesSearchRequestXPC.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PommesSearchRequestXPC.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ParseStateXPC.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ParseStateXPC.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ParseStateXPC.CodingKeys(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1702060386;
  v5 = 0xE800000000000000;
  v6 = 0x65736E6F70736572;
  if (v2 != 6)
  {
    v6 = 0x7365525454736168;
    v5 = 0xED000065736E6F70;
  }

  v7 = 0xEE00644965746164;
  v8 = 0x69646E6143707274;
  if (v2 != 4)
  {
    v8 = 0x6449756374;
    v7 = 0xE500000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x736573726170;
  if (v2 != 2)
  {
    v10 = 0xD000000000000014;
    v9 = 0x80000002234D9FD0;
  }

  if (*v1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x80000002234D9FB0;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance ParseStateXPC.CodingKeys()
{
  v1 = *v0;
  v2 = 1702060386;
  v3 = 0x65736E6F70736572;
  if (v1 != 6)
  {
    v3 = 0x7365525454736168;
  }

  v4 = 0x69646E6143707274;
  if (v1 != 4)
  {
    v4 = 0x6449756374;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x736573726170;
  if (v1 != 2)
  {
    v5 = 0xD000000000000014;
  }

  if (*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance ParseStateXPC.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized ParseStateXPC.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParseStateXPC.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParseStateXPC.CodingKeys and conformance ParseStateXPC.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParseStateXPC.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParseStateXPC.CodingKeys and conformance ParseStateXPC.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ParseStateXPC.Base(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 7369332;
  }

  else
  {
    v4 = 25458;
  }

  if (v3)
  {
    v5 = 0xE200000000000000;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  if (*a2)
  {
    v6 = 7369332;
  }

  else
  {
    v6 = 25458;
  }

  if (*a2)
  {
    v7 = 0xE300000000000000;
  }

  else
  {
    v7 = 0xE200000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ParseStateXPC.Base()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ParseStateXPC.Base()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ParseStateXPC.Base()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ParseStateXPC.Base@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ParseStateXPC.Base.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ParseStateXPC.Base(uint64_t *a1@<X8>)
{
  v2 = 25458;
  if (*v1)
  {
    v2 = 7369332;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t ParseStateXPC.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v93 = (&v81 - v6);
  v7 = type metadata accessor for BinaryDecodingOptions();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v94 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v95 = &v81 - v14;
  v15 = type metadata accessor for Siri_Nlu_External_UserParse();
  v16 = *(v15 - 8);
  v96 = v15;
  v97 = v16;
  v17 = *(v16 + 64);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v81 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21SiriInformationSearch13ParseStateXPCO10CodingKeys33_E065372DCE90FD596135518B764470A3LLOGMd, &_ss22KeyedDecodingContainerVy21SiriInformationSearch13ParseStateXPCO10CodingKeys33_E065372DCE90FD596135518B764470A3LLOGMR);
  v99 = *(v25 - 8);
  v26 = *(v99 + 64);
  MEMORY[0x28223BE20](v25, v27);
  v29 = &v81 - v28;
  v30 = type metadata accessor for ParseStateXPC(0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30, v32);
  v34 = &v81 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a1[3];
  v35 = a1[4];
  v100 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v36);
  lazy protocol witness table accessor for type ParseStateXPC.CodingKeys and conformance ParseStateXPC.CodingKeys();
  v37 = v105;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v37)
  {
    return __swift_destroy_boxed_opaque_existential_1(v100);
  }

  v105 = v24;
  v91 = v34;
  v92 = v21;
  v38 = v30;
  LOBYTE(v104) = 0;
  lazy protocol witness table accessor for type ParseStateXPC.Base and conformance ParseStateXPC.Base();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v39 = v25;
  if (v101)
  {
    LOBYTE(v101) = 4;
    v41 = KeyedDecodingContainer.decode(_:forKey:)();
    v43 = v42;
    v44 = v29;
    v45 = v41;
    LOBYTE(v101) = 5;
    v46 = KeyedDecodingContainer.decode(_:forKey:)();
    v47 = v25;
    v52 = v51;
    v105 = v46;
    type metadata accessor for TCUMappedNLResponse();
    LOBYTE(v101) = 6;
    lazy protocol witness table accessor for type ParseStateXPC and conformance ParseStateXPC(&lazy protocol witness table cache variable for type TCUMappedNLResponse and conformance TCUMappedNLResponse, MEMORY[0x277D5D140]);
    v53 = v93;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    LOBYTE(v101) = 7;
    v74 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v99 + 8))(v44, v47);
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseSb13hasTTResponsetMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseSb13hasTTResponsetMR);
    v76 = *(v75 + 64);
    v77 = *(v75 + 80);
    v78 = v53;
    v79 = v91;
    *v91 = v45;
    v79[1] = v43;
    v79[2] = v105;
    v79[3] = v52;
    outlined init with take of PommesSearchReason?(v78, v79 + v76, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    *(v79 + v77) = v74 & 1;
    swift_storeEnumTagMultiPayload();
    v80 = v98;
LABEL_17:
    outlined init with take of ParseStateXPC(v79, v80);
    return __swift_destroy_boxed_opaque_existential_1(v100);
  }

  LOBYTE(v101) = 1;
  v48 = KeyedDecodingContainer.decode(_:forKey:)();
  v80 = v98;
  v50 = v49;
  v85 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
  LOBYTE(v104) = 2;
  lazy protocol witness table accessor for type [Data] and conformance <A> [A](&lazy protocol witness table cache variable for type [Data] and conformance <A> [A], lazy protocol witness table accessor for type Data and conformance Data);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v82 = v29;
  v81 = v38;
  v83 = v50;
  v84 = v39;
  result = v101;
  v89 = *(v101 + 16);
  if (!v89)
  {
    v93 = MEMORY[0x277D84F90];
LABEL_16:

    LOBYTE(v101) = 3;
    v70 = v84;
    v71 = v82;
    v72 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v99 + 8))(v71, v70);
    v79 = v91;
    v73 = v83;
    *v91 = v85;
    v79[1] = v73;
    v79[2] = v93;
    *(v79 + 24) = v72 & 1;
    swift_storeEnumTagMultiPayload();
    goto LABEL_17;
  }

  v54 = 0;
  v88 = (v97 + 56);
  v90 = (v97 + 32);
  v87 = (v97 + 16);
  v86 = v97 + 8;
  v93 = MEMORY[0x277D84F90];
  v55 = v96;
  v56 = v92;
  while (v54 < *(result + 16))
  {
    v57 = result;
    v104 = *(result + 16 * v54 + 32);
    v103 = 0;
    v101 = 0u;
    v102 = 0u;
    v58 = *(&v104 + 1);
    v59 = v104;
    outlined copy of Data._Representation(v104, *(&v104 + 1));
    v60 = v58;
    outlined copy of Data._Representation(v59, v58);
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type ParseStateXPC and conformance ParseStateXPC(&lazy protocol witness table cache variable for type Siri_Nlu_External_UserParse and conformance Siri_Nlu_External_UserParse, MEMORY[0x277D5DB08]);
    v61 = v95;
    Message.init<A>(contiguousBytes:extensions:partial:options:)();
    (*v88)(v61, 0, 1, v55);
    v62 = *v90;
    v63 = v105;
    (*v90)(v105);
    (*v87)(v56, v63, v55);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v93 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v93[2] + 1, 1, v93);
    }

    v65 = v93[2];
    v64 = v93[3];
    if (v65 >= v64 >> 1)
    {
      v93 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v64 > 1, v65 + 1, 1, v93);
    }

    ++v54;
    outlined consume of Data._Representation(v59, v60);
    v66 = v96;
    v67 = v97;
    (*(v97 + 8))(v105, v96);
    v68 = v93;
    v93[2] = v65 + 1;
    v55 = v66;
    v69 = v68 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v65;
    v56 = v92;
    (v62)(v69, v92, v66);
    v80 = v98;
    result = v57;
    if (v89 == v54)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t ParseStateXPC.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = v52 - v7;
  v9 = type metadata accessor for Siri_Nlu_External_UserParse();
  v10 = *(v9 - 8);
  v58 = v9;
  v59 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v57 = v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ParseStateXPC(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14, v16);
  v18 = (v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21SiriInformationSearch13ParseStateXPCO10CodingKeys33_E065372DCE90FD596135518B764470A3LLOGMd, &_ss22KeyedEncodingContainerVy21SiriInformationSearch13ParseStateXPCO10CodingKeys33_E065372DCE90FD596135518B764470A3LLOGMR);
  v61 = *(v19 - 8);
  v20 = *(v61 + 64);
  MEMORY[0x28223BE20](v19, v21);
  v23 = v52 - v22;
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ParseStateXPC.CodingKeys and conformance ParseStateXPC.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of ParseStateXPC(v2, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v26 = *v18;
  v27 = v18[1];
  if (EnumCaseMultiPayload == 1)
  {
    v28 = v18[3];
    v58 = v18[2];
    v59 = v26;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseSb13hasTTResponsetMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseSb13hasTTResponsetMR);
    v30 = *(v18 + *(v29 + 80));
    outlined init with take of PommesSearchReason?(v18 + *(v29 + 64), v8, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    LOBYTE(v62) = 1;
    v63 = 0;
    lazy protocol witness table accessor for type ParseStateXPC.Base and conformance ParseStateXPC.Base();
    v31 = v60;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v31)
    {
    }

    else
    {
      LOBYTE(v62) = 4;
      KeyedEncodingContainer.encode(_:forKey:)();

      LOBYTE(v62) = 5;
      KeyedEncodingContainer.encode(_:forKey:)();

      LOBYTE(v62) = 6;
      type metadata accessor for TCUMappedNLResponse();
      lazy protocol witness table accessor for type ParseStateXPC and conformance ParseStateXPC(&lazy protocol witness table cache variable for type TCUMappedNLResponse and conformance TCUMappedNLResponse, MEMORY[0x277D5D140]);
      KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
      LOBYTE(v62) = 7;
      KeyedEncodingContainer.encode(_:forKey:)();
    }

    outlined destroy of MediaUserStateCenter?(v8, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    return (*(v61 + 8))(v23, v19);
  }

  else
  {
    v33 = v18[2];
    v34 = *(v18 + 24);
    LOBYTE(v62) = 0;
    v63 = 0;
    lazy protocol witness table accessor for type ParseStateXPC.Base and conformance ParseStateXPC.Base();
    v35 = v60;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v35)
    {
      (*(v61 + 8))(v23, v19);
    }

    else
    {
      LOBYTE(v62) = 1;
      KeyedEncodingContainer.encode(_:forKey:)();

      LOBYTE(v62) = 3;
      KeyedEncodingContainer.encode(_:forKey:)();
      v53 = v23;
      v54 = v19;
      v36 = *(v33 + 16);
      if (v36)
      {
        v37 = v58;
        v60 = *(v59 + 16);
        v38 = (*(v59 + 80) + 32) & ~*(v59 + 80);
        v52[1] = v33;
        v39 = v33 + v38;
        v40 = *(v59 + 72);
        v55 = (v59 + 8);
        v56 = v40;
        v41 = MEMORY[0x277D84F90];
        v59 += 16;
        v42 = v57;
        v60(v57, v39, v58);
        while (1)
        {
          lazy protocol witness table accessor for type ParseStateXPC and conformance ParseStateXPC(&lazy protocol witness table cache variable for type Siri_Nlu_External_UserParse and conformance Siri_Nlu_External_UserParse, MEMORY[0x277D5DB08]);
          v43 = Message.serializedData(partial:)();
          v45 = v44;
          (*v55)(v42, v37);
          v46 = v41;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v41 + 2) + 1, 1, v41);
          }

          v48 = *(v46 + 2);
          v47 = *(v46 + 3);
          v41 = v46;
          if (v48 >= v47 >> 1)
          {
            v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v46);
          }

          *(v41 + 2) = v48 + 1;
          v49 = &v41[16 * v48];
          *(v49 + 4) = v43;
          *(v49 + 5) = v45;
          v37 = v58;
          v39 += v56;
          if (!--v36)
          {
            break;
          }

          v60(v42, v39, v58);
        }
      }

      else
      {

        v41 = MEMORY[0x277D84F90];
      }

      v62 = v41;
      v63 = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
      lazy protocol witness table accessor for type [Data] and conformance <A> [A](&lazy protocol witness table cache variable for type [Data] and conformance <A> [A], lazy protocol witness table accessor for type Data and conformance Data);
      v50 = v53;
      v51 = v54;
      KeyedEncodingContainer.encode<A>(_:forKey:)();

      return (*(v61 + 8))(v50, v51);
    }
  }
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ12SiriNLUTypes0B23_Nlu_External_UserParseV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlu_External_UserParse();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v27 - v12;
  v14 = *(a1 + 16);
  if (v14 != *(a2 + 16))
  {
    v24 = 0;
    return v24 & 1;
  }

  if (!v14 || a1 == a2)
  {
    v24 = 1;
    return v24 & 1;
  }

  v15 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v16 = a1 + v15;
  v17 = a2 + v15;
  v19 = *(v5 + 16);
  v18 = v5 + 16;
  v20 = (v18 - 8);
  v27 = *(v18 + 56);
  v28 = v19;
  while (1)
  {
    v21 = v28;
    result = (v28)(v13, v16, v4);
    if (!v14)
    {
      break;
    }

    v23 = v18;
    v21(v10, v17, v4);
    lazy protocol witness table accessor for type ParseStateXPC and conformance ParseStateXPC(&lazy protocol witness table cache variable for type Siri_Nlu_External_UserParse and conformance Siri_Nlu_External_UserParse, MEMORY[0x277D5DB08]);
    v24 = dispatch thunk of static Equatable.== infix(_:_:)();
    v25 = *v20;
    (*v20)(v10, v4);
    v25(v13, v4);
    if (v24)
    {
      v17 += v27;
      v16 += v27;
      v26 = v14-- == 1;
      v18 = v23;
      if (!v26)
      {
        continue;
      }
    }

    return v24 & 1;
  }

  __break(1u);
  return result;
}

uint64_t static NLParseResponse.== infix(_:_:)()
{
  v0 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x28223BE20](v0, v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v15 - v8;
  NLParseResponse.responseStatusCode.getter();
  NLParseResponse.responseStatusCode.getter();
  lazy protocol witness table accessor for type ParseStateXPC and conformance ParseStateXPC(&lazy protocol witness table cache variable for type Siri_Nlu_External_ResponseStatus.StatusCode and conformance Siri_Nlu_External_ResponseStatus.StatusCode, MEMORY[0x277D5DBC0]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v10 = *(v1 + 8);
  v10(v6, v0);
  v10(v9, v0);
  if (v15[1] == v15[0])
  {
    v11 = NLParseResponse.userParses.getter();
    v12 = NLParseResponse.userParses.getter();
    v13 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ12SiriNLUTypes0B23_Nlu_External_UserParseV_Tt1g5(v11, v12);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t key path setter for PommesSearchRequestXPCBuilder.domain : PommesSearchRequestXPCBuilder(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
}

uint64_t PommesSearchRequestXPCBuilder.domain.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t key path setter for PommesSearchRequestXPCBuilder.assistantId : PommesSearchRequestXPCBuilder(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 40);
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
}

uint64_t PommesSearchRequestXPCBuilder.assistantId.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t key path setter for PommesSearchRequestXPCBuilder.requestId : PommesSearchRequestXPCBuilder(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 56);
  *(v4 + 48) = v3;
  *(v4 + 56) = v2;
}

uint64_t PommesSearchRequestXPCBuilder.requestId.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t key path setter for PommesSearchRequestXPCBuilder.parseState : PommesSearchRequestXPCBuilder(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for ParseStateXPC(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ParseStateXPC(a1, v8);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_parseState;
  swift_beginAccess();
  outlined assign with take of ParseStateXPC(v8, v9 + v10);
  return swift_endAccess();
}

uint64_t PommesSearchRequestXPCBuilder.parseState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_parseState;
  swift_beginAccess();
  return outlined init with copy of ParseStateXPC(v1 + v3, a1);
}

uint64_t key path setter for PommesSearchRequestXPCBuilder.utterance : PommesSearchRequestXPCBuilder(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_utterance);
  swift_beginAccess();
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;
}

uint64_t PommesSearchRequestXPCBuilder.utterance.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_utterance);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t PommesSearchRequestXPCBuilder.listenAfterSpeaking.getter()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_listenAfterSpeaking;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t PommesSearchRequestXPCBuilder.isMultiUser.getter()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_isMultiUser;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t PommesSearchRequestXPCBuilder.isEyesFree.getter()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_isEyesFree;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t PommesSearchRequestXPCBuilder.isVoiceTriggerEnabled.getter()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_isVoiceTriggerEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t PommesSearchRequestXPCBuilder.isTextToSpeechEnabled.getter()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_isTextToSpeechEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t PommesSearchRequestXPCBuilder.isTriggerlessFollowup.getter()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_isTriggerlessFollowup;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t PommesSearchRequestXPCBuilder.isPushOffRequest.getter()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_isPushOffRequest;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t key path setter for PommesSearchRequestXPCBuilder.deviceRestrictions : PommesSearchRequestXPCBuilder(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_deviceRestrictions;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t PommesSearchRequestXPCBuilder.deviceRestrictions.getter()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_deviceRestrictions;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t PommesSearchRequestXPCBuilder.isOnlyUserInHome.getter()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_isOnlyUserInHome;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t key path setter for PommesSearchRequestXPCBuilder.inputOrigin : PommesSearchRequestXPCBuilder(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v12 - v7;
  outlined init with copy of MediaUserStateCenter?(a1, &v12 - v7, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_inputOrigin;
  swift_beginAccess();
  outlined assign with take of InputOrigin?(v8, v9 + v10);
  return swift_endAccess();
}

uint64_t PommesSearchRequestXPCBuilder.inputOrigin.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_inputOrigin;
  swift_beginAccess();
  return outlined init with copy of MediaUserStateCenter?(v1 + v3, a1, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
}

uint64_t key path setter for PommesSearchRequestXPCBuilder.audioSource : PommesSearchRequestXPCBuilder(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v6;
  v7[1] = v5;
}

uint64_t PommesSearchRequestXPCBuilder.audioSource.getter(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

uint64_t key path setter for PommesSearchRequestXPCBuilder.requestContext : PommesSearchRequestXPCBuilder(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_requestContext;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t PommesSearchRequestXPCBuilder.requestContext.getter()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_requestContext;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t PommesSearchRequestXPCBuilder.userIdentityClassification.getter()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_userIdentityClassification;
  swift_beginAccess();
  return *(v0 + v1);
}

char *PommesSearchRequestXPCBuilder.__allocating_init(domain:assistantId:requestId:parseState:utterance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = *(v9 + 48);
  v16 = *(v9 + 52);
  v17 = swift_allocObject();
  v18 = &v17[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_audioSource];
  *v18 = 0;
  *(v18 + 1) = 0;
  v19 = &v17[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_audioDestination];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = &v17[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_responseMode];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_inputOrigin;
  v22 = type metadata accessor for InputOrigin();
  (*(*(v22 - 8) + 56))(&v17[v21], 1, 1, v22);
  v23 = &v17[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_sharedUserId];
  *v23 = 0;
  *(v23 + 1) = 0;
  *&v17[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_requestContext] = 0;
  *(v17 + 2) = a1;
  *(v17 + 3) = a2;
  *(v17 + 4) = a3;
  *(v17 + 5) = a4;
  *(v17 + 6) = a5;
  *(v17 + 7) = a6;
  outlined init with copy of ParseStateXPC(a7, &v17[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_parseState]);
  v24 = &v17[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_utterance];
  *v24 = a8;
  *(v24 + 1) = a9;
  v17[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_listenAfterSpeaking] = 0;
  v17[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_isMultiUser] = 0;
  swift_beginAccess();
  *v18 = 0;
  *(v18 + 1) = 0;
  swift_beginAccess();
  *v19 = 0;
  *(v19 + 1) = 0;
  swift_beginAccess();
  *v20 = 0;
  *(v20 + 1) = 0;
  v17[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_isEyesFree] = 0;
  v17[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_isVoiceTriggerEnabled] = 0;
  v17[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_isTextToSpeechEnabled] = 0;
  v17[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_isTriggerlessFollowup] = 0;
  v17[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_isPushOffRequest] = 0;
  outlined destroy of ParseStateXPC(a7);
  *&v17[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_deviceRestrictions] = MEMORY[0x277D84F90];
  v17[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_isOnlyUserInHome] = 0;
  *&v17[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_userIdentityClassification] = 0;
  return v17;
}

char *PommesSearchRequestXPCBuilder.init(domain:assistantId:requestId:parseState:utterance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = &v9[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_audioSource];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v9[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_audioDestination];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = &v9[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_responseMode];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_inputOrigin;
  v19 = type metadata accessor for InputOrigin();
  (*(*(v19 - 8) + 56))(&v9[v18], 1, 1, v19);
  v20 = &v9[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_sharedUserId];
  *v20 = 0;
  *(v20 + 1) = 0;
  *&v9[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_requestContext] = 0;
  *(v9 + 2) = a1;
  *(v9 + 3) = a2;
  *(v9 + 4) = a3;
  *(v9 + 5) = a4;
  *(v9 + 6) = a5;
  *(v9 + 7) = a6;
  outlined init with copy of ParseStateXPC(a7, &v9[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_parseState]);
  v21 = &v9[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_utterance];
  *v21 = a8;
  *(v21 + 1) = a9;
  v9[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_listenAfterSpeaking] = 0;
  v9[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_isMultiUser] = 0;
  swift_beginAccess();
  *v15 = 0;
  *(v15 + 1) = 0;
  swift_beginAccess();
  *v16 = 0;
  *(v16 + 1) = 0;
  swift_beginAccess();
  v22 = *(v17 + 1);
  *v17 = 0;
  *(v17 + 1) = 0;

  v9[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_isEyesFree] = 0;
  v9[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_isVoiceTriggerEnabled] = 0;
  v9[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_isTextToSpeechEnabled] = 0;
  v9[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_isTriggerlessFollowup] = 0;
  v9[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_isPushOffRequest] = 0;
  outlined destroy of ParseStateXPC(a7);
  *&v9[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_deviceRestrictions] = MEMORY[0x277D84F90];
  v9[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_isOnlyUserInHome] = 0;
  *&v9[OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_userIdentityClassification] = 0;
  return v9;
}

uint64_t PommesSearchRequestXPCBuilder.withDeviceRestrictions(_:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_deviceRestrictions;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t PommesSearchRequestXPCBuilder.withListenAfterSpeaking(_:)(char a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

uint64_t PommesSearchRequestXPCBuilder.withInputOrigin(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v10 - v6;
  outlined init with copy of MediaUserStateCenter?(a1, &v10 - v6, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  v8 = OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_inputOrigin;
  swift_beginAccess();
  outlined assign with take of InputOrigin?(v7, v1 + v8);
  swift_endAccess();
}

uint64_t PommesSearchRequestXPCBuilder.withAudioSource(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;
}

uint64_t PommesSearchRequestXPCBuilder.withRequestContext(_:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_requestContext;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t PommesSearchRequestXPCBuilder.withUserIdentityClassification(_:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_userIdentityClassification;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id PommesSearchRequestXPCBuilder.build()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = &v54[-v4];
  v6 = type metadata accessor for ParseStateXPC(0);
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8, v8);
  v11 = &v54[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = (*(*v0 + 248))(v9);
  v74 = v13;
  v75 = v12;
  v73 = (*(*v0 + 368))();
  v14 = (*(*v0 + 272))();
  v71 = v15;
  v72 = v14;
  v16 = (*(*v0 + 296))();
  v69 = v17;
  v70 = v16;
  v68 = (*(*v0 + 392))();
  v18 = (*(*v0 + 320))();
  v19 = (*(*v0 + 344))(v18);
  v66 = v20;
  v67 = v19;
  v21 = (*(*v0 + 416))();
  v64 = v22;
  v65 = v21;
  v23 = (*(*v0 + 440))();
  v62 = v24;
  v63 = v23;
  v25 = (*(*v0 + 464))();
  v60 = v26;
  v61 = v25;
  v59 = (*(*v0 + 488))();
  v58 = (*(*v0 + 512))();
  v57 = (*(*v0 + 536))();
  v56 = (*(*v0 + 560))();
  v55 = (*(*v0 + 584))();
  v27 = (*(*v0 + 608))();
  v28 = (*(*v0 + 632))();
  v29 = (*(*v0 + 656))();
  v30 = (*(*v0 + 680))(v29);
  v32 = v31;
  v33 = (*(*v0 + 704))();
  v34 = (*(*v0 + 728))();
  v35 = type metadata accessor for PommesSearchRequestXPC(0);
  v36 = objc_allocWithZone(v35);
  v37 = &v36[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_domain];
  v38 = v74;
  *v37 = v75;
  v37[1] = v38;
  v36[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_listenAfterSpeaking] = v73 & 1;
  v39 = &v36[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_assistantId];
  v40 = v71;
  *v39 = v72;
  v39[1] = v40;
  v41 = &v36[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_requestId];
  v42 = v69;
  *v41 = v70;
  v41[1] = v42;
  v36[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isMultiUser] = v68 & 1;
  outlined init with copy of ParseStateXPC(v11, &v36[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_parseState]);
  v43 = &v36[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_utterance];
  v44 = v66;
  *v43 = v67;
  v43[1] = v44;
  v45 = &v36[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_audioSource];
  v46 = v64;
  *v45 = v65;
  v45[1] = v46;
  v47 = &v36[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_audioDestination];
  v48 = v62;
  *v47 = v63;
  v47[1] = v48;
  v49 = &v36[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_responseMode];
  v50 = v60;
  *v49 = v61;
  v49[1] = v50;
  v36[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isEyesFree] = v59 & 1;
  v36[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isVoiceTriggerEnabled] = v58 & 1;
  v36[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isTextToSpeechEnabled] = v57 & 1;
  v36[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isTriggerlessFollowup] = v56 & 1;
  v36[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isPushOffRequest] = v55 & 1;
  *&v36[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_deviceRestrictions] = v27;
  v36[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_isOnlyUserInHome] = v28 & 1;
  outlined init with copy of MediaUserStateCenter?(v5, &v36[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_inputOrigin], &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  v51 = &v36[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_sharedUserId];
  *v51 = v30;
  v51[1] = v32;
  *&v36[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_requestContext] = v33;
  *&v36[OBJC_IVAR____TtC21SiriInformationSearch22PommesSearchRequestXPC_userIdentityClassification] = v34;
  v76.receiver = v36;
  v76.super_class = v35;
  v52 = objc_msgSendSuper2(&v76, sel_init);
  outlined destroy of MediaUserStateCenter?(v5, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  outlined destroy of ParseStateXPC(v11);
  return v52;
}

void *PommesSearchRequestXPCBuilder.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  outlined destroy of ParseStateXPC(v0 + OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_parseState);
  v4 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_utterance + 8);

  v5 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_audioSource + 8);

  v6 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_audioDestination + 8);

  v7 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_responseMode + 8);

  v8 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_deviceRestrictions);

  outlined destroy of MediaUserStateCenter?(v0 + OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_inputOrigin, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  v9 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_sharedUserId + 8);

  v10 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch29PommesSearchRequestXPCBuilder_requestContext);

  return v0;
}

uint64_t PommesSearchRequestXPCBuilder.__deallocating_deinit()
{
  PommesSearchRequestXPCBuilder.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t outlined init with take of ParseStateXPC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParseStateXPC(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ParseStateXPC.CodingKeys and conformance ParseStateXPC.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ParseStateXPC.CodingKeys and conformance ParseStateXPC.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParseStateXPC.CodingKeys and conformance ParseStateXPC.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParseStateXPC.CodingKeys and conformance ParseStateXPC.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParseStateXPC.CodingKeys and conformance ParseStateXPC.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParseStateXPC.CodingKeys and conformance ParseStateXPC.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParseStateXPC.CodingKeys and conformance ParseStateXPC.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParseStateXPC.CodingKeys and conformance ParseStateXPC.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParseStateXPC.CodingKeys and conformance ParseStateXPC.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParseStateXPC.CodingKeys and conformance ParseStateXPC.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParseStateXPC.CodingKeys and conformance ParseStateXPC.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParseStateXPC.CodingKeys and conformance ParseStateXPC.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParseStateXPC.CodingKeys and conformance ParseStateXPC.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParseStateXPC.Base and conformance ParseStateXPC.Base()
{
  result = lazy protocol witness table cache variable for type ParseStateXPC.Base and conformance ParseStateXPC.Base;
  if (!lazy protocol witness table cache variable for type ParseStateXPC.Base and conformance ParseStateXPC.Base)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParseStateXPC.Base and conformance ParseStateXPC.Base);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParseStateXPC.Base and conformance ParseStateXPC.Base;
  if (!lazy protocol witness table cache variable for type ParseStateXPC.Base and conformance ParseStateXPC.Base)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParseStateXPC.Base and conformance ParseStateXPC.Base);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParseStateXPC.Base and conformance ParseStateXPC.Base;
  if (!lazy protocol witness table cache variable for type ParseStateXPC.Base and conformance ParseStateXPC.Base)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParseStateXPC.Base and conformance ParseStateXPC.Base);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParseStateXPC.Base and conformance ParseStateXPC.Base;
  if (!lazy protocol witness table cache variable for type ParseStateXPC.Base and conformance ParseStateXPC.Base)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParseStateXPC.Base and conformance ParseStateXPC.Base);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [Data] and conformance <A> [A](unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized static ParseStateXPC.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v9 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v101 = &v92 - v12;
  v14 = MEMORY[0x28223BE20](v11, v13);
  v103 = &v92 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v102 = &v92 - v18;
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = &v92 - v21;
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v92 - v24;
  v26 = type metadata accessor for ParseStateXPC(0);
  v27 = *(*(v26 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v26, v28);
  v31 = (&v92 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v29, v32);
  v34 = &v92 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13ParseStateXPCO_ACtMd, &_s21SiriInformationSearch13ParseStateXPCO_ACtMR);
  v36 = *(*(v35 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v35 - 8, v37);
  v40 = &v92 - v39;
  v41 = &v92 + *(v38 + 56) - v39;
  outlined init with copy of ParseStateXPC(a1, &v92 - v39);
  outlined init with copy of ParseStateXPC(a2, v41);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with copy of ParseStateXPC(v40, v34);
    v57 = *v34;
    v58 = *(v34 + 1);
    v59 = *(v34 + 2);
    v60 = v34[24];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      goto LABEL_17;
    }

    v61 = v40;
    v62 = *(v41 + 2);
    v63 = v41[24];
    if (v57 == *v41 && v58 == *(v41 + 1))
    {
      v68 = *(v41 + 1);
    }

    else
    {
      v65 = *(v41 + 1);
      v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v66 & 1) == 0)
      {

        v67 = 0;
LABEL_24:
        v70 = v61;
LABEL_46:
        outlined destroy of ParseStateXPC(v70);
        return v67 & 1;
      }
    }

    v69 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ12SiriNLUTypes0B23_Nlu_External_UserParseV_Tt1g5(v59, v62);

    v67 = v69 & (v60 ^ v63 ^ 1);
    goto LABEL_24;
  }

  v96 = v9;
  v104 = v25;
  outlined init with copy of ParseStateXPC(v40, v31);
  v42 = *v31;
  v43 = v31[1];
  v44 = v31[3];
  v98 = v31[2];
  v100 = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseSb13hasTTResponsetMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseSb13hasTTResponsetMR);
  v46 = *(v45 + 64);
  v47 = *(v45 + 80);
  v48 = *(v31 + v47);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v93 = v48;
    v97 = v40;
    v49 = v22;
    v51 = *v41;
    v50 = *(v41 + 1);
    v52 = *(v41 + 3);
    v94 = *(v41 + 2);
    v95 = v52;
    v92 = v41[v47];
    outlined init with take of PommesSearchReason?(v31 + v46, v104, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    v99 = v49;
    outlined init with take of PommesSearchReason?(&v41[v46], v49, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    if (v42 == v51 && v43 == v50)
    {

      v55 = v100;
    }

    else
    {
      v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v55 = v100;
      if ((v54 & 1) == 0)
      {

        v56 = v97;
LABEL_43:
        outlined destroy of MediaUserStateCenter?(v99, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
        outlined destroy of MediaUserStateCenter?(v104, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
LABEL_44:
        v67 = 0;
LABEL_45:
        v70 = v56;
        goto LABEL_46;
      }
    }

    v56 = v97;
    if (v98 == v94 && v55 == v95)
    {
    }

    else
    {
      v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v71 & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    v72 = v102;
    outlined init with copy of MediaUserStateCenter?(v104, v102, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    v73 = type metadata accessor for TCUMappedNLResponse();
    v74 = *(v73 - 8);
    v75 = *(v74 + 48);
    if (v75(v72, 1, v73) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v72, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      v76 = 0;
      v77 = 0;
    }

    else
    {
      v76 = TCUMappedNLResponse.tcuId.getter();
      v77 = v78;
      (*(v74 + 8))(v72, v73);
    }

    v79 = v103;
    outlined init with copy of MediaUserStateCenter?(v99, v103, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    if (v75(v79, 1, v73) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v79, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      if (!v77)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v80 = TCUMappedNLResponse.tcuId.getter();
      v82 = v81;
      (*(v74 + 8))(v79, v73);
      if (v77)
      {
        if (v82)
        {
          if (v76 == v80 && v77 == v82)
          {
          }

          else
          {
            v83 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v83 & 1) == 0)
            {
              goto LABEL_43;
            }
          }

LABEL_41:
          v84 = v101;
          outlined init with copy of MediaUserStateCenter?(v104, v101, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
          if (v75(v84, 1, v73) == 1)
          {
            outlined destroy of MediaUserStateCenter?(v84, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
            v85 = 0;
          }

          else
          {
            v85 = TCUMappedNLResponse.nlResponse.getter();
            (*(v74 + 8))(v84, v73);
          }

          v87 = v96;
          outlined init with copy of MediaUserStateCenter?(v99, v96, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
          if (v75(v87, 1, v73) == 1)
          {
            outlined destroy of MediaUserStateCenter?(v87, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
            v88 = v99;
            if (!v85)
            {
              v89 = 0;
              goto LABEL_58;
            }
          }

          else
          {
            v89 = TCUMappedNLResponse.nlResponse.getter();
            (*(v74 + 8))(v87, v73);
            if (!v85)
            {
              v88 = v99;
LABEL_58:
              outlined destroy of MediaUserStateCenter?(v88, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
              outlined destroy of MediaUserStateCenter?(v104, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
              v56 = v97;
              v91 = v93;
              if (v89)
              {

                goto LABEL_44;
              }

              goto LABEL_60;
            }

            v88 = v99;
            if (v89)
            {
              type metadata accessor for NLParseResponse();
              v90 = static NSObject.== infix(_:_:)();
              outlined destroy of MediaUserStateCenter?(v88, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
              outlined destroy of MediaUserStateCenter?(v104, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);

              v56 = v97;
              v91 = v93;
              if ((v90 & 1) == 0)
              {
                goto LABEL_44;
              }

LABEL_60:
              v67 = v91 ^ v92 ^ 1;
              goto LABEL_45;
            }
          }

          outlined destroy of MediaUserStateCenter?(v88, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
          outlined destroy of MediaUserStateCenter?(v104, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);

          v67 = 0;
          v56 = v97;
          goto LABEL_45;
        }
      }

      else if (!v82)
      {
        goto LABEL_41;
      }
    }

    goto LABEL_43;
  }

  outlined destroy of MediaUserStateCenter?(v31 + v46, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
LABEL_17:

  outlined destroy of MediaUserStateCenter?(v40, &_s21SiriInformationSearch13ParseStateXPCO_ACtMd, &_s21SiriInformationSearch13ParseStateXPCO_ACtMR);
  v67 = 0;
  return v67 & 1;
}

uint64_t outlined assign with take of InputOrigin?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t keypath_set_12Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

void type metadata completion function for PommesSearchRequestXPC()
{
  v0 = type metadata accessor for ParseStateXPC(319);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for InputOrigin?();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of PommesSearchRequestXPC.__allocating_init(domain:listenAfterSpeaking:assistantId:requestId:isMultiUser:parseState:utterance:audioSource:audioDestination:responseMode:isEyesFree:isVoiceTriggerEnabled:isTextToSpeechEnabled:isTriggerlessFollowup:isPushOffRequest:deviceRestrictions:isOnlyUserInHome:inputOrigin:sharedUserId:requestContext:userIdentityClassification:)()
{
  v2 = *(v0 + 256);

  return v2();
}

void type metadata accessor for InputOrigin?()
{
  if (!lazy cache variable for type metadata for InputOrigin?)
  {
    type metadata accessor for InputOrigin();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for InputOrigin?);
    }
  }
}

void type metadata completion function for ParseStateXPC()
{
  type metadata accessor for (id: String, parses: [Siri_Nlu_External_UserParse], hasNLResultCandidate: Bool)();
  if (v0 <= 0x3F)
  {
    type metadata accessor for (id: String, tcuId: String, response: TCUMappedNLResponse?, hasTTResponse: Bool)(319, v0);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for (id: String, parses: [Siri_Nlu_External_UserParse], hasNLResultCandidate: Bool)()
{
  if (!lazy cache variable for type metadata for (id: String, parses: [Siri_Nlu_External_UserParse], hasNLResultCandidate: Bool))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay12SiriNLUTypes0A23_Nlu_External_UserParseVGMd, &_sSay12SiriNLUTypes0A23_Nlu_External_UserParseVGMR);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (id: String, parses: [Siri_Nlu_External_UserParse], hasNLResultCandidate: Bool));
    }
  }
}

void type metadata accessor for (id: String, tcuId: String, response: TCUMappedNLResponse?, hasTTResponse: Bool)(uint64_t a1, uint64_t a2)
{
  if (!lazy cache variable for type metadata for (id: String, tcuId: String, response: TCUMappedNLResponse?, hasTTResponse: Bool))
  {
    MEMORY[0x28223BE20](a1, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &lazy cache variable for type metadata for (id: String, tcuId: String, response: TCUMappedNLResponse?, hasTTResponse: Bool));
    }
  }
}

void type metadata completion function for PommesSearchRequestXPCBuilder()
{
  v0 = type metadata accessor for ParseStateXPC(319);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for InputOrigin?();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t getEnumTagSinglePayload for ParseStateXPC.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ParseStateXPC.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t specialized ParseStateXPC.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ParseStateXPC.CodingKeys.init(rawValue:), v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

uint64_t outlined assign with take of ParseStateXPC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParseStateXPC(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t PommesResponse.pommesContext.getter()
{
  v0 = type metadata accessor for PerformanceUtil.Ticket(0);
  v1 = (v0 - 8);
  v2 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v9 = type metadata accessor for PommesContext.Source();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = (&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v14 = PommesResponse.conversationContext.getter();
  v14[1] = v15;
  (*(v10 + 104))(v14, *MEMORY[0x277D56688], v9);
  PommesResponse.metadataDomainName.getter();
  dispatch thunk of PommesResponse.listenAfterSpeaking.getter();
  PommesContext.init(source:domain:listenAfterSpeaking:)();
  dispatch thunk of PommesResponse.primaryInstructionIntent()();
  PommesContext.instructionIntent.setter();
  Date.init()();
  v16 = &v5[v1[7]];
  *v16 = "SiriInformationSearch/PommesResponse+Context.swift";
  *(v16 + 1) = 50;
  v16[16] = 2;
  *&v5[v1[8]] = 18;
  v17 = &v5[v1[9]];
  *v17 = "pommesContext";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v18 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD000000000000022);
  v19 = &v5[v1[10]];
  *v19 = v18;
  v19[1] = v20;
  v21 = dispatch thunk of PommesResponse.renderedTexts.getter();
  PommesContext.addRenderedTexts(_:)(v21);

  v22 = dispatch thunk of PommesResponse.redactedRenderedTexts.getter();
  PommesContext.addRedactedRenderedTexts(_:)(v22);

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  (*(*static PerformanceUtil.shared + 184))(v5, 0);
  return outlined destroy of PerformanceUtil.Ticket(v5);
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = MEMORY[0x28211D318](options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t type metadata accessor for InputOrigin()
{
  return MEMORY[0x2821C85E8]();
}

{
  return MEMORY[0x2821BE2C0]();
}

uint64_t Google_Protobuf_Int32Value.value.getter()
{
  return MEMORY[0x2821C3FE8]();
}

{
  return MEMORY[0x28217DFB8]();
}

uint64_t type metadata accessor for Google_Protobuf_Int32Value()
{
  return MEMORY[0x2821C3FF0]();
}

{
  return MEMORY[0x28217DFC8]();
}

uint64_t BinaryDecodingOptions.init()()
{
  return MEMORY[0x2821C3FF8]();
}

{
  return MEMORY[0x28217E1E8]();
}

uint64_t type metadata accessor for BinaryDecodingOptions()
{
  return MEMORY[0x2821C4000]();
}

{
  return MEMORY[0x28217E1F0]();
}

uint64_t Message.init(serializedData:extensions:partial:options:)()
{
  return MEMORY[0x2821C4008]();
}

{
  return MEMORY[0x28217E400]();
}

Swift::String __swiftcall Message.textFormatString()()
{
  v0 = MEMORY[0x28217E438]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall ClientAudioResult.Scheme.buildDeviceID(withId:)(Swift::String withId)
{
  v1 = MEMORY[0x2821B97B8](withId._countAndFlagsBits, withId._object);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = MEMORY[0x2821FBCC8]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::Void __swiftcall String.append(_:)(Swift::String a1)
{
  MEMORY[0x2821FBE48](a1._countAndFlagsBits, a1._object);
}

{
  MEMORY[0x2821FBE50](a1._countAndFlagsBits, a1._object);
}

uint64_t String.init(cString:)()
{
  return MEMORY[0x2821FBE78]();
}

{
  return MEMORY[0x2821FBE80]();
}

Swift::String_optional __swiftcall String.Iterator.next()()
{
  v0 = MEMORY[0x2821FBE90]();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t String.subscript.getter()
{
  return MEMORY[0x2821FBF68]();
}

{
  return MEMORY[0x2821FBFB0]();
}

Swift::String __swiftcall Substring.lowercased()()
{
  v0 = MEMORY[0x2821FCAE8]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x2821FD9F8]();
}

{
  return MEMORY[0x2821FDA00]();
}

{
  return MEMORY[0x2821FDA08]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x2821FDB38]();
}

{
  return MEMORY[0x2821FDB40]();
}

{
  return MEMORY[0x2821FDB48]();
}