uint64_t specialized CachedPluginCatalog.init(capabilityCache:packageCache:sharedFlowPluginServiceClient:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v108 = a3;
  v5 = type metadata accessor for IntentTopic();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v126 = &v108 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v112 = &v108 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow11IntentTopicV3key_SaySSG5valuetSgMd, &_s11SiriKitFlow11IntentTopicV3key_SaySSG5valuetSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v117 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v115 = &v108 - v18;
  v19 = *(a2 + 16);
  v20 = type metadata accessor for RemoteFlowPluginPackage();
  v21 = MEMORY[0x1E69E6158];
  v22 = MEMORY[0x1E69E6168];
  v131 = MEMORY[0x1E12A1320](v19, MEMORY[0x1E69E6158], v20, MEMORY[0x1E69E6168]);
  v23 = *(a2 + 16);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11SiriKitFlow11IntentTopicVGMd, &_sSay11SiriKitFlow11IntentTopicVGMR);
  v25 = MEMORY[0x1E12A1320](v23, v21, v24, v22);
  v130 = v25;
  v110 = a2;
  v109 = MEMORY[0x1E12A1320](*(a2 + 16), v21, v21, v22);
  v129 = v109;
  v26 = *(a1 + 64);
  v116 = a1 + 64;
  v27 = 1 << *(a1 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v119 = v28 & v26;
  v111 = (v27 + 63) >> 6;
  v121 = (v6 + 16);
  v122 = v6;
  v125 = (v6 + 32);
  v113 = a1;
  v114 = (v6 + 8);

  for (i = 0; ; i = v118)
  {
    v30 = v119;
    if (v119)
    {
      v118 = i;
      v31 = i;
      v32 = v117;
LABEL_15:
      v119 = (v30 - 1) & v30;
      v35 = __clz(__rbit64(v30)) | (v31 << 6);
      v37 = v112;
      v36 = v113;
      v38 = v122;
      (*(v122 + 16))(v112, *(v113 + 48) + *(v122 + 72) * v35, v5);
      v39 = *(*(v36 + 56) + 8 * v35);
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow11IntentTopicV3key_SaySSG5valuetMd, &_s11SiriKitFlow11IntentTopicV3key_SaySSG5valuetMR);
      v41 = *(v40 + 48);
      (*(v38 + 32))(v32, v37, v5);
      *(v32 + v41) = v39;
      (*(*(v40 - 8) + 56))(v32, 0, 1, v40);
    }

    else
    {
      v33 = v111 <= i + 1 ? i + 1 : v111;
      v34 = v33 - 1;
      v32 = v117;
      while (1)
      {
        v31 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_65;
        }

        if (v31 >= v111)
        {
          break;
        }

        v30 = *(v116 + 8 * v31);
        ++i;
        if (v30)
        {
          v118 = v31;
          goto LABEL_15;
        }
      }

      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow11IntentTopicV3key_SaySSG5valuetMd, &_s11SiriKitFlow11IntentTopicV3key_SaySSG5valuetMR);
      (*(*(v73 - 8) + 56))(v32, 1, 1, v73);
      v118 = v34;
      v119 = 0;
    }

    v42 = v115;
    outlined init with take of (key: IntentTopic, value: [String])?(v32, v115);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow11IntentTopicV3key_SaySSG5valuetMd, &_s11SiriKitFlow11IntentTopicV3key_SaySSG5valuetMR);
    if ((*(*(v43 - 8) + 48))(v42, 1, v43) == 1)
    {

      v74 = 0;
      v75 = v110 + 64;
      v76 = 1 << *(v110 + 32);
      v77 = -1;
      if (v76 < 64)
      {
        v77 = ~(-1 << v76);
      }

      v78 = v77 & *(v110 + 64);
      v79 = v129;
      v80 = (v76 + 63) >> 6;
      v126 = v80;
      for (j = v110 + 64; ; v75 = j)
      {
        if (v78)
        {
          v84 = v74;
        }

        else
        {
          do
          {
            v84 = v74 + 1;
            if (__OFADD__(v74, 1))
            {
              goto LABEL_66;
            }

            if (v84 >= v80)
            {
              v129 = v79;

              v105 = v108;

              v106 = specialized _NativeDictionary.mapValues<A>(_:)(v113, &v129, &v131, &v130, v105);

              return v106;
            }

            v78 = *(v75 + 8 * v84);
            ++v74;
          }

          while (!v78);
        }

        v85 = (v84 << 10) | (16 * __clz(__rbit64(v78)));
        v86 = (*(v110 + 48) + v85);
        v88 = *v86;
        v87 = v86[1];
        v89 = (*(v110 + 56) + v85);
        v91 = *v89;
        v90 = v89[1];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v128 = v79;
        v93 = specialized __RawDictionaryStorage.find<A>(_:)(v91, v90);
        v95 = v79[2];
        v96 = (v94 & 1) == 0;
        v71 = __OFADD__(v95, v96);
        v97 = v95 + v96;
        if (v71)
        {
          goto LABEL_67;
        }

        v98 = v94;
        if (v79[3] >= v97)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v104 = v93;
            specialized _NativeDictionary.copy()();
            v93 = v104;
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v97, isUniquelyReferenced_nonNull_native);
          v93 = specialized __RawDictionaryStorage.find<A>(_:)(v91, v90);
          if ((v98 & 1) != (v99 & 1))
          {
            goto LABEL_69;
          }
        }

        v78 &= v78 - 1;
        if (v98)
        {
          v81 = v93;

          v79 = v128;
          v82 = (v128[7] + 16 * v81);
          v83 = v82[1];
          *v82 = v88;
          v82[1] = v87;
        }

        else
        {
          v79 = v128;
          v128[(v93 >> 6) + 8] |= 1 << v93;
          v100 = (v79[6] + 16 * v93);
          *v100 = v91;
          v100[1] = v90;
          v101 = (v79[7] + 16 * v93);
          *v101 = v88;
          v101[1] = v87;
          v102 = v79[2];
          v71 = __OFADD__(v102, 1);
          v103 = v102 + 1;
          if (v71)
          {
            goto LABEL_68;
          }

          v79[2] = v103;
        }

        v74 = v84;
        v80 = v126;
      }
    }

    v44 = *(v42 + *(v43 + 48));
    v124 = *v125;
    v124(v126, v42, v5);
    v123 = *(v44 + 16);
    if (v123)
    {
      break;
    }

LABEL_4:

    (*v114)(v126, v5);
  }

  v45 = 0;
  v46 = (v44 + 40);
  v120 = v44;
  while (v45 < *(v44 + 16))
  {
    v50 = *(v46 - 1);
    v49 = *v46;
    v51 = v25[2];

    if (v51 && (v52 = specialized __RawDictionaryStorage.find<A>(_:)(v50, v49), (v53 & 1) != 0))
    {
      v54 = *(v25[7] + 8 * v52);
    }

    else
    {
      v54 = MEMORY[0x1E69E7CC0];
    }

    (*v121)(v9, v126, v5);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v54 + 2) + 1, 1, v54);
    }

    v56 = *(v54 + 2);
    v55 = *(v54 + 3);
    j = v50;
    if (v56 >= v55 >> 1)
    {
      v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v55 > 1, v56 + 1, 1, v54);
    }

    *(v54 + 2) = v56 + 1;
    v57 = v9;
    v58 = v5;
    v124(&v54[((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v56], v9, v5);
    v59 = v130;
    v60 = swift_isUniquelyReferenced_nonNull_native();
    v128 = v59;
    v62 = specialized __RawDictionaryStorage.find<A>(_:)(j, v49);
    v63 = *(v59 + 16);
    v64 = (v61 & 1) == 0;
    v65 = v63 + v64;
    if (__OFADD__(v63, v64))
    {
      goto LABEL_63;
    }

    v66 = v61;
    if (*(v59 + 24) >= v65)
    {
      if (v60)
      {
        if (v61)
        {
          goto LABEL_19;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        if (v66)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v65, v60);
      v67 = specialized __RawDictionaryStorage.find<A>(_:)(j, v49);
      if ((v66 & 1) != (v68 & 1))
      {
        goto LABEL_69;
      }

      v62 = v67;
      if (v66)
      {
LABEL_19:

        v25 = v128;
        v47 = v128[7];
        v48 = *(v47 + 8 * v62);
        *(v47 + 8 * v62) = v54;

        goto LABEL_20;
      }
    }

    v25 = v128;
    v128[(v62 >> 6) + 8] |= 1 << v62;
    v69 = (v25[6] + 16 * v62);
    *v69 = j;
    v69[1] = v49;
    *(v25[7] + 8 * v62) = v54;
    v70 = v25[2];
    v71 = __OFADD__(v70, 1);
    v72 = v70 + 1;
    if (v71)
    {
      goto LABEL_64;
    }

    v25[2] = v72;
LABEL_20:
    ++v45;
    v130 = v25;
    v46 += 2;
    v5 = v58;
    v9 = v57;
    v44 = v120;
    if (v123 == v45)
    {
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
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
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *specialized CachedPluginCatalog.getConversationHandler(id:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v7 = RemoteFlowPluginPackage.loadRemoteConversationHandler()();

  return v7;
}

unint64_t specialized CachedPluginCatalog.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CachedPluginCatalog.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized CachedPluginCatalog.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14SiriKitRuntime19CachedPluginCatalogV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy14SiriKitRuntime19CachedPluginCatalogV10CodingKeysOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v52 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CachedPluginCatalog.CodingKeys and conformance CachedPluginCatalog.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    goto LABEL_15;
  }

  LOBYTE(v58[0]) = 0;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v57 = v4;
  v12 = v11;
  v13 = [objc_opt_self() processInfo];
  v14 = [v13 operatingSystemVersionString];

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (v10 != v15 || v12 != v17)
  {
    v19 = v15;
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v29 = v12;
      v54 = v19;
      v55 = v17;
      v56 = v10;
      v30 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v31 = dispatch thunk of Decoder.userInfo.getter();
      if (one-time initialization token for ignoreOSVersionKey != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for CodingUserInfoKey();
      v33 = __swift_project_value_buffer(v32, static CachedPluginCatalog.ignoreOSVersionKey);
      v34 = v56;
      if (*(v31 + 16) && (v35 = specialized __RawDictionaryStorage.find<A>(_:)(v33), (v36 & 1) != 0))
      {
        outlined init with copy of Any(*(v31 + 56) + 32 * v35, v58);

        if (swift_dynamicCast() & 1) != 0 && (v59)
        {
          goto LABEL_7;
        }
      }

      else
      {
      }

      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      __swift_project_value_buffer(v37, static Logger.executor);

      v38 = v55;

      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.info.getter();

      v53 = v39;
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v58[0] = v42;
        *v41 = 136315394;
        *(v41 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v29, v58);
        *(v41 + 12) = 2080;
        v43 = v54;
        *(v41 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v38, v58);
        v44 = v40;
        v45 = v53;
        _os_log_impl(&dword_1DC659000, v53, v44, "Not using cached plugin information, as it is from %s and we are running %s.", v41, 0x16u);
        swift_arrayDestroy();
        v46 = v42;
        v47 = v56;
        MEMORY[0x1E12A2F50](v46, -1, -1);
        MEMORY[0x1E12A2F50](v41, -1, -1);
      }

      else
      {

        v47 = v34;
        v43 = v54;
      }

      v48 = v57;
      lazy protocol witness table accessor for type CachedPluginCatalog.FlowPluginCacheError and conformance CachedPluginCatalog.FlowPluginCacheError();
      swift_allocError();
      *v49 = v43;
      v49[1] = v38;
      v49[2] = v47;
      v49[3] = v29;
      swift_willThrow();
      v50 = *(v48 + 8);
      v9 = v48 + 8;
      v50(v7, v3);
      goto LABEL_15;
    }
  }

LABEL_7:

  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = dispatch thunk of Decoder.userInfo.getter();
  if (one-time initialization token for sharedFlowPluginServiceClientKey != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for CodingUserInfoKey();
  v22 = __swift_project_value_buffer(v21, static CachedPluginCatalog.sharedFlowPluginServiceClientKey);
  v23 = v57;
  if (!*(v9 + 16) || (v24 = specialized __RawDictionaryStorage.find<A>(_:)(v22), (v25 & 1) == 0))
  {

    goto LABEL_14;
  }

  outlined init with copy of Any(*(v9 + 56) + 32 * v24, v58);

  type metadata accessor for SharedFlowPluginServiceClient();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    lazy protocol witness table accessor for type CachedPluginCatalog.FlowPluginCacheError and conformance CachedPluginCatalog.FlowPluginCacheError();
    swift_allocError();
    *v27 = 0u;
    v27[1] = 0u;
    swift_willThrow();
    (*(v23 + 8))(v7, v3);
LABEL_15:
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return v9;
  }

  v26 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy11SiriKitFlow11IntentTopicVSaySSGGMd, &_sSDy11SiriKitFlow11IntentTopicVSaySSGGMR);
  LOBYTE(v59) = 1;
  lazy protocol witness table accessor for type [IntentTopic : [String]] and conformance <> [A : B]();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v51 = v58[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
  LOBYTE(v59) = 2;
  lazy protocol witness table accessor for type [String : String] and conformance <> [A : B]();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = specialized CachedPluginCatalog.init(capabilityCache:packageCache:sharedFlowPluginServiceClient:)(v51, v58[0], v26);
  (*(v23 + 8))(v7, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v9;
}

unint64_t lazy protocol witness table accessor for type CachedPluginCatalog.CodingKeys and conformance CachedPluginCatalog.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CachedPluginCatalog.CodingKeys and conformance CachedPluginCatalog.CodingKeys;
  if (!lazy protocol witness table cache variable for type CachedPluginCatalog.CodingKeys and conformance CachedPluginCatalog.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CachedPluginCatalog.CodingKeys and conformance CachedPluginCatalog.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CachedPluginCatalog.CodingKeys and conformance CachedPluginCatalog.CodingKeys;
  if (!lazy protocol witness table cache variable for type CachedPluginCatalog.CodingKeys and conformance CachedPluginCatalog.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CachedPluginCatalog.CodingKeys and conformance CachedPluginCatalog.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CachedPluginCatalog.CodingKeys and conformance CachedPluginCatalog.CodingKeys;
  if (!lazy protocol witness table cache variable for type CachedPluginCatalog.CodingKeys and conformance CachedPluginCatalog.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CachedPluginCatalog.CodingKeys and conformance CachedPluginCatalog.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CachedPluginCatalog.CodingKeys and conformance CachedPluginCatalog.CodingKeys;
  if (!lazy protocol witness table cache variable for type CachedPluginCatalog.CodingKeys and conformance CachedPluginCatalog.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CachedPluginCatalog.CodingKeys and conformance CachedPluginCatalog.CodingKeys);
  }

  return result;
}

uint64_t *assignWithCopy for CachedPluginCatalog(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = a2[1];
  v6 = a1[1];
  a1[1] = v5;

  return a1;
}

uint64_t *assignWithTake for CachedPluginCatalog(uint64_t *a1, _OWORD *a2)
{
  v4 = *a1;

  v5 = a1[1];
  *a1 = *a2;

  return a1;
}

unint64_t destroy for CachedPluginCatalog.FlowPluginCacheError(uint64_t a1)
{
  result = *(a1 + 8);
  if (result >= 0xFFFFFFFF)
  {

    v3 = *(a1 + 24);
  }

  return result;
}

__n128 initializeWithCopy for CachedPluginCatalog.FlowPluginCacheError(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 < 0xFFFFFFFF)
  {
    result = *a2;
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
  }

  else
  {
    *a1 = *a2;
    *(a1 + 8) = v2;
    v3 = *(a2 + 24);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = v3;
  }

  return result;
}

void *assignWithCopy for CachedPluginCatalog.FlowPluginCacheError(void *a1, void *a2)
{
  v4 = a2[1];
  if (a1[1] < 0xFFFFFFFFuLL)
  {
    if (v4 >= 0xFFFFFFFF)
    {
      *a1 = *a2;
      a1[1] = a2[1];
      a1[2] = a2[2];
      a1[3] = a2[3];

      return a1;
    }

LABEL_7:
    v9 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v9;
    return a1;
  }

  if (v4 < 0xFFFFFFFF)
  {
    v7 = a1[1];

    v8 = a1[3];

    goto LABEL_7;
  }

  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];
  v5 = a2[3];
  v6 = a1[3];
  a1[3] = v5;

  return a1;
}

uint64_t assignWithTake for CachedPluginCatalog.FlowPluginCacheError(uint64_t result, uint64_t a2)
{
  if (*(result + 8) < 0xFFFFFFFFuLL)
  {
    v7 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v7;
  }

  else
  {
    v3 = *(a2 + 8);
    if (v3 < 0xFFFFFFFF)
    {
      v4 = result;
      v8 = *(result + 8);

      v9 = *(v4 + 24);

      v10 = *(a2 + 16);
      *v4 = *a2;
      *(v4 + 16) = v10;
    }

    else
    {
      *result = *a2;
      *(result + 8) = v3;
      v4 = result;

      v5 = *(a2 + 24);
      v6 = *(v4 + 24);
      *(v4 + 16) = *(a2 + 16);
      *(v4 + 24) = v5;
    }

    return v4;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CachedPluginCatalog.FlowPluginCacheError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for CachedPluginCatalog.FlowPluginCacheError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for CachedPluginCatalog.FlowPluginCacheError(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CachedPluginCatalog.FlowPluginCacheError and conformance CachedPluginCatalog.FlowPluginCacheError()
{
  result = lazy protocol witness table cache variable for type CachedPluginCatalog.FlowPluginCacheError and conformance CachedPluginCatalog.FlowPluginCacheError;
  if (!lazy protocol witness table cache variable for type CachedPluginCatalog.FlowPluginCacheError and conformance CachedPluginCatalog.FlowPluginCacheError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CachedPluginCatalog.FlowPluginCacheError and conformance CachedPluginCatalog.FlowPluginCacheError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [String] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
  }

  return result;
}

uint64_t outlined init with take of (key: IntentTopic, value: [String])?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow11IntentTopicV3key_SaySSG5valuetSgMd, &_s11SiriKitFlow11IntentTopicV3key_SaySSG5valuetSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of AffinityScorer?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime14AffinityScorer_pSgMd, &_s14SiriKitRuntime14AffinityScorer_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AffinityScorer?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime14AffinityScorer_pSgMd, &_s14SiriKitRuntime14AffinityScorer_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t lazy protocol witness table accessor for type IntentTopic and conformance IntentTopic(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type CachedPluginCatalog and conformance CachedPluginCatalog()
{
  result = lazy protocol witness table cache variable for type CachedPluginCatalog and conformance CachedPluginCatalog;
  if (!lazy protocol witness table cache variable for type CachedPluginCatalog and conformance CachedPluginCatalog)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CachedPluginCatalog and conformance CachedPluginCatalog);
  }

  return result;
}

SiriKitRuntime::CalendarAffinityScorer __swiftcall CalendarAffinityScorer.init()()
{
  v0 = 0x80000001DCA7CA40;
  v1 = 0xD000000000000029;
  result.bundleIdentifier._object = v0;
  result.bundleIdentifier._countAndFlagsBits = v1;
  return result;
}

uint64_t specialized CalendarAffinityScorer.score(input:environment:)(uint64_t a1, uint64_t a2)
{
  v70 = a2;
  v72 = type metadata accessor for RREntity();
  v68 = *(v72 - 8);
  v2 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v4 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for RRCandidate();
  v5 = *(v71 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Parse();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for USOParse();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  if ((*(v10 + 88))(v13, v9) != *MEMORY[0x1E69D0168])
  {
    (*(v10 + 8))(v13, v9);
    if (one-time initialization token for executor != -1)
    {
LABEL_48:
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.executor);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1DC659000, v29, v30, "[CalendarAffinityScorer] Not a Uso parse, returning .default", v31, 2u);
      MEMORY[0x1E12A2F50](v31, -1, -1);

      return 2;
    }

    return 2;
  }

  (*(v10 + 96))(v13, v9);
  (*(v15 + 32))(v18, v13, v14);
  v19 = specialized static AffinityScorerUtils.getTask(_:)();
  if (!v19)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Logger.executor);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1DC659000, v33, v34, "[CalendarAffinityScorer] Unable to extract task from uso parse, returning .default", v35, 2u);
      MEMORY[0x1E12A2F50](v35, -1, -1);

      (*(v15 + 8))(v18, v14);
      return 2;
    }

    (*(v15 + 8))(v18, v14);
    return 2;
  }

  v65 = v18;
  v66 = v19;
  if (UsoTask.baseEntityAsString.getter() == 0x6E456F4E5F6F7375 && v20 == 0xEC00000079746974)
  {
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v22 & 1) == 0)
    {
LABEL_8:
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      __swift_project_value_buffer(v23, static Logger.executor);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = 2;
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_1DC659000, v24, v25, "[CalendarAffinityScorer] UsoTask is not a shared task, returning .default", v27, 2u);
        MEMORY[0x1E12A2F50](v27, -1, -1);

        (*(v15 + 8))(v65, v14);
        return v26;
      }

      (*(v15 + 8))(v65, v14);
      return 2;
    }
  }

  if (UsoTask.verbString.getter() == 0x657461647075 && v36 == 0xE600000000000000)
  {
    goto LABEL_23;
  }

  v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v37 & 1) == 0)
  {
    if (UsoTask.verbString.getter() == 0x6574656C6564 && v60 == 0xE600000000000000)
    {
LABEL_23:

      goto LABEL_25;
    }

    v61 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v61 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

LABEL_25:
  v63 = v14;
  v64 = v15;
  SiriEnvironment.salientEntitiesProvider.getter();
  v38 = dispatch thunk of SalientEntitiesDataProvider.salientEntities.getter();

  v39 = 0;
  v40 = *(v38 + 16);
  v69 = v5 + 16;
  v70 = v40;
  v41 = (v68 + 8);
  v67 = v5 + 8;
  v68 = 0x80000001DCA7D9D0;
  v42 = v71;
  while (v70 != v39)
  {
    if (v39 >= *(v38 + 16))
    {
      __break(1u);
      goto LABEL_48;
    }

    (*(v5 + 16))(v8, v38 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v39++, v42);
    RRCandidate.entity.getter();
    RREntity.usoEntity.getter();
    (*v41)(v4, v72);
    v43 = UsoTask.verbString.getter();
    v45 = v44;

    v75 = v43;
    v76 = v45;
    v73 = 0xD000000000000014;
    v74 = v68;
    lazy protocol witness table accessor for type String and conformance String();
    LOBYTE(v43) = StringProtocol.contains<A>(_:)();

    (*(v5 + 8))(v8, v42);
    if (v43)
    {

      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      __swift_project_value_buffer(v46, static Logger.executor);
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.debug.getter();
      v49 = os_log_type_enabled(v47, v48);
      v51 = v63;
      v50 = v64;
      if (v49)
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_1DC659000, v47, v48, "[CalendarAffinityScorer] calendar event entities found in salient entities, returning .high", v52, 2u);
        MEMORY[0x1E12A2F50](v52, -1, -1);
      }

      (*(v50 + 8))(v65, v51);
      return 3;
    }
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v53 = type metadata accessor for Logger();
  __swift_project_value_buffer(v53, static Logger.executor);
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.debug.getter();
  v56 = os_log_type_enabled(v54, v55);
  v58 = v63;
  v57 = v64;
  if (v56)
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&dword_1DC659000, v54, v55, "[CalendarAffinityScorer] No calendar event entities found in salient entities, returning .unsupported", v59, 2u);
    MEMORY[0x1E12A2F50](v59, -1, -1);
  }

  (*(v57 + 8))(v65, v58);
  return 0;
}

uint64_t CamBridgeImpl.enabledCamFeaturesForDevice.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 96);
}

uint64_t CamBridgeImpl.enabledCamFeaturesForDevice.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 96);
  *(v1 + 96) = a1;
}

uint64_t key path setter for CamBridgeImpl.camState : CamBridgeImpl(uint64_t *a1, uint64_t *a2)
{
  outlined init with copy of CamBridgeImpl.CamState(a1, v5);
  v3 = *a2;
  swift_beginAccess();
  outlined assign with copy of CamBridgeImpl.CamState(v5, v3 + 144);
  swift_endAccess();
  CamBridgeImpl.camState.didset();
  return outlined destroy of CamBridgeImpl.CamState(v5);
}

uint64_t CamBridgeImpl.camState.setter(__int128 *a1)
{
  swift_beginAccess();
  outlined assign with copy of CamBridgeImpl.CamState(a1, v1 + 144);
  swift_endAccess();
  CamBridgeImpl.camState.didset();
  return outlined destroy of CamBridgeImpl.CamState(a1);
}

uint64_t (*CamBridgeImpl.camState.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return CamBridgeImpl.camState.modify;
}

uint64_t key path setter for CamBridgeImpl.caarState : CamBridgeImpl(uint64_t *a1, uint64_t *a2)
{
  outlined init with copy of CamBridgeImpl.CaarState(a1, v5);
  v3 = *a2;
  swift_beginAccess();
  outlined assign with copy of CamBridgeImpl.CaarState(v5, v3 + 192);
  swift_endAccess();
  CamBridgeImpl.caarState.didset();
  return outlined destroy of CamBridgeImpl.CaarState(v5);
}

uint64_t CamBridgeImpl.caarState.setter(__int128 *a1)
{
  swift_beginAccess();
  outlined assign with copy of CamBridgeImpl.CaarState(a1, v1 + 192);
  swift_endAccess();
  CamBridgeImpl.caarState.didset();
  return outlined destroy of CamBridgeImpl.CaarState(a1);
}

uint64_t (*CamBridgeImpl.caarState.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return CamBridgeImpl.caarState.modify;
}

uint64_t CamBridgeImpl.camBridgeState.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 240);
}

void key path setter for CamBridgeImpl.camBridgeState : CamBridgeImpl(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 240);
  *(v3 + 240) = v2;

  CamBridgeImpl.camBridgeState.didset();
}

uint64_t CamBridgeImpl.camBridgeState.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 240);
  *(v1 + 240) = a1;

  CamBridgeImpl.camBridgeState.didset();
}

uint64_t (*CamBridgeImpl.camBridgeState.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return CamBridgeImpl.camBridgeState.modify;
}

uint64_t CamBridgeImpl.camState.modify(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v7 = *(a1 + 24);
    return a3(result);
  }

  return result;
}

uint64_t CamBridgeImpl.__allocating_init(forceSupported:camProvider:caarProvider:trialExperimentManager:)(unsigned __int8 a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v27 = a3;
  v7 = swift_allocObject();
  v9 = a2[3];
  v8 = a2[4];
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a2, v9);
  v11 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  v17 = a4[3];
  v16 = a4[4];
  v18 = __swift_mutable_project_boxed_opaque_existential_1(a4, v17);
  v19 = *(*(v17 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22, v20);
  v24 = specialized CamBridgeImpl.init(forceSupported:camProvider:caarProvider:trialExperimentManager:)(a1, v14, v27, v22, v7, v9, v17, v8, v16);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v24;
}

uint64_t CamBridgeImpl.init(forceSupported:camProvider:caarProvider:trialExperimentManager:)(unsigned __int8 a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v9 = a2[3];
  v8 = a2[4];
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a2, v9);
  v11 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  v17 = a4[3];
  v16 = a4[4];
  v18 = __swift_mutable_project_boxed_opaque_existential_1(a4, v17);
  v19 = *(*(v17 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22, v20);
  v24 = specialized CamBridgeImpl.init(forceSupported:camProvider:caarProvider:trialExperimentManager:)(a1, v14, a3, v22, v26[1], v9, v17, v8, v16);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v24;
}

uint64_t one-time initialization function for shared()
{
  v0 = [objc_opt_self() clientWithIdentifier_];
  type metadata accessor for TrialExperimentationAssetManager();
  v1 = swift_allocObject();
  v2 = [objc_allocWithZone(type metadata accessor for ExperimentationAnalyticsManager()) init];
  *(v1 + 16) = v0;
  *(v1 + 24) = v2;
  type metadata accessor for CamBridgeImpl();
  v3 = swift_allocObject();

  v4 = specialized CamBridgeImpl.init(forceSupported:camProvider:caarProvider:trialExperimentManager:)(2u, &v6, v1, v3);

  static CamBridgeImpl.shared = v4;
  return result;
}

{
  type metadata accessor for MessageBusActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  static MessageBusActor.shared = v0;
  return result;
}

{
  type metadata accessor for FlowActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  static FlowActor.shared = v0;
  return result;
}

{
  if (one-time initialization token for kSharedFlowExtensionObserver != -1)
  {
    swift_once();
  }

  v0 = kSharedFlowExtensionObserver;
  type metadata accessor for FlowExtensionDiscoverer();
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  static FlowExtensionDiscoverer.shared = v1;
}

{
  type metadata accessor for ReactiveUIEventActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  static ReactiveUIEventActor.shared = v0;
  return result;
}

{
  type metadata accessor for ConversationActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  static ConversationActor.shared = v0;
  return result;
}

uint64_t *CamBridgeImpl.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static CamBridgeImpl.shared;
}

uint64_t static CamBridgeImpl.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static CamBridgeImpl.shared.setter(uint64_t a1)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static CamBridgeImpl.shared = a1;
}

uint64_t (*static CamBridgeImpl.shared.modify())()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return protocol witness for static FeatureToggle.forceEnabled.modify in conformance AmbiguityFeatureFlags;
}

uint64_t key path getter for static CamBridgeImpl.shared : CamBridgeImpl.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = static CamBridgeImpl.shared;
}

uint64_t key path setter for static CamBridgeImpl.shared : CamBridgeImpl.Type(uint64_t *a1)
{
  v1 = *a1;
  v2 = one-time initialization token for shared;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static CamBridgeImpl.shared = v1;
}

uint64_t closure #1 in CamBridgeImpl.asyncWarmUpIfSupported()()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t CamBridgeImpl.action(requestId:camId:rcId:speechPackage:rankedActions:inputOrigin:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[33] = a8;
  v9[34] = v8;
  v9[31] = a6;
  v9[32] = a7;
  v9[29] = a4;
  v9[30] = a5;
  v9[27] = a2;
  v9[28] = a3;
  v9[26] = a1;
  v10 = type metadata accessor for CamAction();
  v9[35] = v10;
  v11 = *(v10 - 8);
  v9[36] = v11;
  v12 = *(v11 + 64) + 15;
  v9[37] = swift_task_alloc();
  v13 = type metadata accessor for UUID();
  v9[38] = v13;
  v14 = *(v13 - 8);
  v9[39] = v14;
  v15 = *(v14 + 64) + 15;
  v9[40] = swift_task_alloc();
  v9[41] = swift_task_alloc();
  v16 = type metadata accessor for CamRequest();
  v9[42] = v16;
  v17 = *(v16 - 8);
  v9[43] = v17;
  v18 = *(v17 + 64) + 15;
  v9[44] = swift_task_alloc();
  v19 = type metadata accessor for InputOrigin();
  v9[45] = v19;
  v20 = *(v19 - 8);
  v9[46] = v20;
  v21 = *(v20 + 64) + 15;
  v9[47] = swift_task_alloc();
  v22 = type metadata accessor for CamFeature();
  v9[48] = v22;
  v23 = *(v22 - 8);
  v9[49] = v23;
  v24 = *(v23 + 64) + 15;
  v9[50] = swift_task_alloc();
  v9[51] = swift_task_alloc();
  v9[52] = swift_task_alloc();
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam0B6ActionOSgMd, &_s7SiriCam0B6ActionOSgMR) - 8) + 64) + 15;
  v9[53] = swift_task_alloc();
  v9[54] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9[55] = static MessageBusActor.shared;

  v26 = swift_task_alloc();
  v9[56] = v26;
  *v26 = v9;
  v26[1] = CamBridgeImpl.action(requestId:camId:rcId:speechPackage:rankedActions:inputOrigin:);

  return CamBridgeImpl.waitForCamWarmup()();
}

uint64_t CamBridgeImpl.action(requestId:camId:rcId:speechPackage:rankedActions:inputOrigin:)()
{
  v1 = *(*v0 + 448);
  v2 = *(*v0 + 440);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](CamBridgeImpl.action(requestId:camId:rcId:speechPackage:rankedActions:inputOrigin:), v2, 0);
}

{
  v113 = v0;
  v1 = *(v0 + 272);
  swift_beginAccess();
  outlined init with copy of CamBridgeImpl.CamState((v1 + 144), v0 + 16);
  v2 = *(v0 + 56);
  if (*(v0 + 57) > 1u)
  {
    if (*(v0 + 57) == 2)
    {
      v3 = *(v0 + 440);

      outlined destroy of CamBridgeImpl.CamState(v0 + 16);
      if (one-time initialization token for executor != -1)
      {
        goto LABEL_68;
      }

      goto LABEL_6;
    }

    if (*(v0 + 56) || *(v0 + 32) | *(v0 + 16) | *(v0 + 40) | *(v0 + 48) | *(v0 + 24))
    {
      v10 = *(v0 + 440);

      goto LABEL_19;
    }

    goto LABEL_15;
  }

  if (!*(v0 + 57))
  {
    outlined destroy of CamBridgeImpl.CamState(v0 + 16);
LABEL_15:

    return specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0xD00000000000003CLL, 0x80000001DCA7D9F0, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/DecisionEngine/AmbiguityHandling/CamBridge/CamBridgeImpl.swift", 131, 2, 276);
  }

  outlined init with take of ReferenceResolutionClientProtocol((v0 + 16), v0 + 64);
  if (v2 <= 1)
  {
    v8 = MEMORY[0x1E69CE320];
    if (!v2)
    {
      v8 = MEMORY[0x1E69CE338];
    }
  }

  else if (v2 == 2)
  {
    v8 = MEMORY[0x1E69CE328];
  }

  else
  {
    if (v2 != 3)
    {
      v22 = 1;
      goto LABEL_27;
    }

    v8 = MEMORY[0x1E69CE330];
  }

  (*(*(v0 + 288) + 104))(*(v0 + 432), *v8, *(v0 + 280));
  v22 = 0;
LABEL_27:
  v23 = *(v0 + 272);
  (*(*(v0 + 288) + 56))(*(v0 + 432), v22, 1, *(v0 + 280));
  swift_beginAccess();
  v24 = *(v23 + 96);
  v105 = *(v24 + 16);
  if (!v105)
  {
    v29 = MEMORY[0x1E69E7CC0];
LABEL_59:
    *(v0 + 456) = v29;
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v68 = type metadata accessor for Logger();
    *(v0 + 464) = __swift_project_value_buffer(v68, static Logger.executor);
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = *(v0 + 384);
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v112 = v73;
      *v72 = 136315138;

      v75 = MEMORY[0x1E12A16D0](v74, v71);
      v77 = v76;

      v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v77, &v112);

      *(v72 + 4) = v78;
      _os_log_impl(&dword_1DC659000, v69, v70, "CamBridge: Enabled features for this request: %s", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v73);
      MEMORY[0x1E12A2F50](v73, -1, -1);
      MEMORY[0x1E12A2F50](v72, -1, -1);
    }

    v106 = *(v0 + 424);
    v108 = *(v0 + 432);
    v79 = *(v0 + 320);
    v80 = *(v0 + 304);
    v82 = *(v0 + 240);
    v81 = *(v0 + 248);
    v83 = *(v0 + 224);
    v110 = *(v0 + 352);
    v84 = *(v0 + 216);
    v85 = *(*(v0 + 312) + 16);
    v85(*(v0 + 328), *(v0 + 208), v80);
    v85(v79, v84, v80);
    outlined init with copy of ReferenceResolutionClientProtocol?(v108, v106, &_s7SiriCam0B6ActionOSgMd, &_s7SiriCam0B6ActionOSgMR);
    v86 = v82;

    CamRequest.init(requestId:camId:rcId:maybeSpeechPackage:rankedActions:camEnabledFeatures:previousCamAction:)();
    v87 = *(v0 + 88);
    v88 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 64), v87);
    v89 = *(v88 + 8);
    v111 = (v89 + *v89);
    v90 = v89[1];
    v91 = swift_task_alloc();
    *(v0 + 472) = v91;
    *v91 = v0;
    v91[1] = CamBridgeImpl.action(requestId:camId:rcId:speechPackage:rankedActions:inputOrigin:);
    v92 = *(v0 + 352);
    v93 = *(v0 + 296);

    return v111(v93, v92, v87, v88);
  }

  v25 = *(v0 + 392);
  v26 = *(v0 + 368);
  v97 = *(v0 + 240);
  v99 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v102 = v24 + v99;
  v101 = *MEMORY[0x1E69CE340];
  v109 = (v25 + 8);
  v96 = *MEMORY[0x1E69D34E8];
  v94 = (v26 + 8);
  v95 = (v26 + 104);
  v103 = v25;
  v98 = (v25 + 32);

  v28 = 0;
  v29 = MEMORY[0x1E69E7CC0];
  v104 = v27;
  while (v28 < *(v27 + 16))
  {
    v32 = *(v0 + 408);
    v33 = *(v0 + 384);
    v34 = *(v103 + 72);
    v35 = *(v103 + 16);
    v35(*(v0 + 416), v102 + v34 * v28, v33);
    (*(v103 + 104))(v32, v101, v33);
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type CamFeature and conformance CamFeature, MEMORY[0x1E69CE350]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (*(v0 + 176) == *(v0 + 192) && *(v0 + 184) == *(v0 + 200))
    {
      v36 = 1;
    }

    else
    {
      v37 = *(v0 + 184);
      v38 = *(v0 + 200);
      v36 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v39 = *v109;
    (*v109)(*(v0 + 408), *(v0 + 384));

    if ((v36 & 1) == 0)
    {
LABEL_52:
      v35(*(v0 + 400), *(v0 + 416), *(v0 + 384));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1, v29);
      }

      v65 = *(v29 + 2);
      v64 = *(v29 + 3);
      if (v65 >= v64 >> 1)
      {
        v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v64 > 1, v65 + 1, 1, v29);
      }

      v66 = *(v0 + 400);
      v67 = *(v0 + 384);
      v39(*(v0 + 416), v67);
      *(v29 + 2) = v65 + 1;
      (*v98)(&v29[v99 + v65 * v34], v66, v67);
      goto LABEL_31;
    }

    v107 = v39;
    if (v97)
    {
      v100 = v29;
      v40 = *(v0 + 376);
      v41 = *(v0 + 360);
      v42 = *(v0 + 256);
      v43 = *(v0 + 264);
      (*v95)(v40, v96, v41);
      v44 = InputOrigin.rawValue.getter();
      v46 = v45;
      (*v94)(v40, v41);
      if (v44 == v42 && v46 == v43)
      {

        v29 = v100;
      }

      else
      {
        v54 = *(v0 + 256);
        v55 = *(v0 + 264);
        v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v29 = v100;
        v39 = v107;
        if ((v56 & 1) == 0)
        {
          goto LABEL_52;
        }
      }

      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v57 = type metadata accessor for Logger();
      __swift_project_value_buffer(v57, static Logger.executor);
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.debug.getter();
      v60 = os_log_type_enabled(v58, v59);
      v61 = *(v0 + 416);
      v62 = *(v0 + 384);
      if (v60)
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&dword_1DC659000, v58, v59, "CamBridge: Not enabling ASK_REPEAT for flexible follow-up request", v63, 2u);
        MEMORY[0x1E12A2F50](v63, -1, -1);
      }

      v30 = v61;
      v31 = v62;
    }

    else
    {
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v47 = type metadata accessor for Logger();
      __swift_project_value_buffer(v47, static Logger.executor);
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.debug.getter();
      v50 = os_log_type_enabled(v48, v49);
      v51 = *(v0 + 416);
      v52 = *(v0 + 384);
      if (v50)
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_1DC659000, v48, v49, "CamBridge: Not enabling ASK_REPEAT for this request as speechPackage isn't present", v53, 2u);
        MEMORY[0x1E12A2F50](v53, -1, -1);
      }

      v30 = v51;
      v31 = v52;
    }

    v107(v30, v31);
LABEL_31:
    v27 = v104;
    if (v105 == ++v28)
    {

      goto LABEL_59;
    }
  }

  __break(1u);
LABEL_68:
  swift_once();
LABEL_6:
  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.executor);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1DC659000, v5, v6, "CamBridge: Avoiding call to CAM due to previous errors", v7, 2u);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }

LABEL_19:
  v12 = *(v0 + 424);
  v11 = *(v0 + 432);
  v14 = *(v0 + 408);
  v13 = *(v0 + 416);
  v15 = *(v0 + 400);
  v16 = *(v0 + 376);
  v17 = *(v0 + 352);
  v19 = *(v0 + 320);
  v18 = *(v0 + 328);
  v20 = *(v0 + 296);

  v21 = *(v0 + 8);

  return v21(0);
}

{
  v1 = *(*v0 + 472);
  v2 = *(*v0 + 440);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](CamBridgeImpl.action(requestId:camId:rcId:speechPackage:rankedActions:inputOrigin:), v2, 0);
}

{
  v1 = v0[55];
  v3 = v0[36];
  v2 = v0[37];
  v4 = v0[35];

  v5 = (*(v3 + 88))(v2, v4);
  if (v5 != *MEMORY[0x1E69CE320])
  {
    if (v5 == *MEMORY[0x1E69CE328])
    {
      v25 = v0[57];
      v26 = v0[54];
      (*(v0[43] + 8))(v0[44], v0[42]);
      outlined destroy of ReferenceResolutionClientProtocol?(v26, &_s7SiriCam0B6ActionOSgMd, &_s7SiriCam0B6ActionOSgMR);
      v49 = 2;
      goto LABEL_15;
    }

    v33 = v0[54];
    v34 = *MEMORY[0x1E69CE330];
    v35 = v5;
    (*(v0[43] + 8))(v0[44], v0[42]);
    outlined destroy of ReferenceResolutionClientProtocol?(v33, &_s7SiriCam0B6ActionOSgMd, &_s7SiriCam0B6ActionOSgMR);
    v36 = v0[57];
    if (v35 == v34)
    {
      v49 = 3;
      goto LABEL_15;
    }

    (*(v0[36] + 8))(v0[37], v0[35]);
    goto LABEL_14;
  }

  v6 = v0[58];
  v7 = v0[34];
  v8 = v0[26];
  v9 = v7[17];
  __swift_project_boxed_opaque_existential_1(v7 + 13, v7[16]);
  v10.value._countAndFlagsBits = UUID.uuidString.getter();
  v12 = v11;
  v13._object = 0x80000001DCA7DAC0;
  v13._countAndFlagsBits = 0xD000000000000024;
  v10.value._object = v12;
  TrialExperimentationAssetManaging.emitTriggerLogging(codepathId:requestId:)(v13, v10);

  v14 = v7[16];
  v15 = v7[17];
  __swift_project_boxed_opaque_existential_1(v7 + 13, v14);
  LOBYTE(v14) = (*(v15 + 8))(v14, v15);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  v18 = os_log_type_enabled(v16, v17);
  if ((v14 & 1) == 0)
  {
    if (v18)
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1DC659000, v16, v17, "CamBridge: Deprecating CAM AskRepeat based on factor level from Trial.", v27, 2u);
      MEMORY[0x1E12A2F50](v27, -1, -1);
    }

    v28 = v0[57];
    v29 = v0[54];
    v31 = v0[43];
    v30 = v0[44];
    v32 = v0[42];

    (*(v31 + 8))(v30, v32);
    outlined destroy of ReferenceResolutionClientProtocol?(v29, &_s7SiriCam0B6ActionOSgMd, &_s7SiriCam0B6ActionOSgMR);
LABEL_14:
    v49 = 0;
    goto LABEL_15;
  }

  if (v18)
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1DC659000, v16, v17, "CamBridge: Keeping CAM AskRepeat based on factor level from Trial.", v19, 2u);
    MEMORY[0x1E12A2F50](v19, -1, -1);
  }

  v20 = v0[57];
  v21 = v0[54];
  v23 = v0[43];
  v22 = v0[44];
  v24 = v0[42];

  (*(v23 + 8))(v22, v24);
  outlined destroy of ReferenceResolutionClientProtocol?(v21, &_s7SiriCam0B6ActionOSgMd, &_s7SiriCam0B6ActionOSgMR);
  v49 = 1;
LABEL_15:

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
  v38 = v0[53];
  v37 = v0[54];
  v40 = v0[51];
  v39 = v0[52];
  v41 = v0[50];
  v42 = v0[47];
  v43 = v0[44];
  v45 = v0[40];
  v44 = v0[41];
  v46 = v0[37];

  v47 = v0[1];

  return v47(v49);
}

uint64_t CamBridgeImpl.waitForCamWarmup()()
{
  *(v1 + 112) = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static MessageBusActor.shared;
  *(v1 + 120) = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](CamBridgeImpl.waitForCamWarmup(), v2, 0);
}

{
  v1 = *(v0 + 112);
  swift_beginAccess();
  outlined init with copy of CamBridgeImpl.CamState((v1 + 144), v0 + 16);
  if (!*(v0 + 57))
  {
    v4 = *(v0 + 16);
    *(v0 + 144) = v4;
    v11 = *(MEMORY[0x1E69E86C0] + 4);
    v6 = swift_task_alloc();
    *(v0 + 152) = v6;
    *v6 = v0;
    v7 = CamBridgeImpl.waitForCamWarmup();
    goto LABEL_10;
  }

  if (*(v0 + 57) == 3 && !*(v0 + 56))
  {
    v2 = vorrq_s8(*(v0 + 24), *(v0 + 40));
    if (!(*&vorr_s8(*v2.i8, *&vextq_s8(v2, v2, 8uLL)) | *(v0 + 16)))
    {
      v3 = *(v0 + 112);
      v4 = CamBridgeImpl.asyncWarmUpIfSupported()();
      *(v0 + 128) = v4;
      v5 = *(MEMORY[0x1E69E86C0] + 4);
      v6 = swift_task_alloc();
      *(v0 + 136) = v6;
      *v6 = v0;
      v7 = CamBridgeImpl.waitForCamWarmup();
LABEL_10:
      v6[1] = v7;
      v12 = MEMORY[0x1E69E7CA8] + 8;

      return MEMORY[0x1EEE6DA40](v6, v4, v12);
    }
  }

  v8 = *(v0 + 120);

  outlined destroy of CamBridgeImpl.CamState(v0 + 16);
  v9 = *(v0 + 8);

  return v9();
}

{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](CamBridgeImpl.waitForCamWarmup(), v3, 0);
}

{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 120);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](CamBridgeImpl.waitForCamWarmup(), v2, 0);
}

{
  v1 = v0[18];
  v2 = v0[15];

  v3 = v0[1];

  return v3();
}

uint64_t CamBridgeImpl.rank(rcId:actions:rankerContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[25] = a4;
  v5[26] = v4;
  v5[23] = a2;
  v5[24] = a3;
  v5[22] = a1;
  v6 = type metadata accessor for RankedAction();
  v5[27] = v6;
  v7 = *(v6 - 8);
  v5[28] = v7;
  v8 = *(v7 + 64) + 15;
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v5[33] = v10;
  v11 = *(v10 - 8);
  v5[34] = v11;
  v12 = *(v11 + 64) + 15;
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5[40] = static MessageBusActor.shared;

  v13 = swift_task_alloc();
  v5[41] = v13;
  *v13 = v5;
  v13[1] = CamBridgeImpl.rank(rcId:actions:rankerContext:);

  return CamBridgeImpl.waitForCaarWarmup()();
}

uint64_t CamBridgeImpl.rank(rcId:actions:rankerContext:)()
{
  v1 = *(*v0 + 328);
  v2 = *(*v0 + 320);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](CamBridgeImpl.rank(rcId:actions:rankerContext:), v2, 0);
}

{
  v87 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);
  v3 = *(v0 + 256);
  v4 = *(v0 + 208);
  swift_beginAccess();
  v5 = *(v4 + 240);
  outlined init with copy of ReferenceResolutionClientProtocol?(v5 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_requestLoggingId, v3, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v6 = *(v2 + 48);
  if (v6(v3, 1, v1) == 1)
  {
    v7 = (v0 + 256);
LABEL_5:
    outlined destroy of ReferenceResolutionClientProtocol?(*v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.executor);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1DC659000, v12, v13, "CamBridge: No Execution / CAAR logging ID found in camBridgeState, falling back on new UUID", v14, 2u);
      MEMORY[0x1E12A2F50](v14, -1, -1);
    }

    v16 = *(v0 + 304);
    v15 = *(v0 + 312);

    UUID.init()();
    UUID.init()();
    goto LABEL_10;
  }

  v7 = (v0 + 248);
  v8 = *(v0 + 248);
  v9 = *(v0 + 264);
  v10 = *(*(v0 + 272) + 32);
  v10(*(v0 + 296), *(v0 + 256), v9);
  outlined init with copy of ReferenceResolutionClientProtocol?(v5 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_caarLoggingId, v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v6(v8, 1, v9) == 1)
  {
    (*(*(v0 + 272) + 8))(*(v0 + 296), *(v0 + 264));
    goto LABEL_5;
  }

  v29 = *(v0 + 304);
  v30 = *(v0 + 312);
  v32 = *(v0 + 288);
  v31 = *(v0 + 296);
  v33 = *(v0 + 264);
  v34 = *(v0 + 272);
  v10(v32, *(v0 + 248), v33);
  v35 = *(v34 + 16);
  v35(v30, v31, v33);
  v35(v29, v32, v33);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v36 = *(v0 + 304);
  v37 = *(v0 + 280);
  v38 = *(v0 + 264);
  v39 = type metadata accessor for Logger();
  __swift_project_value_buffer(v39, static Logger.executor);
  v35(v37, v36, v38);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.debug.getter();
  v42 = os_log_type_enabled(v40, v41);
  v44 = *(v0 + 288);
  v43 = *(v0 + 296);
  v46 = *(v0 + 272);
  v45 = *(v0 + 280);
  v47 = *(v0 + 264);
  if (v42)
  {
    v84 = *(v0 + 296);
    v48 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v86 = v83;
    *v48 = 136315138;
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v49 = dispatch thunk of CustomStringConvertible.description.getter();
    v51 = v50;
    v52 = *(v46 + 8);
    v52(v45, v47);
    v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, &v86);

    *(v48 + 4) = v53;
    _os_log_impl(&dword_1DC659000, v40, v41, "CamBridge: Retrieved CAAR logging ID from CAM state: %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v83);
    MEMORY[0x1E12A2F50](v83, -1, -1);
    MEMORY[0x1E12A2F50](v48, -1, -1);

    v52(v44, v47);
    v52(v84, v47);
  }

  else
  {

    v82 = *(v46 + 8);
    v82(v45, v47);
    v82(v44, v47);
    v82(v43, v47);
  }

LABEL_10:
  v17 = *(v0 + 208);
  swift_beginAccess();
  outlined init with copy of CamBridgeImpl.CaarState((v17 + 192), v0 + 16);
  if (*(v0 + 56) > 1u)
  {
    if (*(v0 + 56) == 2)
    {
      v18 = *(v0 + 320);

      outlined destroy of CamBridgeImpl.CaarState(v0 + 16);
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static Logger.executor);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      v22 = os_log_type_enabled(v20, v21);
      v24 = *(v0 + 304);
      v23 = *(v0 + 312);
      v25 = *(v0 + 264);
      v26 = *(v0 + 272);
      if (v22)
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_1DC659000, v20, v21, "CamBridge: Avoiding call to CAM due to previous errors", v27, 2u);
        MEMORY[0x1E12A2F50](v27, -1, -1);
      }

      v28 = *(v26 + 8);
      v28(v24, v25);
      v28(v23, v25);
    }

    else
    {
      if (!(*(v0 + 32) | *(v0 + 16) | *(v0 + 40) | *(v0 + 48) | *(v0 + 24)))
      {
        goto LABEL_31;
      }

      v67 = *(v0 + 312);
      v66 = *(v0 + 320);
      v68 = *(v0 + 304);
      v69 = *(v0 + 264);
      v70 = *(v0 + 272);

      v71 = *(v70 + 8);
      v71(v68, v69);
      v71(v67, v69);
    }

    v73 = *(v0 + 304);
    v72 = *(v0 + 312);
    v75 = *(v0 + 288);
    v74 = *(v0 + 296);
    v76 = *(v0 + 280);
    v78 = *(v0 + 248);
    v77 = *(v0 + 256);
    v80 = *(v0 + 232);
    v79 = *(v0 + 240);

    v81 = *(v0 + 8);

    return v81(0);
  }

  else
  {
    if (!*(v0 + 56))
    {
      outlined destroy of CamBridgeImpl.CaarState(v0 + 16);
LABEL_31:

      return specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0xD00000000000003ALL, 0x80000001DCA7DAF0, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/DecisionEngine/AmbiguityHandling/CamBridge/CamBridgeImpl.swift", 131, 2, 323);
    }

    outlined init with take of ReferenceResolutionClientProtocol((v0 + 16), v0 + 64);
    v54 = *(v0 + 88);
    v55 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 64), v54);
    v56 = *(v55 + 8);
    v85 = (v56 + *v56);
    v57 = v56[1];
    v58 = swift_task_alloc();
    *(v0 + 336) = v58;
    *v58 = v0;
    v58[1] = CamBridgeImpl.rank(rcId:actions:rankerContext:);
    v59 = *(v0 + 304);
    v60 = *(v0 + 192);
    v61 = *(v0 + 200);
    v62 = *(v0 + 176);
    v63 = *(v0 + 184);
    v64 = *(v0 + 312);

    return v85(v64, v59, v62, v63, v60, v61, v54, v55);
  }
}

{
  v2 = v0[43];
  v3 = v0[40];
  v5 = v0[22];
  v4 = v0[23];

  v6 = specialized static CamBridgeImpl.collateParses(rcId:rankedActions:)(v5, v4, v2);

  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = v0[28];
    v50 = (v9 + 32);
    v10 = MEMORY[0x1E69E7CC0];
    v48 = *(v6 + 16);
    v49 = v6;
    while (v8 < *(v6 + 16))
    {
      v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v1 = *(v9 + 72);
      (*(v9 + 16))(v0[30], v6 + v11 + v1 * v8, v0[27]);
      RankedAction.score.getter();
      v12 = v0[30];
      if (v13 < 0.1)
      {
        (*(v9 + 8))(v0[30], v0[27]);
      }

      else
      {
        v14 = *v50;
        (*v50)(v0[29], v0[30], v0[27]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1);
        }

        v16 = *(v10 + 16);
        v15 = *(v10 + 24);
        if (v16 >= v15 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v15 > 1, v16 + 1, 1);
        }

        v17 = v0[29];
        v18 = v0[27];
        *(v10 + 16) = v16 + 1;
        v14(v10 + v11 + v16 * v1, v17, v18);
        v7 = v48;
        v6 = v49;
      }

      if (v7 == ++v8)
      {
        v19 = *(v6 + 16);
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v19 = 0;
  v10 = MEMORY[0x1E69E7CC0];
LABEL_14:

  v20 = *(v10 + 16);
  v1 = &unk_1EE159000;
  v8 = v19 - v20;
  if (v19 > v20)
  {
    if (one-time initialization token for executor == -1)
    {
LABEL_16:
      v21 = type metadata accessor for Logger();
      __swift_project_value_buffer(v21, static Logger.executor);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 134217984;
        *(v24 + 4) = v8;
        _os_log_impl(&dword_1DC659000, v22, v23, "After collating %ld actions were dropped due to low ranker score", v24, 0xCu);
        MEMORY[0x1E12A2F50](v24, -1, -1);
      }

      v20 = *(v10 + 16);
      goto LABEL_19;
    }

LABEL_30:
    swift_once();
    goto LABEL_16;
  }

LABEL_19:
  if (v20)
  {
    v25 = v0[39];
    v26 = v0[33];
    v27 = *(v0[34] + 8);
    v27(v0[38], v26);
    v27(v25, v26);
  }

  else
  {

    if (*(v1 + 389) != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.executor);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1DC659000, v29, v30, "CamBridge: Collated & filtered actions are empty!", v31, 2u);
      MEMORY[0x1E12A2F50](v31, -1, -1);
    }

    v33 = v0[38];
    v32 = v0[39];
    v34 = v0[33];
    v35 = v0[34];

    v36 = *(v35 + 8);
    v36(v33, v34);
    v36(v32, v34);
    v10 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
  v38 = v0[38];
  v37 = v0[39];
  v40 = v0[36];
  v39 = v0[37];
  v41 = v0[35];
  v43 = v0[31];
  v42 = v0[32];
  v45 = v0[29];
  v44 = v0[30];

  v46 = v0[1];

  return v46(v10);
}

{
  v1 = v0[40];

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DC659000, v3, v4, "CamBridge: Ranking threw error", v5, 2u);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  v7 = v0[38];
  v6 = v0[39];
  v8 = v0[33];
  v9 = v0[34];

  v10 = *(v9 + 8);
  v10(v7, v8);
  v10(v6, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
  v12 = v0[38];
  v11 = v0[39];
  v14 = v0[36];
  v13 = v0[37];
  v15 = v0[35];
  v17 = v0[31];
  v16 = v0[32];
  v19 = v0[29];
  v18 = v0[30];

  v20 = v0[1];

  return v20(0);
}

uint64_t CamBridgeImpl.rank(rcId:actions:rankerContext:)(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 336);
  v7 = *v2;

  v8 = *(v4 + 320);
  if (v1)
  {

    v9 = CamBridgeImpl.rank(rcId:actions:rankerContext:);
  }

  else
  {
    *(v5 + 344) = a1;
    v9 = CamBridgeImpl.rank(rcId:actions:rankerContext:);
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, 0);
}

uint64_t CamBridgeImpl.waitForCaarWarmup()()
{
  *(v1 + 112) = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static MessageBusActor.shared;
  *(v1 + 120) = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](CamBridgeImpl.waitForCaarWarmup(), v2, 0);
}

{
  v1 = *(v0 + 112);
  swift_beginAccess();
  outlined init with copy of CamBridgeImpl.CaarState((v1 + 192), v0 + 16);
  if (*(v0 + 56))
  {
    if (*(v0 + 56) != 3 || (v2 = vorrq_s8(*(v0 + 24), *(v0 + 40)), *&vorr_s8(*v2.i8, *&vextq_s8(v2, v2, 8uLL)) | *(v0 + 16)))
    {
      v3 = *(v0 + 120);

      outlined destroy of CamBridgeImpl.CaarState(v0 + 16);
      v4 = *(v0 + 8);

      return v4();
    }

    v10 = *(v0 + 112);
    v6 = CamBridgeImpl.asyncWarmUpIfSupported()();
    *(v0 + 128) = v6;
    v11 = *(MEMORY[0x1E69E86C0] + 4);
    v8 = swift_task_alloc();
    *(v0 + 136) = v8;
    *v8 = v0;
    v9 = CamBridgeImpl.waitForCamWarmup();
  }

  else
  {
    v6 = *(v0 + 16);
    *(v0 + 144) = v6;
    v7 = *(MEMORY[0x1E69E86C0] + 4);
    v8 = swift_task_alloc();
    *(v0 + 152) = v8;
    *v8 = v0;
    v9 = CamBridgeImpl.waitForCamWarmup();
  }

  v8[1] = v9;
  v12 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA40](v8, v6, v12);
}

uint64_t CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[235] = v8;
  v9[234] = v37;
  v9[233] = a8;
  v9[232] = a7;
  v9[231] = a6;
  v9[230] = a5;
  v9[229] = a4;
  v9[223] = a3;
  v9[217] = a2;
  v9[211] = a1;
  v10 = type metadata accessor for RankedAction();
  v9[236] = v10;
  v11 = *(v10 - 8);
  v9[237] = v11;
  v12 = *(v11 + 64) + 15;
  v9[238] = swift_task_alloc();
  v13 = type metadata accessor for Input();
  v9[239] = v13;
  v14 = *(v13 - 8);
  v9[240] = v14;
  v15 = *(v14 + 64) + 15;
  v9[241] = swift_task_alloc();
  v16 = type metadata accessor for PluginAction();
  v9[242] = v16;
  v17 = *(v16 - 8);
  v9[243] = v17;
  v18 = *(v17 + 64) + 15;
  v9[244] = swift_task_alloc();
  v9[245] = swift_task_alloc();
  v9[246] = swift_task_alloc();
  v19 = *(type metadata accessor for ConversationHelperInput(0) - 8);
  v9[247] = v19;
  v9[248] = *(v19 + 64);
  v9[249] = swift_task_alloc();
  v9[250] = swift_task_alloc();
  v20 = type metadata accessor for ParaphraseProbeResult();
  v9[251] = v20;
  v21 = *(*(v20 - 8) + 64) + 15;
  v9[252] = swift_task_alloc();
  v9[253] = swift_task_alloc();
  v9[254] = swift_task_alloc();
  v9[255] = swift_task_alloc();
  v9[256] = swift_task_alloc();
  v9[257] = swift_task_alloc();
  v9[258] = swift_task_alloc();
  v9[259] = swift_task_alloc();
  v9[260] = swift_task_alloc();
  v9[261] = swift_task_alloc();
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR) - 8) + 64) + 15;
  v9[262] = swift_task_alloc();
  v9[263] = swift_task_alloc();
  v9[264] = swift_task_alloc();
  v9[265] = swift_task_alloc();
  v9[266] = swift_task_alloc();
  v23 = type metadata accessor for Parse();
  v9[267] = v23;
  v24 = *(v23 - 8);
  v9[268] = v24;
  v25 = *(v24 + 64) + 15;
  v9[269] = swift_task_alloc();
  v26 = type metadata accessor for Parse.DirectInvocation();
  v9[270] = v26;
  v27 = *(v26 - 8);
  v9[271] = v27;
  v28 = *(v27 + 64) + 15;
  v9[272] = swift_task_alloc();
  v29 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR) - 8) + 64) + 15;
  v9[273] = swift_task_alloc();
  v9[274] = swift_task_alloc();
  v9[275] = swift_task_alloc();
  v30 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  v9[276] = swift_task_alloc();
  v9[277] = swift_task_alloc();
  v31 = type metadata accessor for UUID();
  v9[278] = v31;
  v32 = *(v31 - 8);
  v9[279] = v32;
  v33 = *(v32 + 64) + 15;
  v9[280] = swift_task_alloc();
  v9[281] = swift_task_alloc();
  v9[282] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v34 = static MessageBusActor.shared;
  v9[283] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:), v34, 0);
}

uint64_t CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:)()
{
  v1 = v0[279];
  v2 = v0[278];
  v3 = v0[277];
  v4 = v0[235];
  swift_beginAccess();
  v5 = *(v4 + 240);
  v0[284] = v5;
  outlined init with copy of ReferenceResolutionClientProtocol?(v5 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_requestLoggingId, v3, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v6 = *(v1 + 48);
  if (v6(v3, 1, v2) == 1)
  {
    v7 = v0 + 277;
  }

  else
  {
    v8 = v0[278];
    v9 = v0[276];
    v10 = *(v0[279] + 32);
    v10(v0[280], v0[277], v8);
    outlined init with copy of ReferenceResolutionClientProtocol?(v5 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_camLoggingId, v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (v6(v9, 1, v8) != 1)
    {
      v20 = v0[282];
      v21 = v0[280];
      v22 = v0[278];
      v10(v0[281], v0[276], v22);
      v10(v20, v21, v22);

      goto LABEL_11;
    }

    v7 = v0 + 276;
    v11 = v0[280];
    v12 = v0[278];
    v13 = *(v0[279] + 8);

    v13(v11, v12);
  }

  outlined destroy of ReferenceResolutionClientProtocol?(*v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.executor);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1DC659000, v15, v16, "No Execution/CAM logging ID found in camBridgeState, falling back on new UUID", v17, 2u);
    MEMORY[0x1E12A2F50](v17, -1, -1);
  }

  v18 = v0[282];
  v19 = v0[281];

  UUID.init()();
  UUID.init()();
LABEL_11:
  v23 = swift_task_alloc();
  v0[285] = v23;
  *v23 = v0;
  v23[1] = CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:);
  v24 = v0[282];
  v25 = v0[281];
  v26 = v0[235];
  v27 = v0[234];
  v28 = v0[233];
  v29 = v0[230];
  v30 = v0[229];
  v31 = v0[223];
  v32 = v0[217];

  return CamBridgeImpl.action(requestId:camId:rcId:speechPackage:rankedActions:inputOrigin:)(v24, v25, v32, v31, v30, v29, v28, v27);
}

{
  v196 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 2360);
  v2 = *(v0 + 2272);
  v3 = *(v0 + 2200);
  v4 = *(v0 + 1920);
  v5 = *(v0 + 1912);
  v6 = *(v0 + 1784);
  v7 = *(v0 + 1736);
  v8 = type metadata accessor for Logger();
  *(v0 + 2288) = __swift_project_value_buffer(v8, static Logger.executor);
  specialized Logger.debugF(_:_:_:_:)();
  v9._countAndFlagsBits = v7;
  v9._object = v6;
  CamBridgeState.registerCamAction(rcId:camAction:)(v9, v1);
  v10 = *(v4 + 56);
  *(v0 + 2296) = v10;
  v193 = v0;
  *(v0 + 2304) = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v10(v3, 1, 1, v5);
  if (v1 <= 1)
  {
    if (!v1)
    {
      v11 = v0;
      v12 = *(v0 + 2264);

      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        v16 = "CamBridge: Executing top ranked action";
LABEL_14:
        _os_log_impl(&dword_1DC659000, v13, v14, v16, v15, 2u);
        MEMORY[0x1E12A2F50](v15, -1, -1);
        goto LABEL_15;
      }

      goto LABEL_15;
    }

    v11 = v0;
    v25 = *(v0 + 2264);
    v18 = *(v0 + 2192);
    v19 = *(v0 + 2176);
    v20 = *(v0 + 2168);
    v21 = *(v193 + 2160);
    v22 = *(v193 + 2152);
    v23 = *(v193 + 2144);
    v24 = *(v193 + 2136);
    v182 = *(v193 + 2200);
    v188 = *(v193 + 1912);

    static CamDirectInvocationIdentifiers.askRepeat.getter();
LABEL_10:
    Parse.DirectInvocation.init(identifier:userData:)();
    (*(v20 + 16))(v22, v19, v21);
    (*(v23 + 104))(v22, *MEMORY[0x1E69D0158], v24);
    Input.init(parse:)();
    (*(v20 + 8))(v19, v21);
    outlined destroy of ReferenceResolutionClientProtocol?(v182, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    v10(v18, 0, 1, v188);
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v18, v182, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    goto LABEL_16;
  }

  if (v1 == 2)
  {
    v11 = v0;
    v17 = *(v0 + 2264);
    v18 = *(v0 + 2192);
    v19 = *(v0 + 2176);
    v20 = *(v0 + 2168);
    v21 = *(v193 + 2160);
    v22 = *(v193 + 2152);
    v23 = *(v193 + 2144);
    v24 = *(v193 + 2136);
    v182 = *(v193 + 2200);
    v188 = *(v193 + 1912);

    static CamDirectInvocationIdentifiers.giveUpRepeat.getter();
    goto LABEL_10;
  }

  v11 = v0;
  if (*(*(v0 + 1840) + 16) < 2uLL)
  {
    v26 = *(v0 + 2264);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = "CamBridge: We didn't have 2 actions present to disambiguate.";
      goto LABEL_14;
    }

LABEL_15:

    goto LABEL_16;
  }

  v90 = *(v0 + 2128);
  v91 = *(v0 + 2120);
  v92 = type metadata accessor for ActionParaphrase();
  *(v0 + 2312) = v92;
  v93 = *(v92 - 8);
  *(v0 + 2320) = v93;
  v94 = *(v93 + 56);
  *(v193 + 2328) = v94;
  *(v193 + 2336) = (v93 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v94(v90, 1, 1, v92);
  v94(v91, 1, 1, v92);
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v95 = static AmbiguityFeatureFlags.forceEnabled;
  if (*(static AmbiguityFeatureFlags.forceEnabled + 16) && (v96 = specialized __RawDictionaryStorage.find<A>(_:)(1), (v97 & 1) != 0))
  {
    if (*(*(v95 + 56) + v96) != 1)
    {
LABEL_38:
      v98 = *(v193 + 2264);

      v99 = *(*(v193 + 1896) + 80);
      v100 = *(v193 + 1840) + ((v99 + 32) & ~v99);
      RankedAction.toPluginAction(withSpeechPackage:withParaphrase:)(*(v193 + 1832), *(v193 + 2128), *(v193 + 1968));
      v118 = PluginAction.serialize()();
      v191 = v119;
      v120 = *(v193 + 2120);
      v121 = *(v193 + 1960);
      v122 = *(v193 + 1896);
      v123 = *(v193 + 1832);
      v124 = *(*(v193 + 1944) + 8);
      v124(*(v193 + 1968), *(v193 + 1936));
      v125 = v100 + *(v122 + 72);
      RankedAction.toPluginAction(withSpeechPackage:withParaphrase:)(v123, v120, v121);
      v126 = PluginAction.serialize()();
      v181 = *(v193 + 2296);
      v187 = *(v193 + 2304);
      v176 = *(v193 + 2200);
      v138 = *(v193 + 2168);
      v155 = *(v193 + 2176);
      v157 = *(v193 + 2152);
      v159 = *(v193 + 2160);
      v161 = *(v193 + 2144);
      v163 = *(v193 + 2136);
      v165 = *(v193 + 2192);
      v167 = *(v193 + 2120);
      v170 = *(v193 + 2128);
      v173 = *(v193 + 1912);
      v139 = v126;
      v141 = v140;
      v124(*(v193 + 1960), *(v193 + 1936));
      static CamDirectInvocationIdentifiers.disambiguateTopTwo.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DCA66060;
      *(inited + 32) = 1936750952;
      *(inited + 40) = 0xE400000000000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataVGMR);
      v143 = swift_allocObject();
      *(v143 + 16) = xmmword_1DCA65720;
      *(v143 + 32) = v118;
      *(v143 + 40) = v191;
      *(v143 + 48) = v139;
      *(v143 + 56) = v141;
      *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
      *(inited + 48) = v143;
      outlined copy of Data._Representation(v118, v191);
      outlined copy of Data._Representation(v139, v141);
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of ReferenceResolutionClientProtocol?(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
      Parse.DirectInvocation.init(identifier:userData:)();
      (*(v138 + 16))(v157, v155, v159);
      (*(v161 + 104))(v157, *MEMORY[0x1E69D0158], v163);
      Input.init(parse:)();
      outlined consume of Data._Representation(v139, v141);
      outlined consume of Data._Representation(v118, v191);
      (*(v138 + 8))(v155, v159);
      outlined destroy of ReferenceResolutionClientProtocol?(v167, &_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v170, &_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v176, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
      v181(v165, 0, 1, v173);
      outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v165, v176, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
LABEL_16:
      v27 = v11[273];
      v28 = v11[240];
      v29 = v11[239];
      outlined init with copy of ReferenceResolutionClientProtocol?(v11[275], v27, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
      if ((*(v28 + 48))(v27, 1, v29) == 1)
      {
        v30 = v11[230];
        outlined destroy of ReferenceResolutionClientProtocol?(v11[273], &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
        v31 = *(v30 + 16);
        if (!v31)
        {
          v80 = v11[284];
          v81 = v11[282];
          v82 = v11[281];
          v83 = v11[279];
          v84 = v11[278];
          v85 = v11[275];
          v86 = v11[211];

          outlined destroy of ReferenceResolutionClientProtocol?(v85, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
          v87 = *(v83 + 8);
          v87(v82, v84);
          v87(v81, v84);
          v88 = type metadata accessor for CamOutput();
          (*(*(v88 - 8) + 56))(v86, 1, 1, v88);
LABEL_46:
          v127 = v11[282];
          v128 = v11[281];
          v129 = v11[280];
          v130 = v11[277];
          v131 = v11[276];
          v132 = v11;
          v133 = v11[275];
          v134 = v132[274];
          v135 = v132[273];
          v136 = v132[272];
          v145 = v132[269];
          v146 = v132[266];
          v147 = v132[265];
          v148 = v132[264];
          v149 = v132[263];
          v150 = v132[262];
          v151 = v132[261];
          v152 = v132[260];
          v153 = v132[259];
          v154 = v132[258];
          v156 = v132[257];
          v158 = v132[256];
          v160 = v132[255];
          v162 = v132[254];
          v164 = v132[253];
          v166 = v132[252];
          v169 = v132[250];
          v172 = v132[249];
          v175 = v132[246];
          v180 = v132[245];
          v186 = v132[244];
          v192 = v132[241];
          v194 = v132[238];
          _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(0);
          _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(0);

          v137 = v132[1];

          return v137();
        }

        v32 = v11[243];
        v33 = v11[237];
        v183 = *(v33 + 16);
        v34 = v11[230] + ((*(v33 + 80) + 32) & ~*(v33 + 80));
        v177 = *(v33 + 72);
        v35 = (v33 + 8);
        v36 = MEMORY[0x1E69E7CC0];
        v171 = *(v30 + 16);
        do
        {
          v37 = v11[262];
          v38 = v11[244];
          v39 = v11[238];
          v40 = v11[236];
          v41 = v11[229];
          v183(v39, v34, v40);
          v42 = type metadata accessor for ActionParaphrase();
          (*(*(v42 - 8) + 56))(v37, 1, 1, v42);
          RankedAction.toPluginAction(withSpeechPackage:withParaphrase:)(v41, v37, v38);
          outlined destroy of ReferenceResolutionClientProtocol?(v37, &_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
          (*v35)(v39, v40);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36[2] + 1, 1, v36);
          }

          v44 = v36[2];
          v43 = v36[3];
          v11 = v193;
          if (v44 >= v43 >> 1)
          {
            v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v43 > 1, v44 + 1, 1, v36);
          }

          v45 = *(v193 + 1952);
          v46 = *(v193 + 1936);
          v36[2] = v44 + 1;
          (*(v32 + 32))(v36 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v44, v45, v46);
          v34 += v177;
          --v31;
        }

        while (v31);
        v61 = *(v193 + 2288);
        v62 = *(v193 + 1840);

        v63 = Logger.logObject.getter();
        v64 = static os_log_type_t.debug.getter();

        v65 = os_log_type_enabled(v63, v64);
        v189 = *(v193 + 2272);
        v66 = *(v193 + 2256);
        v67 = *(v193 + 2248);
        v68 = *(v193 + 2232);
        v69 = *(v193 + 2224);
        v70 = *(v193 + 2200);
        if (v65)
        {
          v71 = *(v193 + 1936);
          v184 = *(v193 + 2248);
          v72 = *(v193 + 1840);
          v73 = swift_slowAlloc();
          v178 = v70;
          v74 = swift_slowAlloc();
          v195 = v74;
          *v73 = 134218242;
          *(v73 + 4) = v171;

          *(v73 + 12) = 2080;
          v75 = MEMORY[0x1E12A16D0](v36, v71);
          v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v76, &v195);

          *(v73 + 14) = v77;
          _os_log_impl(&dword_1DC659000, v63, v64, "CamBridge: Converted %ld rankedActions to %s", v73, 0x16u);
          __swift_destroy_boxed_opaque_existential_1Tm(v74);
          MEMORY[0x1E12A2F50](v74, -1, -1);
          v78 = v73;
          v11 = v193;
          MEMORY[0x1E12A2F50](v78, -1, -1);

          outlined destroy of ReferenceResolutionClientProtocol?(v178, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
          v79 = *(v68 + 8);
          v79(v184, v69);
        }

        else
        {
          v89 = *(v193 + 1840);

          outlined destroy of ReferenceResolutionClientProtocol?(v70, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
          v79 = *(v68 + 8);
          v79(v67, v69);
        }

        v79(v66, v69);
        v57 = v11[211];
        if (!v36[2])
        {
          v101 = type metadata accessor for CamOutput();
          (*(*(v101 - 8) + 56))(v57, 1, 1, v101);

          goto LABEL_46;
        }

        *v57 = v36;
        v60 = type metadata accessor for CamOutput();
      }

      else
      {
        v47 = v11[284];
        v48 = v11[282];
        v49 = v11[281];
        v50 = v11[279];
        v51 = v11[278];
        v52 = v11[275];
        v53 = v11[273];
        v54 = v11[241];
        v55 = *(v193 + 1920);
        v56 = *(v193 + 1912);
        v57 = *(v193 + 1688);

        outlined destroy of ReferenceResolutionClientProtocol?(v52, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
        v58 = *(v50 + 8);
        v58(v49, v51);
        v58(v48, v51);
        v59 = *(v55 + 32);
        v59(v54, v53, v56);
        v59(v57, v54, v56);
        v11 = v193;
        v60 = type metadata accessor for CamOutput();
      }

      swift_storeEnumTagMultiPayload();
      (*(*(v60 - 8) + 56))(v57, 0, 1, v60);
      goto LABEL_46;
    }
  }

  else
  {
    *(v193 + 1440) = &type metadata for AmbiguityFeatureFlags;
    *(v193 + 1448) = lazy protocol witness table accessor for type AmbiguityFeatureFlags and conformance AmbiguityFeatureFlags();
    *(v193 + 1416) = 1;
    v102 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm((v193 + 1416));
    if ((v102 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  v103 = Logger.logObject.getter();
  v104 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v103, v104))
  {
    v105 = swift_slowAlloc();
    *v105 = 0;
    _os_log_impl(&dword_1DC659000, v103, v104, "CamBridge: Probing actions for input paraphrases", v105, 2u);
    MEMORY[0x1E12A2F50](v105, -1, -1);
  }

  v174 = *(v193 + 2008);
  v179 = *(v193 + 2088);
  v106 = *(v193 + 2000);
  v185 = *(v193 + 1992);
  v190 = *(v193 + 2080);
  v168 = *(v193 + 1984);
  v107 = *(v193 + 1976);
  v108 = *(v193 + 1880);
  v109 = *(v193 + 1856);
  v110 = *(v193 + 1848);
  v111 = *(v193 + 1840);

  outlined init with copy of ConversationHelperInput(v110, v106, type metadata accessor for ConversationHelperInput);
  v112 = (*(v107 + 80) + 40) & ~*(v107 + 80);
  v113 = swift_allocObject();
  v113[2] = v108;
  v113[3] = v111;
  v113[4] = v109;
  outlined init with take of ConversationHelperInput(v106, v113 + v112, type metadata accessor for ConversationHelperInput);
  v114 = swift_allocObject();
  *(v193 + 2344) = v114;
  *(v114 + 16) = &async function pointer to partial apply for implicit closure #2 in CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:);
  *(v114 + 24) = v113;

  swift_asyncLet_begin();
  outlined init with copy of ConversationHelperInput(v110, v185, type metadata accessor for ConversationHelperInput);
  v115 = swift_allocObject();
  v115[2] = v108;
  v115[3] = v111;
  v115[4] = v109;
  outlined init with take of ConversationHelperInput(v185, v115 + v112, type metadata accessor for ConversationHelperInput);
  v116 = swift_allocObject();
  *(v193 + 2352) = v116;
  *(v116 + 16) = &async function pointer to partial apply for implicit closure #3 in CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:);
  *(v116 + 24) = v115;

  swift_asyncLet_begin();
  v117 = *(v193 + 2088);

  return MEMORY[0x1EEE6DEB8](v193 + 16, v117, CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:), v193 + 1296);
}

{
  outlined init with copy of ConversationHelperInput(v0[261], v0[259], type metadata accessor for ParaphraseProbeResult);
  v1 = v0[260];

  return MEMORY[0x1EEE6DEB8](v0 + 82, v1, CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:), v0 + 182);
}

{
  return MEMORY[0x1EEE6DFA0](CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:), *(v0 + 2264), 0);
}

{
  v66 = v0;
  v1 = v0[286];
  v2 = v0[259];
  v3 = v0[257];
  outlined init with copy of ConversationHelperInput(v0[260], v0[258], type metadata accessor for ParaphraseProbeResult);
  outlined init with copy of ConversationHelperInput(v2, v3, type metadata accessor for ParaphraseProbeResult);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[257];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v65 = v9;
    *v8 = 136315138;
    v10 = ParaphraseProbeResult.description.getter();
    v12 = v11;
    outlined destroy of ParaphraseProbeResult(v7, type metadata accessor for ParaphraseProbeResult);
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v65);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1DC659000, v4, v5, "CamBridge: ActionParaphrase by action 1 %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1E12A2F50](v9, -1, -1);
    MEMORY[0x1E12A2F50](v8, -1, -1);
  }

  else
  {

    outlined destroy of ParaphraseProbeResult(v7, type metadata accessor for ParaphraseProbeResult);
  }

  v14 = v0[286];
  outlined init with copy of ConversationHelperInput(v0[258], v0[256], type metadata accessor for ParaphraseProbeResult);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  v17 = os_log_type_enabled(v15, v16);
  v18 = v0[256];
  if (v17)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v65 = v20;
    *v19 = 136315138;
    v21 = ParaphraseProbeResult.description.getter();
    v23 = v22;
    outlined destroy of ParaphraseProbeResult(v18, type metadata accessor for ParaphraseProbeResult);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v65);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_1DC659000, v15, v16, "CamBridge: ActionParaphrase by action 2 %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x1E12A2F50](v20, -1, -1);
    MEMORY[0x1E12A2F50](v19, -1, -1);
  }

  else
  {

    outlined destroy of ParaphraseProbeResult(v18, type metadata accessor for ParaphraseProbeResult);
  }

  v25 = v0[255];
  outlined init with copy of ConversationHelperInput(v0[259], v25, type metadata accessor for ParaphraseProbeResult);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseV06actionE0_tMd, &_s11SiriKitFlow16ActionParaphraseV06actionE0_tMR);
  v27 = *(*(v26 - 8) + 48);
  v28 = v27(v25, 2, v26);
  outlined destroy of ParaphraseProbeResult(v25, type metadata accessor for ParaphraseProbeResult);
  if (v28 == 2)
  {
    v29 = v0[286];
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1DC659000, v30, v31, "CamBridge: action 1 is a dead end, avoiding to disambiguate", v32, 2u);
      MEMORY[0x1E12A2F50](v32, -1, -1);
    }

    v33 = v0[259];
    v34 = v0[258];

    outlined destroy of ParaphraseProbeResult(v34, type metadata accessor for ParaphraseProbeResult);
    outlined destroy of ParaphraseProbeResult(v33, type metadata accessor for ParaphraseProbeResult);
    v35 = CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:);
    v36 = v0[260];
    v37 = v0 + 82;
    v38 = v0 + 218;
  }

  else
  {
    v39 = v0[254];
    outlined init with copy of ConversationHelperInput(v0[258], v39, type metadata accessor for ParaphraseProbeResult);
    if (v27(v39, 2, v26) == 2)
    {
      v40 = v0[286];
      outlined destroy of ParaphraseProbeResult(v0[254], type metadata accessor for ParaphraseProbeResult);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_1DC659000, v41, v42, "CamBridge: action 2 is a dead end, avoiding to disambiguate", v43, 2u);
        MEMORY[0x1E12A2F50](v43, -1, -1);
      }

      v44 = v0[259];
      v45 = v0[258];

      outlined destroy of ParaphraseProbeResult(v45, type metadata accessor for ParaphraseProbeResult);
      outlined destroy of ParaphraseProbeResult(v44, type metadata accessor for ParaphraseProbeResult);
      v35 = CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:);
      v36 = v0[260];
      v37 = v0 + 82;
      v38 = v0 + 206;
    }

    else
    {
      v46 = v0[266];
      v47 = v0[259];
      v48 = v0[254];
      v49 = v0[253];
      outlined destroy of ReferenceResolutionClientProtocol?(v0[265], &_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v46, &_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
      outlined destroy of ParaphraseProbeResult(v48, type metadata accessor for ParaphraseProbeResult);
      outlined init with take of ConversationHelperInput(v47, v49, type metadata accessor for ParaphraseProbeResult);
      v50 = v27(v49, 2, v26);
      v51 = v0[292];
      v52 = v0[291];
      if (v50)
      {
        v53 = v0[253];
        v52(v0[264], 1, 1, v0[289]);
        outlined destroy of ParaphraseProbeResult(v53, type metadata accessor for ParaphraseProbeResult);
      }

      else
      {
        v54 = v0[289];
        v55 = v0[264];
        (*(v0[290] + 32))(v55, v0[253], v54);
        v52(v55, 0, 1, v54);
      }

      v56 = v0[258];
      v57 = v0[252];
      outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v0[264], v0[266], &_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
      outlined init with take of ConversationHelperInput(v56, v57, type metadata accessor for ParaphraseProbeResult);
      v58 = v27(v57, 2, v26);
      v59 = v0[292];
      v60 = v0[291];
      if (v58)
      {
        v61 = v0[252];
        v60(v0[263], 1, 1, v0[289]);
        outlined destroy of ParaphraseProbeResult(v61, type metadata accessor for ParaphraseProbeResult);
      }

      else
      {
        v62 = v0[289];
        v63 = v0[263];
        (*(v0[290] + 32))(v63, v0[252], v62);
        v60(v63, 0, 1, v62);
      }

      outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v0[263], v0[265], &_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
      v35 = CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:);
      v36 = v0[260];
      v37 = v0 + 82;
      v38 = v0 + 190;
    }
  }

  return MEMORY[0x1EEE6DEB0](v37, v36, v35, v38);
}

{
  return MEMORY[0x1EEE6DFA0](CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:), *(v0 + 2264), 0);
}

{
  return MEMORY[0x1EEE6DEB0](v0 + 16, *(v0 + 2088), CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:), v0 + 1792);
}

{
  return MEMORY[0x1EEE6DFA0](CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:), *(v0 + 2264), 0);
}

{
  return MEMORY[0x1EEE6DFA0](CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:), *(v0 + 2264), 0);
}

{
  return MEMORY[0x1EEE6DEB0](v0 + 16, *(v0 + 2088), CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:), v0 + 1696);
}

{
  return MEMORY[0x1EEE6DFA0](CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:), *(v0 + 2264), 0);
}

{
  v112 = v0;
  v1 = v0[283];
  v2 = v0[266];
  v3 = v0[265];

  outlined destroy of ReferenceResolutionClientProtocol?(v3, &_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v2, &_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
  v97 = v0[294];
  v96 = v0[293];
  v4 = v0[273];
  v5 = v0[240];
  v6 = v0[239];
  outlined init with copy of ReferenceResolutionClientProtocol?(v0[275], v4, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  if ((*(v5 + 48))(v4, 1, v6) != 1)
  {
    v23 = v0[284];
    v24 = v0[282];
    v25 = v0[281];
    v26 = v0[279];
    v27 = v0[278];
    v28 = v0[275];
    v108 = v0[273];
    v29 = v0[241];
    v30 = v0[240];
    v31 = v0[239];
    v32 = v0[211];

    outlined destroy of ReferenceResolutionClientProtocol?(v28, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    v33 = *(v26 + 8);
    v33(v25, v27);
    v33(v24, v27);
    v34 = *(v30 + 32);
    v34(v29, v108, v31);
    v34(v32, v29, v31);
    v35 = type metadata accessor for CamOutput();
LABEL_17:
    swift_storeEnumTagMultiPayload();
    (*(*(v35 - 8) + 56))(v32, 0, 1, v35);
    goto LABEL_18;
  }

  v7 = v0[230];
  outlined destroy of ReferenceResolutionClientProtocol?(v0[273], &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v8 = *(v7 + 16);
  if (!v8)
  {
    v55 = v0[284];
    v56 = v0[282];
    v57 = v0[281];
    v58 = v0[279];
    v59 = v0[278];
    v60 = v0[275];
    v61 = v0[211];

    outlined destroy of ReferenceResolutionClientProtocol?(v60, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    v62 = *(v58 + 8);
    v62(v57, v59);
    v62(v56, v59);
    v63 = type metadata accessor for CamOutput();
    (*(*(v63 - 8) + 56))(v61, 1, 1, v63);
    goto LABEL_18;
  }

  v9 = v0[243];
  v10 = v0[237];
  v105 = *(v10 + 16);
  v11 = v0[230] + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v99 = (v10 + 8);
  v102 = *(v10 + 72);
  v12 = MEMORY[0x1E69E7CC0];
  v94 = *(v7 + 16);
  do
  {
    v13 = v0[262];
    v14 = v0[244];
    v15 = v0[238];
    v16 = v0[236];
    v17 = v0[229];
    v105(v15, v11, v16);
    v18 = type metadata accessor for ActionParaphrase();
    (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
    RankedAction.toPluginAction(withSpeechPackage:withParaphrase:)(v17, v13, v14);
    outlined destroy of ReferenceResolutionClientProtocol?(v13, &_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
    (*v99)(v15, v16);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12[2] + 1, 1, v12);
    }

    v20 = v12[2];
    v19 = v12[3];
    if (v20 >= v19 >> 1)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v19 > 1, v20 + 1, 1, v12);
    }

    v21 = v0[244];
    v22 = v0[242];
    v12[2] = v20 + 1;
    (*(v9 + 32))(v12 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v20, v21, v22);
    v11 += v102;
    --v8;
  }

  while (v8);
  v36 = v0[286];
  v37 = v0[230];

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();

  v40 = os_log_type_enabled(v38, v39);
  v109 = v0[284];
  v41 = v0[282];
  v42 = v0[281];
  v43 = v0[279];
  v44 = v0[278];
  v45 = v0[275];
  if (v40)
  {
    v46 = v0[242];
    v106 = v0[281];
    v47 = v0[230];
    v100 = v0[275];
    v48 = swift_slowAlloc();
    v103 = v41;
    v49 = swift_slowAlloc();
    v111 = v49;
    *v48 = 134218242;
    *(v48 + 4) = v94;

    *(v48 + 12) = 2080;
    v50 = MEMORY[0x1E12A16D0](v12, v46);
    v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, &v111);

    *(v48 + 14) = v52;
    _os_log_impl(&dword_1DC659000, v38, v39, "CamBridge: Converted %ld rankedActions to %s", v48, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
    MEMORY[0x1E12A2F50](v49, -1, -1);
    MEMORY[0x1E12A2F50](v48, -1, -1);

    outlined destroy of ReferenceResolutionClientProtocol?(v100, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    v53 = *(v43 + 8);
    v53(v106, v44);
    v54 = v103;
  }

  else
  {
    v64 = v0[230];

    outlined destroy of ReferenceResolutionClientProtocol?(v45, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    v53 = *(v43 + 8);
    v53(v42, v44);
    v54 = v41;
  }

  v53(v54, v44);
  v32 = v0[211];
  if (v12[2])
  {
    *v32 = v12;
    v35 = type metadata accessor for CamOutput();
    goto LABEL_17;
  }

  v76 = type metadata accessor for CamOutput();
  (*(*(v76 - 8) + 56))(v32, 1, 1, v76);

LABEL_18:
  v65 = v0[282];
  v66 = v0[281];
  v67 = v0[280];
  v68 = v0[277];
  v69 = v0[276];
  v70 = v0[275];
  v71 = v0[274];
  v72 = v0[273];
  v73 = v0[272];
  v77 = v0[269];
  v78 = v0[266];
  v79 = v0[265];
  v80 = v0[264];
  v81 = v0[263];
  v82 = v0[262];
  v83 = v0[261];
  v84 = v0[260];
  v85 = v0[259];
  v86 = v0[258];
  v87 = v0[257];
  v88 = v0[256];
  v89 = v0[255];
  v90 = v0[254];
  v91 = v0[253];
  v92 = v0[252];
  v93 = v0[250];
  v95 = v0[249];
  v98 = v0[246];
  v101 = v0[245];
  v104 = v0[244];
  v107 = v0[241];
  v110 = v0[238];
  _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(&_s14SiriKitRuntime21ParaphraseProbeResultOIegHr_ACs5Error_pIegHTrzo_TRTATu);
  _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(&_s14SiriKitRuntime21ParaphraseProbeResultOIegHr_ACs5Error_pIegHTrzo_TRTA_26Tu);

  v74 = v0[1];

  return v74();
}

{
  return MEMORY[0x1EEE6DFA0](CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:), *(v0 + 2264), 0);
}

{
  return MEMORY[0x1EEE6DEB0](v0 + 16, *(v0 + 2088), CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:), v0 + 1584);
}

{
  return MEMORY[0x1EEE6DFA0](CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:), *(v0 + 2264), 0);
}

{
  v140 = v0;
  v1 = *(v0 + 2264);

  v137 = *(v0 + 2344);
  v138 = *(v0 + 2352);
  v2 = *(*(v0 + 1896) + 80);
  v3 = *(v0 + 1840) + ((v2 + 32) & ~v2);
  RankedAction.toPluginAction(withSpeechPackage:withParaphrase:)(*(v0 + 1832), *(v0 + 2128), *(v0 + 1968));
  v4 = PluginAction.serialize()();
  v133 = v5;
  v6 = *(v0 + 2120);
  v7 = *(v0 + 1960);
  v8 = *(v0 + 1896);
  v9 = *(v0 + 1832);
  v10 = *(*(v0 + 1944) + 8);
  v10(*(v0 + 1968), *(v0 + 1936));
  v11 = v3 + *(v8 + 72);
  RankedAction.toPluginAction(withSpeechPackage:withParaphrase:)(v9, v6, v7);
  v12 = PluginAction.serialize()();
  v126 = *(v0 + 2296);
  v130 = *(v0 + 2304);
  v122 = *(v0 + 2200);
  v24 = *(v0 + 2168);
  v109 = *(v0 + 2160);
  v105 = *(v0 + 2176);
  v107 = *(v0 + 2152);
  v25 = *(v0 + 2144);
  v111 = *(v0 + 2136);
  v113 = *(v0 + 2192);
  v115 = *(v0 + 2120);
  v117 = *(v0 + 2128);
  v120 = *(v0 + 1912);
  v26 = v12;
  v28 = v27;
  v10(*(v0 + 1960), *(v0 + 1936));
  static CamDirectInvocationIdentifiers.disambiguateTopTwo.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DCA66060;
  *(inited + 32) = 1936750952;
  *(inited + 40) = 0xE400000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataVGMR);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1DCA65720;
  *(v30 + 32) = v4;
  *(v30 + 40) = v133;
  *(v30 + 48) = v26;
  *(v30 + 56) = v28;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
  *(inited + 48) = v30;
  outlined copy of Data._Representation(v4, v133);
  outlined copy of Data._Representation(v26, v28);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of ReferenceResolutionClientProtocol?(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
  Parse.DirectInvocation.init(identifier:userData:)();
  (*(v24 + 16))(v107, v105, v109);
  (*(v25 + 104))(v107, *MEMORY[0x1E69D0158], v111);
  Input.init(parse:)();
  outlined consume of Data._Representation(v26, v28);
  outlined consume of Data._Representation(v4, v133);
  (*(v24 + 8))(v105, v109);
  outlined destroy of ReferenceResolutionClientProtocol?(v115, &_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v117, &_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v122, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v126(v113, 0, 1, v120);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v113, v122, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v31 = *(v0 + 2184);
  v32 = *(v0 + 1920);
  v33 = *(v0 + 1912);
  outlined init with copy of ReferenceResolutionClientProtocol?(*(v0 + 2200), v31, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  if ((*(v32 + 48))(v31, 1, v33) != 1)
  {
    v50 = *(v0 + 2272);
    v51 = *(v0 + 2256);
    v52 = *(v0 + 2248);
    v53 = *(v0 + 2232);
    v54 = *(v0 + 2224);
    v55 = *(v0 + 2200);
    v135 = *(v0 + 2184);
    v56 = *(v0 + 1928);
    v57 = *(v0 + 1920);
    v58 = *(v0 + 1912);
    v59 = *(v0 + 1688);

    outlined destroy of ReferenceResolutionClientProtocol?(v55, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    v60 = *(v53 + 8);
    v60(v52, v54);
    v60(v51, v54);
    v61 = *(v57 + 32);
    v61(v56, v135, v58);
    v61(v59, v56, v58);
    v62 = type metadata accessor for CamOutput();
LABEL_21:
    swift_storeEnumTagMultiPayload();
    (*(*(v62 - 8) + 56))(v59, 0, 1, v62);
    goto LABEL_2;
  }

  v34 = *(v0 + 1840);
  outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 2184), &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v35 = *(v34 + 16);
  if (!v35)
  {
    v82 = *(v0 + 2272);
    v83 = *(v0 + 2256);
    v84 = *(v0 + 2248);
    v85 = *(v0 + 2232);
    v86 = *(v0 + 2224);
    v87 = *(v0 + 2200);
    v88 = *(v0 + 1688);

    outlined destroy of ReferenceResolutionClientProtocol?(v87, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    v89 = *(v85 + 8);
    v89(v84, v86);
    v89(v83, v86);
    v90 = type metadata accessor for CamOutput();
    (*(*(v90 - 8) + 56))(v88, 1, 1, v90);
    goto LABEL_2;
  }

  v36 = *(v0 + 1944);
  v37 = *(v0 + 1896);
  v131 = *(v37 + 16);
  v38 = *(v0 + 1840) + ((*(v37 + 80) + 32) & ~*(v37 + 80));
  v123 = (v37 + 8);
  v127 = *(v37 + 72);
  v39 = MEMORY[0x1E69E7CC0];
  v118 = *(v34 + 16);
  do
  {
    v40 = *(v0 + 2096);
    v41 = *(v0 + 1952);
    v42 = *(v0 + 1904);
    v43 = *(v0 + 1888);
    v44 = *(v0 + 1832);
    v131(v42, v38, v43);
    v45 = type metadata accessor for ActionParaphrase();
    (*(*(v45 - 8) + 56))(v40, 1, 1, v45);
    RankedAction.toPluginAction(withSpeechPackage:withParaphrase:)(v44, v40, v41);
    outlined destroy of ReferenceResolutionClientProtocol?(v40, &_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
    (*v123)(v42, v43);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v39[2] + 1, 1, v39);
    }

    v47 = v39[2];
    v46 = v39[3];
    if (v47 >= v46 >> 1)
    {
      v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v46 > 1, v47 + 1, 1, v39);
    }

    v48 = *(v0 + 1952);
    v49 = *(v0 + 1936);
    v39[2] = v47 + 1;
    (*(v36 + 32))(v39 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v47, v48, v49);
    v38 += v127;
    --v35;
  }

  while (v35);
  v63 = *(v0 + 2288);
  v64 = *(v0 + 1840);

  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.debug.getter();

  v67 = os_log_type_enabled(v65, v66);
  v136 = *(v0 + 2272);
  v68 = *(v0 + 2256);
  v69 = *(v0 + 2248);
  v70 = *(v0 + 2232);
  v71 = *(v0 + 2224);
  v72 = *(v0 + 2200);
  if (v67)
  {
    v73 = *(v0 + 1936);
    v132 = *(v0 + 2248);
    v74 = *(v0 + 1840);
    v124 = *(v0 + 2200);
    v75 = swift_slowAlloc();
    v128 = v68;
    v76 = swift_slowAlloc();
    v139 = v76;
    *v75 = 134218242;
    *(v75 + 4) = v118;

    *(v75 + 12) = 2080;
    v77 = MEMORY[0x1E12A16D0](v39, v73);
    v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v78, &v139);

    *(v75 + 14) = v79;
    _os_log_impl(&dword_1DC659000, v65, v66, "CamBridge: Converted %ld rankedActions to %s", v75, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v76);
    MEMORY[0x1E12A2F50](v76, -1, -1);
    MEMORY[0x1E12A2F50](v75, -1, -1);

    outlined destroy of ReferenceResolutionClientProtocol?(v124, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    v80 = *(v70 + 8);
    v80(v132, v71);
    v81 = v128;
  }

  else
  {
    v91 = *(v0 + 1840);

    outlined destroy of ReferenceResolutionClientProtocol?(v72, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    v80 = *(v70 + 8);
    v80(v69, v71);
    v81 = v68;
  }

  v80(v81, v71);
  v59 = *(v0 + 1688);
  if (v39[2])
  {
    *v59 = v39;
    v62 = type metadata accessor for CamOutput();
    goto LABEL_21;
  }

  v92 = type metadata accessor for CamOutput();
  (*(*(v92 - 8) + 56))(v59, 1, 1, v92);

LABEL_2:
  v13 = *(v0 + 2256);
  v14 = *(v0 + 2248);
  v15 = *(v0 + 2240);
  v16 = *(v0 + 2216);
  v17 = *(v0 + 2208);
  v18 = *(v0 + 2200);
  v19 = *(v0 + 2192);
  v20 = *(v0 + 2184);
  v21 = *(v0 + 2176);
  v93 = *(v0 + 2152);
  v94 = *(v0 + 2128);
  v95 = *(v0 + 2120);
  v96 = *(v0 + 2112);
  v97 = *(v0 + 2104);
  v98 = *(v0 + 2096);
  v99 = *(v0 + 2088);
  v100 = *(v0 + 2080);
  v101 = *(v0 + 2072);
  v102 = *(v0 + 2064);
  v103 = *(v0 + 2056);
  v104 = *(v0 + 2048);
  v106 = *(v0 + 2040);
  v108 = *(v0 + 2032);
  v110 = *(v0 + 2024);
  v112 = *(v0 + 2016);
  v114 = *(v0 + 2000);
  v116 = *(v0 + 1992);
  v119 = *(v0 + 1968);
  v121 = *(v0 + 1960);
  v125 = *(v0 + 1952);
  v129 = *(v0 + 1928);
  v134 = *(v0 + 1904);
  _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(&_s14SiriKitRuntime21ParaphraseProbeResultOIegHr_ACs5Error_pIegHTrzo_TRTATu);
  _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(&_s14SiriKitRuntime21ParaphraseProbeResultOIegHr_ACs5Error_pIegHTrzo_TRTA_26Tu);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:)(char a1)
{
  v2 = *(*v1 + 2280);
  v3 = *(*v1 + 2264);
  v5 = *v1;
  *(*v1 + 2360) = a1;

  return MEMORY[0x1EEE6DFA0](CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:), v3, 0);
}

uint64_t implicit closure #2 in CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();
  v7 = type metadata accessor for PluginAction();
  v5[8] = v7;
  v8 = *(v7 - 8);
  v5[9] = v8;
  v9 = *(v8 + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](implicit closure #2 in CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:), 0, 0);
}

void implicit closure #2 in CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:)()
{
  if (*(v0[4] + 16))
  {
    v1 = v0[10];
    v2 = v0[7];
    v3 = *(type metadata accessor for RankedAction() - 8);
    v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v5 = type metadata accessor for ActionParaphrase();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    RankedAction.toPluginAction(withSpeechPackage:withParaphrase:)(0, v2, v1);
    outlined destroy of ReferenceResolutionClientProtocol?(v2, &_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
    v6 = swift_task_alloc();
    v0[11] = v6;
    *v6 = v0;
    v6[1] = implicit closure #2 in CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:);
    v7 = v0[10];
    v8 = v0[5];
    v9 = v0[6];
    v10 = v0[2];
    v11 = v0[3];

    CamBridgeImpl.probePluginActionForActionParaphrase(pluginAction:conversationHelper:conversationHelperInput:)(v10, v7, v8, v9);
  }

  else
  {
    __break(1u);
  }
}

uint64_t implicit closure #2 in CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:)()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 64);
  v5 = *(*v0 + 56);
  v8 = *v0;

  (*(v3 + 8))(v2, v4);

  v6 = *(v8 + 8);

  return v6();
}

uint64_t CamBridgeImpl.probePluginActionForActionParaphrase(pluginAction:conversationHelper:conversationHelperInput:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a1;
  v4[10] = a2;
  v7 = type metadata accessor for PluginAction();
  v4[11] = v7;
  v8 = *(v7 - 8);
  v4[12] = v8;
  v9 = *(v8 + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v10 = type metadata accessor for ConversationParaphraseResult(0);
  v4[15] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4[18] = static MessageBusActor.shared;

  v12 = swift_task_alloc();
  v4[19] = v12;
  *v12 = v4;
  v12[1] = CamBridgeImpl.probePluginActionForActionParaphrase(pluginAction:conversationHelper:conversationHelperInput:);

  return ConversationHelper.loadNewConversation(pluginAction:conversationHelperInput:)(a2, a4);
}

uint64_t CamBridgeImpl.probePluginActionForActionParaphrase(pluginAction:conversationHelper:conversationHelperInput:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 152);
  v5 = *(*v2 + 144);
  v8 = *v2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  if (v1)
  {
    v6 = CamBridgeImpl.probePluginActionForActionParaphrase(pluginAction:conversationHelper:conversationHelperInput:);
  }

  else
  {
    v6 = CamBridgeImpl.probePluginActionForActionParaphrase(pluginAction:conversationHelper:conversationHelperInput:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t CamBridgeImpl.probePluginActionForActionParaphrase(pluginAction:conversationHelper:conversationHelperInput:)()
{
  v1 = v0[20];
  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](CamBridgeImpl.probePluginActionForActionParaphrase(pluginAction:conversationHelper:conversationHelperInput:), v1, 0);
  }

  else
  {
    v2 = v0[18];

    v3 = v0[16];
    v4 = v0[17];
    v6 = v0[13];
    v5 = v0[14];
    v7 = v0[9];
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseV06actionE0_tMd, &_s11SiriKitFlow16ActionParaphraseV06actionE0_tMR);
    (*(*(v8 - 8) + 56))(v7, 2, 2, v8);

    v9 = v0[1];

    return v9();
  }
}

{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = type metadata accessor for Logger();
  v0[22] = __swift_project_value_buffer(v2, static Logger.executor);
  Logger.debugF(file:function:)();
  v3 = v1[19];
  v4 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v3);
  v5 = *(v4 + 8);
  v11 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[23] = v7;
  *v7 = v0;
  v7[1] = CamBridgeImpl.probePluginActionForActionParaphrase(pluginAction:conversationHelper:conversationHelperInput:);
  v8 = v0[17];
  v9 = v0[15];

  return (v11)(v8, &async function pointer to closure #1 in RemoteConversationClient.paraphrase(), 0, v9, v3, v4);
}

{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;
  *(*v1 + 192) = v0;

  v5 = *(v2 + 144);
  if (v0)
  {
    v6 = CamBridgeImpl.probePluginActionForActionParaphrase(pluginAction:conversationHelper:conversationHelperInput:);
  }

  else
  {
    v6 = CamBridgeImpl.probePluginActionForActionParaphrase(pluginAction:conversationHelper:conversationHelperInput:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v41 = v0;
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];

  outlined init with copy of ConversationHelperInput(v2, v3, type metadata accessor for ConversationParaphraseResult);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = v0[22];
    v6 = v0[16];
    v8 = *v6;
    v7 = v6[1];
    (*(v0[12] + 16))(v0[14], v0[10], v0[11]);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[20];
    v13 = v0[17];
    v14 = v0[14];
    v15 = v0[11];
    v16 = v0[12];
    if (v11)
    {
      v37 = v8;
      v17 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v40 = v38;
      *v17 = 136315394;
      _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type PluginAction and conformance PluginAction, MEMORY[0x1E69CFE08]);
      v39 = v13;
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      (*(v16 + 8))(v14, v15);
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v40);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v7, &v40);

      *(v17 + 14) = v22;
      _os_log_impl(&dword_1DC659000, v9, v10, "CamBridge: Received ActionParaphrase for %s with error %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v38, -1, -1);
      MEMORY[0x1E12A2F50](v17, -1, -1);

      v23 = v39;
    }

    else
    {

      (*(v16 + 8))(v14, v15);
      v23 = v13;
    }

    outlined destroy of ParaphraseProbeResult(v23, type metadata accessor for ConversationParaphraseResult);
    v28 = 1;
  }

  else
  {
    v24 = v0[20];
    v25 = v0[16];
    v26 = v0[9];
    outlined destroy of ParaphraseProbeResult(v0[17], type metadata accessor for ConversationParaphraseResult);

    v27 = type metadata accessor for ActionParaphrase();
    (*(*(v27 - 8) + 32))(v26, v25, v27);
    v28 = 0;
  }

  v30 = v0[16];
  v29 = v0[17];
  v32 = v0[13];
  v31 = v0[14];
  v33 = v0[9];
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseV06actionE0_tMd, &_s11SiriKitFlow16ActionParaphraseV06actionE0_tMR);
  (*(*(v34 - 8) + 56))(v33, v28, 2, v34);

  v35 = v0[1];

  return v35();
}

{
  v37 = v0;
  v1 = v0[20];

  v2 = v0[24];
  v3 = v0[18];

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v5 = v0[12];
  v4 = v0[13];
  v7 = v0[10];
  v6 = v0[11];
  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.executor);
  (*(v5 + 16))(v4, v7, v6);
  v9 = v2;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  v12 = os_log_type_enabled(v10, v11);
  v14 = v0[12];
  v13 = v0[13];
  v15 = v0[11];
  if (v12)
  {
    v16 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = v35;
    *v16 = 136315394;
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type PluginAction and conformance PluginAction, MEMORY[0x1E69CFE08]);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v14 + 8))(v13, v15);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v36);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    swift_getErrorValue();
    v22 = v0[5];
    v21 = v0[6];
    v23 = v0[7];
    v24 = Error.localizedDescription.getter();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v36);

    *(v16 + 14) = v26;
    _os_log_impl(&dword_1DC659000, v10, v11, "CamBridge: Did not receive any ActionParaphrase for %s. %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v35, -1, -1);
    MEMORY[0x1E12A2F50](v16, -1, -1);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
  }

  v27 = v0[16];
  v28 = v0[17];
  v30 = v0[13];
  v29 = v0[14];
  v31 = v0[9];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseV06actionE0_tMd, &_s11SiriKitFlow16ActionParaphraseV06actionE0_tMR);
  (*(*(v32 - 8) + 56))(v31, 1, 2, v32);

  v33 = v0[1];

  return v33();
}

{
  v36 = v0;
  v1 = v0[21];
  v2 = v0[18];

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v4 = v0[12];
  v3 = v0[13];
  v6 = v0[10];
  v5 = v0[11];
  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.executor);
  (*(v4 + 16))(v3, v6, v5);
  v8 = v1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[12];
  v12 = v0[13];
  v14 = v0[11];
  if (v11)
  {
    v15 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = v34;
    *v15 = 136315394;
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type PluginAction and conformance PluginAction, MEMORY[0x1E69CFE08]);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v13 + 8))(v12, v14);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v35);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    swift_getErrorValue();
    v21 = v0[5];
    v20 = v0[6];
    v22 = v0[7];
    v23 = Error.localizedDescription.getter();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v35);

    *(v15 + 14) = v25;
    _os_log_impl(&dword_1DC659000, v9, v10, "CamBridge: Did not receive any ActionParaphrase for %s. %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v34, -1, -1);
    MEMORY[0x1E12A2F50](v15, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
  }

  v26 = v0[16];
  v27 = v0[17];
  v29 = v0[13];
  v28 = v0[14];
  v30 = v0[9];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseV06actionE0_tMd, &_s11SiriKitFlow16ActionParaphraseV06actionE0_tMR);
  (*(*(v31 - 8) + 56))(v30, 1, 2, v31);

  v32 = v0[1];

  return v32();
}

uint64_t implicit closure #3 in CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();
  v7 = type metadata accessor for PluginAction();
  v5[8] = v7;
  v8 = *(v7 - 8);
  v5[9] = v8;
  v9 = *(v8 + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](implicit closure #3 in CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:), 0, 0);
}

void implicit closure #3 in CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:)()
{
  v2 = v0[4];
  if (*(v2 + 16) < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v3 = v0[10];
    v4 = v0[7];
    v5 = *(type metadata accessor for RankedAction() - 8);
    v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v7 = v2 + *(v5 + 72);
    v8 = type metadata accessor for ActionParaphrase();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
    RankedAction.toPluginAction(withSpeechPackage:withParaphrase:)(0, v4, v3);
    outlined destroy of ReferenceResolutionClientProtocol?(v4, &_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
    v9 = swift_task_alloc();
    v0[11] = v9;
    *v9 = v0;
    v9[1] = implicit closure #3 in CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:);
    v10 = v0[10];
    v11 = v0[5];
    v12 = v0[6];
    v13 = v0[2];
    v14 = v0[3];

    CamBridgeImpl.probePluginActionForActionParaphrase(pluginAction:conversationHelper:conversationHelperInput:)(v13, v10, v11, v12);
  }
}

uint64_t ParaphraseProbeResult.toActionParaphrase()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ParaphraseProbeResult();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ConversationHelperInput(v2, v7, type metadata accessor for ParaphraseProbeResult);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseV06actionE0_tMd, &_s11SiriKitFlow16ActionParaphraseV06actionE0_tMR);
  v9 = (*(*(v8 - 8) + 48))(v7, 2, v8);
  v10 = type metadata accessor for ActionParaphrase();
  v11 = *(v10 - 8);
  v12 = v11;
  if (v9)
  {
    (*(v11 + 56))(a1, 1, 1, v10);
    return outlined destroy of ParaphraseProbeResult(v7, type metadata accessor for ParaphraseProbeResult);
  }

  else
  {
    (*(v11 + 32))(a1, v7, v10);
    return (*(v12 + 56))(a1, 0, 1, v10);
  }
}

Swift::Void __swiftcall CamBridgeImpl.cancel()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.executor);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1DC659000, v13, v14, "CamBridge: Cancel signal received. Clearing CamBridge State.", v15, 2u);
    MEMORY[0x1E12A2F50](v15, -1, -1);
  }

  v16 = type metadata accessor for UUID();
  v17 = *(*(v16 - 8) + 56);
  v17(v11, 1, 1, v16);
  v17(v8, 1, 1, v16);
  v17(v5, 1, 1, v16);
  v18 = type metadata accessor for CamBridgeState();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  v21 = swift_allocObject();
  *(v21 + 16) = MEMORY[0x1E69E7CC8];
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v11, v21 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_requestLoggingId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v8, v21 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_camLoggingId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v5, v21 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_caarLoggingId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  swift_beginAccess();
  v22 = *(v1 + 240);
  *(v1 + 240) = v21;

  CamBridgeImpl.camBridgeState.didset();
}

uint64_t CamBridgeImpl.commit(rcId:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static MessageBusActor.shared;
  v3[11] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](CamBridgeImpl.commit(rcId:), v4, 0);
}

uint64_t CamBridgeImpl.commit(rcId:)()
{
  v26 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[8];
    v5 = v0[9];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25 = v8;
    *v7 = 136315138;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v25);
    _os_log_impl(&dword_1DC659000, v3, v4, "CamBridge: Commit with rcId: %s.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1E12A2F50](v8, -1, -1);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }

  v9 = v0[9];
  v10 = v0[10];
  v11 = v0[8];
  swift_beginAccess();
  v12 = *(v10 + 240);

  v13._countAndFlagsBits = v11;
  v13._object = v9;
  v14.value = CamBridgeState.getCamAction(rcId:)(v13).value;

  if (v14.value == SiriKitRuntime_ConversationAction_unknownDefault)
  {
    v15 = v0[9];

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v19 = v0[8];
      v18 = v0[9];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v25 = v21;
      *v20 = 136315138;
      *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v18, &v25);
      _os_log_impl(&dword_1DC659000, v16, v17, "CamBridge: Could not find camAction for rcId: %s. Possibly a followup", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x1E12A2F50](v21, -1, -1);
      MEMORY[0x1E12A2F50](v20, -1, -1);
    }

    v14.value = SiriKitRuntime_ConversationAction_executeTopHypothesis;
  }

  v22 = swift_task_alloc();
  v0[12] = v22;
  *v22 = v0;
  v22[1] = CamBridgeImpl.commit(rcId:);
  v23 = v0[10];

  return CamBridgeImpl.commit(action:)(v14.value);
}

{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](CamBridgeImpl.commit(rcId:), v2, 0);
}

{
  v2 = v0[10];
  v1 = v0[11];

  $defer #1 () in CamBridgeImpl.commit(rcId:)(v2);
  v3 = v0[1];

  return v3();
}

uint64_t $defer #1 () in CamBridgeImpl.commit(rcId:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(*(v12 - 8) + 56);
  v13(v11, 1, 1, v12);
  v13(v8, 1, 1, v12);
  v13(v5, 1, 1, v12);
  v14 = type metadata accessor for CamBridgeState();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  *(v17 + 16) = MEMORY[0x1E69E7CC8];
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v11, v17 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_requestLoggingId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v8, v17 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_camLoggingId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v5, v17 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_caarLoggingId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  swift_beginAccess();
  v18 = *(a1 + 240);
  *(a1 + 240) = v17;

  CamBridgeImpl.camBridgeState.didset();
}

uint64_t CamBridgeImpl.commit(action:)(char a1)
{
  *(v2 + 224) = v1;
  *(v2 + 59) = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *(v2 + 232) = static MessageBusActor.shared;

  v3 = swift_task_alloc();
  *(v2 + 240) = v3;
  *v3 = v2;
  v3[1] = CamBridgeImpl.commit(action:);

  return CamBridgeImpl.waitForCamWarmup()();
}

uint64_t CamBridgeImpl.commit(action:)()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 232);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](CamBridgeImpl.commit(action:), v2, 0);
}

{
  v23 = v0;
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);

  swift_beginAccess();
  outlined init with copy of CamBridgeImpl.CamState((v2 + 144), v0 + 16);
  v3 = *(v0 + 57);
  if (v3 == 1)
  {
    outlined init with take of ReferenceResolutionClientProtocol((v0 + 16), v0 + 112);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.executor);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 59);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v22 = v14;
      *v13 = 136315138;
      *(v0 + 58) = v12;
      v15 = String.init<A>(describing:)();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v22);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_1DC659000, v10, v11, "CamBridge: Setting previous cam action to: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1E12A2F50](v14, -1, -1);
      MEMORY[0x1E12A2F50](v13, -1, -1);
    }

    v18 = *(v0 + 224);
    v19 = *(v0 + 59);
    outlined init with copy of ReferenceResolutionClientProtocol(v0 + 112, v0 + 64);
    *(v0 + 104) = v19;
    *(v0 + 105) = 1;
    swift_beginAccess();
    outlined assign with copy of CamBridgeImpl.CamState((v0 + 64), v2 + 144);
    swift_endAccess();
    CamBridgeImpl.camState.didset();
    outlined destroy of CamBridgeImpl.CamState(v0 + 64);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));
  }

  else if (v3 != 3 || *(v0 + 56) || (v4 = vorrq_s8(*(v0 + 24), *(v0 + 40)), *&vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)) | *(v0 + 16)))
  {
    outlined destroy of CamBridgeImpl.CamState(v0 + 16);
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.executor);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1DC659000, v6, v7, "CamBridge: Commit called while CamBridge in uninitialized state. Ignoring.", v8, 2u);
      MEMORY[0x1E12A2F50](v8, -1, -1);
    }
  }

  v20 = *(v0 + 8);

  return v20();
}

void (*specialized Dictionary.subscript.modify(uint64_t *a1))(void *a1)
{
  v2 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = type metadata accessor for UUID();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  if (v2)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v9 = v8;
  v4[6] = v8;
  (*(v7 + 16))();
  v4[7] = specialized Dictionary._Variant.subscript.modify(v4, v9);
  return Dictionary.subscript.modifyspecialized ;
}

void Dictionary.subscript.modifyspecialized (void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

uint64_t *CamBridgeImpl.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  outlined destroy of ReferenceResolutionClientProtocol?((v0 + 7), &_s14SiriKitRuntime13CaarProviding_pSgMd, &_s14SiriKitRuntime13CaarProviding_pSgMR);
  v1 = v0[12];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 13);
  outlined destroy of CamBridgeImpl.CamState((v0 + 18));
  outlined destroy of CamBridgeImpl.CaarState((v0 + 24));
  v2 = v0[30];

  return v0;
}

uint64_t CamBridgeImpl.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  outlined destroy of ReferenceResolutionClientProtocol?((v0 + 7), &_s14SiriKitRuntime13CaarProviding_pSgMd, &_s14SiriKitRuntime13CaarProviding_pSgMR);
  v1 = v0[12];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 13);
  outlined destroy of CamBridgeImpl.CamState((v0 + 18));
  outlined destroy of CamBridgeImpl.CaarState((v0 + 24));
  v2 = v0[30];

  return swift_deallocClassInstance();
}

uint64_t protocol witness for CamBridge.camBridgeState.getter in conformance CamBridgeImpl()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 240);
}

uint64_t protocol witness for CamBridge.action(requestId:camId:rcId:speechPackage:rankedActions:inputOrigin:) in conformance CamBridgeImpl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = *v8;
  v19 = swift_task_alloc();
  *(v9 + 16) = v19;
  *v19 = v9;
  v19[1] = AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:);

  return CamBridgeImpl.action(requestId:camId:rcId:speechPackage:rankedActions:inputOrigin:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t protocol witness for CamBridge.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:) in conformance CamBridgeImpl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *v8;
  v18 = swift_task_alloc();
  *(v9 + 16) = v18;
  *v18 = v9;
  v18[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t protocol witness for CamBridge.commit(rcId:) in conformance CamBridgeImpl(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return CamBridgeImpl.commit(rcId:)(a1, a2);
}

uint64_t protocol witness for CamBridge.commit(action:) in conformance CamBridgeImpl(char a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return CamBridgeImpl.commit(action:)(a1);
}

uint64_t protocol witness for CamBridge.rank(rcId:actions:rankerContext:) in conformance CamBridgeImpl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:);

  return CamBridgeImpl.rank(rcId:actions:rankerContext:)(a1, a2, a3, a4);
}

uint64_t RealCamProvider.provideCamInstance(camEnabledFeatures:)@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CamSingletonProvider();
  result = static CamSingletonProvider.cam(camEnabledFeatures:)();
  if (!v1)
  {
    v4 = type metadata accessor for RealCamWrapper();
    v5 = swift_allocObject();
    result = outlined init with take of ReferenceResolutionClientProtocol(&v6, v5 + 16);
    a1[3] = v4;
    a1[4] = &protocol witness table for RealCamWrapper;
    *a1 = v5;
  }

  return result;
}

uint64_t RealCamWrapper.__allocating_init(wrapping:)(__int128 *a1)
{
  v2 = swift_allocObject();
  outlined init with take of ReferenceResolutionClientProtocol(a1, v2 + 16);
  return v2;
}

uint64_t RealCaarProvider.provideCaarInstance()@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CaarProvider();
  static CaarProvider.caar()();
  v2 = type metadata accessor for RealCaarWrapper();
  v3 = swift_allocObject();
  result = outlined init with take of ReferenceResolutionClientProtocol(&v5, v3 + 16);
  a1[3] = v2;
  a1[4] = &protocol witness table for RealCaarWrapper;
  *a1 = v3;
  return result;
}

uint64_t RealCamWrapper.getCamAction(request:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for CamResponse();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](RealCamWrapper.getCamAction(request:), 0, 0);
}

uint64_t RealCamWrapper.getCamAction(request:)()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  v7 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
  dispatch thunk of Cam.action(request:)();
  CamResponse.camAction.getter();
  (*(v2 + 8))(v1, v4);

  v8 = v0[1];

  return v8();
}

uint64_t protocol witness for CamActionProviding.getCamAction(request:) in conformance RealCamWrapper(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = type metadata accessor for CamResponse();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v8 = *v2;
  v3[6] = v7;
  v3[7] = v8;

  return MEMORY[0x1EEE6DFA0](protocol witness for CamActionProviding.getCamAction(request:) in conformance RealCamWrapper, 0, 0);
}

uint64_t protocol witness for CamActionProviding.getCamAction(request:) in conformance RealCamWrapper()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  v7 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  dispatch thunk of Cam.action(request:)();
  CamResponse.camAction.getter();
  (*(v4 + 8))(v2, v3);

  v8 = v0[1];

  return v8();
}

uint64_t RealCaarWrapper.getCaarRanking(requestId:caarId:rcId:actions:rankerContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](RealCaarWrapper.getCaarRanking(requestId:caarId:rcId:actions:rankerContext:), 0, 0);
}

uint64_t RealCaarWrapper.getCaarRanking(requestId:caarId:rcId:actions:rankerContext:)()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];
  v8 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  v9 = dispatch thunk of Caar.rank(requestId:caarId:rcId:actions:rankerContext:)();
  v10 = v0[1];

  return v10(v9);
}

uint64_t protocol witness for CaarRankingProviding.getCaarRanking(requestId:caarId:rcId:actions:rankerContext:) in conformance RealCaarWrapper(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[6] = a5;
  v7[7] = a6;
  v7[4] = a3;
  v7[5] = a4;
  v7[2] = a1;
  v7[3] = a2;
  v7[8] = *v6;
  return MEMORY[0x1EEE6DFA0](RealCaarWrapper.getCaarRanking(requestId:caarId:rcId:actions:rankerContext:), 0, 0);
}

unint64_t ParaphraseProbeResult.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ActionParaphrase();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ParaphraseProbeResult();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ConversationHelperInput(v1, v10, type metadata accessor for ParaphraseProbeResult);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseV06actionE0_tMd, &_s11SiriKitFlow16ActionParaphraseV06actionE0_tMR);
  v12 = (*(*(v11 - 8) + 48))(v10, 2, v11);
  if (v12)
  {
    if (v12 == 1)
    {
      return 0xD000000000000010;
    }

    else
    {
      return 0xD00000000000001DLL;
    }
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type ActionParaphrase and conformance ActionParaphrase, MEMORY[0x1E69CFE90]);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    (*(v3 + 8))(v6, v2);
    return v14;
  }
}

void (*specialized Dictionary._Variant.subscript.modify(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x68uLL);
  }

  v7 = v6;
  *a1 = v6;
  v8 = type metadata accessor for UUID();
  v7[8] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v7[9] = v9;
  if (v5)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v9 + 64));
  }

  v12 = v11;
  v7[10] = v11;
  v13 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v10 + 16))(v12, a2, v8);
  v7[11] = specialized Dictionary._Variant.asNative.modify(v7);
  v7[12] = specialized _NativeDictionary.subscript.modify(v7 + 4, v12, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

void Dictionary._Variant.subscript.modifyspecialized (uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void (*specialized _NativeDictionary.subscript.modify(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  v8 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x40uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 8) = a2;
  *(v9 + 16) = v4;
  v11 = type metadata accessor for UUID();
  *(v10 + 24) = v11;
  v12 = *(v11 - 8);
  *(v10 + 32) = v12;
  if (v8)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  *(v10 + 40) = v13;
  v14 = *v4;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  *(v10 + 56) = v16 & 1;
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_19;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v23 = v15;
      specialized _NativeDictionary.copy()();
      v15 = v23;
      goto LABEL_14;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a3 & 1);
    v24 = *v4;
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v21 & 1) == (v25 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v10 + 48) = v15;
  if (v21)
  {
    v26 = *(*(*v4 + 56) + 8 * v15);
  }

  else
  {
    v26 = 0;
  }

  *v10 = v26;
  return _NativeDictionary.subscript.modifyspecialized ;
}

void _NativeDictionary.subscript.modifyspecialized (uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 56);
  if (v2)
  {
    v4 = *v1[2];
    v5 = v1[6];
    if ((*a1)[7])
    {
      *(*(v4 + 56) + 8 * v5) = v2;
    }

    else
    {
      v8 = v1[5];
      (*(v1[4] + 16))(v8, v1[1], v1[3]);
      specialized _NativeDictionary._insert(at:key:value:)(v5, v8, v2, v4);
    }
  }

  else if ((*a1)[7])
  {
    v6 = v1[6];
    v7 = *v1[2];
    (*(v1[4] + 8))(*(v7 + 48) + *(v1[4] + 72) * v6, v1[3]);
    specialized _NativeDictionary._delete(at:)(v6, v7);
  }

  v9 = v1[5];
  v10 = *v1;

  free(v9);

  free(v1);
}

uint64_t (*specialized Dictionary._Variant.asNative.modify(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return Dictionary._Variant.asNative.modifyspecialized ;
}

uint64_t specialized CamBridgeImpl.init(forceSupported:camProvider:caarProvider:trialExperimentManager:)(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v39 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v39 - v17;
  v51 = &type metadata for RealCamProvider;
  v52 = &protocol witness table for RealCamProvider;
  v48 = type metadata accessor for TrialExperimentationAssetManager();
  v49 = &protocol witness table for TrialExperimentationAssetManager;
  *&v47 = a3;
  *(a4 + 96) = MEMORY[0x1E69E7CC0];
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  if (v8 != 2)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v44, &_s14SiriKitRuntime13CaarProviding_pSgMd, &_s14SiriKitRuntime13CaarProviding_pSgMR);
    if (a1)
    {
      v27 = 0;
      v28 = *(a2 + 16);
      v44 = *a2;
      v45 = v28;
      v46 = *(a2 + 32);
    }

    else
    {
      outlined destroy of ReferenceResolutionClientProtocol?(a2, &_s14SiriKitRuntime13CaarProviding_pSgMd, &_s14SiriKitRuntime13CaarProviding_pSgMR);
      v44 = 0u;
      v45 = 0u;
      v46 = 0;
      v27 = 1;
    }

    *(a4 + 192) = v27;
    v30 = 0uLL;
    *(a4 + 200) = 0u;
    *(a4 + 216) = 0u;
    *(a4 + 232) = 3;
    *(a4 + 144) = (a1 & 1) == 0;
    goto LABEL_19;
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.executor);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1DC659000, v20, v21, "CamBridge: CAAR is supported on this device", v22, 2u);
    MEMORY[0x1E12A2F50](v22, -1, -1);
  }

  *(a4 + 192) = 0u;
  *(a4 + 224) = 0;
  *(a4 + 208) = 0u;
  *(a4 + 232) = 3;
  outlined destroy of ReferenceResolutionClientProtocol?(&v44, &_s14SiriKitRuntime13CaarProviding_pSgMd, &_s14SiriKitRuntime13CaarProviding_pSgMR);
  *(&v45 + 1) = &type metadata for RealCaarProvider;
  v46 = &protocol witness table for RealCaarProvider;
  swift_beginAccess();
  outlined init with copy of CamBridgeImpl.CaarState((a4 + 192), &v40);
  if (v43 == 3 && v40 == 1)
  {
    v23 = vorrq_s8(v41, v42);
    if (!*&vorr_s8(*v23.i8, *&vextq_s8(v23, v23, 8uLL)))
    {
      outlined destroy of CamBridgeImpl.CaarState(&v40);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_1DC659000, v24, v25, "CamBridge: Marking CAM as unsupported as CAM cannot work without CAAR results", v26, 2u);
        MEMORY[0x1E12A2F50](v26, -1, -1);
      }

      outlined destroy of ReferenceResolutionClientProtocol?(a2, &_s14SiriKitRuntime13CaarProviding_pSgMd, &_s14SiriKitRuntime13CaarProviding_pSgMR);
      goto LABEL_16;
    }
  }

  outlined destroy of CamBridgeImpl.CaarState(&v40);
  v29 = specialized static CamBridgeImpl.isCamSupportedOnThisDevice.getter();
  outlined destroy of ReferenceResolutionClientProtocol?(a2, &_s14SiriKitRuntime13CaarProviding_pSgMd, &_s14SiriKitRuntime13CaarProviding_pSgMR);
  if ((v29 & 1) == 0)
  {
LABEL_16:
    *(a4 + 144) = 1;
    v30 = 0uLL;
LABEL_19:
    *(a4 + 152) = v30;
    *(a4 + 168) = v30;
    *(a4 + 184) = 0;
    goto LABEL_20;
  }

  *(a4 + 169) = 0u;
  *(a4 + 144) = 0u;
  *(a4 + 160) = 0u;
LABEL_20:
  *(a4 + 185) = 3;
  v31 = type metadata accessor for UUID();
  v32 = *(*(v31 - 8) + 56);
  v32(v18, 1, 1, v31);
  v32(v15, 1, 1, v31);
  v32(v12, 1, 1, v31);
  v33 = type metadata accessor for CamBridgeState();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  v36 = swift_allocObject();
  *(v36 + 16) = MEMORY[0x1E69E7CC8];
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v18, v36 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_requestLoggingId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v15, v36 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_camLoggingId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v12, v36 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_caarLoggingId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  *(a4 + 240) = v36;
  outlined init with take of ReferenceResolutionClientProtocol(&v50, a4 + 16);
  v37 = v45;
  *(a4 + 56) = v44;
  *(a4 + 72) = v37;
  *(a4 + 88) = v46;
  outlined init with take of ReferenceResolutionClientProtocol(&v47, a4 + 104);
  return a4;
}

uint64_t specialized CamBridgeImpl.init(forceSupported:camProvider:caarProvider:trialExperimentManager:)(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v49 = a3;
  v16 = a1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v51 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v50 = &v49 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v49 - v23;
  v63 = a6;
  v64 = a8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v62);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_0, a2, a6);
  v60 = a7;
  v61 = a9;
  v26 = __swift_allocate_boxed_opaque_existential_0(&v59);
  (*(*(a7 - 8) + 32))(v26, a4, a7);
  *(a5 + 96) = MEMORY[0x1E69E7CC0];
  v58 = 0;
  v56 = 0u;
  v57 = 0u;
  if (v16 != 2)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v56, &_s14SiriKitRuntime13CaarProviding_pSgMd, &_s14SiriKitRuntime13CaarProviding_pSgMR);
    if (a1)
    {
      v35 = 0;
      v36 = v49[1];
      v56 = *v49;
      v57 = v36;
      v58 = *(v49 + 4);
    }

    else
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v49, &_s14SiriKitRuntime13CaarProviding_pSgMd, &_s14SiriKitRuntime13CaarProviding_pSgMR);
      v56 = 0u;
      v57 = 0u;
      v58 = 0;
      v35 = 1;
    }

    *(a5 + 192) = v35;
    v38 = 0uLL;
    *(a5 + 200) = 0u;
    *(a5 + 216) = 0u;
    *(a5 + 232) = 3;
    *(a5 + 144) = (a1 & 1) == 0;
    goto LABEL_19;
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, static Logger.executor);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_1DC659000, v28, v29, "CamBridge: CAAR is supported on this device", v30, 2u);
    MEMORY[0x1E12A2F50](v30, -1, -1);
  }

  *(a5 + 192) = 0u;
  *(a5 + 224) = 0;
  *(a5 + 208) = 0u;
  *(a5 + 232) = 3;
  outlined destroy of ReferenceResolutionClientProtocol?(&v56, &_s14SiriKitRuntime13CaarProviding_pSgMd, &_s14SiriKitRuntime13CaarProviding_pSgMR);
  *(&v57 + 1) = &type metadata for RealCaarProvider;
  v58 = &protocol witness table for RealCaarProvider;
  swift_beginAccess();
  outlined init with copy of CamBridgeImpl.CaarState((a5 + 192), &v52);
  if (v55 == 3 && v52 == 1)
  {
    v31 = vorrq_s8(v53, v54);
    if (!*&vorr_s8(*v31.i8, *&vextq_s8(v31, v31, 8uLL)))
    {
      outlined destroy of CamBridgeImpl.CaarState(&v52);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_1DC659000, v32, v33, "CamBridge: Marking CAM as unsupported as CAM cannot work without CAAR results", v34, 2u);
        MEMORY[0x1E12A2F50](v34, -1, -1);
      }

      outlined destroy of ReferenceResolutionClientProtocol?(v49, &_s14SiriKitRuntime13CaarProviding_pSgMd, &_s14SiriKitRuntime13CaarProviding_pSgMR);
      goto LABEL_16;
    }
  }

  outlined destroy of CamBridgeImpl.CaarState(&v52);
  v37 = specialized static CamBridgeImpl.isCamSupportedOnThisDevice.getter();
  outlined destroy of ReferenceResolutionClientProtocol?(v49, &_s14SiriKitRuntime13CaarProviding_pSgMd, &_s14SiriKitRuntime13CaarProviding_pSgMR);
  if ((v37 & 1) == 0)
  {
LABEL_16:
    *(a5 + 144) = 1;
    v38 = 0uLL;
LABEL_19:
    *(a5 + 152) = v38;
    *(a5 + 168) = v38;
    *(a5 + 184) = 0;
    goto LABEL_20;
  }

  *(a5 + 169) = 0u;
  *(a5 + 144) = 0u;
  *(a5 + 160) = 0u;
LABEL_20:
  *(a5 + 185) = 3;
  v39 = type metadata accessor for UUID();
  v40 = *(*(v39 - 8) + 56);
  v40(v24, 1, 1, v39);
  v41 = v50;
  v40(v50, 1, 1, v39);
  v42 = v51;
  v40(v51, 1, 1, v39);
  v43 = type metadata accessor for CamBridgeState();
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  v46 = swift_allocObject();
  *(v46 + 16) = MEMORY[0x1E69E7CC8];
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v24, v46 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_requestLoggingId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v41, v46 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_camLoggingId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v42, v46 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_caarLoggingId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  *(a5 + 240) = v46;
  outlined init with take of ReferenceResolutionClientProtocol(&v62, a5 + 16);
  v47 = v57;
  *(a5 + 56) = v56;
  *(a5 + 72) = v47;
  *(a5 + 88) = v58;
  outlined init with take of ReferenceResolutionClientProtocol(&v59, a5 + 104);
  return a5;
}

uint64_t specialized static CamBridgeImpl.collateParses(rcId:rankedActions:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v144 = a2;
  v143 = a1;
  v192 = type metadata accessor for UUID();
  v172 = *(v192 - 8);
  v4 = *(v172 + 8);
  MEMORY[0x1EEE9AC00](v192);
  v186 = (&v141 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v141 - v7);
  MEMORY[0x1EEE9AC00](v9);
  v170 = &v141 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v171 = &v141 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestSgMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v187 = &v141 - v15;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMR);
  v191 = *(v195 - 8);
  v16 = *(v191 + 64);
  MEMORY[0x1EEE9AC00](v195);
  v185 = &v141 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v158 = &v141 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v179 = &v141 - v21;
  v167 = type metadata accessor for Siri_Nlu_External_UserParse();
  v194 = *(v167 - 8);
  v22 = *(v194 + 64);
  MEMORY[0x1EEE9AC00](v167);
  v166 = &v141 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v156 = *(v155 - 8);
  v24 = *(v156 + 64);
  MEMORY[0x1EEE9AC00](v155);
  v154 = &v141 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow21AppShortcutInvocationOSgMd, &_s11SiriKitFlow21AppShortcutInvocationOSgMR);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v169 = &v141 - v28;
  v29 = type metadata accessor for AppShortcutInvocation();
  v183 = *(v29 - 8);
  v30 = *(v183 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v32 = (&v141 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v189 = type metadata accessor for CamParse();
  v160 = *(v189 - 8);
  v33 = *(v160 + 64);
  MEMORY[0x1EEE9AC00](v189);
  v184 = &v141 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v175 = &v141 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v178 = &v141 - v38;
  v39 = type metadata accessor for CamUSOParse();
  v181 = *(v39 - 8);
  v40 = *(v181 + 8);
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v141 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = type metadata accessor for RankedAction();
  v188 = *(v196 - 8);
  v43 = *(v188 + 64);
  MEMORY[0x1EEE9AC00](v196);
  v142 = &v141 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v141 - v46;
  if (one-time initialization token for executor != -1)
  {
    goto LABEL_67;
  }

  while (1)
  {
    v48 = type metadata accessor for Logger();
    v49 = __swift_project_value_buffer(v48, static Logger.executor);

    v147 = v49;
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.debug.getter();
    v52 = os_log_type_enabled(v50, v51);
    v168 = v29;
    v148 = v32;
    v174 = v39;
    v173 = v42;
    if (v52)
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v197 = v54;
      *v53 = 134218242;
      *(v53 + 4) = a3[2];

      *(v53 + 12) = 2080;
      v55 = MEMORY[0x1E12A16D0](a3, v196);
      v32 = a3;
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, &v197);

      *(v53 + 14) = v42;
      _os_log_impl(&dword_1DC659000, v50, v51, "CamBridge: Collating %ld actions %s", v53, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v54);
      MEMORY[0x1E12A2F50](v54, -1, -1);
      MEMORY[0x1E12A2F50](v53, -1, -1);
    }

    else
    {
    }

    v201 = MEMORY[0x1E69E7CC8];
    v202 = MEMORY[0x1E69E7CC0];
    v200 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_SayAEGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v57 = a3[2];
    if (v57)
    {
      v190 = 0x80000001DCA7CC80;
      v193 = *(v188 + 16);
      a3 = (a3 + ((*(v188 + 80) + 32) & ~*(v188 + 80)));
      v182 = *(v188 + 72);
      v177 = (v160 + 88);
      v176 = *MEMORY[0x1E69CE300];
      v164 = (v160 + 8);
      v163 = (v160 + 96);
      v162 = (v181 + 32);
      v161 = (v194 + 8);
      v153 = v156 + 16;
      v152 = v156 + 8;
      v151 = (v183 + 48);
      v146 = (v183 + 32);
      v145 = (v183 + 8);
      v165 = (v181 + 8);
      v149 = (v183 + 56);
      v157 = v160 + 32;
      v183 = v191 + 56;
      v150 = v172 + 32;
      v181 = v172 + 8;
      v194 = v188 + 16;
      v180 = (v188 + 8);
      v159 = v172 + 16;
      (v193)(v47, a3, v196);
      while (1)
      {
        if (RankedAction.flowHandlerId.getter() == 0xD000000000000021 && v190 == v60)
        {
        }

        else
        {
          v61 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v61 & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        v62 = v178;
        RankedAction.parse.getter();
        v63 = v189;
        v64 = (*v177)(v62, v189);
        if (v64 != v176)
        {
          break;
        }

        (*v163)(v62, v63);
        v65 = v173;
        v66 = v174;
        (*v162)(v173, v62, v174);
        v67 = v166;
        v68 = CamUSOParse.userParse.getter();
        v69 = MEMORY[0x1E129C0F0](v68);
        (*v161)(v67, v167);
        if (!*(v69 + 16))
        {
          (*v165)(v65, v66);

          v73 = v169;
          (*v149)(v169, 1, 1, v168);
LABEL_21:
          outlined destroy of ReferenceResolutionClientProtocol?(v73, &_s11SiriKitFlow21AppShortcutInvocationOSgMd, &_s11SiriKitFlow21AppShortcutInvocationOSgMR);
LABEL_22:
          v29 = RankedAction.flowHandlerId.getter();
          v76 = v75;
          goto LABEL_23;
        }

        v70 = v156;
        v71 = v154;
        v72 = v155;
        (*(v156 + 16))(v154, v69 + ((*(v70 + 80) + 32) & ~*(v70 + 80)), v155);

        LOBYTE(v197) = 1;
        v73 = v169;
        Siri_Nlu_External_UserDialogAct.extractAppShortcutInvocation(groupIndex:)();
        (*(v70 + 8))(v71, v72);
        v74 = v168;
        if ((*v151)(v73, 1, v168) == 1)
        {
          (*v165)(v173, v174);
          goto LABEL_21;
        }

        v113 = v148;
        (*v146)(v148, v73, v74);
        v114 = AppShortcutInvocation.actionIdentifier.getter();
        if (!v115)
        {
          (*v145)(v113, v74);
          (*v165)(v173, v174);
          goto LABEL_22;
        }

        v116 = v114;
        v117 = v115;
        v197 = RankedAction.flowHandlerId.getter();
        v198 = v118;
        MEMORY[0x1E12A1580](46, 0xE100000000000000);
        v119 = AppShortcutInvocation.bundleId.getter();
        MEMORY[0x1E12A1580](v119);

        MEMORY[0x1E12A1580](46, 0xE100000000000000);
        MEMORY[0x1E12A1580](v116, v117);

        v29 = v197;
        v76 = v198;
        (*v145)(v113, v74);
        (*v165)(v173, v174);
LABEL_23:
        v32 = v8;

        v77 = v201;
        if (!*(v201 + 2))
        {

LABEL_36:
          v39 = v195;
          v99 = *(v195 + 48);
          v42 = v187;
          (v193)(v187, v47, v196);
          *&v42[v99] = MEMORY[0x1E69E7CC0];
          (*v183)(v42, 0, 1, v39);
          specialized SimpleOrderedDictionary.subscript.setter(v42, v29, v76);
          v8 = v32;
          RankedAction.loggingId.getter();
          v100 = v200;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v197 = v100;
          v102 = specialized __RawDictionaryStorage.find<A>(_:)(v32);
          v104 = *(v100 + 16);
          v105 = (v103 & 1) == 0;
          v106 = __OFADD__(v104, v105);
          v107 = v104 + v105;
          if (v106)
          {
            goto LABEL_65;
          }

          v108 = v103;
          if (*(v100 + 24) >= v107)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_41;
            }

            v39 = v102;
            specialized _NativeDictionary.copy()();
            v102 = v39;
            v110 = v197;
            if (v108)
            {
              goto LABEL_7;
            }

LABEL_42:
            v110[(v102 >> 6) + 8] |= 1 << v102;
            v29 = v102;
            (*(v172 + 2))(v110[6] + *(v172 + 9) * v102, v32, v192);
            *(v110[7] + 8 * v29) = MEMORY[0x1E69E7CC0];
            v111 = v110[2];
            v106 = __OFADD__(v111, 1);
            v112 = v111 + 1;
            if (v106)
            {
              goto LABEL_66;
            }

            v110[2] = v112;
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v107, isUniquelyReferenced_nonNull_native);
            v102 = specialized __RawDictionaryStorage.find<A>(_:)(v32);
            if ((v108 & 1) != (v109 & 1))
            {
              result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return result;
            }

LABEL_41:
            v110 = v197;
            if ((v108 & 1) == 0)
            {
              goto LABEL_42;
            }

LABEL_7:
            v58 = v110[7];
            v59 = *(v58 + 8 * v102);
            *(v58 + 8 * v102) = MEMORY[0x1E69E7CC0];
          }

          (*v181)(v32, v192);
          v200 = v110;
          (*v180)(v47, v196);
          goto LABEL_9;
        }

        v78 = specialized __RawDictionaryStorage.find<A>(_:)(v29, v76);
        v80 = v79;

        if ((v80 & 1) == 0)
        {
          goto LABEL_36;
        }

        v81 = *(v77 + 56) + *(v191 + 72) * v78;
        v82 = v158;
        outlined init with copy of ReferenceResolutionClientProtocol?(v81, v158, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMR);
        v83 = v179;
        outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v82, v179, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMR);
        RankedAction.parse.getter();
        v84 = *(v195 + 48);
        v85 = *(v83 + v84);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v85 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v85[2] + 1, 1, v85);
        }

        v87 = v85[2];
        v86 = v85[3];
        if (v87 >= v86 >> 1)
        {
          v85 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v86 > 1, v87 + 1, 1, v85);
        }

        v85[2] = v87 + 1;
        (*(v160 + 32))(v85 + ((*(v160 + 80) + 32) & ~*(v160 + 80)) + *(v160 + 72) * v87, v175, v189);
        v42 = v179;
        *&v179[v84] = v85;
        v88 = v187;
        outlined init with copy of ReferenceResolutionClientProtocol?(v42, v187, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMR);
        (*v183)(v88, 0, 1, v195);
        specialized SimpleOrderedDictionary.subscript.setter(v88, v29, v76);
        v89 = v171;
        RankedAction.loggingId.getter();
        v91 = specialized Dictionary.subscript.modify(&v197);
        if (*v90)
        {
          v92 = v90;
          RankedAction.loggingId.getter();
          v93 = *v92;
          v94 = swift_isUniquelyReferenced_nonNull_native();
          *v92 = v93;
          v8 = v32;
          if ((v94 & 1) == 0)
          {
            v93 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v93[2] + 1, 1, v93);
            *v92 = v93;
          }

          v96 = v93[2];
          v95 = v93[3];
          if (v96 >= v95 >> 1)
          {
            v93 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v95 > 1, v96 + 1, 1, v93);
            *v92 = v93;
          }

          v93[2] = v96 + 1;
          v42 = v172;
          v97 = v93 + ((v42[80] + 32) & ~v42[80]) + *(v42 + 9) * v96;
          v98 = v192;
          (*(v172 + 4))(v97, v170, v192);
          (v91)(&v197, 0);
          (*(v42 + 1))(v171, v98);
          (*v180)(v47, v196);
          outlined destroy of ReferenceResolutionClientProtocol?(v179, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMR);
        }

        else
        {
          (v91)(&v197, 0);
          (*v181)(v89, v192);
          (*v180)(v47, v196);
          outlined destroy of ReferenceResolutionClientProtocol?(v42, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMR);
          v8 = v32;
        }

LABEL_9:
        a3 = (a3 + v182);
        if (!--v57)
        {
          goto LABEL_50;
        }

        (v193)(v47, a3, v196);
      }

      (*v164)(v62, v63);
      goto LABEL_22;
    }

LABEL_50:
    v120 = Logger.logObject.getter();
    v121 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v120, v121))
    {
      v122 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v197 = v32;
      *v122 = 136315138;
      swift_beginAccess();

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4UUIDVGMd, &_sSay10Foundation4UUIDVGMR);
      _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v123 = Dictionary.description.getter();
      v125 = v124;

      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v123, v125, &v197);

      *(v122 + 4) = v42;
      _os_log_impl(&dword_1DC659000, v120, v121, "CamBridge: Collated action candidates for logging: %s", v122, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      MEMORY[0x1E12A2F50](v32, -1, -1);
      MEMORY[0x1E12A2F50](v122, -1, -1);
    }

    type metadata accessor for ConversationSELFHelper();
    static ConversationSELFHelper.shared.getter();
    swift_beginAccess();
    v126 = v200;

    dispatch thunk of ConversationSELFHelper.emitActionCandidatesCollated(rcId:collatedActions:)();

    v189 = v126;

    v187 = v201;
    v183 = v202;
    v127 = specialized SimpleOrderedDictionary.values()(v201, v202);
    v29 = v127[2];
    v128 = v142;
    if (!v29)
    {
      break;
    }

    v199 = MEMORY[0x1E69E7CC0];
    v47 = v127;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29, 0);
    v129 = v47;
    v39 = 0;
    v8 = v199;
    v193 = (v47 + ((*(v191 + 80) + 32) & ~*(v191 + 80)));
    v192 = v188 + 32;
    v194 = v47;
    v190 = v29;
    a3 = v186;
    while (v39 < *(v129 + 16))
    {
      v130 = v185;
      v32 = v8;
      outlined init with copy of ReferenceResolutionClientProtocol?(&v193[*(v191 + 72) * v39], v185, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMR);
      v131 = *(v130 + *(v195 + 48));
      RankedAction.flowHandlerId.getter();
      RankedAction.parse.getter();
      RankedAction.score.getter();
      RankedAction.loggingId.getter();

      RankedAction.userData.getter();
      RankedAction.init(flowHandlerId:parse:score:loggingId:alternatives:userData:)();
      outlined destroy of ReferenceResolutionClientProtocol?(v130, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMR);
      v199 = v8;
      v47 = v8[2];
      v132 = v8[3];
      v42 = (v47 + 1);
      if (v47 >= v132 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v132 > 1, v47 + 1, 1);
        v8 = v199;
      }

      ++v39;
      v8[2] = v42;
      (*(v188 + 32))(v8 + ((*(v188 + 80) + 32) & ~*(v188 + 80)) + *(v188 + 72) * v47, v128, v196);
      v29 = v190;
      v129 = v194;
      if (v190 == v39)
      {

        goto LABEL_60;
      }
    }

    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    swift_once();
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_60:

  v133 = Logger.logObject.getter();
  v134 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v133, v134))
  {
    v135 = swift_slowAlloc();
    v136 = swift_slowAlloc();
    v199 = v136;
    *v135 = 134218242;
    *(v135 + 4) = v8[2];

    *(v135 + 12) = 2080;
    v137 = MEMORY[0x1E12A16D0](v8, v196);
    v139 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v137, v138, &v199);

    *(v135 + 14) = v139;
    _os_log_impl(&dword_1DC659000, v133, v134, "CamBridge: Collated down to %ld actions %s", v135, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v136);
    MEMORY[0x1E12A2F50](v136, -1, -1);
    MEMORY[0x1E12A2F50](v135, -1, -1);
  }

  else
  {
  }

  return v8;
}

uint64_t specialized static CamBridgeImpl.isCamSupportedOnThisDevice.getter()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  v0 = static CamFeatureFlag.forceEnabled;
  os_unfair_lock_lock((static CamFeatureFlag.forceEnabled + 20));
  v1 = *(v0 + 16);
  if (v1 == 2)
  {
    v21 = &type metadata for CamFeatureFlag;
    v22 = lazy protocol witness table accessor for type CamFeatureFlag and conformance CamFeatureFlag();
    LOBYTE(v1) = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
  }

  os_unfair_lock_unlock((v0 + 20));
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    os_unfair_lock_lock((v0 + 20));
    v7 = *(v0 + 16);
    if (v7 == 2)
    {
      v21 = &type metadata for CamFeatureFlag;
      v22 = lazy protocol witness table accessor for type CamFeatureFlag and conformance CamFeatureFlag();
      LOBYTE(v7) = isFeatureEnabled(_:)();
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
    }

    os_unfair_lock_unlock((v0 + 20));
    if (v7)
    {
      v8 = 3042927;
    }

    else
    {
      v8 = 778462831;
    }

    if (v7)
    {
      v9 = 0xE300000000000000;
    }

    else
    {
      v9 = 0xE400000000000000;
    }

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v19);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_1DC659000, v3, v4, "CamBridge: CAM feature flag is %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1E12A2F50](v6, -1, -1);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  v11 = static os_log_type_t.default.getter();
  v12 = Logger.logObject.getter();
  if (os_log_type_enabled(v12, v11))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20[0] = v14;
    *v13 = 136315138;
    if (v1)
    {
      v15 = 0x6574726F70707573;
    }

    else
    {
      v15 = 0x7070757320746F6ELL;
    }

    if (v1)
    {
      v16 = 0xEA00000000002E64;
    }

    else
    {
      v16 = 0xEE002E646574726FLL;
    }

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v20);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_1DC659000, v12, v11, "CamBridge: CAM is %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x1E12A2F50](v14, -1, -1);
    MEMORY[0x1E12A2F50](v13, -1, -1);
  }

  return v1 & 1;
}

uint64_t partial apply for closure #1 in CamBridgeImpl.asyncWarmUpIfSupported()()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in CamBridgeImpl.asyncWarmUpIfSupported()();
}

uint64_t type metadata accessor for ParaphraseProbeResult()
{
  result = type metadata singleton initialization cache for ParaphraseProbeResult;
  if (!type metadata singleton initialization cache for ParaphraseProbeResult)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t partial apply for implicit closure #2 in CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:)(uint64_t a1)
{
  v4 = *(type metadata accessor for ConversationHelperInput(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return implicit closure #2 in CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:)(a1, v6, v7, v8, v1 + v5);
}

uint64_t _s14SiriKitRuntime21ParaphraseProbeResultOIegHr_ACs5Error_pIegHTrzo_TRTA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return _s14SiriKitRuntime21ParaphraseProbeResultOIegHr_ACs5Error_pIegHTrzo_TR(a1, v5);
}

uint64_t objectdestroy_12Tm()
{
  v1 = type metadata accessor for ConversationHelperInput(0);
  v24 = *(*(v1 - 8) + 80);
  v22 = *(*(v1 - 8) + 64);
  v2 = v0[2];

  v3 = v0[3];

  v4 = v0[4];

  v23 = (v24 + 40) & ~v24;

  v25 = v1;
  v5 = v0 + v23 + *(v1 + 20);
  v6 = *(v5 + 1);

  v7 = *(v5 + 3);

  v8 = type metadata accessor for RemoteConversationTurnData(0);
  v9 = v8[6];
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (!v12(&v5[v9], 1, v10))
  {
    (*(v11 + 8))(&v5[v9], v10);
  }

  v13 = v8[7];
  v14 = type metadata accessor for SessionConfiguration();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(&v5[v13], 1, v14))
  {
    (*(v15 + 8))(&v5[v13], v14);
  }

  v16 = v8[9];
  if (!v12(&v5[v16], 1, v10))
  {
    (*(v11 + 8))(&v5[v16], v10);
  }

  v17 = *&v5[v8[10]];

  v18 = &v5[v8[13]];
  v19 = v18[1];
  if (v19 >> 60 != 15)
  {
    outlined consume of Data._Representation(*v18, v19);
  }

  v20 = *(v0 + v23 + *(v25 + 24));
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, v23 + v22, v24 | 7);
}

uint64_t partial apply for implicit closure #3 in CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:)(uint64_t a1)
{
  v4 = *(type metadata accessor for ConversationHelperInput(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return implicit closure #3 in CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:)(a1, v6, v7, v8, v1 + v5);
}

uint64_t outlined init with take of ConversationHelperInput(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 assignWithTake for CamBridgeImpl.CamState(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return result;
  }

  v3 = *(a1 + 41);
  if (v3 >= 3)
  {
    v3 = *a1 + 3;
  }

  switch(v3)
  {
    case 2u:
      v5 = a1;

      goto LABEL_10;
    case 1u:
      v5 = a1;
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      goto LABEL_10;
    case 0u:
      v4 = *a1;
      v5 = a1;

LABEL_10:
      a1 = v5;
      break;
  }

  v7 = *(a2 + 41);
  if (v7 >= 3)
  {
    v7 = *a2 + 3;
  }

  if (v7 == 2)
  {
    *a1 = *a2;
    *(a1 + 41) = 2;
  }

  else if (v7 == 1)
  {
    v8 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v8;
    result = *(a2 + 25);
    *(a1 + 25) = result;
    *(a1 + 41) = 1;
  }

  else if (v7)
  {
    v9 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v9;
    result = *(a2 + 26);
    *(a1 + 26) = result;
  }

  else
  {
    *a1 = *a2;
    *(a1 + 41) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CamBridgeImpl.CamState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 42))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 41);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CamBridgeImpl.CamState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 26) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for CamBridgeImpl.CamState(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 41) = a2;
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

__n128 assignWithTake for CamBridgeImpl.CaarState(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return result;
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    v3 = *a1 + 3;
  }

  switch(v3)
  {
    case 2u:
      v5 = a1;

      goto LABEL_10;
    case 1u:
      v5 = a1;
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      goto LABEL_10;
    case 0u:
      v4 = *a1;
      v5 = a1;

LABEL_10:
      a1 = v5;
      break;
  }

  v7 = *(a2 + 40);
  if (v7 >= 3)
  {
    v7 = *a2 + 3;
  }

  if (v7 == 2)
  {
    *a1 = *a2;
    *(a1 + 40) = 2;
  }

  else if (v7 == 1)
  {
    result = *a2;
    v8 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v8;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = 1;
  }

  else if (v7)
  {
    v9 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v9;
    result = *(a2 + 25);
    *(a1 + 25) = result;
  }

  else
  {
    *a1 = *a2;
    *(a1 + 40) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CamBridgeImpl.CaarState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CamBridgeImpl.CaarState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for CamBridgeImpl.CaarState(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t dispatch thunk of CamProviding.provideCamInstance(camEnabledFeatures:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of CaarProviding.provideCaarInstance()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of CamActionProviding.getCamAction(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of CaarRankingProviding.getCaarRanking(requestId:caarId:rcId:actions:rankerContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(a8 + 8);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v8 + 16) = v19;
  *v19 = v8;
  v19[1] = dispatch thunk of CaarRankingProviding.getCaarRanking(requestId:caarId:rcId:actions:rankerContext:);

  return v21(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t *initializeBufferWithCopyOfBuffer for ParaphraseProbeResult(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseV06actionE0_tMd, &_s11SiriKitFlow16ActionParaphraseV06actionE0_tMR);
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a2, 2, v7))
  {
    v12 = type metadata accessor for ActionParaphrase();
    (*(*(v12 - 8) + 16))(a1, a2, v12);
    (*(v8 + 56))(a1, 0, 2, v7);
    return a1;
  }

  v9 = *(v6 + 64);

  return memcpy(a1, a2, v9);
}

uint64_t destroy for ParaphraseProbeResult(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseV06actionE0_tMd, &_s11SiriKitFlow16ActionParaphraseV06actionE0_tMR);
  result = (*(*(v2 - 8) + 48))(a1, 2, v2);
  if (!result)
  {
    v4 = type metadata accessor for ActionParaphrase();
    v5 = *(*(v4 - 8) + 8);

    return v5(a1, v4);
  }

  return result;
}

void *initializeWithCopy for ParaphraseProbeResult(void *a1, const void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseV06actionE0_tMd, &_s11SiriKitFlow16ActionParaphraseV06actionE0_tMR);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 2, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    v10 = type metadata accessor for ActionParaphrase();
    (*(*(v10 - 8) + 16))(a1, a2, v10);
    (*(v7 + 56))(a1, 0, 2, v6);
    return a1;
  }
}

void *assignWithCopy for ParaphraseProbeResult(void *a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseV06actionE0_tMd, &_s11SiriKitFlow16ActionParaphraseV06actionE0_tMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 2, v6);
  v10 = v8(a2, 2, v6);
  if (v9)
  {
    if (!v10)
    {
      v11 = type metadata accessor for ActionParaphrase();
      (*(*(v11 - 8) + 16))(a1, a2, v11);
      (*(v7 + 56))(a1, 0, 2, v6);
      return a1;
    }
  }

  else
  {
    if (!v10)
    {
      v14 = type metadata accessor for ActionParaphrase();
      (*(*(v14 - 8) + 24))(a1, a2, v14);
      return a1;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(a1, &_s11SiriKitFlow16ActionParaphraseV06actionE0_tMd, &_s11SiriKitFlow16ActionParaphraseV06actionE0_tMR);
  }

  v12 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v12);
}

void *initializeWithTake for ParaphraseProbeResult(void *a1, const void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseV06actionE0_tMd, &_s11SiriKitFlow16ActionParaphraseV06actionE0_tMR);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 2, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    v10 = type metadata accessor for ActionParaphrase();
    (*(*(v10 - 8) + 32))(a1, a2, v10);
    (*(v7 + 56))(a1, 0, 2, v6);
    return a1;
  }
}

void *assignWithTake for ParaphraseProbeResult(void *a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseV06actionE0_tMd, &_s11SiriKitFlow16ActionParaphraseV06actionE0_tMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 2, v6);
  v10 = v8(a2, 2, v6);
  if (v9)
  {
    if (!v10)
    {
      v11 = type metadata accessor for ActionParaphrase();
      (*(*(v11 - 8) + 32))(a1, a2, v11);
      (*(v7 + 56))(a1, 0, 2, v6);
      return a1;
    }
  }

  else
  {
    if (!v10)
    {
      v14 = type metadata accessor for ActionParaphrase();
      (*(*(v14 - 8) + 40))(a1, a2, v14);
      return a1;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(a1, &_s11SiriKitFlow16ActionParaphraseV06actionE0_tMd, &_s11SiriKitFlow16ActionParaphraseV06actionE0_tMR);
  }

  v12 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v12);
}

uint64_t getEnumTag for ParaphraseProbeResult(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseV06actionE0_tMd, &_s11SiriKitFlow16ActionParaphraseV06actionE0_tMR);
  v3 = *(*(v2 - 8) + 48);

  return v3(a1, 2, v2);
}

uint64_t destructiveInjectEnumTag for ParaphraseProbeResult(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseV06actionE0_tMd, &_s11SiriKitFlow16ActionParaphraseV06actionE0_tMR);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, 2, v4);
}

uint64_t type metadata completion function for ParaphraseProbeResult()
{
  result = type metadata accessor for ActionParaphrase();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8);
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

uint64_t outlined init with copy of ConversationHelperInput(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ParaphraseProbeResult(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type CamFeatureFlag and conformance CamFeatureFlag()
{
  result = lazy protocol witness table cache variable for type CamFeatureFlag and conformance CamFeatureFlag;
  if (!lazy protocol witness table cache variable for type CamFeatureFlag and conformance CamFeatureFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamFeatureFlag and conformance CamFeatureFlag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CamFeatureFlag and conformance CamFeatureFlag;
  if (!lazy protocol witness table cache variable for type CamFeatureFlag and conformance CamFeatureFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamFeatureFlag and conformance CamFeatureFlag);
  }

  return result;
}

uint64_t CamBridgeState.__allocating_init(requestLoggingId:camLoggingId:caarLoggingId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  *(v9 + 16) = MEMORY[0x1E69E7CC8];
  outlined init with take of UUID?(a1, v9 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_requestLoggingId);
  outlined init with take of UUID?(a2, v9 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_camLoggingId);
  outlined init with take of UUID?(a3, v9 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_caarLoggingId);
  return v9;
}

Swift::Void __swiftcall CamBridgeState.registerCamAction(rcId:camAction:)(Swift::String rcId, SiriKitRuntime::ConversationAction camAction)
{
  v3 = v2;
  object = rcId._object;
  countAndFlagsBits = rcId._countAndFlagsBits;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.executor);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18[0] = v11;
    *v10 = 136315394;
    v12 = String.init<A>(describing:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v18);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v10 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, v18);
    _os_log_impl(&dword_1DC659000, v8, v9, "CamBridge: Registering CAM action %s for rcId: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v11, -1, -1);
    MEMORY[0x1E12A2F50](v10, -1, -1);
  }

  swift_beginAccess();
  v15 = *(v3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v3 + 16);
  *(v3 + 16) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(camAction, countAndFlagsBits, object, isUniquelyReferenced_nonNull_native);
  *(v3 + 16) = v17;
  swift_endAccess();
}

SiriKitRuntime::ConversationAction_optional __swiftcall CamBridgeState.getCamAction(rcId:)(Swift::String rcId)
{
  object = rcId._object;
  countAndFlagsBits = rcId._countAndFlagsBits;
  swift_beginAccess();
  v4 = *(v1 + 16);
  if (*(v4 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, object), (v6 & 1) != 0))
  {
    v7.value = *(*(v4 + 56) + v5);
  }

  else
  {
    v7.value = SiriKitRuntime_ConversationAction_unknownDefault;
  }

  swift_endAccess();
  return v7;
}

uint64_t CamBridgeState.init(requestLoggingId:camLoggingId:caarLoggingId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = MEMORY[0x1E69E7CC8];
  outlined init with take of UUID?(a1, v3 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_requestLoggingId);
  outlined init with take of UUID?(a2, v3 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_camLoggingId);
  outlined init with take of UUID?(a3, v3 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_caarLoggingId);
  return v3;
}

uint64_t CamBridgeState.deinit()
{
  v1 = *(v0 + 16);

  outlined destroy of UUID?(v0 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_requestLoggingId);
  outlined destroy of UUID?(v0 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_camLoggingId);
  outlined destroy of UUID?(v0 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_caarLoggingId);
  return v0;
}

void type metadata completion function for CamBridgeState()
{
  type metadata accessor for UUID?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
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

uint64_t CamFeatureFlag.isEnabled.getter()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  v0 = static CamFeatureFlag.forceEnabled;
  os_unfair_lock_lock((static CamFeatureFlag.forceEnabled + 20));
  v1 = *(v0 + 16);
  if (v1 == 2)
  {
    v3[3] = &type metadata for CamFeatureFlag;
    v3[4] = lazy protocol witness table accessor for type CamFeatureFlag and conformance CamFeatureFlag();
    LOBYTE(v1) = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  os_unfair_lock_unlock((v0 + 20));
  return v1 & 1;
}

uint64_t one-time initialization function for forceEnabled()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySbSgSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySbSgSo16os_unfair_lock_sVGMR);
  result = swift_allocObject();
  *(result + 20) = 0;
  *(result + 16) = 2;
  static CamFeatureFlag.forceEnabled = result;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySbSgSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySbSgSo16os_unfair_lock_sVGMR);
  result = swift_allocObject();
  *(result + 20) = 0;
  *(result + 16) = 2;
  static CaptureSiriXToolOutputFeatureFlag.forceEnabled = result;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySbSgSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySbSgSo16os_unfair_lock_sVGMR);
  result = swift_allocObject();
  *(result + 20) = 0;
  *(result + 16) = 2;
  static ConversationBridgeFeatureFlag.forceEnabled = result;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySbSgSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySbSgSo16os_unfair_lock_sVGMR);
  result = swift_allocObject();
  *(result + 20) = 0;
  *(result + 16) = 2;
  static FlexibleAnnounceFeatureFlag.forceEnabled = result;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySbSgSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySbSgSo16os_unfair_lock_sVGMR);
  result = swift_allocObject();
  *(result + 20) = 0;
  *(result + 16) = 2;
  static SiriCAMAppDisambiguationFeatureFlag.forceEnabled = result;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySbSgSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySbSgSo16os_unfair_lock_sVGMR);
  result = swift_allocObject();
  *(result + 20) = 0;
  *(result + 16) = 2;
  static StopRepromptFeatureFlag.forceEnabled = result;
  return result;
}

uint64_t *CamFeatureFlag.forceEnabled.unsafeMutableAddressor()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  return &static CamFeatureFlag.forceEnabled;
}

uint64_t static CamFeatureFlag.forceEnabled.getter()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }
}

Swift::Int CamFeatureFlag.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CamFeatureFlag()
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CamFeatureFlag()
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](0);
  return Hasher._finalize()();
}

uint64_t Parse.asCamParse()@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = type metadata accessor for Siri_Nlu_External_UserParse();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = type metadata accessor for USOParse();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v30[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for Parse();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v30[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v14 + 16))(v18, v2, v13, v16);
  v19 = (*(v14 + 88))(v18, v13);
  if (v19 == *MEMORY[0x1E69D0138])
  {
    (*(v14 + 96))(v18, v13);
    *a1 = *v18;
    v20 = MEMORY[0x1E69CE2F8];
LABEL_5:
    v21 = *v20;
    v22 = type metadata accessor for CamParse();
    return (*(*(v22 - 8) + 104))(a1, v21, v22);
  }

  if (v19 == *MEMORY[0x1E69D0168])
  {
    (*(v14 + 96))(v18, v13);
    (*(v9 + 32))(v12, v18, v8);
    USOParse.userParse.getter();
    USOParse.parserIdentifier.getter();
    USOParse.appBundleId.getter();
    USOParse.groupIndex.getter();
    CamUSOParse.init(userParse:parserIdentifier:appBundleId:groupIndex:)();
    (*(v9 + 8))(v12, v8);
    v20 = MEMORY[0x1E69CE300];
    goto LABEL_5;
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Logger.executor);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_1DC659000, v25, v26, "CamBridge: Received unexpected Parse type in asCamParse", v27, 2u);
    MEMORY[0x1E12A2F50](v27, -1, -1);
  }

  v28 = *MEMORY[0x1E69CE308];
  v29 = type metadata accessor for CamParse();
  (*(*(v29 - 8) + 104))(a1, v28, v29);
  return (*(v14 + 8))(v18, v13);
}

uint64_t CamParse.asSKEParse()@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = type metadata accessor for Siri_Nlu_External_UserParse();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = type metadata accessor for CamUSOParse();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v30[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for CamParse();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v30[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v14 + 16))(v18, v2, v13, v16);
  v19 = (*(v14 + 88))(v18, v13);
  if (v19 == *MEMORY[0x1E69CE300])
  {
    (*(v14 + 96))(v18, v13);
    (*(v9 + 32))(v12, v18, v8);
    CamUSOParse.userParse.getter();
    CamUSOParse.parserIdentifier.getter();
    CamUSOParse.appBundleId.getter();
    CamUSOParse.groupIndex.getter();
    USOParse.init(userParse:parserIdentifier:appBundleId:groupIndex:)();
    (*(v9 + 8))(v12, v8);
    v20 = MEMORY[0x1E69D0168];
LABEL_7:
    v21 = *v20;
    v22 = type metadata accessor for Parse();
    return (*(*(v22 - 8) + 104))(a1, v21, v22);
  }

  if (v19 == *MEMORY[0x1E69CE2F8])
  {
    (*(v14 + 96))(v18, v13);
    *a1 = *v18;
    v20 = MEMORY[0x1E69D0138];
    goto LABEL_7;
  }

  if (v19 == *MEMORY[0x1E69CE308])
  {
    v20 = MEMORY[0x1E69D0178];
    goto LABEL_7;
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Logger.executor);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_1DC659000, v25, v26, "Unknown CamParse type, defaulting to Parse.empty!", v27, 2u);
    MEMORY[0x1E12A2F50](v27, -1, -1);
  }

  v28 = *MEMORY[0x1E69D0178];
  v29 = type metadata accessor for Parse();
  (*(*(v29 - 8) + 104))(a1, v28, v29);
  return (*(v14 + 8))(v18, v13);
}

uint64_t CamParse.asLinkParse(userData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v4 = type metadata accessor for USOParse();
  v54 = *(v4 - 8);
  v55 = v4;
  v5 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v53 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v52 - v8;
  v57 = type metadata accessor for Parse();
  v10 = *(v57 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v13 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v56 = (v52 - v15);
  v16 = type metadata accessor for CamParse();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v21, v2, v16, v19);
  v22 = (*(v17 + 88))(v21, v16);
  v23 = *MEMORY[0x1E69CE300];
  (*(v17 + 8))(v21, v16);
  if (v22 == v23 && *(a1 + 16) && (v24 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000014, 0x80000001DCA7DDD0), (v25 & 1) != 0) && (outlined init with copy of Any(*(a1 + 56) + 32 * v24, v60), (swift_dynamicCast() & 1) != 0))
  {
    v26 = v59;
    v27 = v56;
    CamParse.asSKEParse()(v56);
    v28 = v57;
    (*(v10 + 16))(v13, v27, v57);
    v29 = v28;
    if ((*(v10 + 88))(v13, v28) == *MEMORY[0x1E69D0168])
    {
      v52[1] = v26;
      (*(v10 + 96))(v13, v28);
      v31 = v54;
      v30 = v55;
      (*(v54 + 32))(v9, v13, v55);
      (*(v31 + 16))(v53, v9, v30);
      if (*(a1 + 16))
      {
        v32 = specialized __RawDictionaryStorage.find<A>(_:)(0x69746E456B6E696CLL, 0xEE00657079547974);
        if (v33)
        {
          outlined init with copy of Any(*(a1 + 56) + 32 * v32, v60);
          swift_dynamicCast();
        }
      }

      v51 = v58;
      LinkParse.init(usoParse:actionId:entityId:entityDisplayName:)();
      (*(v31 + 8))(v9, v30);
      (*(v10 + 8))(v56, v28);
      (*(v10 + 104))(v51, *MEMORY[0x1E69D0170], v28);
      v44 = v28;
      v43 = v51;
      v42 = 0;
    }

    else
    {

      v46 = *(v10 + 8);
      v46(v13, v28);
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v47 = type metadata accessor for Logger();
      __swift_project_value_buffer(v47, static Logger.executor);
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_1DC659000, v48, v49, "CamBridge: Could not get USO parse to add to Link Parse", v50, 2u);
        MEMORY[0x1E12A2F50](v50, -1, -1);
      }

      v46(v56, v29);
      v44 = v29;
      v42 = 1;
      v43 = v58;
    }
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Logger.executor);

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v60[0] = v38;
      *v37 = 136315138;
      v39 = Dictionary.description.getter();
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, v60);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_1DC659000, v35, v36, "CamBridge: Could not retrieve details from RankedAction for constructing a link parse. userData=%s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x1E12A2F50](v38, -1, -1);
      MEMORY[0x1E12A2F50](v37, -1, -1);
    }

    v42 = 1;
    v44 = v57;
    v43 = v58;
  }

  return (*(v10 + 56))(v43, v42, 1, v44);
}

Swift::Int ConversationAction.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](a1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type ConversationAction and conformance ConversationAction()
{
  result = lazy protocol witness table cache variable for type ConversationAction and conformance ConversationAction;
  if (!lazy protocol witness table cache variable for type ConversationAction and conformance ConversationAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationAction and conformance ConversationAction);
  }

  return result;
}

void *assignWithCopy for CamOutput(void *a1, void *a2)
{
  if (a1 != a2)
  {
    outlined destroy of CamOutput(a1);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v4 = type metadata accessor for Input();
      (*(*(v4 - 8) + 16))(a1, a2, v4);
    }

    else
    {
      *a1 = *a2;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t outlined destroy of CamOutput(uint64_t a1)
{
  v2 = type metadata accessor for CamOutput();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for CamOutput()
{
  result = type metadata singleton initialization cache for CamOutput;
  if (!type metadata singleton initialization cache for CamOutput)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *assignWithTake for CamOutput(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of CamOutput(a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for Input();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v8 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v8);
}

uint64_t dispatch thunk of CamBridge.action(requestId:camId:rcId:speechPackage:rankedActions:inputOrigin:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = *(a10 + 24);
  v22 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  *(v10 + 16) = v20;
  *v20 = v10;
  v20[1] = AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:);

  return v22(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t dispatch thunk of CamBridge.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18 = *(a11 + 32);
  v22 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  *(v11 + 16) = v20;
  *v20 = v11;
  v20[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return v22(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t dispatch thunk of CamBridge.commit(rcId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 40);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of CamBridge.commit(action:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 48);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of CamBridge.rank(rcId:actions:rankerContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 56);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:);

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t storeEnumTagSinglePayload for ConversationAction(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

SiriKitRuntime::CAMRootFlowAffinityScorer __swiftcall CAMRootFlowAffinityScorer.init()()
{
  v0 = 0x80000001DCA7C9E0;
  v1 = 0xD000000000000020;
  result.bundleIdentifier._object = v0;
  result.bundleIdentifier._countAndFlagsBits = v1;
  return result;
}

uint64_t specialized CAMRootFlowAffinityScorer.repeatRecentDialogIntentAffinity(intent:environment:)(char a1)
{
  type metadata accessor for RecentDialogsEnvironmentProvider();
  lazy protocol witness table accessor for type RecentDialogsEnvironmentProvider and conformance RecentDialogsEnvironmentProvider();
  v2 = *dispatch thunk of SiriEnvironment.subscript.getter();
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = (*(v2 + 152))();

      if (v3)
      {
        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v4 = type metadata accessor for Logger();
        __swift_project_value_buffer(v4, static Logger.executor);
        v5 = Logger.logObject.getter();
        v6 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v5, v6))
        {
          goto LABEL_20;
        }

        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v23 = v8;
        *v7 = 136315138;
        v9 = "RepeatRecentDialogIntent.userAskedToGoBack";
        goto LABEL_18;
      }
    }

    else
    {
      v13 = (*(v2 + 152))();

      if (v13)
      {
        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v14 = type metadata accessor for Logger();
        __swift_project_value_buffer(v14, static Logger.executor);
        v5 = Logger.logObject.getter();
        v6 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v5, v6))
        {
          goto LABEL_20;
        }

        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v23 = v8;
        *v7 = 136315138;
        v9 = "RepeatRecentDialogIntent.indirectDismissal";
LABEL_18:
        *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ALL, (v9 - 32) | 0x8000000000000000, &v23);
        v12 = "CAMRootFlowAffinityScorer: has a dialog to go back to, returning high confidence for %s.";
LABEL_19:
        _os_log_impl(&dword_1DC659000, v5, v6, v12, v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v8);
        MEMORY[0x1E12A2F50](v8, -1, -1);
        MEMORY[0x1E12A2F50](v7, -1, -1);
LABEL_20:

        return 3;
      }
    }
  }

  else
  {
    v10 = (*(v2 + 128))();

    if (v10)
    {
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, static Logger.executor);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v5, v6))
      {
        goto LABEL_20;
      }

      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v23 = v8;
      *v7 = 136315138;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ALL, 0x80000001DCA7DE50, &v23);
      v12 = "CAMRootFlowAffinityScorer: has a dialog to repeat, returning high confidence for %s.";
      goto LABEL_19;
    }
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.executor);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v23 = v20;
    *v19 = 136315138;
    if (a1)
    {
      if (a1 == 1)
      {
        v21 = "ogIntent.indirectDismissal";
      }

      else
      {
        v21 = "linkActionIdentifier";
      }
    }

    else
    {
      v21 = "ogIntent.userAskedToGoBack";
    }

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ALL, v21 | 0x8000000000000000, &v23);

    *(v19 + 4) = v22;
    _os_log_impl(&dword_1DC659000, v17, v18, "CAMRootFlowAffinityScorer: no replayable recent dialogs for %s, returning low confidence.", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x1E12A2F50](v20, -1, -1);
    MEMORY[0x1E12A2F50](v19, -1, -1);
  }

  return 1;
}

uint64_t specialized CAMRootFlowAffinityScorer.taskInterruptionAffinity(input:environment:)(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nlu_External_UserParse();
  v55 = *(v2 - 8);
  v56 = v2;
  v3 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v53 = v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for USOParse();
  v52 = *(v54 - 8);
  v5 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v51 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UniversalActionFeatureFlags();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Parse();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v57 = v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v50 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v50 - v20;
  Input.parse.getter();
  v22 = Parse.hasDirectDismissal.getter();
  v58 = v13;
  v23 = *(v13 + 8);
  v23(v21, v12);
  if ((v22 & 1) == 0)
  {
    v50[1] = a1;
    Input.parse.getter();
    v29 = Parse.hasThankYou.getter();
    v23(v21, v12);
    if ((v29 & 1) == 0)
    {
      (*(v8 + 104))(v11, *MEMORY[0x1E69D0080], v7);
      v33 = UniversalActionFeatureFlags.isEnabled.getter();
      (*(v8 + 8))(v11, v7);
      if (v33 & 1) != 0 && ((Input.parse.getter(), v34 = Parse.hasCancelled.getter(), v23(v18, v12), (v34) || (Input.parse.getter(), v35 = Parse.hasRejected.getter(), v23(v21, v12), (v35)))
      {
        v36 = v57;
        Input.parse.getter();
        v37 = v58;
        if ((*(v58 + 88))(v36, v12) == *MEMORY[0x1E69D0168])
        {
          (*(v37 + 96))(v36, v12);
          v39 = v51;
          v38 = v52;
          v40 = v36;
          v41 = v54;
          (*(v52 + 32))(v51, v40, v54);
          v42 = v53;
          v43 = USOParse.userParse.getter();
          v44 = MEMORY[0x1E129C0F0](v43);
          (*(v55 + 8))(v42, v56);
          (*(v38 + 8))(v39, v41);
          v45 = *(v44 + 16);

          if (v45 > 1)
          {
            return 0;
          }
        }

        else
        {
          v23(v36, v12);
        }

        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v48 = type metadata accessor for Logger();
        __swift_project_value_buffer(v48, static Logger.executor);
        v25 = Logger.logObject.getter();
        v49 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v25, v49))
        {
          v31 = 1;
          goto LABEL_14;
        }

        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_1DC659000, v25, v49, "CAMRootFlowAffinityScorer Got user cancelled.", v27, 2u);
        v31 = 1;
      }

      else
      {
        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v46 = type metadata accessor for Logger();
        __swift_project_value_buffer(v46, static Logger.executor);
        v25 = Logger.logObject.getter();
        v47 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v25, v47))
        {
          v31 = 0;
          goto LABEL_14;
        }

        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_1DC659000, v25, v47, "CAMRootFlowAffinityScorer Got an unsupported universal action.", v27, 2u);
        v31 = 0;
      }

      goto LABEL_12;
    }

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.executor);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      v28 = "CAMRootFlowAffinityScorer Got thank you.";
      goto LABEL_11;
    }

LABEL_13:
    v31 = 3;
    goto LABEL_14;
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Logger.executor);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v25, v26))
  {
    goto LABEL_13;
  }

  v27 = swift_slowAlloc();
  *v27 = 0;
  v28 = "CAMRootFlowAffinityScorer Got direct dismissal.";
LABEL_11:
  _os_log_impl(&dword_1DC659000, v25, v26, v28, v27, 2u);
  v31 = 3;
LABEL_12:
  MEMORY[0x1E12A2F50](v27, -1, -1);
LABEL_14:

  return v31;
}

uint64_t specialized CAMRootFlowAffinityScorer.score(input:environment:)(uint64_t a1)
{
  v2 = type metadata accessor for Parse();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  v7 = specialized static RepeatRecentDialogIntent.fromParse(_:)(v6);
  v8 = *(v3 + 8);
  v8(v6, v2);
  if (v7 != 3)
  {
    return specialized CAMRootFlowAffinityScorer.repeatRecentDialogIntentAffinity(intent:environment:)(v7);
  }

  Input.parse.getter();
  v9 = Parse.interpretableAsUniversalAction.getter();
  v8(v6, v2);
  if (v9)
  {
    return specialized CAMRootFlowAffinityScorer.taskInterruptionAffinity(input:environment:)(a1);
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.executor);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v11 = 2;
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1DC659000, v14, v15, "CAMRootFlowAffinityScorer: not a universal action special case, returning default score.", v16, 2u);
    MEMORY[0x1E12A2F50](v16, -1, -1);
  }

  else
  {

    return 2;
  }

  return v11;
}

unint64_t lazy protocol witness table accessor for type RecentDialogsEnvironmentProvider and conformance RecentDialogsEnvironmentProvider()
{
  result = lazy protocol witness table cache variable for type RecentDialogsEnvironmentProvider and conformance RecentDialogsEnvironmentProvider;
  if (!lazy protocol witness table cache variable for type RecentDialogsEnvironmentProvider and conformance RecentDialogsEnvironmentProvider)
  {
    type metadata accessor for RecentDialogsEnvironmentProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RecentDialogsEnvironmentProvider and conformance RecentDialogsEnvironmentProvider);
  }

  return result;
}

uint64_t CancelExecutionTurn.executionRequestId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

void *CancelExecutionTurn.__allocating_init(executionRequestId:cancellationReason:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

void *CancelExecutionTurn.init(executionRequestId:cancellationReason:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

uint64_t CancelExecutionTurn.debugDescription.getter()
{
  _StringGuts.grow(_:)(53);
  v1 = *v0;
  v2 = _typeName(_:qualified:)();
  MEMORY[0x1E12A1580](v2);

  MEMORY[0x1E12A1580](0xD000000000000016, 0x80000001DCA7DE80);
  MEMORY[0x1E12A1580](v0[2], v0[3]);
  MEMORY[0x1E12A1580](0xD000000000000018, 0x80000001DCA7DEA0);
  v4 = v0[4];
  type metadata accessor for AFRequestCancellationReason(0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](125, 0xE100000000000000);
  return 0;
}

uint64_t CancelExecutionTurn.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t CancelExecutionTurn.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t CandidateRequestMessage.message.getter(unint64_t a1)
{
  if (a1 >> 61)
  {
    v1 = a1 & 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v1 = a1;
  }

  if ((a1 >> 61) <= 2)
  {
    v2 = v1;
  }

  else
  {
    v2 = a1 & 0x1FFFFFFFFFFFFFFFLL;
  }

  v3 = (a1 & 0x1FFFFFFFFFFFFFFFLL);
  return v2;
}

unint64_t specialized static CandidateRequestMessage.from(_:)(void *a1)
{
  type metadata accessor for StartCandidateRequestMessage();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    type metadata accessor for TRPCandidateRequestMessage();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v3 = v4 | 0x2000000000000000;
    }

    else
    {
      type metadata accessor for NLRoutingDecisionMessage();
      v5 = swift_dynamicCastClass();
      if (v5)
      {
        v3 = v5 | 0x6000000000000000;
      }

      else
      {
        type metadata accessor for TTResponseMessage();
        v6 = swift_dynamicCastClass();
        if (v6)
        {
          v3 = v6 | 0x4000000000000000;
        }

        else
        {
          type metadata accessor for SpeechStopDetectedMessage();
          v7 = swift_dynamicCastClass();
          if (v7)
          {
            v3 = v7 | 0x8000000000000000;
          }

          else
          {
            type metadata accessor for StoppedListeningForSpeechContinuationMessage();
            v8 = swift_dynamicCastClass();
            if (v8)
            {
              v3 = v8 | 0xA000000000000000;
            }

            else
            {
              type metadata accessor for ExecuteNLOnServerMessage();
              v9 = swift_dynamicCastClass();
              if (!v9)
              {
                return 0xF000000000000007;
              }

              v3 = v9 | 0xC000000000000000;
            }
          }
        }
      }
    }
  }

  v10 = a1;
  return v3;
}

uint64_t *assignWithCopy for CandidateRequestMessage(uint64_t *a1, uint64_t *a2)
{
  v3 = (*a2 & 0x1FFFFFFFFFFFFFFFLL);
  v4 = *a1;
  *a1 = *a2;
  v5 = (v4 & 0x1FFFFFFFFFFFFFFFLL);
  v6 = v3;

  return a1;
}

uint64_t *assignWithTake for CandidateRequestMessage(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for CandidateRequestMessage(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7A && *(a1 + 8))
  {
    return (*a1 + 122);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x79)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for CandidateRequestMessage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x79)
  {
    *result = a2 - 122;
    if (a3 >= 0x7A)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7A)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t *CaptureSiriXToolOutputFeatureFlag.forceEnabled.unsafeMutableAddressor()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  return &static CaptureSiriXToolOutputFeatureFlag.forceEnabled;
}

uint64_t static CaptureSiriXToolOutputFeatureFlag.forceEnabled.getter()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }
}

uint64_t CaptureSiriXToolOutputFeatureFlag.isEnabled.getter()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  v0 = static CaptureSiriXToolOutputFeatureFlag.forceEnabled;
  os_unfair_lock_lock((static CaptureSiriXToolOutputFeatureFlag.forceEnabled + 20));
  v1 = *(v0 + 16);
  if (v1 == 2)
  {
    v3[3] = &type metadata for CaptureSiriXToolOutputFeatureFlag;
    v3[4] = lazy protocol witness table accessor for type CaptureSiriXToolOutputFeatureFlag and conformance CaptureSiriXToolOutputFeatureFlag();
    LOBYTE(v1) = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  os_unfair_lock_unlock((v0 + 20));
  return v1 & 1;
}

unint64_t lazy protocol witness table accessor for type CaptureSiriXToolOutputFeatureFlag and conformance CaptureSiriXToolOutputFeatureFlag()
{
  result = lazy protocol witness table cache variable for type CaptureSiriXToolOutputFeatureFlag and conformance CaptureSiriXToolOutputFeatureFlag;
  if (!lazy protocol witness table cache variable for type CaptureSiriXToolOutputFeatureFlag and conformance CaptureSiriXToolOutputFeatureFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CaptureSiriXToolOutputFeatureFlag and conformance CaptureSiriXToolOutputFeatureFlag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CaptureSiriXToolOutputFeatureFlag and conformance CaptureSiriXToolOutputFeatureFlag;
  if (!lazy protocol witness table cache variable for type CaptureSiriXToolOutputFeatureFlag and conformance CaptureSiriXToolOutputFeatureFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CaptureSiriXToolOutputFeatureFlag and conformance CaptureSiriXToolOutputFeatureFlag);
  }

  return result;
}

Swift::Int CaptureSiriXToolOutputFeatureFlag.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](0);
  return Hasher._finalize()();
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySSG_SS9namespace_SSSg5valuets5NeverOTg5038_sS3SSgIggoo_S2S9namespace_AA5valuets5F174OIegnrzr_TR150_s12SiriOntology7UsoTaskC0A10KitRuntimeE35firstCarCommandsUserVocabIdentifier33_62490FE03E7AB891D874A741A997DD8CLLAA12SpanPropertyVSgvgSS_SSSgtSSXEfU_Tf3nnnpf_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = v26;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v7 = result;
  v8 = 0;
  v23 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_21;
    }

    v24 = *(a1 + 36);
    v11 = (*(a1 + 48) + 16 * v7);
    v12 = v11[1];
    v25 = *v11;
    v13 = *(v26 + 16);
    v14 = *(v26 + 24);

    if (v13 >= v14 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v13 + 1, 1);
    }

    *(v26 + 16) = v13 + 1;
    v15 = (v26 + 32 * v13);
    v15[4] = v25;
    v15[5] = v12;
    v15[6] = 0;
    v15[7] = 0;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_22;
    }

    v4 = a1 + 56;
    v16 = *(a1 + 56 + 8 * v10);
    if ((v16 & (1 << v7)) == 0)
    {
      goto LABEL_23;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (v7 & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 64 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = outlined consume of Set<String>.Index._Variant(v7, v24, 0);
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = outlined consume of Set<String>.Index._Variant(v7, v24, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v23)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

SiriKitRuntime::CarCommandsAffinityScorer __swiftcall CarCommandsAffinityScorer.init()()
{
  v0 = 0x80000001DCA7CA10;
  v1 = 0xD00000000000002CLL;
  result.bundleIdentifier._object = v0;
  result.bundleIdentifier._countAndFlagsBits = v1;
  return result;
}

uint64_t one-time initialization function for kDonatedVocabNamespaceMatches()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DCA66060;
  v1 = *MEMORY[0x1E69D2450];
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v2;
  v3 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(inited);
  swift_setDeallocating();
  result = outlined destroy of String(inited + 32);
  static CarCommandsAffinityScorer.kDonatedVocabNamespaceMatches = v3;
  return result;
}

uint64_t *CarCommandsAffinityScorer.kDonatedVocabNamespaceMatches.unsafeMutableAddressor()
{
  if (one-time initialization token for kDonatedVocabNamespaceMatches != -1)
  {
    swift_once();
  }

  return &static CarCommandsAffinityScorer.kDonatedVocabNamespaceMatches;
}

uint64_t one-time initialization function for kUserEntityNamespaceMatches()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for kUserEntityNamespaceMatches);
  result = swift_arrayDestroy();
  static CarCommandsAffinityScorer.kUserEntityNamespaceMatches = v0;
  return result;
}

uint64_t *CarCommandsAffinityScorer.kUserEntityNamespaceMatches.unsafeMutableAddressor()
{
  if (one-time initialization token for kUserEntityNamespaceMatches != -1)
  {
    swift_once();
  }

  return &static CarCommandsAffinityScorer.kUserEntityNamespaceMatches;
}

uint64_t one-time initialization function for kSettingsNamespaceMatches()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for kSettingsNamespaceMatches);
  result = swift_arrayDestroy();
  static CarCommandsAffinityScorer.kSettingsNamespaceMatches = v0;
  return result;
}

uint64_t *CarCommandsAffinityScorer.kSettingsNamespaceMatches.unsafeMutableAddressor()
{
  if (one-time initialization token for kSettingsNamespaceMatches != -1)
  {
    swift_once();
  }

  return &static CarCommandsAffinityScorer.kSettingsNamespaceMatches;
}

uint64_t one-time initialization function for kAppNameMatches()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for kAppNameMatches);
  result = outlined destroy of String(&unk_1F5824D38);
  static CarCommandsAffinityScorer.kAppNameMatches = v0;
  return result;
}

uint64_t *CarCommandsAffinityScorer.kAppNameMatches.unsafeMutableAddressor()
{
  if (one-time initialization token for kAppNameMatches != -1)
  {
    swift_once();
  }

  return &static CarCommandsAffinityScorer.kAppNameMatches;
}

uint64_t one-time initialization function for kFloatSettingValuesForVolume()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for kFloatSettingValuesForVolume);
  result = swift_arrayDestroy();
  static CarCommandsAffinityScorer.kFloatSettingValuesForVolume = v0;
  return result;
}

uint64_t *CarCommandsAffinityScorer.kFloatSettingValuesForVolume.unsafeMutableAddressor()
{
  if (one-time initialization token for kFloatSettingValuesForVolume != -1)
  {
    swift_once();
  }

  return &static CarCommandsAffinityScorer.kFloatSettingValuesForVolume;
}

uint64_t one-time initialization function for kRadioLabels()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for kRadioLabels);
  result = swift_arrayDestroy();
  static CarCommandsAffinityScorer.kRadioLabels = v0;
  return result;
}

uint64_t *CarCommandsAffinityScorer.kRadioLabels.unsafeMutableAddressor()
{
  if (one-time initialization token for kRadioLabels != -1)
  {
    swift_once();
  }

  return &static CarCommandsAffinityScorer.kRadioLabels;
}

uint64_t static CarCommandsAffinityScorer.kDonatedVocabNamespaceMatches.getter(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }
}

uint64_t CarCommandsAffinityScorer.score(input:environment:)(uint64_t a1, unsigned __int8 *a2, void (*a3)(void, void), NSObject *a4)
{
  v152 = a4;
  v150 = a3;
  v136 = a2;
  v4 = type metadata accessor for Parse.DirectInvocation();
  v148 = *(v4 - 8);
  v149 = v4;
  v5 = *(v148 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v146 = &v134 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v147 = &v134 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v134 - v11;
  v13 = type metadata accessor for NLIntent();
  v151 = *(v13 - 8);
  v14 = *(v151 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v134 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for CarCommandsAffinityScoringData();
  v17 = *(*(v135 - 8) + 64);
  MEMORY[0x1EEE9AC00](v135);
  v137 = &v134 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Siri_Nlu_External_UserParse();
  v140 = *(v19 - 8);
  v141 = v19;
  v20 = *(v140 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v134 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v139 = &v134 - v25;
  v26 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v142 = *(v26 - 8);
  v143 = v26;
  v27 = *(v142 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v134 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v138 = &v134 - v31;
  v145 = type metadata accessor for USOParse();
  v32 = *(v145 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v145);
  v144 = &v134 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for Parse();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v39 = &v134 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  v40 = (*(v36 + 88))(v39, v35);
  if (v40 != *MEMORY[0x1E69D0120])
  {
    if (v40 == *MEMORY[0x1E69D0158])
    {
      (*(v36 + 96))(v39, v35);
      v57 = v147;
      v56 = v148;
      v58 = v149;
      (*(v148 + 32))(v147, v39, v149);
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v59 = type metadata accessor for Logger();
      __swift_project_value_buffer(v59, static Logger.executor);
      v60 = v146;
      (*(v56 + 16))(v146, v57, v58);
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v153 = v64;
        *v63 = 136315138;
        v65 = Parse.DirectInvocation.identifier.getter();
        v66 = v60;
        v68 = v67;
        v69 = *(v56 + 8);
        v69(v66, v58);
        v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v68, &v153);

        *(v63 + 4) = v70;
        _os_log_impl(&dword_1DC659000, v61, v62, "CarCommandsAffinityScorer received a direct invocation: %s", v63, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v64);
        MEMORY[0x1E12A2F50](v64, -1, -1);
        MEMORY[0x1E12A2F50](v63, -1, -1);
      }

      else
      {

        v69 = *(v56 + 8);
        v69(v60, v58);
      }

      v69(v57, v58);
      return 2;
    }

    if (v40 != *MEMORY[0x1E69D0168])
    {
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v92 = type metadata accessor for Logger();
      __swift_project_value_buffer(v92, static Logger.executor);
      v93 = Logger.logObject.getter();
      v94 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        *v95 = 0;
        _os_log_impl(&dword_1DC659000, v93, v94, "CarCommandsAffinityScorer got an unexpected parse. Returning score: .unsupported", v95, 2u);
        MEMORY[0x1E12A2F50](v95, -1, -1);
      }

      (*(v36 + 8))(v39, v35);
      return 0;
    }

    (*(v36 + 96))(v39, v35);
    v151 = v32;
    (*(v32 + 32))(v144, v39, v145);
    v75 = USOParse.userParse.getter();
    v76 = MEMORY[0x1E129C0F0](v75);
    (*(v140 + 8))(v22, v141);
    v77 = *(v76 + 16);
    v47 = v142;
    v46 = v143;
    if (v77)
    {
      v78 = 0;
      v79 = (v142 + 8);
      while (v78 < *(v76 + 16))
      {
        (*(v47 + 16))(v29, v76 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v78, v46);
        if (Siri_Nlu_External_UserDialogAct.hasUserStatedTask.getter())
        {

          v81 = v139;
          (*(v47 + 32))(v139, v29, v46);
          v80 = 0;
          goto LABEL_38;
        }

        ++v78;
        (*v79)(v29, v46);
        if (v77 == v78)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
      goto LABEL_90;
    }

LABEL_23:

    v80 = 1;
    v81 = v139;
LABEL_38:
    (*(v47 + 56))(v81, v80, 1, v46);
    if ((*(v47 + 48))(v81, 1, v46) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v81, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v96 = type metadata accessor for Logger();
      __swift_project_value_buffer(v96, static Logger.executor);
      v97 = Logger.logObject.getter();
      v98 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        *v99 = 0;
        _os_log_impl(&dword_1DC659000, v97, v98, "CarCommandsAffinityScorer could not extract UserDialogAct. Returning score: .unsupported", v99, 2u);
        MEMORY[0x1E12A2F50](v99, -1, -1);
      }

      goto LABEL_51;
    }

    (*(v47 + 32))(v138, v81, v46);
    v100 = static ConversionUtils.convertUserDialogActToTasks(userDialogAct:)();
    if (v100 >> 62)
    {
      v133 = v100;
      v106 = __CocoaSet.count.getter();
      v100 = v133;
    }

    else
    {
      v106 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v107 = v137;
    v108 = v152;
    if (v106)
    {
      if ((v100 & 0xC000000000000001) != 0)
      {
        v109 = MEMORY[0x1E12A1FE0](0);
      }

      else
      {
        if (!*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_94;
        }

        v109 = *(v100 + 32);
      }

      *v107 = UsoTask.namesNodeAttachmentInfo()();
      *(v107 + 8) = v110;
      v111 = UsoTask.settingSpanInfo()(v107 + *(v135 + 28));

      *(v107 + 16) = v111 & 1;
      v112 = v150;
      if (CarCommandsAffinityScorer.hasOverrideMatch(on:with:in:)(v109, v107, v136, v150, v108))
      {
        if (one-time initialization token for executor == -1)
        {
LABEL_62:
          v113 = type metadata accessor for Logger();
          __swift_project_value_buffer(v113, static Logger.executor);
          v114 = Logger.logObject.getter();
          v115 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v114, v115))
          {
            v116 = swift_slowAlloc();
            *v116 = 0;
            _os_log_impl(&dword_1DC659000, v114, v115, "CarCommandsAffinityScorer found a match with very high probability of belonging to CarCommmands. Returning score: .override.", v116, 2u);
            MEMORY[0x1E12A2F50](v116, -1, -1);
          }

          outlined destroy of CarCommandsAffinityScoringData(v107);
          (*(v47 + 8))(v138, v143);
          (*(v151 + 8))(v144, v145);
          return 4;
        }

LABEL_94:
        swift_once();
        goto LABEL_62;
      }

      if (specialized CarCommandsAffinityScorer.hasHighProbabilityMatch(on:with:in:)(v107, v112, v108))
      {
        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v117 = type metadata accessor for Logger();
        __swift_project_value_buffer(v117, static Logger.executor);
        v118 = Logger.logObject.getter();
        v119 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v118, v119))
        {
          v120 = swift_slowAlloc();
          *v120 = 0;
          _os_log_impl(&dword_1DC659000, v118, v119, "CarCommandsAffinityScorer found a match with high probability of belonging to CarCommands. Returning score: .high.", v120, 2u);
          MEMORY[0x1E12A2F50](v120, -1, -1);
        }

        outlined destroy of CarCommandsAffinityScoringData(v107);
        (*(v47 + 8))(v138, v143);
        (*(v151 + 8))(v144, v145);
        return 3;
      }

      if (specialized CarCommandsAffinityScorer.hasMediumProbabilityMatch(on:with:)(v107, v112, v108))
      {
        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v121 = type metadata accessor for Logger();
        __swift_project_value_buffer(v121, static Logger.executor);
        v122 = Logger.logObject.getter();
        v123 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v122, v123))
        {
          v91 = 2;
          v124 = swift_slowAlloc();
          *v124 = 0;
          _os_log_impl(&dword_1DC659000, v122, v123, "CarCommandsAffinityScorer found a match with medium probability of belonging to CarCommands. Returning score: .default.", v124, 2u);
          MEMORY[0x1E12A2F50](v124, -1, -1);

          outlined destroy of CarCommandsAffinityScoringData(v107);
          (*(v47 + 8))(v138, v143);
          (*(v151 + 8))(v144, v145);
        }

        else
        {

          outlined destroy of CarCommandsAffinityScoringData(v107);
          (*(v47 + 8))(v138, v143);
          (*(v151 + 8))(v144, v145);
          return 2;
        }

        return v91;
      }

      if (specialized CarCommandsAffinityScorer.hasLowProbabilityMatch(on:with:in:)(v109, v107))
      {
        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v125 = type metadata accessor for Logger();
        __swift_project_value_buffer(v125, static Logger.executor);
        v126 = Logger.logObject.getter();
        v127 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v126, v127))
        {
          v128 = swift_slowAlloc();
          *v128 = 0;
          _os_log_impl(&dword_1DC659000, v126, v127, "CarCommandsAffinityScorer found a match with low probability of belonging to CarCommands. Returning score: .low.", v128, 2u);
          MEMORY[0x1E12A2F50](v128, -1, -1);
        }

        outlined destroy of CarCommandsAffinityScoringData(v107);
        (*(v47 + 8))(v138, v143);
        (*(v151 + 8))(v144, v145);
        return 1;
      }

      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v129 = type metadata accessor for Logger();
      __swift_project_value_buffer(v129, static Logger.executor);
      v130 = Logger.logObject.getter();
      v131 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v130, v131))
      {
        v132 = swift_slowAlloc();
        *v132 = 0;
        _os_log_impl(&dword_1DC659000, v130, v131, "CarCommandsAffinityScorer found no CarCommands identifiers. Returning score: .unsupported", v132, 2u);
        MEMORY[0x1E12A2F50](v132, -1, -1);
      }

      outlined destroy of CarCommandsAffinityScoringData(v107);
    }

    else
    {

      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v101 = type metadata accessor for Logger();
      __swift_project_value_buffer(v101, static Logger.executor);
      v102 = Logger.logObject.getter();
      v103 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        *v104 = 0;
        _os_log_impl(&dword_1DC659000, v102, v103, "CarCommandsAffinityScorer could not extract UsoTask. Returning score: .unsupported", v104, 2u);
        MEMORY[0x1E12A2F50](v104, -1, -1);
      }
    }

    (*(v47 + 8))(v138, v143);
LABEL_51:
    (*(v151 + 8))(v144, v145);
    return 0;
  }

  (*(v36 + 96))(v39, v35);
  v41 = v151;
  (*(v151 + 32))(v16, v39, v13);
  NLIntent.domainNode.getter();
  v42 = type metadata accessor for NonTerminalIntentNode();
  v43 = *(v42 - 8);
  v44 = (*(v43 + 48))(v12, 1, v42);
  v45 = v13;
  v13 = v41;
  v46 = v16;
  v47 = v45;
  if (v44 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v12, &_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
    v29 = v152;
    goto LABEL_4;
  }

  v71 = NonTerminalIntentNode.ontologyNodeName.getter();
  v73 = v72;
  (*(v43 + 8))(v12, v42);
  v74 = v71 == 0x616D6D6F43726163;
  v29 = v152;
  if (v74 && v73 == 0xEB0000000073646ELL)
  {
  }

  else
  {
    v82 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v82 & 1) == 0)
    {
LABEL_4:
      if (one-time initialization token for executor == -1)
      {
LABEL_5:
        v48 = type metadata accessor for Logger();
        __swift_project_value_buffer(v48, static Logger.executor);

        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v154 = v29;
          v155[0] = v52;
          *v51 = 136315138;
          v153 = v150;

          v53 = String.init<A>(describing:)();
          v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, v155);

          *(v51 + 4) = v55;
          _os_log_impl(&dword_1DC659000, v49, v50, "%s received an NLv3 parse that does not contain a carCommands domain node. Returning score: .unsupported.", v51, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v52);
          MEMORY[0x1E12A2F50](v52, -1, -1);
          MEMORY[0x1E12A2F50](v51, -1, -1);
        }

        (*(v13 + 8))(v46, v47);
        return 0;
      }

LABEL_90:
      swift_once();
      goto LABEL_5;
    }
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v83 = type metadata accessor for Logger();
  __swift_project_value_buffer(v83, static Logger.executor);

  v84 = Logger.logObject.getter();
  v85 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v154 = v29;
    v155[0] = v87;
    *v86 = 136315138;
    v153 = v150;

    v88 = String.init<A>(describing:)();
    v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v89, v155);

    *(v86 + 4) = v90;
    _os_log_impl(&dword_1DC659000, v84, v85, "%s received an NLv3 parse with a carCommands domain node. Returning score: .override.", v86, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v87);
    MEMORY[0x1E12A2F50](v87, -1, -1);
    MEMORY[0x1E12A2F50](v86, -1, -1);
  }

  (*(v13 + 8))(v46, v47);
  return 4;
}

uint64_t CarCommandsAffinityScoringData.init(usoTask:)@<X0>(uint64_t a1@<X8>)
{
  *a1 = UsoTask.namesNodeAttachmentInfo()();
  *(a1 + 8) = v2;
  v3 = type metadata accessor for CarCommandsAffinityScoringData();
  v4 = UsoTask.settingSpanInfo()(a1 + *(v3 + 28));

  *(a1 + 16) = v4 & 1;
  return result;
}

uint64_t CarCommandsAffinityScorer.hasOverrideMatch(on:with:in:)(void (*a1)(void, void), unsigned __int8 *a2, unsigned __int8 *a3, void (*a4)(void, void), uint64_t a5)
{
  v313 = a4;
  v314 = a5;
  v310 = a2;
  v311 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology14AsrAlternativeVSgMd, &_s12SiriOntology14AsrAlternativeVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v293 = &v286 - v8;
  v297 = type metadata accessor for AsrAlternative();
  v294 = *(v297 - 8);
  v9 = *(v294 + 64);
  MEMORY[0x1EEE9AC00](v297);
  v288 = &v286 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v290 = &v286 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v291 = &v286 - v14;
  v309 = type metadata accessor for CarCommandsAffinityScoringData();
  v15 = *(*(v309 - 8) + 64);
  MEMORY[0x1EEE9AC00](v309);
  v305 = &v286 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v299 = &v286 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v300 = &v286 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v306 = &v286 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v308 = &v286 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v286 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v286 - v30;
  v32 = type metadata accessor for SpanProperty();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v292 = &v286 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v295 = &v286 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v289 = &v286 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v298 = &v286 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v301 = &v286 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v302 = &v286 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v296 = &v286 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v304 = &v286 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v303 = &v286 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v307 = &v286 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v312 = &v286 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v286 - v57;
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v286 - v60;
  if (one-time initialization token for kDonatedVocabNamespaceMatches != -1)
  {
    swift_once();
  }

  v62 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySSG_SS9namespace_SSSg5valuets5NeverOTg5038_sS3SSgIggoo_S2S9namespace_AA5valuets5F174OIegnrzr_TR150_s12SiriOntology7UsoTaskC0A10KitRuntimeE35firstCarCommandsUserVocabIdentifier33_62490FE03E7AB891D874A741A997DD8CLLAA12SpanPropertyVSgvgSS_SSSgtSSXEfU_Tf3nnnpf_nTf1cn_n(static CarCommandsAffinityScorer.kDonatedVocabNamespaceMatches);
  UsoTask.firstUserEntityMatch(on:)(v62, v31);

  v63 = v33;
  v64 = *(v33 + 48);
  if (v64(v31, 1, v32) != 1)
  {
    (*(v63 + 32))(v61, v31, v32);
    v77 = v63;
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v78 = type metadata accessor for Logger();
    __swift_project_value_buffer(v78, static Logger.executor);
    v79 = *(v63 + 16);
    v79(v58, v61, v32);
    v80 = v314;

    v81 = Logger.logObject.getter();
    v82 = v32;
    v83 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v81, v83))
    {
      v84 = swift_slowAlloc();
      LODWORD(v310) = v83;
      v85 = v84;
      v311 = swift_slowAlloc();
      v316 = v80;
      v317 = v311;
      *v85 = 136315394;
      v315 = v313;

      v86 = String.init<A>(describing:)();
      v88 = v77;
      v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v87, &v317);

      *(v85 + 4) = v89;
      *(v85 + 12) = 2080;
      v79(v312, v58, v32);
      v90 = String.init<A>(describing:)();
      v92 = v91;
      v93 = *(v88 + 8);
      v93(v58, v82);
      v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v92, &v317);

      *(v85 + 14) = v94;
      _os_log_impl(&dword_1DC659000, v81, v310, "%s found user vocab identifier (%s)", v85, 0x16u);
      v95 = v311;
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v95, -1, -1);
      MEMORY[0x1E12A2F50](v85, -1, -1);

      v93(v61, v82);
    }

    else
    {

      v102 = *(v77 + 8);
      v102(v58, v32);
      v102(v61, v32);
    }

    return 1;
  }

  v65 = v63;
  outlined destroy of ReferenceResolutionClientProtocol?(v31, &_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
  v287 = a1;
  if (UsoTask.hasCarPlayCannedDialog.getter())
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v66 = type metadata accessor for Logger();
    __swift_project_value_buffer(v66, static Logger.executor);
    v67 = v314;

    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v68, v69))
    {
      goto LABEL_11;
    }

    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v316 = v67;
    v317 = v71;
    *v70 = 136315138;
    v315 = v313;

    v72 = String.init<A>(describing:)();
    v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v73, &v317);

    *(v70 + 4) = v74;
    _os_log_impl(&dword_1DC659000, v68, v69, "%s found CarPlay canned dialog", v70, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v71);
    goto LABEL_9;
  }

  v286 = v32;
  SiriEnvironment.currentDevice.getter();
  v96 = dispatch thunk of CurrentDevice.supportsVehicleData.getter();

  if ((v96 & 1) == 0)
  {
    return 0;
  }

  v97 = v310;
  v98 = *v310;
  if (*v310 || v310[16] == 1 && (outlined init with copy of ReferenceResolutionClientProtocol?(&v310[*(v309 + 28)], v28, &_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR), v103 = v64(v28, 1, v286), outlined destroy of ReferenceResolutionClientProtocol?(v28, &_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR), v103 == 1))
  {
    v99 = v308;
    outlined init with copy of ReferenceResolutionClientProtocol?(v97 + *(v309 + 28), v308, &_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
    v100 = v286;
    if (v64(v99, 1, v286) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v99, &_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
      v101 = v314;
    }

    else
    {
      v119 = v307;
      (*(v65 + 32))(v307, v99, v100);
      if ((v98 | 4) == 4)
      {
        v120 = v314;
        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v121 = type metadata accessor for Logger();
        __swift_project_value_buffer(v121, static Logger.executor);
        v122 = v65;
        v123 = *(v65 + 16);
        v124 = v303;
        v123(v303, v119, v100);

        v125 = Logger.logObject.getter();
        v126 = v119;
        v127 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v125, v127))
        {
          v128 = v100;
          v129 = swift_slowAlloc();
          v311 = swift_slowAlloc();
          v316 = v120;
          v317 = v311;
          *v129 = 136315394;
          v315 = v313;

          v130 = String.init<A>(describing:)();
          v132 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v130, v131, &v317);

          *(v129 + 4) = v132;
          *(v129 + 12) = 2080;
          v123(v312, v124, v128);
          v133 = String.init<A>(describing:)();
          v135 = v134;
          v136 = *(v122 + 8);
          v136(v124, v128);
          v137 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v133, v135, &v317);

          *(v129 + 14) = v137;
          _os_log_impl(&dword_1DC659000, v125, v127, "%s found a CarCommands setting match while connected to a vehicle that supports vehicle data (%s)", v129, 0x16u);
          v138 = v311;
          swift_arrayDestroy();
          MEMORY[0x1E12A2F50](v138, -1, -1);
          MEMORY[0x1E12A2F50](v129, -1, -1);

          v136(v307, v128);
          return 1;
        }

        v151 = *(v122 + 8);
        v151(v124, v100);
        v152 = v126;
        v153 = v100;
        goto LABEL_92;
      }

      (*(v65 + 8))(v119, v100);
      v101 = v314;
    }

    if ((specialized CarCommandsAffinityScorer.isAmbiguousTemperatureRequest(task:)() & 1) != 0 && (v98 | 4) == 4)
    {
      return 1;
    }

    v139 = v306;
    CarCommandsAffinityScorer.floatSettingPotentiallyMatchingVolume(task:)(v306);
    if (v64(v139, 1, v100) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v139, &_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
      v140 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of CarCommandsAffinityScorer.hasOverrideMatch(on:with:in:));
      outlined destroy of String(&unk_1F5824EB8);
      v141 = v300;
      UsoTask.firstSettingMatch(on:)(v140, v300);
      v142 = v141;
      v143 = v286;

      if (v64(v142, 1, v143) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v142, &_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
        goto LABEL_77;
      }

      v154 = v298;
      (*(v65 + 32))(v298, v142, v143);
      v155 = SpanProperty.valueString.getter();
      if (v156)
      {
        if (one-time initialization token for kFloatSettingValuesForVolume != -1)
        {
          v284 = v155;
          v285 = v156;
          swift_once();
          v155 = v284;
          v156 = v285;
        }

        v157 = specialized Set.contains(_:)(v155, v156, static CarCommandsAffinityScorer.kFloatSettingValuesForVolume);

        if (v157)
        {
          v158 = v286;
          if (one-time initialization token for executor != -1)
          {
            swift_once();
          }

          v159 = type metadata accessor for Logger();
          __swift_project_value_buffer(v159, static Logger.executor);
          v160 = v65;
          v161 = *(v65 + 16);
          v162 = v289;
          v163 = v298;
          v161(v289, v298, v158);

          v164 = Logger.logObject.getter();
          v165 = static os_log_type_t.debug.getter();

          if (!os_log_type_enabled(v164, v165))
          {
LABEL_90:

            v151 = *(v160 + 8);
            v151(v162, v158);
            v152 = v163;
            goto LABEL_91;
          }

          v166 = swift_slowAlloc();
          v314 = swift_slowAlloc();
          v316 = v101;
          v317 = v314;
          *v166 = 136315394;
          v315 = v313;

          v167 = String.init<A>(describing:)();
          v168 = v162;
          v170 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v167, v169, &v317);

          *(v166 + 4) = v170;
          *(v166 + 12) = 2080;
          v161(v312, v162, v158);
          v171 = String.init<A>(describing:)();
          v173 = v172;
          v174 = *(v160 + 8);
          v174(v168, v158);
          v175 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v171, v173, &v317);

          *(v166 + 14) = v175;
          _os_log_impl(&dword_1DC659000, v164, v165, "%s found a volume related setting state while connected to a vehicle that supports vehicle data (%s)", v166, 0x16u);
          v176 = v314;
          swift_arrayDestroy();
          MEMORY[0x1E12A2F50](v176, -1, -1);
          MEMORY[0x1E12A2F50](v166, -1, -1);

          v177 = v298;
LABEL_89:
          v174(v177, v158);
          return 1;
        }

        v143 = v286;
        (*(v65 + 8))(v154, v286);
      }

      else
      {
        (*(v65 + 8))(v154, v143);
      }

LABEL_77:
      v245 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #1 of CarCommandsAffinityScorer.hasOverrideMatch(on:with:in:));
      outlined destroy of String(&unk_1F5824EE8);
      v246 = v299;
      UsoTask.firstSettingMatch(on:)(v245, v299);

      if (v64(v246, 1, v143) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v246, &_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
LABEL_95:
        if (one-time initialization token for kRadioLabels == -1)
        {
          if (specialized UsoTask.isValidRadioParse(namespaces:)())
          {
            return 1;
          }
        }

        else
        {
          swift_once();
          if (specialized UsoTask.isValidRadioParse(namespaces:)())
          {
            return 1;
          }
        }

        if (UsoTask.verbString.getter() == 0x77726F4670696B73 && v270 == 0xEB00000000647261)
        {
          goto LABEL_99;
        }

        v271 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v271)
        {
          goto LABEL_101;
        }

        if (UsoTask.verbString.getter() == 0x6B63614270696B73 && v282 == 0xEC00000064726177)
        {
LABEL_99:

          goto LABEL_101;
        }

        v283 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v283)
        {
LABEL_101:
          SiriEnvironment.currentDevice.getter();
          v272 = dispatch thunk of CurrentDevice.carOwnsMainAudio.getter();

          if (v272)
          {
            if (one-time initialization token for executor != -1)
            {
              swift_once();
            }

            v273 = type metadata accessor for Logger();
            __swift_project_value_buffer(v273, static Logger.executor);

            v274 = v287;

            v68 = Logger.logObject.getter();
            v275 = static os_log_type_t.debug.getter();

            if (!os_log_type_enabled(v68, v275))
            {
              goto LABEL_11;
            }

            v70 = swift_slowAlloc();
            v71 = swift_slowAlloc();
            v316 = v101;
            v317 = v71;
            *v70 = 136315394;
            v315 = v313;

            v276 = String.init<A>(describing:)();
            v278 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v276, v277, &v317);

            *(v70 + 4) = v278;
            *(v70 + 12) = 2080;
            v315 = v274;
            type metadata accessor for UsoTask();

            v279 = String.init<A>(describing:)();
            v281 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v279, v280, &v317);

            *(v70 + 14) = v281;
            _os_log_impl(&dword_1DC659000, v68, v275, "%s found that the current device is connected to a vehicle, and the vehicle owns the main audio, and the task is a skip forward or backward task (%s)", v70, 0x16u);
            swift_arrayDestroy();
LABEL_9:
            MEMORY[0x1E12A2F50](v71, -1, -1);
            v75 = v70;
LABEL_10:
            MEMORY[0x1E12A2F50](v75, -1, -1);
LABEL_11:

            return 1;
          }
        }

        return 0;
      }

      v247 = v143;
      v248 = v65;
      v163 = v295;
      (*(v65 + 32))(v295, v246, v247);
      v249 = SpanProperty.valueString.getter();
      if (!v250)
      {
        (*(v65 + 8))(v163, v247);
        goto LABEL_95;
      }

      if (v249 == 0x6C6F765F6C6C6163 && v250 == 0xEB00000000656D75)
      {

        v162 = v292;
      }

      else
      {
        v251 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v162 = v292;
        if ((v251 & 1) == 0)
        {
          (*(v248 + 8))(v163, v286);
          goto LABEL_95;
        }
      }

      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v252 = type metadata accessor for Logger();
      __swift_project_value_buffer(v252, static Logger.executor);
      v160 = v248;
      v253 = *(v248 + 16);
      v158 = v286;
      v253(v162, v163, v286);

      v164 = Logger.logObject.getter();
      v254 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v164, v254))
      {
        v255 = swift_slowAlloc();
        v314 = swift_slowAlloc();
        v316 = v101;
        v317 = v314;
        *v255 = 136315394;
        v315 = v313;

        v256 = String.init<A>(describing:)();
        v257 = v162;
        v259 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v256, v258, &v317);

        *(v255 + 4) = v259;
        *(v255 + 12) = 2080;
        v253(v312, v162, v158);
        v260 = String.init<A>(describing:)();
        v262 = v261;
        v174 = *(v160 + 8);
        v174(v257, v158);
        v263 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v260, v262, &v317);

        *(v255 + 14) = v263;
        _os_log_impl(&dword_1DC659000, v164, v254, "%s found a volume related phone setting while connected to a vehicle that supports vehicle data (%s)", v255, 0x16u);
        v264 = v314;
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v264, -1, -1);
        MEMORY[0x1E12A2F50](v255, -1, -1);

        v177 = v295;
        goto LABEL_89;
      }

      goto LABEL_90;
    }

    v144 = v65;
    v145 = *(v65 + 32);
    v146 = v304;
    v145(v304, v139, v100);
    v147 = SpanProperty.valueString.getter();
    v149 = v301;
    v150 = v302;
    if (v148)
    {
      if (v147 == 0x707954616964656DLL && v148 == 0xE900000000000065)
      {

LABEL_55:
        v179 = UsoTask.settingSpans()();
        if (v179)
        {
          v180 = v179;
          v181 = v294;
          v182 = v293;
          if (one-time initialization token for kFloatSettingValuesForVolume != -1)
          {
            swift_once();
          }

          Array<A>.firstSpanAlternativeWithKeyContainingAny(of:)(static CarCommandsAffinityScorer.kFloatSettingValuesForVolume, v180, v182);

          v183 = v297;
          if ((*(v181 + 48))(v182, 1, v297) != 1)
          {
            v184 = v291;
            (*(v181 + 32))(v291, v182, v183);
            if (one-time initialization token for executor != -1)
            {
              swift_once();
            }

            v185 = type metadata accessor for Logger();
            __swift_project_value_buffer(v185, static Logger.executor);
            v186 = *(v144 + 16);
            v186(v150, v146, v286);
            v187 = v144;
            v188 = v290;
            v311 = *(v181 + 16);
            (v311)(v290, v184, v183);

            v189 = Logger.logObject.getter();
            v190 = static os_log_type_t.debug.getter();

            LODWORD(v314) = v190;
            if (os_log_type_enabled(v189, v190))
            {
              v191 = swift_slowAlloc();
              v310 = swift_slowAlloc();
              v316 = v101;
              v317 = v310;
              *v191 = 136315906;
              v315 = v313;

              v192 = String.init<A>(describing:)();
              v194 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v192, v193, &v317);

              *(v191 + 4) = v194;
              *(v191 + 12) = 2080;
              *(v191 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x707954616964656DLL, 0xE900000000000065, &v317);
              *(v191 + 22) = 2080;
              v195 = v302;
              v196 = v286;
              v186(v312, v302, v286);
              v197 = String.init<A>(describing:)();
              v199 = v198;
              v313 = *(v187 + 8);
              v313(v195, v196);
              v200 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v197, v199, &v317);

              *(v191 + 24) = v200;
              *(v191 + 32) = 2080;
              v312 = v189;
              v201 = v290;
              v202 = v297;
              (v311)(v288, v290, v297);
              v203 = String.init<A>(describing:)();
              v205 = v204;
              v206 = *(v181 + 8);
              v206(v201, v202);
              v207 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v203, v205, &v317);

              *(v191 + 34) = v207;
              v208 = v312;
              _os_log_impl(&dword_1DC659000, v312, v314, "%s found a volume setting name %s while connected to a vehicle that supports vehicle data (%s), and valid alternative with %s", v191, 0x2Au);
              v209 = v310;
              swift_arrayDestroy();
              MEMORY[0x1E12A2F50](v209, -1, -1);
              MEMORY[0x1E12A2F50](v191, -1, -1);

              v206(v291, v202);
              v313(v304, v196);
            }

            else
            {

              v265 = *(v181 + 8);
              v266 = v188;
              v267 = v297;
              v265(v266, v297);
              v268 = *(v187 + 8);
              v269 = v286;
              v268(v302, v286);
              v265(v184, v267);
              v268(v304, v269);
            }

            return 1;
          }
        }

        else
        {
          v182 = v293;
          (*(v294 + 56))(v293, 1, 1, v297);
        }

        outlined destroy of ReferenceResolutionClientProtocol?(v182, &_s12SiriOntology14AsrAlternativeVSgMd, &_s12SiriOntology14AsrAlternativeVSgMR);
        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v225 = type metadata accessor for Logger();
        __swift_project_value_buffer(v225, static Logger.executor);
        v226 = v144;
        v227 = *(v144 + 16);
        v228 = v146;
        v229 = v146;
        v230 = v286;
        v227(v149, v228, v286);

        v231 = Logger.logObject.getter();
        v232 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v231, v232))
        {
          v233 = swift_slowAlloc();
          v314 = swift_slowAlloc();
          v316 = v101;
          v317 = v314;
          *v233 = 136315650;
          v315 = v313;

          v234 = String.init<A>(describing:)();
          v236 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v234, v235, &v317);

          *(v233 + 4) = v236;
          *(v233 + 12) = 2080;
          *(v233 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x707954616964656DLL, 0xE900000000000065, &v317);
          *(v233 + 22) = 2080;
          v237 = v149;
          v227(v312, v149, v230);
          v238 = String.init<A>(describing:)();
          v240 = v239;
          v241 = *(v226 + 8);
          v241(v237, v230);
          v242 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v238, v240, &v317);

          *(v233 + 24) = v242;
          _os_log_impl(&dword_1DC659000, v231, v232, "%s found a volume related setting %s while connected to a vehicle that supports vehicle data (%s), but failed the alternative check", v233, 0x20u);
          v243 = v314;
          swift_arrayDestroy();
          MEMORY[0x1E12A2F50](v243, -1, -1);
          MEMORY[0x1E12A2F50](v233, -1, -1);

          v241(v304, v230);
        }

        else
        {

          v244 = *(v226 + 8);
          v244(v149, v230);
          v244(v229, v230);
        }

        return 0;
      }

      v178 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v178)
      {
        goto LABEL_55;
      }
    }

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v210 = type metadata accessor for Logger();
    __swift_project_value_buffer(v210, static Logger.executor);
    v211 = v144;
    v212 = *(v144 + 16);
    v213 = v296;
    v158 = v286;
    v212(v296, v146, v286);

    v214 = Logger.logObject.getter();
    v215 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v214, v215))
    {

      v151 = *(v211 + 8);
      v151(v213, v158);
      v152 = v146;
LABEL_91:
      v153 = v158;
LABEL_92:
      v151(v152, v153);
      return 1;
    }

    v216 = swift_slowAlloc();
    v314 = swift_slowAlloc();
    v316 = v101;
    v317 = v314;
    *v216 = 136315394;
    v315 = v313;

    v217 = String.init<A>(describing:)();
    v219 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v217, v218, &v317);

    *(v216 + 4) = v219;
    *(v216 + 12) = 2080;
    v212(v312, v213, v158);
    v220 = String.init<A>(describing:)();
    v222 = v221;
    v174 = *(v211 + 8);
    v174(v213, v158);
    v223 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v220, v222, &v317);

    *(v216 + 14) = v223;
    _os_log_impl(&dword_1DC659000, v214, v215, "%s found a volume setting name while connected to a vehicle that supports vehicle data (%s)", v216, 0x16u);
    v224 = v314;
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v224, -1, -1);
    MEMORY[0x1E12A2F50](v216, -1, -1);

    v177 = v304;
    goto LABEL_89;
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v104 = type metadata accessor for Logger();
  __swift_project_value_buffer(v104, static Logger.executor);
  v105 = v305;
  outlined init with copy of CarCommandsAffinityScoringData(v97, v305);
  v106 = v314;

  v68 = Logger.logObject.getter();
  v107 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v68, v107))
  {
    v108 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v316 = v106;
    v317 = v109;
    *v108 = 136315394;
    v315 = v313;

    v110 = String.init<A>(describing:)();
    v112 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v110, v111, &v317);

    *(v108 + 4) = v112;
    *(v108 + 12) = 2080;
    v113 = *(v105 + 8);
    v114 = type metadata accessor for UsoEntitySpan();
    v115 = MEMORY[0x1E12A16D0](v113, v114);
    v117 = v116;
    outlined destroy of CarCommandsAffinityScoringData(v105);
    v118 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v115, v117, &v317);

    *(v108 + 14) = v118;
    _os_log_impl(&dword_1DC659000, v68, v107, "%s found fully attached CarCommandsUserEntityNouns while connected to a vehicle that supports vehicle data (%s)", v108, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v109, -1, -1);
    v75 = v108;
    goto LABEL_10;
  }

  outlined destroy of CarCommandsAffinityScoringData(v105);
  return 1;
}