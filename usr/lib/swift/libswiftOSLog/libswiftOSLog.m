uint64_t sub_299B13E00()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t OSLogStore.PrivateIterator.next()(void *a1)
{
  if ([a1 nextObject])
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
    outlined init with take of Any(v5, &v6);
    type metadata accessor for OSLogEntry();
    swift_dynamicCast();
    return v2;
  }

  else
  {
    outlined destroy of Any?(v5);
    return 0;
  }
}

uint64_t protocol witness for IteratorProtocol.next() in conformance OSLogStore.PrivateIterator@<X0>(uint64_t *a1@<X8>)
{
  result = OSLogStore.PrivateIterator.next()(*v1);
  *a1 = result;
  return result;
}

void *OSLogStore.getEntries(with:at:matching:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[1] = *MEMORY[0x29EDCA608];
  v12[0] = 0;
  v4 = [v3 entriesEnumeratorWithOptions:a1 position:a2 predicate:a3 error:v12];
  v5 = v12[0];
  if (v4)
  {
    v6 = v4;
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_SequenceBoxCys013_ClosureBasedA0VySo10OSLogStoreC0E0E15PrivateIterator33_A983D55EFF15D70AF9FA0E38A33507C0LLVGGMd, &_ss12_SequenceBoxCys013_ClosureBasedA0VySo10OSLogStoreC0E0E15PrivateIterator33_A983D55EFF15D70AF9FA0E38A33507C0LLVGGMR);
    v8 = swift_allocObject();
    v8[2] = partial apply for closure #1 in OSLogStore.getEntries(with:at:matching:);
    v8[3] = v7;
    v9 = v5;
  }

  else
  {
    v8 = v12[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v10 = *MEMORY[0x29EDCA608];
  return v8;
}

id partial apply for closure #1 in OSLogStore.getEntries(with:at:matching:)@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return v2;
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

void OSLogMessageComponent.argument.getter(uint64_t a1@<X8>)
{
  v3 = [v1 argumentCategory];
  if (v3 <= 2)
  {
    if (v3 != 1)
    {
      if (v3 == 2)
      {
        [v1 argumentDoubleValue];
        *a1 = v5;
        *(a1 + 8) = 0;
        v4 = 1;
        goto LABEL_15;
      }

LABEL_14:
      *a1 = 0;
      *(a1 + 8) = 0;
      v4 = 5;
      goto LABEL_15;
    }

    v11 = [v1 argumentDataValue];
    if (v11)
    {
      v12 = v11;
      v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      *a1 = v13;
      *(a1 + 8) = v15;
      *(a1 + 16) = 0;
      return;
    }
  }

  else
  {
    if (v3 == 3)
    {
      *a1 = [v1 argumentInt64Value];
      *(a1 + 8) = 0;
      v4 = 2;
      goto LABEL_15;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        *a1 = [v1 argumentUInt64Value];
        *(a1 + 8) = 0;
        v4 = 4;
LABEL_15:
        *(a1 + 16) = v4;
        return;
      }

      goto LABEL_14;
    }

    v6 = [v1 argumentStringValue];
    if (v6)
    {
      v7 = v6;
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      *a1 = v8;
      *(a1 + 8) = v10;
      v4 = 3;
      goto LABEL_15;
    }

    __break(1u);
  }

  __break(1u);
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

uint64_t get_enum_tag_for_layout_string_So21OSLogMessageComponentC0A0E8ArgumentO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for OSLogMessageComponent.Argument(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for OSLogMessageComponent.Argument(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

uint64_t destructiveInjectEnumTag for OSLogMessageComponent.Argument(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t type metadata accessor for OSLogEntry()
{
  result = lazy cache variable for type metadata for OSLogEntry;
  if (!lazy cache variable for type metadata for OSLogEntry)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OSLogEntry);
  }

  return result;
}