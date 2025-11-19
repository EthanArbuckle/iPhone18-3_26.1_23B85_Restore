uint64_t specialized MLS.OutgoingEventState.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000016 && 0x80000002651E9D40 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002651E9D60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656449746E657665 && a2 == 0xEF7265696669746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t outlined init with copy of MetricCollector.Event(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricCollector.Event();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of (key: String, value: MetricCollector.Event)?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_15SecureMessaging15MetricCollectorV5EventV5valuetSgMd, &_sSS3key_15SecureMessaging15MetricCollectorV5EventV5valuetSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of MetricCollector.Event(uint64_t a1)
{
  v2 = type metadata accessor for MetricCollector.Event();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Date and conformance Date()
{
  result = lazy protocol witness table cache variable for type Date and conformance Date;
  if (!lazy protocol witness table cache variable for type Date and conformance Date)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date and conformance Date);
  }

  return result;
}

unint64_t KDSRegistration.ClientCreationError.ErrorType.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 4;
  if (result < 4)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistration.ClientCreationError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.ClientCreationError.CodingKeys and conformance KDSRegistration.ClientCreationError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistration.ClientCreationError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.ClientCreationError.CodingKeys and conformance KDSRegistration.ClientCreationError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t KDSRegistration.ClientCreationError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO19ClientCreationErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO19ClientCreationErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v13[0] = *(v1 + 2);
  v13[1] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.ClientCreationError.CodingKeys and conformance KDSRegistration.ClientCreationError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = v9;
  v15 = 0;
  lazy protocol witness table accessor for type KDSRegistration.ClientCreationError.ErrorType and conformance KDSRegistration.ClientCreationError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.ClientCreationError.CodingKeys and conformance KDSRegistration.ClientCreationError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError.CodingKeys and conformance KDSRegistration.ClientCreationError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError.CodingKeys and conformance KDSRegistration.ClientCreationError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError.CodingKeys and conformance KDSRegistration.ClientCreationError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError.CodingKeys and conformance KDSRegistration.ClientCreationError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError.CodingKeys and conformance KDSRegistration.ClientCreationError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError.CodingKeys and conformance KDSRegistration.ClientCreationError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError.CodingKeys and conformance KDSRegistration.ClientCreationError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError.CodingKeys and conformance KDSRegistration.ClientCreationError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError.CodingKeys and conformance KDSRegistration.ClientCreationError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError.CodingKeys and conformance KDSRegistration.ClientCreationError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError.CodingKeys and conformance KDSRegistration.ClientCreationError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError.CodingKeys and conformance KDSRegistration.ClientCreationError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.ClientCreationError.ErrorType and conformance KDSRegistration.ClientCreationError.ErrorType()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError.ErrorType and conformance KDSRegistration.ClientCreationError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError.ErrorType and conformance KDSRegistration.ClientCreationError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError.ErrorType and conformance KDSRegistration.ClientCreationError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError.ErrorType and conformance KDSRegistration.ClientCreationError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError.ErrorType and conformance KDSRegistration.ClientCreationError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError.ErrorType and conformance KDSRegistration.ClientCreationError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError.ErrorType and conformance KDSRegistration.ClientCreationError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError.ErrorType and conformance KDSRegistration.ClientCreationError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError.ErrorType and conformance KDSRegistration.ClientCreationError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError.ErrorType and conformance KDSRegistration.ClientCreationError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError.ErrorType and conformance KDSRegistration.ClientCreationError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError.ErrorType and conformance KDSRegistration.ClientCreationError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError.ErrorType and conformance KDSRegistration.ClientCreationError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError.ErrorType and conformance KDSRegistration.ClientCreationError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError.ErrorType and conformance KDSRegistration.ClientCreationError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError.ErrorType and conformance KDSRegistration.ClientCreationError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError.ErrorType and conformance KDSRegistration.ClientCreationError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError.ErrorType and conformance KDSRegistration.ClientCreationError.ErrorType);
  }

  return result;
}

uint64_t KDSRegistration.ClientCreationError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO19ClientCreationErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO19ClientCreationErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.ClientCreationError.CodingKeys and conformance KDSRegistration.ClientCreationError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v18 = 0;
    lazy protocol witness table accessor for type KDSRegistration.ClientCreationError.ErrorType and conformance KDSRegistration.ClientCreationError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = v19;
    v17 = 1;
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v15 = v14;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Error._domain.getter in conformance KDSRegistration.ClientCreationError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.ClientCreationError and conformance KDSRegistration.ClientCreationError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance KDSRegistration.ClientCreationError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.ClientCreationError and conformance KDSRegistration.ClientCreationError();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistration.UpdateSIMLabelIDError.CodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type KDSRegistration.UpdateSIMLabelIDError.CodingKeys and conformance KDSRegistration.UpdateSIMLabelIDError.CodingKeys();

  return MEMORY[0x2821FE718](a1, updated);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistration.UpdateSIMLabelIDError.CodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type KDSRegistration.UpdateSIMLabelIDError.CodingKeys and conformance KDSRegistration.UpdateSIMLabelIDError.CodingKeys();

  return MEMORY[0x2821FE720](a1, updated);
}

uint64_t KDSRegistration.UpdateSIMLabelIDError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO21UpdateSIMLabelIDErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO21UpdateSIMLabelIDErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v13[0] = *(v1 + 2);
  v13[1] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.UpdateSIMLabelIDError.CodingKeys and conformance KDSRegistration.UpdateSIMLabelIDError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = v9;
  v15 = 0;
  lazy protocol witness table accessor for type KDSRegistration.UpdateSIMLabelIDError.ErrorType and conformance KDSRegistration.UpdateSIMLabelIDError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.UpdateSIMLabelIDError.CodingKeys and conformance KDSRegistration.UpdateSIMLabelIDError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError.CodingKeys and conformance KDSRegistration.UpdateSIMLabelIDError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError.CodingKeys and conformance KDSRegistration.UpdateSIMLabelIDError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError.CodingKeys and conformance KDSRegistration.UpdateSIMLabelIDError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError.CodingKeys and conformance KDSRegistration.UpdateSIMLabelIDError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError.CodingKeys and conformance KDSRegistration.UpdateSIMLabelIDError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError.CodingKeys and conformance KDSRegistration.UpdateSIMLabelIDError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError.CodingKeys and conformance KDSRegistration.UpdateSIMLabelIDError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError.CodingKeys and conformance KDSRegistration.UpdateSIMLabelIDError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError.CodingKeys and conformance KDSRegistration.UpdateSIMLabelIDError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError.CodingKeys and conformance KDSRegistration.UpdateSIMLabelIDError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError.CodingKeys and conformance KDSRegistration.UpdateSIMLabelIDError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError.CodingKeys and conformance KDSRegistration.UpdateSIMLabelIDError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.UpdateSIMLabelIDError.ErrorType and conformance KDSRegistration.UpdateSIMLabelIDError.ErrorType()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError.ErrorType and conformance KDSRegistration.UpdateSIMLabelIDError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError.ErrorType and conformance KDSRegistration.UpdateSIMLabelIDError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError.ErrorType and conformance KDSRegistration.UpdateSIMLabelIDError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError.ErrorType and conformance KDSRegistration.UpdateSIMLabelIDError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError.ErrorType and conformance KDSRegistration.UpdateSIMLabelIDError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError.ErrorType and conformance KDSRegistration.UpdateSIMLabelIDError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError.ErrorType and conformance KDSRegistration.UpdateSIMLabelIDError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError.ErrorType and conformance KDSRegistration.UpdateSIMLabelIDError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError.ErrorType and conformance KDSRegistration.UpdateSIMLabelIDError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError.ErrorType and conformance KDSRegistration.UpdateSIMLabelIDError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError.ErrorType and conformance KDSRegistration.UpdateSIMLabelIDError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError.ErrorType and conformance KDSRegistration.UpdateSIMLabelIDError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError.ErrorType and conformance KDSRegistration.UpdateSIMLabelIDError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError.ErrorType and conformance KDSRegistration.UpdateSIMLabelIDError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError.ErrorType and conformance KDSRegistration.UpdateSIMLabelIDError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError.ErrorType and conformance KDSRegistration.UpdateSIMLabelIDError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError.ErrorType and conformance KDSRegistration.UpdateSIMLabelIDError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError.ErrorType and conformance KDSRegistration.UpdateSIMLabelIDError.ErrorType);
  }

  return result;
}

uint64_t KDSRegistration.UpdateSIMLabelIDError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO21UpdateSIMLabelIDErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO21UpdateSIMLabelIDErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.UpdateSIMLabelIDError.CodingKeys and conformance KDSRegistration.UpdateSIMLabelIDError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v18 = 0;
    lazy protocol witness table accessor for type KDSRegistration.UpdateSIMLabelIDError.ErrorType and conformance KDSRegistration.UpdateSIMLabelIDError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = v19;
    v17 = 1;
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v15 = v14;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Error._domain.getter in conformance KDSRegistration.UpdateSIMLabelIDError(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type KDSRegistration.UpdateSIMLabelIDError and conformance KDSRegistration.UpdateSIMLabelIDError();

  return MEMORY[0x28211F4B8](a1, updated);
}

uint64_t protocol witness for Error._code.getter in conformance KDSRegistration.UpdateSIMLabelIDError(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type KDSRegistration.UpdateSIMLabelIDError and conformance KDSRegistration.UpdateSIMLabelIDError();

  return MEMORY[0x28211F4A8](a1, updated);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistration.UpdateSupportedStateError.CodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type KDSRegistration.UpdateSupportedStateError.CodingKeys and conformance KDSRegistration.UpdateSupportedStateError.CodingKeys();

  return MEMORY[0x2821FE718](a1, updated);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistration.UpdateSupportedStateError.CodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type KDSRegistration.UpdateSupportedStateError.CodingKeys and conformance KDSRegistration.UpdateSupportedStateError.CodingKeys();

  return MEMORY[0x2821FE720](a1, updated);
}

uint64_t KDSRegistration.UpdateSupportedStateError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO25UpdateSupportedStateErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO25UpdateSupportedStateErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v13[0] = *(v1 + 2);
  v13[1] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.UpdateSupportedStateError.CodingKeys and conformance KDSRegistration.UpdateSupportedStateError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = v9;
  v15 = 0;
  lazy protocol witness table accessor for type KDSRegistration.UpdateSupportedStateError.ErrorType and conformance KDSRegistration.UpdateSupportedStateError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.UpdateSupportedStateError.CodingKeys and conformance KDSRegistration.UpdateSupportedStateError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError.CodingKeys and conformance KDSRegistration.UpdateSupportedStateError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError.CodingKeys and conformance KDSRegistration.UpdateSupportedStateError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError.CodingKeys and conformance KDSRegistration.UpdateSupportedStateError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError.CodingKeys and conformance KDSRegistration.UpdateSupportedStateError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError.CodingKeys and conformance KDSRegistration.UpdateSupportedStateError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError.CodingKeys and conformance KDSRegistration.UpdateSupportedStateError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError.CodingKeys and conformance KDSRegistration.UpdateSupportedStateError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError.CodingKeys and conformance KDSRegistration.UpdateSupportedStateError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError.CodingKeys and conformance KDSRegistration.UpdateSupportedStateError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError.CodingKeys and conformance KDSRegistration.UpdateSupportedStateError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError.CodingKeys and conformance KDSRegistration.UpdateSupportedStateError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError.CodingKeys and conformance KDSRegistration.UpdateSupportedStateError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.UpdateSupportedStateError.ErrorType and conformance KDSRegistration.UpdateSupportedStateError.ErrorType()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError.ErrorType and conformance KDSRegistration.UpdateSupportedStateError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError.ErrorType and conformance KDSRegistration.UpdateSupportedStateError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError.ErrorType and conformance KDSRegistration.UpdateSupportedStateError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError.ErrorType and conformance KDSRegistration.UpdateSupportedStateError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError.ErrorType and conformance KDSRegistration.UpdateSupportedStateError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError.ErrorType and conformance KDSRegistration.UpdateSupportedStateError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError.ErrorType and conformance KDSRegistration.UpdateSupportedStateError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError.ErrorType and conformance KDSRegistration.UpdateSupportedStateError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError.ErrorType and conformance KDSRegistration.UpdateSupportedStateError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError.ErrorType and conformance KDSRegistration.UpdateSupportedStateError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError.ErrorType and conformance KDSRegistration.UpdateSupportedStateError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError.ErrorType and conformance KDSRegistration.UpdateSupportedStateError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError.ErrorType and conformance KDSRegistration.UpdateSupportedStateError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError.ErrorType and conformance KDSRegistration.UpdateSupportedStateError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError.ErrorType and conformance KDSRegistration.UpdateSupportedStateError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError.ErrorType and conformance KDSRegistration.UpdateSupportedStateError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError.ErrorType and conformance KDSRegistration.UpdateSupportedStateError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError.ErrorType and conformance KDSRegistration.UpdateSupportedStateError.ErrorType);
  }

  return result;
}

uint64_t KDSRegistration.UpdateSupportedStateError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO25UpdateSupportedStateErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO25UpdateSupportedStateErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.UpdateSupportedStateError.CodingKeys and conformance KDSRegistration.UpdateSupportedStateError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v18 = 0;
    lazy protocol witness table accessor for type KDSRegistration.UpdateSupportedStateError.ErrorType and conformance KDSRegistration.UpdateSupportedStateError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = v19;
    v17 = 1;
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v15 = v14;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Error._domain.getter in conformance KDSRegistration.UpdateSupportedStateError(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type KDSRegistration.UpdateSupportedStateError and conformance KDSRegistration.UpdateSupportedStateError();

  return MEMORY[0x28211F4B8](a1, updated);
}

uint64_t protocol witness for Error._code.getter in conformance KDSRegistration.UpdateSupportedStateError(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type KDSRegistration.UpdateSupportedStateError and conformance KDSRegistration.UpdateSupportedStateError();

  return MEMORY[0x28211F4A8](a1, updated);
}

unint64_t KDSRegistration.IsRegisteredError.ErrorType.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 5;
  if (result < 5)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

_BYTE *KDSRegistration.IsRegisteredError.init(type:underlyingErrorDescription:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistration.IsRegisteredError.CodingKeys(uint64_t a1)
{
  IsRegistered = lazy protocol witness table accessor for type KDSRegistration.IsRegisteredError.CodingKeys and conformance KDSRegistration.IsRegisteredError.CodingKeys();

  return MEMORY[0x2821FE718](a1, IsRegistered);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistration.IsRegisteredError.CodingKeys(uint64_t a1)
{
  IsRegistered = lazy protocol witness table accessor for type KDSRegistration.IsRegisteredError.CodingKeys and conformance KDSRegistration.IsRegisteredError.CodingKeys();

  return MEMORY[0x2821FE720](a1, IsRegistered);
}

uint64_t KDSRegistration.IsRegisteredError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO17IsRegisteredErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO17IsRegisteredErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v13[0] = *(v1 + 2);
  v13[1] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.IsRegisteredError.CodingKeys and conformance KDSRegistration.IsRegisteredError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = v9;
  v15 = 0;
  lazy protocol witness table accessor for type KDSRegistration.IsRegisteredError.ErrorType and conformance KDSRegistration.IsRegisteredError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.IsRegisteredError.CodingKeys and conformance KDSRegistration.IsRegisteredError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError.CodingKeys and conformance KDSRegistration.IsRegisteredError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError.CodingKeys and conformance KDSRegistration.IsRegisteredError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError.CodingKeys and conformance KDSRegistration.IsRegisteredError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError.CodingKeys and conformance KDSRegistration.IsRegisteredError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError.CodingKeys and conformance KDSRegistration.IsRegisteredError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError.CodingKeys and conformance KDSRegistration.IsRegisteredError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError.CodingKeys and conformance KDSRegistration.IsRegisteredError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError.CodingKeys and conformance KDSRegistration.IsRegisteredError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError.CodingKeys and conformance KDSRegistration.IsRegisteredError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError.CodingKeys and conformance KDSRegistration.IsRegisteredError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError.CodingKeys and conformance KDSRegistration.IsRegisteredError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError.CodingKeys and conformance KDSRegistration.IsRegisteredError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.IsRegisteredError.ErrorType and conformance KDSRegistration.IsRegisteredError.ErrorType()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError.ErrorType and conformance KDSRegistration.IsRegisteredError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError.ErrorType and conformance KDSRegistration.IsRegisteredError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError.ErrorType and conformance KDSRegistration.IsRegisteredError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError.ErrorType and conformance KDSRegistration.IsRegisteredError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError.ErrorType and conformance KDSRegistration.IsRegisteredError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError.ErrorType and conformance KDSRegistration.IsRegisteredError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError.ErrorType and conformance KDSRegistration.IsRegisteredError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError.ErrorType and conformance KDSRegistration.IsRegisteredError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError.ErrorType and conformance KDSRegistration.IsRegisteredError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError.ErrorType and conformance KDSRegistration.IsRegisteredError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError.ErrorType and conformance KDSRegistration.IsRegisteredError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError.ErrorType and conformance KDSRegistration.IsRegisteredError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError.ErrorType and conformance KDSRegistration.IsRegisteredError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError.ErrorType and conformance KDSRegistration.IsRegisteredError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError.ErrorType and conformance KDSRegistration.IsRegisteredError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError.ErrorType and conformance KDSRegistration.IsRegisteredError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError.ErrorType and conformance KDSRegistration.IsRegisteredError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError.ErrorType and conformance KDSRegistration.IsRegisteredError.ErrorType);
  }

  return result;
}

uint64_t KDSRegistration.IsRegisteredError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO17IsRegisteredErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO17IsRegisteredErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.IsRegisteredError.CodingKeys and conformance KDSRegistration.IsRegisteredError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v18 = 0;
    lazy protocol witness table accessor for type KDSRegistration.IsRegisteredError.ErrorType and conformance KDSRegistration.IsRegisteredError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = v19;
    v17 = 1;
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v15 = v14;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Error._domain.getter in conformance KDSRegistration.IsRegisteredError(uint64_t a1)
{
  IsRegisteredError = lazy protocol witness table accessor for type KDSRegistration.IsRegisteredError and conformance KDSRegistration.IsRegisteredError();

  return MEMORY[0x28211F4B8](a1, IsRegisteredError);
}

uint64_t protocol witness for Error._code.getter in conformance KDSRegistration.IsRegisteredError(uint64_t a1)
{
  IsRegisteredError = lazy protocol witness table accessor for type KDSRegistration.IsRegisteredError and conformance KDSRegistration.IsRegisteredError();

  return MEMORY[0x28211F4A8](a1, IsRegisteredError);
}

unint64_t KDSRegistration.SignWithParticipantKeyError.ErrorType.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 8;
  if (result < 8)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistration.SignWithParticipantKeyError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.SignWithParticipantKeyError.CodingKeys and conformance KDSRegistration.SignWithParticipantKeyError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistration.SignWithParticipantKeyError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.SignWithParticipantKeyError.CodingKeys and conformance KDSRegistration.SignWithParticipantKeyError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t KDSRegistration.SignWithParticipantKeyError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO27SignWithParticipantKeyErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO27SignWithParticipantKeyErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v13[0] = *(v1 + 2);
  v13[1] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.SignWithParticipantKeyError.CodingKeys and conformance KDSRegistration.SignWithParticipantKeyError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = v9;
  v15 = 0;
  lazy protocol witness table accessor for type KDSRegistration.SignWithParticipantKeyError.ErrorType and conformance KDSRegistration.SignWithParticipantKeyError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.SignWithParticipantKeyError.CodingKeys and conformance KDSRegistration.SignWithParticipantKeyError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError.CodingKeys and conformance KDSRegistration.SignWithParticipantKeyError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError.CodingKeys and conformance KDSRegistration.SignWithParticipantKeyError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError.CodingKeys and conformance KDSRegistration.SignWithParticipantKeyError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError.CodingKeys and conformance KDSRegistration.SignWithParticipantKeyError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError.CodingKeys and conformance KDSRegistration.SignWithParticipantKeyError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError.CodingKeys and conformance KDSRegistration.SignWithParticipantKeyError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError.CodingKeys and conformance KDSRegistration.SignWithParticipantKeyError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError.CodingKeys and conformance KDSRegistration.SignWithParticipantKeyError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError.CodingKeys and conformance KDSRegistration.SignWithParticipantKeyError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError.CodingKeys and conformance KDSRegistration.SignWithParticipantKeyError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError.CodingKeys and conformance KDSRegistration.SignWithParticipantKeyError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError.CodingKeys and conformance KDSRegistration.SignWithParticipantKeyError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.SignWithParticipantKeyError.ErrorType and conformance KDSRegistration.SignWithParticipantKeyError.ErrorType()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError.ErrorType and conformance KDSRegistration.SignWithParticipantKeyError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError.ErrorType and conformance KDSRegistration.SignWithParticipantKeyError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError.ErrorType and conformance KDSRegistration.SignWithParticipantKeyError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError.ErrorType and conformance KDSRegistration.SignWithParticipantKeyError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError.ErrorType and conformance KDSRegistration.SignWithParticipantKeyError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError.ErrorType and conformance KDSRegistration.SignWithParticipantKeyError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError.ErrorType and conformance KDSRegistration.SignWithParticipantKeyError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError.ErrorType and conformance KDSRegistration.SignWithParticipantKeyError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError.ErrorType and conformance KDSRegistration.SignWithParticipantKeyError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError.ErrorType and conformance KDSRegistration.SignWithParticipantKeyError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError.ErrorType and conformance KDSRegistration.SignWithParticipantKeyError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError.ErrorType and conformance KDSRegistration.SignWithParticipantKeyError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError.ErrorType and conformance KDSRegistration.SignWithParticipantKeyError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError.ErrorType and conformance KDSRegistration.SignWithParticipantKeyError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError.ErrorType and conformance KDSRegistration.SignWithParticipantKeyError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError.ErrorType and conformance KDSRegistration.SignWithParticipantKeyError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError.ErrorType and conformance KDSRegistration.SignWithParticipantKeyError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError.ErrorType and conformance KDSRegistration.SignWithParticipantKeyError.ErrorType);
  }

  return result;
}

uint64_t KDSRegistration.SignWithParticipantKeyError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO27SignWithParticipantKeyErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO27SignWithParticipantKeyErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.SignWithParticipantKeyError.CodingKeys and conformance KDSRegistration.SignWithParticipantKeyError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v18 = 0;
    lazy protocol witness table accessor for type KDSRegistration.SignWithParticipantKeyError.ErrorType and conformance KDSRegistration.SignWithParticipantKeyError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = v19;
    v17 = 1;
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v15 = v14;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Error._domain.getter in conformance KDSRegistration.SignWithParticipantKeyError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.SignWithParticipantKeyError and conformance KDSRegistration.SignWithParticipantKeyError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance KDSRegistration.SignWithParticipantKeyError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.SignWithParticipantKeyError and conformance KDSRegistration.SignWithParticipantKeyError();

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t KDSRegistration.GetIdentityError.ErrorType.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 9;
  if (result < 9)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistration.GetIdentityError.CodingKeys(uint64_t a1)
{
  Identity = lazy protocol witness table accessor for type KDSRegistration.GetIdentityError.CodingKeys and conformance KDSRegistration.GetIdentityError.CodingKeys();

  return MEMORY[0x2821FE718](a1, Identity);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistration.GetIdentityError.CodingKeys(uint64_t a1)
{
  Identity = lazy protocol witness table accessor for type KDSRegistration.GetIdentityError.CodingKeys and conformance KDSRegistration.GetIdentityError.CodingKeys();

  return MEMORY[0x2821FE720](a1, Identity);
}

uint64_t KDSRegistration.GetIdentityError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO16GetIdentityErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO16GetIdentityErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v13[0] = *(v1 + 2);
  v13[1] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.GetIdentityError.CodingKeys and conformance KDSRegistration.GetIdentityError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = v9;
  v15 = 0;
  lazy protocol witness table accessor for type KDSRegistration.GetIdentityError.ErrorType and conformance KDSRegistration.GetIdentityError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.GetIdentityError.CodingKeys and conformance KDSRegistration.GetIdentityError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError.CodingKeys and conformance KDSRegistration.GetIdentityError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError.CodingKeys and conformance KDSRegistration.GetIdentityError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError.CodingKeys and conformance KDSRegistration.GetIdentityError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError.CodingKeys and conformance KDSRegistration.GetIdentityError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError.CodingKeys and conformance KDSRegistration.GetIdentityError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError.CodingKeys and conformance KDSRegistration.GetIdentityError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError.CodingKeys and conformance KDSRegistration.GetIdentityError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError.CodingKeys and conformance KDSRegistration.GetIdentityError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError.CodingKeys and conformance KDSRegistration.GetIdentityError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError.CodingKeys and conformance KDSRegistration.GetIdentityError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError.CodingKeys and conformance KDSRegistration.GetIdentityError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError.CodingKeys and conformance KDSRegistration.GetIdentityError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.GetIdentityError.ErrorType and conformance KDSRegistration.GetIdentityError.ErrorType()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError.ErrorType and conformance KDSRegistration.GetIdentityError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError.ErrorType and conformance KDSRegistration.GetIdentityError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError.ErrorType and conformance KDSRegistration.GetIdentityError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError.ErrorType and conformance KDSRegistration.GetIdentityError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError.ErrorType and conformance KDSRegistration.GetIdentityError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError.ErrorType and conformance KDSRegistration.GetIdentityError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError.ErrorType and conformance KDSRegistration.GetIdentityError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError.ErrorType and conformance KDSRegistration.GetIdentityError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError.ErrorType and conformance KDSRegistration.GetIdentityError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError.ErrorType and conformance KDSRegistration.GetIdentityError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError.ErrorType and conformance KDSRegistration.GetIdentityError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError.ErrorType and conformance KDSRegistration.GetIdentityError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError.ErrorType and conformance KDSRegistration.GetIdentityError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError.ErrorType and conformance KDSRegistration.GetIdentityError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError.ErrorType and conformance KDSRegistration.GetIdentityError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError.ErrorType and conformance KDSRegistration.GetIdentityError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError.ErrorType and conformance KDSRegistration.GetIdentityError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError.ErrorType and conformance KDSRegistration.GetIdentityError.ErrorType);
  }

  return result;
}

uint64_t KDSRegistration.GetIdentityError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO16GetIdentityErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO16GetIdentityErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.GetIdentityError.CodingKeys and conformance KDSRegistration.GetIdentityError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v18 = 0;
  lazy protocol witness table accessor for type KDSRegistration.GetIdentityError.ErrorType and conformance KDSRegistration.GetIdentityError.ErrorType();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v19;
  v17 = 1;
  v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v14 = v13;
  (*(v6 + 8))(v9, v5);
  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Error._domain.getter in conformance KDSRegistration.GetIdentityError(uint64_t a1)
{
  IdentityError = lazy protocol witness table accessor for type KDSRegistration.GetIdentityError and conformance KDSRegistration.GetIdentityError();

  return MEMORY[0x28211F4B8](a1, IdentityError);
}

uint64_t protocol witness for Error._code.getter in conformance KDSRegistration.GetIdentityError(uint64_t a1)
{
  IdentityError = lazy protocol witness table accessor for type KDSRegistration.GetIdentityError and conformance KDSRegistration.GetIdentityError();

  return MEMORY[0x28211F4A8](a1, IdentityError);
}

unint64_t KDSRegistration.GetCredentialError.ErrorType.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 6;
  if (result < 6)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistration.GetCredentialError.CodingKeys(uint64_t a1)
{
  Credential = lazy protocol witness table accessor for type KDSRegistration.GetCredentialError.CodingKeys and conformance KDSRegistration.GetCredentialError.CodingKeys();

  return MEMORY[0x2821FE718](a1, Credential);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistration.GetCredentialError.CodingKeys(uint64_t a1)
{
  Credential = lazy protocol witness table accessor for type KDSRegistration.GetCredentialError.CodingKeys and conformance KDSRegistration.GetCredentialError.CodingKeys();

  return MEMORY[0x2821FE720](a1, Credential);
}

uint64_t KDSRegistration.GetCredentialError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO18GetCredentialErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO18GetCredentialErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v13[0] = *(v1 + 2);
  v13[1] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.GetCredentialError.CodingKeys and conformance KDSRegistration.GetCredentialError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = v9;
  v15 = 0;
  lazy protocol witness table accessor for type KDSRegistration.GetCredentialError.ErrorType and conformance KDSRegistration.GetCredentialError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.GetCredentialError.CodingKeys and conformance KDSRegistration.GetCredentialError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError.CodingKeys and conformance KDSRegistration.GetCredentialError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError.CodingKeys and conformance KDSRegistration.GetCredentialError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError.CodingKeys and conformance KDSRegistration.GetCredentialError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError.CodingKeys and conformance KDSRegistration.GetCredentialError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError.CodingKeys and conformance KDSRegistration.GetCredentialError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError.CodingKeys and conformance KDSRegistration.GetCredentialError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError.CodingKeys and conformance KDSRegistration.GetCredentialError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError.CodingKeys and conformance KDSRegistration.GetCredentialError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError.CodingKeys and conformance KDSRegistration.GetCredentialError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError.CodingKeys and conformance KDSRegistration.GetCredentialError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError.CodingKeys and conformance KDSRegistration.GetCredentialError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError.CodingKeys and conformance KDSRegistration.GetCredentialError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.GetCredentialError.ErrorType and conformance KDSRegistration.GetCredentialError.ErrorType()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError.ErrorType and conformance KDSRegistration.GetCredentialError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError.ErrorType and conformance KDSRegistration.GetCredentialError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError.ErrorType and conformance KDSRegistration.GetCredentialError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError.ErrorType and conformance KDSRegistration.GetCredentialError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError.ErrorType and conformance KDSRegistration.GetCredentialError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError.ErrorType and conformance KDSRegistration.GetCredentialError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError.ErrorType and conformance KDSRegistration.GetCredentialError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError.ErrorType and conformance KDSRegistration.GetCredentialError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError.ErrorType and conformance KDSRegistration.GetCredentialError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError.ErrorType and conformance KDSRegistration.GetCredentialError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError.ErrorType and conformance KDSRegistration.GetCredentialError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError.ErrorType and conformance KDSRegistration.GetCredentialError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError.ErrorType and conformance KDSRegistration.GetCredentialError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError.ErrorType and conformance KDSRegistration.GetCredentialError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError.ErrorType and conformance KDSRegistration.GetCredentialError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError.ErrorType and conformance KDSRegistration.GetCredentialError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError.ErrorType and conformance KDSRegistration.GetCredentialError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError.ErrorType and conformance KDSRegistration.GetCredentialError.ErrorType);
  }

  return result;
}

uint64_t KDSRegistration.GetCredentialError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO18GetCredentialErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO18GetCredentialErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.GetCredentialError.CodingKeys and conformance KDSRegistration.GetCredentialError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v18 = 0;
  lazy protocol witness table accessor for type KDSRegistration.GetCredentialError.ErrorType and conformance KDSRegistration.GetCredentialError.ErrorType();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v19;
  v17 = 1;
  v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v14 = v13;
  (*(v6 + 8))(v9, v5);
  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Error._domain.getter in conformance KDSRegistration.GetCredentialError(uint64_t a1)
{
  CredentialError = lazy protocol witness table accessor for type KDSRegistration.GetCredentialError and conformance KDSRegistration.GetCredentialError();

  return MEMORY[0x28211F4B8](a1, CredentialError);
}

uint64_t protocol witness for Error._code.getter in conformance KDSRegistration.GetCredentialError(uint64_t a1)
{
  CredentialError = lazy protocol witness table accessor for type KDSRegistration.GetCredentialError and conformance KDSRegistration.GetCredentialError();

  return MEMORY[0x28211F4A8](a1, CredentialError);
}

unint64_t KDSRegistration.GetClientIDError.ErrorType.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 10;
  if (result < 0xA)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t KDSRegistration.GetClientIDError.underlyingErrorDescription.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t KDSRegistration.GetClientIDError.underlyingErrorDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

_BYTE *KDSRegistration.GetClientIDError.init(type:underlyingErrorDescription:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistration.GetClientIDError.CodingKeys(uint64_t a1)
{
  Client = lazy protocol witness table accessor for type KDSRegistration.GetClientIDError.CodingKeys and conformance KDSRegistration.GetClientIDError.CodingKeys();

  return MEMORY[0x2821FE718](a1, Client);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistration.GetClientIDError.CodingKeys(uint64_t a1)
{
  Client = lazy protocol witness table accessor for type KDSRegistration.GetClientIDError.CodingKeys and conformance KDSRegistration.GetClientIDError.CodingKeys();

  return MEMORY[0x2821FE720](a1, Client);
}

uint64_t KDSRegistration.GetClientIDError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO16GetClientIDErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO16GetClientIDErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v13[0] = *(v1 + 2);
  v13[1] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.GetClientIDError.CodingKeys and conformance KDSRegistration.GetClientIDError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = v9;
  v15 = 0;
  lazy protocol witness table accessor for type KDSRegistration.GetClientIDError.ErrorType and conformance KDSRegistration.GetClientIDError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.GetClientIDError.CodingKeys and conformance KDSRegistration.GetClientIDError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError.CodingKeys and conformance KDSRegistration.GetClientIDError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError.CodingKeys and conformance KDSRegistration.GetClientIDError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError.CodingKeys and conformance KDSRegistration.GetClientIDError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError.CodingKeys and conformance KDSRegistration.GetClientIDError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError.CodingKeys and conformance KDSRegistration.GetClientIDError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError.CodingKeys and conformance KDSRegistration.GetClientIDError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError.CodingKeys and conformance KDSRegistration.GetClientIDError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError.CodingKeys and conformance KDSRegistration.GetClientIDError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError.CodingKeys and conformance KDSRegistration.GetClientIDError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError.CodingKeys and conformance KDSRegistration.GetClientIDError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError.CodingKeys and conformance KDSRegistration.GetClientIDError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError.CodingKeys and conformance KDSRegistration.GetClientIDError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.GetClientIDError.ErrorType and conformance KDSRegistration.GetClientIDError.ErrorType()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError.ErrorType and conformance KDSRegistration.GetClientIDError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError.ErrorType and conformance KDSRegistration.GetClientIDError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError.ErrorType and conformance KDSRegistration.GetClientIDError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError.ErrorType and conformance KDSRegistration.GetClientIDError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError.ErrorType and conformance KDSRegistration.GetClientIDError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError.ErrorType and conformance KDSRegistration.GetClientIDError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError.ErrorType and conformance KDSRegistration.GetClientIDError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError.ErrorType and conformance KDSRegistration.GetClientIDError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError.ErrorType and conformance KDSRegistration.GetClientIDError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError.ErrorType and conformance KDSRegistration.GetClientIDError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError.ErrorType and conformance KDSRegistration.GetClientIDError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError.ErrorType and conformance KDSRegistration.GetClientIDError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError.ErrorType and conformance KDSRegistration.GetClientIDError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError.ErrorType and conformance KDSRegistration.GetClientIDError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError.ErrorType and conformance KDSRegistration.GetClientIDError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError.ErrorType and conformance KDSRegistration.GetClientIDError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError.ErrorType and conformance KDSRegistration.GetClientIDError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError.ErrorType and conformance KDSRegistration.GetClientIDError.ErrorType);
  }

  return result;
}

uint64_t KDSRegistration.GetClientIDError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO16GetClientIDErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO16GetClientIDErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.GetClientIDError.CodingKeys and conformance KDSRegistration.GetClientIDError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v18 = 0;
  lazy protocol witness table accessor for type KDSRegistration.GetClientIDError.ErrorType and conformance KDSRegistration.GetClientIDError.ErrorType();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v19;
  v17 = 1;
  v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v14 = v13;
  (*(v6 + 8))(v9, v5);
  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Error._domain.getter in conformance KDSRegistration.GetClientIDError(uint64_t a1)
{
  ClientIDError = lazy protocol witness table accessor for type KDSRegistration.GetClientIDError and conformance KDSRegistration.GetClientIDError();

  return MEMORY[0x28211F4B8](a1, ClientIDError);
}

uint64_t protocol witness for Error._code.getter in conformance KDSRegistration.GetClientIDError(uint64_t a1)
{
  ClientIDError = lazy protocol witness table accessor for type KDSRegistration.GetClientIDError and conformance KDSRegistration.GetClientIDError();

  return MEMORY[0x28211F4A8](a1, ClientIDError);
}

unint64_t KDSRegistration.RegisterKeyPackageError.ErrorType.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 14;
  if (result < 0xE)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistration.RegisterKeyPackageError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.RegisterKeyPackageError.CodingKeys and conformance KDSRegistration.RegisterKeyPackageError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistration.RegisterKeyPackageError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.RegisterKeyPackageError.CodingKeys and conformance KDSRegistration.RegisterKeyPackageError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t KDSRegistration.RegisterKeyPackageError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO23RegisterKeyPackageErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO23RegisterKeyPackageErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v13[0] = *(v1 + 2);
  v13[1] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.RegisterKeyPackageError.CodingKeys and conformance KDSRegistration.RegisterKeyPackageError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = v9;
  v15 = 0;
  lazy protocol witness table accessor for type KDSRegistration.RegisterKeyPackageError.ErrorType and conformance KDSRegistration.RegisterKeyPackageError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.RegisterKeyPackageError.CodingKeys and conformance KDSRegistration.RegisterKeyPackageError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError.CodingKeys and conformance KDSRegistration.RegisterKeyPackageError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError.CodingKeys and conformance KDSRegistration.RegisterKeyPackageError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError.CodingKeys and conformance KDSRegistration.RegisterKeyPackageError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError.CodingKeys and conformance KDSRegistration.RegisterKeyPackageError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError.CodingKeys and conformance KDSRegistration.RegisterKeyPackageError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError.CodingKeys and conformance KDSRegistration.RegisterKeyPackageError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError.CodingKeys and conformance KDSRegistration.RegisterKeyPackageError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError.CodingKeys and conformance KDSRegistration.RegisterKeyPackageError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError.CodingKeys and conformance KDSRegistration.RegisterKeyPackageError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError.CodingKeys and conformance KDSRegistration.RegisterKeyPackageError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError.CodingKeys and conformance KDSRegistration.RegisterKeyPackageError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError.CodingKeys and conformance KDSRegistration.RegisterKeyPackageError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.RegisterKeyPackageError.ErrorType and conformance KDSRegistration.RegisterKeyPackageError.ErrorType()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError.ErrorType and conformance KDSRegistration.RegisterKeyPackageError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError.ErrorType and conformance KDSRegistration.RegisterKeyPackageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError.ErrorType and conformance KDSRegistration.RegisterKeyPackageError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError.ErrorType and conformance KDSRegistration.RegisterKeyPackageError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError.ErrorType and conformance KDSRegistration.RegisterKeyPackageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError.ErrorType and conformance KDSRegistration.RegisterKeyPackageError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError.ErrorType and conformance KDSRegistration.RegisterKeyPackageError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError.ErrorType and conformance KDSRegistration.RegisterKeyPackageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError.ErrorType and conformance KDSRegistration.RegisterKeyPackageError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError.ErrorType and conformance KDSRegistration.RegisterKeyPackageError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError.ErrorType and conformance KDSRegistration.RegisterKeyPackageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError.ErrorType and conformance KDSRegistration.RegisterKeyPackageError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError.ErrorType and conformance KDSRegistration.RegisterKeyPackageError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError.ErrorType and conformance KDSRegistration.RegisterKeyPackageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError.ErrorType and conformance KDSRegistration.RegisterKeyPackageError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError.ErrorType and conformance KDSRegistration.RegisterKeyPackageError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError.ErrorType and conformance KDSRegistration.RegisterKeyPackageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError.ErrorType and conformance KDSRegistration.RegisterKeyPackageError.ErrorType);
  }

  return result;
}

uint64_t KDSRegistration.RegisterKeyPackageError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO23RegisterKeyPackageErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO23RegisterKeyPackageErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.RegisterKeyPackageError.CodingKeys and conformance KDSRegistration.RegisterKeyPackageError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v18 = 0;
  lazy protocol witness table accessor for type KDSRegistration.RegisterKeyPackageError.ErrorType and conformance KDSRegistration.RegisterKeyPackageError.ErrorType();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v19;
  v17 = 1;
  v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v14 = v13;
  (*(v6 + 8))(v9, v5);
  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Error._domain.getter in conformance KDSRegistration.RegisterKeyPackageError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.RegisterKeyPackageError and conformance KDSRegistration.RegisterKeyPackageError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance KDSRegistration.RegisterKeyPackageError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.RegisterKeyPackageError and conformance KDSRegistration.RegisterKeyPackageError();

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t KDSRegistration.DeregisterKeyPackageError.ErrorType.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 7;
  if (result < 7)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistration.DeregisterKeyPackageError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.DeregisterKeyPackageError.CodingKeys and conformance KDSRegistration.DeregisterKeyPackageError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistration.DeregisterKeyPackageError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.DeregisterKeyPackageError.CodingKeys and conformance KDSRegistration.DeregisterKeyPackageError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t KDSRegistration.DeregisterKeyPackageError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO25DeregisterKeyPackageErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO25DeregisterKeyPackageErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v13[0] = *(v1 + 2);
  v13[1] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.DeregisterKeyPackageError.CodingKeys and conformance KDSRegistration.DeregisterKeyPackageError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = v9;
  v15 = 0;
  lazy protocol witness table accessor for type KDSRegistration.DeregisterKeyPackageError.ErrorType and conformance KDSRegistration.DeregisterKeyPackageError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.DeregisterKeyPackageError.CodingKeys and conformance KDSRegistration.DeregisterKeyPackageError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError.CodingKeys and conformance KDSRegistration.DeregisterKeyPackageError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError.CodingKeys and conformance KDSRegistration.DeregisterKeyPackageError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError.CodingKeys and conformance KDSRegistration.DeregisterKeyPackageError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError.CodingKeys and conformance KDSRegistration.DeregisterKeyPackageError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError.CodingKeys and conformance KDSRegistration.DeregisterKeyPackageError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError.CodingKeys and conformance KDSRegistration.DeregisterKeyPackageError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError.CodingKeys and conformance KDSRegistration.DeregisterKeyPackageError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError.CodingKeys and conformance KDSRegistration.DeregisterKeyPackageError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError.CodingKeys and conformance KDSRegistration.DeregisterKeyPackageError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError.CodingKeys and conformance KDSRegistration.DeregisterKeyPackageError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError.CodingKeys and conformance KDSRegistration.DeregisterKeyPackageError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError.CodingKeys and conformance KDSRegistration.DeregisterKeyPackageError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.DeregisterKeyPackageError.ErrorType and conformance KDSRegistration.DeregisterKeyPackageError.ErrorType()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError.ErrorType and conformance KDSRegistration.DeregisterKeyPackageError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError.ErrorType and conformance KDSRegistration.DeregisterKeyPackageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError.ErrorType and conformance KDSRegistration.DeregisterKeyPackageError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError.ErrorType and conformance KDSRegistration.DeregisterKeyPackageError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError.ErrorType and conformance KDSRegistration.DeregisterKeyPackageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError.ErrorType and conformance KDSRegistration.DeregisterKeyPackageError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError.ErrorType and conformance KDSRegistration.DeregisterKeyPackageError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError.ErrorType and conformance KDSRegistration.DeregisterKeyPackageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError.ErrorType and conformance KDSRegistration.DeregisterKeyPackageError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError.ErrorType and conformance KDSRegistration.DeregisterKeyPackageError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError.ErrorType and conformance KDSRegistration.DeregisterKeyPackageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError.ErrorType and conformance KDSRegistration.DeregisterKeyPackageError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError.ErrorType and conformance KDSRegistration.DeregisterKeyPackageError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError.ErrorType and conformance KDSRegistration.DeregisterKeyPackageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError.ErrorType and conformance KDSRegistration.DeregisterKeyPackageError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError.ErrorType and conformance KDSRegistration.DeregisterKeyPackageError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError.ErrorType and conformance KDSRegistration.DeregisterKeyPackageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError.ErrorType and conformance KDSRegistration.DeregisterKeyPackageError.ErrorType);
  }

  return result;
}

uint64_t KDSRegistration.DeregisterKeyPackageError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO25DeregisterKeyPackageErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO25DeregisterKeyPackageErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.DeregisterKeyPackageError.CodingKeys and conformance KDSRegistration.DeregisterKeyPackageError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v18 = 0;
  lazy protocol witness table accessor for type KDSRegistration.DeregisterKeyPackageError.ErrorType and conformance KDSRegistration.DeregisterKeyPackageError.ErrorType();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v19;
  v17 = 1;
  v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v14 = v13;
  (*(v6 + 8))(v9, v5);
  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Error._domain.getter in conformance KDSRegistration.DeregisterKeyPackageError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.DeregisterKeyPackageError and conformance KDSRegistration.DeregisterKeyPackageError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance KDSRegistration.DeregisterKeyPackageError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.DeregisterKeyPackageError and conformance KDSRegistration.DeregisterKeyPackageError();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistration.QueryKeyPackageError.CodingKeys(uint64_t a1)
{
  KeyPackage = lazy protocol witness table accessor for type KDSRegistration.QueryKeyPackageError.CodingKeys and conformance KDSRegistration.QueryKeyPackageError.CodingKeys();

  return MEMORY[0x2821FE718](a1, KeyPackage);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistration.QueryKeyPackageError.CodingKeys(uint64_t a1)
{
  KeyPackage = lazy protocol witness table accessor for type KDSRegistration.QueryKeyPackageError.CodingKeys and conformance KDSRegistration.QueryKeyPackageError.CodingKeys();

  return MEMORY[0x2821FE720](a1, KeyPackage);
}

uint64_t KDSRegistration.QueryKeyPackageError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO20QueryKeyPackageErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO20QueryKeyPackageErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v13[0] = *(v1 + 2);
  v13[1] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.QueryKeyPackageError.CodingKeys and conformance KDSRegistration.QueryKeyPackageError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = v9;
  v15 = 0;
  lazy protocol witness table accessor for type KDSRegistration.QueryKeyPackageError.ErrorType and conformance KDSRegistration.QueryKeyPackageError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.QueryKeyPackageError.CodingKeys and conformance KDSRegistration.QueryKeyPackageError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError.CodingKeys and conformance KDSRegistration.QueryKeyPackageError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError.CodingKeys and conformance KDSRegistration.QueryKeyPackageError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError.CodingKeys and conformance KDSRegistration.QueryKeyPackageError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError.CodingKeys and conformance KDSRegistration.QueryKeyPackageError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError.CodingKeys and conformance KDSRegistration.QueryKeyPackageError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError.CodingKeys and conformance KDSRegistration.QueryKeyPackageError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError.CodingKeys and conformance KDSRegistration.QueryKeyPackageError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError.CodingKeys and conformance KDSRegistration.QueryKeyPackageError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError.CodingKeys and conformance KDSRegistration.QueryKeyPackageError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError.CodingKeys and conformance KDSRegistration.QueryKeyPackageError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError.CodingKeys and conformance KDSRegistration.QueryKeyPackageError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError.CodingKeys and conformance KDSRegistration.QueryKeyPackageError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.QueryKeyPackageError.ErrorType and conformance KDSRegistration.QueryKeyPackageError.ErrorType()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError.ErrorType and conformance KDSRegistration.QueryKeyPackageError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError.ErrorType and conformance KDSRegistration.QueryKeyPackageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError.ErrorType and conformance KDSRegistration.QueryKeyPackageError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError.ErrorType and conformance KDSRegistration.QueryKeyPackageError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError.ErrorType and conformance KDSRegistration.QueryKeyPackageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError.ErrorType and conformance KDSRegistration.QueryKeyPackageError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError.ErrorType and conformance KDSRegistration.QueryKeyPackageError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError.ErrorType and conformance KDSRegistration.QueryKeyPackageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError.ErrorType and conformance KDSRegistration.QueryKeyPackageError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError.ErrorType and conformance KDSRegistration.QueryKeyPackageError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError.ErrorType and conformance KDSRegistration.QueryKeyPackageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError.ErrorType and conformance KDSRegistration.QueryKeyPackageError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError.ErrorType and conformance KDSRegistration.QueryKeyPackageError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError.ErrorType and conformance KDSRegistration.QueryKeyPackageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError.ErrorType and conformance KDSRegistration.QueryKeyPackageError.ErrorType);
  }

  return result;
}

uint64_t KDSRegistration.QueryKeyPackageError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO20QueryKeyPackageErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO20QueryKeyPackageErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.QueryKeyPackageError.CodingKeys and conformance KDSRegistration.QueryKeyPackageError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v18 = 0;
  lazy protocol witness table accessor for type KDSRegistration.QueryKeyPackageError.ErrorType and conformance KDSRegistration.QueryKeyPackageError.ErrorType();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v19;
  v17 = 1;
  v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v14 = v13;
  (*(v6 + 8))(v9, v5);
  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Error._domain.getter in conformance KDSRegistration.QueryKeyPackageError(uint64_t a1)
{
  KeyPackage = lazy protocol witness table accessor for type KDSRegistration.QueryKeyPackageError and conformance KDSRegistration.QueryKeyPackageError();

  return MEMORY[0x28211F4B8](a1, KeyPackage);
}

uint64_t protocol witness for Error._code.getter in conformance KDSRegistration.QueryKeyPackageError(uint64_t a1)
{
  KeyPackage = lazy protocol witness table accessor for type KDSRegistration.QueryKeyPackageError and conformance KDSRegistration.QueryKeyPackageError();

  return MEMORY[0x28211F4A8](a1, KeyPackage);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistration.RequestManagerError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.RequestManagerError.CodingKeys and conformance KDSRegistration.RequestManagerError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistration.RequestManagerError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.RequestManagerError.CodingKeys and conformance KDSRegistration.RequestManagerError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t KDSRegistration.RequestManagerError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO19RequestManagerErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO19RequestManagerErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v13[0] = *(v1 + 2);
  v13[1] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.RequestManagerError.CodingKeys and conformance KDSRegistration.RequestManagerError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = v9;
  v15 = 0;
  lazy protocol witness table accessor for type KDSRegistration.RequestManagerError.ErrorType and conformance KDSRegistration.RequestManagerError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.RequestManagerError.CodingKeys and conformance KDSRegistration.RequestManagerError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError.CodingKeys and conformance KDSRegistration.RequestManagerError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError.CodingKeys and conformance KDSRegistration.RequestManagerError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError.CodingKeys and conformance KDSRegistration.RequestManagerError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError.CodingKeys and conformance KDSRegistration.RequestManagerError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError.CodingKeys and conformance KDSRegistration.RequestManagerError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError.CodingKeys and conformance KDSRegistration.RequestManagerError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError.CodingKeys and conformance KDSRegistration.RequestManagerError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError.CodingKeys and conformance KDSRegistration.RequestManagerError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError.CodingKeys and conformance KDSRegistration.RequestManagerError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError.CodingKeys and conformance KDSRegistration.RequestManagerError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError.CodingKeys and conformance KDSRegistration.RequestManagerError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError.CodingKeys and conformance KDSRegistration.RequestManagerError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.RequestManagerError.ErrorType and conformance KDSRegistration.RequestManagerError.ErrorType()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError.ErrorType and conformance KDSRegistration.RequestManagerError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError.ErrorType and conformance KDSRegistration.RequestManagerError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError.ErrorType and conformance KDSRegistration.RequestManagerError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError.ErrorType and conformance KDSRegistration.RequestManagerError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError.ErrorType and conformance KDSRegistration.RequestManagerError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError.ErrorType and conformance KDSRegistration.RequestManagerError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError.ErrorType and conformance KDSRegistration.RequestManagerError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError.ErrorType and conformance KDSRegistration.RequestManagerError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError.ErrorType and conformance KDSRegistration.RequestManagerError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError.ErrorType and conformance KDSRegistration.RequestManagerError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError.ErrorType and conformance KDSRegistration.RequestManagerError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError.ErrorType and conformance KDSRegistration.RequestManagerError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError.ErrorType and conformance KDSRegistration.RequestManagerError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError.ErrorType and conformance KDSRegistration.RequestManagerError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError.ErrorType and conformance KDSRegistration.RequestManagerError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError.ErrorType and conformance KDSRegistration.RequestManagerError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError.ErrorType and conformance KDSRegistration.RequestManagerError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError.ErrorType and conformance KDSRegistration.RequestManagerError.ErrorType);
  }

  return result;
}

uint64_t KDSRegistration.RequestManagerError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO19RequestManagerErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO19RequestManagerErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.RequestManagerError.CodingKeys and conformance KDSRegistration.RequestManagerError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v18 = 0;
  lazy protocol witness table accessor for type KDSRegistration.RequestManagerError.ErrorType and conformance KDSRegistration.RequestManagerError.ErrorType();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v19;
  v17 = 1;
  v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v14 = v13;
  (*(v6 + 8))(v9, v5);
  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Error._domain.getter in conformance KDSRegistration.RequestManagerError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.RequestManagerError and conformance KDSRegistration.RequestManagerError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance KDSRegistration.RequestManagerError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.RequestManagerError and conformance KDSRegistration.RequestManagerError();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistration.IsRegisteredChangedError.CodingKeys(uint64_t a1)
{
  IsRegisteredChanged = lazy protocol witness table accessor for type KDSRegistration.IsRegisteredChangedError.CodingKeys and conformance KDSRegistration.IsRegisteredChangedError.CodingKeys();

  return MEMORY[0x2821FE718](a1, IsRegisteredChanged);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistration.IsRegisteredChangedError.CodingKeys(uint64_t a1)
{
  IsRegisteredChanged = lazy protocol witness table accessor for type KDSRegistration.IsRegisteredChangedError.CodingKeys and conformance KDSRegistration.IsRegisteredChangedError.CodingKeys();

  return MEMORY[0x2821FE720](a1, IsRegisteredChanged);
}

uint64_t KDSRegistration.IsRegisteredChangedError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO24IsRegisteredChangedErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO24IsRegisteredChangedErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v13[0] = *(v1 + 2);
  v13[1] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.IsRegisteredChangedError.CodingKeys and conformance KDSRegistration.IsRegisteredChangedError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = v9;
  v15 = 0;
  lazy protocol witness table accessor for type KDSRegistration.IsRegisteredChangedError.ErrorType and conformance KDSRegistration.IsRegisteredChangedError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.IsRegisteredChangedError.CodingKeys and conformance KDSRegistration.IsRegisteredChangedError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError.CodingKeys and conformance KDSRegistration.IsRegisteredChangedError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError.CodingKeys and conformance KDSRegistration.IsRegisteredChangedError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError.CodingKeys and conformance KDSRegistration.IsRegisteredChangedError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError.CodingKeys and conformance KDSRegistration.IsRegisteredChangedError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError.CodingKeys and conformance KDSRegistration.IsRegisteredChangedError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError.CodingKeys and conformance KDSRegistration.IsRegisteredChangedError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError.CodingKeys and conformance KDSRegistration.IsRegisteredChangedError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError.CodingKeys and conformance KDSRegistration.IsRegisteredChangedError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError.CodingKeys and conformance KDSRegistration.IsRegisteredChangedError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError.CodingKeys and conformance KDSRegistration.IsRegisteredChangedError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError.CodingKeys and conformance KDSRegistration.IsRegisteredChangedError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError.CodingKeys and conformance KDSRegistration.IsRegisteredChangedError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.IsRegisteredChangedError.ErrorType and conformance KDSRegistration.IsRegisteredChangedError.ErrorType()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError.ErrorType and conformance KDSRegistration.IsRegisteredChangedError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError.ErrorType and conformance KDSRegistration.IsRegisteredChangedError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError.ErrorType and conformance KDSRegistration.IsRegisteredChangedError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError.ErrorType and conformance KDSRegistration.IsRegisteredChangedError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError.ErrorType and conformance KDSRegistration.IsRegisteredChangedError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError.ErrorType and conformance KDSRegistration.IsRegisteredChangedError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError.ErrorType and conformance KDSRegistration.IsRegisteredChangedError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError.ErrorType and conformance KDSRegistration.IsRegisteredChangedError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError.ErrorType and conformance KDSRegistration.IsRegisteredChangedError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError.ErrorType and conformance KDSRegistration.IsRegisteredChangedError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError.ErrorType and conformance KDSRegistration.IsRegisteredChangedError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError.ErrorType and conformance KDSRegistration.IsRegisteredChangedError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError.ErrorType and conformance KDSRegistration.IsRegisteredChangedError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError.ErrorType and conformance KDSRegistration.IsRegisteredChangedError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError.ErrorType and conformance KDSRegistration.IsRegisteredChangedError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError.ErrorType and conformance KDSRegistration.IsRegisteredChangedError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError.ErrorType and conformance KDSRegistration.IsRegisteredChangedError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError.ErrorType and conformance KDSRegistration.IsRegisteredChangedError.ErrorType);
  }

  return result;
}

uint64_t KDSRegistration.IsRegisteredChangedError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO24IsRegisteredChangedErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO24IsRegisteredChangedErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.IsRegisteredChangedError.CodingKeys and conformance KDSRegistration.IsRegisteredChangedError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v18 = 0;
  lazy protocol witness table accessor for type KDSRegistration.IsRegisteredChangedError.ErrorType and conformance KDSRegistration.IsRegisteredChangedError.ErrorType();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v19;
  v17 = 1;
  v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v14 = v13;
  (*(v6 + 8))(v9, v5);
  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Error._domain.getter in conformance KDSRegistration.IsRegisteredChangedError(uint64_t a1)
{
  IsRegisteredChangedError = lazy protocol witness table accessor for type KDSRegistration.IsRegisteredChangedError and conformance KDSRegistration.IsRegisteredChangedError();

  return MEMORY[0x28211F4B8](a1, IsRegisteredChangedError);
}

uint64_t protocol witness for Error._code.getter in conformance KDSRegistration.IsRegisteredChangedError(uint64_t a1)
{
  IsRegisteredChangedError = lazy protocol witness table accessor for type KDSRegistration.IsRegisteredChangedError and conformance KDSRegistration.IsRegisteredChangedError();

  return MEMORY[0x28211F4A8](a1, IsRegisteredChangedError);
}

uint64_t protocol witness for Error._code.getter in conformance KDSRegistration.ClientCreationError.ErrorType(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  v6 = lazy protocol witness table accessor for type Int and conformance Int();

  return MEMORY[0x2821FE2D0](a1, a2, v5, v6);
}

uint64_t static KDSRegistration.ClientCreationError.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    v3 = *(a1 + 2);
    v4 = *(a2 + 2);
    if (v3)
    {
      if (v4)
      {
        v5 = *(a1 + 1) == *(a2 + 1) && v3 == v4;
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
  }

  return 0;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t KDSRegistration.ObtainPhoneAuthenticationInfoError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO34ObtainPhoneAuthenticationInfoErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO34ObtainPhoneAuthenticationInfoErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v13[0] = *(v1 + 2);
  v13[1] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = v9;
  v15 = 0;
  lazy protocol witness table accessor for type KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType);
  }

  return result;
}

uint64_t KDSRegistration.ObtainPhoneAuthenticationInfoError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO34ObtainPhoneAuthenticationInfoErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO34ObtainPhoneAuthenticationInfoErrorV10CodingKeys33_3F8A84D39DC67AEC73943EAF3DCEAC12LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v18 = 0;
  lazy protocol witness table accessor for type KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v19;
  v17 = 1;
  v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v14 = v13;
  (*(v6 + 8))(v9, v5);
  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t instantiation function for generic protocol witness table for KDSRegistration.ClientCreationError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type KDSRegistration.ClientCreationError.ErrorType and conformance KDSRegistration.ClientCreationError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for KDSRegistration.ClientCreationError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type KDSRegistration.ClientCreationError and conformance KDSRegistration.ClientCreationError();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for KDSRegistration.UpdateSIMLabelIDError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type KDSRegistration.UpdateSIMLabelIDError.ErrorType and conformance KDSRegistration.UpdateSIMLabelIDError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for KDSRegistration.UpdateSIMLabelIDError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type KDSRegistration.UpdateSIMLabelIDError and conformance KDSRegistration.UpdateSIMLabelIDError();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.UpdateSIMLabelIDError and conformance KDSRegistration.UpdateSIMLabelIDError()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError and conformance KDSRegistration.UpdateSIMLabelIDError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError and conformance KDSRegistration.UpdateSIMLabelIDError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError and conformance KDSRegistration.UpdateSIMLabelIDError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError and conformance KDSRegistration.UpdateSIMLabelIDError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError and conformance KDSRegistration.UpdateSIMLabelIDError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError and conformance KDSRegistration.UpdateSIMLabelIDError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError and conformance KDSRegistration.UpdateSIMLabelIDError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError and conformance KDSRegistration.UpdateSIMLabelIDError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError and conformance KDSRegistration.UpdateSIMLabelIDError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError and conformance KDSRegistration.UpdateSIMLabelIDError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError and conformance KDSRegistration.UpdateSIMLabelIDError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError and conformance KDSRegistration.UpdateSIMLabelIDError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError and conformance KDSRegistration.UpdateSIMLabelIDError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError and conformance KDSRegistration.UpdateSIMLabelIDError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError and conformance KDSRegistration.UpdateSIMLabelIDError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError and conformance KDSRegistration.UpdateSIMLabelIDError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError and conformance KDSRegistration.UpdateSIMLabelIDError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSIMLabelIDError and conformance KDSRegistration.UpdateSIMLabelIDError);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for KDSRegistration.UpdateSupportedStateError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type KDSRegistration.UpdateSupportedStateError.ErrorType and conformance KDSRegistration.UpdateSupportedStateError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for KDSRegistration.UpdateSupportedStateError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type KDSRegistration.UpdateSupportedStateError and conformance KDSRegistration.UpdateSupportedStateError();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for KDSRegistration.IsRegisteredError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type KDSRegistration.IsRegisteredError.ErrorType and conformance KDSRegistration.IsRegisteredError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for KDSRegistration.IsRegisteredError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type KDSRegistration.IsRegisteredError and conformance KDSRegistration.IsRegisteredError();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for KDSRegistration.SignWithParticipantKeyError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type KDSRegistration.SignWithParticipantKeyError.ErrorType and conformance KDSRegistration.SignWithParticipantKeyError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for KDSRegistration.SignWithParticipantKeyError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type KDSRegistration.SignWithParticipantKeyError and conformance KDSRegistration.SignWithParticipantKeyError();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for KDSRegistration.GetIdentityError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type KDSRegistration.GetIdentityError.ErrorType and conformance KDSRegistration.GetIdentityError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for KDSRegistration.GetIdentityError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type KDSRegistration.GetIdentityError and conformance KDSRegistration.GetIdentityError();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.GetIdentityError and conformance KDSRegistration.GetIdentityError()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError and conformance KDSRegistration.GetIdentityError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError and conformance KDSRegistration.GetIdentityError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError and conformance KDSRegistration.GetIdentityError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError and conformance KDSRegistration.GetIdentityError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError and conformance KDSRegistration.GetIdentityError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError and conformance KDSRegistration.GetIdentityError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError and conformance KDSRegistration.GetIdentityError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError and conformance KDSRegistration.GetIdentityError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError and conformance KDSRegistration.GetIdentityError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError and conformance KDSRegistration.GetIdentityError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError and conformance KDSRegistration.GetIdentityError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError and conformance KDSRegistration.GetIdentityError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError and conformance KDSRegistration.GetIdentityError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError and conformance KDSRegistration.GetIdentityError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError and conformance KDSRegistration.GetIdentityError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError and conformance KDSRegistration.GetIdentityError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError and conformance KDSRegistration.GetIdentityError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError and conformance KDSRegistration.GetIdentityError);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for KDSRegistration.GetCredentialError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type KDSRegistration.GetCredentialError.ErrorType and conformance KDSRegistration.GetCredentialError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for KDSRegistration.GetCredentialError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type KDSRegistration.GetCredentialError and conformance KDSRegistration.GetCredentialError();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.GetCredentialError and conformance KDSRegistration.GetCredentialError()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError and conformance KDSRegistration.GetCredentialError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError and conformance KDSRegistration.GetCredentialError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError and conformance KDSRegistration.GetCredentialError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError and conformance KDSRegistration.GetCredentialError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError and conformance KDSRegistration.GetCredentialError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError and conformance KDSRegistration.GetCredentialError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError and conformance KDSRegistration.GetCredentialError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError and conformance KDSRegistration.GetCredentialError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError and conformance KDSRegistration.GetCredentialError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError and conformance KDSRegistration.GetCredentialError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError and conformance KDSRegistration.GetCredentialError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError and conformance KDSRegistration.GetCredentialError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError and conformance KDSRegistration.GetCredentialError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError and conformance KDSRegistration.GetCredentialError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError and conformance KDSRegistration.GetCredentialError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError and conformance KDSRegistration.GetCredentialError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError and conformance KDSRegistration.GetCredentialError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetCredentialError and conformance KDSRegistration.GetCredentialError);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for KDSRegistration.GetClientIDError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type KDSRegistration.GetClientIDError.ErrorType and conformance KDSRegistration.GetClientIDError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for KDSRegistration.GetClientIDError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type KDSRegistration.GetClientIDError and conformance KDSRegistration.GetClientIDError();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.GetClientIDError and conformance KDSRegistration.GetClientIDError()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError and conformance KDSRegistration.GetClientIDError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError and conformance KDSRegistration.GetClientIDError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError and conformance KDSRegistration.GetClientIDError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError and conformance KDSRegistration.GetClientIDError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError and conformance KDSRegistration.GetClientIDError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError and conformance KDSRegistration.GetClientIDError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError and conformance KDSRegistration.GetClientIDError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError and conformance KDSRegistration.GetClientIDError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError and conformance KDSRegistration.GetClientIDError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError and conformance KDSRegistration.GetClientIDError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError and conformance KDSRegistration.GetClientIDError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError and conformance KDSRegistration.GetClientIDError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError and conformance KDSRegistration.GetClientIDError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError and conformance KDSRegistration.GetClientIDError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError and conformance KDSRegistration.GetClientIDError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError and conformance KDSRegistration.GetClientIDError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError and conformance KDSRegistration.GetClientIDError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.GetClientIDError and conformance KDSRegistration.GetClientIDError);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for KDSRegistration.RegisterKeyPackageError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type KDSRegistration.RegisterKeyPackageError.ErrorType and conformance KDSRegistration.RegisterKeyPackageError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for KDSRegistration.RegisterKeyPackageError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type KDSRegistration.RegisterKeyPackageError and conformance KDSRegistration.RegisterKeyPackageError();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.RegisterKeyPackageError and conformance KDSRegistration.RegisterKeyPackageError()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError and conformance KDSRegistration.RegisterKeyPackageError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError and conformance KDSRegistration.RegisterKeyPackageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError and conformance KDSRegistration.RegisterKeyPackageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError and conformance KDSRegistration.RegisterKeyPackageError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError and conformance KDSRegistration.RegisterKeyPackageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError and conformance KDSRegistration.RegisterKeyPackageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError and conformance KDSRegistration.RegisterKeyPackageError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError and conformance KDSRegistration.RegisterKeyPackageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError and conformance KDSRegistration.RegisterKeyPackageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError and conformance KDSRegistration.RegisterKeyPackageError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError and conformance KDSRegistration.RegisterKeyPackageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError and conformance KDSRegistration.RegisterKeyPackageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError and conformance KDSRegistration.RegisterKeyPackageError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError and conformance KDSRegistration.RegisterKeyPackageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError and conformance KDSRegistration.RegisterKeyPackageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError and conformance KDSRegistration.RegisterKeyPackageError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError and conformance KDSRegistration.RegisterKeyPackageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError and conformance KDSRegistration.RegisterKeyPackageError);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for KDSRegistration.DeregisterKeyPackageError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type KDSRegistration.DeregisterKeyPackageError.ErrorType and conformance KDSRegistration.DeregisterKeyPackageError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for KDSRegistration.DeregisterKeyPackageError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type KDSRegistration.DeregisterKeyPackageError and conformance KDSRegistration.DeregisterKeyPackageError();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.DeregisterKeyPackageError and conformance KDSRegistration.DeregisterKeyPackageError()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError and conformance KDSRegistration.DeregisterKeyPackageError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError and conformance KDSRegistration.DeregisterKeyPackageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError and conformance KDSRegistration.DeregisterKeyPackageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError and conformance KDSRegistration.DeregisterKeyPackageError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError and conformance KDSRegistration.DeregisterKeyPackageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError and conformance KDSRegistration.DeregisterKeyPackageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError and conformance KDSRegistration.DeregisterKeyPackageError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError and conformance KDSRegistration.DeregisterKeyPackageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError and conformance KDSRegistration.DeregisterKeyPackageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError and conformance KDSRegistration.DeregisterKeyPackageError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError and conformance KDSRegistration.DeregisterKeyPackageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError and conformance KDSRegistration.DeregisterKeyPackageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError and conformance KDSRegistration.DeregisterKeyPackageError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError and conformance KDSRegistration.DeregisterKeyPackageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError and conformance KDSRegistration.DeregisterKeyPackageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError and conformance KDSRegistration.DeregisterKeyPackageError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError and conformance KDSRegistration.DeregisterKeyPackageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.DeregisterKeyPackageError and conformance KDSRegistration.DeregisterKeyPackageError);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for KDSRegistration.QueryKeyPackageError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type KDSRegistration.QueryKeyPackageError.ErrorType and conformance KDSRegistration.QueryKeyPackageError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.QueryKeyPackageError and conformance KDSRegistration.QueryKeyPackageError()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError and conformance KDSRegistration.QueryKeyPackageError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError and conformance KDSRegistration.QueryKeyPackageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError and conformance KDSRegistration.QueryKeyPackageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError and conformance KDSRegistration.QueryKeyPackageError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError and conformance KDSRegistration.QueryKeyPackageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError and conformance KDSRegistration.QueryKeyPackageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError and conformance KDSRegistration.QueryKeyPackageError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError and conformance KDSRegistration.QueryKeyPackageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError and conformance KDSRegistration.QueryKeyPackageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError and conformance KDSRegistration.QueryKeyPackageError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError and conformance KDSRegistration.QueryKeyPackageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError and conformance KDSRegistration.QueryKeyPackageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError and conformance KDSRegistration.QueryKeyPackageError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError and conformance KDSRegistration.QueryKeyPackageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.QueryKeyPackageError and conformance KDSRegistration.QueryKeyPackageError);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for KDSRegistration.RequestManagerError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type KDSRegistration.RequestManagerError.ErrorType and conformance KDSRegistration.RequestManagerError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for KDSRegistration.RequestManagerError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type KDSRegistration.RequestManagerError and conformance KDSRegistration.RequestManagerError();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.RequestManagerError and conformance KDSRegistration.RequestManagerError()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError and conformance KDSRegistration.RequestManagerError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError and conformance KDSRegistration.RequestManagerError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError and conformance KDSRegistration.RequestManagerError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError and conformance KDSRegistration.RequestManagerError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError and conformance KDSRegistration.RequestManagerError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError and conformance KDSRegistration.RequestManagerError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError and conformance KDSRegistration.RequestManagerError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError and conformance KDSRegistration.RequestManagerError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError and conformance KDSRegistration.RequestManagerError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError and conformance KDSRegistration.RequestManagerError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError and conformance KDSRegistration.RequestManagerError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError and conformance KDSRegistration.RequestManagerError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError and conformance KDSRegistration.RequestManagerError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError and conformance KDSRegistration.RequestManagerError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError and conformance KDSRegistration.RequestManagerError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError and conformance KDSRegistration.RequestManagerError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError and conformance KDSRegistration.RequestManagerError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RequestManagerError and conformance KDSRegistration.RequestManagerError);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for KDSRegistration.IsRegisteredChangedError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type KDSRegistration.IsRegisteredChangedError.ErrorType and conformance KDSRegistration.IsRegisteredChangedError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for KDSRegistration.IsRegisteredChangedError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type KDSRegistration.IsRegisteredChangedError and conformance KDSRegistration.IsRegisteredChangedError();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for KDSRegistration.ObtainPhoneAuthenticationInfoError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type KDSRegistration.ObtainPhoneAuthenticationInfoError and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for KDSRegistration.ClientCreationError(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  a1[3] = a6();
  result = a7();
  a1[4] = result;
  return result;
}

uint64_t protocol witness for Error._domain.getter in conformance KDSRegistration.ObtainPhoneAuthenticationInfoError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.ObtainPhoneAuthenticationInfoError and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance KDSRegistration.ObtainPhoneAuthenticationInfoError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.ObtainPhoneAuthenticationInfoError and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t getEnumTagSinglePayload for KDSRegistration.RegisterKeyPackageError.ErrorType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for KDSRegistration.RegisterKeyPackageError.ErrorType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy15SecureMessaging3MLSO9AllMemberOG_AH09PersistedH0Vs5NeverOTg504_s15d160Messaging3MLSO17SelfHealOperationC7perform2on15metricCollector16keyPackageResultAC05GroupfM0VAC21SwiftMLSGroupProtocol_pSg_AA06MetricJ0VAC03KeyL7FetcherC05Fetchw10VtYaKFAC15ih5VAC03G9W0OXEfU0_Tf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v32 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = v32;
  v4 = v3 + 56;
  v5 = -1 << *(v3 + 32);
  result = _HashTable.startBucket.getter();
  v7 = result;
  v8 = 0;
  v25 = v3 + 64;
  v26 = v1;
  v27 = v3 + 56;
  v28 = v3;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    v29 = v8;
    v30 = *(v3 + 36);
    v11 = *(v3 + 48) + 32 * v7;
    v13 = *v11;
    v12 = *(v11 + 8);
    v14 = *(v11 + 16);
    v31 = *(v11 + 24);
    outlined copy of MLS.AllMember();
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    result = swift_task_isCurrentExecutor();
    if ((result & 1) == 0)
    {
      result = swift_task_reportUnexpectedExecutor();
    }

    v16 = *(v32 + 16);
    v15 = *(v32 + 24);
    if (v16 >= v15 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
    }

    *(v32 + 16) = v16 + 1;
    v17 = v32 + 32 * v16;
    *(v17 + 32) = v13;
    *(v17 + 40) = v12;
    *(v17 + 48) = v14;
    *(v17 + 56) = v31;
    *(v17 + 57) = 0;
    v3 = v28;
    v9 = 1 << *(v28 + 32);
    if (v7 >= v9)
    {
      goto LABEL_26;
    }

    v4 = v27;
    v18 = *(v27 + 8 * v10);
    if ((v18 & (1 << v7)) == 0)
    {
      goto LABEL_27;
    }

    if (v30 != *(v28 + 36))
    {
      goto LABEL_28;
    }

    v19 = v18 & (-2 << (v7 & 0x3F));
    if (v19)
    {
      v9 = __clz(__rbit64(v19)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v10 << 6;
      v21 = v10 + 1;
      v22 = (v25 + 8 * v10);
      while (v21 < (v9 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = outlined consume of Set<MLS.Identity.SigningIdentity>.Index._Variant(v7, v30, 0);
          v9 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      result = outlined consume of Set<MLS.Identity.SigningIdentity>.Index._Variant(v7, v30, 0);
    }

LABEL_4:
    v8 = v29 + 1;
    v7 = v9;
    if (v29 + 1 == v26)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t MLS.SelfHealOperation.__allocating_init(group:context:swiftMLSClient:groupLoader:persister:eventSender:keyPackageProvider:credentialProvider:selfMember:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 *a11, __int128 *a12, uint64_t *a13)
{
  v22 = *(v13 + 48);
  v23 = *(v13 + 52);
  v24 = swift_allocObject();
  MLS.SelfHealOperation.init(group:context:swiftMLSClient:groupLoader:persister:eventSender:keyPackageProvider:credentialProvider:selfMember:clientIdentifier:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
  return v24;
}

uint64_t closure #1 in MLS.SelfHealOperation.errorHandlingPolicy.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5[20] = a3;
  v5[21] = a5;
  v5[18] = a1;
  v5[19] = a2;
  v7 = *a5;
  v5[22] = *a5;
  v8 = *(v7 + 88);
  v5[23] = v8;
  v9 = *(v8 - 8);
  v5[24] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v12 = *a4;
  v5[25] = v11;
  v5[26] = v12;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v13 = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.SelfHealOperation.errorHandlingPolicy.getter, v13, 0);
}

uint64_t closure #1 in MLS.SelfHealOperation.errorHandlingPolicy.getter()
{
  v68 = v0;
  outlined init with copy of MLS.SwiftMLSGroupProtocol?(*(v0 + 160), v0 + 104);
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);
  if (*(v0 + 128))
  {
    outlined init with take of MLS.KeyUpdatePolicy((v0 + 104), v0 + 64);
    v3 = *(*v1 + 208);

    v4 = v2;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 176);
      v65 = *(v0 + 184);
      v8 = *(v0 + 168);
      v9 = *(v0 + 152);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v67[0] = v12;
      *v10 = 136315394;
      v13 = *(*v8 + 136);
      v14 = *(v7 + 112);
      v15 = (*(v14 + 16))(v65, v14);
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v67);

      *(v10 + 4) = v17;
      *(v10 + 12) = 2112;
      v18 = v9;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 14) = v19;
      *v11 = v19;
      _os_log_impl(&dword_264F1F000, v5, v6, "SelfHealOperation hit error. Advancing Era { identifier: %s, error: %@ }", v10, 0x16u);
      outlined destroy of NSObject?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x266755550](v11, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x266755550](v12, -1, -1);
      MEMORY[0x266755550](v10, -1, -1);
    }

    else
    {
      v42 = *(v0 + 176);

      v14 = *(v42 + 112);
    }

    v43 = *(v0 + 200);
    v66 = *(v0 + 208);
    v63 = v43;
    v45 = *(v0 + 184);
    v44 = *(v0 + 192);
    v47 = *(v0 + 168);
    v46 = *(v0 + 176);
    v48 = *(v0 + 144);
    v49 = *(v46 + 120);
    v50 = *(v46 + 96);
    *(v0 + 16) = *(v46 + 80);
    *(v0 + 24) = v45;
    *(v0 + 32) = v50;
    *(v0 + 48) = v14;
    *(v0 + 56) = v49;
    v51 = type metadata accessor for MLS.EraAdvancementOperation();
    v52 = *(v47 + 3);
    v64 = *(v47 + 2);
    (*(v44 + 16))(v43, &v47[*(*v47 + 136)], v45);
    v53 = &v47[*(*v47 + 160)];
    v54 = *v53;
    v55 = v53[1];
    v56 = &v47[*(*v47 + 168)];
    v57 = *v56;
    v58 = v56[1];
    v59 = &v47[*(*v47 + 200)];
    v60 = v59[1];
    v67[0] = *v59;
    v67[1] = v60;

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    v61 = MLS.EraAdvancementOperation.__allocating_init(group:context:persister:eventSender:clientIdentifier:)(v64, v52, v63, v54, v55, v57, v58, v67);
    *(v48 + 24) = v51;
    *(v48 + 32) = swift_getWitnessTable();
    *v48 = v61;
    outlined init with take of MLS.KeyUpdatePolicy((v0 + 64), v48 + 40);
    *(v48 + 408) = 2;
    *(v48 + 424) = 0;
    *(v48 + 432) = 0;
    *(v48 + 416) = v66;

    v40 = *(v0 + 8);
  }

  else
  {
    outlined destroy of NSObject?(v0 + 104, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);
    v20 = *(*v1 + 208);

    v21 = v2;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = *(v0 + 176);
      v25 = *(v0 + 184);
      v26 = *(v0 + 168);
      v27 = *(v0 + 152);
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v67[0] = v30;
      *v28 = 136315394;
      v31 = *(*v26 + 136);
      v32 = (*(*(v24 + 112) + 16))(v25);
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, v67);

      *(v28 + 4) = v34;
      *(v28 + 12) = 2112;
      v35 = v27;
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 14) = v36;
      *v29 = v36;
      _os_log_impl(&dword_264F1F000, v22, v23, "SelfHealOperation hit error without a group. Throwing error { identifier: %s, error: %@ }", v28, 0x16u);
      outlined destroy of NSObject?(v29, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x266755550](v29, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x266755550](v30, -1, -1);
      MEMORY[0x266755550](v28, -1, -1);
    }

    v37 = *(v0 + 200);
    v38 = *(v0 + 152);
    swift_willThrow();
    v39 = v38;

    v40 = *(v0 + 8);
    v41 = *(v0 + 152);
  }

  return v40();
}

uint64_t MLS.SelfHealOperation.group.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MLS.SelfHealOperation.persister.getter()
{
  v1 = (v0 + *(*v0 + 160));
  v2 = *v1;
  v3 = v1[1];
  return swift_unknownObjectRetain();
}

uint64_t MLS.SelfHealOperation.eventSender.getter()
{
  v1 = (v0 + *(*v0 + 168));
  v2 = *v1;
  v3 = v1[1];
  return swift_unknownObjectRetain();
}

uint64_t MLS.SelfHealOperation.selfMember.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + *(*v1 + 192);
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = *(v2 + 24);
  return outlined copy of MLS.AllMember();
}

uint64_t MLS.SelfHealOperation.clientIdentifier.getter@<X0>(void *a1@<X8>)
{
  v2 = (v1 + *(*v1 + 200));
  v3 = v2[1];
  *a1 = *v2;
  a1[1] = v3;
}

uint64_t MLS.SelfHealOperation.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 208);
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

char *MLS.SelfHealOperation.init(group:context:swiftMLSClient:groupLoader:persister:eventSender:keyPackageProvider:credentialProvider:selfMember:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 *a11, __int128 *a12, uint64_t *a13)
{
  v21 = *v13;
  v33 = *a12;
  v32 = *(a12 + 2);
  v31 = *(a12 + 24);
  v34 = a13[1];
  v35 = *a13;
  v22 = &v13[*(*v13 + 208)];
  Logger.init(subsystem:category:)();
  *(v13 + 2) = a1;
  *(v13 + 3) = a2;
  (*(*(*(v21 + 88) - 8) + 32))(&v13[*(*v13 + 136)], a3);
  v23 = &v13[*(*v13 + 144)];
  *(v23 + 25) = *(a4 + 25);
  v24 = a4[1];
  *v23 = *a4;
  *(v23 + 1) = v24;
  *&v13[*(*v13 + 152)] = a5;
  v25 = &v13[*(*v13 + 160)];
  *v25 = a6;
  *(v25 + 1) = a7;
  v26 = &v13[*(*v13 + 168)];
  *v26 = a8;
  *(v26 + 1) = a9;
  outlined init with take of MLS.KeyPackageProvider(a10, &v13[*(*v13 + 176)], type metadata accessor for MLS.KeyPackageProvider);
  outlined init with take of MLS.KeyUpdatePolicy(a11, &v13[*(*v13 + 184)]);
  v27 = &v13[*(*v13 + 192)];
  *v27 = v33;
  *(v27 + 2) = v32;
  v27[24] = v31;
  v28 = &v13[*(*v13 + 200)];
  *v28 = v35;
  *(v28 + 1) = v34;
  return v13;
}

uint64_t partial apply for closure #1 in MLS.SelfHealOperation.errorHandlingPolicy.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.SelfHealOperation.errorHandlingPolicy.getter(a1, a2, a3, a4, v4);
}

uint64_t MLS.SelfHealOperation.membersRequiringKeyPackages(swiftMLSGroup:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 8);
  v2 = MEMORY[0x277D84F90];

  return v1(v2);
}

uint64_t MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4[180] = v3;
  v4[179] = a2;
  v4[178] = a1;
  v6 = *v3;
  v4[181] = *v3;
  v7 = v6[11];
  v4[182] = v7;
  v8 = *(v7 - 8);
  v4[183] = v8;
  v9 = *(v8 + 64) + 15;
  v4[184] = swift_task_alloc();
  v10 = type metadata accessor for MLS.Group.Message();
  v4[185] = v10;
  v11 = *(v10 - 8);
  v4[186] = v11;
  v12 = *(v11 + 64) + 15;
  v4[187] = swift_task_alloc();
  v13 = *(*(type metadata accessor for MLS.Client.KeyPackage() - 8) + 64) + 15;
  v4[188] = swift_task_alloc();
  v14 = type metadata accessor for MLS.Group.GroupInfo();
  v4[189] = v14;
  v15 = *(v14 - 8);
  v4[190] = v15;
  v16 = *(v15 + 64) + 15;
  v4[191] = swift_task_alloc();
  v17 = type metadata accessor for MLS.Client.Client.ResyncInput();
  v4[192] = v17;
  v18 = *(v17 - 8);
  v4[193] = v18;
  v19 = *(v18 + 64) + 15;
  v4[194] = swift_task_alloc();
  v20 = type metadata accessor for MetricCollector.Event();
  v4[195] = v20;
  v21 = *(*(v20 - 8) + 64) + 15;
  v4[196] = swift_task_alloc();
  v4[197] = swift_task_alloc();
  v22 = v6[13];
  v4[198] = v22;
  v4[199] = *(*(v22 + 8) + 8);
  v23 = v6[10];
  v4[200] = v23;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[201] = AssociatedTypeWitness;
  v25 = *(*(AssociatedTypeWitness - 8) + 64) + 15;
  v4[202] = swift_task_alloc();
  v26 = *(v23 - 8);
  v4[203] = v26;
  v27 = *(v26 + 64) + 15;
  v4[204] = swift_task_alloc();
  v4[205] = swift_task_alloc();
  v4[206] = swift_task_alloc();
  v4[207] = swift_task_alloc();
  v4[208] = swift_task_alloc();
  v4[209] = swift_task_alloc();
  v4[210] = swift_task_alloc();
  v4[211] = swift_task_alloc();
  v4[212] = swift_task_alloc();
  v4[213] = swift_task_alloc();
  v4[214] = swift_task_alloc();
  v4[215] = swift_task_alloc();
  v4[216] = swift_task_alloc();
  v4[217] = swift_task_alloc();
  v4[218] = swift_task_alloc();
  v4[219] = swift_task_alloc();
  v4[220] = swift_task_alloc();
  v4[221] = swift_task_alloc();
  v4[222] = swift_task_alloc();
  v4[223] = swift_task_alloc();
  v4[224] = swift_task_alloc();
  v4[225] = swift_task_alloc();
  v4[226] = *a3;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v28 = static MLSActor.shared;
  v4[227] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:), v28, 0);
}

uint64_t MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)()
{
  v1 = v0[201];
  v2 = v0[200];
  v19 = v0[199];
  v20 = v0[225];
  v17 = v0[198];
  v18 = v0[202];
  v3 = v0[182];
  v4 = v0[181];
  v5 = v0[180];
  v6 = v0[179];
  v0[176] = v0[226];
  v0[228] = *(*v5 + 136);
  v7 = *(v4 + 112);
  v0[229] = v7;
  v8 = *(v7 + 16);

  v0[230] = v8(v3, v7);
  v0[231] = v9;
  v10 = swift_task_alloc();
  v0[232] = v10;
  *(v10 + 16) = v6;
  *(v10 + 24) = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[233] = AssociatedConformanceWitness;
  v12 = *(AssociatedConformanceWitness + 56);
  v0[234] = v12;
  v0[235] = (AssociatedConformanceWitness + 56) & 0xFFFFFFFFFFFFLL | 0xE321000000000000;
  v12(v1, AssociatedConformanceWitness);
  VersatileError.init(type:)(v18, v2, v19);
  v13 = swift_task_alloc();
  v0[236] = v13;
  *v13 = v0;
  v13[1] = MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  v14 = v0[225];
  v15 = v0[200];
  v23 = v0[224];
  v22 = v0[199];

  return _s15SecureMessaging12asyncRethrow_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lF((v0 + 42), async function pointer to partial apply for implicit closure #1 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:), v10, v14, 0, 0, v15);
}

{
  v2 = *v1;
  v3 = *(*v1 + 1888);
  v4 = *(*v1 + 1624);
  v19 = *v1;

  v5 = (v4 + 8);
  v2[237] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  if (v0)
  {
    v6 = v2[231];
    v7 = v2[227];
    v8 = v2[225];
    v9 = v2[200];
    v10 = *v5;
    v2[268] = *v5;
    v10(v8, v9);

    v11 = v2[176];

    v12 = MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
    v13 = v7;
  }

  else
  {
    v14 = v2[227];
    v15 = v2[225];
    v16 = v2[200];
    v17 = *v5;
    v2[238] = *v5;
    v17(v15, v16);
    v12 = MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
    v13 = v14;
  }

  return MEMORY[0x2822009F8](v12, v13, 0);
}

{
  v25 = v0;
  v1 = *(v0 + 1848);
  v2 = *(v0 + 1440);
  v3 = *(v0 + 352);
  *(v0 + 440) = *(v0 + 336);
  *(v0 + 456) = v3;
  *(v0 + 536) = *(v0 + 432);
  v4 = *(v0 + 416);
  *(v0 + 504) = *(v0 + 400);
  *(v0 + 520) = v4;
  v5 = *(v0 + 384);
  *(v0 + 472) = *(v0 + 368);
  *(v0 + 488) = v5;
  *(v0 + 1912) = *(*v2 + 208);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 1848);
    v9 = *(v0 + 1840);
    v10 = *(v0 + 1440);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136315394;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v24);
    *(v11 + 12) = 2080;
    *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v10 + 16), *(v10 + 24), &v24);
    _os_log_impl(&dword_264F1F000, v6, v7, "SelfHealOperation fetching group info { identifier: %s, group: %s }", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v12, -1, -1);
    MEMORY[0x266755550](v11, -1, -1);
  }

  v13 = (*(v0 + 1440) + *(**(v0 + 1440) + 168));
  *(v0 + 1920) = *v13;
  v14 = v13[1];
  *(v0 + 1928) = v14;
  ObjectType = swift_getObjectType();
  v16 = *(v0 + 456);
  *(v0 + 544) = *(v0 + 440);
  *(v0 + 560) = v16;
  *(v0 + 640) = *(v0 + 536);
  v17 = *(v0 + 520);
  *(v0 + 608) = *(v0 + 504);
  *(v0 + 624) = v17;
  v18 = *(v0 + 488);
  *(v0 + 576) = *(v0 + 472);
  *(v0 + 592) = v18;
  v19 = *(v14 + 48);
  v23 = (v19 + *v19);
  v20 = v19[1];
  v21 = swift_task_alloc();
  *(v0 + 1936) = v21;
  *v21 = v0;
  v21[1] = MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);

  return v23(v0 + 1336, v0 + 544, ObjectType, v14);
}

{
  v1 = *(*v0 + 1936);
  v2 = *(*v0 + 1816);
  v4 = *v0;

  return MEMORY[0x2822009F8](MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:), v2, 0);
}

{
  v130 = v0;
  *(v0 + 1944) = *(v0 + 1336);
  v1 = *(v0 + 1344);
  *(v0 + 1952) = v1;
  *(v0 + 1968) = *(v0 + 1360);
  if (v1 >> 60 == 15)
  {
    outlined init with copy of MLS.SwiftMLSGroupProtocol?(*(v0 + 1432), v0 + 1136);
    v2 = *(v0 + 1912);
    v3 = *(v0 + 1848);
    v4 = *(v0 + 1440);
    if (*(v0 + 1160))
    {
      outlined init with take of MLS.KeyUpdatePolicy((v0 + 1136), v0 + 1096);

      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.error.getter();

      v7 = os_log_type_enabled(v5, v6);
      v8 = *(v0 + 1848);
      if (v7)
      {
        v9 = *(v0 + 1840);
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v129[0] = v11;
        *v10 = 136315138;
        v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, v129);

        *(v10 + 4) = v12;
        _os_log_impl(&dword_264F1F000, v5, v6, "SelfHealOperation failed to get groupRecoveryInfo. Advancing era { identifier: %s }", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v11);
        MEMORY[0x266755550](v11, -1, -1);
        MEMORY[0x266755550](v10, -1, -1);
      }

      else
      {
      }

      v127 = *(v0 + 1928);
      v33 = *(v0 + 1920);
      v34 = *(v0 + 1832);
      v35 = *(v0 + 1824);
      v36 = *(v0 + 1584);
      v37 = *(v0 + 1472);
      v38 = *(v0 + 1464);
      v39 = *(v0 + 1456);
      v40 = *(v0 + 1448);
      v41 = *(v0 + 1440);
      v42 = *(v0 + 1424);
      v43 = *(v40 + 96);
      v44 = *(v40 + 120);
      *(v0 + 1000) = *(v0 + 1600);
      *(v0 + 1008) = v39;
      *(v0 + 1016) = v43;
      *(v0 + 1024) = v36;
      *(v0 + 1032) = v34;
      *(v0 + 1040) = v44;
      v45 = type metadata accessor for MLS.EraAdvancementOperation();
      v46 = *(v41 + 3);
      v124 = *(v41 + 2);
      (*(v38 + 16))(v37, &v41[v35], v39);
      v47 = &v41[*(*v41 + 160)];
      v48 = *v47;
      v49 = v47[1];
      v50 = &v41[*(*v41 + 200)];
      v51 = v50[1];
      v129[0] = *v50;
      v129[1] = v51;

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      v52 = MLS.EraAdvancementOperation.__allocating_init(group:context:persister:eventSender:clientIdentifier:)(v124, v46, v37, v48, v49, v33, v127, v129);
      *(v42 + 24) = v45;
      *(v42 + 32) = swift_getWitnessTable();
      outlined destroy of MLS.Group(v0 + 440);
      *v42 = v52;
      outlined init with take of MLS.KeyUpdatePolicy((v0 + 1096), v42 + 40);
      *(v42 + 408) = 2;
      *(v42 + 416) = *(v0 + 1408);
      *(v42 + 424) = 0;
      *(v42 + 432) = 0;
      v53 = *(v0 + 1856);
      v54 = *(v0 + 1800);
      v55 = *(v0 + 1792);
      v56 = *(v0 + 1784);
      v57 = *(v0 + 1776);
      v58 = *(v0 + 1768);
      v59 = *(v0 + 1760);
      v60 = *(v0 + 1752);
      v61 = *(v0 + 1744);
      v62 = *(v0 + 1736);
      v86 = *(v0 + 1728);
      v88 = *(v0 + 1720);
      v90 = *(v0 + 1712);
      v92 = *(v0 + 1704);
      v94 = *(v0 + 1696);
      v96 = *(v0 + 1688);
      v98 = *(v0 + 1680);
      v100 = *(v0 + 1672);
      v102 = *(v0 + 1664);
      v104 = *(v0 + 1656);
      v106 = *(v0 + 1648);
      v108 = *(v0 + 1640);
      v110 = *(v0 + 1632);
      v112 = *(v0 + 1616);
      v114 = *(v0 + 1576);
      v116 = *(v0 + 1568);
      v118 = *(v0 + 1552);
      v120 = *(v0 + 1528);
      v122 = *(v0 + 1504);
      v125 = *(v0 + 1496);
      v128 = *(v0 + 1472);

      v63 = *(v0 + 8);
    }

    else
    {
      v24 = *(v0 + 1408);

      outlined destroy of NSObject?(v0 + 1136, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();

      v27 = os_log_type_enabled(v25, v26);
      v28 = *(v0 + 1848);
      if (v27)
      {
        v29 = *(v0 + 1840);
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v129[0] = v31;
        *v30 = 136315138;
        v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v28, v129);

        *(v30 + 4) = v32;
        _os_log_impl(&dword_264F1F000, v25, v26, "SelfHealOperation failed to get groupRecoveryInfo and has no swiftMLSGroup. Failing { identifier: %s }", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v31);
        MEMORY[0x266755550](v31, -1, -1);
        MEMORY[0x266755550](v30, -1, -1);
      }

      else
      {
      }

      v64 = *(v0 + 1688);
      v65 = *(v0 + 1616);
      v66 = *(v0 + 1608);
      v67 = *(v0 + 1600);
      v68 = *(v0 + 1592);
      (*(*(v0 + 1864) + 136))();
      VersatileError.init(type:)(v65, v67, v68);
      v69 = *(*(v68 + 8) + 8);
      if (_getErrorEmbeddedNSError<A>(_:)())
      {
        v70 = *(v0 + 1896);
        (*(v0 + 1904))(*(v0 + 1688), *(v0 + 1600));
      }

      else
      {
        v71 = *(v0 + 1688);
        v72 = *(v0 + 1624);
        v73 = *(v0 + 1600);
        swift_allocError();
        (*(v72 + 32))(v74, v71, v73);
      }

      v75 = *(v0 + 1856);
      swift_willThrow();
      outlined destroy of MLS.Group(v0 + 440);

      v76 = *(v0 + 1800);
      v77 = *(v0 + 1792);
      v78 = *(v0 + 1784);
      v79 = *(v0 + 1776);
      v80 = *(v0 + 1768);
      v81 = *(v0 + 1760);
      v82 = *(v0 + 1752);
      v83 = *(v0 + 1744);
      v84 = *(v0 + 1736);
      v85 = *(v0 + 1728);
      v87 = *(v0 + 1720);
      v89 = *(v0 + 1712);
      v91 = *(v0 + 1704);
      v93 = *(v0 + 1696);
      v95 = *(v0 + 1688);
      v97 = *(v0 + 1680);
      v99 = *(v0 + 1672);
      v101 = *(v0 + 1664);
      v103 = *(v0 + 1656);
      v105 = *(v0 + 1648);
      v107 = *(v0 + 1640);
      v109 = *(v0 + 1632);
      v111 = *(v0 + 1616);
      v113 = *(v0 + 1576);
      v115 = *(v0 + 1568);
      v117 = *(v0 + 1552);
      v119 = *(v0 + 1528);
      v121 = *(v0 + 1504);
      v123 = *(v0 + 1496);
      v126 = *(v0 + 1472);

      v63 = *(v0 + 8);
    }

    return v63();
  }

  else
  {
    v13 = *(v0 + 1784);
    v14 = *(v0 + 1616);
    v15 = *(v0 + 1608);
    v16 = *(v0 + 1600);
    v17 = *(v0 + 1592);
    (*(*(v0 + 1864) + 120))();
    VersatileError.init(type:)(v14, v16, v17);
    v18 = swift_task_alloc();
    *(v0 + 1976) = v18;
    *v18 = v0;
    v18[1] = MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
    v19 = *(v0 + 1784);
    v20 = *(v0 + 1600);
    v21 = *(v0 + 1592);
    v22 = *(v0 + 1440);
    v133 = *(v0 + 1776);
    v132 = v21;

    return _s15SecureMessaging12asyncRethrow_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lF(v0 + 1392, &async function pointer to partial apply for implicit closure #4 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:), v22, v19, 0, 0, v20);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 1976);
  v12 = *v1;
  *(*v1 + 1984) = v0;

  v4 = *(v2 + 1896);
  if (v0)
  {
    v5 = *(v2 + 1848);
    v6 = *(v2 + 1816);
    (*(v2 + 1904))(*(v2 + 1784), *(v2 + 1600));

    v7 = *(v2 + 1408);

    v8 = MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
    v9 = v6;
  }

  else
  {
    v10 = *(v2 + 1816);
    (*(v2 + 1904))(*(v2 + 1784), *(v2 + 1600));
    v8 = MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
    v9 = v10;
  }

  return MEMORY[0x2822009F8](v8, v9, 0);
}

{
  v82 = v0;
  v1 = *(v0 + 1912);
  v2 = *(v0 + 1848);
  v3 = *(v0 + 1440);
  v4 = *(v0 + 1392);
  *(v0 + 1992) = v4;
  v5 = *(v0 + 1400);
  *(v0 + 2000) = v5;

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 1848);
    v9 = *(v0 + 1840);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v81[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, v81);
    _os_log_impl(&dword_264F1F000, v6, v7, "SelfHealOperation calling resync { identifier: %s }", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x266755550](v11, -1, -1);
    MEMORY[0x266755550](v10, -1, -1);
  }

  v12 = *(v0 + 1576);
  v13 = *(v0 + 1568);
  v14 = *(v0 + 1560);
  v15 = *(v0 + 1440);
  Date.init()();
  v16 = *(v14 + 20);
  v17 = type metadata accessor for Date();
  (*(*(v17 - 8) + 56))(v12 + v16, 1, 1, v17);
  outlined init with take of MLS.KeyPackageProvider(v12, v13, type metadata accessor for MetricCollector.Event);
  v18 = *(v0 + 1408);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v81[0] = v18;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, 0x534C4D7466697753, 0xEE0074696D6D6F43, isUniquelyReferenced_nonNull_native);
  v20 = v81[0];

  *(v0 + 1408) = v20;
  outlined init with copy of MLS.SwiftMLSClientPicker(v15 + *(*v15 + 144), v0 + 1048);
  if (*(v0 + 1088))
  {
    outlined init with take of MLS.KeyUpdatePolicy((v0 + 1048), v0 + 1216);
  }

  else
  {
    outlined init with take of MLS.KeyUpdatePolicy((v0 + 1048), v0 + 1296);
    v21 = *(v0 + 1320);
    v22 = *(v0 + 1328);
    v23 = __swift_project_boxed_opaque_existential_1((v0 + 1296), v21);
    *(v0 + 1240) = v21;
    *(v0 + 1248) = *(v22 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 1216));
    (*(*(v21 - 8) + 16))(boxed_opaque_existential_1, v23, v21);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1296));
  }

  v25 = *(v0 + 1984);
  v26 = *(v0 + 1952);
  v27 = *(v0 + 1944);
  v28 = *(v0 + 1528);
  v29 = *(v0 + 1240);
  v30 = *(v0 + 1248);
  __swift_project_boxed_opaque_existential_1((v0 + 1216), v29);
  outlined copy of Data._Representation(v27, v26);
  MLS.Group.GroupInfo.init(fromRaw:)();
  v31 = *(v0 + 1968);
  v32 = *(v0 + 1960);
  if (v25)
  {
    v33 = *(v0 + 1952);
    v34 = *(v0 + 1944);
    v35 = *(v0 + 1856);
    v36 = *(v0 + 1848);

    outlined consume of Data._Representation(v4, v5);
    outlined destroy of MLS.Group(v0 + 440);
    outlined consume of MLS.GroupRecoveryInfo?(v34, v33, v32, v31);
    v40 = *(v0 + 1408);

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1216));

    v41 = *(v0 + 1800);
    v42 = *(v0 + 1792);
    v43 = *(v0 + 1784);
    v44 = *(v0 + 1776);
    v45 = *(v0 + 1768);
    v46 = *(v0 + 1760);
    v47 = *(v0 + 1752);
    v48 = *(v0 + 1744);
    v49 = *(v0 + 1736);
    v50 = *(v0 + 1728);
    v60 = *(v0 + 1720);
    v61 = *(v0 + 1712);
    v62 = *(v0 + 1704);
    v63 = *(v0 + 1696);
    v64 = *(v0 + 1688);
    v65 = *(v0 + 1680);
    v66 = *(v0 + 1672);
    v67 = *(v0 + 1664);
    v68 = *(v0 + 1656);
    v69 = *(v0 + 1648);
    v70 = *(v0 + 1640);
    v71 = *(v0 + 1632);
    v72 = *(v0 + 1616);
    v73 = *(v0 + 1576);
    v74 = *(v0 + 1568);
    v75 = *(v0 + 1552);
    v76 = *(v0 + 1528);
    v77 = *(v0 + 1504);
    v78 = *(v0 + 1496);
    v79 = *(v0 + 1472);

    v51 = *(v0 + 8);

    return v51();
  }

  else
  {
    v37 = *(v0 + 1504);
    outlined copy of Data?(v32, v31);
    outlined copy of Data._Representation(v4, v5);
    MLS.Client.KeyPackage.init(fromRaw:)();
    v38 = *(v0 + 1968);
    v39 = *(v0 + 1960);
    v53 = *(v0 + 1552);
    v54 = *(v0 + 1528);
    v55 = *(v0 + 1504);
    MLS.Client.Client.ResyncInput.init(groupInfo:ratchetTree:keyPackage:useReflection:)();
    v56 = *(v30 + 80);
    v80 = (v56 + *v56);
    v57 = v56[1];
    v58 = swift_task_alloc();
    *(v0 + 2008) = v58;
    *v58 = v0;
    v58[1] = MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
    v59 = *(v0 + 1552);

    return v80(v0 + 1176, v59, v29, v30);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 2008);
  v11 = *v1;
  *(*v1 + 2016) = v0;

  if (v0)
  {
    v4 = v2[231];
    v5 = v2[227];
    (*(v2[193] + 8))(v2[194], v2[192]);

    v6 = v2[176];

    v7 = MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
    v8 = v5;
  }

  else
  {
    v9 = v2[227];
    (*(v2[193] + 8))(v2[194], v2[192]);
    v7 = MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
    v8 = v9;
  }

  return MEMORY[0x2822009F8](v7, v8, 0);
}

{
  v1 = v0[233];
  v14 = v0[221];
  v2 = v0[202];
  v3 = v0[201];
  v4 = v0[200];
  v5 = v0[199];
  v6 = v0[180];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 152);
  v7._countAndFlagsBits = 0x534C4D7466697753;
  v7._object = 0xEE0074696D6D6F43;
  MetricCollector.end(label:)(v7);
  v8 = swift_task_alloc();
  v0[253] = v8;
  *(v8 + 16) = v6;
  *(v8 + 24) = v0 + 147;
  v9 = *(v1 + 96);
  v0[254] = v9;
  v0[255] = (v1 + 96) & 0xFFFFFFFFFFFFLL | 0xCA1B000000000000;
  v9(v3, v1);
  VersatileError.init(type:)(v2, v4, v5);
  v10 = swift_task_alloc();
  v0[256] = v10;
  *v10 = v0;
  v10[1] = MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  v11 = v0[221];
  v12 = v0[200];
  v16 = v0[199];
  v17 = v0[220];

  return _s15SecureMessaging12asyncRethrow_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lF(v10, &async function pointer to partial apply for implicit closure #6 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:), v8, v11, 0, 0, v12);
}

{
  v2 = *v1;
  v3 = *(*v1 + 2048);
  v12 = *v1;

  if (v0)
  {
    v4 = *(v2 + 1896);
    v5 = *(v2 + 1848);
    v6 = *(v2 + 1816);
    (*(v2 + 1904))(*(v2 + 1768), *(v2 + 1600));

    v7 = *(v2 + 1408);

    v8 = MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {
    v9 = *(v2 + 2024);
    v10 = *(v2 + 1896);
    v6 = *(v2 + 1816);
    (*(v2 + 1904))(*(v2 + 1768), *(v2 + 1600));

    v8 = MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v8, v6, 0);
}

{
  v1 = v0[233];
  v2 = v0[219];
  v3 = v0[202];
  v4 = v0[201];
  v5 = v0[200];
  v6 = v0[199];
  v7 = v0[180];
  v8 = swift_task_alloc();
  v0[257] = v8;
  *(v8 + 16) = v7;
  *(v8 + 24) = v0 + 147;
  (*(v1 + 128))(v4, v1);
  VersatileError.init(type:)(v3, v5, v6);
  v9 = swift_task_alloc();
  v0[258] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy15SecureMessaging3MLSO9AllMemberOGMd, &_sShy15SecureMessaging3MLSO9AllMemberOGMR);
  *v9 = v0;
  v9[1] = MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  v10 = v0[219];
  v11 = v0[200];
  v14 = v0[199];
  v15 = v0[218];

  return _s15SecureMessaging12asyncRethrow_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lF((v0 + 177), async function pointer to partial apply for implicit closure #7 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:), v8, v10, 0, 0, v11);
}

{
  v2 = *v1;
  v3 = *(*v1 + 2064);
  v12 = *v1;
  *(*v1 + 2072) = v0;

  if (v0)
  {
    v4 = *(v2 + 1896);
    v5 = *(v2 + 1848);
    v6 = *(v2 + 1816);
    (*(v2 + 1904))(*(v2 + 1752), *(v2 + 1600));

    v7 = *(v2 + 1408);

    v8 = MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {
    v9 = *(v2 + 2056);
    v10 = *(v2 + 1896);
    v6 = *(v2 + 1816);
    (*(v2 + 1904))(*(v2 + 1752), *(v2 + 1600));

    v8 = MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v8, v6, 0);
}

{
  v57 = v0;
  v1 = v0[259];
  result = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy15SecureMessaging3MLSO9AllMemberOG_AH09PersistedH0Vs5NeverOTg504_s15d160Messaging3MLSO17SelfHealOperationC7perform2on15metricCollector16keyPackageResultAC05GroupfM0VAC21SwiftMLSGroupProtocol_pSg_AA06MetricJ0VAC03KeyL7FetcherC05Fetchw10VtYaKFAC15ih5VAC03G9W0OXEfU0_Tf1cn_n(v0[177]);
  v3 = result;
  v50 = *(result + 16);
  if (v50)
  {
    v4 = 0;
    v5 = (result + 57);
    v6 = MEMORY[0x277D84F90];
    v47 = result;
    v48 = v0;
    while (1)
    {
      if (v4 >= *(v3 + 16))
      {
        __break(1u);
        return result;
      }

      v7 = v0[180];
      v8 = *v5;
      v9 = *(v5 - 9);
      v10 = *(v5 - 17);
      v52 = *(v5 - 25);
      v53 = v10;
      v54 = v9;
      v55 = *(v5 - 1);
      v56 = v8;
      outlined copy of MLS.AllMember();
      v11 = closure #3 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(&v52, v7);
      if (v1)
      {
        break;
      }

      v13 = v52;
      v12 = v53;
      v14 = v54;
      v15 = v55;
      if (v11)
      {
        v16 = v56;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1);
        }

        v18 = *(v6 + 16);
        v17 = *(v6 + 24);
        v19 = v6;
        if (v18 >= v17 >> 1)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
          v19 = v6;
        }

        *(v19 + 16) = v18 + 1;
        v20 = v19 + 32 * v18;
        *(v20 + 32) = v13;
        *(v20 + 40) = v12;
        *(v20 + 48) = v14;
        *(v20 + 56) = v15;
        *(v20 + 57) = v16;
        v3 = v47;
        v0 = v48;
        v6 = v19;
      }

      else
      {
        result = outlined consume of MLS.AllMember();
      }

      v1 = 0;
      ++v4;
      v5 += 32;
      if (v50 == v4)
      {
        goto LABEL_14;
      }
    }

    outlined consume of MLS.AllMember();
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
LABEL_14:
    v0[260] = v6;
    v21 = v0[239];
    v22 = v0[231];
    v23 = v0[180];

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    v51 = v6;
    if (os_log_type_enabled(v24, v25))
    {
      v26 = v0[231];
      v27 = v0[230];
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v52 = v29;
      *v28 = 136315394;
      *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v26, &v52);
      *(v28 + 12) = 2080;
      lazy protocol witness table accessor for type MLS.AllMember and conformance MLS.AllMember();
      v30 = Set.description.getter();
      v32 = v31;

      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v52);

      *(v28 + 14) = v33;
      _os_log_impl(&dword_264F1F000, v24, v25, "SelfHealOperation updating membership list { identifier: %s, resyncMembers: %s }", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v29, -1, -1);
      MEMORY[0x266755550](v28, -1, -1);
    }

    else
    {
    }

    v49 = v0[255];
    v34 = v0[254];
    v35 = v0[233];
    v36 = v0[217];
    v37 = v0[202];
    v38 = v0[201];
    v39 = v0[200];
    v40 = v0[199];
    v41 = v0[180];
    v42 = swift_task_alloc();
    v0[261] = v42;
    *(v42 + 16) = v41;
    *(v42 + 24) = v51;
    v34(v38, v35);
    VersatileError.init(type:)(v37, v39, v40);
    v43 = swift_task_alloc();
    v0[262] = v43;
    *v43 = v0;
    v43[1] = MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
    v44 = v0[217];
    v45 = v0[216];
    v46 = v0[200];
    v59 = v0[199];
    v60 = v45;

    return _s15SecureMessaging12asyncRethrow_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lF(v43, &async function pointer to partial apply for implicit closure #10 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:), v42, v44, 0, 0, v46);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 2096);
  v14 = *v1;

  if (v0)
  {
    v4 = *(v2 + 2080);
    v5 = *(v2 + 1896);
    v6 = *(v2 + 1848);
    v7 = *(v2 + 1816);
    (*(v2 + 1904))(*(v2 + 1736), *(v2 + 1600));

    v8 = *(v2 + 1408);

    v9 = MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {
    v10 = *(v2 + 2088);
    v11 = *(v2 + 2080);
    v12 = *(v2 + 1896);
    v7 = *(v2 + 1816);
    (*(v2 + 1904))(*(v2 + 1736), *(v2 + 1600));

    v9 = MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v9, v7, 0);
}

{
  v1 = v0[233];
  v15 = v0[215];
  v16 = v0[235];
  v2 = v0[202];
  v3 = v0[201];
  v4 = v0[200];
  v13 = v0[199];
  v14 = v0[234];
  v5 = v0[180];
  v6 = v0[150];
  v7 = v0[151];
  __swift_project_boxed_opaque_existential_1(v0 + 147, v6);
  (*(v7 + 8))(v6, v7);
  v8 = swift_task_alloc();
  v0[263] = v8;
  *(v8 + 16) = v5;
  *(v8 + 24) = v0 + 147;
  v14(v3, v1);
  VersatileError.init(type:)(v2, v4, v13);
  v9 = swift_task_alloc();
  v0[264] = v9;
  *v9 = v0;
  v9[1] = MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  v10 = v0[215];
  v11 = v0[200];
  v19 = v0[214];
  v18 = v0[199];

  return _s15SecureMessaging12asyncRethrow_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lF((v0 + 81), &async function pointer to partial apply for implicit closure #11 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:), v8, v10, 0, 0, v11);
}

{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 2112);
  v5 = *v1;

  v6 = v2[227];
  v7 = v2[215];
  v8 = v2[200];
  v9 = v3[237];
  if (v0)
  {
    v10 = v3[231];
    (v3[238])(v7, v8);

    v11 = v3[176];

    v12 = MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {
    (v3[238])(v7, v8);
    v12 = MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v12, v6, 0);
}

{
  v43 = *(v0 + 1880);
  v40 = *(v0 + 1864);
  v1 = *(v0 + 1848);
  v35 = *(v0 + 1840);
  v41 = *(v0 + 1704);
  v42 = *(v0 + 1872);
  v36 = *(v0 + 1608);
  v37 = *(v0 + 1616);
  v38 = *(v0 + 1600);
  v39 = *(v0 + 1592);
  v2 = *(v0 + 1496);
  v3 = *(v0 + 1488);
  v31 = *(v0 + 1480);
  v44 = *(v0 + 1440);
  v4 = *(v0 + 664);
  *(v0 + 752) = *(v0 + 648);
  *(v0 + 768) = v4;
  v5 = *(v0 + 680);
  v6 = *(v0 + 696);
  v7 = *(v0 + 712);
  v8 = *(v0 + 728);
  *(v0 + 848) = *(v0 + 744);
  *(v0 + 816) = v7;
  *(v0 + 832) = v8;
  *(v0 + 784) = v5;
  *(v0 + 800) = v6;
  v34 = *(v0 + 1408);
  v9 = *(v0 + 1200);
  v10 = *(v0 + 1208);
  __swift_project_boxed_opaque_existential_1((v0 + 1176), v9);
  v11 = *(v10 + 16);
  swift_bridgeObjectRetain_n();

  v11(v9, v10);
  v12 = MLS.Group.GroupInfo.rawRepresentation.getter();
  v32 = v13;
  v33 = v12;
  (*(v3 + 8))(v2, v31);
  v14 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
  v15 = [v14 UUIDString];

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = *(v0 + 808);
  v20 = *(v0 + 816);
  v21 = *(v0 + 824);
  v22 = *(v0 + 832);
  v23 = *(v0 + 792);
  v24 = *(v0 + 800);
  *(v0 + 200) = v35;
  *(v0 + 208) = v1;
  *(v0 + 216) = v35;
  *(v0 + 224) = v1;
  *(v0 + 232) = xmmword_2651B5F50;
  *(v0 + 248) = v34;
  *(v0 + 256) = v16;
  *(v0 + 264) = v18;
  *(v0 + 272) = v33;
  *(v0 + 280) = v32;
  *(v0 + 288) = v19;
  *(v0 + 296) = v20;
  *(v0 + 304) = v21;
  *(v0 + 312) = v22;
  *(v0 + 320) = v23;
  *(v0 + 328) = v24;
  *(v0 + 856) = v35;
  *(v0 + 864) = v1;
  *(v0 + 872) = 0u;
  *(v0 + 888) = 5;
  *(v0 + 896) = v35;
  *(v0 + 904) = v1;
  *(v0 + 912) = xmmword_2651B5F50;
  v25 = swift_task_alloc();
  *(v0 + 2120) = v25;
  *(v25 + 16) = v0 + 1256;
  outlined copy of Data._Representation(v19, v20);
  outlined copy of Data._Representation(v21, v22);
  outlined copy of Data._Representation(v23, v24);
  swift_bridgeObjectRetain_n();
  v42();
  VersatileError.init(type:)(v37, v38, v39);
  v26 = swift_allocObject();
  *(v0 + 2128) = v26;
  v26[2] = v44;
  v26[3] = v35;
  v26[4] = v1;

  v27 = swift_task_alloc();
  *(v0 + 2136) = v27;
  *v27 = v0;
  v27[1] = MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  v28 = *(v0 + 1704);
  v29 = *(v0 + 1600);
  v46 = *(v0 + 1592);
  v47 = *(v0 + 1696);

  return _s15SecureMessaging12asyncRethrow_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lF(v0 + 1368, &async function pointer to partial apply for implicit closure #12 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:), v25, v28, partial apply for closure #4 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:), v26, v29);
}

{
  v2 = *v1;
  v3 = *(*v1 + 2136);
  v14 = *v1;

  if (v0)
  {
    v4 = *(v2 + 2128);
    v5 = *(v2 + 1896);
    v6 = *(v2 + 1848);
    v7 = *(v2 + 1816);
    (*(v2 + 1904))(*(v2 + 1704), *(v2 + 1600));

    v8 = *(v2 + 1408);

    v9 = MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {
    v10 = *(v2 + 2128);
    v11 = *(v2 + 2120);
    v12 = *(v2 + 1896);
    v7 = *(v2 + 1816);
    (*(v2 + 1904))(*(v2 + 1704), *(v2 + 1600));

    v9 = MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v9, v7, 0);
}

{
  v80 = v0;
  v1 = *(v0 + 1912);
  v2 = *(v0 + 1848);
  v3 = *(v0 + 1440);
  v4 = *(v0 + 1368);
  v77 = *(v0 + 1376);
  v75 = *(v0 + 1384);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 2000);
  v9 = *(v0 + 1992);
  v73 = *(v0 + 1968);
  v10 = *(v0 + 1960);
  v11 = *(v0 + 1952);
  v12 = *(v0 + 1944);
  v13 = *(v0 + 1848);
  if (v7)
  {
    v69 = *(v0 + 2000);
    v14 = *(v0 + 1840);
    v67 = *(v0 + 1992);
    v15 = swift_slowAlloc();
    v71 = v4;
    v16 = swift_slowAlloc();
    v79 = v16;
    *v15 = 136315138;
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v13, &v79);

    *(v15 + 4) = v17;
    _os_log_impl(&dword_264F1F000, v5, v6, "SelfHealOperation returning operation result { identifier: %s }", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    v18 = v16;
    v4 = v71;
    MEMORY[0x266755550](v18, -1, -1);
    MEMORY[0x266755550](v15, -1, -1);
    outlined destroy of MLS.Group(v0 + 440);
    outlined destroy of MLS.Group(v0 + 752);
    outlined consume of MLS.GroupRecoveryInfo?(v12, v11, v10, v73);
    outlined consume of Data._Representation(v67, v69);
  }

  else
  {
    outlined destroy of MLS.Group(v0 + 440);
    outlined destroy of MLS.Group(v0 + 752);
    outlined consume of MLS.GroupRecoveryInfo?(v12, v11, v10, v73);
    outlined consume of Data._Representation(v9, v8);
  }

  v19 = *(v0 + 2104);
  v20 = *(v0 + 1424);
  *(v0 + 144) = *(v0 + 328);
  v21 = *(v0 + 216);
  v22 = *(v0 + 248);
  *(v0 + 48) = *(v0 + 232);
  *(v0 + 64) = v22;
  *(v0 + 16) = *(v0 + 200);
  *(v0 + 32) = v21;
  v23 = *(v0 + 312);
  *(v0 + 112) = *(v0 + 296);
  *(v0 + 128) = v23;
  v24 = *(v0 + 280);
  *(v0 + 80) = *(v0 + 264);
  *(v0 + 96) = v24;
  _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi4_(v0 + 16);
  v25 = *(v0 + 16);
  v26 = *(v0 + 32);
  v27 = *(v0 + 64);
  *(v20 + 32) = *(v0 + 48);
  *(v20 + 48) = v27;
  *v20 = v25;
  *(v20 + 16) = v26;
  v28 = *(v0 + 80);
  v29 = *(v0 + 96);
  v30 = *(v0 + 128);
  *(v20 + 96) = *(v0 + 112);
  *(v20 + 112) = v30;
  *(v20 + 64) = v28;
  *(v20 + 80) = v29;
  v31 = *(v0 + 144);
  v32 = *(v0 + 160);
  v33 = *(v0 + 176);
  *(v20 + 176) = *(v0 + 192);
  *(v20 + 144) = v32;
  *(v20 + 160) = v33;
  *(v20 + 128) = v31;
  *(v20 + 184) = *(v0 + 856);
  v34 = *(v0 + 872);
  v35 = *(v0 + 888);
  v36 = *(v0 + 904);
  *(v20 + 248) = *(v0 + 920);
  *(v20 + 232) = v36;
  *(v20 + 216) = v35;
  *(v20 + 200) = v34;
  *(v20 + 256) = 0;
  *(v20 + 264) = v4;
  *(v20 + 272) = v77;
  *(v20 + 280) = v75;
  *(v20 + 288) = *(v0 + 856);
  v37 = *(v0 + 872);
  v38 = *(v0 + 888);
  v39 = *(v0 + 904);
  *(v20 + 352) = *(v0 + 920);
  *(v20 + 320) = v38;
  *(v20 + 336) = v39;
  *(v20 + 304) = v37;
  *(v20 + 360) = 0;
  outlined init with copy of ServerBag.MLS(v0 + 1256, v20 + 368);
  *(v20 + 408) = 0;
  *(v20 + 416) = *(v0 + 1408);
  *(v20 + 424) = 0;
  *(v20 + 432) = 0;
  outlined init with copy of MLS.OutgoingEventState(v0 + 856, v0 + 928);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1256));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1176));

  v40 = *(v0 + 1856);
  v41 = *(v0 + 1800);
  v42 = *(v0 + 1792);
  v43 = *(v0 + 1784);
  v44 = *(v0 + 1776);
  v45 = *(v0 + 1768);
  v46 = *(v0 + 1760);
  v47 = *(v0 + 1752);
  v48 = *(v0 + 1744);
  v49 = *(v0 + 1736);
  v52 = *(v0 + 1728);
  v53 = *(v0 + 1720);
  v54 = *(v0 + 1712);
  v55 = *(v0 + 1704);
  v56 = *(v0 + 1696);
  v57 = *(v0 + 1688);
  v58 = *(v0 + 1680);
  v59 = *(v0 + 1672);
  v60 = *(v0 + 1664);
  v61 = *(v0 + 1656);
  v62 = *(v0 + 1648);
  v63 = *(v0 + 1640);
  v64 = *(v0 + 1632);
  v65 = *(v0 + 1616);
  v66 = *(v0 + 1576);
  v68 = *(v0 + 1568);
  v70 = *(v0 + 1552);
  v72 = *(v0 + 1528);
  v74 = *(v0 + 1504);
  v76 = *(v0 + 1496);
  v78 = *(v0 + 1472);

  v50 = *(v0 + 8);

  return v50();
}

{
  v1 = *(v0 + 1592);
  v2 = *(*(v0 + 1624) + 32);
  v2(*(v0 + 1680), *(v0 + 1792), *(v0 + 1600));
  v3 = *(*(v1 + 8) + 8);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    v4 = *(v0 + 1896);
    (*(v0 + 2144))(*(v0 + 1680), *(v0 + 1600));
  }

  else
  {
    v5 = *(v0 + 1680);
    v6 = *(v0 + 1600);
    swift_allocError();
    v2(v7, v5, v6);
  }

  v8 = *(v0 + 1856);

  v9 = *(v0 + 1800);
  v10 = *(v0 + 1792);
  v11 = *(v0 + 1784);
  v12 = *(v0 + 1776);
  v13 = *(v0 + 1768);
  v14 = *(v0 + 1760);
  v15 = *(v0 + 1752);
  v16 = *(v0 + 1744);
  v17 = *(v0 + 1736);
  v18 = *(v0 + 1728);
  v21 = *(v0 + 1720);
  v22 = *(v0 + 1712);
  v23 = *(v0 + 1704);
  v24 = *(v0 + 1696);
  v25 = *(v0 + 1688);
  v26 = *(v0 + 1680);
  v27 = *(v0 + 1672);
  v28 = *(v0 + 1664);
  v29 = *(v0 + 1656);
  v30 = *(v0 + 1648);
  v31 = *(v0 + 1640);
  v32 = *(v0 + 1632);
  v33 = *(v0 + 1616);
  v34 = *(v0 + 1576);
  v35 = *(v0 + 1568);
  v36 = *(v0 + 1552);
  v37 = *(v0 + 1528);
  v38 = *(v0 + 1504);
  v39 = *(v0 + 1496);
  v40 = *(v0 + 1472);

  v19 = *(v0 + 8);

  return v19();
}

{
  v1 = *(v0 + 1592);
  v2 = *(*(v0 + 1624) + 32);
  v2(*(v0 + 1672), *(v0 + 1776), *(v0 + 1600));
  v3 = *(*(v1 + 8) + 8);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    v4 = *(v0 + 1896);
    (*(v0 + 1904))(*(v0 + 1672), *(v0 + 1600));
  }

  else
  {
    v5 = *(v0 + 1672);
    v6 = *(v0 + 1600);
    swift_allocError();
    v2(v7, v5, v6);
  }

  v8 = *(v0 + 1968);
  v9 = *(v0 + 1960);
  v10 = *(v0 + 1952);
  v11 = *(v0 + 1944);
  v12 = *(v0 + 1856);
  outlined destroy of MLS.Group(v0 + 440);
  outlined consume of MLS.GroupRecoveryInfo?(v11, v10, v9, v8);

  v13 = *(v0 + 1800);
  v14 = *(v0 + 1792);
  v15 = *(v0 + 1784);
  v16 = *(v0 + 1776);
  v17 = *(v0 + 1768);
  v18 = *(v0 + 1760);
  v19 = *(v0 + 1752);
  v20 = *(v0 + 1744);
  v21 = *(v0 + 1736);
  v22 = *(v0 + 1728);
  v25 = *(v0 + 1720);
  v26 = *(v0 + 1712);
  v27 = *(v0 + 1704);
  v28 = *(v0 + 1696);
  v29 = *(v0 + 1688);
  v30 = *(v0 + 1680);
  v31 = *(v0 + 1672);
  v32 = *(v0 + 1664);
  v33 = *(v0 + 1656);
  v34 = *(v0 + 1648);
  v35 = *(v0 + 1640);
  v36 = *(v0 + 1632);
  v37 = *(v0 + 1616);
  v38 = *(v0 + 1576);
  v39 = *(v0 + 1568);
  v40 = *(v0 + 1552);
  v41 = *(v0 + 1528);
  v42 = *(v0 + 1504);
  v43 = *(v0 + 1496);
  v44 = *(v0 + 1472);

  v23 = *(v0 + 8);

  return v23();
}

{
  v1 = v0[246];
  v2 = v0[245];
  v3 = v0[244];
  v4 = v0[243];
  v5 = v0[232];
  outlined consume of Data._Representation(v0[249], v0[250]);
  outlined destroy of MLS.Group((v0 + 55));
  outlined consume of MLS.GroupRecoveryInfo?(v4, v3, v2, v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 152);

  v38 = v0[252];
  v6 = v0[225];
  v7 = v0[224];
  v8 = v0[223];
  v9 = v0[222];
  v10 = v0[221];
  v11 = v0[220];
  v12 = v0[219];
  v13 = v0[218];
  v14 = v0[217];
  v15 = v0[216];
  v18 = v0[215];
  v19 = v0[214];
  v20 = v0[213];
  v21 = v0[212];
  v22 = v0[211];
  v23 = v0[210];
  v24 = v0[209];
  v25 = v0[208];
  v26 = v0[207];
  v27 = v0[206];
  v28 = v0[205];
  v29 = v0[204];
  v30 = v0[202];
  v31 = v0[197];
  v32 = v0[196];
  v33 = v0[194];
  v34 = v0[191];
  v35 = v0[188];
  v36 = v0[187];
  v37 = v0[184];

  v16 = v0[1];

  return v16();
}

{
  v1 = *(v0 + 1592);
  v2 = *(*(v0 + 1624) + 32);
  v2(*(v0 + 1664), *(v0 + 1760), *(v0 + 1600));
  v3 = *(*(v1 + 8) + 8);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    v4 = *(v0 + 1896);
    (*(v0 + 1904))(*(v0 + 1664), *(v0 + 1600));
  }

  else
  {
    v5 = *(v0 + 1664);
    v6 = *(v0 + 1600);
    swift_allocError();
    v2(v7, v5, v6);
  }

  v8 = *(v0 + 2024);
  v9 = *(v0 + 1968);
  v10 = *(v0 + 1960);
  v11 = *(v0 + 1952);
  v12 = *(v0 + 1944);
  v13 = *(v0 + 1856);
  outlined consume of Data._Representation(*(v0 + 1992), *(v0 + 2000));
  outlined destroy of MLS.Group(v0 + 440);
  outlined consume of MLS.GroupRecoveryInfo?(v12, v11, v10, v9);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1176));

  v14 = *(v0 + 1800);
  v15 = *(v0 + 1792);
  v16 = *(v0 + 1784);
  v17 = *(v0 + 1776);
  v18 = *(v0 + 1768);
  v19 = *(v0 + 1760);
  v20 = *(v0 + 1752);
  v21 = *(v0 + 1744);
  v22 = *(v0 + 1736);
  v23 = *(v0 + 1728);
  v26 = *(v0 + 1720);
  v27 = *(v0 + 1712);
  v28 = *(v0 + 1704);
  v29 = *(v0 + 1696);
  v30 = *(v0 + 1688);
  v31 = *(v0 + 1680);
  v32 = *(v0 + 1672);
  v33 = *(v0 + 1664);
  v34 = *(v0 + 1656);
  v35 = *(v0 + 1648);
  v36 = *(v0 + 1640);
  v37 = *(v0 + 1632);
  v38 = *(v0 + 1616);
  v39 = *(v0 + 1576);
  v40 = *(v0 + 1568);
  v41 = *(v0 + 1552);
  v42 = *(v0 + 1528);
  v43 = *(v0 + 1504);
  v44 = *(v0 + 1496);
  v45 = *(v0 + 1472);

  v24 = *(v0 + 8);

  return v24();
}

{
  v1 = *(v0 + 1592);
  v2 = *(*(v0 + 1624) + 32);
  v2(*(v0 + 1656), *(v0 + 1744), *(v0 + 1600));
  v3 = *(*(v1 + 8) + 8);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    v4 = *(v0 + 1896);
    (*(v0 + 1904))(*(v0 + 1656), *(v0 + 1600));
  }

  else
  {
    v5 = *(v0 + 1656);
    v6 = *(v0 + 1600);
    swift_allocError();
    v2(v7, v5, v6);
  }

  v8 = *(v0 + 2056);
  v9 = *(v0 + 1968);
  v10 = *(v0 + 1960);
  v11 = *(v0 + 1952);
  v12 = *(v0 + 1944);
  v13 = *(v0 + 1856);
  outlined consume of Data._Representation(*(v0 + 1992), *(v0 + 2000));
  outlined destroy of MLS.Group(v0 + 440);
  outlined consume of MLS.GroupRecoveryInfo?(v12, v11, v10, v9);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1176));

  v14 = *(v0 + 1800);
  v15 = *(v0 + 1792);
  v16 = *(v0 + 1784);
  v17 = *(v0 + 1776);
  v18 = *(v0 + 1768);
  v19 = *(v0 + 1760);
  v20 = *(v0 + 1752);
  v21 = *(v0 + 1744);
  v22 = *(v0 + 1736);
  v23 = *(v0 + 1728);
  v26 = *(v0 + 1720);
  v27 = *(v0 + 1712);
  v28 = *(v0 + 1704);
  v29 = *(v0 + 1696);
  v30 = *(v0 + 1688);
  v31 = *(v0 + 1680);
  v32 = *(v0 + 1672);
  v33 = *(v0 + 1664);
  v34 = *(v0 + 1656);
  v35 = *(v0 + 1648);
  v36 = *(v0 + 1640);
  v37 = *(v0 + 1632);
  v38 = *(v0 + 1616);
  v39 = *(v0 + 1576);
  v40 = *(v0 + 1568);
  v41 = *(v0 + 1552);
  v42 = *(v0 + 1528);
  v43 = *(v0 + 1504);
  v44 = *(v0 + 1496);
  v45 = *(v0 + 1472);

  v24 = *(v0 + 8);

  return v24();
}

{
  v1 = *(v0 + 1592);
  v2 = *(*(v0 + 1624) + 32);
  v2(*(v0 + 1648), *(v0 + 1728), *(v0 + 1600));
  v3 = *(*(v1 + 8) + 8);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    v4 = *(v0 + 1896);
    (*(v0 + 1904))(*(v0 + 1648), *(v0 + 1600));
  }

  else
  {
    v5 = *(v0 + 1648);
    v6 = *(v0 + 1600);
    swift_allocError();
    v2(v7, v5, v6);
  }

  v8 = *(v0 + 2088);
  v9 = *(v0 + 1968);
  v10 = *(v0 + 1960);
  v11 = *(v0 + 1952);
  v12 = *(v0 + 1944);
  v13 = *(v0 + 1856);
  outlined consume of Data._Representation(*(v0 + 1992), *(v0 + 2000));
  outlined destroy of MLS.Group(v0 + 440);
  outlined consume of MLS.GroupRecoveryInfo?(v12, v11, v10, v9);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1176));

  v14 = *(v0 + 1800);
  v15 = *(v0 + 1792);
  v16 = *(v0 + 1784);
  v17 = *(v0 + 1776);
  v18 = *(v0 + 1768);
  v19 = *(v0 + 1760);
  v20 = *(v0 + 1752);
  v21 = *(v0 + 1744);
  v22 = *(v0 + 1736);
  v23 = *(v0 + 1728);
  v26 = *(v0 + 1720);
  v27 = *(v0 + 1712);
  v28 = *(v0 + 1704);
  v29 = *(v0 + 1696);
  v30 = *(v0 + 1688);
  v31 = *(v0 + 1680);
  v32 = *(v0 + 1672);
  v33 = *(v0 + 1664);
  v34 = *(v0 + 1656);
  v35 = *(v0 + 1648);
  v36 = *(v0 + 1640);
  v37 = *(v0 + 1632);
  v38 = *(v0 + 1616);
  v39 = *(v0 + 1576);
  v40 = *(v0 + 1568);
  v41 = *(v0 + 1552);
  v42 = *(v0 + 1528);
  v43 = *(v0 + 1504);
  v44 = *(v0 + 1496);
  v45 = *(v0 + 1472);

  v24 = *(v0 + 8);

  return v24();
}

{
  v1 = *(v0 + 1592);
  v2 = *(*(v0 + 1624) + 32);
  v2(*(v0 + 1640), *(v0 + 1712), *(v0 + 1600));
  v3 = *(*(v1 + 8) + 8);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    v4 = *(v0 + 1896);
    (*(v0 + 1904))(*(v0 + 1640), *(v0 + 1600));
  }

  else
  {
    v5 = *(v0 + 1640);
    v6 = *(v0 + 1600);
    swift_allocError();
    v2(v7, v5, v6);
  }

  v8 = *(v0 + 2104);
  v9 = *(v0 + 1968);
  v10 = *(v0 + 1960);
  v11 = *(v0 + 1952);
  v12 = *(v0 + 1944);
  v13 = *(v0 + 1856);
  outlined consume of Data._Representation(*(v0 + 1992), *(v0 + 2000));
  outlined destroy of MLS.Group(v0 + 440);
  outlined consume of MLS.GroupRecoveryInfo?(v12, v11, v10, v9);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1256));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1176));

  v14 = *(v0 + 1800);
  v15 = *(v0 + 1792);
  v16 = *(v0 + 1784);
  v17 = *(v0 + 1776);
  v18 = *(v0 + 1768);
  v19 = *(v0 + 1760);
  v20 = *(v0 + 1752);
  v21 = *(v0 + 1744);
  v22 = *(v0 + 1736);
  v23 = *(v0 + 1728);
  v26 = *(v0 + 1720);
  v27 = *(v0 + 1712);
  v28 = *(v0 + 1704);
  v29 = *(v0 + 1696);
  v30 = *(v0 + 1688);
  v31 = *(v0 + 1680);
  v32 = *(v0 + 1672);
  v33 = *(v0 + 1664);
  v34 = *(v0 + 1656);
  v35 = *(v0 + 1648);
  v36 = *(v0 + 1640);
  v37 = *(v0 + 1632);
  v38 = *(v0 + 1616);
  v39 = *(v0 + 1576);
  v40 = *(v0 + 1568);
  v41 = *(v0 + 1552);
  v42 = *(v0 + 1528);
  v43 = *(v0 + 1504);
  v44 = *(v0 + 1496);
  v45 = *(v0 + 1472);

  v24 = *(v0 + 8);

  return v24();
}

{
  v1 = *(v0 + 1592);
  v2 = *(*(v0 + 1624) + 32);
  v2(*(v0 + 1632), *(v0 + 1696), *(v0 + 1600));
  v3 = *(*(v1 + 8) + 8);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    v4 = *(v0 + 1896);
    (*(v0 + 1904))(*(v0 + 1632), *(v0 + 1600));
  }

  else
  {
    v5 = *(v0 + 1632);
    v6 = *(v0 + 1600);
    swift_allocError();
    v2(v7, v5, v6);
  }

  v8 = *(v0 + 2120);
  v9 = *(v0 + 2104);
  v10 = *(v0 + 1968);
  v11 = *(v0 + 1960);
  v12 = *(v0 + 1952);
  v13 = *(v0 + 1944);
  v14 = *(v0 + 1856);
  outlined consume of Data._Representation(*(v0 + 1992), *(v0 + 2000));
  outlined destroy of MLS.OutgoingEventState(v0 + 856);
  outlined destroy of MLS.Group(v0 + 440);
  outlined destroy of NSObject?(v0 + 200, &_s15SecureMessaging3MLSO14OutgoingResyncVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO14OutgoingResyncVy_AC9AllMemberO10Foundation4DataVGMR);
  outlined destroy of MLS.Group(v0 + 752);
  outlined consume of MLS.GroupRecoveryInfo?(v13, v12, v11, v10);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1256));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1176));

  v15 = *(v0 + 1800);
  v16 = *(v0 + 1792);
  v17 = *(v0 + 1784);
  v18 = *(v0 + 1776);
  v19 = *(v0 + 1768);
  v20 = *(v0 + 1760);
  v21 = *(v0 + 1752);
  v22 = *(v0 + 1744);
  v23 = *(v0 + 1736);
  v24 = *(v0 + 1728);
  v27 = *(v0 + 1720);
  v28 = *(v0 + 1712);
  v29 = *(v0 + 1704);
  v30 = *(v0 + 1696);
  v31 = *(v0 + 1688);
  v32 = *(v0 + 1680);
  v33 = *(v0 + 1672);
  v34 = *(v0 + 1664);
  v35 = *(v0 + 1656);
  v36 = *(v0 + 1648);
  v37 = *(v0 + 1640);
  v38 = *(v0 + 1632);
  v39 = *(v0 + 1616);
  v40 = *(v0 + 1576);
  v41 = *(v0 + 1568);
  v42 = *(v0 + 1552);
  v43 = *(v0 + 1528);
  v44 = *(v0 + 1504);
  v45 = *(v0 + 1496);
  v46 = *(v0 + 1472);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t implicit closure #1 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in implicit closure #1 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(a1, a2, a3);
}

uint64_t closure #1 in implicit closure #1 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[59] = a2;
  v3[60] = a3;
  v3[58] = a1;
  v4 = type metadata accessor for MLS.Group.GroupInfo();
  v3[61] = v4;
  v5 = *(v4 - 8);
  v3[62] = v5;
  v6 = *(v5 + 64) + 15;
  v3[63] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in implicit closure #1 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:), 0, 0);
}

uint64_t closure #1 in implicit closure #1 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)()
{
  outlined init with copy of MLS.SwiftMLSGroupProtocol?(*(v0 + 472), v0 + 368);
  if (*(v0 + 392))
  {
    v1 = *(v0 + 480);
    outlined init with take of MLS.KeyUpdatePolicy((v0 + 368), v0 + 328);
    *(v0 + 512) = v1[2];
    *(v0 + 520) = v1[3];
    outlined init with copy of ServerBag.MLS(v0 + 328, v0 + 408);
    v2 = *v1;
    v3 = (v1 + *(*v1 + 160));
    *(v0 + 528) = *v3;
    *(v0 + 536) = v3[1];
    v4 = (v1 + *(v2 + 200));
    *(v0 + 544) = *v4;
    *(v0 + 552) = v4[1];
    v5 = *(v0 + 432);
    v6 = *(v0 + 440);
    __swift_project_boxed_opaque_existential_1((v0 + 408), v5);
    v7 = *(v6 + 32);

    v16 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    *(v0 + 560) = v9;
    *v9 = v0;
    v9[1] = closure #1 in implicit closure #1 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);

    return v16(v5, v6);
  }

  else
  {
    v11 = *(v0 + 480);
    v12 = *(v0 + 464);
    outlined destroy of NSObject?(v0 + 368, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);
    v13 = *(v11 + 24);
    *v12 = *(v11 + 16);
    *(v12 + 8) = v13;
    *(v12 + 16) = 1;
    *(v12 + 24) = 1;
    *(v12 + 32) = xmmword_2651CBEF0;
    *(v12 + 48) = xmmword_2651CBF00;
    *(v12 + 64) = xmmword_2651CBF00;
    *(v12 + 80) = xmmword_2651CBF00;
    *(v12 + 96) = 0xF000000000000000;
    v14 = *(v0 + 504);

    v15 = *(v0 + 8);

    return v15();
  }
}

{
  v1 = v0[54];
  v2 = v0[55];
  __swift_project_boxed_opaque_existential_1(v0 + 51, v1);
  v3 = *(v2 + 24);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[73] = v5;
  *v5 = v0;
  v5[1] = closure #1 in implicit closure #1 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);

  return v7(v1, v2);
}

{
  v1 = v0[71];
  v2 = v0[65];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 51);

  v3 = v0[63];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 41);

  v4 = v0[1];

  return v4();
}

{
  v2 = *(*v1 + 600);
  v5 = *v1;
  *(*v1 + 608) = v0;

  if (v0)
  {
    v3 = closure #1 in implicit closure #1 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {
    v3 = closure #1 in implicit closure #1 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v2 = v0[62];
  v1 = v0[63];
  v3 = v0[61];
  v0[77] = MLS.Group.GroupInfo.rawRepresentation.getter();
  v0[78] = v4;
  (*(v2 + 8))(v1, v3);
  v5 = v0[54];
  v6 = v0[55];
  __swift_project_boxed_opaque_existential_1(v0 + 51, v5);
  v7 = *(v6 + 56);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[79] = v9;
  *v9 = v0;
  v9[1] = closure #1 in implicit closure #1 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);

  return v11(v5, v6);
}

{
  v1 = v0[54];
  v2 = v0[55];
  __swift_project_boxed_opaque_existential_1(v0 + 51, v1);
  v3 = *(v2 + 64);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[82] = v5;
  *v5 = v0;
  v5[1] = closure #1 in implicit closure #1 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);

  return v7(v1, v2);
}

{
  v1 = v0[76];
  v2 = v0[65];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 51);

  v3 = v0[63];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 41);

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[83];
  v2 = v0[81];
  v3 = v0[78];
  v4 = v0[77];
  if (v2 >> 60 == 15)
  {
    v5 = 0xC000000000000000;
  }

  else
  {
    v5 = v0[81];
  }

  if (v2 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = v0[80];
  }

  v7 = v0[65];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 51);

  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data._Representation(v6, v5);
  v8 = v0[63];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 41);

  v9 = v0[1];

  return v9();
}

{
  v1 = *(v0 + 712);
  v2 = *(v0 + 704);
  v3 = *(v0 + 672);
  v4 = *(v0 + 648);
  v5 = *(v0 + 624);
  v26 = v5;
  v27 = v1;
  v6 = *(v0 + 616);
  v25 = v6;
  v7 = *(v0 + 592);
  v8 = *(v0 + 576);
  v9 = *(v0 + 520);
  v10 = *(v0 + 512);
  v11 = *(v0 + 464);
  if (v3 >> 60 == 15)
  {
    v12 = 0xC000000000000000;
  }

  else
  {
    v12 = *(v0 + 672);
  }

  if (v3 >> 60 == 15)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(v0 + 680);
  }

  if (v4 >> 60 == 15)
  {
    v14 = 0xC000000000000000;
  }

  else
  {
    v14 = *(v0 + 648);
  }

  if (v4 >> 60 == 15)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(v0 + 640);
  }

  if ((v8 & 0x100000000) != 0)
  {
    v16 = 1;
  }

  else
  {
    v16 = v8;
  }

  *(v0 + 120) = v10;
  *(v0 + 128) = v9;
  *(v0 + 136) = v16;
  *(v0 + 144) = v16;
  *(v0 + 152) = v7;
  *(v0 + 160) = v6;
  *(v0 + 168) = v5;
  *(v0 + 176) = v15;
  *(v0 + 184) = v14;
  *(v0 + 192) = v13;
  *(v0 + 200) = v12;
  *(v0 + 208) = v1;
  *(v0 + 216) = v2;
  v17 = *(v0 + 120);
  v18 = *(v0 + 152);
  *(v11 + 16) = *(v0 + 136);
  *(v11 + 32) = v18;
  *v11 = v17;
  v19 = *(v0 + 200);
  v20 = *(v0 + 168);
  v21 = *(v0 + 184);
  *(v11 + 96) = v2;
  *(v11 + 48) = v20;
  *(v11 + 64) = v21;
  *(v11 + 80) = v19;
  outlined init with copy of MLS.Group(v0 + 120, v0 + 224);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 408));
  *(v0 + 16) = v10;
  *(v0 + 24) = v9;
  *(v0 + 32) = v16;
  *(v0 + 40) = v16;
  *(v0 + 48) = v7;
  *(v0 + 56) = v25;
  *(v0 + 64) = v26;
  *(v0 + 72) = v15;
  *(v0 + 80) = v14;
  *(v0 + 88) = v13;
  *(v0 + 96) = v12;
  *(v0 + 104) = v27;
  *(v0 + 112) = v2;
  outlined destroy of MLS.Group(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 328));
  v22 = *(v0 + 504);

  v23 = *(v0 + 8);

  return v23();
}

{
  v1 = v0[87];
  v2 = v0[84];
  v3 = v0[81];
  v4 = v0[78];
  v5 = v0[77];
  if (v2 >> 60 == 15)
  {
    v6 = 0xC000000000000000;
  }

  else
  {
    v6 = v0[84];
  }

  if (v2 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = v0[85];
  }

  if (v3 >> 60 == 15)
  {
    v8 = 0xC000000000000000;
  }

  else
  {
    v8 = v0[81];
  }

  if (v3 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    v9 = v0[80];
  }

  v10 = v0[65];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 51);

  outlined consume of Data._Representation(v5, v4);
  outlined consume of Data._Representation(v9, v8);
  outlined consume of Data._Representation(v7, v6);
  v11 = v0[63];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 41);

  v12 = v0[1];

  return v12();
}

uint64_t closure #1 in implicit closure #1 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 560);
  v6 = *v2;
  *(*v2 + 568) = v1;

  if (v1)
  {
    v7 = closure #1 in implicit closure #1 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {
    *(v4 + 576) = a1;
    v7 = closure #1 in implicit closure #1 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

{
  v2 = *(*v1 + 584);
  v4 = *v1;
  *(*v1 + 592) = a1;

  return MEMORY[0x2822009F8](closure #1 in implicit closure #1 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:), 0, 0);
}

void closure #1 in implicit closure #1 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)()
{
  if ((v0[74] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = v0[54];
    v2 = v0[55];
    __swift_project_boxed_opaque_existential_1(v0 + 51, v1);
    v3 = *(v2 + 80);
    v7 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    v0[75] = v5;
    *v5 = v0;
    v5[1] = closure #1 in implicit closure #1 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
    v6 = v0[63];

    v7(v6, v1, v2);
  }
}

uint64_t closure #1 in implicit closure #1 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 632);
  v6 = *v2;
  *(v3 + 640) = a1;
  *(v3 + 648) = a2;

  return MEMORY[0x2822009F8](closure #1 in implicit closure #1 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:), 0, 0);
}

{
  v6 = *(*v3 + 656);
  v7 = *v3;
  v7[83] = v2;

  if (v2)
  {

    return MEMORY[0x2822009F8](closure #1 in implicit closure #1 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:), 0, 0);
  }

  else
  {
    v8 = v7[69];
    v9 = v7[68];
    v21 = v7[67];
    v10 = v7[66];
    v7[84] = a2;
    v7[85] = a1;
    ObjectType = swift_getObjectType();
    v7[56] = v9;
    v7[57] = v8;
    v12 = *(v21 + 64);
    v20 = (v12 + *v12);
    v13 = v12[1];
    v14 = swift_task_alloc();
    v7[86] = v14;
    *v14 = v7;
    v14[1] = closure #1 in implicit closure #1 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
    v15 = v7[67];
    v16 = v7[66];
    v17 = v7[65];
    v18 = v7[64];

    return (v20)(v18, v17, v7 + 56, ObjectType, v15);
  }
}

{
  v6 = *v3;
  v7 = *(*v3 + 688);
  v8 = *v3;
  *(*v3 + 696) = v2;

  if (v2)
  {
    v9 = closure #1 in implicit closure #1 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {
    *(v6 + 704) = a2;
    *(v6 + 712) = a1;
    v9 = closure #1 in implicit closure #1 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t implicit closure #4 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2)
{
  v4 = *(*a2 + 176);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return MLS.KeyPackageProvider.keyPackage(isWithinPersisterTransaction:)(a1, 1);
}

uint64_t implicit closure #6 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  return MEMORY[0x2822009F8](implicit closure #6 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:), 0, 0);
}

uint64_t implicit closure #6 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = *(v2 + *(*v2 + 152));
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  (*(v5 + 8))(v4, v5);
  v6 = v2[2];
  v7 = v2[3];
  v8 = *(*v3 + 160);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = implicit closure #6 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);

  return (v12)(v0 + 2, v6, v7);
}

{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  __swift_destroy_boxed_opaque_existential_1Tm(v3 + 2);
  if (v0)
  {

    return MEMORY[0x2822009F8](closure #1 in XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:), 0, 0);
  }

  else
  {
    v4 = v3[1];

    return v4();
  }
}

uint64_t implicit closure #7 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  return MEMORY[0x2822009F8](implicit closure #7 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:), 0, 0);
}

uint64_t implicit closure #7 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)()
{
  v1 = *(v0 + 112);
  outlined init with copy of ServerBag.MLS(*(v0 + 104) + *(**(v0 + 104) + 184), v0 + 16);
  v2 = *(v0 + 40);
  *(v0 + 120) = v2;
  *(v0 + 136) = __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  (*(v4 + 8))(v3, v4);
  v6 = *(v0 + 80);
  v5 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), v6);
  v7 = swift_task_alloc();
  *(v0 + 144) = v7;
  *v7 = v0;
  v7[1] = implicit closure #7 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);

  return MLS.SwiftMLSGroupProtocol.memberCredentials.getter(v6, v5);
}

{
  v1 = v0[16];
  v0[21] = *(v1 + 8);
  v0[22] = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x6C1D000000000000;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = static MLSActor.shared;

  return MEMORY[0x2822009F8](implicit closure #7 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:), v2, 0);
}

{
  v1 = *(v0 + 176);
  v2 = *(v0 + 160);
  v3 = *(v0 + 136);
  *(v0 + 184) = (*(v0 + 168))(*(v0 + 152), *(v0 + 120), *(v0 + 128));
  *(v0 + 192) = v2;
  if (v2)
  {
    v4 = implicit closure #7 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {
    v5 = *(v0 + 152);

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    v4 = implicit closure #7 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  **(v0 + 96) = *(v0 + 184);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[20];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v2 = v0[1];

  return v2();
}

{
  v1 = v0[19];

  v2 = v0[24];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v3 = v0[1];

  return v3();
}

uint64_t implicit closure #7 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 144);
  v7 = *v2;
  *(v3 + 152) = a1;
  *(v3 + 160) = v1;

  if (v1)
  {
    v5 = implicit closure #7 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {
    v5 = implicit closure #7 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t closure #3 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = (a2 + *(*a2 + 192));
  if (v3 == *v5 && v4 == v5[1])
  {
    v7 = 0;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)() ^ 1;
  }

  return v7 & 1;
}

uint64_t implicit closure #10 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 32) = a2;
  *(v3 + 40) = a3;
  return MEMORY[0x2822009F8](implicit closure #10 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:), 0, 0);
}

uint64_t implicit closure #10 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)()
{
  v1 = v0[4];
  v2 = *v1;
  v3 = (v1 + *(*v1 + 160));
  v5 = *v3;
  v4 = v3[1];
  ObjectType = swift_getObjectType();
  v7 = v2;
  v8 = v1[2];
  v9 = v1[3];
  v10 = (v1 + *(v7 + 200));
  v11 = v10[1];
  v0[2] = *v10;
  v0[3] = v11;
  v12 = *(v4 + 88);

  v17 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  v0[6] = v14;
  *v14 = v0;
  v14[1] = implicit closure #10 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  v15 = v0[5];

  return (v17)(v8, v9, v15, v0 + 2, ObjectType, v4);
}

{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = v0;

  v5 = *(v2 + 24);

  if (v0)
  {

    return MEMORY[0x2822009F8](specialized implicit closure #4 in closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:), 0, 0);
  }

  else
  {
    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t implicit closure #11 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[52] = a2;
  v3[53] = a3;
  v3[51] = a1;
  v4 = type metadata accessor for MLS.Group.GroupInfo();
  v3[54] = v4;
  v5 = *(v4 - 8);
  v3[55] = v5;
  v6 = *(v5 + 64) + 15;
  v3[56] = swift_task_alloc();

  return MEMORY[0x2822009F8](implicit closure #11 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:), 0, 0);
}

uint64_t implicit closure #11 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)()
{
  v2 = v0[52];
  v1 = v0[53];
  v0[57] = v2[2];
  v0[58] = v2[3];
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  (*(v4 + 8))(v3, v4);
  v5 = *v2;
  v6 = (v2 + *(*v2 + 160));
  v0[59] = *v6;
  v0[60] = v6[1];
  v7 = (v2 + *(v5 + 200));
  v0[61] = *v7;
  v0[62] = v7[1];
  v8 = v0[44];
  v9 = v0[45];
  __swift_project_boxed_opaque_existential_1(v0 + 41, v8);
  v10 = *(v9 + 32);

  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v0[63] = v12;
  *v12 = v0;
  v12[1] = implicit closure #11 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);

  return v14(v8, v9);
}

{
  v1 = v0[44];
  v2 = v0[45];
  __swift_project_boxed_opaque_existential_1(v0 + 41, v1);
  v3 = *(v2 + 24);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[65] = v5;
  *v5 = v0;
  v5[1] = implicit closure #11 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);

  return v7(v1, v2);
}

{
  v1 = v0[64];
  v2 = v0[58];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 41);

  v3 = v0[56];

  v4 = v0[1];

  return v4();
}

{
  v2 = *(*v1 + 536);
  v5 = *v1;
  *(*v1 + 544) = v0;

  if (v0)
  {
    v3 = implicit closure #11 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {
    v3 = implicit closure #11 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v2 = v0[55];
  v1 = v0[56];
  v3 = v0[54];
  v0[69] = MLS.Group.GroupInfo.rawRepresentation.getter();
  v0[70] = v4;
  (*(v2 + 8))(v1, v3);
  v5 = v0[44];
  v6 = v0[45];
  __swift_project_boxed_opaque_existential_1(v0 + 41, v5);
  v7 = *(v6 + 56);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[71] = v9;
  *v9 = v0;
  v9[1] = implicit closure #11 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);

  return v11(v5, v6);
}

{
  v1 = v0[44];
  v2 = v0[45];
  __swift_project_boxed_opaque_existential_1(v0 + 41, v1);
  v3 = *(v2 + 64);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[74] = v5;
  *v5 = v0;
  v5[1] = implicit closure #11 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);

  return v7(v1, v2);
}

{
  v1 = v0[68];
  v2 = v0[58];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 41);

  v3 = v0[56];

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[75];
  v2 = v0[73];
  v3 = v0[70];
  v4 = v0[69];
  if (v2 >> 60 == 15)
  {
    v5 = 0xC000000000000000;
  }

  else
  {
    v5 = v0[73];
  }

  if (v2 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = v0[72];
  }

  v7 = v0[58];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 41);

  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data._Representation(v6, v5);
  v8 = v0[56];

  v9 = v0[1];

  return v9();
}

{
  v1 = *(v0 + 656);
  v2 = *(v0 + 648);
  v3 = *(v0 + 640);
  v4 = *(v0 + 608);
  v5 = *(v0 + 584);
  v6 = *(v0 + 560);
  v25 = v6;
  v26 = v1;
  v7 = *(v0 + 552);
  v24 = v7;
  v8 = *(v0 + 528);
  v10 = *(v0 + 456);
  v9 = *(v0 + 464);
  v27 = *(v0 + 448);
  v11 = *(v0 + 408);
  if ((v3 & 0x100000000) != 0)
  {
    v12 = 1;
  }

  else
  {
    v12 = v3;
  }

  if (v4 >> 60 == 15)
  {
    v13 = 0xC000000000000000;
  }

  else
  {
    v13 = *(v0 + 608);
  }

  if (v4 >> 60 == 15)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(v0 + 616);
  }

  if (v5 >> 60 == 15)
  {
    v15 = 0xC000000000000000;
  }

  else
  {
    v15 = *(v0 + 584);
  }

  if (v5 >> 60 == 15)
  {
    v16 = 0;
  }

  else
  {
    v16 = *(v0 + 576);
  }

  *(v0 + 120) = v10;
  *(v0 + 128) = v9;
  *(v0 + 136) = v12;
  *(v0 + 144) = v12;
  *(v0 + 152) = v8;
  *(v0 + 160) = v7;
  *(v0 + 168) = v6;
  *(v0 + 176) = v16;
  *(v0 + 184) = v15;
  *(v0 + 192) = v14;
  *(v0 + 200) = v13;
  *(v0 + 208) = v1;
  *(v0 + 216) = v2;
  v17 = *(v0 + 184);
  v18 = *(v0 + 168);
  v19 = *(v0 + 200);
  *(v11 + 96) = v2;
  *(v11 + 64) = v17;
  *(v11 + 80) = v19;
  *(v11 + 48) = v18;
  v20 = *(v0 + 120);
  v21 = *(v0 + 152);
  *(v11 + 16) = *(v0 + 136);
  *(v11 + 32) = v21;
  *v11 = v20;
  outlined init with copy of MLS.Group(v0 + 120, v0 + 224);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 328));
  *(v0 + 16) = v10;
  *(v0 + 24) = v9;
  *(v0 + 32) = v12;
  *(v0 + 40) = v12;
  *(v0 + 48) = v8;
  *(v0 + 56) = v24;
  *(v0 + 64) = v25;
  *(v0 + 72) = v16;
  *(v0 + 80) = v15;
  *(v0 + 88) = v14;
  *(v0 + 96) = v13;
  *(v0 + 104) = v26;
  *(v0 + 112) = v2;
  outlined destroy of MLS.Group(v0 + 16);

  v22 = *(v0 + 8);

  return v22();
}

{
  v1 = v0[79];
  v2 = v0[76];
  v3 = v0[73];
  v4 = v0[70];
  v5 = v0[69];
  if (v2 >> 60 == 15)
  {
    v6 = 0xC000000000000000;
  }

  else
  {
    v6 = v0[76];
  }

  if (v2 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = v0[77];
  }

  if (v3 >> 60 == 15)
  {
    v8 = 0xC000000000000000;
  }

  else
  {
    v8 = v0[73];
  }

  if (v3 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    v9 = v0[72];
  }

  v10 = v0[58];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 41);

  outlined consume of Data._Representation(v5, v4);
  outlined consume of Data._Representation(v9, v8);
  outlined consume of Data._Representation(v7, v6);
  v11 = v0[56];

  v12 = v0[1];

  return v12();
}

uint64_t implicit closure #11 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[46] = v2;
  v4[47] = a1;
  v4[48] = v1;
  v5 = v3[63];
  v8 = *v2;
  v4[64] = v1;

  if (v1)
  {
    v6 = implicit closure #11 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {
    v6 = implicit closure #11 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v2 = *(*v1 + 520);
  v4 = *v1;
  *(*v1 + 528) = a1;

  return MEMORY[0x2822009F8](implicit closure #11 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:), 0, 0);
}

void implicit closure #11 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)()
{
  if ((v0[66] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = v0[44];
    v2 = v0[45];
    __swift_project_boxed_opaque_existential_1(v0 + 41, v1);
    v3 = *(v2 + 80);
    v7 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    v0[67] = v5;
    *v5 = v0;
    v5[1] = implicit closure #11 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
    v6 = v0[56];

    v7(v6, v1, v2);
  }
}

uint64_t implicit closure #11 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 568);
  v6 = *v2;
  *(v3 + 576) = a1;
  *(v3 + 584) = a2;

  return MEMORY[0x2822009F8](implicit closure #11 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:), 0, 0);
}

{
  v6 = *(*v3 + 592);
  v7 = *v3;
  v7[75] = v2;

  if (v2)
  {

    return MEMORY[0x2822009F8](implicit closure #11 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:), 0, 0);
  }

  else
  {
    v9 = v7[61];
    v8 = v7[62];
    v10 = v7[59];
    v21 = v7[60];
    v7[76] = a2;
    v7[77] = a1;
    ObjectType = swift_getObjectType();
    v7[49] = v9;
    v7[50] = v8;
    v12 = *(v21 + 64);
    v20 = (v12 + *v12);
    v13 = v12[1];
    v14 = swift_task_alloc();
    v7[78] = v14;
    *v14 = v7;
    v14[1] = implicit closure #11 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
    v16 = v7[59];
    v15 = v7[60];
    v17 = v7[58];
    v18 = v7[57];

    return (v20)(v18, v17, v7 + 49, ObjectType, v15);
  }
}

{
  v6 = *v3;
  v7 = *(*v3 + 624);
  v8 = *v3;
  *(*v3 + 632) = v2;

  if (v2)
  {
    v9 = implicit closure #11 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {
    v6[80] = v6[47];
    v6[81] = a2;
    v6[82] = a1;
    v9 = implicit closure #11 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t implicit closure #12 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](implicit closure #12 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:), 0, 0);
}

uint64_t implicit closure #12 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)()
{
  v1 = v0[3];
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = implicit closure #12 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:);
  v5 = v0[2];

  return MLS.SwiftMLSGroupProtocol.groupVersion.getter(v5, v3, v2);
}

{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void closure #4 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = *(*a3 + 208);

  oslog = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = v12;
    *v11 = 136315394;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, &v14);
    *(v11 + 12) = 2080;
    *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v14);
    _os_log_impl(&dword_264F1F000, oslog, v10, "SelfHealOperation failed to obtain era { identifier: %s, error: %s }", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v12, -1, -1);
    MEMORY[0x266755550](v11, -1, -1);
  }
}

char *MLS.SelfHealOperation.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 3);

  (*(*(*(v1 + 88) - 8) + 8))(&v0[*(*v0 + 136)]);
  outlined destroy of MLS.SwiftMLSClientPicker(&v0[*(*v0 + 144)]);
  v3 = *&v0[*(*v0 + 152)];

  v4 = *&v0[*(*v0 + 160)];
  swift_unknownObjectRelease();
  v5 = *&v0[*(*v0 + 168)];
  swift_unknownObjectRelease();
  outlined destroy of MLS.KeyPackageProvider(&v0[*(*v0 + 176)]);
  __swift_destroy_boxed_opaque_existential_1Tm(&v0[*(*v0 + 184)]);
  v6 = &v0[*(*v0 + 192)];
  v7 = *v6;
  v8 = *(v6 + 1);
  v9 = *(v6 + 2);
  v10 = v6[24];
  outlined consume of MLS.AllMember();
  v11 = *&v0[*(*v0 + 200) + 8];

  v12 = *(*v0 + 208);
  v13 = type metadata accessor for Logger();
  (*(*(v13 - 8) + 8))(&v0[v12], v13);
  return v0;
}

uint64_t MLS.SelfHealOperation.__deallocating_deinit()
{
  MLS.SelfHealOperation.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for MLS.OptionalGroupGroupOperation.membersRequiringKeyPackages(swiftMLSGroup:) in conformance MLS.SelfHealOperation<A, B, C>(uint64_t a1)
{
  v4 = *(**v1 + 272);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = specialized KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v8(a1);
}

uint64_t protocol witness for MLS.OptionalGroupGroupOperation.perform(on:metricCollector:keyPackageResult:) in conformance MLS.SelfHealOperation<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + 280);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.GroupOperation.logger.getter in conformance MLS.SelfHealOperation<A, B, C>@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v3 + 208);
  v5 = type metadata accessor for Logger();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t partial apply for implicit closure #1 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return implicit closure #1 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(a1, v5, v4);
}

uint64_t partial apply for implicit closure #4 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return implicit closure #4 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(a1, v1);
}

uint64_t outlined consume of MLS.GroupRecoveryInfo?(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    outlined consume of Data._Representation(result, a2);

    return outlined consume of Data?(a3, a4);
  }

  return result;
}

uint64_t partial apply for implicit closure #6 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return implicit closure #6 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(a1, v5, v4);
}

uint64_t partial apply for implicit closure #7 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return implicit closure #7 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(a1, v5, v4);
}

uint64_t partial apply for implicit closure #10 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return implicit closure #10 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(a1, v5, v4);
}

uint64_t partial apply for implicit closure #11 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return implicit closure #11 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(a1, v5, v4);
}

uint64_t partial apply for implicit closure #12 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return implicit closure #12 in MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(a1, v4);
}

uint64_t sub_26505E54C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t instantiation function for generic protocol witness table for MLS.SelfHealOperation<A, B, C>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for MLS.SelfHealOperation(uint64_t a1)
{
  v1 = *(a1 + 88);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    result = type metadata accessor for MLS.KeyPackageProvider();
    if (v4 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      result = type metadata accessor for Logger();
      if (v5 <= 0x3F)
      {
        v8 = *(result - 8) + 64;
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of MLS.SelfHealOperation.membersRequiringKeyPackages(swiftMLSGroup:)(uint64_t a1)
{
  v4 = *(*v1 + 272);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v8(a1);
}

uint64_t dispatch thunk of MLS.SelfHealOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 280);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4);
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 4u)
  {
    v11 = 0x534C4D7466697753;
    v12 = 0xEE0074696D6D6F43;
    v13 = 0x6148646E6F636553;
    v14 = 0xEF656B616873646ELL;
    if (a1 != 8)
    {
      v13 = 0xD000000000000016;
      v14 = 0x80000002651E7960;
    }

    if (a1 != 7)
    {
      v11 = v13;
      v12 = v14;
    }

    v15 = 0xD000000000000010;
    v16 = 0x80000002651E7900;
    if (a1 != 5)
    {
      v15 = 0xD000000000000013;
      v16 = 0x80000002651E7920;
    }

    if (a1 <= 6u)
    {
      v9 = v15;
    }

    else
    {
      v9 = v11;
    }

    if (v2 <= 6)
    {
      v10 = v16;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x6341746E65696C43;
    v5 = 0xEB00000000726F74;
    v6 = 0x5864726177726F46;
    v7 = 0xEA00000000004350;
    if (a1 != 3)
    {
      v6 = 0x676E6975657551;
      v7 = 0xE700000000000000;
    }

    if (a1 != 2)
    {
      v4 = v6;
      v5 = v7;
    }

    v8 = 0x6E61487473726946;
    if (a1)
    {
      v3 = 0xEE00656B61687364;
    }

    else
    {
      v8 = 0x646E456F54646E45;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    if (v2 <= 1)
    {
      v10 = v3;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 <= 4u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v17 = 0xEB00000000726F74;
        if (v9 != 0x6341746E65696C43)
        {
          goto LABEL_57;
        }
      }

      else if (a2 == 3)
      {
        v17 = 0xEA00000000004350;
        if (v9 != 0x5864726177726F46)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v17 = 0xE700000000000000;
        if (v9 != 0x676E6975657551)
        {
          goto LABEL_57;
        }
      }

      goto LABEL_55;
    }

    if (!a2)
    {
      v17 = 0xE800000000000000;
      if (v9 != 0x646E456F54646E45)
      {
        goto LABEL_57;
      }

      goto LABEL_55;
    }

    v18 = 0x6E61487473726946;
    v19 = 0x656B61687364;
LABEL_52:
    v17 = v19 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
    if (v9 != v18)
    {
      goto LABEL_57;
    }

    goto LABEL_55;
  }

  if (a2 > 6u)
  {
    if (a2 != 7)
    {
      if (a2 == 8)
      {
        v17 = 0xEF656B616873646ELL;
        if (v9 != 0x6148646E6F636553)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v17 = 0x80000002651E7960;
        if (v9 != 0xD000000000000016)
        {
          goto LABEL_57;
        }
      }

      goto LABEL_55;
    }

    v18 = 0x534C4D7466697753;
    v19 = 0x74696D6D6F43;
    goto LABEL_52;
  }

  if (a2 == 5)
  {
    v17 = 0x80000002651E7900;
    if (v9 != 0xD000000000000010)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v17 = 0x80000002651E7920;
    if (v9 != 0xD000000000000013)
    {
LABEL_57:
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_58;
    }
  }

LABEL_55:
  if (v10 != v17)
  {
    goto LABEL_57;
  }

  v20 = 1;
LABEL_58:

  return v20 & 1;
}

uint64_t specialized RawRepresentable<>.hash(into:)()
{
  String.hash(into:)();
}

SecureMessaging::MetricCollector __swiftcall MetricCollector.init()()
{
  v1 = v0;
  result.events._rawValue = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v1->events._rawValue = result.events._rawValue;
  return result;
}

SecureMessaging::Metric_optional __swiftcall Metric.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Metric.init(rawValue:), v3);

  v7 = 10;
  if (v5 < 0xA)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

unint64_t Metric.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0x534C4D7466697753;
    v7 = 0x6148646E6F636553;
    if (v1 != 8)
    {
      v7 = 0xD000000000000016;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000010;
    if (v1 != 5)
    {
      v8 = 0xD000000000000013;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x646E456F54646E45;
    v3 = 0x6341746E65696C43;
    v4 = 0x5864726177726F46;
    if (v1 != 3)
    {
      v4 = 0x676E6975657551;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0x6E61487473726946;
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
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Metric()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Metric()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)();
  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance Metric@<X0>(unint64_t *a1@<X8>)
{
  result = Metric.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MetricCollector.Event.start.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Date();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MetricCollector.Event.end.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MetricCollector.Event() + 20);

  return outlined init with copy of Date?(v3, a1);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance MetricCollector.Event.CodingKeys()
{
  if (*v0)
  {
    result = 6581861;
  }

  else
  {
    result = 0x7472617473;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MetricCollector.Event.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 6581861 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MetricCollector.Event.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MetricCollector.Event.CodingKeys and conformance MetricCollector.Event.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MetricCollector.Event.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MetricCollector.Event.CodingKeys and conformance MetricCollector.Event.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MetricCollector.Event.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging15MetricCollectorV5EventV10CodingKeys33_1014148F0A03EF7DA45DAB5DCE10EA55LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging15MetricCollectorV5EventV10CodingKeys33_1014148F0A03EF7DA45DAB5DCE10EA55LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MetricCollector.Event.CodingKeys and conformance MetricCollector.Event.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[15] = 0;
  type metadata accessor for Date();
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    v9 = *(type metadata accessor for MetricCollector.Event() + 20);
    v11[14] = 1;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t MetricCollector.Event.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v26 - v6;
  v35 = type metadata accessor for Date();
  v31 = *(v35 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v35);
  v32 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging15MetricCollectorV5EventV10CodingKeys33_1014148F0A03EF7DA45DAB5DCE10EA55LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging15MetricCollectorV5EventV10CodingKeys33_1014148F0A03EF7DA45DAB5DCE10EA55LLOGMR);
  v11 = *(v10 - 8);
  v33 = v10;
  v34 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - v13;
  v15 = type metadata accessor for MetricCollector.Event();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MetricCollector.Event.CodingKeys and conformance MetricCollector.Event.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v27 = v15;
  v28 = v7;
  v29 = v18;
  v37 = 0;
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  v20 = v32;
  v21 = v33;
  v22 = v35;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v31 + 32))(v29, v20, v22);
  v36 = 1;
  v23 = v28;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v34 + 8))(v14, v21);
  v24 = v29;
  outlined init with take of Date?(v23, &v29[*(v27 + 20)]);
  outlined init with copy of MetricCollector.Event(v24, v30);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return outlined destroy of MetricCollector.Event(v24);
}

uint64_t MetricCollector.Event.init(start:end:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = a3 + *(type metadata accessor for MetricCollector.Event() + 20);

  return outlined init with take of Date?(a2, v7);
}

Swift::Void __swiftcall MetricCollector.start(label:)(Swift::String label)
{
  object = label._object;
  countAndFlagsBits = label._countAndFlagsBits;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15MetricCollectorV5EventVSgMd, &_s15SecureMessaging15MetricCollectorV5EventVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - v5;

  Date.init()();
  v7 = type metadata accessor for MetricCollector.Event();
  v8 = *(v7 + 20);
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 56))(&v6[v8], 1, 1, v9);
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  specialized Dictionary.subscript.setter(v6, countAndFlagsBits, object);
}

uint64_t type metadata accessor for MetricCollector.Event()
{
  result = type metadata singleton initialization cache for MetricCollector.Event;
  if (!type metadata singleton initialization cache for MetricCollector.Event)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Void __swiftcall MetricCollector.end(label:)(Swift::String label)
{
  object = label._object;
  countAndFlagsBits = label._countAndFlagsBits;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15MetricCollectorV5EventVSgMd, &_s15SecureMessaging15MetricCollectorV5EventVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for MetricCollector.Event();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - v14;
  v16 = *v1;
  if (*(v16 + 16))
  {
    v17 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, object);
    if (v18)
    {
      outlined init with copy of MetricCollector.Event(*(v16 + 56) + *(v9 + 72) * v17, v13);
      outlined init with take of MetricCollector.Event(v13, v15);
      v19 = type metadata accessor for Date();
      v20 = *(v19 - 8);
      (*(v20 + 16))(v7, v15, v19);
      v21 = *(v8 + 20);

      Date.init()();
      (*(v20 + 56))(&v7[v21], 0, 1, v19);
      (*(v9 + 56))(v7, 0, 1, v8);
      specialized Dictionary.subscript.setter(v7, countAndFlagsBits, object);
      outlined destroy of MetricCollector.Event(v15);
    }
  }
}

uint64_t MetricCollector.add(event:label:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15MetricCollectorV5EventVSgMd, &_s15SecureMessaging15MetricCollectorV5EventVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v12 - v8;
  outlined init with copy of MetricCollector.Event(a1, &v12 - v8);
  v10 = type metadata accessor for MetricCollector.Event();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);

  return specialized Dictionary.subscript.setter(v9, a2, a3);
}

Swift::Double_optional __swiftcall MetricCollector.interval(label:)(Swift::String label)
{
  object = label._object;
  countAndFlagsBits = label._countAndFlagsBits;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v28 - v6;
  v8 = type metadata accessor for Date();
  v29 = *(v8 - 8);
  v9 = *(v29 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MetricCollector.Event();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v20 = &v28 - v19;
  v21 = *v1;
  if (*(v21 + 16))
  {
    v22 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, object);
    if (v23)
    {
      outlined init with copy of MetricCollector.Event(*(v21 + 56) + *(v13 + 72) * v22, v17);
      outlined init with take of MetricCollector.Event(v17, v20);
      outlined init with copy of Date?(&v20[*(v12 + 20)], v7);
      v24 = v29;
      if ((*(v29 + 48))(v7, 1, v8) != 1)
      {
        (*(v24 + 32))(v11, v7, v8);
        Date.timeIntervalSince(_:)();
        v27 = v26;
        (*(v24 + 8))(v11, v8);
        outlined destroy of MetricCollector.Event(v20);
        v25 = v27;
        goto LABEL_7;
      }

      outlined destroy of MetricCollector.Event(v20);
      outlined destroy of NSObject?(v7, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  v25 = 0;
LABEL_7:
  result.value = v18;
  result.is_nil = v25;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MetricCollector.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73746E657665 && a2 == 0xE600000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MetricCollector.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MetricCollector.CodingKeys and conformance MetricCollector.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MetricCollector.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MetricCollector.CodingKeys and conformance MetricCollector.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MetricCollector.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging15MetricCollectorV10CodingKeys33_1014148F0A03EF7DA45DAB5DCE10EA55LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging15MetricCollectorV10CodingKeys33_1014148F0A03EF7DA45DAB5DCE10EA55LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MetricCollector.CodingKeys and conformance MetricCollector.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS15SecureMessaging15MetricCollectorV5EventVGMd, &_sSDySS15SecureMessaging15MetricCollectorV5EventVGMR);
  lazy protocol witness table accessor for type [String : MetricCollector.Event] and conformance <> [A : B]();
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  return (*(v4 + 8))(v7, v3);
}

uint64_t MetricCollector.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging15MetricCollectorV10CodingKeys33_1014148F0A03EF7DA45DAB5DCE10EA55LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging15MetricCollectorV10CodingKeys33_1014148F0A03EF7DA45DAB5DCE10EA55LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);

  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MetricCollector.CodingKeys and conformance MetricCollector.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS15SecureMessaging15MetricCollectorV5EventVGMd, &_sSDySS15SecureMessaging15MetricCollectorV5EventVGMR);
    lazy protocol witness table accessor for type [String : MetricCollector.Event] and conformance <> [A : B]();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

BOOL specialized static MetricCollector.Event.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v23 - v15;
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v17 = *(type metadata accessor for MetricCollector.Event() + 20);
  v18 = *(v13 + 48);
  outlined init with copy of Date?(a1 + v17, v16);
  outlined init with copy of Date?(a2 + v17, &v16[v18]);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      outlined destroy of NSObject?(v16, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      return 1;
    }

    goto LABEL_7;
  }

  outlined init with copy of Date?(v16, v12);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_7:
    outlined destroy of NSObject?(v16, &_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
    return 0;
  }

  (*(v5 + 32))(v8, &v16[v18], v4);
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  v22 = *(v5 + 8);
  v22(v8, v4);
  v22(v12, v4);
  outlined destroy of NSObject?(v16, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return (v21 & 1) != 0;
}

unint64_t lazy protocol witness table accessor for type MetricCollector.Event.CodingKeys and conformance MetricCollector.Event.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MetricCollector.Event.CodingKeys and conformance MetricCollector.Event.CodingKeys;
  if (!lazy protocol witness table cache variable for type MetricCollector.Event.CodingKeys and conformance MetricCollector.Event.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricCollector.Event.CodingKeys and conformance MetricCollector.Event.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MetricCollector.Event.CodingKeys and conformance MetricCollector.Event.CodingKeys;
  if (!lazy protocol witness table cache variable for type MetricCollector.Event.CodingKeys and conformance MetricCollector.Event.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricCollector.Event.CodingKeys and conformance MetricCollector.Event.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MetricCollector.Event.CodingKeys and conformance MetricCollector.Event.CodingKeys;
  if (!lazy protocol witness table cache variable for type MetricCollector.Event.CodingKeys and conformance MetricCollector.Event.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricCollector.Event.CodingKeys and conformance MetricCollector.Event.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MetricCollector.Event.CodingKeys and conformance MetricCollector.Event.CodingKeys;
  if (!lazy protocol witness table cache variable for type MetricCollector.Event.CodingKeys and conformance MetricCollector.Event.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricCollector.Event.CodingKeys and conformance MetricCollector.Event.CodingKeys);
  }

  return result;
}

uint64_t outlined init with take of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type MetricCollector.CodingKeys and conformance MetricCollector.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MetricCollector.CodingKeys and conformance MetricCollector.CodingKeys;
  if (!lazy protocol witness table cache variable for type MetricCollector.CodingKeys and conformance MetricCollector.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricCollector.CodingKeys and conformance MetricCollector.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MetricCollector.CodingKeys and conformance MetricCollector.CodingKeys;
  if (!lazy protocol witness table cache variable for type MetricCollector.CodingKeys and conformance MetricCollector.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricCollector.CodingKeys and conformance MetricCollector.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MetricCollector.CodingKeys and conformance MetricCollector.CodingKeys;
  if (!lazy protocol witness table cache variable for type MetricCollector.CodingKeys and conformance MetricCollector.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricCollector.CodingKeys and conformance MetricCollector.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MetricCollector.CodingKeys and conformance MetricCollector.CodingKeys;
  if (!lazy protocol witness table cache variable for type MetricCollector.CodingKeys and conformance MetricCollector.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricCollector.CodingKeys and conformance MetricCollector.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Metric and conformance Metric()
{
  result = lazy protocol witness table cache variable for type Metric and conformance Metric;
  if (!lazy protocol witness table cache variable for type Metric and conformance Metric)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Metric and conformance Metric);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Metric and conformance Metric;
  if (!lazy protocol witness table cache variable for type Metric and conformance Metric)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Metric and conformance Metric);
  }

  return result;
}

uint64_t sub_26506160C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_26506171C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void type metadata completion function for MetricCollector.Event()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date?();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Date?()
{
  if (!lazy cache variable for type metadata for Date?)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Date?);
    }
  }
}

uint64_t lazy protocol witness table accessor for type Date and conformance Date(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MLSActor.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  return v0;
}

uint64_t static MLSActor.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t MLSActor.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t protocol witness for static GlobalActor.shared.getter in conformance MLSActor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t protocol witness for static GlobalActor.sharedUnownedExecutor.getter in conformance MLSActor(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MLSActor();

  return MEMORY[0x2822005F8](v3, a2);
}

void *MLS.GroupOperationResult.init(kind:metricCollector:customAcknowledgementBlock:)@<X0>(void *__src@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v8 = *a2;
  result = memcpy(a5, __src, 0x199uLL);
  a5[52] = v8;
  a5[53] = a3;
  a5[54] = a4;
  return result;
}

uint64_t MLS.GroupOperation.context(commitOutput:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t *a4@<X8>)
{
  v126 = a4;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v140 = *(*(AssociatedConformanceWitness + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v138 = &v122 - v8;
  v9 = swift_checkMetadataState();
  v141 = *(v9 - 8);
  v142 = v9;
  v10 = *(v141 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v133 = &v122 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v128 = (&v122 - v13);
  v14 = swift_getAssociatedTypeWitness();
  v131 = *(v14 - 8);
  v132 = v14;
  v15 = *(v131 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v130 = &v122 - v17;
  v18 = *(a2 - 8);
  v19 = *(v18 + 8);
  v20 = MEMORY[0x28223BE20](v16);
  v143 = &v122 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v122 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v125 = &v122 - v26;
  MEMORY[0x28223BE20](v25);
  v124 = &v122 - v27;
  v28 = type metadata accessor for Logger();
  v135 = *(v28 - 8);
  v136 = v28;
  v29 = *(v135 + 64);
  v30 = MEMORY[0x28223BE20](v28);
  v144 = &v122 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v129 = &v122 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O5GroupO0C4InfoVSgMd, &_s8SwiftMLS0B0O5GroupO0C4InfoVSgMR);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v36 = &v122 - v35;
  v37 = a1[3];
  v38 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v37);
  v145 = (*(v38 + 40))(v37, v38);
  v146 = v39;
  v40 = a1[3];
  v41 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v40);
  (*(v41 + 24))(v40, v41);
  v42 = type metadata accessor for MLS.Group.GroupInfo();
  v43 = *(v42 - 8);
  if ((*(v43 + 48))(v36, 1, v42) == 1)
  {
    outlined destroy of MLS.Group.GroupInfo?(v36);
    v44 = v134;
    (*(a3 + 11))(a2, a3);
    v45 = *(v18 + 2);
    v45(v24, v44, a2);
    v45(v143, v44, a2);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v147 = v134;
      *v48 = 136315394;
      v49 = *(a3 + 7);
      LODWORD(v129) = v47;
      v50 = v49(a2, a3);
      v52 = v51;
      v128 = *(v18 + 1);
      v128(v24, a2);
      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, &v147);

      *(v48 + 4) = v53;
      *(v48 + 12) = 2080;
      v54 = v130;
      v55 = v143;
      (*(a3 + 10))(a2, a3);
      v56 = v132;
      v57 = swift_getAssociatedConformanceWitness();
      v58 = (*(v57 + 16))(v56, v57);
      v60 = v59;
      (*(v131 + 8))(v54, v56);
      v128(v55, a2);
      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, &v147);

      *(v48 + 14) = v61;
      _os_log_impl(&dword_264F1F000, v46, v129, "GroupOperation %s commitOutput missing nextGroupInfo { identifier: %s }", v48, 0x16u);
      v62 = v134;
      swift_arrayDestroy();
      MEMORY[0x266755550](v62, -1, -1);
      MEMORY[0x266755550](v48, -1, -1);
    }

    else
    {

      v97 = *(v18 + 1);
      v97(v143, a2);
      v97(v24, a2);
    }

    (*(v135 + 8))(v144, v136);
    v98 = v133;
    v99 = v142;
    v100 = AssociatedTypeWitness;
    v101 = swift_getAssociatedConformanceWitness();
    v102 = v138;
    (*(v101 + 72))(v100, v101);
    v103 = v102;
    v104 = v140;
    VersatileError.init(type:)(v103, v99, v140);
    v105 = *(*(v104 + 8) + 8);
    if (_getErrorEmbeddedNSError<A>(_:)())
    {
      (*(v141 + 8))(v98, v99);
    }

    else
    {
      swift_allocError();
      (*(v141 + 32))(v108, v98, v99);
    }

    swift_willThrow();
    return outlined consume of Data?(v145, v146);
  }

  else
  {
    v143 = a3;
    v144 = v18;
    v63 = MLS.Group.GroupInfo.rawRepresentation.getter();
    v65 = v64;
    (*(v43 + 8))(v36, v42);
    v66 = a1[3];
    v67 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v66);
    result = (*(v67 + 32))(v66, v67);
    if (v69 >> 60 == 15)
    {
      v127 = v63;
      v133 = v65;
      v70 = v143;
      v71 = v129;
      v72 = v134;
      (*(v143 + 11))(a2, v143);
      v73 = v144;
      v74 = *(v144 + 2);
      v75 = v124;
      v74(v124, v72, a2);
      v76 = v125;
      v74(v125, v72, a2);
      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v134 = swift_slowAlloc();
        v147 = v134;
        *v79 = 136315394;
        v80 = *(v70 + 7);
        v123 = v77;
        v81 = v80(a2, v70);
        LODWORD(v126) = v78;
        v82 = v81;
        v84 = v83;
        v85 = *(v73 + 1);
        v85(v75, a2);
        v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v84, &v147);

        *(v79 + 4) = v86;
        *(v79 + 12) = 2080;
        v87 = v76;
        v88 = v130;
        (*(v70 + 10))(a2, v70);
        v89 = v132;
        v90 = swift_getAssociatedConformanceWitness();
        v91 = (*(v90 + 16))(v89, v90);
        v93 = v92;
        (*(v131 + 8))(v88, v89);
        v85(v87, a2);
        v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v93, &v147);

        *(v79 + 14) = v94;
        v95 = v123;
        _os_log_impl(&dword_264F1F000, v123, v126, "GroupOperation %s commitOutput missing epochAuthenticator { identifier: %s }", v79, 0x16u);
        v96 = v134;
        swift_arrayDestroy();
        MEMORY[0x266755550](v96, -1, -1);
        MEMORY[0x266755550](v79, -1, -1);

        (*(v135 + 8))(v129, v136);
      }

      else
      {

        v109 = *(v73 + 1);
        v109(v76, a2);
        v109(v75, a2);
        (*(v135 + 8))(v71, v136);
      }

      v111 = v127;
      v110 = v128;
      v112 = v142;
      v113 = AssociatedTypeWitness;
      v114 = swift_getAssociatedConformanceWitness();
      v115 = v138;
      (*(v114 + 80))(v113, v114);
      v116 = v115;
      v117 = v140;
      VersatileError.init(type:)(v116, v112, v140);
      v118 = *(*(v117 + 8) + 8);
      v119 = _getErrorEmbeddedNSError<A>(_:)();
      v120 = v133;
      if (v119)
      {
        (*(v141 + 8))(v110, v112);
      }

      else
      {
        swift_allocError();
        (*(v141 + 32))(v121, v110, v112);
      }

      swift_willThrow();
      outlined consume of Data?(v145, v146);
      return outlined consume of Data._Representation(v111, v120);
    }

    else
    {
      v106 = v126;
      *v126 = result;
      v106[1] = v69;
      v107 = v146;
      v106[2] = v145;
      v106[3] = v107;
      v106[4] = v63;
      v106[5] = v65;
    }
  }

  return result;
}

uint64_t protocol witness for MLS.GroupOperation.type.getter in conformance MLS.UpdateOtherExpiredKeyPackagesOperation<A1, B1, C1>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return MLS.RequiresGroupGroupOperation.type.getter(a1, WitnessTable, a2);
}

uint64_t protocol witness for MLS.GroupOperation.type.getter in conformance MLS.NegativeDeliveryOperation@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return MLS.RequiresGroupGroupOperation.type.getter(a1, WitnessTable, a2);
}

uint64_t protocol witness for MLS.GroupOperation.type.getter in conformance MLS.SignOperation@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return MLS.RequiresGroupGroupOperation.type.getter(a1, WitnessTable, a2);
}

uint64_t protocol witness for MLS.GroupOperation.type.getter in conformance MLS.EncryptGroupNameOperation@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return MLS.RequiresGroupGroupOperation.type.getter(a1, WitnessTable, a2);
}

uint64_t protocol witness for MLS.GroupOperation.type.getter in conformance MLS.AddMembersOperation@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return MLS.RequiresGroupGroupOperation.type.getter(a1, WitnessTable, a2);
}

uint64_t protocol witness for MLS.GroupOperation.type.getter in conformance MLS.LeaveGroupOperation@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return MLS.RequiresGroupGroupOperation.type.getter(a1, WitnessTable, a2);
}

uint64_t protocol witness for MLS.GroupOperation.type.getter in conformance MLS.KickMembersOperation@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return MLS.RequiresGroupGroupOperation.type.getter(a1, WitnessTable, a2);
}

uint64_t protocol witness for MLS.GroupOperation.type.getter in conformance MLS.SelfHealOperation<A1, B1, C1>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return MLS.OptionalGroupGroupOperation.type.getter(a1, WitnessTable, a2);
}

uint64_t MLS.RequiresGroupGroupOperation.type.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *(a4 + 24) = a1;
  *(a4 + 32) = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  result = (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v4, a1);
  *(a4 + 40) = a3;
  return result;
}

uint64_t MLS.GroupOperationResult.customAcknowledgementBlock.getter()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 432);
  _sxSbs5Error_pRi_zRi0_zlyxIseghndzo_Sgs8SendableRzlWOy(v1);
  return v1;
}

Swift::Int MLS.GroupOperationQueueingBehavior.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x266754DE0](a1 & 1);
  return Hasher._finalize()();
}

BOOL static MLS.GroupOperationErrorHandlingPolicy.== infix(_:_:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 == 1)
  {
    return a3 == 1;
  }

  if (!a1)
  {
    return !a3;
  }

  return a3 > 1;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance MLS.GroupOperationErrorHandlingPolicy(void *a1, unint64_t *a2)
{
  v2 = *a2;
  if (*a1 == 1)
  {
    return v2 == 1;
  }

  if (!*a1)
  {
    return !v2;
  }

  return v2 > 1;
}

uint64_t protocol witness for MLS.GroupOperation.type.getter in conformance MLS.EraAdvancementOperation<A1, B1, C1>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return MLS.RequiresGroupGroupOperation.type.getter(a1, WitnessTable, a2);
}

uint64_t protocol witness for MLS.GroupOperation.type.getter in conformance MLS.KeyUpdateOperation<A1, B1, C1>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return MLS.RequiresGroupGroupOperation.type.getter(a1, WitnessTable, a2);
}

uint64_t protocol witness for MLS.GroupOperation.type.getter in conformance MLS.DowngradeOperation<A1, B1, C1>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return MLS.RequiresGroupGroupOperation.type.getter(a1, WitnessTable, a2);
}

uint64_t protocol witness for MLS.GroupOperation.type.getter in conformance MLS.CheckKeyPackageExpirationOperation<A1, B1, C1>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return MLS.RequiresGroupGroupOperation.type.getter(a1, WitnessTable, a2);
}

uint64_t protocol witness for MLS.GroupOperation.type.getter in conformance MLS.EncryptOperation@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return MLS.RequiresGroupGroupOperation.type.getter(a1, WitnessTable, a2);
}

uint64_t outlined destroy of MLS.Group.GroupInfo?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O5GroupO0C4InfoVSgMd, &_s8SwiftMLS0B0O5GroupO0C4InfoVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type MLS.GroupOperationQueueingBehavior and conformance MLS.GroupOperationQueueingBehavior()
{
  result = lazy protocol witness table cache variable for type MLS.GroupOperationQueueingBehavior and conformance MLS.GroupOperationQueueingBehavior;
  if (!lazy protocol witness table cache variable for type MLS.GroupOperationQueueingBehavior and conformance MLS.GroupOperationQueueingBehavior)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupOperationQueueingBehavior and conformance MLS.GroupOperationQueueingBehavior);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15SecureMessaging3MLSO21OutgoingErrorOccurredV7TriggerOy_AC9AllMemberO10Foundation4DataV_G(uint64_t a1)
{
  if ((*(a1 + 112) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 112) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_15SecureMessaging3MLSO30RetryAfterGroupVersionBehaviorO(uint64_t a1)
{
  if ((*(a1 + 72) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 72) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_15SecureMessaging3MLSO33GroupOperationErrorHandlingPolicyO_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for MLS.GroupOperationResult(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 440))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 416);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MLS.GroupOperationResult(uint64_t result, int a2, int a3)
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
      *(result + 440) = 1;
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
      *(result + 416) = (a2 - 1);
      return result;
    }

    *(result + 440) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLS.GroupOperationResult.Kind(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 409))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 408);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MLS.GroupOperationResult.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 368) = 0u;
    *(result + 384) = 0u;
    *(result + 336) = 0u;
    *(result + 352) = 0u;
    *(result + 304) = 0u;
    *(result + 320) = 0u;
    *(result + 272) = 0u;
    *(result + 288) = 0u;
    *(result + 240) = 0u;
    *(result + 256) = 0u;
    *(result + 208) = 0u;
    *(result + 224) = 0u;
    *(result + 176) = 0u;
    *(result + 192) = 0u;
    *(result + 144) = 0u;
    *(result + 160) = 0u;
    *(result + 112) = 0u;
    *(result + 128) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *(result + 393) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 409) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 409) = 0;
    }

    if (a2)
    {
      *(result + 408) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for MLS.GroupOperationResult.Kind(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 400) = 0;
    *(result + 368) = 0u;
    *(result + 384) = 0u;
    *(result + 336) = 0u;
    *(result + 352) = 0u;
    *(result + 304) = 0u;
    *(result + 320) = 0u;
    *(result + 272) = 0u;
    *(result + 288) = 0u;
    *(result + 240) = 0u;
    *(result + 256) = 0u;
    *(result + 208) = 0u;
    *(result + 224) = 0u;
    *(result + 176) = 0u;
    *(result + 192) = 0u;
    *(result + 144) = 0u;
    *(result + 160) = 0u;
    *(result + 112) = 0u;
    *(result + 128) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
    *(result + 32) = 0u;
  }

  *(result + 408) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for MLS.GroupOperationErrorHandlingPolicy(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MLS.GroupOperationErrorHandlingPolicy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for MLS.GroupOperationErrorHandlingPolicy(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
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

uint64_t getEnumTagSinglePayload for MLS.GroupOperationType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MLS.GroupOperationType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t destructiveInjectEnumTag for MLS.GroupOperationType(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t dispatch thunk of MLS.RequiresGroupGroupOperation.membersRequiringKeyPackages(swiftMLSGroup:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = dispatch thunk of MLS.RequiresGroupGroupOperation.membersRequiringKeyPackages(swiftMLSGroup:);

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.RequiresGroupGroupOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 24);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MLS.OptionalGroupGroupOperation.membersRequiringKeyPackages(swiftMLSGroup:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = dispatch thunk of KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.OptionalGroupGroupOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 24);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v17(a1, a2, a3, a4, a5, a6);
}

void MLS.SwiftMLSCommitOutputProtocol.outgoingCommit.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for MLS.Group.Message();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 8))(a1, a2);
  v11 = MLS.Group.GroupInfo.rawRepresentation.getter();
  v13 = v12;
  (*(v7 + 8))(v10, v6);
  v14 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
  v15 = [v14 UUIDString];

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  *a3 = v16;
  a3[1] = v18;
  a3[2] = v11;
  a3[3] = v13;
}

uint64_t MLS.SwiftMLSCommitOutputProtocol.outgoingWelcome.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O5GroupO7MessageVSgMd, &_s8SwiftMLS0B0O5GroupO7MessageVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for MLS.Group.Message();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 16))(a1, a2);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    result = outlined destroy of MLS.Group.Message?(v9);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    v18 = MLS.Group.GroupInfo.rawRepresentation.getter();
    v19 = v20;
    v21 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
    v22 = [v21 UUIDString];

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v23;

    result = (*(v11 + 8))(v14, v10);
  }

  *a3 = v16;
  a3[1] = v17;
  a3[2] = v18;
  a3[3] = v19;
  return result;
}

uint64_t outlined destroy of MLS.Group.Message?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O5GroupO7MessageVSgMd, &_s8SwiftMLS0B0O5GroupO7MessageVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD4KeysVy15SecureMessaging3MLSO17InMemoryPersisterC17GroupEventStoreIDVAL08IncomingL5EntryV_G_AJ22UniqueClientIdentifierVs5NeverOTg504_s15e16Messaging3MLSO17hij7C31loadr28IdentifiersWithEventsSayAC06q3H10s12VGyYaKFAhE17klM8IDVXEfU_Tf1cn_nTm(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v32 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = v32;
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  result = _HashTable.startBucket.getter();
  v7 = result;
  v8 = 0;
  v26 = v3 + 72;
  v28 = v3 + 64;
  v29 = v3;
  v27 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    v30 = *(v3 + 36);
    v11 = (*(v3 + 48) + 48 * v7);
    v12 = v11[1];
    v31 = *v11;
    v13 = v11[3];
    v14 = v11[5];
    v15 = one-time initialization token for shared;

    if (v15 != -1)
    {
      swift_once();
    }

    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v17 = *(v32 + 16);
    v16 = *(v32 + 24);
    if (v17 >= v16 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
    }

    *(v32 + 16) = v17 + 1;
    v18 = v32 + 16 * v17;
    *(v18 + 32) = v31;
    *(v18 + 40) = v12;
    v3 = v29;
    v9 = 1 << *(v29 + 32);
    if (v7 >= v9)
    {
      goto LABEL_26;
    }

    v4 = v28;
    v19 = *(v28 + 8 * v10);
    if ((v19 & (1 << v7)) == 0)
    {
      goto LABEL_27;
    }

    if (v30 != *(v29 + 36))
    {
      goto LABEL_28;
    }

    v20 = v19 & (-2 << (v7 & 0x3F));
    if (v20)
    {
      v9 = __clz(__rbit64(v20)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v10 << 6;
      v22 = v10 + 1;
      v23 = (v26 + 8 * v10);
      while (v22 < (v9 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          result = outlined consume of Set<MLS.Identity.SigningIdentity>.Index._Variant(v7, v30, 0);
          v9 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      result = outlined consume of Set<MLS.Identity.SigningIdentity>.Index._Variant(v7, v30, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v27)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t specialized Dictionary.subscript.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (*(a5 + 16) && (result = specialized __RawDictionaryStorage.find<A>(_:)(result, a2, a3, a4), (v8 & 1) != 0))
  {
    v9 = *(a5 + 56) + 24 * result;
    v10 = *v9;
    v11 = *(v9 + 8);
    v12 = *(v9 + 16);
    *a6 = v10;
    *(a6 + 8) = v11;
  }

  else
  {
    *a6 = 0;
    *(a6 + 8) = 0;
    v12 = 2;
  }

  *(a6 + 16) = v12;
  return result;
}

Swift::Int MLS.InMemoryPersisterError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x266754DE0](0);
  return Hasher._finalize()();
}

uint64_t MLS.InMemoryPersister.GroupStoreID.clientID.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t MLS.InMemoryPersister.GroupStoreID.groupID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

void *MLS.InMemoryPersister.GroupStoreID.init(clientID:groupID:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = result[1];
  *a4 = *result;
  a4[1] = v4;
  a4[2] = a2;
  a4[3] = a3;
  return result;
}

uint64_t MLS.InMemoryPersister.GroupEventStoreID.clientID.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t MLS.InMemoryPersister.GroupEventStoreID.groupID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MLS.InMemoryPersister.GroupEventStoreID.eventID.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t MLS.InMemoryPersister.GroupMessageStoreID.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int MLS.InMemoryPersister.GroupMessageStoreID.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}