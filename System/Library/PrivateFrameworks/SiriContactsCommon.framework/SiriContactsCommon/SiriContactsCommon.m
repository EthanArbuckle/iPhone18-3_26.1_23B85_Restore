uint64_t one-time initialization function for decoder()
{
  v0 = type metadata accessor for JSONDecoder();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = JSONDecoder.init()();
  static PhonemeDataParser.decoder = result;
  return result;
}

uint64_t static PhonemeDataParser.parse(from:)(void *a1)
{
  v4 = type metadata accessor for String.Encoding();
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5();
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.siriContacts);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = v31;
    *v14 = 136315138;
    outlined bridged method (pb) of @objc CNContact.phonemeData.getter(v11, &selRef_phonemeData);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v15 = String.init<A>(describing:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v32);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_9(&dword_26683A000, v17, v18, "[PhonemeDataParser] phonemeData: %s");
    __swift_destroy_boxed_opaque_existential_0(v31);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  outlined bridged method (pb) of @objc CNContact.phonemeData.getter(v11, &selRef_phonemeData);
  if (v19 && (static String.Encoding.utf8.getter(), v20 = OUTLINED_FUNCTION_8(), v22 = v21, , (*(v7 + 8))(v2, v1), v22 >> 60 != 15))
  {
    v29 = CNContact.formattedFullName.getter();
    OUTLINED_FUNCTION_1(v29, v30);

    return outlined consume of Data?(v20, v22);
  }

  else
  {
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_7(&dword_26683A000, v25, v26, "phonemeData string is empty");
      OUTLINED_FUNCTION_6();
    }

    v27 = type metadata accessor for PhonemeData();
    return OUTLINED_FUNCTION_10(v27);
  }
}

{
  v4 = type metadata accessor for String.Encoding();
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5();
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.siriContacts);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = v31;
    *v14 = 136315138;
    outlined bridged method (pb) of @objc CNContact.phonemeData.getter(v11, &selRef_phonemeData);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v15 = String.init<A>(describing:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v32);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_9(&dword_26683A000, v17, v18, "[PhonemeDataParser] phonemeData: %s");
    __swift_destroy_boxed_opaque_existential_0(v31);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  outlined bridged method (pb) of @objc CNContact.phonemeData.getter(v11, &selRef_phonemeData);
  if (v19 && (static String.Encoding.utf8.getter(), v20 = OUTLINED_FUNCTION_8(), v22 = v21, , (*(v7 + 8))(v2, v1), v22 >> 60 != 15))
  {
    v29 = outlined bridged method (pb) of @objc CNContact.phonemeData.getter(v11, &selRef_fullName);
    OUTLINED_FUNCTION_1(v29, v30);

    return outlined consume of Data?(v20, v22);
  }

  else
  {
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_7(&dword_26683A000, v25, v26, "[PhonemeDataParser] phonemeData string is empty");
      OUTLINED_FUNCTION_6();
    }

    v27 = type metadata accessor for PhonemeData();
    return OUTLINED_FUNCTION_10(v27);
  }
}

uint64_t static PhonemeDataParser.decodePhonemeDataString(_:_:)@<X0>(uint64_t a1@<X2>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v55 = a1;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine11PhonemeDataVSgMd, &_s16SiriDialogEngine11PhonemeDataVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v7 = &v48 - v6;
  v8 = type metadata accessor for PhonemeData();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = (MEMORY[0x28223BE20])();
  v54 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v48 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v48 - v16;
  if (one-time initialization token for decoder != -1)
  {
    swift_once();
  }

  lazy protocol witness table accessor for type PhonemeData and conformance PhonemeData();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  v52 = *(v9 + 32);
  v53 = v9 + 32;
  v52(v17, v7, v8);
  if (one-time initialization token for siriContacts != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v19 = __swift_project_value_buffer(v18, static Logger.siriContacts);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();

  v22 = os_log_type_enabled(v20, v21);
  v51 = v15;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v50 = v19;
    v24 = v23;
    v49 = swift_slowAlloc();
    v56[1] = a2;
    v57 = v49;
    *v24 = 136315138;
    v56[0] = v55;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v25 = String.init<A>(describing:)();
    v27 = v17;
    v28 = v9;
    v29 = a3;
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v57);

    *(v24 + 4) = v30;
    a3 = v29;
    v9 = v28;
    v17 = v27;
    _os_log_impl(&dword_26683A000, v20, v21, "[PhonemeDataParser] fullName: %s", v24, 0xCu);
    v31 = v49;
    __swift_destroy_boxed_opaque_existential_0(v49);
    MEMORY[0x26D5DEEF0](v31, -1, -1);
    MEMORY[0x26D5DEEF0](v24, -1, -1);
  }

  if (a2 && (v32._countAndFlagsBits = v55, v32._object = a2, PhonemeData.validateChecksum(fullName:)(v32)))
  {
    v55 = a3;
    v33 = *(v9 + 16);
    v34 = v51;
    v33(v51, v17, v8);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v56[0] = v50;
      *v37 = 136315138;
      v33(v54, v34, v8);
      v38 = String.init<A>(describing:)();
      v40 = v39;
      (*(v9 + 8))(v34, v8);
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, v56);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_26683A000, v35, v36, "[PhonemeDataParser] after: %s", v37, 0xCu);
      v42 = v50;
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x26D5DEEF0](v42, -1, -1);
      MEMORY[0x26D5DEEF0](v37, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v34, v8);
    }

    a3 = v55;
    v52(v55, v17, v8);
    v46 = 0;
  }

  else
  {
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_26683A000, v43, v44, "[PhonemeDataParser] phonemeData checksum is invalid", v45, 2u);
      MEMORY[0x26D5DEEF0](v45, -1, -1);
    }

    (*(v9 + 8))(v17, v8);
    v46 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v46, 1, v8);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t protocol witness for SetAlgebra.init() in conformance NSPersonNameComponentsFormatterOptions@<X0>(uint64_t *a1@<X8>)
{
  result = specialized OptionSet<>.init()();
  *a1 = result;
  return result;
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
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

  __swift_destroy_boxed_opaque_existential_0(v11);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriContactsCommon9IDSHelperO12SearchHandle33_C9B329DCF768497C18D5DF18E4832F1DLLVGMd, &_ss23_ContiguousArrayStorageCy18SiriContactsCommon9IDSHelperO12SearchHandle33_C9B329DCF768497C18D5DF18E4832F1DLLVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[72 * v8] <= v12)
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriContactsCommon15FaceTimeHandlesV14FacetimeHandleVGMd, &_ss23_ContiguousArrayStorageCy18SiriContactsCommon15FaceTimeHandlesV14FacetimeHandleVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[56 * v8] <= v12)
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t outlined bridged method (pb) of @objc CNContact.phonemeData.getter(void *a1, SEL *a2)
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

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t lazy protocol witness table accessor for type PhonemeData and conformance PhonemeData()
{
  result = lazy protocol witness table cache variable for type PhonemeData and conformance PhonemeData;
  if (!lazy protocol witness table cache variable for type PhonemeData and conformance PhonemeData)
  {
    type metadata accessor for PhonemeData();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhonemeData and conformance PhonemeData);
  }

  return result;
}

uint64_t outlined destroy of PhonemeData?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine11PhonemeDataVSgMd, &_s16SiriDialogEngine11PhonemeDataVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1(uint64_t a1, void *a2)
{

  return static PhonemeDataParser.decodePhonemeDataString(_:_:)(a1, a2, v2);
}

uint64_t OUTLINED_FUNCTION_2()
{
}

void OUTLINED_FUNCTION_6()
{

  JUMPOUT(0x26D5DEEF0);
}

void OUTLINED_FUNCTION_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_8()
{

  return MEMORY[0x28211E8E0](v0, 0, v1, v2);
}

void OUTLINED_FUNCTION_9(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_10(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t static SiriHighlightedPropertyType.enumIdentifier.getter()
{
  swift_beginAccess();
  v0 = static SiriHighlightedPropertyType.enumIdentifier;

  return v0;
}

uint64_t static SiriHighlightedPropertyType.enumIdentifier.setter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  static SiriHighlightedPropertyType.enumIdentifier = a1;
  off_28009C780 = a2;
}

uint64_t key path getter for static SiriHighlightedPropertyType.enumIdentifier : SiriHighlightedPropertyType.Type@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_28009C780;
  *a1 = static SiriHighlightedPropertyType.enumIdentifier;
  a1[1] = v2;
}

uint64_t key path setter for static SiriHighlightedPropertyType.enumIdentifier : SiriHighlightedPropertyType.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  static SiriHighlightedPropertyType.enumIdentifier = v2;
  off_28009C780 = v1;
}

SiriContactsCommon::SiriHighlightedPropertyType_optional __swiftcall SiriHighlightedPropertyType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SiriHighlightedPropertyType.init(rawValue:), v3);

  v7 = 7;
  if (v5 < 7)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t SiriHighlightedPropertyType.rawValue.getter()
{
  result = 0x6D754E656E6F6870;
  switch(*v0)
  {
    case 1:
      result = 0x6464416C69616D65;
      break;
    case 2:
      result = 0x64416C6174736F70;
      break;
    case 3:
      result = 0x7961646874726962;
      break;
    case 4:
      result = 0x52746361746E6F63;
      break;
    case 5:
      result = 1702129518;
      break;
    case 6:
      result = 0x6D6F74737563;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SiriHighlightedPropertyType(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return specialized == infix<A>(_:_:)();
}

unint64_t lazy protocol witness table accessor for type SiriHighlightedPropertyType and conformance SiriHighlightedPropertyType()
{
  result = lazy protocol witness table cache variable for type SiriHighlightedPropertyType and conformance SiriHighlightedPropertyType;
  if (!lazy protocol witness table cache variable for type SiriHighlightedPropertyType and conformance SiriHighlightedPropertyType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriHighlightedPropertyType and conformance SiriHighlightedPropertyType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriHighlightedPropertyType and conformance SiriHighlightedPropertyType;
  if (!lazy protocol witness table cache variable for type SiriHighlightedPropertyType and conformance SiriHighlightedPropertyType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriHighlightedPropertyType and conformance SiriHighlightedPropertyType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriHighlightedPropertyType and conformance SiriHighlightedPropertyType;
  if (!lazy protocol witness table cache variable for type SiriHighlightedPropertyType and conformance SiriHighlightedPropertyType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriHighlightedPropertyType and conformance SiriHighlightedPropertyType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriHighlightedPropertyType and conformance SiriHighlightedPropertyType;
  if (!lazy protocol witness table cache variable for type SiriHighlightedPropertyType and conformance SiriHighlightedPropertyType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriHighlightedPropertyType and conformance SiriHighlightedPropertyType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriHighlightedPropertyType and conformance SiriHighlightedPropertyType;
  if (!lazy protocol witness table cache variable for type SiriHighlightedPropertyType and conformance SiriHighlightedPropertyType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriHighlightedPropertyType and conformance SiriHighlightedPropertyType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriHighlightedPropertyType and conformance SiriHighlightedPropertyType;
  if (!lazy protocol witness table cache variable for type SiriHighlightedPropertyType and conformance SiriHighlightedPropertyType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriHighlightedPropertyType and conformance SiriHighlightedPropertyType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriHighlightedPropertyType and conformance SiriHighlightedPropertyType;
  if (!lazy protocol witness table cache variable for type SiriHighlightedPropertyType and conformance SiriHighlightedPropertyType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriHighlightedPropertyType and conformance SiriHighlightedPropertyType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriHighlightedPropertyType and conformance SiriHighlightedPropertyType;
  if (!lazy protocol witness table cache variable for type SiriHighlightedPropertyType and conformance SiriHighlightedPropertyType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriHighlightedPropertyType and conformance SiriHighlightedPropertyType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriHighlightedPropertyType and conformance SiriHighlightedPropertyType;
  if (!lazy protocol witness table cache variable for type SiriHighlightedPropertyType and conformance SiriHighlightedPropertyType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriHighlightedPropertyType and conformance SiriHighlightedPropertyType);
  }

  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SiriHighlightedPropertyType@<X0>(uint64_t *a1@<X8>)
{
  result = SiriHighlightedPropertyType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type [SiriHighlightedPropertyType] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [SiriHighlightedPropertyType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [SiriHighlightedPropertyType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay18SiriContactsCommon0A23HighlightedPropertyTypeOGMd, &_sSay18SiriContactsCommon0A23HighlightedPropertyTypeOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SiriHighlightedPropertyType] and conformance [A]);
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

uint64_t protocol witness for static IntentValueTypeIdentifiable.lnValueType.getter in conformance SiriHighlightedPropertyType(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriHighlightedPropertyType and conformance SiriHighlightedPropertyType();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t protocol witness for IntentValue.lnValue.getter in conformance SiriHighlightedPropertyType(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriHighlightedPropertyType and conformance SiriHighlightedPropertyType();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t protocol witness for static IntentValue.canConvert(_:) in conformance SiriHighlightedPropertyType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type SiriHighlightedPropertyType and conformance SiriHighlightedPropertyType();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t protocol witness for static IntentValue.from(_:context:) in conformance SiriHighlightedPropertyType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type SiriHighlightedPropertyType and conformance SiriHighlightedPropertyType();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t protocol witness for static IntentValueSequenceElement.canConvertFrom(_:) in conformance SiriHighlightedPropertyType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type SiriHighlightedPropertyType and conformance SiriHighlightedPropertyType();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

uint64_t getEnumTagSinglePayload for SiriHighlightedPropertyType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SiriHighlightedPropertyType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        JUMPOUT(0x26683DB08);
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, char a2)
{
  v2 = 6645601;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 6645601;
  switch(v4)
  {
    case 1:
      v3 = 0xE800000000000000;
      v5 = OUTLINED_FUNCTION_8_0();
      break;
    case 2:
      v5 = OUTLINED_FUNCTION_2_0();
      break;
    case 3:
      v3 = 0xE800000000000000;
      v6 = 0x614E6C6C7566;
      goto LABEL_6;
    case 4:
      v3 = 0xE800000000000000;
      v6 = 0x616E6B63696ELL;
LABEL_6:
      v5 = v6 & 0xFFFFFFFFFFFFLL | 0x656D000000000000;
      break;
    case 5:
      v5 = 0x617A696E6167726FLL;
      v3 = 0xEC0000006E6F6974;
      break;
    case 6:
      v5 = 0x6D754E656E6F6870;
      v3 = 0xEB00000000726562;
      break;
    case 7:
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_4_0();
      break;
    case 8:
      v3 = 0xE700000000000000;
      v5 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  v7 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v7 = 0xE800000000000000;
      OUTLINED_FUNCTION_6_0();
      break;
    case 2:
      OUTLINED_FUNCTION_0_0();
      break;
    case 3:
      v7 = 0xE800000000000000;
      v8 = 0x614E6C6C7566;
      goto LABEL_16;
    case 4:
      v7 = 0xE800000000000000;
      v8 = 0x616E6B63696ELL;
LABEL_16:
      v2 = v8 & 0xFFFFFFFFFFFFLL | 0x656D000000000000;
      break;
    case 5:
      v2 = 0x617A696E6167726FLL;
      v7 = 0xEC0000006E6F6974;
      break;
    case 6:
      OUTLINED_FUNCTION_3_0();
      v7 = 0xEB00000000726562;
      break;
    case 7:
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_1_0();
      break;
    case 8:
      v7 = 0xE700000000000000;
      v2 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

{
  v2 = 0x6567617373656DLL;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x6567617373656DLL;
  switch(v4)
  {
    case 1:
      v3 = 0xE400000000000000;
      v5 = 1819042147;
      break;
    case 2:
      v5 = 0x6C61436F65646976;
      v3 = 0xE90000000000006CLL;
      break;
    case 3:
      v5 = OUTLINED_FUNCTION_2_0();
      break;
    case 4:
      v3 = 0xE800000000000000;
      v5 = 0x657461676976616ELL;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE400000000000000;
      v2 = 1819042147;
      break;
    case 2:
      OUTLINED_FUNCTION_9_0();
      v6 = 0xE90000000000006CLL;
      break;
    case 3:
      OUTLINED_FUNCTION_0_0();
      break;
    case 4:
      v6 = 0xE800000000000000;
      v2 = 0x657461676976616ELL;
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

uint64_t specialized == infix<A>(_:_:)()
{
  v0 = 0xEB00000000726562;
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  v5 = v2;
  v6 = 0xEB00000000726562;
  switch(v4)
  {
    case 1:
      v5 = 0x6464416C69616D65;
      v6 = 0xEC00000073736572;
      break;
    case 2:
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_1_0();
      break;
    case 3:
      v6 = 0xE800000000000000;
      v5 = OUTLINED_FUNCTION_8_0();
      break;
    case 4:
      v5 = 0x52746361746E6F63;
      v6 = 0xEF6E6F6974616C65;
      break;
    case 5:
      v6 = 0xE400000000000000;
      v5 = 1702129518;
      break;
    case 6:
      v6 = 0xE600000000000000;
      v5 = 0x6D6F74737563;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      v2 = 0x6464416C69616D65;
      v0 = 0xEC00000073736572;
      break;
    case 2:
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_4_0();
      break;
    case 3:
      v0 = 0xE800000000000000;
      OUTLINED_FUNCTION_6_0();
      break;
    case 4:
      v2 = 0x52746361746E6F63;
      v0 = 0xEF6E6F6974616C65;
      break;
    case 5:
      v0 = 0xE400000000000000;
      v2 = 1702129518;
      break;
    case 6:
      v0 = 0xE600000000000000;
      v2 = 0x6D6F74737563;
      break;
    default:
      break;
  }

  if (v5 == v2 && v6 == v0)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t SiriContactsActionType.id.getter()
{
  result = 0x6567617373656DLL;
  switch(*v0)
  {
    case 1:
      result = 1819042147;
      break;
    case 2:
      result = 0x6C61436F65646976;
      break;
    case 3:
      result = 0x6C69616D65;
      break;
    case 4:
      result = 0x657461676976616ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t SiriContactsActionType.isCallable.getter()
{
  v1 = *v0;
  v2 = 1;
  switch(*v0)
  {
    case 1:
      goto LABEL_6;
    default:
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v3)
      {
        v2 = 1;
      }

      else
      {
        v2 = 1;
        switch(v1)
        {
          case 0:
          case 1:
          case 3:
          case 4:
            OUTLINED_FUNCTION_9_0();
            v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
            break;
          case 2:
            break;
          default:
            JUMPOUT(0);
        }

LABEL_6:
      }

      return v2 & 1;
  }
}

SiriContactsCommon::SiriContactsActionType_optional __swiftcall SiriContactsActionType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SiriContactsActionType.init(rawValue:), v3);

  v7 = 5;
  if (v5 < 5)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t _s18SiriContactsCommon0aB10ActionTypeOs12IdentifiableAAsADP2id2IDQzvgTW_0@<X0>(uint64_t *a1@<X8>)
{
  result = SiriContactsActionType.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type SiriContactsActionType and conformance SiriContactsActionType()
{
  result = lazy protocol witness table cache variable for type SiriContactsActionType and conformance SiriContactsActionType;
  if (!lazy protocol witness table cache variable for type SiriContactsActionType and conformance SiriContactsActionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriContactsActionType and conformance SiriContactsActionType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriContactsActionType and conformance SiriContactsActionType;
  if (!lazy protocol witness table cache variable for type SiriContactsActionType and conformance SiriContactsActionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriContactsActionType and conformance SiriContactsActionType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriContactsActionType and conformance SiriContactsActionType;
  if (!lazy protocol witness table cache variable for type SiriContactsActionType and conformance SiriContactsActionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriContactsActionType and conformance SiriContactsActionType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriContactsActionType and conformance SiriContactsActionType;
  if (!lazy protocol witness table cache variable for type SiriContactsActionType and conformance SiriContactsActionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriContactsActionType and conformance SiriContactsActionType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [SiriContactsActionType] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [SiriContactsActionType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [SiriContactsActionType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay18SiriContactsCommon0aB10ActionTypeOGMd, &_sSay18SiriContactsCommon0aB10ActionTypeOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SiriContactsActionType] and conformance [A]);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriContactsActionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SiriContactsActionType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        JUMPOUT(0x26683E754);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t static IDSHelper.format(emailAddresses:phoneNumbers:)(unint64_t a1, unint64_t a2)
{
  v3 = 0;
  v4 = MEMORY[0x277D84F90];
  v62 = MEMORY[0x277D84F90];
  result = specialized Array._getCount()(a1);
  v55 = result;
  v52 = a1;
  v53 = a1 & 0xC000000000000001;
  v51 = a1 & 0xFFFFFFFFFFFFFF8;
  v6 = &off_279BD2000;
  while (v55 != v3)
  {
    if (v53)
    {
      result = MEMORY[0x26D5DE6C0](v3, v52);
    }

    else
    {
      if (v3 >= *(v51 + 16))
      {
        goto LABEL_42;
      }

      result = *(v52 + 8 * v3 + 32);
    }

    v7 = result;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      return result;
    }

    v8 = [result v6[66]];
    v9 = MEMORY[0x26D5DEA20]();

    if (v9)
    {
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0;
    }

    v13 = [v7 label];
    if (v13)
    {
      v14 = v13;
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v16;
      v57 = v15;
    }

    else
    {
      v56 = 0xE000000000000000;
      v57 = 0;
    }

    v17 = [v7 v6[66]];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = [v7 identifier];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    if (v12)
    {
      v25 = v10;
    }

    else
    {
      v25 = 0;
    }

    if (v12)
    {
      v26 = v12;
    }

    else
    {
      v26 = 0xE000000000000000;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      v31 = *(v4 + 16);
      v32 = OUTLINED_FUNCTION_6_1();
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v32, v33, v34, v4);
      v4 = result;
    }

    v28 = *(v4 + 16);
    v27 = *(v4 + 24);
    if (v28 >= v27 >> 1)
    {
      v35 = OUTLINED_FUNCTION_8_1(v27);
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v35, v36, v37, v4);
      v4 = result;
    }

    *(v4 + 16) = v28 + 1;
    v29 = v4 + 72 * v28;
    *(v29 + 32) = 0;
    v30 = *(__src + 3);
    *(v29 + 33) = __src[0];
    *(v29 + 36) = v30;
    *(v29 + 40) = v57;
    *(v29 + 48) = v56;
    *(v29 + 56) = v18;
    *(v29 + 64) = v20;
    *(v29 + 72) = v22;
    *(v29 + 80) = v24;
    *(v29 + 88) = v25;
    *(v29 + 96) = v26;
    ++v3;
    v6 = &off_279BD2000;
  }

  specialized Array.append<A>(contentsOf:)(v4);
  result = specialized Array._getCount()(a2);
  v38 = result;
  v39 = 0;
  v40 = MEMORY[0x277D84F90];
  while (v38 != v39)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D5DE6C0](v39, a2);
    }

    else
    {
      if (v39 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_44;
      }

      result = *(a2 + 8 * v39 + 32);
    }

    v41 = result;
    if (__OFADD__(v39, 1))
    {
      goto LABEL_43;
    }

    v61 = result;
    closure #2 in static IDSHelper.format(emailAddresses:phoneNumbers:)(&v61, __src);

    if (__src[2])
    {
      memcpy(__dst, __src, 0x48uLL);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = *(v40 + 2);
        v45 = OUTLINED_FUNCTION_6_1();
        v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v45, v46, v47, v40);
      }

      v43 = *(v40 + 2);
      v42 = *(v40 + 3);
      if (v43 >= v42 >> 1)
      {
        v48 = OUTLINED_FUNCTION_8_1(v42);
        v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v48, v49, v50, v40);
      }

      memcpy(v58, __dst, sizeof(v58));
      *(v40 + 2) = v43 + 1;
      result = memcpy(&v40[72 * v43 + 32], v58, 0x48uLL);
    }

    else
    {
      memcpy(__dst, __src, 0x48uLL);
      result = outlined destroy of (key: AnyHashable, value: Any)(__dst, &_s18SiriContactsCommon9IDSHelperO12SearchHandle33_C9B329DCF768497C18D5DF18E4832F1DLLVSgMd, &_s18SiriContactsCommon9IDSHelperO12SearchHandle33_C9B329DCF768497C18D5DF18E4832F1DLLVSgMR);
    }

    ++v39;
  }

  specialized Array.append<A>(contentsOf:)(v40);
  return v62;
}

uint64_t closure #2 in static IDSHelper.getAvailableHandles(for:given:phoneNumbers:idsStatusProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t closure #2 in static IDSHelper.getAvailableHandles(for:given:phoneNumbers:idsStatusProvider:)()
{
  v1 = v0[5];
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_5_1(v2);
  v3 = *(MEMORY[0x277D859E0] + 4);
  v4 = swift_task_alloc();
  v0[9] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSbGMd, &_sSDySSSbGMR);
  *v4 = v0;
  v4[1] = closure #2 in static IDSHelper.getAvailableHandles(for:given:phoneNumbers:idsStatusProvider:);
  v5 = v0[2];
  OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822007B8]();
}

{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t closure #1 in closure #2 in static IDSHelper.getAvailableHandles(for:given:phoneNumbers:idsStatusProvider:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a5;
  v28 = a6;
  v26 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySDySSSbGs5NeverOGMd, &_sScCySDySSSbGs5NeverOGMR);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - v12;
  v14 = a2[3];
  v15 = a2[4];
  v25 = __swift_project_boxed_opaque_existential_1(a2, v14);
  v16 = specialized _arrayForceCast<A, B>(_:)(a3);
  v17 = *MEMORY[0x277D186A0];
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  (*(v10 + 16))(v13, a1, v9);
  v20 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v21 = swift_allocObject();
  (*(v10 + 32))(v21 + v20, v13, v9);
  (*(v15 + 8))(v16, v26, v27, v24, v19, v28, partial apply for closure #1 in closure #1 in closure #2 in static IDSHelper.getAvailableHandles(for:given:phoneNumbers:idsStatusProvider:), v21, v14, v15);
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

uint64_t static IDSHelper.makeHandleStatuses(rawResults:)(uint64_t a1)
{
  if (!a1 || (v1 = specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(a1)) == 0)
  {
    if (one-time initialization token for siriContacts != -1)
    {
      goto LABEL_39;
    }

    goto LABEL_32;
  }

  v2 = v1;
  v3 = Dictionary.init(dictionaryLiteral:)();
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
LABEL_11:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = v10 | (v8 << 6);
    v12 = *(*(v2 + 56) + 8 * v11);
    if (v12 == 2)
    {
      OUTLINED_FUNCTION_12(v11);
      swift_isUniquelyReferenced_nonNull_native();
      v30 = OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_9_1(v30, v31);
      if (v17)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      v34 = v32;
      v35 = v33;
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSbGMd, &_ss17_NativeDictionaryVySSSbGMR);
      if (OUTLINED_FUNCTION_11(v36, v37, v38, v39, v40, v41, v42, v43, v58, v59, v60, v61))
      {
        v44 = specialized __RawDictionaryStorage.find<A>(_:)(v59, v60);
        if ((v35 & 1) != (v45 & 1))
        {
          goto LABEL_44;
        }

        v34 = v44;
      }

      v3 = v61;
      if ((v35 & 1) == 0)
      {
        OUTLINED_FUNCTION_4_1(&v61[v34 >> 6], v58, v59);
        *(v50 + v34) = 0;
        v51 = *(v3 + 16);
        v17 = __OFADD__(v51, 1);
        v49 = v51 + 1;
        if (v17)
        {
          goto LABEL_43;
        }

        goto LABEL_30;
      }

      *(v61[7] + v34) = 0;
LABEL_28:
    }

    else if (v12 == 1)
    {
      OUTLINED_FUNCTION_12(v11);
      swift_isUniquelyReferenced_nonNull_native();
      v13 = OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_9_1(v13, v14);
      if (v17)
      {
        goto LABEL_41;
      }

      v18 = v15;
      v19 = v16;
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSbGMd, &_ss17_NativeDictionaryVySSSbGMR);
      if (OUTLINED_FUNCTION_11(v20, v21, v22, v23, v24, v25, v26, v27, v58, v59, v60, v61))
      {
        v28 = specialized __RawDictionaryStorage.find<A>(_:)(v59, v60);
        if ((v19 & 1) != (v29 & 1))
        {
          goto LABEL_44;
        }

        v18 = v28;
      }

      v3 = v61;
      if (v19)
      {
        *(v61[7] + v18) = 1;
        goto LABEL_28;
      }

      OUTLINED_FUNCTION_4_1(&v61[v18 >> 6], v58, v59);
      *(v46 + v18) = v47;
      v48 = *(v3 + 16);
      v17 = __OFADD__(v48, 1);
      v49 = v48 + 1;
      if (v17)
      {
        goto LABEL_42;
      }

LABEL_30:
      *(v3 + 16) = v49;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return v3;
    }

    v6 = *(v2 + 64 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_39:
  OUTLINED_FUNCTION_0();
LABEL_32:
  v52 = type metadata accessor for Logger();
  __swift_project_value_buffer(v52, static Logger.siriContacts);

  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v61 = v56;
    *v55 = 136315138;
    *(v55 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000026, 0x80000002668635E0, &v61);
    _os_log_impl(&dword_26683A000, v53, v54, "#IDSHelper makeHandleStatuses - unrecognized IDS results format: %s", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v56);
    MEMORY[0x26D5DEEF0](v56, -1, -1);
    MEMORY[0x26D5DEEF0](v55, -1, -1);
  }

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t static IDSHelper.process(statuses:abstractedHandles:)(uint64_t a1, uint64_t a2)
{
  v48 = a1;
  v42 = type metadata accessor for CharacterSet();
  v3 = *(*(v42 - 8) + 64);
  result = MEMORY[0x28223BE20](v42);
  v43 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = 0;
  v7 = *(a2 + 16);
  v41 = (v8 + 8);
  v9 = a2 + 96;
  v44 = MEMORY[0x277D84F90];
  v40 = v9;
LABEL_2:
  for (i = (v9 + 72 * v6); ; i += 9)
  {
    if (v7 == v6)
    {
      return v44;
    }

    if (v6 >= v7)
    {
      break;
    }

    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_33;
    }

    if (*(v48 + 16))
    {
      v46 = *(i - 64);
      v12 = *(i - 7);
      v13 = *(i - 6);
      v14 = *(i - 4);
      v47 = *(i - 5);
      v15 = *(i - 2);
      v45 = *(i - 3);
      v16 = *(i - 1);
      v17 = *i;

      v18 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
      if ((v19 & 1) != 0 && *(*(v48 + 56) + v18) == 1)
      {

        v20 = v43;
        CharacterSet.init(charactersIn:)();
        v49 = v12;
        v50 = v13;
        lazy protocol witness table accessor for type String and conformance String();
        StringProtocol.trimmingCharacters(in:)();
        v21 = String.lowercased()();
        object = v21._object;

        if (v21._countAndFlagsBits == 0x656E6F687069 && v21._object == 0xE600000000000000)
        {

          object = 0xE600000000000000;
          countAndFlagsBits = 0x656E6F685069;
        }

        else
        {
          if (_stringCompareWithSmolCheck(_:_:expecting:)())
          {

            object = 0xE600000000000000;
            countAndFlagsBits = 0x656E6F685069;
            goto LABEL_25;
          }

          if (v21._countAndFlagsBits == 0x64756F6C6369 && v21._object == 0xE600000000000000)
          {

            object = 0xE600000000000000;
            countAndFlagsBits = 0x64756F6C4369;
LABEL_25:
            v20 = v43;
          }

          else
          {
            countAndFlagsBits = v21._countAndFlagsBits;
            v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v20 = v43;
            if (v25)
            {

              object = 0xE600000000000000;
              countAndFlagsBits = 0x64756F6C4369;
            }
          }
        }

        v38 = object;
        (*v41)(v20, v42);

        v26 = v44;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          v33 = *(v26 + 16);
          v34 = OUTLINED_FUNCTION_6_1();
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v34, v35, v36, v26);
          v26 = result;
        }

        v9 = v40;
        v27 = v47;
        v28 = v46;
        v30 = *(v26 + 16);
        v29 = *(v26 + 24);
        if (v30 >= v29 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v26);
          v26 = result;
        }

        *(v26 + 16) = v30 + 1;
        v44 = v26;
        v31 = v26 + 56 * v30;
        *(v31 + 32) = v28;
        *(v31 + 40) = v45;
        *(v31 + 48) = v15;
        v32 = v38;
        *(v31 + 56) = countAndFlagsBits;
        *(v31 + 64) = v32;
        *(v31 + 72) = v27;
        *(v31 + 80) = v14;
        v6 = v11;
        goto LABEL_2;
      }
    }

    ++v6;
  }

  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t closure #4 in static IDSHelper.getAvailableHandles(for:given:phoneNumbers:idsStatusProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t closure #4 in static IDSHelper.getAvailableHandles(for:given:phoneNumbers:idsStatusProvider:)()
{
  v1 = v0[5];
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_5_1(v2);
  v3 = *(MEMORY[0x277D859E0] + 4);
  v4 = swift_task_alloc();
  v0[9] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSbGMd, &_sSDySSSbGMR);
  *v4 = v0;
  v4[1] = closure #4 in static IDSHelper.getAvailableHandles(for:given:phoneNumbers:idsStatusProvider:);
  v5 = v0[2];
  OUTLINED_FUNCTION_3_1();

  return MEMORY[0x2822007B8]();
}

uint64_t closure #1 in closure #4 in static IDSHelper.getAvailableHandles(for:given:phoneNumbers:idsStatusProvider:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a5;
  v28 = a6;
  v26 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySDySSSbGs5NeverOGMd, &_sScCySDySSSbGs5NeverOGMR);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - v12;
  v14 = a2[3];
  v15 = a2[4];
  v25 = __swift_project_boxed_opaque_existential_1(a2, v14);
  v16 = specialized _arrayForceCast<A, B>(_:)(a3);
  v17 = *MEMORY[0x277D186A0];
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  (*(v10 + 16))(v13, a1, v9);
  v20 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v21 = swift_allocObject();
  (*(v10 + 32))(v21 + v20, v13, v9);
  (*(v15 + 16))(v16, v26, v27, v24, v19, v28, partial apply for closure #1 in closure #1 in closure #4 in static IDSHelper.getAvailableHandles(for:given:phoneNumbers:idsStatusProvider:), v21, v14, v15);
}

uint64_t closure #1 in closure #1 in closure #2 in static IDSHelper.getAvailableHandles(for:given:phoneNumbers:idsStatusProvider:)(uint64_t a1, uint64_t a2, const char *a3)
{
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.siriContacts);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_26683A000, v6, v7, a3, v8, 2u);
    MEMORY[0x26D5DEEF0](v8, -1, -1);
  }

  static IDSHelper.makeHandleStatuses(rawResults:)(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySDySSSbGs5NeverOGMd, &_sScCySDySSSbGs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

int64_t specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void closure #2 in static IDSHelper.format(emailAddresses:phoneNumbers:)(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = [*a1 value];
  v5 = [v4 stringValue];

  if (!v5)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = MEMORY[0x26D5DE450](v6);
  }

  v7 = IDSCopyIDForPhoneNumber();

  if (v7)
  {
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v26 = 0;
    v9 = 0;
  }

  v10 = [v3 label];
  if (v10)
  {
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0xE000000000000000;
  }

  v15 = [v3 value];
  v16 = [v15 stringValue];

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20 = [v3 identifier];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  *a2 = 1;
  v24 = v26;
  if (!v9)
  {
    v24 = 0;
  }

  v25 = 0xE000000000000000;
  if (v9)
  {
    v25 = v9;
  }

  *(a2 + 8) = v12;
  *(a2 + 16) = v14;
  *(a2 + 24) = v17;
  *(a2 + 32) = v19;
  *(a2 + 40) = v21;
  *(a2 + 48) = v23;
  *(a2 + 56) = v24;
  *(a2 + 64) = v25;
}

unint64_t specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSiGMd, &_ss18_DictionaryStorageCySSSiGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (1)
  {
    if (!v5)
    {
      while (1)
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v9 >= v6)
        {

          return v2;
        }

        v5 = *(a1 + 64 + 8 * v9);
        ++v8;
        if (v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    outlined init with copy of AnyHashable(*(a1 + 48) + 40 * v10, __src);
    outlined init with copy of Any(*(a1 + 56) + 32 * v10, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    outlined init with copy of AnyHashable(__dst, v21);
    if (!swift_dynamicCast())
    {
      outlined destroy of (key: AnyHashable, value: Any)(__dst, &_ss11AnyHashableV3key_yp5valuetMd, &_ss11AnyHashableV3key_yp5valuetMR);

      goto LABEL_22;
    }

    outlined init with copy of Any(&__dst[40], v21);
    outlined destroy of (key: AnyHashable, value: Any)(__dst, &_ss11AnyHashableV3key_yp5valuetMd, &_ss11AnyHashableV3key_yp5valuetMR);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v5 &= v5 - 1;
    result = specialized __RawDictionaryStorage.find<A>(_:)(v19, v20);
    v11 = result;
    if (v12)
    {
      v13 = (v2[6] + 16 * result);
      v14 = v13[1];
      *v13 = v19;
      v13[1] = v20;

      *(v2[7] + 8 * v11) = v19;
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_25;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = (v2[6] + 16 * result);
      *v15 = v19;
      v15[1] = v20;
      *(v2[7] + 8 * result) = v19;
      v16 = v2[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_26;
      }

      v2[2] = v18;
      v8 = v9;
    }
  }

LABEL_22:

  return 0;
}

id @nonobjc IDSIDQueryController.currentIDStatus(forDestinations:service:listenerID:queue:completionBlock:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, SEL *a10)
{
  v16 = a3;
  if (a1)
  {
    v18.super.isa = Array._bridgeToObjectiveC()().super.isa;
    if (!v16)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v18.super.isa = 0;
  if (a3)
  {
LABEL_3:
    v16 = MEMORY[0x26D5DE450](a2, v16);
  }

LABEL_4:
  if (a5)
  {
    a5 = MEMORY[0x26D5DE450](a4, a5);
  }

  if (a7)
  {
    v21[4] = a7;
    v21[5] = a8;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 1107296256;
    v21[2] = thunk for @escaping @callee_guaranteed (@guaranteed [AnyHashable : Any]?) -> ();
    v21[3] = a9;
    a7 = _Block_copy(v21);
  }

  v19 = [v10 *a10];
  _Block_release(a7);

  return v19;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t specialized Array._getCount()(unint64_t a1)
{
  if (a1 >> 62)
  {
    JUMPOUT(0x26D5DE750);
  }

  return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
}

char *specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_1(a3, result);
  }

  return result;
}

{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_1(a3, result);
  }

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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

char *specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 3) >> 1)
  {
    if (*(v5 + 2) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 2);
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t objectdestroyTm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySDySSSbGs5NeverOGMd, &_sScCySDySSSbGs5NeverOGMR);
  OUTLINED_FUNCTION_10_0(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t outlined destroy of (key: AnyHashable, value: Any)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_10_0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t getEnumTagSinglePayload for IDSHelper.SearchHandle(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t storeEnumTagSinglePayload for IDSHelper.SearchHandle(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_4_1(uint64_t a1@<X8>, uint64_t a2, uint64_t a3)
{
  *(a1 + 64) |= v3;
  v7 = (*(v4 + 48) + 16 * v5);
  *v7 = a3;
  v7[1] = v6;
  v8 = *(v4 + 56);
}

__n128 OUTLINED_FUNCTION_5_1(uint64_t a1)
{
  *(v2 + 64) = a1;
  result = *(v2 + 24);
  v4 = *(v2 + 48);
  *(a1 + 16) = result;
  *(a1 + 32) = v1;
  *(a1 + 40) = v4;
  return result;
}

unint64_t OUTLINED_FUNCTION_7_1()
{

  return specialized __RawDictionaryStorage.find<A>(_:)(v1, v0);
}

BOOL OUTLINED_FUNCTION_11(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v12, v13);
}

uint64_t OUTLINED_FUNCTION_12@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(v1 + 48) + 16 * a1);
  v5 = *v3;
  v4 = v3[1];
}

id SiriContactsActionItem.init(bundleIdentifier:displayHandle:label:sanitizedHandle:shouldGroupByBundleIdentifier:type:url:id:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, unsigned __int8 *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = v13;
  v21 = a13;
  v22 = *a10;
  v23 = &v14[OBJC_IVAR____TtC18SiriContactsCommon22SiriContactsActionItem_bundleIdentifier];
  *v23 = a1;
  v23[1] = a2;
  v24 = &v14[OBJC_IVAR____TtC18SiriContactsCommon22SiriContactsActionItem_displayHandle];
  *v24 = a3;
  v24[1] = a4;
  v25 = &v14[OBJC_IVAR____TtC18SiriContactsCommon22SiriContactsActionItem_label];
  *v25 = a5;
  v25[1] = a6;
  v26 = &v14[OBJC_IVAR____TtC18SiriContactsCommon22SiriContactsActionItem_sanitizedHandle];
  *v26 = a7;
  v26[1] = a8;
  v14[OBJC_IVAR____TtC18SiriContactsCommon22SiriContactsActionItem_shouldGroupByBundleIdentifier] = a9;
  v14[OBJC_IVAR____TtC18SiriContactsCommon22SiriContactsActionItem_type] = v22;
  outlined init with copy of URL?(a11, &v14[OBJC_IVAR____TtC18SiriContactsCommon22SiriContactsActionItem_url], &_s10Foundation3URLVSgMd, ":I");
  if (!a13)
  {
    v34 = a1;
    v35 = a2;

    MEMORY[0x26D5DE4E0](a5, a6);

    MEMORY[0x26D5DE4E0](a7, a8);

    v28 = 0xE700000000000000;
    v29 = 0x6567617373656DLL;
    switch(v22)
    {
      case 1:
        v28 = 0xE400000000000000;
        v29 = 1819042147;
        break;
      case 2:
        v28 = 0xE90000000000006CLL;
        v29 = 0x6C61436F65646976;
        break;
      case 3:
        v28 = 0xE500000000000000;
        v29 = 0x6C69616D65;
        break;
      case 4:
        v28 = 0xE800000000000000;
        v29 = 0x657461676976616ELL;
        break;
      default:
        break;
    }

    MEMORY[0x26D5DE4E0](v29, v28);

    a12 = v34;
    v21 = v35;
  }

  v30 = &v14[OBJC_IVAR____TtC18SiriContactsCommon22SiriContactsActionItem_id];
  *v30 = a12;
  v30[1] = v21;
  v33.receiver = v14;
  v33.super_class = type metadata accessor for SiriContactsActionItem();
  v31 = objc_msgSendSuper2(&v33, sel_init);
  outlined destroy of URL?(a11, &_s10Foundation3URLVSgMd, ":I");
  return v31;
}

uint64_t type metadata accessor for SiriContactsActionItem()
{
  result = type metadata singleton initialization cache for SiriContactsActionItem;
  if (!type metadata singleton initialization cache for SiriContactsActionItem)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SiriContactsActionItem.description.getter()
{
  _StringGuts.grow(_:)(88);
  v1 = 0xE400000000000000;
  MEMORY[0x26D5DE4E0](540689481, 0xE400000000000000);
  OUTLINED_FUNCTION_7_2(OBJC_IVAR____TtC18SiriContactsCommon22SiriContactsActionItem_id);
  MEMORY[0x26D5DE4E0](0x203A65707954202CLL, 0xE800000000000000);
  v2 = 1819042147;
  switch(*(v0 + OBJC_IVAR____TtC18SiriContactsCommon22SiriContactsActionItem_type))
  {
    case 1:
      break;
    case 2:
      v1 = 0xE90000000000006CLL;
      v2 = 0x6C61436F65646976;
      break;
    case 3:
      v1 = 0xE500000000000000;
      v2 = 0x6C69616D65;
      break;
    case 4:
      v1 = 0xE800000000000000;
      v2 = 0x657461676976616ELL;
      break;
    default:
      v1 = 0xE700000000000000;
      v2 = 0x6567617373656DLL;
      break;
  }

  MEMORY[0x26D5DE4E0](v2, v1);

  MEMORY[0x26D5DE4E0](0x656C646E6148202CLL, 0xEA0000000000203ALL);
  OUTLINED_FUNCTION_7_2(OBJC_IVAR____TtC18SiriContactsCommon22SiriContactsActionItem_displayHandle);
  MEMORY[0x26D5DE4E0](0x3A6C6562614C202CLL, 0xE900000000000020);
  OUTLINED_FUNCTION_7_2(OBJC_IVAR____TtC18SiriContactsCommon22SiriContactsActionItem_label);
  MEMORY[0x26D5DE4E0](0xD000000000000019, 0x8000000266863610);
  if (*(v0 + OBJC_IVAR____TtC18SiriContactsCommon22SiriContactsActionItem_shouldGroupByBundleIdentifier))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC18SiriContactsCommon22SiriContactsActionItem_shouldGroupByBundleIdentifier))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x26D5DE4E0](v3, v4);

  MEMORY[0x26D5DE4E0](0xD000000000000014, 0x8000000266863630);
  OUTLINED_FUNCTION_7_2(OBJC_IVAR____TtC18SiriContactsCommon22SiriContactsActionItem_sanitizedHandle);
  return 0;
}

Swift::Int SiriContactsActionItem.hash.getter()
{
  Hasher.init()();
  OUTLINED_FUNCTION_10_1(OBJC_IVAR____TtC18SiriContactsCommon22SiriContactsActionItem_bundleIdentifier);
  OUTLINED_FUNCTION_10_1(OBJC_IVAR____TtC18SiriContactsCommon22SiriContactsActionItem_label);
  OUTLINED_FUNCTION_10_1(OBJC_IVAR____TtC18SiriContactsCommon22SiriContactsActionItem_sanitizedHandle);
  *(v0 + OBJC_IVAR____TtC18SiriContactsCommon22SiriContactsActionItem_type);
  String.hash(into:)();

  memcpy(__dst, v2, sizeof(__dst));
  return Hasher.finalize()();
}

uint64_t SiriContactsActionItem.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of URL?(a1, v14, &_sypSgMd, ":I");
  if (!v15)
  {
    outlined destroy of URL?(v14, &_sypSgMd, ":I");
    goto LABEL_21;
  }

  type metadata accessor for SiriContactsActionItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:
    v11 = 0;
    return v11 & 1;
  }

  OUTLINED_FUNCTION_2_1(OBJC_IVAR____TtC18SiriContactsCommon22SiriContactsActionItem_bundleIdentifier);
  v4 = v4 && v2 == v3;
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || ((OUTLINED_FUNCTION_2_1(OBJC_IVAR____TtC18SiriContactsCommon22SiriContactsActionItem_label), v4) ? (v7 = v5 == v6) : (v7 = 0), !v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || ((OUTLINED_FUNCTION_2_1(OBJC_IVAR____TtC18SiriContactsCommon22SiriContactsActionItem_sanitizedHandle), v4) ? (v10 = v8 == v9) : (v10 = 0), !v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)))
  {

    goto LABEL_21;
  }

  v11 = specialized == infix<A>(_:_:)(*(v1 + OBJC_IVAR____TtC18SiriContactsCommon22SiriContactsActionItem_type), *(v13 + OBJC_IVAR____TtC18SiriContactsCommon22SiriContactsActionItem_type));

  return v11 & 1;
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8) + 16);
  v6 = OUTLINED_FUNCTION_6_2();
  v7(v6);
  return a2;
}

uint64_t outlined destroy of URL?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id SiriContactsActionItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t SiriContactsActionItem.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000002668636F0 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4879616C70736964 && a2 == 0xED0000656C646E61;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x657A6974696E6173 && a2 == 0xEF656C646E614864;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD00000000000001DLL && 0x8000000266863730 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1701869940 && a2 == 0xE400000000000000;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 7107189 && a2 == 0xE300000000000000;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 25705 && a2 == 0xE200000000000000)
              {

                return 7;
              }

              else
              {
                v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

Swift::Int SiriContactsActionItem.CodingKeys.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x26D5DE980](a1);
  return Hasher._finalize()();
}

unint64_t SiriContactsActionItem.CodingKeys.stringValue.getter(char a1)
{
  result = 0x4879616C70736964;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6C6562616CLL;
      break;
    case 3:
      result = 0x657A6974696E6173;
      break;
    case 4:
      result = 0xD00000000000001DLL;
      break;
    case 5:
      result = 1701869940;
      break;
    case 6:
      result = 7107189;
      break;
    case 7:
      result = 25705;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SiriContactsActionItem.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x26D5DE980](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SiriContactsActionItem.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = SiriContactsActionItem.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance SiriContactsActionItem.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = SiriContactsActionItem.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SiriContactsActionItem.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriContactsActionItem.CodingKeys and conformance SiriContactsActionItem.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SiriContactsActionItem.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriContactsActionItem.CodingKeys and conformance SiriContactsActionItem.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

id SiriContactsActionItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriContactsActionItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SiriContactsActionItem.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriContactsCommon0dE10ActionItemC10CodingKeys33_6853D140DA93A263E28C9B33AA2F804CLLOGMd, &_ss22KeyedEncodingContainerVy18SiriContactsCommon0dE10ActionItemC10CodingKeys33_6853D140DA93A263E28C9B33AA2F804CLLOGMR);
  v6 = OUTLINED_FUNCTION_11_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v16[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SiriContactsActionItem.CodingKeys and conformance SiriContactsActionItem.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  OUTLINED_FUNCTION_9_2(OBJC_IVAR____TtC18SiriContactsCommon22SiriContactsActionItem_bundleIdentifier);
  v16[15] = 0;
  OUTLINED_FUNCTION_4_2();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    OUTLINED_FUNCTION_9_2(OBJC_IVAR____TtC18SiriContactsCommon22SiriContactsActionItem_displayHandle);
    v16[14] = 1;
    OUTLINED_FUNCTION_4_2();
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_9_2(OBJC_IVAR____TtC18SiriContactsCommon22SiriContactsActionItem_label);
    v16[13] = 2;
    OUTLINED_FUNCTION_4_2();
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_9_2(OBJC_IVAR____TtC18SiriContactsCommon22SiriContactsActionItem_sanitizedHandle);
    v16[12] = 3;
    OUTLINED_FUNCTION_4_2();
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = *(v3 + OBJC_IVAR____TtC18SiriContactsCommon22SiriContactsActionItem_shouldGroupByBundleIdentifier);
    v16[11] = 4;
    OUTLINED_FUNCTION_4_2();
    KeyedEncodingContainer.encode(_:forKey:)();
    v16[10] = *(v3 + OBJC_IVAR____TtC18SiriContactsCommon22SiriContactsActionItem_type);
    v16[9] = 5;
    lazy protocol witness table accessor for type SiriContactsActionType and conformance SiriContactsActionType();
    OUTLINED_FUNCTION_4_2();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16[8] = 6;
    type metadata accessor for URL();
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL);
    OUTLINED_FUNCTION_4_2();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_9_2(OBJC_IVAR____TtC18SiriContactsCommon22SiriContactsActionItem_id);
    v16[7] = 7;
    OUTLINED_FUNCTION_4_2();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t lazy protocol witness table accessor for type SiriContactsActionItem.CodingKeys and conformance SiriContactsActionItem.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SiriContactsActionItem.CodingKeys and conformance SiriContactsActionItem.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriContactsActionItem.CodingKeys and conformance SiriContactsActionItem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriContactsActionItem.CodingKeys and conformance SiriContactsActionItem.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriContactsActionItem.CodingKeys and conformance SiriContactsActionItem.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriContactsActionItem.CodingKeys and conformance SiriContactsActionItem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriContactsActionItem.CodingKeys and conformance SiriContactsActionItem.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriContactsActionItem.CodingKeys and conformance SiriContactsActionItem.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriContactsActionItem.CodingKeys and conformance SiriContactsActionItem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriContactsActionItem.CodingKeys and conformance SiriContactsActionItem.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriContactsActionItem.CodingKeys and conformance SiriContactsActionItem.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriContactsActionItem.CodingKeys and conformance SiriContactsActionItem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriContactsActionItem.CodingKeys and conformance SiriContactsActionItem.CodingKeys);
  }

  return result;
}

void *SiriContactsActionItem.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, ":I");
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriContactsCommon0dE10ActionItemC10CodingKeys33_6853D140DA93A263E28C9B33AA2F804CLLOGMd, &_ss22KeyedDecodingContainerVy18SiriContactsCommon0dE10ActionItemC10CodingKeys33_6853D140DA93A263E28C9B33AA2F804CLLOGMR);
  v10 = OUTLINED_FUNCTION_11_0(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = a1[3];
  v14 = a1[4];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  lazy protocol witness table accessor for type SiriContactsActionItem.CodingKeys and conformance SiriContactsActionItem.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v33);
    type metadata accessor for SiriContactsActionItem();
    v22 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v23 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v32 = v8;
    v36 = 0;
    v15 = KeyedDecodingContainer.decode(_:forKey:)();
    OUTLINED_FUNCTION_8_2(v15, v16, OBJC_IVAR____TtC18SiriContactsCommon22SiriContactsActionItem_bundleIdentifier);
    OUTLINED_FUNCTION_0_2(1);
    v17 = KeyedDecodingContainer.decode(_:forKey:)();
    OUTLINED_FUNCTION_8_2(v17, v18, OBJC_IVAR____TtC18SiriContactsCommon22SiriContactsActionItem_displayHandle);
    OUTLINED_FUNCTION_0_2(2);
    v19 = KeyedDecodingContainer.decode(_:forKey:)();
    OUTLINED_FUNCTION_8_2(v19, v20, OBJC_IVAR____TtC18SiriContactsCommon22SiriContactsActionItem_label);
    OUTLINED_FUNCTION_0_2(3);
    v21 = KeyedDecodingContainer.decode(_:forKey:)();
    OUTLINED_FUNCTION_8_2(v21, v25, OBJC_IVAR____TtC18SiriContactsCommon22SiriContactsActionItem_sanitizedHandle);
    OUTLINED_FUNCTION_0_2(4);
    *(v3 + OBJC_IVAR____TtC18SiriContactsCommon22SiriContactsActionItem_shouldGroupByBundleIdentifier) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    v35 = 5;
    lazy protocol witness table accessor for type SiriContactsActionType and conformance SiriContactsActionType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v3 + OBJC_IVAR____TtC18SiriContactsCommon22SiriContactsActionItem_type) = v36;
    type metadata accessor for URL();
    v36 = 6;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL);
    v26 = v32;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined init with take of URL?(v26, v3 + OBJC_IVAR____TtC18SiriContactsCommon22SiriContactsActionItem_url);
    OUTLINED_FUNCTION_0_2(7);
    v27 = KeyedDecodingContainer.decode(_:forKey:)();
    OUTLINED_FUNCTION_8_2(v27, v28, OBJC_IVAR____TtC18SiriContactsCommon22SiriContactsActionItem_id);
    v29 = type metadata accessor for SiriContactsActionItem();
    v34.receiver = v3;
    v34.super_class = v29;
    v3 = objc_msgSendSuper2(&v34, sel_init);
    v30 = OUTLINED_FUNCTION_1_2();
    v31(v30);
    __swift_destroy_boxed_opaque_existential_0(v33);
  }

  return v3;
}

uint64_t lazy protocol witness table accessor for type URL and conformance URL(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, ":I");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *protocol witness for Decodable.init(from:) in conformance SiriContactsActionItem@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = SiriContactsActionItem.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance SiriContactsActionItem@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = SiriContactsActionItem.id.getter();
  *a1 = result;
  a1[1] = v5;
  return result;
}

void type metadata completion function for SiriContactsActionItem()
{
  type metadata accessor for URL?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
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

uint64_t getEnumTagSinglePayload for SiriContactsActionItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SiriContactsActionItem.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
        JUMPOUT(0x266842B90);
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_1@<X0>(uint64_t a1@<X8>)
{
  result = *(v1 + a1);
  v4 = *(v1 + a1 + 8);
  v5 = (v2 + a1);
  v6 = *v5;
  v7 = v5[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_5_2@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];
}

void OUTLINED_FUNCTION_7_2(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];

  JUMPOUT(0x26D5DE4E0);
}

uint64_t OUTLINED_FUNCTION_8_2@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  *v4 = result;
  v4[1] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_2@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_10_1@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];

  return String.hash(into:)();
}

uint64_t static DateComponents.startOfToday.getter()
{
  v36 = type metadata accessor for Date();
  v0 = OUTLINED_FUNCTION_11_0(v36);
  v2 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_1_3();
  v7 = v6 - v5;
  v35 = type metadata accessor for TimeZone();
  v8 = OUTLINED_FUNCTION_11_0(v35);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_3();
  v15 = v14 - v13;
  v16 = type metadata accessor for Calendar.Identifier();
  v17 = OUTLINED_FUNCTION_11_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_3();
  v24 = v23 - v22;
  v25 = type metadata accessor for Calendar();
  v26 = OUTLINED_FUNCTION_11_0(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_1_3();
  v33 = v32 - v31;
  (*(v19 + 104))(v24, *MEMORY[0x277CC9830], v16);
  Calendar.init(identifier:)();
  (*(v19 + 8))(v24, v16);
  static TimeZone.current.getter();
  Calendar.timeZone.setter();
  Calendar.timeZone.getter();
  static Date.startOfToday.getter();
  Calendar.dateComponents(in:from:)();
  (*(v2 + 8))(v7, v36);
  (*(v10 + 8))(v15, v35);
  return (*(v28 + 8))(v33, v25);
}

uint64_t static Calendar.gregorianCurrent.getter()
{
  v0 = type metadata accessor for TimeZone();
  v1 = OUTLINED_FUNCTION_3_3(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_3();
  v4 = type metadata accessor for Calendar.Identifier();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_3();
  v12 = v11 - v10;
  (*(v7 + 104))(v11 - v10, *MEMORY[0x277CC9830], v4);
  Calendar.init(identifier:)();
  (*(v7 + 8))(v12, v4);
  static TimeZone.current.getter();
  return Calendar.timeZone.setter();
}

uint64_t static Date.startOfToday.getter()
{
  v0 = type metadata accessor for Date();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_3();
  v8 = v7 - v6;
  v9 = type metadata accessor for TimeZone();
  v10 = OUTLINED_FUNCTION_3_3(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_3();
  v13 = type metadata accessor for Calendar.Identifier();
  v14 = OUTLINED_FUNCTION_11_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_3();
  v21 = v20 - v19;
  v22 = type metadata accessor for Calendar();
  v23 = OUTLINED_FUNCTION_11_0(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_1_3();
  v30 = v29 - v28;
  (*(v16 + 104))(v21, *MEMORY[0x277CC9830], v13);
  Calendar.init(identifier:)();
  (*(v16 + 8))(v21, v13);
  static TimeZone.current.getter();
  Calendar.timeZone.setter();
  static Date.now.getter();
  Calendar.startOfDay(for:)();
  (*(v3 + 8))(v8, v0);
  return (*(v25 + 8))(v30, v22);
}

uint64_t static DateComponents.startOfTodayGMT.getter@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v45 = type metadata accessor for Date();
  v2 = OUTLINED_FUNCTION_11_0(v45);
  v43 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_3();
  v42 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  v9 = OUTLINED_FUNCTION_3_3(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v40 - v12;
  v14 = type metadata accessor for TimeZone();
  v15 = OUTLINED_FUNCTION_11_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v20);
  v21 = type metadata accessor for Calendar.Identifier();
  v22 = OUTLINED_FUNCTION_11_0(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1_3();
  v29 = v28 - v27;
  v41 = type metadata accessor for Calendar();
  v30 = OUTLINED_FUNCTION_11_0(v41);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_1_3();
  v37 = v36 - v35;
  (*(v24 + 104))(v29, *MEMORY[0x277CC9830], v21);
  Calendar.init(identifier:)();
  (*(v24 + 8))(v29, v21);
  static TimeZone.current.getter();
  Calendar.timeZone.setter();
  TimeZone.init(secondsFromGMT:)();
  result = __swift_getEnumTagSinglePayload(v13, 1, v14);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v17 + 32))(v1, v13, v14);
    v39 = v42;
    static Date.startOfTodayGMT.getter();
    Calendar.dateComponents(in:from:)();
    (*(v43 + 8))(v39, v45);
    (*(v17 + 8))(v1, v14);
    return (*(v32 + 8))(v37, v41);
  }

  return result;
}

uint64_t static Date.startOfTodayGMT.getter()
{
  v1 = type metadata accessor for TimeZone();
  v2 = OUTLINED_FUNCTION_11_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_3();
  v9 = v8 - v7;
  v10 = type metadata accessor for Date();
  v11 = OUTLINED_FUNCTION_11_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v16);
  v18 = &v21 - v17;
  static Date.startOfToday.getter();
  Date.timeIntervalSince1970.getter();
  static TimeZone.current.getter();
  Date.init()();
  TimeZone.secondsFromGMT(for:)();
  v19 = *(v13 + 8);
  v19(v0, v10);
  (*(v4 + 8))(v9, v1);
  Date.init(timeIntervalSince1970:)();
  return v19(v18, v10);
}

uint64_t static Calendar.gregorianCurrentGMT.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  v1 = OUTLINED_FUNCTION_3_3(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v25 - v4;
  v6 = type metadata accessor for TimeZone();
  v7 = OUTLINED_FUNCTION_11_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_3();
  v14 = v13 - v12;
  v15 = type metadata accessor for Calendar.Identifier();
  v16 = OUTLINED_FUNCTION_11_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_3();
  v23 = v22 - v21;
  (*(v18 + 104))(v22 - v21, *MEMORY[0x277CC9830], v15);
  Calendar.init(identifier:)();
  (*(v18 + 8))(v23, v15);
  TimeZone.init(secondsFromGMT:)();
  result = __swift_getEnumTagSinglePayload(v5, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v9 + 32))(v14, v5, v6);
    return Calendar.timeZone.setter();
  }

  return result;
}

uint64_t CNContact.formattedFullName.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v23 - v3;
  v5 = type metadata accessor for PersonNameComponents();
  v6 = OUTLINED_FUNCTION_11_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_3();
  type metadata accessor for Locale();
  OUTLINED_FUNCTION_24();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  PersonNameComponents.init(from:for:)(v0, v4);
  v15 = objc_opt_self();
  isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
  v17 = [v15 localizedStringFromPersonNameComponents:isa style:2 options:0];

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = *(v8 + 8);
  v20 = OUTLINED_FUNCTION_18();
  v21(v20);
  return v18;
}

uint64_t _s18SiriContactsCommon0aB8TaskUtilO03runD15WithSafeTimeout_8fallback4taskxs8DurationV_xxyYaYbKctYas8SendableRzlFZSDySSSbG_Tt3g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = a3;
  v10 = swift_task_alloc();
  *(v5 + 56) = v10;
  *v10 = v5;
  v10[1] = _s18SiriContactsCommon0aB8TaskUtilO03runD15WithSafeTimeout_8fallback4taskxs8DurationV_xxyYaYbKctYas8SendableRzlFZSDySSSbG_Tt3g5TQ0_;

  return _s18SiriContactsCommon0aB8TaskUtilO03runD033_F52E9FEBD6E8BA5C611BA64213444081LL_4task12timeoutErrorxs8DurationV_xyYaYbKcq_tYaKs8SendableRzs0P0R_r0_lFZSDySSSbG_AC07TimeoutP0OTt3g5(a1, a2, a4, a5, a1, a2);
}

uint64_t _s18SiriContactsCommon0aB8TaskUtilO03runD15WithSafeTimeout_8fallback4taskxs8DurationV_xxyYaYbKctYas8SendableRzlFZSDySSSbG_Tt3g5TQ0_()
{
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_4_3();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *v1;
  OUTLINED_FUNCTION_0_3();
  *v7 = v6;
  *(v8 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_21();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_15();

    return v13(v12);
  }
}

uint64_t _s18SiriContactsCommon0aB8TaskUtilO03runD15WithSafeTimeout_8fallback4taskxs8DurationV_xxyYaYbKctYas8SendableRzlFZSDySSSbG_Tt3g5TY1_()
{
  v21 = v0;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = v0[8];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriContacts);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[8];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v11 = v0[2];
    v10 = v0[3];
    v12 = v0[4];
    v13 = Error.localizedDescription.getter();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v20);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_26683A000, v4, v5, "#SiriContactsTaskUtil runTaskWithSafeTimeout error caught: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {
  }

  v16 = v0[6];
  v19 = v0[1];

  return v19(v17);
}

uint64_t specialized Dictionary.merging(_:uniquingKeysWith:)(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(a1, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t FaceTimeHandles.FacetimeHandle.identifier.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_6_2();
}

uint64_t FaceTimeHandles.FacetimeHandle.label.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_6_2();
}

uint64_t FaceTimeHandles.FacetimeHandle.value.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_6_2();
}

uint64_t CNContact.getEmailIMessageHandles()()
{
  *(v1 + 16) = v0;
  return OUTLINED_FUNCTION_0_1();
}

{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_6_3();
  v2 = v1[6];
  v3 = v1[5];
  v4 = v1[4];
  v5 = v1[3];
  v6 = *v0;
  OUTLINED_FUNCTION_0_3();
  *v7 = v6;

  v8 = OUTLINED_FUNCTION_11_1();

  return v9(v8);
}

id CNContact.getEmailIMessageHandles()()
{
  OUTLINED_FUNCTION_7_3();
  v1 = v0[2];
  v2 = *MEMORY[0x277D186B0];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  v6 = [v1 emailAddresses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v0[3] = v7;

  result = [objc_opt_self() sharedInstance];
  v0[4] = result;
  if (result)
  {
    v9 = result;
    v0[5] = v5;
    OUTLINED_FUNCTION_10_2(&_s18SiriContactsCommon9IDSHelperO19getAvailableHandles3for5given12phoneNumbers17idsStatusProviderSayAA08FaceTimeG0V14FacetimeHandleVGSS_SaySo14CNLabeledValueCySo8NSStringCGGSayAOySo13CNPhoneNumberCGGAA18IDSStatusProviding_ptYaFZTf4nnnen_nSo20IDSIDQueryControllerC_Tt3g5Tu);
    v13 = v10;
    v11 = swift_task_alloc();
    v0[6] = v11;
    *v11 = v0;
    v11[1] = CNContact.getEmailIMessageHandles();
    v12 = MEMORY[0x277D84F90];

    return v13(v3, v5, v7, v12, v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CNContact.getFacetimeAudioHandles()()
{
  *(v1 + 16) = v0;
  return OUTLINED_FUNCTION_0_1();
}

{
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_6_3();
  v2 = v1[7];
  v3 = v1[6];
  v4 = v1[5];
  v5 = v1[4];
  v6 = v1[3];
  v7 = *v0;
  OUTLINED_FUNCTION_0_3();
  *v8 = v7;

  v9 = OUTLINED_FUNCTION_11_1();

  return v10(v9);
}

id CNContact.getFacetimeAudioHandles()()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[2];
  v2 = *MEMORY[0x277D18690];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  v5 = [v1 emailAddresses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
  v0[3] = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = [v1 phoneNumbers];
  v0[4] = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  result = [objc_opt_self() sharedInstance];
  v0[5] = result;
  if (result)
  {
    v0[6] = v4;
    OUTLINED_FUNCTION_10_2(&_s18SiriContactsCommon9IDSHelperO19getAvailableHandles3for5given12phoneNumbers17idsStatusProviderSayAA08FaceTimeG0V14FacetimeHandleVGSS_SaySo14CNLabeledValueCySo8NSStringCGGSayAOySo13CNPhoneNumberCGGAA18IDSStatusProviding_ptYaFZTf4nnnen_nSo20IDSIDQueryControllerC_Tt3g5Tu);
    v10 = v8;
    v9 = swift_task_alloc();
    v0[7] = v9;
    *v9 = v0;
    v9[1] = CNContact.getFacetimeAudioHandles();
    OUTLINED_FUNCTION_9_3();

    return v10();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id CNContact.getFacetimeVideoHandles()()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[2];
  v2 = *MEMORY[0x277D18698];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  v5 = [v1 emailAddresses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
  v0[3] = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = [v1 phoneNumbers];
  v0[4] = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  result = [objc_opt_self() sharedInstance];
  v0[5] = result;
  if (result)
  {
    v0[6] = v4;
    OUTLINED_FUNCTION_10_2(&_s18SiriContactsCommon9IDSHelperO19getAvailableHandles3for5given12phoneNumbers17idsStatusProviderSayAA08FaceTimeG0V14FacetimeHandleVGSS_SaySo14CNLabeledValueCySo8NSStringCGGSayAOySo13CNPhoneNumberCGGAA18IDSStatusProviding_ptYaFZTf4nnnen_nSo20IDSIDQueryControllerC_Tt3g5Tu);
    v10 = v8;
    v9 = swift_task_alloc();
    v0[7] = v9;
    *v9 = v0;
    v9[1] = CNContact.getFacetimeVideoHandles();
    OUTLINED_FUNCTION_9_3();

    return v10();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CNContact.facetimeURL(for:handleType:isVideo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v12 = [objc_allocWithZone(MEMORY[0x277D6EE28]) init];
  v13 = [v12 faceTimeProvider];

  v14 = [objc_allocWithZone(MEMORY[0x277D6EED0]) initWithProvider_];
  type metadata accessor for TUHandle(0, &lazy cache variable for type metadata for TUHandle, 0x277D6EEE8);

  v15 = TUHandle.__allocating_init(type:value:)(a3, a1, a2);
  [v14 setHandle_];

  if ([v6 hasBeenPersisted])
  {
    v16 = [v6 identifier];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    outlined bridged method (mbnn) of @objc TUDialRequest.contactIdentifier.setter(v17, v19, v14);
  }

  [v14 setVideo_];
  [v14 setTtyType_];
  v20 = [v14 URL];
  if (v20)
  {
    v21 = v20;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v22 = 0;
    v14 = v21;
  }

  else
  {
    v22 = 1;
  }

  v23 = type metadata accessor for URL();

  return __swift_storeEnumTagSinglePayload(a5, v22, 1, v23);
}

id TUHandle.__allocating_init(type:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = MEMORY[0x26D5DE450](a2, a3);

  v8 = [v6 initWithType:a1 value:v7];

  return v8;
}

uint64_t CNContact.familyNamePronunciationString.getter(uint64_t a1, SEL *a2)
{
  v4 = OUTLINED_FUNCTION_22();
  v6 = outlined bridged method (pb) of @objc CNContact.pronunciationGivenName.getter(v4, v5);
  v8 = Optional<A>.isNilOrEmpty.getter(v6, v7);

  if (v8)
  {
    v9 = [v2 *a2];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v10 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      v14 = [v2 *a2];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      OUTLINED_FUNCTION_25();
    }
  }

  else
  {
    v15 = OUTLINED_FUNCTION_22();
    outlined bridged method (pb) of @objc CNContact.pronunciationGivenName.getter(v15, v16);
    OUTLINED_FUNCTION_25();
  }

  return OUTLINED_FUNCTION_6_2();
}

uint64_t CNContact.middleNamePronunciationString.getter()
{
  v1 = [v0 phoneticMiddleName];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v6 = [v0 phoneticMiddleName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_25();
  }

  return OUTLINED_FUNCTION_6_2();
}

uint64_t CNContact.getPhoneticRepresentation(locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine11PhonemeDataVSgMd, &_s16SiriDialogEngine11PhonemeDataVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v31 - v5;
  v7 = type metadata accessor for PhonemeData();
  v8 = OUTLINED_FUNCTION_11_0(v7);
  v32 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_3();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v31 - v17;
  v19 = type metadata accessor for Locale();
  v20 = OUTLINED_FUNCTION_11_0(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1_3();
  v27 = v26 - v25;
  outlined init with copy of URL?(v33, v18, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {
    outlined destroy of URL?(v18, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
LABEL_5:
    PersonNameComponents.init()();
    CNContact.givenNamePronunciationString.getter();
    PersonNameComponents.givenName.setter();
    CNContact.familyNamePronunciationString.getter();
    PersonNameComponents.familyName.setter();
    CNContact.middleNamePronunciationString.getter();
    PersonNameComponents.middleName.setter();
    v28 = type metadata accessor for PersonNameComponents();
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v28);
  }

  (*(v22 + 32))(v27, v18, v19);
  static PhonemeDataParser.parse(from:)(v34);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    (*(v22 + 8))(v27, v19);
    outlined destroy of URL?(v6, &_s16SiriDialogEngine11PhonemeDataVSgMd, &_s16SiriDialogEngine11PhonemeDataVSgMR);
    goto LABEL_5;
  }

  v30 = v32;
  (*(v32 + 32))(v14, v6, v7);
  PhonemeData.asNameComponents(locale:)();
  (*(v30 + 8))(v14, v7);
  return (*(v22 + 8))(v27, v19);
}

BOOL CNContact.isBirthdayToday.getter()
{
  v1 = v0;
  v2 = type metadata accessor for DateComponents();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v3);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v35 - v12;
  MEMORY[0x28223BE20](v11);
  static DateComponents.startOfToday.getter();
  v14 = [v1 birthday];
  if (v14)
  {
    v15 = v14;
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v5 + 32))(v13, v10, v2);
    v16 = DateComponents.month.getter();
    v18 = v17;
    v19 = DateComponents.month.getter();
    if (v18)
    {
      if ((v20 & 1) == 0)
      {
LABEL_11:
        v32 = *(v5 + 8);
        v32(v13, v2);
        v33 = OUTLINED_FUNCTION_18();
        (v32)(v33);
        return 0;
      }
    }

    else if ((v20 & 1) != 0 || v16 != v19)
    {
      goto LABEL_11;
    }

    v24 = DateComponents.day.getter();
    v26 = v25;
    v27 = DateComponents.day.getter();
    v29 = v28;
    v30 = *(v5 + 8);
    v30(v13, v2);
    v31 = OUTLINED_FUNCTION_18();
    (v30)(v31);
    if ((v26 & 1) == 0)
    {
      return (v29 & 1) == 0 && v24 == v27;
    }

    if (v29)
    {
      return 1;
    }
  }

  else
  {
    v21 = *(v5 + 8);
    v22 = OUTLINED_FUNCTION_18();
    v23(v22);
  }

  return 0;
}

uint64_t _s18SiriContactsCommon0aB8TaskUtilO03runD033_F52E9FEBD6E8BA5C611BA64213444081LL_4task12timeoutErrorxs8DurationV_xyYaYbKcq_tYaKs8SendableRzs0P0R_r0_lFZSDySSSbG_AC07TimeoutP0OTt3g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a3;
  v6[8] = a4;
  v6[5] = a1;
  v6[6] = a2;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v6[9] = swift_task_alloc();
  v6[2] = a5;
  v6[3] = a6;

  return MEMORY[0x2822009F8](_s18SiriContactsCommon0aB8TaskUtilO03runD033_F52E9FEBD6E8BA5C611BA64213444081LL_4task12timeoutErrorxs8DurationV_xyYaYbKcq_tYaKs8SendableRzs0P0R_r0_lFZSDySSSbG_AC07TimeoutP0OTt3g5TY0_, 0, 0);
}

uint64_t _s18SiriContactsCommon0aB8TaskUtilO03runD033_F52E9FEBD6E8BA5C611BA64213444081LL_4task12timeoutErrorxs8DurationV_xyYaYbKcq_tYaKs8SendableRzs0P0R_r0_lFZSDySSSbG_AC07TimeoutP0OTt3g5TY0_()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[5];
  type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_24();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v4;
  v10[5] = v1;

  v11 = _sScTss5Error_pRs_rlE8detached4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntFZSDySSSbG_Tt2g5(0, 0, v2, &async function pointer to partial apply for specialized closure #1 in static SiriContactsTaskUtil.runTask<A, B>(_:task:timeoutError:), v10);
  v0[10] = v11;
  outlined destroy of URL?(v2, &_sScPSgMd, &_sScPSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSbGMd, &_sSDySSSbGMR);
  v12 = swift_task_alloc();
  v0[11] = v12;
  v12[2] = v11;
  v12[3] = v5;
  v12[4] = v3;
  v12[5] = v0 + 2;
  v13 = *(MEMORY[0x277D859B8] + 4);
  v14 = swift_task_alloc();
  v0[12] = v14;
  *v14 = v0;
  v14[1] = _s18SiriContactsCommon0aB8TaskUtilO03runD033_F52E9FEBD6E8BA5C611BA64213444081LL_4task12timeoutErrorxs8DurationV_xyYaYbKcq_tYaKs8SendableRzs0P0R_r0_lFZSDySSSbG_AC07TimeoutP0OTt3g5TQ1_;
  OUTLINED_FUNCTION_26();

  return MEMORY[0x282200740]();
}

uint64_t _s18SiriContactsCommon0aB8TaskUtilO03runD033_F52E9FEBD6E8BA5C611BA64213444081LL_4task12timeoutErrorxs8DurationV_xyYaYbKcq_tYaKs8SendableRzs0P0R_r0_lFZSDySSSbG_AC07TimeoutP0OTt3g5TQ1_()
{
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_6_3();
  v3 = v2;
  OUTLINED_FUNCTION_4_3();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_0_3();
  *v8 = v7;
  *(v3 + 104) = v0;

  if (!v0)
  {
    v9 = *(v3 + 88);
  }

  OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t _s18SiriContactsCommon0aB8TaskUtilO03runD033_F52E9FEBD6E8BA5C611BA64213444081LL_4task12timeoutErrorxs8DurationV_xyYaYbKcq_tYaKs8SendableRzs0P0R_r0_lFZSDySSSbG_AC07TimeoutP0OTt3g5TY2_()
{
  OUTLINED_FUNCTION_5_3();
  v2 = v0[9];
  v1 = v0[10];

  v3 = v0[4];

  v4 = OUTLINED_FUNCTION_15();

  return v5(v4);
}

uint64_t _s18SiriContactsCommon0aB8TaskUtilO03runD033_F52E9FEBD6E8BA5C611BA64213444081LL_4task12timeoutErrorxs8DurationV_xyYaYbKcq_tYaKs8SendableRzs0P0R_r0_lFZSDySSSbG_AC07TimeoutP0OTt3g5TY3_()
{
  OUTLINED_FUNCTION_5_3();
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];

  OUTLINED_FUNCTION_16();
  v5 = v0[13];

  return v4();
}

uint64_t specialized closure #1 in static SiriContactsTaskUtil.runTask<A, B>(_:task:timeoutError:)(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = specialized closure #1 in static SiriContactsTaskUtil.runTask<A, B>(_:task:timeoutError:);

  return v7(v3 + 16);
}

uint64_t specialized closure #1 in static SiriContactsTaskUtil.runTask<A, B>(_:task:timeoutError:)()
{
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_4_3();
  *v3 = v2;
  v5 = *(v4 + 24);
  v6 = *v1;
  OUTLINED_FUNCTION_0_3();
  *v7 = v6;
  *(v8 + 32) = v0;

  OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  return (*(v0 + 8))(*(v0 + 16));
}

{
  OUTLINED_FUNCTION_16();
  v1 = *(v0 + 32);
  return v2();
}

uint64_t _sScTss5Error_pRs_rlE8detached4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntFZSDySSSbG_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v23 - v10;
  outlined init with copy of URL?(a3, v23 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of URL?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSbGMd, &_sSDySSSbGMR);
      v20 = (v18 | v16);
      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSbGMd, &_sSDySSSbGMR);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t specialized closure #2 in static SiriContactsTaskUtil.runTask<A, B>(_:task:timeoutError:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScg8IteratorVySDySSSbGs5Error_p_GMd, &_sScg8IteratorVySDySSSbGs5Error_p_GMR);
  v6[14] = v7;
  v8 = *(v7 - 8);
  v6[15] = v8;
  v9 = *(v8 + 64) + 15;
  v6[16] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v6[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized closure #2 in static SiriContactsTaskUtil.runTask<A, B>(_:task:timeoutError:), 0, 0);
}

uint64_t specialized closure #2 in static SiriContactsTaskUtil.runTask<A, B>(_:task:timeoutError:)()
{
  v1 = v0[17];
  v23 = v0[16];
  v2 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[8];
  v7 = v0[9];
  v8 = type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_24();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v8);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v7;

  _sScg7addTask8priority9operationyScPSg_xyYaKYAcntFSDySSSbG_s5Error_pTg5(v1, &async function pointer to partial apply for specialized closure #1 in closure #2 in static SiriContactsTaskUtil.runTask<A, B>(_:task:timeoutError:), v12);
  outlined destroy of URL?(v1, &_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_24();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v8);
  v0[2] = v2;
  v0[3] = v3;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v5;
  v16[5] = v4;
  outlined init with take of SiriContactsTaskUtil.TimeoutError((v0 + 2), (v16 + 6));
  _sScg7addTask8priority9operationyScPSg_xyYaKYAcntFSDySSSbG_s5Error_pTg5(v1, &async function pointer to partial apply for specialized closure #2 in closure #2 in static SiriContactsTaskUtil.runTask<A, B>(_:task:timeoutError:), v16);
  outlined destroy of URL?(v1, &_sScPSgMd, &_sScPSgMR);
  v17 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSbGMd, &_sSDySSSbGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  OUTLINED_FUNCTION_22();
  ThrowingTaskGroup.makeAsyncIterator()();
  v18 = *(MEMORY[0x277D85828] + 4);
  v19 = swift_task_alloc();
  v0[18] = v19;
  *v19 = v0;
  v19[1] = specialized closure #2 in static SiriContactsTaskUtil.runTask<A, B>(_:task:timeoutError:);
  v20 = v0[16];
  v21 = v0[14];
  OUTLINED_FUNCTION_21();

  return MEMORY[0x2822004E8]();
}

{
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_6_3();
  v2 = *(v1 + 144);
  v3 = *v0;
  OUTLINED_FUNCTION_0_3();
  *v4 = v3;

  OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

{
  OUTLINED_FUNCTION_7_3();
  (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
  if (*(v0 + 48))
  {
    v2 = *(v0 + 128);
    v1 = *(v0 + 136);

    v3 = OUTLINED_FUNCTION_11_1();

    return v4(v3);
  }

  else
  {
    *(v0 + 32) = *(v0 + 96);
    lazy protocol witness table accessor for type SiriContactsTaskUtil.TimeoutError and conformance SiriContactsTaskUtil.TimeoutError();
    if (!_getErrorEmbeddedNSError<A>(_:)())
    {
      v7 = *(v0 + 96);
      v6 = *(v0 + 104);
      swift_allocError();
      *v8 = v7;
      v8[1] = v6;
    }

    swift_willThrow();
    v10 = *(v0 + 128);
    v9 = *(v0 + 136);

    OUTLINED_FUNCTION_16();

    return v11();
  }
}

{
  OUTLINED_FUNCTION_5_3();
  (*(v0[15] + 8))(v0[16], v0[14]);
  v1 = v0[7];
  v3 = v0[16];
  v2 = v0[17];

  OUTLINED_FUNCTION_16();

  return v4();
}

{
  OUTLINED_FUNCTION_20();
  v3 = v2;
  OUTLINED_FUNCTION_6_3();
  v5 = v4;
  OUTLINED_FUNCTION_4_3();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  OUTLINED_FUNCTION_0_3();
  *v10 = v9;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v11 = *(v9 + 8);

  return v11();
}

uint64_t specialized closure #1 in closure #2 in static SiriContactsTaskUtil.runTask<A, B>(_:task:timeoutError:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(MEMORY[0x277D857C8] + 4);
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSbGMd, &_sSDySSSbGMR);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v6 = v3;
  v6[1] = specialized closure #1 in closure #2 in static SiriContactsTaskUtil.runTask<A, B>(_:task:timeoutError:);
  v9 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v3 + 16, a3, v7, v8, v9);
}

uint64_t specialized closure #1 in closure #2 in static SiriContactsTaskUtil.runTask<A, B>(_:task:timeoutError:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_6_3();
  v3 = v2;
  OUTLINED_FUNCTION_4_3();
  *v4 = v3;
  v6 = *(v5 + 24);
  v7 = *v1;
  OUTLINED_FUNCTION_0_3();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    v11 = *(v3 + 16);
    v12 = *(v7 + 8);

    return v12(v11);
  }
}

uint64_t _sScg7addTask8priority9operationyScPSg_xyYaKYAcntFSDySSSbG_s5Error_pTg5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v20 - v9;
  outlined init with copy of URL?(a1, v20 - v9, &_sScPSgMd, &_sScPSgMR);
  v11 = type metadata accessor for TaskPriority();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    outlined destroy of URL?(v10, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  if (*(a3 + 16))
  {
    v12 = *(a3 + 24);
    v13 = *(a3 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v14 = dispatch thunk of Actor.unownedExecutor.getter();
    v16 = v15;
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSbGMd, &_sSDySSSbGMR);
  v18 = (v16 | v14);
  if (v16 | v14)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v14;
    v21[3] = v16;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v17;
  swift_task_create();
}

uint64_t specialized closure #2 in closure #2 in static SiriContactsTaskUtil.runTask<A, B>(_:task:timeoutError:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v7 = type metadata accessor for ContinuousClock();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized closure #2 in closure #2 in static SiriContactsTaskUtil.runTask<A, B>(_:task:timeoutError:), 0, 0);
}

uint64_t specialized closure #2 in closure #2 in static SiriContactsTaskUtil.runTask<A, B>(_:task:timeoutError:)()
{
  OUTLINED_FUNCTION_5_3();
  v1 = v0[10];
  static Clock<>.continuous.getter();
  OUTLINED_FUNCTION_10_2(&async function pointer to specialized Clock.sleep(for:tolerance:));
  v8 = v2;
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = specialized closure #2 in closure #2 in static SiriContactsTaskUtil.runTask<A, B>(_:task:timeoutError:);
  v4 = v0[10];
  v5 = v0[5];
  v6 = OUTLINED_FUNCTION_23(v0[4]);

  return v8(v6);
}

{
  OUTLINED_FUNCTION_20();
  v2 = *v1;
  OUTLINED_FUNCTION_4_3();
  *v4 = v3;
  v5 = v2[11];
  *v4 = *v1;
  *(v3 + 96) = v0;

  (*(v2[9] + 8))(v2[10], v2[8]);
  OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  OUTLINED_FUNCTION_7_3();
  *(v0 + 16) = *(v0 + 48);
  lazy protocol witness table accessor for type SiriContactsTaskUtil.TimeoutError and conformance SiriContactsTaskUtil.TimeoutError();
  if (!_getErrorEmbeddedNSError<A>(_:)())
  {
    v2 = *(v0 + 48);
    v1 = *(v0 + 56);
    swift_allocError();
    *v3 = v2;
    v3[1] = v1;
  }

  swift_willThrow();
  v4 = *(v0 + 80);

  OUTLINED_FUNCTION_16();

  return v5();
}

{
  OUTLINED_FUNCTION_5_3();
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);

  OUTLINED_FUNCTION_16();

  return v3();
}

uint64_t specialized Clock.sleep(for:tolerance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](specialized Clock.sleep(for:tolerance:), 0, 0);
}

uint64_t specialized Clock.sleep(for:tolerance:)()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  type metadata accessor for ContinuousClock();
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock, MEMORY[0x277D85928]);
  dispatch thunk of Clock.now.getter();
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant, MEMORY[0x277D858F8]);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v4 + 8);
  v0[12] = v6;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v3);
  v7 = *(MEMORY[0x277D85A58] + 4);
  v8 = swift_task_alloc();
  v0[14] = v8;
  *v8 = v0;
  v8[1] = specialized Clock.sleep(for:tolerance:);
  v9 = v0[7];
  OUTLINED_FUNCTION_23(v0[11]);
  OUTLINED_FUNCTION_26();

  return MEMORY[0x2822008C8]();
}

{
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_6_3();
  v3 = v2;
  OUTLINED_FUNCTION_4_3();
  *v4 = v3;
  v6 = v5[14];
  v7 = v5[13];
  v8 = v5[12];
  v9 = v5[11];
  v10 = v5[8];
  v11 = *v1;
  OUTLINED_FUNCTION_0_3();
  *v12 = v11;
  v3[15] = v0;

  v8(v9, v10);
  if (v0)
  {
    OUTLINED_FUNCTION_21();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }

  else
  {
    v17 = v3[10];
    v16 = v3[11];

    OUTLINED_FUNCTION_16();

    return v18();
  }
}

{
  OUTLINED_FUNCTION_5_3();
  v2 = v0[10];
  v1 = v0[11];

  OUTLINED_FUNCTION_16();
  v4 = v0[15];

  return v3();
}

uint64_t specialized closure #1 in Dictionary.merge(_:uniquingKeysWith:)(_BYTE *a1, uint64_t a2, uint64_t a3, char a4)
{
  *a1 = a4;

  return a2;
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v46 = a5;
  specialized LazyMapSequence.makeIterator()(a1, a2, a3, v45);
  v6 = v45[1];
  v7 = v45[3];
  v8 = v45[4];
  v37 = v45[5];
  v38 = v45[0];
  v9 = (v45[2] + 64) >> 6;

  v36 = v6;
  if (v8)
  {
    while (1)
    {
      v39 = a4;
      v10 = v7;
LABEL_8:
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = (*(v38 + 48) + 16 * v12);
      v14 = v13[1];
      LOBYTE(v12) = *(*(v38 + 56) + v12);
      v43[0] = *v13;
      v43[1] = v14;
      v44 = v12;

      v37(&v40, v43);

      v15 = v40;
      v16 = v41;
      v17 = v42;
      v18 = *v46;
      v20 = specialized __RawDictionaryStorage.find<A>(_:)(v40, v41);
      v21 = *(v18 + 16);
      v22 = (v19 & 1) == 0;
      v23 = v21 + v22;
      if (__OFADD__(v21, v22))
      {
        break;
      }

      v24 = v19;
      if (*(v18 + 24) >= v23)
      {
        if ((v39 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSbGMd, &_ss17_NativeDictionaryVySSSbGMR);
          _NativeDictionary.copy()();
        }
      }

      else
      {
        v25 = v46;
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, v39 & 1);
        v26 = *v25;
        v27 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
        if ((v24 & 1) != (v28 & 1))
        {
          goto LABEL_24;
        }

        v20 = v27;
      }

      v8 &= v8 - 1;
      v29 = *v46;
      if (v24)
      {
        v30 = *(v29[7] + v20);

        *(v29[7] + v20) = (v30 | v17) & 1;
      }

      else
      {
        v29[(v20 >> 6) + 8] |= 1 << v20;
        v31 = (v29[6] + 16 * v20);
        *v31 = v15;
        v31[1] = v16;
        *(v29[7] + v20) = v17;
        v32 = v29[2];
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_23;
        }

        v29[2] = v34;
      }

      a4 = 1;
      v7 = v10;
      v6 = v36;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        outlined consume of [String : Bool].Iterator._Variant();
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v39 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSbGMd, &_ss18_DictionaryStorageCySSSbGMR);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

  v36 = v3;
  v37 = v5;
  v9 = 0;
  v10 = (v5 + 64);
  v11 = 1 << *(v5 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = result + 64;
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v35 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(*(v5 + 56) + v19);
    if ((v38 & 1) == 0)
    {
      v24 = v20[1];
    }

    v25 = *(v8 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v26 = -1 << *(v8 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = (*(v8 + 48) + 16 * v29);
    *v34 = v21;
    v34[1] = v22;
    *(*(v8 + 56) + v29) = v23;
    ++*(v8 + 16);
    v5 = v37;
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v15 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t specialized UnsafeMutablePointer.assign(repeating:count:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_26685FEF0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(uint64_t a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t outlined bridged method (pb) of @objc CNContact.pronunciationGivenName.getter(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_25();
  }

  return OUTLINED_FUNCTION_6_2();
}

void outlined bridged method (mbnn) of @objc TUDialRequest.contactIdentifier.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x26D5DE450]();

  [a3 setContactIdentifier_];
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized closure #1 in Dictionary.merge(_:uniquingKeysWith:)(&v6, *a1, *(a1 + 8), *(a1 + 16));
  v4 = v6;
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  return result;
}

uint64_t specialized LazyMapSequence.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t specialized closure #1 in static SiriContactsTaskUtil.runTask<A, B>(_:task:timeoutError:)(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = specialized closure #1 in static SiriContactsTaskUtil.runTask<A, B>(_:task:timeoutError:);

  return specialized closure #1 in static SiriContactsTaskUtil.runTask<A, B>(_:task:timeoutError:)(a2, a3, a4);
}

uint64_t specialized closure #2 in static SiriContactsTaskUtil.runTask<A, B>(_:task:timeoutError:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  *(v6 + 16) = a1;
  v11 = *a6;
  v12 = a6[1];
  v13 = swift_task_alloc();
  *(v6 + 24) = v13;
  *v13 = v6;
  v13[1] = specialized closure #2 in static SiriContactsTaskUtil.runTask<A, B>(_:task:timeoutError:);

  return specialized closure #2 in static SiriContactsTaskUtil.runTask<A, B>(_:task:timeoutError:)(a2, a3, a4, a5, v11, v12);
}

uint64_t specialized closure #1 in closure #2 in static SiriContactsTaskUtil.runTask<A, B>(_:task:timeoutError:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = specialized closure #1 in static SiriContactsTaskUtil.runTask<A, B>(_:task:timeoutError:);

  return specialized closure #1 in closure #2 in static SiriContactsTaskUtil.runTask<A, B>(_:task:timeoutError:)(a2, a3, a4);
}

uint64_t specialized closure #2 in closure #2 in static SiriContactsTaskUtil.runTask<A, B>(_:task:timeoutError:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  *(v6 + 16) = a1;
  v11 = *a6;
  v12 = a6[1];
  v13 = swift_task_alloc();
  *(v6 + 24) = v13;
  *v13 = v6;
  v13[1] = specialized closure #1 in static SiriContactsTaskUtil.runTask<A, B>(_:task:timeoutError:);

  return specialized closure #2 in closure #2 in static SiriContactsTaskUtil.runTask<A, B>(_:task:timeoutError:)(a2, a3, a4, a5, v11, v12);
}

uint64_t _s18SiriContactsCommon9IDSHelperO19getAvailableHandles3for5given12phoneNumbers17idsStatusProviderSayAA08FaceTimeG0V14FacetimeHandleVGSS_SaySo14CNLabeledValueCySo8NSStringCGGSayAOySo13CNPhoneNumberCGGAA18IDSStatusProviding_ptYaFZTf4nnnen_nSo20IDSIDQueryControllerC_Tt3g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5[20] = a3;
  v5[21] = a4;
  v5[18] = a1;
  v5[19] = a2;
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5[22] = v7;
  v8 = *(v7 - 8);
  v5[23] = v8;
  v9 = *(v8 + 64) + 15;
  v5[24] = swift_task_alloc();
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5[25] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v5[26] = swift_task_alloc();
  v12 = *(*(type metadata accessor for DispatchQoS() - 8) + 64) + 15;
  v5[27] = swift_task_alloc();
  v5[5] = type metadata accessor for TUHandle(0, &lazy cache variable for type metadata for IDSIDQueryController, 0x277D18728);
  v5[6] = &protocol witness table for IDSIDQueryController;
  v5[2] = a5;
  v13 = a5;

  return MEMORY[0x2822009F8](_s18SiriContactsCommon9IDSHelperO19getAvailableHandles3for5given12phoneNumbers17idsStatusProviderSayAA08FaceTimeG0V14FacetimeHandleVGSS_SaySo14CNLabeledValueCySo8NSStringCGGSayAOySo13CNPhoneNumberCGGAA18IDSStatusProviding_ptYaFZTf4nnnen_nSo20IDSIDQueryControllerC_Tt3g5TY0_, 0, 0);
}

uint64_t _s18SiriContactsCommon9IDSHelperO19getAvailableHandles3for5given12phoneNumbers17idsStatusProviderSayAA08FaceTimeG0V14FacetimeHandleVGSS_SaySo14CNLabeledValueCySo8NSStringCGGSayAOySo13CNPhoneNumberCGGAA18IDSStatusProviding_ptYaFZTf4nnnen_nSo20IDSIDQueryControllerC_Tt3g5TY0_()
{
  v1 = v0;
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v2 = type metadata accessor for Logger();
  v0[28] = __swift_project_value_buffer(v2, static Logger.siriContacts);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_26683A000, v3, v4, "#IDSHelper getAvailableHandles", v5, 2u);
    OUTLINED_FUNCTION_6();
  }

  v7 = v0[20];
  v6 = v0[21];

  v8 = OUTLINED_FUNCTION_18();
  v10 = static IDSHelper.format(emailAddresses:phoneNumbers:)(v8, v9);
  v0[29] = v10;
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = v10;
    v39 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
    v13 = v39;
    v14 = *(v39 + 16);
    v15 = 16 * v14;
    v16 = (v12 + 96);
    do
    {
      v18 = *(v16 - 1);
      v17 = *v16;
      v19 = v14 + 1;
      v20 = *(v39 + 24);

      if (v14 >= v20 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v20 > 1, v19, 1);
      }

      *(v39 + 16) = v19;
      v21 = v39 + v15;
      *(v21 + 32) = v18;
      *(v21 + 40) = v17;
      v15 += 16;
      v16 += 9;
      ++v14;
      --v11;
    }

    while (v11);
    v22 = MEMORY[0x277D84F90];
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
    v22 = MEMORY[0x277D84F90];
  }

  v1[30] = v13;
  v24 = v1[26];
  v23 = v1[27];
  v26 = v1[24];
  v25 = v1[25];
  v27 = v1[23];
  v38 = v1[19];
  v36 = v1[22];
  v37 = v1[18];
  type metadata accessor for TUHandle(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  static DispatchQoS.userInitiated.getter();
  v1[17] = v22;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, "pF");
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v27 + 104))(v26, *MEMORY[0x277D85260], v36);
  v28 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v1[31] = v28;
  v29 = Dictionary.init(dictionaryLiteral:)();
  v1[32] = v29;
  outlined init with copy of IDSStatusProviding((v1 + 2), (v1 + 7));
  v30 = swift_allocObject();
  v1[33] = v30;
  outlined init with take of IDSStatusProviding((v1 + 7), (v30 + 2));
  v30[7] = v13;
  v30[8] = v37;
  v30[9] = v38;
  v30[10] = v28;

  v31 = v28;
  v32 = swift_task_alloc();
  v1[34] = v32;
  *v32 = v1;
  v32[1] = _s18SiriContactsCommon9IDSHelperO19getAvailableHandles3for5given12phoneNumbers17idsStatusProviderSayAA08FaceTimeG0V14FacetimeHandleVGSS_SaySo14CNLabeledValueCySo8NSStringCGGSayAOySo13CNPhoneNumberCGGAA18IDSStatusProviding_ptYaFZTf4nnnen_nSo20IDSIDQueryControllerC_Tt3g5TQ1_;
  v33 = OUTLINED_FUNCTION_23(50000000000000000);

  return _s18SiriContactsCommon0aB8TaskUtilO03runD15WithSafeTimeout_8fallback4taskxs8DurationV_xxyYaYbKctYas8SendableRzlFZSDySSSbG_Tt3g5(v33, 0, v29, v34, v30);
}

uint64_t _s18SiriContactsCommon9IDSHelperO19getAvailableHandles3for5given12phoneNumbers17idsStatusProviderSayAA08FaceTimeG0V14FacetimeHandleVGSS_SaySo14CNLabeledValueCySo8NSStringCGGSayAOySo13CNPhoneNumberCGGAA18IDSStatusProviding_ptYaFZTf4nnnen_nSo20IDSIDQueryControllerC_Tt3g5TQ1_()
{
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_4_3();
  *v2 = v1;
  v4 = v3[34];
  v5 = v3[33];
  v6 = v3[32];
  v7 = *v0;
  OUTLINED_FUNCTION_0_3();
  *v8 = v7;
  *(v10 + 280) = v9;

  OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

void _s18SiriContactsCommon9IDSHelperO19getAvailableHandles3for5given12phoneNumbers17idsStatusProviderSayAA08FaceTimeG0V14FacetimeHandleVGSS_SaySo14CNLabeledValueCySo8NSStringCGGSayAOySo13CNPhoneNumberCGGAA18IDSStatusProviding_ptYaFZTf4nnnen_nSo20IDSIDQueryControllerC_Tt3g5TY2_()
{
  v47 = v0;
  v1 = 0;
  v2 = *(v0 + 280);
  v3 = *(v0 + 240);
  v4 = *(v3 + 16);
  v5 = v3 + 40;
  v6 = MEMORY[0x277D84F90];
LABEL_2:
  v7 = (v5 + 16 * v1);
  while (v4 != v1)
  {
    if (v1 >= *(v3 + 16))
    {
      __break(1u);
      return;
    }

    v9 = *(v7 - 1);
    v8 = *v7;
    if (!*(v2 + 16))
    {
      v13 = *v7;

LABEL_9:
      v46 = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1);
        v6 = v46;
      }

      v14 = v6;
      v15 = *(v6 + 16);
      v16 = *(v14 + 24);
      if (v15 >= v16 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v16 > 1, v15 + 1, 1);
        v14 = v46;
      }

      ++v1;
      *(v14 + 16) = v15 + 1;
      v17 = v14 + 16 * v15;
      *(v17 + 32) = v9;
      *(v17 + 40) = v8;
      v6 = v14;
      v5 = v3 + 40;
      goto LABEL_2;
    }

    v10 = *(v0 + 280);
    v11 = *v7;

    specialized __RawDictionaryStorage.find<A>(_:)(v9, v8);
    if ((v12 & 1) == 0)
    {
      goto LABEL_9;
    }

    v7 += 2;
    ++v1;
  }

  v18 = *(v0 + 240);
  v19 = *(v0 + 224);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v46 = v23;
    *v22 = 136315138;
    v24 = MEMORY[0x26D5DE570](v6, MEMORY[0x277D837D0]);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v46);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_26683A000, v20, v21, "#IDSHelper getAvailableHandles remainingDestinations: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  v27 = *(v0 + 248);
  if (*(v6 + 16))
  {
    v28 = v6;
    v29 = *(v0 + 144);
    v30 = *(v0 + 152);
    v31 = Dictionary.init(dictionaryLiteral:)();
    *(v0 + 288) = v31;
    outlined init with copy of IDSStatusProviding(v0 + 16, v0 + 96);
    v32 = swift_allocObject();
    *(v0 + 296) = v32;
    outlined init with take of IDSStatusProviding((v0 + 96), (v32 + 2));
    v32[7] = v28;
    v32[8] = v29;
    v32[9] = v30;
    v32[10] = v27;

    v33 = v27;
    v34 = swift_task_alloc();
    *(v0 + 304) = v34;
    *v34 = v0;
    v34[1] = _s18SiriContactsCommon9IDSHelperO19getAvailableHandles3for5given12phoneNumbers17idsStatusProviderSayAA08FaceTimeG0V14FacetimeHandleVGSS_SaySo14CNLabeledValueCySo8NSStringCGGSayAOySo13CNPhoneNumberCGGAA18IDSStatusProviding_ptYaFZTf4nnnen_nSo20IDSIDQueryControllerC_Tt3g5TQ3_;
    v35 = OUTLINED_FUNCTION_23(2500000000000000000);

    _s18SiriContactsCommon0aB8TaskUtilO03runD15WithSafeTimeout_8fallback4taskxs8DurationV_xxyYaYbKctYas8SendableRzlFZSDySSSbG_Tt3g5(v35, 0, v31, v36, v32);
  }

  else
  {
    v37 = *(v0 + 280);
    v38 = *(v0 + 232);

    v39 = OUTLINED_FUNCTION_22();
    static IDSHelper.process(statuses:abstractedHandles:)(v39, v40);

    v42 = *(v0 + 208);
    v41 = *(v0 + 216);
    v43 = *(v0 + 192);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));

    v44 = OUTLINED_FUNCTION_15();

    v45(v44);
  }
}

uint64_t _s18SiriContactsCommon9IDSHelperO19getAvailableHandles3for5given12phoneNumbers17idsStatusProviderSayAA08FaceTimeG0V14FacetimeHandleVGSS_SaySo14CNLabeledValueCySo8NSStringCGGSayAOySo13CNPhoneNumberCGGAA18IDSStatusProviding_ptYaFZTf4nnnen_nSo20IDSIDQueryControllerC_Tt3g5TQ3_()
{
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_4_3();
  *v2 = v1;
  v4 = v3[38];
  v5 = v3[37];
  v6 = v3[36];
  v7 = *v0;
  OUTLINED_FUNCTION_0_3();
  *v8 = v7;
  *(v10 + 312) = v9;

  OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t _s18SiriContactsCommon9IDSHelperO19getAvailableHandles3for5given12phoneNumbers17idsStatusProviderSayAA08FaceTimeG0V14FacetimeHandleVGSS_SaySo14CNLabeledValueCySo8NSStringCGGSayAOySo13CNPhoneNumberCGGAA18IDSStatusProviding_ptYaFZTf4nnnen_nSo20IDSIDQueryControllerC_Tt3g5TY4_()
{
  OUTLINED_FUNCTION_7_3();
  v1 = specialized Dictionary.merging(_:uniquingKeysWith:)(v0[39], v0[35]);
  v2 = v0[31];
  v3 = v0[29];
  if (*(v1 + 16))
  {
    static IDSHelper.process(statuses:abstractedHandles:)(v1, v0[29]);
  }

  else
  {
    v4 = v0[29];
  }

  v6 = v0[26];
  v5 = v0[27];
  v7 = v0[24];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v8 = OUTLINED_FUNCTION_11_1();

  return v9(v8);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for FaceTimeHandles(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for FaceTimeHandles(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for FaceTimeHandles.FacetimeHandle(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for FaceTimeHandles.FacetimeHandle(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for TUHandle(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A];
  if (!lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, "pF");
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A]);
  }

  return result;
}

uint64_t outlined init with copy of IDSStatusProviding(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined init with take of IDSStatusProviding(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t partial apply for closure #2 in static IDSHelper.getAvailableHandles(for:given:phoneNumbers:idsStatusProvider:)()
{
  OUTLINED_FUNCTION_7_3();
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[10];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_2_3(v5);
  *v6 = v7;
  v6[1] = partial apply for closure #4 in static IDSHelper.getAvailableHandles(for:given:phoneNumbers:idsStatusProvider:);
  OUTLINED_FUNCTION_9_3();

  return closure #2 in static IDSHelper.getAvailableHandles(for:given:phoneNumbers:idsStatusProvider:)(v8, v9, v10, v11, v12, v4);
}

uint64_t objectdestroyTm_0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 56);

  v2 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t partial apply for closure #4 in static IDSHelper.getAvailableHandles(for:given:phoneNumbers:idsStatusProvider:)()
{
  OUTLINED_FUNCTION_7_3();
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[10];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_2_3(v5);
  *v6 = v7;
  v6[1] = partial apply for closure #4 in static IDSHelper.getAvailableHandles(for:given:phoneNumbers:idsStatusProvider:);
  OUTLINED_FUNCTION_9_3();

  return closure #4 in static IDSHelper.getAvailableHandles(for:given:phoneNumbers:idsStatusProvider:)(v8, v9, v10, v11, v12, v4);
}

uint64_t sub_266848AB0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t partial apply for specialized closure #1 in static SiriContactsTaskUtil.runTask<A, B>(_:task:timeoutError:)()
{
  OUTLINED_FUNCTION_7_3();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_2_3(v5);
  *v6 = v7;
  v6[1] = partial apply for closure #4 in static IDSHelper.getAvailableHandles(for:given:phoneNumbers:idsStatusProvider:);
  v8 = OUTLINED_FUNCTION_8_3();

  return v9(v8);
}

void partial apply for specialized closure #2 in static SiriContactsTaskUtil.runTask<A, B>(_:task:timeoutError:)()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_2_3(v5);
  *v6 = v7;
  v6[1] = partial apply for specialized closure #2 in static SiriContactsTaskUtil.runTask<A, B>(_:task:timeoutError:);
  OUTLINED_FUNCTION_26();

  __asm { BR              X6 }
}

uint64_t partial apply for specialized closure #2 in static SiriContactsTaskUtil.runTask<A, B>(_:task:timeoutError:)()
{
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_6_3();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_0_3();
  *v4 = v3;

  OUTLINED_FUNCTION_16();

  return v5();
}

uint64_t sub_266848D4C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t partial apply for specialized closure #1 in closure #2 in static SiriContactsTaskUtil.runTask<A, B>(_:task:timeoutError:)()
{
  OUTLINED_FUNCTION_7_3();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_2_3(v4);
  *v5 = v6;
  v5[1] = partial apply for closure #4 in static IDSHelper.getAvailableHandles(for:given:phoneNumbers:idsStatusProvider:);
  v7 = OUTLINED_FUNCTION_8_3();

  return v8(v7);
}

uint64_t sub_266848E3C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

void partial apply for specialized closure #2 in closure #2 in static SiriContactsTaskUtil.runTask<A, B>(_:task:timeoutError:)()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_2_3(v5);
  *v6 = v7;
  v6[1] = partial apply for closure #4 in static IDSHelper.getAvailableHandles(for:given:phoneNumbers:idsStatusProvider:);
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_26();

  __asm { BR              X6 }
}

unint64_t lazy protocol witness table accessor for type SiriContactsTaskUtil.TimeoutError and conformance SiriContactsTaskUtil.TimeoutError()
{
  result = lazy protocol witness table cache variable for type SiriContactsTaskUtil.TimeoutError and conformance SiriContactsTaskUtil.TimeoutError;
  if (!lazy protocol witness table cache variable for type SiriContactsTaskUtil.TimeoutError and conformance SiriContactsTaskUtil.TimeoutError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriContactsTaskUtil.TimeoutError and conformance SiriContactsTaskUtil.TimeoutError);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_10_2@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_16()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t getEnumTagSinglePayload for SiriContactsTaskUtil.TimeoutError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SiriContactsTaskUtil.TimeoutError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t SiriContactsTaskUtil.TimeoutError.errorDescription.getter()
{
  _StringGuts.grow(_:)(51);
  MEMORY[0x26D5DE4E0](0xD000000000000028, 0x8000000266863790);
  v0 = Duration.description.getter();
  MEMORY[0x26D5DE4E0](v0);

  MEMORY[0x26D5DE4E0](0x6564656563786520, 0xE900000000000064);
  return 0;
}

uint64_t protocol witness for LocalizedError.errorDescription.getter in conformance SiriContactsTaskUtil.TimeoutError()
{
  v1 = *v0;
  v2 = v0[1];
  return SiriContactsTaskUtil.TimeoutError.errorDescription.getter();
}

uint64_t SiriContactEntity.__allocating_init(_:)()
{
  v1 = type metadata accessor for CustomAppEntityRepresentationBase.InstanceInfo();
  v2 = OUTLINED_FUNCTION_1_4(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5();
  v5 = *(v0 + 48);
  v6 = *(v0 + 52);
  v7 = swift_allocObject();
  v8 = OUTLINED_FUNCTION_0_4();
  v9(v8);
  CustomAppEntityRepresentationBase.init(_:)();
  v10 = OUTLINED_FUNCTION_3_4();
  v11(v10);
  return v7;
}

uint64_t SiriContactEntity.init(_:)()
{
  v1 = type metadata accessor for CustomAppEntityRepresentationBase.InstanceInfo();
  v2 = OUTLINED_FUNCTION_1_4(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5();
  v5 = OUTLINED_FUNCTION_0_4();
  v6(v5);
  CustomAppEntityRepresentationBase.init(_:)();
  v7 = OUTLINED_FUNCTION_3_4();
  v8(v7);
  return v0;
}

uint64_t SiriContactEntity.__deallocating_deinit()
{
  v0 = CustomAppEntityRepresentationBase.deinit();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

uint64_t type metadata accessor for SiriContactEntity()
{
  result = type metadata singleton initialization cache for SiriContactEntity;
  if (!type metadata singleton initialization cache for SiriContactEntity)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t protocol witness for static IntentValueSequenceElement.canConvertFrom(_:) in conformance SiriContactEntity(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DE00](a1, a2, WitnessTable);
}

uint64_t protocol witness for static IntentValueTypeIdentifiable.lnValueType.getter in conformance SiriContactEntity(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DB58](a1, WitnessTable);
}

uint64_t lazy protocol witness table accessor for type SiriContactEntity and conformance SiriContactEntity(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SiriContactEntity();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t protocol witness for static IntentValue.canConvert(_:) in conformance SiriContactEntity(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DDE8](a1, a2, WitnessTable);
}

uint64_t protocol witness for static IntentValue.from(_:context:) in conformance SiriContactEntity@<X0>(uint64_t *a1@<X8>)
{
  result = static CustomAppEntityRepresentationBase.from(_:context:)();
  *a1 = result;
  return result;
}

uint64_t Optional<A>.isNilOrEmpty.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v3 = v2 == 0;
  return !a2 || v3;
}

uint64_t Optional<A>.emptyToNil.getter(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a1;
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  return v2;
}

uint64_t String.sanitizeCNLabel.getter()
{
  v1 = type metadata accessor for CharacterSet();
  v2 = OUTLINED_FUNCTION_11_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5();
  CharacterSet.init(charactersIn:)();
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.trimmingCharacters(in:)();
  v7 = String.appleSafeLowercasedLabel.getter();

  (*(v4 + 8))(v0, v1);
  return v7;
}

uint64_t String.appleSafeLowercasedLabel.getter()
{
  v0 = String.lowercased()();
  v1 = v0._countAndFlagsBits == 0x656E6F687069 && v0._object == 0xE600000000000000;
  if (v1 || (OUTLINED_FUNCTION_2_4() & 1) != 0 || (v0._countAndFlagsBits == 0x64756F6C6369 ? (v2 = v0._object == 0xE600000000000000) : (v2 = 0), v2 || (OUTLINED_FUNCTION_2_4() & 1) != 0))
  {
  }

  return OUTLINED_FUNCTION_6_2();
}

uint64_t String.sanitizeCNLabelNonEmpty.getter()
{
  v0 = String.sanitizeCNLabel.getter();
  v2 = v1;

  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v0 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    return String.sanitizeCNLabel.getter();
  }

  else
  {
    return 32;
  }
}

uint64_t String.sanitizePhoneNumber.getter()
{
  v1 = type metadata accessor for CharacterSet();
  v2 = OUTLINED_FUNCTION_11_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5();
  static CharacterSet.urlPathAllowed.getter();
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.addingPercentEncoding(withAllowedCharacters:)();
  v8 = v7;
  result = (*(v4 + 8))(v0, v1);
  if (v8)
  {
    return OUTLINED_FUNCTION_6_2();
  }

  __break(1u);
  return result;
}

uint64_t static String.appName(for:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    objc_allocWithZone(MEMORY[0x277CC1E70]);

    v2 = OUTLINED_FUNCTION_6_2();
    v4 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(v2, v3, 1);
    v5 = v4;
    if (v4)
    {
      v6 = [v4 localizedName];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }
  }

  return OUTLINED_FUNCTION_6_2();
}

id @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(uint64_t a1, uint64_t a2, char a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x26D5DE450]();

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

uint64_t OUTLINED_FUNCTION_2_4()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t SiriViewContactCardIntent.init(contactIdentifiers:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18AppIntentsServices15IntentParameterCySaySSGSgGMd, &_s18AppIntentsServices15IntentParameterCySaySSGSgGMR);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  *a1 = OUTLINED_FUNCTION_0_5(v5, v6, v7, v8, v9, v10, v11, v12, 0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18AppIntentsServices15IntentParameterCySSSgGMd, &_s18AppIntentsServices15IntentParameterCySSSgGMR);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  a1[1] = OUTLINED_FUNCTION_0_5(v16, v17, v18, v19, v20, v21, v22, v23, 0);
  v24 = *(v13 + 48);
  v25 = *(v13 + 52);
  v26 = swift_allocObject();
  a1[2] = OUTLINED_FUNCTION_0_5(v26, v27, v28, v29, v30, v31, v32, v33, 0);
  LOBYTE(v46) = 7;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18AppIntentsServices15IntentParameterCy18SiriContactsCommon0F23HighlightedPropertyTypeOSgGMd, &_s18AppIntentsServices15IntentParameterCy18SiriContactsCommon0F23HighlightedPropertyTypeOSgGMR);
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  v37 = swift_allocObject();
  a1[3] = OUTLINED_FUNCTION_0_5(v37, v38, v39, v40, v41, v42, v43, v44, v46);
  return IntentParameter.wrappedValue.setter();
}

unint64_t instantiation function for generic protocol witness table for SiriViewContactCardIntent(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SiriViewContactCardIntent and conformance SiriViewContactCardIntent();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type SiriViewContactCardIntent and conformance SiriViewContactCardIntent()
{
  result = lazy protocol witness table cache variable for type SiriViewContactCardIntent and conformance SiriViewContactCardIntent;
  if (!lazy protocol witness table cache variable for type SiriViewContactCardIntent and conformance SiriViewContactCardIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriViewContactCardIntent and conformance SiriViewContactCardIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriViewContactCardIntent and conformance SiriViewContactCardIntent;
  if (!lazy protocol witness table cache variable for type SiriViewContactCardIntent and conformance SiriViewContactCardIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriViewContactCardIntent and conformance SiriViewContactCardIntent);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SiriViewContactCardIntent(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SiriViewContactCardIntent(uint64_t result, int a2, int a3)
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

uint64_t OUTLINED_FUNCTION_0_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return MEMORY[0x28213DD50](&a9);
}

void static AppIntentTransformer.transformToAppIntent(snippetModel:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (one-time initialization token for transformer != -1)
  {
    swift_once();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A14ContactsCommon22AppIntentTransformable_pAD0adfG0_pSgGMd, &_s13SiriUtilities11TransformerVy0A14ContactsCommon22AppIntentTransformable_pAD0adfG0_pSgGMR);
  __swift_project_value_buffer(v4, static Transformer<>.transformer);
  v5 = Transformer.transform.getter();
  v5(&v16, a1);

  if (*(&v17 + 1))
  {
    outlined init with take of IDSStatusProviding(&v16, a2);
  }

  else
  {
    outlined destroy of SiriContactsAppIntent?(&v16);
    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.siriContacts);
    outlined init with copy of IDSStatusProviding(a1, &v16);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315138;
      __swift_project_boxed_opaque_existential_1(&v16, *(&v17 + 1));
      swift_getDynamicType();
      v11 = _typeName(_:qualified:)();
      v13 = v12;
      __swift_destroy_boxed_opaque_existential_0(&v16);
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v15);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_26683A000, v7, v8, "#AppIntentTransformer transformToAppIntent failed to transform intent of type %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x26D5DEEF0](v10, -1, -1);
      MEMORY[0x26D5DEEF0](v9, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(&v16);
    }

    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }
}

uint64_t one-time initialization function for transformer()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A14ContactsCommon22AppIntentTransformable_pAD0adfG0_pSgGMd, &_s13SiriUtilities11TransformerVy0A14ContactsCommon22AppIntentTransformable_pAD0adfG0_pSgGMR);
  __swift_allocate_value_buffer(v0, static Transformer<>.transformer);
  __swift_project_value_buffer(v0, static Transformer<>.transformer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriContactsCommon22AppIntentTransformable_pMd, &_s18SiriContactsCommon22AppIntentTransformable_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriContactsCommon0aB9AppIntent_pSgMd, &_s18SiriContactsCommon0aB9AppIntent_pSgMR);
  return Transformer.init(transform:)();
}

uint64_t outlined destroy of SiriContactsAppIntent?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriContactsCommon0aB9AppIntent_pSgMd, &_s18SiriContactsCommon0aB9AppIntent_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  ContactAttributeSnippetModel = type metadata accessor for GetContactAttributeSnippetModel(0);
  v5 = *(*(ContactAttributeSnippetModel - 8) + 64);
  v6 = MEMORY[0x28223BE20](ContactAttributeSnippetModel);
  v8 = (v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v10 = v39 - v9;
  ContactSnippetModel = type metadata accessor for GetContactSnippetModel(0);
  v12 = *(*(ContactSnippetModel - 8) + 64);
  v13 = MEMORY[0x28223BE20](ContactSnippetModel);
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v39 - v16;
  outlined init with copy of IDSStatusProviding(a1, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriContactsCommon22AppIntentTransformable_pMd, &_s18SiriContactsCommon22AppIntentTransformable_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of GetContactAttributeSnippetModel(v17, v15, type metadata accessor for GetContactSnippetModel);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_266860510;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy18SiriContactsCommon14CodableContactVySo9CNContactCGGMd, &_s10SnippetKit8LoggableVy18SiriContactsCommon14CodableContactVySo9CNContactCGGMR);
    Loggable.wrappedValue.getter();
    v19 = v39[0];
    v20 = [v39[0] identifier];

    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    *(v18 + 32) = v21;
    *(v18 + 40) = v23;
    *(a2 + 24) = &type metadata for SiriViewContactCardIntent;
    *(a2 + 32) = lazy protocol witness table accessor for type SiriViewContactCardIntent and conformance SiriViewContactCardIntent();
    v24 = swift_allocObject();
    *a2 = v24;
    SiriViewContactCardIntent.init(contactIdentifiers:)((v24 + 16));
    v25 = v15;
    v26 = type metadata accessor for GetContactSnippetModel;
LABEL_5:
    outlined destroy of GetContactAttributeSnippetModel(v25, v26);
    return __swift_destroy_boxed_opaque_existential_0(v40);
  }

  if (swift_dynamicCast())
  {
    outlined init with take of GetContactAttributeSnippetModel(v10, v8, type metadata accessor for GetContactAttributeSnippetModel);
    *(a2 + 24) = &type metadata for SiriViewContactCardIntent;
    *(a2 + 32) = lazy protocol witness table accessor for type SiriViewContactCardIntent and conformance SiriViewContactCardIntent();
    v27 = swift_allocObject();
    *a2 = v27;
    static Transformer<>.intentFromAttributeModel(attributeModel:)(v8, (v27 + 16));
    v25 = v8;
    v26 = type metadata accessor for GetContactAttributeSnippetModel;
    goto LABEL_5;
  }

  if (one-time initialization token for siriContacts != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, static Logger.siriContacts);
  outlined init with copy of IDSStatusProviding(a1, v39);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v41 = v32;
    *v31 = 136315138;
    __swift_project_boxed_opaque_existential_1(v39, v39[3]);
    swift_getDynamicType();
    v33 = _typeName(_:qualified:)();
    v35 = v34;
    __swift_destroy_boxed_opaque_existential_0(v39);
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v41);

    *(v31 + 4) = v36;
    _os_log_impl(&dword_26683A000, v29, v30, "#AppIntentTransformer received unhandled intent type %s, returning nil", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x26D5DEEF0](v32, -1, -1);
    MEMORY[0x26D5DEEF0](v31, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v39);
  }

  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return __swift_destroy_boxed_opaque_existential_0(v40);
}

void static Transformer<>.intentFromAttributeModel(attributeModel:)(uint64_t *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_266860510;
  v5 = *(type metadata accessor for GetContactAttributeSnippetModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy18SiriContactsCommon14CodableContactVySo9CNContactCGGMd, &_s10SnippetKit8LoggableVy18SiriContactsCommon14CodableContactVySo9CNContactCGGMR);
  Loggable.wrappedValue.getter();
  v6 = [v45 identifier];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *(v4 + 32) = v7;
  *(v4 + 40) = v9;
  SiriViewContactCardIntent.init(contactIdentifiers:)(&v45);
  v10 = v45;
  v11 = v46;
  v12 = v47;
  v13 = v48;
  v14 = *a1;
  v15 = *(*a1 + 16);
  if (v15)
  {
    v16 = *(v14 + 40);
    v17 = *(v14 + 56);
    v18 = *(v14 + 72);
    if (v15 == 1)
    {
      v19 = *(v14 + 64);
      v45 = *(v14 + 48);
      v46 = v17;

      swift_bridgeObjectRetain_n();

      IntentParameter.wrappedValue.setter();
      v45 = v19;
      v46 = v18;

      IntentParameter.wrappedValue.setter();

      if (one-time initialization token for siriContacts != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      __swift_project_value_buffer(v20, static Logger.siriContacts);

      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v21, v22))
      {
        goto LABEL_40;
      }

      v23 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v44 = v42;
      *v23 = 136315394;
      IntentParameter.wrappedValue.getter();
      if (v46)
      {
        v24 = v45;
      }

      else
      {
        v24 = 11565;
      }

      if (v46)
      {
        v25 = v46;
      }

      else
      {
        v25 = 0xE200000000000000;
      }

      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v44);

      *(v23 + 4) = v26;
      *(v23 + 12) = 2080;
      IntentParameter.wrappedValue.getter();
      if (v46)
      {
        v27 = v45;
      }

      else
      {
        v27 = 11565;
      }

      if (v46)
      {
        v28 = v46;
      }

      else
      {
        v28 = 0xE200000000000000;
      }

      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v44);

      *(v23 + 14) = v29;
      _os_log_impl(&dword_26683A000, v21, v22, "#AppIntentTransformer added highlightedValue %s | %s", v23, 0x16u);
      v30 = v42;
      swift_arrayDestroy();
    }

    else
    {
      v35 = *(v14 + 80);
      if (v35 >= 8)
      {
        v36 = 6;
      }

      else
      {
        v36 = 0x200060606010303uLL >> (8 * v35);
      }

      LOBYTE(v45) = v36;

      IntentParameter.wrappedValue.setter();

      if (one-time initialization token for siriContacts != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      __swift_project_value_buffer(v37, static Logger.siriContacts);

      v21 = Logger.logObject.getter();
      v38 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v21, v38))
      {
        goto LABEL_40;
      }

      v23 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v45 = v43;
      *v23 = 136315138;
      IntentParameter.wrappedValue.getter();
      v39 = 0xEB00000000726562;
      v40 = 0x6D754E656E6F6870;
      switch(v44)
      {
        case 1:
          v39 = 0xEC00000073736572;
          v40 = 0x6464416C69616D65;
          break;
        case 2:
          v39 = 0xED00007373657264;
          v40 = 0x64416C6174736F70;
          break;
        case 3:
          v39 = 0xE800000000000000;
          v40 = 0x7961646874726962;
          break;
        case 4:
          v39 = 0xEF6E6F6974616C65;
          v40 = 0x52746361746E6F63;
          break;
        case 5:
          v39 = 0xE400000000000000;
          v40 = 1702129518;
          break;
        case 6:
          v39 = 0xE600000000000000;
          v40 = 0x6D6F74737563;
          break;
        case 7:
          v39 = 0xE200000000000000;
          v40 = 11565;
          break;
        default:
          break;
      }

      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v39, &v45);

      *(v23 + 4) = v41;
      _os_log_impl(&dword_26683A000, v21, v38, "#AppIntentTransformer added highlightPropertyType %s", v23, 0xCu);
      v30 = v43;
      __swift_destroy_boxed_opaque_existential_0(v43);
    }

    MEMORY[0x26D5DEEF0](v30, -1, -1);
    MEMORY[0x26D5DEEF0](v23, -1, -1);
LABEL_40:

    goto LABEL_41;
  }

  if (one-time initialization token for siriContacts != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  __swift_project_value_buffer(v31, static Logger.siriContacts);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_26683A000, v32, v33, "#AppIntentTransformer error: no attributes found!", v34, 2u);
    MEMORY[0x26D5DEEF0](v34, -1, -1);
  }

LABEL_41:
  *a2 = v10;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v13;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(void (*a1)(void))
{
  a1();

  return _typeName(_:qualified:)();
}

uint64_t getEnumTagSinglePayload for AppIntentTransformer(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for AppIntentTransformer(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x26684B270);
    case 4:
      *result = 0;
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

uint64_t sub_26684B360()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t outlined init with take of GetContactAttributeSnippetModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of GetContactAttributeSnippetModel(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t PersonNameComponents.init(from:for:)(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  PersonNameComponents.init()();
  v8 = [a1 namePrefix];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_6();
  PersonNameComponents.namePrefix.setter();
  v9 = [a1 givenName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_6();
  PersonNameComponents.givenName.setter();
  v10 = [a1 middleName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_6();
  PersonNameComponents.middleName.setter();
  v11 = [a1 nickname];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_6();
  PersonNameComponents.nickname.setter();
  v12 = [a1 familyName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_6();
  PersonNameComponents.familyName.setter();
  v13 = [a1 nameSuffix];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_6();
  PersonNameComponents.nameSuffix.setter();
  CNContact.getPhoneticRepresentation(locale:)(a2, v7);
  PersonNameComponents.phoneticRepresentation.setter();

  return outlined destroy of Locale?(a2);
}

uint64_t outlined destroy of Locale?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void OUTLINED_FUNCTION_1_6()
{
}

uint64_t CNLabeledValue<>.formattedString.getter()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CBDB80]) init];
  v2 = [v0 value];
  v3 = [v1 stringFromPostalAddress_];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

uint64_t one-time initialization function for siriContacts()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.siriContacts);
  __swift_project_value_buffer(v0, static Logger.siriContacts);
  return Logger.init(subsystem:category:)();
}

uint64_t static Logger.siriContacts.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for siriContacts != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.siriContacts);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

_BYTE *storeEnumTagSinglePayload for Logger(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x26684B934);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t static SABaseCommand.from(data:)()
{
  v30[4] = *MEMORY[0x277D85DE8];
  v0 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v30[0] = 0;
  v2 = [v0 propertyListWithData:isa options:0 format:0 error:v30];

  if (!v2)
  {
    v13 = v30[0];
    v14 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.siriContacts);
    v16 = v14;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v30[0] = v20;
      *v19 = 136315138;
      swift_getErrorValue();
      v21 = Error.localizedDescription.getter();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v30);

      *(v19 + 4) = v23;
      OUTLINED_FUNCTION_3_5(&dword_26683A000, v24, v25, "#SABaseCommand from(data:) failed to deserialize input, returning nil with error: %s");
      __swift_destroy_boxed_opaque_existential_0(v20);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    else
    {
    }

    goto LABEL_21;
  }

  v3 = v30[0];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
  if (!swift_dynamicCast())
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.siriContacts);
    v8 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (!OUTLINED_FUNCTION_2_5(v27))
    {
      goto LABEL_19;
    }

    *swift_slowAlloc() = 0;
    v12 = "#SABaseCommand from(data:) failed to deserialize input, returning nil";
    goto LABEL_18;
  }

  v4 = objc_opt_self();
  v5 = outlined bridged method (mbgnn) of @objc static AceObject.aceObject(with:)(v29, v4);

  if (!v5)
  {
LABEL_6:
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.siriContacts);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (!OUTLINED_FUNCTION_2_5(v9))
    {
      goto LABEL_19;
    }

    *swift_slowAlloc() = 0;
    v12 = "#SABaseCommand from(data:) failed to convert deserialized data to command, returning nil";
LABEL_18:
    OUTLINED_FUNCTION_4_4(&dword_26683A000, v10, v11, v12);
    OUTLINED_FUNCTION_6();
LABEL_19:

LABEL_21:
    result = 0;
    goto LABEL_22;
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {

    goto LABEL_6;
  }

LABEL_22:
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SAClientBoundCommand.data.getter()
{
  v26[1] = *MEMORY[0x277D85DE8];
  v1 = [v0 dictionary];
  if (!v1)
  {
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.siriContacts);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_2_5(v8))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_4_4(&dword_26683A000, v9, v10, "#SAClientBoundCommand data could not obtain necessary info to serialize, returning empty object");
      OUTLINED_FUNCTION_6();
    }

    goto LABEL_14;
  }

  v2 = v1;
  v26[0] = 0;
  v3 = [objc_opt_self() dataWithPropertyList:v1 format:200 options:0 error:v26];
  v4 = v26[0];
  if (!v3)
  {
    v11 = v4;
    v12 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for siriContacts != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.siriContacts);
    v14 = v12;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v26[0] = v18;
      *v17 = 136315138;
      swift_getErrorValue();
      v19 = Error.localizedDescription.getter();
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v26);

      *(v17 + 4) = v21;
      OUTLINED_FUNCTION_3_5(&dword_26683A000, v22, v23, "#SAClientBoundCommand data failed to serialize command, returning empty object with error: %s");
      __swift_destroy_boxed_opaque_existential_0(v18);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    else
    {
    }

LABEL_14:
    v5 = 0;
    goto LABEL_15;
  }

  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_15:
  v24 = *MEMORY[0x277D85DE8];
  return v5;
}

id outlined bridged method (mbgnn) of @objc static AceObject.aceObject(with:)(uint64_t a1, void *a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v4 = [a2 aceObjectWithDictionary_];

  return v4;
}

BOOL OUTLINED_FUNCTION_2_5(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_3_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_4_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t specialized SAClientBoundCommand.data.getter()
{
  v23[1] = *MEMORY[0x277D85DE8];
  v1 = [v0 dictionary];
  if (!v1)
  {
    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.siriContacts);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_26683A000, v7, v8, "#SAClientBoundCommand data could not obtain necessary info to serialize, returning empty object", v9, 2u);
      MEMORY[0x26D5DEEF0](v9, -1, -1);
    }

    goto LABEL_14;
  }

  v2 = v1;
  v23[0] = 0;
  v3 = [objc_opt_self() dataWithPropertyList:v1 format:200 options:0 error:v23];
  v4 = v23[0];
  if (!v3)
  {
    v10 = v4;
    v11 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for siriContacts != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.siriContacts);
    v13 = v11;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23[0] = v17;
      *v16 = 136315138;
      swift_getErrorValue();
      v18 = Error.localizedDescription.getter();
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v23);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_26683A000, v14, v15, "#SAClientBoundCommand data failed to serialize command, returning empty object with error: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x26D5DEEF0](v17, -1, -1);
      MEMORY[0x26D5DEEF0](v16, -1, -1);
    }

    else
    {
    }

LABEL_14:
    v5 = 0;
    goto LABEL_15;
  }

  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_15:
  v21 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t GetContactDirectInvocationsModel.contactCardPunchout.getter()
{
  v1 = *v0;
  outlined copy of Data?(*v0, *(v0 + 8));
  return v1;
}

uint64_t outlined copy of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

double GetContactDirectInvocationsModel.init()@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for SAUIAppPunchOut();
  v2 = OUTLINED_FUNCTION_5_4();
  v3 = OUTLINED_FUNCTION_5_4();
  v4 = OUTLINED_FUNCTION_5_4();
  GetContactDirectInvocationsModel.init(contactCardPunchout:sendEmailPunchouts:sendMessagePunchouts:navigationPunchouts:)(0, 0xF000000000000000, v2, v3, v4, v8);
  v5 = v9;
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v5;
  return result;
}

unint64_t type metadata accessor for SAUIAppPunchOut()
{
  result = lazy cache variable for type metadata for SAUIAppPunchOut;
  if (!lazy cache variable for type metadata for SAUIAppPunchOut)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SAUIAppPunchOut);
  }

  return result;
}

uint64_t GetContactDirectInvocationsModel.init(contactCardPunchout:sendEmailPunchouts:sendMessagePunchouts:navigationPunchouts:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v6 = *(a3 + 64);
  v7 = *(a3 + 32);
  OUTLINED_FUNCTION_1_7();
  v12 = v11 & v10;
  v14 = (v13 + 63) >> 6;
  v15 = MEMORY[0x277D84F98];
  v119 = v14;
  v122 = v8;
  if (v12)
  {
    while (1)
    {
      v16 = v9;
LABEL_6:
      v17 = __clz(__rbit64(v12)) | (v16 << 6);
      v18 = (*(a3 + 48) + 16 * v17);
      v20 = *v18;
      v19 = v18[1];
      v21 = *(*(a3 + 56) + 8 * v17);

      v22 = v21;
      v131 = specialized SAClientBoundCommand.data.getter();
      v134 = v23;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v136 = v15;
      v25 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v19);
      v27 = v15[2];
      v28 = (v26 & 1) == 0;
      v29 = v27 + v28;
      if (__OFADD__(v27, v28))
      {
        break;
      }

      v30 = v25;
      v31 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS10Foundation4DataVGMd, &_ss17_NativeDictionaryVySS10Foundation4DataVGMR);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v29))
      {
        specialized __RawDictionaryStorage.find<A>(_:)(v20, v19);
        OUTLINED_FUNCTION_6_4();
        if (!v33)
        {
          goto LABEL_61;
        }

        v30 = v32;
      }

      v12 &= v12 - 1;
      if (v31)
      {

        v15 = v136;
        v34 = (v136[7] + 16 * v30);
        v35 = *v34;
        v36 = v34[1];
        *v34 = v131;
        v34[1] = v134;
        outlined consume of Data._Representation(v35, v36);
      }

      else
      {
        v15 = v136;
        OUTLINED_FUNCTION_3_6(&v136[v30 >> 6]);
        v37 = (v136[6] + 16 * v30);
        *v37 = v20;
        v37[1] = v19;
        v38 = (v136[7] + 16 * v30);
        *v38 = v131;
        v38[1] = v134;

        v39 = v136[2];
        v40 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        if (v40)
        {
          goto LABEL_58;
        }

        v136[2] = v41;
      }

      v9 = v16;
      v14 = v119;
      v8 = v122;
      if (!v12)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    while (1)
    {
      v16 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v16 >= v14)
      {

        v42 = *(a4 + 64);
        v43 = *(a4 + 32);
        OUTLINED_FUNCTION_1_7();
        v48 = v47 & v46;
        v50 = (v49 + 63) >> 6;
        v51 = MEMORY[0x277D84F98];
        v135 = v15;
        v120 = v50;
        v123 = v45;
        if (!v48)
        {
          goto LABEL_19;
        }

        while (1)
        {
          v52 = v44;
LABEL_22:
          v53 = __clz(__rbit64(v48)) | (v52 << 6);
          v54 = (*(a4 + 48) + 16 * v53);
          v55 = *v54;
          v56 = v54[1];
          v57 = *(*(a4 + 56) + 8 * v53);

          v129 = v57;
          v58 = specialized SAClientBoundCommand.data.getter();
          v60 = v59;
          v61 = swift_isUniquelyReferenced_nonNull_native();
          v137 = v51;
          v132 = v55;
          v62 = specialized __RawDictionaryStorage.find<A>(_:)(v55, v56);
          v64 = v51[2];
          v65 = (v63 & 1) == 0;
          v66 = v64 + v65;
          if (__OFADD__(v64, v65))
          {
            goto LABEL_56;
          }

          v67 = v62;
          v68 = v63;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS10Foundation4DataVGMd, &_ss17_NativeDictionaryVySS10Foundation4DataVGMR);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v61, v66))
          {
            specialized __RawDictionaryStorage.find<A>(_:)(v132, v56);
            OUTLINED_FUNCTION_6_4();
            v15 = v135;
            if (!v33)
            {
              goto LABEL_61;
            }

            v67 = v69;
          }

          else
          {
            v15 = v135;
          }

          v48 &= v48 - 1;
          if (v68)
          {

            v51 = v137;
            v70 = (v137[7] + 16 * v67);
            v71 = *v70;
            v72 = v70[1];
            *v70 = v58;
            v70[1] = v60;
            outlined consume of Data._Representation(v71, v72);
          }

          else
          {
            v51 = v137;
            OUTLINED_FUNCTION_3_6(&v137[v67 >> 6]);
            v73 = (v137[6] + 16 * v67);
            *v73 = v132;
            v73[1] = v56;
            v74 = (v137[7] + 16 * v67);
            *v74 = v58;
            v74[1] = v60;

            v75 = v137[2];
            v40 = __OFADD__(v75, 1);
            v76 = v75 + 1;
            if (v40)
            {
              goto LABEL_59;
            }

            v137[2] = v76;
          }

          v44 = v52;
          v50 = v120;
          v45 = v123;
          if (!v48)
          {
LABEL_19:
            while (1)
            {
              v52 = v44 + 1;
              if (__OFADD__(v44, 1))
              {
                goto LABEL_53;
              }

              if (v52 >= v50)
              {

                v77 = *(a5 + 64);
                v78 = *(a5 + 32);
                OUTLINED_FUNCTION_1_7();
                v83 = v82 & v81;
                v85 = (v84 + 63) >> 6;
                v86 = MEMORY[0x277D84F98];
                v127 = v51;
                v121 = v85;
                v124 = v80;
                if (!v83)
                {
                  goto LABEL_36;
                }

                while (1)
                {
                  v87 = v79;
LABEL_39:
                  v88 = __clz(__rbit64(v83)) | (v87 << 6);
                  v89 = (*(a5 + 48) + 16 * v88);
                  v91 = *v89;
                  v90 = v89[1];
                  v92 = *(*(a5 + 56) + 8 * v88);

                  v93 = v92;
                  v130 = specialized SAClientBoundCommand.data.getter();
                  v133 = v94;
                  v95 = swift_isUniquelyReferenced_nonNull_native();
                  v138 = v86;
                  v96 = OUTLINED_FUNCTION_8_4();
                  v98 = specialized __RawDictionaryStorage.find<A>(_:)(v96, v97);
                  v100 = v86[2];
                  v101 = (v99 & 1) == 0;
                  v102 = v100 + v101;
                  if (__OFADD__(v100, v101))
                  {
                    goto LABEL_57;
                  }

                  v103 = v98;
                  v104 = v99;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS10Foundation4DataVGMd, &_ss17_NativeDictionaryVySS10Foundation4DataVGMR);
                  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v95, v102))
                  {
                    v105 = OUTLINED_FUNCTION_8_4();
                    specialized __RawDictionaryStorage.find<A>(_:)(v105, v106);
                    OUTLINED_FUNCTION_6_4();
                    v15 = v135;
                    if (!v33)
                    {
                      goto LABEL_61;
                    }

                    v103 = v107;
                  }

                  else
                  {
                    v15 = v135;
                  }

                  v83 &= v83 - 1;
                  if (v104)
                  {

                    v86 = v138;
                    v108 = (v138[7] + 16 * v103);
                    v109 = *v108;
                    v110 = v108[1];
                    *v108 = v130;
                    v108[1] = v133;
                    outlined consume of Data._Representation(v109, v110);
                  }

                  else
                  {
                    v86 = v138;
                    OUTLINED_FUNCTION_3_6(&v138[v103 >> 6]);
                    v111 = (v138[6] + 16 * v103);
                    *v111 = v91;
                    v111[1] = v90;
                    v112 = (v138[7] + 16 * v103);
                    *v112 = v130;
                    v112[1] = v133;

                    v113 = v138[2];
                    v40 = __OFADD__(v113, 1);
                    v114 = v113 + 1;
                    if (v40)
                    {
                      goto LABEL_60;
                    }

                    v138[2] = v114;
                  }

                  v79 = v87;
                  v51 = v127;
                  v85 = v121;
                  v80 = v124;
                  if (!v83)
                  {
LABEL_36:
                    while (1)
                    {
                      v87 = v79 + 1;
                      if (__OFADD__(v79, 1))
                      {
                        goto LABEL_54;
                      }

                      if (v87 >= v85)
                      {

                        *a6 = a1;
                        a6[1] = a2;
                        a6[2] = v15;
                        a6[3] = v51;
                        a6[4] = v86;
                        return result;
                      }

                      v83 = *(v80 + 8 * v87);
                      ++v79;
                      if (v83)
                      {
                        goto LABEL_39;
                      }
                    }
                  }
                }
              }

              v48 = *(v45 + 8 * v52);
              ++v44;
              if (v48)
              {
                goto LABEL_22;
              }
            }
          }
        }
      }

      v12 = *(v8 + 8 * v16);
      ++v9;
      if (v12)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t GetContactDirectInvocationsModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x80000002668638B0 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x80000002668638D0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x80000002668638F0 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000013 && 0x8000000266863910 == a2)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t GetContactDirectInvocationsModel.CodingKeys.stringValue.getter(char a1)
{
  result = 0xD000000000000013;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance GetContactDirectInvocationsModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = GetContactDirectInvocationsModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance GetContactDirectInvocationsModel.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = GetContactDirectInvocationsModel.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GetContactDirectInvocationsModel.CodingKeys(uint64_t a1)
{
  ContactDirectInvocations = lazy protocol witness table accessor for type GetContactDirectInvocationsModel.CodingKeys and conformance GetContactDirectInvocationsModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, ContactDirectInvocations);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GetContactDirectInvocationsModel.CodingKeys(uint64_t a1)
{
  ContactDirectInvocations = lazy protocol witness table accessor for type GetContactDirectInvocationsModel.CodingKeys and conformance GetContactDirectInvocationsModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, ContactDirectInvocations);
}

uint64_t GetContactDirectInvocationsModel.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriContactsCommon32GetContactDirectInvocationsModelV10CodingKeys33_3DD93BAC1FD09F2C62E6B3699DB3F94FLLOGMd, &_ss22KeyedEncodingContainerVy18SiriContactsCommon32GetContactDirectInvocationsModelV10CodingKeys33_3DD93BAC1FD09F2C62E6B3699DB3F94FLLOGMR);
  v5 = OUTLINED_FUNCTION_7_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v20 - v10;
  v12 = *v1;
  v13 = v1[1];
  v14 = v1[2];
  v21 = v1[3];
  v22 = v14;
  v20 = v1[4];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  outlined copy of Data?(v12, v13);
  lazy protocol witness table accessor for type GetContactDirectInvocationsModel.CodingKeys and conformance GetContactDirectInvocationsModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v24 = v12;
  v25 = v13;
  v26 = 0;
  lazy protocol witness table accessor for type Data and conformance Data();
  v16 = v23;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  outlined consume of Data?(v24, v25);
  if (!v16)
  {
    v17 = v20;
    v18 = v21;
    v24 = v22;
    v26 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS10Foundation4DataVGMd, &_sSDySS10Foundation4DataVGMR);
    lazy protocol witness table accessor for type [String : Data] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : Data] and conformance <> [A : B], lazy protocol witness table accessor for type Data and conformance Data);
    OUTLINED_FUNCTION_2_6();
    v24 = v18;
    v26 = 2;
    OUTLINED_FUNCTION_2_6();
    v24 = v17;
    v26 = 3;
    OUTLINED_FUNCTION_2_6();
  }

  return (*(v7 + 8))(v11, v2);
}

uint64_t GetContactDirectInvocationsModel.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriContactsCommon32GetContactDirectInvocationsModelV10CodingKeys33_3DD93BAC1FD09F2C62E6B3699DB3F94FLLOGMd, &_ss22KeyedDecodingContainerVy18SiriContactsCommon32GetContactDirectInvocationsModelV10CodingKeys33_3DD93BAC1FD09F2C62E6B3699DB3F94FLLOGMR);
  v6 = OUTLINED_FUNCTION_7_4(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GetContactDirectInvocationsModel.CodingKeys and conformance GetContactDirectInvocationsModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS10Foundation4DataVGMd, &_sSDySS10Foundation4DataVGMR);
  lazy protocol witness table accessor for type [String : Data] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : Data] and conformance <> [A : B], lazy protocol witness table accessor for type Data and conformance Data);
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_0_7();
  v11 = OUTLINED_FUNCTION_4_5();
  v12(v11);
  *a2 = v17;
  a2[1] = v18;
  a2[2] = v17;
  a2[3] = v17;
  a2[4] = v17;
  v13 = OUTLINED_FUNCTION_8_4();
  outlined copy of Data?(v13, v14);

  __swift_destroy_boxed_opaque_existential_0(a1);
  v15 = OUTLINED_FUNCTION_8_4();
  outlined consume of Data?(v15, v16);
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

unint64_t lazy protocol witness table accessor for type GetContactDirectInvocationsModel.CodingKeys and conformance GetContactDirectInvocationsModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GetContactDirectInvocationsModel.CodingKeys and conformance GetContactDirectInvocationsModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GetContactDirectInvocationsModel.CodingKeys and conformance GetContactDirectInvocationsModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GetContactDirectInvocationsModel.CodingKeys and conformance GetContactDirectInvocationsModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GetContactDirectInvocationsModel.CodingKeys and conformance GetContactDirectInvocationsModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GetContactDirectInvocationsModel.CodingKeys and conformance GetContactDirectInvocationsModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GetContactDirectInvocationsModel.CodingKeys and conformance GetContactDirectInvocationsModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GetContactDirectInvocationsModel.CodingKeys and conformance GetContactDirectInvocationsModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GetContactDirectInvocationsModel.CodingKeys and conformance GetContactDirectInvocationsModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GetContactDirectInvocationsModel.CodingKeys and conformance GetContactDirectInvocationsModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GetContactDirectInvocationsModel.CodingKeys and conformance GetContactDirectInvocationsModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GetContactDirectInvocationsModel.CodingKeys and conformance GetContactDirectInvocationsModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GetContactDirectInvocationsModel.CodingKeys and conformance GetContactDirectInvocationsModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for GetContactDirectInvocationsModel(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for GetContactDirectInvocationsModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GetContactDirectInvocationsModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for GetContactDirectInvocationsModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x26684D7C8);
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

uint64_t OUTLINED_FUNCTION_0_7()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_2_6()
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_5_4()
{

  return Dictionary.init(dictionaryLiteral:)();
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(uint64_t a1)
{
  return specialized RawRepresentable<>.hashValue.getter(a1, specialized RawRepresentable<>.hash(into:));
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, specialized RawRepresentable<>.hash(into:));
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_88();
  a2(v5, a1);
  return Hasher._finalize()();
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

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, uint64_t a2)
{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, specialized RawRepresentable<>.hash(into:));
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, specialized RawRepresentable<>.hash(into:));
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  Hasher.init(_seed:)();
  a3(v6, a2);
  return Hasher._finalize()();
}

uint64_t GetContactSnippetModel.contactIdentifier.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy18SiriContactsCommon14CodableContactVySo9CNContactCGGMd, &_s10SnippetKit8LoggableVy18SiriContactsCommon14CodableContactVySo9CNContactCGGMR);
  Loggable.wrappedValue.getter();
  v0 = [v2 identifier];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  return OUTLINED_FUNCTION_105();
}

uint64_t GetContactAttributeSnippetModel.contactIdentifier.getter()
{
  v0 = *(type metadata accessor for GetContactAttributeSnippetModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy18SiriContactsCommon14CodableContactVySo9CNContactCGGMd, &_s10SnippetKit8LoggableVy18SiriContactsCommon14CodableContactVySo9CNContactCGGMR);
  Loggable.wrappedValue.getter();
  v1 = [v3 identifier];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  return OUTLINED_FUNCTION_105();
}

uint64_t ContactsSnippetPluginModel.responseViewID.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ModifyContactAttributeSnippetModel(0);
  v3 = OUTLINED_FUNCTION_6_5(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_3();
  v8 = v7 - v6;
  ContactAttributeSnippetModel = type metadata accessor for GetContactAttributeSnippetModel(0);
  v10 = *(*(ContactAttributeSnippetModel - 8) + 64);
  MEMORY[0x28223BE20](ContactAttributeSnippetModel - 8);
  OUTLINED_FUNCTION_1_3();
  v13 = v12 - v11;
  v14 = type metadata accessor for ContactsSnippetPluginModel(0);
  v15 = OUTLINED_FUNCTION_6_5(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_3();
  v20 = v19 - v18;
  OUTLINED_FUNCTION_9_4();
  outlined init with copy of ContactsSnippetPluginModel(v1, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined init with take of ModifyContactAttributeSnippetModel(v20, v13);
      if (*(*v13 + 16))
      {
        switch(*(*v13 + 80))
        {
          case 1:
            OUTLINED_FUNCTION_38();
            OUTLINED_FUNCTION_0_8();
            outlined destroy of ModifyContactAttributeSnippetModel(v13, v43);
            OUTLINED_FUNCTION_67();
            return v44 | 1;
          case 2:
            OUTLINED_FUNCTION_38();
            OUTLINED_FUNCTION_0_8();
            outlined destroy of ModifyContactAttributeSnippetModel(v13, v39);
            OUTLINED_FUNCTION_67();
            return v40 - 2;
          case 3:
          case 4:
            OUTLINED_FUNCTION_38();
            OUTLINED_FUNCTION_0_8();
            outlined destroy of ModifyContactAttributeSnippetModel(v13, v22);
            OUTLINED_FUNCTION_67();
            return v23 - 3;
          case 5:
            v24 = 0xD00000000000002CLL;
            goto LABEL_29;
          case 6:
            OUTLINED_FUNCTION_38();
            OUTLINED_FUNCTION_0_8();
            outlined destroy of ModifyContactAttributeSnippetModel(v13, v46);
            goto LABEL_31;
          case 7:
            v24 = 0xD00000000000002CLL;
LABEL_29:
            OUTLINED_FUNCTION_38();
            OUTLINED_FUNCTION_0_8();
            outlined destroy of ModifyContactAttributeSnippetModel(v13, v45);
            return v24;
          case 8:
            if (one-time initialization token for siriContacts != -1)
            {
              OUTLINED_FUNCTION_8_5();
              swift_once();
            }

            v49 = type metadata accessor for Logger();
            __swift_project_value_buffer(v49, static Logger.siriContacts);
            v32 = Logger.logObject.getter();
            v33 = static os_log_type_t.error.getter();
            if (!os_log_type_enabled(v32, v33))
            {
              goto LABEL_19;
            }

            v34 = swift_slowAlloc();
            *v34 = 0;
            v35 = "#GetContactAttributeSnippetModel responseViewID unknown configuration, returning nil";
            goto LABEL_18;
          default:
            OUTLINED_FUNCTION_38();
            OUTLINED_FUNCTION_0_8();
            outlined destroy of ModifyContactAttributeSnippetModel(v13, v41);
            OUTLINED_FUNCTION_67();
            return v42 - 4;
        }
      }

      if (one-time initialization token for siriContacts != -1)
      {
        OUTLINED_FUNCTION_8_5();
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      __swift_project_value_buffer(v31, static Logger.siriContacts);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        v35 = "#GetContactAttributeSnippetModel responseViewID unexpected configuration, returning nil";
LABEL_18:
        _os_log_impl(&dword_26683A000, v32, v33, v35, v34, 2u);
        MEMORY[0x26D5DEEF0](v34, -1, -1);
      }

LABEL_19:

      OUTLINED_FUNCTION_0_8();
      outlined destroy of ModifyContactAttributeSnippetModel(v13, v36);
      return 0;
    }

    else
    {
      outlined init with take of ModifyContactAttributeSnippetModel(v20, v8);
      OUTLINED_FUNCTION_92(v8 + *(v2 + 28));
      v28 = v28 || v27 == 0x7000000000000000;
      if (v28)
      {
        v29 = *(v8 + 16);
        OUTLINED_FUNCTION_4_6();
        outlined destroy of ModifyContactAttributeSnippetModel(v8, v30);
        OUTLINED_FUNCTION_38();
        if (v29)
        {
          return 0xD000000000000036;
        }

        else
        {
          return 0xD000000000000032;
        }
      }

      else
      {
        v37 = *(v8 + 16);
        OUTLINED_FUNCTION_4_6();
        outlined destroy of ModifyContactAttributeSnippetModel(v8, v38);
        if (v37)
        {
          OUTLINED_FUNCTION_38();
LABEL_31:
          OUTLINED_FUNCTION_67();
          return v47 + 4;
        }

        else
        {
          v24 = 0xD00000000000002CLL;
          OUTLINED_FUNCTION_38();
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_35();
    outlined destroy of ModifyContactAttributeSnippetModel(v20, v25);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_67();
    return v26 - 12;
  }

  return v24;
}

uint64_t ContactsSnippetPluginModel.snippetHidden(for:idiom:)(uint64_t a1, char a2)
{
  v3 = type metadata accessor for DeviceIdiom();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_3();
  v7 = type metadata accessor for ModifyContactAttributeSnippetModel(0);
  v8 = OUTLINED_FUNCTION_6_5(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_3();
  v13 = v12 - v11;
  v14 = type metadata accessor for ContactsSnippetPluginModel(0);
  v15 = OUTLINED_FUNCTION_6_5(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_3();
  v20 = v19 - v18;
  OUTLINED_FUNCTION_9_4();
  v21 = OUTLINED_FUNCTION_43();
  outlined init with copy of ContactsSnippetPluginModel(v21, v22);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    outlined init with take of ModifyContactAttributeSnippetModel(v20, v13);
    v23 = *MEMORY[0x277D61BE8];
    v24 = OUTLINED_FUNCTION_106();
    v25(v24);
    static DeviceIdiom.== infix(_:_:)();
    v26 = OUTLINED_FUNCTION_108();
    v27(v26);
    if (a2)
    {
      OUTLINED_FUNCTION_92(v13 + *(v7 + 28));
      v29 = v29 || v28 == 0x7000000000000000;
      a2 = v29;
    }

    else
    {
      a2 = 0;
    }

    OUTLINED_FUNCTION_4_6();
    v36 = v13;
  }

  else
  {
    v30 = *MEMORY[0x277D61BE8];
    v31 = OUTLINED_FUNCTION_106();
    v32(v31);
    static DeviceIdiom.== infix(_:_:)();
    v33 = OUTLINED_FUNCTION_108();
    v34(v33);
    v35 = type metadata accessor for ContactsSnippetPluginModel;
    v36 = v20;
  }

  outlined destroy of ModifyContactAttributeSnippetModel(v36, v35);
  return a2 & 1;
}

uint64_t ContactsSnippetPluginModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61746E6F43746567 && a2 == 0xEA00000000007463;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x8000000266863C00 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000016 && 0x8000000266863C20 == a2)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t ContactsSnippetPluginModel.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x61746E6F43746567;
  }

  if (a1 == 1)
  {
    return 0xD000000000000013;
  }

  return 0xD000000000000016;
}

uint64_t ContactsSnippetPluginModel.GetContactAttributeCodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000)
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ContactsSnippetPluginModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = ContactsSnippetPluginModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance ContactsSnippetPluginModel.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = ContactsSnippetPluginModel.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ContactsSnippetPluginModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContactsSnippetPluginModel.CodingKeys and conformance ContactsSnippetPluginModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ContactsSnippetPluginModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContactsSnippetPluginModel.CodingKeys and conformance ContactsSnippetPluginModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance ContactsSnippetPluginModel.GetContactAttributeCodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = ContactsSnippetPluginModel.GetContactAttributeCodingKeys.init(intValue:)();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ContactsSnippetPluginModel.GetContactAttributeCodingKeys(uint64_t a1)
{
  ContactAttributeCodingKeys = lazy protocol witness table accessor for type ContactsSnippetPluginModel.GetContactAttributeCodingKeys and conformance ContactsSnippetPluginModel.GetContactAttributeCodingKeys();

  return MEMORY[0x2821FE718](a1, ContactAttributeCodingKeys);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ContactsSnippetPluginModel.GetContactAttributeCodingKeys(uint64_t a1)
{
  ContactAttributeCodingKeys = lazy protocol witness table accessor for type ContactsSnippetPluginModel.GetContactAttributeCodingKeys and conformance ContactsSnippetPluginModel.GetContactAttributeCodingKeys();

  return MEMORY[0x2821FE720](a1, ContactAttributeCodingKeys);
}

uint64_t _s18SiriContactsCommon0B18SnippetPluginModelO29GetContactAttributeCodingKeys33_177E55D66B4B3431CB612B735686642ELLOs0J3KeyAAsAGP11stringValuexSgSS_tcfCTW_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = ContactsSnippetPluginModel.GetContactAttributeCodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ContactsSnippetPluginModel.GetContactCodingKeys(uint64_t a1)
{
  ContactCodingKeys = lazy protocol witness table accessor for type ContactsSnippetPluginModel.GetContactCodingKeys and conformance ContactsSnippetPluginModel.GetContactCodingKeys();

  return MEMORY[0x2821FE718](a1, ContactCodingKeys);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ContactsSnippetPluginModel.GetContactCodingKeys(uint64_t a1)
{
  ContactCodingKeys = lazy protocol witness table accessor for type ContactsSnippetPluginModel.GetContactCodingKeys and conformance ContactsSnippetPluginModel.GetContactCodingKeys();

  return MEMORY[0x2821FE720](a1, ContactCodingKeys);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ContactsSnippetPluginModel.ModifyContactAttributeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContactsSnippetPluginModel.ModifyContactAttributeCodingKeys and conformance ContactsSnippetPluginModel.ModifyContactAttributeCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ContactsSnippetPluginModel.ModifyContactAttributeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContactsSnippetPluginModel.ModifyContactAttributeCodingKeys and conformance ContactsSnippetPluginModel.ModifyContactAttributeCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void ContactsSnippetPluginModel.encode(to:)()
{
  OUTLINED_FUNCTION_44();
  v73 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriContactsCommon0E18SnippetPluginModelO32ModifyContactAttributeCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMd, &_ss22KeyedEncodingContainerVy18SiriContactsCommon0E18SnippetPluginModelO32ModifyContactAttributeCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMR);
  OUTLINED_FUNCTION_11_0(v4);
  v72 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_104(v9);
  v70 = type metadata accessor for ModifyContactAttributeSnippetModel(0);
  v10 = OUTLINED_FUNCTION_6_5(v70);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_3();
  v71 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriContactsCommon0E18SnippetPluginModelO29GetContactAttributeCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMd, &_ss22KeyedEncodingContainerVy18SiriContactsCommon0E18SnippetPluginModelO29GetContactAttributeCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMR);
  OUTLINED_FUNCTION_11_0(v15);
  v69 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_19();
  ContactAttributeSnippetModel = type metadata accessor for GetContactAttributeSnippetModel(0);
  v20 = OUTLINED_FUNCTION_6_5(ContactAttributeSnippetModel);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1_3();
  v68 = v24 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriContactsCommon0E18SnippetPluginModelO20GetContactCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMd, &_ss22KeyedEncodingContainerVy18SiriContactsCommon0E18SnippetPluginModelO20GetContactCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMR);
  v66 = OUTLINED_FUNCTION_11_0(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_29();
  ContactSnippetModel = type metadata accessor for GetContactSnippetModel(0);
  v29 = OUTLINED_FUNCTION_6_5(ContactSnippetModel);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_1_3();
  v34 = v33 - v32;
  v35 = type metadata accessor for ContactsSnippetPluginModel(0);
  v36 = OUTLINED_FUNCTION_6_5(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_1_3();
  v41 = v40 - v39;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriContactsCommon0E18SnippetPluginModelO10CodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMd, &_ss22KeyedEncodingContainerVy18SiriContactsCommon0E18SnippetPluginModelO10CodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMR);
  OUTLINED_FUNCTION_11_0(v74);
  v43 = v42;
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_22_0();
  v47 = v3[4];
  OUTLINED_FUNCTION_42(v3, v3[3]);
  lazy protocol witness table accessor for type ContactsSnippetPluginModel.CodingKeys and conformance ContactsSnippetPluginModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  OUTLINED_FUNCTION_9_4();
  outlined init with copy of ContactsSnippetPluginModel(v73, v41);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v49 = (v43 + 8);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v50 = type metadata accessor for GetContactAttributeSnippetModel;
      v51 = v68;
      outlined init with take of ModifyContactAttributeSnippetModel(v41, v68);
      OUTLINED_FUNCTION_103();
      lazy protocol witness table accessor for type ContactsSnippetPluginModel.GetContactAttributeCodingKeys and conformance ContactsSnippetPluginModel.GetContactAttributeCodingKeys();
      OUTLINED_FUNCTION_30();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      OUTLINED_FUNCTION_39();
      lazy protocol witness table accessor for type ModifyContactAttributeSnippetModel and conformance ModifyContactAttributeSnippetModel(v52);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v53 = v69;
    }

    else
    {
      v50 = type metadata accessor for ModifyContactAttributeSnippetModel;
      v51 = v71;
      outlined init with take of ModifyContactAttributeSnippetModel(v41, v71);
      OUTLINED_FUNCTION_71();
      lazy protocol witness table accessor for type ContactsSnippetPluginModel.ModifyContactAttributeCodingKeys and conformance ContactsSnippetPluginModel.ModifyContactAttributeCodingKeys();
      OUTLINED_FUNCTION_30();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      OUTLINED_FUNCTION_36();
      lazy protocol witness table accessor for type ModifyContactAttributeSnippetModel and conformance ModifyContactAttributeSnippetModel(v57);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v53 = v72;
    }

    v58 = *(v53 + 8);
    v59 = OUTLINED_FUNCTION_69();
    v60(v59);
    outlined destroy of ModifyContactAttributeSnippetModel(v51, v50);
    v61 = *v49;
    v62 = OUTLINED_FUNCTION_43();
    v64(v62, v63);
  }

  else
  {
    outlined init with take of ModifyContactAttributeSnippetModel(v41, v34);
    lazy protocol witness table accessor for type ContactsSnippetPluginModel.GetContactCodingKeys and conformance ContactsSnippetPluginModel.GetContactCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    OUTLINED_FUNCTION_37();
    lazy protocol witness table accessor for type ModifyContactAttributeSnippetModel and conformance ModifyContactAttributeSnippetModel(v54);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v55 = OUTLINED_FUNCTION_34();
    v56(v55, v66);
    outlined destroy of ModifyContactAttributeSnippetModel(v34, type metadata accessor for GetContactSnippetModel);
    (*v49)(v1, v74);
  }

  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_45();
}

void ContactsSnippetPluginModel.init(from:)()
{
  OUTLINED_FUNCTION_44();
  v115 = v0;
  v2 = v1;
  v109 = v3;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriContactsCommon0E18SnippetPluginModelO32ModifyContactAttributeCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMd, &_ss22KeyedDecodingContainerVy18SiriContactsCommon0E18SnippetPluginModelO32ModifyContactAttributeCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMR);
  OUTLINED_FUNCTION_11_0(v113);
  v108 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12_0(v8, v98);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriContactsCommon0E18SnippetPluginModelO29GetContactAttributeCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMd, &_ss22KeyedDecodingContainerVy18SiriContactsCommon0E18SnippetPluginModelO29GetContactAttributeCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMR);
  v10 = OUTLINED_FUNCTION_11_0(v9);
  v106 = v11;
  v107 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_104(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriContactsCommon0E18SnippetPluginModelO20GetContactCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMd, &_ss22KeyedDecodingContainerVy18SiriContactsCommon0E18SnippetPluginModelO20GetContactCodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMR);
  v17 = OUTLINED_FUNCTION_11_0(v16);
  v104 = v18;
  v105 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_19();
  v110 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriContactsCommon0E18SnippetPluginModelO10CodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMd, &_ss22KeyedDecodingContainerVy18SiriContactsCommon0E18SnippetPluginModelO10CodingKeys33_177E55D66B4B3431CB612B735686642ELLOGMR);
  v24 = OUTLINED_FUNCTION_11_0(v23);
  v111 = v25;
  v112 = v24;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_77();
  v29 = type metadata accessor for ContactsSnippetPluginModel(0);
  v30 = OUTLINED_FUNCTION_6_5(v29);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v98 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v98 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v41 = &v98 - v40;
  MEMORY[0x28223BE20](v39);
  v43 = &v98 - v42;
  v45 = v2[3];
  v44 = v2[4];
  v114 = v2;
  OUTLINED_FUNCTION_42(v2, v45);
  lazy protocol witness table accessor for type ContactsSnippetPluginModel.CodingKeys and conformance ContactsSnippetPluginModel.CodingKeys();
  v46 = v115;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v46)
  {
    v100 = v38;
    v101 = v41;
    v102 = v35;
    v103 = v43;
    v48 = v112;
    v47 = v113;
    v115 = v29;
    v49 = KeyedDecodingContainer.allKeys.getter();
    started = _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC18SiriContactsCommon34ModifyContactAttributeSnippetModelV0noeM0O10CodingKeys33_177E55D66B4B3431CB612B735686642ELLO_Tt1g5(v49, 0);
    if (v52 != v51 >> 1)
    {
      OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_79();
      if (v57 == v58)
      {
        __break(1u);
        return;
      }

      v59 = *(v56 + v54);
      specialized ArraySlice.subscript.getter(v54 + 1, v53, started, v56, v54, v55);
      v61 = v60;
      v63 = v62;
      swift_unknownObjectRelease();
      if (v61 == v63 >> 1)
      {
        if (v59)
        {
          if (v59 == 1)
          {
            OUTLINED_FUNCTION_103();
            lazy protocol witness table accessor for type ContactsSnippetPluginModel.GetContactAttributeCodingKeys and conformance ContactsSnippetPluginModel.GetContactAttributeCodingKeys();
            OUTLINED_FUNCTION_30();
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            v64 = v103;
            type metadata accessor for GetContactAttributeSnippetModel(0);
            OUTLINED_FUNCTION_39();
            lazy protocol witness table accessor for type ModifyContactAttributeSnippetModel and conformance ModifyContactAttributeSnippetModel(v65);
            v66 = v100;
            v67 = v107;
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            v99 = 0;
            swift_unknownObjectRelease();
            v83 = OUTLINED_FUNCTION_56();
            v84(v83, v67);
            v85 = OUTLINED_FUNCTION_24_0();
          }

          else
          {
            OUTLINED_FUNCTION_71();
            lazy protocol witness table accessor for type ContactsSnippetPluginModel.ModifyContactAttributeCodingKeys and conformance ContactsSnippetPluginModel.ModifyContactAttributeCodingKeys();
            OUTLINED_FUNCTION_30();
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            v64 = v103;
            type metadata accessor for ModifyContactAttributeSnippetModel(0);
            OUTLINED_FUNCTION_36();
            lazy protocol witness table accessor for type ModifyContactAttributeSnippetModel and conformance ModifyContactAttributeSnippetModel(v81);
            v66 = v102;
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            v82 = v111;
            v99 = 0;
            swift_unknownObjectRelease();
            v94 = OUTLINED_FUNCTION_55();
            v95(v94, v47);
            v96 = *(v82 + 8);
            v85 = OUTLINED_FUNCTION_43();
          }

          v86(v85);
          swift_storeEnumTagMultiPayload();
          v93 = v66;
          v92 = v114;
        }

        else
        {
          lazy protocol witness table accessor for type ContactsSnippetPluginModel.GetContactCodingKeys and conformance ContactsSnippetPluginModel.GetContactCodingKeys();
          OUTLINED_FUNCTION_30();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          type metadata accessor for GetContactSnippetModel(0);
          OUTLINED_FUNCTION_37();
          lazy protocol witness table accessor for type ModifyContactAttributeSnippetModel and conformance ModifyContactAttributeSnippetModel(v77);
          v78 = v101;
          v79 = v105;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v80 = v111;
          v99 = 0;
          swift_unknownObjectRelease();
          v87 = OUTLINED_FUNCTION_56();
          v88(v87, v79);
          v89 = *(v80 + 8);
          v90 = OUTLINED_FUNCTION_43();
          v91(v90);
          swift_storeEnumTagMultiPayload();
          v92 = v114;
          v64 = v103;
          v93 = v78;
        }

        v97 = v109;
        outlined init with take of ModifyContactAttributeSnippetModel(v93, v64);
        outlined init with take of ModifyContactAttributeSnippetModel(v64, v97);
        __swift_destroy_boxed_opaque_existential_0(v92);
        goto LABEL_11;
      }
    }

    v68 = type metadata accessor for DecodingError();
    OUTLINED_FUNCTION_85();
    v70 = v69;
    v71 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v70 = v115;
    v72 = KeyedDecodingContainer.codingPath.getter();
    OUTLINED_FUNCTION_27(v72);
    v73 = *MEMORY[0x277D84160];
    OUTLINED_FUNCTION_26_0(v68);
    (*(v74 + 104))(v70);
    swift_willThrow();
    swift_unknownObjectRelease();
    v75 = OUTLINED_FUNCTION_56();
    v76(v75, v48);
  }

  __swift_destroy_boxed_opaque_existential_0(v114);
LABEL_11:
  OUTLINED_FUNCTION_45();
}