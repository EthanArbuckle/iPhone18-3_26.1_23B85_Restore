__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for AppDialogParams(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for AppDialogParams(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void type metadata accessor for TUCallStatus()
{
  if (!lazy cache variable for type metadata for TUCallStatus)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for TUCallStatus);
    }
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SharingDialogParams.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x26D5ECD20](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SharingDialogParams.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x26D5ECD20](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance SharingDialogParams.CodingKeys()
{
  v1 = 0x656D614E707061;
  if (*v0 != 1)
  {
    v1 = 0x6E65697069636572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E65657263537369;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SharingDialogParams.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized SharingDialogParams.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SharingDialogParams.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SharingDialogParams.CodingKeys and conformance SharingDialogParams.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SharingDialogParams.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SharingDialogParams.CodingKeys and conformance SharingDialogParams.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SharingDialogParams.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15[1] = a3;
  v15[2] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19SiriExpanseInternal19SharingDialogParamsV10CodingKeys33_8D4ACCBC64109F867D67AA184DE30D39LLOGMd, &_ss22KeyedEncodingContainerVy19SiriExpanseInternal19SharingDialogParamsV10CodingKeys33_8D4ACCBC64109F867D67AA184DE30D39LLOGMR);
  v9 = *(v8 - 8);
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v12 = v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SharingDialogParams.CodingKeys and conformance SharingDialogParams.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v17 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15[3] = a5;
    v16 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriDialogEngine0B6PersonCGMd, &_sSay16SiriDialogEngine0B6PersonCGMR);
    lazy protocol witness table accessor for type [DialogPerson] and conformance <A> [A]();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance GenericErrorParams.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x5265726168537369 && a2 == 0xEE00747365757165)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GenericErrorParams.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GenericErrorParams.CodingKeys and conformance GenericErrorParams.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GenericErrorParams.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GenericErrorParams.CodingKeys and conformance GenericErrorParams.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AppDialogParams.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656D614E707061 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppDialogParams.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppDialogParams.CodingKeys and conformance AppDialogParams.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppDialogParams.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppDialogParams.CodingKeys and conformance AppDialogParams.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance AppDialogParams(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19SiriExpanseInternal15AppDialogParamsV10CodingKeys33_8D4ACCBC64109F867D67AA184DE30D39LLOGMd, &_ss22KeyedEncodingContainerVy19SiriExpanseInternal15AppDialogParamsV10CodingKeys33_8D4ACCBC64109F867D67AA184DE30D39LLOGMR);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AppDialogParams.CodingKeys and conformance AppDialogParams.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AppDialogParams(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GenericErrorParams.CodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x26D5ECD20](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GenericErrorParams.CodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x26D5ECD20](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ConfirmationDialogParams.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x8000000266BEE3C0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ConfirmationDialogParams.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ConfirmationDialogParams.CodingKeys and conformance ConfirmationDialogParams.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ConfirmationDialogParams.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ConfirmationDialogParams.CodingKeys and conformance ConfirmationDialogParams.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance GenericErrorParams(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v17 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v12 = &v16 - v11;
  v13 = *v6;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v9 + 8))(v12, v8);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance EmptyDialogParams.CodingKeys@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance EmptyDialogParams.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type EmptyDialogParams.CodingKeys and conformance EmptyDialogParams.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance EmptyDialogParams.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type EmptyDialogParams.CodingKeys and conformance EmptyDialogParams.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance EmptyDialogParams(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19SiriExpanseInternal17EmptyDialogParamsV10CodingKeys33_8D4ACCBC64109F867D67AA184DE30D39LLOGMd, &_ss22KeyedEncodingContainerVy19SiriExpanseInternal17EmptyDialogParamsV10CodingKeys33_8D4ACCBC64109F867D67AA184DE30D39LLOGMR);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type EmptyDialogParams.CodingKeys and conformance EmptyDialogParams.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v6, v2);
}

_DWORD *protocol witness for RawRepresentable.init(rawValue:) in conformance TUCallStatus@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppDialogParams.CodingKeys and conformance AppDialogParams.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AppDialogParams.CodingKeys and conformance AppDialogParams.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppDialogParams.CodingKeys and conformance AppDialogParams.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppDialogParams.CodingKeys and conformance AppDialogParams.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppDialogParams.CodingKeys and conformance AppDialogParams.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppDialogParams.CodingKeys and conformance AppDialogParams.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppDialogParams.CodingKeys and conformance AppDialogParams.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppDialogParams.CodingKeys and conformance AppDialogParams.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppDialogParams.CodingKeys and conformance AppDialogParams.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppDialogParams.CodingKeys and conformance AppDialogParams.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppDialogParams.CodingKeys and conformance AppDialogParams.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppDialogParams.CodingKeys and conformance AppDialogParams.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppDialogParams.CodingKeys and conformance AppDialogParams.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EmptyDialogParams.CodingKeys and conformance EmptyDialogParams.CodingKeys()
{
  result = lazy protocol witness table cache variable for type EmptyDialogParams.CodingKeys and conformance EmptyDialogParams.CodingKeys;
  if (!lazy protocol witness table cache variable for type EmptyDialogParams.CodingKeys and conformance EmptyDialogParams.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmptyDialogParams.CodingKeys and conformance EmptyDialogParams.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmptyDialogParams.CodingKeys and conformance EmptyDialogParams.CodingKeys;
  if (!lazy protocol witness table cache variable for type EmptyDialogParams.CodingKeys and conformance EmptyDialogParams.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmptyDialogParams.CodingKeys and conformance EmptyDialogParams.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmptyDialogParams.CodingKeys and conformance EmptyDialogParams.CodingKeys;
  if (!lazy protocol witness table cache variable for type EmptyDialogParams.CodingKeys and conformance EmptyDialogParams.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmptyDialogParams.CodingKeys and conformance EmptyDialogParams.CodingKeys);
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

uint64_t getEnumTagSinglePayload for SharingDialogParams(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SharingDialogParams(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConfirmationDialogParams(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ConfirmationDialogParams(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SharingDialogParams.CodingKeys and conformance SharingDialogParams.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SharingDialogParams.CodingKeys and conformance SharingDialogParams.CodingKeys;
  if (!lazy protocol witness table cache variable for type SharingDialogParams.CodingKeys and conformance SharingDialogParams.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharingDialogParams.CodingKeys and conformance SharingDialogParams.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharingDialogParams.CodingKeys and conformance SharingDialogParams.CodingKeys;
  if (!lazy protocol witness table cache variable for type SharingDialogParams.CodingKeys and conformance SharingDialogParams.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharingDialogParams.CodingKeys and conformance SharingDialogParams.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharingDialogParams.CodingKeys and conformance SharingDialogParams.CodingKeys;
  if (!lazy protocol witness table cache variable for type SharingDialogParams.CodingKeys and conformance SharingDialogParams.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharingDialogParams.CodingKeys and conformance SharingDialogParams.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharingDialogParams.CodingKeys and conformance SharingDialogParams.CodingKeys;
  if (!lazy protocol witness table cache variable for type SharingDialogParams.CodingKeys and conformance SharingDialogParams.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharingDialogParams.CodingKeys and conformance SharingDialogParams.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [DialogPerson] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [DialogPerson] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [DialogPerson] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay16SiriDialogEngine0B6PersonCGMd, &_sSay16SiriDialogEngine0B6PersonCGMR);
    lazy protocol witness table accessor for type DialogPerson and conformance DialogPerson();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DialogPerson] and conformance <A> [A]);
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

unint64_t lazy protocol witness table accessor for type DialogPerson and conformance DialogPerson()
{
  result = lazy protocol witness table cache variable for type DialogPerson and conformance DialogPerson;
  if (!lazy protocol witness table cache variable for type DialogPerson and conformance DialogPerson)
  {
    type metadata accessor for DialogPerson();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DialogPerson and conformance DialogPerson);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ConfirmationDialogParams.CodingKeys and conformance ConfirmationDialogParams.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ConfirmationDialogParams.CodingKeys and conformance ConfirmationDialogParams.CodingKeys;
  if (!lazy protocol witness table cache variable for type ConfirmationDialogParams.CodingKeys and conformance ConfirmationDialogParams.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConfirmationDialogParams.CodingKeys and conformance ConfirmationDialogParams.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConfirmationDialogParams.CodingKeys and conformance ConfirmationDialogParams.CodingKeys;
  if (!lazy protocol witness table cache variable for type ConfirmationDialogParams.CodingKeys and conformance ConfirmationDialogParams.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConfirmationDialogParams.CodingKeys and conformance ConfirmationDialogParams.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConfirmationDialogParams.CodingKeys and conformance ConfirmationDialogParams.CodingKeys;
  if (!lazy protocol witness table cache variable for type ConfirmationDialogParams.CodingKeys and conformance ConfirmationDialogParams.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConfirmationDialogParams.CodingKeys and conformance ConfirmationDialogParams.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConfirmationDialogParams.CodingKeys and conformance ConfirmationDialogParams.CodingKeys;
  if (!lazy protocol witness table cache variable for type ConfirmationDialogParams.CodingKeys and conformance ConfirmationDialogParams.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConfirmationDialogParams.CodingKeys and conformance ConfirmationDialogParams.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GenericErrorParams.CodingKeys and conformance GenericErrorParams.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GenericErrorParams.CodingKeys and conformance GenericErrorParams.CodingKeys;
  if (!lazy protocol witness table cache variable for type GenericErrorParams.CodingKeys and conformance GenericErrorParams.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericErrorParams.CodingKeys and conformance GenericErrorParams.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GenericErrorParams.CodingKeys and conformance GenericErrorParams.CodingKeys;
  if (!lazy protocol witness table cache variable for type GenericErrorParams.CodingKeys and conformance GenericErrorParams.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericErrorParams.CodingKeys and conformance GenericErrorParams.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GenericErrorParams.CodingKeys and conformance GenericErrorParams.CodingKeys;
  if (!lazy protocol witness table cache variable for type GenericErrorParams.CodingKeys and conformance GenericErrorParams.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericErrorParams.CodingKeys and conformance GenericErrorParams.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GenericErrorParams.CodingKeys and conformance GenericErrorParams.CodingKeys;
  if (!lazy protocol witness table cache variable for type GenericErrorParams.CodingKeys and conformance GenericErrorParams.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericErrorParams.CodingKeys and conformance GenericErrorParams.CodingKeys);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppDialogParams.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AppDialogParams.CodingKeys(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for SharingDialogParams.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SharingDialogParams.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized SharingDialogParams.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65657263537369 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D614E707061 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E65697069636572 && a2 == 0xEA00000000007374)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t one-time initialization function for typeName()
{
  type metadata accessor for SharingDirectInvocationIntent();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal29SharingDirectInvocationIntentVmMd, _s19SiriExpanseInternal29SharingDirectInvocationIntentVmMR);
  result = String.init<A>(describing:)();
  static SharingDirectInvocationIntent.typeName = result;
  *algn_2800C0158 = v1;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal0B12FlowProviderVmMd, &_s19SiriExpanseInternal0B12FlowProviderVmMR);
  result = String.init<A>(describing:)();
  static ExpanseFlowProvider.typeName = result;
  *algn_2800C0278 = v1;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal23SharingDirectInvocationOmMd, &_s19SiriExpanseInternal23SharingDirectInvocationOmMR);
  result = String.init<A>(describing:)();
  static SharingDirectInvocation.typeName = result;
  unk_2800C02C0 = v1;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal19SharingIntentHelperOmMd, &_s19SiriExpanseInternal19SharingIntentHelperOmMR);
  result = String.init<A>(describing:)();
  static SharingIntentHelper.typeName = result;
  *algn_2800C02F8 = v1;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal15ScreenShareTypeOmMd, &_s19SiriExpanseInternal15ScreenShareTypeOmMR);
  result = String.init<A>(describing:)();
  static ScreenShareType.typeName = result;
  *algn_2800C0348 = v1;
  return result;
}

{
  type metadata accessor for SimpleSharingYesNoPromptFlowStrategy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal36SimpleSharingYesNoPromptFlowStrategyCmMd, &_s19SiriExpanseInternal36SimpleSharingYesNoPromptFlowStrategyCmMR);
  result = String.init<A>(describing:)();
  static SimpleSharingYesNoPromptFlowStrategy.typeName = result;
  *algn_2800C03F8 = v1;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal24SharingNLContextProviderOmMd, &_s19SiriExpanseInternal24SharingNLContextProviderOmMR);
  result = String.init<A>(describing:)();
  static SharingNLContextProvider.typeName = result;
  unk_2800C0440 = v1;
  return result;
}

{
  type metadata accessor for StartSharingConfirmationFlow();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal28StartSharingConfirmationFlowCmMd, &_s19SiriExpanseInternal28StartSharingConfirmationFlowCmMR);
  result = String.init<A>(describing:)();
  static StartSharingConfirmationFlow.typeName = result;
  unk_2800C0490 = v1;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal24ScreenSharingCallManagerVmMd, &_s19SiriExpanseInternal24ScreenSharingCallManagerVmMR);
  result = String.init<A>(describing:)();
  static ScreenSharingCallManager.typeName = result;
  *algn_2800C0578 = v1;
  return result;
}

{
  type metadata accessor for OutputDialogFlow();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal16OutputDialogFlowCmMd, _s19SiriExpanseInternal16OutputDialogFlowCmMR);
  result = String.init<A>(describing:)();
  static OutputDialogFlow.typeName = result;
  unk_2800C05A0 = v1;
  return result;
}

{
  type metadata accessor for SharePlayHelper();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal15SharePlayHelperCmMd, _s19SiriExpanseInternal15SharePlayHelperCmMR);
  result = String.init<A>(describing:)();
  static SharePlayHelper.typeName = result;
  *algn_2800C06D8 = v1;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal19ConfirmationContextOmMd, ":s");
  result = String.init<A>(describing:)();
  static ConfirmationContext.typeName = result;
  unk_2800C0710 = v1;
  return result;
}

{
  type metadata accessor for ValidateCallStatusFlow();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal22ValidateCallStatusFlowCmMd, &_s19SiriExpanseInternal22ValidateCallStatusFlowCmMR);
  result = String.init<A>(describing:)();
  static ValidateCallStatusFlow.typeName = result;
  *algn_2800C0728 = v1;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal11ShareStatusOmMd, _s19SiriExpanseInternal11ShareStatusOmMR);
  result = String.init<A>(describing:)();
  static ShareStatus.typeName = result;
  unk_2800C07E0 = v1;
  return result;
}

{
  type metadata accessor for DismissSiriFlow();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal07DismissA4FlowCmMd, &_s19SiriExpanseInternal07DismissA4FlowCmMR);
  result = String.init<A>(describing:)();
  static DismissSiriFlow.typeName = result;
  unk_2800C0A80 = v1;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal6SharerVmMd, &_s19SiriExpanseInternal6SharerVmMR);
  result = String.init<A>(describing:)();
  static Sharer.typeName = result;
  *algn_2800C0A98 = v1;
  return result;
}

{
  type metadata accessor for ResponseExecutor();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal16ResponseExecutorCmMd, &_s19SiriExpanseInternal16ResponseExecutorCmMR);
  result = String.init<A>(describing:)();
  static ResponseExecutor.typeName = result;
  *algn_2800C0AC8 = v1;
  return result;
}

{
  type metadata accessor for ValidateRecipientsFlow();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal22ValidateRecipientsFlowCmMd, &_s19SiriExpanseInternal22ValidateRecipientsFlowCmMR);
  result = String.init<A>(describing:)();
  static ValidateRecipientsFlow.typeName = result;
  unk_2800C0B30 = v1;
  return result;
}

{
  type metadata accessor for SharingNLv4Intent();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal17SharingNLv4IntentCmMd, &_s19SiriExpanseInternal17SharingNLv4IntentCmMR);
  result = String.init<A>(describing:)();
  static SharingNLv4Intent.typeName = result;
  *algn_2800C0B68 = v1;
  return result;
}

{
  type metadata accessor for ConfirmScreenShareOrMessageSendFlowStrategy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal43ConfirmScreenShareOrMessageSendFlowStrategyCmMd, _s19SiriExpanseInternal43ConfirmScreenShareOrMessageSendFlowStrategyCmMR);
  result = String.init<A>(describing:)();
  static ConfirmScreenShareOrMessageSendFlowStrategy.typeName = result;
  unk_2800C0E60 = v1;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal19ShareTargetResolverVmMd, &_s19SiriExpanseInternal19ShareTargetResolverVmMR);
  result = String.init<A>(describing:)();
  static ShareTargetResolver.typeName = result;
  unk_2800C0E90 = v1;
  return result;
}

{
  type metadata accessor for StartSharingFlow(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal16StartSharingFlowCmMd, &_s19SiriExpanseInternal16StartSharingFlowCmMR);
  result = String.init<A>(describing:)();
  static StartSharingFlow.typeName = result;
  unk_2800C0EB0 = v1;
  return result;
}

{
  type metadata accessor for ValidateStartSharingIntentFlow();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal30ValidateStartSharingIntentFlowCmMd, &_s19SiriExpanseInternal30ValidateStartSharingIntentFlowCmMR);
  result = String.init<A>(describing:)();
  static ValidateStartSharingIntentFlow.typeName = result;
  *algn_2800C0F88 = v1;
  return result;
}

{
  type metadata accessor for StopSharingFlow(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal15StopSharingFlowCmMd, &_s19SiriExpanseInternal15StopSharingFlowCmMR);
  result = String.init<A>(describing:)();
  static StopSharingFlow.typeName = result;
  *algn_2800C0FA8 = v1;
  return result;
}

uint64_t SharingDirectInvocationIntent.description.getter()
{
  BYTE8(v3) = 0;
  _StringGuts.grow(_:)(52);
  MEMORY[0x26D5EC8A0](0xD000000000000031, 0x8000000266BEE400);
  *&v3 = *(v0 + *(type metadata accessor for SharingDirectInvocationIntent() + 60));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal17ConfirmationValueOSgMd, &_s19SiriExpanseInternal17ConfirmationValueOSgMR);
  v1 = String.init<A>(describing:)();
  MEMORY[0x26D5EC8A0](v1);

  MEMORY[0x26D5EC8A0](41, 0xE100000000000000);
  return *(&v3 + 1);
}

void SharingDirectInvocationIntent.init(from:)(char a1@<W0>, _BYTE *a2@<X8>)
{
  *a2 = 3;
  v4 = type metadata accessor for SharingDirectInvocationIntent();
  v5 = v4[5];
  v6 = type metadata accessor for UsoEntity_common_AttachmentType.DefinedValues();
  (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  a2[v4[6]] = 0;
  v7 = &a2[v4[7]];
  *v7 = 0;
  v7[1] = 0;
  v8 = &a2[v4[8]];
  *v8 = 0;
  v8[1] = 0;
  v9 = &a2[v4[9]];
  *v9 = 0;
  v9[1] = 0;
  v10 = &a2[v4[10]];
  *v10 = 0;
  v10[1] = 0;
  a2[v4[11]] = 0;
  a2[v4[12]] = 0;
  a2[v4[13]] = 0;
  *&a2[v4[14]] = 0;
  v11 = v4[16];
  type metadata accessor for ShareTarget();
  swift_storeEnumTagMultiPayload();
  a2[v4[17]] = 0;
  *&a2[v4[18]] = 0;
  a2[v4[19]] = 0;
  a2[v4[20]] = 0;
  a2[v4[21]] = 0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.default);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v21 = v16;
    *v15 = 136315394;
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static SharingDirectInvocationIntent.typeName, *algn_2800C0158, &v21);
    *(v15 + 12) = 2080;
    _StringGuts.grow(_:)(26);

    if (a1)
    {
      v17 = 0x7463656A6572;
    }

    else
    {
      v17 = 0x6D7269666E6F63;
    }

    if (a1)
    {
      v18 = 0xE600000000000000;
    }

    else
    {
      v18 = 0xE700000000000000;
    }

    MEMORY[0x26D5EC8A0](v17, v18);

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, 0x8000000266BEE3E0, &v21);

    *(v15 + 14) = v19;
    _os_log_impl(&dword_266B9E000, v13, v14, "%s: Initializing self from invocation: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D5ED340](v16, -1, -1);
    MEMORY[0x26D5ED340](v15, -1, -1);
  }

  if (a1)
  {
    v20 = 2;
  }

  else
  {
    v20 = 0;
  }

  a2[v4[15]] = v20;
}

uint64_t protocol witness for SharingIntent.appName.getter in conformance SharingDirectInvocationIntent(uint64_t a1)
{
  v2 = (v1 + *(a1 + 28));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t protocol witness for SharingIntent.appName.setter in conformance SharingDirectInvocationIntent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 28));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t protocol witness for SharingIntent.typeMatchingSpan.getter in conformance SharingDirectInvocationIntent(uint64_t a1)
{
  v2 = (v1 + *(a1 + 32));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t protocol witness for SharingIntent.typeMatchingSpan.setter in conformance SharingDirectInvocationIntent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 32));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t protocol witness for SharingIntent.appIdentifier.getter in conformance SharingDirectInvocationIntent(uint64_t a1)
{
  v2 = (v1 + *(a1 + 36));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t protocol witness for SharingIntent.appIdentifier.setter in conformance SharingDirectInvocationIntent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 36));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t protocol witness for SharingIntent.associatedAppIdentifier.getter in conformance SharingDirectInvocationIntent(uint64_t a1)
{
  v2 = (v1 + *(a1 + 40));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t type metadata accessor for SharingDirectInvocationIntent()
{
  result = type metadata singleton initialization cache for SharingDirectInvocationIntent;
  if (!type metadata singleton initialization cache for SharingDirectInvocationIntent)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_266BA24EC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMd, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[7] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = type metadata accessor for ShareTarget();
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[16];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_266BA2644(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMd, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + a4[7] + 8) = a2;
  }

  else
  {
    v13 = type metadata accessor for ShareTarget();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[16];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

void type metadata completion function for SharingDirectInvocationIntent()
{
  type metadata accessor for SharingVerb?(319, &lazy cache variable for type metadata for SharingVerb?);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UsoEntity_common_AttachmentType.DefinedValues?(319, &lazy cache variable for type metadata for UsoEntity_common_AttachmentType.DefinedValues?, MEMORY[0x277D5EF80]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for SharingVerb?(319, &lazy cache variable for type metadata for String?);
      if (v2 <= 0x3F)
      {
        type metadata accessor for [INPerson]?();
        if (v3 <= 0x3F)
        {
          type metadata accessor for SharingVerb?(319, &lazy cache variable for type metadata for ConfirmationValue?);
          if (v4 <= 0x3F)
          {
            type metadata accessor for ShareTarget();
            if (v5 <= 0x3F)
            {
              type metadata accessor for UsoEntity_common_AttachmentType.DefinedValues?(319, &lazy cache variable for type metadata for UsoEntity?, MEMORY[0x277D5F498]);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for [INPerson]?()
{
  if (!lazy cache variable for type metadata for [INPerson]?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [INPerson]?);
    }
  }
}

void type metadata accessor for SharingVerb?(uint64_t a1, unint64_t *a2)
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

void type metadata accessor for UsoEntity_common_AttachmentType.DefinedValues?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t instantiation function for generic protocol witness table for SharingDirectInvocationIntent(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SharingDirectInvocationIntent and conformance SharingDirectInvocationIntent();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type SharingDirectInvocationIntent and conformance SharingDirectInvocationIntent()
{
  result = lazy protocol witness table cache variable for type SharingDirectInvocationIntent and conformance SharingDirectInvocationIntent;
  if (!lazy protocol witness table cache variable for type SharingDirectInvocationIntent and conformance SharingDirectInvocationIntent)
  {
    type metadata accessor for SharingDirectInvocationIntent();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharingDirectInvocationIntent and conformance SharingDirectInvocationIntent);
  }

  return result;
}

uint64_t outlined init with copy of ShareTarget(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareTarget();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of UsoEntity_common_AttachmentType.DefinedValues?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMd, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of UsoEntity_common_AttachmentType.DefinedValues?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMd, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of SharingPromptFlowStrategy.parseResponse(input:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 80);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = protocol witness for SharingPromptFlowStrategy.makeUserCancelledResponse() in conformance SimpleSharingYesNoPromptFlowStrategy;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of SharingPromptFlowStrategy.makePrompt()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 88);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = dispatch thunk of SharingPromptFlowStrategy.makePrompt();

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of SharingPromptFlowStrategy.makePrompt()()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t dispatch thunk of SharingPromptFlowStrategy.makeUserCancelledResponse()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 96);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = protocol witness for SharingPromptFlowStrategy.makeUserCancelledResponse() in conformance SimpleSharingYesNoPromptFlowStrategy;

  return v11(a1, a2, a3);
}

uint64_t SharingPromptFlowStrategy.getActionForInput(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v46 = a2;
  v9 = type metadata accessor for Parse();
  v50 = *(v9 - 8);
  v10 = *(v50 + 64);
  MEMORY[0x28223BE20](v9);
  v48 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Input();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v18 = __swift_project_value_buffer(v17, static Logger.default);
  v19 = *(v13 + 16);
  v49 = a1;
  v19(v16, a1, v12);
  v47 = v18;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v45[0] = v9;
    v23 = v22;
    v24 = swift_slowAlloc();
    v45[2] = a4;
    v25 = v24;
    v53[0] = v24;
    *v23 = 136315138;
    lazy protocol witness table accessor for type Input and conformance Input();
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v45[1] = v5;
    v27 = a3;
    v29 = v28;
    (*(v13 + 8))(v16, v12);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v29, v53);
    a3 = v27;

    *(v23 + 4) = v30;
    _os_log_impl(&dword_266B9E000, v20, v21, "SharingPromptFlowStrategy: actionForInput received input: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x26D5ED340](v25, -1, -1);
    v31 = v23;
    v9 = v45[0];
    MEMORY[0x26D5ED340](v31, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v16, v12);
  }

  v32 = v48;
  Input.parse.getter();
  v33 = static SharingIntentHelper.makeSharingIntentFrom(parse:)(v32, &v51);
  (*(v50 + 8))(v32, v9, v33);
  if (v52)
  {
    outlined init with take of ConversationParticipant(&v51, v53);
    v34 = v54;
    v35 = v55;
    __swift_project_boxed_opaque_existential_1(v53, v54);
    v36 = (*(v35 + 184))(v34, v35);
    if (v36 > 1)
    {
      if (v36 == 2)
      {

        goto LABEL_15;
      }
    }

    else
    {
      v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v41)
      {
LABEL_15:
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&dword_266B9E000, v42, v43, "SharingPromptFlowStrategy: Found cancel confirmation value -> cancelling request", v44, 2u);
          MEMORY[0x26D5ED340](v44, -1, -1);
        }

        static ActionForInput.cancel()();
        return __swift_destroy_boxed_opaque_existential_1Tm(v53);
      }
    }

    (*(a3 + 72))(v53, v46, a3);
    return __swift_destroy_boxed_opaque_existential_1Tm(v53);
  }

  outlined destroy of SharingResponse?(&v51, &_s19SiriExpanseInternal13SharingIntent_pSgMd, &_s19SiriExpanseInternal13SharingIntent_pSgMR);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_266B9E000, v37, v38, "SharingPromptFlowStrategy: Unable to create SharingIntent from parse; ignoring input.", v39, 2u);
    MEMORY[0x26D5ED340](v39, -1, -1);
  }

  return static ActionForInput.ignore()();
}

uint64_t SharingPromptFlowStrategy.makePrompt()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  return MEMORY[0x2822009F8](SharingPromptFlowStrategy.makePrompt(), 0, 0);
}

uint64_t SharingPromptFlowStrategy.makePrompt()()
{
  v1 = v0[14];
  v2 = v0[13];
  (*(v1 + 56))(v2, v1);
  v3 = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  (*(v1 + 40))(v2, v1);
  v4 = *v3;
  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = SharingPromptFlowStrategy.makePrompt();
  v6 = v0[12];

  return ResponseExecutor.execute(response:)(v6, (v0 + 7));
}

{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v6 = *v1;
  *(v2 + 136) = v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 56));
  if (v0)
  {
    v4 = SharingPromptFlowStrategy.makePrompt();
  }

  else
  {
    v4 = SharingPromptFlowStrategy.makePrompt();
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[1];
  v2 = v0[17];

  return v1();
}

uint64_t SharingPromptFlowStrategy.makeUserCancelledResponse()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  return MEMORY[0x2822009F8](SharingPromptFlowStrategy.makeUserCancelledResponse(), 0, 0);
}

uint64_t SharingPromptFlowStrategy.makeUserCancelledResponse()()
{
  v1 = *(v0 + 160);
  (*(*(v0 + 152) + 48))(*(v0 + 144));
  if (*(v0 + 80))
  {
    v2 = *(v0 + 152);
    v3 = *(v0 + 160);
    v4 = *(v0 + 144);
    outlined init with take of ConversationParticipant((v0 + 56), v0 + 16);
    (*(v2 + 56))(v4, v2);
    v5 = *__swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
    v6 = swift_task_alloc();
    *(v0 + 168) = v6;
    *v6 = v0;
    v6[1] = SharingPromptFlowStrategy.makeUserCancelledResponse();
    v7 = *(v0 + 136);

    return ResponseExecutor.execute(response:)(v7, v0 + 16);
  }

  else
  {
    v9 = *(v0 + 136);
    outlined destroy of SharingResponse?(v0 + 56, &_s19SiriExpanseInternal15SharingResponse_pSgMd, &_s19SiriExpanseInternal15SharingResponse_pSgMR);
    type metadata accessor for EmptyOutput();
    static EmptyOutput.instance.getter();
    v10 = *(v0 + 8);

    return v10();
  }
}

{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = SharingPromptFlowStrategy.makeUserCancelledResponse();
  }

  else
  {
    v3 = SharingPromptFlowStrategy.makeUserCancelledResponse();
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  v1 = v0[1];

  return v1();
}

{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  v1 = v0[1];
  v2 = v0[22];

  return v1();
}

uint64_t protocol witness for SharingPromptFlowStrategy.makePrompt() in conformance SimpleSharingYesNoPromptFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for SharingPromptFlowStrategy.makeUserCancelledResponse() in conformance SimpleSharingYesNoPromptFlowStrategy;

  return SharingPromptFlowStrategy.makePrompt()(a1, a2, a3);
}

uint64_t protocol witness for SharingPromptFlowStrategy.makeUserCancelledResponse() in conformance SimpleSharingYesNoPromptFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for SharingPromptFlowStrategy.makeUserCancelledResponse() in conformance SimpleSharingYesNoPromptFlowStrategy;

  return SharingPromptFlowStrategy.makeUserCancelledResponse()(a1, a2, a3);
}

uint64_t protocol witness for SharingPromptFlowStrategy.makePrompt() in conformance NeedsShareTargetFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of SharingPromptFlowStrategy.makePrompt();

  return SharingPromptFlowStrategy.makePrompt()(a1, a2, a3);
}

uint64_t outlined destroy of SharingResponse?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with take of ConversationParticipant(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t lazy protocol witness table accessor for type Input and conformance Input()
{
  result = lazy protocol witness table cache variable for type Input and conformance Input;
  if (!lazy protocol witness table cache variable for type Input and conformance Input)
  {
    type metadata accessor for Input();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Input and conformance Input);
  }

  return result;
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

uint64_t TUCallStatus.description.getter(int a1)
{
  if (a1 > 2)
  {
    if (a1 <= 4)
    {
      return 0xD000000000000010;
    }

    if (a1 == 5 || a1 == 6)
    {
      return 0x656E6E6F63736964;
    }

LABEL_12:
    _StringGuts.grow(_:)(22);

    v2 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D5EC8A0](v2);

    MEMORY[0x26D5EC8A0](41, 0xE100000000000000);
    return 0xD000000000000013;
  }

  if (!a1)
  {
    return 1701602409;
  }

  if (a1 != 1)
  {
    if (a1 == 2)
    {
      return 0x646C6F682D6E6FLL;
    }

    goto LABEL_12;
  }

  return 0x657669746361;
}

uint64_t PromptForValueFlowWrapper.execute()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](PromptForValueFlowWrapper.execute(), 0, 0);
}

uint64_t PromptForValueFlowWrapper.execute()()
{
  v1 = *(v0[3] + 24);
  v2 = *(MEMORY[0x277D5B470] + 4);
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = PromptForValueFlowWrapper.execute();
  v4 = v0[2];

  return MEMORY[0x2821B9D68](v4);
}

{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t PromptForValueFlowWrapper.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);

  return v0;
}

uint64_t PromptForValueFlowWrapper.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t protocol witness for Flow.onAsync(input:) in conformance PromptForValueFlowWrapper<A1>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B890] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for Flow.onAsync(input:) in conformance PromptForValueFlowWrapper<A1>;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t protocol witness for Flow.onAsync(input:) in conformance PromptForValueFlowWrapper<A1>(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t protocol witness for Flow.execute() in conformance PromptForValueFlowWrapper<A>(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of SharingPromptFlowStrategy.makePrompt();

  return PromptForValueFlowWrapper.execute()(a1);
}

uint64_t dispatch thunk of ShareTargetResolving.resolveShareTargetForStartSharing(target:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = dispatch thunk of ShareTargetResolving.resolveShareTargetForStartSharing(target:);

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of ShareTargetResolving.resolveShareTargetForStartSharing(target:)(uint64_t a1, uint64_t a2, int a3)
{
  v7 = *(*v3 + 16);
  v10 = *v3;

  v8 = *(v10 + 8);

  return v8(a1, a2, a3 & 0x1FFFF);
}

uint64_t dispatch thunk of ShareTargetResolving.resolveShareTargetForStopSharing(target:call:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = dispatch thunk of ShareTargetResolving.resolveShareTargetForStopSharing(target:call:);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ShareTargetResolving.resolveShareTargetForStopSharing(target:call:)(__int16 a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1 & 0x1FF);
}

uint64_t Flow.execute(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v21 - v14;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v10 + 16))(&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v5, a3);
  v17 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 4) = a3;
  *(v18 + 5) = a4;
  (*(v10 + 32))(&v18[v17], &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  v19 = &v18[(v11 + v17 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v19 = a1;
  *(v19 + 1) = a2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v15, &async function pointer to partial apply for closure #1 in Flow.execute(completion:), v18);
}

uint64_t closure #1 in Flow.execute(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a5;
  v8[3] = a6;
  v11 = type metadata accessor for ExecuteResponse();
  v8[4] = v11;
  v12 = *(v11 - 8);
  v8[5] = v12;
  v13 = *(v12 + 64) + 15;
  v14 = swift_task_alloc();
  v8[6] = v14;
  v15 = *(MEMORY[0x277D5B878] + 4);
  v16 = swift_task_alloc();
  v8[7] = v16;
  *v16 = v8;
  v16[1] = closure #1 in Flow.execute(completion:);

  return MEMORY[0x2821BA608](v14, a7, a8);
}

uint64_t closure #1 in Flow.execute(completion:)()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return MEMORY[0x2822009F8](closure #1 in Flow.execute(completion:), 0, 0);
}

{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  (*(v0 + 16))(v1);
  (*(v2 + 8))(v1, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_266BA5008()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t partial apply for closure #1 in Flow.execute(completion:)(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = (*(*(v4 - 8) + 80) + 48) & ~*(*(v4 - 8) + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = (v1 + ((*(*(v4 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = dispatch thunk of SharingPromptFlowStrategy.makePrompt();

  return closure #1 in Flow.execute(completion:)(a1, v7, v8, v1 + v6, v10, v11, v4, v5);
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  outlined init with copy of TaskPriority?(a3, v27 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    outlined destroy of TaskPriority?(v12);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      outlined destroy of TaskPriority?(a3);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v7(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_266BA57A0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for SharingPromptFlowStrategy.makeUserCancelledResponse() in conformance SimpleSharingYesNoPromptFlowStrategy;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v5);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_9(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of SharingPromptFlowStrategy.makePrompt();

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v5);
}

unint64_t lazy protocol witness table accessor for type DefinitiveShareTarget and conformance DefinitiveShareTarget()
{
  result = lazy protocol witness table cache variable for type DefinitiveShareTarget and conformance DefinitiveShareTarget;
  if (!lazy protocol witness table cache variable for type DefinitiveShareTarget and conformance DefinitiveShareTarget)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefinitiveShareTarget and conformance DefinitiveShareTarget);
  }

  return result;
}

unint64_t Encodable.asDictionary()()
{
  v16[4] = *MEMORY[0x277D85DE8];
  v0 = type metadata accessor for JSONEncoder();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  v3 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v5 = v4;

  v6 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v16[0] = 0;
  v8 = [v6 JSONObjectWithData:isa options:0 error:v16];

  if (!v8)
  {
    v11 = v16[0];
    v12 = _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_5;
  }

  v9 = v16[0];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    outlined consume of Data._Representation(v3, v5);
    goto LABEL_6;
  }

  outlined consume of Data._Representation(v3, v5);
  v10 = v15;
LABEL_6:
  v13 = *MEMORY[0x277D85DE8];
  return v10;
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

uint64_t ExpanseFlowProvider.init()@<X0>(void *a1@<X8>)
{
  a1[3] = &type metadata for ScreenSharingCallManager;
  a1[4] = &protocol witness table for ScreenSharingCallManager;
  v2 = swift_allocObject();
  *a1 = v2;
  v3 = [objc_opt_self() sharedInstance];
  v2[5] = type metadata accessor for TUCallCenter();
  v2[6] = &protocol witness table for TUCallCenter;
  v2[2] = v3;
  v4 = type metadata accessor for DialogExecutor();
  v5 = swift_allocObject();
  v6 = type metadata accessor for ResponseFactory();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();

  v9 = ResponseFactory.init()();
  static Device.current.getter();
  type metadata accessor for CATGlobals();
  v10 = CATGlobals.__allocating_init()();
  v23 = v6;
  v24 = MEMORY[0x277D5BD58];
  *&v22 = v9;
  v21[3] = v4;
  v21[4] = &protocol witness table for DialogExecutor;
  v21[0] = v5;
  v11 = type metadata accessor for ResponseExecutor();
  v12 = swift_allocObject();
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v21, v4);
  v14 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v21[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = *v16;
  v12[5] = v4;
  v12[6] = &protocol witness table for DialogExecutor;
  v12[2] = v18;
  outlined init with take of ConversationParticipant(&v22, (v12 + 7));
  outlined init with take of ConversationParticipant(&v25, (v12 + 12));
  v12[17] = v10;
  __swift_destroy_boxed_opaque_existential_1Tm(v21);

  a1[8] = v11;
  a1[9] = &protocol witness table for ResponseExecutor;
  a1[5] = v12;
  return static OutputPublisherFactory.makeOutputPublisherAsync()();
}

uint64_t sub_266BA5EE4()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unint64_t type metadata accessor for TUCallCenter()
{
  result = lazy cache variable for type metadata for TUCallCenter;
  if (!lazy cache variable for type metadata for TUCallCenter)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for TUCallCenter);
  }

  return result;
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

uint64_t ExpanseFlowProvider.findFlowFor(parse:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for Responses.Common.NotInCall(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v11 = __swift_project_value_buffer(v10, static Logger.default);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v122 = v11;
    v14 = v6;
    v15 = v9;
    v16 = v3;
    v17 = a2;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v154[0] = v19;
    *v18 = 136315138;
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static ExpanseFlowProvider.typeName, *algn_2800C0278, v154);
    _os_log_impl(&dword_266B9E000, v12, v13, "%s: Making flow from parse", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x26D5ED340](v19, -1, -1);
    MEMORY[0x26D5ED340](v18, -1, -1);

    a2 = v17;
    v3 = v16;
    v9 = v15;
    v6 = v14;
  }

  else
  {
  }

  static SharingIntentHelper.makeSharingIntentFrom(parse:)(a1, &v152);
  if (v153)
  {
    outlined init with take of ConversationParticipant(&v152, v154);
    v20 = v155;
    v21 = v156;
    __swift_project_boxed_opaque_existential_1(v154, v155);
    v22 = (*(v21 + 16))(v20, v21);
    if (v22 > 1u)
    {
      if (v22 != 2)
      {
        v30 = Logger.logObject.getter();
        v34 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v30, v34))
        {
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          *&v152 = v36;
          *v35 = 136315138;
          if (one-time initialization token for typeName != -1)
          {
            swift_once();
          }

          *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static ExpanseFlowProvider.typeName, *algn_2800C0278, &v152);
          _os_log_impl(&dword_266B9E000, v30, v34, "%s: The provided intent doesn't appear to actually be a sharing intent, as it has no sharingVerb - is this a SiriKit bug?", v35, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v36);
          MEMORY[0x26D5ED340](v36, -1, -1);
          MEMORY[0x26D5ED340](v35, -1, -1);
        }

        goto LABEL_40;
      }

      v122 = a2;

LABEL_19:
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        *&v152 = v33;
        *v32 = 136315138;
        if (one-time initialization token for typeName != -1)
        {
          swift_once();
        }

        *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static ExpanseFlowProvider.typeName, *algn_2800C0278, &v152);
        _os_log_impl(&dword_266B9E000, v30, v31, "%s: findFlowFor(parse:) called with parse with send verb, but only share and unshare verbs are supported", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v33);
        MEMORY[0x26D5ED340](v33, -1, -1);
        MEMORY[0x26D5ED340](v32, -1, -1);

        goto LABEL_41;
      }

LABEL_40:

LABEL_41:
      static FlowSearchResult.noFlow.getter();
      return __swift_destroy_boxed_opaque_existential_1Tm(v154);
    }

    v122 = a2;
    v23 = v22;
    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v29)
    {
      goto LABEL_19;
    }

    __swift_project_boxed_opaque_existential_1(v3, v3[3]);
    ScreenSharingCallManager.getSalientScreenShareSupportingCall()(&v150);
    if (!v151)
    {
      outlined destroy of SharingResponse?(&v150, &_s19SiriExpanseInternal4Call_pSgMd, &_s19SiriExpanseInternal4Call_pSgMR);
      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        *&v152 = v70;
        *v69 = 136315138;
        if (one-time initialization token for typeName != -1)
        {
          swift_once();
        }

        *(v69 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static ExpanseFlowProvider.typeName, *algn_2800C0278, &v152);
        _os_log_impl(&dword_266B9E000, v67, v68, "%s: No salient call that supports screen sharing found -> returning flow to output not-in-call error dialog", v69, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v70);
        MEMORY[0x26D5ED340](v70, -1, -1);
        MEMORY[0x26D5ED340](v69, -1, -1);
      }

      *v9 = -107;
      v71 = &v9[*(v6 + 20)];
      static DialogPhase.completion.getter();
      outlined init with copy of ResponseExecuting((v3 + 5), &v152);
      outlined init with copy of ResponseExecuting((v3 + 10), &v150);
      v72 = v153;
      v73 = __swift_mutable_project_boxed_opaque_existential_1(&v152, v153);
      v74 = *(*(v72 - 8) + 64);
      MEMORY[0x28223BE20](v73);
      v76 = (&v120 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v77 + 16))(v76);
      v78 = *v76;
      v148 = v6;
      v149 = &protocol witness table for Responses.Common.NotInCall;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v147);
      outlined init with copy of Responses.Common.NotInCall(v9, boxed_opaque_existential_1, type metadata accessor for Responses.Common.NotInCall);
      v80 = type metadata accessor for ResponseExecutor();
      v145 = v80;
      v146 = &protocol witness table for ResponseExecutor;
      v144[0] = v78;
      type metadata accessor for OutputDialogFlow();
      v81 = swift_allocObject();
      v82 = __swift_mutable_project_boxed_opaque_existential_1(v144, v80);
      v83 = *(*(v80 - 8) + 64);
      MEMORY[0x28223BE20](v82);
      v85 = (&v120 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v86 + 16))(v85);
      v87 = *v85;
      *(v81 + 88) = v80;
      *(v81 + 96) = &protocol witness table for ResponseExecutor;
      *(v81 + 64) = v87;
      *(v81 + 16) = 0;
      outlined init with take of ConversationParticipant(&v147, v81 + 24);
      outlined init with take of ConversationParticipant(&v150, v81 + 104);
      __swift_destroy_boxed_opaque_existential_1Tm(v144);
      outlined destroy of Responses.Common.NotInCall(v9, type metadata accessor for Responses.Common.NotInCall);
      __swift_destroy_boxed_opaque_existential_1Tm(&v152);
      *&v152 = v81;
      lazy protocol witness table accessor for type OutputDialogFlow and conformance OutputDialogFlow(&lazy protocol witness table cache variable for type OutputDialogFlow and conformance OutputDialogFlow, type metadata accessor for OutputDialogFlow);
      Flow.eraseToAnyFlow()();

      static FlowSearchResult.flow(_:)();

      return __swift_destroy_boxed_opaque_existential_1Tm(v154);
    }

    outlined init with take of ConversationParticipant(&v150, &v152);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *&v150 = v40;
      *v39 = 136315138;
      if (one-time initialization token for typeName != -1)
      {
        swift_once();
      }

      *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static ExpanseFlowProvider.typeName, *algn_2800C0278, &v150);
      _os_log_impl(&dword_266B9E000, v37, v38, "%s: Found salient call that supports screen sharing", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x26D5ED340](v40, -1, -1);
      MEMORY[0x26D5ED340](v39, -1, -1);
    }

    if (v23)
    {
      v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v41 & 1) == 0)
      {
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          *&v150 = v45;
          *v44 = 136315138;
          if (one-time initialization token for typeName != -1)
          {
            swift_once();
          }

          *(v44 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static ExpanseFlowProvider.typeName, *algn_2800C0278, &v150);
          _os_log_impl(&dword_266B9E000, v42, v43, "%s: Verb is unshare -> returning StopSharingFlow", v44, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v45);
          MEMORY[0x26D5ED340](v45, -1, -1);
          MEMORY[0x26D5ED340](v44, -1, -1);
        }

        outlined init with copy of ResponseExecuting(v154, &v150);
        outlined init with copy of ResponseExecuting(&v152, &v147);
        outlined init with copy of ResponseExecuting((v3 + 5), v144);
        outlined init with copy of ResponseExecuting((v3 + 10), v143);
        v46 = v145;
        v47 = __swift_mutable_project_boxed_opaque_existential_1(v144, v145);
        v121 = &v120;
        v48 = *(*(v46 - 8) + 64);
        MEMORY[0x28223BE20](v47);
        v50 = (&v120 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v51 + 16))(v50);
        v52 = *v50;
        v53 = type metadata accessor for ResponseExecutor();
        v141 = v53;
        v142 = &protocol witness table for ResponseExecutor;
        v140[0] = v52;
        v138 = &type metadata for ShareTargetResolver;
        v139 = &protocol witness table for ShareTargetResolver;
        v135 = &type metadata for Sharer;
        v136 = &protocol witness table for Sharer;
        v54 = type metadata accessor for StopSharingFlow(0);
        v55 = *(v54 + 48);
        v56 = *(v54 + 52);
        v57 = swift_allocObject();
        v58 = __swift_mutable_project_boxed_opaque_existential_1(v140, v53);
        v59 = *(*(v53 - 8) + 64);
        MEMORY[0x28223BE20](v58);
        v61 = (&v120 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v62 + 16))(v61);
        __swift_mutable_project_boxed_opaque_existential_1(v137, v138);
        __swift_mutable_project_boxed_opaque_existential_1(v134, v135);
        v63 = *v61;
        v132 = &type metadata for ShareTargetResolver;
        v133 = &protocol witness table for ShareTargetResolver;
        v129 = &type metadata for Sharer;
        v130 = &protocol witness table for Sharer;
        outlined init with copy of ResponseExecuting(v131, v57 + direct field offset for StopSharingFlow.shareTargetResolver);
        outlined init with copy of ResponseExecuting(v128, v57 + direct field offset for StopSharingFlow.sharer);
        outlined init with copy of ResponseExecuting(&v150, v127);
        outlined init with copy of ResponseExecuting(&v147, v126);
        outlined init with copy of ResponseExecuting(v143, v125);
        v64 = specialized SharingFlow.init(intent:call:responseExecutor:outputPublisher:)(v127, v126, v63, v125, v57, type metadata accessor for StopSharingFlow.StopSharingFlowState, 5, type metadata accessor for StopSharingFlow.StopSharingFlowState, StopSharingFlow.StopSharingFlowState.description.getter);
        __swift_destroy_boxed_opaque_existential_1Tm(v143);
        __swift_destroy_boxed_opaque_existential_1Tm(&v147);
        __swift_destroy_boxed_opaque_existential_1Tm(&v150);
        __swift_destroy_boxed_opaque_existential_1Tm(v128);
        __swift_destroy_boxed_opaque_existential_1Tm(v131);
        __swift_destroy_boxed_opaque_existential_1Tm(v134);
        __swift_destroy_boxed_opaque_existential_1Tm(v137);
        __swift_destroy_boxed_opaque_existential_1Tm(v140);
        __swift_destroy_boxed_opaque_existential_1Tm(v144);
        *&v150 = v64;
        v65 = &lazy protocol witness table cache variable for type StopSharingFlow and conformance SharingFlow<A>;
        v66 = type metadata accessor for StopSharingFlow;
LABEL_54:
        lazy protocol witness table accessor for type OutputDialogFlow and conformance OutputDialogFlow(v65, v66);
        Flow.eraseToAnyFlow()();

        static FlowSearchResult.flow(_:)();

        __swift_destroy_boxed_opaque_existential_1Tm(&v152);
        return __swift_destroy_boxed_opaque_existential_1Tm(v154);
      }
    }

    else
    {
    }

    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      *&v150 = v91;
      *v90 = 136315138;
      if (one-time initialization token for typeName != -1)
      {
        swift_once();
      }

      *(v90 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static ExpanseFlowProvider.typeName, *algn_2800C0278, &v150);
      _os_log_impl(&dword_266B9E000, v88, v89, "%s: Verb is share -> returning StartSharingFlow", v90, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v91);
      MEMORY[0x26D5ED340](v91, -1, -1);
      MEMORY[0x26D5ED340](v90, -1, -1);
    }

    outlined init with copy of ResponseExecuting(v154, &v150);
    outlined init with copy of ResponseExecuting(&v152, &v147);
    outlined init with copy of ResponseExecuting((v3 + 5), v144);
    outlined init with copy of ResponseExecuting((v3 + 10), v143);
    v92 = type metadata accessor for SharePlayHelper();
    v93 = swift_allocObject();
    v94 = v145;
    v95 = __swift_mutable_project_boxed_opaque_existential_1(v144, v145);
    v121 = &v120;
    v96 = *(*(v94 - 8) + 64);
    MEMORY[0x28223BE20](v95);
    v98 = (&v120 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v99 + 16))(v98);
    v100 = *v98;
    v101 = type metadata accessor for ResponseExecutor();
    v141 = v101;
    v142 = &protocol witness table for ResponseExecutor;
    v140[0] = v100;
    v138 = &type metadata for ShareTargetResolver;
    v139 = &protocol witness table for ShareTargetResolver;
    v135 = &type metadata for Sharer;
    v136 = &protocol witness table for Sharer;
    v132 = v92;
    v133 = &protocol witness table for SharePlayHelper;
    v131[0] = v93;
    started = type metadata accessor for StartSharingFlow(0);
    v103 = *(started + 48);
    v104 = *(started + 52);
    v105 = swift_allocObject();
    v106 = __swift_mutable_project_boxed_opaque_existential_1(v140, v101);
    v120 = &v120;
    v107 = *(*(v101 - 8) + 64);
    MEMORY[0x28223BE20](v106);
    v109 = (&v120 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v110 + 16))(v109);
    __swift_mutable_project_boxed_opaque_existential_1(v137, v138);
    __swift_mutable_project_boxed_opaque_existential_1(v134, v135);
    v111 = v132;
    v112 = __swift_mutable_project_boxed_opaque_existential_1(v131, v132);
    v113 = *(v111[-1].Description + 8);
    MEMORY[0x28223BE20](v112);
    v115 = (&v120 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v116 + 16))(v115);
    v117 = *v109;
    v118 = *v115;
    v129 = &type metadata for ShareTargetResolver;
    v130 = &protocol witness table for ShareTargetResolver;
    v127[3] = &type metadata for Sharer;
    v127[4] = &protocol witness table for Sharer;
    v126[3] = v92;
    v126[4] = &protocol witness table for SharePlayHelper;
    v126[0] = v118;
    outlined init with copy of ResponseExecuting(v128, v105 + direct field offset for StartSharingFlow.shareTargetResolver);
    outlined init with copy of ResponseExecuting(v127, v105 + direct field offset for StartSharingFlow.sharer);
    outlined init with copy of ResponseExecuting(v126, v105 + direct field offset for StartSharingFlow.sharePlayHelper);
    outlined init with copy of ResponseExecuting(&v150, v125);
    outlined init with copy of ResponseExecuting(&v147, v124);
    outlined init with copy of ResponseExecuting(v143, v123);
    v119 = specialized SharingFlow.init(intent:call:responseExecutor:outputPublisher:)(v125, v124, v117, v123, v105, type metadata accessor for StartSharingFlow.StartSharingFlowState, 9, type metadata accessor for StartSharingFlow.StartSharingFlowState, StartSharingFlow.StartSharingFlowState.description.getter);
    __swift_destroy_boxed_opaque_existential_1Tm(v143);
    __swift_destroy_boxed_opaque_existential_1Tm(&v147);
    __swift_destroy_boxed_opaque_existential_1Tm(&v150);
    __swift_destroy_boxed_opaque_existential_1Tm(v126);
    __swift_destroy_boxed_opaque_existential_1Tm(v127);
    __swift_destroy_boxed_opaque_existential_1Tm(v128);
    __swift_destroy_boxed_opaque_existential_1Tm(v131);
    __swift_destroy_boxed_opaque_existential_1Tm(v134);
    __swift_destroy_boxed_opaque_existential_1Tm(v137);
    __swift_destroy_boxed_opaque_existential_1Tm(v140);
    __swift_destroy_boxed_opaque_existential_1Tm(v144);
    *&v150 = v119;
    v65 = &lazy protocol witness table cache variable for type StartSharingFlow and conformance SharingFlow<A>;
    v66 = type metadata accessor for StartSharingFlow;
    goto LABEL_54;
  }

  outlined destroy of SharingResponse?(&v152, &_s19SiriExpanseInternal13SharingIntent_pSgMd, &_s19SiriExpanseInternal13SharingIntent_pSgMR);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v154[0] = v27;
    *v26 = 136315138;
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static ExpanseFlowProvider.typeName, *algn_2800C0278, v154);
    _os_log_impl(&dword_266B9E000, v24, v25, "%s: Failed to make a SharingIntent from the parse", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x26D5ED340](v27, -1, -1);
    MEMORY[0x26D5ED340](v26, -1, -1);
  }

  return static FlowSearchResult.noFlow.getter();
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
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
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
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
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
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
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
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
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
    if (v10 != a4 || v12 >= &v13[v8])
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, _ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void *specialized SharingFlow.init(intent:call:responseExecutor:outputPublisher:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, void *a5, uint64_t (*a6)(void), uint64_t a7, uint64_t (*a8)(void), uint64_t (*a9)(uint64_t))
{
  v15 = a6(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v49[-v17];
  v56[3] = type metadata accessor for ResponseExecutor();
  v56[4] = &protocol witness table for ResponseExecutor;
  v56[0] = a3;
  a5[2] = 0x46676E6972616853;
  a5[3] = 0xEB00000000776F6CLL;
  v19 = *(*a5 + 104);
  swift_storeEnumTagMultiPayload();
  outlined init with copy of ResponseExecuting(a1, a5 + *(*a5 + 112));
  outlined init with copy of ResponseExecuting(a2, a5 + *(*a5 + 120));
  outlined init with copy of ResponseExecuting(v56, a5 + *(*a5 + 128));
  outlined init with copy of ResponseExecuting(a4, a5 + *(*a5 + 136));
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.default);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v54 = a2;
    v23 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v55 = v52;
    *v23 = 136315650;
    v50 = v22;
    v53 = a1;
    v24 = a5[2];
    v25 = a5[3];

    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v55);

    *(v23 + 4) = v26;
    v51 = a4;
    *(v23 + 12) = 2080;
    v27 = *(*a5 + 104);
    swift_beginAccess();
    v28 = outlined init with copy of Responses.Common.NotInCall(a5 + v27, v18, a8);
    v29 = a9(v28);
    v31 = v30;

    outlined destroy of Responses.Common.NotInCall(v18, a8);
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v55);

    *(v23 + 14) = v32;
    *(v23 + 22) = 2080;
    v33 = (a5 + *(*a5 + 112));
    swift_beginAccess();
    v34 = v33[3];
    v35 = v33[4];
    v36 = __swift_project_boxed_opaque_existential_1(v33, v34);
    v37 = *(v34 - 8);
    v38 = *(v37 + 64);
    MEMORY[0x28223BE20](v36);
    v40 = &v49[-v39];
    (*(v37 + 16))(&v49[-v39]);
    v41 = *(v35 + 8);
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = v43;
    (*(v37 + 8))(v40, v34);
    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, &v55);

    *(v23 + 24) = v45;
    _os_log_impl(&dword_266B9E000, v21, v50, "%s: Initialized SharingFlow with state %s, intent %s", v23, 0x20u);
    v46 = v52;
    swift_arrayDestroy();
    MEMORY[0x26D5ED340](v46, -1, -1);
    MEMORY[0x26D5ED340](v23, -1, -1);

    __swift_destroy_boxed_opaque_existential_1Tm(v51);
    __swift_destroy_boxed_opaque_existential_1Tm(v54);
    v47 = v53;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(a4);
    __swift_destroy_boxed_opaque_existential_1Tm(a2);
    v47 = a1;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v47);
  __swift_destroy_boxed_opaque_existential_1Tm(v56);
  return a5;
}

uint64_t outlined init with copy of ResponseExecuting(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t lazy protocol witness table accessor for type OutputDialogFlow and conformance OutputDialogFlow(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ExpanseFlowProvider(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ExpanseFlowProvider(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined init with copy of Responses.Common.NotInCall(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Responses.Common.NotInCall(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t getEnumTagSinglePayload for SharingDirectInvocation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t SharingDirectInvocation.description.getter(char a1)
{
  _StringGuts.grow(_:)(26);

  if (a1)
  {
    v2 = 0x7463656A6572;
  }

  else
  {
    v2 = 0x6D7269666E6F63;
  }

  if (a1)
  {
    v3 = 0xE600000000000000;
  }

  else
  {
    v3 = 0xE700000000000000;
  }

  MEMORY[0x26D5EC8A0](v2, v3);

  return 0xD000000000000018;
}

id SharingDirectInvocation.toSAIntentGroupRunSiriKitExecutor(deviceState:)(void *a1, char a2)
{
  v4 = objc_allocWithZone(MEMORY[0x277D5C220]);
  v5 = MEMORY[0x26D5EC850](0xD000000000000027, 0x8000000266BEE4D0);
  v6 = [v4 initWithIdentifier_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266BE97B0;
  v8 = MEMORY[0x277D837D0];
  AnyHashable.init<A>(_:)();
  v9 = 0x6D7269666E6F63;
  if (a2)
  {
    v9 = 0x7463656A6572;
  }

  v10 = 0xE700000000000000;
  *(inited + 96) = v8;
  if (a2)
  {
    v10 = 0xE600000000000000;
  }

  *(inited + 72) = v9;
  *(inited + 80) = v10;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (AnyHashable, Any)(inited + 32);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v6 setUserData_];

  v12 = objc_opt_self();
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = DeviceState.asInvocationContext.getter();
  v15 = [v12 runSiriKitExecutorCommandWithContext:v14 payload:v6];

  return v15;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SharingDirectInvocation(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7463656A6572;
  }

  else
  {
    v4 = 0x6D7269666E6F63;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x7463656A6572;
  }

  else
  {
    v6 = 0x6D7269666E6F63;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE700000000000000;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SharingDirectInvocation()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SharingDirectInvocation()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SharingDirectInvocation()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SharingDirectInvocation@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SharingDirectInvocation.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance SharingDirectInvocation(uint64_t *a1@<X8>)
{
  v2 = 0x6D7269666E6F63;
  if (*v1)
  {
    v2 = 0x7463656A6572;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t lazy protocol witness table accessor for type SharingDirectInvocation and conformance SharingDirectInvocation()
{
  result = lazy protocol witness table cache variable for type SharingDirectInvocation and conformance SharingDirectInvocation;
  if (!lazy protocol witness table cache variable for type SharingDirectInvocation and conformance SharingDirectInvocation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharingDirectInvocation and conformance SharingDirectInvocation);
  }

  return result;
}

uint64_t specialized SharingDirectInvocation.init(from:)(char *a1)
{
  v2 = type metadata accessor for Parse.DirectInvocation();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = (MEMORY[0x28223BE20])();
  v7 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v52 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = v52 - v11;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = __swift_project_value_buffer(v13, static Logger.default);
  v54 = v3[2];
  v55 = a1;
  v54(v12, a1, v2);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  v17 = os_log_type_enabled(v15, v16);
  v56 = v3;
  if (v17)
  {
    v52[1] = v14;
    v53 = v7;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v58[0] = v19;
    *v18 = 136315394;
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static SharingDirectInvocation.typeName, unk_2800C02C0, v58);
    *(v18 + 12) = 2080;
    v54(v10, v12, v2);
    v20 = String.init<A>(describing:)();
    v22 = v21;
    v23 = v56[1];
    v23(v12, v2);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v58);

    *(v18 + 14) = v24;
    _os_log_impl(&dword_266B9E000, v15, v16, "%s: Initializing SharingDirectInvocation from %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D5ED340](v19, -1, -1);
    MEMORY[0x26D5ED340](v18, -1, -1);

    v7 = v53;
  }

  else
  {

    v23 = v3[1];
    v23(v12, v2);
  }

  v25 = v55;
  if (Parse.DirectInvocation.identifier.getter() == 0xD000000000000027 && 0x8000000266BEE4D0 == v26)
  {

LABEL_12:
    v28 = Parse.DirectInvocation.userData.getter();
    if (v28)
    {
      v29 = v28;
      if (*(v28 + 16) && (v30 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000017, 0x8000000266BE97C0), (v31 & 1) != 0))
      {
        outlined init with copy of Any(*(v29 + 56) + 32 * v30, v58);

        if (swift_dynamicCast())
        {
          v32 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SharingDirectInvocation.init(rawValue:), v57);

          v23(v25, v2);
          if (v32 == 1)
          {
            v33 = 1;
          }

          else
          {
            v33 = 2;
          }

          if (v32)
          {
            return v33;
          }

          else
          {
            return 0;
          }
        }
      }

      else
      {
      }

      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v58[0] = v38;
        *v37 = 136315394;
        if (one-time initialization token for typeName != -1)
        {
          swift_once();
        }

        *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static SharingDirectInvocation.typeName, unk_2800C02C0, v58);
        *(v37 + 12) = 2080;
        *(v37 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x8000000266BE97C0, v58);
        _os_log_impl(&dword_266B9E000, v35, v36, "%s: Cannot init SharingDirectInvocation from direct invocation without userData containing key '%s' with a String value", v37, 0x16u);
        v34 = 2;
        swift_arrayDestroy();
        MEMORY[0x26D5ED340](v38, -1, -1);
        MEMORY[0x26D5ED340](v37, -1, -1);

        v23(v25, v2);
        return v34;
      }
    }

    else
    {
      v35 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v35, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v58[0] = v41;
        *v40 = 136315138;
        if (one-time initialization token for typeName != -1)
        {
          swift_once();
        }

        *(v40 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static SharingDirectInvocation.typeName, unk_2800C02C0, v58);
        _os_log_impl(&dword_266B9E000, v35, v39, "%s: Cannot init SharingDirectInvocation from direct invocation with nil userData", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v41);
        MEMORY[0x26D5ED340](v41, -1, -1);
        MEMORY[0x26D5ED340](v40, -1, -1);
      }
    }

    v23(v25, v2);
    return 2;
  }

  v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v27)
  {
    goto LABEL_12;
  }

  v54(v7, v25, v2);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v42, v43))
  {

    v23(v25, v2);
    v23(v7, v2);
    return 2;
  }

  v44 = v23;
  v45 = swift_slowAlloc();
  v46 = swift_slowAlloc();
  v58[0] = v46;
  *v45 = 136315394;
  if (one-time initialization token for typeName != -1)
  {
    swift_once();
  }

  *(v45 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static SharingDirectInvocation.typeName, unk_2800C02C0, v58);
  *(v45 + 12) = 2080;
  v47 = Parse.DirectInvocation.identifier.getter();
  v49 = v48;
  v44(v7, v2);
  v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, v58);

  *(v45 + 14) = v50;
  _os_log_impl(&dword_266B9E000, v42, v43, "%s: Cannot init SharingDirectInvocation from direct invocation with identifier: %s", v45, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x26D5ED340](v46, -1, -1);
  MEMORY[0x26D5ED340](v45, -1, -1);

  v44(v25, v2);
  return 2;
}

uint64_t outlined destroy of (AnyHashable, Any)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t protocol witness for Contact.handles.getter in conformance <> Match<A, B>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Match.value.getter();
  v6 = Contact.handles.getter();
  (*(v2 + 8))(v5, v1);
  return v6;
}

uint64_t specialized SharingIntent.reform()()
{
  v1 = type metadata accessor for UsoEntity_common_AttachmentType.DefinedValues();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v63 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMd, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMR);
  v5 = *(*(v62 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v62);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v57 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v57 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v57 - v15;
  v17 = type metadata accessor for SharingDirectInvocationIntent();
  v18 = v17[5];
  outlined init with copy of UsoEntity_common_AttachmentType.DefinedValues?(&v18[v0], v16);
  if ((*(v2 + 48))(v16, 1, v1))
  {
    outlined destroy of SharingResponse?(v16, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMd, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMR);
    return 0;
  }

  v58 = v8;
  v59 = v11;
  v61 = v0;
  v20 = v63;
  (*(v2 + 16))(v63, v16, v1);
  outlined destroy of SharingResponse?(v16, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMd, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMR);
  PartyAppBundle = UsoEntity_common_AttachmentType.DefinedValues.matchingFirstPartyAppBundleID.getter();
  v23 = v22;
  (*(v2 + 8))(v20, v1);
  if (!v23)
  {
    return 0;
  }

  v24 = v1;
  v63 = v18;
  v60 = v14;
  v25 = v17;
  v26 = v61;
  v27 = (v61 + v17[9]);
  v28 = v27[1];

  *v27 = PartyAppBundle;
  v27[1] = v23;
  v29 = String.localizedAppDisplayName.getter();
  v31 = v30;

  if (v31)
  {
    v32 = (v26 + v17[7]);
    v33 = v32[1];

    *v32 = v29;
    v32[1] = v31;
  }

  else
  {
    v34 = (v26 + v17[8]);
    v35 = v34[1];
    if (!v35)
    {
      v43 = &v63[v26];
      v44 = v59;
      outlined init with copy of UsoEntity_common_AttachmentType.DefinedValues?(v43, v59);
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v57 = v24;
      v45 = type metadata accessor for Logger();
      __swift_project_value_buffer(v45, static Logger.default);
      v46 = v58;
      outlined init with copy of UsoEntity_common_AttachmentType.DefinedValues?(v44, v58);
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();
      v49 = os_log_type_enabled(v47, v48);
      v40 = v60;
      if (v49)
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v64 = v51;
        *v50 = 136315138;
        outlined init with copy of UsoEntity_common_AttachmentType.DefinedValues?(v46, v40);
        v52 = String.init<A>(describing:)();
        v54 = v53;
        outlined destroy of SharingResponse?(v46, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMd, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMR);
        v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, &v64);

        *(v50 + 4) = v55;
        _os_log_impl(&dword_266B9E000, v47, v48, "SharingIntent: unable to determine appName for entity type=%s", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v51);
        MEMORY[0x26D5ED340](v51, -1, -1);
        MEMORY[0x26D5ED340](v50, -1, -1);

        v56 = v59;
      }

      else
      {

        outlined destroy of SharingResponse?(v46, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMd, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMR);
        v56 = v44;
      }

      outlined destroy of SharingResponse?(v56, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMd, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMR);
      v26 = v61;
      v24 = v57;
      goto LABEL_10;
    }

    v36 = *v34;
    v37 = v24;
    v38 = (v26 + v17[7]);
    v39 = v38[1];

    *v38 = v36;
    v38[1] = v35;
    v24 = v37;
  }

  v40 = v60;
LABEL_10:
  (*(v2 + 56))(v40, 1, 1, v24);
  outlined assign with take of UsoEntity_common_AttachmentType.DefinedValues?(v40, &v63[v26]);
  v41 = (v26 + v25[8]);
  v42 = v41[1];

  result = 1;
  *v41 = 0;
  v41[1] = 0;
  *(v26 + v25[6]) = 0;
  *(v26 + v25[21]) = 1;
  return result;
}

Swift::Bool __swiftcall SharingIntent.reform()()
{
  v3 = v1;
  v62 = v0;
  v4 = type metadata accessor for UsoEntity_common_AttachmentType.DefinedValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  MEMORY[0x28223BE20](v4);
  v61 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMd, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMR);
  v8 = *(*(v59 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v59);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v52 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v52 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v52 - v18;
  v20 = *(v3 + 24);
  v60 = v3;
  (v20)(v62, v3);
  if ((*(v5 + 6))(v19, 1, v4))
  {
    outlined destroy of SharingResponse?(v19, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMd, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMR);
    return 0;
  }

  v53 = (v3 + 24);
  v54 = v20;
  v56 = v17;
  v57 = v2;
  v55 = v14;
  v23 = v60;
  v22 = v61;
  v58 = v11;
  (*(v5 + 2))(v61, v19, v4);
  outlined destroy of SharingResponse?(v19, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMd, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMR);
  PartyAppBundle = UsoEntity_common_AttachmentType.DefinedValues.matchingFirstPartyAppBundleID.getter();
  v26 = v25;
  (*(v5 + 1))(v22, v4);
  if (!v26)
  {
    return 0;
  }

  v27 = v4;
  v61 = v5;
  v28 = v23;
  v29 = *(v23 + 128);

  v30 = v62;
  v29(PartyAppBundle, v26, v62, v28);
  v31 = String.localizedAppDisplayName.getter();
  v33 = v32;

  if (v33)
  {
    (*(v28 + 80))(v31, v33, v30, v28);
    v34 = v30;
  }

  else
  {
    v35 = (*(v28 + 96))(v30, v28);
    v34 = v30;
    if (!v36)
    {
      v39 = v56;
      v54(v30, v28);
      v37 = v61;
      v38 = v58;
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      __swift_project_value_buffer(v40, static Logger.default);
      v41 = v55;
      outlined init with copy of UsoEntity_common_AttachmentType.DefinedValues?(v39, v55);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v53 = v44;
        v54 = swift_slowAlloc();
        v63 = v54;
        *v44 = 136315138;
        outlined init with copy of UsoEntity_common_AttachmentType.DefinedValues?(v41, v38);
        v45 = String.init<A>(describing:)();
        v47 = v46;
        outlined destroy of SharingResponse?(v41, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMd, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMR);
        v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, &v63);
        v34 = v62;

        v49 = v53;
        *(v53 + 1) = v48;
        v50 = v49;
        _os_log_impl(&dword_266B9E000, v42, v43, "SharingIntent: unable to determine appName for entity type=%s", v49, 0xCu);
        v51 = v54;
        __swift_destroy_boxed_opaque_existential_1Tm(v54);
        MEMORY[0x26D5ED340](v51, -1, -1);
        MEMORY[0x26D5ED340](v50, -1, -1);
      }

      else
      {

        outlined destroy of SharingResponse?(v41, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMd, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMR);
      }

      outlined destroy of SharingResponse?(v56, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMd, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMR);
      goto LABEL_10;
    }

    (*(v28 + 80))(v35, v36, v30, v28);
  }

  v37 = v61;
  v38 = v58;
LABEL_10:
  (*(v37 + 7))(v38, 1, 1, v27);
  (*(v28 + 32))(v38, v34, v28);
  (*(v28 + 104))(0, 0, v34, v28);
  (*(v28 + 56))(0, v34, v28);
  (*(v28 + 248))(1, v34, v28);
  return 1;
}

double static SharingIntentHelper.makeSharingIntentFrom(parse:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v153 = a2;
  v3 = type metadata accessor for Parse.DirectInvocation();
  v150 = *(v3 - 8);
  v4 = *(v150 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v152 = &v139 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v151 = &v139 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v139 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v145 = &v139 - v13;
  v14 = type metadata accessor for Siri_Nlu_External_UserParse();
  v147 = *(v14 - 8);
  v148 = v14;
  v15 = *(v147 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v146 = (&v139 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v149 = &v139 - v18;
  v19 = type metadata accessor for USOParse();
  v141 = *(v19 - 8);
  v142 = v19;
  v20 = *(v141 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v139 = &v139 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v144 = &v139 - v24;
  MEMORY[0x28223BE20](v23);
  v140 = &v139 - v25;
  v26 = type metadata accessor for Parse();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v139 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v29);
  v143 = &v139 - v33;
  MEMORY[0x28223BE20](v32);
  v35 = (&v139 - v34);
  v36 = *(v27 + 16);
  v36(&v139 - v34, a1, v26);
  v37 = (*(v27 + 88))(v35, v26);
  if (v37 == *MEMORY[0x277D5C150])
  {
    (*(v27 + 96))(v35, v26);
    v38 = v150;
    (*(v150 + 32))(v10, v35, v3);
    v39 = v3;
    v40 = v10;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    v42 = __swift_project_value_buffer(v41, static Logger.default);
    v43 = v151;
    v44 = *(v38 + 16);
    v44(v151, v10, v39);
    v149 = v42;
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();
    v47 = os_log_type_enabled(v45, v46);
    v48 = v152;
    if (v47)
    {
      LODWORD(v147) = v46;
      v148 = v10;
      v49 = swift_slowAlloc();
      v146 = swift_slowAlloc();
      v154 = v146;
      *v49 = 136315394;
      if (one-time initialization token for typeName != -1)
      {
        swift_once();
      }

      *(v49 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static SharingIntentHelper.typeName, *algn_2800C02F8, &v154);
      *(v49 + 12) = 2080;
      v44(v48, v43, v39);
      v50 = String.init<A>(describing:)();
      v52 = v51;
      v53 = *(v38 + 8);
      v53(v43, v39);
      v54 = v50;
      v48 = v152;
      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v52, &v154);

      *(v49 + 14) = v55;
      _os_log_impl(&dword_266B9E000, v45, v147, "%s: Received .directInvocation parse with directInvocation: %s", v49, 0x16u);
      v56 = v146;
      swift_arrayDestroy();
      MEMORY[0x26D5ED340](v56, -1, -1);
      MEMORY[0x26D5ED340](v49, -1, -1);

      v40 = v148;
    }

    else
    {

      v75 = *(v38 + 8);
      v75(v43, v39);
      v53 = v75;
    }

    v152 = v39;
    v44(v48, v40, v39);
    v76 = specialized SharingDirectInvocation.init(from:)(v48);
    if (v76 == 2)
    {
      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v154 = v80;
        *v79 = 136315138;
        if (one-time initialization token for typeName != -1)
        {
          swift_once();
        }

        *(v79 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static SharingIntentHelper.typeName, *algn_2800C02F8, &v154);
        _os_log_impl(&dword_266B9E000, v77, v78, "%s: Failed to construct SharingDirectInvocation from the provided directInvocation", v79, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v80);
        MEMORY[0x26D5ED340](v80, -1, -1);
        MEMORY[0x26D5ED340](v79, -1, -1);
      }

      v53(v40, v152);
LABEL_63:
      v138 = v153;
      *(v153 + 32) = 0;
      result = 0.0;
      *v138 = 0u;
      v138[1] = 0u;
      return result;
    }

    v97 = v76;
    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = v53;
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v156 = v102;
      *v101 = 136315394;
      if (one-time initialization token for typeName != -1)
      {
        swift_once();
      }

      *(v101 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static SharingIntentHelper.typeName, *algn_2800C02F8, &v156);
      *(v101 + 12) = 2080;
      v154 = 0;
      v155 = 0xE000000000000000;
      _StringGuts.grow(_:)(26);

      v154 = 0xD000000000000018;
      v155 = 0x8000000266BEE3E0;
      if (v97)
      {
        v103 = 0x7463656A6572;
      }

      else
      {
        v103 = 0x6D7269666E6F63;
      }

      if (v97)
      {
        v104 = 0xE600000000000000;
      }

      else
      {
        v104 = 0xE700000000000000;
      }

      MEMORY[0x26D5EC8A0](v103, v104);

      v105 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v154, v155, &v156);

      *(v101 + 14) = v105;
      _os_log_impl(&dword_266B9E000, v98, v99, "%s: SharingDirectInvocation initialized to %s", v101, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D5ED340](v102, -1, -1);
      MEMORY[0x26D5ED340](v101, -1, -1);

      v53 = v100;
    }

    else
    {
    }

    v127 = type metadata accessor for SharingDirectInvocationIntent();
    v128 = v153;
    *(v153 + 24) = v127;
    v128[4] = lazy protocol witness table accessor for type SharingDirectInvocationIntent and conformance SharingDirectInvocationIntent(&lazy protocol witness table cache variable for type SharingDirectInvocationIntent and conformance SharingDirectInvocationIntent, type metadata accessor for SharingDirectInvocationIntent);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v128);
    SharingDirectInvocationIntent.init(from:)(v97 & 1, boxed_opaque_existential_1);
    v53(v40, v152);
  }

  else
  {
    if (v37 == *MEMORY[0x277D5C130])
    {
      (*(v27 + 96))(v35, v26);
      v57 = *v35;
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v58 = type metadata accessor for Logger();
      __swift_project_value_buffer(v58, static Logger.default);
      swift_unknownObjectRetain();
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.debug.getter();
      swift_unknownObjectRelease();
      v61 = os_log_type_enabled(v59, v60);
      v62 = v145;
      if (v61)
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v154 = v64;
        *v63 = 136315394;
        if (one-time initialization token for typeName != -1)
        {
          swift_once();
        }

        *(v63 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static SharingIntentHelper.typeName, *algn_2800C02F8, &v154);
        *(v63 + 12) = 2080;
        v156 = v57;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SIRINLUUserDialogAct_pMd, &_sSo20SIRINLUUserDialogAct_pMR);
        v65 = String.init<A>(describing:)();
        v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, &v154);

        *(v63 + 14) = v67;
        _os_log_impl(&dword_266B9E000, v59, v60, "%s: Received .NLv4IntentOnly parse with userDialogAct: %s", v63, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D5ED340](v64, -1, -1);
        MEMORY[0x26D5ED340](v63, -1, -1);
      }

      v68 = v148;
      v69 = v146;
      static ConversionUtils.toUserParse(from:)();
      v70 = v147;
      if ((*(v147 + 48))(v62, 1, v68) == 1)
      {
        outlined destroy of SharingResponse?(v62, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
        v71 = Logger.logObject.getter();
        v72 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          v154 = v74;
          *v73 = 136315138;
          if (one-time initialization token for typeName != -1)
          {
            swift_once();
          }

          *(v73 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static SharingIntentHelper.typeName, *algn_2800C02F8, &v154);
          _os_log_impl(&dword_266B9E000, v71, v72, "%s: Failed to convert UserDialogAct to Siri_Nlu_External_UserParse", v73, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v74);
          MEMORY[0x26D5ED340](v74, -1, -1);
          MEMORY[0x26D5ED340](v73, -1, -1);
        }
      }

      else
      {
        (*(v70 + 32))(v69, v62, v68);
        v106 = v149;
        (*(v70 + 16))(v149, v69, v68);
        v107 = type metadata accessor for SharingNLv4Intent();
        v108 = *(v107 + 48);
        v109 = *(v107 + 52);
        swift_allocObject();
        v110 = SharingNLv4Intent.init(from:)(v106);
        if (v110)
        {
          v111 = v110;
          v112 = v153;
          *(v153 + 24) = v107;
          v112[4] = lazy protocol witness table accessor for type SharingDirectInvocationIntent and conformance SharingDirectInvocationIntent(&lazy protocol witness table cache variable for type SharingNLv4Intent and conformance SharingNLv4Intent, type metadata accessor for SharingNLv4Intent);
          swift_unknownObjectRelease();
          *v112 = v111;
          (*(v70 + 8))(v69, v68);
          return result;
        }

        (*(v70 + 8))(v69, v68);
      }

      swift_unknownObjectRelease();
      goto LABEL_63;
    }

    if (v37 == *MEMORY[0x277D5C160])
    {
      (*(v27 + 96))(v35, v26);
      v82 = v140;
      v81 = v141;
      v83 = v142;
      (*(v141 + 32))(v140, v35, v142);
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v84 = type metadata accessor for Logger();
      __swift_project_value_buffer(v84, static Logger.default);
      v85 = *(v81 + 16);
      v86 = v144;
      v85(v144, v82, v83);
      v87 = Logger.logObject.getter();
      v88 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        v152 = swift_slowAlloc();
        v154 = v152;
        *v89 = 136315394;
        if (one-time initialization token for typeName != -1)
        {
          swift_once();
        }

        *(v89 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static SharingIntentHelper.typeName, *algn_2800C02F8, &v154);
        *(v89 + 12) = 2080;
        v90 = v144;
        v85(v139, v144, v83);
        v91 = String.init<A>(describing:)();
        v93 = v92;
        v94 = *(v81 + 8);
        v94(v90, v83);
        v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v93, &v154);

        *(v89 + 14) = v95;
        _os_log_impl(&dword_266B9E000, v87, v88, "%s: Received .uso parse with usoParse: %s", v89, 0x16u);
        v96 = v152;
        swift_arrayDestroy();
        MEMORY[0x26D5ED340](v96, -1, -1);
        MEMORY[0x26D5ED340](v89, -1, -1);
      }

      else
      {

        v94 = *(v81 + 8);
        v94(v86, v83);
      }

      v130 = v149;
      USOParse.userParse.getter();
      v131 = type metadata accessor for SharingNLv4Intent();
      v132 = *(v131 + 48);
      v133 = *(v131 + 52);
      swift_allocObject();
      v134 = SharingNLv4Intent.init(from:)(v130);
      if (v134)
      {
        v135 = v134;
        v136 = v153;
        *(v153 + 24) = v131;
        v136[4] = lazy protocol witness table accessor for type SharingDirectInvocationIntent and conformance SharingDirectInvocationIntent(&lazy protocol witness table cache variable for type SharingNLv4Intent and conformance SharingNLv4Intent, type metadata accessor for SharingNLv4Intent);
        *v136 = v135;
        v94(v82, v83);
        return result;
      }

      v94(v82, v83);
      goto LABEL_63;
    }

    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v114 = type metadata accessor for Logger();
    __swift_project_value_buffer(v114, static Logger.default);
    v115 = v143;
    v36(v143, a1, v26);
    v116 = Logger.logObject.getter();
    v117 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v116, v117))
    {
      LODWORD(v151) = v117;
      v152 = v116;
      v118 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v154 = v119;
      *v118 = 136315394;
      if (one-time initialization token for typeName != -1)
      {
        swift_once();
      }

      *(v118 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static SharingIntentHelper.typeName, *algn_2800C02F8, &v154);
      *(v118 + 12) = 2080;
      v120 = v143;
      v36(v31, v143, v26);
      v121 = String.init<A>(describing:)();
      v123 = v122;
      v124 = *(v27 + 8);
      v124(v120, v26);
      v125 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v121, v123, &v154);

      *(v118 + 14) = v125;
      v126 = v152;
      _os_log_impl(&dword_266B9E000, v152, v151, "%s: Received parse of unexpected type: %s", v118, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D5ED340](v119, -1, -1);
      MEMORY[0x26D5ED340](v118, -1, -1);
    }

    else
    {

      v124 = *(v27 + 8);
      v124(v115, v26);
    }

    v137 = v153;
    *(v153 + 32) = 0;
    *v137 = 0u;
    v137[1] = 0u;
    v124(v35, v26);
  }

  return result;
}

uint64_t SharingIntent.shareTarget.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v84 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMd, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v77 - v8;
  v10 = type metadata accessor for UsoEntity_common_AttachmentType.DefinedValues();
  v81 = *(v10 - 8);
  v11 = *(v81 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v77 - v16;
  v80 = *(a1 - 8);
  v18 = *(v80 + 64);
  MEMORY[0x28223BE20](v15);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Logger();
  v82 = *(v21 - 8);
  v83 = v21;
  v22 = *(v82 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = (*(a2 + 120))(a1, a2);
  if (v26)
  {
    v27 = v26;
    v28 = a1;
    v81 = v3;
    v29 = v25;
    v30 = objc_allocWithZone(MEMORY[0x277CC1E70]);

    v78 = v29;
    v31 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(v29, v27, 0);
    v43 = v24;
    v44 = a2;
    v45 = v20;
    if (!v31)
    {
      v32 = v81;
      v33 = v28;
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v34 = v83;
      v35 = __swift_project_value_buffer(v83, static Logger.default);
      (*(v82 + 16))(v43, v35, v34);
      v36 = *(v44 + 72);
      v36(v33, v44);
      if (v37)
      {

        v38 = static os_log_type_t.debug.getter();
      }

      else
      {
        v38 = static os_log_type_t.error.getter();
      }

      v79 = v38;
      v47 = v80;
      (*(v80 + 16))(v45, v32, v33);
      v48 = Logger.logObject.getter();
      if (os_log_type_enabled(v48, v79))
      {
        v49 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v85[0] = v80;
        *v49 = 136315394;
        v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v27, v85);
        v78 = v48;
        v51 = v50;

        *(v49 + 4) = v51;
        *(v49 + 12) = 2080;
        v52 = (v36)(v33, v44);
        if (v53)
        {
          v54 = v52;
        }

        else
        {
          v54 = 7104878;
        }

        v55 = v36;
        if (v53)
        {
          v56 = v53;
        }

        else
        {
          v56 = 0xE300000000000000;
        }

        (*(v47 + 8))(v45, v33);
        v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v56, v85);
        v36 = v55;

        *(v49 + 14) = v57;
        v58 = v78;
        _os_log_impl(&dword_266B9E000, v78, v79, "SharingIntent: share target for appIdentifier=%s appName=%s not installed", v49, 0x16u);
        v59 = v80;
        swift_arrayDestroy();
        MEMORY[0x26D5ED340](v59, -1, -1);
        MEMORY[0x26D5ED340](v49, -1, -1);
      }

      else
      {

        (*(v47 + 8))(v45, v33);
      }

      (*(v82 + 8))(v43, v83);
      v60 = (v36)(v33, v44);
      if (v61)
      {
        v62 = v60;
      }

      else
      {
        v62 = 0;
      }

      v63 = 0xE000000000000000;
      if (v61)
      {
        v63 = v61;
      }

      v64 = v84;
      *v84 = v62;
      v64[1] = v63;
      type metadata accessor for ShareTarget();
      return swift_storeEnumTagMultiPayload();
    }

    if ((*(v44 + 48))(v28, v44))
    {
      v46 = v84;
      *v84 = v78;
      v46[1] = v27;
      type metadata accessor for ShareTarget();
    }

    else
    {
      if ((*(v44 + 240))(v28, v44))
      {
        v67 = 0;
      }

      else
      {
        v67 = 2;
      }

      v68 = v84;
      *v84 = v78;
      v68[1] = v27;
      *(v68 + 16) = v67;
      type metadata accessor for ShareTarget();
    }

    goto LABEL_36;
  }

  v39 = v81;
  v40 = (*(a2 + 72))(a1, a2);
  if (v41)
  {
    v42 = v84;
    *v84 = v40;
    v42[1] = v41;
    type metadata accessor for ShareTarget();
    goto LABEL_36;
  }

  v65 = (*(a2 + 152))(a1, a2);
  v66 = v84;
  if ((v65 & 1) != 0 || ((*(a2 + 160))(a1, a2) & 1) != 0 || ((*(a2 + 168))(a1, a2) & 1) != 0 || ((*(a2 + 48))(a1, a2) & 1) == 0)
  {
    type metadata accessor for ShareTarget();
LABEL_36:

    return swift_storeEnumTagMultiPayload();
  }

  (*(a2 + 24))(a1, a2);
  if ((*(v39 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of SharingResponse?(v9, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMd, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMR);
LABEL_48:
    type metadata accessor for ShareTarget();
    *v66 = 0;
    v66[1] = 0;
    return swift_storeEnumTagMultiPayload();
  }

  v70 = *(v39 + 32);
  v70(v17, v9, v10);
  v71 = (*(a2 + 208))(a1, a2);
  if (!v71)
  {
    (*(v39 + 8))(v17, v10);
    v66 = v84;
    goto LABEL_48;
  }

  v72 = v71;
  (*(v39 + 16))(v14, v17, v10);
  v73 = (*(v39 + 88))(v14, v10);
  if (v73 == *MEMORY[0x277D5EF48] || v73 == *MEMORY[0x277D5EF08])
  {
    (*(v39 + 8))(v17, v10);

    type metadata accessor for ShareTarget();
    v76 = v84;
    *v84 = 0;
    v76[1] = 0;
    return swift_storeEnumTagMultiPayload();
  }

  v74 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology9UsoEntityC_AA0cD22_common_AttachmentTypeC13DefinedValuesO4typetMd, &_s12SiriOntology9UsoEntityC_AA0cD22_common_AttachmentTypeC13DefinedValuesO4typetMR) + 48);
  v75 = v84;
  *v84 = v72;
  v70(v75 + v74, v17, v10);
  type metadata accessor for ShareTarget();
  swift_storeEnumTagMultiPayload();
  return (*(v39 + 8))(v14, v10);
}

uint64_t SharingIntent.isExplicitShareViaMessagesIntent.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = v4();
  if (v5 > 1)
  {
    if (v5 == 2)
    {

      v7 = 1;
      return v7 & 1;
    }

LABEL_6:
    v8 = (v4)(a1, a2);
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        goto LABEL_16;
      }
    }

    else if (!v8)
    {

LABEL_11:
      v10 = *(a2 + 144);
      v10(a1, a2);
      if (v11)
      {

        v12 = (v10)(a1, a2);
        if (!v13)
        {
          goto LABEL_3;
        }

        if (v12 != 0xD000000000000012 || v13 != 0x8000000266BEE5E0)
        {
          v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v7 = v15 ^ 1;
          return v7 & 1;
        }
      }

LABEL_16:
      v7 = 0;
      return v7 & 1;
    }

    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = 1;
  return v7 & 1;
}

uint64_t SharingIntent.isExplicitShareInCallIntent.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = v4();
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (!v5)
  {
LABEL_5:
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
LABEL_14:
      v8 = 1;
      return v8 & 1;
    }

LABEL_6:
    v7 = (v4)(a1, a2);
    if (v7 > 1)
    {
      if (v7 != 2)
      {
        goto LABEL_19;
      }
    }

    else if (!v7)
    {

LABEL_13:
      if ((*(a2 + 200))(a1, a2))
      {
        goto LABEL_14;
      }

      v10 = (*(a2 + 144))(a1, a2);
      if (v11)
      {
        if (v10 == 0xD000000000000012 && v11 == 0x8000000266BEE5E0)
        {
          v8 = 1;
        }

        else
        {
          v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        goto LABEL_10;
      }

LABEL_19:
      v8 = 0;
      return v8 & 1;
    }

    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  v8 = 1;
LABEL_10:

  return v8 & 1;
}

unint64_t UsoEntity_common_AttachmentType.DefinedValues.matchingFirstPartyAppBundleID.getter()
{
  v1 = v0;
  v2 = 0xD000000000000013;
  v3 = type metadata accessor for UsoEntity_common_AttachmentType.DefinedValues();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v1, v3);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == *MEMORY[0x277D5EF50])
  {
    return 0xD00000000000001BLL;
  }

  if (v8 != *MEMORY[0x277D5EF78])
  {
    if (v8 == *MEMORY[0x277D5EF10])
    {
      return 0xD000000000000010;
    }

    else if (v8 == *MEMORY[0x277D5EF18])
    {
      return 0xD000000000000015;
    }

    else if (v8 != *MEMORY[0x277D5EF58])
    {
      if (v8 == *MEMORY[0x277D5EF30])
      {
        return 0xD000000000000019;
      }

      else if (v8 == *MEMORY[0x277D5EF60])
      {
        return 0xD000000000000012;
      }

      else
      {
        (*(v4 + 8))(v7, v3);
        return 0;
      }
    }
  }

  return v2;
}

id @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(uint64_t a1, uint64_t a2, char a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x26D5EC850]();

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

uint64_t lazy protocol witness table accessor for type SharingDirectInvocationIntent and conformance SharingDirectInvocationIntent(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance ResolvedRecipients()
{
  v1 = 0xD000000000000020;
  v2 = *v0;
  if (*v0 != 1)
  {
    _StringGuts.grow(_:)(42);
    MEMORY[0x26D5EC8A0](0xD000000000000027, 0x8000000266BEE630);
    specialized DefaultStringInterpolation.appendInterpolation<A>(_:)(v2);
    MEMORY[0x26D5EC8A0](41, 0xE100000000000000);
    return 0;
  }

  return v1;
}

uint64_t ScreenShareType.description.getter()
{
  if (one-time initialization token for typeName != -1)
  {
    swift_once();
  }

  v1 = static ScreenShareType.typeName;

  MEMORY[0x26D5EC8A0](0x6E65657263732ELL, 0xE700000000000000);
  return v1;
}

Swift::Int ScreenShareType.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x26D5ECD20](0);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type ScreenShareType and conformance ScreenShareType()
{
  result = lazy protocol witness table cache variable for type ScreenShareType and conformance ScreenShareType;
  if (!lazy protocol witness table cache variable for type ScreenShareType and conformance ScreenShareType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScreenShareType and conformance ScreenShareType);
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ScreenShareType()
{
  if (one-time initialization token for typeName != -1)
  {
    swift_once();
  }

  v1 = static ScreenShareType.typeName;

  MEMORY[0x26D5EC8A0](0x6E65657263732ELL, 0xE700000000000000);
  return v1;
}

uint64_t type metadata completion function for SharingFlow(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
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

uint64_t SharingFlow.on(input:)()
{
  v1 = v0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.default);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v1 + 16), *(v1 + 24), &v8);
    _os_log_impl(&dword_266B9E000, v3, v4, "%s: on(input:) called. This should never happen.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x26D5ED340](v6, -1, -1);
    MEMORY[0x26D5ED340](v5, -1, -1);
  }

  return 0;
}

uint64_t SharingFlow.execute()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](SharingFlow.execute(), 0, 0);
}

uint64_t SharingFlow.execute()()
{
  v12 = v0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.default);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v5 + 16), *(v5 + 24), &v11);
    _os_log_impl(&dword_266B9E000, v3, v4, "%s: execute() called. This should never happen.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x26D5ED340](v7, -1, -1);
    MEMORY[0x26D5ED340](v6, -1, -1);
  }

  v8 = v0[2];
  static ExecuteResponse.complete()();
  v9 = v0[1];

  return v9();
}

char *SharingFlow.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 3);

  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(*v0 + 104)]);
  __swift_destroy_boxed_opaque_existential_1Tm(&v0[*(*v0 + 112)]);
  __swift_destroy_boxed_opaque_existential_1Tm(&v0[*(*v0 + 120)]);
  __swift_destroy_boxed_opaque_existential_1Tm(&v0[*(*v0 + 128)]);
  __swift_destroy_boxed_opaque_existential_1Tm(&v0[*(*v0 + 136)]);
  return v0;
}

uint64_t SharingFlow.__deallocating_deinit()
{
  SharingFlow.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t getEnumTagSinglePayload for SharingFlowError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SharingFlowError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t protocol witness for Flow.execute() in conformance SharingFlow<A>(uint64_t a1)
{
  v4 = *(**v1 + 216);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of SharingPromptFlowStrategy.makePrompt();

  return v8(a1);
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance SharingFlowError()
{
  v1 = *v0;
  v2 = 0x6F486E4F6C6C6163;
  v3 = 0x6C61436E49746F6ELL;
  v4 = 0xD000000000000012;
  if (v1 == 3)
  {
    v4 = 0xD000000000000014;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type SharingFlowError and conformance SharingFlowError()
{
  result = lazy protocol witness table cache variable for type SharingFlowError and conformance SharingFlowError;
  if (!lazy protocol witness table cache variable for type SharingFlowError and conformance SharingFlowError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharingFlowError and conformance SharingFlowError);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for SharingFlow<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t SharingYesNoPromptFlowStrategy.makePromptForYesNoResponse()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 16) = v3;
  v7 = *(a3 + 8);
  v8 = *(v7 + 88);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 24) = v10;
  *v10 = v4;
  v10[1] = SharingYesNoPromptFlowStrategy.makePromptForYesNoResponse();

  return v12(a1, a2, v7);
}

uint64_t SharingYesNoPromptFlowStrategy.makePromptForYesNoResponse()()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  *(v3 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](SharingYesNoPromptFlowStrategy.makePromptForYesNoResponse(), 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t SharingYesNoPromptFlowStrategy.makeFlowCancelledResponse()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 16) = v3;
  v7 = *(a3 + 8);
  v8 = *(v7 + 96);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 24) = v10;
  *v10 = v4;
  v10[1] = SharingYesNoPromptFlowStrategy.makeFlowCancelledResponse();

  return v12(a1, a2, v7);
}

uint64_t SharingYesNoPromptFlowStrategy.makeFlowCancelledResponse()()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  *(v3 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](SharingYesNoPromptFlowStrategy.makeFlowCancelledResponse(), 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

{
  v1 = *(v0 + 32);
  return (*(v0 + 8))();
}

id protocol witness for ConversationParticipant.handle.getter in conformance TUConversationParticipant()
{
  v1 = [*v0 handle];

  return v1;
}

unint64_t ExpanseFlowExitValue.description.getter()
{
  v1 = *v0;
  _StringGuts.grow(_:)(23);

  if (v1)
  {
    v2 = 0x656C646E61686E75;
  }

  else
  {
    v2 = 0x64656C646E6168;
  }

  if (v1)
  {
    v3 = 0xE900000000000064;
  }

  else
  {
    v3 = 0xE700000000000000;
  }

  MEMORY[0x26D5EC8A0](v2, v3);

  return 0xD000000000000015;
}

uint64_t ExpanseFlowExitValue.rawValue.getter()
{
  if (*v0)
  {
    result = 0x656C646E61686E75;
  }

  else
  {
    result = 0x64656C646E6168;
  }

  *v0;
  return result;
}

SiriExpanseInternal::ExpanseFlowExitValue_optional __swiftcall ExpanseFlowExitValue.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ExpanseFlowExitValue.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *v4 = v7;
  return result;
}

unint64_t lazy protocol witness table accessor for type ExpanseFlowExitValue and conformance ExpanseFlowExitValue()
{
  result = lazy protocol witness table cache variable for type ExpanseFlowExitValue and conformance ExpanseFlowExitValue;
  if (!lazy protocol witness table cache variable for type ExpanseFlowExitValue and conformance ExpanseFlowExitValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExpanseFlowExitValue and conformance ExpanseFlowExitValue);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ExpanseFlowExitValue()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ExpanseFlowExitValue()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ExpanseFlowExitValue()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ExpanseFlowExitValue@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ExpanseFlowExitValue.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance ExpanseFlowExitValue(uint64_t *a1@<X8>)
{
  v2 = 0x64656C646E6168;
  if (*v1)
  {
    v2 = 0x656C646E61686E75;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000064;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ExpanseFlowExitValue(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x656C646E61686E75;
  }

  else
  {
    v4 = 0x64656C646E6168;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE900000000000064;
  }

  if (*a2)
  {
    v6 = 0x656C646E61686E75;
  }

  else
  {
    v6 = 0x64656C646E6168;
  }

  if (*a2)
  {
    v7 = 0xE900000000000064;
  }

  else
  {
    v7 = 0xE700000000000000;
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

uint64_t specialized SharingPromptFlowStrategy.parseResponse(input:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for Input();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized SharingPromptFlowStrategy.parseResponse(input:), 0, 0);
}

{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for Input();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized SharingPromptFlowStrategy.parseResponse(input:), 0, 0);
}

{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for Input();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized SharingPromptFlowStrategy.parseResponse(input:), 0, 0);
}

uint64_t specialized SharingPromptFlowStrategy.parseResponse(input:)()
{
  v24 = v0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[6];
  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.default);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[9];
  v9 = v0[10];
  v11 = v0[8];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136315138;
    lazy protocol witness table accessor for type SimpleSharingYesNoPromptFlowStrategy and conformance SimpleSharingYesNoPromptFlowStrategy(&lazy protocol witness table cache variable for type Input and conformance Input, MEMORY[0x277D5C118]);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v23);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_266B9E000, v6, v7, "SharingPromptFlowStrategy: parseResponse received input: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x26D5ED340](v13, -1, -1);
    MEMORY[0x26D5ED340](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[10];
  v19 = v0[7];
  v20 = v0[5];
  swift_beginAccess();
  outlined init with copy of SharingResponse?(v19 + 136, v20, &_s19SiriExpanseInternal13SharingIntent_pSgMd, &_s19SiriExpanseInternal13SharingIntent_pSgMR);

  v21 = v0[1];

  return v21();
}

{
  v26 = v0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[6];
  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.default);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[9];
  v9 = v0[10];
  v11 = v0[8];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25 = v13;
    *v12 = 136315138;
    lazy protocol witness table accessor for type SimpleSharingYesNoPromptFlowStrategy and conformance SimpleSharingYesNoPromptFlowStrategy(&lazy protocol witness table cache variable for type Input and conformance Input, MEMORY[0x277D5C118]);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v25);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_266B9E000, v6, v7, "SharingPromptFlowStrategy: parseResponse received input: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x26D5ED340](v13, -1, -1);
    MEMORY[0x26D5ED340](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[10];
  v19 = v0[7];
  v20 = v0[5];
  v21 = OBJC_IVAR____TtC19SiriExpanseInternal36SimpleSharingYesNoPromptFlowStrategy_responseValue;
  swift_beginAccess();
  v22 = type metadata accessor for SimpleConfirmationResponseProvider();
  (*(*(v22 - 8) + 16))(v20, v19 + v21, v22);

  v23 = v0[1];

  return v23();
}

{
  v24 = v0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[6];
  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.default);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[9];
  v9 = v0[10];
  v11 = v0[8];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136315138;
    lazy protocol witness table accessor for type SimpleSharingYesNoPromptFlowStrategy and conformance SimpleSharingYesNoPromptFlowStrategy(&lazy protocol witness table cache variable for type Input and conformance Input, MEMORY[0x277D5C118]);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v23);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_266B9E000, v6, v7, "SharingPromptFlowStrategy: parseResponse received input: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x26D5ED340](v13, -1, -1);
    MEMORY[0x26D5ED340](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[10];
  v19 = v0[7];
  v20 = v0[5];
  swift_beginAccess();
  outlined init with copy of SharingResponse?(v19 + 136, v20, &_s19SiriExpanseInternal43ConfirmScreenShareOrMessageSendFlowStrategyC8DecisionOSgMd, &_s19SiriExpanseInternal43ConfirmScreenShareOrMessageSendFlowStrategyC8DecisionOSgMR);

  v21 = v0[1];

  return v21();
}

uint64_t SimpleSharingYesNoPromptFlowStrategy.actionForIntent(_:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v27 - v6;
  v8 = type metadata accessor for SimpleConfirmationResponseProvider();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  v15 = (*(v14 + 184))(v13, v14);
  if (v15 > 1)
  {
    if (v15 == 2)
    {

      return static ActionForInput.cancel()();
    }

    else
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      __swift_project_value_buffer(v22, static Logger.default);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v28 = v26;
        *v25 = 136315138;
        if (one-time initialization token for typeName != -1)
        {
          swift_once();
        }

        *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static SimpleSharingYesNoPromptFlowStrategy.typeName, *algn_2800C03F8, &v28);
        _os_log_impl(&dword_266B9E000, v23, v24, "%s: SharingIntent has no confirmation value; ignoring input.", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v26);
        MEMORY[0x26D5ED340](v26, -1, -1);
        MEMORY[0x26D5ED340](v25, -1, -1);
      }

      return static ActionForInput.ignore()();
    }
  }

  else
  {
    if (v15)
    {
      v16 = MEMORY[0x277D5BED0];
    }

    else
    {
      v16 = MEMORY[0x277D5BED8];
    }

    v17 = *v16;
    v18 = type metadata accessor for ConfirmationResponse();
    v19 = *(v18 - 8);
    (*(v19 + 104))(v7, v17, v18);
    (*(v19 + 56))(v7, 0, 1, v18);
    SimpleConfirmationResponseProvider.init(_:)();
    v20 = OBJC_IVAR____TtC19SiriExpanseInternal36SimpleSharingYesNoPromptFlowStrategy_responseValue;
    swift_beginAccess();
    (*(v9 + 24))(v2 + v20, v12, v8);
    swift_endAccess();
    static ActionForInput.handle()();
    return (*(v9 + 8))(v12, v8);
  }
}

uint64_t SimpleSharingYesNoPromptFlowStrategy.makeConfirmationRejectedResponse()(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return MEMORY[0x2822009F8](SimpleSharingYesNoPromptFlowStrategy.makeConfirmationRejectedResponse(), 0, 0);
}

uint64_t SimpleSharingYesNoPromptFlowStrategy.makeConfirmationRejectedResponse()()
{
  outlined init with copy of SharingResponse?(v0[13] + 56, (v0 + 7), &_s19SiriExpanseInternal15SharingResponse_pSgMd, &_s19SiriExpanseInternal15SharingResponse_pSgMR);
  if (v0[10])
  {
    v1 = v0[13];
    outlined init with take of SharingResponse(v0 + 7, v0 + 2);
    v2 = *__swift_project_boxed_opaque_existential_1((v1 + 136), *(v1 + 160));
    v3 = swift_task_alloc();
    v0[14] = v3;
    *v3 = v0;
    v3[1] = SimpleSharingYesNoPromptFlowStrategy.makeConfirmationRejectedResponse();
    v4 = v0[12];

    return ResponseExecutor.execute(response:)(v4, (v0 + 2));
  }

  else
  {
    v6 = v0[12];
    outlined destroy of SharingResponse?((v0 + 7));
    type metadata accessor for EmptyOutput();
    static EmptyOutput.instance.getter();
    v7 = v0[1];

    return v7();
  }
}

{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = SimpleSharingYesNoPromptFlowStrategy.makeConfirmationRejectedResponse();
  }

  else
  {
    v3 = SharingPromptFlowStrategy.makePrompt();
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[1];
  v2 = v0[15];

  return v1();
}

uint64_t SimpleSharingYesNoPromptFlowStrategy.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  outlined destroy of SharingResponse?((v0 + 7));
  outlined destroy of SharingResponse?((v0 + 12));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  v1 = OBJC_IVAR____TtC19SiriExpanseInternal36SimpleSharingYesNoPromptFlowStrategy_responseValue;
  v2 = type metadata accessor for SimpleConfirmationResponseProvider();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for SimpleSharingYesNoPromptFlowStrategy()
{
  result = type metadata singleton initialization cache for SimpleSharingYesNoPromptFlowStrategy;
  if (!type metadata singleton initialization cache for SimpleSharingYesNoPromptFlowStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for SimpleSharingYesNoPromptFlowStrategy()
{
  result = type metadata accessor for SimpleConfirmationResponseProvider();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t protocol witness for YesNoPromptFlowStrategy.makePromptForYesNoResponse() in conformance SimpleSharingYesNoPromptFlowStrategy(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = dispatch thunk of SharingPromptFlowStrategy.makePrompt();

  return SharingYesNoPromptFlowStrategy.makePromptForYesNoResponse()(a1, a2, WitnessTable);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.actionForInput(_:) in conformance SimpleSharingYesNoPromptFlowStrategy(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return SharingYesNoPromptFlowStrategy.actionForInput(_:)(a1, a2, WitnessTable);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.parseConfirmationResponse(input:) in conformance SimpleSharingYesNoPromptFlowStrategy(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for SharingPromptFlowStrategy.makeUserCancelledResponse() in conformance SimpleSharingYesNoPromptFlowStrategy;

  return specialized SharingPromptFlowStrategy.parseResponse(input:)(a1, a2);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makePromptForConfirmation(itemToConfirm:) in conformance SimpleSharingYesNoPromptFlowStrategy(uint64_t a1)
{
  v3 = *(MEMORY[0x277D5B388] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = type metadata accessor for SimpleSharingYesNoPromptFlowStrategy();
  v6 = lazy protocol witness table accessor for type SimpleSharingYesNoPromptFlowStrategy and conformance SimpleSharingYesNoPromptFlowStrategy(&lazy protocol witness table cache variable for type SimpleSharingYesNoPromptFlowStrategy and conformance SimpleSharingYesNoPromptFlowStrategy, type metadata accessor for SimpleSharingYesNoPromptFlowStrategy);
  *v4 = v1;
  v4[1] = protocol witness for SharingPromptFlowStrategy.makeUserCancelledResponse() in conformance SimpleSharingYesNoPromptFlowStrategy;

  return MEMORY[0x2821B9C20](a1, v5, v6);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:) in conformance SimpleSharingYesNoPromptFlowStrategy(uint64_t a1)
{
  v3 = *(MEMORY[0x277D5B390] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = type metadata accessor for SimpleSharingYesNoPromptFlowStrategy();
  v6 = lazy protocol witness table accessor for type SimpleSharingYesNoPromptFlowStrategy and conformance SimpleSharingYesNoPromptFlowStrategy(&lazy protocol witness table cache variable for type SimpleSharingYesNoPromptFlowStrategy and conformance SimpleSharingYesNoPromptFlowStrategy, type metadata accessor for SimpleSharingYesNoPromptFlowStrategy);
  *v4 = v1;
  v4[1] = protocol witness for SharingPromptFlowStrategy.makeUserCancelledResponse() in conformance SimpleSharingYesNoPromptFlowStrategy;

  return MEMORY[0x2821B9C28](a1, v5, v6);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:) in conformance SimpleSharingYesNoPromptFlowStrategy(uint64_t a1)
{
  v3 = *(MEMORY[0x277D5B398] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = type metadata accessor for SimpleSharingYesNoPromptFlowStrategy();
  v6 = lazy protocol witness table accessor for type SimpleSharingYesNoPromptFlowStrategy and conformance SimpleSharingYesNoPromptFlowStrategy(&lazy protocol witness table cache variable for type SimpleSharingYesNoPromptFlowStrategy and conformance SimpleSharingYesNoPromptFlowStrategy, type metadata accessor for SimpleSharingYesNoPromptFlowStrategy);
  *v4 = v1;
  v4[1] = protocol witness for SharingPromptFlowStrategy.makeUserCancelledResponse() in conformance SimpleSharingYesNoPromptFlowStrategy;

  return MEMORY[0x2821B9C30](a1, v5, v6);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse() in conformance SimpleSharingYesNoPromptFlowStrategy(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for SharingPromptFlowStrategy.makeUserCancelledResponse() in conformance SimpleSharingYesNoPromptFlowStrategy;

  return SimpleSharingYesNoPromptFlowStrategy.makeConfirmationRejectedResponse()(a1);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeFlowCancelledResponse() in conformance SimpleSharingYesNoPromptFlowStrategy(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = protocol witness for SharingPromptFlowStrategy.makeUserCancelledResponse() in conformance SimpleSharingYesNoPromptFlowStrategy;

  return SharingYesNoPromptFlowStrategy.makeFlowCancelledResponse()(a1, a2, WitnessTable);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeErrorResponse(_:) in conformance SimpleSharingYesNoPromptFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B650] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for SharingPromptFlowStrategy.makeUserCancelledResponse() in conformance SimpleSharingYesNoPromptFlowStrategy;

  return MEMORY[0x2821BA038](a1, a2, a3, a4);
}

uint64_t instantiation function for generic protocol witness table for SimpleSharingYesNoPromptFlowStrategy(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SimpleSharingYesNoPromptFlowStrategy and conformance SimpleSharingYesNoPromptFlowStrategy(&lazy protocol witness table cache variable for type SimpleSharingYesNoPromptFlowStrategy and conformance SimpleSharingYesNoPromptFlowStrategy, type metadata accessor for SimpleSharingYesNoPromptFlowStrategy);
  *(a1 + 16) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type SimpleSharingYesNoPromptFlowStrategy and conformance SimpleSharingYesNoPromptFlowStrategy(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with copy of SharingResponse?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of SharingResponse?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal15SharingResponse_pSgMd, &_s19SiriExpanseInternal15SharingResponse_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t one-time initialization function for options()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, _ss23_ContiguousArrayStorageCySSGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_266BEA050;
  MEMORY[0x26D5EC8A0](0x592E65756C61562ELL, 0xEA00000000005345);
  *(v0 + 32) = 0xD000000000000025;
  *(v0 + 40) = 0x8000000266BEDEF0;
  MEMORY[0x26D5EC8A0](0x4E2E65756C61562ELL, 0xE90000000000004FLL);
  *(v0 + 48) = 0xD000000000000025;
  *(v0 + 56) = 0x8000000266BEDEF0;
  result = MEMORY[0x26D5EC8A0](0x432E65756C61562ELL, 0xED00004C45434E41);
  *(v0 + 64) = 0xD000000000000025;
  *(v0 + 72) = 0x8000000266BEDEF0;
  static SharingNLContextProvider.PromptResponse.Confirmation.options = v0;
  return result;
}

uint64_t static SharingNLContextProvider.makeNLContextUpdateForShareTargetPrompt()()
{
  NLContextUpdate.init()();
  NLContextUpdate.weightedPromptTargetDomain.setter();
  v0 = type metadata accessor for UsoEntityBuilder_common_Message();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  UsoEntityBuilder_common_Message.init()();
  v3 = type metadata accessor for UsoEntityBuilder_common_Attachment();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  UsoEntityBuilder_common_Attachment.init()();
  dispatch thunk of UsoEntityBuilder_common_Message.addAttachments(value:)();
  v6 = type metadata accessor for UsoTaskBuilder_share_common_Message();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = UsoTaskBuilder_share_common_Message.init()();
  dispatch thunk of Uso_VerbTemplateBuilder_Target.setTarget(value:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
  v10 = *(type metadata accessor for Siri_Nlu_External_SystemDialogAct() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_266BE97B0;
  static SharingNLContextProvider.makePromptedSystemDialogAct(for:)(v9, v13 + v12);
  NLContextUpdate.nluSystemDialogActs.setter();
}

uint64_t static SharingNLContextProvider.makePromptedSystemDialogAct(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21[1] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v21 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v22 = type metadata accessor for Siri_Nlu_External_SystemPrompted();
  v10 = *(v22 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v22);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v21 - v15;
  Siri_Nlu_External_SystemPrompted.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_266BEA060;
  *(v17 + 32) = a1;
  v18 = type metadata accessor for UsoBuilderOptions();
  (*(*(v18 - 8) + 56))(v7, 1, 1, v18);

  MEMORY[0x26D5EC2D0](v17, v7);

  outlined destroy of UsoBuilderOptions?(v7);
  static UsoGraphProtoWriter.toSwiftProtobuf(graph:vocabManager:)();
  if (v2)
  {
    (*(v10 + 8))(v16, v22);
  }

  else
  {

    Siri_Nlu_External_SystemPrompted.target.setter();
    Siri_Nlu_External_SystemDialogAct.init()();
    v20 = v22;
    (*(v10 + 16))(v14, v16, v22);
    Siri_Nlu_External_SystemDialogAct.prompted.setter();
    return (*(v10 + 8))(v16, v20);
  }
}

uint64_t static SharingNLContextProvider.makeNLContextUpdateForConfirmationPrompt(sharingAction:)(char a1)
{
  NLContextUpdate.init()();
  NLContextUpdate.weightedPromptTargetDomain.setter();
  NLContextUpdate.weightedPromptResponseTargets.setter();
  if (one-time initialization token for options != -1)
  {
    swift_once();
  }

  NLContextUpdate.weightedPromptResponseOptions.setter();
  NLContextUpdate.weightedPromptStrict.setter();
  if (a1)
  {
    v2 = type metadata accessor for UsoTaskBuilder_unshare_common_Message();
    v3 = *(v2 + 48);
    v4 = *(v2 + 52);
    swift_allocObject();
    UsoTaskBuilder_unshare_common_Message.init()();
  }

  else
  {
    v5 = type metadata accessor for UsoTaskBuilder_share_common_Message();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    UsoTaskBuilder_share_common_Message.init()();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
  v8 = *(type metadata accessor for Siri_Nlu_External_SystemDialogAct() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_266BE97B0;

  static SharingNLContextProvider.makeConfirmationSystemDialogAct(for:)(v12, v11 + v10);

  NLContextUpdate.nluSystemDialogActs.setter();
}

uint64_t static SharingNLContextProvider.makeConfirmationSystemDialogAct(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v40 = type metadata accessor for Siri_Nlu_External_SystemOffered();
  v38 = *(v40 - 8);
  v3 = *(v38 + 64);
  v4 = MEMORY[0x28223BE20](v40);
  v37 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v34 = &v33 - v6;
  v41 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v36 = *(v41 - 8);
  v7 = *(v36 + 64);
  v8 = MEMORY[0x28223BE20](v41);
  v35 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v33 - v14;
  v16 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v43 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed();
  v18 = *(v43 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v43);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v33 - v23;
  Siri_Nlu_External_UserWantedToProceed.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_266BEA060;
  *(v25 + 32) = a1;
  v26 = type metadata accessor for UsoBuilderOptions();
  (*(*(v26 - 8) + 56))(v15, 1, 1, v26);

  MEMORY[0x26D5EC2D0](v25, v15);

  outlined destroy of UsoBuilderOptions?(v15);
  v27 = v42;
  static UsoGraphProtoWriter.toSwiftProtobuf(graph:vocabManager:)();
  if (v27)
  {
    (*(v18 + 8))(v24, v43);
  }

  else
  {

    Siri_Nlu_External_UserWantedToProceed.reference.setter();
    Siri_Nlu_External_UserDialogAct.init()();
    v33 = v18;
    (*(v18 + 16))(v22, v24, v43);
    Siri_Nlu_External_UserDialogAct.wantedToProceed.setter();
    v29 = v34;
    Siri_Nlu_External_SystemOffered.init()();
    v30 = v36;
    (*(v36 + 16))(v35, v11, v41);
    Siri_Nlu_External_SystemOffered.offeredAct.setter();
    Siri_Nlu_External_SystemDialogAct.init()();
    v31 = v38;
    v32 = v40;
    (*(v38 + 16))(v37, v29, v40);
    Siri_Nlu_External_SystemDialogAct.offered.setter();
    (*(v31 + 8))(v29, v32);
    (*(v30 + 8))(v11, v41);
    return (*(v33 + 8))(v24, v43);
  }
}

uint64_t outlined destroy of UsoBuilderOptions?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t NeedsShareTargetFlowStrategy.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  outlined destroy of SharingResponse?(v0 + 56, &_s19SiriExpanseInternal15SharingResponse_pSgMd, &_s19SiriExpanseInternal15SharingResponse_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  outlined destroy of SharingResponse?(v0 + 136, &_s19SiriExpanseInternal13SharingIntent_pSgMd, &_s19SiriExpanseInternal13SharingIntent_pSgMR);

  return MEMORY[0x2821FE8D8](v0, 176, 7);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.actionForInput(_:) in conformance NeedsShareTargetFlowStrategy(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return SharingYesNoPromptFlowStrategy.actionForInput(_:)(a1, a2, WitnessTable);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.parseValueResponse(input:) in conformance NeedsShareTargetFlowStrategy(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for PromptForValueFlowStrategyAsync.parseValueResponse(input:) in conformance NeedsShareTargetFlowStrategy;

  return specialized SharingPromptFlowStrategy.parseResponse(input:)(a1, a2);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.parseValueResponse(input:) in conformance NeedsShareTargetFlowStrategy()
{
  v2 = *(*v1 + 16);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](protocol witness for PromptForValueFlowStrategyAsync.parseValueResponse(input:) in conformance NeedsShareTargetFlowStrategy, 0, 0);
  }
}

{
  return (*(v0 + 8))();
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makePromptForValue() in conformance NeedsShareTargetFlowStrategy(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = protocol witness for SharingPromptFlowStrategy.makeUserCancelledResponse() in conformance SimpleSharingYesNoPromptFlowStrategy;

  return SharingYesNoPromptFlowStrategy.makePromptForYesNoResponse()(a1, a2, WitnessTable);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance NeedsShareTargetFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B460] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for SharingPromptFlowStrategy.makeUserCancelledResponse() in conformance SimpleSharingYesNoPromptFlowStrategy;

  return MEMORY[0x2821B9D48](a1, a2, a3);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnLowConfidence() in conformance NeedsShareTargetFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B468] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for SharingPromptFlowStrategy.makeUserCancelledResponse() in conformance SimpleSharingYesNoPromptFlowStrategy;

  return MEMORY[0x2821B9D50](a1, a2, a3);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance NeedsShareTargetFlowStrategy(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = dispatch thunk of SharingPromptFlowStrategy.makePrompt();

  return SharingYesNoPromptFlowStrategy.makeFlowCancelledResponse()(a1, a2, WitnessTable);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makeErrorResponse(_:) in conformance NeedsShareTargetFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B458] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for SharingPromptFlowStrategy.makeUserCancelledResponse() in conformance SimpleSharingYesNoPromptFlowStrategy;

  return MEMORY[0x2821B9D40](a1, a2, a3, a4);
}

uint64_t protocol witness for SharingPromptFlowStrategy.actionForIntent(_:) in conformance NeedsShareTargetFlowStrategy(uint64_t a1)
{
  v2 = *v1;
  outlined init with copy of ResponseExecuting(a1, v4);
  swift_beginAccess();
  outlined assign with take of SharingIntent?(v4, v2 + 136);
  swift_endAccess();
  return static ActionForInput.handle()();
}

unint64_t instantiation function for generic protocol witness table for NeedsShareTargetFlowStrategy(uint64_t a1)
{
  result = lazy protocol witness table accessor for type NeedsShareTargetFlowStrategy and conformance NeedsShareTargetFlowStrategy();
  *(a1 + 16) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type NeedsShareTargetFlowStrategy and conformance NeedsShareTargetFlowStrategy()
{
  result = lazy protocol witness table cache variable for type NeedsShareTargetFlowStrategy and conformance NeedsShareTargetFlowStrategy;
  if (!lazy protocol witness table cache variable for type NeedsShareTargetFlowStrategy and conformance NeedsShareTargetFlowStrategy)
  {
    type metadata accessor for NeedsShareTargetFlowStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NeedsShareTargetFlowStrategy and conformance NeedsShareTargetFlowStrategy);
  }

  return result;
}

uint64_t outlined assign with take of SharingIntent?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal13SharingIntent_pSgMd, &_s19SiriExpanseInternal13SharingIntent_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of SharingResponse?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal15SharingResponse_pSgMd, &_s19SiriExpanseInternal15SharingResponse_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t StartSharingConfirmationFlow.State.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  v8 = (v7 >> 4) & 3;
  if (v8)
  {
    if (v8 == 1)
    {
      _StringGuts.grow(_:)(26);
      MEMORY[0x26D5EC8A0](0xD000000000000017, 0x8000000266BEE890);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, _ss5Error_pMR);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x26D5EC8A0](41, 0xE100000000000000);
      return 0;
    }

    else if (v4 | v2 | v1 | v3 | v5 | v6 || v7 != 32)
    {
      result = 0xD000000000000010;
      v10 = v4 | v2 | v3 | v5 | v6;
      if (v7 == 32 && v1 == 1 && !v10)
      {
        return 0xD000000000000014;
      }

      else if (v7 == 32 && v1 == 2 && !v10)
      {
        return 0xD000000000000016;
      }

      else if (v7 == 32 && v1 == 3 && !v10)
      {
        return 0xD00000000000002DLL;
      }

      else if (v7 != 32 || v1 != 4 || v10)
      {
        return 0xD00000000000001ELL;
      }
    }

    else
    {
      return 0x696C616974696E69;
    }
  }

  else
  {
    _StringGuts.grow(_:)(18);
    MEMORY[0x26D5EC8A0](0x43687469576E7572, 0xEF28747865746E6FLL);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x26D5EC8A0](41, 0xE100000000000000);
    return 0;
  }

  return result;
}

void StartSharingConfirmationFlow.state.didset(uint64_t a1)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.default);
  outlined init with copy of StartSharingConfirmationFlow.State(a1, v18);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  outlined destroy of StartSharingConfirmationFlow.State(a1);

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315650;
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingConfirmationFlow.typeName, unk_2800C0490, &v17);
    *(v6 + 12) = 2080;
    started = StartSharingConfirmationFlow.State.description.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(started, v9, &v17);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2080;
    v11 = *(v1 + 32);
    v18[0] = *(v1 + 16);
    v18[1] = v11;
    v18[2] = *(v1 + 48);
    v19 = *(v1 + 64);
    outlined init with copy of StartSharingConfirmationFlow.State(v18, &v16);
    v12 = StartSharingConfirmationFlow.State.description.getter();
    v14 = v13;
    outlined destroy of StartSharingConfirmationFlow.State(v18);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v17);

    *(v6 + 24) = v15;
    _os_log_impl(&dword_266B9E000, v4, v5, "%s: transitioned from state %s to %s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26D5ED340](v7, -1, -1);
    MEMORY[0x26D5ED340](v6, -1, -1);
  }
}

uint64_t StartSharingConfirmationFlow.exitValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 64);
  v3 = (v2 >> 4) & 3;
  if (!v3)
  {
    goto LABEL_12;
  }

  if (v3 == 1)
  {
    v4 = v1;
    return v1;
  }

  v6 = *(v0 + 40);
  v7 = *(v0 + 48) | *(v0 + 56);
  v8 = *(v0 + 32) | *(v0 + 24);
  if (v2 == 32 && (v7 | v1 | v6 | v8) == 0)
  {
LABEL_12:
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.default);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24 = v15;
      *v14 = 136315394;
      if (one-time initialization token for typeName != -1)
      {
        swift_once();
      }

      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingConfirmationFlow.typeName, unk_2800C0490, &v24);
      *(v14 + 12) = 2080;
      v16 = *(v0 + 32);
      v25[0] = *(v0 + 16);
      v25[1] = v16;
      v25[2] = *(v0 + 48);
      v26 = *(v0 + 64);
      outlined init with copy of StartSharingConfirmationFlow.State(v25, &v23);
      started = StartSharingConfirmationFlow.State.description.getter();
      v19 = v18;
      outlined destroy of StartSharingConfirmationFlow.State(v25);
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(started, v19, &v24);

      *(v14 + 14) = v20;
      _os_log_impl(&dword_266B9E000, v12, v13, "%s: exitValue accessed with flow in unexpected state %s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D5ED340](v15, -1, -1);
      MEMORY[0x26D5ED340](v14, -1, -1);
    }

    lazy protocol witness table accessor for type ExpanseError and conformance ExpanseError();
    return swift_allocError();
  }

  else
  {
    v10 = v7 | v6 | v8;
    if (v2 == 32 && v1 == 1 && !v10)
    {
      return 0;
    }

    else if (v2 == 32 && v1 == 2 && !v10)
    {
      return 1;
    }

    else if (v2 == 32 && v1 == 3 && !v10)
    {
      return 2;
    }

    else
    {
      if (v10)
      {
        v21 = 0;
      }

      else
      {
        v21 = v1 == 4;
      }

      if (v21 && v2 == 32)
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

uint64_t StartSharingConfirmationFlow.execute()(uint64_t a1)
{
  *(v2 + 464) = a1;
  *(v2 + 472) = v1;
  return MEMORY[0x2822009F8](StartSharingConfirmationFlow.execute(), 0, 0);
}

uint64_t StartSharingConfirmationFlow.execute()()
{
  v1 = *(v0 + 472);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v7 = *(v1 + 48);
  v6 = *(v1 + 56);
  v8 = *(v1 + 64);
  v9 = (v8 >> 4) & 3;
  if (!v9)
  {
    if (v8 >> 6)
    {
      v11 = *(v0 + 464);
      if (v8 >> 6 == 1)
      {
        outlined copy of ConfirmationContext(v2, v3, *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64));
        StartSharingConfirmationFlow.confirmationFlowForScreenContext(_:)(v2, v3 & 1, v11);
      }

      else
      {
        outlined copy of StartSharingConfirmationFlow.State(v2, v3, *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64));

        StartSharingConfirmationFlow.confirmSingleWindowSharingRequestOnPlatformWithoutSupport(currentlySharedTarget:requestedRecipients:)(v4 & 1, v5, v11);
      }
    }

    else
    {
      v16 = *(v0 + 464);
      if ((v7 & 0x10000) != 0)
      {
        outlined copy of ConfirmationContext(v2, v3, *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64));
        StartSharingConfirmationFlow.confirmSingleWindowSharingRequestOnPlatformWithoutSupport(currentlySharedTarget:requestedRecipients:)(v8 & 1, v6, v16);
      }

      else
      {
        v17 = *(v1 + 16);
        v18 = *(v1 + 32);
        v19 = *(v1 + 48);
        *(v0 + 64) = *(v1 + 64);
        *(v0 + 32) = v18;
        *(v0 + 48) = v19;
        *(v0 + 16) = v17;
        *(v1 + 16) = 2;
        *(v1 + 24) = 0u;
        *(v1 + 40) = 0u;
        *(v1 + 56) = 0;
        *(v1 + 64) = 32;
        outlined copy of StartSharingConfirmationFlow.State(v2, v3, v5, v4, v7, v6, v8);
        outlined init with copy of StartSharingConfirmationFlow.State(v0 + 16, v0 + 240);
        outlined consume of StartSharingConfirmationFlow.State(v2, v3, v5, v4, v7, v6, v8);
        StartSharingConfirmationFlow.state.didset(v0 + 16);
        outlined destroy of StartSharingConfirmationFlow.State(v0 + 16);
        static ExecuteResponse.complete()();
      }
    }

    outlined consume of StartSharingConfirmationFlow.State(v2, v3, v5, v4, v7, v6, v8);
    goto LABEL_20;
  }

  if (v9 == 1 || (v8 == 32 ? (v12 = (v5 | v3 | v2 | v4 | v7 | v6) == 0) : (v12 = 0), !v12))
  {
    v10 = *(v0 + 464);
    static ExecuteResponse.complete()();
LABEL_20:
    v20 = *(v0 + 8);

    return v20();
  }

  v13 = swift_task_alloc();
  *(v0 + 480) = v13;
  *v13 = v0;
  v13[1] = StartSharingConfirmationFlow.execute();
  v14 = *(v0 + 472);

  return StartSharingConfirmationFlow.makeConfirmationContext()(v0 + 184);
}

{
  v2 = *v1;
  v3 = *(*v1 + 480);
  v7 = *v1;
  *(*v1 + 488) = v0;

  if (v0)
  {
    v4 = StartSharingConfirmationFlow.execute();
  }

  else
  {
    v5 = *(v2 + 200);
    *(v2 + 496) = *(v2 + 184);
    *(v2 + 512) = v5;
    *(v2 + 528) = *(v2 + 216);
    *(v2 + 65) = *(v2 + 232);
    v4 = StartSharingConfirmationFlow.execute();
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v1 = *(v0 + 65);
  v2 = *(v0 + 472);
  v3 = *(v0 + 496);
  v4 = *(v0 + 512);
  v5 = *(v0 + 528);
  v7 = *(v2 + 32);
  v6 = *(v2 + 48);
  v8 = *(v2 + 16);
  *(v0 + 176) = *(v2 + 64);
  *(v0 + 144) = v7;
  *(v0 + 160) = v6;
  *(v0 + 128) = v8;
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  v11 = *(v2 + 32);
  v12 = *(v2 + 40);
  v13 = *(v2 + 48);
  v14 = *(v2 + 56);
  *(v2 + 16) = v3;
  *(v2 + 32) = v4;
  *(v2 + 48) = v5;
  v15 = *(v2 + 64);
  *(v2 + 64) = v1;
  outlined init with copy of StartSharingConfirmationFlow.State(v0 + 128, v0 + 352);
  outlined init with copy of ConfirmationContext(v0 + 184, v0 + 408);
  outlined consume of StartSharingConfirmationFlow.State(v9, v10, v11, v12, v13, v14, v15);
  StartSharingConfirmationFlow.state.didset(v0 + 128);
  outlined destroy of StartSharingConfirmationFlow.State(v0 + 128);
  outlined destroy of ConfirmationContext(v0 + 184);
  v16 = *(v0 + 464);
  static ExecuteResponse.ongoing(requireInput:)();
  v17 = *(v0 + 8);

  return v17();
}

{
  v30 = v0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 488);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.default);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v29 = v8;
    *v6 = 136315394;
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 488);
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingConfirmationFlow.typeName, unk_2800C0490, &v29);
    *(v6 + 12) = 2112;
    v10 = v9;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v11;
    *v7 = v11;
    _os_log_impl(&dword_266B9E000, v4, v5, "%s: Failed to initialize ConfirmationContext with error: %@", v6, 0x16u);
    outlined destroy of SharingResponse?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x26D5ED340](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x26D5ED340](v8, -1, -1);
    MEMORY[0x26D5ED340](v6, -1, -1);
  }

  v12 = *(v0 + 488);
  v13 = *(v0 + 472);
  v15 = *(v13 + 32);
  v14 = *(v13 + 48);
  v16 = *(v13 + 64);
  *(v0 + 72) = *(v13 + 16);
  *(v0 + 120) = v16;
  *(v0 + 104) = v14;
  *(v0 + 88) = v15;
  v17 = *(v13 + 16);
  v18 = *(v13 + 24);
  v19 = *(v13 + 32);
  v20 = *(v13 + 40);
  v21 = *(v13 + 48);
  v22 = *(v13 + 56);
  *(v13 + 16) = v12;
  *(v13 + 24) = 0u;
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0;
  v23 = *(v13 + 64);
  *(v13 + 64) = 16;
  v24 = v12;
  v25 = v12;
  outlined init with copy of StartSharingConfirmationFlow.State(v0 + 72, v0 + 296);
  outlined consume of StartSharingConfirmationFlow.State(v17, v18, v19, v20, v21, v22, v23);
  StartSharingConfirmationFlow.state.didset(v0 + 72);
  outlined destroy of StartSharingConfirmationFlow.State(v0 + 72);

  v26 = *(v0 + 464);
  static ExecuteResponse.ongoing(requireInput:)();
  v27 = *(v0 + 8);

  return v27();
}

uint64_t StartSharingConfirmationFlow.makeConfirmationContext()(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = type metadata accessor for UsoEntity_common_AttachmentType.DefinedValues();
  v2[14] = v3;
  v4 = *(v3 - 8);
  v2[15] = v4;
  v5 = *(v4 + 64) + 15;
  v2[16] = swift_task_alloc();
  v6 = type metadata accessor for ShareTarget();
  v2[17] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](StartSharingConfirmationFlow.makeConfirmationContext(), 0, 0);
}

uint64_t StartSharingConfirmationFlow.makeConfirmationContext()()
{
  v1 = v0[19];
  v2 = v0[13];
  outlined init with copy of ResponseExecuting(v2 + 72, (v0 + 2));
  outlined init with copy of Responses.StartSharing.ConfirmShareEntireScreen(v2 + OBJC_IVAR____TtC19SiriExpanseInternal28StartSharingConfirmationFlow_requestedTarget, v1, type metadata accessor for ShareTarget);
  v3 = *(v2 + OBJC_IVAR____TtC19SiriExpanseInternal28StartSharingConfirmationFlow_resolvedTarget);
  v4 = *(v2 + OBJC_IVAR____TtC19SiriExpanseInternal28StartSharingConfirmationFlow_resolvedTarget + 8);
  v5 = *(v2 + OBJC_IVAR____TtC19SiriExpanseInternal28StartSharingConfirmationFlow_recipients);
  outlined init with copy of ResponseExecuting(v2 + OBJC_IVAR____TtC19SiriExpanseInternal28StartSharingConfirmationFlow_call, (v0 + 7));

  specialized static ConfirmationContext.getCurrentlySharedTarget(in:)(v0 + 7);
  v7 = v6;
  v8 = v0[19];
  if (!v4)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
    outlined destroy of Responses.StartSharing.ConfirmShareEntireScreen(v8, type metadata accessor for ShareTarget);
    v33 = 0;
    v35 = 0;
    v13 = v7 & 1;
    v14 = 64;
    v3 = v5;
    goto LABEL_5;
  }

  v9 = v0[17];
  outlined init with copy of Responses.StartSharing.ConfirmShareEntireScreen(v0[19], v0[18], type metadata accessor for ShareTarget);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = v0[18];
  v12 = v0[19];
  if (EnumCaseMultiPayload)
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
    outlined destroy of Responses.StartSharing.ConfirmShareEntireScreen(v12, type metadata accessor for ShareTarget);
    outlined destroy of Responses.StartSharing.ConfirmShareEntireScreen(v11, type metadata accessor for ShareTarget);
    v33 = 0;
    v35 = v5;
    v13 = v4;
    v4 = v7 & 1;
    v14 = 0x80;
LABEL_5:
    v5 = 0;
    goto LABEL_11;
  }

  v35 = v3;
  v15 = v0[15];
  v16 = v0[16];
  v17 = v0[14];
  v34 = v17;
  v18 = *v11;

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology9UsoEntityC_AA0cD22_common_AttachmentTypeC13DefinedValuesO4typetMd, &_s12SiriOntology9UsoEntityC_AA0cD22_common_AttachmentTypeC13DefinedValuesO4typetMR);
  (*(v15 + 32))(v16, &v11[*(v19 + 48)], v17);
  v21 = v0[5];
  v20 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v21);
  v22 = (*(v20 + 224))(v21, v20);
  LOBYTE(v21) = specialized SharePlayHelper.appSupportsSharePlay(_:)(v35, v4);
  v23 = UsoEntity_common_AttachmentType.DefinedValues.preferSharingInCall.getter();
  (*(v15 + 8))(v16, v34);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  outlined destroy of Responses.StartSharing.ConfirmShareEntireScreen(v12, type metadata accessor for ShareTarget);
  v3 = 0;
  v14 = v7 & 1;
  v24 = 256;
  if ((v21 & 1) == 0)
  {
    v24 = 0;
  }

  v25 = v24 & 0xFFFFFFFFFFFFFFFELL | v22 & 1;
  v26 = 0x10000;
  if ((v23 & 1) == 0)
  {
    v26 = 0;
  }

  v33 = v25 | v26;
  v13 = 0xE000000000000000;
LABEL_11:
  v28 = v0[18];
  v27 = v0[19];
  v29 = v0[16];
  v30 = v0[12];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  *v30 = v3;
  *(v30 + 8) = v13;
  *(v30 + 16) = v35;
  *(v30 + 24) = v4;
  *(v30 + 32) = v33;
  *(v30 + 40) = v5;
  *(v30 + 48) = v14;
  v31 = v0[1];

  return v31();
}

uint64_t StartSharingConfirmationFlow.executeYesNoConfirmationFlow(with:onYes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v52 = a2;
  v53 = a3;
  v54 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v51 - v9;
  started = type metadata accessor for Responses.StartSharing.ShareRequestCancelled(0);
  v12 = *(*(started - 8) + 64);
  v13 = MEMORY[0x28223BE20](started);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v15 = -101;
  v16 = &v15[*(v13 + 20)];
  static DialogPhase.canceled.getter();
  v64[3] = started;
  v64[4] = &protocol witness table for Responses.StartSharing.ShareRequestCancelled;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v64);
  v51 = type metadata accessor for Responses.StartSharing.ShareRequestCancelled;
  outlined init with copy of Responses.StartSharing.ConfirmShareEntireScreen(v15, boxed_opaque_existential_1, type metadata accessor for Responses.StartSharing.ShareRequestCancelled);
  v63[3] = started;
  v63[4] = &protocol witness table for Responses.StartSharing.ShareRequestCancelled;
  v18 = __swift_allocate_boxed_opaque_existential_1(v63);
  outlined init with copy of Responses.StartSharing.ConfirmShareEntireScreen(v15, v18, type metadata accessor for Responses.StartSharing.ShareRequestCancelled);
  outlined init with copy of ResponseExecuting(a1, v62);
  outlined init with copy of SharingResponse?(v64, v60);
  outlined init with copy of SharingResponse?(v63, v58);
  outlined init with copy of ResponseExecuting(v5 + OBJC_IVAR____TtC19SiriExpanseInternal28StartSharingConfirmationFlow_responseExecutor, v56);
  v19 = v57;
  v20 = __swift_mutable_project_boxed_opaque_existential_1(v56, v57);
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = (&v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  v25 = *v23;
  v26 = type metadata accessor for ResponseExecutor();
  v55[3] = v26;
  v55[4] = &protocol witness table for ResponseExecutor;
  v55[0] = v25;
  v27 = type metadata accessor for SimpleSharingYesNoPromptFlowStrategy();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  v30 = swift_allocObject();
  v31 = __swift_mutable_project_boxed_opaque_existential_1(v55, v26);
  v32 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v34 = (&v51 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v34);
  v36 = *v34;
  *(v30 + 160) = v26;
  *(v30 + 168) = &protocol witness table for ResponseExecutor;
  *(v30 + 136) = v36;
  v37 = *MEMORY[0x277D5BED0];
  v38 = type metadata accessor for ConfirmationResponse();
  v39 = *(v38 - 8);
  (*(v39 + 104))(v10, v37, v38);
  (*(v39 + 56))(v10, 0, 1, v38);
  SimpleConfirmationResponseProvider.init(_:)();
  outlined init with take of SharingResponse(v62, v30 + 16);
  v40 = v60[1];
  *(v30 + 56) = v60[0];
  *(v30 + 72) = v40;
  *(v30 + 88) = v61;
  v41 = v58[1];
  *(v30 + 96) = v58[0];
  *(v30 + 112) = v41;
  *(v30 + 128) = v59;
  __swift_destroy_boxed_opaque_existential_1Tm(v55);
  __swift_destroy_boxed_opaque_existential_1Tm(v56);
  outlined init with copy of ResponseExecuting(v5 + OBJC_IVAR____TtC19SiriExpanseInternal28StartSharingConfirmationFlow_outputPublisher, v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal32PromptForConfirmationFlowWrapperCyAA018SimpleSharingYesNodG8StrategyCGMd, &_s19SiriExpanseInternal32PromptForConfirmationFlowWrapperCyAA018SimpleSharingYesNodG8StrategyCGMR);
  v42 = swift_allocObject();
  *(v42 + 16) = v30;
  outlined init with copy of ResponseExecuting(v62, v60);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow021PromptForConfirmationC5AsyncCyytAA06SimpleF16ResponseProviderVGMd, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCyytAA06SimpleF16ResponseProviderVGMR);
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  swift_allocObject();
  lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type SimpleSharingYesNoPromptFlowStrategy and conformance SimpleSharingYesNoPromptFlowStrategy, type metadata accessor for SimpleSharingYesNoPromptFlowStrategy);

  v46 = PromptForConfirmationFlowAsync.init<A>(itemToConfirm:strategy:outputPublisher:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v62);
  *(v42 + 24) = v46;
  v62[0] = v42;
  v47 = swift_allocObject();
  v48 = v52;
  v49 = v53;
  v47[2] = v5;
  v47[3] = v48;
  v47[4] = v49;
  lazy protocol witness table accessor for type PromptForConfirmationFlowWrapper<SimpleSharingYesNoPromptFlowStrategy> and conformance PromptForConfirmationFlowWrapper<A>();

  static ExecuteResponse.ongoing<A>(next:childCompletion:)();

  outlined destroy of Responses.StartSharing.ConfirmShareEntireScreen(v15, v51);

  outlined destroy of SharingResponse?(v63, &_s19SiriExpanseInternal15SharingResponse_pSgMd, &_s19SiriExpanseInternal15SharingResponse_pSgMR);
  return outlined destroy of SharingResponse?(v64, &_s19SiriExpanseInternal15SharingResponse_pSgMd, &_s19SiriExpanseInternal15SharingResponse_pSgMR);
}

uint64_t StartSharingConfirmationFlow.confirmationFlowForScreenContext(_:)@<X0>(unint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  started = type metadata accessor for Responses.StartSharing.ConfirmReadyToShare(0);
  v9 = *(*(started - 1) + 64);
  MEMORY[0x28223BE20](started);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for Responses.StartSharing.ConfirmShareWithEveryoneInCall(0);
  v12 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v58 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Locale();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v62 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (a1)
    {
      v63[0] = MEMORY[0x277D84F90];
      v55 = v4;
      v54 = a3;
      if (a1 >> 62)
      {
LABEL_29:
        v61 = __CocoaSet.count.getter();
      }

      else
      {
        v61 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v17 = 0;
      v60 = a1 & 0xC000000000000001;
      v56 = MEMORY[0x277D84F90];
      while (v61 != v17)
      {
        if (v60)
        {
          v18 = MEMORY[0x26D5ECB50](v17, a1);
        }

        else
        {
          if (v17 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v18 = *(a1 + 8 * v17 + 32);
        }

        v19 = v18;
        if (__OFADD__(v17, 1))
        {
          __break(1u);
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        v59 = v17 + 1;
        type metadata accessor for DialogPerson();
        v20 = v19;
        static Device.current.getter();
        __swift_project_boxed_opaque_existential_1(&v64, *(&v65 + 1));
        dispatch thunk of DeviceState.siriLocale.getter();
        __swift_destroy_boxed_opaque_existential_1Tm(&v64);
        v21 = DialogPerson.__allocating_init(person:locale:useConversationalName:)();

        ++v17;
        if (v21)
        {
          MEMORY[0x26D5EC910](v22);
          if (*((v63[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v23 = *((v63[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v56 = v63[0];
          v17 = v59;
        }
      }

      v33 = v57;
      v34 = v58;
      *v58 = -115;
      v35 = v34 + v33[5];
      static DialogPhase.clarification.getter();
      v36 = v33[6];
      static SharingNLContextProvider.makeNLContextUpdateForConfirmationPrompt(sharingAction:)(0);
      v37 = type metadata accessor for NLContextUpdate();
      (*(*(v37 - 8) + 56))(v34 + v36, 0, 1, v37);
      v38 = v34 + v33[7];
      *v38 = 0;
      *(v38 + 8) = 0;
      *(v38 + 16) = 0;
      *(v38 + 24) = v56;
      *(&v65 + 1) = v33;
      *&v66 = &protocol witness table for Responses.StartSharing.ConfirmShareWithEveryoneInCall;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v64);
      v40 = type metadata accessor for Responses.StartSharing.ConfirmShareWithEveryoneInCall;
      outlined init with copy of Responses.StartSharing.ConfirmShareEntireScreen(v34, boxed_opaque_existential_1, type metadata accessor for Responses.StartSharing.ConfirmShareWithEveryoneInCall);
      v41 = v55;

      StartSharingConfirmationFlow.executeYesNoConfirmationFlow(with:onYes:)(&v64, partial apply for closure #2 in StartSharingConfirmationFlow.confirmationFlowForScreenContext(_:), v41, v54);

      v42 = v34;
    }

    else
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      __swift_project_value_buffer(v43, static Logger.default);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = a3;
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        *&v64 = v48;
        *v47 = 136315138;
        if (one-time initialization token for typeName != -1)
        {
          swift_once();
        }

        *(v47 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingConfirmationFlow.typeName, unk_2800C0490, &v64);
        _os_log_impl(&dword_266B9E000, v44, v45, "%s: Confirming with the user that they're ready to share their screen", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v48);
        MEMORY[0x26D5ED340](v48, -1, -1);
        MEMORY[0x26D5ED340](v47, -1, -1);

        a3 = v46;
      }

      else
      {
      }

      *v11 = -118;
      v49 = &v11[started[5]];
      static DialogPhase.clarification.getter();
      v50 = started[6];
      static SharingNLContextProvider.makeNLContextUpdateForConfirmationPrompt(sharingAction:)(0);
      v51 = type metadata accessor for NLContextUpdate();
      (*(*(v51 - 8) + 56))(&v11[v50], 0, 1, v51);
      v52 = &v11[started[7]];
      *v52 = 1;
      *(v52 + 2) = 0;
      *(v52 + 3) = 0;
      *(v52 + 1) = 0;
      *(&v65 + 1) = started;
      *&v66 = &protocol witness table for Responses.StartSharing.ConfirmReadyToShare;
      v53 = __swift_allocate_boxed_opaque_existential_1(&v64);
      v40 = type metadata accessor for Responses.StartSharing.ConfirmReadyToShare;
      outlined init with copy of Responses.StartSharing.ConfirmShareEntireScreen(v11, v53, type metadata accessor for Responses.StartSharing.ConfirmReadyToShare);

      StartSharingConfirmationFlow.executeYesNoConfirmationFlow(with:onYes:)(&v64, partial apply for closure #1 in StartSharingConfirmationFlow.confirmSingleWindowSharingRequestOnPlatformWithoutSupport(currentlySharedTarget:requestedRecipients:), v4, a3);

      v42 = v11;
    }

    outlined destroy of Responses.StartSharing.ConfirmShareEntireScreen(v42, v40);
    return __swift_destroy_boxed_opaque_existential_1Tm(&v64);
  }

  else
  {
    v24 = *(v4 + 32);
    v64 = *(v4 + 16);
    v65 = v24;
    v66 = *(v4 + 48);
    v67 = *(v4 + 64);
    v25 = v67;
    v26 = *(v4 + 16);
    v27 = *(v4 + 24);
    v28 = *(v4 + 32);
    v29 = *(v4 + 40);
    v30 = *(v4 + 48);
    v31 = *(v4 + 56);
    *(v4 + 16) = 1;
    *(v4 + 24) = 0u;
    *(v4 + 40) = 0u;
    *(v4 + 56) = 0;
    *(v4 + 64) = 32;
    outlined init with copy of StartSharingConfirmationFlow.State(&v64, v63);
    outlined consume of StartSharingConfirmationFlow.State(v26, v27, v28, v29, v30, v31, v25);
    StartSharingConfirmationFlow.state.didset(&v64);
    outlined destroy of StartSharingConfirmationFlow.State(&v64);
    return static ExecuteResponse.complete()();
  }
}

uint64_t StartSharingConfirmationFlow.confirmSingleWindowSharingRequestOnPlatformWithoutSupport(currentlySharedTarget:requestedRecipients:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  started = type metadata accessor for Responses.StartSharing.ConfirmShareEntireScreen(0);
  v8 = *(*(started - 8) + 64);
  v9 = MEMORY[0x28223BE20](started);
  v11 = &v27[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (a1)
  {
    *v11 = -117;
    v12 = &v11[*(v9 + 20)];
    v13 = v9;
    static DialogPhase.clarification.getter();
    v14 = *(v13 + 24);
    static SharingNLContextProvider.makeNLContextUpdateForConfirmationPrompt(sharingAction:)(0);
    v15 = type metadata accessor for NLContextUpdate();
    (*(*(v15 - 8) + 56))(&v11[v14], 0, 1, v15);
    v11[*(v13 + 28)] = a2 != 0;
    *(&v29 + 1) = v13;
    *&v30 = &protocol witness table for Responses.StartSharing.ConfirmShareEntireScreen;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v28);
    outlined init with copy of Responses.StartSharing.ConfirmShareEntireScreen(v11, boxed_opaque_existential_1, type metadata accessor for Responses.StartSharing.ConfirmShareEntireScreen);

    StartSharingConfirmationFlow.executeYesNoConfirmationFlow(with:onYes:)(&v28, partial apply for closure #1 in StartSharingConfirmationFlow.confirmSingleWindowSharingRequestOnPlatformWithoutSupport(currentlySharedTarget:requestedRecipients:), v3, a3);

    outlined destroy of Responses.StartSharing.ConfirmShareEntireScreen(v11, type metadata accessor for Responses.StartSharing.ConfirmShareEntireScreen);
    return __swift_destroy_boxed_opaque_existential_1Tm(&v28);
  }

  else
  {
    v18 = *(v3 + 32);
    v28 = *(v3 + 16);
    v29 = v18;
    v30 = *(v3 + 48);
    v31 = *(v3 + 64);
    v19 = v31;
    v20 = *(v3 + 16);
    v21 = *(v3 + 24);
    v22 = *(v3 + 32);
    v23 = *(v3 + 40);
    v24 = *(v3 + 48);
    v25 = *(v3 + 56);
    *(v3 + 16) = 5;
    *(v3 + 24) = 0u;
    *(v3 + 40) = 0u;
    *(v3 + 56) = 0;
    *(v3 + 64) = 32;
    outlined init with copy of StartSharingConfirmationFlow.State(&v28, v27);
    outlined consume of StartSharingConfirmationFlow.State(v20, v21, v22, v23, v24, v25, v19);
    StartSharingConfirmationFlow.state.didset(&v28);
    outlined destroy of StartSharingConfirmationFlow.State(&v28);
    return static ExecuteResponse.complete()();
  }
}

uint64_t closure #2 in StartSharingConfirmationFlow.confirmationFlowForScreenContext(_:)(uint64_t a1)
{
  v1 = *(a1 + 32);
  v11[0] = *(a1 + 16);
  v11[1] = v1;
  v11[2] = *(a1 + 48);
  v12 = *(a1 + 64);
  v2 = v12;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *(a1 + 16) = 3;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 32;
  outlined init with copy of StartSharingConfirmationFlow.State(v11, v10);
  outlined consume of StartSharingConfirmationFlow.State(v3, v4, v5, v6, v7, v8, v2);
  StartSharingConfirmationFlow.state.didset(v11);
  return outlined destroy of StartSharingConfirmationFlow.State(v11);
}

uint64_t StartSharingConfirmationFlow.__deallocating_deinit()
{
  outlined consume of StartSharingConfirmationFlow.State(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));
  outlined destroy of Responses.StartSharing.ConfirmShareEntireScreen(v0 + OBJC_IVAR____TtC19SiriExpanseInternal28StartSharingConfirmationFlow_requestedTarget, type metadata accessor for ShareTarget);
  v1 = *(v0 + OBJC_IVAR____TtC19SiriExpanseInternal28StartSharingConfirmationFlow_resolvedTarget + 8);

  v2 = *(v0 + OBJC_IVAR____TtC19SiriExpanseInternal28StartSharingConfirmationFlow_recipients);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC19SiriExpanseInternal28StartSharingConfirmationFlow_call));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC19SiriExpanseInternal28StartSharingConfirmationFlow_responseExecutor));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC19SiriExpanseInternal28StartSharingConfirmationFlow_outputPublisher));
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for StartSharingConfirmationFlow()
{
  result = type metadata singleton initialization cache for StartSharingConfirmationFlow;
  if (!type metadata singleton initialization cache for StartSharingConfirmationFlow)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for StartSharingConfirmationFlow()
{
  result = type metadata accessor for ShareTarget();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19SiriExpanseInternal28StartSharingConfirmationFlowC5StateO(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (((v1 >> 4) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return (v1 >> 4) & 3;
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for StartSharingConfirmationFlow.State(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 32) >> 2) & 0x3F80 | (*(a1 + 32) >> 1) | (*(a1 + 32) >> 3) & 0x1FC000 | (*(a1 + 32) >> 4) & 0xFFE00000;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double storeEnumTagSinglePayload for StartSharingConfirmationFlow.State(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 40) = 0;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 48) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 49) = 1;
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
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = (4 * -a2) & 0xFE00 | (2 * (-a2 & 0x7FLL)) & 0xFFFFFFF00101FFFFLL | (((-a2 >> 14) & 0x7F) << 17) & 0xFFFFFFF001FFFFFFLL | ((-a2 >> 21) << 25);
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      return result;
    }

    *(a1 + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for StartSharingConfirmationFlow.State(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 48) & 0xC1 | (16 * a2);
    *(result + 32) &= 0x1010101uLL;
    *(result + 48) = v2;
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    *(result + 48) = 32;
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for StartSharingConfirmationFlow.State(uint64_t a1)
{
  result = lazy protocol witness table accessor for type StartSharingConfirmationFlow.State and conformance StartSharingConfirmationFlow.State();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type StartSharingConfirmationFlow.State and conformance StartSharingConfirmationFlow.State()
{
  result = lazy protocol witness table cache variable for type StartSharingConfirmationFlow.State and conformance StartSharingConfirmationFlow.State;
  if (!lazy protocol witness table cache variable for type StartSharingConfirmationFlow.State and conformance StartSharingConfirmationFlow.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartSharingConfirmationFlow.State and conformance StartSharingConfirmationFlow.State);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartSharingConfirmationFlow.State and conformance StartSharingConfirmationFlow.State;
  if (!lazy protocol witness table cache variable for type StartSharingConfirmationFlow.State and conformance StartSharingConfirmationFlow.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartSharingConfirmationFlow.State and conformance StartSharingConfirmationFlow.State);
  }

  return result;
}

uint64_t protocol witness for Flow.execute() in conformance StartSharingConfirmationFlow(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of SharingPromptFlowStrategy.makePrompt();

  return StartSharingConfirmationFlow.execute()(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance StartSharingConfirmationFlow@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = StartSharingConfirmationFlow.exitValue.getter();
  *a1 = result;
  return result;
}

uint64_t specialized closure #1 in PromptManaging.executeYesNoConfirmationFlow(withPrompt:confirmationRejectedDialog:flowCancelledDialog:onYes:)(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t *a3, uint64_t a4)
{

  specialized PromptManaging.processPromptFlowExitValue<A>(_:onValueReceived:)(a1, a2, a3, a4, a2);
}

uint64_t specialized StartSharingConfirmationFlow.on(input:)(uint64_t a1)
{
  v2 = type metadata accessor for Input();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.default);
  (*(v3 + 16))(v6, a1, v2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315394;
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingConfirmationFlow.typeName, unk_2800C0490, &v18);
    *(v10 + 12) = 2080;
    lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type Input and conformance Input, MEMORY[0x277D5C118]);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    (*(v3 + 8))(v6, v2);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v18);

    *(v10 + 14) = v15;
    _os_log_impl(&dword_266B9E000, v8, v9, "%s: received input %s - this flow should never receive input, ignoring it...", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D5ED340](v11, -1, -1);
    MEMORY[0x26D5ED340](v10, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  return 0;
}

void outlined consume of StartSharingConfirmationFlow.State(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v7 = (a7 >> 4) & 3;
  if (v7 == 1)
  {
  }

  else if (!v7)
  {
    outlined consume of ConfirmationContext(a1, a2, a3, a4, a5, a6, a7);
  }
}

uint64_t outlined consume of ConfirmationContext(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if ((a7 >> 6) > 1u)
  {
    if (a7 >> 6 != 2)
    {
      return result;
    }

    goto LABEL_5;
  }

  if (!(a7 >> 6))
  {

LABEL_5:
  }
}

uint64_t lazy protocol witness table accessor for type Input and conformance Input(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_266BB3D30()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t lazy protocol witness table accessor for type PromptForConfirmationFlowWrapper<SimpleSharingYesNoPromptFlowStrategy> and conformance PromptForConfirmationFlowWrapper<A>()
{
  result = lazy protocol witness table cache variable for type PromptForConfirmationFlowWrapper<SimpleSharingYesNoPromptFlowStrategy> and conformance PromptForConfirmationFlowWrapper<A>;
  if (!lazy protocol witness table cache variable for type PromptForConfirmationFlowWrapper<SimpleSharingYesNoPromptFlowStrategy> and conformance PromptForConfirmationFlowWrapper<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s19SiriExpanseInternal32PromptForConfirmationFlowWrapperCyAA018SimpleSharingYesNodG8StrategyCGMd, &_s19SiriExpanseInternal32PromptForConfirmationFlowWrapperCyAA018SimpleSharingYesNodG8StrategyCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptForConfirmationFlowWrapper<SimpleSharingYesNoPromptFlowStrategy> and conformance PromptForConfirmationFlowWrapper<A>);
  }

  return result;
}

uint64_t outlined init with copy of Responses.StartSharing.ConfirmShareEntireScreen(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Responses.StartSharing.ConfirmShareEntireScreen(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined copy of StartSharingConfirmationFlow.State(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v7 = (a7 >> 4) & 3;
  if (v7 == 1)
  {
    return a1;
  }

  if (!v7)
  {
    return outlined copy of ConfirmationContext(a1, a2, a3, a4, a5, a6, a7);
  }

  return a1;
}

uint64_t outlined copy of ConfirmationContext(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if ((a7 >> 6) > 1u)
  {
    if (a7 >> 6 != 2)
    {
      return result;
    }

    goto LABEL_5;
  }

  if (!(a7 >> 6))
  {

LABEL_5:
  }
}

unint64_t lazy protocol witness table accessor for type ExpanseError and conformance ExpanseError()
{
  result = lazy protocol witness table cache variable for type ExpanseError and conformance ExpanseError;
  if (!lazy protocol witness table cache variable for type ExpanseError and conformance ExpanseError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExpanseError and conformance ExpanseError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExpanseError and conformance ExpanseError;
  if (!lazy protocol witness table cache variable for type ExpanseError and conformance ExpanseError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExpanseError and conformance ExpanseError);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19SiriExpanseInternal28StartSharingConfirmationFlowC0F6ResultO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for StartSharingConfirmationFlow.ConfirmationResult(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 8))
  {
    return (*a1 + 2147483643);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for StartSharingConfirmationFlow.ConfirmationResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for StartSharingConfirmationFlow.ConfirmationResult(void *result, int a2)
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

uint64_t getEnumTagSinglePayload for Confidence(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
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

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = v7 - 2;
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

uint64_t storeEnumTagSinglePayload for Confidence(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
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

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t getEnumTag for Confidence(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for Confidence(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t Confidence.description.getter(char a1)
{
  if (a1 == 2)
  {
    return 0x6E656469666E6F43;
  }

  _StringGuts.grow(_:)(26);

  if (a1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = 0xD00000000000001FLL;
  }

  if (a1)
  {
    v4 = "conflictingAppNameAndEntityType";
  }

  else
  {
    v4 = "ation";
  }

  MEMORY[0x26D5EC8A0](v3, v4 | 0x8000000000000000);

  MEMORY[0x26D5EC8A0](41, 0xE100000000000000);
  return 0xD000000000000017;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Confidence.LowConfidenceReason()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Confidence.LowConfidenceReason()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Confidence.LowConfidenceReason()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Confidence.LowConfidenceReason@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Confidence.LowConfidenceReason.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance Confidence.LowConfidenceReason(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000012;
  }

  else
  {
    v2 = 0xD00000000000001FLL;
  }

  if (*v1)
  {
    v3 = "conflictingAppNameAndEntityType";
  }

  else
  {
    v3 = "ation";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance Confidence.LowConfidenceReason()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 0xD00000000000001FLL;
  }

  *v0;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Confidence.LowConfidenceReason(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v4 = 0xD00000000000001FLL;
  }

  if (v3)
  {
    v5 = "ation";
  }

  else
  {
    v5 = "conflictingAppNameAndEntityType";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD000000000000012;
  }

  else
  {
    v7 = 0xD00000000000001FLL;
  }

  if (*a2)
  {
    v8 = "conflictingAppNameAndEntityType";
  }

  else
  {
    v8 = "ation";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

BOOL specialized static Confidence.== infix(_:_:)(char a1, char a2)
{
  if (a1 == 2)
  {
    return a2 == 2;
  }

  if (a2 == 2)
  {
    return 0;
  }

  v3 = (a1 & 1) == 0;
  if (a1)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v4 = 0xD00000000000001FLL;
  }

  if (v3)
  {
    v5 = "ation";
  }

  else
  {
    v5 = "conflictingAppNameAndEntityType";
  }

  if (a2)
  {
    v6 = 0xD000000000000012;
  }

  else
  {
    v6 = 0xD00000000000001FLL;
  }

  if (a2)
  {
    v7 = "conflictingAppNameAndEntityType";
  }

  else
  {
    v7 = "ation";
  }

  if (v4 == v6 && (v5 | 0x8000000000000000) == (v7 | 0x8000000000000000))
  {

    return 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return v8 & 1;
  }
}

unint64_t lazy protocol witness table accessor for type Confidence.LowConfidenceReason and conformance Confidence.LowConfidenceReason()
{
  result = lazy protocol witness table cache variable for type Confidence.LowConfidenceReason and conformance Confidence.LowConfidenceReason;
  if (!lazy protocol witness table cache variable for type Confidence.LowConfidenceReason and conformance Confidence.LowConfidenceReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Confidence.LowConfidenceReason and conformance Confidence.LowConfidenceReason);
  }

  return result;
}

uint64_t type metadata accessor for SharingCATsSimple()
{
  result = type metadata singleton initialization cache for SharingCATsSimple;
  if (!type metadata singleton initialization cache for SharingCATsSimple)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SharingCATsSimple.__allocating_init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for CATOption();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v18 - v12;
  v14 = *(v2 + 48);
  v15 = *(v2 + 52);
  swift_allocObject();
  outlined init with copy of URL?(a1, v13);
  (*(v6 + 16))(v9, a2, v5);
  v16 = CATWrapperSimple.init(templateDir:options:globals:)();
  (*(v6 + 8))(a2, v5);
  outlined destroy of URL?(a1);
  return v16;
}

uint64_t SharingCATsSimple.__allocating_init(useResponseMode:options:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CATOption();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 48);
  v10 = *(v2 + 52);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v4);
  v11 = CATWrapperSimple.init(useResponseMode:options:)();
  (*(v5 + 8))(a2, v4);
  return v11;
}

uint64_t SharingCATsSimple.__deallocating_deinit()
{
  v0 = CATWrapperSimple.deinit();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of URL?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ShareTarget()
{
  result = type metadata singleton initialization cache for ShareTarget;
  if (!type metadata singleton initialization cache for ShareTarget)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for ShareTarget()
{
  type metadata accessor for (UsoEntity, type: UsoEntity_common_AttachmentType.DefinedValues)();
  if (v0 <= 0x3F)
  {
    type metadata accessor for (forAppWithBundleId: String?)();
    if (v1 <= 0x3F)
    {
      type metadata accessor for (named: String)();
      if (v2 <= 0x3F)
      {
        type metadata accessor for (bundleId: String, confidence: Confidence)();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for (UsoEntity, type: UsoEntity_common_AttachmentType.DefinedValues)()
{
  if (!lazy cache variable for type metadata for (UsoEntity, type: UsoEntity_common_AttachmentType.DefinedValues))
  {
    type metadata accessor for UsoEntity();
    type metadata accessor for UsoEntity_common_AttachmentType.DefinedValues();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (UsoEntity, type: UsoEntity_common_AttachmentType.DefinedValues));
    }
  }
}

void type metadata accessor for (forAppWithBundleId: String?)()
{
  if (!lazy cache variable for type metadata for (forAppWithBundleId: String?))
  {
    type metadata accessor for String?();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (forAppWithBundleId: String?));
    }
  }
}

void type metadata accessor for String?()
{
  if (!lazy cache variable for type metadata for String?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for String?);
    }
  }
}

uint64_t type metadata accessor for (named: String)()
{
  result = lazy cache variable for type metadata for (named: String);
  if (!lazy cache variable for type metadata for (named: String))
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &lazy cache variable for type metadata for (named: String));
  }

  return result;
}

void type metadata accessor for (bundleId: String, confidence: Confidence)()
{
  if (!lazy cache variable for type metadata for (bundleId: String, confidence: Confidence))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (bundleId: String, confidence: Confidence));
    }
  }
}

uint64_t specialized DefaultStringInterpolation.appendInterpolation<A>(_:)(unsigned __int8 a1)
{
  v1 = a1;
  if (a1 == 4)
  {
    v2 = 0x8000000266BEEAF0;
    v3 = 0xD00000000000001ELL;
  }

  else
  {
    _StringGuts.grow(_:)(36);

    v4 = 0xEA0000000000646CLL;
    v5 = 0x6F486E4F6C6C6163;
    v6 = 0x8000000266BEE350;
    v7 = 0xD000000000000013;
    if (v1 == 2)
    {
      v7 = 0xD000000000000010;
    }

    else
    {
      v6 = 0x8000000266BEE370;
    }

    if (!v1)
    {
      v5 = 0xD000000000000018;
      v4 = 0x8000000266BEE320;
    }

    if (v1 <= 1)
    {
      v8 = v5;
    }

    else
    {
      v8 = v7;
    }

    if (v1 <= 1)
    {
      v9 = v4;
    }

    else
    {
      v9 = v6;
    }

    MEMORY[0x26D5EC8A0](v8, v9);

    MEMORY[0x26D5EC8A0](41, 0xE100000000000000);
    v3 = 0xD000000000000021;
    v2 = 0x8000000266BEEB10;
  }

  MEMORY[0x26D5EC8A0](v3, v2);
}

uint64_t specialized DefaultStringInterpolation.appendInterpolation<A>(_:)(char a1)
{
  if (a1 == 2)
  {
    v1 = 0xEF686769682E6563;
    v2 = 0x6E656469666E6F43;
  }

  else
  {
    _StringGuts.grow(_:)(26);

    if (a1)
    {
      v4 = 0xD000000000000012;
    }

    else
    {
      v4 = 0xD00000000000001FLL;
    }

    if (a1)
    {
      v5 = "conflictingAppNameAndEntityType";
    }

    else
    {
      v5 = "ation";
    }

    MEMORY[0x26D5EC8A0](v4, v5 | 0x8000000000000000);

    MEMORY[0x26D5EC8A0](41, 0xE100000000000000);
    v2 = 0xD000000000000017;
    v1 = 0x8000000266BEE940;
  }

  MEMORY[0x26D5EC8A0](v2, v1);
}

uint64_t specialized DefaultStringInterpolation.appendInterpolation<A>(_:)(uint64_t a1)
{
  v1 = 0xD000000000000013;
  if (a1)
  {
    _StringGuts.grow(_:)(33);

    v3 = type metadata accessor for INPerson();
    v4 = MEMORY[0x26D5EC930](a1, v3);
    MEMORY[0x26D5EC8A0](v4);

    MEMORY[0x26D5EC8A0](41, 0xE100000000000000);
    v1 = 0xD00000000000001ELL;
    v5 = 0x8000000266BEEAB0;
  }

  else
  {
    v5 = 0x8000000266BEEAD0;
  }

  MEMORY[0x26D5EC8A0](v1, v5);
}

unint64_t ShareTarget.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for UsoEntity_common_AttachmentType.DefinedValues();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ShareTarget();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ShareTarget(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v16 = *v10;
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology9UsoEntityC_AA0cD22_common_AttachmentTypeC13DefinedValuesO4typetMd, &_s12SiriOntology9UsoEntityC_AA0cD22_common_AttachmentTypeC13DefinedValuesO4typetMR);
      (*(v3 + 32))(v6, &v10[*(v17 + 48)], v2);
      v24 = 0;
      v25 = 0xE000000000000000;
      _StringGuts.grow(_:)(42);
      MEMORY[0x26D5EC8A0](0xD00000000000001DLL, 0x8000000266BEEA90);
      v23[0] = v16;
      type metadata accessor for UsoEntity();
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x26D5EC8A0](0x203A65707974202CLL, 0xE800000000000000);
      v18 = UsoEntity_common_AttachmentType.DefinedValues.rawValue.getter();
      MEMORY[0x26D5EC8A0](v18);

      MEMORY[0x26D5EC8A0](41, 0xE100000000000000);

      v19 = v24;
      (*(v3 + 8))(v6, v2);
      return v19;
    }

    v12 = *v10;
    v13 = *(v10 + 1);
    v24 = 0;
    v25 = 0xE000000000000000;
    if (EnumCaseMultiPayload == 1)
    {
      _StringGuts.grow(_:)(52);
      MEMORY[0x26D5EC8A0](0xD000000000000031, 0x8000000266BEEA50);
      v23[0] = v12;
      v23[1] = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v14 = String.init<A>(describing:)();
      MEMORY[0x26D5EC8A0](v14);
    }

    else
    {
      _StringGuts.grow(_:)(37);

      v24 = 0xD000000000000022;
      v25 = 0x8000000266BEEA20;
      MEMORY[0x26D5EC8A0](v12, v13);
    }

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v20 = *v10;
    v21 = *(v10 + 1);
    v22 = v10[16];
    v24 = 0;
    v25 = 0xE000000000000000;
    _StringGuts.grow(_:)(45);
    MEMORY[0x26D5EC8A0](0xD00000000000001ALL, 0x8000000266BEEA00);
    MEMORY[0x26D5EC8A0](v20, v21);

    MEMORY[0x26D5EC8A0](0x6469666E6F63202CLL, 0xEE00203A65636E65);
    specialized DefaultStringInterpolation.appendInterpolation<A>(_:)(v22);
LABEL_12:
    MEMORY[0x26D5EC8A0](41, 0xE100000000000000);
    return v24;
  }

  if (EnumCaseMultiPayload == 4)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0xD000000000000010;
  }
}

unint64_t type metadata accessor for INPerson()
{
  result = lazy cache variable for type metadata for INPerson;
  if (!lazy cache variable for type metadata for INPerson)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for INPerson);
  }

  return result;
}

uint64_t specialized static ShareTarget.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v88 = a2;
  v3 = type metadata accessor for ShareTarget();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v79 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v81 = &v79 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v80 = &v79 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v82 = &v79 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v83 = &v79 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v85 = &v79 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v84 = &v79 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = (&v79 - v20);
  v22 = MEMORY[0x28223BE20](v19);
  v86 = &v79 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = (&v79 - v25);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = (&v79 - v28);
  MEMORY[0x28223BE20](v27);
  v31 = &v79 - v30;
  v32 = type metadata accessor for UsoEntity_common_AttachmentType.DefinedValues();
  v87 = *(v32 - 8);
  v33 = v87[8];
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v79 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v38 = &v79 - v37;
  outlined init with copy of ShareTarget(a1, v31);
  if (!swift_getEnumCaseMultiPayload())
  {
    v86 = v36;
    v44 = *v31;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology9UsoEntityC_AA0cD22_common_AttachmentTypeC13DefinedValuesO4typetMd, &_s12SiriOntology9UsoEntityC_AA0cD22_common_AttachmentTypeC13DefinedValuesO4typetMR);
    v46 = v87;
    v47 = v87[4];
    v47(v38, &v31[*(v45 + 48)], v32);
    outlined init with copy of ShareTarget(v88, v29);
    if (swift_getEnumCaseMultiPayload())
    {
      (v46[1])(v38, v32);

      v48 = v29;
LABEL_17:
      outlined destroy of ShareTarget(v48);
LABEL_18:
      v51 = 0;
      return v51 & 1;
    }

    v60 = *v29;
    v61 = v29 + *(v45 + 48);
    v62 = v86;
    v47(v86, v61, v32);
    if ((UsoEntity.isEquivalentTo(_:)() & 1) == 0)
    {

      v70 = v87[1];
      v70(v62, v32);
      v70(v38, v32);
      goto LABEL_18;
    }

    lazy protocol witness table accessor for type UsoEntity_common_AttachmentType.DefinedValues and conformance UsoEntity_common_AttachmentType.DefinedValues();
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v91 == v89 && v92 == v90)
    {
      v51 = 1;
    }

    else
    {
      v51 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v72 = v87[1];
    v72(v62, v32);
    v72(v38, v32);
    goto LABEL_42;
  }

  v39 = v88;
  outlined destroy of ShareTarget(v31);
  outlined init with copy of ShareTarget(a1, v26);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v41 = *v26;
    v40 = v26[1];
    v42 = v86;
    outlined init with copy of ShareTarget(v39, v86);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v43 = *(v42 + 1);
      if (v40)
      {
        if (v43)
        {
          if (v41 != *v42 || v40 != v43)
          {
LABEL_37:
            v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

            return v51 & 1;
          }

          goto LABEL_15;
        }

        goto LABEL_39;
      }

      if (v43)
      {
        v71 = *(v42 + 1);
LABEL_39:

        goto LABEL_18;
      }

LABEL_36:
      v51 = 1;
      return v51 & 1;
    }

    goto LABEL_16;
  }

  outlined destroy of ShareTarget(v26);
  outlined init with copy of ShareTarget(a1, v21);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v50 = *v21;
    v49 = v21[1];
    v42 = v84;
    outlined init with copy of ShareTarget(v39, v84);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
LABEL_16:

      v48 = v42;
      goto LABEL_17;
    }

    if (v50 != *v42 || v49 != *(v42 + 1))
    {
      goto LABEL_37;
    }

LABEL_15:

    v51 = 1;
    return v51 & 1;
  }

  outlined destroy of ShareTarget(v21);
  v53 = v85;
  outlined init with copy of ShareTarget(a1, v85);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    outlined destroy of ShareTarget(v53);
    v63 = v82;
    outlined init with copy of ShareTarget(a1, v82);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    outlined destroy of ShareTarget(v63);
    if (EnumCaseMultiPayload != 4 || (v65 = v80, outlined init with copy of ShareTarget(v39, v80), v66 = swift_getEnumCaseMultiPayload(), outlined destroy of ShareTarget(v65), v66 != 4))
    {
      v67 = v81;
      outlined init with copy of ShareTarget(a1, v81);
      v68 = swift_getEnumCaseMultiPayload();
      outlined destroy of ShareTarget(v67);
      if (v68 == 5)
      {
        v69 = v79;
        outlined init with copy of ShareTarget(v39, v79);
        v51 = swift_getEnumCaseMultiPayload() == 5;
        outlined destroy of ShareTarget(v69);
        return v51 & 1;
      }

      goto LABEL_18;
    }

    goto LABEL_36;
  }

  v55 = *v53;
  v54 = *(v53 + 8);
  v56 = *(v53 + 16);
  v57 = v83;
  outlined init with copy of ShareTarget(v39, v83);
  if (swift_getEnumCaseMultiPayload() != 3)
  {

    v48 = v57;
    goto LABEL_17;
  }

  v58 = *(v57 + 16);
  if (v55 == *v57 && v54 == *(v57 + 8))
  {
    v59 = *(v57 + 8);
  }

  else
  {
    v73 = *(v57 + 8);
    v74 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v74 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v51 = v58 == 2 && v56 == 2;
  if (v56 != 2 && v58 != 2)
  {
    if (v56)
    {
      v75 = 0xD000000000000012;
    }

    else
    {
      v75 = 0xD00000000000001FLL;
    }

    if (v56)
    {
      v76 = "conflictingAppNameAndEntityType";
    }

    else
    {
      v76 = "ation";
    }

    if (v58)
    {
      v77 = 0xD000000000000012;
    }

    else
    {
      v77 = 0xD00000000000001FLL;
    }

    if (v58)
    {
      v78 = "conflictingAppNameAndEntityType";
    }

    else
    {
      v78 = "ation";
    }

    if (v75 == v77 && (v76 | 0x8000000000000000) == (v78 | 0x8000000000000000))
    {
      goto LABEL_15;
    }

    v51 = _stringCompareWithSmolCheck(_:_:expecting:)();
LABEL_42:
  }

  return v51 & 1;
}

uint64_t outlined destroy of ShareTarget(uint64_t a1)
{
  v2 = type metadata accessor for ShareTarget();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type UsoEntity_common_AttachmentType.DefinedValues and conformance UsoEntity_common_AttachmentType.DefinedValues()
{
  result = lazy protocol witness table cache variable for type UsoEntity_common_AttachmentType.DefinedValues and conformance UsoEntity_common_AttachmentType.DefinedValues;
  if (!lazy protocol witness table cache variable for type UsoEntity_common_AttachmentType.DefinedValues and conformance UsoEntity_common_AttachmentType.DefinedValues)
  {
    type metadata accessor for UsoEntity_common_AttachmentType.DefinedValues();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UsoEntity_common_AttachmentType.DefinedValues and conformance UsoEntity_common_AttachmentType.DefinedValues);
  }

  return result;
}

unint64_t ScreenSharingCallManager.init()@<X0>(void *a1@<X8>)
{
  v2 = [objc_opt_self() sharedInstance];
  result = type metadata accessor for TUCallCenter();
  a1[3] = result;
  a1[4] = &protocol witness table for TUCallCenter;
  *a1 = v2;
  return result;
}

uint64_t ScreenSharingCallManager.currentShareStatus.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  (*(v4 + 8))(&v17, v3, v4);
  if (!v18)
  {
    result = outlined destroy of SharingResponse?(&v17, &_s19SiriExpanseInternal4Call_pSgMd, &_s19SiriExpanseInternal4Call_pSgMR);
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = -1;
    return result;
  }

  outlined init with take of ConversationParticipant(&v17, v19);
  v5 = v20;
  v6 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v7 = (*(v6 + 64))(v5, v6);
  if (v8 > 2)
  {
    if (v8 == 3)
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      return __swift_destroy_boxed_opaque_existential_1Tm(v19);
    }

    if (v8 != 4)
    {
      goto LABEL_15;
    }

    *a1 = 0u;
    *(a1 + 16) = 0u;
LABEL_9:
    v12 = 2;
LABEL_10:
    *(a1 + 32) = v12;
    return __swift_destroy_boxed_opaque_existential_1Tm(v19);
  }

  if (v8 == 1)
  {
    *a1 = 1;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    goto LABEL_9;
  }

  if (v8 != 2)
  {
LABEL_15:
    v13 = v7;
    v14 = v8;
    v15 = v9;
    v16 = v10;

    outlined consume of ShareSession?(v13, v14);
    *a1 = v13;
    *(a1 + 8) = v14;
    *(a1 + 16) = v15;
    *(a1 + 24) = v16;
    v12 = 1;
    goto LABEL_10;
  }

  *a1 = 2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 2;
  return __swift_destroy_boxed_opaque_existential_1Tm(v19);
}