uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance GoalWorkoutConfiguration.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 1818324839;
  }

  else
  {
    v2 = 1885697139;
  }

  if (*a2)
  {
    v3 = 1818324839;
  }

  else
  {
    v3 = 1885697139;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GoalWorkoutConfiguration.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance GoalWorkoutConfiguration.CodingKeys()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GoalWorkoutConfiguration.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance GoalWorkoutConfiguration.CodingKeys@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of GoalWorkoutConfiguration.CodingKeys.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance GoalWorkoutConfiguration.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = 1885697139;
  if (*v1)
  {
    v2 = 1818324839;
  }

  *a1 = v2;
  a1[1] = 0xE400000000000000;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance GoalWorkoutConfiguration.CodingKeys()
{
  if (*v0)
  {
    return 1818324839;
  }

  else
  {
    return 1885697139;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance GoalWorkoutConfiguration.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of GoalWorkoutConfiguration.CodingKeys.init(rawValue:), v3);

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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GoalWorkoutConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GoalWorkoutConfiguration.CodingKeys and conformance GoalWorkoutConfiguration.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GoalWorkoutConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GoalWorkoutConfiguration.CodingKeys and conformance GoalWorkoutConfiguration.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GoalWorkoutConfiguration.goal.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

void (*GoalWorkoutConfiguration.goal.modify(uint64_t *a1))(void *a1)
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
  return GoalWorkoutConfiguration.goal.modify;
}

void GoalWorkoutConfiguration.goal.modify(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t GoalWorkoutConfiguration.$goal.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21NLSessionActivityGoalCGMd, &_s7Combine9PublishedVySo21NLSessionActivityGoalCGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for GoalWorkoutConfiguration.$goal : GoalWorkoutConfiguration(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21NLSessionActivityGoalCGMd, &_s7Combine9PublishedVySo21NLSessionActivityGoalCGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for GoalWorkoutConfiguration.$goal : GoalWorkoutConfiguration(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo21NLSessionActivityGoalC_GMd, &_s7Combine9PublishedV9PublisherVySo21NLSessionActivityGoalC_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21NLSessionActivityGoalCGMd, &_s7Combine9PublishedVySo21NLSessionActivityGoalCGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t GoalWorkoutConfiguration.$goal.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo21NLSessionActivityGoalC_GMd, &_s7Combine9PublishedV9PublisherVySo21NLSessionActivityGoalC_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21NLSessionActivityGoalCGMd, &_s7Combine9PublishedVySo21NLSessionActivityGoalCGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*GoalWorkoutConfiguration.$goal.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo21NLSessionActivityGoalC_GMd, &_s7Combine9PublishedV9PublisherVySo21NLSessionActivityGoalC_GMR);
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

  v10 = OBJC_IVAR___WOCoreGoalWorkoutConfiguration__goal;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21NLSessionActivityGoalCGMd, &_s7Combine9PublishedVySo21NLSessionActivityGoalCGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return GoalWorkoutConfiguration.$goal.modify;
}

void GoalWorkoutConfiguration.$goal.modify(uint64_t a1, char a2)
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

Swift::Int GoalWorkoutConfiguration.hash.getter()
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

uint64_t GoalWorkoutConfiguration.encode(to:)(void *a1)
{
  v21[2] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore04GoalD13ConfigurationC10CodingKeys33_4E6C906F86346DEA0350DE194C12145BLLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore04GoalD13ConfigurationC10CodingKeys33_4E6C906F86346DEA0350DE194C12145BLLOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v19 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GoalWorkoutConfiguration.CodingKeys and conformance GoalWorkoutConfiguration.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8 = objc_opt_self();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v9 = v21[0];
  v21[0] = 0;
  v10 = [v8 archivedDataWithRootObject:v9 requiringSecureCoding:1 error:v21];

  v11 = v21[0];
  if (v10)
  {
    v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v21[0] = v12;
    v21[1] = v14;
    v20 = 1;
    lazy protocol witness table accessor for type Data and conformance Data();
    v15 = v19[1];
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (!v15)
    {
      WorkoutConfiguration.encode(to:)(a1);
    }

    (*(v3 + 8))(v6, v2);
    result = outlined consume of Data._Representation(v12, v14);
  }

  else
  {
    v17 = v11;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    result = (*(v3 + 8))(v6, v2);
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t lazy protocol witness table accessor for type GoalWorkoutConfiguration.CodingKeys and conformance GoalWorkoutConfiguration.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GoalWorkoutConfiguration.CodingKeys and conformance GoalWorkoutConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type GoalWorkoutConfiguration.CodingKeys and conformance GoalWorkoutConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GoalWorkoutConfiguration.CodingKeys and conformance GoalWorkoutConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GoalWorkoutConfiguration.CodingKeys and conformance GoalWorkoutConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type GoalWorkoutConfiguration.CodingKeys and conformance GoalWorkoutConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GoalWorkoutConfiguration.CodingKeys and conformance GoalWorkoutConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GoalWorkoutConfiguration.CodingKeys and conformance GoalWorkoutConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type GoalWorkoutConfiguration.CodingKeys and conformance GoalWorkoutConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GoalWorkoutConfiguration.CodingKeys and conformance GoalWorkoutConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GoalWorkoutConfiguration.CodingKeys and conformance GoalWorkoutConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type GoalWorkoutConfiguration.CodingKeys and conformance GoalWorkoutConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GoalWorkoutConfiguration.CodingKeys and conformance GoalWorkoutConfiguration.CodingKeys);
  }

  return result;
}

void *GoalWorkoutConfiguration.init(from:)(uint64_t *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore04GoalD13ConfigurationC10CodingKeys33_4E6C906F86346DEA0350DE194C12145BLLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore04GoalD13ConfigurationC10CodingKeys33_4E6C906F86346DEA0350DE194C12145BLLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GoalWorkoutConfiguration.CodingKeys and conformance GoalWorkoutConfiguration.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    goto LABEL_2;
  }

  v14 = v6;
  LOBYTE(v25[0]) = 0;
  if (KeyedDecodingContainer.contains(_:)())
  {
    type metadata accessor for WorkoutStep();
    LOBYTE(v26) = 0;
    lazy protocol witness table accessor for type WorkoutStep and conformance WorkoutStep();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v15 = v25[0];
    swift_beginAccess();
    v26 = v15;
    _sSo21NLSessionActivityGoalCMaTm_2(0, &lazy cache variable for type metadata for NLSessionActivityGoal, 0x277D0A838);
    Published.init(initialValue:)();
    swift_endAccess();

LABEL_7:
    _ss7Decoder_pWOcTm_2(a1, v25);
    v3 = WorkoutConfiguration.init(from:)(v25);
    (*(v14 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v3;
  }

  LOBYTE(v26) = 1;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v16 = v25[0];
  v17 = v25[1];
  v21[1] = _sSo21NLSessionActivityGoalCMaTm_2(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x277CCAAC8);
  _sSo21NLSessionActivityGoalCMaTm_2(0, &lazy cache variable for type metadata for NLSessionActivityGoal, 0x277D0A838);
  v22 = v17;
  v23 = v16;
  v18 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
  if (v18)
  {
    v19 = v18;
    swift_beginAccess();
    v26 = v19;
    Published.init(initialValue:)();
    swift_endAccess();
    outlined consume of Data._Representation(v23, v22);
    goto LABEL_7;
  }

  lazy protocol witness table accessor for type NLSessionActivityGoalError and conformance NLSessionActivityGoalError();
  swift_allocError();
  *v20 = 0xD00000000000001ELL;
  v20[1] = 0x800000020B45A350;
  swift_willThrow();
  outlined consume of Data._Representation(v23, v22);
  (*(v14 + 8))(v9, v5);
LABEL_2:
  __swift_destroy_boxed_opaque_existential_1(a1);
  v11 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
  v12 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
  swift_deallocPartialClassInstance();
  return v3;
}

unint64_t lazy protocol witness table accessor for type WorkoutStep and conformance WorkoutStep()
{
  result = lazy protocol witness table cache variable for type WorkoutStep and conformance WorkoutStep;
  if (!lazy protocol witness table cache variable for type WorkoutStep and conformance WorkoutStep)
  {
    type metadata accessor for WorkoutStep();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutStep and conformance WorkoutStep);
  }

  return result;
}

uint64_t GoalWorkoutConfiguration.isEquivalent(to:)(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  _ss7Decoder_pWOcTm_2(a1, &v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore10Equivalent_pMd, &_s11WorkoutCore10Equivalent_pMR);
  if (!swift_dynamicCast())
  {
    goto LABEL_5;
  }

  _sSo21NLSessionActivityGoalCMaTm_2(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v4 = v10;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = v10;
  v6 = static NSObject.== infix(_:_:)();

  if ((v6 & 1) == 0)
  {

LABEL_5:
    v7 = 0;
    return v7 & 1;
  }

  v7 = specialized WorkoutConfiguration.isEquivalent(to:)(v9, v2);

  return v7 & 1;
}

uint64_t _ss7Decoder_pWOcTm_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void GoalWorkoutConfiguration.populateMetadata(_:)(void *a1)
{
  v2 = *MEMORY[0x277D7E828];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v6 = [v10 goalTypeIdentifier];

  v7 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
  v8 = [a1 keyedNumbers];
  _sSo21NLSessionActivityGoalCMaTm_2(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Dictionary.subscript.setter(v7, v3, v5);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a1 setKeyedNumbers_];

  WorkoutConfiguration.populateMetadata(_:)(a1);
}

uint64_t GoalWorkoutConfiguration.__ivar_destroyer()
{
  v1 = OBJC_IVAR___WOCoreGoalWorkoutConfiguration__goal;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21NLSessionActivityGoalCGMd, &_s7Combine9PublishedVySo21NLSessionActivityGoalCGMR);
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id GoalWorkoutConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id protocol witness for static Canonical.canonical() in conformance GoalWorkoutConfiguration@<X0>(void *a1@<X8>)
{
  result = specialized static GoalWorkoutConfiguration.canonical()();
  *a1 = result;
  return result;
}

id GoalWorkoutConfiguration.copyWith(activityType:goal:uuid:occurrence:)(void *a1, void *a2, uint64_t a3, void *a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v47 - v12;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v51 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v53 = &v47 - v19;
  if (a1)
  {
    v52 = a1;
    if (a2)
    {
LABEL_3:
      v20 = a1;
      v21 = a2;
      goto LABEL_6;
    }
  }

  else
  {
    v22 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
    swift_beginAccess();
    v52 = *(v5 + v22);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v23 = a1;
  static Published.subscript.getter();

  v21 = v56;
LABEL_6:
  outlined init with copy of UUID?(a3, v13);
  v24 = *(v15 + 48);
  if (v24(v13, 1, v14) == 1)
  {
    v50 = a2;
    v25 = a4;
    v26 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
    swift_beginAccess();
    v27 = v5 + v26;
    a4 = v25;
    (*(v15 + 16))(v53, v27, v14);
    v28 = v24(v13, 1, v14);
    v29 = v50;
    if (v28 != 1)
    {
      outlined destroy of UUID?(v13);
    }
  }

  else
  {
    (*(v15 + 32))(v53, v13, v14);
    v30 = a2;
  }

  if (a4)
  {
    v50 = a4;
  }

  else
  {
    v31 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
    swift_beginAccess();
    v50 = *(v5 + v31);
  }

  v32 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  swift_beginAccess();
  v48 = *(v5 + v32);
  v33 = objc_allocWithZone(ObjectType);
  swift_beginAccess();
  v55 = v21;
  _sSo21NLSessionActivityGoalCMaTm_2(0, &lazy cache variable for type metadata for NLSessionActivityGoal, 0x277D0A838);
  v34 = a4;

  ObjectType = v21;
  Published.init(initialValue:)();
  swift_endAccess();
  v35 = *(v15 + 16);
  v36 = v51;
  v35(v51, v53, v14);
  *&v33[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v37 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  v38 = type metadata accessor for Date();
  v39 = *(*(v38 - 8) + 56);
  v39(&v33[v37], 1, 1, v38);
  v39(&v33[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v38);
  v40 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
  v41 = type metadata accessor for WorkoutPlan.Route();
  (*(*(v41 - 8) + 56))(&v33[v40], 1, 1, v41);
  (*(v15 + 56))(&v33[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v14);
  v42 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v33[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v35(&v33[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v36, v14);
  *&v33[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v52;
  v33[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 0;
  *&v33[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v50;
  swift_beginAccess();
  *&v33[v42] = v48;
  v33[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v43 = type metadata accessor for WorkoutConfiguration();
  v54.receiver = v33;
  v54.super_class = v43;
  v44 = objc_msgSendSuper2(&v54, sel_init);

  v45 = *(v15 + 8);
  v45(v36, v14);
  v45(v53, v14);
  return v44;
}

id specialized static GoalWorkoutConfiguration.canonical()()
{
  v0 = type metadata accessor for UUID();
  v27 = *(v0 - 8);
  v1 = v27;
  v2 = *(v27 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v31 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v27 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v34 = [objc_allocWithZone(MEMORY[0x277D0A810]) initWithActivityTypeIdentifier:37 isIndoor:1];
  v10 = [objc_opt_self() meterUnit];
  v11 = [objc_opt_self() quantityWithUnit:v10 doubleValue:5000.0];
  v32 = v11;

  v12 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:1 value:v11];
  v33 = v9;
  UUID.init()();
  v30 = specialized Occurrence.__allocating_init(count:)(0);
  v13 = *(v1 + 16);
  v28 = v7;
  v13(v7, v9, v0);
  v14 = objc_allocWithZone(type metadata accessor for GoalWorkoutConfiguration());
  swift_beginAccess();
  v36 = v12;
  _sSo21NLSessionActivityGoalCMaTm_2(0, &lazy cache variable for type metadata for NLSessionActivityGoal, 0x277D0A838);
  v29 = v12;
  Published.init(initialValue:)();
  swift_endAccess();
  v15 = v31;
  v13(v31, v7, v0);
  *&v14[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v16 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  v17 = type metadata accessor for Date();
  v18 = *(*(v17 - 8) + 56);
  v18(&v14[v16], 1, 1, v17);
  v18(&v14[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v17);
  v19 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
  v20 = type metadata accessor for WorkoutPlan.Route();
  (*(*(v20 - 8) + 56))(&v14[v19], 1, 1, v20);
  v21 = v27;
  (*(v27 + 56))(&v14[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v0);
  v22 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v14[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v13(&v14[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v15, v0);
  *&v14[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v34;
  v14[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 0;
  *&v14[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v30;
  swift_beginAccess();
  *&v14[v22] = 0;
  v14[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v23 = type metadata accessor for WorkoutConfiguration();
  v35.receiver = v14;
  v35.super_class = v23;
  v24 = objc_msgSendSuper2(&v35, sel_init);

  v25 = *(v21 + 8);
  v25(v15, v0);
  v25(v28, v0);
  v25(v33, v0);
  return v24;
}

void type metadata completion function for GoalWorkoutConfiguration()
{
  type metadata accessor for Published<NLSessionActivityGoal>();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for GoalWorkoutConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for GoalWorkoutConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _sSo21NLSessionActivityGoalCMaTm_2(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void TargetZone.workoutKitRepresentation(activityType:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  if (v3 > 3)
  {
    if (*(v2 + 16) > 5u)
    {
      if (v3 == 6)
      {
        v4 = a2;
        if ([a1 effectiveTypeIdentifier] != 13)
        {
          v5 = MEMORY[0x277CE3F48];
          goto LABEL_18;
        }

LABEL_13:
        *(v4 + 32) = 0;
        *v4 = 0u;
        *(v4 + 16) = 0u;
        return;
      }
    }

    else if (v3 != 4)
    {
      v4 = a2;
      if ([a1 effectiveTypeIdentifier] != 13)
      {
        v5 = MEMORY[0x277CE3F50];
LABEL_18:
        TargetZone.currentPowerWKRepresentation.getter(v5, v4);
        return;
      }

      goto LABEL_13;
    }

LABEL_14:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  if (*(v2 + 16) <= 1u)
  {
    if (*(v2 + 16))
    {
      TargetZone.averagePaceWKRepresentation.getter(MEMORY[0x277CE3F48], a2);
      return;
    }

    goto LABEL_14;
  }

  if (v3 == 2)
  {
    TargetZone.averagePaceWKRepresentation.getter(MEMORY[0x277CE3F50], a2);
    return;
  }

  swift_beginAccess();
  v7 = *(v2 + 24);
  swift_beginAccess();
  v8 = *(v2 + 32);
  if (v7 == v8)
  {
    v9 = static WorkoutAlertMetric.countPerMinute.getter();
    *(a2 + 24) = type metadata accessor for CadenceThresholdAlert();
    *(a2 + 32) = lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError(&lazy protocol witness table cache variable for type CadenceThresholdAlert and conformance CadenceThresholdAlert, MEMORY[0x277CE4110]);
    __swift_allocate_boxed_opaque_existential_1(a2);
    static WorkoutAlert<>.cadence(_:unit:)();
LABEL_23:

    return;
  }

  if (v7 >= v8)
  {
    v10 = type metadata accessor for AlertValidationError();
    lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError(&lazy protocol witness table cache variable for type AlertValidationError and conformance AlertValidationError, MEMORY[0x277CE40F8]);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, *MEMORY[0x277CE40F0], v10);
    swift_willThrow();
    return;
  }

  if (v7 <= v8)
  {
    v9 = static WorkoutAlertMetric.countPerMinute.getter();
    *(a2 + 24) = type metadata accessor for CadenceRangeAlert();
    *(a2 + 32) = lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError(&lazy protocol witness table cache variable for type CadenceRangeAlert and conformance CadenceRangeAlert, MEMORY[0x277CE4088]);
    __swift_allocate_boxed_opaque_existential_1(a2);
    static WorkoutAlert<>.cadence(_:unit:)();
    goto LABEL_23;
  }

  __break(1u);
}

uint64_t WorkoutAlert.targetZone(activityType:configurationContext:validator:)(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *a2;
  result = closure #1 in WorkoutAlert.targetZone(activityType:configurationContext:validator:)(v5, a1, a4);
  if (result)
  {
    v11 = v8;
    v10 = result;
    if ((*(*a3 + 336))(result, a1, &v11))
    {
      return v10;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t WorkoutAlert.heartRateTargetZone.getter(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v79 = *(v2 - 8);
  v80 = v2;
  v3 = *(v79 + 64);
  MEMORY[0x28223BE20](v2);
  v81 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit18HeartRateZoneAlertVSgMd, &_s10WorkoutKit18HeartRateZoneAlertVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v90 = &v75 - v7;
  v87 = type metadata accessor for HeartRateZoneAlert();
  v85 = *(v87 - 8);
  v8 = *(v85 + 64);
  MEMORY[0x28223BE20](v87);
  v82 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMd, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMR);
  v10 = *(*(v88 - 8) + 64);
  MEMORY[0x28223BE20](v88);
  v86 = &v75 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  v89 = *(v12 - 8);
  v13 = *(v89 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v83 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v84 = &v75 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit19HeartRateRangeAlertVSgMd, &_s10WorkoutKit19HeartRateRangeAlertVSgMR);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v75 - v20;
  v22 = *(a1 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v19);
  v76 = &v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v77 = &v75 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v75 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v75 - v31;
  v33 = type metadata accessor for HeartRateRangeAlert();
  v34 = *(v33 - 1);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v91 = &v75 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v22;
  v37 = *(v22 + 16);
  v38 = v93;
  v37(v32);
  v39 = swift_dynamicCast();
  v92 = v34;
  v40 = *(v34 + 56);
  if (!v39)
  {
    v40(v21, 1, 1, v33);
    outlined destroy of ClosedRange<Measurement<NSUnitPower>>(v21, &_s10WorkoutKit19HeartRateRangeAlertVSgMd, &_s10WorkoutKit19HeartRateRangeAlertVSgMR);
    (v37)(v30, v38, a1);
    v57 = v90;
    v58 = v87;
    v59 = swift_dynamicCast();
    v60 = v85;
    v61 = *(v85 + 56);
    if (v59)
    {
      v62 = a1;
      v61(v57, 0, 1, v58);
      v63 = v82;
      (*(v60 + 32))(v82, v57, v58);
      result = HeartRateZoneAlert.zone.getter();
      v64 = result - 1;
      if (__OFSUB__(result, 1))
      {
        goto LABEL_15;
      }

      if (v64 <= 4)
      {
        v95 = 0;
        v65 = objc_allocWithZone(type metadata accessor for HeartRateTargetZone());
        v56 = HeartRateTargetZone.init(type:customRange:defaultZoneIndex:defaultZones:)(&v95, 0, 0, 1, v64, 0, 0);
        (*(v60 + 8))(v63, v58);
        return v56;
      }

      static WorkoutKitLog.default.getter();
      v66 = v77;
      (v37)(v77, v38, a1);
      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v96 = v93;
        *v69 = 134218242;
        *(v69 + 4) = v64;
        *(v69 + 12) = 2080;
        (v37)(v76, v66, v62);
        v70 = String.init<A>(describing:)();
        v72 = v71;
        (*(v78 + 8))(v66, v62);
        v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v72, &v96);

        *(v69 + 14) = v73;
        _os_log_impl(&dword_20AEA4000, v67, v68, "HR zone index out of bounds: %ld, alert: %s", v69, 0x16u);
        v74 = v93;
        __swift_destroy_boxed_opaque_existential_0(v93);
        MEMORY[0x20F2E9420](v74, -1, -1);
        MEMORY[0x20F2E9420](v69, -1, -1);

        (*(v79 + 8))(v81, v80);
        (*(v60 + 8))(v82, v58);
      }

      else
      {

        (*(v78 + 8))(v66, v62);
        (*(v79 + 8))(v81, v80);
        (*(v60 + 8))(v63, v58);
      }
    }

    else
    {
      v61(v57, 1, 1, v58);
      outlined destroy of ClosedRange<Measurement<NSUnitPower>>(v57, &_s10WorkoutKit18HeartRateZoneAlertVSgMd, &_s10WorkoutKit18HeartRateZoneAlertVSgMR);
    }

    return 0;
  }

  v40(v21, 0, 1, v33);
  v41 = *(v92 + 32);
  v42 = v83;
  v93 = v33;
  v41(v91, v21);
  v43 = v86;
  HeartRateRangeAlert.target.getter();
  v44 = v89;
  v45 = *(v89 + 16);
  v45(v42, v43, v12);
  outlined destroy of ClosedRange<Measurement<NSUnitPower>>(v43, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMd, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMR);
  v46 = static WorkoutAlertMetric.countPerMinute.getter();
  v47 = v84;
  Measurement<>.converted(to:)();

  v48 = *(v44 + 8);
  v48(v42, v12);
  Measurement.value.getter();
  v50 = v49;
  v48(v47, v12);
  HeartRateRangeAlert.target.getter();
  v45(v42, v43 + *(v88 + 36), v12);
  outlined destroy of ClosedRange<Measurement<NSUnitPower>>(v43, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMd, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMR);
  v51 = static WorkoutAlertMetric.countPerMinute.getter();
  Measurement<>.converted(to:)();

  v48(v42, v12);
  Measurement.value.getter();
  v53 = v52;
  result = (v48)(v47, v12);
  if (*&v50 <= *&v53)
  {
    v94 = 1;
    v55 = objc_allocWithZone(type metadata accessor for HeartRateTargetZone());
    v56 = HeartRateTargetZone.init(type:customRange:defaultZoneIndex:defaultZones:)(&v94, v50, v53, 0, 0, 1, 0);
    (*(v92 + 8))(v91, v93);
    return v56;
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t WorkoutAlert.powerZonesAlertTargetZone(activityType:)(void *a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit14PowerZoneAlertVSgMd, &_s10WorkoutKit14PowerZoneAlertVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v187 = &v179 - v6;
  v191 = type metadata accessor for PowerZoneAlert();
  v188 = *(v191 - 8);
  v7 = *(v188 + 64);
  MEMORY[0x28223BE20](v191);
  v185 = &v179 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMR);
  v9 = *(*(v190 - 8) + 64);
  MEMORY[0x28223BE20](v190);
  v189 = &v179 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit15PowerRangeAlertVSgMd, &_s10WorkoutKit15PowerRangeAlertVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v194 = &v179 - v13;
  v199 = type metadata accessor for PowerRangeAlert();
  v198 = *(v199 - 8);
  v14 = *(v198 + 64);
  v15 = MEMORY[0x28223BE20](v199);
  v180 = &v179 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v193 = &v179 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  v202 = *(v18 - 8);
  v203 = v18;
  v19 = v202[8];
  v20 = MEMORY[0x28223BE20](v18);
  v200 = &v179 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v201 = &v179 - v22;
  v207 = type metadata accessor for Logger();
  v23 = *(v207 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v207);
  v206 = (&v179 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = MEMORY[0x28223BE20](v25);
  v186 = &v179 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v182 = &v179 - v30;
  MEMORY[0x28223BE20](v29);
  v184 = &v179 - v31;
  v32 = type metadata accessor for WorkoutAlertMetric();
  v33 = *(v32 - 8);
  v204 = v32;
  v205 = v33;
  v34 = *(v33 + 64);
  v35 = MEMORY[0x28223BE20](v32);
  v192 = &v179 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v181 = &v179 - v38;
  MEMORY[0x28223BE20](v37);
  v197 = &v179 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit19PowerThresholdAlertVSgMd, &_s10WorkoutKit19PowerThresholdAlertVSgMR);
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v40 - 8);
  v44 = &v179 - v43;
  v210 = a2;
  v45 = *(a2 - 1);
  v46 = *(v45 + 8);
  v47 = MEMORY[0x28223BE20](v42);
  v49 = &v179 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x28223BE20](v47);
  v195 = &v179 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v179 = &v179 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v56 = &v179 - v55;
  v57 = MEMORY[0x28223BE20](v54);
  v59 = &v179 - v58;
  MEMORY[0x28223BE20](v57);
  v61 = &v179 - v60;
  v62 = type metadata accessor for PowerThresholdAlert();
  v63 = *(v62 - 8);
  v64 = *(v63 + 64);
  v65 = MEMORY[0x28223BE20](v62);
  v183 = &v179 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v65);
  v196 = &v179 - v67;
  v68 = [a1 effectiveTypeIdentifier];
  v208 = v23;
  if (v68 != 13)
  {
    v80 = v206;
    static WorkoutKitLog.default.getter();
    v81 = *(v45 + 2);
    v81(v49, v209, v210);
    v82 = a1;
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v205 = v86;
      v209 = swift_slowAlloc();
      v213[0] = v209;
      *v85 = 138412546;
      *(v85 + 4) = v82;
      *v86 = v82;
      *(v85 + 12) = 2080;
      LODWORD(v204) = v84;
      v87 = v210;
      v81(v195, v49, v210);
      v88 = v82;
      v89 = String.init<A>(describing:)();
      v91 = v90;
      (*(v45 + 1))(v49, v87);
      v92 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v91, v213);

      *(v85 + 14) = v92;
      _os_log_impl(&dword_20AEA4000, v83, v204, "activity type doesnt support power zones, activity: %@, alert: %s", v85, 0x16u);
      v93 = v205;
      outlined destroy of ClosedRange<Measurement<NSUnitPower>>(v205, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v93, -1, -1);
      v94 = v209;
      __swift_destroy_boxed_opaque_existential_0(v209);
      MEMORY[0x20F2E9420](v94, -1, -1);
      MEMORY[0x20F2E9420](v85, -1, -1);
    }

    else
    {

      (*(v45 + 1))(v49, v210);
    }

    (*(v208 + 8))(v80, v207);
    return 0;
  }

  v206 = v45;
  v69 = *(v45 + 2);
  v70 = v209;
  v71 = v210;
  v69(v61, v209, v210);
  v72 = swift_dynamicCast();
  v73 = *(v63 + 56);
  if (v72)
  {
    v74 = v63;
    v73(v44, 0, 1, v62);
    v75 = v196;
    (*(v63 + 32))(v196, v44, v62);
    v76 = v197;
    PowerThresholdAlert.metric.getter();
    v77 = v204;
    v78 = (v205[11])(v76, v204);
    if (v78 == *MEMORY[0x277CE3F50])
    {
      v79 = v63;
    }

    else
    {
      if (v78 == *MEMORY[0x277CE3F48])
      {
        v79 = v63;
        v106 = 6;
LABEL_28:
        v140 = v200;
        PowerThresholdAlert.target.getter();
        v141 = [objc_opt_self() watts];
        v142 = v201;
        v143 = v203;
        Measurement<>.converted(to:)();

        v144 = v202[1];
        v144(v140, v143);
        Measurement.value.getter();
        v146 = v145;
        v144(v142, v143);
        v147 = type metadata accessor for PowerZonesAlertTargetZone();
        v148 = objc_allocWithZone(v147);
        v149 = &v148[OBJC_IVAR___WOCorePowerZonesAlertTargetZone_defaultZonesDidLoad];
        *v149 = 0;
        *(v149 + 1) = 0;
        v150 = &v148[OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type];
        *v150 = v146;
        *(v150 + 1) = v106;
        v150[16] = 0;
        v211.receiver = v148;
        v211.super_class = v147;
        v151 = objc_msgSendSuper2(&v211, sel_init);
        (*(v79 + 8))(v75, v62);
        return v151;
      }

      v116 = v184;
      static WorkoutKitLog.default.getter();
      v117 = v183;
      (*(v74 + 16))(v183, v75, v62);
      v118 = Logger.logObject.getter();
      v119 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v118, v119))
      {
        v120 = v117;
        v121 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        v213[0] = v122;
        *v121 = 136315138;
        PowerThresholdAlert.metric.getter();
        v123 = String.init<A>(describing:)();
        v124 = v74;
        v126 = v125;
        v79 = v124;
        (*(v124 + 8))(v120, v62);
        v127 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v123, v126, v213);

        *(v121 + 4) = v127;
        _os_log_impl(&dword_20AEA4000, v118, v119, "unknown power threshold: %s. defaulting to current power", v121, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v122);
        v128 = v122;
        v77 = v204;
        MEMORY[0x20F2E9420](v128, -1, -1);
        MEMORY[0x20F2E9420](v121, -1, -1);

        (*(v208 + 8))(v116, v207);
        v75 = v196;
      }

      else
      {

        v79 = v74;
        (*(v74 + 8))(v117, v62);
        (*(v208 + 8))(v116, v207);
      }

      (v205[1])(v197, v77);
    }

    v106 = 5;
    goto LABEL_28;
  }

  v73(v44, 1, 1, v62);
  outlined destroy of ClosedRange<Measurement<NSUnitPower>>(v44, &_s10WorkoutKit19PowerThresholdAlertVSgMd, &_s10WorkoutKit19PowerThresholdAlertVSgMR);
  v69(v59, v70, v71);
  v95 = v194;
  v96 = v199;
  v97 = swift_dynamicCast();
  v98 = v198;
  v99 = *(v198 + 56);
  if (!v97)
  {
    v99(v95, 1, 1, v96);
    outlined destroy of ClosedRange<Measurement<NSUnitPower>>(v95, &_s10WorkoutKit15PowerRangeAlertVSgMd, &_s10WorkoutKit15PowerRangeAlertVSgMR);
    v69(v56, v70, v71);
    v107 = v187;
    v108 = v191;
    v109 = swift_dynamicCast();
    v110 = v188;
    v111 = *(v188 + 56);
    if (v109)
    {
      v111(v107, 0, 1, v108);
      v112 = v185;
      (*(v110 + 32))(v185, v107, v108);
      result = PowerZoneAlert.zone.getter();
      v113 = result - 1;
      if (__OFSUB__(result, 1))
      {
        goto LABEL_39;
      }

      if (v113 <= 7)
      {
        v213[0] = result - 1;
        v213[1] = 0;
        v214 = 64;
        v114 = objc_allocWithZone(type metadata accessor for PowerZonesAlertTargetZone());
        v115 = PowerZonesAlertTargetZone.init(type:)(v213);
        (*(v110 + 8))(v112, v108);
        return v115;
      }

      static WorkoutKitLog.default.getter();
      v152 = v179;
      v69(v179, v70, v71);
      v153 = Logger.logObject.getter();
      v154 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v153, v154))
      {
        v155 = swift_slowAlloc();
        LODWORD(v209) = v154;
        v156 = v155;
        v157 = swift_slowAlloc();
        v213[0] = v157;
        *v156 = 134218242;
        *(v156 + 4) = v113;
        *(v156 + 12) = 2080;
        v69(v195, v152, v71);
        v158 = String.init<A>(describing:)();
        v160 = v159;
        v206[1](v152, v71);
        v161 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v158, v160, v213);

        *(v156 + 14) = v161;
        _os_log_impl(&dword_20AEA4000, v153, v209, "power zone index out of bounds: %ld, alert: %s", v156, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v157);
        MEMORY[0x20F2E9420](v157, -1, -1);
        MEMORY[0x20F2E9420](v156, -1, -1);

        (*(v208 + 8))(v186, v207);
        (*(v110 + 8))(v185, v108);
      }

      else
      {

        v206[1](v152, v71);
        (*(v208 + 8))(v186, v207);
        (*(v110 + 8))(v112, v108);
      }
    }

    else
    {
      v111(v107, 1, 1, v108);
      outlined destroy of ClosedRange<Measurement<NSUnitPower>>(v107, &_s10WorkoutKit14PowerZoneAlertVSgMd, &_s10WorkoutKit14PowerZoneAlertVSgMR);
    }

    return 0;
  }

  v99(v95, 0, 1, v96);
  v100 = v193;
  (*(v98 + 32))(v193, v95, v96);
  v101 = v192;
  PowerRangeAlert.metric.getter();
  v102 = v204;
  v103 = (v205[11])(v101, v204);
  if (v103 == *MEMORY[0x277CE3F50])
  {
LABEL_33:
    v104 = 133;
    goto LABEL_34;
  }

  if (v103 != *MEMORY[0x277CE3F48])
  {
    v129 = v182;
    static WorkoutKitLog.default.getter();
    v130 = v180;
    (*(v98 + 16))(v180, v100, v96);
    v131 = Logger.logObject.getter();
    v132 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v131, v132))
    {
      v133 = swift_slowAlloc();
      v210 = swift_slowAlloc();
      v213[0] = v210;
      *v133 = 136315138;
      PowerRangeAlert.metric.getter();
      v134 = String.init<A>(describing:)();
      v135 = v130;
      v137 = v136;
      (*(v98 + 8))(v135, v96);
      v138 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v134, v137, v213);

      *(v133 + 4) = v138;
      _os_log_impl(&dword_20AEA4000, v131, v132, "unknown power range: %s. defaulting to current power", v133, 0xCu);
      v139 = v210;
      __swift_destroy_boxed_opaque_existential_0(v210);
      MEMORY[0x20F2E9420](v139, -1, -1);
      MEMORY[0x20F2E9420](v133, -1, -1);

      (*(v208 + 8))(v182, v207);
    }

    else
    {

      (*(v98 + 8))(v130, v96);
      (*(v208 + 8))(v129, v207);
    }

    (v205[1])(v192, v102);
    goto LABEL_33;
  }

  v104 = 134;
LABEL_34:
  LODWORD(v209) = v104;
  v162 = v189;
  PowerRangeAlert.target.getter();
  v163 = v202;
  v210 = v202[2];
  v164 = v200;
  v165 = v203;
  (v210)(v200, v162, v203);
  outlined destroy of ClosedRange<Measurement<NSUnitPower>>(v162, &_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMR);
  v166 = objc_opt_self();
  v167 = [v166 watts];
  v168 = v201;
  Measurement<>.converted(to:)();

  v169 = v163[1];
  v169(v164, v165);
  Measurement.value.getter();
  v171 = v170;
  v169(v168, v165);
  PowerRangeAlert.target.getter();
  (v210)(v164, v162 + *(v190 + 36), v165);
  outlined destroy of ClosedRange<Measurement<NSUnitPower>>(v162, &_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMR);
  v172 = [v166 watts];
  Measurement<>.converted(to:)();

  v169(v164, v165);
  Measurement.value.getter();
  v174 = v173;
  result = (v169)(v168, v165);
  if (v171 <= v174)
  {
    v175 = type metadata accessor for PowerZonesAlertTargetZone();
    v176 = objc_allocWithZone(v175);
    v177 = &v176[OBJC_IVAR___WOCorePowerZonesAlertTargetZone_defaultZonesDidLoad];
    *v177 = 0;
    *(v177 + 1) = 0;
    v178 = &v176[OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type];
    *v178 = v171;
    v178[1] = v174;
    *(v178 + 16) = v209;
    v212.receiver = v176;
    v212.super_class = v175;
    v115 = objc_msgSendSuper2(&v212, sel_init);
    (*(v198 + 8))(v193, v199);
    return v115;
  }

  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t TargetZone.averagePaceWKRepresentation.getter@<X0>(unsigned int *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for WorkoutAlertMetric();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v10 = *(v2 + 24);
  result = swift_beginAccess();
  v12 = *(v2 + 32);
  if (v10 == v12)
  {
    v13 = [objc_opt_self() metersPerSecond];
    (*(v6 + 104))(v9, *a1, v5);
    a2[3] = type metadata accessor for SpeedThresholdAlert();
    a2[4] = lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError(&lazy protocol witness table cache variable for type SpeedThresholdAlert and conformance SpeedThresholdAlert, MEMORY[0x277CE40E8]);
    __swift_allocate_boxed_opaque_existential_1(a2);
    static WorkoutAlert<>.speed(_:unit:metric:)();
LABEL_7:

    return (*(v6 + 8))(v9, v5);
  }

  if (v10 >= v12)
  {
    v14 = type metadata accessor for AlertValidationError();
    lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError(&lazy protocol witness table cache variable for type AlertValidationError and conformance AlertValidationError, MEMORY[0x277CE40F8]);
    swift_allocError();
    (*(*(v14 - 8) + 104))(v15, *MEMORY[0x277CE40F0], v14);
    return swift_willThrow();
  }

  if (v10 <= v12)
  {
    v13 = [objc_opt_self() metersPerSecond];
    (*(v6 + 104))(v9, *a1, v5);
    a2[3] = type metadata accessor for SpeedRangeAlert();
    a2[4] = lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError(&lazy protocol witness table cache variable for type SpeedRangeAlert and conformance SpeedRangeAlert, MEMORY[0x277CE4068]);
    __swift_allocate_boxed_opaque_existential_1(a2);
    static WorkoutAlert<>.speed(_:unit:metric:)();
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t TargetZone.currentPowerWKRepresentation.getter@<X0>(unsigned int *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for WorkoutAlertMetric();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v10 = *(v2 + 24);
  result = swift_beginAccess();
  v12 = *(v2 + 32);
  if (v10 == v12)
  {
    v13 = [objc_opt_self() watts];
    (*(v6 + 104))(v9, *a1, v5);
    a2[3] = type metadata accessor for PowerThresholdAlert();
    a2[4] = lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError(&lazy protocol witness table cache variable for type PowerThresholdAlert and conformance PowerThresholdAlert, MEMORY[0x277CE40D8]);
    __swift_allocate_boxed_opaque_existential_1(a2);
    static WorkoutAlert<>.power(_:unit:metric:)();
LABEL_7:

    return (*(v6 + 8))(v9, v5);
  }

  if (v10 >= v12)
  {
    v14 = type metadata accessor for AlertValidationError();
    lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError(&lazy protocol witness table cache variable for type AlertValidationError and conformance AlertValidationError, MEMORY[0x277CE40F8]);
    swift_allocError();
    (*(*(v14 - 8) + 104))(v15, *MEMORY[0x277CE40F0], v14);
    return swift_willThrow();
  }

  if (v10 <= v12)
  {
    v13 = [objc_opt_self() watts];
    (*(v6 + 104))(v9, *a1, v5);
    a2[3] = type metadata accessor for PowerRangeAlert();
    a2[4] = lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError(&lazy protocol witness table cache variable for type PowerRangeAlert and conformance PowerRangeAlert, MEMORY[0x277CE4058]);
    __swift_allocate_boxed_opaque_existential_1(a2);
    static WorkoutAlert<>.power(_:unit:metric:)();
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in WorkoutAlert.targetZone(activityType:configurationContext:validator:)(uint64_t *a1, void *a2, uint64_t a3)
{
  v341 = a2;
  v385 = a1;
  v369 = type metadata accessor for Logger();
  v328 = *(v369 - 8);
  v4 = *(v328 + 64);
  MEMORY[0x28223BE20](v369);
  v327 = &v314 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v322 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMR);
  v6 = *(*(v322 - 8) + 64);
  MEMORY[0x28223BE20](v322);
  v321 = &v314 - v7;
  v340 = type metadata accessor for PowerRangeAlert();
  v332 = *(v340 - 8);
  v8 = *(v332 + 64);
  v9 = MEMORY[0x28223BE20](v340);
  v316 = &v314 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v336 = &v314 - v12;
  MEMORY[0x28223BE20](v11);
  v338 = &v314 - v13;
  v335 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  v334 = *(v335 - 8);
  v14 = v334[8];
  v15 = MEMORY[0x28223BE20](v335);
  v320 = &v314 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v319 = &v314 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v330 = &v314 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v333 = &v314 - v22;
  MEMORY[0x28223BE20](v21);
  v329 = &v314 - v23;
  v350 = type metadata accessor for PowerThresholdAlert();
  v342 = *(v350 - 8);
  v24 = *(v342 + 64);
  v25 = MEMORY[0x28223BE20](v350);
  v317 = &v314 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v339 = &v314 - v28;
  MEMORY[0x28223BE20](v27);
  v344 = &v314 - v29;
  v348 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMd, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMR);
  v30 = *(*(v348 - 8) + 64);
  MEMORY[0x28223BE20](v348);
  v347 = &v314 - v31;
  v361 = type metadata accessor for CadenceRangeAlert();
  v356 = *(v361 - 8);
  v32 = *(v356 + 64);
  v33 = MEMORY[0x28223BE20](v361);
  v326 = &v314 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v362 = &v314 - v36;
  MEMORY[0x28223BE20](v35);
  v353 = &v314 - v37;
  v360 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  v359 = *(v360 - 8);
  v38 = v359[8];
  v39 = MEMORY[0x28223BE20](v360);
  v346 = &v314 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v345 = &v314 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v355 = &v314 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v358 = &v314 - v46;
  MEMORY[0x28223BE20](v45);
  v354 = &v314 - v47;
  v372 = type metadata accessor for CadenceThresholdAlert();
  v368 = *(v372 - 8);
  v48 = *(v368 + 64);
  v49 = MEMORY[0x28223BE20](v372);
  v337 = &v314 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x28223BE20](v49);
  v370 = &v314 - v52;
  MEMORY[0x28223BE20](v51);
  v363 = &v314 - v53;
  v367 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMR);
  v54 = *(*(v367 - 8) + 64);
  MEMORY[0x28223BE20](v367);
  v366 = &v314 - v55;
  v378 = type metadata accessor for SpeedRangeAlert();
  v376 = *(v378 - 1);
  v56 = *(v376 + 8);
  v57 = MEMORY[0x28223BE20](v378);
  v343 = &v314 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x28223BE20](v57);
  v383 = &v314 - v60;
  MEMORY[0x28223BE20](v59);
  v373 = &v314 - v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
  v380 = *(v62 - 8);
  v381 = v62;
  v63 = v380[8];
  v64 = MEMORY[0x28223BE20](v62);
  v365 = &v314 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = MEMORY[0x28223BE20](v64);
  v364 = &v314 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v375 = (&v314 - v69);
  v70 = MEMORY[0x28223BE20](v68);
  v379 = &v314 - v71;
  MEMORY[0x28223BE20](v70);
  v374 = &v314 - v72;
  v73 = type metadata accessor for WorkoutAlertMetric();
  v74 = *(v73 - 8);
  v75 = *(v74 + 8);
  v76 = MEMORY[0x28223BE20](v73);
  v323 = &v314 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = MEMORY[0x28223BE20](v76);
  v331 = &v314 - v79;
  v80 = MEMORY[0x28223BE20](v78);
  v349 = &v314 - v81;
  v82 = MEMORY[0x28223BE20](v80);
  v357 = &v314 - v83;
  v84 = MEMORY[0x28223BE20](v82);
  v371 = &v314 - v85;
  v86 = MEMORY[0x28223BE20](v84);
  v351 = &v314 - v87;
  MEMORY[0x28223BE20](v86);
  v89 = (&v314 - v88);
  v90 = type metadata accessor for SpeedThresholdAlert();
  v91 = *(v90 - 8);
  v92 = *(v91 + 64);
  v93 = MEMORY[0x28223BE20](v90);
  v352 = &v314 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = MEMORY[0x28223BE20](v93);
  v97 = &v314 - v96;
  v98 = MEMORY[0x28223BE20](v95);
  v100 = &v314 - v99;
  v101 = *(a3 - 8);
  v102 = *(v101 + 64);
  v103 = MEMORY[0x28223BE20](v98);
  v318 = &v314 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = MEMORY[0x28223BE20](v103);
  v325 = &v314 - v106;
  MEMORY[0x28223BE20](v105);
  v108 = &v314 - v107;
  v384 = v101;
  v324 = *(v101 + 16);
  v324(&v314 - v107, v385, a3);
  if (!swift_dynamicCast())
  {
    v374 = v73;
    v375 = v74;
    v113 = v373;
    v114 = v378;
    v115 = a3;
    if (swift_dynamicCast())
    {
      v116 = v376;
      (*(v376 + 4))(v383, v113, v114);
      v117 = v371;
      SpeedRangeAlert.metric.getter();
      v118 = v374;
      v119 = v375[11](v117, v374);
      v120 = *MEMORY[0x277CE3F50];
      v377 = a3;
      v382 = v108;
      if (v119 != v120)
      {
        if (v119 == *MEMORY[0x277CE3F48])
        {
          LODWORD(v385) = 0;
          LODWORD(v375) = 1;
LABEL_43:
          v190 = v366;
          SpeedRangeAlert.target.getter();
          v191 = v379;
          v192 = v380;
          v193 = v380[2];
          v194 = v381;
          v193(v379, v190, v381);
          outlined destroy of ClosedRange<Measurement<NSUnitPower>>(v190, &_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMR);
          v195 = objc_opt_self();
          v196 = [v195 metersPerSecond];
          v197 = v364;
          Measurement<>.converted(to:)();

          v198 = v192[1];
          v198(v191, v194);
          Measurement.value.getter();
          v200 = v199;
          v198(v197, v194);
          v201 = v383;
          SpeedRangeAlert.target.getter();
          v193(v191, v190 + *(v367 + 36), v194);
          outlined destroy of ClosedRange<Measurement<NSUnitPower>>(v190, &_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMR);
          v202 = [v195 metersPerSecond];
          v203 = v365;
          Measurement<>.converted(to:)();

          v198(v191, v194);
          Measurement.value.getter();
          v205 = v204;
          v198(v203, v194);
          type metadata accessor for TargetZone();
          v171 = swift_allocObject();
          *(v171 + 16) = v375;
          *(v171 + 24) = v200;
          *(v171 + 32) = v205;
          v206 = _stringCompareWithSmolCheck(_:_:expecting:)();

          (*(v376 + 1))(v201, v378);
          goto LABEL_44;
        }

        if (one-time initialization token for core != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v369, static WOLog.core);
        v148 = v343;
        v116[2](v343, v383, v114);
        v149 = Logger.logObject.getter();
        v150 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v149, v150))
        {
          v151 = swift_slowAlloc();
          v152 = swift_slowAlloc();
          v386 = v152;
          *v151 = 136315138;
          SpeedRangeAlert.metric.getter();
          v153 = String.init<A>(describing:)();
          v154 = v148;
          v156 = v155;
          (*(v376 + 1))(v154, v114);
          v157 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v153, v156, &v386);

          *(v151 + 4) = v157;
          _os_log_impl(&dword_20AEA4000, v149, v150, "Unknown speed range %s", v151, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v152);
          MEMORY[0x20F2E9420](v152, -1, -1);
          v158 = v151;
          v118 = v374;
          MEMORY[0x20F2E9420](v158, -1, -1);
        }

        else
        {

          (v116[1])(v148, v114);
        }

        v375[1](v371, v118);
      }

      LODWORD(v375) = 2;
      LODWORD(v385) = 1;
      goto LABEL_43;
    }

    v121 = v363;
    v122 = v372;
    if (swift_dynamicCast())
    {
      v123 = v368;
      (*(v368 + 32))(v370, v121, v122);
      v124 = v357;
      CadenceRangeAlert.metric.getter();
      v125 = v374;
      v126 = v375[11](v124, v374);
      v127 = *MEMORY[0x277CE3F50];
      v382 = v108;
      if (v126 != v127)
      {
        if (v126 == *MEMORY[0x277CE3F48])
        {
          v128 = 4;
          LODWORD(v385) = 1;
          goto LABEL_60;
        }

        if (one-time initialization token for core != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v369, static WOLog.core);
        v179 = v337;
        (*(v123 + 16))(v337, v370, v122);
        v180 = Logger.logObject.getter();
        v181 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v180, v181))
        {
          v182 = swift_slowAlloc();
          v183 = swift_slowAlloc();
          v386 = v183;
          *v182 = 136315138;
          v184 = v123;
          CadenceRangeAlert.metric.getter();
          v185 = String.init<A>(describing:)();
          v187 = v186;
          (*(v184 + 8))(v179, v372);
          v188 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v185, v187, &v386);

          *(v182 + 4) = v188;
          _os_log_impl(&dword_20AEA4000, v180, v181, "Unknown cadence threshold %s", v182, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v183);
          MEMORY[0x20F2E9420](v183, -1, -1);
          v189 = v182;
          v125 = v374;
          MEMORY[0x20F2E9420](v189, -1, -1);
        }

        else
        {

          (*(v123 + 8))(v179, v122);
        }

        v375[1](v357, v125);
      }

      LODWORD(v385) = 0;
      v128 = 3;
LABEL_60:
      v226 = v358;
      v227 = v370;
      CadenceThresholdAlert.target.getter();
      v228 = static WorkoutAlertMetric.countPerMinute.getter();
      v229 = v354;
      v230 = v360;
      Measurement<>.converted(to:)();

      v231 = v359[1];
      v231(v226, v230);
      Measurement.value.getter();
      v200 = v232;
      v231(v229, v230);
      CadenceThresholdAlert.target.getter();
      v233 = static WorkoutAlertMetric.countPerMinute.getter();
      v234 = v355;
      Measurement<>.converted(to:)();

      v231(v226, v230);
      Measurement.value.getter();
      v205 = v235;
      v231(v234, v230);
      type metadata accessor for TargetZone();
      v171 = swift_allocObject();
      *(v171 + 16) = v128;
      *(v171 + 24) = v200;
      *(v171 + 32) = v205;
      LOBYTE(v234) = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*(v368 + 8))(v227, v372);
      v207 = 0;
      v108 = v382;
      if ((v234 & 1) == 0)
      {
        goto LABEL_71;
      }

      goto LABEL_74;
    }

    v141 = v353;
    v142 = v361;
    if (swift_dynamicCast())
    {
      v143 = v356;
      (*(v356 + 32))(v362, v141, v142);
      v144 = v349;
      CadenceRangeAlert.metric.getter();
      v145 = v374;
      v146 = v375[11](v144, v374);
      v147 = *MEMORY[0x277CE3F50];
      v377 = v115;
      if (v146 != v147)
      {
        if (v146 == *MEMORY[0x277CE3F48])
        {
          LODWORD(v383) = 4;
          LODWORD(v385) = 1;
          goto LABEL_70;
        }

        if (one-time initialization token for core != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v369, static WOLog.core);
        v212 = v326;
        (*(v143 + 16))(v326, v362, v142);
        v213 = Logger.logObject.getter();
        v214 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v213, v214))
        {
          v215 = swift_slowAlloc();
          v216 = swift_slowAlloc();
          v386 = v216;
          *v215 = 136315138;
          v217 = v143;
          CadenceRangeAlert.metric.getter();
          v218 = String.init<A>(describing:)();
          v220 = v219;
          (*(v217 + 8))(v212, v361);
          v221 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v218, v220, &v386);

          *(v215 + 4) = v221;
          _os_log_impl(&dword_20AEA4000, v213, v214, "Unknown cadence range %s", v215, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v216);
          MEMORY[0x20F2E9420](v216, -1, -1);
          v222 = v215;
          v145 = v374;
          MEMORY[0x20F2E9420](v222, -1, -1);
        }

        else
        {

          (*(v143 + 8))(v212, v142);
        }

        v375[1](v349, v145);
      }

      LODWORD(v385) = 0;
      LODWORD(v383) = 3;
LABEL_70:
      v251 = v347;
      CadenceRangeAlert.target.getter();
      v252 = v359;
      v253 = v359[2];
      v254 = v358;
      v255 = v360;
      v253(v358, v251, v360);
      outlined destroy of ClosedRange<Measurement<NSUnitPower>>(v251, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMd, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMR);
      v256 = static WorkoutAlertMetric.countPerMinute.getter();
      v257 = v345;
      Measurement<>.converted(to:)();

      v258 = v252[1];
      v258(v254, v255);
      Measurement.value.getter();
      v200 = v259;
      v258(v257, v255);
      v260 = v362;
      CadenceRangeAlert.target.getter();
      v253(v254, v251 + *(v348 + 36), v255);
      outlined destroy of ClosedRange<Measurement<NSUnitPower>>(v251, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMd, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMR);
      v261 = static WorkoutAlertMetric.countPerMinute.getter();
      v262 = v346;
      Measurement<>.converted(to:)();

      v258(v254, v255);
      Measurement.value.getter();
      v205 = v263;
      v258(v262, v255);
      type metadata accessor for TargetZone();
      v171 = swift_allocObject();
      *(v171 + 16) = v383;
      *(v171 + 24) = v200;
      *(v171 + 32) = v205;
      LOBYTE(v254) = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*(v356 + 8))(v260, v361);
      v207 = 0;
      v115 = v377;
      if ((v254 & 1) == 0)
      {
        goto LABEL_71;
      }

      goto LABEL_74;
    }

    v175 = v344;
    v176 = v350;
    if (swift_dynamicCast())
    {
      v177 = v342;
      v178 = v339;
      (*(v342 + 32))(v339, v175, v176);
      if ([v341 effectiveTypeIdentifier] == 13)
      {
        (*(v177 + 8))(v178, v176);
LABEL_49:
        v171 = 0;
LABEL_75:
        v174 = v384;
        goto LABEL_76;
      }

      v223 = v331;
      PowerThresholdAlert.metric.getter();
      v224 = v374;
      v225 = v375[11](v223, v374);
      if (v225 != *MEMORY[0x277CE3F50])
      {
        if (v225 == *MEMORY[0x277CE3F48])
        {
          LODWORD(v385) = 0;
          LODWORD(v383) = 6;
          goto LABEL_90;
        }

        if (one-time initialization token for core != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v369, static WOLog.core);
        v265 = v317;
        (*(v177 + 16))(v317, v178, v176);
        v266 = Logger.logObject.getter();
        v267 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v266, v267))
        {
          v268 = swift_slowAlloc();
          v269 = swift_slowAlloc();
          v386 = v269;
          *v268 = 136315138;
          v270 = v177;
          PowerThresholdAlert.metric.getter();
          v271 = String.init<A>(describing:)();
          v273 = v272;
          v274 = v270;
          v178 = v339;
          (*(v274 + 8))(v265, v350);
          v275 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v271, v273, &v386);

          *(v268 + 4) = v275;
          _os_log_impl(&dword_20AEA4000, v266, v267, "Unknown power threshold %s", v268, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v269);
          MEMORY[0x20F2E9420](v269, -1, -1);
          v276 = v268;
          v224 = v374;
          MEMORY[0x20F2E9420](v276, -1, -1);
        }

        else
        {

          (*(v177 + 8))(v265, v176);
        }

        v375[1](v331, v224);
      }

      LODWORD(v383) = 5;
      LODWORD(v385) = 1;
LABEL_90:
      v289 = v333;
      PowerThresholdAlert.target.getter();
      v290 = objc_opt_self();
      v291 = [v290 watts];
      v292 = v329;
      v293 = v178;
      v294 = v335;
      Measurement<>.converted(to:)();

      v295 = v334[1];
      v295(v289, v294);
      Measurement.value.getter();
      v200 = v296;
      v295(v292, v294);
      PowerThresholdAlert.target.getter();
      v297 = [v290 watts];
      v298 = v330;
      Measurement<>.converted(to:)();

      v295(v289, v294);
      Measurement.value.getter();
      v205 = v299;
      v295(v298, v294);
      type metadata accessor for TargetZone();
      v171 = swift_allocObject();
      *(v171 + 16) = v383;
      *(v171 + 24) = v200;
      *(v171 + 32) = v205;
      LOBYTE(v295) = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*(v342 + 8))(v293, v350);
      v207 = 0;
      if ((v295 & 1) == 0)
      {
        goto LABEL_71;
      }

      goto LABEL_74;
    }

    v208 = v338;
    v209 = v340;
    if (!swift_dynamicCast())
    {
      v236 = v327;
      static WorkoutKitLog.default.getter();
      v237 = v325;
      v238 = v324;
      v324(v325, v385, v115);
      v239 = Logger.logObject.getter();
      v240 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v239, v240))
      {
        v241 = swift_slowAlloc();
        v385 = swift_slowAlloc();
        v386 = v385;
        *v241 = 136315138;
        v238(v318, v237, v115);
        v242 = String.init<A>(describing:)();
        v244 = v243;
        v174 = v384;
        (*(v384 + 8))(v237, v115);
        v245 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v242, v244, &v386);

        *(v241 + 4) = v245;
        _os_log_impl(&dword_20AEA4000, v239, v240, "unknown WorkoutAlert type: %s", v241, 0xCu);
        v246 = v385;
        __swift_destroy_boxed_opaque_existential_0(v385);
        MEMORY[0x20F2E9420](v246, -1, -1);
        MEMORY[0x20F2E9420](v241, -1, -1);
      }

      else
      {

        v174 = v384;
        (*(v384 + 8))(v237, v115);
      }

      (*(v328 + 8))(v236, v369);
      v171 = 0;
      goto LABEL_76;
    }

    v210 = v332;
    v211 = v336;
    (*(v332 + 32))(v336, v208, v209);
    if ([v341 effectiveTypeIdentifier] == 13)
    {
      (*(v210 + 8))(v211, v209);
      goto LABEL_49;
    }

    v247 = v323;
    PowerRangeAlert.metric.getter();
    v248 = v374;
    v249 = v375[11](v247, v374);
    v250 = *MEMORY[0x277CE3F50];
    v377 = v115;
    v382 = v108;
    if (v249 != v250)
    {
      if (v249 == *MEMORY[0x277CE3F48])
      {
        LODWORD(v385) = 0;
        LODWORD(v383) = 6;
LABEL_95:
        v300 = v321;
        PowerRangeAlert.target.getter();
        v301 = v334;
        v302 = v334[2];
        v303 = v333;
        v304 = v335;
        v302(v333, v300, v335);
        outlined destroy of ClosedRange<Measurement<NSUnitPower>>(v300, &_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMR);
        v305 = objc_opt_self();
        v306 = [v305 watts];
        v307 = v319;
        Measurement<>.converted(to:)();

        v308 = v301[1];
        v308(v303, v304);
        Measurement.value.getter();
        v200 = v309;
        v308(v307, v304);
        v310 = v336;
        PowerRangeAlert.target.getter();
        v302(v303, v300 + *(v322 + 36), v304);
        outlined destroy of ClosedRange<Measurement<NSUnitPower>>(v300, &_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMR);
        v311 = [v305 watts];
        v312 = v320;
        Measurement<>.converted(to:)();

        v308(v303, v304);
        Measurement.value.getter();
        v205 = v313;
        v308(v312, v304);
        type metadata accessor for TargetZone();
        v171 = swift_allocObject();
        *(v171 + 16) = v383;
        *(v171 + 24) = v200;
        *(v171 + 32) = v205;
        v206 = _stringCompareWithSmolCheck(_:_:expecting:)();

        (*(v332 + 8))(v310, v340);
LABEL_44:
        v207 = 0;
        v115 = v377;
        v108 = v382;
        if ((v206 & 1) == 0)
        {
LABEL_71:
          v207 = v200 > 0.0 || v205 > 0.0;
        }

LABEL_74:
        *(v171 + 40) = v207;
        goto LABEL_75;
      }

      if (one-time initialization token for core != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v369, static WOLog.core);
      v277 = v316;
      (*(v210 + 16))(v316, v211, v209);
      v278 = Logger.logObject.getter();
      v279 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v278, v279))
      {
        v280 = swift_slowAlloc();
        v281 = swift_slowAlloc();
        v386 = v281;
        *v280 = 136315138;
        v282 = v279;
        PowerRangeAlert.metric.getter();
        v283 = String.init<A>(describing:)();
        v284 = v210;
        v286 = v285;
        (*(v284 + 8))(v277, v340);
        v287 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v283, v286, &v386);

        *(v280 + 4) = v287;
        _os_log_impl(&dword_20AEA4000, v278, v282, "Unknown power range %s", v280, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v281);
        MEMORY[0x20F2E9420](v281, -1, -1);
        v288 = v280;
        v248 = v374;
        MEMORY[0x20F2E9420](v288, -1, -1);
      }

      else
      {

        (*(v210 + 8))(v277, v209);
      }

      v375[1](v323, v248);
    }

    LODWORD(v383) = 5;
    LODWORD(v385) = 1;
    goto LABEL_95;
  }

  v382 = v108;
  (*(v91 + 32))(v97, v100, v90);
  SpeedThresholdAlert.metric.getter();
  v109 = (*(v74 + 11))(v89, v73);
  v110 = v109 == *MEMORY[0x277CE3F50];
  v111 = v97;
  v377 = a3;
  v315 = v90;
  v314 = v91;
  if (v110)
  {
LABEL_27:
    v112 = 2;
    LODWORD(v385) = 1;
    goto LABEL_28;
  }

  if (v109 != *MEMORY[0x277CE3F48])
  {
    v385 = v89;
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v369, static WOLog.core);
    v129 = v352;
    (*(v91 + 16))(v352, v111, v90);
    v130 = Logger.logObject.getter();
    v131 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v130, v131))
    {
      v132 = swift_slowAlloc();
      v376 = v132;
      v378 = swift_slowAlloc();
      v386 = v378;
      *v132 = 136315138;
      v133 = v129;
      v383 = v111;
      SpeedThresholdAlert.metric.getter();
      v134 = String.init<A>(describing:)();
      v135 = v74;
      v137 = v136;
      (*(v91 + 8))(v133, v90);
      v138 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v134, v137, &v386);
      v74 = v135;
      v111 = v383;

      v139 = v376;
      *(v376 + 1) = v138;
      _os_log_impl(&dword_20AEA4000, v130, v131, "Unknown speed treshold %s", v139, 0xCu);
      v140 = v378;
      __swift_destroy_boxed_opaque_existential_0(v378);
      MEMORY[0x20F2E9420](v140, -1, -1);
      MEMORY[0x20F2E9420](v139, -1, -1);
    }

    else
    {

      (*(v91 + 8))(v129, v90);
    }

    (*(v74 + 1))(v385, v73);
    goto LABEL_27;
  }

  LODWORD(v385) = 0;
  v112 = 1;
LABEL_28:
  v159 = v379;
  SpeedThresholdAlert.target.getter();
  v160 = objc_opt_self();
  v161 = [v160 metersPerSecond];
  v162 = v374;
  v163 = v381;
  Measurement<>.converted(to:)();

  v164 = v380[1];
  v164(v159, v163);
  Measurement.value.getter();
  v166 = v165;
  v164(v162, v163);
  SpeedThresholdAlert.target.getter();
  v167 = [v160 metersPerSecond];
  v168 = v375;
  Measurement<>.converted(to:)();

  v164(v159, v163);
  Measurement.value.getter();
  v170 = v169;
  v164(v168, v163);
  type metadata accessor for TargetZone();
  v171 = swift_allocObject();
  *(v171 + 16) = v112;
  *(v171 + 24) = v166;
  *(v171 + 32) = v170;
  v172 = _stringCompareWithSmolCheck(_:_:expecting:)();

  (*(v314 + 8))(v111, v315);
  v173 = 0;
  v108 = v382;
  if ((v172 & 1) == 0)
  {
    v173 = v166 > 0.0 || v170 > 0.0;
  }

  *(v171 + 40) = v173;
  v174 = v384;
  v115 = v377;
LABEL_76:
  (*(v174 + 8))(v108, v115);
  return v171;
}

uint64_t outlined destroy of ClosedRange<Measurement<NSUnitPower>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MetadataSavingDelegate.metadataProvider.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*MetadataSavingDelegate.metadataProvider.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___WOMetadataSavingDelegate_metadataProvider;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return MetadataSavingDelegate.metadataProvider.modify;
}

void MetadataSavingDelegate.metadataProvider.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = v3[3];
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

id MetadataSavingDelegate.__allocating_init(builder:timeBetweenSaves:)(uint64_t a1, double a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___WOMetadataSavingDelegate_lastSaveTime] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR___WOMetadataSavingDelegate_builder] = a1;
  *&v5[OBJC_IVAR___WOMetadataSavingDelegate_kSaveNewMetadataTimeout] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id MetadataSavingDelegate.init(builder:timeBetweenSaves:)(uint64_t a1, double a2)
{
  *&v2[OBJC_IVAR___WOMetadataSavingDelegate_lastSaveTime] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR___WOMetadataSavingDelegate_builder] = a1;
  *&v2[OBJC_IVAR___WOMetadataSavingDelegate_kSaveNewMetadataTimeout] = a2;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for MetadataSavingDelegate();
  return objc_msgSendSuper2(&v6, sel_init);
}

Swift::Void __swiftcall MetadataSavingDelegate.updateWithElapsedTime(_:)(Swift::Double a1)
{
  v2 = OBJC_IVAR___WOMetadataSavingDelegate_lastSaveTime;
  v3 = *(v1 + OBJC_IVAR___WOMetadataSavingDelegate_lastSaveTime);
  if (v3 < a1 && *(v1 + OBJC_IVAR___WOMetadataSavingDelegate_kSaveNewMetadataTimeout) <= a1 - v3)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = [Strong metadata];
      swift_unknownObjectRelease();
      v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    }

    v8 = *(v1 + OBJC_IVAR___WOMetadataSavingDelegate_builder);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v10 = swift_allocObject();
    *(v10 + 16) = v7;
    aBlock[4] = partial apply for closure #1 in MetadataSavingDelegate.insertOrUpdateMetadata(_:);
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_21;
    v11 = _Block_copy(aBlock);

    [v8 addMetadata:isa completion:v11];
    _Block_release(v11);

    *(v1 + v2) = a1;
  }
}

Swift::Void __swiftcall MetadataSavingDelegate.saveMetadata()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = [Strong metadata];
    swift_unknownObjectRelease();
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  v4 = *(v0 + OBJC_IVAR___WOMetadataSavingDelegate_builder);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  aBlock[4] = closure #1 in MetadataSavingDelegate.insertOrUpdateMetadata(_:)partial apply;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_7_0;
  v7 = _Block_copy(aBlock);

  [v4 addMetadata:isa completion:v7];
  _Block_release(v7);
}

Swift::Void __swiftcall MetadataSavingDelegate.insertOrUpdateMetadata(_:)(Swift::OpaquePointer a1)
{
  v3 = *(v1 + OBJC_IVAR___WOMetadataSavingDelegate_builder);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v5 = swift_allocObject();
  v5[2]._rawValue = a1._rawValue;
  v7[4] = closure #1 in MetadataSavingDelegate.insertOrUpdateMetadata(_:)partial apply;
  v7[5] = v5;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  v7[3] = &block_descriptor_14_2;
  v6 = _Block_copy(v7);

  [v3 addMetadata:isa completion:v6];
  _Block_release(v6);
}

void closure #1 in MetadataSavingDelegate.insertOrUpdateMetadata(_:)(char a1, void *a2)
{
  if (a1)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static WOLog.default);

    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v23 = v5;
      *v4 = 136315138;
      v6 = Dictionary.description.getter();
      v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v23);

      *(v4 + 4) = v8;
      _os_log_impl(&dword_20AEA4000, oslog, v3, "[SessionMetadataDelegate] Successfully added metadata to builder: %s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v5);
      MEMORY[0x20F2E9420](v5, -1, -1);
      v9 = v4;
LABEL_10:
      MEMORY[0x20F2E9420](v9, -1, -1);

      return;
    }
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static WOLog.default);

    v12 = a2;
    oslog = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23 = v15;
      *v14 = 136315394;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, _ss5Error_pSgMR);
      v16 = Optional.description.getter();
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v23);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2080;
      v19 = Dictionary.description.getter();
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v23);

      *(v14 + 14) = v21;
      _os_log_impl(&dword_20AEA4000, oslog, v13, "[SessionMetadataDelegate] Failed to add metadata to builder with error: %s, metadata: %s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v15, -1, -1);
      v9 = v14;
      goto LABEL_10;
    }
  }
}

Swift::Void __swiftcall MetadataSavingDelegate.removeMetadata(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = *(v1 + OBJC_IVAR___WOMetadataSavingDelegate_builder);
  v5 = MEMORY[0x20F2E6C00]();
  v6 = swift_allocObject();
  *(v6 + 16) = countAndFlagsBits;
  *(v6 + 24) = object;
  v8[4] = partial apply for closure #1 in MetadataSavingDelegate.removeMetadata(_:);
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  v8[3] = &block_descriptor_20;
  v7 = _Block_copy(v8);

  [v4 _removeMetadata_completion_];
  _Block_release(v7);
}

void closure #1 in MetadataSavingDelegate.removeMetadata(_:)(char a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (a1)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static WOLog.default);

    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v21 = v9;
      *v8 = 136315138;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, &v21);
      _os_log_impl(&dword_20AEA4000, oslog, v7, "[SessionMetadataDelegate] Successfully removed metadata to builder: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x20F2E9420](v9, -1, -1);
      v10 = v8;
LABEL_10:
      MEMORY[0x20F2E9420](v10, -1, -1);

      return;
    }
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static WOLog.default);

    v13 = a2;
    oslog = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21 = v16;
      *v15 = 136315394;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, _ss5Error_pSgMR);
      v17 = Optional.description.getter();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v21);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;
      *(v15 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, &v21);
      _os_log_impl(&dword_20AEA4000, oslog, v14, "[SessionMetadataDelegate] Failed to remove metadata from builder with error: %s, metadataKey: %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v16, -1, -1);
      v10 = v15;
      goto LABEL_10;
    }
  }
}

id MetadataSavingDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MetadataSavingDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MetadataSavingDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t PowerZonesAccumulator.livePowerZones.getter()
{
  v1 = *(v0 + OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_livePowerZonesInternal);
  if (!v1)
  {
    return 0;
  }

  swift_beginAccess();
  v2 = *(v1 + 16);
  swift_beginAccess();
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  swift_beginAccess();
  v5 = *(v1 + 33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore9LiveZonesCyAA0C9PowerZoneCGMd, &_s11WorkoutCore9LiveZonesCyAA0C9PowerZoneCGMR);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 32) = 1;
  *(v6 + 16) = v2;
  swift_beginAccess();
  *(v6 + 24) = v3;
  *(v6 + 32) = v4;
  *(v6 + 33) = v5;
  v8 = v6;

  specialized ZonesAccumulator.update<A>(liveZones:)(&v8);

  return v6;
}

uint64_t PowerZonesAccumulator.zones.getter()
{
  v1 = *(v0 + OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_livePowerZonesInternal);
  if (v1)
  {
    swift_beginAccess();
    v2 = *(v1 + 16);
    swift_beginAccess();
    v3 = *(v1 + 24);
    v4 = *(v1 + 32);
    swift_beginAccess();
    v5 = *(v1 + 33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore9LiveZonesCyAA0C9PowerZoneCGMd, &_s11WorkoutCore9LiveZonesCyAA0C9PowerZoneCGMR);
    inited = swift_initStackObject();
    *(inited + 24) = 0;
    *(inited + 32) = 1;
    *(inited + 16) = v2;
    swift_beginAccess();
    *(inited + 24) = v3;
    *(inited + 32) = v4;
    *(inited + 33) = v5;
    v8 = inited;

    specialized ZonesAccumulator.update<A>(liveZones:)(&v8);

    swift_beginAccess();
    v1 = specialized _arrayForceCast<A, B>(_:)(*(inited + 16));
  }

  return v1;
}

uint64_t key path setter for PowerZonesAccumulator.lastAlertFiredAtDate : PowerZonesAccumulator(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  outlined init with copy of Date?(a1, &v11 - v6);
  v8 = *a2;
  v9 = OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_lastAlertFiredAtDate;
  swift_beginAccess();
  outlined assign with take of Date?(v7, v8 + v9);
  return swift_endAccess();
}

uint64_t PowerZonesAccumulator.lastAlertFiredAtDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_lastAlertFiredAtDate;
  swift_beginAccess();
  return outlined init with copy of Date?(v1 + v3, a1);
}

uint64_t PowerZonesAccumulator.lastAlertFiredAtDate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_lastAlertFiredAtDate;
  swift_beginAccess();
  outlined assign with take of Date?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t PowerZonesAccumulator.oldZoneState.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_oldZoneState;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t PowerZonesAccumulator.oldZoneState.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_oldZoneState;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t (*PowerZonesAccumulator.workoutAlertDelegate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_workoutAlertDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return PowerZonesAccumulator.workoutAlertDelegate.modify;
}

id @objc PowerZonesAccumulator.workoutAlertDelegate.getter(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

uint64_t PowerZonesAccumulator.workoutAlertDelegate.getter(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t @objc PowerZonesAccumulator.workoutAlertDelegate.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t PowerZonesAccumulator.workoutAlertDelegate.setter(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*PowerZonesAccumulator.powerZonesConfigurationDelegate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_powerZonesConfigurationDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return PowerZonesAccumulator.powerZonesConfigurationDelegate.modify;
}

void PowerZonesAccumulator.workoutAlertDelegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = v3[3];
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

id PowerZonesAccumulator.init(builder:activityType:healthStore:quantityTypeIdentifier:liveWorkoutConfiguration:targetZone:)(void *a1, void *a2, void *a3, void *a4, char *a5, void *a6)
{
  v7 = v6;
  v88 = a4;
  v91 = a1;
  ObjectType = swift_getObjectType();
  v12 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v13 = *(v12 - 8);
  v95 = v12;
  v96 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v89 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v87 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for OS_dispatch_queue.Attributes();
  v19 = *(*(v90 - 8) + 64);
  MEMORY[0x28223BE20](v90);
  *&v7[OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_livePowerZonesInternal] = 0;
  v20 = OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_lastAlertFiredAtDate;
  v21 = type metadata accessor for Date();
  v22 = *(*(v21 - 8) + 56);
  v22(&v7[v20], 1, 1, v21);
  v81 = v22;
  v7[OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_oldZoneState] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v7[OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_configurationStore] = specialized static CyclingPowerZonesConfigurationStore.create(with:)(a3);
  *&v7[OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_powerZonesAlertTargetZone] = a6;
  *&v7[OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_activityType] = a2;
  v94 = a5;
  v23 = *&a5[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration];
  type metadata accessor for IntervalWorkoutConfiguration();
  v24 = swift_dynamicCastClass();
  v25 = 60.0;
  if (v24)
  {
    v25 = 10.0;
  }

  *&v7[OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_alertHoldoffTime] = v25;
  v26 = objc_opt_self();
  v93 = a6;
  v92 = a2;
  v91 = v91;
  v85 = a3;
  v88 = v88;
  v86 = [v26 wattUnit];
  v22(&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_activityStartDate], 1, 1, v21);
  v27 = MEMORY[0x277D84F90];
  *&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_pendingSamples] = MEMORY[0x277D84F90];
  v28 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_propertyQueue;
  v82 = type metadata accessor for OS_dispatch_queue();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  static DispatchQoS.unspecified.getter();
  v84 = *MEMORY[0x277D85260];
  v29 = *(v96 + 104);
  v96 += 104;
  v83 = v29;
  v30 = v89;
  v29(v89);
  *&v7[v28] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v31 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator__elapsedTimes;
  v32 = v27;
  *&v7[v31] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SdTt0g5Tf4g_n(v27);
  v33 = v81;
  v81(&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator__lastProcessedEntryDate], 1, 1, v21);
  v34 = &v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator__currentZoneIndex];
  *v34 = 0;
  v34[8] = 1;
  v33(&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_activeStartDate], 1, 1, v21);
  v33(&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_lastProcessedEventDate], 1, 1, v21);
  v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_isPaused] = 0;
  v35 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_processingQueue;
  static DispatchQoS.unspecified.getter();
  v98[0] = v32;
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  v36 = v85;
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_0(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  v37 = v88;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v83(v30, v84, v95);
  v38 = v86;
  *&v7[v35] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v39 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_threeSecondAccumulator;
  *&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_threeSecondAccumulator] = 0;
  v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_disabledForSession] = 0;
  *&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_query] = 0;
  *&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_healthStore] = v36;
  *&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_staleTimeout] = 0x403E000000000000;
  v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_shouldSplitByActivity] = 0;
  *&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_quantityTypeIdentifier] = v37;
  *&v7[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_quantitySampleUnit] = v38;
  v40 = *MEMORY[0x277CCC9C0];
  v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v42;
  if (v41 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v43 == v44)
  {
    v45 = v36;
    v46 = v37;
    v47 = v38;
  }

  else
  {
    v48 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v49 = v36;
    v50 = v37;
    v51 = v38;

    if ((v48 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  type metadata accessor for WindowedAccumulator();
  v52 = swift_allocObject();
  *(v52 + 48) = MEMORY[0x277D84F90];
  *(v52 + 56) = 0;
  *(v52 + 16) = 0x4010000000000000;
  *(v52 + 24) = 0;
  *(v52 + 32) = 0;
  *(v52 + 40) = 1;
  v53 = *&v7[v39];
  *&v7[v39] = v52;

  if (one-time initialization token for zones != -1)
  {
    swift_once();
  }

  v54 = type metadata accessor for Logger();
  __swift_project_value_buffer(v54, static WOLog.zones);
  v55 = v37;
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v98[0] = v59;
    *v58 = 136315394;
    implicit closure #1 in ZonesAccumulator.init(builder:healthStore:staleTimeout:shouldSplitByActivity:quantityTypeIdentifier:quantitySampleUnit:)(ObjectType);
    v60 = _typeName(_:qualified:)();
    v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v61, v98);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2080;
    v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v64, v98);

    *(v58 + 14) = v65;
    _os_log_impl(&dword_20AEA4000, v56, v57, "%s using 3s average accumulator for processing %s samples", v58, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v59, -1, -1);
    MEMORY[0x20F2E9420](v58, -1, -1);
  }

LABEL_12:
  v66 = type metadata accessor for ZonesAccumulator();
  v97.receiver = v7;
  v97.super_class = v66;
  v67 = v91;
  v68 = objc_msgSendSuper2(&v97, sel_initWithBuilder_, v91);

  v69 = v68;
  PowerZonesAccumulator.loadPowerZones()();
  if (one-time initialization token for zones != -1)
  {
    swift_once();
  }

  v70 = type metadata accessor for Logger();
  __swift_project_value_buffer(v70, static WOLog.zones);
  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v98[0] = v74;
    *v73 = 136315138;
    v75 = _typeName(_:qualified:)();
    v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v76, v98);

    *(v73 + 4) = v77;
    _os_log_impl(&dword_20AEA4000, v71, v72, "%s initialized", v73, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v74);
    MEMORY[0x20F2E9420](v74, -1, -1);
    MEMORY[0x20F2E9420](v73, -1, -1);
  }

  return v69;
}

uint64_t PowerZonesAccumulator.loadPowerZones()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v120 = &v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v119 = &v112 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v124 = &v112 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v123 = &v112 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v112 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v112 - v15;
  v17 = [v0 builder];
  v18 = [v17 metadata];
  v19 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = unpackedCyclingPowerZonesConfiguration(from:)(v19);

  if (v20)
  {
    v21 = [v1 &selRef_isEqualToNumber_ + 1];
    v22 = [v21 metadata];
    v23 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = specialized static ZonesMetadata.unpackedTimeInZones(from:key:)(v23, 0xD00000000000002FLL, 0x800000020B45B7B0);

    v121 = v24;
    if (v24)
    {
      if (one-time initialization token for zones != -1)
      {
        swift_once();
      }

      v122 = v16;
      v25 = type metadata accessor for Logger();
      v118 = __swift_project_value_buffer(v25, static WOLog.zones);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      v28 = os_log_type_enabled(v26, v27);
      v117 = v14;
      if (v28)
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v126 = v30;
        *v29 = 136315138;
        v31 = _typeName(_:qualified:)();
        v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v126);

        *(v29 + 4) = v33;
        v14 = v117;
        _os_log_impl(&dword_20AEA4000, v26, v27, "%s is recovering CyclingPowerZonesConfiguration and state from builder metadata", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v30);
        MEMORY[0x20F2E9420](v30, -1, -1);
        MEMORY[0x20F2E9420](v29, -1, -1);
      }

      v34 = [v1 builder];
      v35 = [v34 metadata];
      v36 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      static ZonesMetadata.unpackedLastProcessedDate(from:key:)(v36, 0xD000000000000038, 0x800000020B45B7E0, v122);

      v37 = [v1 builder];
      v38 = [v37 metadata];
      v39 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      static ZonesMetadata.unpackedLastProcessedDate(from:key:)(v39, 0xD000000000000038, 0x800000020B45B820, v14);

      v40 = [v1 builder];
      v41 = [v40 metadata];
      v42 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v116 = specialized static ZonesMetadata.unpackedCurrentZoneIndex(from:key:)(v42, 0xD000000000000032, 0x800000020B45B860);
      v115 = v43;

      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v126 = v47;
        *v46 = 136315394;
        v48 = _typeName(_:qualified:)();
        v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, &v126);

        *(v46 + 4) = v50;
        *(v46 + 12) = 2080;

        v51 = CyclingPowerZonesConfiguration.description.getter();
        v53 = v52;

        v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, &v126);
        v14 = v117;

        *(v46 + 14) = v54;
        _os_log_impl(&dword_20AEA4000, v44, v45, "%s recovered cyclingPowerZonesConfiguration: %s", v46, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F2E9420](v47, -1, -1);
        MEMORY[0x20F2E9420](v46, -1, -1);
      }

      v55 = v122;
      v56 = v123;
      outlined init with copy of Date?(v122, v123);
      v57 = v124;
      outlined init with copy of Date?(v14, v124);
      v58 = v121;

      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v59, v60))
      {
        v114 = v60;
        v118 = v59;
        v61 = swift_slowAlloc();
        v113 = swift_slowAlloc();
        v128 = v113;
        *v61 = 136316162;
        v62 = _typeName(_:qualified:)();
        v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, &v128);

        *(v61 + 4) = v64;
        *(v61 + 12) = 2080;
        v65 = Dictionary.description.getter();
        v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, &v128);

        *(v61 + 14) = v67;
        *(v61 + 22) = 2080;
        v68 = v119;
        outlined init with copy of Date?(v56, v119);
        v69 = type metadata accessor for Date();
        ObjectType = *(v69 - 8);
        v70 = *(ObjectType + 48);
        if (v70(v68, 1, v69) == 1)
        {
          _s10Foundation4DateVSgWOhTm_3(v68, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          v71 = 0;
          v72 = 0;
        }

        else
        {
          if (one-time initialization token for logDateFormatter != -1)
          {
            swift_once();
          }

          v87 = static WOLog.logDateFormatter;
          isa = Date._bridgeToObjectiveC()().super.isa;
          v89 = [v87 stringFromDate_];

          v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v72 = v90;

          (*(ObjectType + 8))(v68, v69);
        }

        v126 = v71;
        v127 = v72;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
        v91 = Optional.description.getter();
        v93 = v92;
        _s10Foundation4DateVSgWOhTm_3(v123, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);

        v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v93, &v128);

        *(v61 + 24) = v94;
        *(v61 + 32) = 2080;
        v95 = v120;
        outlined init with copy of Date?(v124, v120);
        if (v70(v95, 1, v69) == 1)
        {
          _s10Foundation4DateVSgWOhTm_3(v95, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          v96 = 0;
          v97 = 0;
        }

        else
        {
          if (one-time initialization token for logDateFormatter != -1)
          {
            swift_once();
          }

          v98 = static WOLog.logDateFormatter;
          v99 = v95;
          v100 = Date._bridgeToObjectiveC()().super.isa;
          v101 = [v98 stringFromDate_];

          v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v97 = v102;

          (*(ObjectType + 8))(v99, v69);
        }

        v126 = v96;
        v127 = v97;
        v103 = Optional.description.getter();
        v105 = v104;
        _s10Foundation4DateVSgWOhTm_3(v124, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);

        v106 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v103, v105, &v128);

        *(v61 + 34) = v106;
        *(v61 + 42) = 2080;
        v85 = v116;
        v126 = v116;
        v86 = v115;
        LOBYTE(v127) = v115 & 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
        v107 = Optional.description.getter();
        v109 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v107, v108, &v128);

        *(v61 + 44) = v109;
        v110 = v118;
        _os_log_impl(&dword_20AEA4000, v118, v114, "%s recovered elapsedTimeInCyclingPowerZones: %s, lastProcessedEntryDate: %s, lastProcessedEventDate: %s currentZoneIndex: %s", v61, 0x34u);
        v111 = v113;
        swift_arrayDestroy();
        MEMORY[0x20F2E9420](v111, -1, -1);
        MEMORY[0x20F2E9420](v61, -1, -1);

        v14 = v117;
        v58 = v121;
        v55 = v122;
      }

      else
      {

        _s10Foundation4DateVSgWOhTm_3(v57, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        _s10Foundation4DateVSgWOhTm_3(v56, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v85 = v116;
        v86 = v115;
      }

      PowerZonesAccumulator._mainThread_handleRecovery(cyclingPowerZonesConfiguration:elapsedTimeInCyclingPowerZones:lastProcessedEntryDate:lastProcessedEventDate:currentZoneIndex:)(v20, v58, v55, v14, v85, v86 & 1);

      _s10Foundation4DateVSgWOhTm_3(v14, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      return _s10Foundation4DateVSgWOhTm_3(v55, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  if (one-time initialization token for zones != -1)
  {
    swift_once();
  }

  v73 = type metadata accessor for Logger();
  __swift_project_value_buffer(v73, static WOLog.zones);
  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v126 = v77;
    *v76 = 136315138;
    v78 = _typeName(_:qualified:)();
    v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v79, &v126);

    *(v76 + 4) = v80;
    _os_log_impl(&dword_20AEA4000, v74, v75, "%s is loading CyclingPowerZonesConfiguration from value store", v76, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v77);
    MEMORY[0x20F2E9420](v77, -1, -1);
    MEMORY[0x20F2E9420](v76, -1, -1);
  }

  v81 = *&v1[OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_configurationStore];
  v82 = swift_allocObject();
  *(v82 + 16) = v1;
  v83 = v1;
  CyclingPowerZonesConfigurationStore.fetchCyclingPowerZonesConfiguration(completion:)(partial apply for closure #1 in PowerZonesAccumulator.loadPowerZones(), v82);
}

uint64_t closure #1 in PowerZonesAccumulator.loadPowerZones()(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v2 - 8);
  v3 = *(v16 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v6 = *(v15 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v15);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue();
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in closure #1 in PowerZonesAccumulator.loadPowerZones();
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_71_0;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_0(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v9, v5, v13);
  _Block_release(v13);

  (*(v16 + 8))(v5, v2);
  return (*(v6 + 8))(v9, v15);
}

void closure #1 in closure #1 in PowerZonesAccumulator.loadPowerZones()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    PowerZonesAccumulator._mainThread_handleCyclingPowerZonesConfigurationLoad(_:)(a2);
  }
}

id PowerZonesAccumulator._mainThread_handleRecovery(cyclingPowerZonesConfiguration:elapsedTimeInCyclingPowerZones:lastProcessedEntryDate:lastProcessedEventDate:currentZoneIndex:)(unint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v191 = a4;
  v197 = a3;
  v209 = a2;
  ObjectType = swift_getObjectType();
  v208 = type metadata accessor for DispatchQoS();
  isUniquelyReferenced_nonNull_native = *(v208 - 8);
  v12 = *(isUniquelyReferenced_nonNull_native + 64);
  MEMORY[0x28223BE20](v208);
  v207 = &v179 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v206 - 8);
  isa = v14[8].isa;
  MEMORY[0x28223BE20](v206);
  v205 = &v179 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v17 = *(*(v184 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v184);
  v186 = &v179 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v192 = &v179 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v185 = &v179 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v190 = &v179 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v183 = &v179 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v196 = &v179 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = &v179 - v30;
  v32 = type metadata accessor for Date();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x28223BE20](v32);
  v193 = &v179 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v182 = &v179 - v38;
  MEMORY[0x28223BE20](v37);
  v189 = &v179 - v39;
  if ((a6 & 1) == 0)
  {
    v40 = CyclingPowerZonesConfiguration.zones.getter();
    if (!(v40 >> 62))
    {
      v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }

    goto LABEL_92;
  }

LABEL_8:
  outlined init with copy of Date?(v197, v31);
  v43 = *(v33 + 48);
  v203 = v33 + 48;
  v202 = v43;
  v44 = v43(v31, 1, v32);
  v210 = v7;
  v188 = a1;
  v195 = v33;
  if (v44 == 1)
  {
    _s10Foundation4DateVSgWOhTm_3(v31, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if (one-time initialization token for zones != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, static WOLog.zones);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      aBlock = v49;
      *v48 = 136315138;
      v50 = _typeName(_:qualified:)();
      isUniquelyReferenced_nonNull_native = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, &aBlock);

      *(v48 + 4) = isUniquelyReferenced_nonNull_native;
      _os_log_impl(&dword_20AEA4000, v46, v47, "%s no lastProcessedEntryDate found in metadata, recovering from the beginning with HK query", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x20F2E9420](v49, -1, -1);
      MEMORY[0x20F2E9420](v48, -1, -1);
    }

    a5 = 0;
    goto LABEL_45;
  }

  v52 = v189;
  (*(v33 + 32))(v189, v31, v32);
  v53 = *(v33 + 16);
  v54 = v196;
  v181 = v33 + 16;
  v180 = v53;
  v53(v196, v52, v32);
  v55 = *(v33 + 56);
  v187 = v32;
  v55(v54, 0, 1, v32);
  ZonesAccumulator.lastProcessedEntryDate.setter(v54);
  v56 = v209 + 8;
  v57 = 1 << LOBYTE(v209[4].isa);
  v58 = -1;
  if (v57 < 64)
  {
    v58 = ~(-1 << v57);
  }

  a1 = v58 & v209[8].isa;
  v204 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_propertyQueue;
  v32 = (v57 + 63) >> 6;
  v200 = v213;
  v199 = (isUniquelyReferenced_nonNull_native + 8);
  v198 = &v14[1];

  v33 = 0;
  a5 = 0;
  v201 = v56;
  while (a1)
  {
LABEL_24:
    v65 = (v33 << 9) | (8 * __clz(__rbit64(a1)));
    v66 = *(v209[6].isa + v65);
    v67 = *(v209[7].isa + v65);
    v14 = *(v7 + v204);
    MEMORY[0x28223BE20](v59);
    *(&v179 - 2) = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSdGMd, &_sSDySiSdGMR);
    OS_dispatch_queue.sync<A>(execute:)();
    v68 = aBlock;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v68;
    v7 = specialized __RawDictionaryStorage.find<A>(_:)(v66);
    v70 = *(v68 + 16);
    v71 = (v69 & 1) == 0;
    v59 = v70 + v71;
    if (__OFADD__(v70, v71))
    {
      goto LABEL_82;
    }

    v72 = v69;
    if (*(v68 + 24) >= v59)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v74 = aBlock;
        if (v69)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v59 = specialized _NativeDictionary.copy()();
        v74 = aBlock;
        if (v72)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v59, isUniquelyReferenced_nonNull_native);
      v59 = specialized __RawDictionaryStorage.find<A>(_:)(v66);
      if ((v72 & 1) != (v73 & 1))
      {
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      v7 = v59;
      v74 = aBlock;
      if (v72)
      {
LABEL_17:
        *(v74[7] + 8 * v7) = v67;
        goto LABEL_18;
      }
    }

    v74[(v7 >> 6) + 8] |= 1 << v7;
    *(v74[6] + 8 * v7) = v66;
    *(v74[7] + 8 * v7) = v67;
    v75 = v74[2];
    v76 = __OFADD__(v75, 1);
    v77 = v75 + 1;
    if (v76)
    {
      while (1)
      {
        __break(1u);
LABEL_84:
        v174 = v59;
        v31 = __CocoaSet.count.getter();
        v59 = v174;
        if (!v31)
        {
          goto LABEL_85;
        }

LABEL_69:
        v160 = v59;
        v215 = MEMORY[0x277D84F90];
        specialized ContiguousArray.reserveCapacity(_:)();
        if (v31 < 0)
        {
          __break(1u);
LABEL_92:
          v41 = __CocoaSet.count.getter();
LABEL_4:

          if (v41 > a5)
          {
            v42 = a5;
          }

          else
          {
            v42 = 0;
          }

          ZonesAccumulator.currentZoneIndex.setter(v42, v41 <= a5);
          goto LABEL_8;
        }

        isUniquelyReferenced_nonNull_native = 0;
        v33 = *(v7 + OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_propertyQueue);
        v161 = v160;
        v209 = (v160 & 0xC000000000000001);
        a1 = v160;
        while (1)
        {
          if (v209)
          {
            v162 = MEMORY[0x20F2E7A20](isUniquelyReferenced_nonNull_native, v161);
            v163 = v162;
          }

          else
          {
            v163 = *(v161 + 8 * isUniquelyReferenced_nonNull_native + 32);
          }

          v32 = *(v163 + 4);
          MEMORY[0x28223BE20](v162);
          *(&v179 - 2) = v7;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSdGMd, &_sSDySiSdGMR);
          OS_dispatch_queue.sync<A>(execute:)();
          v164 = v214;
          v165 = 0;
          if (*(v214 + 16))
          {
            v166 = specialized __RawDictionaryStorage.find<A>(_:)(v32);
            if (v167)
            {
              v165 = *(*(v164 + 56) + 8 * v166);
            }
          }

          v168 = v163[2];
          v169 = v163[3];
          v14 = *(v163 + 5);
          type metadata accessor for LivePowerZone();
          v7 = swift_allocObject();
          *(v7 + 48) = 0;
          swift_beginAccess();
          *(v7 + 48) = v165;

          v170 = floor(v168);
          v171 = floor(v169);
          if (v170 > v171)
          {
            break;
          }

          ++isUniquelyReferenced_nonNull_native;
          *(v7 + 16) = v170;
          *(v7 + 24) = v171;
          *(v7 + 32) = v32;
          *(v7 + 40) = v14;
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v172 = *(v215 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v7 = v210;
          v161 = a1;
          if (v31 == isUniquelyReferenced_nonNull_native)
          {

            v173 = v215;
            goto LABEL_86;
          }
        }

        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
      }
    }

    v74[2] = v77;
LABEL_18:
    a1 &= a1 - 1;
    isUniquelyReferenced_nonNull_native = v205;
    static DispatchWorkItemFlags.barrier.getter();
    v60 = swift_allocObject();
    v7 = v210;
    *(v60 + 16) = v210;
    *(v60 + 24) = v74;
    v213[2] = _s11WorkoutCore16ZonesAccumulatorC12elapsedTimesSDySiSdGvsyyYbcfU_TA_1;
    v213[3] = v60;
    aBlock = MEMORY[0x277D85DD0];
    v212 = 1107296256;
    v213[0] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v213[1] = &block_descriptor_58;
    v61 = _Block_copy(&aBlock);
    v62 = v7;
    v63 = v207;
    static DispatchQoS.unspecified.getter();
    MEMORY[0x20F2E7580](0, v63, isUniquelyReferenced_nonNull_native, v61);
    _Block_release(v61);
    (*v199)(v63, v208);
    (*v198)(isUniquelyReferenced_nonNull_native, v206);

    v56 = v201;
  }

  while (1)
  {
    v64 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      goto LABEL_81;
    }

    if (v64 >= v32)
    {
      break;
    }

    a1 = v56[v64].isa;
    ++v33;
    if (a1)
    {
      v33 = v64;
      goto LABEL_24;
    }
  }

  if (one-time initialization token for zones != -1)
  {
    swift_once();
  }

  v78 = type metadata accessor for Logger();
  __swift_project_value_buffer(v78, static WOLog.zones);
  v79 = v7;
  v80 = Logger.logObject.getter();
  v81 = v7;
  v82 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v80, v82))
  {
    v209 = v80;
    v83 = swift_slowAlloc();
    v208 = swift_slowAlloc();
    v215 = v208;
    *v83 = 136315906;
    v84 = _typeName(_:qualified:)();
    v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v85, &v215);

    *(v83 + 4) = v86;
    *(v83 + 12) = 2080;
    v88 = *(v81 + v204);
    MEMORY[0x28223BE20](v87);
    *(&v179 - 2) = v79;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSdGMd, &_sSDySiSdGMR);
    OS_dispatch_queue.sync<A>(execute:)();
    v89 = Dictionary.description.getter();
    v91 = v90;

    v92 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v91, &v215);

    *(v83 + 14) = v92;
    *(v83 + 22) = 2080;
    MEMORY[0x28223BE20](v93);
    *(&v179 - 2) = v79;
    v94 = v183;
    OS_dispatch_queue.sync<A>(execute:)();
    v95 = v187;
    if (v202(v94, 1, v187))
    {
      _s10Foundation4DateVSgWOhTm_3(v94, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v96 = 0;
      v97 = 0;
      isUniquelyReferenced_nonNull_native = v195;
    }

    else
    {
      v98 = v182;
      v180(v182, v94, v95);
      _s10Foundation4DateVSgWOhTm_3(v94, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      if (one-time initialization token for logDateFormatter != -1)
      {
        swift_once();
      }

      v99 = static WOLog.logDateFormatter;
      v100 = Date._bridgeToObjectiveC()().super.isa;
      v101 = [v99 stringFromDate_];

      v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v97 = v102;

      isUniquelyReferenced_nonNull_native = v195;
      (*(v195 + 8))(v98, v187);
    }

    aBlock = v96;
    v212 = v97;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v103 = Optional.description.getter();
    v105 = v104;

    v106 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v103, v105, &v215);

    *(v83 + 24) = v106;
    *(v83 + 32) = 2080;
    MEMORY[0x28223BE20](v107);
    *(&v179 - 2) = v79;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
    OS_dispatch_queue.sync<A>(execute:)();
    v108 = Optional.description.getter();
    v110 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v108, v109, &v215);

    *(v83 + 34) = v110;
    v111 = v209;
    _os_log_impl(&dword_20AEA4000, v209, v82, "%s recovered elapsedTimes: %s from metadata with lastProcessedEntryDate: %s, currentZoneIndex: %s", v83, 0x2Au);
    v112 = v208;
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v112, -1, -1);
    MEMORY[0x20F2E9420](v83, -1, -1);

    v32 = v187;
    (*(isUniquelyReferenced_nonNull_native + 8))(v189, v187);
    v7 = v210;
    a1 = v188;
    v33 = isUniquelyReferenced_nonNull_native;
  }

  else
  {

    v33 = v195;
    v32 = v187;
    (*(v195 + 8))(v189, v187);
    v7 = v81;
    a1 = v188;
  }

LABEL_45:
  v113 = v190;
  outlined init with copy of Date?(v191, v190);
  if (v202(v113, 1, v32) == 1)
  {
    _s10Foundation4DateVSgWOhTm_3(v113, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v114 = v197;
    v115 = v196;
    outlined init with copy of Date?(v197, v196);
    v116 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_lastProcessedEventDate;
    swift_beginAccess();
    outlined assign with take of Date?(v115, v7 + v116);
    swift_endAccess();
    if (one-time initialization token for zones != -1)
    {
      swift_once();
    }

    v117 = type metadata accessor for Logger();
    __swift_project_value_buffer(v117, static WOLog.zones);
    v118 = v192;
    outlined init with copy of Date?(v114, v192);
    v14 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v33))
    {
      isUniquelyReferenced_nonNull_native = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v215 = v119;
      *isUniquelyReferenced_nonNull_native = 136315394;
      v120 = _typeName(_:qualified:)();
      v122 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v120, v121, &v215);

      *(isUniquelyReferenced_nonNull_native + 4) = v122;
      *(isUniquelyReferenced_nonNull_native + 12) = 2080;
      v123 = v186;
      outlined init with copy of Date?(v192, v186);
      if (v202(v123, 1, v32) == 1)
      {
        _s10Foundation4DateVSgWOhTm_3(v123, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v124 = 0;
        v125 = 0;
      }

      else
      {
        v209 = v119;
        if (one-time initialization token for logDateFormatter != -1)
        {
          swift_once();
        }

        v141 = static WOLog.logDateFormatter;
        v142 = v123;
        v143 = Date._bridgeToObjectiveC()().super.isa;
        v144 = [v141 stringFromDate_];

        v124 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v125 = v145;

        (*(v195 + 8))(v142, v32);
        v119 = v209;
      }

      aBlock = v124;
      v212 = v125;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v146 = Optional.description.getter();
      v148 = v147;
      _s10Foundation4DateVSgWOhTm_3(v192, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);

      v149 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v146, v148, &v215);

      *(isUniquelyReferenced_nonNull_native + 14) = v149;
      _os_log_impl(&dword_20AEA4000, v14, v33, "%s no lastProcessedEventDate found in metadata, assign lastProcessedEntryDate: %s", isUniquelyReferenced_nonNull_native, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v119, -1, -1);
      MEMORY[0x20F2E9420](isUniquelyReferenced_nonNull_native, -1, -1);

      goto LABEL_66;
    }

    _s10Foundation4DateVSgWOhTm_3(v118, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    v126 = v193;
    (*(v33 + 32))(v193, v113, v32);
    v127 = *(v33 + 16);
    v128 = v196;
    v127(v196, v126, v32);
    v129 = *(v33 + 56);
    v33 = v32;
    v129(v128, 0, 1, v32);
    v32 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_lastProcessedEventDate;
    swift_beginAccess();
    outlined assign with take of Date?(v128, v7 + v32);
    swift_endAccess();
    if (one-time initialization token for zones != -1)
    {
      swift_once();
    }

    v130 = type metadata accessor for Logger();
    __swift_project_value_buffer(v130, static WOLog.zones);
    v131 = v7;
    v14 = Logger.logObject.getter();
    v132 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v132))
    {
      LODWORD(v209) = v132;
      isUniquelyReferenced_nonNull_native = swift_slowAlloc();
      v208 = swift_slowAlloc();
      v215 = v208;
      *isUniquelyReferenced_nonNull_native = 136315394;
      v133 = _typeName(_:qualified:)();
      v135 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v133, v134, &v215);

      *(isUniquelyReferenced_nonNull_native + 4) = v135;
      *(isUniquelyReferenced_nonNull_native + 12) = 2080;
      v136 = v185;
      outlined init with copy of Date?(v7 + v32, v185);
      v137 = v33;
      if (v202(v136, 1, v33))
      {
        _s10Foundation4DateVSgWOhTm_3(v136, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v138 = 0;
        v139 = 0;
        a1 = v188;
        v140 = v195;
      }

      else
      {
        v32 = v182;
        v127(v182, v136, v33);
        _s10Foundation4DateVSgWOhTm_3(v136, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v140 = v195;
        if (one-time initialization token for logDateFormatter != -1)
        {
          swift_once();
        }

        v150 = static WOLog.logDateFormatter;
        v151 = Date._bridgeToObjectiveC()().super.isa;
        v152 = [v150 stringFromDate_];

        v138 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v139 = v153;

        (*(v140 + 8))(v32, v137);
        a1 = v188;
      }

      aBlock = v138;
      v212 = v139;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v154 = Optional.description.getter();
      v156 = v155;

      v157 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v154, v156, &v215);

      *(isUniquelyReferenced_nonNull_native + 14) = v157;
      _os_log_impl(&dword_20AEA4000, v14, v209, "%s recovered lastProcessedEventDate: %s", isUniquelyReferenced_nonNull_native, 0x16u);
      v158 = v208;
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v158, -1, -1);
      MEMORY[0x20F2E9420](isUniquelyReferenced_nonNull_native, -1, -1);

      v159 = *(v140 + 8);
      v33 = v140 + 8;
      v159(v193, v137);
LABEL_66:
      v7 = v210;
    }

    else
    {

      (*(v195 + 8))(v193, v33);
      a1 = v188;
    }
  }

  v59 = CyclingPowerZonesConfiguration.zones.getter();
  if (v59 >> 62)
  {
    goto LABEL_84;
  }

  v31 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v31)
  {
    goto LABEL_69;
  }

LABEL_85:

  v173 = MEMORY[0x277D84F90];
LABEL_86:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore9LiveZonesCyAA0C9PowerZoneCGMd, &_s11WorkoutCore9LiveZonesCyAA0C9PowerZoneCGMR);
  v175 = swift_allocObject();
  *(v175 + 24) = 0;
  *(v175 + 32) = 1;
  *(v175 + 16) = v173;
  swift_beginAccess();
  *(v175 + 24) = 0;
  *(v175 + 32) = 257;
  v176 = *(v7 + OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_livePowerZonesInternal);
  *(v7 + OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_livePowerZonesInternal) = v175;

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong powerZonesConfigurationDidUpdate];
    swift_unknownObjectRelease();
  }

  result = [v7 isAccumulating];
  if (result)
  {
    return [v7 update];
  }

  return result;
}

id PowerZonesAccumulator._mainThread_handleCyclingPowerZonesConfigurationLoad(_:)(uint64_t a1)
{
  swift_getObjectType();
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OS_dispatch_queue();
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v7 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
    goto LABEL_22;
  }

  if (one-time initialization token for zones != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static WOLog.zones);
    swift_retain_n();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v57[0] = v12;
      *v11 = 136315906;
      v13 = _typeName(_:qualified:)();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v57);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2080;
      v16 = CyclingPowerZonesConfiguration.description.getter();
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v57);

      *(v11 + 14) = v18;
      *(v11 + 22) = 1024;
      v19 = specialized static CyclingPowerZonesConfigurationEditor.createAutomaticEmptyConfiguration()();
      LOBYTE(v18) = specialized static CyclingPowerZonesConfiguration.== infix(_:_:)(a1, v19);

      *(v11 + 24) = v18 & 1;

      *(v11 + 28) = 1024;
      v20 = specialized static CyclingPowerZonesConfiguration.canonical()();
      LOBYTE(v18) = specialized static CyclingPowerZonesConfiguration.== infix(_:_:)(a1, v20);

      *(v11 + 30) = v18 & 1;

      _os_log_impl(&dword_20AEA4000, v9, v10, "%s loaded CyclingPowerZonesConfiguration: %s (isAutomaticEmpty: %{BOOL}d, isCanonical: %{BOOL}d)", v11, 0x22u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v12, -1, -1);
      MEMORY[0x20F2E9420](v11, -1, -1);
    }

    else
    {
    }

    v21 = CyclingPowerZonesConfiguration.zones.getter();
    if (v21 >> 62)
    {
      v45 = __CocoaSet.count.getter();

      if (v45)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v22)
      {
        goto LABEL_11;
      }
    }

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v57[0] = v26;
      *v25 = 136315138;
      v27 = _typeName(_:qualified:)();
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v57);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_20AEA4000, v23, v24, "%s loaded CyclingPowerZonesConfiguration has empty zones", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x20F2E9420](v26, -1, -1);
      MEMORY[0x20F2E9420](v25, -1, -1);
    }

LABEL_11:
    v30 = CyclingPowerZonesConfiguration.zones.getter();
    v31 = v30;
    if (v30 >> 62)
    {
      break;
    }

    v32 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v32)
    {
      goto LABEL_27;
    }

LABEL_13:
    v56 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v32 < 0)
    {
      __break(1u);
      return result;
    }

    v34 = 0;
    while (1)
    {
      if ((v31 & 0xC000000000000001) != 0)
      {
        v35 = MEMORY[0x20F2E7A20](v34, v31);
      }

      else
      {
        v35 = *(v31 + 8 * v34 + 32);
      }

      v36 = v35[2];
      v37 = v35[3];
      v39 = *(v35 + 4);
      v38 = *(v35 + 5);
      type metadata accessor for LivePowerZone();
      v40 = swift_allocObject();
      *(v40 + 48) = 0;
      swift_beginAccess();
      *(v40 + 48) = 0;

      v41 = floor(v36);
      v42 = floor(v37);
      if (v41 > v42)
      {
        break;
      }

      ++v34;
      *(v40 + 16) = v41;
      *(v40 + 24) = v42;
      *(v40 + 32) = v39;
      *(v40 + 40) = v38;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v43 = *(v56 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v32 == v34)
      {

        v44 = v56;
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    swift_once();
  }

  v32 = __CocoaSet.count.getter();
  if (v32)
  {
    goto LABEL_13;
  }

LABEL_27:

  v44 = MEMORY[0x277D84F90];
LABEL_28:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore9LiveZonesCyAA0C9PowerZoneCGMd, &_s11WorkoutCore9LiveZonesCyAA0C9PowerZoneCGMR);
  v46 = swift_allocObject();
  *(v46 + 24) = 0;
  *(v46 + 32) = 1;
  *(v46 + 16) = v44;
  swift_beginAccess();
  *(v46 + 24) = 0;
  *(v46 + 32) = 257;
  v47 = v55;
  v48 = *&v55[OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_livePowerZonesInternal];
  *&v55[OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_livePowerZonesInternal] = v46;

  v49 = [v47 builder];

  HKLiveWorkoutBuilder.cyclingPowerZonesConfiguration.setter(v50);

  v51 = [v47 builder];
  v52 = *(a1 + 24);

  HKLiveWorkoutBuilder.cyclingPowerZonesAutomaticFTP.setter(v53);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong powerZonesConfigurationDidUpdate];
    swift_unknownObjectRelease();
  }

  result = [v47 isAccumulating];
  if (result)
  {
    return [v47 update];
  }

  return result;
}

Swift::Void __swiftcall PowerZonesAccumulator.notifyZonesUpdateIfNeeded()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong powerZonesConfigurationDidUpdate];
    swift_unknownObjectRelease();
  }

  if ([v0 isAccumulating])
  {
    [v0 update];
  }
}

uint64_t PowerZonesAccumulator.updateTargetZone(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v4 - 8);
  v5 = *(v19 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v8 = *(v18 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v2 + OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_processingQueue);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in PowerZonesAccumulator.updateTargetZone(_:);
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_22;
  v14 = _Block_copy(aBlock);

  v15 = a1;
  static DispatchQoS.unspecified.getter();
  v20 = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_0(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v11, v7, v14);
  _Block_release(v14);
  (*(v19 + 8))(v7, v4);
  (*(v8 + 8))(v11, v18);
}

void closure #1 in PowerZonesAccumulator.updateTargetZone(_:)(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_powerZonesAlertTargetZone);
    *(Strong + OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_powerZonesAlertTargetZone) = a2;
    v5 = Strong;
    v6 = a2;
  }
}

Swift::Void __swiftcall PowerZonesAccumulator.finalZonesElapsedTimes(_:)(Swift::OpaquePointer a1)
{
  swift_getObjectType();
  if (one-time initialization token for zones != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.zones);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315394;
    v8 = _typeName(_:qualified:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v14);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v11 = ZonesAccumulator.zonesSnapshotString.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v14);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_20AEA4000, v4, v5, "%s final zones: (%s)", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v7, -1, -1);
    MEMORY[0x20F2E9420](v6, -1, -1);
  }

  PowerZonesAccumulator.updateMetadata()();
}

Swift::Void __swiftcall PowerZonesAccumulator.updateMetadata()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - v7;
  v9 = v0[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_shouldSplitByActivity];
  v10 = [v1 builder];
  v11 = v10;
  if (v9 == 1)
  {
    v12 = *&v1[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_propertyQueue];
    MEMORY[0x28223BE20](v10);
    *(&v22 - 2) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSdGMd, &_sSDySiSdGMR);
    v13 = OS_dispatch_queue.sync<A>(execute:)();
    v14 = v24;
    MEMORY[0x28223BE20](v13);
    *(&v22 - 2) = v1;
    OS_dispatch_queue.sync<A>(execute:)();
    v15 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_lastProcessedEventDate;
    swift_beginAccess();
    v16 = outlined init with copy of Date?(&v1[v15], v6);
    MEMORY[0x28223BE20](v16);
    *(&v22 - 2) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
    OS_dispatch_queue.sync<A>(execute:)();
    HKLiveWorkoutBuilder.updateCurrentActivityCyclingPower(elapsedTimeInZones:lastProcessedEntryDate:lastProcessedEventDate:currentZoneIndex:)(v14, v8, v6, v22, v23);

    _s10Foundation4DateVSgWOhTm_3(v6, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    _s10Foundation4DateVSgWOhTm_3(v8, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    v17 = *&v1[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_propertyQueue];
    MEMORY[0x28223BE20](v10);
    *(&v22 - 2) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSdGMd, &_sSDySiSdGMR);
    OS_dispatch_queue.sync<A>(execute:)();
    HKLiveWorkoutBuilder.elapsedTimeInCyclingPowerZones.setter(v24);

    v18 = [v1 builder];
    MEMORY[0x28223BE20](v18);
    *(&v22 - 2) = v1;
    OS_dispatch_queue.sync<A>(execute:)();
    HKLiveWorkoutBuilder.lastProcessedEntryDateInCyclingPowerZones.setter(v8);

    v19 = [v1 builder];
    v20 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_lastProcessedEventDate;
    swift_beginAccess();
    outlined init with copy of Date?(&v1[v20], v8);
    HKLiveWorkoutBuilder.lastProcessedEventDateInCyclingPowerZones.setter(v8);

    v21 = [v1 builder];
    MEMORY[0x28223BE20](v21);
    *(&v22 - 2) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
    OS_dispatch_queue.sync<A>(execute:)();
    HKLiveWorkoutBuilder.currentZoneIndexInCyclingPowerZones.setter(v22, v23);
  }
}

void PowerZonesAccumulator.trackTargetZone(for:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [v1 builder];
  [v14 elapsedTime];
  v16 = v15;

  if (specialized ZonesAlertTrackingProtocol.alertPreconditionSatified(_:)(v16))
  {
    v65 = v10;
    v67 = v5;
    v17 = [a1 quantity];
    [v17 doubleValueForUnit_];
    v19 = v18;

    v20 = *&v2[OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_powerZonesAlertTargetZone];
    v21 = COERCE_DOUBLE(PowerZonesAlertTargetZone.applicableRange.getter());
    v23 = v22;
    v25 = v24;

    v66 = v9;
    if (v25)
    {
      v26 = 0;
    }

    else if (v19 >= v23)
    {
      v26 = 3;
    }

    else if (v19 < v21)
    {
      v26 = 1;
    }

    else
    {
      v26 = 2;
    }

    v27 = OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_oldZoneState;
    swift_beginAccess();
    if (v26 && v2[v27] != v26)
    {
      if (one-time initialization token for zones != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, static WOLog.zones);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      v31 = os_log_type_enabled(v29, v30);
      v64 = v27;
      if (v31)
      {
        v32 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        aBlock[0] = v63;
        *v32 = 136315394;
        v33 = _typeName(_:qualified:)();
        v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, aBlock);

        *(v32 + 4) = v35;
        *(v32 + 12) = 2080;
        if (v26 == 1)
        {
          v37 = 0x776F6C6562;
          v36 = 0xE500000000000000;
        }

        else if (v26 == 2)
        {
          v36 = 0xE600000000000000;
          v37 = 0x6E6968746977;
        }

        else
        {
          v36 = 0xE500000000000000;
          v37 = 0x65766F6261;
        }

        v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v36, aBlock);

        *(v32 + 14) = v38;
        _os_log_impl(&dword_20AEA4000, v29, v30, "%s should fire alert for: %s", v32, 0x16u);
        v39 = v63;
        swift_arrayDestroy();
        MEMORY[0x20F2E9420](v39, -1, -1);
        MEMORY[0x20F2E9420](v32, -1, -1);

        v27 = v64;
      }

      else
      {
      }

      LOBYTE(aBlock[0]) = v26;
      PowerZonesAccumulator.createZoneAlert(for:with:)(aBlock, v19);
      if (v40)
      {
        v41 = v40;
        type metadata accessor for OS_dispatch_queue();
        v63 = static OS_dispatch_queue.main.getter();
        v42 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v43 = swift_allocObject();
        *(v43 + 16) = v42;
        *(v43 + 24) = v41;
        aBlock[4] = partial apply for closure #1 in PowerZonesAccumulator.trackTargetZone(for:);
        aBlock[5] = v43;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
        aBlock[3] = &block_descriptor_13;
        v44 = _Block_copy(aBlock);
        v62 = v41;

        static DispatchQoS.unspecified.getter();
        aBlock[0] = MEMORY[0x277D84F90];
        _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_0(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v45 = v63;
        MEMORY[0x20F2E7580](0, v13, v8, v44);
        v46 = v44;
        v27 = v64;
        _Block_release(v46);

        (*(v67 + 8))(v8, v4);
        (*(v65 + 8))(v13, v66);
      }
    }

    if (v2[v27] != v26)
    {
      if (one-time initialization token for zones != -1)
      {
        swift_once();
      }

      v47 = type metadata accessor for Logger();
      __swift_project_value_buffer(v47, static WOLog.zones);
      v48 = v2;
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = 1701736302;
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        aBlock[0] = v53;
        *v52 = 136315650;
        v54 = _typeName(_:qualified:)();
        v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, aBlock);

        *(v52 + 4) = v56;
        *(v52 + 12) = 2080;
        if (v2[v27] > 1u)
        {
          if (v2[v27] == 2)
          {
            v57 = 0xE600000000000000;
            v58 = 0x6E6968746977;
          }

          else
          {
            v57 = 0xE500000000000000;
            v58 = 0x65766F6261;
          }
        }

        else if (v2[v27])
        {
          v57 = 0xE500000000000000;
          v58 = 0x776F6C6562;
        }

        else
        {
          v57 = 0xE400000000000000;
          v58 = 1701736302;
        }

        v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v57, aBlock);

        *(v52 + 14) = v59;
        *(v52 + 22) = 2080;
        if (v26 > 1)
        {
          if (v26 == 2)
          {
            v60 = 0xE600000000000000;
            v51 = 0x6E6968746977;
          }

          else
          {
            v60 = 0xE500000000000000;
            v51 = 0x65766F6261;
          }
        }

        else if (v26)
        {
          v60 = 0xE500000000000000;
          v51 = 0x776F6C6562;
        }

        else
        {
          v60 = 0xE400000000000000;
        }

        v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v60, aBlock);

        *(v52 + 24) = v61;
        _os_log_impl(&dword_20AEA4000, v49, v50, "%s zone state transitioned from: %s to: %s", v52, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x20F2E9420](v53, -1, -1);
        MEMORY[0x20F2E9420](v52, -1, -1);
      }

      v2[v27] = v26;
    }
  }
}

void closure #1 in PowerZonesAccumulator.trackTargetZone(for:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {
      v10 = v9;
      v11 = v8;
      [v10 alertSource:v11 didTriggerAlert:a2];

      swift_unknownObjectRelease();
    }

    static Date.now.getter();
    v12 = type metadata accessor for Date();
    (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
    v13 = OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_lastAlertFiredAtDate;
    swift_beginAccess();
    outlined assign with take of Date?(v6, v8 + v13);
    swift_endAccess();
  }
}

void PowerZonesAccumulator.createZoneAlert(for:with:)(char *a1, double a2)
{
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 1);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = qword_20B433A90[*a1];
  v14 = &(*(v2 + OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_powerZonesAlertTargetZone))[OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type];
  swift_beginAccess();
  v15 = *(v14 + 16);
  if ((v15 & 0xC0) != 0x40)
  {
    return;
  }

  v16 = *v14;
  v17 = *(v14 + 8);
  if (!v17)
  {
LABEL_42:
    outlined consume of PowerZonesAlertZoneType(v16, v17, v15);
    return;
  }

  v18 = (v17 & 0xC000000000000001);
  v63 = v13;
  v64 = v15;
  v65 = v2;
  if ((v17 & 0xC000000000000001) == 0)
  {
    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v16 < *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v2 = (v17 + 8 * v16);
      v19 = v2[4];
      v4 = v16;
      v20 = v17;
      outlined copy of PowerZonesAlertZoneType(v16, v17, v15);

      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_50;
  }

  v57 = v17;
  v58 = v16;
  v2 = (v17 + 8 * v16);

  v4 = v58;
  v20 = v57;
  v19 = MEMORY[0x20F2E7A20](v58, v57);
LABEL_7:
  v66 = v12;
  v67 = v20;
  v21 = *(v19 + 32);
  v22 = &selRef_localizedPaceStringWithDistance_overDuration_paceFormat_unitStyle_decimalTrimmingMode_distanceType_;
  v61 = v9;
  v62 = v8;
  if (!v21)
  {
    v3 = v2;
    v14 = v65;
    goto LABEL_19;
  }

  v23 = objc_opt_self();
  v8 = [v23 wattUnit];
  v5 = *(v19 + 16) + 1.0;
  v24 = objc_opt_self();
  v22 = [v24 quantityWithUnit:v8 doubleValue:v5];

  v3 = v2;
  v14 = v65;
  if (!v22)
  {
    goto LABEL_20;
  }

  v8 = *(v65 + OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_quantitySampleUnit);
  v2 = &selRef_adjustedStatisticsForStatistics_;
  [(SEL *)v22 doubleValueForUnit:v8];
  v5 = v25;

  if (v18)
  {
    goto LABEL_58;
  }

  v22 = &selRef_localizedPaceStringWithDistance_overDuration_paceFormat_unitStyle_decimalTrimmingMode_distanceType_;
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v4 >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_61:
    __break(1u);
    return;
  }

  v26 = v3[4];

  while (1)
  {
    v27 = *(v26 + 40);
    v28 = __OFSUB__(v27, 1);
    v29 = v27 - 1;
    if (v28)
    {
      goto LABEL_60;
    }

    if (*(v26 + 32) != v29)
    {
      break;
    }

LABEL_19:

LABEL_20:
    if (v18)
    {
LABEL_50:
      v24 = MEMORY[0x20F2E7A20](v4, v67);
      v23 = 0x277CCD000;
    }

    else
    {
      v23 = 0x277CCD000uLL;
      if ((v4 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        swift_once();
        goto LABEL_36;
      }

      if (v4 >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_53;
      }

      v24 = v3[4];
    }

    v35 = *(v24 + 40);
    v28 = __OFSUB__(v35, 1);
    v36 = v35 - 1;
    v22 = v66;
    if (v28)
    {
      goto LABEL_52;
    }

    if (*(v24 + 32) == v36)
    {
    }

    else
    {
      v8 = [objc_opt_self() wattUnit];
      v5 = *(v24 + 24);
      v37 = *(v23 + 2024);
      v38 = [objc_opt_self() quantityWithUnit:v8 doubleValue:v5];

      if (v38)
      {
        goto LABEL_34;
      }
    }

    if (v18)
    {
      v39 = MEMORY[0x20F2E7A20](v4, v67);
LABEL_32:
      if (*(v39 + 32))
      {
        v40 = [objc_opt_self() wattUnit];
        v41 = *(v23 + 2024);
        v38 = [objc_opt_self() quantityWithUnit:v40 doubleValue:*(v39 + 16) + 1.0];

        if (v38)
        {
LABEL_34:
          [v38 doubleValueForUnit_];
          v43 = v42;

          type metadata accessor for TargetZone();
          v33 = swift_allocObject();
          *(v33 + 16) = 5;
          *(v33 + 24) = v43;
          *(v33 + 32) = v43;
          v34 = (v43 > 0.0) & ~_stringCompareWithSmolCheck(_:_:expecting:)();
          goto LABEL_35;
        }
      }

      else
      {
      }

      v16 = v4;
      v17 = v67;
      LOBYTE(v15) = v64;
      goto LABEL_42;
    }

    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v4 < *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v39 = v3[4];

      goto LABEL_32;
    }

    __break(1u);
LABEL_58:
    v26 = MEMORY[0x20F2E7A20](v4, v67);
    v22 = &selRef_localizedPaceStringWithDistance_overDuration_paceFormat_unitStyle_decimalTrimmingMode_distanceType_;
  }

  v60 = v8;
  v8 = [v23 wattUnit];
  v30 = [v24 v22[126]];

  if (!v30)
  {
    goto LABEL_20;
  }

  [v30 v2[185]];
  v32 = v31;

  type metadata accessor for TargetZone();
  v33 = swift_allocObject();
  *(v33 + 16) = 5;
  *(v33 + 24) = v5;
  *(v33 + 32) = v32;
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    v34 = 0;
    v22 = v66;
  }

  else
  {
    v22 = v66;
    v34 = v5 > 0.0 || v32 > 0.0;
  }

LABEL_35:
  *(v33 + 40) = v34;

  Date.init()();
  v44 = *(v14 + OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_activityType);
  v45 = type metadata accessor for WorkoutAlertZone();
  v46 = objc_allocWithZone(v45);
  *&v46[OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_targetZone] = v33;
  *&v46[OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_alertValue] = a2;
  *&v46[OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_activityType] = v44;

  v47 = v44;
  *&v46[OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_distanceType] = FIUIDistanceTypeForActivityType();
  v68.receiver = v46;
  v68.super_class = v45;
  v18 = objc_msgSendSuper2(&v68, sel_init);
  isa = Date._bridgeToObjectiveC()().super.isa;
  [v18 setEventDate_];

  [v18 setType_];
  if (one-time initialization token for zones != -1)
  {
    goto LABEL_54;
  }

LABEL_36:
  v49 = type metadata accessor for Logger();
  __swift_project_value_buffer(v49, static WOLog.zones);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *v52 = 138412290;
    *(v52 + 4) = v18;
    *v53 = v18;
    v54 = v18;
    _os_log_impl(&dword_20AEA4000, v50, v51, "Created zone alert: %@", v52, 0xCu);
    _s10Foundation4DateVSgWOhTm_3(v53, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v55 = v53;
    v22 = v66;
    MEMORY[0x20F2E9420](v55, -1, -1);
    MEMORY[0x20F2E9420](v52, -1, -1);
  }

  else
  {
  }

  v56 = v62;
  outlined consume of PowerZonesAlertZoneType(v4, v67, v64);

  (*(v61 + 8))(v22, v56);
}

uint64_t PowerZonesAccumulator.__ivar_destroyer()
{
  v1 = *(v0 + OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_livePowerZonesInternal);

  v2 = *(v0 + OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_configurationStore);

  _s10Foundation4DateVSgWOhTm_3(v0 + OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_lastAlertFiredAtDate, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  sub_20AECE1DC(v0 + OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_workoutAlertDelegate);
  v3 = v0 + OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_powerZonesConfigurationDelegate;

  return sub_20AECE1DC(v3);
}

id PowerZonesAccumulator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PowerZonesAccumulator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for ZonesAlertTrackingProtocol.lastAlertFiredAtDate.getter in conformance PowerZonesAccumulator@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_lastAlertFiredAtDate;
  swift_beginAccess();
  return outlined init with copy of Date?(v1 + v3, a1);
}

uint64_t protocol witness for ZonesAlertTrackingProtocol.lastAlertFiredAtDate.setter in conformance PowerZonesAccumulator(uint64_t a1)
{
  v3 = OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_lastAlertFiredAtDate;
  swift_beginAccess();
  outlined assign with take of Date?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t protocol witness for ZonesAlertTrackingProtocol.oldZoneState.getter in conformance PowerZonesAccumulator@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_oldZoneState;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t protocol witness for ZonesAlertTrackingProtocol.oldZoneState.setter in conformance PowerZonesAccumulator(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_oldZoneState;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t _s10Foundation4DateVSgWOhTm_3(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata accessor for PowerZonesAccumulator()
{
  result = type metadata singleton initialization cache for PowerZonesAccumulator;
  if (!type metadata singleton initialization cache for PowerZonesAccumulator)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t keypath_get_16Tm_0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a3 = result;
  return result;
}

uint64_t keypath_set_17Tm_0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

void type metadata completion function for PowerZonesAccumulator()
{
  type metadata accessor for Date?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t WorkoutConfiguration.displayDetail(_:)(void *a1)
{
  v2 = v1;
  type metadata accessor for GoalWorkoutConfiguration();
  if (swift_dynamicCastClass())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v4 = v1;
    static Published.subscript.getter();

    v5 = [v64 goalTypeIdentifier];

    if (v5)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v6 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
      swift_beginAccess();
      v7 = *&v4[v6];
      v8 = FIUIDistanceTypeForActivityType();
      NLSessionActivityGoal.displayString(formattingManager:distanceType:localizedOpenString:)(a1, v8, 0, 0, 0);

      lazy protocol witness table accessor for type String and conformance String();
      v9 = StringProtocol.localizedLowercase.getter();
    }

    else
    {

      return 0;
    }

    return v9;
  }

  type metadata accessor for IntervalWorkoutConfiguration();
  if (swift_dynamicCastClass())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v10 = v1;
    static Published.subscript.getter();

    v9 = IntervalWorkout.displayName.getter();

    return v9;
  }

  type metadata accessor for RaceWorkoutConfiguration();
  v12 = swift_dynamicCastClass();
  if (v12)
  {
    v13 = v12;
    v2 = v2;
    v14 = RaceWorkoutConfiguration.cityAndLengthTitle(_:)(a1);
    if (v15)
    {
      v9 = v14;

      return v9;
    }

    v25 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDistance;
    swift_beginAccess();
    v26 = *(v13 + v25);
    v27 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
    swift_beginAccess();
    v28 = *(v13 + v27);
    v29 = FIUIDistanceTypeForActivityType();
    v30 = [a1 unitManager];
    if (v30)
    {
      v31 = v30;
      v32 = [v30 userDistanceUnitForDistanceType_];

      v33 = [a1 localizedStringWithDistanceInMeters:v32 distanceUnit:2 unitStyle:2 decimalPrecision:v26];
      if (v33)
      {
        v34 = v33;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        lazy protocol witness table accessor for type String and conformance String();
        v9 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

        return v9;
      }

      return 0;
    }

    __break(1u);
  }

  else
  {
    type metadata accessor for PacerWorkoutConfiguration();
    if (swift_dynamicCastClass())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v16 = v1;
      static Published.subscript.getter();

      v17 = [v64 goalTypeIdentifier];

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      [v64 doubleValue];
      v19 = v18;

      v20 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
      swift_beginAccess();
      v21 = [a1 localizedCompactGoalDescriptionForGoalType:v17 goalValue:*&v16[v20] activityType:v19];
      if (v21)
      {
        v22 = v21;
        v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v23;
      }

      else
      {
        v62 = 0;
        v24 = 0;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v37 = [v63 goalTypeIdentifier];

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      [v63 doubleValue];
      v39 = v38;

      v40 = [a1 localizedGoalDescriptionForGoalType:v37 goalValue:*&v16[v20] activityType:v39];
      if (v40)
      {
        v41 = v40;
        v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = v43;

        if (v24)
        {
          if (v44)
          {
            type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            v46 = [objc_opt_self() bundleForClass_];
            v47 = MEMORY[0x20F2E6C00](0xD00000000000001DLL, 0x800000020B45B910);
            v48 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
            v49 = [v46 localizedStringForKey:v47 value:0 table:v48];

            static String._unconditionallyBridgeFromObjectiveC(_:)();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
            v50 = swift_allocObject();
            *(v50 + 16) = xmmword_20B4282E0;
            v51 = MEMORY[0x277D837D0];
            *(v50 + 56) = MEMORY[0x277D837D0];
            v52 = lazy protocol witness table accessor for type String and conformance String();
            *(v50 + 32) = v62;
            *(v50 + 40) = v24;
            *(v50 + 96) = v51;
            *(v50 + 104) = v52;
            *(v50 + 64) = v52;
            *(v50 + 72) = v42;
            *(v50 + 80) = v44;
            v9 = String.init(format:_:)();

            return v9;
          }
        }
      }

      return 0;
    }

    type metadata accessor for MultiSportWorkoutConfiguration();
    if (swift_dynamicCastClass())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v35 = v1;
      static Published.subscript.getter();

      v36 = HIBYTE(v65) & 0xF;
      if ((v65 & 0x2000000000000000) == 0)
      {
        v36 = v64 & 0xFFFFFFFFFFFFLL;
      }

      if (v36)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        return v64;
      }

      else
      {
        type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
        v53 = swift_getObjCClassFromMetadata();
        v54 = [objc_opt_self() bundleForClass_];
        v55 = MEMORY[0x20F2E6C00](0xD000000000000025, 0x800000020B458850);
        v56 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
        v57 = [v54 localizedStringForKey:v55 value:0 table:v56];

        v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      return v9;
    }
  }

  _StringGuts.grow(_:)(49);

  v58 = [v2 description];
  v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v61 = v60;

  MEMORY[0x20F2E6D80](v59, v61);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id RaceWorkoutConfiguration.cityAndLengthTitle(_:)(void *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeTitle);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  v6 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDistance;
  swift_beginAccess();
  v7 = *(v1 + v6);
  v8 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v9 = *(v1 + v8);

  v10 = FIUIDistanceTypeForActivityType();
  result = [a1 unitManager];
  if (result)
  {
    v12 = result;
    v13 = [result userDistanceUnitForDistanceType_];

    v14 = [a1 localizedStringWithDistanceInMeters:v13 distanceUnit:2 unitStyle:2 decimalPrecision:v7];
    v15 = 0xE000000000000000;
    v16 = MEMORY[0x277D837D0];
    if (v14)
    {
      v17 = v14;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      lazy protocol witness table accessor for type String and conformance String();
      v18 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v15 = v19;
    }

    else
    {
      v18 = 0;
    }

    v20 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v20 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v20)
    {
      goto LABEL_12;
    }

    v21 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v21 = v18 & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {
      type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v23 = [objc_opt_self() bundleForClass_];
      v24 = MEMORY[0x20F2E6C00](0xD00000000000001DLL, 0x800000020B45B930);
      v25 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
      v26 = [v23 localizedStringForKey:v24 value:0 table:v25];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_20B4282E0;
      *(v27 + 56) = v16;
      v28 = lazy protocol witness table accessor for type String and conformance String();
      *(v27 + 32) = v18;
      *(v27 + 40) = v15;
      *(v27 + 96) = v16;
      *(v27 + 104) = v28;
      *(v27 + 64) = v28;
      *(v27 + 72) = v5;
      *(v27 + 80) = v4;
      v29 = String.init(format:_:)();

      return v29;
    }

    else
    {
LABEL_12:

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id RaceWorkoutConfiguration.displayDistanceFor(_:formatter:)(_BYTE *a1, void *a2)
{
  if (*a1 == 1)
  {
    v4 = &OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDistance;
  }

  else
  {
    v4 = &OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDistance;
  }

  v5 = (v2 + *v4);
  swift_beginAccess();
  v6 = *v5;
  v7 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v8 = *(v2 + v7);
  v9 = FIUIDistanceTypeForActivityType();
  result = [a2 unitManager];
  if (result)
  {
    v11 = result;
    v12 = [result userDistanceUnitForDistanceType_];

    v13 = [a2 localizedStringWithDistanceInMeters:v12 distanceUnit:2 unitStyle:2 decimalPrecision:v6];
    if (!v13)
    {
      return 0;
    }

    v14 = v13;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    lazy protocol witness table accessor for type String and conformance String();
    v15 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t WorkoutConfiguration.logLabel.getter()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
  swift_beginAccess();
  v8 = *(v1 + v7);
  v9 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
  swift_beginAccess();
  v23[2] = *(v8 + v9);
  v24 = dispatch thunk of CustomStringConvertible.description.getter();
  v25 = v10;
  MEMORY[0x20F2E6D80](32, 0xE100000000000000);
  v11 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
  swift_beginAccess();
  (*(v3 + 16))(v6, v1 + v11, v2);
  UUID.uuidString.getter();
  (*(v3 + 8))(v6, v2);
  v12 = specialized Collection.prefix(_:)(4);
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = MEMORY[0x20F2E6D00](v12, v14, v16, v18);
  v21 = v20;

  MEMORY[0x20F2E6D80](v19, v21);

  return v24;
}

uint64_t WorkoutConfiguration.displayDetail(formatter:)(void *a1)
{
  v2 = v1;
  v4 = WorkoutConfiguration.displayDetail(_:)(a1);
  if (v5)
  {
    v6 = v4;
    v7 = [objc_opt_self() standardUserDefaults];
    v8 = MEMORY[0x20F2E6C00](0xD000000000000024, 0x800000020B455FD0);
    v9 = [v7 BOOLForKey_];

    if (v9)
    {
      v28 = v6;
      MEMORY[0x20F2E6D80](10272, 0xE200000000000000);
      v10 = WorkoutConfiguration.logLabel.getter();
      MEMORY[0x20F2E6D80](v10);

      MEMORY[0x20F2E6D80](41, 0xE100000000000000);
      return v28;
    }

    return v6;
  }

  else
  {
    type metadata accessor for GoalWorkoutConfiguration();
    result = swift_dynamicCastClass();
    if (result)
    {
      v12 = result;
      swift_getKeyPath();
      swift_getKeyPath();
      v13 = v2;
      static Published.subscript.getter();

      v14 = [v27 goalTypeIdentifier];

      if (v14)
      {

        return 0;
      }

      else
      {
        v15 = [objc_opt_self() standardUserDefaults];
        v16 = MEMORY[0x20F2E6C00](0xD000000000000024, 0x800000020B455FD0);
        v17 = [v15 BOOLForKey_];

        if (v17)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          v18 = v12;
          static Published.subscript.getter();

          v19 = [v27 goalTypeIdentifier];

          _HKWorkoutGoalType.displayName(formattingManager:)(a1, v19);
          v21 = v20;

          v28 = v21;
          MEMORY[0x20F2E6D80](10272, 0xE200000000000000);
          v22 = WorkoutConfiguration.logLabel.getter();
          MEMORY[0x20F2E6D80](v22);

          MEMORY[0x20F2E6D80](41, 0xE100000000000000);

          return v28;
        }

        swift_getKeyPath();
        swift_getKeyPath();
        v23 = v12;
        static Published.subscript.getter();

        v24 = [v27 goalTypeIdentifier];

        _HKWorkoutGoalType.displayName(formattingManager:)(a1, v24);
        v26 = v25;

        return v26;
      }
    }
  }

  return result;
}

uint64_t key path getter for IntervalWorkoutConfiguration.intervalWorkout : IntervalWorkoutConfiguration@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for IntervalWorkoutConfiguration.intervalWorkout : IntervalWorkoutConfiguration(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  v5 = v2;
  return static Published.subscript.setter();
}

uint64_t GuidedFeaturedActivityPickerItem.title.getter()
{
  v1 = *(v0 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_title);
  v2 = *(v0 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_title + 8);

  return v1;
}

uint64_t GuidedFeaturedActivityPickerItem.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_subtitle);
  v2 = *(v0 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_subtitle + 8);

  return v1;
}

uint64_t GuidedFeaturedActivityPickerItem.recencyTag.getter()
{
  v1 = *(v0 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_recencyTag);
  v2 = *(v0 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_recencyTag + 8);

  return v1;
}

id @objc GuidedFeaturedActivityPickerItem.title.getter(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  v5 = v3[1];

  v6 = MEMORY[0x20F2E6C00](v4, v5);

  return v6;
}

uint64_t GuidedFeaturedActivityPickerItem.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_identifier);
  v2 = *(v0 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_identifier + 8);

  return v1;
}

id GuidedFeaturedActivityPickerItem.compoundItem.getter()
{
  v1 = *(v0 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_activityType);
  v2 = type metadata accessor for CompoundActivityPickerItem();
  v3 = objc_allocWithZone(v2);
  v3[OBJC_IVAR____TtC11WorkoutCore26CompoundActivityPickerItem_type] = 5;
  *&v3[OBJC_IVAR____TtC11WorkoutCore26CompoundActivityPickerItem_activityType] = v1;
  *&v3[OBJC_IVAR____TtC11WorkoutCore26CompoundActivityPickerItem_value] = v0 | 0x8000000000000000;
  v7.receiver = v3;
  v7.super_class = v2;
  v4 = v0;
  v5 = v1;
  return objc_msgSendSuper2(&v7, sel_init);
}

id GuidedFeaturedActivityPickerItem.__allocating_init(activityType:title:subtitle:artwork:mediaType:recencyTag:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v19 = objc_allocWithZone(v11);
  *&v19[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_activityType] = a1;
  v19[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_type] = 2;
  v20 = &v19[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_title];
  *v20 = a2;
  v20[1] = a3;
  v21 = &v19[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_subtitle];
  *v21 = a4;
  v21[1] = a5;
  outlined init with copy of Artwork?(a6, &v19[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_artwork], &_s11SeymourCore7ArtworkVSgMd, &_s11SeymourCore7ArtworkVSgMR);
  v19[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_mediaType] = a7;
  v22 = &v19[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_recencyTag];
  *v22 = a8;
  v22[1] = a9;
  v23 = &v19[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_identifier];
  *v23 = a10;
  v23[1] = a11;
  v27.receiver = v19;
  v27.super_class = v11;
  v24 = objc_msgSendSuper2(&v27, sel_init);
  outlined destroy of Artwork?(a6, &_s11SeymourCore7ArtworkVSgMd, &_s11SeymourCore7ArtworkVSgMR);
  return v24;
}

id GuidedFeaturedActivityPickerItem.init(activityType:title:subtitle:artwork:mediaType:recencyTag:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *&v11[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_activityType] = a1;
  v11[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_type] = 2;
  v15 = &v11[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_title];
  *v15 = a2;
  v15[1] = a3;
  v16 = &v11[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_subtitle];
  *v16 = a4;
  v16[1] = a5;
  outlined init with copy of Artwork?(a6, &v11[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_artwork], &_s11SeymourCore7ArtworkVSgMd, &_s11SeymourCore7ArtworkVSgMR);
  v11[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_mediaType] = a7;
  v17 = &v11[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_recencyTag];
  *v17 = a8;
  v17[1] = a9;
  v18 = &v11[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_identifier];
  *v18 = a10;
  v18[1] = a11;
  v21.receiver = v11;
  v21.super_class = type metadata accessor for GuidedFeaturedActivityPickerItem();
  v19 = objc_msgSendSuper2(&v21, sel_init);
  outlined destroy of Artwork?(a6, &_s11SeymourCore7ArtworkVSgMd, &_s11SeymourCore7ArtworkVSgMR);
  return v19;
}

uint64_t type metadata accessor for GuidedFeaturedActivityPickerItem()
{
  result = type metadata singleton initialization cache for GuidedFeaturedActivityPickerItem;
  if (!type metadata singleton initialization cache for GuidedFeaturedActivityPickerItem)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id GuidedFeaturedActivityPickerItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GuidedFeaturedActivityPickerItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GuidedFeaturedActivityPickerItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t GuidedFeaturedActivityPickerItem.copy(with:)@<X0>(void *a1@<X8>)
{
  v29 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore7ArtworkVSgMd, &_s11SeymourCore7ArtworkVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24[-v4];
  v6 = *(v1 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_activityType);
  v7 = *(v1 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_title + 8);
  v27 = *(v1 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_title);
  v28 = v6;
  v8 = *(v1 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_subtitle + 8);
  v26 = *(v1 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_subtitle);
  outlined init with copy of Artwork?(v1 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_artwork, &v24[-v4], &_s11SeymourCore7ArtworkVSgMd, &_s11SeymourCore7ArtworkVSgMR);
  v25 = *(v1 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_mediaType);
  v9 = *(v1 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_recencyTag);
  v10 = *(v1 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_recencyTag + 8);
  v12 = *(v1 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_identifier);
  v11 = *(v1 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_identifier + 8);
  v13 = type metadata accessor for GuidedFeaturedActivityPickerItem();
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_activityType] = v6;
  v14[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_type] = 2;
  v15 = &v14[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_title];
  v16 = v26;
  *v15 = v27;
  v15[1] = v7;
  v17 = &v14[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_subtitle];
  *v17 = v16;
  v17[1] = v8;
  outlined init with copy of Artwork?(v5, &v14[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_artwork], &_s11SeymourCore7ArtworkVSgMd, &_s11SeymourCore7ArtworkVSgMR);
  v14[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_mediaType] = v25;
  v18 = &v14[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_recencyTag];
  *v18 = v9;
  v18[1] = v10;
  v19 = &v14[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_identifier];
  *v19 = v12;
  v19[1] = v11;
  v30.receiver = v14;
  v30.super_class = v13;

  v20 = v28;
  v21 = objc_msgSendSuper2(&v30, sel_init);
  result = outlined destroy of Artwork?(v5, &_s11SeymourCore7ArtworkVSgMd, &_s11SeymourCore7ArtworkVSgMR);
  v23 = v29;
  v29[3] = v13;
  *v23 = v21;
  return result;
}

id protocol witness for CompoundActivityPickerItemProtocol.compoundItem.getter in conformance GuidedFeaturedActivityPickerItem()
{
  v1 = *(v0 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_activityType);
  v2 = type metadata accessor for CompoundActivityPickerItem();
  v3 = objc_allocWithZone(v2);
  v3[OBJC_IVAR____TtC11WorkoutCore26CompoundActivityPickerItem_type] = 5;
  *&v3[OBJC_IVAR____TtC11WorkoutCore26CompoundActivityPickerItem_activityType] = v1;
  *&v3[OBJC_IVAR____TtC11WorkoutCore26CompoundActivityPickerItem_value] = v0 | 0x8000000000000000;
  v7.receiver = v3;
  v7.super_class = v2;
  v4 = v0;
  v5 = v1;
  return objc_msgSendSuper2(&v7, sel_init);
}

id protocol witness for Identifiable.id.getter in conformance GuidedFeaturedActivityPickerItem@<X0>(void *a1@<X8>)
{
  result = [*v1 id];
  *a1 = result;
  return result;
}

uint64_t GuidedFeaturedActivityPickerItem.symbolName.getter()
{
  if (*(v0 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_mediaType) > 1u)
  {
    if (*(v0 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_mediaType) - 2 < 2)
    {
      return 0x656D2E656C707061;
    }

    return 0xD000000000000012;
  }

  if (!*(v0 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_mediaType))
  {
    return 0xD000000000000012;
  }

  return 0xD00000000000001ELL;
}

uint64_t GuidedFeaturedActivityPickerItem.description.getter()
{
  _StringGuts.grow(_:)(43);

  v13[0] = 0xD000000000000027;
  v13[1] = 0x800000020B45B9C0;
  v1 = *(v0 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_type);
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      v2 = 0xE600000000000000;
      v3 = 0x6E6F74747562;
    }

    else if (v1 == 4)
    {
      v2 = 0xE700000000000000;
      v3 = 0x646567616E616DLL;
    }

    else
    {
      v2 = 0xE800000000000000;
      v3 = 0x646E756F706D6F63;
    }
  }

  else if (*(v0 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_type))
  {
    if (v1 == 1)
    {
      v2 = 0xE900000000000064;
      v3 = 0x6574636964657270;
    }

    else
    {
      v2 = 0xE600000000000000;
      v3 = 0x646564697567;
    }
  }

  else
  {
    v2 = 0xE800000000000000;
    v3 = 0x647261646E617473;
  }

  MEMORY[0x20F2E6D80](v3, v2);

  MEMORY[0x20F2E6D80](8236, 0xE200000000000000);
  v4 = v13[0];
  strcpy(v13, "title: ");
  v13[1] = 0xE700000000000000;
  MEMORY[0x20F2E6D80](*(v0 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_title), *(v0 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_title + 8));
  MEMORY[0x20F2E6D80](2108457, 0xE300000000000000);

  MEMORY[0x20F2E6D80](v13[0], 0xE700000000000000);

  strcpy(v13, "subtitle: ");
  HIDWORD(v13[1]) = -369098752;
  MEMORY[0x20F2E6D80](*(v0 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_subtitle), *(v0 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_subtitle + 8));
  MEMORY[0x20F2E6D80](2108457, 0xE300000000000000);

  MEMORY[0x20F2E6D80](v13[0], v13[1]);

  strcpy(v13, "artwork: ");
  WORD1(v13[1]) = 0;
  HIDWORD(v13[1]) = -385875968;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore7ArtworkVSgMd, &_s11SeymourCore7ArtworkVSgMR);
  v5 = Optional.description.getter();
  MEMORY[0x20F2E6D80](v5);

  MEMORY[0x20F2E6D80](2108457, 0xE300000000000000);

  MEMORY[0x20F2E6D80](v13[0], v13[1]);

  _StringGuts.grow(_:)(16);

  strcpy(v13, "recencyTag: ");
  HIWORD(v13[1]) = -5120;
  v12 = *(v0 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_recencyTag);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v6 = Optional.description.getter();
  MEMORY[0x20F2E6D80](v6);

  MEMORY[0x20F2E6D80](8236, 0xE200000000000000);

  MEMORY[0x20F2E6D80](v13[0], v13[1]);

  _StringGuts.grow(_:)(16);

  strcpy(v13, "identifier: ");
  HIWORD(v13[1]) = -5120;
  MEMORY[0x20F2E6D80](*(v0 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_identifier), *(v0 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_identifier + 8));
  MEMORY[0x20F2E6D80](8236, 0xE200000000000000);

  MEMORY[0x20F2E6D80](v13[0], v13[1]);

  _StringGuts.grow(_:)(16);

  strcpy(v13, "activityType: ");
  HIBYTE(v13[1]) = -18;
  v7 = [*(v0 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_activityType) description];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  MEMORY[0x20F2E6D80](v8, v10);

  MEMORY[0x20F2E6D80](v13[0], v13[1]);

  return v4;
}

Swift::Int GuidedFeaturedActivityPickerItem.hash.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Artwork();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore7ArtworkVSgMd, &_s11SeymourCore7ArtworkVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v21 - v9;
  Hasher.init()();
  v11 = *(v0 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_activityType);
  NSObject.hash(into:)();
  MEMORY[0x20F2E7FF0](*(v1 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_type));
  v12 = *(v1 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_title);
  v13 = *(v1 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_title + 8);
  String.hash(into:)();
  v14 = *(v1 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_subtitle);
  v15 = *(v1 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_subtitle + 8);
  String.hash(into:)();
  outlined init with copy of Artwork?(v1 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_artwork, v10, &_s11SeymourCore7ArtworkVSgMd, &_s11SeymourCore7ArtworkVSgMR);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type Artwork and conformance Artwork(&lazy protocol witness table cache variable for type Artwork and conformance Artwork, MEMORY[0x277D53A78]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v6, v2);
  }

  v16 = *(v1 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_mediaType);
  if (v16 == 4)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x20F2E5300](v16);
    String.hash(into:)();
  }

  if (*(v1 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_recencyTag + 8))
  {
    v17 = *(v1 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_recencyTag);
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v18 = *(v1 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_identifier);
  v19 = *(v1 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_identifier + 8);
  String.hash(into:)();
  return Hasher.finalize()();
}

uint64_t GuidedFeaturedActivityPickerItem.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of Artwork?(a1, v5, &_sypSgMd, &_sypSgMR);
  if (!v6)
  {
    outlined destroy of Artwork?(v5, &_sypSgMd, &_sypSgMR);
    goto LABEL_5;
  }

  type metadata accessor for GuidedFeaturedActivityPickerItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v2 = 0;
    return v2 & 1;
  }

  v2 = specialized static GuidedFeaturedActivityPickerItem.== infix(_:_:)(v1, v4);

  return v2 & 1;
}

id static GuidedFeaturedActivityPickerItem.guidedWalkCanonical()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore7ArtworkVSgMd, &_s11SeymourCore7ArtworkVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v20 - v2;
  v4 = MEMORY[0x20F2E5300](1);
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20B423A90;
  *(inited + 32) = static HealthDataConstants.mediaTypeProperty.getter();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v8;
  *(inited + 48) = v4;
  *(inited + 56) = v6;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of Artwork?(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
  v9 = objc_allocWithZone(MEMORY[0x277D0A810]);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v11 = [v9 initWithActivityTypeIdentifier:52 isIndoor:0 metadata:isa];

  static GuidedFeaturedActivityPickerItem.artworkCanonical()();
  v12 = type metadata accessor for Artwork();
  (*(*(v12 - 8) + 56))(v3, 0, 1, v12);
  v13 = type metadata accessor for GuidedFeaturedActivityPickerItem();
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_activityType] = v11;
  v14[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_type] = 2;
  v15 = &v14[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_title];
  strcpy(&v14[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_title], "Time to Walk");
  v15[13] = 0;
  *(v15 + 7) = -5120;
  v16 = &v14[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_subtitle];
  *v16 = 0xD000000000000011;
  v16[1] = 0x800000020B45B9F0;
  outlined init with copy of Artwork?(v3, &v14[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_artwork], &_s11SeymourCore7ArtworkVSgMd, &_s11SeymourCore7ArtworkVSgMR);
  v14[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_mediaType] = 1;
  *&v14[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_recencyTag] = xmmword_20B433C20;
  v17 = &v14[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_identifier];
  *v17 = 0xD000000000000024;
  v17[1] = 0x800000020B45BA10;
  v20.receiver = v14;
  v20.super_class = v13;
  v18 = objc_msgSendSuper2(&v20, sel_init);
  outlined destroy of Artwork?(v3, &_s11SeymourCore7ArtworkVSgMd, &_s11SeymourCore7ArtworkVSgMR);
  return v18;
}

uint64_t static GuidedFeaturedActivityPickerItem.artworkCanonical()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9 - v2;
  v4 = type metadata accessor for ArtworkFlavorDescriptor();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  ArtworkFlavorDescriptor.init(family:flavor:variant:)();
  URL.init(string:)();
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  result = (*(v7 + 48))(v3, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    URL.absoluteString.getter();
    (*(v7 + 8))(v3, v6);
    return Artwork.init(backgroundColor:flavorDescriptor:height:template:textColor:width:)();
  }

  return result;
}

id static GuidedFeaturedActivityPickerItem.guidedRunCanonical()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore7ArtworkVSgMd, &_s11SeymourCore7ArtworkVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v20 - v2;
  v4 = MEMORY[0x20F2E5300](0);
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20B423A90;
  *(inited + 32) = static HealthDataConstants.mediaTypeProperty.getter();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v8;
  *(inited + 48) = v4;
  *(inited + 56) = v6;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of Artwork?(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
  v9 = objc_allocWithZone(MEMORY[0x277D0A810]);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v11 = [v9 initWithActivityTypeIdentifier:37 isIndoor:0 metadata:isa];

  static GuidedFeaturedActivityPickerItem.artworkCanonical()();
  v12 = type metadata accessor for Artwork();
  (*(*(v12 - 8) + 56))(v3, 0, 1, v12);
  v13 = type metadata accessor for GuidedFeaturedActivityPickerItem();
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_activityType] = v11;
  v14[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_type] = 2;
  v15 = &v14[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_title];
  *v15 = 0x206F7420656D6954;
  v15[1] = 0xEB000000006E7552;
  v16 = &v14[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_subtitle];
  *v16 = 0xD000000000000011;
  v16[1] = 0x800000020B45B9F0;
  outlined init with copy of Artwork?(v3, &v14[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_artwork], &_s11SeymourCore7ArtworkVSgMd, &_s11SeymourCore7ArtworkVSgMR);
  v14[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_mediaType] = 0;
  *&v14[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_recencyTag] = xmmword_20B433C20;
  v17 = &v14[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_identifier];
  *v17 = 0xD000000000000024;
  v17[1] = 0x800000020B45BA40;
  v20.receiver = v14;
  v20.super_class = v13;
  v18 = objc_msgSendSuper2(&v20, sel_init);
  outlined destroy of Artwork?(v3, &_s11SeymourCore7ArtworkVSgMd, &_s11SeymourCore7ArtworkVSgMR);
  return v18;
}

uint64_t outlined init with copy of Artwork?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t specialized static GuidedFeaturedActivityPickerItem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore7ArtworkVSgMd, &_s11SeymourCore7ArtworkVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore7ArtworkVSg_ADtMd, &_s11SeymourCore7ArtworkVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v37 - v15;
  type metadata accessor for NSObject();
  v17 = *(a1 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_activityType);
  v18 = *(a2 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_activityType);
  if ((static NSObject.== infix(_:_:)() & 1) == 0 || *(a1 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_type) != *(a2 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_type) || (*(a1 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_title) != *(a2 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_title) || *(a1 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_title + 8) != *(a2 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_title + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (*(a1 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_subtitle) != *(a2 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_subtitle) || *(a1 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_subtitle + 8) != *(a2 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_subtitle + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_15;
  }

  v19 = v5;
  v20 = OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_artwork;
  v21 = *(v13 + 48);
  outlined init with copy of Artwork?(a1 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_artwork, v16, &_s11SeymourCore7ArtworkVSgMd, &_s11SeymourCore7ArtworkVSgMR);
  v22 = a2 + v20;
  v23 = v19;
  outlined init with copy of Artwork?(v22, &v16[v21], &_s11SeymourCore7ArtworkVSgMd, &_s11SeymourCore7ArtworkVSgMR);
  v24 = *(v19 + 48);
  if (v24(v16, 1, v4) == 1)
  {
    if (v24(&v16[v21], 1, v4) == 1)
    {
      outlined destroy of Artwork?(v16, &_s11SeymourCore7ArtworkVSgMd, &_s11SeymourCore7ArtworkVSgMR);
      goto LABEL_18;
    }

LABEL_14:
    outlined destroy of Artwork?(v16, &_s11SeymourCore7ArtworkVSg_ADtMd, &_s11SeymourCore7ArtworkVSg_ADtMR);
    goto LABEL_15;
  }

  outlined init with copy of Artwork?(v16, v12, &_s11SeymourCore7ArtworkVSgMd, &_s11SeymourCore7ArtworkVSgMR);
  if (v24(&v16[v21], 1, v4) == 1)
  {
    (*(v19 + 8))(v12, v4);
    goto LABEL_14;
  }

  (*(v19 + 32))(v8, &v16[v21], v4);
  lazy protocol witness table accessor for type Artwork and conformance Artwork(&lazy protocol witness table cache variable for type Artwork and conformance Artwork, MEMORY[0x277D53A78]);
  v27 = dispatch thunk of static Equatable.== infix(_:_:)();
  v28 = *(v23 + 8);
  v28(v8, v4);
  v28(v12, v4);
  outlined destroy of Artwork?(v16, &_s11SeymourCore7ArtworkVSgMd, &_s11SeymourCore7ArtworkVSgMR);
  if ((v27 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_18:
  v29 = *(a2 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_mediaType);
  if (*(a1 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_mediaType) == 4)
  {
    if (v29 != 4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (v29 == 4)
    {
      goto LABEL_15;
    }

    v30 = MEMORY[0x20F2E5300]();
    v32 = v31;
    if (v30 == MEMORY[0x20F2E5300](v29) && v32 == v33)
    {
    }

    else
    {
      v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v34 & 1) == 0)
      {
        goto LABEL_15;
      }
    }
  }

  v35 = *(a1 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_recencyTag + 8);
  v36 = *(a2 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_recencyTag + 8);
  if (v35)
  {
    if (v36 && (*(a1 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_recencyTag) == *(a2 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_recencyTag) && v35 == v36 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      goto LABEL_33;
    }

LABEL_15:
    v25 = 0;
    return v25 & 1;
  }

  if (v36)
  {
    goto LABEL_15;
  }

LABEL_33:
  if (*(a1 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_identifier) == *(a2 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_identifier) && *(a1 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_identifier + 8) == *(a2 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_identifier + 8))
  {
    v25 = 1;
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v25 & 1;
}

uint64_t instantiation function for generic protocol witness table for GuidedFeaturedActivityPickerItem(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Artwork and conformance Artwork(&lazy protocol witness table cache variable for type GuidedFeaturedActivityPickerItem and conformance GuidedFeaturedActivityPickerItem, type metadata accessor for GuidedFeaturedActivityPickerItem);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type Artwork and conformance Artwork(&lazy protocol witness table cache variable for type GuidedFeaturedActivityPickerItem and conformance GuidedFeaturedActivityPickerItem, type metadata accessor for GuidedFeaturedActivityPickerItem);
  *(a1 + 8) = result;
  return result;
}

void type metadata completion function for GuidedFeaturedActivityPickerItem()
{
  type metadata accessor for Artwork?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Artwork?()
{
  if (!lazy cache variable for type metadata for Artwork?)
  {
    type metadata accessor for Artwork();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Artwork?);
    }
  }
}

uint64_t outlined destroy of Artwork?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t lazy protocol witness table accessor for type Artwork and conformance Artwork(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ExertionValue.Group.localizedTitle.getter()
{
  v1 = *v0;
  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  if (v1 <= 1)
  {
    if (v1)
    {
      v4 = 1498628421;
      goto LABEL_10;
    }

    v5 = 0x44455050494B53;
    v6 = 0xE700000000000000;
  }

  else if (v1 == 2)
  {
    v5 = 0x4554415245444F4DLL;
    v6 = 0xEF54524F4646455FLL;
  }

  else
  {
    if (v1 == 3)
    {
      v4 = 1146241352;
LABEL_10:
      v5 = v4 | 0x4646455F00000000;
      v6 = 0xEB0000000054524FLL;
      goto LABEL_11;
    }

    v5 = 0x5F54554F5F4C4C41;
    v6 = 0xEE0054524F464645;
  }

LABEL_11:
  v7 = MEMORY[0x20F2E6C00](v5, v6);
  v8 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v9 = [v3 localizedStringForKey:v7 value:0 table:v8];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v10;
}

uint64_t ExertionValue.Group.localizedDescription.getter()
{
  v1 = 0xD000000000000017;
  v2 = *v0;
  if (v2 > 1)
  {
    v3 = "ALL_OUT_EFFORT_DESCRIPTION";
    if (v2 == 3)
    {
      v4 = 0xD000000000000017;
    }

    else
    {
      v3 = "https://www.apple.com";
      v4 = 0xD00000000000001ALL;
    }

    if (v2 == 2)
    {
      v5 = "HARD_EFFORT_DESCRIPTION";
    }

    else
    {
      v5 = v3;
    }

    if (v2 == 2)
    {
      v1 = 0xD00000000000001BLL;
    }

    else
    {
      v1 = v4;
    }

    goto LABEL_13;
  }

  if (v2)
  {
    v5 = "MODERATE_EFFORT_DESCRIPTION";
LABEL_13:
    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v7 = [objc_opt_self() bundleForClass_];
    v8 = MEMORY[0x20F2E6C00](v1, v5 | 0x8000000000000000);
    v9 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
    v10 = [v7 localizedStringForKey:v8 value:0 table:v9];

    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return v2;
}

WorkoutCore::ExertionValue::Group_optional __swiftcall ExertionValue.Group.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ExertionValue.Group()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ExertionValue.Group()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

uint64_t ExertionValue.hash(into:)()
{
  v1 = *(v0 + 8);
  MEMORY[0x20F2E7FF0](*v0);
  return MEMORY[0x20F2E7FF0](v1);
}

Swift::Int ExertionValue.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ExertionValue()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ExertionValue()
{
  v1 = *(v0 + 8);
  MEMORY[0x20F2E7FF0](*v0);
  return MEMORY[0x20F2E7FF0](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ExertionValue()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type ExertionValue.Group and conformance ExertionValue.Group()
{
  result = lazy protocol witness table cache variable for type ExertionValue.Group and conformance ExertionValue.Group;
  if (!lazy protocol witness table cache variable for type ExertionValue.Group and conformance ExertionValue.Group)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExertionValue.Group and conformance ExertionValue.Group);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ExertionValue and conformance ExertionValue()
{
  result = lazy protocol witness table cache variable for type ExertionValue and conformance ExertionValue;
  if (!lazy protocol witness table cache variable for type ExertionValue and conformance ExertionValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExertionValue and conformance ExertionValue);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExertionValue(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 5;
  v5 = v3 - 5;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ExertionValue(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExertionValue.Group(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ExertionValue.Group(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t MirroredHostCommand.description.getter()
{
  v1 = 0x75716552676E6970;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000020;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000019;
  }
}

void MirroredHostCommand.init(protobuf:)(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if ((a1[1] & 1) == 0)
  {
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static WOLog.dataLink);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = v3;
      _os_log_impl(&dword_20AEA4000, v5, v6, "Unrecognized MirroredHostCommand rawValue: %ld", v7, 0xCu);
      MEMORY[0x20F2E9420](v7, -1, -1);
    }

    LOBYTE(v3) = 3;
  }

  *a2 = v3;
}

WorkoutCore::MirroredHostCommand_optional __swiftcall MirroredHostCommand.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance MirroredHostCommand()
{
  v1 = 0x75716552676E6970;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000020;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000019;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MirroredHostCommand()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MirroredHostCommand()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type MirroredHostCommand and conformance MirroredHostCommand()
{
  result = lazy protocol witness table cache variable for type MirroredHostCommand and conformance MirroredHostCommand;
  if (!lazy protocol witness table cache variable for type MirroredHostCommand and conformance MirroredHostCommand)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredHostCommand and conformance MirroredHostCommand);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MirroredHostCommand(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MirroredHostCommand(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t NLWorkout.catalogWorkout.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 catalogWorkoutBridge];
  if (v3)
  {
    v4 = v3;
    v5 = OBJC_IVAR___WOCoreCatalogWorkout_bridgedValue;
    v6 = type metadata accessor for CatalogWorkout();
    v13 = *(v6 - 8);
    (*(v13 + 16))(a1, &v4[v5], v6);

    v7 = *(v13 + 56);
    v8 = a1;
    v9 = 0;
    v10 = v6;
  }

  else
  {
    v11 = type metadata accessor for CatalogWorkout();
    v7 = *(*(v11 - 8) + 56);
    v10 = v11;
    v8 = a1;
    v9 = 1;
  }

  return v7(v8, v9, 1, v10);
}

uint64_t key path getter for NLWorkout.catalogWorkout : NLWorkout@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 catalogWorkoutBridge];
  if (v3)
  {
    v4 = v3;
    v5 = OBJC_IVAR___WOCoreCatalogWorkout_bridgedValue;
    v6 = type metadata accessor for CatalogWorkout();
    v13 = *(v6 - 8);
    (*(v13 + 16))(a2, &v4[v5], v6);

    v7 = *(v13 + 56);
    v8 = a2;
    v9 = 0;
    v10 = v6;
  }

  else
  {
    v11 = type metadata accessor for CatalogWorkout();
    v7 = *(*(v11 - 8) + 56);
    v10 = v11;
    v8 = a2;
    v9 = 1;
  }

  return v7(v8, v9, 1, v10);
}

uint64_t key path setter for NLWorkout.catalogWorkout : NLWorkout(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  outlined init with copy of CatalogWorkout?(a1, &v10 - v6);
  v8 = *a2;
  return NLWorkout.catalogWorkout.setter(v7);
}

uint64_t NLWorkout.catalogWorkout.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v21 - v5;
  v7 = type metadata accessor for CatalogWorkout();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - v13;
  outlined init with copy of CatalogWorkout?(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of CatalogWorkout?(v6);
    [v1 setCatalogWorkoutBridge_];
    return outlined destroy of CatalogWorkout?(a1);
  }

  else
  {
    (*(v8 + 32))(v14, v6, v7);
    v16 = *(v8 + 16);
    v16(v12, v14, v7);
    v17 = type metadata accessor for CatalogWorkoutCoreBridge();
    v18 = objc_allocWithZone(v17);
    v16(&v18[OBJC_IVAR___WOCoreCatalogWorkout_bridgedValue], v12, v7);
    v21.receiver = v18;
    v21.super_class = v17;
    v19 = objc_msgSendSuper2(&v21, sel_init);
    v20 = *(v8 + 8);
    v20(v12, v7);
    [v1 setCatalogWorkoutBridge_];

    outlined destroy of CatalogWorkout?(a1);
    return (v20)(v14, v7);
  }
}

uint64_t outlined init with copy of CatalogWorkout?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of CatalogWorkout?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*NLWorkout.catalogWorkout.modify(void *a1))(uint64_t *a1, char a2)
{
  v2 = v1;
  *a1 = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[1] = swift_coroFrameAlloc();
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v4);
    v5 = malloc(v4);
  }

  v6 = v5;
  a1[2] = v5;
  v7 = [v2 catalogWorkoutBridge];
  if (v7)
  {
    v8 = v7;
    v9 = OBJC_IVAR___WOCoreCatalogWorkout_bridgedValue;
    v10 = type metadata accessor for CatalogWorkout();
    v11 = *(v10 - 8);
    (*(v11 + 16))(v6, &v8[v9], v10);

    (*(v11 + 56))(v6, 0, 1, v10);
  }

  else
  {
    v12 = type metadata accessor for CatalogWorkout();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  }

  return NLWorkout.catalogWorkout.modify;
}

void NLWorkout.catalogWorkout.modify(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    outlined init with copy of CatalogWorkout?(v3, v2);
    NLWorkout.catalogWorkout.setter(v2);
    outlined destroy of CatalogWorkout?(v3);
  }

  else
  {
    NLWorkout.catalogWorkout.setter(v3);
  }

  free(v3);

  free(v2);
}

uint64_t CompoundActivityItemsDataSource.init(compoundObservables:standardActivityTypeProvider:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC11WorkoutCore31CompoundActivityItemsDataSource_observers;
  *&v2[v5] = [objc_opt_self() weakObjectsHashTable];
  *&v2[OBJC_IVAR____TtC11WorkoutCore31CompoundActivityItemsDataSource_compoundItems] = MEMORY[0x277D84F98];
  *&v2[OBJC_IVAR____TtC11WorkoutCore31CompoundActivityItemsDataSource_standardActivityTypeProvider] = a2;
  *&v2[OBJC_IVAR____TtC11WorkoutCore31CompoundActivityItemsDataSource_compoundObservables] = a1;
  v74.receiver = v2;
  v74.super_class = type metadata accessor for CompoundActivityItemsDataSource();
  swift_unknownObjectRetain();
  v6 = objc_msgSendSuper2(&v74, sel_init);
  v7 = *&v6[OBJC_IVAR____TtC11WorkoutCore31CompoundActivityItemsDataSource_compoundObservables];
  v8 = v7 + 64;
  v9 = 1 << *(v7 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v7 + 64);
  v61 = OBJC_IVAR____TtC11WorkoutCore31CompoundActivityItemsDataSource_compoundItems;
  v12 = (v9 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v62 = v6;
  v13 = v6;
  v14 = 0;
  v63 = v13;
  v60 = v7;
  while (v11)
  {
LABEL_12:
    v18 = __clz(__rbit64(v11)) | (v14 << 6);
    v19 = *(*(v7 + 48) + 8 * v18);
    outlined init with copy of CompoundActivityItemsDataSourceObservable(*(v7 + 56) + 40 * v18, v71);
    aBlock = v19;
    v20 = v72;
    v21 = v73;
    __swift_project_boxed_opaque_existential_1(v71, v72);
    (*(v21 + 16))(v63, &protocol witness table for CompoundActivityItemsDataSource, v20, v21);
    outlined init with copy of CompoundActivityItemsDataSourceObservable(v71, &v66);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore41CompoundActivityItemsDataSourceObservable_pMd, &_s11WorkoutCore41CompoundActivityItemsDataSourceObservable_pMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore41CompoundActivityItemsDataSourceCachedSync_pMd, &_s11WorkoutCore41CompoundActivityItemsDataSourceCachedSync_pMR);
    if (!swift_dynamicCast())
    {
      v65 = 0;
      memset(v64, 0, sizeof(v64));
      outlined destroy of CompoundActivityItemsDataSourceCachedSync?(v64, &_s11WorkoutCore41CompoundActivityItemsDataSourceCachedSync_pSgMd, &_s11WorkoutCore41CompoundActivityItemsDataSourceCachedSync_pSgMR);
      swift_beginAccess();
      v37 = *&v62[v61];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v66 = *&v62[v61];
      v39 = v66;
      *&v62[v61] = 0x8000000000000000;
      v40 = specialized __RawDictionaryStorage.find<A>(_:)(v19);
      v42 = v39[2];
      v43 = (v41 & 1) == 0;
      v44 = __OFADD__(v42, v43);
      v45 = v42 + v43;
      if (v44)
      {
        goto LABEL_38;
      }

      v46 = v41;
      if (v39[3] >= v45)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_26;
        }

        v55 = v40;
        specialized _NativeDictionary.copy()();
        v40 = v55;
        v50 = v66;
        if (v46)
        {
          goto LABEL_4;
        }

LABEL_27:
        v50[(v40 >> 6) + 8] |= 1 << v40;
        *(v50[6] + 8 * v40) = v19;
        *(v50[7] + 8 * v40) = MEMORY[0x277D84F90];
        v51 = v50[2];
        v44 = __OFADD__(v51, 1);
        v52 = v51 + 1;
        if (v44)
        {
          goto LABEL_40;
        }

        v50[2] = v52;
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v45, isUniquelyReferenced_nonNull_native);
        v40 = specialized __RawDictionaryStorage.find<A>(_:)(v19);
        if ((v46 & 1) != (v47 & 1))
        {
          goto LABEL_41;
        }

LABEL_26:
        v50 = v66;
        if ((v46 & 1) == 0)
        {
          goto LABEL_27;
        }

LABEL_4:
        v15 = v50[7];
        v16 = *(v15 + 8 * v40);
        *(v15 + 8 * v40) = MEMORY[0x277D84F90];
      }

      *&v62[v61] = v50;
      swift_endAccess();
      v13 = v63;
      goto LABEL_6;
    }

    outlined init with take of CompoundActivityItemsDataSourceCachedSync(v64, v67);
    v22 = v68;
    v23 = v69;
    __swift_project_boxed_opaque_existential_1(v67, v68);
    v24 = (*(v23 + 16))(v22, v23);
    swift_beginAccess();
    v25 = *&v62[v61];
    v26 = swift_isUniquelyReferenced_nonNull_native();
    *&v64[0] = *&v62[v61];
    v27 = *&v64[0];
    *&v62[v61] = 0x8000000000000000;
    v29 = specialized __RawDictionaryStorage.find<A>(_:)(v19);
    v30 = *(v27 + 16);
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      goto LABEL_37;
    }

    v33 = v28;
    if (*(v27 + 24) >= v32)
    {
      if (v26)
      {
        v36 = *&v64[0];
        if ((v28 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        v36 = *&v64[0];
        if ((v33 & 1) == 0)
        {
          goto LABEL_30;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v32, v26);
      v34 = specialized __RawDictionaryStorage.find<A>(_:)(v19);
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_41;
      }

      v29 = v34;
      v36 = *&v64[0];
      if ((v33 & 1) == 0)
      {
LABEL_30:
        v36[(v29 >> 6) + 8] |= 1 << v29;
        *(v36[6] + 8 * v29) = v19;
        *(v36[7] + 8 * v29) = v24;
        v53 = v36[2];
        v44 = __OFADD__(v53, 1);
        v54 = v53 + 1;
        if (v44)
        {
          goto LABEL_39;
        }

        v36[2] = v54;
        goto LABEL_32;
      }
    }

    v48 = v36[7];
    v49 = *(v48 + 8 * v29);
    *(v48 + 8 * v29) = v24;

LABEL_32:
    *&v62[v61] = v36;
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1Tm_3(v67);
    v13 = v63;
    v7 = v60;
LABEL_6:
    v11 &= v11 - 1;
    outlined destroy of CompoundActivityItemsDataSourceCachedSync?(&aBlock, &_sSo31NLCompoundActivityPickerSectionV3key_11WorkoutCore08CompoundB25ItemsDataSourceObservable_p5valuetMd, &_sSo31NLCompoundActivityPickerSectionV3key_11WorkoutCore08CompoundB25ItemsDataSourceObservable_p5valuetMR);
  }

  while (1)
  {
    v17 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v17 >= v12)
    {

      v56 = *&v13[OBJC_IVAR____TtC11WorkoutCore31CompoundActivityItemsDataSource_standardActivityTypeProvider];
      v57 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v72 = partial apply for closure #2 in CompoundActivityItemsDataSource.init(compoundObservables:standardActivityTypeProvider:);
      v73 = v57;
      aBlock = MEMORY[0x277D85DD0];
      v71[0] = 1107296256;
      v71[1] = thunk for @escaping @callee_guaranteed () -> ();
      v71[2] = &block_descriptor_23;
      v58 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      [v56 setDidPopulateBlock_];
      _Block_release(v58);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return v13;
    }

    v11 = *(v8 + 8 * v17);
    ++v14;
    if (v11)
    {
      v14 = v17;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  type metadata accessor for NLCompoundActivityPickerSection(0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void closure #2 in CompoundActivityItemsDataSource.init(compoundObservables:standardActivityTypeProvider:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    CompoundActivityItemsDataSource.updateObservers()();
  }
}

id CompoundActivityItemsDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CompoundActivityItemsDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CompoundActivityItemsDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CompoundActivityItemsDataSource.addObserver(_:)(uint64_t a1)
{
  swift_getObjectType();

  return specialized CompoundActivityItemsDataSource.addObserver(_:)(a1, v1);
}

id CompoundActivityItemsDataSource.removeObserver(_:)(uint64_t a1)
{
  swift_getObjectType();

  return specialized CompoundActivityItemsDataSource.removeObserver(_:)(a1, v1);
}

uint64_t outlined init with copy of CompoundActivityItemsDataSourceObservable(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined init with take of CompoundActivityItemsDataSourceCachedSync(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

__n128 key path getter for HeartRatePrecisionStartAccumulator.heartRateData : HeartRatePrecisionStartAccumulator@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_heartRateData;
  swift_beginAccess();
  v4 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v4;
  result = *(v3 + 16);
  v6 = *(v3 + 32);
  *(a2 + 16) = result;
  *(a2 + 32) = v6;
  return result;
}

void key path setter for HeartRatePrecisionStartAccumulator.heartRateData : HeartRatePrecisionStartAccumulator(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *a2 + OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_heartRateData;
  swift_beginAccess();
  *v5 = v3;
  *(v5 + 8) = v4;
  v6 = *(a1 + 2);
  *(v5 + 16) = *(a1 + 1);
  *(v5 + 32) = v6;
  HeartRatePrecisionStartAccumulator.heartRateData.didset();
}

void HeartRatePrecisionStartAccumulator.heartRateData.didset()
{
  v1 = v0;
  if ([objc_opt_self() isAppleInternalInstall])
  {
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static WOLog.app);
    v3 = v0;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v14 = v7;
      *v6 = 136315138;
      v8 = OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_heartRateData;
      swift_beginAccess();
      v13 = *&v3[v8];
      lazy protocol witness table accessor for type Double and conformance Double();
      v9 = BinaryFloatingPoint.formatted()();
      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9._countAndFlagsBits, v9._object, &v14);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_20AEA4000, v4, v5, "[HeartRatePrecisionStartAccumulator] Updated heart_rate=%s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x20F2E9420](v7, -1, -1);
      MEMORY[0x20F2E9420](v6, -1, -1);
    }
  }

  v11 = [v1 updateHandler];
  if (v11)
  {
    v12 = v11;
    (*(v11 + 2))();
    _Block_release(v12);
  }
}

uint64_t HeartRatePrecisionStartAccumulator.disabledForSession.getter()
{
  v1 = OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_disabledForSession;
  swift_beginAccess();
  return *(v0 + v1);
}

void HeartRatePrecisionStartAccumulator.disabledForSession.setter(char a1)
{
  v3 = a1 & 1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_disabledForSession;
  swift_beginAccess();
  v10 = *(v1 + v9);
  *(v1 + v9) = a1;
  if (v10 != v3)
  {
    if (a1)
    {
      HeartRatePrecisionStartAccumulator.stopQuery()();
    }

    else
    {
      Date.init()();
      HeartRatePrecisionStartAccumulator.startQuery(startDate:)();
      (*(v5 + 8))(v8, v4);
    }
  }
}

void key path setter for HeartRatePrecisionStartAccumulator.disabledForSession : HeartRatePrecisionStartAccumulator(unsigned __int8 *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = *a2;
  v11 = OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_disabledForSession;
  swift_beginAccess();
  v12 = *(v10 + v11);
  *(v10 + v11) = v9;
  if (v9 != v12)
  {
    if (v9)
    {
      HeartRatePrecisionStartAccumulator.stopQuery()();
    }

    else
    {
      Date.init()();
      HeartRatePrecisionStartAccumulator.startQuery(startDate:)();
      (*(v5 + 8))(v8, v4);
    }
  }
}

void (*HeartRatePrecisionStartAccumulator.disabledForSession.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = type metadata accessor for Date();
  *(v5 + 32) = v6;
  v7 = *(v6 - 8);
  *(v5 + 40) = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v9 = OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_disabledForSession;
  *(v5 + 48) = v8;
  *(v5 + 56) = v9;
  swift_beginAccess();
  *(v5 + 64) = *(v1 + v9);
  return HeartRatePrecisionStartAccumulator.disabledForSession.modify;
}

void HeartRatePrecisionStartAccumulator.disabledForSession.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 56);
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 64);
  v6 = *(v4 + v3);
  *(v4 + v3) = v5;
  if (a2)
  {
    if (((v5 ^ v6) & 1) == 0)
    {
      goto LABEL_8;
    }

    if ((v5 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    if (((v5 ^ v6) & 1) == 0)
    {
      goto LABEL_8;
    }

    if (!v5)
    {
LABEL_4:
      v8 = v2[5];
      v7 = v2[6];
      v9 = v2[3];
      v10 = v2[4];
      Date.init()();
      HeartRatePrecisionStartAccumulator.startQuery(startDate:)();
      (*(v8 + 8))(v7, v10);
      goto LABEL_8;
    }
  }

  v11 = v2[3];
  HeartRatePrecisionStartAccumulator.stopQuery()();
LABEL_8:
  free(v2[6]);

  free(v2);
}

id HeartRatePrecisionStartAccumulator.__allocating_init(healthStore:staleTimeout:delegate:heartRateSupported:)(void *a1, double a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = objc_allocWithZone(v5);
  v10 = &v9[OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_heartRateData];
  *v10 = 0u;
  v10[1] = 0u;
  v10[2] = 0u;
  *&v9[OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_query] = 0;
  *&v9[OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_staleDataTimer] = 0;
  swift_unknownObjectWeakInit();
  v9[OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_didCollectFirstHeartRateSample] = 0;
  v11 = OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_disabledForSession;
  v9[OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_disabledForSession] = 0;
  *&v9[OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_staleTimeout] = a2;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v9[v11] = a4 ^ 1;
  v14.receiver = v9;
  v14.super_class = v5;
  v12 = objc_msgSendSuper2(&v14, sel_initWithHealthStore_, a1);

  swift_unknownObjectRelease();
  return v12;
}

id HeartRatePrecisionStartAccumulator.init(healthStore:staleTimeout:delegate:heartRateSupported:)(void *a1, uint64_t a2, char a3, double a4)
{
  v5 = specialized HeartRatePrecisionStartAccumulator.init(healthStore:staleTimeout:delegate:heartRateSupported:)(a1, a4, a2, a3);

  swift_unknownObjectRelease();
  return v5;
}

void HeartRatePrecisionStartAccumulator.startQuery(startDate:)()
{
  v1 = OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_disabledForSession;
  swift_beginAccess();
  if (v0[v1])
  {
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static WOLog.app);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_13;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "[HeartRatePrecisionStartAccumulator] heart rate readings disabled, not starting heart rate query";
    goto LABEL_12;
  }

  if (![v0 isAccumulating] || (v7 = OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_query, *&v0[OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_query]))
  {
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static WOLog.app);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_13;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "[HeartRatePrecisionStartAccumulator] Not starting heart rate query, either query already started or accumulator not accumulating";
LABEL_12:
    _os_log_impl(&dword_20AEA4000, v3, v4, v6, v5, 2u);
    MEMORY[0x20F2E9420](v5, -1, -1);
LABEL_13:

    return;
  }

  v9 = v0;
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static WOLog.app);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_20AEA4000, v11, v12, "[HeartRatePrecisionStartAccumulator] Starting heart rate query", v13, 2u);
    MEMORY[0x20F2E9420](v13, -1, -1);
  }

  _sSo17OS_dispatch_queueCMaTm_8(0, &lazy cache variable for type metadata for HKSampleType, 0x277CCD8D8);
  v14 = [swift_getObjCClassFromMetadata() quantityTypeForIdentifier_];
  if (v14)
  {
    v15 = v14;
    v16 = v9;
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = objc_opt_self();
    isa = Date._bridgeToObjectiveC()().super.isa;
    v20 = [v18 predicateForSamplesWithStartDate:isa endDate:0 options:0];

    v21 = objc_allocWithZone(MEMORY[0x277CCCFF0]);
    v31 = partial apply for closure #1 in HeartRatePrecisionStartAccumulator.startQuery(startDate:);
    v32 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v28 = 1107296256;
    v29 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKAnchoredObjectQuery, @guaranteed [HKSample]?, @guaranteed [HKDeletedObject]?, @guaranteed HKQueryAnchor?, @guaranteed Error?) -> ();
    v30 = &block_descriptor_28;
    v22 = _Block_copy(&aBlock);

    v23 = v15;
    v24 = [v21 initWithType:v23 predicate:v20 anchor:0 limit:0 resultsHandler:v22];

    _Block_release(v22);

    [v24 setIgnoreDeletedObjects_];
    v31 = partial apply for closure #1 in HeartRatePrecisionStartAccumulator.startQuery(startDate:);
    v32 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v28 = 1107296256;
    v29 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKAnchoredObjectQuery, @guaranteed [HKSample]?, @guaranteed [HKDeletedObject]?, @guaranteed HKQueryAnchor?, @guaranteed Error?) -> ();
    v30 = &block_descriptor_31_1;
    v25 = _Block_copy(&aBlock);

    outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed HKAnchoredObjectQuery, @guaranteed [HKSample]?, @guaranteed [HKDeletedObject]?, @guaranteed HKQueryAnchor?, @guaranteed Error?) -> ())?(partial apply for closure #1 in HeartRatePrecisionStartAccumulator.startQuery(startDate:));

    [v24 setUpdateHandler_];
    _Block_release(v25);

    v26 = [v16 healthStore];
    [v26 executeQuery_];

    v3 = *&v16[v7];
    *&v16[v7] = v24;
    goto LABEL_13;
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void closure #1 in HeartRatePrecisionStartAccumulator.startQuery(startDate:)(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return;
  }

  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
    v2 = a2;
    v6 = __CocoaSet.count.getter();
    a2 = v2;
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return;
    }
  }

  v7 = __OFSUB__(v6, 1);
  v8 = v6 - 1;
  if (v7)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) == 0)
  {
    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v8 < *(v5 + 16))
    {
      v9 = *(a2 + 8 * v8 + 32);
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_32;
  }

  v9 = MEMORY[0x20F2E7A20](v8, a2);
LABEL_9:
  v18 = v9;
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v2 = v10;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
LABEL_19:
      swift_beginAccess();
      v16 = swift_unknownObjectWeakLoadStrong();
      if (v16)
      {
        v17 = v16;
        HeartRatePrecisionStartAccumulator.process(sample:)(v2);
      }

      return;
    }

    v3 = OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_didCollectFirstHeartRateSample;
    if (*(Strong + OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_didCollectFirstHeartRateSample))
    {
LABEL_18:

      goto LABEL_19;
    }

    v4 = Strong;
    if (one-time initialization token for app == -1)
    {
LABEL_13:
      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, static WOLog.app);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_20AEA4000, v13, v14, "[HeartRatePrecisionStartAccumulator] didCollectFirstHKHeartRateSample", v15, 2u);
        MEMORY[0x20F2E9420](v15, -1, -1);
      }

      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      WorkoutSignposter.emit(signpost:)(7);
      Strong = v4;
      *(v4 + v3) = 1;
      goto LABEL_18;
    }

LABEL_32:
    swift_once();
    goto LABEL_13;
  }
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKAnchoredObjectQuery, @guaranteed [HKSample]?, @guaranteed [HKDeletedObject]?, @guaranteed HKQueryAnchor?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v9 = a3;
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  if (a3)
  {
    _sSo17OS_dispatch_queueCMaTm_8(0, &lazy cache variable for type metadata for HKSample, 0x277CCD8A8);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (a4)
  {
    _sSo17OS_dispatch_queueCMaTm_8(0, &lazy cache variable for type metadata for HKDeletedObject, 0x277CCD2E0);
    a4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v13 = a2;
  v14 = a5;
  v15 = a6;
  v12(v13, v9, a4, a5, a6);
}

void HeartRatePrecisionStartAccumulator.stopQuery()()
{
  v1 = OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_query;
  v2 = *&v0[OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_query];
  if (v2)
  {
    v3 = v0;
    v4 = one-time initialization token for app;
    v5 = v2;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static WOLog.app);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_20AEA4000, v7, v8, "[HeartRatePrecisionStartAccumulator] Stopping heart rate query", v9, 2u);
      MEMORY[0x20F2E9420](v9, -1, -1);
    }

    v10 = [v3 healthStore];
    [v10 stopQuery_];

    v11 = *&v3[v1];
    *&v3[v1] = 0;
  }
}

uint64_t HeartRatePrecisionStartAccumulator.process(sample:)(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v2 - 8);
  v3 = *(v29 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchQoS();
  v6 = *(v28 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v28);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 quantity];
  v16 = [objc_opt_self() _countPerMinuteUnit];
  [v15 doubleValueForUnit_];
  v18 = v17;

  v19 = [a1 endDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  Date.timeIntervalSinceReferenceDate.getter();
  v21 = v20;
  (*(v11 + 8))(v14, v10);
  _sSo17OS_dispatch_queueCMaTm_8(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v22 = static OS_dispatch_queue.main.getter();
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = v18;
  *(v24 + 32) = 0u;
  *(v24 + 48) = 0u;
  *(v24 + 64) = v21;
  aBlock[4] = partial apply for closure #1 in HeartRatePrecisionStartAccumulator.process(sample:);
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_24_1;
  v25 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v9, v5, v25);
  _Block_release(v25);

  (*(v29 + 8))(v5, v2);
  return (*(v6 + 8))(v9, v28);
}

void closure #1 in HeartRatePrecisionStartAccumulator.process(sample:)(uint64_t a1, _OWORD *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = (Strong + OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_heartRateData);
    swift_beginAccess();
    v6 = a2[1];
    *v5 = *a2;
    v5[1] = v6;
    v5[2] = a2[2];
    HeartRatePrecisionStartAccumulator.heartRateData.didset();
    HeartRatePrecisionStartAccumulator.scheduleStaleDataTimer()();
  }
}

void HeartRatePrecisionStartAccumulator.scheduleStaleDataTimer()()
{
  v1 = OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_staleDataTimer;
  [*(v0 + OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_staleDataTimer) invalidate];
  v2 = objc_opt_self();
  v3 = *(v0 + OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_staleTimeout);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8[4] = partial apply for closure #1 in HeartRatePrecisionStartAccumulator.scheduleStaleDataTimer();
  v8[5] = v4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ();
  v8[3] = &block_descriptor_24;
  v5 = _Block_copy(v8);

  v6 = [v2 scheduledTimerWithTimeInterval:0 repeats:v5 block:v3];
  _Block_release(v5);
  v7 = *(v0 + v1);
  *(v0 + v1) = v6;
}

void closure #1 in HeartRatePrecisionStartAccumulator.scheduleStaleDataTimer()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      v4 = v1;
      [v3 heartRateProviderDidBecomeStale_];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

__n128 @objc HeartRatePrecisionStartAccumulator.heartRateData.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_heartRateData;
  swift_beginAccess();
  v4 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v4;
  result = *(v3 + 16);
  v6 = *(v3 + 32);
  *(a2 + 16) = result;
  *(a2 + 32) = v6;
  return result;
}

__n128 HeartRatePrecisionStartAccumulator.heartRateData.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_heartRateData;
  swift_beginAccess();
  v4 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v4;
  result = *(v3 + 16);
  v6 = *(v3 + 32);
  *(a1 + 16) = result;
  *(a1 + 32) = v6;
  return result;
}

id HeartRatePrecisionStartAccumulator.__allocating_init(healthStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithHealthStore_];

  return v3;
}

id HeartRatePrecisionStartAccumulator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HeartRatePrecisionStartAccumulator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeartRatePrecisionStartAccumulator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id specialized HeartRatePrecisionStartAccumulator.init(healthStore:staleTimeout:delegate:heartRateSupported:)(uint64_t a1, double a2, uint64_t a3, char a4)
{
  v8 = &v4[OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_heartRateData];
  *v8 = 0u;
  v8[1] = 0u;
  v8[2] = 0u;
  *&v4[OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_query] = 0;
  *&v4[OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_staleDataTimer] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_didCollectFirstHeartRateSample] = 0;
  v9 = OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_disabledForSession;
  v4[OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_disabledForSession] = 0;
  *&v4[OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_staleTimeout] = a2;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v4[v9] = a4 ^ 1;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for HeartRatePrecisionStartAccumulator();
  return objc_msgSendSuper2(&v11, sel_initWithHealthStore_, a1);
}

uint64_t outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed HKAnchoredObjectQuery, @guaranteed [HKSample]?, @guaranteed [HKDeletedObject]?, @guaranteed HKQueryAnchor?, @guaranteed Error?) -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id HKHealthStore.cmCalorieUserInfo.getter()
{
  v2 = v1;
  v3 = v0;
  v103[1] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for Calendar();
  v102 = *(v4 - 8);
  v5 = *(v102 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v90 - v10;
  v98 = type metadata accessor for Date();
  v101 = *(v98 - 8);
  v12 = *(v101 + 64);
  v13 = MEMORY[0x28223BE20](v98);
  v95 = v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v96 = v90 - v15;
  v99 = type metadata accessor for DateComponents();
  v97 = *(v99 - 8);
  v16 = *(v97 + 64);
  v17 = MEMORY[0x28223BE20](v99);
  v94 = v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v90 - v20;
  MEMORY[0x28223BE20](v19);
  v100 = v90 - v22;
  v103[0] = 0;
  v23 = [v3 biologicalSexWithError_];
  v24 = v103[0];
  if (!v23)
  {
    goto LABEL_8;
  }

  v25 = v23;
  v26 = v103[0];
  v27 = [v25 biologicalSex];

  v92 = v27 > 3 ? 0 : qword_20B4340B8[v27];
  v103[0] = 0;
  v28 = [v3 wheelchairUseWithError_];
  v24 = v103[0];
  if (v28)
  {
    v29 = v28;
    v30 = v103[0];
    v31 = [v29 wheelchairUse];

    if (v31 > 2)
    {
      v91 = 0;
    }

    else
    {
      v91 = qword_20B4340D8[v31];
    }

    v93 = v4;
    v103[0] = 0;
    v34 = [v3 _heightCharacteristicQuantityWithError_];
    v35 = v103[0];
    if (v34)
    {
      v36 = v34;
      v37 = objc_opt_self();
      v38 = v35;
      v39 = [v37 meterUnitWithMetricPrefix_];
      [v36 0x1FBD82CC3];
      v41 = v40;
    }

    else
    {
      v42 = v103[0];
      v43 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v2 = 0;
      v41 = 1.7;
    }

    v103[0] = 0;
    v44 = [v3 _bodyMassCharacteristicQuantityWithError_];
    v45 = v103[0];
    if (v44)
    {
      v46 = v44;
      v47 = objc_opt_self();
      v48 = v45;
      v49 = [v47 gramUnitWithMetricPrefix_];
      [v46 0x1FBD82CC3];
      v51 = v50;
    }

    else
    {
      v52 = v103[0];
      v53 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v2 = 0;
      v51 = 68.0299988;
    }

    v54 = v93;
    v103[0] = 0;
    v55 = [v3 dateOfBirthComponentsWithError_];
    v56 = v103[0];
    if (v55)
    {
      v57 = v55;
      v90[1] = v2;
      static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v56;

      v59 = v97;
      (*(v97 + 32))(v100, v21, v99);
      static Calendar.current.getter();
      Calendar.date(from:)();
      v60 = v102 + 8;
      v61 = *(v102 + 8);
      v61(v7, v54);
      v62 = v101;
      v63 = v98;
      if ((*(v101 + 48))(v11, 1, v98) == 1)
      {
        (*(v59 + 8))(v100, v99);
        outlined destroy of Date?(v11);
        v64 = 30.0;
      }

      else
      {
        (*(v62 + 32))(v96, v11, v63);
        static Calendar.current.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation8CalendarV9ComponentOGMd, &_ss23_ContiguousArrayStorageCy10Foundation8CalendarV9ComponentOGMR);
        v102 = v60;
        v67 = type metadata accessor for Calendar.Component();
        v68 = *(v67 - 8);
        v69 = *(v68 + 72);
        v70 = *(v68 + 80);
        v90[0] = v61;
        v71 = v62;
        v72 = (v70 + 32) & ~v70;
        v73 = swift_allocObject();
        *(v73 + 16) = xmmword_20B423A90;
        (*(v68 + 104))(v73 + v72, *MEMORY[0x277CC9988], v67);
        _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5Tf4g_n(v73);
        swift_setDeallocating();
        (*(v68 + 8))(v73 + v72, v67);
        swift_deallocClassInstance();
        v74 = v95;
        Date.init()();
        v75 = v94;
        v76 = v96;
        Calendar.dateComponents(_:from:to:)();

        v77 = *(v71 + 8);
        v101 = v71 + 8;
        v78 = v98;
        v77(v74, v98);
        (v90[0])(v7, v93);
        v79 = DateComponents.year.getter();
        LOBYTE(v74) = v80;
        v81 = *(v59 + 8);
        v82 = v75;
        v83 = v99;
        v81(v82, v99);
        v77(v76, v78);
        v81(v100, v83);
        v64 = 30.0;
        if ((v74 & 1) == 0)
        {
          v64 = v79;
        }
      }
    }

    else
    {
      v65 = v103[0];
      v66 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v64 = 30.0;
    }

    v103[0] = 0;
    v84 = [v3 _cardioFitnessMedicationsUseWithError_];
    if (v84)
    {
      v85 = v84;
      v86 = v103[0];
      v87 = [v85 takingBetaBlockers];

      v88 = objc_allocWithZone(MEMORY[0x277CC1C48]);
      result = [v88 initWithAge:v92 gender:v91 height:v87 weight:v64 condition:v41 betaBlockerUse:v51];
      goto LABEL_25;
    }

    v32 = v103[0];
  }

  else
  {
LABEL_8:
    v32 = v24;
  }

  _convertNSErrorToError(_:)();

  result = swift_willThrow();
LABEL_25:
  v89 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MultiSportWorkoutConfiguration.analyticsSubActivities.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v1 = v30;
  if (v30 >> 62)
  {
    result = __CocoaSet.count.getter();
    v2 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_19:
    v5 = MEMORY[0x277D84F90];
    goto LABEL_20;
  }

  v2 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_19;
  }

LABEL_3:
  if (v2 < 1)
  {
    __break(1u);
    return result;
  }

  v3 = 0;
  v4 = v30 & 0xC000000000000001;
  v5 = MEMORY[0x277D84F90];
  do
  {
    if (v4)
    {
      v6 = MEMORY[0x20F2E7A20](v3, v1);
    }

    else
    {
      v6 = *(v1 + 8 * v3 + 32);
    }

    v7 = v6;
    v8 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
    swift_beginAccess();
    [*&v7[v8] effectiveTypeIdentifier];
    v9 = _HKWorkoutActivityNameForActivityType();
    if (v9)
    {
      v10 = v9;
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14._object = 0x800000020B456540;
      v14._countAndFlagsBits = 0xD000000000000015;
      if (String.hasPrefix(_:)(v14))
      {
        v15 = String.count.getter();
        v16 = specialized Collection.dropFirst(_:)(v15, v11, v13);
        v18 = v17;
        v20 = v19;
        v21 = v2;
        v22 = v4;
        v24 = v23;

        v11 = MEMORY[0x20F2E6D00](v16, v18, v20, v24);
        v13 = v25;
        v4 = v22;
        v2 = v21;
        v1 = v30;
      }
    }

    else
    {
      v11 = 0xD000000000000010;
      v13 = 0x800000020B456520;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
    }

    v27 = *(v5 + 2);
    v26 = *(v5 + 3);
    if (v27 >= v26 >> 1)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v5);
    }

    ++v3;

    *(v5 + 2) = v27 + 1;
    v28 = &v5[16 * v27];
    *(v28 + 4) = v11;
    *(v28 + 5) = v13;
  }

  while (v2 != v3);
LABEL_20:

  if (*(v5 + 2))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v29 = BidirectionalCollection<>.joined(separator:)();
  }

  else
  {

    return 1701736302;
  }

  return v29;
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

uint64_t key path getter for ActivityPickerDataSource.predictedItems : ActivityPickerDataSource@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  return key path getter for ActivityPickerDataSource.predictedItems : ActivityPickerDataSource(a1, a2);
}

{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for ActivityPickerDataSource.predictedItems : ActivityPickerDataSource(uint64_t *a1, uint64_t *a2)
{
  return key path setter for ActivityPickerDataSource.predictedItems : ActivityPickerDataSource(a1, a2);
}

{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t ActivityPickerDataSource.predictedItems.getter()
{
  return ActivityPickerDataSource.predictedItems.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t ActivityPickerDataSource.predictedItems.setter()
{
  return ActivityPickerDataSource.predictedItems.setter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*ActivityPickerDataSource.predictedItems.modify(uint64_t *a1))()
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
  return ActivityPickerDataSource.predictedItems.modify;
}

uint64_t key path setter for ActivityPickerDataSource.$predictedItems : ActivityPickerDataSource(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore27PredictedActivityPickerItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore27PredictedActivityPickerItemCG_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore27PredictedActivityPickerItemCGGMd, &_s7Combine9PublishedVySay11WorkoutCore27PredictedActivityPickerItemCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t ActivityPickerDataSource.$predictedItems.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore27PredictedActivityPickerItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore27PredictedActivityPickerItemCG_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore27PredictedActivityPickerItemCGGMd, &_s7Combine9PublishedVySay11WorkoutCore27PredictedActivityPickerItemCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*ActivityPickerDataSource.$predictedItems.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore27PredictedActivityPickerItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore27PredictedActivityPickerItemCG_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource__predictedItems;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore27PredictedActivityPickerItemCGGMd, &_s7Combine9PublishedVySay11WorkoutCore27PredictedActivityPickerItemCGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return ActivityPickerDataSource.$predictedItems.modify;
}

uint64_t (*ActivityPickerDataSource.addWorkoutItems.modify(uint64_t *a1))()
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
  return ActivityPickerDataSource.addWorkoutItems.modify;
}

uint64_t key path setter for ActivityPickerDataSource.$addWorkoutItems : ActivityPickerDataSource(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore24ButtonActivityPickerItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore24ButtonActivityPickerItemCG_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore24ButtonActivityPickerItemCGGMd, &_s7Combine9PublishedVySay11WorkoutCore24ButtonActivityPickerItemCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t ActivityPickerDataSource.$addWorkoutItems.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore24ButtonActivityPickerItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore24ButtonActivityPickerItemCG_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore24ButtonActivityPickerItemCGGMd, &_s7Combine9PublishedVySay11WorkoutCore24ButtonActivityPickerItemCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*ActivityPickerDataSource.$addWorkoutItems.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore24ButtonActivityPickerItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore24ButtonActivityPickerItemCG_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource__addWorkoutItems;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore24ButtonActivityPickerItemCGGMd, &_s7Combine9PublishedVySay11WorkoutCore24ButtonActivityPickerItemCGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return ActivityPickerDataSource.$addWorkoutItems.modify;
}

uint64_t (*ActivityPickerDataSource.managedConfigurationSourceItems.modify(uint64_t *a1))()
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
  return ActivityPickerDataSource.managedConfigurationSourceItems.modify;
}

uint64_t key path setter for ActivityPickerDataSource.$managedConfigurationSourceItems : ActivityPickerDataSource(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCG_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCGGMd, &_s7Combine9PublishedVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t ActivityPickerDataSource.$managedConfigurationSourceItems.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCG_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCGGMd, &_s7Combine9PublishedVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*ActivityPickerDataSource.$managedConfigurationSourceItems.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCG_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource__managedConfigurationSourceItems;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCGGMd, &_s7Combine9PublishedVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return ActivityPickerDataSource.$managedConfigurationSourceItems.modify;
}

uint64_t (*ActivityPickerDataSource.compoundItems.modify(uint64_t *a1))()
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
  return ActivityPickerDataSource.compoundItems.modify;
}

uint64_t key path setter for ActivityPickerDataSource.$compoundItems : ActivityPickerDataSource(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore26CompoundActivityPickerItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore26CompoundActivityPickerItemCG_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore26CompoundActivityPickerItemCGGMd, &_s7Combine9PublishedVySay11WorkoutCore26CompoundActivityPickerItemCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t ActivityPickerDataSource.$compoundItems.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore26CompoundActivityPickerItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore26CompoundActivityPickerItemCG_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore26CompoundActivityPickerItemCGGMd, &_s7Combine9PublishedVySay11WorkoutCore26CompoundActivityPickerItemCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*ActivityPickerDataSource.$compoundItems.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore26CompoundActivityPickerItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore26CompoundActivityPickerItemCG_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource__compoundItems;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore26CompoundActivityPickerItemCGGMd, &_s7Combine9PublishedVySay11WorkoutCore26CompoundActivityPickerItemCGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return ActivityPickerDataSource.$compoundItems.modify;
}

uint64_t (*ActivityPickerDataSource.activityPickerItems.modify(uint64_t *a1))()
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
  return ActivityPickerDataSource.activityPickerItems.modify;
}

void ActivityPickerDataSource.predictedItems.modify(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t key path getter for ActivityPickerDataSource.$predictedItems : ActivityPickerDataSource(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = *a4;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for ActivityPickerDataSource.$activityPickerItems : ActivityPickerDataSource(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore21AnyActivityPickerItemVG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore21AnyActivityPickerItemVG_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore21AnyActivityPickerItemVGGMd, &_s7Combine9PublishedVySay11WorkoutCore21AnyActivityPickerItemVGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t ActivityPickerDataSource.$predictedItems.getter(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t ActivityPickerDataSource.$activityPickerItems.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore21AnyActivityPickerItemVG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore21AnyActivityPickerItemVG_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore21AnyActivityPickerItemVGGMd, &_s7Combine9PublishedVySay11WorkoutCore21AnyActivityPickerItemVGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*ActivityPickerDataSource.$activityPickerItems.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore21AnyActivityPickerItemVG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore21AnyActivityPickerItemVG_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource__activityPickerItems;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore21AnyActivityPickerItemVGGMd, &_s7Combine9PublishedVySay11WorkoutCore21AnyActivityPickerItemVGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return ActivityPickerDataSource.$activityPickerItems.modify;
}

void ActivityPickerDataSource.$predictedItems.modify(uint64_t a1, char a2)
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