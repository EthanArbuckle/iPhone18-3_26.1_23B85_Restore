uint64_t WorkoutNotificationUnit.key.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t WorkoutNotificationUnit.value.getter()
{
  swift_beginAccess();
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t WorkoutNotificationUnit.value.setter(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 40) = a1;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t key path setter for WorkoutNotificationUnit.stringLiteral : WorkoutNotificationUnit(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 64);
  *(v4 + 56) = v3;
  *(v4 + 64) = v2;
}

uint64_t WorkoutNotificationUnit.stringLiteral.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t WorkoutNotificationUnit.stringLiteral.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 64);
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
}

void key path setter for WorkoutNotificationUnit.activityType : WorkoutNotificationUnit(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 72);
  *(v3 + 72) = v2;
  v5 = v2;
}

void *WorkoutNotificationUnit.activityType.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

void WorkoutNotificationUnit.activityType.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 72);
  *(v1 + 72) = a1;
}

uint64_t WorkoutNotificationUnit.__allocating_init(type:key:value:stringLiteral:activityType:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = swift_allocObject();
  v15 = *a1;
  *(v14 + 32) = 0;
  *(v14 + 40) = 0;
  *(v14 + 24) = 0;
  *(v14 + 48) = 1;
  *(v14 + 64) = 0;
  *(v14 + 72) = 0;
  *(v14 + 56) = 0;
  *(v14 + 16) = v15;
  swift_beginAccess();
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  swift_beginAccess();
  *(v14 + 40) = a4;
  *(v14 + 48) = a5 & 1;
  swift_beginAccess();
  *(v14 + 56) = a6;
  *(v14 + 64) = a7;
  swift_beginAccess();
  *(v14 + 72) = a8;
  return v14;
}

uint64_t WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *a1;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 24) = 0;
  *(v8 + 48) = 1;
  *(v8 + 64) = 0;
  *(v8 + 72) = 0;
  *(v8 + 56) = 0;
  *(v8 + 16) = v14;
  swift_beginAccess();
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  swift_beginAccess();
  *(v8 + 40) = a4;
  *(v8 + 48) = a5 & 1;
  swift_beginAccess();
  *(v8 + 56) = a6;
  *(v8 + 64) = a7;
  swift_beginAccess();
  v15 = *(v8 + 72);
  *(v8 + 72) = a8;

  return v8;
}

uint64_t WorkoutNotificationUnit.debugDescription.getter()
{
  _StringGuts.grow(_:)(72);
  MEMORY[0x20F2E6D80](0xD00000000000001ELL, 0x800000020B45F970);
  swift_beginAccess();
  v9 = *(v0 + 16);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x20F2E6D80](0x203A79656B202CLL, 0xE700000000000000);
  swift_beginAccess();
  v8 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v1 = Optional.description.getter();
  MEMORY[0x20F2E6D80](v1);

  MEMORY[0x20F2E6D80](0x3A65756C6176202CLL, 0xE900000000000020);
  swift_beginAccess();
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
  v2 = Optional.description.getter();
  MEMORY[0x20F2E6D80](v2);

  MEMORY[0x20F2E6D80](0xD000000000000011, 0x800000020B45F990);
  swift_beginAccess();
  v5 = *(v0 + 56);
  v3 = Optional.description.getter();
  MEMORY[0x20F2E6D80](v3);

  MEMORY[0x20F2E6D80](41, 0xE100000000000000);
  return 0;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutNotificationUnit.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance WorkoutNotificationUnit.CodingKeys()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutNotificationUnit.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance WorkoutNotificationUnit.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized WorkoutNotificationUnit.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance WorkoutNotificationUnit.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701869940;
  v5 = 0xE500000000000000;
  v6 = 0x65756C6176;
  v7 = 0xED00006C61726574;
  v8 = 0x694C676E69727473;
  if (v2 != 3)
  {
    v8 = 0x7974697669746361;
    v7 = 0xEC00000065707954;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 7955819;
    v3 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance WorkoutNotificationUnit.CodingKeys()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0x65756C6176;
  v4 = 0x694C676E69727473;
  if (v1 != 3)
  {
    v4 = 0x7974697669746361;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 7955819;
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

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance WorkoutNotificationUnit.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized WorkoutNotificationUnit.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkoutNotificationUnit.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkoutNotificationUnit.CodingKeys and conformance WorkoutNotificationUnit.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkoutNotificationUnit.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkoutNotificationUnit.CodingKeys and conformance WorkoutNotificationUnit.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkoutNotificationUnit.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  WorkoutNotificationUnit.init(from:)(a1);
  return v2;
}

uint64_t WorkoutNotificationUnit.init(from:)(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore0D16NotificationUnitC10CodingKeys33_F5D562FCEE5F3FA6C442E2BBAA76A548LLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore0D16NotificationUnitC10CodingKeys33_F5D562FCEE5F3FA6C442E2BBAA76A548LLOGMR);
  v37 = *(v4 - 8);
  v5 = *(v37 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - v6;
  v39 = v2;
  v40 = a1;
  *(v2 + 40) = 0;
  v8 = v2 + 40;
  *(v8 - 16) = 0;
  *(v8 - 8) = 0;
  *(v8 + 8) = 1;
  *(v8 + 16) = 0;
  *(v8 + 32) = 0;
  *(v8 + 24) = 0;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type WorkoutNotificationUnit.CodingKeys and conformance WorkoutNotificationUnit.CodingKeys();
  v10 = v38;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v10)
  {
    v14 = v39;
    v15 = *(v39 + 32);

    v16 = *(v14 + 64);

    type metadata accessor for WorkoutNotificationUnit();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v38 = v8 + 16;
    v36 = (v8 + 32);
    v11 = v37;
    v45 = 0;
    v12._countAndFlagsBits = KeyedDecodingContainer.decode(_:forKey:)();
    v13 = v4;
    WorkoutNotificationUnit.NotificationUnitType.init(rawValue:)(v12);
    v18 = v45;
    if (v45 == 17)
    {
      v18 = 15;
    }

    v14 = v39;
    *(v39 + 16) = v18;
    v45 = 1;
    v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v21 = v20;
    swift_beginAccess();
    v22 = *(v14 + 32);
    *(v14 + 24) = v19;
    *(v14 + 32) = v21;

    v44 = 2;
    v23 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v21) = v24;
    swift_beginAccess();
    *(v14 + 40) = v23;
    *(v14 + 48) = v21 & 1;
    v43 = 3;
    v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v27 = v26;
    swift_beginAccess();
    v28 = *(v14 + 64);
    *(v14 + 56) = v25;
    *(v14 + 64) = v27;

    v46 = 4;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v29 = v7;
    v30 = v42;
    if (v42 >> 60 == 15)
    {
      (*(v11 + 8))(v7, v13);
    }

    else
    {
      v31 = v41;
      _sSo17NSKeyedUnarchiverCMaTm_3(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x277CCAAC8);
      _sSo17NSKeyedUnarchiverCMaTm_3(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType, 0x277D0A810);
      v32 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
      (*(v11 + 8))(v29, v13);
      outlined consume of Data?(v31, v30);
      if (v32)
      {
        v33 = v36;
        swift_beginAccess();
        v34 = *v33;
        *v33 = v32;
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v40);
  return v14;
}

unint64_t lazy protocol witness table accessor for type WorkoutNotificationUnit.CodingKeys and conformance WorkoutNotificationUnit.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkoutNotificationUnit.CodingKeys and conformance WorkoutNotificationUnit.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutNotificationUnit.CodingKeys and conformance WorkoutNotificationUnit.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutNotificationUnit.CodingKeys and conformance WorkoutNotificationUnit.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutNotificationUnit.CodingKeys and conformance WorkoutNotificationUnit.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutNotificationUnit.CodingKeys and conformance WorkoutNotificationUnit.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutNotificationUnit.CodingKeys and conformance WorkoutNotificationUnit.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutNotificationUnit.CodingKeys and conformance WorkoutNotificationUnit.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutNotificationUnit.CodingKeys and conformance WorkoutNotificationUnit.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutNotificationUnit.CodingKeys and conformance WorkoutNotificationUnit.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutNotificationUnit.CodingKeys and conformance WorkoutNotificationUnit.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutNotificationUnit.CodingKeys and conformance WorkoutNotificationUnit.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutNotificationUnit.CodingKeys and conformance WorkoutNotificationUnit.CodingKeys);
  }

  return result;
}

uint64_t WorkoutNotificationUnit.encode(to:)(void *a1)
{
  v3 = v1;
  v30 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore0D16NotificationUnitC10CodingKeys33_F5D562FCEE5F3FA6C442E2BBAA76A548LLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore0D16NotificationUnitC10CodingKeys33_F5D562FCEE5F3FA6C442E2BBAA76A548LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type WorkoutNotificationUnit.CodingKeys and conformance WorkoutNotificationUnit.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  swift_beginAccess();
  v29 = *(v3 + 16);
  WorkoutNotificationUnit.NotificationUnitType.rawValue.getter();
  LOBYTE(v28) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    (*(v6 + 8))(v9, v5);
  }

  else
  {

    swift_beginAccess();
    v28 = *(v3 + 24);
    LOBYTE(v26) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    lazy protocol witness table accessor for type String? and conformance <A> A?(&lazy protocol witness table cache variable for type String? and conformance <A> A?, &_sSSSgMd, &_sSSSgMR);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    swift_beginAccess();
    v12 = *(v3 + 48);
    v26 = *(v3 + 40);
    v27 = v12;
    LOBYTE(v25) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
    lazy protocol witness table accessor for type String? and conformance <A> A?(&lazy protocol witness table cache variable for type Double? and conformance <A> A?, &_sSdSgMd, &_sSdSgMR);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    swift_beginAccess();
    v25 = *(v3 + 56);
    LOBYTE(v24[0]) = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    swift_beginAccess();
    v14 = *(v3 + 72);
    if (v14)
    {
      v15 = objc_opt_self();
      v24[0] = 0;
      v16 = v14;
      v17 = [v15 archivedDataWithRootObject:v16 requiringSecureCoding:1 error:v24];
      v18 = v24[0];
      if (v17)
      {
        v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;

        v24[0] = v19;
        v24[1] = v21;
        v23[15] = 4;
        lazy protocol witness table accessor for type Data and conformance Data();
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        (*(v6 + 8))(v9, v5);

        result = outlined consume of Data._Representation(v19, v21);
        goto LABEL_7;
      }

      v22 = v18;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    result = (*(v6 + 8))(v9, v5);
  }

LABEL_7:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t lazy protocol witness table accessor for type String? and conformance <A> A?(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void WorkoutNotificationUnit.hash(into:)()
{
  swift_beginAccess();
  v7 = *(v0 + 16);
  WorkoutNotificationUnit.NotificationUnitType.rawValue.getter();
  String.hash(into:)();

  swift_beginAccess();
  if (*(v0 + 32))
  {
    v1 = *(v0 + 24);
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  swift_beginAccess();
  if (*(v0 + 48) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v2 = *(v0 + 40);
    Hasher._combine(_:)(1u);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x20F2E8020](v3);
  }

  swift_beginAccess();
  if (*(v0 + 64))
  {
    v4 = *(v0 + 56);
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  swift_beginAccess();
  v5 = *(v0 + 72);
  if (v5)
  {
    Hasher._combine(_:)(1u);
    v6 = v5;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

uint64_t WorkoutNotificationUnit.deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 64);

  return v0;
}

uint64_t WorkoutNotificationUnit.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 64);

  return swift_deallocClassInstance();
}

Swift::Int WorkoutNotificationUnit.hashValue.getter()
{
  Hasher.init(_seed:)();
  WorkoutNotificationUnit.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Decodable.init(from:) in conformance WorkoutNotificationUnit@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for WorkoutNotificationUnit();
  v5 = swift_allocObject();
  result = WorkoutNotificationUnit.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutNotificationUnit()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  WorkoutNotificationUnit.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutNotificationUnit()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  WorkoutNotificationUnit.hash(into:)();
  return Hasher._finalize()();
}

void Apple_Workout_Core_NotificationUnitType.decoded.getter(_BYTE *a1@<X8>)
{
  if (*(v1 + 8))
  {
    *a1 = byte_20B43B112[*v1];
  }

  else
  {
    _StringGuts.grow(_:)(25);

    v2 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x20F2E6D80](v2);

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t specialized static WorkoutNotificationUnit.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  swift_beginAccess();
  v22 = *(a2 + 16);
  v5 = WorkoutNotificationUnit.NotificationUnitType.rawValue.getter();
  v7 = v6;
  if (v5 == WorkoutNotificationUnit.NotificationUnitType.rawValue.getter() && v7 == v8)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  swift_beginAccess();
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  swift_beginAccess();
  v12 = *(a2 + 32);
  if (!v11)
  {
    if (!v12)
    {
      goto LABEL_12;
    }

LABEL_14:
    v16 = 0;
    return v16 & 1;
  }

  if (!v12 || (v10 != *(a2 + 24) || v11 != v12) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_12:
  swift_beginAccess();
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  swift_beginAccess();
  v15 = *(a2 + 48);
  if (v14)
  {
    if (!*(a2 + 48))
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v13 != *(a2 + 40))
    {
      v15 = 1;
    }

    if (v15)
    {
      goto LABEL_14;
    }
  }

  swift_beginAccess();
  v18 = *(a1 + 72);
  swift_beginAccess();
  v19 = *(a2 + 72);
  v16 = (v18 | v19) == 0;
  if (v18 && v19)
  {
    _sSo17NSKeyedUnarchiverCMaTm_3(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType, 0x277D0A810);
    v20 = v19;
    v21 = v18;
    v16 = static NSObject.== infix(_:_:)();
  }

  return v16 & 1;
}

unint64_t lazy protocol witness table accessor for type WorkoutNotificationUnit.NotificationUnitType and conformance WorkoutNotificationUnit.NotificationUnitType()
{
  result = lazy protocol witness table cache variable for type WorkoutNotificationUnit.NotificationUnitType and conformance WorkoutNotificationUnit.NotificationUnitType;
  if (!lazy protocol witness table cache variable for type WorkoutNotificationUnit.NotificationUnitType and conformance WorkoutNotificationUnit.NotificationUnitType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutNotificationUnit.NotificationUnitType and conformance WorkoutNotificationUnit.NotificationUnitType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [WorkoutNotificationUnit.NotificationUnitType] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [WorkoutNotificationUnit.NotificationUnitType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [WorkoutNotificationUnit.NotificationUnitType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore0A16NotificationUnitC0cD4TypeOGMd, &_sSay11WorkoutCore0A16NotificationUnitC0cD4TypeOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [WorkoutNotificationUnit.NotificationUnitType] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkoutNotificationUnit and conformance WorkoutNotificationUnit()
{
  result = lazy protocol witness table cache variable for type WorkoutNotificationUnit and conformance WorkoutNotificationUnit;
  if (!lazy protocol witness table cache variable for type WorkoutNotificationUnit and conformance WorkoutNotificationUnit)
  {
    type metadata accessor for WorkoutNotificationUnit();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutNotificationUnit and conformance WorkoutNotificationUnit);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutNotificationUnit.NotificationUnitType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutNotificationUnit.NotificationUnitType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutNotificationUnit.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WorkoutNotificationUnit.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t specialized WorkoutNotificationUnit.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of WorkoutNotificationUnit.CodingKeys.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t outlined init with copy of Apple_Workout_Core_Activity?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_Core_Activity?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of Apple_Workout_Core_Activity(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Workout_Core_Activity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of Apple_Workout_Core_Activity(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_Activity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t NLActivityPickerSection.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 3)
    {
      return 0x646E756F706D6F63;
    }

    if (a1 == 2)
    {
      return 0x6F6B726F57646461;
    }
  }

  else
  {
    if (!a1)
    {
      return 0x6574636964657270;
    }

    if (a1 == 1)
    {
      return 0x646567616E616DLL;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NLActivityPickerSection()
{
  v1 = *v0;
  if (*v0 <= 1)
  {
    if (!v1)
    {
      return 0x6574636964657270;
    }

    if (v1 == 1)
    {
      return 0x646567616E616DLL;
    }

    goto LABEL_11;
  }

  if (v1 == 3)
  {
    return 0x646E756F706D6F63;
  }

  if (v1 != 2)
  {
LABEL_11:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  return 0x6F6B726F57646461;
}

uint64_t NLCompoundActivityPickerSection.description.getter(uint64_t a1)
{
  if (a1 == 1)
  {
    return 0x647261646E617473;
  }

  if (!a1)
  {
    return 0x646564697567;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NLCompoundActivityPickerSection()
{
  if (*v0 == 1)
  {
    return 0x647261646E617473;
  }

  if (!*v0)
  {
    return 0x646564697567;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t static WorkoutConfigurationValidator.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t WorkoutConfigurationValidator.__allocating_init()()
{
  v0 = swift_allocObject();
  WorkoutConfigurationValidator.init()();
  return v0;
}

uint64_t WorkoutConfigurationValidator.activityMoveMode.getter()
{
  if (*(v0 + 88))
  {

    return WorkoutConfigurationValidator._cachedActivityMoveMode.getter();
  }

  else
  {
    v2 = *(v0 + 80);
    if (one-time initialization token for validation != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static WOLog.validation);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_20AEA4000, v4, v5, "using override activity move mode for testing", v6, 2u);
      MEMORY[0x20F2E9420](v6, -1, -1);
    }

    return v2;
  }
}

uint64_t WorkoutConfigurationValidator.isWheelchairUser.getter()
{
  v22[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 89);
  if (v1 == 2)
  {
    v2 = *(v0 + 32);
    os_unfair_lock_lock(v2 + 4);
    if (*(v0 + 64))
    {
      v3 = WorkoutConfigurationValidator.healthStore.getter();
      v22[0] = 0;
      v4 = [v3 wheelchairUseWithError_];

      if (!v4)
      {
        v10 = v22[0];
        v11 = _convertNSErrorToError(_:)();

        swift_willThrow();
        if (one-time initialization token for validation != -1)
        {
          swift_once();
        }

        v12 = type metadata accessor for Logger();
        __swift_project_value_buffer(v12, static WOLog.validation);
        v13 = v11;
        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          v22[0] = v17;
          *v16 = 136315138;
          v18 = v11;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
          v19 = String.init<A>(describing:)();
          v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v22);

          *(v16 + 4) = v21;
          _os_log_impl(&dword_20AEA4000, v14, v15, "failed to determine wheelchair usage due to %s", v16, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm_5(v17);
          MEMORY[0x20F2E9420](v17, -1, -1);
          MEMORY[0x20F2E9420](v16, -1, -1);
        }

        else
        {
        }

        LOBYTE(v1) = 0;
        goto LABEL_9;
      }

      v5 = v22[0];
      v6 = [v4 wheelchairUse];

      *(v0 + 56) = v6;
      *(v0 + 64) = 0;
      v7 = v6 == 2;
    }

    else
    {
      v7 = *(v0 + 56) == 2;
    }

    LOBYTE(v1) = v7;
LABEL_9:
    os_unfair_lock_unlock(v2 + 4);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v1 & 1;
}

uint64_t WorkoutConfigurationValidator._cachedActivityMoveMode.getter()
{
  if (*(v0 + 48) != 1)
  {
    return *(v0 + 40);
  }

  v1 = WorkoutConfigurationValidator.healthStore.getter();
  v2 = FIActivityMoveModeWithHealthStore();

  result = v2;
  *(v0 + 40) = v2;
  *(v0 + 48) = 0;
  return result;
}

id WorkoutConfigurationValidator.healthStore.getter()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 72);
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if (one-time initialization token for healthStore != -1)
    {
      swift_once();
    }

    v3 = static WorkoutCoreInjector.healthStore;
    v4 = *(v0 + 72);
    *(v0 + 72) = static WorkoutCoreInjector.healthStore;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t WorkoutConfigurationValidator.init()()
{
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 24) = v1;
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v0 + 32) = v2;
  *(v0 + 40) = 0;
  *(v0 + 48) = 1;
  *(v0 + 56) = 0;
  *(v0 + 64) = 1;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 513;
  return v0;
}

uint64_t WorkoutConfigurationValidator.supportsActivityType(_:)(uint64_t a1)
{
  if ((a1 & 0xFFFFFFFFFFFFFFFELL) == 0x46)
  {
    if (WorkoutConfigurationValidator.isWheelchairUser.getter())
    {
      return 1;
    }

    else
    {
LABEL_8:
      if (one-time initialization token for validation != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, static WOLog.validation);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v28 = v11;
        *v10 = 136315138;
        v12 = _HKWorkoutActivityNameForActivityType();
        if (v12)
        {
          v13 = v12;
          v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v16 = v15;

          v17._object = 0x800000020B456540;
          v17._countAndFlagsBits = 0xD000000000000015;
          if (String.hasPrefix(_:)(v17))
          {
            v18 = String.count.getter();
            v19 = specialized Collection.dropFirst(_:)(v18, v14, v16);
            v21 = v20;
            v23 = v22;
            v25 = v24;

            v14 = MEMORY[0x20F2E6D00](v19, v21, v23, v25);
            v16 = v26;
          }
        }

        else
        {
          v16 = 0x800000020B456520;
          v14 = 0xD000000000000010;
        }

        v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v28);

        *(v10 + 4) = v27;
        _os_log_impl(&dword_20AEA4000, v8, v9, "%s is not supported", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm_5(v11);
        MEMORY[0x20F2E9420](v11, -1, -1);
        MEMORY[0x20F2E9420](v10, -1, -1);
      }

      return 0;
    }
  }

  else
  {
    v3 = static WorkoutPlan.unsupportedActivityTypes.getter();
    v4 = *(v3 + 16);
    v5 = 32;
    while (v4)
    {
      v6 = *(v3 + v5);
      v5 += 8;
      --v4;
      if (v6 == a1)
      {

        goto LABEL_8;
      }
    }

    return 1;
  }
}

uint64_t WorkoutConfigurationValidator.supportsGoal(_:activityType:configurationType:)(uint64_t a1, unint64_t a2, unsigned __int8 *a3)
{
  LODWORD(v6) = *a3;
  v7 = *(v3 + 24);
  os_unfair_lock_lock(v7 + 4);
  v8 = [*(v3 + 16) objectForKey_];
  if (!v8)
  {
    result = [objc_allocWithZone(MEMORY[0x277D0A828]) initWithWorkoutActivityType:a2 activityMoveMode:WorkoutConfigurationValidator.activityMoveMode.getter()];
    if (!result)
    {
      goto LABEL_61;
    }

    v8 = result;
    [*(v3 + 16) setObject:result forKey:a2];
  }

  os_unfair_lock_unlock(v7 + 4);
  if (v6 == 1)
  {
    specialized static IntervalWorkout.supportedGoalTypes(for:)(v8);
    v11 = *(v10 + 16);
    v12 = 32;
    while (v11)
    {
      v13 = *(v10 + v12);
      v12 += 8;
      --v11;
      if (v13 == a1)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_30;
  }

  result = [objc_opt_self() fiui:v8 supportedGoalTypesForWorkoutSettingsManager:?];
  if (result)
  {
    v14 = result;
    v48 = a2;
    v49 = a1;
    type metadata accessor for NSNumber();
    a2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (a2 >> 62)
    {
      v15 = __CocoaSet.count.getter();
    }

    else
    {
      v15 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v50 = v6;
    v51 = v8;
    if (v15)
    {
      v16 = 0;
      v6 = a2 & 0xC000000000000001;
      v17 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v6)
        {
          v18 = MEMORY[0x20F2E7A20](v16, a2);
        }

        else
        {
          if (v16 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_57;
          }

          v18 = *(a2 + 8 * v16 + 32);
        }

        v8 = v18;
        v19 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        v20 = [v18 unsignedIntegerValue];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
        }

        a1 = *(v17 + 2);
        v21 = *(v17 + 3);
        v8 = (a1 + 1);
        if (a1 >= v21 >> 1)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), a1 + 1, 1, v17);
        }

        *(v17 + 2) = v8;
        *&v17[8 * a1 + 32] = v20;
        ++v16;
        if (v19 == v15)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      swift_once();
LABEL_31:
      v25 = type metadata accessor for Logger();
      __swift_project_value_buffer(v25, static WOLog.validation);
      v26 = a2;
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v27, v28))
      {
LABEL_55:

        return 0;
      }

      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v52 = v30;
      *v29 = 136315650;
      if (a1 > 1)
      {
        if (a1 == 2)
        {
          v31 = 0xE400000000000000;
          v32 = 1701669204;
          goto LABEL_42;
        }

        if (a1 == 3)
        {
          v31 = 0xE600000000000000;
          v32 = 0x796772656E45;
          goto LABEL_42;
        }
      }

      else
      {
        if (!a1)
        {
          v31 = 0xE400000000000000;
          v32 = 1852141647;
          goto LABEL_42;
        }

        if (a1 == 1)
        {
          v31 = 0xE800000000000000;
          v32 = 0x65636E6174736944;
LABEL_42:
          v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v31, &v52);

          *(v29 + 4) = v33;
          *(v29 + 12) = 2080;
          v34 = [v26 description];
          v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v37 = v36;

          v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v52);

          v39 = 0xE400000000000000;
          v40 = 1818324839;
          *(v29 + 14) = v38;
          *(v29 + 22) = 2080;
          v41 = 0xE400000000000000;
          v42 = 1701011826;
          v43 = 0xE500000000000000;
          v44 = 0x7265636170;
          if (v6 != 3)
          {
            v44 = 0x6F707369746C756DLL;
            v43 = 0xEA00000000007472;
          }

          if (v6 != 2)
          {
            v42 = v44;
            v41 = v43;
          }

          if (v6)
          {
            v40 = 0x6C61767265746E69;
            v39 = 0xE800000000000000;
          }

          if (v6 <= 1)
          {
            v45 = v40;
          }

          else
          {
            v45 = v42;
          }

          if (v6 <= 1)
          {
            v46 = v39;
          }

          else
          {
            v46 = v41;
          }

          v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, &v52);

          *(v29 + 24) = v47;
          _os_log_impl(&dword_20AEA4000, v27, v28, "%s goal is not supported for %s with configuration %s", v29, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x20F2E9420](v30, -1, -1);
          MEMORY[0x20F2E9420](v29, -1, -1);
          goto LABEL_55;
        }
      }

      v31 = 0xE700000000000000;
      v32 = 0x6E776F6E6B6E55;
      goto LABEL_42;
    }

    v17 = MEMORY[0x277D84F90];
LABEL_26:

    v22 = *(v17 + 2);
    v23 = 32;
    v8 = v51;
    LODWORD(v6) = v50;
    a2 = v48;
    a1 = v49;
    while (v22)
    {
      v24 = *&v17[v23];
      v23 += 8;
      --v22;
      if (v24 == v49)
      {
LABEL_29:

        return 1;
      }
    }

LABEL_30:

    if (one-time initialization token for validation == -1)
    {
      goto LABEL_31;
    }

    goto LABEL_58;
  }

  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

BOOL WorkoutConfigurationValidator.supportsTargetZone(_:activityType:configurationContext:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = *a3;
  v47[1] = 0x3030202010101uLL >> (8 * *(a1 + 16));
  v47[0] = v5;
  v6 = WorkoutConfigurationValidator.activityMoveMode.getter();
  v44 = a2;
  v45 = TargetZone.PrimaryType.subTypes(activityType:configurationContext:activityMoveMode:)(a2, v47, v6);
  v7 = *(a1 + 16);
  v8 = *(v45 + 2);
  v9 = v45 + 32;
  while (1)
  {
    v11 = v8;
    if (v8-- == 0)
    {
      break;
    }

    v13 = *v9;
    if (v13 > 3)
    {
      if (*v9 > 5u)
      {
        if (v13 == 6)
        {
          v17 = 0x5F65676172657661;
          v18 = 0xED00007265776F70;
          if (v7 > 3)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v18 = 0xE400000000000000;
          v17 = 1701736302;
          if (v7 > 3)
          {
            goto LABEL_30;
          }
        }
      }

      else
      {
        if (v13 == 4)
        {
          v17 = 0x5F65676172657661;
        }

        else
        {
          v17 = 0xD000000000000013;
        }

        if (v13 == 4)
        {
          v18 = 0xEF65636E65646163;
        }

        else
        {
          v18 = 0x800000020B4544E0;
        }

        if (v7 > 3)
        {
          goto LABEL_30;
        }
      }
    }

    else
    {
      v14 = 0xD000000000000015;
      if (v13 == 2)
      {
        v14 = 0xD000000000000012;
        v15 = 0x800000020B454490;
      }

      else
      {
        v15 = 0x800000020B4544B0;
      }

      v16 = 0x5F676E696C6C6F72;
      if (*v9)
      {
        v16 = 0x5F65676172657661;
      }

      if (*v9 <= 1u)
      {
        v17 = v16;
      }

      else
      {
        v17 = v14;
      }

      if (*v9 <= 1u)
      {
        v18 = 0xEC00000065636170;
      }

      else
      {
        v18 = v15;
      }

      if (v7 > 3)
      {
LABEL_30:
        v21 = 0x5F65676172657661;
        v22 = 1701736302;
        if (v7 == 6)
        {
          v22 = 0x5F65676172657661;
        }

        v23 = 0xED00007265776F70;
        if (v7 != 6)
        {
          v23 = 0xE400000000000000;
        }

        if (v7 != 4)
        {
          v21 = 0xD000000000000013;
        }

        v24 = 0xEF65636E65646163;
        if (v7 != 4)
        {
          v24 = 0x800000020B4544E0;
        }

        if (v7 <= 5)
        {
          v19 = v21;
        }

        else
        {
          v19 = v22;
        }

        if (v7 <= 5)
        {
          v20 = v24;
        }

        else
        {
          v20 = v23;
        }

LABEL_44:
        if (v17 != v19)
        {
          goto LABEL_2;
        }

        goto LABEL_45;
      }
    }

    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v25 = 0xD000000000000012;
      }

      else
      {
        v25 = 0xD000000000000015;
      }

      if (v7 == 2)
      {
        v20 = 0x800000020B454490;
      }

      else
      {
        v20 = 0x800000020B4544B0;
      }

      if (v17 != v25)
      {
        goto LABEL_2;
      }
    }

    else
    {
      v19 = 0x5F676E696C6C6F72;
      v20 = 0xEC00000065636170;
      if (!v7)
      {
        goto LABEL_44;
      }

      if (v17 != 0x5F65676172657661)
      {
        goto LABEL_2;
      }
    }

LABEL_45:
    if (v18 == v20)
    {

LABEL_65:

      return v11 != 0;
    }

LABEL_2:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v9;
    if (v10)
    {
      goto LABEL_65;
    }
  }

  if (one-time initialization token for validation != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static WOLog.validation);

  v27 = v44;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v46 = v31;
    *v30 = 136315650;
    v32 = TargetZone.description.getter();
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v46);

    *(v30 + 4) = v34;
    *(v30 + 12) = 2080;
    v35 = [v27 description];
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v46);

    *(v30 + 14) = v39;
    *(v30 + 22) = 2080;
    v40 = AlertConfigurationContext.description.getter();
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, &v46);

    *(v30 + 24) = v42;
    _os_log_impl(&dword_20AEA4000, v28, v29, "%s target zone is not supported for %s in context %s", v30, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v31, -1, -1);
    MEMORY[0x20F2E9420](v30, -1, -1);
  }

  return v11 != 0;
}

uint64_t WorkoutConfigurationValidator.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t WorkoutConfigurationValidator.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t specialized WorkoutConfigurationValidator.supportsDistanceWithTimeGoal(activityType:configurationType:)(void *a1, _BYTE *a2)
{
  if (*a2 != 1)
  {
    goto LABEL_9;
  }

  if ([a1 effectiveTypeIdentifier] != 46 || objc_msgSend(a1, sel_swimmingLocationType) != 1)
  {
    if ([a1 effectiveTypeIdentifier] == 46 && objc_msgSend(a1, sel_swimmingLocationType) == 2)
    {
      v3 = type metadata accessor for WorkoutKitFeatures();
      v9 = v3;
      v10 = lazy protocol witness table accessor for type WorkoutKitFeatures and conformance WorkoutKitFeatures();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
      v5 = MEMORY[0x277CE3FD0];
      goto LABEL_8;
    }

LABEL_9:
    v6 = 0;
    return v6 & 1;
  }

  v3 = type metadata accessor for WorkoutKitFeatures();
  v9 = v3;
  v10 = lazy protocol witness table accessor for type WorkoutKitFeatures and conformance WorkoutKitFeatures();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
  v5 = MEMORY[0x277CE3FC0];
LABEL_8:
  (*(*(v3 - 8) + 104))(boxed_opaque_existential_1, *v5, v3);
  v6 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0Tm_5(v8);
  return v6 & 1;
}

uint64_t HeartRateConfigurationRequest.fetchActiveHeartRateConfiguration(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HeartRateConfiguration();
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;

  static HeartRateConfiguration.fetchConfigurationType(completion:)(_s11WorkoutCore29HeartRateConfigurationRequestC011fetchActivecdE010completionyyAA0cdE0CSgc_tFyAG0E4TypeOcfU_TA_1, v5);
}

uint64_t closure #1 in HeartRateConfigurationRequest.fetchActiveHeartRateConfiguration(completion:)(_BYTE *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (*a1 == 1)
  {
    return HeartRateConfigurationRequest.fetchManualHeartRateConfiguration(completion:)(a3, a4);
  }

  else
  {
    return HeartRateConfigurationRequest.fetchAutomaticHeartRateConfiguration(completion:)(a3, a4);
  }
}

uint64_t HeartRateConfigurationRequest.fetchAutomaticHeartRateConfiguration(completion:)(uint64_t (*a1)(void), uint64_t a2)
{
  v5 = *v2;
  if (one-time initialization token for zones != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static WOLog.zones);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v9 = 136315394;
    v11 = _typeName(_:qualified:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v26);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000031, 0x800000020B45FBA0, &v26);
    _os_log_impl(&dword_20AEA4000, v7, v8, "%s %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v10, -1, -1);
    MEMORY[0x20F2E9420](v9, -1, -1);
  }

  v14 = specialized static HeartRateConfiguration.ageBasedMaximumHeartRate()();
  if (v14)
  {
    v15 = v14;
    type metadata accessor for HeartRateConfiguration();
    v16 = swift_allocObject();
    v16[2] = v15;
    v16[3] = a1;
    v16[4] = a2;
    v17 = v15;

    static HeartRateConfiguration.restingHeartRate(completion:)(partial apply for closure #1 in HeartRateConfigurationRequest.fetchAutomaticHeartRateConfiguration(completion:), v16);
  }

  else
  {
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v26 = v22;
      *v21 = 136315138;
      v23 = _typeName(_:qualified:)();
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v26);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_20AEA4000, v19, v20, "%s HeartRateConfiguration.ageBasedMaximumHeartRate() is nil, returning nil HeartRateConfiguration", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x20F2E9420](v22, -1, -1);
      MEMORY[0x20F2E9420](v21, -1, -1);
    }

    return a1(0);
  }
}

uint64_t closure #1 in HeartRateConfigurationRequest.fetchAutomaticHeartRateConfiguration(completion:)(void *a1, char a2, void *a3, void (*a4)(uint64_t))
{
  v8 = specialized static HeartRateConfiguration.automaticZones(maximumHeartRate:restingHeartRate:)(a3, a1);
  type metadata accessor for HeartRateConfiguration();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = a3;
  *(v9 + 32) = a1;
  *(v9 + 40) = v8;
  *(v9 + 49) = a2 ^ 1;
  if (v8 >> 62)
  {
    v15 = v9;
    v10 = __CocoaSet.count.getter();
    v9 = v15;
  }

  else
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v9 + 48) = v10 != 0;
  v11 = v9;
  v12 = a1;
  v13 = a3;
  a4(v11);
}

uint64_t HeartRateConfigurationRequest.fetchManualHeartRateConfiguration(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (one-time initialization token for zones != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static WOLog.zones);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    v11 = _typeName(_:qualified:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_20AEA4000, v7, v8, "%s fetchManualHeartRateConfiguration", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x20F2E9420](v10, -1, -1);
    MEMORY[0x20F2E9420](v9, -1, -1);
  }

  type metadata accessor for HeartRateConfiguration();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;

  static HeartRateConfiguration.manualZones(completion:)(partial apply for closure #1 in HeartRateConfigurationRequest.fetchManualHeartRateConfiguration(completion:), v14);
}

uint64_t closure #1 in HeartRateConfigurationRequest.fetchManualHeartRateConfiguration(completion:)(unint64_t a1, void (*a2)(uint64_t))
{
  type metadata accessor for HeartRateConfiguration();
  v4 = swift_allocObject();
  *(v4 + 16) = 1;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 40) = a1;
  *(v4 + 49) = 0;
  if (a1 >> 62)
  {
    v8 = v4;
    v5 = __CocoaSet.count.getter();
    v4 = v8;
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v4 + 48) = v5 != 0;
  v6 = v4;

  a2(v6);
}

void *ActivityRingProgressMonitor.lastActivitySummary.getter()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore27ActivityRingProgressMonitor_lastActivitySummary;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void ActivityRingProgressMonitor.lastActivitySummary.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore27ActivityRingProgressMonitor_lastActivitySummary;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id ActivityRingProgressMonitor.__allocating_init(healthStore:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = specialized ActivityRingProgressMonitor.init(healthStore:)(a1);

  return v4;
}

id ActivityRingProgressMonitor.init(healthStore:)(void *a1)
{
  v2 = specialized ActivityRingProgressMonitor.init(healthStore:)(a1);

  return v2;
}

uint64_t closure #1 in ActivityRingProgressMonitor.init(healthStore:)()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC11WorkoutCore27ActivityRingProgressMonitor_pausedRingsObserver);
  ActivityPausedRingsObserver.beginObserving()();
  v2 = *(v0 + 8);

  return v2();
}

id ActivityRingProgressMonitor.addProgressObserver(_:)(uint64_t a1)
{
  swift_getObjectType();

  return specialized ActivityRingProgressMonitor.addProgressObserver(_:)(a1, v1);
}

void ActivityRingProgressMonitor.startListening()()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore27ActivityRingProgressMonitor_currentActivitySummaryQuery;
  if (!*&v0[OBJC_IVAR____TtC11WorkoutCore27ActivityRingProgressMonitor_currentActivitySummaryQuery])
  {
    if (one-time initialization token for activityRings != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static WOLog.activityRings);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_20AEA4000, v3, v4, "Start observing activity rings updates", v5, 2u);
      MEMORY[0x20F2E9420](v5, -1, -1);
    }

    v6 = swift_allocObject();
    *(v6 + 16) = v0;
    v7 = objc_allocWithZone(MEMORY[0x277CCDD58]);
    v15[4] = partial apply for closure #1 in ActivityRingProgressMonitor.startListening();
    v15[5] = v6;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 1107296256;
    v15[2] = thunk for @escaping @callee_guaranteed (@guaranteed _HKCurrentActivitySummaryQuery, @guaranteed HKActivitySummary?, @guaranteed Error?) -> ();
    v15[3] = &block_descriptor_38;
    v8 = _Block_copy(v15);
    v9 = v0;
    v10 = [v7 initWithUpdateHandler_];
    _Block_release(v8);

    v11 = *&v0[v1];
    *&v0[v1] = v10;
    v12 = v10;

    if (v12)
    {
      [*&v9[OBJC_IVAR____TtC11WorkoutCore27ActivityRingProgressMonitor_healthStore] executeQuery_];
    }

    else
    {
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_20AEA4000, v12, v13, "currentActivitySummaryQuery unexpectedly nil after attempted creation", v14, 2u);
        MEMORY[0x20F2E9420](v14, -1, -1);
      }
    }
  }
}

void ActivityRingProgressMonitor.removeProgressObserver(_:)(uint64_t a1)
{
  swift_getObjectType();

  specialized ActivityRingProgressMonitor.removeProgressObserver(_:)(a1, v1);
}

void ActivityRingProgressMonitor.stopListening()()
{
  v1 = v0;
  if (one-time initialization token for activityRings != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.activityRings);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_20AEA4000, v3, v4, "Stop observing activity rings updates", v5, 2u);
    MEMORY[0x20F2E9420](v5, -1, -1);
  }

  v6 = OBJC_IVAR____TtC11WorkoutCore27ActivityRingProgressMonitor_currentActivitySummaryQuery;
  if (*(v1 + OBJC_IVAR____TtC11WorkoutCore27ActivityRingProgressMonitor_currentActivitySummaryQuery))
  {
    [*(v1 + OBJC_IVAR____TtC11WorkoutCore27ActivityRingProgressMonitor_healthStore) stopQuery_];
    v7 = *(v1 + v6);
  }

  else
  {
    v7 = 0;
  }

  *(v1 + v6) = 0;

  v8 = OBJC_IVAR____TtC11WorkoutCore27ActivityRingProgressMonitor_lastActivitySummary;
  swift_beginAccess();
  v9 = *(v1 + v8);
  *(v1 + v8) = 0;
}

void closure #1 in ActivityRingProgressMonitor.startListening()(void *a1, void *a2, void *a3, uint64_t a4)
{
  v67[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v68 = v67 - v9;
  if (one-time initialization token for activityRings != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v11 = __swift_project_value_buffer(v10, static WOLog.activityRings);
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  v69 = v13;
  v17 = os_log_type_enabled(v15, v16);
  v70 = a2;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v67[1] = v11;
    v20 = v19;
    v21 = swift_slowAlloc();
    v71 = a3;
    v72 = v21;
    *v18 = 136315650;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, _ss5Error_pSgMR);
    v22 = Optional.description.getter();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v72);

    *(v18 + 4) = v24;
    *(v18 + 12) = 2112;
    *(v18 + 14) = v14;
    *v20 = v14;
    *(v18 + 22) = 2080;
    v71 = a2;
    v25 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17HKActivitySummaryCSgMd, &_sSo17HKActivitySummaryCSgMR);
    v26 = Optional.description.getter();
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v72);

    *(v18 + 24) = v28;
    _os_log_impl(&dword_20AEA4000, v15, v16, "_HKCurrentActivitySummaryQuery returned error=%s\nquery=%@\ncurrentActivitySummary=%s", v18, 0x20u);
    _sSo8NSObjectCSgWOhTm_6(v20, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v20, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v21, -1, -1);
    MEMORY[0x20F2E9420](v18, -1, -1);
  }

  v29 = v69;
  if (a3)
  {
    v30 = a3;
    v31 = v14;
    v32 = v29;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v72 = v37;
      *v35 = 138412802;
      v38 = a3;
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 4) = v39;
      *(v35 + 12) = 2112;
      *(v35 + 14) = v31;
      *v36 = v39;
      v36[1] = v31;
      *(v35 + 22) = 2080;
      v71 = v70;
      v40 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17HKActivitySummaryCSgMd, &_sSo17HKActivitySummaryCSgMR);
      v41 = Optional.description.getter();
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, &v72);

      *(v35 + 24) = v43;
      _os_log_impl(&dword_20AEA4000, v33, v34, "_HKCurrentActivitySummaryQuery returned error=%@\nquery=%@\ncurrentActivitySummary=%s", v35, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      v44 = v36;
      v29 = v69;
      MEMORY[0x20F2E9420](v44, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x20F2E9420](v37, -1, -1);
      MEMORY[0x20F2E9420](v35, -1, -1);
    }

    v45 = [objc_allocWithZone(type metadata accessor for AutoBugCaptureReporter()) init];
    specialized AutoBugCaptureReporter.reportSnapshot(type:subtype:context:thresholdValues:)(0x7974697669746341, 0xEE0073676E695220, 0xD00000000000001CLL, 0x800000020B45FD90, 0, 0, 0, 0);
  }

  v46 = v70;
  if (v70)
  {
    v47 = v29;
    if (([v47 _isDataLoading] & 1) == 0)
    {
      v57 = type metadata accessor for TaskPriority();
      v58 = v68;
      (*(*(v57 - 8) + 56))(v68, 1, 1, v57);
      v59 = swift_allocObject();
      swift_unknownObjectWeakInit();
      type metadata accessor for MainActor();
      v60 = v47;

      v61 = static MainActor.shared.getter();
      v62 = swift_allocObject();
      v63 = MEMORY[0x277D85700];
      v62[2] = v61;
      v62[3] = v63;
      v62[4] = v59;
      v62[5] = v60;

      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v58, &async function pointer to partial apply for closure #1 in closure #1 in ActivityRingProgressMonitor.startListening(), v62);

      goto LABEL_20;
    }
  }

  v48 = v29;
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v71 = v46;
    v72 = v52;
    *v51 = 136315394;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17HKActivitySummaryCSgMd, &_sSo17HKActivitySummaryCSgMR);
    v53 = Optional.description.getter();
    v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, &v72);

    *(v51 + 4) = v55;
    *(v51 + 12) = 2080;
    if (v46)
    {
      v56 = [v48 _isDataLoading];
    }

    else
    {
      v56 = 2;
    }

    LOBYTE(v71) = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v64 = Optional.description.getter();
    v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, &v72);

    *(v51 + 14) = v66;
    _os_log_impl(&dword_20AEA4000, v49, v50, "_HKCurrentActivitySummaryQuery returned unusable currentActivitySummary=%s, currentActivitySummary.dataLoading=%s", v51, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v52, -1, -1);
    MEMORY[0x20F2E9420](v51, -1, -1);
  }

  else
  {
  }

  v60 = [objc_allocWithZone(type metadata accessor for AutoBugCaptureReporter()) init];
  specialized AutoBugCaptureReporter.reportSnapshot(type:subtype:context:thresholdValues:)(0x7974697669746341, 0xEE0073676E695220, 0xD00000000000001FLL, 0x800000020B45FD70, 0, 0, 0, 0);
LABEL_20:
}

uint64_t closure #1 in closure #1 in ActivityRingProgressMonitor.startListening()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  type metadata accessor for MainActor();
  v5[8] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in ActivityRingProgressMonitor.startListening(), v7, v6);
}

uint64_t closure #1 in closure #1 in ActivityRingProgressMonitor.startListening()()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    ActivityRingProgressMonitor.handleUpdateSummary(_:)(*(v0 + 56));
  }

  **(v0 + 40) = Strong == 0;
  v4 = *(v0 + 8);

  return v4();
}

id ActivityRingProgressMonitor.handleUpdateSummary(_:)(void *a1)
{
  v2 = v1;
  v3 = ActivityRingProgressMonitor.didCompleteMoveGoal(with:)(a1);
  v4 = a1;
  v5 = &_s11WorkoutCore08IntervalA7KeyPathVSgMd;
  v6 = &selRef_adjustedStatisticsForStatistics_;
  if ((v3 & 1) == 0)
  {
    goto LABEL_20;
  }

  if (one-time initialization token for activityRings != -1)
  {
    goto LABEL_17;
  }

LABEL_3:
  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static WOLog.activityRings);
  v8 = v2;
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v61[0] = v14;
    *v12 = 136315394;
    v15 = OBJC_IVAR____TtC11WorkoutCore27ActivityRingProgressMonitor_lastActivitySummary;
    swift_beginAccess();
    v60 = *&v8[v15];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17HKActivitySummaryCSgMd, &_sSo17HKActivitySummaryCSgMR);
    v16 = Optional.description.getter();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v61);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2112;
    *(v12 + 14) = v9;
    *v13 = v9;
    v19 = v9;
    _os_log_impl(&dword_20AEA4000, v10, v11, "Completed move goal previous summary: %s;\ncurrent summary: %@", v12, 0x16u);
    _sSo8NSObjectCSgWOhTm_6(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v20 = v13;
    v5 = &_s11WorkoutCore08IntervalA7KeyPathVSgMd;
    MEMORY[0x20F2E9420](v20, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v14);
    v21 = v14;
    v6 = &selRef_adjustedStatisticsForStatistics_;
    MEMORY[0x20F2E9420](v21, -1, -1);
    MEMORY[0x20F2E9420](v12, -1, -1);
  }

  v22 = [*&v8[v5[179]] v6[9]];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo37NLWorkoutActivityRingProgressObserver_pMd, &_sSo37NLWorkoutActivityRingProgressObserver_pMR);
  v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v23 >> 62))
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v24)
    {
      goto LABEL_19;
    }

    goto LABEL_7;
  }

  v24 = __CocoaSet.count.getter();
  if (v24)
  {
LABEL_7:
    v25 = 0;
    v6 = (v23 & 0xFFFFFFFFFFFFFF8);
    v5 = &_OBJC_LABEL_PROTOCOL___HRCBluetoothLESourceObserverDelegate;
    do
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x20F2E7A20](v25, v23);
        v27 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          goto LABEL_15;
        }
      }

      else
      {
        if (v25 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v26 = *(v23 + 8 * v25 + 32);
        swift_unknownObjectRetain();
        v27 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
LABEL_15:
          __break(1u);
LABEL_16:
          __break(1u);
LABEL_17:
          swift_once();
          goto LABEL_3;
        }
      }

      [v26 completedActivityRing:0 activitySummary:v9];
      swift_unknownObjectRelease();
      ++v25;
    }

    while (v27 != v24);
  }

LABEL_19:

  v4 = a1;
  v6 = &selRef_adjustedStatisticsForStatistics_;
  v5 = &_s11WorkoutCore08IntervalA7KeyPathVSgMd;
LABEL_20:
  if (!ActivityRingProgressMonitor.didCompleteExerciseGoal(with:)(v4))
  {
    goto LABEL_39;
  }

  if (one-time initialization token for activityRings != -1)
  {
    goto LABEL_36;
  }

LABEL_22:
  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, static WOLog.activityRings);
  v29 = v2;
  v30 = a1;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v61[0] = v35;
    *v33 = 136315394;
    v36 = OBJC_IVAR____TtC11WorkoutCore27ActivityRingProgressMonitor_lastActivitySummary;
    swift_beginAccess();
    v59 = *&v29[v36];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17HKActivitySummaryCSgMd, &_sSo17HKActivitySummaryCSgMR);
    v37 = Optional.description.getter();
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, v61);

    *(v33 + 4) = v39;
    *(v33 + 12) = 2112;
    *(v33 + 14) = v30;
    *v34 = v30;
    v40 = v30;
    _os_log_impl(&dword_20AEA4000, v31, v32, "Completed exercise goal with previous summary: %s;\nCurrent summary: %@", v33, 0x16u);
    _sSo8NSObjectCSgWOhTm_6(v34, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v41 = v34;
    v5 = &_s11WorkoutCore08IntervalA7KeyPathVSgMd;
    MEMORY[0x20F2E9420](v41, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v35);
    v42 = v35;
    v6 = &selRef_adjustedStatisticsForStatistics_;
    MEMORY[0x20F2E9420](v42, -1, -1);
    MEMORY[0x20F2E9420](v33, -1, -1);
  }

  v43 = [*&v29[v5[179]] v6[9]];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo37NLWorkoutActivityRingProgressObserver_pMd, &_sSo37NLWorkoutActivityRingProgressObserver_pMR);
  v44 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v44 >> 62))
  {
    v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v45)
    {
      goto LABEL_38;
    }

    goto LABEL_26;
  }

  v45 = __CocoaSet.count.getter();
  if (v45)
  {
LABEL_26:
    v46 = 0;
    v6 = (v44 & 0xFFFFFFFFFFFFFF8);
    v5 = &_OBJC_LABEL_PROTOCOL___HRCBluetoothLESourceObserverDelegate;
    do
    {
      if ((v44 & 0xC000000000000001) != 0)
      {
        v47 = MEMORY[0x20F2E7A20](v46, v44);
        v48 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (v46 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v47 = *(v44 + 8 * v46 + 32);
        swift_unknownObjectRetain();
        v48 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          swift_once();
          goto LABEL_22;
        }
      }

      [v47 completedActivityRing:1 activitySummary:v30];
      swift_unknownObjectRelease();
      ++v46;
    }

    while (v48 != v45);
  }

LABEL_38:

  v6 = &selRef_adjustedStatisticsForStatistics_;
  v5 = &_s11WorkoutCore08IntervalA7KeyPathVSgMd;
LABEL_39:
  v49 = [*&v2[v5[179]] v6[9]];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo37NLWorkoutActivityRingProgressObserver_pMd, &_sSo37NLWorkoutActivityRingProgressObserver_pMR);
  v50 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v50 >> 62)
  {
    goto LABEL_51;
  }

  for (i = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v52 = 0;
    while (1)
    {
      if ((v50 & 0xC000000000000001) != 0)
      {
        v53 = MEMORY[0x20F2E7A20](v52, v50);
      }

      else
      {
        if (v52 >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_50;
        }

        v53 = *(v50 + 8 * v52 + 32);
        swift_unknownObjectRetain();
      }

      v54 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        break;
      }

      [v53 activityRingsUpdatedWithSummary_];
      swift_unknownObjectRelease();
      ++v52;
      if (v54 == i)
      {
        goto LABEL_52;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    ;
  }

LABEL_52:

  v55 = OBJC_IVAR____TtC11WorkoutCore27ActivityRingProgressMonitor_lastActivitySummary;
  swift_beginAccess();
  v56 = *&v2[v55];
  *&v2[v55] = a1;

  return a1;
}

uint64_t ActivityRingProgressMonitor.didCompleteMoveGoal(with:)(void *a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore27ActivityRingProgressMonitor_lastActivitySummary;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [a1 activityMoveMode];
  if (v6 == 1)
  {
    v7 = &selRef_activeEnergyBurnedGoal;
    v8 = &selRef_kilocalorieUnit;
    v9 = &selRef_activeEnergyBurned;
  }

  else
  {
    if (v6 != 2)
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v7 = &selRef_appleMoveTimeGoal;
    v8 = &selRef_minuteUnit;
    v9 = &selRef_appleMoveTime;
  }

  v11 = [v5 *v9];
  v12 = objc_opt_self();
  v13 = [v12 *v8];
  [v11 doubleValueForUnit_];
  v15 = v14;

  v16 = [v5 *v7];
  v17 = [v12 *v8];
  [v16 doubleValueForUnit_];
  v19 = v18;

  v20 = [a1 *v9];
  v21 = [v12 *v8];
  [v20 doubleValueForUnit_];
  v23 = v22;

  v24 = [a1 *v7];
  v25 = [v12 *v8];
  [v24 doubleValueForUnit_];
  v27 = v26;

  v28 = v19 > 0.0;
  if (v27 <= 0.0)
  {
    v28 = 0;
  }

  if (v27 > v23)
  {
    v28 = 0;
  }

  return v15 < v19 && v28;
}

BOOL ActivityRingProgressMonitor.didCompleteExerciseGoal(with:)(void *a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore27ActivityRingProgressMonitor_lastActivitySummary;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [v5 appleExerciseTime];
  v7 = objc_opt_self();
  v8 = [v7 secondUnit];
  [v6 doubleValueForUnit_];
  v10 = v9;

  v11 = [v5 appleExerciseTimeGoal];
  v12 = [v7 secondUnit];
  [v11 doubleValueForUnit_];
  v14 = v13;

  v15 = [a1 appleExerciseTime];
  v16 = [v7 secondUnit];
  [v15 doubleValueForUnit_];
  v18 = v17;

  v19 = [a1 appleExerciseTimeGoal];
  v20 = [v7 secondUnit];
  [v19 doubleValueForUnit_];
  v22 = v21;

  v23 = v14 > 0.0;
  if (v22 <= 0.0)
  {
    v23 = 0;
  }

  if (v22 > v18)
  {
    v23 = 0;
  }

  return v10 < v14 && v23;
}

id ActivityRingProgressMonitor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ActivityRingProgressMonitor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void thunk for @escaping @callee_guaranteed (@guaranteed _HKCurrentActivitySummaryQuery, @guaranteed HKActivitySummary?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v11 = a2;
  v9 = a3;
  v10 = a4;
  v8(v11, a3, a4);
}

id specialized ActivityRingProgressMonitor.addProgressObserver(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR____TtC11WorkoutCore27ActivityRingProgressMonitor_demoProgressProvider);
  if (v3)
  {
    v4 = sel_addProgressObserver_;
  }

  else
  {
    v5 = *(a2 + OBJC_IVAR____TtC11WorkoutCore27ActivityRingProgressMonitor_progressObservers);
    v6 = [v5 allObjects];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo37NLWorkoutActivityRingProgressObserver_pMd, &_sSo37NLWorkoutActivityRingProgressObserver_pMR);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v7 >> 62)
    {
      v8 = __CocoaSet.count.getter();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v8)
    {
      ActivityRingProgressMonitor.startListening()();
    }

    v4 = sel_addObject_;
    v3 = v5;
  }

  return [v3 v4];
}

{
  v3 = *(a2 + OBJC_IVAR____TtC11WorkoutCore27ActivityRingProgressMonitor_demoProgressProvider);
  if (v3)
  {
    v4 = sel_addProgressObserver_;
  }

  else
  {
    v5 = *(a2 + OBJC_IVAR____TtC11WorkoutCore27ActivityRingProgressMonitor_progressObservers);
    v6 = [v5 allObjects];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo37NLWorkoutActivityRingProgressObserver_pMd, &_sSo37NLWorkoutActivityRingProgressObserver_pMR);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v7 >> 62)
    {
      v8 = __CocoaSet.count.getter();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v8)
    {
      ActivityRingProgressMonitor.startListening()();
    }

    v4 = sel_addObject_;
    v3 = v5;
  }

  return [v3 v4];
}

void specialized ActivityRingProgressMonitor.removeProgressObserver(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR____TtC11WorkoutCore27ActivityRingProgressMonitor_demoProgressProvider);
  if (v3)
  {

    [v3 removeProgressObserver_];
  }

  else
  {
    v4 = *(a2 + OBJC_IVAR____TtC11WorkoutCore27ActivityRingProgressMonitor_progressObservers);
    [v4 removeObject_];
    v5 = [v4 allObjects];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo37NLWorkoutActivityRingProgressObserver_pMd, &_sSo37NLWorkoutActivityRingProgressObserver_pMR);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v6 >> 62)
    {
      v7 = __CocoaSet.count.getter();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v7)
    {
      ActivityRingProgressMonitor.stopListening()();
    }
  }
}

{
  v3 = *(a2 + OBJC_IVAR____TtC11WorkoutCore27ActivityRingProgressMonitor_demoProgressProvider);
  if (v3)
  {

    [v3 removeProgressObserver_];
  }

  else
  {
    v4 = *(a2 + OBJC_IVAR____TtC11WorkoutCore27ActivityRingProgressMonitor_progressObservers);
    [v4 removeObject_];
    v5 = [v4 allObjects];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo37NLWorkoutActivityRingProgressObserver_pMd, &_sSo37NLWorkoutActivityRingProgressObserver_pMR);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v6 >> 62)
    {
      v7 = __CocoaSet.count.getter();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v7)
    {
      ActivityRingProgressMonitor.stopListening()();
    }
  }
}

id specialized ActivityRingProgressMonitor.init(healthStore:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - v7;
  *&v2[OBJC_IVAR____TtC11WorkoutCore27ActivityRingProgressMonitor_currentActivitySummaryQuery] = 0;
  *&v2[OBJC_IVAR____TtC11WorkoutCore27ActivityRingProgressMonitor_lastActivitySummary] = 0;
  *&v2[OBJC_IVAR____TtC11WorkoutCore27ActivityRingProgressMonitor_healthStore] = a1;
  v9 = objc_opt_self();
  v10 = a1;
  v11 = [v9 weakObjectsHashTable];
  *&v2[OBJC_IVAR____TtC11WorkoutCore27ActivityRingProgressMonitor_progressObservers] = v11;
  *&v2[OBJC_IVAR____TtC11WorkoutCore27ActivityRingProgressMonitor_pausedRingsObserver] = [objc_allocWithZone(type metadata accessor for ActivityPausedRingsObserver()) init];
  type metadata accessor for NLWorkoutDemoUtilities();
  *&v2[OBJC_IVAR____TtC11WorkoutCore27ActivityRingProgressMonitor_demoProgressProvider] = static NLWorkoutDemoUtilities.demoActivityRingProgressProvider()();
  v16.receiver = v2;
  v16.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v16, sel_init);
  TaskPriority.init(rawValue:)();
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v8, 0, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v12;
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in ActivityRingProgressMonitor.init(healthStore:), v14);

  _sSo8NSObjectCSgWOhTm_6(v8, &_sScPSgMd, &_sScPSgMR);
  return v12;
}

uint64_t partial apply for closure #1 in closure #1 in ActivityRingProgressMonitor.startListening()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in closure #1 in ActivityRingProgressMonitor.startListening();

  return closure #1 in closure #1 in ActivityRingProgressMonitor.startListening()(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in ActivityRingProgressMonitor.init(healthStore:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in ActivityRingProgressMonitor.init(healthStore:);

  return closure #1 in ActivityRingProgressMonitor.init(healthStore:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in ActivityRingProgressMonitor.init(healthStore:)()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

Swift::Void __swiftcall DataLinkHealthKitHostConnection.unregisterCommandHandler()()
{
  v1 = v0;
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.dataLink);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_20AEA4000, v3, v4, "Unregistering command handler", v5, 2u);
    MEMORY[0x20F2E9420](v5, -1, -1);
  }

  v6 = (v1 + OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_commandHandler);
  v7 = *(v1 + OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_commandHandler + 8);
  *v6 = closure #1 in variable initialization expression of static DataLinkHealthKitHostConnection.defaultCommandHandler;
  v6[1] = 0;
}

uint64_t DataLinkHealthKitHostConnection.activateLink(started:activated:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  ObjectType = swift_getObjectType();
  v8 = *&v3[OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_session];
  v9 = swift_allocObject();
  v9[2] = v3;
  v9[3] = a1;
  v9[4] = a2;
  v9[5] = ObjectType;
  v13[4] = partial apply for closure #1 in DataLinkHealthKitHostConnection.activateLink(started:activated:);
  v13[5] = v9;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  v13[3] = &block_descriptor_41;
  v10 = _Block_copy(v13);
  v11 = v3;

  [v8 startMirroringToCompanionDeviceWithCompletion_];
  _Block_release(v10);
  return a3();
}

uint64_t DataLinkHealthKitHostConnection.setupCommandHandler(closure:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static WOLog.dataLink);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_20AEA4000, v7, v8, "Registering command handler", v9, 2u);
    MEMORY[0x20F2E9420](v9, -1, -1);
  }

  v10 = (v3 + OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_commandHandler);
  v11 = *(v3 + OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_commandHandler + 8);
  *v10 = a1;
  v10[1] = a2;
}

uint64_t DataLinkHealthKitHostConnection.sendWorkoutData(_:dirtyPublishers:closure:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v137 = a4;
  v136 = a3;
  v129[1] = a1;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v135 = v129 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = v9;
  MEMORY[0x28223BE20](v8);
  v148 = v129 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v132 = v129 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v130 = v129 - v15;
  v142 = type metadata accessor for Apple_Workout_Core_MetricsDelta(0);
  v16 = *(*(v142 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v142);
  v133 = (v129 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v138 = v129 - v19;
  v141 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  v152 = *(v141 - 8);
  v20 = *(v152 + 64);
  v21 = MEMORY[0x28223BE20](v141);
  v131 = v129 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v147 = v129 - v23;
  v24 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = v129 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchPredicate();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = (v129 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OS_dispatch_queue();
  *v32 = static OS_dispatch_queue.main.getter();
  (*(v29 + 104))(v32, *MEMORY[0x277D85200], v28);
  v33 = _dispatchPreconditionTest(_:)();
  (*(v29 + 8))(v32, v28);
  if (v33)
  {
    v146 = v6;
    v129[0] = v5;
    v34 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
    v153 = *(v34 - 8);
    v144 = *(v153 + 56);
    v145 = v34;
    v143 = v153 + 56;
    v144(v27, 1, 1);
    v35 = *(v24 + 20);
    v155 = v27;
    UnknownStorage.init()();
    v36 = a2 + 56;
    v37 = 1 << *(a2 + 32);
    v38 = -1;
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    v27 = v38 & *(a2 + 56);
    v154 = OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_currentSequences;
    v5 = (v37 + 63) >> 6;

    v139 = 0;
    v6 = 0;
    *&v39 = 136315138;
    v151 = v39;
    v149 = a2;
    v150 = v5;
    while (1)
    {
      v45 = v6;
      if (!v27)
      {
        break;
      }

LABEL_10:
      v46 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
      v47 = (*(a2 + 48) + ((v6 << 10) | (16 * v46)));
      v48 = *v47;
      v49 = v47[1];
      swift_bridgeObjectRetain_n();
      v50 = specialized KnownPublishers.init(rawValue:)();
      if (v50 == 18)
      {
        if (one-time initialization token for core != -1)
        {
          swift_once();
        }

        v51 = type metadata accessor for Logger();
        __swift_project_value_buffer(v51, static WOLog.core);

        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v52, v53))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v157 = v41;
          *v40 = v151;
          v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, &v157);

          *(v40 + 4) = v42;
          _os_log_impl(&dword_20AEA4000, v52, v53, "Could not convert %s to KnownPublisher", v40, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v41);
          v43 = v41;
          v5 = v150;
          MEMORY[0x20F2E9420](v43, -1, -1);
          v44 = v40;
          a2 = v149;
          MEMORY[0x20F2E9420](v44, -1, -1);
        }

        else
        {
        }
      }

      else
      {
        v54 = v50;

        v55 = v140;
        v56 = v154;
        swift_beginAccess();
        _sxRi_zRi0_zlys6UInt32VIsegr_SgWOe(v139);
        v57 = *(v55 + v56);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v156 = *(v55 + v56);
        v59 = v156;
        *(v55 + v56) = 0x8000000000000000;
        v60 = specialized __RawDictionaryStorage.find<A>(_:)(v54);
        v62 = v59[2];
        v63 = (v61 & 1) == 0;
        v64 = __OFADD__(v62, v63);
        v65 = v62 + v63;
        if (v64)
        {
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        v66 = v61;
        if (v59[3] >= v65)
        {
          v5 = v150;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v74 = v60;
            specialized _NativeDictionary.copy()();
            v60 = v74;
            v5 = v150;
            v59 = v156;
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v65, isUniquelyReferenced_nonNull_native);
          v59 = v156;
          v60 = specialized __RawDictionaryStorage.find<A>(_:)(v54);
          v5 = v150;
          if ((v66 & 1) != (v67 & 1))
          {
            goto LABEL_52;
          }
        }

        *(v140 + v154) = v59;
        if ((v66 & 1) == 0)
        {
          v59[(v60 >> 6) + 8] |= 1 << v60;
          *(v59[6] + v60) = v54;
          *(v59[7] + 4 * v60) = 0;
          v68 = v59[2];
          v64 = __OFADD__(v68, 1);
          v69 = v68 + 1;
          if (v64)
          {
            goto LABEL_51;
          }

          v59[2] = v69;
        }

        v70 = v59[7];
        v71 = *(v70 + 4 * v60);
        v72 = __CFADD__(v71, 1);
        v73 = v71 + 1;
        if (v72)
        {
          goto LABEL_50;
        }

        *(v70 + 4 * v60) = v73;
        swift_endAccess();
        v139 = specialized thunk for @callee_guaranteed () -> (@unowned UInt32);
      }
    }

    while (1)
    {
      v6 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        __break(1u);
        goto LABEL_47;
      }

      if (v6 >= v5)
      {
        break;
      }

      v27 = *(v36 + 8 * v6);
      ++v45;
      if (v27)
      {
        goto LABEL_10;
      }
    }

    v6 = v140;
    v75 = v154;
    swift_beginAccess();
    v76 = *(v6 + v75);
    v5 = OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_lastAckedSequences;
    swift_beginAccess();
    v77 = *(v6 + v5);

    v27 = v147;
    static DataLinkHealthKitHostConnection.generateDeltaProtobuf(from:currentSequences:lastAckedSequences:)(v76, v77, v147);

    if (one-time initialization token for dataLink != -1)
    {
      goto LABEL_48;
    }
  }

  else
  {
LABEL_47:
    __break(1u);
LABEL_48:
    swift_once();
  }

  v78 = type metadata accessor for Logger();
  __swift_project_value_buffer(v78, static WOLog.dataLink);
  v79 = v6;
  v80 = Logger.logObject.getter();
  v81 = static os_log_type_t.default.getter();
  v150 = v79;

  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v158 = v83;
    *v82 = v151;
    v84 = *(v6 + v5);
    lazy protocol witness table accessor for type KnownPublishers and conformance KnownPublishers();

    v85 = Dictionary.description.getter();
    v87 = v86;

    v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v87, &v158);

    *(v82 + 4) = v88;
    _os_log_impl(&dword_20AEA4000, v80, v81, "Last acked sequences: %s", v82, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v83);
    MEMORY[0x20F2E9420](v83, -1, -1);
    MEMORY[0x20F2E9420](v82, -1, -1);
  }

  v89 = v155;
  v90 = v152;
  v91 = v153;
  v92 = v145;
  v93 = v131;
  outlined init with copy of Apple_Workout_Core_NotificationUpdate(v27, v131, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
  v94 = v130;
  outlined init with copy of Apple_Workout_Core_DataLinkMessage.OneOf_Message?(v89, v130, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v95 = *(v91 + 48);
  v96 = v95(v94, 1, v92);
  v97 = v141;
  v153 = v91 + 48;
  if (v96 == 1)
  {
    _sSo8NSObjectCSgWOhTm_7(v94, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
    v98 = v142;
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v98 = v142;
    if (EnumCaseMultiPayload == 3)
    {
      v100 = v138;
      outlined init with take of Apple_Workout_Core_WorkoutNotification(v94, v138, type metadata accessor for Apple_Workout_Core_MetricsDelta);
      goto LABEL_36;
    }

    _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v94, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
  }

  v100 = v138;
  *v138 = MEMORY[0x277D84F90];
  v101 = &v100[*(v98 + 20)];
  UnknownStorage.init()();
  (*(v90 + 56))(&v100[*(v98 + 24)], 1, 1, v97);
LABEL_36:
  v102 = *(v98 + 24);
  _sSo8NSObjectCSgWOhTm_7(&v100[v102], &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  outlined init with take of Apple_Workout_Core_WorkoutNotification(v93, &v100[v102], type metadata accessor for Apple_Workout_Core_MetricsPublisher);
  v103 = *(v90 + 56);
  v152 = v90 + 56;
  v103(&v100[v102], 0, 1, v97);
  v104 = v155;
  _sSo8NSObjectCSgWOhTm_7(v155, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_WorkoutNotification(v100, v104, type metadata accessor for Apple_Workout_Core_MetricsDelta);
  v105 = v145;
  swift_storeEnumTagMultiPayload();
  (v144)(v104, 0, 1, v105);
  v106 = *(v6 + v154);

  v108 = specialized static Apple_Workout_Core_PublisherSequence.entries(sequences:)(v107);

  v109 = v132;
  outlined init with copy of Apple_Workout_Core_DataLinkMessage.OneOf_Message?(v104, v132, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  if (v95(v109, 1, v105) == 1)
  {
    _sSo8NSObjectCSgWOhTm_7(v109, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
LABEL_41:
    v111 = v155;
    v110 = v133;
    *v133 = MEMORY[0x277D84F90];
    v112 = v142;
    v113 = v110 + *(v142 + 20);
    UnknownStorage.init()();
    v103(v110 + *(v112 + 24), 1, 1, v141);
    goto LABEL_42;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v109, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
    goto LABEL_41;
  }

  v110 = v133;
  outlined init with take of Apple_Workout_Core_WorkoutNotification(v109, v133, type metadata accessor for Apple_Workout_Core_MetricsDelta);
  v111 = v155;
LABEL_42:
  v114 = *v110;

  *v110 = v108;
  _sSo8NSObjectCSgWOhTm_7(v111, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_WorkoutNotification(v110, v111, type metadata accessor for Apple_Workout_Core_MetricsDelta);
  swift_storeEnumTagMultiPayload();
  (v144)(v111, 0, 1, v105);
  v154 = *(v6 + v154);

  v115 = v148;
  Date.init()();
  v116 = swift_allocObject();
  v117 = v150;
  swift_unknownObjectWeakInit();
  v118 = v146;
  v119 = v135;
  v120 = v129[0];
  (*(v146 + 16))(v135, v115, v129[0]);
  v121 = (*(v118 + 80) + 24) & ~*(v118 + 80);
  v122 = (v134 + v121 + 7) & 0xFFFFFFFFFFFFFFF8;
  v123 = swift_allocObject();
  *(v123 + 16) = v116;
  (*(v118 + 32))(v123 + v121, v119, v120);
  *(v123 + v122) = v154;
  v124 = (v123 + ((v122 + 15) & 0xFFFFFFFFFFFFFFF8));
  v125 = v137;
  *v124 = v136;
  v124[1] = v125;
  if (*(v117 + OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_recorder))
  {

    v126 = v155;
    DataLinkRecorder.recordMessage(_:)(v155);
  }

  else
  {

    v126 = v155;
  }

  v127 = swift_allocObject();
  *(v127 + 16) = partial apply for closure #1 in DataLinkHealthKitHostConnection.sendWorkoutData(_:dirtyPublishers:closure:);
  *(v127 + 24) = v123;

  DataLinkHealthKitHostConnection.sendDataLinkMessage(_:closure:)(v126, partial apply for closure #1 in DataLinkHealthKitHostConnection.sendMessage(_:closure:), v127);

  (*(v146 + 8))(v148, v120);
  _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v147, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
  _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v126, type metadata accessor for Apple_Workout_Core_DataLinkMessage);

  return _sxRi_zRi0_zlys6UInt32VIsegr_SgWOe(v139);
}

uint64_t DataLinkHealthKitHostConnection.sendNotification(_:)()
{
  v0 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  v1 = *(v0 - 8);
  v30 = v0 - 8;
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Apple_Workout_Core_WorkoutNotification(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Apple_Workout_Core_NotificationUpdate(0);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v29 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - v15;
  UnknownStorage.init()();
  v17 = *(v11 + 28);
  v18 = *(v6 + 56);
  v18(&v16[v17], 1, 1, v5);
  v19 = *(v11 + 32);
  v20 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  (*(*(v20 - 8) + 56))(&v16[v19], 1, 1, v20);
  WorkoutNotification.protobuf.getter(v9);
  _sSo8NSObjectCSgWOhTm_7(&v16[v17], &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMd, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMR);
  outlined init with take of Apple_Workout_Core_WorkoutNotification(v9, &v16[v17], type metadata accessor for Apple_Workout_Core_WorkoutNotification);
  v18(&v16[v17], 0, 1, v5);
  v21 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  v22 = *(*(v21 - 8) + 56);
  v22(v4, 1, 1, v21);
  v23 = &v4[*(v30 + 28)];
  UnknownStorage.init()();
  v24 = v29;
  outlined init with copy of Apple_Workout_Core_NotificationUpdate(v16, v29, type metadata accessor for Apple_Workout_Core_NotificationUpdate);
  _sSo8NSObjectCSgWOhTm_7(v4, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_WorkoutNotification(v24, v4, type metadata accessor for Apple_Workout_Core_NotificationUpdate);
  swift_storeEnumTagMultiPayload();
  v25 = v21;
  v26 = v31;
  v22(v4, 0, 1, v25);
  if (*(v26 + OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_recorder))
  {
    DataLinkRecorder.recordMessage(_:)(v4);
  }

  DataLinkHealthKitHostConnection.sendDataLinkMessage(_:closure:)(v4, specialized closure #1 in DataLinkHealthKitHostConnection.sendMessage(_:closure:), 0);
  _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v4, type metadata accessor for Apple_Workout_Core_DataLinkMessage);
  return _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v16, type metadata accessor for Apple_Workout_Core_NotificationUpdate);
}

uint64_t DataLinkHealthKitHostConnection.sendMirroredHostCommand(_:sequence:closure:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage(0);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  v14 = *(*(v13 - 8) + 56);
  v14(v11, 1, 1, v13);
  v15 = &v11[*(v8 + 28)];
  UnknownStorage.init()();
  _sSo8NSObjectCSgWOhTm_7(v11, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  *v11 = v12;
  v11[8] = 1;
  swift_storeEnumTagMultiPayload();
  v14(v11, 0, 1, v13);
  DataLinkHealthKitHostConnection.sendMirroredHostMessage(_:closure:)(v11, a3, a4);
  return _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v11, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
}

uint64_t DataLinkHealthKitHostConnection.sendMirroredHostAlertStackRequest(_:sequence:closure:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage(0);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 16);
  v22[0] = *a1;
  v22[1] = v16;
  v22[2] = *(a1 + 32);
  v23 = *(a1 + 48);
  v17 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  v18 = *(*(v17 - 8) + 56);
  v18(v15, 1, 1, v17);
  v19 = &v15[*(v12 + 28)];
  UnknownStorage.init()();
  v21[4] = v22;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostAlertStackRequest and conformance Apple_Workout_Core_MirroredHostAlertStackRequest, type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest);
  static Message.with(_:)();
  _sSo8NSObjectCSgWOhTm_7(v15, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_WorkoutNotification(v10, v15, type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest);
  swift_storeEnumTagMultiPayload();
  v18(v15, 0, 1, v17);
  DataLinkHealthKitHostConnection.sendMirroredHostMessage(_:closure:)(v15, a3, a4);
  return _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v15, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
}

uint64_t DataLinkHealthKitHostConnection.sendMirroredHostStartConfiguration(_:sequence:closure:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a4;
  v22 = a3;
  started = type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration(0);
  v6 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage(0);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = a1[1];
  v16 = *(a1 + 1);
  v17 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  v18 = *(*(v17 - 8) + 56);
  v18(v13, 1, 1, v17);
  v19 = &v13[*(v10 + 28)];
  UnknownStorage.init()();
  v24 = v14;
  v25 = v15;
  v26 = v16;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostStartConfiguration and conformance Apple_Workout_Core_MirroredHostStartConfiguration, type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration);
  static Message.with(_:)();
  _sSo8NSObjectCSgWOhTm_7(v13, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_WorkoutNotification(v8, v13, type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration);
  swift_storeEnumTagMultiPayload();
  v18(v13, 0, 1, v17);
  DataLinkHealthKitHostConnection.sendMirroredHostMessage(_:closure:)(v13, v22, v23);
  return _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v13, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
}

uint64_t DataLinkHealthKitHostConnection.sendMirroredHostMachTimestampRequest(_:sequence:closure:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage(0);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  v18 = *(*(v17 - 8) + 56);
  v18(v15, 1, 1, v17);
  v19 = &v15[*(v12 + 28)];
  UnknownStorage.init()();
  v21[4] = v16;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostMachTimestampRequest and conformance Apple_Workout_Core_MirroredHostMachTimestampRequest, type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest);
  static Message.with(_:)();
  _sSo8NSObjectCSgWOhTm_7(v15, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_WorkoutNotification(v10, v15, type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest);
  swift_storeEnumTagMultiPayload();
  v18(v15, 0, 1, v17);
  DataLinkHealthKitHostConnection.sendMirroredHostMessage(_:closure:)(v15, a3, a4);
  return _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v15, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
}

uint64_t DataLinkHealthKitHostConnection.sendMirroredHostCountdownStart(_:sequence:closure:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage(0);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = a1[1];
  v18 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  v19 = *(*(v18 - 8) + 56);
  v19(v15, 1, 1, v18);
  v20 = &v15[*(v12 + 28)];
  UnknownStorage.init()();
  v22[4] = v16;
  v22[5] = v17;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostCountdownStart and conformance Apple_Workout_Core_MirroredHostCountdownStart, type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart);
  static Message.with(_:)();
  _sSo8NSObjectCSgWOhTm_7(v15, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_WorkoutNotification(v10, v15, type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart);
  swift_storeEnumTagMultiPayload();
  v19(v15, 0, 1, v18);
  DataLinkHealthKitHostConnection.sendMirroredHostMessage(_:closure:)(v15, a3, a4);
  return _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v15, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
}

uint64_t DataLinkHealthKitHostConnection.sendMirroredHostSummaryUpdate(_:sequence:closure:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage(0);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  v18 = *(*(v17 - 8) + 56);
  v18(v15, 1, 1, v17);
  v19 = &v15[*(v12 + 28)];
  UnknownStorage.init()();
  v21[4] = v16;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostSummaryUpdate and conformance Apple_Workout_Core_MirroredHostSummaryUpdate, type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate);
  static Message.with(_:)();
  _sSo8NSObjectCSgWOhTm_7(v15, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_WorkoutNotification(v10, v15, type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate);
  swift_storeEnumTagMultiPayload();
  v18(v15, 0, 1, v17);
  DataLinkHealthKitHostConnection.sendMirroredHostMessage(_:closure:)(v15, a3, a4);
  return _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v15, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
}

uint64_t closure #1 in variable initialization expression of static DataLinkHealthKitHostConnection.defaultCommandHandler(unsigned __int8 *a1)
{
  v1 = *a1;
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.dataLink);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v24 = v6;
    *v5 = 136315138;
    if (v1 <= 3)
    {
      v15 = 0xE600000000000000;
      v16 = 0x656D75736572;
      v17 = 0xE300000000000000;
      v18 = 6581861;
      if (v1 != 2)
      {
        v18 = 0x6D6765536B72616DLL;
        v17 = 0xEB00000000746E65;
      }

      if (v1)
      {
        v16 = 0x6573756170;
        v15 = 0xE500000000000000;
      }

      if (v1 <= 1)
      {
        v13 = v16;
      }

      else
      {
        v13 = v18;
      }

      if (v1 <= 1)
      {
        v14 = v15;
      }

      else
      {
        v14 = v17;
      }
    }

    else
    {
      v7 = 0xE700000000000000;
      v8 = 0x67654C7478656ELL;
      v9 = 0xE400000000000000;
      v10 = 1702131053;
      if (v1 != 7)
      {
        v10 = 0x6574756D6E75;
        v9 = 0xE600000000000000;
      }

      if (v1 != 6)
      {
        v8 = v10;
        v7 = v9;
      }

      v11 = 0xEC000000676E6972;
      v12 = 0x6F7272694D646E65;
      if (v1 != 4)
      {
        v12 = 0x65746E497478656ELL;
        v11 = 0xEC0000006C617672;
      }

      if (v1 <= 5)
      {
        v13 = v12;
      }

      else
      {
        v13 = v8;
      }

      if (v1 <= 5)
      {
        v14 = v11;
      }

      else
      {
        v14 = v7;
      }
    }

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v24);

    *(v5 + 4) = v19;
    _os_log_impl(&dword_20AEA4000, v3, v4, "Received command %s but no handler set up.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x20F2E9420](v6, -1, -1);
    MEMORY[0x20F2E9420](v5, -1, -1);
  }

  type metadata accessor for DataLinkError();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type DataLinkError and conformance DataLinkError, type metadata accessor for DataLinkError);
  swift_allocError();
  v21 = v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore27MirroredHostMessageProtocol_pXmT04hostE4Type_AA08DataLinkC17ClientExpectationV06clientL0tMd, &_s11WorkoutCore27MirroredHostMessageProtocol_pXmT04hostE4Type_AA08DataLinkC17ClientExpectationV06clientL0tMR);
  (*(*(v22 - 8) + 56))(v21, 1, 5, v22);
  return 0;
}

id DataLinkHealthKitHostConnection.__deallocating_deinit()
{
  if (*&v0[OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_recorder])
  {

    DataLinkRecorder.stopSession()();
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for DataLinkHealthKitHostConnection();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for DataLinkHealthKitHostConnection()
{
  result = type metadata singleton initialization cache for DataLinkHealthKitHostConnection;
  if (!type metadata singleton initialization cache for DataLinkHealthKitHostConnection)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for DataLinkHealthKitHostConnection()
{
  result = type metadata accessor for Date();
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

unint64_t KnownPublishers.rawValue.getter(char a1)
{
  result = 0x6C6275506C616F67;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001BLL;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      return result;
    case 4:
      result = 0xD000000000000019;
      break;
    case 5:
      result = 0xD000000000000019;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0xD000000000000019;
      break;
    case 8:
    case 13:
    case 17:
      result = 0xD00000000000001ALL;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
    case 16:
      result = 0xD000000000000015;
      break;
    case 11:
      result = 0xD000000000000020;
      break;
    case 12:
      result = 0xD000000000000018;
      break;
    case 14:
      result = 0xD00000000000001CLL;
      break;
    case 15:
      result = 0x6C6576654C706F54;
      break;
    default:
      result = 0xD00000000000001FLL;
      break;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance KnownPublishers(char *a1, char *a2)
{
  v2 = *a2;
  v3 = KnownPublishers.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == KnownPublishers.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance KnownPublishers()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  KnownPublishers.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance KnownPublishers()
{
  KnownPublishers.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance KnownPublishers()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  KnownPublishers.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance KnownPublishers@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = specialized KnownPublishers.init(rawValue:)();
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance KnownPublishers@<X0>(unint64_t *a1@<X8>)
{
  result = KnownPublishers.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t Apple_Workout_Core_PublisherKey.publisher.getter()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    result = 15;
    v3 = *v0;
    switch(v1)
    {
      case 1:
        return result;
      case 2:
        result = 0;
        break;
      case 3:
        result = 1;
        break;
      case 4:
        result = 2;
        break;
      case 5:
        result = 4;
        break;
      case 6:
        result = 5;
        break;
      case 7:
        result = 6;
        break;
      case 8:
        result = 8;
        break;
      case 9:
        result = 9;
        break;
      case 10:
        result = 10;
        break;
      case 11:
        result = 12;
        break;
      case 12:
        result = 13;
        break;
      case 13:
        result = 14;
        break;
      case 14:
        result = 16;
        break;
      case 15:
        result = 3;
        break;
      case 16:
        result = 7;
        break;
      case 17:
        result = 11;
        break;
      case 18:
        result = 17;
        break;
      default:
        if (one-time initialization token for core != -1)
        {
          swift_once();
        }

        v4 = type metadata accessor for Logger();
        __swift_project_value_buffer(v4, static WOLog.core);
        v5 = Logger.logObject.getter();
        v6 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v5, v6))
        {
          v7 = swift_slowAlloc();
          *v7 = 0;
          _os_log_impl(&dword_20AEA4000, v5, v6, "Invalid passed as sequence publisher", v7, 2u);
          MEMORY[0x20F2E9420](v7, -1, -1);
        }

        return 18;
    }
  }

  else
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static WOLog.core);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = v1;
      _os_log_impl(&dword_20AEA4000, v9, v10, "Unknown publisher %ld passed as sequence publisher", v11, 0xCu);
      MEMORY[0x20F2E9420](v11, -1, -1);
    }

    return 18;
  }

  return result;
}

uint64_t static DataLinkHealthKitHostConnection.generateDeltaProtobuf(from:currentSequences:lastAckedSequences:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v261 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v278 = &v260 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v277 = &v260 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v276 = &v260 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v275 = &v260 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v274 = &v260 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v273 = &v260 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v272 = &v260 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v271 = &v260 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v270 = &v260 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v269 = &v260 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8);
  v268 = &v260 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8);
  v267 = &v260 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8);
  v266 = &v260 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44 - 8);
  v265 = &v260 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47 - 8);
  v264 = &v260 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50 - 8);
  v263 = &v260 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
  v54 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53 - 8);
  v262 = &v260 - v55;
  v56 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  v57 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  v59 = &v260 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MetricsPublisher.protobuf.getter(v59);

  v61 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11WorkoutCore15KnownPublishersO_SD4KeysVyAFs6UInt32V_GTt0g5(v60);
  v62 = 0;
  v280[1] = MEMORY[0x277D84FA0];
  v281 = v61;
  do
  {
    v67 = outlined read-only object #0 of static KnownPublishers.allCases.getter[v62 + 32];
    if (*(a1 + 16) && (v68 = specialized __RawDictionaryStorage.find<A>(_:)(outlined read-only object #0 of static KnownPublishers.allCases.getter[v62 + 32]), (v69 & 1) != 0))
    {
      if (!*(a2 + 16) || (v70 = *(*(a1 + 56) + 4 * v68), v71 = specialized __RawDictionaryStorage.find<A>(_:)(v67), (v72 & 1) == 0))
      {
        specialized Set._Variant.remove(_:)(v67);
        goto LABEL_4;
      }

      v73 = *(*(a2 + 56) + 4 * v71);
      specialized Set._Variant.remove(_:)(v67);
      if (v70 != v73)
      {
        goto LABEL_4;
      }
    }

    else
    {
      specialized Set._Variant.remove(_:)(v67);
    }

    switch(v67)
    {
      case 1:
        v141 = *(v56 + 20);
        v142 = *&v59[v141];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v144 = *&v59[v141];
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v145 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
          v146 = *(v145 + 48);
          v147 = *(v145 + 52);
          swift_allocObject();
          v144 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v144);
          *&v59[v141] = v144;
        }

        v148 = type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher();
        v149 = v263;
        (*(*(v148 - 8) + 56))(v263, 1, 1, v148);
        v150 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elapsedTimeMetricsPublisher;
        swift_beginAccess();
        outlined assign with take of Apple_Workout_Core_WorkoutBuddyStatePublisher?(v149, v144 + v150, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
        swift_endAccess();
        v66 = 1;
        goto LABEL_3;
      case 2:
        v161 = *(v56 + 20);
        v162 = *&v59[v161];
        v163 = swift_isUniquelyReferenced_nonNull_native();
        v164 = *&v59[v161];
        if ((v163 & 1) == 0)
        {
          v165 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
          v166 = *(v165 + 48);
          v167 = *(v165 + 52);
          swift_allocObject();
          v164 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v164);
          *&v59[v161] = v164;
        }

        v168 = type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher();
        v169 = v264;
        (*(*(v168 - 8) + 56))(v264, 1, 1, v168);
        v170 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__energyMetricsPublisher;
        swift_beginAccess();
        outlined assign with take of Apple_Workout_Core_WorkoutBuddyStatePublisher?(v169, v164 + v170, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
        swift_endAccess();
        v66 = 2;
        goto LABEL_3;
      case 3:
        v111 = *(v56 + 20);
        v112 = *&v59[v111];
        v113 = swift_isUniquelyReferenced_nonNull_native();
        v114 = *&v59[v111];
        if ((v113 & 1) == 0)
        {
          v115 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
          v116 = *(v115 + 48);
          v117 = *(v115 + 52);
          swift_allocObject();
          v114 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v114);
          *&v59[v111] = v114;
        }

        v118 = type metadata accessor for Apple_Workout_Core_GoalPublisher(0);
        v119 = v265;
        (*(*(v118 - 8) + 56))(v265, 1, 1, v118);
        v120 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__goalPublisher;
        swift_beginAccess();
        outlined assign with take of Apple_Workout_Core_WorkoutBuddyStatePublisher?(v119, v114 + v120, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
        swift_endAccess();
        v66 = 3;
        goto LABEL_3;
      case 4:
        v191 = *(v56 + 20);
        v192 = *&v59[v191];
        v193 = swift_isUniquelyReferenced_nonNull_native();
        v194 = *&v59[v191];
        if ((v193 & 1) == 0)
        {
          v195 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
          v196 = *(v195 + 48);
          v197 = *(v195 + 52);
          swift_allocObject();
          v194 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v194);
          *&v59[v191] = v194;
        }

        v198 = type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher();
        v199 = v266;
        (*(*(v198 - 8) + 56))(v266, 1, 1, v198);
        v200 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__heartRateMetricsPublisher;
        swift_beginAccess();
        outlined assign with take of Apple_Workout_Core_WorkoutBuddyStatePublisher?(v199, v194 + v200, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
        swift_endAccess();
        v66 = 4;
        goto LABEL_3;
      case 5:
        v211 = *(v56 + 20);
        v212 = *&v59[v211];
        v213 = swift_isUniquelyReferenced_nonNull_native();
        v214 = *&v59[v211];
        if ((v213 & 1) == 0)
        {
          v215 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
          v216 = *(v215 + 48);
          v217 = *(v215 + 52);
          swift_allocObject();
          v214 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v214);
          *&v59[v211] = v214;
        }

        v218 = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
        v219 = v267;
        (*(*(v218 - 8) + 56))(v267, 1, 1, v218);
        v220 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__intervalsMetricsPublisher;
        swift_beginAccess();
        outlined assign with take of Apple_Workout_Core_WorkoutBuddyStatePublisher?(v219, v214 + v220, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
        swift_endAccess();
        v66 = 5;
        goto LABEL_3;
      case 6:
        v171 = *(v56 + 20);
        v172 = *&v59[v171];
        v173 = swift_isUniquelyReferenced_nonNull_native();
        v174 = *&v59[v171];
        if ((v173 & 1) == 0)
        {
          v175 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
          v176 = *(v175 + 48);
          v177 = *(v175 + 52);
          swift_allocObject();
          v174 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v174);
          *&v59[v171] = v174;
        }

        v178 = type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher();
        v179 = v268;
        (*(*(v178 - 8) + 56))(v268, 1, 1, v178);
        v180 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__lapsMetricsPublisher;
        swift_beginAccess();
        outlined assign with take of Apple_Workout_Core_WorkoutBuddyStatePublisher?(v179, v174 + v180, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
        swift_endAccess();
        v66 = 6;
        goto LABEL_3;
      case 7:
        v231 = *(v56 + 20);
        v232 = *&v59[v231];
        v233 = swift_isUniquelyReferenced_nonNull_native();
        v234 = *&v59[v231];
        if ((v233 & 1) == 0)
        {
          v235 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
          v236 = *(v235 + 48);
          v237 = *(v235 + 52);
          swift_allocObject();
          v234 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v234);
          *&v59[v231] = v234;
        }

        v238 = type metadata accessor for Apple_Workout_Core_LocationPositionPublisher();
        v239 = v269;
        (*(*(v238 - 8) + 56))(v269, 1, 1, v238);
        v240 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__locationPositionPublisher;
        swift_beginAccess();
        outlined assign with take of Apple_Workout_Core_WorkoutBuddyStatePublisher?(v239, v234 + v240, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
        swift_endAccess();
        v66 = 7;
        goto LABEL_3;
      case 8:
        v131 = *(v56 + 20);
        v132 = *&v59[v131];
        v133 = swift_isUniquelyReferenced_nonNull_native();
        v134 = *&v59[v131];
        if ((v133 & 1) == 0)
        {
          v135 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
          v136 = *(v135 + 48);
          v137 = *(v135 + 52);
          swift_allocObject();
          v134 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v134);
          *&v59[v131] = v134;
        }

        v138 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0);
        v139 = v270;
        (*(*(v138 - 8) + 56))(v270, 1, 1, v138);
        v140 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__multisportMetricsPublisher;
        swift_beginAccess();
        outlined assign with take of Apple_Workout_Core_WorkoutBuddyStatePublisher?(v139, v134 + v140, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
        swift_endAccess();
        v66 = 8;
        goto LABEL_3;
      case 9:
        v221 = *(v56 + 20);
        v222 = *&v59[v221];
        v223 = swift_isUniquelyReferenced_nonNull_native();
        v224 = *&v59[v221];
        if ((v223 & 1) == 0)
        {
          v225 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
          v226 = *(v225 + 48);
          v227 = *(v225 + 52);
          swift_allocObject();
          v224 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v224);
          *&v59[v221] = v224;
        }

        v228 = type metadata accessor for Apple_Workout_Core_PlatterPublisher(0);
        v229 = v271;
        (*(*(v228 - 8) + 56))(v271, 1, 1, v228);
        v230 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__platterPublisher;
        swift_beginAccess();
        outlined assign with take of Apple_Workout_Core_WorkoutBuddyStatePublisher?(v229, v224 + v230, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
        swift_endAccess();
        v66 = 9;
        goto LABEL_3;
      case 10:
        v101 = *(v56 + 20);
        v102 = *&v59[v101];
        v103 = swift_isUniquelyReferenced_nonNull_native();
        v104 = *&v59[v101];
        if ((v103 & 1) == 0)
        {
          v105 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
          v106 = *(v105 + 48);
          v107 = *(v105 + 52);
          swift_allocObject();
          v104 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v104);
          *&v59[v101] = v104;
        }

        v108 = type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher();
        v109 = v272;
        (*(*(v108 - 8) + 56))(v272, 1, 1, v108);
        v110 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__powerMetricsPublisher;
        swift_beginAccess();
        outlined assign with take of Apple_Workout_Core_WorkoutBuddyStatePublisher?(v109, v104 + v110, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
        swift_endAccess();
        v66 = 10;
        goto LABEL_3;
      case 11:
        v121 = *(v56 + 20);
        v122 = *&v59[v121];
        v123 = swift_isUniquelyReferenced_nonNull_native();
        v124 = *&v59[v121];
        if ((v123 & 1) == 0)
        {
          v125 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
          v126 = *(v125 + 48);
          v127 = *(v125 + 52);
          swift_allocObject();
          v124 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v124);
          *&v59[v121] = v124;
        }

        v128 = type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher();
        v129 = v277;
        (*(*(v128 - 8) + 56))(v277, 1, 1, v128);
        v130 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__waterTemperatureMetricsPublisher;
        swift_beginAccess();
        outlined assign with take of Apple_Workout_Core_WorkoutBuddyStatePublisher?(v129, v124 + v130, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
        swift_endAccess();
        v66 = 11;
        goto LABEL_3;
      case 12:
        v201 = *(v56 + 20);
        v202 = *&v59[v201];
        v203 = swift_isUniquelyReferenced_nonNull_native();
        v204 = *&v59[v201];
        if ((v203 & 1) == 0)
        {
          v205 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
          v206 = *(v205 + 48);
          v207 = *(v205 + 52);
          swift_allocObject();
          v204 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v204);
          *&v59[v201] = v204;
        }

        v208 = type metadata accessor for Apple_Workout_Core_RaceInformationPublisher(0);
        v209 = v273;
        (*(*(v208 - 8) + 56))(v273, 1, 1, v208);
        v210 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__raceInformationPublisher;
        swift_beginAccess();
        outlined assign with take of Apple_Workout_Core_WorkoutBuddyStatePublisher?(v209, v204 + v210, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
        swift_endAccess();
        v66 = 12;
        goto LABEL_3;
      case 13:
        v91 = *(v56 + 20);
        v92 = *&v59[v91];
        v93 = swift_isUniquelyReferenced_nonNull_native();
        v94 = *&v59[v91];
        if ((v93 & 1) == 0)
        {
          v95 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
          v96 = *(v95 + 48);
          v97 = *(v95 + 52);
          swift_allocObject();
          v94 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v94);
          *&v59[v91] = v94;
        }

        v98 = type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0);
        v99 = v274;
        (*(*(v98 - 8) + 56))(v274, 1, 1, v98);
        v100 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__racePositionStatePublisher;
        swift_beginAccess();
        outlined assign with take of Apple_Workout_Core_WorkoutBuddyStatePublisher?(v99, v94 + v100, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
        swift_endAccess();
        v66 = 13;
        goto LABEL_3;
      case 14:
        v151 = *(v56 + 20);
        v152 = *&v59[v151];
        v153 = swift_isUniquelyReferenced_nonNull_native();
        v154 = *&v59[v151];
        if ((v153 & 1) == 0)
        {
          v155 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
          v156 = *(v155 + 48);
          v157 = *(v155 + 52);
          swift_allocObject();
          v154 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v154);
          *&v59[v151] = v154;
        }

        v158 = type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher();
        v159 = v275;
        (*(*(v158 - 8) + 56))(v275, 1, 1, v158);
        v160 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__trackRunningMetricsPublisher;
        swift_beginAccess();
        outlined assign with take of Apple_Workout_Core_WorkoutBuddyStatePublisher?(v159, v154 + v160, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
        swift_endAccess();
        v66 = 14;
        goto LABEL_3;
      case 15:
        break;
      case 16:
        v84 = *(v56 + 20);
        v85 = *&v59[v84];
        v86 = swift_isUniquelyReferenced_nonNull_native();
        v87 = *&v59[v84];
        if ((v86 & 1) == 0)
        {
          v88 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
          v89 = *(v88 + 48);
          v90 = *(v88 + 52);
          swift_allocObject();
          v87 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v87);
          *&v59[v84] = v87;
        }

        v63 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0);
        v64 = v276;
        (*(*(v63 - 8) + 56))(v276, 1, 1, v63);
        v65 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutStatePublisher;
        swift_beginAccess();
        outlined assign with take of Apple_Workout_Core_WorkoutBuddyStatePublisher?(v64, v87 + v65, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
        swift_endAccess();
        v66 = 16;
        goto LABEL_3;
      case 17:
        v181 = *(v56 + 20);
        v182 = *&v59[v181];
        v183 = swift_isUniquelyReferenced_nonNull_native();
        v184 = *&v59[v181];
        if ((v183 & 1) == 0)
        {
          v185 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
          v186 = *(v185 + 48);
          v187 = *(v185 + 52);
          swift_allocObject();
          v184 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v184);
          *&v59[v181] = v184;
        }

        v188 = type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher();
        v189 = v278;
        (*(*(v188 - 8) + 56))(v278, 1, 1, v188);
        v190 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutBuddyStatePublisher;
        swift_beginAccess();
        outlined assign with take of Apple_Workout_Core_WorkoutBuddyStatePublisher?(v189, v184 + v190, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
        swift_endAccess();
        v66 = 17;
        goto LABEL_3;
      default:
        v74 = *(v56 + 20);
        v75 = *&v59[v74];
        v76 = swift_isUniquelyReferenced_nonNull_native();
        v77 = *&v59[v74];
        if ((v76 & 1) == 0)
        {
          v78 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
          v79 = *(v78 + 48);
          v80 = *(v78 + 52);
          swift_allocObject();
          v77 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v77);
          *&v59[v74] = v77;
        }

        v81 = type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0);
        v82 = v262;
        (*(*(v81 - 8) + 56))(v262, 1, 1, v81);
        v83 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__activitySummaryMetricsPublisher;
        swift_beginAccess();
        outlined assign with take of Apple_Workout_Core_WorkoutBuddyStatePublisher?(v82, v77 + v83, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
        swift_endAccess();
        v66 = 0;
LABEL_3:
        specialized Set._Variant.insert(_:)(v279, v66);
        break;
    }

LABEL_4:
    ++v62;
  }

  while (v62 != 18);
  if (*(v281 + 16))
  {
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v241 = type metadata accessor for Logger();
    __swift_project_value_buffer(v241, static WOLog.dataLink);
    v242 = Logger.logObject.getter();
    v243 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v242, v243))
    {
      v244 = swift_slowAlloc();
      v245 = swift_slowAlloc();
      v279[0] = v245;
      *v244 = 136315138;
      lazy protocol witness table accessor for type KnownPublishers and conformance KnownPublishers();

      v246 = Set.description.getter();
      v248 = v247;

      v249 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v246, v248, v279);

      *(v244 + 4) = v249;
      _os_log_impl(&dword_20AEA4000, v242, v243, "ERROR: visited keys is not empty: %s", v244, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v245);
      MEMORY[0x20F2E9420](v245, -1, -1);
      MEMORY[0x20F2E9420](v244, -1, -1);
    }
  }

  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v250 = type metadata accessor for Logger();
  __swift_project_value_buffer(v250, static WOLog.dataLink);
  v251 = Logger.logObject.getter();
  v252 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v251, v252))
  {
    v253 = swift_slowAlloc();
    v254 = swift_slowAlloc();
    v280[0] = v254;
    *v253 = 136315138;
    swift_beginAccess();
    lazy protocol witness table accessor for type KnownPublishers and conformance KnownPublishers();

    v255 = Set.description.getter();
    v257 = v256;

    v258 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v255, v257, v280);

    *(v253 + 4) = v258;
    _os_log_impl(&dword_20AEA4000, v251, v252, "Removed publishers for delta: %s", v253, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v254);
    MEMORY[0x20F2E9420](v254, -1, -1);
    MEMORY[0x20F2E9420](v253, -1, -1);
  }

  outlined init with take of Apple_Workout_Core_WorkoutNotification(v59, v261, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
}

uint64_t closure #1 in DataLinkHealthKitHostConnection.sendWorkoutData(_:dirtyPublishers:closure:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a5;
  v34 = a6;
  v32 = a4;
  v31 = a1;
  v36 = type metadata accessor for DispatchWorkItemFlags();
  v39 = *(v36 - 8);
  v7 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  v9 = &v30[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for DispatchQoS();
  v37 = *(v10 - 8);
  v38 = v10;
  v11 = *(v37 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v30[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v30[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for OS_dispatch_queue();
  v35 = static OS_dispatch_queue.main.getter();
  v18 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  (*(v15 + 16))(v17, a3, v14);
  v20 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v21 = (v16 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = v31;
  *(v22 + 24) = v18;
  (*(v15 + 32))(v22 + v20, v17, v14);
  v23 = v33;
  *(v22 + v21) = v32;
  v24 = (v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8));
  v25 = v34;
  *v24 = v23;
  v24[1] = v25;
  aBlock[4] = partial apply for closure #1 in closure #1 in DataLinkHealthKitHostConnection.sendWorkoutData(_:dirtyPublishers:closure:);
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_34;
  v26 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [KnownPublishers] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v27 = v36;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v28 = v35;
  MEMORY[0x20F2E7580](0, v13, v9, v26);
  _Block_release(v26);

  (*(v39 + 8))(v9, v27);
  return (*(v37 + 8))(v13, v38);
}

uint64_t closure #1 in closure #1 in DataLinkHealthKitHostConnection.sendWorkoutData(_:dirtyPublishers:closure:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static WOLog.dataLink);
    v18 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_20AEA4000, v18, v22, "Message failed to send, not updating last sequences", v23, 2u);
      MEMORY[0x20F2E9420](v23, -1, -1);
    }

    goto LABEL_13;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_lastResetOfSequences;
    swift_beginAccess();
    (*(v9 + 16))(v12, &v14[v15], v8);
    v16 = static Date.< infix(_:_:)();
    (*(v9 + 8))(v12, v8);
    if (v16)
    {
      if (one-time initialization token for dataLink != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, static WOLog.dataLink);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_20AEA4000, v18, v19, "Not acking sequences, received reset from client after we tried to send these.", v20, 2u);
        MEMORY[0x20F2E9420](v20, -1, -1);
      }

LABEL_13:
      return a5();
    }

    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static WOLog.dataLink);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v34 = v29;
      *v28 = 136315138;
      lazy protocol witness table accessor for type KnownPublishers and conformance KnownPublishers();
      v30 = Dictionary.description.getter();
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v34);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_20AEA4000, v26, v27, "Acking %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x20F2E9420](v29, -1, -1);
      MEMORY[0x20F2E9420](v28, -1, -1);
    }

    DataLinkHealthKitHostConnection.updateLastAckedSequences(newAckedSequences:)(a4);
  }

  return a5();
}

uint64_t DataLinkHealthKitHostConnection.updateLastAckedSequences(newAckedSequences:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OS_dispatch_queue();
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v9 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    goto LABEL_31;
  }

  v10 = a1 + 64;
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a1 + 64);
  v14 = OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_lastAckedSequences;

  swift_beginAccess();
  v15 = 0;
  v16 = (v11 + 63) >> 6;
  v17 = v2;
  v46 = v2;
  while (v13)
  {
LABEL_12:
    v19 = __clz(__rbit64(v13)) | (v15 << 6);
    v20 = *(a1 + 56);
    v47 = *(*(a1 + 48) + v19);
    v13 &= v13 - 1;
    v21 = *(v20 + 4 * v19);
    v22 = *(v17 + v14);
    if (*(v22 + 16))
    {
      v23 = *(v17 + v14);

      v24 = specialized __RawDictionaryStorage.find<A>(_:)(v47);
      if ((v25 & 1) == 0)
      {

        goto LABEL_17;
      }

      v26 = *(*(v22 + 56) + 4 * v24);

      v27 = v26 >= v21;
      v17 = v46;
      if (!v27)
      {
LABEL_18:
        v28 = a1;
        swift_beginAccess();
        v29 = *(v17 + v14);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v48 = *(v17 + v14);
        v31 = v48;
        *(v17 + v14) = 0x8000000000000000;
        v32 = specialized __RawDictionaryStorage.find<A>(_:)(v47);
        v34 = v31[2];
        v35 = (v33 & 1) == 0;
        v36 = __OFADD__(v34, v35);
        v37 = v34 + v35;
        if (v36)
        {
          goto LABEL_29;
        }

        v38 = v33;
        if (v31[3] >= v37)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v43 = v32;
            specialized _NativeDictionary.copy()();
            v32 = v43;
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v37, isUniquelyReferenced_nonNull_native);
          v32 = specialized __RawDictionaryStorage.find<A>(_:)(v47);
          if ((v38 & 1) != (v39 & 1))
          {
            goto LABEL_32;
          }
        }

        a1 = v28;
        v40 = v48;
        if (v38)
        {
          *(v48[7] + 4 * v32) = v21;
        }

        else
        {
          v48[(v32 >> 6) + 8] |= 1 << v32;
          *(v40[6] + v32) = v47;
          *(v40[7] + 4 * v32) = v21;
          v41 = v40[2];
          v36 = __OFADD__(v41, 1);
          v42 = v41 + 1;
          if (v36)
          {
            goto LABEL_30;
          }

          v40[2] = v42;
        }

        v17 = v46;
        *(v46 + v14) = v40;
        swift_endAccess();
      }
    }

    else
    {
LABEL_17:
      if (v21)
      {
        goto LABEL_18;
      }
    }
  }

  while (1)
  {
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v18 >= v16)
    {
    }

    v13 = *(v10 + 8 * v18);
    ++v15;
    if (v13)
    {
      v15 = v18;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t closure #1 in DataLinkHealthKitHostConnection.activateLink(started:activated:)(char a1, id a2, uint64_t a3, uint64_t (*a4)(id))
{
  if (a2)
  {
    v6 = a2;
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static WOLog.dataLink);
    v8 = a2;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v9, v10))
    {

      return a4(a2);
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = a2;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_20AEA4000, v9, v10, "Failed to initiate mirroring to companion device: %@", v11, 0xCu);
    _sSo8NSObjectCSgWOhTm_7(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v12, -1, -1);
    MEMORY[0x20F2E9420](v11, -1, -1);
  }

  else
  {
    v16 = [*(a3 + OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_session) associatedWorkoutBuilder];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20B423A90;
    *(inited + 32) = 0xD000000000000024;
    v18 = inited + 32;
    *(inited + 40) = 0x800000020B45FF10;
    *(inited + 72) = MEMORY[0x277D839B0];
    *(inited + 48) = 1;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    _sSo8NSObjectCSgWOhTm_7(v18, &_sSS_yptMd, &_sSS_yptMR);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v25[4] = closure #1 in closure #1 in DataLinkHealthKitHostConnection.activateLink(started:activated:);
    v25[5] = 0;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 1107296256;
    v25[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    v25[3] = &block_descriptor_44;
    v20 = _Block_copy(v25);
    [v16 addMetadata:isa completion:v20];
    _Block_release(v20);

    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static WOLog.dataLink);
    v9 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 67109120;
      *(v23 + 4) = a1 & 1;
      _os_log_impl(&dword_20AEA4000, v9, v22, "Started mirroring to companion device: %{BOOL}d.", v23, 8u);
      MEMORY[0x20F2E9420](v23, -1, -1);
    }
  }

  return a4(a2);
}

void closure #1 in DataLinkHealthKitHostConnection.deactivateLink()(char a1, NSObject *a2)
{
  if (!a2)
  {
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static WOLog.dataLink);
    oslog = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 67109120;
      *(v14 + 4) = a1 & 1;
      _os_log_impl(&dword_20AEA4000, oslog, v13, "Stopped mirroring to companion device: %{BOOL}d.", v14, 8u);
      MEMORY[0x20F2E9420](v14, -1, -1);
    }

    goto LABEL_10;
  }

  v3 = a2;
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static WOLog.dataLink);
  v5 = a2;
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = a2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_20AEA4000, oslog, v6, "Failed to stop mirroring to companion device: %@", v7, 0xCu);
    _sSo8NSObjectCSgWOhTm_7(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);

LABEL_10:
    v15 = oslog;

    goto LABEL_12;
  }

  v15 = a2;

LABEL_12:
}

uint64_t DataLinkHealthKitHostConnection.resetSequences(_:)(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v2 - 8);
  v3 = *(v22 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Apple_Workout_Core_SequenceReset(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  type metadata accessor for OS_dispatch_queue();
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  outlined init with copy of Apple_Workout_Core_NotificationUpdate(a1, &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Apple_Workout_Core_SequenceReset);
  v15 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  outlined init with take of Apple_Workout_Core_WorkoutNotification(&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for Apple_Workout_Core_SequenceReset);
  aBlock[4] = partial apply for closure #1 in DataLinkHealthKitHostConnection.resetSequences(_:);
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_51_0;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [KnownPublishers] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v9, v5, v17);
  _Block_release(v17);

  (*(v22 + 8))(v5, v2);
  return (*(v20 + 8))(v9, v21);
}

void closure #1 in DataLinkHealthKitHostConnection.resetSequences(_:)(uint64_t a1, unint64_t a2)
{
  v3 = type metadata accessor for Apple_Workout_Core_PublisherSequence(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = (&v56 - v9);
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 8);
  MEMORY[0x28223BE20](v11);
  isUniquelyReferenced_nonNull_native = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (one-time initialization token for dataLink != -1)
    {
LABEL_30:
      swift_once();
    }

    v62 = a2;
    v16 = type metadata accessor for Logger();
    v58 = __swift_project_value_buffer(v16, static WOLog.dataLink);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_20AEA4000, v17, v18, "Resetting sequences from client", v19, 2u);
      MEMORY[0x20F2E9420](v19, -1, -1);
    }

    v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11WorkoutCore15KnownPublishersO_s6UInt32VTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v21 = OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_lastAckedSequences;
    v22 = Strong;
    swift_beginAccess();
    v23 = *&v22[v21];
    v61 = v21;
    *&v22[v21] = v20;

    Date.init()();
    v24 = OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_lastResetOfSequences;
    swift_beginAccess();
    v25 = *(v12 + 5);
    v12 = (v12 + 40);
    v25(&v22[v24], isUniquelyReferenced_nonNull_native, v11);
    swift_endAccess();
    v62 = *v62;
    v60 = v62[2];
    if (v60)
    {
      a2 = 0;
      v59 = v62 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      *&v26 = 136446210;
      v56 = v26;
      do
      {
        if (a2 >= v62[2])
        {
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        outlined init with copy of Apple_Workout_Core_NotificationUpdate(&v59[*(v4 + 72) * a2], v10, type metadata accessor for Apple_Workout_Core_PublisherSequence);
        v29 = *(v10 + 8);
        v65 = *v10;
        v66 = v29;
        v30 = Apple_Workout_Core_PublisherKey.publisher.getter();
        if (v30 == 18)
        {
          outlined init with copy of Apple_Workout_Core_NotificationUpdate(v10, v8, type metadata accessor for Apple_Workout_Core_PublisherSequence);
          v31 = Logger.logObject.getter();
          v32 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v31, v32))
          {
            v33 = swift_slowAlloc();
            v11 = swift_slowAlloc();
            *v33 = v56;
            v34 = *v8;
            v35 = v8[8];
            v64 = v11;
            v65 = v34;
            v66 = v35;
            v36 = String.init<A>(describing:)();
            v12 = v10;
            v37 = v4;
            v39 = v38;
            v57 = type metadata accessor for Apple_Workout_Core_PublisherSequence;
            _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v8, type metadata accessor for Apple_Workout_Core_PublisherSequence);
            isUniquelyReferenced_nonNull_native = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v39, &v64);
            v4 = v37;
            v10 = v12;

            *(v33 + 4) = isUniquelyReferenced_nonNull_native;
            _os_log_impl(&dword_20AEA4000, v31, v32, "Ignoring unknown publisher from %{public}s", v33, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v11);
            MEMORY[0x20F2E9420](v11, -1, -1);
            MEMORY[0x20F2E9420](v33, -1, -1);

            v27 = v12;
            v28 = v57;
          }

          else
          {

            v12 = type metadata accessor for Apple_Workout_Core_PublisherSequence;
            _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v8, type metadata accessor for Apple_Workout_Core_PublisherSequence);
            v27 = v10;
            v28 = type metadata accessor for Apple_Workout_Core_PublisherSequence;
          }

          goto LABEL_8;
        }

        v40 = v30;
        v12 = *(v10 + 3);
        v41 = Strong;
        v42 = v61;
        swift_beginAccess();
        v43 = *&v41[v42];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v64 = *&v41[v42];
        v44 = v64;
        *&v41[v42] = 0x8000000000000000;
        v11 = specialized __RawDictionaryStorage.find<A>(_:)(v40);
        v46 = *(v44 + 16);
        v47 = (v45 & 1) == 0;
        v48 = v46 + v47;
        if (__OFADD__(v46, v47))
        {
          goto LABEL_28;
        }

        v49 = v45;
        if (*(v44 + 24) >= v48)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v52 = v64;
            if ((v45 & 1) == 0)
            {
              goto LABEL_22;
            }
          }

          else
          {
            specialized _NativeDictionary.copy()();
            v52 = v64;
            if ((v49 & 1) == 0)
            {
              goto LABEL_22;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v48, isUniquelyReferenced_nonNull_native);
          v50 = specialized __RawDictionaryStorage.find<A>(_:)(v40);
          if ((v49 & 1) != (v51 & 1))
          {
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return;
          }

          v11 = v50;
          v52 = v64;
          if ((v49 & 1) == 0)
          {
LABEL_22:
            v52[(v11 >> 6) + 8] |= 1 << v11;
            *(v52[6] + v11) = v40;
            *(v52[7] + 4 * v11) = v12;
            v53 = v52[2];
            v54 = __OFADD__(v53, 1);
            v55 = v53 + 1;
            if (v54)
            {
              goto LABEL_29;
            }

            v52[2] = v55;
            goto LABEL_24;
          }
        }

        *(v52[7] + 4 * v11) = v12;
LABEL_24:
        *&Strong[v61] = v52;
        swift_endAccess();
        v28 = type metadata accessor for Apple_Workout_Core_PublisherSequence;
        v27 = v10;
LABEL_8:
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v27, v28);
        ++a2;
      }

      while (v60 != a2);
    }
  }
}

void DataLinkHealthKitHostConnection.handleProtobufCommand(_:)(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static WOLog.dataLink);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v34 = v9;
    *v8 = 136446210;
    v32 = v3;
    LOBYTE(v33) = v4;
    v10 = String.init<A>(describing:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v34);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_20AEA4000, v6, v7, "Did receive command %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x20F2E9420](v9, -1, -1);
    MEMORY[0x20F2E9420](v8, -1, -1);
  }

  if (!v4)
  {
    type metadata accessor for DataLinkError();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type DataLinkError and conformance DataLinkError, type metadata accessor for DataLinkError);
    v17 = swift_allocError();
    v19 = v18;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore27MirroredHostMessageProtocol_pXmT04hostE4Type_AA08DataLinkC17ClientExpectationV06clientL0tMd, &_s11WorkoutCore27MirroredHostMessageProtocol_pXmT04hostE4Type_AA08DataLinkC17ClientExpectationV06clientL0tMR);
    (*(*(v20 - 8) + 56))(v19, 2, 5, v20);
    v21 = 0;
    goto LABEL_26;
  }

  v13 = v2 + OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_commandHandler;
  v15 = *(v2 + OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_commandHandler);
  v14 = *(v13 + 8);
  if (v3 > 3)
  {
    if (v3 <= 5)
    {
      if (v3 == 4)
      {
        v16 = 4;
      }

      else
      {
        v16 = 5;
      }
    }

    else if (v3 == 6)
    {
      v16 = 6;
    }

    else if (v3 == 7)
    {
      v16 = 7;
    }

    else
    {
      v16 = 8;
    }

    goto LABEL_24;
  }

  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v16 = 2;
    }

    else
    {
      v16 = 3;
    }

    goto LABEL_24;
  }

  if (v3)
  {
    v16 = 1;
LABEL_24:
    LOBYTE(v32) = v16;
    goto LABEL_25;
  }

  LOBYTE(v32) = 0;
LABEL_25:

  v21 = v15(&v32);
  v17 = v22;

LABEL_26:
  v23 = v17;
  v24 = v17;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v33 = v17;
    v34 = v28;
    *v27 = 136315138;
    LOBYTE(v32) = v21 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb_s5Error_pSgtMd, &_sSb_s5Error_pSgtMR);
    v29 = String.init<A>(describing:)();
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v34);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_20AEA4000, v25, v26, "Handled command: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x20F2E9420](v28, -1, -1);
    MEMORY[0x20F2E9420](v27, -1, -1);
  }

  else
  {
  }
}

void specialized closure #1 in DataLinkHealthKitHostConnection.sendMessage(_:closure:)(int a1, NSObject *a2)
{
  if (a2)
  {
    v3 = a2;
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static WOLog.dataLink);
    v5 = a2;
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = a2;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_20AEA4000, oslog, v6, "Error sending DataLinkMessage: %@", v7, 0xCu);
      _sSo8NSObjectCSgWOhTm_7(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v8, -1, -1);
      MEMORY[0x20F2E9420](v7, -1, -1);

      v11 = oslog;
    }

    else
    {

      v11 = a2;
    }
  }
}

uint64_t closure #1 in DataLinkHealthKitHostConnection.sendMessage(_:closure:)(char a1, id a2, uint64_t (*a3)(void))
{
  if (a2)
  {
    v6 = a2;
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static WOLog.dataLink);
    v8 = a2;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = a2;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&dword_20AEA4000, v9, v10, "Error sending DataLinkMessage: %@", v11, 0xCu);
      _sSo8NSObjectCSgWOhTm_7(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v12, -1, -1);
      MEMORY[0x20F2E9420](v11, -1, -1);
    }

    else
    {
    }
  }

  return a3(a1 & 1);
}

uint64_t DataLinkHealthKitHostConnection.sendDataLinkMessage(_:closure:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  aBlock[6] = *MEMORY[0x277D85DE8];
  type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type Apple_Workout_Core_DataLinkMessage and conformance Apple_Workout_Core_DataLinkMessage, type metadata accessor for Apple_Workout_Core_DataLinkMessage);
  result = Message.serializedData(partial:)();
  if (!v4)
  {
    v10 = result;
    v11 = v9;
    v12.super.isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(v10, v11);
    aBlock[0] = 0;
    v13 = [(objc_class *)v12.super.isa compressedDataUsingAlgorithm:0 error:aBlock];
    v14 = aBlock[0];
    if (v13)
    {
      v15 = v13;
      v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;
    }

    else
    {
      v19 = v14;
      v20 = _convertNSErrorToError(_:)();

      swift_willThrow();
      if (one-time initialization token for dataLink != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      __swift_project_value_buffer(v21, static WOLog.dataLink);
      v22 = v20;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v25 = 138412290;
        v27 = v20;
        v28 = _swift_stdlib_bridgeErrorToNSError();
        *(v25 + 4) = v28;
        *v26 = v28;
        _os_log_impl(&dword_20AEA4000, v23, v24, "Failed to compress data: %@", v25, 0xCu);
        _sSo8NSObjectCSgWOhTm_7(v26, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x20F2E9420](v26, -1, -1);
        MEMORY[0x20F2E9420](v25, -1, -1);
      }

      v15 = v12.super.isa;
      v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v29;
    }

    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static WOLog.dataLink);
    outlined copy of Data._Representation(v16, v18);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v31, v32))
    {
      outlined consume of Data._Representation(v16, v18);
LABEL_24:

      v40 = *(v5 + OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_healthMonitor);
      DataLinkHealthMonitor.didTransmitData(_:)(v16, v18);
      v41 = *(v5 + OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_session);
      isa = Data._bridgeToObjectiveC()().super.isa;
      v43 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v44 = swift_allocObject();
      v44[2] = v43;
      v44[3] = a2;
      v44[4] = a3;
      aBlock[4] = partial apply for closure #1 in DataLinkHealthKitHostConnection.sendDataLinkMessage(_:closure:);
      aBlock[5] = v44;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_71_2;
      v45 = _Block_copy(aBlock);

      [v41 sendDataToRemoteWorkoutSession:isa completion:v45];
      _Block_release(v45);

      result = outlined consume of Data._Representation(v16, v18);
      goto LABEL_25;
    }

    v33 = swift_slowAlloc();
    *v33 = 134217984;
    v34 = v18 >> 62;
    if ((v18 >> 62) > 1)
    {
      if (v34 != 2)
      {
        v35 = 0;
        goto LABEL_23;
      }

      v37 = *(v16 + 16);
      v36 = *(v16 + 24);
      v38 = __OFSUB__(v36, v37);
      v35 = v36 - v37;
      if (!v38)
      {
        goto LABEL_23;
      }

      __break(1u);
    }

    else if (!v34)
    {
      v35 = BYTE6(v18);
LABEL_23:
      *(v33 + 4) = v35;
      v39 = v33;
      outlined consume of Data._Representation(v16, v18);
      _os_log_impl(&dword_20AEA4000, v31, v32, "Sending data of size %ld", v39, 0xCu);
      MEMORY[0x20F2E9420](v39, -1, -1);
      goto LABEL_24;
    }

    LODWORD(v35) = HIDWORD(v16) - v16;
    if (__OFSUB__(HIDWORD(v16), v16))
    {
      __break(1u);
    }

    v35 = v35;
    goto LABEL_23;
  }

LABEL_25:
  v46 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t DataLinkHealthKitHostConnection.sendMirroredHostMessage(_:closure:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v19[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  v16 = *(*(v15 - 8) + 56);
  v16(v14, 1, 1, v15);
  v17 = &v14[*(v11 + 28)];
  UnknownStorage.init()();
  outlined init with copy of Apple_Workout_Core_NotificationUpdate(a1, v9, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
  _sSo8NSObjectCSgWOhTm_7(v14, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_WorkoutNotification(v9, v14, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
  swift_storeEnumTagMultiPayload();
  v16(v14, 0, 1, v15);
  DataLinkHealthKitHostConnection.sendDataLinkMessage(_:closure:)(v14, a2, a3);
  return _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v14, type metadata accessor for Apple_Workout_Core_DataLinkMessage);
}

void closure #1 in DataLinkHealthKitHostConnection.sendDataLinkMessage(_:closure:)(char a1, id a2, uint64_t a3, void (*a4)(void, id))
{
  if (a2)
  {
    v7 = a2;
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static WOLog.dataLink);
    v9 = a2;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = a2;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_20AEA4000, v10, v11, "Error sending data: %@", v12, 0xCu);
      _sSo8NSObjectCSgWOhTm_7(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v13, -1, -1);
      MEMORY[0x20F2E9420](v12, -1, -1);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v17 = *(Strong + OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_healthMonitor);
      v18 = Strong;

      DataLinkHealthMonitor.didReceiveError()();
    }

    v19 = a2;
    a4(a1 & 1, a2);
  }

  else
  {
    swift_beginAccess();
    v20 = swift_unknownObjectWeakLoadStrong();
    if (v20)
    {
      v21 = *(v20 + OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_healthMonitor);
      v22 = v20;

      DataLinkHealthMonitor.didReceiveAck()();
    }

    a4(a1 & 1, 0);
  }
}

void protocol witness for DataLinkHostConnection.deactivateLink() in conformance DataLinkHealthKitHostConnection()
{
  v1 = *(*v0 + OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_session);
  v3[4] = closure #1 in DataLinkHealthKitHostConnection.deactivateLink();
  v3[5] = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 1107296256;
  v3[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  v3[3] = &block_descriptor_39;
  v2 = _Block_copy(v3);
  [v1 stopMirroringToCompanionDeviceWithCompletion_];
  _Block_release(v2);
}

uint64_t DataLinkHealthKitHostConnection.handleMirroredClientMessage(_:)(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v2 - 8);
  v31 = v2;
  v3 = *(v30 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v28 = *(v6 - 8);
  v29 = v6;
  v7 = *(v28 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - v15;
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  outlined init with copy of Apple_Workout_Core_NotificationUpdate(a1, v16, type metadata accessor for Apple_Workout_Core_MirroredClientMessage);
  outlined init with copy of Apple_Workout_Core_NotificationUpdate(v16, v14, type metadata accessor for Apple_Workout_Core_MirroredClientMessage);
  v18 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  outlined init with take of Apple_Workout_Core_WorkoutNotification(v16, v19 + v18, type metadata accessor for Apple_Workout_Core_MirroredClientMessage);
  v20 = objc_opt_self();

  if ([v20 isMainThread])
  {
    closure #1 in DataLinkHealthKitHostConnection.handleMirroredClientMessage(_:)(v17, v14);
  }

  else
  {
    type metadata accessor for OS_dispatch_queue();
    v27 = static OS_dispatch_queue.main.getter();
    v21 = swift_allocObject();
    *(v21 + 16) = partial apply for closure #1 in DataLinkHealthKitHostConnection.handleMirroredClientMessage(_:);
    *(v21 + 24) = v19;
    aBlock[4] = _s11WorkoutCore17DispatchUtilitiesC22ensureMainQueueOrAsync5blockyyyc_tFZyyScMYccfU_TA_5;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_61;
    v22 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [KnownPublishers] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v23 = v31;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v24 = v27;
    MEMORY[0x20F2E7580](0, v9, v5, v22);
    _Block_release(v22);

    (*(v30 + 8))(v5, v23);
    (*(v28 + 8))(v9, v29);
  }

  _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v14, type metadata accessor for Apple_Workout_Core_MirroredClientMessage);
}

uint64_t closure #1 in DataLinkHealthKitHostConnection.handleMirroredClientMessage(_:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v33 - v17;
  v19 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v33 - v25;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = result;
    outlined init with copy of Apple_Workout_Core_DataLinkMessage.OneOf_Message?(a2, v18, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
    if ((*(v20 + 48))(v18, 1, v19) == 1)
    {

      return _sSo8NSObjectCSgWOhTm_7(v18, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
    }

    outlined init with take of Apple_Workout_Core_WorkoutNotification(v18, v26, type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message);
    outlined init with copy of Apple_Workout_Core_NotificationUpdate(v26, v24, type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        outlined init with take of Apple_Workout_Core_WorkoutNotification(v24, v10, type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart);
        DataLinkHealthKitHostConnection.handleMirroredClientPrecisionStart(_:)(v10);

        v31 = type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart;
        v32 = v10;
      }

      else
      {
        outlined init with take of Apple_Workout_Core_WorkoutNotification(v24, v6, type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse);
        DataLinkHealthKitHostConnection.handleMirroredClientAlertStackResponse(_:)(v6);

        v31 = type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse;
        v32 = v6;
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        v30 = v24[8];
        v34 = *v24;
        v35 = v30;
        DataLinkHealthKitHostConnection.handleMirroredClientCommand(_:)(&v34);

        return _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v26, type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message);
      }

      outlined init with take of Apple_Workout_Core_WorkoutNotification(v24, v14, type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse);
      DataLinkHealthKitHostConnection.handleMirroredClientMachTimestampResponse(_:)(v14);

      v31 = type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse;
      v32 = v14;
    }

    _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v32, v31);
    return _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v26, type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message);
  }

  return result;
}

void DataLinkHealthKitHostConnection.handleMirroredClientCommand(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *a1;
  v10 = *(a1 + 8);
  type metadata accessor for OS_dispatch_queue();
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  LOBYTE(a1) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if ((a1 & 1) == 0)
  {
    __break(1u);
LABEL_17:
    swift_once();
    goto LABEL_12;
  }

  v11 = v2 + OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_mirroredHostDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v11 + 8);
    v26 = v9;
    v27 = v10;
    MirroredClientCommand.init(protobuf:)(&v26, &v28);
    v13 = v28;
    if (v28 == 3)
    {
      if (one-time initialization token for dataLink != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, static WOLog.dataLink);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 134217984;
        if (v10)
        {
          v9 = qword_20B43B518[v9];
        }

        *(v17 + 4) = v9;
        v18 = v16;
        v19 = v17;
        _os_log_impl(&dword_20AEA4000, v15, v18, "[mirrored] handleMirroredClientCommand cannot convert protobuf: %ld", v17, 0xCu);
        MEMORY[0x20F2E9420](v19, -1, -1);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      ObjectType = swift_getObjectType();
      LOBYTE(v26) = v13;
      (*(v12 + 8))(&v26, closure #1 in DataLinkHealthKitHostConnection.handleMirroredClientCommand(_:), 0, ObjectType, v12);
      swift_unknownObjectRelease();
    }

    return;
  }

  if (one-time initialization token for dataLink != -1)
  {
    goto LABEL_17;
  }

LABEL_12:
  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static WOLog.dataLink);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_20AEA4000, v21, v22, "[mirrored] handleMirroredClientCommand mirroredHostDelegate is not set", v23, 2u);
    MEMORY[0x20F2E9420](v23, -1, -1);
  }
}

void DataLinkHealthKitHostConnection.handleMirroredClientMachTimestampResponse(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v24[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v24[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OS_dispatch_queue();
  *v12 = static OS_dispatch_queue.main.getter();
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  v13 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  v14 = v2 + OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_mirroredHostDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = *(v14 + 8);
    outlined init with copy of Apple_Workout_Core_NotificationUpdate(a1, v7, type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse);
    v16 = *v7;
    v17 = v7[1];
    _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v7, type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse);
    ObjectType = swift_getObjectType();
    v24[0] = v16;
    v24[1] = v17;
    (*(v15 + 16))(v24, closure #1 in DataLinkHealthKitHostConnection.handleMirroredClientMachTimestampResponse(_:), 0, ObjectType, v15);
    swift_unknownObjectRelease();
    return;
  }

  if (one-time initialization token for dataLink != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static WOLog.dataLink);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_20AEA4000, v20, v21, "[mirrored] handleMirroredClientMachTimestampResponse mirroredHostDelegate is not set", v22, 2u);
    MEMORY[0x20F2E9420](v22, -1, -1);
  }
}

void DataLinkHealthKitHostConnection.handleMirroredClientPrecisionStart(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for MirroredClientPrecisionStart();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OS_dispatch_queue();
  *v16 = static OS_dispatch_queue.main.getter();
  (*(v13 + 104))(v16, *MEMORY[0x277D85200], v12);
  v17 = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v16, v12);
  if ((v17 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  v18 = v2 + OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_mirroredHostDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v19 = *(v18 + 8);
    outlined init with copy of Apple_Workout_Core_NotificationUpdate(a1, v7, type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart);
    v20 = *v7;
    Date.init(timeIntervalSinceReferenceDate:)();
    _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v7, type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart);
    ObjectType = swift_getObjectType();
    (*(v19 + 24))(v11, closure #1 in DataLinkHealthKitHostConnection.handleMirroredClientPrecisionStart(_:), 0, ObjectType, v19);
    swift_unknownObjectRelease();
    _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v11, type metadata accessor for MirroredClientPrecisionStart);
    return;
  }

  if (one-time initialization token for dataLink != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static WOLog.dataLink);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_20AEA4000, v23, v24, "[mirrored] handleMirroredClientPrecisionStart mirroredHostDelegate is not set", v25, 2u);
    MEMORY[0x20F2E9420](v25, -1, -1);
  }
}

void DataLinkHealthKitHostConnection.handleMirroredClientAlertStackResponse(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v26[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v26[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OS_dispatch_queue();
  *v12 = static OS_dispatch_queue.main.getter();
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  v13 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  v14 = v2 + OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_mirroredHostDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = *(v14 + 8);
    outlined init with copy of Apple_Workout_Core_NotificationUpdate(a1, v7, type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse);
    v17 = *v7;
    v16 = *(v7 + 1);
    v18 = v7[16];
    v19 = *(v7 + 5);

    _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v7, type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse);
    ObjectType = swift_getObjectType();
    v26[0] = v17;
    v26[1] = v16;
    v27 = v18;
    v28 = v19;
    (*(v15 + 32))(v26, closure #1 in DataLinkHealthKitHostConnection.handleMirroredClientAlertStackResponse(_:), 0, ObjectType, v15);

    swift_unknownObjectRelease();
    return;
  }

  if (one-time initialization token for dataLink != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static WOLog.dataLink);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_20AEA4000, v22, v23, "[mirrored] handleMirroredClientAlertStackResponse mirroredHostDelegate is not set", v24, 2u);
    MEMORY[0x20F2E9420](v24, -1, -1);
  }
}

void closure #1 in DataLinkHealthKitHostConnection.handleMirroredClientCommand(_:)(char a1, void *a2, const char *a3)
{
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static WOLog.dataLink);
  v7 = a2;
  oslog = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 67109378;
    *(v9 + 4) = a1 & 1;
    *(v9 + 8) = 2112;
    if (a2)
    {
      v11 = a2;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      v13 = v12;
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    *(v9 + 10) = v12;
    *v10 = v13;
    _os_log_impl(&dword_20AEA4000, oslog, v8, a3, v9, 0x12u);
    _sSo8NSObjectCSgWOhTm_7(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v10, -1, -1);
    MEMORY[0x20F2E9420](v9, -1, -1);
  }
}

uint64_t getEnumTagSinglePayload for KnownPublishers(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for KnownPublishers(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KnownPublishers and conformance KnownPublishers()
{
  result = lazy protocol witness table cache variable for type KnownPublishers and conformance KnownPublishers;
  if (!lazy protocol witness table cache variable for type KnownPublishers and conformance KnownPublishers)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KnownPublishers and conformance KnownPublishers);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KnownPublishers and conformance KnownPublishers;
  if (!lazy protocol witness table cache variable for type KnownPublishers and conformance KnownPublishers)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KnownPublishers and conformance KnownPublishers);
  }

  return result;
}

uint64_t protocol witness for DataLinkMirroredHostConnectionProtocol.mirroredHostDelegate.getter in conformance DataLinkHealthKitHostConnection()
{
  v1 = *v0 + OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_mirroredHostDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t protocol witness for DataLinkMirroredHostConnectionProtocol.mirroredHostDelegate.setter in conformance DataLinkHealthKitHostConnection(uint64_t a1, uint64_t a2)
{
  v4 = *v2 + OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_mirroredHostDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*protocol witness for DataLinkMirroredHostConnectionProtocol.mirroredHostDelegate.modify in conformance DataLinkHealthKitHostConnection(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v6 = OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_mirroredHostDelegate;
  *(v3 + 40) = *v1;
  *(v3 + 48) = v6;
  v7 = v5 + v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = *(v7 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v9;
  return protocol witness for DataLinkMirroredHostConnectionProtocol.mirroredHostDelegate.modify in conformance DataLinkHealthKitHostConnection;
}

void protocol witness for DataLinkMirroredHostConnectionProtocol.mirroredHostDelegate.modify in conformance DataLinkHealthKitHostConnection(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t specialized Set._Variant.remove(_:)(char a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 40);
  Hasher.init(_seed:)();
  KnownPublishers.rawValue.getter(a1);
  String.hash(into:)();

  v6 = Hasher._finalize()();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 18;
  }

  v20 = v1;
  v9 = ~v7;
  while (2)
  {
    v10 = 0xED00007265687369;
    v11 = 0x6C6275506C616F67;
    switch(*(*(v4 + 48) + v8))
    {
      case 1:
        v11 = 0xD00000000000001BLL;
        v10 = 0x800000020B4541D0;
        break;
      case 2:
        v11 = 0xD000000000000016;
        v10 = 0x800000020B4541F0;
        break;
      case 3:
        break;
      case 4:
        v11 = 0xD000000000000019;
        v10 = 0x800000020B454220;
        break;
      case 5:
        v11 = 0xD000000000000019;
        v10 = 0x800000020B454240;
        break;
      case 6:
        v11 = 0xD000000000000014;
        v10 = 0x800000020B454260;
        break;
      case 7:
        v11 = 0xD000000000000019;
        v10 = 0x800000020B454280;
        break;
      case 8:
        v11 = 0xD00000000000001ALL;
        v10 = 0x800000020B4542A0;
        break;
      case 9:
        v11 = 0xD000000000000010;
        v10 = 0x800000020B4542C0;
        break;
      case 0xA:
        v11 = 0xD000000000000015;
        v10 = 0x800000020B4542E0;
        break;
      case 0xB:
        v11 = 0xD000000000000020;
        v10 = 0x800000020B454300;
        break;
      case 0xC:
        v11 = 0xD000000000000018;
        v10 = 0x800000020B454330;
        break;
      case 0xD:
        v11 = 0xD00000000000001ALL;
        v10 = 0x800000020B454350;
        break;
      case 0xE:
        v11 = 0xD00000000000001CLL;
        v10 = 0x800000020B454370;
        break;
      case 0xF:
        v10 = 0xE800000000000000;
        v11 = 0x6C6576654C706F54;
        break;
      case 0x10:
        v11 = 0xD000000000000015;
        v10 = 0x800000020B4543A0;
        break;
      case 0x11:
        v11 = 0xD00000000000001ALL;
        v10 = 0x800000020B4543C0;
        break;
      default:
        v11 = 0xD00000000000001FLL;
        v10 = 0x800000020B4541B0;
        break;
    }

    v12 = 0x6C6275506C616F67;
    v13 = 0xED00007265687369;
    switch(a1)
    {
      case 1:
        v13 = 0x800000020B4541D0;
        if (v11 == 0xD00000000000001BLL)
        {
          goto LABEL_54;
        }

        goto LABEL_55;
      case 2:
        v13 = 0x800000020B4541F0;
        if (v11 != 0xD000000000000016)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      case 3:
        goto LABEL_53;
      case 4:
        v13 = 0x800000020B454220;
        if (v11 != 0xD000000000000019)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      case 5:
        v13 = 0x800000020B454240;
        if (v11 != 0xD000000000000019)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      case 6:
        v13 = 0x800000020B454260;
        if (v11 != 0xD000000000000014)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      case 7:
        v13 = 0x800000020B454280;
        if (v11 != 0xD000000000000019)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      case 8:
        v13 = 0x800000020B4542A0;
        if (v11 != 0xD00000000000001ALL)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      case 9:
        v13 = 0x800000020B4542C0;
        if (v11 != 0xD000000000000010)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      case 10:
        v12 = 0xD000000000000015;
        v13 = 0x800000020B4542E0;
LABEL_53:
        if (v11 == v12)
        {
          goto LABEL_54;
        }

        goto LABEL_55;
      case 11:
        v13 = 0x800000020B454300;
        if (v11 != 0xD000000000000020)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      case 12:
        v13 = 0x800000020B454330;
        if (v11 != 0xD000000000000018)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      case 13:
        v13 = 0x800000020B454350;
        if (v11 != 0xD00000000000001ALL)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      case 14:
        v13 = 0x800000020B454370;
        if (v11 != 0xD00000000000001CLL)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      case 15:
        v13 = 0xE800000000000000;
        if (v11 != 0x6C6576654C706F54)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      case 16:
        v13 = 0x800000020B4543A0;
        if (v11 != 0xD000000000000015)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      case 17:
        v13 = 0x800000020B4543C0;
        if (v11 != 0xD00000000000001ALL)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      default:
        v13 = 0x800000020B4541B0;
        if (v11 != 0xD00000000000001FLL)
        {
          goto LABEL_55;
        }

LABEL_54:
        if (v10 != v13)
        {
LABEL_55:
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v14)
          {
            goto LABEL_62;
          }

          v8 = (v8 + 1) & v9;
          if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
          {
            return 18;
          }

          continue;
        }

LABEL_62:
        v16 = *v2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v18 = *v2;
        v21 = *v2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized _NativeSet.copy()();
          v18 = v21;
        }

        v15 = *(*(v18 + 48) + v8);
        specialized _NativeSet._delete(at:)(v8);
        *v20 = v21;
        return v15;
    }
  }
}

uint64_t specialized Set._Variant.remove(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = MEMORY[0x20F2E7FD0](*(*v1 + 40), a1);
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  v9 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v1;
  v13 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v11 = v13;
  }

  v12 = *(*(v11 + 48) + 8 * v6);
  specialized _NativeSet._delete(at:)(v6);
  result = v12;
  *v1 = v13;
  return result;
}

uint64_t specialized Set._Variant.remove(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  specialized _NativeSet._delete(at:)(v9);
  *v2 = v20;
  return v13;
}

unint64_t specialized _NativeSet._delete(at:)(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + v6);
        Hasher.init(_seed:)();
        String.hash(into:)();

        v13 = Hasher._finalize()() & v7;
        if (v2 >= v10)
        {
          if (v13 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v13 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v13)
        {
LABEL_11:
          v14 = *(v3 + 48);
          v15 = (v14 + v2);
          v16 = (v14 + v6);
          if (v2 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = MEMORY[0x20F2E7FD0](*(v3 + 40), *v11) & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v15 = Hasher._finalize()();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

id specialized DataLinkHealthKitHostConnection.init(session:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - v6;
  *&v1[OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_mirroredHostDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_healthMonitor;
  v9 = type metadata accessor for DataLinkHealthMonitor();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *&v1[v8] = DataLinkHealthMonitor.init()();
  v12 = OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_currentSequences;
  v13 = MEMORY[0x277D84F90];
  *&v2[v12] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11WorkoutCore15KnownPublishersO_s6UInt32VTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v14 = OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_lastAckedSequences;
  *&v2[v14] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11WorkoutCore15KnownPublishersO_s6UInt32VTt0g5Tf4g_n(v13);
  static Date.distantPast.getter();
  *&v2[OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_session] = a1;
  v15 = [a1 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = type metadata accessor for UUID();
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = type metadata accessor for DataLinkRecorder();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  *&v2[OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_recorder] = DataLinkRecorder.init(uuid:)(v7);
  v20 = &v2[OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_commandHandler];
  *v20 = closure #1 in variable initialization expression of static DataLinkHealthKitHostConnection.defaultCommandHandler;
  v20[1] = 0;
  v21 = type metadata accessor for DataLinkHealthKitHostConnection();
  v23.receiver = v2;
  v23.super_class = v21;
  return objc_msgSendSuper2(&v23, sel_init);
}

uint64_t specialized KnownPublishers.init(rawValue:)()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x12)
  {
    return 18;
  }

  else
  {
    return v0;
  }
}

uint64_t _sxRi_zRi0_zlys6UInt32VIsegr_SgWOe(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t specialized static Apple_Workout_Core_PublisherSequence.entries(sequences:)(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Workout_Core_PublisherSequence(0);
  v24 = *(v2 - 8);
  v25 = v2;
  v3 = *(v24 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - v7;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;

  v14 = 0;
  v15 = MEMORY[0x277D84F90];
  if (v11)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v12)
    {

      return v15;
    }

    v11 = *(a1 + 64 + 8 * v16);
    ++v14;
    if (v11)
    {
      v14 = v16;
      do
      {
LABEL_8:
        v17 = __clz(__rbit64(v11)) | (v14 << 6);
        v18 = *(*(a1 + 48) + v17);
        v11 &= v11 - 1;
        v19 = *(*(a1 + 56) + 4 * v17);
        *v8 = 0;
        v8[8] = 1;
        v20 = &v8[*(v25 + 24)];
        UnknownStorage.init()();
        *(v8 + 3) = v19;
        switch(v18)
        {
          case 1:
            v21 = 3;
            break;
          case 2:
            v21 = 4;
            break;
          case 3:
            v21 = 15;
            break;
          case 4:
            v21 = 5;
            break;
          case 5:
            v21 = 6;
            break;
          case 6:
            v21 = 7;
            break;
          case 7:
            v21 = 16;
            break;
          case 8:
            v21 = 8;
            break;
          case 9:
            v21 = 9;
            break;
          case 10:
            v21 = 10;
            break;
          case 11:
            v21 = 17;
            break;
          case 12:
            v21 = 11;
            break;
          case 13:
            v21 = 12;
            break;
          case 14:
            v21 = 13;
            break;
          case 15:
            v21 = 1;
            break;
          case 16:
            v21 = 14;
            break;
          case 17:
            v21 = 18;
            break;
          default:
            v21 = 2;
            break;
        }

        *v8 = v21;
        v8[8] = 1;
        outlined init with copy of Apple_Workout_Core_NotificationUpdate(v8, v6, type metadata accessor for Apple_Workout_Core_PublisherSequence);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15[2] + 1, 1, v15);
        }

        v23 = v15[2];
        v22 = v15[3];
        if (v23 >= v22 >> 1)
        {
          v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v22 > 1, v23 + 1, 1, v15);
        }

        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v8, type metadata accessor for Apple_Workout_Core_PublisherSequence);
        v15[2] = v23 + 1;
        result = outlined init with take of Apple_Workout_Core_WorkoutNotification(v6, v15 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v23, type metadata accessor for Apple_Workout_Core_PublisherSequence);
      }

      while (v11);
    }
  }

  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in DataLinkHealthKitHostConnection.sendWorkoutData(_:dirtyPublishers:closure:)(int a1)
{
  v3 = *(type metadata accessor for Date() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + 16);
  v7 = *(v1 + v5);
  v8 = (v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return closure #1 in DataLinkHealthKitHostConnection.sendWorkoutData(_:dirtyPublishers:closure:)(a1, v6, v1 + v4, v7, v9, v10);
}

uint64_t partial apply for closure #1 in closure #1 in DataLinkHealthKitHostConnection.sendWorkoutData(_:dirtyPublishers:closure:)()
{
  v1 = *(type metadata accessor for Date() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + v3);
  v7 = v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return closure #1 in closure #1 in DataLinkHealthKitHostConnection.sendWorkoutData(_:dirtyPublishers:closure:)(v4, v5, v0 + v2, v6, v8);
}

uint64_t lazy protocol witness table accessor for type [KnownPublishers] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t outlined assign with take of Apple_Workout_Core_WorkoutBuddyStatePublisher?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t partial apply for closure #1 in DataLinkHealthKitHostConnection.activateLink(started:activated:)(char a1, void *a2)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  return closure #1 in DataLinkHealthKitHostConnection.activateLink(started:activated:)(a1, a2, *(v2 + 16), *(v2 + 24));
}

uint64_t specialized DataLinkHealthKitHostConnection.sendMirroredHostMessage(_:closure:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  v21[0] = a3;
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  v17 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  v18 = *(*(v17 - 8) + 56);
  v18(v15, 1, 1, v17);
  v19 = *(v12 + 28);

  UnknownStorage.init()();
  outlined init with copy of Apple_Workout_Core_NotificationUpdate(a1, v10, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
  _sSo8NSObjectCSgWOhTm_7(v15, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_WorkoutNotification(v10, v15, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
  swift_storeEnumTagMultiPayload();
  v18(v15, 0, 1, v17);
  DataLinkHealthKitHostConnection.sendDataLinkMessage(_:closure:)(v15, partial apply for closure #1 in DataLinkHost.sendMirroredHostSummaryUpdate(_:acknowledged:), v16);
  _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v15, type metadata accessor for Apple_Workout_Core_DataLinkMessage);
}

void specialized DataLinkHealthKitHostConnection.workoutSession(_:didChangeTo:from:date:)()
{
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static WOLog.dataLink);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v11 = v3;
    *v2 = 136315394;
    type metadata accessor for HKWorkoutSessionState(0);
    v4 = String.init<A>(describing:)();
    v6 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, &v11);

    *(v2 + 4) = v6;
    *(v2 + 12) = 2080;
    v7 = String.init<A>(describing:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v11);

    *(v2 + 14) = v9;
    _os_log_impl(&dword_20AEA4000, oslog, v1, "Workout did change to %s from %s", v2, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v3, -1, -1);
    MEMORY[0x20F2E9420](v2, -1, -1);
  }

  else
  {
  }
}

void specialized DataLinkHealthKitHostConnection.workoutSession(_:didFailWithError:)(void *a1)
{
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.dataLink);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = a1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_20AEA4000, oslog, v4, "Workout did fail with error %@", v5, 0xCu);
    _sSo8NSObjectCSgWOhTm_7(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v6, -1, -1);
    MEMORY[0x20F2E9420](v5, -1, -1);
  }
}

uint64_t specialized DataLinkHealthKitHostConnection.workoutSession(_:didReceiveDataFromRemoteDevice:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v44 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Apple_Workout_Core_SequenceReset(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v45 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  v43 = *(v45 - 8);
  v15 = *(v43 + 64);
  v16 = MEMORY[0x28223BE20](v45);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v42 - v19;
  v21 = type metadata accessor for BinaryDecodingOptions();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v42 - v28;
  v48 = a1;
  v49 = a2;
  v47 = 0;
  memset(v46, 0, sizeof(v46));
  outlined copy of Data._Representation(a1, a2);
  BinaryDecodingOptions.init()();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type Apple_Workout_Core_DataLinkMessage and conformance Apple_Workout_Core_DataLinkMessage, type metadata accessor for Apple_Workout_Core_DataLinkMessage);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  v30 = v44;
  outlined init with take of Apple_Workout_Core_WorkoutNotification(v27, v29, type metadata accessor for Apple_Workout_Core_DataLinkMessage);
  outlined init with copy of Apple_Workout_Core_DataLinkMessage.OneOf_Message?(v29, v14, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  if ((*(v43 + 48))(v14, 1, v45) == 1)
  {
    _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v29, type metadata accessor for Apple_Workout_Core_DataLinkMessage);
    return _sSo8NSObjectCSgWOhTm_7(v14, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  }

  outlined init with take of Apple_Workout_Core_WorkoutNotification(v14, v20, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
  outlined init with copy of Apple_Workout_Core_NotificationUpdate(v20, v18, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 6)
  {
    outlined init with take of Apple_Workout_Core_WorkoutNotification(v18, v30, type metadata accessor for Apple_Workout_Core_MirroredClientMessage);
    DataLinkHealthKitHostConnection.handleMirroredClientMessage(_:)(v30);
    v34 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage;
    v35 = v30;
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 4)
  {
    outlined init with take of Apple_Workout_Core_WorkoutNotification(v18, v10, type metadata accessor for Apple_Workout_Core_SequenceReset);
    DataLinkHealthKitHostConnection.resetSequences(_:)(v10);
    v34 = type metadata accessor for Apple_Workout_Core_SequenceReset;
    v35 = v10;
LABEL_9:
    _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v35, v34);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static WOLog.dataLink);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_20AEA4000, v39, v40, "Ignoring unexpected message", v41, 2u);
      MEMORY[0x20F2E9420](v41, -1, -1);
    }

    _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v20, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
    _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v29, type metadata accessor for Apple_Workout_Core_DataLinkMessage);
    v37 = v18;
    v36 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message;
    return _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v37, v36);
  }

  v33 = v18[8];
  *&v46[0] = *v18;
  BYTE8(v46[0]) = v33;
  DataLinkHealthKitHostConnection.handleProtobufCommand(_:)(v46);
LABEL_10:
  _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v20, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
  v36 = type metadata accessor for Apple_Workout_Core_DataLinkMessage;
  v37 = v29;
  return _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v37, v36);
}

void specialized DataLinkHealthKitHostConnection.workoutSession(_:didDisconnectFromRemoteDeviceWithError:)(void *a1)
{
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.dataLink);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    if (a1)
    {
      v7 = a1;
      v8 = _swift_stdlib_bridgeErrorToNSError();
      v9 = v8;
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    *(v5 + 4) = v8;
    *v6 = v9;
    _os_log_impl(&dword_20AEA4000, oslog, v4, "We received a disconnection notice, error: %@", v5, 0xCu);
    _sSo8NSObjectCSgWOhTm_7(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v6, -1, -1);
    MEMORY[0x20F2E9420](v5, -1, -1);
  }
}

uint64_t partial apply for closure #1 in DataLinkHealthKitHostConnection.resetSequences(_:)(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

uint64_t outlined init with copy of Apple_Workout_Core_DataLinkMessage.OneOf_Message?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with copy of Apple_Workout_Core_NotificationUpdate(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void _s11WorkoutCore30MirroredHostStartConfigurationV8protobufAA06Apple_a1_b1_cdeF0VvgyAFzXEfU_TA_1(uint64_t a1)
{
  if (*(v1 + 17))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  closure #1 in MirroredHostStartConfiguration.protobuf.getter(a1, v2 | *(v1 + 16), *(v1 + 24));
}

uint64_t outlined init with take of Apple_Workout_Core_WorkoutNotification(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

BOOL static DataLinkMirroredClientExpected.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  v6 = v4 < 0 && v2 == v3;
  v7 = (v3 ^ v2) == 0;
  if (v4 < 0)
  {
    v7 = 0;
  }

  if (a1[1] >= 0)
  {
    return v7;
  }

  else
  {
    return v6;
  }
}

uint64_t DataLinkMirroredClientExpected.hash(into:)()
{
  v1 = *v0;
  if (v0[1] < 0)
  {
    v3 = *v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore27MirroredHostMessageProtocol_pXpMd, &_s11WorkoutCore27MirroredHostMessageProtocol_pXpMR);
    String.init<A>(describing:)();
  }

  String.hash(into:)();
}

uint64_t DataLinkMirroredClientExpected.description.getter()
{
  if (v0[1] < 0)
  {
    v2 = *v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore27MirroredHostMessageProtocol_pXpMd, &_s11WorkoutCore27MirroredHostMessageProtocol_pXpMR);
    return String.init<A>(describing:)();
  }

  else if (*v0)
  {
    if (*v0 == 1)
    {
      return 0xD000000000000020;
    }

    else
    {
      return 0x75716552676E6970;
    }
  }

  else
  {
    return 0xD000000000000019;
  }
}

uint64_t DataLinkMirroredClientExpected.hashValue.getter()
{
  v2 = *v0;
  lazy protocol witness table accessor for type DataLinkMirroredClientExpected and conformance DataLinkMirroredClientExpected();
  return dispatch thunk of Hashable._rawHashValue(seed:)();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance DataLinkMirroredClientExpected()
{
  v1 = *v0;
  if (v0[1] < 0)
  {
    v3 = *v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore27MirroredHostMessageProtocol_pXpMd, &_s11WorkoutCore27MirroredHostMessageProtocol_pXpMR);
    String.init<A>(describing:)();
  }

  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DataLinkMirroredClientExpected()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v2 < 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore27MirroredHostMessageProtocol_pXpMd, &_s11WorkoutCore27MirroredHostMessageProtocol_pXpMR);
    String.init<A>(describing:)();
  }

  String.hash(into:)();

  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance DataLinkMirroredClientExpected(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  v6 = v4 < 0 && v2 == v3;
  v7 = (v3 ^ v2) == 0;
  if (v4 < 0)
  {
    v7 = 0;
  }

  if (a1[1] >= 0)
  {
    return v7;
  }

  else
  {
    return v6;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DataLinkMirroredClientExpected()
{
  if (v0[1] < 0)
  {
    v2 = *v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore27MirroredHostMessageProtocol_pXpMd, &_s11WorkoutCore27MirroredHostMessageProtocol_pXpMR);
    return String.init<A>(describing:)();
  }

  else if (*v0)
  {
    if (*v0 == 1)
    {
      return 0xD000000000000020;
    }

    else
    {
      return 0x75716552676E6970;
    }
  }

  else
  {
    return 0xD000000000000019;
  }
}

__n128 DataLinkMirroredClientExpectation.expected.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t DataLinkMirroredClientExpectation.created.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DataLinkMirroredClientExpectation() + 24);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for DataLinkMirroredClientExpectation()
{
  result = type metadata singleton initialization cache for DataLinkMirroredClientExpectation;
  if (!type metadata singleton initialization cache for DataLinkMirroredClientExpectation)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DataLinkMirroredClientExpectation.init(expected:timeout:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a2 + *(type metadata accessor for DataLinkMirroredClientExpectation() + 24);
  result = static Date.now.getter();
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = a3;
  return result;
}

uint64_t DataLinkMirroredClientExpectation.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 2);
  static Date.now.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  (*(v3 + 8))(v6, v2);
  LODWORD(v3) = *(type metadata accessor for DataLinkMirroredClientExpectation() + 24);
  Date.timeIntervalSinceReferenceDate.getter();
  v17 = 0;
  v18 = 0xE000000000000000;
  _StringGuts.grow(_:)(57);
  MEMORY[0x20F2E6D80](0x6465746365707865, 0xEA0000000000203ALL);
  v16 = *v1;
  lazy protocol witness table accessor for type DataLinkMirroredClientExpected and conformance DataLinkMirroredClientExpected();
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v8);

  MEMORY[0x20F2E6D80](0x756F656D6974202CLL, 0xEB00000000203A74);
  Double.write<A>(to:)();
  MEMORY[0x20F2E6D80](0x657461657263202CLL, 0xEB00000000203A64);
  if (one-time initialization token for logDateFormatter != -1)
  {
    swift_once();
  }

  v9 = static WOLog.logDateFormatter;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v11 = [v9 stringFromDate_];

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  MEMORY[0x20F2E6D80](v12, v14);

  MEMORY[0x20F2E6D80](0xD000000000000011, 0x800000020B45EEA0);
  Double.write<A>(to:)();
  return v17;
}

uint64_t getEnumTagSinglePayload for DataLinkMirroredClientExpected(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFFF && *(a1 + 16))
  {
    return (*a1 + 4095);
  }

  v3 = (((*(a1 + 8) >> 52) >> 11) | (2 * ((*(a1 + 8) >> 52) & 0x700 | (32 * (*(a1 + 8) & 7)) | (*a1 >> 59) & 0x1E | (*a1 >> 2) & 1))) ^ 0xFFF;
  if (v3 >= 0xFFE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for DataLinkMirroredClientExpected(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFFE)
  {
    *result = a2 - 4095;
    *(result + 8) = 0;
    if (a3 >= 0xFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x7FF | ((-a2 & 0xFFF) << 11);
      *result = ((v3 << 59) | (4 * v3)) & 0xF000000000000007;
      *(result + 8) = ((v3 >> 5) | (v3 << 52)) & 0xF000000000000007;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for DataLinkMirroredClientExpected(void *result, uint64_t a2)
{
  v2 = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 63);
  *result &= 0xFFFFFFFFFFFFFFBuLL;
  result[1] = v2;
  return result;
}

uint64_t type metadata completion function for DataLinkMirroredClientExpectation()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MultisportTransitions.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000017;
  }

  else
  {
    v4 = 0xD000000000000016;
  }

  if (v3)
  {
    v5 = "";
  }

  else
  {
    v5 = "shouldTrackTransitions";
  }

  if (*a2)
  {
    v6 = 0xD000000000000017;
  }

  else
  {
    v6 = 0xD000000000000016;
  }

  if (*a2)
  {
    v7 = "shouldTrackTransitions";
  }

  else
  {
    v7 = "";
  }

  if (v4 == v6 && (v5 | 0x8000000000000000) == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MultisportTransitions.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MultisportTransitions.CodingKeys()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MultisportTransitions.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance MultisportTransitions.CodingKeys@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MultisportTransitions.CodingKeys.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance MultisportTransitions.CodingKeys(unint64_t *a1@<X8>)
{
  v2 = "shouldTrackTransitions";
  v3 = 0xD000000000000016;
  if (*v1)
  {
    v3 = 0xD000000000000017;
  }

  else
  {
    v2 = "";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance MultisportTransitions.CodingKeys()
{
  if (*v0)
  {
    result = 0xD000000000000017;
  }

  else
  {
    result = 0xD000000000000016;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MultisportTransitions.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MultisportTransitions.CodingKeys.init(rawValue:), v3);

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

  *a2 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MultisportTransitions.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MultisportTransitions.CodingKeys and conformance MultisportTransitions.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MultisportTransitions.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MultisportTransitions.CodingKeys and conformance MultisportTransitions.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::Int MultisportTransitions.hash.getter()
{
  Hasher.init()();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  Hasher._combine(_:)(v1);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  Hasher._combine(_:)(v1);
  return Hasher.finalize()();
}

uint64_t MultisportTransitions.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of Any?(a1, v6);
  if (v7)
  {
    type metadata accessor for MultisportTransitions();
    if (swift_dynamicCast())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v1 = v6[0];
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v1 == v6[0])
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v4 = v6[0];
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v2 = v4 ^ v6[0] ^ 1;
        return v2 & 1;
      }
    }
  }

  else
  {
    outlined destroy of Any?(v6);
  }

  v2 = 0;
  return v2 & 1;
}

uint64_t MultisportTransitions.description.getter()
{
  _StringGuts.grow(_:)(112);
  MEMORY[0x20F2E6D80](0xD000000000000035, 0x800000020B45FF70);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v5)
  {
    v0 = 1702195828;
  }

  else
  {
    v0 = 0x65736C6166;
  }

  if (v5)
  {
    v1 = 0xE400000000000000;
  }

  else
  {
    v1 = 0xE500000000000000;
  }

  MEMORY[0x20F2E6D80](v0, v1);

  MEMORY[0x20F2E6D80](0xD000000000000036, 0x800000020B45FFB0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v5)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (v5)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x20F2E6D80](v2, v3);

  MEMORY[0x20F2E6D80](62, 0xE100000000000000);
  return 0;
}

uint64_t MultisportTransitions.shouldTrackTransitions.getter()
{
  return MultisportTransitions.shouldTrackTransitions.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t MultisportTransitions.shouldTrackTransitions.setter()
{
  return MultisportTransitions.shouldTrackTransitions.setter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

uint64_t (*MultisportTransitions.shouldTrackTransitions.modify(uint64_t *a1))()
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
  return MultisportTransitions.shouldTrackTransitions.modify;
}

uint64_t (*MultisportTransitions.$shouldTrackTransitions.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore21MultisportTransitions__shouldTrackTransitions;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MultisportTransitions.$shouldTrackTransitions.modify;
}

uint64_t type metadata accessor for MultisportTransitions()
{
  result = type metadata singleton initialization cache for MultisportTransitions;
  if (!type metadata singleton initialization cache for MultisportTransitions)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t (*MultisportTransitions.automaticallySwitchLegs.modify(uint64_t *a1))()
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
  return MultisportTransitions.automaticallySwitchLegs.modify;
}

void MultisportTransitions.shouldTrackTransitions.modify(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t key path getter for MultisportTransitions.$shouldTrackTransitions : MultisportTransitions(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a1;
  v5 = *a4;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for MultisportTransitions.$shouldTrackTransitions : MultisportTransitions(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  v16 = *(v9 + 16);
  v16(&v20 - v14, a1, v8);
  v17 = *a2;
  v16(v13, v15, v8);
  v18 = *a5;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v9 + 8))(v15, v8);
}

uint64_t MultisportTransitions.$shouldTrackTransitions.getter(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t MultisportTransitions.$shouldTrackTransitions.setter(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  (*(v5 + 16))(&v10 - v7, a1, v4);
  v8 = *a2;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(a1, v4);
}

uint64_t (*MultisportTransitions.$automaticallySwitchLegs.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore21MultisportTransitions__automaticallySwitchLegs;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MultisportTransitions.$automaticallySwitchLegs.modify;
}

void MultisportTransitions.$shouldTrackTransitions.modify(uint64_t a1, char a2)
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

id MultisportTransitions.__allocating_init(automaticallySwitchLegs:shouldTrackTransitions:)(uint64_t a1, char a2)
{
  v4 = objc_allocWithZone(v2);
  swift_beginAccess();
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  v7 = a2;
  Published.init(initialValue:)();
  swift_endAccess();
  v6.receiver = v4;
  v6.super_class = v2;
  return objc_msgSendSuper2(&v6, sel_init);
}

id MultisportTransitions.init(automaticallySwitchLegs:shouldTrackTransitions:)(uint64_t a1, char a2)
{
  swift_beginAccess();
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  v6 = a2;
  Published.init(initialValue:)();
  swift_endAccess();
  v5.receiver = v2;
  v5.super_class = type metadata accessor for MultisportTransitions();
  return objc_msgSendSuper2(&v5, sel_init);
}

id MultisportTransitions.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore21MultisportTransitionsC10CodingKeys33_CEBB1972F1FE54FE64D57FCD4E7CFF20LLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore21MultisportTransitionsC10CodingKeys33_CEBB1972F1FE54FE64D57FCD4E7CFF20LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MultisportTransitions.CodingKeys and conformance MultisportTransitions.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for MultisportTransitions();
    v11 = *((*MEMORY[0x277D85000] & *v1) + 0x30);
    v12 = *((*MEMORY[0x277D85000] & *v1) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v19 = 1;
    v14 = KeyedDecodingContainer.decode(_:forKey:)();
    swift_beginAccess();
    v20 = v14 & 1;
    Published.init(initialValue:)();
    swift_endAccess();
    v19 = 0;
    v15 = KeyedDecodingContainer.decode(_:forKey:)();
    swift_beginAccess();
    v20 = v15 & 1;
    Published.init(initialValue:)();
    swift_endAccess();
    (*(v6 + 8))(v9, v5);
    v16 = type metadata accessor for MultisportTransitions();
    v18.receiver = v3;
    v18.super_class = v16;
    v3 = objc_msgSendSuper2(&v18, sel_init);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

unint64_t lazy protocol witness table accessor for type MultisportTransitions.CodingKeys and conformance MultisportTransitions.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MultisportTransitions.CodingKeys and conformance MultisportTransitions.CodingKeys;
  if (!lazy protocol witness table cache variable for type MultisportTransitions.CodingKeys and conformance MultisportTransitions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MultisportTransitions.CodingKeys and conformance MultisportTransitions.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MultisportTransitions.CodingKeys and conformance MultisportTransitions.CodingKeys;
  if (!lazy protocol witness table cache variable for type MultisportTransitions.CodingKeys and conformance MultisportTransitions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MultisportTransitions.CodingKeys and conformance MultisportTransitions.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MultisportTransitions.CodingKeys and conformance MultisportTransitions.CodingKeys;
  if (!lazy protocol witness table cache variable for type MultisportTransitions.CodingKeys and conformance MultisportTransitions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MultisportTransitions.CodingKeys and conformance MultisportTransitions.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MultisportTransitions.CodingKeys and conformance MultisportTransitions.CodingKeys;
  if (!lazy protocol witness table cache variable for type MultisportTransitions.CodingKeys and conformance MultisportTransitions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MultisportTransitions.CodingKeys and conformance MultisportTransitions.CodingKeys);
  }

  return result;
}

uint64_t MultisportTransitions.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore21MultisportTransitionsC10CodingKeys33_CEBB1972F1FE54FE64D57FCD4E7CFF20LLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore21MultisportTransitionsC10CodingKeys33_CEBB1972F1FE54FE64D57FCD4E7CFF20LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MultisportTransitions.CodingKeys and conformance MultisportTransitions.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v10[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v10[12] = 0;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

id static MultisportTransitions.defaultMultisportTransitions()()
{
  v0 = type metadata accessor for MultisportTransitions();
  v1 = objc_allocWithZone(v0);
  swift_beginAccess();
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  v4 = 1;
  Published.init(initialValue:)();
  swift_endAccess();
  v3.receiver = v1;
  v3.super_class = v0;
  return objc_msgSendSuper2(&v3, sel_init);
}

id MultisportTransitions.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MultisportTransitions.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MultisportTransitions();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id protocol witness for Decodable.init(from:) in conformance MultisportTransitions@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for MultisportTransitions());
  result = MultisportTransitions.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance MultisportTransitions@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MultisportTransitions();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

void type metadata completion function for MultisportTransitions()
{
  type metadata accessor for Published<Bool>();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for MultisportTransitions.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MultisportTransitions.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t NLSessionActivityGoal.displayString(formattingManager:distanceType:localizedOpenString:)(void *a1, uint64_t a2, char a3, uint64_t a4, id a5)
{
  v7 = v5;
  v13 = [v7 goalTypeIdentifier];
  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = [v7 requiredDistance];
      if (v14)
      {
        v15 = v14;
        v16 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:1 value:v14];
        v48 = NLSessionActivityGoal.displayString(formattingManager:distanceType:localizedOpenString:)(a1, a2, a3 & 1, 0, 0);
        v18 = v17;

        [v7 doubleValue];
        v19 = [a1 stringWithDuration:3 durationFormat:?];
        if (v19)
        {
          v20 = v19;
          v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v23 = v22;
        }

        else
        {
          v21 = 0;
          v23 = 0;
        }

        type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v36 = [objc_opt_self() bundleForClass_];
        v37 = MEMORY[0x20F2E6C00](0xD00000000000001DLL, 0x800000020B45B910);
        v38 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
        v39 = [v36 localizedStringForKey:v37 value:0 table:v38];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        if (v23)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          v40 = swift_allocObject();
          *(v40 + 16) = xmmword_20B4282E0;
          v41 = MEMORY[0x277D837D0];
          *(v40 + 56) = MEMORY[0x277D837D0];
          v42 = lazy protocol witness table accessor for type String and conformance String();
          *(v40 + 32) = v48;
          *(v40 + 40) = v18;
          *(v40 + 96) = v41;
          *(v40 + 104) = v42;
          *(v40 + 64) = v42;
          *(v40 + 72) = v21;
          *(v40 + 80) = v23;
          a4 = String.init(format:_:)();

          goto LABEL_25;
        }
      }

      [v7 doubleValue];
      v27 = [a1 stringWithDuration:7 durationFormat:?];
      if (!v27)
      {
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
      if (v13 != 3)
      {
        goto LABEL_33;
      }

      [v7 doubleValue];
      v27 = [a1 localizedStringWithEnergyInCalories:1 energyType:1 unitStyle:?];
      if (!v27)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v30 = v27;
    countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_29;
  }

  if (!v13)
  {
    if (a5)
    {

      return a4;
    }

    v29 = MEMORY[0x20F2E82D0]();
    if (v29)
    {
      v30 = v29;
      v49._object = 0xE000000000000000;
      v31.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v31.value._object = 0xEB00000000656C62;
      v32._object = 0x800000020B460130;
      v32._countAndFlagsBits = 0xD000000000000011;
      v33._countAndFlagsBits = 0;
      v33._object = 0xE000000000000000;
      v49._countAndFlagsBits = 0;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v32, v31, v30, v33, v49)._countAndFlagsBits;
LABEL_29:
      a4 = countAndFlagsBits;

      return a4;
    }

    goto LABEL_32;
  }

  if (v13 != 1)
  {
LABEL_33:
    _StringGuts.grow(_:)(20);

    v44 = [v7 description];
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;

    MEMORY[0x20F2E6D80](v45, v47);

    goto LABEL_34;
  }

  v24 = [v7 value];
  if (v24)
  {
    v6 = v24;
    v25 = [v24 _unit];
    a4 = MEMORY[0x20F2E8310]();

    a5 = [objc_opt_self() defaultPrecisionForDistanceUnit_];
    [v7 doubleValue];
    if ((a3 & 1) == 0 && a2 == 3)
    {
      v26 = [a1 localizedStringWithDistanceInMeters:3 distanceType:a4 distanceUnit:2 unitStyle:6 roundingMode:?];
      if (!v26)
      {
LABEL_14:

        return 0;
      }

      goto LABEL_19;
    }

LABEL_18:
    v26 = [a1 localizedStringWithDistanceInMeters:a4 distanceUnit:2 unitStyle:a5 decimalPrecision:6 roundingMode:2 decimalTrimmingMode:?];
    if (!v26)
    {
      goto LABEL_14;
    }

LABEL_19:
    v28 = v26;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    lazy protocol witness table accessor for type String and conformance String();
    a4 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

LABEL_25:

    return a4;
  }

LABEL_34:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t NLSessionActivityGoal.intervalDisplayString(formattingManager:distanceType:)(void *a1, uint64_t a2, char a3)
{
  if ([v3 goalTypeIdentifier] != 2)
  {
    goto LABEL_4;
  }

  v7 = [v3 requiredDistance];
  if (v7)
  {

LABEL_4:
    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = [objc_opt_self() bundleForClass_];
    v10 = MEMORY[0x20F2E6C00](0xD000000000000013, 0x800000020B460150);
    v11 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
    v12 = [v9 localizedStringForKey:v10 value:0 table:v11];

    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = NLSessionActivityGoal.displayString(formattingManager:distanceType:localizedOpenString:)(a1, a2, a3 & 1, v13, v15);

    return v16;
  }

  [v3 doubleValue];

  return specialized static ElapsedTimeFormatter.stringFromElapsedTime(_:trimDoubleLeadingZero:compactHours:)(0, 0, v18);
}

uint64_t NLSessionActivityGoal.intervalAXSpokenString(formattingManager:distanceType:)(void *a1, uint64_t a2, char a3)
{
  if ([v3 goalTypeIdentifier] != 2)
  {
    goto LABEL_4;
  }

  v7 = [v3 requiredDistance];
  if (v7)
  {

LABEL_4:
    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = [objc_opt_self() bundleForClass_];
    v10 = MEMORY[0x20F2E6C00](0xD000000000000013, 0x800000020B460150);
    v11 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
    v12 = [v9 localizedStringForKey:v10 value:0 table:v11];

    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = NLSessionActivityGoal.accessibilitySpokenString(formattingManager:distanceType:localizedOpenString:)(a1, a2, a3 & 1, v13, v15);

    return v16;
  }

  [v3 doubleValue];
  if (one-time initialization token for accessibilityDateFormatter != -1)
  {
    swift_once();
  }

  v18 = [static ElapsedTimeFormatter.accessibilityDateFormatter stringFromTimeInterval_];
  if (!v18)
  {
    return 0;
  }

  v19 = v18;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v16;
}

uint64_t NLSessionActivityGoal.accessibilitySpokenString(formattingManager:distanceType:localizedOpenString:)(void *a1, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  v6 = v5;
  if ([v6 goalTypeIdentifier] != 2)
  {
    return NLSessionActivityGoal.displayString(formattingManager:distanceType:localizedOpenString:)(a1, a2, a3 & 1, a4, a5);
  }

  [v6 doubleValue];
  if (one-time initialization token for accessibilityDateFormatter != -1)
  {
    swift_once();
  }

  v12 = [static ElapsedTimeFormatter.accessibilityDateFormatter stringFromTimeInterval_];
  if (v12)
  {
    v13 = v12;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0xE000000000000000;
  }

  v17 = [v6 requiredDistance];
  if (v17)
  {
    v18 = v17;
    v19 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:1 value:v17];
    v20 = NLSessionActivityGoal.displayString(formattingManager:distanceType:localizedOpenString:)(a1, a2, a3 & 1, 0, 0);
    v22 = v21;

    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v24 = [objc_opt_self() bundleForClass_];
    v25 = MEMORY[0x20F2E6C00](0xD00000000000001DLL, 0x800000020B45B910);
    v26 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
    v27 = [v24 localizedStringForKey:v25 value:0 table:v26];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_20B4282E0;
    v29 = MEMORY[0x277D837D0];
    *(v28 + 56) = MEMORY[0x277D837D0];
    v30 = lazy protocol witness table accessor for type String and conformance String();
    *(v28 + 32) = v20;
    *(v28 + 40) = v22;
    *(v28 + 96) = v29;
    *(v28 + 104) = v30;
    *(v28 + 64) = v30;
    *(v28 + 72) = v14;
    *(v28 + 80) = v16;
    v14 = String.init(format:_:)();
  }

  return v14;
}

uint64_t WorkoutAppInstallationState.description.getter()
{
  v1 = 0x656C6C6174736E69;
  if (*v0 != 1)
  {
    v1 = 0x6174736E49746F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

Swift::Int WorkoutAppInstallationState.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutAppInstallationState()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutAppInstallationState()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}